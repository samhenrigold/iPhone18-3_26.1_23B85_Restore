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
      v37 = a3;
      v38 = v11;
      LODWORD(v19) = 0;
      v20 = 0;
      v21 = v10;
      v39 = v10;
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
        v40 = v23;
        if (v23 >= v10)
        {
          v31 = 0;
          v28 = 0;
        }

        else
        {
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v30 = *(*(a4 + 8 * v23) + strlen(*(a4 + 8 * v23)) - 1);
            if (v30 == 83 || v30 == 69)
            {
              ++v28;
            }

            v31 = v29 + 1;
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
            log_OutText(*(v38 + 32), "FE_PW", 0, 0, "No Lex Word Found in Current PW. Pos: %d", v23);
            return 2584748047;
          }

          *(v18 + 8) = v28;
          v11 = v38;
          v32 = v28;
          v33 = heap_Alloc(*(v38 + 8), 2 * v28);
          *v18 = v33;
          if (!v33)
          {
            goto LABEL_32;
          }

          v34 = v20;
          do
          {
            *v33++ = *(v37 + 40 * v34++ + 24);
            --v32;
          }

          while (v32);
        }

LABEL_30:
        v20 += v28;
        LODWORD(v19) = v40 + v31;
        v18 += 16;
        v10 = v39;
      }

      while (v19 < v39);
    }

    return 0;
  }

  else
  {
LABEL_32:
    v35 = 2584748042;
    log_OutPublic(*(v11 + 32), "FE_PW", 37000, 0);
  }

  return v35;
}

uint64_t fe_pw_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = 0;
  *v33 = 0;
  __s1 = 0;
  v31 = 0;
  igtree = 2584748039;
  v29 = 0;
  v28 = -1;
  v27 = 0;
  memset(v34, 0, sizeof(v34));
  if (!a5)
  {
    return igtree;
  }

  v26 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, v33);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  v12 = heap_Calloc(*(*v33 + 8), 1, 1192);
  if (!v12)
  {
    log_OutPublic(*(*v33 + 32), "FE_PW", 37000, 0);
    igtree = 2584748042;
LABEL_38:
    fe_pw_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return igtree;
  }

  v13 = v12;
  inited = objc_GetObject(*(*v33 + 48), "LINGDB", &v32);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  *(v13 + 48) = *(v32 + 8);
  inited = objc_GetObject(*(*v33 + 48), "FE_DCTLKP", &v31);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  v14 = v31;
  v15 = *(v31 + 8);
  *(v13 + 128) = v15;
  *(v13 + 136) = *(v14 + 16);
  v16 = *v33;
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
  igtree = (*(v15 + 96))(*(v13 + 136), *(v13 + 144), "fecfg", "statbnd_enable_nnets", &v29, &v28, &v27);
  if (v28 && v29 && ((*v29)[strlen(*v29) - 1] = 0, !strcmp(*v29, "yes")))
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
      *(v13 + 156) = 0;
    }

    v18 = (v13 + 112);
    if (!com_auxiliarywords(*(v13 + 24), *(v13 + 128), *(v13 + 136), *(v13 + 144), (v13 + 112), (v13 + 120)))
    {
      *v18 = 0;
    }

    inited = fw_pw_CreateVoiceBrokerString(*(v13 + 24), v34);
    if ((inited & 0x80000000) == 0)
    {
      if (((*(*(v13 + 128) + 256))(*(v13 + 136), *(v13 + 144), "fepw_enable_crf", "no", &__s1) & 0x80000000) != 0 || strcmp(__s1, "yes"))
      {
        if ((ssftriff_reader_ObjOpen(a3, a4, 2, v34, "PWDT", 1031, (v13 + 64)) & 0x80000000) == 0)
        {
          v25 = 0;
          v23 = 0;
          v24 = 0;
          v22 = 0;
          for (i = ssftriff_reader_OpenChunk(*v17, &v24, &v23, &v22); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(*v17, &v24, &v23, &v22))
          {
            if (!(v24 ^ 0x52545344 | v25))
            {
              inited = ssftriff_reader_GetChunkData(*v17, v23, (v13 + 56));
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_37;
              }

              *v18 = 0;
              inited = GetRulesFromRiffData(*v33, *v17, *(v13 + 56), v23, (v13 + 72), (v13 + 80), (v13 + 96), (v13 + 100), (v13 + 104), (v13 + 112), (v13 + 120));
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

      inited = tryLoadingCrfModel(*(v13 + 32), *(v13 + 40), *(v13 + 8), *(v13 + 16), *(v13 + 24), (v13 + 88), v34, 1031);
      if ((inited & 0x80000000) == 0)
      {
LABEL_32:
        igtree = load_igtree_cfg(*(v13 + 136), *(v13 + 144), *(v13 + 128), &v26);
        if ((igtree & 0x80000000) == 0)
        {
          if (v26)
          {
            v20 = (v13 + 1184);
            igtree = load_igtree(*(v13 + 32), *(v13 + 40), *(v13 + 24), (v13 + 1184));
            if ((igtree & 0x80000000) != 0)
            {
              if (*v20)
              {
                igtree_Deinit(*(v13 + 24), *v20);
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

uint64_t fw_pw_CreateVoiceBrokerString(uint64_t a1, char *a2)
{
  *v5 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v5);
  if ((result & 0x80000000) == 0)
  {
    return brokeraux_ComposeBrokerString(a1, "prosodyword", 1, 1, *v5, 0, 0, a2, 0x100uLL);
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
  v28 = *MEMORY[0x1E69E9840];
  v3 = 2584748038;
  memset(v27, 0, sizeof(v27));
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

    v26 = 0;
    VoiceBrokerString = fw_pw_CreateVoiceBrokerString(*(a1 + 24), v27);
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

    if ((tryLoadingCrfModel(*(a1 + 32), *(a1 + 40), *(a1 + 8), *(a1 + 16), *(a1 + 24), (a1 + 88), v27, 1031) & 0x80000000) != 0)
    {
      if ((ssftriff_reader_ObjOpen(*(a1 + 32), *(a1 + 40), 2, v27, "PWDT", 1031, (a1 + 64)) & 0x80000000) != 0)
      {
        *(a1 + 56) = 0;
      }

      else
      {
        v25 = 0;
        v23 = 0;
        *v24 = 0;
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

        for (i = ssftriff_reader_OpenChunk(*v7, &v24[1], v24, &v23); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(*v7, &v24[1], v24, &v23))
        {
          if (!(v24[1] ^ 0x52545344 | v25))
          {
            VoiceBrokerString = ssftriff_reader_GetChunkData(*v7, v24[0], (a1 + 56));
            if ((VoiceBrokerString & 0x80000000) != 0)
            {
              return VoiceBrokerString;
            }

            *(a1 + 112) = 0;
            VoiceBrokerString = GetRulesFromRiffData(*(a1 + 24), *(a1 + 64), *(a1 + 56), v24[0], (a1 + 72), (a1 + 80), (a1 + 96), (a1 + 100), (a1 + 100), (a1 + 112), (a1 + 120));
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

    v3 = load_igtree_cfg(*(a1 + 136), *(a1 + 144), *(a1 + 128), &v26);
    if ((v3 & 0x80000000) == 0 && v26)
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

      if (!v64 || !strcmp(v64, "mnc!"))
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
              v20 = strcmp(__s1, "left") == 0;
            }

            goto LABEL_26;
          }
        }

        v17 = 0;
        v20 = 1;
      }

      else
      {
LABEL_9:
        v20 = 1;
        v17 = 1;
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

        if (!v64 || !strcmp(v64, "mnc!"))
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

          v43 = strcmp(__s1, "left");
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
        v8 = strlen(v5);
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

uint64_t com_enable_cscgroup(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v5 = (*(a1 + 96))(a2, a3, "fecfg", "fepw_enable_cscgroup", &__c[3], &__c[1], __c);
  result = 0;
  if ((v5 & 0x80000000) == 0 && *&__c[1])
  {
    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    v9 = *v7 != 110 || v7[1] != 111 || v7[2] != 0;
    *a4 = v9;
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
    v7 = **&__c[3];
    v8 = strchr(**&__c[3], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[3];
    }

    strcpy(a4, v7);
    return 1;
  }

  return result;
}

uint64_t com_auxiliarywords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned __int8 *a6)
{
  v19 = 0;
  v18 = -1;
  v17 = 0;
  v9 = 0;
  if (((*(a2 + 96))(a3, a4, "fecfg", "fepw_auxiliarywords", &v19, &v18, &v17) & 0x80000000) == 0 && v18)
  {
    v10 = strlen(*v19);
    ChineseUTFCharNum = utf8_GetChineseUTFCharNum(*v19, v10);
    *a6 = ChineseUTFCharNum;
    v12 = heap_Alloc(*(a1 + 8), 8 * ChineseUTFCharNum);
    *a5 = v12;
    if (v12 && *a6)
    {
      v13 = 0;
      v14 = *v19;
      while (1)
      {
        v15 = utf8_determineUTF8CharLength(*v14);
        v9 = 1;
        *(*a5 + 8 * v13) = heap_Calloc(*(a1 + 8), 1, v15 + 1);
        if (!*a5)
        {
          break;
        }

        memcpy(*(*a5 + 8 * v13), v14, v15);
        *(*(*a5 + 8 * v13) + v15) = 0;
        v14 += v15;
        if (++v13 >= *a6)
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
  v170 = *MEMORY[0x1E69E9840];
  v167 = 0;
  v168 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v162 = 0;
  v163 = 0;
  v161 = 0;
  v159 = 0;
  v160 = 0;
  v157 = 0;
  v158 = 1024;
  v155 = 0;
  v156 = 64;
  v153 = 0;
  v154 = 64;
  v151 = 0;
  v152 = "";
  v150 = 0;
  v149 = 0;
  BYTE2(v148[1]) = 0;
  strcpy(v148, "latin");
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v140 = 0;
  bzero(v141, 0x404uLL);
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
  v28 = (*(*(a1 + 48) + 104))(a3, a4, 1, 0, &v168 + 2);
  if ((v28 & 0x80000000) != 0)
  {
    return v28;
  }

  v11 = (*(*(a1 + 48) + 184))(a3, a4, HIWORD(v168), 0, &v150);
  if ((v11 & 0x80000000) == 0 && v150 == 1)
  {
    v11 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v168), 0, &v160, &v167);
    if ((v11 & 0x80000000) == 0 && v167 >= 2u)
    {
      *v169 = 0;
      LODWORD(__src) = 0;
      *__s1 = 0;
      LOWORD(v136) = 0;
      LOWORD(v135) = 0;
      v29 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v168), v169);
      LODWORD(v11) = v29;
      if ((v29 & 0x80000000) == 0)
      {
        v30 = *v169;
        if (*v169)
        {
          v31 = 0;
          while (1)
          {
            v32 = (*(*(a1 + 48) + 168))(a3, a4, v30, 0, 1, &__src, __s1);
            if (v32 < 0)
            {
              break;
            }

            if (__src > 0xA || ((1 << __src) & 0x610) == 0)
            {
              v37 = 0;
              v36 = *v169;
            }

            else
            {
              v32 = (*(*(a1 + 48) + 168))(a3, a4, *v169, 1, 1, &v136, __s1);
              if (v32 < 0)
              {
                break;
              }

              v32 = (*(*(a1 + 48) + 168))(a3, a4, *v169, 2, 1, &v135, __s1);
              if (v32 < 0)
              {
                break;
              }

              v35 = v136 > v31 || v31 < v135;
              v36 = *v169;
              if (v35)
              {
                v31 = v135;
                v37 = 0;
              }

              else
              {
                v37 = *v169;
              }
            }

            v32 = (*(*(a1 + 48) + 120))(a3, a4, v36, v169);
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

            v30 = *v169;
            if (!*v169)
            {
              goto LABEL_80;
            }
          }

          LODWORD(v11) = v32;
LABEL_165:
          v9 = 0;
          v10 = 0;
          goto LABEL_3;
        }
      }

      if (v29 < 0)
      {
        goto LABEL_165;
      }

LABEL_80:
      v11 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v168), &v168);
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_165;
      }

      v38 = v168;
      if (!v168)
      {
        goto LABEL_166;
      }

      v10 = 0;
      v39 = 0;
      v130 = 0;
      do
      {
        v40 = (*(*(a1 + 48) + 120))(a3, a4, v38, &v167 + 2);
        if (v40 < 0)
        {
          LODWORD(v11) = v40;
LABEL_168:
          v9 = 0;
          goto LABEL_3;
        }

        v11 = (*(*(a1 + 48) + 168))(a3, a4, v168, 0, 1, &v164, &v167);
        if ((v11 & 0x80000000) != 0)
        {
          goto LABEL_168;
        }

        v41 = v164;
        if (v164 <= 0xA && ((1 << v164) & 0x610) != 0)
        {
          v28 = (*(*(a1 + 48) + 168))(a3, a4, v168, 1, 1, &v166, &v167);
          if ((v28 & 0x80000000) != 0)
          {
            return v28;
          }

          v11 = (*(*(a1 + 48) + 168))(a3, a4, v168, 2, 1, &v165, &v167);
          if ((v11 & 0x80000000) != 0)
          {
            return v11;
          }

          if (!v166 || v39 + 1 == v166 && v165 > v166)
          {
            ++v10;
            v39 = v165;
          }

          v41 = v164;
        }

        if (v41 == 5)
        {
          v11 = (*(*(a1 + 48) + 176))(a3, a4, v168, 4, &v143, &v167);
          if ((v11 & 0x80000000) != 0)
          {
            return v11;
          }

          if (v167)
          {
            if (!strncmp(v143, "prompt", v167))
            {
              ++v130;
              if (v142 <= 0x7F)
              {
                v28 = (*(*(a1 + 48) + 168))(a3, a4, v168, 1, 1, &v166, &v167);
                if ((v28 & 0x80000000) != 0)
                {
                  return v28;
                }

                v11 = (*(*(a1 + 48) + 168))(a3, a4, v168, 2, 1, &v165, &v167);
                if ((v11 & 0x80000000) != 0)
                {
                  return v11;
                }

                v141[v142] = v166;
                v141[v142++ + 128] = v165;
              }
            }
          }
        }

        v38 = HIWORD(v167);
        LOWORD(v168) = HIWORD(v167);
      }

      while (HIWORD(v167));
      if (v130 >= 0x81u)
      {
        log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Warning: the prompt number %d is large than the threshold %d, so the last %d promp not used to guide grouping", v130, 128, v130 - 128);
      }

      if (!v10)
      {
LABEL_166:
        log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Warning: no lexicon word");
        return v11;
      }

      v43 = v10;
      v44 = heap_Calloc(*(*(a1 + 24) + 8), v10, 40);
      if (!v44)
      {
        v11 = 2584748042;
        log_OutPublic(*(*(a1 + 24) + 32), "FE_PW", 37000, 0);
        return v11;
      }

      v9 = v44;
      v45 = v39;
      v46 = (v44 + 8);
      while (1)
      {
        v47 = heap_Calloc(*(*(a1 + 24) + 8), 128, 1);
        *(v46 - 1) = v47;
        v48 = *(a1 + 24);
        if (!v47)
        {
          break;
        }

        v49 = heap_Calloc(*(v48 + 8), 64, 1);
        *v46 = v49;
        if (!v49)
        {
LABEL_329:
          LODWORD(v11) = -1710219254;
LABEL_330:
          v48 = *(a1 + 24);
          goto LABEL_331;
        }

        v46 += 5;
        if (!--v43)
        {
          word_separating_markers_0 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v168), &v168);
          if (word_separating_markers_0 < 0)
          {
            goto LABEL_332;
          }

          v131 = v27;
          LODWORD(v11) = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v168), 0, &v160, &v167);
          if ((v11 & 0x80000000) != 0 || v167 < 2u)
          {
            goto LABEL_3;
          }

          v51 = v168;
          if (v168)
          {
            v127 = 0;
            LODWORD(v11) = -1710219254;
            do
            {
              word_separating_markers_0 = (*(*(a1 + 48) + 120))(a3, a4, v51, &v167 + 2);
              if (word_separating_markers_0 < 0)
              {
                goto LABEL_332;
              }

              word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v168, 0, 1, &v164, &v167);
              if (word_separating_markers_0 < 0)
              {
                goto LABEL_332;
              }

              if (v164 <= 0xA && ((1 << v164) & 0x610) != 0)
              {
                word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v168, 1, 1, &v166, &v167);
                if (word_separating_markers_0 < 0)
                {
                  goto LABEL_332;
                }

                word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v168, 2, 1, &v165, &v167);
                if (word_separating_markers_0 < 0)
                {
                  goto LABEL_332;
                }

                if (!v166 || v45 + 1 == v166 && v165 > v166)
                {
                  word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, v168, 3, &v153, &v167);
                  if (word_separating_markers_0 < 0)
                  {
                    goto LABEL_332;
                  }

                  v53 = v153;
                  v54 = v9 + 40 * v127;
                  if (strstr(v153, "comma"))
                  {
                    *(v54 + 26) = 11;
                  }

                  else
                  {
                    *(v54 + 26) = 1;
                    v149 = v53;
                    v55 = strchr(v53, 46);
                    v149 = v55;
                    if (v55)
                    {
                      v56 = 1;
                      do
                      {
                        v57 = v55 + 1;
                        v149 = v57;
                        *(v54 + 26) = ++v56;
                        v55 = strchr(v57, 46);
                        v149 = v55;
                      }

                      while (v55);
                    }
                  }

                  v58 = v166;
                  if (v166 >= v165)
                  {
                    v60 = 1;
                  }

                  else
                  {
                    v59 = 0;
                    do
                    {
                      if (!utf8_IsChineseLetter((v160 + v58)))
                      {
                        v59 = 1;
                      }

                      v58 += utf8_determineUTF8CharLength(*(v160 + v58));
                    }

                    while (v58 < v165);
                    v60 = v59 == 0;
                  }

                  v61 = v9 + 40 * v127;
                  *(v61 + 24) = v168;
                  word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4);
                  if (word_separating_markers_0 < 0)
                  {
                    goto LABEL_332;
                  }

                  if (!hlp_NLUStrFind(v152, "POS", &v151, &v150 + 1))
                  {
                    LODWORD(v11) = -1710219264;
                    goto LABEL_3;
                  }

                  **(v61 + 8) = 0;
                  if (v60)
                  {
                    strncat(*(v61 + 8), v151, HIWORD(v150));
                  }

                  else
                  {
                    *(*(v61 + 8) + strlen(*(v61 + 8))) = 7237486;
                  }

                  if (((*(*(a1 + 48) + 184))(a3, a4, v168, 9, &v167) & 0x80000000) == 0 && v167 == 1)
                  {
                    word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, v168, 9, v61 + 16, &v167);
                    if (word_separating_markers_0 < 0)
                    {
                      goto LABEL_332;
                    }
                  }

                  v62 = v165;
                  v63 = v166;
                  v64 = v165 - v166;
                  v65 = *v61;
                  if (v64 >= 128)
                  {
                    v66 = heap_Realloc(*(*(a1 + 24) + 8), *v61, (v64 + 1));
                    *v61 = v66;
                    if (!v66)
                    {
                      goto LABEL_330;
                    }

                    v65 = v66;
                    v63 = v166;
                    v62 = v165;
                  }

                  memcpy(v65, (v160 + v63), v62 - v63);
                  *(*v61 - v166 + v165) = 0;
                  v67 = v165;
                  *(v61 + 28) = v166;
                  *(v61 + 32) = v67;
                  v45 = v67;
                  ++v127;
                }
              }

              v51 = HIWORD(v167);
              LOWORD(v168) = HIWORD(v167);
            }

            while (HIWORD(v167));
          }

          word_separating_markers_0 = pw_get_word_separating_markers_0(a1, a3, a4, HIWORD(v168), &v147, &v146);
          if (word_separating_markers_0 < 0)
          {
            goto LABEL_332;
          }

          v68 = v146;
          log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Info: Valid Word Seperator Markers Count:%d", v146);
          if (v68)
          {
            v69 = 0;
            v70 = v147;
            do
            {
              log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Info: Valid Word Seperator Markers POS:%d", v70[v69++]);
            }

            while (v68 > v69);
          }

          v71 = v68;
          v72 = *(a1 + 88);
          if (v72)
          {
            LODWORD(__src) = 1;
            LODWORD(v11) = pw_crf_process(*(a1 + 24), v72, *(a1 + 128), *(a1 + 136), *(a1 + 144), v9, v10, &v162, &v161, &__src);
            if ((v11 & 0x80000000) != 0 || __src)
            {
              goto LABEL_3;
            }

LABEL_172:
            if ((paramc_ParamGetStr(*(*(a1 + 24) + 40), "spaceInPYT", &v145) & 0x80000000) != 0 || LH_stricmp(v145, "yes") || (v12 = v147, v73 = fe_pw_PYT_process(a1, a3, a4, *(a1 + 24), v9, v10, v147, v71, &v162, &v161), (v73 & 0x80000000) == 0))
            {
              if (*(a1 + 152) == 1)
              {
                word_separating_markers_0 = pw_group_csc_0(*(a1 + 24), v141, v9, v10, (a1 + 156), v162, v161, &v163, &v161 + 1);
                if (word_separating_markers_0 < 0)
                {
                  goto LABEL_332;
                }
              }

              else
              {
                HIWORD(v161) = v161;
                v74 = v162;
                v162 = 0;
                v163 = v74;
                LOWORD(v161) = 0;
              }

              v75 = *(a1 + 1184);
              if (v75)
              {
                word_separating_markers_0 = pw_igtree_process_0(*(a1 + 24), v9, &v163, &v161 + 1, v10, v75);
                if (word_separating_markers_0 < 0)
                {
LABEL_332:
                  LODWORD(v11) = word_separating_markers_0;
                  goto LABEL_3;
                }
              }

              LODWORD(v11) = pw_respect_word_separating_markers_0(a1, a3, a4, HIWORD(v168), &v163, &v161 + 1);
              if ((v11 & 0x80000000) == 0)
              {
                v76 = heap_Calloc(*(*(a1 + 24) + 8), 1024, 1);
                v159 = v76;
                if (v76)
                {
                  v77 = v76;
                  v157 = heap_Calloc(*(*(a1 + 24) + 8), 64, 1);
                  if (v157)
                  {
                    v155 = heap_Calloc(*(*(a1 + 24) + 8), 64, 1);
                    if (v155)
                    {
                      v78 = HIWORD(v161);
                      if (HIWORD(v161))
                      {
                        v79 = 0;
                        do
                        {
                          v80 = v163;
                          v122 = v79;
                          v81 = LOWORD(v163[2 * v79 + 1]);
                          if (v81 != 1)
                          {
                            if (!v81)
                            {
                              LODWORD(v11) = -1710219254;
                              log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Error: the prosody word should has at least one lexical word");
                              goto LABEL_3;
                            }

                            __src = 0;
                            bzero(v77, v158);
                            bzero(v157, v156);
                            bzero(v155, v154);
                            __s = v140;
                            v128 = &v80[2 * v122];
                            if (*(v128 + 4))
                            {
                              v132 = 0;
                              v82 = 0;
                              v125 = 1;
                              LODWORD(v11) = -1710219254;
                              while (1)
                              {
                                word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, *(*v128 + 2 * v132), 1, 1, &v166, &v167);
                                if (word_separating_markers_0 < 0)
                                {
                                  goto LABEL_332;
                                }

                                word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, *(*v128 + 2 * v132), 2, 1, &v165, &v167);
                                if (word_separating_markers_0 < 0)
                                {
                                  goto LABEL_332;
                                }

                                word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, *(*v128 + 2 * v132), 3, &v153, &v167);
                                if (word_separating_markers_0 < 0)
                                {
                                  goto LABEL_332;
                                }

                                word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, *(*v128 + 2 * v132), 14, &v152, &v167);
                                if (word_separating_markers_0 < 0)
                                {
                                  goto LABEL_332;
                                }

                                v123 = *(*(a1 + 24) + 8);
                                v83 = strlen(v152);
                                v84 = v83;
                                if (__s)
                                {
                                  v85 = strlen(__s);
                                  __s = heap_Realloc(v123, __s, v84 + v85 + 2);
                                  if (!__s)
                                  {
                                    goto LABEL_3;
                                  }

                                  v140 = __s;
                                  *&__s[strlen(__s)] = 59;
                                  strcat(__s, v152);
                                }

                                else
                                {
                                  v140 = heap_Alloc(v123, v83 + 1);
                                  __s = v140;
                                  if (!v140)
                                  {
                                    goto LABEL_3;
                                  }

                                  strcpy(v140, v152);
                                }

                                if (v125)
                                {
                                  v125 = 0;
                                  v124 = 1;
                                  if (((*(*(a1 + 48) + 184))(a3, a4, *(*v128 + 2 * v132), 10, &v150) & 0x80000000) == 0 && v150 == 1)
                                  {
                                    word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, *(*v128 + 2 * v132), 10, &__src, &v167);
                                    if (word_separating_markers_0 < 0)
                                    {
                                      goto LABEL_332;
                                    }

                                    v124 = 0;
                                    v125 = 1;
                                  }
                                }

                                else
                                {
                                  v125 = 0;
                                  v124 = 1;
                                }

                                if (v132)
                                {
                                  *(v160 + v166 - 1) = 45;
                                  cstdlib_safe_strcat(*(a1 + 24), &v159, ".", &v158, 0x400uLL);
                                  cstdlib_safe_strcat(*(a1 + 24), &v157, "-", &v156, 0x40uLL);
                                  v86 = *(*v128 + 2 * v132);
                                  v149 = v153;
                                  v87 = strstr(v153, "{SEP");
                                  v149 = v87;
                                  if (v87)
                                  {
                                    v149 = v87 + 4;
                                    v87[4] += v82;
                                  }
                                }

                                else
                                {
                                  v86 = 0;
                                }

                                cstdlib_safe_strcat(*(a1 + 24), &v159, v153, &v158, 0x400uLL);
                                if (hlp_NLUStrFind(v152, "POS", &v151, &v150 + 1))
                                {
                                  cstdlib_safe_strncat(*(a1 + 24), &v157, v151, HIWORD(v150), &v156);
                                }

                                v88 = v125;
                                if (!__src)
                                {
                                  v88 = 0;
                                }

                                if (v88 == 1)
                                {
                                  cstdlib_safe_strcat(*(a1 + 24), &v155, __src, &v154, 0x40uLL);
                                }

                                for (i = v153; ; i = v90 + 1)
                                {
                                  v90 = strchr(i, 46);
                                  v149 = v90;
                                  if (!v90)
                                  {
                                    if (!i)
                                    {
                                      break;
                                    }

                                    v90 = strstr(i, "{SEP");
                                    v149 = v90;
                                    if (!v90)
                                    {
                                      break;
                                    }
                                  }

                                  ++v82;
                                }

                                if (v86)
                                {
                                  word_separating_markers_0 = (*(*(a1 + 48) + 192))(a3, a4, v86);
                                  if (word_separating_markers_0 < 0)
                                  {
                                    goto LABEL_332;
                                  }
                                }

                                ++v82;
                                if (++v132 >= *(v128 + 4))
                                {
                                  goto LABEL_226;
                                }
                              }
                            }

                            v124 = 0;
LABEL_226:
                            word_separating_markers_0 = pw_merge_NLU_0(*(a1 + 24), &v140);
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            if (*(a1 + 152) == 1)
                            {
                              pw_split_csc_pw_0(*(a1 + 24), v128, &v159, &v158);
                            }

                            word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, **v128, 2, 1, &v165, &v166 + 2);
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            v77 = v159;
                            v91 = strlen(v159);
                            word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, **v128, 3, (v91 + 1), v159, &v166 + 2);
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            hlp_NLUStrRemoveKeyVal(__s, "POS");
                            hlp_NLUStrSet(__s, "POS", v157);
                            v92 = strlen(__s);
                            word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, **v128, 14, (v92 + 1), __s, &v166 + 2);
                            v152 = "";
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            if (__s)
                            {
                              heap_Free(*(*(a1 + 24) + 8), __s);
                              v140 = 0;
                            }

                            if ((v124 & 1) == 0)
                            {
                              v93 = strlen(v155);
                              word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, **v128, 10, (v93 + 1), v155, &v166 + 2);
                              if (word_separating_markers_0 < 0)
                              {
                                goto LABEL_332;
                              }
                            }

                            v78 = HIWORD(v161);
                          }

                          v79 = v122 + 1;
                        }

                        while (v122 + 1 < v78);
                      }

                      LODWORD(v11) = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v168), &v168);
                      if ((v11 & 0x80000000) == 0)
                      {
                        bzero(v77, v158);
                        v129 = v157;
                        bzero(v157, v156);
                        bzero(v155, v154);
                        HIWORD(v167) = 0;
                        v94 = v168;
                        if (v168)
                        {
                          v95 = 0;
                          LOWORD(v96) = 0;
                          while (1)
                          {
                            word_separating_markers_0 = (*(*(a1 + 48) + 120))(a3, a4, v94, &v167 + 2);
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            LODWORD(v11) = (*(*(a1 + 48) + 168))(a3, a4, v168, 0, 1, &v164, &v167);
                            if ((v11 & 0x80000000) != 0)
                            {
                              goto LABEL_3;
                            }

                            if (v164 <= 0xA && ((1 << v164) & 0x610) != 0)
                            {
                              word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v168, 1, 1, &v166, &v167);
                              if (word_separating_markers_0 < 0)
                              {
                                goto LABEL_332;
                              }

                              LODWORD(v11) = (*(*(a1 + 48) + 168))(a3, a4, v168, 2, 1, &v165, &v167);
                              if ((v11 & 0x80000000) != 0)
                              {
                                goto LABEL_3;
                              }

                              if (!v166 || v95 + 1 == v166 && v165 > v166)
                              {
                                break;
                              }
                            }

LABEL_318:
                            v94 = HIWORD(v167);
                            LOWORD(v168) = HIWORD(v167);
                            if (!HIWORD(v167))
                            {
                              goto LABEL_3;
                            }
                          }

                          __src = 0;
                          word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, v168, 3, &v153, &v167);
                          if (word_separating_markers_0 < 0)
                          {
                            goto LABEL_332;
                          }

                          LODWORD(v11) = (*(*(a1 + 48) + 176))(a3, a4, v168, 14, &v152, &v167);
                          if ((v11 & 0x80000000) != 0)
                          {
                            goto LABEL_3;
                          }

                          if (((*(*(a1 + 48) + 184))(a3, a4, v168, 10, &v150) & 0x80000000) == 0 && v150 == 1)
                          {
                            LODWORD(v11) = (*(*(a1 + 48) + 176))(a3, a4, v168, 10, &__src, &v167);
                            if ((v11 & 0x80000000) != 0)
                            {
                              goto LABEL_3;
                            }
                          }

                          v98 = v165;
                          if (v165 - v166 > 5)
                          {
                            v133 = 0;
                            goto LABEL_278;
                          }

                          *v169 = 0;
                          v138 = 0;
                          *__s1 = 0;
                          v99 = v165 - v166;
                          __memcpy_chk();
                          v169[v99] = 0;
                          if (utf8_IsChineseLetter(v169))
                          {
                            v100 = v146;
                            if (v146)
                            {
                              v101 = v147;
                              do
                              {
                                v102 = *v101++;
                                if (v102 == v166)
                                {
                                  goto LABEL_275;
                                }
                              }

                              while (--v100);
                            }

                            if (!strstr(v153, "11") || !utf8_IsChineseLetter(&v144))
                            {
                              v136 = 0;
                              v103 = strlen(v169);
                              v134 = 0;
                              v135 = 0;
                              utf8_Utf8ToUtf32_Tolerant(v169, v103, &v136, 1u, &v135);
                              v104 = v135;
                              if (v103 <= 3)
                              {
                                v104 = 0;
                              }

                              utf8_Utf32ToUtf8(&v136, 1, __s1, v103 - v104, &v134);
                              __s1[v134] = 0;
                              v105 = *(a1 + 120);
                              if (v105)
                              {
                                for (j = 0; j < v105; ++j)
                                {
                                  if (!strcmp(__s1, *(*(a1 + 112) + 8 * j)))
                                  {
                                    if (utf8_IsChineseLetter(&v144))
                                    {
                                      goto LABEL_266;
                                    }

                                    v105 = *(a1 + 120);
                                  }
                                }
                              }

                              goto LABEL_275;
                            }

LABEL_266:
                            v133 = 1;
                          }

                          else
                          {
LABEL_275:
                            v133 = 0;
                          }

                          v98 = v165;
                          v107 = v165 - v166;
                          if (v165 - v166 > 2)
                          {
LABEL_278:
                            v109 = v160 + v98;
                            v110 = *(v109 - 1);
                            LOWORD(v144) = *(v109 - 3);
                            BYTE2(v144) = v110;
                            v108 = &v144 + 3;
                          }

                          else
                          {
                            __memcpy_chk();
                            v108 = &v144 + v107;
                          }

                          *v108 = 0;
                          if (v133)
                          {
                            if (v96)
                            {
                              *v169 = 0;
                              LODWORD(v11) = pw_check_if_glue_forbidden_0(a1, a3, a4, HIWORD(v168), v96, v168, v169);
                              v133 = *v169 == 0;
                              if ((v11 & 0x80000000) != 0)
                              {
                                goto LABEL_3;
                              }
                            }
                          }

                          hlp_NLUStrFind(v152, "POS", &v151, &v150 + 1);
                          if (__src && (v111 = strlen(v155), v111 + strlen(__src) + 1 >= v154) || v151 && (v112 = strlen(v129), v112 + strlen(v151) + 2 >= v156) || (v113 = v153) != 0 && (v114 = strlen(v159), v114 + strlen(v153) + 2 >= v158))
                          {
                            log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "skip the merging due to the length limit of prosodic word");
                            v113 = v153;
                          }

                          else if (v133 && v96 && (v148[0] != 1769234796 || LOWORD(v148[1]) != 110))
                          {
                            log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "merge special auxiliary word and neutral tone cases");
                            *(v160 + v166 - 1) = 45;
                            cstdlib_safe_strcat(*(a1 + 24), &v159, ".", &v158, 0x400uLL);
                            if (v153)
                            {
                              cstdlib_safe_strcat(*(a1 + 24), &v159, v153, &v158, 0x400uLL);
                            }

                            if (HIWORD(v150))
                            {
                              cstdlib_safe_strcat(*(a1 + 24), &v157, "-", &v156, 0x40uLL);
                              if (v151)
                              {
                                cstdlib_safe_strncat(*(a1 + 24), &v157, v151, HIWORD(v150), &v156);
                              }
                            }

                            if (__src && *v155)
                            {
                              cstdlib_safe_strcat(*(a1 + 24), &v155, __src, &v154, 0x40uLL);
                            }

                            else
                            {
                              *v155 = 0;
                            }

                            word_separating_markers_0 = (*(*(a1 + 48) + 192))(a3, a4, v168);
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, v96, 2, 1, &v165, &v166 + 2);
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            v116 = strlen(v159);
                            word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, v96, 3, (v116 + 1), v159, &v166 + 2);
                            if (word_separating_markers_0 < 0)
                            {
                              goto LABEL_332;
                            }

                            v129 = v157;
                            v117 = strlen(v157);
                            v118 = strlen(v152);
                            v119 = heap_Calloc(*(*(a1 + 24) + 8), 1, (v117 + v118 + 6));
                            if (!v119)
                            {
                              goto LABEL_329;
                            }

                            v152 = strcpy(v119, v152);
                            hlp_NLUStrSet(v152, "POS", v129);
                            v120 = strlen(v152);
                            LODWORD(v11) = (*(*(a1 + 48) + 160))(a3, a4, v96, 14, (v120 + 1), v152, &v166 + 2);
                            heap_Free(*(*(a1 + 24) + 8), v152);
                            v152 = "";
                            if ((v11 & 0x80000000) != 0)
                            {
                              goto LABEL_3;
                            }

                            if (*v155)
                            {
                              v121 = strlen(v155);
                              LODWORD(v11) = (*(*(a1 + 48) + 160))(a3, a4, v96, 10, (v121 + 1), v155, &v166 + 2);
                              if ((v11 & 0x80000000) != 0)
                              {
                                goto LABEL_3;
                              }
                            }

                            goto LABEL_317;
                          }

                          if (v113)
                          {
                            strcpy(v159, v113);
                          }

                          *v129 = 0;
                          if (HIWORD(v150) && v151)
                          {
                            strncat(v129, v151, HIWORD(v150));
                          }

                          if (__src)
                          {
                            strcpy(v155, __src);
                          }

                          else
                          {
                            *v155 = 0;
                          }

                          v96 = v168;
                          if (((*(*(a1 + 48) + 184))(a3, a4) & 0x80000000) != 0 || v167 != 1)
                          {
                            strcpy(v148, "latin");
                          }

                          else
                          {
                            LODWORD(v11) = (*(*(a1 + 48) + 176))(a3, a4, v96, 9, &v149, &v167);
                            if ((v11 & 0x80000000) != 0 || strlen(v149) > 6)
                            {
                              goto LABEL_3;
                            }

                            __strcpy_chk();
                          }

LABEL_317:
                          v95 = v165;
                          goto LABEL_318;
                        }
                      }
                    }
                  }
                }
              }

LABEL_3:
              v12 = v147;
              if (v147)
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

              v17 = v163;
              if (v163)
              {
                v18 = HIWORD(v161);
                if (HIWORD(v161))
                {
                  v19 = v163;
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

              v20 = v162;
              if (v162)
              {
                v21 = v161;
                if (v161)
                {
                  v22 = 0;
                  v23 = 0;
                  do
                  {
                    v24 = v162[v22];
                    if (v24)
                    {
                      heap_Free(*(*(a1 + 24) + 8), v24);
                      v162[v22] = 0;
                      v21 = v161;
                    }

                    ++v23;
                    v22 += 2;
                  }

                  while (v23 < v21);
                  v20 = v162;
                }

                heap_Free(*(*(a1 + 24) + 8), v20);
                v162 = 0;
              }

              if (v140)
              {
                heap_Free(*(*(a1 + 24) + 8), v140);
              }

              if (v159)
              {
                heap_Free(*(*(a1 + 24) + 8), v159);
              }

              if (v157)
              {
                heap_Free(*(*(a1 + 24) + 8), v157);
              }

              if (v155)
              {
                heap_Free(*(*(a1 + 24) + 8), v155);
              }

              if (v161)
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
          }

          else
          {
            v12 = v147;
            v73 = pw_dag_process(*(a1 + 24), v131, *(a1 + 80), *(a1 + 96), *(a1 + 100), *(a1 + 104), v141, v9, v10, v147, v68, &v162, &v161);
            if ((v73 & 0x80000000) == 0)
            {
              goto LABEL_172;
            }
          }

          LODWORD(v11) = v73;
          if (v12)
          {
            goto LABEL_4;
          }

          goto LABEL_5;
        }
      }

      LODWORD(v11) = -1710219254;
LABEL_331:
      log_OutPublic(*(v48 + 32), "FE_PW", 37000, 0);
      goto LABEL_3;
    }
  }

  return v11;
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
  v82 = *MEMORY[0x1E69E9840];
  log_OutText(*(a1 + 32), "FE_PW", 5, 0, "pw_group_csc Begin");
  v13 = heap_Calloc(*(a1 + 8), a7, 16);
  *a8 = v13;
  if (!v13)
  {
    v62 = 2584748042;
    v63 = *(a1 + 32);
LABEL_72:
    log_OutPublic(v63, "FE_PW", 37000, 0);
    return v62;
  }

  v65 = a8;
  v67 = a1;
  *a9 = 0;
  v81 = 0;
  v80 = 0;
  if (a7)
  {
    LOWORD(v14) = 0;
    v69 = 0;
    v15 = 0;
    v16 = a4;
    v17 = (v13 + 8);
    v71 = a7;
    while (1)
    {
      v73 = v17;
      v68 = v15;
      *v17 = 0;
      v18 = a7 <= (v14 + 1) ? v14 + 1 : a7;
      v66 = v18;
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
              v74 = v16;
              goto LABEL_15;
            }
          }

          v74 = v21;
LABEL_15:
          v26 = 0;
          v79 = 0;
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
          v74 = 0;
          v25 = 0;
          v79 = 0;
        }

LABEL_20:
        v29 = *(a3 + 40 * v25);
        v30 = (Utf8_Utf8NbrOfSymbols(v29) - 1);
        v32 = 0;
        if (v30 == 2)
        {
          if (v29)
          {
            v31 = strlen(v29);
            if (v31)
            {
              if (strstr(",.:?!;()", &v29[v31 - 1]))
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
        utf8_getUTF8Char(v29, 0, &v80);
        IsChineseLetter = utf8_IsChineseLetter(&v80);
        pw_weather_word_in_prompt(a2, a3 + 40 * v74, &v79);
        v38 = *(a6 + 16 * v19 + 8);
        v39 = !v32;
        if (v30 == 1)
        {
          v39 = 0;
        }

        if (v39 || v38 != 1)
        {
          break;
        }

        v40 = strcmp(v36, "latin") && IsChineseLetter;
        if (!v40 || v79 != 0)
        {
          break;
        }

        if (strstr(a5, v29))
        {
          v42 = 1;
        }

        else
        {
          v42 = v32;
        }

        v43 = v73;
        if (v42)
        {
          v78 = v19 + 1;
          v19 = *v73;
          a7 = v71;
          goto LABEL_56;
        }

        v44 = ++*v73;
        a7 = v71;
        if (v44 > 2)
        {
          v78 = v19;
          goto LABEL_55;
        }

        if (v71 <= ++v19)
        {
          v78 = v66;
          goto LABEL_57;
        }
      }

      v78 = v19;
      a7 = v71;
      if (*v73)
      {
        goto LABEL_57;
      }

      *v73 = v38;
LABEL_55:
      v43 = &v78;
LABEL_56:
      *v43 = v19 + 1;
LABEL_57:
      ++*a9;
      *(*v65 + 16 * v69) = heap_Calloc(*(v67 + 8), *(*v65 + 16 * v69 + 8), 2);
      v45 = *v65;
      v46 = *v65 + 16 * v69;
      v47 = *v46;
      if (!*v46)
      {
        break;
      }

      v14 = v78;
      v48 = a6 + 16 * v78;
      if (*(v46 + 8) <= *(v48 - 8))
      {
        if (*(v46 + 8))
        {
          v60 = 0;
          v61 = *(v48 - 16);
          do
          {
            *(v47 + 2 * v60) = *(v61 + 2 * v60);
            ++v60;
          }

          while (v60 < *(v46 + 8));
        }
      }

      else
      {
        v49 = heap_Calloc(*(v67 + 8), 1, 1024);
        if (!v49)
        {
          break;
        }

        v50 = v49;
        v51 = *v65 + 16 * v69;
        *(v51 + 12) = 1;
        v52 = *(v51 + 8);
        if (v52)
        {
          v53 = 0;
          v54 = -v52;
          v75 = v14;
          v55 = (a6 - 16 * v52 + 16 * v14);
          v56 = v52 - 1;
          do
          {
            v57 = *v55;
            v55 += 2;
            v58 = *v57;
            *(*(*v65 + 16 * v69) + 2 * (v54 + *(*v65 + 16 * v69 + 8))) = v58;
            sprintf(&v50[v53], "%d-", v58);
            v53 = strlen(v50);
            ++v54;
          }

          while (v56--);
          v52 = *(*v65 + 16 * v69 + 8);
          LODWORD(v14) = v75;
        }

        log_OutText(*(v67 + 32), "FE_PW", 5, 0, "\t group [tids:%s, ntok: %d]", v50, v52);
        heap_Free(*(v67 + 8), v50);
        v45 = *v65;
      }

      v15 = v68 + 1;
      v69 = (v68 + 1);
      v17 = (v45 + 16 * v69 + 8);
      v81 = 0;
      v80 = 0;
      if (v14 >= a7)
      {
        goto LABEL_69;
      }
    }

    v62 = 2584748042;
    v63 = *(v67 + 32);
    goto LABEL_72;
  }

LABEL_69:
  log_OutText(*(v67 + 32), "FE_PW", 5, 0, "pw_group_csc End");
  return 0;
}

uint64_t pw_igtree_process_0(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4, unsigned int a5, uint64_t a6)
{
  v9 = a1;
  inited = 2584748042;
  v11 = *a4;
  v55 = 0;
  v12 = *a3;
  v13 = heap_Calloc(*(a1 + 8), 1, 8 * *(a6 + 1296) - 8);
  if (!v13)
  {
    return inited;
  }

  v14 = v13;
  inited = igtree_initFeatureVector(v9, v13, (*(a6 + 1296) - 1));
  if ((inited & 0x80000000) != 0)
  {
    v15 = 0;
    goto LABEL_52;
  }

  v15 = heap_Calloc(*(v9 + 8), a5, 4);
  if (!v15)
  {
    inited = 2584748042;
    goto LABEL_52;
  }

  v45 = a4;
  v46 = a3;
  if (!v11)
  {
LABEL_45:
    *v45 = v11;
    *v46 = v12;
    goto LABEL_52;
  }

  v16 = 0;
  v17 = 0;
  v52 = a5 - 1;
  v44 = v9;
  v50 = v14;
  while (1)
  {
    LOWORD(v18) = *(v12 + 16 * v16 + 8);
    v51 = v11;
    if (v18)
    {
      if (v52 != v17)
      {
        break;
      }
    }

LABEL_44:
    ++v16;
    v11 = v51;
    if (v16 >= v51)
    {
      goto LABEL_45;
    }
  }

  v19 = 0;
  v20 = 0;
  v48 = (v16 + 2);
  v47 = (v16 + 1);
  v21 = 2;
  while (1)
  {
    v22 = v17;
    *(v15 + 4 * v17) = v18 - 1 == v19;
    v23 = igtree_setFeatureVector(v9, v14, *(a6 + 1312), *(a6 + 1296), a2, a5, v17);
    if ((v23 & 0x80000000) != 0)
    {
      inited = v23;
      goto LABEL_52;
    }

    inited = igtree_Process(a6, v14, &v55);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_52;
    }

    v24 = v15;
    v25 = v55;
    if (!strcmp(v55, "NOMATCH"))
    {
      goto LABEL_38;
    }

    v26 = *v25 == 49 && v25[1] == 0;
    v15 = v24;
    v27 = *(v24 + 4 * v22);
    if (v26 == v27)
    {
      inited = 0;
      goto LABEL_39;
    }

    if (!v27)
    {
      break;
    }

    v28 = v12 + 16 * v16;
    v29 = *(v28 + 24) + *(v28 + 8);
    if (v29 > 4)
    {
      inited = 0;
LABEL_38:
      v15 = v24;
      goto LABEL_39;
    }

    *(v28 + 8) += *(v28 + 24);
    v38 = heap_Realloc(*(v9 + 8), *v28, 2 * v29);
    *v28 = v38;
    if (!v38)
    {
      goto LABEL_49;
    }

    LOWORD(v39) = *(v28 + 24);
    v40 = *(v28 + 16);
    if (v39)
    {
      v41 = 0;
      do
      {
        *(v38 - 2 * v39 + 2 * *(v28 + 8) + 2 * v41) = *(v40 + 2 * v41);
        ++v41;
        v39 = *(v28 + 24);
      }

      while (v41 < v39);
    }

    *(v28 + 12) |= *(v28 + 28);
    heap_Free(*(v9 + 8), v40);
    if (v48 < v51)
    {
      memmove((v28 + 16), (v12 + 16 * v48), 16 * (v51 - v16) - 32);
    }

    inited = 0;
    v51 = (v51 - 1);
    v15 = v24;
    v9 = v44;
LABEL_39:
    v17 = v22 + 1;
    v19 = v20 + 1;
    v18 = *(v12 + 16 * v16 + 8);
    v21 += 2;
    v42 = ++v20 >= v18 || v52 == (v22 + 1);
    v14 = v50;
    if (v42)
    {
      goto LABEL_44;
    }
  }

  v30 = heap_Realloc(*(v9 + 8), v12, 16 * v51 + 16);
  if (v30)
  {
    v31 = v30 + 16 * v16;
    v12 = v30;
    v32 = (v30 + 16 * v47);
    v49 = v31;
    if (v47 < v51)
    {
      memmove((v31 + 32), v32, 16 * (v51 + ~v16));
      v31 = v49;
    }

    v33 = *(v31 + 8) + ~v20;
    *(v32 + 4) = v33;
    v34 = heap_Alloc(*(v9 + 8), 2 * v33);
    *v32 = v34;
    if (!v34)
    {
LABEL_49:
      inited = 2584748042;
      v15 = v24;
      goto LABEL_51;
    }

    if (*(v32 + 4))
    {
      v35 = 0;
      v36 = *v49 + v21;
      do
      {
        *(v34 + 2 * v35) = *(v36 + 2 * v35);
        ++v35;
      }

      while (v35 < *(v32 + 4));
    }

    v37 = *(v49 + 12);
    if (v37 == 1)
    {
      *(v49 + 12) = 0;
    }

    else
    {
      v37 = 0;
    }

    inited = 0;
    *(v32 + 3) = v37;
    *(v49 + 8) = v20 + 1;
    v51 = (v51 + 1);
    goto LABEL_38;
  }

  inited = 2584748042;
LABEL_51:
  v14 = v50;
LABEL_52:
  hlp_igtree_freeFeatureVector(v9, v14, (*(a6 + 1296) - 1));
  heap_Free(*(v9 + 8), v14);
  if (v15)
  {
    heap_Free(*(v9 + 8), v15);
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
        memmove((v17 + 16 * (v12 + 2)), (v17 + 16 * v12 + 16), (((v18 - v12) << 32) - 0x200000000) >> 28);
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
  v10 = strlen(__s);
  checksize_and_realloc(a1, a2, v10, a4, a5);
  v11 = *a2;

  return strcat(v11, __s);
}

char *cstdlib_safe_strncat(uint64_t a1, const char **a2, const char *a3, size_t a4, void *a5)
{
  checksize_and_realloc(a1, a2, a4, a5, 0x40uLL);
  v8 = *a2;

  return strncat(v8, a3, a4);
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
    if (*a2)
    {
      v97 = a2;
      v96 = -1710219254;
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
              goto LABEL_182;
            }

            v21 = v20;
            strncpy(v20, v13 + 2, v19 - 2);
            if (v14)
            {
              v22 = v14;
              v23 = v12;
              v24 = v14;
              while (*v23)
              {
                if (!strcmp(*v23, v21))
                {
                  heap_Free(*(a1 + 8), v21);
                  goto LABEL_31;
                }

                ++v23;
                if (!--v24)
                {
                  break;
                }
              }
            }

            else
            {
              v22 = 0;
            }

            *(v12 + 8 * v22) = v21;
            ++v14;
          }
        }

LABEL_31:
        v13 = hlp_NLUStrNext(v13);
      }

      while (v13);
      if (!v14)
      {
        goto LABEL_161;
      }

      v25 = heap_Realloc(*(a1 + 8), v12, 8 * v14);
      if (v25)
      {
        v26 = v25;
        v27 = heap_Calloc(*(a1 + 8), 2, v14);
        if (v27)
        {
          v91 = v27;
          for (i = *v97; i; i = hlp_NLUStrNext(i))
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
                do
                {
                  v35 = *(v26 + 8 * v33);
                  if (!v35)
                  {
                    break;
                  }

                  if (!strncmp(v35, i + 2, v34))
                  {
                    if ((v33 & 0x8000) == 0)
                    {
                      ++*(v91 + 2 * (v33 & 0x7FFF));
                    }

                    break;
                  }

                  ++v33;
                }

                while (v14 != v33);
              }
            }
          }

          v36 = heap_Calloc(*(a1 + 8), 8, v14);
          if (v36)
          {
            v37 = v36;
            for (j = 0; j != v14; ++j)
            {
              v39 = heap_Calloc(*(a1 + 8), 8, *(v91 + 2 * j));
              *(v37 + 8 * j) = v39;
              if (!v39)
              {
                v40 = 0;
                goto LABEL_167;
              }
            }

            v40 = heap_Calloc(*(a1 + 8), 2, v14);
            if (v40)
            {
              for (k = *v97; k; k = hlp_NLUStrNext(k))
              {
                v42 = hlp_NLUStrKeyLen(k);
                if (v42 >= 3)
                {
                  v43 = *k - 69;
                  v7 = v43 > 0xE;
                  v44 = (1 << v43) & 0x4011;
                  if (!v7 && v44 != 0 && k[1] == 95)
                  {
                    KeyIdx = hlp_getKeyIdx(v26, v14, k + 2, (v42 - 2));
                    if ((KeyIdx & 0x80000000) == 0)
                    {
                      v47 = KeyIdx;
                      v93 = *(v37 + 8 * KeyIdx);
                      v48 = hlp_NLUStrKeyValue(k);
                      v49 = v48;
                      v50 = v48 ? hlp_NLUStrLength(v48) : 0;
                      v51 = v50;
                      if (!hlp_checkValExist(v93, *(v40 + 2 * v47), v49, v50))
                      {
                        v52 = heap_Calloc(*(a1 + 8), 1, v51 + 2);
                        if (!v52)
                        {
                          goto LABEL_167;
                        }

                        if (v49)
                        {
                          v52 = strncpy(v52, v49, v51);
                        }

                        else
                        {
                          *v52 = 32;
                        }

                        v53 = *(v40 + 2 * v47);
                        *&v93[8 * v53] = v52;
                        *(v40 + 2 * v47) = v53 + 1;
                      }
                    }
                  }
                }
              }

              v54 = 0;
              v55 = v97;
              do
              {
                v56 = heap_Realloc(*(a1 + 8), *(v37 + 8 * v54), 8 * *(v40 + 2 * v54));
                if (!v56)
                {
                  goto LABEL_167;
                }

                *(v37 + 8 * v54++) = v56;
              }

              while (v14 != v54);
              v57 = 0;
              while (!*(v40 + 2 * v57))
              {
LABEL_158:
                if (++v57 == v14)
                {
                  v96 = 0;
                  goto LABEL_167;
                }
              }

              v58 = 0;
              v86 = v57;
              while (2)
              {
                __s = *(v26 + 8 * v57);
                v59 = *(*(v37 + 8 * v57) + 8 * v58);
                v60 = *v55;
                v99 = 0;
                __s2 = 0;
                if (!v60)
                {
                  goto LABEL_131;
                }

                v89 = v60;
                v90 = v58;
                __s1 = v59;
                if (v59)
                {
                  v88 = strlen(v59);
                }

                else
                {
                  v88 = 0;
                }

                v61 = strlen(__s);
                v62 = heap_Calloc(*(a1 + 8), 1, v61 + 3);
                if (!v62)
                {
                  goto LABEL_167;
                }

                v63 = v62;
                strcpy(v62, "S_");
                strcat(v62, __s);
                v64 = strlen(__s);
                v65 = heap_Calloc(*(a1 + 8), 1, v64 + 3);
                if (!v65)
                {
                  v95 = 0;
                  v70 = 0;
                  v72 = -1710219254;
                  goto LABEL_125;
                }

                strcpy(v65, "I_");
                v66 = v65;
                strcat(v65, __s);
                v67 = strlen(__s);
                v68 = heap_Calloc(*(a1 + 8), 1, v67 + 3);
                if (!v68)
                {
                  v95 = 0;
                  v72 = -1710219254;
                  v70 = v66;
                  goto LABEL_125;
                }

                strcpy(v68, "E_");
                v94 = v68;
                strcat(v68, __s);
                v69 = __s1;
                v70 = v66;
                if (!hlp_NLUStrFind(v89, v63, &__s2, &v99) || (!__s1 || v99 || *__s1 != 32 || __s1[1]) && (!__s1 || v88 != v99 || strncmp(__s1, __s2, v99)))
                {
                  heap_Free(*(a1 + 8), v63);
                  v63 = 0;
                }

                if (!hlp_NLUStrFind(v89, v66, &__s2, &v99) || (!__s1 || v99 || *__s1 != 32 || __s1[1]) && (!__s1 || v88 != v99 || strncmp(__s1, __s2, v99)))
                {
                  heap_Free(*(a1 + 8), v66);
                  v70 = 0;
                }

                if (hlp_NLUStrFind(v89, v94, &__s2, &v99))
                {
                  if (__s1 && !v99 && *__s1 == 32 && !__s1[1])
                  {
                    goto LABEL_117;
                  }

                  if (__s1 && v88 == v99)
                  {
                    if (strncmp(__s1, __s2, v99))
                    {
                      heap_Free(*(a1 + 8), v94);
                      v71 = 0;
LABEL_118:
                      if (*__s1 == 32 && !__s1[1])
                      {
                        v95 = v71;
                        v69 = 0;
                      }

                      else
                      {
LABEL_120:
                        v95 = v71;
                      }

                      hlp_NLUStrRemoveRangeKey(v89, __s, v69);
                      if (v63)
                      {
                        if (!v70)
                        {
                          v73 = v63;
                          if (!v95)
                          {
                            goto LABEL_124;
                          }
                        }
                      }

                      if (v63)
                      {
                        v75 = 1;
                      }

                      else
                      {
                        v75 = v70 == 0;
                      }

                      v76 = !v75;
                      if (!v75)
                      {
                        v77 = v70;
                        if (!v95)
                        {
LABEL_141:
                          hlp_NLUStrAppendKeyVal(v89, v77, v69);
                          v72 = 0;
LABEL_127:
                          heap_Free(*(a1 + 8), v70);
LABEL_128:
                          v55 = v97;
                          v58 = v90;
                          v74 = v95;
                          if (v95)
                          {
LABEL_129:
                            heap_Free(*(a1 + 8), v74);
                          }

                          v57 = v86;
                          if (v72 < 0)
                          {
                            v96 = v72;
                            goto LABEL_167;
                          }

LABEL_131:
                          if (++v58 >= *(v40 + 2 * v57))
                          {
                            goto LABEL_158;
                          }

                          continue;
                        }
                      }

                      if (!v63 && !v70 && v95)
                      {
                        hlp_NLUStrAppendKeyVal(v89, v95, v69);
                        v74 = v95;
                        v72 = 0;
                        v55 = v97;
                        v58 = v90;
                        goto LABEL_129;
                      }

                      if (v63 && v95)
                      {
                        hlp_NLUStrAppendKeyVal(v89, v63, v69);
                        v73 = v95;
                        goto LABEL_124;
                      }

                      if (v63 && v70 && (v73 = v63, !v95))
                      {
LABEL_124:
                        hlp_NLUStrAppendKeyVal(v89, v73, v69);
                        v72 = 0;
                      }

                      else
                      {
                        if (!v95)
                        {
                          v76 = 0;
                        }

                        v77 = v95;
                        if (v76)
                        {
                          goto LABEL_141;
                        }

                        v72 = 0;
                        if (!v63)
                        {
LABEL_126:
                          if (v70)
                          {
                            goto LABEL_127;
                          }

                          goto LABEL_128;
                        }
                      }

LABEL_125:
                      heap_Free(*(a1 + 8), v63);
                      goto LABEL_126;
                    }

LABEL_117:
                    v71 = v94;
                    goto LABEL_118;
                  }
                }

                break;
              }

              heap_Free(*(a1 + 8), v94);
              v71 = 0;
              if (__s1)
              {
                goto LABEL_118;
              }

              goto LABEL_120;
            }

LABEL_167:
            for (m = 0; m != v14; ++m)
            {
              v79 = *(v37 + 8 * m);
              if (v79)
              {
                if (v40)
                {
                  v80 = *(v40 + 2 * m);
                  if (v80)
                  {
                    for (n = 0; n < v80; ++n)
                    {
                      v82 = *(*(v37 + 8 * m) + 8 * n);
                      if (v82)
                      {
                        heap_Free(*(a1 + 8), v82);
                        v80 = *(v40 + 2 * m);
                      }
                    }

                    v79 = *(v37 + 8 * m);
                  }
                }

                heap_Free(*(a1 + 8), v79);
              }
            }

            heap_Free(*(a1 + 8), v37);
            if (v40)
            {
              heap_Free(*(a1 + 8), v40);
            }

            v10 = v96;
          }

          else
          {
            v10 = 2584748042;
          }

          heap_Free(*(a1 + 8), v91);
          v12 = v26;
LABEL_182:
          if (!v14)
          {
            goto LABEL_188;
          }

LABEL_183:
          for (ii = 0; ii != v14; ++ii)
          {
            v84 = *(v26 + 8 * ii);
            if (v84)
            {
              heap_Free(*(a1 + 8), v84);
            }
          }

          v12 = v26;
          goto LABEL_188;
        }
      }

      else
      {
        v26 = v12;
      }

      v10 = 2584748042;
      goto LABEL_183;
    }

LABEL_161:
    v10 = 0;
LABEL_188:
    heap_Free(*(a1 + 8), v12);
  }

  return v10;
}

char *pw_split_csc_pw_0(char *result, uint64_t a2, const char **a3, unint64_t *a4)
{
  if (*(a2 + 12) == 1 && (*(a2 + 8) & 0xFFFE) == 4)
  {
    v5 = *a3;
    if (*a3)
    {
      v7 = result;
      v8 = 1;
      v9 = *a3;
      do
      {
        v10 = v8;
        result = strchr(v9, 46);
        if (result)
        {
          v9 = result + 1;
        }

        else
        {
          v9 = 0;
        }

        if (!result)
        {
          break;
        }

        v8 = 0;
      }

      while ((v10 & 1) != 0);
      if (result)
      {
        v11 = strlen(v5) + 7;
        v12 = *a4;
        if (v11 > *a4)
        {
          result = heap_Realloc(*(v7 + 1), v5, v11);
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
          v14 = strncpy(result, *a3, (~*a3 + v9));
          strcpy(&v13[strlen(v14)], "{SEP2}");
          strcat(v13, v9);
          v15 = *a3;

          return strcpy(v15, v13);
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

void checksize_and_realloc(uint64_t a1, const char **a2, uint64_t a3, void *a4, unint64_t a5)
{
  v10 = *a2;
  v11 = strlen(*a2);
  if (a3 + 1 + v11 > *a4)
  {
    v12 = v11;
    if (a3 + 1 > a5)
    {
      a5 = a3 + 1;
    }

    v13 = heap_Realloc(*(a1 + 8), v10, *a4 + a5);
    if (v13)
    {
      *a2 = v13;
      v14 = *a4 + a5;
      *a4 = v14;
      v15 = &v13[v12];

      bzero(v15, v14 - v12);
    }
  }
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
  v9 = 0;
  v8 = -1;
  v7 = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "statbnd_igtree", &v9, &v8, &v7);
  if ((v5 & 0x80000000) == 0 && v8 == 1)
  {
    (*v9)[strlen(*v9) - 1] = 0;
    if (!strcmp(*v9, "yes"))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t load_igtree(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(v17, 0, 240);
  *v14 = 0;
  v15 = 0;
  *a4 = 0;
  *v16 = 0;
  memset(v18, 0, 128);
  v17[15] = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", v16);
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v15), (Str & 0x80000000) != 0) || (__strcat_chk(), __strcat_chk(), __strcat_chk(), __strcat_chk(), Str = brokeraux_ComposeBrokerString(a3, v18, 1, 1, *v16, 0, 0, v17, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v17, "IGTR", 1031, v14), (Str & 0x80000000) != 0))
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

uint64_t igtree_initFeatureVector(uint64_t a1, void *a2, unsigned int a3)
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

  log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0);
  return 2584748042;
}

uint64_t igtree_setFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v10 = a4;
  v78 = 0;
  v14 = heap_Calloc(*(a1 + 8), 1, 2048);
  if (v14)
  {
    v15 = v14;
    if (v10 < 2)
    {
      v18 = 0;
    }

    else
    {
      v77 = a7;
      v16 = 0;
      v17 = (v10 - 1);
      while (strcmp(*(a3 + 8 * v16), "word"))
      {
        if (v17 == ++v16)
        {
          goto LABEL_24;
        }
      }

      v78 = v16;
LABEL_24:
      v27 = 0;
      if (v17 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = (v10 - 1);
      }

      while (strcmp(*(a3 + 8 * v27), "word"))
      {
        if (v28 == ++v27)
        {
          v18 = 0;
          goto LABEL_34;
        }
      }

      v78 = v27;
      if (v77 >= a6)
      {
        v29 = "=";
      }

      else
      {
        v29 = *(a5 + 40 * v77);
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 0, a2, v29);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_34:
      v76 = a2;
      v30 = 0;
      while (strcmp(*(a3 + 8 * v30), "lword"))
      {
        if (v28 == ++v30)
        {
          goto LABEL_42;
        }
      }

      v78 = v30;
      if (v77 - 1 >= a6)
      {
        v31 = "=";
      }

      else
      {
        v31 = *(a5 + 40 * (v77 - 1));
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 1, v76, v31);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_42:
      v32 = 0;
      while (strcmp(*(a3 + 8 * v32), "llword"))
      {
        if (v28 == ++v32)
        {
          goto LABEL_50;
        }
      }

      v78 = v32;
      if (v77 - 2 >= a6)
      {
        v33 = "=";
      }

      else
      {
        v33 = *(a5 + 40 * (v77 - 2));
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 2, v76, v33);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_50:
      v34 = 0;
      while (strcmp(*(a3 + 8 * v34), "rword"))
      {
        if (v28 == ++v34)
        {
          goto LABEL_58;
        }
      }

      v78 = v34;
      if (v77 + 1 >= a6)
      {
        v35 = "=";
      }

      else
      {
        v35 = *(a5 + 40 * (v77 + 1));
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 3, v76, v35);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_58:
      v36 = 0;
      while (strcmp(*(a3 + 8 * v36), "rrword"))
      {
        if (v28 == ++v36)
        {
          goto LABEL_66;
        }
      }

      v78 = v36;
      if (v77 + 2 >= a6)
      {
        v37 = "=";
      }

      else
      {
        v37 = *(a5 + 40 * (v77 + 2));
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 4, v76, v37);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_66:
      v38 = 0;
      while (strcmp(*(a3 + 8 * v38), "wordlen"))
      {
        if (v28 == ++v38)
        {
          goto LABEL_74;
        }
      }

      v78 = v38;
      *v15 = 0;
      if (v77 >= a6)
      {
        *v15 = 61;
      }

      else
      {
        sprintf(v15, "%d", *(a5 + 40 * v77 + 26));
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 5, v76, v15);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_74:
      v39 = 0;
      while (strcmp(*(a3 + 8 * v39), "lwordlen"))
      {
        if (v28 == ++v39)
        {
          goto LABEL_90;
        }
      }

      v78 = v39;
      *v15 = 0;
      if (v77 - 1 >= a6)
      {
        *v15 = 61;
      }

      else
      {
        sprintf(v15, "%d", *(a5 + 40 * (v77 - 1) + 26));
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 6, v76, v15);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_90:
      v44 = 0;
      while (strcmp(*(a3 + 8 * v44), "rwordlen"))
      {
        if (v28 == ++v44)
        {
          goto LABEL_118;
        }
      }

      v78 = v44;
      *v15 = 0;
      if (v77 + 1 >= a6)
      {
        *v15 = 61;
      }

      else
      {
        sprintf(v15, "%d", *(a5 + 40 * (v77 + 1) + 26));
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 7, v76, v15);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_118:
      v53 = 0;
      while (strcmp(*(a3 + 8 * v53), "pos"))
      {
        if (v28 == ++v53)
        {
          goto LABEL_126;
        }
      }

      v78 = v53;
      if (v77 >= a6)
      {
        v54 = "=";
      }

      else
      {
        v54 = *(a5 + 40 * v77 + 8);
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 8, v76, v54);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_126:
      v55 = 0;
      while (strcmp(*(a3 + 8 * v55), "lpos"))
      {
        if (v28 == ++v55)
        {
          goto LABEL_142;
        }
      }

      v78 = v55;
      if (v77 - 1 >= a6)
      {
        v56 = "=";
      }

      else
      {
        v56 = *(a5 + 40 * (v77 - 1) + 8);
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 9, v76, v56);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_142:
      v59 = 0;
      while (strcmp(*(a3 + 8 * v59), "llpos"))
      {
        if (v28 == ++v59)
        {
          goto LABEL_150;
        }
      }

      v78 = v59;
      if (v77 - 2 >= a6)
      {
        v60 = "=";
      }

      else
      {
        v60 = *(a5 + 40 * (v77 - 2) + 8);
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 10, v76, v60);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_150:
      v61 = 0;
      while (strcmp(*(a3 + 8 * v61), "rpos"))
      {
        if (v28 == ++v61)
        {
          goto LABEL_166;
        }
      }

      v78 = v61;
      if (v77 + 1 >= a6)
      {
        v62 = "=";
      }

      else
      {
        v62 = *(a5 + 40 * (v77 + 1) + 8);
      }

      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 11, v76, v62);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_166:
      v65 = 0;
      while (strcmp(*(a3 + 8 * v65), "rrpos"))
      {
        if (v28 == ++v65)
        {
          a2 = v76;
          a7 = v77;
          goto LABEL_9;
        }
      }

      v78 = v65;
      a7 = v77;
      if (v77 + 2 >= a6)
      {
        v66 = "=";
      }

      else
      {
        v66 = *(a5 + 40 * (v77 + 2) + 8);
      }

      a2 = v76;
      v18 = hlp_igtree_setFeature_0(a1, a3, v10, 12, v76, v66);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_203;
      }
    }

LABEL_9:
    if (!hlp_igtree_isFeatureRequired_0(a3, v10, 13, &v78) || (v19 = feat_char(a5, a7, 0, v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 13, a2, v19), (v18 & 0x80000000) == 0))
    {
      if (!hlp_igtree_isFeatureRequired_0(a3, v10, 15, &v78) || (v20 = feat_char(a5, a7, 1, v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 15, a2, v20), (v18 & 0x80000000) == 0))
      {
        if (!hlp_igtree_isFeatureRequired_0(a3, v10, 14, &v78) || (v21 = feat_char(a5, a7, -1, v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 14, a2, v21), (v18 & 0x80000000) == 0))
        {
          if (!hlp_igtree_isFeatureRequired_0(a3, v10, 16, &v78) || (v22 = feat_char(a5, a7, -2, v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 16, a2, v22), (v18 & 0x80000000) == 0))
          {
            if (!hlp_igtree_isFeatureRequired_0(a3, v10, 17, &v78))
            {
              goto LABEL_207;
            }

            if (a7)
            {
              v23 = a7 + 4294967294;
              v24 = a7 - 1;
              v25 = "=";
              while (v24)
              {
                v26 = a5 + 40 * v23--;
                --v24;
                if (**(v26 + 8) == 110)
                {
                  v25 = *v26;
                  break;
                }
              }
            }

            else
            {
              v25 = "=";
            }

            v18 = hlp_igtree_setFeature_0(a1, a3, v10, 17, a2, v25);
            if ((v18 & 0x80000000) == 0)
            {
LABEL_207:
              if (!hlp_igtree_isFeatureRequired_0(a3, v10, 18, &v78))
              {
                goto LABEL_208;
              }

              if (a7)
              {
                v40 = a7 + 4294967294;
                v41 = a7 - 1;
                v42 = "=";
                while (v41)
                {
                  v43 = a5 + 40 * v40--;
                  --v41;
                  if (**(v43 + 8) == 118)
                  {
                    v42 = *v43;
                    break;
                  }
                }
              }

              else
              {
                v42 = "=";
              }

              v18 = hlp_igtree_setFeature_0(a1, a3, v10, 18, a2, v42);
              if ((v18 & 0x80000000) == 0)
              {
LABEL_208:
                if (!hlp_igtree_isFeatureRequired_0(a3, v10, 19, &v78))
                {
                  goto LABEL_209;
                }

                v45 = "=";
                v46 = a7;
                while (a6 > ++v46)
                {
                  v47 = a5 + 40 * v46;
                  if (**(v47 + 8) == 110)
                  {
                    v45 = *v47;
                    break;
                  }
                }

                v18 = hlp_igtree_setFeature_0(a1, a3, v10, 19, a2, v45);
                if ((v18 & 0x80000000) == 0)
                {
LABEL_209:
                  if (!hlp_igtree_isFeatureRequired_0(a3, v10, 19, &v78))
                  {
                    goto LABEL_210;
                  }

                  v48 = "=";
                  v49 = a7;
                  while (a6 > ++v49)
                  {
                    v50 = a5 + 40 * v49;
                    if (**(v50 + 8) == 118)
                    {
                      v48 = *v50;
                      break;
                    }
                  }

                  v18 = hlp_igtree_setFeature_0(a1, a3, v10, 20, a2, v48);
                  if ((v18 & 0x80000000) == 0)
                  {
LABEL_210:
                    if (!hlp_igtree_isFeatureRequired_0(a3, v10, 21, &v78) || (a7 >= a6 ? (v52 = "=") : ((v15[1] = 0, *(a5 + 40 * a7 + 26) > 5u) ? (v51 = 48) : (v51 = 49), *v15 = v51, v52 = v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 21, a2, v52), (v18 & 0x80000000) == 0))
                    {
                      if (!hlp_igtree_isFeatureRequired_0(a3, v10, 22, &v78) || (a7 >= a6 ? (v58 = "=") : ((v15[1] = 0, *(a5 + 40 * a7 + 26) < 2u) ? (v57 = 48) : (v57 = 49), *v15 = v57, v58 = v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 22, a2, v58), (v18 & 0x80000000) == 0))
                      {
                        if (!hlp_igtree_isFeatureRequired_0(a3, v10, 23, &v78) || (a7 - 1 >= a6 ? (v64 = "=") : ((v15[1] = 0, *(a5 + 40 * (a7 - 1) + 26) > 5u) ? (v63 = 48) : (v63 = 49), *v15 = v63, v64 = v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 23, a2, v64), (v18 & 0x80000000) == 0))
                        {
                          if (!hlp_igtree_isFeatureRequired_0(a3, v10, 24, &v78) || (a7 - 1 >= a6 ? (v68 = "=") : ((v15[1] = 0, *(a5 + 40 * (a7 - 1) + 26) < 2u) ? (v67 = 48) : (v67 = 49), *v15 = v67, v68 = v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 24, a2, v68), (v18 & 0x80000000) == 0))
                          {
                            if (!hlp_igtree_isFeatureRequired_0(a3, v10, 25, &v78) || (a7 + 1 >= a6 ? (v70 = "=") : ((v15[1] = 0, *(a5 + 40 * (a7 + 1) + 26) > 5u) ? (v69 = 48) : (v69 = 49), *v15 = v69, v70 = v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 25, a2, v70), (v18 & 0x80000000) == 0))
                            {
                              if (!hlp_igtree_isFeatureRequired_0(a3, v10, 26, &v78) || (a7 + 1 >= a6 ? (v72 = "=") : ((v15[1] = 0, *(a5 + 40 * (a7 + 1) + 26) < 2u) ? (v71 = 48) : (v71 = 49), *v15 = v71, v72 = v15), v18 = hlp_igtree_setFeature_0(a1, a3, v10, 26, a2, v72), (v18 & 0x80000000) == 0))
                              {
                                v73 = 0;
                                v74 = v78;
                                do
                                {
                                  log_OutText(*(a1 + 32), "FE_PW", 5, 0, "igtree feature %s", *(a2 + 8 * v73++));
                                }

                                while (v74 >= v73);
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

LABEL_203:
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

uint64_t hlp_igtree_setFeature_0(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v13 = -1;
  result = hlp_igtree_isFeatureRequired_0(a2, a3, a4, &v13);
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
      v12 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v13), (v11 + 1));
      if (!v12)
      {
        log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0);
        return 2584748042;
      }

      *(a5 + 8 * v10) = v12;
    }

    strcpy(v12, a6);
    return 0;
  }

  return result;
}

uint64_t pw_dag_process(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, unsigned int *a10, unsigned int a11, uint64_t *a12, unsigned __int16 *a13)
{
  v18 = heap_Alloc(*(a1 + 8), 24);
  if (!v18)
  {
    v71 = 2584748042;
    v72 = *(a1 + 32);
LABEL_78:
    log_OutPublic(v72, "FE_PW", 37000, 0);
    return v71;
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
  v21 = heap_Alloc(*(a1 + 8), 16 * (a9 + 1));
  *v19 = v21;
  v22 = a1;
  if (!v21)
  {
    v71 = 2584748042;
    log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0);
    v73 = *(a1 + 8);
    v74 = v19;
    goto LABEL_76;
  }

  v23 = v19[4];
  if (v19[4])
  {
    v24 = (v21 + 12);
    do
    {
      *(v24 - 6) = 0;
      *(v24 - 1) = -2147483647;
      *v24 = -1;
      v24 += 8;
      --v23;
    }

    while (v23);
  }

  v25 = heap_Alloc(*(a1 + 8), a4 + 11);
  if (!v25)
  {
    v71 = 2584748042;
    v72 = *(a1 + 32);
    goto LABEL_78;
  }

  v26 = v25;
  v118 = a1;
  if (!a9)
  {
    heap_Free(*(a1 + 8), v25);
LABEL_81:
    if (!*v19)
    {
      return 2584748039;
    }

    v76 = v19[4];
    v77 = v19[4];
    *(*v19 + 8) = 0;
    log_OutText(*(v22 + 32), "FE_PW", 5, 0, "[DAG]: All possible path, <vertex_from: vertex_to>: weight, accumulated weight");
    if (v76 >= 1)
    {
      v78 = 0;
      v79 = *v19;
      do
      {
        for (i = *(v79 + 16 * v78); i; i = *i)
        {
          v81 = *(i + 3);
          v82 = *(i + 4) + *(v79 + 16 * v78 + 8);
          log_OutText(*(v22 + 32), "FE_PW", 5, 0, "<%d: %d>: %d, %d", v78, *(i + 3), *(i + 4), v82);
          v79 = *v19;
          v83 = *v19 + 16 * v81;
          if (v82 > *(v83 + 8))
          {
            *(v83 + 8) = v82;
            *(v83 + 12) = v78;
          }
        }

        ++v78;
      }

      while (v78 != v77);
    }

    v84 = heap_Alloc(*(v22 + 8), 16);
    if (!v84)
    {
      goto LABEL_122;
    }

    v85 = v84;
    v86 = heap_Alloc(*(v22 + 8), 2 * v77);
    *v85 = v86;
    if (!v86)
    {
      log_OutPublic(*(v22 + 32), "FE_PW", 37000, 0);
      if (*v85)
      {
        heap_Free(*(v22 + 8), *v85);
        *v85 = 0;
      }

      heap_Free(*(v22 + 8), v85);
      return 2584748042;
    }

    *(v85 + 8) = 0;
    v87 = (v77 - 1);
    *v86 = v77 - 1;
    v88 = *(v85 + 8);
    v89 = v88 + 1;
    *(v85 + 8) = v88 + 1;
    if (v87 >= 1)
    {
      v90 = *v19;
      do
      {
        v87 = *(v90 + 16 * v87 + 12);
        v86[v89] = v87;
        v88 = *(v85 + 8);
        v89 = v88 + 1;
        *(v85 + 8) = v88 + 1;
      }

      while (v87 > 0);
    }

    *a13 = v88;
    v91 = heap_Calloc(*(v22 + 8), v88, 16);
    *a12 = v91;
    if (!v91)
    {
LABEL_122:
      log_OutPublic(*(v22 + 32), "FE_PW", 37000, 0);
      return 2584748042;
    }

    v92 = *a13;
    if (!*a13)
    {
LABEL_112:
      heap_Free(*(v118 + 8), *v85);
      heap_Free(*(v118 + 8), v85);
      v112 = *v19;
      if (*v19)
      {
        v113 = v19[4];
        if (v19[4])
        {
          v114 = 0;
          do
          {
            v115 = *(*v19 + 16 * v114);
            if (v115)
            {
              do
              {
                v116 = *v115;
                heap_Free(*(v118 + 8), v115);
                v115 = v116;
              }

              while (v116);
            }

            ++v114;
          }

          while (v114 != v113);
          v112 = *v19;
        }
      }

      heap_Free(*(v118 + 8), v112);
      heap_Free(*(v118 + 8), v19);
      return 0;
    }

    v93 = v91;
    v94 = 0;
    v95 = "FE_PW";
    v117 = v19;
    v123 = v85;
    while (1)
    {
      v96 = v95;
      v126 = v94;
      v97 = (*v85 + 2 * (v92 - v94));
      v98 = *(v97 - 1);
      v99 = *v97;
      v100 = heap_Alloc(*(v118 + 8), 2 * (v98 - v99));
      if (!v100)
      {
        log_OutPublic(*(v118 + 32), "FE_PW", 37000, 0);
        if (*a12)
        {
          heap_Free(*(v118 + 8), *a12);
          *a12 = 0;
        }

        return 2584748042;
      }

      v101 = v100;
      *(v93 + 8) = v98 - v99;
      *v93 = v100;
      log_OutText(*(v118 + 32), v96, 5, 0, "Orthography is: ");
      if (v98 == v99)
      {
        v102 = heap_Calloc(*(v118 + 8), 1, 1000);
        v95 = v96;
        v103 = a13;
        v85 = v123;
        v104 = v126;
        if (!v102)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v121 = (v98 - v99);
        if (v121 <= 1)
        {
          v105 = 1;
        }

        else
        {
          v105 = (v98 - v99);
        }

        v106 = a8;
        v103 = a13;
        v85 = v123;
        v104 = v126;
        do
        {
          v107 = v106 + 40 * *(*v123 + 2 * (*a13 - v126));
          v108 = *(v107 + 24);
          log_OutText(*(v118 + 32), v96, 5, 0, "    %s [tid: %d, pos: %s]    ", *v107, v108, *(v107 + 8));
          *v101++ = v108;
          v106 += 40;
          --v105;
        }

        while (v105);
        v109 = heap_Calloc(*(v118 + 8), 1, 1000);
        v19 = v117;
        v95 = v96;
        if (!v109)
        {
          goto LABEL_111;
        }

        v102 = v109;
        v110 = 0;
        v111 = 0;
        do
        {
          sprintf(&v102[v111], "%d-", *(*v93 + 2 * v110));
          v111 = strlen(v102);
          ++v110;
        }

        while (v121 > v110);
        v103 = a13;
      }

      log_OutText(*(v118 + 32), v95, 5, 0, "PW [tids:%s, ntok:%d]", v102, *(v93 + 8));
      heap_Free(*(v118 + 8), v102);
LABEL_111:
      v93 += 16;
      v94 = v104 + 1;
      v92 = *v103;
      if (v94 >= v92)
      {
        goto LABEL_112;
      }
    }
  }

  v27 = 0;
  v28 = 0;
  v29 = a7 + 512;
  while (1)
  {
    v122 = v28;
    v128 = (a8 + 40 * v28);
    v30 = *v128;
    if (strlen(*v128) > 5 || !strcmp(v128[2], "latin"))
    {
      goto LABEL_69;
    }

    v31 = *(a7 + 1024);
    if (v31)
    {
      v32 = 0;
      while (*(a7 + 4 * v32) > *(v128 + 7) || *(v128 + 8) > *(v29 + 4 * v32))
      {
        if (v31 <= ++v32)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_69;
    }

LABEL_18:
    rules = pw_get_rules(a2, a3, v30);
    if (!rules)
    {
      log_OutText(*(v118 + 32), "FE_PW", 5, 0, "Warning: Can't find rules for the character %s", *v128);
      goto LABEL_69;
    }

    v125 = *(rules + 8);
    if (*(rules + 8))
    {
      break;
    }

LABEL_69:
    v28 = v122 + 1;
    v27 = (v122 + 1);
    if (v27 >= a9)
    {
      v22 = v118;
      heap_Free(*(v118 + 8), v26);
      v69 = 0;
      while (1)
      {
        inserted = dag_insert_edge(v118, v19, v69, v69 + 1, *(v19 + 4));
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        if (a9 <= ++v69)
        {
          goto LABEL_81;
        }
      }
    }
  }

  v34 = 0;
  v124 = *(rules + 16);
  while (1)
  {
    v35 = v19;
    v36 = v124 + 40 * v34;
    *v26 = 0;
    v37 = *(v36 + 36);
    if (v27 >= v37 && a9 - v27 > *(v36 + 38))
    {
      if (*(v36 + 36))
      {
        v38 = 0;
        v39 = 0;
        v40 = a8;
        while (1)
        {
          v41 = v38 + v27 - v37;
          v42 = v40 + 40 * v41;
          if (!strcmp(*(v42 + 16), "latin"))
          {
            goto LABEL_35;
          }

          v43 = *(a7 + 1024);
          if (v43)
          {
            v44 = 0;
            while (*(a7 + 4 * v44) > *(v42 + 28) || *(v42 + 32) > *(v29 + 4 * v44))
            {
              if (v43 <= ++v44)
              {
                goto LABEL_31;
              }
            }

            goto LABEL_35;
          }

LABEL_31:
          v45 = strcat(v26, *(a8 + 40 * v41 + 8));
          v46 = strlen(v45);
          v40 = a8;
          *&v26[v46] = 45;
          v38 = ++v39;
          v37 = *(v36 + 36);
          if (v39 >= v37)
          {
            goto LABEL_34;
          }
        }
      }

      v40 = a8;
LABEL_34:
      v47 = *(v40 + 40 * (v27 - v37) + 28);
      v48 = strlen(v26);
      if (!strncmp(v26, v36, v48))
      {
        strcat(v26, *v128);
        if (*(v36 + 38))
        {
          v49 = 0;
          v50 = 0;
          while (1)
          {
            v51 = a8 + 40 * (v49 + v27);
            if (!strcmp(*(v51 + 56), "latin"))
            {
              goto LABEL_35;
            }

            v52 = *(a7 + 1024);
            if (v52)
            {
              v53 = 0;
              while (*(a7 + 4 * v53) > *(v51 + 68) || *(v51 + 72) > *(v29 + 4 * v53))
              {
                if (v52 <= ++v53)
                {
                  goto LABEL_45;
                }
              }

              goto LABEL_35;
            }

LABEL_45:
            *&v26[strlen(v26)] = 45;
            strcat(v26, *(v51 + 48));
            v49 = ++v50;
            v54 = *(v36 + 38);
            if (v50 >= v54)
            {
              v55 = *(v36 + 38);
              v56 = v54;
              goto LABEL_48;
            }
          }
        }

        v56 = 0;
        v55 = 0;
LABEL_48:
        if (!strcmp(v26, v36))
        {
          if (a11)
          {
            v57 = a10;
            v58 = a11;
            do
            {
              v60 = *v57++;
              v59 = v60;
              if (v60 > v47 && v59 < *(a8 + 40 * (v55 + v27) + 32))
              {
                goto LABEL_35;
              }
            }

            while (--v58);
          }

          v62 = *(v36 + 36);
          v63 = v122 - v62;
          if (v27 + v56 < (v122 - v62))
          {
            break;
          }

          v64 = 0;
          v65 = 0;
          do
          {
            v66 = *(a8 + 40 * v63 + 26);
            v65 += v66;
            if (v66 > 1)
            {
              ++v64;
            }

            ++v63;
          }

          while (v27 + v56 >= v63);
          if (v64 <= 1u && v65 <= 5u)
          {
            break;
          }
        }
      }
    }

LABEL_35:
    ++v34;
    v19 = v35;
    if (v125 <= v34)
    {
      goto LABEL_69;
    }
  }

  v68 = dag_insert_edge(v118, v35, v122 - v62, v122 + 1 + v55, *(v36 + 32));
  if ((v68 & 0x80000000) == 0)
  {
    log_OutText(*(v118 + 32), "FE_PW", 5, 0, "%s Matches rule %s with weight %d, and insert edges between point %d and %d", *v128, v26, *(v36 + 32), v27 - *(v36 + 36), v27 + 1 + *(v36 + 38));
    goto LABEL_35;
  }

  v71 = v68;
  v73 = *(v118 + 8);
  v74 = v26;
LABEL_76:
  heap_Free(v73, v74);
  return v71;
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
  v104 = *MEMORY[0x1E69E9840];
  memset(__dst, 0, 32);
  memset(v102, 0, sizeof(v102));
  v84 = 0;
  memset(v101, 0, sizeof(v101));
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  *__s = 0u;
  v86 = 0u;
  *a7 = 0;
  *a8 = 0;
  *a9 = 10000;
  *a11 = 0;
  ssftriff_reader_ReadStringZ(a2, a3, a4, 0, 0, &v84);
  v83 = a2;
  ssftriff_reader_ReadStringZ(a2, a3, a4, 0, __s, &v84);
  v19 = v84;
  v20 = strchr(__s, 9);
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v82 = a3;
  v22 = strchr(v20 + 1, 9);
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  v80 = a4;
  *v22 = 0;
  v24 = atoi(v21 + 1);
  *a11 = v24;
  v25 = heap_Calloc(*(a1 + 8), v24, 8);
  *a10 = v25;
  if (!v25)
  {
    v66 = 2584748042;
    log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0);
    return v66;
  }

  v26 = v25;
  v77 = a5;
  v78 = a7;
  v76 = a8;
  v81 = a6;
  if (!*a11)
  {
LABEL_8:
    v34 = v83;
    v35 = v82;
    v36 = v80;
    ssftriff_reader_ReadStringZ(v83, v82, v80, v19, 0, &v84);
    ssftriff_reader_ReadStringZ(v83, v82, v80, v19, __dst, &v84);
    v37 = v84 + v19;
    v84 = 0;
    ssftriff_reader_ReadStringZ(v83, v82, v80, v37, 0, &v84);
    ssftriff_reader_ReadStringZ(v83, v82, v80, v37, v102, &v84);
    v38 = v84;
    v39 = atoi(v102);
    v40 = v81;
    *v81 = v39;
    v41 = heap_Calloc(*(a1 + 8), v39, 32);
    if (!v41)
    {
      goto LABEL_45;
    }

    v79 = v41;
    if (!*v81)
    {
      goto LABEL_42;
    }

    v42 = v38 + v37;
    v43 = 0;
LABEL_11:
    v84 = 0;
    ssftriff_reader_ReadStringZ(v34, v35, v36, v42, 0, &v84);
    ssftriff_reader_ReadStringZ(v34, v35, v36, v42, v101, &v84);
    v44 = v84;
    v45 = atoi(v101);
    v75 = v43;
    v46 = (v79 + 32 * v43);
    *(v46 + 4) = v45;
    v47 = heap_Calloc(*(a1 + 8), v45, 40);
    v46[2] = v47;
    if (!v47)
    {
      v66 = 2584748042;
      log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0);
LABEL_47:
      v67 = a10;
      v68 = *v40;
      if (v68)
      {
        v69 = 0;
        v70 = (v79 + 16);
        do
        {
          if (*v70)
          {
            heap_Free(*(a1 + 8), *v70);
            *v70 = 0;
            v68 = *v40;
          }

          ++v69;
          v70 += 4;
        }

        while (v69 < v68);
      }

      heap_Free(*(a1 + 8), v79);
      goto LABEL_53;
    }

    v42 += v44;
    *(v46 + 6) = 0;
    *v46 = 0;
    *(v46 + 4) = 0;
    if (!*(v46 + 4))
    {
      goto LABEL_41;
    }

    v48 = 0;
LABEL_14:
    v84 = 0;
    ssftriff_reader_ReadStringZ(v34, v35, v36, v42, 0, &v84);
    ssftriff_reader_ReadStringZ(v34, v35, v36, v42, (v46[2] + 40 * v48), &v84);
    v49 = 0;
    v50 = 0;
    v42 += v84;
    v51 = v46[2];
    *(v51 + 40 * v48 + 32) = 0;
    while (1)
    {
      v52 = v51 + 40 * v48;
      v53 = (v52 + v50);
      v54 = *v53;
      if (v54 == 45)
      {
        break;
      }

      if (!*v53)
      {
        v50 = 0;
        goto LABEL_32;
      }

      if (v54 == 9)
      {
        *(v52 + 32) = atoi(v53 + 1);
        *v53 = 0;
        v51 = v46[2];
LABEL_32:
        v60 = v51 + 40 * v48;
        *(v60 + 38) = v49;
        v61 = *(v60 + 36);
        v40 = v81;
        v35 = v82;
        if (*(v46 + 12) < v61)
        {
          *(v46 + 12) = v61;
        }

        if (*(v46 + 13) < v49)
        {
          *(v46 + 13) = v49;
        }

        if (*v78 < v50)
        {
          *v78 = v50;
        }

        v62 = v51 + 40 * v48;
        v65 = *(v62 + 32);
        v64 = (v62 + 32);
        v63 = v65;
        v36 = v80;
        if (*a9 > v65)
        {
          *a9 = v63;
          v63 = *v64;
        }

        v34 = v83;
        *v76 += v63;
        if (++v48 < *(v46 + 4))
        {
          goto LABEL_14;
        }

LABEL_41:
        v43 = v75 + 1;
        if (v75 + 1 >= *v40)
        {
LABEL_42:
          v66 = 0;
          *v77 = v79;
          return v66;
        }

        goto LABEL_11;
      }

      if ((v54 & 0xFFFFFFDF) - 65 < 0x1A)
      {
        goto LABEL_26;
      }

      *(v52 + 36) = v49;
      v55 = utf8_determineUTF8CharLength(*v53);
      v56 = v55;
      if (v48)
      {
        v51 = v46[2];
        v40 = v81;
        if (v55)
        {
          v57 = 0;
          v58 = 0;
          while (1)
          {
            v59 = *(v46 + v58);
            if (v59 != *(v51 + 40 * v48 + v57 + v50))
            {
              break;
            }

            v57 = ++v58;
            if (v55 <= v58)
            {
              goto LABEL_28;
            }
          }

          log_OutText(*(a1 + 32), "FE_PW", 5, 0, "the Chinese Character %s in %d rule: %d is not same", v59, v75, v48);
          v66 = 2584748060;
          goto LABEL_47;
        }
      }

      else
      {
        memcpy(v46, (v46[2] + v50), v55);
        v51 = v46[2];
      }

LABEL_28:
      v49 = 0;
LABEL_29:
      v50 += v56;
    }

    ++v49;
LABEL_26:
    v56 = 1;
    goto LABEL_29;
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
    memcpy(*(v26 + 8 * v27), v32, v33);
    *(*(v26 + 8 * v27) + v33 + 1) = 0;
    v28 = v31 + v33;
    if (++v27 >= *a11)
    {
      goto LABEL_8;
    }
  }

LABEL_45:
  v66 = 2584748042;
  log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0);
  v67 = a10;
LABEL_53:
  v71 = *a11;
  if (*a11)
  {
    v72 = 0;
    do
    {
      v73 = *(v26 + 8 * v72);
      if (v73)
      {
        heap_Free(*(a1 + 8), v73);
        v71 = *a11;
      }

      ++v72;
    }

    while (v72 < v71);
  }

  heap_Free(*(a1 + 8), v26);
  *v67 = 0;
  return v66;
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
  v21 = *MEMORY[0x1E69E9840];
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
  v8 = *MEMORY[0x1E69E9840];
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
  v39 = 0;
  v37 = 0;
  v38 = 0;
  *v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  __s1 = 0;
  *(a1 + 40) = 0;
  *a5 = 1;
  log_OutText(*(*a1 + 32), "FE_WMP", 5, 0, "[FE_WORD_MAP]: Entering");
  if (((*(a1[7] + 256))(a1[8], a1[9], "fewmp_act_wmp", "no", &__s1) & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  v8 = strcmp(__s1, "yes");
  *(a1 + 40) = v8 == 0;
  if (v8 || ((*(a1[7] + 256))(a1[8], a1[9], "fewmp_late_wmp", "no", &__s1) & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  *(a1 + 41) = strcmp(__s1, "yes") == 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v31);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v26 = (*(a1[3] + 104))(a3, a4, 1, 0, &v38 + 2);
  if ((v26 & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  v23 = v26;
  if (((*(a1[3] + 184))(a3, a4, HIWORD(v38), 0, &v35) & 0x80000000) != 0)
  {
    return v23;
  }

  if (v35 != 1)
  {
    return v23;
  }

  v23 = (*(a1[3] + 176))(a3, a4, HIWORD(v38), 0, &v39, &v37 + 2);
  if ((v23 & 0x80000000) != 0)
  {
    return v23;
  }

  if (HIWORD(v37) < 2u)
  {
    return v23;
  }

  v27 = strlen(v39);
  if (!v27)
  {
    return v23;
  }

  v28 = heap_Alloc(*(*a1 + 8), v27 + 1);
  a1[5] = v28;
  if (!v28)
  {
    log_OutPublic(*(*a1 + 32), "FE_WMP", 37000, 0);
    return 2587893770;
  }

  strcpy(v28, v39);
  if (((*(a1[3] + 176))(a3, a4, HIWORD(v38), 1, v36, &v35 + 2) & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  v29 = *a1;
  a1[10] = *a1;
  if ((fe_wmp_getSent(a1, v29, a3, a4, HIWORD(v38), a1[5], *v36, HIWORD(v35), (a1 + 11), v31, &v34) & 0x80000000) != 0 || (fe_wmp_mapEachWord(a1, &v33) & 0x80000000) != 0 || !v33)
  {
    goto LABEL_3;
  }

  if (*(a1 + 41) != 1)
  {
    if (((*(a1[3] + 104))(a3, a4, 3, HIWORD(v38), &v38) & 0x80000000) != 0 || (fe_wmp_userTNBoundaryAdjust(a1, a3, a4, v34, v38, SHIWORD(v37), v37) & 0x80000000) != 0)
    {
      goto LABEL_3;
    }

    fe_wmp_AdjustMarkers(a1, *v36, HIWORD(v35), v31);
    goto LABEL_58;
  }

  v9 = v34;
  if ((fe_wmp_userTNBoundaryAdjustLateWMP(a1, a3, a4, v34, HIWORD(v38)) & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  if ((fe_wmp_adjustWordRecords(a1, a3, a4) & 0x80000000) == 0)
  {
    fe_wmp_AdjustMarkersLateWMP(a1, *v36, HIWORD(v35), v31);
LABEL_58:
    v30 = strlen(a1[5]);
    (*(a1[3] + 160))(a3, a4, HIWORD(v38), 0, (v30 + 1), a1[5], &v37);
  }

LABEL_3:
  v9 = v34;
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

uint64_t fe_wmp_CreateVoiceBrokerString(uint64_t a1, char *a2)
{
  *v5 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v5);
  if ((result & 0x80000000) == 0)
  {
    return brokeraux_ComposeBrokerString(a1, "wordmap", 1, 1, *v5, 0, 0, a2, 0x100uLL);
  }

  return result;
}

uint64_t fe_wmp_tryLoadingWmpModel(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(v17, 0, 240);
  *v14 = 0;
  v15 = 0;
  *a4 = 0;
  *v16 = 0;
  memset(v18, 0, 128);
  v17[15] = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", v16);
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v15), (Str & 0x80000000) != 0) || (__strcat_chk(), Str = brokeraux_ComposeBrokerString(a3, v18, 1, 1, *v16, 0, 0, v17, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v17, "IGTR", 1031, v14), (Str & 0x80000000) != 0))
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
  v62 = 0;
  v63 = 0;
  *a9 = 0;
  v18 = *(a2 + 8);
  v19 = strlen(__s);
  v20 = heap_Alloc(v18, v19 + 1);
  *(a9 + 8) = v20;
  if (!v20)
  {
    return 2587893770;
  }

  v65 = 0;
  v64 = 0;
  v61 = 0;
  strcpy(v20, __s);
  if (*(a1 + 164) == 1)
  {
    v70 = 0;
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v21 = (*(*(a1 + 24) + 104))(a3, a4, 2, a5, &v66);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }

    v56 = __s;
    v59 = a2;
    v22 = v66;
    if (v66)
    {
      v23 = 0;
      LOWORD(v24) = 0;
      v25 = 1;
      while (1)
      {
        v21 = (*(*(a1 + 24) + 168))(a3, a4, v22, 0, 1, &v70, &v69);
        if ((v21 & 0x80000000) != 0)
        {
          return v21;
        }

        if (v70 <= 0x11 && ((1 << v70) & 0x20210) != 0)
        {
          v21 = (*(*(a1 + 24) + 168))(a3, a4, v66, 1, 1, &v68, &v69);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          v21 = (*(*(a1 + 24) + 168))(a3, a4, v66, 2, 1, &v67, &v69);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          if (v25 == 1 || v23 != v68)
          {
            LOWORD(v24) = v24 + 1;
          }

          v23 = v68;
          v25 = 0;
        }

        v21 = (*(*(a1 + 24) + 120))(a3, a4, v66, &v66);
        if ((v21 & 0x80000000) != 0)
        {
          return v21;
        }

        v22 = v66;
        if (!v66)
        {
          goto LABEL_39;
        }
      }
    }

    LOWORD(v24) = 0;
LABEL_39:
    v58 = a7;
    v57 = a5;
  }

  else
  {
    if (!a8)
    {
      return 2587893767;
    }

    v56 = __s;
    v58 = a7;
    v59 = a2;
    v57 = a5;
    v24 = 0;
    v28 = a8;
    v29 = 1;
    do
    {
      if (*a7 == 36)
      {
        v30 = *(a7 + 24);
        v29 = !strcmp(v30, "normal") || !strcmp(v30, a10);
      }

      else
      {
        if (*a7 == 1)
        {
          v31 = v24 + 1;
        }

        else
        {
          v31 = v24;
        }

        if (v29)
        {
          v24 = v31;
        }

        v29 = v29;
      }

      a7 += 32;
      --v28;
    }

    while (v28);
  }

  v32 = 2587893767;
  if (!v24)
  {
    return v32;
  }

  *(a9 + 48) = v24;
  v33 = heap_Calloc(*(v59 + 8), v24, 4);
  *a11 = v33;
  if (!v33)
  {
    return v32;
  }

  if (!*(a1 + 164))
  {
    if (!a8)
    {
      goto LABEL_71;
    }

    v38 = v33;
    v39 = 0;
    v40 = a8;
    v41 = v58 + 12;
    v42 = 1;
    while (1)
    {
      v43 = *(v41 - 12);
      if (v43 == 36)
      {
        v44 = *(v41 + 12);
        if (strcmp(v44, "normal") && strcmp(v44, a10))
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
          *(v38 + 4 * v39++) = *v41;
        }
      }

      v42 = 1;
LABEL_70:
      v41 += 32;
      if (!--v40)
      {
        goto LABEL_71;
      }
    }
  }

  v21 = (*(*(a1 + 24) + 104))(a3, a4, 2, v57, &v61);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v34 = 0;
  v35 = 0;
  v36 = 1;
  while (v61)
  {
    v21 = (*(*(a1 + 24) + 168))(a3, a4);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }

    if (v65 <= 0x11 && ((1 << v65) & 0x20210) != 0)
    {
      v21 = (*(*(a1 + 24) + 168))(a3, a4, v61, 1, 1, &v63, &v64);
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }

      v21 = (*(*(a1 + 24) + 168))(a3, a4, v61, 2, 1, &v62, &v64);
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }

      if (v36 == 1 || v35 != v63)
      {
        v36 = 0;
        *(*a11 + 4 * v34++) = *(v58 + 12) + v63;
        v35 = v63;
      }

      else
      {
        v36 = 0;
      }
    }

    v32 = (*(*(a1 + 24) + 120))(a3, a4, v61, &v61);
    if ((v32 & 0x80000000) != 0)
    {
      return v32;
    }
  }

LABEL_71:
  v45 = heap_Calloc(*(v59 + 8), v24, 8);
  *a9 = v45;
  if (!v45)
  {
    return 2587893770;
  }

  v46 = heap_Calloc(*(v59 + 8), v24, 8);
  *(a9 + 64) = v46;
  if (!v46)
  {
    return 2587893770;
  }

  v47 = heap_Calloc(*(v59 + 8), v24, 8);
  *(a9 + 16) = v47;
  if (!v47)
  {
    return 2587893770;
  }

  v48 = 0;
  do
  {
    *(*(a9 + 16) + 8 * v48++) = 0;
  }

  while (v24 != v48);
  v49 = heap_Calloc(*(v59 + 8), v24, 2);
  *(a9 + 32) = v49;
  if (!v49)
  {
    return 2587893770;
  }

  v50 = heap_Calloc(*(v59 + 8), v24, 2);
  *(a9 + 40) = v50;
  v32 = 2587893770;
  if (v50)
  {
    v51 = 0;
    do
    {
      v52 = *(*a11 + 4 * v51) - *(v58 + 12);
      *(*(a9 + 32) + 2 * v51) = v52;
      *(*a9 + 8 * v51) = *(a9 + 8) + v52;
      if (v51 + 1 >= v24)
      {
        *(*(a9 + 40) + 2 * v51) = strlen(v56);
      }

      else
      {
        v53 = *(*a11 + 4 * (v51 + 1));
        v54 = *(*a11 + 4 * v51);
        *(*(a9 + 40) + 2 * v51) = *(*(a9 + 32) + 2 * v51) + v53 + ~v54;
        *(~v54 + *(*a9 + 8 * v51) + v53) = 0;
      }

      ++v51;
    }

    while (v24 != v51);
    return fe_wmp_getPos(a1, a3, a4, a9, v57, v59);
  }

  return v32;
}

uint64_t fe_wmp_mapEachWord(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 136);
  __s1 = 0;
  v6 = 2 * strlen(*(a1 + 40));
  if (v6 <= 8 * v5)
  {
    v6 = 9 * v5;
  }

  v7 = heap_Calloc(*(v4 + 8), 1, v6 + 1);
  if (v7)
  {
    v8 = v7;
    *v7 = 0;
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = 2587893770;
      v53 = heap_Alloc(*(v4 + 8), 8 * *(v9 + 1296) - 8);
      if (v53)
      {
        v51 = a2;
        if (*(v9 + 1296) != 1)
        {
          v11 = (*(v9 + 1296) - 1);
          v12 = v53;
          do
          {
            v13 = heap_Calloc(*(v4 + 8), 1, 65);
            *v12 = v13;
            if (!v13)
            {
              goto LABEL_99;
            }

            *v13 = 61;
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
                goto LABEL_99;
              }

              v20 = v19;
              v52 = v16;
              if (v18 <= 1)
              {
                heap_Free(*(v4 + 8), v19);
                v10 = 0;
              }

              else
              {
                v21 = 0;
                while (strcmp(*(v17 + v21), "word"))
                {
                  v21 += 8;
                  if (8 * (v18 - 1) == v21)
                  {
                    v10 = 0;
                    goto LABEL_23;
                  }
                }

                v22 = "=";
                if (v15 < *(a1 + 136))
                {
                  v22 = *(*(a1 + 88) + 8 * v15);
                }

                v10 = fe_wmp_setFeature(v4, v17, v18, 2, v53, v22);
                if ((v10 & 0x80000000) != 0)
                {
LABEL_103:
                  heap_Free(*(v4 + 8), v20);
                  v8 = __s;
                  goto LABEL_100;
                }

LABEL_23:
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
                while (strcmp(*(v17 + v23), "pos"))
                {
                  v23 += 8;
                  if (v25 == v23)
                  {
                    goto LABEL_33;
                  }
                }

                v26 = "=";
                if (v15 < *(a1 + 136))
                {
                  v26 = *(*(a1 + 152) + 8 * v15);
                }

                v10 = fe_wmp_setFeature(v4, v17, v18, 5, v53, v26);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_103;
                }

LABEL_33:
                v27 = 0;
                while (strcmp(*(v17 + v27), "lpos"))
                {
                  v27 += 8;
                  if (v25 == v27)
                  {
                    goto LABEL_42;
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

                v10 = fe_wmp_setFeature(v4, v17, v18, 6, v53, v28);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_103;
                }

LABEL_42:
                v29 = 0;
                while (strcmp(*(v17 + v29), "rpos"))
                {
                  v29 += 8;
                  if (v25 == v29)
                  {
                    goto LABEL_49;
                  }
                }

                v30 = "=";
                if (v15 + 1 < *(a1 + 136))
                {
                  v30 = *(*(a1 + 152) + 8 * (v15 + 1));
                }

                v10 = fe_wmp_setFeature(v4, v17, v18, 7, v53, v30);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_103;
                }

LABEL_49:
                v31 = 0;
                while (strcmp(*(v17 + v31), "lword"))
                {
                  v31 += 8;
                  if (v25 == v31)
                  {
                    goto LABEL_58;
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

                v10 = fe_wmp_setFeature(v4, v17, v18, 1, v53, v32);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_103;
                }

LABEL_58:
                v33 = 0;
                while (strcmp(*(v17 + v33), "llword"))
                {
                  v33 += 8;
                  if (v25 == v33)
                  {
                    goto LABEL_67;
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

                v10 = fe_wmp_setFeature(v4, v17, v18, 0, v53, v34);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_103;
                }

LABEL_67:
                v35 = 0;
                while (strcmp(*(v17 + v35), "rword"))
                {
                  v35 += 8;
                  if (v25 == v35)
                  {
                    goto LABEL_74;
                  }
                }

                v36 = "=";
                if (v15 + 1 < *(a1 + 136))
                {
                  v36 = *(*(a1 + 88) + 8 * (v15 + 1));
                }

                v10 = fe_wmp_setFeature(v4, v17, v18, 3, v53, v36);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_103;
                }

LABEL_74:
                v37 = 0;
                while (strcmp(*(v17 + v37), "rrword"))
                {
                  v37 += 8;
                  if (v25 == v37)
                  {
                    v8 = __s;
                    LODWORD(v16) = v52;
                    goto LABEL_81;
                  }
                }

                v38 = "=";
                LODWORD(v16) = v52;
                if (v15 + 2 < *(a1 + 136))
                {
                  v38 = *(*(a1 + 88) + 8 * (v15 + 2));
                }

                v10 = fe_wmp_setFeature(v4, v17, v18, 4, v53, v38);
                v8 = __s;
LABEL_81:
                heap_Free(*(v4 + 8), v20);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_100;
                }
              }

              igtree_Process(v9, v53, &__s1);
              v39 = *(*(a1 + 120) + 2 * v15);
              if (v16 < v39)
              {
                strncat(v8, (*(a1 + 40) + v16), v39 - v16);
              }

              v40 = __s1;
              if (!strcmp(__s1, "NOMATCH"))
              {
                strcat(v8, *(*(a1 + 88) + 8 * v15));
              }

              else
              {
                strcat(v8, v40);
                v41 = __s1;
                v42 = strlen(__s1);
                *(*(a1 + 112) + 2 * v15) = v42 - strlen(*(*(a1 + 88) + 8 * v15));
                *(*(a1 + 144) + 2 * v15) = 1;
                v43 = strlen(v41);
                *(*(a1 + 104) + 8 * v15) = heap_Calloc(*(v4 + 8), 1, v43 + 1);
                strcpy(*(*(a1 + 104) + 8 * v15), __s1);
                *v51 = 1;
              }

              v16 = *(*(a1 + 128) + 2 * v15++);
              if (v15 >= *(a1 + 136))
              {
                goto LABEL_92;
              }
            }
          }

          v16 = 0;
          v10 = 0;
LABEL_92:
          if (strlen(*(a1 + 40)) > v16)
          {
            strcat(v8, (*(a1 + 40) + v16));
          }

          if (*(v9 + 1296) != 1)
          {
            v44 = (*(v9 + 1296) - 1);
            v45 = v53;
            do
            {
              v46 = *v45++;
              heap_Free(*(v4 + 8), v46);
              --v44;
            }

            while (v44);
          }

          v8 = __s;
          v47 = strlen(__s);
          v48 = heap_Realloc(*(v4 + 8), *(a1 + 40), v47 + 1);
          *(a1 + 40) = v48;
          if (!v48)
          {
LABEL_99:
            log_OutPublic(*(v4 + 32), "FE_WMP", 37000, 0);
            v10 = 2587893770;
            goto LABEL_100;
          }

          strcpy(v48, __s);
        }

LABEL_100:
        heap_Free(*(v4 + 8), v53);
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
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  memset(__c, 0, sizeof(__c));
  v29 = 0;
  v27 = 0;
  __s = 0;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  result = (*(a1[3] + 104))(a2, a3, 1, 0, &v29);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1[3] + 104))(a2, a3, 2, v29, &v35 + 2);
    if ((result & 0x80000000) == 0)
    {
      v7 = HIWORD(v35);
      if (HIWORD(v35))
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 1;
        do
        {
          result = (*(a1[3] + 168))(a2, a3, v7, 0, 1, &v32, &v35);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v32 == 9 || v32 == 4)
          {
            result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 1, 1, &v34, &v35);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 2, 1, &v33, &v35);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v34)
            {
              v13 = 0;
            }

            else
            {
              v13 = v11;
            }

            if (v34 > v10)
            {
              v11 = 1;
            }

            else
            {
              v11 = v13;
            }

            if (v34 > v10)
            {
              ++v9;
            }

            if (*(a1[18] + 2 * v9) == 1 && v11 == 1)
            {
              __s = 0;
              *&__c[1] = 0;
              LOWORD(v31) = 0;
              result = (*(a1[3] + 176))(a2, a3, HIWORD(v35), 3, &__s, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[7] + 232))(a1[8], a1[9], "wmp_dct", *(a1[13] + 8 * v9), &__c[1], &v31, __c, 0);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (v31)
              {
                __s = **&__c[1];
                v15 = strchr(__s, __c[0]);
                if (v15)
                {
                  *v15 = 0;
                }
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v35), 5, &v27, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 7, 1, &v26, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v35), 6, &v25, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v35), 9, &v24, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v35), 14, &v23, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v16 = a1[14];
              LOWORD(v22) = *(a1[15] + 2 * v9) + v8;
              v21 = *(a1[16] + 2 * v9) + v8 + *(v16 + 2 * v9);
              result = (*(a1[3] + 160))(a2, a3, HIWORD(v35), 1, 1, &v22, &v22 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 160))(a2, a3, HIWORD(v35), 2, 1, &v21, &v22 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v17 = strlen(__s);
              result = (*(a1[3] + 160))(a2, a3, HIWORD(v35), 3, (v17 + 1), __s, &v22 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v18 = *(a1[14] + 2 * v9);
              result = (*(a1[3] + 120))(a2, a3, HIWORD(v35), &v35 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v8 += v18;
              if (HIWORD(v35))
              {
                result = (*(a1[3] + 168))(a2, a3);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 1, 1, &v31 + 2, &v35);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (HIWORD(v31) == v34)
                {
                  v19 = HIWORD(v35);
                  if (HIWORD(v35))
                  {
                    while (v32 == 9 || v32 == 4)
                    {
                      result = (*(a1[3] + 120))(a2, a3, v19, &v35 + 2);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 0, 1, &v32, &v35);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 1, 1, &v31 + 2, &v35);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      result = (*(a1[3] + 192))(a2, a3, v19);
                      if ((result & 0x80000000) != 0)
                      {
                        return result;
                      }

                      if (HIWORD(v31) == v34)
                      {
                        v19 = HIWORD(v35);
                        if (HIWORD(v35))
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

            else
            {
              result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 1, 1, &v34, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 168))(a2, a3, HIWORD(v35), 2, 1, &v33, &v35);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              LOWORD(v22) = v34 + v8;
              v21 = v33 + v8;
              result = (*(a1[3] + 160))(a2, a3, HIWORD(v35), 1, 1, &v22, &v22 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 160))(a2, a3, HIWORD(v35), 2, 1, &v21, &v22 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 120))(a2, a3, HIWORD(v35), &v35 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            v10 = v34;
          }

          else
          {
            result = (*(a1[3] + 120))(a2, a3, HIWORD(v35), &v35 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          v7 = HIWORD(v35);
        }

        while (HIWORD(v35));
      }
    }
  }

  return result;
}

uint64_t fe_wmp_AdjustMarkersLateWMP(uint64_t result, uint64_t a2, unsigned int a3, const char *a4)
{
  v25 = result;
  v5 = *(result + 136);
  if (*(result + 136))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v24 = *(result + 136);
    do
    {
      if (v8 + 1 >= v5)
      {
        v12 = (v25[16] + 2 * v5 - 2);
      }

      else
      {
        v12 = (v25[15] + 2 * (v8 + 1));
      }

      v13 = *v12;
      v14 = (a2 + 32 * v9);
      for (i = v14[3]; i < v13; i = v14[3])
      {
        v16 = *v14;
        v14[1] += v10;
        v17 = i + v10;
        v14[3] = v17;
        if (v16 == 36)
        {
          v18 = *(v14 + 3);
          result = strcmp(v18, "normal");
          v11 = 1;
          if (result)
          {
            result = strcmp(v18, a4);
            if (result)
            {
              v11 = 0;
            }
          }
        }

        else if (v17 != v13 - 1 && v16 == 1)
        {
          if (v11)
          {
            v19 = *(v25[14] + 2 * v8);
          }

          else
          {
            v19 = 0;
          }

          v14[2] += v19;
          v20 = v9 + 1;
          if (v20 < a3)
          {
            v21 = (a2 + 32 * v20);
            if (*v21 == 37)
            {
              v22 = v21[3];
              v23 = v21[4] + v19;
              v21[1] += v10;
              v21[3] = v22 + v10;
              v21[4] = v23;
              ++v9;
            }
          }

          v10 += v19;
        }

        v14 = (a2 + 32 * ++v9);
      }

      ++v8;
      v5 = v24;
    }

    while (v8 != v24);
  }

  else
  {
    v10 = 0;
  }

  *(a2 + 8) += v10;
  *(a2 + 16) += v10;
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
      if (v12 == 1)
      {
        if (v11)
        {
          v14 = *(*(v6 + 112) + 2 * v8++);
        }

        else
        {
          v14 = 0;
        }

        *(v10 - 4) += v14;
        v7 += v14;
      }

      else if (v12 == 36)
      {
        v13 = *(v10 + 12);
        result = strcmp(v13, "normal");
        v11 = 1;
        if (result)
        {
          result = strcmp(v13, a4);
          if (result)
          {
            v11 = 0;
          }
        }
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
  v21 = 0;
  __s = 0;
  v19 = 0;
  v17 = 0;
  v18 = 0;
  result = (*(*(a1 + 24) + 104))(a2, a3, 2, a5, &v21);
  if ((result & 0x80000000) == 0)
  {
    v12 = v21;
    if (v21)
    {
      v13 = 0;
      while (1)
      {
        result = (*(*(a1 + 24) + 168))(a2, a3, v12, 0, 1, &v18, &v19);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (v18 <= 0x11 && ((1 << v18) & 0x20210) != 0)
        {
          result = (*(*(a1 + 24) + 168))(a2, a3, v21, 1, 1, &v17 + 2, &v19);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 24) + 168))(a2, a3, v21, 2, 1, &v17, &v19);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (v13 < *(a4 + 48) && HIWORD(v17) == *(*(a4 + 32) + 2 * v13))
          {
            result = (*(*(a1 + 24) + 176))(a2, a3, v21, 5, &__s, &v19);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v15 = strlen(__s);
            *(*(a4 + 64) + 8 * v13) = heap_Calloc(*(a6 + 8), 1, v15 + 1);
            v16 = *(*(a4 + 64) + 8 * v13);
            if (!v16)
            {
              return 2587893770;
            }

            strcpy(v16, __s);
            ++v13;
          }
        }

        result = (*(*(a1 + 24) + 120))(a2, a3, v21, &v21);
        if ((result & 0x80000000) == 0)
        {
          v12 = v21;
          if (v21)
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

uint64_t fe_wmp_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v13 = -1;
  result = fe_wmp_isFeatureRequired(a2, a3, a4, &v13);
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
        log_OutPublic(*(a1 + 32), "FE_WMP", 37000, 0);
        return 2587893770;
      }

      *(a5 + 8 * v10) = v12;
    }

    strcpy(v12, a6);
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
  v103 = *MEMORY[0x1E69E9840];
  v93 = 0;
  v94 = 0;
  v5 = 2592088071;
  v92 = 0;
  memset(v102, 0, sizeof(v102));
  if (!a5)
  {
    return v5;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v94);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v10 = heap_Calloc(*(v94 + 8), 1, 80);
  if (!v10)
  {
    log_OutPublic(*(v94 + 32), "FE_TEXT_ANALYZER", 37000, 0);
    v5 = 2592088074;
    goto LABEL_13;
  }

  v11 = v10;
  *a5 = v10;
  *(a5 + 8) = 62347;
  *(v10 + 32) = 0;
  *(v10 + 72) = 0;
  Object = objc_GetObject(*(v94 + 48), "LINGDB", &v93);
  if ((Object & 0x80000000) != 0 || (*(v11 + 24) = *(v93 + 8), Object = objc_GetObject(*(v94 + 48), "FE_DCTLKP", &v92), (Object & 0x80000000) != 0) || (v13 = v92, *(v11 + 40) = *(v92 + 8), *(v11 + 48) = *(v13 + 16), v14 = v94, *v11 = v94, *(v11 + 8) = a3, *(v11 + 16) = a4, Object = fe_text_analyzer_CreateBrokerString(v14, v102), (Object & 0x80000000) != 0))
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
  *v101 = 0;
  v100 = 0;
  *v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v18 = ssftriff_reader_ObjOpen(v15, v17, 2, v102, "STLE", 5, v101);
  if (v18 < 0 && (v18 & 0x1FFF) != 0x14)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    LODWORD(v23) = 0;
    goto LABEL_107;
  }

  v25 = ssftriff_reader_OpenChunk(*v101, &v97, &v100, v99);
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
      if (v97 ^ 0x454E494C | v98)
      {
        if (v97 ^ 0x4E4B4F54 | v98)
        {
          if (!(v97 ^ 0x4E454C54 | v98))
          {
            ssftriff_reader_GetChunkData(*v101, v100, &v96);
            v20 = heap_Calloc(*(v16 + 8), 1, 8 * *v96);
            if (!v20)
            {
              goto LABEL_89;
            }

            ++v26;
            if (v21 && v23)
            {
              v33 = 0;
              do
              {
                v34 = heap_Calloc(*(v16 + 8), 1, 4 * *(v21 + 4 * v33));
                *(v20 + 8 * v33) = v34;
                if (!v34)
                {
                  goto LABEL_89;
                }

                if (*(v21 + 4 * v33))
                {
                  v35 = 0;
                  v36 = v96;
                  do
                  {
                    *(v34 + 4 * v35) = v36[(v26 + v35)];
                    ++v35;
                  }

                  while (v35 < *(v21 + 4 * v33));
                  v26 += v35;
                }

                ++v33;
              }

              while (v33 != v23);
              v27 = v23;
              goto LABEL_52;
            }

            goto LABEL_51;
          }

          if (v97 ^ 0x4E454C4C | v98)
          {
            if (v97 ^ 0x454C5552 | v98)
            {
              goto LABEL_52;
            }

            v22 = heap_Alloc(*(v16 + 8), 8 * v23);
            if (!v22)
            {
LABEL_89:
              log_OutPublic(*(*v11 + 32), "FE_TEXT_ANALYZER", 37000, 0);
              goto LABEL_107;
            }

            v95 = 0;
            if (v19 && v100)
            {
              v85 = v23;
              v28 = 0;
              v27 = 0;
              while (1)
              {
                v95 = 0;
                v29 = heap_Alloc(*(v16 + 8), (*(v19 + 4 * v27) + 1));
                *(v22 + 8 * v27) = v29;
                if (!v29)
                {
                  break;
                }

                ssftriff_reader_ReadStringZ(*v101, *v99, v100, v28, 0, &v95);
                ssftriff_reader_ReadStringZ(*v101, *v99, v100, v28, *(v22 + 8 * v27++), &v95);
                v28 += v95;
                if (v28 >= v100)
                {
                  v23 = v85;
                  goto LABEL_52;
                }
              }

              log_OutPublic(*(*v11 + 32), "FE_TEXT_ANALYZER", 37000, 0);
              LODWORD(v23) = v85;
              goto LABEL_107;
            }

LABEL_51:
            v27 = 0;
            goto LABEL_52;
          }

          v19 = heap_Calloc(*(v16 + 8), 1, 4 * v23);
          if (!v19)
          {
            v73 = *(*v11 + 32);
LABEL_108:
            log_OutPublic(v73, "FE_TEXT_ANALYZER", 37000, 0, v82);
            goto LABEL_109;
          }

          ssftriff_reader_GetChunkData(*v101, v100, &v96);
          if (!v23)
          {
            goto LABEL_51;
          }

          v37 = 0;
          v38 = v96;
          do
          {
            *(v19 + 4 * v37) = v38[v37];
            ++v37;
          }

          while (v23 != v37);
        }

        else
        {
          ssftriff_reader_GetChunkData(*v101, v100, &v96);
          v30 = heap_Calloc(*(v16 + 8), 1, 4 * v23);
          v21 = v30;
          if (!v30)
          {
            goto LABEL_89;
          }

          if (v27 >= v23)
          {
            goto LABEL_52;
          }

          v31 = v96;
          v32 = v27;
          do
          {
            *(v30 + 4 * v32) = v31[v32];
            ++v32;
          }

          while (v23 != v32);
        }

        v27 = v23;
      }

      else
      {
        ssftriff_reader_GetChunkData(*v101, v100, &v96);
        v23 = *v96;
      }

LABEL_52:
      ssftriff_reader_CloseChunk(*v101);
      v25 = ssftriff_reader_OpenChunk(*v101, &v97, &v100, v99);
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
LABEL_107:
    v73 = *(v16 + 32);
    goto LABEL_108;
  }

  v39 = heap_Calloc(*(v16 + 8), 1, 32);
  if (!v39)
  {
    log_OutPublic(*(v16 + 32), "FE_TEXT_ANALYZER", 37000, 0);
LABEL_106:
    *(v11 + 32) = 0;
    goto LABEL_107;
  }

  v40 = v39;
  *(v39 + 9) = 0;
  *(v39 + 16) = 0;
  v41 = heap_Calloc(*(v16 + 8), 1, 128);
  *v40 = v41;
  if (!v41)
  {
    v72 = *(v16 + 32);
    goto LABEL_95;
  }

  strcpy(v41, "START");
  v42 = heap_Calloc(*(v16 + 8), 1, 128);
  if (!v42)
  {
    v72 = *(*v11 + 32);
LABEL_95:
    log_OutPublic(v72, "FE_TEXT_ANALYZER", 37000, 0);
LABEL_103:
    if (*v40)
    {
      heap_Free(*(v16 + 8), *v40);
    }

    heap_Free(*(v16 + 8), v40);
    goto LABEL_106;
  }

  v43 = v42;
  if (!v23)
  {
    goto LABEL_88;
  }

  v44 = 0;
  v82 = v23;
  v83 = v40;
  v45 = 0uLL;
  v46 = v40;
  v84 = v19;
  v86 = v23;
  v89 = v20;
  v91 = v22;
  while (2)
  {
    v88 = v44;
    v43[6] = v45;
    v43[7] = v45;
    v43[4] = v45;
    v43[5] = v45;
    v43[2] = v45;
    v43[3] = v45;
    *v43 = v45;
    v43[1] = v45;
    memcpy(v43, *(v22 + 8 * v44), **(v20 + 8 * v44));
    v47 = v88;
    LODWORD(v48) = 0;
    v90 = 0;
    while (1)
    {
      v49 = *(v46 + 9);
      if (*(v46 + 9))
      {
        v48 = v48;
        while (2)
        {
          v50 = v46[2];
          v51 = v49;
          v52 = v49;
          v53 = v50;
          while (!*v53 || strcmp(*v53, v43))
          {
            v53 += 32;
            if (!--v52)
            {
              v55 = v88;
              LODWORD(v56) = *(v21 + 4 * v88) - 1;
              goto LABEL_72;
            }
          }

          v55 = v88;
          v56 = (*(v21 + 4 * v88) - 1);
          if (v48 < v56)
          {
            v20 = v89;
            v54 = v90 + *(*(v89 + 8 * v88) + 4 * v48++) + 1;
            v43[6] = 0uLL;
            v43[7] = 0uLL;
            v43[4] = 0uLL;
            v43[5] = 0uLL;
            v43[2] = 0uLL;
            v43[3] = 0uLL;
            *v43 = 0uLL;
            v43[1] = 0uLL;
            v90 = v54;
            memcpy(v43, (*(v91 + 8 * v88) + v54), *(*(v89 + 8 * v88) + 4 * v48));
            v49 = *(v53 + 9);
            v46 = v53;
            if (*(v53 + 9))
            {
              continue;
            }

            v19 = v84;
            LODWORD(v23) = v86;
            v47 = v88;
            goto LABEL_77;
          }

          break;
        }

LABEL_72:
        v22 = v91;
        if (v56 == v48)
        {
          v19 = v84;
          LODWORD(v23) = v86;
          goto LABEL_85;
        }

        v57 = *(*(v89 + 8 * v55) + 4 * v48);
        v58 = heap_Realloc(*(v16 + 8), v50, 32 * v51 + 32);
        if (!v58)
        {
          log_OutPublic(*(v16 + 32), "FE_TEXT_ANALYZER", 37000, 0);
          v19 = v84;
          goto LABEL_102;
        }

        v59 = (v57 + 1);
        v46[2] = v58;
        *(v58 + 32 * *(v46 + 9) + 9) = 0;
        v60 = (v58 + 32 * *(v46 + 9));
        *v60 = 0;
        v60[2] = 0;
        v60[3] = 0;
        v61 = heap_Alloc(*(v16 + 8), v59);
        *(v46[2] + 32 * *(v46 + 9)) = v61;
        if (v61)
        {
          v62 = v46 + 9;
          v87 = v48;
          memcpy(v61, v43, v59);
          v23 = v46[2];
          goto LABEL_81;
        }

        log_OutPublic(*(v16 + 32), "FE_TEXT_ANALYZER", 37000, 0);
        v19 = v84;
        goto LABEL_101;
      }

      v53 = v46;
LABEL_77:
      if (v48 == *(v21 + 4 * v47) - 1)
      {
        break;
      }

      v63 = *(*(v20 + 8 * v47) + 4 * v48);
      v64 = heap_Alloc(*(v16 + 8), 32);
      if (!v64)
      {
        log_OutPublic(*(v16 + 32), "FE_TEXT_ANALYZER", 37000, 0);
LABEL_101:
        v22 = v91;
LABEL_102:
        heap_Free(*(v16 + 8), v43);
        v20 = v89;
        LODWORD(v23) = v86;
        v40 = v83;
        goto LABEL_103;
      }

      v23 = v64;
      v65 = (v63 + 1);
      *(v64 + 9) = 0;
      *v64 = 0;
      *(v64 + 16) = 0;
      *(v64 + 24) = 0;
      v66 = heap_Alloc(*(v16 + 8), v65);
      *v23 = v66;
      if (!v66)
      {
        log_OutPublic(*(v16 + 32), "FE_TEXT_ANALYZER", 37000, 0);
        heap_Free(*(v16 + 8), v23);
        goto LABEL_101;
      }

      v62 = (v53 + 9);
      v87 = v48;
      memcpy(v66, v43, v65);
      *(v53 + 16) = v23;
LABEL_81:
      v67 = *(*(v89 + 8 * v88) + 4 * v87);
      v68 = *v62;
      v46 = (v23 + 32 * v68);
      *v62 = v68 + 1;
      v69 = v90 + v67 + 1;
      LODWORD(v48) = v48 + 1;
      v43[6] = 0u;
      v43[7] = 0u;
      v43[4] = 0u;
      v43[5] = 0u;
      v43[2] = 0u;
      v43[3] = 0u;
      *v43 = 0u;
      v43[1] = 0u;
      memcpy(v43, (*(v91 + 8 * v88) + v69), *(*(v89 + 8 * v88) + 4 * v48));
      v47 = v88;
      v90 = v69;
      v20 = v89;
      v19 = v84;
      LODWORD(v23) = v86;
      if (v48 >= *(v21 + 4 * v88))
      {
        goto LABEL_87;
      }
    }

    v46 = v53;
    LODWORD(v56) = v48;
    v22 = v91;
LABEL_85:
    v70 = heap_Alloc(*(v16 + 8), 128);
    v46[3] = v70;
    if (!v70)
    {
      log_OutPublic(*(*v11 + 32), "FE_TEXT_ANALYZER", 37000, 0);
      goto LABEL_102;
    }

    memcpy(v70, (*(v22 + 8 * v88) + v90), *(*(v89 + 8 * v88) + 4 * v56));
    v47 = v88;
    v71 = *(*(v89 + 8 * v88) + 4 * v56);
    v20 = v89;
    *(v46[3] + v71) = 0;
    v46 = v83;
LABEL_87:
    v44 = v47 + 1;
    v40 = v83;
    v22 = v91;
    v45 = 0uLL;
    if (v44 != v82)
    {
      continue;
    }

    break;
  }

LABEL_88:
  heap_Free(*(v16 + 8), v43);
  *(v11 + 32) = v40;
LABEL_109:
  if (*v101)
  {
    ssftriff_reader_ObjClose(*v101);
  }

  if (v22)
  {
    v74 = v20;
    v75 = v19;
    if (v23)
    {
      v76 = v23;
      v77 = v22;
      do
      {
        if (*v77)
        {
          heap_Free(*(v16 + 8), *v77);
          *v77 = 0;
        }

        ++v77;
        --v76;
      }

      while (v76);
    }

    heap_Free(*(v16 + 8), v22);
    v19 = v75;
    v20 = v74;
  }

  if (v20)
  {
    v78 = v20;
    v79 = v19;
    if (v23)
    {
      v80 = v23;
      v81 = v78;
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

    heap_Free(*(v16 + 8), v78);
    v19 = v79;
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
  v6 = *MEMORY[0x1E69E9840];
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
  v76 = *MEMORY[0x1E69E9840];
  v59 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v55 = 0;
  __c_3 = 0;
  __c_1 = 0;
  __c = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v47 = 0;
  __s = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  v61 = 0u;
  v62 = 0u;
  *__s2 = 0u;
  *(a1 + 16) = 0;
  *a5 = 1;
  log_OutText(*(*a1 + 32), "FE_TEXT_ANALYZER", 5, 0, "[FE_TEXT_ANALYZER]: Entering");
  *(a1 + 16) = 0;
  if (((*(a1[5] + 96))(a1[6], a1[7], "fecfg", "fetext_act_text_analyzer", &__c_3, &__c_1, &__c) & 0x80000000) == 0 && __c_1)
  {
    v8 = *__c_3;
    v9 = strchr(*__c_3, __c);
    if (v9)
    {
      *v9 = 0;
      v8 = *__c_3;
    }

    if (!strcmp(v8, "yes"))
    {
      *(a1 + 16) = 1;
    }
  }

  __c_1 = 0;
  v10 = (*(a1[5] + 96))(a1[6], a1[7], "fecfg", "fetext_trigger", &__c_3, &__c_1, &__c);
  v11 = 0;
  if ((v10 & 0x80000000) == 0 && __c_1)
  {
    v12 = v10;
    v13 = *__c_3;
    v14 = strchr(*__c_3, __c);
    if (v14)
    {
      *v14 = 0;
      v13 = *__c_3;
    }

    strlen(v13);
    __memcpy_chk();
    v11 = v12;
  }

  if (*(a1 + 16))
  {
    v15 = a1[4];
    if (v15)
    {
      v11 = (*(a1[3] + 104))(a3, a4, 1, 0, &v58 + 2);
      if ((v11 & 0x80000000) == 0 && ((*(a1[3] + 184))(a3, a4, HIWORD(v58), 0, &v55) & 0x80000000) == 0 && v55 == 1)
      {
        v11 = (*(a1[3] + 176))(a3, a4, HIWORD(v58), 0, &v59, &v57 + 2);
        if ((v11 & 0x80000000) == 0 && HIWORD(v57) >= 2u)
        {
          if (*v59)
          {
            v11 = (*(a1[3] + 176))(a3, a4, HIWORD(v58), 1, &v56, &v55 + 2);
            if ((v11 & 0x80000000) == 0)
            {
              v16 = HIWORD(v55);
              if (HIWORD(v55))
              {
                v17 = 0;
                v18 = v56;
                for (i = 24; *(v18 + i - 24) != 60 || strcmp(*(v18 + i), __s2); i += 32)
                {
                  if (v16 == ++v17)
                  {
                    return v11;
                  }
                }

                v11 = (*(a1[3] + 104))(a3, a4, 2, HIWORD(v58), &v58);
                if ((v11 & 0x80000000) == 0)
                {
                  v46 = heap_Calloc(*(*a1 + 8), 1, 32);
                  if (!v46)
                  {
                    v11 = 2592088074;
                    log_OutPublic(*(*a1 + 32), "FE_TEXT_ANALYZER", 37000, 0);
                    return v11;
                  }

                  v21 = v58;
                  if (v58)
                  {
                    v22 = 0;
                    v44 = 0;
                    v23 = -1;
                    v24 = v46;
                    while (1)
                    {
                      v25 = (*(a1[3] + 168))(a3, a4, v21, 0, 1, &v50 + 4, &v57 + 2);
                      if ((v25 & 0x80000000) != 0)
                      {
                        break;
                      }

                      v25 = (*(a1[3] + 168))(a3, a4, v58, 1, 1, &v50, &v57 + 2);
                      if ((v25 & 0x80000000) != 0)
                      {
                        break;
                      }

                      v25 = (*(a1[3] + 168))(a3, a4, v58, 2, 1, &v49, &v57 + 2);
                      if ((v25 & 0x80000000) != 0)
                      {
                        break;
                      }

                      if ((HIDWORD(v50) == 9 || HIDWORD(v50) == 4) && (v50 > v22 || v23 == -1))
                      {
                        v25 = (*(a1[3] + 176))(a3, a4, v58, 5, &__s, &v57 + 2);
                        if ((v25 & 0x80000000) != 0)
                        {
                          break;
                        }

                        if (v23 == -1)
                        {
                          v23 = v58;
                        }

                        v26 = heap_Calloc(*(*a1 + 8), 1, (v49 - v50 + 1));
                        *v24 = v26;
                        if (!v26)
                        {
                          goto LABEL_65;
                        }

                        memcpy(v26, &v59[v50], (v49 - v50));
                        *(*v24 + (v49 - v50)) = 0;
                        v27 = strlen(__s);
                        v28 = heap_Calloc(*(*a1 + 8), 1, v27 + 1);
                        *(v24 + 8) = v28;
                        if (!v28)
                        {
                          goto LABEL_65;
                        }

                        v29 = v28;
                        v30 = strlen(__s);
                        memcpy(v29, __s, v30);
                        *(*(v24 + 8) + strlen(__s)) = 0;
                        v31 = heap_Calloc(*(*a1 + 8), 1, 32);
                        *(v24 + 24) = v31;
                        if (!v31)
                        {
                          goto LABEL_65;
                        }

                        *(v24 + 16) = v44;
                        v22 = v50;
                        ++v44;
                        v24 = v31;
                      }

                      v11 = (*(a1[3] + 120))(a3, a4, v58, &v58);
                      if ((v11 & 0x80000000) != 0)
                      {
                        goto LABEL_66;
                      }

                      v21 = v58;
                      if (!v58)
                      {
                        goto LABEL_47;
                      }
                    }

                    v11 = v25;
                  }

                  else
                  {
LABEL_47:
                    v32 = heap_Calloc(*(*a1 + 8), 1, 128);
                    v47 = v32;
                    if (v32)
                    {
                      v45 = v32;
                      v33 = 0;
                      v34 = 0;
                      v35 = 1;
                      v36 = v46;
                      do
                      {
                        if (loc_match_against_rules(v36, &v51, v15, &v47, v35) && *(v51 + 16) - *(v36 + 16) > v33)
                        {
                          v33 = *(v51 + 16) - *(v36 + 16);
                          v34 = 1;
                        }

                        v35 = 0;
                        v36 = *(v36 + 24);
                      }

                      while (v36);
                      v37 = 0;
                      if (v17 && v34 == 1)
                      {
                        v38 = heap_Calloc(*(*a1 + 8), 1, 32 * HIWORD(v55));
                        v37 = v38;
                        if (v38)
                        {
                          if (HIWORD(v55))
                          {
                            v39 = 0;
                            v40 = (v38 + i);
                            v41 = 32 * HIWORD(v55);
                            do
                            {
                              if (v17)
                              {
                                v42 = (v38 + v39);
                                v43 = *(v56 + v39 + 16);
                                *v42 = *(v56 + v39);
                                v42[1] = v43;
                              }

                              else
                              {
                                *(v40 - 6) = 60;
                                *(v40 - 20) = *(v56 + i - 20);
                                *v40 = v45;
                              }

                              v39 += 32;
                              --v17;
                            }

                            while (v41 != v39);
                          }

                          v11 = (*(a1[3] + 160))(a3, a4, HIWORD(v58), 1);
                        }

                        else
                        {
                          v11 = 2592088074;
                          log_OutPublic(*(*a1 + 32), "FE_TEXT_ANALYZER", 37000, 0);
                        }
                      }

                      goto LABEL_67;
                    }

LABEL_65:
                    v11 = 2592088074;
                    log_OutPublic(*(*a1 + 32), "FE_TEXT_ANALYZER", 37000, 0);
                  }

LABEL_66:
                  v37 = 0;
LABEL_67:
                  loc_text_analyzer_free_orth(*a1, v46);
                  heap_Free(*(*a1 + 8), v46);
                  if (v47)
                  {
                    heap_Free(*(*a1 + 8), v47);
                  }

                  if (v37)
                  {
                    heap_Free(*(*a1 + 8), v37);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v11;
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

uint64_t fe_text_analyzer_CreateBrokerString(uint64_t a1, char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = 0;
  *v6 = 0;
  memset(v7, 0, sizeof(v7));
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v6);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v5);
    if ((result & 0x80000000) == 0)
    {
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      __strcat_chk();
      return brokeraux_ComposeBrokerString(a1, v7, 1, 1, *v6, 0, 0, a2, 0x100uLL);
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

uint64_t loc_match_against_rules(uint64_t a1, void *a2, char **a3, char **a4, int a5)
{
  v6 = 0;
  v7 = a5 == 1;
  while (1)
  {
    v8 = *(a3 + 9);
    if (!*(a3 + 9))
    {
      return 0;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a3[2];
    do
    {
      v13 = *v12;
      v14 = strchr(*v12, 58);
      if (v14)
      {
        v11 = v13;
        v10 = v14 + 1;
      }

      if (!v11)
      {
        v15 = *a1;
        if (v13)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          goto LABEL_26;
        }

        v16 = v13;
        goto LABEL_18;
      }

      if (strstr(v11, "POS:") && (v15 = *(a1 + 8)) != 0 || v7 && strstr(v11, "BEG:") && (v15 = *a1) != 0)
      {
        v16 = v10;
LABEL_18:
        if (!strcmp(v16, v15))
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }

      if (strstr(v11, "NOT:") && *a1)
      {
        if (strcmp(v10, *a1))
        {
LABEL_29:
          v6 = v12;
          goto LABEL_30;
        }
      }

      else if (strstr(v11, "ELIP:"))
      {
        v6 = v12;
        v9 = 1;
      }

LABEL_26:
      v12 += 4;
      --v8;
    }

    while (v8);
    if (!v9)
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
    v18 = v6[3];
    a3 = v6;
    if (v18)
    {
      strcpy(*a4, v18);
      *a2 = a1;
      return 1;
    }
  }
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

uint64_t lidword_Identify(uint64_t a1, const void *a2, unsigned int a3, uint64_t *a4, unsigned int *a5, unsigned int *a6, uint64_t *a7, unsigned int *a8, unsigned int *a9)
{
  v226[64] = *MEMORY[0x1E69E9840];
  inserted = 2345672714;
  v213 = 0;
  v211 = 0;
  if (!a1)
  {
    return 2345672711;
  }

  if (!*(a1 + 1924))
  {
    return 0;
  }

  v18 = heap_Calloc(*(*(a1 + 16) + 8), 1, a3 + 1);
  if (!v18)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
    return inserted;
  }

  v19 = v18;
  memcpy(v18, a2, a3);
  v19[a3] = 0;
  v20 = strlen(v19);
  if (*(*a4 + 16) < v20)
  {
LABEL_5:
    inserted = 0;
    v21 = 0;
LABEL_333:
    v122 = 0;
    goto LABEL_334;
  }

  if (*a6 >= 2)
  {
    v22 = 1;
    do
    {
      v23 = *(*a4 + 32 * v22);
      v24 = v23 > 0x28;
      v25 = (1 << v23) & 0x10000200080;
      if (!v24 && v25 != 0)
      {
        goto LABEL_5;
      }
    }

    while (*a6 > ++v22);
  }

  memset(v210, 0, 30);
  v21 = lidword_normalizedDup(a1, v19, v20, v210, 1);
  if (!v21 || (v27 = strlen(v19), (v28 = lidword_normalizedDup(a1, v19, v27, v210, 0)) == 0))
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0);
    goto LABEL_333;
  }

  v29 = v28;
  v190 = a5;
  v192 = a7;
  v193 = a8;
  v30 = a1 + 2044;
  bzero((a1 + 2044), 0x20000uLL);
  memset((a1 + 133116), 255, 0x400uLL);
  *(a1 + 134140) = 0u;
  *(a1 + 134156) = 0u;
  *(a1 + 134172) = 0u;
  *(a1 + 134188) = 0u;
  *(a1 + 134204) = 0u;
  *(a1 + 134220) = 0u;
  *(a1 + 134236) = 0u;
  *(a1 + 134252) = 0u;
  *(a1 + 134268) = 0u;
  *(a1 + 134284) = 0u;
  *(a1 + 134300) = 0u;
  *(a1 + 134316) = 0u;
  *(a1 + 134332) = 0u;
  *(a1 + 134348) = 0u;
  *(a1 + 134364) = 0u;
  *(a1 + 134380) = 0u;
  *(a1 + 134396) = 0u;
  *(a1 + 134412) = 0u;
  *(a1 + 134428) = 0u;
  *(a1 + 134444) = 0u;
  *(a1 + 134460) = 0u;
  *(a1 + 134476) = 0u;
  *(a1 + 134492) = 0u;
  *(a1 + 134508) = 0u;
  *(a1 + 134524) = 0u;
  *(a1 + 134540) = 0u;
  *(a1 + 134556) = 0u;
  *(a1 + 134572) = 0u;
  *(a1 + 134588) = 0u;
  *(a1 + 134604) = 0u;
  *(a1 + 134620) = 0u;
  *(a1 + 134636) = 0u;
  *(a1 + 134876) = 0u;
  *(a1 + 134892) = 0u;
  *(a1 + 134844) = 0u;
  *(a1 + 134860) = 0u;
  *(a1 + 134812) = 0u;
  *(a1 + 134828) = 0u;
  *(a1 + 134780) = 0u;
  *(a1 + 134796) = 0u;
  *(a1 + 134748) = 0u;
  *(a1 + 134764) = 0u;
  *(a1 + 134716) = 0u;
  *(a1 + 134732) = 0u;
  *(a1 + 134684) = 0u;
  *(a1 + 134700) = 0u;
  *(a1 + 134652) = 0u;
  *(a1 + 134668) = 0u;
  v191 = a6;
  lidword_CheckLangTags(a1, v19, a4, a6);
  v194 = v21;
  v214 = v21;
  lidword_AdvanceSkippingSpacesInNormSW(&v214, &v213);
  v199 = v29;
  v212 = v29;
  lidword_AdvanceSkippingSpacesInNormSW(&v212, &v211);
  v31 = v213;
  v32 = v214;
  v203 = a4;
  v206 = a1 + 133116;
  v200 = v19;
  v33 = 0;
  if (v213 == v214)
  {
LABEL_241:
    v121 = v33;
    lidword_ExtractFeats(a1, v19, v33);
    v122 = v199;
    v212 = v199;
    lidword_AdvanceSkippingSpacesInNormSW(&v212, &v211);
    v124 = v211;
    v123 = v212;
    v125 = a1 + 133116;
    if (v211 == v212)
    {
LABEL_331:
      lidword_Smoothing(a1, v121);
      inserted = lidword_InsertLangTags(a1, v19, a4, v190, v191, v121, v192, v193, a9);
      v21 = v194;
      goto LABEL_334;
    }

    v126 = 0;
    v197 = v121;
    while (1)
    {
      if (!*v123 || v126 > 0xFF)
      {
        goto LABEL_331;
      }

      if (*(v125 + 4 * v126) != -1)
      {
        goto LABEL_330;
      }

      v127 = *(a1 + 2026) + *(a1 + 2030) * *(a1 + 1928) + 3;
      v128 = *v124;
      *v124 = 0;
      __sa = v123;
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID NN fallback: %s", v123);
      *v124 = v128;
      v129 = *(a1 + 2024) * v127;
      v130 = heap_Alloc(*(*(a1 + 16) + 8), 4 * v129);
      v226[0] = v130;
      if (!v130)
      {
        v140 = *(a1 + 16);
        goto LABEL_344;
      }

      v131 = v130;
      v205 = v30;
      if (v129)
      {
        memset_pattern16(v130, &unk_1C37BD390, 4 * v129);
      }

      v223[0] = 0;
      v202 = *(a1 + 2024);
      a4 = v203;
      if (*(a1 + 2016))
      {
LABEL_250:
        v132 = 0;
        v133 = __sa;
        if (v124 == __sa || !v202)
        {
          goto LABEL_267;
        }

        v134 = 0;
        v135 = 0;
        do
        {
          v136 = &v133[v135];
          v137 = Utf8_LengthInBytes(v136, 1);
          strncpy(*(*(a1 + 2016) + 8 * v134), v136, v137);
          v133 = __sa;
          v138 = *(*(a1 + 2016) + 8 * v134++);
          *(v138 + v137) = 0;
          v135 += v137;
        }

        while ((v124 - __sa) > v135 && v134 < v202);
        v132 = v134;
        v19 = v200;
        a4 = v203;
      }

      else
      {
        v140 = *(a1 + 16);
        v141 = heap_Calloc(*(v140 + 8), 1, (8 * v202) | 1);
        *(a1 + 2016) = v141;
        if (!v141)
        {
          goto LABEL_344;
        }

        if (v202)
        {
          v142 = 0;
          v121 = v197;
          while (1)
          {
            *(*(a1 + 2016) + v142) = heap_Calloc(*(v140 + 8), 1, 5);
            if (!*(*(a1 + 2016) + v142))
            {
              break;
            }

            v142 += 8;
            if (8 * v202 == v142)
            {
              goto LABEL_250;
            }
          }

LABEL_344:
          log_OutPublic(*(v140 + 32), "FE_LID", 48000, 0);
          v147 = 2345672714;
LABEL_345:
          inserted = v147;
          goto LABEL_346;
        }

        v132 = 0;
      }

      v121 = v197;
LABEL_267:
      if (!*(a1 + 1960) || (v143 = *(a1 + 134912)) == 0)
      {
LABEL_339:
        v147 = 2345672704;
        goto LABEL_345;
      }

      if (v132)
      {
        v144 = 0;
        v145 = v127;
        v146 = v132;
        do
        {
          v147 = (*(*(a1 + 1960) + 56))(*(a1 + 1984), *(a1 + 1992), *(*(a1 + 2016) + 8 * v144), *(a1 + 2008));
          if ((v147 & 0x1FFF) == 0x14)
          {
            if (((*(*(a1 + 1960) + 56))(*(a1 + 1984), *(a1 + 1992), "$MEANC2V$", *(a1 + 2008)) & 0x1FFF) == 0x14)
            {
              goto LABEL_339;
            }
          }

          else if ((v147 & 0x80000000) != 0)
          {
            goto LABEL_345;
          }

          memcpy(&v131[(v144 * v145)], *(a1 + 2008), 4 * *(a1 + 2026));
          v149 = v144 * v145 + *(a1 + 2026);
          v150 = *(a1 + 2030);
          if (*(a1 + 2030))
          {
            v151 = 0;
            v152 = *(a1 + 1928);
            v153 = v205;
            v125 = a1 + 133116;
            do
            {
              if (v152)
              {
                v154 = *(a1 + 2028);
                v156 = v151 + v126 < v154 || v151 + v126 >= v154 + v121;
                v157 = (v153 - (v154 << 9));
                v158 = v149;
                v159 = v152;
                do
                {
                  v148 = -1.0;
                  if (!v156)
                  {
                    v148 = *v157;
                  }

                  v131[v158++] = v148;
                  ++v157;
                  --v159;
                }

                while (v159);
              }

              v149 += v152;
              ++v151;
              v153 += 512;
            }

            while (v151 != v150);
          }

          else
          {
            v125 = a1 + 133116;
          }

          LOBYTE(v148) = *(a1 + 134396 + v126);
          v160 = LODWORD(v148);
          v131[v149] = v160;
          LOBYTE(v160) = *(a1 + 134652 + v126);
          v161 = LODWORD(v160);
          v131[v149 + 1] = v161;
          LOBYTE(v161) = *(a1 + 134140 + v126);
          v131[v149 + 2] = LODWORD(v161);
          ++v144;
        }

        while (v144 != v146);
        a4 = v203;
        v143 = *(a1 + 134912);
      }

      else
      {
        v125 = a1 + 133116;
      }

      v147 = fi_predict(v143, v226, *(a1 + 2024), v223);
      v30 = v205;
      if ((v147 & 0x80000000) != 0)
      {
        goto LABEL_345;
      }

      v163 = *(a1 + 1928);
      if (*(a1 + 1928))
      {
        v164 = 0;
        do
        {
          v165 = *(v205 + v164);
          if (v165)
          {
            v166 = 1;
          }

          else
          {
            v166 = 4 * v163 - 4 == v164;
          }

          v164 += 4;
        }

        while (!v166);
        v167 = 0;
        v168 = 0;
        v169 = 0.0;
        v122 = v199;
        do
        {
          v170 = v169;
          v171 = v168;
          v169 = *(v223[0] + 4 * v167);
          if (v170 < v169)
          {
            LODWORD(v162) = *(v223[0] + 4 * v167);
          }

          else
          {
            *&v162 = v170;
          }

          if (v170 < v169)
          {
            v168 = v167;
          }

          else
          {
            v168 = v168;
          }

          if (v165 && v170 < v169)
          {
            v168 = v167;
            if (!*(v205 + 4 * v167))
            {
              log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID prune out NN predictions if languages not in the LID1.0 destination field", v162);
              LODWORD(v163) = *(a1 + 1928);
              v169 = v170;
              v168 = v171;
            }
          }

          else
          {
            v169 = *&v162;
          }

          ++v167;
        }

        while (v167 < v163);
        v172 = v168;
        if (v163)
        {
          __sb = v168;
          v173 = 0;
          v174 = 0;
          v175 = v168;
          do
          {
            if (v175 == v174)
            {
              v176 = "<-- selected";
            }

            else
            {
              v176 = "";
            }

            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID [%3d] %1.5lf : %s %s", v174, *(v223[0] + 4 * v174), (*(a1 + 1936) + v173), v176);
            ++v174;
            v173 += 8;
          }

          while (v174 < *(a1 + 1928));
          v30 = v205;
          v125 = a1 + 133116;
          v19 = v200;
          a4 = v203;
          v172 = __sb;
        }

        else
        {
          v125 = a1 + 133116;
        }
      }

      else
      {
        v172 = 0;
        v169 = 0.0;
        v122 = v199;
      }

      v177 = *(a1 + 2036);
      if (v169 <= v177 && v172 != *(a1 + 1930))
      {
        v178 = *(a1 + 2032);
        v179 = *(*(a1 + 16) + 32);
        if (v169 <= v178)
        {
          log_OutText(v179, "FE_LID", 5, 0, "ML2 LID NN thresholding set to %f triggered: falling back on main language", v178);
          v172 = *(a1 + 1930);
        }

        else
        {
          log_OutText(v179, "FE_LID", 5, 0, "ML2 LID NN thresholding set to %f triggered: falling back on language smoothing", v177);
          v172 = -3;
        }
      }

      *(v125 + 4 * v126) = v172;
LABEL_330:
      lidword_AdvanceSkippingSpacesInNormEW(&v212, &v211);
      ++v126;
      v124 = v211;
      v123 = v212;
      v30 += 512;
      if (v211 == v212)
      {
        goto LABEL_331;
      }
    }
  }

  v187 = a1 + 133116;
  v34 = 1;
  v204 = a1 + 2044;
  while (1)
  {
    if (!*v32 || v33 > 0xFFu)
    {
      goto LABEL_241;
    }

    v35 = v33;
    if (*(v206 + 4 * v33) == -4)
    {
      goto LABEL_240;
    }

    v201 = v33;
    v37 = v211;
    v36 = v212;
    v219[0] = 0;
    v219[1] = 0;
    *(v220 + 6) = 0;
    v220[0] = 0;
    v195 = *(a1 + 1088);
    v198 = v33;
    v218 = 0;
    v217 = 0;
    v216 = 0;
    v215 = 0;
    v223[0] = 0;
    *&__c[1] = 0;
    __c[0] = 0;
    v38 = *v211;
    *v211 = 0;
    LOWORD(v221) = 1;
    __s = v36;
    Langs = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "ml2mw");
    if ((Langs & 0x80000000) != 0)
    {
      goto LABEL_341;
    }

    if (v221)
    {
      v40 = 0;
      do
      {
        *(v226 + v40) = LH_atou(*(v223[0] + 8 * v40));
        ++v40;
      }

      while (v40 < v221);
      ssft_qsort(v226, v221, 1, compare_2);
      if (v221)
      {
        v41 = 0;
        while (1)
        {
          *v211 = v38;
          v42 = __s;
          if (*__s)
          {
            v42 = __s;
            do
            {
              v43 = strlen(v42);
              if (utf8_BelongsToSet(0, v42, 0, v43))
              {
                break;
              }

              v42 += Utf8_LengthInBytes(v42, 1);
            }

            while (*v42);
          }

          *&__c[3] = v42;
          v44 = *v42;
          v45 = *(v226 + v41);
          if (*v42 && v45 >= 2)
          {
            v46 = 1;
            do
            {
              lidword_AdvanceToEndMultiword(&__c[3]);
              ++v46;
              v42 = *&__c[3];
              v44 = **&__c[3];
              v45 = *(v226 + v41);
            }

            while (**&__c[3] && v45 > v46);
          }

          else
          {
            v46 = 1;
          }

          if (v45 == v46)
          {
            *v42 = 0;
            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID multi word case-sensitive lookup : %s", __s);
            *&__c[1] = 1;
            Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", __s, v223, &__c[1], __c, *(a1 + 2040));
            if ((Langs & 0x80000000) != 0)
            {
              goto LABEL_341;
            }

            *v42 = v44;
            if (*&__c[1] == 1)
            {
              break;
            }
          }

          if (++v41 >= v221)
          {
            v37 = v211;
            goto LABEL_46;
          }
        }

        v75 = *v223[0];
        if (!strcmp(*v223[0], "all"))
        {
          v77 = -3;
        }

        else
        {
          v76 = *(a1 + 1928);
          if (*(a1 + 1928))
          {
            v77 = 0;
            v78 = *(a1 + 1936);
            do
            {
              if (!strcmp((v78 + 8 * v77), v75))
              {
                break;
              }

              ++v77;
            }

            while (v76 > v77);
          }

          else
          {
            v77 = 0;
          }
        }

        v34 = *(v226 + v41);
        if (*(v226 + v41))
        {
          v86 = (v204 + (v201 << 9) + 4 * v77);
          v87 = (v187 + 4 * v201);
          v88 = *(v226 + v41);
          do
          {
            if ((v77 & 0x8000) == 0)
            {
              *v86 = 1;
            }

            *v87++ = v77;
            v86 += 128;
            --v88;
          }

          while (v88);
        }

        v89 = *(*(a1 + 16) + 32);
        if (v77 < 0)
        {
          log_OutText(v89, "FE_LID", 5, 0, "ML2 LID found ambiguously in ML2 lexicon");
        }

        else
        {
          log_OutText(v89, "FE_LID", 5, 0, "ML2 LID found unambiguously in ML2 lexicon: %s");
        }

        v31 = v213;
        if (*v213 && *(v226 + v41) >= 2u)
        {
          v90 = 1;
          do
          {
            lidword_AdvanceToEndMultiword(&v213);
            v31 = v213;
            if (!*v213)
            {
              break;
            }

            ++v90;
          }

          while (v90 < *(v226 + v41));
        }

        v211 = v42;
        a4 = v203;
        if (v34 > 1)
        {
LABEL_172:
          v19 = v200;
          v30 = a1 + 2044;
          v35 = v198;
          goto LABEL_240;
        }
      }

      else
      {
LABEL_46:
        *v37 = v38;
        if ((Langs & 0x80000000) != 0)
        {
          goto LABEL_341;
        }

        v31 = v213;
      }
    }

    else
    {
      *v37 = v38;
    }

    v223[0] = 0;
    *&__c[1] = 0;
    __c[0] = 0;
    v47 = *v31;
    *v31 = 0;
    LOWORD(v221) = 1;
    Langs = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "ml2mw", v32, v223, &v221, __c);
    if ((Langs & 0x80000000) != 0)
    {
      goto LABEL_341;
    }

    if (v221)
    {
      v48 = 0;
      do
      {
        *(v226 + v48) = LH_atou(*(v223[0] + 8 * v48));
        ++v48;
      }

      while (v48 < v221);
      ssft_qsort(v226, v221, 1, compare_2);
      if (v221)
      {
        v49 = 0;
        while (1)
        {
          *v213 = v47;
          v50 = v32;
          if (*v32)
          {
            v50 = v32;
            do
            {
              v51 = strlen(v50);
              if (utf8_BelongsToSet(0, v50, 0, v51))
              {
                break;
              }

              v50 += Utf8_LengthInBytes(v50, 1);
            }

            while (*v50);
          }

          *&__c[3] = v50;
          v52 = *v50;
          v53 = *(v226 + v49);
          if (*v50 && v53 >= 2)
          {
            v54 = 1;
            do
            {
              lidword_AdvanceToEndMultiword(&__c[3]);
              ++v54;
              v50 = *&__c[3];
              v52 = **&__c[3];
              v53 = *(v226 + v49);
            }

            while (**&__c[3] && v53 > v54);
          }

          else
          {
            v54 = 1;
          }

          if (v53 == v54)
          {
            *v50 = 0;
            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID multi word lookup : %s", v32);
            *&__c[1] = 1;
            Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", v32, v223, &__c[1], __c, *(a1 + 2040));
            if ((Langs & 0x80000000) != 0)
            {
              goto LABEL_341;
            }

            *v50 = v52;
            if (*&__c[1] == 1)
            {
              break;
            }
          }

          if (++v49 >= v221)
          {
            goto LABEL_70;
          }
        }

        v79 = *v223[0];
        if (!strcmp(*v223[0], "all"))
        {
          v81 = -3;
        }

        else
        {
          v80 = *(a1 + 1928);
          if (*(a1 + 1928))
          {
            v81 = 0;
            v82 = *(a1 + 1936);
            do
            {
              if (!strcmp((v82 + 8 * v81), v79))
              {
                break;
              }

              ++v81;
            }

            while (v80 > v81);
          }

          else
          {
            v81 = 0;
          }
        }

        v91 = *(v226 + v49);
        if (*(v226 + v49))
        {
          v92 = (v204 + (v201 << 9) + 4 * v81);
          v93 = (v187 + 4 * v201);
          v94 = *(v226 + v49);
          do
          {
            if ((v81 & 0x8000) == 0)
            {
              *v92 = 1;
            }

            *v93++ = v81;
            v92 += 128;
            --v94;
          }

          while (v94);
        }

        v95 = *(*(a1 + 16) + 32);
        if (v81 < 0)
        {
          log_OutText(v95, "FE_LID", 5, 0, "ML2 LID found ambiguously in ML2 lexicon");
        }

        else
        {
          log_OutText(v95, "FE_LID", 5, 0, "ML2 LID found unambiguously in ML2 lexicon: %s");
        }

        if (*v211)
        {
          v96 = 1;
          do
          {
            if (v96 >= *(v226 + v49))
            {
              break;
            }

            lidword_AdvanceToEndMultiword(&v211);
            ++v96;
          }

          while (*v211);
        }

        v213 = v50;
        v34 = v91;
        a4 = v203;
        if (v91 > 1)
        {
          goto LABEL_172;
        }
      }

      else
      {
LABEL_70:
        v50 = v213;
        *v213 = v47;
        if ((Langs & 0x80000000) != 0)
        {
          goto LABEL_341;
        }
      }
    }

    else
    {
      v50 = v213;
      *v213 = v47;
    }

    v55 = *v50;
    *v50 = 0;
    HIWORD(v217) = 0;
    v56 = (*(*(a1 + 64) + 120))(*(a1 + 48), *(a1 + 56), v32, 20, "femwtn", "", &v218, &v217 + 2);
    if ((v56 & 0x80000000) != 0)
    {
      break;
    }

    if (!HIWORD(v217))
    {
      goto LABEL_94;
    }

    v57 = 0;
    do
    {
      v225[v57] = LH_atou(*(v218 + 8 * v57));
      ++v57;
    }

    while (v57 < HIWORD(v217));
    ssft_qsort(v225, HIWORD(v217), 1, compare_2);
    if (!HIWORD(v217))
    {
LABEL_94:
      v64 = v213;
      *v213 = v55;
      v65 = v211;
      v223[0] = 0;
      v223[1] = 0;
      *(v224 + 6) = 0;
      v224[0] = 0;
      v66 = *(a1 + 1088);
      *&__c[3] = 0;
      __c[0] = 0;
      v67 = *v64;
      v68 = *v211;
      v221 = 0;
      *v64 = 0;
      *v65 = 0;
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID word lookup : %s", v32);
      *&__c[1] = 1;
      Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", __s, &__c[3], &__c[1], __c, *(a1 + 2040));
      if ((Langs & 0x80000000) != 0)
      {
        goto LABEL_235;
      }

      v196 = v68;
      v30 = a1 + 2044;
      v188 = v67;
      if (*&__c[1])
      {
        goto LABEL_96;
      }

      v182 = v66;
      if (strcmp(v32, __s))
      {
        *&__c[1] = 1;
        Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", v32, &__c[3], &__c[1], __c, *(a1 + 2040));
        v19 = v200;
        a4 = v203;
        if ((Langs & 0x80000000) == 0)
        {
          v66 = v182;
          if (!*&__c[1])
          {
            goto LABEL_107;
          }

LABEL_96:
          v69 = v66;
          v185 = v65;
          v70 = **&__c[3];
          v71 = strchr(**&__c[3], __c[0]);
          v183 = v64;
          if (v71)
          {
            *v71 = 0;
            v70 = **&__c[3];
          }

          v19 = v200;
          a4 = v203;
          if (strcmp(v70, "all"))
          {
            v72 = *(a1 + 1928);
            if (*(a1 + 1928))
            {
              v73 = 0;
              v74 = *(a1 + 1936);
              while (strcmp(v74, v70))
              {
                ++v73;
                v74 += 8;
                if (v72 == v73)
                {
                  goto LABEL_132;
                }
              }

              LOWORD(v72) = v73;
LABEL_132:
              v30 = a1 + 2044;
            }

            *(v30 + (v201 << 9) + 4 * v72) = 1;
            *(v206 + 4 * v201) = v72;
            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID found unambiguously in ML2 lexicon: %s", (*(a1 + 1944) + 8 * v72));
            *v183 = v188;
            *v185 = v196;
            goto LABEL_238;
          }

          *(v206 + 4 * v201) = -3;
          Langs = calcWScore(a1, v32, "merwfrq_latn", 1, *(v69 + 8), (v204 + (v201 << 9)), v223);
          if ((Langs & 0x80000000) == 0)
          {
            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID found ambiguously in ML2 lexicon");
            *v64 = v188;
            *v185 = v196;
LABEL_119:
            calcWPenalties(a1, v198, 0);
          }
        }

        goto LABEL_238;
      }

LABEL_107:
      *&__c[1] = 0;
      Langs = (*(*(a1 + 64) + 240))(*(a1 + 48), *(a1 + 56), "tn", v32, &__c[3], &__c[1], __c, *(a1 + 134920), 0);
      v19 = v200;
      a4 = v203;
      if ((Langs & 0x80000000) != 0)
      {
        goto LABEL_238;
      }

      if (*&__c[1])
      {
        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID TN word : %s", v32);
        *(v206 + 4 * v201) = -3;
        Langs = calcWScore(a1, v32, "merwfrq_latn", 1, *(v182 + 8), (v204 + (v201 << 9)), v223);
        if ((Langs & 0x80000000) == 0)
        {
          *v64 = v188;
          *v65 = v196;
          goto LABEL_119;
        }

LABEL_238:
        v34 = 1;
        goto LABEL_239;
      }

      v184 = v64;
      if (*v32)
      {
        v97 = 1;
        v98 = v32;
        do
        {
          if (!v97)
          {
            goto LABEL_178;
          }

          v99 = strlen(v98);
          v100 = utf8_BelongsToSet(6u, v98, 0, v99);
          v97 = v100 == 0;
          v98 += Utf8_LengthInBytes(v98, 1);
        }

        while (*v98);
        if (v100)
        {
LABEL_178:
          log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID digit word : %s", v32);
          v181 = 1;
          goto LABEL_179;
        }

        v181 = 0;
LABEL_179:
        if (*v32)
        {
          v101 = 1;
          v102 = v32;
          do
          {
            if (!v101)
            {
              LODWORD(v103) = 0;
              goto LABEL_190;
            }

            v103 = utf8_strchr(*(a1 + 134928), v102);
            if (!v103)
            {
              v101 = 0;
            }

            v102 += Utf8_LengthInBytes(v102, 1);
          }

          while (*v102);
          if (v103)
          {
            goto LABEL_188;
          }

LABEL_190:
          if (*__s)
          {
            v104 = __s;
            while (lidword_IsUppercase(v104) || utf8_strchr(*(a1 + 134944), v104))
            {
              v104 += Utf8_LengthInBytes(v104, 1);
              if (!*v104)
              {
                goto LABEL_195;
              }
            }

            v105 = 0;
          }

          else
          {
LABEL_195:
            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID acronym word : %s", __s);
            v105 = 1;
          }

          v186 = v65;
          if (*v32)
          {
            v106 = 0;
            v107 = v32;
            while (utf8_strchr(*(a1 + 134952), v107) || utf8_strchr(*(a1 + 134944), v107))
            {
              v107 += Utf8_LengthInBytes(v107, 1);
              ++v106;
              if (!*v107)
              {
                if (v106 < 4u)
                {
                  break;
                }

                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID consonant word : %s", v32);
                v108 = 1;
                goto LABEL_204;
              }
            }
          }

          v108 = 0;
LABEL_204:
          v109 = strchr(v32, 64);
          if (!v109 || !strchr(v109, 46))
          {
            v111 = 1u;
            v112 = "http";
            while (!strstr(v32, v112))
            {
              v112 = szURL[v111++];
              if (v111 == 15)
              {
                v110 = 0;
                goto LABEL_211;
              }
            }
          }

          log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID URL or EMail : %s", v32);
          v110 = 1;
LABEL_211:
          if (((v181 | v103 | v105) & 1) != 0 || v110 | v108)
          {
            *(v206 + 4 * v201) = *(a1 + 1930);
            *v184 = v188;
            *v186 = v196;
            a4 = v203;
            if (v198)
            {
              v114 = (v201 - 1);
              if (*(v206 + 4 * v114) == *(a1 + 1930))
              {
                v30 = a1 + 2044;
                memcpy((v204 + (v201 << 9)), (v204 + (v114 << 9)), 0x200uLL);
                goto LABEL_238;
              }
            }
          }

          else
          {
            v113 = (v204 + (v201 << 9));
            Langs = calcWScore(a1, v32, "merwfrq_latn", 1, *(v182 + 8), v113, v223);
            if ((Langs & 0x80000000) != 0)
            {
              goto LABEL_236;
            }

            if (lidword_OutOfLID2(a1, v198))
            {
              *(v206 + 4 * v201) = *(a1 + 1930);
              log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID fallback to the main language (language code is not in LID2 subset): %s", v32);
              *v184 = v188;
              *v186 = v196;
              calcWPenalties(a1, v198, 0);
              goto LABEL_236;
            }

            if (!*(a1 + 134976))
            {
LABEL_233:
              *v184 = v188;
              *v186 = v196;
              v118 = v198;
              v119 = a1;
              v120 = 1;
              goto LABEL_234;
            }

            v115 = *(v182 + 8);
            if (*(v182 + 8))
            {
              do
              {
                if (*v113++)
                {
                  goto LABEL_233;
                }
              }

              while (--v115);
            }

            Langs = lidmde_FindLangs(a1, v32, v184, __s, v186, v226, &v221);
            if ((Langs & 0x80000000) == 0)
            {
              if (v221)
              {
                *(v206 + 4 * v201) = *(a1 + 1930);
                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) fallback to the main language (language code is not in LID2 subset): %s");
              }

              else
              {
                v117 = lidmde_SingleLang(v226, *(a1 + 1928));
                if (v117 < 0)
                {
                  if (!lidmde_MainLangPlusSomeOtherLangs(v226, *(a1 + 1930), *(a1 + 1928)))
                  {
                    goto LABEL_233;
                  }

                  *(v206 + 4 * v201) = -3;
                  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) found ambiguously");
                }

                else
                {
                  *(v206 + 4 * v201) = v117;
                  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) found unambiguously: %s");
                }
              }

              *v184 = v188;
              *v186 = v196;
              v118 = v198;
              v119 = a1;
              v120 = 0;
LABEL_234:
              calcWPenalties(v119, v118, v120);
            }

LABEL_235:
            v19 = v200;
LABEL_236:
            a4 = v203;
          }

          v30 = a1 + 2044;
          goto LABEL_238;
        }
      }

      else
      {
        v181 = 0;
      }

LABEL_188:
      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID punctuation word : %s", v32);
      LODWORD(v103) = 1;
      goto LABEL_190;
    }

    v58 = 0;
    while (1)
    {
      *v213 = v55;
      v59 = v32;
      if (*v32)
      {
        v59 = v32;
        do
        {
          v60 = strlen(v59);
          if (utf8_BelongsToSet(0, v59, 0, v60))
          {
            break;
          }

          v59 += Utf8_LengthInBytes(v59, 1);
        }

        while (*v59);
      }

      v215 = v59;
      v61 = *v59;
      v62 = v225[v58];
      if (*v59 && v62 >= 2)
      {
        v63 = 1;
        do
        {
          lidword_AdvanceToEndMultiword(&v215);
          ++v63;
          v59 = v215;
          v61 = *v215;
          v62 = v225[v58];
        }

        while (*v215 && v62 > v63);
      }

      else
      {
        v63 = 1;
      }

      if (v62 == v63)
      {
        *v59 = 0;
        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID TN multi word lookup : %s", v32);
        LOWORD(v217) = 0;
        Langs = (*(*(a1 + 64) + 240))(*(a1 + 48), *(a1 + 56), "tn", v32, &v218, &v217, &v216, *(a1 + 134920), 0);
        if ((Langs & 0x80000000) != 0)
        {
          goto LABEL_341;
        }

        *v59 = v61;
        if (v217 == 1)
        {
          break;
        }
      }

      if (++v58 >= HIWORD(v217))
      {
        goto LABEL_94;
      }
    }

    log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID TN multi word : %s", v32);
    if (v225[v58])
    {
      v83 = 0;
      v189 = v213;
      v84 = (v204 + (v201 << 9));
      do
      {
        *(v187 + 4 * v201 + 4 * v83) = -3;
        Langs = calcWScore(a1, v32, "merwfrq_latn", 1, *(v195 + 8), v84, v219);
        if ((Langs & 0x80000000) != 0)
        {
          goto LABEL_341;
        }

        *v189 = v55;
        calcWPenalties(a1, (v201 + v83++), 0);
        v84 += 512;
      }

      while (v83 < v225[v58]);
      v34 = v225[v58];
    }

    else
    {
      v34 = 0;
    }

    a4 = v203;
    if (*v211)
    {
      v85 = 1;
      do
      {
        if (v85 >= v225[v58])
        {
          break;
        }

        lidword_AdvanceToEndMultiword(&v211);
        ++v85;
      }

      while (*v211);
    }

    v213 = v59;
    v19 = v200;
    v30 = a1 + 2044;
LABEL_239:
    v35 = v198;
    if ((Langs & 0x80000000) != 0)
    {
      inserted = Langs;
      goto LABEL_346;
    }

LABEL_240:
    lidword_AdvanceSkippingSpacesInNormEW(&v214, &v213);
    lidword_AdvanceSkippingSpacesInNormEW(&v212, &v211);
    v31 = v213;
    v32 = v214;
    v33 = v34 + v35;
    if (v213 == v214)
    {
      goto LABEL_241;
    }
  }

  Langs = v56;
LABEL_341:
  inserted = Langs;
  v19 = v200;
LABEL_346:
  v21 = v194;
  v122 = v199;
LABEL_334:
  heap_Free(*(*(a1 + 16) + 8), v19);
  if (v21)
  {
    heap_Free(*(*(a1 + 16) + 8), v21);
  }

  if (v122)
  {
    heap_Free(*(*(a1 + 16) + 8), v122);
  }

  return inserted;
}