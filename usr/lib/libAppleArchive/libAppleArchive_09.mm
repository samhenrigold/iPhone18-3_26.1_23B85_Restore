uint64_t stateCollectorStreamWriteBlob(void *a1, int a2, void *__src, rsize_t __smax)
{
  v7 = a1[3];
  v8 = *&a2 & 0xFFFFFFLL;
  if (v7)
  {
    v9 = v8 == 4408665;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

  if (a1[2] < __smax)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteBlob", 345, 27, 0, "invalid blob size");
    return 0xFFFFFFFFLL;
  }

  v14 = *v7 + __smax;
  if (__CFADD__(*v7, __smax) || (v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_69;
  }

  v15 = v7[1];
  if (v15 < v14)
  {
    do
    {
      while (!v15)
      {
        v15 = 0x4000;
        if (v14 <= 0x4000)
        {
          v15 = 0x4000;
          goto LABEL_49;
        }
      }

      v16 = v15 >> 1;
      if ((v15 & (v15 >> 1)) != 0)
      {
        v16 = v15 & (v15 >> 1);
      }

      v15 += v16;
    }

    while (v15 < v14);
    if (v15 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_68;
    }

LABEL_49:
    v23 = v7[2];
    v24 = realloc(v23, v15);
    if (v24)
    {
      v7[1] = v15;
      v7[2] = v24;
      goto LABEL_51;
    }

    free(v23);
LABEL_68:
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    goto LABEL_69;
  }

LABEL_51:
  v25 = v7[2];
  if (__src)
  {
    memcpy((v25 + *v7), __src, __smax);
  }

  else if (v25)
  {
    memset_s((v25 + *v7), __smax, 0, __smax);
  }

  *v7 += __smax;
  if ((__smax & 0x8000000000000000) != 0)
  {
LABEL_69:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteBlob", 346, 27, 0, "blob append");
    return 0xFFFFFFFFLL;
  }

  a1[2] -= __smax;
LABEL_5:
  v10 = a1[5];
  if (v10)
  {
    v11 = v8 == 5521752;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    if (a1[4] >= __smax)
    {
      v17 = *v10 + __smax;
      if (!__CFADD__(*v10, __smax) && (v17 & 0x8000000000000000) == 0)
      {
        v18 = v10[1];
        if (v18 >= v17)
        {
LABEL_61:
          v28 = v10[2];
          if (__src)
          {
            memcpy((v28 + *v10), __src, __smax);
          }

          else if (v28)
          {
            memset_s((v28 + *v10), __smax, 0, __smax);
          }

          *v10 += __smax;
          if ((__smax & 0x8000000000000000) == 0)
          {
            a1[4] -= __smax;
            goto LABEL_9;
          }
        }

        else
        {
          do
          {
            while (!v18)
            {
              v18 = 0x4000;
              if (v17 <= 0x4000)
              {
                v18 = 0x4000;
                goto LABEL_59;
              }
            }

            v19 = v18 >> 1;
            if ((v18 & (v18 >> 1)) != 0)
            {
              v19 = v18 & (v18 >> 1);
            }

            v18 += v19;
          }

          while (v18 < v17);
          if (v18 >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_81;
          }

LABEL_59:
          v26 = v10[2];
          v27 = realloc(v26, v18);
          if (v27)
          {
            v10[1] = v18;
            v10[2] = v27;
            goto LABEL_61;
          }

          free(v26);
LABEL_81:
          v10[1] = 0;
          v10[2] = 0;
          *v10 = 0;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteBlob", 352, 27, 0, "blob append");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteBlob", 351, 27, 0, "invalid blob size");
    }

    return 0xFFFFFFFFLL;
  }

LABEL_9:
  result = 0;
  v13 = a1[7];
  if (v13 && v8 == 4997953)
  {
    if (a1[6] >= __smax)
    {
      v20 = *v13 + __smax;
      if (!__CFADD__(*v13, __smax) && (v20 & 0x8000000000000000) == 0)
      {
        v21 = v13[1];
        if (v21 >= v20)
        {
LABEL_74:
          v31 = v13[2];
          if (__src)
          {
            memcpy((v31 + *v13), __src, __smax);
          }

          else if (v31)
          {
            memset_s((v31 + *v13), __smax, 0, __smax);
          }

          *v13 += __smax;
          if ((__smax & 0x8000000000000000) == 0)
          {
            result = 0;
            a1[6] -= __smax;
            return result;
          }
        }

        else
        {
          do
          {
            while (!v21)
            {
              v21 = 0x4000;
              if (v20 <= 0x4000)
              {
                v21 = 0x4000;
                goto LABEL_72;
              }
            }

            v22 = v21 >> 1;
            if ((v21 & (v21 >> 1)) != 0)
            {
              v22 = v21 & (v21 >> 1);
            }

            v21 += v22;
          }

          while (v21 < v20);
          if (v21 >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_84;
          }

LABEL_72:
          v29 = v13[2];
          v30 = realloc(v29, v21);
          if (v30)
          {
            v13[1] = v21;
            v13[2] = v30;
            goto LABEL_74;
          }

          free(v29);
LABEL_84:
          v13[1] = 0;
          v13[2] = 0;
          *v13 = 0;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteBlob", 358, 27, 0, "blob append");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteBlob", 357, 27, 0, "invalid blob size");
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t entryVectorCmp(_DWORD *a1, _DWORD *a2)
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

uint64_t entryIndexCmpHLC(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 992 * *a2 + 136);
  v4 = *(a1 + 992 * *a3 + 136);
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v4 < v3;
  }
}

uint64_t computePatchesWorkerProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v81 = *MEMORY[0x29EDCA608];
  v9 = *v8;
  bzero(v80, 0x400uLL);
  memset(v79, 0, sizeof(v79));
  memset(v78, 0, sizeof(v78));
  v75 = 0;
  st_size = 0;
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  *v68 = 0u;
  *v69 = 0u;
  v10 = v8[1];
  if (v10 >= *(v9 + 72))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 510, 27, 0, "invalid entry");
    goto LABEL_54;
  }

  v11 = (*(v9 + 80) + 992 * v10);
  v63 = v8;
  __s = (*(*(v9 + 32) + 32) + *(*(*(v9 + 32) + 8) + 16 * *v11));
  v62 = *(v9 + 56);
  if (v62)
  {
    v12 = 0;
    v60 = *(v9 + 80) + 992 * v10;
    v61 = v11 + 68;
    while (1)
    {
      v13 = v8[1];
      *&offset[0] = 0;
      *&size.st_dev = 0;
      EntryHeader = stateLoadEntryHeader(v9, v12, v13);
      v15 = EntryHeader;
      if (!EntryHeader)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateLoadEntryBlob", 728, 27, 0, "loading entry header");
        goto LABEL_52;
      }

      v16.ikey = 5521732;
      KeyIndex = AAHeaderGetKeyIndex(EntryHeader, v16);
      if ((KeyIndex & 0x80000000) != 0 || ((FieldBlob = AAHeaderGetFieldBlob(v15, KeyIndex, &size, offset), FieldBlob <= 1) ? (v19 = 1) : (v19 = FieldBlob), v19 <= 0))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateLoadEntryBlob", 729, 27, 0, "blob not found");
        goto LABEL_52;
      }

      if (*&size.st_dev >= 0x2000000001uLL)
      {
        break;
      }

      v20 = malloc(*&size.st_dev);
      if (!v20)
      {
        v42 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateLoadEntryBlob", 732, 27, *v42, "malloc");
        goto LABEL_53;
      }

      v21 = *(*(v9 + 80) + 992 * v13 + 72 * v12 + 296);
      header = v15;
      EncodedSize = AAHeaderGetEncodedSize(v15);
      v23 = *&size.st_dev;
      if (*&size.st_dev)
      {
        v24 = 0;
        v66 = EncodedSize + *&offset[0] + v21;
        while (1)
        {
          v25 = v23 - v24 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v23 - v24;
          v26 = *(*(v9 + 8) + 8 * v12 + 24);
          if (!v26[4])
          {
            break;
          }

          if (v23 == v24)
          {
            v27 = 0;
          }

          else
          {
            v27 = 0;
            v28 = &v20[v24];
            v29 = v66 + v24;
            v30 = v25;
            while (1)
            {
              v31 = (v26[4])(*v26, v28, v30, v29);
              if (v31 < 0)
              {
                break;
              }

              if (v31)
              {
                v28 += v31;
                v27 += v31;
                v29 += v31;
                v30 -= v31;
                if (v30)
                {
                  continue;
                }
              }

              goto LABEL_26;
            }

            v27 = v31;
          }

LABEL_26:
          if (v27 != v25)
          {
            break;
          }

          v24 += v25;
          v23 = *&size.st_dev;
          if (v24 >= *&size.st_dev)
          {
            goto LABEL_28;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateLoadEntryBlob", 742, 27, 0, "loading entry blob");
        v15 = header;
        goto LABEL_53;
      }

LABEL_28:
      AAHeaderDestroy(header);
      *(v78 + v12) = v20;
      v32 = *&size.st_dev;
      *(v79 + v12) = *&size.st_dev;
      if (v32 != *&v61[18 * v12 + 4])
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 517, 27, 0, "size mismatch: %s");
        goto LABEL_54;
      }

      ++v12;
      v11 = v60;
      v8 = v63;
      if (v12 >= *(v9 + 56))
      {
        goto LABEL_30;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateLoadEntryBlob", 730, 27, 0, "blob too large");
LABEL_52:
    v20 = 0;
LABEL_53:
    AAHeaderDestroy(v15);
    free(v20);
    *(v78 + v12) = 0;
    *(v79 + v12) = 0;
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 516, 27, 0, "loading file contents: %s");
    goto LABEL_54;
  }

LABEL_30:
  v33 = v62 - 1;
  if ((**(v9 + 8) & 4) == 0 || (v34 = strrchr(__s, 46)) == 0 || strcasecmp(v34, ".dmg"))
  {
LABEL_33:
    v35 = 1;
    HIDWORD(v74) = 1;
    v36 = *(v78 + v33);
    *&v71 = *(v9 + 48);
    *(&v71 + 1) = v78;
    *&v72 = v79;
    *(&v72 + 1) = v36;
    *&v73 = *(v79 + v33);
    LODWORD(v74) = 2 * (*(*v8 + 16) != 0);
    if ((BXDiff5(&v71, &v75, &st_size) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 587, 27, 0, "BXDiff5", v59);
      goto LABEL_54;
    }

    goto LABEL_34;
  }

  if (snprintf(v80, 0x400uLL, "%s/0x%08zx", (v9 + 92), v8[1]) >= 0x400)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 526, 27, 0, "patch path: %s");
    goto LABEL_54;
  }

  v43 = v11;
  v44 = strlen(v80);
  v45 = v44 + 1;
  if (v44 + 1 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_73:
    v69[1] = 0;
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 528, 27, 0, "aaStrdup", v59);
    goto LABEL_54;
  }

  v46 = malloc(v44 + 1);
  if (!v46)
  {
    goto LABEL_73;
  }

  v47 = v46;
  memcpy(v46, v80, v45);
  v69[1] = v47;
  v48 = *(v9 + 56);
  if (v48 >= 0x400000001)
  {
    *__error() = 12;
    v68[1] = 0;
LABEL_86:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 532, 27, 0, "aaCalloc", v59);
    goto LABEL_54;
  }

  v49 = calloc(v48, 8uLL);
  v68[1] = v49;
  if (!v49)
  {
    goto LABEL_86;
  }

  if (*(v9 + 56))
  {
    v50 = v49;
    v51 = 0;
    while (1)
    {
      snprintf(v80, 0x400uLL, "%s-%zd.dmg", v47, v51);
      v52 = strlen(v80);
      v53 = v52 + 1;
      if (v52 + 1 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_94:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 540, 27, 0, "aaStrdup", v59);
        goto LABEL_54;
      }

      v54 = malloc(v52 + 1);
      if (!v54)
      {
        goto LABEL_94;
      }

      v55 = v54;
      memcpy(v54, v80, v53);
      v56 = v51 >= *(v9 + 56) - 1 ? v69 : v50;
      *v56 = v55;
      if ((storeFileContents(v80, *(v78 + v51), *(v79 + v51)) & 0x80000000) != 0)
      {
        break;
      }

      ++v51;
      v57 = *(v9 + 56);
      ++v50;
      if (v51 >= v57)
      {
        v58 = v57 - 1;
        goto LABEL_88;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 547, 27, 0, "storeFileContents %s");
    goto LABEL_54;
  }

  v58 = -1;
LABEL_88:
  v68[0] = v58;
  LODWORD(v70) = 1;
  DWORD2(v70) = 1;
  saveThreadErrorContext(offset);
  v11 = v43;
  if (RawImageDiff(v68))
  {
    unlink(v69[1]);
    v8 = v63;
    if ((**(v9 + 8) & 8) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 574, 27, 0, "RawImageDiff", v59);
      goto LABEL_54;
    }

    restoreThreadErrorContext(offset);
    goto LABEL_33;
  }

  memset(&size, 0, sizeof(size));
  if (stat(v69[1], &size))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 564, 27, 0, "stat", v59);
    goto LABEL_54;
  }

  v35 = 0;
  st_size = size.st_size;
  v8 = v63;
LABEL_34:
  CompressedSize = ParallelCompressionGetCompressedSize(*(v78 + v33), *(v79 + v33), 1);
  if (CompressedSize <= 0)
  {
    CompressedSize = *(v79 + v33);
  }

  v38 = st_size;
  if (CompressedSize >= st_size)
  {
    if ((v35 & 1) == 0)
    {
      free(*(v11 + 7));
      memset_s(v11 + 10, 0x18uLL, 0, 0x18uLL);
      v39 = 0;
      *(v11 + 2) = st_size;
      v11[8] = 1;
      goto LABEL_55;
    }

    if (st_size < *(*(v9 + 8) + 120))
    {
      *(v11 + 3) = v75;
      v75 = 0;
LABEL_69:
      v39 = 0;
      *(v11 + 2) = v38;
      goto LABEL_55;
    }

    if (snprintf(v80, 0x400uLL, "%s/0x%08zx", (v9 + 92), v8[1]) >= 0x400)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 614, 27, 0, "patch path: %s");
      goto LABEL_54;
    }

    if ((storeFileContents(v80, v75, st_size) & 0x80000000) == 0)
    {
      v38 = st_size;
      goto LABEL_69;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "computePatchesWorkerProc", 615, 27, 0, "storing patch: %s");
LABEL_54:
    v39 = 0xFFFFFFFFLL;
    goto LABEL_55;
  }

  v11[2] = 3;
  if (*(v9 + 24) >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "ARCHIVE (smaller than patch): %s\n", __s);
  }

  v39 = 0;
LABEL_55:
  if (*(v9 + 56))
  {
    v40 = 0;
    do
    {
      free(*(v78 + v40));
      if (v68[1])
      {
        free(*(v68[1] + v40));
      }

      ++v40;
    }

    while (v40 < *(v9 + 56));
  }

  free(v68[1]);
  free(v69[0]);
  free(v69[1]);
  free(v75);
  return v39;
}

AAHeader stateLoadEntryHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 80) + 992 * a3 + 72 * a2 + 296);
  v6 = malloc(0x10000uLL);
  v7 = v6;
  if (v6)
  {
    v8 = *(*(a1 + 8) + 8 * a2 + 24);
    if (*(v8 + 32))
    {
      v9 = 0;
      v10 = 6;
      v11 = v6;
      v12 = v5;
      while (1)
      {
        v13 = (*(v8 + 32))(*v8, v11, v10, v12);
        if (v13 < 0)
        {
          break;
        }

        if (v13)
        {
          v11 += v13;
          v9 += v13;
          v12 += v13;
          v10 -= v13;
          if (v10)
          {
            continue;
          }
        }

        if (v9 != 6)
        {
          break;
        }

        if (*v7 != 826360153 && *v7 != 825246017)
        {
          v14 = "invalid header magic";
          v15 = 706;
          goto LABEL_12;
        }

        v19 = *(*(a1 + 8) + 8 * a2 + 24);
        if (!v19[4])
        {
          goto LABEL_28;
        }

        v20 = *(v7 + 2);
        if (*(v7 + 2))
        {
          v21 = 0;
          v22 = v7;
          v23 = *(v7 + 2);
          while (1)
          {
            v24 = (v19[4])(*v19, v22, v23, v5);
            if (v24 < 0)
            {
              break;
            }

            if (v24)
            {
              v22 += v24;
              v21 += v24;
              v5 += v24;
              v23 -= v24;
              if (v23)
              {
                continue;
              }
            }

            goto LABEL_25;
          }

          v21 = v24;
        }

        else
        {
          v21 = 0;
        }

LABEL_25:
        if (v21 == v20)
        {
          v25 = AAHeaderCreateWithEncodedData(v20, v7);
          if (v25)
          {
            v17 = v25;
            free(v7);
            return v17;
          }

          v14 = "invalid header";
          v15 = 711;
        }

        else
        {
LABEL_28:
          v14 = "reading header";
          v15 = 708;
        }

        goto LABEL_12;
      }
    }

    v14 = "reading header magic";
    v15 = 705;
LABEL_12:
    v16 = 0;
  }

  else
  {
    v16 = *__error();
    v14 = "malloc";
    v15 = 702;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateLoadEntryHeader", v15, 27, v16, v14);
  free(v7);
  AAHeaderDestroy(0);
  return 0;
}

void *subArchiveCreate(unint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = malloc(0x28uLL);
  v9 = v8;
  if (v8)
  {
    memset_s(v8, 0x28uLL, 0, 0x28uLL);
    *v9 = a2;
    *(v9 + 1) = a3;
    *(v9 + 4) = a4;
    v10 = AATempStreamOpen(a1);
    *(v9 + 3) = v10;
    if (!v10)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "subArchiveCreate", 166, 27, 0, "AATempStreamOpen");
      goto LABEL_8;
    }

    if (*v9)
    {
      v11 = AACompressionOutputStreamOpen(v10, *v9, *(v9 + 1), 0, *(v9 + 4));
      *(v9 + 4) = v11;
      if (!v11)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "subArchiveCreate", 170, 27, 0, "AACompressionOutputStreamOpen");
LABEL_8:
        AAByteStreamClose(*(v9 + 4));
        AAByteStreamClose(*(v9 + 3));
        free(v9);
        return 0;
      }
    }
  }

  else
  {
    v12 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "subArchiveCreate", 160, 27, *v12, "malloc");
  }

  return v9;
}

uint64_t encodeEntry(uint64_t a1, unsigned int a2, const char *a3)
{
  v6 = AAHeaderCreate();
  v7 = v6;
  if (!v6)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "encodeEntry", 469, 27, 0, "AAHeaderCreate");
LABEL_18:
    v18 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  v8.ikey = 5265748;
  v9 = AAHeaderSetFieldUInt(v6, 0xFFFFFFFF, v8, a2);
  v10 = strlen(a3);
  v11.ikey = 5521744;
  if (AAHeaderSetFieldString(v7, 0xFFFFFFFF, v11, a3, v10) < 0 || v9 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "encodeEntry", 474, 27, 0, "setup header");
    goto LABEL_18;
  }

  EncodedSize = AAHeaderGetEncodedSize(v7);
  EncodedData = AAHeaderGetEncodedData(v7);
  if (*(a1 + 24))
  {
    if (EncodedSize)
    {
      v14 = EncodedData;
      v15 = 0;
      v16 = EncodedSize;
      while (1)
      {
        v17 = (*(a1 + 24))(*a1, v14, v16);
        if (v17 < 1)
        {
          break;
        }

        v14 += v17;
        v15 += v17;
        v16 -= v17;
        if (!v16)
        {
          goto LABEL_15;
        }
      }

      v15 = v17;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = -1;
  }

LABEL_15:
  if (v15 != EncodedSize)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "encodeEntry", 478, 27, 0, "write header");
    goto LABEL_18;
  }

  v18 = 0;
LABEL_19:
  AAHeaderDestroy(v7);
  return v18;
}

uint64_t encodeYOPEntry(AAByteStream_impl *a1, unsigned int a2, const char *a3, const char *a4, AAByteStream s)
{
  if (s)
  {
    v10 = AAByteStreamSeek(s, 0, 2);
    if (v10 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "encodeYOPEntry", 417, 27, 0, "seek dat stream");
      v11 = 0;
LABEL_36:
      v29 = 0xFFFFFFFFLL;
      goto LABEL_37;
    }
  }

  else
  {
    v10 = -1;
  }

  v12 = AAHeaderCreate();
  v11 = v12;
  if (!v12)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "encodeYOPEntry", 422, 27, 0, "AAHeaderCreate");
    goto LABEL_36;
  }

  v13.ikey = 5265748;
  v14 = AAHeaderSetFieldUInt(v12, 0xFFFFFFFF, v13, 0x4DuLL);
  v15.ikey = 5263193;
  v16 = (AAHeaderSetFieldUInt(v11, 0xFFFFFFFF, v15, a2) | v14) >= 0;
  if (a3)
  {
    v17 = strlen(a3);
    v18.ikey = 5521744;
    if (AAHeaderSetFieldString(v11, 0xFFFFFFFF, v18, a3, v17) < 0)
    {
      v16 = 0;
    }
  }

  if (a4)
  {
    v19 = strlen(a4);
    v20.ikey = 4997708;
    if (AAHeaderSetFieldString(v11, 0xFFFFFFFF, v20, a4, v19) < 0)
    {
      v16 = 0;
    }
  }

  if (v10 != -1 && (v21.ikey = 5521732, AAHeaderSetFieldBlob(v11, 0xFFFFFFFF, v21, v10) < 0) || !v16)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "encodeYOPEntry", 428, 27, 0, "setup header");
    goto LABEL_36;
  }

  EncodedSize = AAHeaderGetEncodedSize(v11);
  EncodedData = AAHeaderGetEncodedData(v11);
  if (*(a1 + 3))
  {
    if (EncodedSize)
    {
      v24 = EncodedData;
      v25 = 0;
      v26 = EncodedSize;
      while (1)
      {
        v27 = (*(a1 + 3))(*a1, v24, v26);
        if (v27 < 1)
        {
          break;
        }

        v24 += v27;
        v25 += v27;
        v26 -= v27;
        if (!v26)
        {
          goto LABEL_26;
        }
      }

      v25 = v27;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = -1;
  }

LABEL_26:
  if (v25 != EncodedSize)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "encodeYOPEntry", 432, 27, 0, "write header");
    goto LABEL_36;
  }

  if (v10 != -1)
  {
    if (!s)
    {
      goto LABEL_34;
    }

    if (AAByteStreamSeek(s, 0, 0) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "encodeYOPEntry", 438, 27, 0, "seek dat stream");
      goto LABEL_36;
    }

    v28 = AAByteStreamProcess(s, a1);
    if (v28 < 0 || v28 != v10)
    {
LABEL_34:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "encodeYOPEntry", 441, 27, 0, "write blob");
      goto LABEL_36;
    }
  }

  v29 = 0;
LABEL_37:
  AAHeaderDestroy(v11);
  return v29;
}

void subArchiveDestroy(AAByteStream *a1)
{
  if (a1)
  {
    AAByteStreamClose(a1[4]);
    AAByteStreamClose(a1[3]);

    free(a1);
  }
}

uint64_t aaEntryYECBlobInitWithEncodedData(void *a1, void *__src, rsize_t __smax)
{
  *a1 = 0;
  if ((__smax & 0x8000000000000000) != 0)
  {
LABEL_21:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithEncodedData", 22, 105, 0, "malloc");
    return 0xFFFFFFFFLL;
  }

  v6 = a1[1];
  if (v6 < __smax)
  {
    do
    {
      while (!v6)
      {
        v6 = 0x4000;
        if (__smax <= 0x4000)
        {
          v6 = 0x4000;
          goto LABEL_12;
        }
      }

      v7 = v6 >> 1;
      if ((v6 & (v6 >> 1)) != 0)
      {
        v7 = v6 & (v6 >> 1);
      }

      v6 += v7;
    }

    while (v6 < __smax);
    if (v6 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_20;
    }

LABEL_12:
    v8 = a1[2];
    v9 = realloc(v8, v6);
    if (v9)
    {
      a1[1] = v6;
      a1[2] = v9;
      goto LABEL_14;
    }

    free(v8);
LABEL_20:
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    goto LABEL_21;
  }

LABEL_14:
  v10 = a1[2];
  if (__src)
  {
    memcpy((v10 + *a1), __src, __smax);
  }

  else if (v10)
  {
    memset_s((v10 + *a1), __smax, 0, __smax);
  }

  result = 0;
  *a1 += __smax;
  return result;
}

uint64_t aaEntryYECBlobInitWithPath(void *a1, int a2, char *a3, const char *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if ((concatPath(v11, 0x800uLL, a3, a4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithPath", 34, 105, 0, "invalid path %s/%s");
    return 0xFFFFFFFFLL;
  }

  v6 = open(v11, 0);
  if (v6 < 0)
  {
    v9 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithPath", 38, 105, v9, "open: %s");
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if ((aaEntryYECBlobInitWithFD(a1, a2, v6) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithPath", 40, 105, 0, "computing YEC blob: %s", v11);
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  close(v7);
  return v8;
}

uint64_t aaEntryYECBlobInitWithFD(void *a1, int a2, int a3)
{
  if (a2 == 65552)
  {
    memset(&v21, 0, sizeof(v21));
    if (!fstat(a3, &v21) && (v21.st_mode & 0xF000) == 0x8000)
    {
      st_size = v21.st_size;
      v6 = IFileStreamCreateWithFD(a3, 0, v21.st_size);
      if (v6)
      {
        v7 = OECCStreamCreate(1, 0x4000u, st_size);
        if (v7)
        {
          v8 = MemBufferCreate(0x10000uLL);
          v9 = v8;
          if (v8)
          {
            v10 = MemBufferTransmit(v8, st_size, IFileStreamRead, v6, OECCStreamWrite, v7);
            if ((v10 & 0x8000000000000000) == 0 && v10 == st_size)
            {
              DataSize = OECCStreamGetDataSize(v7);
              DataPtr = OECCStreamGetDataPtr(v7);
              *a1 = 0;
              if ((DataSize & 0x8000000000000000) != 0)
              {
LABEL_41:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 89, 105, 0, "alloc blob failed");
                return 0xFFFFFFFFLL;
              }

              v13 = DataPtr;
              v14 = a1[1];
              if (v14 < DataSize)
              {
                do
                {
                  while (!v14)
                  {
                    v14 = 0x4000;
                    if (DataSize <= 0x4000)
                    {
                      v14 = 0x4000;
                      goto LABEL_32;
                    }
                  }

                  v15 = v14 >> 1;
                  if ((v14 & (v14 >> 1)) != 0)
                  {
                    v15 = v14 & (v14 >> 1);
                  }

                  v14 += v15;
                }

                while (v14 < DataSize);
                if (v14 >= 0x2000000001)
                {
                  *__error() = 12;
                  goto LABEL_40;
                }

LABEL_32:
                v18 = a1[2];
                v19 = realloc(v18, v14);
                if (v19)
                {
                  a1[1] = v14;
                  a1[2] = v19;
                  goto LABEL_34;
                }

                free(v18);
LABEL_40:
                a1[1] = 0;
                a1[2] = 0;
                *a1 = 0;
                goto LABEL_41;
              }

LABEL_34:
              v20 = a1[2];
              if (v13)
              {
                memcpy((v20 + *a1), v13, DataSize);
              }

              else if (v20)
              {
                memset_s((v20 + *a1), DataSize, 0, DataSize);
              }

              v16 = 0;
              *a1 += DataSize;
LABEL_22:
              IFileStreamDestroy(v6);
              OECCStreamDestroy(v7);
              MemBufferDestroy(v9);
              return v16;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 84, 105, 0, "reading file data for ECC");
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 80, 105, 0, "allocating mem buffer");
          }

LABEL_21:
          v16 = 0xFFFFFFFFLL;
          goto LABEL_22;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 78, 105, 0, "creating the ECC stream");
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 76, 105, 0, "opening file");
        v7 = 0;
      }

      v9 = 0;
      goto LABEL_21;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 71, 105, 0, "entry not found, or not a regular file");
    v7 = 0;
    v9 = 0;
    v6 = 0;
    goto LABEL_21;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 57, 105, 0, "invalid YEC variant: %u");
  return 0xFFFFFFFFLL;
}

void *AAEntryYECBlobCreate()
{
  v0 = malloc(0x18uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x18uLL, 0, 0x18uLL);
  }

  else
  {
    v2 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobCreate", 105, 105, *v2, "malloc");
  }

  return v1;
}

void AAEntryYECBlobDestroy(void **a1)
{
  if (a1)
  {
    free(a1[2]);
    memset_s(a1, 0x18uLL, 0, 0x18uLL);

    free(a1);
  }
}

void **AAEntryYECBlobCreateWithEncodedData(void *a1, rsize_t a2)
{
  v4 = AAEntryYECBlobCreate();
  v5 = v4;
  if (v4 && (aaEntryYECBlobInitWithEncodedData(v4, a1, a2) & 0x80000000) != 0)
  {
    AAEntryYECBlobDestroy(v5);
    return 0;
  }

  return v5;
}

void **AAEntryYECBlobCreateWithPath(int a1, char *a2, const char *a3)
{
  v6 = AAEntryYECBlobCreate();
  v7 = v6;
  if (v6 && (aaEntryYECBlobInitWithPath(v6, a1, a2, a3) & 0x80000000) != 0)
  {
    AAEntryYECBlobDestroy(v7);
    return 0;
  }

  return v7;
}

uint64_t AAEntryYECBlobApplyToPath(unint64_t *a1, char *__s, const char *a3, int *a4, uint64_t a5, int a6)
{
  v27 = *MEMORY[0x29EDCA608];
  memset(&v25, 0, sizeof(v25));
  __sa[0] = 0;
  __sa[1] = 0;
  v24 = 0;
  if ((concatPath(v26, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    v21 = __s;
    v22 = a3;
    v17 = "invalid path %s/%s";
    v18 = 153;
    goto LABEL_12;
  }

  if (lstat(v26, &v25) || (v25.st_mode & 0xF000) != 0x8000)
  {
    v21 = v26;
    v17 = "entry not found, or not a regular file: %s";
    v18 = 156;
LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", v18, 105, 0, v17, v21, v22);
    goto LABEL_13;
  }

  st_size = v25.st_size;
  memset_s(__sa, 0x18uLL, 0, 0x18uLL);
  HIDWORD(__sa[0]) = a6;
  v12 = open(v26, 2);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = v12;
    v14 = ParallelArchiveECCFixFileSegment(v12, 0, st_size, a1[2], *a1, __sa);
    v15 = HIDWORD(v24);
    if (v14 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", 166, 105, 0, "file can't be fixed: %s");
    }

    else
    {
      if (!v14 || !statIsCompressed(v25.st_flags) || (ParallelCompressionAFSCCompress(v26, 1) & 0x80000000) == 0)
      {
        v16 = 0;
        goto LABEL_19;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", 171, 105, 0, "file can't be re-compressed: %s");
    }

    v16 = 0xFFFFFFFFLL;
LABEL_19:
    close(v13);
    if (!a4)
    {
      return v16;
    }

    goto LABEL_14;
  }

  v20 = *__error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", 163, 105, v20, "opening file RW: %s");
LABEL_13:
  v16 = 0xFFFFFFFFLL;
  v15 = -1;
  if (a4)
  {
LABEL_14:
    *a4 = v15;
  }

  return v16;
}

AAArchiveStream AAEncodeArchiveOutputStreamOpen(AAByteStream stream, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v10 = malloc(0x38uLL);
  v11 = v10;
  if (v10)
  {
    memset_s(v10, 0x38uLL, 0, 0x38uLL);
  }

  v12 = malloc(0x478uLL);
  v13 = v12;
  if (!v12 || (memset_s(v12, 0x478uLL, 0, 0x478uLL), !v11))
  {
    v16 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "AAEncodeArchiveOutputStreamOpen", 246, 99, *v16, "malloc");
LABEL_10:
    encoderStreamClose(v13);
    free(v11);
    return 0;
  }

  *v13 = flags;
  if (!n_threads)
  {
    n_threads = getDefaultNThreads();
  }

  *(v13 + 8) = n_threads;
  *(v13 + 16) = stream;
  *(v13 + 80) = msg_data;
  *(v13 + 88) = msg_proc;
  RealTime = getRealTime();
  *(v13 + 24) = xmmword_296AD1FB0;
  *(v13 + 1136) = RealTime;
  v15 = malloc(0x40000uLL);
  *(v13 + 40) = v15;
  if (!v15)
  {
    v18 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "AAEncodeArchiveOutputStreamOpen", 260, 99, *v18, "malloc");
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    goto LABEL_10;
  }

  v11[2] = encoderStreamAbort;
  *v11 = v13;
  v11[1] = encoderStreamClose;
  v11[3] = encoderStreamWriteHeader;
  v11[4] = encoderStreamWriteBlob;
  return v11;
}

uint64_t encoderStreamClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if ((flushOBuf(result) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamClose", 98, 99, 0, "flushing buffer");
      v3 = 0;
    }

    else
    {
      v3 = 1;
    }

    if (*(v1 + 32))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamClose", 99, 99, 0, "bytes remaining in obuf");
      v3 = 0;
    }

    if (*(v1 + 72))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamClose", 100, 99, 0, "truncated entry when encoder destroyed");
      v3 = 0;
    }

    free(*(v1 + 56));
    memset_s((v1 + 48), 0x10uLL, 0, 0x10uLL);
    free(*(v1 + 40));
    if (v3 && v2 >> 62)
    {
      v4 = getRealTime() - *(v1 + 1136);
      v5 = MEMORY[0x29EDCA610];
      fwrite("Encode archive\n", 0xFuLL, 1uLL, *MEMORY[0x29EDCA610]);
      fprintf(*v5, "%12u entries in archive\n", *(v1 + 1128));
      fprintf(*v5, "%12llu bytes in archive (uncompressed)\n", *(v1 + 1120));
      fprintf(*v5, "%12.0f MB/s\n", *(v1 + 1120) * 0.000000953674316 / v4);
      fprintf(*v5, "%12.2f encoding time (s)\n", v4);
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

void encoderStreamAbort(uint64_t a1)
{
  if (!*(a1 + 68))
  {
    *(a1 + 68) = 1;
    AAByteStreamCancel(*(a1 + 16));
  }
}

uint64_t encoderStreamWriteHeader(uint64_t a1, AAHeader header)
{
  if (*(a1 + 68))
  {
    return 0xFFFFFFFFLL;
  }

  v22 = v3;
  v23 = v2;
  if (*(a1 + 72))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamWriteHeader", 136, 99, 0, "truncated entry when header encoded", v5, v4, v3, v23, v6, v7);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 96) = 0;
  if (!*(header + 2))
  {
    return 0;
  }

  if (*(a1 + 88))
  {
    v12.ikey = 5521744;
    KeyIndex = AAHeaderGetKeyIndex(header, v12);
    if ((KeyIndex & 0x80000000) == 0)
    {
      FieldString = AAHeaderGetFieldString(header, KeyIndex, 0x400uLL, (a1 + 96), 0);
      v15 = FieldString <= 1 ? 1 : FieldString;
      if (v15 >= 1 && ((*(a1 + 88))(*(a1 + 80), 31, a1 + 96, 0) & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  if ((aaHeaderBlobArrayInitWithHeader(a1 + 48, header) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamWriteHeader", 159, 99, 0, "initializing blob array", v5, v4, v22, v23, v6, v7);
    return 0xFFFFFFFFLL;
  }

  if ((writeOBuf(a1, *(header + 4), *(header + 2)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamWriteHeader", 162, 99, 0, "writing header blob", v5, v4, v22, v23, v6, v7);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 64) = 0;
  v16 = *(a1 + 48);
  if (v16 && (v17 = *(a1 + 56), !*(v17 + 8)))
  {
    v19 = (v17 + 32);
    v20 = 1;
    do
    {
      v18 = v20;
      if (v16 == v20)
      {
        break;
      }

      v21 = *v19;
      v19 += 3;
      ++v20;
    }

    while (!v21);
    *(a1 + 64) = v18;
  }

  else
  {
    v18 = 0;
  }

  result = 0;
  *(a1 + 72) = v18 < v16;
  ++*(a1 + 1128);
  return result;
}

uint64_t encoderStreamWriteBlob(uint64_t a1, int a2, char *a3, size_t a4)
{
  v23[2] = *MEMORY[0x29EDCA608];
  if (!*(a1 + 68))
  {
    if (!a4)
    {
      return 0;
    }

    if (*(a1 + 72))
    {
      v7 = *(a1 + 64);
      if (v7 >= *(a1 + 48))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamWriteBlob", 190, 99, 0, "unexpected blob data received: %llu B");
      }

      else
      {
        v8 = *(a1 + 56) + 24 * v7;
        if (*v8 == a2)
        {
          if (*(v8 + 8) >= a4)
          {
            v10 = writeOBuf(a1, a3, a4);
            if (v10 < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamWriteBlob", 201, 99, 0, "writing data blob");
            }

            v11 = *(v8 + 8) - a4;
            *(v8 + 8) = v11;
            if (!v11)
            {
              v12 = *(a1 + 64);
              v13 = (v12 + 1);
              *(a1 + 64) = v13;
              v14 = *(a1 + 48);
              if (v13 < v14)
              {
                v15 = *(a1 + 56);
                if (!*(v15 + 24 * v13 + 8))
                {
                  v16 = (v15 + 24 * v13 + 32);
                  v17 = ~v13 + v14;
                  v18 = v12 + 2;
                  do
                  {
                    LODWORD(v13) = v18;
                    if (!v17)
                    {
                      break;
                    }

                    v19 = *v16;
                    v16 += 3;
                    --v17;
                    ++v18;
                  }

                  while (!v19);
                  *(a1 + 64) = v13;
                }
              }

              *(a1 + 72) = v13 < v14;
            }

            v20 = *(a1 + 88);
            if (v20)
            {
              v21 = (a2 & 0xFFFFFF) == 5521732;
            }

            else
            {
              v21 = 0;
            }

            if (!v21)
            {
              return (v10 >> 31);
            }

            if (!*(a1 + 96))
            {
              return (v10 >> 31);
            }

            v22 = *(v8 + 16) - v11;
            v23[0] = *(v8 + 16);
            v23[1] = v22;
            if ((v20(*(a1 + 80), 31, a1 + 96, v23) & 0x80000000) == 0)
            {
              return (v10 >> 31);
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamWriteBlob", 220, 99, 0, "client callback cancel");
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamWriteBlob", 193, 99, 0, "extra data received for blob %s: received %llu, expecting %llu", a4);
          }
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamWriteBlob", 192, 99, 0, "unexpected blob key: received %s, expecting %s");
        }
      }
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "encoderStreamWriteBlob", 187, 99, 0, "receiving blob data outside of entry");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t flushOBuf(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = AAByteStreamWrite(*(a1 + 16), (*(a1 + 40) + v3), v1 - v3);
    if (v4 < 1)
    {
      break;
    }

    v3 += v4;
    *(a1 + 1120) += v4;
    v1 = *(a1 + 32);
    if (v3 >= v1)
    {
      result = 0;
      *(a1 + 32) = 0;
      return result;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "flushOBuf", 54, 99, 0, "Writing to ostream failed");
  return 0xFFFFFFFFLL;
}

uint64_t writeOBuf(void *a1, char *__src, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = a1[4];
  while (1)
  {
    v7 = a1[3];
    if (v6 == v7)
    {
      break;
    }

LABEL_6:
    if (v6 + v3 <= v7)
    {
      v8 = v3;
    }

    else
    {
      v8 = v7 - v6;
    }

    memcpy((a1[5] + v6), __src, v8);
    v6 = a1[4] + v8;
    a1[4] = v6;
    __src += v8;
    v3 -= v8;
    if (!v3)
    {
      return 0;
    }
  }

  if ((flushOBuf(a1) & 0x80000000) == 0)
  {
    v7 = a1[3];
    v6 = a1[4];
    goto LABEL_6;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAEncodeArchiveOutputStream.c", "writeOBuf", 70, 99, 0, "flush output buffer failed");
  return 0xFFFFFFFFLL;
}

uint64_t forceInPlaceControls(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  if (a1 <= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a1;
  }

  v9 = ((v8 + 4095) >> 12) + 16;
  if (a5 >= 3)
  {
    fprintf(*MEMORY[0x29EDCA610], "Post-processing ctrl for in-place patching, %u pages\n", v9);
  }

  v10 = calloc(v9, 4uLL);
  v11 = calloc(v9, 4uLL);
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (a4)
    {
      v15 = 0;
      v16 = 0;
      v17 = v9;
      do
      {
        v18 = (a3 + 24 * v16);
        v19 = *v18;
        if ((*v18 & 0x8000000000000000) != 0)
        {
          v19 = 0x8000000000000000 - *v18;
        }

        v20 = v18[2];
        if (v20 < 0)
        {
          v20 = 0x8000000000000000 - v20;
        }

        v21 = v15 >> 12;
        if (v19)
        {
          v22 = ((v15 + v19 - 1) >> 12) - (v15 >> 12) + 1;
        }

        else
        {
          v22 = 0;
        }

        v23 = (v22 + v21);
        if (v23 > v21)
        {
          v24 = &v10[v21];
          v25 = v23 - v21;
          do
          {
            v17 = (__PAIR64__(v17, (*v24++)++) - 1) >> 32;
            --v25;
          }

          while (v25);
        }

        v15 += v19 + v20;
        ++v16;
      }

      while (v16 != a4);
    }

    else
    {
      v17 = v9;
    }

    if (a5 > 1)
    {
      fprintf(*MEMORY[0x29EDCA610], "After input pages retained, %u free pages\n", v17);
    }

    if (a4)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = v17;
      do
      {
        v30 = (a3 + 24 * v28);
        v31 = v30[1];
        v32 = 0x8000000000000000 - *v30;
        if ((*v30 & 0x8000000000000000) == 0)
        {
          v32 = *v30;
        }

        v33 = 0x8000000000000000 - v31;
        if (v31 >= 0)
        {
          v33 = v30[1];
        }

        v34 = v30[2];
        if (v34 < 0)
        {
          v34 = 0x8000000000000000 - v34;
        }

        if (v32)
        {
          v35 = v32 + v26;
          do
          {
            v36 = (v26 & 0xFFFFFFFFFFFFF000) + 4096;
            if (v36 >= v35)
            {
              v36 = v35;
            }

            v37 = v27 >> 12;
            v38 = v36 - v26;
            if (v36 == v26)
            {
              v39 = 0;
            }

            else
            {
              v39 = ((v27 + v38 - 1) >> 12) - v37 + 1;
            }

            v40 = v26 >> 12;
            v41 = v10[v40] - 1;
            v10[v40] = v41;
            if (!v41)
            {
              ++v17;
            }

            v42 = (v39 + v37);
            if (v42 > v37)
            {
              v43 = &v12[4 * v37];
              v44 = v42 - v37;
              do
              {
                v17 = (__PAIR64__(v17, (*v43)++) - 1) >> 32;
                v43 += 4;
                --v44;
              }

              while (v44);
            }

            v27 += v38;
            if (v17 < v29)
            {
              v29 = v17;
            }

            v26 = v36;
            v32 -= v38;
          }

          while (v32);
        }

        else
        {
          v36 = v26;
        }

        v26 = v36 + v34;
        v27 += v33;
        ++v28;
      }

      while (v28 != a4);
    }

    else
    {
      v29 = v17;
    }

    if (a5 > 2)
    {
      v45 = MEMORY[0x29EDCA610];
      fprintf(*MEMORY[0x29EDCA610], "Free pages after diff controls: %u\n", v17);
      fprintf(*v45, "Min free pages reached: %d\n", v29);
    }

    bzero(v10, 4 * v9);
    if (a4)
    {
      v46 = 0;
      v47 = 0;
      do
      {
        v48 = (a3 + 24 * v47);
        v49 = *v48;
        if ((*v48 & 0x8000000000000000) != 0)
        {
          v49 = 0x8000000000000000 - *v48;
        }

        v50 = v48[2];
        if (v50 < 0)
        {
          v50 = 0x8000000000000000 - v50;
        }

        v51 = v46 >> 12;
        if (v49)
        {
          v52 = ((v46 + v49 - 1) >> 12) - (v46 >> 12) + 1;
        }

        else
        {
          v52 = 0;
        }

        v53 = (v52 + v51);
        if (v53 > v51)
        {
          v54 = &v10[v51];
          v55 = v53 - v51;
          do
          {
            ++*v54++;
            --v55;
          }

          while (v55);
        }

        v46 += v49 + v50;
        ++v47;
      }

      while (v47 != a4);
      v77 = v12;
      v56 = v29 < 4;
      if (v29 <= 3)
      {
        v78 = a3;
        v79 = a4;
        v57 = 0;
        v58 = 0;
        v59 = vnegq_f64(0);
        v60 = MEMORY[0x29EDCA610];
        v80 = v59;
        do
        {
          v61 = (v78 + 24 * v57);
          v62 = vbslq_s8(vcltzq_s64(*v61), vsubq_s64(v59, *v61), *v61);
          v63 = v61[1].i64[0];
          if (v63 >= 0)
          {
            v64 = v61[1].i64[0];
          }

          else
          {
            v64 = 0x8000000000000000 - v63;
          }

          if (a5 >= 3)
          {
            v83 = v62;
            fprintf(*v60, "ctrl[%zu]: ndiff=%llu nlit=%llu\n", v57, v62.i64[0], v62.i64[1]);
            v62 = v83;
            v59 = v80;
          }

          v65 = v62.i64[0];
          if (v62.i64[0])
          {
            do
            {
              v66 = v62.i64[0] + v58;
              v67 = (v62.i64[0] + v58 - 1) & 0xFFFFFFFFFFFFF000;
              if (v67 <= v58)
              {
                v67 = v58;
              }

              v68 = v10[(v67 >> 12)] - 1;
              v10[(v67 >> 12)] = v68;
              if (!v68)
              {
                ++v29;
              }

              v69 = v66 - v67;
              v70 = vdupq_n_s64(v66 - v67);
              v71 = vsubq_s64(v62, v70).u64[0];
              if (a5 >= 3)
              {
                v84 = v62;
                v81 = v70;
                v82 = v71;
                fprintf(*v60, "ctrl[%zu]: moving %llu bytes from diff to lit (minFree=%d, ndiff=%llu)\n", v57, v66 - v67, v29, v71);
                v70 = v81;
                v71 = v82;
                v62 = v84;
                v59 = v80;
              }

              v72 = vaddq_s64(v62, v70);
              v62.i64[0] = v71;
              v62.i64[1] = v72.i64[1];
              v64 += v69;
              *v61 = vbslq_s8(vcltzq_s64(v62), vsubq_s64(v59, v62), v62);
              v73 = 0x8000000000000000 - v64;
              if (v64 >= 0)
              {
                v73 = v64;
              }

              v61[1].i64[0] = v73;
              v65 = v71;
            }

            while (v29 <= 3 && v71 != 0);
          }

          ++v57;
          v56 = v29 < 4;
          if (v57 >= v79)
          {
            break;
          }

          v58 += v65 + v64;
        }

        while (v29 <= 3);
      }

      v12 = v77;
      if (v56)
      {
        goto LABEL_96;
      }
    }

    else if (v29 < 4)
    {
LABEL_96:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffControls.c", "forceInPlaceControls", 264, 53, 0, "Could not reduce minFree to %d, something is wrong");
      goto LABEL_97;
    }

    v75 = 0;
    goto LABEL_100;
  }

  v14 = *__error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffControls.c", "forceInPlaceControls", 139, 53, v14, "malloc");
LABEL_97:
  v75 = 0xFFFFFFFFLL;
LABEL_100:
  free(v10);
  free(v12);
  return v75;
}

void *initDiffSegmentVector(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t reserveDiffSegmentVector(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) >= a2)
  {
    return 0;
  }

  *(a1 + 8) = a2;
  v3 = reallocf(*(a1 + 16), 24 * a2);
  *(a1 + 16) = v3;
  if (v3)
  {
    return 0;
  }

  v5 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffControls.c", "reserveDiffSegmentVector", 327, 53, *v5, "reallocf");
  return 0xFFFFFFFFLL;
}

__n128 pushDiffSegment(unint64_t *a1, __n128 *a2)
{
  if (!a2[1].n128_u64[0])
  {
    return result;
  }

  v4 = *a1;
  v5 = a1[1];
  if (*a1 < v5)
  {
LABEL_10:
    v8 = a1[2];
    *a1 = v4 + 1;
    v9 = (v8 + 24 * v4);
    result = *a2;
    v9[1].n128_u64[0] = a2[1].n128_u64[0];
    *v9 = result;
    return result;
  }

  if (v5)
  {
    v6 = v5 + (v5 >> 1);
  }

  else
  {
    v6 = 64;
  }

  if (!reserveDiffSegmentVector(a1, v6))
  {
    v4 = *a1;
    goto LABEL_10;
  }

  return result;
}

uint64_t pushControls(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (!a3)
  {
    return 0;
  }

  v8 = (a2 + 16);
  v9 = 1;
  v10 = a3;
  v11 = 1;
  do
  {
    v12 = *(v8 - 2);
    v13 = *(v8 - 1);
    if (v12 >= 0)
    {
      v14 = *(v8 - 2);
    }

    else
    {
      v14 = 0x8000000000000000 - v12;
    }

    if (v13 >= 0)
    {
      v15 = *(v8 - 1);
    }

    else
    {
      v15 = 0x8000000000000000 - v13;
    }

    if ((*v8 & 0x8000000000000000) == 0)
    {
      v16 = *v8;
    }

    else
    {
      v16 = 0x8000000000000000 - *v8;
    }

    v22.n128_u64[0] = a5;
    v22.n128_u64[1] = a4;
    v23 = v14;
    pushDiffSegment(a1, &v22);
    if (v17)
    {
      break;
    }

    v18 = v14 + a5;
    v22.n128_u64[0] = v18;
    v22.n128_u64[1] = -1;
    v23 = v15;
    pushDiffSegment(a1, &v22);
    if (v19)
    {
      break;
    }

    v8 += 3;
    a4 += v14 + v16;
    a5 = v18 + v15;
    v11 = v9++ < a3;
    --v10;
  }

  while (v10);
  return (v11 << 31 >> 31);
}

uint64_t mergeDiffSegmentVectors(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v54 = 0uLL;
  v55 = 0;
  do
  {
    v8 = &a2[3 * v7];
    v9 = *v8;
    if (!*v8)
    {
      v37 = "empty segment vector";
      v38 = 429;
LABEL_41:
      v36 = 0;
      goto LABEL_34;
    }

    v10 = (v8[2] + 16);
    do
    {
      if (v4 + 4 > v5)
      {
        v5 += 0x4000;
        v6 = reallocf(v6, 16 * v5);
        if (!v6)
        {
          v36 = *__error();
          v37 = "malloc";
          v38 = 437;
LABEL_34:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffControls.c", "mergeDiffSegmentVectors", v38, 53, v36, v37);
          goto LABEL_35;
        }
      }

      v11 = *(v10 - 2);
      if (*(v10 - 1) == -1)
      {
        v15 = *v10;
        v16 = &v6[16 * v4];
        *v16 = v11;
        v11 += v15;
        v14 = v4 + 1;
        *(v16 + 1) = 1;
        v12 = -1;
        v13 = 2;
      }

      else
      {
        v12 = 0;
        v13 = 1;
        v14 = v4;
      }

      v17 = &v6[16 * v14];
      *v17 = v11;
      v4 += v13;
      *(v17 + 2) = v12;
      *(v17 + 3) = 0;
      v10 += 3;
      --v9;
    }

    while (v9);
    ++v7;
  }

  while (v7 != a1);
  v18 = a2[2] + 24 * *a2;
  v19 = v4 + 1;
  v20 = &v6[16 * v4];
  *v20 = *(v18 - 8) + *(v18 - 24);
  *(v20 + 1) = 0;
  qsort(v6, v4 + 1, 0x10uLL, mergeDiffSegmentEventCompareProc);
  if (v4 != -1)
  {
    v40 = 0;
    v21 = 0;
    v41 = 0;
    while (1)
    {
      v42 = 0;
      v43 = *&v6[16 * v40];
      if (v19 <= v40 + 1)
      {
        v44 = v40 + 1;
      }

      else
      {
        v44 = v19;
      }

      v45 = &v6[16 * v40 + 8];
      while (*(v45 - 1) == v43)
      {
        v46 = *v45;
        v45 += 16;
        v42 += v46;
        if (v44 == ++v40)
        {
          v40 = v44;
          break;
        }
      }

      if (v42 | v41)
      {
        if (!v42)
        {
          goto LABEL_57;
        }

        if (!v41)
        {
          v49 = &v6[16 * v21];
          *v49 = v43;
          *(v49 + 2) = 1;
          ++v21;
        }

        v41 += v42;
        if (v41)
        {
          goto LABEL_57;
        }

        v47 = -1;
      }

      else
      {
        v47 = 0;
      }

      v41 = 0;
      v48 = &v6[16 * v21];
      *v48 = v43;
      *(v48 + 2) = v47;
      ++v21;
LABEL_57:
      if (v40 >= v19)
      {
        goto LABEL_14;
      }
    }
  }

  v21 = 0;
LABEL_14:
  v22 = 0;
  while (1)
  {
    v23 = &a2[3 * v22];
    v24 = *v23;
    v51 = v23[2];
    if (reserveDiffSegmentVector(&v54, v21))
    {
      break;
    }

    v50 = v22;
    if (v21)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      while (1)
      {
        v29 = &v6[16 * v25];
        v30 = *v29;
        if (v28 < v24)
        {
          v31 = (v51 + 16 + 24 * v28);
          while (*v31 + *(v31 - 2) < v30)
          {
            v31 += 3;
            if (v24 == ++v28)
            {
              goto LABEL_40;
            }
          }
        }

        if (v28 == v24)
        {
          break;
        }

        if (v25)
        {
          if (v27)
          {
            v32 = -1;
          }

          else
          {
            v32 = *(v51 + 24 * v28 + 8) + v26 - *(v51 + 24 * v28);
          }

          v52.n128_u64[0] = v26;
          v52.n128_u64[1] = v32;
          v53 = v30 - v26;
          pushDiffSegment(&v54, &v52);
          v26 = *v29;
        }

        else
        {
          v26 = *v29;
        }

        v27 += *(v29 + 2);
        if (++v25 == v21)
        {
          goto LABEL_31;
        }
      }

LABEL_40:
      v37 = "no overlapping segment found";
      v38 = 539;
      goto LABEL_41;
    }

LABEL_31:
    v33 = v54;
    v34 = reallocToFit(v55, 24 * v54);
    *(&v54 + 1) = v33;
    v55 = v34;
    free(v23[2]);
    *v23 = v54;
    v23[2] = v55;
    v55 = 0;
    v54 = 0uLL;
    v22 = v50 + 1;
    if (v50 + 1 == a1)
    {
      v35 = 0;
      goto LABEL_36;
    }
  }

LABEL_35:
  v35 = 0xFFFFFFFFLL;
LABEL_36:
  free(v6);
  free(v55);
  return v35;
}

uint64_t mergeDiffSegmentEventCompareProc(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 >= *a1)
  {
    return (*(a1 + 8) - *(a2 + 8));
  }

  return 1;
}

uint64_t getComboControlsFromMergedDiffSegmentVectors(char *a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (!a1)
  {
    v16 = 0;
LABEL_39:
    v36 = 0;
    goto LABEL_40;
  }

  v7 = a1;
  v8 = *a2;
  v9 = a1 + 2;
  v10 = calloc(&v9[v9 * *a2], 8uLL);
  if (v10)
  {
    v11 = calloc(v7, 8uLL);
    if (v11)
    {
      if (v8)
      {
        v12 = 0;
        v15 = a2[2];
        v14 = a2 + 2;
        v13 = v15;
        v16 = 1;
        while (1)
        {
          v17 = &v10[8 * v16 * v9];
          v18 = &v10[8 * (v16 - 1) * v9];
          v19 = *(v13 + 24 * v12 + 16);
          if (*(v13 + 24 * v12 + 8) == -1)
          {
            if (v19 < 0)
            {
              v19 = 0x8000000000000000 - v19;
            }

            if (!v18[1])
            {
              v18[1] = v19;
              goto LABEL_25;
            }

            v17[1] = v19;
          }

          else
          {
            v20 = (v18 + 2);
            v21 = 1;
            v22 = v14;
            v23 = v11;
            v24 = v7;
            do
            {
              v25 = *v22;
              v22 += 3;
              v26 = *(v25 + 24 * v12 + 8);
              v27 = v26 - *v23;
              if (v26 != *v23)
              {
                v21 = 0;
              }

              *v23++ = v26 + v19;
              v28 = 0x8000000000000000 - v27;
              if (v27 >= 0)
              {
                v28 = v27;
              }

              *v20++ = v28;
              --v24;
            }

            while (v24);
            if (v21)
            {
              v29 = v18[1];
              if (v29 < 0)
              {
                v29 = 0x8000000000000000 - v29;
              }

              if (!v29)
              {
                v31 = *v18;
                if ((*v18 & 0x8000000000000000) != 0)
                {
                  v31 = 0x8000000000000000 - *v18;
                }

                v32 = __OFADD__(v31, v19);
                v33 = v31 + v19;
                if (v33 < 0 != v32)
                {
                  v33 = 0x8000000000000000 - v33;
                }

                *v18 = v33;
                goto LABEL_25;
              }
            }

            v30 = 0x8000000000000000 - v19;
            if (v19 >= 0)
            {
              v30 = v19;
            }

            *v17 = v30;
          }

          ++v16;
LABEL_25:
          if (++v12 == v8)
          {
            goto LABEL_38;
          }
        }
      }

      v16 = 1;
LABEL_38:
      free(v11);
      a1 = reallocToFit(v10, 8 * v9 * v16);
      goto LABEL_39;
    }

    v35 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffControls.c", "getComboControlsFromMergedDiffSegmentVectors", 600, 53, v35, "calloc ipos");
  }

  else
  {
    v34 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffControls.c", "getComboControlsFromMergedDiffSegmentVectors", 596, 53, v34, "calloc controls");
  }

  free(v10);
  a1 = 0;
  v16 = 0;
  v36 = 0xFFFFFFFFLL;
LABEL_40:
  *a3 = a1;
  *a4 = v16;
  return v36;
}

ssize_t decodeStreamRefillBuffer(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    memmove(*(a1 + 32), (*(a1 + 32) + v2), *(a1 + 48) - v2);
    v2 = *(a1 + 40);
  }

  v3 = *(a1 + 48) - v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = v3;
  if (!*(a1 + 1128))
  {
    while (!(v3 >> 18))
    {
      result = AAByteStreamRead(*(a1 + 8), (*(a1 + 32) + v3), 0x40000 - v3);
      if (!result)
      {
        *(a1 + 1128) = 1;
        return result;
      }

      if (result < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamRefillBuffer", 38, 61, 0, "istream read error");
        return 0xFFFFFFFFLL;
      }

      v3 = *(a1 + 48) + result;
      *(a1 + 48) = v3;
      if (*(a1 + 1128))
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t decodeStreamReadData(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a1[5];
  while (1)
  {
    if (a1[6] - v7 >= a3 - v6)
    {
      v8 = a3 - v6;
    }

    else
    {
      v8 = a1[6] - v7;
    }

    if (v8)
    {
      if (a2)
      {
        memcpy((a2 + v6), (a1[4] + v7), v8);
        v7 = a1[5];
      }

      v7 += v8;
      a1[5] = v7;
      a1[142] += v8;
      goto LABEL_12;
    }

    if ((decodeStreamRefillBuffer(a1) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadData", 69, 61, 0, "Refill buffer failed");
      return 0xFFFFFFFFLL;
    }

    v7 = a1[5];
    if (v7 == a1[6])
    {
      break;
    }

LABEL_12:
    v6 += v8;
    if (v6 >= a3)
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadData", 70, 61, 0, "No more data");
  return 0xFFFFFFFFLL;
}

uint64_t decodeStreamLoadHeader(void *a1, unint64_t a2)
{
  v2 = a1[9];
  v3 = a2 - v2;
  if (a2 <= v2)
  {
    return 0;
  }

  if (a1[10] >= a2)
  {
    if ((decodeStreamReadData(a1, a1[8] + v2, v3) & 0x80000000) == 0)
    {
      result = 0;
      a1[9] += v3;
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamLoadHeader", 82, 61, 0, "read error");
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamLoadHeader", 80, 61, 0, "invalid header size");
  }

  return 0xFFFFFFFFLL;
}

uint64_t loadAndDecodeHeader_AA(uint64_t a1)
{
  if (*(a1 + 72) > 5uLL)
  {
    if ((decodeStreamLoadHeader(a1, *(*(a1 + 64) + 4)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "loadAndDecodeHeader_AA", 96, 61, 0, "truncated stream");
    }

    else
    {
      if ((aaHeaderInitWithEncodedData(*(a1 + 88), *(a1 + 64), *(a1 + 72)) & 0x80000000) == 0)
      {
        return 0;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "loadAndDecodeHeader_AA", 99, 61, 0, "corrupted archive header");
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "loadAndDecodeHeader_AA", 92, 61, 0, "Invalid decoder state");
  }

  return 0xFFFFFFFFLL;
}

uint64_t decodeStreamHLCFromINO(void *a1, unint64_t a2, unint64_t a3, _DWORD *a4)
{
  v8 = a1[147];
  if (v8 && (v9 = a1[149], *v9 < a2))
  {
    if (v8 == 1)
    {
      v10 = 1;
    }

    else
    {
      v22 = 0;
      v23 = a1[147];
      v10 = v23;
      do
      {
        v24 = v22 + (v23 >> 1);
        if (v9[4 * v24] >= a2)
        {
          v10 = v24;
        }

        else
        {
          v22 = v24;
        }

        v23 = v10 - v22;
      }

      while ((v10 - v22) > 1);
    }
  }

  else
  {
    v10 = 0;
  }

  if (v10 == v8 || (v11 = a1[149], *(v11 + 32 * v10) != a2))
  {
    v12 = a1[148];
    if (v8 >= v12)
    {
      v13 = 2 * v12;
      if (!v12)
      {
        v13 = 32;
      }

      a1[148] = v13;
      if ((32 * v13) >= 0x2000000001)
      {
        *__error() = 12;
LABEL_30:
        a1[149] = 0;
        v25 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamHLCFromINO", 132, 61, *v25, "malloc");
        a1[147] = 0;
        a1[148] = 0;
        return -1;
      }

      v14 = a1[149];
      v15 = realloc(v14, 32 * v13);
      if (!v15)
      {
        free(v14);
        goto LABEL_30;
      }

      a1[149] = v15;
      v8 = a1[147];
    }

    v16 = v10;
    v17 = v8 - v10;
    if (v17)
    {
      memmove((a1[149] + 32 * v10 + 32), (a1[149] + 32 * v10), 32 * v17);
      v16 = a1[147];
    }

    a1[147] = v16 + 1;
    v11 = a1[149];
    v18 = v11 + 32 * v10;
    *v18 = a2;
    *(v18 + 24) = v16;
    *(v18 + 8) = vdupq_n_s64(a3);
  }

  v19 = (v11 + 32 * v10);
  if (v19[1] == a3)
  {
    v20 = v19[2] - 1;
    v19[2] = v20;
    if (v20 < a3)
    {
      *a4 = v20 == 0;
      return v19[3];
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamHLCFromINO", 151, 61, 0, "invalid nlink");
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamHLCFromINO", 149, 61, 0, "nlink mismatch");
  }

  return -1;
}

AAArchiveStream AADecodeArchiveInputStreamOpen(AAByteStream stream, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v9 = malloc(0x4C0uLL);
  v10 = v9;
  if (v9)
  {
    memset_s(v9, 0x4C0uLL, 0, 0x4C0uLL);
  }

  v11 = malloc(0x38uLL);
  v12 = v11;
  if (!v11 || (memset_s(v11, 0x38uLL, 0, 0x38uLL), !v10))
  {
    v16 = *__error();
    v17 = "malloc";
    v18 = 374;
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "AADecodeArchiveInputStreamOpen", v18, 61, v16, v17);
    free(v12);
    decodeStreamClose(v10);
    return 0;
  }

  v13 = malloc(0x40000uLL);
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *(v10 + 4) = v13;
  if (!v13)
  {
    v17 = "init buffer";
    v18 = 379;
LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  *(v10 + 1) = stream;
  *(v10 + 14) = -1;
  *(v10 + 72) = xmmword_296AD1FD0;
  v14 = malloc(0x10000uLL);
  *(v10 + 8) = v14;
  if (!v14)
  {
    v16 = *__error();
    v17 = "malloc";
    v18 = 385;
    goto LABEL_15;
  }

  *(v10 + 11) = AAHeaderCreate();
  v15 = AAHeaderCreate();
  *(v10 + 12) = v15;
  if (!*(v10 + 11) || !v15)
  {
    v17 = "allocating header";
    v18 = 388;
    goto LABEL_14;
  }

  *v10 = flags;
  *(v10 + 2) = msg_proc;
  *(v10 + 3) = msg_data;
  *(v10 + 151) = getRealTime();
  v12[5] = decodeStreamReadHeader;
  v12[6] = decodeStreamReadBlob;
  v12[2] = decodeStreamAbort;
  *v12 = v10;
  v12[1] = decodeStreamClose;
  return v12;
}

uint64_t decodeStreamReadHeader(uint64_t a1, AAHeader *a2)
{
  if (*(a1 + 1132))
  {
    return 0xFFFFFFFFLL;
  }

  v39[7] = v2;
  v39[8] = v3;
  v38 = 0;
  v39[0] = 0;
  v6 = *(a1 + 1136);
  v7 = *(a1 + 1144);
  if (v7 >= v6)
  {
    if ((decodeStreamReadData(a1, 0, v7 - v6) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 180, 61, 0, "truncated archive", v38);
      goto LABEL_66;
    }

    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    if (v9 == v10)
    {
      if (*(a1 + 1128))
      {
LABEL_11:
        if (*(a1 + 1128))
        {
          return 0;
        }

LABEL_12:
        v11 = *(a1 + 1136);
        *(a1 + 104) = 0;
        *(a1 + 72) = 0;
        if ((decodeStreamLoadHeader(a1, 6uLL) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 195, 61, 0, "truncated stream", v38);
          goto LABEL_66;
        }

        v12 = *(a1 + 56);
        if (v12 < 0)
        {
          v13 = *(a1 + 64);
          if (*v13 == 825246017 || *v13 == 826360153)
          {
            *(a1 + 56) = 0;
            goto LABEL_32;
          }

          if (*v13 == 925906736 && *(v13 + 2) == 12592)
          {
            v19 = 1;
          }

          else
          {
            v15 = *v13;
            v16 = *(v13 + 2);
            if (v15 != 925906736 || v16 != 14128)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 212, 61, 0, "Invalid/non-supported archive stream", v38);
              goto LABEL_66;
            }

            v19 = 2;
          }

          *(a1 + 56) = v19;
        }

        else if ((v12 - 1) >= 2)
        {
          if (v12 == 3)
          {
            v18 = loadAndDecodeHeader_Ustar(a1, v39);
            goto LABEL_39;
          }

          if (v12)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 226, 61, 0, "Invalid archive stream", v38);
            goto LABEL_66;
          }

LABEL_32:
          v18 = loadAndDecodeHeader_AA(a1);
LABEL_39:
          if (v18 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 228, 61, 0, "parsing entry header", v38);
            goto LABEL_66;
          }

          if (!v18)
          {
            v20 = *(a1 + 72);
            v21 = *(a1 + 88);
            v22.ikey = 5265748;
            KeyIndex = AAHeaderGetKeyIndex(v21, v22);
            if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(v21, KeyIndex, &v38), FieldUInt <= 1) ? (v25 = 1) : (v25 = FieldUInt), v25 <= 0))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 235, 61, 0, "Invalid entry: no TYP field", v38);
              goto LABEL_66;
            }

            if (v38 != 77)
            {
              v26 = *(a1 + 88);
              v27.ikey = 5521744;
              v28 = AAHeaderGetKeyIndex(v26, v27);
              if ((v28 & 0x80000000) == 0)
              {
                FieldString = AAHeaderGetFieldString(v26, v28, 0x400uLL, (a1 + 104), 0);
                v30 = FieldString <= 1 ? 1 : FieldString;
                if (v30 >= 1)
                {
                  v31 = strlen((a1 + 104));
                  if (!pathIsValid((a1 + 104), v31))
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 241, 61, 0, "Invalid entry path", v38);
                    goto LABEL_66;
                  }
                }
              }
            }

            v32 = *(a1 + 16);
            if (v32 && *(a1 + 104) && (v32(*(a1 + 24), 60, a1 + 104, 0) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 248, 61, 0, "callback cancel", v38);
              goto LABEL_66;
            }

            if ((aaHeaderBlobArrayInitWithHeader(a1 + 1152, *(a1 + 88)) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 252, 61, 0, "initializing blob array", v38);
              goto LABEL_66;
            }

            *(a1 + 1168) = 0;
            if (!*(a1 + 56))
            {
              v39[0] = aaHeaderBlobArrayPayloadSize((a1 + 1152));
            }

            if (a2)
            {
              v33 = *a2;
              if (*a2)
              {
                if (AAHeaderAssign(*a2, *(a1 + 88)) < 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 272, 61, 0, "header init", v38);
                  goto LABEL_66;
                }
              }

              else
              {
                v33 = AAHeaderClone(*(a1 + 88));
                if (!v33)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 268, 61, 0, "header init", v38);
                  goto LABEL_66;
                }
              }

              if (*(a1 + 1))
              {
                v34.ikey = 5784649;
                if (AAHeaderGetKeyIndex(v33, v34) < 0)
                {
                  v35.ikey = 5915721;
                  if (AAHeaderGetKeyIndex(v33, v35) < 0)
                  {
                    v36.ikey = 5784649;
                    if (AAHeaderSetFieldUInt(v33, 0xFFFFFFFF, v36, v11) < 0 || (v37.ikey = 5915721, AAHeaderSetFieldUInt(v33, 0xFFFFFFFF, v37, v39[0] + v20) < 0))
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 281, 61, 0, "inserting IDX,IDZ fields", v38);
                      goto LABEL_66;
                    }
                  }
                }
              }

              *a2 = v33;
            }

            ++*(a1 + 1200);
            *(a1 + 1144) = v20 + v11 + v39[0];
            return 1;
          }

          return 0;
        }

        v18 = loadAndDecodeHeader_Cpio(a1, v39);
        goto LABEL_39;
      }

      if ((decodeStreamRefillBuffer(a1) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 185, 61, 0, "refill buffer", v38);
        goto LABEL_66;
      }

      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
    }

    if (v9 != v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadHeader", 179, 61, 0, "invalid state", v38);
LABEL_66:
  if (!*(a1 + 1132))
  {
    *(a1 + 1132) = 1;
    AAByteStreamCancel(*(a1 + 8));
  }

  return 0xFFFFFFFFLL;
}

uint64_t decodeStreamReadBlob(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v16[2] = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v5 = *(a1 + 1168);
    if (v5 >= *(a1 + 1152))
    {
      goto LABEL_7;
    }

    while (1)
    {
      v9 = *(a1 + 1160) + 24 * v5;
      v10 = *(v9 + 8);
      if (((*v9 ^ a2) & 0xFFFFFFLL) == 0)
      {
        if (v10)
        {
          break;
        }
      }

      if ((decodeStreamReadData(a1, 0, v10) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadBlob", 307, 61, 0, "reading blob data");
        return 0xFFFFFFFFLL;
      }

      *(v9 + 8) = 0;
      v5 = *(a1 + 1168) + 1;
      *(a1 + 1168) = v5;
      if (v5 >= *(a1 + 1152))
      {
        goto LABEL_7;
      }
    }

    if (v10 < a4)
    {
LABEL_7:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadBlob", 312, 61, 0, "invalid read blob request");
    }

    else if ((decodeStreamReadData(a1, a3, a4) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadBlob", 315, 61, 0, "read error");
    }

    else
    {
      v12 = *(v9 + 8);
      v13 = v12 - a4;
      *(v9 + 8) = v12 - a4;
      if (v12 == a4)
      {
        ++*(a1 + 1168);
      }

      v14 = *(a1 + 16);
      if (!v14)
      {
        return 0;
      }

      if (!*(a1 + 104))
      {
        return 0;
      }

      if ((*v9 & 0xFFFFFF) != 0x544144)
      {
        return 0;
      }

      v15 = *(v9 + 16) - v13;
      v16[0] = *(v9 + 16);
      v16[1] = v15;
      if ((v14(*(a1 + 24), 60, a1 + 104, v16) & 0x80000000) == 0)
      {
        return 0;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStream.c", "decodeStreamReadBlob", 328, 61, 0, "callback cancel");
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

void decodeStreamAbort(uint64_t a1)
{
  if (!*(a1 + 1132))
  {
    *(a1 + 1132) = 1;
    AAByteStreamCancel(*(a1 + 8));
  }
}

uint64_t decodeStreamClose(char *a1)
{
  if (a1)
  {
    free(*(a1 + 4));
    free(*(a1 + 8));
    free(*(a1 + 149));
    free(*(a1 + 145));
    memset_s(a1 + 1152, 0x10uLL, 0, 0x10uLL);
    AAHeaderDestroy(*(a1 + 11));
    AAHeaderDestroy(*(a1 + 12));
    if (*a1 >> 62)
    {
      v2 = getRealTime() - *(a1 + 151);
      v3 = MEMORY[0x29EDCA610];
      fwrite("Decode archive\n", 0xFuLL, 1uLL, *MEMORY[0x29EDCA610]);
      fprintf(*v3, "%12llu entries in archive\n", *(a1 + 150));
      fprintf(*v3, "%12llu bytes in archive (uncompressed)\n", *(a1 + 142));
      fprintf(*v3, "%12.0f MB/s\n", *(a1 + 142) * 0.000000953674316 / v2);
      fprintf(*v3, "%12.2f decoding time (s)\n", v2);
    }

    free(a1);
  }

  return 0;
}

void *aaCreateArchString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x1000uLL, "1 0x%x %u", *v8, v8[1]);
  if (v8[1])
  {
    v9 = strlen(__str);
    v10 = 0;
    v11 = v8 + 10;
    while (1)
    {
      snprintf(&__str[v9], 4096 - v9, " (0x%x %i %i %u %llu %llu %u)", *(v11 - 8), *(v11 - 7), *(v11 - 6), *(v11 - 5), *v11, *(v11 + 1), v11[4]);
      v9 += strlen(&__str[v9]);
      if (v9 + 1 >= 0x1000)
      {
        break;
      }

      v11 += 14;
      if (++v10 >= v8[1])
      {
        goto LABEL_5;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaCreateArchString", 476, 148, 0, "String overflow");
    return 0;
  }

  else
  {
LABEL_5:
    v12 = strlen(__str);
    v13 = v12 + 1;
    if (v12 + 1 < 0x2000000001)
    {
      v15 = malloc(v12 + 1);
      v14 = v15;
      if (v15)
      {
        memcpy(v15, __str, v13);
      }
    }

    else
    {
      v14 = 0;
      *__error() = 12;
    }
  }

  return v14;
}

uint64_t aaEntryMCOStringCreateWithPath(void *a1, const char *a2, unint64_t a3)
{
  bzero(&v75, 0xE08uLL);
  *a1 = 0;
  v6 = open(a2, 0);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    memset(&v78, 0, sizeof(v78));
    v8 = fstat(v6, &v78);
    if (v8)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "AAEntryMCOBlobInitWithFD", 492, 148, 0, "fstat failed");
      goto LABEL_4;
    }

    st_size = v78.st_size;
    Magic = aaGetMagic(v7, 0, v78.st_size);
    v16 = Magic;
    v75 = Magic | 0x100000000;
    if (Magic <= -822415875)
    {
      if (Magic > -889275715)
      {
        if ((Magic + 889275714) < 2)
        {
          goto LABEL_21;
        }

        v20 = -872498498;
      }

      else
      {
        if ((Magic + 1095041334) < 2)
        {
          goto LABEL_21;
        }

        v20 = -1078264118;
      }

      if (Magic != v20)
      {
        goto LABEL_4;
      }

LABEL_21:
      v22 = Magic == -1078264118 || Magic == -889275713;
      v23 = (Magic | 0x1000000) == 0xBFBAFECA || Magic == -1095041333;
      v87 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      memset(v83, 0, sizeof(v83));
      if (v22)
      {
        v24 = 32;
      }

      else
      {
        v24 = 20;
      }

      if ((aaPReadExpected(v7, &v87, 8uLL, 0, st_size) & 0x80000000) == 0)
      {
        v25 = bswap32(HIDWORD(v87));
        if (v23)
        {
          v26 = v25;
        }

        else
        {
          v26 = HIDWORD(v87);
        }

        HIDWORD(v75) = v26;
        if (v26 > 0x40)
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaParseFatFile", 302, 148, "Too many arches");
          goto LABEL_4;
        }

        v73 = v23;
        v65 = a3;
        v66 = a2;
        v68 = a1;
        if (v26)
        {
          v43 = 0;
          v44 = 0;
          v45 = bswap32(v16);
          v46 = vdup_n_s32(!v73);
          if (v73)
          {
            v47 = v45;
          }

          else
          {
            v47 = v16;
          }

          v71 = v47;
          v70 = 56 * v26;
          v48 = 8;
          v49 = vcltz_s32(vshl_n_s32(v46, 0x1FuLL));
          v50.i64[0] = v46.u32[0];
          v50.i64[1] = v46.u32[1];
          v69 = vcltzq_s64(vshlq_n_s64(v50, 0x3FuLL));
          v72 = v24;
          do
          {
            v82 = 0;
            v80 = 0u;
            v81 = 0u;
            v79 = 0u;
            if (v16 == -889275713 || v16 == -1078264118)
            {
              if ((aaPReadExpected(v7, v83, v24, v48, st_size) & 0x80000000) != 0)
              {
                goto LABEL_100;
              }

              *&v76[v43 + 4] = vbsl_s8(v49, v83[0], vrev32_s8(v83[0]));
              v51 = &v77[56 * v44 + 20];
              v52 = vbslq_s8(v69, *v83[1].i8, vrev64q_s8(*v83[1].i8));
            }

            else
            {
              if ((aaPReadExpected(v7, &v84, v24, v48, st_size) & 0x80000000) != 0)
              {
LABEL_100:
                a2 = v66;
                a1 = v68;
                a3 = v65;
                v8 = 0;
                goto LABEL_4;
              }

              v53 = v85;
              *&v76[v43 + 4] = vbsl_s8(v49, v84, vrev32_s8(v84));
              v51 = &v77[v43 + 20];
              v54 = vbsl_s8(v49, v53, vrev32_s8(v53));
              v55.i64[0] = v54.u32[0];
              v55.i64[1] = v54.u32[1];
              v52 = v55;
            }

            v56 = v52.i64[0];
            v57 = &v76[v43 - 8];
            *(v57 + 6) = v52.i64[1];
            *v51 = v52.i64[0];
            *&v76[v43] = v71;
            *(v57 + 14) = v73;
            v58 = vaddvq_s64(v52);
            if (v58 <= st_size)
            {
              v59 = v58;
              v60 = aaGetMagic(v7, v56, v58);
              v10 = v60;
              if (v60 <= -17958195)
              {
                if (v60 != -822415874 && v60 != -805638658)
                {
                  goto LABEL_98;
                }
              }

              else if ((v60 + 17958194) >= 2)
              {
                v61 = v60 == 1918975009 || v60 == 557605234;
                if (!v61 || (aaParseARSection(&v79, v7, v56, v59) & 0x80000000) != 0)
                {
                  goto LABEL_98;
                }

LABEL_97:
                *&v76[v43] = v79;
                v63 = &v76[v43 - 8];
                *(v63 + 3) = v80;
                v64 = v82;
                *(v63 + 8) = DWORD2(v80);
                *(v57 + 14) = v64;
                goto LABEL_98;
              }

              if ((aaParseMachOSection(&v79, v7, v60, v56, v59) & 0x80000000) == 0)
              {
                goto LABEL_97;
              }
            }

LABEL_98:
            ++v44;
            v43 += 56;
            v24 = v72;
            v48 += v72;
          }

          while (v70 != v43);
        }

        a2 = v66;
        a1 = v68;
        a3 = v65;
        goto LABEL_43;
      }

LABEL_4:
      v16 = 0;
      v75 = 0;
      if (v8)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaEntryMCOStringCreateWithPath", 545, 148, 0, "Can't init MCO");
        goto LABEL_6;
      }

LABEL_43:
      if (!v16)
      {
        goto LABEL_66;
      }

      if (a3 >> 62 == 3)
      {
        v67 = a1;
        v27 = MEMORY[0x29EDCA610];
        v28 = *MEMORY[0x29EDCA610];
        BinaryTypeString = aaGetBinaryTypeString(v16);
        v30 = HIDWORD(v75);
        fprintf(v28, "%s (N=%u)", BinaryTypeString, HIDWORD(v75));
        if (v30)
        {
          v31 = v77;
          do
          {
            v32 = *v27;
            v33 = aaGetBinaryTypeString(*(v31 - 3));
            v34 = *(v31 - 2);
            if (v34 <= 16777222)
            {
              v37 = "x86";
              if (v34 != 7)
              {
                if (v34 != 12)
                {
                  goto LABEL_60;
                }

                v37 = "arm";
              }
            }

            else
            {
              if (v34 != 33554444)
              {
                v35 = *(v31 - 1) & 0xFFFFFF;
                if (v34 == 16777228)
                {
                  v36 = v35 == 2;
                  v37 = "arm64";
                  v38 = "arm64e";
LABEL_57:
                  if (v36)
                  {
                    v37 = v38;
                  }

                  goto LABEL_61;
                }

                if (v34 == 16777223)
                {
                  v36 = v35 == 8;
                  v37 = "x86_64";
                  v38 = "x86_64h";
                  goto LABEL_57;
                }

LABEL_60:
                v37 = "?";
                goto LABEL_61;
              }

              v37 = "arm64_32";
            }

LABEL_61:
            v39 = *v31 - 1;
            v40 = "?";
            if (v39 <= 0xD)
            {
              v40 = (&off_29EE51350)[v39];
            }

            fprintf(v32, " [%s, %s, %s]", v33, v37, v40);
            v31 += 14;
            --v30;
          }

          while (v30);
        }

        fprintf(*v27, "\t<%s>\n", a2);
        a1 = v67;
      }

      ArchString = aaCreateArchString(&v75, v9, v10, v11, v12, v13, v14, v15);
      *a1 = ArchString;
      if (ArchString)
      {
LABEL_66:
        v17 = 0;
        goto LABEL_67;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaEntryMCOStringCreateWithPath", 555, 148, 0, "MCO creation failed");
LABEL_6:
      v17 = 0xFFFFFFFFLL;
LABEL_67:
      close(v7);
      return v17;
    }

    if (Magic <= -17958195)
    {
      if (Magic != -822415874 && Magic != -805638658)
      {
        goto LABEL_4;
      }
    }

    else if ((Magic + 17958194) >= 2)
    {
      if (Magic != 1918975009 && Magic != 557605234 || aaParseARSection(v76, v7, 0, st_size))
      {
        goto LABEL_4;
      }

LABEL_42:
      v16 = v75;
      goto LABEL_43;
    }

    if (aaParseMachOSection(v76, v7, Magic, 0, st_size))
    {
      goto LABEL_4;
    }

    goto LABEL_42;
  }

  v18 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaEntryMCOStringCreateWithPath", 542, 148, *v18, "%s", a2);
  return 0xFFFFFFFFLL;
}

uint64_t aaGetMagic(uint64_t a1, off_t a2, size_t a3)
{
  v5 = a1;
  v9[1] = *MEMORY[0x29EDCA608];
  v8 = 0;
  if ((aaPReadExpected(a1, &v8, 4uLL, a2, a3) & 0x80000000) != 0)
  {
    return 0;
  }

  result = v8;
  if (v8 == 1918975009 || v8 == 557605234)
  {
    v9[0] = 0;
    if ((aaPReadExpected(v5, v9, 8uLL, a2, a3) & 0x80000000) == 0)
    {
      if (v9[0] == 0xA3E686372613C21)
      {
        return v8;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t aaParseARSection(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = a3 + 8;
  if (a3 + 8 < a4)
  {
    v8 = a3 + 68;
    while (1)
    {
      v19 = 0u;
      memset(v20, 0, 28);
      v18 = 0u;
      if ((aaPReadExpected(a2, &v18, 0x3CuLL, v4, a4) & 0x80000000) != 0)
      {
        break;
      }

      if (v18 != 12579 || BYTE2(v18) != 47)
      {
        break;
      }

      if (HIWORD(v20[6]) != 2656)
      {
        break;
      }

      LOBYTE(v19) = 0;
      BYTE2(v20[6]) = 0;
      v10 = strtoull(&v18 + 3, 0, 10);
      v11 = strtoull(&v20[4], 0, 10);
      v12 = v11 + v8;
      if (v11 + v8 > a4)
      {
        break;
      }

      v13 = v11;
      if (v10 > v11 || v12 < v4)
      {
        break;
      }

      Magic = aaGetMagic(a2, v10 + v8, v12);
      v15 = Magic;
      v16 = Magic + 17958194;
      if ((Magic + 17958194) < 2 || Magic == -822415874 || Magic == -805638658)
      {
        result = aaParseMachOSection(a1, a2, Magic, v10 + v8, v12);
        if (v16 < 2 || v15 == -805638658 || v15 == -822415874)
        {
          return result;
        }
      }

      else
      {
        v4 = v12 + (v13 & 1);
        v8 = v4 + 60;
        result = 0xFFFFFFFFLL;
        if (v4 >= a4)
        {
          return result;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t aaParseMachOSection(uint64_t a1, uint64_t a2, int a3, off_t a4, size_t a5)
{
  v8 = a3 & 0xFEFFFFFF;
  v9 = (a3 & 0xFEFFFFFF) == -822415874;
  if (a3 == -17958193 || a3 == -805638658)
  {
    v17 = 0u;
    v18 = 0u;
    v10 = a2;
    v11 = 32;
  }

  else
  {
    v17 = 0uLL;
    DWORD2(v18) = 0;
    *&v18 = 0;
    v10 = a2;
    v11 = 28;
  }

  if ((aaPReadExpected(v10, &v17, v11, a4, a5) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v8 == -822415874;
  v13 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v12)), 0x1FuLL)), vrev32q_s8(v17), v17);
  *a1 = v13;
  *(a1 + 16) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v12), 0x1FuLL)), vrev32_s8(*&v18), *&v18);
  v14 = DWORD2(v18);
  v15 = bswap32(DWORD2(v18));
  if (v8 == -822415874)
  {
    v14 = v15;
  }

  *(a1 + 24) = v14;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5 - a4;
  *(a1 + 48) = v9;
  if ((v13.i32[0] + 17958192) >= 0xFFFFFFFE)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t aaPReadExpected(int a1, void *a2, size_t a3, off_t a4, size_t a5)
{
  if (a4 + a3 > a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (pread(a1, a2, a3, a4) == a3)
  {
    return 0;
  }

  v6 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaPReadExpected", 181, 148, *v6, "pread failed");
  return 0xFFFFFFFFLL;
}

const char *aaGetBinaryTypeString(int a1)
{
  if (a1 > -822415875)
  {
    if (a1 > -17958194)
    {
      switch(a1)
      {
        case -17958193:
          return "Mach-O 64-bit";
        case 1918975009:
          return "Object archive BE";
        case 557605234:
          return "Object archive";
      }
    }

    else
    {
      switch(a1)
      {
        case -822415874:
          return "Mach-O BE";
        case -805638658:
          return "Mach-O 64-bit BE";
        case -17958194:
          return "Mach-O";
      }
    }
  }

  else if (a1 > -889275715)
  {
    switch(a1)
    {
      case -889275714:
        return "Fat binary";
      case -889275713:
        return "Fat binary 64-bit";
      case -872498498:
        return "Fat GPU binary";
    }
  }

  else
  {
    switch(a1)
    {
      case -1095041334:
        return "Fat binary BE";
      case -1095041333:
        return "Fat GPU binary BE";
      case -1078264118:
        return "Fat binary 64-bit BE";
    }
  }

  return "?";
}

uint64_t aaByteStreamSimulate(void *a1)
{
  v1 = a1[11];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return -1;
  }
}

uint64_t aaByteStreamPCWriteProc(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return -1;
  }
}

ssize_t AAByteStreamWrite(AAByteStream s, const void *buf, size_t nbyte)
{
  v3 = *(s + 3);
  if (v3)
  {
    return v3(*s, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

uint64_t aaFileStreamGetFD(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 == aaFileStreamClose || v1 == aaTempFileStreamClose)
  {
    return **a1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t aaFileStreamClose(int *a1)
{
  if (a1)
  {
    if (a1[1])
    {
      v2 = *a1;
      if ((v2 & 0x80000000) == 0)
      {
        close(v2);
      }
    }

    free(a1);
  }

  return 0;
}

uint64_t aaTempFileStreamClose(char *a1)
{
  if (a1)
  {
    v2 = *a1;
    if ((v2 & 0x80000000) == 0)
    {
      close(v2);
      unlink(a1 + 12);
    }

    free(a1);
  }

  return 0;
}

ssize_t AAByteStreamPWrite(AAByteStream s, const void *buf, size_t nbyte, off_t offset)
{
  v4 = *(s + 5);
  if (v4)
  {
    return v4(*s, buf, nbyte, offset);
  }

  else
  {
    return -1;
  }
}

ssize_t AAByteStreamRead(AAByteStream s, void *buf, size_t nbyte)
{
  v3 = *(s + 2);
  if (v3)
  {
    return v3(*s, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

ssize_t AAByteStreamPRead(AAByteStream s, void *buf, size_t nbyte, off_t offset)
{
  v4 = *(s + 4);
  if (v4)
  {
    return v4(*s, buf, nbyte, offset);
  }

  else
  {
    return -1;
  }
}

off_t AAByteStreamSeek(AAByteStream s, off_t offset, int whence)
{
  v3 = *(s + 6);
  if (v3)
  {
    return v3(*s, offset, *&whence);
  }

  else
  {
    return -1;
  }
}

void AAByteStreamCancel(AAByteStream s)
{
  v1 = *(s + 7);
  if (v1)
  {
    v1(*s);
  }
}

int AAByteStreamClose(AAByteStream s)
{
  if (!s)
  {
    return 0;
  }

  if (*s)
  {
    v2 = (*(s + 1))();
  }

  else
  {
    v2 = 0;
  }

  free(s);
  return v2;
}

uint64_t AAByteStreamCloseWithState(uint64_t (**a1)(void))
{
  if (a1)
  {
    v2 = a1[12];
    v3 = *a1;
    if (v2)
    {
      if (v3)
      {
        v4 = v2();
LABEL_8:
        v5 = v4;
LABEL_10:
        free(a1);
        return v5;
      }
    }

    else if (v3)
    {
      v4 = a1[1]();
      goto LABEL_8;
    }

    v5 = 0;
    goto LABEL_10;
  }

  return 0;
}

uint64_t AAByteStreamFlush(void *a1)
{
  v1 = a1[9];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t AAByteStreamTruncate(void *a1)
{
  v1 = a1[8];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t AAByteStreamPReadAsync(void *a1)
{
  v1 = a1[10];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

AAByteStream AAFileStreamOpenWithFD(int fd, int automatic_close)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = malloc(0xCuLL);
  v6 = v5;
  if (v4 && v5)
  {
    *v5 = fd;
    v5[1] = automatic_close;
    v5[2] = 0;
    *v4 = v5;
    v4[1] = aaFileStreamClose;
    v4[2] = aaFileStreamRead;
    v4[3] = aaFileStreamWrite;
    v4[4] = aaFileStreamPRead;
    v4[5] = aaFileStreamPWrite;
    v4[7] = aaFileStreamAbort;
    v4[6] = aaFileStreamSeek;
    v4[8] = aaFileStreamTruncate;
    v4[9] = aaFileStreamFlush;
  }

  else
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAFileStreamOpenWithFD", 402, 17, *v7, "malloc");
    free(v4);
    free(v6);
    return 0;
  }

  return v4;
}

ssize_t aaFileStreamRead(int *a1, void *a2, size_t a3)
{
  if (a1[2])
  {
    return -1;
  }

  v3 = read(*a1, a2, a3);
  if (v3 < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamRead", 92, 17, "aaFileStreamRead err=%zd buf=%p n=%zu", v3, a2, a3);
  }

  return v3;
}

ssize_t aaFileStreamWrite(int *a1, const void *a2, size_t a3)
{
  if (a1[2])
  {
    return -1;
  }

  v3 = write(*a1, a2, a3);
  if (v3 < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamWrite", 104, 17, "aaFileStreamWrite err=%zd buf=%p n=%zu", v3, a2, a3);
  }

  return v3;
}

ssize_t aaFileStreamPRead(int *a1, void *a2, size_t a3, off_t a4)
{
  if (a1[2])
  {
    return -1;
  }

  v4 = pread(*a1, a2, a3, a4);
  if (v4 < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamPRead", 116, 17, "aaFileStreamPRead err=%zd buf=%p n=%zu off=%llu", v4, a2, a3, a4);
  }

  return v4;
}

ssize_t aaFileStreamPWrite(int *a1, const void *a2, size_t a3, off_t a4)
{
  if (a1[2])
  {
    return -1;
  }

  v4 = pwrite(*a1, a2, a3, a4);
  if (v4 < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamPWrite", 128, 17, "aaFileStreamPWrite err=%zd buf=%p n=%zu off=%llu", v4, a2, a3, a4);
  }

  return v4;
}

off_t aaFileStreamSeek(int *a1, off_t a2, int a3)
{
  if (a1[2])
  {
    return -1;
  }

  else
  {
    return lseek(*a1, a2, a3);
  }
}

uint64_t aaFileStreamTruncate(int *a1, off_t a2)
{
  if (a1[2])
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return ftruncate(*a1, a2);
  }
}

uint64_t aaFileStreamFlush(int *a1)
{
  if (a1[2])
  {
    return 0xFFFFFFFFLL;
  }

  result = fsync(*a1);
  if (result)
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamFlush", 151, 17, *v4, "fsync", v1, v2);
    return 0xFFFFFFFFLL;
  }

  return result;
}

AAByteStream AAFileStreamOpenWithPath(const char *path, int open_flags, mode_t open_mode)
{
  v4 = open(path, open_flags, open_mode);
  if (v4 < 0)
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAFileStreamOpenWithPath", 428, 17, *v7, "open: %s", path);
  }

  else
  {
    v5 = v4;
    result = AAFileStreamOpenWithFD(v4, 1);
    if (result)
    {
      return result;
    }

    close(v5);
  }

  return 0;
}

void *AATempFileStreamOpenWithDirectory(const char *a1)
{
  v2 = calloc(1uLL, 0x68uLL);
  v3 = malloc(0x40CuLL);
  v4 = v3;
  if (!v2 || !v3)
  {
    v7 = *__error();
    v5 = "malloc";
    v6 = 447;
LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AATempFileStreamOpenWithDirectory", v6, 17, v7, v5, v10);
    free(v2);
    free(v4);
    return 0;
  }

  memset_s(v3, 0x40CuLL, 0, 0x40CuLL);
  if (a1)
  {
    memset(&v11, 0, sizeof(v11));
    if (!realpath_DARWIN_EXTSN(a1, v4 + 12) || stat(v4 + 12, &v11) || (v11.st_mode & 0xF000) != 0x4000)
    {
      v10 = a1;
      v5 = "invalid temp_dir: %s";
      v6 = 457;
LABEL_15:
      v7 = 0;
      goto LABEL_16;
    }
  }

  else if ((getTempDir(v4 + 12, 0x400uLL) & 0x80000000) != 0)
  {
    v5 = "get temp dir";
    v6 = 462;
    goto LABEL_15;
  }

  if (__strlcat_chk() >= 0x400)
  {
    v10 = v4 + 12;
    v5 = "Invalid temp dir path: %s";
    v6 = 464;
    goto LABEL_15;
  }

  v8 = mkostemp(v4 + 12, 0x1000000);
  *v4 = v8;
  if (v8 < 0)
  {
    v7 = *__error();
    v5 = "mkostemp";
    v6 = 466;
    goto LABEL_16;
  }

  *v2 = v4;
  v2[1] = aaTempFileStreamClose;
  v2[2] = aaFileStreamRead;
  v2[3] = aaFileStreamWrite;
  v2[4] = aaFileStreamPRead;
  v2[5] = aaFileStreamPWrite;
  v2[7] = aaFileStreamAbort;
  v2[6] = aaFileStreamSeek;
  v2[8] = aaFileStreamTruncate;
  v2[9] = aaFileStreamFlush;
  return v2;
}

int AASharedBufferPipeOpen(AAByteStream *ostream, AAByteStream *istream, size_t buffer_capacity)
{
  v6 = calloc(1uLL, 0x68uLL);
  v7 = calloc(1uLL, 0x68uLL);
  v8 = v7;
  if (v6 && v7)
  {
    v9 = SharedBufferCreate(buffer_capacity);
    if (v9)
    {
      v10 = v9;
      result = 0;
      *v8 = v10;
      *(v8 + 1) = aaSharedBufferOStreamClose;
      *(v8 + 3) = aaSharedBufferWrite;
      *(v8 + 7) = SharedBufferAbort;
      *v6 = v10;
      *(v6 + 1) = aaSharedBufferIStreamClose;
      *(v6 + 2) = aaSharedBufferRead;
      *(v6 + 7) = SharedBufferAbort;
      *ostream = v8;
      *istream = v6;
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AASharedBufferPipeOpen", 503, 17, 0, "SharedBufferCreate");
  }

  else
  {
    v12 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AASharedBufferPipeOpen", 499, 17, v12, "malloc");
  }

  free(v6);
  free(v8);
  SharedBufferDestroy(0);
  return -1;
}

uint64_t aaSharedBufferOStreamClose(uint64_t a1)
{
  SharedBufferWrite(a1, 0, 0);
  if (SharedBufferDecRefCount(a1))
  {
    SharedBufferDestroy(a1);
  }

  return 0;
}

uint64_t aaSharedBufferIStreamClose(uint64_t a1)
{
  if (SharedBufferDecRefCount(a1))
  {
    SharedBufferDestroy(a1);
  }

  return 0;
}

void *AAMagicInputStreamOpen(void *a1, size_t a2, void *a3, size_t *a4)
{
  v8 = calloc(1uLL, 0x68uLL);
  v9 = malloc(0x18uLL);
  v10 = v9;
  if (!v8 || !v9)
  {
    v11 = *__error();
    v12 = 552;
LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAMagicInputStreamOpen", v12, 17, v11, "malloc");
LABEL_12:
    free(v8);
    free(v10);
    return 0;
  }

  memset_s(v9, 0x18uLL, 0, 0x18uLL);
  *v10 = a1;
  if (a2 >= 0x2000000001)
  {
    *__error() = 12;
    v10[2] = 0;
LABEL_10:
    v11 = *__error();
    v12 = 558;
    goto LABEL_11;
  }

  v13 = malloc(a2);
  v10[2] = v13;
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = a1[2];
  if (!v14 || (v15 = v14(*a1, v13, a2), (v15 & 0x8000000000000000) != 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAMagicInputStreamOpen", 562, 17, 0, "reading magic bytes\n");
    goto LABEL_12;
  }

  v16 = v15;
  v10[1] = v15;
  memcpy(a3, v10[2], v15);
  *a4 = v16;
  *v8 = v10;
  v8[1] = aaMagicStreamClose;
  v8[2] = aaMagicStreamRead;
  v8[7] = aaMagicStreamAbort;
  return v8;
}

uint64_t aaMagicStreamClose(void **a1)
{
  free(a1[2]);
  free(a1);
  return 0;
}

uint64_t aaMagicStreamRead(uint64_t **a1, char *__dst, size_t a3)
{
  v3 = a3;
  v6 = a1[1];
  if (v6)
  {
    v7 = 0;
    if (!a3)
    {
      return v7;
    }

    do
    {
      if (v6 >= v3)
      {
        v8 = v3;
      }

      else
      {
        v8 = v6;
      }

      memcpy(__dst, a1[2], v8);
      v9 = a1[1];
      if (v9 > v8)
      {
        memmove(a1[2], a1[2] + v8, v9 - v8);
        v9 = a1[1];
      }

      __dst += v8;
      v3 -= v8;
      v7 += v8;
      v6 = (v9 - v8);
      a1[1] = v6;
      if (v6)
      {
        v10 = v3 == 0;
      }

      else
      {
        v10 = 1;
      }
    }

    while (!v10);
    if (!v3)
    {
      return v7;
    }

    v11 = (*a1)[2];
    if (v11)
    {
      v12 = v11(**a1, __dst, v3);
      if (v12 < 0)
      {
        return v12;
      }

      v7 += v12;
      return v7;
    }

    return -1;
  }

  v13 = (*a1)[2];
  if (!v13)
  {
    return -1;
  }

  v14 = **a1;

  return v13(v14);
}

void **aaMagicStreamAbort(void **result)
{
  v1 = (*result)[7];
  if (v1)
  {
    return v1(**result);
  }

  return result;
}

void *AATeeOutputStreamOpen(uint64_t a1, uint64_t a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = malloc(0x10uLL);
  v6 = v5;
  if (v5 && (memset_s(v5, 0x10uLL, 0, 0x10uLL), v4))
  {
    *v6 = a1;
    v6[1] = a2;
    *v4 = v6;
    v4[1] = aaTeeStreamClose;
    v4[3] = aaTeeStreamWrite;
    v4[5] = aaTeeStreamPWrite;
    v4[7] = aaTeeStreamAbort;
  }

  else
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AATeeOutputStreamOpen", 591, 17, *v7, "malloc");
    free(v4);
    free(v6);
    return 0;
  }

  return v4;
}

uint64_t aaTeeStreamWrite(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  if (*(*a1 + 24))
  {
    v7 = 0;
    if (!a3)
    {
      if (*(a1[1] + 24))
      {
        v11 = 0;
      }

      else
      {
        v11 = -1;
      }

      goto LABEL_20;
    }

    v8 = a2;
    v9 = a3;
    while (1)
    {
      v10 = (*(v6 + 24))(*v6, v8, v9);
      if (v10 < 1)
      {
        break;
      }

      v8 += v10;
      v7 += v10;
      v9 -= v10;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    v7 = v10;
  }

  else
  {
    v7 = -1;
  }

LABEL_12:
  v12 = a1[1];
  if (*(v12 + 24))
  {
    v11 = 0;
    if (a3)
    {
      v13 = a3;
      while (1)
      {
        v14 = (*(v12 + 24))(*v12, v4, v13);
        if (v14 < 1)
        {
          break;
        }

        v4 += v14;
        v11 += v14;
        v13 -= v14;
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      v11 = v14;
    }
  }

  else
  {
    v11 = -1;
  }

LABEL_20:
  if (v11 == a3 && v7 == a3)
  {
    return a3;
  }

  else
  {
    return -1;
  }
}

uint64_t aaTeeStreamPWrite(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v8 = *a1;
  if (*(*a1 + 40))
  {
    v9 = 0;
    if (!a3)
    {
      if (*(a1[1] + 40))
      {
        v14 = 0;
      }

      else
      {
        v14 = -1;
      }

      goto LABEL_20;
    }

    v10 = a2;
    v11 = a4;
    v12 = a3;
    while (1)
    {
      v13 = (*(v8 + 40))(*v8, v10, v12, v11);
      if (v13 < 1)
      {
        break;
      }

      v10 += v13;
      v9 += v13;
      v11 += v13;
      v12 -= v13;
      if (!v12)
      {
        goto LABEL_12;
      }
    }

    v9 = v13;
  }

  else
  {
    v9 = -1;
  }

LABEL_12:
  v15 = a1[1];
  if (*(v15 + 40))
  {
    v14 = 0;
    if (a3)
    {
      v16 = a3;
      while (1)
      {
        v17 = (*(v15 + 40))(*v15, v6, v16, v4);
        if (v17 < 1)
        {
          break;
        }

        v6 += v17;
        v14 += v17;
        v4 += v17;
        v16 -= v17;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      v14 = v17;
    }
  }

  else
  {
    v14 = -1;
  }

LABEL_20:
  if (v14 == a3 && v9 == a3)
  {
    return a3;
  }

  else
  {
    return -1;
  }
}

void **aaTeeStreamAbort(void **result)
{
  v1 = result;
  v2 = (*result)[7];
  if (v2)
  {
    result = v2(**result);
  }

  v3 = v1[1];
  v4 = v3[7];
  if (v4)
  {
    v5 = *v3;

    return v4(v5);
  }

  return result;
}

AAByteStream AACustomByteStreamOpen(void)
{
  v0 = calloc(1uLL, 0x68uLL);
  if (!v0)
  {
    v1 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AACustomByteStreamOpen", 619, 17, *v1, "malloc");
  }

  return v0;
}

AAByteStream_impl *AAAFSCStreamOpen(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = a1;
  v5 = afscStreamOpen(a1, a2, a3, a4);
  if (!v5)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpen", 1041, 55, 0, "alloc stream");
    goto LABEL_5;
  }

  if ((stripAFSC(v4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpen", 1043, 55, 0, "clearing file");
LABEL_5:
    AAByteStreamClose(v5);
    return 0;
  }

  return v5;
}

void *afscStreamOpen(int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a2 || a2 >= 4194304001)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamOpen", 959, 55, 0, "invalid uncompressed size");
LABEL_11:
    v9 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  if (a3 >= 0xF || ((0x7F99u >> a3) & 1) == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamOpen", 981, 55, 0, "invalid compression type: %d");
    goto LABEL_11;
  }

  v8 = dword_296AD2034[a3];
  v9 = calloc(1uLL, 0x68uLL);
  v10 = malloc(0x80uLL);
  v11 = v10;
  if (!v10 || (memset_s(v10, 0x80uLL, 0, 0x80uLL), !v9))
  {
    v14 = *__error();
    v15 = 988;
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamOpen", v15, 55, v14, "malloc");
    goto LABEL_12;
  }

  *v11 = a1;
  v11[1] = a4;
  v11[2] = a2;
  *(v11 + 8) = v8;
  if ((a2 + 0xFFFF) >> 48)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "chunkCount", 128, 55, 0, "invalid uncompressed size");
    v12 = 0;
    *(v11 + 11) = -1;
  }

  else
  {
    v16 = (a2 + 0xFFFF) >> 16;
    *(v11 + 11) = v16;
    v12 = v16 + 1;
  }

  v17 = calloc(v12, 4uLL);
  v11[6] = v17;
  if (!v17)
  {
    v14 = *__error();
    v15 = 997;
    goto LABEL_15;
  }

  if (v8 > 10)
  {
    if ((v8 - 11) < 2)
    {
      v18 = COMPRESSION_LZFSE;
      goto LABEL_32;
    }

    if ((v8 - 13) < 2)
    {
      v18 = COMPRESSION_LZBITMAP;
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if ((v8 - 7) < 2)
  {
    v18 = 2304;
    goto LABEL_32;
  }

  if (v8 != 4)
  {
    if (v8 == 10)
    {
      goto LABEL_36;
    }

LABEL_30:
    v18 = -1;
    goto LABEL_32;
  }

  v18 = 1285;
LABEL_32:
  v19 = compression_encode_scratch_buffer_size(v18);
  if (v19)
  {
    if (v19 >= 0x2000000001)
    {
      *__error() = 12;
      v11[7] = 0;
LABEL_58:
      v14 = *__error();
      v15 = 1002;
      goto LABEL_15;
    }

    v20 = malloc(v19);
    v11[7] = v20;
    if (!v20)
    {
      goto LABEL_58;
    }
  }

LABEL_36:
  v21 = v11[9];
  if (!(v21 >> 16))
  {
    v22 = v11 + 8;
    do
    {
      v23 = (v21 >> 1) + v21;
      if (((v21 >> 1) & v21) != 0)
      {
        v23 = ((v21 >> 1) & v21) + v21;
      }

      if (v21)
      {
        v21 = v23;
      }

      else
      {
        v21 = 0x4000;
      }
    }

    while (v21 < 0x10000);
    v24 = v11[10];
    v25 = realloc(v24, v21);
    if (!v25)
    {
      goto LABEL_59;
    }

    v11[9] = v21;
    v11[10] = v25;
  }

  v26 = v11[12];
  if (v26 < 0x80008)
  {
    v22 = v11 + 11;
    do
    {
      v27 = (v26 >> 1) + v26;
      if (((v26 >> 1) & v26) != 0)
      {
        v27 = ((v26 >> 1) & v26) + v26;
      }

      if (v26)
      {
        v26 = v27;
      }

      else
      {
        v26 = 0x4000;
      }
    }

    while (v26 < 0x80008);
    v24 = v11[13];
    v28 = realloc(v24, v26);
    if (v28)
    {
      v11[12] = v26;
      v11[13] = v28;
      goto LABEL_56;
    }

LABEL_59:
    free(v24);
    *v22 = 0;
    v22[1] = 0;
    v22[2] = 0;
    v14 = *__error();
    v15 = 1005;
    goto LABEL_15;
  }

LABEL_56:
  if ((v8 - 3) > 0xB)
  {
    v29 = 0;
  }

  else
  {
    v29 = byte_296AD2070[v8 - 3];
  }

  *(v11 + 36) = v29;
  v30 = *(v11 + 11);
  v31 = 8 * v30 + 264;
  v32 = 4 * v30 + 4;
  if (a3 < 7)
  {
    v32 = v31;
  }

  if (v32 < 0xFFFFFFFF)
  {
    *v11[6] = v32;
    *v9 = v11;
    v9[1] = afscStreamClose;
    v9[7] = afscStreamCancel;
    v9[3] = afscStreamWrite;
    v9[12] = afscStreamCloseWithState;
    return v9;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size");
  *v11[6] = -1;
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamOpen", 1010, 55, 0, "invalid file size");
LABEL_12:
  afscStreamClose(v11);
  free(v9);
  return 0;
}

uint64_t stripAFSC(int a1)
{
  memset(&v8, 0, sizeof(v8));
  if (fstat(a1, &v8))
  {
    v2 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "clearUFCompressedBit", 100, 55, v2, "fstat");
  }

  else
  {
    if ((v8.st_flags & 0x20) == 0 || (fchflags(a1, v8.st_flags & 0xFFFFFFDF) & 0x80000000) == 0)
    {
      v3 = 1;
      goto LABEL_7;
    }

    v7 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "clearUFCompressedBit", 105, 55, v7, "fchflags UF_COMPRESSED");
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "stripAFSC", 154, 55, 0, "clearing UF_COMPRESSED");
  v3 = 0;
LABEL_7:
  if ((fgetxattr(a1, "com.apple.ResourceFork", 0, 0, 0, 32) & 0x8000000000000000) == 0 && fremovexattr(a1, "com.apple.ResourceFork", 32) < 0)
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "stripAFSC", 159, 55, *v4, "fremovexattr");
    v3 = 0;
  }

  if ((fgetxattr(a1, "com.apple.decmpfs", 0, 0, 0, 32) & 0x8000000000000000) == 0 && fremovexattr(a1, "com.apple.decmpfs", 32) < 0)
  {
    v5 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "stripAFSC", 161, 55, *v5, "fremovexattr");
    v3 = 0;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

AAByteStream_impl *AAAFSCStreamOpenWithMetadata(int a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a3 > 0xE)
  {
    goto LABEL_4;
  }

  if (((1 << a3) & 0x2A88) != 0)
  {
    if (a4)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithMetadata", 1060, 55, 0, "invalid resource fork for type");
      goto LABEL_7;
    }
  }

  else if (((1 << a3) & 0x5510) == 0)
  {
LABEL_4:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithMetadata", 1059, 55, 0, "invalid compression_type: %d");
LABEL_7:
    v7 = 0;
LABEL_12:
    AAByteStreamClose(v7);
    return 0;
  }

  v8 = afscStreamOpen(a1, a2, a3, 0);
  v7 = v8;
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithMetadata", 1064, 55, 0, "alloc stream");
    goto LABEL_12;
  }

  v9 = *v8;
  *(v9 + 112) = a3;
  *(v9 + 116) = a4;
  if ((stripAFSC(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithMetadata", 1070, 55, 0, "clearing file");
    goto LABEL_12;
  }

  return v7;
}

AAByteStream_impl *AAAFSCStreamOpenWithState(int a1, AAByteStream_impl *a2, void *a3)
{
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  if (!*(a2 + 2))
  {
LABEL_71:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithState", 1088, 55, 0, "loading state", v41);
    v11 = 0;
    goto LABEL_77;
  }

  v6 = &v41;
  v7 = 48;
  do
  {
    v8 = (*(a2 + 2))(*a2, v6, v7);
    if (v8 < 0)
    {
      goto LABEL_71;
    }

    v6 = (v6 + v8);
    v7 -= v8;
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }
  }

  while (!v9);
  v10 = afscStreamOpen(a1, *(&v41 + 1), DWORD2(v42), v41);
  v11 = v10;
  if (!v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithState", 1092, 55, 0, "open AFSC stream", v41);
    goto LABEL_77;
  }

  v12 = *v10;
  *(v12 + 24) = v42;
  *(v12 + 40) = HIDWORD(v42);
  *(v12 + 112) = v43;
  if (!*(a2 + 2))
  {
    goto LABEL_76;
  }

  v13 = *(v12 + 44);
  v14 = __CFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    v16 = 4 * v15;
    v17 = *(v12 + 48);
    do
    {
      v18 = (*(a2 + 2))(*a2, v17, v16);
      if (v18 < 0)
      {
        goto LABEL_76;
      }

      v17 += v18;
      v16 -= v18;
      if (v18)
      {
        v19 = v16 == 0;
      }

      else
      {
        v19 = 1;
      }
    }

    while (!v19);
  }

  v20 = DWORD2(v43);
  if (!DWORD2(v43))
  {
LABEL_44:
    v31 = HIDWORD(v43);
    if (!HIDWORD(v43))
    {
LABEL_69:
      if (a3)
      {
        *a3 = *(v12 + 24);
      }

      return v11;
    }

    v21 = (v12 + 88);
    v33 = *(v12 + 88);
    v32 = *(v12 + 96);
    while (1)
    {
      if (v33 != v32)
      {
        goto LABEL_57;
      }

      v34 = v32 + 0x40000;
      if ((v32 + 0x40000) < 0)
      {
        goto LABEL_76;
      }

      if (v32 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v32)
        {
          v32 = 0x4000;
          v36 = 0x4000;
          if (v34 <= 0x4000)
          {
            goto LABEL_59;
          }
        }

        v35 = v32 >> 1;
        if ((v32 & (v32 >> 1)) != 0)
        {
          v35 = v32 & (v32 >> 1);
        }

        v32 += v35;
      }

      while (v32 < v34);
      v36 = v32;
      if (v32 >= 0x2000000001)
      {
        goto LABEL_74;
      }

LABEL_59:
      v27 = *(v12 + 104);
      v37 = realloc(v27, v36);
      if (!v37)
      {
        goto LABEL_73;
      }

      *(v12 + 96) = v36;
      *(v12 + 104) = v37;
      v33 = *(v12 + 88);
LABEL_61:
      if (v36 - v33 >= v31)
      {
        v38 = v31;
      }

      else
      {
        v38 = v36 - v33;
      }

      v39 = AAByteStreamRead(a2, (*(v12 + 104) + v33), v38);
      if (v39 < 0)
      {
        goto LABEL_76;
      }

      if (!v39)
      {
        goto LABEL_69;
      }

      v33 = *v21 + v39;
      if (__CFADD__(*v21, v39))
      {
        goto LABEL_76;
      }

      v32 = *(v12 + 96);
      if (v33 > v32)
      {
        goto LABEL_76;
      }

      *v21 = v33;
      v31 -= v39;
      if (!v31)
      {
        goto LABEL_69;
      }
    }

    v33 = v32;
LABEL_57:
    v36 = v32;
    goto LABEL_61;
  }

  v21 = (v12 + 64);
  v23 = *(v12 + 64);
  v22 = *(v12 + 72);
  while (1)
  {
    if (v23 != v22)
    {
      goto LABEL_32;
    }

    v24 = v22 + 0x40000;
    if ((v22 + 0x40000) < 0)
    {
      goto LABEL_76;
    }

    if (v22 > 0xFFFFFFFFFFFBFFFFLL)
    {
      v23 = v22;
LABEL_32:
      v26 = v22;
      goto LABEL_36;
    }

    do
    {
      while (!v22)
      {
        v22 = 0x4000;
        v26 = 0x4000;
        if (v24 <= 0x4000)
        {
          goto LABEL_34;
        }
      }

      v25 = v22 >> 1;
      if ((v22 & (v22 >> 1)) != 0)
      {
        v25 = v22 & (v22 >> 1);
      }

      v22 += v25;
    }

    while (v22 < v24);
    v26 = v22;
    if (v22 >= 0x2000000001)
    {
      break;
    }

LABEL_34:
    v27 = *(v12 + 80);
    v28 = realloc(v27, v26);
    if (!v28)
    {
LABEL_73:
      free(v27);
      goto LABEL_75;
    }

    *(v12 + 72) = v26;
    *(v12 + 80) = v28;
    v23 = *(v12 + 64);
LABEL_36:
    if (v26 - v23 >= v20)
    {
      v29 = v20;
    }

    else
    {
      v29 = v26 - v23;
    }

    v30 = AAByteStreamRead(a2, (*(v12 + 80) + v23), v29);
    if (v30 < 0)
    {
      goto LABEL_76;
    }

    if (!v30)
    {
      goto LABEL_44;
    }

    v23 = *v21 + v30;
    if (__CFADD__(*v21, v30))
    {
      goto LABEL_76;
    }

    v22 = *(v12 + 72);
    if (v23 > v22)
    {
      goto LABEL_76;
    }

    *v21 = v23;
    v20 -= v30;
    if (!v20)
    {
      goto LABEL_44;
    }
  }

LABEL_74:
  *__error() = 12;
LABEL_75:
  *v21 = 0;
  v21[1] = 0;
  v21[2] = 0;
LABEL_76:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCStreamOpenWithState", 1103, 55, 0, "loading state", v41);
LABEL_77:
  AAByteStreamClose(v11);
  return 0;
}

uint64_t AAAFSCGetMetadata(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v5 = a1;
  memset(&v15, 0, sizeof(v15));
  __s[0] = 0;
  __s[1] = 0;
  v14 = 0;
  if (!fstat(a1, &v15))
  {
    if (statIsCompressed(v15.st_flags))
    {
      if ((loadDecmpfsXattr(v5, a2, &v12, __s) & 0x80000000) != 0)
      {
        v7 = "loading decmpfs";
        v8 = 1137;
      }

      else
      {
        if (*a2 <= 0xDu && ((1 << *a2) & 0x2A88) != 0)
        {
          v9 = 0;
LABEL_10:
          *a3 = 0;
          goto LABEL_11;
        }

        v11 = resourceForkSize(v5);
        *a3 = v11;
        if (v11 != -1)
        {
          v9 = 0;
          goto LABEL_11;
        }

        v7 = "invalid resource fork";
        v8 = 1140;
      }

      v6 = 0;
      goto LABEL_3;
    }

    v9 = 0;
    *a2 = -1;
    goto LABEL_10;
  }

  v6 = *__error();
  v7 = "fstat";
  v8 = 1123;
LABEL_3:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCGetMetadata", v8, 55, v6, v7);
  v9 = 0xFFFFFFFFLL;
LABEL_11:
  free(v14);
  memset_s(__s, 0x18uLL, 0, 0x18uLL);
  return v9;
}

uint64_t loadDecmpfsXattr(int a1, _DWORD *a2, void *a3, unint64_t *a4)
{
  *a4 = 0;
  v8 = a4[1];
  if (v8 >> 16)
  {
    v12 = 0;
    v11 = a4[2];
  }

  else
  {
    do
    {
      v9 = (v8 >> 1) + v8;
      if (((v8 >> 1) & v8) != 0)
      {
        v9 = ((v8 >> 1) & v8) + v8;
      }

      if (v8)
      {
        v8 = v9;
      }

      else
      {
        v8 = 0x4000;
      }
    }

    while (v8 < 0x10000);
    v10 = a4[2];
    v11 = realloc(v10, v8);
    if (!v11)
    {
      free(v10);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadDecmpfsXattr", 255, 55, 0, "blob reserve");
      return 0xFFFFFFFFLL;
    }

    a4[1] = v8;
    a4[2] = v11;
    v12 = *a4;
  }

  v13 = fgetxattr(a1, "com.apple.decmpfs", &v11[v12], v8 - v12, 0, 32);
  if (v13 < 16 || (v14 = *a4 + v13, __CFADD__(*a4, v13)) || v14 > a4[1])
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadDecmpfsXattr", 261, 55, 0, "invalid/missing decmpfs");
    return 0xFFFFFFFFLL;
  }

  *a4 = v14;
  v15 = a4[2];
  if (*v15 != 1668116582)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadDecmpfsXattr", 263, 55, 0, "Invalid decmpfs xattr");
    return 0xFFFFFFFFLL;
  }

  v16 = *(v15 + 8);
  *a2 = *(v15 + 4);
  *a3 = v16;
  v17 = v14 - 16;
  if (v14 < 0x10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadDecmpfsXattr", 268, 55, 0, "blob resize");
    return 0xFFFFFFFFLL;
  }

  if (v14 != 16)
  {
    memmove(v15, (v15 + 16), v14 - 16);
  }

  result = 0;
  *a4 = v17;
  return result;
}

unint64_t resourceForkSize(int a1)
{
  result = fgetxattr(a1, "com.apple.ResourceFork", 0, 0, 0, 32);
  if ((result & 0x8000000000000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkSize", 309, 55, 0, "Missing resource fork xattr");
  }

  else
  {
    if (!HIDWORD(result))
    {
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkSize", 310, 55, 0, "Invalid resource fork xattr");
  }

  return 0xFFFFFFFFLL;
}

uint64_t AAAFSCSetMetadata(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  memset(&v32, 0, sizeof(v32));
  v30 = 0;
  v31 = -1;
  __s = 0;
  v28 = 0;
  v29 = 0;
  if (a2 <= 0xD && ((1 << a2) & 0x2A88) != 0)
  {
    if (a3)
    {
      v6 = "invalid resource fork size";
      v7 = 1169;
LABEL_5:
      v8 = 0;
LABEL_10:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCSetMetadata", v7, 55, v8, v6, v25, v26, __s, v28, v29);
      v10 = 0;
LABEL_11:
      v11 = 0xFFFFFFFFLL;
      goto LABEL_12;
    }

    v9 = 0;
  }

  else
  {
    v9 = a3 != 0;
  }

  if (fstat(a1, &v32))
  {
    v8 = *__error();
    v6 = "fstat";
    v7 = 1171;
    goto LABEL_10;
  }

  st_size = v32.st_size;
  if ((AAAFSCGetMetadata(a1, &v31, &v30) & 0x80000000) != 0)
  {
    v6 = "reading current metadata";
    v7 = 1175;
    goto LABEL_5;
  }

  v14 = v31 != -1;
  v15 = v31 != a2 && v31 != -1;
  if (v31 != a2)
  {
    v14 = 0;
  }

  if (v30 <= v3)
  {
    v14 = 0;
  }

  if (!v15 && (!v9 || !v14))
  {
    if (v31 == a2)
    {
      goto LABEL_61;
    }

    if (v31 != -1)
    {
      v6 = "invalid state";
      v7 = 1200;
      goto LABEL_5;
    }

    goto LABEL_29;
  }

  if ((decompressToData(a1) & 0x80000000) != 0)
  {
    v6 = "decompression failed";
    v7 = 1188;
    goto LABEL_5;
  }

  v30 = 0;
  v31 = -1;
  if (a2 != -1)
  {
LABEL_29:
    v10 = AAAFSCStreamOpenWithMetadata(a1, st_size, a2, v3);
    if (!v10)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCSetMetadata", 1202, 55, 0, "open AFSC stream", v25, v26, __s, v28, v29);
      goto LABEL_11;
    }

    v16 = 0;
    do
    {
      v17 = (v16 >> 1) + v16;
      if (((v16 >> 1) & v16) != 0)
      {
        v17 = ((v16 >> 1) & v16) + v16;
      }

      if (v16)
      {
        v16 = v17;
      }

      else
      {
        v16 = 0x4000;
      }
    }

    while (v16 < 0x80000);
    v18 = malloc(v16);
    if (!v18)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCSetMetadata", 1205, 55, 0, "blob alloc", v25, v26, 0, 0, 0);
      goto LABEL_11;
    }

    v19 = v18;
    v28 = v16;
    v29 = v18;
    if (st_size)
    {
      v20 = 0;
      v25 = v18;
      v26 = st_size;
      while (1)
      {
        __s = 0;
        if (v16 >= st_size - v20)
        {
          v21 = st_size - v20;
        }

        else
        {
          v21 = v16;
        }

        if (pread(a1, v19, v21, v20) != v21)
        {
LABEL_72:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCSetMetadata", 1213, 55, 0, "read data", v25, v26, __s, v28, v29);
          goto LABEL_11;
        }

        if (v21)
        {
          if (__CFADD__(__s, v21))
          {
            goto LABEL_72;
          }

          v16 = v28;
          if (__s + v21 > v28)
          {
            goto LABEL_72;
          }

          __s += v21;
          if (*(v10 + 3))
          {
            v22 = 0;
            v23 = v21;
            while (1)
            {
              v24 = (*(v10 + 3))(*v10, v19, v23);
              if (v24 < 1)
              {
                break;
              }

              v19 += v24;
              v22 += v24;
              v23 -= v24;
              if (!v23)
              {
                goto LABEL_57;
              }
            }

            v22 = v24;
LABEL_57:
            v19 = v25;
            st_size = v26;
          }

          else
          {
            v22 = -1;
          }
        }

        else
        {
          v22 = *(v10 + 3) ? 0 : -1;
        }

        if (v22 != v21)
        {
          break;
        }

        v20 += v21;
        if (v20 >= st_size)
        {
          goto LABEL_60;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "AAAFSCSetMetadata", 1215, 55, 0, "write data", v25, v26, __s, v28, v29);
      goto LABEL_11;
    }

LABEL_60:
    if (AAByteStreamClose(v10) < 0)
    {
      v6 = "AFSC stream close";
      v7 = 1222;
      goto LABEL_5;
    }
  }

LABEL_61:
  if ((AAAFSCGetMetadata(a1, &v31, &v30) & 0x80000000) != 0)
  {
    v6 = "reading current metadata";
    v7 = 1229;
    goto LABEL_5;
  }

  if (v31 != a2 || (v11 = 0, v10 = 0, v3) && v30 != v3)
  {
    if ((resizeResourceFork(a1, v3) & 0x80000000) == 0)
    {
      v10 = 0;
      v11 = 0;
      goto LABEL_12;
    }

    v6 = "resizing resource fork";
    v7 = 1236;
    goto LABEL_5;
  }

LABEL_12:
  free(v29);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  AAByteStreamClose(v10);
  return v11;
}

uint64_t decompressToData(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  __s = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v54 = -1;
  v53 = 0;
  do
  {
    v3 = (v2 >> 1) + v2;
    if (((v2 >> 1) & v2) != 0)
    {
      v3 = ((v2 >> 1) & v2) + v2;
    }

    if (v2)
    {
      v2 = v3;
    }

    else
    {
      v2 = 0x4000;
    }
  }

  while (v2 <= 0x10000);
  v4 = malloc(v2);
  if (!v4)
  {
    p_s = &__s;
LABEL_22:
    *p_s = 0;
    p_s[1] = 0;
    p_s[2] = 0;
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", 448, 55, 0, "blob alloc");
    v8 = 0;
LABEL_42:
    v18 = 0;
LABEL_43:
    v19 = 0;
    goto LABEL_44;
  }

  v5 = 0;
  v59 = v2;
  v60 = v4;
  do
  {
    v6 = (v5 >> 1) + v5;
    if (((v5 >> 1) & v5) != 0)
    {
      v6 = ((v5 >> 1) & v5) + v5;
    }

    if (v5)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0x4000;
    }
  }

  while (v5 < 0x80000);
  v7 = malloc(v5);
  if (!v7)
  {
    p_s = &v55;
    goto LABEL_22;
  }

  v8 = v7;
  v56 = v5;
  v57 = v7;
  if ((loadDecmpfsXattr(v1, &v54, &v53, &__s) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", 451, 55, 0, "loading decmpfs xattr");
    goto LABEL_42;
  }

  v9 = v54;
  v10 = v54 - 3;
  if (v54 - 3 > 0xB)
  {
    v11 = 0;
  }

  else
  {
    v11 = byte_296AD2070[v10];
  }

  if (v54 > 0xE)
  {
    goto LABEL_30;
  }

  if (((1 << v54) & 0x180) != 0)
  {
    v13 = 0;
    v14 = 2304;
    goto LABEL_35;
  }

  if (((1 << v54) & 0x1800) != 0)
  {
    v13 = 0;
    v14 = COMPRESSION_LZFSE;
    goto LABEL_35;
  }

  if (((1 << v54) & 0x6000) != 0)
  {
    v13 = 0;
    v14 = COMPRESSION_LZBITMAP;
  }

  else
  {
LABEL_30:
    if (v10 >= 2)
    {
      v14 = -1;
      v13 = 1;
    }

    else
    {
      v13 = 0;
      v14 = 1285;
    }
  }

LABEL_35:
  v15 = v53;
  if (!v53 || (v16 = v53 + 0xFFFF, (v53 + 0xFFFF) >> 48))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "chunkCount", 128, 55, 0, "invalid uncompressed size");
    goto LABEL_41;
  }

  v17 = v16 >> 16;
  if (v16 >> 16 == 0xFFFFFFFF)
  {
LABEL_41:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", 457, 55, 0, "invalid uncompressed size");
    goto LABEL_42;
  }

  if (v13)
  {
    v18 = 0;
    goto LABEL_51;
  }

  v22 = v11;
  v23 = compression_decode_scratch_buffer_size(v14);
  if (v23)
  {
    if (v23 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_62:
      v27 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", 463, 55, v27, "malloc");
      goto LABEL_42;
    }

    v18 = malloc(v23);
    v11 = v22;
    if (!v18)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v18 = 0;
    v11 = v22;
  }

LABEL_51:
  if (v9 <= 0xD && ((1 << v9) & 0x2A88) != 0)
  {
    v24 = v60;
    if (*v60 == v11)
    {
      v25 = __s - 1;
      memcpy(v8, v60 + 1, __s - 1);
    }

    else
    {
      v25 = compression_decode_buffer(v8, 0x10000uLL, v60, __s, v18, v14);
    }

    if (v25 - 65537 <= 0xFFFFFFFFFFFEFFFFLL)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", 487, 55, 0, "invalid chunk");
      goto LABEL_43;
    }

    v55 = v25;
    v26 = pwrite(v1, v24, v25, 0);
    v19 = 0;
    if (v26 != v25)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", 490, 55, 0, "writing chunk");
      goto LABEL_43;
    }

LABEL_59:
    if (fremovexattr(v1, "com.apple.ResourceFork", 32) < 0)
    {
      v32 = *__error();
      v30 = "Removing xattr";
      v31 = 548;
      goto LABEL_76;
    }

    if (fremovexattr(v1, "com.apple.decmpfs", 32) < 0)
    {
      v32 = *__error();
      v30 = "Removing xattr";
      v31 = 549;
      goto LABEL_76;
    }

    v20 = 0;
    goto LABEL_45;
  }

  v47 = v11;
  v19 = calloc(v17 + 1, 4uLL);
  if (!v19)
  {
    v32 = *__error();
    v30 = "malloc";
    v31 = 498;
    goto LABEL_76;
  }

  if ((loadChunkOffsets(v1, v9, v16 >> 16, v19) & 0x80000000) != 0)
  {
    v30 = "loading chunk offsets";
    v31 = 499;
    goto LABEL_75;
  }

  if (v16 < 0x10000)
  {
    v28 = 0;
    v29 = 1;
LABEL_68:
    if (v28 != v15 || !v29)
    {
      v30 = "corrupted resource fork";
      v31 = 544;
      goto LABEL_75;
    }

    goto LABEL_59;
  }

  v28 = 0;
  v33 = 0;
  v45 = v59;
  if (v17 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v17;
  }

  v35 = v19 + 1;
  v36 = v17 - 1;
  value = v60;
  while (1)
  {
    v48 = v34;
    __s = 0;
    if (!((v5 - v33) >> 16))
    {
      v30 = "obuf full";
      v31 = 507;
      goto LABEL_75;
    }

    v49 = v28;
    v37 = *(v35 - 1);
    v38 = *v35;
    v46 = v35;
    v39 = *v35 - v37;
    if (v45 < v39)
    {
      v30 = "invalid chunk size";
      v31 = 510;
      goto LABEL_75;
    }

    v51 = v36;
    v52 = v33;
    if (fgetxattr(v1, "com.apple.ResourceFork", value, v38 - v37, v37, 32) != v39)
    {
      v30 = "read resource fork chunk";
      v31 = 513;
      goto LABEL_75;
    }

    if (v38 != v37)
    {
      __s = v38 - v37;
    }

    v28 = v49;
    if (*value == v47)
    {
      v40 = (v39 - 1);
      memcpy(&v8[v52], value + 1, v40);
    }

    else
    {
      v40 = compression_decode_buffer(&v8[v52], 0x10000uLL, value, v39, v18, v14);
    }

    v41 = v51;
    if (v40 != 0x10000 && (!v40 || v51 || v40 > 0x10000) || (v33 = v52 + v40, __CFADD__(v52, v40)) || v5 < v33)
    {
      v30 = "invalid chunk";
      v31 = 532;
      goto LABEL_75;
    }

    v55 = v52 + v40;
    if (!v51 || !((v5 - v33) >> 16))
    {
      break;
    }

    v42 = v48;
    v43 = v46;
LABEL_100:
    v35 = v43 + 1;
    v36 = v41 - 1;
    v34 = v42 - 1;
    if (!v34)
    {
      v29 = v33 == 0;
      goto LABEL_68;
    }
  }

  v44 = v52 + v40;
  if (pwrite(v1, v8, v33, v49) == v33)
  {
    v28 = v44 + v49;
    v55 = 0;
    v33 = 0;
    v42 = v48;
    v43 = v46;
    v41 = v51;
    goto LABEL_100;
  }

  v30 = "writing chunk";
  v31 = 539;
LABEL_75:
  v32 = 0;
LABEL_76:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "decompressToData", v31, 55, v32, v30);
LABEL_44:
  v20 = 0xFFFFFFFFLL;
LABEL_45:
  free(v60);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  free(v8);
  memset_s(&v55, 0x18uLL, 0, 0x18uLL);
  free(v18);
  free(v19);
  return v20;
}

uint64_t resizeResourceFork(uint64_t a1, unsigned int a2)
{
  v3 = a1;
  __s = 0;
  v58 = 0;
  __ptr = 0;
  v56 = -1;
  v55 = 0;
  if ((loadDecmpfsXattr(a1, &v56, &v55, &__s) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", 574, 55, 0, "loading decmpfs xattr");
    goto LABEL_8;
  }

  v4 = v56;
  if ((v56 + 1) <= 0xE && ((1 << (v56 + 1)) & 0x5511) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", 575, 55, 0, "invalid compression type");
LABEL_8:
    v6 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  v10 = resourceForkSize(v3);
  if (v10 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", 579, 55, 0, "invalid resource fork");
    goto LABEL_8;
  }

  if (a2 < v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", 580, 55, 0, "can't resize resource fork %u to %u");
    goto LABEL_8;
  }

  v11 = a2 - v10;
  if (a2 == v10)
  {
    v6 = 0;
    v7 = 0;
LABEL_17:
    v8 = 0;
    goto LABEL_10;
  }

  v12 = v55;
  if (!v55 || (v13 = v55 + 0xFFFF, (v55 + 0xFFFF) >> 48))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "chunkCount", 128, 55, 0, "invalid uncompressed size");
    goto LABEL_43;
  }

  v14 = v13 >> 16;
  if ((v13 >> 16) + 1 <= 1)
  {
LABEL_43:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", 589, 55, 0, "invalid uncompressed size");
    goto LABEL_8;
  }

  v7 = calloc((v13 >> 16) + 1, 4uLL);
  v15 = calloc((v13 >> 16) + 1, 4uLL);
  v6 = v15;
  if (!v7 || !v15)
  {
    v27 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", 594, 55, v27, "malloc");
    goto LABEL_9;
  }

  if ((loadChunkOffsets(v3, v4, v13 >> 16, v7) & 0x80000000) != 0)
  {
    v47 = "loading chunk offsets";
    v48 = 595;
    goto LABEL_98;
  }

  v6[v14] = v11 + v7[v14];
  v16 = v13 >> 16;
  while (v16)
  {
    v17 = (v16 - 1);
    v18 = v12 - (v17 << 16);
    if (v18 >= 0x10000)
    {
      LODWORD(v18) = 0x10000;
    }

    v19 = v7[v16];
    v20 = v7[v17];
    v21 = v6[v16];
    v22 = v19 - v20;
    v23 = v21 - v20;
    if (v23 >= 0x10000)
    {
      v23 = 0x10000;
    }

    if (v22 > v23)
    {
      v23 = v22;
    }

    v24 = (v22 & 0xFFFF0000) != 0 || v22 >= v18;
    if (v24)
    {
      v25 = v22;
    }

    else
    {
      v25 = v23;
    }

    v24 = v21 >= v25;
    v26 = v21 - v25;
    v6[v17] = v26;
    if (!v24)
    {
      v47 = "resource fork resize failed";
      v48 = 607;
      goto LABEL_98;
    }

    LODWORD(v16) = v17;
    if (v26 < v7[v17])
    {
      v47 = "invalid state when resizing resource fork";
      v48 = 608;
      goto LABEL_98;
    }
  }

  if (*v6 != *v7)
  {
    v47 = "resource fork resize failed";
    v48 = 610;
    goto LABEL_98;
  }

  v28 = v58;
  if (v58 <= 0x10000)
  {
    do
    {
      v29 = (v28 >> 1) + v28;
      if (((v28 >> 1) & v28) != 0)
      {
        v29 = ((v28 >> 1) & v28) + v28;
      }

      if (v28)
      {
        v28 = v29;
      }

      else
      {
        v28 = 0x4000;
      }
    }

    while (v28 < 0x10001);
    v30 = __ptr;
    v31 = realloc(__ptr, v28);
    if (!v31)
    {
      free(v30);
      __s = 0;
      v58 = 0;
      __ptr = 0;
      v47 = "blob alloc";
      v48 = 613;
      goto LABEL_98;
    }

    __ptr = v31;
  }

  v32 = __s;
  if (v13 < 0x10000)
  {
    goto LABEL_90;
  }

  value = __ptr;
  v33 = v7[(v14 - 1)];
  __n = v7[v14];
  size_4 = v14 - 1;
  v49 = &v6[(v14 - 1)];
  if (v33 == *v49 && __n - v33 == v6[v14] - *v49)
  {
LABEL_89:
    __ptr = value;
LABEL_90:
    __s = v32;
    v58 = v28;
    if ((storeChunkOffsets(v3, v4, v14, v6) & 0x80000000) != 0)
    {
      v47 = "storing new offsets";
      v48 = 635;
      goto LABEL_98;
    }

    goto LABEL_17;
  }

  v35 = v6[v14] - *v49;
  v36 = __n - v33;
  v37 = v28;
  while (1)
  {
    size = v35;
    v38 = v36;
    v39 = v36;
    v40 = fgetxattr(v3, "com.apple.ResourceFork", value, v36, v33, 32);
    v41 = size;
    if (v40 != v39)
    {
LABEL_93:
      v58 = v28;
      __ptr = value;
      __s = 0;
      v47 = "read chunk";
      v48 = 628;
      goto LABEL_98;
    }

    if (__n == v33)
    {
      v42 = 0;
    }

    else
    {
      v42 = v38;
      if (v37 < v38)
      {
        goto LABEL_93;
      }
    }

    if (size <= v38)
    {
      v32 = v42;
      v44 = v49;
      goto LABEL_82;
    }

    __na = size - v38;
    v32 = v42 + __na;
    if (v37 < v42 + __na)
    {
      break;
    }

    if (value)
    {
      v45 = value;
LABEL_80:
      memset_s(&v45[v42], __na, 0, __na);
      value = v45;
    }

    else
    {
      value = 0;
    }

    v44 = v49;
    v41 = size;
LABEL_82:
    if (fsetxattr(v3, "com.apple.ResourceFork", value, v41, *v44, 0) < 0)
    {
      v58 = v28;
      __ptr = value;
      __s = v32;
      v47 = "write chunk";
      v48 = 631;
      goto LABEL_98;
    }

    if (size_4)
    {
      v46 = size_4 - 1;
      v33 = v7[size_4 - 1];
      __n = v7[size_4];
      v36 = __n - v33;
      v49 = &v6[size_4 - 1];
      v35 = v6[size_4--] - *v49;
      if (v33 != *v49)
      {
        continue;
      }

      size_4 = v46;
      if (v36 != v35)
      {
        continue;
      }
    }

    goto LABEL_89;
  }

  do
  {
    while (!v37)
    {
      v37 = 0x4000;
      v28 = 0x4000;
      if (v32 <= 0x4000)
      {
        goto LABEL_79;
      }
    }

    v43 = v37 >> 1;
    if ((v37 & (v37 >> 1)) != 0)
    {
      v43 = v37 & (v37 >> 1);
    }

    v37 += v43;
  }

  while (v37 < v32);
  v28 = v37;
  if (v37 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_97;
  }

LABEL_79:
  v45 = realloc(value, v28);
  v37 = v28;
  if (v45)
  {
    goto LABEL_80;
  }

  free(value);
LABEL_97:
  __s = 0;
  v58 = 0;
  __ptr = 0;
  v47 = "store padding";
  v48 = 629;
LABEL_98:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resizeResourceFork", v48, 55, 0, v47);
LABEL_9:
  v8 = 0xFFFFFFFFLL;
LABEL_10:
  free(__ptr);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  free(v7);
  free(v6);
  return v8;
}

unsigned int *afscStreamClose(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load(result + 30);
    v3 = v2 == 0;
    v4 = *(result + 2);
    if (*(result + 3) < v4 || *(result + 8))
    {
      goto LABEL_4;
    }

    v7 = *(result + 11);
    v8 = result[10];
    if (v7)
    {
      if (v8)
      {
LABEL_4:
        v26 = *(result + 3);
        v27 = *(result + 2);
        v5 = "invalid final AFSC stream state, received %zu/%zu bytes";
        v6 = 826;
        goto LABEL_5;
      }

LABEL_17:
      v10 = v1[8] - (v7 != 0);
      v11 = *v1;
      __s = 0uLL;
      v29 = 0;
      if ((v10 - 7) >= 8 && (v10 - 3) >= 2)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeDecmpfsXattr", 286, 55, 0, "unsupported compression type: %d", v10);
        v13 = 0;
      }

      else
      {
        v12 = malloc(0x4000uLL);
        if (!v12)
        {
LABEL_52:
          v13 = 0;
          __s = 0uLL;
          v29 = 0;
LABEL_53:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeDecmpfsXattr", 291, 55, 0, "prepare decmpfs header");
          goto LABEL_54;
        }

        v13 = v12;
        v29 = v12;
        *v12 = 1668116582;
        *(v12 + 1) = v10;
        *(v12 + 1) = v4;
        __s = xmmword_296AD1FE0;
        v14 = v7 + 16;
        if (v7 >= 0xFFFFFFFFFFFFFFF0 || (v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

        v15 = *(v1 + 13);
        if (v14 > 0x4000)
        {
          for (i = 0x4000; i < v14; i += v17)
          {
            v17 = i >> 1;
            if ((i & (i >> 1)) != 0)
            {
              v17 = i & (i >> 1);
            }
          }

          if (i >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_52;
          }

          v18 = realloc(v12, i);
          if (!v18)
          {
            free(v13);
            goto LABEL_52;
          }

          *(&__s + 1) = i;
          v29 = v18;
          v13 = v18;
        }

        v19 = v13 + 16;
        if (v15)
        {
          memcpy(v19, v15, v7);
        }

        else
        {
          memset_s(v19, v7, 0, v7);
        }

        *&__s = v7 + 16;
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

        if ((fsetxattr(v11, "com.apple.decmpfs", v13, v7 + 16, 0, 0) & 0x80000000) == 0)
        {
          free(v13);
          memset_s(&__s, 0x18uLL, 0, 0x18uLL);
          if (ftruncate(*v1, 0))
          {
            v20 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamClose", 840, 55, v20, "ftruncate", v26, v27, __s, v29);
            goto LABEL_6;
          }

          if ((v1[2] & 4) != 0 || (v22 = v1[10], !v22) || 93 * *(v1 + 2) / 0x64uLL >= v22 || v1[8] == 10 || v1[28])
          {
            v23 = v1[28];
            if (!v23 || v23 == v10)
            {
              v24 = v1[29];
              if (v24 && (v25 = v1[10]) != 0 && v24 != v25 && (resizeResourceFork(*v1, v24) & 0x80000000) != 0)
              {
                v5 = "resizing resource fork";
                v6 = 861;
              }

              else
              {
                if ((setUFCompressedBit(*v1) & 0x80000000) == 0)
                {
                  goto LABEL_7;
                }

                v5 = "set UF_COMPRESSED";
                v6 = 865;
              }
            }

            else
            {
              v5 = "compression type mismatch";
              v6 = 858;
            }
          }

          else
          {
            if ((decompressToData(*v1) & 0x80000000) == 0)
            {
              goto LABEL_7;
            }

            v5 = "decompressing to regular data file";
            v6 = 853;
          }

LABEL_5:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamClose", v6, 55, 0, v5, v26, v27, __s, v29);
LABEL_6:
          v3 = 0;
LABEL_7:
          free(*(v1 + 6));
          free(*(v1 + 7));
          free(*(v1 + 10));
          memset_s(v1 + 16, 0x18uLL, 0, 0x18uLL);
          free(*(v1 + 13));
          memset_s(v1 + 22, 0x18uLL, 0, 0x18uLL);
          free(v1);
          return (v3 - 1);
        }

        v21 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeDecmpfsXattr", 297, 55, v21, "fsetxattr decmpfs");
      }

LABEL_54:
      free(v13);
      memset_s(&__s, 0x18uLL, 0, 0x18uLL);
      v5 = "store decmpfs xattr";
      v6 = 837;
      goto LABEL_5;
    }

    if (!v8)
    {
      v7 = 0;
      goto LABEL_17;
    }

    if ((storeChunkOffsets(*result, result[8], result[11], *(result + 6)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "finalizeResourceFork", 796, 55, 0, "storing offsets");
    }

    else
    {
      v9 = resourceForkSize(*v1);
      v1[10] = v9;
      if (v9 != -1)
      {
        v7 = *(v1 + 11);
        v4 = *(v1 + 2);
        goto LABEL_17;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "finalizeResourceFork", 800, 55, 0, "invalid resource fork");
    }

    v5 = "finalize resource fork";
    v6 = 832;
    goto LABEL_5;
  }

  return result;
}

uint64_t afscStreamWrite(uint64_t a1, char *__src, unint64_t a3)
{
  if (atomic_load((a1 + 120)))
  {
    return -1;
  }

  v5 = a3;
  v7 = *(a1 + 24);
  v8 = __CFADD__(v7, a3);
  v9 = v7 + a3;
  if (v8 || v9 > *(a1 + 16))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamWrite", 923, 55, 0, "too many bytes received");
LABEL_6:
    v4 = -1;
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

    v4 = 0;
    v14 = (a1 + 64);
    v13 = *(a1 + 64);
    v36 = (a1 + 64);
    do
    {
      if (v5 >= 0x10000 - v13)
      {
        v15 = 0x10000 - v13;
      }

      else
      {
        v15 = v5;
      }

      v16 = v13 + v15;
      if (__CFADD__(v13, v15) || (v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      v17 = *(a1 + 72);
      if (v17 < v16)
      {
        do
        {
          while (!v17)
          {
            v17 = 0x4000;
            v19 = 0x4000;
            if (v16 <= 0x4000)
            {
              goto LABEL_25;
            }
          }

          v18 = v17 >> 1;
          if ((v17 & (v17 >> 1)) != 0)
          {
            v18 = v17 & (v17 >> 1);
          }

          v17 += v18;
        }

        while (v17 < v16);
        v19 = v17;
        if (v17 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_69;
        }

LABEL_25:
        v20 = *(a1 + 80);
        v21 = realloc(v20, v19);
        if (v21)
        {
          *(a1 + 72) = v19;
          *(a1 + 80) = v21;
          goto LABEL_27;
        }

        free(v20);
LABEL_69:
        *v14 = 0;
        v14[1] = 0;
        v14[2] = 0;
LABEL_70:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamWrite", 928, 55, 0, "append to ibuf");
        goto LABEL_6;
      }

LABEL_27:
      v22 = *(a1 + 80);
      if (__src)
      {
        memcpy((v22 + *v14), __src, v15);
      }

      else if (v22)
      {
        memset_s((v22 + *v14), v15, 0, v15);
      }

      v13 = *v14 + v15;
      *v14 = v13;
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      v23 = *(a1 + 24) + v15;
      *(a1 + 24) = v23;
      if (v13 == 0x10000 || v13 && v23 == *(a1 + 16))
      {
        v24 = (v23 + 0xFFFFFFFFFFFFLL) >> 16;
        if (*(a1 + 44) <= v24)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushIBuf", 740, 55, 0, "invalid state");
          goto LABEL_72;
        }

        v25 = *(a1 + 88);
        if ((*(a1 + 96) - v25) <= 0x10000)
        {
          if ((flushOBuf_0(a1) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushIBuf", 744, 55, 0, "flushing obuf");
            goto LABEL_72;
          }

          v13 = *(a1 + 64);
          v25 = *(a1 + 88);
        }

        v26 = *(a1 + 80);
        v27 = (*(a1 + 104) + v25);
        v28 = *(a1 + 32);
        if (v28 != 10 && v13 >= 0x78 && ((v29 = v28 - 3, v29 > 0xB) ? (v30 = -1) : (v30 = dword_296AD207C[v29]), (v31 = compression_encode_buffer(v27, 0x10000uLL, *(a1 + 80), v13, *(a1 + 56), v30)) != 0 && ((*(a1 + 8) & 1) != 0 ? (v32 = (v31 >> 6) + 32) : (v32 = 0), (v33 = v32 + v31) != 0 && v33 < v13)))
        {
          if (v33 > v31)
          {
            memset_s(&v27[v31], v32, 0, v32);
          }
        }

        else
        {
          *v27 = *(a1 + 36);
          memcpy(v27 + 1, v26, v13);
          v33 = v13 + 1;
        }

        *(*(a1 + 48) + 4 * (v24 + 1)) = *(*(a1 + 48) + 4 * v24) + v33;
        if (v33)
        {
          v34 = *(a1 + 88);
          v8 = __CFADD__(v34, v33);
          v35 = v34 + v33;
          if (v8 || v35 > *(a1 + 96))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushIBuf", 780, 55, 0, "expand obuf");
LABEL_72:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamWrite", 938, 55, 0, "flushing ibuf");
            goto LABEL_6;
          }

          *(a1 + 88) = v35;
        }

        if (*(a1 + 24) == *(a1 + 16) && (flushOBuf_0(a1) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushIBuf", 784, 55, 0, "flushing obuf");
          goto LABEL_72;
        }

        v13 = 0;
        v14 = v36;
        *v36 = 0;
      }

      __src += v15;
      v4 += v15;
      v5 -= v15;
    }

    while (v5);
    if ((v4 & 0x8000000000000000) == 0)
    {
      return v4;
    }
  }

  v10 = 0;
  atomic_compare_exchange_strong((a1 + 120), &v10, 1u);
  return v4;
}

uint64_t afscStreamCloseWithState(uint64_t a1, void *a2, void *a3)
{
  if (atomic_load((a1 + 120)))
  {
    return 0xFFFFFFFFLL;
  }

  v37 = v3;
  v38 = v4;
  v11 = (a1 + 88);
  v10 = *(a1 + 88);
  if (v10)
  {
    if ((flushOBuf_0(a1) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamCloseWithState", 884, 55, 0, "flushing obuf", v32, v33, v34, v35, v36);
      return 0xFFFFFFFFLL;
    }

    LODWORD(v10) = *v11;
  }

  v12 = *(a1 + 64);
  v32 = *(a1 + 8);
  v33 = *(a1 + 24);
  v13 = *(a1 + 40);
  LODWORD(v34) = *(a1 + 32);
  HIDWORD(v34) = v13;
  v35 = *(a1 + 112);
  v36 = __PAIR64__(v10, v12);
  if (!a2[3])
  {
    goto LABEL_41;
  }

  v14 = 0;
  v15 = *(a1 + 44);
  v16 = &v32;
  v17 = 48;
  while (1)
  {
    v18 = (a2[3])(*a2, v16, v17);
    if (v18 < 1)
    {
      break;
    }

    v16 = (v16 + v18);
    v14 += v18;
    v17 -= v18;
    if (!v17)
    {
      if (v14 < 0)
      {
        goto LABEL_41;
      }

      goto LABEL_13;
    }
  }

  if (v18 < 0)
  {
    goto LABEL_41;
  }

LABEL_13:
  if (!a2[3])
  {
    goto LABEL_41;
  }

  v19 = v15 + 1;
  if (v15 != -1)
  {
    v20 = 0;
    v21 = 4 * v19;
    v22 = *(a1 + 48);
    while (1)
    {
      v23 = (a2[3])(*a2, v22, v21);
      if (v23 < 1)
      {
        break;
      }

      v22 += v23;
      v20 += v23;
      v21 -= v23;
      if (!v21)
      {
        goto LABEL_21;
      }
    }

    v20 = v23;
LABEL_21:
    if (v20 < 0 || !a2[3])
    {
      goto LABEL_41;
    }
  }

  v24 = *(a1 + 64);
  if (v24)
  {
    v25 = 0;
    v26 = *(a1 + 80);
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
        goto LABEL_29;
      }
    }

    v25 = v27;
LABEL_29:
    if (v25 < 0)
    {
      goto LABEL_41;
    }
  }

  if (!a2[3])
  {
    goto LABEL_41;
  }

  v28 = *v11;
  if (*v11)
  {
    v29 = 0;
    v30 = *(a1 + 104);
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
        goto LABEL_37;
      }
    }

    v29 = v31;
LABEL_37:
    if (v29 < 0)
    {
LABEL_41:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "afscStreamCloseWithState", 901, 55, 0, "serializing state", v32, v33, v34, v35, v36);
      return 0xFFFFFFFFLL;
    }
  }

  if (a3)
  {
    *a3 = *(a1 + 24);
  }

  free(*(a1 + 48));
  free(*(a1 + 56));
  free(*(a1 + 80));
  memset_s((a1 + 64), 0x18uLL, 0, 0x18uLL);
  free(*(a1 + 104));
  memset_s(v11, 0x18uLL, 0, 0x18uLL);
  free(a1);
  return 0;
}

uint64_t setUFCompressedBit(int a1)
{
  memset(&v5, 0, sizeof(v5));
  if (fstat(a1, &v5))
  {
    v2 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "setUFCompressedBit", 115, 55, v2, "fstat");
    return 0xFFFFFFFFLL;
  }

  if ((v5.st_flags & 0x20) == 0 && fchflags(a1, v5.st_flags | 0x20) < 0)
  {
    v4 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "setUFCompressedBit", 120, 55, v4, "fchflags UF_COMPRESSED");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t storeChunkOffsets(int fd, int a2, unsigned int a3, _DWORD *a4)
{
  v52 = *MEMORY[0x29EDCA608];
  v35 = 0uLL;
  value = 0;
  if (a2 == 4)
  {
    v5 = 8 * a3 + 264;
  }

  else
  {
    v5 = 4 * a3 + 4;
  }

  if (v5 >= 0xFFFFFFFF)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size", v35, value);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeChunkOffsets", 373, 55, 0, "invalid file size", v35, value);
LABEL_41:
    v11 = 0;
    goto LABEL_42;
  }

  if (a2 == 4)
  {
    v8 = a3;
    if (fsetxattr(fd, "com.apple.ResourceFork", &old_resource_fork_map_0, 0x32uLL, a4[a3], 0) < 0)
    {
      v30 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeChunkOffsets", 379, 55, v30, "fsetxattr resource fork", v35, value);
      goto LABEL_41;
    }

    v9 = a4[a3];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v10 = malloc(0x4000uLL);
    v11 = v10;
    if (!v10)
    {
      v35 = 0uLL;
      v33 = 399;
LABEL_45:
      value = 0;
LABEL_53:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeChunkOffsets", v33, 55, 0, "prepare zlib header", v35, value);
      goto LABEL_42;
    }

    value = v10;
    *v10 = 0x10000;
    *(v10 + 1) = bswap32(v9);
    *(v10 + 2) = bswap32(v9 - 256);
    *(v10 + 3) = 838860800;
    v12 = v50;
    *(v10 + 13) = v49;
    *(v10 + 14) = v12;
    *(v10 + 15) = v51;
    v13 = v46;
    *(v10 + 9) = v45;
    *(v10 + 10) = v13;
    v14 = v48;
    *(v10 + 11) = v47;
    *(v10 + 12) = v14;
    v15 = v42;
    *(v10 + 5) = v41;
    *(v10 + 6) = v15;
    v16 = v44;
    *(v10 + 7) = v43;
    *(v10 + 8) = v16;
    v17 = v38;
    *(v10 + 1) = v37;
    *(v10 + 2) = v17;
    v18 = v40;
    *(v10 + 3) = v39;
    *(v10 + 4) = v18;
    *(v10 + 64) = bswap32(v9 - 260);
    *(v10 + 65) = a3;
    v35 = xmmword_296AD1FF0;
    if (a3)
    {
      v19 = 0;
      v5 = 264;
      v20 = 0x4000;
      while (1)
      {
        v21 = v5 + 8;
        if (v5 >= 0xFFFFFFFFFFFFFFF8 || (v21 & 0x8000000000000000) != 0)
        {
          v33 = 406;
          v11 = value;
          goto LABEL_53;
        }

        v22 = a4[v19++];
        v23 = a4[v19];
        if (v20 < v21)
        {
          break;
        }

LABEL_24:
        *&v11[v5] = (v22 - 260) | ((v23 - v22) << 32);
        v5 = v35 + 8;
        *&v35 = v35 + 8;
        if (v19 == v8)
        {
          v11 = value;
          goto LABEL_49;
        }
      }

      do
      {
        while (!v20)
        {
          v20 = 0x4000;
          v25 = 0x4000;
          if (v21 <= 0x4000)
          {
            goto LABEL_22;
          }
        }

        v24 = v20 >> 1;
        if ((v20 & (v20 >> 1)) != 0)
        {
          v24 = v20 & (v20 >> 1);
        }

        v20 += v24;
      }

      while (v20 < v21);
      v25 = v20;
      if (v20 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_57;
      }

LABEL_22:
      v26 = realloc(v11, v25);
      if (v26)
      {
        *(&v35 + 1) = v25;
        value = v26;
        v11 = v26;
        v20 = v25;
        goto LABEL_24;
      }

      free(v11);
LABEL_57:
      v11 = 0;
      v35 = 0uLL;
      v33 = 406;
      goto LABEL_45;
    }

    v5 = 264;
  }

  else
  {
    v27 = 0;
    do
    {
      while (!v27)
      {
        v27 = 0x4000;
        if (v5 <= 0x4000)
        {
          v27 = 0x4000;
          goto LABEL_36;
        }
      }

      v28 = v27 >> 1;
      if ((v27 & (v27 >> 1)) != 0)
      {
        v28 = v27 & (v27 >> 1);
      }

      v27 += v28;
    }

    while (v27 < v5);
    if (v27 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_39:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeChunkOffsets", 411, 55, 0, "prepare non zlib header", 0, 0, 0);
      goto LABEL_41;
    }

LABEL_36:
    v29 = malloc(v27);
    if (!v29)
    {
      goto LABEL_39;
    }

    v11 = v29;
    *(&v35 + 1) = v27;
    value = v29;
    if (a4)
    {
      memcpy(v29, a4, v5);
    }

    else
    {
      memset_s(v29, v5, 0, v5);
    }

    *&v35 = v5;
  }

LABEL_49:
  if ((fsetxattr(fd, "com.apple.ResourceFork", v11, v5, 0, 0) & 0x80000000) == 0)
  {
    v31 = 0;
    goto LABEL_43;
  }

  v34 = *__error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeChunkOffsets", 420, 55, v34, "fsetxattr resource fork", v35, value);
LABEL_42:
  v31 = 0xFFFFFFFFLL;
LABEL_43:
  free(v11);
  memset_s(&v35, 0x18uLL, 0, 0x18uLL);
  return v31;
}

uint64_t flushOBuf_0(uint64_t a1)
{
  v2 = (*(a1 + 8) & 2) != 0 && *(a1 + 32) != 10;
  v3 = *(a1 + 112);
  if (v3)
  {
    if (v3 > 0xD || ((1 << v3) & 0x2A88) == 0)
    {
      v6 = (a1 + 40);
      LODWORD(v5) = *(a1 + 40);
LABEL_15:
      v8 = v3 > 0xD;
      v9 = (1 << v3) & 0x2A88;
      if (!v8 && v9 != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushOBuf", 704, 55, 0, "requested compression type requests inline storage");
        return 0xFFFFFFFFLL;
      }

LABEL_21:
      if (!v5)
      {
        v11 = *(a1 + 44);
        v12 = 8 * v11 + 264;
        v13 = 4 * v11 + 4;
        if (*(a1 + 32) == 4)
        {
          v5 = v12;
        }

        else
        {
          v5 = v13;
        }

        v7 = 0xFFFFFFFFLL;
        if (v5 >= 0xFFFFFFFF)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size");
          *v6 = -1;
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushOBuf", 714, 55, 0, "File too large for AFSC");
          return v7;
        }

        *v6 = v5;
      }

      if ((fsetxattr(*a1, "com.apple.ResourceFork", *(a1 + 104), *(a1 + 88), v5, 0) & 0x80000000) == 0)
      {
        v7 = 0;
        *(a1 + 40) += *(a1 + 88);
        *(a1 + 88) = 0;
        return v7;
      }

      v15 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushOBuf", 723, 55, v15, "fsetxattr resource fork");
      return 0xFFFFFFFFLL;
    }
  }

  v6 = (a1 + 40);
  LODWORD(v5) = *(a1 + 40);
  if (v5 != 0 || v2 || *(a1 + 44) != 1 || *(a1 + 24) != *(a1 + 16) || (*(a1 + 88) + 16) >= 0xE01)
  {
    if (!v3)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  return 0;
}

uint64_t loadChunkOffsets(int a1, int a2, unsigned int a3, _DWORD *a4)
{
  __s = 0;
  v20 = 0;
  v21 = 0;
  v5 = 4 * a3 + 4;
  if (a2 == 4)
  {
    v6 = 8 * a3 + 264;
  }

  else
  {
    v6 = 4 * a3 + 4;
  }

  if (v6 >= 0xFFFFFFFF)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size");
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadChunkOffsets", 329, 55, 0, "invalid file size");
LABEL_24:
    v14 = 0;
    goto LABEL_25;
  }

  v10 = 0;
  v11 = a3;
  do
  {
    while (!v10)
    {
      v10 = 0x4000;
      if (v6 <= 0x4000)
      {
        v10 = 0x4000;
        goto LABEL_16;
      }
    }

    v12 = v10 >> 1;
    if ((v10 & (v10 >> 1)) != 0)
    {
      v12 = v10 & (v10 >> 1);
    }

    v10 += v12;
  }

  while (v10 < v6);
  if (v10 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_23:
    v20 = 0;
    v21 = 0;
    __s = 0;
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadChunkOffsets", 332, 55, 0, "alloc buffer");
    goto LABEL_24;
  }

LABEL_16:
  v13 = malloc(v10);
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v13;
  v20 = v10;
  v21 = v13;
  if (fgetxattr(a1, "com.apple.ResourceFork", v13, v6, 0, 32) != v6)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadChunkOffsets", 335, 55, 0, "read resource fork header");
LABEL_25:
    v17 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  __s = v6;
  if (a2 == 4)
  {
    *a4 = v6;
    if (a3)
    {
      v15 = a4 + 1;
      v16 = 268;
      do
      {
        LODWORD(v6) = v6 + *&v14[v16];
        *v15++ = v6;
        v16 += 8;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    memcpy(a4, v14, v5);
  }

  v17 = 0;
LABEL_26:
  free(v14);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  return v17;
}

AAByteStream AACompressionOutputStreamOpen(AAByteStream compressed_stream, AACompressionAlgorithm compression_algorithm, size_t block_size, AAFlagSet flags, int n_threads)
{
  v24 = *MEMORY[0x29EDCA608];
  v9 = calloc(1uLL, 0x68uLL);
  if (!v9)
  {
    v14 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpen", 254, 19, *v14, "malloc");
    v10 = 0;
LABEL_36:
    free(v9);
    aaCompressionOutputStreamClose(v10);
    return 0;
  }

  v10 = calloc(1uLL, 0x30uLL);
  if (!v10)
  {
    v15 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpen", 256, 19, v15, "malloc");
    goto LABEL_36;
  }

  if (!n_threads)
  {
    n_threads = getDefaultNThreads();
  }

  *(v10 + 2) = n_threads;
  v11 = calloc(n_threads, 8uLL);
  v10[2] = v11;
  if (*(v10 + 2))
  {
    v12 = 0;
    while (1)
    {
      *(v10[2] + 8 * v12) = CompressionWorkerDataCreate(block_size, compression_algorithm);
      v13 = v10[2];
      if (!*(v13 + 8 * v12))
      {
        break;
      }

      ++v12;
      v11 = *(v10 + 2);
      if (v12 >= v11)
      {
        goto LABEL_13;
      }
    }

    v18 = "Worker data allocation";
    v19 = 264;
    goto LABEL_35;
  }

  v13 = v11;
  LODWORD(v11) = 0;
LABEL_13:
  v16 = ThreadPipelineCreate(v11, v13, CompressionWorkerProc, v10, CompressionConsumerProc, 0);
  *v10 = v16;
  if (!v16)
  {
    v18 = "Thread allocation";
    v19 = 267;
LABEL_35:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpen", v19, 19, 0, v18);
    goto LABEL_36;
  }

  v10[3] = compressed_stream;
  qmemcpy(buf, "pbz", sizeof(buf));
  v17 = 122;
  if (compression_algorithm <= 1284)
  {
    if (compression_algorithm)
    {
      if (compression_algorithm != 256)
      {
        if (compression_algorithm == 774)
        {
          v17 = 120;
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v17 = 52;
    }

    else
    {
      v17 = 45;
    }
  }

  else
  {
    if (compression_algorithm <= 2048)
    {
      if (compression_algorithm == 1285)
      {
        goto LABEL_32;
      }

      if (compression_algorithm == 1794)
      {
        v17 = 98;
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (compression_algorithm != 2049)
    {
      if (compression_algorithm == 2304)
      {
        v17 = 102;
        goto LABEL_32;
      }

LABEL_29:
      v18 = "Invalid compression algorithm";
      v19 = 274;
      goto LABEL_35;
    }

    v17 = 101;
  }

LABEL_32:
  v22 = v17;
  v23 = bswap64(block_size);
  if (AAByteStreamWrite(compressed_stream, buf, 0xCuLL) != 12)
  {
    v18 = "writing stream magic";
    v19 = 277;
    goto LABEL_35;
  }

  v9[3] = aaCompressionOutputStreamWrite;
  v9[7] = aaCompressionOutputStreamAbort;
  *v9 = v10;
  v9[1] = aaCompressionOutputStreamClose;
  v9[9] = aaCompressionOutputStreamFlush;
  return v9;
}

void **CompressionWorkerDataCreate(size_t a1, compression_algorithm a2)
{
  v4 = 56;
  v5 = calloc(1uLL, 0x38uLL);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  v5[1] = 0;
  v5[2] = 0;
  *v5 = a1;
  if (a1 >= 0x2000000001)
  {
    *__error() = 12;
    v6[3] = 0;
    v4 = 62;
    v7 = 4;
LABEL_4:
    *__error() = 12;
    v6[v7] = 0;
LABEL_5:
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "CompressionWorkerDataCreate", v4, 19, *v8, "malloc");
    CompressionWorkerDataDestroy(v6);
    return 0;
  }

  v10 = malloc(a1);
  v6[3] = v10;
  v11 = malloc(a1);
  v6[4] = v11;
  v4 = 62;
  if (!v10 || !v11)
  {
    goto LABEL_5;
  }

  *(v6 + 10) = a2;
  if (a2)
  {
    if (a2 != COMPRESSION_LZMA)
    {
      v12 = compression_encode_scratch_buffer_size(a2);
      if (v12)
      {
        if (v12 <= 0x2000000000)
        {
          v13 = malloc(v12);
          v6[6] = v13;
          if (v13)
          {
            return v6;
          }

          v4 = 68;
          goto LABEL_5;
        }

        v4 = 68;
        v7 = 6;
        goto LABEL_4;
      }
    }
  }

  return v6;
}

uint64_t CompressionWorkerProc(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  if (!v3 || (v3 != COMPRESSION_LZMA ? (v5 = compression_encode_buffer(*(a1 + 32), *a1, *(a1 + 24), v2, *(a1 + 48), v3)) : (v4 = PCompressLZMA6Encode(*(a1 + 32), *a1, *(a1 + 24), v2), v5 = v4 & ~(v4 >> 63)), v5 ? (v6 = v5 + (v2 >> 4) >= v2) : (v6 = 1), v6))
  {
    memcpy(*(a1 + 32), *(a1 + 24), v2);
    v5 = v2;
  }

  *(a1 + 16) = v5;
  return 0;
}

uint64_t CompressionConsumerProc(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 40))
  {
    v6 = vrev64q_s8(*(a2 + 8));
    if (AAByteStreamWrite(*(a1 + 24), &v6, 0x10uLL) == 16)
    {
      if (AAByteStreamWrite(*(a1 + 24), *(a2 + 32), *(a2 + 16)) == *(a2 + 16))
      {
        return 0;
      }

      v5 = 119;
    }

    else
    {
      v5 = 115;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "CompressionConsumerProc", v5, 19, 0, "Stream write failed");
    *(a1 + 40) = 1;
  }

  return 0xFFFFFFFFLL;
}

uint64_t aaCompressionOutputStreamWrite(uint64_t a1, char *__src, size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = 0;
  while (1)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = v7[1];
      goto LABEL_7;
    }

    Worker = ThreadPipelineGetWorker(*a1);
    *(a1 + 32) = Worker;
    if (!Worker)
    {
      break;
    }

    v7 = Worker;
    v8 = 0;
    *(Worker + 8) = 0;
    *(Worker + 16) = 0;
LABEL_7:
    if (*v7 - v8 >= v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = *v7 - v8;
    }

    memcpy((v7[3] + v8), __src, v10);
    v11 = *v7;
    v12 = v7[1] + v10;
    v7[1] = v12;
    if (v12 == v11)
    {
      if ((ThreadPipelineRunWorker(*a1) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamWrite", 186, 19, 0, "running worker");
        goto LABEL_18;
      }

      *(a1 + 32) = 0;
    }

    __src += v10;
    v6 += v10;
    v3 -= v10;
    if (!v3)
    {
      return v6;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamWrite", 168, 19, 0, "getting next worker");
LABEL_18:
  *(a1 + 40) = 1;
  return -1;
}

uint64_t *aaCompressionOutputStreamClose(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    if (result[4])
    {
      if ((ThreadPipelineRunWorker(*result) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamClose", 133, 19, 0, "RunWorker");
        v2 = 0;
      }

      else
      {
        v2 = 1;
      }

      v1[4] = 0;
    }

    else
    {
      v2 = 1;
    }

    if ((ThreadPipelineDestroy(*v1) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamClose", 138, 19, 0, "Thread shutdown");
      v2 = 0;
    }

    v3 = v1[2];
    if (v3)
    {
      if (*(v1 + 2))
      {
        v4 = 0;
        do
        {
          CompressionWorkerDataDestroy(*(v1[2] + 8 * v4++));
        }

        while (v4 < *(v1 + 2));
        v3 = v1[2];
      }

      free(v3);
    }

    if (*(v1 + 11) && (AAByteStreamSeek(v1[3], 0, 1) < 0 || (AAByteStreamTruncate(v1[3]) & 0x80000000) != 0))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamClose", 151, 19, "Truncate on compressed stream failed");
    }

    free(v1);
    if (v2)
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

uint64_t aaCompressionOutputStreamFlush(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v2;
  v10 = v1;
  if ((ThreadPipelineFlush(*a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamFlush", 209, 19, 0, "ThreadPipelineFlush", v2, v10, v3, v4);
    goto LABEL_16;
  }

  if (*(a1 + 32))
  {
    v7 = AAByteStreamSeek(*(a1 + 24), 0, 1);
    if (v7 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamFlush", 216, 19, 0, "AAByteStreamSeek", v2, v10, v3, v4);
    }

    else
    {
      v8 = v7;
      CompressionWorkerProc(*(a1 + 32));
      if ((CompressionConsumerProc(a1, *(a1 + 32)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamFlush", 220, 19, 0, "CompressionConsumerProc", v9, v10, v3, v4);
      }

      else
      {
        if (v8 == AAByteStreamSeek(*(a1 + 24), v8, 0))
        {
          *(a1 + 44) = 1;
          goto LABEL_9;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamFlush", 223, 19, 0, "AAByteStreamSeek", v9, v10, v3, v4);
      }
    }

LABEL_16:
    *(a1 + 40) = 1;
    return 0xFFFFFFFFLL;
  }

LABEL_9:
  if ((AAByteStreamFlush(*(a1 + 24)) & 0x80000000) != 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "aaCompressionOutputStreamFlush", 230, 19, "Flush on underlying stream failed");
  }

  return 0;
}

AAByteStream AACompressionOutputStreamOpenExisting(AAByteStream compressed_stream, AAFlagSet flags, int n_threads)
{
  v65 = *MEMORY[0x29EDCA608];
  v5 = AAByteStreamSeek(compressed_stream, 0, 2);
  if (v5 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", 311, 19, 0, "Stream seek");
    goto LABEL_15;
  }

  if (!*(compressed_stream + 4))
  {
LABEL_13:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", 315, 19, 0, "Truncated stream");
LABEL_15:
    v13 = 0;
    v14 = 0;
LABEL_16:
    v15 = 0;
    v16 = 0;
LABEL_17:
    v17 = 1;
    goto LABEL_18;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = &v61;
  v10 = 12;
  do
  {
    v11 = (*(compressed_stream + 4))(*compressed_stream, v9, v10, v8);
    if (v11 < 0)
    {
      goto LABEL_13;
    }

    if (!v11)
    {
      break;
    }

    v9 = (v9 + v11);
    v7 += v11;
    v8 += v11;
    v10 -= v11;
  }

  while (v10);
  if (v7 != 12)
  {
    goto LABEL_13;
  }

  if (v61 != 25200 || v62 != 122)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", 316, 19, 0, "Invalid stream magic");
    goto LABEL_15;
  }

  if (v63 <= 0x64u)
  {
    switch(v63)
    {
      case '-':
        v19 = 0;
        v53 = 0x100000000;
        break;
      case '4':
        v53 = 0;
        v19 = 256;
        break;
      case 'b':
        v53 = 0;
        v19 = 1794;
        break;
      default:
        goto LABEL_34;
    }
  }

  else if (v63 > 0x77u)
  {
    if (v63 == 120)
    {
      v19 = 774;
      v53 = 1;
    }

    else
    {
      if (v63 != 122)
      {
        goto LABEL_34;
      }

      v53 = 0;
      v19 = 1285;
    }
  }

  else
  {
    if (v63 != 101)
    {
      if (v63 == 102)
      {
        v53 = 0;
        v19 = 2304;
        goto LABEL_38;
      }

LABEL_34:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", 317, 19, 0, "Invalid stream compression key");
      goto LABEL_15;
    }

    v53 = 0;
    v19 = 2049;
  }

LABEL_38:
  algorithm = v19;
  v20 = bswap64(v64);
  if (v6 >= 13)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 12;
LABEL_40:
    v54 = v23;
    src_size = v22;
    v25 = v24;
    if (*(compressed_stream + 4))
    {
      v26 = v21;
      v27 = 0;
      v28 = &v59;
      v29 = v24;
      v30 = 16;
      while (1)
      {
        v31 = (*(compressed_stream + 4))(*compressed_stream, v28, v30, v29);
        if (v31 < 0)
        {
          break;
        }

        if (!v31)
        {
          if (!v27)
          {
            v24 = v25;
            v25 = v54;
            v21 = v26;
            v22 = src_size;
            goto LABEL_56;
          }

LABEL_47:
          if (v27 <= 0xF)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", 329, 19, 0, "Truncated stream");
            goto LABEL_15;
          }

          v32 = v60;
          v21 = bswap64(v59);
          v22 = bswap64(v60);
          v59 = v21;
          v60 = v22;
          if (v21 < v22 || (v21 - 1 < v20 ? (v33 = v32 == 0) : (v33 = 1), v33))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", 339, 19, 0, "Corrupted stream");
            goto LABEL_15;
          }

          v24 = v25 + v22 + 16;
          v23 = v25;
          if (v24 < v6)
          {
            goto LABEL_40;
          }

          goto LABEL_56;
        }

        v28 = (v28 + v31);
        v27 += v31;
        v29 += v31;
        v30 -= v31;
        if (!v30)
        {
          goto LABEL_47;
        }
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", 327, 19, 0, "reading block header");
    goto LABEL_15;
  }

  v25 = 0;
  v22 = 0;
  v21 = 0;
  v24 = 12;
LABEL_56:
  if (v24 != v6)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", 342, 19, 0, "Corrupted stream");
    goto LABEL_15;
  }

  if (v21 >= v20)
  {
    v13 = 0;
    v14 = 0;
    v35 = algorithm;
  }

  else
  {
    if (v20 >= 0x2000000001)
    {
      *__error() = 12;
      v13 = 0;
      v14 = 0;
      *__error() = 12;
LABEL_60:
      v34 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", 349, 19, v34, "malloc");
      goto LABEL_16;
    }

    v14 = malloc(v20);
    v39 = malloc(v20);
    v13 = v39;
    if (!v14 || !v39)
    {
      goto LABEL_60;
    }

    src_sizea = v22;
    if (*(compressed_stream + 4))
    {
      v40 = 0;
      if (v22)
      {
        v41 = v25 + 16;
        v42 = v39;
        while (1)
        {
          v55 = v40;
          v43 = (*(compressed_stream + 4))(*compressed_stream, v42, v22, v41);
          if (v43 < 0)
          {
            v40 = v43;
            goto LABEL_101;
          }

          if (!v43)
          {
            break;
          }

          v42 += v43;
          v40 = v43 + v55;
          v41 += v43;
          v22 -= v43;
          if (!v22)
          {
            goto LABEL_101;
          }
        }

        v40 = v55;
      }
    }

    else
    {
      v40 = -1;
    }

LABEL_101:
    if (v40 != src_sizea)
    {
      v44 = "loading last block";
      v45 = 352;
      goto LABEL_105;
    }

    if (((src_sizea != v21) & ~HIDWORD(v53)) != 0)
    {
      v35 = algorithm;
      if (v53)
      {
        v51 = PCompressLZMADecode(v14, v20, v13, src_sizea);
        v52 = v51 & ~(v51 >> 63);
      }

      else
      {
        v52 = compression_decode_buffer(v14, v20, v13, src_sizea, 0, algorithm);
      }

      if (v52 != v21)
      {
        v44 = "Last block decompression";
        v45 = 369;
        goto LABEL_105;
      }
    }

    else
    {
      memcpy(v14, v13, v21);
      v35 = algorithm;
    }

    if ((AAByteStreamTruncate(compressed_stream) & 0x80000000) != 0)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", 375, 19, "Warning: container truncate failed");
    }

    v6 = v25;
  }

  if (AAByteStreamSeek(compressed_stream, v6, 0) < 0)
  {
    v44 = "Stream seek";
    v45 = 380;
LABEL_105:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", v45, 19, 0, v44);
    goto LABEL_16;
  }

  v16 = calloc(1uLL, 0x68uLL);
  if (!v16)
  {
    v46 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", 384, 19, *v46, "malloc");
    v15 = 0;
    goto LABEL_17;
  }

  v15 = calloc(1uLL, 0x30uLL);
  if (!v15)
  {
    v47 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", 386, 19, v47, "malloc");
    goto LABEL_17;
  }

  if (!n_threads)
  {
    n_threads = getDefaultNThreads();
  }

  v15[2] = n_threads;
  v36 = calloc(n_threads, 8uLL);
  *(v15 + 2) = v36;
  if (v15[2])
  {
    v37 = 0;
    while (1)
    {
      *(*(v15 + 2) + 8 * v37) = CompressionWorkerDataCreate(v20, v35);
      v38 = *(v15 + 2);
      if (!*(v38 + 8 * v37))
      {
        break;
      }

      ++v37;
      v36 = v15[2];
      if (v37 >= v36)
      {
        goto LABEL_89;
      }
    }

    v49 = "Worker data allocation";
    v50 = 394;
    goto LABEL_98;
  }

  v38 = v36;
  LODWORD(v36) = 0;
LABEL_89:
  v48 = ThreadPipelineCreate(v36, v38, CompressionWorkerProc, v15, CompressionConsumerProc, 0);
  *v15 = v48;
  if (!v48)
  {
    v49 = "Thread allocation";
    v50 = 397;
LABEL_98:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompressionStream.c", "AACompressionOutputStreamOpenExisting", v50, 19, 0, v49);
    goto LABEL_17;
  }

  *(v15 + 3) = compressed_stream;
  if (v14 && aaCompressionOutputStreamWrite(v15, v14, v21) != v21)
  {
    v49 = "re-writing last block";
    v50 = 404;
    goto LABEL_98;
  }

  v17 = 0;
  v16[3] = aaCompressionOutputStreamWrite;
  v16[7] = aaCompressionOutputStreamAbort;
  *v16 = v15;
  v16[1] = aaCompressionOutputStreamClose;
  v16[9] = aaCompressionOutputStreamFlush;
LABEL_18:
  free(v14);
  free(v13);
  if (v17)
  {
    free(v16);
    aaCompressionOutputStreamClose(v15);
    return 0;
  }

  return v16;
}

void CompressionWorkerDataDestroy(void **a1)
{
  if (a1)
  {
    free(a1[3]);
    free(a1[4]);
    free(a1[6]);

    free(a1);
  }
}

void *aaSequentialDecompressionIStreamOpen(uint64_t a1, int a2)
{
  if (!a2)
  {
    getDefaultNThreads();
  }

  v3 = calloc(1uLL, 0x68uLL);
  v4 = malloc(0x160uLL);
  v5 = v4;
  if (!v4 || (memset_s(v4, 0x160uLL, 0, 0x160uLL), !v3))
  {
    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaSequentialDecompressionIStreamOpen", 266, 20, v14, "malloc");
LABEL_30:
    free(v3);
    aaDecompressionStreamClose(v5);
    return 0;
  }

  *v5 = a1;
  *(v5 + 56) = -1;
  v6 = (v5 + 8);
  v7 = *(v5 + 16);
  if (!(v7 >> 16))
  {
    do
    {
      v8 = (v7 >> 1) + v7;
      if (((v7 >> 1) & v7) != 0)
      {
        v8 = ((v7 >> 1) & v7) + v7;
      }

      if (v7)
      {
        v7 = v8;
      }

      else
      {
        v7 = 0x4000;
      }
    }

    while (v7 < 0x10000);
    v9 = *(v5 + 24);
    v10 = realloc(v9, v7);
    if (!v10)
    {
      goto LABEL_29;
    }

    *(v5 + 16) = v7;
    *(v5 + 24) = v10;
  }

  v11 = *(v5 + 40);
  if (v11 >> 16)
  {
    goto LABEL_23;
  }

  do
  {
    v12 = (v11 >> 1) + v11;
    if (((v11 >> 1) & v11) != 0)
    {
      v12 = ((v11 >> 1) & v11) + v11;
    }

    if (v11)
    {
      v11 = v12;
    }

    else
    {
      v11 = 0x4000;
    }
  }

  while (v11 < 0x10000);
  v9 = *(v5 + 48);
  v13 = realloc(v9, v11);
  if (!v13)
  {
    v6 = (v5 + 32);
LABEL_29:
    free(v9);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaSequentialDecompressionIStreamOpen", 273, 20, 0, "allocating buffer");
    goto LABEL_30;
  }

  *(v5 + 40) = v11;
  *(v5 + 48) = v13;
LABEL_23:
  if (aaDecompressionStreamRefill(v5, 0xCuLL) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaSequentialDecompressionIStreamOpen", 276, 20, 0, "reading magic");
    goto LABEL_30;
  }

  __memcpy_chk();
  if (*(v5 + 56) == -1)
  {
    *(v5 + 56) = 0;
  }

  *v3 = v5;
  v3[1] = aaDecompressionStreamClose;
  v3[2] = aaDecompressionStreamRead;
  v3[7] = aaDecompressionStreamAbort;
  return v3;
}

uint64_t aaDecompressionStreamRefill(uint64_t a1, size_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  v6 = (a1 + 8);
  v5 = *a1;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (1)
  {
    if (v8 != v7)
    {
      goto LABEL_14;
    }

    v9 = v7 + 0x40000;
    if ((v7 + 0x40000) < 0)
    {
      return -1;
    }

    if (v7 <= 0xFFFFFFFFFFFBFFFFLL)
    {
      break;
    }

    v8 = v7;
LABEL_14:
    v11 = v7;
LABEL_18:
    if (v11 - v8 >= v2)
    {
      v14 = v2;
    }

    else
    {
      v14 = v11 - v8;
    }

    v15 = AAByteStreamRead(v5, (*(a1 + 24) + v8), v14);
    if (v15 < 0)
    {
      return -1;
    }

    if (!v15)
    {
      return v4;
    }

    v8 = *v6 + v15;
    if (__CFADD__(*v6, v15))
    {
      return -1;
    }

    v7 = *(a1 + 16);
    if (v8 > v7)
    {
      return -1;
    }

    *v6 = v8;
    v4 += v15;
    v2 -= v15;
    if (!v2)
    {
      return v4;
    }
  }

  do
  {
    while (!v7)
    {
      v7 = 0x4000;
      v11 = 0x4000;
      if (v9 <= 0x4000)
      {
        goto LABEL_16;
      }
    }

    v10 = v7 >> 1;
    if ((v7 & (v7 >> 1)) != 0)
    {
      v10 = v7 & (v7 >> 1);
    }

    v7 += v10;
  }

  while (v7 < v9);
  v11 = v7;
  if (v7 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_32;
  }

LABEL_16:
  v12 = *(a1 + 24);
  v13 = realloc(v12, v11);
  if (v13)
  {
    *(a1 + 16) = v11;
    *(a1 + 24) = v13;
    v8 = *(a1 + 8);
    goto LABEL_18;
  }

  free(v12);
LABEL_32:
  *v6 = 0;
  v6[1] = 0;
  v4 = -1;
  v6[2] = 0;
  return v4;
}

uint64_t aaDecompressionStreamReadInput(uint64_t a1, uint64_t a2, size_t nbyte)
{
  if (nbyte)
  {
    v3 = nbyte;
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        if (v3 >= v7)
        {
          v8 = *(a1 + 8);
        }

        else
        {
          v8 = v3;
        }

        memcpy((a2 + v6), *(a1 + 24), v8);
        if ((v8 & 0x8000000000000000) != 0)
        {
          return v8;
        }

        v9 = *(a1 + 8);
        v10 = v9 - v8;
        if (v9 >= v8)
        {
          if (v9 != v8)
          {
            memmove(*(a1 + 24), (*(a1 + 24) + v8), v9 - v8);
          }

          *(a1 + 8) = v10;
        }
      }

      else
      {
        if (*(a1 + 60))
        {
          return v6;
        }

        v11 = AAByteStreamRead(*a1, (a2 + v6), v3);
        v8 = v11;
        if (v11 < 0)
        {
          return v8;
        }

        if (!v11)
        {
          *(a1 + 60) = 1;
          return v6;
        }
      }

      v6 += v8;
      v3 -= v8;
      if (!v3)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t aaDecompressionStreamClose(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    switch(v2)
    {
      case 2:
        compression_stream_destroy((a1 + 312));
        break;
      case 4:
        BZ2_bzDecompressEnd((a1 + 96));
        break;
      case 3:
        lzma_end();
        break;
    }

    IDecoderStreamDestroy(*(a1 + 72));
    free(*(a1 + 24));
    memset_s((a1 + 8), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 48));
    memset_s((a1 + 32), 0x18uLL, 0, 0x18uLL);
    free(a1);
  }

  return 0;
}

uint64_t aaDecompressionStreamRead(uint64_t a1, uint64_t a2, size_t nbyte)
{
  if (*(a1 + 68))
  {
    return -1;
  }

  v5 = nbyte;
  v8 = *(a1 + 72);
  if (v8)
  {

    return IDecoderStreamRead(v8, a2, nbyte);
  }

  v9 = *(a1 + 56);
  if (v9 == -1)
  {
    return -1;
  }

  if (!v9)
  {

    return aaDecompressionStreamReadInput(a1, a2, nbyte);
  }

  if (!nbyte)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      if (v5 >= v12)
      {
        v3 = *(a1 + 32);
      }

      else
      {
        v3 = v5;
      }

      memcpy((a2 + v11), *(a1 + 48), v3);
      if ((v3 & 0x8000000000000000) != 0)
      {
        return v3;
      }

      v13 = *(a1 + 32);
      v14 = v13 - v3;
      if (v13 >= v3)
      {
        if (v13 != v3)
        {
          memmove(*(a1 + 48), (*(a1 + 48) + v3), v13 - v3);
        }

        *(a1 + 32) = v14;
      }

      v11 += v3;
      v5 -= v3;
      goto LABEL_148;
    }

    if (*(a1 + 64))
    {
      return v11;
    }

    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    if (v15 == v16)
    {
      goto LABEL_57;
    }

    if (*(a1 + 60))
    {
      goto LABEL_56;
    }

    v17 = v15 - v16;
    if (v15 == v16)
    {
      goto LABEL_55;
    }

    v3 = 0;
    v18 = *a1;
    do
    {
      if (v16 == v15)
      {
        v19 = v15 + 0x40000;
        if ((v15 + 0x40000) < 0)
        {
          goto LABEL_151;
        }

        if (v15 <= 0xFFFFFFFFFFFBFFFFLL)
        {
          do
          {
            while (!v15)
            {
              v15 = 0x4000;
              v21 = 0x4000;
              if (v19 <= 0x4000)
              {
                goto LABEL_43;
              }
            }

            v20 = v15 >> 1;
            if ((v15 & (v15 >> 1)) != 0)
            {
              v20 = v15 & (v15 >> 1);
            }

            v15 += v20;
          }

          while (v15 < v19);
          v21 = v15;
          if (v15 >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_163;
          }

LABEL_43:
          v22 = *(a1 + 24);
          v23 = realloc(v22, v21);
          if (v23)
          {
            *(a1 + 16) = v21;
            *(a1 + 24) = v23;
            v16 = *(a1 + 8);
            goto LABEL_45;
          }

          free(v22);
LABEL_163:
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v3 = -1;
          *(a1 + 24) = 0;
          goto LABEL_152;
        }

        v16 = v15;
      }

      v21 = v15;
LABEL_45:
      if (v21 - v16 >= v17)
      {
        v24 = v17;
      }

      else
      {
        v24 = v21 - v16;
      }

      v25 = AAByteStreamRead(v18, (*(a1 + 24) + v16), v24);
      if (v25 < 0)
      {
        goto LABEL_151;
      }

      if (!v25)
      {
        break;
      }

      v26 = *(a1 + 8);
      v16 = v26 + v25;
      if (__CFADD__(v26, v25) || (v15 = *(a1 + 16), v16 > v15))
      {
LABEL_151:
        v3 = -1;
LABEL_152:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 144, 20, 0, "stream read failed");
        return v3;
      }

      *(a1 + 8) = v16;
      v3 += v25;
      v17 -= v25;
    }

    while (v17);
    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_152;
    }

    if (v3)
    {
      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 60) = 1;
LABEL_56:
    v16 = *(a1 + 8);
LABEL_57:
    v28 = *(a1 + 24);
    v27 = *(a1 + 32);
    v29 = *(a1 + 40) - v27;
    v30 = (*(a1 + 48) + v27);
    v31 = *(a1 + 56);
    v3 = -1;
    if (v31 > 2)
    {
      if (v31 == 3)
      {
        *(a1 + 176) = v28;
        *(a1 + 184) = v16;
        *(a1 + 200) = v30;
        *(a1 + 208) = v29;
        v62 = lzma_code();
        v63 = v62;
        if (v62 <= 0xA && ((1 << v62) & 0x403) != 0)
        {
          v64 = v10;
          v65 = *(a1 + 176);
          v66 = *(a1 + 200);
          v67 = v65 - v28;
          if (v65 != v28)
          {
            v68 = *(a1 + 8);
            v39 = v68 >= v67;
            v69 = v68 - v67;
            if (v39)
            {
              if (v69)
              {
                v80 = v69;
                memmove(*(a1 + 24), (*(a1 + 24) + v67), v69);
                v69 = v80;
              }

              *(a1 + 8) = v69;
            }
          }

          if (v66 != v30)
          {
            v70 = *(a1 + 32);
            v71 = v70 + v66 - v30;
            if (!__CFADD__(v70, v66 - v30) && v71 <= *(a1 + 40))
            {
              *(a1 + 32) = v71;
            }
          }

          if (v66 == v30 && v65 == v28)
          {
            v10 = v64 + 1;
          }

          else
          {
            v10 = 0;
          }

          if (v63 == 1)
          {
            goto LABEL_131;
          }
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 194, 20, 0, "decoding lzma payload");
        }

        v3 = -1;
        if (v63 <= 0xA && ((1 << v63) & 0x403) != 0)
        {
          goto LABEL_147;
        }

        return v3;
      }

      if (v31 != 4)
      {
        return v3;
      }

      *(a1 + 96) = v28;
      *(a1 + 104) = v16;
      *(a1 + 120) = v30;
      *(a1 + 128) = v29;
      v44 = BZ2_bzDecompress((a1 + 96));
      if (v44 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 178, 20, 0, "decoding bzip2 payload");
        return v3;
      }

      v45 = v44;
      v46 = v10;
      v47 = *(a1 + 96);
      v48 = *(a1 + 120);
      v49 = v47 - v28;
      if (v47 != v28)
      {
        v50 = *(a1 + 8);
        v39 = v50 >= v49;
        v51 = v50 - v49;
        if (v39)
        {
          if (v51)
          {
            v78 = v51;
            memmove(*(a1 + 24), (*(a1 + 24) + v49), v51);
            v51 = v78;
          }

          *(a1 + 8) = v51;
        }
      }

      if (v48 != v30)
      {
        v52 = *(a1 + 32);
        v53 = v52 + v48 - v30;
        if (!__CFADD__(v52, v48 - v30) && v53 <= *(a1 + 40))
        {
          *(a1 + 32) = v53;
        }
      }

      if (v48 == v30 && v47 == v28)
      {
        v10 = v46 + 1;
      }

      else
      {
        v10 = 0;
      }

      if (v45 == 4)
      {
        goto LABEL_131;
      }

      goto LABEL_147;
    }

    if (v31 != 1)
    {
      break;
    }

    if (!v16)
    {
      if (*(a1 + 60))
      {
        goto LABEL_131;
      }

LABEL_156:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 208, 20, 0, "truncated stream header");
      return v3;
    }

    if (v16 <= 0xF)
    {
      goto LABEL_156;
    }

    v55 = v28[1];
    v56 = bswap64(*v28);
    v57 = bswap64(v55);
    v58 = *(a1 + 80);
    if (v56 > v58 || v57 > v58)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 217, 20, 0, "corrupted stream header");
      return -1;
    }

    v79 = v10;
    v60 = v57 + 16;
    if (v57 + 16 > v16)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 218, 20, 0, "truncated stream payload");
      return -1;
    }

    if (v56 > v29)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 219, 20, 0, "unexpected output buffer size");
      return -1;
    }

    v61 = *v28;
    if (*v28 == v55)
    {
      memcpy(v30, v28 + 2, v56);
    }

    else if ((*(a1 + 88))(v30, v29, v28 + 2) != v56)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 229, 20, 0, "block decompression failed");
      return -1;
    }

    if (v60)
    {
      v73 = *(a1 + 8);
      v74 = v73 - v60;
      if (v73 >= v60)
      {
        if (v73 != v60)
        {
          memmove(*(a1 + 24), (*(a1 + 24) + v60), v73 - v60);
        }

        *(a1 + 8) = v74;
      }
    }

    if (v61)
    {
      v75 = *(a1 + 32);
      v39 = __CFADD__(v75, v56);
      v76 = v75 + v56;
      v10 = v79;
      if (!v39 && v76 <= *(a1 + 40))
      {
        *(a1 + 32) = v76;
      }
    }

    else
    {
      v10 = v79;
    }

LABEL_147:
    if (v10 >= 3)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 240, 20, 0, "truncated stream");
      return -1;
    }

LABEL_148:
    v3 = v11;
    if (!v5)
    {
      return v3;
    }
  }

  if (v31 == 2)
  {
    *(a1 + 328) = v28;
    *(a1 + 336) = v16;
    *(a1 + 312) = v30;
    *(a1 + 320) = v29;
    v32 = compression_stream_process((a1 + 312), *(a1 + 60) != 0);
    if ((v32 & 0x80000000) == 0)
    {
      v33 = v32;
      v34 = v10;
      v35 = *(a1 + 336);
      v36 = *(a1 + 320);
      v37 = v16 - v35;
      if (v16 != v35)
      {
        v38 = *(a1 + 8);
        v39 = v38 >= v37;
        v40 = v38 - v37;
        if (v39)
        {
          if (v40)
          {
            v77 = v40;
            memmove(*(a1 + 24), (*(a1 + 24) + v37), v40);
            v40 = v77;
          }

          *(a1 + 8) = v40;
        }
      }

      if (v29 != v36)
      {
        v41 = *(a1 + 32);
        v42 = v41 + v29 - v36;
        if (!__CFADD__(v41, v29 - v36) && v42 <= *(a1 + 40))
        {
          *(a1 + 32) = v42;
        }
      }

      if (v29 == v36 && v16 == v35)
      {
        v10 = v34 + 1;
      }

      else
      {
        v10 = 0;
      }

      if (v33 != COMPRESSION_STATUS_END)
      {
        goto LABEL_147;
      }

LABEL_131:
      *(a1 + 64) = 1;
      goto LABEL_147;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AASequentialDecompressionStream.c", "aaDecompressionStreamRead", 162, 20, 0, "decoding compression payload");
  }

  return v3;
}