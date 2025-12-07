uint64_t Pmk_Lookup_ObjcVoiceClose(_WORD *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v12 = 0;
  inited = InitRsrcFunction(a1, a2, &v12);
  if ((inited & 0x80000000) == 0)
  {
    v5 = v3[34];
    if (v5)
    {
      inited = ssftriff_reader_ReleaseChunkData(v5);
    }

    v6 = v3[36];
    if (v6)
    {
      inited = ssftriff_reader_ReleaseChunkData(v6);
    }

    v7 = v3[40];
    if (v7)
    {
      heap_Free(*(v12 + 8), v7);
    }

    v8 = v3[39];
    if (v8)
    {
      heap_Free(*(v12 + 8), v8);
    }

    v9 = v3[38];
    if (v9)
    {
      heap_Free(*(v12 + 8), v9);
    }

    v10 = v3[33];
    if (v10)
    {
      heap_Free(*(v12 + 8), v10);
    }

    heap_Free(*(v12 + 8), v3);
  }

  return inited;
}

uint64_t Pmk_Lookup_ObjClose(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = v2[1];
    if (!v4 || (v5 = *(v4 + 48)) == 0)
    {
      v5 = *(*v2 + 48);
    }

    objc_ReleaseObject(v5, v3);
  }

  v6 = v2[3];
  if (v6)
  {
    v7 = brk_DataClose(*(*v2 + 24), v6);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v2[4];
  if (!v8 || (v7 = brk_DataClose(*(*v2 + 24), v8), (v7 & 0x80000000) == 0))
  {
    heap_Free(*(*v2 + 8), v2);
    *a1 = 0;
  }

  return v7;
}

uint64_t Pmk_Lookup_UnitPeriInfo(void *a1, unsigned int a2, uint64_t a3)
{
  result = 0;
  v22 = 0;
  *(a3 + 8) = 0;
  v5 = a3 + 8;
  *a3 = 0;
  v6 = a1[2];
  if (*(v6 + 256) > a2)
  {
    v20 = 0;
    v19 = 0;
    v9 = *(*(v6 + 264) + 52);
    if (v9)
    {
      v21 = a2 / *(v6 + 260) * v9;
      unpackU32(&v20, *(v6 + 280), &v21, v9);
      v6 = a1[2];
    }

    else
    {
      v20 = 0;
    }

    if (a2 % *(v6 + 260))
    {
      v10 = *(*(v6 + 264) + 56);
      v21 = v10 * (a2 - 1);
      result = unpackU32_Offline(&v19 + 1, *(v6 + 300), *(*a1 + 24), a1[4], &v21, v10);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v6 = a1[2];
      v11 = *(*(v6 + 264) + 56);
    }

    else
    {
      HIDWORD(v19) = 0;
      v11 = *(*(v6 + 264) + 56);
      v21 = v11 * a2;
    }

    result = unpackU32_Offline(&v19, *(v6 + 300), *(*a1 + 24), a1[4], &v21, v11);
    if ((result & 0x80000000) == 0)
    {
      v12 = v19 - HIDWORD(v19);
      if (v19 != HIDWORD(v19))
      {
        result = brk_DataMap(*(*a1 + 24), a1[3], (*(a1[2] + 296) + HIDWORD(v19) + v20), (v19 - HIDWORD(v19)), &v22);
        if ((result & 0x80000000) == 0)
        {
          v13 = v22;
          v14 = a1[2];
          v25 = 0;
          v26 = 0;
          v24 = 0;
          v23 = 0;
          v15 = *(v14 + 264);
          if (*(v14 + 328) == 1 && !*(v14 + 329) && !*(v14 + 330))
          {
            unpackU32(&v23, v22, &v26 + 1, v15[1]);
            unpackU32(&v23, v13, &v26 + 1, v15[3]);
          }

          unpackU32(&v23, v13, &v26 + 1, v15[5]);
          *(a3 + 8) = v15[4] + v23;
          unpackU32(&v23, v13, &v26 + 1, v15[7]);
          *a3 = v15[6] + v23;
          v16 = v15[12];
          if (v12 <= (HIDWORD(v26) + v16 + v15[11] - 1) >> 3)
          {
            v18 = 0;
          }

          else
          {
            LOWORD(v17) = 0;
            v18 = 0;
            do
            {
              unpackU32(&v25, v13, &v26 + 1, v16);
              unpackU32(&v26, v13, &v26 + 1, v15[11]);
              for (; v25; LODWORD(v25) = v25 - 1)
              {
                *(a3 + 40008 + 2 * v18) = v26;
                if (v18)
                {
                  *(v5 + 2 * v18) = *(v5 + 2 * (v18 - 1)) + v17;
                }

                unpackU32(&v25 + 1, v13, &v26 + 1, 1u);
                if (HIDWORD(v25))
                {
                  if (v15[10] && (unpackU32(&v25 + 1, v13, &v26 + 1, 1u), !HIDWORD(v25)))
                  {
                    unpackS32(&v24, v13, &v26 + 1, v15[10]);
                    LOWORD(v17) = v17 + v24;
                  }

                  else
                  {
                    unpackU32(&v24 + 1, v13, &v26 + 1, v15[9]);
                    v17 = v15[8] + HIDWORD(v24);
                  }
                }

                *(a3 + 20008 + 2 * v18++) = v17;
              }

              v16 = v15[12];
            }

            while (v12 > (HIDWORD(v26) + v16 + v15[11] - 1) >> 3);
          }

          *(a3 + 2) = v18;
          return brk_DataUnmap(*(*a1 + 24), a1[3], v22);
        }
      }
    }
  }

  return result;
}

uint64_t Pmk_Lookup_Fingerprint(uint64_t a1, void *a2)
{
  *a2 = *(*(a1 + 16) + 320);
  if (*(*(a1 + 16) + 320))
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t pmk_lookup_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &IPmkLookup;
  return result;
}

uint64_t unpackU32_Offline(int *a1, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int a6)
{
  v23 = 0;
  if (a6)
  {
    v10 = *a5;
    *a5 += a6;
    result = brk_DataMap(a3, a4, a2 + (v10 >> 3), 4, &v23);
    if (!result)
    {
      v12 = 8 - (v10 & 7);
      if (v12 >= a6)
      {
        v13 = a6;
      }

      else
      {
        v13 = 8 - (v10 & 7);
      }

      v14 = v23;
      v15 = (*v23 >> (v12 - v13)) & ~(-1 << v13);
      *a1 = v15;
      v16 = a6 - v13;
      v17 = a6 - v13 - 8;
      if (a6 - v13 < 8)
      {
        v18 = 1;
        if (!v16)
        {
          return brk_DataUnmap(a3, a4, v14);
        }
      }

      else
      {
        v18 = (v17 >> 3) + 2;
        v19 = (v14 + 1);
        v20 = (v17 >> 3) + 1;
        do
        {
          *a1 = v15 << 8;
          v21 = *v19++;
          v15 = v21 | (v15 << 8);
          *a1 = v15;
          v16 -= 8;
          --v20;
        }

        while (v20);
        if (!v16)
        {
          return brk_DataUnmap(a3, a4, v14);
        }
      }

      v22 = v15 << v16;
      *a1 = v22;
      *a1 = (*(v14 + v18) >> (8 - v16)) + v22;
      return brk_DataUnmap(a3, a4, v14);
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
  }

  return result;
}

uint64_t unpackU32(int *a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  if (!a4)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v4 = *a3;
  v5 = v4 >> 3;
  v6 = 8 - (*a3 & 7);
  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = 8 - (*a3 & 7);
  }

  *a3 = v4 + a4;
  v8 = (*(a2 + v5) >> (v6 - v7)) & ~(-1 << v7);
  *a1 = v8;
  v9 = a4 - v7;
  v10 = (v5 + 1);
  if (a4 - v7 >= 8)
  {
    do
    {
      *a1 = v8 << 8;
      v8 = *(a2 + v10) | (v8 << 8);
      *a1 = v8;
      v9 -= 8;
      ++v10;
    }

    while (v9 > 7);
  }

  if (v9)
  {
    v11 = v8 << v9;
    *a1 = v11;
    v12 = (*(a2 + v10) >> (8 - v9)) + v11;
LABEL_10:
    *a1 = v12;
  }

  return 0;
}

uint64_t unpackS32(int *a1, uint64_t a2, _DWORD *a3, int a4)
{
  v10 = 0;
  *a1 = 0;
  unpackU32(&v10 + 1, a2, a3, 1u);
  unpackU32(&v10, a2, a3, a4 - 1);
  if (HIDWORD(v10))
  {
    v8 = -v10;
  }

  else
  {
    v8 = v10;
  }

  *a1 = v8;
  return 0;
}

uint64_t smcadpcmf5spi_GenDecOpen(_WORD *a1, int a2, unsigned __int16 *a3, int a4, uint64_t a5)
{
  v6 = 2328911882;
  v26 = 0;
  result = 2328911878;
  if (!a3 || !a5)
  {
    return result;
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  inited = InitRsrcFunction(a1, a2, &v26);
  if (inited < 0)
  {
    return inited & 0xFDFFF | 0x8AD02000;
  }

  v12 = heap_Calloc(*(v26 + 8), 1, 88);
  if (!v12)
  {
    return 2328911882;
  }

  v13 = v12;
  *(v12 + 80) = v26;
  *a5 = 0;
  *(a5 + 8) = 0;
  v14 = *a3;
  v15 = a3[1];
  *(v12 + 4) = v15;
  if (a4 == 4)
  {
    *(v12 + 56) = 0;
    Info = smcadpcmf5spi_GetInfo(8450, v14, v15, 0, 0, &v27);
    if (Info < 0)
    {
      v21 = Info & 0x1FFFFF;
    }

    else
    {
      *(v13 + 40) = heap_Calloc(*(v26 + 8), 1, HIWORD(v28));
      if (v29)
      {
        *(v13 + 48) = heap_Calloc(*(v26 + 8), 1, v29);
      }

      v17 = heap_Calloc(*(v26 + 8), *(v13 + 4), 2);
      *(v13 + 16) = v17;
      if (!*(v13 + 40) || v29 && !*(v13 + 48) || !v17)
      {
        goto LABEL_21;
      }

      NullHandle = safeh_GetNullHandle();
      v20 = smcadpcmf5spi_DecoderOpen(8450, v15, NullHandle, v19, 0, 0, *(v13 + 40), v13 + 64);
      v6 = v20;
      if ((v20 & 0x80000000) == 0)
      {
        *(v13 + 2) = WORD3(v28);
        *(v13 + 4) = WORD2(v28) >> 1;
        *(v13 + 6) = WORD4(v27);
        *v13 = 4;
        *(v13 + 8) = 0;
        if (!v20)
        {
          result = 0;
          *a5 = v13;
          *(a5 + 8) = 173;
          return result;
        }

        goto LABEL_21;
      }

      v21 = v20 & 0x1FFFFF;
    }

    v6 = v21 | 0x8AD02000;
  }

  else
  {
    v6 = 2328911881;
  }

LABEL_21:
  v22 = *(v13 + 40);
  v23 = v26;
  if (v22)
  {
    heap_Free(*(v26 + 8), v22);
    v23 = v26;
  }

  v24 = *(v13 + 48);
  if (v24)
  {
    heap_Free(*(v23 + 8), v24);
    v23 = v26;
  }

  v25 = *(v13 + 16);
  if (v25)
  {
    heap_Free(*(v23 + 8), v25);
    v23 = v26;
  }

  heap_Free(*(v23 + 8), v13);
  return v6;
}

uint64_t smcadpcmf5spi_GenDecGetInfo(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  result = safeh_HandleCheck(a1, a2, 173, 88);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      v13 = *a3 + *(a1 + 6);
      v14 = *(a1 + 4);
      v15 = (*a4 + v13 - 1) / v14;
      v16 = *(a1 + 8);
      v17 = v13 / v14 - v16;
      if (v13 / v14 < v16)
      {
        v17 = 0;
      }

      v18 = *(a1 + 2);
      *a6 = v17 * v18;
      *a7 = (v15 - v17 + 1) * v18;
      *(a1 + 28) = *a4;
      *(a1 + 32) = v13 - v17 * v14;
      *(a1 + 24) = 0;
      if (!result)
      {
        smcadpcmf5spi_DecoderResetMemory(*(a1 + 64), *(a1 + 72));
        return 0;
      }
    }

    else
    {
      return 2328911880;
    }
  }

  return result;
}

uint64_t smcadpcmf5spi_GenDecClose(uint64_t *a1, int a2)
{
  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(a1, a2, NullHandle, v5))
  {
    return 0;
  }

  v8 = safeh_HandleCheck(a1, a2, 173, 88);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (!a1)
  {
    return 2328911880;
  }

  v6 = smcadpcmf5spi_DecoderClose(a1[8], a1[9]);
  heap_Free(*(a1[10] + 8), a1[5]);
  v9 = a1[6];
  if (v9)
  {
    heap_Free(*(a1[10] + 8), v9);
  }

  heap_Free(*(a1[10] + 8), a1[2]);
  heap_Free(*(a1[10] + 8), a1);
  return v6;
}

uint64_t smcadpcmf5spi_GenDecProcess(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, char *a5, unsigned int *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = safeh_HandleCheck(a1, a2, 173, 88);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (!a1)
  {
    return 2328911880;
  }

  if (*a6 >= *(a1 + 28))
  {
    v12 = *(a1 + 28);
  }

  else
  {
    v12 = *a6;
  }

  v28 = a4;
  v29 = a6;
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = *(a1 + 24);
  if (v12 <= v13)
  {
    memcpy(a5, *(a1 + 16), 2 * v12);
    memmove(*(a1 + 16), (*(a1 + 16) + 2 * v12), 2 * (*(a1 + 24) - v12));
    v17 = &a5[2 * v12];
    *(a1 + 24) -= v12;
    *(a1 + 28) -= v12;
    goto LABEL_14;
  }

  v14 = *a4;
  v15 = *(a1 + 2);
  if (v14 < v15)
  {
    if (*(a1 + 24))
    {
      memcpy(a5, *(a1 + 16), 2 * v13);
      v16 = *(a1 + 24);
      v17 = &a5[2 * v16];
      *(a1 + 28) -= v16;
      *(a1 + 24) = 0;
LABEL_14:
      LODWORD(v18) = a3;
      goto LABEL_15;
    }

LABEL_12:
    v17 = a5;
    goto LABEL_14;
  }

  v18 = a3;
  v17 = a5;
  while (1)
  {
    v20 = *(a1 + 32);
    v21 = *(a1 + 4);
    v31 = v15;
    v30 = 2 * v21;
    *(a1 + 56) = 0;
    v11 = smcadpcmf5spi_DecoderProcess(*(a1 + 64), *(a1 + 72), 0, v18, &v31, *(a1 + 48), v32, &v30);
    v22 = v30 >> 1;
    v30 >>= 1;
    if (v20 >= v21)
    {
      *(a1 + 32) -= v22;
      goto LABEL_31;
    }

    v23 = *(a1 + 32);
    if (v23)
    {
      LOWORD(v22) = v22 - v23;
      v24 = &v32[v23];
      *(a1 + 32) = 0;
      if (*(a1 + 28) < v22)
      {
        LOWORD(v22) = *(a1 + 28);
      }
    }

    else
    {
      if (*(a1 + 24))
      {
        memcpy(v17, *(a1 + 16), 2 * *(a1 + 24));
        v25 = *(a1 + 24);
        v17 += 2 * v25;
        v22 = *(a1 + 28) - v25;
        *(a1 + 28) = v22;
        v12 -= v25;
        *(a1 + 24) = 0;
      }

      else
      {
        v22 = *(a1 + 28);
      }

      v24 = v32;
      if (v22 > *(a1 + 4))
      {
        LOWORD(v22) = v30;
      }
    }

    v26 = v22;
    if (v12 < v22)
    {
      break;
    }

    memcpy(v17, v24, 2 * v22);
    *(a1 + 28) -= v26;
    v17 += 2 * v26;
    v12 -= v26;
LABEL_31:
    v18 += v31;
    if (v12)
    {
      v14 -= v31;
      v15 = *(a1 + 2);
      if (v14 >= v15)
      {
        continue;
      }
    }

    goto LABEL_15;
  }

  v27 = v22 - v12;
  memcpy(*(a1 + 16), &v24[v12], 2 * v27);
  *(a1 + 24) = v27;
  memcpy(v17, v24, 2 * v12);
  *(a1 + 28) -= v12;
  v17 += 2 * v12;
  LODWORD(v18) = v18 + v31;
LABEL_15:
  *v28 = v18 - a3;
  *v29 = (v17 - a5) >> 1;
  return v11;
}

uint64_t gsmc_vssq5_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2328911873;
  }

  result = 0;
  *a2 = &dec_I;
  return result;
}

char *adpcm_decoder(char *result, _WORD *a2, int a3, __int16 *a4)
{
  if (a3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v8 = *result++;
    v7 = v8;
    v9 = *(a4 + 2);
    v10 = stepsizeTable[*(a4 + 2)];
    v11 = *a4;
    for (i = a3 + 1; i > 1; --i)
    {
      if (v4 == 8)
      {
        v14 = *result++;
        v7 = v14;
        v4 = 1;
        if (!v5)
        {
LABEL_7:
          v15 = *result++;
          v13 = v15;
          LODWORD(v6) = v15 >> 4;
          goto LABEL_8;
        }
      }

      else
      {
        ++v4;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v13 = v6;
LABEL_8:
      v5 ^= 1u;
      v16 = indexTable[v6 & 0xF];
      v9 = (v16 + v9) & ~((v16 + v9) >> 31);
      if (v9 >= 88)
      {
        v9 = 88;
      }

      v17 = (v6 << 30) >> 31;
      v18 = (((v6 << 29) >> 31) & (v10 >> 1)) + (v10 >> 4) + (v17 & (v10 >> 2));
      if (v6)
      {
        v18 += v10 >> 3;
      }

      v19 = v10 + (v10 >> 3) + (v17 & (v10 >> 1));
      if (v6)
      {
        v19 += v10 >> 2;
      }

      v20 = (v10 >> 2) + 2 * v10 + (v10 & ((v6 << 30) >> 31));
      v21 = v20 + (v10 >> 1);
      if ((v6 & 1) == 0)
      {
        v21 = v20;
      }

      if ((v6 & 4) == 0)
      {
        v21 = v19;
      }

      if ((v6 & 8) == 0)
      {
        v21 = v18;
      }

      v22 = (v7 & 1) == 0;
      v7 >>= 1;
      if (!v22)
      {
        v21 = -v21;
      }

      v11 += v21;
      if (v11 <= -8192)
      {
        v11 = -8192;
      }

      if (v11 >= 0x1FFF)
      {
        v11 = 0x1FFF;
      }

      v10 = stepsizeTable[v9];
      *a4 = v11;
      *(a4 + 2) = v9;
      *a2++ = 4 * v11;
      v6 = v13;
    }
  }

  return result;
}

uint64_t smcadpcmf5spi_GetInfo(int a1, int a2, unsigned __int16 a3, int a4, int a5, uint64_t a6)
{
  if (a5 == 1)
  {
    if ((a1 & 0xFE00FFFF) != 0x2102)
    {
      return 2327847168;
    }
  }

  else
  {
    result = 2327847168;
    if (a2 != 10000 || (a1 & 0xFE00FFFF) != 0x2102)
    {
      return result;
    }
  }

  if (!a6)
  {
    return 2327846918;
  }

  *(a6 + 32) = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 8) = 0;
  if (!a3 || (a3 & 7) != 0)
  {
    return 2327846919;
  }

  result = 2327846919;
  if (!(a3 >> 13))
  {
    v8 = ((5 * a3) >> 3) + 3;
    *(a6 + 22) = v8;
    *(a6 + 24) = v8;
    LOWORD(v8) = 8 * v8;
    *(a6 + 26) = v8;
    *(a6 + 28) = v8;
    if (a4)
    {
      return 2327846913;
    }

    else
    {
      *(a6 + 16) = 10000;
      *(a6 + 20) = 2 * a3;
      result = 0;
      if (a5 == 1)
      {
        *(a6 + 30) = 0;
      }

      else
      {
        *(a6 + 30) = 4;
        *(a6 + 12) = 0;
        *(a6 + 18) = 0;
      }
    }
  }

  return result;
}

uint64_t smcadpcmf5spi_DecoderOpen(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 2327846918;
  if ((a1 & 0xFE00FFFF) != 0x2102)
  {
    return 2327847168;
  }

  if (!a8)
  {
    return 2327846920;
  }

  if (a7)
  {
    *a7 = 0;
    *a8 = a7;
    *(a8 + 8) = 65708;
    if (HIWORD(a2))
    {
      return 2327846919;
    }

    else
    {
      result = 0;
      *a7 = a2;
      *(a7 + 2) = ((5 * a2) >> 3) + 3;
    }
  }

  return result;
}

uint64_t smcadpcmf5spi_DecoderProcess(unsigned __int16 *a1, int a2, int a3, uint64_t a4, _WORD *a5, uint64_t a6, _WORD *a7, _WORD *a8)
{
  if (a8 && a5 && a4 && a7)
  {
    if (*a5)
    {
      *a8 = 0;
      if (a3)
      {
        *a5 = 0;
        return 2327846913;
      }

      else
      {
        result = safeh_HandleCheck(a1, a2, 65708, 4);
        if ((result & 0x80000000) == 0)
        {
          if (*a5 == a1[1])
          {
            v14 = 0;
            BYTE2(v14) = *a4;
            LOWORD(v14) = *(a4 + 1);
            adpcm_decoder((a4 + 3), a7, *a1, &v14);
            result = 0;
            *a8 = 2 * *a1;
          }

          else
          {
            *a5 = 0;
            *a8 = 0;
            return 2327846921;
          }
        }
      }

      return result;
    }
  }

  else if (!a5)
  {
    goto LABEL_10;
  }

  *a5 = 0;
LABEL_10:
  result = 2327846918;
  if (a8)
  {
    *a8 = 0;
  }

  return result;
}

uint64_t smc155mrf22spi_GenDecOpen(_WORD *a1, int a2, unsigned __int16 *a3, int a4, uint64_t a5)
{
  v6 = -2043650038;
  result = 2251317254;
  if (a3 && a5)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v24 = 0;
    inited = InitRsrcFunction(a1, a2, &v24);
    if (inited < 0)
    {
      v21 = inited & 0x3FFFFF;
      return v21 | 0x86302000;
    }

    v12 = heap_Calloc(*(v24 + 8), 1, 712);
    if (!v12)
    {
      return 2251317258;
    }

    v13 = v12;
    *(v12 + 704) = v24;
    *a5 = v12;
    *(a5 + 8) = 99;
    v14 = *a3;
    v15 = a3[1];
    v16 = a3[2];
    *(v12 + 680) = 0;
    LODWORD(result) = smc155mrf22spi_GetInfo(1057026, v14, v15 & 3, 0, 0, &v25);
    if ((result & 0x80000000) == 0)
    {
      *(v13 + 664) = heap_Calloc(*(v24 + 8), 1, HIWORD(v26));
      v17 = heap_Calloc(*(v24 + 8), 1, v27);
      *(v13 + 672) = v17;
      if (*(v13 + 664))
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        goto LABEL_15;
      }

      NullHandle = safeh_GetNullHandle();
      result = smc155mrf22spi_DecoderOpen(1057026, v15 & 3, NullHandle, v20, a3 + 2, a4 - 8, *(v13 + 664), v13 + 688);
      if ((result & 0x80000000) == 0)
      {
        *(v13 + 2) = WORD3(v26);
        *(v13 + 4) = WORD2(v26) >> 1;
        *(v13 + 6) = WORD4(v25);
        *v13 = 8;
        *(v13 + 8) = v16;
        return result;
      }
    }

    v6 = result;
LABEL_15:
    v22 = *(v13 + 664);
    if (v22)
    {
      heap_Free(*(v24 + 8), v22);
      *(v13 + 664) = 0;
    }

    v23 = *(v13 + 672);
    if (v23)
    {
      heap_Free(*(v24 + 8), v23);
      *(v13 + 672) = 0;
    }

    v21 = v6 & 0x3FFFFF;
    return v21 | 0x86302000;
  }

  return result;
}

uint64_t smc155mrf22spi_GenDecGetInfo(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v12 = safeh_HandleCheck(a1, a2, 99, 712);
  if ((v12 & 0x80000000) == 0)
  {
    if (a1)
    {
      v13 = *a3 + *(a1 + 6);
      v14 = *(a1 + 4);
      v15 = (*a4 + v13 - 1) / v14;
      v16 = *(a1 + 8);
      v17 = v13 / v14 - v16;
      if (v13 / v14 < v16)
      {
        v17 = 0;
      }

      v18 = *(a1 + 2);
      *a6 = v17 * v18;
      *a7 = v18 + v18 * (v15 - v17);
      *(a1 + 652) = *a4;
      *(a1 + 656) = v13 - v17 * v14;
      *(a1 + 650) = 0;
      bzero((a1 + 10), 2 * v14);
      smc155mrf22spi_DecoderResetMemory(*(a1 + 688), *(a1 + 696));
    }

    else
    {
      return 2251317256;
    }
  }

  return v12;
}

uint64_t smc155mrf22spi_GenDecClose(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 99, 712);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  if (!a1)
  {
    return 2251317256;
  }

  v4 = smc155mrf22spi_DecoderClose(a1[86], a1[87]);
  v5 = a1[83];
  if (v5)
  {
    heap_Free(*(a1[88] + 8), v5);
    a1[83] = 0;
  }

  v6 = a1[84];
  if (v6)
  {
    heap_Free(*(a1[88] + 8), v6);
    a1[84] = 0;
  }

  heap_Free(*(a1[88] + 8), a1);
  return v4;
}

uint64_t smc155mrf22spi_GenDecProcess(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int *a4, char *a5, unsigned int *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = safeh_HandleCheck(a1, a2, 99, 712);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (!a1)
  {
    return 2251317256;
  }

  if (*a6 >= *(a1 + 652))
  {
    v12 = *(a1 + 652);
  }

  else
  {
    v12 = *a6;
  }

  v30 = a4;
  v29 = a3;
  if (!v12)
  {
LABEL_12:
    v17 = a5;
    goto LABEL_14;
  }

  v13 = *(a1 + 650);
  if (v12 <= v13)
  {
    memcpy(a5, (a1 + 10), 2 * v12);
    memmove((a1 + 10), (a1 + 10 + 2 * v12), 2 * (*(a1 + 650) - v12));
    v17 = &a5[2 * v12];
    *(a1 + 650) -= v12;
    *(a1 + 652) -= v12;
    goto LABEL_14;
  }

  v14 = *a4;
  v15 = *(a1 + 2);
  if (*a4 < v15)
  {
    if (*(a1 + 650))
    {
      memcpy(a5, (a1 + 10), 2 * v13);
      v16 = *(a1 + 650);
      v17 = &a5[2 * v16];
      *(a1 + 652) -= v16;
      *(a1 + 650) = 0;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v17 = a5;
  while (1)
  {
    v19 = *(a1 + 656);
    v20 = *(a1 + 4);
    v32 = v15;
    v31 = 2 * v20;
    if (v19 >= v20)
    {
      v26 = v19 >= 3 * v20;
      *(a1 + 680) = v26;
      v11 = smc155mrf22spi_DecoderProcess(*(a1 + 688), *(a1 + 696), v26, a3, &v32, *(a1 + 672), v33, &v31, 0, 0);
      v27 = v31;
      v31 >>= 1;
      *(a1 + 656) -= v27 >> 1;
      goto LABEL_31;
    }

    *(a1 + 680) = 0;
    v11 = smc155mrf22spi_DecoderProcess(*(a1 + 688), *(a1 + 696), 0, a3, &v32, *(a1 + 672), v33, &v31, 0, 0);
    v21 = v31 >> 1;
    v31 >>= 1;
    v22 = *(a1 + 656);
    if (v22)
    {
      v23 = v21 - v22;
      v24 = &v33[2 * v22];
      *(a1 + 656) = 0;
      v25 = v23 >= *(a1 + 652) ? *(a1 + 652) : v23;
    }

    else
    {
      if (*(a1 + 650))
      {
        memcpy(v17, (a1 + 10), 2 * *(a1 + 650));
        v28 = *(a1 + 650);
        v17 += 2 * v28;
        v25 = *(a1 + 652) - v28;
        *(a1 + 652) = v25;
        v12 -= v28;
        *(a1 + 650) = 0;
      }

      else
      {
        v25 = *(a1 + 652);
      }

      if (v25 > *(a1 + 4))
      {
        v25 = v31;
      }

      v24 = v33;
    }

    if (v25 > v12)
    {
      break;
    }

    LH_S16ToLH_S16(v24, v17, v25);
    *(a1 + 652) -= v25;
    v17 += 2 * v25;
    v12 -= v25;
LABEL_31:
    a3 += v32;
    if (v12)
    {
      v14 -= v32;
      v15 = *(a1 + 2);
      if (v14 >= v15)
      {
        continue;
      }
    }

    goto LABEL_14;
  }

  LH_S16ToLH_S16(&v24[2 * v12], (a1 + 10), v25 - v12);
  *(a1 + 650) = v25 - v12;
  LH_S16ToLH_S16(v24, v17, v12);
  *(a1 + 652) -= v12;
  v17 += 2 * v12;
  LODWORD(a3) = a3 + v32;
LABEL_14:
  *v30 = a3 - v29;
  *a6 = (v17 - a5) >> 1;
  return v11;
}

uint64_t gsmc_155mrf22_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2251317249;
  }

  result = 0;
  *a2 = &dec_I_0;
  return result;
}

uint64_t smc155mrf22_fxd_gain_predict(int16x4_t *a1, __int16 *a2, unsigned int a3, _WORD *a4)
{
  if (a3 < 1)
  {
    v6 = 20971;
  }

  else
  {
    v5 = a3;
    v6 = 20971;
    do
    {
      v7 = *a2++;
      v6 += (v7 * v7) >> 5;
      --v5;
    }

    while (v5);
  }

  v8 = 1717986919 * (((vaddvq_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*a1), xmmword_1C3828920), 1uLL)) + 256) >> 9) + ((9216 - fxd_S16Lookup10Log10S16S16(((v6 / (a3 << 8)) >> 1), &s16LogTable_0)) << 7));
  result = fxd_U16LookupPow10U16U16((((v8 >> 36) + (v8 >> 63)) >> 1), &u16PowTable_0);
  *a4 = 2 * result;
  return result;
}

uint64_t smc155mrf22_fxd_gain_predict_pulses(int16x4_t *a1, int a2, __int16 a3, _WORD *a4)
{
  v5 = 1717986919 * (((vaddvq_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*a1), xmmword_1C3828920), 1uLL)) + 256) >> 9) + ((9216 - fxd_S16Lookup10Log10S16S16((((((a2 << 11) | 0x14) << 16 >> 6) / (a3 << 8)) >> 1), &s16LogTable_0)) << 7));
  result = fxd_U16LookupPow10U16U16((((v5 >> 36) + (v5 >> 63)) >> 1), &u16PowTable_0);
  *a4 = 2 * result;
  return result;
}

uint64_t smc155mrf22_fxd_DecodeCodeGain(unsigned int a1, __int16 *a2, int a3, uint64_t a4, __int16 a5)
{
  v15 = 0;
  if (a3)
  {
    smc155mrf22_fxd_gain_predict_pulses(a4, a3, a5, &v15);
  }

  else
  {
    smc155mrf22_fxd_gain_predict(a4, a2, a5, &v15);
  }

  if (a1 > 58)
  {
    if (a1 > 0x3C)
    {
      v8 = smc155mrf22_fxd_qgc[a1];
      v10 = 2 * v15 * v8;
      v11 = a1 > 0x3E;
      v12 = (v10 + 512) >> 10;
      v13 = (v10 + 2048) >> 12;
      if (a1 <= 0x3E)
      {
        LOWORD(v9) = v13;
      }

      else
      {
        LOWORD(v9) = v12;
      }

      if (v11)
      {
        v7 = 3082;
      }

      else
      {
        v7 = 1541;
      }
    }

    else
    {
      v8 = smc155mrf22_fxd_qgc[a1];
      v9 = (2 * v15 * v8 + 4096) >> 13;
      v7 = 770;
    }
  }

  else
  {
    v7 = 0;
    v8 = smc155mrf22_fxd_qgc[a1];
    v9 = (2 * v15 * v8 + 0x2000) >> 14;
  }

  *(a4 + 6) = *(a4 + 4);
  *(a4 + 2) = *a4;
  *a4 = 4 * (fxd_S16Lookup10Log10S16S16(v8, &s16LogTable_0) + v7);
  return v9;
}

unsigned __int8 *smc155mrf22_ReadStream(unsigned __int8 *result, unsigned int a2, _DWORD *a3, int a4, _WORD *a5)
{
  v14[49] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a2;
    v6 = v14;
    do
    {
      v7 = *result++;
      v8 = vdupq_n_s32(v7);
      *v6++ = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v8, xmmword_1C3827A00), vshlq_u32(v8, xmmword_1C38279F0))), 0x101010101010101);
      --v5;
    }

    while (v5);
  }

  if (a4)
  {
    v9 = 0;
    v10 = v14;
    do
    {
      v11 = *a5;
      if (*a5)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v13 += *(v10 + v12) << v12;
          ++v12;
        }

        while (v11 != v12);
        v10 = (v10 + v11);
      }

      else
      {
        v13 = 0;
      }

      *a3++ = v13;
      ++a5;
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

uint64_t smc155mrf22spi_GetInfo(int a1, int a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6)
{
  if (a5 == 1)
  {
    if (a1 != 1057026)
    {
      return 2250252544;
    }
  }

  else
  {
    result = 2250252544;
    if (a1 != 1057026 || a2 != 4005)
    {
      return result;
    }
  }

  if (!a6)
  {
    return 2250252294;
  }

  *(a6 + 32) = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 8) = 40;
  if (a3 > 3)
  {
    return 2250252295;
  }

  v8 = dword_1C382B1D0[a3];
  v9 = 0x310025001C0025uLL >> (16 * a3);
  *(a6 + 22) = v9;
  *(a6 + 24) = v9;
  v10 = 0x188012800E00128uLL >> (16 * a3);
  *a6 = v8;
  *(a6 + 4) = v8;
  *(a6 + 26) = v10;
  *(a6 + 28) = v10;
  result = 2250252289;
  if (a5 == 1)
  {
    if (!a4)
    {
      result = 0;
      *(a6 + 16) = 4005;
      *(a6 + 20) = 640;
      *(a6 + 30) = 0;
    }
  }

  else if (a4 < 2)
  {
    result = 0;
    *(a6 + 20) = 640;
    *(a6 + 30) = 56624768;
    *(a6 + 12) = 0xFA500000004;
  }

  return result;
}

uint64_t smc155mrf22spi_DecoderOpen(int a1, unsigned int a2, int a3, int a4, int *a5, int a6, char *a7, uint64_t a8)
{
  v8 = 2250252294;
  if (a1 != 1057026)
  {
    return 2250252544;
  }

  if (a7)
  {
    bzero(a7, 0x680uLL);
    if (a8)
    {
      *a8 = a7;
      *(a8 + 8) = 65634;
      if (a2 > 3)
      {
        return 2250252295;
      }

      else if (a5)
      {
        v16 = *a5;
        v15 = a5 + 1;
        v14 = v16;
        *(a7 + 11) = v16;
        *(a7 + 6) = v15;
        v17 = 8 * v16 + 24;
        if (v16 >= 1)
        {
          v18 = v14;
          v19 = v15;
          do
          {
            v20 = *v19++;
            v17 += 32 * v20;
            --v18;
          }

          while (v18);
        }

        if (v17 == a6)
        {
          v21 = &v15[v14];
          *(a7 + 7) = v21;
          v22 = &v21[v14];
          *(a7 + 10) = v22[1];
          *(a7 + 191) = v22 + 5;
          LODWORD(v22) = dword_1C382B200[a2];
          LODWORD(v21) = dword_1C382B210[a2];
          v23 = dword_1C382B220[a2];
          v24 = dword_1C382B230[a2];
          *(a7 + 28) = 0x18D00000036;
          *(a7 + 9) = v23;
          *(a7 + 3) = v21;
          *(a7 + 4) = v24;
          *(a7 + 5) = 22050;
          *(a7 + 4) = v22;
          bzero(a7 + 72, 0x59AuLL);
          *(a7 + 1592) = 0u;
          *(a7 + 1608) = 0u;
          *(a7 + 1560) = 0u;
          *(a7 + 1576) = 0u;
          *(a7 + 192) = 0;
          *(a7 + 386) = 0;
          *(a7 + 1548) = 0;
          *(a7 + 389) = 0;
          *(a7 + 8) = a7 + 866;
          *(a7 + 1506) = xmmword_1C382B1F0;
          fxd_LinSpace((a7 + 1624), 0, 25736, 0x10u);
          v8 = 0;
          *(a7 + 414) = 0;
        }

        else
        {
          return 2250252297;
        }
      }
    }

    else
    {
      return 2250252296;
    }
  }

  return v8;
}

uint64_t smc155mrf22spi_DecoderProcess(uint64_t a1, int a2, unsigned int a3, unsigned __int8 *a4, _WORD *a5, __int16 *a6, char *a7, _WORD *a8, _DWORD *a9, _WORD *a10)
{
  v57 = *MEMORY[0x1E69E9840];
  if (a8 && a5 && a4 && a6 && (v14 = a7) != 0)
  {
    if (*a5)
    {
      *a8 = 0;
      if (a3 >= 2)
      {
        *a5 = 0;
        return 2250252289;
      }

      else
      {
        result = safeh_HandleCheck(a1, a2, 65634, 1664);
        if ((result & 0x80000000) == 0)
        {
          if (a1)
          {
            if (*(a1 + 12) <= *a5)
            {
              smc155mrf22_ReadStream(a4, *(a1 + 12), a6 + 152, *(a1 + 16), &au16BitAllocationTable[56 * *(a1 + 4) - 840]);
              *a5 = *(a1 + 12);
              v52 = a3;
              if (a3)
              {
                fxd_LinSpace((a6 + 416), 0, 25736, 0x10u);
              }

              else
              {
                fxd_MultiStageVectorDecodeLsp(a6 + 152, *(a1 + 44), *(a1 + 48), *(a1 + 1528), 0x10u, a6 + 416);
                fxd_OrderCheckLsp(a6 + 416, 0x10u, *(a1 + 40));
              }

              v18 = 0;
              v19 = 0;
              v20 = &a6[2 * *(a1 + 44) + 304];
              v54 = 0;
              v55 = 0;
              v53 = a8;
              do
              {
                v21 = 80 * v19;
                smc1175mrf22_DecodeLag_11_22(*v20, v19, *(a1 + 4), &v55, &v54);
                smc1175mrf22_fxd_ExcitWFSet0_Decod_11_22((*(a1 + 64) + 160 * v19), v55, 0x50u);
                v22 = 0;
                *(a1 + 1518) = smc155mrf22_fxd_qgp[*(v20 + 1)];
                v23 = *(a1 + 64) + v18;
                do
                {
                  v24 = (2 * *(v23 + v22) * *(a1 + 1518) + 0x4000) >> 15;
                  if (v24 <= -32768)
                  {
                    v24 = -32768;
                  }

                  if (v24 >= 0x7FFF)
                  {
                    LOWORD(v24) = 0x7FFF;
                  }

                  *(v23 + v22) = v24;
                  v22 += 2;
                }

                while (v22 != 160);
                v25 = *(v20 + 2);
                v26 = *(v20 + 3);
                if (*(a1 + 4) == 16)
                {
                  smc155mrf22_fxd_DecodWFSet1_4p(a6, v56, 80, v25, v26);
                }

                else
                {
                  smc155mrf22_fxd_DecodWFSet1_5p(a6, v56, 80, v25, v26);
                }

                v27 = v55;
                if (v55 > 79)
                {
                  if (*(a1 + 4) == 16)
                  {
                    v33 = 4;
                  }

                  else
                  {
                    v33 = 5;
                  }

                  v34 = smc155mrf22_fxd_DecodeCodeGain(*(v20 + 4), a6, v33, a1 + 1506, 80);
                  *(a1 + 1516) = v34;
                  *(a1 + 1514) = v34;
                  v32 = *(a1 + 64);
                  v35 = v56;
                  do
                  {
                    v36 = *v35++;
                    *(v32 + 2 * (v36 + v21)) += (2 * a6[v36] * *(a1 + 1514) + 0x8000) >> 16;
                    --v33;
                  }

                  while (v33);
                }

                else
                {
                  v28 = 0;
                  do
                  {
                    v29 = (2 * a6[v28] * *(a1 + 1520) + 0x4000) >> 15;
                    if (v29 <= -32768)
                    {
                      v29 = -32768;
                    }

                    if (v29 >= 0x7FFF)
                    {
                      LOWORD(v29) = 0x7FFF;
                    }

                    a6[v27++] += v29;
                    ++v28;
                  }

                  while (v27 != 80);
                  v30 = smc155mrf22_fxd_DecodeCodeGain(*(v20 + 4), a6, 0, a1 + 1506, 80);
                  v31 = 0;
                  *(a1 + 1516) = v30;
                  *(a1 + 1514) = v30;
                  v32 = *(a1 + 64);
                  do
                  {
                    *(v32 + v18 + v31 * 2) += (2 * a6[v31] * *(a1 + 1514) + 0x8000) >> 16;
                    ++v31;
                  }

                  while (v31 != 80);
                }

                if (*(a1 + 36) < 2)
                {
                  v20 += 10;
                }

                else
                {
                  smc155mrf22_fxd_DecodWFSet1_4p(a6, v56, 80, *(v20 + 5), *(v20 + 6));
                  *(a1 + 1514) = (43690 * *(a1 + 1516) + 0x8000) >> 16;
                  v37 = v55;
                  if (v55 > 79)
                  {
                    v43 = 0;
                    v32 = *(a1 + 64);
                    do
                    {
                      *(v32 + 2 * (v56[v43] + v21)) += (2 * a6[v56[v43]] * *(a1 + 1514) + 0x8000) >> 16;
                      ++v43;
                    }

                    while (v43 != 4);
                  }

                  else
                  {
                    v38 = v55 + 1;
                    v39 = a6;
                    do
                    {
                      v40 = (2 * *v39 * *(a1 + 1520) + 0x4000) >> 15;
                      if (v40 <= -32768)
                      {
                        v40 = -32768;
                      }

                      if (v40 >= 0x7FFF)
                      {
                        LOWORD(v40) = 0x7FFF;
                      }

                      v39[v37] += v40;
                      ++v39;
                      v41 = v38++ == 80;
                    }

                    while (!v41);
                    v42 = 0;
                    v32 = *(a1 + 64);
                    do
                    {
                      *(v32 + v18 + v42 * 2) += (2 * a6[v42] * *(a1 + 1514) + 0x8000) >> 16;
                      ++v42;
                    }

                    while (v42 != 80);
                  }

                  if (*(a1 + 36) == 3)
                  {
                    smc155mrf22_fxd_DecodWFSet1_4p(a6, v56, 80, *(v20 + 7), *(v20 + 8));
                    *(a1 + 1514) = ((*(a1 + 1516) << 15) + 0x8000) >> 16;
                    v44 = v55;
                    if (v55 > 79)
                    {
                      v49 = 0;
                      v32 = *(a1 + 64);
                      do
                      {
                        *(v32 + 2 * (v56[v49] + v21)) += (2 * a6[v56[v49]] * *(a1 + 1514) + 0x8000) >> 16;
                        ++v49;
                      }

                      while (v49 != 4);
                    }

                    else
                    {
                      v45 = v55 + 1;
                      v46 = a6;
                      do
                      {
                        v47 = (2 * *v46 * *(a1 + 1520) + 0x4000) >> 15;
                        if (v47 <= -32768)
                        {
                          v47 = -32768;
                        }

                        if (v47 >= 0x7FFF)
                        {
                          LOWORD(v47) = 0x7FFF;
                        }

                        v46[v44] += v47;
                        ++v46;
                        v41 = v45++ == 80;
                      }

                      while (!v41);
                      v48 = 0;
                      v32 = *(a1 + 64);
                      do
                      {
                        *(v32 + v18 + v48 * 2) += (2 * a6[v48] * *(a1 + 1514) + 0x8000) >> 16;
                        ++v48;
                      }

                      while (v48 != 80);
                    }

                    v20 += 18;
                  }

                  else
                  {
                    v20 += 14;
                  }
                }

                *(a1 + 1520) = *(a1 + 1518);
                v50 = (v32 + 160 * v19);
                if (v52)
                {
                  LH_S16ToLH_S16(v50, a6 + 192, 0x50u);
                  v51 = v53;
                }

                else
                {
                  v51 = v53;
                  if (v19 == 3)
                  {
                    LH_S16ToLH_S16(a6 + 416, a6 + 272, 0x10u);
                  }

                  else
                  {
                    fxd_InterpolateVectors((a1 + 1624), a6 + 416, a6 + 272, word_1C391DD46[v19], 0x10u);
                  }

                  fxd_LspToCosLsp(a6 + 272, a6 + 272, 0x10u);
                  fxd_HighPrecisionCosLspToAi((a6 + 272), a6 + 136, 16);
                  fxd_HighPrecisionExpandLpcBandwidth(a6 + 136, a6 + 136, 32505, 0x10u, 0);
                  FillZeroLH_S32(a6, 0x60u);
                  LH_S32ToLH_S32((a1 + 1560), a6, 0x10u);
                  fxd_HighPrecisionFastSynthesisFilter(v50, a6 + 192, 80, 0, a6 + 136, 0x10u, 28, a6, 14);
                  LH_S32ToLH_S32(a6 + 160, (a1 + 1560), 0x10u);
                }

                LH_S16ToLH_S16(a6 + 192, v14, 0x50u);
                v14 += 160;
                *v51 += 160;
                ++v19;
                v18 += 160;
              }

              while (v19 != 4);
              if (a9)
              {
                *a10 = 4;
                *a9 = *a1;
              }

              LH_S16ToLH_S16(a6 + 416, (a1 + 1624), 0x10u);
              LH_S16ToLH_S16((a1 + 712), (a1 + 72), *(a1 + 32));
              FillZeroLH_S16((a1 + 72 + 2 * *(a1 + 32)), 0x140u);
              result = 0;
              ++*(a1 + 1656);
            }

            else
            {
              *a5 = 0;
              *a8 = 0;
              return 2250252297;
            }
          }

          else
          {
            return 2250252296;
          }
        }
      }

      return result;
    }
  }

  else if (!a5)
  {
    goto LABEL_14;
  }

  *a5 = 0;
LABEL_14:
  result = 2250252294;
  if (a8)
  {
    *a8 = 0;
  }

  return result;
}

uint64_t smc155mrf22spi_DecoderClose(uint64_t a1, int a2)
{
  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(a1, a2, NullHandle, v5))
  {
    return 0;
  }

  LODWORD(result) = safeh_HandleCheck(a1, a2, 65634, 1664);
  if (a1)
  {
    v7 = result;
  }

  else
  {
    v7 = -2044715000;
  }

  if (result >= 0)
  {
    return v7;
  }

  else
  {
    return result;
  }
}

uint64_t smc155mrf22spi_DecoderResetMemory(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 65634, 1664);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      bzero((a1 + 72), 0x59AuLL);
      *(a1 + 1592) = 0u;
      *(a1 + 1608) = 0u;
      *(a1 + 1560) = 0u;
      *(a1 + 1576) = 0u;
      *(a1 + 1536) = 0;
      *(a1 + 1544) = 0;
      *(a1 + 1548) = 0;
      *(a1 + 1556) = 0;
      *(a1 + 1506) = xmmword_1C382B1F0;
      fxd_LinSpace(a1 + 1624, 0, 25736, 0x10u);
      return 0;
    }

    else
    {
      return 2250252296;
    }
  }

  return result;
}

void smc155mrf22_fxd_DecodWFSet1_5p(void *a1, _DWORD *a2, signed int a3, char a4, unsigned int a5)
{
  FillZeroLH_S16(a1, a3);
  v10 = dword_1C382B240[a5 & 0xF];
  if (a4)
  {
    v11 = 0x2000;
  }

  else
  {
    v11 = -8192;
  }

  *(a1 + v10) = v11;
  *a2 = v10;
  v12 = (dword_1C382B300[a5 >> 4] + v10) % a3;
  if ((a4 & 2) != 0)
  {
    v13 = 0x2000;
  }

  else
  {
    v13 = -8192;
  }

  *(a1 + v12) = v13;
  a2[1] = v12;
  v14 = (dword_1C382B300[(a5 >> 8) & 0xF] + v12) % a3;
  if ((a4 & 4) != 0)
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = -8192;
  }

  *(a1 + v14) = v15;
  a2[2] = v14;
  v16 = (dword_1C382B300[a5 >> 12] + v14) % a3;
  if ((a4 & 8) != 0)
  {
    v17 = 0x2000;
  }

  else
  {
    v17 = -8192;
  }

  *(a1 + v16) = v17;
  a2[3] = v16;
  v18 = (dword_1C382B300[HIWORD(a5) & 0xF] + v16) % a3;
  if ((a4 & 0x10) != 0)
  {
    v19 = 0x2000;
  }

  else
  {
    v19 = -8192;
  }

  *(a1 + v18) = v19;
  a2[4] = v18;
}

void smc155mrf22_fxd_DecodWFSet1_4p(void *a1, _DWORD *a2, signed int a3, char a4, unsigned int a5)
{
  FillZeroLH_S16(a1, a3);
  v10 = dword_1C382B280[a5 & 0x1F];
  if (a4)
  {
    v11 = 0x2000;
  }

  else
  {
    v11 = -8192;
  }

  *(a1 + v10) = v11;
  *a2 = v10;
  v12 = (dword_1C382B300[(a5 >> 5) & 0xF] + v10) % a3;
  if ((a4 & 2) != 0)
  {
    v13 = 0x2000;
  }

  else
  {
    v13 = -8192;
  }

  *(a1 + v12) = v13;
  a2[1] = v12;
  v14 = (dword_1C382B300[(a5 >> 9) & 0xF] + v12) % a3;
  if ((a4 & 4) != 0)
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = -8192;
  }

  *(a1 + v14) = v15;
  a2[2] = v14;
  v16 = (dword_1C382B300[(a5 >> 13) & 0xF] + v14) % a3;
  if ((a4 & 8) != 0)
  {
    v17 = 0x2000;
  }

  else
  {
    v17 = -8192;
  }

  *(a1 + v16) = v17;
  a2[3] = v16;
}

uint64_t smcsch1spi_GenDecOpen(_WORD *a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = 2617270297;
  v23 = 0;
  v22 = 0;
  result = 2617270278;
  if (a3 && a5)
  {
    inited = InitRsrcFunction(a1, a2, &v22);
    if (inited < 0)
    {
      return inited & 0xFDFFF | 0x9C002000;
    }

    v12 = heap_Calloc(*(v22 + 8), 1, 144);
    if (!v12)
    {
      return 2617270282;
    }

    v13 = v12;
    *a5 = 0;
    *(a5 + 8) = 0;
    v14 = v22;
    *(v12 + 136) = v22;
    if (a4 < 8)
    {
      goto LABEL_6;
    }

    if (*a3 != 11000)
    {
      goto LABEL_15;
    }

    *(v12 + 40) = 100 * *(a3 + 2);
    Int = paramc_ParamGetInt(*(v14 + 40), "decoderoverheadframes", &v23);
    v16 = v23;
    if (!v23)
    {
      v16 = 2;
    }

    if (Int < 0)
    {
      v16 = 2;
    }

    *(v13 + 80) = v16;
    if (*(a3 + 6))
    {
      goto LABEL_15;
    }

    if (a4 - 8 < 0x18)
    {
LABEL_6:
      v6 = 2617270281;
LABEL_15:
      smcsch1spi_GenDecDestroyLowLevelDecoder(v13);
      heap_Free(*(v22 + 8), v13);
      return v6;
    }

    v17 = *(a3 + 8);
    *(v13 + 100) = v17;
    if (v17)
    {
      log_OutText(*(*(v13 + 136) + 32), "GSMCSCH1", 0, 0, "incompatible coded speech base format version (%d > (expected) %d)");
      goto LABEL_15;
    }

    *(v13 + 52) = *(a3 + 12);
    *(v13 + 48) = *(a3 + 16);
    v18 = *(a3 + 20);
    *(v13 + 44) = v18;
    if (v18 <= 15999)
    {
      if (v18 != 8000)
      {
        v19 = 12000;
LABEL_26:
        if (v18 != v19)
        {
          goto LABEL_15;
        }
      }
    }

    else if (v18 != 16000 && v18 != 48000)
    {
      v19 = 24000;
      goto LABEL_26;
    }

    *(v13 + 76) = *(a3 + 24);
    *(v13 + 72) = *(a3 + 28);
    if ((a4 & 0xFFFFFFFC) != 0x20)
    {
      v20 = *(a3 + 32);
      *(v13 + 96) = v20;
      if (!v20)
      {
        goto LABEL_15;
      }

      if (8 * v20 + 44 == a4)
      {
        *(v13 + 88) = a3 + 36;
        if (*(v13 + 48) == v18)
        {
          v21 = 20 * (v18 / 0x3E8u);
          *(v13 + 56) = v21;
          *(v13 + 60) = v21;
          result = smcsch1spi_GenDecInitializeLowLevelDecoder(v13);
          v6 = result;
          if (!result)
          {
            *a5 = v13;
            *(a5 + 8) = 448;
            return result;
          }
        }

        else
        {
          log_OutText(*(*(v13 + 136) + 32), "GSMCSCH1", 0, 0, "incompatible coded speech base: the speech base was encoded using internal resampling, but it's being decoded without it");
        }

        goto LABEL_15;
      }
    }

    goto LABEL_6;
  }

  return result;
}

uint64_t smcsch1spi_GenDecInitializeLowLevelDecoder(uint64_t a1)
{
  v2 = 2617270282;
  smcsch1spi_GenDecDestroyLowLevelDecoder(a1);
  v3 = *(*(a1 + 136) + 8);
  size = opus_decoder_get_size(1);
  v5 = heap_Alloc(v3, size);
  *a1 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  if (opus_decoder_init(v5, *(a1 + 44), 1))
  {
    v2 = 2617270272;
LABEL_4:
    smcsch1spi_GenDecDestroyLowLevelDecoder(a1);
    return v2;
  }

  *(a1 + 64) = 5760;
  v7 = heap_Alloc(*(*(a1 + 136) + 8), 11520);
  *(a1 + 8) = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  *(a1 + 32) = v7;
  *(a1 + 68) = 0;
  v8 = heap_Alloc(*(*(a1 + 136) + 8), 2 * *(a1 + 60));
  result = 0;
  *(a1 + 24) = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t *smcsch1spi_GenDecDestroyLowLevelDecoder(uint64_t *result)
{
  v1 = result;
  if (*result)
  {
    result = heap_Free(*(result[17] + 8), *result);
    *v1 = 0;
  }

  v2 = v1[2];
  if (v2)
  {
    result = heap_Free(*(v1[17] + 8), v2);
    v1[2] = 0;
  }

  v3 = v1[1];
  if (v3)
  {
    result = heap_Free(*(v1[17] + 8), v3);
    v1[1] = 0;
  }

  v4 = v1[3];
  if (v4)
  {
    result = heap_Free(*(v1[17] + 8), v4);
    v1[3] = 0;
  }

  return result;
}

uint64_t smcsch1spi_GenDecGetInfo(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v12 = safeh_HandleCheck(a1, a2, 448, 144);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = 2617270272;
  if (!a1)
  {
    return 2617270280;
  }

  v14 = *a3;
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v17 = *(v15 + 8 * v16);
  if (*a3 > v17)
  {
    *a3 = v17;
    v16 = *(a1 + 96);
    v14 = v17;
  }

  v37[0] = v14;
  v37[1] = 0;
  v18 = ssft_bsearch(v37, v15, v16, 8, smcsch1spi_CompareChunkIndexCells);
  *(a1 + 104) = v18;
  if (v18)
  {
    v25 = *v18;
    if (*a3 >= *v18 && (v26 = v18[2], *a3 < v26) && v18[1] <= v18[3])
    {
      v28 = *a3 - *v18 + *(a1 + 76);
      v29 = *a4 + v28 - 1;
      if (v29 + v25 >= v26)
      {
        v30 = v26 - v25;
        v29 = v30 - 1;
        *a4 = v30 - v28;
      }

      v31 = *(a1 + 60);
      *(a1 + 112) = v28 / v31;
      *(a1 + 116) = v29 / v31;
      v32 = *(a1 + 80);
      v33 = v28 / v31 - v32;
      if (v28 / v31 <= v32)
      {
        *(a1 + 120) = 0;
      }

      else
      {
        *(a1 + 120) = v33;
        if (v28 / v31 != v32)
        {
          v34 = *(a1 + 76);
          do
          {
            if (v28 >= v34 + v33 * v31)
            {
              break;
            }

            *(a1 + 120) = --v33;
          }

          while (v33);
        }
      }

      v35 = v18[1];
      *a6 = v35;
      *a7 = v18[3] - v35;
      *(a1 + 128) = *a4;
      *(a1 + 132) = v28;
      *(a1 + 124) = 0;
      *(a1 + 82) = 0;
      if (*a1)
      {
        if (opus_decoder_ctl(*a1, 4028, v19, v20, v21, v22, v23, v24, v36))
        {
          return 2617270272;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      log_OutText(*(*(a1 + 136) + 32), "GSMCSCH1", 0, 0, "inconsistent chunk index (sample and Byte offsets are not monotonically increasing)");
    }
  }

  else
  {
    log_OutText(*(*(a1 + 136) + 32), "GSMCSCH1", 0, 0, "requested start of speech segment (sample %d) missing from speech base", *a3);
    return 2617270281;
  }

  return v13;
}

uint64_t smcsch1spi_CompareChunkIndexCells(unsigned int *a1, unsigned int *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *a1;
    if (v4 >= *a2)
    {
      return v4 >= a2[2];
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t smcsch1spi_GenDecClose(uint64_t *a1, int a2)
{
  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(a1, a2, NullHandle, v5))
  {
    return 0;
  }

  v6 = safeh_HandleCheck(a1, a2, 448, 144);
  if ((v6 & 0x80000000) == 0)
  {
    if (a1)
    {
      smcsch1spi_GenDecDestroyLowLevelDecoder(a1);
      heap_Free(*(a1[17] + 8), a1);
    }

    else
    {
      return 2617270280;
    }
  }

  return v6;
}

uint64_t smcsch1spi_GenDecProcess(uint64_t a1, int a2, unsigned __int16 *a3, _DWORD *a4, char *a5, unsigned int *a6)
{
  v11 = safeh_HandleCheck(a1, a2, 448, 144);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (!a1)
  {
    return 2617270280;
  }

  v12 = *(a1 + 128);
  if (*a6 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = *a6;
  }

  v45 = a6;
  v46 = a4;
  if (!v13)
  {
    goto LABEL_41;
  }

  v14 = *(a1 + 82);
  if (v13 <= v14)
  {
    memcpy(a5, *(a1 + 24), 2 * v13);
    memmove(*(a1 + 24), (*(a1 + 24) + 2 * v13), 2 * (*(a1 + 82) - v13));
    v18 = &a5[2 * v13];
    *(a1 + 82) -= v13;
    *(a1 + 128) -= v13;
    goto LABEL_42;
  }

  v15 = *a4;
  if (*a4 > 1u)
  {
    v16 = *(a1 + 124);
    v17 = a3;
    v18 = a5;
    v19 = v13;
    v44 = a3;
    while (1)
    {
      v20 = *(a1 + 120);
      v21 = v16 >= v20 && v16 < *(a1 + 112);
      v24 = *v17;
      v22 = (v17 + 1);
      v23 = v24;
      if (!v24)
      {
        break;
      }

      if (v23 >= 0x2D01)
      {
        log_OutText(*(*(a1 + 136) + 32), "GSMCSCH1", 0, 0, "inconsistent packet payload size declared in frame header (%d Bytes > (expected) %d Bytes)");
        return 2617270272;
      }

      v25 = v15 - 2;
      v15 = v15 - 2 - v23;
      if (v25 < v23)
      {
        log_OutText(*(*(a1 + 136) + 32), "GSMCSCH1", 0, 0, "missing required packet payload Bytes for decoding one frame (%d Bytes < (expected) %d Bytes)", v25, v23);
        return 2617270281;
      }

      v26 = *(a1 + 60);
      if (v16 >= v20)
      {
        v27 = v19;
        v28 = smcsch1spi_GenDecProcessOneFrameWithLowLevelDecoder(a1, v22, v23);
        v11 = v28;
        if (v21)
        {
          if ((v28 & 0x80000000) != 0)
          {
            return v11;
          }

          v19 = v27;
          v11 = 0;
          *(a1 + 132) -= v26;
        }

        else
        {
          if ((v28 & 0x80000000) != 0)
          {
            return v11;
          }

          v29 = v18;
          v30 = v27;
          v31 = *(a1 + 132);
          if (v31)
          {
            v32 = v26 - v31;
            v33 = (*(a1 + 32) + 2 * v31);
            *(a1 + 132) = 0;
            v34 = *(a1 + 128);
            if (v34 >= v32)
            {
              LOWORD(v34) = v32;
            }
          }

          else
          {
            if (*(a1 + 82))
            {
              memcpy(v18, *(a1 + 24), 2 * *(a1 + 82));
              v35 = *(a1 + 82);
              v29 = &v18[2 * v35];
              v34 = *(a1 + 128) - v35;
              *(a1 + 128) = v34;
              v30 = v27 - v35;
              *(a1 + 82) = 0;
            }

            else
            {
              v34 = *(a1 + 128);
            }

            v33 = *(a1 + 32);
            if (v34 > *(a1 + 60))
            {
              LOWORD(v34) = v26;
            }
          }

          v36 = v34;
          v37 = v34 - v30;
          v38 = v29;
          if (v34 <= v30)
          {
            v41 = v30;
            memcpy(v29, v33, 2 * v34);
            v11 = 0;
            *(a1 + 128) -= v36;
            v18 = &v38[2 * v36];
            v19 = v41 - v36;
          }

          else
          {
            v39 = 2 * v30;
            v40 = v30;
            memcpy(*(a1 + 24), &v33[v39], 2 * (v34 - v30));
            *(a1 + 82) = v37;
            memcpy(v38, v33, v39);
            v11 = 0;
            *(a1 + 128) -= v40;
            v18 = &v38[2 * v40];
            v19 = 0;
          }
        }

        LODWORD(a3) = v44;
      }

      else
      {
        *(a1 + 132) -= v26;
      }

      v17 = &v22[v23];
      v16 = *(a1 + 124) + 1;
      *(a1 + 124) = v16;
      if (!v19 || v15 <= 1)
      {
        goto LABEL_43;
      }
    }

    log_OutText(*(*(a1 + 136) + 32), "GSMCSCH1", 0, 0, "null packet payload size declared in frame header");
    return 2617270272;
  }

  if (*(a1 + 82))
  {
    memcpy(a5, *(a1 + 24), 2 * v14);
    v42 = *(a1 + 82);
    v18 = &a5[2 * v42];
    *(a1 + 128) -= v42;
    *(a1 + 82) = 0;
  }

  else
  {
LABEL_41:
    v18 = a5;
  }

LABEL_42:
  LODWORD(v17) = a3;
LABEL_43:
  *v46 = v17 - a3;
  *v45 = (v18 - a5) >> 1;
  return v11;
}

uint64_t smcsch1spi_GenDecProcessOneFrameWithLowLevelDecoder(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = opus_decode(*a1, a2, a3, *(a1 + 8), *(a1 + 64), 0);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 2617270272;
    v9 = *(*(a1 + 136) + 32);
    opus_strerror(v4);
    log_OutText(v9, "GSMCSCH1", 0, 0, "error during decoding: %s");
  }

  else
  {
    if (v4 >= 0x1681)
    {
      v5 = 2617270272;
      v6 = *(*(a1 + 136) + 32);
      v7 = 5760;
      v8 = "inconsistent number of decoded samples (%d samples > (expected) %d samples)";
LABEL_8:
      log_OutText(v6, "GSMCSCH1", 0, 0, v8, v4, v7);
      return v5;
    }

    v7 = *(a1 + 56);
    if (v4 != v7)
    {
      v5 = 2617270272;
      v6 = *(*(a1 + 136) + 32);
      v8 = "inconsistent number of decoded samples (%d samples != (expected) %d samples)";
      goto LABEL_8;
    }

    return 0;
  }

  return v5;
}

uint64_t gsmc_sch1_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2617270273;
  }

  result = 0;
  *a2 = &dec_I_1;
  return result;
}

uint64_t opus_decoder_get_size(uint64_t a1)
{
  if ((a1 - 3) < 0xFFFFFFFE)
  {
    return 0;
  }

  v6 = v1;
  v7 = v2;
  v4 = a1;
  v5 = 0;
  if (silk_Get_Decoder_Size(&v5))
  {
    return 0;
  }

  v5 = (v5 + 7) & 0xFFFFFFF8;
  return celt_decoder_get_size(v4) + v5 + 80;
}

uint64_t opus_decoder_init(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  result = 0xFFFFFFFFLL;
  if (a2 <= 15999)
  {
    if (a2 != 8000)
    {
      v7 = 12000;
LABEL_7:
      if (a2 != v7)
      {
        return result;
      }
    }
  }

  else if (a2 != 16000 && a2 != 48000)
  {
    v7 = 24000;
    goto LABEL_7;
  }

  if ((a3 - 3) >= 0xFFFFFFFE)
  {
    v17 = 0;
    size = opus_decoder_get_size(a3);
    bzero(a1, size);
    if (silk_Get_Decoder_Size(&v17))
    {
      return 4294967293;
    }

    v9 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v17 + 7) & 0xFFFFFFF8;
    v10 = v9 + 80;
    *a1 = v9 + 80;
    a1[1] = 80;
    a1[11] = v3;
    a1[2] = v3;
    a1[3] = a2;
    a1[6] = a2;
    a1[4] = v3;
    if (silk_InitDecoder((a1 + 20)) || celt_decoder_init((a1 + v10), a2, v3))
    {
      return 4294967293;
    }

    else
    {
      opus_custom_decoder_ctl((a1 + v10), 10016, v11, v12, v13, v14, v15, v16, 0);
      result = 0;
      a1[14] = 0;
      a1[15] = a2 / 0x190u;
    }
  }

  return result;
}

uint64_t opus_decode_native(int *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, _DWORD *a8, int a9)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a6 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = a7;
  v14 = a3;
  if (!a2 || !a3 || a6)
  {
    if (a5 % (a1[3] / 400))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!a2 || !a3)
  {
    LODWORD(v25) = 0;
    while (1)
    {
      v27 = opus_decode_frame(a1, 0, 0, (a4 + 2 * a1[2] * v25), (a5 - v25), 0, a7, a8);
      if ((v27 & 0x80000000) != 0)
      {
        return v27;
      }

      v25 = (v27 + v25);
      if (v25 >= a5)
      {
        goto LABEL_27;
      }
    }
  }

  if ((a3 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v39 = 0;
  v38 = 0;
  v17 = *a2;
  v18 = v17;
  if ((~v17 & 0x60) != 0)
  {
    v19 = 1000;
  }

  else
  {
    v19 = 1001;
  }

  if ((v17 & 0x80u) == 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1002;
  }

  v34 = v19;
  v35 = v20;
  bandwidth = opus_packet_get_bandwidth(a2);
  samples_per_frame = opus_packet_get_samples_per_frame(a2, a1[3]);
  nb_channels = opus_packet_get_nb_channels(a2);
  v22 = opus_packet_parse_impl(a2, v14, v10, &v38, 0, v40, &v39, a8);
  v25 = v22;
  if ((v22 & 0x80000000) == 0)
  {
    v26 = &a2[v39];
    if (a6)
    {
      if (a5 < samples_per_frame || v18 < 0 || a1[13] == 1002)
      {
        return opus_decode_native(a1, 0, 0, a4, a5, 0, 0, 0, a9);
      }

      else
      {
        if (a5 != samples_per_frame)
        {
          v32 = a1[17];
          v33 = opus_decode_native(a1, 0, 0, a4, (a5 - samples_per_frame), 0, 0, 0, a9);
          if ((v33 & 0x80000000) != 0)
          {
            v25 = v33;
            a1[17] = v32;
            return v25;
          }
        }

        a1[15] = samples_per_frame;
        a1[12] = bandwidth;
        a1[13] = v34;
        a1[11] = nb_channels;
        v27 = opus_decode_frame(a1, v26, v40[0], (a4 + 2 * a1[2] * (a5 - samples_per_frame)), samples_per_frame, 1, v23, v24);
        if ((v27 & 0x80000000) == 0)
        {
          a1[17] = a5;
          return a5;
        }
      }
    }

    else
    {
      if (v22 * samples_per_frame > a5)
      {
        return 4294967294;
      }

      a1[15] = samples_per_frame;
      a1[12] = bandwidth;
      a1[13] = v35;
      a1[11] = nb_channels;
      if (!v22)
      {
LABEL_27:
        a1[17] = v25;
        return v25;
      }

      v29 = v22;
      v30 = v40;
      LODWORD(v25) = 0;
      while (1)
      {
        v27 = opus_decode_frame(a1, v26, *v30, (a4 + 2 * a1[2] * v25), (a5 - v25), 0, v23, v24);
        if ((v27 & 0x80000000) != 0)
        {
          break;
        }

        v31 = *v30++;
        v26 += v31;
        v25 = (v27 + v25);
        if (!--v29)
        {
          goto LABEL_27;
        }
      }
    }

    return v27;
  }

  return v25;
}

uint64_t opus_decode_frame(int *a1, unsigned __int8 *a2, uint64_t a3, __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v185 = *MEMORY[0x1E69E9840];
  v178 = 0;
  v8 = a1[3];
  v9 = v8 / 50;
  if ((v8 / 50) >> 3 > a5)
  {
    return 4294967294;
  }

  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = a1;
  v174 = ((v8 / 50) >> 3);
  v15 = a1[1];
  v175 = *a1;
  v16 = v9 >> 1;
  v17 = v9 >> 2;
  v183 = 0;
  v181 = 0u;
  v182 = 0u;
  v180 = 0u;
  v179 = 0;
  v18 = 3 * (v8 / 25);
  if (v18 >= a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = v18;
  }

  if (a3 > 1)
  {
    if (!a2)
    {
      goto LABEL_16;
    }

    v176 = v9 >> 2;
    v172 = a6;
    v20 = a1[15];
    v21 = a1[13];
    a1 = ec_dec_init(&v180, a2, a3);
    v23 = v14[14];
    if (v23 < 1)
    {
      v25 = 0;
      v167 = 0;
      v168 = 0;
      v169 = 1;
      v24 = a2;
    }

    else
    {
      if (v21 != 1002 || v23 == 1002)
      {
        v24 = a2;
        if (v21 != 1002)
        {
          v11 = v172;
          if (v23 == 1002)
          {
            v168 = 0;
            v167 = v14[2] * v176;
            v25 = 1;
          }

          else
          {
            v25 = 0;
            v167 = 0;
            v168 = 0;
          }

          v169 = 1;
LABEL_46:
          v62 = v20 <= v10;
          LODWORD(v10) = v20;
          v17 = v176;
          if (!v62)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_54;
        }

        v25 = 0;
        v167 = 0;
        v168 = 0;
      }

      else if (v14[16])
      {
        v24 = a2;
        v25 = 0;
        v167 = 0;
        v168 = 0;
        v21 = 1002;
      }

      else
      {
        MEMORY[0x1EEE9AC00](a1);
        v32 = &v164[-v31];
        bzero(&v164[-v31], v33);
        if (v176 >= v20)
        {
          v34 = v20;
        }

        else
        {
          v34 = v176;
        }

        v168 = v32;
        a1 = opus_decode_frame(v14, 0, 0, v32, v34, 0);
        v24 = a2;
        v167 = 0;
        v21 = 1002;
        v25 = 1;
      }

      v169 = 1;
    }

    v11 = v172;
    goto LABEL_46;
  }

  v19 = a1[15];
  if (v10 >= v19)
  {
    v10 = v19;
  }

  else
  {
    v10 = v10;
  }

LABEL_16:
  v21 = a1[14];
  if (!v21)
  {
    v30 = a1[2] * v10;
    if (v30 >= 1)
    {
      bzero(a4, (2 * v30));
    }

    return v10;
  }

  if (v10 <= v9)
  {
    if (v10 >= v9)
    {
      v168 = 0;
      v24 = 0;
      v169 = 0;
      v167 = 0;
      v25 = 0;
    }

    else
    {
      if (v10 > v16)
      {
        v176 = v9 >> 2;
        v25 = 0;
        v167 = 0;
        v169 = 0;
        v24 = 0;
        v168 = 0;
        v20 = v9 >> 1;
        goto LABEL_46;
      }

      if (v21 == 1000)
      {
        v165 = 0;
        v167 = 0;
        v169 = 0;
        v173 = 0;
        v168 = 0;
LABEL_58:
        MEMORY[0x1EEE9AC00](a1);
        v38 = &v164[-v40];
        bzero(&v164[-v40], v41);
        if (v14[14] == 1002)
        {
          silk_InitDecoder(v14 + v15);
        }

        v172 = v11;
        v42 = 1000 * v10 / v14[3];
        if (v42 <= 10)
        {
          v42 = 10;
        }

        v14[8] = v42;
        v43 = v173;
        if (!v169)
        {
          goto LABEL_70;
        }

        v14[5] = v14[11];
        if (v21 != 1000)
        {
          goto LABEL_68;
        }

        v44 = v14[12];
        switch(v44)
        {
          case 1103:
            goto LABEL_68;
          case 1102:
            v45 = 12000;
            break;
          case 1101:
            v45 = 8000;
            break;
          default:
LABEL_68:
            v45 = 16000;
            break;
        }

        v14[7] = v45;
LABEL_70:
        v176 = v17;
        v170 = v21;
        v171 = v13;
        v46 = 0;
        if (v43)
        {
          v47 = 2 * v172;
        }

        else
        {
          v47 = 1;
        }

        v48 = v38;
        do
        {
          if (silk_Decode(v14 + v15, v14 + 4, v47, v46 == 0, &v180, v48, &v179))
          {
            if (!v47)
            {
              return 4294967293;
            }

            v179 = v10;
            v49 = v14[2] * v10;
            if (v49 >= 1)
            {
              bzero(v48, (2 * v49));
            }

            v50 = v10;
          }

          else
          {
            v50 = v179;
            v49 = v14[2] * v179;
          }

          v48 += 2 * v49;
          v46 += v50;
        }

        while (v46 < v10);
        v51 = v169;
        if (v172)
        {
          v51 = 0;
        }

        if (v51 != 1)
        {
          *&v164[4] = v172 == 0;
          *&v164[8] = 0;
          v37 = 0;
          v166 = 0;
          v36 = 17;
          v169 = 1;
LABEL_105:
          v39 = v175;
          v24 = v173;
          goto LABEL_106;
        }

        v52 = __clz(v182);
        if (v14[13] == 1001)
        {
          v53 = 20;
        }

        else
        {
          v53 = 0;
        }

        v54 = DWORD2(v181) + v52 + v53 - 15;
        v55 = v171;
        v24 = v173;
        if (v54 > 8 * v171)
        {
          v37 = 0;
          v166 = 0;
          v36 = 17;
          v169 = 1;
          *&v164[4] = 1;
          goto LABEL_56;
        }

        if (v170 == 1001)
        {
          v37 = ec_dec_bit_logp(&v180, 12);
          if (!v37)
          {
            *&v164[8] = 0;
            v166 = 0;
            v36 = 17;
            v170 = 1001;
LABEL_104:
            v169 = 1;
            *&v164[4] = 1;
            goto LABEL_105;
          }

          v56 = ec_dec_bit_logp(&v180, 1);
          v57 = ec_dec_uint(&v180, 0x100u) + 2;
          v58 = DWORD2(v181);
          v59 = __clz(v182);
        }

        else
        {
          v37 = 1;
          v56 = ec_dec_bit_logp(&v180, 1);
          v58 = DWORD2(v181);
          v59 = __clz(v182);
          v57 = v55 - ((DWORD2(v181) + v59 - 25) >> 3);
        }

        v60 = 8 * (v55 - v57);
        v61 = v58 + v59 - 32;
        v62 = v60 < v61;
        if (v60 >= v61)
        {
          v63 = v57;
        }

        else
        {
          v37 = 0;
          v63 = 0;
        }

        if (v62)
        {
          v64 = 0;
        }

        else
        {
          v64 = v55 - v57;
        }

        v171 = v64;
        *&v164[8] = v63;
        DWORD2(v180) -= v63;
        v166 = v56;
        v36 = 17;
        goto LABEL_104;
      }

      v168 = 0;
      v24 = 0;
      v169 = 0;
      v167 = 0;
      if (v10 >= v17)
      {
        v35 = v9 >> 2;
      }

      else
      {
        v35 = v10;
      }

      if (v10 < v16)
      {
        LODWORD(v10) = v35;
      }

      v25 = 0;
    }

LABEL_54:
    v165 = v25;
    if (v21 == 1002)
    {
      v176 = v17;
      v169 = 0;
      v36 = 0;
      v37 = 0;
      v166 = 0;
      *&v164[4] = v11 == 0;
      *&v164[8] = 0;
      v38 = &v184;
      v170 = 1002;
      v171 = v13;
LABEL_56:
      v39 = v175;
LABEL_106:
      v173 = v24;
      v65 = v14[12] - 1101;
      v66 = v36;
      if (v65 > 3)
      {
        v67 = 21;
      }

      else
      {
        v67 = dword_1C382B390[v65];
      }

      opus_custom_decoder_ctl((v14 + v39), 10012, a3, a4, a5, a6, a7, a8, v67);
      v74 = opus_custom_decoder_ctl((v14 + v39), 10008, v68, v69, v70, v71, v72, v73, v14[11]);
      if (v37)
      {
        v75 = 0;
      }

      else
      {
        v75 = v165;
      }

      MEMORY[0x1EEE9AC00](v74);
      v77 = &v164[-v76];
      bzero(&v164[-v76], v78);
      v172 = v37;
      v167 = v75;
      if ((v169 & v75) == 1)
      {
        if (v176 >= v10)
        {
          v86 = v10;
        }

        else
        {
          v86 = v176;
        }

        opus_decode_frame(v14, 0, 0, v77, v86, 0);
        v87 = 0;
        v88 = &v184;
        v168 = v77;
      }

      else if (v37)
      {
        v89 = v176;
        MEMORY[0x1EEE9AC00](v79);
        v88 = &v164[-v90];
        bzero(&v164[-v90], v91);
        if (v166)
        {
          v92 = v175;
          opus_custom_decoder_ctl((v14 + v175), 10010, v80, v81, v82, v83, v84, v85, 0);
          v93 = v89;
          v39 = v92;
          celt_decode_with_ec((v14 + v92), &v173[v171], *&v164[8], v88, v93, 0);
          opus_custom_decoder_ctl((v14 + v92), 4031, v94, v95, v96, v97, v98, v99, &v178);
          v87 = 1;
        }

        else
        {
          v87 = 0;
          v39 = v175;
        }
      }

      else
      {
        v87 = 0;
        v88 = &v184;
      }

      opus_custom_decoder_ctl((v14 + v39), 10010, v80, v81, v82, v83, v84, v85, v66);
      if (v170 == 1000)
      {
        LOWORD(v177) = -1;
        v106 = v14[2] * v10;
        if (v106 >= 1)
        {
          bzero(v12, (2 * v106));
        }

        if (v14[14] == 1001 && (!v87 || !v14[16]))
        {
          opus_custom_decoder_ctl((v14 + v39), 10010, v100, v101, v102, v103, v104, v105, 0);
          celt_decode_with_ec((v14 + v39), &v177, 2, v12, v174, 0);
        }

        v107 = 0;
      }

      else
      {
        if (v9 >= v10)
        {
          v108 = v10;
        }

        else
        {
          v108 = v9;
        }

        v109 = v14[14];
        v110 = v173;
        if (v170 != v109 && v109 >= 1 && !v14[16])
        {
          opus_custom_decoder_ctl((v14 + v39), 4028, v100, v101, v102, v103, v104, v105, *v164);
          v110 = v173;
        }

        if (*&v164[4])
        {
          v111 = v110;
        }

        else
        {
          v111 = 0;
        }

        v107 = celt_decode_with_ec((v14 + v39), v111, v171, v12, v108, &v180);
        if (!v169)
        {
          goto LABEL_148;
        }
      }

      v112 = (v14[2] * v10);
      if (v112 >= 1)
      {
        v113 = v12;
        do
        {
          v114 = *v38;
          v38 += 2;
          v115 = *v113 + v114;
          if (v115 >= 0x7FFF)
          {
            v115 = 0x7FFF;
          }

          if (v115 <= -32768)
          {
            LOWORD(v115) = 0x8000;
          }

          *v113++ = v115;
          --v112;
        }

        while (v112);
      }

LABEL_148:
      v177 = 0;
      opus_custom_decoder_ctl((v14 + v39), 10015, v100, v101, v102, v103, v104, v105, &v177);
      v122 = *(v177 + 64);
      v123 = v166;
      v124 = v174;
      if (v172 != 0 && !v166)
      {
        opus_custom_decoder_ctl((v14 + v39), 4028, v116, v117, v118, v119, v120, v121, *v164);
        opus_custom_decoder_ctl((v14 + v39), 10010, v125, v126, v127, v128, v129, v130, 0);
        celt_decode_with_ec((v14 + v39), &v173[v171], *&v164[8], v88, v176, 0);
        opus_custom_decoder_ctl((v14 + v39), 4031, v131, v132, v133, v134, v135, v136, &v178);
        smooth_fade(&v12[v14[2] * (v10 - v124)], &v88[2 * v14[2] * v124], &v12[v14[2] * (v10 - v124)], v124, v14[2], v122, v14[3]);
      }

      if (v87)
      {
        v137 = v14[2];
        if (v137 >= 1)
        {
          v138 = 0;
          v139 = v88;
          v140 = v12;
          do
          {
            if (v124 >= 1)
            {
              v141 = 0;
              v142 = v124;
              do
              {
                v140[v141] = *&v139[v141 * 2];
                v141 += v137;
                --v142;
              }

              while (v142);
            }

            ++v138;
            ++v140;
            v139 += 2;
          }

          while (v138 != v137);
        }

        smooth_fade(&v88[2 * v137 * v124], &v12[v137 * v124], &v12[v137 * v124], v124, v137, v122, v14[3]);
      }

      v143 = v172;
      if (v167)
      {
        v144 = v14[2];
        if (v10 >= v176)
        {
          v149 = v144 * v124;
          v150 = v168;
          if ((v144 * v124) >= 1)
          {
            v151 = v144 * v124;
            v152 = v168;
            v153 = v12;
            do
            {
              v154 = *v152++;
              *v153++ = v154;
              --v151;
            }

            while (v151);
          }

          v146 = &v150[v149];
          v145 = v14[3];
          v147 = &v12[v149];
          v148 = v147;
        }

        else
        {
          v145 = v14[3];
          v146 = v168;
          v147 = v12;
          v148 = v12;
        }

        smooth_fade(v146, v147, v148, v124, v144, v122, v145);
      }

      v155 = v14[10];
      if (v155)
      {
        v156 = (21771 * v155 + 0x4000) >> 15;
        v157 = v156 >> 10;
        if (v157 <= 14)
        {
          if (v157 >= -15)
          {
            v159 = ((((((326528 * (v156 & 0x3FF)) >> 16) + 14819) * 32 * (v156 & 0x3FF) + 1494482944) >> 16) * 32 * (v156 & 0x3FF) + 1073676288) >> 16;
            v158 = v157 > -3 ? v159 << (v157 + 2) : v159 >> (-2 - v157);
          }

          else
          {
            v158 = 0;
          }
        }

        else
        {
          v158 = 2130706432;
        }

        v160 = (v14[2] * v10);
        if (v160 >= 1)
        {
          do
          {
            v161 = HIWORD(v158) * *v12 + ((v158 * *v12 + 0x8000) >> 16);
            if (v161 <= -32767)
            {
              v161 = -32767;
            }

            if (v161 >= 0x7FFF)
            {
              LOWORD(v161) = 0x7FFF;
            }

            *v12++ = v161;
            --v160;
          }

          while (v160);
        }
      }

      v162 = v178 ^ v182;
      if (v171 < 2)
      {
        v162 = 0;
      }

      v14[18] = v162;
      v14[14] = v170;
      v14[16] = v143 != 0 && !v123;
      if (v107 >= 0)
      {
        return v10;
      }

      else
      {
        return v107;
      }
    }

    v173 = v24;
    goto LABEL_58;
  }

  v26 = v10;
  while (1)
  {
    v27 = v26 >= v9 ? v9 : v26;
    v28 = opus_decode_frame(v14, 0, 0, v12, v27, 0);
    if ((v28 & 0x80000000) != 0)
    {
      break;
    }

    v12 += v14[2] * v28;
    v29 = __OFSUB__(v26, v28);
    v26 -= v28;
    if ((v26 < 0) ^ v29 | (v26 == 0))
    {
      return v10;
    }
  }

  return v28;
}

uint64_t opus_decode(int *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a5 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return opus_decode_native(a1, a2, a3, a4, a5, a6, 0, 0, 0);
  }
}

uint64_t opus_decoder_ctl(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  v10 = *a1;
  v11 = a1[1];
  result = 4294967291;
  if (a2 <= 4032)
  {
    if (a2 <= 4028)
    {
      if (a2 != 4009)
      {
        if (a2 == 4028)
        {
          *(a1 + 15) = 0u;
          *(a1 + 11) = 0u;
          opus_custom_decoder_ctl((a1 + v10), 4028, a3, a4, a5, a6, a7, a8, v16);
          silk_InitDecoder(a1 + v11);
          result = 0;
          v13 = a1[3];
          a1[11] = a1[2];
          a1[15] = v13 / 400;
        }

        return result;
      }

      v14 = a9;
      if (a9)
      {
        result = 0;
        v15 = a1[12];
        goto LABEL_28;
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 == 4029)
    {
      v14 = a9;
      if (a9)
      {
        result = 0;
        v15 = a1[3];
        goto LABEL_28;
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 != 4031)
    {
      return result;
    }

    v14 = a9;
    if (!a9)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0;
    v15 = a1[18];
LABEL_28:
    *v14 = v15;
    return result;
  }

  if (a2 > 4038)
  {
    if (a2 == 4039)
    {
      v14 = a9;
      if (a9)
      {
        result = 0;
        v15 = a1[17];
        goto LABEL_28;
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 != 4045)
    {
      return result;
    }

    v14 = a9;
    if (!a9)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0;
    v15 = a1[10];
    goto LABEL_28;
  }

  if (a2 != 4033)
  {
    if (a2 != 4034)
    {
      return result;
    }

    if (a9 == a9)
    {
      result = 0;
      a1[10] = a9;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (!a9)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1[14] == 1002)
  {
    opus_custom_decoder_ctl((a1 + v10), 4033, a3, a4, a5, a6, a7, a8, a9);
    return 0;
  }

  else
  {
    result = 0;
    *a9 = a1[9];
  }

  return result;
}

uint64_t smooth_fade(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, __int16 *a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = 0;
    do
    {
      if (a4 >= 1)
      {
        v8 = 0;
        v9 = a4;
        v10 = a6;
        do
        {
          v11 = *v10 * *v10;
          *(a3 + v8) = ((v11 >> 15) * *(a2 + v8) + (((2 * v11) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) * *(result + v8)) >> 15;
          v8 += 2 * a5;
          v10 += 48000 / a7;
          --v9;
        }

        while (v9);
      }

      ++v7;
      a3 += 2;
      result += 2;
      a2 += 2;
    }

    while (v7 != a5);
  }

  return result;
}

uint64_t opus_packet_parse_impl(char *a1, int a2, int a3, _BYTE *a4, char **a5, __int16 *a6, _DWORD *a7, _DWORD *a8)
{
  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = a6;
  samples_per_frame = opus_packet_get_samples_per_frame(a1, 48000);
  v18 = a1 + 1;
  v17 = *a1;
  v19 = a2 - 1;
  v20 = *a1 & 3;
  if (v20 <= 1)
  {
    if ((*a1 & 3) == 0)
    {
      v21 = 0;
      v22 = 1;
      v23 = a2 - 1;
      goto LABEL_5;
    }

    if (a3)
    {
      v20 = 0;
      v22 = 2;
      v21 = 1;
      v23 = a2 - 1;
LABEL_13:
      if (v23 < 1)
      {
        goto LABEL_32;
      }

      v26 = *v18;
      if (v26 < 0xFC)
      {
        v27 = 1;
        goto LABEL_42;
      }

      if (v23 == 1)
      {
LABEL_32:
        v27 = -1;
        LOWORD(v26) = -1;
      }

      else
      {
        LOWORD(v26) = v26 + 4 * v18[1];
        v27 = 2;
      }

LABEL_42:
      v10[v22 - 1] = v26;
      v35 = (v22 - 1);
      v36 = v10[v35];
      result = 4294967292;
      if (v36 < 0)
      {
        return result;
      }

      v37 = v23 - v27;
      if (v37 < v36)
      {
        return result;
      }

      v18 += v27;
      if (v21)
      {
        if (v22 * v36 > v37)
        {
          return result;
        }

        if (v22 >= 2)
        {
          v38 = (v35 + 7) & 0x1FFFFFFF8;
          v39 = vdupq_n_s64(v35 - 1);
          v40 = xmmword_1C37BDD80;
          v41 = xmmword_1C37BDD90;
          v42 = xmmword_1C378AEF0;
          v43 = xmmword_1C378AF00;
          v44 = v10 + 4;
          v45 = vdupq_n_s64(8uLL);
          do
          {
            v46 = vmovn_s64(vcgeq_u64(v39, v43));
            if (vuzp1_s8(vuzp1_s16(v46, *v39.i8), *v39.i8).u8[0])
            {
              *(v44 - 4) = v36;
            }

            if (vuzp1_s8(vuzp1_s16(v46, *&v39), *&v39).i8[1])
            {
              *(v44 - 3) = v36;
            }

            if (vuzp1_s8(vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v42))), *&v39).i8[2])
            {
              *(v44 - 2) = v36;
              *(v44 - 1) = v36;
            }

            v47 = vmovn_s64(vcgeq_u64(v39, v41));
            if (vuzp1_s8(*&v39, vuzp1_s16(v47, *&v39)).i32[1])
            {
              *v44 = v36;
            }

            if (vuzp1_s8(*&v39, vuzp1_s16(v47, *&v39)).i8[5])
            {
              v44[1] = v36;
            }

            if (vuzp1_s8(*&v39, vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v40)))).i8[6])
            {
              v44[2] = v36;
              v44[3] = v36;
            }

            v41 = vaddq_s64(v41, v45);
            v42 = vaddq_s64(v42, v45);
            v43 = vaddq_s64(v43, v45);
            v44 += 8;
            v40 = vaddq_s64(v40, v45);
            v38 -= 8;
          }

          while (v38);
        }
      }

      else if (v27 + v36 > v19)
      {
        return result;
      }

      goto LABEL_63;
    }

    if ((v19 & 1) == 0)
    {
      v20 = 0;
      v24 = v19 >> 1;
      *v10 = v19 >> 1;
      v22 = 2;
      goto LABEL_35;
    }

    return 4294967292;
  }

  if (v20 == 2)
  {
    if (a2 < 2)
    {
LABEL_10:
      *v10 = -1;
      return 4294967292;
    }

    v33 = *v18;
    if (v33 >= 0xFC)
    {
      if (a2 == 2)
      {
        goto LABEL_10;
      }

      v33 += 4 * a1[2];
      v34 = 2;
    }

    else
    {
      v34 = 1;
    }

    *v10 = v33;
    v19 -= v34;
    v23 = v19 - v33;
    if (v19 < v33)
    {
      return 4294967292;
    }

    v21 = 0;
    v20 = 0;
    v22 = 2;
    v18 += v34;
LABEL_5:
    v24 = v23;
    v23 = v19;
    v19 = v24;
    if (!a3)
    {
      goto LABEL_35;
    }

    goto LABEL_13;
  }

  v23 = a2 - 2;
  if (a2 < 2)
  {
    return 4294967292;
  }

  v28 = samples_per_frame;
  v29 = *v18;
  result = 4294967292;
  v22 = *v18 & 0x3F;
  if ((*v18 & 0x3F) == 0 || v22 * v28 > 5760)
  {
    return result;
  }

  v18 = a1 + 2;
  v20 = 0;
  if ((v29 & 0x40) != 0)
  {
    while (v23 >= 1)
    {
      v31 = *v18++;
      v30 = v31;
      if (v31 >= 0xFE)
      {
        v32 = 254;
      }

      else
      {
        v32 = v30;
      }

      v23 += ~v32;
      v20 += v32;
      if (v30 != 255)
      {
        if (v23 < 0)
        {
          return 4294967292;
        }

        goto LABEL_26;
      }
    }

    return 4294967292;
  }

LABEL_26:
  if (v29 < 0)
  {
    if (v22 < 2)
    {
      v21 = 0;
      v19 = v23;
    }

    else
    {
      v51 = (v22 - 1);
      v52 = v10;
      v19 = v23;
      do
      {
        if (!v19)
        {
LABEL_106:
          *v52 = -1;
          return 4294967292;
        }

        v53 = *v18;
        if (v53 >= 0xFC)
        {
          if (v19 == 1)
          {
            goto LABEL_106;
          }

          v53 += 4 * v18[1];
          v54 = 2;
        }

        else
        {
          v54 = 1;
        }

        *v52 = v53;
        v19 -= v54;
        if (v19 < v53)
        {
          return 4294967292;
        }

        v18 += v54;
        v23 = v23 - v54 - v53;
        ++v52;
        --v51;
      }

      while (v51);
      if (v23 < 0)
      {
        return 4294967292;
      }

      v21 = 0;
    }

    goto LABEL_5;
  }

  if (a3)
  {
    v21 = 1;
    goto LABEL_13;
  }

  v24 = v23 / v22;
  if (v23 / v22 * v22 != v23)
  {
    return 4294967292;
  }

  if (v22 >= 2)
  {
    v55 = (v22 - 1);
    v56 = (v55 + 7) & 0x1FFFFFFF8;
    v57 = vdupq_n_s64(v55 - 1);
    v58 = xmmword_1C37BDD80;
    v59 = xmmword_1C37BDD90;
    v60 = xmmword_1C378AEF0;
    v61 = xmmword_1C378AF00;
    v62 = v10 + 4;
    v63 = vdupq_n_s64(8uLL);
    do
    {
      v64 = vmovn_s64(vcgeq_u64(v57, v61));
      if (vuzp1_s8(vuzp1_s16(v64, *v57.i8), *v57.i8).u8[0])
      {
        *(v62 - 4) = v24;
      }

      if (vuzp1_s8(vuzp1_s16(v64, *&v57), *&v57).i8[1])
      {
        *(v62 - 3) = v24;
      }

      if (vuzp1_s8(vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, *&v60))), *&v57).i8[2])
      {
        *(v62 - 2) = v24;
        *(v62 - 1) = v24;
      }

      v65 = vmovn_s64(vcgeq_u64(v57, v59));
      if (vuzp1_s8(*&v57, vuzp1_s16(v65, *&v57)).i32[1])
      {
        *v62 = v24;
      }

      if (vuzp1_s8(*&v57, vuzp1_s16(v65, *&v57)).i8[5])
      {
        v62[1] = v24;
      }

      if (vuzp1_s8(*&v57, vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, *&v58)))).i8[6])
      {
        v62[2] = v24;
        v62[3] = v24;
      }

      v59 = vaddq_s64(v59, v63);
      v60 = vaddq_s64(v60, v63);
      v61 = vaddq_s64(v61, v63);
      v62 += 8;
      v21 = 1;
      v58 = vaddq_s64(v58, v63);
      v56 -= 8;
    }

    while (v56);
    v19 = v23;
    v23 /= v22;
    goto LABEL_5;
  }

LABEL_35:
  if (v24 > 1275)
  {
    return 4294967292;
  }

  v10[v22 - 1] = v24;
LABEL_63:
  if (a7)
  {
    *a7 = v18 - a1;
  }

  if (v22)
  {
    v48 = v22;
    v49 = a5;
    do
    {
      if (a5)
      {
        *v49 = v18;
      }

      v50 = *v10++;
      v18 += v50;
      ++v49;
      --v48;
    }

    while (v48);
  }

  if (a8)
  {
    *a8 = v20 + v18 - a1;
  }

  if (a4)
  {
    *a4 = v17;
  }

  return v22;
}

unint64_t opus_packet_get_samples_per_frame(_BYTE *a1, int a2)
{
  v2 = *a1;
  if (*a1 < 0)
  {
    v8 = 1374389535 * (a2 << ((*a1 >> 3) & 3));
    return (v8 >> 39) + (v8 >> 63);
  }

  else
  {
    v3 = 1374389535 * (a2 << ((*a1 >> 3) & 3));
    v4 = (v3 >> 37) + (v3 >> 63);
    if (((v2 >> 3) & 3) == 3)
    {
      v5 = 60 * a2 / 1000;
    }

    else
    {
      v5 = v4;
    }

    v6 = a2 / 50;
    if ((v2 & 8) == 0)
    {
      v6 = a2 / 100;
    }

    if ((~v2 & 0x60) != 0)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t opus_packet_get_bandwidth(char *a1)
{
  v1 = *a1;
  if ((v1 & 0x10) != 0)
  {
    v2 = 1105;
  }

  else
  {
    v2 = 1104;
  }

  if ((~v1 & 0x60) != 0)
  {
    v3 = (v1 >> 5) + 1101;
  }

  else
  {
    v3 = v2;
  }

  v5 = (v1 >> 5) & 3;
  v4 = v5 == 0;
  v6 = v5 + 1102;
  if (v4)
  {
    v6 = 1101;
  }

  if (*a1 < 0)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

uint64_t opus_packet_get_nb_channels(_BYTE *a1)
{
  if ((*a1 & 4) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t opus_ifft(unint64_t result, uint64_t a2, uint64_t a3)
{
  v233 = *MEMORY[0x1E69E9840];
  v3 = *(result + 4);
  if (*result >= 1)
  {
    v4 = 0;
    do
    {
      *(a3 + 8 * *(*(result + 40) + 2 * v4)) = *(a2 + 8 * v4);
      ++v4;
    }

    while (v4 < *result);
  }

  v200 = v3 & ~(v3 >> 31);
  v5 = 1;
  v232[0] = 1;
  v6 = result + 8;
  v201 = result;
  v7 = (result + 10);
  v8 = -1;
  v9 = 1;
  do
  {
    v9 *= *(v7 - 1);
    v232[v5] = v9;
    v10 = *v7;
    v7 += 2;
    ++v5;
    v8 += 2;
  }

  while (v10 != 1);
  v204 = *(v6 + 2 * v8);
  v199 = a3 + 4;
  v11 = v5 - 2;
  v202 = result + 8;
  do
  {
    v12 = v204;
    if (v11)
    {
      v13 = 2 * v11;
      v14 = *(v6 + 2 * (2 * v11 - 1));
    }

    else
    {
      v13 = 0;
      v14 = 1;
    }

    v203 = v11;
    v204 = v14;
    v15 = *(v6 + 2 * v13);
    if (v15 > 3)
    {
      v210 = v12;
      if (v15 == 4)
      {
        v151 = v232[v11];
        if (v151 >= 1)
        {
          v152 = 0;
          v153 = (v151 << v200);
          v154 = 8 * v153;
          v155 = 12 * v153;
          v156 = *(v201 + 48) + 2;
          v157 = (24 * v12) | 4;
          v158 = 4 * v153;
          v159 = (16 * v12) | 4;
          v160 = (8 * v12) | 4;
          do
          {
            if (v12 >= 1)
            {
              result = a3 + 8 * v152 * v204;
              v161 = v210;
              v162 = v156;
              v163 = v156;
              v164 = v156;
              do
              {
                v165 = *(v162 - 1);
                v166 = (result + v160);
                v167 = *(result + v160 - 4) >> 16;
                v168 = *(result + v160 - 4);
                v169 = *v162;
                v170 = *(result + v160) >> 16;
                v171 = *(result + v160);
                v172 = ((v171 * v169) >> 15) + ((v168 * v165) >> 15) + 2 * (v167 * v165 + v170 * v169);
                v173 = ((v171 * v165) >> 15) - ((v168 * v169) >> 15) + 2 * (v170 * v165 - v167 * v169);
                v174 = *(v163 - 1);
                v175 = (result + v159);
                v176 = *(result + v159 - 4) >> 16;
                v177 = *(result + v159 - 4);
                v178 = *v163;
                v179 = *(result + v159) >> 16;
                v180 = *(result + v159);
                v181 = ((v180 * v178) >> 15) + ((v177 * v174) >> 15) + 2 * (v176 * v174 + v179 * v178);
                v182 = ((v180 * v174) >> 15) - ((v177 * v178) >> 15) + 2 * (v179 * v174 - v176 * v178);
                v183 = *(v164 - 1);
                v184 = (result + v157);
                v185 = *(result + v157 - 4) >> 16;
                v186 = *(result + v157 - 4);
                v187 = *v164;
                v188 = *(result + v157) >> 16;
                v189 = *(result + v157);
                v190 = ((v189 * v187) >> 15) + ((v186 * v183) >> 15) + 2 * (v185 * v183 + v188 * v187);
                v191 = ((v189 * v183) >> 15) - ((v186 * v187) >> 15) + 2 * (v188 * v183 - v185 * v187);
                v192 = *(result + 4);
                v193 = *result - v181;
                v194 = v192 - v182;
                v195 = *result + v181;
                v196 = v192 + v182;
                v197 = v190 + v172;
                v198 = v172 - v190;
                *(v175 - 1) = v195 - v197;
                *v175 = v196 - (v191 + v173);
                *result = v197 + v195;
                *(result + 4) = v191 + v173 + v196;
                result += 8;
                *(v166 - 1) = v193 - (v173 - v191);
                *v166 = v198 + v194;
                *(v184 - 1) = v173 - v191 + v193;
                *v184 = v194 - v198;
                v164 = (v164 + v155);
                v163 = (v163 + v154);
                v162 = (v162 + v158);
                --v161;
              }

              while (v161);
            }

            ++v152;
            v12 = v210;
          }

          while (v152 != v151);
        }
      }

      else if (v15 == 5)
      {
        v207 = v232[v11];
        if (v207 >= 1)
        {
          v59 = 0;
          v60 = (v207 << v200);
          v61 = *(v201 + 48);
          v62 = v60 * v12;
          v63 = (v61 + 8 * v62);
          v64 = v63[1];
          v65 = (v61 + 4 * v62);
          v66 = v65[1];
          v67 = *v65;
          v222 = *v63;
          v68 = (2 * v222);
          result = (2 * v67);
          v211 = -2 * v64;
          v69 = -2 * v66;
          v70 = 2 * v64;
          v71 = a3 + 32 * v12;
          v205 = (v61 + 2);
          v206 = 8 * v204;
          v72 = a3 + 24 * v12;
          v73 = a3 + 16 * v12;
          v74 = a3;
          v75 = a3 + 8 * v12;
          v229 = 2 * v66;
          v215 = 8 * v60;
          v216 = 4 * v60;
          v213 = 8 * v12;
          v214 = 4 * v60;
          v212 = 12 * v60;
          do
          {
            v209 = v59;
            v76 = v222;
            if (v12 >= 1)
            {
              v77 = 0;
              v78 = v205;
              v79 = v205;
              v80 = v205;
              v81 = v205;
              v220 = v72;
              v221 = v71;
              v218 = v74;
              v219 = v73;
              v217 = v75;
              do
              {
                v226 = (v75 + v77);
                v82 = *(v79 - 1);
                v83 = *(v75 + v77) >> 16;
                v84 = (v71 + v77);
                v85 = (v73 + v77);
                v86 = *(v75 + v77);
                v87 = (v74 + v77);
                v230 = *(v74 + v77);
                v231 = *(v74 + v77 + 4);
                v88 = *v79;
                v89 = ((*(v75 + v77 + 4) * v88) >> 15) + ((v86 * v82) >> 15) + 2 * (v83 * v82 + (*(v75 + v77 + 4) >> 16) * v88);
                v90 = ((*(v75 + v77 + 4) * v82) >> 15) - ((v86 * v88) >> 15) + 2 * ((*(v75 + v77 + 4) >> 16) * v82 - v83 * v88);
                v91 = *(v81 - 1);
                v227 = v85;
                v228 = v81;
                v92 = *v85 >> 16;
                v93 = *v85;
                v94 = *v81;
                v95 = v85[1] >> 16;
                v96 = v85[1];
                v97 = ((v96 * v94) >> 15) + ((v93 * v91) >> 15) + 2 * (v92 * v91 + v95 * v94);
                v98 = ((v96 * v91) >> 15) - ((v93 * v94) >> 15) + 2 * (v95 * v91 - v92 * v94);
                v99 = *(v80 - 1);
                v225 = (v72 + v77);
                v100 = *(v72 + v77) >> 16;
                v101 = *(v72 + v77);
                v102 = *v80;
                LODWORD(v85) = *(v72 + v77 + 4) >> 16;
                v103 = *(v72 + v77 + 4);
                v104 = ((v103 * v102) >> 15) + ((v101 * v99) >> 15) + 2 * (v100 * v99 + v85 * v102);
                v105 = ((v103 * v99) >> 15) - ((v101 * v102) >> 15) + 2 * (v85 * v99 - v100 * v102);
                v106 = *(v78 - 1);
                v224 = v78;
                v223 = v84;
                v107 = *v84 >> 16;
                v108 = *v84;
                v109 = *v78;
                v110 = v84[1] >> 16;
                LODWORD(v85) = v84[1];
                LODWORD(v84) = ((v85 * v109) >> 15) + ((v108 * v106) >> 15) + 2 * (v107 * v106 + v110 * v109);
                v111 = ((v85 * v106) >> 15) - ((v108 * v109) >> 15) + 2 * (v110 * v106 - v107 * v109);
                v112 = v84 + v89;
                LODWORD(v85) = v111 + v90;
                v113 = v89 - v84;
                v114 = v90 - v111;
                LODWORD(v84) = v104 + v97;
                v115 = v105 + v98;
                v116 = v97 - v104;
                v117 = v98 - v105;
                *v87 = v84 + v230 + v112;
                v87[1] = v115 + v231 + v85;
                v118 = v230 + (v84 >> 16) * v68 + ((v84 * v76) >> 15) + (v112 >> 16) * result + ((v112 * v67) >> 15);
                v119 = v231 + (v115 >> 16) * v68 + ((v115 * v76) >> 15) + (v85 >> 16) * result + ((v85 * v67) >> 15);
                v120 = result;
                v121 = v68;
                v122 = v69 * (v114 >> 16) + (v117 >> 16) * v211 - (((v117 * v64) >> 15) + ((v114 * v66) >> 15));
                v123 = v113 >> 16;
                v124 = v70 * (v116 >> 16);
                v125 = v67;
                v126 = v124 + ((v116 * v64) >> 15) + (v113 >> 16) * v229 + ((v113 * v66) >> 15);
                *v226 = v118 - v122;
                v226[1] = v119 - v126;
                v127 = v118 + v122;
                v71 = v221;
                *v223 = v127;
                v223[1] = v119 + v126;
                v76 = v222;
                v128 = v230 + (v84 >> 16) * v120 + ((v84 * v125) >> 15) + (v112 >> 16) * v121 + ((v112 * v222) >> 15);
                v129 = v231 + (v115 >> 16) * v120 + ((v115 * v125) >> 15) + (v85 >> 16) * v121 + ((v85 * v222) >> 15);
                v69 = -2 * v66;
                v130 = ((v114 * v64) >> 15) - ((v117 * v66) >> 15) + 2 * ((v114 >> 16) * v64 - (v117 >> 16) * v66);
                v75 = v217;
                v74 = v218;
                v131 = v113 * v64;
                v72 = v220;
                v132 = (v116 >> 16) * v229 + ((v116 * v66) >> 15) + v123 * v211 - (v131 >> 15);
                *v227 = v130 + v128;
                v227[1] = v132 + v129;
                v68 = v121;
                result = v120;
                v133 = v129 - v132;
                v67 = v125;
                v70 = 2 * v64;
                *v225 = v128 - v130;
                v225[1] = v133;
                v73 = v219;
                v77 += 8;
                v78 = &v224[v215];
                v81 = &v228[v214];
                v80 = (v80 + v212);
                v79 = (v79 + v216);
              }

              while (v213 != v77);
            }

            v12 = v210;
            v59 = v209 + 1;
            v71 += v206;
            v72 += v206;
            v73 += v206;
            v75 += v206;
            v74 += v206;
          }

          while (v209 + 1 != v207);
        }
      }
    }

    else if (v15 == 2)
    {
      v134 = v232[v11];
      if (v134 >= 1)
      {
        v135 = 0;
        v136 = *(v201 + 48) + 2;
        v137 = v199;
        do
        {
          if (v12 >= 1)
          {
            v138 = (a3 + 8 * v135 * v204 + 8 * v12);
            v139 = v136;
            LODWORD(result) = v12;
            v140 = v137;
            do
            {
              v141 = *(v139 - 1);
              v142 = *v138 >> 16;
              v143 = *v138;
              v144 = *v139;
              v145 = v138[1] >> 16;
              v146 = v138[1];
              v147 = ((v146 * v144) >> 15) + ((v143 * v141) >> 15) + 2 * (v142 * v141 + v145 * v144);
              v148 = ((v146 * v141) >> 15) - ((v143 * v144) >> 15) + 2 * (v145 * v141 - v142 * v144);
              v149 = *(v140 - 1);
              v150 = *v140;
              *v138 = v149 - v147;
              v138[1] = v150 - v148;
              v138 += 2;
              *(v140 - 1) = v147 + v149;
              *v140 = v148 + v150;
              v140 += 2;
              v139 += 2 * (v134 << v200);
              result = (result - 1);
            }

            while (result);
          }

          ++v135;
          v137 += 2 * v204;
        }

        while (v135 != v134);
      }
    }

    else if (v15 == 3)
    {
      v16 = v232[v11];
      if (v16 >= 1)
      {
        v17 = 0;
        v18 = (v16 << v200);
        v19 = *(v201 + 48);
        v20 = 8 * v18;
        v21 = -*(v19 + 4 * v18 * v12 + 2);
        v22 = (-65536 * *(v19 + 4 * v18 * v12 + 2)) >> 15;
        v23 = (a3 + 8 * v12);
        v24 = 8 * v204;
        v25 = (v19 + 2);
        v26 = (a3 + 16 * v12);
        v27 = 4 * v18;
        result = v199;
        do
        {
          v28 = result;
          v29 = v25;
          v30 = v26;
          v31 = v25;
          v32 = v23;
          v33 = v12;
          do
          {
            v34 = *(v29 - 1);
            v35 = *v32 >> 16;
            v36 = *v32;
            v37 = *v29;
            v38 = v32[1] >> 16;
            v39 = v32[1];
            v40 = ((v39 * v37) >> 15) + ((v36 * v34) >> 15) + 2 * (v35 * v34 + v38 * v37);
            v41 = ((v39 * v34) >> 15) - ((v36 * v37) >> 15) + 2 * (v38 * v34 - v35 * v37);
            v42 = *(v31 - 1);
            v43 = *v30 >> 16;
            v44 = *v30;
            v45 = *v31;
            v46 = v30[1] >> 16;
            v47 = v30[1];
            v48 = ((v47 * v45) >> 15) + ((v44 * v42) >> 15) + 2 * (v43 * v42 + v46 * v45);
            v49 = ((v47 * v42) >> 15) - ((v44 * v45) >> 15) + 2 * (v46 * v42 - v43 * v45);
            v50 = v49 + v41;
            v51 = v41 - v49;
            v52 = *v28 - (v50 >> 1);
            *v32 = *(v28 - 1) - ((v48 + v40) >> 1);
            v32[1] = v52;
            v53 = ((v40 - v48) >> 16) * v22 + (((v40 - v48) * v21) >> 15);
            v54 = (v51 >> 16) * v22 + ((v51 * v21) >> 15);
            v55 = v48 + v40 + *(v28 - 1);
            v56 = *v28;
            *(v28 - 1) = v55;
            *v28 = v56 + v50;
            v57 = v32[1] - v53;
            *v30 = v54 + *v32;
            v30[1] = v57;
            v30 += 2;
            v58 = v32[1] + v53;
            *v32 -= v54;
            v32[1] = v58;
            v32 += 2;
            v31 = (v31 + v20);
            v29 = (v29 + v27);
            v28 += 2;
            --v33;
          }

          while (v33);
          ++v17;
          v23 = (v23 + v24);
          v26 = (v26 + v24);
          result += v24;
        }

        while (v17 != v16);
      }
    }

    v6 = v202;
    v11 = v203 - 1;
  }

  while (v203 > 0);
  return result;
}

uint64_t compute_allocation(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int *a7, int *a8, int a9, unsigned int *a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t *a16, _BOOL4 a17, int a18, unsigned int a19)
{
  v201 = a8;
  v207 = a7;
  v204 = a5;
  v21 = a2;
  v214 = a1;
  v218 = *MEMORY[0x1E69E9840];
  v216 = *(a1 + 8);
  v211 = a9 > 7;
  v22 = (a9 & ~(a9 >> 31)) - 8 * v211;
  v206 = a4;
  if (a14 == 2)
  {
    v23 = LOG2_FRAC_TABLE[a3 - a2];
    v24 = 8 * (v22 - v23 > 7);
    v25 = v22 - v23 - v24;
    v26 = v22 < v23;
    if (v22 < v23)
    {
      v23 = 0;
    }

    v195 = v23;
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v24;
    }

    v197 = v27;
    if (!v26)
    {
      v22 = v25;
    }
  }

  else
  {
    v195 = 0;
    v197 = 0;
  }

  v212 = a16;
  v199 = a13;
  v200 = a12;
  v215 = a11;
  v198 = a10;
  v28 = 4 * v216;
  MEMORY[0x1EEE9AC00](a1);
  v29 = (4 * v216 + 15) & 0xFFFFFFFFFFFFFFF0;
  v217 = &v193 - v29;
  bzero(&v193 - v29, 4 * v216);
  MEMORY[0x1EEE9AC00](v30);
  v209 = &v193 - v29;
  bzero(&v193 - v29, v28);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v193 - v29;
  bzero(&v193 - v29, v28);
  MEMORY[0x1EEE9AC00](v33);
  v208 = &v193 - v29;
  bzero(&v193 - v29, v28);
  v34 = 8 * a14;
  v213 = &v193 - v29;
  if (v21 >= a3)
  {
    v38 = a3;
    v37 = v21;
    v49 = v204;
    v35 = v214;
    v57 = v217;
    v50 = v206;
    v44 = v208;
  }

  else
  {
    v35 = v214;
    v36 = a6 - a15 - 5;
    v37 = v21;
    v38 = a3;
    v39 = (*(v214 + 24) + 2 * v21);
    v42 = *v39;
    v40 = v39 + 1;
    v41 = v42;
    v43 = &v32[4 * v21];
    v44 = v208;
    v45 = &v208[4 * v21];
    v46 = a14 * v36;
    v47 = v46 * (~v21 + a3);
    v48 = a3 - v21;
    v49 = v204;
    v50 = v206;
    do
    {
      v51 = *v40++;
      v52 = v51 - v41;
      v53 = v51;
      v54 = (8 * ((3 * v52) << a15)) >> 4;
      if (v34 > v54)
      {
        v54 = 8 * a14;
      }

      *v43++ = v54;
      v55 = (v47 * v52) << (a15 + 3) >> 6;
      if (v52 << a15 == 1)
      {
        v56 = 8 * a14;
      }

      else
      {
        v56 = 0;
      }

      *v45 = v55 - v56;
      v45 += 4;
      v47 -= v46;
      v41 = v53;
      --v48;
    }

    while (v48);
    v57 = v217;
  }

  v205 = a19;
  v194 = 8 * v211;
  v58 = *(v35 + 44);
  v59 = v58 - 1;
  v60 = v44 - 4;
  LODWORD(v208) = a18;
  v211 = a17;
  v61 = v213 - 4;
  v62 = v49 - 4;
  v63 = 1;
  v203 = v38;
  v217 = v21;
  do
  {
    while (1)
    {
      v64 = (v63 + v59) >> 1;
      if (v21 < a3)
      {
        break;
      }

      if (v22 >= 0)
      {
        v63 = v64 + 1;
      }

      else
      {
        v59 = v64 - 1;
      }

      if (v63 > v59)
      {
        v87 = v21;
        goto LABEL_57;
      }
    }

    v65 = v44;
    v66 = 0;
    v67 = 0;
    v68 = *(v35 + 24);
    LOWORD(v69) = *(v68 + 2 * v38);
    v70 = v68 - 2;
    v71 = v38;
    do
    {
      v72 = v69;
      v69 = *(v70 + 2 * v71);
      v73 = ((v72 - v69) * a14 * *(*(v35 + 48) + v216 * v64 - 1 + v71)) << a15 >> 2;
      if (v73 >= 1)
      {
        v73 = (*&v60[4 * v71] + v73) & ~((*&v60[4 * v71] + v73) >> 31);
      }

      v74 = *(v50 - 4 + 4 * v71) + v73;
      if (v67 || v74 >= *&v61[4 * v71])
      {
        if (v74 >= *(v62 + 4 * v71))
        {
          v74 = *(v62 + 4 * v71);
        }

        v67 = 1;
      }

      else
      {
        v67 = 0;
        if (v74 >= v34)
        {
          v74 = 8 * a14;
        }

        else
        {
          v74 = 0;
        }
      }

      --v71;
      v66 += v74;
    }

    while (v71 > v37);
    if (v66 <= v22)
    {
      v63 = v64 + 1;
    }

    else
    {
      v59 = v64 - 1;
    }

    v44 = v65;
  }

  while (v63 <= v59);
  v75 = 0;
  v76 = (*(v35 + 24) + 2 * v37);
  v77 = *(v35 + 48) + v37;
  v78 = v77 + v63 * v216;
  v79 = v77 + (v63 - 1) * v216;
  v82 = *v76;
  v81 = v76 + 1;
  v80 = v82;
  v83 = v49 + 4 * v37;
  v84 = &v65[4 * v37];
  v85 = v50 + 4 * v37;
  v86 = v37 - v38;
  v87 = v21;
  v88 = (v209 + 4 * v37);
  do
  {
    v89 = (v81[v75] - v80) * a14;
    if (v63 >= v58)
    {
      v90 = *(v83 + 4 * v75);
    }

    else
    {
      v90 = (v89 * *(v78 + v75)) << a15 >> 2;
    }

    v91 = (v89 * *(v79 + v75)) << a15 >> 2;
    if (v91 >= 1)
    {
      v91 = (*&v84[4 * v75] + v91) & ~((*&v84[4 * v75] + v91) >> 31);
    }

    if (v90 >= 1)
    {
      v90 = (*&v84[4 * v75] + v90) & ~((*&v84[4 * v75] + v90) >> 31);
    }

    v80 = v81[v75];
    v92 = *(v85 + 4 * v75);
    if (v63 <= 1)
    {
      v93 = 0;
    }

    else
    {
      v93 = *(v85 + 4 * v75);
    }

    v94 = v91 + v93;
    if (v92 > 0)
    {
      v87 = v37 + v75;
    }

    *&v57[4 * v37 + 4 * v75] = v94;
    *&v88[4 * v75++] = (v90 - v94 + v92) & ~((v90 - v94 + v92) >> 31);
    LODWORD(v21) = v217;
  }

  while (v86 + v75);
LABEL_57:
  v95 = 0;
  v96 = 0;
  v196 = a14 > 1;
  v97 = (v209 - 4);
  v98 = v57 - 4;
  v99 = 64;
  v100 = v215;
  do
  {
    while (v21 >= a3)
    {
      if (v22 < 0)
      {
        v99 = (v96 + v99) >> 1;
      }

      else
      {
        v96 = (v96 + v99) >> 1;
      }

      if (++v95 == 6)
      {
        v105 = 0;
        goto LABEL_87;
      }
    }

    v101 = 0;
    v102 = 0;
    v103 = v203;
    do
    {
      v104 = *&v98[4 * v103] + ((*&v97[4 * v103] * ((v96 + v99) >> 1)) >> 6);
      if (v102 || v104 >= *&v61[4 * v103])
      {
        if (v104 >= *(v62 + 4 * v103))
        {
          v104 = *(v62 + 4 * v103);
        }

        v102 = 1;
      }

      else
      {
        v102 = 0;
        if (v104 >= v34)
        {
          v104 = 8 * a14;
        }

        else
        {
          v104 = 0;
        }
      }

      --v103;
      v101 += v104;
    }

    while (v103 > v37);
    if (v101 > v22)
    {
      v99 = (v96 + v99) >> 1;
    }

    else
    {
      v96 = (v96 + v99) >> 1;
    }

    ++v95;
  }

  while (v95 != 6);
  v105 = 0;
  v106 = 0;
  v107 = v203;
  do
  {
    v108 = *&v98[4 * v107] + ((*&v97[4 * v107] * v96) >> 6);
    v106 |= v108 >= *&v61[4 * v107];
    if (v108 >= v34)
    {
      v109 = 8 * a14;
    }

    else
    {
      v109 = 0;
    }

    if ((v106 & 1) == 0)
    {
      v108 = v109;
    }

    if (v108 >= *(v62 + 4 * v107))
    {
      v108 = *(v62 + 4 * v107);
    }

    *(v100 - 4 + 4 * v107) = v108;
    v105 += v108;
    --v107;
  }

  while (v107 > v37);
LABEL_87:
  v202 = a3;
  if (a3 - 1 <= v87)
  {
    v110 = a3;
    v127 = v195;
LABEL_111:
    v129 = v22 + v194;
LABEL_112:
    v130 = v201;
    if (v127 > 0)
    {
      if (!v211)
      {
        goto LABEL_119;
      }

      v131 = v207;
      v132 = *v207;
      if (*v207 >= v110)
      {
        v132 = v110;
      }

      *v207 = v132;
      v133 = v217;
      ec_enc_uint(v212, v132 - v217, v110 - v217 + 1);
      v35 = v214;
      v100 = v215;
      v134 = *v131;
LABEL_127:
      if (v134 <= v133)
      {
        v137 = v197;
      }

      else
      {
        v137 = 0;
      }

      if (v197 && v134 > v133)
      {
        v138 = v196;
        if (!v211)
        {
          goto LABEL_134;
        }

        ec_enc_bit_logp(v212, *v130, 1);
        v35 = v214;
        v100 = v215;
        goto LABEL_138;
      }

LABEL_136:
      v138 = v196;
      goto LABEL_137;
    }

LABEL_126:
    v134 = 0;
    *v207 = 0;
    v133 = v217;
    goto LABEL_127;
  }

  LODWORD(v206) = v21 + 2;
  v110 = a3;
  v111 = a3 - 1;
  v205 = v205;
  v112 = v87;
  v216 = &LOG2_FRAC_TABLE[-v37];
  v113 = v195;
  v114 = v213;
  v209 = v87;
  v210 = v22;
  while (1)
  {
    v115 = *(v35 + 24);
    v116 = *(v115 + 2 * v110);
    v117 = *(v115 + 2 * v37);
    v118 = (v22 - v105) / (v116 - v117);
    LODWORD(v115) = *(v115 + 2 * v111);
    v119 = v22 - v105 + v117 - (v115 + (v116 - v117) * v118);
    v120 = v119 & ~(v119 >> 31);
    v121 = v116 - v115;
    v122 = *(v100 + 4 * v111);
    v123 = v122 + v121 * v118 + v120;
    v124 = *&v114[4 * v111];
    if (v124 <= v34 + 8)
    {
      v124 = v34 + 8;
    }

    if (v123 < v124)
    {
      goto LABEL_102;
    }

    if (v211)
    {
      v125 = v113;
      if (v110 <= v206 || (v110 <= v208 ? (v126 = 7) : (v126 = 9), v111 <= v205 && v123 > (8 * ((v121 * v126) << a15)) >> 4))
      {
        ec_enc_bit_logp(v212, 1, 1);
        v35 = v214;
        v100 = v215;
        v127 = v125;
        v129 = v210;
        goto LABEL_112;
      }

      ec_enc_bit_logp(v212, 0, 1);
      goto LABEL_101;
    }

    v125 = v113;
    if (ec_dec_bit_logp(v212, 1))
    {
      break;
    }

LABEL_101:
    v105 += 8;
    v123 -= 8;
    v35 = v214;
    v100 = v215;
    v122 = *(v215 + 4 * v111);
    v113 = v125;
    v22 = v210;
    v114 = v213;
    v112 = v209;
LABEL_102:
    if (v113)
    {
      v127 = v216[v111];
    }

    else
    {
      v127 = 0;
    }

    if (v123 >= v34)
    {
      v128 = 8 * a14;
    }

    else
    {
      v128 = 0;
    }

    v105 = v105 - v113 - v122 + v127 + v128;
    *(v100 + 4 * v111--) = v128;
    v110 = (v110 - 1);
    v113 = v127;
    if (v111 <= v112)
    {
      goto LABEL_111;
    }
  }

  v26 = v125 <= 0;
  v130 = v201;
  v35 = v214;
  v100 = v215;
  v129 = v210;
  if (v26)
  {
    goto LABEL_126;
  }

LABEL_119:
  v135 = v217;
  v136 = ec_dec_uint(v212, v110 - v217 + 1);
  *v207 = v136 + v135;
  if (v136 + v135 <= v135)
  {
    v137 = v197;
  }

  else
  {
    v137 = 0;
  }

  if (!v197)
  {
    v35 = v214;
    v100 = v215;
    goto LABEL_136;
  }

  v26 = v136 + v135 <= v135;
  v35 = v214;
  v100 = v215;
  v138 = v196;
  if (!v26)
  {
LABEL_134:
    v139 = ec_dec_bit_logp(v212, 1);
    v35 = v214;
    v100 = v215;
    *v130 = v139;
    goto LABEL_138;
  }

LABEL_137:
  *v130 = 0;
LABEL_138:
  if (v110 > v217)
  {
    v140 = v129 - v105 + v137;
    v141 = *(v35 + 24);
    v142 = *(v141 + 2 * v37);
    v143 = *(v141 + 2 * v110) - v142;
    v144 = v140 / v143;
    v145 = v140 % v143;
    v146 = (v100 + 4 * v37);
    v147 = v141 + 2 * v37;
    v148 = v110 - v37;
    v149 = (v147 + 2);
    v150 = v148;
    v151 = v146;
    v152 = v142;
    do
    {
      v153 = *v149++;
      *v151++ += (v153 - v152) * v144;
      v152 = v153;
      --v150;
    }

    while (v150);
    v154 = (v147 + 2);
    v155 = v142;
    v156 = v204;
    v158 = v199;
    v157 = v200;
    do
    {
      v159 = *v154++;
      v160 = v159 - v155;
      v161 = v159;
      if (v145 < v160)
      {
        v160 = v145;
      }

      *v146++ += v160;
      v145 -= v160;
      v155 = v161;
      --v148;
    }

    while (v148);
    v162 = 0;
    if (a14 <= 1)
    {
      v163 = 3;
    }

    else
    {
      v163 = 4;
    }

    v164 = v141 + 2;
    while (1)
    {
      v165 = *(v164 + 2 * v37);
      v166 = (v165 - v142) << a15;
      v167 = *(v100 + 4 * v37) + v162;
      if (v166 < 2)
      {
        v171 = (v167 - v34) & ~((v167 - v34) >> 31);
        if (v167 >= v34)
        {
          v167 = 8 * a14;
        }

        *(v100 + 4 * v37) = v167;
        *(v157 + 4 * v37) = 0;
        *(v158 + 4 * v37) = 1;
        if (v171)
        {
LABEL_159:
          v172 = v171 >> v163;
          v173 = *(v157 + 4 * v37);
          if ((v171 >> v163) >= 8 - v173)
          {
            v172 = 8 - v173;
          }

          *(v157 + 4 * v37) = v172 + v173;
          v174 = v172 * v34;
          *(v158 + 4 * v37) = v174 >= (v171 - v162);
          v162 = v171 - v174;
          goto LABEL_176;
        }
      }

      else
      {
        v168 = 0;
        v169 = *(v156 + 4 * v37);
        v170 = v167 - v169;
        if (v167 >= v169)
        {
          v167 = *(v156 + 4 * v37);
        }

        *(v100 + 4 * v37) = v167;
        if (a14 == 2 && v166 != 2)
        {
          if (*v130)
          {
            v168 = 0;
          }

          else
          {
            v168 = v37 < *v207;
          }
        }

        v175 = v168 + v166 * a14;
        v176 = (8 * a15 + *(*(v35 + 56) + 2 * v37)) * v175;
        v177 = 8 * v175;
        if (v166 == 2)
        {
          v178 = (8 * v175) >> 2;
        }

        else
        {
          v178 = 0;
        }

        v179 = v178 - 21 * v175 + (v176 >> 1);
        v180 = v179 + v167;
        v181 = v179 + (v176 >> 3);
        if (v179 + v167 >= 24 * v175)
        {
          v181 = v179;
        }

        v182 = v179 + (v176 >> 2);
        if (v180 >= 16 * v175)
        {
          v182 = v181;
        }

        v183 = ((v167 + 4 * v175 + v182) / v177) & ~(((v167 + 4 * v175 + v182) / v177) >> 31);
        *(v157 + 4 * v37) = v183;
        v100 = v215;
        v184 = *(v215 + 4 * v37);
        if (v183 * a14 > v184 >> 3)
        {
          v183 = v184 >> v138 >> 3;
        }

        if (v183 >= 8)
        {
          v183 = 8;
        }

        *(v157 + 4 * v37) = v183;
        *(v158 + 4 * v37) = v183 * v177 >= *(v100 + 4 * v37) + v182;
        v171 = v170 & ~(v170 >> 31);
        *(v100 + 4 * v37) -= *(v157 + 4 * v37) * v34;
        if (v171)
        {
          goto LABEL_159;
        }
      }

      v162 = 0;
LABEL_176:
      ++v37;
      v142 = v165;
      if (v110 == v37)
      {
        v185 = v110;
        goto LABEL_179;
      }
    }
  }

  v162 = 0;
  v158 = v199;
  v157 = v200;
  v185 = v217;
LABEL_179:
  v186 = v202;
  *v198 = v162;
  if (v185 < v186)
  {
    v187 = v203 - v185;
    v188 = (v158 + 4 * v185);
    v189 = (v157 + 4 * v185);
    v190 = (v100 + 4 * v185);
    do
    {
      *v189 = *v190 >> v138 >> 3;
      *v190++ = 0;
      v191 = *v189++;
      *v188++ = v191 < 1;
      --v187;
    }

    while (v187);
  }

  return v110;
}

unint64_t clt_mdct_backward(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v67 = a5;
  v69 = *MEMORY[0x1E69E9840];
  v13 = *a1 >> a6;
  v14 = v13 >> 2;
  v68 = v13 >> 1;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v66 - v15;
  bzero(&v66 - v15, v17);
  v18 = ((v13 >> 1) + 25736) / v13;
  v19 = v18;
  v20 = 2 * v18;
  if (v14 >= 1)
  {
    v21 = 0;
    v22 = &a2[(v68 - 1) * a7];
    v23 = v18 << 16;
    v24 = *(a1 + 40);
    v25 = -(v23 >> 15);
    v26 = v14;
    v27 = v16;
    do
    {
      v28 = *(v24 + 2 * (v21 << a6));
      v29 = *v22 >> 16;
      v30 = *v22;
      v31 = *(v24 + 2 * (v26 << a6));
      v32 = *a2 >> 16;
      v33 = *a2;
      v34 = 2 * v31 * v32 - (2 * v29 * v28 + ((v30 * v28) >> 15)) + ((v33 * v31) >> 15);
      v35 = ((v33 * v28) >> 15) + ((v30 * v31) >> 15) + 2 * (v29 * v31 + v32 * v28);
      ++v21;
      *v27 = v34 + v25 * (-v35 >> 16) - ((-v35 * v19) >> 15);
      v27[1] = v20 * (v34 >> 16) - v35 + ((v34 * v19) >> 15);
      v27 += 2;
      a2 += 2 * a7;
      v22 -= 2 * a7;
      --v26;
    }

    while (v26);
  }

  v36 = v67;
  v37 = (a3 + 4 * (v67 >> 1));
  result = opus_ifft(*(a1 + 8 * a6 + 8), v16, v37);
  v39 = (v14 + 1) >> 1;
  if (v39 >= 1)
  {
    v40 = 0;
    v41 = *(a1 + 40);
    v42 = (4 * v68 + 4 * (v36 >> 1) + a3 - 4);
    do
    {
      v43 = *(v41 + 2 * (v40 << a6));
      v44 = *(v41 + 2 * (v14 << a6));
      v45 = *v37 >> 16;
      v46 = *v37;
      v47 = v37[1] >> 16;
      v48 = v37[1];
      v49 = ((v46 * v43) >> 15) - ((v48 * v44) >> 15) + 2 * (v45 * v43 - v47 * v44);
      v50 = ((v46 * v44) >> 15) + ((v48 * v43) >> 15) + 2 * (v47 * v43 + v45 * v44);
      v51 = *(v42 - 1);
      v52 = *v42;
      *v37 = v20 * (v50 >> 16) - v49 + ((v50 * v19) >> 15);
      v53 = v49 * v19;
      v54 = v50 + v20 * (v49 >> 16);
      v55 = *(v41 + 2 * (--v14 << a6));
      v56 = *(v41 + 2 * (++v40 << a6));
      v57 = v52;
      v52 >>= 16;
      result = (((v51 * v55) >> 15) - ((v57 * v56) >> 15) + 2 * ((v51 >> 16) * v55 - v52 * v56));
      v58 = ((v51 * v56) >> 15) + ((v57 * v55) >> 15) + 2 * (v52 * v55 + (v51 >> 16) * v56);
      *(v42 - 1) = v20 * (v58 >> 16) - result + ((v58 * v19) >> 15);
      *v42 = v54 + (v53 >> 15);
      v37[1] = v58 + v20 * (result >> 16) + ((result * v19) >> 15);
      v37 += 2;
      v42 -= 2;
    }

    while (v39 != v40);
  }

  if (v36 > 1)
  {
    v59 = 0;
    v60 = v36 - 1;
    do
    {
      v61 = *(a4 + 2 * v60);
      v62 = *(a3 + 4 * v59) >> 16;
      v63 = *(a3 + 4 * v59);
      v64 = *(a4 + 2 * v59);
      result = (*(a3 + 4 * v60) >> 16);
      v65 = *(a3 + 4 * v60);
      *(a3 + 4 * v59) = ((v63 * v61) >> 15) - ((v65 * v64) >> 15) + 2 * (v62 * v61 - result * v64);
      *(a3 + 4 * v60) = ((v63 * v64) >> 15) + ((v65 * v61) >> 15) + 2 * (result * v61 + v62 * v64);
      ++v59;
      --v60;
    }

    while (v36 / 2 != v59);
  }

  return result;
}

uint64_t *encode_pulses(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  v4 = a2;
  v5 = *(a1 + 4 * a2 - 4);
  v6 = v5 >> 31;
  if (v5 >= 0)
  {
    v7 = *(a1 + 4 * a2 - 4);
  }

  else
  {
    v7 = -v5;
  }

  v8 = 2;
  do
  {
    if (v8 >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = *(&CELT_PVQ_U_ROW + v9);
    if (v8 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v8;
    }

    v6 += *(v10 + 4 * v11);
    v12 = *(a1 - 8 + 4 * v4);
    if (v12 >= 0)
    {
      v13 = *(a1 - 8 + 4 * v4);
    }

    else
    {
      v13 = -v12;
    }

    v7 += v13;
    if (v12 < 0)
    {
      if (v8 > v7)
      {
        v14 = v7 + 1;
      }

      else
      {
        v14 = v8;
      }

      v15 = *(&CELT_PVQ_U_ROW + v14);
      if (v8 <= v7 + 1)
      {
        v16 = v7 + 1;
      }

      else
      {
        v16 = v8;
      }

      v6 += *(v15 + 4 * v16);
    }

    --v4;
    ++v8;
  }

  while (v4 > 1);
  if (a2 >= a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = a2;
  }

  v18 = *(&CELT_PVQ_U_ROW + v17);
  if (a2 <= a3)
  {
    v19 = a3;
  }

  else
  {
    v19 = a2;
  }

  v20 = *(v18 + 4 * v19);
  if (a3 + 1 < a2)
  {
    v21 = a3 + 1;
  }

  else
  {
    v21 = a2;
  }

  v22 = *(&CELT_PVQ_U_ROW + v21);
  if (a3 + 1 > a2)
  {
    v23 = a3 + 1;
  }

  else
  {
    v23 = a2;
  }

  return ec_enc_uint(a4, v6, *(v22 + 4 * v23) + v20);
}

uint64_t decode_pulses(int *a1, int a2, int a3, uint64_t a4)
{
  v4 = a3;
  if (a2 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(&CELT_PVQ_U_ROW + v7);
  if (a2 <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  v10 = *(v8 + 4 * v9);
  if (a3 + 1 < a2)
  {
    v11 = a3 + 1;
  }

  else
  {
    v11 = a2;
  }

  v12 = *(&CELT_PVQ_U_ROW + v11);
  if (a3 + 1 > a2)
  {
    v13 = a3 + 1;
  }

  else
  {
    v13 = a2;
  }

  result = ec_dec_uint(a4, *(v12 + 4 * v13) + v10);
  if (a2 >= 3)
  {
    v15 = a2;
    do
    {
      if (v15 <= v4)
      {
        v27 = *(&CELT_PVQ_U_ROW + v15);
        v28 = *(v27 + 4 * v4 + 4);
        if (result >= v28)
        {
          v29 = *(v27 + 4 * v4 + 4);
        }

        else
        {
          v29 = 0;
        }

        v30 = result - v29;
        if (*(v27 + 4 * v15) <= v30)
        {
          v35 = v4;
          v31 = v4 + 1;
          do
          {
            v33 = *(v27 + 4 * v35);
            v35 = v31 - 2;
            --v31;
          }

          while (v33 > v30);
        }

        else
        {
          v31 = v15;
          do
          {
            v32 = &CELT_PVQ_U_ROW + v31--;
            v33 = *(*(v32 - 1) + v15);
          }

          while (v33 > v30);
        }

        v19 = result >= v28;
        result = v30 - v33;
        v34 = v4 - v31;
        if (v19)
        {
          v34 = v31 - v4;
        }

        v4 = v31;
      }

      else
      {
        v16 = &CELT_PVQ_U_ROW + v4;
        v17 = *(*v16 + v15);
        v18 = *(v16[1] + v15);
        v19 = result < v17 || result >= v18;
        if (v19)
        {
          v20 = 0;
          if (result >= v18)
          {
            v21 = *(v16[1] + v15);
          }

          else
          {
            v21 = 0;
          }

          v22 = result - v21;
          v23 = (v16 - 1);
          do
          {
            v24 = *v23--;
            v25 = *(v24 + 4 * v15);
            ++v20;
            v19 = v22 >= v25;
            v26 = v22 - v25;
          }

          while (!v19);
          v4 -= v20;
          if (result < v18)
          {
            v34 = v20;
          }

          else
          {
            v34 = -v20;
          }

          result = v26;
        }

        else
        {
          v34 = 0;
          result = result - v17;
        }
      }

      *a1++ = v34;
    }

    while (v15-- > 3);
  }

  if (result > 2 * v4)
  {
    v37 = ~(2 * v4);
  }

  else
  {
    v37 = 0;
  }

  v38 = v37 + result;
  v39 = v38 + 1;
  v40 = v4 - ((v38 + 1) >> 1);
  if (result > 2 * v4)
  {
    v40 = ((v38 + 1) >> 1) - v4;
  }

  v41 = ((v38 + 1) & 0xFFFFFFFE) - 1;
  v19 = v39 >= 2;
  v42 = v39 >> 1;
  if (!v19)
  {
    v41 = 0;
  }

  *a1 = v40;
  a1[1] = (v42 - (v38 - v41)) ^ (v41 - v38);
  return result;
}

void *opus_custom_mode_create(int a1, int a2, int *a3)
{
  v3 = 0;
  while (a1 != 48000 || a2 << v3 != 960)
  {
    if (++v3 == 4)
    {
      result = 0;
      if (!a3)
      {
        return result;
      }

      v5 = -1;
      goto LABEL_9;
    }
  }

  result = &mode48000_960_120;
  if (!a3)
  {
    return result;
  }

  v5 = 0;
LABEL_9:
  *a3 = v5;
  return result;
}

uint64_t celt_decoder_init(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  v6 = opus_custom_mode_create(48000, 960, 0);
  if (a3 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1)
  {
    return 4294967289;
  }

  v8 = v6;
  v9 = vadd_s32(vshl_u32(*(v6 + 4), 0x400000002), 0x5400002030);
  bzero(a1, (v9.i32[1] + v9.i32[0] * a3));
  *a1 = v8;
  *(a1 + 2) = *(v8 + 1);
  *(a1 + 3) = a3;
  *(a1 + 4) = a3;
  *(a1 + 20) = 1;
  *(a1 + 7) = *(v8 + 3);
  a1[4] = 1;
  *(a1 + 13) = 0;
  opus_custom_decoder_ctl(a1, 4028, v10, v11, v12, v13, v14, v15, v17);
  v16 = resampling_factor(v4);
  *(a1 + 5) = v16;
  if (v16)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t celt_decode_with_ec(int32x2_t *a1, unsigned __int8 *a2, uint64_t a3, _WORD *a4, int a5, uint64_t *a6)
{
  v8 = a1;
  v9 = 0;
  v249[2] = *MEMORY[0x1E69E9840];
  v247 = 0;
  memset(v246, 0, sizeof(v246));
  v249[0] = 0;
  v249[1] = 0;
  v248[0] = 0;
  v248[1] = 0;
  v245 = 0;
  v10 = a1[1].i32[1];
  v238 = a1[2].i32[0];
  v11 = *a1;
  v12 = *(*a1 + 4);
  v13 = *(*a1 + 8);
  v14 = *(*a1 + 24);
  v16 = v12 + 2048;
  if (v10 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v10;
  }

  v18 = a1[2].i32[1];
  v19 = &a1[10] + 4;
  do
  {
    v249[v9++] = v19;
    v19 += 4 * v16;
  }

  while (v17 != v9);
  v20 = v11[8];
  if ((v20 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v233 = v17;
  v21 = 0;
  v22 = (v18 * a5);
  v15 = &a1[10] + 4;
  v23 = &a1[6 * v10 + 10] + 4 * v16 * v10 + 4;
  v24 = 2 * v13;
  v25 = 16;
  v26 = &tf_select_table;
  while (v11[10] << v21 != v22)
  {
    ++v21;
    v25 += 8;
    v26 += 8;
    if (v20 + 1 == v21)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = 0xFFFFFFFFLL;
  if (a3 <= 0x4FB && a4)
  {
    v28 = v8[3].i32[1];
    if (v28 >= v11[3])
    {
      v28 = v11[3];
    }

    if (!a2 || a3 <= 1)
    {
      celt_decode_lost(v8, a4, v22, v21);
      return (v22 / v8[2].i32[1]);
    }

    v220 = v28;
    v215 = v16 * v10;
    v244 = 0;
    v214 = 24 * v10;
    v213 = 2 * v13;
    v230 = &v15[4 * v215 + 2 * v214];
    v218 = &v23[2 * v24];
    v217 = &v218[2 * v24];
    v240 = v12;
    v232 = v14;
    LODWORD(v234) = a3;
    if (!a6)
    {
      a6 = v246;
      ec_dec_init(v246, a2, a3);
      LODWORD(a3) = v234;
      v23 = v230;
    }

    v30 = v238 == 1 && v13 > 0;
    v212 = v30;
    if (v30)
    {
      v31 = 0;
      v32 = v23;
      do
      {
        v33 = *v32;
        if (v33 <= *&v32[2 * v13])
        {
          LOWORD(v33) = *&v32[2 * v13];
        }

        *v32 = v33;
        v32 += 2;
        v31 += 2;
      }

      while (2 * v13 != v31);
    }

    v34 = 8 * a3;
    v35 = __clz(*(a6 + 8));
    v36 = *(a6 + 6) + v35 - 32;
    v229 = 8 * a3;
    v216 = a4;
    if (v36 < 8 * a3)
    {
      if (v36 != 1)
      {
        v207 = 1;
        goto LABEL_39;
      }

      if (!ec_dec_bit_logp(a6, 15))
      {
        v36 = 1;
        v207 = 1;
        v34 = v229;
        goto LABEL_39;
      }

      v35 = __clz(*(a6 + 8));
      v34 = v229;
    }

    v207 = 0;
    *(a6 + 6) = v34 - v35 + 32;
    v36 = v34;
LABEL_39:
    v37 = 0;
    v38 = v8[3].i32[0];
    v242 = a6;
    v226 = v13;
    if (v38)
    {
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      if (v36 + 16 <= v34)
      {
        v40 = ec_dec_bit_logp(a6, 1);
        if (v40)
        {
          v41 = ec_dec_uint(a6, 6u);
          a6 = v242;
          v37 = ec_dec_bits(v242, v41 + 4) + (16 << v41) - 1;
          v42 = ec_dec_bits(v242, 3u);
          v34 = v229;
          if ((*(a6 + 6) + __clz(*(a6 + 8)) - 30) <= v229)
          {
            v40 = ec_dec_icdf(v242, tapset_icdf, 2);
            v34 = v229;
          }

          else
          {
            v40 = 0;
          }

          v39 = 3072 * v42 + 3072;
        }

        else
        {
          v37 = 0;
          v39 = 0;
          v34 = v229;
        }

        v36 = *(a6 + 6) + __clz(*(a6 + 8)) - 32;
      }
    }

    v225 = v39;
    v236 = v40;
    v237 = v37;
    v43 = 0;
    v44 = 1 << v21;
    v45 = v36 + 3;
    if (v21 && v45 <= v34)
    {
      v46 = ec_dec_bit_logp(a6, 3);
      v44 = 1 << v21;
      v34 = v229;
      v43 = v46;
      v45 = *(a6 + 6) + __clz(*(a6 + 8)) - 29;
    }

    v47 = 0;
    v221 = v44;
    if (v43)
    {
      v48 = v44;
    }

    else
    {
      v48 = 0;
    }

    v224 = v48;
    if (v45 <= v34)
    {
      v47 = ec_dec_bit_logp(a6, 3);
    }

    v239 = v22;
    v228 = v10;
    v49 = v8[3].i32[0];
    v50 = v8[3].i32[1];
    v241 = v11;
    v51 = unquant_coarse_energy(v11, v49, v50, v230, v47, a6, v238, v21);
    MEMORY[0x1EEE9AC00](v51);
    v53 = &v206[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v223 = v52;
    bzero(v53, v52);
    v55 = v8[3].i32[0];
    v56 = v8[3].i32[1];
    v235 = v8;
    v57 = 8 * *(a6 + 2);
    v58 = *(a6 + 6) + __clz(*(a6 + 8)) - 32;
    if (v43)
    {
      v59 = 2;
    }

    else
    {
      v59 = 4;
    }

    if (v21)
    {
      v60 = v58 + v59 + 1 > v57;
    }

    else
    {
      v60 = 1;
    }

    v61 = !v60;
    v227 = v43;
    v219 = v53;
    v243 = v55;
    v231 = v56;
    v222 = v61;
    v62 = 0;
    if (v55 < v56)
    {
      v63 = 0;
      v64 = v57 - v61;
      if (v43)
      {
        v65 = 4;
      }

      else
      {
        v65 = 5;
      }

      v66 = v56 - v55;
      v67 = &v53[4 * v55];
      do
      {
        if (v59 + v58 <= v64)
        {
          v54 = ec_dec_bit_logp(a6, v59);
          v63 ^= v54;
          v58 = *(a6 + 6) + __clz(*(a6 + 8)) - 32;
          v62 |= v63;
        }

        *v67++ = v63;
        v59 = v65;
        --v66;
      }

      while (v66);
    }

    v68 = v239;
    v69 = v222;
    if (v222)
    {
      v70 = v227;
      v71 = v26[v62 + (4 * v227)] == v26[4 * v227 + 2 + v62];
      v72 = v235;
      v73 = v241;
      v74 = v223;
      if (v71)
      {
        v69 = 0;
      }

      else
      {
        v54 = ec_dec_bit_logp(v242, 1);
        v69 = 2 * v54;
      }

      v75 = v229;
    }

    else
    {
      v72 = v235;
      v73 = v241;
      v75 = v229;
      v70 = v227;
      v74 = v223;
    }

    if (v243 < v231)
    {
      v76 = v69 + 4 * v70;
      v77 = v231 - v243;
      v78 = &v219[4 * v243];
      do
      {
        *v78 = v26[*v78 + v76];
        ++v78;
        --v77;
      }

      while (v77);
    }

    v79 = v242;
    if ((*(v242 + 6) + __clz(*(v242 + 8)) - 28) <= v75)
    {
      v54 = ec_dec_icdf(v242, spread_icdf, 5);
      v211 = v54;
    }

    else
    {
      v211 = 2;
    }

    MEMORY[0x1EEE9AC00](v54);
    v80 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
    bzero(&v206[-v80], v74);
    v243 = &v206[-v80];
    inited = init_caps(v73, &v206[-v80], v21, v238);
    MEMORY[0x1EEE9AC00](inited);
    v210 = v80;
    v82 = &v206[-v80];
    bzero(&v206[-v80], v74);
    v83 = v234 << 6;
    v84 = ec_tell_frac(v79);
    v85 = v84;
    v86 = v72[3].i32[1];
    v87 = v72[3].i32[0];
    v222 = v83;
    v231 = v82;
    if (v87 < v86)
    {
      v88 = 6;
      v89 = v238;
      v90 = v232;
      do
      {
        v91 = v87 + 1;
        v92 = ((*(v90 + 2 * (v87 + 1)) - *(v90 + 2 * v87)) * v89) << v21;
        v93 = 8 * v92;
        if (v92 <= 48)
        {
          v92 = 48;
        }

        if (v93 >= v92)
        {
          v94 = v92;
        }

        else
        {
          v94 = v93;
        }

        if (v85 + 8 * v88 >= v83)
        {
          *&v82[4 * v87] = 0;
        }

        else
        {
          if (*(v243 + 4 * v87) < 1)
          {
            v96 = 0;
          }

          else
          {
            v95 = 0;
            LODWORD(v234) = v88;
            while (1)
            {
              v96 = v95;
              v97 = v242;
              v98 = ec_dec_bit_logp(v242, v88);
              v84 = ec_tell_frac(v97);
              v85 = v84;
              if (!v98)
              {
                break;
              }

              v99 = v83 - v94;
              if (v84 + 8 < v83 - v94)
              {
                v95 = v96 + v94;
                LOBYTE(v88) = 1;
                v83 -= v94;
                if (v96 + v94 < *(v243 + 4 * v87))
                {
                  continue;
                }
              }

              v96 += v94;
              v83 = v99;
              break;
            }

            v89 = v238;
            v90 = v232;
            v82 = v231;
            v88 = v234;
          }

          *&v82[4 * v87] = v96;
          v86 = v235[3].i32[1];
          if (v88 <= 3)
          {
            v100 = 3;
          }

          else
          {
            v100 = v88;
          }

          v101 = v100 - 1;
          if (v96 > 0)
          {
            v88 = v101;
          }

          v68 = v239;
        }

        ++v87;
      }

      while (v91 < v86);
    }

    v102 = v223;
    MEMORY[0x1EEE9AC00](v84);
    v103 = &v206[-v210];
    bzero(&v206[-v210], v102);
    v104 = v242;
    if (v85 + 48 <= v83)
    {
      v208 = ec_dec_icdf(v242, trim_icdf, 7);
    }

    else
    {
      v208 = 5;
    }

    v105 = v241;
    v106 = v222;
    v107 = ec_tell_frac(v104);
    v108 = 0;
    v109 = v106 + ~v107;
    v110 = v235;
    v111 = 0;
    if (v21 >= 2 && v227)
    {
      v108 = v109 >= v25;
      v111 = 8 * v108;
    }

    v209 = v111;
    LODWORD(v210) = v108;
    v112 = v109 - v111;
    MEMORY[0x1EEE9AC00](v107);
    v113 = &v206[-((v102 + 15) & 0xFFFFFFFFFFFFFFF0)];
    bzero(v113, v102);
    MEMORY[0x1EEE9AC00](v114);
    bzero(v113, v102);
    v115 = v110[3].u32[0];
    v116 = v110[3].u32[1];
    v117 = v242;
    v118 = v238;
    v234 = v113;
    v119 = compute_allocation(v105, v115, v116, v231, v243, v208, &v245 + 1, &v245, v112, &v244, v113, v103, v113, v238, v21, v242, 0, 0, 0);
    v120 = v103;
    v121 = v119;
    v122 = v110[3].i32[0];
    v123 = v110[3].i32[1];
    v243 = v120;
    v124 = unquant_fine_energy(v105, v122, v123, v230, v120, v117, v118);
    v231 = (v226 * v118);
    MEMORY[0x1EEE9AC00](v124);
    v126 = &v206[-v125];
    bzero(&v206[-v125], v127);
    v223 = (v68 * v118);
    MEMORY[0x1EEE9AC00](v128);
    v130 = &v206[-v129];
    bzero(&v206[-v129], v131);
    v132 = &v130[2 * v68];
    v133 = v113;
    if (v118 == 2)
    {
      v134 = v132;
    }

    else
    {
      v134 = 0;
    }

    quant_all_bands(0, v105, v110[3].i32[0], v110[3].u32[1], v130, v134, v126, 0, v113, v224, v211, v245, HIDWORD(v245), v219, v222 - v209, v244, v117, v21, v121, &v110[5]);
    if (v210)
    {
      v135 = ec_dec_bits(v117, 1u);
      v136 = unquant_energy_finalise(v105, v110[3].i32[0], v110[3].i32[1], v230, v243, v234, v229 - *(v117 + 6) - __clz(*(v117 + 8)) + 32, v117, v118);
      v137 = v207;
      if (v135)
      {
        v136 = anti_collapse(v105, v130, v126, v21, v118, v239, v110[3].i32[0], v110[3].i32[1], v230, v218, v217, v133, v110[5].i32[0]);
      }
    }

    else
    {
      v136 = unquant_energy_finalise(v105, v110[3].i32[0], v110[3].i32[1], v230, v243, v234, v229 - *(v117 + 6) - __clz(*(v117 + 8)) + 32, v117, v118);
      v137 = v207;
    }

    MEMORY[0x1EEE9AC00](v136);
    v139 = &v206[-v138];
    bzero(&v206[-v138], v140);
    if (v137)
    {
      denormalise_bands(v105, v130, v139, v230, v110[3].i32[0], v220, v118, v221);
      v141 = v239;
    }

    else
    {
      if (v231 >= 1)
      {
        memset_pattern16(v230, &unk_1C382DF50, (2 * v231));
      }

      v141 = v239;
      if (v223 >= 1)
      {
        bzero(v139, 4 * v223);
      }
    }

    v142 = 4 * (v240 / 2 - v141 + 2048);
    v143 = v249;
    v144 = v233;
    do
    {
      v145 = *v143++;
      memmove(v145, &v145[4 * v141], v142);
      --v144;
    }

    while (v144);
    v146 = 0;
    v147 = *(v232 + 2 * v220) << v21;
    v148 = v110[2].i32[1];
    if (v238 <= 1)
    {
      v149 = 1;
    }

    else
    {
      v149 = v238;
    }

    do
    {
      v150 = v147;
      if (v148 != 1)
      {
        if (v147 >= v141 / v148)
        {
          v150 = v141 / v148;
        }

        else
        {
          v150 = v147;
        }
      }

      if (v150 < v141)
      {
        bzero(&v139[4 * v150 + 4 * v146], 4 * (v141 + ~v150) + 4);
      }

      v146 += v141;
      --v149;
    }

    while (v149);
    v151 = 0;
    v152 = 8 * v233;
    do
    {
      v248[v151 / 8] = v249[v151 / 8] - 4 * v141 + 0x2000;
      v151 += 8;
    }

    while (v152 != v151);
    v153 = v228;
    v8 = v235;
    v154 = v238;
    if (v228 == 2 && v238 == 1 && v141 >= 1)
    {
      v155 = 0;
      v156 = v139;
      do
      {
        v156[v141] = *v156;
        ++v156;
        v155 += 4;
      }

      while (4 * v141 != v155);
    }

    if (v153 == 1 && v154 == 2 && v141 >= 1)
    {
      v157 = 0;
      v158 = v139;
      do
      {
        *v158 = (v158[v141] + *v158) >> 1;
        ++v158;
        v157 += 4;
      }

      while (4 * v141 != v157);
    }

    compute_inv_mdcts(v241, v224, v139, v248, v153, v21);
    v159 = 0;
    v160 = v225;
    do
    {
      v161 = vmax_s32(v8[7], 0xF0000000FLL);
      v8[7] = v161;
      v162 = v248[v159 / 8];
      v163 = v241;
      v164 = v240;
      comb_filter(v162, v162, v161.i32[1], v161.i32[0], v241[10], v8[8].i16[1], v8[8].i16[0], v8[9].i32[0], v8[8].i32[1], *(v241 + 8), v240);
      if (v21)
      {
        comb_filter(&v162[4 * v163[10]], &v162[4 * v163[10]], v8[7].i32[0], v237, v239 - v163[10], v8[8].i16[0], v160, v8[8].i32[1], v236, *(v163 + 8), v164);
      }

      v159 += 8;
    }

    while (v152 != v159);
    v165 = v8[7].i32[0];
    v8[8].i16[1] = v8[8].i16[0];
    v166 = v8[8].i32[1];
    v167 = v237;
    v8[7].i32[0] = v237;
    v8[7].i32[1] = v165;
    v168 = v225;
    v8[8].i16[0] = v225;
    v169 = v236;
    v8[8].i32[1] = v236;
    v8[9].i32[0] = v166;
    if (v21)
    {
      v8[7].i32[1] = v167;
      v8[8].i16[1] = v168;
      v8[9].i32[0] = v169;
    }

    v170 = v226;
    v171 = v214;
    v172 = v213;
    v173 = v230;
    v174 = v218;
    v175 = v217;
    v176 = v221;
    v177 = v227;
    if (v212)
    {
      v178 = 0;
      v179 = 2 * v226;
      v180 = v230;
      do
      {
        *&v180[2 * v170] = *v180;
        v180 += 2;
        v178 += 2;
      }

      while (v179 != v178);
    }

    LODWORD(v22) = v239;
    if (v177)
    {
      if (v170 >= 1)
      {
        if (v172 <= 1)
        {
          v181 = 1;
        }

        else
        {
          v181 = v172;
        }

        do
        {
          v182 = *&v173[2 * v172];
          if (v182 >= *v173)
          {
            LOWORD(v182) = *v173;
          }

          *&v173[2 * v172] = v182;
          v173 += 2;
          --v181;
        }

        while (v181);
      }
    }

    else if (v170 >= 1)
    {
      if (v172 <= 1)
      {
        v183 = 1;
      }

      else
      {
        v183 = v172;
      }

      v184 = v183;
      do
      {
        v185 = *v174;
        v174 += 2;
        *v175 = v185;
        v175 += 2;
        --v184;
      }

      while (v184);
      v186 = v183;
      v187 = v173;
      do
      {
        *&v187[2 * v172] = *v187;
        v187 += 2;
        --v186;
      }

      while (v186);
      do
      {
        v188 = v176 + *&v173[6 * v172];
        if (v188 >= *v173)
        {
          LOWORD(v188) = *v173;
        }

        *&v173[6 * v172] = v188;
        v173 += 2;
        --v183;
      }

      while (v183);
    }

    v189 = 0;
    v190 = &v8[10] + 4 * v215 + 2 * v171 + 4;
    v191 = v190 + 4 * v172;
    v192 = v190 + 2 * v172;
    v193 = v8[3].u32[0];
    v194 = v8[3].i32[1];
    v195 = 1;
    do
    {
      v196 = v195;
      if (v193 >= 1)
      {
        v197 = 0;
        do
        {
          *(v190 + 2 * v189 * v170 + v197) = 0;
          *(v191 + 2 * v189 * v170 + v197) = -28672;
          *(v192 + 2 * v189 * v170 + v197) = -28672;
          v197 += 2;
        }

        while (2 * v193 != v197);
      }

      if (v194 < v170)
      {
        v198 = 0;
        v199 = v194 + v189 * v170;
        v200 = v190 + 2 * v199;
        v201 = v191 + 2 * v199;
        v202 = v192 + 2 * v199;
        do
        {
          *(v200 + 2 * v198) = 0;
          *(v201 + 2 * v198) = -28672;
          *(v202 + 2 * v198++) = -28672;
        }

        while (v170 - v194 != v198);
      }

      v195 = 0;
      v189 = 1;
    }

    while ((v196 & 1) != 0);
    v203 = v241;
    v204 = v242;
    v205 = *(v242 + 8);
    v8[5].i32[0] = v205;
    deemphasis(v248, v216, v22, v228, v8[2].i32[1], v203 + 8, &v8[9] + 4, v139);
    v8[6].i32[1] = 0;
    if ((*(v204 + 6) + __clz(v205) - 32) > v229)
    {
      return 4294967293;
    }

    if (*(v204 + 12))
    {
      v8[5].i32[1] = 1;
    }

    return (v22 / v8[2].i32[1]);
  }

  return result;
}

uint64_t celt_decode_lost(unsigned int *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v194) = a4;
  v4 = a3;
  v167 = a2;
  v6 = 0;
  v198[2] = *MEMORY[0x1E69E9840];
  v7 = a1[3];
  v198[0] = 0;
  v198[1] = 0;
  v197[0] = 0;
  v197[1] = 0;
  v8 = *a1;
  v190 = *(*a1 + 8);
  v192 = *(v8 + 4);
  v9 = v192 + 2048;
  v186 = a3;
  v183 = -a3;
  if (v7 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  LODWORD(v182) = v10;
  v193 = *(v8 + 24);
  v184 = v10;
  v11 = 8 * v10;
  v12 = a1;
  do
  {
    v198[v6 / 8] = (v12 + 21);
    v197[v6 / 8] = v12 + 8276 - 4 * a3;
    v6 += 8;
    v12 += v9;
  }

  while (v11 != v6);
  v13 = v9 * v7;
  v14 = &a1[v9 * v7 + 21];
  v15 = a1[13];
  v16 = a1[6];
  v166 = a1[5];
  v18 = v15 > 4 || v16 != 0;
  MEMORY[0x1EEE9AC00](a1);
  v165 = (&v165 - v19);
  bzero(&v165 - v19, v20);
  v187 = a1;
  v191 = v4;
  v179 = v7;
  v168 = v8;
  v185 = v15;
  if (!v18)
  {
    v189 = v14;
    v195 = 0;
    if (v15)
    {
      v30 = a1[12];
      v31 = 26214;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v21);
      bzero(&v165 - 256, 0x800uLL);
      pitch_downsample(v198, &v165 - 2048, 0x800u, v7);
      v21 = pitch_search(&v165 - 664, &v165 - 1024, 1328, 620, &v195);
      v30 = 720 - v195;
      a1[12] = 720 - v195;
      v31 = 0x7FFF;
    }

    v178 = v31;
    v70 = v186;
    v195 = v30;
    v71 = v192;
    MEMORY[0x1EEE9AC00](v21);
    v73 = &v165 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v73, v72);
    MEMORY[0x1EEE9AC00](v74);
    v182 = &v165;
    v75 = (&v165 - 256);
    bzero(&v165 - 256, 0x800uLL);
    v76 = 0;
    v77 = *(v8 + 64);
    v190 = 2048 - v70;
    v181 = 4 * (2048 - v70);
    v78 = (v71 + v191);
    v188 = v78;
    v169 = v71;
    v173 = (v78 + 3) & 0xFFFFFFFC;
    v193 = v78;
    v177 = vdupq_n_s64(v78 - 1);
    v180 = 2047 - v191;
    v176 = v71 - 1;
    v175 = xmmword_1C382DF30;
    v174 = xmmword_1C382DF40;
    v172 = xmmword_1C378AEF0;
    v171 = xmmword_1C378AF00;
    v170 = 8204 - 4 * v191;
    while (1)
    {
      v79 = 0;
      v80 = v198[v76];
      v81 = 1024;
      do
      {
        *&v75[v79] = vrshrn_high_n_s32(vrshrn_n_s32(*&v80[v81], 0xCuLL), *&v80[v81 + 4], 0xCuLL);
        v81 += 8;
        v79 += 2;
      }

      while (v79 != 256);
      if (!v185)
      {
        _celt_autocorr(&v165 - 2048, &v196, v77, v192, 24, 1024);
        v82.i64[0] = 0xFFFF0000FFFFLL;
        v82.i64[1] = 0xFFFF0000FFFFLL;
        v196 += v196 >> 13;
        v83 = 4;
        v84 = v174;
        v85 = v175;
        do
        {
          v86.i64[0] = (v84.i32[0] * v84.i32[0]);
          v86.i64[1] = (v84.i32[2] * v84.i32[2]);
          v87.i64[0] = (v85.i32[0] * v85.i32[0]);
          v87.i64[1] = (v85.i32[2] * v85.i32[2]);
          v88 = *(&v196 + v83);
          v89 = vuzp1q_s32(v86, v87);
          v90 = vaddq_s32(v89, v89);
          v91 = vshrq_n_u32(vmulq_s32(vandq_s8(v88, v82), v90), 0xFuLL);
          v92 = vmulq_s32(v90, vshrq_n_s32(v88, 0x10uLL));
          *(&v196 + v83) = vsubq_s32(vsubq_s32(v88, vaddq_s32(v92, v92)), v91);
          v93 = vdupq_n_s64(4uLL);
          v85 = vaddq_s64(v85, v93);
          v84 = vaddq_s64(v84, v93);
          v83 += 16;
        }

        while (v83 != 100);
        _celt_lpc(&v189[12 * v76], &v196, 24);
      }

      v94 = 0;
      v95 = v195;
      v96 = 2 * v195;
      if (2 * v195 >= 1024)
      {
        v96 = 1024;
      }

      v97 = v96;
      v98 = 2047 - v96;
      do
      {
        *(&v196 + v94) = (v80[v98--] + 2048) >> 12;
        v94 += 2;
      }

      while (v94 != 48);
      v194 = &v189[12 * v76];
      celt_fir(v182 - v97, v194, v182 - 2 * v97, v97, 24, &v196);
      v99 = 1024 - v97;
      if (v95 < 1)
      {
        v108 = 0;
      }

      else
      {
        v100 = 0;
        v101 = 0;
        v102 = v75 + v99;
        v103 = v97;
        v104 = v102;
        v105 = v97;
        do
        {
          v107 = *v104++;
          v106 = v107;
          if (v101 <= v107)
          {
            v101 = v106;
          }

          if (v100 >= v106)
          {
            v100 = v106;
          }

          --v105;
        }

        while (v105);
        v108 = 0;
        if (v101 <= -v100)
        {
          v109 = -v100;
        }

        else
        {
          v109 = v101;
        }

        if (v109 >= 0x400)
        {
          v110 = 0;
          v111 = 0;
          do
          {
            v113 = *v102++;
            v112 = v113;
            if (v111 <= v113)
            {
              v111 = v112;
            }

            if (v110 >= v112)
            {
              v110 = v112;
            }

            --v103;
          }

          while (v103);
          if (v111 <= -v110)
          {
            v114 = -v110;
          }

          else
          {
            v114 = v111;
          }

          v115 = ((62 - 2 * __clz(v114)) & 0xFFFE) - 20;
          if (v114)
          {
            v108 = v115;
          }

          else
          {
            v108 = -20;
          }
        }
      }

      v116 = (v97 >> 1);
      if (v116 < 1)
      {
        v119 = 1;
        v118 = 1;
      }

      else
      {
        v117 = 1024 - v116;
        v118 = 1;
        v119 = 1;
        do
        {
          v120 = *(v75 + v117);
          v119 += (v120 * v120) >> v108;
          v121 = *(v75 + v99);
          v118 += (v121 * v121) >> v108;
          ++v99;
          ++v117;
          --v116;
        }

        while (v116);
      }

      if (v119 >= v118)
      {
        v122 = v118;
      }

      else
      {
        v122 = v119;
      }

      v123 = frac_div32(v122 >> 1, v118);
      v124 = celt_sqrt(v123);
      memmove(v80, &v80[v186], v181);
      v125 = v188;
      if (v188 < 1)
      {
        v127 = 0;
      }

      else
      {
        v126 = 0;
        v127 = 0;
        v128 = 1024 - v195;
        v129 = (v124 * v178) >> 15;
        v130 = 1024 - v195 - v191 + 1024;
        v131 = &v80[v190];
        v132 = v193;
        do
        {
          v133 = v195;
          if (v126 < v195)
          {
            v133 = 0;
          }

          else
          {
            LOWORD(v129) = (v124 * v129) >> 15;
          }

          v134 = v126 - v133;
          *v131++ = ((v129 * *(v75 + v134 + v128)) >> 3) & 0xFFFFF000;
          v135 = (16 * v80[v130 + v134] + 0x8000) >> 16;
          v127 += (v135 * v135) >> 8;
          v126 = v134 + 1;
          --v132;
        }

        while (v132);
      }

      v136 = 0;
      v137 = v180;
      do
      {
        *(&v196 + v136) = (v80[v137--] + 2048) >> 12;
        v136 += 2;
      }

      while (v136 != 48);
      v138 = v80 + 2048;
      celt_iir(&v80[v183 + 2048], v194, &v80[v183 + 2048], v125, 0x18u, &v196);
      v139 = v193;
      if (v193 < 1)
      {
        if (v127)
        {
          v140 = 0;
LABEL_120:
          if (v127 < v140)
          {
            v150 = frac_div32((v127 >> 1) + 1, v140 + 1);
            v151 = celt_sqrt(v150);
            v152 = 2 * v151;
            v153 = &v80[v190];
            if (v192 >= 1)
            {
              v154 = v169;
              v155 = v77;
              v156 = &v80[v190];
              do
              {
                v157 = *v155++;
                *v156 = ((*v156 >> 15) & 0xFFFFFFFE) * ((((v152 ^ 0xFFFE) * v157) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) + ((((((v152 ^ 0xFFFE) * v157) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) * *v156) >> 15);
                ++v156;
                --v154;
              }

              while (v154);
            }

            v158 = v188;
            if (v191 >= 1)
            {
              v159 = v192;
              do
              {
                v153[v159] = v152 * (v153[v159] >> 16) + ((v153[v159] * v151) >> 15);
                ++v159;
              }

              while (v159 < v158);
            }
          }
        }
      }

      else
      {
        v140 = 0;
        v141 = &v80[v190];
        v142 = v177;
        do
        {
          v143 = *v141++;
          v140 += (((16 * v143 + 0x8000) >> 16) * ((16 * v143 + 0x8000) >> 16)) >> 8;
          --v139;
        }

        while (v139);
        if (v127 > v140 >> 2)
        {
          goto LABEL_120;
        }

        v144 = (v80 + v170);
        v145 = v173;
        v146 = v171;
        v147 = v172;
        do
        {
          v148 = vmovn_s64(vcgeq_u64(v142, v146));
          if (vuzp1_s16(v148, *v146.i8).u8[0])
          {
            *(v144 - 3) = 0;
          }

          if (vuzp1_s16(v148, *&v146).i8[2])
          {
            *(v144 - 2) = 0;
          }

          if (vuzp1_s16(*&v146, vmovn_s64(vcgeq_u64(v142, *&v147))).i32[1])
          {
            *(v144 - 1) = 0;
            *v144 = 0;
          }

          v149 = vdupq_n_s64(4uLL);
          v147 = vaddq_s64(v147, v149);
          v146 = vaddq_s64(v146, v149);
          v144 += 4;
          v145 -= 4;
        }

        while (v145);
      }

      v67 = v187;
      v160 = (v80 + 2048);
      v161 = v192;
      comb_filter(v73, v160, v187[14], v187[14], v192, -*(v187 + 32), -*(v187 + 32), v187[17], v187[17], 0, 0);
      if (v161 > 1)
      {
        v162 = 0;
        v163 = v176;
        do
        {
          v138[v162] = ((*&v73[4 * v162] * *(v77 + 2 * v163)) >> 15) + ((*&v73[4 * v163] * *(v77 + 2 * v162)) >> 15) + 2 * ((*&v73[4 * v163] >> 16) * *(v77 + 2 * v162) + (*&v73[4 * v162] >> 16) * *(v77 + 2 * v163));
          ++v162;
          --v163;
        }

        while (v71 / 2 != v162);
      }

      if (++v76 == v184)
      {
        LODWORD(v4) = v191;
        v69 = v167;
        v7 = v179;
        v65 = v168;
        v68 = v185;
        v56 = v166;
        v66 = v165;
        goto LABEL_132;
      }
    }
  }

  v22 = &v14[12 * v7];
  v23 = v16;
  v24 = a1[7];
  LODWORD(v25) = *(v8 + 12);
  if (v24 < v25)
  {
    LODWORD(v25) = a1[7];
  }

  LODWORD(v188) = v25;
  if (v23 <= v25)
  {
    v25 = v25;
  }

  else
  {
    v25 = v23;
  }

  v183 = v25;
  MEMORY[0x1EEE9AC00](v21);
  v26 = a1;
  v28 = &v165 - v27;
  bzero(&v165 - v27, v29);
  if (v15 <= 4)
  {
    v32 = 0;
    if (v15)
    {
      v33 = -512;
    }

    else
    {
      v33 = -1536;
    }

    v34 = &v26[12 * v7 + 21 + v13] + 2 * v23;
    v35 = 2 * v190;
    v36 = v184;
    do
    {
      if (v23 < v24)
      {
        v37 = v24 - v23;
        v38 = v34;
        do
        {
          *v38++ += v33;
          --v37;
        }

        while (v37);
      }

      ++v32;
      v34 += v35;
    }

    while (v32 != v36);
    v181 = v22;
  }

  else
  {
    v181 = v22 + 4 * v190 + 4 * v190 + 4 * v190;
  }

  v39 = v187[10];
  v189 = v23;
  if (v7 >= 1)
  {
    v40 = 0;
    v41 = 0;
    v42 = v183;
    do
    {
      v43 = v189;
      LODWORD(v190) = v41;
      if (v188 > v189)
      {
        v44 = v41 * v4;
        do
        {
          v45 = *(v193 + 2 * v43);
          v46 = v45 << v194;
          v43 = (v43 + 1);
          v47 = (*(v193 + 2 * v43) - v45) << v194;
          if (v47 >= 1)
          {
            v48 = &v28[2 * v40 + 2 * v46];
            v49 = ((*(v193 + 2 * v43) - v45) << v194);
            do
            {
              v39 = celt_lcg_rand(v39);
              *v48 = v39 >> 20;
              v48 += 2;
              --v49;
            }

            while (v49);
          }

          renormalise_vector(&v28[2 * v46 + 2 * v44], v47, 0x7FFF);
        }

        while (v43 != v42);
      }

      v41 = v190 + 1;
      LODWORD(v4) = v191;
      v40 += v191;
      v7 = v179;
    }

    while (v190 + 1 != v179);
  }

  v187[10] = v39;
  v50 = v194;
  v51 = v28;
  v52 = v165;
  v53 = v183;
  denormalise_bands(v168, v51, v165, v181, v189, v183, v7, 1 << v194);
  v54 = 0;
  v55 = *(v193 + 2 * v53) << v50;
  v56 = v166;
  v57 = v4 / v166;
  v58 = v186;
  v59 = v184;
  v60 = v182;
  do
  {
    v61 = v55;
    if (v56 != 1)
    {
      if (v55 >= v57)
      {
        v61 = v57;
      }

      else
      {
        v61 = v55;
      }
    }

    if (v61 < v4)
    {
      bzero((v52 + 4 * (v61 + v54)), 4 * (~v61 + v4) + 4);
    }

    v54 += v4;
    --v60;
  }

  while (v60);
  v62 = 4 * ((v192 >> 1) - v4 + 2048);
  v63 = v198;
  do
  {
    v64 = *v63++;
    memmove(v64, &v64[4 * v58], v62);
    --v59;
  }

  while (v59);
  v65 = v168;
  compute_inv_mdcts(v168, 0, v52, v197, v7, v194);
  v66 = v52;
  v67 = v187;
  v68 = v185;
  v69 = v167;
LABEL_132:
  result = deemphasis(v197, v69, v4, v7, v56, v65 + 8, (v67 + 19), v66);
  v67[13] = v68 + 1;
  return result;
}

unsigned int *compute_inv_mdcts(unsigned int *result, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v7 = result;
  v8 = result[1];
  v9 = result[10];
  if (a2)
  {
    v10 = result[8];
  }

  else
  {
    v9 <<= a6;
    v10 = result[8] - a6;
    a2 = 1;
  }

  v21 = 0;
  v11 = 0;
  if (a5 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a5;
  }

  v20 = v12;
  v13 = a2;
  v19 = v9 * a2;
  v14 = 4 * v9;
  do
  {
    if (v13 >= 1)
    {
      v15 = 0;
      v16 = (a3 + 4 * v21);
      v17 = v13;
      do
      {
        result = clt_mdct_backward((v7 + 18), v16++, *(a4 + 8 * v11) + v15, *(v7 + 8), v8, v10, v13);
        v15 += v14;
        --v17;
      }

      while (v17);
    }

    ++v11;
    v21 += v19;
  }

  while (v11 != v20);
  return result;
}

uint64_t deemphasis(uint64_t result, _WORD *a2, int a3, unsigned int a4, int a5, __int16 *a6, uint64_t a7, _DWORD *a8)
{
  v8 = 0;
  v9 = 0;
  v10 = *a6;
  v11 = 2 * v10;
  if (a4 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4;
  }

  v13 = 2 * a4;
  do
  {
    v14 = *(a7 + 4 * v8);
    v15 = *(result + 8 * v8);
    if (a5 <= 1)
    {
      v20 = a3;
      v21 = a2;
      if (a3 >= 1)
      {
        do
        {
          v22 = *v15++;
          v23 = v22 + v14;
          v14 = v11 * ((v22 + v14) >> 16) + (((v22 + v14) * v10) >> 15);
          v24 = (v23 + 2048) >> 12;
          if (v24 <= -32768)
          {
            v24 = -32768;
          }

          if (v24 >= 0x7FFF)
          {
            LOWORD(v24) = 0x7FFF;
          }

          *v21 = v24;
          v21 = (v21 + v13);
          --v20;
        }

        while (v20);
      }
    }

    else
    {
      if (a3 >= 1)
      {
        v16 = a3;
        v17 = a8;
        do
        {
          v18 = *v15++;
          v19 = v18 + v14;
          v14 = v11 * ((v18 + v14) >> 16) + (((v18 + v14) * v10) >> 15);
          *v17++ = v19;
          --v16;
        }

        while (v16);
      }

      v9 = 1;
    }

    *(a7 + 4 * v8) = v14;
    if (v9 && a3 / a5 >= 1)
    {
      v25 = (a3 / a5);
      v26 = a8;
      v27 = a2;
      do
      {
        v28 = (*v26 + 2048) >> 12;
        if (v28 <= -32768)
        {
          v28 = -32768;
        }

        if (v28 >= 0x7FFF)
        {
          LOWORD(v28) = 0x7FFF;
        }

        *v27 = v28;
        v27 = (v27 + v13);
        v26 += a5;
        --v25;
      }

      while (v25);
    }

    ++v8;
    ++a2;
  }

  while (v8 != v12);
  return result;
}

uint64_t opus_custom_decoder_ctl(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  result = 4294967291;
  if (a2 > 10007)
  {
    if (a2 <= 10011)
    {
      if (a2 == 10008)
      {
        if ((a9 - 3) >= 0xFFFFFFFE)
        {
          result = 0;
          a1[4] = a9;
          return result;
        }
      }

      else
      {
        if (a2 != 10010)
        {
          return result;
        }

        if ((a9 & 0x80000000) == 0 && a9 < *(*a1 + 8))
        {
          result = 0;
          a1[6] = a9;
          return result;
        }
      }

      return 0xFFFFFFFFLL;
    }

    switch(a2)
    {
      case 10012:
        if (a9 >= 1 && a9 <= *(*a1 + 8))
        {
          result = 0;
          a1[7] = a9;
          return result;
        }

        return 0xFFFFFFFFLL;
      case 10015:
        if (a9)
        {
          result = 0;
          *a9 = *a1;
          return result;
        }

        return 0xFFFFFFFFLL;
      case 10016:
        result = 0;
        a1[8] = a9;
        break;
    }
  }

  else
  {
    if (a2 > 4030)
    {
      if (a2 != 4031)
      {
        if (a2 != 4033)
        {
          if (a2 != 10007)
          {
            return result;
          }

          if (a9)
          {
            result = 0;
            *a9 = a1[11];
            a1[11] = 0;
            return result;
          }

          return 0xFFFFFFFFLL;
        }

        v17 = a9;
        if (a9)
        {
          result = 0;
          v18 = a1[14];
          goto LABEL_37;
        }

        return 0xFFFFFFFFLL;
      }

      v17 = a9;
      if (!a9)
      {
        return 0xFFFFFFFFLL;
      }

      result = 0;
      v18 = a1[10];
LABEL_37:
      *v17 = v18;
      return result;
    }

    if (a2 == 4027)
    {
      v17 = a9;
      if (!a9)
      {
        return 0xFFFFFFFFLL;
      }

      result = 0;
      v18 = a1[2] / a1[5];
      goto LABEL_37;
    }

    if (a2 == 4028)
    {
      v12 = a1[2];
      v11 = a1[3];
      v13 = *(*a1 + 8);
      bzero(a1 + 10, (4 * *(*a1 + 4) + 8240) * v11 + 16 * v13 + 84 - 40);
      if (v13 >= 1)
      {
        LODWORD(v14) = 2 * v13;
        v15 = &a1[12 * v11 + 21 + (v12 + 2048) * v11 + v13];
        v16 = &v15[2 * v13];
        if (2 * v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v14;
        }

        do
        {
          *v16++ = -28672;
          *v15++ = -28672;
          --v14;
        }

        while (v14);
      }

      return 0;
    }
  }

  return result;
}

uint64_t unquant_coarse_energy(uint64_t result, int a2, int a3, uint64_t a4, int a5, uint64_t *a6, unsigned int a7, int a8)
{
  v10 = a2;
  v27 = result;
  v28[1] = *MEMORY[0x1E69E9840];
  v28[0] = 0;
  if (a5)
  {
    v25 = 0;
    v26 = 4915;
  }

  else
  {
    v25 = pred_coef[a8];
    v26 = beta_coef[a8];
  }

  if (a2 < a3)
  {
    v11 = &e_prob_model + 84 * a8 + 42 * a5;
    v12 = 8 * *(a6 + 2) + 32;
    if (a7 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = a7;
    }

    do
    {
      v14 = 0;
      if (v10 >= 20)
      {
        v15 = 20;
      }

      else
      {
        v15 = v10;
      }

      v23 = (2 * v15) | 1;
      v24 = 2 * v15;
      do
      {
        v16 = v12 - *(a6 + 6) - __clz(*(a6 + 8));
        if (v16 < 15)
        {
          if (v16 < 2)
          {
            if (v16 == 1)
            {
              result = -ec_dec_bit_logp(a6, 1);
            }

            else
            {
              result = 0xFFFFFFFFLL;
            }
          }

          else
          {
            v17 = ec_dec_icdf(a6, small_energy_icdf, 2);
            result = -(v17 & 1) ^ (v17 >> 1);
          }
        }

        else
        {
          result = ec_laplace_decode(a6, v11[v24] << 7, v11[v23] << 6);
        }

        v18 = v10 + *(v27 + 8) * v14;
        v19 = *(a4 + 2 * v18);
        if (v19 <= -9216)
        {
          v19 = -9216;
        }

        v20 = *(v28 + v14) + (result << 17);
        v21 = v20 + ((v25 * v19 + 128) >> 8);
        if (v21 <= -3670016)
        {
          v21 = -3670016;
        }

        *(a4 + 2 * v18) = (v21 + 64) >> 7;
        *(v28 + v14++) = v20 - v26 * (4 * result);
      }

      while (v13 != v14);
      ++v10;
    }

    while (v10 != a3);
  }

  return result;
}

uint64_t unquant_fine_energy(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7)
{
  if (a2 < a3)
  {
    v11 = result;
    if (a7 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a7;
    }

    v13 = a2;
    do
    {
      v14 = *(a5 + 4 * v13);
      if (v14 >= 1)
      {
        for (i = 0; i != v12; ++i)
        {
          result = ec_dec_bits(a6, v14);
          v14 = *(a5 + 4 * v13);
          *(a4 + 2 * v13 + 2 * *(v11 + 8) * i) = *(a4 + 2 * v13 + 2 * *(v11 + 8) * i) + (((result << 10) | 0x200) >> v14) - 512;
        }
      }

      ++v13;
    }

    while (v13 != a3);
  }

  return result;
}

uint64_t unquant_energy_finalise(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t *a8, int a9)
{
  v13 = result;
  v14 = 0;
  if (a9 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a9;
  }

  v20 = a2;
  v16 = a3;
  v17 = 1;
  v24 = a3;
  do
  {
    v23 = v17;
    if (a2 < a3 && a7 >= a9)
    {
      v18 = v20;
      v26 = v14;
      do
      {
        if (*(a5 + 4 * v18) <= 7 && *(a6 + 4 * v18) == v14)
        {
          for (i = 0; i != v15; ++i)
          {
            result = ec_dec_bits(a8, 1u);
            *(a4 + 2 * v18 + 2 * *(v13 + 8) * i) += ((result << 10) - 512) >> (*(a5 + 4 * v18) + 1);
          }

          a7 -= v15;
          v16 = v24;
          v14 = v26;
        }

        ++v18;
      }

      while (v18 < v16 && a7 >= a9);
    }

    v17 = 0;
    v14 = 1;
  }

  while ((v23 & 1) != 0);
  return result;
}

uint64_t alg_quant(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v59 = a6;
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v60 = *MEMORY[0x1E69E9840];
  v11 = 2 * a2;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v12, v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57[-v14];
  bzero(&v57[-v14], v16);
  MEMORY[0x1EEE9AC00](v17);
  bzero(v12, v11);
  exp_rotation(a1, v9, 1, v6, v8, v7);
  v18 = 0;
  if (v9 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v9;
  }

  do
  {
    v20 = a1[v18];
    if (v20 <= 0)
    {
      a1[v18] = -v20;
      v21 = -1;
    }

    else
    {
      v21 = 1;
    }

    *&v12[2 * v18] = v21;
    v15[v18] = 0;
    *&v12[2 * v18++] = 0;
  }

  while (v19 != v18);
  if (v8 <= v9 >> 1)
  {
    v27 = 0;
    v28 = 0;
    v34 = v8;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v23 += a1[v22++];
    }

    while (v19 != v22);
    v58 = v6;
    if (v23 <= v8)
    {
      v23 = 0x4000;
      *a1 = 0x4000;
      if (v9 <= 2)
      {
        v24 = 2;
      }

      else
      {
        v24 = v9;
      }

      bzero(a1 + 1, 2 * (v24 - 1));
    }

    v25 = celt_rcp(v23);
    v26 = celt_rcp(v23);
    v27 = 0;
    LOWORD(v28) = 0;
    v29 = ((v25 & 0xFFFF0000 | v26) * (v8 - 1)) >> 16;
    v30 = v19;
    v31 = a1;
    v32 = v15;
    v33 = v12;
    v34 = v8;
    do
    {
      v35 = *v31++;
      v36 = (v29 * v35) >> 15;
      *v32++ = v36;
      v28 = v36 * v36 + v28;
      v27 += v36 * v35;
      *v33++ = 2 * v36;
      v34 -= v36;
      --v30;
    }

    while (v30);
    v6 = v58;
  }

  if (v34 <= v9 + 3)
  {
    if (v34 >= 1)
    {
      for (i = 0; i != v34; ++i)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = 32 - __clz(v8 - v34 + 1 + i);
        v42 = v28 + 1;
        v43 = -32767;
        do
        {
          v44 = (v27 + a1[v38]) >> v41;
          v45 = (2 * v44 * v44) >> 16;
          if (v45 * v40 > v43 * (*&v12[2 * v38] + v42))
          {
            v39 = v38;
            v43 = v45;
            v40 = *&v12[2 * v38] + v42;
          }

          ++v38;
        }

        while (v19 != v38);
        v46 = *&v12[2 * v39];
        v27 += a1[v39];
        *&v12[2 * v39] = v46 + 2;
        v28 = v46 + v42;
        ++v15[v39];
      }
    }
  }

  else
  {
    *v15 += v34;
  }

  for (j = 0; j != v19; ++j)
  {
    v48 = *&v12[2 * j];
    a1[j] *= *&v12[2 * j];
    if (v48 < 0)
    {
      v15[j] = -v15[j];
    }
  }

  encode_pulses(v15, v9, v8, v59);
  if (v6 < 2)
  {
    return 1;
  }

  v50 = 0;
  LODWORD(result) = 0;
  v51 = v9 / v6;
  if (v9 / v6 <= 1)
  {
    v52 = 1;
  }

  else
  {
    v52 = v51;
  }

  v53 = 4 * v51;
  do
  {
    v54 = v15;
    v55 = v52;
    do
    {
      v56 = *v54++;
      result = ((v56 != 0) << v50) | result;
      --v55;
    }

    while (v55);
    ++v50;
    v15 = (v15 + v53);
  }

  while (v50 != v6);
  return result;
}

__int16 *exp_rotation(__int16 *result, int a2, int a3, int a4, int a5, int a6)
{
  if (a2 > 2 * a5 && a6)
  {
    LODWORD(v6) = a4;
    v9 = result;
    v10 = (a2 << 16 >> 1) - a2;
    v11 = a2 + exp_rotation_SPREAD_FACTOR[a6 - 1] * a5;
    v12 = (v10 >> 16) * (celt_rcp(v11) >> 16);
    v13 = ((celt_rcp(v11) * (v10 >> 16)) >> 15) + 2 * v12;
    v14 = (v13 + (((celt_rcp(v11) >> 16) * v10) >> 15));
    v15 = (v14 * v14) >> 16;
    v16 = celt_cos_norm(v15);
    result = celt_cos_norm(v15 ^ 0x7FFF);
    v17 = result;
    if (a2 >= 8 * v6)
    {
      v18 = 0;
      v19 = v6;
      do
      {
        v20 = (v6 >> 2) + v19 * (v18 + 2);
        ++v18;
        v19 += v6;
      }

      while (v20 < a2);
    }

    else
    {
      v18 = 0;
    }

    if (v6 >= 1)
    {
      v21 = a2 / v6;
      v6 = v6;
      while ((a3 & 0x80000000) == 0)
      {
        result = exp_rotation1(v9, v21, 1, v16, -v17);
        if (v18)
        {
          v22 = v9;
          v23 = v21;
          v24 = v18;
          v25 = v17;
          v26 = -v16;
LABEL_15:
          result = exp_rotation1(v22, v23, v24, v25, v26);
        }

        v9 += v21;
        if (!--v6)
        {
          return result;
        }
      }

      if (v18)
      {
        exp_rotation1(v9, v21, v18, v17, v16);
      }

      v22 = v9;
      v23 = v21;
      v24 = 1;
      v25 = v16;
      v26 = v17;
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t alg_unquant(__int16 *a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  v37[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v15 = (v37 - v14);
  bzero(v37 - v14, v16);
  decode_pulses(v15, a2, a3, a6);
  v17 = 0;
  if (a2 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = a2;
  }

  v19 = v18;
  v20 = v15;
  do
  {
    v21 = *v20++;
    v17 += v21 * v21;
    --v19;
  }

  while (v19);
  v22 = 31 - __clz(v17);
  v23 = v22 >> 1;
  LOBYTE(v22) = v22 & 0xFE;
  v24 = v17 >> (v22 - 14);
  v25 = v17 << (14 - v22);
  if (v23 <= 7)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  v27 = celt_rsqrt_norm(v26);
  for (i = 0; i != v18; ++i)
  {
    a1[i] = (((1 << (v23 + 1)) >> 1) + SLOWORD(v15[i]) * ((2 * a7 * v27 + 0x8000) >> 16)) >> (v23 + 1);
  }

  exp_rotation(a1, a2, -1, a5, a3, a4);
  if (a5 < 2)
  {
    return 1;
  }

  v30 = 0;
  LODWORD(result) = 0;
  v31 = a2 / a5;
  if (a2 / a5 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = 4 * v31;
  do
  {
    v34 = v15;
    v35 = v32;
    do
    {
      v36 = *v34++;
      result = ((v36 != 0) << v30) | result;
      --v35;
    }

    while (v35);
    ++v30;
    v15 = (v15 + v33);
  }

  while (v30 != a5);
  return result;
}

uint64_t renormalise_vector(__int16 *a1, int a2, int a3)
{
  v4 = a2;
  v5 = a1;
  v6 = 1;
  if (a2 >= 1)
  {
    v7 = a2;
    v8 = a1;
    do
    {
      v9 = *v8++;
      v6 += v9 * v9;
      --v7;
    }

    while (v7);
  }

  v10 = __clz(v6);
  v11 = (v10 >> 1) ^ 0xF;
  v12 = v6 >> (2 * ((v10 >> 1) ^ 0xF) - 14);
  v13 = v6 << (14 - 2 * v11);
  if (v11 <= 7)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  result = celt_rsqrt_norm(v14);
  if (v4 >= 1)
  {
    do
    {
      *v5 = (((2 << v11) >> 1) + ((2 * a3 * result + 0x8000) >> 16) * *v5) >> (v11 + 1);
      ++v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t stereo_itheta(__int16 *a1, __int16 *a2, int a3, unsigned int a4)
{
  if (a3)
  {
    if (a4 >= 1)
    {
      v4 = a4;
      LODWORD(v5) = 1;
      LODWORD(v6) = 1;
      do
      {
        v8 = *a1++;
        v7 = v8;
        v9 = v8 >> 1;
        v10 = *a2++;
        v6 = (v6 + ((v10 >> 1) + (v7 >> 1)) * ((v10 >> 1) + (v7 >> 1)));
        v5 = (v5 + (v9 - (v10 >> 1)) * (v9 - (v10 >> 1)));
        --v4;
      }

      while (v4);
      goto LABEL_11;
    }

LABEL_10:
    v6 = 1;
    v5 = 1;
    goto LABEL_11;
  }

  if (a4 < 1)
  {
    goto LABEL_10;
  }

  v11 = a4;
  LODWORD(v5) = 1;
  LODWORD(v6) = 1;
  do
  {
    v13 = *a1++;
    v12 = v13;
    v14 = *a2++;
    v6 = (v6 + v12 * v12);
    v5 = (v5 + v14 * v14);
    --v11;
  }

  while (v11);
LABEL_11:
  v15 = celt_sqrt(v6);
  v16 = celt_sqrt(v5);
  v17 = v16;
  if (v16 >= v15)
  {
    v24 = v15 >> 1;
    v25 = v24 * (celt_rcp(v16) >> 16);
    v26 = ((celt_rcp(v17) * v24) >> 15) + 2 * v25;
    v27 = v26 + (((celt_rcp(v17) >> 16) * ((v15 & 1) << 15)) >> 15);
    if (v27 >= 0x7FFF)
    {
      LOWORD(v27) = 0x7FFF;
    }

    v23 = 25736 - (((((((((9872 * v27 - 782663680) >> 16) * 2 * v27 - 1343488) >> 16) * 2 * v27 + 2147450880) >> 16) * v27 + 0x4000) >> 15) >> 1);
  }

  else
  {
    v18 = v16;
    v19 = v16 >> 1;
    v20 = v19 * (celt_rcp(v15) >> 16);
    v21 = ((celt_rcp(v15) * v19) >> 15) + 2 * v20;
    v22 = v21 + (((celt_rcp(v15) >> 16) * ((v18 & 1) << 15)) >> 15);
    if (v22 >= 0x7FFF)
    {
      LOWORD(v22) = 0x7FFF;
    }

    v23 = ((((((((9872 * v22 - 782663680) >> 16) * 2 * v22 - 1343488) >> 16) * 2 * v22 + 2147450880) >> 16) * v22 + 0x4000) >> 15 << 16) >> 17;
  }

  return ((20861 * v23) >> 15);
}

__int16 *exp_rotation1(__int16 *result, int a2, int a3, int a4, int a5)
{
  v5 = a2 - a3;
  if (a2 - a3 >= 1)
  {
    v6 = result;
    do
    {
      v7 = *v6;
      v8 = v6[a3];
      v6[a3] = (v7 * a5 + v8 * a4) >> 15;
      *v6++ = (v7 * a4 - v8 * a5) >> 15;
      --v5;
    }

    while (v5);
  }

  v9 = ~(2 * a3) + a2;
  if (v9 >= 0)
  {
    v10 = &result[v9];
    v11 = a2 - 2 * a3;
    do
    {
      v12 = *v10;
      v13 = v10[a3];
      v10[a3] = (v12 * a5 + v13 * a4) >> 15;
      *v10-- = (v12 * a4 - v13 * a5) >> 15;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t isqrt32(unsigned int a1)
{
  LODWORD(result) = 0;
  v3 = (31 - __clz(a1)) >> 1;
  v4 = 1 << v3;
  do
  {
    v5 = (v4 + 2 * result) << v3;
    if (v5 <= a1)
    {
      v6 = v4;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    a1 -= v5;
    result = v6 + result;
    v4 >>= 1;
  }

  while (v3-- > 0);
  return result;
}

uint64_t frac_div32(int a1, unsigned int a2)
{
  v2 = __clz(a2);
  v3 = v2 - 2;
  v4 = 2 - v2;
  if (a2 >> 30)
  {
    v5 = a1 >> v4;
  }

  else
  {
    v5 = a1 << v3;
  }

  v6 = a2 >> v4;
  v7 = a2 << v3;
  if (a2 >> 30)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = ((celt_rcp((v8 + 0x8000) >> 16) << 13) + 0x8000) >> 16;
  v10 = ((v5 >> 15) & 0xFFFFFFFE) * v9 + ((v9 * v5) >> 15);
  v11 = (((v5 >> 15) & 0xFFFE) * v9 + ((v9 * v5) >> 15)) * (v8 >> 16);
  v12 = v10 + 8 * v9 * ((((v5 + 2) >> 2) - 2 * (v8 >> 16) * (v10 >> 16) - ((((v10 >> 16) * v8) >> 15) + (v11 >> 15))) >> 16) + 4 * (((((v5 + 2) >> 2) - 2 * HIWORD(v8) * HIWORD(v10) - ((((v10 >> 16) * v8) >> 15) + (v11 >> 15))) * v9) >> 15);
  v13 = 4 * v12;
  if (v12 < -536870911)
  {
    v13 = -2147483647;
  }

  if (v12 <= 0x1FFFFFFF)
  {
    return v13;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t celt_rcp(unsigned int a1)
{
  v1 = __clz(a1);
  v2 = a1 >> (16 - v1);
  if (!HIWORD(a1))
  {
    LOWORD(v2) = a1 << (v1 - 16);
  }

  v3 = v2 ^ 0xFFFF8000;
  v4 = ((-30840 * v3 + 2021130240) >> 16) - ((((((-30840 * v3 + 2021130240) >> 16) ^ 0x8000) + ((((-30840 * v3 + 2021130240) >> 16) * v3) >> 15)) * ((-30840 * v3 + 2021130240) >> 16)) >> 15);
  v5 = (v4 - ((2 * v4 * ((v4 ^ 0x8000) + ((v4 * v3) >> 15)) + 0x10000) >> 16));
  v6 = v5 << (v1 - 15);
  v7 = v5 >> (15 - v1);
  if (a1 >= 0x20000)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t celt_rsqrt_norm(__int16 a1)
{
  v1 = a1 ^ 0xFFFF8000;
  v2 = 2 * v1 * ((13426 * v1 - 884080640) >> 16) + 1543831552;
  v3 = ((2 * ((((((v2 >> 16) * (v2 >> 16)) >> 15) * v1) >> 15) + (((v2 >> 16) * (v2 >> 16)) >> 15))) ^ 0x8000);
  return (((((((24576 * v3 - 0x40000000) >> 16) * v3) >> 15) * (v2 >> 16)) >> 15) + HIWORD(v2));
}

uint64_t celt_sqrt(uint64_t result)
{
  if (result)
  {
    if (result <= 0x3FFFFFFF)
    {
      v1 = __clz(result);
      v2 = (v1 >> 1) ^ 0xF;
      v3 = result >> (2 * (8 - (v1 >> 1)));
      if (v2 <= 7)
      {
        LOWORD(v3) = result << (-2 * (8 - (v1 >> 1)));
      }

      v4 = (2 * (v3 ^ 0xFFFF8000) * (((((2 * (v3 ^ 0xFFFF8000) * (((-1328 * (v3 ^ 0xFFFF8000)) >> 16) + 1699) - 197328896) >> 16) * (v3 ^ 0xFFFF8000)) >> 15) + 11561) + 1518796800) >> 16;
      v5 = v4 >> ((v1 >> 1) - 1);
      v6 = v4 << (1 - (v1 >> 1));
      if (v2 >= 0xE)
      {
        return v6;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      return 0x7FFFLL;
    }
  }

  return result;
}

uint64_t celt_cos_norm(int a1)
{
  if ((a1 & 0x1FFFFu) <= 0x10000)
  {
    v1 = a1 & 0x1FFFF;
  }

  else
  {
    v1 = 0x20000 - (a1 & 0x1FFFF);
  }

  if ((v1 & 0x7FFF) != 0)
  {
    if (v1 >> 15)
    {
      v4 = ((-65536 * v1) >> 15) * -v1 + 0x8000;
      v5 = ((((2 * (v4 >> 16) * (((2147483022 * (v4 >> 16) + 0x4000) >> 15) + 8277) - 501383168) >> 16) * (v4 >> 16) + 0x4000) >> 15) - (v4 >> 16);
      if (v5 < 0)
      {
        return ((v5 ^ 0x7FFF) + 1);
      }

      else
      {
        return -32767;
      }
    }

    else
    {
      v2 = ((((2 * ((2 * v1 * v1 + 0x8000) >> 16) * (((2147483022 * ((2 * v1 * v1 + 0x8000) >> 16) + 0x4000) >> 15) + 8277) - 501383168) >> 16) * ((2 * v1 * v1 + 0x8000) >> 16) + 0x4000) >> 15) - ((2 * v1 * v1 + 0x8000) >> 16);
      if (v2 < 0)
      {
        return (v2 ^ 0x8000);
      }

      else
      {
        return 0x7FFF;
      }
    }
  }

  else
  {
    if ((v1 & 0x10000) != 0)
    {
      v3 = -32767;
    }

    else
    {
      v3 = 0x7FFF;
    }

    if ((v1 & 0x8000) != 0)
    {
      return 0;
    }
  }

  return v3;
}

void _celt_lpc(_WORD *a1, signed int *a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (a3 >= 1)
  {
    bzero(v25, 4 * a3);
  }

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = -4;
    do
    {
      if (v8 == (a3 & ~(a3 >> 31)))
      {
        break;
      }

      v10 = 0;
      if (v8)
      {
        v11 = v25;
        v12 = v7;
        do
        {
          v13 = *v11++;
          v10 += 2 * (v13 >> 16) * (*(a2 + v12) >> 16) + ((*(a2 + v12) * (v13 >> 16)) >> 15) + (((*(a2 + v12) >> 16) * v13) >> 15);
          v12 -= 4;
        }

        while (v12);
        v10 *= 8;
      }

      v14 = -frac_div32((a2[v8 + 1] + v10) & 0xFFFFFFF8, v6);
      v25[v8] = v14 >> 3;
      v15 = v14 >> 16;
      if (v8)
      {
        v16 = 0;
        v17 = 2 * v15;
        v14 = v14;
        v18 = v9;
        do
        {
          v19 = v25[v16];
          v20 = *(v25 + v18);
          v25[v16] = v19 + v17 * (v20 >> 16) + ((v20 * v15) >> 15) + (((v20 >> 16) * v14) >> 15);
          *(v25 + v18) = v20 + v17 * (v19 >> 16) + ((v19 * v15) >> 15) + (((v19 >> 16) * v14) >> 15);
          ++v16;
          v18 -= 4;
        }

        while (v16 < (v8 + 1) >> 1);
      }

      else
      {
        v17 = 2 * v15;
        v14 = v14;
      }

      v21 = v17 * v15 + 2 * ((v15 * v14) >> 15);
      v6 = v6 - 2 * (v6 >> 16) * (v21 >> 16) - ((((v21 >> 16) * v6) >> 15) + (((v21 & 0xFFFE) * (v6 >> 16)) >> 15));
      v7 += 4;
      v9 += 4;
      ++v8;
    }

    while (v6 >= *a2 >> 10);
  }

  if (a3 >= 1)
  {
    v22 = a3;
    v23 = v25;
    do
    {
      v24 = *v23++;
      *a1++ = (v24 + 0x8000) >> 16;
      --v22;
    }

    while (v22);
  }
}

uint64_t celt_fir(__int16 *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _WORD *a6)
{
  v7 = a5;
  v61 = *MEMORY[0x1E69E9840];
  v12 = 2 * a5;
  MEMORY[0x1EEE9AC00](a1);
  v14 = (&v55 - v13);
  bzero(&v55 - v13, v12);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v55 - v16;
  bzero(&v55 - v16, v17);
  if (v7 >= 1)
  {
    v21 = (a2 + 2 * v7 - 2);
    v22 = v7;
    v23 = v14;
    do
    {
      v24 = *v21--;
      *v23++ = v24;
      --v22;
    }

    while (v22);
    v25 = &a6[v7 - 1];
    v26 = v7;
    v27 = v59;
    do
    {
      v28 = *v25--;
      *v27++ = v28;
      --v26;
    }

    while (v26);
  }

  v29 = a4 - 1;
  if (a4 >= 1)
  {
    memcpy(&v59[v12], a1, (2 * a4));
  }

  if (v7 >= 1)
  {
    v30 = v7;
    do
    {
      *a6++ = a1[v29--];
      --v30;
    }

    while (v30);
  }

  v56 = v7;
  v57 = a3;
  v58 = a4;
  v31 = 0;
  if (a4 >= 4)
  {
    v32 = a1 + 2;
    v33 = (a3 + 4);
    v34 = v59;
    do
    {
      v60 = 0uLL;
      xcorr_kernel(v14, v34, &v60, v7, v18, v19, v20);
      v35 = v60.i32[1];
      v36 = *(v32 - 2) + ((v60.i32[0] + 2048) >> 12);
      if (v36 <= -32768)
      {
        v36 = -32768;
      }

      if (v36 >= 0x7FFF)
      {
        LOWORD(v36) = 0x7FFF;
      }

      *(v33 - 2) = v36;
      v37 = *(v32 - 1) + ((v35 + 2048) >> 12);
      if (v37 <= -32768)
      {
        v37 = -32768;
      }

      if (v37 >= 0x7FFF)
      {
        LOWORD(v37) = 0x7FFF;
      }

      *(v33 - 1) = v37;
      v38 = v60.i32[3];
      v39 = *v32 + ((v60.i32[2] + 2048) >> 12);
      if (v39 <= -32768)
      {
        v39 = -32768;
      }

      if (v39 >= 0x7FFF)
      {
        LOWORD(v39) = 0x7FFF;
      }

      *v33 = v39;
      v40 = v32[1] + ((v38 + 2048) >> 12);
      if (v40 <= -32768)
      {
        v40 = -32768;
      }

      if (v40 >= 0x7FFF)
      {
        LOWORD(v40) = 0x7FFF;
      }

      v33[1] = v40;
      v31 += 4;
      v32 += 4;
      v34 += 4;
      v33 += 4;
    }

    while (a4 - 3 > v31);
  }

  result = v58;
  v43 = v56;
  v42 = v57;
  if (v31 < v58)
  {
    v44 = v31;
    v45 = &v59[2 * v31];
    do
    {
      if (v7 < 1)
      {
        v53 = 0;
      }

      else
      {
        v46 = 0;
        v47 = v43;
        v48 = v14;
        v49 = v45;
        do
        {
          v51 = *v48++;
          v50 = v51;
          v52 = *v49;
          v49 += 2;
          v46 += v52 * v50;
          --v47;
        }

        while (v47);
        v53 = (v46 + 2048) >> 12;
      }

      v54 = v53 + a1[v44];
      if (v54 <= -32768)
      {
        v54 = -32768;
      }

      if (v54 >= 0x7FFF)
      {
        LOWORD(v54) = 0x7FFF;
      }

      *(v42 + 2 * v44++) = v54;
      v45 += 2;
    }

    while (v44 < result);
  }

  return result;
}

const __int16 *xcorr_kernel(const __int16 *result, __int16 *a2, int32x4_t *a3, int a4, double a5, double a6, int32x2_t a7)
{
  a7.i16[0] = *a2;
  a7.i16[2] = a2[1];
  v7 = a2 + 3;
  v8 = a2[2];
  if (a4 < 4)
  {
    v27 = 0;
    v11 = 0;
    v28 = *a2;
    v29 = a2[1];
  }

  else
  {
    v9 = 0;
    v10 = *a3;
    v11 = a4 & 0x7FFFFFFC;
    do
    {
      *v12.i8 = vshr_n_s32(vshl_n_s32(a7, 0x10uLL), 0x10uLL);
      v13 = result + 2;
      v14 = result + 3;
      v15 = result + 4;
      v16 = *v7;
      v7 += 4;
      v17 = v16;
      v18 = vmovl_s16(v16);
      v20 = vld1_dup_s16(result);
      v19 = result + 1;
      v12.i32[2] = v8;
      v12.i32[3] = v18.i32[0];
      v21 = vmlaq_s32(v10, vmovl_s16(v20), v12);
      v22 = vld1_dup_s16(v19);
      v23 = vextq_s8(v12, vtrn2q_s32(v18, v12), 4uLL);
      v24 = vmlaq_s32(v21, vmovl_s16(v22), v23);
      v25 = vld1_dup_s16(v13);
      v26 = vmlaq_s32(v24, vmovl_s16(v25), vtrn2q_s32(v23, vuzp1q_s32(v23, v18)));
      *v23.i8 = vld1_dup_s16(v14);
      v10 = vmlal_s16(v26, *v23.i8, v16);
      v9 += 4;
      v8 = v16.i16[3];
      a7.i32[0] = v16.u16[1];
      a7.i32[1] = v16.u16[2];
      result = v15;
    }

    while (v9 < a4 - 3);
    v27 = v17.i16[0];
    *a3 = v10;
    v28 = v17.i16[1];
    result = v15;
    v29 = v17.i16[2];
  }

  v30 = v11 | 1;
  if (v11 < a4)
  {
    v32 = *result++;
    v31 = v32;
    v33 = *v7++;
    v27 = v33;
    v34 = a3->i32[1] + v31 * v29;
    a3->i32[0] += v31 * v28;
    a3->i32[1] = v34;
    v35 = a3->i32[2] + v31 * v8;
    v36 = a3->i32[3] + v33 * v31;
    a3->i32[2] = v35;
    a3->i32[3] = v36;
  }

  v37 = v11 | 2;
  v38 = v27;
  if (v30 < a4)
  {
    v40 = *result++;
    v39 = v40;
    v41 = *v7++;
    v28 = v41;
    v42 = a3->i32[1] + v39 * v8;
    a3->i32[0] += v39 * v29;
    a3->i32[1] = v42;
    v43 = a3->i32[2] + v39 * v38;
    v44 = a3->i32[3] + v41 * v39;
    a3->i32[2] = v43;
    a3->i32[3] = v44;
  }

  if (v37 < a4)
  {
    v45 = *result;
    v46 = a3->i32[1];
    v47 = *v7;
    a3->i32[0] += v45 * v8;
    a3->i32[1] = v46 + v45 * v38;
    v48 = a3->i32[3] + v47 * v45;
    a3->i32[2] += v45 * v28;
    a3->i32[3] = v48;
  }

  return result;
}

void celt_iir(int32x4_t *a1, __int16 *a2, uint64_t a3, uint64_t a4, unsigned int a5, _WORD *a6)
{
  v11 = a1;
  v66 = *MEMORY[0x1E69E9840];
  v12 = a5;
  MEMORY[0x1EEE9AC00](a1);
  v14 = (&v59 - v13);
  bzero(&v59 - v13, v15);
  v16 = a5 + a4;
  MEMORY[0x1EEE9AC00](v17);
  v63 = (&v59 - v18);
  bzero(&v59 - v18, v19);
  v22 = a5;
  if (a5 < 1)
  {
    v32 = 0;
    v29 = v63;
  }

  else
  {
    v23 = &a2[v12 - 1];
    v24 = a5;
    v25 = v14;
    do
    {
      v26 = *v23--;
      *v25++ = v26;
      --v24;
    }

    while (v24);
    v27 = &a6[v12 - 1];
    v28 = a5;
    v29 = v63;
    v30 = v63;
    do
    {
      v31 = *v27--;
      *v30++ = -v31;
      --v28;
    }

    while (v28);
    v32 = a5;
  }

  if (v32 < v16)
  {
    bzero(v63 + (2 * v32), 2 * (v16 + ~v32) + 2);
    v29 = v63;
  }

  v62 = v12;
  if (a4 < 4)
  {
    LODWORD(v33) = 0;
  }

  else
  {
    v33 = 0;
    v60 = a4;
    v61 = a3;
    v64 = (a4 - 3);
    v34 = &v29[v62 + 2];
    v35 = (a3 + 8);
    v59 = v11;
    v36 = v11;
    v37 = v29;
    do
    {
      v38 = *v36++;
      v65 = v38;
      xcorr_kernel(v14, v37, &v65, a5, *v38.i64, v20, v21);
      v39 = v65.i64[0];
      v40 = -((16 * v65.i32[0] + 0x8000) >> 16);
      *(v34 - 2) = v40;
      v41 = *a2;
      v42 = HIDWORD(v39) + v40 * v41;
      v43 = -((16 * v42 + 0x8000) >> 16);
      *(v35 - 2) = v39;
      *(v35 - 1) = v42;
      *(v34 - 1) = v43;
      v44 = a2[1];
      v45 = v65.i32[2] + v43 * v41 + v44 * v40;
      v46 = v65.i32[3] + v43 * v44 + -((16 * v45 + 0x8000) >> 16) * v41;
      v47 = a2[2];
      *v34 = -((16 * v45 + 0x8000) >> 16);
      v48 = v46 + v47 * v40;
      v33 += 4;
      v34[1] = -((16 * v48 + 0x8000) >> 16);
      *v35 = v45;
      v35[1] = v48;
      v35 += 4;
      v34 += 4;
      v37 += 4;
    }

    while (v33 < v64);
    LODWORD(a4) = v60;
    a3 = v61;
    v11 = v59;
    v29 = v63;
  }

  if (v33 < a4)
  {
    v49 = v33;
    v50 = &v29[v62];
    do
    {
      v51 = v11->i32[v49];
      if (a5 >= 1)
      {
        v52 = &v29[v49];
        v53 = a5;
        v54 = v14;
        do
        {
          v56 = *v54++;
          v55 = v56;
          v57 = *v52++;
          v51 -= v57 * v55;
          --v53;
        }

        while (v53);
      }

      v50[v49] = (v51 + 2048) >> 12;
      *(a3 + 4 * v49++) = v51;
    }

    while (v49 != a4);
  }

  if (a5 >= 1)
  {
    v58 = a4 - 1;
    do
    {
      *a6++ = *(a3 + 4 * v58--);
      --v22;
    }

    while (v22);
  }
}

uint64_t _celt_autocorr(char *a1, unsigned int *a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  v46[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v13 = v46 - v12;
  bzero(v46 - v12, v14);
  if (a4)
  {
    v15 = a6 - 1;
    if (a6 >= 1)
    {
      memcpy(v13, a1, (2 * a6));
    }

    v16 = v13;
    if (a4 >= 1)
    {
      v17 = 0;
      do
      {
        v18 = *(a3 + v17);
        *&v13[v17] = (v18 * *&a1[v17]) >> 15;
        *&v13[2 * v15] = (*&a1[2 * v15] * v18) >> 15;
        --v15;
        v17 += 2;
      }

      while (2 * a4 != v17);
      v16 = v13;
    }
  }

  else
  {
    v16 = a1;
  }

  v19 = (a6 << 7) | 1;
  if (a6)
  {
    v19 += (*v16 * *v16) >> 9;
  }

  v20 = a6 - a5;
  v21 = a6;
  if (a6 >= 2)
  {
    v22 = a6 & 1;
    v23 = &v16[2 * v22 + 2];
    do
    {
      v19 += ((*(v23 - 1) * *(v23 - 1)) >> 9) + ((*v23 * *v23) >> 9);
      v22 += 2;
      v23 += 4;
    }

    while (v22 < a6);
  }

  if (v19 < 0x400000)
  {
    v29 = 0;
    v13 = v16;
  }

  else
  {
    v24 = __clz(v19);
    v25 = ((11 - v24 + (((11 - v24) & 0x80) >> 7)) << 24) >> 25;
    if (a6 >= 1)
    {
      v26 = a6;
      v27 = v13;
      do
      {
        v28 = *v16;
        v16 += 2;
        *v27 = (((1 << v25) >> 1) + v28) >> v25;
        v27 += 2;
        --v26;
      }

      while (v26);
    }

    v29 = (2 * v25);
  }

  v30 = (a5 + 1);
  celt_pitch_xcorr_c(v13, v13, a2, v20, a5 + 1);
  if ((a5 & 0x80000000) == 0)
  {
    v31 = 0;
    v32 = 0;
    v33 = a5;
    v34 = v21 - v20;
    do
    {
      if (v32 >= v34)
      {
        v35 = 0;
      }

      else
      {
        v35 = 0;
        v36 = &v13[2 * v31 + 2 * v20];
        v37 = &v13[2 * v20];
        v38 = v33;
        do
        {
          v40 = *v37;
          v37 += 2;
          v39 = v40;
          v41 = *v36;
          v36 += 2;
          v35 += v41 * v39;
          --v38;
        }

        while (v38);
      }

      a2[v32++] += v35;
      ++v20;
      --v31;
      --v33;
    }

    while (v32 != v30);
  }

  v42 = *a2;
  if (!v29)
  {
    *a2 = ++v42;
  }

  if (v42 > 0xFFFFFFF)
  {
    if (v42 >> 29)
    {
      if (v42 >> 30)
      {
        v44 = 2;
      }

      else
      {
        v44 = 1;
      }

      if ((a5 & 0x80000000) == 0)
      {
        do
        {
          *a2 = *a2 >> v44;
          ++a2;
          --v30;
        }

        while (v30);
      }

      return (v44 + v29);
    }
  }

  else
  {
    v43 = __clz(v42) - 3;
    if ((a5 & 0x80000000) == 0)
    {
      do
      {
        *a2++ <<= v43;
        --v30;
      }

      while (v30);
    }

    return v29 - v43;
  }

  return v29;
}

void pitch_downsample(int **a1, char *a2, unsigned int a3, int a4)
{
  v4 = a2;
  v51 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  if (a3 < 1)
  {
    if (a4 != 2)
    {
      v19 = 0;
      v7 = 0;
      goto LABEL_28;
    }

    v7 = 0;
    v14 = 0;
    v13 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = a3;
    v9 = *a1;
    v10 = a3;
    do
    {
      v12 = *v9++;
      v11 = v12;
      if (v7 <= v12)
      {
        v7 = v11;
      }

      if (v6 >= v11)
      {
        v6 = v11;
      }

      --v10;
    }

    while (v10);
    if (v7 <= -v6)
    {
      v7 = -v6;
    }

    if (a4 != 2)
    {
      v19 = 0;
      goto LABEL_28;
    }

    v13 = 0;
    v14 = 0;
    v15 = a1[1];
    do
    {
      v17 = *v15++;
      v16 = v17;
      if (v14 <= v17)
      {
        v14 = v16;
      }

      if (v13 >= v16)
      {
        v13 = v16;
      }

      --v8;
    }

    while (v8);
  }

  if (v14 <= -v13)
  {
    v18 = -v13;
  }

  else
  {
    v18 = v14;
  }

  if (v7 <= v18)
  {
    v7 = v18;
  }

  v19 = 1;
LABEL_28:
  if (v7 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v7;
  }

  v21 = __clz(v20) ^ 0x1F;
  if (v21 <= 0xA)
  {
    LOBYTE(v21) = 10;
  }

  v22 = v19 + v21 - 10;
  v23 = (a3 >> 1);
  if (v23 >= 2)
  {
    v24 = v5 + 3;
    v25 = a2 + 2;
    v26 = v23 - 1;
    do
    {
      *v25 = (*(v24 - 1) + ((*v24 + *(v24 - 2)) >> 1)) >> 1 >> v22;
      v25 += 2;
      v24 += 2;
      --v26;
    }

    while (v26);
  }

  v27 = (*v5 + (v5[1] >> 1)) >> 1 >> v22;
  *a2 = v27;
  if (v19)
  {
    v28 = a1[1];
    if (v23 >= 2)
    {
      v29 = v28 + 3;
      v30 = a2 + 2;
      v31 = v23 - 1;
      do
      {
        *v30 += (*(v29 - 1) + ((*v29 + *(v29 - 2)) >> 1)) >> 1 >> v22;
        v30 += 2;
        v29 += 2;
        --v31;
      }

      while (v31);
    }

    *a2 = ((*v28 + (v28[1] >> 1)) >> 1 >> v22) + v27;
  }

  _celt_autocorr(a2, &v49, 0, 0, 4, v23);
  v49 += v49 >> 13;
  v50 = vsubq_s32(vmlaq_s32(v50, vshrq_n_s32(v50, 0x10uLL), xmmword_1C382E110), vshrq_n_u32(vmull_u16(vmovn_s32(v50), 0x20001200080002), 0xFuLL));
  _celt_lpc(&v45, &v49, 4);
  v32 = 0;
  LOWORD(v33) = 0x7FFF;
  do
  {
    v33 = (29491 * v33) >> 15;
    *(&v45 + v32) = (v33 * *(&v45 + v32)) >> 15;
    v32 += 2;
  }

  while (v32 != 8);
  if (v23 >= 1)
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = (v45 + 3277);
    v40 = (v46 + ((26214 * v45) >> 15));
    v41 = (v47 + ((26214 * v46) >> 15));
    v42 = (v48 + ((26214 * v47) >> 15));
    v43 = (52428 * v48) >> 16;
    do
    {
      v44 = v35 * v42 + v34 * v43 + v36 * v41 + v37 * v40;
      v34 = v35;
      v35 = v36;
      v36 = v37;
      v37 = v38;
      v38 = *v4;
      *v4 += (v44 + v37 * v39 + 2048) >> 12;
      v4 += 2;
      --v23;
    }

    while (v23);
  }
}