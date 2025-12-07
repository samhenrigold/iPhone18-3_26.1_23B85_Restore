uint64_t pw_crf_alginWS(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned __int8 **a5, uint64_t **a6, unsigned __int16 **a7)
{
  v10 = a2;
  v11 = a1;
  v12 = *a6;
  v13 = 0;
  if (a2)
  {
    v14 = a2;
    v15 = a5;
    do
    {
      v16 = **v15;
      if (v16 == 83 || v16 == 69)
      {
        ++v13;
      }

      ++v15;
      --v14;
    }

    while (v14);
  }

  **a7 = v13;
  v17 = heap_Calloc(*(a1 + 8), v13 + 1, 16);
  *v12 = v17;
  if (v17)
  {
    if (v10)
    {
      v18 = v17;
      v38 = a3;
      v39 = v11;
      LODWORD(v19) = 0;
      v20 = 0;
      v21 = v10;
      v40 = v10;
      do
      {
        v22 = 0;
        v23 = v19;
        v19 = v19;
        do
        {
          v24 = v22;
          v25 = *a5[v19];
          if (v25 == 69)
          {
            break;
          }

          v26 = v25 == 83;
          v22 = v24 + 1;
          ++v19;
        }

        while (!v26 && v19 < v21);
        v41 = v23;
        if (v23 >= v10)
        {
          v32 = 0;
          v28 = 0;
        }

        else
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(a4 + 8 * v23);
            if (v30[cstdlib_strlen(v30) - 1] == 69 || (v31 = *(a4 + 8 * v23), v31[cstdlib_strlen(v31) - 1] == 83))
            {
              ++v28;
            }

            v32 = v29 + 1;
            if (v29 == v24)
            {
              break;
            }

            ++v23;
            ++v29;
            if (v21 == v23)
            {
              goto LABEL_30;
            }
          }

          if (!v28)
          {
            log_OutText(*(v39 + 32), "FE_PW", 0, 0, "No Lex Word Found in Current PW. Pos: %d", v23);
            return 2584748047;
          }

          *(v18 + 8) = v28;
          v11 = v39;
          v33 = v28;
          v34 = heap_Alloc(*(v39 + 8), 2 * v28);
          *v18 = v34;
          if (!v34)
          {
            goto LABEL_32;
          }

          v35 = v20;
          do
          {
            *v34++ = *(v38 + 40 * v35++ + 24);
            --v33;
          }

          while (v33);
        }

LABEL_30:
        v20 += v28;
        LODWORD(v19) = v41 + v32;
        v18 += 16;
        v10 = v40;
      }

      while (v19 < v40);
    }

    return 0;
  }

  else
  {
LABEL_32:
    v36 = 2584748042;
    log_OutPublic(*(v11 + 32), "FE_PW", 37000, 0);
  }

  return v36;
}

uint64_t fe_pw_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v34 = 0;
  *v35 = 0;
  __s1 = 0;
  v33 = 0;
  igtree = 2584748039;
  v31 = 0;
  v30 = -1;
  v29 = 0;
  memset(v36, 0, sizeof(v36));
  if (!a5)
  {
    return igtree;
  }

  v28 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, v35);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  v12 = heap_Calloc(*(*v35 + 8), 1, 1192);
  if (!v12)
  {
    log_OutPublic(*(*v35 + 32), "FE_PW", 37000, 0);
    igtree = 2584748042;
LABEL_38:
    fe_pw_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return igtree;
  }

  v13 = v12;
  inited = objc_GetObject(*(*v35 + 48), "LINGDB", &v34);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  *(v13 + 48) = *(v34 + 8);
  inited = objc_GetObject(*(*v35 + 48), "FE_DCTLKP", &v33);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  v14 = v33;
  v15 = *(v33 + 8);
  *(v13 + 128) = v15;
  *(v13 + 136) = *(v14 + 16);
  v16 = *v35;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  *v13 = a1;
  *(v13 + 8) = a1;
  *(v13 + 16) = a2;
  *(v13 + 24) = v16;
  *(v13 + 1180) = 0;
  *(v13 + 64) = 0;
  v17 = (v13 + 64);
  *(v13 + 1184) = 0;
  igtree = (*(v15 + 96))(*(v13 + 136), *(v13 + 144), "fecfg", "statbnd_enable_nnets", &v31, &v30, &v29);
  if (v30 && v31 && (v18 = *v31, v18[cstdlib_strlen(*v31) - 1] = 0, !cstdlib_strcmp(*v31, "yes")))
  {
    *(v13 + 1180) = 1;
    *a5 = v13;
    *(a5 + 8) = 62341;
  }

  else if (!*(v13 + 1180))
  {
    if (!com_enable_cscgroup(*(v13 + 128), *(v13 + 136), *(v13 + 144), (v13 + 152)))
    {
      *(v13 + 152) = 1;
    }

    if (!com_cscgroup_stopwords(*(v13 + 128), *(v13 + 136), *(v13 + 144), (v13 + 156)))
    {
      cstdlib_strcpy((v13 + 156), "");
    }

    v19 = (v13 + 112);
    if (!com_auxiliarywords(*(v13 + 24), *(v13 + 128), *(v13 + 136), *(v13 + 144), (v13 + 112), (v13 + 120)))
    {
      *v19 = 0;
    }

    inited = fw_pw_CreateVoiceBrokerString(*(v13 + 24), v36);
    if ((inited & 0x80000000) == 0)
    {
      if (((*(*(v13 + 128) + 256))(*(v13 + 136), *(v13 + 144), "fepw_enable_crf", "no", &__s1) & 0x80000000) != 0 || cstdlib_strcmp(__s1, "yes"))
      {
        if ((ssftriff_reader_ObjOpen(a3, a4, 2, v36, "PWDT", 1031, (v13 + 64)) & 0x80000000) == 0)
        {
          v27 = 0;
          v25 = 0;
          *v26 = 0;
          v24 = 0;
          for (i = ssftriff_reader_OpenChunk(*v17, v26, &v25, &v24); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(*v17, v26, &v25, &v24))
          {
            if (!cstdlib_strcmp(v26, "DSTR"))
            {
              ssftriff_reader_GetChunkData(*v17, v25, (v13 + 56), v21);
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_37;
              }

              *v19 = 0;
              inited = GetRulesFromRiffData(*v35, *v17, *(v13 + 56), v25, (v13 + 72), (v13 + 80), (v13 + 96), (v13 + 100), (v13 + 104), (v13 + 112), (v13 + 120));
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_37;
              }
            }

            ssftriff_reader_CloseChunk(*v17);
          }

          igtree = i;
          if ((i & 0x1FFF) == 0xA)
          {
            *(v13 + 56) = 0;
            return igtree;
          }
        }

        goto LABEL_32;
      }

      inited = tryLoadingCrfModel(*(v13 + 32), *(v13 + 40), *(v13 + 8), *(v13 + 16), *(v13 + 24), (v13 + 88), v36, 1031);
      if ((inited & 0x80000000) == 0)
      {
LABEL_32:
        igtree = load_igtree_cfg(*(v13 + 136), *(v13 + 144), *(v13 + 128), &v28);
        if ((igtree & 0x80000000) == 0)
        {
          if (v28)
          {
            v22 = (v13 + 1184);
            igtree = load_igtree(*(v13 + 32), *(v13 + 40), *(v13 + 24), (v13 + 1184));
            if ((igtree & 0x80000000) != 0)
            {
              if (*v22)
              {
                igtree_Deinit(*(v13 + 24), *v22);
                igtree = 0;
                *(v13 + 1184) = 0;
              }

              else
              {
                igtree = 0;
              }
            }
          }

          *a5 = v13;
          *(a5 + 8) = 62341;
        }

        return igtree;
      }
    }

LABEL_37:
    igtree = inited;
    goto LABEL_38;
  }

  if ((igtree & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  return igtree;
}

uint64_t fw_pw_CreateVoiceBrokerString(uint64_t a1, _BYTE *a2)
{
  v5 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v5);
  if ((result & 0x80000000) == 0)
  {
    return brokeraux_ComposeBrokerString(a1, "prosodyword", 1, 1, v5, 0, 0, a2, 0x100uLL);
  }

  return result;
}

uint64_t fe_pw_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62341, 1192);
  if ((v3 & 0x80000000) != 0)
  {
    return 2584748040;
  }

  Only_DereferenceCnt = v3;
  if (a1)
  {
    if (*(a1 + 48))
    {
      objc_ReleaseObject(*(*(a1 + 24) + 48), "LINGDB");
    }

    if (*(a1 + 128))
    {
      objc_ReleaseObject(*(*(a1 + 24) + 48), "FE_DCTLKP");
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      ssftriff_reader_ObjClose(v5);
    }

    v6 = *(a1 + 112);
    if (v6)
    {
      v7 = *(a1 + 120);
      if (*(a1 + 120))
      {
        v8 = 0;
        do
        {
          v9 = *(*(a1 + 112) + 8 * v8);
          if (v9)
          {
            heap_Free(*(*(a1 + 24) + 8), v9);
            v7 = *(a1 + 120);
          }

          ++v8;
        }

        while (v8 < v7);
        v6 = *(a1 + 112);
      }

      heap_Free(*(*(a1 + 24) + 8), v6);
    }

    if (*(a1 + 1180))
    {
      goto LABEL_31;
    }

    v10 = *(a1 + 88);
    if (!v10)
    {
LABEL_21:
      v11 = *(a1 + 72);
      if (v11)
      {
        v12 = *(a1 + 80);
        if (v12)
        {
          v13 = 0;
          v14 = 16;
          do
          {
            v15 = *(*(a1 + 72) + v14);
            if (v15)
            {
              heap_Free(*(*(a1 + 24) + 8), v15);
              v12 = *(a1 + 80);
            }

            ++v13;
            v14 += 32;
          }

          while (v13 < v12);
          v11 = *(a1 + 72);
        }

        heap_Free(*(*(a1 + 24) + 8), v11);
      }

      v16 = *(a1 + 1184);
      if (v16)
      {
        igtree_Deinit(*(a1 + 24), v16);
        heap_Free(*(*(a1 + 24) + 8), *(a1 + 1184));
        *(a1 + 1184) = 0;
      }

LABEL_31:
      heap_Free(*(*(a1 + 24) + 8), a1);
      return Only_DereferenceCnt;
    }

    Only_DereferenceCnt = crf_Deinit_ReadOnly_DereferenceCnt(*(a1 + 24), *a1, v10);
    if ((Only_DereferenceCnt & 0x80000000) == 0)
    {
      *(a1 + 88) = 0;
      goto LABEL_21;
    }
  }

  return Only_DereferenceCnt;
}

uint64_t fe_pw_ObjReopen(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = 2584748038;
  memset(v28, 0, sizeof(v28));
  VoiceBrokerString = safeh_HandleCheck(a1, a2, 62341, 1192);
  if ((VoiceBrokerString & 0x80000000) != 0)
  {
    return 2584748040;
  }

  if (a1)
  {
    if (*(a1 + 1180))
    {
      return VoiceBrokerString;
    }

    v27 = 0;
    VoiceBrokerString = fw_pw_CreateVoiceBrokerString(*(a1 + 24), v28);
    if ((VoiceBrokerString & 0x80000000) != 0)
    {
      return VoiceBrokerString;
    }

    v7 = (a1 + 64);
    v6 = *(a1 + 64);
    if (v6)
    {
      ssftriff_reader_ObjClose(v6);
      *v7 = 0;
    }

    v8 = *(a1 + 88);
    if (v8)
    {
      VoiceBrokerString = crf_Deinit_ReadOnly_DereferenceCnt(*(a1 + 24), *a1, v8);
      if ((VoiceBrokerString & 0x80000000) != 0)
      {
        return VoiceBrokerString;
      }

      *(a1 + 88) = 0;
    }

    if ((tryLoadingCrfModel(*(a1 + 32), *(a1 + 40), *(a1 + 8), *(a1 + 16), *(a1 + 24), (a1 + 88), v28, 1031) & 0x80000000) != 0)
    {
      if ((ssftriff_reader_ObjOpen(*(a1 + 32), *(a1 + 40), 2, v28, "PWDT", 1031, (a1 + 64)) & 0x80000000) != 0)
      {
        *(a1 + 56) = 0;
      }

      else
      {
        v26 = 0;
        v24 = 0;
        *__s1 = 0;
        v12 = (a1 + 112);
        v11 = *(a1 + 112);
        if (v11)
        {
          v13 = *(a1 + 120);
          if (*(a1 + 120))
          {
            v14 = 0;
            do
            {
              v15 = *(*v12 + 8 * v14);
              if (v15)
              {
                heap_Free(*(*(a1 + 24) + 8), v15);
                v13 = *(a1 + 120);
              }

              ++v14;
            }

            while (v14 < v13);
            v11 = *v12;
          }

          heap_Free(*(*(a1 + 24) + 8), v11);
        }

        v17 = (a1 + 72);
        v16 = *(a1 + 72);
        if (v16)
        {
          v18 = *(a1 + 80);
          if (v18)
          {
            v19 = 0;
            v20 = 16;
            do
            {
              v21 = *(*v17 + v20);
              if (v21)
              {
                heap_Free(*(*(a1 + 24) + 8), v21);
                v18 = *(a1 + 80);
              }

              ++v19;
              v20 += 32;
            }

            while (v19 < v18);
            v16 = *v17;
          }

          heap_Free(*(*(a1 + 24) + 8), v16);
        }

        for (i = ssftriff_reader_OpenChunk(*v7, &__s1[4], __s1, &v24); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(*v7, &__s1[4], __s1, &v24))
        {
          if (!cstdlib_strcmp(&__s1[4], "DSTR"))
          {
            ssftriff_reader_GetChunkData(*v7, *__s1, (a1 + 56), v23);
            if ((VoiceBrokerString & 0x80000000) != 0)
            {
              return VoiceBrokerString;
            }

            *(a1 + 112) = 0;
            VoiceBrokerString = GetRulesFromRiffData(*(a1 + 24), *(a1 + 64), *(a1 + 56), *__s1, (a1 + 72), (a1 + 80), (a1 + 96), (a1 + 100), (a1 + 100), (a1 + 112), (a1 + 120));
            if ((VoiceBrokerString & 0x80000000) != 0)
            {
              return VoiceBrokerString;
            }
          }

          ssftriff_reader_CloseChunk(*v7);
        }

        v3 = i;
        if ((i & 0x1FFF) == 0xA)
        {
          return v3;
        }
      }
    }

    v9 = *(a1 + 1184);
    if (v9)
    {
      igtree_Deinit(*(a1 + 24), v9);
      heap_Free(*(*(a1 + 24) + 8), *(a1 + 1184));
      *(a1 + 1184) = 0;
    }

    v3 = load_igtree_cfg(*(a1 + 136), *(a1 + 144), *(a1 + 128), &v27);
    if ((v3 & 0x80000000) == 0 && v27)
    {
      v10 = (a1 + 1184);
      VoiceBrokerString = load_igtree(*(a1 + 32), *(a1 + 40), *(a1 + 24), (a1 + 1184));
      if ((VoiceBrokerString & 0x80000000) != 0)
      {
        if (!*v10)
        {
          return 0;
        }

        igtree_Deinit(*(a1 + 24), *v10);
        v3 = 0;
        *(a1 + 1184) = 0;
        return v3;
      }

      return VoiceBrokerString;
    }
  }

  return v3;
}

uint64_t fe_pw_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62341, 1192);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2584748040;
  }
}

uint64_t fe_pw_PYT_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int *a7, unsigned int a8, uint64_t *a9, unsigned __int16 *a10)
{
  v61 = *a9;
  __s1 = 0;
  v11 = *a10;
  v64 = 0;
  v12 = a6;
  v63 = 0;
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v56 = a8;
    v16 = (a5 + 24);
    v17 = 1;
    while (1)
    {
      v18 = (v61 + 16 * v14);
      if (*(v18 + 4) > 1u)
      {
        goto LABEL_9;
      }

      v19 = **v18;
      v63 = 0;
      v13 = (*(*(a1 + 48) + 184))(a2, a3, v19, 9, &v63);
      if ((v13 & 0x80000000) == 0 && v63 == 1)
      {
        v13 = (*(*(a1 + 48) + 176))(a2, a3, v19, 9, &v64, &v63);
        if ((v13 & 0x80000000) != 0)
        {
LABEL_67:
          heap_Free(*(a4 + 8), v61);
          return v13;
        }
      }

      if (v64 && cstdlib_strcmp(v64, "mnc!"))
      {
LABEL_9:
        v20 = 1;
        v17 = 1;
      }

      else
      {
        v21 = 0;
        if (v12)
        {
          v22 = v16;
          while (1)
          {
            v23 = *v22;
            v22 += 20;
            if (v23 == **v18)
            {
              break;
            }

            if (v12 == ++v21)
            {
              LODWORD(v21) = v12;
              goto LABEL_16;
            }
          }

          LODWORD(v21) = v21;
        }

LABEL_16:
        if (a8)
        {
          v24 = a7;
          v25 = *(a5 + 40 * v21 + 28);
          v26 = v56;
          while (1)
          {
            v27 = *v24++;
            if (v27 == v25)
            {
              break;
            }

            if (!--v26)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
LABEL_20:
          if (v17 != 1)
          {
            v63 = 0;
            __s1 = 0;
            v13 = (*(*(a1 + 48) + 184))(a2, a3, v19, 19, &v63);
            v17 = 0;
            v20 = 1;
            if ((v13 & 0x80000000) == 0 && v63 == 1)
            {
              v13 = (*(*(a1 + 48) + 176))(a2, a3, v19, 19, &__s1, &v63);
              if ((v13 & 0x80000000) != 0)
              {
                return v13;
              }

              v17 = 0;
              v20 = cstdlib_strcmp(__s1, "left") == 0;
            }

            goto LABEL_26;
          }
        }

        v17 = 0;
        v20 = 1;
      }

LABEL_26:
      v15 += v20;
      if (v11 <= ++v14)
      {
        goto LABEL_29;
      }
    }
  }

  v15 = 0;
  v13 = 0;
LABEL_29:
  v28 = heap_Calloc(*(a4 + 8), v15, 16);
  if (!v28)
  {
LABEL_68:
    v13 = 2584748042;
    log_OutPublic(*(a4 + 32), "FE_PW", 37000, 0);
    return v13;
  }

  *a10 = v15;
  v57 = v28;
  *a9 = v28;
  if (v11)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 1;
    while (1)
    {
      v33 = (v61 + 16 * v30);
      if (*(v33 + 4) < 2u)
      {
        v34 = **v33;
        v63 = 0;
        if (((*(*(a1 + 48) + 184))(a2, a3, v34, 9, &v63) & 0x80000000) == 0 && v63 == 1)
        {
          v35 = (*(*(a1 + 48) + 176))(a2, a3, v34, 9, &v64, &v63);
          if ((v35 & 0x80000000) != 0)
          {
            v13 = v35;
            goto LABEL_67;
          }
        }

        if (!v64 || !cstdlib_strcmp(v64, "mnc!"))
        {
          break;
        }
      }

      log_OutText(*(a4 + 32), "FE_PW", 5, 0, ">>> Not a PYT PW. Skip by copying pPWIn[%d] to pPWOut[%d].", v29, v31);
      fe_pw_copy_pw(a4, v33, v57 + 16 * v31);
      log_OutText(*(a4 + 32), "FE_PW", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v29, v31);
      v13 = 0;
      ++v31;
      v32 = 1;
LABEL_63:
      v29 = ++v30;
      if (v30 >= v11)
      {
        goto LABEL_66;
      }
    }

    v36 = 0;
    if (v12)
    {
      v37 = (a5 + 24);
      while (1)
      {
        v38 = *v37;
        v37 += 20;
        if (v38 == **v33)
        {
          break;
        }

        if (v12 == ++v36)
        {
          LODWORD(v36) = v12;
          goto LABEL_45;
        }
      }

      LODWORD(v36) = v36;
    }

LABEL_45:
    if (a8)
    {
      v39 = a7;
      v40 = *(a5 + 40 * v36 + 28);
      v41 = a8;
      while (1)
      {
        v42 = *v39++;
        if (v42 == v40)
        {
          break;
        }

        if (!--v41)
        {
          goto LABEL_49;
        }
      }

      if (v32 != 1)
      {
        v50 = v31;
        v51 = v31;
        log_OutText(*(a4 + 32), "FE_PW", 5, 0, ">>> I am a PYT PW start with Marker! Copy pPWIn[%d] to pPWOut[%d].");
LABEL_60:
        fe_pw_copy_pw(a4, v33, v57 + 16 * v50);
        log_OutText(*(a4 + 32), "FE_PW", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v29, v51);
        goto LABEL_62;
      }
    }

    else
    {
LABEL_49:
      if (v32 != 1)
      {
        v63 = 0;
        __s1 = 0;
        if (((*(*(a1 + 48) + 184))(a2, a3, v34, 19, &v63) & 0x80000000) == 0 && v63 == 1)
        {
          v13 = (*(*(a1 + 48) + 176))(a2, a3, v34, 19, &__s1, &v63);
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }

          v43 = cstdlib_strcmp(__s1, "left");
          v44 = *(a4 + 32);
          if (v43)
          {
            v45 = v31 - 1;
            log_OutText(v44, "FE_PW", 5, 0, ">>> No space before this PYT unit. Merge pPWIn[%d] to pPWOut[%d] ...", v29, v45);
            log_OutText(*(a4 + 32), "FE_PW", 5, 0, "pPWIn[%d] is: ", v29);
            pw_show_pw_0(a4, v33);
            log_OutText(*(a4 + 32), "FE_PW", 5, 0, "Before merge, pPWOut[%d] is: ", v45);
            v46 = v57 + 16 * v45;
            pw_show_pw_0(a4, v46);
            v47 = *(v46 + 8) + 1;
            *(v46 + 8) = v47;
            v48 = heap_Realloc(*(a4 + 8), *v46, 2 * v47);
            *v46 = v48;
            if (!v48)
            {
              goto LABEL_68;
            }

            v49 = *v33;
            *(v48 + 2 * *(v46 + 8) - 2) = **v33;
            heap_Free(*(a4 + 8), v49);
            log_OutText(*(a4 + 32), "FE_PW", 5, 0, "After merge, pPWOut[%d] is: ", v45);
            pw_show_pw_0(a4, v46);
            log_OutText(*(a4 + 32), "FE_PW", 5, 0, "Merge pPWIn[%d] to pPWOut[%d] done!", v29, v45);
            v32 = 0;
            goto LABEL_63;
          }

          log_OutText(v44, "FE_PW", 5, 0, ">>> There is a space before this PYT PW. Copy pPWIn[%d] to pPWOut[%d].", v29, v31);
          fe_pw_copy_pw(a4, v33, v57 + 16 * v31);
          log_OutText(*(a4 + 32), "FE_PW", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v29, v31);
          goto LABEL_62;
        }

        v50 = v31;
        v51 = v31;
        log_OutText(*(a4 + 32), "FE_PW", 5, 0, ">>> The WORD_DCT record doesn't has field LD_W_INPUTSPACETAG. Copy pPWIn[%d] to pPWOut[%d].");
        goto LABEL_60;
      }
    }

    log_OutText(*(a4 + 32), "FE_PW", 5, 0, ">>> I am First PYT PW. Copy pPWIn[%d] to pPWOut[%d].", v29, v31);
    fe_pw_copy_pw(a4, v33, v57 + 16 * v31);
    log_OutText(*(a4 + 32), "FE_PW", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v29, v31);
LABEL_62:
    v32 = 0;
    v13 = 0;
    ++v31;
    goto LABEL_63;
  }

LABEL_66:
  if (v61)
  {
    goto LABEL_67;
  }

  return v13;
}

uint64_t fe_pw_copy_pw(uint64_t a1, uint64_t a2, uint64_t a3)
{
  log_OutText(*(a1 + 32), "FE_PW", 5, 0, "Copying PW ... ");
  log_OutText(*(a1 + 32), "FE_PW", 5, 0, "pPWIn and pPWOut is: ");
  pw_show_pw_0(a1, a2);
  *(a3 + 8) = *(a2 + 8);
  *a3 = *a2;
  *(a3 + 12) = *(a2 + 12);
  v6 = *(a1 + 32);

  return log_OutText(v6, "FE_PW", 5, 0, "Copy PW done!");
}

const char *pw_show_pw_0(uint64_t a1, uint64_t a2)
{
  result = heap_Calloc(*(a1 + 8), 1, 1000);
  if (result)
  {
    v5 = result;
    LODWORD(v6) = *(a2 + 8);
    if (*(a2 + 8))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        sprintf(&v5[v8], "%d-", *(*a2 + 2 * v7));
        v8 = cstdlib_strlen(v5);
        ++v7;
        v6 = *(a2 + 8);
      }

      while (v7 < v6);
    }

    log_OutText(*(a1 + 32), "FE_PW", 5, 0, "\tPW [tids:%s, ntok:%d]", v5, v6);
    v9 = *(a1 + 8);

    return heap_Free(v9, v5);
  }

  return result;
}

uint64_t fe_pw_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62341, 1192);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2584748040;
  }
}

uint64_t fe_pw_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2584748033;
  }

  result = 0;
  *a2 = &IFePw;
  return result;
}

uint64_t com_enable_cscgroup(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v5 = (*(a1 + 96))(a2, a3, "fecfg", "fepw_enable_cscgroup", &__c[3], &__c[1], __c);
  result = 0;
  if ((v5 & 0x80000000) == 0 && *&__c[1])
  {
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    *a4 = cstdlib_strcmp(**&__c[3], "no") != 0;
    return 1;
  }

  return result;
}

uint64_t com_cscgroup_stopwords(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v5 = (*(a1 + 96))(a2, a3, "fecfg", "fepw_cscgroup_stopwords", &__c[3], &__c[1], __c);
  result = 0;
  if ((v5 & 0x80000000) == 0 && *&__c[1])
  {
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    cstdlib_strcpy(a4, **&__c[3]);
    return 1;
  }

  return result;
}

uint64_t com_auxiliarywords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned __int8 *a6)
{
  v20 = 0;
  v19 = -1;
  v18 = 0;
  v9 = 0;
  if (((*(a2 + 96))(a3, a4, "fecfg", "fepw_auxiliarywords", &v20, &v19, &v18) & 0x80000000) == 0 && v19)
  {
    v10 = *v20;
    v11 = cstdlib_strlen(*v20);
    ChineseUTFCharNum = utf8_GetChineseUTFCharNum(v10, v11);
    *a6 = ChineseUTFCharNum;
    v13 = heap_Alloc(*(a1 + 8), 8 * ChineseUTFCharNum);
    *a5 = v13;
    if (v13 && *a6)
    {
      v14 = 0;
      v15 = *v20;
      while (1)
      {
        v16 = utf8_determineUTF8CharLength(*v15);
        v9 = 1;
        *(*a5 + 8 * v14) = heap_Calloc(*(a1 + 8), 1, v16 + 1);
        if (!*a5)
        {
          break;
        }

        cstdlib_memcpy(*(*a5 + 8 * v14), v15, v16);
        *(*(*a5 + 8 * v14) + v16) = 0;
        v15 += v16;
        if (++v14 >= *a6)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return v9;
}

uint64_t fe_pw_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2584748039;
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

uint64_t fe_pw_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  __dst[1] = *MEMORY[0x277D85DE8];
  v179 = 0;
  v180 = 0;
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v174 = 0;
  v175 = 0;
  v173 = 0;
  v171 = 0;
  v172 = 0;
  v169 = 0;
  v170 = 1024;
  v167 = 0;
  v168 = 64;
  v165 = 0;
  v166 = 64;
  v163 = 0;
  v164 = "";
  v162 = 0;
  v161 = 0;
  v160[6] = 0;
  strcpy(v160, "latin");
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  memset(__b, 0, 512);
  v152 = 0;
  cstdlib_memset(__b, 0, 0x404uLL);
  *a5 = 1;
  if (*(a1 + 1180))
  {
    v9 = 0;
    v10 = 0;
    LODWORD(v11) = 0;
    goto LABEL_3;
  }

  if (!*(a1 + 56) && !*(a1 + 88))
  {
    log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "[FE_PROSODY_WORD]: NO DATA,LEAVING");
    return 0;
  }

  v27 = *(a1 + 72);
  log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "[FE_PROSODY_WORD]: Entering");
  v28 = (*(*(a1 + 48) + 104))(a3, a4, 1, 0, &v180 + 2);
  if ((v28 & 0x80000000) != 0)
  {
    return v28;
  }

  v11 = (*(*(a1 + 48) + 184))(a3, a4, HIWORD(v180), 0, &v162);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (v162 != 1)
  {
    return v11;
  }

  v11 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v180), 0, &v172, &v179);
  if ((v11 & 0x80000000) != 0 || v179 < 2u)
  {
    return v11;
  }

  LOWORD(__dst[0]) = 0;
  LODWORD(v151) = 0;
  *__s1 = 0;
  LOWORD(v148) = 0;
  LOWORD(v147) = 0;
  v29 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v180), __dst);
  LODWORD(v11) = v29;
  if ((v29 & 0x80000000) == 0)
  {
    v30 = __dst[0];
    if (LOWORD(__dst[0]))
    {
      v137 = v27;
      v31 = 0;
      while (1)
      {
        v32 = (*(*(a1 + 48) + 168))(a3, a4, v30, 0, 1, &v151, __s1);
        if (v32 < 0)
        {
          break;
        }

        if (v151 > 0xA || ((1 << v151) & 0x610) == 0)
        {
          v37 = 0;
          v36 = LOWORD(__dst[0]);
        }

        else
        {
          v32 = (*(*(a1 + 48) + 168))(a3, a4, LOWORD(__dst[0]), 1, 1, &v148, __s1);
          if (v32 < 0)
          {
            break;
          }

          v32 = (*(*(a1 + 48) + 168))(a3, a4, LOWORD(__dst[0]), 2, 1, &v147, __s1);
          if (v32 < 0)
          {
            break;
          }

          v35 = v148 > v31 || v31 < v147;
          v36 = LOWORD(__dst[0]);
          if (v35)
          {
            v31 = v147;
            v37 = 0;
          }

          else
          {
            v37 = LOWORD(__dst[0]);
          }
        }

        v32 = (*(*(a1 + 48) + 120))(a3, a4, v36, __dst);
        if (v32 < 0)
        {
          break;
        }

        if (v37)
        {
          log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "%s", "Dropping nested word record");
          v32 = (*(*(a1 + 48) + 192))(a3, a4, v37);
          if (v32 < 0)
          {
            break;
          }
        }

        v30 = __dst[0];
        if (!LOWORD(__dst[0]))
        {
          v27 = v137;
          goto LABEL_80;
        }
      }

      LODWORD(v11) = v32;
LABEL_158:
      v9 = 0;
      v10 = 0;
      goto LABEL_3;
    }
  }

  if (v29 < 0)
  {
    goto LABEL_158;
  }

LABEL_80:
  v11 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v180), &v180);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_158;
  }

  v38 = v180;
  if (!v180)
  {
    goto LABEL_159;
  }

  v10 = 0;
  v141 = 0;
  v138 = 0;
  do
  {
    v39 = (*(*(a1 + 48) + 120))(a3, a4, v38, &v179 + 2);
    if (v39 < 0)
    {
      LODWORD(v11) = v39;
LABEL_161:
      v9 = 0;
      goto LABEL_3;
    }

    v11 = (*(*(a1 + 48) + 168))(a3, a4, v180, 0, 1, &v176, &v179);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_161;
    }

    v40 = v176;
    if (v176 <= 0xA && ((1 << v176) & 0x610) != 0)
    {
      v28 = (*(*(a1 + 48) + 168))(a3, a4, v180, 1, 1, &v178, &v179);
      if ((v28 & 0x80000000) != 0)
      {
        return v28;
      }

      v11 = (*(*(a1 + 48) + 168))(a3, a4, v180, 2, 1, &v177, &v179);
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      if (!v178 || v141 + 1 == v178 && v177 > v178)
      {
        ++v10;
        v141 = v177;
      }

      v40 = v176;
    }

    if (v40 == 5)
    {
      v11 = (*(*(a1 + 48) + 176))(a3, a4, v180, 4, &v155, &v179);
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      if (v179)
      {
        if (!cstdlib_strncmp(v155, "prompt", v179))
        {
          ++v138;
          if (v154 <= 0x7F)
          {
            v28 = (*(*(a1 + 48) + 168))(a3, a4, v180, 1, 1, &v178, &v179);
            if ((v28 & 0x80000000) != 0)
            {
              return v28;
            }

            v11 = (*(*(a1 + 48) + 168))(a3, a4, v180, 2, 1, &v177, &v179);
            if ((v11 & 0x80000000) != 0)
            {
              return v11;
            }

            *(__b + v154) = v178;
            *(&__b[32] + v154++) = v177;
          }
        }
      }
    }

    v38 = HIWORD(v179);
    LOWORD(v180) = HIWORD(v179);
  }

  while (HIWORD(v179));
  if (v138 >= 0x81u)
  {
    log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Warning: the prompt number %d is large than the threshold %d, so the last %d promp not used to guide grouping", v138, 128, v138 - 128);
  }

  if (!v10)
  {
LABEL_159:
    log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Warning: no lexicon word");
    return v11;
  }

  v42 = v10;
  v43 = heap_Calloc(*(*(a1 + 24) + 8), v10, 40);
  if (!v43)
  {
    v11 = 2584748042;
    log_OutPublic(*(*(a1 + 24) + 32), "FE_PW", 37000, 0);
    return v11;
  }

  v9 = v43;
  v44 = (v43 + 8);
  do
  {
    v45 = heap_Calloc(*(*(a1 + 24) + 8), 128, 1);
    *(v44 - 1) = v45;
    v46 = *(a1 + 24);
    if (!v45)
    {
      LODWORD(v11) = -1710219254;
      goto LABEL_329;
    }

    v47 = heap_Calloc(*(v46 + 8), 64, 1);
    *v44 = v47;
    if (!v47)
    {
LABEL_327:
      LODWORD(v11) = -1710219254;
LABEL_328:
      v46 = *(a1 + 24);
LABEL_329:
      log_OutPublic(*(v46 + 32), "FE_PW", 37000, 0);
      goto LABEL_3;
    }

    v44 += 5;
    --v42;
  }

  while (v42);
  word_separating_markers_0 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v180), &v180);
  if (word_separating_markers_0 < 0)
  {
    goto LABEL_330;
  }

  v139 = v27;
  LODWORD(v11) = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v180), 0, &v172, &v179);
  if ((v11 & 0x80000000) != 0 || v179 < 2u)
  {
    goto LABEL_3;
  }

  v49 = v180;
  if (v180)
  {
    __s = 0;
    LODWORD(v11) = -1710219254;
    while (1)
    {
      word_separating_markers_0 = (*(*(a1 + 48) + 120))(a3, a4, v49, &v179 + 2);
      if (word_separating_markers_0 < 0)
      {
        break;
      }

      word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v180, 0, 1, &v176, &v179);
      if (word_separating_markers_0 < 0)
      {
        break;
      }

      if (v176 <= 0xA && ((1 << v176) & 0x610) != 0)
      {
        word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v180, 1, 1, &v178, &v179);
        if (word_separating_markers_0 < 0)
        {
          break;
        }

        word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v180, 2, 1, &v177, &v179);
        if (word_separating_markers_0 < 0)
        {
          break;
        }

        if (!v178 || v141 + 1 == v178 && v177 > v178)
        {
          word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, v180, 3, &v165, &v179);
          if (word_separating_markers_0 < 0)
          {
            break;
          }

          v51 = v9 + 40 * __s;
          if (cstdlib_strstr(v165, "comma"))
          {
            *(v51 + 26) = 11;
          }

          else
          {
            *(v51 + 26) = 1;
            v63 = v165;
            v161 = v165;
            while (1)
            {
              v64 = cstdlib_strstr(v63, ".");
              v161 = v64;
              if (!v64)
              {
                break;
              }

              v63 = v64 + 1;
              v161 = v63;
              ++*(v51 + 26);
            }
          }

          v52 = v178;
          if (v178 >= v177)
          {
            v54 = 1;
          }

          else
          {
            v53 = 0;
            do
            {
              if (!utf8_IsChineseLetter((v172 + v52)))
              {
                v53 = 1;
              }

              v52 += utf8_determineUTF8CharLength(*(v172 + v52));
            }

            while (v52 < v177);
            v54 = v53 == 0;
          }

          v55 = v9 + 40 * __s;
          *(v55 + 24) = v180;
          word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4);
          if (word_separating_markers_0 < 0)
          {
            break;
          }

          if (!hlp_NLUStrFind(v164, "POS", &v163, &v162 + 1))
          {
            LODWORD(v11) = -1710219264;
            goto LABEL_3;
          }

          **(v55 + 8) = 0;
          v56 = *(v55 + 8);
          if (v54)
          {
            cstdlib_strncat(v56, v163, HIWORD(v162));
          }

          else
          {
            cstdlib_strcat(v56, "non");
          }

          if (((*(*(a1 + 48) + 184))(a3, a4, v180, 9, &v179) & 0x80000000) == 0 && v179 == 1)
          {
            word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, v180, 9, v55 + 16, &v179);
            if (word_separating_markers_0 < 0)
            {
              break;
            }
          }

          v57 = v177;
          v58 = v178;
          v59 = v177 - v178;
          v60 = *v55;
          if (v59 >= 128)
          {
            v61 = heap_Realloc(*(*(a1 + 24) + 8), *v55, (v59 + 1));
            *v55 = v61;
            if (!v61)
            {
              goto LABEL_328;
            }

            v60 = v61;
            v58 = v178;
            v57 = v177;
          }

          cstdlib_memcpy(v60, (v172 + v58), v57 - v58);
          *(*v55 - v178 + v177) = 0;
          v62 = v177;
          *(v55 + 28) = v178;
          *(v55 + 32) = v62;
          v141 = v62;
          ++__s;
        }
      }

      v49 = HIWORD(v179);
      LOWORD(v180) = HIWORD(v179);
      if (!HIWORD(v179))
      {
        goto LABEL_164;
      }
    }

LABEL_330:
    LODWORD(v11) = word_separating_markers_0;
    goto LABEL_3;
  }

LABEL_164:
  word_separating_markers_0 = pw_get_word_separating_markers_0(a1, a3, a4, HIWORD(v180), &v159, &v158);
  if (word_separating_markers_0 < 0)
  {
    goto LABEL_330;
  }

  v65 = v158;
  log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Info: Valid Word Seperator Markers Count:%d", v158);
  if (v65)
  {
    v66 = 0;
    v67 = v159;
    do
    {
      log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Info: Valid Word Seperator Markers POS:%d", v67[v66++]);
    }

    while (v65 > v66);
  }

  v68 = v65;
  v69 = *(a1 + 88);
  if (!v69)
  {
    v12 = v159;
    v70 = pw_dag_process(*(a1 + 24), v139, *(a1 + 80), *(a1 + 96), *(a1 + 100), *(a1 + 104), __b, v9, v10, v159, v68, &v174, &v173);
    if ((v70 & 0x80000000) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_331;
  }

  LODWORD(v151) = 1;
  LODWORD(v11) = pw_crf_process(*(a1 + 24), v69, *(a1 + 128), *(a1 + 136), *(a1 + 144), v9, v10, &v174, &v173, &v151);
  if ((v11 & 0x80000000) != 0 || v151)
  {
    goto LABEL_3;
  }

LABEL_173:
  if ((paramc_ParamGetStr(*(*(a1 + 24) + 40), "spaceInPYT", &v157) & 0x80000000) == 0 && !LH_stricmp(v157, "yes"))
  {
    v12 = v159;
    v70 = fe_pw_PYT_process(a1, a3, a4, *(a1 + 24), v9, v10, v159, v68, &v174, &v173);
    if (v70 < 0)
    {
LABEL_331:
      LODWORD(v11) = v70;
      if (v12)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  if (*(a1 + 152) == 1)
  {
    word_separating_markers_0 = pw_group_csc_0(*(a1 + 24), __b, v9, v10, (a1 + 156), v174, v173, &v175, &v173 + 1);
    if (word_separating_markers_0 < 0)
    {
      goto LABEL_330;
    }
  }

  else
  {
    HIWORD(v173) = v173;
    v71 = v174;
    v174 = 0;
    v175 = v71;
    LOWORD(v173) = 0;
  }

  v72 = *(a1 + 1184);
  if (v72)
  {
    word_separating_markers_0 = pw_igtree_process_0(*(a1 + 24), v9, &v175, &v173 + 1, v10, v72);
    if (word_separating_markers_0 < 0)
    {
      goto LABEL_330;
    }
  }

  LODWORD(v11) = pw_respect_word_separating_markers_0(a1, a3, a4, HIWORD(v180), &v175, &v173 + 1);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  v73 = heap_Calloc(*(*(a1 + 24) + 8), v170, 1);
  v171 = v73;
  if (!v73)
  {
    goto LABEL_3;
  }

  v74 = v73;
  v169 = heap_Calloc(*(*(a1 + 24) + 8), v168, 1);
  if (!v169)
  {
    goto LABEL_3;
  }

  v167 = heap_Calloc(*(*(a1 + 24) + 8), v166, 1);
  if (!v167)
  {
    goto LABEL_3;
  }

  v75 = HIWORD(v173);
  if (!HIWORD(v173))
  {
LABEL_239:
    LODWORD(v11) = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v180), &v180);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_3;
    }

    cstdlib_memset(v74, 0, v170);
    cstdlib_memset(v169, 0, v168);
    cstdlib_memset(v167, 0, v166);
    HIWORD(v179) = 0;
    v98 = v180;
    if (!v180)
    {
      goto LABEL_3;
    }

    v99 = 0;
    LOWORD(v145) = 0;
    while (1)
    {
      word_separating_markers_0 = (*(*(a1 + 48) + 120))(a3, a4, v98, &v179 + 2);
      if (word_separating_markers_0 < 0)
      {
        goto LABEL_330;
      }

      LODWORD(v11) = (*(*(a1 + 48) + 168))(a3, a4, v180, 0, 1, &v176, &v179);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_3;
      }

      if (v176 <= 0xA && ((1 << v176) & 0x610) != 0)
      {
        word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v180, 1, 1, &v178, &v179);
        if (word_separating_markers_0 < 0)
        {
          goto LABEL_330;
        }

        LODWORD(v11) = (*(*(a1 + 48) + 168))(a3, a4, v180, 2, 1, &v177, &v179);
        if ((v11 & 0x80000000) != 0)
        {
          goto LABEL_3;
        }

        if (!v178 || v99 + 1 == v178 && v177 > v178)
        {
          break;
        }
      }

LABEL_316:
      v98 = HIWORD(v179);
      LOWORD(v180) = HIWORD(v179);
      if (!HIWORD(v179))
      {
        goto LABEL_3;
      }
    }

    v151 = 0;
    word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, v180, 3, &v165, &v179);
    if (word_separating_markers_0 < 0)
    {
      goto LABEL_330;
    }

    LODWORD(v11) = (*(*(a1 + 48) + 176))(a3, a4, v180, 14, &v164, &v179);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_3;
    }

    if (((*(*(a1 + 48) + 184))(a3, a4, v180, 10, &v162) & 0x80000000) == 0 && v162 == 1)
    {
      LODWORD(v11) = (*(*(a1 + 48) + 176))(a3, a4, v180, 10, &v151, &v179);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_3;
      }
    }

    v101 = v177;
    if (v177 - v178 > 5)
    {
      v102 = 0;
      goto LABEL_278;
    }

    __dst[0] = 0;
    v150 = 0;
    *__s1 = 0;
    cstdlib_memcpy(__dst, (v172 + v178), v177 - v178);
    *(__dst + v177 - v178) = 0;
    if (!utf8_IsChineseLetter(__dst))
    {
      goto LABEL_275;
    }

    v103 = v158;
    if (v158)
    {
      v104 = v159;
      do
      {
        v105 = *v104++;
        if (v105 == v178)
        {
          goto LABEL_275;
        }
      }

      while (--v103);
    }

    if (!cstdlib_strstr(v165, "11") || !utf8_IsChineseLetter(&v156))
    {
      v148 = 0;
      v106 = cstdlib_strlen(__dst);
      v146 = 0;
      v147 = 0;
      utf8_Utf8ToUtf32_Tolerant(__dst, v106, &v148, 1u, &v147);
      v107 = v147;
      if (v106 <= 3)
      {
        v107 = 0;
      }

      utf8_Utf32ToUtf8(&v148, 1, __s1, v106 - v107, &v146);
      __s1[v146] = 0;
      if (!*(a1 + 120))
      {
LABEL_275:
        v102 = 0;
LABEL_276:
        v101 = v177;
        if (v177 - v178 <= 2)
        {
          cstdlib_memcpy(&v156, (v172 + v178), v177 - v178);
          v109 = &v156 + v177 - v178;
LABEL_279:
          *v109 = 0;
          if (v102)
          {
            if (v145)
            {
              LODWORD(__dst[0]) = 0;
              LODWORD(v11) = pw_check_if_glue_forbidden_0(a1, a3, a4, HIWORD(v180), v145, v180, __dst);
              v102 = LODWORD(__dst[0]) == 0;
              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_3;
              }
            }
          }

          hlp_NLUStrFind(v164, "POS", &v163, &v162 + 1);
          if (v151 && (v110 = cstdlib_strlen(v167), v111 = cstdlib_strlen(v151), v110 + v111 + 1 >= v166) || v163 && (v112 = cstdlib_strlen(v169), v113 = cstdlib_strlen(v163), v112 + v113 + 2 >= v168) || v165 && (v114 = cstdlib_strlen(v171), v115 = cstdlib_strlen(v165), v114 + v115 + 2 >= v170))
          {
            log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "skip the merging due to the length limit of prosodic word");
          }

          else if (v102 && v145 && cstdlib_strcmp(v160, "latin"))
          {
            log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "merge special auxiliary word and neutral tone cases");
            *(v172 + v178 - 1) = 45;
            cstdlib_safe_strcat(*(a1 + 24), &v171, ".", &v170, 0x400uLL);
            if (v165)
            {
              cstdlib_safe_strcat(*(a1 + 24), &v171, v165, &v170, 0x400uLL);
            }

            if (HIWORD(v162))
            {
              cstdlib_safe_strcat(*(a1 + 24), &v169, "-", &v168, 0x40uLL);
              if (v163)
              {
                cstdlib_safe_strncat(*(a1 + 24), &v169, v163, HIWORD(v162), &v168);
              }
            }

            v116 = v167;
            if (v151 && cstdlib_strcmp(v167, ""))
            {
              cstdlib_safe_strcat(*(a1 + 24), &v167, v151, &v166, 0x40uLL);
            }

            else
            {
              cstdlib_strcpy(v116, "");
            }

            word_separating_markers_0 = (*(*(a1 + 48) + 192))(a3, a4, v180);
            if (word_separating_markers_0 < 0)
            {
              goto LABEL_330;
            }

            word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, v145, 2, 1, &v177, &v178 + 2);
            if (word_separating_markers_0 < 0)
            {
              goto LABEL_330;
            }

            v119 = *(*(a1 + 48) + 160);
            v120 = v171;
            v121 = cstdlib_strlen(v171);
            word_separating_markers_0 = v119(a3, a4, v145, 3, (v121 + 1), v120, &v178 + 2);
            if (word_separating_markers_0 < 0)
            {
              goto LABEL_330;
            }

            v122 = v169;
            v123 = cstdlib_strlen(v169);
            v124 = cstdlib_strlen(v164);
            v125 = heap_Calloc(*(*(a1 + 24) + 8), 1, (v123 + v124 + 6));
            if (!v125)
            {
              goto LABEL_327;
            }

            v126 = v125;
            cstdlib_strcpy(v125, v164);
            v164 = v126;
            hlp_NLUStrSet(v126, "POS", v122);
            v11 = *(*(a1 + 48) + 160);
            v127 = cstdlib_strlen(v164);
            LODWORD(v11) = (v11)(a3, a4, v145, 14, (v127 + 1), v164, &v178 + 2);
            heap_Free(*(*(a1 + 24) + 8), v164);
            v164 = "";
            if ((v11 & 0x80000000) != 0)
            {
              goto LABEL_3;
            }

            v128 = v167;
            if (cstdlib_strcmp(v167, ""))
            {
              v11 = *(*(a1 + 48) + 160);
              v129 = cstdlib_strlen(v128);
              LODWORD(v11) = (v11)(a3, a4, v145, 10, (v129 + 1), v128, &v178 + 2);
              if ((v11 & 0x80000000) != 0)
              {
                goto LABEL_3;
              }
            }

            goto LABEL_315;
          }

          if (v165)
          {
            cstdlib_safe_strcpy(*(a1 + 24), &v171, v165, &v170, 0x400uLL);
            LODWORD(v11) = 0;
          }

          cstdlib_strcpy(v169, "");
          if (HIWORD(v162) && v163)
          {
            cstdlib_safe_strncat(*(a1 + 24), &v169, v163, HIWORD(v162), &v168);
            LODWORD(v11) = 0;
          }

          if (v151)
          {
            cstdlib_safe_strcpy(*(a1 + 24), &v167, v151, &v166, 0x40uLL);
            LODWORD(v11) = 0;
          }

          else
          {
            cstdlib_strcpy(v167, "");
          }

          v145 = v180;
          if (((*(*(a1 + 48) + 184))(a3, a4) & 0x80000000) != 0 || v179 != 1)
          {
            v118 = "latin";
          }

          else
          {
            LODWORD(v11) = (*(*(a1 + 48) + 176))(a3, a4, v145, 9, &v161, &v179);
            if ((v11 & 0x80000000) != 0)
            {
              goto LABEL_3;
            }

            v117 = cstdlib_strlen(v161);
            if (v117 > cstdlib_strlen("normal"))
            {
              goto LABEL_3;
            }

            v118 = v161;
          }

          cstdlib_strcpy(v160, v118);
LABEL_315:
          v99 = v177;
          goto LABEL_316;
        }

LABEL_278:
        cstdlib_memcpy(&v156, (v172 + v101 - 3), 3uLL);
        v109 = &v156 + 3;
        goto LABEL_279;
      }

      v108 = 0;
      while (cstdlib_strcmp(__s1, *(*(a1 + 112) + 8 * v108)) || !utf8_IsChineseLetter(&v156))
      {
        if (++v108 >= *(a1 + 120))
        {
          goto LABEL_275;
        }
      }
    }

    v102 = 1;
    goto LABEL_276;
  }

  v76 = 0;
  while (1)
  {
    v77 = v175;
    v131 = v76;
    v78 = LOWORD(v175[2 * v76 + 1]);
    if (v78 == 1)
    {
      goto LABEL_238;
    }

    if (!v78)
    {
      LODWORD(v11) = -1710219254;
      log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Error: the prosody word should has at least one lexical word");
      goto LABEL_3;
    }

    v151 = 0;
    cstdlib_memset(v74, 0, v170);
    cstdlib_memset(v169, 0, v168);
    cstdlib_memset(v167, 0, v166);
    __sa = v152;
    v140 = &v77[2 * v131];
    if (*(v140 + 4))
    {
      break;
    }

    v130 = 0;
LABEL_227:
    v152 = __sa;
    word_separating_markers_0 = pw_merge_NLU_0(*(a1 + 24), &v152);
    if (word_separating_markers_0 < 0)
    {
      goto LABEL_330;
    }

    if (*(a1 + 152) == 1)
    {
      pw_split_csc_pw_0(*(a1 + 24), v140, &v171, &v170);
    }

    word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, **v140, 2, 1, &v177, &v178 + 2);
    if (word_separating_markers_0 < 0)
    {
      goto LABEL_330;
    }

    v90 = *(*(a1 + 48) + 160);
    v91 = **v140;
    v74 = v171;
    v92 = cstdlib_strlen(v171);
    word_separating_markers_0 = v90(a3, a4, v91, 3, (v92 + 1), v74, &v178 + 2);
    if (word_separating_markers_0 < 0)
    {
      goto LABEL_330;
    }

    hlp_NLUStrRemoveKeyVal(__sa, "POS");
    hlp_NLUStrSet(__sa, "POS", v169);
    v143 = *(*(a1 + 48) + 160);
    v93 = **v140;
    v94 = cstdlib_strlen(__sa);
    word_separating_markers_0 = v143(a3, a4, v93, 14, (v94 + 1), __sa, &v178 + 2);
    v164 = "";
    if (word_separating_markers_0 < 0)
    {
      goto LABEL_330;
    }

    if (__sa)
    {
      heap_Free(*(*(a1 + 24) + 8), __sa);
      v152 = 0;
    }

    if ((v130 & 1) == 0)
    {
      v144 = *(*(a1 + 48) + 160);
      v95 = **v140;
      v96 = v167;
      v97 = cstdlib_strlen(v167);
      word_separating_markers_0 = v144(a3, a4, v95, 10, (v97 + 1), v96, &v178 + 2);
      if (word_separating_markers_0 < 0)
      {
        goto LABEL_330;
      }
    }

    v75 = HIWORD(v173);
LABEL_238:
    v76 = v131 + 1;
    if (v131 + 1 >= v75)
    {
      goto LABEL_239;
    }
  }

  v142 = 0;
  v79 = 0;
  v134 = 1;
  LODWORD(v11) = -1710219254;
  while (1)
  {
    v80 = (*(*(a1 + 48) + 168))(a3, a4, *(*v140 + 2 * v142), 1, 1, &v178, &v179);
    if (v80 < 0 || (v80 = (*(*(a1 + 48) + 168))(a3, a4, *(*v140 + 2 * v142), 2, 1, &v177, &v179), v80 < 0) || (v80 = (*(*(a1 + 48) + 176))(a3, a4, *(*v140 + 2 * v142), 3, &v165, &v179), v80 < 0) || (v80 = (*(*(a1 + 48) + 176))(a3, a4, *(*v140 + 2 * v142), 14, &v164, &v179), v80 < 0))
    {
LABEL_334:
      LODWORD(v11) = v80;
      goto LABEL_335;
    }

    v132 = *(*(a1 + 24) + 8);
    v81 = cstdlib_strlen(v164);
    v82 = v81;
    if (!__sa)
    {
      break;
    }

    v83 = cstdlib_strlen(__sa);
    v84 = heap_Realloc(v132, __sa, v82 + v83 + 2);
    if (!v84)
    {
      goto LABEL_335;
    }

    v85 = v84;
    cstdlib_strcat(v84, ";");
    cstdlib_strcat(v85, v164);
    __sa = v85;
LABEL_201:
    if (v134)
    {
      v134 = 0;
      v130 = 1;
      if (((*(*(a1 + 48) + 184))(a3, a4, *(*v140 + 2 * v142), 10, &v162) & 0x80000000) == 0 && v162 == 1)
      {
        v80 = (*(*(a1 + 48) + 176))(a3, a4, *(*v140 + 2 * v142), 10, &v151, &v179);
        if (v80 < 0)
        {
          goto LABEL_334;
        }

        v130 = 0;
        v134 = 1;
      }
    }

    else
    {
      v134 = 0;
      v130 = 1;
    }

    if (v142)
    {
      *(v172 + v178 - 1) = 45;
      cstdlib_safe_strcat(*(a1 + 24), &v171, ".", &v170, 0x400uLL);
      cstdlib_safe_strcat(*(a1 + 24), &v169, "-", &v168, 0x40uLL);
      v133 = *(*v140 + 2 * v142);
      v161 = v165;
      v86 = cstdlib_strstr(v165, "{SEP");
      v161 = v86;
      if (v86)
      {
        v161 = v86 + 4;
        v86[4] += v79;
      }
    }

    else
    {
      v133 = 0;
    }

    cstdlib_safe_strcat(*(a1 + 24), &v171, v165, &v170, 0x400uLL);
    if (hlp_NLUStrFind(v164, "POS", &v163, &v162 + 1))
    {
      cstdlib_safe_strncat(*(a1 + 24), &v169, v163, HIWORD(v162), &v168);
    }

    v87 = v134;
    if (!v151)
    {
      v87 = 0;
    }

    if (v87 == 1)
    {
      cstdlib_safe_strcat(*(a1 + 24), &v167, v151, &v166, 0x40uLL);
    }

    for (i = v165; ; i = v89 + 1)
    {
      v89 = cstdlib_strstr(i, ".");
      v161 = v89;
      if (!v89)
      {
        if (!i)
        {
          break;
        }

        v89 = cstdlib_strstr(i, "{SEP");
        v161 = v89;
        if (!v89)
        {
          break;
        }
      }

      ++v79;
    }

    if (v133)
    {
      v80 = (*(*(a1 + 48) + 192))(a3, a4, v133);
      if (v80 < 0)
      {
        goto LABEL_334;
      }
    }

    ++v79;
    if (++v142 >= *(v140 + 4))
    {
      goto LABEL_227;
    }
  }

  __sa = heap_Alloc(v132, v81 + 1);
  if (__sa)
  {
    cstdlib_strcpy(__sa, v164);
    goto LABEL_201;
  }

  __sa = 0;
LABEL_335:
  v152 = __sa;
LABEL_3:
  v12 = v159;
  if (v159)
  {
LABEL_4:
    heap_Free(*(*(a1 + 24) + 8), v12);
  }

LABEL_5:
  if (v9)
  {
    if (v10)
    {
      v13 = v10;
      v14 = v10;
      v15 = v9;
      do
      {
        if (*v15)
        {
          heap_Free(*(*(a1 + 24) + 8), *v15);
        }

        v15 += 5;
        --v14;
      }

      while (v14);
      v16 = (v9 + 8);
      do
      {
        if (*v16)
        {
          heap_Free(*(*(a1 + 24) + 8), *v16);
        }

        v16 += 5;
        --v13;
      }

      while (v13);
    }

    heap_Free(*(*(a1 + 24) + 8), v9);
  }

  v17 = v175;
  if (v175)
  {
    v18 = HIWORD(v173);
    if (HIWORD(v173))
    {
      v19 = v175;
      do
      {
        if (*v19)
        {
          heap_Free(*(*(a1 + 24) + 8), *v19);
          *v19 = 0;
        }

        v19 += 2;
        --v18;
      }

      while (v18);
    }

    heap_Free(*(*(a1 + 24) + 8), v17);
  }

  v20 = v174;
  if (v174)
  {
    v21 = v173;
    if (v173)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = v174[v22];
        if (v24)
        {
          heap_Free(*(*(a1 + 24) + 8), v24);
          v174[v22] = 0;
          v21 = v173;
        }

        ++v23;
        v22 += 2;
      }

      while (v23 < v21);
      v20 = v174;
    }

    heap_Free(*(*(a1 + 24) + 8), v20);
    v174 = 0;
  }

  if (v152)
  {
    heap_Free(*(*(a1 + 24) + 8), v152);
  }

  if (v171)
  {
    heap_Free(*(*(a1 + 24) + 8), v171);
  }

  if (v169)
  {
    heap_Free(*(*(a1 + 24) + 8), v169);
  }

  if (v167)
  {
    heap_Free(*(*(a1 + 24) + 8), v167);
  }

  if (v173)
  {
    v25 = 0;
  }

  else
  {
    v25 = v11 == -1710219256;
  }

  if (v25)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t pw_get_word_separating_markers_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int *a6)
{
  v23 = 0;
  v22 = 0;
  v9 = (*(*(a1 + 48) + 176))(a2, a3, a4, 1, &v22, &v23);
  if ((v9 & 0x80000000) != 0)
  {
LABEL_15:
    if (*a5)
    {
      heap_Free(*(*(a1 + 24) + 8), *a5);
      *a5 = 0;
    }

    return v9;
  }

  v10 = heap_Alloc(*(*(a1 + 24) + 8), 4 * v23);
  *a5 = v10;
  if (!v10)
  {
    goto LABEL_14;
  }

  *a6 = 0;
  v11 = v23;
  if (v23)
  {
    v12 = 0;
    v13 = v22;
    v14 = v22;
    v15 = v22;
    do
    {
      v16 = *v15;
      v15 += 8;
      v17 = (1 << v16) & 0x3C0010124001140;
      if (v16 <= 0x39 && v17 != 0)
      {
        *(v10 + 4 * v12) = v14[3] - v13[3];
        v12 = *a6 + 1;
        *a6 = v12;
      }

      v14 = v15;
      --v11;
    }

    while (v11);
    v19 = 4 * (v12 + 1);
  }

  else
  {
    v19 = 4;
  }

  v20 = heap_Realloc(*(*(a1 + 24) + 8), v10, v19);
  *a5 = v20;
  if (!v20)
  {
LABEL_14:
    log_OutPublic(*(*(a1 + 24) + 32), "FE_PW", 37000, 0);
    v9 = 2584748042;
    goto LABEL_15;
  }

  return v9;
}

uint64_t pw_group_csc_0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, uint64_t a6, unsigned int a7, uint64_t *a8, _WORD *a9)
{
  v85 = *MEMORY[0x277D85DE8];
  log_OutText(*(a1 + 32), "FE_PW", 5, 0, "pw_group_csc Begin");
  v13 = heap_Calloc(*(a1 + 8), a7, 16);
  *a8 = v13;
  if (!v13)
  {
    v65 = 2584748042;
    v66 = *(a1 + 32);
LABEL_72:
    log_OutPublic(v66, "FE_PW", 37000, 0);
    return v65;
  }

  v68 = a8;
  v70 = a1;
  *a9 = 0;
  v84 = 0;
  v83 = 0;
  if (a7)
  {
    LOWORD(v14) = 0;
    v72 = 0;
    v15 = 0;
    v16 = a4;
    v17 = (v13 + 8);
    v74 = a7;
    while (1)
    {
      v76 = v17;
      v71 = v15;
      *v17 = 0;
      v18 = a7 <= (v14 + 1) ? v14 + 1 : a7;
      v69 = v18;
      v19 = v14;
      while (1)
      {
        v20 = (a6 + 16 * v19);
        if (v16)
        {
          v21 = 0;
          v22 = **v20;
          v23 = (a3 + 24);
          while (1)
          {
            v24 = *v23;
            v23 += 20;
            if (v24 == v22)
            {
              break;
            }

            if (v16 == ++v21)
            {
              v77 = v16;
              goto LABEL_15;
            }
          }

          v77 = v21;
LABEL_15:
          v26 = 0;
          v82 = 0;
          v27 = (a3 + 24);
          while (1)
          {
            v28 = *v27;
            v27 += 20;
            if (v28 == v22)
            {
              break;
            }

            if (v16 == ++v26)
            {
              v25 = v16;
              goto LABEL_20;
            }
          }

          v25 = v26;
        }

        else
        {
          v77 = 0;
          v25 = 0;
          v82 = 0;
        }

LABEL_20:
        v29 = *(a3 + 40 * v25);
        v30 = (Utf8_Utf8NbrOfSymbols(v29) - 1);
        v32 = 0;
        if (v30 == 2)
        {
          if (v29)
          {
            if (cstdlib_strlen(v29))
            {
              v31 = cstdlib_strlen(v29);
              if (cstdlib_strstr(",.:?!;()", &v29[v31 - 1]))
              {
                v32 = 1;
              }
            }
          }
        }

        v33 = 0;
        if (v16)
        {
          v34 = (a3 + 24);
          while (1)
          {
            v35 = *v34;
            v34 += 20;
            if (v35 == **v20)
            {
              break;
            }

            if (v16 == ++v33)
            {
              LODWORD(v33) = v16;
              goto LABEL_32;
            }
          }

          LODWORD(v33) = v33;
        }

LABEL_32:
        v36 = *(a3 + 40 * v33 + 16);
        utf8_getUTF8Char(v29, 0, &v83);
        IsChineseLetter = utf8_IsChineseLetter(&v83);
        pw_weather_word_in_prompt(a2, a3 + 40 * v77, &v82);
        v38 = a6 + 16 * v19;
        v41 = *(v38 + 8);
        v40 = (v38 + 8);
        v39 = v41;
        v42 = !v32;
        if (v30 == 1)
        {
          v42 = 0;
        }

        if (v42 || v39 != 1)
        {
          break;
        }

        v43 = cstdlib_strcmp(v36, "latin") && IsChineseLetter;
        if (!v43 || v82 != 0)
        {
          break;
        }

        if (cstdlib_strstr(a5, v29))
        {
          v45 = 1;
        }

        else
        {
          v45 = v32;
        }

        v46 = v76;
        if (v45)
        {
          v81 = v19 + 1;
          v19 = *v76;
          a7 = v74;
          goto LABEL_56;
        }

        v47 = ++*v76;
        a7 = v74;
        if (v47 > 2)
        {
          v81 = v19;
          goto LABEL_55;
        }

        if (v74 <= ++v19)
        {
          v81 = v69;
          goto LABEL_57;
        }
      }

      v81 = v19;
      a7 = v74;
      if (*v76)
      {
        goto LABEL_57;
      }

      *v76 = *v40;
LABEL_55:
      v46 = &v81;
LABEL_56:
      *v46 = v19 + 1;
LABEL_57:
      ++*a9;
      *(*v68 + 16 * v72) = heap_Calloc(*(v70 + 8), *(*v68 + 16 * v72 + 8), 2);
      v48 = *v68;
      v49 = *v68 + 16 * v72;
      v50 = *v49;
      if (!*v49)
      {
        break;
      }

      v14 = v81;
      v51 = a6 + 16 * v81;
      if (*(v49 + 8) <= *(v51 - 8))
      {
        if (*(v49 + 8))
        {
          v63 = 0;
          v64 = *(v51 - 16);
          do
          {
            *(v50 + 2 * v63) = *(v64 + 2 * v63);
            ++v63;
          }

          while (v63 < *(v49 + 8));
        }
      }

      else
      {
        v52 = heap_Calloc(*(v70 + 8), 1, 1024);
        if (!v52)
        {
          break;
        }

        v53 = v52;
        v54 = *v68 + 16 * v72;
        *(v54 + 12) = 1;
        v55 = *(v54 + 8);
        if (v55)
        {
          v56 = 0;
          v57 = -v55;
          v78 = v14;
          v58 = (a6 - 16 * v55 + 16 * v14);
          v59 = v55 - 1;
          do
          {
            v60 = *v58;
            v58 += 2;
            v61 = *v60;
            *(*(*v68 + 16 * v72) + 2 * (v57 + *(*v68 + 16 * v72 + 8))) = v61;
            sprintf(&v53[v56], "%d-", v61);
            v56 = cstdlib_strlen(v53);
            ++v57;
          }

          while (v59--);
          v55 = *(*v68 + 16 * v72 + 8);
          LODWORD(v14) = v78;
        }

        log_OutText(*(v70 + 32), "FE_PW", 5, 0, "\t group [tids:%s, ntok: %d]", v53, v55);
        heap_Free(*(v70 + 8), v53);
        v48 = *v68;
      }

      v15 = v71 + 1;
      v72 = (v71 + 1);
      v17 = (v48 + 16 * v72 + 8);
      v84 = 0;
      v83 = 0;
      if (v14 >= a7)
      {
        goto LABEL_69;
      }
    }

    v65 = 2584748042;
    v66 = *(v70 + 32);
    goto LABEL_72;
  }

LABEL_69:
  log_OutText(*(v70 + 32), "FE_PW", 5, 0, "pw_group_csc End");
  return 0;
}

uint64_t pw_igtree_process_0(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v10 = a1;
  inited = 2584748042;
  v12 = *a4;
  __s1 = 0;
  v13 = *a3;
  v14 = heap_Calloc(*(a1 + 8), 1, 8 * *(a6 + 1296) - 8);
  if (!v14)
  {
    return inited;
  }

  v15 = v14;
  inited = igtree_initFeatureVector(v10, v14, (*(a6 + 1296) - 1));
  if ((inited & 0x80000000) != 0)
  {
    v17 = 0;
    goto LABEL_51;
  }

  v16 = heap_Calloc(*(v10 + 8), v7, 4);
  v17 = v16;
  if (!v16)
  {
    inited = 2584748042;
    goto LABEL_51;
  }

  v56 = v10;
  v47 = a4;
  v48 = a3;
  if (!v12)
  {
    v20 = v13;
LABEL_47:
    *v47 = v12;
    *v48 = v20;
    goto LABEL_50;
  }

  v18 = 0;
  v19 = 0;
  v54 = v7 - 1;
  v20 = v13;
  v52 = v16;
  v46 = v7;
  while (1)
  {
    LOWORD(v21) = *(v20 + 16 * v18 + 8);
    v53 = v12;
    if (v21)
    {
      if (v54 != v19)
      {
        break;
      }
    }

LABEL_42:
    ++v18;
    v12 = v53;
    if (v18 >= v53)
    {
      goto LABEL_47;
    }
  }

  v22 = 0;
  v23 = 0;
  v51 = (v18 + 2);
  v49 = (v18 + 1);
  v24 = 2;
  while (1)
  {
    v25 = v20;
    v26 = v19;
    *(v17 + 4 * v19) = v21 - 1 == v22;
    v27 = igtree_setFeatureVector(v56, v15, *(a6 + 1312), *(a6 + 1296), a2, v7, v19);
    if ((v27 & 0x80000000) != 0)
    {
      inited = v27;
      goto LABEL_50;
    }

    inited = igtree_Process(a6, v15, &__s1);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_50;
    }

    if (!cstdlib_strcmp(__s1, "NOMATCH"))
    {
      goto LABEL_33;
    }

    v28 = *(v17 + 4 * v26);
    if (v28 == (cstdlib_strcmp(__s1, "1") == 0))
    {
      inited = 0;
      v17 = v52;
      goto LABEL_33;
    }

    v20 = v25;
    if (!v28)
    {
      break;
    }

    v29 = v25 + 16 * v18;
    v30 = *(v29 + 24) + *(v29 + 8);
    if (v30 > 4)
    {
      inited = 0;
LABEL_36:
      v17 = v52;
      goto LABEL_37;
    }

    *(v29 + 8) += *(v29 + 24);
    v40 = heap_Realloc(*(v56 + 8), *v29, 2 * v30);
    *v29 = v40;
    if (!v40)
    {
      goto LABEL_49;
    }

    LOWORD(v41) = *(v29 + 24);
    v42 = *(v29 + 16);
    if (v41)
    {
      v43 = 0;
      do
      {
        *(v40 - 2 * v41 + 2 * *(v29 + 8) + 2 * v43) = *(v42 + 2 * v43);
        ++v43;
        v41 = *(v29 + 24);
      }

      while (v43 < v41);
    }

    *(v29 + 12) |= *(v29 + 28);
    heap_Free(*(v56 + 8), v42);
    if (v51 < v53)
    {
      cstdlib_memmove((v29 + 16), (v25 + 16 * v51), 16 * (v53 - v18) - 32);
    }

    inited = 0;
    v53 = (v53 - 1);
    v17 = v52;
    v7 = v46;
LABEL_33:
    v20 = v25;
LABEL_37:
    v19 = v26 + 1;
    v22 = v23 + 1;
    v21 = *(v20 + 16 * v18 + 8);
    v24 += 2;
    if (++v23 >= v21 || v54 == (v26 + 1))
    {
      goto LABEL_42;
    }
  }

  v31 = heap_Realloc(*(v56 + 8), v25, 16 * v53 + 16);
  if (v31)
  {
    v32 = v31 + 16 * v18;
    v50 = v31;
    v33 = (v31 + 16 * v49);
    v34 = v32;
    if (v49 < v53)
    {
      cstdlib_memmove((v32 + 32), v33, 16 * (v53 + ~v18));
      v32 = v34;
    }

    v35 = *(v32 + 8) + ~v23;
    *(v33 + 4) = v35;
    v36 = heap_Alloc(*(v56 + 8), 2 * v35);
    *v33 = v36;
    if (v36)
    {
      if (*(v33 + 4))
      {
        v37 = 0;
        v38 = *v34 + v24;
        do
        {
          *(v36 + 2 * v37) = *(v38 + 2 * v37);
          ++v37;
        }

        while (v37 < *(v33 + 4));
      }

      v39 = *(v34 + 12);
      v20 = v50;
      if (v39 == 1)
      {
        *(v34 + 12) = 0;
      }

      else
      {
        v39 = 0;
      }

      inited = 0;
      *(v33 + 3) = v39;
      *(v34 + 8) = v23 + 1;
      v53 = (v53 + 1);
      goto LABEL_36;
    }
  }

LABEL_49:
  inited = 2584748042;
  v17 = v52;
LABEL_50:
  v10 = v56;
LABEL_51:
  igtree_freeFeatureVector(v10, v15, (*(a6 + 1296) - 1));
  heap_Free(*(v10 + 8), v15);
  if (v17)
  {
    heap_Free(*(v10 + 8), v17);
  }

  return inited;
}

uint64_t pw_respect_word_separating_markers_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned __int16 *a6)
{
  if (!*a6)
  {
    return 0;
  }

  v6 = a6;
  v12 = 0;
  v13 = 0;
  v28 = 0;
  v14 = *a5;
  while (1)
  {
    if (*(v14 + 16 * v12 + 8) >= 2u)
    {
      v28 = 0;
      v14 = *a5;
      v15 = *a5 + 16 * v12;
      if (*(v15 + 8) >= 2u)
      {
        break;
      }
    }

LABEL_17:
    if (++v12 >= *v6)
    {
      return v13;
    }
  }

  v16 = 1;
  while (1)
  {
    v13 = pw_check_if_glue_forbidden_0(a1, a2, a3, a4, *(*v15 + 2 * v16 - 2), *(*v15 + 2 * v16), &v28);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    if (v28)
    {
      v17 = heap_Realloc(*(*(a1 + 24) + 8), *a5, 16 * *v6 + 16);
      if (!v17)
      {
        goto LABEL_21;
      }

      *a5 = v17;
      v18 = *v6 + 1;
      v27 = v6;
      *v6 = v18;
      if (v12 + 2 < v18)
      {
        cstdlib_memmove((v17 + 16 * (v12 + 2)), (v17 + 16 * v12 + 16), (((v18 - v12) << 32) - 0x200000000) >> 28);
        v17 = *a5;
      }

      v19 = v17 + 16 * v12;
      v20 = *(v19 + 8) - v16;
      v21 = 16 * v12 + 16;
      *(v17 + v21 + 8) = v20;
      *(v19 + 8) = v16;
      *(*a5 + v21) = heap_Calloc(*(*(a1 + 24) + 8), 2, v20);
      v14 = *a5;
      v22 = *a5 + v21;
      v23 = *v22;
      v6 = v27;
      if (!*v22)
      {
LABEL_21:
        log_OutPublic(*(*(a1 + 24) + 32), "FE_PW", 37000, 0, v27);
        return 2584748042;
      }

      if (*(v22 + 8))
      {
        v24 = 0;
        v25 = *(v14 + 16 * v12) + 2 * v16;
        do
        {
          *(v23 + 2 * v24) = *(v25 + 2 * v24);
          ++v24;
        }

        while (v24 < *(v22 + 8));
      }

      goto LABEL_17;
    }

    ++v16;
    v14 = *a5;
    v15 = *a5 + 16 * v12;
    if (*(v15 + 8) <= v16)
    {
      goto LABEL_17;
    }
  }
}

char *cstdlib_safe_strcat(uint64_t a1, const char **a2, char *__s, void *a4, unint64_t a5)
{
  v10 = cstdlib_strlen(__s);
  checksize_and_realloc(a1, a2, v10, a4, a5);
  v11 = *a2;

  return cstdlib_strcat(v11, __s);
}

char *cstdlib_safe_strncat(uint64_t a1, const char **a2, const char *a3, size_t a4, void *a5)
{
  checksize_and_realloc(a1, a2, a4, a5, 0x40uLL);
  v8 = *a2;

  return cstdlib_strncat(v8, a3, a4);
}

uint64_t pw_merge_NLU_0(uint64_t a1, char **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    if (hlp_NLUStrKeyLen(v2) >= 3)
    {
      v6 = *v2 - 69;
      v7 = v6 > 0xE;
      v8 = (1 << v6) & 0x4011;
      v9 = v7 || v8 == 0;
      if (!v9 && v2[1] == 95)
      {
        ++v5;
      }
    }

    v2 = hlp_NLUStrNext(v2);
  }

  while (v2);
  if (!v5)
  {
    return 0;
  }

  v10 = 2584748042;
  v11 = heap_Calloc(*(a1 + 8), 8, v5);
  if (v11)
  {
    v12 = v11;
    v13 = *a2;
    if (!*a2)
    {
      goto LABEL_158;
    }

    v106 = a2;
    v105 = -1710219254;
    v14 = 0;
    do
    {
      v15 = hlp_NLUStrKeyLen(v13);
      if (v15 >= 3)
      {
        v16 = *v13 - 69;
        v7 = v16 > 0xE;
        v17 = (1 << v16) & 0x4011;
        v18 = v7 || v17 == 0;
        if (!v18 && v13[1] == 95)
        {
          v19 = v15;
          v20 = heap_Calloc(*(a1 + 8), 1, v15 - 1);
          if (!v20)
          {
            v26 = v12;
            v10 = 2584748042;
            goto LABEL_180;
          }

          v21 = v20;
          cstdlib_strncpy(v20, v13 + 2, v19 - 2);
          if (v14)
          {
            v22 = v14;
            v23 = v12;
            v24 = v14;
            while (1)
            {
              if (!*v23)
              {
                goto LABEL_29;
              }

              if (!cstdlib_strcmp(*v23, v21))
              {
                break;
              }

              ++v23;
              if (!--v24)
              {
                goto LABEL_29;
              }
            }

            heap_Free(*(a1 + 8), v21);
          }

          else
          {
            v22 = 0;
LABEL_29:
            *(v12 + 8 * v22) = v21;
            ++v14;
          }
        }
      }

      v13 = hlp_NLUStrNext(v13);
    }

    while (v13);
    if (!v14)
    {
LABEL_158:
      v10 = 0;
      goto LABEL_186;
    }

    v25 = heap_Realloc(*(a1 + 8), v12, 8 * v14);
    if (v25)
    {
      v26 = v25;
      v27 = heap_Calloc(*(a1 + 8), 2, v14);
      if (v27)
      {
        v99 = v27;
        for (i = *v106; i; i = hlp_NLUStrNext(i))
        {
          v29 = hlp_NLUStrKeyLen(i);
          if (v29 >= 3)
          {
            v30 = *i - 69;
            v7 = v30 > 0xE;
            v31 = (1 << v30) & 0x4011;
            v32 = v7 || v31 == 0;
            if (!v32 && i[1] == 95)
            {
              v33 = 0;
              v34 = v29 - 2;
              while (1)
              {
                v35 = *(v26 + 8 * v33);
                if (!v35)
                {
                  goto LABEL_49;
                }

                if (!cstdlib_strncmp(v35, i + 2, v34))
                {
                  break;
                }

                if (v14 == ++v33)
                {
                  goto LABEL_49;
                }
              }

              if ((v33 & 0x8000) == 0)
              {
                ++*(v99 + 2 * (v33 & 0x7FFF));
              }
            }
          }

LABEL_49:
          ;
        }

        v36 = heap_Calloc(*(a1 + 8), 8, v14);
        if (!v36)
        {
          v10 = 2584748042;
          v88 = v99;
          goto LABEL_179;
        }

        v37 = v36;
        v38 = 0;
        v39 = v99;
        do
        {
          v40 = heap_Calloc(*(a1 + 8), 8, *(v99 + 2 * v38));
          *(v37 + 8 * v38) = v40;
          if (!v40)
          {
            v88 = v99;
            v41 = 0;
            goto LABEL_165;
          }

          ++v38;
        }

        while (v14 != v38);
        v41 = heap_Calloc(*(a1 + 8), 2, v14);
        if (!v41)
        {
LABEL_164:
          v88 = v39;
          goto LABEL_165;
        }

        for (j = *v106; j; j = hlp_NLUStrNext(j))
        {
          v43 = hlp_NLUStrKeyLen(j);
          if (v43 >= 3)
          {
            v44 = *j - 69;
            v7 = v44 > 0xE;
            v45 = (1 << v44) & 0x4011;
            if (!v7 && v45 != 0 && j[1] == 95)
            {
              KeyIdx = hlp_getKeyIdx(v26, v14, j + 2, (v43 - 2));
              if ((KeyIdx & 0x80000000) == 0)
              {
                v48 = KeyIdx;
                v103 = *(v37 + 8 * KeyIdx);
                v49 = hlp_NLUStrKeyValue(j);
                v50 = v49;
                v51 = v49 ? hlp_NLUStrLength(v49) : 0;
                v52 = v51;
                if (!hlp_checkValExist(v103, *(v41 + 2 * v48), v50, v51))
                {
                  v53 = heap_Calloc(*(a1 + 8), 1, v52 + 2);
                  if (!v53)
                  {
LABEL_188:
                    v88 = v99;
                    goto LABEL_165;
                  }

                  if (v50)
                  {
                    v54 = v50;
                    v55 = v53;
                    cstdlib_strncpy(v53, v54, v52);
                  }

                  else
                  {
                    v55 = v53;
                    cstdlib_strcpy(v53, " ");
                  }

                  v56 = *(v41 + 2 * v48);
                  *&v103[8 * v56] = v55;
                  *(v41 + 2 * v48) = v56 + 1;
                }
              }
            }
          }
        }

        v57 = 0;
        v39 = v99;
        do
        {
          v58 = heap_Realloc(*(a1 + 8), *(v37 + 8 * v57), 8 * *(v41 + 2 * v57));
          if (!v58)
          {
            goto LABEL_164;
          }

          *(v37 + 8 * v57++) = v58;
        }

        while (v14 != v57);
        v59 = 0;
        while (!*(v41 + 2 * v59))
        {
LABEL_155:
          if (++v59 == v14)
          {
            v88 = v99;
            v105 = 0;
LABEL_165:
            for (k = 0; k != v14; ++k)
            {
              v90 = *(v37 + 8 * k);
              if (v90)
              {
                if (v41)
                {
                  v91 = *(v41 + 2 * k);
                  if (v91)
                  {
                    for (m = 0; m < v91; ++m)
                    {
                      v93 = *(*(v37 + 8 * k) + 8 * m);
                      if (v93)
                      {
                        heap_Free(*(a1 + 8), v93);
                        v91 = *(v41 + 2 * k);
                      }
                    }

                    v90 = *(v37 + 8 * k);
                  }
                }

                heap_Free(*(a1 + 8), v90);
              }
            }

            heap_Free(*(a1 + 8), v37);
            if (v41)
            {
              heap_Free(*(a1 + 8), v41);
            }

            v10 = v105;
LABEL_179:
            heap_Free(*(a1 + 8), v88);
            v12 = v26;
LABEL_180:
            if (v14)
            {
LABEL_181:
              for (n = 0; n != v14; ++n)
              {
                v95 = *(v26 + 8 * n);
                if (v95)
                {
                  heap_Free(*(a1 + 8), v95);
                }
              }

              v12 = v26;
            }

LABEL_186:
            heap_Free(*(a1 + 8), v12);
            return v10;
          }
        }

        v60 = 0;
        while (1)
        {
          v61 = *(v26 + 8 * v59);
          v62 = *(*(v37 + 8 * v59) + 8 * v60);
          v63 = *v106;
          v108 = 0;
          __s2 = 0;
          v104 = v63;
          if (!v63)
          {
            goto LABEL_129;
          }

          __s1 = v62;
          if (v62)
          {
            v97 = cstdlib_strlen(v62);
          }

          else
          {
            v97 = 0;
          }

          v64 = *(a1 + 8);
          v65 = cstdlib_strlen(v61);
          v66 = heap_Calloc(v64, 1, v65 + 3);
          if (!v66)
          {
            goto LABEL_188;
          }

          v67 = v66;
          cstdlib_strcpy(v66, "S_");
          __s = v67;
          cstdlib_strcat(v67, v61);
          v68 = *(a1 + 8);
          v69 = cstdlib_strlen(v61);
          v70 = heap_Calloc(v68, 1, v69 + 3);
          if (!v70)
          {
            v101 = 0;
            v102 = 0;
LABEL_122:
            v82 = -1710219254;
            v80 = __s;
            goto LABEL_123;
          }

          v71 = v70;
          cstdlib_strcpy(v70, "I_");
          v101 = v71;
          cstdlib_strcat(v71, v61);
          v72 = *(a1 + 8);
          v73 = cstdlib_strlen(v61);
          v74 = heap_Calloc(v72, 1, v73 + 3);
          if (!v74)
          {
            v102 = 0;
            goto LABEL_122;
          }

          v75 = v74;
          cstdlib_strcpy(v74, "E_");
          v102 = v75;
          cstdlib_strcat(v75, v61);
          v76 = __s1;
          if (!hlp_NLUStrFind(v104, __s, &__s2, &v108))
          {
            goto LABEL_94;
          }

          v77 = v108;
          if (!__s1 || v108)
          {
            goto LABEL_91;
          }

          if (cstdlib_strcmp(__s1, " "))
          {
            break;
          }

LABEL_95:
          if (!hlp_NLUStrFind(v104, v101, &__s2, &v108))
          {
            goto LABEL_103;
          }

          v78 = v108;
          if (__s1 && !v108)
          {
            if (!cstdlib_strcmp(__s1, " "))
            {
              goto LABEL_104;
            }

            v78 = v108;
          }

          if (!__s1 || v97 != v78 || cstdlib_strncmp(__s1, __s2, v78))
          {
LABEL_103:
            heap_Free(*(a1 + 8), v101);
            v101 = 0;
          }

LABEL_104:
          if (!hlp_NLUStrFind(v104, v102, &__s2, &v108))
          {
            goto LABEL_114;
          }

          v79 = v108;
          if (__s1 && !v108)
          {
            if (!cstdlib_strcmp(__s1, " "))
            {
              goto LABEL_115;
            }

            v79 = v108;
          }

          if (!__s1 || v97 != v79)
          {
LABEL_114:
            heap_Free(*(a1 + 8), v102);
            v102 = 0;
            if (!__s1)
            {
              goto LABEL_117;
            }

            goto LABEL_115;
          }

          if (cstdlib_strncmp(__s1, __s2, v79))
          {
            heap_Free(*(a1 + 8), v102);
            v102 = 0;
          }

LABEL_115:
          if (!cstdlib_strcmp(__s1, " "))
          {
            v76 = 0;
          }

LABEL_117:
          hlp_NLUStrRemoveRangeKey(v104, v61, v76);
          v80 = __s;
          if (__s)
          {
            if (!v101)
            {
              v81 = __s;
              if (!v102)
              {
                goto LABEL_120;
              }
            }
          }

          if (__s)
          {
            v85 = 1;
          }

          else
          {
            v85 = v101 == 0;
          }

          v86 = !v85;
          if (!v85)
          {
            v87 = v101;
            if (!v102)
            {
              goto LABEL_139;
            }
          }

          if (__s || v101 || !v102)
          {
            if (__s && v102)
            {
              hlp_NLUStrAppendKeyVal(v104, __s, v76);
              v81 = v102;
              goto LABEL_120;
            }

            if (__s && v101 && (v81 = __s, !v102))
            {
LABEL_120:
              hlp_NLUStrAppendKeyVal(v104, v81, v76);
              v80 = __s;
              v82 = 0;
            }

            else
            {
              if (!v102)
              {
                v86 = 0;
              }

              v87 = v102;
              if (v86)
              {
LABEL_139:
                hlp_NLUStrAppendKeyVal(v104, v87, v76);
                v83 = v101;
                v82 = 0;
LABEL_125:
                heap_Free(*(a1 + 8), v83);
LABEL_126:
                v84 = v102;
                if (!v102)
                {
                  goto LABEL_128;
                }

                goto LABEL_127;
              }

              v82 = 0;
              if (!__s)
              {
LABEL_124:
                v83 = v101;
                if (v101)
                {
                  goto LABEL_125;
                }

                goto LABEL_126;
              }
            }

LABEL_123:
            heap_Free(*(a1 + 8), v80);
            goto LABEL_124;
          }

          hlp_NLUStrAppendKeyVal(v104, v102, v76);
          v84 = v102;
          v82 = 0;
LABEL_127:
          heap_Free(*(a1 + 8), v84);
LABEL_128:
          if (v82 < 0)
          {
            v88 = v99;
            v105 = v82;
            goto LABEL_165;
          }

LABEL_129:
          if (++v60 >= *(v41 + 2 * v59))
          {
            goto LABEL_155;
          }
        }

        v77 = v108;
LABEL_91:
        if (__s1 && v97 == v77 && !cstdlib_strncmp(__s1, __s2, v77))
        {
          goto LABEL_95;
        }

LABEL_94:
        heap_Free(*(a1 + 8), __s);
        __s = 0;
        goto LABEL_95;
      }
    }

    else
    {
      v26 = v12;
    }

    v10 = 2584748042;
    goto LABEL_181;
  }

  return v10;
}

char *pw_split_csc_pw_0(char *result, uint64_t a2, char **a3, unint64_t *a4)
{
  if (*(a2 + 12) == 1 && (*(a2 + 8) & 0xFFFE) == 4)
  {
    v5 = *a3;
    if (*a3)
    {
      v7 = result;
      v8 = 1;
      do
      {
        v9 = v8;
        result = cstdlib_strstr(v5, ".");
        if (result)
        {
          v5 = result + 1;
        }

        else
        {
          v5 = 0;
        }

        if (!result)
        {
          break;
        }

        v8 = 0;
      }

      while ((v9 & 1) != 0);
      if (result)
      {
        v10 = cstdlib_strlen(*a3);
        v11 = v10 + cstdlib_strlen("{SEP2}") + 1;
        v12 = *a4;
        if (v11 > *a4)
        {
          result = heap_Realloc(*(v7 + 1), *a3, v11);
          if (!result)
          {
            return result;
          }

          *a3 = result;
          *a4 = v11;
          v12 = v11;
        }

        result = heap_Calloc(*(v7 + 1), 1, v12);
        if (result)
        {
          v13 = result;
          cstdlib_strncpy(result, *a3, (~*a3 + v5));
          cstdlib_strcat(v13, "{SEP2}");
          cstdlib_strcat(v13, v5);
          v14 = *a3;

          return cstdlib_strcpy(v14, v13);
        }
      }
    }
  }

  return result;
}

uint64_t pw_check_if_glue_forbidden_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  *a7 = 0;
  pw_check_if_word_in_prompt_0(a1, a2, a3, a5, a7);
  if (*a7)
  {
    return 0;
  }

  pw_check_if_word_in_prompt_0(a1, a2, a3, a6, a7);
  if (*a7)
  {
    return 0;
  }

  v24 = 0;
  v25 = 0;
  v23 = 0;
  result = (*(*(a1 + 48) + 176))(a2, a3, a4, 1, &v23, &v24);
  if ((result & 0x80000000) == 0)
  {
    (*(*(a1 + 48) + 168))(a2, a3, a5, 1, 1, &v25 + 2, &v24 + 2);
    result = (*(*(a1 + 48) + 168))(a2, a3, a6, 2, 1, &v25, &v24 + 2);
    if ((result & 0x80000000) == 0)
    {
      if (v24)
      {
        v15 = 0;
        v16 = (v23 + 12);
        while (1)
        {
          v17 = *v16;
          v16 += 8;
          if (v17 - *(v23 + 12) > HIWORD(v25))
          {
            break;
          }

          if (v24 == ++v15)
          {
            goto LABEL_23;
          }
        }

        v18 = v15;
      }

      else
      {
        v18 = 0;
      }

      if (v18 < v24)
      {
        v19 = v24 - v18;
        v20 = (v23 + 32 * v18);
        while (v20[3] - *(v23 + 12) < v25)
        {
          if (*v20 <= 0x39u && ((1 << *v20) & 0x3C0010124001140) != 0)
          {
            v22 = 1;
            goto LABEL_24;
          }

          v20 += 8;
          if (!--v19)
          {
            break;
          }
        }
      }

LABEL_23:
      v22 = 0;
LABEL_24:
      *a7 = v22;
    }
  }

  return result;
}

char *cstdlib_safe_strcpy(uint64_t a1, const char **a2, char *__s, void *a4, unint64_t a5)
{
  v10 = cstdlib_strlen(__s);
  checksize_and_realloc(a1, a2, v10, a4, a5);
  v11 = *a2;

  return cstdlib_strcpy(v11, __s);
}

size_t checksize_and_realloc(uint64_t a1, const char **a2, uint64_t a3, void *a4, unint64_t a5)
{
  result = cstdlib_strlen(*a2);
  if (a3 + 1 + result > *a4)
  {
    v11 = result;
    if (a3 + 1 > a5)
    {
      a5 = a3 + 1;
    }

    result = heap_Realloc(*(a1 + 8), *a2, *a4 + a5);
    if (result)
    {
      *a2 = result;
      v12 = *a4 + a5;
      *a4 = v12;
      v13 = &v11[result];

      return cstdlib_memset(v13, 0, v12 - v11);
    }
  }

  return result;
}

uint64_t pw_check_if_word_in_prompt_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v10 = 0;
  *a5 = 0;
  result = (*(*(a1 + 48) + 168))(a2, a3, a4, 1, 1, &v10, &v10 + 2);
  if ((result & 0x80000000) == 0)
  {
    return (*(*(a1 + 48) + 312))(a2, a3, v10, a5);
  }

  return result;
}

uint64_t load_igtree_cfg(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v10 = 0;
  v9 = -1;
  v8 = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "statbnd_igtree", &v10, &v9, &v8);
  if ((v5 & 0x80000000) == 0 && v9 == 1)
  {
    v6 = *v10;
    v6[cstdlib_strlen(*v10) - 1] = 0;
    if (!cstdlib_strcmp(*v10, "yes"))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t igtree_freeFeatureVector(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      if (*a2)
      {
        heap_Free(*(a1 + 8), *a2);
        *a2 = 0;
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t load_igtree(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v17, 0, 240);
  *v14 = 0;
  v15 = 0;
  *a4 = 0;
  __s2 = 0;
  memset(__s1, 0, sizeof(__s1));
  v17[15] = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", &__s2);
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v15), (Str & 0x80000000) != 0) || (cstdlib_strcat(__s1, "pwigtree_"), cstdlib_strcat(__s1, __s2), cstdlib_strcat(__s1, "_"), cstdlib_strcat(__s1, v15), Str = brokeraux_ComposeBrokerString(a3, __s1, 1, 1, __s2, 0, 0, v17, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v17, "IGTR", 1031, v14), (Str & 0x80000000) != 0))
  {
    v10 = Str;
  }

  else
  {
    v9 = heap_Calloc(*(a3 + 8), 1, 1600);
    *a4 = v9;
    if (v9)
    {
      v10 = igtree_Init(a1, a2, *v14, v9);
      ssftriff_reader_CloseChunk(*v14);
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_PW", 37000, 0);
      v10 = 2584748042;
    }
  }

  if (*v14)
  {
    v11 = ssftriff_reader_ObjClose(*v14);
    if (v11 >= 0 || v10 <= -1)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  return v10;
}

uint64_t igtree_initFeatureVector(uint64_t a1, char **a2, unsigned int a3)
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

    cstdlib_strcpy(v6, "=");
    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0);
  return 2584748042;
}

uint64_t igtree_setFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v10 = a4;
  v73 = 0;
  v14 = heap_Calloc(*(a1 + 8), 1, 2048);
  if (v14)
  {
    v15 = v14;
    v71 = a2;
    v72 = a7;
    if (v10 < 2)
    {
      v18 = 0;
    }

    else
    {
      v16 = 0;
      v17 = (v10 - 1);
      while (cstdlib_strcmp(*(a3 + 8 * v16), "word"))
      {
        if (v17 == ++v16)
        {
          goto LABEL_27;
        }
      }

      v73 = v16;
LABEL_27:
      v28 = 0;
      if (v17 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = (v10 - 1);
      }

      while (cstdlib_strcmp(*(a3 + 8 * v28), "word"))
      {
        if (v29 == ++v28)
        {
          v18 = 0;
          goto LABEL_37;
        }
      }

      v73 = v28;
      if (v72 >= a6)
      {
        v30 = "=";
      }

      else
      {
        v30 = *(a5 + 40 * v72);
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 0, a2, v30);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_37:
      v31 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v31), "lword"))
      {
        if (v29 == ++v31)
        {
          goto LABEL_45;
        }
      }

      v73 = v31;
      if (v72 - 1 >= a6)
      {
        v32 = "=";
      }

      else
      {
        v32 = *(a5 + 40 * (v72 - 1));
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 1, v71, v32);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_45:
      v33 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v33), "llword"))
      {
        if (v29 == ++v33)
        {
          goto LABEL_53;
        }
      }

      v73 = v33;
      if (v72 - 2 >= a6)
      {
        v34 = "=";
      }

      else
      {
        v34 = *(a5 + 40 * (v72 - 2));
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 2, v71, v34);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_53:
      v35 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v35), "rword"))
      {
        if (v29 == ++v35)
        {
          goto LABEL_61;
        }
      }

      v73 = v35;
      if (v72 + 1 >= a6)
      {
        v36 = "=";
      }

      else
      {
        v36 = *(a5 + 40 * (v72 + 1));
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 3, v71, v36);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_61:
      v37 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v37), "rrword"))
      {
        if (v29 == ++v37)
        {
          goto LABEL_69;
        }
      }

      v73 = v37;
      if (v72 + 2 >= a6)
      {
        v38 = "=";
      }

      else
      {
        v38 = *(a5 + 40 * (v72 + 2));
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 4, v71, v38);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_69:
      v39 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v39), "wordlen"))
      {
        if (v29 == ++v39)
        {
          goto LABEL_74;
        }
      }

      v73 = v39;
      feat_wordlength_0(a5, a6, v72, 0, v15);
      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 5, v71, v15);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_74:
      v40 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v40), "lwordlen"))
      {
        if (v29 == ++v40)
        {
          goto LABEL_79;
        }
      }

      v73 = v40;
      feat_wordlength_0(a5, a6, v72, -1, v15);
      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 6, v71, v15);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_79:
      v41 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v41), "rwordlen"))
      {
        if (v29 == ++v41)
        {
          goto LABEL_84;
        }
      }

      v73 = v41;
      feat_wordlength_0(a5, a6, v72, 1, v15);
      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 7, v71, v15);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_84:
      v42 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v42), "pos"))
      {
        if (v29 == ++v42)
        {
          goto LABEL_107;
        }
      }

      v73 = v42;
      if (v72 >= a6)
      {
        v43 = "=";
      }

      else
      {
        v43 = *(a5 + 40 * v72 + 8);
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 8, v71, v43);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_107:
      v49 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v49), "lpos"))
      {
        if (v29 == ++v49)
        {
          goto LABEL_123;
        }
      }

      v73 = v49;
      if (v72 - 1 >= a6)
      {
        v50 = "=";
      }

      else
      {
        v50 = *(a5 + 40 * (v72 - 1) + 8);
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 9, v71, v50);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_123:
      v53 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v53), "llpos"))
      {
        if (v29 == ++v53)
        {
          goto LABEL_131;
        }
      }

      v73 = v53;
      if (v72 - 2 >= a6)
      {
        v54 = "=";
      }

      else
      {
        v54 = *(a5 + 40 * (v72 - 2) + 8);
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 10, v71, v54);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_131:
      v55 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v55), "rpos"))
      {
        if (v29 == ++v55)
        {
          goto LABEL_147;
        }
      }

      v73 = v55;
      if (v72 + 1 >= a6)
      {
        v56 = "=";
      }

      else
      {
        v56 = *(a5 + 40 * (v72 + 1) + 8);
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 11, v71, v56);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_147:
      v59 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v59), "rrpos"))
      {
        if (v29 == ++v59)
        {
          a2 = v71;
          a7 = v72;
          goto LABEL_9;
        }
      }

      v73 = v59;
      a7 = v72;
      if (v72 + 2 >= a6)
      {
        v60 = "=";
      }

      else
      {
        v60 = *(a5 + 40 * (v72 + 2) + 8);
      }

      a2 = v71;
      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 12, v71, v60);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }
    }

LABEL_9:
    if (!hlp_igtree_isFeatureRequired_0(a3, v10, 13, &v73) || (v19 = feat_char(a5, a7, 0, v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 13, a2, v19), (v18 & 0x80000000) == 0))
    {
      if (!hlp_igtree_isFeatureRequired_0(a3, v10, 15, &v73) || (v20 = feat_char(a5, a7, 1, v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 15, a2, v20), (v18 & 0x80000000) == 0))
      {
        if (!hlp_igtree_isFeatureRequired_0(a3, v10, 14, &v73) || (v21 = feat_char(a5, a7, -1, v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 14, a2, v21), (v18 & 0x80000000) == 0))
        {
          if (!hlp_igtree_isFeatureRequired_0(a3, v10, 16, &v73) || (v22 = feat_char(a5, a7, -2, v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 16, a2, v22), (v18 & 0x80000000) == 0))
          {
            if (!hlp_igtree_isFeatureRequired_0(a3, v10, 17, &v73) || (v23 = feat_matchprevpos_0(a5, a7, "n"), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 17, a2, v23), (v18 & 0x80000000) == 0))
            {
              if (!hlp_igtree_isFeatureRequired_0(a3, v10, 18, &v73) || (v24 = feat_matchprevpos_0(a5, a7, "v"), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 18, a2, v24), (v18 & 0x80000000) == 0))
              {
                if (!hlp_igtree_isFeatureRequired_0(a3, v10, 19, &v73))
                {
                  goto LABEL_188;
                }

                v25 = a7;
                while (a6 > ++v25)
                {
                  v26 = (a5 + 40 * v25);
                  if (!cstdlib_strncmp(v26[1], "n", 1uLL))
                  {
                    v27 = *v26;
                    goto LABEL_91;
                  }
                }

                v27 = "=";
LABEL_91:
                a2 = v71;
                v18 = hlp_igtree_setFeature_0(a1, a3, v10, 19, v71, v27);
                a7 = v72;
                if ((v18 & 0x80000000) == 0)
                {
LABEL_188:
                  if (!hlp_igtree_isFeatureRequired_0(a3, v10, 19, &v73))
                  {
                    goto LABEL_189;
                  }

                  v44 = a7;
                  while (a6 > ++v44)
                  {
                    v45 = (a5 + 40 * v44);
                    if (!cstdlib_strncmp(v45[1], "v", 1uLL))
                    {
                      v46 = *v45;
                      goto LABEL_98;
                    }
                  }

                  v46 = "=";
LABEL_98:
                  a2 = v71;
                  v18 = hlp_igtree_setFeature_0(a1, a3, v10, 20, v71, v46);
                  a7 = v72;
                  if ((v18 & 0x80000000) == 0)
                  {
LABEL_189:
                    if (!hlp_igtree_isFeatureRequired_0(a3, v10, 21, &v73) || (a7 >= a6 ? (v48 = "=") : ((v15[1] = 0, *(a5 + 40 * a7 + 26) > 5u) ? (v47 = 48) : (v47 = 49), *v15 = v47, v48 = v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 21, a2, v48), (v18 & 0x80000000) == 0))
                    {
                      if (!hlp_igtree_isFeatureRequired_0(a3, v10, 22, &v73) || (a7 >= a6 ? (v52 = "=") : ((v15[1] = 0, *(a5 + 40 * a7 + 26) < 2u) ? (v51 = 48) : (v51 = 49), *v15 = v51, v52 = v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 22, a2, v52), (v18 & 0x80000000) == 0))
                      {
                        if (!hlp_igtree_isFeatureRequired_0(a3, v10, 23, &v73) || (a7 - 1 >= a6 ? (v58 = "=") : ((v15[1] = 0, *(a5 + 40 * (a7 - 1) + 26) > 5u) ? (v57 = 48) : (v57 = 49), *v15 = v57, v58 = v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 23, a2, v58), (v18 & 0x80000000) == 0))
                        {
                          if (!hlp_igtree_isFeatureRequired_0(a3, v10, 24, &v73) || (a7 - 1 >= a6 ? (v62 = "=") : ((v15[1] = 0, *(a5 + 40 * (a7 - 1) + 26) < 2u) ? (v61 = 48) : (v61 = 49), *v15 = v61, v62 = v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 24, a2, v62), (v18 & 0x80000000) == 0))
                          {
                            if (!hlp_igtree_isFeatureRequired_0(a3, v10, 25, &v73) || (a7 + 1 >= a6 ? (v64 = "=") : ((v15[1] = 0, *(a5 + 40 * (a7 + 1) + 26) > 5u) ? (v63 = 48) : (v63 = 49), *v15 = v63, v64 = v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 25, a2, v64), (v18 & 0x80000000) == 0))
                            {
                              if (!hlp_igtree_isFeatureRequired_0(a3, v10, 26, &v73) || (a7 + 1 >= a6 ? (v66 = "=") : ((v15[1] = 0, *(a5 + 40 * (a7 + 1) + 26) < 2u) ? (v65 = 48) : (v65 = 49), *v15 = v65, v66 = v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 26, a2, v66), (v18 & 0x80000000) == 0))
                              {
                                v67 = 0;
                                v68 = a2;
                                v69 = v73;
                                do
                                {
                                  log_OutText(*(a1 + 32), "FE_PW", 5, 0, "igtree feature %s", *(v68 + 8 * v67++));
                                }

                                while (v69 >= v67);
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
      }
    }

LABEL_184:
    heap_Free(*(a1 + 8), v15);
    return v18;
  }

  log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0);
  return 2584748042;
}

uint64_t hlp_igtree_isFeatureRequired_0(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_4[a3];
  v8 = (a2 - 1);
  while (cstdlib_strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

uint64_t hlp_igtree_setFeature_0(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v15 = -1;
  result = hlp_igtree_isFeatureRequired_0(a2, a3, a4, &v15);
  if (result)
  {
    if (cstdlib_strcmp(a6, ""))
    {
      v10 = cstdlib_strlen(a6);
      v11 = v15;
      if (v10 <= 0x40)
      {
        v13 = *(a5 + 8 * v15);
      }

      else
      {
        v12 = cstdlib_strlen(a6);
        v13 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v11), (v12 + 1));
        if (!v13)
        {
          log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0);
          return 2584748042;
        }

        *(a5 + 8 * v11) = v13;
      }

      v14 = a6;
    }

    else
    {
      v13 = *(a5 + 8 * v15);
      v14 = "=";
    }

    cstdlib_strcpy(v13, v14);
    return 0;
  }

  return result;
}

char *feat_wordlength_0(uint64_t a1, unsigned int a2, int a3, int a4, char *a5)
{
  *a5 = 0;
  if (a4 + a3 < a2)
  {
    return sprintf(a5, "%d", *(a1 + 40 * (a4 + a3) + 26));
  }

  return cstdlib_strcpy(a5, "=");
}

uint64_t pw_dag_process(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, unsigned int *a10, unsigned int a11, uint64_t *a12, unsigned __int16 *a13)
{
  v17 = a1;
  v18 = heap_Alloc(*(a1 + 8), 24);
  if (!v18)
  {
    goto LABEL_73;
  }

  v19 = v18;
  *(v18 + 8) = a9 + 1;
  v20 = a6 - 1;
  if (a6 - 1 <= 1)
  {
    v20 = 1;
  }

  *(v18 + 12) = a5;
  *(v18 + 16) = v20;
  v21 = heap_Alloc(*(v17 + 8), 16 * (a9 + 1));
  *v19 = v21;
  if (!v21)
  {
    v68 = 2584748042;
    log_OutPublic(*(v17 + 32), "FE_PW", 37000, 0);
    v69 = *(v17 + 8);
    v70 = v19;
    goto LABEL_75;
  }

  v22 = v19[4];
  if (v19[4])
  {
    v23 = (v21 + 12);
    do
    {
      *(v23 - 6) = 0;
      *(v23 - 1) = -2147483647;
      *v23 = -1;
      v23 += 8;
      --v22;
    }

    while (v22);
  }

  v24 = heap_Alloc(*(v17 + 8), a4 + 11);
  if (!v24)
  {
LABEL_73:
    v68 = 2584748042;
    log_OutPublic(*(v17 + 32), "FE_PW", 37000, 0);
    return v68;
  }

  v25 = v24;
  if (!a9)
  {
    heap_Free(*(v17 + 8), v24);
LABEL_77:
    if (!*v19)
    {
      return 2584748039;
    }

    v71 = v19[4];
    v72 = v19[4];
    *(*v19 + 8) = 0;
    log_OutText(*(v17 + 32), "FE_PW", 5, 0, "[DAG]: All possible path, <vertex_from: vertex_to>: weight, accumulated weight");
    if (v71 >= 1)
    {
      v73 = 0;
      v74 = *v19;
      do
      {
        for (i = *(v74 + 16 * v73); i; i = *i)
        {
          v76 = *(i + 3);
          v77 = *(i + 4) + *(v74 + 16 * v73 + 8);
          log_OutText(*(v17 + 32), "FE_PW", 5, 0, "<%d: %d>: %d, %d", v73, *(i + 3), *(i + 4), v77);
          v74 = *v19;
          v78 = *v19 + 16 * v76;
          if (v77 > *(v78 + 8))
          {
            *(v78 + 8) = v77;
            *(v78 + 12) = v73;
          }
        }

        ++v73;
      }

      while (v73 != v72);
    }

    v79 = heap_Alloc(*(v17 + 8), 16);
    if (!v79)
    {
      goto LABEL_118;
    }

    v80 = v79;
    v81 = heap_Alloc(*(v17 + 8), 2 * v72);
    *v80 = v81;
    if (!v81)
    {
      log_OutPublic(*(v17 + 32), "FE_PW", 37000, 0);
      if (*v80)
      {
        heap_Free(*(v17 + 8), *v80);
        *v80 = 0;
      }

      heap_Free(*(v17 + 8), v80);
      return 2584748042;
    }

    v82 = a13;
    *(v80 + 8) = 0;
    v83 = (v72 - 1);
    *v81 = v72 - 1;
    v84 = *(v80 + 8);
    v85 = v84 + 1;
    *(v80 + 8) = v84 + 1;
    if (v83 >= 1)
    {
      v86 = *v19;
      do
      {
        v83 = *(v86 + 16 * v83 + 12);
        v81[v85] = v83;
        v84 = *(v80 + 8);
        v85 = v84 + 1;
        *(v80 + 8) = v84 + 1;
      }

      while (v83 > 0);
    }

    *a13 = v84;
    v87 = heap_Calloc(*(v17 + 8), v84, 16);
    *a12 = v87;
    if (!v87)
    {
LABEL_118:
      log_OutPublic(*(v17 + 32), "FE_PW", 37000, 0);
      return 2584748042;
    }

    v117 = v19;
    v88 = *a13;
    if (!*a13)
    {
LABEL_108:
      heap_Free(*(v17 + 8), *v80);
      heap_Free(*(v17 + 8), v80);
      v110 = *v117;
      if (*v117)
      {
        v111 = *(v117 + 8);
        if (*(v117 + 8))
        {
          v112 = 0;
          do
          {
            v113 = *(*v117 + 16 * v112);
            if (v113)
            {
              do
              {
                v114 = *v113;
                heap_Free(*(v17 + 8), v113);
                v113 = v114;
              }

              while (v114);
            }

            ++v112;
          }

          while (v112 != v111);
          v110 = *v117;
        }
      }

      heap_Free(*(v17 + 8), v110);
      heap_Free(*(v17 + 8), v117);
      return 0;
    }

    v89 = v87;
    v90 = 0;
    v91 = "FE_PW";
    while (1)
    {
      v126 = v90;
      v92 = (*v80 + 2 * (v88 - v90));
      v93 = *(v92 - 1);
      v94 = *v92;
      v95 = heap_Alloc(*(v17 + 8), 2 * (v93 - v94));
      if (!v95)
      {
        log_OutPublic(*(v17 + 32), "FE_PW", 37000, 0);
        if (*a12)
        {
          heap_Free(*(v17 + 8), *a12);
          *a12 = 0;
        }

        return 2584748042;
      }

      v96 = v95;
      *(v89 + 4) = v93 - v94;
      *v89 = v95;
      log_OutText(*(v17 + 32), v91, 5, 0, "Orthography is: ");
      if (v93 == v94)
      {
        v97 = heap_Calloc(*(v17 + 8), 1, 1000);
        v98 = v126;
        if (!v97)
        {
          goto LABEL_107;
        }
      }

      else
      {
        v124 = v89;
        v122 = (v93 - v94);
        if (v122 <= 1)
        {
          v99 = 1;
        }

        else
        {
          v99 = (v93 - v94);
        }

        v100 = a8;
        v101 = v80;
        v102 = v82;
        v103 = v91;
        v104 = v17;
        do
        {
          v105 = v100 + 40 * *(*v101 + 2 * (*v102 - v126));
          v106 = *(v105 + 24);
          log_OutText(*(v104 + 32), v103, 5, 0, "    %s [tid: %d, pos: %s]    ", *v105, v106, *(v105 + 8));
          *v96++ = v106;
          v100 += 40;
          --v99;
        }

        while (v99);
        v107 = heap_Calloc(*(v104 + 8), 1, 1000);
        v17 = v104;
        v91 = v103;
        v82 = v102;
        v80 = v101;
        v89 = v124;
        v98 = v126;
        if (!v107)
        {
          goto LABEL_107;
        }

        v97 = v107;
        v108 = 0;
        v109 = 0;
        do
        {
          sprintf(&v97[v109], "%d-", *(*v124 + 2 * v108));
          v109 = cstdlib_strlen(v97);
          ++v108;
        }

        while (v122 > v108);
        v82 = a13;
      }

      log_OutText(*(v17 + 32), v91, 5, 0, "PW [tids:%s, ntok:%d]", v97, *(v89 + 4));
      heap_Free(*(v17 + 8), v97);
LABEL_107:
      v89 += 2;
      v90 = v98 + 1;
      v88 = *v82;
      if (v90 >= v88)
      {
        goto LABEL_108;
      }
    }
  }

  v116 = v19;
  v118 = v17;
  v26 = 0;
  v27 = 0;
  v28 = a7 + 512;
  while (1)
  {
    v29 = (a8 + 40 * v27);
    if (cstdlib_strlen(*v29) > 5 || !cstdlib_strcmp(v29[2], "latin"))
    {
      goto LABEL_68;
    }

    v30 = *(a7 + 1024);
    if (v30)
    {
      v31 = 0;
      while (*(a7 + 4 * v31) > *(v29 + 7) || *(v29 + 8) > *(v28 + 4 * v31))
      {
        if (v30 <= ++v31)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_68;
    }

LABEL_18:
    rules = pw_get_rules(a2, a3, *v29);
    if (!rules)
    {
      log_OutText(*(v118 + 32), "FE_PW", 5, 0, "Warning: Can't find rules for the character %s", *v29);
      goto LABEL_68;
    }

    v125 = *(rules + 8);
    if (*(rules + 8))
    {
      break;
    }

LABEL_68:
    v26 = ++v27;
    if (v27 >= a9)
    {
      v17 = v118;
      heap_Free(*(v118 + 8), v25);
      v66 = 0;
      v19 = v116;
      while (1)
      {
        inserted = dag_insert_edge(v118, v116, v66, v66 + 1, *(v116 + 4));
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        if (a9 <= ++v66)
        {
          goto LABEL_77;
        }
      }
    }
  }

  v33 = 0;
  v123 = *(rules + 16);
  while (1)
  {
    v34 = v123 + 40 * v33;
    *v25 = 0;
    v35 = *(v34 + 36);
    if (v26 >= v35 && a9 - v26 > *(v34 + 38))
    {
      if (*(v34 + 36))
      {
        v36 = 0;
        v37 = 0;
        v38 = a8;
        while (1)
        {
          v39 = v36 + v26;
          if (!cstdlib_strcmp(*(v38 + 40 * (v36 + v26 - v35) + 16), "latin"))
          {
            goto LABEL_35;
          }

          v40 = v39 - *(v34 + 36);
          v41 = *(a7 + 1024);
          if (v41)
          {
            v42 = 0;
            v43 = a8 + 40 * v40;
            while (*(a7 + 4 * v42) > *(v43 + 28) || *(v43 + 32) > *(v28 + 4 * v42))
            {
              if (v41 <= ++v42)
              {
                goto LABEL_31;
              }
            }

            goto LABEL_35;
          }

LABEL_31:
          cstdlib_strcat(v25, *(a8 + 40 * v40 + 8));
          cstdlib_strcat(v25, "-");
          v38 = a8;
          v36 = ++v37;
          v35 = *(v34 + 36);
          if (v37 >= v35)
          {
            goto LABEL_34;
          }
        }
      }

      v38 = a8;
LABEL_34:
      v121 = *(v38 + 40 * (v26 - v35) + 28);
      v44 = cstdlib_strlen(v25);
      if (!cstdlib_strncmp(v25, v34, v44))
      {
        cstdlib_strcat(v25, *v29);
        if (*(v34 + 38))
        {
          v45 = 0;
          v46 = 0;
          v47 = a8;
          while (1)
          {
            v48 = v47 + 40 * (v45 + v26);
            if (!cstdlib_strcmp(*(v48 + 56), "latin"))
            {
              goto LABEL_35;
            }

            v49 = *(a7 + 1024);
            if (v49)
            {
              v50 = 0;
              while (*(a7 + 4 * v50) > *(v48 + 68) || *(v48 + 72) > *(v28 + 4 * v50))
              {
                if (v49 <= ++v50)
                {
                  goto LABEL_45;
                }
              }

              goto LABEL_35;
            }

LABEL_45:
            cstdlib_strcat(v25, "-");
            cstdlib_strcat(v25, *(v48 + 48));
            v45 = ++v46;
            v51 = *(v34 + 38);
            v47 = a8;
            if (v46 >= v51)
            {
              goto LABEL_48;
            }
          }
        }

        v51 = 0;
        v47 = a8;
LABEL_48:
        v52 = *(v47 + 40 * (v26 + v51) + 32);
        if (!cstdlib_strcmp(v25, v34))
        {
          v53 = a10;
          v54 = a11;
          if (a11)
          {
            do
            {
              v56 = *v53++;
              v55 = v56;
              if (v56 > v121 && v55 < v52)
              {
                goto LABEL_35;
              }
            }

            while (--v54);
          }

          v58 = *(v34 + 36);
          v59 = v27 - v58;
          v60 = *(v34 + 38);
          if (v26 + v60 < (v27 - v58))
          {
            break;
          }

          v61 = 0;
          v62 = 0;
          do
          {
            v63 = *(a8 + 40 * v59 + 26);
            v62 += v63;
            if (v63 > 1)
            {
              ++v61;
            }

            ++v59;
          }

          while (v26 + v60 >= v59);
          if (v61 <= 1u && v62 <= 5u)
          {
            break;
          }
        }
      }
    }

LABEL_35:
    if (v125 <= ++v33)
    {
      goto LABEL_68;
    }
  }

  v65 = dag_insert_edge(v118, v116, v27 - v58, v27 + 1 + *(v34 + 38), *(v34 + 32));
  if ((v65 & 0x80000000) == 0)
  {
    log_OutText(*(v118 + 32), "FE_PW", 5, 0, "%s Matches rule %s with weight %d, and insert edges between point %d and %d", *v29, v25, *(v34 + 32), v26 - *(v34 + 36), v26 + 1 + *(v34 + 38));
    goto LABEL_35;
  }

  v68 = v65;
  v69 = *(v118 + 8);
  v70 = v25;
LABEL_75:
  heap_Free(v69, v70);
  return v68;
}

uint64_t pw_weather_word_in_prompt(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v3 = *(a1 + 1024);
  if (v3)
  {
    v4 = 0;
    while (*(a1 + 4 * v4) > *(a2 + 28) || *(a2 + 32) > *(a1 + 512 + 4 * v4))
    {
      if (v3 <= ++v4)
      {
        return 0;
      }
    }

    *a3 = 1;
  }

  return 0;
}

uint64_t dag_insert_edge(uint64_t a1, uint64_t *a2, unsigned int a3, int a4, uint64_t a5)
{
  v10 = heap_Alloc(*(a1 + 8), 24);
  if (v10)
  {
    v11 = v10;
    *(v10 + 8) = a3;
    *(v10 + 12) = a4;
    v12 = uint32_log2(a5);
    v13 = uint32_log2(*(a2 + 3));
    result = 0;
    *(v11 + 16) = v12 - v13;
    v15 = *a2;
    v16 = 16 * a3;
    *v11 = *(*a2 + v16);
    *(v15 + v16) = v11;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0);
    return 2584748042;
  }

  return result;
}

uint64_t BSCompareUtf8ChineseChar(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = utf8_determineUTF8CharLength(*a1);
  v5 = utf8_determineUTF8CharLength(*a2);
  if (v4 != v5)
  {
    return v4 - v5;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = a1[v6];
    v8 = a2[v6];
    result = (v7 - v8);
    if (v7 != v8)
    {
      break;
    }

    if (++v6 >= v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t GetRulesFromRiffData(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5, unsigned int *a6, unsigned __int16 *a7, _DWORD *a8, unsigned int *a9, uint64_t *a10, unsigned __int8 *a11)
{
  v105 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, 32);
  memset(v103, 0, sizeof(v103));
  v85 = 0;
  memset(v102, 0, sizeof(v102));
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  *__s1 = 0u;
  v87 = 0u;
  *a7 = 0;
  *a8 = 0;
  *a9 = 10000;
  *a11 = 0;
  ssftriff_reader_ReadStringZ(a2, a3, a4, 0, 0, &v85);
  v83 = a3;
  v84 = a2;
  ssftriff_reader_ReadStringZ(a2, a3, a4, 0, __s1, &v85);
  v19 = v85;
  v20 = cstdlib_strstr(__s1, "\t");
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v22 = cstdlib_strstr(v20 + 1, "\t");
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  v81 = a4;
  *v22 = 0;
  v24 = cstdlib_atoi(v21 + 1);
  *a11 = v24;
  v25 = heap_Calloc(*(a1 + 8), v24, 8);
  *a10 = v25;
  if (!v25)
  {
    v67 = 2584748042;
    log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0);
    return v67;
  }

  v26 = v25;
  v78 = a5;
  v79 = a7;
  v77 = a8;
  v82 = a6;
  if (!*a11)
  {
LABEL_8:
    v34 = v83;
    v35 = v81;
    ssftriff_reader_ReadStringZ(v84, v83, v81, v19, 0, &v85);
    ssftriff_reader_ReadStringZ(v84, v83, v81, v19, __dst, &v85);
    v36 = v85 + v19;
    v85 = 0;
    ssftriff_reader_ReadStringZ(v84, v83, v81, v36, 0, &v85);
    ssftriff_reader_ReadStringZ(v84, v83, v81, v36, v103, &v85);
    v37 = v85;
    v38 = cstdlib_atoi(v103);
    v39 = v82;
    *v82 = v38;
    v40 = heap_Calloc(*(a1 + 8), v38, 32);
    if (!v40)
    {
      goto LABEL_45;
    }

    v80 = v40;
    if (!*v82)
    {
      goto LABEL_42;
    }

    v41 = v37 + v36;
    v42 = 0;
LABEL_11:
    v85 = 0;
    ssftriff_reader_ReadStringZ(v84, v34, v35, v41, 0, &v85);
    ssftriff_reader_ReadStringZ(v84, v34, v35, v41, v102, &v85);
    v43 = v85;
    v44 = cstdlib_atoi(v102);
    v76 = v42;
    v45 = v80 + 32 * v42;
    *(v45 + 8) = v44;
    v46 = heap_Calloc(*(a1 + 8), v44, 40);
    *(v45 + 16) = v46;
    if (!v46)
    {
      v67 = 2584748042;
      log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0);
LABEL_47:
      v68 = a10;
      v69 = *v39;
      if (v69)
      {
        v70 = 0;
        v71 = (v80 + 16);
        do
        {
          if (*v71)
          {
            heap_Free(*(a1 + 8), *v71);
            *v71 = 0;
            v69 = *v39;
          }

          ++v70;
          v71 += 4;
        }

        while (v70 < v69);
      }

      heap_Free(*(a1 + 8), v80);
      goto LABEL_53;
    }

    v41 += v43;
    *(v45 + 24) = 0;
    cstdlib_memset(v45, 0, 5uLL);
    if (!*(v45 + 8))
    {
      goto LABEL_41;
    }

    v47 = 0;
LABEL_14:
    v85 = 0;
    ssftriff_reader_ReadStringZ(v84, v34, v35, v41, 0, &v85);
    ssftriff_reader_ReadStringZ(v84, v34, v35, v41, (*(v45 + 16) + 40 * v47), &v85);
    v48 = 0;
    v49 = 0;
    v41 += v85;
    v50 = *(v45 + 16);
    v39 = v82;
    *(v50 + 40 * v47 + 32) = 0;
    while (1)
    {
      v51 = v50 + 40 * v47;
      v52 = (v51 + v49);
      v53 = *v52;
      if (v53 == 45)
      {
        ++v48;
        v54 = 1;
      }

      else
      {
        if (!*v52)
        {
          v49 = 0;
          goto LABEL_32;
        }

        if (v53 == 9)
        {
          v59 = cstdlib_atoi(v52 + 1);
          v60 = *(v45 + 16) + 40 * v47;
          *(v60 + 32) = v59;
          *(v60 + v49) = 0;
          v50 = *(v45 + 16);
          v39 = v82;
LABEL_32:
          v61 = v50 + 40 * v47;
          *(v61 + 38) = v48;
          v62 = *(v61 + 36);
          if (*(v45 + 24) < v62)
          {
            *(v45 + 24) = v62;
          }

          if (*(v45 + 26) < v48)
          {
            *(v45 + 26) = v48;
          }

          if (*v79 < v49)
          {
            *v79 = v49;
          }

          v63 = v50 + 40 * v47;
          v66 = *(v63 + 32);
          v65 = (v63 + 32);
          v64 = v66;
          v35 = v81;
          if (*a9 > v66)
          {
            *a9 = v64;
            v64 = *v65;
          }

          v34 = v83;
          *v77 += v64;
          if (++v47 < *(v45 + 8))
          {
            goto LABEL_14;
          }

LABEL_41:
          v42 = v76 + 1;
          if (v76 + 1 >= *v39)
          {
LABEL_42:
            v67 = 0;
            *v78 = v80;
            return v67;
          }

          goto LABEL_11;
        }

        if ((v53 & 0xFFFFFFDF) - 65 >= 0x1A)
        {
          *(v51 + 36) = v48;
          v55 = utf8_determineUTF8CharLength(*v52);
          v54 = v55;
          if (v47)
          {
            v50 = *(v45 + 16);
            v39 = v82;
            if (v55)
            {
              v56 = 0;
              v57 = 0;
              while (1)
              {
                v58 = *(v45 + v57);
                if (v58 != *(v50 + 40 * v47 + v56 + v49))
                {
                  break;
                }

                v56 = ++v57;
                if (v55 <= v57)
                {
                  goto LABEL_28;
                }
              }

              log_OutText(*(a1 + 32), "FE_PW", 5, 0, "the Chinese Character %s in %d rule: %d is not same", v58, v76, v47);
              v67 = 2584748060;
              goto LABEL_47;
            }
          }

          else
          {
            cstdlib_memcpy(v45, (*(v45 + 16) + v49), v55);
            v50 = *(v45 + 16);
            v39 = v82;
          }

LABEL_28:
          v48 = 0;
        }

        else
        {
          v54 = 1;
          v39 = v82;
        }
      }

      v49 += v54;
    }
  }

  v27 = 0;
  v28 = 0;
  v29 = v23 + 1;
  while (1)
  {
    v30 = heap_Calloc(*(a1 + 8), 8, 1);
    *(v26 + 8 * v27) = v30;
    if (!v30)
    {
      break;
    }

    v31 = v28;
    v32 = &v29[v28];
    v33 = utf8_determineUTF8CharLength(*v32);
    cstdlib_memcpy(*(v26 + 8 * v27), v32, v33);
    *(*(v26 + 8 * v27) + v33 + 1) = 0;
    v28 = v31 + v33;
    if (++v27 >= *a11)
    {
      goto LABEL_8;
    }
  }

LABEL_45:
  v67 = 2584748042;
  log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0);
  v68 = a10;
LABEL_53:
  v72 = *a11;
  if (*a11)
  {
    v73 = 0;
    do
    {
      v74 = *(v26 + 8 * v73);
      if (v74)
      {
        heap_Free(*(a1 + 8), v74);
        v72 = *a11;
      }

      ++v73;
    }

    while (v73 < v72);
  }

  heap_Free(*(a1 + 8), v26);
  *v68 = 0;
  return v67;
}

uint64_t fe_wmp_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2587893761;
  }

  result = 0;
  *a2 = &IFeWmp;
  return result;
}

uint64_t fe_wmp_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v5 = 2587893767;
  v17 = 0;
  memset(v20, 0, sizeof(v20));
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v19);
    if ((inited & 0x80000000) == 0)
    {
      v10 = heap_Calloc(*(v19 + 8), 1, 168);
      if (v10)
      {
        v11 = v10;
        Object = objc_GetObject(*(v19 + 48), "LINGDB", &v18);
        if ((Object & 0x80000000) != 0 || (*(v11 + 24) = *(v18 + 8), Object = objc_GetObject(*(v19 + 48), "FE_DCTLKP", &v17), (Object & 0x80000000) != 0) || (v13 = v17, *(v11 + 56) = *(v17 + 8), *(v11 + 64) = *(v13 + 16), v14 = v19, *v11 = v19, *(v11 + 8) = a3, *(v11 + 16) = a4, Object = fe_wmp_CreateVoiceBrokerString(v14, v20), (Object & 0x80000000) != 0))
        {
          v5 = Object;
        }

        else
        {
          v5 = fe_wmp_tryLoadingWmpModel(*(v11 + 8), *(v11 + 16), *v11, (v11 + 32));
          if ((v5 & 0x80000000) == 0)
          {
            v15 = 62342;
LABEL_13:
            *a5 = v11;
            *(a5 + 8) = v15;
            return v5;
          }
        }
      }

      else
      {
        log_OutPublic(*(v19 + 32), "FE_WMP", 37000, 0);
        v5 = 2587893770;
      }

      fe_wmp_ObjClose(*a5, *(a5 + 8));
      v11 = 0;
      v15 = 0;
      goto LABEL_13;
    }

    return inited;
  }

  return v5;
}

uint64_t fe_wmp_ObjClose(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62342, 168);
  if ((v3 & 0x80000000) != 0)
  {
    return 2587893768;
  }

  v4 = v3;
  if (a1)
  {
    if (a1[3])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v5 = a1[4];
    if (v5)
    {
      igtree_Deinit(*a1, v5);
      heap_Free(*(*a1 + 8), a1[4]);
      a1[4] = 0;
    }

    heap_Free(*(*a1 + 8), a1);
  }

  return v4;
}

uint64_t fe_wmp_ObjReopen(void *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = 2587893766;
  memset(v7, 0, sizeof(v7));
  if ((safeh_HandleCheck(a1, a2, 62342, 168) & 0x80000000) != 0)
  {
    return 2587893768;
  }

  if (a1)
  {
    VoiceBrokerString = fe_wmp_CreateVoiceBrokerString(*a1, v7);
    if ((VoiceBrokerString & 0x80000000) == 0)
    {
      v5 = a1[4];
      if (v5)
      {
        igtree_Deinit(*a1, v5);
        heap_Free(*(*a1 + 8), a1[4]);
        a1[4] = 0;
      }

      return fe_wmp_tryLoadingWmpModel(a1[1], a1[2], *a1, a1 + 4);
    }

    return VoiceBrokerString;
  }

  return v3;
}

uint64_t fe_wmp_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62342, 168);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2587893768;
  }
}

uint64_t fe_wmp_Process(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v42 = 0;
  v40 = 0;
  v41 = 0;
  *v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v34 = 0;
  __s1 = 0;
  *(a1 + 40) = 0;
  *a5 = 1;
  log_OutText(*(*a1 + 32), "FE_WMP", 5, 0, "[FE_WORD_MAP]: Entering");
  if (((*(a1[7] + 256))(a1[8], a1[9], "fewmp_act_wmp", "no", &__s1) & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  v8 = cstdlib_strcmp(__s1, "yes");
  *(a1 + 40) = v8 == 0;
  if (v8 || ((*(a1[7] + 256))(a1[8], a1[9], "fewmp_late_wmp", "no", &__s1) & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  *(a1 + 41) = cstdlib_strcmp(__s1, "yes") == 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v34);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v26 = (*(a1[3] + 104))(a3, a4, 1, 0, &v41 + 2);
  if ((v26 & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  v23 = v26;
  if (((*(a1[3] + 184))(a3, a4, HIWORD(v41), 0, &v38) & 0x80000000) != 0)
  {
    return v23;
  }

  if (v38 != 1)
  {
    return v23;
  }

  v23 = (*(a1[3] + 176))(a3, a4, HIWORD(v41), 0, &v42, &v40 + 2);
  if ((v23 & 0x80000000) != 0 || HIWORD(v40) < 2u || !cstdlib_strlen(v42))
  {
    return v23;
  }

  v27 = *(*a1 + 8);
  v28 = cstdlib_strlen(v42);
  v29 = heap_Alloc(v27, v28 + 1);
  a1[5] = v29;
  if (!v29)
  {
    log_OutPublic(*(*a1 + 32), "FE_WMP", 37000, 0);
    return 2587893770;
  }

  cstdlib_strcpy(v29, v42);
  if (((*(a1[3] + 176))(a3, a4, HIWORD(v41), 1, v39, &v38 + 2) & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  v30 = *a1;
  a1[10] = *a1;
  if ((fe_wmp_getSent(a1, v30, a3, a4, HIWORD(v41), a1[5], *v39, HIWORD(v38), (a1 + 11), v34, &v37) & 0x80000000) != 0 || (fe_wmp_mapEachWord(a1, &v36) & 0x80000000) != 0 || !v36)
  {
    goto LABEL_3;
  }

  if (*(a1 + 41) != 1)
  {
    if (((*(a1[3] + 104))(a3, a4, 3, HIWORD(v41), &v41) & 0x80000000) != 0 || (fe_wmp_userTNBoundaryAdjust(a1, a3, a4, v37, v41, SHIWORD(v40), v40) & 0x80000000) != 0)
    {
      goto LABEL_3;
    }

    fe_wmp_AdjustMarkers(a1, *v39, HIWORD(v38), v34);
    goto LABEL_58;
  }

  v9 = v37;
  if ((fe_wmp_userTNBoundaryAdjustLateWMP(a1, a3, a4, v37, HIWORD(v41)) & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  if ((fe_wmp_adjustWordRecords(a1, a3, a4) & 0x80000000) == 0)
  {
    fe_wmp_AdjustMarkersLateWMP(a1, *v39, HIWORD(v38), v34);
LABEL_58:
    v31 = *(a1[3] + 160);
    v32 = HIWORD(v41);
    v33 = cstdlib_strlen(a1[5]);
    v31(a3, a4, v32, 0, (v33 + 1), a1[5], &v40);
  }

LABEL_3:
  v9 = v37;
LABEL_4:
  if (v9)
  {
    heap_Free(*(*a1 + 8), v9);
  }

  v10 = a1[12];
  if (v10)
  {
    heap_Free(*(*a1 + 8), v10);
    a1[12] = 0;
  }

  v11 = a1[11];
  if (v11)
  {
    heap_Free(*(*a1 + 8), v11);
    a1[11] = 0;
  }

  v12 = a1[13];
  if (v12)
  {
    v13 = *(a1 + 68);
    if (*(a1 + 68))
    {
      v14 = 0;
      do
      {
        v15 = *(a1[13] + 8 * v14);
        if (v15)
        {
          heap_Free(*(*a1 + 8), v15);
          *(a1[13] + 8 * v14) = 0;
          v13 = *(a1 + 68);
        }

        ++v14;
      }

      while (v14 < v13);
      v12 = a1[13];
    }

    heap_Free(*(*a1 + 8), v12);
    a1[13] = 0;
  }

  v16 = a1[14];
  if (v16)
  {
    heap_Free(*(*a1 + 8), v16);
    a1[14] = 0;
  }

  v17 = a1[15];
  if (v17)
  {
    heap_Free(*(*a1 + 8), v17);
    a1[15] = 0;
  }

  v18 = a1[16];
  if (v18)
  {
    heap_Free(*(*a1 + 8), v18);
    a1[16] = 0;
  }

  v19 = a1[18];
  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
    a1[18] = 0;
  }

  v20 = a1[5];
  if (v20)
  {
    heap_Free(*(*a1 + 8), v20);
    a1[5] = 0;
  }

  v21 = a1[19];
  if (!v21)
  {
    return 0;
  }

  if (*(a1 + 68))
  {
    v22 = 0;
    do
    {
      heap_Free(*(*a1 + 8), *(a1[19] + 8 * v22));
      *(a1[19] + 8 * v22++) = 0;
    }

    while (v22 < *(a1 + 68));
    v21 = a1[19];
  }

  heap_Free(*(*a1 + 8), v21);
  v23 = 0;
  a1[19] = 0;
  return v23;
}

uint64_t fe_wmp_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62342, 168);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2587893768;
  }
}

uint64_t fe_wmp_CreateVoiceBrokerString(uint64_t a1, _BYTE *a2)
{
  v5 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v5);
  if ((result & 0x80000000) == 0)
  {
    return brokeraux_ComposeBrokerString(a1, "wordmap", 1, 1, v5, 0, 0, a2, 0x100uLL);
  }

  return result;
}

uint64_t fe_wmp_tryLoadingWmpModel(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v17, 0, 240);
  *v14 = 0;
  v15 = 0;
  *a4 = 0;
  v16 = 0;
  memset(__s1, 0, sizeof(__s1));
  v17[15] = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", &v16);
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v15), (Str & 0x80000000) != 0) || (cstdlib_strcat(__s1, "wordmap"), Str = brokeraux_ComposeBrokerString(a3, __s1, 1, 1, v16, 0, 0, v17, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v17, "IGTR", 1031, v14), (Str & 0x80000000) != 0))
  {
    v10 = Str;
  }

  else
  {
    v9 = heap_Calloc(*(a3 + 8), 1, 1600);
    *a4 = v9;
    if (v9)
    {
      v10 = igtree_Init(a1, a2, *v14, v9);
      ssftriff_reader_CloseChunk(*v14);
      if ((v10 & 0x80001FFF) == 0x14)
      {
        ssftriff_reader_CloseChunk(*v14);
        v10 = 0;
      }
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_WMP", 37000, 0);
      v10 = 2587893770;
    }
  }

  if (*v14)
  {
    v11 = ssftriff_reader_ObjClose(*v14);
    if (v11 >= 0 || v10 <= -1)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  return v10;
}

uint64_t fe_wmp_getSent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *__s, uint64_t a7, unsigned int a8, uint64_t a9, const char *a10, uint64_t *a11)
{
  v61 = 0;
  v62 = 0;
  *a9 = 0;
  v18 = *(a2 + 8);
  v19 = cstdlib_strlen(__s);
  v20 = heap_Alloc(v18, v19 + 1);
  *(a9 + 8) = v20;
  if (!v20)
  {
    return 2587893770;
  }

  v64 = 0;
  v63 = 0;
  v60 = 0;
  cstdlib_strcpy(v20, __s);
  if (*(a1 + 164) == 1)
  {
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v65 = 0;
    v21 = (*(*(a1 + 24) + 104))(a3, a4, 2, a5, &v65);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }

    v56 = __s;
    v57 = a2;
    v58 = a7;
    v22 = v65;
    if (v65)
    {
      v23 = 0;
      LOWORD(v24) = 0;
      v25 = 1;
      while (1)
      {
        v21 = (*(*(a1 + 24) + 168))(a3, a4, v22, 0, 1, &v68, &v67);
        if ((v21 & 0x80000000) != 0)
        {
          return v21;
        }

        if (v68 <= 0x11 && ((1 << v68) & 0x20210) != 0)
        {
          v21 = (*(*(a1 + 24) + 168))(a3, a4, v65, 1, 1, &v66 + 4, &v67);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          v21 = (*(*(a1 + 24) + 168))(a3, a4, v65, 2, 1, &v66, &v67);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          if (v25 == 1 || v23 != HIDWORD(v66))
          {
            LOWORD(v24) = v24 + 1;
          }

          v23 = HIDWORD(v66);
          v25 = 0;
        }

        v21 = (*(*(a1 + 24) + 120))(a3, a4, v65, &v65);
        if ((v21 & 0x80000000) != 0)
        {
          return v21;
        }

        v22 = v65;
        if (!v65)
        {
          goto LABEL_39;
        }
      }
    }

    LOWORD(v24) = 0;
LABEL_39:
    v55 = a5;
  }

  else
  {
    if (!a8)
    {
      return 2587893767;
    }

    v56 = __s;
    v57 = a2;
    v58 = a7;
    v55 = a5;
    v24 = 0;
    v28 = a8;
    v29 = (a7 + 24);
    v30 = 1;
    do
    {
      v31 = *(v29 - 6);
      if (v31 == 36)
      {
        v30 = !cstdlib_strcmp(*v29, "normal") || !cstdlib_strcmp(*v29, a10);
      }

      else
      {
        if (v31 == 1)
        {
          v32 = v24 + 1;
        }

        else
        {
          v32 = v24;
        }

        if (v30)
        {
          v24 = v32;
        }

        v30 = v30;
      }

      v29 += 4;
      --v28;
    }

    while (v28);
  }

  v33 = 2587893767;
  if (!v24)
  {
    return v33;
  }

  *(a9 + 48) = v24;
  v34 = heap_Calloc(*(v57 + 8), v24, 4);
  *a11 = v34;
  if (!v34)
  {
    return v33;
  }

  if (!*(a1 + 164))
  {
    if (!a8)
    {
      goto LABEL_71;
    }

    v39 = 0;
    v40 = a8;
    v41 = (v58 + 24);
    v42 = 1;
    while (1)
    {
      v43 = *(v41 - 6);
      if (v43 == 36)
      {
        if (cstdlib_strcmp(*v41, "normal") && cstdlib_strcmp(*v41, a10))
        {
LABEL_69:
          v42 = 0;
          goto LABEL_70;
        }
      }

      else
      {
        if (v42 != 1)
        {
          goto LABEL_69;
        }

        if (v43 == 1)
        {
          *(*a11 + 4 * v39++) = *(v41 - 3);
        }
      }

      v42 = 1;
LABEL_70:
      v41 += 4;
      if (!--v40)
      {
        goto LABEL_71;
      }
    }
  }

  v21 = (*(*(a1 + 24) + 104))(a3, a4, 2, v55, &v60);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v35 = 0;
  v36 = 0;
  v37 = 1;
  while (v60)
  {
    v21 = (*(*(a1 + 24) + 168))(a3, a4);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }

    if (v64 <= 0x11 && ((1 << v64) & 0x20210) != 0)
    {
      v21 = (*(*(a1 + 24) + 168))(a3, a4, v60, 1, 1, &v62, &v63);
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }

      v21 = (*(*(a1 + 24) + 168))(a3, a4, v60, 2, 1, &v61, &v63);
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }

      if (v37 == 1 || v36 != v62)
      {
        v37 = 0;
        *(*a11 + 4 * v35++) = *(v58 + 12) + v62;
        v36 = v62;
      }

      else
      {
        v37 = 0;
      }
    }

    v33 = (*(*(a1 + 24) + 120))(a3, a4, v60, &v60);
    if ((v33 & 0x80000000) != 0)
    {
      return v33;
    }
  }

LABEL_71:
  v44 = heap_Calloc(*(v57 + 8), v24, 8);
  *a9 = v44;
  if (!v44)
  {
    return 2587893770;
  }

  v45 = heap_Calloc(*(v57 + 8), v24, 8);
  *(a9 + 64) = v45;
  if (!v45)
  {
    return 2587893770;
  }

  v46 = heap_Calloc(*(v57 + 8), v24, 8);
  *(a9 + 16) = v46;
  if (!v46)
  {
    return 2587893770;
  }

  v47 = 0;
  do
  {
    *(*(a9 + 16) + 8 * v47++) = 0;
  }

  while (v24 != v47);
  v48 = heap_Calloc(*(v57 + 8), v24, 2);
  *(a9 + 32) = v48;
  if (!v48)
  {
    return 2587893770;
  }

  v49 = heap_Calloc(*(v57 + 8), v24, 2);
  *(a9 + 40) = v49;
  v33 = 2587893770;
  if (v49)
  {
    v50 = 0;
    do
    {
      v51 = *(*a11 + 4 * v50) - *(v58 + 12);
      *(*(a9 + 32) + 2 * v50) = v51;
      *(*a9 + 8 * v50) = *(a9 + 8) + v51;
      if (v50 + 1 >= v24)
      {
        *(*(a9 + 40) + 2 * v50) = cstdlib_strlen(v56);
      }

      else
      {
        v52 = *(*a11 + 4 * (v50 + 1));
        v53 = *(*a11 + 4 * v50);
        *(*(a9 + 40) + 2 * v50) = *(*(a9 + 32) + 2 * v50) + v52 + ~v53;
        *(~v53 + *(*a9 + 8 * v50) + v52) = 0;
      }

      ++v50;
    }

    while (v24 != v50);
    return fe_wmp_getPos(a1, a3, a4, a9, v55, v57);
  }

  return v33;
}

uint64_t fe_wmp_mapEachWord(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 136);
  __s1 = 0;
  if (2 * cstdlib_strlen(*(a1 + 40)) <= 8 * v5)
  {
    v6 = 9 * v5;
  }

  else
  {
    v6 = 2 * cstdlib_strlen(*(a1 + 40));
  }

  v7 = heap_Calloc(*(v4 + 8), 1, (v6 + 1));
  if (v7)
  {
    v8 = v7;
    cstdlib_strcpy(v7, "");
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = 2587893770;
      v54 = heap_Alloc(*(v4 + 8), 8 * *(v9 + 1296) - 8);
      if (v54)
      {
        v52 = a2;
        if (*(v9 + 1296) != 1)
        {
          v11 = (*(v9 + 1296) - 1);
          v12 = v54;
          do
          {
            v13 = heap_Calloc(*(v4 + 8), 1, 65);
            *v12 = v13;
            if (!v13)
            {
              goto LABEL_100;
            }

            cstdlib_strcpy(v13, "=");
            ++v12;
          }

          while (--v11);
        }

        v14 = heap_Calloc(*(v4 + 8), v5, 2);
        *(a1 + 112) = v14;
        if (v14)
        {
          *(a1 + 144) = heap_Calloc(*(v4 + 8), v5, 2);
          __s = v8;
          if (*(a1 + 136))
          {
            v15 = 0;
            LODWORD(v16) = 0;
            while (1)
            {
              v17 = *(v9 + 1312);
              v18 = *(v9 + 1296);
              v19 = heap_Calloc(*(v4 + 8), 1, 2048);
              if (!v19)
              {
                goto LABEL_100;
              }

              v20 = v19;
              v53 = v16;
              if (v18 <= 1)
              {
                heap_Free(*(v4 + 8), v19);
                v10 = 0;
              }

              else
              {
                v21 = 0;
                while (cstdlib_strcmp(*(v17 + v21), "word"))
                {
                  v21 += 8;
                  if (8 * (v18 - 1) == v21)
                  {
                    v10 = 0;
                    goto LABEL_24;
                  }
                }

                v22 = "=";
                if (v15 < *(a1 + 136))
                {
                  v22 = *(*(a1 + 88) + 8 * v15);
                }

                v10 = fe_wmp_setFeature(v4, v17, v18, 2, v54, v22);
                if ((v10 & 0x80000000) != 0)
                {
LABEL_104:
                  heap_Free(*(v4 + 8), v20);
                  v8 = __s;
                  goto LABEL_101;
                }

LABEL_24:
                v23 = 0;
                if (v18 - 1 <= 1)
                {
                  v24 = 1;
                }

                else
                {
                  v24 = v18 - 1;
                }

                v25 = 8 * v24;
                while (cstdlib_strcmp(*(v17 + v23), "pos"))
                {
                  v23 += 8;
                  if (v25 == v23)
                  {
                    goto LABEL_34;
                  }
                }

                v26 = "=";
                if (v15 < *(a1 + 136))
                {
                  v26 = *(*(a1 + 152) + 8 * v15);
                }

                v10 = fe_wmp_setFeature(v4, v17, v18, 5, v54, v26);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_104;
                }

LABEL_34:
                v27 = 0;
                while (cstdlib_strcmp(*(v17 + v27), "lpos"))
                {
                  v27 += 8;
                  if (v25 == v27)
                  {
                    goto LABEL_43;
                  }
                }

                if (v15 && v15 - 1 < *(a1 + 136))
                {
                  v28 = *(*(a1 + 152) + 8 * (v15 - 1));
                }

                else
                {
                  v28 = "=";
                }

                v10 = fe_wmp_setFeature(v4, v17, v18, 6, v54, v28);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_104;
                }

LABEL_43:
                v29 = 0;
                while (cstdlib_strcmp(*(v17 + v29), "rpos"))
                {
                  v29 += 8;
                  if (v25 == v29)
                  {
                    goto LABEL_50;
                  }
                }

                v30 = "=";
                if (v15 + 1 < *(a1 + 136))
                {
                  v30 = *(*(a1 + 152) + 8 * (v15 + 1));
                }

                v10 = fe_wmp_setFeature(v4, v17, v18, 7, v54, v30);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_104;
                }

LABEL_50:
                v31 = 0;
                while (cstdlib_strcmp(*(v17 + v31), "lword"))
                {
                  v31 += 8;
                  if (v25 == v31)
                  {
                    goto LABEL_59;
                  }
                }

                if (v15 && v15 - 1 < *(a1 + 136))
                {
                  v32 = *(*(a1 + 88) + 8 * (v15 - 1));
                }

                else
                {
                  v32 = "=";
                }

                v10 = fe_wmp_setFeature(v4, v17, v18, 1, v54, v32);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_104;
                }

LABEL_59:
                v33 = 0;
                while (cstdlib_strcmp(*(v17 + v33), "llword"))
                {
                  v33 += 8;
                  if (v25 == v33)
                  {
                    goto LABEL_68;
                  }
                }

                if (v15 < 2 || v15 - 2 >= *(a1 + 136))
                {
                  v34 = "=";
                }

                else
                {
                  v34 = *(*(a1 + 88) + 8 * (v15 - 2));
                }

                v10 = fe_wmp_setFeature(v4, v17, v18, 0, v54, v34);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_104;
                }

LABEL_68:
                v35 = 0;
                while (cstdlib_strcmp(*(v17 + v35), "rword"))
                {
                  v35 += 8;
                  if (v25 == v35)
                  {
                    goto LABEL_75;
                  }
                }

                v36 = "=";
                if (v15 + 1 < *(a1 + 136))
                {
                  v36 = *(*(a1 + 88) + 8 * (v15 + 1));
                }

                v10 = fe_wmp_setFeature(v4, v17, v18, 3, v54, v36);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_104;
                }

LABEL_75:
                v37 = 0;
                while (cstdlib_strcmp(*(v17 + v37), "rrword"))
                {
                  v37 += 8;
                  if (v25 == v37)
                  {
                    v8 = __s;
                    LODWORD(v16) = v53;
                    goto LABEL_82;
                  }
                }

                v38 = "=";
                LODWORD(v16) = v53;
                if (v15 + 2 < *(a1 + 136))
                {
                  v38 = *(*(a1 + 88) + 8 * (v15 + 2));
                }

                v10 = fe_wmp_setFeature(v4, v17, v18, 4, v54, v38);
                v8 = __s;
LABEL_82:
                heap_Free(*(v4 + 8), v20);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_101;
                }
              }

              igtree_Process(v9, v54, &__s1);
              v39 = *(*(a1 + 120) + 2 * v15);
              if (v16 < v39)
              {
                cstdlib_strncat(v8, (*(a1 + 40) + v16), v39 - v16);
              }

              if (cstdlib_strcmp(__s1, "NOMATCH"))
              {
                cstdlib_strcat(v8, __s1);
                v40 = cstdlib_strlen(__s1);
                *(*(a1 + 112) + 2 * v15) = v40 - cstdlib_strlen(*(*(a1 + 88) + 8 * v15));
                *(*(a1 + 144) + 2 * v15) = 1;
                v41 = *(v4 + 8);
                v42 = cstdlib_strlen(__s1);
                *(*(a1 + 104) + 8 * v15) = heap_Calloc(v41, 1, v42 + 1);
                cstdlib_strcpy(*(*(a1 + 104) + 8 * v15), __s1);
                *v52 = 1;
              }

              else
              {
                cstdlib_strcat(v8, *(*(a1 + 88) + 8 * v15));
              }

              v16 = *(*(a1 + 128) + 2 * v15++);
              if (v15 >= *(a1 + 136))
              {
                goto LABEL_93;
              }
            }
          }

          v16 = 0;
          v10 = 0;
LABEL_93:
          if (cstdlib_strlen(*(a1 + 40)) > v16)
          {
            cstdlib_strcat(v8, (*(a1 + 40) + v16));
          }

          if (*(v9 + 1296) != 1)
          {
            v43 = (*(v9 + 1296) - 1);
            v44 = v54;
            do
            {
              v45 = *v44++;
              heap_Free(*(v4 + 8), v45);
              --v43;
            }

            while (v43);
          }

          v46 = *(v4 + 8);
          v47 = *(a1 + 40);
          v8 = __s;
          v48 = cstdlib_strlen(__s);
          v49 = heap_Realloc(v46, v47, v48 + 1);
          *(a1 + 40) = v49;
          if (!v49)
          {
LABEL_100:
            log_OutPublic(*(v4 + 32), "FE_WMP", 37000, 0);
            v10 = 2587893770;
            goto LABEL_101;
          }

          cstdlib_strcpy(v49, __s);
        }

LABEL_101:
        heap_Free(*(v4 + 8), v54);
      }
    }

    else
    {
      log_OutText(*(v4 + 32), "FE_WMP", 0, 0, "IGTree model for wordmap does not exist");
      v10 = 0;
    }

    heap_Free(*(v4 + 8), v8);
    return v10;
  }

  v10 = 2587893770;
  log_OutPublic(*(v4 + 32), "FE_WMP", 37000, 0);
  return v10;
}

uint64_t fe_wmp_userTNBoundaryAdjustLateWMP(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  result = (*(*(a1 + 24) + 104))(a2, a3, 2, a5, &v17);
  if ((result & 0x80000000) == 0)
  {
    while (v17)
    {
      result = (*(*(a1 + 24) + 168))(a2, a3, v17, 0, 1, &v20 + 4, &v18 + 2);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v10 = v17;
      if ((HIDWORD(v20) - 5) > 1)
      {
        goto LABEL_24;
      }

      result = (*(*(a1 + 24) + 168))(a2, a3, v17, 1, 1, &v20, &v18 + 2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(*(a1 + 24) + 168))(a2, a3, v17, 2, 1, &v19, &v18 + 2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (v19)
      {
        if (*(a1 + 136))
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          do
          {
            v14 = a4[v11];
            if (v14 >= *a4 + v19)
            {
              break;
            }

            v13 += *(*(a1 + 112) + 2 * v11);
            v15 = v14 >= v20 + *a4 ? 0 : *(*(a1 + 112) + 2 * v11);
            v12 += v15;
            ++v11;
          }

          while (*(a1 + 136) != v11);
        }

        else
        {
          v13 = 0;
          v12 = 0;
        }

        v19 += v13;
        LODWORD(v20) = v12 + v20;
      }

      result = (*(*(a1 + 24) + 160))(a2, a3, v17, 1, 1, &v20, &v18);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(*(a1 + 24) + 160))(a2, a3, v17, 2, 1, &v19, &v18);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v10 = v17;
      if (HIDWORD(v20) == 5)
      {
        if (v20 == v19)
        {
          v16 = v17;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
LABEL_24:
        v16 = 0;
      }

      result = (*(*(a1 + 24) + 120))(a2, a3, v10, &v17);
      if ((result & 0x80000000) == 0)
      {
        if (!v16)
        {
          continue;
        }

        result = (*(*(a1 + 24) + 192))(a2, a3, v16);
        if ((result & 0x80000000) == 0)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t fe_wmp_adjustWordRecords(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  memset(__c, 0, sizeof(__c));
  v31 = 0;
  v29 = 0;
  __s = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  result = (*(a1[3] + 104))(a2, a3, 1, 0, &v31);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1[3] + 104))(a2, a3, 2, v31, &v37 + 2);
    if ((result & 0x80000000) == 0)
    {
      v7 = HIWORD(v37);
      if (HIWORD(v37))
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 1;
        do
        {
          result = (*(a1[3] + 168))(a2, a3, v7, 0, 1, &v34, &v37);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v34 == 9 || v34 == 4)
          {
            result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 1, 1, &v36, &v37);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 2, 1, &v35, &v37);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v36)
            {
              v13 = 0;
            }

            else
            {
              v13 = v11;
            }

            if (v36 > v10)
            {
              v11 = 1;
            }

            else
            {
              v11 = v13;
            }

            if (v36 > v10)
            {
              ++v9;
            }

            if (*(a1[18] + 2 * v9) == 1 && v11 == 1)
            {
              __s = 0;
              *&__c[1] = 0;
              LOWORD(v33) = 0;
              result = (*(a1[3] + 176))(a2, a3, HIWORD(v37), 3, &__s, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[7] + 232))(a1[8], a1[9], "wmp_dct", *(a1[13] + 8 * v9), &__c[1], &v33, __c, 0);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (v33)
              {
                __s = **&__c[1];
                v15 = cstdlib_strchr(__s, __c[0]);
                if (v15)
                {
                  *v15 = 0;
                }
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v37), 5, &v29, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 7, 1, &v28, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v37), 6, &v27, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v37), 9, &v26, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v37), 14, &v25, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v16 = a1[14];
              LOWORD(v24) = *(a1[15] + 2 * v9) + v8;
              v23 = *(a1[16] + 2 * v9) + v8 + *(v16 + 2 * v9);
              result = (*(a1[3] + 160))(a2, a3, HIWORD(v37), 1, 1, &v24, &v24 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 160))(a2, a3, HIWORD(v37), 2, 1, &v23, &v24 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v17 = *(a1[3] + 160);
              v18 = HIWORD(v37);
              v19 = cstdlib_strlen(__s);
              result = v17(a2, a3, v18, 3, (v19 + 1), __s, &v24 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v20 = *(a1[14] + 2 * v9);
              result = (*(a1[3] + 120))(a2, a3, HIWORD(v37), &v37 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v8 += v20;
              if (HIWORD(v37))
              {
                result = (*(a1[3] + 168))(a2, a3);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 1, 1, &v33 + 2, &v37);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                while (HIWORD(v33) == v36)
                {
                  v21 = HIWORD(v37);
                  if (!HIWORD(v37))
                  {
                    break;
                  }

                  if (v34 != 9 && v34 != 4)
                  {
                    break;
                  }

                  result = (*(a1[3] + 120))(a2, a3, HIWORD(v37), &v37 + 2);
                  if ((result & 0x80000000) == 0)
                  {
                    result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 0, 1, &v34, &v37);
                    if ((result & 0x80000000) == 0)
                    {
                      result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 1, 1, &v33 + 2, &v37);
                      if ((result & 0x80000000) == 0)
                      {
                        result = (*(a1[3] + 192))(a2, a3, v21);
                        if ((result & 0x80000000) == 0)
                        {
                          continue;
                        }
                      }
                    }
                  }

                  return result;
                }
              }
            }

            else
            {
              result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 1, 1, &v36, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 2, 1, &v35, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              LOWORD(v24) = v36 + v8;
              v23 = v35 + v8;
              result = (*(a1[3] + 160))(a2, a3, HIWORD(v37), 1, 1, &v24, &v24 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 160))(a2, a3, HIWORD(v37), 2, 1, &v23, &v24 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 120))(a2, a3, HIWORD(v37), &v37 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            v10 = v36;
          }

          else
          {
            result = (*(a1[3] + 120))(a2, a3, HIWORD(v37), &v37 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          v7 = HIWORD(v37);
        }

        while (HIWORD(v37));
      }
    }
  }

  return result;
}

uint64_t fe_wmp_AdjustMarkersLateWMP(uint64_t result, uint64_t a2, unsigned int a3, const char *a4)
{
  v22 = result;
  v5 = *(result + 136);
  if (*(result + 136))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    do
    {
      if (v7 + 1 >= v5)
      {
        v11 = (*(v22 + 128) + 2 * v5 - 2);
      }

      else
      {
        v11 = (*(v22 + 120) + 2 * (v7 + 1));
      }

      v12 = *v11;
      v13 = (a2 + 32 * v8);
      v15 = v13 + 3;
      v14 = v13[3];
      if (v14 < v12)
      {
        do
        {
          v16 = *v13;
          v13[1] += v9;
          v13[3] = v14 + v9;
          if (v16 == 36)
          {
            result = cstdlib_strcmp(*(v13 + 3), "normal");
            v10 = 1;
            if (result)
            {
              result = cstdlib_strcmp(*(v13 + 3), a4);
              if (result)
              {
                v10 = 0;
              }
            }
          }

          if (*v15 != v12 - 1 && *v13 == 1)
          {
            if (v10)
            {
              v17 = *(*(v22 + 112) + 2 * v7);
            }

            else
            {
              v17 = 0;
            }

            v13[2] += v17;
            v18 = v8 + 1;
            if (v18 < a3)
            {
              v19 = (a2 + 32 * v18);
              if (*v19 == 37)
              {
                v20 = v19[3];
                v21 = v19[4] + v17;
                v19[1] += v9;
                v19[3] = v20 + v9;
                v19[4] = v21;
                ++v8;
              }
            }

            v9 += v17;
          }

          v13 = (a2 + 32 * ++v8);
          v15 = v13 + 3;
          v14 = v13[3];
        }

        while (v14 < v12);
        v5 = *(v22 + 136);
      }

      ++v7;
    }

    while (v7 < v5);
  }

  else
  {
    v9 = 0;
  }

  *(a2 + 8) += v9;
  *(a2 + 16) += v9;
  return result;
}

uint64_t fe_wmp_userTNBoundaryAdjust(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, int a5, __int16 a6, __int16 a7)
{
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v19 = 0;
  v20 = 0;
  if (!a5)
  {
    return 0;
  }

  v21 = 0;
  while (1)
  {
    result = (*(*(a1 + 24) + 168))(a2, a3, a5, 0, 1, &v21, &v23);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v12 = v24;
    if ((v21 - 4) > 2)
    {
      goto LABEL_24;
    }

    result = (*(*(a1 + 24) + 168))(a2, a3, v24, 1, 1, &v20, &v23);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = (*(*(a1 + 24) + 168))(a2, a3, v24, 2, 1, &v19, &v23);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v19)
    {
      if (*(a1 + 136))
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = a4[v13];
          if (v16 >= *a4 + v19)
          {
            break;
          }

          v15 += *(*(a1 + 112) + 2 * v13);
          v17 = v16 >= v20 + *a4 ? 0 : *(*(a1 + 112) + 2 * v13);
          v14 += v17;
          ++v13;
        }

        while (*(a1 + 136) != v13);
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v19 += v15;
      v20 += v14;
    }

    result = (*(*(a1 + 24) + 160))(a2, a3, v24, 1, 1, &v20, &v22);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = (*(*(a1 + 24) + 160))(a2, a3, v24, 2, 1, &v19, &v22);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v12 = v24;
    if (v21 == 5)
    {
      if (v20 == v19)
      {
        v18 = v24;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
LABEL_24:
      v18 = 0;
    }

    result = (*(*(a1 + 24) + 120))(a2, a3, v12, &v24);
    if ((result & 0x80000000) == 0)
    {
      if (!v18 || (result = (*(*(a1 + 24) + 192))(a2, a3, v18), (result & 0x80000000) == 0))
      {
        LOWORD(a5) = v24;
        if (v24)
        {
          continue;
        }
      }
    }

    return result;
  }
}

uint64_t fe_wmp_AdjustMarkers(uint64_t result, uint64_t a2, unsigned int a3, const char *a4)
{
  if (a3)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    v9 = a3;
    v10 = a2 + 12;
    v11 = 1;
    do
    {
      v12 = *(v10 - 12);
      *(v10 - 8) += v7;
      *v10 += v7;
      if (v12 == 36)
      {
        result = cstdlib_strcmp(*(v10 + 12), "normal");
        v11 = 1;
        if (result)
        {
          result = cstdlib_strcmp(*(v10 + 12), a4);
          if (result)
          {
            v11 = 0;
          }
        }

        v12 = *(v10 - 12);
      }

      if (v12 == 1)
      {
        if (v11)
        {
          v13 = *(*(v6 + 112) + 2 * v8++);
        }

        else
        {
          v13 = 0;
        }

        *(v10 - 4) += v13;
        v7 += v13;
      }

      v10 += 32;
      --v9;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 8) += v7;
  *(a2 + 16) += v7;
  return result;
}

uint64_t fe_wmp_getPos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = 0;
  __s = 0;
  v20 = 0;
  v18 = 0;
  v19 = 0;
  result = (*(*(a1 + 24) + 104))(a2, a3, 2, a5, &v22);
  if ((result & 0x80000000) == 0)
  {
    v12 = v22;
    if (v22)
    {
      v13 = 0;
      while (1)
      {
        result = (*(*(a1 + 24) + 168))(a2, a3, v12, 0, 1, &v19, &v20);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (v19 <= 0x11 && ((1 << v19) & 0x20210) != 0)
        {
          result = (*(*(a1 + 24) + 168))(a2, a3, v22, 1, 1, &v18 + 2, &v20);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 24) + 168))(a2, a3, v22, 2, 1, &v18, &v20);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (v13 < *(a4 + 48) && HIWORD(v18) == *(*(a4 + 32) + 2 * v13))
          {
            result = (*(*(a1 + 24) + 176))(a2, a3, v22, 5, &__s, &v20);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v15 = *(a6 + 8);
            v16 = cstdlib_strlen(__s);
            *(*(a4 + 64) + 8 * v13) = heap_Calloc(v15, 1, v16 + 1);
            v17 = *(*(a4 + 64) + 8 * v13);
            if (!v17)
            {
              return 2587893770;
            }

            cstdlib_strcpy(v17, __s);
            ++v13;
          }
        }

        result = (*(*(a1 + 24) + 120))(a2, a3, v22, &v22);
        if ((result & 0x80000000) == 0)
        {
          v12 = v22;
          if (v22)
          {
            continue;
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t fe_wmp_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_5[a3];
  v8 = (a2 - 1);
  while (cstdlib_strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

uint64_t fe_wmp_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v15 = -1;
  result = fe_wmp_isFeatureRequired(a2, a3, a4, &v15);
  if (result)
  {
    if (cstdlib_strcmp(a6, ""))
    {
      v10 = cstdlib_strlen(a6);
      v11 = v15;
      if (v10 <= 0x40)
      {
        v13 = *(a5 + 8 * v15);
      }

      else
      {
        v12 = cstdlib_strlen(a6);
        v13 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v11), v12 + 1);
        if (!v13)
        {
          log_OutPublic(*(a1 + 32), "FE_WMP", 37000, 0);
          return 2587893770;
        }

        *(a5 + 8 * v11) = v13;
      }

      v14 = a6;
    }

    else
    {
      v13 = *(a5 + 8 * v15);
      v14 = "=";
    }

    cstdlib_strcpy(v13, v14);
    return 0;
  }

  return result;
}

uint64_t fe_text_analyzer_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2592088065;
  }

  result = 0;
  *a2 = &IFeTextAnalyzer;
  return result;
}

uint64_t fe_text_analyzer_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v102 = *MEMORY[0x277D85DE8];
  v92 = 0;
  v93 = 0;
  v5 = 2592088071;
  v91 = 0;
  memset(v101, 0, sizeof(v101));
  if (!a5)
  {
    return v5;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v93);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v10 = heap_Calloc(*(v93 + 8), 1, 80);
  if (!v10)
  {
    log_OutPublic(*(v93 + 32), "FE_TEXT_ANALYZER", 37000, 0);
    v5 = 2592088074;
    goto LABEL_13;
  }

  v11 = v10;
  *a5 = v10;
  *(a5 + 8) = 62347;
  *(v10 + 32) = 0;
  *(v10 + 72) = 0;
  Object = objc_GetObject(*(v93 + 48), "LINGDB", &v92);
  if ((Object & 0x80000000) != 0 || (*(v11 + 24) = *(v92 + 8), Object = objc_GetObject(*(v93 + 48), "FE_DCTLKP", &v91), (Object & 0x80000000) != 0) || (v13 = v91, *(v11 + 40) = *(v91 + 8), *(v11 + 48) = *(v13 + 16), v14 = v93, *v11 = v93, *(v11 + 8) = a3, *(v11 + 16) = a4, Object = fe_text_analyzer_CreateBrokerString(v14, v101), (Object & 0x80000000) != 0))
  {
    v5 = Object;
LABEL_13:
    fe_text_analyzer_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return v5;
  }

  v16 = *v11;
  v15 = *(v11 + 8);
  v17 = *(v11 + 16);
  *v100 = 0;
  v99 = 0;
  *v98 = 0;
  v97 = 0;
  *__s1 = 0;
  v95 = 0;
  v94 = 0;
  v18 = ssftriff_reader_ObjOpen(v15, v17, 2, v101, "STLE", 5, v100);
  if (v18 < 0 && (v18 & 0x1FFF) != 0x14)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    LODWORD(v23) = 0;
    goto LABEL_102;
  }

  v25 = ssftriff_reader_OpenChunk(*v100, __s1, &v99, v98);
  if ((v25 & 0x80000000) == 0)
  {
    v26 = 0;
    v27 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    while (1)
    {
      if (cstdlib_strcmp(__s1, "LINE"))
      {
        if (!cstdlib_strcmp(__s1, "TOKN"))
        {
          ssftriff_reader_GetChunkData(*v100, v99, &v95, v29);
          v33 = heap_Calloc(*(v16 + 8), 1, 4 * v23);
          v21 = v33;
          if (!v33)
          {
            goto LABEL_90;
          }

          if (v27 >= v23)
          {
            goto LABEL_52;
          }

          v34 = v95;
          v35 = v27;
          do
          {
            *(v33 + 4 * v35) = v34[v35];
            ++v35;
          }

          while (v23 != v35);
LABEL_50:
          v27 = v23;
          goto LABEL_52;
        }

        if (!cstdlib_strcmp(__s1, "TLEN"))
        {
          ssftriff_reader_GetChunkData(*v100, v99, &v95, v30);
          v20 = heap_Calloc(*(v16 + 8), 1, 8 * *v95);
          if (!v20)
          {
LABEL_90:
            log_OutPublic(*(*v11 + 32), "FE_TEXT_ANALYZER", 37000, 0);
            goto LABEL_102;
          }

          ++v26;
          if (v21 && v23)
          {
            v88 = v22;
            v36 = v23;
            v37 = 0;
            v38 = v36;
            v39 = v36;
            do
            {
              v40 = heap_Calloc(*(v16 + 8), 1, 4 * *(v21 + 4 * v37));
              *(v20 + 8 * v37) = v40;
              if (!v40)
              {
                log_OutPublic(*(*v11 + 32), "FE_TEXT_ANALYZER", 37000, 0);
                LODWORD(v23) = v38;
                v22 = v88;
                goto LABEL_102;
              }

              if (*(v21 + 4 * v37))
              {
                v41 = 0;
                v42 = v95;
                do
                {
                  *(v40 + 4 * v41) = v42[(v26 + v41)];
                  ++v41;
                }

                while (v41 < *(v21 + 4 * v37));
                v26 += v41;
              }

              ++v37;
            }

            while (v37 != v39);
            v23 = v38;
            v27 = v38;
            v22 = v88;
            goto LABEL_52;
          }

          goto LABEL_51;
        }

        if (!cstdlib_strcmp(__s1, "LLEN"))
        {
          v19 = heap_Calloc(*(v16 + 8), 1, 4 * v23);
          if (!v19)
          {
            v74 = *(*v11 + 32);
            goto LABEL_103;
          }

          ssftriff_reader_GetChunkData(*v100, v99, &v95, v43);
          if (!v23)
          {
            goto LABEL_51;
          }

          v44 = 0;
          v45 = v95;
          do
          {
            *(v19 + 4 * v44) = v45[v44];
            ++v44;
          }

          while (v23 != v44);
          goto LABEL_50;
        }

        if (!cstdlib_strcmp(__s1, "RULE"))
        {
          v22 = heap_Alloc(*(v16 + 8), 8 * v23);
          if (!v22)
          {
            goto LABEL_90;
          }

          v94 = 0;
          if (v19 && v99)
          {
            v84 = v23;
            v23 = v19;
            v31 = 0;
            v27 = 0;
            do
            {
              v94 = 0;
              v32 = heap_Alloc(*(v16 + 8), (*(v23 + 4 * v27) + 1));
              *(v22 + 8 * v27) = v32;
              if (!v32)
              {
                log_OutPublic(*(*v11 + 32), "FE_TEXT_ANALYZER", 37000, 0);
                v19 = v23;
                LODWORD(v23) = v84;
                goto LABEL_102;
              }

              ssftriff_reader_ReadStringZ(*v100, *v98, v99, v31, 0, &v94);
              ssftriff_reader_ReadStringZ(*v100, *v98, v99, v31, *(v22 + 8 * v27++), &v94);
              v31 += v94;
            }

            while (v31 < v99);
            v19 = v23;
            v23 = v84;
            goto LABEL_52;
          }

LABEL_51:
          v27 = 0;
        }
      }

      else
      {
        ssftriff_reader_GetChunkData(*v100, v99, &v95, v28);
        v23 = *v95;
      }

LABEL_52:
      ssftriff_reader_CloseChunk(*v100);
      v25 = ssftriff_reader_OpenChunk(*v100, __s1, &v99, v98);
      if (v25 < 0)
      {
        goto LABEL_55;
      }
    }
  }

  LODWORD(v23) = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
LABEL_55:
  if ((v25 & 0x1FFF) != 0x14)
  {
    goto LABEL_102;
  }

  v46 = heap_Calloc(*(v16 + 8), 1, 32);
  if (!v46)
  {
    log_OutPublic(*(v16 + 32), "FE_TEXT_ANALYZER", 37000, 0);
    goto LABEL_101;
  }

  v47 = v46;
  *(v46 + 9) = 0;
  *(v46 + 16) = 0;
  v48 = heap_Calloc(*(v16 + 8), 1, 128);
  *v47 = v48;
  if (!v48)
  {
    log_OutPublic(*(v16 + 32), "FE_TEXT_ANALYZER", 37000, 0);
    goto LABEL_98;
  }

  v89 = v22;
  cstdlib_memcpy(v48, "START", 6uLL);
  v49 = heap_Calloc(*(v16 + 8), 1, 128);
  if (!v49)
  {
    log_OutPublic(*(*v11 + 32), "FE_TEXT_ANALYZER", 37000, 0);
    goto LABEL_97;
  }

  v50 = v49;
  v82 = v19;
  v85 = v23;
  if (!v23)
  {
LABEL_87:
    heap_Free(*(v16 + 8), v50);
    *(v11 + 32) = v47;
    v19 = v82;
    LODWORD(v23) = v85;
    v22 = v89;
    goto LABEL_104;
  }

  v51 = 0;
  v52 = v47;
  v90 = v20;
  v83 = v47;
  while (2)
  {
    cstdlib_memset(v50, 0, 0x80uLL);
    cstdlib_memcpy(v50, *(v89 + 8 * v51), **(v20 + 8 * v51));
    v53 = 0;
    v54 = 0;
    v86 = v51;
LABEL_62:
    v87 = v54;
    v56 = v52 + 9;
    v55 = *(v52 + 9);
    if (!*(v52 + 9))
    {
      goto LABEL_73;
    }

    v57 = v53;
    while (2)
    {
      v58 = 0;
      v59 = 0;
      while (1)
      {
        v60 = *(v52[2] + v58);
        if (v60)
        {
          break;
        }

LABEL_68:
        ++v59;
        v58 += 32;
        if (v59 >= v55)
        {
          v53 = v57;
          v20 = v90;
          v51 = v86;
          goto LABEL_73;
        }
      }

      if (cstdlib_strcmp(v60, v50))
      {
        v55 = *v56;
        goto LABEL_68;
      }

      if (v57 < (*(v21 + 4 * v86) - 1))
      {
        v52 = (v52[2] + v58);
        v61 = v87 + *(*(v90 + 8 * v86) + 4 * v57++) + 1;
        ++v53;
        cstdlib_memset(v50, 0, 0x80uLL);
        v87 = v61;
        cstdlib_memcpy(v50, (*(v89 + 8 * v86) + v61), *(*(v90 + 8 * v86) + 4 * v57));
        v56 = v52 + 9;
        v55 = *(v52 + 9);
        if (!*(v52 + 9))
        {
          v51 = v86;
          v56 = v52 + 9;
          v20 = v90;
          goto LABEL_73;
        }

        continue;
      }

      break;
    }

    v53 = v57;
    v51 = v86;
    v20 = v90;
LABEL_73:
    if (v53 == *(v21 + 4 * v51) - 1)
    {
      v72 = heap_Alloc(*(v16 + 8), 128);
      v52[3] = v72;
      if (!v72)
      {
        v73 = *(*v11 + 32);
        goto LABEL_95;
      }

      cstdlib_memcpy(v72, (*(v89 + 8 * v51) + v87), *(*(v20 + 8 * v51) + 4 * v53));
      *(v52[3] + *(*(v20 + 8 * v51) + 4 * v53)) = 0;
      v52 = v83;
LABEL_86:
      ++v51;
      v47 = v83;
      if (v51 == v85)
      {
        goto LABEL_87;
      }

      continue;
    }

    break;
  }

  v62 = (*(*(v20 + 8 * v51) + 4 * v53) + 1);
  if (!*v56)
  {
    v67 = heap_Alloc(*(v16 + 8), 32);
    if (!v67)
    {
      goto LABEL_94;
    }

    v66 = v67;
    *(v67 + 9) = 0;
    *v67 = 0;
    *(v67 + 16) = 0;
    *(v67 + 24) = 0;
    v68 = heap_Alloc(*(v16 + 8), v62);
    *v66 = v68;
    if (!v68)
    {
      log_OutPublic(*(v16 + 32), "FE_TEXT_ANALYZER", 37000, 0);
      heap_Free(*(v16 + 8), v66);
      goto LABEL_96;
    }

    cstdlib_memcpy(v68, v50, v62);
    v52[2] = v66;
LABEL_81:
    v69 = *v56;
    v52 = &v66[4 * v69];
    v51 = v86;
    v70 = *(v20 + 8 * v86);
    *v56 = v69 + 1;
    v71 = v87 + *(v70 + 4 * v53++) + 1;
    cstdlib_memset(v50, 0, 0x80uLL);
    cstdlib_memcpy(v50, (*(v89 + 8 * v51) + v71), *(*(v90 + 8 * v51) + 4 * v53));
    v54 = v71;
    v20 = v90;
    if (v53 >= *(v21 + 4 * v86))
    {
      goto LABEL_86;
    }

    goto LABEL_62;
  }

  v63 = heap_Realloc(*(v16 + 8), v52[2], 32 * *v56 + 32);
  if (v63)
  {
    v52[2] = v63;
    *(v63 + 32 * *v56 + 9) = 0;
    v64 = (v63 + 32 * *v56);
    *v64 = 0;
    v64[2] = 0;
    v64[3] = 0;
    v65 = heap_Alloc(*(v16 + 8), v62);
    *(v52[2] + 32 * *v56) = v65;
    if (v65)
    {
      cstdlib_memcpy(v65, v50, v62);
      v66 = v52[2];
      goto LABEL_81;
    }
  }

LABEL_94:
  v73 = *(v16 + 32);
LABEL_95:
  log_OutPublic(v73, "FE_TEXT_ANALYZER", 37000, 0);
LABEL_96:
  heap_Free(*(v16 + 8), v50);
  v19 = v82;
  v47 = v83;
  LODWORD(v23) = v85;
LABEL_97:
  v22 = v89;
LABEL_98:
  if (*v47)
  {
    heap_Free(*(v16 + 8), *v47);
  }

  heap_Free(*(v16 + 8), v47);
LABEL_101:
  *(v11 + 32) = 0;
LABEL_102:
  v74 = *(v16 + 32);
LABEL_103:
  log_OutPublic(v74, "FE_TEXT_ANALYZER", 37000, 0);
LABEL_104:
  if (*v100)
  {
    ssftriff_reader_ObjClose(*v100);
  }

  if (v22)
  {
    v75 = v20;
    v76 = v23;
    if (v23)
    {
      v77 = v23;
      v78 = v22;
      do
      {
        if (*v78)
        {
          heap_Free(*(v16 + 8), *v78);
          *v78 = 0;
        }

        ++v78;
        --v77;
      }

      while (v77);
    }

    heap_Free(*(v16 + 8), v22);
    v20 = v75;
    LODWORD(v23) = v76;
  }

  if (v20)
  {
    v79 = v20;
    if (v23)
    {
      v80 = v23;
      v81 = v79;
      do
      {
        if (*v81)
        {
          heap_Free(*(v16 + 8), *v81);
          *v81 = 0;
        }

        ++v81;
        --v80;
      }

      while (v80);
    }

    heap_Free(*(v16 + 8), v79);
  }

  if (v19)
  {
    heap_Free(*(v16 + 8), v19);
  }

  if (v21)
  {
    heap_Free(*(v16 + 8), v21);
  }

  return 0;
}

uint64_t fe_text_analyzer_ObjClose(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62347, 80);
  if ((v3 & 0x80000000) != 0)
  {
    return 2592088072;
  }

  v4 = v3;
  if (a1)
  {
    if (a1[3])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[5])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v5 = a1[4];
    if (v5)
    {
      loc_text_analyzer_free_node(*a1, v5);
      v6 = a1[4];
      if (v6)
      {
        heap_Free(*(*a1 + 8), v6);
      }

      a1[4] = 0;
    }

    heap_Free(*(*a1 + 8), a1);
  }

  return v4;
}

uint64_t fe_text_analyzer_ObjReopen(uint64_t *a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = 2592088070;
  memset(v5, 0, sizeof(v5));
  if ((safeh_HandleCheck(a1, a2, 62347, 80) & 0x80000000) != 0)
  {
    return 2592088072;
  }

  if (a1)
  {
    return fe_text_analyzer_CreateBrokerString(*a1, v5);
  }

  return v3;
}

uint64_t fe_text_analyzer_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62347, 80);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2592088072;
  }
}

uint64_t fe_text_analyzer_Process(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v63 = *MEMORY[0x277D85DE8];
  __s = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v57 = 0;
  __c_3 = 0;
  __c_1 = 0;
  __c = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  memset(__dst, 0, sizeof(__dst));
  *(a1 + 16) = 0;
  *a5 = 1;
  log_OutText(*(*a1 + 32), "FE_TEXT_ANALYZER", 5, 0, "[FE_TEXT_ANALYZER]: Entering");
  *(a1 + 16) = 0;
  if (((*(a1[5] + 96))(a1[6], a1[7], "fecfg", "fetext_act_text_analyzer", &__c_3, &__c_1, &__c) & 0x80000000) == 0 && __c_1)
  {
    v8 = cstdlib_strchr(*__c_3, __c);
    if (v8)
    {
      *v8 = 0;
    }

    if (!cstdlib_strcmp(*__c_3, "yes"))
    {
      *(a1 + 16) = 1;
    }
  }

  __c_1 = 0;
  v9 = (*(a1[5] + 96))(a1[6], a1[7], "fecfg", "fetext_trigger", &__c_3, &__c_1, &__c);
  v10 = 0;
  if ((v9 & 0x80000000) == 0 && __c_1)
  {
    v11 = v9;
    v12 = cstdlib_strchr(*__c_3, __c);
    if (v12)
    {
      *v12 = 0;
    }

    v13 = *__c_3;
    v14 = cstdlib_strlen(*__c_3);
    cstdlib_memcpy(__dst, v13, v14);
    v10 = v11;
  }

  if (!*(a1 + 16))
  {
    return v10;
  }

  v15 = a1[4];
  if (!v15)
  {
    return v10;
  }

  v10 = (*(a1[3] + 104))(a3, a4, 1, 0, &v60 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (((*(a1[3] + 184))(a3, a4, HIWORD(v60), 0, &v57) & 0x80000000) != 0)
  {
    return v10;
  }

  if (v57 != 1)
  {
    return v10;
  }

  v10 = (*(a1[3] + 176))(a3, a4, HIWORD(v60), 0, &__s, &v59 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (HIWORD(v59) < 2u)
  {
    return v10;
  }

  if (!cstdlib_strlen(__s))
  {
    return v10;
  }

  v10 = (*(a1[3] + 176))(a3, a4, HIWORD(v60), 1, &v58, &v57 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v16 = HIWORD(v57);
  if (!HIWORD(v57))
  {
    return v10;
  }

  v17 = 0;
  v18 = 0;
  while (*(v58 + v17) != 60)
  {
LABEL_26:
    ++v18;
    v17 += 32;
    if (v18 >= v16)
    {
      return v10;
    }
  }

  if (cstdlib_strcmp(*(v58 + v17 + 24), __dst))
  {
    v16 = HIWORD(v57);
    goto LABEL_26;
  }

  v10 = (*(a1[3] + 104))(a3, a4, 2, HIWORD(v60), &v60);
  if ((v10 & 0x80000000) == 0)
  {
    v48 = heap_Calloc(*(*a1 + 8), 1, 32);
    if (v48)
    {
      v20 = v60;
      if (v60)
      {
        v21 = 0;
        v46 = 0;
        v22 = -1;
        v23 = v48;
        while (1)
        {
          v24 = (*(a1[3] + 168))(a3, a4, v20, 0, 1, &v52 + 4, &v59 + 2);
          if ((v24 & 0x80000000) != 0)
          {
            break;
          }

          v24 = (*(a1[3] + 168))(a3, a4, v60, 1, 1, &v52, &v59 + 2);
          if ((v24 & 0x80000000) != 0)
          {
            break;
          }

          v24 = (*(a1[3] + 168))(a3, a4, v60, 2, 1, &v51, &v59 + 2);
          if ((v24 & 0x80000000) != 0)
          {
            break;
          }

          if ((HIDWORD(v52) == 9 || HIDWORD(v52) == 4) && (v52 > v21 || v22 == -1))
          {
            v24 = (*(a1[3] + 176))(a3, a4, v60, 5, &v50, &v59 + 2);
            if ((v24 & 0x80000000) != 0)
            {
              break;
            }

            if (v22 == -1)
            {
              v22 = v60;
            }

            v25 = heap_Calloc(*(*a1 + 8), 1, (v51 - v52 + 1));
            *v23 = v25;
            if (!v25)
            {
              goto LABEL_66;
            }

            cstdlib_memcpy(v25, &__s[v52], (v51 - v52));
            *(*v23 + (v51 - v52)) = 0;
            v26 = *(*a1 + 8);
            v27 = cstdlib_strlen(v50);
            v28 = heap_Calloc(v26, 1, v27 + 1);
            *(v23 + 8) = v28;
            if (!v28)
            {
              goto LABEL_66;
            }

            v29 = v28;
            v30 = v50;
            v31 = cstdlib_strlen(v50);
            cstdlib_memcpy(v29, v30, v31);
            v32 = *(v23 + 8);
            *(v32 + cstdlib_strlen(v50)) = 0;
            v33 = heap_Calloc(*(*a1 + 8), 1, 32);
            *(v23 + 24) = v33;
            if (!v33)
            {
              goto LABEL_66;
            }

            *(v23 + 16) = v46;
            v21 = v52;
            ++v46;
            v23 = v33;
          }

          v10 = (*(a1[3] + 120))(a3, a4, v60, &v60);
          if ((v10 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          v20 = v60;
          if (!v60)
          {
            goto LABEL_48;
          }
        }

        v10 = v24;
LABEL_67:
        v39 = 0;
      }

      else
      {
LABEL_48:
        v34 = heap_Calloc(*(*a1 + 8), 1, 128);
        v49 = v34;
        if (!v34)
        {
LABEL_66:
          v10 = 2592088074;
          log_OutPublic(*(*a1 + 32), "FE_TEXT_ANALYZER", 37000, 0);
          goto LABEL_67;
        }

        v47 = v34;
        v35 = 0;
        v36 = 0;
        v37 = 1;
        v38 = v48;
        do
        {
          if (loc_match_against_rules(v38, &v53, v15, &v49, v37) && *(v53 + 16) - *(v38 + 16) > v35)
          {
            v35 = *(v53 + 16) - *(v38 + 16);
            v36 = 1;
          }

          v37 = 0;
          v38 = *(v38 + 24);
        }

        while (v38);
        v39 = 0;
        if (v17 && v36 == 1)
        {
          v40 = heap_Calloc(*(*a1 + 8), 1, 32 * HIWORD(v57));
          v39 = v40;
          if (v40)
          {
            if (HIWORD(v57))
            {
              v41 = 0;
              v42 = v40 + v17;
              v43 = 32 * HIWORD(v57);
              do
              {
                if (v18)
                {
                  v44 = (v40 + v41);
                  v45 = *(v58 + v41 + 16);
                  *v44 = *(v58 + v41);
                  v44[1] = v45;
                }

                else
                {
                  *v42 = 60;
                  *(v42 + 4) = *(v58 + v17 + 4);
                  *(v42 + 24) = v47;
                }

                v41 += 32;
                --v18;
              }

              while (v43 != v41);
            }

            v10 = (*(a1[3] + 160))(a3, a4, HIWORD(v60), 1);
          }

          else
          {
            v10 = 2592088074;
            log_OutPublic(*(*a1 + 32), "FE_TEXT_ANALYZER", 37000, 0);
          }
        }
      }

      loc_text_analyzer_free_orth(*a1, v48);
      heap_Free(*(*a1 + 8), v48);
      if (v49)
      {
        heap_Free(*(*a1 + 8), v49);
      }

      if (v39)
      {
        heap_Free(*(*a1 + 8), v39);
      }
    }

    else
    {
      v10 = 2592088074;
      log_OutPublic(*(*a1 + 32), "FE_TEXT_ANALYZER", 37000, 0);
    }
  }

  return v10;
}

uint64_t fe_text_analyzer_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62347, 80);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2592088072;
  }
}

uint64_t fe_text_analyzer_CreateBrokerString(uint64_t a1, _BYTE *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = 0;
  __s2 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__s1 = 0u;
  v8 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v5);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "text_analyzer_rules_");
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v5);
      return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, a2, 0x100uLL);
    }
  }

  return result;
}

void *loc_text_analyzer_free_node(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (v4)
    {
      result = heap_Free(result[1], v4);
      *a2 = 0;
    }

    v5 = *(a2 + 24);
    if (v5)
    {
      result = heap_Free(v3[1], v5);
      *(a2 + 24) = 0;
    }

    if (*(a2 + 9))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        result = loc_text_analyzer_free_node(v3, *(a2 + 16) + v6);
        ++v7;
        v6 += 32;
      }

      while (v7 < *(a2 + 9));
    }

    v8 = *(a2 + 16);
    if (v8)
    {
      result = heap_Free(v3[1], v8);
    }

    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t loc_match_against_rules(uint64_t a1, void *a2, uint64_t a3, char **a4, int a5)
{
  v21 = 0;
  v7 = a5 == 1;
  while (*(a3 + 9))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
LABEL_4:
    v22 = v11;
    v12 = 32 * v8;
    do
    {
      v13 = *(a3 + 16);
      v14 = cstdlib_strstr(*(v13 + v12), ":");
      if (v14)
      {
        v9 = v14 + 1;
        v10 = *(v13 + v12);
      }

      if (!v10)
      {
        v15 = *a1;
        if (!*a1)
        {
          goto LABEL_23;
        }

        v16 = *(*(a3 + 16) + v12);
        if (!v16)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }

      if (cstdlib_strstr(v10, "POS:") && (v15 = *(a1 + 8)) != 0 || v7 && cstdlib_strstr(v10, "BEG:") && (v15 = *a1) != 0)
      {
        v16 = v9;
LABEL_16:
        if (!cstdlib_strcmp(v16, v15))
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

      if (cstdlib_strstr(v10, "NOT:") && *a1)
      {
        if (cstdlib_strcmp(v9, *a1))
        {
LABEL_29:
          v21 = *(a3 + 16) + v12;
          goto LABEL_30;
        }
      }

      else if (cstdlib_strstr(v10, "ELIP:"))
      {
        v11 = 0;
        v21 = *(a3 + 16) + v12;
        if (++v8 < *(a3 + 9))
        {
          goto LABEL_4;
        }

        goto LABEL_30;
      }

LABEL_23:
      ++v8;
      v12 += 32;
    }

    while (v8 < *(a3 + 9));
    if (v22)
    {
      return 0;
    }

LABEL_30:
    a1 = *(a1 + 24);
    if (!a1)
    {
      return 0;
    }

    v7 = 0;
    a3 = v21;
    v17 = *(v21 + 24);
    if (v17)
    {
      cstdlib_strcpy(*a4, v17);
      *a2 = a1;
      return 1;
    }
  }

  return 0;
}

void *loc_text_analyzer_free_orth(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (v4)
    {
      heap_Free(result[1], v4);
    }

    v5 = a2[1];
    if (v5)
    {
      heap_Free(v3[1], v5);
    }

    result = loc_text_analyzer_free_orth(v3, a2[3]);
    v6 = a2[3];
    if (v6)
    {
      result = heap_Free(v3[1], v6);
    }

    a2[3] = 0;
  }

  return result;
}

uint64_t lidword_Identify(uint64_t a1, const void *a2, unsigned int a3, uint64_t *a4, uint64_t a5, unsigned int *a6, uint64_t *a7, unsigned int *a8, unsigned int *a9)
{
  v232[64] = *MEMORY[0x277D85DE8];
  inserted = 2345672714;
  v219 = 0;
  v217 = 0;
  if (!a1)
  {
    return 2345672711;
  }

  if (!*(a1 + 1924))
  {
    return 0;
  }

  v18 = *(a1 + 2044);
  v19 = *(*(a1 + 16) + 8);
  if (v18 == 1)
  {
    v20 = (2 * a3) | 1;
  }

  else
  {
    v20 = a3 + 1;
  }

  v21 = heap_Calloc(v19, 1, v20);
  if (!v21)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
    return inserted;
  }

  v22 = v21;
  cstdlib_memcpy(v21, a2, a3);
  v22[a3] = 0;
  if (*(*a4 + 16) < cstdlib_strlen(v22))
  {
    goto LABEL_8;
  }

  if (*a6 < 2)
  {
LABEL_23:
    v210 = a5;
    v204 = a7;
    v205 = a8;
    v202 = a2;
    if (*(a1 + 2044) != 1 || cstdlib_strlen(v22) == 1)
    {
LABEL_25:
      memset(v216, 0, 30);
      v28 = cstdlib_strlen(v22);
      v23 = lidword_normalizedDup(a1, v22, v28, v216, 1);
      if (!v23)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
        goto LABEL_9;
      }

      v29 = cstdlib_strlen(v22);
      v24 = lidword_normalizedDup(a1, v22, v29, v216, 0);
      if (!v24)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
        goto LABEL_10;
      }

      lidword_InitStruct(a1);
      v199 = v22;
      lidword_CheckTags(a1, v22, a4, a6);
      v201 = v23;
      v220 = v23;
      lidword_AdvanceSkippingSpacesInNormSW(&v220, &v219);
      v218 = v24;
      lidword_AdvanceSkippingSpacesInNormSW(&v218, &v217);
      v30 = v219;
      v31 = v220;
      v200 = a6;
      v198 = a4;
      v203 = v24;
      v32 = 0;
      if (v219 == v220)
      {
LABEL_252:
        v32 = v32;
        v22 = v199;
        lidword_ExtractFeats(a1, v199, v32);
        v218 = v24;
        lidword_AdvanceSkippingSpacesInNormSW(&v218, &v217);
        v116 = v217;
        v117 = v218;
        v118 = v210;
        v23 = v201;
        if (v217 != v218)
        {
          v119 = 0;
          v120 = a1 + 134160;
          __sa = (a1 + 3088);
          v197 = v32;
          do
          {
            if (!*v117 || v119 > 0xFF)
            {
              break;
            }

            if (*(v120 + 4 * v119) == -1)
            {
              if (*(a1 + 2050))
              {
                *(v120 + 4 * v119) = *(a1 + 1932);
              }

              else
              {
                v121 = *(a1 + 2026) + *(a1 + 2030) * *(a1 + 1928) + 3;
                v122 = *v116;
                *v116 = 0;
                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID NN fallback: %s", v117);
                *v116 = v122;
                v123 = *(a1 + 2024) * v121;
                v124 = heap_Alloc(*(*(a1 + 16) + 8), 4 * v123);
                v232[0] = v124;
                if (!v124)
                {
                  v138 = *(a1 + 16);
                  goto LABEL_369;
                }

                v125 = v124;
                v195 = v121;
                if (v123)
                {
                  memset_pattern16(v124, &unk_26ECDA830, 4 * v123);
                }

                v229[0] = 0;
                v212 = *(a1 + 2024);
                a6 = v200;
                v126 = __sa;
                if (*(a1 + 2016))
                {
LABEL_263:
                  v127 = 0;
                  v128 = (v116 - v117);
                  v129 = a1 + 135168;
                  if (v116 != v117 && v212)
                  {
                    v130 = 0;
                    v131 = 0;
                    do
                    {
                      v132 = &v117[v131];
                      v133 = v117;
                      v134 = v128;
                      v135 = Utf8_LengthInBytes(v132, 1);
                      cstdlib_strncpy(*(*(a1 + 2016) + 8 * v130), v132, v135);
                      v128 = v134;
                      v117 = v133;
                      v136 = *(*(a1 + 2016) + 8 * v130++);
                      *(v136 + v135) = 0;
                      v131 += v135;
                    }

                    while (v128 > v131 && v130 < v212);
                    v127 = v130;
                    a6 = v200;
                    v129 = a1 + 135168;
                    v126 = __sa;
                  }
                }

                else
                {
                  v138 = *(a1 + 16);
                  v139 = heap_Calloc(*(v138 + 8), 1, (8 * v212) | 1);
                  *(a1 + 2016) = v139;
                  if (!v139)
                  {
                    goto LABEL_369;
                  }

                  if (v212)
                  {
                    v140 = 0;
                    while (1)
                    {
                      *(*(a1 + 2016) + v140) = heap_Calloc(*(v138 + 8), 1, 5);
                      if (!*(*(a1 + 2016) + v140))
                      {
                        break;
                      }

                      v140 += 8;
                      if (8 * v212 == v140)
                      {
                        goto LABEL_263;
                      }
                    }

LABEL_369:
                    log_OutPublic(*(v138 + 32), "FE_LID", 48000, 0);
                    v144 = 2345672714;
LABEL_370:
                    inserted = v144;
                    goto LABEL_371;
                  }

                  v127 = 0;
                  v129 = a1 + 135168;
                }

                if (!*(a1 + 1960) || (v141 = *(v129 + 784)) == 0)
                {
LABEL_364:
                  v144 = 2345672704;
                  goto LABEL_370;
                }

                if (v127)
                {
                  v142 = 0;
                  v143 = v127;
                  v32 = v197;
                  do
                  {
                    v144 = (*(*(a1 + 1960) + 56))(*(a1 + 1984), *(a1 + 1992), *(*(a1 + 2016) + 8 * v142), *(a1 + 2008));
                    if ((v144 & 0x1FFF) == 0x14)
                    {
                      if (((*(*(a1 + 1960) + 56))(*(a1 + 1984), *(a1 + 1992), "$MEANC2V$", *(a1 + 2008)) & 0x1FFF) == 0x14)
                      {
                        goto LABEL_364;
                      }
                    }

                    else if ((v144 & 0x80000000) != 0)
                    {
                      goto LABEL_370;
                    }

                    cstdlib_memcpy(&v125[v142 * v195], *(a1 + 2008), 4 * *(a1 + 2026));
                    v146 = v142 * v195 + *(a1 + 2026);
                    v147 = *(a1 + 2030);
                    if (*(a1 + 2030))
                    {
                      v148 = 0;
                      v149 = *(a1 + 1928);
                      v150 = v126;
                      do
                      {
                        if (v149)
                        {
                          v151 = *(a1 + 2028);
                          v153 = v148 + v119 < v151 || v148 + v119 >= v151 + v197;
                          v154 = &v150[-512 * v151];
                          v155 = v146;
                          v156 = v149;
                          do
                          {
                            v145 = -1.0;
                            if (!v153)
                            {
                              v145 = *v154;
                            }

                            v125[v155++] = v145;
                            ++v154;
                            --v156;
                          }

                          while (v156);
                        }

                        v146 += v149;
                        ++v148;
                        v150 += 512;
                      }

                      while (v148 != v147);
                    }

                    LOBYTE(v145) = *(a1 + 135440 + v119);
                    v157 = LODWORD(v145);
                    v125[v146] = v157;
                    LOBYTE(v157) = *(a1 + 135696 + v119);
                    v158 = LODWORD(v157);
                    v125[v146 + 1] = v158;
                    LOBYTE(v158) = *(a1 + 135184 + v119);
                    v125[v146 + 2] = LODWORD(v158);
                    ++v142;
                  }

                  while (v142 != v143);
                  v141 = *(a1 + 135952);
                  a6 = v200;
                }

                else
                {
                  v32 = v197;
                }

                v144 = fi_predict(v141, v232, *(a1 + 2024), v229);
                v118 = v210;
                if ((v144 & 0x80000000) != 0)
                {
                  goto LABEL_370;
                }

                v160 = *(a1 + 1928);
                if (*(a1 + 1928))
                {
                  v161 = 0;
                  do
                  {
                    v162 = *&__sa[v161];
                    if (v162)
                    {
                      v163 = 1;
                    }

                    else
                    {
                      v163 = 4 * v160 - 4 == v161;
                    }

                    v161 += 4;
                  }

                  while (!v163);
                  v164 = 0;
                  v165 = 0;
                  v166 = 0.0;
                  v22 = v199;
                  v23 = v201;
                  do
                  {
                    v167 = v166;
                    v168 = v165;
                    v166 = *(v229[0] + 4 * v164);
                    if (v167 < v166)
                    {
                      LODWORD(v159) = *(v229[0] + 4 * v164);
                    }

                    else
                    {
                      *&v159 = v167;
                    }

                    if (v167 < v166)
                    {
                      v165 = v164;
                    }

                    else
                    {
                      v165 = v165;
                    }

                    if (v162 && v167 < v166)
                    {
                      v165 = v164;
                      if (!*&__sa[4 * v164])
                      {
                        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID prune out NN predictions if languages not in the LID1.0 destination field", v159);
                        LODWORD(v160) = *(a1 + 1928);
                        v166 = v167;
                        v165 = v168;
                      }
                    }

                    else
                    {
                      v166 = *&v159;
                    }

                    ++v164;
                  }

                  while (v164 < v160);
                  v169 = v165;
                  if (v160)
                  {
                    v213 = v165;
                    v170 = 0;
                    v171 = 0;
                    v172 = v165;
                    do
                    {
                      if (v172 == v171)
                      {
                        v173 = "<-- selected";
                      }

                      else
                      {
                        v173 = "";
                      }

                      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID [%3d] %1.5lf : %s %s", v171, *(v229[0] + 4 * v171), (*(a1 + 1936) + v170), v173);
                      ++v171;
                      v170 += 8;
                    }

                    while (v171 < *(a1 + 1928));
                    v118 = v210;
                    v23 = v201;
                    v32 = v197;
                    v169 = v213;
                  }

                  else
                  {
                    v118 = v210;
                    v32 = v197;
                  }
                }

                else
                {
                  v169 = 0;
                  v166 = 0.0;
                  v22 = v199;
                  v23 = v201;
                }

                v174 = *(a1 + 2036);
                if (v166 <= v174 && v169 != *(a1 + 1930))
                {
                  v175 = *(a1 + 2032);
                  v176 = *(*(a1 + 16) + 32);
                  if (v166 <= v175)
                  {
                    log_OutText(v176, "FE_LID", 5, 0, "ML2 LID NN thresholding set to %f triggered: falling back on main language", v175);
                    v169 = *(a1 + 1930);
                  }

                  else
                  {
                    log_OutText(v176, "FE_LID", 5, 0, "ML2 LID NN thresholding set to %f triggered: falling back on language smoothing", v174);
                    v169 = -3;
                  }
                }

                *(a1 + 134160 + 4 * v119) = v169;
                v120 = a1 + 134160;
              }
            }

            lidword_AdvanceSkippingSpacesInNormEW(&v218, &v217);
            ++v119;
            v116 = v217;
            v117 = v218;
            __sa += 512;
          }

          while (v217 != v218);
        }

        lidword_Smoothing(a1, v32);
        inserted = lidword_InsertLangTags(a1, v22, v198, v118, a6, v32, v204, v205, a9);
        if (*(a1 + 2044) == 1)
        {
          lidword_AdjustMarkersAtSpacesAroundAscii(v22, v202, v198, a6);
        }

LABEL_372:
        v24 = v203;
        goto LABEL_10;
      }

      v33 = a1 + 134160;
      v196 = a1 + 3088;
      v211 = a1 + 134160;
      while (1)
      {
        if (!*v31 || v32 > 0xFFu)
        {
          goto LABEL_252;
        }

        if (*(v33 + 4 * v32) == -4)
        {
          v34 = 1;
          goto LABEL_251;
        }

        v209 = v32;
        v36 = v217;
        v35 = v218;
        v225[0] = 0;
        v225[1] = 0;
        *(v226 + 6) = 0;
        v226[0] = 0;
        v206 = *(a1 + 1088);
        v224 = 0;
        v223 = 0;
        v222 = 0;
        v221 = 0;
        v229[0] = 0;
        *&__c[1] = 0;
        __c[0] = 0;
        v37 = *v217;
        *v217 = 0;
        LOWORD(v227) = 1;
        __s = v35;
        Langs = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "ml2mw");
        if ((Langs & 0x80000000) != 0)
        {
          goto LABEL_366;
        }

        v208 = v32;
        if (v227)
        {
          v39 = 0;
          do
          {
            *(v232 + v39) = LH_atou(*(v229[0] + 8 * v39));
            ++v39;
          }

          while (v39 < v227);
          ssft_qsort(v232, v227, 1, compare_2);
          if (v227)
          {
            v40 = 0;
            while (1)
            {
              *v217 = v37;
              v41 = __s;
              if (*__s)
              {
                v41 = __s;
                do
                {
                  v42 = cstdlib_strlen(v41);
                  if (utf8_BelongsToSet(0, v41, 0, v42))
                  {
                    break;
                  }

                  v41 += Utf8_LengthInBytes(v41, 1);
                }

                while (*v41);
              }

              *&__c[3] = v41;
              v43 = *v41;
              v44 = *(v232 + v40);
              if (*v41 && v44 >= 2)
              {
                v45 = 1;
                do
                {
                  lidword_AdvanceToEndMultiword(&__c[3]);
                  ++v45;
                  v41 = *&__c[3];
                  v43 = **&__c[3];
                  v44 = *(v232 + v40);
                }

                while (**&__c[3] && v44 > v45);
              }

              else
              {
                v45 = 1;
              }

              if (v44 == v45)
              {
                *v41 = 0;
                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID multi word case-sensitive lookup : %s", __s);
                *&__c[1] = 1;
                Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", __s, v229, &__c[1], __c, *(a1 + 2040));
                if ((Langs & 0x80000000) != 0)
                {
                  goto LABEL_366;
                }

                *v41 = v43;
                if (*&__c[1] == 1)
                {
                  break;
                }
              }

              if (++v40 >= v227)
              {
                v36 = v217;
                goto LABEL_55;
              }
            }

            if (cstdlib_strcmp(*v229[0], "all"))
            {
              if (*(a1 + 1928))
              {
                v73 = 0;
                do
                {
                  if (!cstdlib_strcmp((*(a1 + 1936) + 8 * v73), *v229[0]))
                  {
                    break;
                  }

                  ++v73;
                }

                while (*(a1 + 1928) > v73);
              }

              else
              {
                v73 = 0;
              }
            }

            else
            {
              v73 = -3;
            }

            v34 = *(v232 + v40);
            if (*(v232 + v40))
            {
              v79 = (v196 + (v209 << 9) + 4 * v73);
              v80 = (v211 + 4 * v209);
              v81 = *(v232 + v40);
              do
              {
                if ((v73 & 0x8000) == 0)
                {
                  *v79 = 1;
                }

                *v80++ = v73;
                v79 += 128;
                --v81;
              }

              while (v81);
            }

            v82 = *(*(a1 + 16) + 32);
            if (v73 < 0)
            {
              log_OutText(v82, "FE_LID", 5, 0, "ML2 LID found ambiguously in ML2 lexicon");
            }

            else
            {
              log_OutText(v82, "FE_LID", 5, 0, "ML2 LID found unambiguously in ML2 lexicon: %s");
            }

            v30 = v219;
            if (*v219 && *(v232 + v40) >= 2u)
            {
              v83 = 1;
              do
              {
                lidword_AdvanceToEndMultiword(&v219);
                v30 = v219;
                if (!*v219)
                {
                  break;
                }

                ++v83;
              }

              while (v83 < *(v232 + v40));
            }

            v217 = v41;
            v32 = v208;
            if (v34 > 1)
            {
LABEL_179:
              a6 = v200;
              v24 = v203;
              goto LABEL_251;
            }
          }

          else
          {
LABEL_55:
            *v36 = v37;
            if ((Langs & 0x80000000) != 0)
            {
              goto LABEL_366;
            }

            v30 = v219;
          }
        }

        else
        {
          *v36 = v37;
        }

        v229[0] = 0;
        *&__c[1] = 0;
        __c[0] = 0;
        v46 = *v30;
        *v30 = 0;
        LOWORD(v227) = 1;
        Langs = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "ml2mw", v31, v229, &v227, __c);
        if ((Langs & 0x80000000) != 0)
        {
          goto LABEL_366;
        }

        if (v227)
        {
          v47 = 0;
          do
          {
            *(v232 + v47) = LH_atou(*(v229[0] + 8 * v47));
            ++v47;
          }

          while (v47 < v227);
          ssft_qsort(v232, v227, 1, compare_2);
          if (v227)
          {
            v48 = 0;
            while (1)
            {
              *v219 = v46;
              v49 = v31;
              if (*v31)
              {
                v49 = v31;
                do
                {
                  v50 = cstdlib_strlen(v49);
                  if (utf8_BelongsToSet(0, v49, 0, v50))
                  {
                    break;
                  }

                  v49 += Utf8_LengthInBytes(v49, 1);
                }

                while (*v49);
              }

              *&__c[3] = v49;
              v51 = *v49;
              v52 = *(v232 + v48);
              if (*v49 && v52 >= 2)
              {
                v53 = 1;
                do
                {
                  lidword_AdvanceToEndMultiword(&__c[3]);
                  ++v53;
                  v49 = *&__c[3];
                  v51 = **&__c[3];
                  v52 = *(v232 + v48);
                }

                while (**&__c[3] && v52 > v53);
              }

              else
              {
                v53 = 1;
              }

              if (v52 == v53)
              {
                *v49 = 0;
                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID multi word lookup : %s", v31);
                *&__c[1] = 1;
                Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", v31, v229, &__c[1], __c, *(a1 + 2040));
                if ((Langs & 0x80000000) != 0)
                {
                  goto LABEL_366;
                }

                *v49 = v51;
                if (*&__c[1] == 1)
                {
                  break;
                }
              }

              if (++v48 >= v227)
              {
                goto LABEL_79;
              }
            }

            if (cstdlib_strcmp(*v229[0], "all"))
            {
              if (*(a1 + 1928))
              {
                v74 = 0;
                do
                {
                  if (!cstdlib_strcmp((*(a1 + 1936) + 8 * v74), *v229[0]))
                  {
                    break;
                  }

                  ++v74;
                }

                while (*(a1 + 1928) > v74);
              }

              else
              {
                v74 = 0;
              }
            }

            else
            {
              v74 = -3;
            }

            v84 = *(v232 + v48);
            if (*(v232 + v48))
            {
              v85 = (v196 + (v209 << 9) + 4 * v74);
              v86 = (v211 + 4 * v209);
              v87 = *(v232 + v48);
              do
              {
                if ((v74 & 0x8000) == 0)
                {
                  *v85 = 1;
                }

                *v86++ = v74;
                v85 += 128;
                --v87;
              }

              while (v87);
            }

            v88 = *(*(a1 + 16) + 32);
            if (v74 < 0)
            {
              log_OutText(v88, "FE_LID", 5, 0, "ML2 LID found ambiguously in ML2 lexicon");
            }

            else
            {
              log_OutText(v88, "FE_LID", 5, 0, "ML2 LID found unambiguously in ML2 lexicon: %s");
            }

            if (*v217)
            {
              v89 = 1;
              do
              {
                if (v89 >= *(v232 + v48))
                {
                  break;
                }

                lidword_AdvanceToEndMultiword(&v217);
                ++v89;
              }

              while (*v217);
            }

            v219 = v49;
            v34 = v84;
            v32 = v208;
            if (v84 > 1)
            {
              goto LABEL_179;
            }
          }

          else
          {
LABEL_79:
            v49 = v219;
            *v219 = v46;
            if ((Langs & 0x80000000) != 0)
            {
              goto LABEL_366;
            }
          }
        }

        else
        {
          v49 = v219;
          *v219 = v46;
        }

        v54 = *v49;
        *v49 = 0;
        HIWORD(v223) = 0;
        v55 = (*(*(a1 + 64) + 120))(*(a1 + 48), *(a1 + 56), v31, 20, "femwtn", "", &v224, &v223 + 2);
        if ((v55 & 0x80000000) != 0)
        {
          Langs = v55;
LABEL_366:
          inserted = Langs;
LABEL_371:
          v22 = v199;
          v23 = v201;
          goto LABEL_372;
        }

        if (HIWORD(v223))
        {
          v56 = 0;
          do
          {
            v231[v56] = LH_atou(*(v224 + 8 * v56));
            ++v56;
          }

          while (v56 < HIWORD(v223));
          ssft_qsort(v231, HIWORD(v223), 1, compare_2);
          if (HIWORD(v223))
          {
            v57 = 0;
            while (1)
            {
              *v219 = v54;
              v58 = v31;
              if (*v31)
              {
                v58 = v31;
                do
                {
                  v59 = cstdlib_strlen(v58);
                  if (utf8_BelongsToSet(0, v58, 0, v59))
                  {
                    break;
                  }

                  v58 += Utf8_LengthInBytes(v58, 1);
                }

                while (*v58);
              }

              v221 = v58;
              v60 = *v58;
              v61 = v231[v57];
              if (*v58 && v61 >= 2)
              {
                v62 = 1;
                do
                {
                  lidword_AdvanceToEndMultiword(&v221);
                  ++v62;
                  v58 = v221;
                  v60 = *v221;
                  v61 = v231[v57];
                }

                while (*v221 && v61 > v62);
              }

              else
              {
                v62 = 1;
              }

              if (v61 == v62)
              {
                *v58 = 0;
                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID TN multi word lookup : %s", v31);
                LOWORD(v223) = 0;
                Langs = (*(*(a1 + 64) + 240))(*(a1 + 48), *(a1 + 56), "tn", v31, &v224, &v223, &v222, *(a1 + 135960), 0);
                if ((Langs & 0x80000000) != 0)
                {
                  goto LABEL_366;
                }

                *v58 = v60;
                if (v223 == 1)
                {
                  break;
                }
              }

              if (++v57 >= HIWORD(v223))
              {
                goto LABEL_103;
              }
            }

            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID TN multi word : %s", v31);
            if (v231[v57])
            {
              v75 = 0;
              v194 = v219;
              v76 = (v196 + (v209 << 9));
              while (1)
              {
                *(v211 + 4 * v209 + 4 * v75) = -3;
                Langs = calcWScore(a1, v31, "merwfrq_latn", 1, *(v206 + 8), v76, v225);
                if ((Langs & 0x80000000) != 0)
                {
                  goto LABEL_366;
                }

                *v194 = v54;
                calcWPenalties(a1, (v209 + v75++), 0);
                v76 += 512;
                if (v75 >= v231[v57])
                {
                  v77 = v231[v57];
                  goto LABEL_144;
                }
              }
            }

            v77 = 0;
LABEL_144:
            v32 = v208;
            if (*v217)
            {
              v78 = 1;
              do
              {
                if (v78 >= v231[v57])
                {
                  break;
                }

                lidword_AdvanceToEndMultiword(&v217);
                ++v78;
              }

              while (*v217);
            }

            v219 = v58;
            a6 = v200;
            v24 = v203;
            v34 = v77;
            goto LABEL_250;
          }
        }

LABEL_103:
        v63 = v219;
        *v219 = v54;
        v64 = v217;
        v229[0] = 0;
        v229[1] = 0;
        *(v230 + 6) = 0;
        v230[0] = 0;
        v65 = *(a1 + 1088);
        *&__c[3] = 0;
        __c[0] = 0;
        v66 = *v63;
        v67 = *v217;
        v227 = 0;
        *v63 = 0;
        *v64 = 0;
        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID word lookup : %s", v31);
        *&__c[1] = 1;
        Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", __s, &__c[3], &__c[1], __c, *(a1 + 2040));
        if ((Langs & 0x80000000) != 0)
        {
          goto LABEL_248;
        }

        v193 = v66;
        v207 = v67;
        a6 = v200;
        v24 = v203;
        if (!*&__c[1])
        {
          if (cstdlib_strcmp(v31, __s))
          {
            *&__c[1] = 1;
            Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", v31, &__c[3], &__c[1], __c, *(a1 + 2040));
            if ((Langs & 0x80000000) != 0)
            {
              goto LABEL_249;
            }
          }

          if (!*&__c[1])
          {
            break;
          }
        }

        v68 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v68)
        {
          *v68 = 0;
        }

        if (cstdlib_strcmp(**&__c[3], "all"))
        {
          v69 = *(a1 + 1928);
          if (*(a1 + 1928))
          {
            v70 = v63;
            v71 = 0;
            v72 = 0;
            do
            {
              if (!cstdlib_strcmp((*(a1 + 1936) + v71), **&__c[3]))
              {
                break;
              }

              ++v72;
              v71 += 8;
            }

            while (v72 < *(a1 + 1928));
            v69 = v72;
            v63 = v70;
          }

          *(v196 + (v209 << 9) + 4 * v69) = 1;
          *(v211 + 4 * v209) = v69;
          log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID found unambiguously in ML2 lexicon: %s", (*(a1 + 1944) + 8 * v69));
          *v63 = v193;
          *v64 = v207;
          goto LABEL_249;
        }

        *(v211 + 4 * v209) = -3;
        Langs = calcWScore(a1, v31, "merwfrq_latn", 1, *(v65 + 8), (v196 + (v209 << 9)), v229);
        if ((Langs & 0x80000000) == 0)
        {
          log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID found ambiguously in ML2 lexicon");
LABEL_119:
          *v63 = v193;
          *v64 = v207;
          calcWPenalties(a1, v208, 0);
        }

LABEL_249:
        v34 = 1;
        v32 = v208;
LABEL_250:
        if ((Langs & 0x80000000) != 0)
        {
          inserted = Langs;
          v22 = v199;
          v23 = v201;
          goto LABEL_10;
        }

LABEL_251:
        lidword_AdvanceSkippingSpacesInNormEW(&v220, &v219);
        lidword_AdvanceSkippingSpacesInNormEW(&v218, &v217);
        v32 += v34;
        v30 = v219;
        v31 = v220;
        v33 = a1 + 134160;
        if (v219 == v220)
        {
          goto LABEL_252;
        }
      }

      Langs = (*(*(a1 + 64) + 240))(*(a1 + 48), *(a1 + 56), "tn", v31, &__c[3], &__c[1], __c, *(a1 + 135960), 0);
      if ((Langs & 0x80000000) != 0)
      {
        goto LABEL_249;
      }

      if (!*&__c[1])
      {
        v191 = v63;
        v192 = v64;
        if (*v31)
        {
          v90 = 1;
          v91 = v31;
          while (v90)
          {
            v92 = cstdlib_strlen(v91);
            v93 = utf8_BelongsToSet(6, v91, 0, v92);
            v90 = v93 == 0;
            v91 += Utf8_LengthInBytes(v91, 1);
            if (!*v91)
            {
              if (!v93)
              {
                goto LABEL_186;
              }

              break;
            }
          }

          log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID digit word : %s", v31);
          LOBYTE(v93) = 1;
LABEL_186:
          if (*v31)
          {
            v94 = 1;
            v95 = v31;
            while (v94)
            {
              v96 = utf8_strchr(*(a1 + 135968), v95);
              if (!v96)
              {
                v94 = 0;
              }

              v95 += Utf8_LengthInBytes(v95, 1);
              if (!*v95)
              {
                if (v96)
                {
                  goto LABEL_195;
                }

                break;
              }
            }

            v97 = 0;
LABEL_197:
            if (*__s)
            {
              v98 = __s;
              while (lidword_IsUppercase(v98) || utf8_strchr(*(a1 + 135984), v98))
              {
                v98 += Utf8_LengthInBytes(v98, 1);
                if (!*v98)
                {
                  goto LABEL_202;
                }
              }

              v99 = 1;
            }

            else
            {
LABEL_202:
              log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID acronym word : %s", __s);
              v99 = 0;
            }

            if (*v31)
            {
              v100 = 0;
              v101 = v31;
              while (utf8_strchr(*(a1 + 135992), v101) || utf8_strchr(*(a1 + 135984), v101))
              {
                v101 += Utf8_LengthInBytes(v101, 1);
                ++v100;
                if (!*v101)
                {
                  if (v100 < 2u)
                  {
                    break;
                  }

                  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID consonant word : %s", v31);
                  v102 = 0;
                  goto LABEL_211;
                }
              }
            }

            v102 = 1;
LABEL_211:
            v103 = cstdlib_strchr(v31, 64);
            if (!v103 || !cstdlib_strchr(v103, 46))
            {
              v105 = 1u;
              v106 = "http";
              while (!cstdlib_strstr(v31, v106))
              {
                v106 = szURL[v105++];
                if (v105 == 16)
                {
                  v104 = 0;
                  goto LABEL_218;
                }
              }
            }

            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID URL or EMail : %s", v31);
            v104 = 1;
LABEL_218:
            v107 = v93 | v97;
            a6 = v200;
            v24 = v203;
            if ((v107 & 1) != 0 || (v99 & 1) == 0 && !*(a1 + 2046))
            {
LABEL_219:
              *(v211 + 4 * v209) = *(a1 + 1930);
              *v191 = v193;
              *v192 = v207;
              if (v208)
              {
                v108 = (v209 - 1);
                if (*(v211 + 4 * v108) == *(a1 + 1930))
                {
                  cstdlib_memcpy((v196 + (v209 << 9)), (v196 + (v108 << 9)), 0x200uLL);
                }
              }

              goto LABEL_249;
            }

            if (v102)
            {
              if (v104)
              {
                goto LABEL_219;
              }
            }

            else
            {
              if (!*(a1 + 2048))
              {
                LOBYTE(v104) = 1;
              }

              if (v104)
              {
                goto LABEL_219;
              }
            }

            v109 = (v196 + (v209 << 9));
            Langs = calcWScore(a1, v31, "merwfrq_latn", 1, *(v65 + 8), v109, v229);
            if ((Langs & 0x80000000) == 0)
            {
              if (lidword_OutOfLID2(a1, v208))
              {
                *(v211 + 4 * v209) = *(a1 + 1930);
                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID fallback to the main language (language code is not in LID2 subset): %s");
                goto LABEL_233;
              }

              if (!*(a1 + 136016))
              {
LABEL_246:
                *v191 = v193;
                *v192 = v207;
                v110 = v208;
                v111 = a1;
                v112 = 1;
                goto LABEL_247;
              }

              v113 = *(v65 + 8);
              if (*(v65 + 8))
              {
                do
                {
                  if (*v109++)
                  {
                    goto LABEL_246;
                  }
                }

                while (--v113);
              }

              Langs = lidmde_FindLangs(a1, v31, v191, __s, v192, v232, &v227);
              if ((Langs & 0x80000000) == 0)
              {
                if (v227)
                {
                  *(v211 + 4 * v209) = *(a1 + 1930);
                  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) fallback to the main language (language code is not in LID2 subset): %s");
                }

                else
                {
                  v115 = lidmde_SingleLang(v232, *(a1 + 1928));
                  if (v115 < 0)
                  {
                    if (!lidmde_MainLangPlusSomeOtherLangs(v232, *(a1 + 1930), *(a1 + 1928)))
                    {
                      goto LABEL_246;
                    }

                    *(v211 + 4 * v209) = -3;
                    log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) found ambiguously");
                  }

                  else
                  {
                    *(v211 + 4 * v209) = v115;
                    log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) found unambiguously: %s");
                  }
                }

LABEL_233:
                *v191 = v193;
                *v192 = v207;
                v110 = v208;
                v111 = a1;
                v112 = 0;
LABEL_247:
                calcWPenalties(v111, v110, v112);
              }
            }

LABEL_248:
            a6 = v200;
            v24 = v203;
            goto LABEL_249;
          }
        }

        else
        {
          LOBYTE(v93) = 0;
        }

LABEL_195:
        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID punctuation word : %s", v31);
        v97 = 1;
        goto LABEL_197;
      }

      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID TN word : %s", v31);
      *(v211 + 4 * v209) = -3;
      Langs = calcWScore(a1, v31, "merwfrq_latn", 1, *(v65 + 8), (v196 + (v209 << 9)), v229);
      if ((Langs & 0x80000000) != 0)
      {
        goto LABEL_249;
      }

      goto LABEL_119;
    }

    v177 = 0;
    v178 = 0;
    while (1)
    {
      v179 = &v22[v177];
      if (v22[v177] < 0)
      {
        v182 = v22[v177];
      }

      else
      {
        v180 = cstdlib_strlen(&v22[v177]);
        if (!utf8_BelongsToSet(0, &v22[v177], 0, v180) && v179[1] >= 0x81u)
        {
          v181 = cstdlib_strlen(v179 + 1);
          if (!utf8_BelongsToSet(0, (v179 + 1), 0, v181))
          {
LABEL_357:
            v185 = cstdlib_strlen(v179 + 1);
            cstdlib_memmove(v179 + 2, v179 + 1, v185 + 1);
            v186 = v178 + 1;
            v22[v186] = 32;
            v187 = *a6;
            if (*a6)
            {
              v188 = 0;
              v189 = *a4;
              do
              {
                v190 = (v189 + 12 + 32 * v188);
                if (*v190 - *(v189 + 12) > v186)
                {
                  ++*v190;
                  v187 = *a6;
                }

                ++v188;
              }

              while (v187 > v188);
            }

            goto LABEL_353;
          }
        }

        v182 = *v179;
      }

      if (v182 >= 0x81)
      {
        v183 = cstdlib_strlen(&v22[v177]);
        if (!utf8_BelongsToSet(0, &v22[v177], 0, v183) && (v179[1] & 0x80000000) == 0)
        {
          v184 = cstdlib_strlen(v179 + 1);
          if (!utf8_BelongsToSet(0, (v179 + 1), 0, v184))
          {
            goto LABEL_357;
          }
        }
      }

LABEL_353:
      v177 = ++v178;
      if (cstdlib_strlen(v22) - 1 <= v178)
      {
        goto LABEL_25;
      }
    }
  }

  v26 = 1;
  while (1)
  {
    v27 = *(*a4 + 32 * v26);
    if (v27 == 7 || v27 == 40)
    {
      break;
    }

    if (*a6 <= ++v26)
    {
      goto LABEL_23;
    }
  }

LABEL_8:
  inserted = 0;
  v23 = 0;
LABEL_9:
  v24 = 0;
LABEL_10:
  heap_Free(*(*(a1 + 16) + 8), v22);
  if (v23)
  {
    heap_Free(*(*(a1 + 16) + 8), v23);
  }

  if (v24)
  {
    heap_Free(*(*(a1 + 16) + 8), v24);
  }

  return inserted;
}