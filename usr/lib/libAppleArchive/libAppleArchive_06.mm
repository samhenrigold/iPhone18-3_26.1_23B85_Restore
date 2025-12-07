void *aaInSituStreamOpen(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  v10 = calloc(1uLL, 0x68uLL);
  v11 = calloc(1uLL, 0x140uLL);
  v12 = v11;
  if (!v10 || !v11)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "aaInSituStreamOpen", 336, 140, 0, "aaCalloc");
LABEL_15:
    free(v10);
    InSituStreamClose(v12);
    return 0;
  }

  *v11 = a1;
  v11[78] = a5;
  v13 = (a2 + 0x3FFF) >> 14;
  v11[72] = v13;
  LODWORD(v13) = v13 + ((a3 + 0x3FFF) >> 14) + (v13 >> 2);
  v11[79] = a4;
  v14 = (v13 + 256);
  *(v12 + 292) = v14;
  if (v13 + 256 < 0)
  {
    *__error() = 12;
    *(v12 + 8) = 0;
    goto LABEL_14;
  }

  v15 = calloc(v14, 0xDuLL);
  *(v12 + 8) = v15;
  if (!v15)
  {
LABEL_14:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "aaInSituStreamOpen", 347, 140, 0, "aaCalloc");
    goto LABEL_15;
  }

  *&v16 = -1;
  *(&v16 + 1) = -1;
  *(v12 + 240) = v16;
  *(v12 + 256) = v16;
  *(v12 + 208) = v16;
  *(v12 + 224) = v16;
  *(v12 + 176) = v16;
  *(v12 + 192) = v16;
  *(v12 + 144) = v16;
  *(v12 + 160) = v16;
  *(v12 + 112) = v16;
  *(v12 + 128) = v16;
  *(v12 + 80) = v16;
  *(v12 + 96) = v16;
  *(v12 + 48) = v16;
  *(v12 + 64) = v16;
  *(v12 + 16) = v16;
  *(v12 + 32) = v16;
  v17 = *(v12 + 292);
  if (v17 >= 1)
  {
    v18 = 0;
    for (i = 0; i < v17; ++i)
    {
      v20 = *(v12 + 8) + v18;
      *(v20 + 1) = i;
      *(v20 + 5) = 0xFFFFFFFF00000000;
      if (i < *(v12 + 288))
      {
        free_page(v12, i);
        v17 = *(v12 + 292);
      }

      v18 += 13;
    }
  }

  if ((AAByteStreamTruncate(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "aaInSituStreamOpen", 362, 140, 0, "AAByteStreamTruncate");
    goto LABEL_15;
  }

  AACustomByteStreamSetData(v10, v12);
  AACustomByteStreamSetCloseProc(v10, InSituStreamClose);
  AACustomByteStreamSetPReadProc(v10, InSituStreamPRead);
  AACustomByteStreamSetPWriteProc(v10, InSituStreamPWrite);
  AACustomByteStreamSetCancelProc(v10, InSituStreamCancel);
  AACustomByteStreamSetCloseProc(v10, InSituStreamClose);
  v10[8] = InSituTruncate;
  v10[11] = InSituStreamSimulate;
  return v10;
}

uint64_t free_page(uint64_t result, int a2)
{
  v3 = result;
  while (1)
  {
    v4 = (*(result + 8) + 13 * a2);
    v5 = *v4;
    if (v5 != 2)
    {
      break;
    }

    a2 = *(v4 + 1);
  }

  if (v5 == 1)
  {
    *v4 = 0;
    *(v4 + 5) = 0;
  }

  ++*(result + 296);
  if ((*(v4 + 9) & 0x80000000) != 0)
  {
    v6 = *(result + 276);
    *(result + 276) = v6 - 1;
    if (v6 >= 2)
    {
      v7 = *(result + 272);
    }

    else
    {
      *(result + 276) = 32;
      result = rand();
      v7 = result & 0x3F;
      *(v3 + 272) = v7;
    }

    v8 = v3 + 4 * v7;
    *(v4 + 9) = *(v8 + 16);
    *(v8 + 16) = a2;
  }

  return result;
}

uint64_t InSituStreamClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 292);
    if (v2 < 1)
    {
      goto LABEL_7;
    }

    v3 = 0;
    v4 = (*(result + 8) + 5);
    do
    {
      v5 = *v4;
      v4 = (v4 + 13);
      v3 += v5;
      --v2;
    }

    while (v2);
    if (v3)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamClose", 298, 140, 0, "%i dangling reads", v3);
      v6 = 0;
    }

    else
    {
LABEL_7:
      v6 = 1;
    }

    v7 = *(v1 + 288);
    v8 = *(v1 + 308);
    if (*(v1 + 300) + v7 != *(v1 + 296) + v8)
    {
      pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamClose", 301, 140, "file + excess != written + free");
      v7 = *(v1 + 288);
      v8 = *(v1 + 308);
    }

    if (v7 < v8)
    {
      pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamClose", 302, 140, "file < written");
    }

    if (*(v1 + 316))
    {
      fprintf(*MEMORY[0x29EDCA610], "InSituStream: pages: %i file, %i written, %i remapped, %i free, %i excess (%iK)\n", *(v1 + 288), *(v1 + 308), *(v1 + 304), *(v1 + 296), *(v1 + 300), 16 * *(v1 + 300));
    }

    free(*(v1 + 8));
    if (*(v1 + 312) && AAByteStreamClose(*v1) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamClose", 319, 140, 0, "AAByteStreamClose");
      v6 = 0;
    }

    free(v1);
    if (v6)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

unint64_t InSituStreamPRead(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = a1[1] + 13 * ((v7 + a4) >> 14);
    v9 = (v7 + a4) & 0x3FFF;
    v10 = a3 - v7 >= 0x4000 - v9 ? 0x4000 - v9 : a3 - v7;
    if (!*(v8 + 5))
    {
      break;
    }

    v11 = *a1;
    if (!*(*a1 + 32))
    {
      goto LABEL_20;
    }

    if (a3 == v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = v9 | (*(v8 + 1) << 14);
      v14 = a2 + v7;
      v15 = v10;
      while (1)
      {
        v16 = (*(v11 + 32))(*v11, v14, v15, v13);
        if (v16 < 0)
        {
          break;
        }

        if (v16)
        {
          v14 += v16;
          v12 += v16;
          v13 += v16;
          v15 -= v16;
          if (v15)
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      v12 = v16;
    }

LABEL_16:
    if (v10 != v12)
    {
LABEL_20:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamPRead", 238, 140, 0, "aaByteStreamPReadExpected");
      return -1;
    }

    v7 += v10;
    if (v7 >= a3)
    {
      return v7;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamPRead", 235, 140, 0, "data not locked");
  return -1;
}

unint64_t InSituStreamPWrite(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = v7 + a4;
    v9 = (v7 + a4) >> 14;
    v10 = (a1[1] + 13 * v9);
    if (a3 - v7 >= 0x4000 - ((v7 + a4) & 0x3FFF))
    {
      v11 = 0x4000 - ((v7 + a4) & 0x3FFF);
    }

    else
    {
      v11 = a3 - v7;
    }

    if (*v10 == 2)
    {
      goto LABEL_9;
    }

    if ((remap_page(a1, v9) & 0x80000000) != 0)
    {
      break;
    }

    *v10 = 2;
    --*(a1 + 74);
    ++*(a1 + 77);
LABEL_9:
    v12 = *a1;
    if (!*(*a1 + 40))
    {
      goto LABEL_21;
    }

    if (a3 == v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = a2 + v7;
      v15 = v11;
      while (1)
      {
        v16 = (*(v12 + 40))(*v12, v14, v15, v8);
        if (v16 < 1)
        {
          break;
        }

        v14 += v16;
        v13 += v16;
        v8 += v16;
        v15 -= v16;
        if (!v15)
        {
          goto LABEL_17;
        }
      }

      v13 = v16;
    }

LABEL_17:
    if (v11 != v13)
    {
LABEL_21:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamPWrite", 268, 140, 0, "aaByteStreamPWriteExpected");
      return -1;
    }

    v7 += v11;
    if (v7 >= a3)
    {
      return v7;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamPWrite", 261, 140, 0, "remap_page");
  return -1;
}

uint64_t InSituStreamSimulate(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  v6 = a4;
  if (a2 == 3)
  {
    v8 = *a1;
    if (!*(*a1 + 32))
    {
      return -1;
    }

    if (!a4)
    {
      return 0;
    }

    v10 = 0;
    while (1)
    {
      v11 = (*(v8 + 32))(*v8, a3, v6, v5);
      if (v11 < 0)
      {
        break;
      }

      if (v11)
      {
        a3 += v11;
        v10 += v11;
        v5 += v11;
        v6 -= v11;
        if (v6)
        {
          continue;
        }
      }

      return v10;
    }

    return v11;
  }

  if (a4 < 1)
  {
    return v6;
  }

  if (a2 > 1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamSimulate", 197, 140, 0, "not implemented");
    return -1;
  }

  v13 = a5 + a4;
  while (1)
  {
    v14 = a1[1] + 13 * (v5 >> 14);
    v17 = *(v14 + 5);
    v15 = (v14 + 5);
    v16 = v17;
    if (!a2)
    {
      break;
    }

    if (v16 <= 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamSimulate", 209, 140, 0, "data not locked");
      return -1;
    }

    v18 = v16 - 1;
    *v15 = v18;
    if (!v18)
    {
      free_page(a1, v5 >> 14);
    }

LABEL_18:
    v5 = (v5 & 0xFFFFFFFFFFFFC000) + 0x4000;
    if (v5 >= v13)
    {
      return v6;
    }
  }

  *v15 = v16 + 1;
  if (v16)
  {
    goto LABEL_18;
  }

  v19 = *(a1 + 74);
  *(a1 + 74) = v19 - 1;
  if (v19)
  {
    goto LABEL_18;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "InSituStreamSimulate", 204, 140, 0, "no free pages");
  return -1;
}

uint64_t remap_page(_DWORD *a1, int a2)
{
  v2 = *(a1 + 1);
  v3 = v2 + 13 * a2;
  if (*(v3 + 5))
  {
    if (*v3 == 1)
    {
      result = remap_page(a1, *(v3 + 1));
      *(v3 + 5) = 0;
      return result;
    }

    v8 = malloc(0x4000uLL);
    v9 = v8;
    if (v8)
    {
      v10 = a1[74];
      if (v10 <= 0)
      {
        v19 = a1[72];
        v20 = a1[75];
        a1[75] = v20 + 1;
        v14 = v20 + v19;
        if (v20 + v19 >= a1[73])
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "allocate_page", 97, 140, 0, "too many excess pages");
        }

        else if ((v14 & 0x80000000) == 0)
        {
LABEL_20:
          v21 = *a1;
          if (*(*a1 + 32))
          {
            v22 = 0;
            v23 = *(v3 + 1) << 14;
            v24 = 0x4000;
            v25 = v8;
            while (1)
            {
              v26 = (*(v21 + 32))(*v21, v25, v24, v23);
              if (v26 < 0)
              {
                break;
              }

              if (v26)
              {
                v25 += v26;
                v22 += v26;
                v23 += v26;
                v24 -= v26;
                if (v24)
                {
                  continue;
                }
              }

              if (v22 != 0x4000)
              {
                break;
              }

              v27 = *a1;
              if (*(*a1 + 40))
              {
                v28 = 0;
                v29 = v14 << 14;
                v30 = 0x4000;
                v31 = v9;
                while (1)
                {
                  v32 = (*(v27 + 40))(*v27, v31, v30, v29);
                  if (v32 < 1)
                  {
                    break;
                  }

                  v31 += v32;
                  v28 += v32;
                  v29 += v32;
                  v30 -= v32;
                  if (!v30)
                  {
                    if (v28 != 0x4000)
                    {
                      break;
                    }

                    v6 = 0;
                    *(v3 + 1) = v14;
                    v33 = *(a1 + 1) + 13 * v14;
                    *v33 = 1;
                    *(v33 + 1) = a2;
                    *(v33 + 5) = 0x7FFFFFFF;
                    ++a1[76];
                    ++a1[74];
                    goto LABEL_35;
                  }
                }
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "remap_page", 158, 140, 0, "aaByteStreamPWriteExpected");
              goto LABEL_34;
            }
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "remap_page", 157, 140, 0, "aaByteStreamPReadExpected");
          goto LABEL_34;
        }
      }

      else
      {
        v11 = a1[70];
        a1[74] = v10 - 1;
        v12 = a1[73];
        if (v12)
        {
          v13 = &a1[(v11 & 0x3F) + 4];
          do
          {
            v14 = *v13;
            if ((*v13 & 0x80000000) != 0 || (v15 = a1[71], v16 = __OFSUB__(v15, 1), --v15, a1[71] = v15, (v15 < 0) ^ v16 | (v15 == 0)))
            {
              a1[71] = 32;
              v17 = a1[70] + 1;
              a1[70] = v17;
              v13 = &a1[(v17 & 0x3F) + 4];
            }

            else
            {
              v18 = v2 + 13 * v14;
              *v13 = *(v18 + 9);
              *(v18 + 9) = -1;
              if (!*(v18 + 5) && !*v18)
              {
                goto LABEL_20;
              }
            }

            --v12;
          }

          while (v12);
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "remap_page", 153, 140, 0, "allocate_page");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/InSituStream.c", "remap_page", 149, 140, 0, "aaMalloc");
    }

LABEL_34:
    v6 = 0xFFFFFFFFLL;
LABEL_35:
    free(v9);
    return v6;
  }

  return 0;
}

uint64_t aeaContextUnlock(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, int a5, int a6)
{
  v119 = *MEMORY[0x29EDCA608];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  memset(v50, 0, sizeof(v50));
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  memset(v45, 0, sizeof(v45));
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  *v93 = 0u;
  v92 = 0;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  *__n = 0u;
  v75 = 0;
  memset(v74, 0, sizeof(v74));
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  v65 = 0;
  memset(v64, 0, sizeof(v64));
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v12 = *(a1 + 1372);
  *a2 = *a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *(a2 + 16) = v13;
  if ((aeaCryptoInit(v50, a2) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 33, 57, 0, "initializing crypto params");
    goto LABEL_74;
  }

  if ((aeaContainerOffsetsInit(v45, a2, v50) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 34, 57, 0, "deriving container offsets");
    goto LABEL_74;
  }

  v16 = DWORD2(v50[0]);
  if (DWORD2(v50[0]) >= 0x101)
  {
    goto LABEL_78;
  }

  v44 = a4;
  __memcpy_chk();
  LODWORD(v93[0]) = v16;
  memset_s(v93 + v16 + 4, 256 - v16, 0, 256 - v16);
  v17 = v52;
  if (v52 >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(v72[0]) = v17;
  memset_s(v72 + v17 + 4, 256 - v17, 0, 256 - v17);
  if (*a2 <= 4u && ((1 << *a2) & 0x15) != 0)
  {
    v18 = *(a1 + 332);
    if (v18)
    {
      if (v18 >= 0x101)
      {
        goto LABEL_78;
      }

      __memcpy_chk();
      LODWORD(v74[0]) = v18;
      memset_s(v74 + v18 + 4, 256 - v18, 0, 256 - v18);
    }

    else if (*(a1 + 592))
    {
      if (!*(&v59 + 1) || (v34 = (*(&v59 + 1))(v74, a1 + 592), LODWORD(v74[0]) != v51) || v34 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 47, 57, 0, "deriving signing public key");
        goto LABEL_74;
      }
    }
  }

  if (!a6 || !v12)
  {
    if ((aeaDeriveMainKeyExisting(v50, a2, __n, (a1 + 72), (a1 + 2152), v72, v74, (a1 + 852), (a1 + 1112), v93, *(a1 + 2432), *(a1 + 2440)) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 70, 57, 0, "Main key derivation");
LABEL_74:
    v29 = 0;
    goto LABEL_75;
  }

  v19 = *(a1 + 1372);
  if (v19 >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(__n[0]) = v19;
  memset_s(__n + v19 + 4, 256 - v19, 0, 256 - v19);
LABEL_17:
  if (!a5)
  {
    goto LABEL_20;
  }

  if (*a2 > 5u)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 102, 57, 0, "Unsupported signature mode");
    goto LABEL_74;
  }

  v20 = 1 << *a2;
  if ((v20 & 0x2A) != 0)
  {
    goto LABEL_20;
  }

  if ((v20 & 0x14) == 0)
  {
    v41 = *(a1 + 2448);
    if (v41 >= 0x101)
    {
      goto LABEL_78;
    }

    __memcpy_chk();
    LODWORD(v68[0]) = v41;
    memset_s(v68 + v41 + 4, 256 - v41, 0, 256 - v41);
    goto LABEL_62;
  }

  memset(&v118[8], 0, 252);
  memset(__s, 0, 260);
  *&v118[7] = 1262834527;
  *v118 = 0x5F41454100000007;
  memset_s(&v118[11], 0xF9uLL, 0, 0xF9uLL);
  if (!*(&v53 + 1) || !LODWORD(__n[0]))
  {
    memset_s(v118, 0x104uLL, 0, 0x104uLL);
    goto LABEL_69;
  }

  v35 = (*(&v53 + 1))(v70, LODWORD(v50[0]), __n, v118, __s);
  memset_s(v118, 0x104uLL, 0, 0x104uLL);
  if (v35 < 0)
  {
LABEL_69:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 89, 57, 0, "deriving signature encryption key");
    goto LABEL_74;
  }

  if (!*(&v58 + 1))
  {
LABEL_73:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 90, 57, 0, "decrypting signature");
    goto LABEL_74;
  }

  memset(__s, 0, 260);
  v116 = 0;
  memset(v115, 0, sizeof(v115));
  v114 = 0;
  memset(v113, 0, sizeof(v113));
  if (*(a1 + 2448) != HIDWORD(v51))
  {
    goto LABEL_72;
  }

  if (LODWORD(v70[0]) != LODWORD(v50[0]))
  {
    goto LABEL_72;
  }

  *(v115 + 4) = 0x324B45535F414541;
  LODWORD(v115[0]) = 8;
  memset_s((v115 | 0xC), 0xF8uLL, 0, 0xF8uLL);
  memset(v118, 0, sizeof(v118));
  if (!*(&v53 + 1) || !LODWORD(v70[0]) || ((*(&v53 + 1))(__s, DWORD1(v50[0]), v70, v115, v118) & 0x80000000) != 0)
  {
    goto LABEL_72;
  }

  v36 = DWORD2(v51);
  if (DWORD2(v51) >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(v68[0]) = v36;
  memset_s(v68 + v36 + 4, 256 - v36, 0, 256 - v36);
  v37 = HIDWORD(v50[0]);
  if (HIDWORD(v50[0]) >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(v113[0]) = v37;
  memset_s(v113 + v37 + 4, 256 - v37, 0, 256 - v37);
  if (((*(&v58 + 1))(v68 + 4, LODWORD(v68[0]), v113, __s, 0, 0) & 0x80000000) != 0)
  {
LABEL_72:
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    memset_s(v113, 0x104uLL, 0, 0x104uLL);
    memset_s(v115, 0x104uLL, 0, 0x104uLL);
    goto LABEL_73;
  }

  v38 = v68[0];
  v39 = DWORD2(v51);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  memset_s(v113, 0x104uLL, 0, 0x104uLL);
  memset_s(v115, 0x104uLL, 0, 0x104uLL);
  if (v38 != v39)
  {
    goto LABEL_73;
  }

LABEL_62:
  if (!*(&v56 + 1) || (v42 = (*(&v56 + 1))(v66, *(a1 + 2720), *(a1 + 2728)), LODWORD(v66[0]) != DWORD1(v51)) || v42 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 94, 57, 0, "digesting prologue");
    goto LABEL_74;
  }

  if (!*(&v57 + 1) || ((*(&v57 + 1))(v68, v74, v66) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 97, 57, 0, "verifying signature");
    goto LABEL_74;
  }

LABEL_20:
  v21 = HIDWORD(v50[0]);
  if (HIDWORD(v50[0]) >= 0x101)
  {
    goto LABEL_78;
  }

  __memcpy_chk();
  LODWORD(v64[0]) = v21;
  memset_s(v64 + v21 + 4, 256 - v21, 0, 256 - v21);
  v22 = *(a1 + 2720);
  v24 = *(v22 + v46 + 16);
  v23 = *(v22 + v46 + 32);
  v110 = *(v22 + v46);
  v111 = v24;
  v112 = v23;
  v25 = HIDWORD(v50[0]);
  v26 = *(a2 + 4);
  v27 = (v26 + HIDWORD(v50[0]));
  v28 = malloc(v27);
  v29 = v28;
  if (!v28)
  {
    v40 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 113, 57, *v40, "malloc");
LABEL_75:
    v31 = 0xFFFFFFFFLL;
    goto LABEL_76;
  }

  memcpy(v28, (v22 + *(&v46 + 1)), v25);
  memcpy(&v29[v25], (v22 + *(&v45[0] + 1)), v26);
  memset(__s + 12, 0, 248);
  *(__s + 4) = 0x4B4548525F414541;
  LODWORD(__s[0]) = 8;
  memset_s(__s + 12, 0xF8uLL, 0, 0xF8uLL);
  memset(v118, 0, sizeof(v118));
  if (!*(&v53 + 1) || !LODWORD(__n[0]))
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
LABEL_58:
    v31 = 0xFFFFFFFFLL;
    goto LABEL_59;
  }

  v30 = (*(&v53 + 1))(v62, DWORD1(v50[0]), __n, __s, v118);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  if (v30 < 0 || !v55 || LODWORD(v64[0]) != HIDWORD(v50[0]) || ((v55)(&v110, 48, v64, v62, v29, v27) & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  if ((aeaContainerParamsInitWithRootHeader(a2, &v110) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextUnlock", 126, 57, 0, "Invalid root header");
    goto LABEL_58;
  }

  v31 = v44;
  if (a3)
  {
    v32 = LODWORD(__n[0]);
    if (LODWORD(__n[0]) >= 0x101)
    {
      goto LABEL_78;
    }

    memcpy(a3 + 1, __n + 4, LODWORD(__n[0]));
    *a3 = v32;
    memset_s(a3 + v32 + 4, 256 - v32, 0, 256 - v32);
  }

  if (v44)
  {
    v33 = LODWORD(v93[0]);
    if (LODWORD(v93[0]) < 0x101)
    {
      memcpy(v44 + 1, v93 + 4, LODWORD(v93[0]));
      *v44 = v33;
      memset_s(v44 + v33 + 4, 256 - v33, 0, 256 - v33);
      v31 = 0;
      goto LABEL_59;
    }

LABEL_78:
    __break(1u);
  }

LABEL_59:
  memset_s(v29, v27, 0, v27);
LABEL_76:
  free(v29);
  memset_s(v50, 0xD0uLL, 0, 0xD0uLL);
  memset_s(v45, 0x68uLL, 0, 0x68uLL);
  memset_s(&v110, 0x30uLL, 0, 0x30uLL);
  memset_s(v72, 0x104uLL, 0, 0x104uLL);
  memset_s(v70, 0x104uLL, 0, 0x104uLL);
  memset_s(v68, 0x104uLL, 0, 0x104uLL);
  memset_s(v66, 0x104uLL, 0, 0x104uLL);
  memset_s(v93, 0x104uLL, 0, 0x104uLL);
  memset_s(__n, 0x104uLL, 0, 0x104uLL);
  memset_s(v64, 0x104uLL, 0, 0x104uLL);
  memset_s(v62, 0x104uLL, 0, 0x104uLL);
  memset_s(v74, 0x104uLL, 0, 0x104uLL);
  return v31;
}

uint64_t aeaContextCreateWithPrologue(_DWORD *a1, size_t a2)
{
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
  v25 = 0u;
  memset(__s, 0, sizeof(__s));
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = malloc(0xAB8uLL);
  v5 = v4;
  if (!v4)
  {
    v8 = *__error();
    v6 = "malloc";
    v7 = 161;
LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextCreateWithPrologue", v7, 57, v8, v6, v17);
    AEAContextDestroy(v5);
    return 0;
  }

  memset_s(v4, 0xAB8uLL, 0, 0xAB8uLL);
  *(v5 + 684) = 1;
  if (a2 <= 0xB)
  {
    v6 = "Invalid prologue";
    v7 = 167;
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  if ((aeaContainerParamsInitWithMagic(v5, a1) & 0x80000000) != 0)
  {
    v6 = "Invalid magic";
    v7 = 168;
    goto LABEL_15;
  }

  if ((aeaCryptoInit(__s, v5) & 0x80000000) != 0)
  {
    v6 = "Invalid container";
    v7 = 169;
    goto LABEL_15;
  }

  if ((aeaContainerOffsetsInit(&v17, v5, __s) & 0x80000000) != 0)
  {
    v6 = "deriving container offsets";
    v7 = 170;
    goto LABEL_15;
  }

  if (v21 != a2)
  {
    v6 = "Prologue size mismatch";
    v7 = 171;
    goto LABEL_15;
  }

  *(v5 + 341) = a2;
  if (a2 >= 0x2000000001)
  {
    *__error() = 12;
    *(v5 + 340) = 0;
LABEL_28:
    v8 = *__error();
    v6 = "malloc";
    v7 = 176;
    goto LABEL_16;
  }

  v10 = malloc(a2);
  *(v5 + 340) = v10;
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = v10;
  memcpy(v10, a1, a2);
  v12 = *(v5 + 1);
  if (v12)
  {
    v13 = malloc(*(v5 + 1));
    *(v5 + 339) = v13;
    if (!v13)
    {
      v8 = *__error();
      v6 = "malloc";
      v7 = 184;
      goto LABEL_16;
    }

    memcpy(v13, &v11[*(&v17 + 1)], v12);
  }

  if (!*(&v35 + 1) || (result = (*(&v35 + 1))(v5 + 1892, v11, a2), *(v5 + 473) != DWORD1(v26)) || (result & 0x80000000) != 0)
  {
    v6 = "digesting prologue";
    v7 = 189;
    goto LABEL_15;
  }

  v14 = HIDWORD(v25);
  if (HIDWORD(v25) < 0x101)
  {
    v15 = *(v5 + 340);
    v16 = v18;
    __memcpy_chk();
    *(v5 + 612) = v14;
    memset_s(v5 + v14 + 2452, 256 - v14, 0, 256 - v14);
    if (v15)
    {
      memset_s((v15 + v16), v14, 0, v14);
    }

    return v5;
  }

  __break(1u);
  return result;
}

void AEAContextDestroy(AEAContext context)
{
  if (context)
  {
    v2 = *(context + 339);
    if (v2)
    {
      memset_s(*(context + 339), *(context + 1), 0, *(context + 1));
    }

    free(v2);
    v3 = *(context + 340);
    if (v3)
    {
      memset_s(*(context + 340), *(context + 341), 0, *(context + 341));
    }

    free(v3);
    memset_s(context, 0xAB8uLL, 0, 0xAB8uLL);

    free(context);
  }
}

AEAContext AEAContextCreateWithProfile(AEAProfile profile)
{
  v2 = malloc(0xAB8uLL);
  v3 = v2;
  if (!v2)
  {
    v4 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithProfile", 237, 57, v4, "malloc");
    goto LABEL_5;
  }

  memset_s(v2, 0xAB8uLL, 0, 0xAB8uLL);
  *(v3 + 684) = 0;
  if ((aeaContainerParamsInitWithProfile(v3, profile) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithProfile", 243, 57, 0, "Invalid profile: %u");
LABEL_5:
    AEAContextDestroy(v3);
    return 0;
  }

  return v3;
}

AEAContext AEAContextCreateWithEncryptedStream(AAByteStream encrypted_stream)
{
  memset(__s, 0, sizeof(__s));
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v25 = 0;
  *__size = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  LODWORD(v18) = 0;
  v17 = 0;
  if (*(encrypted_stream + 2))
  {
    v2 = 0;
    v3 = &v17;
    v4 = 12;
    do
    {
      v5 = (*(encrypted_stream + 2))(*encrypted_stream, v3, v4);
      if (v5 < 0)
      {
        goto LABEL_12;
      }

      if (!v5)
      {
        break;
      }

      v3 = (v3 + v5);
      v2 += v5;
      v4 -= v5;
    }

    while (v4);
    if (v2 != 12)
    {
      goto LABEL_12;
    }

    if ((aeaContainerParamsInitWithMagic(v26, &v17) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", 264, 57, 0, "Invalid magic", v17, v18, v19, v20, v21, v22);
      goto LABEL_13;
    }

    if ((aeaCryptoInit(__s, v26) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", 265, 57, 0, "Invalid container", v17, v18, v19, v20, v21, v22);
      goto LABEL_13;
    }

    if ((aeaContainerOffsetsInit(&v19, v26, __s) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", 266, 57, 0, "deriving container offsets", v17, v18, v19, v20, v21, v22);
      goto LABEL_13;
    }

    v6 = __size[0];
    if (__size[0] >= 0x2000000001)
    {
      *__error() = 12;
LABEL_27:
      v15 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", 271, 57, v15, "malloc", v17, v18, v19, v20, v21, v22);
      goto LABEL_13;
    }

    v10 = malloc(__size[0]);
    if (!v10)
    {
      goto LABEL_27;
    }

    v7 = v10;
    *v10 = v17;
    v10[2] = v18;
    if (*(encrypted_stream + 2))
    {
      v11 = 0;
      if (v6 != 12)
      {
        v12 = (v10 + 3);
        v13 = v6 - 12;
        while (1)
        {
          v14 = (*(encrypted_stream + 2))(*encrypted_stream, v12, v13);
          if (v14 < 0)
          {
            break;
          }

          if (v14)
          {
            v12 += v14;
            v11 += v14;
            v13 -= v14;
            if (v13)
            {
              continue;
            }
          }

          goto LABEL_30;
        }

        v11 = v14;
      }
    }

    else
    {
      v11 = -1;
    }

LABEL_30:
    if (v11 == v6 - 12)
    {
      v16 = aeaContextCreateWithPrologue(v7, v6);
      if (v16)
      {
        v8 = v16;
        free(v7);
        return v8;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", 280, 57, 0, "Context creation", v17, v18, v19, v20, v21, v22);
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", 276, 57, 0, "reading prologue", v17, v18, v19, v20, v21, v22);
    }
  }

  else
  {
LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", 263, 57, 0, "reading magic", v17, v18, v19, v20, v21, v22);
LABEL_13:
    v7 = 0;
  }

  free(v7);
  AEAContextDestroy(0);
  return 0;
}

uint64_t AEAContextGetFieldUInt(AEAContext context, AEAContextField field)
{
  if (field > 3)
  {
    if (field > 13)
    {
      if (field == 14)
      {
        return *(context + 5);
      }

      if (field == 17)
      {
        return *(context + 5);
      }
    }

    else
    {
      if (field == 4)
      {
        return *(context + 4);
      }

      if (field == 13)
      {
        return *(context + 4);
      }
    }

    goto LABEL_19;
  }

  if (field <= 1)
  {
    if (!field)
    {
      return *context;
    }

    if (field == 1)
    {
      return *(context + 7);
    }

LABEL_19:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldUInt", 314, 57, 0, "Invalid field");
    return -1;
  }

  if (field == 2)
  {
    return *(context + 3);
  }

  else
  {
    return *(context + 6);
  }
}

int AEAContextGetFieldBlob(AEAContext context, AEAContextField field, AEAContextFieldRepresentation representation, size_t buf_capacity, uint8_t *buf, size_t *buf_size)
{
  if (field > 0x13)
  {
    goto LABEL_18;
  }

  if (((1 << field) & 0xC1260) != 0)
  {
    if (representation)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldBlob", 337, 57, 0, "Invalid representation");
      return -1;
    }

    goto LABEL_7;
  }

  if (((1 << field) & 0xD80) == 0)
  {
LABEL_18:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldBlob", 346, 57, 0, "Invalid field");
    return -1;
  }

  if (representation != 1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldBlob", 343, 57, 0, "Invalid representation");
    return -1;
  }

LABEL_7:
  if (field > 9)
  {
    if (field <= 11)
    {
      if (field == 10)
      {
        v6 = (context + 852);
      }

      else
      {
        v6 = (context + 1112);
      }

LABEL_34:

      return getFieldBlob(v6, buf_capacity, buf, buf_size);
    }

    switch(field)
    {
      case 0xCu:
        v6 = (context + 1632);
        goto LABEL_34;
      case 0x12u:
        v6 = (context + 1892);
        goto LABEL_34;
      case 0x13u:
        v6 = (context + 2152);
        goto LABEL_34;
    }

LABEL_37:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldBlob", 375, 57, 0, "Invalid field");
    return -1;
  }

  if (field > 6)
  {
    if (field == 7)
    {
      v6 = (context + 332);
    }

    else if (field == 8)
    {
      v6 = (context + 592);
    }

    else
    {
      v6 = (context + 72);
    }

    goto LABEL_34;
  }

  if (field != 5)
  {
    if (field == 6)
    {
      v6 = (context + 1372);
      goto LABEL_34;
    }

    goto LABEL_37;
  }

  if (buf_size)
  {
    *buf_size = *(context + 1);
  }

  if (buf_capacity)
  {
    v7 = *(context + 1);
    if (v7 > buf_capacity)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldBlob", 358, 57, 0, "buf_capacity is too small");
      return -1;
    }

    memcpy(buf, *(context + 339), v7);
  }

  return 0;
}

uint64_t getFieldBlob(unsigned int *a1, size_t a2, void *__dst, void *a4)
{
  if (a4)
  {
    *a4 = *a1;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = *a1;
  if (v4 <= a2)
  {
    memcpy(__dst, a1 + 1, v4);
    return 0;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "getFieldBlob", 212, 57, 0, "buf_capacity is too small");
    return 0xFFFFFFFFLL;
  }
}

int AEAContextSetFieldUInt(AEAContext context, AEAContextField field, uint64_t value)
{
  if (field != 1 && *(context + 684))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldUInt", 384, 57, 0, "Context can't be modified");
    return -1;
  }

  if (field <= 2)
  {
    if (field == 1)
    {
      if (value - 16 >= 0xFFFFFFFFFFFFFFF2)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldUInt", 415, 57, 0, "Invalid padding size");
        return -1;
      }

      result = 0;
      *(context + 7) = value;
      return result;
    }

    if (field == 2)
    {
      if (value > 2)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldUInt", 429, 57, 0, "Invalid checksum mode");
        return -1;
      }

      *(context + 3) = value;
      v5 = aeaChecksumSize(value);
      result = 0;
      *(context + 12) = v5;
      return result;
    }

LABEL_30:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldUInt", 439, 57, 0, "Invalid field");
    return -1;
  }

  if (field == 17)
  {
    result = 0;
    v6 = 32;
    if (value > 0x20)
    {
      v6 = value;
    }

    if (v6 >= 0x40000)
    {
      LODWORD(v6) = 0x40000;
    }

    *(context + 5) = v6;
    return result;
  }

  if (field == 4)
  {
    result = 0;
    v7 = 0x4000;
    if (value > 0x4000)
    {
      v7 = value;
    }

    if (v7 >= 0x10000000)
    {
      LODWORD(v7) = 0x10000000;
    }

    *(context + 4) = v7;
    return result;
  }

  if (field != 3)
  {
    goto LABEL_30;
  }

  if (value <= 1284)
  {
    if (value && value != 256 && value != 774)
    {
      goto LABEL_40;
    }
  }

  else if (value > 2048)
  {
    if (value != 2304 && value != 2049)
    {
      goto LABEL_40;
    }
  }

  else if (value != 1285 && value != 1794)
  {
LABEL_40:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldUInt", 398, 57, 0, "Invalid compression algorithm");
    return -1;
  }

  result = 0;
  *(context + 6) = value;
  return result;
}

int AEAContextSetFieldBlob(AEAContext context, AEAContextField field, AEAContextFieldRepresentation representation, const uint8_t *buf, size_t buf_size)
{
  if (field > 0x13)
  {
    goto LABEL_21;
  }

  if (((1 << field) & 0x81260) != 0)
  {
    if (representation)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 458, 57, 0, "Invalid representation");
      return -1;
    }

    if (field == 19 && buf_size <= 0x13)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 471, 57, 0, "Password is too short");
      return -1;
    }

    goto LABEL_7;
  }

  if (((1 << field) & 0xD80) == 0)
  {
LABEL_21:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 467, 57, 0, "Invalid field");
    return -1;
  }

  if (representation != 1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 464, 57, 0, "Invalid representation");
    return -1;
  }

LABEL_7:
  if (field > 8)
  {
    if (field > 10)
    {
      switch(field)
      {
        case 0xBu:
          v8 = context + 1112;
          goto LABEL_32;
        case 0xCu:
          v8 = context + 1632;
          goto LABEL_32;
        case 0x13u:
          v8 = context + 2152;
          goto LABEL_32;
      }

LABEL_35:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 502, 57, 0, "Invalid field");
      return -1;
    }

    if (field == 9)
    {
      v8 = context + 72;
    }

    else
    {
      v8 = context + 852;
    }

LABEL_32:

    return setFieldBlob(v8, buf, buf_size);
  }

  if (field > 6)
  {
    if (field == 7)
    {
      v8 = context + 332;
    }

    else
    {
      v8 = context + 592;
    }

    goto LABEL_32;
  }

  if (field != 5)
  {
    if (field == 6)
    {
      v8 = context + 1372;
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  if (*(context + 684))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 477, 57, 0, "Context can't be modified");
    return -1;
  }

  v10 = *(context + 339);
  if (v10)
  {
    memset_s(*(context + 339), *(context + 1), 0, *(context + 1));
  }

  free(v10);
  *(context + 339) = 0;
  *(context + 1) = 0;
  if (buf_size)
  {
    if (buf_size >= 0x4000001)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 483, 57, 0, "Invalid auth data size: %zu");
      return -1;
    }

    v11 = malloc(buf_size);
    *(context + 339) = v11;
    if (!v11)
    {
      v12 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", 486, 57, v12, "malloc");
      return -1;
    }

    *(context + 1) = buf_size;
    memcpy(v11, buf, buf_size);
  }

  return 0;
}

uint64_t setFieldBlob(_DWORD *a1, const void *a2, size_t a3)
{
  if (a3 < 0x101)
  {
    v6 = a1 + 1;
    memcpy(a1 + 1, a2, a3);
    *a1 = a3;
    memset_s(v6 + a3, 256 - a3, 0, 256 - a3);
    return 0;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "setFieldBlob", 223, 57, 0, "Invalid field size");
    return 0xFFFFFFFFLL;
  }
}

int AEAContextGenerateFieldBlob(AEAContext context, AEAContextField field)
{
  v6 = 0;
  if (field == 19)
  {
    v3 = context + 2156;
    result = AEAKeychainGenerateItem(0, 0x63uLL, 0x100uLL, context + 2156, &v6);
    if ((result & 0x80000000) == 0)
    {
      v5 = v6;
      if (v6 < 0x101)
      {
        *(context + 538) = v6;
        goto LABEL_9;
      }

      goto LABEL_15;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGenerateFieldBlob", 527, 57, 0, "generate random field");
  }

  else if (field == 9)
  {
    v3 = context + 76;
    result = AEAKeychainGenerateItem(1, 0x100uLL, 0x100uLL, context + 76, &v6);
    if ((result & 0x80000000) == 0)
    {
      v5 = v6;
      if (v6 < 0x101)
      {
        *(context + 18) = v6;
LABEL_9:
        memset_s(&v3[v5], 256 - v5, 0, 256 - v5);
        return 0;
      }

LABEL_15:
      __break(1u);
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGenerateFieldBlob", 520, 57, 0, "generate random field");
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGenerateFieldBlob", 532, 57, 0, "Invalid field");
  }

  return -1;
}

uint64_t AEAContextSetFieldCallback(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 16)
  {
    result = 0;
    a1[305] = a3;
    a1[304] = a4;
  }

  else if (a2 == 15)
  {
    result = 0;
    a1[303] = a3;
    a1[302] = a4;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldCallback", 555, 57, 0, "Invalid field", v4, v5);
    return 0xFFFFFFFFLL;
  }

  return result;
}

unint64_t AEAContextGetContainerSizeUpperBound(uint64_t a1, uint64_t a2)
{
  memset(__s, 0, sizeof(__s));
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  if ((aeaCryptoInit(__s, a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetContainerSizeUpperBound", 569, 57, 0, "Invalid context", v8, v9, v10, v11);
    return -1;
  }

  if ((aeaContainerOffsetsInit(&v8, a1, __s) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetContainerSizeUpperBound", 572, 57, 0, "deriving container offsets", v8, v9, v10, v11);
    return -1;
  }

  v4 = v14 * (((a2 + *(a1 + 16) - 1) / *(a1 + 16) + *(a1 + 20) - 1) / *(a1 + 20));
  v5 = __CFADD__(v12, v4);
  v6 = v12 + v4;
  if (v5)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetContainerSizeUpperBound", 580, 57, 0, "invalid sizes", v8, v9, v10, v11);
    return -1;
  }

  if (__CFADD__(v6, a2))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetContainerSizeUpperBound", 581, 57, 0, "invalid sizes", v8, v9, v10, v11);
    return -1;
  }

  result = aeaPaddedContainerSize(v6 + a2, *(a1 + 56));
  if (result == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetContainerSizeUpperBound", 585, 57, 0, "Container size is too large to allow padding", v8, v9, v10, v11);
    return -1;
  }

  return result;
}

uint64_t LargeFileWorker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v71 = *MEMORY[0x29EDCA608];
  *(v8 + 8) = 0;
  if (atomic_load((*v8 + 104)))
  {
    return 0;
  }

  v10 = v8;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = *v8;
  v15 = *(v8 + 32);
  v69 = 0;
  v16 = *(v14 + 56) - (v15 << 21);
  if (v16 >= 0x200000)
  {
    v17 = 0x200000;
  }

  else
  {
    v17 = *(v14 + 56) - (v15 << 21);
  }

  if (v16 >= 0x11)
  {
    v12 = malloc(0x1000000uLL);
    v11 = malloc(v17);
    v21 = malloc(0x40000uLL);
    v13 = v21;
    if (!v12 || (v11 ? (v22 = v21 == 0) : (v22 = 1), v22))
    {
      v28 = *__error();
      v29 = "aaMalloc";
      v30 = 496;
LABEL_72:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_output_block", v30, 112, v28, v29);
      v20 = 0;
      goto LABEL_73;
    }

    memset(__b, 255, sizeof(__b));
    v23 = *(v14 + 24);
    if (!v23[4])
    {
      goto LABEL_70;
    }

    v24 = 0;
    v64 = v15;
    v65 = v17;
    v25 = v15 << 21;
    v26 = v11;
    while (1)
    {
      v27 = (v23[4])(*v23, v26, v17, v25);
      if (v27 < 0)
      {
        break;
      }

      if (v27)
      {
        v26 += v27;
        v24 += v27;
        v25 += v27;
        v17 -= v27;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v24 = v27;
LABEL_25:
    LODWORD(v15) = v64;
    v17 = v65;
    if (v65 == v24)
    {
      v31 = 0;
      v32 = 0;
      do
      {
        v32 = -1640531535 * (v32 + v11[v31++]);
      }

      while (v31 != 16);
      v66 = v12;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = *(v14 + 76);
      v38 = 17;
      if (v65 > 0x11)
      {
        v38 = v65;
      }

      v39 = v38 - 17;
      do
      {
        if (v33 >= v35 || (*(v14 + 68) & ~v32) == 0)
        {
          v35 = v33 + (2 * *(v14 + 72));
          if (v33 >= v34)
          {
            v40 = *(*(v14 + 40) + 4 * (v32 >> -*(v14 + 64)));
            if (v40 != -1)
            {
              v41 = __ROR8__(__ROR8__(2654435761 * *&v11[v33], 41) + 2654435761 * *&v11[v33 + 8], 41);
              v42 = HIDWORD(v41) ^ v41;
              while (1)
              {
                v43 = *(v14 + 32) + 16 * v40;
                if (*(v43 + 8) == v42)
                {
                  break;
                }

                v40 = *(v43 + 12);
                if (v40 == -1)
                {
                  goto LABEL_46;
                }
              }

              v44 = *v43;
              v45 = v44 >> 20;
              v46 = v44 & 0xFFFFFFFFFFF00000;
              v47 = __b[v45];
              v48 = v47;
              if (v47 == -1)
              {
LABEL_42:
                if (v36 != 0x4000)
                {
                  v50 = &v13[16 * v36];
                  *v50 = v46;
                  *(v50 + 2) = v47;
                  *(v50 + 3) = 1;
                  __b[v45] = v36++;
                }
              }

              else
              {
                while (1)
                {
                  v49 = &v13[16 * v48];
                  if (*v49 == v46)
                  {
                    break;
                  }

                  v48 = *(v49 + 2);
                  if (v48 == -1)
                  {
                    goto LABEL_42;
                  }
                }

                ++*(v49 + 3);
              }

              v34 = v33 + 16;
            }
          }
        }

LABEL_46:
        v32 = -1640531535 * (v32 + v11[v33 + 16]) - v37 * v11[v33];
        v22 = v33++ == v39;
      }

      while (!v22);
      if (!v36)
      {
        goto LABEL_6;
      }

      v63 = v11;
      qsort(v13, v36, 0x10uLL, chunk_compare_by_rating);
      if (v36 >= 0x10)
      {
        v51 = 16;
      }

      else
      {
        v51 = v36;
      }

      v67 = v51;
      qsort(v13, v51, 0x10uLL, chunk_compare_by_position);
      v52 = 0;
      LODWORD(v19) = 0;
      v68 = v13;
      do
      {
        v53 = *&v13[16 * v52];
        v54 = *(v14 + 48);
        if ((v54 - v53) >= 0x100000)
        {
          v55 = 0x100000;
        }

        else
        {
          v55 = v54 - v53;
        }

        v56 = *(v14 + 16);
        if (!v56[4])
        {
          goto LABEL_80;
        }

        if (v54 == v53)
        {
          v57 = 0;
        }

        else
        {
          v57 = 0;
          v58 = &v66[v19];
          v59 = v55;
          while (1)
          {
            v60 = (v56[4])(*v56, v58, v59, v53);
            if (v60 < 0)
            {
              break;
            }

            if (v60)
            {
              v58 += v60;
              v57 += v60;
              v53 += v60;
              v59 -= v60;
              if (v59)
              {
                continue;
              }
            }

            goto LABEL_65;
          }

          v57 = v60;
        }

LABEL_65:
        v13 = v68;
        if (v55 != v57)
        {
LABEL_80:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_output_block", 546, 112, 0, "aaByteStreamPReadExpected");
          v20 = 0;
          v12 = v66;
          v11 = v63;
          goto LABEL_73;
        }

        v19 = (v19 + v55);
        ++v52;
      }

      while (v52 != v67);
      v12 = v66;
      v11 = v63;
      if ((getBXDiffControls(v66, v19, v63, v65, &v69, v10 + 2, v14) & 0x80000000) != 0)
      {
        v29 = "generic controls";
        v30 = 550;
      }

      else
      {
        v69 = convert_block_controls(v10 + 2, v69, v10[2], v68);
        if (v69)
        {
          LODWORD(v15) = v64;
          goto LABEL_8;
        }

        v29 = "convert_block_controls";
        v30 = 552;
      }
    }

    else
    {
LABEL_70:
      v29 = "aaByteStreamPReadExpected";
      v30 = 501;
    }

    v28 = 0;
    goto LABEL_72;
  }

LABEL_6:
  v18 = malloc(0x18uLL);
  v69 = v18;
  if (!v18)
  {
    v28 = *__error();
    v29 = "aaMalloc";
    v30 = 534;
    goto LABEL_72;
  }

  LODWORD(v19) = 0;
  *v18 = 0;
  v18[1] = v17;
  v18[2] = 0;
  v10[2] = 1;
LABEL_8:
  if (*(v14 + 4) >= 3)
  {
    fprintf(*MEMORY[0x29EDCA610], " LargeFile: Block = %5u, %5u K cache, %6zu controls\n", v15, v19 >> 10, v10[2]);
  }

  v20 = 1;
LABEL_73:
  free(v12);
  free(v11);
  free(v13);
  if ((v20 & 1) == 0)
  {
    free(v69);
  }

  v61 = v69;
  if (!v20)
  {
    v61 = 0;
  }

  v10[1] = v61;
  if (v61)
  {
    return 0;
  }

  atomic_compare_exchange_strong((*v10 + 104), &v61, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t LargeFileConsumer(char **a1, void *a2)
{
  if (atomic_load((*a2 + 104)))
  {
    return 0;
  }

  result = a2[1];
  if (result)
  {
    if (a2[2])
    {
      v6 = 0;
      v7 = 0;
      v8 = *a1;
      do
      {
        v8 = add_control(v8, a1 + 1, a1 + 2, *(a2[1] + v6), *(a2[1] + v6 + 8), *(a2[1] + v6 + 16));
        *a1 = v8;
        if (!v8)
        {
          break;
        }

        ++v7;
        v6 += 24;
      }

      while (v7 < a2[2]);
      result = a2[1];
    }

    free(result);
    if (!*a1)
    {
      v9 = *a1;
      atomic_compare_exchange_strong((*a2 + 104), &v9, 1u);
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  return result;
}

uint64_t GetLargeFileControlsWithStreams(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void **a5, uint64_t *a6, uint64_t *a7)
{
  RealTime = getRealTime();
  DefaultNThreads = *(a7 + 2);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  *v74 = 0;
  v72 = 0u;
  *v73 = 0u;
  *v70 = 0u;
  v71 = 0u;
  v67 = 0;
  v63 = 0;
  v64 = 0;
  v68 = a1;
  v69 = a3;
  v16 = *a7;
  v65 = 0;
  v66[1] = HIDWORD(v16);
  LODWORD(v16) = __clz((a2 + 15) >> 4);
  v66[0] = 21;
  v17 = 63 - v16;
  LODWORD(v67) = 1;
  v18 = 1 << ~v16;
  v19 = 16;
  v70[1] = a2;
  *&v71 = a4;
  if (v18 >= (a2 + 15) >> 4)
  {
    v20 = v17;
  }

  else
  {
    v20 = v17 + 1;
  }

  LODWORD(v72) = 16;
  if (v20 < 0x1E)
  {
    v21 = 15;
  }

  else
  {
    do
    {
      --v20;
      v19 *= 2;
    }

    while (v20 > 0x1D);
    LODWORD(v72) = v19;
    v21 = v19 - 1;
    v20 = 29;
  }

  *(&v71 + 1) = __PAIR64__(v21, v20);
  DWORD1(v72) = 840293553;
  if (DefaultNThreads < 0xCCCCCCCD)
  {
    v22 = calloc(DefaultNThreads, 0x28uLL);
  }

  else
  {
    v22 = 0;
    *__error() = 12;
  }

  v73[0] = v22;
  v23 = calloc(DefaultNThreads, 8uLL);
  v73[1] = v23;
  if (!v22 || !v23)
  {
    v38 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", 672, 112, v38, "aaCalloc");
    goto LABEL_35;
  }

  *(&v69 + 1) = pc_array_init(16, (5 * (a2 / v72)) >> 2);
  if (!*(&v69 + 1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", 678, 112, 0, "pc_array_init");
    goto LABEL_35;
  }

  v24 = malloc(4 << SBYTE8(v71));
  v70[0] = v24;
  if (!v24)
  {
    v41 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", 683, 112, v41, "malloc");
    goto LABEL_35;
  }

  memset(v24, 255, 4 << SBYTE8(v71));
  v25 = calloc(DefaultNThreads, 0x20uLL);
  v26 = calloc(DefaultNThreads, 8uLL);
  v27 = v26;
  if (!v25 || !v26)
  {
    v42 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 433, 112, *v42, "aaCalloc");
    v32 = 0;
LABEL_47:
    v37 = 0;
    goto LABEL_48;
  }

  if (DefaultNThreads)
  {
    v28 = v25;
    v29 = v26;
    v30 = DefaultNThreads;
    v31 = v25;
    do
    {
      *v31 = v66;
      v31 += 4;
      *v29++ = v28;
      v28 = v31;
      --v30;
    }

    while (v30);
  }

  v32 = ThreadPipelineCreate(DefaultNThreads, v26, fingerprint_worker, v66, fingerprint_consumer, 0);
  if (!v32)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 444, 112, 0, "ThreadPipelineCreate");
    goto LABEL_47;
  }

  v62 = a6;
  if (!v70[1])
  {
LABEL_30:
    a6 = v62;
    if ((ThreadPipelineFlush(v32) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 461, 112, 0, "ThreadPipelineFlush");
    }

    else
    {
      *(&v69 + 1) = pc_array_compact(*(&v69 + 1));
      if (*(&v69 + 1))
      {
        v37 = 1;
        goto LABEL_48;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 465, 112, 0, "pc_array_compact");
    }

    goto LABEL_47;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    Worker = ThreadPipelineGetWorker(v32);
    if (!Worker)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 451, 112, 0, "ThreadPipelineGetWorker");
      goto LABEL_45;
    }

    Worker[1] = 0;
    Worker[2] = v34;
    v36 = v70[1] + v33;
    if (v70[1] + v33 >= 0x200000)
    {
      v36 = 0x200000;
    }

    Worker[3] = v36;
    if ((ThreadPipelineRunWorker(v32) & 0x80000000) != 0)
    {
      break;
    }

    v34 += 0x200000;
    v33 -= 0x200000;
    if (v34 >= v70[1])
    {
      goto LABEL_30;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 457, 112, 0, "ThreadPipelineRunWorker");
LABEL_45:
  v37 = 0;
  a6 = v62;
LABEL_48:
  if ((ThreadPipelineDestroy(v32) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "process_input", 468, 112, 0, "ThreadPipelineDestroy");
    v37 = 0;
  }

  free(v25);
  free(v27);
  if (!v37)
  {
    goto LABEL_35;
  }

  if (*(a7 + 1) >= 3)
  {
    v43 = *MEMORY[0x29EDCA610];
    v44 = (4 << SBYTE8(v71)) >> 20;
    v45 = a5;
    v46 = (*(*(&v69 + 1) - 64) >> 16) & 0xFFFFFFFFFFFLL;
    v47 = v70[1] >> 20;
    v48 = getRealTime();
    v61 = v46;
    a5 = v45;
    fprintf(v43, " LargeFile: Using %zu M for hashing.\n LargeFile: Using %zu M for fingerprints.\n LargeFile: Parsed %zu M in %0.2f (s). Added %zu/%zu fingerprints.\n", v44, v61, v47, v48 - RealTime, *(*(&v69 + 1) - 64), v70[1] / v72);
  }

  v63 = add_control(0, &v64, &v65, 0, 0, 0);
  if (!v63)
  {
    goto LABEL_35;
  }

  if (DefaultNThreads)
  {
    for (i = 0; i != DefaultNThreads; v50[i++] = v51)
    {
      v50 = v73[1];
      v51 = v73[0] + 40 * i;
      *v51 = v66;
    }
  }

  v52 = ThreadPipelineCreate(DefaultNThreads, v73[1], LargeFileWorker, &v63, LargeFileConsumer, 0);
  *(&v72 + 1) = v52;
  if (!v52)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", 711, 112, 0, "creating pipeline");
    goto LABEL_35;
  }

  if (!a4)
  {
LABEL_65:
    if ((ThreadPipelineDestroy(v52) & 0x80000000) == 0)
    {
      *(&v72 + 1) = 0;
      v64 = sanitize_internal_controls(v63, v64);
      convert_internal_controls(&v63);
      if (*(a7 + 1) >= 2)
      {
        v57 = *MEMORY[0x29EDCA610];
        v58 = v64;
        v59 = getRealTime();
        fprintf(v57, "LargeFile: Constructed %zu controls in %0.2f (s).\n", v58, v59 - RealTime);
      }

      v39 = 0;
      v60 = v64;
      *a5 = v63;
      *a6 = v60;
      goto LABEL_36;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", 725, 112, 0, "ThreadPipelineDestroy failed");
    *(&v72 + 1) = 0;
LABEL_35:
    v39 = 1;
    goto LABEL_36;
  }

  v53 = 1;
  while (1)
  {
    v54 = ThreadPipelineGetWorker(*(&v72 + 1));
    if (!v54)
    {
      break;
    }

    *(v54 + 32) = v53 - 1;
    if ((ThreadPipelineRunWorker(*(&v72 + 1)) & 0x80000000) != 0 || (v55 = atomic_load(v74)) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", 723, 112, 0, "RunWorker");
      goto LABEL_73;
    }

    v56 = v53++;
    if (a4 <= v56 << 21)
    {
      v52 = *(&v72 + 1);
      goto LABEL_65;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControlsWithStreams", 718, 112, 0, "getting worker from pipeline");
LABEL_73:
  v39 = 1;
LABEL_36:
  ThreadPipelineDestroy(*(&v72 + 1));
  free(v73[0]);
  free(v73[1]);
  free(v70[0]);
  pc_array_free(*(&v69 + 1));
  if (v39)
  {
    free(v63);
    *a5 = 0;
    *a6 = 0;
  }

  return (v39 << 31 >> 31);
}

char *add_control(char *__ptr, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __ptr;
  v11 = *a2;
  if (*a2 < *a3)
  {
    goto LABEL_2;
  }

  v13 = v11 + (v11 >> 1) + 1;
  *a3 = v13;
  if (*a2 >= v13)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "add_control", 213, 112, 0, "too many controls");
    free(v10);
    return 0;
  }

  if (24 * v13 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_10:
    v15 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "add_control", 215, 112, *v15, "aaReallocf");
    return 0;
  }

  v14 = realloc(__ptr, 24 * v13);
  if (!v14)
  {
    free(v10);
    goto LABEL_10;
  }

  v11 = *a2;
  v10 = v14;
LABEL_2:
  *a2 = v11 + 1;
  v12 = &v10[24 * v11];
  *v12 = a4;
  *(v12 + 1) = a5;
  *(v12 + 2) = a6;
  return v10;
}

uint64_t sanitize_internal_controls(void *a1, uint64_t a2)
{
  v2 = a1;
  if (a2 >= 2)
  {
    v3 = &a1[3 * a2];
    v4 = a1 + 3;
    v5 = a1;
    v6 = a1;
    do
    {
      v7 = v5;
      while (1)
      {
        v5 = v4;
        v8 = *v4;
        if (!v8)
        {
          v9 = *(v6 + 1) + v7[4];
          goto LABEL_9;
        }

        if (*(v6 + 1) || *v6 + *(v6 + 2) != v7[5])
        {
          break;
        }

        *v6 += v8;
        v9 = v7[4];
LABEL_9:
        *(v6 + 1) = v9;
        v4 = v5 + 3;
        v7 = v5;
        if (v5 + 3 >= v3)
        {
          v2 = v6;
          return -1431655765 * ((v2 - a1) >> 3) + 1;
        }
      }

      v2 = v6 + 24;
      v10 = *v5;
      *(v6 + 5) = v5[2];
      *(v6 + 24) = v10;
      v4 = v5 + 3;
      v6 += 24;
    }

    while (v5 + 3 < v3);
  }

  return -1431655765 * ((v2 - a1) >> 3) + 1;
}

uint64_t convert_internal_controls(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *result;
    v3 = 1;
    v4 = *(result + 8);
    do
    {
      v5 = *v2;
      v6 = v2[2] + *v2;
      if (v3 < v1)
      {
        v6 = v2[5];
      }

      if (v5 < 0)
      {
        v5 = 0x8000000000000000 - v5;
      }

      v7 = v2[1];
      if (v7 < 0)
      {
        v7 = 0x8000000000000000 - v7;
      }

      v8 = v6 - (v2[2] + *v2);
      if (v8 < 0)
      {
        v8 = 0x8000000000000000 - v8;
      }

      *v2 = v5;
      v2[1] = v7;
      v2[2] = v8;
      ++v3;
      v2 += 3;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t GetLargeFileControls(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void **a5, uint64_t *a6, uint64_t *a7)
{
  v13 = AAMemoryInputStreamOpen(a1, a2);
  v14 = AAMemoryInputStreamOpen(a3, a4);
  v15 = v14;
  if (!v13 || !v14)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControls", 758, 112, 0, "AAMemoryInputStreamOpen");
LABEL_7:
    v16 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  if ((GetLargeFileControlsWithStreams(v13, a2, v14, a4, a5, a6, a7) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "GetLargeFileControls", 761, 112, 0, "GetLargeFileControlsWithStreams");
    goto LABEL_7;
  }

  v16 = 0;
LABEL_8:
  AAByteStreamClose(v13);
  AAByteStreamClose(v15);
  return v16;
}

uint64_t chunk_compare_by_position(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

char *convert_block_controls(unint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v22 = 0;
  *a1 = 0;
  if (a3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = &v21[24 * v7];
      if (*v10 >= 0)
      {
        v11 = *v10;
      }

      else
      {
        v11 = 0x8000000000000000 - *v10;
      }

      while (1)
      {
        v12 = v8 & 0xFFFFF;
        v13 = 0x100000 - (v8 & 0xFFFFF);
        if (v13 >= v11)
        {
          break;
        }

        v14 = add_control(v9, a1, &v22, 0x100000 - (v8 & 0xFFFFF), 0, *(a4 + 16 * (v8 >> 20)) + v12);
        if (!v14)
        {
          v19 = 251;
LABEL_18:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "convert_block_controls", v19, 112, 0, "add_control", v21, v22);
          goto LABEL_19;
        }

        v9 = v14;
        v11 -= v13;
        v8 += v13;
      }

      v15 = v10[1];
      if (v15 >= 0)
      {
        v16 = v10[1];
      }

      else
      {
        v16 = 0x8000000000000000 - v15;
      }

      v17 = add_control(v9, a1, &v22, v11, v16, *(a4 + 16 * (v8 >> 20)) + v12);
      if (!v17)
      {
        v19 = 255;
        goto LABEL_18;
      }

      v9 = v17;
      v18 = v10[2];
      if (v18 < 0)
      {
        v18 = 0x8000000000000000 - v18;
      }

      v8 += v11 + v18;
      ++v7;
    }

    while (v7 != a3);
  }

  else
  {
LABEL_19:
    v9 = 0;
  }

  free(v21);
  return v9;
}

uint64_t fingerprint_worker(uint64_t *a1)
{
  v2 = a1[3];
  if (v2 < 0x11)
  {
    return 0;
  }

  if (v2 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_14:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "fingerprint_worker", 325, 112, 0, "aaMalloc");
    v6 = 0;
    v7 = 0;
    goto LABEL_31;
  }

  v4 = *a1;
  v5 = malloc(v2);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = pc_array_init(16);
  if (!v7)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "fingerprint_worker", 329, 112, 0, "pc_array_init");
    goto LABEL_31;
  }

  v8 = a1[3];
  v9 = *(v4 + 16);
  if (!v9[4])
  {
    v10 = -1;
LABEL_18:
    if (v8 != v10)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "fingerprint_worker", 333, 112, 0, "aaByteStreamPReadExpected");
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  if (v8)
  {
    v10 = 0;
    v11 = a1[2];
    v12 = v6;
    v13 = a1[3];
    while (1)
    {
      v14 = (v9[4])(*v9, v12, v13, v11);
      if (v14 < 0)
      {
        break;
      }

      if (v14)
      {
        v12 += v14;
        v10 += v14;
        v11 += v14;
        v13 -= v14;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v10 = v14;
    goto LABEL_18;
  }

LABEL_19:
  v15 = 0;
  v16 = 0;
  do
  {
    v16 = -1640531535 * (v16 + v6[v15++]);
  }

  while (v15 != 16);
  v17 = a1[3];
  if (v17 < 0x11)
  {
LABEL_29:
    v3 = 0;
    a1[1] = v7;
    v7 = 0;
    goto LABEL_32;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = *(v4 + 72) << 8;
  while (1)
  {
    if (v21 < v20 || v21 < v19 && (*(v4 + 68) & ~v16) != 0)
    {
      goto LABEL_28;
    }

    v23 = *(v4 + 72);
    v30 = v21 + a1[2];
    v24 = __ROR8__(__ROR8__(2654435761 * *&v6[v21], 41) + 2654435761 * *&v6[v21 + 8], 41);
    v25 = v16 >> -*(v4 + 64);
    v31 = HIDWORD(v24) ^ v24;
    v32 = v25;
    v7 = pc_array_append(v7, &v30);
    if (!v7)
    {
      break;
    }

    v19 = v21 + (2 * v23);
    v26 = v18 + (v22 >> 8);
    v27 = v22 + v21;
    v22 = v21 + v22 - v26;
    v20 = v21 + v23 - ((v27 - v26) >> 8);
    v17 = a1[3];
    v18 = v21;
LABEL_28:
    v16 = -1640531535 * (v16 + v6[v21 + 16]) - *(v4 + 76) * v6[v21];
    v28 = v21 + 17;
    ++v21;
    if (v28 >= v17)
    {
      goto LABEL_29;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "fingerprint_worker", 361, 112, 0, "pc_array_append");
LABEL_31:
  v3 = 0xFFFFFFFFLL;
LABEL_32:
  free(v6);
  pc_array_free(v7);
  return v3;
}

uint64_t fingerprint_consumer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 - 64);
  if (!v3)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_16;
  }

  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = (v2 + 16 * v5);
    v8 = *(a1 + 40);
    v9 = v7[3];
    v10 = *(v8 + 4 * v9);
    if (v10 != -1)
    {
      v11 = *(v8 + 4 * v9);
      while (1)
      {
        v12 = *(a1 + 32) + 16 * v11;
        if (v7[2] == *(v12 + 8))
        {
          break;
        }

        v11 = *(v12 + 12);
        if (v11 == -1)
        {
          goto LABEL_8;
        }
      }

      if (*v12 < *v7)
      {
        *v12 = *v7;
      }

      goto LABEL_9;
    }

LABEL_8:
    v7[3] = v10;
    v13 = *(a1 + 32);
    *(v8 + 4 * v9) = *(v13 - 64);
    v14 = pc_array_append(v13, v7);
    *(a1 + 32) = v14;
    if (!v14)
    {
      break;
    }

LABEL_9:
    v6 = ++v5 < v3;
    if (v5 == v3)
    {
      goto LABEL_13;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/LargeFile.c", "fingerprint_consumer", 413, 112, 0, "pc_array_append");
  v15 = (v6 << 31 >> 31);
LABEL_16:
  pc_array_free(v2);
  return v15;
}

unsigned __int16 *pc_log_error(uint64_t a1, uint64_t a2, __int16 a3, int a4, int a5, const char *a6, ...)
{
  va_start(va, a6);
  v16 = *MEMORY[0x29EDCA608];
  bzero(__str, 0x400uLL);
  v10 = ((a3 & 0x3FFF) << 10) | (a4 << 24);
  if (a5 >= 1)
  {
    v11 = strerror(a5);
    snprintf(__str, 0x400uLL, "%s: ", v11);
  }

  v12 = v10 & 0xFFFFFC00 | a5 & 0x3FF;
  v13 = strlen(__str);
  vsnprintf(&__str[v13], 1024 - v13, a6, va);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    pc_log_error_cold_1(__str, v12 | 0x80000000);
  }

  return ParallelCompressionUpdateError((v12 | 0x80000000), __str);
}

_DWORD *pc_log_warning(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, ...)
{
  va_start(va, a5);
  v16 = *MEMORY[0x29EDCA608];
  bzero(__s, 0x400uLL);
  v8 = (((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000);
  v9 = strlen(__s);
  vsnprintf(&__s[v9], 1024 - v9, a5, va);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v12 = v8;
    v13 = 2082;
    v14 = __s;
    _os_log_impl(&dword_296A3B000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "[0x%08x](warning) %{public}s", buf, 0x12u);
  }

  return ParallelCompressionUpdateWarning(v8);
}

void pc_log_info(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, ...)
{
  va_start(va, a5);
  v14 = *MEMORY[0x29EDCA608];
  bzero(__s, 0x400uLL);
  v8 = strlen(__s);
  vsnprintf(&__s[v8], 1024 - v8, a5, va);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v10 = ((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000;
    v11 = 2082;
    v12 = __s;
    _os_log_impl(&dword_296A3B000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "[0x%08x] %{public}s", buf, 0x12u);
  }
}

void *AAChunkOutputStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  DefaultNThreads = a4;
  if (!a4)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v8 = calloc(1uLL, 0x68uLL);
  v9 = malloc(0x108uLL);
  v10 = v9;
  if (!v9 || (memset_s(v9, 0x108uLL, 0, 0x108uLL), !v8))
  {
    v14 = *__error();
    v15 = "malloc";
    v16 = 425;
    goto LABEL_15;
  }

  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  *(v10 + 24) = DefaultNThreads;
  if (!is_mul_ok(DefaultNThreads, 0x98uLL) || (152 * DefaultNThreads) >= 0x2000000001)
  {
    *__error() = 12;
    *(v10 + 32) = 0;
    goto LABEL_14;
  }

  v11 = calloc(DefaultNThreads, 0x98uLL);
  *(v10 + 32) = v11;
  if (!v11)
  {
LABEL_14:
    v14 = *__error();
    v15 = "malloc";
    v16 = 433;
    goto LABEL_15;
  }

  if ((pthread_mutex_init((v10 + 176), 0) & 0x80000000) == 0)
  {
    v12 = *(v10 + 24);
    *(v10 + 40) = 0;
    *(v10 + 44) = v12;
    v13 = calloc(v12, 4uLL);
    *(v10 + 48) = v13;
    if (v13)
    {
      if (pthread_mutex_init((v10 + 56), 0))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
      }

      else
      {
        if (!pthread_cond_init((v10 + 120), 0))
        {
          if (!*(v10 + 24))
          {
LABEL_29:
            *v8 = v10;
            v8[1] = streamClose_0;
            v8[7] = streamAbort_0;
            v8[5] = streamPWrite;
            return v8;
          }

          v18 = 0;
          v19 = 0;
          while (1)
          {
            v20 = *(v10 + 32);
            *(v20 + v18 + 32) = 0;
            if (pthread_mutex_init((v20 + v18 + 40), 0) || pthread_cond_init((v20 + v18 + 104), 0))
            {
              v15 = "SemInit";
              v16 = 441;
              goto LABEL_22;
            }

            *(v20 + v18 + 8) = v10;
            if ((createThread((v20 + v18), writerProc, v20 + v18, 0) & 0x80000000) != 0)
            {
              break;
            }

            ++v19;
            v18 += 152;
            if (v19 >= *(v10 + 24))
            {
              goto LABEL_29;
            }
          }

          v15 = "createThread";
          v16 = 443;
          goto LABEL_22;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
      }
    }

    else
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
    }

    v15 = "SharedArrayInit";
    v16 = 435;
LABEL_22:
    v14 = 0;
    goto LABEL_15;
  }

  v14 = *__error();
  v15 = "pthread_mutex_init";
  v16 = 434;
LABEL_15:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "AAChunkOutputStreamOpen", v16, 59, v14, v15);
  free(v8);
  streamClose_0(v10);
  return 0;
}

uint64_t writerProc(uint64_t a1)
{
  v2 = *(a1 + 8);
  v21 = 678152731 * ((a1 - *(v2 + 32)) >> 3);
  v3 = "writerProc";
  v4 = "SemAcquire";
  v5 = "chunkWriteToStream";
  v6 = "Write to stream";
  v7 = 1;
  while (1)
  {
    if (pthread_mutex_lock((v2 + 56)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
      goto LABEL_12;
    }

    v8 = v3;
    v9 = v4;
    v10 = v6;
    v11 = v5;
    v12 = *(v2 + 40);
    v13 = *(v2 + 44);
    v14 = v12;
    if (v12 < v13)
    {
      *(*(v2 + 48) + 4 * v12) = v21;
      v14 = *(v2 + 40);
    }

    *(v2 + 40) = v14 + 1;
    if (!v14 && pthread_cond_broadcast((v2 + 120)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
      goto LABEL_11;
    }

    if (pthread_mutex_unlock((v2 + 56)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
LABEL_11:
      v5 = v11;
      v6 = v10;
      v4 = v9;
      v3 = v8;
      goto LABEL_12;
    }

    v19 = v12 >= v13;
    v5 = v11;
    v6 = v10;
    v4 = v9;
    v3 = v8;
    if (!v19)
    {
      goto LABEL_13;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n");
LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", v3, 210, 59, 0, "SharedArrayPush");
    v7 = 0;
LABEL_13:
    if (pthread_mutex_lock((a1 + 40)))
    {
      goto LABEL_18;
    }

    while (1)
    {
      v15 = *(a1 + 32);
      if (v15 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 104), (a1 + 40)))
      {
        goto LABEL_18;
      }
    }

    *(a1 + 32) = v15 - 1;
    if (pthread_mutex_unlock((a1 + 40)))
    {
LABEL_18:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", v3, 212, 59, 0, v4);
      v7 = 0;
    }

    v16 = *(a1 + 16);
    if (!v16)
    {
      return a1;
    }

    if (!atomic_load((v16 + 48)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", v5, 186, 59, 0, "Invalid state");
      goto LABEL_28;
    }

    if (*(v16 + 32))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", v5, 187, 59, 0, "Chunk still has holes");
LABEL_28:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", v3, 214, 59, 0, v6);
LABEL_29:
      v18 = 0;
      v7 = 0;
      atomic_compare_exchange_strong((v2 + 168), &v18, 1u);
      if (!v18)
      {
        AAByteStreamCancel(*v2);
        v7 = 0;
      }
    }

    else
    {
      if (AAByteStreamPWrite(*v2, *v16, *(v16 + 16), *(a1 + 24)) != *(v16 + 16))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", v5, 189, 59, 0, "Chunk write failed");
        goto LABEL_28;
      }

      free(*v16);
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      free(*(v16 + 40));
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      *(v16 + 40) = 0;
      if (!v7)
      {
        goto LABEL_29;
      }
    }
  }
}

uint64_t streamClose_0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 248);
    if (v2)
    {
      v3 = 0;
      v4 = 1;
      do
      {
        v5 = 0;
        v6 = *(*(v1 + 256) + 8 * v3);
        v7 = *(v1 + 8);
        atomic_compare_exchange_strong((v6 + 48), &v5, 1u);
        if (!v5 && (streamEnqueueWriteChunkToStream(v1, v6, v7 * v3) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamClose", 336, 59, 0, "enqueue chunk write");
          v4 = 0;
        }

        ++v3;
        v2 = *(v1 + 248);
      }

      while (v3 < v2);
    }

    else
    {
      v4 = 1;
    }

    v8 = *(v1 + 24);
    if (v8)
    {
      v9 = 0;
      v10 = *(v1 + 32);
      do
      {
        v11 = *v10;
        v10 += 19;
        if (v11)
        {
          ++v9;
        }

        --v8;
      }

      while (v8);
      if (v9)
      {
        v12 = 0;
        while (1)
        {
          if (pthread_mutex_lock((v1 + 56)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_22:
            v14 = -1;
          }

          else
          {
            while (1)
            {
              v13 = *(v1 + 40);
              if (v13)
              {
                break;
              }

              if (pthread_cond_wait((v1 + 120), (v1 + 56)))
              {
                pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
                goto LABEL_22;
              }
            }

            v17 = v13 - 1;
            *(v1 + 40) = v17;
            v14 = *(*(v1 + 48) + 4 * v17);
            if (!pthread_mutex_unlock((v1 + 56)))
            {
              goto LABEL_24;
            }

            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamClose", 346, 59, 0, "SharedArrayPop");
          v4 = 0;
LABEL_24:
          v15 = *(v1 + 32) + 152 * v14;
          *(v15 + 16) = 0;
          *(v15 + 24) = 0;
          if (pthread_mutex_lock((v15 + 40)) || (v16 = *(v15 + 32), *(v15 + 32) = v16 + 1, !v16) && pthread_cond_broadcast((v15 + 104)) || pthread_mutex_unlock((v15 + 40)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamClose", 350, 59, 0, "SemRelease");
            v4 = 0;
          }

          if ((joinThread(*v15) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamClose", 351, 59, 0, "joinThread");
            v4 = 0;
          }

          if (!pthread_mutex_destroy((v15 + 40)))
          {
            pthread_cond_destroy((v15 + 104));
          }

          if (++v12 == v9)
          {
            v2 = *(v1 + 248);
            break;
          }
        }
      }
    }

    if (v2)
    {
      v18 = 0;
      do
      {
        chunkDestroy(*(*(v1 + 256) + 8 * v18++));
      }

      while (v18 < *(v1 + 248));
    }

    free(*(v1 + 256));
    pthread_mutex_destroy((v1 + 176));
    if (!pthread_mutex_destroy((v1 + 56)) && !pthread_cond_destroy((v1 + 120)))
    {
      free(*(v1 + 48));
    }

    free(*(v1 + 32));
    free(v1);
    if (v4)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void streamAbort_0(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 168), &v1, 1u);
  if (!v1)
  {
    AAByteStreamCancel(*a1);
  }
}

uint64_t streamPWrite(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  if (atomic_load((a1 + 168)))
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v7 = a4;
  v9 = a4 + a3;
  if (a4 + a3 <= a4)
  {
    v11 = -1;
    goto LABEL_85;
  }

  v60 = a4 + a3;
  v61 = *(a1 + 8);
  v11 = -1;
  do
  {
    v12 = v7 / v61;
    v13 = v7 / v61 * v61;
    if (v13 <= v7)
    {
      v14 = v7;
    }

    else
    {
      v14 = v7 / v61 * v61;
    }

    if (v9 >= v13 + v61)
    {
      v15 = v13 + v61;
    }

    else
    {
      v15 = v9;
    }

    if (pthread_mutex_lock((a1 + 176)) < 0)
    {
      v56 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamWriteChunkData", 262, 59, v56, "pthread_mutex_lock");
      goto LABEL_97;
    }

    __n = v15 - v14;
    v16 = *(a1 + 240);
    if (v16 <= v12)
    {
      do
      {
        if (v16)
        {
          v16 *= 2;
        }

        else
        {
          v16 = 16;
        }
      }

      while (v16 <= v12);
      *(a1 + 240) = v16;
      if (8 * v16 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_43:
        *(a1 + 256) = 0;
        v34 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamWriteChunkData", 272, 59, *v34, "malloc");
        v33 = 0;
        *(a1 + 240) = 0;
        *(a1 + 248) = 0;
        goto LABEL_67;
      }

      v17 = *(a1 + 256);
      v18 = realloc(v17, 8 * v16);
      if (!v18)
      {
        free(v17);
        goto LABEL_43;
      }

      *(a1 + 256) = v18;
    }

    __src = a2;
    v19 = *(a1 + 248);
    while (1)
    {
      if (v19 > v12)
      {
        v29 = v14 - v13;
        v30 = *(*(a1 + 256) + 8 * v12);
        v31 = *(v30 + 16);
        a2 = __src;
        if (v29 > v31)
        {
          if ((chunkAppendHole(*(*(a1 + 256) + 8 * v12), v29 - v31) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamWriteChunkData", 301, 59, 0, "Hole append");
LABEL_66:
            v33 = 0;
            goto LABEL_67;
          }

          v31 = *(v30 + 16);
        }

        if (v31 == v29)
        {
          if (v15 != v14)
          {
            if (atomic_load((v30 + 48)))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "chunkAppendData", 104, 59, 0, "Chunk has already been written");
LABEL_54:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamWriteChunkData", 308, 59, 0, "Data append");
              goto LABEL_66;
            }

            v38 = *(v30 + 16);
            if (v38 + __n > *(v30 + 8))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "chunkAppendData", 105, 59, 0, "Invalid data size");
              goto LABEL_54;
            }

            memcpy((*v30 + v38), __src, __n);
            *(v30 + 16) += __n;
          }

LABEL_41:
          v33 = 1;
          goto LABEL_67;
        }

        if (v15 == v14)
        {
          goto LABEL_41;
        }

        if (atomic_load((v30 + 48)))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "chunkWriteData", 152, 59, 0, "Chunk has already been written");
        }

        else
        {
          v39 = *(v30 + 32);
          if (v39)
          {
            v40 = 0;
            v41 = 0;
            v42 = *(v30 + 40);
            v43 = __n + v29;
            while (1)
            {
              v44 = *(v42 + v40 + 8);
              if (v44 <= v29)
              {
                v45 = *(v42 + v40) + v44;
                if (v43 <= v45)
                {
                  v46 = v44 == v29 || v43 == v45;
                  if (v46)
                  {
                    break;
                  }
                }
              }

              ++v41;
              v40 += 16;
              if (v39 == v41)
              {
                goto LABEL_64;
              }
            }

            if (v41 < v39)
            {
              memcpy((*v30 + v29), __src, __n);
              v47 = (*(v30 + 40) + v40);
              if (v47[1] == v29)
              {
                v47[1] = v43;
              }

              v46 = *v47 == __n;
              *v47 -= __n;
              if (v46)
              {
                v48 = *(v30 + 32) - 1;
                *(v30 + 32) = v48;
                if (v41 < v48)
                {
                  do
                  {
                    ++v41;
                    *(*(v30 + 40) + v40) = *(*(v30 + 40) + v40 + 16);
                    v40 += 16;
                    v33 = 1;
                  }

                  while (v41 < *(v30 + 32));
                  goto LABEL_67;
                }
              }

              goto LABEL_41;
            }
          }

LABEL_64:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "chunkWriteData", 163, 59, 0, "Invalid data write, no matching hole");
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamWriteChunkData", 313, 59, 0, "Hole fill");
        goto LABEL_66;
      }

      v20 = *(a1 + 8);
      if (v19)
      {
        v21 = *(*(a1 + 256) + 8 * v19 - 8);
        v22 = *(v21 + 16);
        if (v20 > v22)
        {
          if ((chunkAppendHole(v21, v20 - v22) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamWriteChunkData", 284, 59, 0, "Hole creation");
            goto LABEL_50;
          }

          v20 = *(a1 + 8);
        }
      }

      v23 = malloc(0x38uLL);
      v24 = v23;
      if (!v23)
      {
        v36 = 89;
        goto LABEL_49;
      }

      memset_s(v23, 0x38uLL, 0, 0x38uLL);
      if (v20 >= 0x2000000001)
      {
        break;
      }

      v25 = malloc(v20);
      if (!v25)
      {
        goto LABEL_48;
      }

      v26 = v25;
      memset_s(v25, v20, 0, v20);
      *v24 = v26;
      v24[1] = v20;
      v24[2] = 0;
      v28 = *(a1 + 248);
      v27 = *(a1 + 256);
      v19 = v28 + 1;
      *(a1 + 248) = v28 + 1;
      *(v27 + 8 * v28) = v24;
    }

    *__error() = 12;
LABEL_48:
    *v24 = 0;
    v36 = 91;
LABEL_49:
    v37 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "chunkCreate", v36, 59, *v37, "malloc");
    chunkDestroy(v24);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamWriteChunkData", 289, 59, 0, "Chunk creation");
LABEL_50:
    v33 = 0;
    a2 = __src;
LABEL_67:
    if (pthread_mutex_unlock((a1 + 176)) < 0)
    {
      v57 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamWriteChunkData", 316, 59, v57, "pthread_mutex_unlock");
LABEL_97:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamPWrite", 393, 59, 0, "Writing chunk data failed");
      v58 = 0;
      atomic_compare_exchange_strong((a1 + 168), &v58, 1u);
      if (!v58)
      {
        AAByteStreamCancel(*a1);
      }

      return -1;
    }

    if ((v33 & 1) == 0)
    {
      goto LABEL_97;
    }

    if (v12 < v11)
    {
      v11 = v7 / v61;
    }

    v7 += __n;
    a2 += __n;
    v9 = v60;
  }

  while (v7 < v60);
LABEL_85:
  if (pthread_mutex_lock((a1 + 176)) < 0)
  {
    v55 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamCheckAndWriteChunksToStream", 239, 59, v55, "pthread_mutex_lock");
    goto LABEL_94;
  }

  if (v11 + 1 >= *(a1 + 248))
  {
LABEL_91:
    v53 = pthread_mutex_unlock((a1 + 176));
    v5 = a3;
    if (v53 < 0)
    {
      goto LABEL_92;
    }
  }

  else
  {
    while (1)
    {
      v49 = *(*(a1 + 256) + 8 * v11);
      if (!*(v49 + 40))
      {
        v50 = 0;
        v51 = *(a1 + 8);
        atomic_compare_exchange_strong((v49 + 48), &v50, 1u);
        if (!v50 && (streamEnqueueWriteChunkToStream(a1, v49, v51 * v11) & 0x80000000) != 0)
        {
          break;
        }
      }

      v52 = v11 + 2;
      ++v11;
      if (v52 >= *(a1 + 248))
      {
        goto LABEL_91;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamCheckAndWriteChunksToStream", 249, 59, 0, "enqueue chunk write");
    if (pthread_mutex_unlock((a1 + 176)) < 0)
    {
LABEL_92:
      v54 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamCheckAndWriteChunksToStream", 254, 59, v54, "pthread_mutex_unlock");
    }

LABEL_94:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamPWrite", 404, 59, 0, "flushing chunks to stream");
    return -1;
  }

  return v5;
}

uint64_t streamEnqueueWriteChunkToStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (pthread_mutex_lock((a1 + 56)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_8:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamEnqueueWriteChunkToStream", 226, 59, 0, "SharedArrayPop");
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 120), (a1 + 56)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
      goto LABEL_8;
    }
  }

  v7 = v6 - 1;
  *(a1 + 40) = v7;
  v8 = *(*(a1 + 48) + 4 * v7);
  if (pthread_mutex_unlock((a1 + 56)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
    goto LABEL_8;
  }

  v10 = *(a1 + 32) + 152 * v8;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  if (pthread_mutex_lock((v10 + 40)) || (v11 = *(v10 + 32), *(v10 + 32) = v11 + 1, !v11) && pthread_cond_broadcast((v10 + 104)) || (result = pthread_mutex_unlock((v10 + 40)), result))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "streamEnqueueWriteChunkToStream", 230, 59, 0, "SemRelease");
    return 0xFFFFFFFFLL;
  }

  return result;
}

void chunkDestroy(void **a1)
{
  if (a1)
  {
    free(*a1);
    free(a1[5]);

    free(a1);
  }
}

uint64_t chunkAppendHole(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (atomic_load((a1 + 48)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "chunkAppendHole", 115, 59, 0, "Chunk has already been written");
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 16);
  v7 = v6 + a2;
  if ((v6 + a2) > *(a1 + 8))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "chunkAppendHole", 116, 59, 0, "Invalid hole size");
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 32);
  if (!v8 || (v9 = *(a1 + 40) + 16 * v8, v10 = *(v9 - 16), v10 + *(v9 - 8) != v6))
  {
    v12 = (a1 + 24);
    v11 = *(a1 + 24);
    if (v8 < v11)
    {
      v13 = *(a1 + 40);
LABEL_19:
      result = 0;
      *(a1 + 32) = v8 + 1;
      v19 = &v13[16 * v8];
      *v19 = a2;
      *(v19 + 1) = v6;
      goto LABEL_20;
    }

    v14 = 2 * v11;
    v15 = v11 == 0;
    v16 = 8;
    if (!v15)
    {
      v16 = v14;
    }

    *(a1 + 24) = v16;
    if ((16 * v16) < 0x2000000001)
    {
      v17 = *(a1 + 40);
      v18 = realloc(v17, 16 * v16);
      if (v18)
      {
        v13 = v18;
        *(a1 + 40) = v18;
        v8 = *(a1 + 32);
        v6 = *(a1 + 16);
        v7 = v6 + a2;
        goto LABEL_19;
      }

      free(v17);
    }

    else
    {
      *__error() = 12;
    }

    *(a1 + 40) = 0;
    v20 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkOutputStream.c", "chunkAppendHole", 135, 59, *v20, "malloc");
    *v12 = 0;
    *(a1 + 32) = 0;
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(v9 - 16) = v10 + a2;
LABEL_20:
  *(a1 + 16) = v7;
  return result;
}

uint64_t loadAndDecodeHeader_Cpio(uint64_t *a1, unint64_t *a2)
{
  v4 = a1[8];
  v5 = *v4;
  v6 = *(v4 + 4);
  v8 = v5 != 925906736 || v6 != 12592;
  value.tv_sec = 0;
  value.tv_nsec = 0;
  v9 = *a1;
  if (AAHeaderClear(a1[11]) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 67, 113, 0, "clear header");
    return 0xFFFFFFFFLL;
  }

  if (v8)
  {
    v10 = 76;
  }

  else
  {
    v10 = 110;
  }

  if ((decodeStreamLoadHeader(a1, v10) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 73, 113, 0, "truncated stream");
    return 0xFFFFFFFFLL;
  }

  v11 = a1[8];
  if (v8)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v13 = *(v11 + 59 + v12++) & 7 | (8 * v13);
    }

    while (v12 != 4);
    for (i = 0; i != 2; ++i)
    {
      v15 = *(v11 + 63 + i) & 7 | (8 * v13);
      v13 = v15;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
    do
    {
      v17 = *(v11 + 94 + v16);
      v15 *= 16;
      v18 = v17 - 48;
      if ((v17 - 48) <= 0x36)
      {
        if (((1 << v18) & 0x3FF) != 0)
        {
          v15 = v15 + v17 - 48;
        }

        else if (((1 << v18) & 0x7E0000) != 0)
        {
          v15 = v15 + v17 - 55;
        }

        else if (((1 << v18) & 0x7E000000000000) != 0)
        {
          v15 = v15 + v17 - 87;
        }
      }

      ++v16;
    }

    while (v16 != 8);
  }

  if (v8)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v20 = *(v11 + 65 + v19++) & 7 | (8 * v20);
    }

    while (v19 != 8);
    for (j = 0; j != 3; ++j)
    {
      v22 = *(v11 + 73 + j) & 7 | (8 * v20);
      v20 = v22;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
    do
    {
      v24 = *(v11 + 54 + v23);
      v22 *= 16;
      v25 = v24 - 48;
      if ((v24 - 48) <= 0x36)
      {
        if (((1 << v25) & 0x3FF) != 0)
        {
          v22 = v22 + v24 - 48;
        }

        else if (((1 << v25) & 0x7E0000) != 0)
        {
          v22 = v22 + v24 - 55;
        }

        else if (((1 << v25) & 0x7E000000000000) != 0)
        {
          v22 = v22 + v24 - 87;
        }
      }

      ++v23;
    }

    while (v23 != 8);
  }

  if (v8)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v27 = *(v11 + 18 + v26++) & 7 | (8 * v27);
    }

    while (v26 != 4);
    v28 = 0;
    v29 = v11 + 22;
    do
    {
      v30 = *(v29 + v28++) & 7 | (8 * v27);
      v27 = v30;
    }

    while (v28 != 2);
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v32 = v11 + 14;
    do
    {
      v33 = *(v32 + v31);
      v30 *= 16;
      v34 = v33 - 48;
      if ((v33 - 48) <= 0x36)
      {
        if (((1 << v34) & 0x3FF) != 0)
        {
          v30 = v30 + v33 - 48;
        }

        else if (((1 << v34) & 0x7E0000) != 0)
        {
          v30 = v30 + v33 - 55;
        }

        else if (((1 << v34) & 0x7E000000000000) != 0)
        {
          v30 = v30 + v33 - 87;
        }
      }

      ++v31;
    }

    while (v31 != 8);
  }

  v35 = aaEntryTypeFromMode(v30);
  if (v15 >= 0x10000)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 82, 113, 0, "invalid c_namesize");
    return 0xFFFFFFFFLL;
  }

  v36 = v35;
  if (v8)
  {
    v37 = v15 + v10;
  }

  else
  {
    v37 = (v15 + v10 + 3) & 0x3FFFC;
  }

  v38 = v37;
  if (v35 == 76)
  {
    if (v22 >= 0x10000)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 89, 113, 0, "invalid c_filesize");
      return 0xFFFFFFFFLL;
    }

    if (v8)
    {
      v38 = v22 + v37;
    }

    else
    {
      v38 = (v22 + v37 + 3) & 0xFFFFC;
    }
  }

  if ((decodeStreamLoadHeader(a1, v38) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 95, 113, 0, "truncated stream");
    return 0xFFFFFFFFLL;
  }

  if (v36)
  {
    v39 = 0;
  }

  else
  {
    v39 = v22 == 0;
  }

  if (v39 && v15 == 11)
  {
    v49 = (a1[8] + v10);
    v50 = *v49;
    v51 = *(v49 + 3);
    if (v50 == 0x2152454C49415254 && v51 == 0x21212152454C49)
    {
      return 1;
    }

LABEL_95:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 101, 113, 0, "invalid cpio header");
    return 0xFFFFFFFFLL;
  }

  if (!v36)
  {
    goto LABEL_95;
  }

  v110 = a1[8];
  v41.ikey = 5265748;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v41, v36) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 106, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v42.ikey = 5521744;
  if (AAHeaderSetFieldString(a1[11], 0xFFFFFFFF, v42, (a1[8] + v10), v15) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 109, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  if (v36 == 76)
  {
    v43.ikey = 4935244;
    if (AAHeaderSetFieldString(a1[11], 0xFFFFFFFF, v43, (a1[8] + v37), v22) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 114, 113, 0, "creating header", v110);
      return 0xFFFFFFFFLL;
    }
  }

  v44.ikey = 4476749;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v44, v30 & 0xFFF) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 118, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  if (v8)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      v46 = *(v110 + 24 + v45++) & 7 | (8 * v46);
    }

    while (v45 != 4);
    for (k = 0; k != 2; ++k)
    {
      v48 = *(v110 + 28 + k) & 7 | (8 * v46);
      v46 = v48;
    }
  }

  else
  {
    v54 = 0;
    v48 = 0;
    do
    {
      v55 = *(v110 + 22 + v54);
      v48 *= 16;
      v56 = v55 - 48;
      if ((v55 - 48) <= 0x36)
      {
        if (((1 << v56) & 0x3FF) != 0)
        {
          v48 = v48 + v55 - 48;
        }

        else if (((1 << v56) & 0x7E0000) != 0)
        {
          v48 = v48 + v55 - 55;
        }

        else if (((1 << v56) & 0x7E000000000000) != 0)
        {
          v48 = v48 + v55 - 87;
        }
      }

      ++v54;
    }

    while (v54 != 8);
  }

  v57.ikey = 4475221;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v57, v48) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 122, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v58 = v110 + 30;
  if (v8)
  {
    v59 = 0;
    v60 = 0;
    do
    {
      v60 = *(v58 + v59++) & 7 | (8 * v60);
    }

    while (v59 != 4);
    for (m = 0; m != 2; ++m)
    {
      v62 = *(v110 + 34 + m) & 7 | (8 * v60);
      v60 = v62;
    }
  }

  else
  {
    v63 = 0;
    v62 = 0;
    do
    {
      v64 = *(v58 + v63);
      v62 *= 16;
      v65 = v64 - 48;
      if ((v64 - 48) <= 0x36)
      {
        if (((1 << v65) & 0x3FF) != 0)
        {
          v62 = v62 + v64 - 48;
        }

        else if (((1 << v65) & 0x7E0000) != 0)
        {
          v62 = v62 + v64 - 55;
        }

        else if (((1 << v65) & 0x7E000000000000) != 0)
        {
          v62 = v62 + v64 - 87;
        }
      }

      ++v63;
    }

    while (v63 != 8);
  }

  v66.ikey = 4475207;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v66, v62) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 126, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  if (v8)
  {
    v67 = 0;
    v68 = 0;
    do
    {
      v68 = *(v110 + 48 + v67++) & 7 | (8 * v68);
    }

    while (v67 != 8);
    for (n = 0; n != 3; ++n)
    {
      v70 = *(v110 + 56 + n) & 7 | (8 * v68);
      v68 = v70;
    }
  }

  else
  {
    v71 = 0;
    v70 = 0;
    do
    {
      v72 = *(v110 + 46 + v71);
      v70 *= 16;
      v73 = v72 - 48;
      if ((v72 - 48) <= 0x36)
      {
        if (((1 << v73) & 0x3FF) != 0)
        {
          v70 = v70 + v72 - 48;
        }

        else if (((1 << v73) & 0x7E0000) != 0)
        {
          v70 = v70 + v72 - 55;
        }

        else if (((1 << v73) & 0x7E000000000000) != 0)
        {
          v70 = v70 + v72 - 87;
        }
      }

      ++v71;
    }

    while (v71 != 8);
  }

  value.tv_sec = v70;
  value.tv_nsec = 0;
  v74.ikey = 5067853;
  if (AAHeaderSetFieldTimespec(a1[11], 0xFFFFFFFF, v74, &value) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 131, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  if (v8)
  {
    v75 = 0;
    v76 = 0;
    v77 = v110;
    do
    {
      v76 = *(v110 + 12 + v75++) & 7 | (8 * v76);
    }

    while (v75 != 4);
    for (ii = 0; ii != 2; ++ii)
    {
      v79 = *(v110 + 16 + ii) & 7 | (8 * v76);
      v76 = v79;
    }
  }

  else
  {
    v80 = 0;
    v79 = 0;
    v77 = v110;
    do
    {
      v81 = *(v110 + 6 + v80);
      v79 *= 16;
      v82 = v81 - 48;
      if ((v81 - 48) <= 0x36)
      {
        if (((1 << v82) & 0x3FF) != 0)
        {
          v79 = v79 + v81 - 48;
        }

        else if (((1 << v82) & 0x7E0000) != 0)
        {
          v79 = v79 + v81 - 55;
        }

        else if (((1 << v82) & 0x7E000000000000) != 0)
        {
          v79 = v79 + v81 - 87;
        }
      }

      ++v80;
    }

    while (v80 != 8);
  }

  if (v8)
  {
    v83 = 0;
    v84 = 0;
    do
    {
      v84 = *(v77 + 6 + v83++) & 7 | (8 * v84);
    }

    while (v83 != 4);
    for (jj = 0; jj != 2; ++jj)
    {
      v86 = *(v77 + 10 + jj) & 7 | (8 * v84);
      v84 = v86;
    }

    v79 |= v86 << 18;
    v87.ikey = 5197385;
    if ((AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v87, v79) & 0x80000000) == 0)
    {
      v88 = 0;
      v89 = 0;
      do
      {
        v89 = *(v110 + 36 + v88++) & 7 | (8 * v89);
      }

      while (v88 != 4);
      for (kk = 0; kk != 2; ++kk)
      {
        v89 = *(v110 + 40 + kk) & 7 | (8 * v89);
      }

      goto LABEL_183;
    }

LABEL_193:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 145, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v91.ikey = 5197385;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v91, v79) < 0)
  {
    goto LABEL_193;
  }

  v92 = 0;
  v89 = 0;
  do
  {
    v93 = *(v110 + 38 + v92);
    v89 *= 16;
    v94 = v93 - 48;
    if ((v93 - 48) <= 0x36)
    {
      if (((1 << v94) & 0x3FF) != 0)
      {
        v89 = v89 + v93 - 48;
      }

      else if (((1 << v94) & 0x7E0000) != 0)
      {
        v89 = v89 + v93 - 55;
      }

      else if (((1 << v94) & 0x7E000000000000) != 0)
      {
        v89 = v89 + v93 - 87;
      }
    }

    ++v92;
  }

  while (v92 != 8);
LABEL_183:
  v95.ikey = 4934734;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v95, v89) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 149, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  if ((v9 & 0x8000000000000) != 0 || v89 < 2 || v36 != 70)
  {
    v98 = 0;
    if (v8 || (v36 & 0xFFFFFFFE) != 0x42)
    {
      goto LABEL_217;
    }

    v99 = 0;
    v100 = 0;
    do
    {
      v101 = *(v110 + 78 + v99);
      v100 *= 16;
      v102 = v101 - 48;
      if ((v101 - 48) <= 0x36)
      {
        if (((1 << v102) & 0x3FF) != 0)
        {
          v100 = v100 + v101 - 48;
        }

        else if (((1 << v102) & 0x7E0000) != 0)
        {
          v100 = v100 + v101 - 55;
        }

        else if (((1 << v102) & 0x7E000000000000) != 0)
        {
          v100 = v100 + v101 - 87;
        }
      }

      ++v99;
    }

    while (v99 != 8);
    v103 = 0;
    v104 = 0;
    do
    {
      v105 = *(v110 + 86 + v103);
      v104 *= 16;
      v106 = v105 - 48;
      if ((v105 - 48) <= 0x36)
      {
        if (((1 << v106) & 0x3FF) != 0)
        {
          v104 = v104 + v105 - 48;
        }

        else if (((1 << v106) & 0x7E0000) != 0)
        {
          v104 = v104 + v105 - 55;
        }

        else if (((1 << v106) & 0x7E000000000000) != 0)
        {
          v104 = v104 + v105 - 87;
        }
      }

      ++v103;
    }

    while (v103 != 8);
    v107.ikey = 5653828;
    if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v107, v104 + (v100 << 24)) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 173, 113, 0, "creating header", v110);
      return 0xFFFFFFFFLL;
    }

LABEL_216:
    v98 = 0;
    goto LABEL_217;
  }

  v111 = 0;
  v96 = decodeStreamHLCFromINO(a1, v79, v89, &v111);
  if (v96 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 156, 113, 0, "too many hard links or inconsistent nlink/ino data in archive", v110);
    return 0xFFFFFFFFLL;
  }

  v97.ikey = 4410440;
  if (AAHeaderSetFieldUInt(a1[11], 0xFFFFFFFF, v97, v96) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 157, 113, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  if (v8)
  {
    goto LABEL_216;
  }

  v98 = v111 == 0;
  if (!v111 && v22)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 162, 113, 0, "invalid newc encoding for hard links", v110);
    return 0xFFFFFFFFLL;
  }

LABEL_217:
  if (v36 != 70 || v98)
  {
    if (v36 != 70)
    {
      result = 0;
      *a2 = 0;
      return result;
    }
  }

  else
  {
    v108.ikey = 5521732;
    if (AAHeaderSetFieldBlob(a1[11], 0xFFFFFFFF, v108, v22) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamCPIO.c", "loadAndDecodeHeader_Cpio", 179, 113, 0, "creating header", v110);
      return 0xFFFFFFFFLL;
    }
  }

  result = 0;
  v109 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v8)
  {
    v109 = v22;
  }

  *a2 = v109;
  return result;
}

uint64_t getBXDiffControls(unsigned __int8 *a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4, void *a5, unint64_t *a6, unsigned int *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (!a2 || !a4)
  {
    return v7;
  }

  if (a2 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a2;
  }

  if (v12 >= 0x10000)
  {
    v13 = a4 - a2;
    v14 = a2 - a4;
    if (a2 < a4)
    {
      v14 = a4 - a2;
    }

    v15 = a1;
    v16 = a3;
    do
    {
      v18 = *v15++;
      v17 = v18;
      v19 = *v16++;
      if (v17 != v19)
      {
        ++v14;
      }

      --v12;
    }

    while (v12);
    if (v14 <= a4 / 0x64)
    {
      v89 = calloc(1uLL, 0x18uLL);
      if (v89)
      {
        *a5 = v89;
        *a6 = 1;
        if (a2 <= a4)
        {
          v7 = 0;
          v93 = 0x8000000000000000 - a2;
          if ((a2 & 0x8000000000000000) == 0)
          {
            v93 = a2;
          }

          v94 = 0x8000000000000000 - v13;
          if (v13 >= 0)
          {
            v94 = a4 - a2;
          }

          *v89 = v93;
          v89[1] = v94;
          v89[2] = 0;
        }

        else
        {
          v7 = 0;
          v90 = 0x8000000000000000 - a4;
          v89[1] = 0;
          v89[2] = 0;
          if ((a4 & 0x8000000000000000) == 0)
          {
            v90 = a4;
          }

          *v89 = v90;
        }

        return v7;
      }

      v91 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffBase.c", "bxdiffFastPathControls", 101, 24, *v91, "calloc");
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffBase.c", "getBXDiffControls", 311, 24, 0, "building fast path controls");
      return 0xFFFFFFFFLL;
    }
  }

  v20 = BXDiffMatchesCreate(a1, a2, a3, a4, a7);
  if (!v20)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffBase.c", "getBXDiffControls", 319, 24, 0, "creating diff match lookup object");
    return 0xFFFFFFFFLL;
  }

  v21 = v20;
  v22 = BXDiffMatchesIBuf(v20);
  v23 = BXDiffMatchesISize(v21);
  v103 = BXDiffMatchesOBuf(v21);
  v24 = BXDiffMatchesOSize(v21);
  v104 = 0;
  if (!v23 || (v26 = v24) == 0)
  {
    *a5 = 0;
    *a6 = 0;
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffBase.c", "getBXDiffControls", 324, 24, 0, "building diff controls");
    goto LABEL_125;
  }

  if (v24 < 1)
  {
    v32 = 0;
    v88 = 0;
    goto LABEL_124;
  }

  v95 = a6;
  v96 = a5;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  __ptr = 0;
  v97 = 0;
  do
  {
    v101 = v30;
    v102 = v29;
    v27 += v28;
    v100 = v27 < v26;
    if (v27 < v26)
    {
      v98 = v32;
      v41 = 0;
      v33 = v27;
      do
      {
        BestMatch = BXDiffMatchesGetBestMatch(v21, v27, &v104, v25);
        v35 = BestMatch + v27;
        if (BestMatch + v27 <= v26)
        {
          v28 = BestMatch;
        }

        else
        {
          v28 = v26 - v27;
        }

        if (v33 < v28 + v27)
        {
          if (v35 >= v26)
          {
            v35 = v26;
          }

          v36 = (v103 + v33);
          v37 = v35 - v33;
          v38 = v31 + v33;
          do
          {
            if (v38 < v23 && *(v22 + v38) == *v36)
            {
              ++v41;
            }

            ++v36;
            ++v38;
            --v37;
          }

          while (v37);
          v33 = v35;
        }

        if (v28 == v41 && v28 != 0 || v28 > v41 + 8)
        {
          v32 = v98;
          goto LABEL_46;
        }

        if (v27 + v31 < v23)
        {
          v41 -= *(v22 + v27 + v31) == *(v103 + v27);
        }

        ++v27;
      }

      while (v27 < v26);
      v100 = 0;
      v27 = v26;
      v32 = v98;
    }

    else
    {
      v41 = 0;
LABEL_46:
      if (v28 == v41 && v27 != v26)
      {
        v28 = v41;
        v30 = v101;
        v29 = v102;
        continue;
      }
    }

    v42 = v27 - v102;
    v43 = v23 - v101;
    if (v27 - v102 < v23 - v101)
    {
      v43 = v27 - v102;
    }

    if (v43 < 1)
    {
      v48 = 0;
    }

    else
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      do
      {
        v49 = v46 | (v47 << 8);
        v50 = *(v22 + v101 + v44) - *(v103 + v102 + v44);
        if ((v47 & 0xFF000000FF0000) != 0 || v49 == 0)
        {
          v52 = 3;
        }

        else
        {
          v52 = 4;
        }

        v53 = __OFADD__(v52, v45);
        v54 = v52 + v45;
        if ((v54 < 0) ^ v53 | (v54 == 0))
        {
          v55 = v48;
        }

        else
        {
          v55 = v44 + 1;
        }

        v56 = v54 & (v54 >> 31);
        v45 -= 4;
        ++v44;
        if (!v50)
        {
          v48 = v55;
          v45 = v56;
        }

        v47 = v49;
        v46 = v50;
      }

      while (v44 != v43);
    }

    if (!v100)
    {
      goto LABEL_85;
    }

    if (v42 >= v104)
    {
      v42 = v104;
    }

    if (v42 >= 1)
    {
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = -v42;
      v62 = (v103 - 1 + v27);
      v63 = (v22 - 1 + v104);
      v64 = 1;
      do
      {
        v65 = v58 | (v59 << 8);
        v67 = *v63--;
        v66 = v67;
        v68 = *v62--;
        v69 = v66 - v68;
        if ((v59 & 0xFF000000FF0000) != 0 || v65 == 0)
        {
          v71 = 3;
        }

        else
        {
          v71 = 4;
        }

        v53 = __OFADD__(v71, v57);
        v72 = v71 + v57;
        if ((v72 < 0) ^ v53 | (v72 == 0))
        {
          v73 = v60;
        }

        else
        {
          v73 = v64;
        }

        v74 = v72 & (v72 >> 31);
        v57 -= 4;
        if (!v69)
        {
          v60 = v73;
          v57 = v74;
        }

        ++v64;
        v59 = v65;
        v58 = v69;
      }

      while (v61 + v64 != 1);
    }

    else
    {
LABEL_85:
      v60 = 0;
    }

    v75 = v48 + v102 - (v27 - v60);
    if (v48 + v102 > v27 - v60)
    {
      if (v75 < 1)
      {
        v78 = 0;
      }

      else
      {
        v76 = 0;
        v77 = 0;
        v78 = 0;
        do
        {
          v79 = *(v103 + v27 - v60 + v77);
          v76 -= v79 == *(v22 + v104 - v60 + v77);
          v80 = *(v22 + v101 - (v102 - (v27 - v60)) + v77);
          if (v76 >= 0)
          {
            v81 = v77 + 1;
          }

          else
          {
            v81 = v78;
          }

          if (v76 < 0)
          {
            v82 = v76 + 1;
          }

          else
          {
            v82 = 0;
          }

          ++v77;
          if (v79 == v80)
          {
            v78 = v81;
            v76 = v82;
          }
        }

        while (v77 < v75);
      }

      v48 = v27 - v60 - v102 + v78;
      v60 -= v78;
    }

    v83 = v97;
    if (v32 >= v97)
    {
      v97 += 0x40000;
      __ptr = reallocf(__ptr, 24 * (v83 + 0x40000));
      if (!__ptr)
      {
        getBXDiffControls_cold_1();
      }
    }

    v84 = 0x8000000000000000 - v48;
    if (v48 >= 0)
    {
      v84 = v48;
    }

    v29 = v27 - v60;
    v85 = v27 - v60 - (v48 + v102);
    if (v85 < 0)
    {
      v85 = 0x8000000000000000 - v85;
    }

    v86 = &__ptr[24 * v32];
    *v86 = v84;
    v86[1] = v85;
    v87 = v104 - (v48 + v101 + v60);
    if (v87 < 0)
    {
      v87 = 0x8000000000000000 - v87;
    }

    v86[2] = v87;
    ++v32;
    v30 = v104 - v60;
    v31 = v104 - v27;
  }

  while (v27 < v26);
  a6 = v95;
  a5 = v96;
  v88 = __ptr;
  if (__ptr)
  {
    v88 = reallocToFit(__ptr, 24 * v32);
  }

LABEL_124:
  *a5 = v88;
  *a6 = v32;
LABEL_125:
  BXDiffMatchesDestroy(v21);
  if (*a5)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t aaEntryYFPBlobInitWithPath(void *a1, char *a2, const char *a3)
{
  v44 = *MEMORY[0x29EDCA608];
  v42[0] = 0;
  v42[1] = 0;
  v6 = malloc(0x40000uLL);
  if (!v6)
  {
    v24 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 43, 124, v24, "malloc");
LABEL_28:
    v25 = 0;
    v8 = -1;
LABEL_29:
    v26 = 0xFFFFFFFFLL;
    goto LABEL_30;
  }

  if ((concatPath(v43, 0x800uLL, a2, a3) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 46, 124, 0, "invalid path %s/%s");
    goto LABEL_28;
  }

  v7 = open(v43, 0x200000);
  v8 = v7;
  if (v7 < 0)
  {
    v28 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 50, 124, *v28, "open: %s", v43);
    v25 = 0;
    goto LABEL_29;
  }

  v9 = read(v7, v6, 0x40000uLL);
  if (v9 < 0)
  {
    v13 = 0;
LABEL_35:
    v25 = v13;
    v29 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 56, 124, *v29, "read: %s", v43);
    goto LABEL_29;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v41 = v6;
  v40 = v8;
  while (2)
  {
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        v17 = v6[i];
        v14 = v17 + 0x202000202008008DLL * v14 + 0x516929CF586FB3BFLL * *(v42 + v15);
        *(v42 + v15) = v17;
        if (v15 == 15)
        {
          v15 = 0;
        }

        else
        {
          ++v15;
        }

        if (v14 >> 52)
        {
          v18 = 1;
        }

        else
        {
          v18 = v14 == 0;
        }

        if (!v18)
        {
          if (v12 >= v11)
          {
            if (v11)
            {
              v11 *= 2;
            }

            else
            {
              v11 = 256;
            }

            if (4 * v11 >= 0x2000000001)
            {
              *__error() = 12;
LABEL_38:
              v30 = __error();
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 79, 124, *v30, "malloc");
              v25 = 0;
              v26 = 0xFFFFFFFFLL;
              v8 = v40;
              goto LABEL_30;
            }

            v19 = v13;
            v20 = realloc(v13, 4 * v11);
            if (!v20)
            {
              free(v19);
              v6 = v41;
              goto LABEL_38;
            }

            v13 = v20;
            v6 = v41;
          }

          *(v13 + v12++) = v14;
        }
      }

      v8 = v40;
      v21 = v6;
      v22 = v13;
      v23 = read(v40, v21, 0x40000uLL);
      v13 = v22;
      v6 = v41;
      v10 = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        continue;
      }

      goto LABEL_35;
    }

    break;
  }

  v31 = v13;
  qsort(v13, v12, 4uLL, cmp_markers);
  if (v12)
  {
    v32 = 0;
    v33 = 0;
    v25 = v31;
    do
    {
      v34 = *(v31 + v32);
      if (!v33 || v34 != *(v31 + v33 - 1))
      {
        *(v31 + v33++) = v34;
      }

      ++v32;
    }

    while (v12 != v32);
    v12 = 4 * v33;
    *a1 = 0;
    if (4 * v33 < 0)
    {
LABEL_66:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYFP.c", "aaEntryYFPBlobInitWithPath", 98, 124, 0, "malloc");
      v26 = 0xFFFFFFFFLL;
      goto LABEL_67;
    }

    v35 = a1[1];
    if (v35 < v12)
    {
      do
      {
        while (!v35)
        {
          v35 = 0x4000;
          if (v12 <= 0x4000)
          {
            v35 = 0x4000;
            goto LABEL_62;
          }
        }

        v36 = v35 >> 1;
        if ((v35 & (v35 >> 1)) != 0)
        {
          v36 = v35 & (v35 >> 1);
        }

        v35 += v36;
      }

      while (v35 < v12);
      if (v35 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_65;
      }

LABEL_62:
      v38 = a1[2];
      v39 = realloc(v38, v35);
      if (v39)
      {
        a1[1] = v35;
        a1[2] = v39;
        goto LABEL_55;
      }

      free(v38);
LABEL_65:
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      v25 = v31;
      goto LABEL_66;
    }
  }

  else
  {
    *a1 = 0;
LABEL_55:
    v25 = v31;
    if (!v31)
    {
      v37 = a1[2];
      if (v37)
      {
        memset_s((v37 + *a1), v12, 0, v12);
      }

      goto LABEL_57;
    }
  }

  memcpy((a1[2] + *a1), v25, v12);
LABEL_57:
  v26 = 0;
  *a1 += v12;
  v25 = v31;
LABEL_67:
  v6 = v41;
LABEL_30:
  free(v6);
  free(v25);
  if ((v8 & 0x80000000) == 0)
  {
    close(v8);
  }

  return v26;
}

uint64_t cmp_markers(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

off_t AAByteStreamProcess(AAByteStream istream, AAByteStream ostream)
{
  v4 = malloc(0x40000uLL);
  if (v4)
  {
    v5 = v4;
    v6 = AAByteStreamRead(istream, v4, 0x40000uLL);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = v6;
      v8 = 0;
      while (2)
      {
        if (!v7)
        {
          free(v5);
          return v8;
        }

        v9 = 0;
        v8 += v7;
        do
        {
          v10 = AAByteStreamWrite(ostream, &v5[v9], v7 - v9);
          if (v10 < 0)
          {
            AAByteStreamCancel(istream);
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStreamProcess.c", "AAByteStreamProcess", 40, 58, 0, "byte stream write error");
            goto LABEL_14;
          }

          if (!v10)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStreamProcess.c", "AAByteStreamProcess", 42, 58, 0, "byte stream truncated write");
            goto LABEL_14;
          }

          v9 += v10;
        }

        while (v9 < v7);
        v7 = AAByteStreamRead(istream, v5, 0x40000uLL);
        if ((v7 & 0x8000000000000000) == 0)
        {
          continue;
        }

        break;
      }
    }

    AAByteStreamCancel(ostream);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStreamProcess.c", "AAByteStreamProcess", 26, 58, 0, "byte stream read error");
LABEL_14:
    free(v5);
  }

  else
  {
    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStreamProcess.c", "AAByteStreamProcess", 18, 58, *v11, "malloc");
  }

  return -1;
}

void *aaAssetDecryptionStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc(0x518uLL);
  v7 = v6;
  if (!v6)
  {
    v10 = 439;
LABEL_6:
    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "aaAssetDecryptionStreamOpen", v10, 108, *v11, "malloc");
    closeProc_2(v7);
    return 0;
  }

  memset_s(v6, 0x518uLL, 0, 0x518uLL);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = malloc(0x38uLL);
  if (!v8)
  {
    v10 = 446;
    goto LABEL_6;
  }

  v9 = v8;
  memset_s(v8, 0x38uLL, 0, 0x38uLL);
  *v9 = v7;
  v9[1] = closeProc_2;
  v9[6] = closeWithStateProc_2;
  v9[3] = writeProc_1;
  v9[2] = cancelProc_2;
  return v9;
}

uint64_t closeProc_2(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 24));
    free(*(result + 1216));
    memset_s(v1 + 150, 0x18uLL, 0, 0x18uLL);
    free(v1[155]);
    memset_s(v1 + 153, 0x18uLL, 0, 0x18uLL);
    free(v1[158]);
    memset_s(v1 + 156, 0x18uLL, 0, 0x18uLL);
    memset_s(v1, 0x518uLL, 0, 0x518uLL);
    free(v1);
    if (v2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t closeWithStateProc_2(uint64_t result, void *a2, void *a3)
{
  v39 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v5 = result;
    v6 = atomic_load((result + 24));
    v7 = v6 == 0;
    memset(v38, 0, sizeof(v38));
    v37 = 0u;
    memset(v36, 0, sizeof(v36));
    aeaMagicInit(v36, (result + 240));
    aeaRootHeaderInit(v36 | 0xC, v5 + 240);
    *(&v36[3] + 12) = *(v5 + 676);
    DWORD1(v36[4]) = *(v5 + 940);
    v8 = (v5 + 1200);
    v9 = (v5 + 1224);
    v10 = *(v5 + 1224);
    *(&v36[4] + 1) = *(v5 + 1200);
    *&v37 = v10;
    v11 = (v5 + 1248);
    *(&v37 + 1) = *(v5 + 1248);
    *&v38[0] = *(v5 + 1272);
    *(v38 + 8) = *(v5 + 1280);
    *(&v38[1] + 1) = *(v5 + 1296);
    if (!a2[3])
    {
      goto LABEL_51;
    }

    v12 = 0;
    v13 = v36;
    v14 = 128;
    while (1)
    {
      v15 = (a2[3])(*a2, v13, v14);
      if (v15 < 1)
      {
        break;
      }

      v13 = (v13 + v15);
      v12 += v15;
      v14 -= v15;
      if (!v14)
      {
        if (v12 < 0)
        {
          goto LABEL_51;
        }

        goto LABEL_9;
      }
    }

    if (v15 < 0)
    {
      goto LABEL_51;
    }

LABEL_9:
    if (!a2[3])
    {
      goto LABEL_51;
    }

    v16 = *(v5 + 680);
    if (v16)
    {
      v17 = 0;
      v18 = v5 + 684;
      while (1)
      {
        v19 = (a2[3])(*a2, v18, v16);
        if (v19 < 1)
        {
          break;
        }

        v18 += v19;
        v17 += v19;
        v16 -= v19;
        if (!v16)
        {
          if (v17 < 0)
          {
            goto LABEL_51;
          }

          goto LABEL_17;
        }
      }

      if (v19 < 0)
      {
        goto LABEL_51;
      }

LABEL_17:
      if (!a2[3])
      {
        goto LABEL_51;
      }
    }

    v20 = *(v5 + 940);
    if (v20)
    {
      v21 = 0;
      v22 = v5 + 944;
      while (1)
      {
        v23 = (a2[3])(*a2, v22, v20);
        if (v23 < 1)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        v20 -= v23;
        if (!v20)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_51;
        }
      }

      if (v23 < 0)
      {
        goto LABEL_51;
      }
    }

LABEL_25:
    if (!a2[3])
    {
      goto LABEL_51;
    }

    v24 = *v8;
    if (*v8)
    {
      v25 = 0;
      v26 = *(v5 + 1216);
      while (1)
      {
        v27 = (a2[3])(*a2, v26, v24);
        if (v27 < 1)
        {
          break;
        }

        v26 += v27;
        v25 += v27;
        v24 -= v27;
        if (!v24)
        {
          goto LABEL_32;
        }
      }

      v25 = v27;
LABEL_32:
      if (v25 < 0 || !a2[3])
      {
        goto LABEL_51;
      }
    }

    v28 = *v9;
    if (*v9)
    {
      v29 = 0;
      v30 = *(v5 + 1240);
      while (1)
      {
        v31 = (a2[3])(*a2, v30, v28);
        if (v31 < 1)
        {
          break;
        }

        v30 += v31;
        v29 += v31;
        v28 -= v31;
        if (!v28)
        {
          goto LABEL_40;
        }
      }

      v29 = v31;
LABEL_40:
      if (v29 < 0)
      {
        goto LABEL_51;
      }
    }

    if (!a2[3])
    {
      goto LABEL_51;
    }

    v32 = *v11;
    if (!*v11)
    {
      goto LABEL_49;
    }

    v33 = 0;
    v34 = *(v5 + 1264);
    while (1)
    {
      v35 = (a2[3])(*a2, v34, v32);
      if (v35 < 1)
      {
        break;
      }

      v34 += v35;
      v33 += v35;
      v32 -= v35;
      if (!v32)
      {
        goto LABEL_48;
      }
    }

    v33 = v35;
LABEL_48:
    if (v33 < 0)
    {
LABEL_51:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "closeWithStateProc", 411, 108, 0, "write state");
      v7 = 0;
    }

    else
    {
LABEL_49:
      if (a3)
      {
        *a3 = *(v5 + 1296);
      }
    }

    free(*(v5 + 1216));
    memset_s((v5 + 1200), 0x18uLL, 0, 0x18uLL);
    free(*(v5 + 1240));
    memset_s((v5 + 1224), 0x18uLL, 0, 0x18uLL);
    free(*(v5 + 1264));
    memset_s((v5 + 1248), 0x18uLL, 0, 0x18uLL);
    memset_s(v5, 0x518uLL, 0, 0x518uLL);
    free(v5);
    return (v7 - 1);
  }

  return result;
}

uint64_t writeProc_1(uint64_t result, char *__src, size_t a3)
{
  v162 = *MEMORY[0x29EDCA608];
  if (atomic_load((result + 24)))
  {
    return -1;
  }

  v5 = result;
  v142 = 0;
  v6 = 0uLL;
  memset(v141, 0, sizeof(v141));
  v140 = 0;
  memset(v139, 0, sizeof(v139));
  v138 = 0;
  memset(v137, 0, sizeof(v137));
  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  *__n = 0u;
  v121 = 0u;
  v119 = 0;
  memset(v118, 0, sizeof(v118));
  v117 = 0;
  memset(v116, 0, sizeof(v116));
  v7 = *(result + 676);
  if (v7 == 5)
  {
    v8 = 0;
    v4 = 0;
    goto LABEL_192;
  }

  v4 = 0;
  v8 = 0;
  v11 = (result + 1200);
  __dst = (result + 944);
  v113 = (result + 680);
  v111 = (result + 1248);
  v114 = (result + 416);
  v115 = (result + 1200);
  v109 = (result + 1224);
  while (1)
  {
    v12 = *v11;
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v7 != 1)
        {
LABEL_169:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 346, 108, 0, "invalid state %d", 0.0);
          goto LABEL_191;
        }

        v17 = v5[47];
        if (v12 >= v17)
        {
          if (v12 != v17)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 138, 108, 0, "invalid state", 0.0);
LABEL_191:
            v4 = -1;
            goto LABEL_192;
          }

          v18 = v5[152];
          v8 = aeaContextCreateWithPrologue(v18, *v11);
          if (!v8)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 140, 108, 0, "invalid AEA prologue", v19);
            goto LABEL_191;
          }

          v20 = v5[2];
          if (v20 && ((v20)(v5[1], v8) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 145, 108, 0, "user callback returned an error", v21);
            goto LABEL_191;
          }

          if ((aeaContextUnlock(v8, (v5 + 30), v113, v141, 1, 0) & 0x80000000) != 0 || (aeaCryptoInit(v5 + 32, v5 + 60) & 0x80000000) != 0 || (result = aeaContainerOffsetsInit((v5 + 39), v5 + 60, v5 + 8), (result & 0x80000000) != 0))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 151, 108, 0, "unlocking AEA", v22);
            goto LABEL_191;
          }

          *v8 = *(v5 + 15);
          v23 = *(v5 + 16);
          v24 = *(v5 + 17);
          v25 = *(v5 + 18);
          *(v8 + 64) = v5[38];
          *(v8 + 32) = v24;
          *(v8 + 48) = v25;
          *(v8 + 16) = v23;
          v26 = v5[2];
          if (v26)
          {
            result = (v26)(v5[1], v8);
            if ((result & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 156, 108, 0, "user callback returned an error", v27);
              goto LABEL_191;
            }
          }

          v28 = *(v5 + 11);
          if (v28 >= 0x101)
          {
            goto LABEL_226;
          }

          memcpy(__dst, v5[46] + v18, *(v5 + 11));
          *(v5 + 235) = v28;
          result = memset_s(&__dst[v28], 256 - v28, 0, 256 - v28);
          v5[161] = ((v5[34] + *(v5 + 64) - 1) / *(v5 + 64));
          v5[160] = 0;
          v5[150] = 0;
          *(v5 + 318) = 0;
          v7 = 2;
LABEL_79:
          *(v5 + 169) = v7;
LABEL_130:
          v6 = 0uLL;
          goto LABEL_131;
        }

        goto LABEL_51;
      }

      if (v12 > 0xB)
      {
        DWORD2(__s[0]) = 0;
        *&__s[0] = 0;
        v47 = v5[152];
        v48 = *(v47 + 2);
        *&__s[0] = *v47;
        DWORD2(__s[0]) = v48;
        if ((aeaContainerParamsInitWithMagic(v5 + 60, __s) & 0x80000000) != 0 || (aeaCryptoInit(v5 + 32, v5 + 60) & 0x80000000) != 0 || (result = aeaContainerOffsetsInit((v5 + 39), v5 + 60, v5 + 8), (result & 0x80000000) != 0))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 125, 108, 0, "invalid AEA stream", v49);
          goto LABEL_191;
        }

        v7 = 1;
        goto LABEL_79;
      }

      v16 = 12 - v12;
      goto LABEL_52;
    }

    if (v7 == 2)
    {
      v17 = v5[51];
      if (v12 >= v17)
      {
        if (v12 != v17)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 177, 108, 0, "invalid state", 0.0);
          goto LABEL_191;
        }

        v50 = a3;
        v51 = v5[152];
        v52 = v5[49];
        v53 = *(v5 + 318);
        *(&__s[15] + 4) = v6;
        *(&__s[14] + 8) = v6;
        *(&__s[13] + 8) = v6;
        *(&__s[12] + 8) = v6;
        *(&__s[11] + 8) = v6;
        *(&__s[10] + 8) = v6;
        *(&__s[9] + 8) = v6;
        *(&__s[8] + 8) = v6;
        *(&__s[7] + 8) = v6;
        *(&__s[6] + 8) = v6;
        *(&__s[5] + 8) = v6;
        *(&__s[4] + 8) = v6;
        *(&__s[3] + 8) = v6;
        *(&__s[2] + 8) = v6;
        *(&__s[1] + 8) = v6;
        *(__s + 8) = v6;
        LODWORD(v160[16]) = 0;
        v160[15] = v6;
        v160[14] = v6;
        v160[13] = v6;
        v160[12] = v6;
        v160[11] = v6;
        v160[10] = v6;
        v160[9] = v6;
        v160[8] = v6;
        v160[7] = v6;
        v160[6] = v6;
        v160[5] = v6;
        v160[4] = v6;
        v160[3] = v6;
        v160[2] = v6;
        v160[1] = v6;
        v160[0] = v6;
        WORD4(__s[0]) = 19267;
        *&__s[0] = 0x5F41454100000006;
        result = memset_s(__s + 10, 0xFAuLL, 0, 0xFAuLL);
        v54 = LODWORD(__s[0]);
        if (LODWORD(__s[0]) >= 0xFD)
        {
          goto LABEL_226;
        }

        *(__s + LODWORD(__s[0]) + 4) = v53;
        LODWORD(__s[0]) = v54 + 4;
        memset_s(__s + v54 + 8, 252 - v54, 0, 252 - v54);
        v55 = v5[13];
        if (v55 && *v113)
        {
          v56 = (v55)(v114, *(v5 + 8), v113, __s, v160);
          memset_s(__s, 0x104uLL, 0, 0x104uLL);
          v11 = v115;
          if (v56 < 0)
          {
            goto LABEL_179;
          }

          memset(v160 + 12, 0, 248);
          *(v160 + 4) = 0x4B4548435F414541;
          LODWORD(v160[0]) = 8;
          memset_s(v160 + 12, 0xF8uLL, 0, 0xF8uLL);
          memset(__s, 0, 260);
          v58 = v5[13];
          if (v58 && *v114)
          {
            v59 = (v58)(v139, *(v5 + 9), v114, v160, __s);
            memset_s(v160, 0x104uLL, 0, 0x104uLL);
            if (v59 < 0)
            {
              goto LABEL_179;
            }

            v60 = v5[16];
            if (!v60)
            {
              goto LABEL_179;
            }

            if (*(v5 + 235) != *(v5 + 11))
            {
              goto LABEL_179;
            }

            result = (v60)(v51, v52, v5 + 940, v139, v52 + v51, v12 - v52);
            if ((result & 0x80000000) != 0)
            {
              goto LABEL_179;
            }

            *v111 = 0;
            if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_219;
            }

            v61 = v5[157];
            if (v61 < v12)
            {
              do
              {
                while (!v61)
                {
                  v61 = 0x4000;
                  v63 = 0x4000;
                  if (v12 <= 0x4000)
                  {
                    goto LABEL_122;
                  }
                }

                v62 = v61 >> 1;
                if ((v61 & (v61 >> 1)) != 0)
                {
                  v62 = v61 & (v61 >> 1);
                }

                v61 += v62;
              }

              while (v61 < v12);
              v63 = v61;
              if (v61 >= 0x2000000001)
              {
                *__error() = 12;
                goto LABEL_218;
              }

LABEL_122:
              v74 = v5[158];
              result = realloc(v74, v63);
              if (result)
              {
                v5[158] = result;
                v5[157] = v63;
                goto LABEL_124;
              }

              free(v74);
LABEL_218:
              *v111 = 0;
              v111[1] = 0;
              v111[2] = 0;
LABEL_219:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 198, 108, 0, "copy cluster header", v57);
              goto LABEL_191;
            }

LABEL_124:
            v75 = v5[158];
            if (v51)
            {
              result = memcpy(v75 + *v111, v51, v12);
            }

            else if (v75)
            {
              result = memset_s(v75 + *v111, v12, 0, v12);
            }

            v5[156] = (v5[156] + v12);
            v76 = *(v5 + 11);
            if (v76 > 0x100)
            {
LABEL_226:
              __break(1u);
              return result;
            }

            memcpy(__dst, v5[49] + v51, *(v5 + 11));
            *(v5 + 235) = v76;
            result = memset_s(&__dst[v76], 256 - v76, 0, 256 - v76);
            v5[150] = 0;
            *(v5 + 319) = 0;
            v7 = 3;
            *(v5 + 169) = 3;
            a3 = v50;
            goto LABEL_130;
          }

          v95 = v160;
        }

        else
        {
          v95 = __s;
        }

        memset_s(v95, 0x104uLL, 0, 0x104uLL);
LABEL_179:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 195, 108, 0, "decrypting cluster header", v57);
        goto LABEL_191;
      }

      goto LABEL_51;
    }

    if (v7 != 3)
    {
      break;
    }

    if (v5[156] != v5[51])
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 213, 108, 0, "invalid state", 0.0);
      goto LABEL_191;
    }

    v29 = *(v5 + 319);
    if (v29 >= *(v5 + 65) || (v30 = v5[160], v31 = v5[161], v30 >= v31))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 218, 108, 0, "invalid state", 0.0);
      goto LABEL_191;
    }

    v110 = __src;
    v108 = a3;
    v32 = *(v5 + 72);
    v33 = (v5[48] + v5[158] + (v32 + 8) * v29);
    v34 = *v33;
    v17 = v33[1];
    if (v34)
    {
      v35 = v17 > v34;
    }

    else
    {
      v35 = 1;
    }

    if (v35 || v17 < v34 && !*(v5 + 66) || ((v36 = *(v5 + 64), (v30 + 1) != v31) ? (v37 = v34 != v36) : (v37 = 0), v34 <= v36 ? (v38 = !v37) : (v38 = 0), !v38))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 229, 108, 0, "invalid segment sizes");
      goto LABEL_164;
    }

    if (v12 < v17)
    {
      __src = v110;
      a3 = v108;
      v11 = v115;
LABEL_51:
      v16 = v17 - v12;
      if (v17 == v12)
      {
        goto LABEL_131;
      }

LABEL_52:
      if (!a3)
      {
        goto LABEL_192;
      }

      if (v16 >= a3)
      {
        v39 = a3;
      }

      else
      {
        v39 = v16;
      }

      v40 = v12 + v39;
      if (__CFADD__(v12, v39) || (v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_190;
      }

      v41 = v5[151];
      if (v41 < v40)
      {
        do
        {
          while (!v41)
          {
            v41 = 0x4000;
            v43 = 0x4000;
            if (v40 <= 0x4000)
            {
              goto LABEL_67;
            }
          }

          v42 = v41 >> 1;
          if ((v41 & (v41 >> 1)) != 0)
          {
            v42 = v41 & (v41 >> 1);
          }

          v41 += v42;
        }

        while (v41 < v40);
        v43 = v41;
        if (v41 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_189;
        }

LABEL_67:
        v44 = __src;
        v45 = v5[152];
        result = realloc(v45, v43);
        if (result)
        {
          v5[152] = result;
          v5[151] = v43;
          __src = v44;
          v11 = v115;
          goto LABEL_69;
        }

        free(v45);
        v11 = v115;
LABEL_189:
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
LABEL_190:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 356, 108, 0, "malloc", *&v6);
        goto LABEL_191;
      }

LABEL_69:
      v46 = v5[152];
      if (__src)
      {
        result = memcpy(v46 + *v11, __src, v39);
      }

      else if (v46)
      {
        result = memset_s(v46 + *v11, v39, 0, v39);
      }

      *v11 += v39;
      v6 = 0uLL;
      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_190;
      }

      a3 -= v39;
      __src += v39;
      v4 += v39;
      v5[162] = (v5[162] + v39);
      v7 = *(v5 + 169);
      goto LABEL_131;
    }

    if (v12 != v17)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 234, 108, 0, "invalid state");
LABEL_164:
      v4 = -1;
      goto LABEL_192;
    }

    if (v32 >= 0x101)
    {
      goto LABEL_226;
    }

    v107 = v5[152];
    __memcpy_chk();
    LODWORD(v137[0]) = v32;
    result = memset_s(v137 + v32 + 4, 256 - v32, 0, 256 - v32);
    v64 = *(v5 + 11);
    if (v64 >= 0x101)
    {
      goto LABEL_226;
    }

    __memcpy_chk();
    LODWORD(v118[0]) = v64;
    memset_s(v118 + v64 + 4, 256 - v64, 0, 256 - v64);
    v65 = *(v5 + 319);
    memset(v160 + 8, 0, 224);
    memset(&v160[14] + 8, 0, 28);
    WORD4(v160[0]) = 19283;
    *&v160[0] = 0x5F41454100000006;
    result = memset_s(v160 + 10, 0xFAuLL, 0, 0xFAuLL);
    v66 = LODWORD(v160[0]);
    if (LODWORD(v160[0]) >= 0xFD)
    {
      goto LABEL_226;
    }

    *(v160 + LODWORD(v160[0]) + 4) = v65;
    LODWORD(v160[0]) = v66 + 4;
    memset_s(v160 + v66 + 8, 252 - v66, 0, 252 - v66);
    memset(__s, 0, 260);
    v67 = v5[13];
    __src = v110;
    if (!v67 || !*v114)
    {
      memset_s(v160, 0x104uLL, 0, 0x104uLL);
LABEL_181:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 248, 108, 0, "decrypting segment", *&v6);
      goto LABEL_191;
    }

    v68 = (v67)(v139, *(v5 + 9), v114, v160, __s);
    memset_s(v160, 0x104uLL, 0, 0x104uLL);
    if (v68 < 0)
    {
      goto LABEL_181;
    }

    v69 = v5[16];
    if (!v69 || LODWORD(v118[0]) != *(v5 + 11) || ((v69)(v107, v12, v118, v139, 0, 0) & 0x80000000) != 0)
    {
      goto LABEL_181;
    }

    v11 = v115;
    v70 = v115;
    if (v17 < v34)
    {
      v71 = v5[154];
      if (v71 < v34)
      {
        do
        {
          while (!v71)
          {
            v71 = 0x4000;
            v73 = 0x4000;
            if (v34 <= 0x4000)
            {
              goto LABEL_135;
            }
          }

          v72 = v71 >> 1;
          if ((v71 & (v71 >> 1)) != 0)
          {
            v72 = v71 & (v71 >> 1);
          }

          v71 += v72;
        }

        while (v71 < v34);
        v73 = v71;
        if (v71 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_222;
        }

LABEL_135:
        v78 = v5[155];
        v79 = realloc(v78, v73);
        if (v79)
        {
          v77 = v79;
          v5[155] = v79;
          v5[154] = v73;
          v71 = v73;
          goto LABEL_137;
        }

        free(v78);
LABEL_222:
        *v109 = 0;
        v109[1] = 0;
        v109[2] = 0;
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 254, 108, 0, "malloc", v106);
        goto LABEL_191;
      }

      v77 = v5[155];
LABEL_137:
      *v109 = 0;
      if (!v77)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 258, 108, 0, "invalid buffer", *&v6);
        goto LABEL_191;
      }

      v80 = *(v5 + 66);
      if (v80 == 774)
      {
        v81 = PCompressLZMADecode(v77, v71, v107, v12);
        v82 = v81 & ~(v81 >> 63);
      }

      else
      {
        v83 = aeaEffectiveCompressionAlgorithm(v80);
        LODWORD(v82) = compression_decode_buffer(v77, v71, v107, v12, 0, v83);
      }

      __src = v110;
      if (v82)
      {
        v84 = *v109 + v82;
        if (!__CFADD__(*v109, v82) && v84 <= v5[154])
        {
          *v109 = v84;
        }
      }

      v70 = v109;
      if (v34 != v82)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 271, 108, 0, "invalid compressed buffer", *&v6);
        goto LABEL_191;
      }
    }

    if (*v70 != v34)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 281, 108, 0, "invalid raw size", *&v6);
      goto LABEL_191;
    }

    v85 = v70[2];
    v86 = *(v5 + 63);
    if (v86 && ((aeaChecksum(__n, v86, v70[2], v34) & 0x80000000) != 0 || LODWORD(__n[0]) != LODWORD(v137[0]) || memcmp(__n + 4, v137 + 4, LODWORD(__n[0]))))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 287, 108, 0, "segment checksum verification", *&v6);
      goto LABEL_191;
    }

    v87 = 0;
    do
    {
      v88 = (*v5)[3];
      if (!v88 || (result = v88(**v5, v85 + v87, v34 - v87), v6 = 0uLL, result <= 0))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 294, 108, 0, "invalid raw stream", *&v6);
        goto LABEL_191;
      }

      v87 += result;
    }

    while (v87 < v34);
    v5[150] = 0;
    v5[153] = 0;
    v89 = *(v5 + 319) + 1;
    *(v5 + 319) = v89;
    v90 = v5[160] + 1;
    v5[160] = v90;
    *(v5 + 169) = 3;
    if (v90 == v5[161])
    {
      a3 = v108;
      if (v5[162] == v5[35])
      {
        goto LABEL_225;
      }

      v7 = 4;
      goto LABEL_160;
    }

    a3 = v108;
    if (v89 == *(v5 + 65))
    {
      ++*(v5 + 318);
      v7 = 2;
LABEL_160:
      *(v5 + 169) = v7;
      goto LABEL_131;
    }

    v7 = 3;
LABEL_131:
    if (v7 == 5)
    {
      goto LABEL_192;
    }
  }

  if (v7 != 4)
  {
    goto LABEL_169;
  }

  v13 = v5[162];
  v14 = v5[35];
  v15 = v14 >= v13;
  v16 = v14 - v13;
  if (!v15)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 321, 108, 0, "invalid padding state", 0.0);
    goto LABEL_191;
  }

  if (v16)
  {
    goto LABEL_52;
  }

  v91 = v5[152];
  memset(__s, 0, 260);
  memset(v160, 0, 260);
  v159 = 0;
  v158 = 0u;
  v157 = 0u;
  v156 = 0u;
  v155 = 0u;
  v154 = 0u;
  v153 = 0u;
  v152 = 0u;
  v151 = 0u;
  v150 = 0u;
  v149 = 0u;
  v148 = 0u;
  v147 = 0u;
  v146 = 0u;
  v145 = 0u;
  v144 = 0u;
  v143 = 0u;
  if (v5[26] && (*(v160 + 7) = 1262571615, *&v160[0] = 0x5F41454100000007, memset_s(v160 + 11, 0xF9uLL, 0, 0xF9uLL), (v92 = v5[13]) != 0) && *v113)
  {
    v93 = __dst;
    if (((v92)(__s, *(v5 + 8)) & 0x80000000) == 0)
    {
      v94 = (v5[26])(__s);
      goto LABEL_184;
    }
  }

  else
  {
    v93 = __dst;
  }

  v94 = 0;
LABEL_184:
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  memset_s(v160, 0x104uLL, 0, 0x104uLL);
  if (!v94)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 334, 108, 0, "creating padding hash state", v96);
    goto LABEL_191;
  }

  v97 = v5[27];
  v98 = !v97 || ((v97)(v94, v91, v12) & 0x80000000) != 0;
  memset(__s, 0, 260);
  v101 = v5[28];
  if (!v101)
  {
    goto LABEL_208;
  }

  if (*(v5 + 235) != *(v5 + 11))
  {
    goto LABEL_208;
  }

  if (((v101)(v94, __s) & 0x80000000) != 0)
  {
    goto LABEL_208;
  }

  if (LODWORD(__s[0]) != *(v5 + 11))
  {
    goto LABEL_208;
  }

  if (LODWORD(__s[0]) >= 8)
  {
    v102 = 0;
    v103 = 0;
    do
    {
      v103 |= *(__s + v102 + 4) ^ *&v93[v102];
      v104 = v102 + 16;
      v102 += 8;
    }

    while (v104 <= LODWORD(__s[0]));
    if (v103)
    {
LABEL_208:
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      goto LABEL_209;
    }
  }

  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  if (v98)
  {
LABEL_209:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "writeProc", 337, 108, 0, "corrupted padding", v105);
    goto LABEL_191;
  }

  v5[150] = 0;
LABEL_225:
  *(v5 + 169) = 5;
LABEL_192:
  memset_s(v141, 0x104uLL, 0, 0x104uLL);
  memset_s(v139, 0x104uLL, 0, 0x104uLL);
  memset_s(v137, 0x104uLL, 0, 0x104uLL);
  memset_s(__n, 0x104uLL, 0, 0x104uLL);
  memset_s(v118, 0x104uLL, 0, 0x104uLL);
  memset_s(v116, 0x104uLL, 0, 0x104uLL);
  AEAContextDestroy(v8);
  if (v4 < 0)
  {
    v99 = 0;
    atomic_compare_exchange_strong(v5 + 6, &v99, 1u);
    if (!v99)
    {
      v100 = (*v5)[2];
      if (v100)
      {
        v100(**v5);
      }
    }
  }

  return v4;
}

atomic_uint *cancelProc_2(atomic_uint *result)
{
  v1 = 0;
  atomic_compare_exchange_strong(result + 6, &v1, 1u);
  if (!v1)
  {
    v2 = *(*result + 16);
    if (v2)
    {
      return v2(**result);
    }
  }

  return result;
}

void (**aaAssetDecryptionStreamOpenWithState(uint64_t a1, AAByteStream_impl *a2, void *a3))(void)
{
  *(&__s[32] + 4) = *MEMORY[0x29EDCA608];
  v5 = aaAssetDecryptionStreamOpen(a1, 0, 0);
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  v7 = *v5;
  memset(v67, 0, 32);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  if (!*(a2 + 2))
  {
    goto LABEL_25;
  }

  v8 = 0;
  v9 = &v61;
  v10 = 128;
  do
  {
    v11 = (*(a2 + 2))(*a2, v9, v10);
    if (v11 < 0)
    {
      goto LABEL_25;
    }

    if (!v11)
    {
      break;
    }

    v9 = (v9 + v11);
    v8 += v11;
    v10 -= v11;
  }

  while (v10);
  if (v8 != 128)
  {
LABEL_25:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "aaAssetDecryptionStreamOpenWithState", 480, 108, 0, "truncated state", v61, v62, v63, v64);
    goto LABEL_26;
  }

  *(v7 + 169) = HIDWORD(v64);
  *(v7 + 159) = *&v67[0];
  *(v7 + 80) = *(v67 + 8);
  *(v7 + 162) = *(&v67[1] + 1);
  if ((aeaContainerParamsInitWithMagic(v7 + 60, &v61) & 0x80000000) != 0 || (aeaContainerParamsInitWithRootHeader(v7 + 240, &v61 | 0xC) & 0x80000000) != 0 || (aeaCryptoInit(v7 + 32, v7 + 60) & 0x80000000) != 0 || (aeaContainerOffsetsInit(v7 + 312, v7 + 60, v7 + 8) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "aaAssetDecryptionStreamOpenWithState", 493, 108, 0, "invalid state", v61, v62, v63, v64);
    goto LABEL_26;
  }

  if (*(v7 + 169) >= 6u)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "aaAssetDecryptionStreamOpenWithState", 505, 108, 0, "invalid state", v61, v62, v63, v64);
    goto LABEL_26;
  }

  v12 = *(v7 + 160);
  if (v12 > *(v7 + 161) || (v13 = *(v7 + 319), v14 = *(v7 + 65), v13 > v14) || v13 + *(v7 + 318) * v14 != v12 || (v15 = v65, v65 > *(v7 + 8)) || DWORD1(v65) > *(v7 + 11) || ((v16 = *(v7 + 64), v17 = *(v7 + 51), v17 <= v16) ? (v18 = *(v7 + 64)) : (v18 = *(v7 + 51)), *(&v65 + 1) > v18 || v66 > v16 || *(&v66 + 1) > v17))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "aaAssetDecryptionStreamOpenWithState", 515, 108, 0, "invalid state", v61, v62, v63, v64);
LABEL_26:
    if (*v6)
    {
      v6[1]();
    }

    free(v6);
    return 0;
  }

  if (!*(a2 + 2))
  {
    goto LABEL_136;
  }

  if (v65)
  {
    v20 = v7 + 684;
    do
    {
      v21 = (*(a2 + 2))(*a2, v20, v15);
      if (v21 < 0)
      {
        goto LABEL_136;
      }

      v20 += v21;
      v15 -= v21;
      if (v21)
      {
        v22 = v15 == 0;
      }

      else
      {
        v22 = 1;
      }
    }

    while (!v22);
    if (!*(a2 + 2))
    {
LABEL_136:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "aaAssetDecryptionStreamOpenWithState", 523, 108, 0, "invalid state", v61, v62, v63, v64);
      goto LABEL_26;
    }
  }

  v23 = DWORD1(v65);
  if (DWORD1(v65))
  {
    v24 = v7 + 944;
    do
    {
      v25 = (*(a2 + 2))(*a2, v24, v23);
      if (v25 < 0)
      {
        goto LABEL_136;
      }

      v24 += v25;
      v23 -= v25;
      if (v25)
      {
        v26 = v23 == 0;
      }

      else
      {
        v26 = 1;
      }
    }

    while (!v26);
  }

  v27 = *(&v65 + 1);
  if (*(&v65 + 1))
  {
    v28 = (v7 + 1200);
    v29 = *(v7 + 150);
    v30 = *(v7 + 151);
    while (1)
    {
      if (v29 != v30)
      {
        goto LABEL_63;
      }

      v31 = v30 + 0x40000;
      if ((v30 + 0x40000) < 0)
      {
        goto LABEL_136;
      }

      if (v30 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v30)
        {
          v30 = 0x4000;
          v33 = 0x4000;
          if (v31 <= 0x4000)
          {
            goto LABEL_65;
          }
        }

        v32 = v30 >> 1;
        if ((v30 & (v30 >> 1)) != 0)
        {
          v32 = v30 & (v30 >> 1);
        }

        v30 += v32;
      }

      while (v30 < v31);
      v33 = v30;
      if (v30 >= 0x2000000001)
      {
LABEL_134:
        *__error() = 12;
LABEL_135:
        *v28 = 0;
        v28[1] = 0;
        v28[2] = 0;
        goto LABEL_136;
      }

LABEL_65:
      v34 = *(v7 + 152);
      v35 = realloc(v34, v33);
      if (!v35)
      {
LABEL_133:
        free(v34);
        goto LABEL_135;
      }

      *(v7 + 152) = v35;
      *(v7 + 151) = v33;
      v29 = *(v7 + 150);
LABEL_67:
      if (v33 - v29 >= v27)
      {
        v36 = v27;
      }

      else
      {
        v36 = v33 - v29;
      }

      v37 = AAByteStreamRead(a2, (*(v7 + 152) + v29), v36);
      if (v37 < 0)
      {
        goto LABEL_136;
      }

      if (!v37)
      {
        goto LABEL_75;
      }

      v29 = *v28 + v37;
      if (__CFADD__(*v28, v37))
      {
        goto LABEL_136;
      }

      v30 = *(v7 + 151);
      if (v29 > v30)
      {
        goto LABEL_136;
      }

      *v28 = v29;
      v27 -= v37;
      if (!v27)
      {
        goto LABEL_75;
      }
    }

    v29 = v30;
LABEL_63:
    v33 = v30;
    goto LABEL_67;
  }

LABEL_75:
  v38 = v66;
  if (v66)
  {
    v28 = (v7 + 1224);
    v39 = *(v7 + 153);
    v40 = *(v7 + 154);
    while (1)
    {
      if (v39 != v40)
      {
        goto LABEL_88;
      }

      v41 = v40 + 0x40000;
      if ((v40 + 0x40000) < 0)
      {
        goto LABEL_136;
      }

      if (v40 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v40)
        {
          v40 = 0x4000;
          v43 = 0x4000;
          if (v41 <= 0x4000)
          {
            goto LABEL_90;
          }
        }

        v42 = v40 >> 1;
        if ((v40 & (v40 >> 1)) != 0)
        {
          v42 = v40 & (v40 >> 1);
        }

        v40 += v42;
      }

      while (v40 < v41);
      v43 = v40;
      if (v40 >= 0x2000000001)
      {
        goto LABEL_134;
      }

LABEL_90:
      v34 = *(v7 + 155);
      v44 = realloc(v34, v43);
      if (!v44)
      {
        goto LABEL_133;
      }

      *(v7 + 155) = v44;
      *(v7 + 154) = v43;
      v39 = *(v7 + 153);
LABEL_92:
      if (v43 - v39 >= v38)
      {
        v45 = v38;
      }

      else
      {
        v45 = v43 - v39;
      }

      v46 = AAByteStreamRead(a2, (*(v7 + 155) + v39), v45);
      if (v46 < 0)
      {
        goto LABEL_136;
      }

      if (!v46)
      {
        goto LABEL_100;
      }

      v39 = *v28 + v46;
      if (__CFADD__(*v28, v46))
      {
        goto LABEL_136;
      }

      v40 = *(v7 + 154);
      if (v39 > v40)
      {
        goto LABEL_136;
      }

      *v28 = v39;
      v38 -= v46;
      if (!v38)
      {
        goto LABEL_100;
      }
    }

    v39 = v40;
LABEL_88:
    v43 = v40;
    goto LABEL_92;
  }

LABEL_100:
  v47 = *(&v66 + 1);
  if (*(&v66 + 1))
  {
    v28 = (v7 + 1248);
    v48 = *(v7 + 156);
    v49 = *(v7 + 157);
    while (1)
    {
      if (v48 != v49)
      {
        goto LABEL_113;
      }

      v50 = v49 + 0x40000;
      if ((v49 + 0x40000) < 0)
      {
        goto LABEL_136;
      }

      if (v49 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v49)
        {
          v49 = 0x4000;
          v52 = 0x4000;
          if (v50 <= 0x4000)
          {
            goto LABEL_115;
          }
        }

        v51 = v49 >> 1;
        if ((v49 & (v49 >> 1)) != 0)
        {
          v51 = v49 & (v49 >> 1);
        }

        v49 += v51;
      }

      while (v49 < v50);
      v52 = v49;
      if (v49 >= 0x2000000001)
      {
        goto LABEL_134;
      }

LABEL_115:
      v34 = *(v7 + 158);
      v53 = realloc(v34, v52);
      if (!v53)
      {
        goto LABEL_133;
      }

      *(v7 + 158) = v53;
      *(v7 + 157) = v52;
      v48 = *(v7 + 156);
LABEL_117:
      if (v52 - v48 >= v47)
      {
        v54 = v47;
      }

      else
      {
        v54 = v52 - v48;
      }

      v55 = AAByteStreamRead(a2, (*(v7 + 158) + v48), v54);
      if (v55 < 0)
      {
        goto LABEL_136;
      }

      if (!v55)
      {
        goto LABEL_125;
      }

      v48 = *v28 + v55;
      if (__CFADD__(*v28, v55))
      {
        goto LABEL_136;
      }

      v49 = *(v7 + 157);
      if (v48 > v49)
      {
        goto LABEL_136;
      }

      *v28 = v48;
      v47 -= v55;
      if (!v47)
      {
        goto LABEL_125;
      }
    }

    v48 = v49;
LABEL_113:
    v52 = v49;
    goto LABEL_117;
  }

LABEL_125:
  v56 = DWORD1(v65);
  *(v7 + 170) = v65;
  *(v7 + 235) = v56;
  v57 = *(v7 + 318);
  memset(&__s[1], 0, 252);
  v68 = 0;
  memset(&v67[2], 0, 256);
  LOWORD(__s[1]) = 19267;
  __s[0] = 0x5F41454100000006;
  result = memset_s(&__s[1] + 2, 0xFAuLL, 0, 0xFAuLL);
  v58 = LODWORD(__s[0]);
  if (LODWORD(__s[0]) < 0xFD)
  {
    *(__s + LODWORD(__s[0]) + 4) = v57;
    LODWORD(__s[0]) = v58 + 4;
    memset_s(&__s[1] + v58, 252 - v58, 0, 252 - v58);
    v59 = *(v7 + 13);
    if (v59 && *(v7 + 170))
    {
      v60 = v59(v7 + 416, *(v7 + 8));
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      if ((v60 & 0x80000000) == 0)
      {
        if (a3)
        {
          *a3 = *(v7 + 162);
        }

        return v6;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecryptionStream.c", "aaAssetDecryptionStreamOpenWithState", 533, 108, 0, "invalid state", v61, v62, v63, v64);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t *AEADecryptAndExtractAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned int a8)
{
  memset(&v28, 0, sizeof(v28));
  if (stat(a1, &v28) || (v28.st_mode & 0xF000) != 0x4000)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractAsyncStreamOpen", 804, 115, 0, "Invalid/missing directory: %s", a1);
    v19 = 0;
    v17 = 0;
  }

  else
  {
    v16 = malloc(0x9C8uLL);
    v17 = v16;
    if (v16)
    {
      memset_s(v16, 0x9C8uLL, 0, 0x9C8uLL);
      v18 = malloc(0x38uLL);
      v19 = v18;
      if (v18)
      {
        memset_s(v18, 0x38uLL, 0, 0x38uLL);
        *v17 = a3;
        *(v17 + 8) = a4;
        *(v17 + 16) = a6;
        *(v17 + 24) = a5;
        *(v17 + 2128) = a7;
        *(v17 + 2136) = a8;
        *(v17 + 2120) = a7 >> 62;
        if (a2)
        {
          *(v17 + 2296) = AAByteRangeClone(a2);
        }

        if (realpath_DARWIN_EXTSN(a1, (v17 + 72)))
        {
          if ((concatPath((v17 + 1096), 0x400uLL, (v17 + 72), ".tmp_decrypt") & 0x80000000) != 0)
          {
            v27 = (v17 + 72);
            v21 = "Path too long: %s";
            v22 = 822;
          }

          else if (stat((v17 + 1096), &v28) || (v28.st_mode & 0xF000) == 0x4000)
          {
            if (pthread_mutex_init((v17 + 2320), 0))
            {
              v20 = *__error();
              v21 = "pthread_mutex_init";
              v22 = 824;
LABEL_24:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractAsyncStreamOpen", v22, 115, v20, v21, v27);
              goto LABEL_14;
            }

            if (pthread_mutex_init((v17 + 2408), 0))
            {
              v20 = *__error();
              v21 = "pthread_mutex_init";
              v22 = 825;
              goto LABEL_24;
            }

            v25 = AEADecryptAsyncStreamOpen(v17, setupContext_0, verifySegment_0, processSegment_1, a7, a8);
            *(v17 + 48) = v25;
            if (v25)
            {
              v26 = AAExtractArchiveOutputStreamOpen(a1, v17, entryMessage, a7, a8);
              *(v17 + 64) = v26;
              if (v26)
              {
                *v19 = v17;
                v19[1] = extractToDirAsyncClose;
                v19[4] = extractToDirAsyncCancel;
                v19[2] = extractToDirAsyncGetRange;
                v19[3] = extractToDirAsyncProcess;
                return v19;
              }

              v21 = "creating extract stream";
              v22 = 832;
            }

            else
            {
              v21 = "creating decrypt stream";
              v22 = 830;
            }
          }

          else
          {
            v27 = (v17 + 1096);
            v21 = "Invalid tmp dir: %s";
            v22 = 823;
          }
        }

        else
        {
          v27 = a1;
          v21 = "Invalid directory: %s";
          v22 = 821;
        }

        v20 = 0;
        goto LABEL_24;
      }

      v20 = *__error();
      v21 = "malloc";
      v22 = 810;
      goto LABEL_24;
    }

    v24 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractAsyncStreamOpen", 808, 115, *v24, "malloc");
    v19 = 0;
  }

LABEL_14:
  extractToDirAsyncClose(v17);
  free(v19);
  return 0;
}

uint64_t setupContext_0(uint64_t a1, AEAContext context)
{
  v70 = *MEMORY[0x29EDCA608];
  memset(&v66, 0, sizeof(v66));
  v4 = *(a1 + 8);
  if (v4 && (v4(*a1, context) & 0x80000000) != 0)
  {
    v8 = "Client context callback returned an error";
    v9 = 459;
    goto LABEL_38;
  }

  if (*(a1 + 2140))
  {
    *(a1 + 2144) = AEAContextGetFieldUInt(context, 0xDu);
    FieldUInt = AEAContextGetFieldUInt(context, 4u);
    *(a1 + 2152) = FieldUInt;
    v6 = FieldUInt + *(a1 + 2144) - 1;
    v7 = v6 / FieldUInt;
    if (v6 / FieldUInt >= 0xFFFFFFFF)
    {
      v8 = "Too many segments";
      v9 = 470;
LABEL_38:
      v12 = 0;
      goto LABEL_39;
    }

    *(a1 + 2384) = v7;
    if (FieldUInt > v6)
    {
      goto LABEL_8;
    }

    v13 = calloc(v7, 0x10uLL);
    *(a1 + 2392) = v13;
    if (!v13)
    {
      v12 = *__error();
      v8 = "malloc";
      v9 = 476;
      goto LABEL_39;
    }

    v14 = (*(a1 + 2384) + 1);
    *(a1 + 2160) = 0;
    *(a1 + 2164) = v14;
    v15 = calloc(v14, 4uLL);
    *(a1 + 2168) = v15;
    if (v15)
    {
      if (pthread_mutex_init((a1 + 2176), 0))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
      }

      else
      {
        if (!pthread_cond_init((a1 + 2240), 0))
        {
          if (AASharedBufferPipeOpen((a1 + 32), (a1 + 40), *(a1 + 2152)) < 0)
          {
            v8 = "AASharedBufferPipeOpen";
            v9 = 482;
            goto LABEL_38;
          }

          v30 = AADecodeArchiveInputStreamOpen(*(a1 + 40), 0, 0, *(a1 + 2128) | 0x100, *(a1 + 2136));
          *(a1 + 56) = v30;
          if (!v30)
          {
            v8 = "open decoder stream";
            v9 = 486;
            goto LABEL_38;
          }

          if ((createThread((a1 + 2488), loadThread, a1, 0) & 0x80000000) != 0)
          {
            v8 = "createThread";
            v9 = 489;
            goto LABEL_38;
          }

          if ((createThread((a1 + 2496), extractThread, a1, 0) & 0x80000000) != 0)
          {
            v8 = "createThread";
            v9 = 490;
            goto LABEL_38;
          }

LABEL_8:
          if (stat((a1 + 1096), &v66))
          {
            if (mkdir((a1 + 1096), 0x1C0u))
            {
              v12 = *__error();
              v62 = (a1 + 1096);
              v8 = "mkdir: %s";
              v9 = 500;
LABEL_39:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "setupContext", v9, 115, v12, v8, v62);
              v10 = 0;
LABEL_40:
              v11 = 0xFFFFFFFFLL;
              goto LABEL_41;
            }
          }

          else if ((v66.st_mode & 0xF000) != 0x4000)
          {
            v62 = (a1 + 1096);
            v8 = "Not a directory: %s";
            v9 = 496;
            goto LABEL_38;
          }

          buf_size = 0;
          memset(&buf, 0, 128);
          memset(__s2, 0, sizeof(__s2));
          if (AEAContextGetFieldBlob(context, 0x12u, 0, 0x80uLL, &buf, &buf_size) < 0)
          {
            v8 = "getting archive identifier";
            v9 = 511;
            goto LABEL_38;
          }

          if ((concatPath(__str, 0x400uLL, (a1 + 1096), "archive_id") & 0x80000000) != 0)
          {
            v62 = (a1 + 1096);
            v8 = "Name too long: %s";
            v9 = 513;
            goto LABEL_38;
          }

          if (stat(__str, &v66))
          {
            if ((storeFileContents(__str, &buf, buf_size) & 0x80000000) != 0)
            {
              v62 = __str;
              v8 = "storing archive id: %s";
              v9 = 529;
              goto LABEL_38;
            }
          }

          else
          {
            if ((v66.st_mode & 0xF000) != 0x8000 || v66.st_size != buf_size)
            {
              v8 = "Archive identifier size mismatch when resuming";
              v9 = 517;
              goto LABEL_38;
            }

            v27 = open(__str, 0);
            if (v27 < 0)
            {
              v12 = *__error();
              v62 = __str;
              v8 = "open: %s";
              v9 = 519;
              goto LABEL_39;
            }

            v28 = v27;
            v29 = read(v27, __s2, buf_size);
            close(v28);
            if (v29 != buf_size || memcmp(&buf, __s2, v29))
            {
              v8 = "Archive identifier value mismatch when resuming";
              v9 = 523;
              goto LABEL_38;
            }
          }

          v16 = *(a1 + 2296);
          if (!v16)
          {
            v31 = AAByteRangeCreate();
            *(a1 + 2296) = v31;
            if (!v31)
            {
              v8 = "AAByteRangeCreate";
              v9 = 537;
              goto LABEL_38;
            }

            if ((AAByteRangeAdd(v31, 0, *(a1 + 2144)) & 0x80000000) != 0)
            {
              v8 = "AAByteRangeAdd";
              v9 = 538;
              goto LABEL_38;
            }

            v16 = *(a1 + 2296);
          }

          v17 = AAByteRangeSizeAtOffset(v16, 0x7FFFFFFFFFFFFFFFLL);
          *(a1 + 2304) = v17 - AAByteRangeSizeAtOffset(v16, 0x8000000000000000);
          RemainingRange = loadRemainingRange(a1);
          if (RemainingRange)
          {
            v10 = RemainingRange;
            *__str = 0;
            *&buf.st_dev = 0;
            v19 = AAByteRangeFirst(RemainingRange, 0, __str, &buf);
            if ((v19 & 0x8000000000000000) == 0)
            {
              v20 = v19;
              while (1)
              {
                v21 = *__str;
                v22 = *&buf.st_dev;
                if (*__str <= *&buf.st_dev)
                {
                  v24 = *(a1 + 2296);
                  v25 = AAByteRangeSizeAtOffset(v24, *&buf.st_dev);
                  v23 = v25 - AAByteRangeSizeAtOffset(v24, v21);
                  v22 = *&buf.st_dev;
                  v21 = *__str;
                }

                else
                {
                  v23 = -1;
                }

                if (v23 < v22 - v21)
                {
                  break;
                }

                v20 = AAByteRangeNext(v10, v20, __str, &buf);
                if (v20 < 0)
                {
                  goto LABEL_30;
                }
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "setupContext", 553, 115, 0, "Stored remaining range is not a subset of initial range");
              goto LABEL_40;
            }

LABEL_30:
            AAByteRangeDestroy(*(a1 + 2296));
            *(a1 + 2296) = v10;
          }

          else
          {
            v10 = *(a1 + 2296);
          }

          v32 = AAByteRangeClone(v10);
          *(a1 + 2472) = v32;
          if (!v32)
          {
            v8 = "AAByteRangeClone";
            v9 = 564;
            goto LABEL_38;
          }

          *(a1 + 2400) = -1;
          if (!*(a1 + 2384))
          {
            v11 = 0;
            if (!*(a1 + 2120))
            {
              v10 = 0;
              goto LABEL_41;
            }

            v47 = 0;
            v46 = 0;
            v45 = 0;
            v60 = 0;
            LODWORD(v43) = 0;
            goto LABEL_107;
          }

          v33 = 0;
          v34 = 0;
          while (1)
          {
            v35 = *(a1 + 2152);
            v36 = v35 * v34;
            v37 = v35 * v34 + v35;
            v38 = v37 >= *(a1 + 2144) ? *(a1 + 2144) : v37;
            if (v36 > v38)
            {
              break;
            }

            v40 = *(a1 + 2296);
            v41 = AAByteRangeSizeAtOffset(v40, v38);
            v42 = AAByteRangeSizeAtOffset(v40, v36);
            v39 = *(a1 + 2392);
            if (v41 != v42)
            {
              goto LABEL_71;
            }

            *(v39 + v33) = 3;
            unlinkTempSegment(a1, v34);
LABEL_73:
            ++v34;
            v43 = *(a1 + 2384);
            v33 += 16;
            if (v34 >= v43)
            {
              if (*(a1 + 2120))
              {
                if (v43)
                {
                  v44 = 0;
                  v45 = 0;
                  v46 = 0;
                  v64 = 0;
                  LODWORD(v11) = 0;
                  v47 = 0;
                  while (1)
                  {
                    v48 = *(a1 + 2152);
                    v49 = v48 * v44;
                    v50 = v48 * v44 + v48;
                    v51 = v50 >= *(a1 + 2144) ? *(a1 + 2144) : v50;
                    if (v49 > v51)
                    {
                      break;
                    }

                    v63 = v47;
                    v53 = v45;
                    v54 = v46;
                    v55 = *(a1 + 2296);
                    v56 = AAByteRangeSizeAtOffset(v55, v51);
                    v57 = AAByteRangeSizeAtOffset(v55, v49);
                    v52 = v56 - v57;
                    if (v56 != v57)
                    {
                      v46 = v54;
                      v45 = v53;
                      v47 = v63;
LABEL_84:
                      memset(&buf, 0, sizeof(buf));
                      if (getTempSegmentFilename(a1, v44, __str) || stat(__str, &buf))
                      {
                        st_size = 0;
                      }

                      else if ((buf.st_mode & 0xF000) == 0x8000)
                      {
                        st_size = buf.st_size;
                      }

                      else
                      {
                        st_size = 0;
                      }

                      v47 += v52;
                      LODWORD(v11) = v11 + 1;
                      v46 = v46 - v49 + v51;
                      if (st_size)
                      {
                        v59 = v64 + 1;
                      }

                      else
                      {
                        v59 = v64;
                      }

                      v64 = v59;
                      v45 += st_size;
                      goto LABEL_91;
                    }

                    v46 = v54;
                    v45 = v53;
                    v47 = v63;
LABEL_91:
                    ++v44;
                    v43 = *(a1 + 2384);
                    if (v44 >= v43)
                    {
                      v60 = v64;
                      goto LABEL_107;
                    }
                  }

                  v52 = -1;
                  goto LABEL_84;
                }

                v47 = 0;
                LODWORD(v11) = 0;
                v60 = 0;
                v46 = 0;
                v45 = 0;
LABEL_107:
                v61 = MEMORY[0x29EDCA610];
                fprintf(*MEMORY[0x29EDCA610], "%12u segments in archive\n", v43);
                fprintf(*v61, "%12u segments to process\n", v11);
                fprintf(*v61, "%12u segments in cache\n", v60);
                fprintf(*v61, "%12u segments to download\n", v11 - v60);
                fprintf(*v61, "%12llu bytes in archive\n", *(a1 + 2144));
                fprintf(*v61, "%12llu bytes to process\n", v47);
                fprintf(*v61, "%12llu segment bytes in cache\n", v45);
                fprintf(*v61, "%12llu segment bytes to download\n", v46 - v45);
              }

              v10 = 0;
              v11 = 0;
              goto LABEL_41;
            }
          }

          v39 = *(a1 + 2392);
LABEL_71:
          *(v39 + v33) = 0;
          if (*(a1 + 2400) == -1)
          {
            *(a1 + 2400) = v34;
          }

          goto LABEL_73;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
      }
    }

    else
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
    }

    v8 = "SharedArrayInit";
    v9 = 479;
    goto LABEL_38;
  }

  v10 = 0;
  v11 = 0;
  *(a1 + 2140) = 1;
LABEL_41:
  AAByteRangeDestroy(v10);
  return v11;
}

uint64_t verifySegment_0(uint64_t a1, size_t __size, unint64_t a3, int a4, const void *a5, size_t a6)
{
  v20 = *MEMORY[0x29EDCA608];
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v7 = *(a1 + 2152);
  v8 = a3 / v7;
  if (a3 / v7 * v7 != a3 || v8 >= *(a1 + 2384))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "verifySegment", 639, 115, 0, "Invalid segment offset: %llu, size: %zu");
    goto LABEL_9;
  }

  if (*(*(a1 + 2392) + 16 * v8) != 3)
  {
    if (__size < 0x2000000001)
    {
      v16 = malloc(__size);
      if (v16)
      {
        v10 = v16;
        if (loadTempSegment(a1, v8, v16, __size) < 1 || aeaChecksum(v18, a4, v10, __size) || LODWORD(v18[0]) != a6 || memcmp(v18 + 4, a5, a6))
        {
          unlinkTempSegment(a1, v8);
          v11 = 0;
          goto LABEL_11;
        }

        atomic_fetch_add((a1 + 2288), 1u);
        if (*(a1 + 2120) >= 2u)
        {
          fprintf(*MEMORY[0x29EDCA610], "Segment %u: cached\n", v8);
        }

        if ((notifySegmentAvailable(a1, v8, __size) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "verifySegment", 664, 115, 0, "pushSegmentData failed");
LABEL_10:
        v11 = 0xFFFFFFFFLL;
        goto LABEL_11;
      }
    }

    else
    {
      *__error() = 12;
    }

    v17 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "verifySegment", 652, 115, v17, "malloc");
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 2120) >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "Segment %u: not needed\n", v8);
  }

  v10 = 0;
LABEL_7:
  v11 = 1;
LABEL_11:
  free(v10);
  return v11;
}

uint64_t processSegment_1(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 2152);
  v6 = a3 / v5;
  if (a3 / v5 * v5 != a3 || v6 >= *(a1 + 2384))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "processSegment", 686, 115, 0, "Invalid segment offset: %llu, size: %zu");
    return 0xFFFFFFFFLL;
  }

  memset(&v20, 0, sizeof(v20));
  if ((getTempSegmentFilename(a1, v6, __str) & 0x80000000) != 0)
  {
    v14 = "getSegmentFile";
    v15 = 127;
LABEL_18:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeTempSegment", v15, 115, 0, v14);
LABEL_19:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "processSegment", 690, 115, 0, "storeTempSegment", v18, v19, *&v20.st_dev, v20.st_ino, *&v20.st_uid, *&v20.st_rdev, v20.st_atimespec.tv_sec, v20.st_atimespec.tv_nsec, v20.st_mtimespec.tv_sec, v20.st_mtimespec.tv_nsec, v20.st_ctimespec.tv_sec, v20.st_ctimespec.tv_nsec, v20.st_birthtimespec.tv_sec, v20.st_birthtimespec.tv_nsec, v20.st_size, v20.st_blocks, *&v20.st_blksize, *&v20.st_gen, v20.st_qspare[0], v20.st_qspare[1]);
    return 0xFFFFFFFFLL;
  }

  if (!stat(__str, &v20))
  {
    v14 = "segment already in cache";
    v15 = 128;
    goto LABEL_18;
  }

  v9 = open(__str, 1537, 384);
  if (v9 < 0)
  {
    v16 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeTempSegment", 130, 115, v16, "tmp");
    goto LABEL_19;
  }

  v10 = v9;
  if (a2)
  {
    v11 = 0;
    while (1)
    {
      v12 = write(v10, (a4 + v11), a2 - v11);
      if (v12 < 0)
      {
        v17 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeTempSegment", 135, 115, v17, "write");
        goto LABEL_26;
      }

      if (!v12)
      {
        break;
      }

      v11 += v12;
      if (v11 >= a2)
      {
        goto LABEL_11;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeTempSegment", 136, 115, 0, "write returned 0");
LABEL_26:
    close(v10);
    goto LABEL_19;
  }

LABEL_11:
  close(v10);
  atomic_fetch_add((a1 + 2288), 1u);
  if (*(a1 + 2120) >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "Segment %u: stored in cache\n", v6);
  }

  if ((notifySegmentAvailable(a1, v6, a2) & 0x80000000) == 0)
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "processSegment", 695, 115, 0, "pushSegmentData", v18, v19, *&v20.st_dev, v20.st_ino, *&v20.st_uid, *&v20.st_rdev, v20.st_atimespec.tv_sec, v20.st_atimespec.tv_nsec, v20.st_mtimespec.tv_sec, v20.st_mtimespec.tv_nsec, v20.st_ctimespec.tv_sec, v20.st_ctimespec.tv_nsec, v20.st_birthtimespec.tv_sec, v20.st_birthtimespec.tv_nsec, v20.st_size, v20.st_blocks, *&v20.st_blksize, *&v20.st_gen, v20.st_qspare[0], v20.st_qspare[1]);
  return 0xFFFFFFFFLL;
}

uint64_t entryMessage(void *a1, uint64_t a2, uint64_t a3, AAHeader header)
{
  v5 = a2;
  v7 = a1[3];
  if (!v7 || (v8 = v7(*a1, a2, a3, header), !v8))
  {
    switch(v5)
    {
      case 20:
        v31 = -1;
        value = -1;
        v30 = -1;
        v14.ikey = 5265748;
        KeyIndex = AAHeaderGetKeyIndex(header, v14);
        v18 = 0;
        if ((KeyIndex & 0x80000000) == 0)
        {
          FieldUInt = AAHeaderGetFieldUInt(header, KeyIndex, &value);
          v17 = FieldUInt <= 1 ? 1 : FieldUInt;
          if (v17 > 0)
          {
            v18 = 1;
          }
        }

        v19.ikey = 5784649;
        v20 = AAHeaderGetKeyIndex(header, v19);
        if ((v20 & 0x80000000) != 0 || ((v21 = AAHeaderGetFieldUInt(header, v20, &v31), v21 <= 1) ? (v22 = 1) : (v22 = v21), v22 <= 0))
        {
          v18 = 0;
        }

        v23.ikey = 5915721;
        v24 = AAHeaderGetKeyIndex(header, v23);
        if ((v24 & 0x80000000) != 0 || ((v25 = AAHeaderGetFieldUInt(header, v24, &v30), v25 <= 1) ? (v26 = 1) : (v26 = v25), !v18 || v26 <= 0))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "entryMessage", 419, 115, 0, "Missing IDX,IDZ from archive decoder");
          goto LABEL_36;
        }

        v27 = AAByteRangeOffsetAtSize(a1[287], v31);
        v28 = AAByteRangeOffsetAtSize(a1[287], v30 + v31);
        if (value == 68 && (retireEntryRange(a1, v27, v28) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "entryMessage", 428, 115, 0, "retire segment");
          goto LABEL_36;
        }

        break;
      case 21:
        if (!header)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "entryMessage", 432, 115, 0, "data not expected to be NULL");
          goto LABEL_36;
        }

        v10 = *header;
        v11 = *(header + 1);
        v12 = AAByteRangeOffsetAtSize(a1[287], *header);
        v13 = AAByteRangeOffsetAtSize(a1[287], v11 + v10);
        if ((retireEntryRange(a1, v12, v13) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "entryMessage", 441, 115, 0, "retire segment");
          goto LABEL_36;
        }

        break;
      case 22:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "entryMessage", 407, 115, 0, "Extraction failed: %s");
LABEL_36:
        v9 = 0xFFFFFFFFLL;
LABEL_37:
        cancelStreams(a1);
        return v9;
    }

    return 0;
  }

  v9 = v8;
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  return v9;
}

uint64_t extractToDirAsyncClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 2292));
    v3 = v2 == 0;
    if (*(result + 2488))
    {
      SharedArrayEnqueue((result + 2160), -1);
      joinThread(*(v1 + 2488));
    }

    AAByteStreamClose(*(v1 + 32));
    v4 = *(v1 + 2496);
    if (v4)
    {
      joinThread(v4);
    }

    AAByteStreamClose(*(v1 + 40));
    if (AAArchiveStreamClose(*(v1 + 64)) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractToDirAsyncClose", 725, 115, 0, "extract stream reported errors");
      v3 = 0;
    }

    if (AAArchiveStreamClose(*(v1 + 56)) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractToDirAsyncClose", 726, 115, 0, "decode stream reported errors");
      v3 = 0;
    }

    if ((AAAsyncByteStreamClose(*(v1 + 48)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractToDirAsyncClose", 727, 115, 0, "decrypt stream reported errors");
      v3 = 0;
    }

    pthread_mutex_destroy((v1 + 2320));
    pthread_mutex_destroy((v1 + 2408));
    free(*(v1 + 2392));
    if (*(v1 + 2384) && !pthread_mutex_destroy((v1 + 2176)) && !pthread_cond_destroy((v1 + 2240)))
    {
      free(*(v1 + 2168));
    }

    AAByteRangeDestroy(*(v1 + 2296));
    AAByteRangeDestroy(*(v1 + 2472));
    if (v3)
    {
      memset(&v5, 0, sizeof(v5));
      if (!stat((v1 + 1096), &v5) && (v5.st_mode & 0xF000) == 0x4000)
      {
        removeTree((v1 + 1096));
      }
    }

    free(v1);
    if (v3)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t extractToDirAsyncGetRange(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = (a1 + 2312);
  if (atomic_load((a1 + 2312)))
  {
    goto LABEL_2;
  }

  result = AAAsyncByteStreamGetRange(*(a1 + 48), a2, a3);
  if (result >= 1)
  {
    if (result == 1 && *a2)
    {
      return 1;
    }

LABEL_2:
    v8 = 0;
    result = 0;
    atomic_compare_exchange_strong(v6, &v8, 1u);
    if (*(a1 + 2400) < *(a1 + 2384))
    {
      return result;
    }

    *a2 = 0;
    *a3 = 0;
    return 1;
  }

  return result;
}

void *AEADecryptAndExtractChunkAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unsigned int a10)
{
  AsyncStreamOpen = AEADecryptAndExtractAsyncStreamOpen(a1, a2, a3, a4, a5, a6, a9 | 0x200000000000000, a10);
  if (AsyncStreamOpen)
  {

    return aaCompositeChunkAsyncStreamOpen(AsyncStreamOpen, a7, a8, a9, a10);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "AEADecryptAndExtractChunkAsyncStreamOpen", 868, 115, 0, "AEADecryptAndExtractAsyncStreamOpen");
    return 0;
  }
}

uint64_t loadThread(uint64_t a1)
{
  v2 = *(a1 + 2152);
  if (v2 < 0x2000000001)
  {
    v3 = malloc(v2);
    if (v3)
    {
      v4 = v3;
      while (!pthread_mutex_lock((a1 + 2176)))
      {
        while (1)
        {
          v5 = *(a1 + 2160);
          if (v5)
          {
            break;
          }

          if (pthread_cond_wait((a1 + 2240), (a1 + 2176)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
            goto LABEL_37;
          }
        }

        v6 = v5 - 1;
        *(a1 + 2160) = v6;
        v7 = *(*(a1 + 2168) + 4 * v6);
        if (pthread_mutex_unlock((a1 + 2176)))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
          goto LABEL_37;
        }

        if (v7 == -1)
        {
          goto LABEL_39;
        }

        if (v7 >= *(a1 + 2384))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 338, 115, 0, "Invalid segment index: %u");
          goto LABEL_38;
        }

        if (*(a1 + 2120) >= 2u)
        {
          fprintf(*MEMORY[0x29EDCA610], "Segment %u: dequeue\n", v7);
        }

        v8 = *(*(a1 + 2392) + 16 * v7 + 8);
        if (loadTempSegment(a1, v7, v4, v8) <= 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 344, 115, 0, "loading segment: %u");
          goto LABEL_38;
        }

        v9 = *(a1 + 2152) * v7;
        v20 = 0;
        v21 = 0;
        v10 = AAByteRangeFirst(*(a1 + 2296), v9, &v21, &v20);
        if (v10 < 0)
        {
          v12 = 0;
        }

        else
        {
          v11 = v10;
          v12 = 0;
          v13 = v9 + v8;
          v14 = 1;
          do
          {
            if (v21 <= v9)
            {
              v15 = v9;
            }

            else
            {
              v15 = v21;
            }

            if (v13 >= v20)
            {
              v16 = v20;
            }

            else
            {
              v16 = v13;
            }

            if (v15 >= v16)
            {
              break;
            }

            while (1)
            {
              v17 = AAByteStreamWrite(*(a1 + 32), &v4[v15 - v9], v16 - v15);
              if (v17 < 0)
              {
                break;
              }

              v15 += v17;
              v12 += v17;
              if (v15 >= v16)
              {
                goto LABEL_28;
              }
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 364, 115, 0, "SharedBufferWrite");
            v14 = 0;
LABEL_28:
            v11 = AAByteRangeNext(*(a1 + 2296), v11, &v21, &v20);
          }

          while ((v11 & 0x8000000000000000) == 0);
          if (!v14)
          {
            goto LABEL_38;
          }
        }

        if (*(a1 + 2120) >= 2u)
        {
          fprintf(*MEMORY[0x29EDCA610], "Segment %u: %zu B processed\n", v7, v12);
        }

        unlinkTempSegment(a1, v7);
        atomic_fetch_add((a1 + 2288), 0xFFFFFFFF);
      }

      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_37:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 336, 115, 0, "SharedArrayDequeue");
      goto LABEL_38;
    }
  }

  else
  {
    *__error() = 12;
  }

  v18 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadThread", 331, 115, *v18, "malloc");
  v4 = 0;
LABEL_38:
  cancelStreams(a1);
LABEL_39:
  free(v4);
  return a1;
}

uint64_t extractThread(uint64_t a1)
{
  if (AAArchiveStreamProcess(*(a1 + 56), *(a1 + 64), 0, 0, *(a1 + 2128), *(a1 + 2136)) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "extractThread", 389, 115, 0, "AAByteStreamProcess reported an error");
    cancelStreams(a1);
  }

  return a1;
}

void **loadRemainingRange(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  bzero(v11, 0x400uLL);
  if ((concatPath(v11, 0x400uLL, (a1 + 1096), "remaining") & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadRemainingRange", 254, 115, 0, "Name too long");
    goto LABEL_9;
  }

  v2 = open(v11, 0);
  if (v2 < 0)
  {
LABEL_9:
    v4 = 0;
    goto LABEL_17;
  }

  v3 = v2;
  v4 = AAByteRangeCreate();
  if (v4)
  {
    while (1)
    {
      v5 = read(v3, v10, 0x10uLL);
      if (v5 < 0)
      {
        v8 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadRemainingRange", 264, 115, v8, "read");
        goto LABEL_16;
      }

      if (v5 != 16)
      {
        break;
      }

      if ((AAByteRangeAdd(v4, v10[0], v10[1]) & 0x80000000) != 0)
      {
        v6 = "AAByteRangeAdd";
        v7 = 267;
        goto LABEL_15;
      }
    }

    if (!v5)
    {
      close(v3);
      return v4;
    }

    v6 = "truncated remaining range file";
    v7 = 266;
  }

  else
  {
    v6 = "AAByteRangeCreate";
    v7 = 259;
  }

LABEL_15:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "loadRemainingRange", v7, 115, 0, v6);
LABEL_16:
  close(v3);
LABEL_17:
  AAByteRangeDestroy(v4);
  return 0;
}

uint64_t unlinkTempSegment(uint64_t a1, unsigned int a2)
{
  v4 = *MEMORY[0x29EDCA608];
  result = getTempSegmentFilename(a1, a2, __str);
  if (!result)
  {
    return unlink(__str);
  }

  return result;
}

uint64_t loadTempSegment(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v15 = *MEMORY[0x29EDCA608];
  memset(&v13, 0, sizeof(v13));
  if ((getTempSegmentFilename(a1, a2, __str) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = open(__str, 0, *&v13.st_dev, *&v13.st_uid, *&v13.st_atimespec, *&v13.st_mtimespec, *&v13.st_ctimespec, *&v13.st_birthtimespec);
  if (v6 < 0)
  {
    return 0;
  }

  v7 = v6;
  if (fstat(v6, &v13))
  {
    v8 = 0;
  }

  else if (v13.st_size == a4)
  {
    LODWORD(v8) = 0;
    v9 = 0;
    while (a4 > v9)
    {
      v10 = read(v7, (a3 + v9), a4 - v9);
      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = 3;
      }

      if (v10 < 0)
      {
        v8 = 0xFFFFFFFFLL;
      }

      else
      {
        v8 = v8;
      }

      v9 += v10 & ~(v10 >> 63);
      if (v10 < 0)
      {
        v11 = 2;
      }

      if (v11)
      {
        if (v11 == 2)
        {
          goto LABEL_24;
        }

        break;
      }
    }

    if (v9 == a4)
    {
      v8 = 1;
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

LABEL_24:
  close(v7);
  return v8;
}

void cancelStreams(uint64_t a1)
{
  v2 = 0;
  atomic_compare_exchange_strong((a1 + 2292), &v2, 1u);
  if (!v2)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      AAArchiveStreamCancel(v4);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      AAArchiveStreamCancel(v5);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      AAAsyncByteStreamCancel(v6);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      AAByteStreamCancel(v7);
    }

    v8 = *(a1 + 40);
    if (v8)
    {

      AAByteStreamCancel(v8);
    }
  }
}

uint64_t getTempSegmentFilename(uint64_t a1, unsigned int a2, char *__str)
{
  if (*(a1 + 2384) <= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "getTempSegmentFilename", 113, 115, 0, "Invalid segment index: %u");
    return 0xFFFFFFFFLL;
  }

  if (snprintf(__str, 0x400uLL, "%s/%08x", (a1 + 1096), a2) >= 0x400)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "getTempSegmentFilename", 115, 115, 0, "Segment file name too long");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t notifySegmentAvailable(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (pthread_mutex_lock((a1 + 2320)))
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 88, 115, *v6, "pthread_mutex_lock");
    return 0xFFFFFFFFLL;
  }

  else
  {
    v8 = *(a1 + 2392);
    if (*(v8 + 16 * a2))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 90, 115, 0, "Invalid segment state");
      v9 = 0;
      v8 = *(a1 + 2392);
    }

    else
    {
      v9 = 1;
    }

    v10 = v8 + 16 * a2;
    *v10 = 1;
    *(v10 + 8) = a3;
    v11 = *(a1 + 2400);
    if (v11 < *(a1 + 2384))
    {
      v12 = MEMORY[0x29EDCA610];
      do
      {
        v13 = *(*(a1 + 2392) + 16 * v11);
        if (v13 == 1)
        {
          if (*(a1 + 2120) >= 2u)
          {
            fprintf(*v12, "Segment %u: in queue for processing\n", v11);
            v11 = *(a1 + 2400);
          }

          if ((SharedArrayEnqueue((a1 + 2160), v11) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 101, 115, 0, "SharedArrayEnqueue");
            v9 = 0;
          }
        }

        else if (!v13)
        {
          break;
        }

        v11 = *(a1 + 2400) + 1;
        *(a1 + 2400) = v11;
      }

      while (v11 < *(a1 + 2384));
    }

    if (pthread_mutex_unlock((a1 + 2320)))
    {
      v14 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "notifySegmentAvailable", 106, 115, *v14, "pthread_mutex_unlock");
      v9 = 0;
    }

    if (v9)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t retireEntryRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x29EDCA608];
  if (pthread_mutex_lock((a1 + 2408)))
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 290, 115, *v6, "pthread_mutex_lock");
    return 0xFFFFFFFFLL;
  }

  if ((AAByteRangeSub(*(a1 + 2472), a2, a3) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 293, 115, 0, "AAByteRangeSub");
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  RealTime = getRealTime();
  if (RealTime <= *(a1 + 2480) + 1.0)
  {
    goto LABEL_34;
  }

  v31 = 0;
  v32 = 0;
  bzero(&__from, 0x400uLL);
  bzero(&__to, 0x400uLL);
  if ((concatPath(&__from, 0x400uLL, (a1 + 1096), "remaining.tmp") & 0x80000000) != 0)
  {
    v21 = 203;
LABEL_23:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", v21, 115, 0, "Name too long");
LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  if ((concatPath(&__to, 0x400uLL, (a1 + 1096), "remaining") & 0x80000000) != 0)
  {
    v21 = 204;
    goto LABEL_23;
  }

  v10 = open(&__from, 1537, 384);
  if (v10 < 0)
  {
    v27 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", 207, 115, v27, "open: %s");
    goto LABEL_24;
  }

  v11 = v10;
  v12 = calloc(0x4000uLL, 8uLL);
  if (!v12)
  {
    v28 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", 210, 115, v28, "malloc");
LABEL_45:
    close(v11);
    goto LABEL_25;
  }

  v13 = AAByteRangeFirst(*(a1 + 2472), 0, &v32, &v31);
  if (v13 < 0)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v15 = 0;
  do
  {
    v16 = v31;
    v17 = &v12[8 * v15];
    v15 += 2;
    *v17 = v32;
    *(v17 + 1) = v16;
    if (v15 == 0x4000)
    {
      if (write(v11, v12, 0x20000uLL) != 0x20000)
      {
        v30 = 220;
LABEL_44:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", v30, 115, 0, "truncated write");
        goto LABEL_45;
      }

      v15 = 0;
    }

    v14 = AAByteRangeNext(*(a1 + 2472), v14, &v32, &v31);
  }

  while ((v14 & 0x8000000000000000) == 0);
  if (v15 && write(v11, v12, 8 * v15) != 8 * v15)
  {
    v30 = 229;
    goto LABEL_44;
  }

LABEL_19:
  close(v11);
  rename(&__from, &__to, v18);
  if ((v19 & 0x80000000) == 0)
  {
    v20 = 0;
    goto LABEL_26;
  }

  v29 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "storeRemainingRange", 235, 115, *v29, "rename: %s", &__to);
LABEL_25:
  v20 = 1;
LABEL_26:
  if (__from.__pn_.__r_.__value_.__s.__data_[0])
  {
    unlink(&__from);
  }

  free(v12);
  if (v20)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 300, 115, 0, "store remaining range");
    v8 = 0;
  }

  if (*(a1 + 16))
  {
    v22 = *(a1 + 2304);
    v23 = *(a1 + 2472);
    v24 = AAByteRangeSizeAtOffset(v23, 0x7FFFFFFFFFFFFFFFLL);
    v25 = AAByteRangeSizeAtOffset(v23, 0x8000000000000000);
    if (((*(a1 + 16))(*a1, ((v22 - v24 + v25) * 100.0) / v22) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 301, 115, 0, "User cancelled operation");
      v8 = 0;
    }
  }

  *(a1 + 2480) = RealTime;
LABEL_34:
  if (pthread_mutex_unlock((a1 + 2408)))
  {
    v26 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtractAsyncStream.c", "retireEntryRange", 305, 115, *v26, "pthread_mutex_unlock");
    v8 = 0;
  }

  if (v8)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t aaEntryHashesInitWithFD(_BYTE *a1, unsigned int a2, int a3)
{
  v6 = malloc(0x40000uLL);
  if (a1)
  {
    memset_s(a1, 0xACuLL, 0, 0xACuLL);
  }

  if (!((((a2 >> 11) & 1) + ((a2 >> 12) & 1) + ((a2 >> 13) & 1) + ((a2 >> 14) & 1)) | (a2 >> 15) & 1))
  {
    goto LABEL_38;
  }

  v19[0] = 0;
  v19[1] = 0;
  memset(&c, 0, sizeof(c));
  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, sizeof(v16));
  memset(&v15, 0, sizeof(v15));
  v7 = *a1 & 0xE0 | (a2 >> 11);
  *a1 = *a1 & 0xE0 | (a2 >> 11);
  if ((a2 & 0x800) != 0)
  {
    CC_CKSUM_Init(v19);
    LOBYTE(v7) = *a1;
    if ((*a1 & 2) == 0)
    {
LABEL_6:
      if ((v7 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_6;
  }

  CC_SHA1_Deprecated_Init(&c);
  LOBYTE(v7) = *a1;
  if ((*a1 & 4) == 0)
  {
LABEL_7:
    if ((v7 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_30:
    CC_SHA384_Init(&v16);
    if ((*a1 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_29:
  CC_SHA256_Init(&v17);
  LOBYTE(v7) = *a1;
  if ((*a1 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_8:
  if ((v7 & 0x10) != 0)
  {
LABEL_9:
    CC_SHA512_Init(&v15);
  }

LABEL_10:
  v8 = read(a3, v6, 0x40000uLL);
  if (v8 < 0)
  {
LABEL_26:
    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryHashesInitWithFD", 44, 102, *v11, "read", *v15.count, *v15.hash, *&v15.hash[2], *&v15.hash[4], *&v15.hash[6], *v15.wbuf, *&v15.wbuf[2], *&v15.wbuf[4], *&v15.wbuf[6], *&v15.wbuf[8], *&v15.wbuf[10], *&v15.wbuf[12], *&v15.wbuf[14], v16.count[0], v16.count[1], v16.hash[0], v16.hash[1], v16.hash[2], v16.hash[3], v16.hash[4], v16.hash[5], v16.hash[6], v16.hash[7], v16.wbuf[0], v16.wbuf[1], v16.wbuf[2], v16.wbuf[3], v16.wbuf[4], v16.wbuf[5], v16.wbuf[6], v16.wbuf[7], v16.wbuf[8], v16.wbuf[9], v16.wbuf[10], v16.wbuf[11], v16.wbuf[12], v16.wbuf[13], v16.wbuf[14], v16.wbuf[15], *v17.count, *v17.hash, *&v17.hash[2], *&v17.hash[4], *&v17.hash[6]);
    v12 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v9 = v8;
  while (v9)
  {
    v10 = *a1;
    if (*a1)
    {
      CC_CKSUM_Update(v19, v6, v9);
      v10 = *a1;
      if ((*a1 & 2) == 0)
      {
LABEL_15:
        if ((v10 & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

    else if ((*a1 & 2) == 0)
    {
      goto LABEL_15;
    }

    CC_SHA1_Deprecated_Update(&c, v6, v9);
    v10 = *a1;
    if ((*a1 & 4) == 0)
    {
LABEL_16:
      if ((v10 & 8) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

LABEL_23:
    CC_SHA256_Update(&v17, v6, v9);
    v10 = *a1;
    if ((*a1 & 8) != 0)
    {
LABEL_24:
      CC_SHA384_Update(&v16, v6, v9);
      if ((*a1 & 0x10) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      CC_SHA512_Update(&v15, v6, v9);
      goto LABEL_19;
    }

LABEL_17:
    if ((v10 & 0x10) != 0)
    {
      goto LABEL_18;
    }

LABEL_19:
    v9 = read(a3, v6, 0x40000uLL);
    if (v9 < 0)
    {
      goto LABEL_26;
    }
  }

  v13 = *a1;
  if ((*a1 & 1) == 0)
  {
    if ((*a1 & 2) == 0)
    {
      goto LABEL_34;
    }

LABEL_41:
    CC_SHA1_Deprecated_Final(a1 + 8, &c);
    v13 = *a1;
    if ((*a1 & 4) != 0)
    {
      goto LABEL_42;
    }

LABEL_35:
    if ((v13 & 8) == 0)
    {
      goto LABEL_36;
    }

LABEL_43:
    CC_SHA384_Final(a1 + 60, &v16);
    if ((*a1 & 0x10) == 0)
    {
      goto LABEL_38;
    }

LABEL_37:
    CC_SHA512_Final(a1 + 108, &v15);
    goto LABEL_38;
  }

  CC_CKSUM_Final(a1 + 1, v19);
  v13 = *a1;
  if ((*a1 & 2) != 0)
  {
    goto LABEL_41;
  }

LABEL_34:
  if ((v13 & 4) == 0)
  {
    goto LABEL_35;
  }

LABEL_42:
  CC_SHA256_Final(a1 + 28, &v17);
  v13 = *a1;
  if ((*a1 & 8) != 0)
  {
    goto LABEL_43;
  }

LABEL_36:
  if ((v13 & 0x10) != 0)
  {
    goto LABEL_37;
  }

LABEL_38:
  v12 = 0;
LABEL_39:
  free(v6);
  return v12;
}

uint64_t aaEntryHashesInitWithPath(_BYTE *a1, unsigned int a2, char *a3, const char *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((concatPath(v12, 0x400uLL, a3, a4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryHashesInitWithPath", 73, 102, 0, "invalid path");
    return 0xFFFFFFFFLL;
  }

  v7 = open(v12, 0);
  if (v7 < 0)
  {
    v10 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryHashesInitWithPath", 77, 102, v10, "%s");
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  if ((aaEntryHashesInitWithFD(a1, a2, v7) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryHashesInitWithPath", 79, 102, 0, "computing hashes: %s", a4);
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  close(v8);
  return v9;
}

uint64_t aaEntryTypeFromMode(__int16 a1)
{
  v1 = (a1 & 0xF000) - 4096;
  if (v1 >> 13 > 6)
  {
    return 0;
  }

  else
  {
    return dword_296AD1F50[v1 >> 12];
  }
}

uint64_t aaEntryAttributesInitWithHeader(char *__s, char *a2, char *a3, AAHeader header)
{
  v29 = *MEMORY[0x29EDCA608];
  if (__s)
  {
    memset_s(__s, 0x48uLL, 0, 0x48uLL);
  }

  if (a2)
  {
    memset_s(a2, 0x38uLL, 0, 0x38uLL);
  }

  if (a3)
  {
    memset_s(a3, 0xACuLL, 0, 0xACuLL);
  }

  FieldCount = AAHeaderGetFieldCount(header);
  if (FieldCount)
  {
    v9 = FieldCount;
    v10 = 0;
    value = 0;
    hash_function = 0;
    do
    {
      FieldKey = AAHeaderGetFieldKey(header, v10);
      if (!__s)
      {
        goto LABEL_34;
      }

      v12 = FieldKey.ikey & 0xFFFFFF;
      if ((FieldKey.ikey & 0xFFFFFF) <= 0x474C45)
      {
        if (v12 == 4475207)
        {
          if ((AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
          {
            *__s |= 2u;
            *(__s + 2) = value;
          }
        }

        else if (v12 == 4475221)
        {
          if ((AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
          {
            *__s |= 1u;
            *(__s + 1) = value;
          }
        }

        else if (v12 == 4476749 && (AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
        {
          *__s |= 8u;
          *(__s + 4) = value;
        }
      }

      else if ((FieldKey.ikey & 0xFFFFFF) > 0x4D5442)
      {
        if (v12 == 5067843)
        {
          if (AAHeaderGetFieldTimespec(header, v10, (__s + 40)) < 0)
          {
            goto LABEL_34;
          }

          v13 = *__s | 0x20;
          goto LABEL_31;
        }

        if (v12 == 5067853 && (AAHeaderGetFieldTimespec(header, v10, (__s + 56)) & 0x80000000) == 0)
        {
          v13 = *__s | 0x40;
          goto LABEL_31;
        }
      }

      else if (v12 == 4672582)
      {
        if ((AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
        {
          *__s |= 4u;
          *(__s + 3) = value;
        }
      }

      else if (v12 == 5067842 && (AAHeaderGetFieldTimespec(header, v10, (__s + 24)) & 0x80000000) == 0)
      {
        v13 = *__s | 0x10;
LABEL_31:
        *__s = v13;
      }

LABEL_34:
      if (a3)
      {
        v14 = FieldKey.ikey & 0xFFFFFF;
        if ((FieldKey.ikey & 0xFFFFFF) <= 0x334852)
        {
          if (v14 == 3229779)
          {
            if ((AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v25) & 0x80000000) == 0 && hash_function == 2)
            {
              *a3 |= 2u;
              *(a3 + 8) = *v25;
              *(a3 + 6) = v26;
            }
          }

          else if (v14 == 3295315 && (AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v25) & 0x80000000) == 0 && hash_function == 3)
          {
            *a3 |= 4u;
            v15 = v26;
            *(a3 + 28) = *v25;
            *(a3 + 44) = v15;
          }
        }

        else if (v14 == 3360851)
        {
          if ((AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v25) & 0x80000000) == 0 && hash_function == 4)
          {
            *a3 |= 8u;
            v16 = v26;
            *(a3 + 60) = *v25;
            *(a3 + 76) = v16;
            *(a3 + 92) = v27;
          }
        }

        else if (v14 == 3491923)
        {
          if ((AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v25) & 0x80000000) == 0 && hash_function == 5)
          {
            *a3 |= 0x10u;
            v17 = v26;
            *(a3 + 108) = *v25;
            *(a3 + 124) = v17;
            v18 = v28;
            *(a3 + 140) = v27;
            *(a3 + 156) = v18;
          }
        }

        else if (v14 == 5458755 && (AAHeaderGetFieldHash(header, v10, 0x40uLL, &hash_function, v25) & 0x80000000) == 0 && hash_function == 1)
        {
          *a3 |= 1u;
          *(a3 + 1) = *v25;
        }
      }

      if (!a2)
      {
        goto LABEL_84;
      }

      v19 = FieldKey.ikey & 0xFFFFFF;
      if ((FieldKey.ikey & 0xFFFFFF) > 0x524640)
      {
        if (v19 == 5391937)
        {
          if ((AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
          {
            *a2 |= 2u;
            *(a2 + 3) = value;
          }
        }

        else if (v19 == 5523009 && (AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
        {
          *a2 |= 1u;
          *(a2 + 2) = value;
        }

        goto LABEL_84;
      }

      if (v19 != 4411984)
      {
        if (v19 == 4803654 && (AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
        {
          *a2 |= 4u;
          *(a2 + 2) = value;
        }

        goto LABEL_84;
      }

      if ((AAHeaderGetFieldUInt(header, v10, &value) & 0x80000000) == 0)
      {
        v20 = *a2;
        *a2 |= 8u;
        if (value > 67)
        {
          switch(value)
          {
            case 'D':
              v21 = 4;
              goto LABEL_83;
            case 'E':
              v21 = 5;
              goto LABEL_83;
            case 'F':
              v21 = 6;
              goto LABEL_83;
          }
        }

        else
        {
          switch(value)
          {
            case 'A':
              v21 = 1;
              goto LABEL_83;
            case 'B':
              v21 = 2;
              goto LABEL_83;
            case 'C':
              v21 = 3;
LABEL_83:
              *(a2 + 1) = v21;
              goto LABEL_84;
          }
        }

        *a2 = v20 & 0xF7;
      }

LABEL_84:
      ++v10;
    }

    while (v9 != v10);
  }

  return 0;
}

uint64_t aaEntryAttributesInitWithFD(char *a1, _BYTE *a2, _BYTE *a3, unsigned int a4, int a5)
{
  v20 = *MEMORY[0x29EDCA608];
  memset(&v18, 0, sizeof(v18));
  if (fstat(a5, &v18) < 0)
  {
    v15 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithFD", 217, 102, v15, "fstat");
    return 0xFFFFFFFFLL;
  }

  if (a1)
  {
    memset_s(a1, 0x48uLL, 0, 0x48uLL);
    v10 = *a1 & 0x80 | a4 & 0x7F;
    *a1 = v10;
    if (a4)
    {
      *(a1 + 1) = v18.st_uid;
      if ((a4 & 2) == 0)
      {
LABEL_5:
        if ((a4 & 8) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_35;
      }
    }

    else if ((a4 & 2) == 0)
    {
      goto LABEL_5;
    }

    *(a1 + 2) = v18.st_gid;
    if ((a4 & 8) == 0)
    {
LABEL_6:
      if ((a4 & 4) == 0)
      {
LABEL_8:
        if ((a4 & 0x30) != 0)
        {
          v17[1] = 0;
          v17[2] = 0;
          memset(v19, 0, sizeof(v19));
          v17[0] = 0x220000000005;
          if (!fgetattrlist(a5, v17, v19, 0x40uLL, 1u) && LODWORD(v19[0]) == 36)
          {
            *(a1 + 40) = *(v19 + 4);
            *(a1 + 24) = *(&v19[1] + 4);
          }

          v10 = *a1;
        }

        if ((v10 & 0x40) != 0)
        {
          *(a1 + 56) = v18.st_mtimespec;
        }

        goto LABEL_15;
      }

LABEL_7:
      *(a1 + 3) = v18.st_flags;
      goto LABEL_8;
    }

LABEL_35:
    *(a1 + 4) = v18.st_mode & 0xFFF;
    if ((a4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  if (a2)
  {
    memset_s(a2, 0x38uLL, 0, 0x38uLL);
    *a2 = (a4 >> 7) & 0xF | *a2 & 0xF0;
    st_mode = v18.st_mode;
    v12 = v18.st_mode & 0xF000;
    if (v12 == 0x8000)
    {
      if (((a4 >> 7) & 2) == 0 && (a4 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      *&v19[0] = 0;
      v16 = 0;
      LODWORD(v17[0]) = 0;
      if ((ParallelCompressionAFSCGetMetadataFD(a5, v19, v17, &v16) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithFD", 277, 102, 0, "querying AFSC metadata");
        return 0xFFFFFFFFLL;
      }

      v13 = v16;
      *(a2 + 2) = v17[0];
      *(a2 + 3) = v13;
      st_mode = v18.st_mode;
      v12 = v18.st_mode & 0xF000;
    }

    if (v12 != 0x8000 && v12 != 0x4000)
    {
LABEL_25:
      if ((st_mode & 0xF000) == 0x8000 && (*a2 & 8) != 0)
      {
        *(a2 + 1) = getFileProtectionClassFD(a5);
      }

      goto LABEL_28;
    }

LABEL_23:
    if ((*a2 & 4) != 0)
    {
      *(a2 + 2) = getFileAPFSInternalFlagsFD();
      st_mode = v18.st_mode;
    }

    goto LABEL_25;
  }

LABEL_28:
  if (!a3 || (v18.st_mode & 0xF000) != 0x8000 || (aaEntryHashesInitWithFD(a3, a4, a5) & 0x80000000) == 0)
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAUtils.c", "aaEntryAttributesInitWithFD", 290, 102, 0, "computing file digests");
  return 0xFFFFFFFFLL;
}