size_t ZSTD_compressSeqStore_singleBlock(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4, uint64_t a5, size_t a6, char *a7, size_t a8, int a9, int a10)
{
  v46 = *a3;
  v47 = *(a3 + 2);
  if (a10)
  {
    v13 = *a2;
    v14 = a2[1] - *a2;
    v15 = v14 >> 3;
    if (*(a2 + 18) == 1)
    {
      LODWORD(v15) = *(a2 + 19);
    }

    if ((v14 >> 3))
    {
      v16 = (v14 >> 3);
      v15 = v15;
      do
      {
        v19 = v15-- != 0;
        v20 = *(v13 + 4) == 0 && v19;
        v21 = *v13;
        v22 = *v13 - 1;
        if (v22 > 2)
        {
          v26 = *v13;
          if (v21 >= 4)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v23 = v22 + v20;
          if (v22 + v20 == 3)
          {
            v24 = *a3 - 1;
            v25 = *a4 - 1;
          }

          else
          {
            v24 = *(a3 + v23);
            v25 = a4[v23];
          }

          v26 = *v13;
          if (v24 != v25)
          {
            v26 = v25 + 3;
            *v13 = v25 + 3;
            if ((v25 + 3) >= 4)
            {
LABEL_20:
              *(a3 + 4) = *a3;
              v27 = v26 - 3;
              goto LABEL_29;
            }
          }
        }

        v28 = v26 - (v20 ^ 1);
        if (!v28)
        {
          goto LABEL_30;
        }

        if (v28 == 3)
        {
          v29 = *a3;
          v27 = *a3 - 1;
        }

        else
        {
          v27 = *(a3 + v28);
          v29 = *a3;
        }

        if (v28 == 1)
        {
          v30 = a3 + 1;
        }

        else
        {
          v30 = (a3 + 4);
        }

        *(a3 + 2) = *v30;
        *(a3 + 1) = v29;
LABEL_29:
        *a3 = v27;
LABEL_30:
        if (v21 >= 4)
        {
          *(a4 + 1) = *a4;
          v17 = v21 - 3;
        }

        else
        {
          v31 = v22 + v20;
          if (!(v22 + v20))
          {
            goto LABEL_8;
          }

          if (v31 == 3)
          {
            v32 = *a4;
            v17 = *a4 - 1;
          }

          else
          {
            v17 = a4[v31];
            v32 = *a4;
          }

          if (v31 == 1)
          {
            v33 = a4 + 2;
          }

          else
          {
            v33 = a4 + 1;
          }

          a4[2] = *v33;
          a4[1] = v32;
        }

        *a4 = v17;
LABEL_8:
        v13 += 8;
        --v16;
      }

      while (v16);
    }
  }

  if (a6 < 3)
  {
    return -70;
  }

  result = ZSTD_entropyCompressSeqStore(a2, *(a1 + 3200), *(a1 + 3208), (a1 + 232), (a5 + 3), a6 - 3, a8, *(a1 + 3520), *(a1 + 8));
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (result <= 0x18 && *(a1 + 944) == 0)
    {
      v40 = result;
      if (ZSTD_isRLE(a7, a8))
      {
        result = 1;
      }

      else
      {
        result = v40;
      }
    }

    if (*(a1 + 912))
    {
      result = ZSTD_copyBlockSequences((a1 + 912), a2, &v46);
      if (result <= 0xFFFFFFFFFFFFFF88)
      {
        result = 0;
        *(a1 + 3200) = vextq_s8(*(a1 + 3200), *(a1 + 3200), 8uLL);
      }

      return result;
    }

    if (result == 1)
    {
      if (a6 == 3)
      {
        return -70;
      }

      v42 = *a7;
      v43 = a9 + 8 * a8 + 2;
      *a5 = v43;
      *(a5 + 2) = BYTE2(v43);
      *(a5 + 3) = v42;
      *a3 = v46;
      *(a3 + 2) = v47;
      result = 4;
    }

    else
    {
      if (!result)
      {
        if (a8 + 3 <= a6)
        {
          v41 = a9 + 8 * a8;
          *a5 = v41;
          *(a5 + 2) = BYTE2(v41);
          memcpy((a5 + 3), a7, a8);
          result = a8 + 3;
          if (a8 + 3 > 0xFFFFFFFFFFFFFF88)
          {
            return result;
          }

          *a3 = v46;
          *(a3 + 2) = v47;
          goto LABEL_61;
        }

        return -70;
      }

      *(a1 + 3200) = vextq_s8(*(a1 + 3200), *(a1 + 3200), 8uLL);
      v44 = a9 + 8 * result + 4;
      *a5 = v44;
      *(a5 + 2) = BYTE2(v44);
      result += 3;
    }

LABEL_61:
    v45 = *(a1 + 3200);
    if (*(v45 + 5604) == 2)
    {
      *(v45 + 5604) = 1;
    }
  }

  return result;
}

uint64_t ZSTD_entropyCompressSeqStore(uint64_t *a1, _DWORD *a2, char *__dst, _DWORD *a4, _BYTE *a5, size_t a6, size_t a7, uint32x4_t *a8, int a9)
{
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3] - v11;
  v62 = *a1;
  if (v10 == *a1)
  {
    v13 = 8;
  }

  else
  {
    v13 = 8 * (v12 / ((v10 - *a1) >> 3) > 0x13);
  }

  v63 = a8[13].i64 + 4;
  v14 = a4[18];
  v60 = a1[1];
  v61 = (v10 - v62) >> 3;
  v59 = v10 - v62;
  if (v14 == 1)
  {
    v15 = a6;
    v16 = a4[7];
  }

  else
  {
    if (v14 == 2)
    {
      v15 = a6;
      v16 = a4[7];
      v17 = 0;
      goto LABEL_11;
    }

    v16 = a4[7];
    v15 = a6;
    if (v16 == 1)
    {
      v17 = a4[6] == 0;
      goto LABEL_11;
    }
  }

  v17 = 1;
LABEL_11:
  v55 = a1[4];
  v56 = a1[6];
  v54 = a1[5];
  if (v12 <= 0x3FF)
  {
    v18 = 3;
  }

  else
  {
    v18 = 4;
  }

  if ((v12 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = v18;
  }

  memcpy(__dst, a2, 0x810uLL);
  if (!v17)
  {
    if (v12 <= 0x1F)
    {
      LODWORD(v25) = 1;
    }

    else
    {
      LODWORD(v25) = 2;
    }

    if (v12 <= 0xFFF)
    {
      v25 = v25;
    }

    else
    {
      v25 = (v25 + 1);
    }

    v26 = v12 + v25;
    v27 = v15;
    if (v12 + v25 > v15)
    {
      goto LABEL_89;
    }

    v22 = v16;
    if (v25 != 3)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  v21 = a2[514];
  v22 = v16;
  v23 = 9 - v16;
  if ((9 - v16) >= 3)
  {
    v23 = 3;
  }

  v24 = 8 << v23;
  if (v21 == 2)
  {
    v24 = 6;
  }

  if (v24 > v12)
  {
    if (v12 <= 0x1F)
    {
      LODWORD(v25) = 1;
    }

    else
    {
      LODWORD(v25) = 2;
    }

    if (v12 <= 0xFFF)
    {
      v25 = v25;
    }

    else
    {
      v25 = (v25 + 1);
    }

    v26 = v12 + v25;
    v27 = v15;
    if (v12 + v25 > v15)
    {
      goto LABEL_89;
    }

LABEL_30:
    if (v25 != 3)
    {
LABEL_31:
      v28 = a5;
      if (v25 == 2)
      {
        *a5 = (16 * v12) | 4;
      }

      else
      {
        *a5 = 8 * v12;
      }

LABEL_78:
      memcpy(&v28[v25], v11, v12);
      if (v26 <= 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_79;
      }

      goto LABEL_125;
    }

LABEL_41:
    v28 = a5;
    *a5 = (16 * v12) | 0xC;
    goto LABEL_78;
  }

  v27 = v15;
  v29 = v15 - v19;
  if (v15 <= v19)
  {
    goto LABEL_89;
  }

  if (v16 >= 4 || v12 >= 0x401)
  {
    v31 = 0;
  }

  else
  {
    v31 = 4;
  }

  if (v16 <= 7)
  {
    v32 = 6;
  }

  else
  {
    v32 = v16 - 1;
  }

  v33 = v31 | (2 * (v16 > 7)) | v13;
  if (a9)
  {
    ++v33;
  }

  LODWORD(v67) = a2[514];
  v36 = v21 == 2 && v19 == 3 || v12 < 0x100;
  v28 = a5;
  if (v36)
  {
    v37 = HUF_compress1X_repeat(&a5[v19], v29, v11, v12, 255, 11, v63, 8708uLL, __dst, &v67, v33);
  }

  else
  {
    v37 = HUF_compress4X_repeat(&a5[v19], v29, v11, v12, 255u, 11u, v63, 8708uLL, __dst, &v67, v33);
  }

  if (v67)
  {
    v38 = 3;
  }

  else
  {
    v38 = 2;
  }

  if (v37 - 1 > 0xFFFFFFFFFFFFFF87 || v37 >= v12 - (v12 >> v32) - 2)
  {
    memcpy(__dst, a2, 0x810uLL);
    if (v12 <= 0x1F)
    {
      LODWORD(v25) = 1;
    }

    else
    {
      LODWORD(v25) = 2;
    }

    if (v12 <= 0xFFF)
    {
      v25 = v25;
    }

    else
    {
      v25 = (v25 + 1);
    }

    v26 = v12 + v25;
    if (v12 + v25 > v27)
    {
      goto LABEL_89;
    }

    goto LABEL_30;
  }

  if (v37 == 1)
  {
    if (v12 > 7 || v12 <= 1 || (v39 = *v11, v11[1] == v39) && (v12 == 2 || v11[2] == v39 && (v12 == 3 || v11[3] == v39 && (v12 == 4 || v11[4] == v39 && (v12 == 5 || v11[5] == v39 && (v12 == 6 || v11[6] == v39))))))
    {
      memcpy(__dst, a2, 0x810uLL);
      v26 = ZSTD_compressRleLiteralsBlock(a5, v11, v12);
      goto LABEL_79;
    }
  }

  if (!v67)
  {
    *(__dst + 514) = 1;
  }

  if (v19 == 5)
  {
    *a5 = ((v37 << 22) + 16 * v12) | v38 | 0xC;
    a5[4] = v37 >> 10;
  }

  else if (v19 == 4)
  {
    *a5 = ((v37 << 18) + 16 * v12) | v38 | 8;
  }

  else
  {
    if (v36)
    {
      v49 = 4;
    }

    else
    {
      v49 = 0;
    }

    v50 = ((v38 | v49 | (16 * v12)) ^ 4) + (v37 << 14);
    *a5 = v50;
    a5[2] = BYTE2(v50);
  }

  v26 = v37 + v19;
  if (v26 <= 0xFFFFFFFFFFFFFF88)
  {
LABEL_79:
    if ((v27 - v26) >= 4)
    {
      v40 = &v28[v26];
      if (v61 > 0x7F)
      {
        v43 = a2;
        if (v61 >> 8 > 0x7E)
        {
          *v40 = -1;
          *(v40 + 1) = (v59 >> 3) - 32512;
          v41 = v40 + 3;
        }

        else
        {
          *v40 = BYTE1(v61) | 0x80;
          v40[1] = v59 >> 3;
          v41 = v40 + 2;
        }

        v42 = __dst;
      }

      else
      {
        *v40 = v59 >> 3;
        v41 = v40 + 1;
        v43 = a2;
        v42 = __dst;
      }

      if (v60 == v62)
      {
        memcpy(v42 + 2064, v43 + 516, 0xDE0uLL);
        v26 = v41 - v28;
        if (v41 == v28)
        {
          return v26;
        }
      }

      else
      {
        v44 = v41 + 1;
        v69 = 0;
        v67 = 0u;
        v68 = 0u;
        v45 = v42;
        ZSTD_buildSequencesStatistics(&v67, a1, v61, (v43 + 516), v42 + 516, v41 + 1, &v28[v27], v22, a8, v63);
        v26 = v68;
        if (v68 < 0xFFFFFFFFFFFFFF89)
        {
          *v41 = (v67 << 6) + 16 * BYTE4(v67) + 4 * BYTE8(v67);
          v46 = *(&v68 + 1);
          v47 = &v44[v26];
          v48 = ZSTD_encodeSequences(v47, &v28[v27] - v47, v45 + 1418, v54, v45 + 1032, v56, v45 + 2144, v55, v62, v61, v69);
          v26 = v48;
          if (v48 <= 0xFFFFFFFFFFFFFF88)
          {
            if (v46 && v48 + v46 < 4)
            {
              return 0;
            }

            v26 = v47 + v48 - v28;
            if (!v26)
            {
              return v26;
            }
          }
        }
      }

      goto LABEL_125;
    }

LABEL_89:
    if (a7 <= v27)
    {
      return 0;
    }

    else
    {
      return -70;
    }
  }

LABEL_125:
  if (a7 <= v27 && v26 == -70)
  {
    return 0;
  }

  if (v26 <= 0xFFFFFFFFFFFFFF88)
  {
    v51 = a4[7];
    if (v51 <= 7)
    {
      v52 = 6;
    }

    else
    {
      v52 = v51 - 1;
    }

    if (v26 >= a7 - (a7 >> v52) - 2)
    {
      return 0;
    }
  }

  return v26;
}

uint64_t ZSTD_copyBlockSequences(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = (v4 - *a2) >> 3;
  v6 = v5 + 1;
  v7 = a1[2];
  if (v5 + 1 > a1[3] - v7)
  {
    return -70;
  }

  v10 = a2[2];
  v9 = a2[3];
  v11 = a1[1] + 16 * v7;
  v29 = *a3;
  v30 = *(a3 + 2);
  if (v4 != v3)
  {
    v12 = 0;
    v13 = *(a2 + 19);
    v14 = v29;
    v15 = HIDWORD(v29);
    if (v5 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v5;
    }

    v17 = v30;
    v18 = (v3 + 6);
    v19 = v11 + 8;
    while (1)
    {
      v21 = *(v18 - 1);
      v22 = *v18;
      *(v19 - 4) = v21;
      *v19 = (v22 + 3);
      if (v13)
      {
        goto LABEL_14;
      }

      v26 = *(a2 + 18);
      if (v26 == 2)
      {
        break;
      }

      v23 = v21;
      if (v26 == 1)
      {
        v23 = v21 | 0x10000;
        *(v19 - 4) = v21 | 0x10000;
      }

LABEL_15:
      v24 = *(v18 - 3);
      if (v24 - 1 > 2)
      {
        v20 = v24 - 3;
        *(v19 - 8) = v24 - 3;
        if (v24 > 3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        *(v19 + 4) = v24;
        if (v23)
        {
          v25 = *(&v29 + v24 - 1);
        }

        else if (v24 == 3)
        {
          v25 = v14 - 1;
        }

        else
        {
          v25 = *(&v29 + v24);
        }

        *(v19 - 8) = v25;
      }

      v27 = v24 - (v21 != 0);
      switch(v27)
      {
        case 0u:
          goto LABEL_12;
        case 3u:
          v20 = v14 - 1;
          break;
        case 1u:
          v15 = v17;
          break;
        default:
          v20 = *(&v29 + v27);
          break;
      }

LABEL_11:
      HIDWORD(v29) = v14;
      v30 = v15;
      v17 = v15;
      v15 = v14;
      v14 = v20;
      LODWORD(v29) = v20;
LABEL_12:
      v18 += 4;
      v12 += v23;
      --v13;
      v19 += 16;
      if (!--v16)
      {
        goto LABEL_32;
      }
    }

    *v19 = v22 + 65539;
LABEL_14:
    v23 = v21;
    goto LABEL_15;
  }

  v12 = 0;
LABEL_32:
  v28 = v11 + 16 * v5;
  *(v28 + 4) = (v9 - (v12 + v10));
  *v28 = 0;
  a1[2] = v6 + v7;
  return 0;
}

unint64_t ZSTD_buildSequencesStatistics(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _DWORD *a5, char *a6, uint64_t a7, unsigned int a8, uint32x4_t *a9, uint64_t a10)
{
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 32);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v16 = *(a2 + 8) - *a2;
  if ((v16 & 0x7FFFFFFF8) != 0)
  {
    v17 = (v16 >> 3);
    v18 = (*a2 + 6);
    v19 = v15;
    v20 = v14;
    v21 = v13;
    do
    {
      v23 = *(v18 - 1);
      if (v23 < 0x40)
      {
        LOBYTE(v24) = ZSTD_LLcode_LL_Code_36107[*(v18 - 1)];
      }

      else
      {
        v24 = 50 - __clz(v23);
      }

      v25 = __clz(*(v18 - 3));
      v22 = *v18;
      *v19 = v24;
      *v20 = 31 - v25;
      if (v22 >= 0x80)
      {
        v22 = 67 - __clz(v22);
      }

      else
      {
        LOBYTE(v22) = ZSTD_MLcode_ML_Code_36109[v22];
      }

      v18 += 4;
      *v21++ = v22;
      ++v20;
      v19 = (v19 + 1);
      --v17;
    }

    while (v17);
  }

  v26 = *(a2 + 72);
  if (v26 == 1)
  {
    *(v15 + *(a2 + 76)) = 35;
    v26 = *(a2 + 72);
  }

  if (v26 == 2)
  {
    v13[*(a2 + 76)] = 52;
  }

  *(a1 + 32) = 0;
  v96 = 35;
  v90 = v14;
  v91 = a3;
  v89 = v13;
  if (a3 <= 0x5DB)
  {
    a9[7] = 0u;
    a9[8] = 0u;
    a9[5] = 0u;
    a9[6] = 0u;
    a9[3] = 0u;
    a9[4] = 0u;
    a9[1] = 0u;
    a9[2] = 0u;
    *a9 = 0u;
    if (!a3)
    {
      v30 = a1;
      v29 = 0;
      v33 = 0;
      goto LABEL_34;
    }

    v27 = v15;
    do
    {
      v28 = *v27;
      v27 = (v27 + 1);
      ++a9->i32[v28];
    }

    while (v27 < (v15 + a3));
    LODWORD(v29) = 36;
    do
    {
      v29 = (v29 - 1);
    }

    while (!a9->i32[v29]);
    if (v29 >= 7)
    {
      v31 = (v29 + 1) & 0x1FFFFFFF8;
      v37 = v31;
      v38 = a9 + 1;
      v39 = 0uLL;
      v40 = 0uLL;
      do
      {
        v39 = vmaxq_u32(v38[-1], v39);
        v40 = vmaxq_u32(*v38, v40);
        v38 += 2;
        v37 -= 8;
      }

      while (v37);
      v30 = a1;
      v32 = vmaxvq_u32(vmaxq_u32(v39, v40));
      if (v29 + 1 == v31)
      {
LABEL_33:
        v33 = v32;
        goto LABEL_34;
      }
    }

    else
    {
      v30 = a1;
      v31 = 0;
      v32 = 0;
    }

    v41 = v29 - v31 + 1;
    v42 = &a9->i32[v31];
    do
    {
      v44 = *v42++;
      v43 = v44;
      if (v44 > v32)
      {
        v32 = v43;
      }

      --v41;
    }

    while (v41);
    goto LABEL_33;
  }

  v30 = a1;
  if ((a10 & 3) != 0)
  {
    v33 = -1;
    v29 = 35;
  }

  else
  {
    v34 = a3;
    v35 = a8;
    v36 = HIST_count_parallel_wksp(a9, &v96, v15, v34, 0, a10);
    a8 = v35;
    a3 = v91;
    v33 = v36;
    v29 = v96;
  }

LABEL_34:
  a5[887] = *(a4 + 3548);
  v45 = a4;
  v46 = (a4 + 2224);
  v47 = a8;
  v48 = ZSTD_selectEncodingType(a5 + 887, a9, v29, v33, a3, 9u, v46, LL_defaultNorm, 6, 1, a8);
  v49 = a3;
  v50 = v48;
  *v30 = v48;
  result = ZSTD_buildCTable(a6, a7 - a6, a5 + 1112, 9u, v48, a9, v29, v15, v49, LL_defaultNorm, 6, 35, v46, 0x524uLL, a10);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    *(v30 + 16) = result;
    return result;
  }

  if (v50 == 2)
  {
    *(v30 + 24) = result;
  }

  v52 = &a6[result];
  v95 = 31;
  v53 = v47;
  if (v91 > 0x5DB)
  {
    v54 = v45;
    if ((a10 & 3) == 0)
    {
      v63 = HIST_count_parallel_wksp(a9, &v95, v90, v91, 0, a10);
      v58 = v95;
      v56 = a5;
      v59 = v30;
      v60 = v90;
      goto LABEL_59;
    }

    v63 = -1;
    v58 = 31;
LABEL_49:
    v56 = a5;
    v59 = v30;
    v60 = v90;
    goto LABEL_59;
  }

  a9[6] = 0u;
  a9[7] = 0u;
  a9[4] = 0u;
  a9[5] = 0u;
  a9[2] = 0u;
  a9[3] = 0u;
  *a9 = 0u;
  a9[1] = 0u;
  v54 = v45;
  if (!v91)
  {
    v58 = 0;
    v63 = 0;
    goto LABEL_49;
  }

  v55 = v90;
  v56 = a5;
  do
  {
    v57 = *v55;
    v55 = (v55 + 1);
    ++a9->i32[v57];
  }

  while (v55 < (v90 + v91));
  LODWORD(v58) = 32;
  v59 = v30;
  do
  {
    v58 = (v58 - 1);
  }

  while (!a9->i32[v58]);
  v60 = v90;
  if (v58 < 7)
  {
    v61 = 0;
    v62 = 0;
    goto LABEL_54;
  }

  v61 = (v58 + 1) & 0x1FFFFFFF8;
  v64 = v61;
  v65 = a9 + 1;
  v66 = 0uLL;
  v67 = 0uLL;
  do
  {
    v66 = vmaxq_u32(v65[-1], v66);
    v67 = vmaxq_u32(*v65, v67);
    v65 += 2;
    v64 -= 8;
  }

  while (v64);
  v62 = vmaxvq_u32(vmaxq_u32(v66, v67));
  if (v58 + 1 != v61)
  {
LABEL_54:
    v68 = v58 - v61 + 1;
    v69 = &a9->i32[v61];
    do
    {
      v71 = *v69++;
      v70 = v71;
      if (v71 > v62)
      {
        v62 = v70;
      }

      --v68;
    }

    while (v68);
  }

  v63 = v62;
LABEL_59:
  v56[885] = *(v54 + 3540);
  v72 = ZSTD_selectEncodingType(v56 + 885, a9, v58, v63, v91, 8u, v54, OF_defaultNorm, 5, v58 < 0x1D, v53);
  *(v59 + 4) = v72;
  result = ZSTD_buildCTable(v52, a7 - v52, v56, 8u, v72, a9, v58, v60, v91, OF_defaultNorm, 5, 28, v54, 0x304uLL, a10);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
LABEL_86:
    *(v59 + 16) = result;
    return result;
  }

  if (v72 == 2)
  {
    *(v59 + 24) = result;
  }

  v73 = &v52[result];
  v94 = 52;
  if (v91 <= 0x5DB)
  {
    a9[13].i32[0] = 0;
    a9[11] = 0u;
    a9[12] = 0u;
    a9[9] = 0u;
    a9[10] = 0u;
    a9[7] = 0u;
    a9[8] = 0u;
    a9[5] = 0u;
    a9[6] = 0u;
    a9[3] = 0u;
    a9[4] = 0u;
    a9[1] = 0u;
    a9[2] = 0u;
    *a9 = 0u;
    if (!v91)
    {
      v76 = 0;
      v79 = 0;
      goto LABEL_82;
    }

    v74 = v89;
    do
    {
      v75 = *v74;
      v74 = (v74 + 1);
      ++a9->i32[v75];
    }

    while (v74 < (v89 + v91));
    LODWORD(v76) = 53;
    do
    {
      v76 = (v76 - 1);
    }

    while (!a9->i32[v76]);
    if (v76 >= 7)
    {
      v77 = (v76 + 1) & 0x1FFFFFFF8;
      v80 = v77;
      v81 = a9 + 1;
      v82 = 0uLL;
      v83 = 0uLL;
      do
      {
        v82 = vmaxq_u32(v81[-1], v82);
        v83 = vmaxq_u32(*v81, v83);
        v81 += 2;
        v80 -= 8;
      }

      while (v80);
      v78 = vmaxvq_u32(vmaxq_u32(v82, v83));
      if (v76 + 1 == v77)
      {
LABEL_81:
        v79 = v78;
        goto LABEL_82;
      }
    }

    else
    {
      v77 = 0;
      v78 = 0;
    }

    v84 = v76 - v77 + 1;
    v85 = &a9->i32[v77];
    do
    {
      v87 = *v85++;
      v86 = v87;
      if (v87 > v78)
      {
        v78 = v86;
      }

      --v84;
    }

    while (v84);
    goto LABEL_81;
  }

  if ((a10 & 3) != 0)
  {
    v79 = -1;
    v76 = 52;
  }

  else
  {
    v79 = HIST_count_parallel_wksp(a9, &v94, v89, v91, 0, a10);
    v76 = v94;
  }

LABEL_82:
  v56[886] = *(v54 + 3544);
  v88 = ZSTD_selectEncodingType(v56 + 886, a9, v76, v79, v91, 9u, (v54 + 772), ML_defaultNorm, 6, 1, v53);
  *(v59 + 8) = v88;
  result = ZSTD_buildCTable(v73, a7 - v73, v56 + 386, 9u, v88, a9, v76, v89, v91, ML_defaultNorm, 6, 52, (v54 + 772), 0x5ACuLL, a10);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_86;
  }

  if (v88 == 2)
  {
    *(v59 + 24) = result;
  }

  *(v59 + 16) = &v73[result] - a6;
  return result;
}

unint64_t ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(uint64_t *a1, uint64_t a2)
{
  result = ZSTD_buildBlockEntropyStats(a1, *(a2 + 3200), *(a2 + 3208), (a2 + 232), a2 + 4912, *(a2 + 3520));
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    return result;
  }

  v5 = a1[2];
  v6 = a1[3] - v5;
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[4];
  v11 = *a1;
  v10 = a1[1];
  v12 = (v10 - *a1) >> 3;
  v13 = *(a2 + 3208);
  v14 = *(a2 + 3520);
  v15 = *(a2 + 4912);
  v221 = 255;
  v16 = 3;
  if (v6 > 0x3FF)
  {
    v16 = 4;
  }

  if ((v6 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = v16;
  }

  if ((v15 - 2) >= 2)
  {
    if (v15)
    {
      v6 = v15 == 1;
    }

    goto LABEL_26;
  }

  v217 = v17;
  v18 = v13;
  v19 = v6;
  v20 = v12;
  v21 = v6;
  v22 = v10;
  v23 = v11;
  v24 = HIST_count_wksp(v14, &v221, v5, v19, v14);
  v11 = v23;
  v10 = v22;
  v6 = v21;
  v12 = v20;
  v13 = v18;
  if (v24 > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_26;
  }

  if ((v221 & 0x80000000) == 0)
  {
    v25 = v221 + 1;
    if (v221 >= 7)
    {
      v26 = v25 & 0xFFFFFFF8;
      v29 = (v14 + 16);
      v30 = (v18 + 20);
      v31 = 0uLL;
      v32.i64[0] = 255;
      v32.i64[1] = 255;
      v33 = v26;
      v34 = 0uLL;
      v4 = 0uLL;
      v35 = 0uLL;
      do
      {
        v36 = v30[-2];
        v37 = v30[-1];
        v38 = *v30;
        v39 = v30[1];
        v30 += 4;
        v40 = v29[-1];
        v41 = vuzp1q_s32(vandq_s8(v36, v32), vandq_s8(v37, v32));
        v42 = vuzp1q_s32(vandq_s8(v38, v32), vandq_s8(v39, v32));
        v34 = vmlal_high_u32(v34, v41, v40);
        v31 = vmlal_u32(v31, *v41.i8, *v40.i8);
        v35 = vmlal_high_u32(v35, v42, *v29);
        v4 = vmlal_u32(v4, *v42.i8, *v29->i8);
        v29 += 2;
        v33 -= 8;
      }

      while (v33);
      v27 = vaddvq_s64(vaddq_s64(vaddq_s64(v4, v31), vaddq_s64(v35, v34)));
      if (v26 == v25)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v43 = v25 - v26;
    v44 = (v14 + 4 * v26);
    v45 = &v18[4 * v26 + 4];
    do
    {
      v47 = *v45;
      v45 += 4;
      v46 = v47;
      v48 = *v44++;
      v27 += v46 * v48;
      --v43;
    }

    while (v43);
LABEL_20:
    v28 = v27 >> 3;
    goto LABEL_21;
  }

  v28 = 0;
LABEL_21:
  if (v15 == 2)
  {
    v28 += *(a2 + 5048);
  }

  if (v6 >= 0x100)
  {
    v28 += 6;
  }

  v6 = v217 + v28;
LABEL_26:
  v49 = *(a2 + 5060);
  v50 = (v8 + v12);
  v221 = 31;
  if (v12 > 0x5DB)
  {
    if ((v14 & 3) != 0)
    {
      goto LABEL_37;
    }

    v218 = v13;
    v70 = v12;
    v71 = v12;
    v72 = v6;
    v73 = v10;
    v74 = v11;
    HIST_count_parallel_wksp(v14, &v221, v8, v70, 0, v14);
    v11 = v74;
    v10 = v73;
    v6 = v72;
    v12 = v71;
    v13 = v218;
    if (v49 == 1)
    {
      goto LABEL_58;
    }
  }

  else
  {
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 80) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *v14 = 0u;
    *(v14 + 16) = 0u;
    if (v10 != v11)
    {
      v51 = v8;
      do
      {
        v52 = *v51;
        v51 = (v51 + 1);
        ++*(v14 + 4 * v52);
      }

      while (v51 < v50);
      LODWORD(v53) = 32;
      do
      {
        v53 = (v53 - 1);
      }

      while (!*(v14 + 4 * v53));
      v221 = v53;
      if (v53 >= 7)
      {
        v54 = (v53 + 1) & 0x1FFFFFFF8;
        do
        {
          v54 -= 8;
        }

        while (v54);
      }

LABEL_37:
      if (v49 == 1)
      {
        goto LABEL_58;
      }

      goto LABEL_38;
    }

    v221 = 0;
    if (v49 == 1)
    {
      goto LABEL_58;
    }
  }

LABEL_38:
  if (!v49)
  {
    if (v221 + 1 > 1)
    {
      v55 = v221 + 1;
    }

    else
    {
      v55 = 1;
    }

    if (v221 + 1 >= 2)
    {
      v76 = 0;
      v77 = 0;
      v56 = v55 & 0xFFFFFFFE;
      v78 = (v14 + 4);
      v79 = &word_182B0C3A6;
      v80 = v56;
      do
      {
        v81 = *(v79 - 1);
        v83 = *v79;
        v79 += 2;
        v82 = v83;
        if (v81 == 0xFFFF)
        {
          LOWORD(v81) = 1;
        }

        if (v82 == 0xFFFF)
        {
          LOWORD(v82) = 1;
        }

        v76 += (kInverseProbabilityLog256[8 * (v81 & 0x1FFFFFFF)] * *(v78 - 1));
        v77 += (kInverseProbabilityLog256[8 * (v82 & 0x1FFFFFFF)] * *v78);
        v78 += 2;
        v80 -= 2;
      }

      while (v80);
      v57 = v77 + v76;
      if (v56 == v55)
      {
LABEL_71:
        v75 = v57 >> 8;
        if (v12 >= 1)
        {
          goto LABEL_72;
        }

        goto LABEL_89;
      }
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }

    v84 = v55 - v56;
    v85 = (v14 + 4 * v56);
    v86 = &OF_defaultNorm[v56];
    do
    {
      v88 = *v86++;
      v87 = v88;
      if (v88 == 0xFFFF)
      {
        v87 = 1;
      }

      v89 = *v85++;
      v57 += (kInverseProbabilityLog256[8 * (v87 & 0x1FFFFFFF)] * v89);
      --v84;
    }

    while (v84);
    goto LABEL_71;
  }

  if ((v49 & 0xFFFFFFFE) != 2)
  {
LABEL_58:
    v75 = 0;
    if (v12 >= 1)
    {
      goto LABEL_72;
    }

    goto LABEL_89;
  }

  v58 = v13[1032];
  if (v13[1032])
  {
    v59 = 1 << (v58 - 1);
  }

  else
  {
    v59 = 1;
  }

  if (v221 > v13[1033])
  {
LABEL_54:
    v69 = 10 * v12;
    goto LABEL_90;
  }

  v60 = 0;
  v61 = v221 + 1;
  v62 = &v13[2 * v59 + 1036];
  v63 = v14;
  do
  {
    v65 = *v62;
    v62 += 4;
    v64 = v65;
    v67 = *v63++;
    v66 = v67;
    if (v67)
    {
      v68 = ((HIWORD(v64) + 1) << 8) - ((((HIWORD(v64) + 1) << 24) - ((v64 + (1 << v58)) << 8)) >> v58);
      if (v68 >= (v58 << 8) + 256)
      {
        goto LABEL_54;
      }

      v60 += v66 * v68;
    }

    --v61;
  }

  while (v61);
  v75 = v60 >> 8;
  if (v12 >= 1)
  {
LABEL_72:
    v90 = v8 + v12;
    if (v8 + v12 <= v8 + 1)
    {
      v90 = v8 + 1;
    }

    v91 = v90 - v8;
    if (v91 >= 4)
    {
      if (v91 < 0x10)
      {
        v92 = 0;
LABEL_81:
        v108 = v91 & 0xFFFFFFFFFFFFFFFCLL;
        v109 = 0uLL;
        v110 = v75;
        v111 = v92 - (v91 & 0xFFFFFFFFFFFFFFFCLL);
        v112 = (v8 + v92);
        v113.i64[0] = 255;
        v113.i64[1] = 255;
        do
        {
          v114 = *v112++;
          v4.i32[0] = v114;
          v115 = vmovl_u16(*&vmovl_u8(*v4.i8));
          v116.i64[0] = v115.u32[0];
          v116.i64[1] = v115.u32[1];
          v117 = vandq_s8(v116, v113);
          v116.i64[0] = v115.u32[2];
          v116.i64[1] = v115.u32[3];
          v4 = vandq_s8(v116, v113);
          v109 = vaddq_s64(v109, v4);
          v110 = vaddq_s64(v110, v117);
          v111 += 4;
        }

        while (v111);
        v75 = vaddvq_s64(vaddq_s64(v110, v109));
        if (v91 == v108)
        {
          goto LABEL_89;
        }

        v8 = (v8 + v108);
        goto LABEL_88;
      }

      v92 = v91 & 0xFFFFFFFFFFFFFFF0;
      v93 = 0uLL;
      v94 = v75;
      v4.i32[1] = -255;
      v95 = v8;
      v96 = v91 & 0xFFFFFFFFFFFFFFF0;
      v97 = 0uLL;
      v98 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      do
      {
        v103 = *v95++;
        v104 = vqtbl1q_s8(v103, xmmword_182B08DC0);
        v105 = vqtbl1q_s8(v103, xmmword_182B08DD0);
        v106 = vqtbl1q_s8(v103, xmmword_182B08DE0);
        v107 = vqtbl1q_s8(v103, xmmword_182B08DF0);
        v93 = vaddw_high_u32(v93, v105);
        v98 = vaddw_high_u32(v98, v104);
        v97 = vaddw_u32(v97, *v104.i8);
        v94 = vaddw_u32(v94, *v105.i8);
        v99 = vaddw_u32(v99, *v106.i8);
        v100 = vaddw_high_u32(v100, v106);
        v101 = vaddw_u32(v101, *v107.i8);
        v102 = vaddw_high_u32(v102, v107);
        v96 -= 16;
      }

      while (v96);
      v75 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v94, v99), vaddq_s64(v97, v101)), vaddq_s64(vaddq_s64(v93, v100), vaddq_s64(v98, v102))));
      if (v91 == v92)
      {
        goto LABEL_89;
      }

      if ((v91 & 0xC) != 0)
      {
        goto LABEL_81;
      }

      v8 = (v8 + v92);
    }

    do
    {
LABEL_88:
      v118 = *v8;
      v8 = (v8 + 1);
      v75 += v118;
    }

    while (v8 < v50);
  }

LABEL_89:
  v69 = v75 >> 3;
LABEL_90:
  v119 = *(a2 + 5056);
  v120 = (v9 + v12);
  v221 = 35;
  if (v12 > 0x5DB)
  {
    if ((v14 & 3) == 0)
    {
      v140 = v13;
      v141 = v12;
      v219 = v69;
      v142 = v12;
      v143 = v6;
      v144 = v10;
      v145 = v11;
      HIST_count_parallel_wksp(v14, &v221, v9, v141, 0, v14);
      v11 = v145;
      v10 = v144;
      v6 = v143;
      v12 = v142;
      v69 = v219;
      v13 = v140;
      if (v119 == 1)
      {
        goto LABEL_122;
      }

      goto LABEL_102;
    }
  }

  else
  {
    *(v14 + 112) = 0u;
    *(v14 + 128) = 0u;
    *(v14 + 80) = 0u;
    *(v14 + 96) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *v14 = 0u;
    if (v10 == v11)
    {
      v221 = 0;
      if (v119 == 1)
      {
        goto LABEL_122;
      }

      goto LABEL_102;
    }

    v121 = v9;
    do
    {
      v122 = *v121;
      v121 = (v121 + 1);
      ++*(v14 + 4 * v122);
    }

    while (v121 < v120);
    LODWORD(v123) = 36;
    do
    {
      v123 = (v123 - 1);
    }

    while (!*(v14 + 4 * v123));
    v221 = v123;
    if (v123 >= 7)
    {
      v124 = (v123 + 1) & 0x1FFFFFFF8;
      do
      {
        v124 -= 8;
      }

      while (v124);
    }
  }

  if (v119 == 1)
  {
    goto LABEL_122;
  }

LABEL_102:
  if (!v119)
  {
    if (v221 + 1 > 1)
    {
      v125 = v221 + 1;
    }

    else
    {
      v125 = 1;
    }

    if (v221 + 1 >= 2)
    {
      v147 = 0;
      v148 = 0;
      v126 = v125 & 0xFFFFFFFE;
      v149 = (v14 + 4);
      v150 = &word_182B0C35E;
      v151 = v126;
      do
      {
        v152 = *(v150 - 1);
        v154 = *v150;
        v150 += 2;
        v153 = v154;
        if (v152 == 0xFFFF)
        {
          LOWORD(v152) = 1;
        }

        if (v153 == 0xFFFF)
        {
          LOWORD(v153) = 1;
        }

        v147 += (kInverseProbabilityLog256[4 * (v152 & 0x3FFFFFFF)] * *(v149 - 1));
        v148 += (kInverseProbabilityLog256[4 * (v153 & 0x3FFFFFFF)] * *v149);
        v149 += 2;
        v151 -= 2;
      }

      while (v151);
      v127 = v148 + v147;
      if (v126 == v125)
      {
LABEL_135:
        v146 = v127 >> 8;
        if (v12 < 1)
        {
          goto LABEL_144;
        }

        goto LABEL_136;
      }
    }

    else
    {
      v126 = 0;
      v127 = 0;
    }

    v155 = v125 - v126;
    v156 = (v14 + 4 * v126);
    v157 = &LL_defaultNorm[v126];
    do
    {
      v159 = *v157++;
      v158 = v159;
      if (v159 == 0xFFFF)
      {
        v158 = 1;
      }

      v160 = *v156++;
      v127 += (kInverseProbabilityLog256[4 * (v158 & 0x3FFFFFFF)] * v160);
      --v155;
    }

    while (v155);
    goto LABEL_135;
  }

  if ((v119 & 0xFFFFFFFE) == 2)
  {
    v128 = v13[2144];
    if (v13[2144])
    {
      v129 = 1 << (v128 - 1);
    }

    else
    {
      v129 = 1;
    }

    if (v221 > v13[2145])
    {
LABEL_118:
      v139 = 10 * v12;
      goto LABEL_145;
    }

    v130 = 0;
    v131 = v221 + 1;
    v132 = &v13[2 * v129 + 2148];
    v133 = v14;
    do
    {
      v135 = *v132;
      v132 += 4;
      v134 = v135;
      v137 = *v133++;
      v136 = v137;
      if (v137)
      {
        v138 = ((HIWORD(v134) + 1) << 8) - ((((HIWORD(v134) + 1) << 24) - ((v134 + (1 << v128)) << 8)) >> v128);
        if (v138 >= (v128 << 8) + 256)
        {
          goto LABEL_118;
        }

        v130 += v136 * v138;
      }

      --v131;
    }

    while (v131);
    v146 = v130 >> 8;
    if (v12 < 1)
    {
      goto LABEL_144;
    }

    goto LABEL_136;
  }

LABEL_122:
  v146 = 0;
  if (v12 < 1)
  {
    goto LABEL_144;
  }

LABEL_136:
  v161 = v9 + v12;
  v162 = v9 + 1;
  if (v9 + v12 <= v9 + 1)
  {
    v161 = v9 + 1;
  }

  v163 = v161 - v9;
  if ((v161 - v9) > 1)
  {
    v164 = 0;
    v165 = v163 & 0xFFFFFFFFFFFFFFFELL;
    v166 = v163 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v167 = *(v162 - 1);
      v168 = *v162;
      v162 += 2;
      v146 += LL_bits_36216[v167];
      v164 += LL_bits_36216[v168];
      v166 -= 2;
    }

    while (v166);
    v146 += v164;
    if (v163 == v165)
    {
      goto LABEL_144;
    }

    v9 = (v9 + v165);
  }

  do
  {
    v169 = *v9;
    v9 = (v9 + 1);
    v146 += LL_bits_36216[v169];
  }

  while (v9 < v120);
LABEL_144:
  v139 = v146 >> 3;
LABEL_145:
  v170 = *(a2 + 5064);
  v171 = (v7 + v12);
  v221 = 52;
  if (v12 > 0x5DB)
  {
    if ((v14 & 3) != 0)
    {
      goto LABEL_156;
    }

    v190 = v13;
    HIST_count_parallel_wksp(v14, &v221, v7, v12, 0, v14);
    v13 = v190;
    if (v170 == 1)
    {
      goto LABEL_177;
    }
  }

  else
  {
    *(v14 + 208) = 0;
    *(v14 + 176) = 0u;
    *(v14 + 192) = 0u;
    *(v14 + 144) = 0u;
    *(v14 + 160) = 0u;
    *(v14 + 112) = 0u;
    *(v14 + 128) = 0u;
    *(v14 + 80) = 0u;
    *(v14 + 96) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *v14 = 0u;
    if (v10 != v11)
    {
      v172 = v7;
      do
      {
        v173 = *v172;
        v172 = (v172 + 1);
        ++*(v14 + 4 * v173);
      }

      while (v172 < v171);
      LODWORD(v174) = 53;
      do
      {
        v174 = (v174 - 1);
      }

      while (!*(v14 + 4 * v174));
      v221 = v174;
      if (v174 >= 7)
      {
        v175 = (v174 + 1) & 0x1FFFFFFF8;
        do
        {
          v175 -= 8;
        }

        while (v175);
      }

LABEL_156:
      if (v170 != 1)
      {
        goto LABEL_157;
      }

LABEL_177:
      v191 = 0;
      if (v12 < 1)
      {
        goto LABEL_199;
      }

      goto LABEL_191;
    }

    v221 = 0;
    if (v170 == 1)
    {
      goto LABEL_177;
    }
  }

LABEL_157:
  if (!v170)
  {
    if (v221 + 1 > 1)
    {
      v176 = v221 + 1;
    }

    else
    {
      v176 = 1;
    }

    if (v221 + 1 >= 2)
    {
      v192 = 0;
      v193 = 0;
      v177 = v176 & 0xFFFFFFFE;
      v194 = (v14 + 4);
      v195 = &word_182B0C3E0;
      v196 = v177;
      do
      {
        v197 = *(v195 - 1);
        v199 = *v195;
        v195 += 2;
        v198 = v199;
        if (v197 == 0xFFFF)
        {
          LOWORD(v197) = 1;
        }

        if (v198 == 0xFFFF)
        {
          LOWORD(v198) = 1;
        }

        v192 += (kInverseProbabilityLog256[4 * (v197 & 0x3FFFFFFF)] * *(v194 - 1));
        v193 += (kInverseProbabilityLog256[4 * (v198 & 0x3FFFFFFF)] * *v194);
        v194 += 2;
        v196 -= 2;
      }

      while (v196);
      v178 = v193 + v192;
      if (v177 == v176)
      {
LABEL_190:
        v191 = v178 >> 8;
        if (v12 < 1)
        {
          goto LABEL_199;
        }

        goto LABEL_191;
      }
    }

    else
    {
      v177 = 0;
      v178 = 0;
    }

    v200 = v176 - v177;
    v201 = (v14 + 4 * v177);
    v202 = &ML_defaultNorm[v177];
    do
    {
      v204 = *v202++;
      v203 = v204;
      if (v204 == 0xFFFF)
      {
        v203 = 1;
      }

      v205 = *v201++;
      v178 += (kInverseProbabilityLog256[4 * (v203 & 0x3FFFFFFF)] * v205);
      --v200;
    }

    while (v200);
    goto LABEL_190;
  }

  if ((v170 & 0xFFFFFFFE) != 2)
  {
    goto LABEL_177;
  }

  v179 = v13[1418];
  if (v13[1418])
  {
    v180 = 1 << (v179 - 1);
  }

  else
  {
    v180 = 1;
  }

  if (v221 <= v13[1419])
  {
    v181 = 0;
    v182 = v221 + 1;
    v183 = &v13[2 * v180 + 1422];
    do
    {
      v185 = *v183;
      v183 += 4;
      v184 = v185;
      v187 = *v14;
      v14 += 4;
      v186 = v187;
      if (v187)
      {
        v188 = ((HIWORD(v184) + 1) << 8) - ((((HIWORD(v184) + 1) << 24) - ((v184 + (1 << v179)) << 8)) >> v179);
        if (v188 >= (v179 << 8) + 256)
        {
          goto LABEL_173;
        }

        v181 += v186 * v188;
      }

      --v182;
    }

    while (v182);
    v191 = v181 >> 8;
    if (v12 < 1)
    {
      goto LABEL_199;
    }

LABEL_191:
    v206 = v7 + v12;
    v207 = v7 + 1;
    if (v7 + v12 <= v7 + 1)
    {
      v206 = v7 + 1;
    }

    v208 = v206 - v7;
    if ((v206 - v7) > 1)
    {
      v209 = 0;
      v210 = v208 & 0xFFFFFFFFFFFFFFFELL;
      v211 = v208 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v212 = *(v207 - 1);
        v213 = *v207;
        v207 += 2;
        v191 += ML_bits_36218[v212];
        v209 += ML_bits_36218[v213];
        v211 -= 2;
      }

      while (v211);
      v191 += v209;
      if (v208 == v210)
      {
        goto LABEL_199;
      }

      v7 = (v7 + v210);
    }

    do
    {
      v214 = *v7;
      v7 = (v7 + 1);
      v191 += ML_bits_36218[v214];
    }

    while (v7 < v171);
LABEL_199:
    v189 = v191 >> 3;
    goto LABEL_200;
  }

LABEL_173:
  v189 = 10 * v12;
LABEL_200:
  v215 = 2;
  if (v12 > 0x7F)
  {
    v215 = 3;
  }

  v216 = 3;
  if (v12 >> 8 > 0x7E)
  {
    v216 = 4;
  }

  return v216 + v215 + v6 + v69 + v139 + *(a2 + 5208) + v189;
}

unint64_t ZSTD_buildBlockEntropyStats(void *a1, _DWORD *__src, void *__dst, _DWORD *a4, uint64_t a5, uint32x4_t *a6)
{
  v13 = a1[2];
  v12 = a1[3];
  v14 = a4[7];
  v15 = v14 > 7;
  v16 = a4[18];
  if (v16 == 1)
  {
    goto LABEL_8;
  }

  if (v16 == 2)
  {
    goto LABEL_3;
  }

  if (v14 != 1)
  {
LABEL_8:
    v19 = __src + 514;
    v37 = __src[514];
    LODWORD(v38) = 255;
    memcpy(__dst, __src, 0x810uLL);
  }

  else
  {
    v18 = a4[6];
    v37 = __src[514];
    LODWORD(v38) = 255;
    memcpy(__dst, __src, 0x810uLL);
    if (v18)
    {
      goto LABEL_26;
    }

    v19 = __src + 514;
  }

  v20 = v12 - v13;
  v21 = 63;
  if (*v19 == 2)
  {
    v21 = 6;
  }

  if (v21 >= v20)
  {
    goto LABEL_26;
  }

  result = HIST_count_wksp(a6, &v38, v13, v20, a6->i8);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
LABEL_36:
    *(a5 + 136) = result;
    return result;
  }

  if (result == v20)
  {
    v17 = 1;
    goto LABEL_27;
  }

  if (result <= (v20 >> 7) + 4)
  {
LABEL_26:
    v17 = 0;
    goto LABEL_27;
  }

  v23 = 2 * v15;
  v24 = v37;
  v25 = v38;
  if (v37 == 1)
  {
    v24 = HUF_validateCTable(__src, a6, v38);
  }

  bzero(__dst, 0x808uLL);
  v26 = HUF_optimalTableLog(11, v20, v25, a6[64].i64, 0x1ED8uLL, __dst, a6, v23);
  result = HUF_buildCTable_wksp(__dst, a6, v25, v26, a6[64].i64, 0x1ED8uLL);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_36;
  }

  v27 = result;
  v28 = HUF_estimateCompressedSize(__dst, a6, v25);
  v29 = v27;
  v30 = v28;
  result = HUF_writeCTable_wksp((a5 + 4), 0x80uLL, __dst, v25, v29, a6[64].i64, 0x1ED8uLL);
  if (v24)
  {
    v31 = result;
    v32 = HUF_estimateCompressedSize(__src, a6, v25);
    result = v31;
    if (v32 < v20)
    {
      v17 = 3;
      if (result + 12 >= v20 || v32 <= result + v30)
      {
        goto LABEL_4;
      }
    }
  }

  if (result + v30 >= v20)
  {
LABEL_3:
    v17 = 0;
LABEL_4:
    memcpy(__dst, __src, 0x810uLL);
LABEL_27:
    *a5 = v17;
    *(a5 + 136) = 0;
    goto LABEL_28;
  }

  *a5 = 2;
  *(__dst + 514) = 1;
  *(a5 + 136) = result;
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    return result;
  }

LABEL_28:
  v33 = a1[1] - *a1;
  if (v33)
  {
    ZSTD_buildSequencesStatistics(&v38, a1, v33 >> 3, (__src + 516), __dst + 516, (a5 + 156), a5 + 289, a4[7], a6, a6[13].i64 + 4);
    v33 = v40;
    if (v40 > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_33;
    }

    v34 = v38;
    v35 = v39;
    v36 = v41;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    *(__dst + 1401) = 0;
    v34 = 0;
    *(__dst + 701) = 0;
  }

  *(a5 + 144) = v34;
  *(a5 + 152) = v35;
  *(a5 + 304) = v36;
LABEL_33:
  *(a5 + 296) = v33;
  if (v33 >= 0xFFFFFFFFFFFFFF89)
  {
    return v33;
  }

  else
  {
    return 0;
  }
}

uint64_t ZSTD_copySequencesToSeqStoreExplicitBlockDelim(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, char *__src, uint64_t a6, int a7)
{
  v7 = __src;
  v9 = *a2;
  v10 = *(a1 + 3696);
  if (v10)
  {
    v11 = (v10 + 8);
LABEL_5:
    v12 = *v11;
    goto LABEL_6;
  }

  v12 = *(a1 + 3704);
  if (v12)
  {
    v11 = (a1 + 3712);
    goto LABEL_5;
  }

LABEL_6:
  v13 = &__src[a6];
  v14 = *(a1 + 3200);
  *v69 = *(v14 + 5616);
  *&v69[8] = *(v14 + 5624);
  if (v9 >= a4)
  {
    v19 = v9;
    v21 = v9;
    goto LABEL_87;
  }

  v15 = v13 - 32;
  v16 = *v69;
  v17 = *&v69[4];
  v18 = *&v69[8];
  v19 = v9;
  v20 = v9;
  while (1)
  {
    v22 = (a3 + 16 * v19);
    v23 = v22[2];
    if (!v23 && !*v22)
    {
      break;
    }

    v24 = v22[1];
    if (a7 == 2)
    {
      v25 = *v22 + 3;
      goto LABEL_29;
    }

    v26 = *v22;
    if (v24)
    {
      v27 = v16 == v26;
    }

    else
    {
      v27 = 0;
    }

    if (v27)
    {
      v25 = 1;
    }

    else if (v17 == v26)
    {
      if (v24)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }
    }

    else if (v18 == v26)
    {
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }
    }

    else if (v24 || v16 - 1 != v26)
    {
      v25 = v26 + 3;
      if (v26 != 0 && v26 < 0xFFFFFFFD)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v25 = 3;
    }

    v28 = v25 - (v24 != 0);
    switch(v28)
    {
      case 0u:
        goto LABEL_29;
      case 3u:
        v26 = v16 - 1;
        break;
      case 1u:
        v17 = v18;
        break;
      default:
        v26 = *&v69[4 * v28];
        break;
    }

LABEL_28:
    *&v69[4] = v16;
    *&v69[8] = v17;
    v18 = v17;
    v17 = v16;
    v16 = v26;
    *v69 = v26;
LABEL_29:
    if (*(a1 + 368))
    {
      v29 = *(a2 + 1) + (v24 + v23);
      *(a2 + 1) = v29;
      v30 = v29 <= 1 << *(a1 + 236) ? v29 + v12 : 1 << *(a1 + 236);
      if (v30 + 3 < v25)
      {
        return -107;
      }

      v31 = *(a1 + 252) != 3 && *(a1 + 424) == 0;
      v32 = v31 ? 4 : 3;
      if (v32 > v23)
      {
        return -107;
      }
    }

    if (*(a1 + 1008) <= (v20 - *a2))
    {
      return -107;
    }

    v33 = &v7[v24];
    v34 = *(a1 + 976);
    if (&v7[v24] > v15)
    {
      if (v7 <= v15)
      {
        v36 = v34 + v15 - v7;
        *v34 = *v7;
        if (v15 - v7 >= 17)
        {
          v39 = (v34 + 1);
          v40 = (v7 + 32);
          do
          {
            *v39 = *(v40 - 1);
            v41 = *v40;
            v40 += 2;
            *(v39 + 1) = v41;
            v39 += 32;
          }

          while (v39 < v36);
        }

        v35 = v13 - 32;
        if (v15 >= v33)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v35 = v7;
        v36 = *(a1 + 976);
        if (v7 >= v33)
        {
          goto LABEL_82;
        }
      }

      v42 = v33 - v35;
      if ((v33 - v35) < 8)
      {
        v48 = v36;
      }

      else if ((v36 - v35) < 0x20)
      {
        v48 = v36;
      }

      else
      {
        if (v42 < 0x20)
        {
          v43 = 0;
LABEL_73:
          v53 = v42 & 0xFFFFFFFFFFFFFFF8;
          v48 = &v36[v42 & 0xFFFFFFFFFFFFFFF8];
          v54 = v43 - (v42 & 0xFFFFFFFFFFFFFFF8);
          v55 = &v35[v43];
          v56 = &v36[v43];
          do
          {
            v57 = *v55;
            v55 += 8;
            *v56 = v57;
            v56 += 8;
            v54 += 8;
          }

          while (v54);
          if (v42 != v53)
          {
            v35 += v53;
            goto LABEL_81;
          }

LABEL_82:
          *(a1 + 976) += v24;
          v38 = *(a1 + 960);
          if (v24 >= 0x10000)
          {
            *(a1 + 1024) = 1;
            *(a1 + 1028) = (v38 - *(a1 + 952)) >> 3;
          }

          goto LABEL_84;
        }

        v43 = v42 & 0xFFFFFFFFFFFFFFE0;
        v49 = (v35 + 16);
        v50 = v36 + 16;
        v51 = v42 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v52 = *v49;
          *(v50 - 1) = *(v49 - 1);
          *v50 = v52;
          v49 += 2;
          v50 += 2;
          v51 -= 32;
        }

        while (v51);
        if (v42 == v43)
        {
          goto LABEL_82;
        }

        if ((v42 & 0x18) != 0)
        {
          goto LABEL_73;
        }

        v35 += v43;
        v48 = &v36[v43];
      }

      do
      {
LABEL_81:
        v58 = *v35++;
        *v48++ = v58;
      }

      while (v35 != v33);
      goto LABEL_82;
    }

    *v34 = *v7;
    if (v24 >= 0x11)
    {
      v37 = *(a1 + 976);
      *(v37 + 16) = *(v7 + 1);
      if ((v24 - 16) >= 0x11)
      {
        v44 = v37 + v24;
        v45 = (v37 + 32);
        v46 = (v7 + 48);
        do
        {
          *v45 = *(v46 - 1);
          v47 = *v46;
          v46 += 2;
          v45[1] = v47;
          v45 += 2;
        }

        while (v45 < v44);
        goto LABEL_82;
      }
    }

    *(a1 + 976) += v24;
    v38 = *(a1 + 960);
LABEL_84:
    *(v38 + 4) = v24;
    *v38 = v25;
    if (v23 - 3 >= 0x10000)
    {
      *(a1 + 1024) = 2;
      *(a1 + 1028) = (v38 - *(a1 + 952)) >> 3;
    }

    *(v38 + 6) = v23 - 3;
    *(a1 + 960) = v38 + 8;
    v7 += (v24 + v23);
    v19 = (v20 + 1);
    v20 = v19;
    v21 = v19;
    if (v19 >= a4)
    {
      goto LABEL_93;
    }
  }

  v21 = v20;
LABEL_93:
  if (a7 == 2 && v21 != v9)
  {
    v67 = v9 + 2;
    if (v21 - 1 >= v67)
    {
      v68 = *(a3 + 16 * (v21 - 3));
LABEL_99:
      *&v69[4] = *(a3 + 16 * (v21 - 2));
      *&v69[8] = v68;
    }

    else
    {
      if (v21 == v67)
      {
        v68 = *v69;
        goto LABEL_99;
      }

      *&v69[4] = *v69;
    }

    *v69 = *(a3 + 16 * (v21 - 1));
  }

LABEL_87:
  v59 = *(a1 + 3208);
  *(v59 + 5616) = *v69;
  *(v59 + 5624) = *&v69[8];
  v60 = a3 + 16 * v19;
  v63 = *(v60 + 4);
  v62 = (v60 + 4);
  v61 = v63;
  if (v63)
  {
    memcpy(*(a1 + 976), v7, v61);
    *(a1 + 976) += v61;
    v65 = *v62;
    v7 += v65;
    *(a2 + 1) += v65;
  }

  if (v7 != v13)
  {
    return -107;
  }

  result = 0;
  *a2 = v21 + 1;
  return result;
}

unint64_t ZSTD_compress_insertDictionary(uint64_t a1, uint32x2_t *a2, uint64_t a3, void *a4, _DWORD *a5, unint64_t a6, unint64_t a7, int a8, uint64_t a9, _WORD *a10)
{
  v119 = *MEMORY[0x1E69E9840];
  if (a6 && a7 > 7)
  {
    *(a1 + 5624) = 8;
    *(a1 + 5616) = 0x400000001;
    *(a1 + 2056) = 0;
    *(a1 + 5604) = 0;
    *(a1 + 5608) = 0;
    if (a8 == 1)
    {
LABEL_4:
      ZSTD_loadDictionaryContent(a2, a3, a4, a5, a6, a7, a9, HIDWORD(a9));
      return 0;
    }

    if (*a6 != -332356553)
    {
      if (a8 == 2)
      {
        return -32;
      }

      if (!a8)
      {
        goto LABEL_4;
      }
    }

    if (a5[10])
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a6 + 4);
    }

    v102 = 31;
    v16 = a6 + 8;
    *(a1 + 2056) = 1;
    v103 = 0;
    v19 = HUF_readStats_wksp(v110, v109, &v103, &v103 + 1, (a6 + 8), a7 - 8, v111.i8);
    if (v19 >= 0xFFFFFFFFFFFFFF89)
    {
      return -30;
    }

    v22 = v109[0];
    v23 = HIDWORD(v103);
    if (HIDWORD(v103) > 0xC)
    {
      v19 = -44;
      v24 = 1;
      v25 = a7;
      v26 = a6;
      v27 = a1;
      goto LABEL_52;
    }

    v28 = v103;
    v25 = a7;
    v26 = a6;
    v27 = a1;
    if (v103 > 0x100)
    {
      v19 = -48;
      v24 = 1;
LABEL_52:
      if (!v22 && v24)
      {
        *(v27 + 2056) = 2;
      }

      if (v19 <= 0xFFFFFFFFFFFFFF88)
      {
        v77 = v26 + v25;
        v78 = v16 + v19;
        v111.i32[0] = 0;
        v79 = FSE_readNCount_bmi2(v104, &v102, &v111, (v16 + v19), v26 + v25 - (v16 + v19));
        if (v79 <= 0xFFFFFFFFFFFFFF88 && v111.i32[0] < 9u)
        {
          v80 = v79;
          if (FSE_buildCTable_wksp((a1 + 2064), v104, 31, v111.i32[0], a10, 0x2200uLL) <= 0xFFFFFFFFFFFFFF88)
          {
            v81 = (v78 + v80);
            v110[0] = 52;
            v109[0] = 0;
            v82 = FSE_readNCount_bmi2(&v111, v110, v109, v81, v77 - v81);
            if (v82 <= 0xFFFFFFFFFFFFFF88 && v109[0] <= 9u)
            {
              v83 = v82;
              v100 = v110[0];
              if (FSE_buildCTable_wksp((a1 + 2836), &v111, v110[0], v109[0], a10, 0x2200uLL) <= 0xFFFFFFFFFFFFFF88)
              {
                v84 = (v100 < 0x34) | vmaxv_u16(vceqz_s16(v117)) & 1 | (v118 == 0) | (vmaxvq_u8(vorrq_s8(vuzp1q_s8(vceqzq_s16(v111), vceqzq_s16(v112)), vuzp1q_s8(vceqzq_s16(v113), vceqzq_s16(v114)))) | vmaxvq_u8(vuzp1q_s8(vceqzq_s16(v115), vceqzq_s16(v116)))) & 1 ? 1 : 2;
                *(a1 + 5608) = v84;
                v85 = &v81[v83];
                v110[0] = 35;
                v109[0] = 0;
                v86 = FSE_readNCount_bmi2(&v111, v110, v109, v85, v77 - v85);
                if (v86 < 0xFFFFFFFFFFFFFF89 && v109[0] <= 9u)
                {
                  v87 = v86;
                  v101 = v110[0];
                  if (FSE_buildCTable_wksp((a1 + 4288), &v111, v110[0], v109[0], a10, 0x2200uLL) <= 0xFFFFFFFFFFFFFF88)
                  {
                    v88 = (v101 < 0x23) | (vmaxvq_u8(vorrq_s8(vuzp1q_s8(vceqzq_s16(v111), vceqzq_s16(v112)), vuzp1q_s8(vceqzq_s16(v113), vceqzq_s16(v114)))) | vmaxv_u16(vceqz_s16(*v115.i8))) & 1 ? 1 : 2;
                    *(a1 + 5612) = v88;
                    v89 = &v85[v87];
                    v90 = &v85[v87 + 12];
                    if (v90 <= v77)
                    {
                      v91 = *v89;
                      *(a1 + 5616) = v91;
                      v92 = *(v89 + 1);
                      *(a1 + 5620) = v92;
                      v93 = *(v89 + 2);
                      *(a1 + 5624) = v93;
                      v94 = v77 - v90;
                      LODWORD(v95) = __clz(v77 - v90 + 0x20000) ^ 0x1F;
                      if (v77 - v90 >= 0xFFFE0000)
                      {
                        v95 = 31;
                      }

                      else
                      {
                        v95 = v95;
                      }

                      if (v102 >= v95)
                      {
                        v97 = v95 + 1;
                        v98 = v104;
                        while (*v98++)
                        {
                          if (!--v97)
                          {
                            v96 = 2;
                            goto LABEL_83;
                          }
                        }
                      }

                      v96 = 1;
LABEL_83:
                      *(a1 + 5604) = v96;
                      if (v91)
                      {
                        if (v94 >= v91 && v92 && v94 >= v92 && v93 && v94 >= v93)
                        {
                          result = v90 - a6;
                          if (v90 - a6 <= 0xFFFFFFFFFFFFFF88)
                          {
                            ZSTD_loadDictionaryContent(a2, 0, a4, a5, v90, a7 - result, a9, HIDWORD(a9));
                            return v14;
                          }

                          return result;
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

      return -30;
    }

    v29 = (a1 + 8);
    *a1 = BYTE4(v103);
    v30 = v28 - 1;
    *(a1 + 1) = v28 - 1;
    *(a1 + 2) = 0;
    *(a1 + 6) = 0;
    if (v23)
    {
      v31 = 0;
      v32 = 0;
      do
      {
        v33 = v109[v31 + 1] << v31;
        v109[v31 + 1] = v32;
        v32 += v33;
        ++v31;
      }

      while (v23 != v31);
    }

    if (!v28)
    {
      v111 = 0uLL;
      v112.i32[2] = 0;
      v112.i64[0] = 0;
      v105 = 0;
      v106 = 0;
      v108 = 0;
      v107 = 0;
LABEL_43:
      *(&v105 + v23 + 1) = 0;
      if (v23)
      {
        v70 = 0;
        v71 = &v111.i16[v23];
        v72 = &v105 + v23;
        do
        {
          *v72-- = v70;
          v73 = *v71--;
          v70 = (v73 + v70) >> 1;
          LODWORD(v23) = v23 - 1;
        }

        while (v23);
      }

      if (v28)
      {
        do
        {
          v74 = *v29;
          v75 = *v29;
          v76 = *(&v105 + v75);
          *(&v105 + v75) = v76 + 1;
          if (v75)
          {
            *v29 = (v76 << -v75) | v74;
          }

          ++v29;
          --v28;
        }

        while (v28);
      }

      v24 = v30 == 255;
      goto LABEL_52;
    }

    v34 = v23 + 1;
    if (v28 <= 3)
    {
      v35 = 0;
      goto LABEL_36;
    }

    if (v28 >= 0x10)
    {
      v35 = v28 & 0x1F0;
      v20 = vdupq_n_s8(v34);
      v36 = v110;
      v37 = (a1 + 8);
      v38 = v35;
      do
      {
        v39 = *v36++;
        v40 = vbicq_s8(vsubq_s8(v20, v39), vceqzq_s8(v39));
        v41 = vmovl_u8(*v40.i8);
        v42 = vmovl_u16(*v41.i8);
        v43.i64[0] = v42.u32[0];
        v43.i64[1] = v42.u32[1];
        v44 = v43;
        v45 = vmovl_high_u16(v41);
        v43.i64[0] = v45.u32[0];
        v43.i64[1] = v45.u32[1];
        v46 = v43;
        v47 = vmovl_high_u8(v40);
        v48 = vmovl_high_u16(v47);
        v43.i64[0] = v48.u32[0];
        v43.i64[1] = v48.u32[1];
        v49 = v43;
        v43.i64[0] = v48.u32[2];
        v43.i64[1] = v48.u32[3];
        v37[6] = v49;
        v37[7] = v43;
        v50 = vmovl_u16(*v47.i8);
        v43.i64[0] = v50.u32[0];
        v43.i64[1] = v50.u32[1];
        v51 = v43;
        v43.i64[0] = v45.u32[2];
        v43.i64[1] = v45.u32[3];
        v21 = v43;
        v43.i64[0] = v50.u32[2];
        v43.i64[1] = v50.u32[3];
        v37[4] = v51;
        v37[5] = v43;
        v37[2] = v46;
        v37[3] = v21;
        v43.i64[0] = v42.u32[2];
        v43.i64[1] = v42.u32[3];
        *v37 = v44;
        v37[1] = v43;
        v37 += 8;
        v38 -= 16;
      }

      while (v38);
      if (v35 == v28)
      {
        goto LABEL_41;
      }

      if ((v28 & 0xC) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v35 = 0;
    }

    v52 = v35;
    v35 = v28 & 0x1FC;
    *v20.i8 = vdup_n_s16(v34);
    v53 = v52 - v35;
    v54 = (a1 + 8 * v52 + 8);
    v55 = (v110 + v52);
    v56.i64[0] = 255;
    v56.i64[1] = 255;
    do
    {
      v57 = *v55++;
      v21.i32[0] = v57;
      v58 = vmovl_u16(vbic_s8(*&vsubw_u8(v20, *v21.i8), vceqz_s16(*&vmovl_u8(*v21.i8))));
      v59.i64[0] = v58.u32[0];
      v59.i64[1] = v58.u32[1];
      v60 = vandq_s8(v59, v56);
      v59.i64[0] = v58.u32[2];
      v59.i64[1] = v58.u32[3];
      v21 = vandq_s8(v59, v56);
      *v54 = v60;
      v54[1] = v21;
      v54 += 2;
      v53 += 4;
    }

    while (v53);
    if (v35 != v28)
    {
LABEL_36:
      v61 = v28 - v35;
      v62 = (a1 + 8 * v35 + 8);
      v63 = v110 + v35;
      do
      {
        v64 = *v63++;
        v65 = v34 - v64;
        if (v64)
        {
          v66 = v65;
        }

        else
        {
          v66 = 0;
        }

        *v62++ = v66;
        --v61;
      }

      while (v61);
    }

LABEL_41:
    v111 = 0uLL;
    v112.i32[2] = 0;
    v112.i64[0] = 0;
    v105 = 0;
    v106 = 0;
    v108 = 0;
    v67 = (a1 + 8);
    v68 = v28;
    v107 = 0;
    do
    {
      v69 = *v67;
      v67 += 8;
      ++v111.i16[v69];
      --v68;
    }

    while (v68);
    goto LABEL_43;
  }

  if (a8 == 2)
  {
    return -32;
  }

  else
  {
    return 0;
  }
}

void ZSTD_loadDictionaryContent(uint32x2_t *a1, uint64_t a2, void *a3, _DWORD *a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v10 = a1;
  v11 = (a5 + a6);
  if (a2)
  {
    v12 = a4[24] == 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = a4[7];
  v15 = -3758096382;
  if (a8 == 1 && v14 - 1 < 2)
  {
    v15 = -16777214;
  }

  v16 = 3758096382;
  if (a8 == 1 && v14 - 1 < 2)
  {
    v16 = 16777214;
  }

  v17 = &v11[v15];
  if (v16 >= a6)
  {
    v18 = a6;
  }

  else
  {
    v18 = v16;
  }

  if (v16 >= a6)
  {
    v19 = a5;
  }

  else
  {
    v19 = v17;
  }

  if (!a6)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_42;
  }

  v20 = *a1;
  if (*a1 == v19)
  {
    v21 = a1[2];
    v22 = a1[3].u32[0];
    v23 = a1[3].u32[1];
  }

  else
  {
    v21 = a1[1];
    v22 = v20.i32[0] - v21.i32[0];
    v23 = a1[3].u32[0];
    a1[3].i32[0] = v20.i32[0] - v21.i32[0];
    a1[3].i32[1] = v23;
    a1[1] = (v19 - (*&v20 - *&v21));
    a1[2] = v21;
    if (v20.i32[0] - v21.i32[0] - v23 <= 7)
    {
      a1[3].i32[1] = v22;
      v23 = v20.i32[0] - v21.i32[0];
    }
  }

  v24 = v19 + v18;
  *a1 = (v19 + v18);
  if (v19 + v18 > *&v21 + v23 && *&v21 + v22 > v19)
  {
    v26 = v24 - *&v21;
    if (v26 > v22)
    {
      LODWORD(v26) = v22;
    }

    a1[3].i32[1] = v26;
  }

  if (v13)
  {
    if (*a2 == v19)
    {
      v27 = *(a2 + 16);
      LODWORD(v28) = *(a2 + 24);
      v29 = *(a2 + 28);
    }

    else
    {
      v27 = *(a2 + 8);
      v28 = *a2 - v27;
      v29 = *(a2 + 24);
      *(a2 + 24) = v28;
      *(a2 + 28) = v29;
      *(a2 + 8) = v19 - v28;
      *(a2 + 16) = v27;
      if (v28 - v29 <= 7)
      {
        *(a2 + 28) = v28;
        v29 = v28;
      }
    }

    *a2 = v24;
    if (v24 > v27 + v29 && v27 + v28 > v19)
    {
      v30 = v24 - v27;
      if (v30 > v28)
      {
        LODWORD(v30) = v28;
      }

      *(a2 + 28) = v30;
    }

LABEL_42:
    v164 = *(a2 + 8);
    if (v8[12])
    {
      v31 = 0;
    }

    else
    {
      v31 = v11 - v164;
    }

    *(a2 + 48) = v31;
    v32 = v8[25];
    v33 = v8[26];
    v35 = v8[27];
    v34 = v8[28];
    if (v35 >= 0x40)
    {
      v36 = 64;
    }

    else
    {
      v36 = v8[27];
    }

    v37 = v34 - 1;
    v38 = ~(-1 << v34);
    v39 = v36 - v34;
    if (v37 >= v36)
    {
      v39 = 0;
    }

    v166[0] = 0xFFFFFFFFLL;
    v166[1] = v38 << v39;
    if (v19 < v11)
    {
      v155 = v18;
      v156 = v19;
      v157 = a7;
      v158 = a8;
      v160 = a3;
      v161 = (a5 + a6);
      v162 = a2 + 64;
      v40 = v19 + v35;
      v41 = ~(-1 << (v32 - v33));
      v42 = v19;
      do
      {
        v165 = 0;
        v163 = ZSTD_ldm_gear_feed(v166, v42, &v11[-v42], v162, &v165);
        v43 = v165;
        if (v165)
        {
          v44 = v162;
          do
          {
            v45 = *v44++;
            v46 = v42 + v45;
            if (v42 + v45 >= v40)
            {
              v47 = v8;
              v48 = v46 - v35;
              v49 = ZSTD_XXH64((v46 - v35), v35);
              v50 = (v48 - v164);
              v8 = v47;
              v51 = v47[26];
              v52 = *(a2 + 56);
              v53 = *(v52 + (v49 & v41));
              *(*(a2 + 40) + 8 * ((v49 & v41) << v51) + 8 * v53) = v49 & 0xFFFFFFFF00000000 | v50;
              *(v52 + (v49 & v41)) = (v53 + 1) & ~(-1 << v51);
            }

            --v43;
          }

          while (v43);
        }

        v42 += v163;
        v11 = v161;
      }

      while (v42 < v161);
      v14 = v8[7];
      v10 = a1;
      a3 = v160;
      LODWORD(a7) = v157;
      LODWORD(a8) = v158;
      v18 = v155;
      LODWORD(v19) = v156;
    }
  }

LABEL_59:
  if (v14 <= 7)
  {
    v54 = v8[3];
    if (v54 <= v8[2])
    {
      v54 = v8[2];
    }

    if (v54 >= 0x1C)
    {
      LOBYTE(v54) = 28;
    }

    v55 = (8 << v54);
    if (v18 > v55)
    {
      LODWORD(v19) = v11 - v55;
    }

    if (v18 >= v55)
    {
      v18 = v55;
    }
  }

  v56 = v10[1].i32[0];
  v57 = v19 - v56;
  v58 = v11 - v56;
  if (v8[12])
  {
    v58 = 0;
  }

  v10[5].i32[0] = v58;
  v10[5].i32[1] = v57;
  v10[17].i32[0] = v8[37];
  if (v18 >= 9)
  {
    v59 = a7;
    v60 = a8;
    ZSTD_overflowCorrectIfNeeded(v10, a3, v8, v19, v11);
    v61 = v8[7];
    if (v61 > 5)
    {
      if ((v61 - 6) < 4)
      {
        v82 = v10[1];
        v83 = v11 - v82.i32[0] - 8;
        v84 = v10[5].u32[1];
        if (v84 < v83)
        {
          v85 = v10[34].i32[0];
          do
          {
            v84 += ZSTD_insertBt1(v10, (*&v82 + v84), v11, v83, v85, 0);
          }

          while (v84 < v83);
        }
      }

      goto LABEL_195;
    }

    if ((v61 - 3) >= 3)
    {
      if (v61 == 1)
      {
        ZSTD_fillHashTable(v10, v11, v59, v60);
      }

      else if (v61 == 2)
      {
        ZSTD_fillDoubleHashTable(v10, v11, v59, v60);
      }

      goto LABEL_195;
    }

    if (v10[17].i32[1])
    {
      v62 = v10[1];
      v63 = v11;
      v64 = v11 - v62.i32[0] - 8;
      v65 = 1 << v10[32].i32[1];
      v66 = v10[5].u32[1];
      if (v65 >= v64 - v66)
      {
        v67 = v10[5].u32[1];
      }

      else
      {
        v67 = v64 - v65;
      }

      v68 = (1 << v10[33].i32[1]) - 3;
      if (v68 >= 0xFF)
      {
        v69 = 255;
      }

      else
      {
        v69 = (1 << v10[33].i32[1]) - 3;
      }

      v70 = v10[33].i32[0];
      v71 = v70 - 2;
      v72 = 3 << (v70 - 2);
      v73 = v64 >= v72;
      v74 = v64 - v72;
      if (v74 != 0 && v73)
      {
        v75 = v74;
      }

      else
      {
        v75 = v66;
      }

      v76 = v10[14];
      v77 = v10[16];
      v78 = *&v76 + 4 * (1 << v71);
      if (v64 > v66)
      {
        do
        {
          v79 = v10[34].i32[0];
          if (v79 > 6)
          {
            if (v79 == 7)
            {
              v80 = 0xCF1BBCDCBFA56300 * *(*&v62 + v66);
              goto LABEL_96;
            }

            if (v79 == 8)
            {
              v80 = 0xCF1BBCDCB7A56463 * *(*&v62 + v66);
              goto LABEL_96;
            }
          }

          else
          {
            if (v79 == 5)
            {
              v80 = 0xCF1BBCDCBB000000 * *(*&v62 + v66);
              goto LABEL_96;
            }

            if (v79 == 6)
            {
              v80 = 0xCF1BBCDCBF9B0000 * *(*&v62 + v66);
LABEL_96:
              v81 = v80 >> (66 - v70);
              goto LABEL_97;
            }
          }

          LODWORD(v81) = (-1640531535 * *(*&v62 + v66)) >> (34 - v70);
LABEL_97:
          if (v66 >= v75)
          {
            *(v78 + 4 * (v66 - v75)) = *(*&v76 + 4 * v81);
          }

          *(*&v76 + 4 * v81) = v66++;
        }

        while (v64 != v66);
      }

      v86 = 0;
      v87 = 0;
      v88 = (1 << v71);
      if (v69 <= 1)
      {
        v69 = 1;
      }

      while (2)
      {
        v90 = *(*&v76 + 4 * v86);
        if (v90 < v75)
        {
          goto LABEL_118;
        }

        v91 = *(v78 + 4 * (v90 - v75));
        if (v91 < v75)
        {
          goto LABEL_118;
        }

        v92 = *(v78 + 4 * (v91 - v75));
        if (v92 < v75 || v68 == 0)
        {
          goto LABEL_118;
        }

        v95 = 0;
        v96 = v91 < v67;
        if (v90 >= v67)
        {
          v97 = v96;
        }

        else
        {
          v97 = v96 + 1;
        }

        if (v92 < v67)
        {
          ++v97;
        }

        while (1)
        {
          v92 = *(v78 + 4 * (v92 - v75));
          if (v92 < v67)
          {
            break;
          }

LABEL_131:
          v94 = (v87 + 1);
          *(*&v77 + 4 * v87) = v92;
          v99 = v95 + 1;
          if (v92 < v75)
          {
            v89 = v99 + ((v87 - v95) << 8);
            goto LABEL_110;
          }

          v87 = (v87 + 1);
          ++v95;
          if (v69 == v99)
          {
            v89 = v69 | ((v94 - v69) << 8);
            goto LABEL_110;
          }
        }

        if (v92)
        {
          v98 = v97 > 2;
        }

        else
        {
          v98 = 1;
        }

        if (!v98)
        {
          ++v97;
          goto LABEL_131;
        }

        if (v95)
        {
          v89 = v95 + ((v87 - v95) << 8);
          goto LABEL_119;
        }

LABEL_118:
        v89 = 0;
LABEL_119:
        v94 = v87;
LABEL_110:
        *(*&v76 + 4 * v86++) = v89;
        v87 = v94;
        if (v86 != v88)
        {
          continue;
        }

        break;
      }

      v100 = (4 << v71) - 4;
      v101 = 4 * v88 - 1;
      v102 = (*&v76 + 4 * (v88 - 1));
      do
      {
        v103 = *&v76 + 4 * v100;
        v104 = *v102--;
        *(v103 + 8) = 0;
        *v103 = 0;
        *(*&v76 + 4 * v101) = v104;
        v100 -= 4;
        v101 -= 4;
        LODWORD(v88) = v88 - 1;
      }

      while (v88);
      v105 = v10[5].u32[1];
      LODWORD(v11) = v63;
      if (v105 < v64)
      {
        v106 = 66 - v70;
        v107 = 34 - v70;
        while (1)
        {
          v111 = v10[34].i32[0];
          if (v111 > 6)
          {
            if (v111 == 7)
            {
              v108 = 0xCF1BBCDCBFA56300 * *(*&v62 + v105);
            }

            else
            {
              if (v111 != 8)
              {
LABEL_150:
                LODWORD(v109) = (-1640531535 * *(*&v62 + v105)) >> v107;
                goto LABEL_142;
              }

              v108 = 0xCF1BBCDCB7A56463 * *(*&v62 + v105);
            }
          }

          else if (v111 == 5)
          {
            v108 = 0xCF1BBCDCBB000000 * *(*&v62 + v105);
          }

          else
          {
            if (v111 != 6)
            {
              goto LABEL_150;
            }

            v108 = 0xCF1BBCDCBF9B0000 * *(*&v62 + v105);
          }

          v109 = v108 >> v106;
LABEL_142:
          v110 = (*&v76 + 16 * (v109 & 0x3FFFFFFF));
          *(v110 + 4) = *v110;
          *v110 = v105++;
          if (v64 == v105)
          {
            goto LABEL_195;
          }
        }
      }

      goto LABEL_195;
    }

    if (v8[36] == 1)
    {
      bzero(*&v10[7], 1 << v8[3]);
      v112 = v10[33].u32[1];
      if (v112 >= 6)
      {
        v112 = 6;
      }

      if (v112 <= 4)
      {
        LOBYTE(v112) = 4;
      }

      v113 = v10[5].u32[1];
      v114 = v10[1];
      v115 = v11 - v114.i32[0] - 8;
      if (v113 < v115)
      {
        v116 = ~(-1 << v112);
        v117 = v10[14];
        v118 = v10[7];
        v119 = v10[6].i32[1];
        if (v10[34].i32[0] >= 6u)
        {
          v120 = 6;
        }

        else
        {
          v120 = v10[34].i32[0];
        }

        v121 = 56 - v119;
        if (v120 == 6)
        {
          do
          {
            v139 = ((0xCF1BBCDCBF9B0000 * *(*&v114 + v113)) ^ *&v10[12]) >> v121;
            v140 = (v139 >> 8) << v112;
            v141 = *&v117 + 4 * v140;
            v142 = (*&v118 + v140);
            if (((*v142 + 127) & v116) != 0)
            {
              v143 = 0;
            }

            else
            {
              v143 = v116;
            }

            v144 = v143 + ((*v142 + 127) & v116);
            *v142 = v144;
            v142[v144] = v139;
            *(v141 + 4 * v144) = v113++;
          }

          while (v115 != v113);
        }

        else if (v120 == 5)
        {
          do
          {
            v122 = ((0xCF1BBCDCBB000000 * *(*&v114 + v113)) ^ *&v10[12]) >> v121;
            v123 = (v122 >> 8) << v112;
            v124 = *&v117 + 4 * v123;
            v125 = (*&v118 + v123);
            if (((*v125 + 127) & v116) != 0)
            {
              v126 = 0;
            }

            else
            {
              v126 = v116;
            }

            v127 = v126 + ((*v125 + 127) & v116);
            *v125 = v127;
            v125[v127] = v122;
            *(v124 + 4 * v127) = v113++;
          }

          while (v115 != v113);
        }

        else
        {
          v145 = 24 - v119;
          do
          {
            v146 = ((-1640531535 * *(*&v114 + v113)) ^ v10[12].i32[0]) >> v145;
            v147 = (v146 >> 8) << v112;
            v148 = *&v117 + 4 * v147;
            v149 = (*&v118 + v147);
            if (((*v149 + 127) & v116) != 0)
            {
              v150 = 0;
            }

            else
            {
              v150 = v116;
            }

            v151 = v150 + ((*v149 + 127) & v116);
            *v149 = v151;
            v149[v151] = v146;
            *(v148 + 4 * v151) = v113++;
          }

          while (v115 != v113);
        }
      }

      goto LABEL_195;
    }

    v128 = v10[1];
    v129 = v11 - v128.i32[0] - 8;
    v130 = v10[5].u32[1];
    if (v130 < v129)
    {
      v131 = v10[14];
      v132 = v10[16];
      v133 = ~(-1 << v10[32].i32[1]);
      v134 = v10[34].i32[0];
      v135 = v10[33].i32[0];
      v136 = 64 - v135;
      if (v134 > 6)
      {
        if (v134 == 8)
        {
          do
          {
            v154 = (0xCF1BBCDCB7A56463 * *(*&v128 + v130)) >> v136;
            *(*&v132 + 4 * (v130 & v133)) = *(*&v131 + 4 * v154);
            *(*&v131 + 4 * v154) = v130++;
          }

          while (v129 != v130);
          goto LABEL_195;
        }

        if (v134 == 7)
        {
          do
          {
            v138 = (0xCF1BBCDCBFA56300 * *(*&v128 + v130)) >> v136;
            *(*&v132 + 4 * (v130 & v133)) = *(*&v131 + 4 * v138);
            *(*&v131 + 4 * v138) = v130++;
          }

          while (v129 != v130);
          goto LABEL_195;
        }
      }

      else
      {
        if (v134 == 5)
        {
          do
          {
            v153 = (0xCF1BBCDCBB000000 * *(*&v128 + v130)) >> v136;
            *(*&v132 + 4 * (v130 & v133)) = *(*&v131 + 4 * v153);
            *(*&v131 + 4 * v153) = v130++;
          }

          while (v129 != v130);
          goto LABEL_195;
        }

        if (v134 == 6)
        {
          do
          {
            v137 = (0xCF1BBCDCBF9B0000 * *(*&v128 + v130)) >> v136;
            *(*&v132 + 4 * (v130 & v133)) = *(*&v131 + 4 * v137);
            *(*&v131 + 4 * v137) = v130++;
          }

          while (v129 != v130);
          goto LABEL_195;
        }
      }

      do
      {
        v152 = (-1640531535 * *(*&v128 + v130)) >> (32 - v135);
        *(*&v132 + 4 * (v130 & v133)) = *(*&v131 + 4 * v152);
        *(*&v131 + 4 * v152) = v130++;
      }

      while (v129 != v130);
    }

LABEL_195:
    v10[5].i32[1] = v11 - v10[1].i32[0];
  }
}

uint64_t ZSTD_insertBt1(uint64_t a1, char *a2, char *a3, int a4, int a5, int a6)
{
  v9 = *(a1 + 112);
  v10 = *(a1 + 264);
  if (a5 > 6)
  {
    if (a5 == 7)
    {
      v11 = *a2;
      v12 = -1079680256;
      goto LABEL_11;
    }

    if (a5 == 8)
    {
      v11 = *a2;
      v12 = -1213897629;
      goto LABEL_11;
    }
  }

  else
  {
    if (a5 == 5)
    {
      v11 = *a2;
      v12 = -1157627904;
      goto LABEL_11;
    }

    if (a5 == 6)
    {
      v11 = *a2;
      v12 = -1080360960;
LABEL_11:
      v13 = (v11 * (v12 | 0xCF1BBCDC00000000)) >> -v10;
      goto LABEL_12;
    }
  }

  v13 = (-1640531535 * *a2) >> -v10;
LABEL_12:
  v76 = v6;
  v77 = v7;
  v14 = *(a1 + 128);
  v15 = -1 << (*(a1 + 260) - 1);
  v16 = ~v15;
  v17 = *(v9 + 4 * v13);
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = a2 - v18;
  v21 = a2 - v18 + v15 + 1;
  if (a2 - v18 < ~v15)
  {
    v21 = 0;
  }

  v70 = v21;
  v22 = (v14 + 8 * (v20 & ~v15));
  v75 = 0;
  v23 = *(a1 + 24);
  v24 = 1 << *(a1 + 256);
  v25 = a4 - *(a1 + 28);
  v26 = a4 - v24;
  if (v25 <= v24 || *(a1 + 40) != 0)
  {
    v26 = *(a1 + 28);
  }

  v28 = v20 + 9;
  v29 = *(a1 + 268);
  *(v9 + 4 * v13) = v20;
  if (v17 < v26)
  {
    v30 = 0;
    *v22 = 0;
    goto LABEL_111;
  }

  v67 = v20;
  v31 = 0;
  v32 = 0;
  v74 = (v19 + v23);
  v69 = (v18 + v23);
  v33 = (v22 + 1);
  v34 = 1 << v29;
  v35 = a3 - 7;
  v72 = a3 - 3;
  v71 = a3 - 1;
  v68 = v19 + 8;
  v73 = v18 + 8 + v23;
  v36 = 8;
  v37 = v70;
  while (1)
  {
    if (v31 >= v32)
    {
      v38 = v32;
    }

    else
    {
      v38 = v31;
    }

    v39 = &a2[v38];
    if (a6 && v38 + v17 < v23)
    {
      v40 = v19 + v17;
      v41 = (v40 + v38);
      if (&v74[a2 - v40] >= a3)
      {
        v42 = a3;
      }

      else
      {
        v42 = &v39[v74 - v41];
      }

      if (v42 - 7 <= v39)
      {
        v56 = (v19 + v17 + v38);
        v46 = &a2[v38];
      }

      else
      {
        if (*v41 != *v39)
        {
          v49 = __clz(__rbit64(*v39 ^ *v41)) >> 3;
          goto LABEL_69;
        }

        v43 = v19;
        v44 = v68 + v17;
        v45 = a2;
        while (1)
        {
          v46 = &v45[v38 + 8];
          if (v46 >= v42 - 7)
          {
            break;
          }

          v47 = *(v44 + v38);
          v48 = *v46;
          v44 += 8;
          v45 += 8;
          if (v47 != v48)
          {
            v49 = &v45[__clz(__rbit64(v48 ^ v47)) >> 3] - a2;
            v19 = v43;
            v37 = v70;
            goto LABEL_69;
          }
        }

        v56 = (v44 + v38);
        v19 = v43;
        v37 = v70;
      }

      if (v46 < v42 - 3 && *v56 == *v46)
      {
        ++v56;
        v46 += 4;
      }

      if (v46 < v42 - 1 && *v56 == *v46)
      {
        v56 = (v56 + 2);
        v46 += 2;
      }

      if (v46 < v42 && *v56 == *v46)
      {
        ++v46;
      }

      v49 = v46 - v39;
LABEL_69:
      if (&v41[v49] != v74)
      {
        goto LABEL_90;
      }

      v57 = &v39[v49];
      if (v35 <= &v39[v49])
      {
        v62 = (v18 + v23);
        v59 = &v39[v49];
      }

      else
      {
        if (*v69 != *v57)
        {
          v61 = __clz(__rbit64(*v57 ^ *v69)) >> 3;
LABEL_89:
          v49 += v61;
LABEL_90:
          v55 = v49 + v38;
          if (v49 + v38 + v17 >= v23)
          {
            v40 = v18 + v17;
          }

          goto LABEL_92;
        }

        v58 = 0;
        while (1)
        {
          v59 = &v57[v58 + 8];
          if (v59 >= v35)
          {
            break;
          }

          v60 = *(v73 + v58);
          v58 += 8;
          if (v60 != *v59)
          {
            v61 = v58 + (__clz(__rbit64(*v59 ^ v60)) >> 3);
            goto LABEL_89;
          }
        }

        v62 = (v73 + v58);
      }

      if (v59 < v72 && *v62 == *v59)
      {
        ++v62;
        v59 += 4;
      }

      if (v59 < v71 && *v62 == *v59)
      {
        v62 = (v62 + 2);
        v59 += 2;
      }

      if (v59 < a3 && *v62 == *v59)
      {
        ++v59;
      }

      v61 = v59 - v57;
      goto LABEL_89;
    }

    v40 = v18 + v17;
    v50 = (v40 + v38);
    if (v35 <= v39)
    {
      v53 = &a2[v38];
    }

    else
    {
      if (*v50 != *v39)
      {
        v55 = (__clz(__rbit64(*v39 ^ *v50)) >> 3) + v38;
        goto LABEL_92;
      }

      v51 = v18 + 8 + v17;
      v52 = a2;
      while (1)
      {
        v53 = &v52[v38 + 8];
        if (v53 >= v35)
        {
          break;
        }

        v54 = *(v51 + v38);
        v51 += 8;
        v52 += 8;
        if (v54 != *v53)
        {
          v55 = &v52[__clz(__rbit64(*v53 ^ v54)) >> 3] - a2 + v38;
          goto LABEL_92;
        }
      }

      v50 = (v51 + v38);
    }

    if (v53 < v72 && *v50 == *v53)
    {
      v50 = (v50 + 4);
      v53 += 4;
    }

    if (v53 < v71 && *v50 == *v53)
    {
      v50 = (v50 + 2);
      v53 += 2;
    }

    if (v53 < a3 && *v50 == *v53)
    {
      ++v53;
    }

    v55 = v53 - a2;
LABEL_92:
    v63 = v17 + v55;
    if (v55 <= v28 - v17)
    {
      v63 = v28;
    }

    if (v55 > v36)
    {
      v28 = v63;
      v36 = v55;
    }

    if (&a2[v55] == a3)
    {
      goto LABEL_106;
    }

    v64 = (v14 + 8 * (v17 & v16));
    if (*(v40 + v55) < a2[v55])
    {
      break;
    }

    *v33 = v17;
    if (v17 <= v37)
    {
      v33 = &v75;
      goto LABEL_106;
    }

    v32 = v55;
    v33 = (v14 + 8 * (v17 & v16));
    if (!--v34)
    {
      goto LABEL_106;
    }

LABEL_22:
    v17 = *v64;
    if (*v64 < v26)
    {
      goto LABEL_106;
    }
  }

  *v22 = v17;
  if (v17 > v37)
  {
    v22 = (v64 + 1);
    v31 = v55;
    ++v64;
    if (!--v34)
    {
      goto LABEL_106;
    }

    goto LABEL_22;
  }

  v22 = &v75;
LABEL_106:
  *v33 = 0;
  *v22 = 0;
  v30 = v36 - 384;
  if ((v36 - 384) >= 0xC0)
  {
    v30 = 192;
  }

  if (v36 <= 0x180)
  {
    v30 = 0;
  }

  v20 = v67;
LABEL_111:
  v65 = v28 - v20 - 8;
  if (v30 <= v65)
  {
    return v65;
  }

  else
  {
    return v30;
  }
}

int64_t ZSTD_compressBlock_opt0(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, unint64_t a5, unsigned int a6)
{
  v223 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 272);
  v9 = v8 - 6;
  v197 = v8;
  v10 = v8 >= 3;
  v11 = v8 - 3;
  if (v10)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = 4;
  }

  else
  {
    v13 = 3;
  }

  v206 = v13;
  v207 = a4;
  if (v9 >= 0xFFFFFFFD)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v205 = *(&off_1EEFDB430[4 * a6] + v14);
  v210 = &a4[a5];
  v201 = &a4[a5 - 8];
  v15 = (*(a1 + 8) + *(a1 + 24));
  if (*(a1 + 276) >= 0xFFFu)
  {
    v16 = 4095;
  }

  else
  {
    v16 = *(a1 + 276);
  }

  v202 = v16;
  v218 = *(a1 + 44);
  v17 = *(a1 + 184);
  v213 = *(a1 + 176);
  v217 = 0;
  v215 = 0u;
  v216 = 0u;
  v214 = 0u;
  v221 = 0;
  v222 = 0;
  v18 = *(a1 + 288);
  if (v18)
  {
    v19 = v18[1];
    v214 = *v18;
    v215 = v19;
    *&v216 = *(v18 + 4);
  }

  else
  {
    *&v216 = 0;
    v214 = 0uLL;
    v215 = 0uLL;
  }

  LODWORD(v217) = 0;
  *(&v216 + 1) = 0;
  ZSTD_opt_getNextMatchAndUpdateSeqStore(&v214, 0, a5);
  ZSTD_rescaleFreqs((a1 + 144), v207, a5, 0);
  if (v15 == v207)
  {
    v20 = v207 + 1;
  }

  else
  {
    v20 = v207;
  }

  v21 = v201;
  if (v20 < v201)
  {
    v200 = 0;
    v22 = v207;
    v199 = v17 + 40;
    v23 = v213;
    v212 = v210 - 32;
    while (1)
    {
      v25 = v21;
      v209 = v22;
      v26 = v20 - v22;
      v27 = v20;
      LODWORD(v219) = v205(v23, a1, &v218);
      v23 = v213;
      ZSTD_optLdm_processMatchCandidate(&v214, v213, &v219, v27 - v207, v210 - v27);
      v28 = v219;
      if (!v219)
      {
        v20 = v27 + 1;
        v22 = v209;
        v21 = v25;
        goto LABEL_22;
      }

      v211 = v27;
      *(v17 + 8) = 0;
      *(v17 + 12) = v26;
      if (*(a1 + 224) == 1)
      {
        v29 = 7936 - (__clz(v26 + 1) << 8);
        v21 = v25;
      }

      else
      {
        v21 = v25;
        if (v26 == 0x20000)
        {
          v29 = *(a1 + 212) + (__clz(*(*(a1 + 152) + 140) + 1) << 8) - 3584;
        }

        else
        {
          if (v26 < 0x40)
          {
            v30 = ZSTD_LLcode_LL_Code_36107[v26 & 0x3F];
          }

          else
          {
            v30 = 50 - __clz(v26);
          }

          v29 = *(a1 + 212) + ((__clz(*(*(a1 + 152) + 4 * v30) + 1) + LL_bits_36216[v30]) << 8) - 7936;
        }
      }

      *v17 = v29;
      v32 = *a3;
      *(v17 + 24) = *(a3 + 2);
      *(v17 + 16) = v32;
      v31 = (v213 + 8 * (v28 - 1));
      LODWORD(v32) = v31[1];
      if (v32 > v202)
      {
        v33 = 0;
        v34 = *v31;
        goto LABEL_149;
      }

      *(v17 + 28) = 0x40000000;
      *(v17 + 56) = 0x40000000;
      *(v17 + 36) = 0;
      *(v17 + 40) = v26 + 1;
      *(v17 + 64) = 0;
      *(v17 + 68) = v26 + 2;
      if (v197 != 3)
      {
        v35 = v211 - v209 + 3;
        v36 = (v17 + 96);
        v37 = v206 - 3;
        do
        {
          *(v36 - 1) = 0;
          *v36 = v35++;
          *(v36 - 3) = 0x40000000;
          v36 += 7;
          --v37;
        }

        while (v37);
      }

      v38 = 0;
      v39 = v206;
      do
      {
        v40 = (v213 + 8 * v38);
        v41 = v40[1];
        if (v39 <= v41)
        {
          v42 = *v40;
          v43 = 31 - __clz(v42);
          if (*(a1 + 224) == 1)
          {
            do
            {
              v44 = *v17 + ((v43 - __clz(v39 - 2)) << 8) + 12032;
              v45 = (v17 + 28 * v39);
              v45[2] = v39;
              v45[3] = 0;
              *v45 = v44;
              v45[1] = v42;
              ++v39;
            }

            while (v39 <= v41);
          }

          else
          {
            if (v43 <= 0x13)
            {
              v46 = -15821;
            }

            else
            {
              v46 = (v43 << 9) - 25549;
            }

            v47 = v46 + *(a1 + 220) + *(a1 + 216);
            v49 = *(a1 + 160);
            v48 = *(a1 + 168);
            v50 = *(a1 + 152);
            v51 = *(a1 + 212) - 7936;
            do
            {
              v55 = v39 - 3;
              if (v39 - 3 < 0x80)
              {
                v52 = ZSTD_MLcode_ML_Code_36109[v55];
              }

              else
              {
                v52 = 67 - __clz(v55);
              }

              v53 = v47 + *v17 + ((__clz(*(v48 + 4 * v43) + 1) + v43 + ML_bits_36218[v52] + __clz(*(v49 + 4 * v52) + 1)) << 8);
              v54 = (v17 + 28 * v39);
              v54[1] = v42;
              v54[2] = v39;
              v54[3] = 0;
              *v54 = v51 + (__clz(*v50 + 1) << 8) + v53;
              ++v39;
            }

            while (v39 <= v41);
          }
        }

        ++v38;
      }

      while (v38 != v28);
      *(v17 + 28 * v39) = 0x40000000;
      LODWORD(v56) = v39 - 1;
      if (v39 == 1)
      {
        goto LABEL_142;
      }

      v33 = 1;
      v57 = v211;
      while (1)
      {
        v59 = &v57[v33];
        v60 = (v17 + 28 * (v33 - 1));
        v61 = v60[3];
        v62 = v61 + 1;
        v63 = *v60;
        v64 = *(a1 + 224);
        if (*(a1 + 240) == 2)
        {
          v65 = v63 + 2048;
          if (v64 == 1)
          {
            goto LABEL_64;
          }

          if (v61 == 0x1FFFF)
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v64 == 1)
          {
            v65 = v63 + 1536;
LABEL_64:
            v68 = 7936 - (__clz(v61 + 2) << 8);
            v71 = 7936 - (__clz(v62) << 8);
            goto LABEL_65;
          }

          v80 = *(a1 + 208);
          v81 = v80 - 256;
          v82 = 7936 - (__clz(*(*(a1 + 144) + 4 * *(v59 - 1)) + 1) << 8);
          v83 = v80 - v82;
          if (v82 > v81)
          {
            v83 = 256;
          }

          v65 = v83 + v63;
          if (v61 == 0x1FFFF)
          {
LABEL_59:
            v66 = *(a1 + 212);
            v67 = *(a1 + 152);
            v68 = v66 + (__clz(*(v67 + 140) + 1) << 8) - 3584;
            v69 = v66 - 7936;
            goto LABEL_60;
          }
        }

        if (v62 < 0x40)
        {
          v84 = ZSTD_LLcode_LL_Code_36107[v62];
        }

        else
        {
          v84 = 50 - __clz(v62);
        }

        v86 = *(a1 + 212);
        v67 = *(a1 + 152);
        v69 = v86 - 7936;
        v68 = v86 - 7936 + ((__clz(*(v67 + 4 * v84) + 1) + LL_bits_36216[v84]) << 8);
        if (v61 != 0x20000)
        {
          if (v61 >= 0x40)
          {
LABEL_60:
            v70 = 50 - __clz(v61);
          }

          else
          {
            v70 = ZSTD_LLcode_LL_Code_36107[v61];
          }

          v71 = v69 + ((__clz(*(v67 + 4 * v70) + 1) + LL_bits_36216[v70]) << 8);
          goto LABEL_65;
        }

        v71 = v86 + (__clz(*(v67 + 140) + 1) << 8) - 3584;
LABEL_65:
        v72 = v65 + v68 - v71;
        v73 = (v17 + 28 * v33);
        v74 = *v73;
        if (v72 <= *v73)
        {
          *(v73 + 3) = *(v60 + 3);
          *v73 = *v60;
          v73[3] = v62;
          *v73 = v72;
          v74 = v72;
          if (v62)
          {
LABEL_67:
            if (v59 > v21)
            {
              goto LABEL_54;
            }

            goto LABEL_95;
          }
        }

        else
        {
          v62 = v73[3];
          if (v62)
          {
            goto LABEL_67;
          }
        }

        v75 = v73[1];
        v76 = v17 + 28 * (v33 - v73[2]);
        v77 = *(v76 + 12);
        v219 = *(v76 + 16);
        v220 = *(v76 + 24);
        if (v75 < 4)
        {
          if (!v77)
          {
            ++v75;
          }

          v85 = v75 - 1;
          if (v75 == 4)
          {
            v87 = v219;
            v79 = v219 - 1;
          }

          else
          {
            if (v75 == 1)
            {
              v78 = v220;
              goto LABEL_94;
            }

            v79 = *(&v219 + v85);
            v87 = v219;
          }

          v88 = v85 == 1 ? &v220 : (&v219 + 4);
          v78 = *v88;
          HIDWORD(v219) = v87;
        }

        else
        {
          v78 = HIDWORD(v219);
          HIDWORD(v219) = v219;
          v79 = v75 - 3;
        }

        LODWORD(v219) = v79;
LABEL_94:
        *(v73 + 2) = v219;
        v73[6] = v78;
        if (v59 > v21)
        {
LABEL_54:
          v58 = v33 + 1;
          goto LABEL_55;
        }

LABEL_95:
        if (v33 == v56)
        {
          LODWORD(v56) = v33;
LABEL_142:
          v128 = (v17 + 28 * v56);
          v34 = v128[1];
          v200 = *v128;
          LODWORD(v32) = v128[2];
          v129 = v128[3];
          v130 = v128[6];
          v132 = *(v128 + 2);
          v131 = v128 + 4;
          v221 = v132;
          v222 = v130;
          if (v32)
          {
            v133 = v56 - v32;
            if (!v129)
            {
              v33 = v56 - v32;
              goto LABEL_148;
            }

            v134 = *v131;
            *(a3 + 2) = v131[2];
            *a3 = v134;
            v135 = v133 - v129;
            v136 = v135 + 2;
            v137 = v17 + 28 * (v135 + 2);
            *(v137 + 8) = 0;
            *(v137 + 12) = v129;
            v138 = v17 + 28 * (v135 + 1);
            *v138 = v200;
            *(v138 + 4) = v34;
            *(v138 + 8) = v32;
            *(v138 + 12) = v129;
            *(v138 + 16) = v221;
            *(v138 + 24) = v222;
            v33 = v133 - v129;
            goto LABEL_165;
          }

          v92 = v56;
LABEL_146:
          v23 = v213;
          v22 = v209;
          v20 = &v211[v92];
          goto LABEL_22;
        }

        v58 = v33 + 1;
        if (*(v17 + 28 * (v33 + 1)) > v74 + 128)
        {
          break;
        }

LABEL_55:
        v33 = v58;
        v57 = v211;
        if (v58 > v56)
        {
          goto LABEL_142;
        }
      }

      v204 = v74;
      if (*(a1 + 224) == 1)
      {
        v203 = 0;
      }

      else
      {
        v203 = *(a1 + 212) + (__clz(**(a1 + 152) + 1) << 8) - 7936;
      }

      v89 = v59;
      LODWORD(v219) = (v205)(v213, a1, &v218, v59, v210, v73 + 4, v62 == 0);
      ZSTD_optLdm_processMatchCandidate(&v214, v213, &v219, v89 - v207, v210 - v89);
      v90 = v219;
      if (!v219)
      {
        v21 = v201;
LABEL_140:
        v58 = v33 + 1;
        goto LABEL_55;
      }

      v91 = (v219 - 1);
      v32 = *(v213 + 8 * v91 + 4);
      v92 = v32 + v33;
      if (v32 <= v202 && v92 <= 0xFFF && v89 + v32 < v210)
      {
        v93 = 0;
        v94 = v203 + v204;
        v21 = v201;
        do
        {
          v95 = (v213 + 8 * v93);
          v96 = v206;
          if (v93)
          {
            v96 = *(v95 - 1) + 1;
          }

          v97 = v95[1];
          if (v97 >= v96)
          {
            v98 = *v95;
            v99 = 31 - __clz(v98);
            if (*(a1 + 224) == 1)
            {
              v100 = 0;
              v101 = v33 + v97;
              v102 = v33 + v97;
              do
              {
                v104 = v97 + v33;
                v105 = v94 + ((v99 - __clz(v97 - 2)) << 8) + 12032;
                if (v104 <= v56)
                {
                  if (v105 >= *(v17 + 28 * v104))
                  {
                    break;
                  }
                }

                else
                {
                  v56 = v56;
                  v106 = v101 - v100 - v56;
                  if (v106 <= 1)
                  {
                    goto LABEL_118;
                  }

                  v107 = v106 & 0xFFFFFFFFFFFFFFFELL;
                  v108 = (v102 - v56) & 0xFFFFFFFFFFFFFFFELL;
                  v109 = (v199 + 28 * v56);
                  do
                  {
                    *(v109 - 3) = 0x40000000;
                    v109[4] = 0x40000000;
                    *v109 = 1;
                    v109[7] = 1;
                    v109 += 14;
                    v108 -= 2;
                  }

                  while (v108);
                  v56 = v107 + v56;
                  if (v106 != v107)
                  {
LABEL_118:
                    v110 = (v199 + 28 * v56);
                    do
                    {
                      ++v56;
                      *(v110 - 3) = 0x40000000;
                      *v110 = 1;
                      v110 += 7;
                    }

                    while (v56 < v104);
                  }
                }

                v103 = (v17 + 28 * v104);
                v103[2] = v97;
                v103[3] = 0;
                *v103 = v105;
                v103[1] = v98;
                --v97;
                ++v100;
                --v102;
              }

              while (v97 >= v96);
            }

            else
            {
              v111 = 0;
              if (v99 <= 0x13)
              {
                v112 = -15821;
              }

              else
              {
                v112 = (v99 << 9) - 25549;
              }

              v114 = *(a1 + 160);
              v113 = *(a1 + 168);
              v115 = v112 + *(a1 + 220) + *(a1 + 216);
              v116 = v33 + v97;
              v117 = v33 + v97;
              do
              {
                v119 = v97 - 3;
                if (v97 - 3 < 0x80)
                {
                  v120 = ZSTD_MLcode_ML_Code_36109[v119];
                }

                else
                {
                  v120 = 67 - __clz(v119);
                }

                v121 = v97 + v33;
                v122 = v94 + v115 + ((__clz(*(v113 + 4 * v99) + 1) + v99 + ML_bits_36218[v120] + __clz(*(v114 + 4 * v120) + 1)) << 8);
                if (v121 <= v56)
                {
                  if (v122 >= *(v17 + 28 * v121))
                  {
                    break;
                  }
                }

                else
                {
                  v56 = v56;
                  v123 = v116 - v111 - v56;
                  if (v123 < 2)
                  {
                    goto LABEL_135;
                  }

                  v124 = v123 & 0xFFFFFFFFFFFFFFFELL;
                  v125 = (v117 - v56) & 0xFFFFFFFFFFFFFFFELL;
                  v126 = (v199 + 28 * v56);
                  do
                  {
                    *(v126 - 3) = 0x40000000;
                    v126[4] = 0x40000000;
                    *v126 = 1;
                    v126[7] = 1;
                    v126 += 14;
                    v125 -= 2;
                  }

                  while (v125);
                  v56 = v124 + v56;
                  if (v123 != v124)
                  {
LABEL_135:
                    v127 = (v199 + 28 * v56);
                    do
                    {
                      ++v56;
                      *(v127 - 3) = 0x40000000;
                      *v127 = 1;
                      v127 += 7;
                    }

                    while (v56 < v121);
                  }
                }

                v118 = (v17 + 28 * v121);
                v118[2] = v97;
                v118[3] = 0;
                *v118 = v122;
                v118[1] = v98;
                --v97;
                ++v111;
                --v117;
              }

              while (v97 >= v96);
            }
          }

          ++v93;
        }

        while (v93 != v90);
        *(v17 + 28 * (v56 + 1)) = 0x40000000;
        goto LABEL_140;
      }

      v21 = v201;
      if (!v32)
      {
        goto LABEL_146;
      }

      v34 = *(v213 + 8 * v91);
      v133 = v33;
LABEL_148:
      v26 = *(v17 + 28 * v133 + 12);
LABEL_149:
      v139 = v17 + 28 * v33;
      v219 = *(v139 + 16);
      v220 = *(v139 + 24);
      if (v34 >= 4)
      {
        v140 = HIDWORD(v219);
        HIDWORD(v219) = v219;
        v141 = v34 - 3;
        goto LABEL_163;
      }

      if (v26)
      {
        v142 = v34;
      }

      else
      {
        v142 = v34 + 1;
      }

      v143 = v142 - 1;
      if (v142 == 4)
      {
        v144 = v219;
        v141 = v219 - 1;
      }

      else
      {
        if (v142 == 1)
        {
          v140 = v220;
          goto LABEL_164;
        }

        v141 = *(&v219 + v143);
        v144 = v219;
      }

      if (v143 == 1)
      {
        v145 = &v220;
      }

      else
      {
        v145 = &v219 + 1;
      }

      v140 = *v145;
      HIDWORD(v219) = v144;
LABEL_163:
      LODWORD(v219) = v141;
LABEL_164:
      v129 = 0;
      v135 = v33;
      *a3 = v219;
      *(a3 + 2) = v140;
      v136 = v33 + 2;
LABEL_165:
      v146 = v17 + 28 * v136;
      *v146 = v200;
      *(v146 + 4) = v34;
      *(v146 + 8) = v32;
      *(v146 + 12) = v129;
      *(v146 + 16) = v221;
      *(v146 + 24) = v222;
      v147 = (v17 + 28 * v135);
      v148 = *v147;
      v149 = *(v147 + 2);
      v150 = *(v147 + 3);
      *(v146 + 12) = v150;
      v151 = v136;
      if (!v149)
      {
        goto LABEL_172;
      }

      v151 = v136;
      do
      {
        v152 = v17 + 28 * v135;
        v153 = v17 + 28 * --v151;
        *v153 = v148;
        *(v153 + 8) = v149;
        *(v153 + 12) = v150;
        v154 = *(v152 + 24);
        *(v153 + 16) = *(v152 + 16);
        *(v153 + 24) = v154;
        v135 = v33 - (v149 + v150);
        v155 = (v17 + 28 * v135);
        v148 = *v155;
        v149 = *(v155 + 2);
        v150 = *(v155 + 3);
        *(v153 + 12) = v150;
        v33 = v135;
      }

      while (v149);
      if (v151 <= v136)
      {
LABEL_172:
        v23 = v213;
        v22 = v209;
        while (1)
        {
          v156 = (v17 + 28 * v151);
          v158 = v156[2];
          v157 = v156[3];
          if (v158)
          {
            break;
          }

          v20 = &v22[v157];
LABEL_174:
          if (++v151 > v136)
          {
            goto LABEL_170;
          }
        }

        v159 = v156[1];
        if (*(a1 + 240) != 2)
        {
          if (v157)
          {
            v160 = *(a1 + 144);
            v161 = v22;
            v162 = v157;
            do
            {
              v163 = *v161++;
              *(v160 + 4 * v163) += 2;
              --v162;
            }

            while (v162);
          }

          *(a1 + 192) += 2 * v157;
        }

        if (v157 < 0x40)
        {
          v164 = ZSTD_LLcode_LL_Code_36107[v157];
        }

        else
        {
          v164 = 50 - __clz(v157);
        }

        ++*(*(a1 + 152) + 4 * v164);
        ++*(a1 + 196);
        v165 = __clz(v159);
        ++*(*(a1 + 168) + 4 * (31 - v165));
        ++*(a1 + 204);
        v166 = v158 - 3;
        if ((v158 - 3) < 0x80)
        {
          v167 = ZSTD_MLcode_ML_Code_36109[v166];
        }

        else
        {
          v167 = 67 - __clz(v166);
        }

        ++*(*(a1 + 160) + 4 * v167);
        ++*(a1 + 200);
        v168 = &v22[v157];
        v169 = *(a2 + 24);
        if (&v22[v157] <= v212)
        {
          *v169 = *v22;
          if (v157 >= 0x11)
          {
            v172 = *(a2 + 24);
            *(v172 + 16) = *(v22 + 1);
            if ((v157 - 16) >= 0x11)
            {
              v174 = v172 + v157;
              v175 = (v172 + 32);
              v176 = (v22 + 48);
              do
              {
                *v175 = *(v176 - 1);
                v177 = *v176;
                v176 += 2;
                v175[1] = v177;
                v175 += 2;
              }

              while (v175 < v174);
              goto LABEL_220;
            }
          }

          *(a2 + 24) += v157;
          v173 = *(a2 + 8);
LABEL_222:
          *(v173 + 4) = v157;
          *v173 = v159;
          if ((v158 - 3) >= 0x10000)
          {
            v195 = (v173 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v195;
          }

          *(v173 + 6) = v158 - 3;
          *(a2 + 8) = v173 + 8;
          v22 += (v158 + v157);
          v20 = v22;
          goto LABEL_174;
        }

        if (v22 <= v212)
        {
          v171 = v169 + v212 - v22;
          *v169 = *v22;
          if (v212 - v22 >= 17)
          {
            v178 = (v169 + 1);
            v179 = (v22 + 32);
            do
            {
              *v178 = *(v179 - 1);
              v180 = *v179;
              v179 += 2;
              *(v178 + 1) = v180;
              v178 += 32;
            }

            while (v178 < v171);
            v170 = v210 - 32;
            if (v212 >= v168)
            {
              goto LABEL_220;
            }
          }

          else
          {
            v170 = v210 - 32;
            if (v212 >= v168)
            {
              goto LABEL_220;
            }
          }
        }

        else
        {
          v170 = v22;
          v171 = *(a2 + 24);
          if (v22 >= v168)
          {
LABEL_220:
            *(a2 + 24) += v157;
            v173 = *(a2 + 8);
            if (v157 >= 0x10000)
            {
              v194 = (v173 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v194;
            }

            goto LABEL_222;
          }
        }

        v181 = v168 - v170;
        if ((v168 - v170) < 8)
        {
          v183 = v171;
        }

        else if ((v171 - v170) < 0x20)
        {
          v183 = v171;
        }

        else
        {
          if (v181 < 0x20)
          {
            v182 = 0;
            goto LABEL_214;
          }

          v182 = v181 & 0xFFFFFFFFFFFFFFE0;
          v184 = (v170 + 16);
          v185 = v171 + 16;
          v186 = v181 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v187 = *v184;
            *(v185 - 1) = *(v184 - 1);
            *v185 = v187;
            v184 += 2;
            v185 += 2;
            v186 -= 32;
          }

          while (v186);
          if (v181 == v182)
          {
            goto LABEL_220;
          }

          if ((v181 & 0x18) != 0)
          {
LABEL_214:
            v188 = v181 & 0xFFFFFFFFFFFFFFF8;
            v183 = &v171[v181 & 0xFFFFFFFFFFFFFFF8];
            v189 = v182 - (v181 & 0xFFFFFFFFFFFFFFF8);
            v190 = &v170[v182];
            v191 = &v171[v182];
            do
            {
              v192 = *v190;
              v190 += 8;
              *v191 = v192;
              v191 += 8;
              v189 += 8;
            }

            while (v189);
            if (v181 == v188)
            {
              goto LABEL_220;
            }

            v170 += v188;
          }

          else
          {
            v170 += v182;
            v183 = &v171[v182];
          }
        }

        do
        {
          v193 = *v170++;
          *v183++ = v193;
        }

        while (v170 != v168);
        goto LABEL_220;
      }

      v23 = v213;
      v22 = v209;
      v20 = v211;
LABEL_170:
      if (*(a1 + 240) != 2)
      {
        *(a1 + 208) = 7936 - (__clz(*(a1 + 192) + 1) << 8);
      }

      v24 = 7936 - (__clz(*(a1 + 204) + 1) << 8);
      *(a1 + 212) = vsub_s32(0x1F0000001F00, vshl_n_s32(vclz_s32(vadd_s32(*(a1 + 196), 0x100000001)), 8uLL));
      *(a1 + 220) = v24;
LABEL_22:
      if (v20 >= v21)
      {
        v207 = v22;
        return v210 - v207;
      }
    }
  }

  return v210 - v207;
}

uint64_t *ZSTD_opt_getNextMatchAndUpdateSeqStore(uint64_t *result, int a2, unsigned int a3)
{
  v3 = result[3];
  if (v3 && (v4 = result[1], v4 < v3))
  {
    v5 = *result;
    v6 = (*result + 12 * v4);
    v7 = v6[1];
    v8 = result[2];
    v9 = v7 - v8;
    if (v8 >= v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 - v8;
    }

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    if (v10 >= a3)
    {
      result[5] = -1;
      v15 = v8 + a3;
      if (v15)
      {
        v22 = (v5 + 12 * v4 + 8);
        v23 = v4 + 1;
        v24 = -v3;
        while (v24 + v23 != 1)
        {
          v25 = *v22 + *(v22 - 1);
          v20 = v15 >= v25;
          v26 = v15 - v25;
          if (!v20)
          {
LABEL_33:
            result[2] = v15;
            return result;
          }

          result[1] = v23;
          v22 += 3;
          ++v23;
          v15 = v26;
          if (!v26)
          {
            break;
          }
        }
      }

      result[2] = 0;
    }

    else
    {
      v12 = v11 + v6[2];
      v13 = *v6;
      v14 = v12 + v10 + a2;
      *(result + 10) = v10 + a2;
      *(result + 11) = v14;
      *(result + 12) = v13;
      if (v14 <= a3 + a2)
      {
        v15 = v10 + v8 + v12;
        if (v15)
        {
          v27 = (v5 + 12 * v4 + 8);
          v28 = v4 + 1;
          v29 = -v3;
          do
          {
            if (v29 + v28 == 1)
            {
              break;
            }

            v30 = *v27 + *(v27 - 1);
            v20 = v15 >= v30;
            v31 = v15 - v30;
            if (!v20)
            {
              goto LABEL_33;
            }

            result[1] = v28;
            v27 += 3;
            ++v28;
            v15 = v31;
          }

          while (v31);
        }

        result[2] = 0;
      }

      else
      {
        *(result + 11) = a3 + a2;
        v15 = v8 + a3;
        if (v15)
        {
          v16 = (v5 + 12 * v4 + 8);
          v17 = v4 + 1;
          v18 = -v3;
          do
          {
            if (v18 + v17 == 1)
            {
              break;
            }

            v19 = *v16 + *(v16 - 1);
            v20 = v15 >= v19;
            v21 = v15 - v19;
            if (!v20)
            {
              goto LABEL_33;
            }

            result[1] = v17;
            v16 += 3;
            ++v17;
            v15 = v21;
          }

          while (v21);
        }

        result[2] = 0;
      }
    }
  }

  else
  {
    result[5] = -1;
  }

  return result;
}

int32x4_t **ZSTD_rescaleFreqs(int32x4_t **result, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  *(result + 20) = 0;
  if (*(result + 13))
  {
    if (v4 != 2)
    {
      v5 = vaddq_s32(vaddq_s32((*result)[63], vaddq_s32((*result)[61], (*result)[59])), vaddq_s32(vaddq_s32((*result)[57], vaddq_s32((*result)[55], vaddq_s32((*result)[53], vaddq_s32((*result)[51], vaddq_s32((*result)[49], vaddq_s32((*result)[47], (*result)[45])))))), vaddq_s32(vaddq_s32((*result)[43], vaddq_s32((*result)[41], vaddq_s32((*result)[39], vaddq_s32((*result)[37], vaddq_s32((*result)[35], (*result)[33]))))), vaddq_s32(vaddq_s32((*result)[31], vaddq_s32((*result)[29], vaddq_s32((*result)[27], vaddq_s32((*result)[25], (*result)[23])))), vaddq_s32(vaddq_s32((*result)[21], vaddq_s32((*result)[19], vaddq_s32((*result)[17], (*result)[15]))), vaddq_s32(vaddq_s32((*result)[13], vaddq_s32((*result)[11], (*result)[9])), vaddq_s32(vaddq_s32((*result)[7], (*result)[5]), vaddq_s32((*result)[3], (*result)[1]))))))));
      v6 = vaddq_s32(v5, vaddq_s32(vaddq_s32((*result)[62], vaddq_s32((*result)[60], (*result)[58])), vaddq_s32(vaddq_s32((*result)[56], vaddq_s32((*result)[54], vaddq_s32((*result)[52], vaddq_s32((*result)[50], vaddq_s32((*result)[48], vaddq_s32((*result)[46], (*result)[44])))))), vaddq_s32(vaddq_s32((*result)[42], vaddq_s32((*result)[40], vaddq_s32((*result)[38], vaddq_s32((*result)[36], vaddq_s32((*result)[34], (*result)[32]))))), vaddq_s32(vaddq_s32((*result)[30], vaddq_s32((*result)[28], vaddq_s32((*result)[26], vaddq_s32((*result)[24], (*result)[22])))), vaddq_s32(vaddq_s32((*result)[20], vaddq_s32((*result)[18], vaddq_s32((*result)[16], (*result)[14]))), vaddq_s32(vaddq_s32((*result)[12], vaddq_s32((*result)[10], (*result)[8])), vaddq_s32(vaddq_s32((*result)[6], (*result)[4]), vaddq_s32((*result)[2], **result)))))))));
      v7 = vaddvq_s32(v6);
      if (v7 >= 0x2000)
      {
        v8 = vdupq_n_s32(__clz(v7 >> 12) ^ 0x1F);
        v9 = &(*result)[1];
        v10 = 0uLL;
        v11 = 256;
        v12 = vnegq_s32(v8);
        v13.i64[0] = 0x100000001;
        v13.i64[1] = 0x100000001;
        v14 = 0uLL;
        do
        {
          v15 = vaddq_s32(vshlq_u32(v9[-1], v12), v13);
          v16 = vaddq_s32(vshlq_u32(*v9, v12), v13);
          v10 = vaddq_s32(v15, v10);
          v14 = vaddq_s32(v16, v14);
          v9[-1] = v15;
          *v9 = v16;
          v9 += 2;
          v11 -= 8;
        }

        while (v11);
        v7 = vaddvq_s32(vaddq_s32(v14, v10));
      }

      *(result + 12) = v7;
    }

    v17 = result[1];
    v18 = v17[4];
    v19 = v17[5];
    v20 = v17[1];
    v21 = v17[6];
    v22 = v17[7];
    v23 = v17[2];
    v24 = v17[3];
    v25 = v17[8];
    v26 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(*v17, v18), vaddq_s32(v23, v21)), vaddq_s32(vaddq_s32(v20, v19), vaddq_s32(v24, v22))), v25));
    if (v26 >= 0x1000)
    {
      v27 = vnegq_s32(vdupq_n_s32(__clz(v26 >> 11) ^ 0x1F));
      v28.i64[0] = 0x100000001;
      v28.i64[1] = 0x100000001;
      v29 = vaddq_s32(vshlq_u32(*v17, v27), v28);
      v30 = vaddq_s32(vshlq_u32(v22, v27), v28);
      v31 = vaddq_s32(vshlq_u32(v21, v27), v28);
      v32 = vaddq_s32(vshlq_u32(v19, v27), v28);
      v33 = vaddq_s32(vshlq_u32(v18, v27), v28);
      v34 = vaddq_s32(vshlq_u32(v24, v27), v28);
      v35 = vaddq_s32(vshlq_u32(v23, v27), v28);
      v36 = vaddq_s32(vshlq_u32(v20, v27), v28);
      *v17 = v29;
      v17[1] = v36;
      v17[2] = v35;
      v17[3] = v34;
      v17[4] = v33;
      v17[5] = v32;
      v17[6] = v31;
      v17[7] = v30;
      v37 = vaddq_s32(vshlq_u32(v25, v27), v28);
      v26 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v29, v33), vaddq_s32(v35, v31)), vaddq_s32(vaddq_s32(v36, v32), vaddq_s32(v34, v30))), v37));
      v17[8] = v37;
    }

    *(result + 13) = v26;
    v38 = result[2];
    v39 = v38[4];
    v40 = v38[5];
    v41 = v38[1];
    v42 = v38[6];
    v43 = v38[7];
    v44 = v38[2];
    v45 = v38[3];
    v46 = v38[10];
    v47 = v38[11];
    v48 = v38[8];
    v49 = v38[9];
    v50 = v38[12];
    v51 = v38[13].u32[0];
    v52 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(*v38, v39), vaddq_s32(v44, v42)), vaddq_s32(vaddq_s32(v41, v40), vaddq_s32(v45, v43))), vaddq_s32(vaddq_s32(vaddq_s32(v48, v46), vaddq_s32(v49, v47)), v50))) + v51;
    if (v52 >= 0x1000)
    {
      v53 = __clz(v52 >> 11) ^ 0x1F;
      v54 = vnegq_s32(vdupq_n_s32(v53));
      v55.i64[0] = 0x100000001;
      v55.i64[1] = 0x100000001;
      v56 = vaddq_s32(vshlq_u32(*v38, v54), v55);
      v57 = vaddq_s32(vshlq_u32(v41, v54), v55);
      *v38 = v56;
      v38[1] = v57;
      v58 = vaddq_s32(vshlq_u32(v44, v54), v55);
      v59 = vaddq_s32(vshlq_u32(v45, v54), v55);
      v38[2] = v58;
      v38[3] = v59;
      v60 = vaddq_s32(vshlq_u32(v39, v54), v55);
      v61 = vaddq_s32(vshlq_u32(v40, v54), v55);
      v38[4] = v60;
      v38[5] = v61;
      v62 = vaddq_s32(vshlq_u32(v42, v54), v55);
      v63 = vaddq_s32(vshlq_u32(v43, v54), v55);
      v38[6] = v62;
      v38[7] = v63;
      v64 = vaddq_s32(vshlq_u32(v48, v54), v55);
      v65 = vaddq_s32(vshlq_u32(v49, v54), v55);
      v38[8] = v64;
      v38[9] = v65;
      v66 = vaddq_s32(vshlq_u32(v46, v54), v55);
      v67 = vaddq_s32(vshlq_u32(v47, v54), v55);
      v38[10] = v66;
      v38[11] = v67;
      v68 = vaddq_s32(vshlq_u32(v50, v54), v55);
      v38[12] = v68;
      v69 = (v51 >> v53) + 1;
      v52 = vaddvq_s32(v68) + v69 + vaddvq_s32(vaddq_s32(vaddq_s32(v67, vaddq_s32(v65, vaddq_s32(v63, vaddq_s32(v61, vaddq_s32(v59, v57))))), vaddq_s32(v66, vaddq_s32(v64, vaddq_s32(v62, vaddq_s32(v60, vaddq_s32(v58, v56)))))));
      v38[13].i32[0] = v69;
    }

    *(result + 14) = v52;
    v70 = result[3];
    v71 = v70[4];
    v72 = v70[5];
    v73 = v70[1];
    v75 = v70[6];
    v74 = v70[7];
    v76 = v70[2];
    v77 = v70[3];
    v78 = vaddq_s32(*v70, v71);
    v79 = vaddvq_s32(vaddq_s32(vaddq_s32(v78, vaddq_s32(v76, v75)), vaddq_s32(vaddq_s32(v73, v72), vaddq_s32(v77, v74))));
    if (v79 >= 0x1000)
    {
      v80.i64[0] = v75 >> 32;
      v80.i64[1] = *(&v70[6] + 8) >> 32;
      v81 = vdupq_laneq_s32(v80, 3);
      v78.i64[0] = v74 >> 32;
      v82 = vextq_s8(vextq_s8(v81, v81, 4uLL), v78, 0xCuLL);
      v82.i32[3] = HIDWORD(*&v70[7]);
      v83 = vnegq_s32(vdupq_n_s32(__clz(v79 >> 11) ^ 0x1F));
      v84 = vshlq_u32(vextq_s8(vextq_s8(v80, v75, 4uLL), v80, 0xCuLL), v83);
      v85 = vshlq_u32(v82, v83);
      v86 = vshlq_u32(*v70, v83);
      v87 = vshlq_u32(v73, v83);
      v88 = vshlq_u32(v76, v83);
      v89 = vshlq_u32(v77, v83);
      v90 = vshlq_u32(v71, v83);
      v91 = vshlq_u32(v72, v83);
      v83.i64[0] = 0x100000001;
      v83.i64[1] = 0x100000001;
      v92 = vaddq_s32(v84, v83);
      v93 = vaddq_s32(v85, v83);
      v94 = vaddq_s32(v91, v83);
      v95 = vaddq_s32(v90, v83);
      v96 = vaddq_s32(v89, v83);
      v97 = vaddq_s32(v88, v83);
      v98 = vaddq_s32(v87, v83);
      v99 = vaddq_s32(v86, v83);
      *v70 = v99;
      v70[1] = v98;
      v70[2] = v97;
      v70[3] = v96;
      v70[4] = v95;
      v70[5] = v94;
      v79 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v99, v95), vaddq_s32(v97, v92)), vaddq_s32(vaddq_s32(v98, v94), vaddq_s32(v96, v93))));
      v70[6] = v92;
      v70[7] = v93;
    }

LABEL_54:
    *(result + 15) = v79;
    goto LABEL_55;
  }

  if (a3 <= 8)
  {
    *(result + 20) = 1;
  }

  v100 = result[11];
  if (v100[128].i32[2] != 2)
  {
    v122 = a4;
    v123 = result;
    if (v4 != 2)
    {
      v125 = *result;
      bzero(*result, 0x400uLL);
      if (a3)
      {
        if (a3 >= 1)
        {
          v127 = a2;
          do
          {
            v128 = *v127++;
            ++*(v125 + 4 * v128);
          }

          while (v127 < &a2[a3]);
        }

        LODWORD(v129) = 256;
        do
        {
          v129 = (v129 - 1);
        }

        while (!*(v125 + 4 * v129));
        if (v129 >= 7)
        {
          v130 = (v129 + 1) & 0x1FFFFFFF8;
          do
          {
            v130 -= 8;
          }

          while (v130);
        }
      }

      result = v123;
      v131 = &(*v123)[1];
      v132 = 0uLL;
      v133 = 256;
      v134 = 0uLL;
      do
      {
        v135 = vsubq_s32(vshrq_n_u32(v131[-1], 8uLL), vtstq_s32(v131[-1], v131[-1]));
        v136 = vsubq_s32(vshrq_n_u32(*v131, 8uLL), vtstq_s32(*v131, *v131));
        v132 = vaddq_s32(v135, v132);
        v134 = vaddq_s32(v136, v134);
        v131[-1] = v135;
        *v131 = v136;
        v131 += 2;
        v133 -= 8;
      }

      while (v133);
      *(v123 + 12) = vaddvq_s32(vaddq_s32(v134, v132));
    }

    v137 = result[1];
    v137[6] = xmmword_182B0CF08;
    v137[7] = unk_182B0CF18;
    v137[8] = xmmword_182B0CF28;
    v137[2] = xmmword_182B0CEC8;
    v137[3] = unk_182B0CED8;
    v137[4] = xmmword_182B0CEE8;
    v137[5] = unk_182B0CEF8;
    *v137 = xmmword_182B0CEA8;
    v137[1] = unk_182B0CEB8;
    *(result + 13) = 40;
    memset_pattern16(result[2], &unk_182B08EC0, 0xD4uLL);
    result = v123;
    v79 = 53;
    *(v123 + 14) = 53;
    v138 = v123[3];
    v138[4] = xmmword_182B0CF78;
    v138[5] = unk_182B0CF88;
    v138[6] = xmmword_182B0CF98;
    v138[7] = unk_182B0CFA8;
    *v138 = xmmword_182B0CF38;
    v138[1] = unk_182B0CF48;
    v138[2] = xmmword_182B0CF58;
    v138[3] = unk_182B0CF68;
    a4 = v122;
    goto LABEL_54;
  }

  *(result + 20) = 0;
  if (v4 != 2)
  {
    v150 = 0;
    *(result + 12) = 0;
    v151 = *result;
    do
    {
      if (v100->u8[1] >= v150 && v100->i64[v150 + 1])
      {
        v152 = 1 << (11 - v100->i64[v150 + 1]);
      }

      else
      {
        v152 = 1;
      }

      *(v151 + 4 * v150) = v152;
      *(result + 12) += v152;
      ++v150;
    }

    while (v150 != 256);
  }

  v101 = 0;
  v102 = 1 << (v100[268].i16[0] - 1);
  if (!v100[268].i16[0])
  {
    v102 = 1;
  }

  *(result + 13) = 0;
  v103 = result[1];
  v104 = &v100[268].i32[v102 + 2];
  do
  {
    v105 = *v104;
    v104 += 2;
    v106 = 1 << (10 - ((v105 + 0xFFFF) >> 16));
    if ((v105 + 0xFFFF) < 0x10000)
    {
      v107 = 1;
    }

    else
    {
      v107 = v106;
    }

    v103->i32[v101] = v107;
    *(result + 13) += v107;
    ++v101;
  }

  while (v101 != 36);
  v108 = 0;
  v109 = 1 << (v100[177].i16[2] - 1);
  if (!v100[177].i16[2])
  {
    v109 = 1;
  }

  *(result + 14) = 0;
  v110 = result[2];
  v111 = &v100[177].i32[v109 + 3];
  do
  {
    v112 = *v111;
    v111 += 2;
    v113 = 1 << (10 - ((v112 + 0xFFFF) >> 16));
    if ((v112 + 0xFFFF) < 0x10000)
    {
      v114 = 1;
    }

    else
    {
      v114 = v113;
    }

    v110->i32[v108] = v114;
    *(result + 14) += v114;
    ++v108;
  }

  while (v108 != 53);
  v115 = 0;
  v116 = 1 << (v100[129].i16[0] - 1);
  if (!v100[129].i16[0])
  {
    v116 = 1;
  }

  *(result + 15) = 0;
  v117 = result[3];
  v118 = &v100[129].i32[v116 + 2];
  do
  {
    v119 = *v118;
    v118 += 2;
    v120 = 1 << (10 - ((v119 + 0xFFFF) >> 16));
    if ((v119 + 0xFFFF) < 0x10000)
    {
      v121 = 1;
    }

    else
    {
      v121 = v120;
    }

    v117->i32[v115] = v121;
    v79 = v121 + *(result + 15);
    *(result + 15) = v79;
    ++v115;
  }

  while (v115 != 32);
LABEL_55:
  if (*(result + 24) != 2)
  {
    v139 = *(result + 12) + 1;
    v140 = __clz(v139);
    v141 = (v139 << 8 >> ~v140) + ((31 - v140) << 8);
    if (!a4)
    {
      v141 = 7936 - (v140 << 8);
    }

    *(result + 16) = v141;
  }

  v142 = *(result + 13) + 1;
  v143 = __clz(v142);
  if (a4)
  {
    v144 = (v142 << 8 >> ~v143) + ((31 - v143) << 8);
    v145.i32[0] = *(result + 14);
    v145.i32[1] = v79;
    v146 = vadd_s32(v145, 0x100000001);
    v147 = vsub_s32(0x1F0000001FLL, vclz_s32(v146));
    v148 = vadd_s32(vshl_n_s32(v147, 8uLL), vshl_u32(vshl_n_s32(v146, 8uLL), vneg_s32(v147)));
  }

  else
  {
    v144 = 7936 - (v143 << 8);
    v149.i32[0] = *(result + 14);
    v149.i32[1] = v79;
    v148 = vsub_s32(0x1F0000001F00, vshl_n_s32(vclz_s32(vadd_s32(v149, 0x100000001)), 8uLL));
  }

  *(result + 17) = v144;
  result[9] = v148;
  return result;
}

uint64_t ZSTD_optLdm_processMatchCandidate(uint64_t result, uint64_t a2, _DWORD *a3, unsigned int a4, unsigned int a5)
{
  v5 = *(result + 24);
  if (v5)
  {
    v6 = *(result + 8);
    if (v6 < v5)
    {
      v7 = *(result + 44);
      if (a4 >= v7)
      {
        v8 = a2;
        v9 = a3;
        if (a4 > v7)
        {
          v10 = a4 - v7 + *(result + 16);
          if (v10)
          {
            v11 = 12 * v6;
            v12 = v6 + 1;
            v13 = -v5;
            while (v13 + v12 != 1)
            {
              v14 = *(*result + v11 + 8) + *(*result + v11 + 4);
              v21 = v10 >= v14;
              v15 = v10 - v14;
              if (!v21)
              {
                v16 = v10;
                goto LABEL_12;
              }

              *(result + 8) = v12;
              v11 += 12;
              ++v12;
              v10 = v15;
              if (!v15)
              {
                break;
              }
            }
          }

          v16 = 0;
LABEL_12:
          *(result + 16) = v16;
        }

        v17 = result;
        v18 = a4;
        ZSTD_opt_getNextMatchAndUpdateSeqStore(result, a4, a5);
        a4 = v18;
        result = v17;
        v7 = *(v17 + 44);
        a3 = v9;
        a2 = v8;
      }

      v19 = v7 - a4;
      v21 = *(result + 40) <= a4 && v7 > a4 && v19 >= 3;
      if (v21)
      {
        v22 = *a3;
        if (!v22 || v22 <= 0xFFF && v19 > *(a2 + 8 * (v22 - 1) + 4))
        {
          v23 = *(result + 48) + 3;
          *(a2 + 8 * v22 + 4) = v19;
          *(a2 + 8 * (*a3)++) = v23;
        }
      }
    }
  }

  return result;
}

uint64_t ZSTD_btGetAllMatches_dictMatchState_6(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a4 - v8;
  v14 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v15 = a8;
    v16 = a6;
    v17 = a7;
    v18 = a1;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v13, 6, 0) + v9;
    }

    while (v9 < v13);
    v8 = *(a2 + 8);
    a4 = v19;
    v14 = v19 - v8;
    a1 = v18;
    a7 = v17;
    a6 = v16;
    a8 = v15;
  }

  v20 = a1;
  *(a2 + 44) = v13;
  v21 = *(a2 + 276);
  v22 = *(a2 + 112);
  v146 = 0xCF1BBCDCBF9B0000 * *a4;
  v149 = v146 >> -*(a2 + 264);
  v23 = *(v22 + 4 * v149);
  if (v21 >= 0xFFF)
  {
    v21 = 4095;
  }

  v150 = v21;
  v24 = *(a2 + 128);
  v148 = -1 << (*(a2 + 260) - 1);
  v25 = *(a2 + 24);
  v155 = (v8 + v25);
  if (v14 >= ~v148)
  {
    v26 = v14 + v148 + 1;
  }

  else
  {
    v26 = 0;
  }

  v161 = v26;
  v27 = 1 << *(a2 + 256);
  if (v14 - *(a2 + 28) > v27 && *(a2 + 40) == 0)
  {
    v29 = v14 - v27;
  }

  else
  {
    v29 = *(a2 + 28);
  }

  if (v29 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v162 = v30;
  v163[0] = 0;
  v147 = *(a2 + 268);
  v31 = *(a2 + 248);
  v32 = *(v31 + 8);
  v33 = *v31;
  v34 = *v31 - v32;
  v35 = *(v31 + 28);
  v36 = v29 - v34;
  v144 = *(v31 + 264);
  v145 = v31;
  v37 = ~(-1 << (*(v31 + 260) - 1));
  v157 = v37;
  v143 = v34;
  v38 = v34 + (-1 << (*(v31 + 260) - 1)) + 1;
  if (v34 - v35 <= v37)
  {
    v38 = v35;
  }

  v158 = v38;
  v39 = (a8 - 1);
  v160 = v35;
  v159 = v32;
  v156 = v29 - v34;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v40 = v14 - v25;
    v41 = v32 - v36;
    v42 = v14 - v35 - v36;
    v43 = (a4 + 4);
    v44 = a5 - 7;
    v152 = a5 - 1;
    v153 = a5 - 3;
    v141 = v41 + 12;
    v142 = v22;
    v154 = v25 + v8 + 8;
    v45 = a7;
    v46 = v150;
    v47 = v20;
    v48 = v33;
    v49 = v25;
    v151 = v42;
    while (1)
    {
      if (v45 == 3)
      {
        v51 = *a6 - 1;
      }

      else
      {
        v51 = a6[v45];
      }

      v52 = v14 - v51;
      if (v51 - 1 < v40)
      {
        if (v52 < v29 || *a4 != *(a4 - v51))
        {
          goto LABEL_55;
        }

        v54 = -v51;
        v55 = &v43[v54];
        if (v44 <= v43)
        {
          v58 = (a4 + 4);
LABEL_57:
          if (v58 < v153 && *v55 == *v58)
          {
            v55 += 4;
            v58 += 4;
          }

          if (v58 < v152 && *v55 == *v58)
          {
            v55 += 2;
            v58 += 2;
          }

          if (v58 >= a5)
          {
LABEL_67:
            LODWORD(v58) = v58 - v43;
          }

          else
          {
            if (*v55 == *v58)
            {
              LODWORD(v58) = v58 + 1;
            }

            LODWORD(v58) = v58 - v43;
          }

          goto LABEL_104;
        }

        v56 = *v55;
        if (v56 == *v43)
        {
          v57 = (a4 + 12);
          v55 = (a4 + 12 + v54);
          while (1)
          {
            v58 = v57;
            if (v57 >= v44)
            {
              goto LABEL_57;
            }

            v60 = *v55;
            v55 += 8;
            v59 = v60;
            v57 += 8;
            if (v60 != *v58)
            {
              v58 += __clz(__rbit64(*v58 ^ v59)) >> 3;
              goto LABEL_67;
            }
          }
        }

        v58 = (__clz(__rbit64(*v43 ^ v56)) >> 3);
        goto LABEL_104;
      }

      v61 = v51 - 1 >= v42 || (v52 - v49) > 0xFFFFFFFC;
      if (v61 || (v62 = v41 + v52, *a4 != *(v41 + v52)))
      {
LABEL_55:
        v72 = 0;
        goto LABEL_105;
      }

      v63 = v41;
      v64 = (v62 + 4);
      v65 = &v48[a4 - v62];
      if (v65 >= a5)
      {
        v65 = a5;
      }

      if (v65 - 7 <= v43)
      {
        break;
      }

      if (*v64 == *v43)
      {
        v140 = v48;
        v66 = v24;
        v67 = (v141 + v52);
        v68 = (a4 + 12);
        while (1)
        {
          v69 = v68;
          if (v68 >= v65 - 7)
          {
            break;
          }

          v71 = *v67;
          v67 += 4;
          v70 = v71;
          v68 += 8;
          if (v71 != *v69)
          {
            v58 = (&v69[__clz(__rbit64(*v69 ^ v70)) >> 3] - v43);
            v24 = v66;
            v48 = v140;
            v22 = v142;
            v46 = v150;
            goto LABEL_82;
          }
        }

        v24 = v66;
        v48 = v140;
        v22 = v142;
        v46 = v150;
        goto LABEL_72;
      }

      v58 = (__clz(__rbit64(*v43 ^ *v64)) >> 3);
LABEL_82:
      if (&v58[v64] == v48)
      {
        v73 = &v58[v43];
        v41 = v63;
        if (v44 > &v58[v43])
        {
          if (*v155 == *v73)
          {
            v74 = 0;
            v75 = &v58[a4];
            while (1)
            {
              v76 = &v75[v74 + 12];
              if (v76 >= v44)
              {
                break;
              }

              v77 = *(v154 + v74);
              v74 += 8;
              if (v77 != *v76)
              {
                v73 = (&v75[v74 + 4 + (__clz(__rbit64(*v76 ^ v77)) >> 3)] - v73);
                v22 = v142;
                v41 = v63;
                v42 = v151;
                goto LABEL_103;
              }
            }

            v78 = (v154 + v74);
            v79 = &v58[a4 + 12 + v74];
            v41 = v63;
LABEL_93:
            v42 = v151;
            if (v79 < v153 && *v78 == *v79)
            {
              ++v78;
              v79 += 4;
            }

            if (v79 < v152 && *v78 == *v79)
            {
              v78 = (v78 + 2);
              v79 += 2;
            }

            if (v79 < a5 && *v78 == *v79)
            {
              LODWORD(v79) = v79 + 1;
            }

            v22 = v142;
            LODWORD(v73) = v79 - v73;
          }

          else
          {
            v73 = (__clz(__rbit64(*v73 ^ *v155)) >> 3);
            v42 = v151;
          }

LABEL_103:
          LODWORD(v58) = v73 + v58;
          goto LABEL_104;
        }

        v78 = v155;
        v79 = &v58[v43];
        goto LABEL_93;
      }

      v41 = v63;
      v42 = v151;
LABEL_104:
      v72 = v58 + 4;
LABEL_105:
      v50 = v72;
      if (v39 >= v72)
      {
        v50 = v39;
      }

      else
      {
        v80 = (v47 + 8 * result);
        *v80 = v45 - a7 + 1;
        v80[1] = v72;
        result = (result + 1);
        if (v72 > v46 || (a4 + v72) == a5)
        {
          return result;
        }
      }

      ++v45;
      v39 = v50;
      if (v45 == a7 + 3)
      {
        goto LABEL_110;
      }
    }

    v67 = v64;
    v69 = (a4 + 4);
LABEL_72:
    if (v69 < v65 - 3 && *v67 == *v69)
    {
      v67 += 2;
      v69 += 4;
    }

    if (v69 < v65 - 1 && *v67 == *v69)
    {
      ++v67;
      v69 += 2;
    }

    if (v69 < v65 && *v67 == *v69)
    {
      ++v69;
    }

    v58 = (v69 - v43);
    goto LABEL_82;
  }

  v50 = v39;
  v47 = v20;
  v48 = v33;
  v49 = v25;
LABEL_110:
  v81 = (v24 + 8 * (v14 & ~v148));
  v82 = v14 + 9;
  v83 = 1 << v147;
  *(v22 + 4 * v149) = v14;
  if (v23 < v162)
  {
    *v81 = 0;
    v84 = v160;
    goto LABEL_157;
  }

  v85 = 0;
  v86 = 0;
  v87 = v81 + 1;
  v88 = a5 - 7;
  v89 = a5 - 3;
  while (1)
  {
    if (v85 >= v86)
    {
      v90 = v86;
    }

    else
    {
      v90 = v85;
    }

    v91 = v8 + v23;
    v92 = (a4 + v90);
    v93 = (v91 + v90);
    if (v88 <= a4 + v90)
    {
      v98 = (a4 + v90);
      if (v92 >= v89)
      {
        goto LABEL_126;
      }

      goto LABEL_124;
    }

    v94 = *v93;
    if (v94 == *v92)
    {
      v95 = v24;
      v96 = v8 + 8 + v23;
      v97 = a4;
      while (1)
      {
        v98 = (v97 + v90 + 8);
        if (v98 >= v88)
        {
          break;
        }

        v99 = *(v96 + v90);
        v100 = *v98;
        v96 += 8;
        ++v97;
        if (v99 != v100)
        {
          v101 = v97 + (__clz(__rbit64(v100 ^ v99)) >> 3) - a4;
          v24 = v95;
          goto LABEL_136;
        }
      }

      v93 = (v96 + v90);
      v24 = v95;
      if (v98 >= v89)
      {
LABEL_126:
        if (v98 >= (a5 - 1))
        {
          if (v98 >= a5)
          {
LABEL_134:
            v101 = v98 - v92;
            goto LABEL_136;
          }
        }

        else
        {
          if (*v93 == *v98)
          {
            ++v93;
            ++v98;
          }

          if (v98 >= a5)
          {
            goto LABEL_134;
          }
        }

        if (*v93 == *v98)
        {
          v98 = (v98 + 1);
        }

        goto LABEL_134;
      }

LABEL_124:
      if (*v93 == *v98)
      {
        v93 += 2;
        v98 += 2;
      }

      goto LABEL_126;
    }

    v101 = __clz(__rbit64(*v92 ^ v94)) >> 3;
LABEL_136:
    v102 = v101 + v90;
    if (v102 > v50)
    {
      if (v102 > v82 - v23)
      {
        v82 = v23 + v102;
      }

      v103 = (v47 + 8 * result);
      *v103 = v14 + 3 - v23;
      v103[1] = v102;
      result = (result + 1);
      if (v102 > 0x1000 || a4 + v102 == a5)
      {
        *v87 = 0;
        *v81 = 0;
        goto LABEL_222;
      }

      v50 = v102;
    }

    v105 = (v24 + 8 * (v23 & ~v148));
    if (*(v91 + v102) < *(a4 + v102))
    {
      break;
    }

    *v87 = v23;
    if (v23 <= v161)
    {
      v87 = v163;
      goto LABEL_156;
    }

    v87 = (v24 + 8 * (v23 & ~v148));
    v86 = v102;
    if (!--v83)
    {
      goto LABEL_156;
    }

LABEL_113:
    v23 = *v105;
    if (*v105 < v162)
    {
      goto LABEL_156;
    }
  }

  *v81 = v23;
  if (v23 > v161)
  {
    v81 = v105 + 1;
    v85 = v102;
    ++v105;
    if (!--v83)
    {
      goto LABEL_156;
    }

    goto LABEL_113;
  }

  v81 = v163;
LABEL_156:
  *v87 = 0;
  *v81 = 0;
  v84 = v160;
  if (v83)
  {
LABEL_157:
    v106 = *(*(v145 + 112) + 4 * (v146 >> -v144));
    if (v106 > v84)
    {
      v107 = 0;
      v108 = 0;
      v109 = *(v145 + 128);
      v110 = a5 - 7;
      v111 = v14 + 3;
      v112 = v49 + v8 + 8;
      v113 = v8 + v156;
      while (1)
      {
        if (v107 >= v108)
        {
          v114 = v108;
        }

        else
        {
          v114 = v107;
        }

        v115 = v159 + v106;
        v116 = (a4 + v114);
        v117 = (v115 + v114);
        v118 = &v48[a4 - v115];
        if (v118 >= a5)
        {
          v118 = a5;
        }

        if (v118 - 7 <= v116)
        {
          v125 = (v115 + v114);
          v121 = (a4 + v114);
        }

        else
        {
          if (*v117 != *v116)
          {
            v124 = __clz(__rbit64(*v116 ^ *v117)) >> 3;
            goto LABEL_183;
          }

          v119 = v159 + 8 + v106;
          v120 = a4;
          while (1)
          {
            v121 = (v120 + v114 + 8);
            if (v121 >= (v118 - 7))
            {
              break;
            }

            v122 = *(v119 + v114);
            v123 = *v121;
            v119 += 8;
            ++v120;
            if (v122 != v123)
            {
              v124 = v120 + (__clz(__rbit64(v123 ^ v122)) >> 3) - a4;
              goto LABEL_183;
            }
          }

          v125 = (v119 + v114);
        }

        if (v121 < (v118 - 3) && *v125 == *v121)
        {
          ++v125;
          v121 += 2;
        }

        if (v121 < (v118 - 1) && *v125 == *v121)
        {
          v125 = (v125 + 2);
          ++v121;
        }

        if (v121 < v118 && *v125 == *v121)
        {
          v121 = (v121 + 1);
        }

        v124 = v121 - v116;
LABEL_183:
        if (v117 + v124 == v48)
        {
          v127 = &v116[v124];
          if (v110 > &v116[v124])
          {
            v126 = v160;
            if (*v155 == *v127)
            {
              v128 = 0;
              while (1)
              {
                v129 = &v127[v128 + 8];
                if (v129 >= v110)
                {
                  break;
                }

                v130 = *(v112 + v128);
                v128 += 8;
                if (v130 != *v129)
                {
                  v131 = v128 + (__clz(__rbit64(*v129 ^ v130)) >> 3);
                  goto LABEL_204;
                }
              }

              v132 = (v112 + v128);
LABEL_194:
              if (v129 < a5 - 3 && *v132 == *v129)
              {
                ++v132;
                v129 += 4;
              }

              if (v129 < a5 - 1 && *v132 == *v129)
              {
                v132 = (v132 + 2);
                v129 += 2;
              }

              if (v129 < a5 && *v132 == *v129)
              {
                ++v129;
              }

              v126 = v160;
              v131 = v129 - v127;
            }

            else
            {
              v131 = __clz(__rbit64(*v127 ^ *v155)) >> 3;
            }

LABEL_204:
            v124 += v131;
            goto LABEL_205;
          }

          v132 = v155;
          v129 = &v116[v124];
          goto LABEL_194;
        }

        v126 = v160;
LABEL_205:
        v133 = v124 + v114;
        if (v124 + v114 + v106 >= v143)
        {
          v115 = v113 + v106;
        }

        if (v133 <= v50)
        {
          goto LABEL_225;
        }

        if (v133 > v82 - (v106 + v156))
        {
          v82 = v106 + v156 + v133;
        }

        v134 = (v47 + 8 * result);
        *v134 = v111 - (v106 + v156);
        v134[1] = v133;
        result = (result + 1);
        v135 = v133 > 0x1000 || a4 + v133 == a5;
        v50 = v124 + v114;
        if (!v135)
        {
LABEL_225:
          if (v106 > v158)
          {
            v136 = *(v115 + v133);
            v137 = *(a4 + v133);
            v138 = v136 >= v137;
            v139 = v136 < v137;
            if (v138)
            {
              v108 = v124 + v114;
            }

            if (!v138)
            {
              v107 = v124 + v114;
            }

            if (--v83)
            {
              v106 = *(v109 + 8 * (v106 & v157) + 4 * v139);
              if (v106 > v126)
              {
                continue;
              }
            }
          }
        }

        break;
      }
    }
  }

LABEL_222:
  *(a2 + 44) = v82 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_dictMatchState_5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a4 - v8;
  v14 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v15 = a8;
    v16 = a6;
    v17 = a7;
    v18 = a1;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v13, 5, 0) + v9;
    }

    while (v9 < v13);
    v8 = *(a2 + 8);
    a4 = v19;
    v14 = v19 - v8;
    a1 = v18;
    a7 = v17;
    a6 = v16;
    a8 = v15;
  }

  v20 = a1;
  *(a2 + 44) = v13;
  v21 = *(a2 + 276);
  v22 = *(a2 + 112);
  v146 = 0xCF1BBCDCBB000000 * *a4;
  v149 = v146 >> -*(a2 + 264);
  v23 = *(v22 + 4 * v149);
  if (v21 >= 0xFFF)
  {
    v21 = 4095;
  }

  v150 = v21;
  v24 = *(a2 + 128);
  v148 = -1 << (*(a2 + 260) - 1);
  v25 = *(a2 + 24);
  v155 = (v8 + v25);
  if (v14 >= ~v148)
  {
    v26 = v14 + v148 + 1;
  }

  else
  {
    v26 = 0;
  }

  v161 = v26;
  v27 = 1 << *(a2 + 256);
  if (v14 - *(a2 + 28) > v27 && *(a2 + 40) == 0)
  {
    v29 = v14 - v27;
  }

  else
  {
    v29 = *(a2 + 28);
  }

  if (v29 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v162 = v30;
  v163[0] = 0;
  v147 = *(a2 + 268);
  v31 = *(a2 + 248);
  v32 = *(v31 + 8);
  v33 = *v31;
  v34 = *v31 - v32;
  v35 = *(v31 + 28);
  v36 = v29 - v34;
  v144 = *(v31 + 264);
  v145 = v31;
  v37 = ~(-1 << (*(v31 + 260) - 1));
  v157 = v37;
  v143 = v34;
  v38 = v34 + (-1 << (*(v31 + 260) - 1)) + 1;
  if (v34 - v35 <= v37)
  {
    v38 = v35;
  }

  v158 = v38;
  v39 = (a8 - 1);
  v160 = v35;
  v159 = v32;
  v156 = v29 - v34;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v40 = v14 - v25;
    v41 = v32 - v36;
    v42 = v14 - v35 - v36;
    v43 = (a4 + 4);
    v44 = a5 - 7;
    v152 = a5 - 1;
    v153 = a5 - 3;
    v141 = v41 + 12;
    v142 = v22;
    v154 = v25 + v8 + 8;
    v45 = a7;
    v46 = v150;
    v47 = v20;
    v48 = v33;
    v49 = v25;
    v151 = v42;
    while (1)
    {
      if (v45 == 3)
      {
        v51 = *a6 - 1;
      }

      else
      {
        v51 = a6[v45];
      }

      v52 = v14 - v51;
      if (v51 - 1 < v40)
      {
        if (v52 < v29 || *a4 != *(a4 - v51))
        {
          goto LABEL_55;
        }

        v54 = -v51;
        v55 = &v43[v54];
        if (v44 <= v43)
        {
          v58 = (a4 + 4);
LABEL_57:
          if (v58 < v153 && *v55 == *v58)
          {
            v55 += 4;
            v58 += 4;
          }

          if (v58 < v152 && *v55 == *v58)
          {
            v55 += 2;
            v58 += 2;
          }

          if (v58 >= a5)
          {
LABEL_67:
            LODWORD(v58) = v58 - v43;
          }

          else
          {
            if (*v55 == *v58)
            {
              LODWORD(v58) = v58 + 1;
            }

            LODWORD(v58) = v58 - v43;
          }

          goto LABEL_104;
        }

        v56 = *v55;
        if (v56 == *v43)
        {
          v57 = (a4 + 12);
          v55 = (a4 + 12 + v54);
          while (1)
          {
            v58 = v57;
            if (v57 >= v44)
            {
              goto LABEL_57;
            }

            v60 = *v55;
            v55 += 8;
            v59 = v60;
            v57 += 8;
            if (v60 != *v58)
            {
              v58 += __clz(__rbit64(*v58 ^ v59)) >> 3;
              goto LABEL_67;
            }
          }
        }

        v58 = (__clz(__rbit64(*v43 ^ v56)) >> 3);
        goto LABEL_104;
      }

      v61 = v51 - 1 >= v42 || (v52 - v49) > 0xFFFFFFFC;
      if (v61 || (v62 = v41 + v52, *a4 != *(v41 + v52)))
      {
LABEL_55:
        v72 = 0;
        goto LABEL_105;
      }

      v63 = v41;
      v64 = (v62 + 4);
      v65 = &v48[a4 - v62];
      if (v65 >= a5)
      {
        v65 = a5;
      }

      if (v65 - 7 <= v43)
      {
        break;
      }

      if (*v64 == *v43)
      {
        v140 = v48;
        v66 = v24;
        v67 = (v141 + v52);
        v68 = (a4 + 12);
        while (1)
        {
          v69 = v68;
          if (v68 >= v65 - 7)
          {
            break;
          }

          v71 = *v67;
          v67 += 4;
          v70 = v71;
          v68 += 8;
          if (v71 != *v69)
          {
            v58 = (&v69[__clz(__rbit64(*v69 ^ v70)) >> 3] - v43);
            v24 = v66;
            v48 = v140;
            v22 = v142;
            v46 = v150;
            goto LABEL_82;
          }
        }

        v24 = v66;
        v48 = v140;
        v22 = v142;
        v46 = v150;
        goto LABEL_72;
      }

      v58 = (__clz(__rbit64(*v43 ^ *v64)) >> 3);
LABEL_82:
      if (&v58[v64] == v48)
      {
        v73 = &v58[v43];
        v41 = v63;
        if (v44 > &v58[v43])
        {
          if (*v155 == *v73)
          {
            v74 = 0;
            v75 = &v58[a4];
            while (1)
            {
              v76 = &v75[v74 + 12];
              if (v76 >= v44)
              {
                break;
              }

              v77 = *(v154 + v74);
              v74 += 8;
              if (v77 != *v76)
              {
                v73 = (&v75[v74 + 4 + (__clz(__rbit64(*v76 ^ v77)) >> 3)] - v73);
                v22 = v142;
                v41 = v63;
                v42 = v151;
                goto LABEL_103;
              }
            }

            v78 = (v154 + v74);
            v79 = &v58[a4 + 12 + v74];
            v41 = v63;
LABEL_93:
            v42 = v151;
            if (v79 < v153 && *v78 == *v79)
            {
              ++v78;
              v79 += 4;
            }

            if (v79 < v152 && *v78 == *v79)
            {
              v78 = (v78 + 2);
              v79 += 2;
            }

            if (v79 < a5 && *v78 == *v79)
            {
              LODWORD(v79) = v79 + 1;
            }

            v22 = v142;
            LODWORD(v73) = v79 - v73;
          }

          else
          {
            v73 = (__clz(__rbit64(*v73 ^ *v155)) >> 3);
            v42 = v151;
          }

LABEL_103:
          LODWORD(v58) = v73 + v58;
          goto LABEL_104;
        }

        v78 = v155;
        v79 = &v58[v43];
        goto LABEL_93;
      }

      v41 = v63;
      v42 = v151;
LABEL_104:
      v72 = v58 + 4;
LABEL_105:
      v50 = v72;
      if (v39 >= v72)
      {
        v50 = v39;
      }

      else
      {
        v80 = (v47 + 8 * result);
        *v80 = v45 - a7 + 1;
        v80[1] = v72;
        result = (result + 1);
        if (v72 > v46 || (a4 + v72) == a5)
        {
          return result;
        }
      }

      ++v45;
      v39 = v50;
      if (v45 == a7 + 3)
      {
        goto LABEL_110;
      }
    }

    v67 = v64;
    v69 = (a4 + 4);
LABEL_72:
    if (v69 < v65 - 3 && *v67 == *v69)
    {
      v67 += 2;
      v69 += 4;
    }

    if (v69 < v65 - 1 && *v67 == *v69)
    {
      ++v67;
      v69 += 2;
    }

    if (v69 < v65 && *v67 == *v69)
    {
      ++v69;
    }

    v58 = (v69 - v43);
    goto LABEL_82;
  }

  v50 = v39;
  v47 = v20;
  v48 = v33;
  v49 = v25;
LABEL_110:
  v81 = (v24 + 8 * (v14 & ~v148));
  v82 = v14 + 9;
  v83 = 1 << v147;
  *(v22 + 4 * v149) = v14;
  if (v23 < v162)
  {
    *v81 = 0;
    v84 = v160;
    goto LABEL_157;
  }

  v85 = 0;
  v86 = 0;
  v87 = v81 + 1;
  v88 = a5 - 7;
  v89 = a5 - 3;
  while (1)
  {
    if (v85 >= v86)
    {
      v90 = v86;
    }

    else
    {
      v90 = v85;
    }

    v91 = v8 + v23;
    v92 = (a4 + v90);
    v93 = (v91 + v90);
    if (v88 <= a4 + v90)
    {
      v98 = (a4 + v90);
      if (v92 >= v89)
      {
        goto LABEL_126;
      }

      goto LABEL_124;
    }

    v94 = *v93;
    if (v94 == *v92)
    {
      v95 = v24;
      v96 = v8 + 8 + v23;
      v97 = a4;
      while (1)
      {
        v98 = (v97 + v90 + 8);
        if (v98 >= v88)
        {
          break;
        }

        v99 = *(v96 + v90);
        v100 = *v98;
        v96 += 8;
        ++v97;
        if (v99 != v100)
        {
          v101 = v97 + (__clz(__rbit64(v100 ^ v99)) >> 3) - a4;
          v24 = v95;
          goto LABEL_136;
        }
      }

      v93 = (v96 + v90);
      v24 = v95;
      if (v98 >= v89)
      {
LABEL_126:
        if (v98 >= (a5 - 1))
        {
          if (v98 >= a5)
          {
LABEL_134:
            v101 = v98 - v92;
            goto LABEL_136;
          }
        }

        else
        {
          if (*v93 == *v98)
          {
            ++v93;
            ++v98;
          }

          if (v98 >= a5)
          {
            goto LABEL_134;
          }
        }

        if (*v93 == *v98)
        {
          v98 = (v98 + 1);
        }

        goto LABEL_134;
      }

LABEL_124:
      if (*v93 == *v98)
      {
        v93 += 2;
        v98 += 2;
      }

      goto LABEL_126;
    }

    v101 = __clz(__rbit64(*v92 ^ v94)) >> 3;
LABEL_136:
    v102 = v101 + v90;
    if (v102 > v50)
    {
      if (v102 > v82 - v23)
      {
        v82 = v23 + v102;
      }

      v103 = (v47 + 8 * result);
      *v103 = v14 + 3 - v23;
      v103[1] = v102;
      result = (result + 1);
      if (v102 > 0x1000 || a4 + v102 == a5)
      {
        *v87 = 0;
        *v81 = 0;
        goto LABEL_222;
      }

      v50 = v102;
    }

    v105 = (v24 + 8 * (v23 & ~v148));
    if (*(v91 + v102) < *(a4 + v102))
    {
      break;
    }

    *v87 = v23;
    if (v23 <= v161)
    {
      v87 = v163;
      goto LABEL_156;
    }

    v87 = (v24 + 8 * (v23 & ~v148));
    v86 = v102;
    if (!--v83)
    {
      goto LABEL_156;
    }

LABEL_113:
    v23 = *v105;
    if (*v105 < v162)
    {
      goto LABEL_156;
    }
  }

  *v81 = v23;
  if (v23 > v161)
  {
    v81 = v105 + 1;
    v85 = v102;
    ++v105;
    if (!--v83)
    {
      goto LABEL_156;
    }

    goto LABEL_113;
  }

  v81 = v163;
LABEL_156:
  *v87 = 0;
  *v81 = 0;
  v84 = v160;
  if (v83)
  {
LABEL_157:
    v106 = *(*(v145 + 112) + 4 * (v146 >> -v144));
    if (v106 > v84)
    {
      v107 = 0;
      v108 = 0;
      v109 = *(v145 + 128);
      v110 = a5 - 7;
      v111 = v14 + 3;
      v112 = v49 + v8 + 8;
      v113 = v8 + v156;
      while (1)
      {
        if (v107 >= v108)
        {
          v114 = v108;
        }

        else
        {
          v114 = v107;
        }

        v115 = v159 + v106;
        v116 = (a4 + v114);
        v117 = (v115 + v114);
        v118 = &v48[a4 - v115];
        if (v118 >= a5)
        {
          v118 = a5;
        }

        if (v118 - 7 <= v116)
        {
          v125 = (v115 + v114);
          v121 = (a4 + v114);
        }

        else
        {
          if (*v117 != *v116)
          {
            v124 = __clz(__rbit64(*v116 ^ *v117)) >> 3;
            goto LABEL_183;
          }

          v119 = v159 + 8 + v106;
          v120 = a4;
          while (1)
          {
            v121 = (v120 + v114 + 8);
            if (v121 >= (v118 - 7))
            {
              break;
            }

            v122 = *(v119 + v114);
            v123 = *v121;
            v119 += 8;
            ++v120;
            if (v122 != v123)
            {
              v124 = v120 + (__clz(__rbit64(v123 ^ v122)) >> 3) - a4;
              goto LABEL_183;
            }
          }

          v125 = (v119 + v114);
        }

        if (v121 < (v118 - 3) && *v125 == *v121)
        {
          ++v125;
          v121 += 2;
        }

        if (v121 < (v118 - 1) && *v125 == *v121)
        {
          v125 = (v125 + 2);
          ++v121;
        }

        if (v121 < v118 && *v125 == *v121)
        {
          v121 = (v121 + 1);
        }

        v124 = v121 - v116;
LABEL_183:
        if (v117 + v124 == v48)
        {
          v127 = &v116[v124];
          if (v110 > &v116[v124])
          {
            v126 = v160;
            if (*v155 == *v127)
            {
              v128 = 0;
              while (1)
              {
                v129 = &v127[v128 + 8];
                if (v129 >= v110)
                {
                  break;
                }

                v130 = *(v112 + v128);
                v128 += 8;
                if (v130 != *v129)
                {
                  v131 = v128 + (__clz(__rbit64(*v129 ^ v130)) >> 3);
                  goto LABEL_204;
                }
              }

              v132 = (v112 + v128);
LABEL_194:
              if (v129 < a5 - 3 && *v132 == *v129)
              {
                ++v132;
                v129 += 4;
              }

              if (v129 < a5 - 1 && *v132 == *v129)
              {
                v132 = (v132 + 2);
                v129 += 2;
              }

              if (v129 < a5 && *v132 == *v129)
              {
                ++v129;
              }

              v126 = v160;
              v131 = v129 - v127;
            }

            else
            {
              v131 = __clz(__rbit64(*v127 ^ *v155)) >> 3;
            }

LABEL_204:
            v124 += v131;
            goto LABEL_205;
          }

          v132 = v155;
          v129 = &v116[v124];
          goto LABEL_194;
        }

        v126 = v160;
LABEL_205:
        v133 = v124 + v114;
        if (v124 + v114 + v106 >= v143)
        {
          v115 = v113 + v106;
        }

        if (v133 <= v50)
        {
          goto LABEL_225;
        }

        if (v133 > v82 - (v106 + v156))
        {
          v82 = v106 + v156 + v133;
        }

        v134 = (v47 + 8 * result);
        *v134 = v111 - (v106 + v156);
        v134[1] = v133;
        result = (result + 1);
        v135 = v133 > 0x1000 || a4 + v133 == a5;
        v50 = v124 + v114;
        if (!v135)
        {
LABEL_225:
          if (v106 > v158)
          {
            v136 = *(v115 + v133);
            v137 = *(a4 + v133);
            v138 = v136 >= v137;
            v139 = v136 < v137;
            if (v138)
            {
              v108 = v124 + v114;
            }

            if (!v138)
            {
              v107 = v124 + v114;
            }

            if (--v83)
            {
              v106 = *(v109 + 8 * (v106 & v157) + 4 * v139);
              if (v106 > v126)
              {
                continue;
              }
            }
          }
        }

        break;
      }
    }
  }

LABEL_222:
  *(a2 + 44) = v82 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_dictMatchState_4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a1;
  v14 = a4 - v8;
  v15 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v16 = a8;
    v17 = a6;
    v18 = a7;
    v20 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v14, 4, 0) + v9;
    }

    while (v9 < v14);
    v8 = *(a2 + 8);
    a4 = v20;
    v15 = v20 - v8;
    v13 = a1;
    a7 = v18;
    a6 = v17;
    a8 = v16;
  }

  *(a2 + 44) = v14;
  v21 = *(a2 + 276);
  v147 = *(a2 + 112);
  v148 = (-1640531535 * *a4) >> -*(a2 + 264);
  v22 = *(v147 + 4 * v148);
  if (v21 >= 0xFFF)
  {
    v23 = 4095;
  }

  else
  {
    v23 = v21;
  }

  v24 = *(a2 + 128);
  v25 = -1 << (*(a2 + 260) - 1);
  v27 = *(a2 + 24);
  v26 = *(a2 + 28);
  v153 = (v8 + v27);
  v160 = ~v25;
  v28 = v15 + v25 + 1;
  if (v15 < ~v25)
  {
    v28 = 0;
  }

  v159 = v28;
  v29 = 1 << *(a2 + 256);
  if (v15 - v26 > v29 && *(a2 + 40) == 0)
  {
    v26 = v15 - v29;
  }

  if (v26 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v26;
  }

  v161 = v31;
  v163[0] = 0;
  v146 = *(a2 + 268);
  v32 = *(a2 + 248);
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = *v32 - v34;
  v36 = *(v32 + 28);
  v37 = v26 - v35;
  v144 = *(v32 + 264);
  v145 = v32;
  v156 = ~(-1 << (*(v32 + 260) - 1));
  v143 = v35;
  v38 = v35 + (-1 << (*(v32 + 260) - 1)) + 1;
  if (v35 - v36 <= v156)
  {
    v38 = *(v32 + 28);
  }

  v157 = v38;
  v39 = (a8 - 1);
  v155 = *(v32 + 8);
  v158 = *(v32 + 28);
  v154 = v26 - v35;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v40 = v15 - v27;
    v41 = v34 - v37;
    v42 = v15 - v36 - v37;
    v43 = (a4 + 4);
    v44 = a5 - 7;
    v151 = a5 - 3;
    v150 = a5 - 1;
    v141 = v41 + 12;
    v152 = v27 + v8 + 8;
    v45 = a7;
    v142 = v25;
    v149 = v42;
    while (1)
    {
      if (v45 == 3)
      {
        v47 = *a6 - 1;
      }

      else
      {
        v47 = a6[v45];
      }

      v48 = v15 - v47;
      if (v47 - 1 < v40)
      {
        if (v48 < v26 || *a4 != *(a4 - v47))
        {
          goto LABEL_54;
        }

        v50 = -v47;
        v51 = &v43[v50];
        if (v44 <= v43)
        {
          v54 = (a4 + 4);
LABEL_56:
          if (v54 < v151 && *v51 == *v54)
          {
            v51 += 4;
            v54 += 4;
          }

          if (v54 < v150 && *v51 == *v54)
          {
            v51 += 2;
            v54 += 2;
          }

          if (v54 >= a5)
          {
LABEL_66:
            LODWORD(v54) = v54 - v43;
          }

          else
          {
            if (*v51 == *v54)
            {
              LODWORD(v54) = v54 + 1;
            }

            LODWORD(v54) = v54 - v43;
          }

          goto LABEL_104;
        }

        v52 = *v51;
        if (v52 == *v43)
        {
          v53 = (a4 + 12);
          v51 = (a4 + 12 + v50);
          while (1)
          {
            v54 = v53;
            if (v53 >= v44)
            {
              goto LABEL_56;
            }

            v56 = *v51;
            v51 += 8;
            v55 = v56;
            v53 += 8;
            if (v56 != *v54)
            {
              v54 += __clz(__rbit64(*v54 ^ v55)) >> 3;
              goto LABEL_66;
            }
          }
        }

        v54 = (__clz(__rbit64(*v43 ^ v52)) >> 3);
        goto LABEL_104;
      }

      v57 = v47 - 1 >= v42 || (v48 - v27) > 0xFFFFFFFC;
      if (v57 || (v58 = v41 + v48, *a4 != *(v41 + v48)))
      {
LABEL_54:
        v71 = 0;
        goto LABEL_105;
      }

      v59 = v41;
      v60 = v23;
      v61 = (v58 + 4);
      v62 = &v33[a4 - v58];
      if (v62 >= a5)
      {
        v62 = a5;
      }

      if (v62 - 7 <= v43)
      {
        break;
      }

      if (*v61 == *v43)
      {
        v140 = v33;
        v63 = v13;
        v64 = v27;
        v65 = v24;
        v66 = (v141 + v48);
        v67 = (a4 + 12);
        while (1)
        {
          v68 = v67;
          if (v67 >= v62 - 7)
          {
            break;
          }

          v70 = *v66;
          v66 += 4;
          v69 = v70;
          v67 += 8;
          if (v70 != *v68)
          {
            v54 = (&v68[__clz(__rbit64(*v68 ^ v69)) >> 3] - v43);
            v24 = v65;
            v27 = v64;
            v13 = v63;
            v33 = v140;
            v25 = v142;
            goto LABEL_81;
          }
        }

        v24 = v65;
        v27 = v64;
        v13 = v63;
        v33 = v140;
        v25 = v142;
        goto LABEL_71;
      }

      v54 = (__clz(__rbit64(*v43 ^ *v61)) >> 3);
LABEL_81:
      if (&v54[v61] == v33)
      {
        v72 = &v54[v43];
        v23 = v60;
        if (v44 > &v54[v43])
        {
          if (*v153 == *v72)
          {
            v73 = 0;
            v74 = &v54[a4];
            while (1)
            {
              v75 = &v74[v73 + 12];
              if (v75 >= v44)
              {
                break;
              }

              v76 = *(v152 + v73);
              v73 += 8;
              if (v76 != *v75)
              {
                v72 = (&v74[v73 + 4 + (__clz(__rbit64(*v75 ^ v76)) >> 3)] - v72);
                v25 = v142;
                v23 = v60;
                goto LABEL_91;
              }
            }

            v77 = (v152 + v73);
            v78 = &v54[a4 + 12 + v73];
            v23 = v60;
LABEL_93:
            v41 = v59;
            if (v78 < v151 && *v77 == *v78)
            {
              ++v77;
              v78 += 4;
            }

            v42 = v149;
            if (v78 < v150 && *v77 == *v78)
            {
              v77 = (v77 + 2);
              v78 += 2;
            }

            if (v78 < a5 && *v77 == *v78)
            {
              LODWORD(v78) = v78 + 1;
            }

            v25 = v142;
            LODWORD(v72) = v78 - v72;
          }

          else
          {
            v72 = (__clz(__rbit64(*v72 ^ *v153)) >> 3);
LABEL_91:
            v41 = v59;
            v42 = v149;
          }

          LODWORD(v54) = v72 + v54;
          goto LABEL_104;
        }

        v77 = v153;
        v78 = &v54[v43];
        goto LABEL_93;
      }

      v23 = v60;
      v41 = v59;
      v42 = v149;
LABEL_104:
      v71 = v54 + 4;
LABEL_105:
      v46 = v71;
      if (v39 >= v71)
      {
        v46 = v39;
      }

      else
      {
        v79 = (v13 + 8 * result);
        *v79 = v45 - a7 + 1;
        v79[1] = v71;
        result = (result + 1);
        if (v71 > v23 || (a4 + v71) == a5)
        {
          return result;
        }
      }

      ++v45;
      v39 = v46;
      if (v45 == a7 + 3)
      {
        goto LABEL_110;
      }
    }

    v66 = v61;
    v68 = (a4 + 4);
LABEL_71:
    if (v68 < v62 - 3 && *v66 == *v68)
    {
      v66 += 2;
      v68 += 4;
    }

    if (v68 < v62 - 1 && *v66 == *v68)
    {
      ++v66;
      v68 += 2;
    }

    if (v68 < v62 && *v66 == *v68)
    {
      ++v68;
    }

    v54 = (v68 - v43);
    goto LABEL_81;
  }

  v46 = v39;
LABEL_110:
  v80 = (v24 + 8 * (v15 & ~v25));
  v81 = v15 + 9;
  v82 = 1 << v146;
  *(v147 + 4 * v148) = v15;
  if (v22 < v161)
  {
    *v80 = 0;
    v83 = v155;
    v84 = v158;
    goto LABEL_157;
  }

  v85 = 0;
  v86 = 0;
  v87 = v80 + 1;
  v88 = a5 - 7;
  v89 = a5 - 3;
  while (1)
  {
    if (v85 >= v86)
    {
      v90 = v86;
    }

    else
    {
      v90 = v85;
    }

    v91 = v8 + v22;
    v92 = (a4 + v90);
    v93 = (v91 + v90);
    if (v88 <= a4 + v90)
    {
      v98 = (a4 + v90);
      if (v92 >= v89)
      {
        goto LABEL_126;
      }

      goto LABEL_124;
    }

    v94 = *v93;
    if (v94 == *v92)
    {
      v95 = v24;
      v96 = v8 + 8 + v22;
      v97 = a4;
      while (1)
      {
        v98 = (v97 + v90 + 8);
        if (v98 >= v88)
        {
          break;
        }

        v99 = *(v96 + v90);
        v100 = *v98;
        v96 += 8;
        v97 += 2;
        if (v99 != v100)
        {
          v101 = v97 + (__clz(__rbit64(v100 ^ v99)) >> 3) - a4;
          v24 = v95;
          goto LABEL_136;
        }
      }

      v93 = (v96 + v90);
      v24 = v95;
      if (v98 >= v89)
      {
LABEL_126:
        if (v98 >= (a5 - 1))
        {
          if (v98 >= a5)
          {
LABEL_134:
            v101 = v98 - v92;
            goto LABEL_136;
          }
        }

        else
        {
          if (*v93 == *v98)
          {
            ++v93;
            ++v98;
          }

          if (v98 >= a5)
          {
            goto LABEL_134;
          }
        }

        if (*v93 == *v98)
        {
          v98 = (v98 + 1);
        }

        goto LABEL_134;
      }

LABEL_124:
      if (*v93 == *v98)
      {
        v93 += 2;
        v98 += 2;
      }

      goto LABEL_126;
    }

    v101 = __clz(__rbit64(*v92 ^ v94)) >> 3;
LABEL_136:
    v102 = v101 + v90;
    if (v102 > v46)
    {
      if (v102 > v81 - v22)
      {
        v81 = v22 + v102;
      }

      v103 = (v13 + 8 * result);
      *v103 = v15 + 3 - v22;
      v103[1] = v102;
      result = (result + 1);
      if (v102 > 0x1000 || a4 + v102 == a5)
      {
        *v87 = 0;
        *v80 = 0;
        goto LABEL_222;
      }

      v46 = v102;
    }

    v105 = (v24 + 8 * (v22 & v160));
    if (*(v91 + v102) < *(a4 + v102))
    {
      break;
    }

    *v87 = v22;
    if (v22 <= v159)
    {
      v87 = v163;
      goto LABEL_156;
    }

    v87 = (v24 + 8 * (v22 & v160));
    v86 = v102;
    if (!--v82)
    {
      goto LABEL_156;
    }

LABEL_113:
    v22 = *v105;
    if (*v105 < v161)
    {
      goto LABEL_156;
    }
  }

  *v80 = v22;
  if (v22 > v159)
  {
    v80 = v105 + 1;
    v85 = v102;
    ++v105;
    if (!--v82)
    {
      goto LABEL_156;
    }

    goto LABEL_113;
  }

  v80 = v163;
LABEL_156:
  *v87 = 0;
  *v80 = 0;
  v83 = v155;
  v84 = v158;
  if (v82)
  {
LABEL_157:
    v106 = *(*(v145 + 112) + 4 * ((-1640531535 * *a4) >> -v144));
    if (v106 > v84)
    {
      v107 = 0;
      v108 = 0;
      v109 = *(v145 + 128);
      v110 = a5 - 7;
      v111 = v15 + 3;
      v162 = v83 + 8;
      v112 = v27 + v8 + 8;
      v113 = v8 + v154;
      while (1)
      {
        if (v107 >= v108)
        {
          v114 = v108;
        }

        else
        {
          v114 = v107;
        }

        v115 = v83 + v106;
        v116 = (a4 + v114);
        v117 = (v115 + v114);
        v118 = &v33[a4 - v115];
        if (v118 >= a5)
        {
          v118 = a5;
        }

        if (v118 - 7 <= v116)
        {
          v125 = (v115 + v114);
          v121 = (a4 + v114);
        }

        else
        {
          if (*v117 != *v116)
          {
            v124 = __clz(__rbit64(*v116 ^ *v117)) >> 3;
            goto LABEL_183;
          }

          v119 = v162 + v106;
          v120 = a4;
          while (1)
          {
            v121 = (v120 + v114 + 8);
            if (v121 >= (v118 - 7))
            {
              break;
            }

            v122 = *(v119 + v114);
            v123 = *v121;
            v119 += 8;
            v120 += 2;
            if (v122 != v123)
            {
              v124 = v120 + (__clz(__rbit64(v123 ^ v122)) >> 3) - a4;
              v83 = v155;
              goto LABEL_183;
            }
          }

          v125 = (v119 + v114);
          v83 = v155;
        }

        if (v121 < (v118 - 3) && *v125 == *v121)
        {
          ++v125;
          v121 += 2;
        }

        if (v121 < (v118 - 1) && *v125 == *v121)
        {
          v125 = (v125 + 2);
          ++v121;
        }

        if (v121 < v118 && *v125 == *v121)
        {
          v121 = (v121 + 1);
        }

        v124 = v121 - v116;
LABEL_183:
        if (v117 + v124 == v33)
        {
          v127 = &v116[v124];
          if (v110 > &v116[v124])
          {
            v126 = v158;
            if (*v153 == *v127)
            {
              v128 = 0;
              while (1)
              {
                v129 = &v127[v128 + 8];
                if (v129 >= v110)
                {
                  break;
                }

                v130 = *(v112 + v128);
                v128 += 8;
                if (v130 != *v129)
                {
                  v131 = v128 + (__clz(__rbit64(*v129 ^ v130)) >> 3);
                  v83 = v155;
                  goto LABEL_204;
                }
              }

              v132 = (v112 + v128);
              v83 = v155;
LABEL_194:
              if (v129 < a5 - 3 && *v132 == *v129)
              {
                ++v132;
                v129 += 4;
              }

              if (v129 < a5 - 1 && *v132 == *v129)
              {
                v132 = (v132 + 2);
                v129 += 2;
              }

              if (v129 < a5)
              {
                v83 = v155;
                if (*v132 == *v129)
                {
                  ++v129;
                }
              }

              v126 = v158;
              v131 = v129 - v127;
            }

            else
            {
              v131 = __clz(__rbit64(*v127 ^ *v153)) >> 3;
            }

LABEL_204:
            v124 += v131;
            goto LABEL_205;
          }

          v132 = v153;
          v129 = &v116[v124];
          goto LABEL_194;
        }

        v126 = v158;
LABEL_205:
        v133 = v124 + v114;
        if (v124 + v114 + v106 >= v143)
        {
          v115 = v113 + v106;
        }

        if (v133 <= v46)
        {
          goto LABEL_225;
        }

        if (v133 > v81 - (v106 + v154))
        {
          v81 = v106 + v154 + v133;
        }

        v134 = (v13 + 8 * result);
        *v134 = v111 - (v106 + v154);
        v134[1] = v133;
        result = (result + 1);
        v135 = v133 > 0x1000 || a4 + v133 == a5;
        v46 = v124 + v114;
        if (!v135)
        {
LABEL_225:
          if (v106 > v157)
          {
            v136 = *(v115 + v133);
            v137 = *(a4 + v133);
            v138 = v136 >= v137;
            v139 = v136 < v137;
            if (v138)
            {
              v108 = v124 + v114;
            }

            if (!v138)
            {
              v107 = v124 + v114;
            }

            if (--v82)
            {
              v106 = *(v109 + 8 * (v106 & v156) + 4 * v139);
              if (v106 > v126)
              {
                continue;
              }
            }
          }
        }

        break;
      }
    }
  }

LABEL_222:
  *(a2 + 44) = v81 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_dictMatchState_3(_DWORD *a1, uint64_t a2, unsigned int *a3, char *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a1;
  v14 = a4 - v8;
  if (v9 >= a4 - v8)
  {
    v20 = a4 - v8;
    v143 = a4 - v8;
  }

  else
  {
    v164 = a8;
    v15 = a6;
    v16 = a7;
    v17 = a3;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v14, 3, 0) + v9;
    }

    while (v9 < v14);
    v8 = *(a2 + 8);
    a4 = v19;
    v20 = v19 - v8;
    v143 = v19 - v8;
    v13 = a1;
    a3 = v17;
    a7 = v16;
    a6 = v15;
    a8 = v164;
  }

  v145 = a3;
  *(a2 + 44) = v14;
  v21 = *(a2 + 276);
  v153 = *(a2 + 112);
  v22 = *(v153 + 4 * ((-1640531535 * *a4) >> -*(a2 + 264)));
  if (v21 >= 0xFFF)
  {
    v21 = 4095;
  }

  v157 = *(a2 + 128);
  v151 = -1 << (*(a2 + 260) - 1);
  v152 = (-1640531535 * *a4) >> -*(a2 + 264);
  v23 = *(a2 + 24);
  v156 = (v8 + v23);
  v24 = v20 + v151 + 1;
  if (v20 < ~v151)
  {
    v24 = 0;
  }

  v162 = v24;
  v25 = 1 << *(a2 + 256);
  if (v20 - *(a2 + 28) > v25 && *(a2 + 40) == 0)
  {
    v27 = v20 - v25;
  }

  else
  {
    v27 = *(a2 + 28);
  }

  if (v27 <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = v27;
  }

  v163 = v28;
  v166[0] = 0;
  v150 = *(a2 + 268);
  v29 = *(a2 + 248);
  v30 = *(v29 + 8);
  v165 = *v29;
  v31 = *(v29 + 28);
  v32 = v27 - (*v29 - v30);
  v147 = *(v29 + 264);
  v148 = v29;
  v159 = ~(-1 << (*(v29 + 260) - 1));
  v144 = *v29 - v30;
  v33 = v144 + (-1 << (*(v29 + 260) - 1)) + 1;
  if (*v29 - v30 - v31 <= v159)
  {
    v33 = *(v29 + 28);
  }

  v160 = v33;
  v34 = (a8 - 1);
  v161 = *(v29 + 8);
  v149 = *(v29 + 28);
  v158 = v27 - (*v29 - v30);
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v35 = v30 - v32;
    v36 = v20 - v31 - v32;
    v37 = a4 + 3;
    v38 = a5 - 7;
    v39 = a5 - 3;
    v155 = a5 - 1;
    v142 = v35 + 11;
    v146 = v13;
    v154 = v23 + v8 + 8;
    v40 = a7;
    v41 = v157;
    while (1)
    {
      if (v40 == 3)
      {
        v43 = *a6 - 1;
      }

      else
      {
        v43 = a6[v40];
      }

      v44 = v20 - v43;
      if (v43 - 1 < v20 - v23)
      {
        if (v44 < v27 || ((*&a4[-v43] ^ *a4) & 0xFFFFFF) != 0)
        {
          goto LABEL_47;
        }

        v46 = -v43;
        v47 = &v37[v46];
        if (v38 <= v37)
        {
          v49 = a4 + 3;
LABEL_49:
          if (v49 < v39 && *v47 == *v49)
          {
            v47 += 4;
            v49 += 4;
          }

          if (v49 < v155 && *v47 == *v49)
          {
            v47 += 2;
            v49 += 2;
          }

          if (v49 < a5 && *v47 == *v49)
          {
            LODWORD(v49) = v49 + 1;
          }

LABEL_58:
          LODWORD(v49) = v49 - v37;
          goto LABEL_103;
        }

        if (*v47 == *v37)
        {
          v48 = a4 + 11;
          v47 = &a4[v46 + 11];
          while (1)
          {
            v49 = v48;
            if (v48 >= v38)
            {
              goto LABEL_49;
            }

            v51 = *v47;
            v47 += 8;
            v50 = v51;
            v48 += 8;
            if (v51 != *v49)
            {
              v49 += __clz(__rbit64(*v49 ^ v50)) >> 3;
              goto LABEL_58;
            }
          }
        }

        v49 = (__clz(__rbit64(*v37 ^ *v47)) >> 3);
        goto LABEL_103;
      }

      v52 = v43 - 1 >= v36 || (v44 - v23) > 0xFFFFFFFC;
      if (v52 || (v53 = v35 + v44, ((*(v35 + v44) ^ *a4) & 0xFFFFFF) != 0))
      {
LABEL_47:
        v54 = 0;
        goto LABEL_104;
      }

      v55 = (v53 + 3);
      v56 = &v165[a4 - v53];
      if (v56 >= a5)
      {
        v56 = a5;
      }

      if (v56 - 7 <= v37)
      {
        break;
      }

      if (*v55 == *v37)
      {
        v57 = v35;
        v58 = (v142 + v44);
        v59 = a4 + 11;
        while (1)
        {
          v60 = v59;
          if (v59 >= v56 - 7)
          {
            goto LABEL_69;
          }

          v62 = *v58;
          v58 += 4;
          v61 = v62;
          v59 += 8;
          if (v62 != *v60)
          {
            v49 = (&v60[__clz(__rbit64(*v60 ^ v61)) >> 3] - v37);
            v35 = v57;
            goto LABEL_80;
          }
        }
      }

      v49 = (__clz(__rbit64(*v37 ^ *v55)) >> 3);
LABEL_80:
      if (&v49[v55] == v165)
      {
        v63 = &v49[v37];
        v41 = v157;
        if (v38 > &v49[v37])
        {
          if (*v156 == *v63)
          {
            v64 = 0;
            v65 = &v49[a4];
            while (1)
            {
              v66 = &v65[v64 + 11];
              if (v66 >= v38)
              {
                break;
              }

              v67 = *(v154 + v64);
              v64 += 8;
              if (v67 != *v66)
              {
                v68 = (&v65[v64 + 3 + (__clz(__rbit64(*v66 ^ v67)) >> 3)] - v63);
                goto LABEL_90;
              }
            }

            v69 = (v154 + v64);
            v68 = &v49[a4 + 11 + v64];
LABEL_92:
            if (v68 < v39 && *v69 == *v68)
            {
              ++v69;
              v68 += 4;
            }

            v13 = v146;
            if (v68 < v155 && *v69 == *v68)
            {
              v69 = (v69 + 2);
              v68 += 2;
            }

            if (v68 < a5 && *v69 == *v68)
            {
              LODWORD(v68) = v68 + 1;
            }

            LODWORD(v68) = v68 - v63;
          }

          else
          {
            v68 = (__clz(__rbit64(*v63 ^ *v156)) >> 3);
LABEL_90:
            v13 = v146;
          }

          LODWORD(v49) = v68 + v49;
          goto LABEL_103;
        }

        v69 = (v8 + v23);
        v68 = &v49[v37];
        goto LABEL_92;
      }

      v41 = v157;
      v13 = v146;
LABEL_103:
      v54 = v49 + 3;
LABEL_104:
      v42 = v54;
      if (v34 >= v54)
      {
        v42 = v34;
      }

      else
      {
        v70 = &v13[2 * result];
        *v70 = v40 - a7 + 1;
        v70[1] = v54;
        result = (result + 1);
        if (v54 > v21 || &a4[v54] == a5)
        {
          return result;
        }
      }

      ++v40;
      v34 = v42;
      if (v40 == a7 + 3)
      {
        goto LABEL_109;
      }
    }

    v57 = v35;
    v58 = v55;
    v60 = a4 + 3;
LABEL_69:
    if (v60 < v56 - 3 && *v58 == *v60)
    {
      v58 += 2;
      v60 += 4;
    }

    if (v60 < v56 - 1 && *v58 == *v60)
    {
      ++v58;
      v60 += 2;
    }

    if (v60 < v56 && *v58 == *v60)
    {
      ++v60;
    }

    v49 = (v60 - v37);
    v35 = v57;
    goto LABEL_80;
  }

  v42 = v34;
  v41 = v157;
LABEL_109:
  if (v42 > 2)
  {
    goto LABEL_143;
  }

  v71 = *(a2 + 120);
  v72 = *v145;
  v73 = *a4;
  v74 = 32 - *(a2 + 48);
  if (v72 < v20)
  {
    do
    {
      *(v71 + 4 * ((900185344 * *(v8 + v72)) >> v74)) = v72;
      ++v72;
    }

    while (v143 != v72);
  }

  *v145 = v20;
  v75 = *(v71 + 4 * ((900185344 * v73) >> v74));
  v76 = v20 - v75;
  if (v75 < v163 || (v20 - v75) >> 18 != 0)
  {
    goto LABEL_143;
  }

  v78 = (v8 + v75);
  if (a5 - 7 <= a4)
  {
    v81 = a4;
LABEL_125:
    if (v81 < a5 - 3 && *v78 == *v81)
    {
      ++v78;
      v81 += 4;
    }

    if (v81 < a5 - 1 && *v78 == *v81)
    {
      v78 = (v78 + 2);
      v81 += 2;
    }

    if (v81 < a5 && *v78 == *v81)
    {
      ++v81;
    }

    v84 = v81 - a4;
    if ((v81 - a4) >= 3)
    {
      goto LABEL_137;
    }
  }

  else
  {
    v79 = *v78;
    if (v79 == *a4)
    {
      v78 = (v75 + v8 + 8);
      v80 = a4 + 8;
      do
      {
        v81 = v80;
        if (v80 >= a5 - 7)
        {
          goto LABEL_125;
        }

        v83 = *v78;
        v78 += 2;
        v82 = v83;
        v80 += 8;
      }

      while (v83 == *v81);
      v84 = &v81[__clz(__rbit64(*v81 ^ v82)) >> 3] - a4;
      if (v84 < 3)
      {
        goto LABEL_143;
      }

LABEL_137:
      *v13 = v76 + 3;
      v13[1] = v84;
      if (v84 > v21 || &a4[v84] == a5)
      {
        v86 = v20 + 1;
        result = 1;
        goto LABEL_256;
      }

      result = 1;
      v42 = v84;
      goto LABEL_143;
    }

    v84 = __clz(__rbit64(*a4 ^ v79)) >> 3;
    if (v84 >= 3)
    {
      goto LABEL_137;
    }
  }

LABEL_143:
  v87 = (v41 + 8 * (v20 & ~v151));
  v88 = v20 + 9;
  v89 = 1 << v150;
  *(v153 + 4 * v152) = v20;
  if (v22 < v163)
  {
    *v87 = 0;
    goto LABEL_190;
  }

  v90 = 0;
  v91 = 0;
  v92 = v87 + 1;
  v93 = a5 - 7;
  v94 = a5 - 3;
  while (1)
  {
    if (v90 >= v91)
    {
      v95 = v91;
    }

    else
    {
      v95 = v90;
    }

    v96 = v8 + v22;
    v97 = &a4[v95];
    v98 = (v96 + v95);
    if (v93 <= &a4[v95])
    {
      v102 = &a4[v95];
      if (v97 >= v94)
      {
        goto LABEL_158;
      }

      goto LABEL_156;
    }

    v99 = *v98;
    if (v99 == *v97)
    {
      v100 = v8 + 8 + v22;
      v101 = a4;
      while (1)
      {
        v102 = &v101[v95 + 8];
        if (v102 >= v93)
        {
          break;
        }

        v103 = *(v100 + v95);
        v104 = *v102;
        v100 += 8;
        v101 += 8;
        if (v103 != v104)
        {
          v102 = &v101[v95 + (__clz(__rbit64(v104 ^ v103)) >> 3)];
          goto LABEL_166;
        }
      }

      v98 = (v100 + v95);
      if (v102 >= v94)
      {
LABEL_158:
        if (v102 >= (a5 - 1))
        {
          if (v102 >= a5)
          {
LABEL_166:
            v105 = v102 - v97;
            goto LABEL_168;
          }
        }

        else
        {
          if (*v98 == *v102)
          {
            ++v98;
            ++v102;
          }

          if (v102 >= a5)
          {
            goto LABEL_166;
          }
        }

        if (*v98 == *v102)
        {
          v102 = (v102 + 1);
        }

        goto LABEL_166;
      }

LABEL_156:
      if (*v98 == *v102)
      {
        v98 += 2;
        v102 += 2;
      }

      goto LABEL_158;
    }

    v105 = __clz(__rbit64(*v97 ^ v99)) >> 3;
LABEL_168:
    v106 = v105 + v95;
    if (v106 > v42)
    {
      if (v106 > v88 - v22)
      {
        v88 = v22 + v106;
      }

      v107 = &v13[2 * result];
      *v107 = v20 + 3 - v22;
      v107[1] = v106;
      result = (result + 1);
      if (v106 > 0x1000 || &a4[v106] == a5)
      {
        *v92 = 0;
        *v87 = 0;
        goto LABEL_255;
      }

      v42 = v106;
    }

    v109 = (v41 + 8 * (v22 & ~v151));
    if (*(v96 + v106) < a4[v106])
    {
      break;
    }

    *v92 = v22;
    if (v22 <= v162)
    {
      v92 = v166;
      goto LABEL_189;
    }

    v92 = (v41 + 8 * (v22 & ~v151));
    v91 = v106;
LABEL_181:
    if (--v89)
    {
      v22 = *v109;
      if (*v109 >= v163)
      {
        continue;
      }
    }

    goto LABEL_189;
  }

  *v87 = v22;
  if (v22 > v162)
  {
    v87 = v109 + 1;
    v90 = v106;
    ++v109;
    goto LABEL_181;
  }

  v87 = v166;
LABEL_189:
  *v92 = 0;
  *v87 = 0;
  if (v89)
  {
LABEL_190:
    v110 = *(*(v148 + 112) + 4 * ((-1640531535 * *a4) >> -v147));
    if (v110 > v149)
    {
      v111 = 0;
      v112 = 0;
      v113 = *(v148 + 128);
      v114 = a5 - 7;
      v115 = v20 + 3;
      v116 = v23 + v8 + 8;
      while (1)
      {
        if (v111 >= v112)
        {
          v117 = v112;
        }

        else
        {
          v117 = v111;
        }

        v118 = v161 + v110;
        v119 = &a4[v117];
        v120 = (v118 + v117);
        if (&v165[a4 - v118] >= a5)
        {
          v121 = a5;
        }

        else
        {
          v121 = &v165[a4 - v118];
        }

        if (v121 - 7 <= v119)
        {
          v128 = (v118 + v117);
          v124 = &a4[v117];
        }

        else
        {
          if (*v120 != *v119)
          {
            v127 = __clz(__rbit64(*v119 ^ *v120)) >> 3;
            goto LABEL_217;
          }

          v122 = v161 + 8 + v110;
          v123 = a4;
          while (1)
          {
            v124 = &v123[v117 + 8];
            if (v124 >= (v121 - 7))
            {
              break;
            }

            v125 = *(v122 + v117);
            v126 = *v124;
            v122 += 8;
            v123 += 8;
            if (v125 != v126)
            {
              v127 = &v123[__clz(__rbit64(v126 ^ v125)) >> 3] - a4;
              goto LABEL_217;
            }
          }

          v128 = (v122 + v117);
        }

        if (v124 < (v121 - 3) && *v128 == *v124)
        {
          ++v128;
          v124 += 2;
        }

        if (v124 < (v121 - 1) && *v128 == *v124)
        {
          v128 = (v128 + 2);
          ++v124;
        }

        if (v124 < v121 && *v128 == *v124)
        {
          v124 = (v124 + 1);
        }

        v127 = v124 - v119;
LABEL_217:
        if (v120 + v127 == v165)
        {
          v129 = &v119[v127];
          if (v114 > v129)
          {
            if (*v156 == *v129)
            {
              v130 = 0;
              while (1)
              {
                v131 = &v129[v130 + 8];
                if (v131 >= v114)
                {
                  break;
                }

                v132 = *(v116 + v130);
                v130 += 8;
                if (v132 != *v131)
                {
                  v133 = v130 + (__clz(__rbit64(*v131 ^ v132)) >> 3);
                  goto LABEL_237;
                }
              }

              v134 = (v116 + v130);
LABEL_227:
              if (v131 < a5 - 3 && *v134 == *v131)
              {
                ++v134;
                v131 += 4;
              }

              if (v131 < a5 - 1 && *v134 == *v131)
              {
                v134 = (v134 + 2);
                v131 += 2;
              }

              if (v131 < a5 && *v134 == *v131)
              {
                ++v131;
              }

              v133 = v131 - v129;
            }

            else
            {
              v133 = __clz(__rbit64(*v129 ^ *v156)) >> 3;
            }

LABEL_237:
            v127 += v133;
            goto LABEL_238;
          }

          v134 = v156;
          v131 = v129;
          goto LABEL_227;
        }

LABEL_238:
        v135 = v127 + v117;
        if (v135 + v110 >= v144)
        {
          v118 = v8 + v158 + v110;
        }

        if (v135 <= v42)
        {
          goto LABEL_259;
        }

        if (v135 > v88 - (v110 + v158))
        {
          v88 = v110 + v158 + v135;
        }

        v136 = &v13[2 * result];
        *v136 = v115 - (v110 + v158);
        v136[1] = v135;
        result = (result + 1);
        v137 = v135 > 0x1000 || &a4[v135] == a5;
        v42 = v135;
        if (!v137)
        {
LABEL_259:
          if (v110 > v160)
          {
            v138 = *(v118 + v135);
            v139 = a4[v135];
            v140 = v138 >= v139;
            v141 = v138 < v139;
            if (v140)
            {
              v112 = v135;
            }

            if (!v140)
            {
              v111 = v135;
            }

            if (--v89)
            {
              v110 = *(v113 + 8 * (v110 & v159) + 4 * v141);
              if (v110 > v149)
              {
                continue;
              }
            }
          }
        }

        break;
      }
    }
  }

LABEL_255:
  v86 = v88 - 8;
LABEL_256:
  *(a2 + 44) = v86;
  return result;
}

uint64_t ZSTD_btGetAllMatches_extDict_6(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v14 = a4 - v8;
  v15 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v16 = a8;
    v17 = a6;
    v18 = a7;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v14, 6, 1) + v9;
    }

    while (v9 < v14);
    v8 = *(a2 + 8);
    a4 = v19;
    v15 = v19 - v8;
    a7 = v18;
    a6 = v17;
    a8 = v16;
  }

  *(a2 + 44) = v14;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 276);
  }

  v107 = (0xCF1BBCDCBF9B0000 * *a4) >> -*(a2 + 264);
  v108 = *(a2 + 112);
  v21 = *(v108 + 4 * v107);
  v119 = *(a2 + 128);
  v106 = -1 << (*(a2 + 260) - 1);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = (v22 + v23);
  v109 = (v8 + v23);
  v25 = v15 + v106 + 1;
  if (v15 < ~v106)
  {
    v25 = 0;
  }

  v116 = v25;
  v26 = 1 << *(a2 + 256);
  v46 = v15 - *(a2 + 28) > v26;
  v27 = v15 - v26;
  if (v46 && *(a2 + 40) == 0)
  {
    v29 = v27;
  }

  else
  {
    v29 = *(a2 + 28);
  }

  if (v29 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v118 = v30;
  v120 = 0;
  v105 = *(a2 + 268);
  v31 = (a8 - 1);
  v117 = v22;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v32 = a4 + 4;
    v33 = a5 - 7;
    v110 = a5 - 1;
    v112 = a5 - 3;
    v104 = v22 + 12;
    v114 = v23 + v8 + 8;
    v34 = a7;
    while (1)
    {
      v36 = v34 == 3 ? *a6 - 1 : a6[v34];
      v37 = v15 - v36;
      if (v36 - 1 >= v15 - v23)
      {
        break;
      }

      if (v37 < v29 || *a4 != *(a4 - v36))
      {
        goto LABEL_54;
      }

      v39 = -v36;
      v40 = &v32[v39];
      if (v33 <= v32)
      {
        v42 = a4 + 4;
LABEL_56:
        if (v42 < v112 && *v40 == *v42)
        {
          v40 += 4;
          v42 += 4;
        }

        if (v42 < v110 && *v40 == *v42)
        {
          v40 += 2;
          v42 += 2;
        }

        if (v42 < a5 && *v40 == *v42)
        {
          LODWORD(v42) = v42 + 1;
        }

        v45 = v42 - a4;
        goto LABEL_101;
      }

      if (*v40 == *v32)
      {
        v40 = a4 + v39 + 12;
        v41 = a4 + 12;
        while (1)
        {
          v42 = v41;
          if (v41 >= v33)
          {
            goto LABEL_56;
          }

          v44 = *v40;
          v40 += 8;
          v43 = v44;
          v41 += 8;
          if (v44 != *v42)
          {
            v45 = v42 + (__clz(__rbit64(*v42 ^ v43)) >> 3) - a4;
            goto LABEL_101;
          }
        }
      }

      v45 = (__clz(__rbit64(*v32 ^ *v40)) >> 3) + 4;
LABEL_101:
      v35 = v45;
      if (v31 >= v45)
      {
        v35 = v31;
      }

      else
      {
        v66 = (a1 + 8 * result);
        *v66 = v34 - a7 + 1;
        v66[1] = v45;
        result = (result + 1);
        if (v45 > v20 || a4 + v45 == a5)
        {
          return result;
        }
      }

      ++v34;
      v31 = v35;
      if (v34 == a7 + 3)
      {
        goto LABEL_106;
      }
    }

    v46 = v36 - 1 >= v15 - v29 || (v37 - v23) > 0xFFFFFFFC;
    if (!v46)
    {
      v47 = v117 + v37;
      if (*a4 == *(v117 + v37))
      {
        v48 = (v47 + 4);
        v49 = &v24[a4 - v47];
        if (v49 >= a5)
        {
          v50 = a5;
        }

        else
        {
          v50 = v49;
        }

        if (v50 - 7 <= v32)
        {
          v51 = v48;
          v53 = a4 + 4;
          goto LABEL_68;
        }

        if (*v48 == *v32)
        {
          v51 = (v104 + v37);
          v52 = a4 + 12;
          while (1)
          {
            v53 = v52;
            if (v52 >= v50 - 7)
            {
              break;
            }

            v55 = *v51;
            v51 += 4;
            v54 = v55;
            v52 += 8;
            if (v55 != *v53)
            {
              v56 = &v53[__clz(__rbit64(*v53 ^ v54)) >> 3] - v32;
              goto LABEL_79;
            }
          }

LABEL_68:
          if (v53 < v50 - 3 && *v51 == *v53)
          {
            v51 += 2;
            v53 += 4;
          }

          if (v53 < v50 - 1 && *v51 == *v53)
          {
            ++v51;
            v53 += 2;
          }

          if (v53 < v50 && *v51 == *v53)
          {
            ++v53;
          }

          v56 = v53 - v32;
        }

        else
        {
          v56 = __clz(__rbit64(*v32 ^ *v48)) >> 3;
        }

LABEL_79:
        if (v48 + v56 == v24)
        {
          v57 = &v32[v56];
          if (v33 <= &v32[v56])
          {
            v64 = (v8 + v23);
            v65 = &v32[v56];
            goto LABEL_89;
          }

          if (*v109 == *v57)
          {
            v58 = 0;
            v59 = a4 + v56;
            while (1)
            {
              v60 = &v59[v58 + 12];
              if (v60 >= v33)
              {
                break;
              }

              v61 = *(v114 + v58);
              v62 = *v60;
              v58 += 8;
              if (v61 != v62)
              {
                v63 = &v59[v58 + 4 + (__clz(__rbit64(v62 ^ v61)) >> 3)] - v57;
                goto LABEL_99;
              }
            }

            v64 = (v114 + v58);
            v65 = a4 + v56 + v58 + 12;
LABEL_89:
            if (v65 < v112 && *v64 == *v65)
            {
              ++v64;
              v65 += 4;
            }

            if (v65 < v110 && *v64 == *v65)
            {
              v64 = (v64 + 2);
              v65 += 2;
            }

            if (v65 < a5 && *v64 == *v65)
            {
              LODWORD(v65) = v65 + 1;
            }

            LODWORD(v63) = v65 - v57;
          }

          else
          {
            v63 = __clz(__rbit64(*v57 ^ *v109)) >> 3;
          }

LABEL_99:
          LODWORD(v56) = v63 + v56;
        }

        v45 = v56 + 4;
        goto LABEL_101;
      }
    }

LABEL_54:
    v45 = 0;
    goto LABEL_101;
  }

  v35 = v31;
LABEL_106:
  v67 = (v119 + 8 * (v15 & ~v106));
  v68 = v67 + 1;
  v69 = v15 + 9;
  *(v108 + 4 * v107) = v15;
  if (v21 < v118)
  {
    goto LABEL_107;
  }

  v70 = 0;
  v71 = 0;
  v72 = 1 << v105;
  v73 = a5 - 7;
  v111 = a5 - 1;
  v113 = a5 - 3;
  v115 = v15 + 3;
  v74 = v117;
  v75 = v8 + 8 + v23;
  while (1)
  {
    if (v70 >= v71)
    {
      v76 = v71;
    }

    else
    {
      v76 = v70;
    }

    v77 = a4 + v76;
    if (v76 + v21 < v23)
    {
      v78 = v74 + v21;
      v79 = (v78 + v76);
      if (&v24[a4 - v78] >= a5)
      {
        v80 = a5;
      }

      else
      {
        v80 = &v77[v24 - v79];
      }

      if (v80 - 7 <= v77)
      {
        v93 = (v78 + v76);
        v83 = (a4 + v76);
      }

      else
      {
        if (*v79 != *v77)
        {
          v86 = __clz(__rbit64(*v77 ^ *v79)) >> 3;
          goto LABEL_145;
        }

        v81 = v117 + 8 + v21;
        v82 = a4;
        while (1)
        {
          v83 = (v82 + v76 + 8);
          if (v83 >= (v80 - 7))
          {
            break;
          }

          v84 = *(v81 + v76);
          v85 = *v83;
          v81 += 8;
          ++v82;
          if (v84 != v85)
          {
            v86 = v82 + (__clz(__rbit64(v85 ^ v84)) >> 3) - a4;
            goto LABEL_145;
          }
        }

        v93 = (v81 + v76);
      }

      if (v83 < (v80 - 3) && *v93 == *v83)
      {
        ++v93;
        v83 += 2;
      }

      if (v83 < (v80 - 1) && *v93 == *v83)
      {
        v93 = (v93 + 2);
        ++v83;
      }

      if (v83 < v80 && *v93 == *v83)
      {
        v83 = (v83 + 1);
      }

      v86 = v83 - v77;
LABEL_145:
      if (&v79[v86] != v24)
      {
        goto LABEL_179;
      }

      v94 = &v77[v86];
      if (v73 <= &v77[v86])
      {
        v99 = (v8 + v23);
        v96 = &v77[v86];
      }

      else
      {
        if (*v109 != *v94)
        {
          v98 = __clz(__rbit64(*v94 ^ *v109)) >> 3;
LABEL_178:
          v86 += v98;
LABEL_179:
          v100 = v86 + v76;
          if (v86 + v76 + v21 >= v23)
          {
            v78 = v8 + v21;
          }

          v74 = v117;
          if (v100 <= v35)
          {
            goto LABEL_188;
          }

          goto LABEL_182;
        }

        v95 = 0;
        while (1)
        {
          v96 = &v94[v95 + 8];
          if (v96 >= v73)
          {
            break;
          }

          v97 = *(v75 + v95);
          v95 += 8;
          if (v97 != *v96)
          {
            v98 = v95 + (__clz(__rbit64(*v96 ^ v97)) >> 3);
            goto LABEL_178;
          }
        }

        v99 = (v75 + v95);
      }

      if (v96 < v113 && *v99 == *v96)
      {
        ++v99;
        v96 += 4;
      }

      if (v96 < v111 && *v99 == *v96)
      {
        v99 = (v99 + 2);
        v96 += 2;
      }

      if (v96 < a5 && *v99 == *v96)
      {
        ++v96;
      }

      v98 = v96 - v94;
      goto LABEL_178;
    }

    v78 = v8 + v21;
    v87 = (v78 + v76);
    if (v73 <= v77)
    {
      v90 = a4 + v76;
    }

    else
    {
      if (*v87 != *v77)
      {
        v92 = __clz(__rbit64(*v77 ^ *v87)) >> 3;
        goto LABEL_164;
      }

      v88 = v8 + 8 + v21;
      v89 = a4;
      while (1)
      {
        v90 = v89 + v76 + 8;
        if (v90 >= v73)
        {
          break;
        }

        v91 = *(v88 + v76);
        v88 += 8;
        ++v89;
        if (v91 != *v90)
        {
          v92 = v89 + (__clz(__rbit64(*v90 ^ v91)) >> 3) - a4;
          goto LABEL_164;
        }
      }

      v87 = (v88 + v76);
    }

    if (v90 < v113 && *v87 == *v90)
    {
      v87 = (v87 + 4);
      v90 += 4;
    }

    if (v90 < v111 && *v87 == *v90)
    {
      v87 = (v87 + 2);
      v90 += 2;
    }

    if (v90 < a5 && *v87 == *v90)
    {
      ++v90;
    }

    v92 = v90 - v77;
LABEL_164:
    v100 = v92 + v76;
    if (v92 + v76 <= v35)
    {
      goto LABEL_188;
    }

LABEL_182:
    if (v100 > v69 - v21)
    {
      v69 = v21 + v100;
    }

    v101 = (a1 + 8 * result);
    *v101 = v115 - v21;
    v101[1] = v100;
    result = (result + 1);
    v102 = v100 > 0x1000 || a4 + v100 == a5;
    v35 = v100;
    if (v102)
    {
      goto LABEL_107;
    }

LABEL_188:
    v103 = (v119 + 8 * (v21 & ~v106));
    if (*(v78 + v100) < *(a4 + v100))
    {
      break;
    }

    *v68 = v21;
    if (v21 <= v116)
    {
      v68 = &v120;
      goto LABEL_107;
    }

    v68 = (v119 + 8 * (v21 & ~v106));
    v71 = v100;
    if (!--v72)
    {
      goto LABEL_107;
    }

LABEL_110:
    v21 = *v103;
    if (*v103 < v118)
    {
      goto LABEL_107;
    }
  }

  *v67 = v21;
  if (v21 > v116)
  {
    v67 = v103 + 1;
    v70 = v100;
    ++v103;
    if (!--v72)
    {
      goto LABEL_107;
    }

    goto LABEL_110;
  }

  v67 = &v120;
LABEL_107:
  *v68 = 0;
  *v67 = 0;
  *(a2 + 44) = v69 - 8;
  return result;
}