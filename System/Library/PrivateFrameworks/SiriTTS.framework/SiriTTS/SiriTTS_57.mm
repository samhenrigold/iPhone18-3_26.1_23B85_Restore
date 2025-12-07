uint64_t checkPOSIsLegal(char *__s1, unsigned int a2, void *a3, uint64_t a4)
{
  v4 = *a3 + 160 * a2;
  v5 = *(v4 + 72);
  if (!*(v4 + 72))
  {
    return 0;
  }

  v7 = *(a4 + 296);
  v8 = *(a4 + 304);
  v9 = *(v4 + 64);
  while (1)
  {
    v10 = *v9;
    v9 += 6;
    if (!strcmp(__s1, (v7 + *(v8 + 4 * v10))))
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t com_useStatHmogrphMosyntOff(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 *a4, const char *a5)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  result = (*(a1 + 96))(a2, a3, "fecfg", "stathmogrph_fepos_mosyntoff", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    if (*&__c[1])
    {
      a5 = **&__c[3];
      v11 = strchr(**&__c[3], __c[0]);
      if (v11)
      {
        *v11 = 0;
        a5 = **&__c[3];
      }
    }

    v12 = !strcmp(a5, "yes") || strcmp(a5, "YES") == 0;
    *a4 = v12;
    *&__c[1] = -1;
    v13 = (*(a1 + 96))(a2, a3, "fecfg", "statwordhmogrph_step", &__c[3], &__c[1], __c);
    result = 0;
    if ((v13 & 0x80000000) == 0 && *&__c[1] == 1)
    {
      result = 0;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t checkUsePKUPOS(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  result = (*(a1 + 96))(a2, a3, "fecfg", "mosynt_usepkupos", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    v6 = *&__c[1];
    if (*&__c[1])
    {
      v7 = **&__c[3];
      v8 = strchr(**&__c[3], __c[0]);
      if (v8)
      {
        *v8 = 0;
        v7 = **&__c[3];
      }

      v6 = !strcmp(v7, "yes") || strcmp(v7, "YES") == 0;
    }

    result = 0;
    *a4 = v6;
  }

  return result;
}

uint64_t checkReplaceAsterisk(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  result = (*(a1 + 96))(a2, a3, "fecfg", "statpos_replaceasterisk", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    v6 = *&__c[1];
    if (*&__c[1])
    {
      v7 = **&__c[3];
      v8 = strchr(**&__c[3], __c[0]);
      if (v8)
      {
        *v8 = 0;
        v7 = **&__c[3];
      }

      v6 = *v7 == 49 && v7[1] == 0;
    }

    result = 0;
    *a4 = v6;
  }

  return result;
}

uint64_t fe_pos_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  Str = 2313166855;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  __s1 = "";
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v31);
    if ((inited & 0x80000000) == 0)
    {
      v12 = heap_Calloc(*(v31 + 8), 1, 2240);
      v13 = v31;
      if (v12)
      {
        v14 = v12;
        v15 = heap_Calloc(*(v31 + 8), 1, 1040);
        *(v14 + 48) = v15;
        if (v15)
        {
          *v15 = a3;
          v15[1] = a4;
          v16 = v31;
          *v14 = v31;
          *(v14 + 8) = a3;
          *(v14 + 32) = a1;
          *(v14 + 40) = a2;
          *(v14 + 16) = a4;
          *(v14 + 24) = a1;
          Object = objc_GetObject(*(v16 + 48), "LINGDB", &v30);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          *(v14 + 56) = *(v30 + 8);
          Object = objc_GetObject(*(v31 + 48), "FE_DEPES", &v29);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          v18 = v29;
          *(v14 + 80) = *(v29 + 8);
          *(v14 + 64) = *(v18 + 16);
          Object = objc_GetObject(*(v31 + 48), "FE_DCTLKP", &v28);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          v19 = v28;
          v20 = *(v28 + 8);
          *(v14 + 128) = v20;
          *(v14 + 112) = *(v19 + 16);
          *(v14 + 180) = 0;
          Object = statpos_checkIfActive(*(v14 + 112), *(v14 + 120), v20, a3, a4, v31, (v14 + 200), (v14 + 176), (v14 + 192), (v14 + 2232), (v14 + 2236));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          Object = com_useStatHmogrphMosyntOff(*(v14 + 128), *(v14 + 112), *(v14 + 120), (v14 + 188), "no");
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          v21 = *(v14 + 176);
          if (*(v14 + 1616) == 1)
          {
            if (!v21)
            {
              *(v14 + 176) = 0x100000001;
            }
          }

          else if (!v21)
          {
LABEL_19:
            Object = statphr_readIGTree(a3, a4, *(v14 + 32), *(v14 + 40), v31, (v14 + 1728), (v14 + 1720));
            if ((Object & 0x80000000) == 0)
            {
              v23 = (v14 + 1736);
              *(v14 + 1736) = 0;
              Object = statcomp_useStatCOMP(*(v14 + 112), *(v14 + 120), *(v14 + 128), (v14 + 1736));
              if ((Object & 0x80000000) == 0)
              {
                if (*v23 != 1 || (*(v14 + 1744) = v31, *(v14 + 2128) = *(v14 + 112), *(v14 + 2144) = *(v14 + 128), *(v14 + 1952) = 0, *(v14 + 1960) = 0, Object = nuance_pcre_ObjOpen(a3, a4, v14 + 1952), (Object & 0x80000000) == 0) && (Object = nuance_pcre_Init(*(v14 + 1952), *(v14 + 1960), 0x1Eu, 50), (Object & 0x80000000) == 0) && (Object = statcomp_rules_load(a3, a4, v31, (v14 + 1752), *(v14 + 112), *(v14 + 120), *(v14 + 128)), (Object & 0x80000000) == 0))
                {
                  Object = checkUsePKUPOS(*(v14 + 128), *(v14 + 112), *(v14 + 120), (v14 + 184));
                  if ((Object & 0x80000000) == 0)
                  {
                    *(v14 + 136) = 0;
                    v24 = (v14 + 136);
                    *(v14 + 144) = 0;
                    Str = paramc_ParamGetStr(*(v31 + 40), "fecfg", &__s1);
                    if ((Str & 0x80000000) != 0)
                    {
                      goto LABEL_41;
                    }

                    if (!strcmp(__s1, "cfg4"))
                    {
                      *(v14 + 148) = 1;
                    }

                    if (*v23 || *(v14 + 184))
                    {
                      goto LABEL_31;
                    }

                    Object = wgram_CheckIfExists(a3, a4, *(v14 + 32), *(v14 + 40), (v14 + 144));
                    if ((Object & 0x80000000) == 0)
                    {
                      Str = sgram_CheckIfExists(a3, a4, (v14 + 140));
                      if ((Str & 0x80000000) != 0)
                      {
                        goto LABEL_41;
                      }

                      if (!*(v14 + 140))
                      {
                        *v24 = 0;
LABEL_34:
                        *(v14 + 88) = 0;
                        *(v14 + 96) = 0;
                        v25 = 62341;
                        *(v14 + 104) = 0;
LABEL_42:
                        *a5 = v14;
                        *(a5 + 8) = v25;
                        return Str;
                      }

                      Str = com_mosynt_UseMosynt(*(v14 + 112), *(v14 + 120), *(v14 + 128), (v14 + 136));
                      if ((Str & 0x80000000) != 0)
                      {
LABEL_41:
                        fe_pos_ObjClose(*a5, *(a5 + 8));
                        v14 = 0;
                        v25 = 0;
                        goto LABEL_42;
                      }

LABEL_31:
                      if (!*v24)
                      {
                        goto LABEL_34;
                      }

                      if (*(v14 + 188))
                      {
                        goto LABEL_34;
                      }

                      Str = fe_pos_LoadMosyntData(a3, a4, v14);
                      if ((Str & 0x80000000) == 0)
                      {
                        goto LABEL_34;
                      }

                      goto LABEL_41;
                    }
                  }
                }
              }
            }

LABEL_40:
            Str = Object;
            goto LABEL_41;
          }

          v22 = *(v14 + 192);
          *(v14 + 1636) = *(v14 + 188);
          Object = statpos_load_resources(*(v14 + 64), *(v14 + 72), *(v14 + 80), *(v14 + 8), *(v14 + 16), *(v14 + 32), *(v14 + 40), v31, *(v14 + 24), *(v14 + 112), *(v14 + 128), v14 + 200, *(v14 + 180), (v14 + 176), v22);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          Object = checkReplaceAsterisk(*(v14 + 128), *(v14 + 112), *(v14 + 120), (v14 + 1640));
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_40;
          }

          goto LABEL_19;
        }

        v13 = v31;
      }

      log_OutPublic(*(v13 + 32), "FE_POS", 35000, 0);
      Str = 2313166858;
      goto LABEL_41;
    }

    return inited;
  }

  return Str;
}

uint64_t fe_pos_LoadMosyntData(_WORD *a1, uint64_t a2, uint64_t a3)
{
  __s1 = 0;
  result = com_mosynt_GetCfgParamVal(*(a3 + 112), *(a3 + 120), *(a3 + 128), "mosynt_enablegraphsymcache", "yes", &__s1);
  if ((result & 0x80000000) == 0)
  {
    v7 = strcmp(__s1, "yes") == 0;
    result = kbsymtab_LoadData(a1, a2, *(a3 + 32), *(a3 + 40), (a3 + 152), v7);
    if ((result & 0x80000000) == 0)
    {
      result = fst_LoadData(a1, a2, (a3 + 168));
      if ((result & 0x80000000) == 0)
      {
        return sgram_LoadData(a1, a2, (a3 + 160));
      }
    }
  }

  return result;
}

uint64_t fe_pos_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62341, 2240);
  if ((result & 0x80000000) != 0)
  {
    return 2313166856;
  }

  if (a1)
  {
    if (*(a1 + 176))
    {
      statpos_unload_resources(*(a1 + 32), *(a1 + 40), *a1, a1 + 200, *(a1 + 180), *(a1 + 192));
    }

    if (*(a1 + 1736))
    {
      statcomp_rules_unload((a1 + 1752));
      NullHandle = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(*(a1 + 1952), *(a1 + 1960), NullHandle, v5))
      {
        nuance_pcre_DeInit(*(a1 + 1952), *(a1 + 1960));
        nuance_pcre_ObjClose(*(a1 + 1952), *(a1 + 1960));
      }
    }

    if (*(a1 + 1720))
    {
      statphr_freeIGTree(*a1);
    }

    fe_pos_UnloadMosyntData(a1);
    if (*(a1 + 56))
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (*(a1 + 80))
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (*(a1 + 128))
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      heap_Free(*(*a1 + 8), v6);
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_pos_UnloadMosyntData(uint64_t a1)
{
  if (*(a1 + 152))
  {
    v2 = kbsymtab_UnloadData(*(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (a1 + 152));
    *(a1 + 152) = 0;
    v3 = v2 & (v2 >> 31);
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 160))
  {
    v4 = sgram_UnloadData(*(a1 + 8), *(a1 + 16), (a1 + 160));
    *(a1 + 160) = 0;
    if (v4 >= 0 || v3 <= -1)
    {
      v3 = v3;
    }

    else
    {
      v3 = v4;
    }
  }

  if (*(a1 + 168))
  {
    v6 = fst_UnloadData(*(a1 + 8), *(a1 + 16), (a1 + 168));
    *(a1 + 168) = 0;
    if (v6 >= 0 || v3 <= -1)
    {
      return v3;
    }

    else
    {
      return v6;
    }
  }

  return v3;
}

uint64_t fe_pos_ObjReopen(uint64_t a1, int a2)
{
  v3 = 2313166854;
  v14 = "";
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    return 2313166856;
  }

  if (a1)
  {
    if (*(a1 + 176) == 1)
    {
      IGTree = statpos_unload_resources(*(a1 + 32), *(a1 + 40), *a1, a1 + 200, *(a1 + 180), *(a1 + 192));
      if ((IGTree & 0x80000000) != 0)
      {
        return IGTree;
      }
    }

    *(a1 + 180) = 0;
    IGTree = statpos_checkIfActive(*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 8), *(a1 + 16), *a1, (a1 + 200), (a1 + 176), (a1 + 192), (a1 + 2232), (a1 + 2236));
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    IGTree = com_useStatHmogrphMosyntOff(*(a1 + 128), *(a1 + 112), *(a1 + 120), (a1 + 188), "no");
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    v5 = *(a1 + 176);
    if (*(a1 + 1616) != 1 || v5)
    {
      if (v5 != 1)
      {
LABEL_15:
        if (*(a1 + 1736) == 1)
        {
          IGTree = statcomp_rules_unload((a1 + 1752));
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          NullHandle = safeh_GetNullHandle();
          if (!safeh_HandlesEqual(*(a1 + 1952), *(a1 + 1960), NullHandle, v9))
          {
            nuance_pcre_DeInit(*(a1 + 1952), *(a1 + 1960));
            nuance_pcre_ObjClose(*(a1 + 1952), *(a1 + 1960));
          }
        }

        v10 = (a1 + 1736);
        *(a1 + 1736) = 0;
        IGTree = statcomp_useStatCOMP(*(a1 + 112), *(a1 + 120), *(a1 + 128), (a1 + 1736));
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        if (*v10 == 1)
        {
          v11 = *(a1 + 8);
          *(a1 + 1744) = *a1;
          *(a1 + 2128) = *(a1 + 112);
          *(a1 + 2144) = *(a1 + 128);
          *(a1 + 1952) = 0;
          *(a1 + 1960) = 0;
          IGTree = nuance_pcre_ObjOpen(v11, *(a1 + 16), a1 + 1952);
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          IGTree = nuance_pcre_Init(*(a1 + 1952), *(a1 + 1960), 0x1Eu, 50);
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          IGTree = statcomp_rules_load(*(a1 + 8), *(a1 + 16), *a1, (a1 + 1752), *(a1 + 112), *(a1 + 120), *(a1 + 128));
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }
        }

        if (*(a1 + 1720) == 1)
        {
          statphr_freeIGTree(*a1);
        }

        *(a1 + 1720) = 0;
        IGTree = statphr_readIGTree(*(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), *a1, (a1 + 1728), (a1 + 1720));
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        IGTree = fe_pos_UnloadMosyntData(a1);
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        *(a1 + 136) = 0;
        v12 = (a1 + 136);
        *(a1 + 144) = 0;
        IGTree = paramc_ParamGetStr(*(*a1 + 40), "fecfg", &v14);
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        if (!strcmp(v14, "cfg4"))
        {
          *(a1 + 148) = 1;
        }

        IGTree = checkUsePKUPOS(*(a1 + 128), *(a1 + 112), *(a1 + 120), (a1 + 184));
        if ((IGTree & 0x80000000) != 0)
        {
          return IGTree;
        }

        if (*v10 || *(a1 + 184))
        {
          v3 = 0;
        }

        else
        {
          IGTree = wgram_CheckIfExists(*(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (a1 + 144));
          if ((IGTree & 0x80000000) != 0)
          {
            return IGTree;
          }

          v3 = sgram_CheckIfExists(*(a1 + 8), *(a1 + 16), (a1 + 140));
          if ((v3 & 0x80000000) != 0)
          {
            return v3;
          }

          if (!*(a1 + 140))
          {
            *v12 = 0;
            return v3;
          }

          v3 = com_mosynt_UseMosynt(*(a1 + 112), *(a1 + 120), *(a1 + 128), (a1 + 136));
          if ((v3 & 0x80000000) != 0)
          {
            return v3;
          }
        }

        if (*v12)
        {
          return fe_pos_LoadMosyntData(*(a1 + 8), *(a1 + 16), a1);
        }

        return v3;
      }

      v6 = *(a1 + 180);
    }

    else
    {
      *(a1 + 176) = 0x100000001;
      v6 = 1;
    }

    v7 = *(a1 + 192);
    *(a1 + 1636) = *(a1 + 188);
    IGTree = statpos_load_resources(*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), *a1, *(a1 + 24), *(a1 + 112), *(a1 + 128), a1 + 200, v6, (a1 + 176), v7);
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    IGTree = checkReplaceAsterisk(*(a1 + 128), *(a1 + 112), *(a1 + 120), (a1 + 1640));
    if ((IGTree & 0x80000000) != 0)
    {
      return IGTree;
    }

    goto LABEL_15;
  }

  return v3;
}

uint64_t fe_pos_ProcessStart(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62341, 2240);
  if ((result & 0x80000000) != 0)
  {
    return 2313166856;
  }

  if (*(a1 + 176))
  {
    result = statpos_setParams(*a1, a1 + 208);
  }

  if (*(a1 + 1736))
  {
    v4 = *a1;

    return statcomp_setParams(v4, a1 + 1752);
  }

  return result;
}

uint64_t fe_Process_UserCOMPMarkup(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  result = safeh_HandleCheck(a1, a2, 62341, 2240);
  if ((result & 0x80000000) != 0)
  {
    return 2313166856;
  }

  *a5 = 1;
  if (*(a1 + 1764) == 1)
  {
    v10 = *(a1 + 56);

    return statcomp_processUserMarkup(v10, a3, a4, a1 + 1744);
  }

  return result;
}

uint64_t fe_pos_Process_StatCOMP(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v11 = 0;
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    return 2313166856;
  }

  *a5 = 1;
  SentenceData = statcomp_getSentenceData(*(a1 + 56), a3, a4, (a1 + 1744));
  if ((SentenceData & 0x80000000) == 0)
  {
    if (!*(a1 + 2184) || (v11 = 0, SentenceData = statcomp_processCompounds((a1 + 1744), &v11), (SentenceData & 0x80000000) == 0) && (v11 != 1 || (SentenceData = statcomp_saveCompoundsToLingdb(*(a1 + 56), a3, a4, a1 + 1744), (SentenceData & 0x80000000) == 0)))
    {
      statcomp_freeSentenceData(a1 + 1744);
    }
  }

  return SentenceData;
}

uint64_t fe_pos_Process_Mosynt(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v24 = 0;
  v9 = 2313166858;
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    return 2313166856;
  }

  v34 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  memset(v22, 0, sizeof(v22));
  *a5 = 1;
  v10 = heap_Alloc(*(*a1 + 8), 5000);
  if (v10)
  {
    v11 = v10;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v30 = 0;
    v29 = 0;
    v25 = 0;
    v23 = 0;
    v12 = heap_Alloc(*(*a1 + 8), 20000);
    if (v12)
    {
      v9 = (*(a1[7] + 104))(a3, a4, 1, 0, &v33 + 2);
      if ((v9 & 0x80000000) == 0 && ((*(a1[7] + 184))(a3, a4, HIWORD(v33), 0, &v24) & 0x80000000) == 0 && v24 == 1)
      {
        v9 = (*(a1[7] + 176))(a3, a4, HIWORD(v33), 0, &v34, &v32);
        if ((v9 & 0x80000000) == 0 && v32 >= 2u)
        {
          started = mosynt_StartSentenceAnalysis(a1[6], a1[14], a1[15], a1[16], a1[19], a1[20], v22);
          if ((started & 0x80000000) == 0)
          {
            started = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v33), &v33);
            if ((started & 0x80000000) == 0)
            {
              while (v33)
              {
                started = (*(a1[7] + 168))(a3, a4);
                if ((started & 0x80000000) != 0)
                {
                  goto LABEL_51;
                }

                if (v29 <= 0xA && ((1 << v29) & 0x610) != 0)
                {
                  started = (*(a1[7] + 168))(a3, a4, v33, 1, 1, &v31, &v32);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 168))(a3, a4, v33, 2, 1, &v30, &v32);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 176))(a3, a4, v33, 3, &v26, &v32);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 176))(a3, a4, v33, 5, &v28, &v32);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 176))(a3, a4, v33, 6, &v27, &v32);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  started = (*(a1[7] + 168))(a3, a4, v33, 7, 1, &v25, &v32);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }

                  mosynt_InsertTerminals(a1[6], v22, v31, (v30 + 1), v28, v25, v33, v34, v26);
                  if ((started & 0x80000000) != 0)
                  {
                    goto LABEL_51;
                  }
                }

                v9 = (*(a1[7] + 120))(a3, a4, v33, &v33);
                if ((v9 & 0x80000000) != 0)
                {
                  goto LABEL_29;
                }
              }

              mosynt_ParseSentence(a1[6], v22);
              if ((started & 0x80000000) == 0)
              {
                started = (*(a1[7] + 104))(a3, a4, 1, 0, &v33 + 2);
                if ((started & 0x80000000) == 0)
                {
                  started = (*(a1[7] + 104))(a3, a4, 2, HIWORD(v33), &v33);
                  if ((started & 0x80000000) == 0)
                  {
                    v16 = v33;
                    if (v33)
                    {
                      while (1)
                      {
                        started = (*(a1[7] + 120))(a3, a4, v16, &v32 + 2);
                        if ((started & 0x80000000) != 0)
                        {
                          break;
                        }

                        started = (*(a1[7] + 168))(a3, a4, v33, 0, 1, &v29, &v32);
                        if ((started & 0x80000000) != 0)
                        {
                          break;
                        }

                        if (v29 <= 0xA && ((1 << v29) & 0x610) != 0)
                        {
                          started = mosynt_GetTerminalInfoById(a1[6], v22, v33, &v23, v11, 5000);
                          if ((started & 0x80000000) != 0)
                          {
                            break;
                          }

                          v18 = a1[7];
                          if (v23)
                          {
                            v19 = *(v18 + 160);
                            v20 = strlen(v11);
                            v19(a3, a4, v33, 5, (v20 + 1), v11, &v31 + 2);
                            started = (*(a1[7] + 176))(a3, a4, v33, 3, &v26, &v32);
                            if ((started & 0x80000000) != 0)
                            {
                              break;
                            }

                            log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "(sgram) keep lingdb record %d : POS=%s PHON=%s", v33, v11, v26);
                          }

                          else
                          {
                            started = (*(v18 + 192))(a3, a4, v33);
                            if ((started & 0x80000000) != 0)
                            {
                              break;
                            }
                          }
                        }

                        v16 = HIWORD(v32);
                        LOWORD(v33) = HIWORD(v32);
                        if (!HIWORD(v32))
                        {
                          goto LABEL_48;
                        }
                      }
                    }

                    else
                    {
LABEL_48:
                      started = mosynt_SyntTreeToString(a1[6], v22, v12, 20000);
                      if ((started & 0x80000000) == 0)
                      {
                        v21 = strlen(v12);
                        started = (*(a1[7] + 160))(a3, a4, HIWORD(v33), 2, (v21 + 1), v12, &v31 + 2);
                        if ((started & 0x80000000) == 0)
                        {
                          started = mosynt_FinishSentenceAnalysis(a1[6], v22);
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_51:
          v9 = started;
        }
      }
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0);
    }

LABEL_29:
    heap_Free(*(*a1 + 8), v11);
    if (v12)
    {
      heap_Free(*(*a1 + 8), v12);
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0);
  }

  return v9;
}

uint64_t fe_pos_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v154 = *MEMORY[0x1E69E9840];
  v139 = 0;
  if ((safeh_HandleCheck(a1, a2, 62341, 2240) & 0x80000000) != 0)
  {
    return 2313166856;
  }

  *a5 = 1;
  if (*(a1 + 176))
  {
    v10 = statpos_process(*(a1 + 64), *(a1 + 72), *(a1 + 80), a3, a4, *(a1 + 56), *(a1 + 112), *(a1 + 120), *(a1 + 128), a1 + 200, *(a1 + 180), *(a1 + 144), *(a1 + 140), *(a1 + 148), *(a1 + 192));
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }
  }

  if (*(a1 + 136) && !*(a1 + 188))
  {
    fe_pos_Process_Mosynt(a1, a2, a3, a4, a5);
  }

  v11 = fe_Process_UserCOMPMarkup(a1, a2, a3, a4, a5);
  if ((v11 & 0x80000000) == 0)
  {
    if (!*(a1 + 1736) || *(a1 + 1616) || (v11 = fe_pos_Process_StatCOMP(a1, a2, a3, a4, a5), (v11 & 0x80000000) == 0))
    {
      __s = 0;
      v144 = 0;
      __s1 = 0;
      v141 = 0;
      v142 = 0;
      if (!*(a1 + 176) || *(a1 + 1720) && !*(a1 + 1616) && (*(a1 + 192) && !*(a1 + 2232) ? (v12 = statphr_MorphemeProcess(*a1, *(a1 + 56), a3, a4)) : (v12 = statphr_Process(*a1, *(a1 + 56), a3, a4, *(a1 + 1728), *(a1 + 1736), *(a1 + 2236))), (v11 = v12, (v12 & 0x80000000) == 0) && !*(a1 + 176)))
      {
        if (!*(a1 + 136))
        {
          v148 = 0;
          v149 = 0;
          v146 = 0;
          v147 = 0;
          v143 = 0;
          v140 = 0;
          strcpy(v152, "partofspeech");
          *a5 = 1;
          v11 = (*(*(a1 + 56) + 104))(a3, a4, 1, 0, &v149 + 2);
          if ((v11 & 0x80000000) == 0 && ((*(*(a1 + 56) + 184))(a3, a4, HIWORD(v149), 0, &v139) & 0x80000000) == 0 && v139 == 1)
          {
            v11 = (*(*(a1 + 56) + 176))(a3, a4, HIWORD(v149), 0, &__s, &v148 + 2);
            if ((v11 & 0x80000000) == 0 && HIWORD(v148) >= 2u)
            {
              memset(v151, 0, sizeof(v151));
              v14 = strlen(__s);
              v15 = heap_Alloc(*(*a1 + 8), (v14 + 129));
              *(a1 + 88) = v15;
              if (!v15 || (*v15 = 0, v16 = strlen(__s), v17 = heap_Alloc(*(*a1 + 8), (v16 + 129)), (*(a1 + 96) = v17) == 0) || (*v17 = 0, v18 = strlen(__s), v19 = heap_Alloc(*(*a1 + 8), (v18 + 129)), (*(a1 + 104) = v19) == 0))
              {
LABEL_154:
                log_OutPublic(*(*a1 + 32), "FE_POS", 35000, 0);
                v80 = 8202;
LABEL_155:
                v11 = v80 | 0x89E00000;
                goto LABEL_156;
              }

              *v19 = 0;
              v20 = strlen(__s);
              v21 = (*(*(a1 + 56) + 104))(a3, a4, 2, HIWORD(v149), &v149);
              if ((v21 & 0x80000000) != 0)
              {
                goto LABEL_259;
              }

              v22 = 0;
              v129 = 0;
              v23 = 0;
              v134 = 0;
              v24 = 0;
              v135 = (v20 + 1);
              v136 = 0;
              v25 = 1;
              v130 = 1;
              while (1)
              {
                if (!v149)
                {
                  if (!v25)
                  {
                    ssft_qsort(__s2, v136, 82, compare_1);
                    if (v136)
                    {
                      v67 = 0;
                      do
                      {
                        if (v67)
                        {
                          if (__s2[v67])
                          {
                            *(*(a1 + 96) + strlen(*(a1 + 96))) = 92;
                          }

                          strcat(*(a1 + 96), &__s2[v67]);
                          if (__s2[v67 + 40])
                          {
                            v68 = *(a1 + 104);
                            if (*v68)
                            {
                              *&v68[strlen(*(a1 + 104))] = 92;
                            }
                          }
                        }

                        else
                        {
                          strcat(*(a1 + 96), __s2);
                        }

                        strcat(*(a1 + 104), &__s2[v67 + 40]);
                        v67 += 82;
                      }

                      while (82 * v136 != v67);
                    }
                  }

                  v133 = v23;
                  v69 = v23;
                  if (v23 <= v129 && v134 <= v129)
                  {
                    v84 = v129 - v23;
                    if (v84 >= 1)
                    {
                      v85 = 0;
                      do
                      {
                        *(*(a1 + 96) + strlen(*(a1 + 96))) = 126;
                        ++v85;
                      }

                      while (v84 > v85);
                    }

                    if (v129 - v134 >= 1)
                    {
                      v86 = 0;
                      do
                      {
                        *(*(a1 + 104) + strlen(*(a1 + 104))) = 126;
                        ++v86;
                      }

                      while (v129 - v134 > v86);
                    }
                  }

                  else
                  {
                    if (v23 <= v134)
                    {
                      v70 = v134;
                    }

                    else
                    {
                      v70 = v23;
                    }

                    v71 = v70 - v129;
                    if (v71 >= 1)
                    {
                      v72 = 0;
                      v73 = v130;
                      do
                      {
                        if (v73 << 7 == v24)
                        {
                          v74 = v135 + (++v73 << 7);
                          v75 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v74);
                          if (!v75)
                          {
                            goto LABEL_154;
                          }

                          *(a1 + 88) = v75;
                          v76 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v74);
                          if (!v76)
                          {
                            goto LABEL_154;
                          }

                          *(a1 + 96) = v76;
                          v77 = heap_Realloc(*(*a1 + 8), *(a1 + 104), v74);
                          if (!v77)
                          {
                            goto LABEL_154;
                          }

                          *(a1 + 104) = v77;
                        }

                        *(*(a1 + 88) + strlen(*(a1 + 88))) = 126;
                        ++v72;
                        ++v24;
                      }

                      while (v71 > v72);
                    }

                    if (v134 <= v133)
                    {
                      v87 = v69 - v134;
                      if (v87 >= 1)
                      {
                        v88 = 0;
                        do
                        {
                          *(*(a1 + 104) + strlen(*(a1 + 104))) = 126;
                          ++v88;
                        }

                        while (v87 > v88);
                      }
                    }

                    else
                    {
                      v78 = v134 - v69;
                      if (v78 >= 1)
                      {
                        v79 = 0;
                        do
                        {
                          *(*(a1 + 96) + strlen(*(a1 + 96))) = 126;
                          ++v79;
                        }

                        while (v78 > v79);
                      }
                    }
                  }

                  log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s L1: %s", v152, *(a1 + 88));
                  v89 = strlen(*(a1 + 88));
                  v21 = (*(*(a1 + 80) + 120))(*(a1 + 64), *(a1 + 72), 0, *(a1 + 88), v89);
                  if ((v21 & 0x80000000) != 0 || (log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s L2: %s", v152, *(a1 + 96)), v90 = strlen(*(a1 + 96)), v21 = (*(*(a1 + 80) + 120))(*(a1 + 64), *(a1 + 72), 1, *(a1 + 96), v90), (v21 & 0x80000000) != 0) || (log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s L3: %s", v152, *(a1 + 104)), v91 = strlen(*(a1 + 104)), v21 = (*(*(a1 + 80) + 120))(*(a1 + 64), *(a1 + 72), 2, *(a1 + 104), v91), (v21 & 0x80000000) != 0) || (v21 = (*(*(a1 + 80) + 80))(*(a1 + 64), *(a1 + 72), v152), (v21 & 0x80000000) != 0) || (v21 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 1, &v142, &v140), (v21 & 0x80000000) != 0) || (v142[v140] = 0, log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s O2: %s", v152, v142), v21 = (*(*(a1 + 80) + 128))(*(a1 + 64), *(a1 + 72), 2, &v141, &v140), (v21 & 0x80000000) != 0))
                  {
LABEL_259:
                    v11 = v21;
                  }

                  else
                  {
                    v141[v140] = 0;
                    log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "%s O3: %s", v152, v141);
                    v11 = (*(*(a1 + 56) + 104))(a3, a4, 2, HIWORD(v149), &v149);
                    if ((v11 & 0x80000000) == 0)
                    {
                      v92 = v149;
                      if (v149)
                      {
                        v93 = 0;
                        LODWORD(v94) = 0;
                        v95 = 0;
                        v96 = 0;
                        v97 = 0;
                        v98 = 1;
                        while (1)
                        {
                          v21 = (*(*(a1 + 56) + 168))(a3, a4, v92, 0, 1, &v146, &v148 + 2);
                          if ((v21 & 0x80000000) != 0)
                          {
                            goto LABEL_259;
                          }

                          if (v146 <= 0xA && ((1 << v146) & 0x610) != 0)
                          {
                            v21 = (*(*(a1 + 56) + 168))(a3, a4, v149, 1, 1, &v147 + 2, &v148 + 2);
                            if ((v21 & 0x80000000) != 0)
                            {
                              goto LABEL_259;
                            }

                            v21 = (*(*(a1 + 56) + 176))(a3, a4, v149, 5, &__s1, &v148 + 2);
                            if ((v21 & 0x80000000) != 0)
                            {
                              goto LABEL_259;
                            }

                            if (v98 == 1 || v97 != HIWORD(v147))
                            {
                              v96 = v142;
                              for (i = v142 + 1; ; ++i)
                              {
                                v101 = *v96;
                                if (v101 != 32 && v101 != 126)
                                {
                                  break;
                                }

                                v142 = ++v96;
                              }

                              while (v101)
                              {
                                if (v101 == 32 || v101 == 126)
                                {
                                  v142 = i;
                                  *(i - 1) = 0;
                                  break;
                                }

                                v142 = i;
                                v102 = *i++;
                                LOBYTE(v101) = v102;
                              }

                              v95 = v141;
                              for (j = v141 + 1; ; ++j)
                              {
                                v104 = *v95;
                                if (v104 != 32 && v104 != 126)
                                {
                                  break;
                                }

                                v141 = ++v95;
                              }

                              while (v104)
                              {
                                if (v104 == 32 || v104 == 126)
                                {
                                  v141 = j;
                                  *(j - 1) = 0;
                                  break;
                                }

                                v141 = j;
                                v105 = *j++;
                                LOBYTE(v104) = v105;
                              }
                            }

                            if (v97 != HIWORD(v147))
                            {
                              if (v94 == 1)
                              {
                                if (v93)
                                {
                                  v94 = v93;
                                  v112 = v151;
                                  while (1)
                                  {
                                    v113 = *v112++;
                                    v21 = (*(*(a1 + 56) + 192))(a3, a4, v113);
                                    if ((v21 & 0x80000000) != 0)
                                    {
                                      goto LABEL_259;
                                    }

                                    if (!--v94)
                                    {
                                      goto LABEL_227;
                                    }
                                  }
                                }
                              }

                              else if (v93)
                              {
                                v106 = v93;
                                v107 = v151;
                                do
                                {
                                  v138 = 0;
                                  v109 = *v107++;
                                  v108 = v109;
                                  v21 = (*(*(a1 + 56) + 176))(a3, a4, v109, 5, &v138, &v148 + 2);
                                  if ((v21 & 0x80000000) != 0)
                                  {
                                    goto LABEL_259;
                                  }

                                  v110 = strchr(v138, 92);
                                  if (v110)
                                  {
                                    *v110 = 0;
                                  }

                                  v21 = (*(*(a1 + 56) + 176))(a3, a4, v108, 6, &v144, &v148 + 2);
                                  if ((v21 & 0x80000000) != 0)
                                  {
                                    goto LABEL_259;
                                  }

                                  v111 = strchr(v144, 92);
                                  if (v111)
                                  {
                                    *v111 = 0;
                                  }
                                }

                                while (--v106);
                              }

                              LODWORD(v94) = 0;
LABEL_227:
                              v93 = 0;
                            }

                            if (v96 && v95 && ((v114 = __s1, strstr(__s1, v96)) || *v96 == 42 && !v96[1] || *v114 == 42 && !v114[1]))
                            {
                              v115 = strlen(v96);
                              v21 = (*(*(a1 + 56) + 160))(a3, a4, v149, 5, (v115 + 1), v96, &v148);
                              if ((v21 & 0x80000000) != 0)
                              {
                                goto LABEL_259;
                              }

                              v116 = strlen(v95);
                              v21 = (*(*(a1 + 56) + 160))(a3, a4, v149, 6, (v116 + 1), v95, &v148);
                              if ((v21 & 0x80000000) != 0)
                              {
                                goto LABEL_259;
                              }

                              LODWORD(v94) = 1;
                            }

                            else
                            {
                              *(v151 + v93++) = v149;
                            }

                            v98 = 0;
                            v97 = HIWORD(v147);
                          }

                          v11 = (*(*(a1 + 56) + 120))(a3, a4, v149, &v149);
                          if ((v11 & 0x80000000) != 0)
                          {
                            break;
                          }

                          v92 = v149;
                          if (!v149)
                          {
                            if (v94 == 1)
                            {
                              if (v93)
                              {
                                v117 = v93 - 1;
                                v118 = v151;
                                do
                                {
                                  v119 = v117;
                                  v120 = *v118++;
                                  v11 = (*(*(a1 + 56) + 192))(a3, a4, v120);
                                  if ((v11 & 0x80000000) != 0)
                                  {
                                    break;
                                  }

                                  v117 = v119 - 1;
                                }

                                while (v119);
                              }

                              break;
                            }

                            if (!v93)
                            {
                              break;
                            }

                            v121 = v93;
                            v122 = v151;
                            while (1)
                            {
                              v124 = *v122++;
                              v123 = v124;
                              v21 = (*(*(a1 + 56) + 176))(a3, a4, v124, 5, &__s1, &v148 + 2);
                              if ((v21 & 0x80000000) != 0)
                              {
                                goto LABEL_259;
                              }

                              v125 = strchr(__s1, 92);
                              if (v125)
                              {
                                *v125 = 0;
                              }

                              v11 = (*(*(a1 + 56) + 176))(a3, a4, v123, 6, &v144, &v148 + 2);
                              if ((v11 & 0x80000000) == 0)
                              {
                                v126 = strchr(v144, 92);
                                if (v126)
                                {
                                  *v126 = 0;
                                }

                                if (--v121)
                                {
                                  continue;
                                }
                              }

                              goto LABEL_156;
                            }
                          }
                        }
                      }
                    }
                  }

LABEL_156:
                  v81 = *(a1 + 88);
                  if (v81)
                  {
                    heap_Free(*(*a1 + 8), v81);
                  }

                  *(a1 + 88) = 0;
                  v82 = *(a1 + 96);
                  if (v82)
                  {
                    heap_Free(*(*a1 + 8), v82);
                  }

                  *(a1 + 96) = 0;
                  v83 = *(a1 + 104);
                  if (v83)
                  {
                    heap_Free(*(*a1 + 8), v83);
                  }

                  *(a1 + 104) = 0;
                  return v11;
                }

                v21 = (*(*(a1 + 56) + 168))(a3, a4);
                if ((v21 & 0x80000000) != 0)
                {
                  goto LABEL_259;
                }

                if (v146 <= 0xA && ((1 << v146) & 0x610) != 0)
                {
                  break;
                }

LABEL_123:
                v11 = (*(*(a1 + 56) + 120))(a3, a4, v149, &v149);
                if ((v11 & 0x80000000) != 0)
                {
                  goto LABEL_156;
                }
              }

              v21 = (*(*(a1 + 56) + 168))(a3, a4, v149, 1, 1, &v147 + 2, &v148 + 2);
              if ((v21 & 0x80000000) != 0)
              {
                goto LABEL_259;
              }

              v21 = (*(*(a1 + 56) + 168))(a3, a4, v149, 2, 1, &v147, &v148 + 2);
              if ((v21 & 0x80000000) != 0)
              {
                goto LABEL_259;
              }

              v21 = (*(*(a1 + 56) + 176))(a3, a4, v149, 5, &__s1, &v148 + 2);
              if ((v21 & 0x80000000) != 0)
              {
                goto LABEL_259;
              }

              v21 = (*(*(a1 + 56) + 176))(a3, a4, v149, 6, &v144, &v148 + 2);
              if ((v21 & 0x80000000) != 0)
              {
                goto LABEL_259;
              }

              v21 = (*(*(a1 + 56) + 168))(a3, a4, v149, 7, 1, &v143, &v148 + 2);
              if ((v21 & 0x80000000) != 0)
              {
                goto LABEL_259;
              }

              v27 = v136;
              if (v25 != 1 && HIWORD(v147) == v22)
              {
LABEL_98:
                if (v27)
                {
                  v132 = v23;
                  v52 = 0;
                  v53 = 0;
                  v55 = v144;
                  v54 = __s1;
                  v136 = v27;
                  v56 = v27;
                  v57 = __s2;
                  v128 = v27;
                  do
                  {
                    if (!strcmp(v54, v57))
                    {
                      v53 = 1;
                    }

                    if (!strcmp(v55, v57 + 40))
                    {
                      v52 = 1;
                    }

                    v57 += 82;
                    --v56;
                  }

                  while (v56);
                  v58 = v52 == 0;
                  if (v53 && v52)
                  {
                    v23 = v132;
LABEL_122:
                    v25 = 0;
                    v22 = HIWORD(v147);
                    goto LABEL_123;
                  }

                  v23 = v132;
                  if (v53)
                  {
                    __s2[82 * v128] = 0;
                    v59 = v136;
                    if (v52)
                    {
LABEL_111:
                      v60 = v59;
                      __s2[82 * v59 + 40] = 0;
LABEL_121:
                      v136 = (v59 + 1);
                      *&__s2[82 * v60 + 80] = v143;
                      goto LABEL_122;
                    }

LABEL_117:
                    v60 = v59;
                    v64 = v59;
                    __strcpy_chk();
                    if (v134)
                    {
                      v65 = v134 + 1;
                    }

                    else
                    {
                      v65 = 0;
                    }

                    v66 = strlen(v144);
                    v59 = v64;
                    v134 = v65 + v66;
                    goto LABEL_121;
                  }

                  LODWORD(v27) = v136;
                }

                else
                {
                  v58 = 1;
                }

                v61 = v27;
                __strcpy_chk();
                if (v23)
                {
                  v62 = v23 + 1;
                }

                else
                {
                  v62 = 0;
                }

                v63 = strlen(__s1);
                v59 = v61;
                v23 = v62 + v63;
                if (!v58)
                {
                  goto LABEL_111;
                }

                goto LABEL_117;
              }

              v127 = v25;
              if (!v25)
              {
                ssft_qsort(__s2, v136, 82, compare_1);
                if (v136)
                {
                  v28 = 0;
                  do
                  {
                    if (v28)
                    {
                      v29 = *(a1 + 96);
                      if (__s2[v28] && *v29 && v29[strlen(*(a1 + 96)) - 1] != 32)
                      {
                        *&v29[strlen(v29)] = 92;
                        v29 = *(a1 + 96);
                      }

                      strcat(v29, &__s2[v28]);
                      if (__s2[v28 + 40])
                      {
                        v30 = *(a1 + 104);
                        if (*v30)
                        {
                          if (v30[strlen(*(a1 + 104)) - 1] != 32)
                          {
                            *&v30[strlen(v30)] = 92;
                          }
                        }
                      }
                    }

                    else
                    {
                      strcat(*(a1 + 96), __s2);
                    }

                    strcat(*(a1 + 104), &__s2[v28 + 40]);
                    v28 += 82;
                  }

                  while (82 * v136 != v28);
                }

                v27 = 0;
              }

              v31 = v23;
              v32 = v130;
              v137 = v27;
              if (v23 <= v129 && v134 <= v129)
              {
                v44 = v129 - v23;
                if (v44 >= 1)
                {
                  v45 = 0;
                  do
                  {
                    *(*(a1 + 96) + strlen(*(a1 + 96))) = 126;
                    ++v45;
                  }

                  while (v44 > v45);
                }

                if (v129 - v134 >= 1)
                {
                  v46 = 0;
                  v47 = v127;
                  do
                  {
                    *(*(a1 + 104) + strlen(*(a1 + 104))) = 126;
                    ++v46;
                  }

                  while (v129 - v134 > v46);
                  v32 = v130;
                  goto LABEL_94;
                }

                v32 = v130;
              }

              else
              {
                v131 = v23;
                if (v23 <= v134)
                {
                  v33 = v134;
                }

                else
                {
                  v33 = v23;
                }

                v34 = v33 - v129;
                if (v34 >= 1)
                {
                  v35 = 0;
                  do
                  {
                    if (v32 << 7 == v24)
                    {
                      v36 = (v32 + 1);
                      v37 = v135 + ((v32 + 1) << 7);
                      v38 = heap_Realloc(*(*a1 + 8), *(a1 + 88), v37);
                      if (!v38)
                      {
                        goto LABEL_154;
                      }

                      *(a1 + 88) = v38;
                      v39 = heap_Realloc(*(*a1 + 8), *(a1 + 96), v37);
                      if (!v39)
                      {
                        goto LABEL_154;
                      }

                      *(a1 + 96) = v39;
                      v40 = heap_Realloc(*(*a1 + 8), *(a1 + 104), v37);
                      if (!v40)
                      {
                        goto LABEL_154;
                      }

                      *(a1 + 104) = v40;
                    }

                    else
                    {
                      v36 = v32;
                    }

                    *(*(a1 + 88) + strlen(*(a1 + 88))) = 126;
                    ++v35;
                    ++v24;
                    v32 = v36;
                  }

                  while (v34 > v35);
                }

                if (v134 <= v131)
                {
                  v48 = v31 - v134;
                  if (v48 >= 1)
                  {
                    v42 = v32;
                    v49 = 0;
                    do
                    {
                      *(*(a1 + 104) + strlen(*(a1 + 104))) = 126;
                      ++v49;
                    }

                    while (v48 > v49);
                    goto LABEL_91;
                  }
                }

                else
                {
                  v41 = v134 - v31;
                  if (v41 >= 1)
                  {
                    v42 = v32;
                    v43 = 0;
                    do
                    {
                      *(*(a1 + 96) + strlen(*(a1 + 96))) = 126;
                      ++v43;
                    }

                    while (v41 > v43);
LABEL_91:
                    v32 = v42;
                  }
                }
              }

              v47 = v127;
LABEL_94:
              if (HIWORD(v147) > v147)
              {
                v80 = 16049;
                goto LABEL_155;
              }

              v130 = v32;
              v129 = Utf8_LengthInUtf8chars(&__s[HIWORD(v147)], v147 - HIWORD(v147));
              if (!v47)
              {
                v50 = HIWORD(v147);
                PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, HIWORD(v147));
                strncat(*(a1 + 88), &__s[HIWORD(v147) - (v50 - PreviousUtf8Offset)], (v50 - PreviousUtf8Offset));
                *(*(a1 + 96) + strlen(*(a1 + 96))) = 32;
                *(*(a1 + 104) + strlen(*(a1 + 104))) = 32;
              }

              strncat(*(a1 + 88), &__s[HIWORD(v147)], v147 - HIWORD(v147));
              v23 = 0;
              v134 = 0;
              v27 = v137;
              goto LABEL_98;
            }
          }
        }
      }
    }
  }

  return v11;
}

uint64_t fe_pos_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62341, 2240);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2313166856;
  }
}

uint64_t fe_pos_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2313166849;
  }

  result = 0;
  *a2 = &IFePos;
  return result;
}

uint64_t fe_pos_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2313166855;
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

uint64_t statcomp_getDctInfo(void *a1, const char *a2, uint64_t a3, const char **a4, unsigned __int8 *a5, _DWORD *a6)
{
  v18 = 0;
  v17 = 0;
  *a6 = 0;
  v10 = (*(a1[50] + 96))(a1[48], a1[49], "compounds_feature_info", a3, &v18, &v17, a5);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = v17;
    if (v17)
    {
      v12 = v18;
      v13 = *a5;
      while (1)
      {
        v14 = *v12;
        v15 = strchr(*v12, v13);
        if (v15)
        {
          if (!strncmp(v14, a2, (v15 - v14)))
          {
            break;
          }
        }

        ++v12;
        if (!--v11)
        {
          return v10;
        }
      }

      *a4 = v14;
      *a6 = 1;
    }
  }

  return v10;
}

uint64_t setStatCOMPFeatureVector(unsigned int a1, uint64_t *a2, unsigned int a3, __int16 a4, uint64_t a5)
{
  v9 = a2[22];
  v10 = a2[23];
  v55 = *(a2[24] + 8 * a1);
  *v56 = *(a2[21] + 8 * a1);
  v11 = a2[19];
  v12 = a2[20];
  v59 = 0;
  v54 = *(v10 + 8 * a1);
  v58 = 0;
  v57 = 0;
  v13 = (a4 - a3 + 1);
  v14 = heap_Calloc(*(*a2 + 8), 1, 8 * v13 + 8);
  v15 = *a2;
  if (!v14)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v16 = heap_Calloc(*(v15 + 8), 1, 8 * v13 + 8);
  if (!v16)
  {
LABEL_11:
    v15 = *a2;
LABEL_13:
    log_OutPublic(*(v15 + 32), "FE_POS", 35000, 0);
    DctInfo = 2313166858;
    goto LABEL_14;
  }

  if (v13)
  {
    v50 = a5;
    v51 = v12;
    v49 = v9;
    v17 = 0;
    v53 = a1;
    v18 = 96 * a3;
    v19 = v13 - 1;
    while (1)
    {
      v20 = heap_Calloc(*(*a2 + 8), 1, (*(a2[54] + v18 + 2) - *(a2[54] + v18)) + 1);
      v14[v17] = v20;
      if (!v20)
      {
        goto LABEL_11;
      }

      strncpy(v20, (a2[60] + *(a2[54] + v18)), *(a2[54] + v18 + 2) - *(a2[54] + v18));
      v14[v17][*(a2[54] + v18 + 2) - *(a2[54] + v18)] = 0;
      v21 = strlen(*(a2[54] + v18 + 56));
      v22 = heap_Calloc(*(*a2 + 8), 1, v21 + 1);
      *(v16 + 8 * v17) = v22;
      if (!v22)
      {
        goto LABEL_11;
      }

      strcpy(v22, *(a2[54] + v18 + 56));
      if (v19 == v17)
      {
        v23 = (*(a2[50] + 144))(a2[48], a2[49], "normal", v14[v17], 128);
        if ((v23 & 0x80000000) != 0)
        {
          DctInfo = v23;
          goto LABEL_14;
        }

        if (v19 == v17)
        {
          v26 = 0;
          v47 = v13;
          v48 = v11 + 20 * a1;
          v46 = v16;
          while (1)
          {
            v27 = *(v48 + 2 * v26);
            DctInfo = statcomp_getDctInfo(a2, *(v51 + 8 * v53), v14[v26], &v58, &v59, &v57);
            if ((DctInfo & 0x80000000) != 0)
            {
              goto LABEL_14;
            }

            v52 = v26;
            v28 = v57;
            if (v57 == 1)
            {
              v29 = v58;
              v30 = v59;
              v31 = *(*(v49 + 8 * v53) + 8);
              v32 = strchr(v58, v59);
              v33 = v29;
              if (v32)
              {
                *v32 = 0;
                v33 = v32 + 1;
              }

              if (v31)
              {
                v34 = v54;
                do
                {
                  v35 = strchr(v33, v30);
                  if (v35)
                  {
                    *v35++ = 0;
                  }

                  *v34++ = v33 - v29;
                  v33 = v35;
                  --v31;
                }

                while (v31);
              }
            }

            v36 = *v56;
            if (*(*v56 + 1296) >= 2u)
            {
              break;
            }

            v16 = v46;
            v13 = v47;
LABEL_43:
            v26 = v52 + 1;
            if (v52 + 1 == v13)
            {
              goto LABEL_14;
            }
          }

          v37 = 0;
          v38 = v58;
          v16 = v46;
          v13 = v47;
          v39 = v55;
          while (2)
          {
            v40 = v37;
            v41 = *(v50 + 8 * v37);
            if (*v41 != 61 || v41[1] || (v42 = (*v39 + 12 * v40), *v42 != v27) || *(v42 + 1))
            {
              if (v28 == 1)
              {
                v43 = (*v39 + 12 * v40);
                if (*v43 == v27)
                {
                  v44 = *(v43 + 1);
                  if (v44 == 2 || v44 == 1)
                  {
                    v45 = statcomp_setFeature(v36, *a2, v40, v50, &v38[v54[v43[4]]]);
LABEL_38:
                    v39 = v55;
                    v36 = *v56;
                    DctInfo = v45;
                    if ((v45 & 0x80000000) != 0)
                    {
                      goto LABEL_14;
                    }
                  }
                }
              }

              v37 = v40 + 1;
              if (*(v36 + 1296) - 1 <= (v40 + 1))
              {
                goto LABEL_43;
              }

              continue;
            }

            break;
          }

          v45 = statcomp_setDynamicFeature(*a2, v36, v42[4], v40, v50, v14, v46, v47, v52);
          goto LABEL_38;
        }
      }

      v18 += 96;
      ++v17;
    }
  }

  DctInfo = 0;
LABEL_14:
  freeWordList(*(*a2 + 8), v13, v14);
  freeWordList(*(*a2 + 8), v13, v16);
  return DctInfo;
}

void *freeWordList(void *result, unsigned int a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = v6;
      v8 = *(a3 + 8 * v6);
      if (v8)
      {
        heap_Free(v5, v8);
        *(a3 + 8 * v7) = 0;
      }

      v6 = v7 + 1;
    }

    while (a2 >= (v7 + 1));

    return heap_Free(v5, a3);
  }

  return result;
}

uint64_t statcomp_useStatCOMP(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  *a4 = 0;
  result = (*(a3 + 96))(a1, a2, "fecfg", "usecompound", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) == 0)
  {
    if (*&__c[1] != 1 || *&__c[3] == 0)
    {
      return 0;
    }

    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    if (!strcmp(v7, "YES") || !strcmp(v7, "yes"))
    {
      result = 0;
      *a4 = 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t statcomp_processUserMarkup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v8 = (*(a1 + 104))(a2, a3, 1, 0, &v47 + 2);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(a1 + 184))(a2, a3, HIWORD(v47), 0, &v46 + 2);
  if ((v9 & 0x80000000) == 0 && HIWORD(v46) == 1)
  {
    v9 = (*(a1 + 176))(a2, a3, HIWORD(v47), 0, &v42, &v46);
    if ((v9 & 0x80000000) == 0 && v46 >= 2u)
    {
      *(a4 + 424) = 0;
      v9 = (*(a1 + 104))(a2, a3, 2, HIWORD(v47), &v47);
      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_64;
      }

      v10 = v47;
      if (!v47)
      {
        goto LABEL_64;
      }

      while (1)
      {
        v11 = (*(a1 + 168))(a2, a3, v10, 0, 1, &v44, &v46);
        if ((v11 & 0x80000000) != 0)
        {
LABEL_63:
          v9 = v11;
          goto LABEL_64;
        }

        if (v44 <= 0xA && ((1 << v44) & 0x610) != 0)
        {
          v11 = (*(a1 + 168))(a2, a3, v47, 1, 1, &v43, &v46);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }

          v11 = (*(a1 + 168))(a2, a3, v47, 2, 1, &v43 + 2, &v46);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }

          if (v43 > HIWORD(v43))
          {
            v38 = 16049;
            goto LABEL_68;
          }

          v11 = (*(a1 + 184))(a2, a3, v47, 14, &v46 + 2);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }

          if (HIWORD(v46) == 1)
          {
            v11 = (*(a1 + 176))(a2, a3, v47, 14, &v41, &v46);
            if ((v11 & 0x80000000) != 0)
            {
              goto LABEL_63;
            }

            if (hlp_NLUStrFind(v41, "S_COMP", &v40, &v39))
            {
              if (!*(a4 + 424))
              {
                v13 = heap_Calloc(*(*a4 + 8), 1, 1024);
                *(a4 + 408) = v13;
                if (!v13)
                {
                  goto LABEL_67;
                }

                *(a4 + 424) = 1024;
              }

              v8 = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), v41);
              if ((v8 & 0x80000000) != 0)
              {
                return v8;
              }

              v14 = v39;
              if (v39)
              {
                v15 = v40 + 1;
                v16 = v39 - 1;
                v17 = v49;
                v18 = &v47 + 3;
                while (1)
                {
                  v19 = *(v15 - 1);
                  if (v19 == 43)
                  {
                    break;
                  }

                  *v17++ = v19;
                  ++v15;
                  --v18;
                  if (--v16 == -1)
                  {
                    goto LABEL_28;
                  }
                }

                *v17 = 0;
                __strncpy_chk();
                v18[v39] = 0;
                hlp_NLUStrSet(*(a4 + 408), "S_COMPPOS", __s);
              }

              else
              {
LABEL_28:
                v49[v14] = 0;
              }

              hlp_NLUStrSet(*(a4 + 408), "S_COMP", v49);
              log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing NLU=%s", v41);
              v20 = strlen(*(a4 + 408));
              v11 = (*(a1 + 160))(a2, a3, v47, 14, (v20 + 1), *(a4 + 408), &v45);
              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }

              **(a4 + 408) = 0;
            }

            if (hlp_NLUStrFind(v41, "E_COMP", &v40, &v39))
            {
              if (!*(a4 + 424))
              {
                v21 = heap_Calloc(*(*a4 + 8), 1, 1024);
                *(a4 + 408) = v21;
                if (!v21)
                {
                  goto LABEL_67;
                }

                *(a4 + 424) = 1024;
              }

              v8 = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), v41);
              if ((v8 & 0x80000000) != 0)
              {
                return v8;
              }

              v22 = v39;
              if (v39)
              {
                v23 = v40 + 1;
                v24 = v39 - 1;
                v25 = v49;
                v26 = &v47 + 3;
                while (1)
                {
                  v27 = *(v23 - 1);
                  if (v27 == 43)
                  {
                    break;
                  }

                  *v25++ = v27;
                  ++v23;
                  --v26;
                  if (--v24 == -1)
                  {
                    goto LABEL_41;
                  }
                }

                *v25 = 0;
                __strncpy_chk();
                v26[v39] = 0;
                hlp_NLUStrSet(*(a4 + 408), "E_COMPPOS", __s);
              }

              else
              {
LABEL_41:
                v49[v22] = 0;
              }

              hlp_NLUStrSet(*(a4 + 408), "E_COMP", v49);
              log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing NLU=%s", v41);
              v28 = strlen(*(a4 + 408));
              v11 = (*(a1 + 160))(a2, a3, v47, 14, (v28 + 1), *(a4 + 408), &v45);
              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }

              **(a4 + 408) = 0;
            }

            if (hlp_NLUStrFind(v41, "I_COMP", &v40, &v39))
            {
              if (!*(a4 + 424))
              {
                v29 = heap_Calloc(*(*a4 + 8), 1, 1024);
                *(a4 + 408) = v29;
                if (!v29)
                {
LABEL_67:
                  log_OutPublic(*(*a4 + 32), "FE_POS", 35000, 0);
                  v38 = 8202;
LABEL_68:
                  v9 = v38 | 0x89E00000;
LABEL_64:
                  if (*(a4 + 424))
                  {
                    heap_Free(*(*a4 + 8), *(a4 + 408));
                    *(a4 + 408) = 0;
                    *(a4 + 424) = 0;
                  }

                  return v9;
                }

                *(a4 + 424) = 1024;
              }

              v8 = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), v41);
              if ((v8 & 0x80000000) != 0)
              {
                return v8;
              }

              v30 = v39;
              if (v39)
              {
                v31 = v40 + 1;
                v32 = v39 - 1;
                v33 = v49;
                v34 = &v47 + 3;
                while (1)
                {
                  v35 = *(v31 - 1);
                  if (v35 == 43)
                  {
                    break;
                  }

                  *v33++ = v35;
                  ++v31;
                  --v34;
                  if (--v32 == -1)
                  {
                    goto LABEL_54;
                  }
                }

                *v33 = 0;
                __strncpy_chk();
                v34[v39] = 0;
                hlp_NLUStrSet(*(a4 + 408), "I_COMPPOS", __s);
              }

              else
              {
LABEL_54:
                v49[v30] = 0;
              }

              hlp_NLUStrSet(*(a4 + 408), "I_COMP", v49);
              log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing NLU=%s", v41);
              v36 = strlen(*(a4 + 408));
              v11 = (*(a1 + 160))(a2, a3, v47, 14, (v36 + 1), *(a4 + 408), &v45);
              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_63;
              }

              **(a4 + 408) = 0;
            }
          }
        }

        v9 = (*(a1 + 120))(a2, a3, v47, &v47);
        if ((v9 & 0x80000000) == 0)
        {
          v10 = v47;
          if (v47)
          {
            continue;
          }
        }

        goto LABEL_64;
      }
    }
  }

  return v9;
}

uint64_t statcomp_getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  __s = 0;
  v60 = 0;
  v59 = 0;
  *(a4 + 107) = log_GetLogLevel(*(*a4 + 32)) > 4;
  v8 = (*(a1 + 104))(a2, a3, 1, 0, &v68 + 2);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = (*(a1 + 184))(a2, a3, HIWORD(v68), 0, &v67);
  if ((v9 & 0x80000000) == 0 && v67 == 1)
  {
    v9 = (*(a1 + 176))(a2, a3, HIWORD(v68), 0, &__s, &v66);
    if ((v9 & 0x80000000) == 0 && v66 >= 2u)
    {
      v10 = strlen(__s);
      v11 = v10;
      v12 = heap_Calloc(*(*a4 + 8), 1, v10 + 1);
      a4[60] = v12;
      if (v12)
      {
        strcpy(v12, __s);
        log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "statCOMP : start processing=%s", a4[60]);
        v13 = heap_Calloc(*(*a4 + 8), 1, 1024);
        a4[51] = v13;
        if (v13)
        {
          *(a4 + 212) = 1024;
          v14 = heap_Calloc(*(*a4 + 8), 1, 1024);
          a4[52] = v14;
          if (v14)
          {
            v8 = (*(a1 + 104))(a2, a3, 2, HIWORD(v68), &v68);
            if ((v8 & 0x80000000) == 0)
            {
              v55 = v10;
              while (v68)
              {
                v8 = (*(a1 + 168))(a2, a3);
                if ((v8 & 0x80000000) != 0)
                {
                  return v8;
                }

                if (v65 <= 0xA && ((1 << v65) & 0x610) != 0)
                {
                  v8 = (*(a1 + 168))(a2, a3, v68, 1, 1, &v60, &v66);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  v8 = (*(a1 + 168))(a2, a3, v68, 2, 1, &v60 + 2, &v66);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (v60 > HIWORD(v60))
                  {
                    return 2313174705;
                  }

                  v8 = (*(a1 + 184))(a2, a3, v68, 17, &v67);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (v67 == 1)
                  {
                    v8 = (*(a1 + 168))(a2, a3, v68, 17, 1, &v59, &v66);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }
                  }

                  else
                  {
                    v59 = v65 - 9 <= 1;
                  }

                  v8 = (*(a1 + 176))(a2, a3, v68, 3, &v61, &v66);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (HIWORD(v60) == v60)
                  {
                    log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", HIWORD(v60), HIWORD(v60));
                  }

                  else
                  {
                    v8 = (*(a1 + 176))(a2, a3, v68, 14, &v64, &v66);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    v16 = v64;
                    v17 = v59;
                    __src = v61;
                    v72 = 0;
                    v71 = 0;
                    v70 = 0;
                    v69 = 0;
                    v18 = strlen(v64);
                    v19 = heap_Calloc(*(*a4 + 8), 1, (v18 + 1));
                    if (!v19)
                    {
                      goto LABEL_69;
                    }

                    v58 = v19;
                    strcpy(v19, v16);
                    v20 = *(a4 + 220);
                    if (*(a4 + 220))
                    {
                      v21 = 0;
                      v22 = (a4[54] + 2);
                      while (1)
                      {
                        v23 = *(v22 - 1);
                        if (__PAIR64__(*v22, v23) == __PAIR64__(HIWORD(v60), v60))
                        {
                          break;
                        }

                        if (v60 >= v23 && HIWORD(v60) <= *v22)
                        {
                          log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "WARNING : skip subsumed word %d,%d (subsumed by word %d)", v60, HIWORD(v60), v21);
                          break;
                        }

                        ++v21;
                        v22 += 48;
                        if (v20 == v21)
                        {
                          goto LABEL_36;
                        }
                      }
                    }

                    else
                    {
LABEL_36:
                      if (*(a4 + 221))
                      {
                        v24 = a4[54];
                        if (v20 + 2 > *(a4 + 221))
                        {
                          v25 = heap_Realloc(*(*a4 + 8), v24, 96 * *(a4 + 221) + 2016);
                          if (!v25)
                          {
                            goto LABEL_83;
                          }

                          a4[54] = v25;
                          bzero((v25 + 96 * *(a4 + 220)), 0x780uLL);
                          *(a4 + 221) += 20;
                          v24 = a4[54];
                        }
                      }

                      else
                      {
                        v26 = heap_Calloc(*(*a4 + 8), 1, 4801);
                        a4[54] = v26;
                        if (!v26)
                        {
                          goto LABEL_83;
                        }

                        v24 = v26;
                        *(a4 + 221) = 50;
                      }

                      v27 = v58;
                      v28 = (v24 + 96 * *(a4 + 220));
                      *v28 = v60;
                      v28[1] = v17 == 1;
                      if (hlp_NLUStrFind(v58, "POS", &v72, &v71))
                      {
                        v29 = strlen(v72);
                        v30 = heap_Calloc(*(*a4 + 8), 1, (v29 + 1));
                        *(a4[54] + 96 * *(a4 + 220) + 32) = v30;
                        if (!v30)
                        {
                          goto LABEL_83;
                        }

                        strcpy(v30, v72);
                        *(*(a4[54] + 96 * *(a4 + 220) + 32) + v71) = 0;
                        v27 = v58;
                      }

                      if (hlp_NLUStrFind(v27, "S_COMP", &v70, &v69))
                      {
                        v31 = strlen(v70);
                        v32 = heap_Calloc(*(*a4 + 8), 1, (v31 + 1));
                        *(a4[54] + 96 * *(a4 + 220) + 40) = v32;
                        if (!v32)
                        {
                          goto LABEL_83;
                        }

                        strcpy(v32, v70);
                        *(*(a4[54] + 96 * *(a4 + 220) + 40) + v69) = 0;
                        v27 = v58;
                      }

                      if (hlp_NLUStrFind(v27, "E_COMP", &v70, &v69))
                      {
                        v33 = strlen(v70);
                        v34 = heap_Calloc(*(*a4 + 8), 1, (v33 + 1));
                        *(a4[54] + 96 * *(a4 + 220) + 48) = v34;
                        if (!v34)
                        {
                          goto LABEL_83;
                        }

                        strcpy(v34, v70);
                        *(*(a4[54] + 96 * *(a4 + 220) + 48) + v69) = 0;
                      }

                      v56 = v11;
                      v35 = a4[54];
                      v36 = *(a4 + 220);
                      v37 = v35 + 96 * *(a4 + 220);
                      *(v37 + 12) = 0;
                      v38 = (v37 + 12);
                      v38[2] = 0;
                      v39 = v38 + 2;
                      v40 = HIWORD(v60);
                      v41 = a4[60];
                      if (strlen(v41) > HIWORD(v60) && v41[HIWORD(v60)] == 95)
                      {
                        v42 = 1;
                        *v38 = 1;
                      }

                      else
                      {
                        v42 = 0;
                      }

                      if (v60)
                      {
                        if (v41[v60 - 1] == 95)
                        {
                          *v39 = 1;
                          if (v42)
                          {
                            *v38 = 0;
                            *v39 = 0;
                          }
                        }
                      }

                      v43 = v41[v40 - 1];
                      v44 = v43 <= 0x3B && ((1 << v43) & 0xC00100000000000) != 0;
                      v11 = v56;
                      *(v35 + 96 * v36 + 24) = v44;
                      v45 = strlen(__src);
                      v46 = heap_Calloc(*(*a4 + 8), 1, (v45 + 1));
                      *(a4[54] + 96 * *(a4 + 220) + 56) = v46;
                      if (!v46)
                      {
LABEL_83:
                        v9 = 2313166858;
                        log_OutPublic(*(*a4 + 32), "FE_POS", 35000, 0);
                        heap_Free(*(*a4 + 8), v58);
                        return v9;
                      }

                      strcpy(v46, __src);
                      ++*(a4 + 220);
                    }

                    heap_Free(*(*a4 + 8), v58);
                  }
                }

                v9 = (*(a1 + 120))(a2, a3, v68, &v68);
                if ((v9 & 0x80000000) != 0)
                {
                  return v9;
                }
              }

              v8 = (*(a1 + 104))(a2, a3, 2, HIWORD(v68), &v68);
              if ((v8 & 0x80000000) == 0)
              {
                while (v68)
                {
                  v8 = (*(a1 + 168))(a2, a3);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  if (v65 == 6)
                  {
                    v8 = (*(a1 + 168))(a2, a3, v68, 1, 1, &v60, &v66);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    v8 = (*(a1 + 168))(a2, a3, v68, 2, 1, &v60 + 2, &v66);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    if (v60 > HIWORD(v60))
                    {
                      return 2313174705;
                    }

                    v8 = (*(a1 + 176))(a2, a3, v68, 4, &v63, &v66);
                    if ((v8 & 0x80000000) != 0)
                    {
                      return v8;
                    }

                    v47 = addStatCOMPToken(*a4, &v60, v63, a4 + 216);
                    if ((v47 & 0x80000000) != 0)
                    {
                      v9 = v47;
                      if (v47 != -1981800448)
                      {
                        return v9;
                      }
                    }
                  }

                  v9 = (*(a1 + 120))(a2, a3, v68, &v68);
                  if ((v9 & 0x80000000) != 0)
                  {
                    return v9;
                  }
                }

                v8 = validateUserCompoundWords(a4);
                if ((v8 & 0x80000000) == 0)
                {
                  if (v11)
                  {
                    v48 = 0;
                    do
                    {
                      v49 = a4[60];
                      if (*(v49 + v48) == 95)
                      {
                        *(v49 + v48) = 32;
                      }

                      ++v48;
                    }

                    while (v55 != v48);
                  }

                  v50 = *(a4 + 220);
                  if (*(a4 + 220))
                  {
                    v51 = 0;
                    v52 = (a4[54] + 20);
                    do
                    {
                      if (*(v52 - 2) == 1)
                      {
                        v51 = 1;
                      }

                      *(v52 - 1) = v51;
                      v53 = *v52;
                      v52 += 24;
                      if (v53 == 1)
                      {
                        v51 = 0;
                      }

                      --v50;
                    }

                    while (v50);
                  }

                  log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "statCOMP : internal processing=%s", a4[60]);
                  return printstatCOMPSent(*a4, *(a4 + 107), a4 + 51, a4[52], a4 + 212, a4 + 54, a4[60], "after statcomp_getSentenceData()", 0);
                }
              }
            }

            return v8;
          }
        }
      }

LABEL_69:
      v9 = 2313166858;
      log_OutPublic(*(*a4 + 32), "FE_POS", 35000, 0);
    }
  }

  return v9;
}

uint64_t addStatCOMPToken(uint64_t a1, unsigned __int16 *a2, const char *a3, unsigned __int16 *a4)
{
  v6 = a4[4];
  v7 = *a2;
  if (!a4[4])
  {
LABEL_12:
    v11 = a2[1];
LABEL_14:
    v16 = 2313166848;
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", a3, v7, v11);
    if (a4[4])
    {
      v17 = 0;
      v18 = 0;
      do
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "word[%d] %d,%d", v18++, *(*a4 + v17), *(*a4 + v17 + 2));
        v17 += 96;
      }

      while (v18 < a4[4]);
    }

    return v16;
  }

  v8 = 0;
  v9 = v6 + 1;
  v10 = *a4;
  v11 = a2[1];
  v12 = (*a4 + 2);
  while (1)
  {
    v13 = *(v12 - 1);
    if (v7 == v13)
    {
      v9 = v8;
    }

    v14 = *v12;
    if (v11 == v14)
    {
      break;
    }

    if (v11 >= v13 && v11 < v14)
    {
      break;
    }

    v12 += 48;
    ++v8;
    v7 = *a2;
    if (v6 == v8)
    {
      goto LABEL_12;
    }
  }

  if (v6 + 1 == v9)
  {
    goto LABEL_14;
  }

  if (v8 >= v9)
  {
    v19 = 0;
    v20 = (v8 - v9);
    v21 = vdupq_n_s32(v20);
    v22 = (v20 + 4) & 0x1FFFC;
    do
    {
      v23 = v9 + v19;
      v24 = vmovn_s32(vcgeq_u32(v21, vorrq_s8(vdupq_n_s32(v19), xmmword_1C37B17D0)));
      if (v24.i8[0])
      {
        *(v10 + 96 * (v9 + v19) + 8) = 1;
      }

      if (v24.i8[2])
      {
        *(v10 + 96 * (v23 + 1) + 8) = 1;
      }

      if (v24.i8[4])
      {
        *(v10 + 96 * (v23 + 2) + 8) = 1;
      }

      if (v24.i8[6])
      {
        *(v10 + 96 * (v23 + 3) + 8) = 1;
      }

      v19 += 4;
    }

    while (v22 != v19);
  }

  return 0;
}

uint64_t validateUserCompoundWords(uint64_t *a1)
{
  memset(v12, 0, sizeof(v12));
  if (*(a1 + 220))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = a1[54];
      if (*(v6 + v2 + 40))
      {
        if (v5 == 1)
        {
          log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "WARNING : found consecutive S_COMP, assume %s on word %d is incorrect, try to continue...", *(v6 + 96 * v4 + 40), v4);
          v6 = a1[54];
        }

        v5 = 1;
        v4 = v3;
      }

      if (!*(v6 + v2 + 48))
      {
        goto LABEL_13;
      }

      if (v5 != 1)
      {
        break;
      }

      v7 = *(v6 + 96 * v4 + 40);
      if (strcmp(v7, *(v6 + v2 + 48)))
      {
        log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "WARNING : skip user compound word as S_COMP(%s) and E_COMP(%s) fields differ");
LABEL_12:
        v5 = 0;
        goto LABEL_13;
      }

      v8 = strchr(v7, 43);
      if (!v8)
      {
        log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "WARNING : skip user compound word as invalid fields in %s");
        goto LABEL_12;
      }

      *v8 = 0;
      v9 = v8 + 1;
      log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "VALID USER COMPOUND WORD ADD from %d to %d", v4, v3);
      v10 = a1[54];
      *(v10 + 96 * v4 + 88) = 1;
      *(v10 + v2 + 89) = 1;
      result = setCOMPValues(a1, v4, v3, v12, v9, v7, 0, "MARKUP", "USER");
      v5 = 0;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_13:
      ++v3;
      v2 += 96;
      if (v3 >= *(a1 + 220))
      {
        return 0;
      }
    }

    log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "WARNING : skip user compound word as E_COMP(%s) found without starting S_COMP");
    goto LABEL_12;
  }

  return 0;
}

uint64_t printstatCOMPSent(uint64_t a1, int a2, char **a3, char *a4, _WORD *a5, uint64_t *a6, uint64_t a7, const char *a8, int a9)
{
  if (!a2)
  {
    return 0;
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Sentence :%s", a8);
  if (!*(a6 + 4))
  {
    return 0;
  }

  v15 = 0;
  v16 = 0;
  if (a9 != 1)
  {
    v17 = "[%2d] ";
    goto LABEL_6;
  }

  v17 = "statCOMP [%2d] ";
  sprintf(a4, "statCOMP [%2d] ");
  while (1)
  {
    v18 = statcomp_add2Str(a1, a3, a5, a4);
    if ((v18 & 0x80000000) != 0)
    {
      break;
    }

    strncpy(a4, (a7 + *(*a6 + v15)), *(*a6 + v15 + 2) - *(*a6 + v15));
    a4[*(*a6 + v15 + 2) - *(*a6 + v15)] = 0;
    v18 = statcomp_add2Str(a1, a3, a5, a4);
    if ((v18 & 0x80000000) != 0)
    {
      break;
    }

    v18 = statcomp_add2Str(a1, a3, a5, " ");
    if ((v18 & 0x80000000) != 0)
    {
      break;
    }

    v19 = statcomp_add2Str(a1, a3, a5, *(*a6 + v15 + 32));
    if ((v19 & 0x80000000) != 0)
    {
      return v19;
    }

    v20 = *a6;
    if (*(*a6 + v15 + 12) == 1)
    {
      v19 = statcomp_add2Str(a1, a3, a5, " <HYPHEN");
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 20) == 1)
    {
      v19 = statcomp_add2Str(a1, a3, a5, " HYPHEN>");
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 24) == 1)
    {
      v19 = statcomp_add2Str(a1, a3, a5, " ENDINPUNC");
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 8) == 1)
    {
      v19 = statcomp_add2Str(a1, a3, a5, " TOK");
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 88) == 1)
    {
      v19 = statcomp_add2Str(a1, a3, a5, " <CW");
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 72))
    {
      v18 = statcomp_add2Str(a1, a3, a5, " POS:");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v19 = statcomp_add2Str(a1, a3, a5, *(*a6 + v15 + 72));
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 80))
    {
      v18 = statcomp_add2Str(a1, a3, a5, " PROM:");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v19 = statcomp_add2Str(a1, a3, a5, *(*a6 + v15 + 80));
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 89) == 1)
    {
      v19 = statcomp_add2Str(a1, a3, a5, " CW>");
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 56))
    {
      v18 = statcomp_add2Str(a1, a3, a5, " PRON:");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v19 = statcomp_add2Str(a1, a3, a5, *(*a6 + v15 + 56));
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }

      v20 = *a6;
    }

    if (*(v20 + v15 + 64))
    {
      v18 = statcomp_add2Str(a1, a3, a5, " PRON(new):");
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v19 = statcomp_add2Str(a1, a3, a5, *(*a6 + v15 + 64));
      if ((v19 & 0x80000000) != 0)
      {
        return v19;
      }
    }

    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", *a3);
    **a3 = 0;
    ++v16;
    v15 += 96;
    if (v16 >= *(a6 + 4))
    {
      return v19;
    }

LABEL_6:
    sprintf(a4, v17, v16);
  }

  return v18;
}

double statcomp_freeSentenceData(uint64_t a1)
{
  v2 = *(a1 + 408);
  if (v2)
  {
    heap_Free(*(*a1 + 8), v2);
    *(a1 + 408) = 0;
    *(a1 + 424) = 0;
  }

  v3 = *(a1 + 416);
  if (v3)
  {
    heap_Free(*(*a1 + 8), v3);
    *(a1 + 416) = 0;
  }

  v4 = *(a1 + 432);
  if (*(a1 + 440))
  {
    v5 = 0;
    v6 = 80;
    do
    {
      if (*(v4 + v6 - 48))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 48));
        v4 = *(a1 + 432);
        *(v4 + v6 - 48) = 0;
      }

      if (*(v4 + v6 - 8))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 8));
        v4 = *(a1 + 432);
        *(v4 + v6 - 8) = 0;
      }

      if (*(v4 + v6))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6));
        v4 = *(a1 + 432);
        *(v4 + v6) = 0;
      }

      if (*(v4 + v6 - 24))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 24));
        v4 = *(a1 + 432);
        *(v4 + v6 - 24) = 0;
      }

      if (*(v4 + v6 - 16))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 16));
        v4 = *(a1 + 432);
        *(v4 + v6 - 16) = 0;
      }

      if (*(v4 + v6 - 40))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 40));
        v4 = *(a1 + 432);
        *(v4 + v6 - 40) = 0;
      }

      if (*(v4 + v6 - 32))
      {
        heap_Free(*(*a1 + 8), *(v4 + v6 - 32));
        v4 = *(a1 + 432);
        *(v4 + v6 - 32) = 0;
      }

      ++v5;
      v6 += 96;
    }

    while (v5 < *(a1 + 440));
  }

  else if (!v4)
  {
    goto LABEL_25;
  }

  heap_Free(*(*a1 + 8), v4);
  *(a1 + 432) = 0;
LABEL_25:
  v7 = *(a1 + 480);
  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
    *(a1 + 480) = 0;
  }

  result = 0.0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 432) = 0u;
  return result;
}

uint64_t statcomp_processCompounds(void **a1, _DWORD *a2)
{
  v2 = a2;
  v254 = *MEMORY[0x1E69E9840];
  v4 = a1[9];
  v5 = a1[39];
  v6 = a1[40];
  v7 = a1[45];
  v8 = a1[46];
  v247 = 0;
  v243 = 0;
  v244 = 0;
  v241 = 0;
  *a2 = 0;
  v242 = 0;
  v245 = 0;
  v246 = 0;
  log_OutText((*a1)[4], "FE_POS", 5, 0, "Compound Processing : with multi-word window=%d", *(a1 + 172));
  v9 = a1[60];
  a1[56] = v9;
  v10 = strlen(v9);
  v11 = heap_Calloc((*a1)[1], 1, (v10 + 1));
  a1[57] = v11;
  if (!v11)
  {
    goto LABEL_333;
  }

  v12 = *(a1 + 220);
  if (*(a1 + 220))
  {
    v13 = 0;
    v14 = (a1[54] + 4);
    do
    {
      v15 = *v14;
      v14 += 12;
      v13 += strlen(v15) + 1;
      --v12;
    }

    while (v12);
    v16 = v13 + 1;
  }

  else
  {
    v16 = 1;
  }

  v17 = heap_Calloc((*a1)[1], 1, v16);
  a1[58] = v17;
  if (!v17)
  {
LABEL_333:
    v76 = 2313166858;
    log_OutPublic((*a1)[4], "FE_POS", 35000, 0);
    return v76;
  }

  v211 = v7;
  v212 = v6;
  v213 = v5;
  v214 = v4;
  v18 = *(a1 + 220);
  if (!*(a1 + 220))
  {
LABEL_334:
    v76 = printstatCOMPSent(*a1, *(a1 + 107), a1 + 51, a1[52], a1 + 212, a1 + 54, a1[60], "after statcomp_processCompounds()", 1);
    if ((v76 & 0x80000000) == 0)
    {
      goto LABEL_347;
    }

    return v76;
  }

  v19 = 0;
  v191 = 0;
  v20 = 0;
  while (1)
  {
    v21 = a1[54];
    v22 = v20;
    v23 = &v21[12 * v20];
    if (*(v23 + 2) == 1)
    {
      LODWORD(v24) = v20;
      if (v20 < v18)
      {
        v25 = &v21[12 * v20 + 1];
        v24 = v20;
        while (1)
        {
          v26 = *v25;
          v25 += 24;
          if (v26 != 1)
          {
            break;
          }

          if (v18 == ++v24)
          {
            LODWORD(v24) = v18;
            break;
          }
        }
      }

      if (v20 != v24)
      {
        LODWORD(v20) = (__PAIR64__(v24, v21[12 * v24 + 1]) - 1) >> 32;
        LODWORD(v22) = (v24 - (LODWORD(v21[12 * v24 + 1]) == 0));
      }

      v27 = WORD1(v21[12 * v22]);
      v28 = *v23;
      v29 = v27 - v28;
      if ((v29 & 0xFF00) != 0)
      {
        v30 = 256;
      }

      else
      {
        v30 = v29;
      }

      strncpy(a1[52], a1[60] + v28, v30);
      *(a1[52] + v30) = 0;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "skip TOK word %s from word %d to %d");
      goto LABEL_64;
    }

    if (*(v23 + 88) == 1)
    {
      if (v20 < v18)
      {
        v31 = &v21[12 * v20 + 11] + 1;
        while (1)
        {
          v32 = *v31;
          v31 += 96;
          if (v32)
          {
            break;
          }

          if (v18 == ++v22)
          {
            LODWORD(v22) = v18;
            LODWORD(v20) = v18;
            goto LABEL_60;
          }
        }

        LODWORD(v20) = v22;
        LODWORD(v22) = v22;
      }

LABEL_60:
      v42 = WORD1(v21[12 * v22]);
      v43 = *v23;
      v44 = v42 - v43;
      if ((v44 & 0xFF00) != 0)
      {
        v45 = 256;
      }

      else
      {
        v45 = v44;
      }

      strncpy(a1[52], a1[60] + v43, v45);
      *(a1[52] + v45) = 0;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "skip user marked compound word %s from word %d to %d");
      goto LABEL_64;
    }

    *a1[58] = 0;
    *a1[57] = 0;
    v248 = 0;
    v33 = *(a1 + 220);
    v34 = v33 + 1;
    v35 = a1[54];
    if (v33 <= v20)
    {
      v37 = v20;
    }

    else
    {
      v36 = 0;
      v37 = v20;
      while (1)
      {
        v38 = &v35[12 * v37];
        if (*(v38 + 6) == 1 || *(v38 + 88) == 1 || v37 - v19 + 1 >= *(a1 + 172))
        {
          break;
        }

        if (*(v38 + 3) == 1)
        {
          v36 = 1;
          v34 = v37;
        }

        if (HIDWORD(v35[12 * v37 + 2]) == 1)
        {
          v36 = 0;
        }

        if (v33 <= ++v37)
        {
          v37 = *(a1 + 220);
          break;
        }
      }

      if (v37 > v20)
      {
        v37 -= LOBYTE(v35[12 * v37 + 11]) == 1;
      }

      if (v37 > v20)
      {
        v37 -= HIDWORD(v35[12 * v37 + 1]) == 1;
      }

      if (v36 == 1 && !HIDWORD(v35[12 * v37 + 2]))
      {
        v37 = v20;
      }
    }

    v39 = v37 - (v33 == v37);
    if (HIDWORD(v35[12 * v39 + 2]) == 1 && v33 + 1 == v34)
    {
      goto LABEL_64;
    }

    if (v20 <= v39)
    {
      v40 = 0;
      v41 = v20;
      do
      {
        if (HIDWORD(v35[12 * v41 + 1]) == 1)
        {
          v40 = 1;
        }

        ++v41;
      }

      while (v41 <= v39);
      if (v20 <= v39)
      {
        break;
      }
    }

LABEL_56:
    if (v242 == 1)
    {
      v242 = 0;
      heap_Free((*a1)[1], v245);
      v245 = 0;
      if (v246)
      {
        heap_Free((*a1)[1], v246);
        v246 = 0;
      }
    }

LABEL_64:
    v20 = (v20 + 1);
    v19 = v20;
    v18 = *(a1 + 220);
    if (v20 >= v18)
    {
      goto LABEL_334;
    }
  }

  v46 = 0;
  v47 = 0;
  v202 = v19;
  v48 = v39;
  v193 = v2;
  __dst = v8;
  v195 = v19;
  do
  {
    v49 = v48 != v20 && v47 == 0;
    if (!v49)
    {
      break;
    }

    v204 = v48;
    v50 = 3 * v48;
    v238 = v48;
    strncpy(a1[52], a1[60] + LOWORD(a1[54][12 * v22]), WORD1(a1[54][12 * v48]) - LOWORD(a1[54][12 * v22]));
    *(a1[52] + WORD1(a1[54][4 * v50]) - LOWORD(a1[54][12 * v22])) = 0;
    if (v20 <= v238)
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = v20;
      do
      {
        v55 = &a1[54][12 * v54];
        if (*(v55 + 3) == 1)
        {
          v53 = 1;
          v52 = 1;
          ++v51;
        }

        v56 = v53 == 0;
        if (*(v55 + 5) == 1)
        {
          v53 = 0;
          v52 = v56;
        }

        ++v54;
      }

      while (v54 <= v238);
      if (v52 == 1 || v51 >= 2u)
      {
        v196 = v46;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "skip bisected %s", a1[52]);
        LODWORD(v48) = v238;
        goto LABEL_85;
      }
    }

    v241 = 0;
    log_OutText((*a1)[4], "FE_POS", 5, 0, "processing [%d] %s", v195, a1[52]);
    LOWORD(v48) = v238;
    while (1)
    {
LABEL_89:
      if (v40 == 1)
      {
        inited = isCompoundWordMember(a1, 1, v20, v48, &v248, &v247, &v241);
        v59 = "HYPHEN";
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_336;
        }
      }

      else
      {
        inited = isCompoundWordMember(a1, 0, v20, v48, &v248, &v247, &v241);
        v59 = "OPEN";
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_336;
        }
      }

      ++v241;
      if (v248 == 1)
      {
        break;
      }

      v48 = v238;
      if (!v248)
      {
        v196 = v59;
        v155 = a1[54];
        if (HIDWORD(v155[12 * v204 + 2]) == 1)
        {
          if (v20 <= v238)
          {
            do
            {
              if (HIDWORD(v155[12 * v48 + 1]))
              {
                break;
              }

              v48 = (v48 - 1);
            }

            while (v48 >= v20);
          }

          v47 = 0;
          goto LABEL_86;
        }

LABEL_85:
        v47 = 0;
        v48 = (v48 - 1);
        goto LABEL_86;
      }
    }

    v196 = v59;
    v60 = v247;
    v234 = 15 * v247;
    v61 = strcpy(v211, &v213[*(v212 + HIDWORD(v214[v234]))]);
    strcpy(&v211[strlen(v61)], "_firstword");
    v62 = strcpy(__dst, &v213[*(v212 + HIDWORD(v214[v234]))]);
    strcpy(&__dst[strlen(v62)], "_lastword");
    v63 = a1[9];
    v225 = a1[40];
    v227 = a1[39];
    v248 = 0;
    strncpy(a1[52], a1[60] + LOWORD(a1[54][12 * v22]), WORD1(a1[54][12 * v204]) - LOWORD(a1[54][12 * v22]));
    *(a1[52] + WORD1(a1[54][12 * v204]) - LOWORD(a1[54][12 * v22])) = 0;
    v203 = v60;
    log_OutText((*a1)[4], "FE_POS", 5, 0, "  [FILTER] Checking Compound Word Membership Filter for [%d] word %s compound rule %d", v202, a1[52], v60);
    v64 = &v63[v234];
    if (!*(v64 + 32))
    {
      v76 = 0;
      v2 = v193;
LABEL_267:
      v153 = 0;
      v248 = 0;
      v154 = "  [FILTER] FAIL";
LABEL_268:
      log_OutText((*a1)[4], "FE_POS", 5, 0, v154, 0);
      goto LABEL_269;
    }

    v229 = 0;
    v65 = 0;
    v190 = 0;
    v192 = 0;
    v235 = 0;
    v66 = v64[7];
    v68 = v225;
    v67 = v227;
    v224 = v64;
    v215 = v20;
    do
    {
      v222 = 8 * v65;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "  check filter %s", &v67[*(v68 + *(v66 + 8 * v65))]);
      v69 = v64;
      v70 = (v64[7] + 8 * v65);
      v71 = &v67[*(v68 + *v70)];
      v223 = v65;
      if (!strcmp("ALGO_INLEXICON", v71))
      {
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    call ALGO_INLEXICON with ARG %s", &v67[*(v68 + v70[1])]);
        v72 = *(v68 + *(v69[7] + 8 * v65 + 4));
        v73 = a1[9];
        v74 = a1[39];
        v75 = a1[40];
        v251 = 0;
        v249 = 0;
        v248 = 0;
        strncpy(a1[57], a1[60] + LOWORD(a1[54][12 * v22]), WORD1(a1[54][12 * v204]) - LOWORD(a1[54][12 * v22]));
        *(a1[57] + WORD1(a1[54][12 * v204]) - LOWORD(a1[54][12 * v22])) = 0;
        strncpy(__s1, a1[57], 0x7FuLL);
        v253 = 0;
        inited = (a1[50][18])(a1[48], a1[49], "normal", __s1, 128);
        if ((inited & 0x80000000) != 0)
        {
          goto LABEL_336;
        }

        v250 = -1;
        v76 = (a1[50][12])(a1[48], a1[49], v74 + *(v75 + HIDWORD(v73[15 * v203])), __s1, &v251, &v250, &v249);
        v20 = v215;
        if ((v76 & 0x80000000) != 0)
        {
          goto LABEL_347;
        }

        if (v250 == 1 && v251)
        {
          v77 = strchr(*v251, v249);
          v68 = v225;
          if (!v77)
          {
            goto LABEL_342;
          }

          v78 = v77;
          *v77 = 0;
          v79 = strcmp(*v251, &v227[v72]);
          v229 = 0;
          if (!v79)
          {
            v229 = 1;
            v248 = 1;
          }

          v80 = strchr(v78 + 1, v249);
          if (!v80)
          {
LABEL_343:
            v185 = 35003;
            goto LABEL_344;
          }

          v81 = v80;
          *v80 = 0;
          if (!v79)
          {
            v136 = strlen(v78 + 1);
            v137 = heap_Calloc((*a1)[1], 1, (v136 + 1));
            v245 = v137;
            v67 = v227;
            if (!v137)
            {
              goto LABEL_340;
            }

            strcpy(v137, v78 + 1);
            v242 = 1;
            v138 = strchr(v81 + 1, v249);
            if (v138)
            {
              *v138 = 0;
              v139 = strlen(v81 + 1);
              v64 = v224;
              if (v139)
              {
                v140 = heap_Calloc((*a1)[1], 1, (v139 + 1));
                v246 = v140;
                if (!v140)
                {
                  goto LABEL_340;
                }

                strcpy(v140, v81 + 1);
                v242 = 1;
              }
            }

            else
            {
              v64 = v224;
            }

            v117 = v222;
            v148 = *(v64[7] + v222);
            LODWORD(v244) = *v64;
            v243 = v148;
            v229 = 1;
            goto LABEL_234;
          }

          v82 = strchr(v80 + 1, v249);
          v67 = v227;
          if (v82)
          {
            *v82 = 0;
          }
        }

        else
        {
          v229 = 0;
          v248 = 0;
          v68 = v225;
          v67 = v227;
        }

LABEL_232:
        v64 = v224;
        goto LABEL_233;
      }

      if (!strcmp("ALGO_EXTENDEDLEXMATCH", v71))
      {
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    call ALGO_EXTENDEDLEXMATCH with ARG %s", &v67[*(v68 + v70[1])]);
        v220 = 0;
        v194 = 0;
        __s2 = 0;
        v206 = 0;
        v83 = 0;
        v216 = 0;
        v208 = 0;
        v218 = 0;
        v64 = v224;
        v217 = *(v68 + *(v224[7] + 8 * v65 + 4));
        v209 = a1[46];
        v210 = a1[45];
        v251 = 0;
        v249 = 0;
        v248 = 0;
        v84 = 1;
        v20 = v215;
        while (1)
        {
          v230 = v83;
          v85 = v84;
          v250 = -1;
          v86 = a1[57];
          v87 = a1[60];
          v88 = a1[54];
          if (v85)
          {
            strncpy(v86, &v87[LOWORD(v88[12 * v22])], WORD1(v88[12 * v22]) - LOWORD(v88[12 * v22]));
            *(a1[57] + WORD1(a1[54][12 * v22]) - LOWORD(a1[54][12 * v22])) = 0;
            v89 = (a1[50][12])(a1[48], a1[49], v210, a1[57], &v251, &v250, &v249);
            v76 = v89;
            if ((v89 & 0x80000000) != 0)
            {
              goto LABEL_347;
            }

            if (v250 != 1 || (v90 = "MATCH ON FIRST WORD", !v251))
            {
              v235 = v89;
              v91 = v230;
              goto LABEL_152;
            }
          }

          else
          {
            strncpy(v86, &v87[LOWORD(v88[12 * v204])], WORD1(v88[12 * v204]) - LOWORD(v88[12 * v204]));
            *(a1[57] + WORD1(a1[54][12 * v204]) - LOWORD(a1[54][12 * v204])) = 0;
            strncpy(__s1, a1[57], 0x7FuLL);
            v253 = 0;
            inited = (a1[50][18])(a1[48], a1[49], "normal", __s1, 128);
            if ((inited & 0x80000000) != 0)
            {
              goto LABEL_336;
            }

            v92 = (a1[50][12])(a1[48], a1[49], v209, __s1, &v251, &v250, &v249);
            v76 = v92;
            if ((v92 & 0x80000000) != 0)
            {
              goto LABEL_347;
            }

            if (v250 != 1 || (v90 = "MATCH ON LAST WORD", !v251))
            {
              v235 = v92;
              v91 = v230;
LABEL_224:
              v108 = 0;
              v146 = v218 == 1;
              if (v218 == 1)
              {
                v117 = v222;
                v150 = v208;
                if (v208)
                {
                  v149 = v91;
                  v91 = __s2;
                  goto LABEL_244;
                }

                v248 = 1;
                v245 = v91;
                v147 = v216;
LABEL_247:
                v242 = v147;
                v67 = v227;
                goto LABEL_248;
              }

              v149 = v91;
              v91 = __s2;
              v117 = v222;
              v150 = v208;
LABEL_244:
              if (!v218 && v150 == 1)
              {
                v248 = 1;
                v245 = v91;
                v147 = v206;
                goto LABEL_247;
              }

              if (v150 != 1)
              {
                v146 = 0;
              }

              v67 = v227;
              if (v146)
              {
                v248 = 1;
                v232 = v149;
                if (!strcmp(v149, v91))
                {
                  v245 = v232;
                  v242 = v216;
                  heap_Free((*a1)[1], v91);
                  goto LABEL_262;
                }

                if (v194 > v108)
                {
                  v245 = v232;
                  v242 = v216;
                  heap_Free((*a1)[1], v91);
                  log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCH in FIRST and LAST word PRM; chose FIRST on frequency (%d > %d) set PRM=%s");
                  goto LABEL_261;
                }

                if (v108 > v194)
                {
                  v245 = v91;
                  v242 = v206;
                  heap_Free((*a1)[1], v232);
                  log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCH in FIRST and LAST word PRM; chose LAST on frequency (%d > %d) set PRM=%s");
LABEL_261:
                  v67 = v227;
LABEL_262:
                  v229 = v248;
                  v117 = v222;
                  v76 = v235;
                  if (v248 != 1)
                  {
                    goto LABEL_234;
                  }

LABEL_249:
                  v151 = *(v64[7] + v117);
                  LODWORD(v244) = *v64;
                  v243 = v151;
                  v229 = 1;
                  goto LABEL_234;
                }

                heap_Free((*a1)[1], v232);
                heap_Free((*a1)[1], v91);
                v152 = heap_Calloc((*a1)[1], 1, 3);
                v245 = v152;
                v67 = v227;
                if (v152)
                {
                  strcpy(v152, "LS");
                  v242 = 1;
                  v248 = 1;
                  log_OutText((*a1)[4], "FE_POS", 5, 0, "MISMATCH in FIRST and LAST word PRM; set default=%s", v152);
                  v117 = v222;
LABEL_248:
                  v76 = v235;
                  goto LABEL_249;
                }

LABEL_340:
                v185 = 35000;
                v76 = 2313166858;
LABEL_345:
                v186 = (*a1)[4];
LABEL_346:
                log_OutPublic(v186, "FE_POS", v185, 0);
                goto LABEL_347;
              }

              v229 = 0;
              v248 = 0;
LABEL_222:
              v76 = v235;
              goto LABEL_234;
            }
          }

          log_OutText((*a1)[4], "FE_POS", 5, 0, v90, 0);
          v93 = strchr(*v251, v249);
          if (!v93)
          {
            v185 = 35002;
LABEL_339:
            v76 = 2313166848;
            goto LABEL_345;
          }

          *v93 = 0;
          v94 = v93 + 1;
          v95 = strchr(v93 + 1, v249);
          if (!v95)
          {
            v185 = 35003;
            goto LABEL_339;
          }

          v96 = v95;
          v235 = v76;
          v97 = strcmp(*v251, &v227[v217]);
          *v96 = 0;
          if (v97 && v220 != 1)
          {
            v91 = v230;
LABEL_151:
            v64 = v224;
            v68 = v225;
            goto LABEL_152;
          }

          v98 = strlen(v94);
          v99 = heap_Calloc((*a1)[1], 1, (v98 + 1));
          if (!v99)
          {
            goto LABEL_340;
          }

          v91 = v99;
          v100 = __s2;
          if ((v85 & 1) == 0)
          {
            v100 = v99;
          }

          v201 = v100;
          v101 = v206;
          if ((v85 & 1) == 0)
          {
            v101 = 1;
          }

          v200 = v101;
          v102 = v230;
          if (v85)
          {
            v102 = v99;
          }

          v199 = v102;
          v103 = v216;
          if (v85)
          {
            v103 = 1;
          }

          v198 = v103;
          if (v85)
          {
            v104 = v208;
          }

          else
          {
            v104 = 1;
          }

          if (v85)
          {
            v105 = 1;
          }

          else
          {
            v105 = v218;
          }

          strcpy(v99, v94);
          v106 = strchr(v96 + 1, v249);
          if (!v106)
          {
            v220 = 1;
            v218 = v105;
            v208 = v104;
            v216 = v198;
            v91 = v199;
            v206 = v200;
            __s2 = v201;
            goto LABEL_151;
          }

          *v106 = 0;
          v107 = LH_atoi(v96 + 1);
          v108 = v107;
          v64 = v224;
          if ((v85 & 1) == 0)
          {
            v146 = v218 == 1;
            v150 = 1;
            v206 = 1;
            v68 = v225;
            v117 = v222;
            v149 = v230;
            goto LABEL_244;
          }

          v220 = 1;
          v218 = 1;
          v216 = 1;
          v194 = v107;
          v68 = v225;
LABEL_152:
          v84 = 0;
          v83 = v91;
          if ((v85 & 1) == 0)
          {
            goto LABEL_224;
          }
        }
      }

      v20 = v215;
      if (!strcmp("ALGO_EXTENDEDFIRSTWORDLEXMATCH", v71))
      {
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    call ALGO_EXTENDEDFIRSTWORDLEXMATCH with ARG %s", &v67[*(v68 + v70[1])]);
        v109 = *(v68 + *(v224[7] + 8 * v65 + 4));
        v110 = a1[45];
        *__s1 = 0;
        LOBYTE(v250) = 0;
        v248 = 0;
        LOWORD(v251) = -1;
        strncpy(a1[57], a1[60] + LOWORD(a1[54][12 * v22]), WORD1(a1[54][12 * v22]) - LOWORD(a1[54][12 * v22]));
        *(a1[57] + WORD1(a1[54][12 * v22]) - LOWORD(a1[54][12 * v22])) = 0;
        v76 = (a1[50][12])(a1[48], a1[49], v110, a1[57], __s1, &v251, &v250);
        if ((v76 & 0x80000000) != 0)
        {
          goto LABEL_347;
        }

        if (v251 != 1 || !*__s1)
        {
          v229 = 0;
          v248 = 0;
          v64 = v224;
LABEL_200:
          v67 = v227;
LABEL_233:
          v117 = v222;
          goto LABEL_234;
        }

        log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCH ON FIRST WORD", 0);
        v111 = strchr(**__s1, v250);
        if (v111)
        {
          v112 = v111;
          *v111 = 0;
          v113 = strcmp(**__s1, &v227[v109]);
          v229 = 0;
          if (!v113)
          {
            v229 = 1;
            v248 = 1;
          }

          v114 = strchr(v112 + 1, v250);
          v64 = v224;
          if (v114)
          {
            *v114 = 0;
            if (!v113)
            {
              v115 = strlen(v112 + 1);
              v116 = heap_Calloc((*a1)[1], 1, (v115 + 1));
              v245 = v116;
              v67 = v227;
              if (v116)
              {
                strcpy(v116, v112 + 1);
                LODWORD(v244) = *v224;
                v117 = v222;
                v118 = *(v224[7] + v222);
                v229 = 1;
                v242 = 1;
                v243 = v118;
                goto LABEL_234;
              }

              goto LABEL_340;
            }

            goto LABEL_200;
          }

          goto LABEL_343;
        }

LABEL_342:
        v185 = 35002;
LABEL_344:
        v76 = 2313166848;
        goto LABEL_345;
      }

      if (strcmp("FILTER_NO_TOKEN_NO_ABBREVIATION", v71))
      {
        if (strcmp("FILTER_BLOCK_ACROSS_TOKEN_BOUNDARIES", v71))
        {
          if (!strcmp("ELSE_IGNORE", v71))
          {
            v190 = 1;
          }

          else
          {
            log_OutText((*a1)[4], "FE_POS", 5, 0, "    UNIMPLEMENTED filter %s - skip", v71);
          }

          v64 = v224;
          v117 = 8 * v65;
          goto LABEL_222;
        }

        log_OutText((*a1)[4], "FE_POS", 5, 0, "    call FILTER_BLOCK_ACROSS_TOKEN_BOUNDARIES", 0);
        v248 = 1;
        v141 = a1[54];
        v142 = v215;
        while (1)
        {
          v143 = v142;
          v144 = 3 * v142;
          log_OutText((*a1)[4], "FE_POS", 5, 0, "    word %d token=%d", v142, LODWORD(v141[12 * v142 + 1]));
          v141 = a1[54];
          if (LODWORD(v141[4 * v144 + 1]) == 1 && (v143 != v215 && !LODWORD(v141[12 * v143 - 11]) || v143 != v238 && !LODWORD(v141[12 * v143 + 13])))
          {
            break;
          }

          v142 = v143 + 1;
          if ((v143 + 1) > v238)
          {
            v76 = 0;
            v229 = 1;
            v192 = 1;
            goto LABEL_231;
          }
        }

        v229 = 0;
        v76 = 0;
        v248 = 0;
LABEL_231:
        v67 = v227;
        goto LABEL_232;
      }

      log_OutText((*a1)[4], "FE_POS", 5, 0, "    call FILTER_NO_TOKEN_NO_ABBREVIATION", 0);
      v119 = 0;
      v231 = 0;
      v120 = 0;
      v236 = 0;
      v221 = *(a1 + 174);
      v219 = a1[44];
      v248 = 1;
      v121 = v215;
      v122 = a1[54];
      do
      {
        v123 = v121;
        v124 = 3 * v121;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    word %d token=%d singleChar=%d hyphen=%d", v121, LODWORD(v122[4 * v124 + 1]), LOWORD(v122[4 * v124]) + 1 == WORD1(v122[4 * v124]), LODWORD(v122[4 * v124 + 2]));
        v122 = a1[54];
        v125 = &v122[4 * v124];
        if (*(v125 + 2) == 1)
        {
          v135 = 0;
          v229 = 0;
          v248 = 0;
          goto LABEL_215;
        }

        if (*(v125 + 4) == 1)
        {
          v126 = v231 + 1;
        }

        else
        {
          v126 = v231;
        }

        v231 = v126;
        v127 = v238;
        if (v123 == v238)
        {
          strncpy(a1[52], a1[60] + *v125, v125[1] - *v125);
          v128 = &a1[54][12 * v123];
          *(a1[52] + v128[1] - *v128) = 0;
          strncpy(__s1, a1[52], 0x7FuLL);
          v253 = 0;
          v236 = (a1[50][18])(a1[48], a1[49], "normal", __s1, 128);
          if ((v236 & 0x80000000) != 0)
          {
            v76 = v236;
            goto LABEL_347;
          }

          log_OutText((*a1)[4], "FE_POS", 5, 0, "    check canonical form %s for last word (in case abbreviation)", __s1);
          v129 = v221;
          if (v221)
          {
            v130 = 0;
            v131 = v219;
            do
            {
              v132 = strstr(__s1, *v131);
              if (v132)
              {
                v133 = v132 - __s1 == 1;
              }

              else
              {
                v133 = 0;
              }

              if (v133)
              {
                *v132 = 0;
                if (LODWORD(a1[54][12 * v123 + 2]) == 1)
                {
                  ++v119;
                }

                v120 = v120;
                v130 = 1;
              }

              ++v131;
              --v129;
            }

            while (v129);
            if (!v130)
            {
              v120 = 0;
            }

            v68 = v225;
          }

          else
          {
            v120 = 0;
          }

          v122 = a1[54];
          if (LOWORD(v122[12 * v123]) + 1 == WORD1(v122[12 * v123]))
          {
            v127 = v238;
          }

          else
          {
            v134 = strlen(__s1);
            v127 = v238;
            if (v134 != 1)
            {
              goto LABEL_196;
            }
          }
        }

        else if (*v125 + 1 != v125[1])
        {
          goto LABEL_196;
        }

        if (LODWORD(v122[12 * v123 + 2]) == 1)
        {
          ++v119;
        }

        if (v123 == v215)
        {
          v120 = 1;
        }

LABEL_196:
        v121 = v123 + 1;
      }

      while ((v123 + 1) <= v127);
      if (v120)
      {
        v248 = 0;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    found abbreviation", 0);
        v135 = 0;
        v229 = 0;
LABEL_215:
        v67 = v227;
        goto LABEL_216;
      }

      v67 = v227;
      if (v119 == v231)
      {
        v248 = 0;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "    found abbreviation (countHyphenSingleChar=%d,countHyphen=%d)", v231, v231);
        v135 = 0;
        v229 = 0;
      }

      else
      {
        v135 = 1;
        v229 = 1;
      }

LABEL_216:
      v64 = v224;
      v117 = v222;
      v76 = v236;
      if ((v236 & 0x80000000) != 0)
      {
        goto LABEL_347;
      }

      v49 = v135 == 0;
      v145 = v192;
      if (!v49)
      {
        v145 = 1;
      }

      v192 = v145;
LABEL_234:
      v66 = v64[7];
      if (!strncmp(&v67[*(v68 + *(v66 + v117))], "FILTER_", 7uLL))
      {
        if (v229)
        {
          goto LABEL_238;
        }

        v154 = "  [FILTER] FAIL";
LABEL_277:
        v153 = v229 == 1;
        v2 = v193;
        goto LABEL_268;
      }

      if (v229 == 1)
      {
        v154 = "  [FILTER] SUCCESS";
        goto LABEL_277;
      }

LABEL_238:
      v235 = v76;
      v65 = v223 + 1;
    }

    while (v223 + 1 < *(v64 + 32));
    if (v192 != 1)
    {
      v2 = v193;
      v76 = v235;
      goto LABEL_267;
    }

    v2 = v193;
    v76 = v235;
    if (v190 == 1)
    {
      v153 = 0;
      v248 = 0;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "  [FILTER] SUCCESS but ELSE_IGNORE set so FAIL", 0);
LABEL_269:
      v48 = v238;
      if ((v76 & 0x80000000) != 0)
      {
        goto LABEL_347;
      }

      if (v153)
      {
        v47 = 1;
        v191 = v238;
        goto LABEL_86;
      }

      goto LABEL_89;
    }

    v47 = 1;
    v248 = 1;
    log_OutText((*a1)[4], "FE_POS", 5, 0, "  [FILTER] SUCCESS", 0);
    v48 = v238;
    v191 = v238;
    if ((v235 & 0x80000000) != 0)
    {
      goto LABEL_347;
    }

LABEL_86:
    v19 = v195;
    v46 = v196;
    v8 = __dst;
  }

  while (v48 >= v20);
  if (v47 != 1)
  {
    goto LABEL_56;
  }

  v197 = v46;
  log_OutText((*a1)[4], "FE_POS", 5, 0, "COMPOUND WORD SUCCESSFULLY PROCESSED %d to %d", v19, v191);
  v239 = v247;
  v156 = &a1[9][15 * v247];
  if (*(v156 + 48))
  {
    v157 = 0;
    v158 = 0;
    v159 = a1[39];
    v160 = a1[40];
    while (1)
    {
      v161 = v156[11];
      v162 = &v159[*(v160 + *(v161 + v157))];
      if (!strcmp("SETDEFAULT", v162))
      {
        break;
      }

      log_OutText((*a1)[4], "FE_POS", 5, 0, "UNIMPLEMENTED POS rule %s %s - skip", v162, &v159[*(v160 + *(v161 + v157 + 4))]);
      ++v158;
      v157 += 8;
      if (v158 >= *(v156 + 48))
      {
        goto LABEL_290;
      }
    }

    v228 = &v159[*(v160 + *(v161 + v157 + 4))];
    log_OutText((*a1)[4], "FE_POS", 5, 0, "SET SETDEFAULT POS = %s", v228);
  }

  else
  {
LABEL_290:
    log_OutText((*a1)[4], "FE_POS", 5, 0, "SET HARDCODED DEFAULT POS %s", "NN");
    v228 = "NN";
  }

  v163 = &a1[9][15 * v239];
  v164 = *(v163 + 56);
  if (!v164)
  {
LABEL_311:
    v176 = "LS";
    log_OutText((*a1)[4], "FE_POS", 5, 0, "SET HARDCODED DEFAULT PROM %s", "LS");
    v177 = 0;
    v178 = "DEFAULT";
LABEL_312:
    v2 = v193;
LABEL_313:
    v170 = a1[54];
    LOBYTE(v170[12 * v22 + 11]) = 1;
    BYTE1(v170[12 * v191 + 11]) = 1;
    v171 = v20;
    LODWORD(v20) = v191;
    inited = setCOMPValues(a1, v171, v191, &v242, v228, v176, v177, v178, v197);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_336;
    }

    *v2 = 1;
    v8 = __dst;
    goto LABEL_56;
  }

  v165 = 0;
  v166 = 0;
  v226 = a1[20];
  v167 = a1[40];
  v240 = a1[39];
  v237 = v242;
  v233 = v243;
  while (2)
  {
    v168 = v163[13];
    v169 = &v240[*(v167 + *(v168 + v165))];
    if (!strcmp("MATCHED_ALGO_INLEXICON", v169))
    {
      if (v237 == 1 && !strcmp("ALGO_INLEXICON", &v240[*(v167 + v233)]))
      {
        v176 = v245;
        log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCHED_ALGO_INLEXICON : CACHED(ALGO_INLEXICON) PROM = %s", v245);
        v177 = v246;
        v178 = "LEX";
        goto LABEL_312;
      }

LABEL_310:
      ++v166;
      v165 += 8;
      if (v166 >= v164)
      {
        goto LABEL_311;
      }

      continue;
    }

    break;
  }

  if (!strcmp("MATCHED_ALGO_EXTENDEDLEXMATCH", v169))
  {
    if (v237 == 1 && !strcmp("ALGO_EXTENDEDLEXMATCH", &v240[*(v167 + v233)]))
    {
      v176 = v245;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCHED_ALGO_EXTENDEDLEXMATCH : CACHED(ALGO_EXTENDEDLEXMATCH) PROM = %s", v245);
      v177 = 0;
      v178 = "EXTENDEDLEX";
      goto LABEL_312;
    }

    goto LABEL_310;
  }

  if (!strcmp("MATCHED_ALGO_EXTENDEDFIRSTWORDLEXMATCH", v169))
  {
    if (v237 == 1 && !strcmp("ALGO_EXTENDEDFIRSTWORDLEXMATCH", &v240[*(v167 + v233)]))
    {
      v176 = v245;
      log_OutText((*a1)[4], "FE_POS", 5, 0, "MATCHED_ALGO_EXTENDEDFIRSTWORDLEXMATCH : CACHED(ALGO_EXTENDEDFIRSTWORDLEXMATCH) PROM = %s", v245);
      v177 = 0;
      v178 = "EXTENDEDFIRSTWORDLEX";
      goto LABEL_312;
    }

    goto LABEL_310;
  }

  if (strcmp("IGTREE", v169))
  {
    if (!strcmp("SETDEFAULT", v169))
    {
      v176 = &v240[*(v167 + *(v168 + v165 + 4))];
      log_OutText((*a1)[4], "FE_POS", 5, 0, "SET SETDEFAULT PROM = %s", v176);
      v177 = 0;
      v178 = "DEFAULT";
      v2 = v193;
      goto LABEL_313;
    }

    log_OutText((*a1)[4], "FE_POS", 5, 0, "UNIMPLEMENTED PROM rule %s - skip", v169);
    v164 = *(v163 + 56);
    goto LABEL_310;
  }

  v172 = *(a1 + 72);
  v173 = a1[20];
  if (*(a1 + 72))
  {
    v174 = 0;
    v175 = *(v167 + *(v168 + v165 + 4));
    while (strcmp(v173[v174], &v240[v175]))
    {
      if (v172 == ++v174)
      {
        goto LABEL_319;
      }
    }
  }

  else
  {
LABEL_319:
    LOWORD(v174) = 0;
  }

  v179 = v174;
  v180 = a1[21][v174];
  v181 = heap_Calloc((*a1)[1], 1, 8 * *(v180 + 1296) - 8);
  v182 = *a1;
  if (!v181)
  {
    v76 = 2313166858;
    v186 = *(v182 + 32);
    v185 = 35000;
    goto LABEL_346;
  }

  inited = statcomp_initFeatureVector(v182, v181, (*(v180 + 1296) - 1));
  if ((inited & 0x80000000) != 0)
  {
LABEL_336:
    v76 = inited;
    goto LABEL_347;
  }

  *__s1 = 0;
  v183 = setStatCOMPFeatureVector(v174, a1, v20, v191, v181);
  if ((v183 & 0x80000000) != 0 || (v183 = igtree_Process(v180, v181, __s1), (v183 & 0x80000000) != 0))
  {
    v184 = v183;
    v176 = 0;
  }

  else
  {
    v176 = *__s1;
    v184 = statcomp_dumpFeatureVectorAndResult(*a1, *(a1 + 107), a1 + 51, a1 + 212, "IGTREE RESULT=", v173[v174], v180, v181, *__s1);
  }

  statcomp_freeFeatureVector(*a1, v181, (*(v180 + 1296) - 1));
  heap_Free((*a1)[1], v181);
  v76 = v184;
  if ((v184 & 0x80000000) == 0)
  {
    v2 = v193;
    v178 = v226[v179];
    if (*v176 == 61 && !v176[1])
    {
      v176 = "LS";
      log_OutText((*a1)[4], "FE_POS", 5, 0, "OVERRIDE IGTEE NULL VALUE : SET DEFAULT PROM %s");
    }

    else
    {
      log_OutText((*a1)[4], "FE_POS", 5, 0, "SET IGTREE %s PROM = %s");
    }

    v177 = 0;
    goto LABEL_313;
  }

LABEL_347:
  if (v245)
  {
    heap_Free((*a1)[1], v245);
    if (v246)
    {
      heap_Free((*a1)[1], v246);
    }
  }

  v187 = a1[57];
  if (v187)
  {
    heap_Free((*a1)[1], v187);
    a1[57] = 0;
  }

  v188 = a1[58];
  if (v188)
  {
    heap_Free((*a1)[1], v188);
    a1[58] = 0;
  }

  return v76;
}

uint64_t isCompoundWordMember(uint64_t a1, int a2, uint64_t a3, unsigned int a4, _DWORD *a5, _WORD *a6, unsigned __int16 *a7)
{
  memcpy(__dst, (a1 + 8), 0x178uLL);
  v13 = a4 - a3 + 1;
  v53 = 0uLL;
  *a5 = 0;
  v14 = 96 * a3;
  strncpy(*(a1 + 416), (*(a1 + 480) + *(*(a1 + 432) + v14)), *(*(a1 + 432) + 96 * a4 + 2) - *(*(a1 + 432) + v14));
  *(*(a1 + 416) - *(*(a1 + 432) + v14) + *(*(a1 + 432) + 96 * a4 + 2)) = 0;
  v49 = a3;
  log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] Check word[%d] %s %d words", a3, *(a1 + 416), v13);
  matched = 0;
  v16 = &__dst[12];
  v17 = &__dst[13];
  if (a2)
  {
    v16 = &__dst[10];
    v17 = &__dst[11];
  }

  v48 = a7;
  v18 = *a7;
  v51 = *v17;
  if (v18 >= v51)
  {
    goto LABEL_51;
  }

  v19 = a4;
  matched = 0;
  v44 = a4;
  v20 = v13;
  v50 = *v16;
  v46 = a5;
  v45 = v19;
  while (1)
  {
    v21 = *(v50 + 2 * v18);
    v22 = (__dst[8] + 120 * v21);
    if (v20 != *(v22 + 16))
    {
      goto LABEL_50;
    }

    v52 = v18;
    log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "    TRYING RULE label=%s (%d words) compound word rule idx=%d", (__dst[38] + *(__dst[39] + 4 * *v22)), v20, v21);
    if (!v20)
    {
      break;
    }

    v23 = 0;
    v24 = 0;
    v25 = *(a1 + 432);
    v26 = 96 * v49;
    v27 = v49;
    do
    {
      if (*(v25 + v26 + 12) == 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v24;
      }

      if (a2)
      {
        v29 = *(*(__dst[8] + 120 * v21 + 8) + 4 * v23);
        v30 = v29 == 1 && v28 == 0;
        v31 = "      Membership fails on wordType. Word %d is not hyphenated";
        if (v30 || (!v29 ? (v32 = v28 == 1) : (v32 = 0), v31 = "      Membership fails on wordType. Word %d should not be hyphenated)", v32))
        {
LABEL_21:
          log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, v31, v27);
          v33 = 0;
          goto LABEL_24;
        }
      }

      else
      {
        v31 = "      Membership fails on wordType. Word %d is hyphenated";
        if (v28 == 1)
        {
          goto LABEL_21;
        }
      }

      v33 = 1;
LABEL_24:
      v25 = *(a1 + 432);
      if (*(v25 + v26 + 20) == 1)
      {
        v24 = 0;
      }

      else
      {
        v24 = v28;
      }

      if (!v33)
      {
        break;
      }

      ++v23;
      v27 = (v27 + 1);
      v26 += 96;
    }

    while (v23 < v20);
    if (v33)
    {
      break;
    }

LABEL_49:
    a5 = v46;
    v18 = v52;
LABEL_50:
    if (++v18 == v51)
    {
LABEL_51:
      log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] FAIL", 0);
      *a5 = 0;
      return matched;
    }
  }

  if (*(__dst[8] + 120 * v21 + 32))
  {
    v34 = 0;
    v35 = 0;
    v36 = 96 * v49 + 32;
    while (1)
    {
      strncpy(*(a1 + 456), (*(a1 + 480) + *(*(a1 + 432) + v36 - 32)), *(*(a1 + 432) + v36 - 30) - *(*(a1 + 432) + v36 - 32));
      *(*(a1 + 456) - *(*(a1 + 432) + v36 - 32) + *(*(a1 + 432) + v36 - 30)) = 0;
      strcpy(*(a1 + 464), *(*(a1 + 432) + v36));
      v37 = " ";
      if (*(*(a1 + 432) + v36 - 24) == 1)
      {
        v37 = "1";
      }

      *(a1 + 472) = v37;
      WORD2(v53) = v49 + v35;
      LODWORD(v53) = 2;
      *(&v53 + 6) = 0;
      HIDWORD(v53) = 0;
      matched = statcomp_matchRule(*(a1 + 428), (a1 + 408), (a1 + 424), *(a1 + 416), __dst, a1 + 432, &v53, (*(__dst[8] + 120 * v21 + 24) + v34), &v53 + 3);
      if ((matched & 0x80000000) != 0)
      {
        break;
      }

      v38 = *(__dst[0] + 32);
      if (HIDWORD(v53) != 1)
      {
        log_OutText(v38, "FE_POS", 5, 0, "      Membership rule %d FAILS", v35);
        log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "    Membership FAIL on WORDN criteria - try extra rules...", 0);
        if (!*(__dst[8] + 120 * v21 + 48))
        {
          log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "      no extra membership rules - FAIL", 0);
          log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] FAIL", 0);
          goto LABEL_49;
        }

        strncpy(*(a1 + 456), (*(a1 + 480) + *(*(a1 + 432) + 96 * v49)), *(*(a1 + 432) + 96 * v44 + 2) - *(*(a1 + 432) + 96 * v49));
        *(*(a1 + 456) - *(*(a1 + 432) + 96 * v49) + *(*(a1 + 432) + 96 * v44 + 2)) = 0;
        strcpy(*(a1 + 464), *(*(a1 + 432) + 96 * v49 + 32));
        if (v45 >= (v49 + 1))
        {
          v39 = v49 + 1;
          do
          {
            *(*(a1 + 464) + strlen(*(a1 + 464))) = 32;
            strcat(*(a1 + 464), *(*(a1 + 432) + 96 * v39++ + 32));
          }

          while (v45 >= v39);
        }

        log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "      apply %d extra membership rules on ORT %s and POS %s", *(__dst[8] + 120 * v21 + 48), *(a1 + 456), *(a1 + 464));
        v40 = __dst[8];
        v18 = v52;
        a5 = v46;
        if (*(__dst[8] + 120 * v21 + 48))
        {
          v41 = 0;
          v42 = 0;
          while (1)
          {
            WORD2(v53) = v49;
            LODWORD(v53) = 2;
            *(&v53 + 6) = 0;
            HIDWORD(v53) = 0;
            matched = statcomp_matchRule(*(a1 + 428), (a1 + 408), (a1 + 424), *(a1 + 416), __dst, a1 + 432, &v53, (*(v40 + 120 * v21 + 40) + v41), &v53 + 3);
            if ((matched & 0x80000000) != 0)
            {
              return matched;
            }

            if (HIDWORD(v53) == 1)
            {
              log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "        membership extra rule %d SUCCEEDS. Membership SUCCEEDS", v42);
              *v46 = 1;
              *a6 = v21;
              *v48 = v52;
              log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] SUCCESS", 0);
              return matched;
            }

            log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "        membership extra rule %d FAIL", v42++);
            v40 = __dst[8];
            v41 += 24;
            v18 = v52;
            if (v42 >= *(__dst[8] + 120 * v21 + 48))
            {
              goto LABEL_50;
            }
          }
        }

        goto LABEL_50;
      }

      log_OutText(v38, "FE_POS", 5, 0, "      Membership rule %d SUCCEEDS", v35++);
      v34 += 24;
      v36 += 96;
      if (v35 >= *(__dst[8] + 120 * v21 + 32))
      {
        goto LABEL_52;
      }
    }
  }

  else
  {
LABEL_52:
    log_OutText(*(__dst[0] + 32), "FE_POS", 5, 0, "    Membership SUCCESS on WORDN criteria", 0);
    *v46 = 1;
    *a6 = v21;
    *v48 = v52;
    log_OutText(*(*a1 + 32), "FE_POS", 5, 0, "  [MEMBERSHIP] SUCCESS", 0);
  }

  return matched;
}

uint64_t setCOMPValues(uint64_t *a1, unsigned int a2, unsigned int a3, _DWORD *a4, const char *a5, const char *a6, char *a7, const char *a8, const char *a9)
{
  if (a2 > a3)
  {
    return 0;
  }

  if (a8)
  {
    v13 = a9 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13 && *(a1 + 9) == 1;
  v36 = a1[40];
  v37 = a1[39];
  v15 = v14;
  v16 = a2;
  while (1)
  {
    if (v15)
    {
      v17 = strlen(a8);
      v18 = v17 + strlen(a9);
      if (*a4 == 1)
      {
        v18 += 2 + strlen((v37 + *(v36 + 4 * a4[2])));
      }

      v19 = v18 + 4;
    }

    else
    {
      v19 = 0;
    }

    v20 = strlen(a6);
    v21 = heap_Calloc(*(*a1 + 8), 1, v20 + v19 + 3);
    *(a1[54] + 96 * v16 + 80) = v21;
    v22 = *a1;
    if (!v21)
    {
      break;
    }

    v23 = *(v22 + 8);
    v24 = strlen(a5);
    v25 = heap_Calloc(v23, 1, (v24 + 3));
    *(a1[54] + 96 * v16 + 72) = v25;
    if (!v25)
    {
      goto LABEL_32;
    }

    if (a7)
    {
      v26 = strchr(a7, 32);
      v27 = v26;
      if (v26)
      {
        *v26 = 0;
      }

      v28 = strlen(a7);
      v29 = heap_Calloc(*(*a1 + 8), 1, (v28 + 1));
      *(a1[54] + 96 * v16 + 64) = v29;
      if (!v29)
      {
LABEL_32:
        v22 = *a1;
        break;
      }

      strcpy(v29, a7);
      if (v27)
      {
        a7 = v27 + 1;
      }
    }

    v30 = *(a1[54] + 96 * v16 + 80);
    v31 = "I-";
    if (a2 == v16)
    {
      v31 = "B-";
    }

    v32 = *v31;
    *v30 = *v31;
    v33 = v31[2];
    *(v30 + 2) = v33;
    v34 = *(a1[54] + 96 * v16 + 72);
    *(v34 + 2) = v33;
    *v34 = v32;
    strcat(*(a1[54] + 96 * v16 + 80), a6);
    if (v15)
    {
      *(*(a1[54] + 96 * v16 + 80) + strlen(*(a1[54] + 96 * v16 + 80))) = 43;
      strcat(*(a1[54] + 96 * v16 + 80), a9);
      *(*(a1[54] + 96 * v16 + 80) + strlen(*(a1[54] + 96 * v16 + 80))) = 43;
      strcat(*(a1[54] + 96 * v16 + 80), a8);
      if (*a4 == 1)
      {
        *(*(a1[54] + 96 * v16 + 80) + strlen(*(a1[54] + 96 * v16 + 80))) = 43;
        strcat(*(a1[54] + 96 * v16 + 80), (v37 + *(v36 + 4 * a4[2])));
      }
    }

    strcat(*(a1[54] + 96 * v16++ + 72), a5);
    if (a3 < v16)
    {
      return 0;
    }
  }

  log_OutPublic(*(v22 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

uint64_t statcomp_saveCompoundsToLingdb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  __s = 0;
  v50 = 0;
  v8 = *(a4 + 20);
  result = (*(a1 + 104))(a2, a3, 1, 0, &v55 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 104))(a2, a3, 2, HIWORD(v55), &v55);
    if ((result & 0x80000000) == 0)
    {
      v10 = v55;
      if (v55)
      {
        while (1)
        {
          result = (*(a1 + 168))(a2, a3, v10, 0, 1, &v53 + 4, &v54);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (HIDWORD(v53) <= 0xA && ((1 << SBYTE4(v53)) & 0x610) != 0)
          {
            result = (*(a1 + 168))(a2, a3, v55, 1, 1, &v53, &v54);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(a1 + 168))(a2, a3, v55, 2, 1, &v53 + 2, &v54);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (*(a4 + 440))
            {
              break;
            }
          }

LABEL_16:
          result = (*(a1 + 120))(a2, a3, v55, &v55);
          if ((result & 0x80000000) == 0)
          {
            v10 = v55;
            if (v55)
            {
              continue;
            }
          }

          return result;
        }

        v12 = 0;
        v13 = 0;
        v14 = WORD1(v53);
        v15 = *(a4 + 432);
        v16 = 1;
        while (*(v15 + v12) != v53 || !*(v15 + v12 + 80))
        {
          ++v13;
          v12 += 96;
          ++v16;
          if (96 * *(a4 + 440) == v12)
          {
            goto LABEL_16;
          }
        }

        v17 = 0;
        v18 = (v15 + 48);
        do
        {
          if (*(v18 - 1))
          {
            v19 = 1;
          }

          else
          {
            v19 = v17;
          }

          if (*v18)
          {
            v17 = 0;
          }

          else
          {
            v17 = v19;
          }

          v18 += 12;
          --v16;
        }

        while (v16);
        if (v53 > v14)
        {
          return 2313174705;
        }

        if (v14 == v53)
        {
          log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", v53, WORD1(v53));
          goto LABEL_16;
        }

        result = (*(a1 + 184))(a2, a3, v55, 14, &v52);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v52 == 1)
        {
          result = (*(a1 + 176))(a2, a3, v55, 14, &__s, &v54);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v20 = *(a4 + 432) + v12;
          if (*(v20 + 40) || *(v20 + 48) || v17 == 1)
          {
            goto LABEL_63;
          }

          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), __s);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), ";");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (v8 == 1)
          {
            v21 = *(a4 + 432);
            v22 = **(v21 + v12 + 80);
            if (v22 == 73)
            {
              v47 = *(a4 + 440);
              if (96 * v47 - 96 != v12 && (v13 + 1 >= v47 || (v48 = *(v21 + v12 + 176)) != 0 && *v48 == 73))
              {
                result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "I_COMP:");
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), (*(*(a4 + 432) + v12 + 80) + 2));
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v23 = *a4;
                v24 = (a4 + 408);
                v25 = (a4 + 424);
                v26 = ";I_COMPPOS:";
              }

              else
              {
                result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "E_COMP:");
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), (*(*(a4 + 432) + v12 + 80) + 2));
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v23 = *a4;
                v24 = (a4 + 408);
                v25 = (a4 + 424);
                v26 = ";E_COMPPOS:";
              }
            }

            else
            {
              if (v22 != 66)
              {
LABEL_87:
                log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing Word[%d] (appended) NLU=%s", v13, *(a4 + 408));
                v49 = strlen(*(a4 + 408));
                result = (*(a1 + 160))(a2, a3, v55, 14, (v49 + 1), *(a4 + 408), &v50);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                **(a4 + 408) = 0;
LABEL_63:
                v39 = *(a4 + 432) + 96 * v13;
                v40 = *(v39 + 64);
                if (v40)
                {
                  log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "updating Word[%d] compound word pronunciation from %s to %s", v13, *(v39 + 56), v40);
                  v41 = strlen(*(*(a4 + 432) + 96 * v13 + 64));
                  result = (*(a1 + 160))(a2, a3, v55, 3, (v41 + 1), *(*(a4 + 432) + 96 * v13 + 64), &v54);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }
                }

                goto LABEL_16;
              }

              result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "S_COMP:");
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), (*(*(a4 + 432) + v12 + 80) + 2));
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v23 = *a4;
              v24 = (a4 + 408);
              v25 = (a4 + 424);
              v26 = ";S_COMPPOS:";
            }

            result = statcomp_add2Str(v23, v24, v25, v26);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v42 = *a4;
            v44 = (a4 + 408);
            v45 = (a4 + 424);
            v43 = (*(*(a4 + 432) + v12 + 72) + 2);
          }

          else
          {
            result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "COMP:");
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), *(*(a4 + 432) + v12 + 80));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), ";COMPPOS:");
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v42 = *a4;
            v43 = *(*(a4 + 432) + v12 + 72);
            v44 = (a4 + 408);
            v45 = (a4 + 424);
          }

          result = statcomp_add2Str(v42, v44, v45, v43);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_87;
        }

        if (v8 != 1)
        {
          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "COMP:");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), *(*(a4 + 432) + v12 + 80));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), ";COMPPOS:");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v33 = *a4;
          v34 = *(*(a4 + 432) + v12 + 72);
          v35 = (a4 + 408);
          v36 = (a4 + 424);
          goto LABEL_60;
        }

        v27 = *(a4 + 432);
        v28 = **(v27 + v12 + 80);
        if (v28 == 73)
        {
          v37 = *(a4 + 440);
          if (96 * v37 - 96 == v12 || v13 + 1 < v37 && ((v46 = *(v27 + v12 + 176)) == 0 || *v46 != 73))
          {
            result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "E_COMP:");
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), (*(*(a4 + 432) + v12 + 80) + 2));
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v29 = *a4;
            v30 = (a4 + 408);
            v31 = (a4 + 424);
            v32 = ";E_COMPPOS:";
            goto LABEL_58;
          }
        }

        else if (v28 == 66)
        {
          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), "S_COMP:");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(*a4, (a4 + 408), (a4 + 424), (*(*(a4 + 432) + v12 + 80) + 2));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v29 = *a4;
          v30 = (a4 + 408);
          v31 = (a4 + 424);
          v32 = ";S_COMPPOS:";
LABEL_58:
          result = statcomp_add2Str(v29, v30, v31, v32);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v33 = *a4;
          v35 = (a4 + 408);
          v36 = (a4 + 424);
          v34 = (*(*(a4 + 432) + v12 + 72) + 2);
LABEL_60:
          result = statcomp_add2Str(v33, v35, v36, v34);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        log_OutText(*(*a4 + 32), "FE_POS", 5, 0, "Writing Word[%d] NLU=%s", v13, *(a4 + 408));
        v38 = strlen(*(a4 + 408));
        result = (*(a1 + 160))(a2, a3, v55, 14, (v38 + 1), *(a4 + 408), &v50);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        **(a4 + 408) = 0;
        goto LABEL_63;
      }
    }
  }

  return result;
}

uint64_t statpos_get_info_from_dct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, char **a7, _BOOL4 *a8, const char *a9)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v14 = (*(a4 + 96))(a2, a3, a5, a6, &__c[3], &__c[1], __c);
  if ((v14 & 0x80001FFF) == 0x8000000A)
  {
    goto LABEL_2;
  }

  v15 = v14;
  if ((v14 & 0x80000000) != 0)
  {
    return 0;
  }

  if (*&__c[1])
  {
    v16 = strchr(**&__c[3], __c[0]);
    if (v16)
    {
      *v16 = 0;
    }

    if (!strcmp(a9, "STR"))
    {
      v19 = strlen(**&__c[3]);
      v20 = heap_Calloc(*(a1 + 8), 1, (v19 + 1));
      *a7 = v20;
      if (!v20)
      {
LABEL_2:
        v15 = 2313166858;
        log_OutPublic(*(a1 + 32), "FE_POS", 34000, 0);
        return v15;
      }

      strcpy(v20, **&__c[3]);
      if (!strcmp("fecfg", a5))
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "set mde seg param %s = %s", a6, *a7);
      }
    }

    else if (!strcmp(a9, "BOOL"))
    {
      v17 = 0;
      *a8 = 0;
      if (***&__c[3] == 49)
      {
        v17 = *(**&__c[3] + 1) == 0;
      }

      *a8 = v17;
    }
  }

  return v15;
}

uint64_t _crfpos_concat_strings(uint64_t a1, uint64_t *a2, char **a3)
{
  v6 = *(a2 + 2);
  if (v6)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = *a2;
    do
    {
      v8 = v8 + strlen(*(v9 + 16 * v7++)) + 2;
    }

    while (v6 > v7);
  }

  else
  {
    v8 = 0;
  }

  v10 = heap_Calloc(*(a1 + 8), 1, v8);
  *a3 = v10;
  if (v10)
  {
    if (*(a2 + 2))
    {
      v11 = 0;
      v12 = 0;
      do
      {
        strcat(*a3, *(*a2 + 16 * v12));
        v13 = *(a2 + 2);
        if (v13 - 1 > v11)
        {
          *&(*a3)[strlen(*a3)] = 32;
          v13 = *(a2 + 2);
        }

        v11 = ++v12;
      }

      while (v13 > v12);
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }
}

uint64_t _crfpos_get_potential_tags(uint64_t a1, unsigned __int16 *a2, void *a3, uint64_t *a4, uint64_t *a5, int a6)
{
  v8 = a2[4];
  if (!a2[4])
  {
    goto LABEL_38;
  }

  if (*(*a2 + 72))
  {
    v12 = 0;
    if (!a6)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v13 = (*a2 + 232);
    v14 = 1;
    do
    {
      v15 = v14;
      if (v8 == v14)
      {
        break;
      }

      v16 = *v13;
      v13 += 80;
      ++v14;
    }

    while (!v16);
    v12 = v15 >= v8;
    if (!a6)
    {
      goto LABEL_38;
    }
  }

  if (v12)
  {
LABEL_38:
    v36 = 0;
    *a4 = 0;
    *a5 = 0;
    return v36;
  }

  v17 = heap_Calloc(*(a1 + 8), 1, 8 * v8);
  if (!v17 || (v18 = v17, (v19 = heap_Calloc(*(a1 + 8), 1, 4 * a2[4])) == 0))
  {
    v36 = 2313166858;
    v37 = *(a1 + 32);
    goto LABEL_40;
  }

  v20 = v19;
  v39 = a4;
  v40 = a1;
  if (!a2[4])
  {
LABEL_37:
    v36 = 0;
    *v39 = v18;
    *a5 = v20;
    return v36;
  }

  v21 = 0;
  while (1)
  {
    v22 = *a2;
    v23 = *a2 + 160 * v21;
    if (!*(v23 + 128))
    {
      break;
    }

    v24 = *(v23 + 136);
    if (!v24 || !*v24)
    {
      break;
    }

    v25 = a3[42];
    if (!v25 || (v26 = "ns", !strstr(v25, v24)))
    {
      v27 = a3[43];
      if (!v27 || (v26 = "nt", !strstr(v27, v24)))
      {
        v28 = a3[44];
        if (!v28 || (v26 = "nz", !strstr(v28, v24)))
        {
          v29 = a3[45];
          if (!v29 || (v26 = "nx", !strstr(v29, v24)))
          {
            v30 = a3[46];
            if (!v30)
            {
              break;
            }

            v26 = "nr";
            if (!strstr(v30, v24))
            {
              break;
            }
          }
        }
      }
    }

    *(v20 + 4 * v21) = 1;
    v31 = heap_Calloc(*(v40 + 8), 1, 8);
    *(v18 + 8 * v21) = v31;
    if (!v31)
    {
      goto LABEL_42;
    }

    *v31 = v26;
LABEL_36:
    if (++v21 >= a2[4])
    {
      goto LABEL_37;
    }
  }

  v32 = *(v22 + 160 * v21 + 72);
  *(v20 + 4 * v21) = v32;
  if (!v32)
  {
    *(v18 + 8 * v21) = 0;
    goto LABEL_36;
  }

  v33 = heap_Calloc(*(v40 + 8), 1, 8 * v32);
  *(v18 + 8 * v21) = v33;
  if (v33)
  {
    v34 = *(v20 + 4 * v21);
    if (v34)
    {
      v35 = 0;
      do
      {
        *(*(v18 + 8 * v21) + 8 * v35) = a3[37] + *(a3[38] + 4 * *(*(*a2 + 160 * v21 + 64) + 24 * v35));
        ++v35;
      }

      while (v34 > v35);
    }

    goto LABEL_36;
  }

LABEL_42:
  v36 = 2313166858;
  v37 = *(v40 + 32);
LABEL_40:
  log_OutPublic(v37, "FE_POS", 35000, 0);
  return v36;
}

uint64_t statpos_get_broker_string(uint64_t a1, char **a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = "";
  *v7 = 0;
  memset(v8, 0, sizeof(v8));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v7);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v6);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      v5 = heap_Calloc(*(a1 + 8), 1, 1024);
      *a2 = v5;
      if (v5)
      {
        return brokeraux_ComposeBrokerString(a1, v8, 1, 1, *v7, 0, 0, v5, 0x400uLL);
      }

      else
      {
        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
        return 2313166858;
      }
    }
  }

  return result;
}

uint64_t _crfpos_parse_params(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!*(v2 + 40))
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(v2 + 32) + 16 * v5;
    if (!strcmp(*v6, "features"))
    {
      break;
    }

LABEL_27:
    if (++v5 >= *(v2 + 40))
    {
      return 0;
    }
  }

  v7 = *(v6 + 8);
  v8 = strlen(v7);
  v9 = v8;
  *(a2 + 32) = 0;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = v8;
    v13 = v7;
    do
    {
      v14 = *v13++;
      v15 = v14 == 32;
      if (v11)
      {
        v11 = !v15;
      }

      else if (v15)
      {
        v11 = 0;
      }

      else
      {
        *(a2 + 32) = ++v10;
        v11 = 1;
      }

      --v12;
    }

    while (v12);
    v16 = 8 * v10 + 8;
  }

  else
  {
    v16 = 8;
  }

  v17 = heap_Calloc(*(a1 + 8), 1, v16);
  *(a2 + 24) = v17;
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = v21;
      v23 = v7[v21];
      if (v23 == 32)
      {
        LOBYTE(v23) = 0;
        v24 = 0;
        v18 = 0;
        v25 = *(*(a2 + 24) + 8 * v20++);
      }

      else
      {
        if (v18)
        {
          v25 = *(*(a2 + 24) + 8 * v20);
        }

        else
        {
          *(*(a2 + 24) + 8 * v20) = heap_Alloc(*(a1 + 8), 64);
          v25 = *(*(a2 + 24) + 8 * v20);
          if (!v25)
          {
            goto LABEL_29;
          }

          LOBYTE(v23) = v7[v22];
        }

        v24 = v19 + 1;
        v18 = 1;
      }

      *(v25 + v19) = v23;
      v21 = v22 + 1;
      v19 = v24;
    }

    while (v22 + 1 <= v9);
    v2 = *(a2 + 8);
    goto LABEL_27;
  }

LABEL_29:
  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

uint64_t statpos_crf_load(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char **a10, uint64_t a11, uint64_t *a12, int a13)
{
  broker_string = statpos_get_broker_string(a5, a10);
  if ((broker_string & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  broker_string = crf_Init_ReadOnly_ReferenceCnt(a1, a2, a3, a4, a10 + 1, 2, *a10, "CRPH", 1031, 0, 0);
  if ((broker_string & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  info_from_dct = _crfpos_parse_params(a5, a10);
  if ((info_from_dct & 0x80000000) == 0)
  {
    *(a10 + 4) = 1;
    if (a13 == 1)
    {
      v23 = heap_Calloc(*(a5 + 8), 1, 512);
      *(a11 + 296) = v23;
      if (!v23 || (*(a11 + 316) = 512, v24 = heap_Calloc(*(a5 + 8), 1, 128), (*(a11 + 304) = v24) == 0))
      {
LABEL_20:
        info_from_dct = 2313166858;
        log_OutPublic(*(a5 + 32), "FE_POS", 35000, 0);
        goto LABEL_13;
      }

      *(a11 + 320) = 32;
      *(a11 + 312) = 0;
      *(a11 + 324) = 0;
      broker_string = statpos_get_info_from_dct(a5, a7, a8, a9, "fecfg", "mdesegpos_nonfinalpunc", (a11 + 168), 0, "STR");
      if ((broker_string & 0x80000000) == 0)
      {
        info_from_dct = statpos_get_info_from_dct(a5, a7, a8, a9, "fecfg", "mdesegpos_finalpunc", (a11 + 176), 0, "STR");
        if ((info_from_dct & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v25 = heap_Calloc(*(a5 + 8), 1, 128);
        *a12 = v25;
        if (v25)
        {
          a12[2] = 128;
          v26 = heap_Calloc(*(a5 + 8), 1, 128);
          a12[1] = v26;
          if (v26)
          {
            a12[3] = 128;
            goto LABEL_13;
          }
        }

        goto LABEL_20;
      }

LABEL_12:
      info_from_dct = broker_string;
    }
  }

LABEL_13:
  if (*a10)
  {
    heap_Free(*(a5 + 8), *a10);
    *a10 = 0;
  }

  if ((info_from_dct & 0x80000000) != 0)
  {
    v27 = a10[1];
    if (v27)
    {
      crf_Deinit_ReadOnly_DereferenceCnt(a5, a6, v27);
    }

    a10[1] = 0;
  }

  return info_from_dct;
}

uint64_t statpos_crf_unload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6)
{
  if (*a3)
  {
    heap_Free(*(a1 + 8), *a3);
    *a3 = 0;
  }

  if (*(a3 + 16) == 1)
  {
    Only_DereferenceCnt = crf_Deinit_ReadOnly_DereferenceCnt(a1, a2, *(a3 + 8));
    if ((Only_DereferenceCnt & 0x80000000) != 0)
    {
      return Only_DereferenceCnt;
    }

    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    Only_DereferenceCnt = 0;
  }

  v13 = *(a3 + 24);
  if (v13)
  {
    v14 = *(a3 + 32);
    if (v14 != 255)
    {
      v15 = 0;
      do
      {
        v16 = *(*(a3 + 24) + 8 * v15);
        if (v16)
        {
          heap_Free(*(a1 + 8), v16);
          LOBYTE(v14) = *(a3 + 32);
        }

        ++v15;
      }

      while (v15 < (v14 + 1));
      v13 = *(a3 + 24);
    }

    heap_Free(*(a1 + 8), v13);
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }

  if (a6 == 1)
  {
    v17 = *(a4 + 296);
    if (v17)
    {
      heap_Free(*(a1 + 8), v17);
      *(a4 + 296) = 0;
      *(a4 + 316) = 0;
    }

    v18 = *(a4 + 304);
    if (v18)
    {
      heap_Free(*(a1 + 8), v18);
      *(a4 + 304) = 0;
      *(a4 + 320) = 0;
    }

    *(a4 + 312) = 0;
    *(a4 + 324) = 0;
    v19 = *(a4 + 168);
    if (v19)
    {
      heap_Free(*(a1 + 8), v19);
      *(a4 + 168) = 0;
    }

    v20 = *(a4 + 176);
    if (v20)
    {
      heap_Free(*(a1 + 8), v20);
      *(a4 + 176) = 0;
    }

    if (*a5)
    {
      heap_Free(*(a1 + 8), *a5);
      *a5 = 0;
    }

    v21 = a5[1];
    if (v21)
    {
      heap_Free(*(a1 + 8), v21);
      a5[1] = 0;
    }
  }

  return Only_DereferenceCnt;
}

uint64_t statpos_crf_label(uint64_t a1, uint64_t a2, unsigned __int16 *a3, void *a4, int a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v47[0] = 0;
  v47[1] = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v10 = heap_Calloc(*(a1 + 8), 1, 8 * a3[4]);
  if (!v10)
  {
    v23 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    return v23;
  }

  v11 = v10;
  features = statpos_fv_new(a1, *(a2 + 32), v47);
  if ((features & 0x80000000) == 0)
  {
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "FEATURE VECTOR", 0);
    if (*(a2 + 32))
    {
      v13 = 0;
      do
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", *(*(a2 + 24) + 8 * v13++));
      }

      while (v13 < *(a2 + 32));
    }

    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "FEATURE VECTOR ENTRIES", 0);
    if (a3[4])
    {
      v14 = 0;
      while (1)
      {
        features = statpos_get_features(a1, a3, a4, v14, *(a2 + 24), *(a2 + 32), v47, 0);
        if ((features & 0x80000000) != 0)
        {
          break;
        }

        features = _crfpos_concat_strings(a1, v47, &v46);
        if ((features & 0x80000000) != 0)
        {
          break;
        }

        v15 = v46;
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "features: %s", v46);
        v11[v14] = v15;
        v46 = 0;
        if (++v14 >= a3[4])
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      features = _crfpos_get_potential_tags(a1, a3, a4, &v42, &v43, a5);
      if ((features & 0x80000000) == 0)
      {
        v17 = v42;
        v16 = v43;
        v18 = v43 != 0 && v42 != 0;
        if (v43 != 0 && v42 != 0)
        {
          v19 = "ON";
        }

        else
        {
          v19 = "OFF";
        }

        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Existing tags on words (ConstrainedDecoding:Keyword=%d:Actual=%s)", a5, v19);
        LODWORD(v20) = a3[4];
        if (v18 && a3[4])
        {
          v21 = 0;
          do
          {
            v48[0] = 0;
            if (*(v16 + 4 * v21))
            {
              v22 = 0;
              do
              {
                __strcat_chk();
                __strcat_chk();
                ++v22;
              }

              while (v22 < *(v16 + 4 * v21));
            }

            log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", v48);
            ++v21;
            v20 = a3[4];
          }

          while (v21 < v20);
        }

        v23 = crf_Process_Constrained(*(a2 + 8), v11, v20, &v45, &v44, v17, v16);
        if ((v23 & 0x80000000) == 0 && v44)
        {
          v24 = 0;
          v25 = 88;
          while (1)
          {
            log_OutText(*(a1 + 32), "FE_POS", 5, 0, "predicted label: %s on word %d", *(v45 + 8 * v24), v24);
            v26 = *(v45 + 8 * v24);
            v27 = strchr(v26, 32);
            if (v27)
            {
              *v27 = 0;
              v26 = *(v45 + 8 * v24);
            }

            v28 = strlen(v26);
            v29 = heap_Calloc(*(a1 + 8), 1, (v28 + 100));
            *(*a3 + v25) = v29;
            if (!v29)
            {
              break;
            }

            strcpy(v29, *(v45 + 8 * v24++));
            v25 += 160;
            if (v24 >= v44)
            {
              goto LABEL_31;
            }
          }

          v23 = 2313166858;
          log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
        }

        goto LABEL_31;
      }
    }
  }

  v23 = features;
LABEL_31:
  crf_mde_seg_fv_dealloc(a1, v47);
  v30 = a3[4];
  if (a3[4])
  {
    v31 = 0;
    do
    {
      v32 = v11[v31];
      if (v32)
      {
        heap_Free(*(a1 + 8), v32);
        v30 = a3[4];
      }

      ++v31;
    }

    while (v31 < v30);
  }

  heap_Free(*(a1 + 8), v11);
  v33 = v45;
  if (v45)
  {
    v34 = v44;
    if (v44)
    {
      v35 = 0;
      do
      {
        v36 = *(v45 + 8 * v35);
        if (v36)
        {
          heap_Free(*(a1 + 8), v36);
          v34 = v44;
        }

        ++v35;
      }

      while (v35 < v34);
      v33 = v45;
    }

    heap_Free(*(a1 + 8), v33);
  }

  v37 = v42;
  if (v42)
  {
    v38 = a3[4];
    if (a3[4])
    {
      v39 = 0;
      do
      {
        v40 = *(v37 + 8 * v39);
        if (v40)
        {
          heap_Free(*(a1 + 8), v40);
          v38 = a3[4];
        }

        *(v37 + 8 * v39++) = 0;
      }

      while (v39 < v38);
    }

    heap_Free(*(a1 + 8), v37);
  }

  if (v43)
  {
    heap_Free(*(a1 + 8), v43);
  }

  return v23;
}

uint64_t statpos_getSentenceData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a5;
  v77 = 0;
  v76 = 0;
  v74 = 0;
  __s = 0;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v67 = 0;
  v68 = 0;
  v10 = *a4;
  *(a4 + 187) = log_GetLogLevel(*(*a4 + 32)) > 4;
  v11 = (*(a1 + 104))(a2, a3, 1, 0, &v77 + 2);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  v12 = (*(a1 + 184))(a2, a3, HIWORD(v77), 0, &v76);
  if ((v12 & 0x80000000) == 0 && v76 == 1)
  {
    v12 = (*(a1 + 176))(a2, a3, HIWORD(v77), 0, &__s, &v73);
    if ((v12 & 0x80000000) == 0 && v73 >= 2u)
    {
      v13 = a4 + 81;
      log_OutText(*(v10 + 32), "FE_POS", 5, 0, "new POS : processing=%s", __s);
      v14 = heap_Calloc(*(v10 + 8), 1, 128);
      if (v14)
      {
        v15 = v14;
        for (i = 0; i != 16; ++i)
        {
          v17 = heap_Calloc(*(v10 + 8), 1, 16);
          v15[i] = v17;
          if (!v17)
          {
            goto LABEL_54;
          }
        }

        v18 = heap_Calloc(*(v10 + 8), 1, 1024);
        a4[91] = v18;
        if (!v18 || (*(a4 + 372) = 1024, v19 = heap_Calloc(*(v10 + 8), 1, 1024), (a4[92] = v19) == 0))
        {
LABEL_54:
          v12 = 2313166858;
          log_OutPublic(*(v10 + 32), "FE_POS", 35000, 0);
          v21 = 0;
          goto LABEL_55;
        }

        v20 = strlen(__s);
        v21 = heap_Calloc(*(v10 + 8), 1, (v20 + 1));
        if (v21)
        {
          statpos_initCache((a4 + 81));
          AddPOI = (*(a1 + 104))(a2, a3, 2, HIWORD(v77), &v77);
          if ((AddPOI & 0x80000000) == 0)
          {
            v12 = 2313174705;
            v64 = v21 - 1;
            v65 = v21;
            while (v77)
            {
              AddPOI = (*(a1 + 168))(a2, a3);
              if ((AddPOI & 0x80000000) != 0)
              {
                goto LABEL_137;
              }

              if (v72 <= 0xA && ((1 << v72) & 0x610) != 0)
              {
                AddPOI = (*(a1 + 168))(a2, a3, v77, 1, 1, &v68, &v73);
                if ((AddPOI & 0x80000000) != 0)
                {
                  goto LABEL_137;
                }

                AddPOI = (*(a1 + 168))(a2, a3, v77, 2, 1, &v68 + 2, &v73);
                if ((AddPOI & 0x80000000) != 0)
                {
                  goto LABEL_137;
                }

                if (v68 > HIWORD(v68))
                {
                  goto LABEL_55;
                }

                v11 = (*(a1 + 184))(a2, a3, v77, 17, &v76);
                if ((v11 & 0x80000000) != 0)
                {
                  return v11;
                }

                if (v76 == 1)
                {
                  AddPOI = (*(a1 + 168))(a2, a3, v77, 17, 1, &v67 + 2, &v73);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_137;
                  }
                }

                else
                {
                  HIWORD(v67) = v72 - 9 <= 1;
                }

                strncpy(v21, &__s[v68], HIWORD(v68) - v68);
                v21[HIWORD(v68) - v68] = 0;
                if (HIWORD(v68) == v68)
                {
                  log_OutText(*(v10 + 32), "FE_POS", 5, 0, "WARNING! : IGNORE EMPTY WORD lingdb position %d,%d", HIWORD(v68), HIWORD(v68));
                }

                else
                {
                  AddPOI = addWord_0(v10, (a4 + 1), (a4 + 81), v21, &v68, HIWORD(v67), &v67);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_137;
                  }

                  v24 = strlen(v21);
                  if (v24)
                  {
                    v25 = v64[v24];
                    if (v25 <= 0x3B && ((1 << v25) & 0xC00100000000000) != 0)
                    {
                      *(a4[81] + 160 * *(a4 + 328) - 148) = 1;
                    }
                  }

                  v26 = a4[81] + 160 * *(a4 + 328);
                  *(v26 - 136) = 0;
                  *(v26 - 136) = v72 == 4;
                  AddPOI = (*(a1 + 176))(a2, a3, v77, 3, &v69, &v73);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_137;
                  }

                  v27 = a4[81];
                  v28 = *(a4 + 328);
                  if (*v69)
                  {
                    *(v27 + 160 * *(a4 + 328) - 136) = 1;
                  }

                  v29 = __s;
                  v30 = HIWORD(v68);
                  *(v27 + 160 * v28 - 144) = __s[HIWORD(v68)] == 95;
                  *(a4[81] + 160 * *(a4 + 328) - 140) = isFollowedbySpace((a4 + 1), v29, v30);
                  v31 = (*(a1 + 176))(a2, a3, v77, 5, &v70, &v73);
                  if ((v31 & 0x80000000) != 0)
                  {
                    v12 = v31;
                    v21 = v65;
                    goto LABEL_55;
                  }

                  AddPOI = addPOS(v10, (a4 + 1), (a4 + 81), (*(a4 + 328) - 1), v70, v77, v15, &v67, v5);
                  v21 = v65;
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_137;
                  }

                  AddPOI = readAddPOI(a1, a2, a3, v10, a4 + 81, (*(a4 + 328) - 1), v77);
                  if ((AddPOI & 0x80000000) != 0)
                  {
                    goto LABEL_137;
                  }

                  if (*(a4 + 354) == 1)
                  {
                    *v66 = 0;
                    AddPOI = (*(a1 + 184))(a2, a3, v77, 14, &v76);
                    if ((AddPOI & 0x80000000) != 0)
                    {
                      goto LABEL_137;
                    }

                    if (v76)
                    {
                      AddPOI = (*(a1 + 176))(a2, a3, v77, 14, v66, &v73);
                      if ((AddPOI & 0x80000000) != 0)
                      {
                        goto LABEL_137;
                      }

                      if (v73 >= 2u)
                      {
                        AddPOI = readPOSandPHRfromNLU(v10, (a4 + 1), a4 + 81, *v66, (*(a4 + 328) - 1));
                        if ((AddPOI & 0x80000000) != 0)
                        {
                          goto LABEL_137;
                        }
                      }
                    }

                    else
                    {
                      v63 = v63 & 0xFFFFFFFF00000000 | v68;
                      AddPOI = readPOSandPHRfromNLUMarkers(v10, (a4 + 1), a4 + 81, a2, a3, a1, HIWORD(v77), __s, v63, *(a4 + 328) - 1);
                      if ((AddPOI & 0x80000000) != 0)
                      {
                        goto LABEL_137;
                      }
                    }
                  }
                }
              }

              AddPOI = (*(a1 + 120))(a2, a3, v77, &v77);
              if ((AddPOI & 0x80000000) != 0)
              {
                goto LABEL_137;
              }
            }

            AddPOI = (*(a1 + 104))(a2, a3, 2, HIWORD(v77), &v77);
            if ((AddPOI & 0x80000000) == 0)
            {
              while (v77)
              {
                AddPOI = (*(a1 + 168))(a2, a3);
                if ((AddPOI & 0x80000000) != 0)
                {
                  goto LABEL_137;
                }

                if (v72 != 6)
                {
                  goto LABEL_140;
                }

                AddPOI = (*(a1 + 168))(a2, a3, v77, 1, 1, &v68, &v73);
                if ((AddPOI & 0x80000000) == 0)
                {
                  AddPOI = (*(a1 + 168))(a2, a3, v77, 2, 1, &v68 + 2, &v73);
                  if ((AddPOI & 0x80000000) == 0)
                  {
                    if (v68 > HIWORD(v68))
                    {
                      goto LABEL_55;
                    }

                    AddPOI = (*(a1 + 176))(a2, a3, v77, 4, &v71, &v73);
                    if ((AddPOI & 0x80000000) == 0)
                    {
                      AddPOI = addToken_0(v10, a4 + 81, (a4 + 1), &v68, v71);
                      if ((AddPOI & 0x80000000) == 0 || AddPOI == -1981800448)
                      {
LABEL_140:
                        AddPOI = (*(a1 + 120))(a2, a3, v77, &v77);
                        if ((AddPOI & 0x80000000) == 0)
                        {
                          continue;
                        }
                      }
                    }
                  }
                }

                goto LABEL_137;
              }

              AddPOI = (*(a1 + 176))(a2, a3, HIWORD(v77), 1, &v74, &v73 + 2);
              if ((AddPOI & 0x80000000) == 0)
              {
                v36 = HIWORD(v73);
                if (HIWORD(v73))
                {
                  v37 = 0;
                  v38 = v74;
                  do
                  {
                    v39 = v37;
                    if (*(v38 + 32 * v37) == 34)
                    {
                      if (v36 <= ++v37)
                      {
                        goto LABEL_141;
                      }

                      do
                      {
                        v40 = *(v38 + 32 * v37);
                        if (v40 != 21)
                        {
                          ++v37;
                        }
                      }

                      while (v36 > v37 && v40 != 21);
                      if (v40 == 21)
                      {
                        if (*(a4 + 328))
                        {
                          v48 = *(v38 + 12);
                          v49 = (*(v38 + 32 * v39 + 12) - v48);
                          v50 = (*(v38 + 32 * v37 + 12) - v48);
                          v51 = *v13;
                          v52 = *(a4 + 328) - 1;
                          do
                          {
                            v53 = *v51;
                            if (v53 >= v49 && v51[1] <= v50)
                            {
                              *(v51 + 10) = 1;
                            }

                            v54 = v53 > v50 || v52-- == 0;
                            v51 += 80;
                          }

                          while (!v54);
                        }
                      }

                      else
                      {
LABEL_141:
                        if (*(a4 + 328))
                        {
                          v42 = (*(v38 + 32 * v39 + 12) - *(v38 + 12));
                          v43 = *(v38 + 16);
                          v44 = *v13;
                          v45 = *(a4 + 328) - 1;
                          do
                          {
                            v46 = *v44;
                            if (v46 >= v42 && v44[1] <= v43)
                            {
                              *(v44 + 10) = 1;
                            }

                            v47 = v46 > v43 || v45-- == 0;
                            v44 += 80;
                          }

                          while (!v47);
                        }
                      }
                    }

                    ++v37;
                  }

                  while (v36 > v37);
                }

                AddPOI = markPhoneticRegions(v10, (a4 + 81));
                if ((AddPOI & 0x80000000) == 0)
                {
                  if (*(a4 + 354) != 1)
                  {
                    goto LABEL_135;
                  }

                  v55 = *(a4 + 328);
                  if (*(a4 + 328))
                  {
                    v56 = 0;
                    do
                    {
                      if (!HIWORD(v73))
                      {
                        goto LABEL_131;
                      }

                      v57 = 0;
                      do
                      {
                        while (1)
                        {
                          v58 = (v74 + 32 * v57);
                          if (*v58 == 1)
                          {
                            break;
                          }

                          if (++v57 >= HIWORD(v73))
                          {
                            goto LABEL_131;
                          }
                        }

                        v59 = v58[3] - *(v74 + 12);
                        v60 = *(*v13 + 160 * v56);
                        ++v57;
                      }

                      while (v59 != v60 && v57 < HIWORD(v73));
                      if (v59 != v60)
                      {
LABEL_131:
                        v62 = *(*v13 + 160 * v56 + 104);
                        if (v62)
                        {
                          heap_Free(*(v10 + 8), v62);
                          *(a4[81] + 160 * v56 + 104) = 0;
                          v55 = *(a4 + 328);
                        }
                      }

                      ++v56;
                    }

                    while (v56 < v55);
                  }

                  AddPOI = resolvePHR_0(__s, v10, (a4 + 1), a4 + 324);
                  if ((AddPOI & 0x80000000) == 0)
                  {
LABEL_135:
                    AddPOI = setPotentialPOSTags(v10, (a4 + 1), a4 + 81);
                    if ((AddPOI & 0x80000000) == 0)
                    {
                      AddPOI = printSent_0(v10, (a4 + 1), a4 + 81, "Initialized data", *(a4 + 354), v5);
                    }
                  }
                }
              }
            }
          }

LABEL_137:
          v12 = AddPOI;
        }

        else
        {
          v12 = 2313166858;
          log_OutPublic(*(v10 + 32), "FE_POS", 35000, 0);
        }

LABEL_55:
        for (j = 0; j != 16; ++j)
        {
          v34 = v15[j];
          if (v34)
          {
            heap_Free(*(v10 + 8), v34);
            v15[j] = 0;
          }
        }

        heap_Free(*(v10 + 8), v15);
        statpos_freeCache(v10, (a4 + 81));
        if (v21)
        {
          heap_Free(*(v10 + 8), v21);
        }
      }

      else
      {
        v12 = 2313166858;
        log_OutPublic(*(v10 + 32), "FE_POS", 35000, 0);
        statpos_freeCache(v10, (a4 + 81));
      }

      if (*v13)
      {
        if (*(a4 + 328))
        {
          v35 = *(*(*v13 + 160 * (*(a4 + 328) - 1) + 48) + 24);
          if (v35)
          {
            heap_Free(*(v10 + 8), v35);
            *(*(a4[81] + 160 * *(a4 + 328) - 112) + 24) = 0;
          }
        }
      }
    }
  }

  return v12;
}

uint64_t addWord_0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, unsigned __int16 *a5, int a6, _WORD *a7)
{
  v7 = a7;
  v8 = a6;
  v10 = a4;
  v12 = a2;
  v41 = *MEMORY[0x1E69E9840];
  v14 = *(a3 + 8);
  if (*(a3 + 8))
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(*a3 + v17);
      v21 = *a5;
      if (__PAIR64__(*(*a3 + v17 + 2), v20) == __PAIR64__(a5[1], v21))
      {
        return 0;
      }

      if (v21 >= v20 && a5[1] <= *(*a3 + v17 + 2))
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "WARNING : skip subsumed word %d,%d (subsumed by word %d)", v21, a5[1], v18);
        v14 = *(a3 + 8);
        v19 = 1;
      }

      ++v18;
      v17 += 160;
    }

    while (v18 < v14);
    v22 = v14 + 2;
    v7 = a7;
    v8 = a6;
    v12 = a2;
    v10 = a4;
  }

  else
  {
    v19 = 0;
    v22 = 2;
  }

  if (*(a3 + 10))
  {
    v23 = *a3;
    if (v22 > *(a3 + 10))
    {
      v24 = heap_Realloc(*(a1 + 8), v23, 160 * *(a3 + 10) + 3360);
      if (!v24)
      {
        goto LABEL_28;
      }

      *a3 = v24;
      bzero((v24 + 160 * *(a3 + 8)), 0xC80uLL);
      *(a3 + 10) += 20;
      v23 = *a3;
    }
  }

  else
  {
    v25 = heap_Calloc(*(a1 + 8), 1, 8001);
    *a3 = v25;
    if (!v25)
    {
      goto LABEL_28;
    }

    v23 = v25;
    *(a3 + 10) = 50;
  }

  v26 = (v23 + 160 * *(a3 + 8));
  v26[11] = v19;
  *v26 = *a5;
  v27 = heap_Calloc(*(a1 + 8), 1, (8 * *(v12 + 376)) | 1);
  *(*a3 + 160 * *(a3 + 8) + 48) = v27;
  if (v27 && (v28 = strlen(v10), v29 = heap_Calloc(*(a1 + 8), 1, (v28 + 1)), (**(*a3 + 160 * *(a3 + 8) + 48) = v29) != 0))
  {
    strcpy(v29, v10);
    strncpy(__dst, v10, 0x80uLL);
    __dst[127] = 0;
    v36 = (*(*(a3 + 120) + 144))(*(a3 + 104), *(a3 + 112), "normal", __dst, 128);
    if ((v36 & 0x80000000) == 0)
    {
      v30 = strlen(__dst);
      if (!v30)
      {
        goto LABEL_24;
      }

      v31 = v30;
      if (!strcmp(v10, __dst))
      {
        goto LABEL_24;
      }

      v32 = heap_Calloc(*(a1 + 8), 1, (v31 + 1));
      *(*a3 + 160 * *(a3 + 8) + 120) = v32;
      if (v32)
      {
        strcpy(v32, __dst);
LABEL_24:
        v33 = *(a3 + 8);
        v34 = *a3 + 160 * v33;
        *(v34 + 72) = 0;
        *(v34 + 64) = 0;
        *(v34 + 8) = v8 == 1;
        *(a3 + 8) = v33 + 1;
        *v7 = 0;
        return v36;
      }

LABEL_28:
      v36 = 2313166858;
      log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    }
  }

  else
  {
    v36 = 2313166858;
    log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
    v35 = *(*a3 + 160 * *(a3 + 8) + 48);
    if (v35 && *v35)
    {
      heap_Free(*(a1 + 8), *v35);
      **(*a3 + 160 * *(a3 + 8) + 48) = 0;
    }
  }

  return v36;
}

BOOL isFollowedbySpace(uint64_t a1, char *__s, unsigned int a3)
{
  v6 = strlen(__s);
  if (v6 > a3)
  {
    while (1)
    {
      v7 = &__s[a3];
      v8 = utf8_determineUTF8CharLength(*v7);
      if (_statpos_char_check(*(a1 + 168), v7, v8) != 1 && _statpos_char_check(*(a1 + 176), &__s[a3], v8) != 1)
      {
        break;
      }

      a3 += utf8_determineUTF8CharLength(*v7);
      if (v6 <= a3)
      {
        a3 = a3;
        return v6 == a3;
      }
    }

    return *v7 == 32;
  }

  return v6 == a3;
}

uint64_t addPOS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, unsigned int a6, const char **a7, _WORD *a8, int a9)
{
  v32 = -1;
  if (*a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = "NULL";
  }

  v16 = *(a1 + 8);
  v17 = strlen(v15);
  v18 = heap_Calloc(v16, 1, (v17 + 1));
  if (v18)
  {
    v19 = v18;
    v20 = strcpy(v18, v15);
    v21 = strchr(v20, 92);
    __s = v19;
    if (v21)
    {
      v22 = v21;
      while (1)
      {
        *v22 = 0;
        v23 = *v19 ? v19 : "*";
        if ((*(a3 + 48) = v23, *(a3 + 56) = v23, !a9) && !*(a2 + 104) || *(a2 + 184))
        {
          log_OutText(*(a1 + 32), "FE_POS", 5, 0, "retag POS %s", v23);
          UniqDynamicPOS = statpos_retagPOS(a1, a2, a3, a4, &v32, a8, a7);
          if ((UniqDynamicPOS & 0x80000000) != 0)
          {
            break;
          }
        }

        if (a9 == 1)
        {
          UniqDynamicPOS = statpos_getUniqDynamicPOS(a1, a2, *(a3 + 48), &v32);
          if ((UniqDynamicPOS & 0x80000000) != 0)
          {
            break;
          }
        }

        if (*(a2 + 104))
        {
          UniqDynamicPOS = statpos_getPOSOffset(a1, a2, *(a3 + 48), &v32);
          if ((UniqDynamicPOS & 0x80000000) != 0)
          {
            break;
          }
        }

        UniqDynamicPOS = statPOSAddUniqueTagOffset2Word(a1, a3, a4, v32, a6);
        if ((UniqDynamicPOS & 0x80000000) != 0)
        {
          break;
        }

        v19 = v22 + 1;
        v22 = strchr(v22 + 1, 92);
        if (!v22)
        {
          if (*v19)
          {
            v25 = v19;
          }

          else
          {
            v25 = "*";
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
      if (*v19)
      {
        v25 = v19;
      }

      else
      {
        v25 = "*";
      }

LABEL_27:
      *(a3 + 48) = v25;
      *(a3 + 56) = v25;
      if ((a9 || *(a2 + 104)) && !*(a2 + 184) || (log_OutText(*(a1 + 32), "FE_POS", 5, 0, "retag POS %s", v25), UniqDynamicPOS = statpos_retagPOS(a1, a2, a3, a4, &v32, a8, a7), (UniqDynamicPOS & 0x80000000) == 0))
      {
        if (a9 != 1 || (UniqDynamicPOS = statpos_getUniqDynamicPOS(a1, a2, *(a3 + 48), &v32), (UniqDynamicPOS & 0x80000000) == 0))
        {
          if (!*(a2 + 104) || (UniqDynamicPOS = statpos_getPOSOffset(a1, a2, *(a3 + 48), &v32), (UniqDynamicPOS & 0x80000000) == 0))
          {
            v26 = statPOSAddUniqueTagOffset2Word(a1, a3, a4, v32, a6);
            if ((v26 & 0x80000000) == 0 && !*(*(*a3 + 160 * a4 + 48) + 24))
            {
              v27 = strlen(__s);
              v28 = heap_Calloc(*(a1 + 8), 1, (v27 + 1));
              *(*(*a3 + 160 * a4 + 48) + 24) = v28;
              if (v28)
              {
                strcpy(v28, __s);
              }

              else
              {
                v26 = 2313166858;
                log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
              }
            }

            goto LABEL_40;
          }
        }
      }
    }

    v26 = UniqDynamicPOS;
LABEL_40:
    heap_Free(*(a1 + 8), __s);
    return v26;
  }

  v26 = 2313166858;
  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return v26;
}

uint64_t readAddPOI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6, uint64_t a7)
{
  v29 = 0;
  *v28 = 0;
  v14 = (*(a1 + 184))(a2, a3, a7, 14, &v29 + 2);
  if ((v14 & 0x80000000) == 0)
  {
    if (HIWORD(v29))
    {
      v14 = (*(a1 + 176))(a2, a3, a7, 14, v28, &v29);
      if ((v14 & 0x80000000) == 0 && v29 >= 2u)
      {
        v27 = 0;
        v26 = 0;
        v15 = hlp_NLUStrFind(*v28, "S_POI", &v27, &v26);
        if (v15)
        {
          v16 = v27;
        }

        else
        {
          v16 = 0;
        }

        if (v15)
        {
          v17 = 66;
        }

        else
        {
          v17 = 0;
        }

        if (hlp_NLUStrFind(*v28, "I_POI", &v27, &v26))
        {
          v16 = v27;
          v17 = 73;
        }

        v18 = hlp_NLUStrFind(*v28, "E_POI", &v27, &v26);
        if (v17 == 66)
        {
          v19 = 83;
        }

        else
        {
          v19 = 69;
        }

        if (v18)
        {
          v16 = v27;
          v20 = v19;
        }

        else
        {
          v20 = v17;
        }

        v21 = *a5 + 160 * a6;
        *(v21 + 128) = v20;
        if (v16)
        {
          if (!*(v21 + 136))
          {
            v22 = strlen(v16);
            v23 = heap_Calloc(*(a4 + 8), 1, v22 + 3);
            *(*a5 + 160 * a6 + 136) = v23;
            if (v23)
            {
              *v23 = 44;
              strcat(*(*a5 + 160 * a6 + 136), v16);
              v24 = *(*a5 + 160 * a6 + 136);
              *&v24[strlen(v24)] = 44;
            }

            else
            {
              log_OutPublic(*(a4 + 32), "FE_POS", 35000, 0);
              return 2313166858;
            }
          }
        }

        else
        {
          *(v21 + 136) = 0;
        }
      }
    }
  }

  return v14;
}

uint64_t readPOSandPHRfromNLU(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, unsigned int a5)
{
  v12 = 0uLL;
  v11 = 0;
  hlp_NLUStrFind(a4, "POS", &v12 + 1, &v11 + 1);
  hlp_NLUStrFind(a4, "PHR", &v12, &v11);
  if (v12 != 0)
  {
    return addPOSandPHR(a1, a2, a3, a5, a5, *(&v12 + 1), HIWORD(v11), v12, v11);
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "missing POS/PHR in NLU field: %s", a4);
  return 2313166848;
}

uint64_t readPOSandPHRfromNLUMarkers(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *__s, uint64_t a9, __int16 a10)
{
  v31 = 0;
  v30 = 0;
  v29 = 0uLL;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  strlen(__s);
  v17 = (*(a6 + 104))(a4, a5, 2, a7, &v26);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v25 = a1;
  v24 = a3;
  while (v26)
  {
    v17 = (*(a6 + 168))(a4, a5);
    if ((v17 & 0x80000000) == 0)
    {
      v17 = (*(a6 + 120))(a4, a5, v26, &v26);
      if ((v17 & 0x80000000) == 0)
      {
        continue;
      }
    }

    return v17;
  }

  v27 = a9;
  v17 = (*(a6 + 176))(a4, a5, a7, 1, &v31, &v30);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  if (v30)
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      if (*(v31 + v18) == 51)
      {
        v20 = *(v31 + v18 + 12) - *(v31 + 12);
        if (v20 >= v27 && v20 < HIWORD(v27))
        {
          break;
        }
      }

      ++v19;
      v18 += 32;
      if (32 * v30 == v18)
      {
        goto LABEL_17;
      }
    }

    hlp_NLUStrFind(*(v31 + v18 + 24), "POS", &v29 + 1, &v28 + 1);
    hlp_NLUStrFind(*(v31 + v18 + 24), "PHR", &v29, &v28);
    if (v29 == 0)
    {
      v22 = 2313166848;
      log_OutText(*(v25 + 32), "FE_POS", 5, 0, "missing POS/PHR in (NLU) marker number: %d");
      return v22;
    }

    return addPOSandPHR(v25, a2, v24, a10, a10, *(&v29 + 1), HIWORD(v28), v29, v28);
  }

LABEL_17:
  v22 = 2313166848;
  log_OutText(*(v25 + 32), "FE_POS", 5, 0, "couldnt recover from missing NLU field on word record %d,%d");
  return v22;
}

uint64_t addToken_0(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned __int16 *a4, const char *a5)
{
  v8 = *(a2 + 4);
  v9 = *a4;
  if (*(a2 + 4))
  {
    v11 = 0;
    v12 = 0;
    v13 = v8 + 1;
    v14 = *a2;
    v15 = a4[1];
    while (1)
    {
      v16 = *(v14 + v11);
      if (v9 == v16)
      {
        v13 = v12;
      }

      v17 = *(v14 + v11 + 2);
      if (v15 == v17)
      {
        break;
      }

      if (v15 >= v16 && v15 < v17)
      {
        break;
      }

      ++v12;
      v9 = *a4;
      v11 += 160;
      if (160 * v8 == v11)
      {
        goto LABEL_12;
      }
    }

    if (v8 + 1 != v13)
    {
      v22 = checkSpan_0(a1, a3, (v14 + 160 * v13 + 56));
      if ((v22 & 0x80000000) == 0)
      {
        v22 = checkSpan_0(a1, a3, (*a2 + v11 + 56));
        if ((v22 & 0x80000000) == 0)
        {
          v23 = *a2;
          v24 = *(*a2 + 160 * v13 + 56);
          *(v24 + 48) = 1;
          *(v24 + 56) = v13;
          *(v24 + 58) = v12;
          v25 = *(v23 + v11 + 56);
          *(v25 + 52) = 1;
          *(v25 + 56) = v13;
          v26 = strlen(a5);
          v27 = heap_Calloc(*(a1 + 8), 1, (v26 - 1));
          *(*(*a2 + 160 * v13 + 56) + 64) = v27;
          if (!v27)
          {
            log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
            return 2313166858;
          }

          v28 = v27;
          v29 = strlen(a5 + 1);
          strncpy(v28, a5 + 1, v29 - 1);
          v30 = strlen(a5);
          v22 = checkAllocAndZero(a1, (*(*a2 + 160 * v13 + 48) + 16), v30 + 1);
          if ((v22 & 0x80000000) == 0)
          {
            strcat(*(*(*a2 + 160 * v13 + 48) + 16), "B-");
            v31 = strlen(a5 + 1);
            strncpy((*(*(*a2 + 160 * v13 + 48) + 16) + 2), a5 + 1, v31 - 1);
            v19 = 0;
            v32 = v13 + 1;
            if ((v13 + 1) > v12)
            {
              return v19;
            }

            while (1)
            {
              v33 = v32;
              v34 = *(*a2 + 160 * v32 + 48);
              v35 = strlen(a5);
              v22 = checkAllocAndZero(a1, (v34 + 16), v35 + 1);
              if ((v22 & 0x80000000) != 0)
              {
                break;
              }

              strcat(*(*(*a2 + 160 * v33 + 48) + 16), "I-");
              v36 = strlen(a5 + 1);
              strncpy((*(*(*a2 + 160 * v33 + 48) + 16) + 2), a5 + 1, v36 - 1);
              v19 = 0;
              v32 = v33 + 1;
              if ((v33 + 1) > v12)
              {
                return v19;
              }
            }
          }
        }
      }

      return v22;
    }
  }

  else
  {
LABEL_12:
    v15 = a4[1];
  }

  v19 = 2313166848;
  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "could not resolve token positions (find start and end) : token=%s from=%d to=%d", a5, v9, v15);
  if (*(a2 + 4))
  {
    v20 = 0;
    v21 = 0;
    do
    {
      log_OutText(*(a1 + 32), "FE_POS", 5, 0, "word[%d] %d,%d", v21++, *(*a2 + v20), *(*a2 + v20 + 2));
      v20 += 160;
    }

    while (v21 < *(a2 + 4));
  }

  return v19;
}

uint64_t markPhoneticRegions(uint64_t a1, uint64_t a2)
{
  LOWORD(v2) = *(a2 + 8);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    if (*(*a2 + 160 * v5 + 40) == 1 && v5 < v2)
    {
      v6 = *a2 + 160 * v5;
      if (*(v6 + 40) == 1)
      {
        break;
      }
    }

    v8 = v5;
LABEL_18:
    v5 = v8 + 1;
    if ((v8 + 1) >= v2)
    {
      return 0;
    }
  }

  v7 = 160 * v5;
  v8 = v5;
  while (1)
  {
    v9 = *(*(v6 + 48) + 24);
    if (v9)
    {
      heap_Free(*(a1 + 8), v9);
      v10 = *a2 + v7;
      *(*(v10 + 48) + 24) = 0;
      heap_Free(*(a1 + 8), *(v10 + 104));
      *(*a2 + v7 + 104) = 0;
    }

    v11 = heap_Calloc(*(a1 + 8), 1, 5);
    *(*a2 + v7 + 104) = v11;
    if (!v11)
    {
      break;
    }

    v12 = v8 == v5 ? "B-PH" : "I-PH";
    *v11 = *v12;
    *(v11 + 4) = v12[4];
    v13 = heap_Calloc(*(a1 + 8), 1, 4);
    *(*(*a2 + v7 + 48) + 24) = v13;
    if (!v13)
    {
      break;
    }

    *v13 = 4935253;
    ++v8;
    v2 = *(a2 + 8);
    if (v2 > v8)
    {
      v6 = *a2 + 160 * v8;
      v7 += 160;
      if (*(v6 + 40) == 1)
      {
        continue;
      }
    }

    goto LABEL_18;
  }

  log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
  return 2313166858;
}

uint64_t resolvePHR_0(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a4[4])
  {
    return 0;
  }

  v7 = 0;
  v8 = 104;
  do
  {
    if (v8 != 104)
    {
      v9 = (*a4 + v8);
      if (!*v9)
      {
        v10 = *a4 + v8;
        v11 = *(v10 - 160);
        if (v11)
        {
          v12 = *(v9 - 52);
          if (v12 >= 2 && *(a1 + (v12 - 1)) == 95)
          {
            v13 = strlen(v11);
            v14 = heap_Calloc(*(a2 + 8), 1, (v13 + 3));
            v15 = *a4;
            *(*a4 + v8) = v14;
            if (!v14)
            {
              goto LABEL_74;
            }

            strcpy(v14, *(v15 + v8 - 160));
            v16 = *a4;
            v17 = *(*a4 + v8);
            if (*v17 != 79 || v17[1])
            {
              *v17 = 73;
              v16 = *a4;
            }

            v18 = *(*(v16 + v8 - 56) + 24);
            if (v18)
            {
              heap_Free(*(a2 + 8), v18);
              v16 = *a4;
              *(*(*a4 + v8 - 56) + 24) = 0;
            }

            v19 = strlen(*(*(v16 + v8 - 216) + 24));
            v20 = heap_Calloc(*(a2 + 8), 1, (v19 + 3));
            v21 = *a4;
            *(*(*a4 + v8 - 56) + 24) = v20;
            if (!v20)
            {
              goto LABEL_74;
            }

            v22 = "[1] set missing PHR on word : word index=%d to %s (also copy POS %s)";
LABEL_30:
            strcpy(v20, *(*(v21 + v8 - 216) + 24));
            log_OutText(*(a2 + 32), "FE_POS", 5, 0, v22, v7, *(*a4 + v8), *(*(*a4 + v8 - 56) + 24));
            goto LABEL_31;
          }
        }

        v23 = *(v10 - 160);
        if (!v23)
        {
          goto LABEL_31;
        }

        v24 = *v23;
        if (v24 == 66)
        {
          v31 = strlen(v23);
          v32 = heap_Calloc(*(a2 + 8), 1, (v31 + 3));
          v33 = *a4;
          *(*a4 + v8) = v32;
          if (!v32)
          {
            goto LABEL_74;
          }

          strcpy(v32, *(v33 + v8 - 160));
          **(*a4 + v8) = 73;
          v34 = *a4;
          v35 = *(*(*a4 + v8 - 56) + 24);
          if (v35)
          {
            heap_Free(*(a2 + 8), v35);
            v34 = *a4;
            *(*(*a4 + v8 - 56) + 24) = 0;
          }

          v36 = strlen(*(*(v34 + v8 - 216) + 24));
          v20 = heap_Calloc(*(a2 + 8), 1, (v36 + 3));
          v21 = *a4;
          *(*(*a4 + v8 - 56) + 24) = v20;
          if (!v20)
          {
LABEL_74:
            v65 = 2313166858;
            log_OutPublic(*(a2 + 32), "FE_POS", 35000, 0);
            return v65;
          }

          v22 = "[3] set missing PHR on word : word index=%d to %s (also copy POS %s)";
          goto LABEL_30;
        }

        if (v24 == 79 || v24 == 73)
        {
          v25 = strlen(v23);
          v26 = heap_Calloc(*(a2 + 8), 1, (v25 + 3));
          v27 = *a4;
          *(*a4 + v8) = v26;
          if (!v26)
          {
            goto LABEL_74;
          }

          strcpy(v26, *(v27 + v8 - 160));
          v28 = *a4;
          v29 = *(*(*a4 + v8 - 56) + 24);
          if (v29)
          {
            heap_Free(*(a2 + 8), v29);
            v28 = *a4;
            *(*(*a4 + v8 - 56) + 24) = 0;
          }

          v30 = strlen(*(*(v28 + v8 - 216) + 24));
          v20 = heap_Calloc(*(a2 + 8), 1, (v30 + 3));
          v21 = *a4;
          *(*(*a4 + v8 - 56) + 24) = v20;
          if (!v20)
          {
            goto LABEL_74;
          }

          v22 = "[2] set missing PHR on word : word index=%d to %s (also copy POS %s)";
          goto LABEL_30;
        }
      }
    }

LABEL_31:
    ++v7;
    v37 = a4[4];
    v8 += 160;
  }

  while (v7 < v37);
  if (!a4[4])
  {
    return 0;
  }

  v38 = 0;
  v39 = (*a4 + 104);
  v40 = a3;
  do
  {
    if (!*v39)
    {
      log_OutText(*(a2 + 32), "FE_POS", 5, 0, "could not work out PHR on word : word index=%d");
      return 2313166848;
    }

    ++v38;
    v39 += 20;
  }

  while (v37 != v38);
  v41 = 0;
  v42 = 104;
  do
  {
    v43 = *(*a4 + v42);
    if (*v43 == 73 && v43[1] == 45)
    {
      if (v42 == 104)
      {
        *v43 = 66;
        log_OutText(*(a2 + 32), "FE_POS", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", 0, *(*a4 + 104));
      }

      else if (strcmp(*(*a4 + v42 - 160), *(*a4 + v42)))
      {
        __strcpy_chk();
        __s2[0] = 66;
        v44 = *a4;
        if (strcmp(*(*a4 + v42 - 160), __s2))
        {
          **(v44 + v42) = 66;
          log_OutText(*(a2 + 32), "FE_POS", 5, 0, "Error : no B- preceding I- PHR : change PHR on word %d to %s", v41, *(*a4 + v42));
        }
      }
    }

    ++v41;
    v42 += 160;
  }

  while (v41 < a4[4]);
  if (!a4[4])
  {
    return 0;
  }

  v45 = 0;
  v46 = 0;
  do
  {
    v47 = v46;
    __strcpy_chk();
    if (*__s2 == 11586)
    {
      __strcpy_chk();
    }

    v48 = a4[4];
    v49 = v46;
    if (v48 > v46)
    {
      v67 = v45;
      v50 = *a4;
      v51 = *a4 + 160 * v46;
      v49 = v46;
      while (1)
      {
        v52 = v50 + 160 * v49;
        v53 = *(v52 + 104);
        if (!v53 || (strlen(*(v52 + 104)) < 3 || strcmp((v53 + 2), __s2) || *v53 != 73 || *(v53 + 1) != 45) && *(v50 + 160 * v49 + 4) != *(v51 + 4))
        {
          break;
        }

        if (v48 <= ++v49)
        {
          v49 = v48;
          break;
        }
      }

      v45 = v67;
      v40 = a3;
      v47 = v46;
    }

    v54 = v49 - 1;
    log_OutText(*(a2 + 32), "FE_POS", 5, 0, "[3] add syn chunk %s from %d to %d", __s2, v45, v49 - 1);
    if (v46 > (v49 - 1) || a4[4] <= v54)
    {
      log_OutText(*(a2 + 32), "FE_POS", 5, 0, "syntactic chunks out of order: fromWordIdx=%d toWordIdx=%d numWords=%d");
      return 2313166848;
    }

    v55 = checkSpan_0(a2, v40, (*a4 + 160 * v47 + 56));
    if ((v55 & 0x80000000) != 0)
    {
      return v55;
    }

    v55 = checkSpan_0(a2, v40, (*a4 + 160 * (v49 - 1) + 56));
    if ((v55 & 0x80000000) != 0)
    {
      return v55;
    }

    v56 = *a4;
    v57 = 5 * v47;
    v58 = *(*a4 + 32 * v57 + 56);
    *(v58 + 96) = 1;
    *(v58 + 104) = v46;
    *(v58 + 106) = v54;
    v59 = *(v56 + 160 * (v49 - 1) + 56);
    *(v59 + 100) = 1;
    *(v59 + 104) = v46;
    v60 = strlen(__s2);
    v61 = heap_Calloc(*(a2 + 8), 1, (v60 + 1));
    *(*(*a4 + 32 * v57 + 56) + 112) = v61;
    if (!v61)
    {
      goto LABEL_74;
    }

    strcpy(v61, __s2);
    if (v46 == v49)
    {
      v46 = v49 + 1;
    }

    else
    {
      v46 = v49;
    }

    v45 = v46;
  }

  while (v46 < a4[4]);
  if (!a4[4])
  {
    return 0;
  }

  v62 = 0;
  v63 = *a4;
  v64 = 104;
  do
  {
    heap_Free(*(a2 + 8), *(v63 + v64));
    v65 = 0;
    v63 = *a4;
    *(*a4 + v64) = 0;
    ++v62;
    v64 += 160;
  }

  while (v62 < a4[4]);
  return v65;
}

uint64_t setPotentialPOSTags(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  __s2[0] = *(a2 + 120);
  __s2[1] = 0;
  if (*(a3 + 4))
  {
    v4 = 0;
    v5 = *a3;
    do
    {
      v6 = v5 + 160 * v4;
      v7 = *(v6 + 72);
      if (*(v6 + 72))
      {
        v8 = 0;
        v9 = *(v6 + 72);
        v10 = *(v6 + 64);
        do
        {
          v11 = *v10;
          v10 += 6;
          v8 += strlen((*(a2 + 296) + *(*(a2 + 304) + 4 * v11)));
          --v9;
        }

        while (v9);
        *(v6 + 80) = 0;
        if (v8)
        {
          v12 = heap_Calloc(*(a1 + 8), 1, 2 * v7 + v8 + 1);
          v13 = *a3;
          *(*a3 + 160 * v4 + 80) = v12;
          if (!v12)
          {
            log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
            return 2313166858;
          }

          if (*(v13 + 160 * v4 + 72))
          {
            v14 = 0;
            v15 = 0;
            v16 = *(a2 + 296);
            v17 = *(a2 + 304);
            v18 = *a3;
            v19 = *a3 + 160 * v4;
            v20 = __dst;
            do
            {
              v21 = strcpy(v20, (v16 + *(v17 + 4 * *(*(v13 + 160 * v4 + 64) + v14))));
              ++v15;
              v22 = *(v19 + 72);
              v20 = v21 + 16;
              v14 += 24;
              v13 = v18;
            }

            while (v15 < v22);
          }

          else
          {
            v22 = 0;
          }

          ssft_qsort(__dst, v22, 16, string_cmp);
          strcpy(*(*a3 + 160 * v4 + 80), __dst);
          v5 = *a3;
          if (*(*a3 + 160 * v4 + 72) >= 2u)
          {
            v23 = &v29;
            v24 = 1;
            do
            {
              strcat(*(v5 + 160 * v4 + 80), __s2);
              strcat(*(*a3 + 160 * v4 + 80), v23);
              ++v24;
              v5 = *a3;
              v23 += 16;
            }

            while (v24 < *(*a3 + 160 * v4 + 72));
          }
        }
      }

      else
      {
        *(v6 + 80) = 0;
      }

      ++v4;
    }

    while (v4 < *(a3 + 4));
  }

  return 0;
}

uint64_t printSent_0(uint64_t a1, uint64_t a2, uint64_t *a3, const char *a4, int a5, int a6)
{
  if (!*(a3 + 25))
  {
    return 0;
  }

  log_OutText(*(a1 + 32), "FE_POS", 5, 0, "Sentence :%s", a4);
  if (*(a3 + 4))
  {
    v11 = 0;
    while (1)
    {
      sprintf(a3[11], "[%2d] ", v11);
      result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v13 = *a3;
      if (*(*a3 + 160 * v11 + 44) == 1)
      {
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "*DUMMY* ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v13 = *a3;
      }

      if (*(v13 + 160 * v11 + 8) == 1)
      {
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "*OOV* ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v13 = *a3;
      }

      if (*(v13 + 160 * v11 + 72) >= 2u)
      {
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "*AMB* ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v13 = *a3;
      }

      strncpy(a3[11], **(v13 + 160 * v11 + 48), 0x14uLL);
      v14 = strlen(**(*a3 + 160 * v11 + 48));
      if (v14 <= 0x13)
      {
        do
        {
          *(a3[11] + strlen(a3[11])) = 32;
        }

        while (v14++ < 0x13);
      }

      result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = statcomp_add2Str(a1, a3 + 10, a3 + 48, " ");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (*(*a3 + 160 * v11 + 120))
      {
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "canon=");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, *(*a3 + 160 * v11 + 120));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, " ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      if (a6 == 1)
      {
        v16 = *a3;
        if (*(*a3 + 160 * v11 + 24) == 1)
        {
          result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "DCTWORD ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v16 = *a3;
        }

        if (*(v16 + 160 * v11 + 16) == 1)
        {
          result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "FollowedByUnderscore ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v16 = *a3;
        }

        if (*(v16 + 160 * v11 + 20) == 1)
        {
          result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "FollowedBySpace ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }
      }

      v17 = *a3 + 160 * v11;
      if (a5 == 1)
      {
        break;
      }

      if (*(v17 + 88))
      {
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "PREDICTEDPOS=");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v19 = *(*a3 + 160 * v11 + 88);
LABEL_39:
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, v19);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      v20 = *a3;
      if (*(*a3 + 160 * v11 + 104))
      {
        sprintf(a3[11], "tmphr=%4s ", *(*a3 + 160 * v11 + 104));
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v20 = *a3;
      }

      if (*(v20 + 160 * v11 + 112))
      {
        sprintf(a3[11], "retag=%4s ", *(v20 + 160 * v11 + 112));
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v20 = *a3;
      }

      v21 = *(*(v20 + 160 * v11 + 48) + 16);
      if (!v21)
      {
        v21 = " ";
      }

      sprintf(a3[11], " %6s ", v21);
      result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v22 = *a3;
      if (*(*a3 + 160 * v11 + 12))
      {
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "_HASCOMMA ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v22 = *a3;
      }

      if (*(v22 + 160 * v11 + 40))
      {
        result = statcomp_add2Str(a1, a3 + 10, a3 + 48, " bPHONETIC ");
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      if (*(a2 + 376))
      {
        v23 = 0;
        v24 = 0;
        do
        {
          v25 = *a3;
          v26 = *(*a3 + 160 * v11 + 56);
          if (v26)
          {
            if (*(v26 + v23) != 1)
            {
              goto LABEL_96;
            }

            sprintf(a3[11], "<%s ", *(v26 + v23 + 16));
            result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v25 = *a3;
            v26 = *(*a3 + 160 * v11 + 56);
            if (v26)
            {
LABEL_96:
              v27 = v26 + v23;
              if (*(v27 + 4) == 1)
              {
                sprintf(a3[11], "%s> ", *(*(v25 + 160 * *(v27 + 8) + 56) + v23 + 16));
                result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }
            }
          }

          ++v24;
          v23 += 24;
        }

        while (v24 < *(a2 + 376));
      }

      result = statcomp_add2Str(a1, a3 + 10, a3 + 48, " uniqueTagRecs:");
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v28 = *a3;
      if (*(*a3 + 160 * v11 + 72))
      {
        v29 = 0;
        v36 = a6;
        v37 = a5;
        while (1)
        {
          result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "<RETAG=");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(a1, a3 + 10, a3 + 48, (*(a2 + 296) + *(*(a2 + 304) + 4 * *(*(*a3 + 160 * v11 + 64) + 24 * v29))));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = statcomp_add2Str(a1, a3 + 10, a3 + 48, ",");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v30 = *(*a3 + 160 * v11 + 64);
          if (*(v30 + 24 * v29 + 16))
          {
            v31 = 0;
            v32 = 0;
            do
            {
              v33 = (*(v30 + 24 * v29 + 8) + v31);
              v34 = "*KEEP*";
              if (*(v33 + 1) != 1)
              {
                v34 = "";
              }

              v35 = "*SPLIT*";
              if (*(v33 + 2) != 1)
              {
                v35 = "";
              }

              sprintf(a3[11], "[%s%s%d,", v34, v35, *v33);
              result = statcomp_add2Str(a1, a3 + 10, a3 + 48, a3[11]);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = statcomp_add2Str(a1, a3 + 10, a3 + 48, *(*(*(*a3 + 160 * v11 + 64) + 24 * v29 + 8) + v31 + 16));
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "]");
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              ++v32;
              v30 = *(*a3 + 160 * v11 + 64);
              v31 += 24;
            }

            while (v32 < *(v30 + 24 * v29 + 16));
          }

          result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "> ");
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          ++v29;
          v28 = *a3;
          a6 = v36;
          a5 = v37;
          if (v29 >= *(*a3 + 160 * v11 + 72))
          {
            if (!*(*a3 + 160 * v11 + 72) || !*(v28 + 160 * v11 + 80))
            {
              break;
            }

            result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "<POTENTIALTAGS=");
            if ((result & 0x80000000) == 0)
            {
              result = statcomp_add2Str(a1, a3 + 10, a3 + 48, *(*a3 + 160 * v11 + 80));
              if ((result & 0x80000000) == 0)
              {
                result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "> ");
                if ((result & 0x80000000) == 0)
                {
                  v28 = *a3;
                  break;
                }
              }
            }

            return result;
          }
        }
      }

      if (!*(v28 + 160 * v11 + 88) || (result = statcomp_add2Str(a1, a3 + 10, a3 + 48, "PREDICTEDPOS="), (result & 0x80000000) == 0) && (result = statcomp_add2Str(a1, a3 + 10, a3 + 48, *(*a3 + 160 * v11 + 88)), (result & 0x80000000) == 0))
      {
        log_OutText(*(a1 + 32), "FE_POS", 5, 0, "%s", a3[10]);
        result = 0;
        *a3[10] = 0;
        if (++v11 < *(a3 + 4))
        {
          continue;
        }
      }

      return result;
    }

    v18 = *(*(v17 + 48) + 24);
    if (!v18)
    {
      v18 = " ";
    }

    sprintf(a3[11], "%4s ", v18);
    v19 = a3[11];
    goto LABEL_39;
  }

  return 0;
}

double statpos_freeSentenceData(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[91];
  if (v3)
  {
    heap_Free(*(v2 + 8), v3);
    a1[91] = 0;
    *(a1 + 372) = 0;
  }

  v4 = a1[92];
  if (v4)
  {
    heap_Free(*(v2 + 8), v4);
    a1[92] = 0;
  }

  v5 = a1 + 81;
  v6 = a1[81];
  if (*(a1 + 328))
  {
    v7 = 0;
    do
    {
      if (*(v6 + 160 * v7 + 104))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 104));
        v6 = *v5;
        *(*v5 + 160 * v7 + 104) = 0;
      }

      if (*(v6 + 160 * v7 + 136))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 136));
        v6 = *v5;
        *(*v5 + 160 * v7 + 136) = 0;
      }

      if (*(v6 + 160 * v7 + 112))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 112));
        v6 = *v5;
        *(*v5 + 160 * v7 + 112) = 0;
      }

      v8 = *(v6 + 160 * v7 + 48);
      if (v8)
      {
        v9 = *(a1 + 192);
        if (v9)
        {
          for (i = 0; i < v9; ++i)
          {
            v8 = *(v6 + 160 * v7 + 48);
            if (*(v8 + 8 * i))
            {
              heap_Free(*(v2 + 8), *(v8 + 8 * i));
              v6 = a1[81];
              v8 = *(v6 + 160 * v7 + 48);
              *(v8 + 8 * i) = 0;
              v9 = *(a1 + 192);
            }
          }
        }

        heap_Free(*(v2 + 8), v8);
        v6 = *v5;
        *(*v5 + 160 * v7 + 48) = 0;
      }

      v11 = *(v6 + 160 * v7 + 56);
      if (v11)
      {
        v12 = *(a1 + 192);
        if (v12)
        {
          v13 = 0;
          v14 = 16;
          do
          {
            v11 = *(v6 + 160 * v7 + 56);
            if (*(v11 + v14))
            {
              heap_Free(*(v2 + 8), *(v11 + v14));
              v6 = a1[81];
              v11 = *(v6 + 160 * v7 + 56);
              *(v11 + v14) = 0;
              v12 = *(a1 + 192);
            }

            ++v13;
            v14 += 24;
          }

          while (v13 < v12);
        }

        heap_Free(*(v2 + 8), v11);
        v6 = *v5;
        *(*v5 + 160 * v7 + 56) = 0;
      }

      if (*(v6 + 160 * v7 + 72))
      {
        v15 = 0;
        do
        {
          v16 = *(v6 + 160 * v7 + 64);
          if (*(v16 + 24 * v15 + 16))
          {
            v17 = 0;
            v18 = 16;
            do
            {
              v19 = *(*(v16 + 24 * v15 + 8) + v18);
              if (v19)
              {
                heap_Free(*(v2 + 8), v19);
                v16 = *(*v5 + 160 * v7 + 64);
                *(*(v16 + 24 * v15 + 8) + v18) = 0;
              }

              ++v17;
              v18 += 24;
            }

            while (v17 < *(v16 + 24 * v15 + 16));
            heap_Free(*(v2 + 8), *(v16 + 24 * v15 + 8));
            v6 = *v5;
            v20 = *(*v5 + 160 * v7 + 64) + 24 * v15;
            *(v20 + 8) = 0;
            *(v20 + 16) = 0;
          }

          ++v15;
        }

        while (v15 < *(v6 + 160 * v7 + 72));
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 64));
        v6 = *v5;
        v21 = *v5 + 160 * v7;
        *(v21 + 64) = 0;
        *(v21 + 72) = 0;
      }

      if (*(v6 + 160 * v7 + 80))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 80));
        v6 = *v5;
        *(*v5 + 160 * v7 + 80) = 0;
      }

      if (*(v6 + 160 * v7 + 88))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 88));
        v6 = *v5;
        *(*v5 + 160 * v7 + 88) = 0;
      }

      if (*(v6 + 160 * v7 + 120))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 120));
        v6 = *v5;
        *(*v5 + 160 * v7 + 120) = 0;
      }

      if (*(v6 + 160 * v7 + 32))
      {
        heap_Free(*(v2 + 8), *(v6 + 160 * v7 + 32));
        v6 = *v5;
        *(*v5 + 160 * v7 + 32) = 0;
      }

      ++v7;
    }

    while (v7 < *(a1 + 328));
    goto LABEL_48;
  }

  if (v6)
  {
LABEL_48:
    heap_Free(*(v2 + 8), v6);
  }

  a1[97] = 0;
  result = 0.0;
  *(a1 + 93) = 0u;
  *(a1 + 95) = 0u;
  *(a1 + 89) = 0u;
  *(a1 + 91) = 0u;
  *(a1 + 85) = 0u;
  *(a1 + 87) = 0u;
  *v5 = 0u;
  *(a1 + 83) = 0u;
  return result;
}

uint64_t statpos_updateNLULingdbField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v8 = (a4 + 81);
  v9 = *a4;
  v10 = *(a4 + 328);
  if (*(a4 + 328))
  {
    v11 = *v8;
    v12 = (v10 + 3) & 0x1FFFC;
    v13 = xmmword_1C378AEF0;
    v14 = xmmword_1C378AF00;
    v15 = vdupq_n_s64(v10 - 1);
    v16 = vdupq_n_s64(4uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, v14));
      if (vuzp1_s16(v17, *v13.i8).u8[0])
      {
        v11[38] = 0;
      }

      if (vuzp1_s16(v17, *&v13).i8[2])
      {
        v11[78] = 0;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v15, *&v13))).i32[1])
      {
        v11[118] = 0;
        v11[158] = 0;
      }

      v13 = vaddq_s64(v13, v16);
      v14 = vaddq_s64(v14, v16);
      v11 += 160;
      v12 -= 4;
    }

    while (v12);
  }

  v31 = 0;
  v32 = 0;
  v30 = 0;
  v33[0] = *(a4 + 128);
  v33[1] = 0;
  *__s = 0u;
  v35 = 0u;
  result = (*(a1 + 104))(a2, a3, 1, 0, &v32);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 184))(a2, a3, v32, 0, &v32 + 2);
    if ((result & 0x80000000) == 0 && HIWORD(v32) == 1)
    {
      result = (*(a1 + 176))(a2, a3, v32, 0, &v26, &v30);
      if ((result & 0x80000000) == 0 && v30 >= 2u)
      {
        result = (*(a1 + 104))(a2, a3, 2, v32, &v31 + 2);
        if ((result & 0x80000000) == 0)
        {
          v27 = 0;
          *a4[91] = 0;
          v19 = HIWORD(v31);
          if (HIWORD(v31))
          {
            while (1)
            {
              result = (*(a1 + 120))(a2, a3, v19, &v31);
              if ((result & 0x80000000) != 0)
              {
                break;
              }

              result = (*(a1 + 168))(a2, a3, HIWORD(v31), 0, 1, &v29, &v30);
              if ((result & 0x80000000) != 0)
              {
                break;
              }

              if (v29 <= 0xA && ((1 << v29) & 0x610) != 0)
              {
                result = (*(a1 + 168))(a2, a3, HIWORD(v31), 1, 1, &v28, &v30);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = (*(a1 + 168))(a2, a3, HIWORD(v31), 2, 1, &v28 + 2, &v30);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (v28 != HIWORD(v28))
                {
                  result = getWordIdx_0(v9, v8, v28, HIWORD(v28), &v27);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  v21 = v27;
                  v22 = *v8 + 160 * v27;
                  if (*(v22 + 44) || *(v22 + 152))
                  {
                    result = (*(a1 + 192))(a2, a3, HIWORD(v31));
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    v23 = *(v22 + 56);
                    if (v23 && (v24 = *(v23 + 112)) != 0)
                    {
                      if (*v24 == 79 && !v24[1])
                      {
                        __strcpy_chk();
                      }

                      else
                      {
                        strcpy(__s, "B-");
                        __strcat_chk();
                        v25 = strlen(__s);
                        if (__s[v25 - 2] == 45 && __s[v25 - 1] == 80 && !__s[v25])
                        {
                          __s[v25 - 2] = 0;
                        }
                      }
                    }

                    else if (__s[0] && *__s != 79)
                    {
                      __s[0] = 73;
                    }

                    result = updateNLUField_0(v9, a1, a2, a3, HIWORD(v31), (a4 + 1), v8, v21, *(*(*v8 + 160 * v21 + 48) + 24), __s, v33, 1);
                    if ((result & 0x80000000) != 0)
                    {
                      return result;
                    }

                    *(*v8 + 160 * v21 + 152) = 1;
                  }
                }
              }

              v19 = v31;
              HIWORD(v31) = v31;
              if (!v31)
              {
                goto LABEL_46;
              }
            }
          }

          else
          {
LABEL_46:
            *a4[91] = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t getWordIdx_0(uint64_t a1, unsigned __int16 *a2, int a3, int a4, _WORD *a5)
{
  if (a2[4])
  {
    v5 = 0;
    v6 = (*a2 + 2);
    while (*(v6 - 1) != a3 || *v6 != a4)
    {
      ++v5;
      v6 += 80;
      if (a2[4] == v5)
      {
        goto LABEL_6;
      }
    }

    result = 0;
    *a5 = v5;
  }

  else
  {
LABEL_6:
    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "cant align lingdb word : no word found with pos=%d,%d", a3, a4);
    return 2313166848;
  }

  return result;
}

uint64_t updateNLUField_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, unsigned int a8, char *a9, char *a10, char *__s, int a12)
{
  v17 = a3;
  v18 = a2;
  v46[0] = 0;
  v45 = 0;
  v44 = 0;
  result = (*(a2 + 184))(a3, a4, a5, 14, v46 + 2);
  if ((result & 0x80000000) == 0)
  {
    if (!HIWORD(v46[0]))
    {
      goto LABEL_5;
    }

    result = (*(v18 + 176))(v17, a4, a5, 14, &v44, v46);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (LOWORD(v46[0]) >= 2u)
    {
      v21 = v44;
    }

    else
    {
LABEL_5:
      v21 = "";
      v44 = "";
    }

    __src = v21;
    v22 = strlen(v21);
    if (a9)
    {
      v23 = v22 + strlen(a9) + 6;
    }

    else
    {
      v23 = v22 + 1;
    }

    if (a10)
    {
      v23 += strlen(a10) + 5;
    }

    v42 = v18;
    v43 = v17;
    v40 = a1;
    v41 = a8;
    if (__s && a12 == 1)
    {
      v24 = v23 + 9;
      v38 = a8;
      v25 = *a7 + 160 * a8;
      v26 = *(v25 + 72);
      if (*(v25 + 72))
      {
        v27 = *(v25 + 64);
        v28 = strlen(__s);
        do
        {
          v29 = *v27;
          v27 += 6;
          v24 += strlen((*(a6 + 296) + *(*(a6 + 304) + 4 * v29))) + v28;
          --v26;
        }

        while (v26);
      }

      if (*(v25 + 8) == 1)
      {
        v23 = v24 + 6;
      }

      else
      {
        v23 = v24;
      }

      v30 = *(*a7 + 160 * v38 + 120);
      if (v30)
      {
        v23 += strlen(v30) + 11;
      }

      v18 = v42;
      v17 = v43;
      a1 = v40;
      a8 = v41;
    }

    if (v23 <= *(a7 + 48))
    {
      v31 = a7[10];
      v32 = __src;
    }

    else
    {
      v31 = heap_Realloc(*(a1 + 8), a7[10], v23);
      if (!v31)
      {
        log_OutPublic(*(a1 + 32), "FE_POS", 35000, 0);
        return 2313166858;
      }

      *(a7 + 48) = v23;
      a7[10] = v31;
      v32 = v44;
    }

    strcpy(v31, v32);
    if (a9)
    {
      hlp_NLUStrSet(a7[10], "POS", a9);
    }

    if (a10)
    {
      hlp_NLUStrSet(a7[10], "PHR", a10);
    }

    if (a12 == 1)
    {
      v33 = *a7;
      if (*(*a7 + 160 * a8 + 72))
      {
        v34 = 0;
        v35 = 0;
        do
        {
          hlp_NLUStrAppend(a7[10], "MAPTAGS", (*(a6 + 296) + *(*(a6 + 304) + 4 * *(*(v33 + 160 * a8 + 64) + v34))), __s);
          ++v35;
          v33 = *a7;
          v34 += 24;
        }

        while (v35 < *(*a7 + 160 * a8 + 72));
      }

      v18 = v42;
      v17 = v43;
      a1 = v40;
      if (*(v33 + 160 * a8 + 8) == 1)
      {
        hlp_NLUStrSet(a7[10], "OOV", "1");
        v33 = *a7;
      }

      v36 = *(v33 + 160 * a8 + 120);
      a8 = v41;
      if (v36)
      {
        hlp_NLUStrSet(a7[10], "CANONICAL", v36);
      }
    }

    log_OutText(*(a1 + 32), "FE_POS", 5, 0, "updating WordRecord[%d] word[%d] LD_W_NLU %s -> %s", a5, a8, v44, a7[10]);
    v37 = strlen(a7[10]);
    return (*(v18 + 160))(v17, a4, a5, 14, (v37 + 1), a7[10], &v45);
  }

  return result;
}

uint64_t checkWordRecPOS(uint64_t *a1, unsigned int a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  v4 = *a1;
  v5 = *(*a1 + 160 * a2 + 72);
  if (!*(*a1 + 160 * a2 + 72))
  {
    return 0;
  }

  v6 = 0;
  result = 0;
  v8 = *(v4 + 160 * a2 + 64);
  do
  {
    v9 = v8 + 24 * v6;
    v10 = *(v9 + 16);
    if (*(v9 + 16))
    {
      v11 = *(v9 + 8);
      do
      {
        if (*(v11 + 2) == 1 && *v11 == a3)
        {
          *a4 = 1;
        }

        if (*(v11 + 1) == 1)
        {
          if (*v11 == a3)
          {
            result = 1;
          }

          else
          {
            result = result;
          }
        }

        v11 += 12;
        --v10;
      }

      while (v10);
    }

    ++v6;
  }

  while (v6 != v5);
  return result;
}

uint64_t getNewPOS(uint64_t a1, uint64_t *a2, unsigned int a3, int a4, char **a5)
{
  v7 = a1;
  v9 = *a2 + 160 * a3;
  v10 = *(v9 + 72);
  if (*(v9 + 72))
  {
    v11 = 0;
    v12 = 0;
    v13 = *(*a2 + 160 * a3 + 64);
    do
    {
      v14 = v13 + 24 * v11;
      v15 = *(v14 + 16);
      if (*(v14 + 16))
      {
        v16 = *(v14 + 8);
        do
        {
          if (*v16 == a4 && *(v16 + 1) == 1)
          {
            if (v12)
            {
              v17 = v12 + 1;
            }

            else
            {
              v17 = 0;
            }

            v12 = v17 + strlen(v16[2]);
          }

          v16 += 3;
          --v15;
        }

        while (v15);
      }

      ++v11;
    }

    while (v11 != v10);
    v18 = v12 + 2;
    v7 = a1;
  }

  else
  {
    v18 = 2;
  }

  v19 = heap_Calloc(*(v7 + 8), 1, v18);
  if (v19)
  {
    v20 = v19;
    v21 = *a2;
    if (*(*a2 + 160 * a3 + 72))
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(v21 + 160 * a3 + 64);
        if (*(v24 + 24 * v22 + 16))
        {
          v25 = 0;
          v26 = 0;
          do
          {
            v27 = *(v24 + 24 * v22 + 8);
            if (*(v27 + v25) == a4 && *(v27 + v25 + 4) == 1)
            {
              if (v23)
              {
                *&v20[strlen(v20)] = 92;
                strcat(v20, *(*(*(*a2 + 160 * a3 + 64) + 24 * v22 + 8) + v25 + 16));
              }

              else
              {
                strcpy(v20, *(v27 + v25 + 16));
              }

              ++v23;
              v21 = *a2;
            }

            ++v26;
            v24 = *(v21 + 160 * a3 + 64);
            v25 += 24;
          }

          while (v26 < *(v24 + 24 * v22 + 16));
        }

        ++v22;
      }

      while (v22 < *(v21 + 160 * a3 + 72));
    }

    result = 0;
    *a5 = v20;
  }

  else
  {
    log_OutPublic(*(v7 + 32), "FE_POS", 35000, 0);
    return 2313166858;
  }

  return result;
}

uint64_t wordRecSplit(void *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *(*a1 + 160 * a2 + 72);
  if (!*(*a1 + 160 * a2 + 72))
  {
    return 0;
  }

  v5 = 0;
  v6 = *(*a1 + 160 * a2 + 64);
  while (1)
  {
    v7 = v6 + 24 * v5;
    v8 = *(v7 + 16);
    if (*(v7 + 16))
    {
      break;
    }

LABEL_10:
    if (++v5 == v4)
    {
      return 0;
    }
  }

  v9 = 0;
  v10 = 24 * v8;
  while (1)
  {
    if (v5 != a3 || 24 * a4 != v9)
    {
      v11 = *(v6 + 24 * v5 + 8);
      if (*(v11 + v9) == *(*(v6 + 24 * a3 + 8) + 24 * a4) && !*(v11 + v9 + 4))
      {
        return 1;
      }
    }

    v9 += 24;
    if (v10 == v9)
    {
      goto LABEL_10;
    }
  }
}

uint64_t statpos_alignDisambiguatedPOSToLingdb(uint64_t a1, int a2)
{
  v2 = (a1 + 648);
  v69 = *a1;
  if (!*(a1 + 656))
  {
    goto LABEL_82;
  }

  v3 = 0;
  v71 = 0;
  v4 = 0;
  v5 = *(a1 + 648);
  v72 = vdupq_n_s64(4uLL);
  do
  {
    v73 = v4;
    v74 = v3;
    v75 = v5;
    v81 = v5 + 160 * v3;
    v6 = *(v81 + 72);
    if (*(v81 + 72))
    {
      v7 = 0;
      v9 = *(a1 + 304);
      v8 = *(a1 + 312);
      v10 = *(v81 + 64);
      v11 = *(v81 + 88);
      do
      {
        v12 = (v10 + 24 * v7);
        if (!strcmp((v9 + *(v8 + 4 * *v12)), v11))
        {
          *(v81 + 96) = 1;
          v13 = *(v12 + 8);
          if (*(v12 + 8))
          {
            v14 = (v13 + 3) & 0x1FFFC;
            v15 = vdupq_n_s64(v13 - 1);
            v16 = (*(v12 + 1) + 52);
            v17 = xmmword_1C378AF00;
            v18 = xmmword_1C378AEF0;
            do
            {
              v19 = vmovn_s64(vcgeq_u64(v15, v17));
              if (vuzp1_s16(v19, *v15.i8).u8[0])
              {
                *(v16 - 12) = 1;
              }

              if (vuzp1_s16(v19, *&v15).i8[2])
              {
                *(v16 - 6) = 1;
              }

              if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v18))).i32[1])
              {
                *v16 = 1;
                v16[6] = 1;
              }

              v20 = vdupq_n_s64(4uLL);
              v18 = vaddq_s64(v18, v20);
              v17 = vaddq_s64(v17, v20);
              v16 += 24;
              v14 -= 4;
            }

            while (v14);
          }
        }

        ++v7;
      }

      while (v7 != v6);
    }

    if (*(a1 + 144) != 1)
    {
      v4 = v73;
      v21 = v74;
LABEL_20:
      v5 = v75;
      goto LABEL_21;
    }

    v5 = v75;
    if (*(v81 + 96))
    {
      v4 = v73;
      v21 = v74;
      goto LABEL_21;
    }

    v4 = v73;
    if (!v6)
    {
      v21 = v74;
      goto LABEL_21;
    }

    v38 = *(v81 + 88);
    v39 = 0;
    LOWORD(v40) = 0;
    v78 = *(a1 + 312);
    v79 = *(a1 + 304);
    v77 = *(v81 + 64);
    v41 = strlen(v38);
    do
    {
      v42 = strlen((v79 + *(v78 + 4 * *(v77 + 24 * v39))));
      if (v41 >= v42)
      {
        v43 = v42;
      }

      else
      {
        v43 = v41;
      }

      if (v43)
      {
        for (i = 0; i < v43; ++i)
        {
          if (*(v79 + *(v78 + 4 * *(v77 + 24 * v39)) + i) != v38[i])
          {
            break;
          }
        }
      }

      else
      {
        i = 0;
      }

      v45 = i > v40;
      if (i <= v40)
      {
        v40 = v40;
      }

      else
      {
        v40 = i;
      }

      if (v45)
      {
        v4 = v39;
      }

      else
      {
        v4 = v4;
      }

      ++v39;
    }

    while (v39 != v6);
    if (!v40)
    {
      v21 = v74;
      goto LABEL_20;
    }

    v46 = v4;
    v47 = 3 * v4;
    log_OutText(*(v69 + 32), "FE_POS", 5, 0, "Word[%d] %s select word record with POS %s, (closest to predicted POS %s using longest match)", v71, **(v81 + 48), (*(a1 + 304) + *(*(a1 + 312) + 4 * *(*(v81 + 64) + 8 * v47))), v38);
    v5 = *(a1 + 648);
    v21 = v74;
    v48 = v5 + 160 * v74;
    *(v48 + 96) = 1;
    v49 = *(v48 + 64) + 8 * v47;
    v50 = *(v49 + 16);
    if (*(v49 + 16))
    {
      v51 = *(v49 + 8);
      v52 = (v50 + 3) & 0x1FFFC;
      v53 = vdupq_n_s64(v50 - 1);
      v54 = (v51 + 52);
      v55 = xmmword_1C378AF00;
      v56 = xmmword_1C378AEF0;
      v4 = v46;
      do
      {
        v57 = vmovn_s64(vcgeq_u64(v53, v55));
        if (vuzp1_s16(v57, *v53.i8).u8[0])
        {
          *(v54 - 12) = 1;
        }

        if (vuzp1_s16(v57, *&v53).i8[2])
        {
          *(v54 - 6) = 1;
        }

        if (vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v56))).i32[1])
        {
          *v54 = 1;
          v54[6] = 1;
        }

        v56 = vaddq_s64(v56, v72);
        v55 = vaddq_s64(v55, v72);
        v54 += 24;
        v52 -= 4;
      }

      while (v52);
    }

    else
    {
      v4 = v46;
    }

LABEL_21:
    v22 = v5 + 160 * v21;
    if (!*(v22 + 96))
    {
      if (!a2)
      {
        log_OutText(*(v69 + 32), "FE_POS", 5, 0, "Warning : no matching tags for word[%d] %s (predicted=%s, lexicon=%s)", v71, **(v22 + 48), *(v22 + 88), *(v22 + 80));
        v5 = *v2;
      }

      v23 = v5 + 160 * v21;
      *(v23 + 96) = 1;
      v24 = *(v23 + 72);
      if (v24)
      {
        v25 = 0;
        v26 = *(v5 + 160 * v21 + 64);
        do
        {
          v27 = v26 + 24 * v25;
          v28 = *(v27 + 16);
          if (*(v27 + 16))
          {
            v29 = *(v27 + 8);
            v30 = (v28 + 3) & 0x1FFFC;
            v31 = vdupq_n_s64(v28 - 1);
            v32 = (v29 + 52);
            v33 = xmmword_1C378AF00;
            v34 = xmmword_1C378AEF0;
            do
            {
              v35 = vmovn_s64(vcgeq_u64(v31, v33));
              if (vuzp1_s16(v35, *v31.i8).u8[0])
              {
                *(v32 - 12) = 1;
              }

              if (vuzp1_s16(v35, *&v31).i8[2])
              {
                *(v32 - 6) = 1;
              }

              if (vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, *&v34))).i32[1])
              {
                *v32 = 1;
                v32[6] = 1;
              }

              v36 = vdupq_n_s64(4uLL);
              v34 = vaddq_s64(v34, v36);
              v33 = vaddq_s64(v33, v36);
              v32 += 24;
              v30 -= 4;
            }

            while (v30);
          }

          ++v25;
        }

        while (v25 != v24);
      }
    }

    v3 = v21 + 1;
    v37 = *(a1 + 656);
    v71 = v3;
  }

  while (v3 < v37);
  if (*(a1 + 656))
  {
    v58 = 0;
    v80 = *v2;
    do
    {
      v82 = v37;
      v59 = v80 + 160 * v58;
      v60 = *(v59 + 72);
      if (*(v59 + 72))
      {
        v61 = 0;
        v62 = *(v80 + 160 * v58 + 64);
        do
        {
          v63 = v62 + 24 * v61;
          v64 = *(v63 + 16);
          if (*(v63 + 16))
          {
            v65 = 0;
            v66 = (*(v63 + 8) + 8);
            do
            {
              if (*(v66 - 1) == 1 && wordRecSplit(v2, v58, v61, v65))
              {
                *v66 = 1;
              }

              v66 += 6;
              ++v65;
            }

            while (v64 != v65);
          }

          ++v61;
        }

        while (v61 != v60);
      }

      ++v58;
      v37 = v82;
    }

    while (v58 != v82);
  }

LABEL_82:
  v67 = *(a1 + 1416);

  return printSent_0(v69, a1 + 8, v2, "after statpos_alignDisambiguatedPOSToLingdb()", v67, a2);
}