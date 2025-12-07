uint64_t hlp_freeFeatureVector(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v6 = *a2++;
      heap_Free(*(a1 + 8), v6);
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t _hmgrph_param_split(uint64_t a1, const char *a2, uint64_t *a3, _DWORD *a4)
{
  do
  {
    v8 = *a2++;
  }

  while (v8 == 32);
  while (1)
  {
    v9 = a2[cstdlib_strlen(a2 - 1) - 2];
    v10 = a2 - 1;
    if (v9 != 32)
    {
      break;
    }

    a2[cstdlib_strlen(v10) - 2] = 0;
  }

  v11 = cstdlib_strlen(v10);
  v12 = v11;
  v13 = 0;
  *a4 = 0;
  if ((v11 + 1) > 1)
  {
    v14 = (v11 + 1);
  }

  else
  {
    v14 = 1;
  }

  v15 = a2 - 1;
  do
  {
    v16 = *v15++;
    if ((v16 | 0x20) == 0x20)
    {
      *a4 = ++v13;
    }

    --v14;
  }

  while (v14);
  v17 = heap_Calloc(*(a1 + 8), 1, 8 * v13);
  *a3 = v17;
  if (v17)
  {
    *v17 = a2 - 1;
    if (v12)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = &a2[v18];
        if (a2[v18 - 1] == 32)
        {
          *(v20 - 1) = 0;
          ++v18;
          *(*a3 + 8 * ++v19) = v20;
        }

        else
        {
          ++v18;
        }
      }

      while (v18 != v12);
    }

    return 0;
  }

  else
  {
    v21 = 2314215434;
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
    if (*a3)
    {
      heap_Free(*(a1 + 8), *a3);
    }
  }

  return v21;
}

uint64_t _hmgrph_parse_params(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  *(a4 + 32) = 0;
  v6 = (a4 + 32);
  v7 = *(a4 + 16);
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(a4 + 40) = 0;
  if (a3)
  {
    v8 = 2314215424;
    v9 = a3;
    v10 = (a2 + 8);
    do
    {
      v11 = *(*(a4 + 16) + 64);
      v16 = *(a4 + 40);
      v17 = v11;
      if (cstdlib_strcmp(*(v10 - 1), "features"))
      {
        if (!cstdlib_strcmp(*(v10 - 1), "collocations"))
        {
          _hmgrph_param_split(a1, *v10, v6, &v16);
          if (HIWORD(v16))
          {
            return v8;
          }

          *(a4 + 40) = v16;
        }
      }

      else
      {
        _hmgrph_param_split(a1, *v10, (*(a4 + 16) + 56), &v17);
        if (v17 > 0xFF)
        {
          return v8;
        }

        *(*(a4 + 16) + 64) = v17;
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {
    *(v7 + 64) = 29;
    v12 = heap_Calloc(*(a1 + 8), 1, 232);
    v13 = *(a4 + 16);
    *(v13 + 56) = v12;
    if (!v12)
    {
      log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
      return 2314215434;
    }

    if (*(v13 + 64))
    {
      v14 = 0;
      do
      {
        *(*(v13 + 56) + 8 * v14) = off_279DAC800[v14];
        ++v14;
        v13 = *(a4 + 16);
      }

      while (v14 < *(v13 + 64));
    }
  }

  return 0;
}

uint64_t stat_hmogrph_ModelInit(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, unsigned __int16 *a8, unsigned __int16 *a9)
{
  v44 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v40 = 0;
  *__s2 = 0;
  *v38 = 0;
  v39 = 0;
  memset(v43, 0, sizeof(v43));
  __src = 0;
  *a7 = 0;
  *a8 = 0;
  *a9 = 0;
  BrokerString = stat_hmogrph_getBrokerString(a3, v43, 0x100uLL);
  if ((BrokerString & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  BrokerString = ssftriff_reader_ObjOpen(a1, a2, 2, v43, "HMGR", 1031, v38);
  if ((BrokerString & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  v36 = a6;
  v18 = ssftriff_reader_OpenChunk(*v38, __s2, &v40, &v39);
  if ((v18 & 0x80000000) != 0)
  {
    v21 = v18;
    v19 = 0;
  }

  else
  {
    v19 = 0;
    do
    {
      ++v19;
      ssftriff_reader_CloseChunk(*v38);
      v20 = ssftriff_reader_OpenChunk(*v38, __s2, &v40, &v39);
    }

    while ((v20 & 0x80000000) == 0);
    v21 = v20;
  }

  ssftriff_reader_ObjClose(*v38);
  *v38 = 0;
  if ((v21 & 0x1FFF) != 0x14)
  {
LABEL_52:
    stat_hmogrph_ModelDeinit(a3, a7, *a8);
    *a8 = 0;
    return v21;
  }

  v22 = heap_Calloc(*(a3 + 8), 1, 48 * v19);
  *a7 = v22;
  if (!v22)
  {
    v21 = 2314215434;
    v35 = *(a3 + 32);
    v30 = 0;
LABEL_55:
    log_OutPublic(v35, "FE_HMOGRPH", 37000, v30);
    goto LABEL_44;
  }

  *a9 = v19;
  BrokerString = ssftriff_reader_ObjOpen(a1, a2, 2, v43, "HMGR", 1031, v38);
  if ((BrokerString & 0x80000000) != 0)
  {
LABEL_43:
    v21 = BrokerString;
    goto LABEL_44;
  }

  v23 = ssftriff_reader_OpenChunk(*v38, __s2, &v40, &v39);
  if ((v23 & 0x80000000) == 0)
  {
    v24 = v36;
    do
    {
      LODWORD(v25) = *a8;
      if (*a8)
      {
        v26 = 0;
        v27 = 0;
        while (cstdlib_strcmp((*a7 + v26 + 7), __s2))
        {
          ++v27;
          v25 = *a8;
          v26 += 48;
          if (v27 >= v25)
          {
            goto LABEL_21;
          }
        }

        if (*a7)
        {
          v28 = *a7 + v26;
          v24 = v36;
          goto LABEL_25;
        }

        LODWORD(v25) = *a8;
LABEL_21:
        v24 = v36;
      }

      v28 = *a7 + 48 * v25;
      *a8 = v25 + 1;
      cstdlib_strcpy((v28 + 7), __s2);
      if (com_getUnicodeOrth(a4, a5, v24, __s2, &__src))
      {
        cstdlib_strcpy(v28, __src);
      }

      else
      {
        log_OutText(*(a3 + 32), "FE_HMOGRPH", 5, 0, "Orth for unicode %s does not exist in dic_cfg4.cfg", __s2);
      }

LABEL_25:
      log_OutText(*(a3 + 32), "FE_HMOGRPH", 5, 0, "model #%d, homograph %s", *a8, v28);
      while (1)
      {
        v29 = ssftriff_reader_OpenChunk(*v38, __s2, &v40, &v39);
        if ((v29 & 0x80000000) != 0)
        {
          break;
        }

        log_OutText(*(a3 + 32), "FE_HMOGRPH", 5, 0, "model chunk %s for homograph %s, size %d", __s2, v28, v40);
        if (cstdlib_strcmp(__s2, "CRPH"))
        {
          if (cstdlib_strcmp(__s2, "IGTR"))
          {
            log_OutText(*(a3 + 32), "FE_HMOGRPH", 0, 0, "unknown model type %s", __s2);
            v21 = 2314215428;
            goto LABEL_44;
          }

          v30 = *(v28 + 24);
          if (!v30)
          {
            v30 = heap_Calloc(*(a3 + 8), 1, 1600);
            *(v28 + 24) = v30;
            if (!v30)
            {
LABEL_58:
              v21 = 2314215434;
              v35 = *(a3 + 32);
              goto LABEL_55;
            }
          }

          v31 = igtree_Init(a1, a2, *v38, v30);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v30 = *(v28 + 16);
          if (!v30)
          {
            v30 = heap_Calloc(*(a3 + 8), 1, 344);
            *(v28 + 16) = v30;
            if (!v30)
            {
              goto LABEL_58;
            }
          }

          *(v30 + 72) = 1;
          v31 = crf_Init(a1, a2, *v38, v30);
          if ((v31 & 0x80000000) != 0)
          {
LABEL_56:
            v21 = v31;
            ssftriff_reader_CloseChunk(*v38);
            goto LABEL_44;
          }

          _hmgrph_parse_params(a3, *(*(v28 + 16) + 32), *(*(v28 + 16) + 40), v28);
        }

        ssftriff_reader_CloseChunk(*v38);
      }

      v21 = v29;
      if ((v29 & 0x1FFF) != 0x14)
      {
        goto LABEL_44;
      }

      ssftriff_reader_CloseChunk(*v38);
      v23 = ssftriff_reader_OpenChunk(*v38, __s2, &v40, &v39);
    }

    while ((v23 & 0x80000000) == 0);
  }

  if ((v23 & 0x1FFF) == 0x14)
  {
    v21 = 0;
  }

  else
  {
    v21 = v23;
  }

LABEL_44:
  if (*v38)
  {
    v32 = ssftriff_reader_ObjClose(*v38);
    if (v32 >= 0 || v21 <= -1)
    {
      v21 = v21;
    }

    else
    {
      v21 = v32;
    }
  }

  if ((v21 & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  return v21;
}

uint64_t stat_hmogrph_ModelDeinit(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 48 * a3;
    do
    {
      v8 = *a2;
      v9 = *(*a2 + v5 + 24);
      if (v9)
      {
        v6 = igtree_Deinit(a1, v9);
        if ((v6 & 0x80000000) != 0)
        {
          return v6;
        }

        heap_Free(*(a1 + 8), *(*a2 + v5 + 24));
        *(*a2 + v5 + 24) = 0;
        v8 = *a2;
      }

      v10 = *(v8 + v5 + 16);
      if (v10)
      {
        v6 = crf_Deinit(v10);
        if ((v6 & 0x80000000) != 0)
        {
          return v6;
        }

        heap_Free(*(a1 + 8), *(*a2 + v5 + 16));
        *(*a2 + v5 + 16) = 0;
        v8 = *a2;
      }

      v11 = *(v8 + v5 + 32);
      if (v11)
      {
        heap_Free(*(a1 + 8), v11);
        *(*a2 + v5 + 32) = 0;
      }

      v5 += 48;
    }

    while (v7 != v5);
  }

  else
  {
    v6 = 0;
  }

  heap_Free(*(a1 + 8), *a2);
  *a2 = 0;
  return v6;
}

uint64_t hlp_getCharModel(char *__s1, unsigned int a2, char *__s2, _WORD *a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = a2;
  do
  {
    if (!cstdlib_strcmp(__s1, __s2))
    {
      *a4 = v7;
      v8 = 1;
    }

    ++v7;
    __s1 += 48;
  }

  while (v9 != v7);
  return v8;
}

uint64_t hlp_maxLenPhons(const char **a1, unsigned int a2)
{
  if (a2)
  {
    v4 = cstdlib_strlen(*a1);
    if (a2 != 1)
    {
      v5 = a1 + 7;
      v6 = a2 - 1;
      do
      {
        v7 = *v5;
        v5 += 7;
        v8 = cstdlib_strlen(v7);
        if (v4 <= v8)
        {
          v4 = v8;
        }

        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 + 1;
}

uint64_t hlp_getcharPhons(uint64_t a1, const char **a2, unsigned int a3, uint64_t *a4, _WORD *a5)
{
  if (a3)
  {
    v6 = a4;
    v10 = a3;
    v11 = a3;
    v12 = a4;
    do
    {
      v13 = cstdlib_strlen(*a2);
      v14 = heap_Calloc(*(a1 + 8), 1, v13 + 1);
      *v12 = v14;
      if (!v14)
      {
        log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
        do
        {
          if (*v6)
          {
            heap_Free(*(a1 + 8), *v6);
            *v6 = 0;
          }

          ++v6;
          --v10;
        }

        while (v10);
        return 2314215434;
      }

      v15 = *a2;
      a2 += 7;
      cstdlib_memcpy(v14, v15, v13);
      v16 = *v12++;
      *(v16 + v13) = 0;
      --v11;
    }

    while (v11);
    *a5 = 1;
    if (a3 != 1)
    {
      v17 = 1;
      do
      {
        v18 = 0;
        while (cstdlib_strcmp(v6[v18], v6[v17]))
        {
          if (v17 == ++v18)
          {
            ++*a5;
            break;
          }
        }

        ++v17;
      }

      while (v17 != v10);
    }

    return 0;
  }

  else
  {
    result = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t hlp_highPriorityPhon(uint64_t a1, int a2, _WORD *a3)
{
  if (!a2)
  {
    return 0;
  }

  *a3 = 0;
  if (a2 != 1)
  {
    v3 = 0;
    v4 = (a1 + 64);
    for (i = 1; i != a2; ++i)
    {
      v6 = *v4;
      v4 += 28;
      if (v6 < *(a1 + 56 * v3 + 8))
      {
        v3 = i;
        *a3 = i;
      }
    }
  }

  return 1;
}

uint64_t hlp_concatFeatureVector(uint64_t a1, const char **a2, unsigned int a3, char **a4)
{
  if (a3)
  {
    LODWORD(v8) = 0;
    v9 = a3;
    v10 = a2;
    do
    {
      v11 = *v10++;
      v8 = v8 + cstdlib_strlen(v11) + 2;
      --v9;
    }

    while (v9);
  }

  else
  {
    v8 = 0;
  }

  v12 = heap_Calloc(*(a1 + 8), 1, v8);
  *a4 = v12;
  if (v12)
  {
    if (a3)
    {
      v13 = 0;
      do
      {
        cstdlib_strcat(*a4, a2[v13]);
        if (v13 < a3 - 1)
        {
          cstdlib_strcat(*a4, " ");
        }

        ++v13;
      }

      while (a3 != v13);
    }

    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
    return 2314215434;
  }
}

uint64_t hlp_disamWithModels(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, const char *a6, uint64_t a7, uint64_t a8, char *a9, __int128 *a10)
{
  v143 = 0;
  v144[0] = 0;
  v142 = 0;
  v140 = 0;
  v141 = 0;
  v139 = 0;
  v138 = 0;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  if (!*(a2 + 40))
  {
    ReadOnly = 0;
LABEL_6:
    v16 = 1;
    goto LABEL_9;
  }

  v14 = *(a2 + 48);
  if (v14)
  {
    ReadOnly = ssftmap_FindReadOnly(v14, a6, &v137);
    if (!*(a2 + 40))
    {
      goto LABEL_6;
    }
  }

  else
  {
    ReadOnly = 0;
  }

  v16 = cstdlib_strcmp(*(a2 + 64), "albert") != 0;
LABEL_9:
  v126 = v16;
  v17 = *(a2 + 32);
  if (*(a2 + 32))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = *(a2 + 24);
    do
    {
      if (!cstdlib_strcmp(v21, a6))
      {
        v18 = v19;
        v20 = 1;
      }

      ++v19;
      v21 += 48;
    }

    while (v17 != v19);
    v22 = v18;
    if (v20)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v22 = 0;
  }

  if (ReadOnly < 0)
  {
    log_OutText(*(a1 + 32), "FE_HMOGRPH", 0, 0, "No model for homograph %s exist", a6);
    v23 = 0;
    v24 = 0;
    goto LABEL_85;
  }

LABEL_19:
  v25 = a10;
  v26 = *(a2 + 24) + 48 * v22;
  v27 = *(a1 + 32);
  if (!*(v26 + 16))
  {
    v122 = a5;
    log_OutText(v27, "FE_HMOGRPH", 5, 0, "MaxEnt model for homograph %s does not exist", a6);
    v23 = 0;
    v29 = 0;
    goto LABEL_35;
  }

  log_OutText(v27, "FE_HMOGRPH", 5, 0, "Disambiguate homograph %s with MaxEnt model", a6);
  v28 = heap_Calloc(*(a1 + 8), 1, 8 * *(*(v26 + 16) + 64) - 8);
  if (!v28)
  {
    v24 = 0;
    v23 = 2314215434;
    goto LABEL_85;
  }

  v29 = v28;
  v122 = a5;
  inited = hlp_initFeatureVector(a1, v28, (*(*(v26 + 16) + 64) - 1));
  if ((inited & 0x80000000) != 0 || (v31 = *(v26 + 16), v32 = *(v31 + 56), v33 = *(v31 + 64), v34 = *(v26 + 32), LOWORD(v31) = *(v26 + 40), v35 = a10[3], v131 = a10[2], v132 = v35, v133 = a10[4], v134 = *(a10 + 10), v36 = a10[1], v129 = *a10, v130 = v36, hlp_setFeatureVector(a1, v29, v32, v33, (a2 + 8), a3, a5, v34, v31, &v129), inited = hlp_concatFeatureVector(a1, v29, (*(*(v26 + 16) + 64) - 1), v144), (inited & 0x80000000) != 0))
  {
    v23 = inited;
    goto LABEL_31;
  }

  log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "STATHMOGRPH_FEATURE: homograph %s at word %d, char %d", a6, a3, a5);
  log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "STATHMOGRPH_FEATURE: %s", v144[0]);
  v23 = crf_Process(*(v26 + 16), v144, 1u, &v143, &v142);
  if ((v23 & 0x80000000) != 0)
  {
LABEL_31:
    v24 = 0;
    v42 = 0;
    goto LABEL_82;
  }

  v37 = ReadOnly;
  v38 = v29;
  if (*(*(v26 + 16) + 64) != 1)
  {
    v39 = (*(*(v26 + 16) + 64) - 1);
    v40 = v38;
    do
    {
      v41 = *v40++;
      heap_Free(*(a1 + 8), v41);
      --v39;
    }

    while (v39);
  }

  if (v142 == 1)
  {
    cstdlib_strcpy(a9, *v143);
    a9[cstdlib_strlen(a9) - 1] = 0;
  }

  else
  {
    log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "%d predictions for homograph %s with maxent model (discarded)", v142, a6);
  }

  v29 = v38;
  ReadOnly = v37;
  v25 = a10;
LABEL_35:
  v43 = *(a1 + 32);
  if (!*(a2 + 40) || ReadOnly < 0)
  {
    __dst = a9;
    log_OutText(v43, "FE_HMOGRPH", 5, 0, "No NN model for homograph %s !", a6);
    v24 = 0;
    goto LABEL_43;
  }

  log_OutText(v43, "FE_HMOGRPH", 5, 0, "Disambiguate homograph %s with NN model", a6);
  v44 = *(a2 + 80);
  v45 = (*(v44 + 40))(*(a2 + 104), *(a2 + 112), &v138);
  if ((v45 & 0x80000000) != 0)
  {
    v23 = v45;
    goto LABEL_81;
  }

  v46 = *(a2 + 60);
  if (v126)
  {
    if (v46 == v138 + 1)
    {
      __dst = a9;
      v119 = (a1 + 8);
      v47 = heap_Calloc(*(a1 + 8), 1, 8);
      if (v47)
      {
        v24 = v47;
        v48 = *(a2 + 60) * *(a2 + 56);
        goto LABEL_63;
      }

      goto LABEL_80;
    }

LABEL_67:
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
    v42 = 0;
    v24 = 0;
    v23 = 2314215449;
    if (v29)
    {
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  if (v46 != v138)
  {
    goto LABEL_67;
  }

  __dst = a9;
  v119 = (a1 + 8);
  v65 = heap_Calloc(*(a1 + 8), 1, 8);
  if (!v65)
  {
LABEL_80:
    v23 = 2314215434;
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
LABEL_81:
    v42 = 0;
    v24 = 0;
    if (v29)
    {
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v24 = v65;
  v48 = (*(a2 + 56) + 2) * *(a2 + 60);
LABEL_63:
  v66 = heap_Alloc(*v119, 4 * v48);
  v140 = v66;
  if (!v66)
  {
    v23 = 2314215434;
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
    goto LABEL_57;
  }

  v115 = v66;
  nnSent = make_nnSent(a1, a2 + 8, &v135);
  if ((nnSent & 0x80000000) != 0)
  {
    v23 = nnSent;
    v76 = *(a1 + 32);
    v77 = "Make NN Sent Failed";
    goto LABEL_164;
  }

  if (v126)
  {
    v68 = *(a2 + 56);
    v69 = v115;
  }

  else
  {
    *v115 = 101.0;
    v69 = v115 + 1;
    v68 = *(a2 + 56);
    v140[v68 + 1] = 1120665600;
  }

  if ((v68 + 1) / 2 <= (1 - v68) / 2)
  {
LABEL_154:
    if (v126)
    {
      v104 = v68;
    }

    else
    {
      v104 = v68 + 2;
    }

    v23 = fi_predict(*(a2 + 40), &v140, v104, &v139);
    if ((v23 & 0x80000000) == 0)
    {
      if (*(*(a7 + 48) + 16 * a4 + 8))
      {
        v121 = v25;
        v105 = v29;
        v106 = 0;
        while (cstdlib_strcmp(*(a8 + 8 * v106), *v139))
        {
          ++v106;
          v49 = 1;
          if (v106 >= *(*(a7 + 48) + 16 * a4 + 8))
          {
            goto LABEL_168;
          }
        }

        cstdlib_strcpy(__dst, *v139);
        v49 = 0;
LABEL_168:
        v29 = v105;
        v25 = v121;
        goto LABEL_44;
      }

LABEL_43:
      v49 = 1;
LABEL_44:
      v50 = *(a1 + 32);
      if (*(v26 + 24))
      {
        v127 = v49;
        v51 = v25;
        log_OutText(v50, "FE_HMOGRPH", 5, 0, "Disambiguate homograph %s with igtree model", a6);
        v42 = heap_Calloc(*(a1 + 8), 1, 8 * *(*(v26 + 24) + 1296) - 8);
        if (!v42)
        {
          v23 = 2314215434;
          if (v29)
          {
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        v52 = hlp_initFeatureVector(a1, v42, (*(*(v26 + 24) + 1296) - 1));
        if ((v52 & 0x80000000) != 0)
        {
          v23 = v52;
          if (v29)
          {
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        v110 = ReadOnly;
        v53 = v29;
        v54 = *(v26 + 24);
        v55 = *(v54 + 1312);
        v56 = *(v54 + 1296);
        v57 = v51[3];
        v131 = v51[2];
        v132 = v57;
        v133 = v51[4];
        v134 = *(v51 + 10);
        v58 = v51[1];
        v129 = *v51;
        v130 = v58;
        hlp_setFeatureVector(a1, v42, v55, v56, (a2 + 8), a3, v122, 0, 0, &v129);
        igtree_Process(*(v26 + 24), v42, &v141);
        if (*(*(v26 + 24) + 1296) != 1)
        {
          v59 = (*(*(v26 + 24) + 1296) - 1);
          v60 = v42;
          do
          {
            v61 = *v60++;
            heap_Free(*(a1 + 8), v61);
            --v59;
          }

          while (v59);
        }

        v62 = cstdlib_strcmp(v141, "NOMATCH");
        if (v127)
        {
          v29 = v53;
          if (!v62)
          {
            v63 = v137;
            if (!v137 || v110 < 0)
            {
              log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No igtree rule matched for homograph %s", a6);
              v64 = __dst;
              if (*__dst)
              {
                goto LABEL_78;
              }

              v63 = "NOMATCH";
              goto LABEL_77;
            }

LABEL_76:
            v64 = __dst;
LABEL_77:
            cstdlib_strcpy(v64, v63);
            goto LABEL_78;
          }
        }

        else
        {
          v29 = v53;
          if (!v62 || !cstdlib_strcmp(v141, *v139))
          {
LABEL_78:
            v23 = 0;
            if (v29)
            {
              goto LABEL_82;
            }

            goto LABEL_83;
          }
        }

        v63 = v141;
        goto LABEL_76;
      }

      log_OutText(v50, "FE_HMOGRPH", 5, 0, "IGTree model for homograph %s does not exist");
LABEL_57:
      v42 = 0;
      if (v29)
      {
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    v76 = *(a1 + 32);
    v77 = "FIhmogrph Prediction Failed";
LABEL_164:
    log_OutText(v76, "FE_HMOGRPH", 5, 0, v77, 0);
    goto LABEL_57;
  }

  v78 = (1 - v68) / 2;
  v109 = v29;
  v79 = (v44 + 72);
  if (v126)
  {
    v79 = (v44 + 56);
  }

  v108 = v79;
  v107 = (v44 + 56);
  v111 = ReadOnly;
  v120 = v25;
  while (1)
  {
    v114 = v78;
    if (v126)
    {
      if (v78)
      {
        v80 = 0.0;
      }

      else
      {
        v80 = 1.0;
      }

      *v69++ = v80;
    }

    __src = *(a2 + 72);
    v81 = v135;
    v82 = a3;
    v113 = cstdlib_strlen(v135[a3]);
    v117 = v81;
    v83 = 0;
    if (a3)
    {
      do
      {
        v84 = *v81++;
        v83 += cstdlib_strlen(v84);
        --v82;
      }

      while (v82);
    }

    v116 = v69;
    v85 = v136;
    if (v136 <= (a3 + 1))
    {
      v86 = 0;
    }

    else
    {
      v86 = 0;
      v87 = v136 - (a3 + 1);
      v88 = &v117[(a3 + 1)];
      do
      {
        v89 = *v88++;
        v86 += cstdlib_strlen(v89);
        --v87;
      }

      while (v87);
    }

    v90 = heap_Calloc(*v119, 1, (v113 + v83 + v86 + 1));
    if (!v90)
    {
      break;
    }

    v91 = v90;
    if (v85)
    {
      NextUtf8Offset = v83 + v122;
      v93 = v117;
      v94 = v85;
      do
      {
        v95 = *v93++;
        cstdlib_strcat(v91, v95);
        --v94;
      }

      while (v94);
      if (v85 > a3 && cstdlib_strlen(v117[a3]) > v122)
      {
        v96 = v114;
        if ((v114 & 0x8000) != 0)
        {
          if (NextUtf8Offset)
          {
            v98 = v114;
            do
            {
              PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v91, NextUtf8Offset);
              NextUtf8Offset = PreviousUtf8Offset;
              v100 = ~v98++ == 0;
            }

            while (!v100 && PreviousUtf8Offset);
            if (!v98)
            {
LABEL_139:
              if ((utf8_getUTF8Char(v91, NextUtf8Offset, v24) & 0x80000000) == 0)
              {
                goto LABEL_141;
              }
            }
          }
        }

        else
        {
          if (!v114)
          {
            goto LABEL_139;
          }

          while (NextUtf8Offset != cstdlib_strlen(v91))
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(v91, NextUtf8Offset);
            v97 = v96--;
            if (v97 <= 1)
            {
              goto LABEL_139;
            }
          }
        }
      }
    }

    cstdlib_strcpy(v24, __src);
LABEL_141:
    heap_Free(*v119, v91);
    if (!cstdlib_strcmp(v24, ""))
    {
      cstdlib_strcpy(v24, *(a2 + 72));
    }

    ReadOnly = v111;
    v25 = v120;
    if (utf8_IsChineseLetter(v24))
    {
      goto LABEL_151;
    }

    v101 = *v24;
    switch(v101)
    {
      case 's':
        v103 = *(a2 + 72);
        v102 = v24;
        goto LABEL_150;
      case 'e':
        v102 = v24;
        v103 = "ENG";
        goto LABEL_150;
      case '0':
        v102 = v24;
        v103 = "NUM";
LABEL_150:
        cstdlib_strcpy(v102, v103);
        break;
    }

LABEL_151:
    if (((*v108)(*(a2 + 104), *(a2 + 112), v24, v116) & 0x1FFF) == 0x14)
    {
      log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "No embedding vector for character %s . Fall back!", v24);
      cstdlib_strcpy(v24, *(a2 + 72));
      (*v107)(*(a2 + 104), *(a2 + 112), v24, v116);
    }

    v69 = &v116[v138];
    v78 = v114 + 1;
    v68 = *(a2 + 56);
    v29 = v109;
    if ((v68 + 1) / 2 <= (v114 + 1))
    {
      goto LABEL_154;
    }
  }

  v23 = 2314215434;
  log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
  v42 = 0;
  v29 = v109;
  if (!v109)
  {
    goto LABEL_83;
  }

LABEL_82:
  heap_Free(*(a1 + 8), v29);
LABEL_83:
  if (v42)
  {
    heap_Free(*(a1 + 8), v42);
  }

LABEL_85:
  if (v144[0])
  {
    heap_Free(*(a1 + 8), v144[0]);
    v144[0] = 0;
  }

  v70 = v143;
  if (v143)
  {
    if (v142)
    {
        ;
      }

      v70 = v143;
    }

    heap_Free(*(a1 + 8), v70);
    v143 = 0;
  }

  if (v24)
  {
    heap_Free(*(a1 + 8), v24);
  }

  v72 = v136;
  v73 = v135;
  if (v136)
  {
    v74 = v135;
    do
    {
      if (*v74)
      {
        heap_Free(*(a1 + 8), *v74);
        *v74 = 0;
      }

      ++v74;
      --v72;
    }

    while (v72);
LABEL_102:
    heap_Free(*(a1 + 8), v73);
  }

  else if (v135)
  {
    goto LABEL_102;
  }

  return v23;
}

uint64_t make_nnSent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *(a3 + 8) = v6;
  v7 = heap_Alloc(*(a1 + 8), 8 * v6);
  *a3 = v7;
  if (v7)
  {
    if (*(a3 + 8))
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        if (!utf8_IsChineseLetter(*(*a2 + 8 * v8)) && cstdlib_strlen(*(*a2 + 8 * v8)) == 1)
        {
          v10 = *(*a2 + 8 * v8);
          v11 = *v10;
          if ((v11 - 48) <= 9)
          {
            v12 = heap_Alloc(*(a1 + 8), 2);
            *(*a3 + v8) = v12;
            if (!v12)
            {
              goto LABEL_41;
            }

LABEL_19:
            v15 = "0";
            goto LABEL_20;
          }

          v19 = *(a1 + 8);
          if ((v11 & 0xFFFFFFDF) - 65 <= 0x19)
          {
            v12 = heap_Alloc(*(a1 + 8), 2);
            *(*a3 + v8) = v12;
            if (!v12)
            {
              goto LABEL_41;
            }

LABEL_24:
            v15 = "e";
            goto LABEL_20;
          }

          v20 = cstdlib_strlen(v10);
          v12 = heap_Alloc(v19, (v20 + 1));
          *(*a3 + v8) = v12;
          if (!v12)
          {
LABEL_41:
            v24 = 2314215434;
            log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
            log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "Tag 1-char orth word for NN Failed", 0);
            return v24;
          }

          goto LABEL_12;
        }

        if (utf8_IsChineseLetter(*(*a2 + 8 * v8)) || cstdlib_strlen(*(*a2 + 8 * v8)) == 1)
        {
          break;
        }

        v16 = *(*a2 + 8 * v8);
        v17 = *v16;
        if ((v17 - 48) < 0xA || ((v17 - 35) <= 0x3C ? (v18 = ((1 << (v17 - 35)) & 0x1800000004000503) == 0) : (v18 = 1), !v18 || v17 == 124))
        {
          v12 = heap_Alloc(*(a1 + 8), 2);
          *(*a3 + v8) = v12;
          if (!v12)
          {
            goto LABEL_42;
          }

          goto LABEL_19;
        }

        if ((v17 & 0xFFFFFFDF) - 65 < 0x1A)
        {
          goto LABEL_29;
        }

        v21 = v17 - 34;
        if (v21 <= 0x39)
        {
          if (((1 << v21) & 0x200000006000061) != 0)
          {
            v22 = *(a1 + 8);
            v23 = cstdlib_strlen(v16);
            v12 = heap_Alloc(v22, (v23 + 1));
            *(*a3 + v8) = v12;
            if (!v12)
            {
              goto LABEL_42;
            }

            goto LABEL_12;
          }

          if (((1 << v21) & 0x40000010) != 0)
          {
LABEL_29:
            v12 = heap_Alloc(*(a1 + 8), 2);
            *(*a3 + v8) = v12;
            if (!v12)
            {
              goto LABEL_42;
            }

            goto LABEL_24;
          }
        }

        v12 = heap_Alloc(*(a1 + 8), 2);
        *(*a3 + v8) = v12;
        if (!v12)
        {
LABEL_42:
          v24 = 2314215434;
          log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
          log_OutText(*(a1 + 32), "FE_HMOGRPH", 5, 0, "Tag orth word for NN Failed", 0);
          return v24;
        }

        v15 = "s";
LABEL_20:
        cstdlib_strcpy(v12, v15);
        ++v9;
        v8 += 8;
        if (v9 >= *(a3 + 8))
        {
          return 0;
        }
      }

      v13 = *(a1 + 8);
      v14 = cstdlib_strlen(*(*a2 + 8 * v8));
      v12 = heap_Alloc(v13, v14 + 1);
      *(*a3 + v8) = v12;
      if (!v12)
      {
        goto LABEL_38;
      }

LABEL_12:
      v15 = *(*a2 + 8 * v8);
      goto LABEL_20;
    }

    return 0;
  }

  else
  {
LABEL_38:
    v24 = 2314215434;
    log_OutPublic(*(a1 + 32), "FE_HMOGRPH", 37000, 0);
  }

  return v24;
}

uint64_t hlp_disamCharByChar(uint64_t a1, unsigned int a2, unsigned int a3, _WORD *a4, int *a5, uint64_t a6)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = heap_Alloc(*(*a1 + 8), 1024);
  if (v14)
  {
    v15 = v14;
    v60 = a6;
    v16 = v13 + (a2 << 6);
    cstdlib_strcpy(v14, "");
    v17 = *(v16 + 48);
    v18 = *(v17 + 16 * a3 + 8);
    v61 = a2;
    if (*(v17 + 16 * a3 + 8))
    {
      v19 = *(v17 + 16 * a3);
      v20 = (v18 + 3) & 0x1FFFC;
      v21 = vdupq_n_s64(v18 - 1);
      v22 = (v19 + 160);
      v23 = xmmword_26ECCE810;
      v24 = xmmword_26ECC7980;
      v25 = vdupq_n_s64(4uLL);
      do
      {
        v26 = vmovn_s64(vcgeq_u64(v21, v24));
        if (vuzp1_s16(v26, *v21.i8).u8[0])
        {
          *(v22 - 28) = 0;
        }

        if (vuzp1_s16(v26, *&v21).i8[2])
        {
          *(v22 - 14) = 0;
        }

        if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v23))).i32[1])
        {
          *v22 = 0;
          v22[14] = 0;
        }

        v23 = vaddq_s64(v23, v25);
        v24 = vaddq_s64(v24, v25);
        v22 += 56;
        v20 -= 4;
      }

      while (v20);
      v27 = v18;
    }

    else
    {
      v27 = 0;
    }

    v63 = heap_Calloc(*(v12 + 8), v27, 8);
    if (!v63)
    {
      v28 = 2314215434;
      log_OutPublic(*(v12 + 32), "FE_HMOGRPH", 37000, 0);
LABEL_62:
      heap_Free(*(v12 + 8), v15);
      return v28;
    }

    v62 = v18;
    v59 = a4;
    if (a3)
    {
      v29 = 0;
      NextUtf8Offset = 0;
      do
      {
        NextUtf8Offset = utf8_GetNextUtf8Offset(*v16, NextUtf8Offset);
        ++v29;
      }

      while (a3 > v29);
    }

    else
    {
      NextUtf8Offset = 0;
    }

    UTF8Char = utf8_getUTF8Char(*v16, NextUtf8Offset, __s2);
    if ((UTF8Char & 0x80000000) != 0)
    {
      v28 = UTF8Char;
    }

    else
    {
      v66 = 0;
      v28 = hlp_getcharPhons(v12, *(*(v16 + 48) + 16 * a3), *(*(v16 + 48) + 16 * a3 + 8), v63, &v66);
      if ((v28 & 0x80000000) == 0)
      {
        v58 = a5;
        if (v66 >= 2u)
        {
          v32 = *(a1 + 32);
          if (!*(a1 + 32))
          {
            goto LABEL_38;
          }

          v57 = v15;
          v33 = 0;
          v34 = *(a1 + 24);
          do
          {
            if (!cstdlib_strcmp(v34, __s2))
            {
              v33 = 1;
            }

            v34 += 48;
            --v32;
          }

          while (v32);
          v15 = v57;
          if (v33)
          {
            v35 = *(v60 + 48);
            v64[2] = *(v60 + 32);
            v64[3] = v35;
            v64[4] = *(v60 + 64);
            v65 = *(v60 + 80);
            v36 = *(v60 + 16);
            v64[0] = *v60;
            v64[1] = v36;
            hlp_disamWithModels(v12, a1, v61, a3, NextUtf8Offset, __s2, v16, v63, v57, v64);
            if (cstdlib_strcmp(v57, "NOMATCH") && *(*(v16 + 48) + 16 * a3 + 8))
            {
              v37 = 0;
              v38 = 48;
              do
              {
                v39 = cstdlib_strcmp(v63[v37], v57);
                v40 = *(v16 + 48);
                if (v39)
                {
                  *(*(v40 + 16 * a3) + v38) = 1;
                }

                ++v37;
                v38 += 56;
              }

              while (v37 < *(v40 + 16 * a3 + 8));
            }
          }

          else
          {
LABEL_38:
            *v58 = 0;
          }
        }

        v41 = *(v16 + 24);
        if (!cstdlib_strcmp(v41, ""))
        {
          hlp_filterWordCandIfTnHas(v16);
          v47 = v58;
          v44 = v59;
          goto LABEL_48;
        }

        v42 = cstdlib_strcmp(v41, "poi");
        hasRcdWithGivenPOIClass = hlp_hasRcdWithGivenPOIClass(v16, v41);
        if (v42)
        {
          v44 = v59;
          if (!hasRcdWithGivenPOIClass)
          {
            v47 = v58;
            if (hlp_hasRcdWithGivenPOIClass(v16, "poi"))
            {
              hlp_filterWordCandIfTnIsNot(v16, "poi");
            }

            else
            {
              hlp_filterWordCandIfTnHas(v16);
            }

LABEL_48:
            *v44 = -1;
            v48 = *(v16 + 48) + 16 * a3;
            v49 = *(v48 + 8);
            if (!*(v48 + 8))
            {
              goto LABEL_55;
            }

            v50 = 0;
            v51 = (*v48 + 48);
            v52 = 0xFFFF;
            v53 = -1;
            do
            {
              if (!*v51 && *(v51 - 20) < v53)
              {
                v52 = v50;
                *v44 = v50;
                v53 = *(v51 - 20);
                v49 = *(v48 + 8);
              }

              ++v50;
              v51 += 14;
            }

            while (v50 < v49);
            if (v52 != 0xFFFF)
            {
              v54 = 1;
            }

            else
            {
LABEL_55:
              v54 = 0;
            }

            *v47 = v54;
            goto LABEL_58;
          }

          v45 = v16;
          v46 = v41;
        }

        else
        {
          v44 = v59;
          if (!hasRcdWithGivenPOIClass)
          {
            hlp_filterWordCandIfTnHas(v16);
            goto LABEL_47;
          }

          v46 = "poi";
          v45 = v16;
        }

        hlp_filterWordCandIfTnIsNot(v45, v46);
LABEL_47:
        v47 = v58;
        goto LABEL_48;
      }
    }

LABEL_58:
    if (v62)
    {
      v55 = v63;
      do
      {
        heap_Free(*(v12 + 8), *v55);
        *v55++ = 0;
        --v27;
      }

      while (v27);
    }

    heap_Free(*(v12 + 8), v63);
    goto LABEL_62;
  }

  v28 = 2314215434;
  log_OutPublic(*(v12 + 32), "FE_HMOGRPH", 37000, 0);
  return v28;
}

uint64_t hlp_disamSpecialWords(uint64_t a1, unsigned __int16 *a2, unsigned int a3, unsigned int a4, _DWORD *a5, uint64_t a6)
{
  *&v54[3] = 0;
  *v54 = 0;
  v53 = 0;
  v10 = a2 + 4;
  v11 = *(a2 + 1) + (a3 << 6);
  v52 = 0;
  *a5 = 0;
  v12 = a4;
  v13 = *(v11 + 48) + 16 * a4;
  if (*(v13 + 8))
  {
    v14 = 0;
    v15 = 0;
    while (!cstdlib_strstr(*(*v13 + v14), "{SEP"))
    {
      ++v15;
      v13 = *(v11 + 48) + 16 * v12;
      v14 += 56;
      if (v15 >= *(v13 + 8))
      {
        goto LABEL_5;
      }
    }

LABEL_16:
    v17 = 0;
LABEL_17:
    v20 = 0;
LABEL_18:
    if (!*(a1 + 144))
    {
      v21 = *(v11 + 48) + 16 * v12;
      v22 = *(v21 + 8);
      if (*(v21 + 8))
      {
        v23 = *v21;
        *(v21 + 12) = 0;
        if (v22 != 1)
        {
          v24 = 0;
          v25 = (v23 + 64);
          for (i = 1; i != v22; ++i)
          {
            v27 = *v25;
            v25 += 28;
            if (v27 < *(v23 + 56 * v24 + 8))
            {
              v24 = i;
              *(v21 + 12) = i;
            }
          }
        }
      }

LABEL_25:
      *a5 = 1;
    }

    if (v20)
    {
LABEL_27:
      heap_Free(*(*a2 + 8), v20);
    }
  }

  else
  {
LABEL_5:
    if ((utf8_getUTF8Char(*(v11 + 40), 0, v54) & 0x80000000) == 0)
    {
      NextUtf8Offset = 0;
      while (cstdlib_strlen(*(v11 + 40)) > NextUtf8Offset)
      {
        if (utf8_Utf8CharTo16bit(v54, &v53) && v53 - 40960 <= 0xFFFFADFF)
        {
          if (!a2[16])
          {
            goto LABEL_16;
          }

          v18 = 0;
          v19 = 24;
          while (cstdlib_strcmp((*(a2 + 3) + v19 - 17), "0000"))
          {
            ++v18;
            v19 += 48;
            if (v18 >= a2[16])
            {
              goto LABEL_16;
            }
          }

          v17 = *(a2 + 3);
          if (!v17)
          {
            goto LABEL_17;
          }

          v29 = *(v17 + v19);
          if (!v29)
          {
            goto LABEL_16;
          }

          v30 = heap_Calloc(*(*a2 + 8), 1, 8 * *(v29 + 1296) - 8);
          if (!v30)
          {
            return 2314215434;
          }

          v20 = v30;
          inited = hlp_initFeatureVector(*a2, v30, (*(*(v17 + v19) + 1296) - 1));
          if ((inited & 0x80000000) != 0)
          {
            v17 = inited;
            goto LABEL_27;
          }

          v32 = *a2;
          v33 = *(v17 + v19);
          v34 = *(v33 + 1312);
          v35 = *(v33 + 1296);
          v36 = *(a6 + 48);
          v50[2] = *(a6 + 32);
          v50[3] = v36;
          v50[4] = *(a6 + 64);
          v51 = *(a6 + 80);
          v37 = *(a6 + 16);
          v50[0] = *a6;
          v50[1] = v37;
          hlp_setFeatureVector(v32, v20, v34, v35, v10, a3, 0xFFFFFFFF, 0, 0, v50);
          v38 = v17;
          v17 = igtree_Process(*(v17 + v19), v20, &v52);
          if ((v17 & 0x80000000) != 0)
          {
            goto LABEL_27;
          }

          v39 = *(*(v38 + v19) + 1296) - 1;
          if (*(*(v38 + v19) + 1296) != 1)
          {
            v40 = *a2;
            v41 = v39;
            v42 = v20;
            do
            {
              v43 = *v42++;
              heap_Free(*(v40 + 8), v43);
              --v41;
            }

            while (v41);
          }

          if (cstdlib_strcmp(v52, "NOMATCH"))
          {
            v44 = *(v11 + 48) + 16 * v12;
            if (*(v44 + 8))
            {
              v45 = 0;
              v46 = 0;
              while (1)
              {
                v47 = cstdlib_strcmp(v52, *(*v44 + v45));
                v48 = *(v11 + 48);
                if (!v47)
                {
                  break;
                }

                ++v46;
                v44 = v48 + 16 * v12;
                v45 += 56;
                if (v46 >= *(v44 + 8))
                {
                  goto LABEL_18;
                }
              }

              *(v48 + 16 * v12 + 12) = v46;
              goto LABEL_25;
            }
          }

          goto LABEL_18;
        }

        NextUtf8Offset = utf8_GetNextUtf8Offset(*(v11 + 40), NextUtf8Offset);
        if ((utf8_getUTF8Char(*(v11 + 40), NextUtf8Offset, v54) & 0x80000000) != 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return v17;
}

uint64_t stat_hmogrph_disambiguatePhons(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v22 = 0;
  v2 = *(a2 + 16);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v5 = 0;
  result = 0;
  v7 = (a1 + 392);
  do
  {
    v8 = *(a2 + 8) + (v5 << 6);
    if (!*(v8 + 56))
    {
      goto LABEL_16;
    }

    v9 = 0;
    v10 = 12;
    do
    {
      v11 = *(v8 + 48);
      if (*(v11 + v10 - 4) == 1)
      {
        goto LABEL_13;
      }

      if (!*(v11 + v10 - 4))
      {
        return result;
      }

      v12 = *(a1 + 440);
      v18 = *(a1 + 424);
      v19 = v12;
      v20 = *(a1 + 456);
      v21 = *(a1 + 472);
      v13 = *(a1 + 408);
      v16 = *v7;
      v17 = v13;
      result = hlp_disamSpecialWords(a1, a2, v5, v9, &v22, &v16);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (v22 != 1)
      {
        v14 = *(a1 + 440);
        v18 = *(a1 + 424);
        v19 = v14;
        v20 = *(a1 + 456);
        v21 = *(a1 + 472);
        v15 = *(a1 + 408);
        v16 = *v7;
        v17 = v15;
        result = hlp_disamCharByChar(a2, v5, v9, &v23, &v22, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v22 == 1)
        {
          *(*(v8 + 48) + v10) = v23;
          goto LABEL_14;
        }

        v11 = *(v8 + 48);
LABEL_13:
        *(v11 + v10) = 0;
      }

LABEL_14:
      ++v9;
      v10 += 16;
    }

    while (v9 < *(v8 + 56));
    v2 = *(a2 + 16);
LABEL_16:
    ++v5;
  }

  while (v5 < v2);
  return result;
}

uint64_t hlp_CallDepesFunc(uint64_t *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v41 = 0;
  __s = 0;
  v40 = 0;
  cstdlib_strcpy(a1[19], "");
  cstdlib_strcpy(a1[21], "");
  for (i = 0; ; ++i)
  {
    cstdlib_strcpy(__dst, "cross_token");
    v3 = cstdlib_strlen(__dst);
    v4 = i;
    if (i)
    {
      cstdlib_strcat(a1[19], " ");
      cstdlib_strcat(a1[21], " ");
    }

    v5 = a1[13];
    v6 = i;
    v7 = *(v5 + i);
    v38 = v3;
    if (*(v5 + i))
    {
      v8 = i;
      while ((v7 > 0x20 || ((1 << v7) & 0x100002600) == 0) && v7 != 95)
      {
        v8 = ++i;
        v7 = *(v5 + i);
        if (!*(v5 + i))
        {
          v39 = 1;
          goto LABEL_12;
        }
      }

      v39 = 0;
LABEL_12:
      v9 = i;
    }

    else
    {
      v39 = 1;
      v9 = i;
      v8 = i;
    }

    *(v5 + v8) = 0;
    v10 = Utf8_LengthInUtf8chars(a1[13], v9);
    v11 = Utf8_LengthInUtf8chars(a1[13], v4);
    *(a1[14] + v10) = 0;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s L1: %s", __dst, (a1[13] + v6));
    v12 = *(a1[9] + 120);
    v13 = a1[13];
    v14 = cstdlib_strlen((v13 + v6));
    v15 = v12(a1[7], a1[8], 0, v13 + v6, v14);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    v16 = v11;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s L2: %s", __dst, (a1[14] + v11));
    v17 = *(a1[9] + 120);
    v18 = a1[14];
    v19 = cstdlib_strlen((v18 + v16));
    v15 = v17(a1[7], a1[8], 1, v18 + v16, v19);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    if (((*(a1[9] + 80))(a1[7], a1[8], __dst) & 0x80000000) != 0)
    {
      __dst[v38] = 0;
      v15 = (*(a1[9] + 80))(a1[7], a1[8], __dst);
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }
    }

    v15 = (*(a1[9] + 128))(a1[7], a1[8], 0, &__s, &v40);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    __s[v40] = 0;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s O1: %s", __dst, __s);
    v20 = (*(a1[9] + 128))(a1[7], a1[8], 1, &v41, &v40);
    if ((v20 & 0x80000000) != 0)
    {
      return v20;
    }

    v41[v40] = 0;
    log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%s O2: %s", __dst, v41);
    if (cstdlib_strlen(__s))
    {
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = &__s[v21];
        if (__s[v21] == 126)
        {
          v24 = cstdlib_strlen(v23 + 1);
          cstdlib_memmove(v23, v23 + 1, v24 + 1);
          --v22;
        }

        else
        {
          v25 = cstdlib_strlen("¡");
          if (!cstdlib_strncmp(v23, "¡", v25))
          {
            v26 = &__s[v21];
            v27 = cstdlib_strlen(&__s[v21 + 2]);
            cstdlib_memmove(v26 + 1, v26 + 2, v27 + 1);
            __s[v21] = 126;
          }
        }

        v21 = ++v22;
      }

      while (cstdlib_strlen(__s) > v22);
    }

    v28 = cstdlib_strlen(a1[19]);
    v29 = v28 + cstdlib_strlen(__s) + 2;
    v30 = a1[19];
    if (v29 >= 0x81u)
    {
      break;
    }

LABEL_30:
    cstdlib_strcat(v30, __s);
    v32 = 0;
    v33 = v41;
    while (1)
    {
      v34 = v32;
      v35 = v41[v32];
      if (v35 != 32 && v35 != 126)
      {
        break;
      }

      ++v32;
    }

    if (v41[v32])
    {
      while (v35 != 32 && v35 != 126)
      {
        LOBYTE(v35) = v41[++v32];
      }

      v41[v32] = 0;
      v33 = v41;
    }

    if (cstdlib_strcmp(&v33[v34], ""))
    {
      v36 = &v41[v34];
    }

    else
    {
      v36 = "*";
    }

    cstdlib_strcat(a1[21], v36);
    if (v39)
    {
      return v20;
    }
  }

  v31 = heap_Realloc(*(*a1 + 8), a1[19], v29);
  if (v31)
  {
    v30 = v31;
    a1[19] = v31;
    goto LABEL_30;
  }

  log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
  return 2314215434;
}

uint64_t hlp_AppendPhon(uint64_t a1, char *a2, char *__s, uint64_t a4)
{
  if (cstdlib_strlen(__s) >= 2 && !cstdlib_strchr(__s, 32))
  {
    __s[1] = 0;
  }

  if (cstdlib_strlen(a4) >= 2 && !cstdlib_strchr(a4, 32))
  {
    *(a4 + 1) = 0;
  }

  if (cstdlib_strcmp(a2, ""))
  {
    v8 = cstdlib_strlen(*(a1 + 152));
    v9 = v8 + cstdlib_strlen(a2) + 7;
    if (v9 >= 0x81u)
    {
      v10 = heap_Realloc(*(*a1 + 8), *(a1 + 152), v9);
      if (!v10 || (*(a1 + 152) = v10, (v11 = heap_Realloc(*(*a1 + 8), *(a1 + 168), v9)) == 0))
      {
        v35 = 2314215434;
        log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
        return v35;
      }

      *(a1 + 168) = v11;
    }

    cstdlib_strcat(*(a1 + 152), "◄");
    cstdlib_strcat(*(a1 + 168), " ");
    v12 = cstdlib_strstr(a2, "◄");
    if (cstdlib_strchr(__s, 32) || !v12)
    {
      cstdlib_strcat(*(a1 + 152), a2);
      cstdlib_strcat(*(a1 + 168), a4);
      v32 = cstdlib_strlen(a2);
      v33 = Utf8_LengthInUtf8chars(a2, v32);
      if (v33 > cstdlib_strlen(a4))
      {
        v34 = 0;
        do
        {
          cstdlib_strcat(*(a1 + 168), "~");
          ++v34;
        }

        while ((v33 - cstdlib_strlen(a4)) > v34);
      }
    }

    else
    {
      v13 = cstdlib_strlen("◄");
      v14 = cstdlib_strstr(&v12[v13], "◄");
      if (!v14)
      {
        log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
        return 2314215431;
      }

      v15 = v14;
      v16 = *(a1 + 152);
      v17 = cstdlib_strlen("◄");
      cstdlib_strncat(v16, a2, (v17 + v12 - a2));
      v18 = cstdlib_strlen("◄");
      if (Utf8_LengthInUtf8chars(a2, v12 - a2 + v18))
      {
        v19 = 0;
        do
        {
          cstdlib_strcat(*(a1 + 168), " ");
          ++v19;
          v20 = cstdlib_strlen("◄");
        }

        while (Utf8_LengthInUtf8chars(a2, v12 - a2 + v20) > v19);
      }

      v21 = *(a1 + 152);
      v22 = &v12[cstdlib_strlen("◄")];
      v23 = cstdlib_strlen("◄");
      cstdlib_strncat(v21, v22, (v15 - v12 - v23));
      cstdlib_strcat(*(a1 + 168), a4);
      v24 = Utf8_LengthInUtf8chars(v12, v15 - v12);
      if (cstdlib_strlen(a4) - v24 <= -2)
      {
        v25 = 0;
        do
        {
          cstdlib_strcat(*(a1 + 168), "~");
          ++v25;
        }

        while (v24 + ~cstdlib_strlen(a4) > v25);
      }

      cstdlib_strcat(*(a1 + 152), v15);
      v26 = v15 - a2;
      v27 = cstdlib_strlen(a2);
      v28 = Utf8_LengthInUtf8chars(a2, v27) << 16;
      if (v28 > (Utf8_LengthInUtf8chars(a2, v26) << 16))
      {
        v29 = 0;
        do
        {
          cstdlib_strcat(*(a1 + 168), " ");
          ++v29;
          v30 = cstdlib_strlen(a2);
          v31 = Utf8_LengthInUtf8chars(a2, v30);
        }

        while (v31 - Utf8_LengthInUtf8chars(a2, v26) > v29);
      }
    }

    cstdlib_strcat(*(a1 + 152), "◄");
    cstdlib_strcat(*(a1 + 168), " ");
  }

  return 0;
}

uint64_t hlp_ProcessNTokens(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  cstdlib_strcpy(a1[19], "");
  cstdlib_strcpy(a1[21], "");
  v8 = *(a2 + 16);
  if (*(a2 + 16))
  {
    v9 = 0;
    while (1)
    {
      v10 = *(a2 + 8) + (v9 << 6);
      if (*(v10 + 8) >= a3 && *(v10 + 10) <= a4 && *(v10 + 56))
      {
        break;
      }

LABEL_10:
      if (++v9 >= v8)
      {
        goto LABEL_11;
      }
    }

    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *(*(v10 + 48) + v11) + 56 * *(*(v10 + 48) + v11 + 12);
      cstdlib_strcpy(a1[22], *(v13 + 32));
      appended = hlp_AppendPhon(a1, *v13, *(v13 + 16), *(v13 + 24));
      if ((appended & 0x80000000) != 0)
      {
        return appended;
      }

      ++v12;
      v11 += 16;
      if (v12 >= *(v10 + 56))
      {
        v8 = *(a2 + 16);
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  v15 = cstdlib_strlen("¡");
  v16 = cstdlib_strlen(a1[19]) * v15 + 1;
  v17 = a1[13];
  if (!v17 || *(a1 + 60) < v16)
  {
    v18 = heap_Realloc(*(*a1 + 8), a1[13], v16);
    if (!v18)
    {
      goto LABEL_33;
    }

    v17 = v18;
    a1[13] = v18;
    a1[15] = v16;
  }

  v19 = a1[14];
  if (v19 && *(a1 + 64) >= v16)
  {
    goto LABEL_19;
  }

  v20 = heap_Realloc(*(*a1 + 8), v19, v16);
  if (!v20)
  {
LABEL_33:
    v32 = 2314215434;
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
    return v32;
  }

  a1[14] = v20;
  a1[16] = v16;
  v17 = a1[13];
LABEL_19:
  cstdlib_strcpy(v17, a1[19]);
  cstdlib_strcpy(a1[14], a1[21]);
  if (cstdlib_strlen(a1[13]))
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = a1[13];
      v25 = cstdlib_strlen("◄");
      if (cstdlib_strncmp((v24 + v21), "◄", v25))
      {
        v26 = (a1[13] + v21);
        if (*v26 == 126 && v22)
        {
          v28 = cstdlib_strlen((a1[13] + v21));
          cstdlib_memmove(v26 + 1, v26, v28 + 1);
          v29 = a1[13];
          v30 = cstdlib_strlen("¡");
          cstdlib_memcpy((v29 + v21), "¡", v30);
          v22 = 1;
        }
      }

      else
      {
        v22 = !v22;
      }

      v21 = ++v23;
    }

    while (cstdlib_strlen(a1[13]) > v23);
  }

  return hlp_CallDepesFunc(a1);
}

uint64_t stat_hmogrph_updateLingdb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v129 = *MEMORY[0x277D85DE8];
  v107 = 0;
  v105 = 0;
  v106 = 0;
  v103 = 0;
  v104 = 0;
  v101 = 0;
  v102 = 0;
  v100 = 0;
  memset(v128, 0, 64);
  v99 = 0;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  *__s = 0u;
  v12 = (*(a2 + 104))(a3, a4, 1, 0, &v107);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = (*(a2 + 184))(a3, a4, v107, 0, &v103);
  if ((v13 & 0x80000000) == 0 && v103 == 1)
  {
    v13 = (*(a2 + 176))(a3, a4, v107, 0, &v100, &v104);
    if ((v13 & 0x80000000) == 0 && v104 >= 2u)
    {
      updated = (*(a2 + 104))(a3, a4, 2, v107, &v106 + 2);
      if ((updated & 0x80000000) != 0)
      {
        goto LABEL_125;
      }

      v98 = 0;
      v15 = 0;
      v16 = 0;
      v97 = a5;
      while (1)
      {
        if (!HIWORD(v106))
        {
          v69 = v128[0];
          if (!v128[0])
          {
            goto LABEL_120;
          }

          if (v102 != 4 || v98 != 0)
          {
            goto LABEL_119;
          }

          v71 = v99;
          if (!v99)
          {
            goto LABEL_119;
          }

          if (v99 == 1)
          {
            v72 = *(a2 + 160);
            v73 = __s[0];
            v74 = cstdlib_strlen(__s[0]);
            updated = v72(a3, a4, v69, 3, (v74 + 1), v73, &v103 + 2);
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_125;
            }

LABEL_119:
            hlp_freeWordPhoneList(a5, &v99, v128, __s);
LABEL_120:
            if (*(a1 + 144))
            {
              updated = hlp_updateLingdb_process_skipcrosstoekn_cleanup(a1, a2, a3, a4, v107);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_125;
              }
            }

            updated = hlp_updateLingdb_delete_duplicated_words(*a1, a2, a3, a4, a5, v107, *(a1 + 384), a6);
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_125;
            }

            v13 = stat_hmogrph_selectSubOrWholeRcd(a1, a2, a3, a4, a5);
            if ((v13 & 0x80000000) == 0)
            {
              goto LABEL_126;
            }

            return v13;
          }

          v95 = a6;
          v86 = a1;
          v75 = 0;
          v76 = 0;
          v77 = 10000;
          while (1)
          {
            updated = (*(a2 + 168))(a3, a4, v128[v75], 7, 1, &v104 + 2, &v104);
            if ((updated & 0x80000000) != 0)
            {
              break;
            }

            if (HIWORD(v104) < v77)
            {
              v77 = HIWORD(v104);
              v76 = v75;
            }

            if (v71 == ++v75)
            {
              v78 = v128[v76];
              v79 = *(a2 + 160);
              v80 = __s[v76];
              v81 = cstdlib_strlen(v80);
              updated = v79(a3, a4, v78, 3, (v81 + 1), v80, &v103 + 2);
              a1 = v86;
              a6 = v95;
              if ((updated & 0x80000000) != 0)
              {
                break;
              }

              goto LABEL_119;
            }
          }

LABEL_125:
          v13 = updated;
LABEL_126:
          hlp_freeWordPhoneList(a5, &v99, v128, __s);
          return v13;
        }

        updated = (*(a2 + 168))(a3, a4);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        updated = (*(a2 + 168))(a3, a4, HIWORD(v106), 1, 1, &v105 + 2, &v104);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        updated = (*(a2 + 168))(a3, a4, HIWORD(v106), 2, 1, &v105, &v104);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        if (HIWORD(v105) > v105)
        {
          v13 = 2314223281;
          goto LABEL_126;
        }

        if (HIWORD(v105) == v15 && v105 == v16)
        {
          v17 = v102;
          if (v102 == 4)
          {
            goto LABEL_33;
          }
        }

        updated = (*(*(a1 + 48) + 136))(a3, a4, HIWORD(v106), &v106);
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_125;
        }

        if (v106)
        {
          updated = (*(*(a1 + 48) + 168))(a3, a4);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_125;
          }
        }

        if (v101 == 4 && !v98)
        {
          v18 = v99;
          if (v99)
          {
            v91 = v15;
            if (v99 != 1)
            {
              v93 = a6;
              v84 = a1;
              v23 = 0;
              v24 = 0;
              v25 = 10000;
              while (1)
              {
                updated = (*(a2 + 168))(a3, a4, v128[v23], 7, 1, &v104 + 2, &v104);
                if ((updated & 0x80000000) != 0)
                {
                  goto LABEL_125;
                }

                if (HIWORD(v104) < v25)
                {
                  v25 = HIWORD(v104);
                  v24 = v23;
                }

                if (v18 == ++v23)
                {
                  v26 = *(a2 + 160);
                  v27 = v128[v24];
                  v28 = __s[v24];
                  v29 = cstdlib_strlen(v28);
                  updated = v26(a3, a4, v27, 3, (v29 + 1), v28, &v103 + 2);
                  a1 = v84;
                  a6 = v93;
                  goto LABEL_30;
                }
              }
            }

            v19 = *(a2 + 160);
            v20 = v128[0];
            v21 = __s[0];
            v22 = cstdlib_strlen(__s[0]);
            updated = v19(a3, a4, v20, 3, (v22 + 1), v21, &v103 + 2);
LABEL_30:
            v15 = v91;
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_125;
            }
          }
        }

        hlp_freeWordPhoneList(a5, &v99, v128, __s);
        v17 = v102;
        if (v102 <= 0xA && ((1 << v102) & 0x610) != 0)
        {
LABEL_33:
          v30 = v105;
          v31 = v98;
          if (HIWORD(v105) != v15 || v105 != v16)
          {
            v31 = 0;
          }

          v98 = v31;
          if (HIWORD(v105) != v15 || v105 != v16)
          {
            v15 = HIWORD(v105);
          }

          if (v17 == 9)
          {
            updated = (*(*(a1 + 48) + 136))(a3, a4, HIWORD(v106), &v106);
            if ((updated & 0x80000000) != 0)
            {
              goto LABEL_125;
            }

            if (v106)
            {
              updated = (*(*(a1 + 48) + 168))(a3, a4);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_125;
              }
            }
          }

          if (!*(a1 + 144) || v102 != 9 || v101 != 17)
          {
            v89 = v105;
            v90 = HIWORD(v105);
            v44 = v99;
            v111 = 0;
            v110 = 0;
            __src = 0;
            v108 = 0;
            v96 = HIWORD(v106);
            v13 = (*(a2 + 184))(a3, a4);
            if ((v13 & 0x80000000) != 0 || !v108)
            {
              goto LABEL_65;
            }

            v94 = a6;
            v45 = (*(a2 + 176))(a3, a4, v96, 3, &__src, &v111);
            if ((v45 & 0x80000000) != 0)
            {
              v13 = v45;
              goto LABEL_126;
            }

            v108 = 0;
            v13 = (*(a2 + 184))(a3, a4, v96, 7, &v108);
            if ((v13 & 0x80000000) != 0 || !v108)
            {
              goto LABEL_64;
            }

            v13 = (*(a2 + 168))(a3, a4, v96, 7, 1, &v111 + 2, &v111);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_126;
            }

            v46 = cstdlib_strlen(__src);
            v47 = heap_Calloc(*(*a5 + 8), 1, v46 + 1);
            __s[v44] = v47;
            if (!v47)
            {
LABEL_128:
              v13 = 2314215434;
              log_OutPublic(*(*a5 + 32), "FE_HMOGRPH", 37000, 0);
              goto LABEL_126;
            }

            cstdlib_strcpy(v47, __src);
            v48 = *(a5 + 16);
            if (*(a5 + 16))
            {
              v49 = (*(a5 + 8) + 56);
              while (*(v49 - 24) != v90 || *(v49 - 23) != v89)
              {
                v49 += 32;
                if (!--v48)
                {
                  goto LABEL_64;
                }
              }

              v85 = a1;
              v87 = v44;
              v83 = v30;
              v92 = v15;
              if (*v49)
              {
                v50 = 0;
                v51 = 0;
                v52 = 0;
                do
                {
                  v53 = (*(v49 - 1) + v50);
                  v54 = *(v53 + 6);
                  v55 = *(v53 + 4);
                  if (v55 <= v54)
                  {
                    LOWORD(v54) = v55 - 1;
                  }

                  v56 = *v53;
                  v57 = 56 * v54;
                  v52 += cstdlib_strlen(*(*v53 + v57));
                  if (cstdlib_strlen(*(v56 + v57)))
                  {
                    ++v52;
                  }

                  ++v51;
                  v50 += 16;
                }

                while (v51 < *v49);
              }

              else
              {
                LOWORD(v52) = 0;
              }

              a5 = v97;
              v58 = heap_Calloc(*(*v97 + 8), 1, v52 + 1);
              if (!v58)
              {
                goto LABEL_128;
              }

              __s1 = v58;
              cstdlib_strcpy(v58, "");
              if (*v49)
              {
                v59 = 0;
                v60 = 0;
                do
                {
                  v61 = *(v49 - 1) + v59;
                  v62 = *(v61 + 12);
                  v63 = *(v61 + 8);
                  if (v63 <= v62)
                  {
                    LOWORD(v62) = v63 - 1;
                  }

                  v64 = (*v61 + 56 * v62);
                  cstdlib_strcat(__s1, *v64);
                  if (cstdlib_strlen(*v64) && v60 != *v49 - 1)
                  {
                    if (cstdlib_strstr(*v64, "{SEP"))
                    {
                      LOWORD(v52) = v52 - 1;
                    }

                    else
                    {
                      cstdlib_strcat(__s1, ".");
                    }
                  }

                  v44 = v87;
                  ++v60;
                  v59 += 16;
                }

                while (v60 < *v49);
              }

              else
              {
                v44 = v87;
              }

              if (v52 >= 2u)
              {
                __s1[v52 - 1] = 0;
              }

              a1 = v85;
              v15 = v92;
              if (cstdlib_strcmp(__s1, __src) | v98)
              {
                v66 = *(a2 + 160);
                v67 = cstdlib_strlen("DELETED");
                v13 = v66(a3, a4, v96, 3, (v67 + 1), "DELETED", &v110);
                v68 = *v97;
                if ((v13 & 0x80000000) != 0)
                {
                  heap_Free(*(v68 + 8), __s1);
                  goto LABEL_126;
                }

                log_OutText(*(v68 + 32), "FE_HMOGRPH", 5, 0, "DELETED: from %d to %d, orth %s with phon %s and priority %d", v90, v89, *(v49 - 7), __src, HIWORD(v111));
                v30 = v83;
                v65 = __s1;
              }

              else
              {
                log_OutText(*(*v97 + 32), "FE_HMOGRPH", 5, 0, "from %d to %d, orth %s, disambiguated phon %s, priority %d", v90, v89, *(v49 - 7), __s1, HIWORD(v111));
                v98 = 1;
                v65 = __s1;
                v30 = v83;
              }

              heap_Free(*(*v97 + 8), v65);
LABEL_64:
              a6 = v94;
LABEL_65:
              if ((v13 & 0x80000000) != 0)
              {
                goto LABEL_126;
              }
            }

            v128[v44] = HIWORD(v106);
            v99 = v44 + 1;
            goto LABEL_67;
          }

          updated = hlp_ProcessNTokens(a1, a5, HIWORD(v105), v105);
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_125;
          }

          v32 = v30;
          v33 = v15;
          v34 = *(*(a1 + 48) + 160);
          v35 = HIWORD(v106);
          v36 = cstdlib_strlen(*(a1 + 152));
          v37 = v34(a3, a4, v35, 3, (v36 + 1), *(a1 + 152), &v103 + 2);
          if ((v37 & 0x80000000) != 0 || (v38 = *(*(a1 + 48) + 160), v39 = HIWORD(v106), v40 = cstdlib_strlen(*(a1 + 168)), v37 = v38(a3, a4, v39, 6, (v40 + 1), *(a1 + 168), &v103 + 2), (v37 & 0x80000000) != 0) || (HIWORD(v104) = 4, v37 = (*(*(a1 + 48) + 160))(a3, a4, HIWORD(v106), 7, 1, &v104 + 2, &v103 + 2), (v37 & 0x80000000) != 0))
          {
            v13 = v37;
            a5 = v97;
            goto LABEL_126;
          }

          v41 = *(*(a1 + 48) + 160);
          v42 = HIWORD(v106);
          v43 = cstdlib_strlen(*(a1 + 176));
          updated = v41(a3, a4, v42, 9, (v43 + 1), *(a1 + 176), &v103 + 2);
          v15 = v33;
          v30 = v32;
          a5 = v97;
          if ((updated & 0x80000000) != 0)
          {
            goto LABEL_125;
          }
        }

        else
        {
          v30 = v16;
        }

LABEL_67:
        updated = (*(a2 + 120))(a3, a4, HIWORD(v106), &v106 + 2);
        v16 = v30;
        if ((updated & 0x80000000) != 0)
        {
          goto LABEL_125;
        }
      }
    }
  }

  return v13;
}

void *hlp_freeWordPhoneList(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  for (i = 0; i != 32; ++i)
  {
    if (*(a3 + 2 * i))
    {
      *(a3 + 2 * i) = 0;
    }

    v9 = *(a4 + 8 * i);
    if (v9)
    {
      result = heap_Free(*(*v7 + 8), v9);
      *(a4 + 8 * i) = 0;
    }
  }

  *a2 = 0;
  return result;
}

uint64_t hlp_updateLingdb_process_skipcrosstoekn_cleanup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  v16 = 0;
  result = (*(a2 + 104))(a3, a4, 2, a5, &v16 + 2);
  if ((result & 0x80000000) == 0)
  {
    v11 = HIWORD(v16);
    if (HIWORD(v16))
    {
      v12 = 0;
      do
      {
        result = (*(a2 + 168))(a3, a4, v11, 0, 1, &v15, &v16);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (v15 == 17)
        {
          result = (*(*(a1 + 48) + 192))(a3, a4, HIWORD(v16));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          HIWORD(v16) = v12;
          v13 = v12;
        }

        else
        {
          v13 = HIWORD(v16);
        }

        v14 = *(a1 + 48);
        if (v13)
        {
          result = (*(v14 + 120))(a3, a4, v13, &v16 + 2);
          v12 = v13;
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
          result = (*(v14 + 104))(a3, a4, 2, a5, &v16 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        v11 = HIWORD(v16);
      }

      while (HIWORD(v16));
    }
  }

  return result;
}

uint64_t hlp_updateLingdb_delete_duplicated_words(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  __s1 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0;
  updated = (*(a2 + 104))(a3, a4, 2, a6, &v23 + 2);
  if ((updated & 0x80000000) == 0)
  {
    v15 = HIWORD(v23);
    if (HIWORD(v23))
    {
      v16 = 0;
      do
      {
        updated = (*(a2 + 120))(a3, a4, v15, &v23);
        if ((updated & 0x80000000) != 0)
        {
          break;
        }

        (*(a2 + 168))(a3, a4, HIWORD(v23), 0, 1, &v21, &v22);
        if (v21 <= 0xA && ((1 << v21) & 0x610) != 0)
        {
          v18 = (*(a2 + 168))(a3, a4, HIWORD(v23), 1, 1, &v24 + 2, &v22);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          v18 = (*(a2 + 168))(a3, a4, HIWORD(v23), 2, 1, &v24, &v22);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          updated = (*(a2 + 176))(a3, a4, HIWORD(v23), 3, &__s1, &v22);
          if ((updated & 0x80000000) != 0)
          {
            return updated;
          }

          if (cstdlib_strcmp(__s1, "DELETED"))
          {
            if (a7)
            {
              updated = updateNLUNE(a1, a3, a4, a2, HIWORD(v23), v16, a8);
              if ((updated & 0x80000000) != 0)
              {
                return updated;
              }

              ++v16;
            }
          }

          else
          {
            updated = (*(a2 + 192))(a3, a4, HIWORD(v23));
            if ((updated & 0x80000000) != 0)
            {
              return updated;
            }

            log_OutText(*(*a5 + 32), "FE_HMOGRPH", 5, 0, "delete a word record from pos %d to pos %d", HIWORD(v24), v24);
          }
        }

        v15 = v23;
        HIWORD(v23) = v23;
      }

      while (v23);
    }
  }

  return updated;
}

uint64_t stat_hmogrph_selectSubOrWholeRcd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = 0;
  v117 = 0;
  v118 = 0;
  if (a2 && a5)
  {
    v119 = 0;
    v116 = 0;
    if (*(a5 + 8))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = a5[1] + (v10 << 6);
        v12 = *(v11 + 24);
        if (cstdlib_strcmp(v12, ""))
        {
          v13 = cstdlib_strcmp(v12, "poi");
          v14 = *(a5 + 8);
          if (v13)
          {
            if (*(a5 + 8))
            {
              v15 = 0;
              v16 = v14 << 6;
              while (1)
              {
                if (v9 != v15)
                {
                  v17 = a5[1];
                  v18 = v17 + (v10 << 6);
                  v19 = v17 + v15;
                  if (*(v18 + 8) >= *(v19 + 8) && *(v18 + 10) <= *(v19 + 10))
                  {
                    break;
                  }
                }

                v15 += 64;
                if (v16 == v15)
                {
                  goto LABEL_13;
                }
              }
            }

            else
            {
LABEL_13:
              if (hlp_hasRcdWithGivenPOIClass(v11, *(v11 + 24)))
              {
                *(v11 + 32) = 0;
                v20 = *(a5 + 8);
                if (*(a5 + 8))
                {
                  v21 = a5[1];
                  v22 = v21 + (v10 << 6);
                  v23 = (v21 + 32);
                  v24 = v10;
                  do
                  {
                    if (v24 && *(v22 + 8) <= *(v23 - 12) && *(v22 + 10) >= *(v23 - 11))
                    {
                      *v23 = 1;
                    }

                    --v24;
                    v23 += 16;
                    --v20;
                  }

                  while (v20);
                }
              }

              else if (stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v10, *(v11 + 24)))
              {
                *(v11 + 32) = 1;
                v40 = *(a5 + 8);
                if (*(a5 + 8))
                {
                  v41 = a5[1];
                  v42 = v41 + (v10 << 6);
                  v43 = (v41 + 32);
                  v44 = v10;
                  do
                  {
                    if (v44 && *(v42 + 8) <= *(v43 - 12) && *(v42 + 10) >= *(v43 - 11))
                    {
                      *v43 = 0;
                    }

                    --v44;
                    v43 += 16;
                    --v40;
                  }

                  while (v40);
                }
              }

              else if (hlp_hasRcdWithGivenPOIClass(v11, "poi"))
              {
                *(v11 + 32) = 0;
                v50 = *(a5 + 8);
                if (*(a5 + 8))
                {
                  v51 = a5[1];
                  v52 = v51 + (v10 << 6);
                  v53 = (v51 + 32);
                  v54 = v10;
                  do
                  {
                    if (v54 && *(v52 + 8) <= *(v53 - 12) && *(v52 + 10) >= *(v53 - 11))
                    {
                      *v53 = 1;
                    }

                    --v54;
                    v53 += 16;
                    --v50;
                  }

                  while (v50);
                }
              }

              else if (stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v10, "poi"))
              {
                *(v11 + 32) = 1;
                v60 = *(a5 + 8);
                if (*(a5 + 8))
                {
                  v61 = a5[1];
                  v62 = v61 + (v10 << 6);
                  v63 = (v61 + 32);
                  v64 = v10;
                  do
                  {
                    if (v64 && *(v62 + 8) <= *(v63 - 12) && *(v62 + 10) >= *(v63 - 11))
                    {
                      *v63 = 0;
                    }

                    --v64;
                    v63 += 16;
                    --v60;
                  }

                  while (v60);
                }
              }

              else
              {
                *(v11 + 32) = 0;
                v65 = *(a5 + 8);
                if (*(a5 + 8))
                {
                  v66 = a5[1];
                  v67 = v66 + (v10 << 6);
                  v68 = (v66 + 32);
                  v69 = v10;
                  do
                  {
                    if (v69 && *(v67 + 8) <= *(v68 - 12) && *(v67 + 10) >= *(v68 - 11))
                    {
                      *v68 = 1;
                    }

                    --v69;
                    v68 += 16;
                    --v65;
                  }

                  while (v65);
                }
              }
            }
          }

          else if (*(a5 + 8))
          {
            v30 = 0;
            v31 = v14 << 6;
            while (1)
            {
              if (v9 != v30)
              {
                v32 = a5[1];
                v33 = v32 + (v10 << 6);
                v34 = v32 + v30;
                if (*(v33 + 8) >= *(v34 + 8) && *(v33 + 10) <= *(v34 + 10))
                {
                  break;
                }
              }

              v30 += 64;
              if (v31 == v30)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
LABEL_38:
            if (hlp_hasRcdWithGivenPOIClass(v11, "poi"))
            {
              *(v11 + 32) = 0;
              v35 = *(a5 + 8);
              if (*(a5 + 8))
              {
                v36 = a5[1];
                v37 = v36 + (v10 << 6);
                v38 = (v36 + 32);
                v39 = v10;
                do
                {
                  if (v39 && *(v37 + 8) <= *(v38 - 12) && *(v37 + 10) >= *(v38 - 11))
                  {
                    *v38 = 1;
                  }

                  --v39;
                  v38 += 16;
                  --v35;
                }

                while (v35);
              }
            }

            else if (stat_hmogrph_hasSubWordWithGivenTn((a5 + 1), v10, "poi"))
            {
              *(v11 + 32) = 1;
              v45 = *(a5 + 8);
              if (*(a5 + 8))
              {
                v46 = a5[1];
                v47 = v46 + (v10 << 6);
                v48 = (v46 + 32);
                v49 = v10;
                do
                {
                  if (v49 && *(v47 + 8) <= *(v48 - 12) && *(v47 + 10) >= *(v48 - 11))
                  {
                    *v48 = 0;
                  }

                  --v49;
                  v48 += 16;
                  --v45;
                }

                while (v45);
              }
            }

            else
            {
              *(v11 + 32) = 0;
              v55 = *(a5 + 8);
              if (*(a5 + 8))
              {
                v56 = a5[1];
                v57 = v56 + (v10 << 6);
                v58 = (v56 + 32);
                v59 = v10;
                do
                {
                  if (v59 && *(v57 + 8) <= *(v58 - 12) && *(v57 + 10) >= *(v58 - 11))
                  {
                    *v58 = 1;
                  }

                  --v59;
                  v58 += 16;
                  --v55;
                }

                while (v55);
              }
            }
          }
        }

        else
        {
          if (*(a5 + 8))
          {
            v25 = 0;
            while (1)
            {
              if (v9 != v25)
              {
                v26 = a5[1];
                v27 = v26 + (v10 << 6);
                v28 = v26 + v25;
                if (*(v27 + 8) >= *(v28 + 8) && *(v27 + 10) <= *(v28 + 10))
                {
                  break;
                }
              }

              v25 += 64;
              if (*(a5 + 8) << 6 == v25)
              {
                goto LABEL_28;
              }
            }

            v29 = 1;
          }

          else
          {
LABEL_28:
            v29 = 0;
          }

          *(v11 + 32) = v29;
        }

        ++v10;
        v9 += 64;
      }

      while (v10 < *(a5 + 8));
    }

    v70 = a4;
    v71 = (*(a2 + 104))(a3, a4, 1, 0, &v117 + 2);
    if ((v71 & 0x80000000) != 0)
    {
      return v71;
    }

    else
    {
      v5 = (*(a2 + 104))(a3, a4, 2, HIWORD(v117), &v117);
      v72 = a1;
      if ((v5 & 0x80000000) == 0)
      {
        v73 = v117;
        if (v117)
        {
          do
          {
            v71 = (*(a2 + 120))(a3, v70, v73, &v116 + 2);
            if ((v71 & 0x80000000) != 0)
            {
              return v71;
            }

            v5 = (*(a2 + 168))(a3, v70, v117, 0, 1, &v119, &v116);
            if ((v5 & 0x80000000) != 0)
            {
              return v5;
            }

            if (v119 == 4 || (v119 == 9 ? (v74 = *(v72 + 144) == 0) : (v74 = 0), !v74 ? (v75 = 0) : (v75 = 1), v119 != 10 ? (v76 = v75 == 0) : (v76 = 0), !v76))
            {
              v71 = (*(a2 + 168))(a3, v70, v117, 1, 1, &v118 + 2, &v116);
              if ((v71 & 0x80000000) != 0)
              {
                return v71;
              }

              v71 = (*(a2 + 168))(a3, v70, v117, 2, 1, &v118, &v116);
              if ((v71 & 0x80000000) != 0)
              {
                return v71;
              }

              if (!*(a5 + 8))
              {
LABEL_187:
                v5 = 2314215424;
                log_OutText(*(*a5 + 32), "FE_HMOGRPH", 5, 0, "cant find lingdb word : no word found with pos=%d,%d", HIWORD(v118), v118);
                return v5;
              }

              v77 = 0;
              v78 = a5[1];
              v79 = 32;
              while (__PAIR64__(*(v78 + v79 - 22), *(v78 + v79 - 24)) != __PAIR64__(v118, HIWORD(v118)))
              {
                ++v77;
                v79 += 64;
                if (*(a5 + 8) == v77)
                {
                  goto LABEL_187;
                }
              }

              if (*(v78 + v79) == 1)
              {
                v5 = (*(a2 + 192))(a3, v70, v117);
                if ((v5 & 0x80000000) != 0)
                {
                  return v5;
                }

                log_OutText(*(*a5 + 32), "FE_HMOGRPH", 5, 0, "Due to POI priority, delete a word record from pos %d to pos %d", HIWORD(v118), v118);
                v80 = a5[1];
                if (*(v80 + v79) != 1)
                {
                  goto LABEL_184;
                }

                v81 = *(a5 + 8);
                if (*(a5 + 8))
                {
                  v82 = v80 + v79;
                  v83 = (v80 + 10);
                  v84 = v77;
                  do
                  {
                    if (v84 && *(v82 - 24) >= *(v83 - 1) && *(v82 - 22) <= *v83)
                    {
                      goto LABEL_184;
                    }

                    --v84;
                    v83 += 32;
                    --v81;
                  }

                  while (v81);
                  v85 = 0;
                  v5 = 0;
                  while (1)
                  {
                    if (v77 != v85)
                    {
                      v86 = a5[1] + (v85 << 6);
                      if (*(v82 - 24) <= *(v86 + 8))
                      {
                        v87 = *(v86 + 10);
                        if (*(v82 - 22) > v87)
                        {
                          break;
                        }
                      }
                    }

LABEL_180:
                    if (++v85 >= *(a5 + 8))
                    {
                      if ((v5 & 0x80000000) != 0)
                      {
                        return v5;
                      }

                      goto LABEL_184;
                    }
                  }

                  v88 = v70;
                  v89 = *a5;
                  v124 = 0;
                  v122 = 0;
                  __s = 0;
                  HIWORD(v121) = 0;
                  v71 = (*(a2 + 104))(a3, v88, 1, 0, &v124);
                  if ((v71 & 0x80000000) != 0)
                  {
                    return v71;
                  }

                  v5 = (*(a2 + 184))(a3, v88, v124, 0, &v122 + 2);
                  if ((v5 & 0x80000000) != 0)
                  {
                    v72 = a1;
                  }

                  else
                  {
                    v72 = a1;
                    if (HIWORD(v122) == 1)
                    {
                      v5 = (*(a2 + 176))(a3, a4, v124, 0, &__s, &v122);
                      if ((v5 & 0x80000000) == 0 && v122 >= 2u)
                      {
                        v90 = *(v89 + 8);
                        v91 = cstdlib_strlen(__s);
                        v92 = heap_Calloc(v90, 1, v91 + 2);
                        if (!v92)
                        {
                          log_OutPublic(*(v89 + 32), "FE_HMOGRPH", 37000, 0);
                          return 2314215434;
                        }

                        v93 = v92;
                        cstdlib_strcpy(v92, __s);
                        v94 = cstdlib_strlen(&v93[v87]);
                        cstdlib_memmove(&v93[v87 + 1], &v93[v87], v94 + 1);
                        v93[v87] = 32;
                        v113 = *(a2 + 160);
                        v95 = v124;
                        v96 = cstdlib_strlen(v93);
                        v71 = v113(a3, a4, v95, 0, (v96 + 1), v93, &v121 + 2);
                        if ((v71 & 0x80000000) != 0)
                        {
                          return v71;
                        }

                        heap_Free(*(v89 + 8), v93);
                        v72 = a1;
                        v70 = a4;
                        goto LABEL_146;
                      }
                    }
                  }

                  v70 = a4;
                  if ((v5 & 0x80000000) != 0)
                  {
                    return v5;
                  }

LABEL_146:
                  v122 = 0;
                  LODWORD(__s) = 0;
                  v124 = 0;
                  v120 = 0;
                  v121 = 0;
                  v71 = (*(a2 + 104))(a3, v70, 1, 0, &v122);
                  if ((v71 & 0x80000000) != 0)
                  {
                    return v71;
                  }

                  v97 = (*(a2 + 104))(a3, v70, 2, v122, &v121 + 2);
                  v5 = v97;
                  if ((v97 & 0x80000000) == 0)
                  {
                    v98 = HIWORD(v121);
                    if (HIWORD(v121))
                    {
                      while (1)
                      {
                        v71 = (*(a2 + 120))(a3, v70, v98, &v121);
                        if ((v71 & 0x80000000) != 0)
                        {
                          return v71;
                        }

                        (*(a2 + 168))(a3, v70, HIWORD(v121), 0, 1, &__s, &v120 + 2);
                        v71 = (*(a2 + 168))(a3, v70, HIWORD(v121), 1, 1, &v124, &v120 + 2);
                        if ((v71 & 0x80000000) != 0)
                        {
                          return v71;
                        }

                        v71 = (*(a2 + 168))(a3, v70, HIWORD(v121), 2, 1, &v122 + 2, &v120 + 2);
                        if ((v71 & 0x80000000) != 0)
                        {
                          return v71;
                        }

                        if (v124 >= v87)
                        {
                          ++v124;
                          v99 = HIWORD(v122);
                        }

                        else
                        {
                          v99 = HIWORD(v122);
                          if (HIWORD(v122) <= v87)
                          {
                            goto LABEL_157;
                          }
                        }

                        HIWORD(v122) = v99 + 1;
LABEL_157:
                        v71 = (*(a2 + 160))(a3, v70, HIWORD(v121), 1, 1, &v124, &v120);
                        if ((v71 & 0x80000000) != 0)
                        {
                          return v71;
                        }

                        v71 = (*(a2 + 160))(a3, v70, HIWORD(v121), 2, 1, &v122 + 2, &v120);
                        if ((v71 & 0x80000000) != 0)
                        {
                          return v71;
                        }

                        v98 = v121;
                        HIWORD(v121) = v121;
                        if (!v121)
                        {
                          goto LABEL_162;
                        }
                      }
                    }
                  }

                  if ((v97 & 0x80000000) != 0)
                  {
                    return v5;
                  }

LABEL_162:
                  if (*(a5 + 8))
                  {
                    v100 = 0;
                    v101 = 0;
                    v102 = *(a5 + 8) << 6;
                    v103 = v77;
                    do
                    {
                      if (v103)
                      {
                        v104 = a5[1];
                        v105 = v104 + v100;
                        v106 = *(v104 + v100 + 8);
                        if (v106 >= v87)
                        {
                          *(v105 + 8) = v106 + 1;
                          v108 = *(v105 + 10);
                          v107 = (v105 + 10);
                          LOWORD(v106) = v108;
                          goto LABEL_169;
                        }

                        v106 = *(v105 + 10);
                        if (v106 > v87)
                        {
                          v107 = (v104 + (v101 << 6) + 10);
LABEL_169:
                          *v107 = v106 + 1;
                        }
                      }

                      ++v101;
                      --v103;
                      v100 += 64;
                    }

                    while (v102 != v100);
                  }

                  v124 = 0;
                  __s = 0;
                  HIWORD(v122) = 0;
                  v71 = (*(a2 + 104))(a3, v70, 1, 0, &v122 + 2);
                  if ((v71 & 0x80000000) != 0)
                  {
                    return v71;
                  }

                  v5 = (*(a2 + 176))(a3, v70, HIWORD(v122), 1, &__s, &v124);
                  if ((v5 & 0x80000000) != 0)
                  {
                    return v5;
                  }

                  v109 = v124;
                  if (v124)
                  {
                    v110 = __s + 16;
                    do
                    {
                      v111 = *(v110 - 1);
                      if (v111 >= v87)
                      {
                        *(v110 - 1) = v111 + 1;
                      }

                      else if (*v110 + v111 > v87)
                      {
                        ++*v110;
                      }

                      v110 += 32;
                      --v109;
                    }

                    while (v109);
                  }

                  goto LABEL_180;
                }
              }

              v5 = 0;
            }

LABEL_184:
            v73 = HIWORD(v116);
            LOWORD(v117) = HIWORD(v116);
          }

          while (HIWORD(v116));
        }
      }
    }
  }

  return v5;
}

uint64_t stat_hmogrph_getIOBTNToken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, char *a8)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0;
  for (i = (*(a2 + 104))(a3, a4, 2, a5, &v24 + 2); ; i = (*(a2 + 120))(a3, a4, HIWORD(v24), &v24 + 2))
  {
    v16 = i;
    if ((i & 0x80000000) != 0)
    {
      break;
    }

    if (!HIWORD(v24))
    {
      cstdlib_strcpy(a8, "");
      return v16;
    }

    v17 = (*(a2 + 168))(a3, a4, HIWORD(v24), 0, 1, &v22, &v24);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }

    if (v22 == 6)
    {
      v17 = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v24), 1, 1, &v23 + 2, &v24);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      v17 = (*(*(a1 + 48) + 168))(a3, a4, HIWORD(v24), 2, 1, &v23, &v24);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      if (HIWORD(v23) <= a6 && v23 + 1 >= a7)
      {
        if (HIWORD(v23) + 1 == a6 || HIWORD(v23) == a6)
        {
          v20 = "B-";
        }

        else
        {
          v20 = "I-";
        }

        cstdlib_strcpy(a8, v20);
        v16 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v24), 4, &v21, &v24);
        if ((v16 & 0x80000000) == 0)
        {
          cstdlib_strncat(a8, (v21 + 1), 0x3CuLL);
          a8[cstdlib_strlen(a8) - 1] = 0;
        }

        return v16;
      }
    }
  }

  return v16;
}

uint64_t stat_hmogrph_disambiguateWords(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v123 = *MEMORY[0x277D85DE8];
  v120 = 0;
  v121 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v115 = 0;
  v116 = 0;
  v114 = 0;
  v112 = 0;
  v113 = 0;
  v110 = 0;
  v111 = 0;
  memset(__c, 0, sizeof(__c));
  v10 = (*(a2 + 104))(a3, a4, 1, 0, &v121 + 2);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = (*(a2 + 184))(a3, a4, HIWORD(v121), 0, &v119);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (v119 != 1)
  {
    return v11;
  }

  v11 = (*(a2 + 176))(a3, a4, HIWORD(v121), 0, &v112, &v120);
  if ((v11 & 0x80000000) != 0 || v120 < 2u)
  {
    return v11;
  }

  v12 = *(a1 + 35);
  v10 = (*(v12 + 40))(*(a5 + 104), *(a5 + 112), &v114);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v13 = *(a1 + 81);
  v14 = v114;
  if (cstdlib_strlen(a1 + 344) + v14 != v13)
  {
    log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
    return 2314215449;
  }

  v11 = (*(a2 + 104))(a3, a4, 2, HIWORD(v121), &v121);
  if ((v11 & 0x80000000) == 0)
  {
    v15 = v121;
    if (v121)
    {
      __s = (a1 + 344);
      __s1 = 0;
      v16 = 0;
      __dst = 0;
      v98 = 0;
      v97 = 0;
      v105 = 0;
      v96 = v12;
      while (1)
      {
        v17 = (*(a2 + 168))(a3, a4, v15, 0, 1, &v115, &v120);
        if ((v17 & 0x80000000) != 0)
        {
LABEL_187:
          v11 = v17;
          goto LABEL_188;
        }

        if (v115 <= 0xA && ((1 << v115) & 0x610) != 0)
        {
          break;
        }

LABEL_28:
        v11 = (*(a2 + 120))(a3, a4, v121, &v121);
        if ((v11 & 0x80000000) == 0)
        {
          v15 = v121;
          if (v121)
          {
            continue;
          }
        }

        goto LABEL_188;
      }

      v17 = (*(*(a1 + 6) + 168))(a3, a4, v121, 1, 1, &v118, &v120);
      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_187;
      }

      v17 = (*(*(a1 + 6) + 168))(a3, a4, v121, 2, 1, &v117, &v120);
      if ((v17 & 0x80000000) != 0)
      {
        goto LABEL_187;
      }

      v19 = v117;
      v20 = v118;
      v21 = v117 - v118;
      if (v21 <= v105)
      {
        v23 = v118;
        v24 = __dst;
      }

      else
      {
        v22 = heap_Realloc(*(*a1 + 8), __dst, (v21 + 1));
        if (!v22)
        {
          goto LABEL_194;
        }

        v105 = v21;
        v23 = v118;
        v24 = v22;
      }

      cstdlib_strncpy(v24, (v112 + v23), v21);
      __dst = v24;
      if (v19 == v20)
      {
        *v24 = 0;
        goto LABEL_28;
      }

      if (cstdlib_strchr(__s, v24[(v21 - 1)]))
      {
        v25 = v21 - 1;
      }

      else
      {
        v25 = v21;
      }

      v24[v25] = 0;
      if (!v25)
      {
        goto LABEL_28;
      }

      v26 = cstdlib_strlen(v24);
      v27 = v26;
      v95 = v16;
      if (v26 > v98)
      {
        v28 = heap_Realloc(*(*a1 + 8), __s1, v26 + 1);
        if (v28)
        {
          __s1 = v28;
          v98 = v27;
LABEL_35:
          v99 = 0;
          v29 = 0;
          while (1)
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(&__dst[v29], 0);
            if (utf8_ToLower(__dst, v29, __src))
            {
              if (cstdlib_strlen(__src) <= NextUtf8Offset)
              {
                cstdlib_strcpy(&__s1[v99], __src);
                v99 = cstdlib_strlen(__s1);
              }

              else
              {
                v98 += 5;
                v31 = heap_Realloc(*(*a1 + 8), __s1, v98 + 1);
                if (!v31)
                {
LABEL_197:
                  v11 = 2314215434;
                  goto LABEL_198;
                }

                __s1 = v31;
              }
            }

            else
            {
              cstdlib_strncpy(&__s1[v99], &__dst[v29], NextUtf8Offset);
              v99 += NextUtf8Offset;
            }

            v29 += NextUtf8Offset;
            if (v29 >= v27)
            {
              v32 = v99;
              v24 = __dst;
              goto LABEL_45;
            }
          }
        }

LABEL_194:
        v11 = 2314215434;
LABEL_195:
        log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
LABEL_188:
        if (__s1)
        {
          heap_Free(*(*a1 + 8), __s1);
        }

        if (__dst)
        {
          heap_Free(*(*a1 + 8), __dst);
        }

        if (v16)
        {
          heap_Free(*(*a1 + 8), v16);
        }

        return v11;
      }

      if (v26)
      {
        goto LABEL_35;
      }

      v32 = 0;
LABEL_45:
      __s1[v32] = 0;
      if (IsModelHomograph(__s1, *(a5 + 136)))
      {
        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PRESENT: %s", __s1);
        v33 = v121;
        HIWORD(v120) = v121;
        if (v121)
        {
          v34 = 0;
          v35 = v117;
          v36 = v118;
          LOWORD(v37) = v121;
          while (1)
          {
            IOBTNToken = (*(a2 + 136))(a3, a4, v37, &v120 + 2);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              break;
            }

            if (!HIWORD(v120))
            {
              goto LABEL_67;
            }

            IOBTNToken = (*(a2 + 168))(a3, a4);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              break;
            }

            if (v115 > 0xA || ((1 << v115) & 0x610) == 0)
            {
              v37 = HIWORD(v120);
            }

            else
            {
              IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v120), 1, 1, &v116 + 2, &v120);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                break;
              }

              IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v120), 2, 1, &v116, &v120);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                break;
              }

              v37 = HIWORD(v120);
              if (HIWORD(v116) == v36 && v116 == v35)
              {
                v33 = HIWORD(v120);
              }

              else
              {
                if (++v34 == (*(a1 + 80) - 1) >> 1)
                {
                  HIWORD(v120) = 0;
                  v33 = v37;
                  goto LABEL_67;
                }

                v33 = HIWORD(v120);
                v36 = HIWORD(v116);
                v35 = v116;
              }
            }

            if (!v37)
            {
              goto LABEL_67;
            }
          }

LABEL_196:
          v11 = IOBTNToken;
LABEL_199:
          v16 = v95;
          goto LABEL_188;
        }

LABEL_67:
        v40 = *a1;
        if (!(*(a1 + 81) * *(a1 + 80)))
        {
          log_OutPublic(*(v40 + 32), "FE_HMOGRPH", 37000, 0);
          v11 = 2314215449;
          goto LABEL_199;
        }

        v41 = 4 * (*(a1 + 81) * *(a1 + 80));
        v42 = heap_Alloc(*(v40 + 8), v41);
        v111 = v42;
        v16 = v95;
        if (!v42)
        {
          goto LABEL_194;
        }

        v43 = v42;
        memset_pattern16(v42, &unk_26ECDA830, v41);
        HIWORD(v120) = v33;
        if (v33)
        {
          v93 = 0;
          v100 = 0;
          v44 = 0;
          v45 = 0;
          while (1)
          {
            IOBTNToken = (*(a2 + 168))(a3, a4, v33, 0, 1, &v115, &v120);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              goto LABEL_196;
            }

            if (v115 <= 0xA && ((1 << v115) & 0x610) != 0)
            {
              IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v120), 1, 1, &v116 + 2, &v120);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_196;
              }

              IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v120), 2, 1, &v116, &v120);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_196;
              }

              if (HIWORD(v116) != v45 || v116 != v44)
              {
                v47 = cstdlib_strlen(__s);
                v48 = v47;
                v49 = __dst;
                if (v47)
                {
                  v50 = v114;
                  do
                  {
                    v43[v50++] = 0.0;
                    --v48;
                  }

                  while (v48);
                }

                v51 = HIWORD(v116);
                v52 = v116 - HIWORD(v116);
                if (v52 > v105)
                {
                  v53 = heap_Realloc(*(*a1 + 8), __dst, (v52 + 1));
                  if (!v53)
                  {
                    goto LABEL_197;
                  }

                  v105 = v52;
                  v51 = HIWORD(v116);
                  v49 = v53;
                }

                cstdlib_strncpy(v49, (v112 + v51), v52);
                v49[v52] = 0;
                v54 = cstdlib_strcmp(__s1, v49);
                v55 = v93;
                if (HIWORD(v120) == v121)
                {
                  v56 = v93;
                }

                else
                {
                  v56 = 1;
                }

                if (!v54)
                {
                  v55 = v56;
                }

                v93 = v55;
                v57 = cstdlib_strchr(__s, v49[(v52 - 1)]);
                if (v57)
                {
                  v58 = a1[v57 - __s + 354] - 48;
                  v43[v114 + v58] = 1.0;
                  log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PUNC: %i", v58);
                  v49[(v52 - 1)] = 0;
                }

                __dst = v49;
                IOBTNToken = stat_hmogrph_getIOBTNToken(a1, a2, a3, a4, HIWORD(v121), HIWORD(v116), v116, __src);
                if ((IOBTNToken & 0x80000000) != 0)
                {
                  goto LABEL_196;
                }

                if (cstdlib_strcmp(__src, ""))
                {
                  v59 = __src;
                }

                else
                {
                  v59 = v49;
                }

                log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_WORD: %s", v59);
                v60 = (*(v96 + 56))(*(a5 + 104), *(a5 + 112), v59, v43);
                v11 = v60;
                if ((v60 & 0x1FFF) == 0x14)
                {
                  if (*(a5 + 176))
                  {
                    v61 = *v59;
                    if ((v61 - 65) <= 0x19)
                    {
                      *v59 = v61 | 0x20;
                      LOWORD(v11) = (*(v96 + 56))(*(a5 + 104), *(a5 + 112), v59, v43);
                      *v59 = v61;
                    }
                  }

                  if ((v11 & 0x1FFF) == 0x14)
                  {
                    IOBTNToken = (*(v96 + 56))(*(a5 + 104), *(a5 + 112), a5 + 164, v43);
                    if ((IOBTNToken & 0x80000000) != 0)
                    {
                      goto LABEL_196;
                    }
                  }
                }

                else if ((v60 & 0x80000000) != 0)
                {
                  goto LABEL_199;
                }

                if (HIWORD(v120) == v121)
                {
                  v100 = *(a1 + 80) >> 1;
                }

                ++v100;
                v45 = HIWORD(v116);
                v44 = v116;
                v43 += *(a1 + 81);
              }
            }

            IOBTNToken = (*(a2 + 120))(a3, a4, HIWORD(v120), &v120 + 2);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              goto LABEL_196;
            }

            if (v100 == *(a1 + 80))
            {
              HIWORD(v120) = 0;
LABEL_114:
              v62 = v93 == 1;
              v16 = v95;
              goto LABEL_115;
            }

            v33 = HIWORD(v120);
            if (!HIWORD(v120))
            {
              goto LABEL_114;
            }
          }
        }

        v62 = 0;
LABEL_115:
        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_FEATURE: BEGIN");
        if (*(a1 + 81) * *(a1 + 80))
        {
          v63 = 0;
          do
          {
            log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "%f", v111[v63++]);
          }

          while (v63 < (*(a1 + 81) * *(a1 + 80)));
        }

        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_FEATURE: END");
        v64 = *(a5 + 40);
        *(*v64 + 49) = *(a5 + 128) / 100.0;
        v17 = fi_predict(v64, &v111, *(a1 + 80), &v110);
        if ((v17 & 0x80000000) != 0)
        {
          goto LABEL_187;
        }

        v11 = 2314215434;
        LODWORD(__s2) = 0;
        if ((fi_shape_get_size((**(a5 + 40) + 92), &__s2) & 0x80000000) != 0)
        {
          v11 = 2314215431;
          goto LABEL_198;
        }

        if (__s2 != 1)
        {
          v11 = 2314215449;
LABEL_198:
          log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
          goto LABEL_199;
        }

        v65 = cstdlib_strlen(__s1);
        v66 = v65 + 18;
        if (v65 + 18 > v97)
        {
          v67 = heap_Realloc(*(*a1 + 8), v16, (v65 + 19));
          if (!v67)
          {
            goto LABEL_195;
          }

          v97 = v66;
          v16 = v67;
        }

        cstdlib_strcpy(v16, "statwordhmogrph__");
        cstdlib_strcat(v16, __s1);
        *&__c[1] = -1;
        v17 = (*(*(a1 + 12) + 96))(*(a1 + 10), *(a1 + 11), "fecfg", v16, &__c[3], &__c[1], __c);
        if ((v17 & 0x80000000) != 0)
        {
          goto LABEL_187;
        }

        if (!*&__c[1])
        {
          log_OutPublic(*(*a1 + 32), "FE_HMOGRPH", 37000, 0);
          v11 = 2314215444;
          goto LABEL_188;
        }

        v68 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v68)
        {
          *v68 = 0;
        }

        v69 = cstdlib_strlen(**&__c[3]);
        if (v97 < v69)
        {
          v70 = heap_Realloc(*(*a1 + 8), v16, v69 + 1);
          if (!v70)
          {
            goto LABEL_195;
          }

          v97 = v69;
          v16 = v70;
        }

        cstdlib_strcpy(v16, **&__c[3]);
        v24 = __dst;
        v95 = v16;
        if (*v110)
        {
          HomographPhon = GetHomographPhon(*v110, v16);
          if (HomographPhon != 0 && !v62)
          {
            v87 = HomographPhon;
            log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PHON: %s", HomographPhon);
            v88 = v121;
            HIWORD(v120) = v121;
            if (v121)
            {
              v72 = 0;
              v102 = v118;
              v94 = v117;
              while (1)
              {
                IOBTNToken = (*(a2 + 168))(a3, a4, v88, 0, 1, &v115, &v120);
                if ((IOBTNToken & 0x80000000) != 0)
                {
                  goto LABEL_196;
                }

                if (v115 <= 0xA && ((1 << v115) & 0x610) != 0)
                {
                  IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v120), 1, 1, &v116 + 2, &v120);
                  if ((IOBTNToken & 0x80000000) != 0)
                  {
                    goto LABEL_196;
                  }

                  IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v120), 2, 1, &v116, &v120);
                  if ((IOBTNToken & 0x80000000) != 0)
                  {
                    goto LABEL_196;
                  }

                  if (HIWORD(v116) == v102 && v116 == v94)
                  {
                    IOBTNToken = (*(*(a1 + 6) + 176))(a3, a4, HIWORD(v120), 3, &v113, &v120);
                    if ((IOBTNToken & 0x80000000) != 0)
                    {
                      goto LABEL_196;
                    }

                    v90 = cstdlib_strcmp(v113, v87);
                    v91 = HIWORD(v120);
                    IOBTNToken = (*(a2 + 120))(a3, a4, HIWORD(v120), &v120 + 2);
                    if ((IOBTNToken & 0x80000000) != 0)
                    {
                      goto LABEL_196;
                    }

                    if (!v90)
                    {
                      v72 = v91;
                    }

                    v88 = HIWORD(v120);
                    if (HIWORD(v120))
                    {
                      continue;
                    }
                  }
                }

                v24 = __dst;
                goto LABEL_135;
              }
            }

            goto LABEL_183;
          }
        }

        log_OutText(*(*a1 + 32), "FE_HMOGRPH", 5, 0, "STATWORDHMOGRPH_PHON: <>");
      }

      v72 = 0;
LABEL_135:
      __dst = v24;
      v73 = v121;
      HIWORD(v120) = v121;
      if (v121)
      {
        v74 = v118;
        v75 = v117;
        do
        {
          IOBTNToken = (*(a2 + 168))(a3, a4, v73, 0, 1, &v115, &v120);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_196;
          }

          if (v115 > 0xA || ((1 << v115) & 0x610) == 0)
          {
            goto LABEL_165;
          }

          IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v120), 1, 1, &v116 + 2, &v120);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_196;
          }

          IOBTNToken = (*(*(a1 + 6) + 168))(a3, a4, HIWORD(v120), 2, 1, &v116, &v120);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_196;
          }

          if (HIWORD(v116) != v74 || v116 != v75)
          {
LABEL_165:
            HIWORD(v120) = 0;
            break;
          }

          v77 = HIWORD(v120);
          IOBTNToken = (*(a2 + 120))(a3, a4, HIWORD(v120), &v120 + 2);
          if ((IOBTNToken & 0x80000000) != 0)
          {
            goto LABEL_196;
          }

          if (!v72 || v77 == v72)
          {
            LOWORD(v121) = v77;
            if (v77 == v72)
            {
              v107 = 0;
              __s2 = 0;
              IOBTNToken = (*(*(a1 + 6) + 176))(a3, a4, v72, 5, &__s2, &v120);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_196;
              }

              IOBTNToken = (*(*(a1 + 6) + 176))(a3, a4, v121, 14, &v107, &v120);
              if ((IOBTNToken & 0x80000000) != 0)
              {
                goto LABEL_196;
              }

              v78 = cstdlib_strlen(v107);
              v79 = cstdlib_strlen(__s2) + v78;
              if (v79 <= v97)
              {
                v81 = v95;
              }

              else
              {
                v80 = heap_Realloc(*(*a1 + 8), v95, v79 + 1);
                if (!v80)
                {
                  goto LABEL_197;
                }

                v97 = v79;
                v81 = v80;
              }

              cstdlib_strcpy(v81, "POS:");
              cstdlib_strcat(v81, __s2);
              cstdlib_strcat(v81, ";");
              v95 = v81;
              if (!cstdlib_strstr(v107, v81))
              {
                v82 = cstdlib_strstr(v107, "POS");
                if (v82)
                {
                  v83 = v82;
                  cstdlib_strncpy(v95, v107, v82 - v107);
                  v95[v83 - v107] = 0;
                  cstdlib_strcat(v95, "POS:");
                  cstdlib_strcat(v95, __s2);
                  v84 = cstdlib_strstr(v83, ";");
                  if (v84)
                  {
                    cstdlib_strcat(v95, v84);
                  }

                  v101 = *(*(a1 + 6) + 160);
                  v85 = v121;
                  v86 = cstdlib_strlen(v95);
                  IOBTNToken = v101(a3, a4, v85, 14, (v86 + 1), v95, &v119 + 2);
                  if ((IOBTNToken & 0x80000000) != 0)
                  {
                    goto LABEL_196;
                  }
                }
              }
            }
          }

          else
          {
            IOBTNToken = (*(a2 + 192))(a3, a4, v77);
            if ((IOBTNToken & 0x80000000) != 0)
            {
              goto LABEL_196;
            }
          }

          v73 = HIWORD(v120);
        }

        while (HIWORD(v120));
      }

LABEL_183:
      v16 = v95;
      goto LABEL_28;
    }
  }

  return v11;
}

char *IsModelHomograph(const char *a1, char *a2)
{
  v4 = cstdlib_strlen(a1);
  result = cstdlib_strstr(a2, a1);
  if (result)
  {
    if (result == a2 || *(result - 1) == 124)
    {
      return (!result[v4] || result[v4] == 124);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *GetHomographPhon(const char *a1, char *__s1)
{
  v2 = __s1;
  v4 = cstdlib_strstr(__s1, "=");
  if (v4)
  {
    while (1)
    {
      *v4++ = 0;
      v5 = cstdlib_strcmp(a1, v2);
      v6 = cstdlib_strstr(v4, "|");
      if (!v5)
      {
        break;
      }

      if (!v6)
      {
        return 0;
      }

      v2 = v6 + 1;
      v4 = cstdlib_strstr(v6 + 1, "=");
      if (!v4)
      {
        return v4;
      }
    }

    if (v6)
    {
      *v6 = 0;
    }
  }

  return v4;
}

char *hlp_filterWordCandIfTnHas(char *result)
{
  v1 = *(result + 28);
  if (*(result + 28))
  {
    v2 = result;
    v3 = 0;
    v4 = *(result + 6);
    do
    {
      v5 = v4 + 16 * v3;
      if (*(v5 + 8))
      {
        v6 = 0;
        v7 = 0;
        do
        {
          result = cstdlib_strstr(*(*v5 + v6 + 40), "poi");
          v4 = *(v2 + 6);
          if (result)
          {
            *(*(v4 + 16 * v3) + v6 + 48) = 1;
          }

          ++v7;
          v5 = v4 + 16 * v3;
          v6 += 56;
        }

        while (v7 < *(v5 + 8));
        v1 = *(v2 + 28);
      }

      ++v3;
    }

    while (v3 < v1);
  }

  return result;
}

uint64_t hlp_hasRcdWithGivenPOIClass(uint64_t a1, char *__s2)
{
  v2 = *(a1 + 56);
  if (!*(a1 + 56))
  {
    return 0;
  }

  v5 = 0;
  v6 = *(a1 + 48);
  while (1)
  {
    v7 = v6 + 16 * v5;
    if (*(v7 + 8))
    {
      break;
    }

LABEL_8:
    if (++v5 >= v2)
    {
      return 0;
    }
  }

  v8 = 0;
  v9 = 40;
  while (cstdlib_strcmp(*(*v7 + v9), __s2))
  {
    ++v8;
    v6 = *(a1 + 48);
    v7 = v6 + 16 * v5;
    v9 += 56;
    if (v8 >= *(v7 + 8))
    {
      v2 = *(a1 + 56);
      goto LABEL_8;
    }
  }

  return 1;
}

uint64_t hlp_filterWordCandIfTnIsNot(uint64_t result, char *__s2)
{
  v2 = *(result + 56);
  if (*(result + 56))
  {
    v4 = result;
    v5 = 0;
    v6 = *(result + 48);
    do
    {
      v7 = v6 + 16 * v5;
      if (*(v7 + 8))
      {
        v8 = 0;
        v9 = 0;
        do
        {
          result = cstdlib_strcmp(*(*v7 + v8 + 40), __s2);
          v6 = *(v4 + 48);
          if (result)
          {
            *(*(v6 + 16 * v5) + v8 + 48) = 1;
          }

          ++v9;
          v7 = v6 + 16 * v5;
          v8 += 56;
        }

        while (v9 < *(v7 + 8));
        v2 = *(v4 + 56);
      }

      ++v5;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t stat_hmogrph_hasSubWordWithGivenTn(uint64_t a1, unsigned int a2, char *__s2)
{
  v3 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = *a1 + (a2 << 6);
  v9 = a2 << 6;
  while (1)
  {
    if (v9 == v6)
    {
      goto LABEL_8;
    }

    v10 = *a1 + v6;
    if (*(v8 + 8) > *(v10 + 8) || *(v8 + 10) < *(*a1 + v6 + 10))
    {
      goto LABEL_8;
    }

    if (hlp_hasRcdWithGivenPOIClass(v10, __s2))
    {
      return 1;
    }

    v3 = *(a1 + 8);
LABEL_8:
    ++v7;
    v6 += 64;
    if (v7 >= v3)
    {
      return 0;
    }
  }
}

uint64_t nntn_AllInOneLoop(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v44 = 0;
  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "nntn : AllInOneLoop Begin");
  if ((paramc_ParamGetInt(*(*a1 + 40), "maxTNNNcallspersent", &v44) & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "set maxTNNNCallsPerSent to %d", v44);
  }

  if (v44)
  {
    *(a1 + 872) = v44;
  }

  v2 = *(a1 + 168);
  *(*(*v2 + 16) + 32) = a1;
  v3 = setDomainsOnSentence_NNTN(a1);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  DomainDefBlockInfo = mergeDomainsOnSentence_NNTN(a1);
  if ((DomainDefBlockInfo & 0x80000000) == 0)
  {
    v5 = *v2;
    *(*(*v2 + 16) + 16) = *(a1 + 304);
    *(v5 + 64) = 16;
    *(v5 + 42) = *(a1 + 312);
    v6 = *(*(a1 + 264) + 16);
    NumberChildren = LDOTreeNode_GetNumberChildren(v6);
    v8 = *(*a1 + 32);
    v9 = *(a1 + 184);
    if (!NumberChildren)
    {
      log_OutText(v8, v9, 5, 0, "no basic token records to process");
      return DomainDefBlockInfo;
    }

    log_OutText(v8, v9, 4, 0, "tokentn : start loop...");
    v10 = *(v6 + 80);
    v11 = *(v6 + 88);
    v45 = v10;
    v40 = v11;
    if (v10 >= v11)
    {
LABEL_59:
      if ((paramc_ParamGetStr(*(*a1 + 40), "spaceInPYT", &v46) & 0x80000000) != 0 || LH_stricmp(v46, "yes") || (DomainDefBlockInfo = nntn_write_LD_T_INPUTSPACETAG(a1), (DomainDefBlockInfo & 0x80000000) == 0))
      {
LABEL_65:
        FERuntimeData_FreeMatches(a1, 1);
        log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "nntn : AllInOneLoop End (%x)");
      }

      return DomainDefBlockInfo;
    }

    v12 = 0;
    while (1)
    {
      v42 = 0;
      __s1 = 0;
      v13 = *v10;
      v14 = LDOTreeNode_ComputeAbsoluteFrom(*v10, &v42 + 1);
      DomainRange = LH_ERROR_to_VERROR(v14);
      if ((DomainRange & 0x80000000) != 0 || (v16 = LDOTreeNode_ComputeAbsoluteTo(v13, &v42), DomainRange = LH_ERROR_to_VERROR(v16), (DomainRange & 0x80000000) != 0))
      {
LABEL_64:
        DomainDefBlockInfo = DomainRange;
        goto LABEL_65;
      }

      v17 = WORD2(v42);
      v18 = v42;
      Type = LDOObject_GetType(v13, &__s1);
      DomainDefBlockInfo = LH_ERROR_to_VERROR(Type);
      if ((DomainDefBlockInfo & 0x80000000) != 0)
      {
        goto LABEL_65;
      }

      *(*v2 + 72) = 0;
      if (cstdlib_strcmp(__s1, "TOKEN_ALPHA"))
      {
        v20 = v12;
      }

      else
      {
        v20 = 0;
      }

      if (!cstdlib_strcmp(__s1, "TOKEN_DIGIT"))
      {
        v20 = 1;
      }

      if (!cstdlib_strcmp(__s1, "TOKEN_PUNCT"))
      {
        v20 = 2;
      }

      if (!cstdlib_strcmp(__s1, "TOKEN_WSPACE"))
      {
        v20 = 3;
      }

      if (!cstdlib_strcmp(__s1, "TOKEN_DCT"))
      {
        v20 = 4;
      }

      if (!cstdlib_strcmp(__s1, "TOKEN_USER_TN"))
      {
        v20 = 5;
      }

      if (!cstdlib_strcmp(__s1, "TOKEN_INT_TN"))
      {
        v20 = 6;
      }

      if (cstdlib_strcmp(__s1, "TOKEN_CASEGENDER"))
      {
        v12 = v20;
      }

      else
      {
        v12 = 7;
      }

      if (v12 <= 2)
      {
        HIWORD(v49) = 0;
        FERuntimeData_GetActiveDomains(a1, v52, &v49 + 1, v17, v18, 0);
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "START basic token %d,%d ... %d active domains", v17, v18, HIWORD(v49));
        if (HIWORD(v49))
        {
          v21 = 0;
          v22 = vceqq_s32(vdupq_n_s32(v12), xmmword_26ECDAC70);
          v23 = vmovn_s32(v22);
          v23.i16[3] = vmovn_s32(vmvnq_s8(*&v22)).i16[3];
          v41 = v23;
          while (1)
          {
            LOWORD(v49) = 0;
            v51 = 0;
            v24 = *v2;
            *(v24 + 46) = 0;
            *(v24 + 44) = v17;
            *(v24 + 56) = 0;
            DomainRange = FERuntimeData_GetDomainRange(a1, v52[v21], &v50);
            if ((DomainRange & 0x80000000) != 0)
            {
              goto LABEL_64;
            }

            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "Domain %d : range %d,%d", v21, *v50, v50[1]);
            *(*v2 + 46) = v50[1];
            DomainRange = FERuntimeData_GetDomainBlockIndex(a1, v52[v21], &v49, &v51);
            if ((DomainRange & 0x80000000) != 0)
            {
              goto LABEL_64;
            }

            DomainDefBlockInfo = FEData_blockData_newGetDomainDefBlockInfo(a1, v49, &v48);
            if ((DomainDefBlockInfo & 0x80000000) != 0)
            {
              goto LABEL_65;
            }

            v25 = *(v48 + 24);
            if (v51 > v25)
            {
              break;
            }

            v26 = (*(v48 + 16) + 72 * v51);
            v27 = *(v48 + 40) + 16 * v26[6];
            log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "doing domain %d, Domain[%s:%s] (applying %d rules)", v21, *v48, (*(v26 + 6) + *v26), *(v27 + 8));
            if (*(v27 + 8))
            {
              v28 = *v2;
              if (*(*v2 + 72) != 1)
              {
                v29 = 0;
                v30 = 0;
                while (1)
                {
                  v31 = *v27 + v29;
                  *(v28 + 40) = 0;
                  v32 = v28 + 40;
                  *(v32 + 16) = v31;
                  DomainDefBlockInfo = FEData_blockData_getTokenAndRegexData_NNTN(a1, v31, (v32 - 8), v32, (v32 - 16), &v47);
                  if ((DomainDefBlockInfo & 0x80000000) != 0)
                  {
                    goto LABEL_65;
                  }

                  if ((vmaxv_u16(vcltz_s16(vshl_n_s16(vand_s8(v41, vmovn_s32(vceqq_s32(vdupq_n_s32(v47), xmmword_26ECDAC80))), 0xFuLL))) & 1) != 0 || !v47)
                  {
                    break;
                  }

                  if (v47 == 5)
                  {
                    if ((v12 & 1) == 0)
                    {
                      break;
                    }
                  }

                  else if (v47 == 6 && v12 - 1 < 2)
                  {
                    break;
                  }

                  log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "rule %s (token %s, %d,%d) blocked by triggerType %s", *(*v2 + 24), TOKENTSTR_0[v12], v17, v18, TRIGGERSTR[v47]);
LABEL_54:
                  if (++v30 < *(v27 + 8))
                  {
                    v29 += 24;
                    v28 = *v2;
                    if (*(*v2 + 72) != 1)
                    {
                      continue;
                    }
                  }

                  goto LABEL_56;
                }

                v34 = *v2;
                v35 = *(*v2 + 16);
                v36 = *(*v2 + 24);
                v37 = *v35;
                *(v37 + 82) = 0;
                *(v37 + 40) = 0;
                v35[2] = *(a1 + 304);
                v35[3] = v36;
                *(v37 + 96) = *(v34 + 56);
                *(v37 + 104) = v49;
                *(v37 + 106) = v51;
                *(v35 + 26) = *(v34 + 44);
                *(v35 + 27) = *(v34 + 46);
                *(v35 + 11) = 0;
                *(v35 + 12) = 0;
                DomainDefBlockInfo = tokenizer_apply_regex_NNTN(a1, v34, &v45);
                if ((DomainDefBlockInfo & 0x80000000) != 0)
                {
                  goto LABEL_65;
                }

                v38 = *(*v2 + 16);
                **(v38 + 8) = 0;
                *(v38 + 44) = 0;
                goto LABEL_54;
              }
            }

LABEL_56:
            if (++v21 >= HIWORD(v49))
            {
              goto LABEL_57;
            }
          }

          log_OutPublic(*(*a1 + 32), *(a1 + 184), 24028, "%s%d%s%d", "domain", v51, "numDomains", v25);
          return NNTNERROR(0);
        }

LABEL_57:
        log_OutText(*(*a1 + 32), *(a1 + 184), 5, 0, "END of loop for basic token %d,%d", v17, v18);
        FERuntimeData_FreeMatches(a1, 0);
      }

      v10 = v45 + 1;
      v45 = v10;
      if (v10 >= v40)
      {
        goto LABEL_59;
      }
    }
  }

  return DomainDefBlockInfo;
}

uint64_t nntn_write_LD_T_INPUTSPACETAG(uint64_t a1)
{
  v2 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v3 = *(*(a1 + 264) + 16);
  v4 = *(v3 + 80);
  if (v4 >= *(v3 + 88))
  {
LABEL_25:
    if (v21)
    {
      LDO_FreeLDOLabelVector(*(a1 + 264), &v20);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      __s1 = 0;
      if (v5)
      {
        Type = LDOObject_GetType(*v5, &__s1);
        v8 = LH_ERROR_to_VERROR(Type);
        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }
      }

      v9 = LDOTreeNode_ComputeAbsoluteFrom(*v4, &v23 + 1);
      v8 = LH_ERROR_to_VERROR(v9);
      if ((v8 & 0x80000000) != 0)
      {
        return v8;
      }

      v10 = LDOTreeNode_ComputeAbsoluteTo(*v4, &v23);
      v2 = LH_ERROR_to_VERROR(v10);
      if ((v2 & 0x80000000) != 0)
      {
        return v2;
      }

      if (!v5 || cstdlib_strcmp(__s1, "TOKEN_PUNCT") && cstdlib_strcmp(__s1, "TOKEN_WSPACE"))
      {
        v11 = LDO_ComputeOverlappingLabels(*(a1 + 264), &v23 + 1, &v23, 0, &v20);
        v2 = LH_ERROR_to_VERROR(v11);
        if ((v2 & 0x80000000) != 0)
        {
          return v2;
        }

        for (i = v21; i < v22; ++i)
        {
          v18 = 0;
          v17 = 0;
          StringAttribute = LDOObject_GetStringAttribute(*i, "TNTAG", &v17, &v18);
          v2 = LH_ERROR_to_VERROR(StringAttribute);
          if ((v2 & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          if (v17 && !cstdlib_strcmp(v18, "_PI1a_"))
          {
            if (v6 == 1)
            {
              v14 = "left";
            }

            else
            {
              v14 = "none";
            }

            v15 = LDOObject_SetStringAttribute(*v4, "INPUTSPACETAG", v14);
            v2 = LH_ERROR_to_VERROR(v15);
            if ((v2 & 0x80000000) != 0)
            {
              goto LABEL_25;
            }

            v6 = 0;
          }
        }

        LDO_FreeLDOLabelVector(*(a1 + 264), &v20);
        v5 = v4;
      }

      else
      {
        v6 = 1;
      }

      if (++v4 >= *(v3 + 88))
      {
        goto LABEL_25;
      }
    }
  }

  return v2;
}

BOOL isEnglishLetter(const char *a1)
{
  v2 = cstdlib_strlen(a1);
  WCharFromUtf8 = utf8_GetWCharFromUtf8(a1, 0, v2);
  if (*a1 & 0xDFu) - 65 < 0x1A || (WCharFromUtf8 - 192) < 0x17 || (WCharFromUtf8 - 216) < 7u || (WCharFromUtf8 - 223) < 0x18u || (WCharFromUtf8 & 0xFFF8) == 0xF8 || (WCharFromUtf8 - 256) <= 0x36 && (WCharFromUtf8 & 1) == 0 || (WCharFromUtf8 - 328) >= 0xFFF1u && (WCharFromUtf8 & 1) != 0 || (WCharFromUtf8 - 330) <= 0x2E && (WCharFromUtf8 & 1) == 0 || (WCharFromUtf8 - 382) >= 0xFFFBu && (WCharFromUtf8)
  {
    return 1;
  }

  v5 = (WCharFromUtf8 - 312) < 0x11;
  if (WCharFromUtf8)
  {
    v5 = (WCharFromUtf8 - 312) > 0xFFC8u;
  }

  if (v5 || (WCharFromUtf8 - 376) >= 0xFFD1u && (WCharFromUtf8 & 1) != 0)
  {
    return 1;
  }

  if ((WCharFromUtf8 - 378) <= 4)
  {
    return (WCharFromUtf8 & 1) == 0;
  }

  return WCharFromUtf8 == 383;
}

uint64_t updateLDOTreeNode_CHN(uint64_t *a1, _DWORD *a2)
{
  v90 = 0;
  v91 = 0;
  __src = 0;
  __s1 = 0;
  v87 = 0;
  v4 = *(a1[33] + 16);
  NumberChildren = LDOTreeNode_GetNumberChildren(v4);
  *a2 = NumberChildren;
  if (!NumberChildren)
  {
    UTF8Char = 0;
    goto LABEL_124;
  }

  v6 = heap_Calloc(*(*a1 + 8), 1, *(a1 + 156) + 1);
  v7 = *a1;
  if (!v6)
  {
    log_OutPublic(*(v7 + 32), "FE_NNTN", 37000, 0);
    UTF8Char = NNTNERROR(10);
    goto LABEL_124;
  }

  v8 = v6;
  v9 = heap_Calloc(*(v7 + 8), 1, *(a1 + 156) + 1);
  v10 = *a1;
  if (!v9)
  {
LABEL_106:
    log_OutPublic(*(v10 + 32), "FE_NNTN", 37000, 0);
    UTF8Char = NNTNERROR(10);
    v68 = 0;
    v72 = 0;
    goto LABEL_121;
  }

  v11 = heap_Calloc(*(v10 + 8), 1, 48 * *a2);
  if (!v11)
  {
    v10 = *a1;
    goto LABEL_106;
  }

  v82 = v11;
  v12 = *(v4 + 80);
  if (v12 >= *(v4 + 88))
  {
    UTF8Char = 0;
LABEL_108:
    v72 = 1;
    v68 = v82;
    goto LABEL_121;
  }

  v80 = 0;
  while (1)
  {
    if (!v12)
    {
      v78 = 6;
      goto LABEL_130;
    }

    v13 = LDOTreeNode_ComputeText(*v12, &v91);
    v14 = LH_ERROR_to_VERROR(v13);
    if ((v14 & 0x80000000) != 0 || (v15 = LHString_BorrowCPtr(v91), v16 = LDOTreeNode_ComputeAbsoluteFrom(*v12, &v90 + 1), v14 = LH_ERROR_to_VERROR(v16), (v14 & 0x80000000) != 0) || (v17 = LDOTreeNode_ComputeAbsoluteTo(*v12, &v90), v14 = LH_ERROR_to_VERROR(v17), (v14 & 0x80000000) != 0))
    {
      UTF8Char = v14;
      goto LABEL_112;
    }

    v18 = v90;
    v19 = HIDWORD(v90);
    Type = LDOObject_GetType(*v12, &__s1);
    UTF8Char = LH_ERROR_to_VERROR(Type);
    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_112;
    }

    if (!cstdlib_strcmp(__s1, "TOKEN_ALPHA"))
    {
      UTF8Char = utf8_getUTF8Char(v15, 0, v9);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_112;
      }

      v83 = v18 - v19;
      if (v18 - v19 > cstdlib_strlen(v9))
      {
        break;
      }
    }

LABEL_97:
    v65 = LDOString_BorrowAllocator(v91);
    OOC_PlacementDeleteObject(v65, v91);
    if (++v12 >= *(v4 + 88))
    {
      v66 = v80;
      if (v80)
      {
        v67 = v80 - 1;
        v68 = v82;
        v69 = v82;
        do
        {
          v70 = v67;
          v71 = LDO_ReplaceNodes(a1[33], v69, v69 + 24);
          UTF8Char = LH_ERROR_to_VERROR(v71);
          if ((UTF8Char & 0x80000000) != 0)
          {
            break;
          }

          v67 = v70 - 1;
          v69 += 48;
        }

        while (v70);
        goto LABEL_113;
      }

      goto LABEL_108;
    }
  }

  v22 = OOCAllocator_Realloc((a1 + 28), 0, 64, &v87);
  if (v87)
  {
LABEL_112:
    v68 = v82;
    v66 = v80;
    goto LABEL_113;
  }

  v23 = v22;
  __b = v8;
  cstdlib_memcpy(v22, v12, 8uLL);
  NextUtf8Offset = 0;
  v25 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v26 = 0;
  v27 = (v82 + 48 * v80);
  *v27 = 8;
  v27[1] = v23;
  v27[2] = v23 + 8;
  v79 = v27;
  do
  {
    UTF8Char = utf8_getUTF8Char(v15, NextUtf8Offset, v9);
    if ((UTF8Char & 0x80000000) != 0)
    {
      goto LABEL_111;
    }

    v28 = cstdlib_strlen(v9);
    v29 = isEnglishLetter(v9);
    if (!(v29 | v25))
    {
      v45 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), v9, "TOKEN", "TOKEN_ALPHA", &__src);
      v31 = LH_ERROR_to_VERROR(v45);
      if ((v31 & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      LDOObject_SetU32Attribute(__src, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v46);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_111;
      }

      v47 = &v26[-v85];
      v48 = (&v26[-v85] >> 3) + 1;
      if (v48 > v86)
      {
        v49 = 2 * v86;
        if (2 * v86 >= v86 + 1000000)
        {
          v49 = v86 + 1000000;
        }

        if (v49 > v48)
        {
          v48 = v49;
        }

        if (v48 <= 8)
        {
          v48 = 8;
        }

        v86 = v48;
        v50 = OOCAllocator_Realloc((a1 + 28), v85, 8 * v48, &v87);
        if (v87)
        {
          goto LABEL_111;
        }

        v85 = v50;
        v26 = (v50 + (v47 & 0x7FFFFFFF8));
      }

      cstdlib_memcpy(v26, &__src, 8uLL);
      v25 = 0;
      v26 += 8;
      v44 = v84 + 1;
LABEL_58:
      v84 = v44;
      goto LABEL_59;
    }

    if (v25 == 1 && !v29)
    {
      v30 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), __b, "TOKEN", "TOKEN_ALPHA", &__src);
      v31 = LH_ERROR_to_VERROR(v30);
      if ((v31 & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      LDOObject_SetU32Attribute(__src, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v32);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_111;
      }

      v33 = (&v26[-v85] >> 3) + 1;
      if (v33 > v86)
      {
        v34 = 2 * v86;
        if (2 * v86 >= v86 + 1000000)
        {
          v34 = v86 + 1000000;
        }

        if (v34 > v33)
        {
          v33 = v34;
        }

        if (v33 <= 8)
        {
          v35 = 8;
        }

        else
        {
          v35 = v33;
        }

        v36 = OOCAllocator_Realloc((a1 + 28), v85, 8 * v35, &v87);
        if (v87)
        {
          goto LABEL_111;
        }

        v26 = (v36 + (&v26[-v85] & 0x7FFFFFFF8));
        v85 = v36;
        v86 = v35;
      }

      cstdlib_memcpy(v26, &__src, 8uLL);
      cstdlib_memset(__b, 0, 3uLL);
      v37 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), v9, "TOKEN", "TOKEN_ALPHA", &__src);
      v31 = LH_ERROR_to_VERROR(v37);
      if ((v31 & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      LDOObject_SetU32Attribute(__src, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v38);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_111;
      }

      v39 = v26 + 8;
      v40 = (&v39[-v85] >> 3) + 1;
      if (v40 > v86)
      {
        v41 = 2 * v86;
        if (2 * v86 >= v86 + 1000000)
        {
          v41 = v86 + 1000000;
        }

        if (v41 > v40)
        {
          v40 = v41;
        }

        if (v40 <= 8)
        {
          v42 = 8;
        }

        else
        {
          v42 = v40;
        }

        v43 = OOCAllocator_Realloc((a1 + 28), v85, 8 * v42, &v87);
        if (v87)
        {
          goto LABEL_111;
        }

        v39 = (v43 + (&v39[-v85] & 0x7FFFFFFF8));
        v85 = v43;
        v86 = v42;
      }

      cstdlib_memcpy(v39, &__src, 8uLL);
      v25 = 0;
      v26 = v39 + 8;
      v44 = v84 + 2;
      goto LABEL_58;
    }

    v51 = NextUtf8Offset + v28;
    v52 = !v29;
    if (v25 != 1)
    {
      v52 = 1;
    }

    if (v52)
    {
      if (!v25 && v29)
      {
        *__b = 0;
        cstdlib_strcat(__b, v9);
        if (v51 == v83)
        {
          v59 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), __b, "TOKEN", "TOKEN_ALPHA", &__src);
          v31 = LH_ERROR_to_VERROR(v59);
          if ((v31 & 0x80000000) != 0)
          {
LABEL_110:
            UTF8Char = v31;
LABEL_111:
            v8 = __b;
            goto LABEL_112;
          }

          LDOObject_SetU32Attribute(__src, "_TTYPE", 0);
          UTF8Char = LH_ERROR_to_VERROR(v60);
          if ((UTF8Char & 0x80000000) != 0)
          {
            goto LABEL_111;
          }

          v61 = (&v26[-v85] >> 3) + 1;
          if (v61 > v86)
          {
            v62 = 2 * v86;
            if (2 * v86 >= v86 + 1000000)
            {
              v62 = v86 + 1000000;
            }

            if (v62 > v61)
            {
              v61 = v62;
            }

            if (v61 <= 8)
            {
              v63 = 8;
            }

            else
            {
              v63 = v61;
            }

            v64 = OOCAllocator_Realloc((a1 + 28), v85, 8 * v63, &v87);
            if (v87)
            {
              goto LABEL_111;
            }

            v26 = (v64 + (&v26[-v85] & 0x7FFFFFFF8));
            v85 = v64;
            v86 = v63;
          }

          cstdlib_memcpy(v26, &__src, 8uLL);
          v26 += 8;
          ++v84;
          cstdlib_memset(__b, 0, 3uLL);
        }

LABEL_94:
        v25 = 1;
      }
    }

    else
    {
      cstdlib_strcat(__b, v9);
      if (v51 != v83)
      {
        goto LABEL_94;
      }

      v53 = PNEW_LDOTreeNode_ConRoot((a1 + 28), (a1 + 28), __b, "TOKEN", "TOKEN_ALPHA", &__src);
      v31 = LH_ERROR_to_VERROR(v53);
      if ((v31 & 0x80000000) != 0)
      {
        goto LABEL_110;
      }

      LDOObject_SetU32Attribute(__src, "_TTYPE", 0);
      UTF8Char = LH_ERROR_to_VERROR(v54);
      if ((UTF8Char & 0x80000000) != 0)
      {
        goto LABEL_111;
      }

      v55 = (&v26[-v85] >> 3) + 1;
      if (v55 > v86)
      {
        v56 = 2 * v86;
        if (2 * v86 >= v86 + 1000000)
        {
          v56 = v86 + 1000000;
        }

        if (v56 > v55)
        {
          v55 = v56;
        }

        if (v55 <= 8)
        {
          v57 = 8;
        }

        else
        {
          v57 = v55;
        }

        v58 = OOCAllocator_Realloc((a1 + 28), v85, 8 * v57, &v87);
        if (v87)
        {
          goto LABEL_111;
        }

        v26 = (v58 + (&v26[-v85] & 0x7FFFFFFF8));
        v85 = v58;
        v86 = v57;
      }

      cstdlib_memcpy(v26, &__src, 8uLL);
      v26 += 8;
      ++v84;
      cstdlib_memset(__b, 0, 3uLL);
      v25 = 0;
    }

LABEL_59:
    NextUtf8Offset = utf8_GetNextUtf8Offset(v15, NextUtf8Offset);
  }

  while (NextUtf8Offset < v83);
  v79[3] = v86;
  v79[4] = v85;
  v79[5] = v26;
  if ((&v26[-v85] >> 3) == v84)
  {
    v8 = __b;
    ++v80;
    goto LABEL_97;
  }

  v78 = 0;
  v8 = __b;
LABEL_130:
  v66 = v80;
  UTF8Char = NNTNERROR(v78);
  v68 = v82;
LABEL_113:
  if (v66)
  {
    v73 = v66;
    v74 = v68 + 24;
    do
    {
      *(v74 - 24) = 0;
      v75 = *(v74 - 16);
      if (v75)
      {
        OOCAllocator_Free((a1 + 28), v75);
        *(v74 - 16) = 0;
      }

      *(v74 - 8) = 0;
      *v74 = 0;
      v76 = *(v74 + 8);
      if (v76)
      {
        OOCAllocator_Free((a1 + 28), v76);
        *(v74 + 8) = 0;
      }

      *(v74 + 16) = 0;
      v74 += 48;
      --v73;
    }

    while (v73);
  }

  v72 = 1;
LABEL_121:
  heap_Free(*(*a1 + 8), v8);
  if (v9)
  {
    heap_Free(*(*a1 + 8), v9);
    if (v72)
    {
      goto LABEL_123;
    }
  }

  else if (v72)
  {
LABEL_123:
    heap_Free(*(*a1 + 8), v68);
  }

LABEL_124:
  if (v87)
  {
    return NNTNERROR(0);
  }

  return UTF8Char;
}

uint64_t applyIgtreeExpansion(uint64_t a1, __int16 *a2, const char *a3, char **a4, _DWORD *a5)
{
  v10 = heap_Alloc(*(*a1 + 8), 1024);
  if (v10)
  {
    v11 = v10;
    cstdlib_strcpy(v10, "");
    v12 = fe_nntn_IGTR(a1, a2, a3, v11, a5);
    if (*a5 == 1)
    {
      cstdlib_strcpy(*a4, v11);
    }

    heap_Free(*(*a1 + 8), v11);
    return v12;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_NNTN", 37000, 0);

    return NNTNERROR(10);
  }
}

uint64_t applyNNExpansion(_DWORD *a1, __int16 *a2, char **a3)
{
  v6 = heap_Alloc(*(*a1 + 8), 1024);
  if (v6)
  {
    v7 = v6;
    cstdlib_strcpy(v6, "");
    v8 = *(*a1 + 32);
    if (a1[210])
    {
      log_OutText(v8, "FE_NNTN", 5, 0, "FI prediction enabled", 0);
      v9 = fe_mnc_nntn_Process(a1, a2, v7);
      if ((v9 & 0x80000000) != 0)
      {
        log_OutText(*(*a1 + 32), "FE_NNTN", 5, 0, "FI prediction failed", 0);
      }

      else
      {
        cstdlib_strcpy(*a3, v7);
      }
    }

    else
    {
      log_OutText(v8, "FE_NNTN", 5, 0, "FI prediction is not enabled", 0);
      v9 = 0;
    }

    heap_Free(*(*a1 + 8), v7);
    return v9;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_NNTN", 37000, 0);

    return NNTNERROR(10);
  }
}

uint64_t writeExpandFuncNameToLDO(uint64_t a1, char *a2, char **a3, unsigned __int16 *a4)
{
  v19 = 0;
  v7 = *a4;
  v17 = a4[1];
  v18 = v7;
  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "nntn : writeExpandFuncNameToLDO Begin (%s)", *a3);
  v8 = LDO_AddLabelOnSubstring(*(a1 + 264), "TOKEN", "TOKEN", &v18, &v17, &v19);
  v9 = LH_ERROR_to_VERROR(v8);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  LDOObject_SetU32Attribute(v19, "_TTYPE", 6);
  v9 = LH_ERROR_to_VERROR(v10);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v11 = LDOObject_SetStringAttribute(v19, "TNTAG", a2);
  v9 = LH_ERROR_to_VERROR(v11);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v12 = LDOObject_SetStringAttribute(v19, "TNFUNCTAG", *a3);
  v9 = LH_ERROR_to_VERROR(v12);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v13 = LDOObject_SetStringAttribute(v19, "NORM", "");
  v14 = LH_ERROR_to_VERROR(v13);
  if ((v14 & 0x80000000) == 0 && *(a1 + 418))
  {
    v15 = LDOObject_SetStringAttribute(v19, "LANGMAP", *(a1 + 408));
    v9 = LH_ERROR_to_VERROR(v15);
LABEL_8:
    v14 = v9;
  }

  log_OutText(*(*a1 + 32), *(a1 + 184), 4, 0, "nntn : writeExpandFuncNameToLDO End (%x) ", v14);
  return v14;
}

uint64_t sortExpansionNNTN(uint64_t *a1, uint64_t a2)
{
  v17 = 0;
  v4 = heap_Alloc(*(*a1 + 8), 256);
  *(*(a2 + 16) + 56) = v4;
  v5 = *a1;
  if (!v4)
  {
    log_OutPublic(*(v5 + 32), "FE_NNTN", 37000, 0);
    v14 = NNTNERROR(10);
    v6 = 0;
    goto LABEL_22;
  }

  v6 = heap_Calloc(*(v5 + 8), 1, 8);
  if (!v6)
  {
    log_OutPublic(*(*a1 + 32), "FE_NNTN", 37000, 0);
    v13 = NNTNERROR(10);
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  v8 = *(v7 + 8);
  v9 = *(v7 + 56);
  *v6 = v9;
  v10 = *(a2 + 24);
  v11 = *(**(a2 + 16) + 96);
  v12 = **(v11 + 8);
  if (v12 == 3)
  {
    v13 = applyIgtreeExpansion(a1, v8, *(a2 + 24), v6, &v17);
    if ((v13 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    if (v17)
    {
      goto LABEL_20;
    }

    log_OutText(*(*a1 + 32), "FE_NNTN", 5, 0, "IGtree found NOMATCH. Set user-defined func from domain def file.", 0);
LABEL_17:
    *v6 = *(v11 + 16);
    goto LABEL_20;
  }

  if (v12 == 2)
  {
    goto LABEL_17;
  }

  if (v12 != 1)
  {
    v14 = 0;
    goto LABEL_22;
  }

  if (*(a1 + 219) >= *(a1 + 218))
  {
    cstdlib_strcpy(v9, "DefaultFunc");
    goto LABEL_20;
  }

  if (cstdlib_strcmp(*(v11 + 16), "0"))
  {
    v13 = applyIgtreeExpansion(a1, v8, v10, v6, &v17);
    if ((v13 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    if (v17)
    {
LABEL_20:
      v13 = writeExpandFuncNameToLDO(a1, v10, v6, v8);
      goto LABEL_21;
    }
  }

  v13 = applyNNExpansion(a1, v8, v6);
  if ((v13 & 0x80000000) == 0)
  {
    ++*(a1 + 219);
    goto LABEL_20;
  }

LABEL_21:
  v14 = v13;
LABEL_22:
  v15 = *(*(a2 + 16) + 56);
  if (v15)
  {
    heap_Free(*(*a1 + 8), v15);
    *(*(a2 + 16) + 56) = 0;
  }

  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
  }

  log_OutText(*(*a1 + 32), a1[23], 4, 0, "sortExpansionNNTN_new : DoExpansions End (%x)", v14);
  return v14;
}

uint64_t fe_nntn_tryLoading_NNTN_igModel(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
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
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v15), (Str & 0x80000000) != 0) || (cstdlib_strcat(__s1, "nntnigrules_"), cstdlib_strcat(__s1, __s2), cstdlib_strcat(__s1, "_"), cstdlib_strcat(__s1, v15), Str = brokeraux_ComposeBrokerString(a3, __s1, 1, 1, __s2, 0, 0, v17, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v17, "IGTR", 1031, v14), (Str & 0x80000000) != 0))
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
      log_OutPublic(*(a3 + 32), "FE_NNTN", 37000, 0);
      v10 = 2589990922;
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

uint64_t fe_nntn_IGTR(uint64_t a1, __int16 *a2, const char *a3, char *a4, _DWORD *a5)
{
  v5 = *(a1 + 936);
  __s1 = 0;
  v6 = *(a1 + 944);
  if (!v6)
  {
    log_OutText(*(v5 + 32), "FE_NNTN", 0, 0, "IGTree model for nntn does not exist");
    return 0;
  }

  v12 = 2589990922;
  v13 = heap_Calloc(*(v5 + 8), 1, 8 * *(v6 + 1296) - 8);
  if (v13)
  {
    v14 = v13;
    v15 = *(v6 + 1296);
    if (v15 != 1)
    {
      v16 = a3;
      v17 = a4;
      v18 = a5;
      v19 = (v15 - 1);
      v20 = v13;
      while (1)
      {
        v21 = heap_Calloc(*(v5 + 8), 1, 65);
        *v20 = v21;
        if (!v21)
        {
          break;
        }

        cstdlib_strcpy(v21, "=");
        ++v20;
        if (!--v19)
        {
          v15 = *(v6 + 1296);
          a5 = v18;
          a4 = v17;
          a3 = v16;
          v12 = 2589990922;
          goto LABEL_8;
        }
      }

      log_OutPublic(*(v5 + 32), "FE_NNTN", 37000, 0);
      v12 = 2589990922;
      goto LABEL_67;
    }

LABEL_8:
    __s = *(a1 + 304);
    v49 = *(a1 + 312);
    v22 = *(v6 + 1312);
    v23 = heap_Calloc(*(v5 + 8), 1, 2048);
    if (v23)
    {
      v47 = v15;
      v24 = v15 != 0;
      v25 = v15 - 1;
      if (v25 != 0 && v24)
      {
        v45 = a5;
        __dst = v23;
        v50 = a2;
        v26 = 0;
        while (cstdlib_strcmp(*(v22 + v26), "token"))
        {
          v26 += 8;
          if (8 * v25 == v26)
          {
            v12 = 0;
            goto LABEL_29;
          }
        }

        v27 = *a2;
        if ((v27 & 0x8000000000000000) == 0 && ((v28 = a2[1], v28 > v27) ? (v29 = v28 <= v49) : (v29 = 0), v29))
        {
          v30 = __dst;
          cstdlib_strncpy(__dst, &__s[v27], (v28 - v27));
        }

        else
        {
          v30 = __dst;
          cstdlib_strcpy(__dst, "=");
        }

        v12 = fe_nntn_IGTR_setFeature(v5, v22, v47, 3, v14, v30);
        if ((v12 & 0x80000000) != 0)
        {
LABEL_66:
          heap_Free(*(v5 + 8), __dst);
          goto LABEL_67;
        }

LABEL_29:
        v31 = 0;
        if (v25 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v25;
        }

        v33 = 8 * v32;
        while (cstdlib_strcmp(*(v22 + v31), "lchar"))
        {
          v31 += 8;
          if (v33 == v31)
          {
            goto LABEL_37;
          }
        }

        nntn_feat_character(__s, v50, v49, -1, __dst);
        v12 = fe_nntn_IGTR_setFeature(v5, v22, v47, 2, v14, __dst);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_37:
        v34 = 0;
        while (cstdlib_strcmp(*(v22 + v34), "llchar"))
        {
          v34 += 8;
          if (v33 == v34)
          {
            goto LABEL_42;
          }
        }

        nntn_feat_character(__s, v50, v49, -2, __dst);
        v12 = fe_nntn_IGTR_setFeature(v5, v22, v47, 1, v14, __dst);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_42:
        v35 = 0;
        while (cstdlib_strcmp(*(v22 + v35), "l3char"))
        {
          v35 += 8;
          if (v33 == v35)
          {
            goto LABEL_47;
          }
        }

        nntn_feat_character(__s, v50, v49, -3, __dst);
        v12 = fe_nntn_IGTR_setFeature(v5, v22, v47, 0, v14, __dst);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_47:
        v36 = 0;
        while (cstdlib_strcmp(*(v22 + v36), "rchar"))
        {
          v36 += 8;
          if (v33 == v36)
          {
            goto LABEL_52;
          }
        }

        nntn_feat_character(__s, v50, v49, 1, __dst);
        v12 = fe_nntn_IGTR_setFeature(v5, v22, v47, 4, v14, __dst);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_52:
        v37 = 0;
        while (cstdlib_strcmp(*(v22 + v37), "rrchar"))
        {
          v37 += 8;
          if (v33 == v37)
          {
            goto LABEL_57;
          }
        }

        nntn_feat_character(__s, v50, v49, 2, __dst);
        v12 = fe_nntn_IGTR_setFeature(v5, v22, v47, 5, v14, __dst);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_57:
        v38 = 0;
        while (cstdlib_strcmp(*(v22 + v38), "r3char"))
        {
          v38 += 8;
          if (v33 == v38)
          {
            goto LABEL_62;
          }
        }

        nntn_feat_character(__s, v50, v49, 3, __dst);
        v12 = fe_nntn_IGTR_setFeature(v5, v22, v47, 6, v14, __dst);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

LABEL_62:
        v39 = a4;
        v40 = 0;
        while (cstdlib_strcmp(*(v22 + v40), "tnpattern"))
        {
          v40 += 8;
          if (v33 == v40)
          {
            v41 = __dst;
            goto LABEL_75;
          }
        }

        v41 = __dst;
        cstdlib_strcpy(__dst, a3);
        v12 = fe_nntn_IGTR_setFeature(v5, v22, v47, 7, v14, __dst);
LABEL_75:
        heap_Free(*(v5 + 8), v41);
        a5 = v45;
        a4 = v39;
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        heap_Free(*(v5 + 8), v23);
        v12 = 0;
      }

      igtree_Process(v6, v14, &__s1);
      if (cstdlib_strcmp(__s1, "NOMATCH"))
      {
        cstdlib_strcpy(a4, __s1);
        *a5 = 1;
      }

      else
      {
        log_OutText(*(v5 + 32), "FE_NNTN", 5, 0, "No igtree rule matched", 0);
        *a5 = 0;
      }
    }

    else
    {
      log_OutPublic(*(v5 + 32), "FE_NNTN", 37000, 0);
    }

LABEL_67:
    if (*(v6 + 1296) != 1)
    {
      v42 = (*(v6 + 1296) - 1);
      v43 = v14;
      do
      {
        if (*v43)
        {
          heap_Free(*(v5 + 8), *v43);
          *v43 = 0;
        }

        ++v43;
        --v42;
      }

      while (v42);
    }

    heap_Free(*(v5 + 8), v14);
  }

  return v12;
}

uint64_t fe_nntn_IGTR_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_0[a3];
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

uint64_t fe_nntn_IGTR_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v15 = -1;
  result = fe_nntn_IGTR_isFeatureRequired(a2, a3, a4, &v15);
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
          log_OutPublic(*(a1 + 32), "FE_NNTN", 37000, 0);
          return 2589990922;
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

char *nntn_feat_character(char *__s, __int16 *a2, signed int a3, int a4, char *__dst)
{
  v6 = *a2;
  if (v6 < 0)
  {
    goto LABEL_6;
  }

  v8 = a2[1];
  if (v6 >= v8 || v8 > a3)
  {
    goto LABEL_6;
  }

  v11 = a4;
  if (a4 < 0)
  {
    if (!*a2)
    {
      goto LABEL_6;
    }

    do
    {
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v6);
      v6 = PreviousUtf8Offset;
      v15 = ~v11++ == 0;
    }

    while (!v15 && PreviousUtf8Offset);
    goto LABEL_18;
  }

  if (!a4)
  {
    v6 = 0;
LABEL_21:
    if ((utf8_getUTF8Char(__s, v6, __dst) & 0x80000000) == 0)
    {
      result = cstdlib_strcmp(__dst, "");
      if (result)
      {
        return result;
      }
    }

    goto LABEL_6;
  }

  v6 = v8 - 1;
  if (v8 - 1 != a3)
  {
    do
    {
      NextUtf8Offset = utf8_GetNextUtf8Offset(__s, v6);
      v6 = NextUtf8Offset;
      --v11;
    }

    while (v11 && NextUtf8Offset != a3);
LABEL_18:
    if (!v11)
    {
      goto LABEL_21;
    }
  }

LABEL_6:

  return cstdlib_strcpy(__dst, "=");
}

uint64_t fe_nntn_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2589990913;
  }

  result = 0;
  *a2 = &ITokenizer;
  return result;
}

uint64_t NNTN_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2589990919;
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

uint64_t NNTN_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v5 = 2589990922;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  memset(v50, 0, sizeof(v50));
  if (!a5)
  {
    return 2589990919;
  }

  v41 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v49);
  if ((inited & 0x80000000) == 0)
  {
    inited = InitRsrcFunction(a1, a2, &v48);
    if ((inited & 0x80000000) == 0)
    {
      log_OutText(*(v49 + 32), "FE_NNTN", 4, 0, "nntn : ObjOpen Begin");
      v12 = heap_Calloc(*(v49 + 8), 1, 16);
      if (!v12)
      {
        log_OutPublic(*(v49 + 32), "FE_NNTN", 21000, 0);
LABEL_49:
        v34 = *(v49 + 32);
        v35 = "nntn : ObjOpen End (%x)";
        v39 = v5;
        v36 = 4;
LABEL_50:
        log_OutText(v34, "FE_NNTN", v36, 0, v35, v39);
        return v5;
      }

      v13 = v12;
      *v12 = 0;
      *(v12 + 8) = 0;
      v14 = heap_Calloc(*(v49 + 8), 1, 968);
      if (!v14)
      {
LABEL_48:
        NNTN_loc_ObjClose(v49, v13);
        goto LABEL_49;
      }

      v15 = v14;
      *v13 = v14;
      v40 = v13;
      *(v13 + 8) = 58765;
      v16 = v49;
      *v14 = v49;
      *(v14 + 8) = a3;
      v17 = v48;
      *(v14 + 16) = a4;
      *(v14 + 24) = v17;
      *(v14 + 32) = a1;
      *(v14 + 40) = a2;
      *(v14 + 96) = 0;
      v18 = (v14 + 96);
      *(v14 + 120) = 0;
      v19 = (v14 + 120);
      *(v14 + 104) = 0;
      *(v14 + 128) = 0;
      *(v14 + 152) = 0;
      *(v14 + 160) = 0;
      *(v14 + 176) = 0;
      *(v14 + 184) = "FE_NNTN";
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
      *(v14 + 856) = 0;
      *(v14 + 888) = 0;
      *(v14 + 280) = 32;
      if ((paramc_ParamGetUInt(*(v16 + 40), "tokentninitstrlen", &v44 + 1) & 0x80000000) == 0)
      {
        *(v15 + 280) = WORD2(v44);
      }

      *(v15 + 282) = 5;
      if ((paramc_ParamGetUInt(*(v49 + 40), "tokentnmaxpcreframeblocks", &v44 + 1) & 0x80000000) == 0)
      {
        *(v15 + 282) = WORD2(v44);
      }

      *(v15 + 284) = 20;
      if ((paramc_ParamGetUInt(*(v49 + 40), "tokentnnumframesinblock", &v44 + 1) & 0x80000000) == 0)
      {
        *(v15 + 284) = WORD2(v44);
      }

      v20 = nuance_pcre_ObjOpen(a3, a4, v15 + 136);
      if ((v20 & 0x80000000) != 0)
      {
        v33 = v20;
        log_OutPublic(*(*v15 + 32), *(v15 + 184), 24021, 0);
        v5 = v33;
LABEL_47:
        v13 = v40;
        goto LABEL_48;
      }

      Object = addIdentifier2List(v15, "x");
      if ((Object & 0x80000000) == 0)
      {
        if ((objc_GetObject(*(v49 + 48), "FE_DCTLKP", &v46) & 0x80000000) != 0)
        {
          v38 = 24022;
        }

        else
        {
          v22 = v46;
          *(v15 + 88) = *(v46 + 8);
          *v18 = *(v22 + 16);
          if ((objc_GetObject(*(v49 + 48), "FE_DEPES", &v45) & 0x80000000) == 0)
          {
            v23 = v45;
            *(v15 + 112) = *(v45 + 8);
            *v19 = *(v23 + 16);
            Object = objc_GetObject(*(v49 + 48), "LINGDB", &v47);
            if ((Object & 0x80000000) == 0)
            {
              *(v15 + 64) = *(v47 + 8);
              IDStrings = FEData_ObjOpen_NNTN(a3, a4, v15);
              v13 = v40;
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = FERuntimeData_ObjOpen(v15);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = FEFunctionMap_ObjOpen(v15);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = tokenizer_NNTN_ObjOpen(v15);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = textnormalizer_ObjOpen(v15);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              IDStrings = createIDStrings(v15);
              if ((IDStrings & 0x80000000) != 0)
              {
                goto LABEL_56;
              }

              if (!*(v15 + 336))
              {
                goto LABEL_57;
              }

              v25 = 0;
              do
              {
                log_OutText(*(*v15 + 32), *(v15 + 184), 5, 0, "nntn : identifier=%s", *(*(v15 + 344) + 8 * v25++));
                v26 = *(v15 + 336);
              }

              while (v25 < v26);
              if (!*(v15 + 336))
              {
LABEL_57:
                log_OutPublic(*(*v15 + 32), "FE_NNTN", 24024, 0);
                v5 = 2589990912;
                goto LABEL_48;
              }

              IDStrings = FEData_blockData_loadDataFiles_NNTN(v15, v26, *(v15 + 344));
              if ((IDStrings & 0x80000000) != 0 || (IDStrings = getFECFGInfo(v15), (IDStrings & 0x80000000) != 0))
              {
LABEL_56:
                v5 = IDStrings;
                goto LABEL_48;
              }

              v27 = *v15;
              *(v15 + 848) = *v15;
              *(v15 + 876) = 0;
              if (!*(v15 + 840))
              {
                goto LABEL_35;
              }

              Object = nn_word_lkp_GetInterface(1u, &v41);
              if ((Object & 0x80000000) == 0)
              {
                *(v15 + 888) = v41;
                *(v15 + 896) = safeh_GetNullHandle();
                *(v15 + 904) = v28;
                *(v15 + 912) = safeh_GetNullHandle();
                *(v15 + 920) = v29;
                Object = (*(v41 + 16))(*(v15 + 896), *(v15 + 904), "nntn", a3, a4, v15 + 912);
                if ((Object & 0x80000000) == 0)
                {
                  inited = fi_model_getBrokerString_0(*v15, v50);
                  if ((inited & 0x80000000) == 0)
                  {
                    v30 = fi_init(a3, a4, a1, a2, &v43, 0, v50, "FINN", 1, 0);
                    if ((v30 & 0x80000000) != 0)
                    {
                      v5 = v30;
                      v34 = *(*v15 + 32);
                      v35 = "create FI model failed";
                      goto LABEL_61;
                    }

                    *(v15 + 856) = v43;
                    v27 = *v15;
LABEL_35:
                    *(v15 + 936) = v27;
                    if (!*(v15 + 928))
                    {
LABEL_38:
                      *(v15 + 192) = heap_Alloc;
                      *(v15 + 200) = heap_Calloc;
                      *(v15 + 208) = heap_Realloc;
                      *(v15 + 216) = heap_Free;
                      v32 = OOCAllocator_Con(v15 + 224, (v15 + 192), *(v27 + 8));
                      v5 = LH_ERROR_to_VERROR(v32);
                      if ((v5 & 0x80000000) == 0)
                      {
                        *(v15 + 264) = 0;
                        v13 = v40;
                        if (*(v15 + 840))
                        {
                          v5 = load_lua_code(v15, &v44);
                          if ((v5 & 0x80000000) != 0)
                          {
                            goto LABEL_48;
                          }
                        }

LABEL_55:
                        *a5 = v13;
                        *(a5 + 8) = 58764;
                        goto LABEL_49;
                      }

                      log_OutPublic(*(*v15 + 32), "FE_NNTN", 24024, 0);
                      goto LABEL_47;
                    }

                    v31 = fe_nntn_tryLoading_NNTN_igModel(a3, a4, v27, &v42);
                    if ((v31 & 0x80000000) == 0)
                    {
                      *(v15 + 944) = v42;
                      v27 = *v15;
                      goto LABEL_38;
                    }

                    v5 = v31;
                    v34 = *(*v15 + 32);
                    v35 = "create Igtree model failed";
LABEL_61:
                    v36 = 5;
                    goto LABEL_50;
                  }

                  return inited;
                }
              }
            }

            goto LABEL_46;
          }

          v38 = 24023;
        }

        v13 = v40;
        log_OutPublic(*(*v15 + 32), *(v15 + 184), v38, 0);
        v5 = 0;
        goto LABEL_55;
      }

LABEL_46:
      v5 = Object;
      goto LABEL_47;
    }
  }

  return inited;
}

uint64_t NNTN_ObjClose(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0 || (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {

    return TOKENTNERROR(8);
  }

  else
  {
    v3 = *a1;
    v4 = *(*a1 + 888);
    if (v4)
    {
      (*(v4 + 24))(*(v3 + 912), *(v3 + 920));
      *(v3 + 888) = 0;
    }

    if (*(v3 + 840))
    {
      v5 = *(v3 + 856);
      if (v5)
      {
        fi_deinit(*v3, *(v3 + 24), v5);
        *(v3 + 856) = 0;
      }

      if (*(v3 + 864) || *(v3 + 868))
      {
        *(v3 + 864) = 0;
      }
    }

    if (*(v3 + 928))
    {
      v6 = *(v3 + 944);
      if (v6)
      {
        igtree_Deinit(*v3, v6);
        heap_Free(*(*v3 + 8), *(v3 + 944));
        *(v3 + 944) = 0;
      }
    }

    v7 = *(v3 + 272);
    if (v7)
    {
      OOC_PlacementDeleteObject(v3 + 224, v7);
      *(v3 + 272) = 0;
    }

    OOCAllocator_Des();
    v8 = *(v3 + 184);
    log_OutText(*(*v3 + 32), v8, 4, 0, "nntn : ObjClose Begin");
    v9 = *v3;
    v10 = FEData_blockData_unloadDataFiles(v3);
    NNTN_loc_ObjClose(v9, a1);
    log_OutText(*(v9 + 32), v8, 4, 0, "nntn : ObjClose End (%x)", v10);
    return v10;
  }
}

uint64_t NNTN_ObjReopen(uint64_t *a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  memset(v23, 0, sizeof(v23));
  v19 = 0;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0)
  {
    v22 = 0;
    if ((safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
    {
      v3 = *a1;
      v4 = *(v3 + 344);
      if (v4)
      {
        if (*(v3 + 336))
        {
          v5 = 0;
          do
          {
            heap_Free(*(*v3 + 8), *(*(v3 + 344) + 8 * v5));
            *(*(v3 + 344) + 8 * v5++) = 0;
          }

          while (v5 < *(v3 + 336));
          v4 = *(v3 + 344);
        }

        heap_Free(*(*v3 + 8), v4);
        *(v3 + 344) = 0;
        *(v3 + 336) = 0;
        *(v3 + 352) = 0;
        *(v3 + 608) = 257;
      }

      IDStrings = addIdentifier2List(v3, "x");
      if ((IDStrings & 0x80000000) == 0)
      {
        IDStrings = createIDStrings(v3);
        if ((IDStrings & 0x80000000) == 0)
        {
          if (!*(v3 + 344))
          {
            return 6;
          }

          if (*(v3 + 336))
          {
            v7 = 0;
            do
            {
              log_OutText(*(*v3 + 32), *(v3 + 184), 5, 0, "nntn : identifier=%s", *(*(v3 + 344) + 8 * v7++));
            }

            while (v7 < *(v3 + 336));
          }

          v8 = *(v3 + 888);
          if (v8)
          {
            v22 = *(v3 + 888);
            (*(v8 + 24))(*(v3 + 912), *(v3 + 920));
            *(v3 + 888) = 0;
          }

          if (*(v3 + 840))
          {
            v9 = *(v3 + 856);
            if (v9)
            {
              fi_deinit(*v3, *(v3 + 24), v9);
              *(v3 + 856) = 0;
            }

            if (*(v3 + 864) || *(v3 + 868))
            {
              *(v3 + 864) = 0;
            }
          }

          if (*(v3 + 928))
          {
            v10 = *(v3 + 944);
            if (v10)
            {
              igtree_Deinit(*v3, v10);
              heap_Free(*(*v3 + 8), *(v3 + 944));
              *(v3 + 944) = 0;
            }

            if (*(v3 + 936))
            {
              *(v3 + 936) = 0;
            }
          }

          v11 = *(v3 + 288);
          if (v11)
          {
            heap_Free(*(*v3 + 8), v11);
            *(v3 + 288) = 0;
          }

          IDStrings = FEData_blockData_unloadUnusedDataFiles(v3);
          if ((IDStrings & 0x80000000) == 0)
          {
            IDStrings = getFECFGInfo(v3);
            if ((IDStrings & 0x80000000) == 0)
            {
              if (!*(v3 + 336))
              {
                log_OutPublic(*(*v3 + 32), "FE_NNTN", 24024, 0);
                return 2589990912;
              }

              DataFiles_NNTN = FEData_blockData_loadDataFiles_NNTN(v3, *(v3 + 336), *(v3 + 344));
              if ((DataFiles_NNTN & 0x80000000) != 0)
              {
                goto LABEL_50;
              }

              v13 = *v3;
              *(v3 + 848) = *v3;
              if (!*(v3 + 840))
              {
                goto LABEL_40;
              }

              IDStrings = nn_word_lkp_GetInterface(1u, &v22);
              if ((IDStrings & 0x80000000) == 0)
              {
                *(v3 + 888) = v22;
                *(v3 + 896) = safeh_GetNullHandle();
                *(v3 + 904) = v14;
                *(v3 + 912) = safeh_GetNullHandle();
                *(v3 + 920) = v15;
                IDStrings = (*(v22 + 16))(*(v3 + 896), *(v3 + 904), "nntn", *(v3 + 8), *(v3 + 16), v3 + 912);
                if ((IDStrings & 0x80000000) == 0)
                {
                  BrokerString_0 = fi_model_getBrokerString_0(*v3, v23);
                  if ((BrokerString_0 & 0x80000000) != 0)
                  {
                    return BrokerString_0;
                  }

                  DataFiles_NNTN = fi_init(*(v3 + 8), *(v3 + 16), *(v3 + 32), *(v3 + 40), &v21, 0, v23, "FINN", 1, 0);
                  if ((DataFiles_NNTN & 0x80000000) != 0)
                  {
                    log_OutText(*(*v3 + 32), "FE_NNTN", 5, 0, "create FI model failed");
                    return DataFiles_NNTN;
                  }

                  *(v3 + 856) = v21;
                  v13 = *v3;
LABEL_40:
                  *(v3 + 936) = v13;
                  if (*(v3 + 928))
                  {
                    DataFiles_NNTN = fe_nntn_tryLoading_NNTN_igModel(*(v3 + 8), *(v3 + 16), v13, &v20);
                    if ((DataFiles_NNTN & 0x80000000) != 0)
                    {
                      log_OutText(*(*v3 + 32), "FE_NNTN", 5, 0, "create Igtree model failed");
                      return DataFiles_NNTN;
                    }

                    *(v3 + 944) = v20;
                  }

                  if (*(v3 + 840))
                  {
                    DataFiles_NNTN = load_lua_code(v3, &v19);
                    if ((DataFiles_NNTN & 0x80000000) != 0)
                    {
LABEL_50:
                      v18 = *(v3 + 272);
                      if (v18)
                      {
                        OOC_PlacementDeleteObject(v3 + 224, v18);
                        *(v3 + 272) = 0;
                      }

                      OOCAllocator_Des();
                    }
                  }

                  return DataFiles_NNTN;
                }
              }
            }
          }
        }
      }

      DataFiles_NNTN = IDStrings;
      goto LABEL_50;
    }
  }

  return TOKENTNERROR(8);
}

uint64_t NNTN_ProcessStart(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0 || (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {

    return TOKENTNERROR(8);
  }

  else
  {
    v3 = *a1;
    log_OutText(*(**a1 + 32), *(*a1 + 184), 4, 0, "nntn : ProcessStart Begin");
    if (*(v3 + 336))
    {
      v4 = nuance_pcre_Init(*(v3 + 136), *(v3 + 144), *(v3 + 282), *(v3 + 284));
      if ((v4 & 0x80000000) != 0)
      {
        log_OutPublic(*(*v3 + 32), *(v3 + 184), 24051, 0);
      }

      log_OutText(*(*v3 + 32), *(v3 + 184), 4, 0, "nntn : ProcessStart End (%x)", v4);
    }

    else
    {
      log_OutPublic(*(*v3 + 32), "FE_NNTN", 24024, 0);
      return 2589990912;
    }

    return v4;
  }
}

uint64_t NNTN_Process(uint64_t *a1, int a2, void *a3, int a4, _DWORD *a5)
{
  v29 = 0;
  v28 = 0;
  v27 = 0;
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) == 0 && (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) == 0)
  {
    v9 = *a1;
    log_OutText((*v9)[4], v9[23], 4, 0, "NNTN : Process Begin");
    v9[9] = a3;
    *(v9 + 20) = a4;
    *(v9 + 219) = 0;
    *(v9 + 137) = log_GetLogLevel((*v9)[4]) > 4;
    v9[33] = 0;
    v10 = LingDBHasSentence(v9[8], v9[9], v9[10], &v29);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    if (!v29)
    {
      goto LABEL_48;
    }

    inited = initLDO((v9 + 28), v9 + 33);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = importFromLingDB(*v9, v9[8], v9[9], v9[10], v9 + 33);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v10 = 2589990922;
    v12 = LDO_ComputeText(v9[33], &v28);
    if ((LH_ERROR_to_VERROR(v12) & 0x80000000) != 0)
    {
      goto LABEL_54;
    }

    v9[38] = LHString_BorrowCPtr(v28);
    *(v9 + 156) = LHString_Length(v28);
    log_OutText((*v9)[4], v9[23], 5, 0, "<LOGFE> processing sentence : _%s_", v9[38]);
    v13 = heap_Calloc((*v9)[1], 1, *(v9 + 156) + 1);
    v9[69] = v13;
    if (!v13)
    {
      goto LABEL_54;
    }

    *(v9 + 157) = 1;
    if (*(v9 + 156))
    {
      v14 = 0;
      while (utf8_strchr(g_szSpace, v9[38] + v14))
      {
        v14 += utf8_determineUTF8CharLength(*(v9[38] + v14));
        v15 = *(v9 + 156);
        if (v15 <= v14)
        {
          goto LABEL_18;
        }
      }

      v15 = *(v9 + 156);
LABEL_18:
      if (v15 > v14)
      {
        do
        {
          v14 = v14;
          if (utf8_strchr(g_szSpace, v9[38] + v14))
          {
            ++*(v9 + 157);
            for (i = *(v9[38] + v14); ; i = *(v9[38] + v14))
            {
              v14 += utf8_determineUTF8CharLength(i);
              if (*(v9 + 156) <= v14 || !utf8_strchr(g_szSpace, v9[38] + v14))
              {
                break;
              }
            }
          }

          else
          {
            LOWORD(v14) = v14 + utf8_determineUTF8CharLength(*(v9[38] + v14));
          }
        }

        while (*(v9 + 156) > v14);
      }
    }

    inited = initStrRes(v9, (v9 + 49));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v9, (v9 + 51));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v9, (v9 + 61));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v9, (v9 + 70));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v9, (v9 + 72));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v9, (v9 + 74));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initStrRes(v9, (v9 + 63));
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initAlignmentData(v9);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initMatchList(v9);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    inited = initSolutionList(v9);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v18 = heap_Calloc((*v9)[1], 1, 40);
    v9[40] = v18;
    v19 = *v9;
    if (v18)
    {
      v20 = heap_Calloc(*(v19 + 8), 1, 48);
      v9[41] = v20;
      if (v20)
      {
        if (*(v9 + 238) == 1)
        {
          inited = updateLDOTreeNode_CHN(v9, &v27);
          if ((inited & 0x80000000) != 0)
          {
            goto LABEL_53;
          }

          if (!v27)
          {
            *a5 = 1;
            goto LABEL_53;
          }
        }

        inited = nntn_AllInOneLoop(v9);
        if ((inited & 0x80000000) == 0)
        {
          v21 = v9[34];
          if (!v21)
          {
            log_OutText((*v9)[4], v9[23], 0, 0, "NNTN : error - pLuaVMLDO is NULL");
            v10 = 2589990918;
            goto LABEL_54;
          }

          v22 = LuaVMLDO_RunFunction(v21, "run", v9[33]);
          inited = LH_ERROR_to_VERROR(v22);
          if ((inited & 0x80000000) == 0)
          {
            if (*(v9 + 137) != 1 || (inited = dumpTokenRecordsInLingDB(v9, "At End of Processing", 1), (inited & 0x80000000) == 0))
            {
              inited = exportToLingDB(*v9, v9[8], v9[9], v9[10], (v9 + 28), v9[33], 1, 1);
              if ((inited & 0x80000000) == 0)
              {
                v10 = replaceBasicTokensWithTokenIntTnInLingDB(*v9, v9[8], v9[9], v9[10], v9[33], v9[23]);
                if ((v10 & 0x80000000) != 0)
                {
LABEL_54:
                  if (v28)
                  {
                    OOC_PlacementDeleteObject((v9 + 28), v28);
                    v28 = 0;
                  }

                  v23 = v9[33];
                  if (v23)
                  {
                    deinitLDO((v9 + 28), v23);
                    v9[33] = 0;
                  }

                  v24 = v9[69];
                  if (v24)
                  {
                    heap_Free((*v9)[1], v24);
                    v9[69] = 0;
                  }

                  clearStrRes(*v9, (v9 + 49));
                  clearStrRes(*v9, (v9 + 51));
                  clearStrRes(*v9, (v9 + 61));
                  clearStrRes(*v9, (v9 + 70));
                  clearStrRes(*v9, (v9 + 72));
                  clearStrRes(*v9, (v9 + 74));
                  clearStrRes(*v9, (v9 + 63));
                  freeAlignmentData(v9);
                  freeMatchList(v9);
                  freeSolutionList(v9);
                  v25 = v9[40];
                  if (v25)
                  {
                    heap_Free((*v9)[1], v25);
                    v9[40] = 0;
                  }

                  v26 = v9[41];
                  if (v26)
                  {
                    heap_Free((*v9)[1], v26);
                    v9[41] = 0;
                  }

                  log_OutText((*v9)[4], v9[23], 4, 0, "nntn : Process End (%x)", v10);
                  return v10;
                }

LABEL_48:
                *a5 = 1;
                goto LABEL_54;
              }
            }
          }
        }

LABEL_53:
        v10 = inited;
        goto LABEL_54;
      }

      v19 = *v9;
    }

    log_OutPublic(*(v19 + 32), v9[23], 24048, 0);
    goto LABEL_54;
  }

  return TOKENTNERROR(8);
}

uint64_t NNTN_ProcessEnd(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 58764, 16) & 0x80000000) != 0 || (safeh_HandleCheck(*a1, a1[1], 58765, 968) & 0x80000000) != 0)
  {

    return TOKENTNERROR(8);
  }

  else
  {
    v3 = *a1;
    log_OutText(*(*v3 + 32), *(v3 + 184), 4, 0, "nntn : ProcessEnd Begin");
    v4 = nuance_pcre_DeInit(*(v3 + 136), *(v3 + 144));
    log_OutText(*(*v3 + 32), *(v3 + 184), 4, 0, "nntn : ProcessEnd End (%x)", v4);
    return 0;
  }
}

uint64_t addIdentifier2List(uint64_t a1, char *__s2)
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
      v13 = 2589990922;
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

uint64_t createIDStrings(_BYTE *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  __s = 0;
  *__s2 = 0u;
  v19 = 0u;
  *__s1 = 0u;
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
        __s1[v3] = v6;
        __s2[v3] = v6;
        v3 = ++v4;
      }

      while (cstdlib_strlen(v5) > v4);
    }

    strcpy(&__s2[2], "x");
    __s1[3] = 0;
    if (!cstdlib_strcmp(__s1, "cah"))
    {
      __s2[1] = 110;
    }

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

        if (cstdlib_strlen(__s1) >= 1)
        {
          v11 = 0;
          do
          {
            __s1[v11] = ssft_tolower(__s1[v11]);
            ++v11;
          }

          while (cstdlib_strlen(__s1) > v11);
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

        result = addIdentifier2List(a1, __s2);
        if ((result & 0x80000000) == 0)
        {
          a1[352] = a1[336];
          result = addIdentifier2List(a1, __s1);
          if ((result & 0x80000000) == 0)
          {
            return addIdentifier2List(a1, v14);
          }
        }
      }

      else
      {
        return 2589990912;
      }
    }
  }

  return result;
}

uint64_t getFECFGInfo(uint64_t a1)
{
  v2 = 2589991940;
  v23 = -1;
  __c_1 = 0;
  __c = 0;
  v3 = 2589990912;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_g2p", &__c_1, &v23, &__c) & 0x80000000) != 0)
  {
    return v3;
  }

  if (v23 == 1 && __c_1 != 0)
  {
    v5 = cstdlib_strchr(*__c_1, __c);
    if (v5)
    {
      *v5 = 0;
    }

    *(a1 + 608) = cstdlib_atoi(*__c_1);
  }

  v23 = -1;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nrpart_tn", &__c_1, &v23, &__c) & 0x80000000) != 0)
  {
    return v3;
  }

  if (v23 == 1 && __c_1)
  {
    v6 = cstdlib_strchr(*__c_1, __c);
    if (v6)
    {
      *v6 = 0;
    }

    *(a1 + 609) = cstdlib_atoi(*__c_1);
  }

  v23 = -1;
  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_nn_step", &__c_1, &v23, &__c) & 0x80000000) == 0)
  {
    v7 = v23;
    if (v23)
    {
      *(a1 + 864) = 0;
      if (v7 == 1 && __c_1)
      {
        v8 = cstdlib_strchr(*__c_1, __c);
        if (v8)
        {
          *v8 = 0;
        }

        *(a1 + 864) = LH_atou(*__c_1);
      }

      v23 = -1;
      if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_nn_vect", &__c_1, &v23, &__c) & 0x80000000) == 0)
      {
        v9 = v23;
        if (v23)
        {
          *(a1 + 868) = 0;
          if (v9 == 1 && __c_1)
          {
            v10 = cstdlib_strchr(*__c_1, __c);
            if (v10)
            {
              *v10 = 0;
            }

            *(a1 + 868) = LH_atou(*__c_1);
          }

          v23 = -1;
          if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_nn_max", &__c_1, &v23, &__c) & 0x80000000) == 0)
          {
            v11 = v23;
            if (v23)
            {
              *(a1 + 872) = 0;
              if (v11 == 1 && __c_1)
              {
                v12 = cstdlib_strchr(*__c_1, __c);
                if (v12)
                {
                  *v12 = 0;
                }

                *(a1 + 872) = LH_atou(*__c_1);
              }

              *(a1 + 880) = 0;
              v23 = -1;
              if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_window_option", &__c_1, &v23, &__c) & 0x80000000) != 0 || (v13 = v23) == 0)
              {
                log_OutText(*(*a1 + 32), "FE_NNTN", 5, 0, "Load nntn_window_option from CFG failed, use default 0.");
                v13 = v23;
              }

              if (v13 == 1 && __c_1)
              {
                v14 = cstdlib_strchr(*__c_1, __c);
                if (v14)
                {
                  *v14 = 0;
                }

                *(a1 + 880) = LH_atou(*__c_1);
              }

              v23 = -1;
              if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_use_NNTN", &__c_1, &v23, &__c) & 0x80000000) == 0 && v23)
              {
                if (v23 == 1 && __c_1)
                {
                  v15 = cstdlib_strchr(*__c_1, __c);
                  if (v15)
                  {
                    *v15 = 0;
                  }

                  if (!cstdlib_strcmp(*__c_1, "yes"))
                  {
                    *(a1 + 840) = 1;
                  }
                }

                v23 = -1;
                if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_use_NNTN_IGTree", &__c_1, &v23, &__c) & 0x80000000) == 0 && v23)
                {
                  if (v23 == 1 && __c_1)
                  {
                    v16 = cstdlib_strchr(*__c_1, __c);
                    if (v16)
                    {
                      *v16 = 0;
                    }

                    if (!cstdlib_strcmp(*__c_1, "yes"))
                    {
                      *(a1 + 928) = 1;
                    }
                  }

                  v23 = -1;
                  if (((*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_one_char_per_node", &__c_1, &v23, &__c) & 0x80000000) == 0 && v23)
                  {
                    if (v23 == 1 && __c_1)
                    {
                      v17 = cstdlib_strchr(*__c_1, __c);
                      if (v17)
                      {
                        *v17 = 0;
                      }

                      if (!cstdlib_strcmp(*__c_1, "yes"))
                      {
                        *(a1 + 952) = 1;
                      }
                    }

                    v23 = -1;
                    v18 = (*(*(a1 + 88) + 96))(*(a1 + 96), *(a1 + 104), "fecfg", "nntn_feat_focus", &__c_1, &v23, &__c);
                    if ((v18 & 0x80000000) == 0)
                    {
                      if (v23)
                      {
                        v3 = v18;
                        if (v23 == 1 && __c_1)
                        {
                          v19 = cstdlib_strchr(*__c_1, __c);
                          if (v19)
                          {
                            *v19 = 0;
                          }

                          if (!cstdlib_strcmp(*__c_1, "yes"))
                          {
                            *(a1 + 956) = 1;
                          }
                        }

                        return v3;
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

  return v2;
}

uint64_t fi_model_getBrokerString_0(uint64_t a1, _BYTE *a2)
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
      cstdlib_strcat(__s1, "nntn_");
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v5);
      return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t load_lua_code(uint64_t *a1, _DWORD *a2)
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
    if ((v8 & 0x80000000) != 0 || (v9 = PNEW_LuaVMLDO_Con((a1 + 28), (a1 + 28), a1[1], a1[2], "FE_NNTN", a1 + 34), v8 = LH_ERROR_to_VERROR(v9), (v8 & 0x80000000) != 0))
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

uint64_t NNTN_loc_ObjClose(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    log_OutText(*(result + 32), "FE_NNTN", 4, 0, "nntn : loc ObjClose Begin");
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
      v8 = tokenizer_NNTN_ObjClose(*a2);
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

      v13 = FEData_ObjClose_NNTN(v7);
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

      v19 = *(v7 + 888);
      if (v19)
      {
        v6 = (*(v19 + 24))(*(v7 + 912), *(v7 + 920));
        *(v7 + 888) = 0;
      }

      if (*(v7 + 840))
      {
        v20 = *(v7 + 856);
        if (v20)
        {
          v6 = fi_deinit(*v7, *(v7 + 24), v20);
          *(v7 + 856) = 0;
        }

        if (*(v7 + 864) || *(v7 + 868))
        {
          *(v7 + 864) = 0;
        }
      }

      if (*(v7 + 928))
      {
        v21 = *(v7 + 944);
        if (v21)
        {
          igtree_Deinit(*v7, v21);
          heap_Free(*(*v7 + 8), *(v7 + 944));
          *(v7 + 944) = 0;
        }

        if (*(v7 + 936))
        {
          *(v7 + 936) = 0;
        }
      }

      v22 = *(v7 + 272);
      if (v22)
      {
        OOC_PlacementDeleteObject(v7 + 224, v22);
        *(v7 + 272) = 0;
      }

      OOCAllocator_Des();
      heap_Free(*(v3 + 8), v7);
    }

    heap_Free(*(v3 + 8), a2);
    return log_OutText(*(v3 + 32), "FE_NNTN", 4, 0, "nntn : loc ObjClose End (%x)", v6);
  }

  return result;
}

uint64_t setDomainsOnSentence_NNTN(uint64_t *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  if (a1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : setDomainsOnSentence_NNTN Begin");
    DomainDefBlockInfo = dumpTokenRecordsInLingDB(a1, "TRACE", 1);
    if ((DomainDefBlockInfo & 0x80000000) == 0)
    {
      FEData_blockData_getDomains2SearchIn(a1, *(a1 + 168), a1[43], v46, &v44, 0);
      log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : %d block(s) to search in", v44);
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

              if (*(*(v4 + 40) + 16 * v8 + 8))
              {
                v11 = "";
              }

              else
              {
                v11 = "(VIRTUAL)";
              }

              log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : domain[%d,%d,%s,type=%d] marker %s%s %s", i, v6++, *v4, *(v4 + 8), v9, v10, v11);
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

        log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : setDomainsOnSentence_NNTN End (%x)", DomainDefBlockInfo);
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

    return NNTNERROR(7);
  }
}

uint64_t mergeDomainsOnSentence_NNTN(void *a1)
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
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : mergeDomainsOnSentence_NNTN Begin");
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
                    log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : Remove duplicate domain %d,%d RANGE %d,%d ?", 1, v8, v9, v10);
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
          if (*(*(v20 + 40) + 16 * v13[6] + 8) && *(v26 + 2) == 1)
          {
            v14 = v26[1];
            log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : Modify domain %s RANGE %d,%d ?", (*(v13 + 6) + *v13), *v26, v14);
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
                      log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : Modify domain %s RANGE %d,%d -> %d %d (merge with %s)", (*(v13 + 6) + *v13), *v26, v26[1], *v26, v14, (*(v17 + 6) + *v17));
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
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "nntn : mergeDomainsOnSentence_NNTN End (%x)", v7);
    return v7;
  }

  else
  {

    return NNTNERROR(7);
  }
}

uint64_t stat_mnctn_seq2rule(uint64_t a1, uint64_t *a2, __int16 *a3, char *a4)
{
  v8 = *a2;
  v44 = 0;
  v42 = 0;
  v9 = a2[5];
  v10 = (*(v9 + 40))(a2[8], a2[9], &v44);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = heap_Calloc(*(v8 + 8), 1, 8);
  if (!v11)
  {
    v22 = 2589990922;
    log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0);
    return v22;
  }

  v12 = v11;
  v13 = heap_Calloc(*(v8 + 8), 1, 2048);
  if (!v13)
  {
    v22 = 2589990922;
    log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0);
    v23 = *(v8 + 8);
    v24 = v12;
    goto LABEL_51;
  }

  v14 = v13;
  v15 = *(a2 + 5);
  if (*(a1 + 956) == 1)
  {
    ++v15;
  }

  v16 = heap_Alloc(*(v8 + 8), 4 * (v15 * *(a2 + 4)));
  v43 = v16;
  if (!v16)
  {
    v22 = 2589990922;
    log_OutPublic(*(v8 + 32), "FE_NNTN", 37000, 0);
    goto LABEL_50;
  }

  v17 = *a3;
  __dst = a4;
  v40 = v16;
  if (*(a2 + 8) == 1)
  {
    v18 = *(a2 + 4);
    v19 = a3[1] - v17;
    if (v18 == v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18 - v19;
    }

    v36 = ((v20 & 1) + v20) >> 1;
    v21 = -v36;
  }

  else
  {
    v19 = a3[1] - v17;
    LOWORD(v36) = 7;
    LOWORD(v21) = -7;
  }

  cstdlib_strncpy(v14, (*(a1 + 304) + v17), (v19 + 1));
  v25 = 0;
  v39 = 0;
  v26 = 0;
  v14[a3[1] - *a3] = 0;
LABEL_18:
  v27 = v25;
  while (1)
  {
    v28 = *(a2 + 4);
    if (v28 <= v27)
    {
      break;
    }

    if ((v21 & 0x8000) != 0)
    {
      nnGetChar(*(a1 + 304), a3, v21, v12);
      LOWORD(v21) = v21 + 1;
      if (cstdlib_strcmp(v12, ""))
      {
        v41 = v26;
LABEL_35:
        v32 = *(a1 + 956);
        v33 = 0.0;
        goto LABEL_36;
      }
    }

    else
    {
      v41 = v26;
      if (v39)
      {
        if (v36 < 1)
        {
          cstdlib_strcpy(v12, "</s>");
        }

        else
        {
          nnGetChar(*(a1 + 304), a3, (8 - v36), v12);
          if (!cstdlib_strcmp(v12, ""))
          {
            cstdlib_strcpy(v12, "</s>");
          }

          LOWORD(v36) = v36 - 1;
        }

        goto LABEL_35;
      }

      v38 = v8;
      if ((v26 & 0x8000) == 0)
      {
        v29 = v26;
        if (v26)
        {
          NextUtf8Offset = 0;
          while (NextUtf8Offset != cstdlib_strlen(v14))
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(v14, NextUtf8Offset);
            v31 = v29--;
            if (v31 <= 1)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
          NextUtf8Offset = 0;
LABEL_31:
          if ((utf8_getUTF8Char(v14, NextUtf8Offset, v12) & 0x80000000) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      cstdlib_strcpy(v12, "");
LABEL_33:
      v26 = v41 + 1;
      v39 = 1;
      v8 = v38;
      if (cstdlib_strcmp(v12, ""))
      {
        ++v41;
        v39 = 0;
        v32 = *(a1 + 956);
        v33 = 1.0;
LABEL_36:
        if (v32 == 1)
        {
          *v40 = v33;
          v34 = v40 + 1;
        }

        else
        {
          v34 = v40;
        }

        if (((*(v9 + 56))(a2[8], a2[9], v12, v34) & 0x1FFF) == 0x14)
        {
          log_OutText(*(v8 + 32), "FE_NNTN", 5, 0, "No embedding vector for character %s . Fall back!", v12);
          cstdlib_strcpy(v12, "</s>");
          (*(v9 + 56))(a2[8], a2[9], v12, v34);
        }

        v25 = v27 + 1;
        v40 = &v34[v44];
        v26 = v41;
        goto LABEL_18;
      }
    }
  }

  v22 = fi_predict(a2[1], &v43, v28, &v42);
  if ((v22 & 0x80000000) != 0)
  {
    log_OutText(*(v8 + 32), "FE_NNTN", 5, 0, "FIhmogrph Prediction Failed", 0);
  }

  else
  {
    cstdlib_strcpy(__dst, *v42);
  }

LABEL_50:
  heap_Free(*(v8 + 8), v12);
  v23 = *(v8 + 8);
  v24 = v14;
LABEL_51:
  heap_Free(v23, v24);
  return v22;
}

uint64_t nnGetChar(char *__s, __int16 *a2, int a3, char *__dst)
{
  NextUtf8Offset = *a2;
  if ((NextUtf8Offset & 0x80000000) == 0)
  {
    v6 = a2[1];
    if (NextUtf8Offset < v6)
    {
      v7 = a3;
      if ((a3 & 0x80000000) == 0)
      {
        if (a3)
        {
          NextUtf8Offset = v6 - 1;
          while (NextUtf8Offset != cstdlib_strlen(__s))
          {
            NextUtf8Offset = utf8_GetNextUtf8Offset(__s, NextUtf8Offset);
            v9 = v7--;
            if (v9 <= 1)
            {
              goto LABEL_15;
            }
          }

          goto LABEL_16;
        }

        NextUtf8Offset = 0;
LABEL_15:
        result = utf8_getUTF8Char(__s, NextUtf8Offset, __dst);
        if ((result & 0x80000000) == 0)
        {
          return result;
        }

        goto LABEL_16;
      }

      if (*a2)
      {
        do
        {
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, NextUtf8Offset);
          NextUtf8Offset = PreviousUtf8Offset;
          v11 = ~v7 == 0;
          LOWORD(v7) = v7 + 1;
        }

        while (!v11 && PreviousUtf8Offset);
        if (!v7)
        {
          goto LABEL_15;
        }
      }
    }
  }

LABEL_16:

  return cstdlib_strcpy(__dst, "");
}

uint64_t FEData_ObjOpen_NNTN(uint64_t a1, uint64_t a2, uint64_t *a3)
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

    FEData_ObjClose_NNTN(a3);
    goto LABEL_8;
  }

  log_OutPublic(*(*a3 + 32), a3[23], 24048, 0);

  return NNTNERROR(10);
}

uint64_t FEData_ObjClose_NNTN(uint64_t *a1)
{
  v1 = a1[19];
  if (v1)
  {
    log_OutText(*(*a1 + 32), a1[23], 4, 0, "fe_data : ObjClose Begin");
    v3 = FEData_functionData_ObjClose(a1);
    LODWORD(v4) = v3 & (v3 >> 31);
    v5 = FEData_blockData_ObjClose_NNTN(a1);
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

    return NNTNERROR(8);
  }
}

uint64_t FEData_blockData_ObjClose_NNTN(uint64_t *a1)
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

uint64_t FEData_blockData_newGetPriorityList_NNTN(void *a1, unsigned int a2, unsigned int a3, void *a4)
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
        *a4 = *(v5 + 40) + 16 * a3;
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

uint64_t FEData_blockData_getTokenAndCheckData_NNTN(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5)
{
  v7 = *(a1[19] + 16);
  if (v7)
  {
    v8 = *(*(*(*(v7 + 136) + 8) + 8 * *(*a2 + 2)) + 8);
    v9 = *(v8 + 48) + 32 * *(*a2 + 4);
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

uint64_t FEData_blockData_getTokenData_NNTN(void *a1, uint64_t a2, void *a3)
{
  v5 = *(a1[19] + 16);
  if (v5)
  {
    v6 = *(*(*(*(v5 + 136) + 8) + 8 * *(*a2 + 2)) + 8);
    *a3 = *(v6 + 24) + *(*(v6 + 48) + 32 * *(*a2 + 4) + 4);
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, v3);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndExpansionData_NNTN(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5)
{
  v7 = *(a1[19] + 16);
  if (v7)
  {
    v8 = *(*(*(*(v7 + 136) + 8) + 8 * *(*a2 + 2)) + 8);
    v9 = *(v8 + 48) + 32 * *(*a2 + 4);
    *a3 = *(v8 + 24) + *(v9 + 4);
    v10 = *(v9 + 26);
    *a4 = v10;
    if (v10)
    {
      v11 = *(v9 + 16);
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

uint64_t FEData_blockData_getTokenAndExpansionPathDetail(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v7 = *(a1[19] + 16);
  if (v7)
  {
    v8 = *(*(*(*(v7 + 136) + 8) + 8 * *(*a2 + 2)) + 8);
    *a3 = *(v8 + 24) + *(*(v8 + 48) + 32 * *(*a2 + 4) + 4);
    *a4 = a2[1];
    *a5 = a2[2];
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), a1[23], 24049, 0, a5, v5);

    return FEDATA_ERROR(7);
  }
}

uint64_t FEData_blockData_getTokenAndRegexData_NNTN(void *a1, uint64_t a2, void *a3, _WORD *a4, void *a5, _DWORD *a6)
{
  v8 = *(a1[19] + 16);
  if (v8)
  {
    v9 = *(*(*(*(v8 + 136) + 8) + 8 * *(*a2 + 2)) + 8);
    v10 = v9[6] + 32 * *(*a2 + 4);
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

uint64_t FEData_blockData_loadDataFiles_NNTN(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = a1[19];
  v68 = 0;
  memset(v77, 0, sizeof(v77));
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  *__dst = 0u;
  v70 = 0u;
  v67 = 0;
  __s2 = 0;
  __src = 0;
  v64 = 0;
  v5 = *(v4 + 16);
  if (!v5)
  {
    v6 = *(*a1 + 32);
    v7 = a1[23];
    v8 = 24049;
    goto LABEL_5;
  }

  if (!*v5)
  {
    v11 = *(a1 + 352);
    v12 = *(a1 + 168);
    v13 = *a1;
    if (v11 > v12)
    {
      log_OutPublic(*(v13 + 32), a1[23], 24056, "%s%d%s%d", "invalid language identifier index", v11, "max=", v12);
      v9 = 0;
      goto LABEL_6;
    }

    if ((paramc_ParamGetStr(*(v13 + 40), "langcode", &v64) & 0x80000000) != 0)
    {
      v64 = "";
    }

    if ((paramc_ParamGetStr(*(*a1 + 40), "fecfg", &__s2) & 0x80000000) == 0)
    {
      cstdlib_strcpy(__dst, "nntokentn/");
      cstdlib_strcat(__dst, *(a3 + 8 * *(a1 + 352)));
      cstdlib_strcat(__dst, "/");
      cstdlib_strcat(__dst, __s2);
      v15 = brokeraux_ComposeBrokerString(*a1, __dst, 1, 1, v64, 0, 0, v77, 0x80uLL);
      if (v15 < 0)
      {
        return FEDATA_ERROR(v15);
      }

      RsrcHandleForThisApi = getRsrcHandleForThisApi(*a1, a1[1], a1[2], a1[4]);
      if ((ssftriff_reader_ObjOpen(RsrcHandleForThisApi, v17, 2, v77, "TOKN", 1031, &v68) & 0x80000000) == 0)
      {
LABEL_18:
        Chunk = ssftriff_reader_FindChunk(v68, "CFIG", 0, &v67, &__src);
        v21 = Chunk & 0x1FFF;
        if ((Chunk & 0x80000000) == 0 || v21 == 20)
        {
          if (v21 == 20)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
          }

          else
          {
            v63 = 0;
            cstdlib_memcpy(&v63 + 2, __src, 2uLL);
            v23 = HIWORD(v63);
            if (HIWORD(v63))
            {
              if (HIWORD(v63) == 3)
              {
                cstdlib_memcpy(&v63, __src + 2, 2uLL);
                v23 = 0;
                v22 = v63 == 1;
                v24 = 1;
              }

              else
              {
                cstdlib_memcpy(&v63, __src + 2, 2uLL);
                v22 = v63 == 1;
                if (HIWORD(v63) < 2u)
                {
                  v23 = 0;
                  v24 = 0;
                }

                else
                {
                  cstdlib_memcpy(&v63, __src + 4, 2uLL);
                  v24 = 0;
                  v23 = v63 == 1;
                }
              }
            }

            else
            {
              v22 = 0;
              v24 = 0;
            }

            Chunk = ssftriff_reader_CloseChunk(v68);
            if ((Chunk & 0x80000000) != 0)
            {
              goto LABEL_106;
            }
          }

          Chunk = ssftriff_reader_FindChunk(v68, "FILE", 0, &v67, &__src);
          if ((Chunk & 0x80000000) == 0)
          {
            cstdlib_memcpy(v5, __src, 2uLL);
            Chunk = ssftriff_reader_CloseChunk(v68);
            if ((Chunk & 0x80000000) == 0)
            {
              cstdlib_strcpy(v5 + 2, v77);
              DataBlockFromFileRefCnt = readDataBlockFromFileRefCnt(a1, v68, v22, v23, v24, v77);
              if ((DataBlockFromFileRefCnt & 0x80000000) == 0)
              {
                ssftriff_reader_ObjClose(v68);
                v68 = 0;
                v26 = *v5;
                if (*v5)
                {
                  v62 = DataBlockFromFileRefCnt;
                  v27 = 0;
                  v28 = 0;
                  do
                  {
                    v29 = *(*(*(v5 + 17) + 8) + 8 * v27);
                    if (v29)
                    {
                      v30 = *(v29 + 16);
                      if (v30)
                      {
                        v31 = 0;
                        while (v31 < *(v30 + 24))
                        {
                          v32 = (*(v30 + 16) + 72 * v31);
                          if (*(v32 + 16) == 1)
                          {
                            v33 = a1[36];
                            if (v33)
                            {
                              if (cstdlib_strcmp(v33, (*(v32 + 6) + *v32)))
                              {
                                log_OutPublic(*(*a1 + 32), a1[23], 24053, "%s%s%s%s");
                                goto LABEL_105;
                              }
                            }

                            else
                            {
                              v34 = *(*a1 + 8);
                              v35 = cstdlib_strlen((*(v32 + 6) + *v32));
                              v36 = heap_Calloc(v34, 1, (v35 + 1));
                              a1[36] = v36;
                              if (!v36)
                              {
                                log_OutPublic(*(*a1 + 32), a1[23], 24048, 0);
                                v15 = 10;
                                return FEDATA_ERROR(v15);
                              }

                              cstdlib_strcpy(v36, (*(v32 + 6) + *v32));
                              *(a1 + 148) = v27;
                              *(a1 + 149) = v31;
                            }
                          }

                          if (*(v32 + 2) == 1)
                          {
                            v37 = *(v29 + 16);
                            if (*(v37 + 48))
                            {
                              v38 = 0;
                              while (1)
                              {
                                v39 = *(v37 + 40) + 16 * v38;
                                if (*(v39 + 8))
                                {
                                  v40 = 0;
                                  do
                                  {
                                    if (*v5)
                                    {
                                      v41 = 0;
                                      while (1)
                                      {
                                        v42 = *(*(*(v5 + 17) + 8) + 8 * v41);
                                        if (*v42 != 1 && *v42 != 4)
                                        {
                                          v44 = *(v29 + 16);
                                          if (*(v44 + 50))
                                          {
                                            if (*(v44 + 50) > **(*v39 + 24 * v40) && !cstdlib_strcmp(**(v42 + 8), *(*(v44 + 56) + 8 * **(*v39 + 24 * v40))))
                                            {
                                              break;
                                            }
                                          }
                                        }

                                        if (++v41 >= *v5)
                                        {
                                          goto LABEL_65;
                                        }
                                      }

                                      *(*(*v39 + 24 * v40) + 2) = v41;
                                      v28 = 1;
                                    }

                                    else
                                    {
LABEL_65:
                                      v28 = 0;
                                    }

                                    ++v40;
                                  }

                                  while (v40 < *(v39 + 8));
                                }

                                if (!v28)
                                {
                                  break;
                                }

                                ++v38;
                                v37 = *(v29 + 16);
                                v28 = 1;
                                if (v38 >= *(v37 + 48))
                                {
                                  goto LABEL_69;
                                }
                              }

                              log_OutPublic(*(*a1 + 32), a1[23], 24045, 0);
                              return v62;
                            }
                          }

LABEL_69:
                          ++v31;
                          v30 = *(v29 + 16);
                          if (!v30)
                          {
                            break;
                          }
                        }
                      }

                      v26 = *v5;
                    }

                    if (v26)
                    {
                      v45 = 0;
                      v46 = *(v5 + 17);
                      do
                      {
                        v47 = *(*(v46 + 8) + 8 * v45);
                        if (v47)
                        {
                          v48 = *(v47 + 24);
                          if (v48)
                          {
                            v49 = 0;
                            do
                            {
                              if (v49 >= *(v48 + 16))
                              {
                                break;
                              }

                              if (v29)
                              {
                                v50 = *(v29 + 16);
                                if (v50)
                                {
                                  v51 = 0;
                                  v52 = *(*(v48 + 8) + 8 * v49);
                                  v53 = -1;
                                  do
                                  {
                                    if (++v53 >= *(v50 + 24))
                                    {
                                      break;
                                    }

                                    if (!cstdlib_strcmp(*v52, (*(*(v50 + 16) + v51 + 48) + *(*(v50 + 16) + v51))))
                                    {
                                      *(v52 + 10) = v27;
                                    }

                                    v51 += 72;
                                    v50 = *(v29 + 16);
                                  }

                                  while (v50);
                                }

                                v46 = *(v5 + 17);
                              }

                              v54 = *(*(v46 + 8) + 8 * v45);
                              if (!v54)
                              {
                                break;
                              }

                              ++v49;
                              v48 = *(v54 + 24);
                            }

                            while (v48);
                          }

                          v26 = *v5;
                        }

                        ++v45;
                      }

                      while (v45 < v26);
                    }

                    ++v27;
                  }

                  while (v27 < v26);
                  DataBlockFromFileRefCnt = v62;
                  if (v26)
                  {
                    for (i = 0; i < v26; ++i)
                    {
                      v56 = *(*(*(v5 + 17) + 8) + 8 * i);
                      if (v56)
                      {
                        v57 = *(v56 + 16);
                        if (v57)
                        {
                          v58 = 0;
                          v59 = -1;
                          do
                          {
                            if (++v59 >= *(v57 + 24))
                            {
                              break;
                            }

                            v60 = *(v57 + 16) + v58;
                            if (*(v60 + 40) && (!*(v60 + 8) || !*(v57 + 48)))
                            {
                              log_OutPublic(*(*a1 + 32), a1[23], 24062, 0);
                            }

                            v58 += 72;
                            v57 = *(v56 + 16);
                          }

                          while (v57);
                        }

                        v26 = *v5;
                      }
                    }
                  }
                }

                if (!a1[36])
                {
                  log_OutPublic(*(*a1 + 32), a1[23], 24054, 0, v61);
LABEL_105:
                  v15 = 0;
                  return FEDATA_ERROR(v15);
                }

LABEL_108:
                if (v68)
                {
                  ssftriff_reader_ObjClose(v68);
                }

                return DataBlockFromFileRefCnt;
              }

LABEL_107:
              log_OutPublic(*(*a1 + 32), a1[23], 24052, 0);
              goto LABEL_108;
            }
          }
        }

LABEL_106:
        DataBlockFromFileRefCnt = Chunk;
        goto LABEL_107;
      }
    }

    cstdlib_strcpy(__dst, "nntokentn/");
    cstdlib_strcat(__dst, *(a3 + 8 * *(a1 + 352)));
    v15 = brokeraux_ComposeBrokerString(*a1, __dst, 1, 1, v64, 0, 0, v77, 0x80uLL);
    if ((v15 & 0x80000000) == 0)
    {
      v18 = getRsrcHandleForThisApi(*a1, a1[1], a1[2], a1[4]);
      if ((ssftriff_reader_ObjOpen(v18, v19, 0, v77, "TOKN", 1031, &v68) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      log_OutPublic(*(*a1 + 32), a1[23], 24057, "%s%s", "Missing broker header file", v77);
      v15 = 3;
    }

    return FEDATA_ERROR(v15);
  }

  v6 = *(*a1 + 32);
  v7 = a1[23];
  v8 = 24055;
LABEL_5:
  log_OutPublic(v6, v7, v8, 0);
  v9 = 7;
LABEL_6:

  return FEDATA_ERROR(v9);
}