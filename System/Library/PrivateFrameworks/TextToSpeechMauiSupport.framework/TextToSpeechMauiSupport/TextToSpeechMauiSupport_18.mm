uint64_t fst_getPair(uint64_t a1, _DWORD *a2, _WORD *a3, _WORD *a4, _WORD *a5)
{
  result = 2371887111;
  if (a1)
  {
    v7 = a2[1];
    if ((v7 & 0x80000000) == 0 && *a2 < v7)
    {
      result = 0;
      v8 = (*(a1 + 24) + 6 * *a2);
      *a3 = *v8;
      *a4 = v8[1];
      *a5 = v8[2];
    }
  }

  return result;
}

uint64_t fst_getTransductionMode(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 2371887111;
  }

  result = 0;
  *a2 = *(a1 + 56);
  return result;
}

uint64_t kblex_LoadOneLex(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v41 = 0;
  v5 = 2371887104;
  *__dst = 0;
  v39 = 0;
  *__s2 = 0;
  v37 = 0;
  *__s1 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  *a5 = 0;
  v6 = *(a4 + 264);
  if (v6 > 7)
  {
    return v5;
  }

  v12 = off_279DAC508[*(a4 + 264)];
  cstdlib_strcpy(__dst, v12);
  cstdlib_strcpy(__s2, v12);
  v13 = ssftriff_reader_ObjOpen(a1, a2, 2, (a4 + 8), __dst, 1031, &v34);
  if (v13 < 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = ssftriff_reader_OpenChunk(v34, __s1, &v33, &v35);
    if ((v14 & 0x80000000) == 0 && !cstdlib_strcmp(__s1, __s2))
    {
      v32 = 0;
      v14 = ssftriff_reader_DetachChunkData(v34, &v32, &v35);
      if ((v14 & 0x80000000) == 0)
      {
        v15 = v35;
        if (v6 == *v35)
        {
          v16 = *(v35 + 1);
          v17 = heap_Calloc(*(a3 + 8), 1, 296 * v16);
          if (v17)
          {
            v18 = v17;
            if (v16 <= 0)
            {
              cstdlib_strcpy(v17, (a4 + 8));
              goto LABEL_19;
            }

            v19 = v15 + 4;
            v20 = v17 + 260;
            do
            {
              v21 = v19[2];
              *v20 = v19[1];
              v20[4] = v21;
              v22 = v19[3];
              *(v20 + 2) = v22;
              v23 = v19 + 4;
              *(v20 + 12) = v23;
              v24 = v23 + v22;
              *(v20 + 5) = -1;
              *(v20 + 28) = v32;
              v25 = -v22 < 0;
              v26 = -v22 & 3;
              v27 = v22 & 3;
              if (!v25)
              {
                v27 = -v26;
              }

              v28 = &v24[-v27];
              v29 = *(v28 + 1);
              v19 = v28 + 4;
              if (v29 != 1234567890)
              {
                v14 = -1923080192;
              }

              v20 += 296;
              --v16;
            }

            while (v16);
            cstdlib_strcpy(v17, (a4 + 8));
            if ((v14 & 0x80000000) == 0)
            {
              goto LABEL_19;
            }

            ssftriff_reader_ReleaseChunkData(v32);
            heap_Free(*(a3 + 8), v18);
            goto LABEL_18;
          }

          LODWORD(v5) = -1923080182;
        }

        ssftriff_reader_ReleaseChunkData(v32);
        v18 = 0;
        v14 = v5;
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v18 = 0;
LABEL_19:
  v30 = ssftriff_reader_ObjClose(v34);
  if (v14 >= 0)
  {
    v5 = v30;
  }

  else
  {
    v5 = v14;
  }

  *a5 = v18;
  return v5;
}

uint64_t kblex_loadLex(_WORD *a1, int a2, _WORD *a3, int a4, unsigned int a5, void *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  v20 = 0;
  *__dst = 0;
  v18 = 0;
  *v17 = 0;
  v16 = 0;
  memset(__src, 0, sizeof(__src));
  if (a5 > 7)
  {
    return 2371887104;
  }

  v7 = a5;
  v12 = off_279DAC508[a5];
  v13 = off_279DAC548[a5];
  cstdlib_strcpy(__dst, v12);
  cstdlib_strcpy(v17, v12);
  cstdlib_strcpy(v27, v13);
  result = InitRsrcFunction(a1, a2, &v22);
  if ((result & 0x80000000) != 0 || (result = InitRsrcFunction(a3, a4, &v21), (result & 0x80000000) != 0) || (result = kbaux_BuildBrokerString(v22, v27, __src, 0x100uLL), (result & 0x80000000) != 0) || (v25 = 0, memset(v24, 0, sizeof(v24)), v23 = v22, cstdlib_strcpy(v24, __src), LOWORD(v25) = v7, ObjcForThisApi = getObjcForThisApi(v22, v21), result = objc_GetAddRefCountedObject(ObjcForThisApi, __src, kblex_loc_ObjcLoadLex, kblex_loc_ObjcUnloadLex, &v23, &v16), (result & 0x80000000) != 0))
  {
    *a6 = 0;
  }

  else
  {
    *a6 = *(v16 + 32);
  }

  return result;
}

uint64_t kblex_loc_ObjcLoadLex(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  result = InitRsrcFunction(a1, a2, &v36);
  if ((result & 0x80000000) == 0)
  {
    cstdlib_memcpy(v11, v36, 0x1A0uLL);
    v12 = *(v9 + 32);
    return kblex_LoadOneLex(a1, a2, v11, a5, (a4 + 32));
  }

  return result;
}

uint64_t kblex_loc_ObjcUnloadLex(_WORD *a1, int a2, uint64_t a3)
{
  v7 = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    if (v5)
    {
      v6 = v7;
      ssftriff_reader_ReleaseChunkData(*(v5 + 288));
      heap_Free(*(v6 + 8), v5);
      return 0;
    }

    else
    {
      return 2371887111;
    }
  }

  return result;
}

uint64_t kblex_InitLex(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, void *a10)
{
  LODWORD(result) = kblex_loadLex(a1, a2, a3, a4, a9, a10);
  if (a9)
  {
    return result;
  }

  else
  {
    return result & ~(result >> 31);
  }
}

uint64_t kblex_FinishLex(_WORD *a1, int a2, _WORD *a3, int a4, uint64_t a5)
{
  v10 = 0;
  v11 = 0;
  result = InitRsrcFunction(a3, a4, &v10);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a1, a2, &v11);
    if ((result & 0x80000000) == 0)
    {
      ObjcForThisApi = getObjcForThisApi(v11, v10);
      return objc_ReleaseObject(ObjcForThisApi, a5);
    }
  }

  return result;
}

uint64_t kblex_StartLookup(uint64_t a1, uint64_t a2)
{
  v2 = 2371887111;
  if (a1 && a2)
  {
    *a2 = *(a1 + 256);
    *(a2 + 8) = *(a1 + 272);
    v3 = *(a1 + 264);
    *(a2 + 24) = *(a1 + 288);
    *(a2 + 32) = v3;
    *(a2 + 40) = 0;
    *(a2 + 56) = 0;
    (*(*(a1 + 288) + 160))(a2 + 64);
    return 0;
  }

  return v2;
}

uint64_t kblex_LookupChar(unsigned __int8 a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  if (!a2)
  {
    return 2371887111;
  }

  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v6 = *(a2 + 56);
  v9 = 0;
  if (v6)
  {
    result = (*(*(a2 + 24) + 216))(*(a2 + 8), *(a2 + 16), a2 + 40, &v9);
    *(a2 + 56) = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  cstdlib_strcpy((a2 + 40), "g2p");
  v8 = *(a2 + 32);
  if (v8)
  {
    cstdlib_strcat((a2 + 40), (v8 + 3 * a1));
  }

  *(a2 + 56) = (*(*(a2 + 24) + 216))(*(a2 + 8), *(a2 + 16), a2 + 40, &v9);
  (*(*(a2 + 24) + 160))(a2 + 64);
  result = *(a2 + 56);
  if (result)
  {
LABEL_9:
    (*(*(a2 + 24) + 176))(v10);
    v12[0] = a1;
    (*(*(a2 + 24) + 192))(*(a2 + 8), *(a2 + 16), *(a2 + 56), a2 + 64, v10, v12, 1);
    result = (*(*(a2 + 24) + 168))(a2 + 64);
    if (result)
    {
      result = 0;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t kblex_GetFirstEntry(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a2 = 0;
  result = 2371887111;
  if (a1 && a3)
  {
    *(a3 + 48) = 0;
    (*(*(a1 + 24) + 176))(a3 + 56);
    if (*(a1 + 56))
    {
      v8 = 0uLL;
      v9 = 0;
      v10 = 0;
      v7 = (*(*(a1 + 24) + 216))(*(a1 + 8), *(a1 + 16), a1 + 40, &v10);
      *(a1 + 56) = v7;
      (*(*(a1 + 24) + 192))(*(a1 + 8), *(a1 + 16), v7, a1 + 64, &v8, "", 0);
      result = (*(*(a1 + 24) + 168))(a1 + 64);
      if (!result)
      {
        return result;
      }

      *a3 = *a1;
      *(a3 + 8) = *(a1 + 8);
      *(a3 + 24) = *(a1 + 24);
      cstdlib_strcpy((a3 + 32), (a1 + 40));
      *(a3 + 48) = *(a1 + 56);
      *(a3 + 72) = v9;
      *(a3 + 56) = v8;
      getValidEntry(a3, a2);
    }

    return 0;
  }

  return result;
}

void *getValidEntry(void *result, _DWORD *a2)
{
  v2 = result;
  v12 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  if (!result[6])
  {
    goto LABEL_19;
  }

  v4 = 1;
  v7 = 1;
  while (1)
  {
    result = (*(v2[3] + 184))(v2 + 7);
    if (!result || v4 == 0)
    {
      break;
    }

    result = getEntryContents(v2, v11, 150, v10, 500, &v8, v9, &v7);
    v4 = v7;
    if (v7)
    {
      if ((v6 = *v2, !*v2) && v9[0] == 48 || v6 == 1 && (v9[0] & 0xFD) != 0x30 || v6 == 2 && v9[0] == 50)
      {
        *a2 = 1;
        return result;
      }
    }

    if (!*a2)
    {
      result = (*(v2[3] + 208))(v2[6], v2 + 7);
      if (!*a2)
      {
        continue;
      }
    }

    return result;
  }

  if (!*a2)
  {
LABEL_19:
    v2[6] = 0;
  }

  return result;
}

uint64_t kblex_GetNextEntry(_DWORD *a1, void *a2)
{
  result = 2371887111;
  *a1 = 0;
  if (a2)
  {
    if (a2[6])
    {
      v5 = 0;
      a2[6] = (*(a2[3] + 216))(a2[1], a2[2], a2 + 4, &v5);
      (*(a2[3] + 208))();
      getValidEntry(a2, a1);
      return 0;
    }
  }

  return result;
}

uint64_t kblex_FinishEntrySearch(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 48) = 0;
  }

  return 0;
}

uint64_t kblex_GetEntryGraph(int a1, char *__dst, unsigned int a3)
{
  v4 = a3 - 1;
  cstdlib_strncpy(__dst, "???", v4);
  __dst[v4] = 0;
  return 0;
}

uint64_t kblex_GetEntryPhon(void *a1, _BYTE *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  if (a1)
  {
    if (a1[6])
    {
      v5 = 0;
      getEntryContents(a1, a2, a3, v8, 500, v6, v7, &v5);
      if (!v5)
      {
        *a2 = 0;
      }
    }
  }

  return 0;
}

BOOL kblex_IsValidEntry(_BOOL8 result)
{
  if (result)
  {
    return *(result + 48) != 0;
  }

  return result;
}

uint64_t getEntryContents(void *a1, _BYTE *a2, uint64_t a3, _BYTE *a4, uint64_t a5, _DWORD *a6, uint64_t a7, _DWORD *a8)
{
  v11 = a5;
  v13 = a3;
  v47 = *MEMORY[0x277D85DE8];
  v42 = v45;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v16 = (*(a1[3] + 216))(a1[1], a1[2], a1 + 4, &v39);
  a1[6] = v16;
  result = (*(a1[3] + 200))(a1[1], a1[2], v16, a1 + 7, &v42, &v41, &v40 + 1, &v40);
  v18 = v40;
  *a8 = v40;
  if (!v18)
  {
    *a2 = 0;
    *a4 = 0;
    *a6 = 0;
    return result;
  }

  v42[v41] = 0;
  v19 = HIBYTE(v40);
  v44 = 0;
  getSubstrToSep2(v45, &v44, HIBYTE(v40), HIBYTE(v40), &v43, a2, v13);
  v20 = v44;
  if (!v45[v44] || v45[v44] == v19)
  {
    if (!v45[v44])
    {
      goto LABEL_12;
    }

LABEL_11:
    v44 = ++v20;
    goto LABEL_12;
  }

  v21 = &v45[v44 + 1];
  do
  {
    v23 = *v21++;
    v22 = v23;
    ++v20;
  }

  while (v23 && v22 != v19);
  v44 = v20;
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!v45[v20] || v45[v20] == v19)
  {
    if (!v45[v20])
    {
      goto LABEL_21;
    }

LABEL_20:
    v44 = ++v20;
    goto LABEL_21;
  }

  v24 = &v45[v20 + 1];
  do
  {
    v26 = *v24++;
    v25 = v26;
    ++v20;
  }

  while (v26 && v25 != v19);
  v44 = v20;
  if (v25)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (!v45[v20] || v45[v20] == v19)
  {
    if (!v45[v20])
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v27 = &v45[v20 + 1];
  do
  {
    v29 = *v27++;
    v28 = v29;
    ++v20;
  }

  while (v29 && v28 != v19);
  v44 = v20;
  if (v28)
  {
LABEL_29:
    v44 = ++v20;
  }

LABEL_30:
  v30 = v45[v20];
  if (v30 == v19)
  {
    v30 = v19;
  }

  else if (v45[v20] && v45[v20] != 33)
  {
    v31 = v20 + 1;
    v32 = &v45[v20 + 1];
    while (1)
    {
      v20 = v31;
      v33 = *v32++;
      v30 = v33;
      v34 = v33;
      if (v33 == v19)
      {
        break;
      }

      ++v31;
      if (v34 == 33 || v34 == 0)
      {
        goto LABEL_43;
      }
    }

    v30 = v19;
LABEL_43:
    v44 = v20;
  }

  if (!v30 || (++v20, v44 = v20, v30 != 33))
  {
    *a4 = 0;
    if (!v45[v20] || v45[v20] == v19)
    {
      if (!v45[v20])
      {
        goto LABEL_56;
      }
    }

    else
    {
      v36 = &v45[v20 + 1];
      do
      {
        v38 = *v36++;
        v37 = v38;
        ++v20;
      }

      while (v38 && v37 != v19);
      v44 = v20;
      if (!v37)
      {
        goto LABEL_56;
      }
    }

    v44 = v20 + 1;
    goto LABEL_56;
  }

  getSubstrToSep2(v45, &v44, v19, v19, &v43, a4, v11);
LABEL_56:
  getSubstrToSep2(v45, &v44, v19, v19, &v43, v46, 10);
  *a6 = LH_atoi(v46);
  return getSubstrToSep2(v45, &v44, v19, v19, &v43, a7, 10);
}

uint64_t kblex_GetEntryCost(void *a1, _DWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  if (a1)
  {
    if (a1[6])
    {
      v4 = 0;
      getEntryContents(a1, v7, 150, v6, 500, a2, v5, &v4);
      if (!v4)
      {
        *a2 = 0;
      }
    }
  }

  return 0;
}

uint64_t kblex_GetEntryCostAndConsList(void *a1, _DWORD *a2, _BYTE *a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *a2 = 0;
  if (a1)
  {
    if (a1[6])
    {
      v7 = 0;
      getEntryContents(a1, v9, 150, a3, a4, a2, v8, &v7);
      if (!v7)
      {
        *a3 = 0;
        *a2 = 0;
      }
    }
  }

  return 0;
}

uint64_t kblex_GetNilEntry(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  return 0;
}

uint64_t getSubstrToSep2(uint64_t result, int *a2, unsigned __int8 a3, unsigned __int8 a4, _BYTE *a5, uint64_t a6, int a7)
{
  v7 = *a2;
  v8 = *(result + v7);
  if (*(result + v7))
  {
    v9 = v8 == a3;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v8 == a4)
  {
    v11 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      if (v12 < a7 - 1)
      {
        *(a6 + v12++) = v8;
        LODWORD(v7) = *a2;
      }

      v7 = v7 + 1;
      *a2 = v7;
      v8 = *(result + v7);
      if (*(result + v7))
      {
        v13 = v8 == a3;
      }

      else
      {
        v13 = 1;
      }
    }

    while (!v13 && v8 != a4);
    v11 = v12;
  }

  *a5 = v8;
  if (v8)
  {
    ++*a2;
  }

  *(a6 + v11) = 0;
  return result;
}

uint64_t mosyntsentana_InsertTerminalEdge(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = a3;
  v36 = *MEMORY[0x277D85DE8];
  if ((a3 & 0x80000000) != 0)
  {
    v11 = "tried to insert terminal sentence edge starting at position ";
    a4 = a3;
    goto LABEL_33;
  }

  v10 = a4;
  if (a4 >= 5001)
  {
    v11 = "impossible to insert terminal sentence edge ending at position ";
LABEL_33:

    return mosyntbase_WInt3Ln(a1, v11, 0, a4, "", 0);
  }

  v12 = a5;
  if ((a5 & 0x80000000) != 0)
  {
    v11 = "tried to insert terminal sentence edge with constituent id < 0: ";
    a4 = a5;
    goto LABEL_33;
  }

  v17 = a2[10010];
  v18 = v17 < a3;
  if (v17 <= a3)
  {
    v17 = a3;
  }

  if (v18 || v17 < a4)
  {
    if (v17 <= a4)
    {
      v17 = a4;
    }

    a2[10010] = v17;
  }

  v20 = &a2[2 * a3 + 8];
  if (!*v20)
  {
    result = mosyntpal_ALLOCATE(a1, &a2[2 * a3 + 8], 0x130u);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v22 = *v20;
    v22[17] = 0u;
    v22[18] = 0u;
    v22[15] = 0u;
    v22[16] = 0u;
    v22[13] = 0u;
    v22[14] = 0u;
    v22[11] = 0u;
    v22[12] = 0u;
    v22[9] = 0u;
    v22[10] = 0u;
    v22[7] = 0u;
    v22[8] = 0u;
    v22[5] = 0u;
    v22[6] = 0u;
    v22[3] = 0u;
    v22[4] = 0u;
    v22[1] = 0u;
    v22[2] = 0u;
    *v22 = 0u;
  }

  v23 = &a2[2 * v10 + 8];
  if (!*v23)
  {
    result = mosyntpal_ALLOCATE(a1, &a2[2 * v10 + 8], 0x130u);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v24 = *v23;
    v24[17] = 0u;
    v24[18] = 0u;
    v24[15] = 0u;
    v24[16] = 0u;
    v24[13] = 0u;
    v24[14] = 0u;
    v24[11] = 0u;
    v24[12] = 0u;
    v24[9] = 0u;
    v24[10] = 0u;
    v24[7] = 0u;
    v24[8] = 0u;
    v24[5] = 0u;
    v24[6] = 0u;
    v24[3] = 0u;
    v24[4] = 0u;
    v24[1] = 0u;
    v24[2] = 0u;
    *v24 = 0u;
  }

  v33 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  ++a2[25026];
  result = mosyntpal_ALLOCATE(a1, &v33, 0x78u);
  if ((result & 0x80000000) == 0)
  {
    v25 = v33;
    v33[12] = v8;
    v25[13] = v10;
    v25[14] = v12;
    v26 = *(a6 + 16);
    *(v25 + 2) = *a6;
    *(v25 + 6) = v26;
    *(v25 + 58) = 1;
    *(v25 + 8) = a7;
    result = mosyntkbsgram_NilIter(v25 + 10);
    if ((result & 0x80000000) == 0)
    {
      v27 = v33;
      *(v33 + 24) = a8;
      *(v27 + 57) = 0;
      *(v27 + 13) = 0;
      *(v27 + 112) = 0;
      v28 = *v23;
      v29 = (v27[14] - 37 * ((((7085 * v27[14]) >> 16) >> 2) + (((7085 * v27[14]) >> 16) >> 15)));
      *v27 = *(*v23 + 8 * v29);
      v30 = v33;
      *(v28 + v29) = v33;
      *(v30 + 2) = 0;
      *(v30 + 56) = 0;
      v31 = *(*v20 + 296);
      if (v31)
      {
        v32 = *(*v20 + 296);
        while (*(v32 + 28) != v30[14])
        {
          v32 = *(v32 + 8);
          if (!v32)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:
        *(v30 + 1) = v31;
        *(*v20 + 296) = v30;
      }

      if (*a2 >= 3)
      {
        m2__cp__str("inserted terminal edge", v34, 0x64u);
        return WriteEdge(a1, a2, v34, 100, v33);
      }
    }
  }

  return result;
}

uint64_t WriteEdge(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, __int16 *a5)
{
  result = mosyntbase_WString(a1, a3, a4);
  if (a5)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WString(a1, " ", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntkbsymtab_WriteConsAndFeat(a1, *(a2 + 8), a5[14], a5 + 16);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WString(a1, " from pos ", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WInt(a1, a5[12], 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WString(a1, " to pos ", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WInt(a1, a5[13], 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = mosyntbase_WString(a1, " NIL", 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  return mosyntbase_WLn(a1);
}

uint64_t mosyntsentana_CreateAndInitParseDesc(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  result = mosyntpal_ALLOCATE(a1, a6, 0x18728u);
  if ((result & 0x80000000) == 0)
  {
    v13 = *a6;
    *v13 = a2;
    *(v13 + 8) = a3;
    *(*a6 + 16) = a4;
    v14 = *a6;
    *(v14 + 24) = a5;
    *(v14 + 100112) = 0;
    *(v14 + 100120) = 0;
    *(v14 + 100104) = 0;
    result = mosyntknowl_NewBindingDesc(a1, (v14 + 100128));
    if ((result & 0x80000000) == 0)
    {
      v15 = 0;
      v16 = *a6;
      v17 = 80056;
      do
      {
        *(v16 + v15 + 32) = 0;
        *(*a6 + v15 + 40048) = 0;
        v16 = *a6;
        *(*a6 + v17) = 0;
        v17 += 4;
        v15 += 8;
      }

      while (v15 != 40008);
      result = mosyntpal_ALLOCATE(a1, (v16 + 32), 0x130u);
      if ((result & 0x80000000) == 0)
      {
        v18 = *(v16 + 32);
        v18[17] = 0u;
        v18[18] = 0u;
        v18[15] = 0u;
        v18[16] = 0u;
        v18[13] = 0u;
        v18[14] = 0u;
        v18[11] = 0u;
        v18[12] = 0u;
        v18[9] = 0u;
        v18[10] = 0u;
        v18[7] = 0u;
        v18[8] = 0u;
        v18[5] = 0u;
        v18[6] = 0u;
        v18[3] = 0u;
        v18[4] = 0u;
        v18[1] = 0u;
        v18[2] = 0u;
        *v18 = 0u;
        v19 = *a6;
        v21 = 0u;
        v22 = 0u;
        v20 = 0;
        v27 = 0;
        v26 = 0u;
        v25 = 0;
        v24 = 0u;
        v23 = 0;
        *(v19 + 100064) = 0u;
        result = mosyntkbsgram_GetFirstEmptyRule(*(v19 + 16), &v21, &v20);
        if ((result & 0x80000000) == 0)
        {
          while (v20 >= 1)
          {
            result = mosyntkbsgram_GetRuleFeatLists(&v21, &v26, &v24, &v22);
            if ((result & 0x80000000) == 0)
            {
              result = InsertRuleEdge(a1, v19, v20, &v26, 0, 0, 0, 0, &v21);
              if ((result & 0x80000000) == 0)
              {
                result = mosyntkbsgram_GetNextEmptyRule(*(v19 + 16), &v21, &v20);
                if ((result & 0x80000000) == 0)
                {
                  continue;
                }
              }
            }

            return result;
          }

          result = ParseAndOptimizePosition(a1, v19, 0, 0);
          if ((result & 0x80000000) == 0)
          {
            *(*a6 + 40040) = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t mosyntsentana_DisposeParseDesc(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  result = mosyntknowl_DisposeBindingDesc(a1, (*a2 + 100128));
  if ((result & 0x80000000) == 0)
  {
    v10 = 0;
    v5 = *a2;
    if ((*(*a2 + 40040) & 0x80000000) == 0)
    {
      v6 = 0;
      do
      {
        if (*(v5 + 8 * v6 + 32))
        {
          for (i = 0; i != 37; ++i)
          {
            v8 = *(*(*a2 + 8 * v6 + 32) + 8 * i);
            while (1)
            {
              v10 = v8;
              if (!v8)
              {
                break;
              }

              v8 = *v8;
              result = DisposeEdge(a1, &v10);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }
          }

          result = mosyntpal_DEALLOCATE(a1, (*a2 + 8 * v6 + 32));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v5 = *a2;
        }
      }

      while (v6++ < *(v5 + 40040));
    }

    return mosyntpal_DEALLOCATE(a1, a2);
  }

  return result;
}

uint64_t DisposeEdge(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*(*a2 + 58) && *(v4 + 64))
  {
    result = mosyntdata_DisposeTermInfo(a1, (v4 + 64));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v4 = *a2;
  }

  v6 = *(v4 + 104);
  while (1)
  {
    v7 = v6;
    if (!v6)
    {
      break;
    }

    v6 = *v6;
    result = mosyntpal_DEALLOCATE(a1, &v7);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  return mosyntpal_DEALLOCATE(a1, a2);
}

uint64_t mosyntsentana_DoParse(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40040);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  result = 0;
  v7 = a2 + 80056;
  v8 = a2 + 80060;
  do
  {
    v9 = v5 + 1;
    *(v8 + 4 * v5) = *(v7 + 4 * v5) + 1000;
    if (*(a2 + 8 * v5 + 40))
    {
      result = ParseAndOptimizePosition(a1, a2, (v5 + 1), v9 == v2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v2 = *(a2 + 40040);
    }

    v5 = v9;
  }

  while (v9 < v2);
  return result;
}

uint64_t ParseAndOptimizePosition(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v69[3] = *MEMORY[0x277D85DE8];
  v11 = a2 + 100064;
  v12 = (a2 + 32);
  *(a2 + 100096) = 0;
  *(a2 + 100064) = 0u;
  *(a2 + 100080) = 0u;
  do
  {
    v13 = *(v12[a3] + 8 * v10);
    if (v13)
    {
      do
      {
        v14 = v13;
        v13[2] = 0;
        if (v9)
        {
          v15 = v9 + 2;
        }

        else
        {
          v15 = (a2 + 100064);
        }

        *v15 = v13;
        *(a2 + 100072) = v13;
        *(v13 + 56) = 1;
        ++v8;
        v13 = *v13;
        v9 = v14;
      }

      while (*v14);
      *(a2 + 100080) = v8;
      v9 = v14;
    }

    ++v10;
  }

  while (v10 != 37);
  v62 = 0uLL;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  if (*a2 >= 3)
  {
    FirstRuleSameLast = mosyntbase_WInt3Ln(a1, "treating agenda in position ", 0, a3, "", 0);
    if ((FirstRuleSameLast & 0x80000000) != 0)
    {
      return FirstRuleSameLast;
    }
  }

  v57 = a4;
  v17 = *v11;
  if (*v11)
  {
    v18 = 0;
    memset(v69, 0, 24);
    v67 = 0;
    v68[0] = 0;
    v66 = 0;
    *(v68 + 6) = 0;
    memset(v65, 0, sizeof(v65));
    memset(v64, 0, sizeof(v64));
    memset(v63, 0, sizeof(v63));
    do
    {
      v19 = *(v17 + 16);
      *v11 = v19;
      if (!v19)
      {
        *(v11 + 8) = 0;
      }

      *(v17 + 56) = 0;
      *(v17 + 16) = 0;
      if (*a2 >= 3)
      {
        m2__cp__str("  treating agenda edge", &v66, 0x1Eu);
        FirstRuleSameLast = WriteEdge(a1, a2, &v66, 30, v17);
        if ((FirstRuleSameLast & 0x80000000) != 0)
        {
          return FirstRuleSameLast;
        }
      }

      FirstRuleSameLast = mosyntkbsgram_GetFirstRuleSameLast(*(a2 + 16), *(v17 + 28), &v62, &v60, &v59 + 1, &v59);
      if ((FirstRuleSameLast & 0x80000000) != 0)
      {
        return FirstRuleSameLast;
      }

      while (v60 >= 1)
      {
        FirstRuleSameLast = mosyntkbsgram_GetRuleFeatLists(&v62, v65, v64, v63);
        if ((FirstRuleSameLast & 0x80000000) != 0)
        {
          return FirstRuleSameLast;
        }

        if (v18 < 0)
        {
          FirstRuleSameLast = mosyntpal_CheckInterrupt();
          if ((FirstRuleSameLast & 0x80000000) != 0)
          {
            return FirstRuleSameLast;
          }

          v18 = 1000;
        }

        else
        {
          --v18;
        }

        v20 = *a2;
        if (v59)
        {
          if (v20 >= 3)
          {
            FirstRuleSameLast = mosyntbase_WString(a1, "    looking for left edge ", 0);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }

            FirstRuleSameLast = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), HIDWORD(v59));
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }

            FirstRuleSameLast = mosyntbase_WString(a1, " to complete ", 0);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }

            FirstRuleSameLast = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), v60);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }

            FirstRuleSameLast = mosyntbase_WLn(a1);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }
          }

          v21 = HIDWORD(v59);
          FirstRuleSameLast = mosyntkbsgram_GetRuleFeatLists(&v62, v65, v64, v63);
          if ((FirstRuleSameLast & 0x80000000) != 0)
          {
            return FirstRuleSameLast;
          }

          v22 = v21 % 37;
          v23 = *(v17 + 24);
          if (v23 <= 0)
          {
            v24 = v22;
          }

          else
          {
            v24 = v22;
            for (i = *(v12[v23] + 8 * v22); i; i = *i)
            {
              if (HIDWORD(v59) == *(i + 28))
              {
                v26 = *a2;
                if (*a2 >= 3)
                {
                  FirstRuleSameLast = mosyntbase_WStringLn(a1, "      found left edge; trying unification", 0);
                  if ((FirstRuleSameLast & 0x80000000) != 0)
                  {
                    return FirstRuleSameLast;
                  }

                  v26 = *a2;
                }

                FirstRuleSameLast = mosyntknowl_Unif2(a1, *(a2 + 8), v26, *(v11 + 64), v64, (i + 32), v63, (v17 + 32), v65, v69, &v61);
                if ((FirstRuleSameLast & 0x80000000) != 0)
                {
                  return FirstRuleSameLast;
                }

                if (v61)
                {
                  FirstRuleSameLast = InsertRuleEdge(a1, a2, v60, v69, *(i + 24), v5, i, v17, &v62);
                  if ((FirstRuleSameLast & 0x80000000) != 0)
                  {
                    return FirstRuleSameLast;
                  }
                }
              }
            }
          }

          for (j = *(*v12 + 8 * v24); j; j = *j)
          {
            if (HIDWORD(v59) == *(j + 28))
            {
              v28 = *a2;
              if (*a2 >= 3)
              {
                FirstRuleSameLast = mosyntbase_WStringLn(a1, "      found left edge; trying unification", 0);
                if ((FirstRuleSameLast & 0x80000000) != 0)
                {
                  return FirstRuleSameLast;
                }

                v28 = *a2;
              }

              FirstRuleSameLast = mosyntknowl_Unif2(a1, *(a2 + 8), v28, *(v11 + 64), v64, (j + 32), v63, (v17 + 32), v65, v69, &v61);
              if ((FirstRuleSameLast & 0x80000000) != 0)
              {
                return FirstRuleSameLast;
              }

              if (v61)
              {
                FirstRuleSameLast = InsertRuleEdge(a1, a2, v60, v69, *(v17 + 24), v5, j, v17, &v62);
                if ((FirstRuleSameLast & 0x80000000) != 0)
                {
                  return FirstRuleSameLast;
                }
              }
            }
          }
        }

        else
        {
          if (v20 >= 3)
          {
            FirstRuleSameLast = mosyntbase_WString(a1, "    trying to directly complete ", 0);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }

            FirstRuleSameLast = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), v60);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }

            FirstRuleSameLast = mosyntbase_WLn(a1);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }

            v20 = *a2;
          }

          FirstRuleSameLast = mosyntknowl_Unif (a1, *(a2 + 8), v20, *(v11 + 64), v64, (v17 + 32), v65, v69, &v61);
          if ((FirstRuleSameLast & 0x80000000) != 0)
          {
            return FirstRuleSameLast;
          }

          if (v61)
          {
            FirstRuleSameLast = InsertRuleEdge(a1, a2, v60, v69, *(v17 + 24), v5, v17, 0, &v62);
            if ((FirstRuleSameLast & 0x80000000) != 0)
            {
              return FirstRuleSameLast;
            }
          }
        }

        FirstRuleSameLast = mosyntkbsgram_GetNextRuleSameLast(*(a2 + 16), *(v17 + 28), &v62, &v60, &v59 + 1, &v59);
        if ((FirstRuleSameLast & 0x80000000) != 0)
        {
          return FirstRuleSameLast;
        }
      }

      if (mosyntkbsgram_HasEmptyRules(*(a2 + 16)))
      {
        FirstRuleSameLast = mosyntkbsgram_GetFirstRuleSameFirst(*(a2 + 16), *(v17 + 28), &v62, &v60, &v59 + 1, &v59);
        if ((FirstRuleSameLast & 0x80000000) != 0)
        {
          return FirstRuleSameLast;
        }

        while (v60 >= 1)
        {
          FirstRuleSameLast = mosyntkbsgram_GetRuleFeatLists(&v62, v65, v64, v63);
          if ((FirstRuleSameLast & 0x80000000) != 0)
          {
            return FirstRuleSameLast;
          }

          v29 = v59;
          if (v59 >= 1)
          {
            if (*a2 >= 3)
            {
              FirstRuleSameLast = mosyntbase_WString(a1, "    looking for empty right edge ", 0);
              if ((FirstRuleSameLast & 0x80000000) != 0)
              {
                return FirstRuleSameLast;
              }

              FirstRuleSameLast = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), v59);
              if ((FirstRuleSameLast & 0x80000000) != 0)
              {
                return FirstRuleSameLast;
              }

              FirstRuleSameLast = mosyntbase_WString(a1, " to complete ", 0);
              if ((FirstRuleSameLast & 0x80000000) != 0)
              {
                return FirstRuleSameLast;
              }

              FirstRuleSameLast = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), v60);
              if ((FirstRuleSameLast & 0x80000000) != 0)
              {
                return FirstRuleSameLast;
              }

              FirstRuleSameLast = mosyntbase_WLn(a1);
              if ((FirstRuleSameLast & 0x80000000) != 0)
              {
                return FirstRuleSameLast;
              }

              v29 = v59;
            }

            for (k = *(*v12 + 8 * (v29 % 37)); k; k = *k)
            {
              if (v18 < 0)
              {
                FirstRuleSameLast = mosyntpal_CheckInterrupt();
                if ((FirstRuleSameLast & 0x80000000) != 0)
                {
                  return FirstRuleSameLast;
                }

                v18 = 1000;
              }

              else
              {
                --v18;
              }

              if (v59 == *(k + 28))
              {
                v31 = *a2;
                if (*a2 >= 3)
                {
                  FirstRuleSameLast = mosyntbase_WStringLn(a1, "      found empty right edge; trying unification ", 0);
                  if ((FirstRuleSameLast & 0x80000000) != 0)
                  {
                    return FirstRuleSameLast;
                  }

                  v31 = *a2;
                }

                FirstRuleSameLast = mosyntknowl_Unif2(a1, *(a2 + 8), v31, *(v11 + 64), v64, (v17 + 32), v63, (k + 32), v65, v69, &v61);
                if ((FirstRuleSameLast & 0x80000000) != 0)
                {
                  return FirstRuleSameLast;
                }

                if (v61)
                {
                  FirstRuleSameLast = InsertRuleEdge(a1, a2, v60, v69, *(v17 + 24), v5, v17, k, &v62);
                  if ((FirstRuleSameLast & 0x80000000) != 0)
                  {
                    return FirstRuleSameLast;
                  }
                }
              }
            }
          }

          FirstRuleSameLast = mosyntkbsgram_GetNextRuleSameFirst(*(a2 + 16), *(v17 + 28), &v62, &v60, &v59 + 1, &v59);
          if ((FirstRuleSameLast & 0x80000000) != 0)
          {
            return FirstRuleSameLast;
          }
        }
      }

      v17 = *v11;
    }

    while (*v11);
  }

  v66 = 0;
  v67 = 0;
  LOBYTE(v65[0]) = 0;
  LODWORD(v69[0]) = 0;
  RuleVisAndCost = mosyntkbsgram_NilIter(&v66);
  if ((RuleVisAndCost & 0x80000000) == 0)
  {
    if (v5)
    {
      if (v5 >= 1)
      {
        v33 = 0;
        v54 = 0;
        v34 = 0;
        v35 = 0;
        v58 = a2 + 80056;
        v55 = 0;
        v56 = a2 + 40048;
        while (1)
        {
          v36 = *(v12[v5] + 8 * v33);
          if (v36)
          {
            break;
          }

LABEL_123:
          if (++v33 == 37)
          {
            if (v34 || (v34 = v55, v35 = v54, v55))
            {
              *(v56 + 8 * v5) = v34;
              *(v58 + 4 * v5) = v35;
            }

            if (!v57 && (RuleVisAndCost & 0x80000000) == 0 && mosyntkbsgram_HasSimpleFollowRel(*(a2 + 16)))
            {
              FixEdgeAndSubEdges(*(v56 + 8 * v5));
              for (m = 0; m != 37; ++m)
              {
                for (n = *(v12[v5] + 8 * m); n; n = *n)
                {
                  if (!*(n + 57))
                  {
                    v47 = *(v12[v5] + 296);
                    if (v47)
                    {
                      while (!mosyntkbsgram_IsFollowerCons(*(a2 + 16), *(v47 + 28), *(n + 28)))
                      {
                        v47 = *(v47 + 8);
                        if (!v47)
                        {
                          goto LABEL_133;
                        }
                      }

                      FixEdgeAndSubEdges(n);
                    }
                  }

LABEL_133:
                  ;
                }
              }

              v48 = 0;
              RuleVisAndCost = 0;
              v66 = 0;
              do
              {
                v49 = v12[v5];
                v50 = *(v49 + 8 * v48);
                v66 = v50;
                v51 = 0;
                if (v50)
                {
                  do
                  {
                    v52 = *v50;
                    if (*(v50 + 57))
                    {
                      *v50 = v51;
                      v51 = v66;
                    }

                    else
                    {
                      ++*(v11 + 36);
                      ++*(v11 + 60);
                      if (*(v50 + 58))
                      {
                        --*(v11 + 40);
                      }

                      else
                      {
                        --*(v11 + 44);
                      }

                      RuleVisAndCost = DisposeEdge(a1, &v66);
                      if ((RuleVisAndCost & 0x80000000) != 0)
                      {
                        return RuleVisAndCost;
                      }
                    }

                    v66 = v52;
                    v50 = v52;
                  }

                  while (v52);
                  v49 = v12[v5];
                }

                *(v49 + 8 * v48++) = v51;
              }

              while (v48 != 37);
            }

            return RuleVisAndCost;
          }
        }

        while (1)
        {
          RuleVisAndCost = mosyntkbsgram_GetRuleVisAndCost(v36 + 20, v65, v69);
          if ((RuleVisAndCost & 0x80000000) != 0)
          {
            break;
          }

          if (mosyntkbsgram_IsNilIter(v36 + 10) || !LOBYTE(v65[0]))
          {
            v37 = *(v36 + 12);
            v38 = *(v58 + 4 * v37) + *(v36 + 24) + 1000;
            if (*(v36 + 12) && !*(v56 + 8 * v37))
            {
              v41 = v55;
              v42 = v54;
              if (v55)
              {
                v43 = v38 < v54;
              }

              else
              {
                v43 = 1;
              }

              v44 = v43;
              if (v44)
              {
                v42 = v38;
              }

              v54 = v42;
              if (v44)
              {
                v41 = v36;
              }

              v55 = v41;
            }

            else
            {
              if (v34)
              {
                v39 = v38 < v35;
              }

              else
              {
                v39 = 1;
              }

              if (v39)
              {
                v35 = v38;
                v34 = v36;
              }
            }
          }

          v36 = *v36;
          if (!v36)
          {
            goto LABEL_123;
          }
        }
      }
    }

    else
    {
      *(a2 + 40048) = 0;
      *(a2 + 80056) = 0;
    }
  }

  return RuleVisAndCost;
}

void mosyntsentana_GetOptimalTree(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2 + 36864;
  v7 = *(a2 + 40040);
  v20 = 0;
  __b = 0uLL;
  v22 = 0;
  cstdlib_memset(&__b, 0, 0x18uLL);
  started = mosyntkbsgram_StartCons(*(a2 + 16));
  v9 = started;
  v10 = *(*(a2 + 8 * v7 + 32) + 8 * (started % 37));
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = 0;
  do
  {
    if (started == v10[1].n128_i16[6] && !v10[1].n128_u16[4] && (!v11 || v10[6].n128_u32[0] < v11[6].n128_u32[0]))
    {
      v11 = v10;
    }

    v10 = v10->n128_u64[0];
  }

  while (v10);
  if (v11)
  {
    if ((mosyntdata_StartNodeList(a1, a3, &v20) & 0x80000000) == 0)
    {
      AppendTree(a1, v11, a3, &v20);
    }
  }

  else
  {
LABEL_13:
    if (*a2 < 1 || (mosyntbase_WStringLn(a1, "no syntactic analysis found; creating artificial tree", 0) & 0x80000000) == 0)
    {
      if (v7 >= 1)
      {
        v12 = a2 + 40048;
        v13 = v7;
        v14 = v7;
        do
        {
          v15 = *(v12 + 8 * v13);
          if (v15)
          {
            v13 = *(v15 + 24);
            if (v13 + 1 < v14)
            {
              bzero((a2 + 40056 + 8 * v13), 8 * (v14 - v13 - 2) + 8);
            }
          }

          else
          {
            *(v12 + 8 * v14) = 0;
            v13 = (v14 - 1);
          }

          v14 = v13;
        }

        while (v13 > 0);
      }

      if ((mosyntdata_StartNodeList(a1, a3, &v20) & 0x80000000) == 0)
      {
        __b.n128_u16[0] = 0;
        mosyntdata_AddNode(a1, a3, &v20, 1, v9, &__b);
        if ((v16 & 0x80000000) == 0)
        {
          v17 = v20;
          v20[6] = *(a2 + 4 * v7 + 80056);
          *(v17 + 14) = v7;
          v20 = 0;
          if (v7 >= 1)
          {
            v18 = (v6 + 3192);
            do
            {
              if (*v18)
              {
                AppendTree(a1, *v18, (*a3 + 8), &v20);
                if (v19 < 0)
                {
                  break;
                }
              }

              ++v18;
              --v7;
            }

            while (v7);
          }
        }
      }
    }
  }
}

uint64_t mosyntsentana_DisplayTree(uint64_t a1, uint64_t a2, __int16 *a3)
{
  result = mosyntdata_WriteTree(a1, *(a2 + 8), 2, a3);
  if ((result & 0x80000000) == 0)
  {

    return mosyntbase_WLn(a1);
  }

  return result;
}

uint64_t InsertRuleEdge(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  v46[2] = *MEMORY[0x277D85DE8];
  v9 = a2 + 98304;
  if (*(a2 + 100084) > *(a2 + 24))
  {
    return 0;
  }

  v41 = 0;
  v45[1] = 0;
  v46[0] = 0;
  v45[0] = 0;
  *(v46 + 6) = 0;
  v40 = 0;
  v39 = 0;
  memset(v43, 0, sizeof(v43));
  v44 = 0;
  RuleVisAndCost = mosyntkbsgram_GetRuleVisAndCost(a9, &v40, &v41);
  if ((RuleVisAndCost & 0x80000000) != 0)
  {
    return RuleVisAndCost;
  }

  if (a7)
  {
    v41 += *(a7 + 96);
    *(a7 + 112) = 1;
  }

  v38 = a7;
  if (a8)
  {
    v41 += *(a8 + 96);
    *(a8 + 112) = 1;
  }

  v37 = a8;
  v19 = a3 % 37;
  for (i = *(*(a2 + 32 + 8 * a6) + 8 * (a3 % 37)); ; i = *i)
  {
    v42 = i;
    if (!i)
    {
      goto LABEL_20;
    }

    if (*(i + 28) == a3 && *(i + 24) == a5)
    {
      v21 = mosyntknowl_DiffFeat(a1, (i + 32), a4);
      i = v42;
      if (!v21)
      {
        break;
      }
    }
  }

  if (v42)
  {
    v22 = v41;
    if (v41 >= *(v42 + 96))
    {
      return RuleVisAndCost;
    }

    if (*(v42 + 58) && *a2 >= 1)
    {
      v39 = 0;
      v23 = mosyntkbsymtab_AppConsFeatToString(a1, *(a2 + 8), *(v42 + 28), (v42 + 32), v43, 50, &v39);
      if ((v23 & 0x80000000) == 0)
      {
        return mosyntbase_WString3Ln(a1, "***** illegal attempt to replace terminal constituent '", 0, v43, 0x32u, "' by rule-generated identical constituent", 0);
      }

      return v23;
    }

    ++*(v9 + 1792);
    ++*(v9 + 1816);
    *(i + 80) = *a9;
    *(i + 96) = v22;
    *(i + 64) = v38;
    *(i + 72) = v37;
    if (!*(i + 56))
    {
      *(i + 16) = 0;
      v35 = *(v9 + 1768);
      if (v35)
      {
        v36 = (v35 + 16);
      }

      else
      {
        v36 = (v9 + 1760);
      }

      *v36 = i;
      *(v9 + 1768) = i;
      *(i + 56) = 1;
    }

    if (*a2 >= 3)
    {
      m2__cp__str("noted reparsing of edge ", v45, 0x1Eu);
      v32 = a1;
      v33 = a2;
      v31 = i;
      goto LABEL_31;
    }
  }

  else
  {
LABEL_20:
    ++*(v9 + 1780);
    ++*(v9 + 1804);
    if (v38)
    {
      if (v37)
      {
        v24 = v37[12];
        if (v38[12] < v24 && v24 < a6)
        {
          ++*(v9 + 1784);
          ++*(v9 + 1808);
        }
      }
    }

    RuleVisAndCost = mosyntpal_ALLOCATE(a1, &v42, 0x78u);
    if ((RuleVisAndCost & 0x80000000) == 0)
    {
      v25 = v42;
      *(v42 + 24) = a5;
      *(v25 + 26) = a6;
      *(v25 + 28) = a3;
      v26 = *(a4 + 16);
      *(v25 + 32) = *a4;
      *(v25 + 48) = v26;
      *(v25 + 58) = 0;
      *(v25 + 64) = v38;
      *(v25 + 72) = v37;
      *(v25 + 80) = *a9;
      *(v25 + 96) = v41;
      *(v25 + 104) = 0;
      *(v25 + 112) = 0;
      *(v25 + 57) = a6 == 0;
      v27 = *(a2 + 32 + 8 * a6);
      *v25 = *(v27 + 8 * v19);
      v28 = v42;
      *(v27 + 8 * v19) = v42;
      *(v28 + 16) = 0;
      v29 = *(v9 + 1768);
      v30 = (v29 ? v29 + 16 : v9 + 1760);
      *v30 = v28;
      *(v9 + 1768) = v28;
      *(v28 + 56) = 1;
      if (*a2 >= 3)
      {
        m2__cp__str("inserted edge", v45, 0x1Eu);
        v31 = v42;
        v32 = a1;
        v33 = a2;
LABEL_31:
        v23 = WriteEdge(v32, v33, v45, 30, v31);
        if ((v23 & 0x80000000) == 0)
        {
          m2__cp__str("subedge1", v45, 0x1Eu);
          v23 = WriteEdge(a1, a2, v45, 30, v38);
          if ((v23 & 0x80000000) == 0)
          {
            m2__cp__str("subedge2", v45, 0x1Eu);
            return WriteEdge(a1, a2, v45, 30, v37);
          }
        }

        return v23;
      }
    }
  }

  return RuleVisAndCost;
}

uint64_t FixEdgeAndSubEdges(uint64_t result)
{
  if (result)
  {
    v1 = result;
    do
    {
      if (*(v1 + 57))
      {
        break;
      }

      *(v1 + 57) = 1;
      if (*(v1 + 58))
      {
        break;
      }

      result = FixEdgeAndSubEdges(*(v1 + 64));
      v1 = *(v1 + 72);
    }

    while (v1);
  }

  return result;
}

void AppendTree(uint64_t a1, __n128 *a2, void *a3, uint64_t *a4)
{
  if (a2)
  {
    if (!a2[3].n128_u8[10])
    {
      v18 = 0;
      v17 = 0;
      if ((mosyntkbsgram_GetRuleVisAndCost(&a2[5], &v18, &v17) & 0x80000000) != 0)
      {
        return;
      }

      if (mosyntkbsgram_IsNilIter(a2[5].n128_u64) || !v18)
      {
        AppendNode(a1, a2, a3, a4);
        if (v15 < 0)
        {
          return;
        }

        v16 = *a4;
        *(v16 + 60) = 0;
        *(v16 + 64) = 0;
        v19 = 0;
        if ((AppendTree(a1, a2[4].n128_i64[0], v16 + 8, &v19) & 0x80000000) != 0)
        {
          return;
        }

        v11 = a2[4].n128_i64[1];
        v13 = (v16 + 8);
        v14 = &v19;
        v12 = a1;
      }

      else
      {
        if ((AppendTree(a1, a2[4].n128_i64[0], a3, a4) & 0x80000000) != 0)
        {
          return;
        }

        v11 = a2[4].n128_i64[1];
        v12 = a1;
        v13 = a3;
        v14 = a4;
      }

      AppendTree(v12, v11, v13, v14);
      return;
    }

    AppendNode(a1, a2, a3, a4);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = *a4;
      *(v9 + 60) = 1;
      mosyntdata_CopyTermInfo(a1, a2[4].n128_u64[0], (v9 + 64));
      if ((v10 & 0x80000000) == 0)
      {
        *(v9 + 8) = 0;
      }
    }
  }
}

void AppendNode(uint64_t a1, __n128 *a2, void *a3, void *a4)
{
  mosyntdata_AddNode(a1, a3, a4, 1, a2[1].n128_i16[6], a2 + 2);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *a4;
    v8 = a2[1].n128_i16[4];
    v7[12] = a2[6].n128_u32[0];
    v7[13] = v8;
    v7[14] = a2[1].n128_i16[5];
  }
}

uint64_t com_mosynt_GetCfgParamVal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char **a6)
{
  *a6 = a5;
  *(__c + 1) = -1;
  LOBYTE(__c[0]) = 0;
  v10 = 0;
  v7 = (*(a3 + 96))(a1, a2, "fecfg", a4, &v10, __c + 1, __c);
  if ((v7 & 0x80000000) == 0 && *(__c + 1))
  {
    v8 = cstdlib_strchr(*v10, LOBYTE(__c[0]));
    if (v8)
    {
      *v8 = 0;
    }

    *a6 = *v10;
  }

  return v7;
}

uint64_t com_mosynt_GetBacktransPOS(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  cstdlib_strcpy(__dst, "backtrans_");
  if (cstdlib_strlen(a4) < 0x81)
  {
    cstdlib_strcat(__dst, a4);
  }

  else
  {
    cstdlib_strncat(__dst, a4, 0x80uLL);
  }

  v10 = cstdlib_strchr(__dst, 40);
  if (v10)
  {
    *v10 = 0;
  }

  __src = 0;
  CfgParamVal = com_mosynt_GetCfgParamVal(a1, a2, a3, __dst, a4, &__src);
  if ((CfgParamVal & 0x80000000) == 0)
  {
    cstdlib_strncpy(a5, __src, 1uLL);
    a5[1] = 0;
  }

  return CfgParamVal;
}

uint64_t com_mosynt_GetBacktrans2POS(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, unsigned int a5, char *a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = cstdlib_strlen(__s);
  *a6 = 0;
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  CfgParamVal = 0;
  __sa = 0;
  v13 = v10;
  do
  {
    if (__s[v11] != 92)
    {
      cstdlib_strcpy(__dst, "backtrans2_");
      v14 = cstdlib_strlen(__dst);
      __dst[v14] = __s[v11];
      __dst[(v14 + 1)] = 0;
      CfgParamVal = com_mosynt_GetCfgParamVal(a1, a2, a3, __dst, a6, &__sa);
      if ((CfgParamVal & 0x80000000) != 0)
      {
        return CfgParamVal;
      }

      v15 = cstdlib_strlen(a6);
      v16 = __sa;
      v17 = cstdlib_strlen(__sa);
      if (v17 && v16 != a6 && v17 + v15 + 1 < a5)
      {
        if (v15)
        {
          cstdlib_strcat(a6, "\"");
        }

        cstdlib_strcat(a6, v16);
      }
    }

    ++v11;
  }

  while (v11 < v13);
  return CfgParamVal;
}

uint64_t com_mosynt_UseMosynt(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 *a4)
{
  __s1 = 0;
  CfgParamVal = com_mosynt_GetCfgParamVal(a1, a2, a3, "mosynt_usemosynt", "NO", &__s1);
  if ((CfgParamVal & 0x80000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = __s1;
    if (cstdlib_strcmp(__s1, "YES"))
    {
      v7 = cstdlib_strcmp(v6, "yes") == 0;
    }

    else
    {
      v7 = 1;
    }
  }

  *a4 = v7;
  return CfgParamVal;
}

uint64_t mosyntbase_ShowMemStat(uint64_t a1)
{
  v2 = mosyntpal_TotAllocSize();

  return mosyntbase_WInt3Ln(a1, "total allocated memory: ", 0, v2, "", 0);
}

uint64_t mosyntbase_WInt3Ln(uint64_t a1, char *a2, unsigned int a3, uint64_t a4, char *a5, unsigned int a6)
{
  v12 = a2;
  v11 = a3;
  v10 = a5;
  v9 = a6;
  m2__fix__carray__len(&v12, &v11);
  m2__fix__carray__len(&v10, &v9);
  result = mosyntpal_WriteString(a1, v12, v11);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntbase_WInt(a1, a4, 0);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntpal_WriteString(a1, v10, v9);
      if ((result & 0x80000000) == 0)
      {
        return mosyntpal_WriteLn(a1);
      }
    }
  }

  return result;
}

uint64_t mosyntbase_WString(uint64_t a1, char *a2, unsigned int a3)
{
  v6 = a2;
  v5 = a3;
  m2__fix__carray__len(&v6, &v5);
  return mosyntpal_WriteString(a1, v6, v5);
}

uint64_t mosyntbase_WInt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  result = mosyntpal_IntToString(a2, a3, v5, 100);
  if ((result & 0x80000000) == 0)
  {
    return mosyntpal_WriteString(a1, v5, 0x64u);
  }

  return result;
}

uint64_t mosyntbase_WStringLn(uint64_t a1, char *a2, unsigned int a3)
{
  v6 = a2;
  v5 = a3;
  m2__fix__carray__len(&v6, &v5);
  result = mosyntpal_WriteString(a1, v6, v5);
  if ((result & 0x80000000) == 0)
  {
    return mosyntpal_WriteLn(a1);
  }

  return result;
}

uint64_t mosyntbase_WString3Ln(uint64_t a1, char *a2, unsigned int a3, char *a4, unsigned int a5, char *a6, unsigned int a7)
{
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = a6;
  v9 = a7;
  m2__fix__carray__len(&v14, &v13);
  m2__fix__carray__len(&v12, &v11);
  m2__fix__carray__len(&v10, &v9);
  result = mosyntpal_WriteString(a1, v14, v13);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntpal_WriteString(a1, v12, v11);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntpal_WriteString(a1, v10, v9);
      if ((result & 0x80000000) == 0)
      {
        return mosyntpal_WriteLn(a1);
      }
    }
  }

  return result;
}

uint64_t mosyntbase_WriteDevelMessage(uint64_t a1, const char *a2, int a3, unsigned __int8 *a4, unsigned int a5, unsigned __int8 *a6, unsigned int a7, unsigned __int8 *a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v9 = HIDWORD(v21);
  v10 = v23;
  v11 = HIDWORD(v23);
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = a7;
  v14 = a8;
  m2__fix__carray__len(&v20, &v19);
  m2__fix__carray__len(&v18, &v17);
  m2__fix__carray__len(&v16, &v15);
  m2__fix__carray__len(&v14, va);
  *(&v13 + 1) = __PAIR64__(v11, v10);
  *&v13 = __PAIR64__(v9, v21);
  result = mosyntbase_WriteMessage(a1, v20, v19, v18, v17, v16, v15, v14, v13);
  if ((result & 0x80000000) == 0)
  {
    return mosyntpal_CheckInterrupt();
  }

  return result;
}

uint64_t mosyntbase_WriteMessage(uint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 *a4, unsigned int a5, unsigned __int8 *a6, unsigned int a7, unsigned __int8 *a8, __int128 a9)
{
  v10 = *(&a9 + 4);
  v11 = HIDWORD(a9);
  v21 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = a6;
  v14 = a7;
  v13 = a8;
  memset(v20, 0, 512);
  m2__fix__carray__len(&v19, &v18);
  m2__fix__carray__len(&v17, &v16);
  m2__fix__carray__len(&v15, &v14);
  m2__fix__carray__len(&v13, &a9);
  result = mosyntbase_ComposeMessage(v19, v18, v17, v16, v15, v14, v13, a9, v10, HIDWORD(v10), v11, v20, 1000);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntpal_WriteString(a1, v20, 0x3E8u);
    if ((result & 0x80000000) == 0)
    {
      return mosyntpal_CheckInterrupt();
    }
  }

  return result;
}

uint64_t mosyntbase_ComposeMessage(unsigned __int8 *a1, int a2, unsigned __int8 *a3, unsigned int a4, unsigned __int8 *a5, unsigned int a6, unsigned __int8 *a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, _BYTE *a12, int a13)
{
  v39 = *MEMORY[0x277D85DE8];
  v34 = a1;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v28 = a7;
  v27 = a8;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  m2__fix__carray__len(&v34, &v33);
  m2__fix__carray__len(&v32, &v31);
  m2__fix__carray__len(&v30, &v29);
  m2__fix__carray__len(&v28, &v27);
  v26 = 0;
  *a12 = 0;
  v13 = v33;
  if (v33 >= 1)
  {
    v14 = 0;
    v15 = 1;
    v16 = 1;
    do
    {
      v17 = v13 - 1;
      v18 = &v34[v14];
      result = v34[v14];
      if (result == 37)
      {
        if (v14 < v17)
        {
          v20 = v18[1];
          if (v20 == 100 || v20 == 105)
          {
            switch(v15)
            {
              case 3:
                v24 = a11;
                goto LABEL_25;
              case 2:
                v24 = a10;
                goto LABEL_25;
              case 1:
                v24 = a9;
LABEL_25:
                result = mosyntpal_IntToString(v24, 0, v37, 20);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                break;
              default:
                mosyntbase_CCopy("%d", 0, v37, 20, &v25);
                break;
            }

            mosyntbase_App(a12, a13, &v26, v37, 0x14u, &v25);
            ++v15;
LABEL_33:
            v23 = 2;
            goto LABEL_34;
          }

          if (v20 == 115)
          {
            switch(v16)
            {
              case 3:
                v21 = v28;
                v22 = v27;
                break;
              case 2:
                v21 = v30;
                v22 = v29;
                break;
              case 1:
                v21 = v32;
                v22 = v31;
                break;
              default:
                v36 = "%s";
                v35 = 0;
                m2__fix__carray__len(&v36, &v35);
                v21 = v36;
                v22 = v35;
                break;
            }

            mosyntbase_App(a12, a13, &v26, v21, v22, &v25);
            ++v16;
            goto LABEL_33;
          }
        }
      }

      else if (result == 92)
      {
        if (v14 < v17 && v18[1] == 110)
        {
          LOWORD(v37[0]) = mosyntpal_EOL();
          mosyntbase_App(a12, a13, &v26, v37, 0x14u, &v25);
          goto LABEL_33;
        }
      }

      else if (!v34[v14])
      {
        return result;
      }

      LOWORD(v37[0]) = result;
      mosyntbase_App(a12, a13, &v26, v37, 0x14u, &v25);
      v23 = 1;
LABEL_34:
      v14 += v23;
      v13 = v33;
    }

    while (v14 < v33);
  }

  return 0;
}

uint64_t mosyntbase_Length(uint64_t a1, unsigned int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  result = 0;
  while (*(a1 + result))
  {
    if (a2 == ++result)
    {
      return a2;
    }
  }

  return result;
}

uint64_t mosyntbase_Copy(uint64_t a1, unsigned int a2, uint64_t a3, int a4, BOOL *a5)
{
  if (a2 < 1)
  {
    v6 = 0;
LABEL_11:
    *(a3 + v6) = 0;
    v8 = 1;
  }

  else
  {
    v5 = 0;
    v6 = a2;
    while (*(a1 + v5) && v5 < a4 - 1)
    {
      *(a3 + v5) = *(a1 + v5);
      if (a2 == ++v5)
      {
        goto LABEL_11;
      }
    }

    *(a3 + v5) = 0;
    v8 = *(a1 + v5) == 0;
  }

  *a5 = v8;
  return 0;
}

uint64_t mosyntbase_CCopy(const char *a1, unsigned int a2, uint64_t a3, int a4, BOOL *a5, ...)
{
  v15 = a1;
  v14 = a2;
  m2__fix__carray__len(&v15, &v14);
  v8 = v14;
  if (v14 < 1)
  {
    v8 = 0;
LABEL_11:
    *(a3 + v8) = 0;
    v12 = 1;
  }

  else
  {
    v9 = 0;
    v10 = v15;
    while (v10[v9] && v9 < a4 - 1)
    {
      *(a3 + v9) = v10[v9];
      if (v8 == ++v9)
      {
        goto LABEL_11;
      }
    }

    *(a3 + v9) = 0;
    v12 = v10[v9] == 0;
  }

  *a5 = v12;
  return 0;
}

uint64_t mosyntbase_AppendTo(uint64_t a1, int a2, _BYTE *a3, unsigned int a4, BOOL *a5)
{
  v5 = (a2 - 1);
  if (a2 <= 1)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = 0;
    while (*(a1 + v6))
    {
      if (v5 == ++v6)
      {
        LODWORD(v6) = a2 - 1;
        break;
      }
    }
  }

  if (a4 < 1)
  {
LABEL_14:
    *(a1 + v6) = 0;
    v9 = 1;
  }

  else
  {
    v6 = v6;
    v7 = a4;
    while (*a3 && v5 > v6)
    {
      *(a1 + v6++) = *a3++;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }

    *(a1 + v6) = 0;
    v9 = *a3 == 0;
  }

  *a5 = v9;
  return 0;
}

uint64_t mosyntbase_App(uint64_t a1, int a2, int *a3, uint64_t a4, unsigned int a5, BOOL *a6)
{
  v6 = a2 - 1;
  v7 = *a3;
  v8 = a5 > 0;
  v9 = 0;
  if (*a3 < a2 - 1 && a5 >= 1)
  {
    while (*(a4 + v9))
    {
      *(a1 + v7) = *(a4 + v9);
      v7 = *a3 + 1;
      *a3 = v7;
      v8 = ++v9 < a5;
      if (v7 >= v6 || v9 >= a5)
      {
        goto LABEL_13;
      }
    }

    v8 = 1;
LABEL_13:
    v9 = v9;
  }

  if (v7 < a2)
  {
    v6 = v7;
  }

  *(a1 + v6) = 0;
  v12 = !v8 || *(a4 + v9) == 0;
  *a6 = v12;
  return 0;
}

uint64_t mosyntbase_CApp(uint64_t a1, int a2, int *a3, unsigned __int8 *a4, unsigned int a5, BOOL *a6)
{
  v12 = a4;
  v11 = a5;
  m2__fix__carray__len(&v12, &v11);
  mosyntbase_App(a1, a2, a3, v12, v11, a6);
  return 0;
}

uint64_t mosyntbase_GetStr(uint64_t a1, int a2, int *a3, _BYTE *a4, int a5, BOOL *a6)
{
  v6 = *a3;
  if (a2 > v6)
  {
    v7 = (a1 + v6);
    v8 = a2 - v6;
    v9 = v6 + 1;
    do
    {
      v10 = *v7++;
      if ((v10 - 33) < 0xFFFFFFE0)
      {
        break;
      }

      *a3 = v9++;
      --v8;
    }

    while (v8);
  }

  *a4 = 0;
  v11 = *a3;
  if (*a3 >= a2)
  {
    LODWORD(v12) = 0;
    v15 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = *(a1 + v11);
      if (v14 < 0x21)
      {
        break;
      }

      if (v12 >= a5 - 1)
      {
        v13 = 0;
      }

      else
      {
        a4[v12] = v14;
        v11 = *a3;
      }

      ++v12;
      *a3 = ++v11;
    }

    while (v11 < a2);
    v15 = v13 != 0;
  }

  a4[v12] = 0;
  if (v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  *a6 = v16;
  return 0;
}

uint64_t mosyntbase_GetSepPartStr(uint64_t a1, int a2, int *a3, unsigned __int8 a4, _BYTE *a5, int a6, char *a7)
{
  v7 = *a3;
  if ((*a3 & 0x80000000) == 0)
  {
    if (v7 >= a2)
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = *(a1 + v7);
        if (v10 == a4 || v10 == 0)
        {
          break;
        }

        if (v8 >= a6)
        {
          v9 = 0;
        }

        else
        {
          a5[v8++] = v10;
          v7 = *a3;
        }

        *a3 = ++v7;
      }

      while (v7 < a2);
    }

    if (v8 < a6)
    {
      a5[v8] = 0;
      v7 = *a3;
    }

    if (v7 >= a2)
    {
      goto LABEL_23;
    }

    if (*(a1 + v7) == a4)
    {
      v12 = v7 + 1;
    }

    else
    {
      if (*(a1 + v7))
      {
LABEL_23:
        *a7 = v9;
        return 0;
      }

      v12 = -1;
    }

    *a3 = v12;
    goto LABEL_23;
  }

  *a7 = 0;
  *a5 = 0;
  return 0;
}

BOOL mosyntbase_Equal(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 < 1)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v4 = 0;
    while (v4 < a4 && *(a1 + v4) && *(a1 + v4) == *(a3 + v4))
    {
      if (a2 == ++v4)
      {
        LODWORD(v4) = a2;
        return v4 >= a4 || *(a3 + v4) == 0;
      }
    }

    if (*(a1 + v4))
    {
      return 0;
    }
  }

  return v4 >= a4 || *(a3 + v4) == 0;
}

BOOL mosyntbase_CEqual(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = a4;
  m2__fix__carray__len(&v8, &v7);
  m2__fix__carray__len(&v6, &v5);
  return mosyntbase_Equal(v8, v7, v6, v5);
}

uint64_t mosyntbase_UpperCase(_BYTE *a1, unsigned int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    do
    {
      v3 = *a1;
      if (!*a1)
      {
        break;
      }

      if ((v3 - 97) <= 0x19)
      {
        *a1 = v3 - 32;
      }

      ++a1;
      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t mosyntbase_Compare(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  if (a2 < 1)
  {
    LODWORD(v5) = 0;
    v6 = 1;
  }

  else
  {
    v5 = 0;
    while (v5 < a4 && *(a1 + v5) && *(a1 + v5) == *(a3 + v5))
    {
      if (a2 == ++v5)
      {
        v6 = 1;
        LODWORD(v5) = a2;
        goto LABEL_10;
      }
    }

    v6 = *(a1 + v5) == 0;
  }

LABEL_10:
  v7 = v5 >= a4 || *(a3 + v5) == 0;
  v8 = !v6 || !v7;
  v9 = v6 || v7;
  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = 2;
  }

  if (!v9)
  {
    if (*(a1 + v5) < *(a3 + v5))
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  *a5 = v10;
  return 0;
}

uint64_t mosyntbase_FindSubstring(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int *a6)
{
  v6 = a5 & ~(a5 >> 31);
  if (a5 >= 1)
  {
    if (a4 < 1)
    {
      goto LABEL_27;
    }

    v7 = 0;
    while (*(a3 + v7))
    {
      if (a4 == ++v7)
      {
        LODWORD(v7) = a4;
        break;
      }
    }

    if (v6 >= v7)
    {
      goto LABEL_27;
    }
  }

  if (v6 >= a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *(a3 + v6);
      if (*(a3 + v6))
      {
        v10 = v8 < a2;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
        break;
      }

      v11 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        break;
      }

      v12 = v11 == v9;
      v13 = v11 == v9 ? 0 : v8;
      if (v12)
      {
        ++v8;
      }

      else
      {
        v8 = 0;
      }

      v6 = v6 - v13 + 1;
    }

    while (v6 < a4);
  }

  if (v8 < a2 && *(a1 + v8))
  {
LABEL_27:
    v14 = -1;
  }

  else
  {
    v14 = v6 - v8;
  }

  *a6 = v14;
  return 0;
}

uint64_t mosyntbase_CFindSubstring(unsigned __int8 *a1, int a2, uint64_t a3, int a4, int a5, int *a6)
{
  v12 = a1;
  v11 = a2;
  m2__fix__carray__len(&v12, &v11);
  mosyntbase_FindSubstring(v12, v11, a3, a4, a5, a6);
  return 0;
}

uint64_t mosyntbase_RemoveSubstring(int a1, int a2, uint64_t a3, int a4, _BYTE *a5)
{
  *a5 = 1;
  if (a4 < 1)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = 0;
    while (*(a3 + v5))
    {
      if (a4 == ++v5)
      {
        LODWORD(v5) = a4;
        break;
      }
    }
  }

  if (v5 > a1)
  {
    v6 = a2 + a1;
    if (v6 <= v5)
    {
      if (v6 < v5)
      {
        v7 = (a3 + a1);
        v8 = (a3 + v6);
        v9 = v5 - a2;
        do
        {
          v10 = *v8++;
          *v7++ = v10;
          ++a1;
        }

        while (v9 != a1);
      }
    }

    else
    {
      *a5 = 0;
    }

    if (a1 < a4)
    {
      a5 = (a3 + a1);
    }

    else
    {
      a5 = (a3 + a4 - 1);
    }
  }

  *a5 = 0;
  return 0;
}

BOOL mosyntbase_IsStringStart(_BYTE *a1, unsigned int a2, uint64_t a3, int a4, int a5)
{
  if (a2 < 1)
  {
    return 1;
  }

  v5 = a5;
  v6 = a2;
  while (1)
  {
    v7 = *a1 && v5 < a4;
    if (!v7 || *a1 != *(a3 + v5))
    {
      break;
    }

    ++v5;
    ++a1;
    if (!--v6)
    {
      return 1;
    }
  }

  return *a1 == 0;
}

uint64_t mosyntbase_DoSubstrSubst(_BYTE *a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  if (!*a1)
  {
    if (a6 < 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = 0;
      while (*(a5 + v25) && v25 < a8 - 1)
      {
        *(a7 + v25) = *(a5 + v25);
        if (a6 == ++v25)
        {
          v25 = a6;
          goto LABEL_36;
        }
      }
    }

    goto LABEL_36;
  }

  v30 = 0;
  if (a6 < 1)
  {
    LODWORD(v25) = 0;
  }

  else
  {
    v15 = 0;
    v16 = a2;
    do
    {
      v17 = *(a5 + v15);
      if (!v17)
      {
        break;
      }

      v18 = v15;
      v19 = v16;
      v20 = a1;
      v21 = v18;
      if (a2 < 1)
      {
        mosyntbase_App(a7, a8, &v30, a3, a4, &v29);
        LODWORD(v24) = 0;
      }

      else
      {
        while (1)
        {
          v22 = *v20 && v21 < a6;
          if (!v22 || *v20 != *(a5 + v21))
          {
            break;
          }

          ++v21;
          ++v20;
          if (!--v19)
          {
            goto LABEL_17;
          }
        }

        if (*v20)
        {
          v23 = v30;
          *(a7 + v30) = v17;
          v30 = v23 + 1;
          LODWORD(v24) = 1;
          goto LABEL_21;
        }

LABEL_17:
        mosyntbase_App(a7, a8, &v30, a3, a4, &v29);
        v24 = 0;
        while (a1[v24])
        {
          if (v16 == ++v24)
          {
            LODWORD(v24) = v16;
            break;
          }
        }
      }

LABEL_21:
      v15 = v24 + v18;
    }

    while (v24 + v18 < a6);
    LODWORD(v25) = v30;
  }

  if (v25 < a8)
  {
    v25 = v25;
LABEL_36:
    *(a7 + v25) = 0;
  }

  return 0;
}

uint64_t mosyntaccphr_TreatSyntTree(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v290 = *MEMORY[0x277D85DE8];
  v274 = 0;
  SentTermCommList = mosyntpal_ALLOCATE(a1, &v274, 0x60u);
  if ((SentTermCommList & 0x80000000) != 0)
  {
    return SentTermCommList;
  }

  v17 = v274;
  *v274 = a2;
  *(v17 + 8) = a3;
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 28) = a6;
  *(v17 + 32) = 0;
  *(v17 + 40) = a7;
  *(v274 + 48) = mosyntkbaccphr_Nil();
  *(v274 + 52) = mosyntkbaccphr_Nil();
  v18 = mosyntkbaccphr_Nil();
  v19 = v274;
  v20 = v274;
  *(v274 + 56) = v18;
  v21 = (v20 + 56);
  if (!a8)
  {
    goto LABEL_555;
  }

  v22 = *(v19 + 16);
  if (v22 != mosyntkbaccphr_NilAccPhr())
  {
    v24 = (v19 + 48);
    v23 = *(v19 + 48);
    if (v23 == mosyntkbaccphr_Nil())
    {
      FindDomainById(v19, *(v19 + 28), (v19 + 48));
      v25 = *(v19 + 48);
      if (v25 == mosyntkbaccphr_Nil())
      {
        v26 = mosyntkbaccphr_AccPhrDomains(*(v19 + 16));
        *(v19 + 48) = v26;
      }

      else
      {
        v26 = *v24;
      }

      *(v19 + 52) = v26;
      *(v19 + 56) = v26;
    }

    *&v283 = 0;
    SentTermCommList = mosyntdata_GetSentTermCommList(a1, *(v19 + 40), *(a8 + 52), &v283);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    v27 = v283;
    v28 = *(v19 + 16);
    if (v28 == mosyntkbaccphr_NilAccPhr())
    {
      *(v19 + 48) = mosyntkbaccphr_Nil();
      *(v19 + 52) = mosyntkbaccphr_Nil();
      *(v19 + 56) = mosyntkbaccphr_Nil();
      goto LABEL_65;
    }

    if (!v27)
    {
      goto LABEL_65;
    }

    BestScenarioPathSuffix = 0;
    while (1)
    {
      while (*(v27 + 2) != 5)
      {
LABEL_61:
        v27 = *v27;
        if (!v27)
        {
          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            return BestScenarioPathSuffix;
          }

          goto LABEL_65;
        }
      }

      if (*(v27 + 3))
      {
        v30 = *v24;
      }

      else
      {
        v30 = mosyntkbaccphr_Nil();
        *v24 = v30;
      }

      if (v30 == mosyntkbaccphr_Nil())
      {
        FindDomainById(v19, *(v19 + 28), (v19 + 48));
        v31 = *(v19 + 48);
        if (v31 == mosyntkbaccphr_Nil())
        {
          v32 = mosyntkbaccphr_AccPhrDomains(*(v19 + 16));
          *(v19 + 48) = v32;
        }

        else
        {
          v32 = *v24;
        }

        BestScenarioPathSuffix = 0;
        *(v19 + 52) = v32;
        *v21 = v32;
      }

      v33 = *(v27 + 3);
      if (v33 != 2)
      {
        break;
      }

      v37 = *v19;
      if (!*(v27 + 36))
      {
        if (v37 >= 1)
        {
          SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
          if ((SentTermCommList & 0x80000000) != 0)
          {
            return SentTermCommList;
          }

          v39 = mosyntbase_WriteMessage(a1, "Resetting sentence domain\\n", 0, "", 0, "", 0, "", 0);
          goto LABEL_54;
        }

LABEL_55:
        v40 = *(v19 + 52);
LABEL_60:
        *v21 = v40;
        goto LABEL_61;
      }

      if (v37 >= 1)
      {
        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }

        SentTermCommList = mosyntbase_WriteMessage(a1, "Setting sentence domain to '%s'\\n", 0, v27 + 36, 0x64u, "", 0, "", 0);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }
      }

      FindDomainByName(v19, v27 + 36, v21);
      v38 = *(v19 + 56);
      if (v38 == mosyntkbaccphr_Nil())
      {
        if (*v19 >= 1)
        {
          SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
          if ((SentTermCommList & 0x80000000) != 0)
          {
            return SentTermCommList;
          }

          v39 = mosyntbase_WriteMessage(a1, "Didn't find sentence domain '%s'\\n", 0, v27 + 36, 0x64u, "", 0, "", 0);
LABEL_54:
          BestScenarioPathSuffix = v39;
          if ((v39 & 0x80000000) != 0)
          {
            return BestScenarioPathSuffix;
          }

          goto LABEL_55;
        }

LABEL_45:
        BestScenarioPathSuffix = 0;
        goto LABEL_55;
      }

      BestScenarioPathSuffix = 0;
      v27 = *v27;
      if (!v27)
      {
        goto LABEL_65;
      }
    }

    if (v33 != 1)
    {
      if (!v33 && *v19 >= 1)
      {
        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }

        BestScenarioPathSuffix = mosyntbase_WriteMessage(a1, "Resetting default domain\\n", 0, "", 0, "", 0, "", 0);
        if ((BestScenarioPathSuffix & 0x80000000) != 0)
        {
          return BestScenarioPathSuffix;
        }
      }

      goto LABEL_61;
    }

    v34 = *v19;
    if (*(v27 + 36))
    {
      if (v34 >= 1)
      {
        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }

        SentTermCommList = mosyntbase_WriteMessage(a1, "Setting paragraph domain to '%s'\\n", 0, v27 + 36, 0x64u, "", 0, "", 0);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }
      }

      FindDomainByName(v19, v27 + 36, (v19 + 52));
      v35 = *(v19 + 52);
      if (v35 != mosyntkbaccphr_Nil())
      {
        goto LABEL_45;
      }

      if (*v19 >= 1)
      {
        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }

        v36 = mosyntbase_WriteMessage(a1, "Didn't find paragraph domain '%s'\\n", 0, v27 + 36, 0x64u, "", 0, "", 0);
        goto LABEL_49;
      }

      BestScenarioPathSuffix = 0;
    }

    else if (v34 >= 1)
    {
      SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      v36 = mosyntbase_WriteMessage(a1, "Resetting paragraph domain\\n", 0, "", 0, "", 0, "", 0);
LABEL_49:
      BestScenarioPathSuffix = v36;
      if ((v36 & 0x80000000) != 0)
      {
        return BestScenarioPathSuffix;
      }
    }

    v40 = *v24;
    *(v19 + 52) = *v24;
    goto LABEL_60;
  }

LABEL_65:
  v41 = v274;
  *(v274 + 60) = *(v274 + 56);
  v42 = mosyntkbaccphr_AccPhrType(*(v41 + 16));
  v43 = v274;
  if (!v42)
  {
    v278 = 0;
    v50 = mosyntkbsymtab_WildConsId();
    SentTermCommList = GenAccTree(a1, v43, a8, &v278);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    v51 = v278;
    LODWORD(v283) = 0;
    SentTermCommList = Accentuation1(a1, v43, v278, &v283);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    *&v281[0] = 0;
    v277 = 0;
    *&v283 = 0;
    SentTermCommList = GetInitPhrasing1(a1, v43, v51, 3, 0, &v277, &v283);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    v52 = v283 ? *(v283 + 24) : 0;
    SentTermCommList = mosyntdata_GetSentTermCommList(a1, *(v43 + 40), v52, v281);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    v53 = FinalBoundaryIndex(a1, *&v281[0]);
    SentTermCommList = AppendInitBound(a1, v43, &v277, &v283, v53, 0);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    *(v283 + 16) = v52;
    if (*v43 <= 0)
    {
      v55 = v277;
    }

    else
    {
      SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, "initial phrasing: ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      v54 = v277;
      SentTermCommList = WriteBoundList(a1, v43, v277, 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WLn(a1);
      v55 = v54;
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }
    }

    v78 = *(v43 + 24);
    v283 = 0u;
    v284 = 0u;
    v285 = 0u;
    v286 = 0u;
    v287 = 0u;
    v288 = 0u;
    v289 = 0;
    v273 = v55;
    if (v55)
    {
      v79 = 0;
      BestScenarioPathSuffix = 0;
      v80 = v55;
      do
      {
        v81 = *(v80 + 4);
        if (v81 < 100)
        {
          *(&v283 + v81) = 1;
        }

        else
        {
          SentTermCommList = mosyntbase_WString(a1, "*** maximum nr of phrase boundary index levels exceeded", 0);
          if ((SentTermCommList & 0x80000000) != 0)
          {
            return SentTermCommList;
          }

          BestScenarioPathSuffix = mosyntbase_WLn(a1);
          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            return BestScenarioPathSuffix;
          }

          LOWORD(v81) = *(v80 + 4);
          v55 = v273;
        }

        if (v79 <= v81)
        {
          v79 = v81;
        }

        v80 = *v80;
      }

      while (v80);
    }

    else
    {
      BestScenarioPathSuffix = 0;
      v79 = 0;
    }

    v149 = v79;
    for (i = 1; i != 3; ++i)
    {
      if (v149 >= 2)
      {
        v151 = v149;
        do
        {
          if (v151 > 0x63 || *(&v283 + v151))
          {
            if (v55)
            {
              v152 = 0;
              v153 = 0;
              v154 = 0;
              v155 = v55;
              while (1)
              {
                v156 = v155[4];
                if ((v156 & 0x80000000) == 0)
                {
                  break;
                }

LABEL_386:
                v155 = *v155;
                if (!v155)
                {
                  goto LABEL_387;
                }
              }

              if (!v153 || (v153[4] & 0x80000000) == 0)
              {
                v154 = v153;
              }

              if (v152)
              {
                v157 = v152[4];
                if (v151 == v157 && v154)
                {
                  if (i == 1)
                  {
                    v158 = v154[5];
                    if (v158 || v157 < v154[4])
                    {
                      if (v157 <= v156 || v152[5])
                      {
                        goto LABEL_384;
                      }
                    }

                    else
                    {
                      v158 = 0;
                    }

LABEL_383:
                    v152[4] = -1;
                    v154[5] = v152[5] + v158;
                    v154[6] += v152[6];
                    goto LABEL_384;
                  }

                  if (v78 > 1 || v157 >= 3)
                  {
                    v159 = v154[6];
                    if (v159 >= 5)
                    {
                      v160 = v78 - 1;
                    }

                    else
                    {
                      v160 = v78;
                    }

                    if (v159 < 3)
                    {
                      v160 = v78 + 1;
                    }

                    v161 = v152[6];
                    v162 = v161 >= 5 ? v78 - 1 : v78;
                    v163 = v161 >= 3 ? v162 : v78 + 1;
                    if (v157 >= v154[4])
                    {
                      if (v157 >= v156 && v160 >= v154[5])
                      {
                        v158 = v154[5];
                        goto LABEL_383;
                      }

                      if (v157 > v156 && v163 >= v152[5])
                      {
                        v158 = v154[5];
                        goto LABEL_383;
                      }
                    }
                  }
                }

LABEL_384:
                v153 = v152;
              }

              else
              {
                v153 = 0;
              }

              v152 = v155;
              goto LABEL_386;
            }

LABEL_387:
            if (*v43 >= 1)
            {
              SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                return SentTermCommList;
              }

              v164 = i == 1 ? "after clitic melting" : "after rhythmic melting";
              SentTermCommList = mosyntbase_WString(a1, v164, 0);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                return SentTermCommList;
              }

              SentTermCommList = mosyntbase_WString(a1, ", index ", 0);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                return SentTermCommList;
              }

              SentTermCommList = mosyntbase_WInt(a1, v151, 0);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                return SentTermCommList;
              }

              SentTermCommList = mosyntbase_WString(a1, ": ", 0);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                return SentTermCommList;
              }

              SentTermCommList = WriteBoundList(a1, v43, v273, 0);
              if ((SentTermCommList & 0x80000000) != 0)
              {
                return SentTermCommList;
              }

              BestScenarioPathSuffix = mosyntbase_WLn(a1);
              v55 = v273;
              if ((BestScenarioPathSuffix & 0x80000000) != 0)
              {
                return BestScenarioPathSuffix;
              }
            }
          }

          v196 = v151-- <= 2;
        }

        while (!v196);
      }
    }

    if ((BestScenarioPathSuffix & 0x80000000) != 0)
    {
      return BestScenarioPathSuffix;
    }

    if (mosyntkbsymtab_PropTabAvailable(*(v43 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(v43 + 8), v50, 8, 1))
    {
LABEL_404:
      if (*v43 >= 1)
      {
        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }

        SentTermCommList = mosyntbase_WStringLn(a1, "before setting phrase types: ", 0);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }

        SentTermCommList = WriteBoundList(a1, v43, v273, 1);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }

        SentTermCommList = mosyntbase_WLn(a1);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }
      }

      goto LABEL_437;
    }

    if (v273)
    {
      v165 = 0;
      v166 = 0;
      v167 = 0;
      v168 = v273;
      while (1)
      {
        if (*(v168 + 4) > 1u)
        {
          v169 = v166;
          goto LABEL_422;
        }

        v165 = 0;
        v169 = 0;
        if (!v167 || !v166)
        {
          goto LABEL_420;
        }

        v167 = v168;
        if (v166 != v168)
        {
          break;
        }

LABEL_422:
        v170 = *(v168 + 15);
        if (v170 <= 0)
        {
          v168 = *v168;
        }

        else
        {
          v168 = *v168;
          if (v165 == 0 || v165 >= v170)
          {
            v169 = v168;
            v165 = v170;
          }
        }

        v166 = v169;
        if (!v168)
        {
          goto LABEL_428;
        }
      }

      do
      {
        if ((v166[1] & 0x80000000) == 0)
        {
          *(v166 + 4) = -1;
        }

        v166 = *v166;
      }

      while (v166 != v168);
      v169 = 0;
      v165 = 0;
LABEL_420:
      v167 = v168;
      goto LABEL_422;
    }

LABEL_428:
    if (*v43 >= 1)
    {
      SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, "after postcyclic deletion: ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = WriteBoundList(a1, v43, v273, 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WLn(a1);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      goto LABEL_404;
    }

LABEL_437:
    if (v273)
    {
      v172 = 0;
      v173 = 0;
      v174 = 0;
      v175 = 0;
      LODWORD(v276) = 0;
      *&v283 = 0;
      *&v281[0] = 0;
      v176 = v273;
      v177 = 1;
      do
      {
        mosyntdata_GetSentTermCommList(a1, *(v43 + 40), *(v176 + 4), &v283);
        mosyntdata_GetPunctFromCommandList(a1, v283, &v276, v281);
        if (v276 == 11)
        {
          v178 = 1;
        }

        else
        {
          v178 = v172;
        }

        if (v276 == 10)
        {
          v173 = 1;
        }

        else
        {
          v172 = v178;
        }

        if (*(v176 + 14) >= 1)
        {
          if (mosyntkbsymtab_PropTabAvailable(*(v43 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(v43 + 8), *(v176 + 14), 6, 2))
          {
            v177 = 0;
            v175 = 1;
          }

          else if (v177 || !mosyntkbsymtab_PropTabAvailable(*(v43 + 8)))
          {
            v177 = 0;
          }

          else
          {
            v177 = 0;
            if (mosyntkbsymtab_HasIntPropValue(a1, *(v43 + 8), *(v176 + 14), 6, 3))
            {
              v174 = 1;
            }
          }
        }

        v176 = *v176;
      }

      while (v176);
      if (v172)
      {
        v179 = 9;
      }

      else
      {
        v179 = 2;
      }

      if (v173)
      {
        if (v174)
        {
          v179 = 8;
        }

        else
        {
          v179 = 4;
        }

        if (!v175)
        {
          if (v174)
          {
            v256 = v273;
            do
            {
              if (*(v256 + 14) >= 1 && mosyntkbsymtab_PropTabAvailable(*(v43 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(v43 + 8), *(v256 + 14), 6, 3))
              {
                *(v256 + 4) = 2;
              }

              v256 = *v256;
            }

            while (v256);
            v201 = 1;
          }

          else
          {
            v201 = 0;
            v179 = 4;
          }

LABEL_531:
          if (v273)
          {
            v202 = 0;
            v203 = 1;
            v204 = v273;
            do
            {
              if (v204[1] < 0)
              {
                v205 = *v204;
              }

              else
              {
                v205 = *v204;
                if (v202)
                {
                  if (!v205)
                  {
                    *(v202 + 8) = v179;
                    break;
                  }

                  if (v201)
                  {
                    if (v203)
                    {
                      v203 = 0;
                      *(v202 + 8) = 6;
                    }

                    else
                    {
                      *(v202 + 8) = 7;
                    }
                  }

                  else
                  {
                    *(v202 + 8) = 1;
                  }
                }

                v202 = v204;
              }

              v204 = v205;
            }

            while (v205);
          }

          if (*v43 >= 1)
          {
            SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = mosyntbase_WStringLn(a1, "after setting phrase types: ", 0);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = WriteBoundList(a1, v43, v273, 1);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = mosyntbase_WLn(a1);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }
          }

          v214 = mosyntkbsymtab_WildConsId();
          if (mosyntkbsymtab_PropTabAvailable(*(v43 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(v43 + 8), v214, 9, 1))
          {
            if (!v273)
            {
              goto LABEL_653;
            }

            v215 = v273;
            do
            {
              if (*(v215 + 15))
              {
                ++*(v215 + 15);
              }

              v215 = *v215;
            }

            while (v215);
          }

          if (v273)
          {
            v216 = 0;
            v217 = 0;
            v218 = 0;
            BestScenarioPathSuffix = 0;
            v219 = v273;
            do
            {
              if ((v219[1] & 0x80000000) == 0)
              {
                if (v217)
                {
                  *(v217 + 15) = 1;
                }

                *&v283 = 0;
                SentTermCommList = mosyntpal_ALLOCATE(a1, &v283, 0x12Au);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  return SentTermCommList;
                }

                if (v218)
                {
                  for (j = 0; j != 99; ++j)
                  {
                    *(v283 + j) = 0;
                  }

                  for (k = v218; k != v219; k = *k)
                  {
                    v222 = *(k + 15);
                    if (v222 <= 98)
                    {
                      *(v283 + v222) = 1;
                    }
                  }

                  v223 = 0;
                  v224 = 1;
                  v225 = v283;
                  do
                  {
                    if (*(v225 + v223))
                    {
                      *(v225 + 2 * v223 + 100) = v224++;
                    }

                    ++v223;
                  }

                  while (v223 != 99);
                  while (v218 != v219)
                  {
                    v226 = *(v218 + 15);
                    if (v226 <= 98)
                    {
                      v227 = v283;
                      if (*v43 >= 2 && *(v283 + 2 * v226 + 100) != v226)
                      {
                        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          return SentTermCommList;
                        }

                        SentTermCommList = mosyntbase_WString(a1, "accent normalization: ", 0);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          return SentTermCommList;
                        }

                        SentTermCommList = mosyntbase_WInt(a1, *(v218 + 15), 0);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          return SentTermCommList;
                        }

                        SentTermCommList = mosyntbase_WString(a1, " changed to ", 0);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          return SentTermCommList;
                        }

                        SentTermCommList = mosyntbase_WInt(a1, *(v283 + 2 * *(v218 + 15) + 100), 0);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          return SentTermCommList;
                        }

                        SentTermCommList = mosyntbase_WLn(a1);
                        if ((SentTermCommList & 0x80000000) != 0)
                        {
                          return SentTermCommList;
                        }

                        v227 = v283;
                        LOWORD(v226) = *(v218 + 15);
                      }

                      *(v218 + 15) = *(v227 + 2 * v226 + 100);
                      if (mosyntkbsymtab_PropTabAvailable(*(v43 + 8)))
                      {
                        v228 = mosyntkbsymtab_IntPropValue(a1, *(v43 + 8), *(v218 + 14), 2);
                      }

                      else
                      {
                        v228 = 1;
                      }

                      v229 = *(v218 + 15);
                      if (v229 >= 2 && v228 > v229)
                      {
                        *(v218 + 15) = v228;
                      }
                    }

                    v218 = *v218;
                  }
                }

                BestScenarioPathSuffix = mosyntpal_DEALLOCATE(a1, &v283);
                if ((BestScenarioPathSuffix & 0x80000000) != 0)
                {
                  return BestScenarioPathSuffix;
                }

                v217 = 0;
                v216 = 0;
                v218 = v219;
              }

              if (mosyntkbsymtab_PropTabAvailable(*(v43 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(v43 + 8), v214, 7, 1))
              {
                v230 = *(v219 + 15);
                if (v216)
                {
                  v231 = v216 <= v230;
                }

                else
                {
                  v231 = 0;
                }

                v232 = !v231;
                v233 = v232 == 0;
                if (v232)
                {
                  v234 = v219;
                }

                else
                {
                  v234 = v217;
                }

                if (v233)
                {
                  v235 = v216;
                }

                else
                {
                  v235 = *(v219 + 15);
                }
              }

              else
              {
                v230 = *(v219 + 15);
                v236 = v216 != 0;
                v237 = v216 < v230;
                v238 = !v236 || !v237;
                if (v236 && v237)
                {
                  v234 = v217;
                }

                else
                {
                  v234 = v219;
                }

                if (v238)
                {
                  v235 = *(v219 + 15);
                }

                else
                {
                  v235 = v216;
                }
              }

              if (v230 >= 1)
              {
                v217 = v234;
                v216 = v235;
              }

              v219 = *v219;
            }

            while (v219);
            goto LABEL_654;
          }

LABEL_653:
          BestScenarioPathSuffix = 0;
LABEL_654:
          if (*v43 >= 1)
          {
            SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = mosyntbase_WString(a1, "accent normalization and accent limitation: ", 0);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = WriteBoundList(a1, v43, v273, 0);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            BestScenarioPathSuffix = mosyntbase_WLn(a1);
          }

          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            return BestScenarioPathSuffix;
          }

          if (v273)
          {
            v239 = 0;
            v240 = v273;
            do
            {
              v241 = *(v240 + 4);
              if ((v241 & 0x80000000) == 0)
              {
                if (v239)
                {
                  v242 = *(v240 + 8);
                  v196 = v242 > 8;
                  v243 = (1 << v242) & 0x1D0;
                  v244 = v196 || v243 == 0;
                  if (!v244 && v239 != v240)
                  {
                    v246 = v239;
                    do
                    {
                      if (*(v246 + 15) == 2)
                      {
                        *(v246 + 15) = 3;
                      }

                      v246 = *v246;
                    }

                    while (v246 != v240);
                  }
                }

                if (v241 < 2u)
                {
                  v239 = v240;
                }
              }

              v240 = *v240;
            }

            while (v240);
          }

          if (*v43 >= 1)
          {
            SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = mosyntbase_WString(a1, "reduction of pitch accents: ", 0);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = WriteBoundList(a1, v43, v273, 0);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }

            SentTermCommList = mosyntbase_WLn(a1);
            if ((SentTermCommList & 0x80000000) != 0)
            {
              return SentTermCommList;
            }
          }

          if (v273)
          {
            v247 = *(v43 + 40);
            if (v247)
            {
              v248 = v273;
              while (1)
              {
                v249 = v248;
                v250 = *(v247 + 16 * *(v248 + 4) + 8);
                if (v250)
                {
                  v251 = *(v249 + 4);
                  if (v251 >= 2)
                  {
                    v251 = 2;
                  }

                  *(v250 + 8) = v251;
                  *(v250 + 12) = *(v249 + 8);
                }

                v248 = *v249;
                if (!*v249)
                {
                  break;
                }

                v252 = *(v247 + 16 * *(v249 + 5));
                if (v252)
                {
                  v253 = *(v249 + 15);
                  if (v253 >= 3)
                  {
                    v254 = 3;
                  }

                  else
                  {
                    v254 = v253;
                  }

                  if (v253 <= 98)
                  {
                    v255 = v254;
                  }

                  else
                  {
                    v255 = 0;
                  }

                  *(v252 + 16) = v255;
                }
              }
            }
          }

          if (v273)
          {
            v257 = v273;
            do
            {
              *&v283 = v257;
              v257 = *v257;
              v258 = mosyntpal_DEALLOCATE(a1, &v283);
              BestScenarioPathSuffix = v258;
            }

            while ((v258 & 0x80000000) == 0 && v257);
            if ((v258 & 0x80000000) != 0)
            {
              return BestScenarioPathSuffix;
            }
          }

          goto LABEL_555;
        }

        v179 = 5;
      }
    }

    else
    {
      v179 = 2;
    }

    v201 = 0;
    goto LABEL_531;
  }

  v277 = 0;
  *(v274 + 80) = 0;
  *(v43 + 88) = 0;
  *(v43 + 72) = 0;
  NewAPVertex(a1, v43, *(a8 + 52), &v277);
  if ((SentTermCommList & 0x80000000) != 0)
  {
    return SentTermCommList;
  }

  *&v283 = 0;
  TreeToChart(a1, v43, a8, v277, 0, &v283);
  if ((SentTermCommList & 0x80000000) != 0)
  {
    return SentTermCommList;
  }

  v44 = &v277;
  if (v283)
  {
    v44 = (v283 + 24);
  }

  v45 = *v44;
  if (v277 == *v44)
  {
LABEL_555:
    v207 = v274;
    v208 = *(v274 + 32);
    *&v283 = v208;
    if (!v208)
    {
LABEL_575:
      *(v207 + 32) = 0;
      return mosyntpal_DEALLOCATE(a1, &v274);
    }

    while (1)
    {
      v209 = *v208;
      v210 = *(v208 + 2);
      if (v210 > 4)
      {
        if (v210 <= 6)
        {
          if (v210 == 5)
          {
            v211 = v208 + 2;
            v212 = a1;
          }

          else
          {
LABEL_568:
            v211 = v208 + 2;
            v212 = a1;
          }

LABEL_572:
          SentTermCommList = mosyntpal_DEALLOCATE(v212, v211);
          if ((SentTermCommList & 0x80000000) != 0)
          {
            return SentTermCommList;
          }

          goto LABEL_573;
        }

        if (v210 == 7)
        {
          v211 = v208 + 2;
          v212 = a1;
          goto LABEL_572;
        }

        if (v210 == 8)
        {
          goto LABEL_568;
        }
      }

      else
      {
        if (v210 > 2)
        {
          if (v210 == 3)
          {
            v211 = v208 + 2;
            v212 = a1;
          }

          else
          {
LABEL_565:
            v211 = v208 + 2;
            v212 = a1;
          }

          goto LABEL_572;
        }

        if (v210 == 1)
        {
          goto LABEL_565;
        }

        if (v210 == 2)
        {
          v211 = v208 + 2;
          v212 = a1;
          goto LABEL_572;
        }
      }

LABEL_573:
      SentTermCommList = mosyntpal_DEALLOCATE(a1, &v283);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      *&v283 = v209;
      v208 = v209;
      if (!v209)
      {
        goto LABEL_575;
      }
    }
  }

  SentTermCommList = SetFunctionWords(a1, v43, v277, *v44);
  if ((SentTermCommList & 0x80000000) != 0)
  {
    return SentTermCommList;
  }

  v275 = 0;
  v46 = v277;
  if (*v43 >= 1)
  {
    SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    SentTermCommList = mosyntbase_WriteMessage(a1, "[AccPhr] Sentence PoS and phonetic string:\\n", 0, "", 0, "", 0, "", 0);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    SentTermCommList = mosyntbase_WString(a1, "[AccPhr] ", 0);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    SentTermCommList = WriteCoverage(a1, v43, v46, v45);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    SentTermCommList = mosyntbase_WLn(a1);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }
  }

  v276 = 0;
  if (v46 == v45)
  {
    v272 = (v43 + 16);
  }

  else
  {
    do
    {
      SentTermCommList = MatchEdge(a1, v43, v46[4], &v276, &v275);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      for (m = v46[6]; m; m = *m)
      {
        SentTermCommList = MatchEdge(a1, v43, m, &v276, &v275);
        if ((SentTermCommList & 0x80000000) != 0)
        {
          return SentTermCommList;
        }
      }

      v46 = v46[2];
    }

    while (v46 != v45);
    v48 = v276;
    v49 = *(v43 + 16);
    v272 = (v43 + 16);
    if (v276)
    {
      BestScenarioPathSuffix = 0;
      do
      {
        if (IsMatchingRule(a1, v43, *(v48 + 2), v48[3], v48[2]))
        {
          BestScenarioPathSuffix = AddEdgeRule(a1, v43, *(v48 + 2), v48[3]);
          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            return BestScenarioPathSuffix;
          }

          if (mosyntkbaccphr_GetRule(0, v49, *(v48 + 2)) >= 1)
          {
            BestScenarioPathSuffix = AddRuleScenarios(a1, v43, *(v48 + 2), (v48[2] + 40), &v275);
            if ((BestScenarioPathSuffix & 0x80000000) != 0)
            {
              return BestScenarioPathSuffix;
            }
          }
        }

        v48 = *v48;
      }

      while (v48);
      if ((BestScenarioPathSuffix & 0x80000000) != 0)
      {
        return BestScenarioPathSuffix;
      }
    }
  }

  v56 = v275;
  v57 = v277;
  if (v275)
  {
    v58 = 0;
    v289 = 0;
    v287 = 0u;
    v288 = 0u;
    v285 = 0u;
    v286 = 0u;
    v283 = 0u;
    v284 = 0u;
    while (1)
    {
      BestScenarioPathSuffix = mosyntkbsymtab_AtomSymString(a1, *(v43 + 8), *(v56 + 2), &v283, 100);
      if ((BestScenarioPathSuffix & 0x80000000) != 0)
      {
        return BestScenarioPathSuffix;
      }

      if (v57 == v45)
      {
        goto LABEL_137;
      }

      v59 = v57;
      do
      {
        v60 = *(v56 + 2);
        v61 = 1;
        v62 = v59;
        while (1)
        {
          v63 = *(v62 + 6);
          if (!v63)
          {
            break;
          }

          while (1)
          {
            v64 = v63;
            v65 = v63[5];
            if (v65)
            {
              break;
            }

LABEL_118:
            v67 = 1;
LABEL_120:
            v63 = *v64;
            if (!*v64)
            {
              goto LABEL_121;
            }
          }

          while (1)
          {
            v66 = *(v65 + 2);
            if (v66 >= v60)
            {
              break;
            }

            v65 = *v65;
            if (!v65)
            {
              goto LABEL_118;
            }
          }

          v67 = v66 != v60;
          if (v66 != v60)
          {
            goto LABEL_120;
          }

LABEL_121:
          if (v67)
          {
            break;
          }

          v70 = v64[3];
LABEL_130:
          v61 = 0;
          v58 = v59;
          v62 = v70;
          if (v70 == v45)
          {
            v72 = AddSegment(a1, v43, v60, v59, v70);
            BestScenarioPathSuffix = v72;
            v58 = v59;
            if ((v72 & 0x80000000) != 0)
            {
              return BestScenarioPathSuffix;
            }

            goto LABEL_137;
          }
        }

        v68 = *(v62 + 4);
        v69 = *(v68 + 40);
        if (v69)
        {
          v70 = *(v68 + 24);
          while (1)
          {
            v71 = *(v69 + 2);
            if (v71 >= v60)
            {
              break;
            }

            v69 = *v69;
            if (!v69)
            {
              goto LABEL_132;
            }
          }

          if (v71 == v60)
          {
            goto LABEL_130;
          }
        }

LABEL_132:
        if ((v61 & 1) == 0)
        {
          BestScenarioPathSuffix = AddSegment(a1, v43, v60, v58, v62);
          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            return BestScenarioPathSuffix;
          }
        }

        v59 = *(v62 + 2);
      }

      while (v59 != v45);
LABEL_137:
      v56 = *v56;
      if (!v56)
      {
        if ((BestScenarioPathSuffix & 0x80000000) != 0)
        {
          return BestScenarioPathSuffix;
        }

        v57 = v277;
        break;
      }
    }
  }

  v278 = 0;
  v280 = 0;
  v279 = 0;
  v282 = 0;
  memset(v281, 0, sizeof(v281));
  BestScenarioPathSuffix = GetBestScenarioPathSuffix(a1, v43, 0, v57, v45, &v280 + 1, &v280, &v279, &v278);
  if ((BestScenarioPathSuffix & 0x80000000) != 0)
  {
    return BestScenarioPathSuffix;
  }

  v73 = v278;
  if (*v43 >= 1)
  {
    SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    BestScenarioPathSuffix = mosyntbase_WriteMessage(a1, "[AccPhr] Optimal Scenario Combination:\\n", 0, "", 0, "", 0, "", 0);
    if ((BestScenarioPathSuffix & 0x80000000) != 0)
    {
      return BestScenarioPathSuffix;
    }
  }

  for (; v73; v73 = *v73)
  {
    if (*v43 >= 1 && v57 != *(v73[1] + 8))
    {
      SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, "[AccPhr] No scenario covering: ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = WriteCoverage(a1, v43, v57, *(v73[1] + 8));
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      BestScenarioPathSuffix = mosyntbase_WLn(a1);
      if ((BestScenarioPathSuffix & 0x80000000) != 0)
      {
        return BestScenarioPathSuffix;
      }
    }

    v74 = v73[1];
    v75 = *(v74 + 8);
    while (v57 != v75)
    {
      *(v57 + 20) = 0;
      v57 = v57[2];
    }

    if (*v43 >= 1)
    {
      SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, "[AccPhr] Scenario '", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      v76 = *(v73[1] + 24);
      v289 = 0;
      v287 = 0u;
      v288 = 0u;
      v285 = 0u;
      v286 = 0u;
      v283 = 0u;
      v284 = 0u;
      SentTermCommList = mosyntkbsymtab_AtomSymString(a1, *(v43 + 8), v76, &v283, 100);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, &v283, 0x64u);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, "' covers: ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = WriteCoverage(a1, v43, *(v73[1] + 8), *(v73[1] + 16));
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      BestScenarioPathSuffix = mosyntbase_WLn(a1);
      if ((BestScenarioPathSuffix & 0x80000000) != 0)
      {
        return BestScenarioPathSuffix;
      }

      goto LABEL_162;
    }

    while (v57 != *(v74 + 16))
    {
      v77 = *(v74 + 24);
      *(v57 + 20) = v77;
      BestScenarioPathSuffix = mosyntkbsymtab_AtomSymString(a1, *(v43 + 8), v77, v281, 100);
      if ((BestScenarioPathSuffix & 0x80000000) != 0)
      {
        return BestScenarioPathSuffix;
      }

      v57 = v57[2];
LABEL_162:
      v74 = v73[1];
    }
  }

  v263 = v45;
  if (v57 != v45 && *v43 >= 1)
  {
    SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    SentTermCommList = mosyntbase_WString(a1, "[AccPhr] No scenario covering: ", 0);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    SentTermCommList = WriteCoverage(a1, v43, v57, v45);
    if ((SentTermCommList & 0x80000000) != 0)
    {
      return SentTermCommList;
    }

    BestScenarioPathSuffix = mosyntbase_WLn(a1);
    if ((BestScenarioPathSuffix & 0x80000000) != 0)
    {
      return BestScenarioPathSuffix;
    }
  }

  while (v57 != v45)
  {
    *(v57 + 20) = 0;
    v57 = v57[2];
  }

  if ((BestScenarioPathSuffix & 0x80000000) != 0)
  {
    return BestScenarioPathSuffix;
  }

  v82 = v277;
  if (v277 != v45)
  {
    BestScenarioPathSuffix = 0;
    v270 = *v272;
    v83 = v277;
    v259 = v277;
    while (1)
    {
      v84 = v83[6];
      v261 = v84 == 0;
      v268 = v83;
      if (v84)
      {
        break;
      }

      v84 = v83[4];
      if (v84)
      {
        break;
      }

      v148 = v263;
LABEL_338:
      v83 = v268[2];
      v82 = v259;
      if (v83 == v148)
      {
        goto LABEL_435;
      }
    }

    while (1)
    {
      v85 = v84[4];
      v86 = v270;
      if (v85)
      {
        break;
      }

LABEL_329:
      v84 = *v84;
      if (v84)
      {
        v147 = 0;
      }

      else
      {
        v147 = !v261;
      }

      if (v147)
      {
        v84 = v268[4];
        v261 = 1;
      }

      v148 = v263;
      if (!v84)
      {
        goto LABEL_338;
      }
    }

    while (1)
    {
      v266 = v85;
      v87 = v85[2];
      if (v87)
      {
        break;
      }

LABEL_328:
      v85 = *v266;
      if (!*v266)
      {
        goto LABEL_329;
      }
    }

    while (1)
    {
      if (mosyntkbaccphr_GetRule(0, v86, *(v87 + 2)) < 1)
      {
        goto LABEL_203;
      }

      Rule = mosyntkbaccphr_GetRule(0, v86, *(v87 + 2));
      v89 = *(v268 + 20);
      v90 = *v272;
      for (n = mosyntkbaccphr_AccPhrScenarios(*v272); ; n = mosyntkbaccphr_GetScenario(3, v90, v92))
      {
        v92 = n;
        if (n == mosyntkbaccphr_Nil() || mosyntkbaccphr_GetScenario(1, v90, v92) == v89)
        {
          break;
        }
      }

      if (v92 == mosyntkbaccphr_Nil() || (Scenario = mosyntkbaccphr_GetScenario(2, v90, v92), Scenario == mosyntkbaccphr_Nil()))
      {
        v86 = v270;
        goto LABEL_203;
      }

      do
      {
        if (mosyntkbaccphr_GetRuleSetIsSubset(v90, Scenario))
        {
          v94 = 0;
        }

        else
        {
          v94 = mosyntkbaccphr_GetRuleSet(1, v90, Scenario) == Rule;
        }

        Scenario = mosyntkbaccphr_GetRuleSet(4, v90, Scenario);
      }

      while (Scenario != mosyntkbaccphr_Nil() && !v94);
      v86 = v270;
      if (v94)
      {
        break;
      }

LABEL_203:
      v87 = *v87;
      if (!v87)
      {
        goto LABEL_328;
      }
    }

    if (*v43 >= 1)
    {
      SentTermCommList = mosyntbase_WriteMessage(a1, "[AccPhr]\\n[AccPhr] <<<< Applying rule:\\n", 0, "", 0, "", 0, "", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, "[AccPhr] ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntkbaccphr_WriteRuleHeadline(a1, *(v43 + 8), v270, *(v87 + 2));
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WLn(a1);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WriteMessage(a1, "[AccPhr] Node Covers:\\n", 0, "", 0, "", 0, "", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WString(a1, "[AccPhr] ", 0);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = WriteCoverage(a1, v43, v84[2], v84[3]);
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }

      SentTermCommList = mosyntbase_WLn(a1);
      v86 = v270;
      if ((SentTermCommList & 0x80000000) != 0)
      {
        return SentTermCommList;
      }
    }

    v95 = mosyntkbaccphr_GetRule(12, v86, *(v87 + 2));
    *&v283 = 0;
    v279 = 0;
    LODWORD(v280) = 0;
    *&v281[0] = 0;
    v278 = 0;
    v96 = *v272;
    if (mosyntkbaccphr_Nil() == v95)
    {
      goto LABEL_221;
    }

    v264 = 0;
    BestScenarioPathSuffix = 0;
    v105 = v96;
    while (1)
    {
      mosyntkbaccphr_GetInstrType(v96, v95);
      if (mosyntkbaccphr_GetInstrType(v96, v95) <= 6)
      {
        *&v283 = v84;
        Instr = mosyntkbaccphr_GetInstr(0, v96, v95);
        if (!mosyntkbaccphr_GetNode(3, v96, Instr))
        {
          goto LABEL_252;
        }

        v107 = mosyntkbaccphr_GetInstr(0, v96, v95);
        if (mosyntkbaccphr_GetNodeMatchOp(v96, v107))
        {
          v108 = mosyntkbaccphr_GetInstr(0, v96, v95);
          v109 = *v266;
          HIDWORD(v280) = v108;
          if (v109)
          {
            do
            {
              v110 = IsMatchingNode(a1, v43, &v280 + 1, v109);
              if (v110)
              {
                break;
              }

              v109 = *v109;
            }

            while (v109);
            v96 = v105;
            if (v110)
            {
LABEL_252:
              if (*v43 >= 1)
              {
                SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  return SentTermCommList;
                }

                SentTermCommList = mosyntbase_WStringLn(a1, "[AccPhr]", 0);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  return SentTermCommList;
                }

                SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  return SentTermCommList;
                }

                SentTermCommList = mosyntbase_WString(a1, "[AccPhr] --> Instruction ", 0);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  return SentTermCommList;
                }

                BestScenarioPathSuffix = mosyntkbaccphr_WriteInstruction(a1, *(v43 + 8), v105, v95);
                if ((BestScenarioPathSuffix & 0x80000000) != 0)
                {
                  return BestScenarioPathSuffix;
                }
              }

              v117 = v105;
              InstrType = mosyntkbaccphr_GetInstrType(v105, v95);
              if ((InstrType - 3) >= 3)
              {
                if (InstrType == 2)
                {
                  if (mosyntkbaccphr_GetInstrRight(v105, v95))
                  {
                    v125 = (*(v283 + 24) + 24);
                  }

                  else
                  {
                    v125 = &v283;
                  }

                  v126 = 0;
                  v127 = *(*v125 + 16);
                  v264 = *(v127 + 32);
                  *(v127 + 84) = 1;
                }

                else if (InstrType)
                {
                  v126 = 1;
                }

                else
                {
                  InstrRight = mosyntkbaccphr_GetInstrRight(v105, v95);
                  v121 = 24;
                  v122 = 16;
                  if (InstrRight)
                  {
                    v122 = 24;
                  }

                  else
                  {
                    v121 = 32;
                  }

                  v123 = *(v283 + v122);
                  v264 = *(v123 + v121);
                  if (mosyntkbaccphr_GetInstr(2, v105, v95))
                  {
                    if (mosyntkbaccphr_GetInstr(2, v105, v95) == 1)
                    {
                      v124 = 5;
                    }

                    else
                    {
                      v124 = mosyntkbaccphr_GetInstr(2, v105, v95);
                    }

                    LODWORD(v280) = v124;
                    if (*(v123 + 68) < 2u)
                    {
                      goto LABEL_303;
                    }

                    *(v123 + 68) = 1;
                    if (v124 <= *(v123 + 72))
                    {
                      goto LABEL_303;
                    }

                    v126 = 0;
                    *(v123 + 72) = v124;
                  }

                  else
                  {
                    if ((*(v123 + 68) & 0x80000000) == 0)
                    {
                      goto LABEL_303;
                    }

                    v126 = 0;
                    *(v123 + 68) = 2;
                  }
                }
              }

              else
              {
                if (mosyntkbaccphr_GetInstrTargetRange(v105, v95) && mosyntkbaccphr_GetInstrTargetRange(v105, v95) == 1)
                {
                  if (mosyntkbaccphr_GetInstrRight(v105, v95))
                  {
                    v119 = *(*(v283 + 24) + 24);
                  }

                  else
                  {
                    v119 = *(*(v283 + 16) + 32);
                  }

                  *&v283 = v119;
                  v117 = v105;
                }

                v264 = v283;
                v128 = *(v283 + 16);
                v129 = mosyntkbaccphr_GetInstrType(v117, v95);
                if (v129 == 4)
                {
                  v130 = 2;
                }

                else
                {
                  v130 = 1;
                }

                if (v129 == 5)
                {
                  v131 = 3;
                }

                else
                {
                  v131 = v130;
                }

                v132 = mosyntkbaccphr_GetInstr(2, v117, v95);
                SentTermCommList = mosyntdata_EncodeSymbolicValue(a1, v132, 0, &v280);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  return SentTermCommList;
                }

                v133 = mosyntkbaccphr_GetInstr(2, v105, v95);
                BestScenarioPathSuffix = mosyntdata_EncodeSymbolicValue(a1, v133, 1, &v279);
                if ((BestScenarioPathSuffix & 0x80000000) != 0)
                {
                  return BestScenarioPathSuffix;
                }

                do
                {
                  v134 = mosyntdata_SentTermBoundData(a1, *(v43 + 40), *(*(v128 + 32) + 84));
                  if (v134)
                  {
                    v135 = v134;
                    SentTermCommList = mosyntdata_NewCommand(a1, &v278);
                    if ((SentTermCommList & 0x80000000) != 0)
                    {
                      return SentTermCommList;
                    }

                    v136 = v278;
                    v137 = v280;
                    *(v278 + 8) = v131;
                    *(v136 + 12) = v137;
                    *&v281[0] = mosyntdata_LastCommand(a1, *v135);
                    BestScenarioPathSuffix = mosyntdata_AppendCommandList(a1, v135, v281, v278, v278);
                    if ((BestScenarioPathSuffix & 0x80000000) != 0)
                    {
                      return BestScenarioPathSuffix;
                    }
                  }

                  v128 = *(v128 + 16);
                  v138 = mosyntdata_SentTermBoundData(a1, *(v43 + 40), *(v128 + 64));
                  if (v138)
                  {
                    v139 = v138;
                    SentTermCommList = mosyntdata_NewCommand(a1, &v278);
                    if ((SentTermCommList & 0x80000000) != 0)
                    {
                      return SentTermCommList;
                    }

                    v140 = v278;
                    v141 = v279;
                    *(v278 + 8) = v131;
                    *(v140 + 12) = v141;
                    *&v281[0] = mosyntdata_LastCommand(a1, *v139);
                    v142 = v278;
                    if (v278 && (*v278 = *v139, *v139 = v142, !*&v281[0]))
                    {
                      BestScenarioPathSuffix = 0;
                      *&v281[0] = v142;
                    }

                    else
                    {
                      BestScenarioPathSuffix = 0;
                    }
                  }
                }

                while (v128 != *(v283 + 24));
LABEL_303:
                v126 = 0;
              }

              if (*v43 >= 1)
              {
                SentTermCommList = mosyntbase_WString(a1, " : ", 0);
                if ((SentTermCommList & 0x80000000) != 0)
                {
                  return SentTermCommList;
                }

                if (v126)
                {
                  v143 = mosyntbase_WStringLn(a1, " not implemented yet!", 0);
                }

                else
                {
                  SentTermCommList = WriteCoverage(a1, v43, *(v264 + 16), *(v264 + 24));
                  if ((SentTermCommList & 0x80000000) != 0)
                  {
                    return SentTermCommList;
                  }

                  v143 = mosyntbase_WLn(a1);
                }

                BestScenarioPathSuffix = v143;
                if ((v143 & 0x80000000) != 0)
                {
                  return BestScenarioPathSuffix;
                }
              }

              goto LABEL_311;
            }
          }

          else
          {
            v96 = v105;
          }
        }

        v111 = mosyntkbaccphr_GetInstr(0, v96, v95);
        if ((mosyntkbaccphr_GetNodeMatchOp(v96, v111) & 2) != 0 && v84[9])
        {
          if (mosyntkbaccphr_GetInstrRight(v105, v95))
          {
            v112 = v84[9];
            do
            {
              v113 = v112;
              v112 = v112[7];
            }

            while (v112);
            v114 = mosyntkbaccphr_GetInstr(0, v105, v95);
            v115 = IsRightMatchingTarget(a1, v43, v114, v113, &v283);
          }

          else
          {
            v116 = mosyntkbaccphr_GetInstr(0, v105, v95);
            v115 = IsLeftMatchingTarget(a1, v43, v116, v84[9], &v283);
          }

          if (v115)
          {
            goto LABEL_252;
          }
        }
      }

LABEL_311:
      v96 = v105;
      v95 = mosyntkbaccphr_GetInstr(6, v105, v95);
      if (v95 == mosyntkbaccphr_Nil())
      {
        v86 = v270;
        if ((BestScenarioPathSuffix & 0x80000000) != 0)
        {
          return BestScenarioPathSuffix;
        }

LABEL_221:
        v97 = mosyntkbaccphr_GetRule(13, v86, *(v87 + 2));
        v98 = *v272;
        v99 = v97;
        if (v97 != mosyntkbaccphr_Nil())
        {
          v99 = v97;
          do
          {
            v100 = v84[2];
            Children = mosyntkbaccphr_GetChildren(1, v98, v97);
            LODWORD(v283) = Children;
            if (v100 == v84[3])
            {
              break;
            }

            Node = Children;
            do
            {
              if (Node == mosyntkbaccphr_Nil())
              {
                break;
              }

              v103 = *(*(v100 + 32) + 32);
              do
              {
                v104 = v103;
                v103 = *v103;
              }

              while (v103);
              if (!IsMatchingNode(a1, v43, &v283, v104))
              {
                break;
              }

              v100 = *(v100 + 16);
              Node = mosyntkbaccphr_GetNode(8, v98, Node);
              LODWORD(v283) = Node;
            }

            while (v100 != v84[3]);
            if (v100 == v84[3])
            {
              break;
            }

            v99 = mosyntkbaccphr_GetChildren(2, v98, v99);
          }

          while (v99 != mosyntkbaccphr_Nil());
        }

        if (v99 == mosyntkbaccphr_Nil())
        {
          BestScenarioPathSuffix = 0;
LABEL_325:
          v86 = v270;
          if (*v43 >= 1)
          {
            BestScenarioPathSuffix = mosyntbase_WriteMessage(a1, "[AccPhr] End rule.>>>>>\\n", 0, "", 0, "", 0, "", 0);
            if ((BestScenarioPathSuffix & 0x80000000) != 0)
            {
              return BestScenarioPathSuffix;
            }
          }

          goto LABEL_203;
        }

        if (*v43 < 1)
        {
          BestScenarioPathSuffix = 0;
LABEL_322:
          v144 = v84[2];
          v145 = mosyntkbaccphr_GetChildren(1, v98, v97);
          if (v144 != v84[3])
          {
            v146 = v145;
            do
            {
              *(v144 + 84) = mosyntkbaccphr_GetNode(2, v98, v146);
              v144 = *(v144 + 16);
              v146 = mosyntkbaccphr_GetNode(8, v98, v146);
            }

            while (v144 != v84[3]);
          }

          goto LABEL_325;
        }

        SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((SentTermCommList & 0x80000000) == 0)
        {
          SentTermCommList = mosyntbase_WStringLn(a1, "[AccPhr]", 0);
          if ((SentTermCommList & 0x80000000) == 0)
          {
            SentTermCommList = mosyntknowl_WriteTraceHeader(a1, 4u);
            if ((SentTermCommList & 0x80000000) == 0)
            {
              SentTermCommList = mosyntbase_WString(a1, "[AccPhr] --> Template ", 0);
              if ((SentTermCommList & 0x80000000) == 0)
              {
                BestScenarioPathSuffix = mosyntkbaccphr_WritePromTemplate(a1, *(v43 + 8), v98, v99);
                if ((BestScenarioPathSuffix & 0x80000000) != 0)
                {
                  return BestScenarioPathSuffix;
                }

                goto LABEL_322;
              }
            }
          }
        }

        return SentTermCommList;
      }
    }
  }

  BestScenarioPathSuffix = 0;
LABEL_435:
  *(v82 + 34) = 0;
  *&v283 = 0;
  if (v263)
  {
    mosyntdata_GetSentTermCommList(a1, *(v43 + 40), v263[16], &v283);
    v171 = v283;
  }

  else
  {
    v171 = 0;
  }

  *(v263 + 34) = FinalBoundaryIndex(a1, v171);
  if ((BestScenarioPathSuffix & 0x80000000) != 0)
  {
    return BestScenarioPathSuffix;
  }

  v260 = v277;
  if (!v277)
  {
    BestScenarioPathSuffix = 0;
    goto LABEL_546;
  }

  v180 = 0;
  v181 = 0;
  v182 = 0;
  BestScenarioPathSuffix = 0;
  LODWORD(v278) = 0;
  *&v283 = 0;
  *&v281[0] = 0;
  v183 = v277;
  do
  {
    v265 = v183;
    if (*(v183 + 34) < 0)
    {
      goto LABEL_506;
    }

    if (v181 && !v180)
    {
      if (v181 != v183)
      {
        v180 = 0;
        v184 = -1;
        v262 = v181;
        do
        {
          v269 = v184;
          v271 = v180;
          v267 = v181;
          v185 = v181[4][4];
          do
          {
            v186 = v185;
            v185 = *v185;
          }

          while (v185);
          v187 = *v272;
          v188 = mosyntkbaccphr_AccPhrHierarchy(*v272);
          BYTE4(v280) = 0;
          if (v188 == mosyntkbaccphr_Nil())
          {
            v189 = 0;
          }

          else
          {
            v189 = 0;
            do
            {
              v190 = v186[1];
              v191 = *(v190 + 16);
              ConsList = mosyntkbaccphr_GetConsList(0, v187, v188);
              v193 = mosyntkbaccphr_GetConsList(1, v187, v188);
              mosyntkbaccphr_CheckMatchingConsFeat3(a1, v187, v191, (v190 + 24), ConsList, v193, &v280 + 4);
              if (!BYTE4(v280))
              {
                ++v189;
                v188 = mosyntkbaccphr_GetConsList(2, v187, v188);
              }
            }

            while (v188 != mosyntkbaccphr_Nil() && !BYTE4(v280));
          }

          if (v188 == mosyntkbaccphr_Nil())
          {
            v194 = -1;
          }

          else
          {
            v194 = v189;
          }

          v184 = v269;
          if (v269 >= v194)
          {
            v195 = v194;
          }

          else
          {
            v195 = v269;
          }

          v196 = v269 <= v194 || v194 <= -1;
          v183 = v265;
          v180 = v271;
          if (!v196)
          {
            v180 = v265;
          }

          if (v194 >= 0)
          {
            v184 = v195;
          }

          v181 = v267[2];
        }

        while (v181 != v265);
        v181 = v262;
        if (v180)
        {
          goto LABEL_505;
        }
      }

      v180 = v181;
      if (mosyntkbaccphr_AccPhrDefaultEmph(*v272) != 1)
      {
        if (mosyntkbaccphr_AccPhrDefaultEmph(*v272) != 2)
        {
          v197 = *v181;
          v183 = v265;
          v180 = v181;
          if (v197 != (*v265 + v197) / 2)
          {
            v180 = v181;
            do
            {
              v180 = *(v180 + 16);
            }

            while (*v180 != (*v265 + v197) / 2);
          }

          goto LABEL_505;
        }

        v183 = v265;
        v180 = v265[1];
      }
    }

    if (!v180)
    {
      v182 = v181;
      v181 = v183;
      goto LABEL_506;
    }

LABEL_505:
    *(v180 + 84) = 1;
    v182 = v181;
    v181 = v183;
    v180 = 0;
LABEL_506:
    if (*(v183 + 21) == 1)
    {
      if (v180)
      {
        if (mosyntkbaccphr_AccPhrDefaultEmph(*v272) == 1)
        {
          v198 = 3;
        }

        else
        {
          *(v180 + 84) = -1;
          BestScenarioPathSuffix = SetFunctionWords(a1, v43, v180, *(v180 + 16));
          if ((BestScenarioPathSuffix & 0x80000000) != 0)
          {
            return BestScenarioPathSuffix;
          }

          if (*(v180 + 84) == -1)
          {
            *(v180 + 84) = 3;
          }

          v198 = 1;
          v183 = v265;
          v180 = v265;
        }

        *(v183 + 21) = v198;
      }

      else
      {
        v180 = v183;
      }
    }

    v183 = v183[2];
  }

  while (v183);
  if (!v181)
  {
    goto LABEL_546;
  }

  *(v181 + 19) = 0;
  if (!v182 || *(v182 + 19))
  {
    goto LABEL_546;
  }

  SentTermCommList = mosyntdata_GetSentTermCommList(a1, *(v43 + 40), *(v181 + 16), v281);
  if ((SentTermCommList & 0x80000000) != 0)
  {
    return SentTermCommList;
  }

  BestScenarioPathSuffix = mosyntdata_GetPunctFromCommandList(a1, *&v281[0], &v278, &v283);
  if ((BestScenarioPathSuffix & 0x80000000) == 0)
  {
    v199 = v278 == 11 ? 9 : 2;
    v200 = v278 == 10 ? 4 : v199;
    *(v182 + 19) = v200;
LABEL_546:
    for (ii = v260; ii != v263; ii = ii[2])
    {
      if (*(ii + 21) == -1)
      {
        *(ii + 21) = 3;
      }

      if ((*(ii + 34) & 0x80000000) == 0 && !*(ii + 19))
      {
        *(ii + 19) = 1;
      }
    }

    if ((BestScenarioPathSuffix & 0x80000000) == 0)
    {
      ChartToSentTermData(v43, v277);
      goto LABEL_555;
    }
  }

  return BestScenarioPathSuffix;
}

uint64_t FindDomainById(uint64_t a1, int a2, int *a3)
{
  v5 = *(a1 + 16);
  for (i = mosyntkbaccphr_AccPhrDomains(v5); ; i = mosyntkbaccphr_GetScenario(3, v5, *a3))
  {
    v7 = i;
    *a3 = i;
    result = mosyntkbaccphr_Nil();
    if (v7 == result)
    {
      break;
    }

    result = mosyntkbaccphr_GetScenario(1, v5, *a3);
    if (result == a2)
    {
      break;
    }
  }

  return result;
}

uint64_t FindDomainByName(uint64_t a1, unsigned __int8 *a2, int *a3)
{
  v5 = *(a1 + 16);
  for (i = mosyntkbaccphr_AccPhrDomains(v5); ; i = mosyntkbaccphr_GetScenario(3, v5, *a3))
  {
    *a3 = i;
    ScenarioNamePtr = mosyntkbaccphr_GetScenarioNamePtr(v5, i);
    v8 = *a3;
    result = mosyntkbaccphr_Nil();
    if (v8 == result)
    {
      break;
    }

    result = mosyntbase_CEqual(ScenarioNamePtr, 50, a2, 100);
    if (result)
    {
      break;
    }
  }

  return result;
}

uint64_t GenAccTree(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  *a4 = 0;
  v16 = 0;
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v8 = AddAccNode(a1, a2, a4, &v16);
    if ((v8 & 0x80000000) != 0)
    {
      break;
    }

    v9 = v16;
    v16[2] = *(v5 + 52);
    *(v9 + 24) = 0;
    *(v9 + 13) = *(v5 + 8);
    if (*(v5 + 60))
    {
      v14 = 0;
      v15 = 0;
      v10 = AddAccNode(a1, a2, &v15, &v14);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v9[1] = v15;
      v11 = v14;
      v14[2] = *(v5 + 52);
      v12 = 1;
      *(v11 + 24) = 1;
      if (mosyntkbsymtab_PropTabAvailable(*(a2 + 8)))
      {
        if (mosyntkbsymtab_IntPropValue(a1, *(a2 + 8), *(v5 + 8), 2) >= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = 99;
        }
      }

      *(v11 + 13) = v12;
    }

    else
    {
      v10 = GenAccTree(a1, a2, v5[1], v9 + 1);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }
    }

    v5 = *v5;
    if (!v5)
    {
      return v10;
    }
  }

  return v8;
}

uint64_t AddAccNode(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  v14 = 0;
  result = mosyntpal_ALLOCATE(a1, &v14, 0x20u);
  if ((result & 0x80000000) == 0)
  {
    v9 = v14;
    v15 = 0;
    result = mosyntpal_ALLOCATE(a1, &v15, 0x18u);
    if ((result & 0x80000000) == 0)
    {
      *v15 = *(a2 + 32);
      v10 = v14;
      v11 = v15;
      *(a2 + 32) = v15;
      *(v11 + 2) = 1;
      v11[2] = v9;
      *v10 = 0;
      v12 = *a4;
      v13 = v14;
      if (!*a4)
      {
        v12 = a3;
      }

      *v12 = v14;
      *a4 = v13;
      v13[1] = 0;
    }
  }

  return result;
}

uint64_t Accentuation1(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = mosyntkbsymtab_WildConsId();
  *a4 = 0;
  if (!a3)
  {
    return 0;
  }

  if (*(a3 + 24))
  {
    if (*(a3 + 26) == 1)
    {
      FirstAccPatVal = 0;
      *a4 = 1;
      return FirstAccPatVal;
    }

    return 0;
  }

  v10 = *(a3 + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = v8;
  memset(v21, 0, sizeof(v21));
  v20 = 0;
  v19 = 0;
  do
  {
    FirstAccPatVal = Accentuation1(a1, a2, v10, &v19);
    if ((FirstAccPatVal & 0x80000000) != 0)
    {
      return FirstAccPatVal;
    }

    v12 = v19 + *a4;
    *a4 = v12;
    v10 = *v10;
  }

  while (v10);
  if (v12 < 2)
  {
    return FirstAccPatVal;
  }

  if (!mosyntkbsymtab_PropTabAvailable(*(a2 + 8)))
  {
    v20 = 0;
    goto LABEL_30;
  }

  FirstAccPatVal = mosyntkbsymtab_GetFirstAccPatVal(a1, *(a2 + 8), *(a3 + 26), 3, v21, &v20);
  if ((FirstAccPatVal & 0x80000000) != 0)
  {
    return FirstAccPatVal;
  }

  v13 = v20;
  if (!v20)
  {
LABEL_30:
    if (mosyntkbsymtab_PropTabAvailable(*(a2 + 8)))
    {
      FirstAccPatVal = mosyntkbsymtab_GetFirstAccPatVal(a1, *(a2 + 8), v11, 3, v21, &v20);
      if ((FirstAccPatVal & 0x80000000) != 0)
      {
        return FirstAccPatVal;
      }

      v17 = v20;
      if (v20)
      {
        while (1)
        {
          *(a2 + 64) = 0;
          if (*a2 >= 2)
          {
            v14 = mosyntknowl_WriteTraceHeader(a1, 4u);
            if ((v14 & 0x80000000) != 0)
            {
              return v14;
            }

            v14 = mosyntbase_WString(a1, "applying default pattern", 0);
            if ((v14 & 0x80000000) != 0)
            {
              return v14;
            }

            v14 = mosyntbase_WLn(a1);
            if ((v14 & 0x80000000) != 0)
            {
              return v14;
            }

            v17 = v20;
          }

          matched = SingleTreeMatchFound(a1, a2, a3, v17);
          v14 = mosyntkbsymtab_DisposeAccPat(*(a2 + 8), &v20);
          if ((v14 & 0x80000000) != 0)
          {
            return v14;
          }

          FirstAccPatVal = mosyntkbsymtab_GetNextAccPatVal(v21, &v20);
          if ((FirstAccPatVal & 0x80000000) != 0)
          {
            return FirstAccPatVal;
          }

          v17 = v20;
          if (!v20 || matched)
          {
            if (v20)
            {
              FirstAccPatVal = mosyntkbsymtab_DisposeAccPat(*(a2 + 8), &v20);
              if ((FirstAccPatVal & 0x80000000) != 0)
              {
                return FirstAccPatVal;
              }
            }

            if (!matched)
            {
              break;
            }

            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_47:
    *a4 = 1;
    if (*a2 >= 1)
    {
      v14 = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntbase_WString(a1, "after accentuation of ", 0);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), *(a3 + 26));
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntbase_WString(a1, ": ", 0);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = WriteAccList(a1, a2, a3);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntbase_WLn(a1);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      FirstAccPatVal = mosyntbase_WLn(a1);
      if ((FirstAccPatVal & 0x80000000) != 0)
      {
        return FirstAccPatVal;
      }
    }

    if (mosyntkbsymtab_PropTabAvailable(*(a2 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(a2 + 8), *(a3 + 26), 4, 1))
    {
      return FirstAccPatVal;
    }

    return RhythmicAccShift(a1, a2, a3);
  }

  while (1)
  {
    *(a2 + 64) = 0;
    if (*a2 >= 2)
    {
      v14 = mosyntknowl_WriteTraceHeader(a1, 4u);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntbase_WString(a1, "applying pattern for constituent ", 0);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), *(a3 + 26));
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v14 = mosyntbase_WLn(a1);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v13 = v20;
    }

    v15 = SingleTreeMatchFound(a1, a2, a3, v13);
    v14 = mosyntkbsymtab_DisposeAccPat(*(a2 + 8), &v20);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    FirstAccPatVal = mosyntkbsymtab_GetNextAccPatVal(v21, &v20);
    if ((FirstAccPatVal & 0x80000000) != 0)
    {
      return FirstAccPatVal;
    }

    v13 = v20;
    if (!v20 || v15)
    {
      if (v20)
      {
        FirstAccPatVal = mosyntkbsymtab_DisposeAccPat(*(a2 + 8), &v20);
        if ((FirstAccPatVal & 0x80000000) != 0)
        {
          return FirstAccPatVal;
        }
      }

      if (!v15)
      {
        goto LABEL_30;
      }

LABEL_45:
      ReduceAccents(a2, a3);
      FirstAccPatVal = 0;
      goto LABEL_47;
    }
  }
}

uint64_t SingleTreeMatchFound(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = mosyntkbsymtab_WildConsId();
  if (mosyntkbsymtab_PropTabAvailable(*(a2 + 8)) && mosyntkbsymtab_HasIntPropValue(a1, *(a2 + 8), v8, 9, 1))
  {
    v9 = *a3;
    *a3 = 0;
    result = MatchFound(a1, a2, a3, a4);
    *a3 = v9;
  }

  else
  {

    return MatchFound(a1, a2, a3, a4);
  }

  return result;
}

uint64_t ReduceAccents(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(a2 + 24))
  {
    if (*(result + 64) != a2)
    {
      ++*(a2 + 26);
    }
  }

  else
  {
    for (i = *(a2 + 8); i; i = *i)
    {
      result = ReduceAccents(v2, i);
    }
  }

  return result;
}

uint64_t WriteAccList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  if (*(a3 + 24))
  {
    result = mosyntdata_GetSentTermCommList(a1, *(a2 + 40), *(a3 + 16), &v8);
    if ((result & 0x80000000) == 0)
    {
      result = mosyntdata_WriteCommandList(a1, v8);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WString(a1, "[", 0);
        if ((result & 0x80000000) == 0)
        {
          result = mosyntbase_WInt(a1, *(a3 + 26), 0);
          if ((result & 0x80000000) == 0)
          {
            result = mosyntbase_WString(a1, "]", 0);
            if ((result & 0x80000000) == 0)
            {
              result = mosyntdata_GetSentTermWordPhonList(a1, *(a2 + 40), *(a3 + 16), &v9);
              if ((result & 0x80000000) == 0)
              {
                return mosyntdata_WritePhonList(a1, *(a2 + 8), v9);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    result = mosyntbase_WString(a1, "( ", 0);
    if ((result & 0x80000000) == 0)
    {
      v7 = (a3 + 8);
      while (1)
      {
        v7 = *v7;
        if (!v7)
        {
          break;
        }

        result = WriteAccList(a1, a2, v7);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      return mosyntbase_WString(a1, ")", 0);
    }
  }

  return result;
}

uint64_t RhythmicAccShift(uint64_t a1, int *a2, uint64_t a3)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7 = 0;
  memset(v8, 0, 24);
  AccShift(a3, v8, &v7);
  if (!v7 || *a2 < 1)
  {
    return 0;
  }

  result = mosyntknowl_WriteTraceHeader(a1, 4u);
  if ((result & 0x80000000) == 0)
  {
    result = mosyntbase_WString(a1, "accentuation after rhythmic shift: ", 0);
    if ((result & 0x80000000) == 0)
    {
      result = WriteAccList(a1, a2, a3);
      if ((result & 0x80000000) == 0)
      {
        result = mosyntbase_WLn(a1);
        if ((result & 0x80000000) == 0)
        {

          return mosyntbase_WLn(a1);
        }
      }
    }
  }

  return result;
}

uint64_t MatchFound(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a2 >= 2)
  {
    mosyntknowl_WriteTraceHeader(a1, 4u);
    mosyntbase_WString(a1, "trying to match ", 0);
    if (a3)
    {
      if (*(a3 + 24))
      {
        mosyntbase_WInt(a1, *(a3 + 13), 0);
      }

      else
      {
        mosyntkbsymtab_WriteCons(a1, *(a2 + 8), *(a3 + 13));
      }
    }

    else
    {
      mosyntbase_WString(a1, "NIL", 0);
    }

    mosyntbase_WString(a1, "/", 0);
    if (a4)
    {
      v8 = *(a4 + 8);
      if (v8 < 1)
      {
        mosyntbase_WInt(a1, *(a4 + 9), 0);
      }

      else
      {
        mosyntkbsymtab_WriteCons(a1, *(a2 + 8), v8);
      }
    }

    else
    {
      mosyntbase_WString(a1, "NIL", 0);
    }

    mosyntbase_WLn(a1);
  }

  result = a3 == 0;
  if (!a4)
  {
    return result;
  }

  if (!a3)
  {
    if (!*a4)
    {
      v15 = *(a4 + 8);
      if (mosyntkbsymtab_Star2ConsId() != v15)
      {
        v16 = *(a4 + 8);
        return mosyntkbsymtab_StarConsId() == v16;
      }

      return 1;
    }

    return 0;
  }

  if (!*(a4 + 8))
  {
    if (*(a3 + 24))
    {
      v17 = *(a3 + 13);
      if (v17 == *(a4 + 9))
      {
        if (v17 == 1)
        {
          if (*a2 >= 2)
          {
            mosyntknowl_WriteTraceHeader(a1, 4u);
            mosyntbase_WString(a1, "=== node marked", 0);
            mosyntbase_WLn(a1);
          }

          *(a2 + 64) = a3;
        }

        return 1;
      }
    }

    return 0;
  }

  v10 = *(a4 + 8);
  if (mosyntkbsymtab_Star2ConsId() == v10)
  {
    if (!MatchFound(a1, a2, *a3, a4) && !MatchFound(a1, a2, *a3, *a4))
    {
      v11 = *a4;
      v12 = a1;
      v13 = a2;
      v14 = a3;
      return MatchFound(v12, v13, v14, v11) != 0;
    }

    return 1;
  }

  v18 = *(a4 + 8);
  if (mosyntkbsymtab_StarConsId() == v18)
  {
    if (!MatchFound(a1, a2, a3, *a4) && !MatchFound(a1, a2, *a3, *a4))
    {
      v14 = *a3;
      v12 = a1;
      v13 = a2;
      v11 = a4;
      return MatchFound(v12, v13, v14, v11) != 0;
    }

    return 1;
  }

  v19 = *(a4 + 8);
  if (mosyntkbsymtab_Wild2ConsId() == v19)
  {
    result = DownMatchFound(a1, a2, a3, a4[1]);
    if (!result)
    {
      return result;
    }

LABEL_38:
    v14 = *a3;
    v11 = *a4;
    v12 = a1;
    v13 = a2;
    return MatchFound(v12, v13, v14, v11) != 0;
  }

  v20 = *(a4 + 8);
  if (mosyntkbsymtab_WildConsId() != v20 && (*(a3 + 24) || *(a3 + 13) != *(a4 + 8)))
  {
    return 0;
  }

  result = MatchFound(a1, a2, a3[1], a4[1]);
  if (result)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t DownMatchFound(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  *a3 = 0;
  if (MatchFound(a1, a2, a3, a4))
  {
    result = 1;
  }

  else
  {
    v10 = a3[1];
    if (v10)
    {
      do
      {
        result = DownMatchFound(a1, a2, v10, a4);
        v10 = *v10;
        if (v10)
        {
          v11 = result == 0;
        }

        else
        {
          v11 = 0;
        }
      }

      while (v11);
    }

    else
    {
      result = 0;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t AccShift(uint64_t result, uint64_t *a2, _BYTE *a3)
{
  for (i = *(result + 8); i; i = *i)
  {
    if (*(i + 24))
    {
      if (*(i + 26) - 1 > 0x61)
      {
        continue;
      }

      v7 = a2[1];
      v6 = a2[2];
      *a2 = v7;
      a2[1] = v6;
      a2[2] = i;
      if (!v7 || v6 == 0)
      {
        continue;
      }

      v9 = *(i + 26);
      if (v9 == 1 && *(v6 + 26) == 2 && (*(v7 + 26) & 0xFFFE) == 2)
      {
        *(v6 + 26) = 3;
        v10 = *a2;
      }

      else
      {
        if (*(v7 + 26) != 1 || (v9 & 0xFFFE) != 2 || *(v6 + 26) != 2)
        {
          continue;
        }

        *(v6 + 26) = 3;
        v10 = a2[2];
      }

      *(v10 + 26) = 2;
      *a3 = 1;
    }

    else
    {
      result = AccShift(i, a2, a3);
    }
  }

  return result;
}

uint64_t GetInitPhrasing1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7)
{
  v7 = *(a3 + 8);
  if (!v7)
  {
    return 0;
  }

  if (!v7[24])
  {
    do
    {
      InitPhrasing1 = GetInitPhrasing1(a1, a2, v7, (a4 + 1), a5, a6, a7);
      if ((InitPhrasing1 & 0x80000000) != 0 || !*v7)
      {
        break;
      }

      if (!mosyntkbsymtab_PropTabAvailable(*(a2 + 8)) || !mosyntkbsymtab_HasIntPropValue(a1, *(a2 + 8), *(*v7 + 26), 5, 0))
      {
        v16 = mosyntkbsymtab_PropTabAvailable(*(a2 + 8));
        a5 = a4;
        if (!v16)
        {
          continue;
        }

        HasIntPropValue = mosyntkbsymtab_HasIntPropValue(a1, *(a2 + 8), *(*v7 + 26), 5, *(a3 + 26));
        a5 = a4;
        if (!HasIntPropValue)
        {
          continue;
        }
      }

      a5 = 2;
      v7 = *v7;
    }

    while (v7);
    return InitPhrasing1;
  }

  return AppendInitBound(a1, a2, a6, a7, a5, a3);
}

uint64_t AppendInitBound(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, __int16 a5, uint64_t a6)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  PunctFromCommandList = mosyntpal_ALLOCATE(a1, &v24, 0x28u);
  if ((PunctFromCommandList & 0x80000000) == 0)
  {
    *v24 = 0;
    v13 = v24;
    if (*a3)
    {
      a3 = *a4;
    }

    *a3 = v24;
    *a4 = v13;
    *(v13 + 8) = a5;
    if (a6)
    {
      v14 = *(a6 + 8);
      *(v13 + 10) = *(v14 + 26) - 1 < 0x62;
      v15 = *(v14 + 16);
      *(v13 + 16) = v15;
      SentTermWordPhonList = mosyntdata_GetSentTermWordPhonList(a1, *(a2 + 40), v15, &v23);
      if ((SentTermWordPhonList & 0x80000000) != 0)
      {
        return SentTermWordPhonList;
      }

      v19 = 0;
      CountSyllsAndAccs(a2, v23, (v24 + 12), &v19);
      v17 = v24;
      *(v24 + 20) = *(v14 + 16);
      *(v17 + 28) = *(a6 + 26);
      *(v17 + 30) = *(v14 + 26);
      *(v17 + 32) = 0;
      SentTermWordPhonList = mosyntdata_GetSentTermCommList(a1, *(a2 + 40), *(v17 + 16), &v20);
      if ((SentTermWordPhonList & 0x80000000) != 0)
      {
        return SentTermWordPhonList;
      }

      else
      {
        PunctFromCommandList = mosyntdata_GetPunctFromCommandList(a1, v20, &v22, &v21);
        if ((PunctFromCommandList & 0x80000000) == 0 && *(v24 + 8) >= 2 && mosyntknowl_IsIntraSentPunct(a1, v22))
        {
          *(v24 + 8) = 1;
        }
      }
    }

    else
    {
      *(v13 + 10) = 0;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
    }
  }

  return PunctFromCommandList;
}

uint64_t FinalBoundaryIndex(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 2;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    if (!*(a2 + 2))
    {
      v2 = a2;
      v3 = a2;
    }

    a2 = *a2;
  }

  while (a2);
  if (v3)
  {
    v4 = *(v3 + 3);
    if (v2)
    {
      return !mosyntknowl_IsSentFinalPunct(a1, v4);
    }
  }

  else
  {
    v4 = 0;
    if (v2)
    {
      return !mosyntknowl_IsSentFinalPunct(a1, v4);
    }
  }

  return 2;
}

uint64_t WriteBoundList(uint64_t a1, uint64_t a2, uint64_t **a3, int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (a3)
  {
    v6 = a3;
    do
    {
      if (v6[1] < 0)
      {
        v9 = a1;
        v10 = " $";
      }

      else
      {
        result = mosyntbase_WLn(a1);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntknowl_WriteTraceHeader(a1, 4u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WString(a1, " #{", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WInt(a1, *(v6 + 4), 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WString(a1, "}", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (a4)
        {
          result = mosyntbase_WString(a1, " (", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntkbaccphr_PhraseTypeToString(*(v6 + 8), &v12, 10);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntbase_WString(a1, &v12, 0xAu);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = mosyntbase_WString(a1, ")", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        result = mosyntbase_WString(a1, " <", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WInt(a1, *(v6 + 5), 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WString(a1, ",", 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = mosyntbase_WInt(a1, *(v6 + 6), 0);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v9 = a1;
        v10 = ">";
      }

      result = mosyntbase_WString(v9, v10, 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (!*v6)
      {
        break;
      }

      result = mosyntbase_WString(a1, " [", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WInt(a1, *(v6 + 15), 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WString(a1, "]", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntdata_GetSentTermWordPhonList(a1, *(a2 + 40), *(v6 + 5), &v11);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntdata_WritePhonList(a1, *(a2 + 8), v11);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v6 = *v6;
    }

    while (v6);
  }

  return mosyntbase_WLn(a1);
}

void CountSyllsAndAccs(uint64_t a1, uint64_t **a2, _WORD *a3, _WORD *a4)
{
  *a3 = 1;
  *a4 = 0;
  if (a2)
  {
    v6 = a2;
    v7 = 0;
    while (1)
    {
      v8 = *(v6 + 12);
      if (mosyntkbsymtab_SyllSepId() != v8)
      {
        break;
      }

      ++*a3;
      if (v7 <= 0)
      {
LABEL_10:
        v6 = *v6;
        if (!v6)
        {
          if (v7 >= 1)
          {
            ++*a4;
          }

          return;
        }
      }

      else
      {
        v7 = 0;
        ++*a4;
        v6 = *v6;
        if (!v6)
        {
          return;
        }
      }
    }

    v9 = *(v6 + 12);
    if (mosyntkbsymtab_PrimAccId() == v9 || (v10 = *(v6 + 12), mosyntkbsymtab_SecAccId() == v10))
    {
      ++v7;
    }

    goto LABEL_10;
  }
}

uint64_t SetFunctionWords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  if (a3 == a4)
  {
    return 0;
  }

  v5 = a3;
  v8 = 0;
  while (1)
  {
    v9 = *(*(v5 + 32) + 32);
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9);
    v11 = *(a2 + 16);
    v12 = mosyntkbaccphr_AccPhrFunctionWords(v11);
    v17 = 0;
    if (v12 != mosyntkbaccphr_Nil() && v17 == 0)
    {
      break;
    }

LABEL_9:
    if (v12 != mosyntkbaccphr_Nil())
    {
      *(v5 + 84) = 0;
    }

    v5 = *(v5 + 16);
    if (v5 == a4)
    {
      return v8;
    }
  }

  while (1)
  {
    ConsList = mosyntkbaccphr_GetConsList(0, v11, v12);
    v15 = mosyntkbaccphr_GetConsList(1, v11, v12);
    v8 = mosyntkbaccphr_CheckMatchingConsFeat2(a1, v11, ConsList, v15, *(v10[1] + 16), (v10[1] + 24), &v17);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    if (!v17)
    {
      v12 = mosyntkbaccphr_GetConsList(2, v11, v12);
    }

    if (v12 == mosyntkbaccphr_Nil() || v17)
    {
      goto LABEL_9;
    }
  }
}

uint64_t ChartToSentTermData(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    do
    {
      v4 = *(a2 + 32);
      if (v4)
      {
        v7 = (v2 + 16 * *(v4 + 84));
        v5 = *v7;
        v6 = v7[1];
        if (v6)
        {
          v8 = *(a2 + 68);
          if (v8 >= 2)
          {
            v8 = 2;
          }

          v9 = *(a2 + 76);
          *(v6 + 8) = v8;
          *(v6 + 12) = v9;
        }

        if (v5)
        {
          v10 = *(a2 + 84);
          if (v10 >= 3)
          {
            v11 = 3;
          }

          else
          {
            v11 = *(a2 + 84);
          }

          if (v10 <= 98)
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          *(v5 + 16) = v12;
        }
      }

      a2 = *(a2 + 16);
    }

    while (a2);
  }

  return result;
}

double NewAPVertex(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  ++*(a2 + 72);
  if ((mosyntpal_ALLOCATE(a1, a4, 0x58u) & 0x80000000) == 0)
  {
    v9 = *a4;
    v12 = 0;
    if ((mosyntpal_ALLOCATE(a1, &v12, 0x18u) & 0x80000000) == 0)
    {
      *v12 = *(a2 + 32);
      v10 = v12;
      *(a2 + 32) = v12;
      *(v10 + 2) = 2;
      v10[2] = v9;
      v11 = *a4;
      *v11 = *(a2 + 72);
      result = 0.0;
      *(v11 + 8) = 0u;
      *(v11 + 24) = 0u;
      *(v11 + 40) = 0u;
      *(v11 + 56) = 0;
      *(v11 + 64) = a3;
      *(v11 + 68) = -1;
      *(v11 + 84) = -1;
      *(v11 + 72) = 0;
    }
  }

  return result;
}

void TreeToChart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v7 = a4;
  v35 = 0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  *a6 = 0;
  v11 = *(a3 + 52);
  *(a4 + 64) = v11;
  if (*(a3 + 60))
  {
    if ((mosyntdata_GetSentTermCommList(a1, *(a2 + 40), v11, &v32) & 0x80000000) == 0 && (mosyntdata_GetPunctFromCommandList(a1, v32, &v34, &v33) & 0x80000000) == 0)
    {
      if (mosyntknowl_IsIntraSentPunct(a1, v34))
      {
        *(v7 + 68) = 1;
      }

      if ((mosyntdata_GetSentTermWordPhonList(a1, *(a2 + 40), *(a3 + 52), &v31) & 0x80000000) == 0 && (NewAPEdge(a1, a2, a3, a6) & 0x80000000) == 0)
      {
        v12 = *a6;
        *(v12 + 92) = 0;
        *(v12 + 16) = v7;
        NewAPVertex(a1, a2, *(a3 + 56), (*a6 + 24));
        if ((v13 & 0x80000000) == 0)
        {
          CountSyllsAndAccs(a2, v31, (*a6 + 82), (*a6 + 80));
          *(v7 + 16) = *(*a6 + 24);
          *(*(*a6 + 24) + 8) = v7;
          v14 = *a6;
          *(v7 + 32) = *a6;
          *(*(v14 + 24) + 24) = v14;
          **a6 = 0;
          *(*a6 + 8) = 0;
        }
      }
    }
  }

  else
  {
    v15 = *(a3 + 8);
    if (v15)
    {
      v28 = a3;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      while (1)
      {
        TreeToChart(a1, a2, v15, v7, a5 + 1, &v35);
        if (v22 < 0)
        {
          break;
        }

        v23 = v35;
        if (v35)
        {
          *(v35 + 64) = v21;
          if (!v20)
          {
            v20 = v23;
          }

          if (v21)
          {
            *(v21 + 56) = v23;
          }

          ++v19;
          v7 = *(v23 + 24);
          v18 += *(v23 + 82);
          v17 += *(v23 + 80);
          v21 = v23;
        }

        v15 = *v15;
        if (!v15)
        {
          if (v7 == a4)
          {
            goto LABEL_27;
          }

          if (v19 < 2)
          {
            *a6 = v21;
            AddAPNode(a1, a2, v28, (v21 + 32));
          }

          else if ((NewAPEdge(a1, a2, v28, a6) & 0x80000000) == 0)
          {
            v24 = *a6;
            *(v24 + 92) = 1;
            *(v24 + 16) = a4;
            *(*a6 + 24) = v7;
            **a6 = *(a4 + 48);
            v25 = *a6;
            *(a4 + 48) = *a6;
            *(v25 + 8) = *(v7 + 40);
            v26 = *a6;
            *(v7 + 40) = *a6;
            *(v26 + 82) = v18;
            *(v26 + 80) = v17;
            *(v26 + 72) = v20;
            if (v20)
            {
              v27 = *a6;
              do
              {
                *(v20 + 48) = v27;
                v20 = *(v20 + 56);
              }

              while (v20);
            }
          }

          return;
        }
      }
    }

    else
    {
LABEL_27:
      *a6 = 0;
    }
  }
}

uint64_t NewAPEdge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = mosyntpal_ALLOCATE(a1, a4, 0x60u);
  if ((result & 0x80000000) == 0)
  {
    v9 = *a4;
    v12 = 0;
    result = mosyntpal_ALLOCATE(a1, &v12, 0x18u);
    if ((result & 0x80000000) == 0)
    {
      *v12 = *(a2 + 32);
      v10 = v12;
      *(a2 + 32) = v12;
      *(v10 + 2) = 3;
      v10[2] = v9;
      v11 = *a4;
      *(v11 + 72) = 0;
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *(v11 + 48) = 0u;
      *(v11 + 32) = 0u;
      *(v11 + 84) = *(a3 + 52);
      return AddAPNode(a1, a2, a3, (v11 + 32));
    }
  }

  return result;
}

uint64_t AddAPNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v13 = 0;
  result = mosyntpal_ALLOCATE(a1, &v13, 0x18u);
  if ((result & 0x80000000) == 0)
  {
    v9 = v13;
    v14 = 0;
    result = mosyntpal_ALLOCATE(a1, &v14, 0x18u);
    if ((result & 0x80000000) == 0)
    {
      *v14 = *(a2 + 32);
      v10 = v13;
      v11 = v14;
      *(a2 + 32) = v14;
      *(v11 + 2) = 5;
      v11[2] = v9;
      v10[1] = a3;
      *v10 = *a4;
      v12 = v13;
      v13[2] = 0;
      *a4 = v12;
    }
  }

  return result;
}

uint64_t WriteCoverage(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v4 = a3;
  v13 = 0;
  if (a3 != a4)
  {
    while (2)
    {
      HIDWORD(v11) = 0;
      LODWORD(v11) = 0;
      *(&v11 + 4) = *v4;
      result = mosyntbase_WriteMessage(a1, " (%i) ", 0, "", 0, "", 0, "", v11);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v9 = (*(v4 + 4) + 32);
      do
      {
        v9 = *v9;
        if (!v9)
        {
          result = mosyntbase_WriteMessage(a1, "#### ERROR: didn't find terminal\\n", 0, "", 0, "", 0, "", 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_13;
        }

        v10 = v9[1];
      }

      while (!*(v10 + 60));
      result = mosyntkbsymtab_WriteCons(a1, *(a2 + 8), *(v10 + 16));
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WString(a1, "[ ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntdata_GetSentTermWordPhonList(a1, *(a2 + 40), *(*(v4 + 4) + 84), &v13);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntdata_WritePhonList(a1, *(a2 + 8), v13);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = mosyntbase_WString(a1, " ] ", 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

LABEL_13:
      v4 = *(v4 + 2);
      if (v4 != a4)
      {
        continue;
      }

      break;
    }
  }

  HIDWORD(v12) = 0;
  LODWORD(v12) = 0;
  *(&v12 + 4) = *v4;
  return mosyntbase_WriteMessage(a1, " (%i) ", 0, "", 0, "", 0, "", v12);
}

uint64_t MatchEdge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, void *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 32);
  if (!v5)
  {
    return 0;
  }

  v10 = *(a2 + 16);
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  v22 = 0;
  do
  {
    result = mosyntkbaccphr_LookupAccPhrRule(a1, *(a2 + 16), *(v5[1] + 16), (v5[1] + 24), &v22, v24);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    while (v22)
    {
      Rule = mosyntkbaccphr_GetRule(15, v10, SDWORD2(v25));
      v13 = DWORD2(v25);
      if (Rule < 1)
      {
        if (IsMatchingRule(a1, a2, DWORD2(v25), v5, a3))
        {
          result = AddEdgeRule(a1, a2, SDWORD2(v25), v5);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (mosyntkbaccphr_GetRule(0, v10, SDWORD2(v25)) >= 1)
          {
            result = AddRuleScenarios(a1, a2, DWORD2(v25), (a3 + 40), a5);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }
        }
      }

      else
      {
        v23 = 0;
        result = mosyntpal_ALLOCATE(a1, &v23, 0x20u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = NoteAPRuleListAlloc(a1, a2, v23);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v14 = v23;
        *(v23 + 8) = v13;
        v14[2] = a3;
        v14[3] = v5;
        v15 = *a4;
        if (*a4)
        {
          v16 = mosyntkbaccphr_GetRule(15, *(a2 + 16), *(v15 + 2));
          if (v16 < mosyntkbaccphr_GetRule(15, *(a2 + 16), v13))
          {
            while (1)
            {
              v17 = v15;
              v15 = *v15;
              if (!v15)
              {
                break;
              }

              v18 = mosyntkbaccphr_GetRule(15, *(a2 + 16), *(v15 + 2));
              if (v18 >= mosyntkbaccphr_GetRule(15, *(a2 + 16), v13))
              {
                v19 = *v17;
                goto LABEL_22;
              }
            }

            v19 = 0;
LABEL_22:
            *v23 = v19;
            *v17 = v23;
            goto LABEL_23;
          }

          v20 = *a4;
          v14 = v23;
        }

        else
        {
          v20 = 0;
        }

        *v14 = v20;
        *a4 = v23;
      }

LABEL_23:
      result = mosyntkbaccphr_GetNextAccPhrEntry(a1, v10, &v22, v24);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v5 = *v5;
  }

  while (v5);
  return result;
}

uint64_t IsMatchingRule(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32[0] = 0;
  *(v32 + 5) = 0;
  v10 = *(a2 + 16);
  v11 = **(a5 + 24) - **(a5 + 16);
  if (mosyntkbaccphr_GetRule(8, v10, a3) <= v11 && v11 <= mosyntkbaccphr_GetRule(9, v10, a3) && (v12 = mosyntkbaccphr_GetRule(6, v10, a3), v13 = *(a5 + 82), v12 <= v13) && mosyntkbaccphr_GetRule(7, v10, a3) >= v13 && (v14 = mosyntkbaccphr_GetRule(10, v10, a3), v15 = *(a5 + 80), v14 <= v15) && mosyntkbaccphr_GetRule(11, v10, a3) >= v15)
  {
    if (IsMatchingNodeContext(a1, a2, a3, a4, a5, 0))
    {
      if (IsMatchingNodeContext(a1, a2, a3, a4, a5, 1))
      {
        v16 = IsMatchingNodeContext(a1, a2, a3, a4, a5, 2);
        if (v16)
        {
          Rule = mosyntkbaccphr_GetRule(5, v10, a3);
          if (Rule == mosyntkbaccphr_Nil())
          {
            v17 = 0;
          }

          else
          {
            v16 = IsMatchingNodeContext(a1, a2, a3, a4, a5, 3);
            if (v16)
            {
              v17 = 0;
            }

            else
            {
              v17 = 5;
            }
          }
        }

        else
        {
          v17 = 4;
        }
      }

      else
      {
        v16 = 0;
        v17 = 3;
      }
    }

    else
    {
      v16 = 0;
      v17 = 2;
    }
  }

  else
  {
    v16 = 0;
    v17 = 1;
  }

  if (*a2 >= 2)
  {
    mosyntknowl_WriteTraceHeader(a1, 4u);
    m2__cp__str("[AccPhr]           ", &v31, 0x15u);
    mosyntbase_WString(a1, "[AccPhr] Node ", 0);
    v18 = *(a2 + 8);
    v19 = mosyntkbaccphr_GetRule(1, v10, a3);
    mosyntkbaccphr_WriteAccPhrNode(a1, v18, v10, v19);
    mosyntbase_WStringLn(a1, " covers:", 0);
    mosyntbase_WString(a1, "[AccPhr] ", 0);
    WriteCoverage(a1, a2, *(a5 + 16), *(a5 + 24));
    mosyntbase_WLn(a1);
    mosyntbase_WStringLn(a1, "[AccPhr] Matching rule:", 0);
    mosyntbase_WString(a1, "[AccPhr] ", 0);
    mosyntkbaccphr_WriteRuleHeadline(a1, *(a2 + 8), v10, a3);
    mosyntbase_WLn(a1);
    if (v16)
    {
      mosyntbase_WriteMessage(a1, "%s...\\n[AccPhr] Rule matched successfully.\\n", 0, &v31, 0x15u, "", 0, "", 0);
      return v16;
    }

    if (v17 == 5)
    {
      v24 = *(a2 + 8);
      v25 = mosyntkbaccphr_GetRule(5, v10, a3);
      mosyntkbaccphr_WriteChildrenList(a1, v24, v10, &v31, 0x15u, v25);
      mosyntbase_WriteMessage(a1, "%s...\\n[AccPhr] Rule doesn't match: ", 0, &v31, 0x15u, "", 0, "", 0);
      v23 = "children";
    }

    else if (v17 == 1)
    {
      v20 = mosyntkbaccphr_GetRule(8, v10, a3);
      *(&v28 + 1) = mosyntkbaccphr_GetRule(9, v10, a3);
      LODWORD(v28) = 0;
      DWORD1(v28) = v20;
      mosyntbase_WriteMessage(a1, "%s<wordrange(%i,%i)>\\n", 0, &v31, 0x15u, "", 0, "", v28);
      v21 = mosyntkbaccphr_GetRule(6, v10, a3);
      *(&v29 + 1) = mosyntkbaccphr_GetRule(7, v10, a3);
      LODWORD(v29) = 0;
      DWORD1(v29) = v21;
      mosyntbase_WriteMessage(a1, "%s<syllrange(%i,%i)>\\n", 0, &v31, 0x15u, "", 0, "", v29);
      v22 = mosyntkbaccphr_GetRule(10, v10, a3);
      *(&v30 + 1) = mosyntkbaccphr_GetRule(11, v10, a3);
      LODWORD(v30) = 0;
      DWORD1(v30) = v22;
      mosyntbase_WriteMessage(a1, "%s<accrange(%i,%i)>\\n", 0, &v31, 0x15u, "", 0, "", v30);
      mosyntbase_WriteMessage(a1, "%s...\\n[AccPhr] Rule doesn't match: ", 0, &v31, 0x15u, "", 0, "", 0);
      v23 = "constraints";
    }

    else
    {
      mosyntbase_WriteMessage(a1, "%s...\\n[AccPhr] Rule doesn't match: ", 0, &v31, 0x15u, "", 0, "", 0);
      if ((v17 - 2) > 2)
      {
LABEL_18:
        mosyntbase_WStringLn(a1, " definition.", 0);
        return v16;
      }

      v23 = off_279DAC588[v17 - 2];
    }

    mosyntbase_WString(a1, v23, 0);
    goto LABEL_18;
  }

  return v16;
}

uint64_t AddEdgeRule(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = 0;
  result = mosyntpal_ALLOCATE(a1, &v10, 0x20u);
  if ((result & 0x80000000) == 0)
  {
    result = NoteAPRuleListAlloc(a1, a2, v10);
    if ((result & 0x80000000) == 0)
    {
      v9 = v10;
      *(v10 + 8) = a3;
      v9[2] = 0;
      v9[3] = a4;
      *v9 = *(a4 + 16);
      *(a4 + 16) = v10;
    }
  }

  return result;
}

uint64_t AddRuleScenarios(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = a3;
  v9 = *(a2 + 16);
  Scenario = mosyntkbaccphr_GetScenario(2, v9, *(a2 + 60));
  if (Scenario != mosyntkbaccphr_Nil())
  {
    v11 = 0;
    while (1)
    {
      if (mosyntkbaccphr_GetRuleSetIsSubset(v9, Scenario))
      {
        for (i = mosyntkbaccphr_AccPhrScenarios(*(a2 + 16)); ; i = mosyntkbaccphr_GetScenario(3, v9, v13))
        {
          v13 = i;
          if (i == mosyntkbaccphr_Nil())
          {
            break;
          }

          v14 = mosyntkbaccphr_GetScenario(1, v9, v13);
          if (v14 == mosyntkbaccphr_GetRuleSet(2, v9, Scenario))
          {
            break;
          }
        }

        if (v13 != mosyntkbaccphr_Nil())
        {
          v15 = mosyntkbaccphr_GetScenario(2, v9, v13);
          if (v15 != mosyntkbaccphr_Nil())
          {
            do
            {
              if (mosyntkbaccphr_GetRuleSetIsSubset(v9, v15))
              {
                v16 = 1;
              }

              else
              {
                RuleSet = mosyntkbaccphr_GetRuleSet(1, v9, v15);
                v16 = RuleSet != mosyntkbaccphr_GetRule(0, v9, v6);
              }

              v15 = mosyntkbaccphr_GetRuleSet(4, v9, v15);
            }

            while (v15 != mosyntkbaccphr_Nil() && v16);
            if (!v16)
            {
              v18 = mosyntkbaccphr_GetScenario(1, v9, v13);
              inserted = InsertScenario(a1, a2, v18, a4, &v23);
              if ((inserted & 0x80000000) != 0)
              {
                return inserted;
              }

              v20 = mosyntkbaccphr_GetScenario(1, v9, v13);
              v11 = InsertScenario(a1, a2, v20, a5, &v23);
              if ((v11 & 0x80000000) != 0)
              {
                return v11;
              }
            }
          }
        }
      }

      Scenario = mosyntkbaccphr_GetRuleSet(4, v9, Scenario);
      if (Scenario == mosyntkbaccphr_Nil())
      {
        return v11;
      }
    }
  }

  return 0;
}

uint64_t NoteAPRuleListAlloc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  result = mosyntpal_ALLOCATE(a1, &v7, 0x18u);
  if ((result & 0x80000000) == 0)
  {
    *v7 = *(a2 + 32);
    v6 = v7;
    *(a2 + 32) = v7;
    *(v6 + 2) = 4;
    v6[2] = a3;
  }

  return result;
}

uint64_t IsMatchingNodeContext(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, void *a5, uint64_t a6)
{
  v6 = a6;
  v11 = *(a2 + 16);
  if (a6 <= 1)
  {
    if (a6)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    goto LABEL_7;
  }

  if (a6 == 2)
  {
    v12 = 4;
LABEL_7:
    Rule = mosyntkbaccphr_GetRule(v12, *(a2 + 16), a3);
    v33 = Rule;
    if (mosyntkbaccphr_GetNode(3, v11, Rule))
    {
      NodeMatchOp = mosyntkbaccphr_GetNodeMatchOp(v11, Rule);
      if (v6)
      {
        goto LABEL_14;
      }

      if ((NodeMatchOp & 1) == 0)
      {
        goto LABEL_14;
      }

      v15 = a5[4];
      v34 = Rule;
      if (v15 == a4)
      {
        goto LABEL_14;
      }

      do
      {
        v16 = IsMatchingNode(a1, a2, &v34, v15);
        LODWORD(v17) = v16;
        if (v16)
        {
          break;
        }

        v15 = *v15;
      }

      while (v15 != a4);
      if (!v16)
      {
LABEL_14:
        if ((mosyntkbaccphr_GetNodeMatchOp(v11, Rule) & 2) != 0)
        {
          v31 = mosyntkbaccphr_GetNodeMatchOp(v11, Rule);
          LODWORD(v17) = IsMatchingNodeNeighbours(a1, a2, &v33, a5, v6, (v31 >> 2) & 1);
          Rule = v33;
        }

        else
        {
          LODWORD(v17) = 0;
        }
      }
    }

    else
    {
      LODWORD(v17) = 1;
    }

    if (mosyntkbaccphr_GetNodeNegated(v11, Rule))
    {
      return v17 == 0;
    }

    else
    {
      return v17;
    }
  }

  v18 = mosyntkbaccphr_GetRule(5, *(a2 + 16), a3);
  while (1)
  {
    if (v18 == mosyntkbaccphr_Nil())
    {
      return 0;
    }

    Children = mosyntkbaccphr_GetChildren(1, v11, v18);
    if (!mosyntkbaccphr_GetChildrenOp(v11, v18))
    {
      break;
    }

    if ((mosyntkbaccphr_GetNodeMatchOp(v11, Children) & 1) != 0 && (Node = mosyntkbaccphr_GetNode(8, v11, Children), Node == mosyntkbaccphr_Nil()) && (v21 = *a4, v34 = Children, v21))
    {
      do
      {
        v17 = IsMatchingNode(a1, a2, &v34, v21);
        if (v17)
        {
          break;
        }

        v21 = *v21;
      }

      while (v21);
    }

    else
    {
      v17 = 0;
    }

    while (Children != mosyntkbaccphr_Nil())
    {
      v22 = mosyntkbaccphr_GetNodeMatchOp(v11, Children);
      LODWORD(Children) = mosyntkbaccphr_GetNode(8, v11, Children);
      if ((v22 & 2) == 0)
      {
        goto LABEL_50;
      }
    }

    if (v17)
    {
      goto LABEL_58;
    }

    if (a5[9])
    {
      v27 = mosyntkbaccphr_GetChildren(1, v11, v18);
      v28 = a5[2];
      v29 = a5[9];
      v30 = mosyntkbaccphr_GetChildrenOp(v11, v18) == 2;
      v17 = IsMatchingChildren(a1, a2, v27, v28, a5, v29, v30);
    }

    else
    {
      v17 = 0;
    }

LABEL_50:
    v18 = mosyntkbaccphr_GetChildren(2, v11, v18);
    if (v17)
    {
      return v17;
    }
  }

  if (Children != mosyntkbaccphr_Nil())
  {
    while (1)
    {
      if ((mosyntkbaccphr_GetNodeMatchOp(v11, Children) & 1) == 0)
      {
        goto LABEL_62;
      }

      v23 = *a4;
      v34 = Children;
      if (!v23)
      {
        goto LABEL_62;
      }

      do
      {
        v24 = IsMatchingNode(a1, a2, &v34, v23);
        LODWORD(v17) = v24;
        if (v24)
        {
          break;
        }

        v23 = *v23;
      }

      while (v23);
      if (!v24)
      {
LABEL_62:
        LODWORD(v17) = (mosyntkbaccphr_GetNodeMatchOp(v11, Children) & 2) != 0 && (v25 = a5[9]) != 0 && IsMatchingChildFuzzy(a1, a2, Children, v25);
      }

      v17 = mosyntkbaccphr_GetNodeNegated(v11, Children) ? v17 == 0 : v17;
      v26 = mosyntkbaccphr_GetNode(8, v11, Children);
      if (!v17)
      {
        goto LABEL_50;
      }

      Children = v26;
      if (v26 == mosyntkbaccphr_Nil())
      {
        goto LABEL_58;
      }
    }
  }

  v17 = 1;
LABEL_58:
  mosyntkbaccphr_GetChildren(2, v11, v18);
  return v17;
}

BOOL IsMatchingChildFuzzy(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a2 + 16);
  v9 = a4[4];
  v14 = a3;
  if (v9)
  {
    do
    {
      v10 = IsMatchingNode(a1, a2, &v14, v9);
      if (v10)
      {
        break;
      }

      v9 = *v9;
    }

    while (v9);
    if (v10)
    {
      return 1;
    }
  }

  if ((mosyntkbaccphr_GetNodeMatchOp(v8, a3) & 4) != 0)
  {
    v11 = a4[9];
    if (v11)
    {
      if (IsMatchingChildFuzzy(a1, a2, a3, v11))
      {
        return 1;
      }
    }
  }

  v13 = a4[7];
  return v13 && IsMatchingChildFuzzy(a1, a2, a3, v13);
}

uint64_t IsMatchingChildren(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v10 = a3;
  while (2)
  {
    if (*(a6 + 16) == a4)
    {
      v14 = *(a6 + 92) == 0;
      v13 = a6;
    }

    else
    {
      v13 = *(a4 + 48);
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v13 = *(a4 + 32);
        v14 = 1;
      }
    }

    v15 = *(a2 + 16);
    do
    {
      while (1)
      {
        v16 = v13[4];
        v28 = v10;
        if (!v16)
        {
          goto LABEL_23;
        }

        do
        {
          v17 = IsMatchingNode(a1, a2, &v28, v16);
          if (v17)
          {
            break;
          }

          v16 = *v16;
        }

        while (v16);
        if (!v17)
        {
          goto LABEL_21;
        }

        Node = mosyntkbaccphr_GetNode(8, v15, v10);
        if (Node != mosyntkbaccphr_Nil())
        {
          if ((mosyntkbaccphr_GetNodeMatchOp(v15, v10) & 4) != 0 && *v13[3] < **(a6 + 24))
          {
            v19 = mosyntkbaccphr_GetNode(8, v15, v10);
            v20 = v13[3];
            v21 = a7;
            v22 = a1;
            v23 = a2;
            v24 = a5;
            v25 = a6;
LABEL_20:
            v16 = IsMatchingChildren(v22, v23, v19, v20, v24, v25, v21);
            goto LABEL_23;
          }

          if (*(a6 + 56))
          {
            v19 = mosyntkbaccphr_GetNode(8, v15, v10);
            v25 = *(a6 + 56);
            v20 = *(v25 + 16);
            v21 = a7;
            v22 = a1;
            v23 = a2;
            v24 = a5;
            goto LABEL_20;
          }

LABEL_21:
          v16 = 0;
          goto LABEL_23;
        }

        v16 = !a7 || (v13[3] == *(a5 + 24));
LABEL_23:
        if ((mosyntkbaccphr_GetNodeMatchOp(v15, v10) & 4) == 0)
        {
          goto LABEL_29;
        }

        v13 = *v13;
        if (!v13)
        {
          break;
        }

        if (v16)
        {
          goto LABEL_29;
        }
      }

      if (v14)
      {
        break;
      }

      v13 = *(a4 + 32);
      v14 = 1;
    }

    while (!v16);
LABEL_29:
    if (!(v16 | a7))
    {
      if ((mosyntkbaccphr_GetNodeMatchOp(v15, v10) & 4) != 0 && *a4 + 1 < **(a6 + 24))
      {
        a7 = 0;
        a4 = *(a4 + 16);
        continue;
      }

      a6 = *(a6 + 56);
      if (a6)
      {
        a7 = 0;
        a4 = *(a6 + 16);
        continue;
      }

      return 0;
    }

    return v16;
  }
}

uint64_t IsMatchingNodeNeighbours(uint64_t a1, uint64_t a2, unsigned int *a3, void *a4, int a5, int a6)
{
  while (1)
  {
    v6 = a6;
    v7 = a5;
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = a1;
    v38 = 0;
    v37 = 0;
    v12 = *(a2 + 16);
    if (mosyntkbaccphr_GetNode(3, v12, *a3) == 3)
    {
      break;
    }

    if (v7 == 2)
    {
      v19 = v8[3];
      v20 = *(v19 + 48);
      if (v20)
      {
        do
        {
          v21 = v20[4];
          LODWORD(v39) = *v9;
          if (v21)
          {
            do
            {
              result = IsMatchingNode(v11, v10, &v39, v21);
              if (result)
              {
                break;
              }

              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            result = 0;
          }

          if (result)
          {
            break;
          }

          v20 = *v20;
        }

        while (v20);
        v19 = v8[3];
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = 0;
      }

      v28 = *(v19 + 32);
      if (!v28)
      {
        return result;
      }

      v29 = v28[4];
      LODWORD(v39) = *v9;
      if (v29)
      {
        do
        {
          result = IsMatchingNode(v11, v10, &v39, v29);
          if (result)
          {
            break;
          }

          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        result = 0;
      }

      if (!v6 || result)
      {
        return result;
      }

      a1 = v11;
      a2 = v10;
      a3 = v9;
      a4 = v28;
      a5 = 2;
    }

    else if (v7 == 1)
    {
      v15 = v8[2];
      v16 = *(v15 + 40);
      if (v16)
      {
        do
        {
          v17 = *(v16 + 32);
          LODWORD(v39) = *v9;
          if (v17)
          {
            do
            {
              result = IsMatchingNode(v11, v10, &v39, v17);
              if (result)
              {
                break;
              }

              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            result = 0;
          }

          if (result)
          {
            break;
          }

          v16 = *(v16 + 8);
        }

        while (v16);
        v15 = v8[2];
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = 0;
      }

      v26 = *(v15 + 24);
      if (!v26)
      {
        return result;
      }

      v27 = v26[4];
      LODWORD(v39) = *v9;
      if (v27)
      {
        do
        {
          result = IsMatchingNode(v11, v10, &v39, v27);
          if (result)
          {
            break;
          }

          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        result = 0;
      }

      if (!v6 || result)
      {
        return result;
      }

      a1 = v11;
      a2 = v10;
      a3 = v9;
      a4 = v26;
      a5 = 1;
    }

    else
    {
      v22 = v8[6];
      if (!v22)
      {
        return 0;
      }

      v23 = *(v22 + 32);
      LODWORD(v39) = *v9;
      if (v23)
      {
        do
        {
          result = IsMatchingNode(v11, v10, &v39, v23);
          if (result)
          {
            break;
          }

          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        result = 0;
      }

      if (!v6 || result)
      {
        return result;
      }

      a4 = v8[6];
      a1 = v11;
      a2 = v10;
      a3 = v9;
      a5 = 0;
    }

    a6 = 1;
  }

  if (v7 != 2)
  {
    if (v7 == 1)
    {
      if (mosyntkbaccphr_GetNode(7, v12, *v9) == 1)
      {
        v13 = v8[2];
        v39 = 0;
        if (v13)
        {
          mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v13 + 64), &v39);
          result = v39 != 0;
          if (!v6)
          {
            return result;
          }
        }

        else
        {
          result = 0;
          if (!v6)
          {
            return result;
          }
        }

        if ((result & 1) == 0)
        {
          v32 = v8[2];
          do
          {
            v32 = *(v32 + 8);
            if (!v32)
            {
              break;
            }

            v39 = 0;
            mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v32 + 64), &v39);
          }

          while (!v39);
          return v32 != 0;
        }

        return result;
      }

      if (mosyntkbaccphr_GetNode(7, v12, *v9) == 2)
      {
        v24 = *(v8[2] + 8);
        return v6 || v24 == 0;
      }
    }

    return 0;
  }

  if (mosyntkbaccphr_GetNode(7, v12, *v9) != 1)
  {
    if (mosyntkbaccphr_GetNode(7, v12, *v9) == 3)
    {
      v24 = *(v8[3] + 16);
      return v6 || v24 == 0;
    }

    if (mosyntkbaccphr_GetNode(7, v12, *v9) == 4)
    {
      v30 = v8[3];
      v39 = 0;
      if (v30)
      {
        mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v30 + 64), &v39);
        v31 = v39;
      }

      else
      {
        v31 = 0;
      }

      mosyntdata_GetPunctFromCommandList(v11, v31, &v38, &v37);
      result = v38 == 10;
      if (!v6 || v38 == 10)
      {
        return result;
      }

      v33 = *(v8[3] + 16);
      if (v33)
      {
        do
        {
          v34 = v8[3];
          v39 = 0;
          if (v34)
          {
            mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v34 + 64), &v39);
            v35 = v39;
          }

          else
          {
            v35 = 0;
          }

          mosyntdata_GetPunctFromCommandList(v11, v35, &v38, &v37);
          v33 = *(v33 + 16);
        }

        while (v38 != 10 && v33 != 0);
        return v38 == 10;
      }
    }

    return 0;
  }

  v18 = v8[3];
  v39 = 0;
  if (v18)
  {
    mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v18 + 64), &v39);
    result = v39 != 0;
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  if ((result & 1) == 0)
  {
    v32 = v8[3];
    do
    {
      v32 = *(v32 + 16);
      if (!v32)
      {
        break;
      }

      v39 = 0;
      mosyntdata_GetSentTermCommList(v11, *(v10 + 40), *(v32 + 64), &v39);
    }

    while (!v39);
    return v32 != 0;
  }

  return result;
}

uint64_t IsMatchingNode(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v17 = 0;
  Node = mosyntkbaccphr_GetNode(3, v7, *a3);
  result = 0;
  if (Node <= 1)
  {
    if (!Node)
    {
      return 1;
    }

    if (Node != 1)
    {
      return result;
    }

    v10 = (a4 + 16);
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      v11 = mosyntkbaccphr_GetNode(4, v7, *a3);
      Rule = mosyntkbaccphr_GetRule(0, v7, *(v10 + 2));
      v13 = mosyntkbaccphr_GetRule(0, v7, *(v10 + 2));
      if (Rule >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = -v13;
      }

      if (v11 == v14)
      {
        return 1;
      }
    }

    return 0;
  }

  if (Node != 2)
  {
    if (Node != 3)
    {
      return result;
    }

    mosyntbase_WriteDevelMessage(a1, "IsMatchingNode -- Property, not handeled here\\n", 0, "", 0, "", 0, "", 0, 0);
    return 0;
  }

  v15 = mosyntkbaccphr_GetNode(5, v7, *a3);
  v16 = mosyntkbaccphr_GetNode(6, v7, *a3);
  mosyntkbaccphr_CheckMatchingConsFeat2(a1, v7, v15, v16, *(*(a4 + 8) + 16), (*(a4 + 8) + 24), &v17);
  return v17;
}

uint64_t InsertScenario(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v6 = 0;
  *a5 = 1;
  v7 = a4;
  while (1)
  {
    v8 = v6;
    v11 = v6;
    v6 = *v7;
    if (!*v7)
    {
      break;
    }

    v9 = *(v6 + 2);
    v7 = *v7;
    if (v9 >= a3)
    {
      if (v8)
      {
        if (v9 <= a3)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

      if (v9 <= a3)
      {
LABEL_13:
        result = 0;
        *a5 = 0;
        return result;
      }

      goto LABEL_11;
    }
  }

  if (v8)
  {
LABEL_8:
    result = NewScenarioList(a1, a2, a3, v8);
    if ((result & 0x80000000) == 0)
    {
      **v8 = v6;
    }

    return result;
  }

LABEL_11:
  result = NewScenarioList(a1, a2, a3, &v11);
  if ((result & 0x80000000) == 0)
  {
    *v11 = *a4;
    *a4 = v11;
  }

  return result;
}

uint64_t NewScenarioList(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v7 = *(a2 + 80);
  if (v7)
  {
    result = 0;
    *a4 = v7;
    *(a2 + 80) = **(a2 + 80);
LABEL_3:
    v9 = *a4;
    *(v9 + 8) = a3;
    *v9 = 0;
    return result;
  }

  result = mosyntpal_ALLOCATE(a1, a4, 0x10u);
  if ((result & 0x80000000) == 0)
  {
    v11 = *a4;
    v13 = 0;
    result = mosyntpal_ALLOCATE(a1, &v13, 0x18u);
    if ((result & 0x80000000) == 0)
    {
      *v13 = *(a2 + 32);
      v12 = v13;
      *(a2 + 32) = v13;
      *(v12 + 2) = 6;
      v12[2] = v11;
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t AddSegment(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5)
{
  v22 = 0;
  v10 = mosyntpal_ALLOCATE(a1, &v22, 0x28u);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = v22;
  v23 = 0;
  v12 = mosyntpal_ALLOCATE(a1, &v23, 0x18u);
  if ((v12 & 0x80000000) == 0)
  {
    *v23 = *(a2 + 32);
    v13 = v22;
    v14 = v23;
    *(a2 + 32) = v23;
    *(v14 + 2) = 7;
    v14[2] = v11;
    *(v13 + 8) = a4;
    *(v13 + 16) = a5;
    v15 = *a5 - *a4;
    *(v13 + 24) = a3;
    *(v13 + 28) = v15;
    v16 = *(a2 + 16);
    for (i = mosyntkbaccphr_GetScenario(2, v16, *(a2 + 60)); ; i = mosyntkbaccphr_GetRuleSet(4, v16, v18))
    {
      v18 = i;
      if (i == mosyntkbaccphr_Nil() || mosyntkbaccphr_GetRuleSet(2, v16, v18) == a3)
      {
        break;
      }
    }

    if (v18 == mosyntkbaccphr_Nil())
    {
      RuleSet = 10000;
    }

    else
    {
      RuleSet = mosyntkbaccphr_GetRuleSet(3, v16, v18);
    }

    v20 = v22;
    *(v22 + 32) = RuleSet;
    *v20 = *(a4 + 56);
    *(a4 + 56) = v22;
  }

  return v12;
}

uint64_t GetBestScenarioPathSuffix(uint64_t a1, void *a2, uint64_t **a3, uint64_t a4, uint64_t a5, int *a6, _DWORD *a7, _DWORD *a8, uint64_t *a9)
{
  v9 = a8;
  v17 = *(a4 + 16);
  if (v17 == a5)
  {
    result = 0;
    *a6 = 0;
    *a7 = 0;
    *a8 = 0;
    *a9 = 0;
  }

  else
  {
    result = GetBestScenarioPathSuffix(a1, a2, a3, v17, a5, a6, a7, a8, a9);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  v19 = *(a4 + 56);
  if (!v19)
  {
    return result;
  }

  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v36 = v9;
  while (1)
  {
    if (v19[2] == a5)
    {
      v40 = 0;
      HIDWORD(v39) = 0;
      v37 = 0;
      if (!a3)
      {
        goto LABEL_30;
      }

      v22 = *(v19 + 6);
      v23 = a3;
      while (1)
      {
        v24 = *(v23 + 2);
        if (v24 >= v22)
        {
          break;
        }

        v23 = *v23;
        if (!v23)
        {
          goto LABEL_30;
        }
      }

      if (v24 == v22)
      {
        LODWORD(v39) = 0;
      }

      else
      {
LABEL_30:
        LODWORD(v39) = 1;
      }

      goto LABEL_31;
    }

    if (a3)
    {
      break;
    }

    v38 = 0;
LABEL_21:
    result = InsertScenario(a1, a2, *(v19 + 6), &v38, &v39);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = GetBestScenarioPathSuffix(a1, a2, v38, v19[2], a5, &v40 + 1, &v40, &v39 + 1, &v37);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v25 = v38;
    if (v38)
    {
      v9 = v36;
      do
      {
        v26 = v25;
        v25 = *v25;
      }

      while (v25);
      result = 0;
      *v26 = a2[10];
      a2[10] = v38;
      v38 = 0;
    }

    else
    {
      result = 0;
      v9 = v36;
    }

LABEL_31:
    v27 = *(v19 + 7) + HIDWORD(v40);
    if (v27 <= *a6)
    {
      if (v27 != *a6)
      {
        goto LABEL_50;
      }

      v28 = v40;
      v32 = *(v19 + 8) + v40;
      if (v32 >= *a7 && (v32 != *a7 || v39 + HIDWORD(v39) >= *v9))
      {
        goto LABEL_50;
      }
    }

    else
    {
      v28 = v40;
    }

    *a6 = v27;
    *a7 = *(v19 + 8) + v28;
    *v9 = v39 + HIDWORD(v39);
    v29 = *a9;
    if (*a9)
    {
      v30 = *v29;
      if (*v29)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
        *v31 = a2[11];
        a2[11] = *v29;
        *v29 = 0;
        v29 = *a9;
      }

      result = 0;
      *(v29 + 8) = v19;
    }

    else
    {
      v33 = a2[11];
      if (v33)
      {
        result = 0;
        *a9 = v33;
        a2[11] = *a2[11];
      }

      else
      {
        result = mosyntpal_ALLOCATE(a1, a9, 0x10u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v34 = *a9;
        v41 = 0;
        result = mosyntpal_ALLOCATE(a1, &v41, 0x18u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        *v41 = a2[4];
        v35 = v41;
        a2[4] = v41;
        *(v35 + 2) = 8;
        v35[2] = v34;
        v9 = v36;
      }

      *(*a9 + 8) = v19;
      **a9 = 0;
    }

    **a9 = v37;
LABEL_50:
    v19 = *v19;
    if (!v19)
    {
      return result;
    }
  }

  result = NewScenarioList(a1, a2, *(a3 + 2), &v38);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v20 = *a3;
  if (!*a3)
  {
    goto LABEL_21;
  }

  v21 = &v38;
  while (1)
  {
    v21 = *v21;
    result = NewScenarioList(a1, a2, *(v20 + 2), v21);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v20 = *v20;
    if (!v20)
    {
      goto LABEL_21;
    }
  }
}

uint64_t IsRightMatchingTarget(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  while (1)
  {
    v10 = *(a2 + 16);
    *a5 = a4;
    v11 = a4[4];
    v15 = a3;
    if (v11)
    {
      do
      {
        result = IsMatchingNode(a1, a2, &v15, v11);
        if (result)
        {
          break;
        }

        v11 = *v11;
      }

      while (v11);
      if (result)
      {
        break;
      }
    }

    if ((mosyntkbaccphr_GetNodeMatchOp(v10, a3) & 4) != 0)
    {
      v13 = a4[9];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = v13[7];
        }

        while (v13);
        result = IsRightMatchingTarget(a1, a2, a3, v14, a5);
        if (result)
        {
          break;
        }
      }
    }

    a4 = a4[8];
    if (!a4)
    {
      return 0;
    }
  }

  return result;
}

BOOL IsLeftMatchingTarget(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = *(a2 + 16);
  *a5 = a4;
  v11 = a4[4];
  v16 = a3;
  if (v11)
  {
    do
    {
      v12 = IsMatchingNode(a1, a2, &v16, v11);
      if (v12)
      {
        break;
      }

      v11 = *v11;
    }

    while (v11);
    if (v12)
    {
      return 1;
    }
  }

  if ((mosyntkbaccphr_GetNodeMatchOp(v10, a3) & 4) != 0)
  {
    v13 = a4[9];
    if (v13)
    {
      if (IsLeftMatchingTarget(a1, a2, a3, v13, a5))
      {
        return 1;
      }
    }
  }

  v15 = a4[7];
  return v15 && IsLeftMatchingTarget(a1, a2, a3, v15, a5);
}