pthread_mutex_t *retireThreadProc(pthread_mutex_t *a1)
{
  v2 = &a1->__opaque[8];
  sig = a1->__sig;
  if (pthread_mutex_lock(&a1->__opaque[8]))
  {
    goto LABEL_63;
  }

  while (1)
  {
    v4 = *&a1[1].__opaque[16];
    if (v4 >= *&a1[1].__opaque[24])
    {
      if (!pthread_mutex_unlock(v2))
      {
        goto LABEL_62;
      }

      v6 = 0;
    }

    else
    {
      v5 = *&a1[1].__opaque[32];
      *&a1[1].__opaque[16] = v4 + 1;
      v6 = *(v5 + 8 * v4);
      if (!pthread_mutex_unlock(v2))
      {
        if (!v6)
        {
          return a1;
        }

        goto LABEL_9;
      }
    }

    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadDequeue", 643, 72, *v7, "pthread_mutex_unlock");
    if (!v6)
    {
      return a1;
    }

LABEL_9:
    v8 = *(v6 + 2300);
    if (v8 == -1)
    {
      goto LABEL_61;
    }

    if (v8 == 2)
    {
      *(v6 + 2300) = 3;
      v9 = sig[130];
      if (v9)
      {
        v9(sig[129], 21, v6, v6 + 2272);
      }
    }

    v10 = *(v6 + 2048);
    if (v10 != 70)
    {
LABEL_30:
      if (v10 == 72)
      {
        v17 = sig[195];
        if (v17 == sig[194])
        {
          v18 = 2 * v17;
          v19 = v17 == 0;
          v20 = 32;
          if (!v19)
          {
            v20 = v18;
          }

          sig[194] = v20;
          if ((8 * v20) >= 0x2000000001)
          {
            *__error() = 12;
LABEL_52:
            sig[196] = 0;
            v29 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "hlinkInsertEntry", 455, 72, *v29, "malloc");
            sig[194] = 0;
            sig[195] = 0;
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadProc", 681, 72, 0, "hlinkInsertEntry failed: %s");
            goto LABEL_58;
          }

          v23 = sig[196];
          v21 = realloc(v23, 8 * v20);
          if (!v21)
          {
            free(v23);
            goto LABEL_52;
          }

          sig[196] = v21;
          v17 = sig[195];
        }

        else
        {
          v21 = sig[196];
        }

        sig[195] = v17 + 1;
        v21[v17] = v6;
        atomic_fetch_add((v6 + 2304), 1u);
        v10 = *(v6 + 2048);
      }

      if (v10 != 68)
      {
        goto LABEL_61;
      }

      v24 = sig[198];
      if (v24 == sig[197])
      {
        v25 = 2 * v24;
        v19 = v24 == 0;
        v26 = 32;
        if (!v19)
        {
          v26 = v25;
        }

        sig[197] = v26;
        if ((8 * v26) >= 0x2000000001)
        {
          *__error() = 12;
LABEL_57:
          sig[199] = 0;
          v31 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "dirInsertEntry", 433, 72, *v31, "malloc");
          sig[197] = 0;
          sig[198] = 0;
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadProc", 687, 72, 0, "dirInsertEntry failed: %s");
          goto LABEL_58;
        }

        v28 = sig[199];
        v27 = realloc(v28, 8 * v26);
        if (!v27)
        {
          free(v28);
          goto LABEL_57;
        }

        sig[199] = v27;
        v24 = sig[198];
      }

      else
      {
        v27 = sig[199];
      }

      sig[198] = v24 + 1;
      v27[v24] = v6;
      atomic_fetch_add((v6 + 2304), 1u);
      goto LABEL_61;
    }

    v11 = 0;
    v12 = (sig + 164);
    while (1)
    {
      v13 = *(v6 + v11 + 2312);
      if (v13 == -1)
      {
        goto LABEL_28;
      }

      if (pthread_mutex_lock(v12) < 0)
      {
        v22 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterInsertEntry", 561, 72, v22, "pthread_mutex_lock");
        goto LABEL_55;
      }

      v14 = (*v12[1].__opaque + 32 * v13);
      if (!v11)
      {
        break;
      }

      v15 = *(v6 + 2312);
      if (v15 == -1)
      {
        break;
      }

      v14[2] = v15;
      if (v11 == 16)
      {
        v16 = *(v6 + 2320);
        if (v16 != -1)
        {
          goto LABEL_24;
        }
      }

LABEL_27:
      if (pthread_mutex_unlock(v12) < 0)
      {
        goto LABEL_54;
      }

LABEL_28:
      v11 += 8;
      v12 = (v12 + 80);
      if (v11 == 24)
      {
        v10 = *(v6 + 2048);
        goto LABEL_30;
      }
    }

    if (v11 == 16)
    {
      v16 = *(v6 + 2320);
      if (v16 != -1)
      {
LABEL_24:
        v14[3] = v16;
        goto LABEL_27;
      }
    }

    if (!*(v6 + v11 + 2336))
    {
      *(v6 + v11 + 2336) = v14[1];
      v14[1] = v6;
      atomic_fetch_add((v6 + 2304), 1u);
      goto LABEL_27;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterInsertEntry", 574, 72, 0, "entry already linked");
    if ((pthread_mutex_unlock(v12) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

LABEL_54:
    v30 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterInsertEntry", 585, 72, v30, "pthread_mutex_unlock");
LABEL_55:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadProc", 674, 72, 0, "clusterInsertEntry failed: %s");
LABEL_58:
    if (*(v6 + 2300) != -1)
    {
      *(v6 + 2300) = -1;
      v32 = sig[130];
      if (v32)
      {
        v32(sig[129], 22, v6, v6 + 2272);
      }
    }

LABEL_61:
    entryRelease(v6);
LABEL_62:
    if (pthread_mutex_lock(v2))
    {
LABEL_63:
      v33 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadDequeue", 637, 72, *v33, "pthread_mutex_lock");
      return a1;
    }
  }
}

uint64_t compare_extents_by_position(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

void rawimg_destroy(void *a1)
{
  if (a1)
  {
    if (a1[270])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        free(*(a1[268] + v2 + 72));
        free(*(a1[268] + v2 + 64));
        free(*(a1[268] + v2 + 80));
        ++v3;
        v2 += 129;
      }

      while (v3 < a1[270]);
    }

    pc_array_free(a1[267]);
    pc_array_free(a1[268]);

    free(a1);
  }
}

uint64_t rawimg_show(uint64_t result, int a2, int a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v5 = result;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    v6 = *(result + 2160);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = (*(result + 2144) + 96);
      do
      {
        v7 += *v9;
        v8 += *(v9 - 1);
        v9 = (v9 + 129);
        --v6;
      }

      while (v6);
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    result = serializeHexString(v16, 0x20u, (result + 2088));
    if (a3 > 1)
    {
      v10 = MEMORY[0x29EDCA610];
      v11 = "Output";
      if (!a2)
      {
        v11 = "Input";
      }

      v12 = &unk_296ABFE1D;
      if (v5[256])
      {
        v12 = v5[256];
      }

      result = fprintf(*MEMORY[0x29EDCA610], "%s variant <%s> | %llu bytes | %zu extents | %zu forks (%llu/%llu) | digest=%s\n", v11, v12, v5[265], v5[269], v5[270], v7, v8, v16);
      if (a3 != 2)
      {
        result = fprintf(*v10, " fork | %64s | algo |       size | compressed | V | C\n", "digest");
        if (v5[270])
        {
          v13 = 0;
          v14 = 0;
          do
          {
            v15 = v5[268] + v13;
            serializeHexString(v16, 0x20u, v15);
            result = fprintf(*v10, "%5zu | %s | %4d | %10llu | %10llu | %d | %d\n", ++v14, v16, *(v15 + 128), *(v15 + 88), *(v15 + 96), *(v15 + 104) & 1, (*(v15 + 104) >> 1) & 1);
            v13 += 129;
          }

          while (v14 < v5[270]);
        }
      }
    }
  }

  return result;
}

void *rawimg_create_with_path(const char *a1)
{
  v2 = calloc(1uLL, 0x878uLL);
  memset(&v13, 0, sizeof(v13));
  if (!v2)
  {
    v9 = *__error();
    v7 = "aaCalloc";
    v8 = 489;
    goto LABEL_17;
  }

  if (lstat(a1, &v13) || (v13.st_mode & 0xF000) != 0x8000)
  {
    v7 = "lstat";
    v8 = 490;
LABEL_15:
    v9 = 0;
LABEL_17:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_create_with_path", v8, 138, v9, v7, *&v13.st_dev);
LABEL_18:
    rawimg_destroy(v2);
    return 0;
  }

  v2[256] = a1;
  v2[265] = v13.st_size;
  v2[267] = pc_array_init(16);
  v3 = pc_array_init(129);
  v2[268] = v3;
  if (!v2[267] || !v3)
  {
    v7 = "pc_array_init";
    v8 = 497;
    goto LABEL_15;
  }

  if ((apfs_scan_diskimage(a1, rawimg_add_fork, rawimg_add_volume, v2) & 0x80000000) != 0)
  {
    v7 = "rawimg_query_forks";
    v8 = 500;
    goto LABEL_15;
  }

  v4 = v2[268];
  v5 = *(v4 - 8);
  v2[270] = v5;
  v2[269] = *(v2[267] - 64);
  if (v5)
  {
    pc_array_sort(v4, compare_forks_by_extent);
    if ((pc_array_aggregate(v2[268], compare_forks_by_extent, aggregate_identical_forks) & 0x80000000) != 0)
    {
      v11 = "rawimg_remove_fork_duplicates";
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_remove_fork_duplicates", 475, 138, 0, "bad duplicate", *&v13.st_dev, *&v13.st_uid, *&v13.st_atimespec, *&v13.st_mtimespec, *&v13.st_ctimespec, *&v13.st_birthtimespec);
      v12 = 505;
      goto LABEL_24;
    }

    v4 = v2[268];
    v2[270] = *(v4 - 8);
  }

  v2[268] = pc_array_compact(v4);
  v6 = pc_array_compact(v2[267]);
  v2[267] = v6;
  if (!v6 || !v2[268])
  {
    v11 = "rawimg_compact";
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_compact", 93, 138, 0, "pc_array_compress", *&v13.st_dev, *&v13.st_uid, *&v13.st_atimespec, *&v13.st_mtimespec, *&v13.st_ctimespec, *&v13.st_birthtimespec);
    v12 = 506;
LABEL_24:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_create_with_path", v12, 138, 0, v11, *&v13.st_dev);
    goto LABEL_18;
  }

  if ((rawimg_verify(v2) & 0x80000000) != 0)
  {
    v7 = "rawimg_verify";
    v8 = 507;
    goto LABEL_15;
  }

  qsort_r(v2[268], v2[270], 0x81uLL, v2, compare_forks_by_position);
  return v2;
}

uint64_t rawimg_add_fork(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  memset(__src, 0, sizeof(__src));
  v2 = *(a1 + 20);
  if (v2 && *a1)
  {
    v5 = *(a1 + 8);
    *(&v12 + 1) = *a1;
    *&v13 = v5;
    v14 = *(*(a2 + 2136) - 64);
    v15 = v2;
    v16 = *(a1 + 16);
    v6 = pc_array_append(*(a2 + 2144), __src);
    *(a2 + 2144) = v6;
    if (v6)
    {
      if (*(a1 + 20) < 1)
      {
        return 0;
      }

      v7 = 0;
      v8 = *(a2 + 2136);
      while (1)
      {
        v10 = 0uLL;
        v10 = *(*(a1 + 24) + 16 * v7);
        v8 = pc_array_append(v8, &v10);
        *(a2 + 2136) = v8;
        if (!v8)
        {
          break;
        }

        if (++v7 >= *(a1 + 20))
        {
          return 0;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_add_fork", 461, 138, 0, "pc_array_append");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_add_fork", 448, 138, 0, "pc_array_append");
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_add_fork", 437, 138, 0, "bad fork");
  }

  return 0xFFFFFFFFLL;
}

uint64_t rawimg_verify(void *a1)
{
  v1 = a1[270];
  v2 = a1[269];
  if (!v1 || !v2)
  {
    if (!(v1 + v2))
    {
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", 202, 138, 0, "bad variant");
LABEL_22:
    v16 = 0;
    v8 = 0;
    goto LABEL_23;
  }

  v4 = a1[267];
  v5 = (v4 + 8);
  do
  {
    v6 = *(v5 - 1);
    if ((*v5 + v6) > a1[265])
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", 213, 138, 0, "bad extent");
      goto LABEL_22;
    }

    if ((v6 & 0xFFF) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", 214, 138, 0, "bad extent pos");
      goto LABEL_22;
    }

    if ((*v5 & 0xFFFLL) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", 215, 138, 0, "bad extent size");
      goto LABEL_22;
    }

    v5 += 2;
    --v2;
  }

  while (v2);
  v7 = pc_array_indirect_sort(v4, compare_extents_by_position);
  v8 = v7;
  if (!v7)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", 220, 138, 0, "pc_array_indirect_sort");
    goto LABEL_27;
  }

  v9 = a1[269];
  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a1[269];
  }

  v11 = v10 - 1;
  v12 = v7 + 1;
  while (v11)
  {
    v13 = (*(v12 - 1))[1] + **(v12 - 1);
    v14 = **v12;
    --v11;
    ++v12;
    if (v13 > v14)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", 223, 138, 0, "extents overlapping");
      goto LABEL_27;
    }
  }

  v18 = a1[270];
  v19 = a1[268];
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      v21 = v19 + 129 * i;
      v23 = *(v21 + 112);
      v22 = *(v21 + 120);
      if (v22 + v23 > v9)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", 234, 138, 0, "bad fork");
        goto LABEL_27;
      }

      if (!v22)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", 237, 138, 0, "no fork extents");
        goto LABEL_27;
      }

      if (!*(v21 + 88))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", 240, 138, 0, "bad fork size");
        goto LABEL_27;
      }

      v24 = *(v21 + 128);
      if (!*(v21 + 128))
      {
        v41 = 173;
        goto LABEL_65;
      }

      v25 = &a1[*(v21 + 128)];
      if (!*v25)
      {
        HIDWORD(v27) = v24 - 4;
        LODWORD(v27) = v24 - 4;
        v26 = v27 >> 1;
        if (v26 >= 6 || ((0x35u >> v26) & 1) == 0)
        {
          v41 = 185;
LABEL_65:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_init_algorithm", v41, 138, 0, "bad algo");
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", 243, 138, 0, "rawimg_init_algorithm");
LABEL_27:
          v16 = 0;
LABEL_23:
          v15 = 0xFFFFFFFFLL;
          goto LABEL_24;
        }

        *v25 = dword_296AD1740[v26];
        *(v25 + 4) = 0xFFFFFF06FFFFuLL >> (8 * v26);
      }

      v28 = 0;
      v29 = (a1[267] + 16 * v23 + 8);
      do
      {
        v30 = *v29;
        v29 += 2;
        v28 += v30;
        --v22;
      }

      while (v22);
      if (v28 < *(v21 + 96))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", 249, 138, 0, "bad fork size");
        goto LABEL_27;
      }
    }
  }

  v16 = pc_array_indirect_sort(v19, compare_forks_by_extent);
  if (!v16)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", 254, 138, 0, "pc_array_indirect_sort");
    goto LABEL_23;
  }

  v31 = 0;
  v32 = a1[270];
  if (v32 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = a1[270];
  }

  while (--v33)
  {
    v34 = a1[268] + v31;
    v31 += 129;
    if (*(v34 + 112) == *(v34 + 241))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", 257, 138, 0, "duplicate fork");
      goto LABEL_23;
    }
  }

  if (v32)
  {
    v35 = 0;
    while (1)
    {
      v36 = (a1[268] + 129 * v35);
      v37 = v36[7];
      if (v37)
      {
        break;
      }

LABEL_57:
      if (++v35 == v32)
      {
        goto LABEL_58;
      }
    }

    v38 = 0;
    v39 = (v36[10] + 8);
    while (1)
    {
      v40 = *(v39 - 1);
      if (v40 < v38)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", 274, 138, 0, "bad chunk order");
        goto LABEL_23;
      }

      v38 = v40 + *v39;
      if (v38 > v36[12])
      {
        break;
      }

      v39 += 3;
      if (!--v37)
      {
        goto LABEL_57;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_verify", 275, 138, 0, "chunk out of bounds");
    goto LABEL_23;
  }

LABEL_58:
  v15 = 0;
LABEL_24:
  free(v8);
  free(v16);
  return v15;
}

uint64_t rawimg_get_digests(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a2;
  memset(&c, 0, sizeof(c));
  v8 = AAFileStreamOpenWithPath(*(a1 + 2048), 0, 0);
  v9 = v8;
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 591, 138, 0, "AAFileStreamOpenWithPath");
LABEL_79:
    v51 = 0;
    v55 = 0;
    v53 = 0;
    v58 = 0;
    v48 = 0;
    v10 = 0;
    goto LABEL_100;
  }

  if (a4 && (io_set_nocache(v8) & 0x80000000) != 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 592, 138, "io_set_nocache %s", *(a1 + 2048));
  }

  if (AAByteStreamSeek(v9, 0, 2) != *(a1 + 2120))
  {
    if (!a3)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 596, 138, "image size mismatch");
    }

    goto LABEL_79;
  }

  v10 = aaSegmentStreamOpen(v9, a1);
  if (!v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 602, 138, 0, "aaSegmentStreamOpen");
    goto LABEL_99;
  }

  rawimg_free_chunks(a1);
  if (*(a1 + 2160))
  {
    v11 = 0;
    while (1)
    {
      v12 = *(a1 + 2144) + 129 * v11;
      v13 = *(v12 + 88) + 0xFFFFLL;
      *(v12 + 56) = v13 >> 16;
      if (v13 >= 0x2AAAAAAAB0000)
      {
        break;
      }

      v14 = calloc(v13 >> 16, 0xCuLL);
      *(v12 + 80) = v14;
      if (!v14)
      {
        goto LABEL_95;
      }

      v15 = *(v12 + 56);
      if (*(v12 + 128) == 4)
      {
        v16 = *(v12 + 40);
        v17 = *(v12 + 96);
        *(v12 + 104) |= 4uLL;
        if ((rawimg_allocate_header_and_footer(v12) & 0x80000000) == 0)
        {
          v90 = v11;
          v92 = v6;
          v98 = a3;
          if (v10[4])
          {
            v18 = 0;
            __size = 8 * v15;
            v88 = 8 * v15 + 264;
            v19 = v16 + 264;
            v20 = v16 + v17 - 50;
            v21 = *(v12 + 64);
            v22 = 264;
            while (1)
            {
              v23 = (v10[4])(*v10, v21, v22, v16);
              if (v23 < 0)
              {
                break;
              }

              if (v23)
              {
                v21 += v23;
                v18 += v23;
                v16 += v23;
                v22 -= v23;
                if (v22)
                {
                  continue;
                }
              }

              if (v18 != 264)
              {
                break;
              }

              if (v10[4])
              {
                v24 = 0;
                v25 = *(v12 + 72);
                v26 = 50;
                while (1)
                {
                  v27 = (v10[4])(*v10, v25, v26, v20);
                  if (v27 < 0)
                  {
                    break;
                  }

                  if (v27)
                  {
                    v25 += v27;
                    v24 += v27;
                    v20 += v27;
                    v26 -= v27;
                    if (v26)
                    {
                      continue;
                    }
                  }

                  if (v24 != 50)
                  {
                    break;
                  }

                  v28 = __size;
                  if (__size >= 0x2000000001)
                  {
                    v30 = 0;
                    *__error() = 12;
                    goto LABEL_91;
                  }

                  v29 = malloc(__size);
                  v30 = v29;
                  if (!v29)
                  {
                    goto LABEL_91;
                  }

                  if (!v10[4])
                  {
                    goto LABEL_125;
                  }

                  if (__size)
                  {
                    v31 = 0;
                    v32 = v29;
                    while (1)
                    {
                      v33 = (v10[4])(*v10, v32, v28, v19);
                      if (v33 < 0)
                      {
                        break;
                      }

                      if (v33)
                      {
                        v32 += v33;
                        v31 += v33;
                        v19 += v33;
                        v28 -= v33;
                        if (v28)
                        {
                          continue;
                        }
                      }

                      goto LABEL_43;
                    }

                    v31 = v33;
LABEL_43:
                    if (__size != v31)
                    {
LABEL_125:
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 354, 138, 0, "fork chunks");
                      goto LABEL_91;
                    }
                  }

                  v35 = *(v12 + 56);
                  v36 = *(v12 + 80);
                  if (!v35)
                  {
                    v37 = 50;
                    v34 = v88;
                    v11 = v90;
                    v41 = v88;
                    a3 = v98;
                    v6 = v92;
                    goto LABEL_54;
                  }

                  v42 = v30 + 1;
                  v43 = v36 + 1;
                  v44 = *(v12 + 56);
                  v6 = v92;
                  v34 = v88;
                  v11 = v90;
                  do
                  {
                    *(v43 - 1) = (*(v42 - 1) + 260);
                    v45 = *v42;
                    v42 += 2;
                    *v43 = v45;
                    v43 += 3;
                    --v44;
                  }

                  while (v44);
                  v37 = 50;
                  a3 = v98;
                  goto LABEL_48;
                }
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 349, 138, 0, "fork footer");
              goto LABEL_90;
            }
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 346, 138, 0, "fork header");
LABEL_90:
          v30 = 0;
LABEL_91:
          a3 = v98;
LABEL_97:
          free(v30);
          rawimg_free_chunks(a1);
          if (!a3)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 608, 138, "bad chunk info");
          }

LABEL_99:
          v51 = 0;
          v55 = 0;
          v53 = 0;
          v58 = 0;
          v48 = 0;
LABEL_100:
          v68 = 0;
          goto LABEL_101;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 343, 138, 0, "Can't allocate header/footer");
LABEL_96:
        v30 = 0;
        goto LABEL_97;
      }

      v34 = 4 * v15 + 4;
      if (v34 >= 0x2000000001)
      {
        v30 = 0;
        *__error() = 12;
        goto LABEL_97;
      }

      v30 = malloc(v34);
      if (!v30)
      {
        goto LABEL_97;
      }

      if (v34 != AAByteStreamPRead(v10, v30, v34, *(v12 + 40)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 372, 138, 0, "fork chunks");
        goto LABEL_97;
      }

      v35 = *(v12 + 56);
      v36 = *(v12 + 80);
      v37 = 0;
      if (v35)
      {
        v38 = v36 + 1;
        do
        {
          v39 = &v30[v37];
          v40 = *v39;
          LODWORD(v39) = v39[1];
          *(v38 - 1) = v40;
          ++v37;
          *v38 = v39 - v40;
          v38 += 3;
        }

        while (v35 != v37);
        v37 = 0;
LABEL_48:
        v46 = (v36 + 1);
        v41 = v34;
        while (1)
        {
          v47 = *(v46 - 1);
          if (v47 < v41)
          {
            break;
          }

          v41 = v47 + *v46;
          if (v41 > *(v12 + 96))
          {
            break;
          }

          v46 += 3;
          if (!--v35)
          {
            goto LABEL_54;
          }
        }

        if (!a3)
        {
          pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 393, 138, "bad chunk");
        }

        goto LABEL_97;
      }

      v41 = v34;
LABEL_54:
      if (*v36 != v34 || v41 + v37 != *(v12 + 96))
      {
        if (!a3)
        {
          pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 402, 138, "bad index");
        }

        goto LABEL_97;
      }

      free(v30);
      if (++v11 >= *(a1 + 2160))
      {
        goto LABEL_57;
      }
    }

    *__error() = 12;
    *(v12 + 80) = 0;
LABEL_95:
    v67 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 325, 138, v67, "aaCalloc");
    goto LABEL_96;
  }

LABEL_57:
  *(a1 + 2128) |= 8uLL;
  v48 = aaForkInputStreamOpen(v10, a1, 1);
  if (!v48)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 614, 138, 0, "aaForkInputStreamOpen");
LABEL_87:
    v51 = 0;
    v55 = 0;
    v53 = 0;
LABEL_88:
    v58 = 0;
    goto LABEL_100;
  }

  v49 = *(a1 + 2160) + ((*(a1 + 2080) + 0x7FFFFFLL) >> 23);
  if (!is_mul_ok(v49, 0x38uLL) || 56 * v49 > 0x2000000000)
  {
    *__error() = 12;
    goto LABEL_86;
  }

  v50 = calloc(*(a1 + 2160) + ((*(a1 + 2080) + 0x7FFFFFLL) >> 23), 0x38uLL);
  if (!v50)
  {
LABEL_86:
    v65 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 622, 138, v65, "aaCalloc");
    goto LABEL_87;
  }

  v51 = v50;
  if ((v6 & 0x80000000) != 0)
  {
    *__error() = 12;
    v53 = 0;
    v55 = 0;
    *__error() = 12;
LABEL_93:
    v66 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 627, 138, *v66, "aaCalloc");
    goto LABEL_88;
  }

  v52 = v6;
  v53 = calloc(v6, 0x10uLL);
  v54 = calloc(v6, 8uLL);
  v55 = v54;
  if (!v53 || !v54)
  {
    goto LABEL_93;
  }

  if (v6)
  {
    v56 = v53;
    v57 = v54;
    do
    {
      *v57++ = v56;
      *v56 = v48;
      v56 += 2;
      --v52;
    }

    while (v52);
  }

  v58 = ThreadPoolCreate(v6, v54, rawimg_digest_worker);
  if (!v58)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 634, 138, 0, "ThreadPoolCreate");
    goto LABEL_100;
  }

  v89 = v49;
  v59 = *(a1 + 2056);
  if (v59 < *(a1 + 2072))
  {
    v99 = 0;
    v60 = -v59;
    v61 = v51;
    while (1)
    {
      __sizea = v59;
      v62 = v60;
      Worker = ThreadPoolGetWorker(v58);
      if (!Worker)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 643, 138, 0, "ThreadPoolGetWorker");
        goto LABEL_100;
      }

      *(Worker + 8) = v61;
      v61[6] = -1;
      v93 = v62;
      v64 = v62 + *(a1 + 2072);
      if (v64 >= 0x800000)
      {
        v64 = 0x800000;
      }

      v61[4] = __sizea;
      v61[5] = v64;
      if ((ThreadPoolRunWorker(v58) & 0x80000000) != 0)
      {
        break;
      }

      ++v99;
      v59 = __sizea + 0x800000;
      v61 += 7;
      v60 = v93 - 0x800000;
      if (__sizea + 0x800000 >= *(a1 + 2072))
      {
        goto LABEL_113;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 648, 138, 0, "ThreadPoolRunWorker");
    goto LABEL_100;
  }

  v99 = 0;
LABEL_113:
  v70 = *(a1 + 2160);
  if (v70)
  {
    v71 = 0;
    v72 = v89;
    v73 = v99;
    v87 = v9;
    while (1)
    {
      v74 = *(a1 + 2144) + 129 * v71;
      if (*(v74 + 88))
      {
        break;
      }

LABEL_123:
      if (++v71 >= v70)
      {
        goto LABEL_128;
      }
    }

    v91 = *(a1 + 2144) + 129 * v71;
    v94 = v71;
    v75 = 0;
    v76 = v73;
    v77 = 0;
    v100 = v76;
    v78 = &v51[7 * v76];
    while (1)
    {
      __sizeb = v77;
      v79 = v74;
      v80 = ThreadPoolGetWorker(v58);
      if (!v80)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 662, 138, 0, "ThreadPoolGetWorker");
        goto LABEL_132;
      }

      *(v80 + 8) = v78;
      v78[6] = v94;
      v81 = v75 + *(v79 + 88);
      if (v81 >= 0x800000)
      {
        v81 = 0x800000;
      }

      v78[4] = __sizeb + *(v79 + 48);
      v78[5] = v81;
      if ((ThreadPoolRunWorker(v58) & 0x80000000) != 0)
      {
        break;
      }

      ++v100;
      v74 = v91;
      v77 = __sizeb + 0x800000;
      v75 -= 0x800000;
      v78 += 7;
      if (__sizeb + 0x800000 >= *(v91 + 88))
      {
        v70 = *(a1 + 2160);
        v9 = v87;
        v72 = v89;
        v73 = v100;
        v71 = v94;
        goto LABEL_123;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 667, 138, 0, "ThreadPoolRunWorker");
LABEL_132:
    v68 = 0;
    v9 = v87;
  }

  else
  {
    v72 = v89;
    v73 = v99;
LABEL_128:
    if (v73 > v72)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 670, 138, 0, "too many tasks");
      goto LABEL_100;
    }

    if ((ThreadPoolSync(v58) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 676, 138, 0, "ThreadPoolSync");
      goto LABEL_100;
    }

    qsort(v51, v73, 0x38uLL, compare_digest_tasks);
    CC_SHA256_Init(&c);
    if (v73)
    {
      v82 = v51;
      do
      {
        CC_SHA256_Update(&c, v82, 0x20u);
        v82 += 56;
        --v73;
      }

      while (v73);
    }

    CC_SHA256_Final((a1 + 2088), &c);
    if (*(a1 + 2160))
    {
      v83 = 0;
      v84 = 0;
      do
      {
        v101 = v84;
        CC_SHA256_Init(&c);
        v85 = &v51[7 * v83];
        v86 = v85[6];
        while (v86 == v101)
        {
          CC_SHA256_Update(&c, v85, 0x20u);
          ++v83;
          v86 = v85[13];
          v85 += 7;
        }

        CC_SHA256_Final((*(a1 + 2144) + 129 * v101), &c);
        v84 = v101 + 1;
      }

      while ((v101 + 1) < *(a1 + 2160));
    }

    *(a1 + 2128) |= 0x10uLL;
    v68 = 1;
  }

LABEL_101:
  if ((ThreadPoolDestroy(v58) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 704, 138, 0, "ThreadPoolDestroy");
    v68 = 0;
  }

  free(v53);
  free(v55);
  free(v51);
  AAByteStreamClose(v48);
  AAByteStreamClose(v10);
  AAByteStreamClose(v9);
  if (v68)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void rawimg_free_chunks(void *a1)
{
  if (a1[270])
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = a1[268] + v2;
      free(*(v4 + 80));
      *(v4 + 80) = 0;
      *(v4 + 56) = 0;
      *(v4 + 104) &= ~4uLL;
      ++v3;
      v2 += 129;
    }

    while (v3 < a1[270]);
  }

  a1[266] &= ~8uLL;
}

uint64_t rawimg_digest_worker(void *a1)
{
  v2 = a1[1];
  memset(&v16, 0, sizeof(v16));
  v3 = malloc(0x10000uLL);
  if (!v3)
  {
    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_digest_worker", 551, 138, v14, "aaMalloc", *v16.count, *&v16.hash[2], *&v16.hash[6], *&v16.wbuf[2], *&v16.wbuf[6], *&v16.wbuf[10], *&v16.wbuf[14]);
LABEL_21:
    v13 = 0xFFFFFFFFLL;
    goto LABEL_22;
  }

  CC_SHA256_Init(&v16);
  v4 = *(v2 + 40);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = v4 - v5 >= 0x10000 ? 0x10000 : v4 - v5;
      v7 = *a1;
      if (!*(*a1 + 32))
      {
        break;
      }

      if (v4 == v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v9 = *(v2 + 32) + v5;
        v10 = v3;
        v11 = v6;
        while (1)
        {
          v12 = (*(v7 + 32))(*v7, v10, v11, v9);
          if (v12 < 0)
          {
            break;
          }

          if (v12)
          {
            v10 += v12;
            v8 += v12;
            v9 += v12;
            v11 -= v12;
            if (v11)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        v8 = v12;
      }

LABEL_16:
      if (v6 != v8)
      {
        break;
      }

      CC_SHA256_Update(&v16, v3, v6);
      v5 += 0x10000;
      v4 = *(v2 + 40);
      if (v5 >= v4)
      {
        goto LABEL_18;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_digest_worker", 558, 138, 0, "aaByteStreamPReadExpected", *v16.count, *&v16.hash[2], *&v16.hash[6], *&v16.wbuf[2], *&v16.wbuf[6], *&v16.wbuf[10], *&v16.wbuf[14]);
    goto LABEL_21;
  }

LABEL_18:
  CC_SHA256_Final(v2, &v16);
  v13 = 0;
LABEL_22:
  free(v3);
  return v13;
}

uint64_t compare_digest_tasks(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    v4 = *(a1 + 32) >= *(a2 + 32);
  }

  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t rawimg_set_fork_types(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x21)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_set_fork_types", 772, 138, 0, "too many variants");
    v2 = 0;
    goto LABEL_32;
  }

  if (a2 != 1)
  {
    v2 = pc_array_init(16);
    if (v2)
    {
      if (!a2)
      {
LABEL_18:
        pc_array_sort(v2, compare_copy_fork_5);
        pc_array_aggregate(v2, compare_copy_fork_4, aggregate_copy_fork);
        v13 = *(v2 - 8);
        if (v13)
        {
          v14 = v2 + 1;
          v15 = v2 + 1;
          do
          {
            v16 = *v15;
            v15 += 16;
            if ((v16 & 1) == 0)
            {
              *(*(v14 - 1) + 104) |= 1uLL;
            }

            v14 = v15;
            --v13;
          }

          while (v13);
        }

        pc_array_aggregate(v2, compare_copy_fork_3, aggregate_copy_fork);
        v17 = *(v2 - 8);
        if (v17)
        {
          v18 = 0;
          v19 = 0;
          v20 = v2 + 1;
          v21 = v2 + 1;
          do
          {
            v22 = *v21;
            v21 += 4;
            if ((v22 ^ (-1 << a2)) == 0xFFFFFFFF)
            {
              *&v2[2 * v19++] = *(v20 - 1);
              v17 = *(v2 - 8);
            }

            ++v18;
            v20 = v21;
          }

          while (v18 < v17);
        }

        else
        {
          v19 = 0;
        }

        *(v2 - 8) = v19;
        if (a2)
        {
          v24 = 0;
          do
          {
            v25 = *(a1 + 8 * v24);
            if (*(v25 + 2160))
            {
              v26 = 0;
              v27 = 104;
              do
              {
                v28 = *(v25 + 2144);
                v32 = v28 + v27 - 104;
                v33 = 0;
                v29 = bsearch(&v32, v2, *(v2 - 8), 0x10uLL, compare_copy_fork_3);
                if (v29)
                {
                  v30 = 1;
                }

                else
                {
                  v30 = v24 == 0;
                }

                if (v30)
                {
                  if (v29)
                  {
                    v31 = 2;
                  }

                  else
                  {
                    v31 = 1;
                  }

                  *(v28 + v27) |= v31;
                }

                ++v26;
                v27 += 129;
              }

              while (v26 < *(v25 + 2160));
            }

            ++v24;
          }

          while (v24 != a2);
        }

        v7 = 0;
        goto LABEL_33;
      }

      v8 = 0;
      while (1)
      {
        v9 = *(a1 + 8 * v8);
        if ((*(v9 + 2128) & 0x10) == 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_set_fork_types", 799, 138, 0, "no digests found", v32, v33);
          goto LABEL_32;
        }

        if (*(v9 + 2160))
        {
          break;
        }

LABEL_17:
        if (++v8 == a2)
        {
          goto LABEL_18;
        }
      }

      v10 = 0;
      v11 = 104;
      while (1)
      {
        v12 = (*(v9 + 2144) + v11);
        v32 = (v12 - 104);
        v33 = (1 << v8);
        if ((*v12 & 3) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_set_fork_types", 810, 138, 0, "bad flags", v32, v33);
          goto LABEL_32;
        }

        v2 = pc_array_append(v2, &v32);
        if (!v2)
        {
          break;
        }

        ++v10;
        v11 += 129;
        if (v10 >= *(v9 + 2160))
        {
          goto LABEL_17;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_set_fork_types", 814, 138, 0, "pc_array_append", v32, v33);
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_set_fork_types", 792, 138, 0, "pc_array_init", v32, v33);
    }

LABEL_32:
    v7 = 0xFFFFFFFFLL;
LABEL_33:
    pc_array_free(v2);
    return v7;
  }

  v5 = *(*a1 + 2160);
  if (v5)
  {
    v6 = (*(*a1 + 2144) + 104);
    do
    {
      *v6 = *v6 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v6 = (v6 + 129);
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t compare_copy_fork_5(unint64_t **a1, unint64_t **a2)
{
  result = compare_copy_fork_3(a1, a2);
  if (!result)
  {
    v5 = *(a1 + 2);
    v6 = *(a2 + 2);
    result = (v5 - v6);
    if (v5 == v6)
    {
      if ((*a1)[14] < (*a2)[14])
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t compare_copy_fork_4(uint64_t a1, uint64_t a2)
{
  result = compare_copy_fork_3(a1, a2);
  if (!result)
  {
    return (*(a1 + 8) - *(a2 + 8));
  }

  return result;
}

uint64_t compare_copy_fork_3(unint64_t **a1, unint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = bswap64(**a1);
  v5 = bswap64(**a2);
  if (v4 == v5 && (v4 = bswap64(v2[1]), v5 = bswap64(v3[1]), v4 == v5) && (v4 = bswap64(v2[2]), v5 = bswap64(v3[2]), v4 == v5) && (v4 = bswap64(v2[3]), v5 = bswap64(v3[3]), v4 == v5))
  {
    v7 = v2[12] - v3[12];
    if (v7)
    {
      if (v7 < 0)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return *(v2 + 128) - *(v3 + 128);
    }
  }

  else if (v4 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t rawimg_save_to_stream(void *a1, uint64_t a2, int a3)
{
  v46 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 2128);
  if ((v3 & 0x10) != 0)
  {
    if ((v3 & 8) != 0)
    {
      v7 = *(a2 + 2104);
      v42[0] = *(a2 + 2088);
      v42[1] = v7;
      v8 = 24;
      if (!a3)
      {
        v8 = 16;
      }

      v43 = *(a2 + 2120);
      v44 = v8;
      v45 = *(a2 + 2152);
      if (a1[3])
      {
        v9 = 0;
        v10 = v42;
        v11 = 64;
        while (1)
        {
          v12 = (a1[3])(*a1, v10, v11);
          if (v12 < 1)
          {
            break;
          }

          v10 = (v10 + v12);
          v9 += v12;
          v11 -= v12;
          if (!v11)
          {
            if (v9 != 64)
            {
              break;
            }

            if (!a1[3])
            {
              goto LABEL_57;
            }

            v13 = 16 * v45;
            if (16 * v45)
            {
              v14 = 0;
              v15 = *(a2 + 2136);
              v16 = 16 * v45;
              while (1)
              {
                v17 = (a1[3])(*a1, v15, v16);
                if (v17 < 1)
                {
                  break;
                }

                v15 += v17;
                v14 += v17;
                v16 -= v17;
                if (!v16)
                {
                  goto LABEL_21;
                }
              }

              v14 = v17;
LABEL_21:
              if (v13 != v14)
              {
LABEL_57:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 914, 138, 0, "aaByteStreamWriteExpected", *&v40);
                return 0xFFFFFFFFLL;
              }
            }

            if (!*(&v45 + 1))
            {
              return 0;
            }

            v19 = 0;
            v20 = 0uLL;
LABEL_24:
            v21 = *(a2 + 2144) + 129 * v19;
            *(v41 + 9) = v20;
            v40 = v20;
            v41[0] = v20;
            v40 = *(v21 + 88);
            v22 = *(v21 + 104);
            v41[0] = v22;
            *&v41[1] = *(v21 + 120);
            BYTE8(v41[1]) = *(v21 + 128);
            if ((v22 & 1) == 0)
            {
              *&v41[0] = v22 & 0xFFFFFFFFFFFFFFFALL;
            }

            if (a1[3])
            {
              v23 = 0;
              v24 = &v40;
              v25 = 41;
              while (1)
              {
                v26 = (a1[3])(*a1, v24, v25);
                if (v26 < 1)
                {
                  break;
                }

                v24 = (v24 + v26);
                v23 += v26;
                v25 -= v26;
                if (!v25)
                {
                  if (v23 != 41)
                  {
                    break;
                  }

                  v20 = 0uLL;
                  if (a3 && (v41[0] & 1) != 0)
                  {
                    if (!a1[3])
                    {
                      goto LABEL_61;
                    }

                    v27 = 12 * *(v21 + 56);
                    if (v27)
                    {
                      v28 = 0;
                      v29 = *(v21 + 80);
                      v30 = 12 * *(v21 + 56);
                      while (1)
                      {
                        v31 = (a1[3])(*a1, v29, v30, v20);
                        if (v31 < 1)
                        {
                          break;
                        }

                        v29 += v31;
                        v28 += v31;
                        v30 -= v31;
                        if (!v30)
                        {
                          goto LABEL_40;
                        }
                      }

                      v28 = v31;
LABEL_40:
                      v20 = 0uLL;
                      if (v27 != v28)
                      {
LABEL_61:
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 946, 138, 0, "aaByteStreamWriteExpected", *&v40);
                        return 0xFFFFFFFFLL;
                      }
                    }

                    if ((v41[0] & 4) != 0)
                    {
                      v32 = *(v21 + 64);
                      if (v32 && *(v21 + 72))
                      {
                        if (a1[3])
                        {
                          v33 = 0;
                          v34 = 264;
                          while (1)
                          {
                            v35 = (a1[3])(*a1, v32, v34, v20);
                            if (v35 < 1)
                            {
                              break;
                            }

                            v32 += v35;
                            v33 += v35;
                            v34 -= v35;
                            if (!v34)
                            {
                              if (v33 != 264)
                              {
                                break;
                              }

                              if (a1[3])
                              {
                                v36 = 0;
                                v37 = *(v21 + 72);
                                v38 = 50;
                                while (1)
                                {
                                  v39 = (a1[3])(*a1, v37, v38);
                                  v20 = 0uLL;
                                  if (v39 < 1)
                                  {
                                    break;
                                  }

                                  v37 += v39;
                                  v36 += v39;
                                  v38 -= v39;
                                  if (!v38)
                                  {
                                    if (v36 == 50)
                                    {
                                      goto LABEL_42;
                                    }

                                    break;
                                  }
                                }
                              }

                              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 958, 138, 0, "aaByteStreamWriteExpected", *&v40);
                              return 0xFFFFFFFFLL;
                            }
                          }
                        }

                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 956, 138, 0, "aaByteStreamWriteExpected", *&v40);
                      }

                      else
                      {
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 952, 138, 0, "Fork missing header/footer", *&v40);
                      }

                      return 0xFFFFFFFFLL;
                    }
                  }

LABEL_42:
                  result = 0;
                  if (++v19 < *(&v45 + 1))
                  {
                    goto LABEL_24;
                  }

                  return result;
                }
              }
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 938, 138, 0, "aaByteStreamWriteExpected", *&v40);
            return 0xFFFFFFFFLL;
          }
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 909, 138, 0, "aaByteStreamWriteExpected", *&v40);
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 898, 138, 0, "no chunk info", *&v40);
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_save_to_stream", 897, 138, 0, "no digest info", *&v40);
  }

  return 0xFFFFFFFFLL;
}

char *rawimg_create_with_stream(void *a1, int a2)
{
  v55 = *MEMORY[0x29EDCA608];
  v4 = calloc(1uLL, 0x878uLL);
  v5 = v4;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  if (!v4)
  {
    v22 = *__error();
    v20 = "aaCalloc";
    v21 = 977;
    goto LABEL_20;
  }

  if (!a1[2])
  {
    goto LABEL_17;
  }

  v6 = 0;
  v7 = v4 + 2120;
  v8 = &v51;
  v9 = 64;
  do
  {
    v10 = (a1[2])(*a1, v8, v9);
    if (v10 < 0)
    {
      goto LABEL_17;
    }

    if (!v10)
    {
      break;
    }

    v8 = (v8 + v10);
    v6 += v10;
    v9 -= v10;
  }

  while (v9);
  if (v6 == 64)
  {
    v11 = v52;
    *(v5 + 2088) = v51;
    *(v5 + 2104) = v11;
    v12 = v54;
    *v7 = v53;
    *(v5 + 2152) = v12;
    *(v5 + 267) = pc_array_init(16, v12);
    v13 = pc_array_init(129, *(v5 + 270));
    *(v5 + 268) = v13;
    v14 = *(v5 + 267);
    if (v14 && v13)
    {
      v15 = *(v5 + 269);
      *(v14 - 64) = v15;
      *(v13 - 8) = *(v5 + 270);
      if (!a1[2])
      {
        goto LABEL_63;
      }

      v16 = 16 * v15;
      if (!(16 * v15))
      {
        goto LABEL_25;
      }

      v17 = 0;
      v18 = 16 * v15;
      while (1)
      {
        v19 = (a1[2])(*a1, v14, v18);
        if (v19 < 0)
        {
          break;
        }

        if (v19)
        {
          v14 += v19;
          v17 += v19;
          v18 -= v19;
          if (v18)
          {
            continue;
          }
        }

        goto LABEL_24;
      }

      v17 = v19;
LABEL_24:
      if (v16 == v17)
      {
LABEL_25:
        if (!*(&v54 + 1))
        {
LABEL_61:
          if ((rawimg_verify(v5) & 0x80000000) == 0)
          {
            return v5;
          }

          v20 = "rawimg_verify";
          v21 = 1050;
          goto LABEL_18;
        }

        v24 = 0;
        v25 = 0uLL;
        while (2)
        {
          v26 = *(v5 + 268);
          *&v50[9] = v25;
          v49 = v25;
          *v50 = v25;
          if (a1[2])
          {
            v27 = 0;
            v28 = v26 + 129 * v24;
            v29 = &v49;
            v30 = 41;
            do
            {
              v31 = (a1[2])(*a1, v29, v30);
              if (v31 < 0)
              {
                goto LABEL_64;
              }

              if (!v31)
              {
                break;
              }

              v29 = (v29 + v31);
              v27 += v31;
              v30 -= v31;
            }

            while (v30);
            if (v27 != 41)
            {
              break;
            }

            *v28 = 0u;
            *(v28 + 16) = 0u;
            *(v28 + 96) = 0u;
            *(v28 + 112) = 0u;
            *(v28 + 64) = 0u;
            *(v28 + 80) = 0u;
            *(v28 + 32) = 0u;
            *(v28 + 48) = 0u;
            v32 = v49;
            *(v28 + 88) = v49;
            v33 = v50[0];
            *(v28 + 104) = *v50;
            *(v28 + 120) = *&v50[16];
            *(v28 + 128) = v50[24];
            if (a2 && (v33 & 1) != 0)
            {
              v34 = (v32 + 0xFFFF) >> 16;
              *(v28 + 56) = v34;
              if ((v32 + 0xFFFF) >= 0x2AAAAAAAB0000)
              {
                *__error() = 12;
                *(v28 + 80) = 0;
              }

              else
              {
                v35 = calloc(v34, 0xCuLL);
                *(v28 + 80) = v35;
                if (v35)
                {
                  if (!a1[2])
                  {
                    goto LABEL_67;
                  }

                  v36 = 12 * *(v28 + 56);
                  if (v36)
                  {
                    v37 = v35;
                    v38 = 0;
                    v39 = 12 * *(v28 + 56);
                    while (1)
                    {
                      v40 = (a1[2])(*a1, v37, v39);
                      if (v40 < 0)
                      {
                        break;
                      }

                      if (v40)
                      {
                        v37 += v40;
                        v38 += v40;
                        v39 -= v40;
                        if (v39)
                        {
                          continue;
                        }
                      }

                      goto LABEL_45;
                    }

                    v38 = v40;
LABEL_45:
                    if (v36 != v38)
                    {
LABEL_67:
                      v20 = "aaByteStreamReadExpected";
                      v21 = 1032;
                      goto LABEL_18;
                    }
                  }

                  if ((*(v28 + 104) & 4) != 0)
                  {
                    if ((rawimg_allocate_header_and_footer(v28) & 0x80000000) != 0)
                    {
                      v20 = "Can't allocate header/footer";
                      v21 = 1038;
                    }

                    else
                    {
                      if (a1[2])
                      {
                        v41 = 0;
                        v42 = *(v28 + 64);
                        v43 = 264;
                        while (1)
                        {
                          v44 = (a1[2])(*a1, v42, v43);
                          if (v44 < 0)
                          {
                            break;
                          }

                          if (v44)
                          {
                            v42 += v44;
                            v41 += v44;
                            v43 -= v44;
                            if (v43)
                            {
                              continue;
                            }
                          }

                          if (v41 != 264)
                          {
                            break;
                          }

                          if (a1[2])
                          {
                            v45 = 0;
                            v46 = *(v28 + 72);
                            v47 = 50;
                            while (1)
                            {
                              v48 = (a1[2])(*a1, v46, v47);
                              if (v48 < 0)
                              {
                                break;
                              }

                              if (v48)
                              {
                                v46 += v48;
                                v45 += v48;
                                v47 -= v48;
                                if (v47)
                                {
                                  continue;
                                }
                              }

                              if (v45 != 50)
                              {
                                break;
                              }

                              goto LABEL_60;
                            }
                          }

                          v20 = "aaByteStreamReadExpected";
                          v21 = 1044;
                          goto LABEL_18;
                        }
                      }

                      v20 = "aaByteStreamReadExpected";
                      v21 = 1042;
                    }

                    goto LABEL_18;
                  }

                  goto LABEL_60;
                }
              }

              v22 = *__error();
              v20 = "aaCalloc";
              v21 = 1027;
              goto LABEL_20;
            }

LABEL_60:
            ++v24;
            v25 = 0uLL;
            if (v24 < *(&v54 + 1))
            {
              continue;
            }

            goto LABEL_61;
          }

          break;
        }

LABEL_64:
        v20 = "aaByteStreamReadExpected";
        v21 = 1010;
      }

      else
      {
LABEL_63:
        v20 = "aaByteStreamReadExpected";
        v21 = 1000;
      }
    }

    else
    {
      v20 = "pc_array_init";
      v21 = 993;
    }
  }

  else
  {
LABEL_17:
    v20 = "aaByteStreamReadExpected";
    v21 = 981;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_create_with_stream", v21, 138, v22, v20, v49, *v50, *&v50[8], *&v50[24]);
  rawimg_destroy(v5);
  return 0;
}

uint64_t rawimg_allocate_header_and_footer(uint64_t a1)
{
  if ((*(a1 + 64) || (v2 = malloc(0x108uLL), (*(a1 + 64) = v2) != 0)) && (*(a1 + 72) || (v3 = malloc(0x32uLL), (*(a1 + 72) = v3) != 0)))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t compare_forks_by_extent(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v3 = *(a2 + 112);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t aggregate_identical_forks(const void *a1, const void *a2)
{
  if (!memcmp(a1, a2, 0x81uLL))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t compare_forks_by_position(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 2136) + 16 * *(a2 + 112)) < *(*(a1 + 2136) + 16 * *(a3 + 112)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

void *pc_array_init(uint64_t a1, uint64_t a2)
{
  v4 = malloc(a2 * a1 + 64);
  if (v4)
  {
    *v4 = 0;
    v4[1] = a2;
    v5 = v4 + 8;
    v4[2] = a1;
  }

  else
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/GenericArray.c", "pc_array_init", 26, 139, *v6, "malloc");
    return 0;
  }

  return v5;
}

void pc_array_free(uint64_t a1)
{
  if (a1)
  {
    free((a1 - 64));
  }
}

char *pc_array_compact(uint64_t a1)
{
  v3 = *(a1 - 64);
  v4 = *(a1 - 56);
  v2 = (a1 - 64);
  if (v4 <= v3)
  {
    return v2 + 64;
  }

  *(a1 - 56) = v3;
  v2 = reallocf(v2, *(a1 - 48) * v3 + 64);
  if (v2)
  {
    return v2 + 64;
  }

  v6 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/GenericArray.c", "pc_array_compact", 56, 139, *v6, "reallocf");
  return 0;
}

void *pc_array_append(uint64_t a1, void *__src)
{
  v3 = *(a1 - 64);
  v4 = *(a1 - 56);
  v5 = (a1 - 64);
  if (v4 > v3)
  {
    goto LABEL_7;
  }

  v6 = 2 * v4;
  v7 = v4 == 0;
  v8 = 16;
  if (!v7)
  {
    v8 = v6;
  }

  *(a1 - 56) = v8;
  if (v8 <= v3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/GenericArray.c", "pc_array_append", 70, 139, 0, "too many elements");
    return 0;
  }

  v9 = reallocf((a1 - 64), *(a1 - 48) * v8 + 64);
  if (!v9)
  {
    v11 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/GenericArray.c", "pc_array_append", 72, 139, v11, "reallocf");
    return 0;
  }

  v5 = v9;
  v3 = *v9;
LABEL_7:
  v10 = v5 + 8;
  memcpy(v5 + v5[2] * v3 + 64, __src, v5[2]);
  ++*v5;
  return v10;
}

void *pc_array_indirect_sort(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = *(a1 - 64);
  v5 = malloc(8 * v4);
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = *(v3 - 48);
      v8 = v5;
      v9 = v4;
      do
      {
        *v8++ = v3;
        v3 += v7;
        --v9;
      }

      while (v9);
    }

    qsort_r(v5, v4, 8uLL, a2, pc_array_compare);
  }

  else
  {
    v10 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/GenericArray.c", "pc_array_indirect_sort", 95, 139, *v10, "malloc");
  }

  return v6;
}

uint64_t pc_array_aggregate(char *a1, unsigned int (*a2)(char *, char *), uint64_t (*a3)(char *, char *))
{
  if (*(a1 - 8) < 2uLL)
  {
    return 0;
  }

  v7 = &a1[*(a1 - 6)];
  v8 = 1;
  v9 = 1;
  v10 = a1;
  while (1)
  {
    if (a2(v10, v7))
    {
      v11 = *(a1 - 6);
      v10 += v11;
      if (v10 < v7)
      {
        memcpy(v10, v7, v11);
      }

      ++v9;
      goto LABEL_9;
    }

    if ((a3(v10, v7) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_9:
    ++v8;
    v7 += *(a1 - 6);
    if (v8 >= *(a1 - 8))
    {
      result = 0;
      *(a1 - 8) = v9;
      return result;
    }
  }
}

char *PCompressGetEncoderDescription(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_29EE51278[a1];
  }
}

uint64_t PCompressGetEncoderDecoder(uint64_t result)
{
  if (result >= 7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

unint64_t PCompressGetDecoderKey(unsigned int a1)
{
  v1 = 0x2D62653466787AuLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 63;
  }

  return v1 & 0x7F;
}

char *PCompressGetDecoderDescription(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_29EE512B0[a1];
  }
}

void *AEADecryptAsyncStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  DefaultNThreads = a6;
  if (!a6)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v12 = malloc(0x4A0uLL);
  v13 = v12;
  if (!v12)
  {
    v16 = *__error();
    v14 = "malloc";
    v15 = 884;
    goto LABEL_8;
  }

  memset_s(v12, 0x4A0uLL, 0, 0x4A0uLL);
  if (pthread_mutex_init((v13 + 56), 0))
  {
    v14 = "pthread_mutex_init";
    v15 = 885;
LABEL_6:
    v16 = 0;
LABEL_8:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "AEADecryptAsyncStreamOpen", v15, 114, v16, v14);
    decryptAsyncClose(v13);
    AAAsyncByteStreamClose(0);
    return 0;
  }

  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 1128) = -1;
  *(v13 + 1144) = -1;
  *(v13 + 1152) = -1;
  *(v13 + 32) = a5 >> 62;
  *(v13 + 40) = a5;
  *(v13 + 1160) = DefaultNThreads;
  v18 = calloc(DefaultNThreads, 8uLL);
  *(v13 + 1168) = v18;
  if (!v18)
  {
    v16 = *__error();
    v14 = "malloc";
    v15 = 899;
    goto LABEL_8;
  }

  if (*(v13 + 1160))
  {
    v19 = 0;
    while (1)
    {
      v20 = malloc(0x468uLL);
      v21 = v20;
      if (v20)
      {
        memset_s(v20, 0x468uLL, 0, 0x468uLL);
        *v21 = v13;
      }

      else
      {
        v22 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerAlloc", 129, 114, *v22, "malloc");
      }

      *(*(v13 + 1168) + 8 * v19) = v21;
      v23 = *(v13 + 1168);
      if (!*(v23 + 8 * v19))
      {
        break;
      }

      ++v19;
      v18 = *(v13 + 1160);
      if (v19 >= v18)
      {
        goto LABEL_20;
      }
    }

    v14 = "Worker alloc";
    v15 = 903;
    goto LABEL_6;
  }

  v23 = v18;
  LODWORD(v18) = 0;
LABEL_20:
  v24 = ThreadPoolCreate(v18, v23, workerProc);
  *(v13 + 1176) = v24;
  if (!v24)
  {
    v14 = "creating worker pool";
    v15 = 906;
    goto LABEL_6;
  }

  *(v13 + 52) = 0;
  if (pushRange(v13, 12))
  {
    v14 = "add range";
    v15 = 910;
    goto LABEL_6;
  }

  *(v13 + 1128) = 0;
  result = aaAsyncByteStreamAlloc(v13, decryptAsyncClose, ~(a5 >> 55) & 4, 20.0, 1.0);
  if (!result)
  {
    v16 = *__error();
    v14 = "malloc";
    v15 = 921;
    goto LABEL_8;
  }

  result[2] = decryptAsyncGetRange;
  result[3] = decryptAsyncProcess;
  result[4] = decryptAsyncCancel;
  result[5] = decryptAsyncIsCancelled;
  return result;
}

uint64_t workerProc(uint64_t result)
{
  v40 = *MEMORY[0x29EDCA608];
  v2 = *result;
  v1 = *(result + 8);
  if (v1 >= *(*result + 1120))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 183, 114, 0, "Invalid range index");
  }

  else
  {
    v3 = *(v2 + 1136) + 32 * v1;
    v4 = *(v3 + 24);
    if (*(v2 + 1096) <= v4)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 191, 114, 0, "Invalid segment index");
    }

    else
    {
      v5 = *(v2 + 784);
      if (v5 >= 0x101)
      {
        goto LABEL_62;
      }

      v6 = result;
      v35 = *(v2 + 1136) + 32 * v1;
      v7 = *(v3 + 28);
      v8 = (*(v2 + 1104) + *(v2 + 800) * v4);
      v9 = *(v2 + 152) * v4;
      v11 = *v8;
      v10 = v8[1];
      v12 = v8 + 2;
      v13 = (result + 612);
      memcpy((result + 612), v8 + 2, v5);
      *(v6 + 608) = v5;
      __s2 = v13;
      memset_s(&v13[v5], 256 - v5, 0, 256 - v5);
      result = aeaEffectiveCompressionAlgorithm(*(v2 + 160));
      if (v11 == v10)
      {
        v14 = 0;
      }

      else
      {
        v14 = result;
      }

      v15 = *(v6 + 16);
      if (v15 != 1)
      {
        if (v15)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 307, 114, 0, "Invalid op");
        }

        else if (v7 == 3)
        {
          v16 = *(v2 + 16);
          if (!v16)
          {
LABEL_29:
            result = 0;
            *(v35 + 28) = 4;
            return result;
          }

          v17 = v16(*v2, v11, v9, *(v2 + 148), __s2, *(v6 + 608));
          if ((v17 & 0x80000000) == 0)
          {
            if (v17)
            {
              *(v35 + 28) = 6;
              atomic_fetch_add((v2 + 120), 1u);
              if (*(v2 + 32) >= 3u)
              {
                fprintf(*MEMORY[0x29EDCA610], "Segment %u skipped, offset=%jd, payload=%u, raw=%u\n");
              }

              return 0;
            }

            goto LABEL_29;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 220, 114, 0, "Client selection callback reported an error");
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 207, 114, 0, "Invalid segment state");
        }

        goto LABEL_48;
      }

      if (v7 == 2)
      {
        if (*(v6 + 32) == v10)
        {
          v33 = v11;
          v18 = *(v2 + 324);
          if (v18 >= 0x101)
          {
            goto LABEL_62;
          }

          memcpy((v6 + 352), v12 + *(v2 + 784), *(v2 + 324));
          *(v6 + 348) = v18;
          memset_s((v6 + 352 + v18), 256 - v18, 0, 256 - v18);
          v19 = *(v2 + 156);
          v37 = 0;
          memset(v36, 0, sizeof(v36));
          memset(&__s[8], 0, 252);
          memset(v38, 0, 260);
          *&__s[8] = 19267;
          *__s = 0x5F41454100000006;
          memset_s(&__s[10], 0xFAuLL, 0, 0xFAuLL);
          *&__s[*__s + 4] = v4 / v19;
          *__s = 10;
          memset_s(&__s[14], 0xF6uLL, 0, 0xF6uLL);
          v20 = *(v2 + 384);
          if (v20 && *(v2 + 520))
          {
            v21 = v20(v36, *(v2 + 312));
            memset_s(__s, 0x104uLL, 0, 0x104uLL);
            v22 = 0;
            if ((v21 & 0x80000000) == 0)
            {
              goto LABEL_33;
            }
          }

          else
          {
            memset_s(__s, 0x104uLL, 0, 0x104uLL);
          }

          v22 = 1;
LABEL_33:
          memset(v38 + 8, 0, 224);
          memset(&v38[14] + 8, 0, 28);
          WORD4(v38[0]) = 19283;
          *&v38[0] = 0x5F41454100000006;
          result = memset_s(v38 + 10, 0xFAuLL, 0, 0xFAuLL);
          v23 = LODWORD(v38[0]);
          if (LODWORD(v38[0]) < 0xFD)
          {
            *(v38 + LODWORD(v38[0]) + 4) = v4 % v19;
            LODWORD(v38[0]) = v23 + 4;
            memset_s(v38 + v23 + 8, 252 - v23, 0, 252 - v23);
            memset(__s, 0, sizeof(__s));
            v24 = *(v2 + 384);
            if (v24 && LODWORD(v36[0]))
            {
              v25 = v24(v6 + 88, *(v2 + 316), v36, v38, __s);
              memset_s(v38, 0x104uLL, 0, 0x104uLL);
              if ((v25 & 0x80000000) == 0)
              {
                memset_s(v36, 0x104uLL, 0, 0x104uLL);
                if (!v22)
                {
                  v26 = *(v2 + 408);
                  if (v26 && *(v6 + 348) == *(v2 + 324) && (v27 = (v6 + 40), (v26(*(v6 + 40), *(v6 + 32)) & 0x80000000) == 0))
                  {
                    if (v14)
                    {
                      v27 = (v6 + 64);
                      v28 = compression_decode_buffer(*(v6 + 64), *(v6 + 48), *(v6 + 40), *(v6 + 32), *(v6 + 80), v14);
                      *(v6 + 56) = v28;
                    }

                    else
                    {
                      v28 = *(v6 + 32);
                    }

                    if (v28 == v33 && (v30 = *v27, (aeaChecksum(v6 + 868, *(v2 + 148), v30, v28) & 0x80000000) == 0) && (v31 = *(v6 + 868), *(v2 + 784) == v31) && v31 == *(v6 + 608) && !memcmp((v6 + 872), __s2, v31))
                    {
                      v32 = *(v2 + 24);
                      if (!v32 || (v32(*v2, v28, v9, v30) & 0x80000000) == 0)
                      {
                        *(v35 + 28) = 5;
                        atomic_fetch_add((v2 + 120), 1u);
                        if (*(v2 + 32) >= 3u)
                        {
                          fprintf(*MEMORY[0x29EDCA610], "Segment %u processed, offset=%jd, payload=%u, raw=%u\n");
                        }

                        return 0;
                      }

                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 297, 114, 0, "Client processing callback reported an error");
                    }

                    else
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 285, 114, 0, "Segment data failed verification");
                    }
                  }

                  else
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 259, 114, 0, "Segment decryption");
                  }

                  goto LABEL_48;
                }

                goto LABEL_45;
              }
            }

            else
            {
              memset_s(v38, 0x104uLL, 0, 0x104uLL);
            }

            memset_s(v36, 0x104uLL, 0, 0x104uLL);
LABEL_45:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 252, 114, 0, "derive segment encryption key");
            goto LABEL_48;
          }

LABEL_62:
          __break(1u);
          return result;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 242, 114, 0, "Segment payload size mismatch");
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerProc", 239, 114, 0, "Invalid segment state");
      }
    }
  }

LABEL_48:
  v29 = 0;
  atomic_compare_exchange_strong((v2 + 48), &v29, 1u);
  return 0xFFFFFFFFLL;
}

unint64_t pushRange(void *a1, uint64_t a2)
{
  v4 = a1[140];
  v5 = a1[139];
  if (v4 >= v5)
  {
    v6 = 2 * v5;
    v7 = v5 == 0;
    v8 = 32;
    if (!v7)
    {
      v8 = v6;
    }

    a1[139] = v8;
    if ((32 * v8) >= 0x2000000001)
    {
      *__error() = 12;
LABEL_14:
      a1[142] = 0;
      v15 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "pushRange", 346, 114, *v15, "malloc");
      a1[139] = 0;
      a1[140] = 0;
      return -1;
    }

    v9 = a1[142];
    v10 = realloc(v9, 32 * v8);
    if (!v10)
    {
      free(v9);
      goto LABEL_14;
    }

    a1[142] = v10;
    v4 = a1[140];
  }

  v11 = a1[142];
  if (v4)
  {
    v12 = &v11[4 * v4];
    v13 = *(v12 - 4) + *(v12 - 3);
    a1[140] = v4 + 1;
LABEL_11:
    memset_s(v12, 0x20uLL, 0, 0x20uLL);
    v14 = v13;
    goto LABEL_12;
  }

  v13 = 0;
  v14 = 0;
  a1[140] = 1;
  v12 = v11;
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_12:
  *v12 = a2;
  v12[1] = v14;
  v12[2] = -1;
  *(v12 + 6) = -1;
  return v4;
}

uint64_t decryptAsyncClose(uint64_t a1)
{
  v2 = atomic_load((a1 + 48));
  v3 = v2 == 0;
  if ((ThreadPoolDestroy(*(a1 + 1176)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncClose", 850, 114, 0, "ThreadPoolDestroy");
    v3 = 0;
  }

  v4 = *(a1 + 1168);
  if (v4)
  {
    v5 = *(a1 + 1160);
    if (v5)
    {
      for (i = 0; i < v5; ++i)
      {
        v7 = *(*(a1 + 1168) + 8 * i);
        if (v7)
        {
          v8 = *(v7 + 40);
          if (v8)
          {
            memset_s(*(v7 + 40), *(v7 + 24), 0, *(v7 + 24));
          }

          free(v8);
          v9 = *(v7 + 64);
          if (v9)
          {
            memset_s(*(v7 + 64), *(v7 + 48), 0, *(v7 + 48));
          }

          free(v9);
          v10 = *(v7 + 80);
          if (v10)
          {
            memset_s(*(v7 + 80), *(v7 + 72), 0, *(v7 + 72));
          }

          free(v10);
          memset_s(v7, 0x468uLL, 0, 0x468uLL);
          free(v7);
          v5 = *(a1 + 1160);
        }
      }

      v4 = *(a1 + 1168);
    }

    free(v4);
  }

  v11 = *(a1 + 808);
  if (v11)
  {
    memset_s(*(a1 + 808), *(a1 + 792), 0, *(a1 + 792));
  }

  free(v11);
  v12 = *(a1 + 1136);
  if (v12)
  {
    memset_s(*(a1 + 1136), 32 * *(a1 + 1112), 0, 32 * *(a1 + 1112));
  }

  free(v12);
  v13 = *(a1 + 1104);
  if (v13)
  {
    v14 = *(a1 + 800) * *(a1 + 1088);
    memset_s(*(a1 + 1104), v14, 0, v14);
  }

  free(v13);
  AEAContextDestroy(*(a1 + 128));
  pthread_mutex_destroy((a1 + 56));
  memset_s(a1, 0x4A0uLL, 0, 0x4A0uLL);
  free(a1);
  return (v3 - 1);
}

uint64_t decryptAsyncGetRange(uint64_t a1, void *a2, void *a3)
{
  if (atomic_load((a1 + 48)))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 56)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncGetRange", 743, 114, 0, "lockState");
LABEL_18:
    v15 = 0;
    atomic_compare_exchange_strong((a1 + 48), &v15, 1u);
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 52) == 4)
  {
    v7 = *(a1 + 1128);
    if (v7 < 0)
    {
LABEL_9:
      v10 = atomic_load((a1 + 120));
      if (*(a1 + 1096) == v10)
      {
        *(a1 + 52) = 5;
      }
    }

    else
    {
      v8 = *(a1 + 1136);
      while (1)
      {
        v9 = v8 + 32 * v7;
        if (*(v9 + 28) == 4)
        {
          break;
        }

        v7 = *(v9 + 16);
        *(a1 + 1128) = v7;
        if (v7 < 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v11 = *(a1 + 1128);
  if (v11 < 0)
  {
    if (*(a1 + 52) == 5)
    {
      *a2 = 0;
      *a3 = 0;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v12 = *(a1 + 1136) + 32 * v11;
    v13 = *(v12 + 8);
    *a2 = *v12;
    *a3 = v13;
    v14 = 1;
    *(v12 + 28) = 1;
    *(a1 + 1128) = *(v12 + 16);
  }

  if (pthread_mutex_unlock((a1 + 56)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncGetRange", 782, 114, 0, "unlockState");
    goto LABEL_18;
  }

  return v14;
}

uint64_t decryptAsyncProcess(uint64_t a1, uint64_t *a2, size_t a3, uint64_t a4)
{
  if (atomic_load((a1 + 48)))
  {
    return 0xFFFFFFFFLL;
  }

  if (!pthread_mutex_lock((a1 + 56)))
  {
    __key[0] = 0;
    v16 = 0u;
    __key[1] = a4;
    v9 = bsearch(__key, *(a1 + 1136), *(a1 + 1120), 0x20uLL, cmpRange);
    if (v9)
    {
      if (v9[7] != 1)
      {
LABEL_21:
        v12 = 0;
        goto LABEL_24;
      }

      v9[7] = 2;
      if (*v9 == a3)
      {
        v10 = *(a1 + 52);
        if (v10 <= 1)
        {
          if (v10)
          {
            if (v10 != 1)
            {
              goto LABEL_22;
            }

            v11 = processPrologue(a1, a2, a3);
          }

          else
          {
            v11 = processMagic(a1, a2, a3);
          }
        }

        else
        {
          switch(v10)
          {
            case 2:
              v11 = processClusterHeader(a1, a2, a3);
              break;
            case 3:
              v11 = processPadding(a1, a2, a3);
              break;
            case 4:
              v11 = processSegment(a1, (v9 - *(a1 + 1136)) >> 5, a2, a3);
              break;
            default:
LABEL_22:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 822, 114, 0, "Invalid archive");
              goto LABEL_23;
          }
        }

        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 808, 114, 0, "Invalid size received: %zu\n");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 800, 114, 0, "Invalid offset received: %jd\n");
    }

LABEL_23:
    v12 = 1;
LABEL_24:
    if (pthread_mutex_unlock((a1 + 56)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 825, 114, 0, "unlockState");
    }

    else if (!v12)
    {
      return 0;
    }

    goto LABEL_26;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "decryptAsyncProcess", 796, 114, 0, "lockState");
LABEL_26:
  v13 = 0;
  atomic_compare_exchange_strong((a1 + 48), &v13, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t processMagic(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(a1 + 32) >= 3u)
  {
    fprintf(*MEMORY[0x29EDCA610], "Magic received: %zu B\n", a3);
  }

  if (a3 == 12)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    memset(v7, 0, sizeof(v7));
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
    v13 = *a2;
    v14 = *(a2 + 2);
    if ((aeaContainerParamsInitWithMagic(v11, &v13) & 0x80000000) == 0 && (aeaCryptoInit((a1 + 312), v11) & 0x80000000) == 0 && (aeaContainerOffsetsInit(v7, v11, (a1 + 312)) & 0x80000000) == 0)
    {
      result = 0;
      **(a1 + 1136) = v8;
      *(a1 + 52) = 1;
      *(a1 + 1128) = 0;
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processMagic", 494, 114, 0, "Invalid archive");
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processMagic", 487, 114, 0, "Invalid magic");
  }

  return 0xFFFFFFFFLL;
}

uint64_t processPrologue(void *a1, _DWORD *a2, size_t a3)
{
  if (*(a1 + 8) >= 3u)
  {
    fprintf(*MEMORY[0x29EDCA610], "Prologue received: %zu B\n", a3);
  }

  v6 = aeaContextCreateWithPrologue(a2, a3);
  a1[16] = v6;
  if (!v6)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 514, 114, 0, "creating encryption context");
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v8 = a1[1];
  if (v8)
  {
    if ((v8(*a1, v6) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 518, 114, 0, "Context setup callback returned an error");
      return 0xFFFFFFFFLL;
    }

    v7 = a1[16];
  }

  if ((aeaContextUnlock(v7, (a1 + 17), a1 + 130, 0, 1, 0) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 521, 114, 0, "Archive unlock");
    return 0xFFFFFFFFLL;
  }

  v9 = aeaChecksumSize(*(a1 + 37));
  a1[98] = v9;
  if (v9 <= 0x1F)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 525, 114, 0, "Invalid checksum mode for decrypt to file, at least 256 bits are required");
    return 0xFFFFFFFFLL;
  }

  result = aeaContainerOffsetsInit((a1 + 26), a1 + 34, a1 + 78);
  if ((result & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 528, 114, 0, "Invalid archive");
    return 0xFFFFFFFFLL;
  }

  if (a1[1])
  {
    v11 = a1[16];
    *v11 = *(a1 + 17);
    v12 = *(a1 + 19);
    v13 = *(a1 + 21);
    v14 = *(a1 + 23);
    *(v11 + 64) = a1[25];
    *(v11 + 32) = v13;
    *(v11 + 48) = v14;
    *(v11 + 16) = v12;
    result = (a1[1])(*a1, a1[16]);
    if ((result & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 534, 114, 0, "Client post-unlock callback returned an error");
      return 0xFFFFFFFFLL;
    }
  }

  if ((*(a1 + 47) & 4) != 0)
  {
    *(a1[16] + 2740) = 1;
  }

  v15 = *(a1 + 39);
  v16 = ((a1[21] + *(a1 + 38) - 1) / *(a1 + 38) + v15 - 1) / v15;
  if (HIDWORD(v16))
  {
    v17 = 0;
  }

  else
  {
    v17 = (v16 * v15) >> 32 == 0;
  }

  if (!v17)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 546, 114, 0, "Invalid archive, too many clusters");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 195) = v16;
  v18 = *(a1 + 81);
  if (v18 >= 0x101)
  {
    __break(1u);
  }

  else
  {
    memcpy(a1 + 820, a2 + a1[33], *(a1 + 81));
    *(a1 + 204) = v18;
    memset_s(a1 + v18 + 820, 256 - v18, 0, 256 - v18);
    if (*(a1 + 195))
    {
      v19 = a1[98] + *(a1 + 81) + 8;
      a1[100] = v19;
      v20 = v16 * *(a1 + 39);
      a1[136] = v20;
      a1[137] = 0;
      if (v20 * v19 >= 0x2000000001)
      {
        *__error() = 12;
        a1[138] = 0;
LABEL_37:
        v25 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 569, 114, v25, "malloc");
        return 0xFFFFFFFFLL;
      }

      v22 = malloc(v20 * v19);
      a1[138] = v22;
      if (!v22)
      {
        goto LABEL_37;
      }

      v23 = pushRange(a1, a1[38]);
      if ((v23 & 0x8000000000000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 573, 114, 0, "inserting first cluster header range");
        return 0xFFFFFFFFLL;
      }

      v24 = v23;
      result = 0;
      *(a1 + 13) = 2;
      a1[141] = v24;
      *(a1 + 269) = 0;
    }

    else
    {
      v21 = pushPaddingRange(a1);
      if (v21 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 556, 114, 0, "inserting padding range");
        return 0xFFFFFFFFLL;
      }

      if (!v21 && (startStreaming(a1) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPrologue", 559, 114, 0, "Streaming data setup");
        return 0xFFFFFFFFLL;
      }

      return 0;
    }
  }

  return result;
}

uint64_t processClusterHeader(uint64_t a1, void *__src, size_t __n)
{
  v65 = *MEMORY[0x29EDCA608];
  LODWORD(v60) = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  if (*(a1 + 32) >= 3u)
  {
    fprintf(*MEMORY[0x29EDCA610], "Cluster header received: %zu B\n", __n);
  }

  v6 = *(a1 + 808);
  if (v6)
  {
    v7 = *(a1 + 792);
    goto LABEL_5;
  }

  v7 = *(a1 + 304);
  *(a1 + 792) = v7;
  if (v7 >= 0x2000000001)
  {
    *__error() = 12;
    *(a1 + 808) = 0;
LABEL_49:
    v40 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processClusterHeader", 596, 114, v40, "malloc", v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
LABEL_54:
    v39 = 0xFFFFFFFFLL;
    goto LABEL_55;
  }

  v6 = malloc(v7);
  *(a1 + 808) = v6;
  if (!v6)
  {
    goto LABEL_49;
  }

LABEL_5:
  if (v7 != __n)
  {
    v12 = "Invalid cluster header size";
    v13 = 600;
LABEL_53:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processClusterHeader", v13, 114, 0, v12, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
    goto LABEL_54;
  }

  memcpy(v6, __src, __n);
  v8 = *(a1 + 1076);
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  memset(&__s[8], 0, 252);
  memset(v63, 0, 260);
  *&__s[8] = 19267;
  *__s = 0x5F41454100000006;
  memset_s(&__s[10], 0xFAuLL, 0, 0xFAuLL);
  *&__s[*__s + 4] = v8;
  *__s = 10;
  memset_s(&__s[14], 0xF6uLL, 0, 0xF6uLL);
  v9 = *(a1 + 384);
  if (!v9 || !*(a1 + 520))
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  v10 = v9(v61, *(a1 + 312));
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  v11 = 0;
  if (v10 < 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  memset(v63 + 12, 0, 248);
  *(v63 + 4) = 0x4B4548435F414541;
  LODWORD(v63[0]) = 8;
  memset_s(v63 + 12, 0xF8uLL, 0, 0xF8uLL);
  memset(__s, 0, sizeof(__s));
  v14 = *(a1 + 384);
  if (!v14 || !LODWORD(v61[0]))
  {
    memset_s(v63, 0x104uLL, 0, 0x104uLL);
    goto LABEL_51;
  }

  v15 = v14(&v44, *(a1 + 316), v61, v63, __s);
  memset_s(v63, 0x104uLL, 0, 0x104uLL);
  if (v15 < 0)
  {
LABEL_51:
    memset_s(v61, 0x104uLL, 0, 0x104uLL);
    goto LABEL_52;
  }

  memset_s(v61, 0x104uLL, 0, 0x104uLL);
  if (v11)
  {
LABEL_52:
    v12 = "Cluster header encryption key derivation";
    v13 = 611;
    goto LABEL_53;
  }

  v16 = *(a1 + 408);
  if (!v16 || *(a1 + 816) != *(a1 + 324) || (result = v16(*(a1 + 808), *(a1 + 288), a1 + 816, &v44, *(a1 + 808) + *(a1 + 288), *(a1 + 304) - *(a1 + 288)), (result & 0x80000000) != 0))
  {
    v12 = "Cluster header decryption";
    v13 = 622;
    goto LABEL_53;
  }

  v18 = *(a1 + 324);
  v19 = *(a1 + 156);
  if (v19)
  {
    v20 = 0;
    v21 = *(a1 + 784) + 8;
    v22 = v19 * *(a1 + 1076);
    v23 = *(a1 + 296);
    v24 = *(a1 + 280);
    while (1)
    {
      v25 = *(a1 + 1096);
      if (v25 >= *(a1 + 1088))
      {
        v12 = "Invalid archive";
        v13 = 634;
        goto LABEL_53;
      }

      v26 = (*(a1 + 1104) + *(a1 + 800) * v25);
      memcpy(v26, (*(a1 + 808) + v24), v21);
      result = memcpy(v26 + v21, (*(a1 + 808) + v23), v18);
      v27 = *v26;
      if (!v27)
      {
        goto LABEL_41;
      }

      v28 = *(a1 + 1120);
      if (v28)
      {
        v28 = *(*(a1 + 1136) + 32 * v28 - 32) + *(*(a1 + 1136) + 32 * v28 - 24);
      }

      v29 = v26[1];
      if ((v28 + v29) > *(a1 + 176) || (v30 = *(a1 + 1080) + v27, v31 = *(a1 + 168), v30 > v31))
      {
        v12 = "Invalid archive: segment size mismatch";
        v13 = 648;
        goto LABEL_53;
      }

      if (v29 > v27 || (v30 != v31 ? (v32 = v27 >= *(a1 + 152)) : (v32 = 1), !v32))
      {
        v42 = v26[1];
        v43 = *v26;
        v12 = "Invalid segment sizes: payload=%u raw=%u";
        v13 = 651;
        goto LABEL_53;
      }

      ++*(a1 + 1096);
      *(a1 + 1080) = v30;
      result = pushRange(a1, v29);
      if (result < 0)
      {
        break;
      }

      v24 += v21;
      v23 += v18;
      v33 = *(a1 + 1136);
      v34 = v33 + 32 * result;
      *(v34 + 24) = v22;
      *(v34 + 28) = 3;
      v35 = *(a1 + 1152);
      v36 = (v33 + 32 * v35 + 16);
      if (v35 < 0)
      {
        v36 = (a1 + 1144);
      }

      *v36 = result;
      *(a1 + 1152) = result;
      ++v20;
      ++v22;
      if (v20 >= *(a1 + 156))
      {
LABEL_41:
        LODWORD(v18) = *(a1 + 324);
        goto LABEL_42;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "pushSegmentRange", 386, 114, 0, "inserting segment range");
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processClusterHeader", 658, 114, 0, "inserting segment range", v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
    goto LABEL_54;
  }

LABEL_42:
  if (v18 < 0x101)
  {
    memcpy((a1 + 820), (*(a1 + 808) + *(a1 + 288)), v18);
    *(a1 + 816) = v18;
    memset_s((a1 + 820 + v18), 256 - v18, 0, 256 - v18);
    v37 = *(a1 + 1076) + 1;
    *(a1 + 1076) = v37;
    if (v37 == *(a1 + 780))
    {
      v38 = pushPaddingRange(a1);
      if (v38 < 0)
      {
        v12 = "inserting padding range";
        v13 = 669;
      }

      else
      {
        if (v38 || (startStreaming(a1) & 0x80000000) == 0)
        {
          v39 = 0;
LABEL_55:
          memset_s(&v44, 0x104uLL, 0, 0x104uLL);
          return v39;
        }

        v12 = "Streaming data setup";
        v13 = 672;
      }
    }

    else
    {
      v41 = pushRange(a1, *(a1 + 304));
      if ((v41 & 0x8000000000000000) == 0)
      {
        v39 = 0;
        *(a1 + 1128) = v41;
        goto LABEL_55;
      }

      v12 = "inserting next cluster header range";
      v13 = 679;
    }

    goto LABEL_53;
  }

  __break(1u);
  return result;
}

uint64_t processPadding(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (*(a1 + 32) >= 3u)
  {
    fprintf(*MEMORY[0x29EDCA610], "Padding received: %zu B\n", a3);
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  __s = 0u;
  v18 = 0u;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  if (*(a1 + 488) && (*(v15 + 7) = 1262571615, *&v15[0] = 0x5F41454100000007, memset_s((v15 | 0xB), 0xF9uLL, 0, 0xF9uLL), (v6 = *(a1 + 384)) != 0) && *(a1 + 520) && (v6(&__s, *(a1 + 312)) & 0x80000000) == 0)
  {
    v7 = (*(a1 + 488))(&__s);
  }

  else
  {
    v7 = 0;
  }

  memset_s(&__s, 0x104uLL, 0, 0x104uLL);
  memset_s(v15, 0x104uLL, 0, 0x104uLL);
  if (!v7)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPadding", 699, 114, 0, "authenticating padding");
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 496);
  v9 = !v8 || (v8(v7, a2, a3) & 0x80000000) != 0;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  __s = 0u;
  v18 = 0u;
  v10 = *(a1 + 504);
  if (!v10)
  {
    goto LABEL_22;
  }

  if (*(a1 + 816) != *(a1 + 324))
  {
    goto LABEL_22;
  }

  if ((v10(v7, &__s) & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (__s != *(a1 + 324))
  {
    goto LABEL_22;
  }

  if (__s >= 8)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v12 |= *(&__s + v11 + 4) ^ *(a1 + 820 + v11);
      v13 = v11 + 16;
      v11 += 8;
    }

    while (v13 <= __s);
    if (v12)
    {
LABEL_22:
      memset_s(&__s, 0x104uLL, 0, 0x104uLL);
LABEL_23:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPadding", 702, 114, 0, "authenticating padding");
      return 0xFFFFFFFFLL;
    }
  }

  memset_s(&__s, 0x104uLL, 0, 0x104uLL);
  if (v9)
  {
    goto LABEL_23;
  }

  if ((startStreaming(a1) & 0x80000000) == 0)
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processPadding", 705, 114, 0, "Streaming data setup");
  return 0xFFFFFFFFLL;
}

uint64_t processSegment(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = a4;
  if (*(a1 + 32) >= 3u)
  {
    fprintf(*MEMORY[0x29EDCA610], "Segment received: %zu B\n", a4);
  }

  Worker = ThreadPoolGetWorker(*(a1 + 1176));
  if (!Worker)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processSegment", 720, 114, 0, "ThreadPoolGetWorker");
    goto LABEL_9;
  }

  v9 = Worker;
  v10 = 1;
  if (*(Worker + 24) < v4)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processSegment", 723, 114, 0, "Invalid segment size");
    v10 = 0;
    v4 = 0;
  }

  memcpy(*(v9 + 40), a3, v4);
  *(v9 + 32) = v4;
  *(v9 + 16) = 1;
  *(v9 + 8) = a2;
  if ((ThreadPoolRunWorker(*(a1 + 1176)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "processSegment", 728, 114, 0, "ThreadPoolRunWorker");
LABEL_9:
    v10 = 0;
  }

  if (v10)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t cmpRange(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 < v3;
  v5 = v2 != v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t pushPaddingRange(uint64_t a1)
{
  if (*(*(a1 + 128) + 2740))
  {
    return 0;
  }

  v2 = *(a1 + 1120);
  if (v2)
  {
    v2 = *(*(a1 + 1136) + 32 * v2 - 32) + *(*(a1 + 1136) + 32 * v2 - 24);
  }

  v3 = *(a1 + 176);
  if (v3 == v2)
  {
    return 0;
  }

  if (v3 >= v2)
  {
    v5 = pushRange(a1, v3 - v2);
    if ((v5 & 0x8000000000000000) == 0)
    {
      *(a1 + 52) = 3;
      *(a1 + 1128) = v5;
      return 1;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "pushPaddingRange", 375, 114, 0, "inserting padding range");
  }

  return 0xFFFFFFFFLL;
}

uint64_t startStreaming(uint64_t a1)
{
  if (!*(a1 + 780))
  {
    result = 0;
    *(a1 + 52) = 5;
    return result;
  }

  if (!*(a1 + 1160))
  {
LABEL_14:
    v13 = *(a1 + 1120);
    if (v13)
    {
      v14 = 0;
      v15 = 24;
      do
      {
        if (*(*(a1 + 1136) + v15) != -1)
        {
          Worker = ThreadPoolGetWorker(*(a1 + 1176));
          if (!Worker)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "startStreaming", 449, 114, 0, "ThreadPoolGetWorker");
            return 0xFFFFFFFFLL;
          }

          *(Worker + 16) = 0;
          *(Worker + 8) = v14;
          if ((ThreadPoolRunWorker(*(a1 + 1176)) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "startStreaming", 452, 114, 0, "ThreadPoolRunWorker");
            return 0xFFFFFFFFLL;
          }

          v13 = *(a1 + 1120);
        }

        ++v14;
        v15 += 32;
      }

      while (v14 < v13);
    }

    if ((ThreadPoolSync(*(a1 + 1176)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "startStreaming", 454, 114, 0, "ThreadPoolSync");
      return 0xFFFFFFFFLL;
    }

    v17 = *(a1 + 1120);
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = (*(a1 + 1136) + 28);
      do
      {
        v22 = *v20;
        v20 += 8;
        v21 = v22;
        if (v22 == 4)
        {
          v23 = v19 + 1;
        }

        else
        {
          v23 = v19;
        }

        if (v21 == 6)
        {
          ++v18;
        }

        else
        {
          v19 = v23;
        }

        --v17;
      }

      while (v17);
      v17 = (v18 + v19);
    }

    if (*(a1 + 1096) != v17 || *(a1 + 1080) != *(a1 + 168))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "startStreaming", 467, 114, 0, "Segment count/size mismatch");
      return 0xFFFFFFFFLL;
    }

    result = 0;
    *(a1 + 52) = 4;
    *(a1 + 1128) = *(a1 + 1144);
    return result;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(*(a1 + 1168) + 8 * v2);
    if (v3[3])
    {
      goto LABEL_5;
    }

    v4 = *v3;
    v5 = *(*v3 + 152);
    v6 = malloc(v5);
    v3[5] = v6;
    if (!v6)
    {
      v25 = 144;
      goto LABEL_44;
    }

    v3[3] = v5;
    v7 = aeaEffectiveCompressionAlgorithm(*(v4 + 160));
    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = v7;
    v9 = malloc(v5);
    v3[8] = v9;
    if (!v9)
    {
      v25 = 152;
      goto LABEL_44;
    }

    v3[6] = v5;
    v10 = compression_decode_scratch_buffer_size(v8);
    if (!v10)
    {
      goto LABEL_5;
    }

    v11 = v10;
    if (v10 >= 0x2000000001)
    {
      break;
    }

    v12 = malloc(v10);
    v3[10] = v12;
    if (!v12)
    {
      goto LABEL_43;
    }

    v3[9] = v11;
LABEL_5:
    if (++v2 >= *(a1 + 1160))
    {
      goto LABEL_14;
    }
  }

  *__error() = 12;
  v3[10] = 0;
LABEL_43:
  v25 = 159;
LABEL_44:
  v26 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "workerAllocBuffers", v25, 114, *v26, "malloc");
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAsyncStream.c", "startStreaming", 440, 114, 0, "Worker buffer allocation");
  return 0xFFFFFFFFLL;
}

int AAArchiveStreamReadHeader(AAArchiveStream s, AAHeader *header)
{
  v2 = *(s + 5);
  if (v2)
  {
    return v2(*s, header);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamReadBlob(AAArchiveStream s, AAFieldKey key, void *buf, size_t nbyte)
{
  v4 = *(s + 6);
  if (v4)
  {
    return v4(*s, key.ikey, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamWriteHeader(AAArchiveStream s, AAHeader header)
{
  v2 = *(s + 3);
  if (v2)
  {
    return v2(*s, header);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamWriteBlob(AAArchiveStream s, AAFieldKey key, const void *buf, size_t nbyte)
{
  v4 = *(s + 4);
  if (v4)
  {
    return v4(*s, key.ikey, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamClose(AAArchiveStream s)
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

void AAArchiveStreamCancel(AAArchiveStream s)
{
  v1 = *(s + 2);
  if (v1)
  {
    v1(*s);
  }
}

AAArchiveStream AACustomArchiveStreamOpen(void)
{
  v0 = malloc(0x38uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x38uLL, 0, 0x38uLL);
  }

  else
  {
    v2 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AACustomArchiveStreamOpen", 49, 14, *v2, "malloc");
  }

  return v1;
}

uint64_t appendPathListWorkerProc(unint64_t **a1)
{
  v138 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  bzero(path, 0x400uLL);
  bzero(v136, 0x800uLL);
  v4 = AAHeaderCreate();
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 168, 14, 0, "creating header");
    v5 = 0;
  }

  v6 = AAEntryXATBlobCreate();
  if (!v6)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 170, 14, 0, "creating XAT field");
    v5 = 0;
  }

  v7 = AAEntryACLBlobCreate();
  if (!v7)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 172, 14, 0, "creating XAT field");
    v5 = 0;
  }

  v8 = AAEntryYECBlobCreate();
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 174, 14, 0, "creating YEC field");
    v5 = 0;
  }

  memset(&v133, 0, sizeof(v133));
  size[0] = 0;
  size[1] = 0;
  v132 = 0;
  v9 = (v2[136] + 40 * a1[1]);
  v10 = *v9;
  if (*v9 < v9[1])
  {
    v11 = *(v2 + 280) != 0;
    do
    {
      v12 = v2[144] + (v10 << 7);
      if (v11 || *(v2 + 280))
      {
        v5 = 0;
        v13 = 1;
        v11 = 1;
      }

      else
      {
        path_length = 0;
        if (AAPathListNodeGetPath(v2[1], *(v12 + 24), 0x400uLL, path, &path_length) < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 192, 14, 0, "AAPathListNodeGetPath", v112);
          goto LABEL_41;
        }

        if ((concatPath(v136, 0x800uLL, v2 + 24, path) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 193, 14, 0, "invalid path", v112);
          goto LABEL_41;
        }

        v14 = v2[132];
        if (!v14 || (v14(v2[131], 30, path, 0) & 0x80000000) == 0)
        {
          if (lstat(v136, &v133) < 0)
          {
            v22 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 202, 14, v22, "lstat %s");
          }

          else if ((aaHeaderInitWithPath(v4, v2[2], v2 + 24, path, v3) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 203, 14, 0, "initializing header from path");
          }

          else
          {
            v15.ikey = 5521732;
            if (AAFieldKeySetContainsKey(v2[2], v15) && (v133.st_mode & 0xF000) == 0x8000 && (v16.ikey = 5521732, AAHeaderSetFieldBlob(v4, 0xFFFFFFFF, v16, v133.st_size) < 0))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 209, 14, 0, "inserting DAT: %s");
            }

            else
            {
              v17.ikey = 5521752;
              if (AAFieldKeySetContainsKey(v2[2], v17) && (v133.st_mode & 0xF000) != 0xC000)
              {
                if ((aaEntryXATBlobInitWithPath(v6, v2 + 24, path) & 0x80000000) != 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 216, 14, 0, "initializing XAT field from path", v112);
                }

                else
                {
                  if (!AAEntryXATBlobGetEntryCount(v6))
                  {
                    goto LABEL_28;
                  }

                  EncodedSize = AAEntryXATBlobGetEncodedSize(v6);
                  v28.ikey = 5521752;
                  if ((AAHeaderSetFieldBlob(v4, 0xFFFFFFFF, v28, EncodedSize) & 0x80000000) == 0)
                  {
                    __src = 0;
                    goto LABEL_29;
                  }

                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 220, 14, 0, "inserting XAT: %s");
                }
              }

              else
              {
LABEL_28:
                __src = 1;
LABEL_29:
                v18.ikey = 4997953;
                if (!AAFieldKeySetContainsKey(v2[2], v18))
                {
                  goto LABEL_42;
                }

                v19 = v133.st_mode & 0xF000;
                if (v19 != 0x8000 && v19 != 0x4000)
                {
                  goto LABEL_42;
                }

                if ((aaEntryACLBlobInitWithPath(v7, v2 + 24, path, v3) & 0x80000000) != 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 228, 14, 0, "initializing ACL field from path", v112);
                  goto LABEL_41;
                }

                if (!AAEntryACLBlobGetEntryCount(v7))
                {
LABEL_42:
                  v119 = 1;
LABEL_43:
                  v24.ikey = 4408665;
                  if (AAFieldKeySetContainsKey(v2[2], v24))
                  {
                    v121 = 1;
                    if ((v133.st_mode & 0xF000) == 0x8000 && v133.st_size >= 1)
                    {
                      if ((aaEntryYECBlobInitWithPath(v8, 65552, v2 + 24, path) & 0x80000000) != 0)
                      {
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 240, 14, 0, "initializing YEC field from path", v112);
                        goto LABEL_41;
                      }

                      v25 = AAEntryYECBlobGetEncodedSize(v8);
                      v26.ikey = 4408665;
                      if (AAHeaderSetFieldBlob(v4, 0xFFFFFFFF, v26, v25) < 0)
                      {
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 242, 14, 0, "inserting YEC: %s");
                        goto LABEL_41;
                      }

                      v121 = 0;
                    }
                  }

                  else
                  {
                    v121 = 1;
                  }

                  v29.ikey = 5260889;
                  if (!AAFieldKeySetContainsKey(v2[2], v29))
                  {
                    v118 = 1;
                    goto LABEL_61;
                  }

                  v118 = 1;
                  if ((v133.st_mode & 0xF000) != 0x8000 || v133.st_size < 1)
                  {
                    goto LABEL_61;
                  }

                  if ((aaEntryYFPBlobInitWithPath(size, v2 + 24, path) & 0x80000000) != 0)
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 249, 14, 0, "initializing YFP field from path", v112);
                  }

                  else
                  {
                    v30.ikey = 5260889;
                    if ((AAHeaderSetFieldBlob(v4, 0xFFFFFFFF, v30, size[0]) & 0x80000000) == 0)
                    {
                      v118 = 0;
LABEL_61:
                      v31.ikey = 4410440;
                      if (AAFieldKeySetContainsKey(v2[2], v31) && (v133.st_mode & 0xF000) == 0x8000 && v133.st_nlink >= 2u)
                      {
                        *(v12 + 32) = v133.st_ino;
                      }

                      v32.ikey = 4410435;
                      v33 = AAFieldKeySetContainsKey(v2[2], v32);
                      st_mode = v133.st_mode;
                      xat = v6;
                      if (v33 && (v133.st_mode & 0xF000) == 0x8000)
                      {
                        v134 = 0uLL;
                        if (!fsctl(v136, 0x40104A0EuLL, &v134, 0) && v134 == 2)
                        {
                          *(v12 + 40) = *(&v134 + 1);
                        }

                        st_mode = v133.st_mode;
                      }

                      if ((st_mode & 0xF000) == 0x8000)
                      {
                        v35.ikey = 4410451;
                        if (AAFieldKeySetContainsKey(v2[2], v35))
                        {
                          if ((*(v12 + 48) = 0, memset_s((v12 + 56), 0x40uLL, 0, 0x40uLL), hash_function = 0, v36.ikey = 3491923, !AAFieldKeySetContainsKey(v2[2], v36)) || (v37.ikey = 3491923, v38 = AAHeaderGetKeyIndex(v4, v37), (v38 & 0x80000000) != 0) || ((v39 = AAHeaderGetFieldHash(v4, v38, 0x40uLL, &hash_function, (v12 + 56)), v39 <= 1) ? (v40 = 1) : (v40 = v39), v40 <= 0))
                          {
                            if ((v41.ikey = 3360851, !AAFieldKeySetContainsKey(v2[2], v41)) || (v42.ikey = 3360851, v43 = AAHeaderGetKeyIndex(v4, v42), (v43 & 0x80000000) != 0) || ((v44 = AAHeaderGetFieldHash(v4, v43, 0x40uLL, &hash_function, (v12 + 56)), v44 <= 1) ? (v45 = 1) : (v45 = v44), v45 <= 0))
                            {
                              if ((v46.ikey = 3295315, !AAFieldKeySetContainsKey(v2[2], v46)) || (v47.ikey = 3295315, v48 = AAHeaderGetKeyIndex(v4, v47), (v48 & 0x80000000) != 0) || ((v49 = AAHeaderGetFieldHash(v4, v48, 0x40uLL, &hash_function, (v12 + 56)), v49 <= 1) ? (v50 = 1) : (v50 = v49), v50 <= 0))
                              {
                                if ((v51.ikey = 3229779, !AAFieldKeySetContainsKey(v2[2], v51)) || (v52.ikey = 3229779, KeyIndex = AAHeaderGetKeyIndex(v4, v52), (KeyIndex & 0x80000000) != 0) || ((FieldHash = AAHeaderGetFieldHash(v4, KeyIndex, 0x40uLL, &hash_function, (v12 + 56)), FieldHash <= 1) ? (v55 = 1) : (v55 = FieldHash), v55 <= 0))
                                {
                                  v134 = 0uLL;
                                  v135 = 0;
                                  if ((getFileSHA1Digest(v136, &v134) & 0x80000000) == 0)
                                  {
                                    v56 = v134;
                                    *(v12 + 72) = v135;
                                    *(v12 + 56) = v56;
                                    goto LABEL_99;
                                  }

                                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 282, 14, 0, "hashing file: %s", v136);
                                  v11 = 0;
                                  v5 = 0;
                                  v13 = 1;
LABEL_236:
                                  v6 = xat;
                                  goto LABEL_15;
                                }
                              }
                            }
                          }
                        }
                      }

LABEL_99:
                      v116 = v3;
                      v57 = AAHeaderGetEncodedSize(v4);
                      if ((__src & 1) == 0)
                      {
                        v57 += AAEntryXATBlobGetEncodedSize(xat);
                      }

                      if ((v119 & 1) == 0)
                      {
                        v57 += AAEntryACLBlobGetEncodedSize(v7);
                      }

                      if ((v121 & 1) == 0)
                      {
                        v57 += AAEntryYECBlobGetEncodedSize(v8);
                      }

                      v58 = size[0];
                      if (v118)
                      {
                        v58 = 0;
                      }

                      v59 = v58 + v57;
                      *v12 = v9[2];
                      *(v12 + 8) = v58 + v57;
                      *(v12 + 16) = AAHeaderGetEncodedSize(v4);
                      v60 = v9[2] + v59;
                      if ((v60 & 0x8000000000000000) != 0)
                      {
LABEL_142:
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 300, 14, 0, "reallocating block blob");
                        v11 = 0;
                        v5 = 0;
                        v13 = 1;
                      }

                      else
                      {
                        v61 = v9[3];
                        if (v61 < v60)
                        {
                          do
                          {
                            while (!v61)
                            {
                              v61 = 0x4000;
                              v63 = 0x4000;
                              if (v60 <= 0x4000)
                              {
                                goto LABEL_121;
                              }
                            }

                            v62 = v61 >> 1;
                            if ((v61 & (v61 >> 1)) != 0)
                            {
                              v62 = v61 & (v61 >> 1);
                            }

                            v61 += v62;
                          }

                          while (v61 < v60);
                          v63 = v61;
                          if (v61 >= 0x2000000001)
                          {
                            *__error() = 12;
                            goto LABEL_141;
                          }

LABEL_121:
                          v64 = v9[4];
                          v65 = realloc(v64, v63);
                          if (v65)
                          {
                            v9[3] = v63;
                            v9[4] = v65;
                            goto LABEL_123;
                          }

                          free(v64);
LABEL_141:
                          v9[2] = 0;
                          v9[3] = 0;
                          v9[4] = 0;
                          goto LABEL_142;
                        }

LABEL_123:
                        EncodedData = AAHeaderGetEncodedData(v4);
                        v67 = AAHeaderGetEncodedSize(v4);
                        v68 = v9[2];
                        v69 = v68 + v67;
                        if (!__CFADD__(v68, v67) && (v69 & 0x8000000000000000) == 0)
                        {
                          v70 = v67;
                          v71 = v9[3];
                          if (v71 >= v69)
                          {
LABEL_147:
                            v75 = v9[4];
                            if (EncodedData)
                            {
                              memcpy((v75 + v9[2]), EncodedData, v70);
                            }

                            else if (v75)
                            {
                              memset_s((v75 + v9[2]), v70, 0, v70);
                            }

                            v68 = v9[2] + v70;
                            v9[2] = v68;
                          }

                          else
                          {
                            v114 = EncodedData;
                            do
                            {
                              while (!v71)
                              {
                                v71 = 0x4000;
                                v73 = 0x4000;
                                if (v69 <= 0x4000)
                                {
                                  goto LABEL_145;
                                }
                              }

                              v72 = v71 >> 1;
                              if ((v71 & (v71 >> 1)) != 0)
                              {
                                v72 = v71 & (v71 >> 1);
                              }

                              v71 += v72;
                            }

                            while (v71 < v69);
                            v73 = v71;
                            if (v71 >= 0x2000000001)
                            {
                              *__error() = 12;
                              goto LABEL_154;
                            }

LABEL_145:
                            v113 = v9[4];
                            v74 = realloc(v113, v73);
                            if (v74)
                            {
                              v9[3] = v73;
                              v9[4] = v74;
                              EncodedData = v114;
                              goto LABEL_147;
                            }

                            free(v113);
LABEL_154:
                            v68 = 0;
                            v9[2] = 0;
                            v9[3] = 0;
                            v9[4] = 0;
                          }
                        }

                        if ((__src & 1) == 0)
                        {
                          __srca = AAEntryXATBlobGetEncodedData(xat);
                          v76 = AAEntryXATBlobGetEncodedSize(xat);
                          v68 = v9[2];
                          v77 = v68 + v76;
                          if (!__CFADD__(v68, v76) && (v77 & 0x8000000000000000) == 0)
                          {
                            v78 = v76;
                            v79 = v9[3];
                            if (v79 >= v77)
                            {
LABEL_170:
                              v83 = v9[4];
                              if (__srca)
                              {
                                memcpy((v83 + v9[2]), __srca, v78);
                              }

                              else if (v83)
                              {
                                memset_s((v83 + v9[2]), v78, 0, v78);
                              }

                              v68 = v9[2] + v78;
                              v9[2] = v68;
                            }

                            else
                            {
                              do
                              {
                                while (!v79)
                                {
                                  v79 = 0x4000;
                                  v81 = 0x4000;
                                  if (v77 <= 0x4000)
                                  {
                                    goto LABEL_168;
                                  }
                                }

                                v80 = v79 >> 1;
                                if ((v79 & (v79 >> 1)) != 0)
                                {
                                  v80 = v79 & (v79 >> 1);
                                }

                                v79 += v80;
                              }

                              while (v79 < v77);
                              v81 = v79;
                              if (v79 >= 0x2000000001)
                              {
                                *__error() = 12;
                                goto LABEL_176;
                              }

LABEL_168:
                              v115 = v9[4];
                              v82 = realloc(v115, v81);
                              if (v82)
                              {
                                v9[3] = v81;
                                v9[4] = v82;
                                goto LABEL_170;
                              }

                              free(v115);
LABEL_176:
                              v68 = 0;
                              v9[2] = 0;
                              v9[3] = 0;
                              v9[4] = 0;
                            }
                          }
                        }

                        if ((v119 & 1) == 0)
                        {
                          v84 = AAEntryACLBlobGetEncodedData(v7);
                          v85 = AAEntryACLBlobGetEncodedSize(v7);
                          v68 = v9[2];
                          v86 = v68 + v85;
                          if (!__CFADD__(v68, v85) && (v86 & 0x8000000000000000) == 0)
                          {
                            v87 = v85;
                            v88 = v9[3];
                            if (v88 >= v86)
                            {
LABEL_193:
                              v92 = v9[4];
                              if (v84)
                              {
                                memcpy((v92 + v9[2]), v84, v87);
                              }

                              else if (v92)
                              {
                                memset_s((v92 + v9[2]), v87, 0, v87);
                              }

                              v68 = v9[2] + v87;
                              v9[2] = v68;
                            }

                            else
                            {
                              __srcb = v84;
                              do
                              {
                                while (!v88)
                                {
                                  v88 = 0x4000;
                                  v90 = 0x4000;
                                  if (v86 <= 0x4000)
                                  {
                                    goto LABEL_191;
                                  }
                                }

                                v89 = v88 >> 1;
                                if ((v88 & (v88 >> 1)) != 0)
                                {
                                  v89 = v88 & (v88 >> 1);
                                }

                                v88 += v89;
                              }

                              while (v88 < v86);
                              v90 = v88;
                              if (v88 >= 0x2000000001)
                              {
                                *__error() = 12;
                                goto LABEL_199;
                              }

LABEL_191:
                              v120 = v9[4];
                              v91 = realloc(v120, v90);
                              if (v91)
                              {
                                v9[3] = v90;
                                v9[4] = v91;
                                v84 = __srcb;
                                goto LABEL_193;
                              }

                              free(v120);
LABEL_199:
                              v68 = 0;
                              v9[2] = 0;
                              v9[3] = 0;
                              v9[4] = 0;
                            }
                          }
                        }

                        if ((v121 & 1) == 0)
                        {
                          v93 = AAEntryYECBlobGetEncodedData(v8);
                          v94 = AAEntryYECBlobGetEncodedSize(v8);
                          v68 = v9[2];
                          v95 = v68 + v94;
                          if (!__CFADD__(v68, v94) && (v95 & 0x8000000000000000) == 0)
                          {
                            v96 = v94;
                            v97 = v9[3];
                            if (v97 >= v95)
                            {
LABEL_216:
                              v101 = v9[4];
                              if (v93)
                              {
                                memcpy((v101 + v9[2]), v93, v96);
                              }

                              else if (v101)
                              {
                                memset_s((v101 + v9[2]), v96, 0, v96);
                              }

                              v68 = v9[2] + v96;
                              v9[2] = v68;
                            }

                            else
                            {
                              __srcc = v93;
                              do
                              {
                                while (!v97)
                                {
                                  v97 = 0x4000;
                                  v99 = 0x4000;
                                  if (v95 <= 0x4000)
                                  {
                                    goto LABEL_214;
                                  }
                                }

                                v98 = v97 >> 1;
                                if ((v97 & (v97 >> 1)) != 0)
                                {
                                  v98 = v97 & (v97 >> 1);
                                }

                                v97 += v98;
                              }

                              while (v97 < v95);
                              v99 = v97;
                              if (v97 >= 0x2000000001)
                              {
                                *__error() = 12;
                                goto LABEL_222;
                              }

LABEL_214:
                              v122 = v9[4];
                              v100 = realloc(v122, v99);
                              if (v100)
                              {
                                v9[3] = v99;
                                v9[4] = v100;
                                v93 = __srcc;
                                goto LABEL_216;
                              }

                              free(v122);
LABEL_222:
                              v68 = 0;
                              v9[2] = 0;
                              v9[3] = 0;
                              v9[4] = 0;
                            }
                          }
                        }

                        if ((v118 & 1) != 0 || (v102 = size[0], v103 = __CFADD__(v68, size[0]), v104 = v68 + size[0], v103) || (v104 & 0x8000000000000000) != 0)
                        {
                          v13 = 0;
                          v11 = 0;
                        }

                        else
                        {
                          v105 = v132;
                          v106 = v9[3];
                          if (v106 >= v104)
                          {
LABEL_241:
                            v110 = v9[4];
                            if (v105)
                            {
                              memcpy((v110 + v9[2]), v105, v102);
                            }

                            else if (v110)
                            {
                              memset_s((v110 + v9[2]), v102, 0, v102);
                            }

                            v13 = 0;
                            v11 = 0;
                            v9[2] += v102;
                          }

                          else
                          {
                            do
                            {
                              while (!v106)
                              {
                                v106 = 0x4000;
                                v108 = 0x4000;
                                if (v104 <= 0x4000)
                                {
                                  goto LABEL_239;
                                }
                              }

                              v107 = v106 >> 1;
                              if ((v106 & (v106 >> 1)) != 0)
                              {
                                v107 = v106 & (v106 >> 1);
                              }

                              v106 += v107;
                            }

                            while (v106 < v104);
                            v108 = v106;
                            if (v106 >= 0x2000000001)
                            {
                              *__error() = 12;
                              goto LABEL_247;
                            }

LABEL_239:
                            v123 = v9[4];
                            __srcd = v132;
                            v109 = realloc(v123, v108);
                            if (v109)
                            {
                              v9[3] = v108;
                              v9[4] = v109;
                              v105 = __srcd;
                              goto LABEL_241;
                            }

                            free(v123);
LABEL_247:
                            v13 = 0;
                            v11 = 0;
                            v9[2] = 0;
                            v9[3] = 0;
                            v9[4] = 0;
                          }
                        }
                      }

                      v3 = v116;
                      goto LABEL_236;
                    }

                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 251, 14, 0, "inserting YFP: %s");
                  }

                  goto LABEL_41;
                }

                v20 = AAEntryACLBlobGetEncodedSize(v7);
                v21.ikey = 4997953;
                if ((AAHeaderSetFieldBlob(v4, 0xFFFFFFFF, v21, v20) & 0x80000000) == 0)
                {
                  v119 = 0;
                  goto LABEL_43;
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 232, 14, 0, "inserting ACL: %s");
              }
            }
          }

LABEL_41:
          v11 = 0;
          v5 = 0;
          v13 = 1;
          goto LABEL_15;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 199, 14, "operation aborted");
        v23 = 0;
        v11 = 0;
        v5 = 0;
        v13 = 1;
        atomic_compare_exchange_strong(v2 + 280, &v23, 1u);
      }

LABEL_15:
      *(v12 + 120) = v13;
      ++v10;
    }

    while (v10 < v9[1]);
  }

  AAHeaderDestroy(v4);
  AAEntryXATBlobDestroy(v6);
  AAEntryACLBlobDestroy(v7);
  AAEntryYECBlobDestroy(v8);
  free(v132);
  memset_s(size, 0x18uLL, 0, 0x18uLL);
  if (v5)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

int AAArchiveStreamWritePathList(AAArchiveStream s, AAPathList path_list, AAFieldKeySet key_set, const char *dir, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v8 = MEMORY[0x2A1C7C4A8](s, path_list, key_set, dir, msg_data, msg_proc, flags, *&n_threads);
  DefaultNThreads = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v8;
  v264 = *MEMORY[0x29EDCA608];
  bzero(v249, 0x470uLL);
  RealTime = getRealTime();
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v247 = v22;
  v248 = v20;
  v253 = 1024;
  LODWORD(__count) = DefaultNThreads;
  v246 = v12;
  v250 = v16;
  v251 = v14;
  if (!realpath_DARWIN_EXTSN(v18, v249))
  {
    v28 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 373, 14, v28, "%s");
LABEL_18:
    v36 = 0;
    v37 = 0;
    v38 = 0;
LABEL_19:
    v39 = 0;
    v40 = 0;
    goto LABEL_20;
  }

  v25 = AAPathListNodeFirst(v22);
  if (v25 != -1)
  {
    for (i = v25; i != -1; i = AAPathListNodeNext(v22, i))
    {
      ++v252;
    }
  }

  v254 = (v252 + v253 - 1) / v253;
  v27 = v252 << 7;
  if (v252 << 7 >= 0x2000000001)
  {
    *__error() = 12;
    v263 = 0;
LABEL_17:
    v35 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 379, 14, v35, "malloc");
    goto LABEL_18;
  }

  v29 = malloc(v27);
  v263 = v29;
  if (!v29)
  {
    goto LABEL_17;
  }

  memset(v29, 255, v27);
  v30 = AAPathListNodeFirst(v22);
  if (v30 != -1)
  {
    v31 = v30;
    v32 = 24;
    do
    {
      *&v263[v32] = v31;
      v31 = AAPathListNodeNext(v22, v31);
      v32 += 128;
    }

    while (v31 != -1);
  }

  if (is_mul_ok(v254, 0x28uLL) && 40 * v254 < 0x2000000001)
  {
    v34 = calloc(v254, 0x28uLL);
  }

  else
  {
    v33 = __error();
    v34 = 0;
    *v33 = 12;
  }

  v255 = v34;
  v257 = calloc(__count, 0x10uLL);
  v46 = calloc(__count, 8uLL);
  v258 = v46;
  if (!v255 || !v257 || (v47 = v46) == 0)
  {
    v61 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 387, 14, v61, "malloc");
    goto LABEL_18;
  }

  v48 = __count;
  if (__count)
  {
    v49 = 0;
    do
    {
      v50 = &v257[16 * v49];
      *v50 = &v246;
      v258[v49++] = v50;
    }

    while (v49 != v48);
    v47 = v258;
  }

  v38 = ThreadPoolCreate(v48, v47, appendPathListWorkerProc);
  if (!v38)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 396, 14, 0, "ThreadPoolCreate");
    v36 = 0;
    v37 = 0;
    goto LABEL_19;
  }

  if (v254)
  {
    v239 = v23;
    v51 = 0;
    v52 = 1;
    while (1)
    {
      if (v259)
      {
LABEL_49:
        v60 = 0;
        goto LABEL_56;
      }

      v53 = v253;
      v54 = v253 * v51;
      v55 = &v255[40 * v51];
      *v55 = v253 * v51;
      v56 = v53 * v51 + v53;
      *(v55 + 1) = v56;
      v57 = v252;
      if (v54 >= v252)
      {
        *v55 = v252;
      }

      if (v56 >= v57)
      {
        *(v55 + 1) = v57;
      }

      Worker = ThreadPoolGetWorker(v38);
      if (!Worker)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 408, 14, 0, "ThreadPoolGetWorker");
        goto LABEL_55;
      }

      *(Worker + 8) = v51;
      if ((ThreadPoolRunWorker(v38) & 0x80000000) != 0)
      {
        break;
      }

      v51 = v52;
      v59 = v254 > v52++;
      if (!v59)
      {
        goto LABEL_49;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 410, 14, 0, "ThreadPoolRunWorker");
LABEL_55:
    v60 = 1;
LABEL_56:
    v23 = v239;
  }

  else
  {
    v60 = 0;
  }

  if ((ThreadPoolDestroy(v38) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 414, 14, 0, "ThreadPoolDestroy");
    if (!atomic_load(&v259))
    {
      goto LABEL_18;
    }

LABEL_77:
    v77 = v23[2];
    if (v77)
    {
      v77(*v23);
    }

    goto LABEL_18;
  }

  if (atomic_load(&v259))
  {
    goto LABEL_77;
  }

  if (v60)
  {
    goto LABEL_18;
  }

  v240 = v23;
  v223 = v12;
  v63 = v254;
  if (v254)
  {
    v64 = 0;
    v65 = 0;
    v66 = v255;
    v67 = v263;
    do
    {
      v68 = &v66[40 * v65];
      v70 = *v68;
      v69 = *(v68 + 1);
      v59 = v69 > v70;
      v71 = v69 - v70;
      if (v59)
      {
        v72 = &v67[128 * v70];
        do
        {
          *v72 += v64;
          v72 += 128;
          --v71;
        }

        while (v71);
      }

      v64 += *&v66[40 * v65++ + 16];
    }

    while (v65 != v63);
    if ((v64 & 0x8000000000000000) == 0)
    {
      v73 = v261;
      if (v261 >= v64)
      {
LABEL_84:
        v79 = 0;
        do
        {
          v80 = &v255[40 * v79];
          v81 = *(v80 + 2);
          v82 = v260 + v81;
          if (!__CFADD__(v260, v81) && (v82 & 0x8000000000000000) == 0)
          {
            v83 = *(v80 + 4);
            v84 = v261;
            if (v261 >= v82)
            {
LABEL_100:
              if (v83)
              {
                memcpy(&v262[v260], v83, v81);
              }

              else if (v262)
              {
                memset_s(&v262[v260], v81, 0, v81);
              }

              v260 += v81;
            }

            else
            {
              do
              {
                while (!v84)
                {
                  v84 = 0x4000;
                  if (v82 <= 0x4000)
                  {
                    v86 = v262;
                    v84 = 0x4000;
                    goto LABEL_98;
                  }
                }

                v85 = v84 >> 1;
                if ((v84 & (v84 >> 1)) != 0)
                {
                  v85 = v84 & (v84 >> 1);
                }

                v84 += v85;
              }

              while (v84 < v82);
              if (v84 >= 0x2000000001)
              {
                *__error() = 12;
                goto LABEL_106;
              }

              v86 = v262;
LABEL_98:
              v87 = realloc(v86, v84);
              if (v87)
              {
                v262 = v87;
                v261 = v84;
                goto LABEL_100;
              }

              free(v86);
LABEL_106:
              v260 = 0;
              v261 = 0;
              v262 = 0;
            }
          }

          v88 = &v255[40 * v79];
          free(v88[4]);
          memset_s(v88 + 2, 0x18uLL, 0, 0x18uLL);
          ++v79;
        }

        while (v79 < v254);
        goto LABEL_108;
      }

      do
      {
        while (!v73)
        {
          v73 = 0x4000;
          if (v64 <= 0x4000)
          {
            v75 = v262;
            v73 = 0x4000;
            goto LABEL_82;
          }
        }

        v74 = v73 >> 1;
        if ((v73 & (v73 >> 1)) != 0)
        {
          v74 = v73 & (v73 >> 1);
        }

        v73 += v74;
      }

      while (v73 < v64);
      if (v73 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_286;
      }

      v75 = v262;
LABEL_82:
      v78 = realloc(v75, v73);
      if (v78)
      {
        v262 = v78;
        v261 = v73;
        if (!v254)
        {
          goto LABEL_108;
        }

        goto LABEL_84;
      }

      free(v75);
LABEL_286:
      v262 = 0;
      v260 = 0;
      v261 = 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 428, 14, 0, "allocating final blob");
    goto LABEL_18;
  }

LABEL_108:
  v89.ikey = 4410440;
  if (AAFieldKeySetContainsKey(v20, v89))
  {
    qsort(v263, v252, 0x80uLL, cmp_entries_hlc);
    v90 = v252;
    if (v252)
    {
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = v263;
      v95 = v263 + 160;
      v96 = vdupq_n_s64(2uLL);
      while (1)
      {
        v97 = &v94[128 * v93];
        v100 = *(v97 + 4);
        v99 = v97 + 32;
        v98 = v100;
        if (v100 == -1)
        {
LABEL_129:
          v218 = v92;
          v225 = v91;
          goto LABEL_132;
        }

        v101 = v93 + 1;
        if (v93 + 1 < v90)
        {
          v102 = &v95[128 * v93];
          v103 = v102;
          v104 = 1;
          while (1)
          {
            v105 = *v103;
            v103 += 128;
            if (v105 != v98)
            {
              break;
            }

            ++v104;
            if (!(v93 - v90 + v104))
            {
              v104 = v90 - v93;
              v101 = v90;
              goto LABEL_118;
            }
          }

          v101 = v93 + v104;
LABEL_118:
          if (!v104)
          {
            goto LABEL_127;
          }

          if (v104 != 1)
          {
            break;
          }
        }

        *v99 = -1;
LABEL_128:
        v93 = v101;
        if (v101 >= v90)
        {
          goto LABEL_129;
        }
      }

      v106 = (v104 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v107 = vdupq_n_s64(v104 - 1);
      v108 = xmmword_296AD1760;
      do
      {
        v109 = vmovn_s64(vcgeq_u64(v107, v108));
        if (v109.i8[0])
        {
          *(v102 - 16) = v91;
        }

        if (v109.i8[4])
        {
          *v102 = v91;
        }

        v108 = vaddq_s64(v108, v96);
        v102 += 256;
        v106 -= 2;
      }

      while (v106);
LABEL_127:
      ++v91;
      v92 += v104;
      goto LABEL_128;
    }

    v225 = 0;
    v218 = 0;
LABEL_132:
    v110 = 1;
  }

  else
  {
    v225 = 0;
    v218 = 0;
    v110 = 0;
  }

  v111.ikey = 4410435;
  if (AAFieldKeySetContainsKey(v20, v111))
  {
    qsort(v263, v252, 0x80uLL, cmp_entries_clc);
    v112 = v252;
    if (v252)
    {
      v113 = 0;
      v114 = 0;
      v115 = 0;
      v116 = v263;
      v117 = v263 + 168;
      v118 = vdupq_n_s64(2uLL);
      while (1)
      {
        v119 = &v116[128 * v115];
        v122 = *(v119 + 5);
        v121 = v119 + 40;
        v120 = v122;
        if (v122 == -1)
        {
LABEL_154:
          v217 = v114;
          v224 = v113;
          goto LABEL_157;
        }

        v123 = v115 + 1;
        if (v115 + 1 < v112)
        {
          v124 = &v117[128 * v115];
          v125 = v124;
          v126 = 1;
          while (1)
          {
            v127 = *v125;
            v125 += 128;
            if (v127 != v120)
            {
              break;
            }

            ++v126;
            if (!(v115 - v112 + v126))
            {
              v126 = v112 - v115;
              v123 = v112;
              goto LABEL_143;
            }
          }

          v123 = v115 + v126;
LABEL_143:
          if (!v126)
          {
            goto LABEL_152;
          }

          if (v126 != 1)
          {
            break;
          }
        }

        *v121 = -1;
LABEL_153:
        v115 = v123;
        if (v123 >= v112)
        {
          goto LABEL_154;
        }
      }

      v128 = (v126 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v129 = vdupq_n_s64(v126 - 1);
      v130 = xmmword_296AD1760;
      do
      {
        v131 = vmovn_s64(vcgeq_u64(v129, v130));
        if (v131.i8[0])
        {
          *(v124 - 16) = v113;
        }

        if (v131.i8[4])
        {
          *v124 = v113;
        }

        v130 = vaddq_s64(v130, v118);
        v124 += 256;
        v128 -= 2;
      }

      while (v128);
LABEL_152:
      ++v113;
      v114 += v126;
      goto LABEL_153;
    }

    v224 = 0;
    v217 = 0;
LABEL_157:
    v110 = 1;
  }

  else
  {
    v224 = 0;
    v217 = 0;
  }

  v132.ikey = 4410451;
  if (AAFieldKeySetContainsKey(v20, v132))
  {
    qsort(v263, v252, 0x80uLL, cmp_entries_slc);
    v133.ikey = 3295315;
    v226 = 1;
    if (!AAFieldKeySetContainsKey(v20, v133))
    {
      v134.ikey = 3360851;
      if (!AAFieldKeySetContainsKey(v20, v134))
      {
        v135.ikey = 3491923;
        if (!AAFieldKeySetContainsKey(v20, v135))
        {
          v226 = 0;
        }
      }
    }

    v136 = v252;
    if (v252)
    {
      v232 = 0;
      v137 = 0;
      v228 = 0;
      v41 = 1;
      v220 = vdupq_n_s64(2uLL);
      v229 = v20;
      while (1)
      {
        v138 = &v263[128 * v137];
        if (v138[6] == -1)
        {
          goto LABEL_200;
        }

        v139 = v137 + 1;
        if (v137 + 1 >= v136)
        {
          goto LABEL_173;
        }

        *v233 = v136 - v137;
        v235 = v136;
        v230 = v137 << 7;
        v140 = (v138 + 23);
        v237 = v137;
        v141 = v137 - v136;
        v142 = 1;
        while (!memcmp(v138 + 7, v140, 0x40uLL))
        {
          ++v142;
          v140 += 128;
          if (!(v141 + v142))
          {
            v142 = *v233;
            v143 = v235;
            goto LABEL_172;
          }
        }

        v143 = v237 + v142;
LABEL_172:
        v144 = v142 - 1;
        v20 = v229;
        if (v142 == 1)
        {
LABEL_173:
          v138[6] = -1;
          v137 = v139;
        }

        else
        {
          v145 = v143;
          if (v226)
          {
            goto LABEL_175;
          }

          if ((AAPathListNodeGetPath(v22, v138[3], 0x400uLL, path, 0) & 0x80000000) == 0)
          {
            if (v142)
            {
              v153 = v230 + 152;
              v146 = v142 - 1;
              while (1)
              {
                if (AAPathListNodeGetPath(v22, *&v263[v153], 0x400uLL, v245, 0) < 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 526, 14, 0, "AAPathListNodeGetPath");
                  v41 = 0;
                }

                else if (areFilesEqual2(v18, path, v245, v154, v155, v156, v157, v158) < 1)
                {
                  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 527, 14, "Hash collision detected: %s != %s", path, v245);
                  v147 = -1;
                  goto LABEL_177;
                }

                v153 += 128;
                if (!--v144)
                {
                  goto LABEL_176;
                }
              }
            }

LABEL_175:
            v146 = v142 - 1;
LABEL_176:
            v147 = v232;
            v228 += v142;
            ++v232;
LABEL_177:
            if (v142)
            {
              v148 = (v142 + 1) & 0xFFFFFFFFFFFFFFFELL;
              v149 = vdupq_n_s64(v146);
              v150 = &v263[v230 + 176];
              v151 = xmmword_296AD1760;
              do
              {
                v152 = vmovn_s64(vcgeq_u64(v149, v151));
                if (v152.i8[0])
                {
                  *(v150 - 16) = v147;
                }

                if (v152.i8[4])
                {
                  *v150 = v147;
                }

                v151 = vaddq_s64(v151, v220);
                v150 += 32;
                v148 -= 2;
              }

              while (v148);
            }

            v137 = v145;
            goto LABEL_185;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 523, 14, 0, "AAPathListNodeGetPath");
          v41 = 0;
          v137 = v237;
        }

LABEL_185:
        v136 = v252;
        if (v137 >= v252)
        {
          goto LABEL_200;
        }
      }
    }

    v228 = 0;
    v232 = 0;
    v41 = 1;
  }

  else
  {
    if (!v110)
    {
      v228 = 0;
      v232 = 0;
      v41 = 1;
      goto LABEL_201;
    }

    v228 = 0;
    v232 = 0;
    v41 = 1;
    v136 = v252;
  }

LABEL_200:
  qsort(v263, v136, 0x80uLL, cmp_entries_offset);
LABEL_201:
  if ((v225 + 1) < 0x2000000001)
  {
    v40 = calloc(v225 + 1, 1uLL);
  }

  else
  {
    v40 = 0;
    *__error() = 12;
  }

  if ((v224 + 1) < 0x2000000001)
  {
    v39 = calloc(v224 + 1, 1uLL);
  }

  else
  {
    v39 = 0;
    *__error() = 12;
  }

  if ((v232 + 1) >= 0x2000000001)
  {
    v38 = 0;
    *__error() = 12;
LABEL_209:
    v159 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 554, 14, *v159, "malloc");
    v36 = 0;
    v37 = 0;
    goto LABEL_20;
  }

  v160 = calloc(v232 + 1, 1uLL);
  v38 = v160;
  if (!v40 || !v39 || !v160)
  {
    goto LABEL_209;
  }

  v37 = AAHeaderCreate();
  if (!v37)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 558, 14, 0, "Header creation");
    v36 = 0;
    goto LABEL_20;
  }

  v36 = malloc(0x40000uLL);
  if (!v36)
  {
    v198 = *__error();
    v199 = "malloc";
    v200 = 560;
LABEL_326:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", v200, 14, v198, v199, v207);
    goto LABEL_20;
  }

  v161 = v252;
  v209 = 1;
  if (!v252)
  {
    LODWORD(v221) = 0;
    v236 = 0;
LABEL_290:
    v212 = v161;
    v201 = v20;
    v202 = getRealTime();
    if (v223 >> 62)
    {
      v203 = v202;
      v204 = MEMORY[0x29EDCA610];
      fwrite("Archive path list\n", 0x12uLL, 1uLL, *MEMORY[0x29EDCA610]);
      bzero(path, 0x400uLL);
      if (!AAFieldKeySetSerialize(v201, 0x400uLL, path))
      {
        fprintf(*v204, "%12s %s\n", "fields", path);
      }

      fprintf(*v204, "%12llu entries\n", v252);
      if (v225)
      {
        fprintf(*v204, "%12llu entries in %llu hard link clusters (HLC)\n", v218, v225);
      }

      if (v224)
      {
        fprintf(*v204, "%12llu entries in %llu clone clusters (CLC)\n", v217, v224);
      }

      if (v232)
      {
        fprintf(*v204, "%12llu entries in %llu same data clusters (SLC)\n", v228, v232);
      }

      if (v221)
      {
        fprintf(*v204, "%12u entries with XAT field\n", v221);
      }

      if (v236)
      {
        fprintf(*v204, "%12u entries with ACL field\n", v236);
      }

      v205 = v203 - RealTime;
      if (!v209)
      {
        fprintf(*v204, "%12u entries with YEC field\n", v236);
      }

      fprintf(*v204, "%12llu bytes in regular files DAT\n", v212);
      fprintf(*v204, "%12.2f time (s)\n", v205);
    }

    goto LABEL_21;
  }

  v162 = 0;
  v211 = 0;
  v236 = 0;
  v221 = 0;
  v216 = 0;
  v163 = 0;
  while (1)
  {
    v210 = v163;
    v164 = &v263[128 * v162];
    v166 = *v164;
    v165 = v164[1];
    v238 = v164;
    v167 = v164[2];
    v219 = v165 - v167;
    if (v165 < v167 || v166 >= v260)
    {
      v199 = "invalid header blob size";
      v200 = 568;
LABEL_325:
      v198 = 0;
      goto LABEL_326;
    }

    v169 = v164[2];
    if ((aaHeaderInitWithEncodedData(v37, &v262[v166], v167) & 0x80000000) != 0)
    {
      v199 = "parse stored header";
      v200 = 569;
      goto LABEL_325;
    }

    if ((v223 & 2) != 0)
    {
      v170 = v238[4];
      if (v170 == -1)
      {
        v171 = v238[5];
        if (v171 == -1)
        {
          v172 = v238[6];
          if (v172 == -1)
          {
            goto LABEL_233;
          }

          if (!*(v38 + v172))
          {
            *(v38 + v172) = 1;
            goto LABEL_233;
          }
        }

        else if (!v39[v171])
        {
          v39[v171] = 1;
          goto LABEL_233;
        }
      }

      else if (!v40[v170])
      {
        v40[v170] = 1;
        goto LABEL_233;
      }

      v173.ikey = 5521732;
      KeyIndex = AAHeaderGetKeyIndex(v37, v173);
      if ((KeyIndex & 0x80000000) == 0)
      {
        AAHeaderRemoveField(v37, KeyIndex);
      }
    }

LABEL_233:
    v175 = v238[4];
    if (v175 != -1)
    {
      v176.ikey = 4410440;
      if (AAHeaderSetFieldUInt(v37, 0xFFFFFFFF, v176, v175) < 0)
      {
        v199 = "add HLC field";
        v200 = 603;
        goto LABEL_325;
      }
    }

    v177 = v238[5];
    if (v177 != -1)
    {
      v178.ikey = 4410435;
      if (AAHeaderSetFieldUInt(v37, 0xFFFFFFFF, v178, v177) < 0)
      {
        v199 = "add CLC field";
        v200 = 604;
        goto LABEL_325;
      }
    }

    v179 = v238[6];
    if (v179 != -1)
    {
      v180.ikey = 4410451;
      if (AAHeaderSetFieldUInt(v37, 0xFFFFFFFF, v180, v179) < 0)
      {
        v199 = "add SLC field";
        v200 = 605;
        goto LABEL_325;
      }
    }

    v181 = v240[3];
    if (!v181 || (v181(*v240, v37) & 0x80000000) != 0)
    {
      v199 = "encoding header";
      v200 = 608;
      goto LABEL_325;
    }

    FieldCount = AAHeaderGetFieldCount(v37);
    if (FieldCount)
    {
      break;
    }

    v183 = v221;
LABEL_279:
    if (v219)
    {
      v199 = "blob byte count mismatch";
      v200 = 679;
      goto LABEL_325;
    }

    v221 = v183;
    v162 = (v210 + 1);
    v163 = v210 + 1;
    if (v252 <= v162)
    {
      v209 = v216 == 0;
      v161 = v211;
      goto LABEL_290;
    }
  }

  v182 = 0;
  v231 = 0;
  v214 = v169 + v166;
  v183 = v221;
  while (1)
  {
    v184 = v182;
    if (AAHeaderGetFieldType(v37, v182) == 5)
    {
      break;
    }

    v196 = v184;
LABEL_276:
    v182 = v196 + 1;
    if (v182 == FieldCount)
    {
      goto LABEL_279;
    }
  }

  size = 0;
  offset = 0;
  FieldKey = AAHeaderGetFieldKey(v37, v184);
  v241 = FieldKey;
  v213 = v184;
  if (AAHeaderGetFieldBlob(v37, v184, &size, &offset) < 0)
  {
    v199 = "get blob location";
    v200 = 620;
    goto LABEL_325;
  }

  if (v231 != offset)
  {
    v199 = "blob segment mismatch";
    v200 = 621;
    goto LABEL_325;
  }

  v185 = FieldKey.ikey & 0xFFFFFF;
  if ((FieldKey.ikey & 0xFFFFFF) == 0x4C4341)
  {
    v186 = v236 + 1;
  }

  else
  {
    v186 = v236;
  }

  v236 = v186;
  if (v185 == 5521752)
  {
    v183 = (v183 + 1);
  }

  else
  {
    v183 = v183;
  }

  v187 = v216;
  if (v185 == 4408665)
  {
    v187 = v216 + 1;
  }

  v216 = v187;
  if (v185 != 5521732)
  {
    if (size > v219)
    {
      v207 = &v241;
      v199 = "Blob segment out of range, key=%s";
      v200 = 665;
      goto LABEL_325;
    }

    v197 = v240[4];
    if (!v197 || (v197(*v240, FieldKey.ikey, &v262[v214]) & 0x80000000) != 0)
    {
      v199 = "sending blob data";
      v200 = 666;
      goto LABEL_325;
    }

    v195 = size;
    v214 += size;
    v219 -= size;
    goto LABEL_275;
  }

  v188 = size;
  if (AAPathListNodeGetPath(v247, v238[3], 0x400uLL, v245, 0) < 0)
  {
    v199 = "getting entry path";
    v200 = 636;
    goto LABEL_325;
  }

  if ((concatPath(path, 0x800uLL, v249, v245) & 0x80000000) != 0)
  {
    v199 = "getting entry full path";
    v200 = 637;
    goto LABEL_325;
  }

  v208 = v188;
  v222 = v183;
  v234 = open(path, 0);
  if (v234 < 0)
  {
    v198 = *__error();
    v207 = path;
    v199 = "%s";
    v200 = 639;
    goto LABEL_326;
  }

  v189 = size;
  if (!size)
  {
LABEL_268:
    close(v234);
    if (!v41)
    {
      goto LABEL_20;
    }

    v211 += v208;
    v41 = 1;
    v195 = size;
    v183 = v222;
LABEL_275:
    v196 = v213;
    v231 += v195;
    goto LABEL_276;
  }

  v190 = 0;
  while (1)
  {
    if (v190 + 0x40000 <= v189)
    {
      v191 = 0x40000;
    }

    else
    {
      v191 = v189 - v190;
    }

    v192 = read(v234, v36, v191);
    if (v192 < 0)
    {
      v206 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 649, 14, v206, "read: %s");
      goto LABEL_310;
    }

    v193 = v192;
    if (!v192)
    {
      break;
    }

    v194 = v240[4];
    if (!v194 || (v194(*v240, FieldKey.ikey, v36, v192) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 651, 14, 0, "sending blob data");
      goto LABEL_310;
    }

    v190 += v193;
    v189 = size;
    if (v190 >= size)
    {
      goto LABEL_268;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 650, 14, 0, "truncated: %s");
LABEL_310:
  close(v234);
LABEL_20:
  v41 = 0;
LABEL_21:
  if ((ThreadPoolDestroy(0) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 703, 14, 0, "ThreadPoolDestroy");
    v41 = 0;
  }

  if (v255 && v254)
  {
    v42 = 0;
    v43 = 32;
    do
    {
      v44 = &v255[v43 - 16];
      free(*&v255[v43]);
      memset_s(v44, 0x18uLL, 0, 0x18uLL);
      ++v42;
      v43 += 40;
    }

    while (v42 < v254);
  }

  free(v258);
  free(v257);
  free(v255);
  free(v263);
  free(v36);
  free(v40);
  free(v39);
  free(v38);
  AAHeaderDestroy(v37);
  free(v262);
  memset_s(&v260, 0x18uLL, 0, 0x18uLL);
  if (v41)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

unint64_t cmp_entries_hlc(void *a1, void *a2)
{
  v4 = a1[4];
  v2 = a2[4];
  v3 = v4 >= v2;
  LODWORD(v4) = v4 != v2;
  if (v3)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (!v4)
  {
    if (*a1 < *a2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return *a1 != *a2;
    }
  }

  return v4;
}

unint64_t cmp_entries_clc(void *a1, void *a2)
{
  v4 = a1[5];
  v2 = a2[5];
  v3 = v4 >= v2;
  LODWORD(v4) = v4 != v2;
  if (v3)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (!v4)
  {
    if (*a1 < *a2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return *a1 != *a2;
    }
  }

  return v4;
}

uint64_t cmp_entries_slc(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a2[6];
  v5 = v3 >= v4;
  v6 = v3 != v4;
  if (v5)
  {
    result = v6;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (!result)
  {
    result = memcmp(a1 + 7, a2 + 7, 0x40uLL);
    if (!result)
    {
      if (*a1 < *a2)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return *a1 != *a2;
      }
    }
  }

  return result;
}

uint64_t cmp_entries_offset(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

AAByteStream AEADecryptionRandomAccessInputStreamOpen(AAByteStream encrypted_stream, AEAContext context, size_t alloc_limit, AAFlagSet flags, int n_threads)
{
  DefaultNThreads = n_threads;
  if (n_threads <= 0)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  if (!*(context + 684) || !*(context + 341))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEARandomAccessDecryptionStream.c", "AEADecryptionRandomAccessInputStreamOpen", 90, 32, 0, "Invalid context");
    v10 = 0;
    goto LABEL_28;
  }

  v9 = malloc(0x38uLL);
  v10 = v9;
  if (!v9)
  {
    v27 = *__error();
    v28 = 94;
    goto LABEL_27;
  }

  memset_s(v9, 0x38uLL, 0, 0x38uLL);
  *v10 = encrypted_stream;
  *(v10 + 8) = flags;
  if ((flags & 0x400000000000000) != 0)
  {
    *(context + 685) = 1;
  }

  Existing = aeaContainerCreateExisting(context, encrypted_stream, 1, 0);
  *(v10 + 16) = Existing;
  if (!Existing)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEARandomAccessDecryptionStream.c", "AEADecryptionRandomAccessInputStreamOpen", 106, 32, 0, "unlock container");
    goto LABEL_28;
  }

  *(v10 + 24) = DefaultNThreads;
  v12 = calloc(DefaultNThreads, 0x10uLL);
  *(v10 + 32) = v12;
  if (!v12)
  {
    v27 = *__error();
    v28 = 111;
    goto LABEL_27;
  }

  v13 = *(v10 + 16);
  v14 = *(v13 + 24);
  if (v14)
  {
    v15 = aeaEffectiveCompressionAlgorithm(v14);
    *(v10 + 40) = compression_decode_scratch_buffer_size(v15);
    v13 = *(v10 + 16);
  }

  v16 = *(v10 + 24);
  if (!v16)
  {
LABEL_19:
    *context = *v13;
    v23 = *(v13 + 16);
    v24 = *(v13 + 32);
    v25 = *(v13 + 48);
    *(context + 8) = *(v13 + 64);
    *(context + 2) = v24;
    *(context + 3) = v25;
    *(context + 1) = v23;
    return AAGenericRandomAccessInputStreamOpen(*(v13 + 32), *(v13 + 16), v16, 4 * v16, v10, RandomAccessDecryptionStreamGetBlock, RandomAccessDecryptionStreamAbort, RandomAccessDecryptionStreamDestroy, flags);
  }

  v17 = *(v10 + 32);
  v18 = *(v13 + 16);
  v19 = *(v10 + 24);
  while (1)
  {
    v20 = malloc(v18);
    v17[1] = v20;
    if (!v20)
    {
      v27 = *__error();
      v28 = 120;
      goto LABEL_27;
    }

    v21 = *(v10 + 40);
    if (!v21)
    {
      goto LABEL_18;
    }

    if (v21 >= 0x2000000001)
    {
      break;
    }

    v22 = malloc(v21);
    *v17 = v22;
    if (!v22)
    {
      goto LABEL_26;
    }

LABEL_18:
    v17 += 2;
    if (!--v19)
    {
      goto LABEL_19;
    }
  }

  *__error() = 12;
  *v17 = 0;
LABEL_26:
  v27 = *__error();
  v28 = 124;
LABEL_27:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEARandomAccessDecryptionStream.c", "AEADecryptionRandomAccessInputStreamOpen", v28, 32, v27, "malloc");
LABEL_28:
  RandomAccessDecryptionStreamDestroy(v10);
  return 0;
}

uint64_t RandomAccessDecryptionStreamDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
LABEL_15:
      aeaContainerDestroy(*(a1 + 16));
      memset_s(a1, 0x38uLL, 0, 0x38uLL);
      free(a1);
      return 0;
    }

    if (*(a1 + 24))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(a1 + 32);
        v6 = *(v5 + v3 + 8);
        if (v6)
        {
          v7 = *(*(a1 + 16) + 16);
          memset_s(*(v5 + v3 + 8), v7, 0, v7);
        }

        free(v6);
        v8 = *(v5 + v3);
        if (v8)
        {
          memset_s(*(v5 + v3), *(a1 + 40), 0, *(a1 + 40));
        }

        free(v8);
        ++v4;
        v9 = *(a1 + 24);
        v3 += 16;
      }

      while (v4 < v9);
      v2 = *(a1 + 32);
      if (!v2)
      {
        goto LABEL_14;
      }

      v10 = 16 * v9;
    }

    else
    {
      v10 = 0;
    }

    memset_s(v2, v10, 0, v10);
LABEL_14:
    free(v2);
    goto LABEL_15;
  }

  return 0;
}

uint64_t RandomAccessDecryptionStreamGetBlock(uint64_t a1, unsigned int a2, unint64_t a3, uint8_t *a4)
{
  if (*(a1 + 24) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(*(a1 + 16) + 400) > a3)
  {
    v6 = *(a1 + 32) + 16 * a2;
    if ((aeaContainerLoadSegment(*(a1 + 16), *a1, a3, a4, *(v6 + 8), *v6) & 0x8000000000000000) == 0)
    {
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEARandomAccessDecryptionStream.c", "RandomAccessDecryptionStreamGetBlock", 71, 32, 0, "Loading segment", v4, v5);
  }

  return 0xFFFFFFFFLL;
}

void RandomAccessDecryptionStreamAbort(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    *(a1 + 48) = 1;
    AAByteStreamCancel(*a1);
  }
}

uint64_t aaAssetDecodeStreamDone(uint64_t (**a1)())
{
  if (a1[1] == closeProc)
  {
    return *(*a1 + 8) == 4;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "aaAssetDecodeStreamDone", 410, 131, 0, "invalid stream", v1, v2);
  return 0xFFFFFFFFLL;
}

uint64_t closeProc(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 8));
    free(*(result + 80));
    memset_s((v1 + 64), 0x18uLL, 0, 0x18uLL);
    AAHeaderDestroy(*(v1 + 88));
    free(*(v1 + 112));
    memset_s((v1 + 104), 0x10uLL, 0, 0x10uLL);
    v3 = *(v1 + 128);
    if (v3)
    {
      if (*v3)
      {
        v3[1]();
      }

      free(v3);
    }

    v4 = *(v1 + 136);
    if (v4)
    {
      if (*v4)
      {
        v4[1]();
      }

      free(v4);
    }

    memset_s(v1, 0x90uLL, 0, 0x90uLL);
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

uint64_t aaAssetDecodeStreamSetParameterPtr(uint64_t *a1, int a2, uint64_t a3)
{
  if (a1[1] == closeProc)
  {
    v6 = *a1;
    if (a2 == 103)
    {
      result = 0;
      *(v6 + 24) = a3;
    }

    else if (a2 == 101)
    {
      result = 0;
      *(v6 + 16) = a3;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "aaAssetDecodeStreamSetParameterPtr", 420, 131, 0, "invalid stream", v3, v4);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void *aaAssetDecodeStreamOpen(uint64_t a1)
{
  v2 = malloc(0x90uLL);
  v3 = v2;
  if (!v2)
  {
    v7 = *__error();
    v8 = 443;
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "aaAssetDecodeStreamOpen", v8, 131, v7, "malloc");
    goto LABEL_11;
  }

  memset_s(v2, 0x90uLL, 0, 0x90uLL);
  *v3 = a1;
  v4 = AAHeaderCreate();
  v3[11] = v4;
  if (!v4)
  {
    v7 = *__error();
    v8 = 446;
    goto LABEL_10;
  }

  if ((aaHeaderBlobArrayInitWithHeader((v3 + 13), v4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "aaAssetDecodeStreamOpen", 447, 131, 0, "blob array init");
LABEL_11:
    closeProc(v3);
    return 0;
  }

  v3[6] = -1;
  v5 = malloc(0x38uLL);
  if (!v5)
  {
    v7 = *__error();
    v8 = 452;
    goto LABEL_10;
  }

  v6 = v5;
  memset_s(v5, 0x38uLL, 0, 0x38uLL);
  *v6 = v3;
  v6[1] = closeProc;
  v6[6] = closeWithStateProc;
  v6[3] = writeProc;
  v6[2] = cancelProc;
  return v6;
}

uint64_t closeWithStateProc(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  if (atomic_load((a1 + 8)))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 96);
  v42[0] = *(a1 + 32);
  v42[1] = v8;
  v43 = *(a1 + 40);
  v9 = *(a1 + 120);
  v44 = *(a1 + 56);
  v45 = v9;
  EncodedSize = AAHeaderGetEncodedSize(*(a1 + 88));
  v12 = (a1 + 64);
  v11 = *(a1 + 64);
  v14 = (a1 + 104);
  v13 = *(a1 + 104);
  v46 = EncodedSize;
  v47 = v13;
  v48 = v11;
  v15 = *(a1 + 136);
  v49 = *(a1 + 128) != 0;
  v50 = v15 != 0;
  if (a2[3])
  {
    v16 = 0;
    v17 = v42;
    v18 = 58;
    while (1)
    {
      v19 = (a2[3])(*a2, v17, v18);
      if (v19 < 1)
      {
        break;
      }

      v17 = (v17 + v19);
      v16 += v19;
      v18 -= v19;
      if (!v18)
      {
        if (v16 < 0)
        {
          goto LABEL_36;
        }

        goto LABEL_12;
      }
    }

    if (v19 < 0)
    {
      goto LABEL_36;
    }

LABEL_12:
    EncodedData = AAHeaderGetEncodedData(*(a1 + 88));
    if (a2[3])
    {
      v21 = v46;
      if (!v46)
      {
        goto LABEL_72;
      }

      v22 = EncodedData;
      v23 = 0;
      while (1)
      {
        v24 = (a2[3])(*a2, v22, v21);
        if (v24 < 1)
        {
          break;
        }

        v22 += v24;
        v23 += v24;
        v21 -= v24;
        if (!v21)
        {
          goto LABEL_19;
        }
      }

      v23 = v24;
LABEL_19:
      if ((v23 & 0x8000000000000000) == 0)
      {
LABEL_72:
        if (*v14)
        {
          v25 = 0;
          while (a2[3])
          {
            v26 = 0;
            v27 = *(a1 + 112) + 24 * v25 + 8;
            v28 = 8;
            while (1)
            {
              v29 = (a2[3])(*a2, v27, v28);
              if (v29 < 1)
              {
                break;
              }

              v27 += v29;
              v26 += v29;
              v28 -= v29;
              if (!v28)
              {
                goto LABEL_28;
              }
            }

            v26 = v29;
LABEL_28:
            if (v26 < 0)
            {
              break;
            }

            if (++v25 >= *v14)
            {
              goto LABEL_30;
            }
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "closeWithStateProc", 376, 131, 0, "write state");
          goto LABEL_37;
        }

LABEL_30:
        if (!a2[3])
        {
          goto LABEL_52;
        }

        v30 = *v12;
        if (!*v12)
        {
          goto LABEL_51;
        }

        v31 = 0;
        v32 = *(a1 + 80);
        while (1)
        {
          v33 = (a2[3])(*a2, v32, v30);
          if (v33 < 1)
          {
            break;
          }

          v32 += v33;
          v31 += v33;
          v30 -= v33;
          if (!v30)
          {
            goto LABEL_50;
          }
        }

        v31 = v33;
LABEL_50:
        if (v31 < 0)
        {
LABEL_52:
          v37 = 0;
        }

        else
        {
LABEL_51:
          v37 = 1;
        }

        if (v50)
        {
          v38 = *(a1 + 136);
          if (v38)
          {
            if (*v38)
            {
              v39 = (v38[6])(*v38, a2, 0);
              free(v38);
              if (v39 < 0)
              {
                v37 = 0;
              }
            }

            else
            {
              free(*(a1 + 136));
            }
          }
        }

        *(a1 + 136) = 0;
        if (v49)
        {
          v40 = *(a1 + 128);
          if (v40)
          {
            if (*v40)
            {
              v41 = (v40[6])(*v40, a2, 0);
              free(v40);
              if (v41 < 0)
              {
                *(a1 + 128) = 0;
LABEL_69:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "closeWithStateProc", 385, 131, 0, "write state");
                goto LABEL_37;
              }
            }

            else
            {
              free(*(a1 + 128));
            }
          }
        }

        *(a1 + 128) = 0;
        if (v37)
        {
          v5 = 0;
          if (a3)
          {
            *a3 = *(a1 + 56);
          }

          goto LABEL_38;
        }

        goto LABEL_69;
      }
    }
  }

LABEL_36:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "closeWithStateProc", 373, 131, 0, "write state");
LABEL_37:
  v5 = 0xFFFFFFFFLL;
LABEL_38:
  free(*(a1 + 80));
  memset_s((a1 + 64), 0x18uLL, 0, 0x18uLL);
  AAHeaderDestroy(*(a1 + 88));
  free(*(a1 + 112));
  memset_s((a1 + 104), 0x10uLL, 0, 0x10uLL);
  v34 = *(a1 + 128);
  if (v34)
  {
    if (*v34)
    {
      v34[1]();
    }

    free(v34);
  }

  v35 = *(a1 + 136);
  if (v35)
  {
    if (*v35)
    {
      v35[1]();
    }

    free(v35);
  }

  memset_s(a1, 0x90uLL, 0, 0x90uLL);
  free(a1);
  return v5;
}

uint64_t writeProc(unsigned int *a1, unsigned __int16 *__src, size_t a3)
{
  if (atomic_load(a1 + 2))
  {
    return -1;
  }

  v8 = a1[8];
  if (v8 == 4)
  {
    v4 = 0;
LABEL_6:
    if (a3 && !v4)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 325, 131, 0, "no more writes possible");
      goto LABEL_204;
    }

LABEL_182:
    if (v4 < 1)
    {
LABEL_187:
      if (v4 < 0)
      {
        goto LABEL_205;
      }
    }

    else
    {
      v90 = *(a1 + 6);
      if (v90 + 1 >= 2)
      {
        v91 = *(a1 + 3);
        if (v91)
        {
          if (((v91)(*(a1 + 2), __src, (*(a1 + 7) * 100.0) / v90) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 335, 131, 0, "user cancelled in progress callback");
            goto LABEL_204;
          }
        }
      }
    }

    return v4;
  }

  v9 = __src;
  v4 = 0;
  while (1)
  {
    v10 = *(a1 + 8);
    if (!(v10 | a3))
    {
      if (*(a1 + 7) >= *(a1 + 6))
      {
        a1[8] = 4;
      }

      goto LABEL_182;
    }

    if (v8 <= 1)
    {
      if (v8)
      {
        if (v8 != 1)
        {
          goto LABEL_190;
        }

        v11 = a1[26];
        v12 = a1[24];
        if (v12 < v11)
        {
          v13 = (*(a1 + 14) + 24 * v12 + 8);
          while (1)
          {
            v14 = *v13;
            v13 += 3;
            if (v14)
            {
              break;
            }

            a1[24] = ++v12;
            if (v11 == v12)
            {
              goto LABEL_145;
            }
          }

          v12 = v12;
        }

        if (v12 == v11)
        {
          goto LABEL_145;
        }

        v48 = (*(a1 + 14) + 24 * v12);
        if (a3 >= *(v48 + 1))
        {
          v33 = *(v48 + 1);
        }

        else
        {
          v33 = a3;
        }

        v49 = *(*a1 + 40);
        if (!v49 || (v49(**a1, *v48, v9, v33) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 202, 131, 0, "blob processing");
          goto LABEL_204;
        }

        *(v48 + 1) -= v33;
        goto LABEL_107;
      }

      if (*(a1 + 7) >= *(a1 + 6))
      {
        a1[8] = 4;
        goto LABEL_6;
      }

      if (v10 <= 5)
      {
        v31 = 6;
        goto LABEL_47;
      }

      __src = *(a1 + 10);
      v99 = *__src;
      v100 = __src[2];
      if (v99 != 825246017 && v99 != 826360153)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 120, 131, 0, "invalid header magic");
        goto LABEL_204;
      }

      if (v100 <= 5uLL)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 122, 131, 0, "invalid header size");
        goto LABEL_204;
      }

      v32 = v100 - v10;
      if (v100 <= v10)
      {
        if (v100 != v10)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 127, 131, 0, "invalid state");
          goto LABEL_204;
        }

        if ((aaHeaderInitWithEncodedData(*(a1 + 11), __src, v10) & 0x80000000) != 0 || (aaHeaderBlobArrayInitWithHeader((a1 + 26), *(a1 + 11)) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 130, 131, 0, "invalid header");
          goto LABEL_204;
        }

        v97 = 0;
        value = 0;
        size = 0;
        v96 = 0;
        offset = 0;
        v50 = *(a1 + 11);
        v51.ikey = 5265748;
        KeyIndex = AAHeaderGetKeyIndex(v50, v51);
        if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(v50, KeyIndex, &value), FieldUInt <= 1) ? (v54 = 1) : (v54 = FieldUInt), v54 <= 0))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 137, 131, 0, "missing TYP field");
          goto LABEL_204;
        }

        v55 = *(a1 + 11);
        v56.ikey = 5263193;
        v57 = AAHeaderGetKeyIndex(v55, v56);
        if ((v57 & 0x80000000) != 0 || ((v58 = AAHeaderGetFieldUInt(v55, v57, &v97), v58 <= 1) ? (v59 = 1) : (v59 = v58), v59 <= 0))
        {
          v97 = 0;
        }

        v60 = *(a1 + 11);
        v61.ikey = 5521732;
        v62 = AAHeaderGetKeyIndex(v60, v61);
        if ((v62 & 0x80000000) != 0)
        {
          v65 = 0;
        }

        else
        {
          FieldBlob = AAHeaderGetFieldBlob(v60, v62, &size, &offset);
          if (FieldBlob <= 1)
          {
            v64 = 1;
          }

          else
          {
            v64 = FieldBlob;
          }

          v65 = v64 > 0;
        }

        v73 = *(a1 + 11);
        v74.ikey = 5915721;
        v75 = AAHeaderGetKeyIndex(v73, v74);
        if ((v75 & 0x80000000) == 0)
        {
          v76 = AAHeaderGetFieldUInt(v73, v75, &v96);
          v77 = v76 <= 1 ? 1 : v76;
          if (v77 >= 1)
          {
            *(a1 + 5) += v96;
          }
        }

        *(a1 + 8) = 0;
        a1[24] = 0;
        if (v97)
        {
          v78 = v97 == 80;
        }

        else
        {
          v78 = 1;
        }

        v79 = !v78;
        if (((v65 && value == 77) & v79) == 1)
        {
          v80 = aaHeaderBlobArrayPayloadSize(a1 + 26);
          if (v80 != size)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 151, 131, 0, "invalid AssetArchive, extra blobs");
            goto LABEL_204;
          }

          if (v80 <= 3)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 152, 131, 0, "invalid AssetArchive DAT blob size");
            goto LABEL_204;
          }

          v81.ikey = 5521732;
          v82 = AAHeaderGetKeyIndex(*(a1 + 11), v81);
          if ((v82 & 0x80000000) != 0 || AAHeaderRemoveField(*(a1 + 11), v82) < 0 || (aaHeaderBlobArrayInitWithHeader((a1 + 26), *(a1 + 11)) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 160, 131, 0, "removing DAT");
            goto LABEL_204;
          }

          v83.ikey = 5328729;
          if (AAHeaderSetFieldUInt(*(a1 + 11), 0xFFFFFFFF, v83, v97) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 162, 131, 0, "append YOQ");
            goto LABEL_204;
          }

          v84.ikey = 5263193;
          v85 = AAHeaderGetKeyIndex(*(a1 + 11), v84);
          if ((v85 & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 164, 131, 0, "invalid index");
            goto LABEL_204;
          }

          v86.ikey = 5263193;
          if (AAHeaderSetFieldUInt(*(a1 + 11), v85, v86, 0x5BuLL) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 165, 131, 0, "set YOP");
            goto LABEL_204;
          }

          v87 = *(*a1 + 32);
          if (!v87 || (v87(**a1, *(a1 + 11)) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 167, 131, 0, "header processing");
            goto LABEL_204;
          }

          *(a1 + 15) = size;
          v88 = 2;
        }

        else
        {
          v89 = *(*a1 + 32);
          if (!v89 || (v89(**a1, *(a1 + 11)) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 175, 131, 0, "header processing");
            goto LABEL_204;
          }

          v88 = 1;
        }

        a1[8] = v88;
      }

      else if (v100 != v10)
      {
        goto LABEL_48;
      }

LABEL_108:
      v8 = a1[8];
      goto LABEL_146;
    }

    if (v8 != 2)
    {
      break;
    }

    if (v10 <= 3)
    {
      v31 = 4;
LABEL_47:
      v32 = v31 - v10;
LABEL_48:
      if (!a3)
      {
        goto LABEL_187;
      }

      if (v32 >= a3)
      {
        v33 = a3;
      }

      else
      {
        v33 = v32;
      }

      v34 = v10 + v33;
      if (__CFADD__(v10, v33) || (v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_203;
      }

      v35 = *(a1 + 9);
      if (v35 < v34)
      {
        do
        {
          while (!v35)
          {
            v35 = 0x4000;
            v37 = 0x4000;
            if (v34 <= 0x4000)
            {
              goto LABEL_91;
            }
          }

          v36 = v35 >> 1;
          if ((v35 & (v35 >> 1)) != 0)
          {
            v36 = v35 & (v35 >> 1);
          }

          v35 += v36;
        }

        while (v35 < v34);
        v37 = v35;
        if (v35 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_202;
        }

LABEL_91:
        v45 = *(a1 + 10);
        v46 = realloc(v45, v37);
        if (v46)
        {
          *(a1 + 9) = v37;
          *(a1 + 10) = v46;
          goto LABEL_93;
        }

        free(v45);
LABEL_202:
        *(a1 + 8) = 0;
        *(a1 + 9) = 0;
        *(a1 + 10) = 0;
LABEL_203:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 314, 131, 0, "malloc");
        goto LABEL_204;
      }

LABEL_93:
      v47 = *(a1 + 10);
      if (v9)
      {
        memcpy(v47 + *(a1 + 8), v9, v33);
      }

      else if (v47)
      {
        memset_s(v47 + *(a1 + 8), v33, 0, v33);
      }

      *(a1 + 8) += v33;
      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_203;
      }

LABEL_107:
      a3 -= v33;
      v9 = (v9 + v33);
      v4 += v33;
      *(a1 + 7) += v33;
      goto LABEL_108;
    }

    v38 = **(a1 + 10);
    LODWORD(value) = v38;
    if (v38 != 825246017 && v38 != 826360153)
    {
      v40 = value == 25200 && BYTE2(value) == 122;
      if (!v40 || ((v41 = HIBYTE(v38), HIBYTE(v38) - 45 <= 0x39u) ? (v42 = ((1 << (HIBYTE(v38) - 45)) & 0x320000000000081) == 0) : (v42 = 1), v42 && v41 != 120 && v41 != 122))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 227, 131, 0, "invalid DAT blob");
        goto LABEL_204;
      }
    }

    v43 = aaAssetDecodeStreamOpen(*a1);
    *(a1 + 17) = v43;
    if (!v43)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 231, 131, 0, "dat decoder stream");
      goto LABEL_204;
    }

    if (v38 == 825246017 || v38 == 826360153)
    {
      if (*(a1 + 16))
      {
        v43 = *(a1 + 16);
      }
    }

    else
    {
      v43 = aaAssetDecompressionStreamOpen(v43);
      *(a1 + 16) = v43;
      if (!v43)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 237, 131, 0, "dat decompression stream");
        goto LABEL_204;
      }
    }

    v66 = v43[3];
    if (!v66 || v66(*v43, &value, 4) != 4)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 241, 131, 0, "sending dat magic");
      goto LABEL_204;
    }

    *(a1 + 15) -= 4;
    *(a1 + 8) = 0;
    v8 = 3;
    a1[8] = 3;
LABEL_146:
    if (v8 == 4)
    {
      goto LABEL_6;
    }
  }

  if (v8 != 3)
  {
LABEL_190:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 304, 131, 0, "invalid state %d");
    goto LABEL_204;
  }

  v15 = *(a1 + 15);
  if (a3 >= v15)
  {
    v16 = *(a1 + 15);
  }

  else
  {
    v16 = a3;
  }

  if (v16)
  {
    v17 = *(a1 + 16);
    if (!v17)
    {
      v17 = *(a1 + 17);
    }

    v18 = v17[3];
    if (!v18 || (v19 = v18(*v17, v9), v19 < 0))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 255, 131, 0, "writing DAT bytes");
      goto LABEL_204;
    }

    a3 -= v19;
    v9 = (v9 + v19);
    v4 += v19;
    *(a1 + 7) += v19;
    v15 = (*(a1 + 15) - v19);
    *(a1 + 15) = v15;
  }

  if (v15)
  {
    goto LABEL_108;
  }

  value = 0;
  v20 = *(a1 + 11);
  v21.ikey = 5328729;
  v22 = AAHeaderGetKeyIndex(v20, v21);
  if ((v22 & 0x80000000) == 0)
  {
    v23 = AAHeaderGetFieldUInt(v20, v22, &value);
    v24 = v23 <= 1 ? 1 : v23;
    if (v24 >= 1 && value == 77)
    {
      v25 = *(a1 + 17);
      if (v25)
      {
        v26 = *(*v25 + 40);
        v27 = *(a1 + 7);
        *(a1 + 6) = v27 + v26;
        if (__CFADD__(v27, v26))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 274, 131, 0, "invalid sizes in manifest");
          goto LABEL_204;
        }
      }
    }
  }

  v28 = *(a1 + 16);
  if (v28)
  {
    if (*v28)
    {
      v29 = v28[1]();
      free(v28);
      v30 = v29 >> 31;
      goto LABEL_135;
    }

    free(*(a1 + 16));
  }

  v30 = 0;
LABEL_135:
  *(a1 + 16) = 0;
  v67 = *(a1 + 17);
  if (!v67)
  {
    goto LABEL_140;
  }

  if (!*v67)
  {
    free(*(a1 + 17));
    goto LABEL_140;
  }

  v68 = (v67[1])();
  free(v67);
  if ((v68 & 0x80000000) == 0)
  {
LABEL_140:
    *(a1 + 17) = 0;
    if (v30)
    {
      goto LABEL_214;
    }

    v69.ikey = 5263193;
    v70 = AAHeaderGetKeyIndex(*(a1 + 11), v69);
    if ((v70 & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 288, 131, 0, "invalid index");
      goto LABEL_204;
    }

    v71.ikey = 5263193;
    if (AAHeaderSetFieldUInt(*(a1 + 11), v70, v71, 0x5DuLL) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 289, 131, 0, "set YOP");
      goto LABEL_204;
    }

    v72 = *(*a1 + 32);
    if (!v72 || (v72(**a1, *(a1 + 11)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 291, 131, 0, "header processing");
      goto LABEL_204;
    }

LABEL_145:
    AAHeaderClear(*(a1 + 11));
    v8 = 0;
    a1[26] = 0;
    a1[8] = 0;
    goto LABEL_146;
  }

  *(a1 + 17) = 0;
LABEL_214:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "writeProc", 282, 131, 0, "dat archive invalid");
LABEL_204:
  v4 = -1;
LABEL_205:
  v92 = 0;
  atomic_compare_exchange_strong(a1 + 2, &v92, 1u);
  if (!v92)
  {
    v93 = *(*a1 + 16);
    if (v93)
    {
      v93(**a1);
    }
  }

  return v4;
}

atomic_uint *cancelProc(atomic_uint *result)
{
  v1 = 0;
  atomic_compare_exchange_strong(result + 2, &v1, 1u);
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

void (**aaAssetDecodeStreamOpenWithState(uint64_t a1, AAByteStream_impl *a2, void *a3))(void)
{
  __s = 0;
  v48 = 0;
  v49 = 0;
  v5 = aaAssetDecodeStreamOpen(a1);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = *v5;
  memset(v46, 0, 58);
  if (!*(a2 + 2))
  {
    goto LABEL_10;
  }

  v8 = 0;
  v9 = v46;
  v10 = 58;
  do
  {
    v11 = (*(a2 + 2))(*a2, v9, v10);
    if (v11 < 0)
    {
      goto LABEL_10;
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
  if (v8 != 58)
  {
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "aaAssetDecodeStreamOpenWithState", 487, 131, 0, "truncated state", v46[0], v46[1], v46[2]);
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v12 = DWORD1(v46[0]);
  *(v7 + 8) = v46[0];
  *(v7 + 24) = v12;
  *(v7 + 40) = *(v46 + 8);
  v13 = *&v46[2];
  *(v7 + 7) = *(&v46[1] + 1);
  *(v7 + 15) = v13;
  v14 = DWORD2(v46[2]);
  if ((DWORD2(v46[2]) - 0x10000) < 0xFFFF0006)
  {
    v15 = 0;
LABEL_92:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "aaAssetDecodeStreamOpenWithState", 502, 131, 0, "invalid header state", v46[0], v46[1], v46[2]);
    goto LABEL_12;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  do
  {
    if (v20 == v19)
    {
      v21 = v19 + 0x40000;
      if ((v19 + 0x40000) < 0)
      {
        goto LABEL_91;
      }

      if (v19 <= 0xFFFFFFFFFFFBFFFFLL)
      {
        do
        {
          while (!v19)
          {
            v19 = 0x4000;
            v23 = 0x4000;
            if (v21 <= 0x4000)
            {
              goto LABEL_35;
            }
          }

          v22 = v19 >> 1;
          if ((v19 & (v19 >> 1)) != 0)
          {
            v22 = v19 & (v19 >> 1);
          }

          v19 += v22;
        }

        while (v19 < v21);
        v23 = v19;
        if (v19 >= 0x2000000001)
        {
          *__error() = 12;
        }

        else
        {
LABEL_35:
          v24 = realloc(v18, v23);
          if (v24)
          {
            v48 = v23;
            v49 = v24;
            v18 = v24;
            goto LABEL_37;
          }

          free(v18);
        }

        v15 = 0;
        __s = 0;
        v48 = 0;
        v49 = 0;
        goto LABEL_92;
      }
    }

    v23 = v19;
LABEL_37:
    if (v23 - v20 >= v14)
    {
      v25 = v14;
    }

    else
    {
      v25 = v23 - v20;
    }

    v26 = AAByteStreamRead(a2, v18 + v20, v25);
    if (v26 < 0)
    {
      goto LABEL_91;
    }

    v20 = __s;
    if (!v26)
    {
      break;
    }

    v20 = __s + v26;
    if (__CFADD__(__s, v26) || (v19 = v48, v20 > v48))
    {
LABEL_91:
      v15 = v49;
      goto LABEL_92;
    }

    __s += v26;
    v14 -= v26;
  }

  while (v14);
  v15 = v49;
  if ((aaHeaderInitWithEncodedData(*(v7 + 11), v49, v20) & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  if ((aaHeaderBlobArrayInitWithHeader(v7 + 104, *(v7 + 11)) & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  v27 = *(v7 + 26);
  if (v27 != HIDWORD(v46[2]))
  {
    goto LABEL_92;
  }

  if (v27)
  {
    v28 = 0;
    do
    {
      if (!*(a2 + 2))
      {
LABEL_94:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "aaAssetDecodeStreamOpenWithState", 505, 131, 0, "invalid blob state", v46[0], v46[1], v46[2]);
        goto LABEL_12;
      }

      v29 = *(v7 + 14) + 24 * v28 + 8;
      v30 = 8;
      do
      {
        v31 = (*(a2 + 2))(*a2, v29, v30);
        if (v31 < 0)
        {
          goto LABEL_94;
        }

        v29 += v31;
        v30 -= v31;
        if (v31)
        {
          v32 = v30 == 0;
        }

        else
        {
          v32 = 1;
        }
      }

      while (!v32);
      ++v28;
    }

    while (v28 < *(v7 + 26));
  }

  v33 = *&v46[3];
  if (!*&v46[3])
  {
LABEL_84:
    if (BYTE9(v46[3]))
    {
      v44 = aaAssetDecodeStreamOpenWithState(*v7, a2, 0);
      *(v7 + 17) = v44;
      if (!v44)
      {
        goto LABEL_100;
      }
    }

    if (BYTE8(v46[3]))
    {
      v45 = aaAssetDecompressionStreamOpenWithState(*(v7 + 17), a2, 0);
      *(v7 + 16) = v45;
      if (!v45)
      {
        goto LABEL_100;
      }
    }

    if (a3)
    {
      *a3 = *(v7 + 7);
    }

    v16 = 1;
    goto LABEL_13;
  }

  v35 = *(v7 + 8);
  v34 = *(v7 + 9);
  while (2)
  {
    if (v35 != v34)
    {
LABEL_72:
      v38 = v34;
LABEL_76:
      if (v38 - v35 >= v33)
      {
        v41 = v33;
      }

      else
      {
        v41 = v38 - v35;
      }

      v42 = AAByteStreamRead(a2, (*(v7 + 10) + v35), v41);
      if (v42 < 0)
      {
        goto LABEL_100;
      }

      if (!v42)
      {
        goto LABEL_84;
      }

      v43 = *(v7 + 8);
      v35 = v43 + v42;
      if (__CFADD__(v43, v42))
      {
        goto LABEL_100;
      }

      v34 = *(v7 + 9);
      if (v35 > v34)
      {
        goto LABEL_100;
      }

      *(v7 + 8) = v35;
      v33 -= v42;
      if (!v33)
      {
        goto LABEL_84;
      }

      continue;
    }

    break;
  }

  v36 = v34 + 0x40000;
  if ((v34 + 0x40000) < 0)
  {
    goto LABEL_100;
  }

  if (v34 > 0xFFFFFFFFFFFBFFFFLL)
  {
    v35 = v34;
    goto LABEL_72;
  }

  do
  {
    while (!v34)
    {
      v34 = 0x4000;
      v38 = 0x4000;
      if (v36 <= 0x4000)
      {
        goto LABEL_74;
      }
    }

    v37 = v34 >> 1;
    if ((v34 & (v34 >> 1)) != 0)
    {
      v37 = v34 & (v34 >> 1);
    }

    v34 += v37;
  }

  while (v34 < v36);
  v38 = v34;
  if (v34 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_99;
  }

LABEL_74:
  v39 = *(v7 + 10);
  v40 = realloc(v39, v38);
  if (v40)
  {
    *(v7 + 9) = v38;
    *(v7 + 10) = v40;
    v35 = *(v7 + 8);
    goto LABEL_76;
  }

  free(v39);
LABEL_99:
  *(v7 + 8) = 0;
  *(v7 + 9) = 0;
  *(v7 + 10) = 0;
LABEL_100:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecodeStream.c", "aaAssetDecodeStreamOpenWithState", 512, 131, 0, "read state", v46[0], v46[1], v46[2]);
LABEL_12:
  v16 = 0;
LABEL_13:
  free(v15);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  if (v16)
  {
    result = v6;
  }

  else
  {
    result = 0;
  }

  if (v6 && (v16 & 1) == 0)
  {
    if (*v6)
    {
      v6[1]();
    }

    free(v6);
    return 0;
  }

  return result;
}

char *AAAssetBuilderCreate(uint64_t a1)
{
  v2 = malloc(0xA0uLL);
  v3 = v2;
  if (v2)
  {
    memset_s(v2, 0xA0uLL, 0, 0xA0uLL);
    *v3 = a1;
    *(v3 + 104) = xmmword_296AD1770;
    *(v3 + 120) = xmmword_296AD1780;
    *(v3 + 34) = 774;
    *(v3 + 9) = xmmword_296AD1790;
  }

  else
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetBuilder.c", "AAAssetBuilderCreate", 13, 26, *v4, "malloc");
  }

  return v3;
}

void AAAssetBuilderDestroy(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t AAAssetBuilderAddVariantArchive(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 >= 0xA)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetBuilder.c", "AAAssetBuilderAddVariantArchive", 44, 26, 0, "too many inputs/outputs");
    return 0xFFFFFFFFLL;
  }

  if ((a2 - 1) >= 2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetBuilder.c", "AAAssetBuilderAddVariantArchive", 53, 26, 0, "invalid variant");
    return 0xFFFFFFFFLL;
  }

  v6 = a1 + 24;
  if (a2 == 2)
  {
    v7 = (v6 + 8 * v3);
  }

  else
  {
    v9 = *(a1 + 8);
    v7 = (v6 + 8 * v9);
    memmove(v7 + 1, v7, 8 * (v3 - v9));
    v3 = *(a1 + 16);
    ++*(a1 + 8);
  }

  result = 0;
  *(a1 + 16) = v3 + 1;
  *v7 = a3;
  return result;
}

uint64_t AAAssetBuilderSetParameter(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 > 3)
  {
    switch(a2)
    {
      case 4:
        v5 = 0;
        *(a1 + 128) = a3;
        return v5;
      case 5:
        v5 = 0;
        *(a1 + 136) = a3;
        return v5;
      case 6:
        v5 = 0;
        *(a1 + 144) = a3;
        return v5;
    }

LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetBuilder.c", "AAAssetBuilderSetParameter", 104, 26, 0, "unsupported parameter", v3, v4);
    return 0xFFFFFFFFLL;
  }

  if (a2 == 1)
  {
    v5 = 0;
    *(a1 + 104) = a3;
    return v5;
  }

  if (a2 == 2)
  {
    v5 = 0;
    *(a1 + 112) = a3;
    return v5;
  }

  if (a2 != 3)
  {
    goto LABEL_12;
  }

  v5 = 0;
  *(a1 + 120) = a3;
  return v5;
}

uint64_t AAAssetBuilderGetParameter(uint64_t a1, int a2)
{
  if (a2 > 3)
  {
    if (a2 == 4)
    {
      return *(a1 + 128);
    }

    if (a2 != 5)
    {
      if (a2 == 6)
      {
        return *(a1 + 144);
      }

      goto LABEL_12;
    }

    return *(a1 + 136);
  }

  else
  {
    if (a2 == 1)
    {
      return *(a1 + 104);
    }

    if (a2 != 2)
    {
      if (a2 == 3)
      {
        return *(a1 + 120);
      }

LABEL_12:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetBuilder.c", "AAAssetBuilderGetParameter", 129, 26, 0, "unsupported parameter key", v2, v3);
      return 0;
    }

    return *(a1 + 112);
  }
}

uint64_t AEADecryptAndExtractChunk(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unsigned int a11)
{
  v19[3] = a6;
  v20 = 0;
  v19[0] = a2;
  v19[1] = a5;
  v19[2] = a7;
  v21 = a10 >> 62;
  ChunkAsyncStreamOpen = AEADecryptAndExtractChunkAsyncStreamOpen(a3, a4, v19, asyncContext, asyncSelect, asyncProgress, a8, a9, a10, a11);
  v13 = ChunkAsyncStreamOpen;
  if (!ChunkAsyncStreamOpen)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", 96, 117, 0, "AEADecryptAndExtractAsyncStreamOpen");
LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  if (!a1[10])
  {
    if ((AAAsyncByteStreamProcessAllRanges(ChunkAsyncStreamOpen, a1, a10, a11) & 0x8000000000000000) == 0)
    {
      v15 = 1;
      goto LABEL_19;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", 124, 117, 0, "AAAsyncByteStreamProcessAllRanges");
    goto LABEL_18;
  }

  while (1)
  {
    v17 = 0;
    v18 = 0;
    Range = AAAsyncByteStreamGetRange(v13, &v18, &v17);
    if (Range < 0)
    {
      break;
    }

    if (Range)
    {
      if (!v18)
      {
        v15 = 1;
        goto LABEL_16;
      }

      if ((AAByteStreamPReadAsync(a1) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", 113, 117, 0, "AAByteStreamPReadAsync");
        goto LABEL_15;
      }
    }

    else
    {
      usleep(0x186A0u);
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", 108, 117, 0, "AAAsyncByteStreamGetRange");
LABEL_15:
  v15 = 0;
LABEL_16:
  if ((AAByteStreamPReadAsync(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", 118, 117, 0, "AAByteStreamPReadAsync barrier");
    goto LABEL_18;
  }

LABEL_19:
  if ((AAAsyncByteStreamClose(v13) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", 128, 117, 0, "AAAsyncByteStreamClose");
    v15 = 0;
  }

  if (v15)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t asyncContext(uint64_t result, _OWORD *context)
{
  v3 = result;
  v4 = *result;
  if (*(result + 32))
  {
    *v4 = *context;
    v5 = context[1];
    v6 = context[2];
    v7 = context[3];
    *(v4 + 64) = *(context + 8);
    *(v4 + 32) = v6;
    *(v4 + 48) = v7;
    *(v4 + 16) = v5;
    if (*(result + 36))
    {
      v8 = MEMORY[0x29EDCA610];
      v9 = *MEMORY[0x29EDCA610];
      FieldUInt = AEAContextGetFieldUInt(context, 3u);
      if (FieldUInt <= 1284)
      {
        switch(FieldUInt)
        {
          case 0:
            v15 = "none";
            goto LABEL_25;
          case 256:
            v15 = "lz4";
            goto LABEL_25;
          case 774:
            v15 = "lzma";
LABEL_25:
            v16 = AEAContextGetFieldUInt(context, 4u);
            fprintf(v9, "  compression: %s %zu MB\n", v15, v16 >> 20);
            v17 = *v8;
            v18 = AEAContextGetFieldUInt(context, 2u);
            if (v18 > 2)
            {
              v19 = "???";
            }

            else
            {
              v19 = off_29EE512E8[v18 & 3];
            }

            fprintf(v17, "  checksum: %s\n", v19);
            v20 = *v8;
            v21 = AEAContextGetFieldUInt(context, 0xEu);
            fprintf(v20, "  container size: %llu B\n", v21);
            v22 = *v8;
            v23 = AEAContextGetFieldUInt(context, 0xDu);
            fprintf(v22, "  raw size: %llu B\n", v23);
            return 0;
        }
      }

      else
      {
        if (FieldUInt <= 2048)
        {
          if (FieldUInt == 1285)
          {
            v15 = "zlib";
            goto LABEL_25;
          }

          if (FieldUInt != 1794)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }

        if (FieldUInt == 2049)
        {
LABEL_20:
          v15 = "lzfse";
          goto LABEL_25;
        }

        if (FieldUInt == 2304)
        {
          v15 = "lzvn";
          goto LABEL_25;
        }
      }

LABEL_22:
      v15 = "???";
      goto LABEL_25;
    }

    return 0;
  }

  v11 = *(v4 + 1112);
  if (v11 < 0x101)
  {
    memcpy(context + 1116, (v4 + 1116), *(v4 + 1112));
    *(context + 278) = v11;
    result = memset_s(context + v11 + 1116, 256 - v11, 0, 256 - v11);
    v12 = *(*v3 + 72);
    if (v12 < 0x101)
    {
      memcpy(context + 76, (*v3 + 76), *(*v3 + 72));
      *(context + 18) = v12;
      result = memset_s(context + v12 + 76, 256 - v12, 0, 256 - v12);
      v13 = *(*v3 + 2152);
      if (v13 < 0x101)
      {
        memcpy(context + 2156, (*v3 + 2156), *(*v3 + 2152));
        *(context + 538) = v13;
        result = memset_s(context + v13 + 2156, 256 - v13, 0, 256 - v13);
        v14 = *(*v3 + 332);
        if (v14 < 0x101)
        {
          memcpy(context + 21, (*v3 + 336), *(*v3 + 332));
          *(context + 83) = v14;
          memset_s(context + v14 + 336, 256 - v14, 0, 256 - v14);
          v3[8] = 1;
          return 0;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t asyncSelect(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return v1(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t asyncProgress(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

void *AAAssetExtractorCreate(const char *a1, uint64_t *a2, uint64_t a3)
{
  v30 = *MEMORY[0x29EDCA608];
  memset(&v21, 0, sizeof(v21));
  bzero(__s, 0x400uLL);
  bzero(path, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(a1, __s) || stat(__s, &v21) || (v21.st_mode & 0xF000) != 0x4000 || (concatPath(path, 0x400uLL, __s, ".AssetExtractCheckpoint") & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorCreate", 216, 15, 0, "invalid work dir: %s", a1);
    Common = 0;
  }

  else
  {
    if (!stat(path, &v21))
    {
      v26 = 0;
      v27 = 0;
      v25 = 0;
      v6 = AAFileStreamOpenWithPath(path, 0, 0);
      if (v6)
      {
        Common = aaAssetExtractorCreateCommon(__s, path, a3);
        if (Common)
        {
          v24 = 0;
          v22 = 0;
          v23 = 0;
          if (*(v6 + 2))
          {
            v8 = &v22;
            v9 = 17;
            while (1)
            {
              v10 = (*(v6 + 2))(*v6, v8, v9);
              if (v10 < 0)
              {
                break;
              }

              v8 = (v8 + v10);
              v9 -= v10;
              if (v10)
              {
                v11 = v9 == 0;
              }

              else
              {
                v11 = 1;
              }

              if (v11)
              {
                *Common = v22;
                *(Common + 1038) = v23;
                Common[520] = BYTE4(v23);
                if (!BYTE5(v23) || (StreamOpenWithState = aaAssetExtractStreamOpenWithState(__s, v6, 0), (Common[521] = StreamOpenWithState) == 0) || BYTE6(v23) && (v13 = aaAssetDecodeStreamOpenWithState(StreamOpenWithState, v6, &v27), (Common[522] = v13) == 0) || HIBYTE(v23) && (v14 = aaAssetDecompressionStreamOpenWithState(Common[522], v6, &v26), (Common[523] = v14) == 0) || v24 && (v15 = aaAssetDecryptionStreamOpenWithState(Common[522], v6, &v25), (Common[524] = v15) == 0))
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "aaAssetExtractorCreateWithCheckpoint", 121, 15, 0, "invalid state");
                  goto LABEL_34;
                }

                if (a2)
                {
                  if (v24)
                  {
                    v16 = &v25;
                  }

                  else if (HIBYTE(v23))
                  {
                    v16 = &v26;
                  }

                  else
                  {
                    v16 = Common + 520;
                    if (BYTE6(v23))
                    {
                      v16 = &v27;
                    }
                  }

                  *a2 = *v16;
                }

                v20 = Common[522];
                if (!v20 || (aaAssetDecodeStreamSetParameterPtr(v20, 101, Common) & 0x80000000) == 0 && (aaAssetDecodeStreamSetParameterPtr(Common[522], 103, aaAssetExtractorProgress) & 0x80000000) == 0)
                {
                  AAByteStreamClose(v6);
                  return Common;
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "aaAssetExtractorCreateWithCheckpoint", 137, 15, 0, "mapping decode stream progress");
                goto LABEL_34;
              }
            }
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "aaAssetExtractorCreateWithCheckpoint", 112, 15, 0, "invalid state");
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "aaAssetExtractorCreateWithCheckpoint", 109, 15, 0, "common constructor");
        }
      }

      else
      {
        v18 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "aaAssetExtractorCreateWithCheckpoint", 102, 15, *v18, "open: %s", path);
        Common = 0;
      }

LABEL_34:
      AAByteStreamClose(v6);
      AAAssetExtractorDestroy(Common, 0);
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorCreate", 229, 15, "could not resume from saved checkpoint");
      unlink(path);
    }

    Common = aaAssetExtractorCreateCommon(__s, path, a3);
    if (Common)
    {
      StreamOpen = aaAssetExtractStreamOpen(a1, a3);
      Common[521] = StreamOpen;
      if (StreamOpen)
      {
        return Common;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorCreate", 245, 15, 0, "extractor stream");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorCreate", 240, 15, 0, "common constructor");
    }
  }

  AAAssetExtractorDestroy(Common, 0);
  return 0;
}

void *aaAssetExtractorCreateCommon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = malloc(0x1068uLL);
  v5 = v4;
  if (v4)
  {
    memset_s(v4, 0x1068uLL, 0, 0x1068uLL);
    *v5 = a3;
    __strlcpy_chk();
    __strlcpy_chk();
  }

  else
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "aaAssetExtractorCreateCommon", 76, 15, *v6, "malloc");
    AAAssetExtractorDestroy(0, 0);
  }

  return v5;
}

uint64_t AAAssetExtractorDestroy(char *a1, uint64_t *a2)
{
  if (a1)
  {
    if (atomic_load(a1 + 1034))
    {
LABEL_3:
      v4 = 0xFFFFFFFFLL;
LABEL_4:
      v5 = 1;
      goto LABEL_5;
    }

    v9 = *(a1 + 522);
    if (v9 && aaAssetDecodeStreamDone(v9))
    {
      v4 = 0;
      goto LABEL_4;
    }

    if (atomic_load(a1 + 1036))
    {
      if (atomic_load(a1 + 1034))
      {
LABEL_81:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorDestroy", 269, 15, 0, "storing checkpoint");
        goto LABEL_3;
      }

      memset(v40, 0, 17);
      v38 = -1;
      v39 = -1;
      v37 = -1;
      v14 = AAFileStreamOpenWithPath(a1 + 3080, 1537, 0x1A4u);
      v15 = v14;
      if (!v14)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "aaAssetExtractorStoreCheckpoint", 160, 15, 0, "open checkpoint path: %s");
LABEL_80:
        AAByteStreamClose(v15);
        unlink(a1 + 3080);
        goto LABEL_81;
      }

      v40[0] = *a1;
      LODWORD(v40[1]) = *(a1 + 1038);
      BYTE4(v40[1]) = *(a1 + 520);
      v16 = (a1 + 4168);
      v17 = vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(a1 + 4168)), vceqzq_s64(*(a1 + 4184))))), 0x1000100010001);
      *(&v40[1] + 5) = vuzp1_s8(v17, v17).u32[0];
      if (!*(v14 + 3))
      {
        goto LABEL_47;
      }

      v18 = 0;
      v19 = v40;
      v20 = 17;
      while (1)
      {
        v21 = (*(v15 + 3))(*v15, v19, v20);
        if (v21 < 1)
        {
          break;
        }

        v19 = (v19 + v21);
        v18 += v21;
        v20 -= v21;
        if (!v20)
        {
          goto LABEL_45;
        }
      }

      v18 = v21;
LABEL_45:
      if (v18 < 0)
      {
LABEL_47:
        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      if (BYTE5(v40[1]))
      {
        v28 = *v16;
        if (*v16)
        {
          if (*v28)
          {
            v29 = (v28[6])(*v28, v15, 0);
            free(v28);
            if (v29 < 0)
            {
              v27 = 0;
            }
          }

          else
          {
            free(*v16);
          }
        }
      }

      *v16 = 0;
      if (BYTE6(v40[1]))
      {
        v30 = *(a1 + 522);
        if (v30)
        {
          if (*v30)
          {
            v31 = (v30[6])(*v30, v15, &v39);
            free(v30);
            if (v31 < 0)
            {
              v27 = 0;
            }
          }

          else
          {
            free(*(a1 + 522));
          }
        }
      }

      *(a1 + 522) = 0;
      if (HIBYTE(v40[1]))
      {
        v32 = *(a1 + 523);
        if (v32)
        {
          if (*v32)
          {
            v33 = (v32[6])(*v32, v15, &v38);
            free(v32);
            if (v33 < 0)
            {
              v27 = 0;
            }
          }

          else
          {
            free(*(a1 + 523));
          }
        }
      }

      *(a1 + 523) = 0;
      if (LOBYTE(v40[2]))
      {
        v34 = *(a1 + 524);
        if (v34)
        {
          if (*v34)
          {
            v35 = (v34[6])(*v34, v15, &v37);
            free(v34);
            if (v35 < 0)
            {
              *(a1 + 524) = 0;
LABEL_79:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "aaAssetExtractorStoreCheckpoint", 179, 15, 0, "write checkpoint");
              goto LABEL_80;
            }
          }

          else
          {
            free(*(a1 + 524));
          }
        }
      }

      *(a1 + 524) = 0;
      if (!v27)
      {
        goto LABEL_79;
      }

      AAByteStreamClose(v15);
      if (a2)
      {
        if (LOBYTE(v40[2]))
        {
          v36 = &v37;
        }

        else if (HIBYTE(v40[1]))
        {
          v36 = &v38;
        }

        else
        {
          v36 = (a1 + 4160);
          if (BYTE6(v40[1]))
          {
            v36 = &v39;
          }
        }

        *a2 = *v36;
      }

      AAByteStreamClose(0);
    }

    v5 = 0;
    v4 = 1;
LABEL_5:
    v6 = *(a1 + 523);
    if (v6)
    {
      if (*v6)
      {
        v7 = v6[1](*v6, a2);
        free(v6);
        if (v7 < 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        free(*(a1 + 523));
      }
    }

    v10 = *(a1 + 524);
    if (v10)
    {
      if (*v10)
      {
        v11 = v10[1](*v10, a2);
        free(v10);
        if (v11 < 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        free(*(a1 + 524));
      }
    }

    v22 = *(a1 + 522);
    if (v22)
    {
      if (*v22)
      {
        v23 = v22[1](*v22, a2);
        free(v22);
        if (v23 < 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        free(*(a1 + 522));
      }
    }

    v24 = *(a1 + 521);
    if (v24)
    {
      if (!*v24)
      {
        free(*(a1 + 521));
        if (v5)
        {
          goto LABEL_38;
        }

        goto LABEL_40;
      }

      v25 = (v24[1])(*v24, a2);
      free(v24);
      if (v25 < 0)
      {
LABEL_37:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorDestroy", 276, 15, 0, "internal streams");
        v4 = 0xFFFFFFFFLL;
        goto LABEL_38;
      }
    }

    if (v5)
    {
LABEL_38:
      unlink(a1 + 3080);
LABEL_41:
      memset_s(a1, 0x1068uLL, 0, 0x1068uLL);
      free(a1);
      return v4;
    }

LABEL_40:
    v4 = 1;
    goto LABEL_41;
  }

  return 0;
}

uint64_t AAAssetExtractorWrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (atomic_load((a1 + 4136)))
  {
    return -1;
  }

  v6 = a3;
  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  atomic_compare_exchange_strong((a1 + 4144), &v9, 1u);
  if (!v9)
  {
    unlink((a1 + 3080));
  }

  v10 = *(a1 + 4176);
  if (v10)
  {
    v4 = 0;
  }

  else
  {
    v18 = *(a1 + 4160);
    if (v18 > 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      do
      {
        v19 = *(a2 + v4);
        *(a1 + 4160) = v18 + 1;
        *(a1 + 4152 + v18) = v19;
        v18 = *(a1 + 4160);
      }

      while (v18 <= 3 && v6 - 1 != v4++);
      if (v18 < 4)
      {
        return v4;
      }

      v6 -= v4;
      a2 += v4;
    }

    v21 = (a1 + 4152);
    if (*(a1 + 4152) == 825246017 || *v21 == 826360153)
    {
      v24 = 0;
      v25 = 0;
    }

    else if (*v21 == 826361153)
    {
      v25 = 0;
      v24 = 1;
    }

    else
    {
      v22 = *(a1 + 4155);
      v23 = *v21 == 25200 && *(a1 + 4154) == 122;
      if (!v23 || ((v24 = 0, v25 = 1, (v22 - 45) > 0x39) || ((1 << (v22 - 45)) & 0x320000000000081) == 0) && v22 != 120 && v22 != 122)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorWrite", 323, 15, 0, "invalid stream type (0x%02x 0x%02x 0x%02x 0x%02x)", *(a1 + 4152));
        goto LABEL_23;
      }
    }

    v26 = aaAssetDecodeStreamOpen(*(a1 + 4168));
    *(a1 + 4176) = v26;
    if (!v26)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorWrite", 330, 15, 0, "decoder stream");
      goto LABEL_23;
    }

    if (v24)
    {
      v27 = aaAssetDecryptionStreamOpen(v26, *(a1 + 4104), *(a1 + 4112));
      *(a1 + 4192) = v27;
      if (!v27)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorWrite", 334, 15, 0, "decryption stream");
        goto LABEL_23;
      }
    }

    else
    {
      if (v25)
      {
        v28 = aaAssetDecompressionStreamOpen(v26);
        *(a1 + 4184) = v28;
        if (!v28)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorWrite", 339, 15, 0, "decompression stream");
          goto LABEL_23;
        }
      }

      v29 = *(a1 + 4112);
      if (v29 && (v29(*(a1 + 4104), 0) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorWrite", 346, 15, 0, "callback cancel on non AEA container");
        goto LABEL_23;
      }
    }

    if ((aaAssetDecodeStreamSetParameterPtr(*(a1 + 4176), 101, a1) & 0x80000000) != 0 || (aaAssetDecodeStreamSetParameterPtr(*(a1 + 4176), 103, aaAssetExtractorProgress) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorWrite", 352, 15, 0, "mapping decode stream progress");
      goto LABEL_23;
    }

    v30 = *(a1 + 4176);
    if (*(a1 + 4184))
    {
      v30 = *(a1 + 4184);
    }

    v31 = *(a1 + 4192);
    if (!v31)
    {
      v31 = v30;
    }

    v32 = v31[3];
    if (v32)
    {
      v33 = v32(*v31, a1 + 4152, *(a1 + 4160));
    }

    else
    {
      v33 = -1;
    }

    if (v33 != *(a1 + 4160))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorWrite", 360, 15, 0, "invalid stream");
      goto LABEL_23;
    }

    v10 = *(a1 + 4176);
  }

  if (*(a1 + 4184))
  {
    v10 = *(a1 + 4184);
  }

  v11 = *(a1 + 4192);
  if (!v11)
  {
    v11 = v10;
  }

  v12 = v11[3];
  if (!v12 || (v13 = v12(*v11, a2, v6), v13 < 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorWrite", 370, 15, 0, "invalid stream");
    goto LABEL_23;
  }

  v4 += v13;
  v14 = *(a1 + 4176);
  if (v14)
  {
    if (aaAssetDecodeStreamDone(v14))
    {
      v15 = 0;
      atomic_compare_exchange_strong((a1 + 4140), &v15, 1u);
      if (!v15)
      {
        v16 = *(a1 + 4128);
        if (v16)
        {
          if ((v16(*(a1 + 4104), 92, &unk_296ABFE1D, 0) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractor.c", "AAAssetExtractorWrite", 381, 15, 0, "end of stream cancel");
LABEL_23:
            v17 = 0;
            atomic_compare_exchange_strong((a1 + 4136), &v17, 1u);
            return -1;
          }
        }
      }
    }
  }

  return v4;
}

uint64_t aaAssetExtractorProgress(uint64_t a1, float a2)
{
  if ((a2 >= 100.0 || ((v2 = *(a1 + 4148), v2 > 0.0) ? (v3 = (v2 + 1.0) <= a2) : (v3 = 1), v3)) && (*(a1 + 4148) = a2, (v4 = *(a1 + 4120)) != 0))
  {
    return v4(*(a1 + 4104));
  }

  else
  {
    return 0;
  }
}

uint64_t AAAssetExtractorSetParameterPtr(uint64_t a1, int a2, char *a3)
{
  if (atomic_load((a1 + 4136)))
  {
    return 0xFFFFFFFFLL;
  }

  if ((a2 - 105) >= 2)
  {
    if (a2 != 101 || (aaAssetExtractStreamSetParameterPtr(*(a1 + 4168), 101, a3) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0;
    *(a1 + 4104) = a3;
  }

  else
  {
    v7 = *(a1 + 4168);

    return aaAssetExtractStreamSetParameterPtr(v7, a2, a3);
  }

  return result;
}

uint64_t AAAssetExtractorSetParameterCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (atomic_load((a1 + 4136)))
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == 102)
  {
    v7 = 4112;
  }

  else if (a2 == 103)
  {
    v7 = 4120;
  }

  else
  {
    if (a2 != 104 || (aaAssetExtractStreamSetParameterCallback(*(a1 + 4168), 104, a3) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = 4128;
  }

  result = 0;
  *(a1 + v7) = a3;
  return result;
}

uint64_t compressionWorkerProc(uint64_t *a1)
{
  v2 = *a1;
  if (atomic_load((*a1 + 112)))
  {
    result = 0;
    a1[6] = -1;
    return result;
  }

  v5 = a1[2];
  a1[6] = v5;
  if (v5 == -2)
  {
    return 0;
  }

  if (v5 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 244, 37, 0, "NOP received");
    return 0;
  }

  if (v5 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 246, 37, 0, "Invalid iBlock received");
  }

  else
  {
    if (!*(v2 + 4))
    {
      v7 = (*(v2 + 96))(a1[5], *(v2 + 16), a1[1], a1[3]);
      v8 = a1[3];
      if ((v7 & 0x8000000000000000) != 0 || v7 >= v8)
      {
        memcpy(a1[5], a1[1], v8);
        v7 = a1[3];
        v8 = v7;
      }

      a1[7] = v7;
      a1[8] = v8;
      if (*(v2 + 24) >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Worker: encode block %5lld: %7llu => %7llu\n");
      }

      return 0;
    }

    if (a1[3] == a1[4])
    {
      memcpy(a1[5], a1[1], a1[3]);
      v6 = a1[3];
      a1[7] = v6;
      goto LABEL_19;
    }

    v9 = (*(v2 + 96))(a1[5]);
    if ((v9 & 0x8000000000000000) == 0 && v9 == a1[4])
    {
      a1[7] = v9;
      v6 = a1[3];
LABEL_19:
      a1[8] = v6;
      if (*(v2 + 24) >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Worker: decode block %5lld: %7llu => %7llu\n");
      }

      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 292, 37, 0, "invalid output size/decoder error: block=%lld, inSize=%lld, outSize=%lld, expectedOutSize=%lld", a1[6], a1[3]);
  }

  v10 = 0;
  a1[6] = -1;
  atomic_compare_exchange_strong((v2 + 112), &v10, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t outputStreamProc(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (atomic_load((a1 + 112)))
  {
    return 0;
  }

  v6 = *(a2 + 48);
  if (v6 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = 0;
LABEL_5:
    result = 0;
    *(a1 + 88) += v7;
    return result;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 327, 37, 0, "invalid block ID in write thread %lld");
    goto LABEL_19;
  }

  if (*(a1 + 4) != 1)
  {
    v9 = vrev64q_s8(*(a2 + 56));
    v13 = vextq_s8(v9, v9, 8uLL);
    v10 = pcWrite(*(a1 + 56), *(a1 + 72), &v13, 16);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v7 = v10;
      if (v10 == 16)
      {
        v11 = pcWrite(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
        if (v11 < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 351, 37, 0, "writing block payload");
          v7 = 16;
        }

        else
        {
          v7 = v11 + 16;
          if (v11 == *(a2 + 56))
          {
            goto LABEL_5;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 353, 37, 0, "Truncated block payload (%lld/%llu bytes read)");
        }
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 347, 37, 0, "Truncated block header (%lld/16 bytes written)");
      }

      goto LABEL_21;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 345, 37, 0, "writing block header");
LABEL_19:
    v7 = 0;
    goto LABEL_21;
  }

  v8 = pcWrite(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
  if (v8 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 334, 37, 0, "writing block");
    goto LABEL_19;
  }

  v7 = v8;
  if (v8 == *(a2 + 56))
  {
    goto LABEL_5;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 336, 37, 0, "Truncated block payload (%lld/%llu bytes written)");
LABEL_21:
  v12 = 0;
  *(a1 + 88) += v7;
  atomic_compare_exchange_strong((a1 + 112), &v12, 1u);
  return 0xFFFFFFFFLL;
}