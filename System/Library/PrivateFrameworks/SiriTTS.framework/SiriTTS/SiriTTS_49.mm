uint64_t fe_nnws_adjustTokenRecordBND(uint64_t a1, unsigned int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  __s1 = 0;
  v47 = 0;
  result = (*(*(a7 + 48) + 176))(a5, a6, a4, 1, &v47, &v48);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*(a7 + 48) + 104))(a5, a6, 3, a4, &v49 + 2);
    if ((result & 0x80000000) == 0)
    {
      v15 = HIWORD(v49);
      if (HIWORD(v49))
      {
        v45 = 0;
        v42 = a2;
        v43 = 0;
        v44 = a2;
        v38 = (a1 + 48);
        v39 = a1 + 32;
        v40 = a1;
        __s = a3;
        while (1)
        {
          result = (*(*(a7 + 48) + 168))(a5, a6, v15, 0, 1, &v52, &v48 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (v52 == 5)
          {
            break;
          }

          if (v52 != 6)
          {
            v33 = HIWORD(v49);
LABEL_54:
            result = (*(*(a7 + 48) + 120))(a5, a6, HIWORD(v49), &v49 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v33)
            {
              result = (*(*(a7 + 48) + 192))(a5, a6, v33);
            }

            goto LABEL_57;
          }

          v16 = v43;
          if (v43 < a2)
          {
            v17 = v43;
            v18 = (v39 + 56 * v43);
            do
            {
              v19 = *v18;
              v18 += 14;
              v20 = (1 << v19) & 0x2C;
              if (v19 <= 5 && v20 != 0)
              {
                v16 = v17;
                goto LABEL_39;
              }

              ++v17;
            }

            while (v44 != v17);
            v16 = v44;
          }

LABEL_39:
          v34 = a1 + 56 * v16;
          v35 = *(v34 + 24);
          v50 = *(v34 + 28);
          v51 = v35;
          v43 = v16 + 1;
          v36 = *(a7 + 48);
          if (v50 > v35)
          {
            result = (*(v36 + 160))(a5, a6, HIWORD(v49), 1, 1, &v51, &v49);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(*(a7 + 48) + 160))(a5, a6, HIWORD(v49), 2, 1, &v50, &v49);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v33 = 0;
            goto LABEL_54;
          }

          result = (*(v36 + 120))(a5, a6, HIWORD(v49), &v49 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

LABEL_57:
          v15 = HIWORD(v49);
          if (!HIWORD(v49))
          {
            return result;
          }
        }

        result = (*(*(a7 + 48) + 168))(a5, a6, HIWORD(v49), 1, 1, &v51, &v48 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a7 + 48) + 168))(a5, a6, HIWORD(v49), 2, 1, &v50, &v48 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a7 + 48) + 176))(a5, a6, HIWORD(v49), 4, &__s1, &v48 + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v22 = v50;
        v23 = v51;
        v24 = v47;
        v25 = *(v47 + 16);
        if (v50 < v25 + v51)
        {
          v51 += v45;
          v26 = v44;
          if (a2)
          {
            v27 = 0;
            v28 = __s1;
            v29 = v38;
            while (1)
            {
              if (*(v29 - 2) == 1 && ((v30 = strcmp(v28, "prompt"), v26 = v44, v30) || *(v29 - 4) == 5) && *v29 != 1)
              {
                v31 = *(v29 - 9);
              }

              else
              {
                v31 = *(v29 - 9);
                if (v31 >= v23 && *(v29 - 8) + v31 < v22)
                {
                  ++v45;
                  goto LABEL_36;
                }
              }

              v32 = *(v29 - 8) + v31;
              if (v32 >= v22)
              {
                if (*v29 != 1)
                {
LABEL_46:
                  v22 += v45;
                  v50 = v22;
                  a2 = v42;
                  goto LABEL_47;
                }

                v22 += ++v45;
                v50 = v22;
              }

              else if (v32 == v25 + *(v24 + 12))
              {
                goto LABEL_46;
              }

LABEL_36:
              ++v27;
              v29 += 14;
              if (v26 == v27)
              {
                goto LABEL_48;
              }
            }
          }

          LODWORD(v27) = 0;
LABEL_47:
          if (v27 == a2)
          {
LABEL_48:
            v22 += v45;
            v50 = v22;
          }
        }

        v37 = strlen(__s);
        if (v22 > v37)
        {
          v50 = v37;
        }

        result = (*(*(a7 + 48) + 160))(a5, a6, HIWORD(v49), 1, 1, &v51, &v49);
        a1 = v40;
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = (*(*(a7 + 48) + 160))(a5, a6, HIWORD(v49), 2, 1, &v50, &v49);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v33 = 0;
        a2 = v42;
        goto LABEL_54;
      }
    }
  }

  return result;
}

uint64_t fe_nnws_adjust_ENP_labels(uint64_t result, uint64_t a2, unsigned __int8 **a3, unsigned __int8 ***a4)
{
  if (result)
  {
    v6 = result;
    v22 = a3 + 1;
    v23 = a3 + 3;
    v24 = result;
    v7 = -result;
    v8 = *a4;
    v9 = (a2 + 36);
    v10 = 1;
    do
    {
      v11 = *(v9 - 9);
      if (!strcmp(v11, "ENG") || (result = strcmp(v11, "NUM"), !result))
      {
        *v8 = *a3;
        result = fe_hlp_adjustBMES_basedSingleLabel(v6, v10 - 1, a3, a4);
        goto LABEL_14;
      }

      if (v10 != 1 && !*(v9 - 13) && *(v9 - 5) == 1 && (*v11 != 47 || *(v11 + 1)))
      {
        *v8 = a3[3];
        result = fe_hlp_adjustBMES_basedSingleLabel(v6, v10 - 1, a3, a4);
        v12 = *(v9 - 15);
        if (v12 == 3)
        {
          *(v9 - 15) = 1;
          goto LABEL_38;
        }

        if (v12 == 2)
        {
          *(v9 - 15) = 0;
LABEL_38:
          *(v9 - 1) = 2;
          *(v9 - 4) = *(v9 - 18) + 1;
          goto LABEL_14;
        }

        goto LABEL_14;
      }

      if (!*v9)
      {
        v13 = *(v9 - 1);
        if ((v13 - 2) >= 2)
        {
          if (v13 != 1)
          {
            goto LABEL_14;
          }

          v18 = **v8;
          v19 = a3;
          if (v18 == 69)
          {
LABEL_30:
            *v8 = *v19;
          }

          else if (v18 == 77)
          {
            v19 = v22;
            goto LABEL_30;
          }

          if (v10 != 1)
          {
            v20 = **(v8 - 1);
            if (v20 == 77)
            {
              v21 = *v23;
              goto LABEL_40;
            }

            if (v20 == 66)
            {
              v21 = *a3;
LABEL_40:
              *(v8 - 1) = v21;
              goto LABEL_14;
            }
          }

          goto LABEL_14;
        }
      }

      v14 = **v8;
      v15 = a3;
      if (v14 != 66)
      {
        if (v14 != 77)
        {
          goto LABEL_22;
        }

        v15 = v23;
      }

      *v8 = *v15;
LABEL_22:
      if (v10 < v24)
      {
        v16 = *v8[1];
        if (v16 == 69)
        {
          v17 = *a3;
          goto LABEL_36;
        }

        if (v16 == 77)
        {
          v17 = *v22;
LABEL_36:
          v8[1] = v17;
        }
      }

LABEL_14:
      ++v10;
      ++v8;
      v9 += 14;
    }

    while (v7 + v10 != 1);
  }

  return result;
}

uint64_t fe_hlp_adjustBMES_basedSingleLabel(uint64_t result, unsigned int a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = **(*a4 + 8 * a2);
  if (v5 > 0x4C)
  {
    if (v5 != 77)
    {
      if (v5 != 83)
      {
        return result;
      }

      if (a2)
      {
        v6 = a2 - 1;
        v9 = **(v4 + 8 * (a2 - 1));
        v10 = a3;
        if (v9 != 66)
        {
          if (v9 != 77)
          {
            goto LABEL_27;
          }

          v10 = a3 + 3;
        }

        v11 = *v10;
        goto LABEL_26;
      }

LABEL_27:
      if (a2 + 1 >= result)
      {
        return result;
      }

      v18 = (v4 + 8 * (a2 + 1));
      v19 = **v18;
      if (v19 != 69)
      {
        if (v19 != 77)
        {
          return result;
        }

        ++a3;
      }

      goto LABEL_40;
    }

    if (a2)
    {
      v12 = a2 - 1;
      v16 = **(v4 + 8 * (a2 - 1));
      if (v16 == 69)
      {
        v17 = 2;
      }

      else
      {
        if (v16 != 83)
        {
          goto LABEL_34;
        }

        v17 = 1;
      }

      v15 = a3[v17];
      goto LABEL_33;
    }
  }

  else
  {
    if (v5 != 66)
    {
      if (v5 != 69)
      {
        return result;
      }

      if (a2)
      {
        v6 = a2 - 1;
        v7 = **(v4 + 8 * (a2 - 1));
        if (v7 == 69)
        {
          v8 = 2;
        }

        else
        {
          if (v7 != 83)
          {
            goto LABEL_27;
          }

          v8 = 1;
        }

        v11 = a3[v8];
LABEL_26:
        *(v4 + 8 * v6) = v11;
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    if (a2)
    {
      v12 = a2 - 1;
      v13 = **(v4 + 8 * (a2 - 1));
      v14 = a3;
      if (v13 == 66)
      {
LABEL_19:
        v15 = *v14;
LABEL_33:
        *(v4 + 8 * v12) = v15;
        goto LABEL_34;
      }

      if (v13 == 77)
      {
        v14 = a3 + 3;
        goto LABEL_19;
      }
    }
  }

LABEL_34:
  if (a2 + 1 >= result)
  {
    return result;
  }

  v18 = (v4 + 8 * (a2 + 1));
  v20 = **v18;
  if (v20 == 66)
  {
    v21 = 16;
  }

  else
  {
    if (v20 != 83)
    {
      return result;
    }

    v21 = 24;
  }

  a3 = (a3 + v21);
LABEL_40:
  *v18 = *a3;
  return result;
}

uint64_t fe_nnws_setFeature(uint64_t a1, const char **a2, unsigned int a3, int a4, char **a5, const char *a6)
{
  if (a3 < 2)
  {
    return 0;
  }

  v10 = nnws_g_featureNames[a4];
  v11 = (a3 - 1);
  while (strcmp(*a2, v10))
  {
    ++a5;
    ++a2;
    if (!--v11)
    {
      return 0;
    }
  }

  if (!*a6)
  {
    result = 0;
    **a5 = 61;
    return result;
  }

  if (strlen(a6) <= 0x40)
  {
    v14 = *a5;
    goto LABEL_13;
  }

  v13 = strlen(a6);
  v14 = heap_Realloc(*(a1 + 8), *a5, v13 + 1);
  if (v14)
  {
    *a5 = v14;
LABEL_13:
    strcpy(v14, a6);
    return 0;
  }

  log_OutPublic(*(a1 + 32), "FE_NNWS", 37000, 0);
  return 2588942346;
}

__int128 **reorder_pMrk(__int128 **result, unsigned int a2, int a3)
{
  if (a2)
  {
    v3 = *result;
    v4 = 1;
    do
    {
      if (v4 < a2 && *v3 == a3 && *(v3 + 11) == *(v3 + 3))
      {
        v5 = *v3;
        v7 = v3[1];
        v6 = v3[3];
        *v3 = v3[2];
        v3[1] = v6;
        v3[2] = v5;
        v3[3] = v7;
        *(v3 + 1) = *(v3 + 9);
      }

      ++v4;
      v3 += 2;
    }

    while (v4 - a2 != 1);
  }

  return result;
}

uint64_t fe_initlingdb_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  LowerCasedMainLng3 = 2307923975;
  v26 = 0;
  v27 = 0;
  if (!a5)
  {
    return LowerCasedMainLng3;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v31);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(*(v31 + 48), "LINGDB", &v29);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(*(v31 + 48), "SYNTHSTREAM", &v30);
  v13 = *(v31 + 48);
  if ((Object & 0x80000000) != 0)
  {
    v24 = "LINGDB";
LABEL_20:
    objc_ReleaseObject(v13, v24);
    return Object;
  }

  v14 = objc_GetObject(v13, "FE_DCTLKP", &v28);
  if ((v14 & 0x80000000) != 0)
  {
    Object = v14;
    objc_ReleaseObject(*(v31 + 48), "LINGDB");
    v13 = *(v31 + 48);
    v24 = "SYNTHSTREAM";
    goto LABEL_20;
  }

  v15 = heap_Calloc(*(v31 + 8), 1, 976);
  if (!v15)
  {
    log_OutPublic(*(v31 + 32), "FE_INITLINGDB", 30000, 0);
    objc_ReleaseObject(*(v31 + 48), "LINGDB");
    objc_ReleaseObject(*(v31 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(v31 + 48), "FE_DCTLKP");
    return 2307923978;
  }

  v16 = v15;
  *a5 = v15;
  *(a5 + 8) = 62336;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  v17 = v31;
  *v15 = v31;
  *(v15 + 8) = a1;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v18 = *(v29 + 8);
  *(v15 + 80) = *(v30 + 8);
  v19 = v28;
  *(v15 + 64) = *(v28 + 8);
  *(v15 + 72) = v18;
  *(v15 + 48) = *(v19 + 16);
  v20 = objc_GetObject(*(v17 + 48), "CLMOBJECT", &v27);
  if ((v20 & 0x80000000) != 0 || (v21 = v27, *(v16 + 968) = *(v27 + 8), *(v16 + 952) = *(v21 + 16), v20 = (*(*(v16 + 64) + 88))(*(v16 + 48), *(v16 + 56), &v26 + 4, &v26), (v20 & 0x80000000) != 0))
  {
    LowerCasedMainLng3 = v20;
LABEL_22:
    fe_initlingdb_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return LowerCasedMainLng3;
  }

  v23 = v26 == 1 && HIDWORD(v26) == 1;
  *(v16 + 944) = v23;
  LowerCasedMainLng3 = hlp_GetLowerCasedMainLng3(*v16, (v16 + 948));
  if ((LowerCasedMainLng3 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  return LowerCasedMainLng3;
}

uint64_t hlp_GetLowerCasedMainLng3(uint64_t a1, char *a2)
{
  __s = 0;
  Str = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v4 = 2307923968;
  if (__s && strlen(__s) == 3)
  {
    strcpy(a2, __s);
    if (*a2)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        a2[v5] = ssft_tolower(a2[v5]);
        v5 = ++v6;
      }

      while (strlen(a2) > v6);
    }

    return Str;
  }

  return v4;
}

uint64_t fe_initlingdb_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62336, 976);
  if ((v3 & 0x80000000) != 0)
  {
    return 2307923976;
  }

  v4 = v3;
  if (a1)
  {
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    objc_ReleaseObject(*(*a1 + 48), "CLMOBJECT");
    heap_Free(*(*a1 + 8), a1);
  }

  return v4;
}

uint64_t fe_initlingdb_ObjReopen(uint64_t a1, int a2)
{
  v6 = 0;
  result = safeh_HandleCheck(a1, a2, 62336, 976);
  if ((result & 0x80000000) != 0)
  {
    return 2307923976;
  }

  if (a1)
  {
    result = (*(*(a1 + 64) + 88))(*(a1 + 48), *(a1 + 56), &v6 + 4, &v6);
    if ((result & 0x80000000) == 0)
    {
      v5 = v6 == 1 && HIDWORD(v6) == 1;
      *(a1 + 944) = v5;
      return hlp_GetLowerCasedMainLng3(*a1, (a1 + 948));
    }
  }

  return result;
}

uint64_t fe_initlingdb_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62336, 976) & 0x80000000) != 0)
  {
    return 2307923976;
  }

  synstrmaux_InitStreamOpener(a1 + 88, *(*a1 + 32), "FE_INITLINGDB");
  synstrmaux_RegisterInStream((a1 + 88), "text/plain;charset=utf-8", 0, a1 + 912);
  synstrmaux_RegisterInStream((a1 + 88), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 928);
  v7 = synstrmaux_OpenStreams((a1 + 88), *(a1 + 80), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 88), *(a1 + 80));
  }

  return v7;
}

uint64_t fe_initlingdb_Process(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  memset(v183, 0, 12);
  v9 = 2307923978;
  v181 = 0;
  v182 = 0;
  v180 = 0;
  v178 = 0;
  v179 = 0;
  v175 = 0;
  v173 = 0;
  v172 = 0;
  *&__c[3] = 0;
  v171 = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  if ((safeh_HandleCheck(a1, a2, 62336, 976) & 0x80000000) != 0)
  {
    return 2307923976;
  }

  v176 = 0;
  v177 = 0;
  v174 = 0;
  *a5 = 1;
  v10 = (*(a1[10] + 144))(a1[114], a1[115], &v183[1], v183);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[10] + 144))(a1[116], a1[117], v183 + 4, v183);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[9] + 56))(a3, a4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[9] + 104))(a3, a4, 1, 0, &v176 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (!LODWORD(v183[1]))
  {
    v18 = v183[0];
    if (v183[0])
    {
      if (HIDWORD(v183[0]))
      {
        v10 = (*(a1[10] + 88))(a1[116], a1[117], &v179, &v177);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v19 = v177;
        if ((v177 & 0x1FFFE0) != 0 && (v177 >> 5))
        {
          v20 = 0;
          v21 = 0;
LABEL_23:
          v22 = (v179 + 32 * v20++);
          do
          {
            v24 = *v22;
            v22 += 8;
            v23 = v24;
            v25 = (1 << v24) & 0x1000001003070000;
            v26 = v24 > 0x3C || v25 == 0;
            if (v26 && v23 != 0x4000)
            {
              v21 = 1;
              if (v20 != (v177 >> 5))
              {
                goto LABEL_23;
              }

              goto LABEL_77;
            }

            ++v20;
          }

          while (v20 - (v177 >> 5) != 1);
          if ((v21 & 1) == 0)
          {
            goto LABEL_79;
          }

LABEL_77:
          v49 = (*(a1[9] + 160))(a3, a4, HIWORD(v176), 1, (v177 >> 5), v179, &v176);
          if ((v49 & 0x80000000) != 0)
          {
            v9 = v49;
            log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30002, 0);
            return v9;
          }

          v19 = v177;
        }

        else
        {
LABEL_79:
          *a5 = 1;
        }

        v10 = (*(a1[10] + 96))(a1[116], a1[117], v19);
        if ((v10 & 0x80000000) != 0)
        {
          return v10;
        }

        v18 = v183[0];
      }

      if (v18)
      {
        *a5 = 1;
        v173 = 1;
      }
    }

    else
    {
      *__s2 = 0;
      if ((paramc_ParamGetStr(*(*a1 + 40), "clcpppipelinemode", __s2) & 0x80000000) != 0 || !*__s2 || !**__s2)
      {
        *a5 = 0;
      }
    }

    return (*(a1[9] + 160))(a3, a4, HIWORD(v176), 3, 1, &v173, &v176);
  }

  v10 = (*(a1[9] + 160))(a3, a4, HIWORD(v176), 3, 1, &v173, &v176);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[10] + 88))(a1[114], a1[115], &v181, &v180);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = hlp_CopyString(*a1, &v182, v181, 0);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_73;
  }

  v12 = a1[10];
  if (v180 == 1)
  {
    v13 = (*(v12 + 96))(a1[114], a1[115], 1);
    if ((v13 & 0x80000000) != 0 || (v13 = (*(a1[10] + 88))(a1[116], a1[117], &v179, &v177), (v13 & 0x80000000) != 0))
    {
      v9 = v13;
LABEL_104:
      v16 = 0;
LABEL_105:
      v17 = 0;
      goto LABEL_106;
    }

    if (!HIDWORD(v183[0]) || (v175 = v177 >> 5, v14 = (*(a1[9] + 160))(a3, a4, HIWORD(v176), 1, v175, v179, &v176), (v14 & 0x80000000) == 0))
    {
      v15 = (*(a1[10] + 96))(a1[116], a1[117], v177);
      v16 = 0;
      v17 = 0;
      v9 = v15 & (v15 >> 31);
      goto LABEL_106;
    }

    v9 = v14;
    v51 = *(*a1 + 32);
    v52 = 30002;
LABEL_103:
    log_OutPublic(v51, "FE_INITLINGDB", v52, 0);
    goto LABEL_104;
  }

  v11 = (*(v12 + 88))(a1[116], a1[117], &v179, &v177);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_73:
    v16 = 0;
    goto LABEL_74;
  }

  v27 = v177;
  v28 = v177 >> 5;
  v175 = v177 >> 5;
  v29 = heap_Alloc(*(*a1 + 8), v177);
  v178 = v29;
  if (!v29)
  {
LABEL_87:
    v51 = *(*a1 + 32);
    v52 = 30000;
    goto LABEL_103;
  }

  memcpy(v29, v179, v177);
  if ((v27 >> 5))
  {
    v30 = 0;
    v31 = 0;
    v32 = 0xFFFF;
    v33 = "normal";
    while (1)
    {
      v34 = v31;
      v35 = &v178[8 * v31];
      v36 = *v35;
      if (*v35 == 34)
      {
        v37 = v31;
      }

      else
      {
        v37 = v32;
      }

      if (v36 == 100)
      {
        if (*(v35 + 3))
        {
          if (v32 == 0xFFFF)
          {
            if (v28 <= (v31 + 1))
            {
              v38 = (v31 + 1);
            }

            else
            {
              v38 = v28;
            }

            v37 = v31;
            while (++v37 < v28)
            {
              if (v178[8 * v37] == 34)
              {
                goto LABEL_57;
              }
            }

            v37 = v38;
          }

LABEL_57:
          v39 = &v178[8 * v37];
          if (v39[3] == v35[3])
          {
            if ((hlp_ValidatePhoneticTranscription(a1, v33, *(v39 + 3)) & 0x80000000) != 0)
            {
              __s1 = v33;
              v40 = strlen(v182);
              v41 = v178;
              v42 = &v178[8 * v34];
              v43 = v42[2];
              if (v40 >= v43)
              {
                if (v30 >= v37)
                {
                  v46 = v37;
                }

                else
                {
                  v46 = v30;
                }

                if (v30 <= v37)
                {
                  v47 = v37;
                }

                else
                {
                  v47 = v30;
                }

                memcpy(&v182[v42[3] - v178[3]], *(v42 + 3), v43);
                v48 = v175;
                memmove(&v41[8 * v47], &v41[8 * v47 + 8], 32 * (v175 + ~v47));
                memmove(&v41[8 * v46], &v41[8 * v46 + 8], 32 * (~v46 + (v48 - 1)));
                v28 = v48 - 2;
                v175 = v48 - 2;
                v45 = heap_Realloc(*(*a1 + 8), v41, 32 * (v48 - 2));
                if (!v45)
                {
                  goto LABEL_87;
                }
              }

              else
              {
                v44 = v175;
                memmove(v42, v42 + 8, 32 * (v175 + ~v30));
                v28 = v44 - 1;
                v175 = v44 - 1;
                v45 = heap_Realloc(*(*a1 + 8), v41, 32 * (v44 - 1));
                if (!v45)
                {
                  goto LABEL_87;
                }
              }

              v33 = __s1;
              v31 = 0;
              v178 = v45;
              v37 = 0xFFFF;
            }

            else
            {
              v37 = 0xFFFF;
              v28 = v175;
            }
          }
        }
      }

      else if (v36 == 36)
      {
        v33 = *(v35 + 3);
      }

      v30 = ++v31;
      v32 = v37;
      if (v31 == v28)
      {
        goto LABEL_89;
      }
    }
  }

  v28 = 0;
  v33 = "normal";
LABEL_89:
  __s1a = v33;
  v53 = v182;
  v54 = strlen(v182);
  v55 = (*(a1[9] + 160))(a3, a4, HIWORD(v176), 0, (v54 + 1), v182, &v176);
  v56 = *(*a1 + 32);
  if ((v55 & 0x80000000) != 0)
  {
    log_OutPublic(v56, "FE_INITLINGDB", 30002, 0);
    v16 = 0;
    v17 = 0;
    v9 = v55;
    goto LABEL_106;
  }

  log_OutText(v56, "FE_INITLINGDB", 5, 0, "Initializing LINGDB with %s", v53);
  v57 = heap_Alloc(*(*a1 + 8), 4 * v28);
  v16 = v57;
  if (!v57)
  {
    log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30000, 0);
    goto LABEL_105;
  }

  v58 = v178;
  if (v28)
  {
    v59 = v178 + 4;
    v60 = v28;
    do
    {
      if (*(v59 - 4) == 1)
      {
        *v59 = 0;
      }

      v59 += 8;
      --v60;
    }

    while (v60);
    v61 = v58 + 3;
    if (v28)
    {
      v62 = 0;
      v63 = v58 + 3;
      while (1)
      {
        v64 = *v63;
        v63 += 8;
        if (v64 != v58[3])
        {
          break;
        }

        if (v28 == ++v62)
        {
          LOWORD(v62) = v28;
          break;
        }
      }
    }

    else
    {
      LOWORD(v62) = 0;
    }
  }

  else
  {
    LOWORD(v62) = 0;
    v61 = v178 + 3;
  }

  v65 = v62;
  v66 = &v58[8 * v62];
  if (v62 == v28)
  {
    marker_sort(v66, v28 - v62);
  }

  else
  {
    v67 = 0;
    v68 = (v28 - v65);
    v69 = (v66 + 4);
    do
    {
      *(v57 + 4 * v67) = *v69;
      *v69 = v67;
      v69 += 8;
      ++v67;
    }

    while (v68 != v67);
    marker_sort(v66, v28 - v65);
    v70 = (v66 + 4);
    do
    {
      *v70 = *(v16 + 4 * *v70);
      v70 += 8;
      --v68;
    }

    while (v68);
  }

  v11 = (*(a1[8] + 56))(a1[6], a1[7], a3, a4, v58, v28);
  if ((v11 & 0x80000000) != 0 || (v11 = (*(a1[9] + 104))(a3, a4, 3, HIWORD(v176), &v174), (v11 & 0x80000000) != 0) || (v164 = *v61, v11 = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", "normal", &__c[3], &__c[1], __c), (v11 & 0x80000000) != 0))
  {
LABEL_74:
    v17 = 0;
    v9 = v11;
    goto LABEL_106;
  }

  if (*&__c[1])
  {
    v71 = **&__c[3];
    v72 = strchr(**&__c[3], __c[0]);
    if (v72)
    {
      *v72 = 0;
      v71 = **&__c[3];
    }

    hlp_CreatePauseDurParam(*a1, "normal", v71);
    v73 = **&__c[3];
  }

  else
  {
    v73 = "normal";
  }

  v157 = v16;
  v74 = __s1a;
  if (v28)
  {
    v75 = v58;
    v76 = 0;
    v163 = 0;
    v77 = 0;
    v162 = 0;
    v78 = 0;
    v79 = 0;
    v80 = v164;
    __s = "normal";
    while (1)
    {
      while (1)
      {
        v81 = v79;
        v82 = &v75[8 * v79];
        if (*v82 > 0x24 || ((1 << *v82) & 0x1400200000) == 0)
        {
          goto LABEL_273;
        }

        v84 = v79 + 1;
        if ((v79 + 1) < v28 && (v85 = v82[3], v86 = &v75[8 * (v79 + 1)], v86[3] == v85))
        {
          v87 = 0;
          v88 = 0;
          v89 = v79;
          v90 = v79 + 1;
          while (1)
          {
            v79 = v90;
            v91 = *v86;
            switch(v91)
            {
              case 36:
                v87 = v90;
                break;
              case 34:
                v79 = v89;
                goto LABEL_153;
              case 21:
                v88 = v90;
                break;
            }

            ++v90;
            if ((v79 + 1) >= v28)
            {
              break;
            }

            v86 = &v75[8 * v90];
            v89 = v79;
            if (v86[3] != v85)
            {
              goto LABEL_153;
            }
          }

          v79 = v28 - 1;
        }

        else
        {
          v87 = 0;
          v88 = 0;
        }

LABEL_153:
        if (!v76 || *v82 != 36 || v88)
        {
          break;
        }

        v78 = *(v82 + 3);
        v76 = 1;
        v79 = v84;
        if (v84 >= v28)
        {
          goto LABEL_276;
        }
      }

      v93 = v82[3];
      v92 = v82 + 3;
      v94 = v93 - v164;
      v161 = v81;
      if (v93 != v164)
      {
        v155 = v87;
        v156 = v78;
        v153 = v80;
        v152 = v73;
        v159 = v77;
        v154 = v75;
        __s1b = v74;
        v95 = v182;
        v96 = strlen(v182);
        while (v95[v94] == 95 || utf8_BelongsToSet(0, v95, v94, v96))
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(v95, v94);
          *v92 += NextUtf8Offset - v94;
          v94 = NextUtf8Offset;
        }

        v78 = v156;
        v16 = v157;
        v74 = __s1b;
        v81 = v161;
        v75 = v154;
        v87 = v155;
        if (v153 != *v92)
        {
          log_OutText(*(*a1 + 32), "FE_INITLINGDB", 5, 0, "Creating USER TN %s token at pos  %u,%u in lingdb", v152, (v153 - v164), (*v92 - v164));
          inserted = hlp_InsertUserTNToken(a1, a3, a4, HIWORD(v176), &v174, (v153 - v164), LOWORD(v178[8 * v161 + 3]) - v164, v152, v159, __s1b, v182, v163, v178, v175);
          if ((inserted & 0x80000000) != 0)
          {
            goto LABEL_286;
          }

          v75 = v178;
          v74 = __s1b;
          v81 = v161;
          v87 = v155;
          v78 = v156;
        }
      }

      v99 = &v75[8 * v81];
      v100 = *v99;
      if (*v99 == 36)
      {
        v74 = *(v99 + 3);
      }

      else if (v100 == 21)
      {
        __s = *(v99 + 3);
      }

      if (v87)
      {
        v74 = *&v75[8 * v87 + 6];
      }

      if (v88)
      {
        __s = *&v75[8 * v88 + 6];
      }

      if (v100 == 34)
      {
        v101 = v78;
        v102 = strlen(*(v99 + 3)) + 1;
        v77 = heap_Realloc(*(*a1 + 8), v162, v102);
        if (v77)
        {
          v103 = 0;
          v104 = 0;
          v75 = v178;
          v105 = v161;
          v106 = &v178[8 * v161];
          v78 = v101;
          while (1)
          {
            v107 = *(*(v106 + 3) + v104);
            if (v107 != 32)
            {
              if (!*(*(v106 + 3) + v104))
              {
                v163 = 0;
                *(v77 + v103) = 0;
                v76 = 1;
                v73 = "phon";
                v162 = v77;
                goto LABEL_272;
              }

              v108 = v103++;
              *(v77 + v108) = v107;
            }

            ++v104;
          }
        }

        log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30000, 0);
        v17 = v162;
        goto LABEL_106;
      }

      if (v100 == 36 || v78 == 0)
      {
        v110 = v74;
      }

      else
      {
        v110 = v78;
      }

      v111 = strlen(__s);
      __s1c = v110;
      v112 = strlen(v110);
      if (v112 >= 6)
      {
        v113 = v112;
      }

      else
      {
        v113 = 6;
      }

      v114 = heap_Realloc(*(*a1 + 8), v172, (v111 + v113 + 2));
      if (!v114)
      {
        log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30000, 0);
        goto LABEL_287;
      }

      v115 = v114;
      v172 = v114;
      if (strcmp(__s, "normal") || strcmp(v110, "normal"))
      {
        break;
      }

      v163 = 0;
      strcpy(v115, "normal");
LABEL_265:
      *&__c[1] = -1;
      BestTNType = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", v115, &__c[3], &__c[1], __c);
      if ((BestTNType & 0x80000000) != 0)
      {
        goto LABEL_295;
      }

      if (*&__c[1])
      {
        v135 = **&__c[3];
        v136 = strchr(**&__c[3], __c[0]);
        if (v136)
        {
          *v136 = 0;
          v135 = **&__c[3];
        }

        hlp_CreatePauseDurParam(*a1, v115, v135);
        v137 = *&__c[3];
      }

      else
      {
        v137 = &v172;
      }

      v16 = v157;
      v78 = 0;
      v77 = 0;
      v76 = 0;
      v73 = *v137;
      v75 = v178;
      v74 = __s1c;
      v105 = v161;
LABEL_272:
      v80 = v75[8 * v105 + 3];
      v28 = v175;
LABEL_273:
      if (++v79 >= v28)
      {
        goto LABEL_276;
      }
    }

    *v115 = 0;
    if (!strcmp(__s, "normal"))
    {
      v119 = 0;
      goto LABEL_237;
    }

    v116 = *__s;
    if (*__s)
    {
      v117 = 0;
      do
      {
        v115[v117++] = ssft_tolower(v116);
        v118 = v117;
        v116 = __s[v117];
      }

      while (v116);
    }

    else
    {
      v118 = 0;
    }

    v115[v118] = 0;
    if (*(a1 + 236) == 1 && strcmp(v115, "normal") && *v115)
    {
      *&__c[1] = -1;
      BestTNType = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", v115, &__c[3], &__c[1], __c);
      if ((BestTNType & 0x80000000) != 0)
      {
        goto LABEL_295;
      }

      if (*&__c[1])
      {
        v121 = **&__c[3];
        v122 = strchr(**&__c[3], __c[0]);
        if (v122)
        {
          *v122 = 0;
          v121 = **&__c[3];
        }

        v123 = strlen(__s1c);
        BestTNType = hlp_CopyString(*a1, &v172, v121, v123 + 1);
        if ((BestTNType & 0x80000000) != 0)
        {
          goto LABEL_295;
        }
      }
    }

    *&__c[1] = -1;
    BestTNType = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", "esctn", &__c[3], &__c[1], __c);
    if ((BestTNType & 0x80000000) != 0)
    {
LABEL_295:
      v9 = BestTNType;
      v16 = v157;
      goto LABEL_287;
    }

    if (*&__c[1])
    {
      v124 = v172;
      v125 = strlen(__s1c);
      BestTNType = hlp_FindBestTNType(*a1, **&__c[3], __c[0], v172, &v171, v125 + 1);
      if ((BestTNType & 0x80000000) == 0)
      {
        v126 = v171;
        if (v171 != v124)
        {
          if (hlp_LogUnsupportedTNType(*a1, v124))
          {
            log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30005, "%s%s%s%s", "OriginalTNType", v124, "BaseTNType", v126);
          }

          heap_Free(*(*a1 + 8), v124);
          v172 = v126;
        }

        goto LABEL_232;
      }

      if ((BestTNType & 0x1FFF) != 0)
      {
        goto LABEL_295;
      }
    }

    else
    {
      v124 = v172;
      if (!strcmp(v172, "normal") || !strcmp(v124, "sms") || !strcmp(v124, "address") || !strcmp(v124, "spell") || !strcmp(v124, "NOR") || !strcmp(v124, "SMS") || !strcmp(v124, "ADR"))
      {
LABEL_232:
        v115 = v172;
        v128 = strlen(v172);
        if (!strcmp(__s1c, "normal") || !strcmp(v115, "normal") || !*v115)
        {
          v119 = v128;
        }

        else
        {
          v119 = v128 + 1;
          v115[v128] = 95;
        }

LABEL_237:
        if (!strcmp(__s1c, "normal") || !strcmp(v115, "normal"))
        {
          v163 = 0;
          goto LABEL_262;
        }

        if (strlen(__s1c) == 7 && strstr(__s1c, "_lid"))
        {
          __s1c[3] = 0;
          v163 = 1;
        }

        else
        {
          v163 = 0;
        }

        if (strlen(__s1c) == 3)
        {
          for (i = 0; i != 3; ++i)
          {
            __s2[i] = ssft_tolower(__s1c[i]);
          }

          __s2[3] = 0;
          *&__c[1] = -1;
          BestTNType = (*(a1[8] + 96))(a1[6], a1[7], "fecfg", "esclang", &__c[3], &__c[1], __c);
          if ((BestTNType & 0x80000000) != 0)
          {
            goto LABEL_295;
          }

          if (*&__c[1])
          {
            v130 = strstr(**&__c[3], __s2);
            v115 = v172;
            if (v130)
            {
              v131 = *__s1c;
              if (*__s1c)
              {
                v132 = 0;
                do
                {
                  v115[v119++] = ssft_tolower(v131);
                  v131 = __s1c[++v132];
                }

                while (v131);
              }

              goto LABEL_262;
            }

            goto LABEL_256;
          }
        }

        else if (!strcmp(__s1c, "latin"))
        {
          v133 = *__s1c;
          v115 = v172;
          if (*__s1c)
          {
            v134 = 0;
            do
            {
              v115[v119++] = ssft_tolower(v133);
              v133 = __s1c[++v134];
            }

            while (v133);
          }

          goto LABEL_262;
        }

        v115 = v172;
LABEL_256:
        if (*v115)
        {
          v115[v119 - 1] = 0;
        }

        else
        {
          strcpy(v115, "normal");
        }

LABEL_262:
        if (strncmp(v115, "normal", 6uLL) && *v115)
        {
          v115[v119] = 0;
          v115 = v172;
        }

        goto LABEL_265;
      }
    }

    if (hlp_LogUnsupportedTNType(*a1, v124))
    {
      log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 30004, "%s%s", "TNType", v124);
    }

    if (!strcmp(__s1c, "normal"))
    {
      v127 = strlen(__s1c);
      BestTNType = hlp_CopyString(*a1, &v172, "normal", v127 + 1);
      if ((BestTNType & 0x80000000) != 0)
      {
        goto LABEL_295;
      }
    }

    else
    {
      *v124 = 0;
    }

    goto LABEL_232;
  }

  v162 = 0;
  v77 = 0;
  v163 = 0;
  LOWORD(v80) = v164;
LABEL_276:
  v160 = v77;
  v138 = v73;
  v139 = v80;
  log_OutText(*(*a1 + 32), "FE_INITLINGDB", 5, 0, "Creating USER TN %s token in lingdb", v73);
  v140 = strlen(v182);
  inserted = hlp_InsertUserTNToken(a1, a3, a4, HIWORD(v176), &v174, (v139 - v164), v140, v138, v160, v74, v182, v163, v178, v175);
  if ((inserted & 0x80000000) != 0)
  {
    goto LABEL_286;
  }

  v141 = v175;
  v142 = v178;
  if (!v175)
  {
LABEL_281:
    v146 = &v178[8 * v175];
    LODWORD(v144) = v175;
LABEL_282:
    marker_sort(v146, v175 - v144);
    goto LABEL_283;
  }

  v143 = 0;
  v144 = 0;
  v145 = v175;
  while (1)
  {
    v146 = &v178[v143];
    if (v178[v143 + 3] != v164)
    {
      break;
    }

    ++v144;
    --v145;
    v143 += 8;
    if (8 * v175 == v143)
    {
      goto LABEL_281;
    }
  }

  if (v175 == v144)
  {
    v16 = v157;
    goto LABEL_282;
  }

  v147 = 0;
  v148 = 0;
  v149 = v146 + 1;
  v16 = v157;
  do
  {
    v150 = &v142[v147 + v143];
    *(v157 + 4 * v148) = v150[1];
    v150[1] = v148++;
    v147 += 8;
  }

  while (v145 != v148);
  marker_sort(v146, v141 - v144);
  v151 = v145;
  do
  {
    *v149 = *(v157 + 4 * *v149);
    v149 += 8;
    --v151;
  }

  while (v151);
LABEL_283:
  inserted = hlp_ReplacePauseZeroWithNluBndNo_And_WriteMarkersToLingDB(*a1, a1[9], a3, a4, HIWORD(v176), &v178, &v175);
  if ((inserted & 0x80000000) == 0)
  {
    inserted = (*(a1[10] + 96))(a1[114], a1[115], v180);
    if ((inserted & 0x80000000) == 0)
    {
      inserted = (*(a1[10] + 96))(a1[116], a1[117], v177);
    }
  }

LABEL_286:
  v9 = inserted;
LABEL_287:
  v17 = v162;
LABEL_106:
  if (v172)
  {
    heap_Free(*(*a1 + 8), v172);
    v172 = 0;
  }

  if (v17)
  {
    heap_Free(*(*a1 + 8), v17);
  }

  if (v178)
  {
    heap_Free(*(*a1 + 8), v178);
  }

  if (v182)
  {
    heap_Free(*(*a1 + 8), v182);
  }

  if (v16)
  {
    heap_Free(*(*a1 + 8), v16);
  }

  return v9;
}

uint64_t hlp_CopyString(uint64_t a1, uint64_t *a2, char *__s, int a4)
{
  if (__s)
  {
    v8 = strlen(__s) + 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = heap_Realloc(*(a1 + 8), *a2, (v8 + a4));
  if (v9)
  {
    if (__s)
    {
      v9 = strcpy(v9, __s);
    }

    else
    {
      *v9 = 0;
    }

    v10 = 0;
    *a2 = v9;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_INITLINGDB", 30000, 0);
    return 2307923978;
  }

  return v10;
}

uint64_t hlp_ValidatePhoneticTranscription(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return v3;
  }

  hlp_GetPhonSrcAndLanguageOfOriginFromPhonWithMetaData(a3, v19, v17);
  hlp_GetLowerCasedLng3FromLangTag(a1, a2, __s);
  if (strlen(__s) != 3)
  {
    return 0;
  }

  v6 = *(a1 + 968);
  if (!v6 || !(*(v6 + 56))(*(a1 + 952), *(a1 + 960)))
  {
    if (!strcmp(__s, (a1 + 948)))
    {
      return 0;
    }

    else
    {
      return 2307923968;
    }
  }

  v7 = strstr(v3, "_#_");
  if (v7)
  {
    v8 = v7;
    do
    {
      *v8 = 35;
      v9 = strlen(v3);
      memmove(v8 + 1, v8 + 3, v9 - (v8 - v3) - 2);
      v8 = strstr(v3, "_#_");
    }

    while (v8);
  }

  v10 = !hlp_checkDoClmInCurrentComponent(a1) || hlp_checkDoClmForLng3(a1, __s) == 0;
  v11 = strchr(v3, 20);
  v12 = v11;
  if (v11)
  {
    *v11 = 0;
  }

  if (v10)
  {
    v13 = 0;
    v3 = 0;
    if (!v11)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = strlen(v3);
  v13 = heap_Alloc(*(*a1 + 8), (4 * v14 + 4));
  if (v13)
  {
    v15 = strlen(v3);
    v3 = (*(*(a1 + 968) + 64))(*(a1 + 952), *(a1 + 960), __s, v3, v13, 0, 0, (4 * v15 + 4));
    if (!v12)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v3 = 2307923978;
  if (v12)
  {
LABEL_22:
    *v12 = 20;
  }

LABEL_23:
  if (v13)
  {
    heap_Free(*(*a1 + 8), v13);
  }

  return v3;
}

uint64_t hlp_CreatePauseDurParam(uint64_t a1, char *__s, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0;
  strcpy(__sa, "tnpausedur");
  v4 = strlen(__s);
  result = strlen(__sa);
  if (v4 < 255 - result)
  {
    __strcat_chk();
    result = paramc_ParamGetUInt(*(a1 + 40), __sa, &v6);
    if ((result & 0x80000000) == 0)
    {
      strcpy(__sa, "tnpausedur");
      __strcat_chk();
      return paramc_ParamSetUInt(*(a1 + 40), __sa, v6);
    }
  }

  return result;
}

uint64_t hlp_InsertUserTNToken(char *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, unsigned int a6, unsigned __int16 a7, const char *a8, char *a9, char *a10, const char *a11, int a12, uint64_t a13, unsigned __int16 a14)
{
  v100 = *MEMORY[0x1E69E9840];
  v97 = a7;
  v96 = 0;
  v94 = 0;
  v95 = 0;
  v21 = *a5;
  v22 = hlp_checkDoClmInCurrentComponent(a1);
  hlp_GetLowerCasedLng3FromLangTag(a1, a10, __s);
  if (!*a5)
  {
    return 0;
  }

  v88 = v21;
  v23 = *a5;
  v87 = v22;
  v24 = "_#_";
  do
  {
    v25 = (*(*(a1 + 9) + 168))(a2, a3, v23, 1, 1, &v95 + 2, &v96);
    if ((v25 & 0x80000000) != 0)
    {
LABEL_121:
      v29 = *(*a1 + 32);
      v81 = 30003;
      goto LABEL_126;
    }

    if (HIWORD(v95) >= a6)
    {
      v25 = (*(*(a1 + 9) + 168))(a2, a3, *a5, 0, 1, &v94, &v96);
      if ((v25 & 0x80000000) != 0)
      {
        goto LABEL_121;
      }

      if (v94 != 3 && HIWORD(v95) != v97)
      {
        v28 = (*(*(a1 + 9) + 80))(a2, a3, *a5, a5);
        if ((v28 & 0x80000000) != 0)
        {
          return v28;
        }

        v94 = 5;
        v25 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 0, 1, &v94, &v95);
        v29 = *(*a1 + 32);
        if ((v25 & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        log_OutText(v29, "FE_INITLINGDB", 5, 0, "Creating token %u %u in lingdb", HIWORD(v95), v97);
        v30 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 1, 1, &v95 + 2, &v95);
        if ((v30 & 0x80000000) != 0)
        {
          goto LABEL_123;
        }

        v30 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 2, 1, &v97, &v95);
        if ((v30 & 0x80000000) != 0)
        {
          goto LABEL_123;
        }

        v31 = strlen(a8);
        v25 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 4, (v31 + 1), a8, &v95);
        if ((v25 & 0x80000000) != 0)
        {
          goto LABEL_124;
        }

        if (a12)
        {
          v25 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 6, 4, "lid", &v95);
          if ((v25 & 0x80000000) != 0)
          {
            return v25;
          }
        }

        if (!a9)
        {
          goto LABEL_111;
        }

        v86 = a8;
        v32 = strstr(a9, v24);
        if (v32)
        {
          v33 = v32;
          do
          {
            *v33 = 35;
            v34 = strlen(a9);
            memmove(v33 + 1, v33 + 3, v34 - (v33 - a9) - 2);
            v33 = strstr(a9, v24);
          }

          while (v33);
        }

        v35 = strlen(__s);
        v36 = a9;
        if (v35 != 3)
        {
LABEL_106:
          a8 = v86;
          if (!v36)
          {
            goto LABEL_110;
          }

          goto LABEL_107;
        }

        v37 = !v87 || hlp_checkDoClmForLng3(a1, __s) == 0;
        v38 = strlen(a9);
        v39 = heap_Alloc(*(*a1 + 8), 4 * v38 + 200);
        if (!v39)
        {
          log_OutPublic(*(*a1 + 32), "FE_INITLINGDB", 34000, 0);
          return 2307923978;
        }

        __dst = v39;
        hlp_GetPhonSrcAndLanguageOfOriginFromPhonWithMetaData(a9, v98, v92);
        __s2[0] = 0;
        v40 = strchr(a9, 20);
        if (v40)
        {
          v41 = v40;
          __strcat_chk();
          *v41 = 0;
        }

        v42 = *(a1 + 121);
        if (v42 && (*(v42 + 56))(*(a1 + 119), *(a1 + 120)))
        {
          if (!v37)
          {
            v43 = strlen(a9);
            if (((*(*(a1 + 121) + 64))(*(a1 + 119), *(a1 + 120), __s, a9, __dst, 0, 0, (4 * v43 + 4)) & 0x80000000) != 0)
            {
LABEL_40:
              v91 = v97;
              v44 = HIWORD(v95);
              v45 = &a11[HIWORD(v95)];
              v46 = strstr(v45, "§");
              if (v46 == v45)
              {
                v36 = strcpy(__dst, __s2);
                v25 = 0;
              }

              else
              {
                v47 = v46;
                if (v46)
                {
                  v48 = a11;
                  while (1)
                  {
                    v49 = v91;
                    if (v47 - v48 >= v91 || v47 == &v48[v44])
                    {
                      goto LABEL_79;
                    }

                    if (v47 <= v48)
                    {
                      v83 = v47 - v48;
                      v52 = 2;
                    }

                    else
                    {
                      v51 = v47 - v48 + 2;
                      v52 = 2;
                      v53 = v47;
                      while (1)
                      {
                        v54 = *--v53;
                        if (v54 != 32)
                        {
                          break;
                        }

                        ++v52;
                        v47 = v53;
                        if (v53 <= v48)
                        {
                          v52 = v51;
                          v47 = v48;
                          break;
                        }
                      }

                      v83 = v47 - v48;
                    }

                    v91 -= v52;
                    v55 = strlen(&v47[v52]);
                    memmove(v47, &v47[v52], v55 + 1);
                    v56 = strlen(a11);
                    v28 = (*(*(a1 + 9) + 160))(a2, a3, a4, 0, (v56 + 1), a11, &v95);
                    if ((v28 & 0x80000000) != 0)
                    {
                      return v28;
                    }

                    v28 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 2, 1, &v91, &v95);
                    if ((v28 & 0x80000000) != 0)
                    {
                      return v28;
                    }

                    v89 = 0;
                    v90 = *a5;
                    v28 = (*(*(a1 + 9) + 120))(a2, a3);
                    if ((v28 & 0x80000000) != 0)
                    {
                      return v28;
                    }

                    v57 = v90;
                    if (v90)
                    {
                      break;
                    }

LABEL_77:
                    v44 = HIWORD(v95);
                    v48 = a11;
                    v47 = strstr(&a11[HIWORD(v95)], "§");
                    if (!v47)
                    {
                      v49 = v91;
LABEL_79:
                      v63 = v97;
                      v64 = v97 - v49;
                      if (v97 > v49 && a14)
                      {
                        v66 = (a13 + 16);
                        v65 = a14;
                        do
                        {
                          v67 = *(v66 - 1);
                          if (v67 <= v49)
                          {
                            v72 = *v66;
                            if (*v66)
                            {
                              v73 = v72 + v67;
                              if (v49 < v73)
                              {
                                v74 = (v73 - v49);
                                if (v74 >= v64)
                                {
                                  v74 = v64;
                                }

                                *v66 = v72 - v74;
                              }
                            }
                          }

                          else
                          {
                            v68 = (v67 - v49);
                            v69 = *v66;
                            if (*v66)
                            {
                              v70 = *(v66 - 1) >= v63;
                            }

                            else
                            {
                              v70 = 1;
                            }

                            v71 = (v63 - v67);
                            if (v70)
                            {
                              v71 = 0;
                            }

                            if (v68 >= v64)
                            {
                              v68 = v64;
                            }

                            *(v66 - 1) = v67 - v68;
                            *v66 = v69 - v71;
                          }

                          v66 += 8;
                          --v65;
                        }

                        while (v65);
                      }

                      goto LABEL_98;
                    }
                  }

                  v84 = v52;
                  v58 = v52 + v83;
                  v59 = v58;
                  while (1)
                  {
                    v28 = (*(*(a1 + 9) + 168))(a2, a3, v57, 1, 1, &v89 + 2, &v96);
                    if ((v28 & 0x80000000) != 0)
                    {
                      return v28;
                    }

                    v28 = (*(*(a1 + 9) + 168))(a2, a3, v90, 2, 1, &v89, &v96);
                    if ((v28 & 0x80000000) != 0)
                    {
                      return v28;
                    }

                    v60 = v83 <= HIWORD(v89) && v58 >= HIWORD(v89);
                    if (v60 && v83 <= v89 && v58 >= v89)
                    {
                      v61 = v90;
                      v62 = v90;
                    }

                    else
                    {
                      v61 = v90;
                      if (v58 <= HIWORD(v89))
                      {
                        HIWORD(v89) -= v84;
                        LOWORD(v89) = v89 - v84;
                        v28 = (*(*(a1 + 9) + 160))(a2, a3, v90, 1, 1, &v89 + 2, &v95);
                        if ((v28 & 0x80000000) != 0)
                        {
                          return v28;
                        }

                        v28 = (*(*(a1 + 9) + 160))(a2, a3, v90, 2, 1, &v89, &v95);
                        if ((v28 & 0x80000000) != 0)
                        {
                          return v28;
                        }

                        v62 = 0;
                        v61 = v90;
                      }

                      else
                      {
                        v62 = 0;
                      }
                    }

                    v28 = (*(*(a1 + 9) + 120))(a2, a3, v61, &v90);
                    if ((v28 & 0x80000000) != 0)
                    {
                      return v28;
                    }

                    if (v62)
                    {
                      v28 = (*(*(a1 + 9) + 192))(a2, a3, v62);
                      if ((v28 & 0x80000000) != 0)
                      {
                        return v28;
                      }
                    }

                    v57 = v90;
                    v58 = v59;
                    if (!v90)
                    {
                      goto LABEL_77;
                    }
                  }
                }

LABEL_98:
                v25 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 4, 7, "normal", &v95);
                heap_Free(*(*a1 + 8), __dst);
                if ((v25 & 0x80000000) != 0)
                {
                  goto LABEL_124;
                }

                v36 = 0;
              }

              goto LABEL_106;
            }

LABEL_104:
            v36 = strcat(__dst, __s2);
LABEL_107:
            v77 = v24;
            v78 = v36;
            v79 = strlen(v36);
            v25 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 3, (v79 + 1), v78, &v95);
            if (v78 != a9)
            {
              heap_Free(*(*a1 + 8), v78);
            }

            v24 = v77;
            a8 = v86;
LABEL_110:
            if ((v25 & 0x80000000) != 0)
            {
              goto LABEL_124;
            }

LABEL_111:
            v26 = 0;
            goto LABEL_9;
          }
        }

        else
        {
          if (strcmp(__s, a1 + 948))
          {
            goto LABEL_40;
          }

          if (!v37)
          {
            goto LABEL_104;
          }
        }

        v75 = strcpy(__dst, a9);
        strcat(v75, __s2);
        if (!strcmp(__s, a1 + 948))
        {
          v36 = __dst;
        }

        else
        {
          v76 = strlen(__s);
          v28 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 6, (v76 + 1), __s, &v95);
          v36 = __dst;
          if ((v28 & 0x80000000) != 0)
          {
            return v28;
          }
        }

        goto LABEL_107;
      }
    }

    v26 = 1;
LABEL_9:
    if (HIWORD(v95) == v97)
    {
      return v25;
    }

    v25 = (*(*(a1 + 9) + 120))(a2, a3, *a5, a5);
    v27 = v25 >= 0 ? v26 : 0;
    if ((v27 & 1) == 0)
    {
      return v25;
    }

    v23 = *a5;
  }

  while (*a5);
  if (HIWORD(v95) != a6)
  {
    return v25;
  }

  v28 = (*(*(a1 + 9) + 80))(a2, a3, v88, a5);
  if ((v28 & 0x80000000) != 0)
  {
    return v28;
  }

  v94 = 5;
  v25 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 0, 1, &v94, &v95);
  v29 = *(*a1 + 32);
  if ((v25 & 0x80000000) == 0)
  {
    log_OutText(v29, "FE_INITLINGDB", 5, 0, "Creating token %u %u in lingdb", HIWORD(v95), v97);
    v30 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 1, 1, &v95 + 2, &v95);
    if ((v30 & 0x80000000) != 0 || (v30 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 2, 1, &v97, &v95), (v30 & 0x80000000) != 0))
    {
LABEL_123:
      v25 = v30;
    }

    else
    {
      v80 = strlen(a8);
      v25 = (*(*(a1 + 9) + 160))(a2, a3, *a5, 4, (v80 + 1), a8, &v95);
      if ((v25 & 0x80000000) == 0)
      {
        return v25;
      }
    }

LABEL_124:
    v29 = *(*a1 + 32);
  }

LABEL_125:
  v81 = 30002;
LABEL_126:
  log_OutPublic(v29, "FE_INITLINGDB", v81, 0);
  return v25;
}

uint64_t hlp_LogUnsupportedTNType(uint64_t a1, char *__s)
{
  __s1 = 0;
  v4 = strlen(__s);
  if ((paramc_ParamGetStr(*(a1 + 40), "domainmngrtntypes", &__s1) & 0x80000000) != 0 || (v5 = __s1) == 0 || !*__s1 || (v6 = strstr(__s1, __s)) == 0 || (v7 = v6, v6 != v5) && *(v6 - 1) != 124 || (result = 0, (v9 = v7[v4]) != 0) && v9 != 124)
  {
    if ((paramc_ParamGetStr(*(a1 + 40), "extraesctn", &__s1) & 0x80000000) != 0)
    {
      return 1;
    }

    if (!__s1)
    {
      return 1;
    }

    result = strcmp(__s1, __s);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t hlp_FindBestTNType(uint64_t a1, char *a2, int a3, char *__s1, char **a5, int a6)
{
  *a5 = __s1;
  result = strcmp(__s1, "internal-nuance-system-norm");
  if (result)
  {
    while (1)
    {
      v13 = *a5;
      v14 = strstr(a2, *a5);
      if (v14)
      {
        v15 = v14[strlen(v13)];
        if (a3 == v15)
        {
          return 0;
        }

        result = 0;
        if (!v15 || v15 == 124)
        {
          return result;
        }
      }

      v16 = strrchr(v13, 58);
      if (!v16)
      {
        break;
      }

      if (v13 == __s1)
      {
        *a5 = 0;
        result = hlp_CopyString(a1, a5, __s1, a6);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v16 = strrchr(*a5, 58);
        if (!v16)
        {
          continue;
        }
      }

      *v16 = 0;
    }

    if (v13 != __s1)
    {
      heap_Free(*(a1 + 8), v13);
    }

    *a5 = 0;
    return 2307923968;
  }

  return result;
}

uint64_t hlp_ReplacePauseZeroWithNluBndNo_And_WriteMarkersToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int **a6, unsigned __int16 *a7)
{
  v7 = a7;
  v52 = 0;
  v13 = *a7;
  if (!*a7)
  {
    goto LABEL_35;
  }

  v14 = 0;
  v15 = *a6;
  v16 = *a7;
  do
  {
    if (*v15 == 8 && v15[6] == 1)
    {
      ++v14;
    }

    v15 += 8;
    --v16;
  }

  while (v16);
  if (v14)
  {
    v49 = a2;
    v17 = 2307923978;
    v18 = heap_Calloc(*(a1 + 8), 8, v14);
    if (!v18)
    {
      goto LABEL_47;
    }

    v19 = v18;
    v13 = *v7;
    if (*v7)
    {
      v46 = a3;
      v47 = a4;
      v48 = a5;
      v20 = 0;
      v21 = 0;
      v22 = -1;
      v50 = v18;
      v51 = v7;
      while (1)
      {
        v23 = *a6;
        v24 = &(*a6)[8 * v20];
        if (*v24 == 1)
        {
          v22 = v20;
        }

        else if ((v22 & 0x80000000) == 0 && *v24 == 8 && v24[6] == 1)
        {
          v25 = v22;
          v26 = &v23[8 * v22];
          v27 = v26[3];
          v28 = v22;
          if (v13)
          {
            v29 = 1;
            v30 = v13;
            v31 = *a6;
            v28 = v22;
            do
            {
              v32 = v31[3];
              v33 = v32 == v27;
              if (v32 > v27)
              {
                break;
              }

              v35 = *v31;
              v31 += 8;
              v34 = v35;
              if (v33 && v34 == 51)
              {
                v28 = v29;
              }

              ++v29;
              --v30;
            }

            while (v30);
            v25 = v28;
          }

          v37 = v26[1];
          if (v20 == v25)
          {
            v7 = v51;
          }

          else
          {
            if (v20 + 1 != v13)
            {
              memmove(v24, &v23[8 * v20 + 8], 32 * (~v20 + v13));
              v13 = *v51;
              v23 = *a6;
            }

            v38 = v13 - 1;
            *v51 = v38;
            v39 = &v23[8 * v28];
            v40 = v38 - v28;
            v7 = v51;
            memmove(v39 + 8, &v23[8 * v25], 32 * v40);
            ++*v51;
            v23 = *a6;
          }

          v41 = &v23[8 * v25];
          *v41 = 51;
          v41[1] = v37;
          v41[2] = 0;
          v41[3] = v27;
          v41[4] = 0;
          *&(*a6)[8 * v25 + 6] = heap_Alloc(*(a1 + 8), 6);
          v42 = *&(*a6)[8 * v25 + 6];
          if (!v42)
          {
            v19 = v50;
            v17 = 2307923978;
            goto LABEL_41;
          }

          v19 = v50;
          *(v50 + 8 * v21) = v42;
          strcpy(*&(*a6)[8 * v25 + 6], "BND:N");
          v13 = *v7;
          ++v21;
        }

        if (++v20 >= v13)
        {
          a5 = v48;
          a3 = v46;
          a4 = v47;
          goto LABEL_37;
        }
      }
    }

    v21 = 0;
LABEL_37:
    a2 = v49;
  }

  else
  {
LABEL_35:
    v21 = 0;
    v19 = 0;
  }

  v17 = (*(a2 + 160))(a3, a4, a5, 1, v13, *a6, &v52);
  if ((v17 & 0x80000000) != 0)
  {
    log_OutPublic(*(a1 + 32), "FE_INITLINGDB", 30002, 0);
  }

  if (v19)
  {
LABEL_41:
    if (v21)
    {
      v43 = v21;
      v44 = v19;
      do
      {
        if (*v44)
        {
          heap_Free(*(a1 + 8), *v44);
        }

        ++v44;
        --v43;
      }

      while (v43);
    }

    heap_Free(*(a1 + 8), v19);
  }

LABEL_47:
  heap_Free(*(a1 + 8), *a6);
  *a6 = 0;
  *v7 = 0;
  return v17;
}

uint64_t fe_initlingdb_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62336, 976) & 0x80000000) != 0)
  {
    return 2307923976;
  }

  v3 = *(a1 + 80);

  return synstrmaux_CloseStreams((a1 + 88), v3);
}

uint64_t fe_initlingdb_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2307923969;
  }

  result = 0;
  *a2 = &IFeInitlingdb;
  return result;
}

size_t hlp_GetPhonSrcAndLanguageOfOriginFromPhonWithMetaData(char *a1, char *a2, _BYTE *a3)
{
  *a2 = 0x504B524D545845;
  *a3 = 0;
  result = strchr(a1, 20);
  if (result)
  {
    v6 = (result + 1);
    result = strchr((result + 1), 20);
    v7 = result;
    if (result)
    {
      v8 = result - v6;
    }

    else
    {
      result = strlen(v6);
      v8 = result;
    }

    if (v8 <= 9)
    {
      result = strncpy(a2, v6, v8);
      a2[v8] = 0;
    }

    if (v7)
    {
      v9 = v7 + 1;
      result = strlen((v7 + 1));
      if (result == 3 || result >= 4 && *(v7 + 4) == 20 && !*(v7 + 5))
      {
        for (i = 0; i != 3; ++i)
        {
          result = ssft_tolower(*(v9 + i));
          a3[i] = result;
        }

        a3[3] = 0;
      }
    }
  }

  return result;
}

char *hlp_GetLowerCasedLng3FromLangTag(uint64_t a1, char *a2, char *__dst)
{
  if (*a2 && LH_stricmp(a2, "normal"))
  {
    result = strlen(a2);
    if (result == 3)
    {
      result = strcpy(__dst, a2);
      if (*__dst)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          __dst[v7] = ssft_tolower(__dst[v7]);
          v7 = ++v8;
          result = strlen(__dst);
        }

        while (result > v8);
      }
    }

    else
    {
      *__dst = 0;
    }
  }

  else
  {

    return strcpy(__dst, (a1 + 948));
  }

  return result;
}

BOOL hlp_checkDoClmInCurrentComponent(void *a1)
{
  __s1 = 0;
  v3 = 0;
  return (((*(a1[121] + 96))(a1[119], a1[120], &v3) & 0x80000000) != 0 || !v3) && ((paramc_ParamGetStr(*(*a1 + 40), "clm", &__s1) & 0x80000000) != 0 || !__s1 || !strcmp(__s1, "yes"));
}

uint64_t hlp_checkDoClmForLng3(const char *a1, char *__s1)
{
  v9 = *MEMORY[0x1E69E9840];
  __s1a = 0;
  result = strcmp(__s1, a1 + 948);
  if (result)
  {
    v8[0] = 7171171;
    __strcat_chk();
    if ((paramc_ParamGetStr(*(*a1 + 40), v8, &__s1a) & 0x80000000) != 0 || (v5 = __s1a) == 0)
    {
      __s1a = 0;
      Str = paramc_ParamGetStr(*(*a1 + 40), "noclmset", &__s1a);
      v5 = __s1a;
      if (Str < 0 || !__s1a)
      {
        if (!__s1a)
        {
          return 1;
        }
      }

      else
      {
        if (strstr(__s1a, __s1))
        {
          v5 = "no";
        }

        else
        {
          v5 = "yes";
        }

        __s1a = v5;
      }
    }

    return strcmp(v5, "yes") == 0;
  }

  return result;
}

uint64_t fe_initlingdb_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2307923975;
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

uint64_t CLM_InitFromCLMv2Lua(uint64_t a1, const char *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v44 = 0;
  Allocator = ooc_utils_createAllocator(v45, *(a1 + 32), *(a1 + 40));
  v5 = LH_ERROR_to_VERROR(Allocator);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_35;
  }

  v6 = luavmldoutil_initialize_lua_vm(*(a1 + 32), *(a1 + 40), v45, "getForeignLangSupportForCLMv2", hlp_lua_log_callback_2, &v44, "clm");
  v7 = 0;
  v8 = v44;
  if ((v6 & 0x80000000) == 0 && v44)
  {
    *(a1 + 200) = 0;
    v9 = LuaVMLDO_RunFunctionReturningString(v8, "getForeignLangSupportForCLMv2", a2, 0x400u, __s1);
    v5 = LH_ERROR_to_VERROR(v9);
    if ((v5 & 0x80000000) == 0)
    {
      if (__s1[0] || (v42 = LuaVMLDO_RunFunctionReturningString(v8, "getFeClmSupportedLanguages", "all", 0x400u, __s1), (LH_ERROR_to_VERROR(v42) & 0x80000000) == 0) && strstr(__s1, a2))
      {
        *(a1 + 200) = 1;
      }

      v10 = v44;
      *__s1 = 0;
      v11 = PNEW_LDOObject_Con(v45, v45, __s1);
      v12 = LH_ERROR_to_VERROR(v11);
      if ((v12 & 0x80000000) != 0)
      {
        v7 = v12;
        log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "Error creating LDOObject");
      }

      else
      {
        v13 = LuaVMLDO_RunFunctionWithStringArgumentReturningTableWithStrings(v10, "getLoanPhonemeSupport", a2, *__s1);
        v14 = LH_ERROR_to_VERROR(v13);
        if ((v14 & 0x80000000) != 0)
        {
          v7 = 0;
        }

        else
        {
          v7 = v14;
          v15 = *(*__s1 + 32);
          v16 = *(*__s1 + 40);
          *(a1 + 204) = (v16 - v15) >> 5;
          if (((v16 - v15) & 0x1FFFE0) != 0)
          {
            v17 = heap_Calloc(*(*(a1 + 24) + 8), ((v16 - v15) >> 5), 16);
            *(a1 + 208) = v17;
            if (v17)
            {
              if (v15 < v16)
              {
                v18 = 0;
                v43 = v16;
                while (1)
                {
                  v19 = v15[3];
                  v20 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(*v15);
                  if (strlen(v20) != 3)
                  {
                    goto LABEL_49;
                  }

                  v21 = 16 * v18;
                  v22 = 3;
                  do
                  {
                    v23 = *v20++;
                    *(*(a1 + 208) + v21++) = __tolower(v23);
                    --v22;
                  }

                  while (v22);
                  v24 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v19);
                  if (!v24 || (v25 = v24, !*v24))
                  {
LABEL_49:
                    v7 = 2347769856;
                    goto LABEL_51;
                  }

                  v26 = strstr(v24, "||");
                  for (i = 1; v26; ++i)
                  {
                    v29 = v26[2];
                    v28 = v26 + 2;
                    if (!v29)
                    {
                      break;
                    }

                    v26 = strstr(v28, "||");
                  }

                  *(*(a1 + 208) + 16 * v18 + 4) = i;
                  v30 = heap_Calloc(*(*(a1 + 24) + 8), i, 24);
                  *(*(a1 + 208) + 16 * v18 + 8) = v30;
                  if (!v30)
                  {
                    goto LABEL_50;
                  }

                  v31 = strchr(v25, 124);
                  if (v31)
                  {
                    break;
                  }

LABEL_33:
                  ++v18;
                  v15 += 4;
                  if (v15 >= v43)
                  {
                    goto LABEL_51;
                  }
                }

                v32 = v31;
                v33 = 0;
                while (1)
                {
                  v34 = v33;
                  v35 = hlp_AllocAndCopy(*(a1 + 24), (*(*(a1 + 208) + 16 * v18 + 8) + 24 * v33), v25, v32);
                  if ((v35 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v36 = strchr(v32 + 1, 124);
                  if (!v36)
                  {
                    goto LABEL_32;
                  }

                  v37 = v36;
                  v35 = hlp_AllocAndCopy(*(a1 + 24), (*(*(a1 + 208) + 16 * v18 + 8) + 24 * v34 + 8), v32 + 1, v36);
                  if ((v35 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v38 = v37 + 1;
                  v39 = strchr(v38, 124);
                  if (!v39)
                  {
                    v39 = &v38[strlen(v38)];
                  }

                  v35 = hlp_AllocAndCopy(*(a1 + 24), (*(*(a1 + 208) + 16 * v18 + 8) + 24 * v34 + 16), v38, v39);
                  if ((v35 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v40 = strstr(v38, "||");
                  if (v40)
                  {
                    v25 = v40 + 2;
                    v32 = strchr(v40 + 2, 124);
                    v33 = v34 + 1;
                    if (v32)
                    {
                      continue;
                    }
                  }

LABEL_32:
                  v7 = 0;
                  goto LABEL_33;
                }

                v7 = v35;
              }
            }

            else
            {
LABEL_50:
              log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0);
              v7 = 2347769866;
            }
          }
        }
      }

LABEL_51:
      if (*__s1)
      {
        OOC_PlacementDeleteObject(v45, *__s1);
      }

      goto LABEL_36;
    }

LABEL_35:
    v7 = v5;
LABEL_36:
    v8 = v44;
  }

  if (v8)
  {
    luavmldoutil_destroy_lua_vm(v45, &v44);
  }

  kaldi::nnet1::Component::IsUpdatable(v45);
  if ((v7 & 0x80000000) != 0)
  {
    CLM_DeInitFromCLMv2Lua(a1);
  }

  return v7;
}

void *CLM_DeInitFromCLMv2Lua(void *result)
{
  v1 = result;
  *(result + 50) = 0;
  v2 = result[26];
  if (v2)
  {
    v3 = *(result + 102);
    if (*(result + 102))
    {
      v4 = 0;
      do
      {
        v5 = v2 + 16 * v4;
        v6 = *(v5 + 8);
        if (v6)
        {
          if (*(v5 + 4))
          {
            v7 = 0;
            v8 = 0;
            do
            {
              v9 = *(v2 + 16 * v4 + 8);
              v10 = *(v9 + v7);
              if (v10)
              {
                heap_Free(*(v1[3] + 8), v10);
                v2 = v1[26];
                v9 = *(v2 + 16 * v4 + 8);
                *(v9 + v7) = 0;
              }

              v11 = *(v9 + v7 + 8);
              if (v11)
              {
                heap_Free(*(v1[3] + 8), v11);
                v2 = v1[26];
                v9 = *(v2 + 16 * v4 + 8);
                *(v9 + v7 + 8) = 0;
              }

              v12 = *(v9 + v7 + 16);
              if (v12)
              {
                heap_Free(*(v1[3] + 8), v12);
                v2 = v1[26];
                *(*(v2 + 16 * v4 + 8) + v7 + 16) = 0;
              }

              ++v8;
              v13 = v2 + 16 * v4;
              v7 += 24;
            }

            while (v8 < *(v13 + 4));
            v6 = *(v13 + 8);
          }

          heap_Free(*(v1[3] + 8), v6);
          v2 = v1[26];
          *(v2 + 16 * v4 + 8) = 0;
          v3 = *(v1 + 102);
        }

        ++v4;
      }

      while (v4 < v3);
    }

    result = heap_Free(*(v1[3] + 8), v2);
    v1[26] = 0;
  }

  *(v1 + 102) = 0;
  return result;
}

uint64_t hlp_AllocAndCopy(uint64_t a1, char **a2, char *__s, uint64_t a4)
{
  if (a4)
  {
    v7 = a4 - __s;
  }

  else
  {
    v7 = strlen(__s);
  }

  v8 = heap_Calloc(*(a1 + 8), v7 + 1, 1);
  *a2 = v8;
  if (v8)
  {
    strncpy(v8, __s, v7);
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "CLM", 50000, 0);
    return 2347769866;
  }
}

uint64_t CLM_AlignPhonlists(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = 0;
  v48 = 0;
  if (!a3 || !a4)
  {
    return 2347769856;
  }

  CountStrings = StringList_GetCountStrings(a3);
  v8 = StringList_GetCountStrings(a4);
  if (a2 && StringList_GetCountStrings(a2) != CountStrings)
  {
    v13 = 2347769856;
    goto LABEL_79;
  }

  v9 = StringList_GetCountStrings(a3);
  v10 = StringList_GetCountStrings(a4);
  v11 = v10;
  if (CountStrings && v8)
  {
    v45 = a2;
    v12 = 0;
    if (v9)
    {
      v13 = 0;
      while (v12 < v11)
      {
        v14 = StringList_GetAt(a3, v12);
        if (*v14 == 42 && !v14[1])
        {
          v17 = StringList_InsertAt(a4, v12, "*");
          if (v17)
          {
            v13 = LH_ERROR_to_VERROR(v17);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_79;
            }
          }

          else
          {
            v13 = 0;
          }

          LOWORD(v11) = v11 + 1;
        }

        else
        {
          v15 = StringList_GetAt(a3, v12);
          v16 = StringList_GetAt(a4, v12);
          if (strcmp(v15, v16))
          {
            break;
          }
        }

        if (v9 <= ++v12)
        {
          v12 = v9;
          goto LABEL_58;
        }
      }

      if (v9 > v12)
      {
        while (1)
        {
          v20 = v11;
          v21 = v9;
          if (v11 <= v12)
          {
            break;
          }

          LOWORD(v9) = v9 - 1;
          v22 = StringList_GetAt(a3, (v21 - 1));
          if (*v22 == 42 && !v22[1])
          {
            v25 = StringList_InsertAt(a4, v11, "*");
            if (v25)
            {
              v13 = LH_ERROR_to_VERROR(v25);
              if ((v13 & 0x80000000) != 0)
              {
                goto LABEL_79;
              }
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v23 = StringList_GetAt(a3, v9);
            LOWORD(v11) = v11 - 1;
            v24 = StringList_GetAt(a4, (v20 - 1));
            if (strcmp(v23, v24))
            {
              break;
            }
          }

          if (v9 <= v12)
          {
            goto LABEL_58;
          }
        }

        LOWORD(v9) = v21;
        LOWORD(v11) = v20;
      }

LABEL_58:
      v30 = v13;
    }

    else
    {
      v30 = 0;
    }

    v31 = StringList_GetCountStrings(a3) - v9;
    v13 = 2347769856;
    if (v31 == StringList_GetCountStrings(a4) - v11)
    {
      if ((v30 & 0x80000000) != 0)
      {
        v13 = v30;
      }

      else if (v12 != v9 || (v13 = v30, v12 != v11))
      {
        v49 = 0;
        v32 = hlp_RecursiveAddBestAnchorsForSublist(a1, a3, v12, v9, a4, v12, v11, &v47, &v49);
        if ((v32 & 0x80000000) != 0)
        {
          v13 = v32;
        }

        else
        {
          if (v49 == 0xFFFF)
          {
            v33 = 0;
          }

          else
          {
            v33 = v47 + 16 * v49;
          }

          v34 = hlp_Align(v45, a3, a4, v9, v11, v33);
          v35 = v34;
          if ((v34 & 0x80000000) != 0)
          {
            v13 = v34;
          }

          else
          {
            v36 = StringList_GetCountStrings(a3);
            v37 = StringList_GetCountStrings(a4);
            if (v36 == v37)
            {
              v13 = v35;
            }

            else
            {
              v13 = 2347769856;
            }

            if (v45 && v36 == v37)
            {
              if (StringList_GetCountStrings(v45) == v36)
              {
                v13 = v35;
              }

              else
              {
                v13 = 2347769856;
              }
            }
          }
        }
      }
    }

    goto LABEL_79;
  }

  if (v9)
  {
    if (!v10)
    {
      v18 = 0;
      do
      {
        v19 = StringList_Append(a4, "*");
        if (v19)
        {
          v13 = LH_ERROR_to_VERROR(v19);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_79;
          }
        }

        else
        {
          v13 = 0;
        }

        ++v18;
      }

      while (v9 > v18);
      goto LABEL_79;
    }

    goto LABEL_55;
  }

  if (v10)
  {
    v26 = a2;
    v27 = 0;
    while (1)
    {
      v28 = StringList_Append(a3, "*");
      if (v28)
      {
        v13 = LH_ERROR_to_VERROR(v28);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_79;
        }

        if (v26)
        {
LABEL_49:
          v29 = StringList_Append(v26, "*");
          if (v29)
          {
            v13 = LH_ERROR_to_VERROR(v29);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_79;
            }
          }

          else
          {
            v13 = 0;
          }
        }
      }

      else
      {
        v13 = 0;
        if (v26)
        {
          goto LABEL_49;
        }
      }

      if (v11 <= ++v27)
      {
        goto LABEL_79;
      }
    }
  }

LABEL_55:
  v13 = 0;
LABEL_79:
  v38 = v47;
  if (v47)
  {
    v39 = v48;
    if (v48)
    {
      v40 = 0;
      v41 = 8;
      v42 = a1;
      do
      {
        v43 = *(v47 + v41);
        if (v43)
        {
          heap_Free(*(a1 + 8), v43);
          v39 = v48;
        }

        ++v40;
        v41 += 16;
      }

      while (v40 < v39);
      v38 = v47;
    }

    else
    {
      v42 = a1;
    }

    heap_Free(*(v42 + 8), v38);
  }

  return v13;
}

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
        if (!strcmp(v20, v21))
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
          memmove(v51, v28[v32], 4 * *(v52 + 4));
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
        if (*v8 != 42 || v8[1])
        {
          goto LABEL_6;
        }

        v9 = StringList_GetAt(a2, v7);
        if (*v9 == 42)
        {
          if (v9[1])
          {
            v10 = v7 == 0;
          }

          else
          {
            v10 = 1;
          }

          if (!v10)
          {
LABEL_18:
            v11 = v7 - 1;
            v12 = StringList_GetAt(a2, (v7 - 1));
            if (*v12 == 42 && !v12[1])
            {
LABEL_23:
              StringList_RemoveAt(a1, v7);
              StringList_RemoveAt(a2, v11);
              goto LABEL_7;
            }

            goto LABEL_20;
          }

          v11 = v7;
          if (!v9[1])
          {
            goto LABEL_23;
          }
        }

        else if (v7)
        {
          goto LABEL_18;
        }

LABEL_20:
        v11 = v6 + 1;
        if (v6 + 1 < StringList_GetCountStrings(a2))
        {
          v13 = StringList_GetAt(a2, (v6 + 1));
          if (*v13 == 42 && !v13[1])
          {
            goto LABEL_23;
          }
        }

LABEL_6:
        ++v7;
LABEL_7:
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

uint64_t CLM_EnumerateLanguages(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v51 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v46 = 0;
  v14 = 2347769856;
  v45 = 0;
  *a3 = 0;
  if (CLM_FindNrOfLanguages(a1, a5, a6, a7, v50, 0x64u, v49, a3))
  {
    return v14;
  }

  v41 = a4;
  v15 = *a3;
  if (!v15)
  {
    return 0;
  }

  v16 = heap_Calloc(*(*(a1 + 24) + 8), v15, 24);
  *a2 = v16;
  if (!v16)
  {
    log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0);
    return 2347769866;
  }

  if (!*a3)
  {
    return 0;
  }

  v17 = 0;
  v40 = 0;
  v18 = v41;
  v39 = v7;
  v38 = a3;
  do
  {
    __strcpy_chk();
    if (v18 > 1)
    {
      v20 = v49[v17];
    }

    else
    {
      *(*a2 + 24 * v17 + 16) = heap_Calloc(*(*(a1 + 24) + 8), v49[v17], 24);
      v19 = *a2 + 24 * v17;
      if (!*(v19 + 16))
      {
        v35 = 2347769866;
        v34 = 50000;
LABEL_32:
        log_OutPublic(*(*(a1 + 24) + 32), "CLM", v34, 0);
        v36 = v35;
        goto LABEL_33;
      }

      v20 = v49[v17];
      *(v19 + 8) = v20;
    }

    v47 = v7;
    if (v20)
    {
      v21 = 0;
      v22 = 0;
      while (1)
      {
        v23 = *a2;
        v24 = v9;
        v25 = v9;
        v26 = v8;
        LangRecord = CLM_FindLangRecord(v25, v8, &v47, (*a2 + 24 * v17));
        if (!LangRecord)
        {
          v34 = 50003;
          v35 = 2347769856;
          goto LABEL_32;
        }

        v28 = LangRecord;
        if (!v41)
        {
          break;
        }

        if (v41 != 1)
        {
          *(v23 + 24 * v17 + 8) = LangRecord;
          goto LABEL_25;
        }

        v44 = 0;
        *(*(v23 + 24 * v17 + 16) + v21) = LangRecord;
        *(*(*a2 + 24 * v17 + 16) + v21 + 8) = &LangRecord[strlen(LangRecord) + 1];
        v29 = *(*(*a2 + 24 * v17 + 16) + v21 + 8);
        v8 = v26;
        v9 = v24;
        if (*v29)
        {
          v30 = CLM_SplitWordInPhonemes(*(a1 + 24), v29, v48, 0xC8u, 0, &v44);
          if ((v30 & 0x80000000) != 0 || (v31 = v30, v44))
          {
            v32 = (*(*a2 + 24 * v17 + 16) + v21);
            log_OutText(*(*(a1 + 24) + 32), "CLM", 1, 0, "WARNING CLM %s to %s : invalid mapping %s %s", (*a2 + 24 * v17), (a1 + 56), *v32, v32[1]);
            v31 = 0;
            v48[0] = 0;
          }

          v43 = 0;
          memset(v42, 0, sizeof(v42));
          Allocator = ooc_utils_createAllocator(v42, *(a1 + 32), *(a1 + 40));
          if (Allocator || (Allocator = PNEW_StringList_Con(v42, *(a1 + 32), *(a1 + 40), (*(*a2 + 24 * v17 + 16) + v21 + 16))) != 0 || (Allocator = StringList_FromSplitString(*(*(*a2 + 24 * v17 + 16) + v21 + 16), v48, 0x20u)) != 0)
          {
            v40 = LH_ERROR_to_VERROR(Allocator);
            goto LABEL_35;
          }

          v40 = v31;
        }

LABEL_26:
        ++v47;
        ++v22;
        v21 += 24;
        if (v22 >= v49[v17])
        {
          goto LABEL_27;
        }
      }

      *(*(v23 + 24 * v17 + 16) + v21) = LangRecord;
      *(*(*a2 + 24 * v17 + 16) + v21 + 16) = &LangRecord[strlen(LangRecord) + 1];
      *(*(*a2 + 24 * v17 + 16) + v21 + 8) = nuance_pcre_compile(*(a1 + 168), *(a1 + 176), v28, 0, &v46, &v45, 0);
LABEL_25:
      v8 = v26;
      v9 = v24;
      goto LABEL_26;
    }

LABEL_27:
    v18 = v41;
    *(*a2 + 24 * v17++ + 4) = v41;
    v7 = v39;
  }

  while (v17 < *v38);
LABEL_35:
  v36 = v40;
  v14 = v40;
  if ((v40 & 0x80000000) == 0)
  {
    return v14;
  }

LABEL_33:
  CLM_EmptyLanguageStruct(a1, a2, v17);
  return v36;
}

BOOL CLM_FindNrOfLanguages(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v12 = a4;
  *__dst = 0;
  *a8 = 0;
  bzero(a5, 4 * a6);
  bzero(a7, 4 * a6);
  if (v12 <= a3)
  {
    do
    {
      if (v12 >= a3)
      {
        break;
      }

      strncpy(&__dst[4], (a2 + v12), 3uLL);
      result = CLM_IsSeperationRecord(a2, v12);
      if (!result)
      {
        return result;
      }

      if (CLM_FindLanguageInArray(a5, a6, a7, &__dst[4], __dst))
      {
        if (*__dst >= a6)
        {
          goto LABEL_2;
        }

        strcpy(a5 + 4 * *__dst, &__dst[4]);
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

uint64_t CLM_FindLangRecord(uint64_t a1, unsigned int a2, _DWORD *a3, const char *a4)
{
  *__dst = 0;
  v8 = *a3;
  strncpy(__dst, (a1 + v8), 3uLL);
  if (strcmp(a4, __dst))
  {
    v9 = 0;
    while (1)
    {
      v10 = v8;
      if (v8 >= a2 || v9)
      {
        break;
      }

      v11 = 0;
      v12 = 0;
      v13 = a1;
      do
      {
        v15 = *(v13 + v8) == 0;
        v14 = 1 - a2 + v8 + v11;
        *a3 = v8 + v11 + 1;
        if (v15)
        {
          ++v12;
        }

        ++v13;
        ++v11;
        v15 = v12 > 1 || v14 == 0;
      }

      while (!v15);
      v9 = v8 - a2 + v11 == 0;
      LODWORD(v8) = v8 + v11;
      strncpy(__dst, (a1 + (v10 + v11)), 3uLL);
      if (!strcmp(a4, __dst))
      {
        LODWORD(v8) = v10 + v11;
        break;
      }
    }
  }

  if (v8 >= a2)
  {
    return 0;
  }

  else
  {
    return a1 + (v8 + 3);
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
  *__dst = 0;
  strncpy(__dst, (a1 + a2), 3uLL);
  return *__dst != 7173476 || *(a1 + a2 + 3) || *(a1 + a2 + 4);
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

  while (strcmp(__s1, __s2) && *__s2)
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

uint64_t CLM_FindSeperationRecord(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v6 = *a3;
  while (1)
  {
    result = CLM_IsSeperationRecord(a1, v6);
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
        *a3 = ++v6;
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
  v12 = *MEMORY[0x1E69E9840];
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
  v8 = *MEMORY[0x1E69E9840];
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
  v4 = *(*(a1 + 24) + 8);
  v5 = strlen(__s);
  v6 = heap_Calloc(v4, 1, v5 + 1);
  if (v6)
  {
    v7 = v6;
    __lasts = 0;
    v8 = strcpy(v6, __s);
    *__s = 0;
    v9 = strtok_r(v8, "\t ", &__lasts);
    if (v9)
    {
      v10 = v9;
      do
      {
        strcat(__s, v10);
        v10 = strtok_r(0, "\t ", &__lasts);
      }

      while (v10);
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
    if (a4 <= 2 * strlen(__s))
    {
      return 2347769865;
    }

    *a3 = 0;
  }

  if (a5)
  {
    StringList_Reset(a5);
  }

  v11 = strlen(v9);
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
        *&a3[strlen(a3)] = 32;
        *&a3[strlen(a3)] = 18;
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

      *&a3[strlen(a3)] = 32;
LABEL_24:
      kaldi::CuMatrixBase<float>::~CuMatrixBase();
      strcat(a3, v17);
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
      kaldi::CuMatrixBase<float>::~CuMatrixBase();
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

BOOL CLM_SearchAndReplace(void *a1, _BYTE *a2, char *a3, uint64_t a4, char *__s, uint64_t a6, unsigned int a7)
{
  v46 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v42 = 0;
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  v38 = strlen(__s);
  if (v38)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v36 = a1;
    do
    {
      if (v12 && *a2 == 94)
      {
        break;
      }

      v13 = strlen(__s);
      if (nuance_pcre_exec(a1[21], a1[22], a4, 0, &__s[v12], v13 - v12, 0, 0, v44, 90) < 1)
      {
        break;
      }

      v14 = CLM_InterpretReplacementString(a1, a3, &v42, &v43);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v15 = v43;
      if (!v43)
      {
        v12 = *(v44 + v10 + 1) + v12 - *(v44 + v10);
      }

      v16 = LODWORD(v44[0]);
      v17 = v12;
      if (LODWORD(v44[0]))
      {
        do
        {
          *(a6 + v11++) = __s[v17++];
          --v16;
        }

        while (v16);
      }

      v40 = v42;
      if (v15)
      {
        v18 = (v42 + 8);
        for (i = v15; i; --i)
        {
          v20 = *(v18 - 2);
          if (v20 == 1)
          {
            v21 = *(v18 - 1);
            v22 = (2 * v21) | 1;
            v10 = 2 * v21;
            v23 = *(v44 + (2 * v21));
            v24 = (*(v44 + v22) - v23);
            if (v24 + v11 >= a7)
            {
LABEL_23:
              v25 = 2347769865;
              v26 = v36[3];
              goto LABEL_37;
            }

            strncpy((a6 + v11), &__s[v23 + v12], v24);
            v11 = *(v44 + v22) + v11 - *(v44 + v10);
          }

          else if (!v20 && *v18)
          {
            if (v11 + strlen(*v18) >= a7)
            {
              goto LABEL_23;
            }

            strcpy((a6 + v11), *v18);
            v11 += strlen(*v18);
          }

          v18 += 2;
        }
      }

      v12 += DWORD1(v44[0]);
      a1 = v36;
      CLM_FreeListOfTypes(v36, v40, v15);
      v42 = 0;
    }

    while (v12 < v38);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v27 = v38 - v12;
  if (v38 <= v12)
  {
    v27 = 0;
LABEL_34:
    v33 = v27 + v11;
    if (v33 < a7)
    {
      *(a6 + v33) = 0;
      return v12 == 0;
    }
  }

  else
  {
    LODWORD(v28) = a7 - v11;
    if (a7 >= v11)
    {
      v28 = v28;
    }

    else
    {
      v28 = 0;
    }

    v29 = &__s[v12];
    v30 = (a6 + v11);
    v31 = v38 - v12;
    while (v28)
    {
      v32 = *v29++;
      *v30++ = v32;
      --v28;
      if (!--v31)
      {
        goto LABEL_34;
      }
    }
  }

  v25 = 2347769865;
  v26 = a1[3];
LABEL_37:
  log_OutPublic(*(v26 + 32), "CLM", 50002, 0);
  return v25;
}

uint64_t CLM_InterpretReplacementString(uint64_t a1, char *__s, uint64_t *a3, unsigned int *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  __n = 0;
  v8 = strlen(__s);
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
          bzero(v14, (32 * v8) & 0xFFFFFFFE0);
          v15 = 0;
          v16 = 0;
          v51 = 0;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
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
          v17 = v8;
          v29 = 0u;
          *v30 = 0u;
          while (1)
          {
            memcpy(v13, *(a1 + 192), __n);
            if (nuance_pcre_exec(*(a1 + 168), *(a1 + 176), v13, 0, &__s[v16], v17, 0, 0, &v29, 90) != 3)
            {
              break;
            }

            if (LODWORD(v30[0]))
            {
              *(*a3 + 16 * v15) = 0;
              *(*a3 + 16 * v15 + 8) = heap_Alloc(*(*(a1 + 24) + 8), (LODWORD(v30[0]) + 1));
              v18 = *(*a3 + 16 * v15 + 8);
              if (!v18)
              {
                goto LABEL_26;
              }

              strncpy(v18, &__s[v16], LODWORD(v30[0]));
              *(*(*a3 + 16 * v15++ + 8) + SLODWORD(v30[0])) = 0;
            }

            *(*a3 + 16 * v15) = 1;
            __strncpy_chk();
            v19 = 0;
            v27[HIDWORD(v30[0]) + ~LODWORD(v30[0])] = 0;
            v20 = v27[0];
            if ((v27[0] - 58) >= 0xF6u)
            {
              v19 = 0;
              v21 = &v27[1];
              do
              {
                v19 = 10 * v19 + (v20 - 48);
                v22 = *v21++;
                v20 = v22;
              }

              while ((v22 - 58) >= 0xF6u);
            }

            *(*a3 + 16 * v15 + 4) = v19;
            v16 += DWORD1(v29);
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
            strncpy(v24, &__s[v16], v17);
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

uint64_t CLM_RemoveInvalidPhonemes(uint64_t a1, int a2, char *a3, char *a4, _DWORD *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *a5 = 0;
  }

  v9 = 2347769864;
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) == 0 && a1)
  {
    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM RemoveInvalidPhonemes : Begin (%s)", a4);
    v10 = CLM_GiveLanguageBuffer(a3, *(a1 + 152), *(a1 + 160), 2);
    if (v10)
    {
      v11 = v10;
      v12 = CLM_DeleteNonPhoneChars(a1, a4);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      else
      {
        v13 = (2 * strlen(a4)) | 1;
        v14 = heap_Alloc(*(*(a1 + 24) + 8), v13);
        if (v14)
        {
          v15 = v14;
          bzero(v14, v13);
          v9 = CLM_SplitWordInPhonemes(*(a1 + 24), a4, v15, v13, 0, 0);
          if ((v9 & 0x80000000) != 0)
          {
            heap_Free(*(*(a1 + 24) + 8), v15);
          }

          else
          {
            __s1 = *(v11 + 8);
            __lasts = 0;
            if (!hlp_ShouldTempWorkAroundVO9614(a1, a3))
            {
              *a4 = 0;
              v17 = strtok_r(v15, " ", &__lasts);
              if (v17)
              {
                v18 = v17;
                do
                {
                  if (*v18 == 84 && !v18[1] && !strcmp(a3, "spm"))
                  {
                    v19 = strcmp((a1 + 56), "SPE");
                    v24 = 0;
                    v23 = 0;
                    v25 = 0;
                    strcpy(__s2, " ");
                    __strcat_chk();
                    __strcat_chk();
                    if (!v19)
                    {
                      goto LABEL_24;
                    }
                  }

                  else
                  {
                    v24 = 0;
                    v23 = 0;
                    v25 = 0;
                    strcpy(__s2, " ");
                    __strcat_chk();
                    __strcat_chk();
                  }

                  if (*v18 != 18 && !strstr(__s1, __s2))
                  {
                    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "Wrong L&H+ phoneme %s", v18);
                    if (a5)
                    {
                      *a5 = 1;
                    }

                    goto LABEL_25;
                  }

LABEL_24:
                  strcat(a4, v18);
LABEL_25:
                  v18 = strtok_r(0, " ", &__lasts);
                }

                while (v18);
              }
            }

            heap_Free(*(*(a1 + 24) + 8), v15);
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

  return v9;
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

uint64_t hlp_ShouldTempWorkAroundVO9614(uint64_t a1, char *__s1)
{
  if (strcmp(__s1, "mnc") && strcmp(__s1, "mnt") && strcmp(__s1, "cah") && strcmp(__s1, "sic"))
  {
    return 0;
  }

  log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "VO-9614 lang code don't check phonemes against phoneme set (%s).", __s1);
  return 1;
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
  v19 = *MEMORY[0x1E69E9840];
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

  memset(v18, 0, 256);
  v14 = 0;
  Language = hlp_GetLanguage(*(a1[3] + 40), v15);
  if ((Language & 0x80000000) != 0)
  {
    return Language;
  }

  __strcat_chk();
  __strcat_chk();
  v7 = brokeraux_ComposeBrokerString(a1[3], v18, 0, 1, v15, 0, 0, v17, 0x100uLL);
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
    return CLM_InitFromCLMv2Lua(a1, v15);
  }

  strncpy(a1 + 56, (v11 + 14), 3uLL);
  *(a1 + 59) = 0;
  *(a1 + 60) = *(v11 + 17);
  *(a1 + 61) = *(v11 + 18);
  v16 = 19;
  if ((CLM_EnumerateLanguages(a1, a1 + 9, a1 + 20, 1u, *(v9 + 32), *(v9 + 40), 19) & 0x80000000) != 0)
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
    if ((CLM_FindSeperationRecord(*(v9 + 32), *(v9 + 40), &v16) & 0x80000000) != 0 || (CLM_EnumerateLanguages(a1, a1 + 19, a1 + 40, 2u, *(v9 + 32), *(v9 + 40), v16) & 0x80000000) != 0)
    {
      return 2347777668;
    }

    v4 = 2347777671;
    if ((CLM_PreCompileSplitWordRegEx(a1) & 0x80000000) == 0 && (CLM_PreCompileReplacementRegEx(a1) & 0x80000000) == 0)
    {
      *(a1 + 16) = 1;
      return CLM_InitFromCLMv2Lua(a1, v15);
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
  v57 = 0;
  strcpy(__s2, "ANY");
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v15 = -1947197430;
  v16 = safeh_HandleCheck(a1, a2, 63000, 216);
  v17 = 2347769864;
  if ((v16 & 0x80000000) == 0 && a1)
  {
    if (!*(a1 + 64))
    {
      return 2347777672;
    }

    v17 = 2347777674;
    if (a4)
    {
      v18 = v16;
      v19 = strlen(a4);
      if (v19)
      {
        v20 = v19 + 1;
        if (v8 && v20 > v8)
        {
          return 2347777673;
        }

        if (v8)
        {
          v21 = heap_Alloc(*(*(a1 + 24) + 8), v20);
          if (v21)
          {
            v22 = v21;
            strcpy(v21, a4);
            __src = v22;
            v23 = CLM_RemoveInvalidPhonemes(a1, a2, a3, v22, &v60);
            v24 = v23;
            if (v23 < 0)
            {
              v25 = v23;
              if ((v23 & 0x1FFF) != 0x1E8D)
              {
                v26 = 0;
                v28 = 0;
                v15 = v23;
                goto LABEL_31;
              }
            }

            else if (v60)
            {
              v25 = -1947189627;
            }

            else
            {
              v25 = 0;
            }

            v54 = v25;
            if (!strcmp(a3, __s2))
            {
              v26 = 0;
              v15 = -1947189621;
              goto LABEL_23;
            }

            v52 = v8;
            if ((~v54 & 0x1E8D) != 0 && strcmp((a1 + 56), a3))
            {
              __dst = heap_Alloc(*(*(a1 + 24) + 8), v8 + 1);
              if (__dst)
              {
                if (a6 && a7)
                {
                  v29 = v8 + 1;
                  *a6 = 0;
                  *a7 = 0;
                  if (strlen(a4) <= 0x95)
                  {
                    v30 = &v58;
                    if (hlp_AllocateAndInitializePhonlists(a1, __src, &v59, &v58, &v57) >= 0)
                    {
                      v31 = &v57;
                    }

                    else
                    {
                      v30 = 0;
                      v31 = 0;
                    }
                  }

                  else
                  {
                    a6 = 0;
                    a7 = 0;
                    v30 = 0;
                    v31 = 0;
                  }
                }

                else
                {
                  v29 = v8 + 1;
                  v31 = 0;
                  v30 = 0;
                }

                bzero(__dst, v29);
                strcpy(__dst, __src);
                strcpy(a5, __src);
                v33 = CLM_ApplyRules(a1, *(a1 + 88), *(a1 + 96), a3, __dst, a5, v8, v59, v30, v31);
                if (v33)
                {
                  if (v33 < 0)
                  {
                    goto LABEL_69;
                  }
                }

                else
                {
                  strcpy(__dst, a5);
                }

                v33 = CLM_ApplyRules(a1, *(a1 + 120), *(a1 + 128), a3, __dst, a5, v8, v59, v31, v30);
                if (v33)
                {
                  if (v33 < 0)
                  {
                    goto LABEL_69;
                  }
                }

                else
                {
                  strcpy(__dst, a5);
                }

                v33 = CLM_ApplyRules(a1, *(a1 + 88), *(a1 + 96), __s2, __dst, a5, v8, v59, v30, v31);
                if (v33)
                {
                  if (v33 < 0)
                  {
                    goto LABEL_69;
                  }
                }

                else
                {
                  strcpy(__dst, a5);
                }

                v34 = CLM_ApplyPhonemeMapping(a1, *(a1 + 72), *(a1 + 80), a3, __dst, a5, v8, v59, v31, v30);
                if (v34 < 0)
                {
                  if ((v34 & 0x1FFF) != 0)
                  {
                    v15 = v34;
                  }

                  else
                  {
                    v15 = -1947189621;
                  }

                  v28 = v54;
                  v27 = __src;
                  v26 = __dst;
                  goto LABEL_32;
                }

                strcpy(__dst, a5);
                v33 = CLM_ApplyRules(a1, *(a1 + 104), *(a1 + 112), a3, __dst, a5, v8, v59, v30, v31);
                if (v33)
                {
                  if (v33 < 0)
                  {
                    v35 = (v33 & 0x1FFF) == 0;
                    v36 = 7819;
LABEL_70:
                    if (v35)
                    {
                      v15 = v36;
                    }

                    else
                    {
                      v15 = v33;
                    }

                    v28 = v54;
LABEL_74:
                    v27 = __src;
                    v26 = __dst;
                    goto LABEL_32;
                  }
                }

                else
                {
                  strcpy(__dst, a5);
                }

                v33 = CLM_ApplyRules(a1, *(a1 + 104), *(a1 + 112), __s2, __dst, a5, v8, v59, v31, v30);
                if (v33)
                {
                  if (v33 < 0)
                  {
LABEL_69:
                    v35 = (v33 & 0x1FFF) == 0;
                    v36 = -1947189621;
                    goto LABEL_70;
                  }
                }

                else
                {
                  strcpy(__dst, a5);
                }

                v37 = a3;
                v26 = __dst;
                v38 = CLM_ApplyRules(a1, *(a1 + 136), *(a1 + 144), v37, __dst, a5, v8, v59, v30, v31);
                if (v38)
                {
                  if (v38 < 0)
                  {
                    if ((v38 & 0x1FFF) != 0)
                    {
                      v15 = v38;
                    }

                    else
                    {
                      v15 = -1947189621;
                    }

                    goto LABEL_23;
                  }
                }

                else
                {
                  strcpy(__dst, a5);
                }

                v39 = CLM_RemoveInvalidPhonemes(a1, a2, (a1 + 56), a5, &v60);
                v15 = v39;
                if ((v39 & 0x80000000) == 0)
                {
                  v28 = v54;
                  if (v60)
                  {
                    v28 = -1947189626;
                    goto LABEL_31;
                  }

LABEL_86:
                  if (a6 && a7)
                  {
                    *a6 = 0;
                    *a7 = 0;
                    CountStrings = StringList_GetCountStrings(v59);
                    if (v31)
                    {
                      v41 = StringList_GetCountStrings(*v31);
                    }

                    else
                    {
                      v41 = 0;
                    }

                    if (CountStrings)
                    {
                      if (v41 == CountStrings && (CLM_MergeSubsequentInsertionAndDeletions(v59, *v31) & 0x80000000) == 0)
                      {
                        v42 = StringList_GetCountStrings(v59);
                        if (v42 == StringList_GetCountStrings(*v31))
                        {
                          if (v42)
                          {
                            v43 = 0;
                            while (1)
                            {
                              v44 = strlen(a6);
                              v45 = StringList_GetAt(v59, v43);
                              if (v44 + strlen(v45) + 1 >= v52)
                              {
                                break;
                              }

                              v46 = strlen(a7);
                              v47 = StringList_GetAt(*v31, v43);
                              if (v46 + strlen(v47) + 1 >= v52)
                              {
                                break;
                              }

                              v48 = StringList_GetAt(v59, v43);
                              v49 = strcat(a6, v48);
                              *&a6[strlen(v49)] = 32;
                              v50 = StringList_GetAt(*v31, v43);
                              v51 = strcat(a7, v50);
                              *&a7[strlen(v51)] = 32;
                              if (v42 <= ++v43)
                              {
                                goto LABEL_74;
                              }
                            }

                            *a6 = 0;
                            *a7 = 0;
                          }
                        }
                      }
                    }

                    goto LABEL_74;
                  }

                  goto LABEL_31;
                }

                v28 = 7821;
                if ((v39 & 0x1FFF) == 0x1E8D)
                {
                  goto LABEL_86;
                }
              }

              else
              {
                log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0);
                v26 = 0;
              }

LABEL_23:
              v28 = v54;
LABEL_31:
              v27 = __src;
              goto LABEL_32;
            }

            v27 = __src;
            strcpy(a5, __src);
            v26 = 0;
            v15 = v24;
            v28 = v54;
          }

          else
          {
            log_OutPublic(*(*(a1 + 24) + 32), "CLM", 50000, 0);
            v26 = 0;
            v27 = 0;
            v28 = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v15 = v18;
        }

LABEL_32:
        hlp_FreePhonlist(a1, &v59);
        hlp_FreePhonlist(a1, &v58);
        hlp_FreePhonlist(a1, &v57);
        if (v27)
        {
          heap_Free(*(*(a1 + 24) + 8), v27);
        }

        if (v26)
        {
          heap_Free(*(*(a1 + 24) + 8), v26);
        }

        if (v15 >= 0)
        {
          return v28;
        }

        else
        {
          return v15;
        }
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
          strcpy(a5, a6);
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
  v54 = 0;
  v55 = 0;
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
    v57 = 0;
    memset(v56, 0, sizeof(v56));
    Allocator = ooc_utils_createAllocator(v56, *(a1 + 32), *(a1 + 40));
    if (Allocator || (Allocator = PNEW_StringList_Con(v56, *(a1 + 32), *(a1 + 40), &v55)) != 0)
    {
      v20 = LH_ERROR_to_VERROR(Allocator);
    }

    else
    {
      v20 = CLM_SplitWordInPhonemes(*(a1 + 24), a5, 0, 0, v55, 0);
    }

    v21 = v20;
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_36;
    }

    v53 = v20;
    *&v56[0] = 0;
    v52 = a8;
    v22 = hlp_CheckDoAlignment(a8, a9, a10);
    *a6 = 0;
    if (StringList_GetCountStrings(v55))
    {
      v23 = 0;
      v24 = a7;
      while (1)
      {
        v25 = StringList_GetAt(v55, v23);
        hlp_FindPhonemeMapping(v18 + 8, v25, v56, &v54);
        if (*&v56[0])
        {
          v25 = *&v56[0];
        }

        v26 = strlen(a6);
        if (v26 + strlen(v25) + 1 > v24)
        {
          break;
        }

        strcat(a6, v25);
        if (StringList_GetCountStrings(v55) <= ++v23)
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
      v21 = v53;
      goto LABEL_36;
    }

    v27 = v55;
    v21 = v53;
    if (!v55)
    {
      goto LABEL_36;
    }

    v28 = *a9;
    if (!*a9)
    {
      goto LABEL_36;
    }

    CountStrings = StringList_GetCountStrings(v55);
    v30 = StringList_GetCountStrings(v28);
    v31 = v30;
    v32 = CountStrings != 0;
    if (v30 && CountStrings)
    {
      v51 = v27;
      v33 = 0;
      v34 = 0;
      do
      {
        v32 = CountStrings > v34;
        while (1)
        {
          v35 = StringList_GetAt(v28, v33);
          if (*v35 != 42 || v35[1])
          {
            break;
          }

          if (v31 <= ++v33 || CountStrings <= v34)
          {
            goto LABEL_31;
          }
        }

        v36 = StringList_GetAt(v28, v33);
        v37 = StringList_GetAt(v51, v34);
        v38 = strcmp(v36, v37);
        if (!v38)
        {
          ++v34;
        }

        ++v33;
        v32 = CountStrings > v34;
      }

      while (!v38 && v31 > v33 && CountStrings > v34);
      if (v38)
      {
        goto LABEL_36;
      }

LABEL_31:
      if (v31 <= v33)
      {
LABEL_47:
        if (v32)
        {
          goto LABEL_36;
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_47;
      }

      LOWORD(v33) = 0;
    }

    if (v31 > v33)
    {
      do
      {
        v40 = StringList_GetAt(v28, v33);
        if (*v40 != 42)
        {
          goto LABEL_36;
        }

        if (v40[1])
        {
          break;
        }

        LOWORD(v33) = v33 + 1;
      }

      while (v31 > v33);
      if (v40[1])
      {
        goto LABEL_36;
      }
    }

LABEL_48:
    if (StringList_GetCountStrings(*a9))
    {
      v41 = 0;
      v42 = 0;
      while (1)
      {
        v43 = StringList_GetAt(*a9, v42);
        hlp_FindPhonemeMapping(v18 + 8, v43, v56, &v54);
        v44 = *a9;
        if (!v41)
        {
          break;
        }

        v41 = 1;
LABEL_69:
        if (StringList_GetCountStrings(v44) <= ++v42)
        {
          goto LABEL_36;
        }
      }

      v45 = v54;
      v46 = *a10;
      if (*v43 != 42 || v43[1])
      {
        if (!*&v56[0])
        {
          goto LABEL_66;
        }

        if (**&v56[0])
        {
          if (v54)
          {
            if (StringList_GetCountStrings(v54))
            {
              v47 = 0;
              do
              {
                v48 = StringList_GetAt(v45, v47);
                v49 = CLM_PhonList_Append(v46, v48);
                if (v49 < 0)
                {
                  break;
                }

                if (v47)
                {
                  v50 = CLM_PhonList_InsertAt(v44, ++v42, "*");
                  if (v50 < 0)
                  {
                    goto LABEL_67;
                  }

                  v49 = CLM_PhonList_InsertAt(v52, v42, "*");
                  if (v49 < 0)
                  {
                    break;
                  }
                }

                ++v47;
              }

              while (StringList_GetCountStrings(v45) > v47);
            }

            else
            {
              v49 = 0;
            }
          }

          else
          {
            v49 = -1947197440;
          }

          goto LABEL_68;
        }
      }

      v43 = "*";
LABEL_66:
      v50 = CLM_PhonList_Append(*a10, v43);
LABEL_67:
      v49 = v50;
LABEL_68:
      v41 = v49 >> 31;
      v44 = *a9;
      v21 = v49 & ~(v49 >> 31);
      goto LABEL_69;
    }

LABEL_36:
    hlp_FreePhonlist(a1, &v55);
    return v21;
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
    v5 = __s;
    if (*__s)
    {
      v6 = 0;
      do
      {
        v7 = v6;
        a2[v6] = __tolower(v5[v6]);
        ++v6;
        v5 = __s;
        v8 = strlen(__s);
      }

      while (v7 <= 1 && v6 < v8);
    }

    else
    {
      v6 = 0;
    }

    a2[v6] = 0;
    if (strcmp(v5, a2))
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
  ShouldTempWorkAroundVO9614 = hlp_ShouldTempWorkAroundVO9614(a1, a3);
  if ((safeh_HandleCheck(a1, a2, 63000, 216) & 0x80000000) != 0 || !*(a1 + 48))
  {
    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : CLM data not available, assume valid transcription");
    *a6 = 1;
    return v16;
  }

  v40 = ShouldTempWorkAroundVO9614;
  v18 = CLM_GiveLanguageBuffer(a3, *(a1 + 152), *(a1 + 160), 2);
  if (!v18)
  {
    log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : CLM data not available for %s", a3);
    *a6 = 0;
    return v16;
  }

  v19 = v18;
  v41 = 0;
  log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : Begin (%s)", a5);
  CLM_GetFeClmCompInfo(a1, a2, &v41);
  v20 = v41;
  if (v41)
  {
    v21 = LH_stricmp((a1 + 56), a3);
    v22 = 0;
    if (!a4 || v21)
    {
      goto LABEL_20;
    }

    if (*a4 && *(a1 + 204))
    {
      v38 = v20;
      v23 = 0;
      v24 = 0;
      while (LH_stricmp((*(a1 + 208) + v23), a4))
      {
        ++v24;
        v23 += 16;
        if (v24 >= *(a1 + 204))
        {
          v22 = 0;
          goto LABEL_41;
        }
      }

      v22 = *(a1 + 208) + v23;
LABEL_41:
      v20 = v38;
      goto LABEL_20;
    }
  }

  v22 = 0;
LABEL_20:
  *a6 = 1;
  v26 = CLM_DeleteNonPhoneChars(a1, a5);
  if ((v26 & 0x80000000) != 0)
  {
    v31 = 0;
    v14 = v26;
  }

  else
  {
    v39 = v20;
    v27 = (2 * strlen(a5)) | 1;
    v28 = heap_Calloc(*(*(a1 + 24) + 8), v27, 1);
    if (v28)
    {
      v29 = *(v19 + 8);
      v30 = v28;
      v36 = v29;
      v37 = v27;
      v14 = CLM_ValidateInForeignLooLoanSet(a1, a5, v28, v27, v29, v40, v22, a6);
      if ((v14 & 0x80000000) != 0)
      {
        v31 = v30;
      }

      else
      {
        v31 = v30;
        if (a7 == 1)
        {
          if (v39)
          {
            if (!*a6)
            {
              v32 = LH_stricmp((a1 + 56), a3);
              if (a4)
              {
                if (!v32 && !*a4 && *(a1 + 204))
                {
                  v33 = 0;
                  for (i = 0; i < *(a1 + 204); ++i)
                  {
                    v35 = *(a1 + 208);
                    *a6 = 1;
                    v14 = CLM_ValidateInForeignLooLoanSet(a1, a5, v30, v37, v36, v40, v35 + v33, a6);
                    if ((v14 & 0x80000000) != 0)
                    {
                      break;
                    }

                    if (*a6 == 1)
                    {
                      strcpy(a4, (v35 + v33));
                      log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "Extended phoneme set %s valid, so returned as foreign loan phoneme set", a4);
                      break;
                    }

                    v33 += 16;
                  }
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
      v31 = 0;
      v14 = 2347769866;
    }
  }

  log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "CLM_ValidateTranscriptionEx : End (%s)", a5);
  if (v31)
  {
    heap_Free(*(*(a1 + 24) + 8), v31);
  }

  return v14;
}

uint64_t CLM_ValidateInForeignLooLoanSet(uint64_t a1, char *a2, char *a3, unsigned int a4, char *a5, int a6, uint64_t a7, _DWORD *a8)
{
  v23 = *MEMORY[0x1E69E9840];
  v13 = CLM_SplitWordInPhonemes(*(a1 + 24), a2, a3, a4, 0, 0);
  if ((v13 & 0x80000000) == 0)
  {
    __lasts = 0;
    v14 = strtok_r(a3, " ", &__lasts);
    *a2 = 0;
    if (v14)
    {
      v15 = v14;
      do
      {
        strcat(a2, v15);
        strcpy(__s2, " ");
        __strcat_chk();
        __strcat_chk();
        if (!a6 && *v15 != 18 && !strstr(a5, __s2))
        {
          if (a7 && (v16 = *(a7 + 4), *(a7 + 4)))
          {
            v17 = *(a7 + 8);
            while (strcmp(v15, *v17))
            {
              v17 += 3;
              if (!--v16)
              {
                goto LABEL_12;
              }
            }
          }

          else
          {
LABEL_12:
            log_OutText(*(*(a1 + 24) + 32), "CLM", 4, 0, "Wrong L&H+ phoneme %s", v15);
            *a8 = 0;
          }
        }

        v15 = strtok_r(0, " ", &__lasts);
      }

      while (v15);
    }
  }

  return v13;
}

uint64_t CLM_ValidateTranscription(uint64_t a1, int a2, char *a3, uint64_t a4, char *a5, _DWORD *a6)
{
  if (a4)
  {
    v11 = &v13;
    __strcpy_chk();
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

uint64_t hlp_FindPhonemeMapping(uint64_t result, char *__s2, void *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  v4 = *result;
  if (v4)
  {
    v8 = result;
    v9 = 0;
    v10 = *(result + 8);
    v11 = 24 * v4;
    while (1)
    {
      result = *(v10 + v9);
      if (result)
      {
        v12 = *(v10 + v9 + 8);
        if (v12)
        {
          result = strcmp(result, __s2);
          if (!result)
          {
            break;
          }
        }
      }

      v9 += 24;
      if (v11 == v9)
      {
        return result;
      }
    }

    *a3 = v12;
    *a4 = *(*(v8 + 8) + v9 + 16);
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
    if ((paramc_ParamGetStr(*(a1 + 40), "clcpppipelinemode", &__s1) & 0x80000000) != 0 || !__s1 || !*__s1 || !strcmp(__s1, "internal"))
    {
      a1 = a2;
    }

    return *(a1 + 48);
  }

  return result;
}

uint64_t IRefCnt_ObjcLoadCLMData(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v53 = *MEMORY[0x1E69E9840];
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
  if (strlen(a3) - 256 < 0xFFFFFFFFFFFFFEFFLL)
  {
    goto LABEL_39;
  }

  strcpy((*(a5 + 48) + 48), a3);
  v35 = 0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  strcpy(v30, "CLMP");
  memset(v52, 0, sizeof(v52));
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  *&v38[5] = 0u;
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
    while (!v19 && (ssftriff_reader_OpenChunk(v33, &v34, &v31, &v32) & 0x80000000) == 0)
    {
      if (v34 ^ 0x504D4C43 | v35)
      {
        goto LABEL_21;
      }

      v27 = 256;
      v20 = ssftriff_reader_ReadStringZ(v33, v32, v31, 0, __s1, &v27);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_42;
      }

      if (!strstr(__s1, __s2))
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

  strcpy(v38, "clm/");
  __strcat_chk();
  inited = brokeraux_ComposeBrokerString(*(a5 + 24), v38, 0, 1, __s2, 0, 0, v37, 0x100uLL);
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

uint64_t CLM_LoadRules(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int *a5)
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
  v150[16] = *MEMORY[0x1E69E9840];
  v145 = 0;
  v144 = 0;
  v142 = 0;
  v141 = 0;
  LOWORD(v140) = 0;
  v139 = 0;
  v138 = 0;
  v136 = 0;
  __s = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v129 = 0;
  v128 = 1;
  v127 = 1;
  v126 = 1;
  v125 = 0;
  v150[0] = 0x74756F6D726F6ELL;
  if ((safeh_HandleCheck(a1, a2, 62387, 120) & 0x80000000) != 0)
  {
    return 2340429832;
  }

  v143 = 0;
  HIWORD(v140) = 0;
  v135 = 0;
  v131 = 0;
  v130 = 0;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  *a5 = 1;
  v9 = (*(a1[4] + 112))(a1[2], a1[3], &v130, 0);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = (*(a1[1] + 104))(a3, a4, 1, 0, &v144 + 2);
  if ((v10 & 0x80000000) == 0 && ((*(a1[1] + 184))(a3, a4, HIWORD(v144), 0, &v134 + 2) & 0x80000000) == 0 && HIWORD(v134) == 1)
  {
    v10 = (*(a1[1] + 176))(a3, a4, HIWORD(v144), 0, &v145, &v142);
    if ((v10 & 0x80000000) == 0 && v142 >= 2u)
    {
      v11 = strlen(v145);
      v12 = heap_Calloc(*(*a1 + 8), 1, v11 + 1);
      if (!v12)
      {
        log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0);
        return 2340429834;
      }

      v13 = v12;
      strcpy(v12, v145);
      v14 = (*(a1[1] + 176))(a3, a4, HIWORD(v144), 1, &v131, &v143 + 2);
      if ((v14 & 0x80000000) == 0)
      {
        v15 = HIWORD(v143);
        v16 = *(v131 + 12);
        log_Markers(a1, "Markers IN", v131, HIWORD(v143));
        v149 = 0;
        v147 = 0;
        v148 = 0;
        v146 = 0;
        v17 = (*(a1[1] + 104))(a3, a4, 2, HIWORD(v144), &v149);
        v10 = v17;
        if ((v17 & 0x80000000) == 0)
        {
          v18 = v149;
          if (v149)
          {
            __src = v13;
            v19 = 0;
            while (1)
            {
              v20 = (*(a1[1] + 168))(a3, a4, v18, 0, 1, &v148, &v147 + 2);
              if ((v20 & 0x80000000) != 0)
              {
                break;
              }

              if (v148 > 0xA || ((1 << v148) & 0x610) == 0)
              {
                v25 = 0;
                v24 = v149;
              }

              else
              {
                v20 = (*(a1[1] + 168))(a3, a4, v149, 1, 1, &v147, &v147 + 2);
                if ((v20 & 0x80000000) != 0)
                {
                  break;
                }

                v20 = (*(a1[1] + 168))(a3, a4, v149, 2, 1, &v146, &v147 + 2);
                if ((v20 & 0x80000000) != 0)
                {
                  break;
                }

                v23 = v147 > v19 || v19 < v146;
                v24 = v149;
                if (v23)
                {
                  v19 = v146;
                  v25 = 0;
                }

                else
                {
                  v25 = v149;
                }
              }

              v20 = (*(a1[1] + 120))(a3, a4, v24, &v149);
              if ((v20 & 0x80000000) != 0)
              {
                break;
              }

              if (v25)
              {
                log_OutText(*(*a1 + 32), "FE_NORMOUT", 1, 0, "%s", "Dropping nested word record");
                v20 = (*(a1[1] + 192))(a3, a4, v25);
                if ((v20 & 0x80000000) != 0)
                {
                  break;
                }
              }

              v18 = v149;
              if (!v149)
              {
                v13 = __src;
                goto LABEL_40;
              }
            }

            v10 = v20;
            v51 = 0;
            v28 = 0;
            goto LABEL_81;
          }
        }

        if ((v17 & 0x80000000) != 0)
        {
          goto LABEL_78;
        }

LABEL_40:
        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ");
        *(&v114 + 1) = &v127;
        *&v115 = &v126;
        *&v114 = &v134;
        *&v113 = a1;
        *(&v116 + 1) = v13;
        *&v117 = 0;
        *(&v117 + 1) = &v129;
        *&v118 = &v142 + 2;
        *(&v115 + 1) = &v133 + 2;
        *&v116 = &v128;
        *(&v118 + 1) = &v132;
        *&v119 = &v133;
        *(&v119 + 1) = &v132 + 2;
        v14 = (*(a1[1] + 288))(a3, a4, HIWORD(v144), getSentenceAndInsertedCGNLengthPre, getSentenceAndInsertedCGNLength, 0, getSentenceAndInsertedCGNLengthPost, &v113);
        if ((v14 & 0x80000000) == 0)
        {
          LOWORD(v144) = WORD4(v113);
          v27 = heap_Calloc(*(*a1 + 8), 1, (16 * v134) | 1);
          v28 = v27;
          if (v27)
          {
            *v27 = 0;
            v27[1] = 0;
            v29 = heap_Alloc(*(*a1 + 8), v126 + 128);
            a1[8] = v29;
            if (v29)
            {
              *v29 = 0;
              v30 = heap_Alloc(*(*a1 + 8), v127);
              a1[9] = v30;
              if (v30)
              {
                *v30 = 0;
                v31 = heap_Alloc(*(*a1 + 8), v127);
                a1[10] = v31;
                if (v31)
                {
                  *v31 = 0;
                  v32 = heap_Alloc(*(*a1 + 8), v126 + 128);
                  a1[11] = v32;
                  if (v32)
                  {
                    *v32 = 0;
                    if (!*(a1 + 26))
                    {
                      goto LABEL_49;
                    }

                    v33 = heap_Alloc(*(*a1 + 8), v127);
                    a1[12] = v33;
                    if (v33)
                    {
                      *v33 = 0;
LABEL_49:
                      v128 = 1;
                      *(&v121 + 1) = v28;
                      v34 = (*(a1[1] + 288))(a3, a4, HIWORD(v144), 0, normOutFnc, 0, normOutFncPost, &v113);
                      if ((v34 & 0x80000000) == 0)
                      {
                        v110 = v16;
                        v111 = v15;
                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "ORIG   : %s", v13);
                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ");
                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L1: %s", a1[8]);
                        v35 = strlen(a1[8]);
                        v34 = (*(a1[4] + 120))(a1[2], a1[3], 0, a1[8], v35);
                        if ((v34 & 0x80000000) == 0)
                        {
                          log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L2: %s", a1[9]);
                          v36 = strlen(a1[9]);
                          v34 = (*(a1[4] + 120))(a1[2], a1[3], 1, a1[9], v36);
                          if ((v34 & 0x80000000) == 0)
                          {
                            log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L3: %s", a1[10]);
                            v37 = strlen(a1[10]);
                            v34 = (*(a1[4] + 120))(a1[2], a1[3], 2, a1[10], v37);
                            if ((v34 & 0x80000000) == 0)
                            {
                              __src = v13;
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L4: %s", a1[11]);
                              v38 = strlen(a1[11]);
                              v39 = (*(a1[4] + 120))(a1[2], a1[3], 3, a1[11], v38);
                              if ((v39 & 0x80000000) != 0)
                              {
                                goto LABEL_101;
                              }

                              if (*(a1 + 26))
                              {
                                log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "L5: %s", a1[12]);
                                v40 = strlen(a1[12]);
                                v39 = (*(a1[4] + 136))(a1[2], a1[3], 4, a1[12], v40);
                                if ((v39 & 0x80000000) != 0)
                                {
                                  goto LABEL_101;
                                }
                              }

                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ");
                              if (((*(a1[4] + 80))(a1[2], a1[3], v150) & 0x80000000) != 0)
                              {
                                v51 = 0;
                                v52 = 0;
                                v10 = 0;
                                goto LABEL_82;
                              }

                              v39 = (*(a1[4] + 128))(a1[2], a1[3], 0, &__s, &v135);
                              if ((v39 & 0x80000000) != 0 || (__s[v135] = 0, log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "O1     : %s", __s), v39 = (*(a1[4] + 128))(a1[2], a1[3], 3, &v136, &v135 + 2), (v39 & 0x80000000) != 0))
                              {
LABEL_101:
                                v10 = v39;
                                v51 = 0;
LABEL_81:
                                v52 = 0;
LABEL_82:
                                v13 = __src;
                                goto LABEL_84;
                              }

                              v136[HIWORD(v135)] = 0;
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "O4     : %s", v136);
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "ORIGL1 : %s", v13);
                              v41 = HIWORD(v135);
                              if (HIWORD(v135))
                              {
                                v42 = 0;
                                v43 = 0;
                                do
                                {
                                  if (v136[v42] == 226 && v136[v42 + 1] == 150 && v136[v42 + 2] == 172)
                                  {
                                    v44 = &__s[v43];
                                    if (*v44 != 226 || v44[1] != 150 || v44[2] != 172)
                                    {
                                      v45 = Utf8_LengthInUtf8chars(v136, v42);
                                      v43 = Utf8_LengthInBytes(__s, v45);
                                      memmove(&__s[v43 + 3], &__s[v43 + 1], v135 - v43);
                                      v46 = &__s[v43];
                                      *v46 = -26910;
                                      v46[2] = -84;
                                      LOWORD(v135) = v135 + 2;
                                      v41 = HIWORD(v135);
                                    }
                                  }

                                  ++v42;
                                  ++v43;
                                }

                                while (v42 < v41);
                              }

                              v47 = v135;
                              if (v135)
                              {
                                v48 = 0;
                                do
                                {
                                  v49 = v48;
                                  if (__s[v48] == 126)
                                  {
                                    if (v48 < v47)
                                    {
                                      do
                                      {
                                        __s[v49] = __s[v49 + 1];
                                        ++v49;
                                        v47 = v135;
                                      }

                                      while (v49 < v135);
                                    }

                                    LOWORD(v135) = --v47;
                                    --v48;
                                  }

                                  ++v48;
                                }

                                while (v48 < v47);
                                v50 = v47;
                              }

                              else
                              {
                                v50 = 0;
                              }

                              __s[v50] = 0;
                              __dst = heap_Calloc(*(*a1 + 8), 1, v142 + 1);
                              if (!__dst)
                              {
                                log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0);
                                v51 = 0;
                                v52 = 0;
                                v10 = 2340429834;
                                goto LABEL_82;
                              }

                              v58 = strcpy(__dst, v13);
                              v59 = strlen(v58);
                              v60 = a1[14];
                              *v60 = 0u;
                              v60[1] = 0u;
                              v60[2] = 0u;
                              v60[3] = 0u;
                              v60[4] = 0u;
                              v60[5] = 0u;
                              v60[6] = 0u;
                              v60[7] = 0u;
                              v61 = fe_normout_split_words(a1, a3, a4, __s, a1[14], &v139);
                              if ((v61 & 0x80000000) != 0)
                              {
                                goto LABEL_155;
                              }

                              v61 = fe_normout_split_words(a1, a3, a4, v13, 0, &v139 + 1);
                              if ((v61 & 0x80000000) != 0)
                              {
                                goto LABEL_155;
                              }

                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ");
                              v62 = v139;
                              v63 = HIWORD(v139);
                              log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "comparing O1 (%d words) and ORIGL1 (%d words) ", v139, HIWORD(v139));
                              if (v63 != v62)
                              {
                                log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "Mismatch number of orthographic words and number of phonetic words : abandon processing");
                                v52 = 0;
                                v10 = 0;
LABEL_156:
                                v51 = __dst;
                                goto LABEL_82;
                              }

                              v140 = 0;
                              v64 = v142;
                              if (!v142)
                              {
                                v92 = 0;
LABEL_148:
                                log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ");
                                v125 = 0;
                                LOWORD(v139) = 0;
                                v124 = __dst;
                                *&v120 = &v139;
                                *(&v120 + 1) = &v138;
                                *&v122 = 0;
                                *&v121 = &v125;
                                v61 = (*(a1[1] + 288))(a3, a4, HIWORD(v144), 0, MvToEqWordRecUpdFieldsFnc, 0, 0, &v113);
                                if ((v61 & 0x80000000) == 0)
                                {
                                  v52 = *(&v124 + 1);
                                  v93 = v124;
                                  v94 = strlen(v124);
                                  v95 = a4;
                                  v51 = v124;
                                  v96 = (*(a1[1] + 160))(a3, v95, HIWORD(v144), 0, (v94 + 1), v124, &v143);
                                  if ((v96 & 0x80000000) != 0)
                                  {
                                    v10 = v96;
                                  }

                                  else
                                  {
                                    log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "new SE_TEXT : %s", v93);
                                    log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, " ");
                                    if (v134)
                                    {
                                      v97 = 0;
                                      v98 = (v28 + 14);
                                      do
                                      {
                                        v99 = *(v98 - 7);
                                        v100 = *(v98 - 3);
                                        v101 = *(v98 - 2);
                                        v102 = *(v98 - 1);
                                        v103 = *v98;
                                        v98 += 8;
                                        log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "WORDREC[%d] %d,%d --> %d,%d", v99, v100, v101, v102, v103);
                                        ++v97;
                                      }

                                      while (v97 < v134);
                                    }

                                    *(v131 + 16) = strlen(v51);
                                    v130 += v92;
                                    v10 = (*(a1[4] + 104))(a1[2], a1[3]);
                                    if ((v10 & 0x80000000) == 0)
                                    {
                                      log_Markers(a1, "Markers OUT", v131, v111);
                                    }
                                  }

                                  goto LABEL_82;
                                }

                                goto LABEL_155;
                              }

                              v107 = 0;
                              v108 = 0;
                              v104 = v59;
                              while (1)
                              {
                                if (getNextWord(&v140 + 1, &v141 + 1, __src, v64))
                                {
                                  v65 = __s;
                                  NextWord = getNextWord(&v140, &v141, __s, v135);
                                  v67 = HIWORD(v140);
                                  if (NextWord)
                                  {
                                    v68 = v140;
                                    log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "COMPARE WORD[%d] %s and %s", v108, &__src[HIWORD(v140)], &v65[v140]);
                                    v69 = &__src[HIWORD(v140)];
                                    v70 = &__s[v68];
                                    if (strcmp(v69, &__s[v68]))
                                    {
                                      log_OutText(*(*a1 + 32), "FE_NORMOUT", 5, 0, "   UPDATE WORD[%d] %s and %s", v108, v69, v70);
                                      v71 = __s;
                                      v72 = strstr(&__s[v68], "▲");
                                      if (v72)
                                      {
                                        v73 = 0;
                                        while (1)
                                        {
                                          *(&v122 + 1) = v72;
                                          *&v123 = v73;
                                          *(&v123 + 1) = &v140 + 2;
                                          v61 = (*(a1[1] + 280))(a3, a4, &v144, updateWordRecFnc, &v113);
                                          if ((v61 & 0x80000000) != 0)
                                          {
                                            break;
                                          }

                                          v74 = *(&v122 + 1);
                                          v73 = v123;
                                          HIWORD(v140) = **(&v123 + 1);
                                          **(&v122 + 1) = 0;
                                          if (!v73)
                                          {
                                            log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43001, "%s%s", "message", "Wrong normout depes grammar");
                                            v52 = 0;
                                            v10 = 2340429831;
                                            goto LABEL_156;
                                          }

                                          v75 = strlen((v73 + 3));
                                          memmove(v74, (v73 + 3), v75 + 1);
                                          v71 = __s;
                                          v72 = strstr(&__s[v68], "▲");
                                          if (!v72)
                                          {
                                            goto LABEL_118;
                                          }
                                        }

LABEL_155:
                                        v10 = v61;
                                        v52 = 0;
                                        goto LABEL_156;
                                      }

LABEL_118:
                                      v76 = strlen(&v71[v68]);
                                      v77 = strlen(&__src[HIWORD(v140)]);
                                      v105 = strlen(__dst);
                                      v106 = v76;
                                      v78 = v76;
                                      if (v76 > v77)
                                      {
                                        v79 = (v76 - v77 + v105);
                                        v80 = heap_Realloc(*(*a1 + 8), __dst, (v79 + 1));
                                        if (!v80)
                                        {
                                          v52 = 0;
                                          v10 = 2340429834;
                                          goto LABEL_156;
                                        }

                                        *(v80 + v79) = 0;
                                        __dst = v80;
                                      }

                                      v81 = v78 - v77;
                                      if (v78 == v77)
                                      {
                                        memcpy(&__dst[HIWORD(v140) + v107], &__s[v140], v106);
                                        goto LABEL_138;
                                      }

                                      memmove(&__dst[v78 + v107 + HIWORD(v140)], &__dst[v77 + HIWORD(v140) + v107], v104 - (v77 + HIWORD(v140)));
                                      memcpy(&__dst[HIWORD(v140) + v107], &__s[v140], v106);
                                      updateWordRecs(a1, a3, a4, v28, v134, HIWORD(v140), v77, v106);
                                      if (v111)
                                      {
                                        v82 = 0;
                                        v83 = (v131 + 12);
                                        while (1)
                                        {
                                          v84 = *v83;
                                          v83 += 8;
                                          if (v84 - v110 > (HIWORD(v140) + v107))
                                          {
                                            break;
                                          }

                                          if (v111 == ++v82)
                                          {
                                            goto LABEL_138;
                                          }
                                        }
                                      }

                                      else
                                      {
                                        LOWORD(v82) = 0;
                                      }

                                      if (v111 > v82)
                                      {
                                        v85 = v131;
                                        v82 = v82;
                                        v86 = (v131 + 12);
                                        v87 = v82 - 1;
                                        v88 = (v131 + 12 + 32 * v82);
                                        do
                                        {
                                          if (v82)
                                          {
                                            v89 = v81 + *v88;
                                            if (*(v85 + 32 * v87 + 12) > v89)
                                            {
                                              goto LABEL_137;
                                            }
                                          }

                                          else
                                          {
                                            v89 = v81 + *v86;
                                          }

                                          *v88 = v89;
LABEL_137:
                                          ++v82;
                                          ++v87;
                                          v88 += 8;
                                        }

                                        while (v111 != v82);
                                      }

LABEL_138:
                                      v107 += v106 - v77;
                                      if (v78 < v77 && (v77 - v78) >= 1)
                                      {
                                        v90 = 0;
                                        v91 = v105 - 1;
                                        do
                                        {
                                          __dst[v91] = 0;
                                          ++v90;
                                          --v91;
                                        }

                                        while (v77 - v78 > v90);
                                      }
                                    }

                                    v67 = HIWORD(v141);
                                    LOWORD(v140) = v141;
                                    ++v108;
                                    v64 = v142;
                                  }
                                }

                                else
                                {
                                  v67 = HIWORD(v140);
                                }

                                HIWORD(v140) = v67 + 1;
                                if ((v67 + 1) >= v64)
                                {
                                  v92 = v107;
                                  goto LABEL_148;
                                }
                              }
                            }
                          }
                        }
                      }

                      v10 = v34;
                      v51 = 0;
LABEL_79:
                      v52 = 0;
LABEL_84:
                      heap_Free(*(*a1 + 8), v13);
                      if (v52)
                      {
                        heap_Free(*(*a1 + 8), v52);
                      }

                      if (v28)
                      {
                        heap_Free(*(*a1 + 8), v28);
                      }

                      if (v51)
                      {
                        heap_Free(*(*a1 + 8), v51);
                      }

                      v53 = a1[8];
                      if (v53)
                      {
                        heap_Free(*(*a1 + 8), v53);
                        a1[8] = 0;
                      }

                      v54 = a1[9];
                      if (v54)
                      {
                        heap_Free(*(*a1 + 8), v54);
                        a1[9] = 0;
                      }

                      v55 = a1[10];
                      if (v55)
                      {
                        heap_Free(*(*a1 + 8), v55);
                        a1[10] = 0;
                      }

                      v56 = a1[11];
                      if (v56)
                      {
                        heap_Free(*(*a1 + 8), v56);
                        a1[11] = 0;
                      }

                      v57 = a1[12];
                      if (v57)
                      {
                        heap_Free(*(*a1 + 8), v57);
                        a1[12] = 0;
                      }

                      return v10;
                    }
                  }
                }
              }
            }
          }

          log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0);
          v51 = 0;
          v52 = 0;
          v10 = 2340429834;
          goto LABEL_84;
        }
      }

      v10 = v14;
LABEL_78:
      v51 = 0;
      v28 = 0;
      goto LABEL_79;
    }
  }

  return v10;
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
  v22 = 0;
  v23 = 0;
  v21 = 0;
  __s = 0;
  v8 = *a4;
  v9 = (*(*(*a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v23, &v22 + 2);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  ++*a4[2];
  v10 = v23;
  if (v23 <= 0xA && ((1 << v23) & 0x610) != 0)
  {
    v11 = a4[6];
    if (!*v11)
    {
      v12 = a4[4];
      ++*a4[3];
      ++*v12;
    }

    *v11 = 0;
    v13 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 1, 1, &v22, &v22 + 2);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v9 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 2, 1, &v21, &v22 + 2);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    v14 = Utf8_LengthInUtf8chars((a4[7] + v22), v21 - v22);
    v15 = a4[4];
    *a4[3] += v14;
    *v15 = v21 + *v15 - v22;
    v10 = v23;
  }

  if (v10 == 7)
  {
    v9 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, &__s, &v22 + 2);
    if ((v9 & 0x80000000) != 0)
    {
      return v9;
    }

    v16 = __s;
    *a4[4] += strlen(__s) + 6;
    *a4[3] += strlen(v16) + 2;
    v10 = v23;
  }

  if (*(*a4 + 104))
  {
    v17 = v10 == 6;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v9 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, &__s, &v22 + 2);
    if ((v9 & 0x80000000) == 0)
    {
      v18 = __s;
      *a4[3] = *a4[3] + 2 * strlen(__s) - 2;
      *a4[4] = *a4[4] + 2 * strlen(v18) - 2;
    }
  }

  return v9;
}

uint64_t normOutFnc(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t *a4)
{
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v64 = 0;
  v61 = 0;
  __s2 = 0;
  __s = 0;
  v8 = *a4;
  *(a4[17] + 16 * *a4[10]) = *a3;
  BacktransPOS = (*(*(v8 + 8) + 168))();
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  *(a4[17] + 16 * *a4[10] + 4) = v67;
  BacktransPOS = (*(*(v8 + 8) + 168))(a1, a2, *a3, 1, 1, &v66, &v66 + 2);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  v10 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 2, 1, &v65, &v66 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = v66;
  v12 = a4[17];
  v13 = a4[10];
  *(v12 + 16 * *v13 + 12) = v66;
  *(v12 + 16 * *v13 + 8) = v11;
  v14 = v65;
  *(v12 + 16 * *v13 + 14) = v65;
  *(v12 + 16 * *v13 + 10) = v14;
  v15 = Utf8_LengthInUtf8chars((a4[7] + v66), v65 - v66);
  v16 = v67;
  if (v67 <= 0xA && ((1 << v67) & 0x610) != 0)
  {
    *a4[5] = v65;
    BacktransPOS = (*(*(v8 + 8) + 176))(a1, a2, *a3, 5, &__s2, &v66 + 2);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      return BacktransPOS;
    }

    BacktransPOS = com_mosynt_UseMosynt(*(v8 + 40), *(v8 + 48), *(v8 + 56), &v64);
    if ((BacktransPOS & 0x80000000) != 0)
    {
      return BacktransPOS;
    }

    if (v64)
    {
      BacktransPOS = com_mosynt_GetBacktransPOS(*(v8 + 40), *(v8 + 48), *(v8 + 56), __s2, &v63);
      if ((BacktransPOS & 0x80000000) != 0)
      {
        return BacktransPOS;
      }

      __s2 = &v63;
    }

    v10 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 6, &v61, &v66 + 2);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    if (*(v8 + 104) && !*a4[6])
    {
      v17 = a4[8];
      if (v17 && v66 != *a4[13])
      {
        if (v66 > *a4[12])
        {
          v19 = *a4[11];
          v20 = 2 * strlen(v17) - 2;
          *(*(v8 + 96) + strlen(*(v8 + 96))) = 88;
          v21 = strlen(a4[8]);
          strncat(*(v8 + 96), (a4[8] + 1), v21 - 2);
          if (v20 >= v19)
          {
            *(*(v8 + 96) + strlen(*(v8 + 96))) = 89;
            v24 = strlen(a4[8]);
            strncat(*(v8 + 96), (a4[8] + 1), v24 - 2);
            v25 = *a4[11];
            if (2 * strlen(a4[8]) - 2 > v25)
            {
              do
              {
                *(*(v8 + 64) + strlen(*(v8 + 64))) = 126;
                *(*(v8 + 72) + strlen(*(v8 + 72))) = 126;
                *(*(v8 + 80) + strlen(*(v8 + 80))) = 126;
                *(*(v8 + 88) + strlen(*(v8 + 88))) = 126;
                LODWORD(v25) = v25 + 1;
              }

              while (2 * strlen(a4[8]) - 2 > v25);
            }
          }

          else
          {
            v22 = 2 * strlen(a4[8]) - 2;
            if ((v22 & 0xFFFEu) < *a4[11])
            {
              do
              {
                *(*(v8 + 96) + strlen(*(v8 + 96))) = 126;
                ++v22;
              }

              while (*a4[11] > v22);
            }

            *(*(v8 + 96) + strlen(*(v8 + 96))) = 89;
            v23 = strlen(a4[8]);
            strncat(*(v8 + 96), (a4[8] + 1), v23 - 2);
          }

          a4[8] = 0;
        }
      }

      else if (*a4[9])
      {
        v18 = 0;
        do
        {
          *(*(v8 + 96) + strlen(*(v8 + 96))) = 32;
          ++v18;
        }

        while (v18 < *a4[9]);
      }
    }

    v26 = *a4[6];
    v27 = v66;
    if (v26)
    {
      v28 = 0;
    }

    else
    {
      v29 = v27 - utf8_GetPreviousUtf8Offset(a4[7], v66);
      strncat(*(v8 + 64), (a4[7] + v66 - v29), v29);
      *(*(v8 + 72) + strlen(*(v8 + 72))) = 32;
      *(*(v8 + 80) + strlen(*(v8 + 80))) = 32;
      strncat(*(v8 + 88), (a4[7] + v66 - v29), v29);
      v28 = 1;
      v27 = v66;
    }

    strncat(*(v8 + 64), (a4[7] + v27), v65 - v27);
    strncat(*(v8 + 88), (a4[7] + v66), v65 - v66);
    v15 = Utf8_LengthInUtf8chars((a4[7] + v66), v65 - v66);
    v30 = v15;
    if (v15)
    {
      do
      {
        strncat(*(v8 + 72), __s2, 1uLL);
        strncat(*(v8 + 80), v61, 1uLL);
        --v30;
      }

      while (v30);
    }

    *a4[9] = v15;
    if (*(v8 + 104))
    {
      v31 = a4[8];
      if (v31 && v66 != *a4[13])
      {
        *a4[11] += v28 + v15;
      }

      else
      {
        if (!v26)
        {
          *(*(v8 + 96) + strlen(*(v8 + 96))) = 32;
          v31 = a4[8];
        }

        if (v31)
        {
          *a4[11] = *a4[9];
        }
      }
    }

    *a4[6] = 0;
    v16 = v67;
  }

  if (v16 == 7)
  {
    v32 = strlen(*(v8 + 64));
    v10 = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, &__s, &v66 + 2);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v59 = a2;
    v33 = strlen(__s);
    v34 = Utf8_LengthInUtf8chars(*(v8 + 64), v32);
    v35 = Utf8_LengthInBytes(*(v8 + 88), v34);
    if (v66 >= *a4[5])
    {
      *(*(v8 + 64) + strlen(*(v8 + 64))) = 11704034;
      strcat(*(v8 + 64), __s);
      v48 = 0;
      *(*(v8 + 64) + strlen(*(v8 + 64))) = 12359394;
      do
      {
        *(*(v8 + 72) + strlen(*(v8 + 72))) = 32;
        *(*(v8 + 80) + strlen(*(v8 + 80))) = 32;
        *(*(v8 + 88) + strlen(*(v8 + 88))) = 126;
        ++v48;
      }

      while (v33 + 2 > v48);
    }

    else
    {
      v36 = v35;
      memmove((*(v8 + 64) + v32 + v66 - *a4[5] + v33 + 6), (*(v8 + 64) + v32 - *a4[5] + v66), *a4[5] - v66 + 1);
      v37 = (*(v8 + 72) + v34 - v15);
      memmove(&v37[v33 + 2], v37, v15 + 1);
      v38 = (*(v8 + 80) + v34 - v15);
      memmove(&v38[v33 + 2], v38, v15 + 1);
      v39 = *a4[5];
      v40 = (*(v8 + 88) + v36 - v39 + v66);
      memmove(&v40[v33 + 2], v40, v39 - v66 + 1);
      v41 = *(v8 + 64) + (v32 - *a4[5] + v66);
      *(v41 + 2) = -78;
      *v41 = -26910;
      v42 = v34 - v15;
      *(*(v8 + 72) + v42) = 32;
      *(*(v8 + 80) + v42) = 32;
      *(*(v8 + 88) + v36 - *a4[5] + v66) = 126;
      v43 = v42 + 1;
      if (v33)
      {
        v44 = 0;
        v45 = v36;
        do
        {
          if (__s[v44])
          {
            *(*(v8 + 64) + v32 + v44 + v66 - *a4[5] + 3) = __s[v44];
          }

          *(*(v8 + 72) + v43 + v44) = 32;
          *(*(v8 + 80) + v43 + v44) = 32;
          *(*(v8 + 88) + v45 - *a4[5] + v66 + 1) = 126;
          ++v44;
          ++v45;
        }

        while (v33 != v44);
      }

      v46 = *(v8 + 64) + (v32 + v33 - *a4[5] + v66 + 3);
      *(v46 + 2) = -68;
      *v46 = -26910;
      v47 = v43 + v33;
      *(*(v8 + 72) + v47) = 32;
      *(*(v8 + 80) + v47) = 32;
      *(*(v8 + 88) + v36 + v33 + v66 - *a4[5] + 1) = 126;
    }

    v49 = __s;
    if (a4[8])
    {
      *a4[11] += strlen(__s) + 2;
    }

    *a4[9] += strlen(v49) + 2;
    v16 = v67;
    a2 = v59;
  }

  if (v16 != 6)
  {
LABEL_71:
    ++*a4[10];
    return v10;
  }

  BacktransPOS = (*(*(v8 + 8) + 168))(a1, a2, *a3, 1, 1, a4[13], &v66 + 2);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  if (*(v8 + 104))
  {
    v50 = a4[8];
    if (v50)
    {
      if (*a4[13] > *a4[12])
      {
        v51 = *a4[11];
        v52 = 2 * strlen(v50) - 2;
        *(*(v8 + 96) + strlen(*(v8 + 96))) = 88;
        v53 = strlen(a4[8]);
        strncat(*(v8 + 96), (a4[8] + 1), v53 - 2);
        if (v52 >= v51)
        {
          *(*(v8 + 96) + strlen(*(v8 + 96))) = 89;
          v56 = strlen(a4[8]);
          strncat(*(v8 + 96), (a4[8] + 1), v56 - 2);
          v57 = *a4[11];
          if (2 * strlen(a4[8]) - 2 > v57)
          {
            do
            {
              *(*(v8 + 64) + strlen(*(v8 + 64))) = 126;
              *(*(v8 + 72) + strlen(*(v8 + 72))) = 126;
              *(*(v8 + 80) + strlen(*(v8 + 80))) = 126;
              *(*(v8 + 88) + strlen(*(v8 + 88))) = 126;
              LODWORD(v57) = v57 + 1;
            }

            while (2 * strlen(a4[8]) - 2 > v57);
          }
        }

        else
        {
          v54 = 2 * strlen(a4[8]) - 2;
          if ((v54 & 0xFFFEu) < *a4[11])
          {
            do
            {
              *(*(v8 + 96) + strlen(*(v8 + 96))) = 126;
              ++v54;
            }

            while (*a4[11] > v54);
          }

          *(*(v8 + 96) + strlen(*(v8 + 96))) = 89;
          v55 = strlen(a4[8]);
          strncat(*(v8 + 96), (a4[8] + 1), v55 - 2);
        }

        a4[8] = 0;
        *a4[9] = 0;
      }
    }
  }

  BacktransPOS = (*(*(v8 + 8) + 176))(a1, a2, *a3, 4, a4 + 8, &v66 + 2);
  if ((BacktransPOS & 0x80000000) != 0)
  {
    return BacktransPOS;
  }

  v10 = (*(*(v8 + 8) + 168))(a1, a2, *a3, 2, 1, a4[12], &v66 + 2);
  if ((v10 & 0x80000000) == 0)
  {
    *a4[11] = *a4[9];
    goto LABEL_71;
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
      v9 = 2 * strlen(v7) - 2;
      *&v4[12][strlen(v4[12])] = 88;
      v10 = strlen(*(a4 + 64));
      strncat(v4[12], (*(a4 + 64) + 1), v10 - 2);
      if (v9 >= v8)
      {
        *&v4[12][strlen(v4[12])] = 89;
        v15 = strlen(*(a4 + 64));
        strncat(v4[12], (*(a4 + 64) + 1), v15 - 2);
        v16 = **(a4 + 88);
        if (2 * strlen(*(a4 + 64)) - 2 > v16)
        {
          do
          {
            *&v4[8][strlen(v4[8])] = 126;
            *&v4[9][strlen(v4[9])] = 126;
            *&v4[10][strlen(v4[10])] = 126;
            *&v4[11][strlen(v4[11])] = 126;
            LODWORD(v16) = v16 + 1;
          }

          while (2 * strlen(*(a4 + 64)) - 2 > v16);
        }
      }

      else
      {
        v11 = 2 * strlen(*(a4 + 64)) - 2;
        if ((v11 & 0xFFFEu) < **(a4 + 88))
        {
          do
          {
            *&v4[12][strlen(v4[12])] = 126;
            ++v11;
          }

          while (**(a4 + 88) > v11);
        }

        *&v4[12][strlen(v4[12])] = 89;
        v12 = *(a4 + 64);
        v13 = strlen(v12);
        strncat(v4[12], v12 + 1, v13 - 2);
      }
    }

    else if (**(a4 + 72))
    {
      v14 = 0;
      do
      {
        *&v4[12][strlen(v4[12])] = 32;
        ++v14;
      }

      while (v14 < **(a4 + 72));
    }
  }

  return 0;
}

uint64_t fe_normout_split_words(void *a1, uint64_t a2, uint64_t a3, char *__s, uint64_t a5, unsigned __int16 *a6)
{
  v12 = strlen(__s);
  *a6 = 0;
  if (!v12)
  {
    v40 = 0;
    goto LABEL_93;
  }

  v43 = a3;
  v44 = a2;
  v42 = a6;
  v45 = a5;
  v46 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = &__s[v14];
    v16 = *v15;
    if (v16 != 32 && v16 != 95 && (v16 != 226 || v15[1] != 150 || v15[2] != 172))
    {
      goto LABEL_87;
    }

    v17 = v14;
    if (a5 && v46 >= 0x80u)
    {
      v18 = heap_Realloc(*(*a1 + 8), a1[14], (v46 & 0xFF80u) + 128);
      if (!v18)
      {
        log_OutPublic(*(*a1 + 32), "FE_NORMOUT", 43000, 0);
        return 2340429834;
      }

      a1[14] = v18;
      bzero((v18 + v46), (v46 & 0xFF80) + 128 - v46);
      v16 = *v15;
      a5 = v45;
    }

    else if (!a5)
    {
      goto LABEL_73;
    }

    if (v16 != 226)
    {
      goto LABEL_77;
    }

    if (v15[1] != 150 || v15[2] != 172)
    {
      goto LABEL_74;
    }

    v55 = 0;
    v54 = 0;
    v53 = 0;
    v52 = -1;
    v51 = -1;
    v50 = 0;
    v49 = 11;
    v48 = 0;
    v47 = 0;
    if (((*(a1[1] + 104))(v44, v43, 1, 0, &v55) & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    if (((*(a1[1] + 152))(v44, v43, 2, v55, &v50) & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    if (!v50)
    {
      goto LABEL_68;
    }

    if (((*(a1[1] + 104))(v44, v43, 2, v55, &v54 + 2) & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    v19 = HIWORD(v54);
    if (!HIWORD(v54))
    {
      goto LABEL_68;
    }

    v20 = 0;
    do
    {
      if (v52 != -1 && v51 != 0xFFFF)
      {
        goto LABEL_42;
      }

      if (((*(a1[1] + 168))(v44, v43, v19, 0, 1, &v49, &v54) & 0x80000000) != 0)
      {
        goto LABEL_68;
      }

      if (v49 <= 0xA && ((1 << v49) & 0x610) != 0)
      {
        if (v20 == v13)
        {
          v23 = (*(a1[1] + 168))(v44, v43, HIWORD(v54), 1, 1, &v52, &v54);
        }

        else
        {
          if (v13 + 1 != v20)
          {
LABEL_37:
            ++v20;
            goto LABEL_38;
          }

          v23 = (*(a1[1] + 168))(v44, v43, HIWORD(v54), 2, 1, &v51, &v54);
        }

        if (v23 < 0)
        {
          goto LABEL_68;
        }

        goto LABEL_37;
      }

LABEL_38:
      if (((*(a1[1] + 120))(v44, v43, HIWORD(v54), &v54 + 2) & 0x80000000) != 0)
      {
        goto LABEL_68;
      }

      v19 = HIWORD(v54);
    }

    while (HIWORD(v54));
    if (v52 != -1 && v51 != 0xFFFF)
    {
LABEL_42:
      if (((*(a1[1] + 176))(v44, v43, v55, 1, &v48, &v53) & 0x80000000) == 0)
      {
        v24 = v53;
        if (v53 < 2u)
        {
          v28 = 1;
        }

        else
        {
          v25 = (v48 + 44);
          v26 = 1;
          while (1)
          {
            v27 = *v25;
            v25 += 8;
            if (v27 - *(v48 + 12) > v52)
            {
              break;
            }

            if (v53 == ++v26)
            {
              goto LABEL_68;
            }
          }

          v28 = v26;
        }

        v29 = v47 || v28 >= v53;
        if (!v29)
        {
          v30 = v28 + 1;
          v31 = 32 * v28;
          while (1)
          {
            v32 = (v48 + v31);
            if (*(v48 + v31 + 12) - *(v48 + 12) >= v51)
            {
              break;
            }

            v33 = *v32;
            v34 = *(v32 + 3);
            v57 = 0;
            v56 = 0;
            if (v33 <= 0x39)
            {
              if (v33 == 51)
              {
                if (!hlp_NLUStrFind(v34, "PUNC", &v57, &v56))
                {
                  goto LABEL_67;
                }

                v35 = v47 == 0;
                v24 = v53;
                goto LABEL_63;
              }

              if (((1 << v33) & 0x3C0010124001140) != 0)
              {
                goto LABEL_67;
              }
            }

            if (v33 == 17)
            {
LABEL_67:
              v47 = 1;
              break;
            }

            v35 = 1;
LABEL_63:
            if (v35)
            {
              v31 += 32;
              v29 = v30++ >= v24;
              if (!v29)
              {
                continue;
              }
            }

            break;
          }
        }
      }
    }

LABEL_68:
    if (!v47)
    {
      fe_normout_check_if_word_in_prompt(a1, v44, v43, v13, &v47);
      if (!v47)
      {
        fe_normout_check_if_word_in_prompt(a1, v44, v43, (v13 + 1), &v47);
        if (!v47)
        {
          *(a1[14] + v46++) = v13 + 1;
        }
      }
    }

    a5 = v45;
    v16 = *v15;
LABEL_73:
    if (v16 == 226)
    {
LABEL_74:
      if (v15[1] == 150 && v15[2] == 172)
      {
        *v15 = 0;
        v14 += 2;
        v17 = v14;
      }
    }

LABEL_77:
    __s[v17] = 0;
    for (i = v14 + 1; v12 > i; ++i)
    {
      v37 = i;
      v38 = &__s[i];
      v39 = *v38;
      if (v39 != 32 && v39 != 95)
      {
        if (v39 != 226 || v38[1] != 150 || v38[2] != 172)
        {
          break;
        }

        *v38 = 0;
        i = v14 + 3;
        v37 = (v14 + 3);
      }

      v14 = i;
      __s[v37] = 0;
    }

    ++v13;
LABEL_87:
    ++v14;
  }

  while (v14 < v12);
  if (__s[v14 - 1])
  {
    v40 = v13 + 1;
  }

  else
  {
    v40 = v13;
  }

  a6 = v42;
LABEL_93:
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
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v8 = *a4;
  result = (*(*(*a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v16, &v15 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(v8[1] + 168))(a1, a2, *a3, 1, 1, &v14, &v15 + 2);
    if ((result & 0x80000000) == 0 && v14 > **(a4 + 168) && v16 == 7)
    {
      v11 = strstr((*(a4 + 152) + 3), "▼");
      *(a4 + 160) = v11;
      if (v11)
      {
        *v11 = 0;
        v12 = *(a4 + 152);
        v13 = strlen(v12);
        LODWORD(result) = (*(v8[1] + 160))(a1, a2, *a3, 4, v13, v12 + 3, &v15);
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
                  if (v22 != 6 || (memset(__n, 0, sizeof(__n)), result = (*(*(v30 + 8) + 176))(a2, a3, *(v18 - 7), 4, &__n[1], __n), !__n[0]) || (result = strncmp(*&__n[1], "_PR_", __n[0]), (v10 & 0x80000000) == 0) || result)
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
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v8 = *a4;
  v9 = (*(*(*a4 + 8) + 168))(a1, a2, *a3, 0, 1, &v34, &v33 + 2);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = *a4[2];
    if (v10)
    {
      v11 = 0;
      v12 = "-*";
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

          v9 = (*(v8[1] + 160))(a1, a2, *a3, 2, 1, a4[18] + 14, &v33);
          if ((v9 & 0x80000000) != 0)
          {
            return v9;
          }

          if (v34 <= 0xA && ((1 << v34) & 0x610) != 0)
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
                  v14 = (*(v8[1] + 176))(a1, a2, *a3, 3, &__s, &v33 + 2);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v14 = (*(v8[1] + 176))(a1, a2, *a4[15], 3, &__src, &v33 + 2);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v18 = v12;
                  v19 = strlen(__s);
                  v20 = strlen(__src);
                  v21 = heap_Realloc(*(*v8 + 8), a4[23], (v19 + v20 + 2));
                  if (!v21)
                  {
                    log_OutPublic(*(*v8 + 32), "FE_NORMOUT", 43000, 0);
                    return 2340429834;
                  }

                  a4[23] = v21;
                  strcpy(v21, __src);
                  v22 = strlen(a4[23]);
                  if (*(v8 + 27))
                  {
                    v23 = 61;
                  }

                  else
                  {
                    v23 = 45;
                  }

                  *(a4[23] + v22) = v23;
                  strcat(a4[23], __s);
                  v24 = strlen(a4[23]);
                  v14 = (*(v8[1] + 160))(a1, a2, *a4[15], 3, (v24 + 1), a4[23], &v33);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v14 = (*(v8[1] + 160))(a1, a2, *a4[15], 2, 1, a4[18] + 14, &v33);
                  if ((v14 & 0x80000000) != 0)
                  {
                    return v14;
                  }

                  v12 = v18;
                  if (((*(v8[1] + 184))(a1, a2, *a4[18], 8, &v31) & 0x80000000) == 0 && v31 == 1)
                  {
                    v14 = (*(v8[1] + 168))(a1, a2, *a4[18], 8, 1, &v31 + 2, &v33 + 2);
                    if ((v14 & 0x80000000) != 0)
                    {
                      return v14;
                    }

                    v14 = (*(v8[1] + 160))(a1, a2, *a4[15], 8, 1, &v31 + 2, &v33);
                    if ((v14 & 0x80000000) != 0)
                    {
                      return v14;
                    }
                  }

                  if (((*(v8[1] + 184))(a1, a2, *a4[18], 14, &v31) & 0x80000000) == 0 && v31 == 1)
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

            v9 = (*(v8[1] + 176))(a1, a2, *a3, 3, &__s, &v33 + 2);
            if ((v9 & 0x80000000) != 0)
            {
              return v9;
            }

            if (*__s && strstr(__s, v12))
            {
              v14 = (*(v8[1] + 168))(a1, a2, *a3, 1, 1, &v32 + 2, &v33 + 2);
              if ((v14 & 0x80000000) != 0)
              {
                return v14;
              }

              v9 = (*(v8[1] + 168))(a1, a2, *a3, 2, 1, &v32, &v33 + 2);
              if ((v9 & 0x80000000) != 0)
              {
                return v9;
              }

              for (i = (a4[22] + HIWORD(v32)); ; i = v26 + 1)
              {
                v26 = strchr(i, 45);
                if (!v26 || v26 >= a4[22] + v32)
                {
                  break;
                }

                *v26 = 95;
              }
            }

            v27 = a4[15];
            ++*a4[14];
            *v27 = *a3;
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
  v41 = 0;
  __s = 0;
  memset(v39, 0, sizeof(v39));
  *&__n[1] = 0;
  __n[0] = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v8 = (*(a3[1] + 176))(a1, a2, **(a4 + 144), 14, &v41, &v32);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (!hlp_NLUStrFind(v41, "POS", &v39[1], v39))
  {
    if (!hlp_NLUStrFind(v41, "PUNC", &v33, &v32 + 1))
    {
      return v8;
    }

    v15 = (*(a3[1] + 184))(a1, a2, **(a4 + 120), 14, &v31);
    v16 = a3[1];
    v17 = **(a4 + 120);
    if (v15 < 0 || v31 != 1)
    {
      v22 = *(v16 + 160);
      v23 = strlen(v41);
      return v22(a1, a2, v17, 14, (v23 + 1), v41, &v31 + 2);
    }

    (*(v16 + 176))(a1, a2, v17, 14, &__s, &v32);
    v18 = strlen(__s);
    v19 = strlen(v41);
    v20 = heap_Calloc(*(*a3 + 8), 1, (v18 + v19 + 2));
    if (v20)
    {
      v13 = v20;
      strcpy(v20, __s);
      hlp_NLUStrRemoveKeyVal(__s, "BND");
      hlp_NLUStrJoin(v13, v41);
      v21 = strlen(v13);
      v8 = (*(a3[1] + 160))(a1, a2, **(a4 + 120), 14, (v21 + 1), v13, &v31 + 2);
LABEL_32:
      heap_Free(*(*a3 + 8), v13);
      return v8;
    }

    goto LABEL_18;
  }

  hlp_NLUStrFind(v41, "BNDSHAPE", &v37, &v36);
  hlp_NLUStrFind(v41, "BND", &v35, &v34);
  hlp_NLUStrFind(v41, "PUNC", &v33, &v32 + 1);
  if (((*(a3[1] + 184))(a1, a2, **(a4 + 120), 14, &v31) & 0x80000000) != 0)
  {
    return v8;
  }

  if (v31 != 1)
  {
    return v8;
  }

  v8 = (*(a3[1] + 176))(a1, a2, **(a4 + 120), 14, &__s, &v32);
  if (!hlp_NLUStrFind(__s, "POS", &__n[1], __n))
  {
    return v8;
  }

  v9 = heap_Calloc(*(*a3 + 8), 1, __n[0] + v39[0] + 2);
  if (!v9)
  {
LABEL_18:
    v8 = 2340429834;
    log_OutPublic(*(*a3 + 32), "FE_NORMOUT", 43000, 0);
    return v8;
  }

  v10 = v9;
  v11 = (strlen(__s) + v39[0] + v36 + v34 + HIWORD(v32) + 24);
  v12 = heap_Calloc(*(*a3 + 8), 1, v11);
  v13 = v12;
  if (v12)
  {
    strcpy(v12, __s);
    strncpy(v10, *&__n[1], __n[0]);
    if (!*(a3 + 27))
    {
      *&v10[strlen(v10)] = 45;
    }

    strncat(v10, *&v39[1], v39[0]);
    hlp_NLUStrSet(v13, "POS", v10);
    if (v37)
    {
      v14 = v37[v36];
      v37[v36] = 0;
      hlp_NLUStrSet(v13, "BNDSHAPE", v37);
      v37[v36] = v14;
    }

    else
    {
      hlp_NLUStrRemoveKeyVal(v13, "BNDSHAPE");
    }

    if (v35)
    {
      v24 = v35[v36];
      v35[v36] = 0;
      hlp_NLUStrSet(v13, "BND", v35);
      v35[v36] = v24;
    }

    else
    {
      hlp_NLUStrRemoveKeyVal(v13, "BND");
    }

    if (v33)
    {
      v25 = v33[HIWORD(v32)];
      v33[HIWORD(v32)] = 0;
      hlp_NLUStrSet(v13, "PUNC", v33);
      v33[HIWORD(v32)] = v25;
    }

    else
    {
      hlp_NLUStrRemoveKeyVal(v13, "PUNC");
    }

    hlp_NLUStrRemoveKeyVal(v41, "POS");
    hlp_NLUStrRemoveKeyVal(v41, "PHR");
    hlp_NLUStrRemoveKeyVal(v41, "PUNC");
    hlp_NLUStrRemoveKeyVal(v41, "BNDSHAPE");
    hlp_NLUStrRemoveKeyVal(v41, "BND");
    if (!*v41)
    {
      goto LABEL_29;
    }

    v26 = strlen(v41);
    v27 = heap_Realloc(*(*a3 + 8), v13, v26 + v11);
    if (v27)
    {
      v28 = v27;
      hlp_NLUStrJoin(v27, v41);
      v13 = v28;
LABEL_29:
      v29 = strlen(v13);
      v8 = (*(a3[1] + 160))(a1, a2, **(a4 + 120), 14, (v29 + 1), v13, &v31 + 2);
      goto LABEL_31;
    }
  }

  v8 = 2340429834;
  log_OutPublic(*(*a3 + 32), "FE_NORMOUT", 43000, 0);
LABEL_31:
  heap_Free(*(*a3 + 8), v10);
  if (v13)
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