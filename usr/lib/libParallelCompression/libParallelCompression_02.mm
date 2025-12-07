uint64_t joinSearchThread(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 152) + 2368 * a2;
  if (!*v2)
  {
    return 0xFFFFFFFFLL;
  }

  joinThread(*v2);
  if (pthread_mutex_destroy((v2 + 32)) || pthread_cond_destroy((v2 + 96)))
  {
    return 0xFFFFFFFFLL;
  }

  free(*(v2 + 2360));
  return 0;
}

uint64_t appendPayload(uint64_t a1, const void *a2, size_t a3)
{
  v6 = *(a1 + 2344);
  v7 = v6 + a3;
  if (v6 + a3 <= *(a1 + 2336))
  {
    v8 = *(a1 + 2360);
    goto LABEL_5;
  }

  *(a1 + 2336) = v7;
  v8 = reallocf(*(a1 + 2360), v7);
  *(a1 + 2360) = v8;
  if (v8)
  {
    v6 = *(a1 + 2344);
LABEL_5:
    memcpy(&v8[v6], a2, a3);
    result = 0;
    *(a1 + 2344) += a3;
    return result;
  }

  v10 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Search.c", "appendPayload", 176, 23, *v10, "reallocf");
  *(a1 + 2336) = 0;
  return 0xFFFFFFFFLL;
}

uint64_t ParallelArchiveSearch(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  v21 = 0u;
  *v22 = 0u;
  memset(v26, 0, sizeof(v26));
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  LODWORD(v21) = 1;
  v20 = a1;
  v27 = *(a1 + 8);
  v28 = -1;
  v29 = calloc(v27, 0x940uLL);
  if (v29)
  {
    DWORD2(v21) = 0;
    HIDWORD(v21) = v27;
    v22[0] = calloc(v27, 4uLL);
    if (v22[0])
    {
      if (pthread_mutex_init(&v22[1], 0))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
      }

      else if (pthread_cond_init(&v26[1], 0))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
      }

      else if (v27)
      {
        v11 = 0;
        while (!createSearchThread(&v20, v11))
        {
          if (++v11 >= v27)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
LABEL_47:
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
        DefaultNThreads = *(a1 + 4);
        if (!DefaultNThreads)
        {
          DefaultNThreads = getDefaultNThreads();
        }

        DWORD1(v14) = DefaultNThreads;
        v13 = *(a1 + 40);
        *(&v14 + 1) = *(a1 + 32);
        *(&v15 + 1) = v13;
        *&v16 = searchBeginProc;
        *&v17 = searchPayloadProc;
        *(&v17 + 1) = 0;
        *&v18 = searchEndProc;
        v19 = &v20;
        if (!ParallelArchiveRead(&v14))
        {
          goto LABEL_10;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Search.c", "ParallelArchiveSearch", 273, 23, 0, "Search failed", v14);
      }
    }

    else
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
    }
  }

  else
  {
    v2 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Search.c", "ParallelArchiveSearch", 252, 23, v2, "calloc", v14);
  }

  LODWORD(v21) = 0;
LABEL_10:
  if (!v27)
  {
    goto LABEL_33;
  }

  for (i = 0; i < v27; ++i)
  {
    if (pthread_mutex_lock(&v22[1]))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n", v14);
LABEL_17:
      v5 = -1;
      goto LABEL_18;
    }

    while (1)
    {
      v4 = DWORD2(v21);
      if (DWORD2(v21))
      {
        break;
      }

      if (pthread_cond_wait(&v26[1], &v22[1]))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n", v14);
        goto LABEL_17;
      }
    }

    --DWORD2(v21);
    v5 = *(v22[0] + (v4 - 1));
    if (pthread_mutex_unlock(&v22[1]))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
LABEL_18:
      LODWORD(v21) = 0;
    }

    v6 = &v29[2368 * v5];
    *(v6 + 293) = 0;
    if (pthread_mutex_lock((v6 + 32)) || (v7 = *(v6 + 6), *(v6 + 6) = v7 + 1, !v7) && pthread_cond_broadcast(v6 + 2) || pthread_mutex_unlock((v6 + 32)))
    {
      LODWORD(v21) = 0;
    }
  }

  if (v27)
  {
    for (j = 0; j < v27; ++j)
    {
      if (joinSearchThread(&v20, j))
      {
        LODWORD(v21) = 0;
      }
    }
  }

LABEL_33:
  if (pthread_mutex_destroy(&v22[1]) || pthread_cond_destroy(&v26[1]))
  {
    LODWORD(v21) = 0;
  }

  else
  {
    free(v22[0]);
  }

  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (v21)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (result >= 0)
  {
    return v10;
  }

  else
  {
    return result;
  }
}

uint64_t searchBeginProc(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6)
{
  *(a1 + 148) = -1;
  if (pthread_mutex_lock((a1 + 32)))
  {
    result = pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
  }

  else
  {
    while (1)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 96), (a1 + 32)))
      {
        result = pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
        goto LABEL_8;
      }
    }

    v12 = v11 - 1;
    *(a1 + 16) = v12;
    *(a1 + 148) = *(*(a1 + 24) + 4 * v12);
    result = pthread_mutex_unlock((a1 + 32));
    if (!result)
    {
      goto LABEL_9;
    }

    result = pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
  }

LABEL_8:
  *(a1 + 8) = 0;
LABEL_9:
  v13 = *(a1 + 148);
  if (v13 != -1)
  {
    v14 = (*(a1 + 152) + 2368 * v13);
    memcpy(v14 + 18, a2, 0x890uLL);
    v14[293] = 0;
    v14[294] = a6;
    result = appendPayload(v14, a5, a6);
    if (result)
    {
      *(a1 + 8) = 0;
    }
  }

  return result;
}

uint64_t searchPayloadProc(uint64_t result, const void *a2, size_t a3)
{
  v3 = *(result + 148);
  if (v3 != -1)
  {
    v4 = result;
    result = appendPayload(*(result + 152) + 2368 * v3, a2, a3);
    if (result)
    {
      *(v4 + 8) = 0;
    }
  }

  return result;
}

uint64_t searchEndProc(uint64_t result)
{
  v1 = *(result + 148);
  if (v1 != -1)
  {
    v2 = result;
    v3 = *(result + 152) + 2368 * v1;
    if (**result >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "Thread %d processing '%s', size=%zu, header=%zu, capacity=%zu\n", *(v3 + 8), (v3 + 288), *(v3 + 2344), *(v3 + 2352), *(v3 + 2336));
    }

    result = pthread_mutex_lock((v3 + 32));
    if (result || (v4 = *(v3 + 24), *(v3 + 24) = v4 + 1, !v4) && (result = pthread_cond_broadcast((v3 + 96)), result) || (result = pthread_mutex_unlock((v3 + 32)), result))
    {
      *(v2 + 8) = 0;
    }
  }

  return result;
}

uint64_t apfs_scan_diskimage(const char *a1, uint64_t (*a2)(__int128 *, uint64_t), uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x29EDCA608];
  memset(&v27, 0, sizeof(v27));
  if (snprintf(__str, 0x400uLL, "%s.json", a1) <= 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 110, 144, 0, "snprintf");
    v8 = 0;
    v7 = 0;
    goto LABEL_71;
  }

  if (stat(__str, &v27) || (v27.st_mode & 0xF000) != 0x8000)
  {
    if (getenv("PC_APFS_DISKIMAGE_MAP") && (__strlcpy_chk(), !stat(__str, &v27)) && (v27.st_mode & 0xF000) == 0x8000 || (v14 = getenv("MASTERING_TOOLCHAIN_DIR")) != 0 && (snprintf(__str, 0x400uLL, "%s%s/%s", v14, "/System/Library/Filesystems/apfs.fs/Contents/Resources", "apfs_diskimage_map"), !stat(__str, &v27)) && (v27.st_mode & 0xF000) == 0x8000 || (snprintf(__str, 0x400uLL, "%s/%s", "/System/Library/Filesystems/apfs.fs/Contents/Resources", "apfs_diskimage_map"), !stat(__str, &v27)) && (v27.st_mode & 0xF000) == 0x8000)
    {
      v8 = malloc(0x40000uLL);
      if (v8)
      {
        v7 = AATempStreamOpen(0x800000uLL);
        if (v7)
        {
          snprintf(v36, 0x400uLL, "%s %s", __str, a1);
          v15 = popen(v36, "r");
          if (v15)
          {
            v16 = v15;
            while (!feof(v16))
            {
              v17 = fread(v8, 1uLL, 0x40000uLL, v16);
              if (ferror(v16))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 170, 144, 0, "reading from tool pipe");
LABEL_85:
                AAByteStreamClose(v7);
                pclose(v16);
LABEL_76:
                v22 = 0xFFFFFFFFLL;
                goto LABEL_77;
              }

              if (*(v7 + 3))
              {
                v18 = 0;
                if (v17)
                {
                  v19 = v8;
                  v20 = v17;
                  while (1)
                  {
                    v21 = (*(v7 + 3))(*v7, v19, v20);
                    if (v21 < 1)
                    {
                      break;
                    }

                    v19 += v21;
                    v18 += v21;
                    v20 -= v21;
                    if (!v20)
                    {
                      goto LABEL_68;
                    }
                  }

                  v18 = v21;
                }
              }

              else
              {
                v18 = -1;
              }

LABEL_68:
              if (v18 != v17)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 172, 144, 0, "writing tool output");
                goto LABEL_85;
              }
            }

            pclose(v16);
            AAByteStreamSeek(v7, 0, 0);
            goto LABEL_6;
          }

          v26 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 164, 144, v26, "%s");
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 159, 144, 0, "temp stream open");
        }

LABEL_75:
        AAByteStreamClose(v7);
        goto LABEL_76;
      }

      v24 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 156, 144, *v24, "malloc");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 153, 144, 0, "could not locate the apfs diskimage map tool");
      v8 = 0;
    }

    v7 = 0;
    goto LABEL_75;
  }

  v7 = AAFileStreamOpenWithPath(__str, 0, 0);
  if (!v7)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 114, 144, 0, "AAFileStreamOpenWithPath");
    v8 = 0;
    goto LABEL_71;
  }

  v8 = 0;
LABEL_6:
  v34 = 0u;
  *v35 = 0u;
  __src = 0;
  v33 = 0;
  v9 = AAJSONInputStreamOpen(v7);
  if (!v9)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 27, 144, 0, "AAJSONInputStreamOpen");
    v25 = 0;
    goto LABEL_91;
  }

  v10 = v9;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  *__s1 = 0u;
  if ((AAJSONInputStreamRead(v9, __s1) & 0x80000000) != 0)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v11 = v31;
    if (!v31)
    {
      AAJSONInputStreamClose(v10);
      v22 = 0;
      goto LABEL_72;
    }

    if (LODWORD(__s1[0]) < 2)
    {
      if (v31 <= 4)
      {
        if (v31 == 2)
        {
          if (strcmp(__s1[1], "volumes"))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 41, 144, 0, "bad map");
            goto LABEL_90;
          }
        }

        else if (v31 == 4 && strcmp(__s1[1], "files"))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 42, 144, 0, "bad map");
          goto LABEL_90;
        }
      }

      else
      {
        switch(v31)
        {
          case 5:
            v34 = 0u;
            *v35 = 0u;
            *&v35[2] = pc_array_init(16);
            break;
          case 6:
            if (strcmp(__s1[1], "extents"))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 43, 144, 0, "bad map");
              goto LABEL_90;
            }

            break;
          case 8:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 44, 144, 0, "bad map");
            goto LABEL_90;
        }
      }

      goto LABEL_44;
    }

    if (LODWORD(__s1[0]) == 2)
    {
      if (v31 == 4)
      {
        v35[1] = *(*&v35[2] - 64);
        if ((a2(&v34, a4) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 58, 144, 0, "add_fork");
          goto LABEL_90;
        }

        pc_array_free(*&v35[2]);
        *&v35[2] = 0;
        v11 = v31;
      }

      if (v11 == 6)
      {
        *&v35[2] = pc_array_append(*&v35[2], &__src);
        if (!*&v35[2])
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 67, 144, 0, "pc_array_append");
          goto LABEL_90;
        }
      }

      goto LABEL_44;
    }

    if (LODWORD(__s1[0]) != 4)
    {
      goto LABEL_44;
    }

    if (v31 != 7)
    {
      break;
    }

    v13 = __s1[1];
    if (!strcmp(__s1[1], "offset"))
    {
      __src = *(&v29 + 1);
    }

    else
    {
      if (strcmp(v13, "length"))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 83, 144, 0, "bad map");
        goto LABEL_90;
      }

      v33 = *(&v29 + 1);
    }

LABEL_44:
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    *__s1 = 0u;
    if ((AAJSONInputStreamRead(v10, __s1) & 0x80000000) != 0)
    {
      goto LABEL_90;
    }
  }

  if (v31 != 5)
  {
    goto LABEL_44;
  }

  v12 = __s1[1];
  if (!strcmp(__s1[1], "compression"))
  {
    v35[0] = BYTE8(v29);
    goto LABEL_44;
  }

  if (!strcmp(v12, "uncompressed_size"))
  {
    *&v34 = *(&v29 + 1);
    goto LABEL_44;
  }

  if (!strcmp(v12, "size"))
  {
    *(&v34 + 1) = *(&v29 + 1);
    goto LABEL_44;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 77, 144, 0, "bad map");
LABEL_90:
  v25 = v10;
LABEL_91:
  AAJSONInputStreamClose(v25);
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 181, 144, 0, "invalid image map JSON");
LABEL_71:
  v22 = 0xFFFFFFFFLL;
LABEL_72:
  AAByteStreamClose(v7);
LABEL_77:
  free(v8);
  return v22;
}

uint64_t archiveTreeUpdateChilds(unsigned int *a1)
{
  v1 = *a1;
  if (v1)
  {
    v2 = (*(a1 + 1) + 48);
    v3 = *a1;
    do
    {
      *(v2 - 11) = -1;
      *v2 = -1;
      v2 += 14;
      --v3;
    }

    while (v3);
    v4 = 0;
    v5 = *(a1 + 1);
    v6 = 1;
    v7 = v5;
    v8 = -1;
    v9 = 0xFFFFFFFFLL;
    do
    {
      v11 = *v7;
      v7 += 14;
      v10 = v11;
      if (v11 == -1)
      {
        if (v9 == 0xFFFFFFFFLL)
        {
          if (v8 != -1)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeUpdateChilds", 1080, 34, 0, "tree has a first root, but no last root", NAN);
            return (v6 << 31 >> 31);
          }

          v9 = v4;
          v8 = v4;
        }

        else
        {
          v5[14 * v9 + 2] = v4;
          v9 = v4;
        }
      }

      else
      {
        v12 = &v5[14 * v10];
        v13 = v12[12];
        if (v13 == -1)
        {
          if (v12[1] != -1)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeUpdateChilds", 1092, 34, 0, "node has a first child, but no last child", NAN);
            return (v6 << 31 >> 31);
          }

          v12[1] = v4;
        }

        else
        {
          v5[14 * v13 + 2] = v4;
        }

        v5[14 * v10 + 12] = v4;
      }

      v6 = ++v4 < v1;
    }

    while (v1 != v4);
  }

  v6 = 0;
  return (v6 << 31 >> 31);
}

unsigned int *ArchiveTreeCreateWithRootEntry()
{
  v0 = archiveTreeCreate();
  v1 = v0;
  if (!v0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateWithRootEntry", 1134, 34, 0, "archive tree creation");
LABEL_6:
    ArchiveTreeDestroy(v1);
    return 0;
  }

  if ((archiveTreeAppend(v0, -1, "", 0, -1, -1, 68) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateWithRootEntry", 1137, 34, 0, "inserting root entry");
    goto LABEL_6;
  }

  archiveTreeUpdateChilds(v1);
  return v1;
}

void *archiveTreeCreate()
{
  v0 = calloc(1uLL, 0x20uLL);
  if (v0)
  {
    v1 = StringTableCreate();
    v0[2] = v1;
    if (!v1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeCreate", 109, 34, 0, "string table creation");
      free(v0);
      return 0;
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeCreate", 108, 34, 0, "malloc");
  }

  return v0;
}

uint64_t archiveTreeAppend(unsigned int *a1, int a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (archiveTreeReserve(a1, *a1 + 1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeAppend", 140, 34, 0, "increasing archive tree storage");
    return 0xFFFFFFFFLL;
  }

  v15 = *(a1 + 1) + 56 * *a1;
  *(v15 + 48) = 0;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *v15 = 0u;
  if ((StringTableAppend(*(a1 + 2), a3, a4, (v15 + 12)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeAppend", 144, 34, 0, "inserting tree node");
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *v15 = a2;
  *(v15 + 16) = a7;
  *(v15 + 24) = a5;
  *(v15 + 32) = a6;
  ++*a1;
  return result;
}

void ArchiveTreeDestroy(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
    StringTableDestroy(*(a1 + 16));
    MemBufferDestroy(*(a1 + 24));

    free(a1);
  }
}

unsigned int *ArchiveTreeCreateFromIndex(uint64_t a1, uint64_t a2, int (*a3)(uint64_t, _BYTE *, void), uint64_t a4, int a5, int a6)
{
  v54 = *MEMORY[0x29EDCA608];
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v45 = 0;
  v46 = 0;
  v12 = archiveTreeCreate();
  v13 = v12;
  if (!v12)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateFromIndex", 1164, 34, 0, "archive tree creation");
    goto LABEL_8;
  }

  *&v48 = 0;
  *(&v49 + 1) = 0;
  v50 = 0u;
  v51 = 0u;
  *(&v47 + 1) = a1;
  LODWORD(v47) = 0;
  DWORD1(v47) = a5;
  *(&v48 + 1) = a2;
  *&v49 = archiveTreeFromIndexBeginProc;
  v52 = &v45;
  v45 = v12;
  v46 = 0x1FFFFFFFFLL;
  if (ParallelArchiveRead(&v47) || !HIDWORD(v46))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateFromIndex", 1178, 34, 0, "parsing index");
    goto LABEL_8;
  }

  if (archiveTreeSort(v13))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateFromIndex", 1181, 34, 0, "sorting tree");
    goto LABEL_8;
  }

  if (a6 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%12u entries in index\n", *v13);
  }

  if (!a3)
  {
    v29 = 0;
LABEL_55:
    archiveTreeUpdateChilds(v13);
    free(v29);
    return v13;
  }

  bzero(v53, 0x800uLL);
  v15 = *v13;
  if (!v15)
  {
    v15 = 0;
LABEL_35:
    v30 = calloc(v15, 4uLL);
    if (!v30)
    {
      v44 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateFromIndex", 1216, 34, v44, "malloc");
      goto LABEL_8;
    }

    v29 = v30;
    v31 = *v13;
    if (v31)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      do
      {
        v35 = *(v13 + 1);
        if (*(v35 + v32 + 48))
        {
          *(v30 + v33) = v34;
          if (v33 != v34)
          {
            v36 = v35 + 56 * v34;
            v37 = (v35 + v32);
            v38 = *v37;
            v39 = v37[1];
            v40 = v37[2];
            *(v36 + 48) = *(v37 + 6);
            *(v36 + 16) = v39;
            *(v36 + 32) = v40;
            *v36 = v38;
          }

          ++v34;
          v31 = *v13;
        }

        ++v33;
        v32 += 56;
      }

      while (v33 < v31);
      *v13 = v34;
      if (v34)
      {
        v41 = *(v13 + 1);
        v42 = v34;
        do
        {
          v43 = *v41;
          if (v43 != -1)
          {
            LODWORD(v43) = *(v30 + v43);
          }

          *v41 = v43;
          v41 += 14;
          --v42;
        }

        while (v42);
      }
    }

    else
    {
      v34 = 0;
    }

    if (a6 > 0)
    {
      fprintf(*MEMORY[0x29EDCA610], "%12u entries selected\n", v34);
    }

    goto LABEL_55;
  }

  v16 = (v15 + 3) & 0x1FFFFFFFCLL;
  v17 = vdupq_n_s64(v15 - 1);
  v18 = xmmword_2980690D0;
  v19 = xmmword_2980690E0;
  v20 = (*(v13 + 1) + 160);
  v21 = vdupq_n_s64(4uLL);
  do
  {
    v22 = vmovn_s64(vcgeq_u64(v17, v19));
    if (vuzp1_s16(v22, *v17.i8).u8[0])
    {
      *(v20 - 28) = 0;
    }

    if (vuzp1_s16(v22, *&v17).i8[2])
    {
      *(v20 - 14) = 0;
    }

    if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v18))).i32[1])
    {
      *v20 = 0;
      v20[14] = 0;
    }

    v18 = vaddq_s64(v18, v21);
    v19 = vaddq_s64(v19, v21);
    v20 += 56;
    v16 -= 4;
  }

  while (v16);
  v23 = 0;
  v24 = 0;
  v25 = *(v13 + 1);
  while (1)
  {
    v26 = *(v25 + v23);
    if (v26 != -1)
    {
      break;
    }

LABEL_26:
    if ((ArchiveTreeNodePath(v13, v24, v53, 0x800uLL) & 0x8000000000000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateFromIndex", 1209, 34, 0, "getting node path");
      goto LABEL_8;
    }

    if (a3(a4, v53, *(*(v13 + 1) + v23 + 16)) <= 0)
    {
      v28 = 2;
    }

    else
    {
      v28 = 3;
    }

    v25 = *(v13 + 1);
    *(v25 + v23 + 48) = v28;
    v15 = *v13;
LABEL_31:
    ++v24;
    v23 += 56;
    if (v24 >= v15)
    {
      goto LABEL_35;
    }
  }

  v27 = *(v25 + 56 * v26 + 48);
  if (v27)
  {
    *(v25 + v23 + 48) = v27;
    if ((v27 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateFromIndex", 1202, 34, 0, "parent node was not processed first");
LABEL_8:
  ArchiveTreeDestroy(v13);
  return 0;
}

uint64_t archiveTreeFromIndexBeginProc(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x29EDCA608];
  if (*(a2 + 4) != 77)
  {
    v5 = result;
    if (!a4)
    {
      goto LABEL_18;
    }

    v6 = *result;
    v7 = (a3 + 8);
    v8 = -1;
    do
    {
      if ((*(v7 - 1) & 0xDFDFDF) == 0x584449 && *(v7 - 1) == 1)
      {
        v8 = *v7;
      }

      v7 += 129;
      --a4;
    }

    while (a4);
    if (v8 == -1)
    {
LABEL_18:
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromIndexBeginProc", 589, 34, 0, "entry is missing IDX field: %s");
    }

    else
    {
      v9 = *(result + 8);
      if (v9 != -1)
      {
        v10 = *(v6 + 8) + 56 * v9;
        v11 = v8 - *(v10 + 24);
        if (v11 < *(v10 + 32))
        {
          *(v10 + 32) = v11;
        }
      }

      strncpy(__dst, (a2 + 144), 0x400uLL);
      v12 = strlen(__dst);
      v13 = v12;
      v27 = -1;
      if (v12)
      {
        v14 = 0;
        while (__dst[v12 + v14] != 47)
        {
          --v14;
          if (!(v12 + v14))
          {
            goto LABEL_16;
          }
        }

        v17 = v12 + v14;
        v18 = &__dst[v12 + v14];
        *v18 = 0;
        v15 = v18 + 1;
        if ((archiveTreeFindPath(v6, __dst, &v27) & 0x80000000) == 0)
        {
          v13 = ~v14;
          v16 = v27;
          if (v27 == -1)
          {
            v25 = v15;
            v26 = v6;
            v19 = *v5;
            v20 = __dst;
            while (1)
            {
              v21 = strchr(v20, 47);
              v22 = v21;
              v23 = v21 - v20;
              v24 = v21 ? v21 - v20 : v17;
              if ((archiveTreeAppend(v19, v16, v20, v24, -1, -1, 68) & 0x80000000) != 0)
              {
                break;
              }

              v19 = *v5;
              v16 = **v5 - 1;
              v27 = v16;
              if (v22)
              {
                v20 += v23 + 1;
                v17 -= v23 + 1;
                if (v17)
                {
                  continue;
                }
              }

              v15 = v25;
              v6 = v26;
              goto LABEL_31;
            }

            result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromIndexBeginProc", 640, 34, 0, "inserting tree node");
            goto LABEL_19;
          }

LABEL_31:
          result = archiveTreeAppend(v6, v16, v15, v13, v8, -1, *(a2 + 4));
          if ((result & 0x80000000) == 0)
          {
            *(v5 + 8) = *v6 - 1;
            return result;
          }

          result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromIndexBeginProc", 650, 34, 0, "inserting tree node");
          goto LABEL_19;
        }

        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromIndexBeginProc", 624, 34, 0, "looking up parent path failed");
      }

      else
      {
LABEL_16:
        if ((archiveTreeFindPath(v6, "", &v27) & 0x80000000) == 0)
        {
          v15 = __dst;
          v16 = v27;
          goto LABEL_31;
        }

        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromIndexBeginProc", 629, 34, 0, "looking up parent path failed");
      }
    }

LABEL_19:
    *(v5 + 12) = 0;
  }

  return result;
}

uint64_t archiveTreeSort(_DWORD *a1)
{
  v28 = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    if ((archiveTreeSortStringTable(a1) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeSort", 510, 34, 0, "sort string table");
    }

    else
    {
      if ((archiveTreeUpdateDepth(a1) & 0x80000000) == 0)
      {
        v2 = calloc(*a1, 4uLL);
        v3 = v2;
        if (v2)
        {
          if (*a1)
          {
            v4 = 0;
            do
            {
              v2[v4] = v4;
              ++v4;
              v5 = *a1;
            }

            while (v4 < v5);
          }

          else
          {
            v5 = 0;
          }

          qsort_r(v2, v5, 4uLL, a1, archiveTreeCompareNodesLexProc);
          v8 = *a1;
          if (v8)
          {
            v9 = 0;
            v10 = 0;
            v11 = v3 - 1;
            while (v9)
            {
              v12 = v11[v9];
              v13 = v3[v9];
              if (v12 != v13)
              {
                v14 = v3[v9];
                while (v14 != -1)
                {
                  if (v12 == -1)
                  {
                    break;
                  }

                  v15 = *(a1 + 1);
                  v16 = (v15 + 56 * v12);
                  v17 = (v15 + 56 * v14);
                  if (v16[3] != v17[3])
                  {
                    break;
                  }

                  v12 = *v16;
                  v14 = *v17;
                  if (v12 == v14)
                  {
                    goto LABEL_24;
                  }
                }

                goto LABEL_26;
              }

LABEL_24:
              ArchiveTreeNodePath(a1, v13, v27, 0x400uLL);
              ArchiveTreeNodePath(a1, v11[v9], v26, 0x400uLL);
              *(*(a1 + 1) + 56 * v3[v9] + 48) = v10 - 1;
              v8 = *a1;
LABEL_27:
              if (++v9 >= v8)
              {
                goto LABEL_30;
              }
            }

            v13 = *v3;
LABEL_26:
            *(*(a1 + 1) + 56 * v13 + 48) = v10;
            v10 = (v10 + 1);
            goto LABEL_27;
          }

          v10 = 0;
LABEL_30:
          if ((archiveTreeRemapNodes(a1, v10) & 0x80000000) != 0)
          {
            v20 = "remapping nodes";
            v21 = 544;
          }

          else if ((archiveTreeUpdateDepth(a1) & 0x80000000) != 0)
          {
            v20 = "storing depth in AUX";
            v21 = 547;
          }

          else
          {
            if (*a1)
            {
              v18 = 0;
              do
              {
                v3[v18] = v18;
                ++v18;
                v19 = *a1;
              }

              while (v18 < v19);
            }

            else
            {
              v19 = 0;
            }

            qsort_r(v3, v19, 4uLL, a1, archiveTreeCompareNodesStrProc);
            v22 = *a1;
            if (v22)
            {
              v23 = 0;
              v24 = *(a1 + 1);
              do
              {
                *(v24 + 56 * v3[v23] + 48) = v23;
                ++v23;
              }

              while (v22 != v23);
            }

            if ((archiveTreeRemapNodes(a1, v10) & 0x80000000) == 0)
            {
              v6 = 0;
LABEL_47:
              free(v3);
              return v6;
            }

            v20 = "remapping nodes";
            v21 = 559;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeSort", v21, 34, 0, v20);
        }

        else
        {
          v7 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeSort", 517, 34, v7, "malloc");
        }

LABEL_46:
        v6 = 0xFFFFFFFFLL;
        goto LABEL_47;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeSort", 513, 34, 0, "store AUX in depth");
    }

    v3 = 0;
    goto LABEL_46;
  }

  return 0;
}

size_t ArchiveTreeNodePath(uint64_t a1, unsigned int a2, uint64_t a3, size_t a4)
{
  if (a2 == -1 || *a1 <= a2)
  {
    result = 0;
LABEL_8:
    *(a3 + result) = 0;
    return result;
  }

  v8 = ArchiveTreeNodePath(a1, *(*(a1 + 8) + 56 * a2), a3, a4);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = *(a1 + 16);
    v10 = *(v9 + 32);
    v11 = *(v9 + 8) + 16 * *(*(a1 + 8) + 56 * a2 + 12);
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v8)
    {
      v14 = v8 + 1;
      if (v8 + 1 + v13 < a4)
      {
        *(a3 + v8) = 47;
LABEL_11:
        memcpy((a3 + v14), (v10 + v12), v13);
        result = v14 + v13;
        goto LABEL_8;
      }
    }

    else if (v13 < a4)
    {
      v14 = 0;
      goto LABEL_11;
    }
  }

  return -1;
}

unsigned int *ArchiveTreeCreateFromArchive(uint64_t a1, uint64_t a2, int a3)
{
  DefaultNThreads = a3;
  v18 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v17, 0, 512);
  v6 = archiveTreeCreate();
  if (v6)
  {
    bzero(v17 + 8, 0x428uLL);
    DWORD2(v17[0]) = 1;
    *&v17[0] = v6;
    *(&v11 + 1) = a1;
    *&v12 = 0;
    LODWORD(v11) = 0;
    DWORD1(v11) = DefaultNThreads;
    *(&v12 + 1) = a2;
    *&v13 = archiveTreeFromArchiveBeginProc;
    *&v15 = archiveTreeFromArchiveEndProc;
    *(&v13 + 1) = archiveTreeFromArchiveBlobProc;
    *&v14 = archiveTreeFromArchivePayloadProc;
    *(&v14 + 1) = archiveTreeFromArchivePaddingProc;
    *(&v15 + 1) = archiveTreeFromArchivePaddingProc;
    v16 = v17;
    if (ParallelArchiveRead(&v11) || !DWORD2(v17[0]))
    {
      v7 = "parsing archive";
      v8 = 1292;
    }

    else
    {
      if (!archiveTreeSort(v6))
      {
        archiveTreeUpdateChilds(v6);
        return v6;
      }

      v7 = "sorting tree";
      v8 = 1295;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateFromArchive", v8, 34, 0, v7, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    v9 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateFromArchive", 1274, 34, v9, "archive tree creation", v11, v12, v13, v14, v15, v16);
  }

  ArchiveTreeDestroy(v6);
  return 0;
}

char *archiveTreeFromArchiveBeginProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 4);
  *(a1 + 48) = 0;
  result = (a1 + 48);
  v8 = *(result - 4);
  *(result - 4) = v8 + a6;
  *(result - 3) = v8;
  *(result - 2) = 0;
  *(result - 1) = v6;
  if ((*(a2 + 1) & 0x80) != 0)
  {
    return strlcpy(result, (a2 + 144), 0x400uLL);
  }

  return result;
}

uint64_t archiveTreeFromArchiveEndProc(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) - v1;
  *(result + 32) = v2;
  v3 = *(result + 44);
  if (v3 != 77)
  {
    v4 = result;
    v5 = (result + 48);
    v6 = strlen((result + 48));
    v7 = v6;
    v16 = -1;
    if (v6 >= 2)
    {
      if (*v5 == 12078)
      {
        v5 = (v4 + 50);
        v7 = v6 - 2;
        if (v6 == 2)
        {
          goto LABEL_9;
        }
      }

LABEL_12:
      v8 = strrchr(v5, 47);
      if (v8)
      {
        v9 = v8;
        v10 = v8 + 1;
        if (v8 == v5)
        {
          goto LABEL_17;
        }

        *v8 = 0;
        if ((archiveTreeFindPath(*v4, v5, &v16) & 0x80000000) == 0)
        {
          *v9 = 47;
          goto LABEL_17;
        }

        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromArchiveEndProc", 712, 34, 0, "looking up parent node");
      }

      else
      {
        v10 = v5;
        if ((archiveTreeFindPath(*v4, "", &v16) & 0x80000000) == 0)
        {
LABEL_17:
          if (v16 == -1)
          {
            v12 = -1;
            while (1)
            {
              v13 = strchr(v5, 47);
              v14 = *v4;
              if (!v13)
              {
                break;
              }

              v15 = v13 - v5;
              result = archiveTreeAppend(v14, v12, v5, v13 - v5, -1, -1, 68);
              if ((result & 0x80000000) != 0)
              {
                result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromArchiveEndProc", 741, 34, 0, "inserting tree node");
                goto LABEL_30;
              }

              v5 += v15 + 1;
              v12 = **v4 - 1;
              v16 = v12;
              v7 -= v15 + 1;
              if (!v7)
              {
                return result;
              }
            }

            result = archiveTreeAppend(v14, v12, v5, v7, *(v4 + 24), *(v4 + 16) - *(v4 + 24), *(v4 + 44));
            if ((result & 0x80000000) == 0)
            {
              return result;
            }

            result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromArchiveEndProc", 748, 34, 0, "inserting tree node");
          }

          else
          {
            v11 = strlen(v10);
            result = archiveTreeAppend(*v4, v16, v10, v11, *(v4 + 24), *(v4 + 32), *(v4 + 44));
            if ((result & 0x80000000) == 0)
            {
              return result;
            }

            result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromArchiveEndProc", 725, 34, 0, "inserting tree node");
          }

          goto LABEL_30;
        }

        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromArchiveEndProc", 719, 34, 0, "looking up parent node");
      }

LABEL_30:
      *(v4 + 8) = 0;
      return result;
    }

    if (v6 == 1)
    {
      if (*(v4 + 48) != 46)
      {
        v7 = 1;
        goto LABEL_12;
      }

      v5 = (v4 + 49);
    }

LABEL_9:
    result = archiveTreeAppend(*v4, -1, v5, 0, v1, v2, v3);
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromArchiveEndProc", 698, 34, 0, "inserting root node");
    goto LABEL_30;
  }

  return result;
}

_DWORD *archiveTreeFromArchiveBlobProc(_DWORD *result, _DWORD *a2, size_t a3)
{
  v3 = result;
  v4 = 10;
  if (!a3 || result[11] != 77)
  {
    goto LABEL_8;
  }

  if ((*a2 & 0xDFDFDF) != 0x464159)
  {
    v4 = 10;
    goto LABEL_8;
  }

  v5 = *(*result + 24);
  result[10] = v5 == 0;
  if (!v5)
  {
    result = MemBufferCreate(a3);
    *(*v3 + 24) = result;
    if (!result)
    {
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromArchiveBlobProc", 764, 34, 0, "allocating YAF buffer");
      v4 = 2;
LABEL_8:
      v3[v4] = 0;
    }
  }

  return result;
}

void *archiveTreeFromArchivePayloadProc(void *result, const void *a2, size_t a3)
{
  result[2] += a3;
  if (*(result + 10))
  {
    v4 = result;
    result = *(*result + 24);
    if (result)
    {
      result = MemBufferFillFromBuffer(result, a3, a2);
      if (result != a3)
      {
        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFromArchivePayloadProc", 775, 34, 0, "collecting YAF buffer");
        *(v4 + 2) = 0;
      }
    }
  }

  return result;
}

unsigned int *ArchiveTreeCreateFromDirectory(char *a1, const __CFArray *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  DefaultNThreads = a5;
  v38 = *MEMORY[0x29EDCA608];
  if (!a5)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v12 = archiveTreeCreate();
  v13 = v12;
  if (!v12)
  {
    v19 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateFromDirectory", 1323, 34, v19, "archive tree creation");
LABEL_31:
    ArchiveTreeDestroy(v13);
    return 0;
  }

  if (a2)
  {
    bzero(buffer, 0x400uLL);
    bzero(v27, 0x800uLL);
    Count = CFArrayGetCount(a2);
    if (Count)
    {
      v15 = Count;
      v16 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v16);
        if (!CFStringGetCString(ValueAtIndex, buffer, 1024, 0x8000100u))
        {
          v20 = "getting string from includePaths";
          v21 = 1341;
          goto LABEL_30;
        }

        if ((concatPath(v27, 0x800uLL, a1, buffer) & 0x80000000) != 0)
        {
          v20 = "building full path from includePaths";
          v21 = 1342;
          goto LABEL_30;
        }

        memset(&v26, 0, sizeof(v26));
        if (stat(v27, &v26) || (v26.st_mode & 0xF000) != 0x4000)
        {
          v25 = v27;
          v20 = "include path doesn't exist, or is not a directory: %s";
          v21 = 1346;
          goto LABEL_30;
        }

        v18 = strlen(buffer);
        if (archiveTreeAppend(v13, -1, buffer, v18, -1, -1, 68))
        {
          break;
        }

        if (v15 == ++v16)
        {
          goto LABEL_17;
        }
      }

      v20 = "ArchiveTree append";
      v21 = 1351;
      goto LABEL_30;
    }
  }

  else if (archiveTreeAppend(v12, -1, "", 0, -1, -1, 68))
  {
    v20 = "ArchiveTree append";
    v21 = 1330;
LABEL_30:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeCreateFromDirectory", v21, 34, 0, v20, v25);
    goto LABEL_31;
  }

LABEL_17:
  v22 = *v13;
  if (*v13)
  {
    v23 = 0;
    while (1)
    {
      v33 = v23;
      v34 = v22;
      v23 = v22;
      v35 = 0u;
      v36 = 0u;
      *v27 = a6;
      v28 = DefaultNThreads;
      v29 = a1;
      v30 = a3;
      v31 = a4;
      v32 = v13;
      if (expandDirRange(v27))
      {
        break;
      }

      v22 = *v13;
      if (v23 >= *v13)
      {
        goto LABEL_21;
      }
    }

    v20 = "expanding archive tree range";
    v21 = 1370;
    goto LABEL_30;
  }

LABEL_21:
  v35 = 0u;
  v36 = 0u;
  *v27 = a6;
  v28 = DefaultNThreads;
  v29 = a1;
  v30 = a3;
  v31 = a4;
  v32 = v13;
  v33 = 0;
  v34 = v22;
  LODWORD(v35) = 1;
  if (expandDirRange(v27))
  {
    v20 = "expanding archive tree range";
    v21 = 1390;
    goto LABEL_30;
  }

  if (archiveTreeSort(v13))
  {
    v20 = "sorting tree";
    v21 = 1394;
    goto LABEL_30;
  }

  archiveTreeUpdateChilds(v13);
  if (a6 > 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%12u entries in archive tree\n", *v13);
  }

  return v13;
}

uint64_t expandDirRange(uint64_t a1)
{
  v1 = *(a1 + 44) - *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  if ((v1 + 999) < 0x3E8)
  {
    v4 = 1;
  }

  else
  {
    v4 = (v1 + 999) / 0x3E8u;
  }

  v6 = *a1;
  v5 = *(a1 + 4);
  *(a1 + 56) = 0;
  v7 = (a1 + 56);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if ((v1 + 999) / 0x3E8u <= v5)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  v9 = (v1 + v8 - 1) / v8;
  if (v6 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "Running %u threads to expand %u nodes (%u per thread)\n", v8, v1, (v1 + v8 - 1) / v8);
  }

  if (v8 == 1)
  {
    v10 = archiveTreeCreate();
    *v7 = v10;
    if (v10)
    {
      expandDirRangeThreadProc();
      if (*(a1 + 72))
      {
        if (!archiveTreeAppendTree(*(a1 + 32), *(a1 + 56), 0))
        {
          v2 = 0;
          goto LABEL_50;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRange", 1003, 34, 0, "append expandDirRange output to main tree");
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRange", 1000, 34, 0, "expandDirRange");
      }
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRange", 996, 34, 0, "archive tree creation");
    }

LABEL_49:
    v2 = 0xFFFFFFFFLL;
    goto LABEL_50;
  }

  v11 = calloc(v8, 0x50uLL);
  if (!v11)
  {
    v28 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRange", 1009, 34, v28, "malloc");
    goto LABEL_49;
  }

  v12 = v11;
  v13 = *(a1 + 40);
  v14 = v8;
  v15 = v11 + 56;
  v16 = v14;
  do
  {
    if (v13 + v9 >= *(a1 + 44))
    {
      v17 = *(a1 + 44);
    }

    else
    {
      v17 = v13 + v9;
    }

    v18 = *(a1 + 48);
    v19 = *(a1 + 64);
    v20 = *(a1 + 16);
    *(v15 - 24) = *(a1 + 32);
    *(v15 - 56) = *a1;
    *(v15 + 8) = v19;
    *(v15 - 8) = v18;
    *(v15 - 40) = v20;
    *(v15 - 4) = v13;
    *(v15 - 3) = v17;
    v21 = archiveTreeCreate();
    *v15 = v21;
    if (!v21)
    {
      v29 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRange", 1022, 34, *v29, "malloc");
      v2 = 0xFFFFFFFFLL;
      goto LABEL_45;
    }

    v15 += 80;
    v13 = v17;
    --v16;
  }

  while (v16);
  v22 = 1;
  v23 = v14;
  v24 = v12;
  do
  {
    if (createThread((v24 + 64), expandDirRangeThreadProc, v24, 0))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRange", 1030, 34, 0, "create expandDir thread");
      v22 = 0;
    }

    v24 += 80;
    --v23;
  }

  while (v23);
  v25 = v12 + 72;
  v26 = v14;
  do
  {
    v27 = *(v25 - 1);
    if (!v27)
    {
      goto LABEL_33;
    }

    if (joinThread(v27))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRange", 1037, 34, 0, "join expandDir thread");
LABEL_31:
      v22 = 0;
      goto LABEL_33;
    }

    if (!*v25)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRange", 1038, 34, 0, "expandDirRange");
      goto LABEL_31;
    }

LABEL_33:
    v25 += 20;
    --v26;
  }

  while (v26);
  v30 = (v12 + 56);
  v31 = v14;
  do
  {
    if (archiveTreeAppendTree(*(a1 + 32), *v30, 0))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRange", 1044, 34, 0, "append expandDirRange output to main tree");
      v22 = 0;
    }

    v30 += 10;
    --v31;
  }

  while (v31);
  if (v22)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

LABEL_45:
  v32 = 56;
  do
  {
    ArchiveTreeDestroy(*&v12[v32]);
    v32 += 80;
    --v14;
  }

  while (v14);
  free(v12);
LABEL_50:
  ArchiveTreeDestroy(*v7);
  *v7 = 0;
  return v2;
}

uint64_t ArchiveTreeMergeAndDestroy(uint64_t a1, unsigned int *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = *a1;
  v7 = *a2;
  v8 = calloc((v7 + *a1), 0x38uLL);
  if (!v8)
  {
    v40 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeMergeAndDestroy", 1435, 34, v40, "malloc");
    goto LABEL_43;
  }

  if (v7)
  {
    v9 = (v7 + 3) & 0x1FFFFFFFCLL;
    v10 = vdupq_n_s64(v7 - 1);
    v11 = xmmword_2980690D0;
    v12 = xmmword_2980690E0;
    v13 = (*(a2 + 1) + 152);
    v14 = vdupq_n_s64(4uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v10, v12));
      if (vuzp1_s16(v15, *v10.i8).u8[0])
      {
        *(v13 - 28) = a3;
      }

      if (vuzp1_s16(v15, *&v10).i8[2])
      {
        *(v13 - 14) = a3;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11))).i32[1])
      {
        *v13 = a3;
        v13[14] = a3;
      }

      v11 = vaddq_s64(v11, v14);
      v12 = vaddq_s64(v12, v14);
      v13 += 56;
      v9 -= 4;
    }

    while (v9);
  }

  if ((archiveTreeAppendTree(a1, a2, 1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeMergeAndDestroy", 1441, 34, 0, "merging trees");
    goto LABEL_43;
  }

  if ((archiveTreeSortStringTable(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeMergeAndDestroy", 1444, 34, 0, "sorting string table");
    goto LABEL_43;
  }

  if ((archiveTreeUpdateDepth(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeMergeAndDestroy", 1447, 34, 0, "storing node depth in AUX");
    goto LABEL_43;
  }

  v47 = v7 + v6;
  v16 = 0;
  if (v6 | v7)
  {
    v17 = 0;
    v18 = 0;
    v19 = v7 != 0;
    v20 = v6 != 0;
    while (1)
    {
      if (v19)
      {
        v21 = v17 + v6;
        if (!v20)
        {
          goto LABEL_21;
        }

        v22 = archiveTreeCompareNodesStrRec(a1, v18, v17 + v6, 0, 0);
        if ((v22 & 0x80000000) == 0)
        {
          break;
        }
      }

      v28 = *(a1 + 8) + 56 * v18;
      *(v28 + 48) = v16;
      v29 = &v8[14 * v16];
      v30 = *v28;
      v31 = *(v28 + 16);
      v32 = *(v28 + 32);
      *(v29 + 6) = *(v28 + 48);
      *(v29 + 1) = v31;
      *(v29 + 2) = v32;
      *v29 = v30;
      ++v18;
LABEL_24:
      ++v16;
      v19 = v17 < v7;
      v20 = v18 < v6;
      if (v18 >= v6 && v17 >= v7)
      {
        goto LABEL_31;
      }
    }

    if (v22)
    {
LABEL_21:
      v23 = *(a1 + 8) + 56 * v21;
      *(v23 + 48) = v16;
      v24 = &v8[14 * v16];
      v25 = *v23;
      v26 = *(v23 + 16);
      v27 = *(v23 + 32);
      *(v24 + 6) = *(v23 + 48);
      *(v24 + 1) = v26;
      *(v24 + 2) = v27;
      *v24 = v25;
    }

    else
    {
      v33 = *(a1 + 8);
      v34 = (v33 + 56 * v18);
      *(v34 + 12) = v16;
      *(v33 + 56 * v21 + 48) = v16;
      v35 = &v8[14 * v16];
      v36 = *v34;
      v37 = v34[1];
      v38 = v34[2];
      *(v35 + 6) = *(v34 + 6);
      *(v35 + 1) = v37;
      *(v35 + 2) = v38;
      *v35 = v36;
      ++v18;
    }

    ++v17;
    goto LABEL_24;
  }

LABEL_31:
  v41 = *(a1 + 8);
  if (!v47)
  {
LABEL_39:
    free(v41);
    v39 = 0;
    *(a1 + 8) = v8;
    *a1 = v16;
    *(a1 + 4) = v47;
    v8 = 0;
    goto LABEL_44;
  }

  v42 = v7 + v6;
  v43 = *(a1 + 8);
  while (1)
  {
    v44 = v43[12];
    if (v44 != -1)
    {
      break;
    }

LABEL_38:
    v43 += 14;
    if (!--v42)
    {
      goto LABEL_39;
    }
  }

  if (v44 < v16)
  {
    v45 = *v43;
    if (*v43 != -1)
    {
      v45 = *(v41 + 14 * v45 + 12);
    }

    v8[14 * v44] = v45;
    goto LABEL_38;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeMergeAndDestroy", 1490, 34, 0, "invalid new index");
LABEL_43:
  v39 = 0xFFFFFFFFLL;
LABEL_44:
  free(v8);
  ArchiveTreeDestroy(a2);
  return v39;
}

uint64_t archiveTreeAppendTree(unsigned int *a1, unsigned int *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  if (!*a2)
  {
    return 0;
  }

  if (archiveTreeReserve(a1, *a1 + *a2))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeAppendTree", 164, 34, 0, "increasing archive tree storage");
    return 0xFFFFFFFFLL;
  }

  v13 = 0;
  if ((StringTableAppendTable(*(a1 + 2), *(a2 + 2), &v13) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeAppendTree", 168, 34, 0, "merging string tables");
    return 0xFFFFFFFFLL;
  }

  memcpy((*(a1 + 1) + 56 * *a1), *(a2 + 1), 56 * *a2);
  v7 = *a2;
  v8 = *a1;
  if (*a2)
  {
    v9 = *(a1 + 1);
    v10 = *a2;
    v11 = *a1;
    do
    {
      v12 = (v9 + 56 * v11);
      v12[3] += v13;
      if (a3)
      {
        if (*v12 != -1)
        {
          *v12 += v8;
        }
      }

      ++v11;
      --v10;
    }

    while (v10);
  }

  result = 0;
  *a1 = v8 + v7;
  return result;
}

uint64_t archiveTreeSortStringTable(unsigned int **a1)
{
  if (!*a1)
  {
    return 0;
  }

  v7 = 0;
  v2 = StringTableSort(a1[2], &v7);
  if (v2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeSortStringTable", 397, 34, 0, "string table sorting");
    v3 = v7;
  }

  else
  {
    v5 = *a1;
    v3 = v7;
    if (v5)
    {
      v6 = a1[1] + 3;
      do
      {
        *v6 = v3[*v6];
        v6 += 14;
        --v5;
      }

      while (v5);
    }
  }

  free(v3);
  if (v2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t archiveTreeUpdateDepth(unsigned int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0;
  }

  v3 = (v1 + 3) & 0x1FFFFFFFCLL;
  v4 = vdupq_n_s64(v1 - 1);
  v5 = xmmword_2980690D0;
  v6 = xmmword_2980690E0;
  v7 = (*(a1 + 1) + 156);
  v8 = vdupq_n_s64(4uLL);
  do
  {
    v9 = vmovn_s64(vcgeq_u64(v4, v6));
    if (vuzp1_s16(v9, *v4.i8).u8[0])
    {
      *(v7 - 28) = -1;
    }

    if (vuzp1_s16(v9, *&v4).i8[2])
    {
      *(v7 - 14) = -1;
    }

    if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
    {
      *v7 = -1;
      v7[14] = -1;
    }

    v5 = vaddq_s64(v5, v8);
    v6 = vaddq_s64(v6, v8);
    v7 += 56;
    v3 -= 4;
  }

  while (v3);
  v10 = 0;
  while ((archiveTreeUpdateNodeDepth(a1, v10) & 0x80000000) == 0)
  {
    if (++v10 >= *a1)
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeUpdateDepth", 218, 34, 0, "update node depth");
  return 0xFFFFFFFFLL;
}

uint64_t ArchiveTreePrune(unsigned int *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((archiveTreeUpdateDepth(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreePrune", 1520, 34, 0, "updating depth field");
    return 0xFFFFFFFFLL;
  }

  else
  {
    if (*a1)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = *(a1 + 1);
      v8 = -1;
      do
      {
        v9 = *(v7 + v4 + 44);
        if (v9 == a2)
        {
          if (v8 != -1)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreePrune", 1530, 34, 0, "invalid prune operation: more than one node at depth %u");
            return 0xFFFFFFFFLL;
          }

          *(v7 + v4) = -1;
          if ((StringTableAppend(*(a1 + 2), "", 0, (v7 + v4 + 12)) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreePrune", 1536, 34, 0, "inserting new root name string");
            return 0xFFFFFFFFLL;
          }

          v7 = *(a1 + 1);
          v9 = *(v7 + v4 + 44);
          v8 = v5;
        }

        v10 = v9 >= a2;
        if (v9 < a2)
        {
          v11 = -1;
        }

        else
        {
          v11 = v6;
        }

        if (v10)
        {
          ++v6;
        }

        *(v7 + v4 + 48) = v11;
        ++v5;
        v12 = *a1;
        v4 += 56;
      }

      while (v5 < v12);
      if (*a1)
      {
        v13 = *(a1 + 1);
        v14 = v13;
        v15 = *a1;
        do
        {
          if (v14[12] != -1 && *v14 != -1)
          {
            *v14 = v13[14 * *v14 + 12];
          }

          v14 += 14;
          --v15;
        }

        while (v15);
        v16 = 0;
        for (i = 0; i < v12; ++i)
        {
          v18 = *(a1 + 1);
          v19 = (v18 + v16);
          v20 = *(v18 + v16 + 48);
          if (v20 != -1)
          {
            if (v20 >= v6 || i < v20)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreePackNodes", 424, 34, 0, "invalid new index");
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreePrune", 1543, 34, 0, "remapping tree nodes");
              return 0xFFFFFFFFLL;
            }

            if (i > v20)
            {
              v22 = v18 + 56 * v20;
              v23 = *v19;
              v24 = v19[1];
              v25 = v19[2];
              *(v22 + 48) = *(v19 + 6);
              *(v22 + 16) = v24;
              *(v22 + 32) = v25;
              *v22 = v23;
              v12 = *a1;
            }
          }

          v16 += 56;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    result = 0;
    *a1 = v6;
  }

  return result;
}

size_t ArchiveTreeInsert(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  result = strlen(__s);
  if (result)
  {
    v5 = result;
    while (__s[v5 - 1] == 47)
    {
      if (!--v5)
      {
        return 0;
      }
    }

    if ((archiveTreeUpdateDepth(a1) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeInsert", 1572, 34, 0, "updating tree depth");
      return 0xFFFFFFFFLL;
    }

    if (!*a1 || (v6 = *(a1 + 8), v6[11]) || *v6 != -1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeInsert", 1575, 34, 0, "invalid input for ArchiveTreeInsert");
      return 0xFFFFFFFFLL;
    }

    if ((archiveTreeAppend(a1, -1, "", 0, -1, -1, 68) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeInsert", 1579, 34, 0, "inserting root node");
      return 0xFFFFFFFFLL;
    }

    v7 = 0;
    v8 = 0;
    v9 = *a1 - 1;
    while (1)
    {
      if (__s[v7] && __s[v7] != 47)
      {
        ++v7;
      }

      else
      {
        if (v7 != v8)
        {
          if (v7 == v5)
          {
            if ((StringTableAppend(*(a1 + 16), &__s[v8], v7 - v8, (*(a1 + 8) + 12)) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeInsert", 1596, 34, 0, "inserting string");
              return 0xFFFFFFFFLL;
            }

            **(a1 + 8) = v9;
          }

          else
          {
            if ((archiveTreeAppend(a1, v9, &__s[v8], v7 - v8, -1, -1, 68) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "ArchiveTreeInsert", 1603, 34, 0, "inserting new node");
              return 0xFFFFFFFFLL;
            }

            v9 = *a1 - 1;
          }
        }

        v8 = ++v7;
      }

      if (v7 > v5)
      {
        archiveTreeSort(a1);
        return 0;
      }
    }
  }

  return result;
}

unsigned int *ArchiveTreeSize(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

size_t ArchiveTreeYAF(size_t result, _BYTE *a2, size_t a3)
{
  *a2 = 0;
  if (result)
  {
    v3 = result;
    result = *(result + 24);
    if (result)
    {
      DataPtr = MemBufferGetDataPtr(result);
      DataSize = MemBufferGetDataSize(*(v3 + 24));
      if (DataSize + 1 <= a3)
      {
        v8 = DataSize;
        memcpy(a2, DataPtr, DataSize);
        a2[v8] = 0;

        return strlen(a2);
      }

      else
      {
        return -1;
      }
    }
  }

  return result;
}

uint64_t ArchiveTreeNodeEntryType(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 8) + 56 * a2 + 16);
  }
}

uint64_t ArchiveTreeNodeArchiveID(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(*(a1 + 8) + 56 * a2 + 40);
  }
}

uint64_t ArchiveTreeNodeSegment(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  if (*a1 <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    *a3 = *(*(a1 + 8) + 56 * a2 + 24);
  }

  v4 = 0;
  if (a4)
  {
    *a4 = *(*(a1 + 8) + 56 * a2 + 32);
  }

  return v4;
}

uint64_t archiveTreeReserve(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 4);
  if (v2 >= a2)
  {
    return 0;
  }

  if (v2)
  {
    v4 = v2 + (v2 >> 1);
  }

  else
  {
    v4 = 256;
  }

  if (v4 <= a2)
  {
    v4 = a2;
  }

  *(a1 + 4) = v4;
  v5 = reallocf(*(a1 + 8), 56 * v4);
  *(a1 + 8) = v5;
  if (v5)
  {
    return 0;
  }

  v7 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeReserve", 122, 34, *v7, "malloc");
  *a1 = 0;
  return 0xFFFFFFFFLL;
}

uint64_t archiveTreeFindPath(uint64_t a1, const char *a2, unsigned int *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  bzero(__s1, 0x400uLL);
  if (!*a1)
  {
    return 0;
  }

  v6 = *a1 - 1;
  while (1)
  {
    if ((ArchiveTreeNodePath(a1, v6, __s1, 0x400uLL) & 0x8000000000000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFindPath", 243, 34, 0, "invalid path");
      return 0xFFFFFFFFLL;
    }

    v7 = strcmp(__s1, a2);
    if (!v7)
    {
      v10 = v6;
LABEL_21:
      if (a3)
      {
        *a3 = v10;
      }

      return 1;
    }

    if (v7 < 0)
    {
      break;
    }

    v6 = *(*(a1 + 8) + 56 * v6);
    if (v6 == -1)
    {
      v6 = 0;
      break;
    }
  }

  v8 = *a1 - v6;
  if (v8 < 2)
  {
    return 0;
  }

  v9 = v8 >> 1;
  while (1)
  {
    v10 = v6 + v9;
    if (v6 + v9 < *a1)
    {
      break;
    }

    v9 >>= 1;
LABEL_16:
    if (!v9)
    {
      return 0;
    }
  }

  if ((ArchiveTreeNodePath(a1, v6 + v9, __s1, 0x400uLL) & 0x8000000000000000) == 0)
  {
    v11 = strcmp(__s1, a2);
    if (!v11)
    {
      goto LABEL_21;
    }

    v9 >>= v11 > 0;
    if (v11 <= 0)
    {
      v6 = v10;
    }

    goto LABEL_16;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeFindPath", 262, 34, 0, "invalid path");
  return 0xFFFFFFFFLL;
}

uint64_t archiveTreeRemapNodes(unsigned int *a1, size_t __count)
{
  v2 = __count;
  v18 = *MEMORY[0x29EDCA608];
  v4 = __count;
  v5 = calloc(__count, 0x38uLL);
  v6 = v5;
  if (v5)
  {
    if (v2)
    {
      v7 = v5 + 12;
      do
      {
        *(v7 - 3) = -1;
        *v7 = -1;
        *(v7 + 12) = -1;
        *(v7 + 20) = -1;
        v7 += 56;
        --v4;
      }

      while (v4);
    }

    v8 = *a1;
    if (v8)
    {
      v9 = *(a1 + 1);
      v10 = v9 + 24;
      do
      {
        v11 = *(v10 + 24);
        if (v11 > v2)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeRemapNodes", 458, 34, 0, "invalid new node index");
          goto LABEL_25;
        }

        v12 = &v5[56 * v11];
        if (!*(v12 + 4))
        {
          *(v12 + 4) = *(v10 - 8);
        }

        if (*(v12 + 3) == -1)
        {
          *(v12 + 3) = *v10;
        }

        if (*(v12 + 4) == -1)
        {
          *(v12 + 4) = *(v10 + 8);
        }

        if (*(v12 + 3) == -1)
        {
          *(v12 + 3) = *(v10 - 12);
        }

        if (*v12 == -1)
        {
          v13 = *(v10 - 24);
          if (v13 != -1)
          {
            *v12 = *(v9 + 56 * v13 + 48);
          }
        }

        v10 += 56;
        --v8;
      }

      while (v8);
      v14 = 0;
      do
      {
        ArchiveTreeNodePath(a1, v14++, v17, 0x400uLL);
      }

      while (v14 < *a1);
    }

    free(*(a1 + 1));
    result = 0;
    *(a1 + 1) = v6;
    *a1 = v2;
    a1[1] = v2;
  }

  else
  {
    v16 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeRemapNodes", 443, 34, v16, "malloc");
LABEL_25:
    free(v6);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t archiveTreeCompareNodesLex(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a2 == a3)
  {
    v3 = 0;
LABEL_8:
    LODWORD(result) = 0;
    goto LABEL_24;
  }

  v3 = 0;
  while (1)
  {
    if (a2 == -1 || a3 == -1)
    {
      if (a2 == -1)
      {
        LODWORD(result) = -1;
      }

      else
      {
        LODWORD(result) = 1;
      }

      goto LABEL_24;
    }

    v7 = *(a1 + 8);
    v8 = (v7 + 56 * a2);
    v9 = v8[11];
    v10 = (v7 + 56 * a3);
    v11 = v10[11];
    if (v9 <= v11)
    {
      break;
    }

    a2 = *v8;
    v3 = 1;
    if (a2 == a3)
    {
      goto LABEL_8;
    }
  }

  if (v11 <= v9)
  {
    v15 = a2;
    ArchiveTreeNodePath(a1, a2, v21, 0x400uLL);
    ArchiveTreeNodePath(a1, a3, v20, 0x400uLL);
    if (!v9 || (LODWORD(result) = archiveTreeCompareNodesLex(a1, *(*(a1 + 8) + 56 * v15), *(*(a1 + 8) + 56 * a3)), !result))
    {
      v16 = *(a1 + 8);
      v17 = *(v16 + 56 * v15 + 12);
      LODWORD(v16) = *(v16 + 56 * a3 + 12);
      v18 = v17 >= v16;
      v19 = v17 > v16;
      if (v18)
      {
        LODWORD(result) = v19;
      }

      else
      {
        LODWORD(result) = -1;
      }
    }

LABEL_24:
    if (v3 <= result)
    {
      return result;
    }

    else
    {
      return v3;
    }
  }

  v13 = archiveTreeCompareNodesLex(a1, a2, *v10);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1;
  }

  if (v3 <= v14)
  {
    return v14;
  }

  else
  {
    return v3;
  }
}

uint64_t expandDirRangeThreadProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v33 = *MEMORY[0x29EDCA608];
  bzero(__s, 0x400uLL);
  *(v0 + 72) = 1;
  v1 = *(v0 + 40);
  if (v1 < *(v0 + 44))
  {
    v2 = "skip dataless dir: %s";
    while (1)
    {
      if ((ArchiveTreeNodePath(*(v0 + 32), v1, __s, 0x400uLL) & 0x8000000000000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRangeThreadProc", 960, 34, 0, "path too long");
        goto LABEL_73;
      }

      v3 = *(v0 + 56);
      v4 = *(v0 + 48);
      v25 = *(v0 + 24);
      v26 = *(v0 + 16);
      v5 = strlen(*(v0 + 8));
      v6 = strlen(__s);
      __memcpy_chk();
      v32[v5] = 0;
      if (v6)
      {
        if (v5 + v6 - 2047 <= 0xFFFFFFFFFFFFF7FFLL)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", 812, 34, 0, "path too long: %s/%s");
          goto LABEL_72;
        }

        v32[v5] = 47;
        memcpy(&v32[v5 + 1], __s, v6);
        v7 = v6 + v5 + 1;
        v32[v7] = 0;
      }

      else
      {
        v7 = v5;
      }

      memset(&v29, 0, sizeof(v29));
      if (lstat(v32, &v29) < 0)
      {
        v15 = *__error();
        v16 = "lstat %s";
        v17 = 822;
        goto LABEL_69;
      }

      if (statIsDataless(v29.st_flags))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", 828, 34, v2, v32);
        goto LABEL_61;
      }

      v23 = v4;
      v8 = v2;
      v9 = opendir(v32);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      memset(&v31, 0, 512);
      v28 = 0;
      if (!readdir_r(v9, &v31, &v28))
      {
        v24 = v7 + 1;
        v11 = &v32[v7];
        while (2)
        {
          if (!v28)
          {
            goto LABEL_60;
          }

          d_namlen = v31.d_namlen;
          if (v31.d_namlen == 1 && v31.d_name[0] == 46 || v31.d_namlen == 2 && v31.d_name[0] == 46 && v31.d_name[1] == 46)
          {
            goto LABEL_57;
          }

          v13 = v24 + v31.d_namlen;
          if (v13 >= 0x800)
          {
            v18 = "path too long";
            v19 = 865;
LABEL_67:
            v20 = 0;
            goto LABEL_71;
          }

          *v11 = 47;
          memcpy(v11 + 1, v31.d_name, d_namlen);
          v32[v13] = 0;
          memset(&v27, 0, sizeof(v27));
          if (lstat(v32, &v27))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", 872, 34, "stat failed: %s", v32);
            goto LABEL_57;
          }

          if ((v27.st_mode & 0xF000) == 0x4000 && v27.st_dev != v29.st_dev)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", 877, 34, "skip mounted dir: %s");
LABEL_32:
            if (v26)
            {
              v26(v25, &v32[v5 + 1], 0);
            }

            goto LABEL_57;
          }

          if (statIsDataless(v27.st_flags))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", 888, 34, "skip dataless: %s");
            goto LABEL_32;
          }

          if (v31.d_type > 5u)
          {
            if (v31.d_type > 9u)
            {
              if (v31.d_type == 10)
              {
                AAEntryType = 76;
              }

              else
              {
                if (v31.d_type != 12)
                {
                  goto LABEL_75;
                }

                AAEntryType = 83;
              }
            }

            else if (v31.d_type == 6)
            {
              AAEntryType = 66;
            }

            else
            {
              if (v31.d_type != 8)
              {
                goto LABEL_75;
              }

              AAEntryType = 70;
            }
          }

          else
          {
            if (v31.d_type <= 1u)
            {
              if (v31.d_type)
              {
                AAEntryType = 80;
              }

              else
              {
                AAEntryType = getAAEntryType(v27.st_mode);
                if (!AAEntryType)
                {
LABEL_75:
                  v22 = v32;
                  v18 = "invalid entry type: %s";
                  v19 = 910;
                  goto LABEL_67;
                }
              }

              goto LABEL_49;
            }

            if (v31.d_type != 2)
            {
              if (v31.d_type != 4)
              {
                goto LABEL_75;
              }

              AAEntryType = 68;
              goto LABEL_51;
            }

            AAEntryType = 67;
          }

LABEL_49:
          if (!v23 && AAEntryType != 68)
          {
            goto LABEL_57;
          }

LABEL_51:
          if ((v23 != 1 || AAEntryType != 68) && (!v26 || v26(v25, &v32[v5 + 1], AAEntryType) >= 1))
          {
            if (archiveTreeAppend(v3, v1, v31.d_name, d_namlen, -1, -1, AAEntryType))
            {
              v18 = "ArchiveTree append";
              v19 = 920;
              goto LABEL_67;
            }

            *v11 = 0;
          }

LABEL_57:
          if (readdir_r(v10, &v31, &v28))
          {
            break;
          }

          continue;
        }
      }

      if (*__error() != 11)
      {
        v20 = *__error();
        v18 = "readdir_r";
        v19 = 846;
LABEL_71:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", v19, 34, v20, v18, v22);
        closedir(v10);
        goto LABEL_72;
      }

      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", 845, 34, "readdir on dataless directory: %s", v32);
LABEL_60:
      closedir(v10);
      v2 = v8;
LABEL_61:
      if (++v1 >= *(v0 + 44))
      {
        return v0;
      }
    }

    v15 = *__error();
    v16 = "opendir %s";
    v17 = 835;
LABEL_69:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDir", v17, 34, v15, v16, v32);
LABEL_72:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "expandDirRangeThreadProc", 961, 34, 0, "expand directory");
LABEL_73:
    *(v0 + 72) = 0;
  }

  return v0;
}

uint64_t archiveTreeUpdateNodeDepth(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  v4 = (v3 + 56 * a2);
  if (v4[11] != -1)
  {
    return 0;
  }

  v7 = *v4;
  if (*v4 == -1)
  {
    v8 = v3 + 56 * a2;
    result = 0;
    if (*(*(*(a1 + 16) + 8) + 16 * v4[3] + 8))
    {
      *(v8 + 44) = 1;
    }

    else
    {
      *(v8 + 44) = 0;
    }
  }

  else if ((archiveTreeUpdateNodeDepth(a1, *v4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveTree.c", "archiveTreeUpdateNodeDepth", 198, 34, 0, "update parent depth");
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *(*(a1 + 8) + 56 * a2 + 44) = *(*(a1 + 8) + 56 * v7 + 44) + 1;
  }

  return result;
}

uint64_t archiveTreeCompareNodesStrRec(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  v7 = a3;
  v8 = a2;
  v9 = *(a1 + 8);
  v10 = *(v9 + 56 * a2 + 44);
  v11 = *(v9 + 56 * a3 + 44);
  if (v10 <= v11)
  {
    v12 = a4;
    if (v11 > v10)
    {
      do
      {
        LODWORD(v7) = *(v9 + 56 * v7);
        --v11;
      }

      while (v11 > v10);
      a5 = 47;
    }

    v11 = *(v9 + 56 * a2 + 44);
  }

  else
  {
    do
    {
      LODWORD(v8) = *(v9 + 56 * v8);
      --v10;
    }

    while (v10 > v11);
    v12 = 47;
  }

  if (v11 < 2 || (result = archiveTreeCompareNodesStrRec(a1, *(v9 + 56 * v8), *(v9 + 56 * v7), 47, 47), !result))
  {
    v14 = *(v9 + 56 * v8 + 12);
    v15 = *(a1 + 16);
    v16 = *(v15 + 8);
    v17 = *(v16 + 16 * v14 + 8);
    v18 = *(v9 + 56 * v7 + 12);
    v19 = *(v16 + 16 * v18 + 8);
    if (v17 == v19)
    {
      if (v14 < v18)
      {
        v20 = -1;
      }

      else
      {
        v20 = 1;
      }

      if (v14 == v18)
      {
        return (v12 - a5);
      }

      else
      {
        return v20;
      }
    }

    else
    {
      v21 = *(v15 + 32);
      v22 = (v21 + *(v16 + 16 * v14));
      v23 = (v21 + *(v16 + 16 * v18));
      if (v17 >= v19)
      {
        LOBYTE(v12) = v22[v19];
        v17 = *(v16 + 16 * v18 + 8);
      }

      else
      {
        LOBYTE(a5) = v23[v17];
      }

      LODWORD(result) = memcmp(v22, v23, v17);
      if (result)
      {
        return result;
      }

      else
      {
        return (v12 - a5);
      }
    }
  }

  return result;
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

size_t PCompressLZBITMAPEncode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZBITMAP);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZBITMAPDecode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZBITMAP);
  if (!result)
  {
    return -1;
  }

  return result;
}

void *OSHA1StreamCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc(0x80uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    CC_SHA1_Deprecated_Init(v6);
    v7[13] = a1;
    v7[14] = a2;
    v7[15] = a3;
  }

  else
  {
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OSHA1StreamCreate", 76, 29, *v8, "malloc");
  }

  return v7;
}

void OSHA1StreamDestroy(CC_SHA1_CTX *c, unsigned __int8 *md)
{
  if (c)
  {
    CC_SHA1_Deprecated_Final(md, c);

    free(c);
  }
}

uint64_t OSHA1StreamWrite(CC_SHA1_CTX *c, const void *a2, uint64_t a3)
{
  if (!c || c[1].h0)
  {
    return -1;
  }

  v4 = a3;
  CC_SHA1_Deprecated_Update(c, a2, a3);
  v7 = *&c[1].h2;
  if (!v7)
  {
    return v4;
  }

  v8 = *&c[1].Nh;

  return v7(v8, a2, v4);
}

uint64_t OSHA1StreamAbort(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 112);
    if (v2)
    {
      result = v2(*(result + 120));
    }

    *(v1 + 96) = 1;
  }

  return result;
}

uint64_t *IMagicStreamCreate(uint64_t (*a1)(uint64_t, uint64_t *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc(a4 + 48);
  v9 = v8;
  if (v8)
  {
    bzero(v8, a4 + 48);
    v10 = a1(a3, v9 + 6, a4);
    if (v10 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMagicStreamCreate", 138, 29, 0, "reading magic");
      free(v9);
      return 0;
    }

    else
    {
      *v9 = v10;
      v9[1] = v10;
      v9[3] = a1;
      v9[4] = a2;
      v9[5] = a3;
    }
  }

  else
  {
    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMagicStreamCreate", 133, 29, *v11, "malloc");
  }

  return v9;
}

uint64_t IMagicStreamRead(uint64_t a1, char *__dst, size_t a3)
{
  if (!a1 || *(a1 + 16))
  {
    return -1;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    if (v8 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = *(a1 + 8);
    }

    memcpy(__dst, (a1 + *a1 - v8 + 48), v4);
    *(a1 + 8) -= v4;
    if (v8 < a3)
    {
      v9 = (*(a1 + 24))(*(a1 + 40), &__dst[v4], a3 - v4);
      if (v9 < 0)
      {
        return -1;
      }

      else
      {
        v4 += v9;
      }
    }

    return v4;
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 40);

  return v10(v11);
}

uint64_t IMagicStreamAbort(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2)
    {
      result = v2(*(result + 40));
    }

    *(v1 + 16) = 1;
  }

  return result;
}

void *IFileStreamCreateWithFilename(const char *a1, unint64_t a2, uint64_t a3)
{
  v6 = malloc(0x70uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 13) = 0;
    *(v6 + 88) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 40) = 0u;
    v8 = (v6 + 40);
    *v7 = 0x1FFFFFFFFLL;
    v9 = a2 + a3;
    if (__CFADD__(a2, a3))
    {
      v9 = -1;
    }

    *(v7 + 16) = a2;
    *(v7 + 24) = v9;
    if (pthread_mutex_init(v8, 0))
    {
      v10 = "pthread_mutex_init";
      v11 = 293;
    }

    else
    {
      v14 = open(a1, 0);
      *v7 = v14;
      if (v14 < 0)
      {
        v12 = *__error();
        v15 = a1;
        v10 = "%s";
        v11 = 297;
        goto LABEL_9;
      }

      clampIfRegularFile(v7);
      if ((seekTo(v7, a2) & 0x80000000) == 0)
      {
        return v7;
      }

      v10 = "seek error";
      v11 = 303;
    }

    v12 = 0;
  }

  else
  {
    v12 = *__error();
    v10 = "malloc";
    v11 = 282;
  }

LABEL_9:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFilename", v11, 29, v12, v10, v15);
  IFileStreamDestroy(v7);
  return 0;
}

uint64_t clampIfRegularFile(uint64_t a1)
{
  memset(&v4, 0, sizeof(v4));
  result = fstat(*a1, &v4);
  if (!result && (v4.st_mode & 0xF000) == 0x8000)
  {
    st_size = v4.st_size;
    if (*(a1 + 16) > v4.st_size)
    {
      *(a1 + 16) = v4.st_size;
    }

    if (*(a1 + 24) > st_size)
    {
      *(a1 + 24) = st_size;
    }
  }

  return result;
}

uint64_t seekTo(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  v22 = v5;
  v23 = v4;
  v24 = v3;
  v25 = v2;
  v13 = lseek(*a1, a2, 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = v13;
    *(a1 + 32) = v13;
LABEL_5:
    if (v14 == a2)
    {
      return 0;
    }

    v15 = "pos not reached";
    v16 = 261;
    goto LABEL_11;
  }

  if (*__error() != 32)
  {
    v17 = *__error();
    v15 = "lseek failed";
    v16 = 258;
    goto LABEL_13;
  }

  v14 = *(a1 + 32);
  if (v14 <= a2)
  {
    v18 = valloc(0x4000uLL);
    if (!v18)
    {
      v17 = *__error();
      v15 = "malloc";
      v16 = 244;
      goto LABEL_13;
    }

    for (i = v18; v14 < a2; *(a1 + 32) = v14)
    {
      if (v14 + 0x4000 <= a2)
      {
        v20 = 0x4000;
      }

      else
      {
        v20 = a2 - v14;
      }

      v21 = read(*a1, i, v20);
      v14 = *(a1 + 32);
      if (v21 < 1)
      {
        break;
      }

      v14 += v21;
    }

    free(i);
    goto LABEL_5;
  }

  v15 = "lseek failed and pos < s->pos";
  v16 = 240;
LABEL_11:
  v17 = 0;
LABEL_13:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "seekTo", v16, 29, v17, v15, v7, v6, v22, v23, v24, v25, v8, v9);
  return 0xFFFFFFFFLL;
}

void IFileStreamDestroy(char *a1)
{
  if (a1)
  {
    if (*(a1 + 1))
    {
      v2 = *a1;
      if ((v2 & 0x80000000) == 0)
      {
        close(v2);
      }
    }

    pthread_mutex_destroy((a1 + 40));

    free(a1);
  }
}

unint64_t IFileStreamRead(uint64_t a1, char *a2, size_t a3)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  if (v6 < *(a1 + 16))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamRead", 358, 29, 0, "pos out of range");
    return -1;
  }

  if (~v6 < a3)
  {
    v7 = ~v6;
  }

  else
  {
    v7 = a3;
  }

  v8 = a3 + v6;
  if (__CFADD__(a3, v6))
  {
    v8 = -1;
  }

  v9 = *(a1 + 24);
  if (v8 <= v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9 - v6;
  }

  if (v10)
  {
    v3 = 0;
    while (1)
    {
      v12 = read(*a1, a2, v10);
      if (v12 < 0)
      {
        break;
      }

      if (v12)
      {
        a2 += v12;
        v3 += v12;
        v10 -= v12;
        if (v10)
        {
          continue;
        }
      }

      v6 = *(a1 + 32);
      goto LABEL_24;
    }

    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamRead", 374, 29, *v13, "read");
    *(a1 + 32) += v3;
    atomic_fetch_add((a1 + 104), v3);
    return -1;
  }

  v3 = 0;
LABEL_24:
  *(a1 + 32) = v6 + v3;
  atomic_fetch_add((a1 + 104), v3);
  return v3;
}

uint64_t IFileStreamSetPos(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  v11 = v2;
  v8 = *(a1 + 16);
  v9 = __CFADD__(v8, a2);
  v10 = v8 + a2;
  if (v9 || v10 > *(a1 + 24))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamSetPos", 435, 29, 0, "invalid pos", v3, v11, v4, v5);
    return -1;
  }

  if ((seekTo(a1, v10) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamSetPos", 436, 29, 0, "changing pos", v3, v11, v4, v5);
    return -1;
  }

  return *(a1 + 32) - *(a1 + 16);
}

uint64_t IFileStreamGetPos(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  else
  {
    return *(a1 + 32) - *(a1 + 16);
  }
}

int *OFileStreamCreateWithFilename(const char *a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 2) = a2;
    *(v4 + 3) = 0;
    v4[1] = 1;
    *(v4 + 1) = 0;
    v6 = open(a1, 1537, 420);
    *v5 = v6;
    if (v6 < 0)
    {
      v7 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFilename", 490, 29, *v7, "%s", a1);
      free(v5);
      return 0;
    }
  }

  else
  {
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFilename", 484, 29, *v8, "malloc");
  }

  return v5;
}

void *OFileStreamCreateWithFD(int a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    v4[2] = a2;
    v4[3] = 0;
    *v4 = a1;
    *(v4 + 1) = 0;
    v4[1] = 0;
  }

  else
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFD", 497, 29, *v6, "malloc");
  }

  return v5;
}

void OFileStreamDestroy(int *a1)
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
}

uint64_t OFileStreamWrite(uint64_t a1, char *__buf, unint64_t a3)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  if (*(a1 + 16) >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (v5)
  {
    v3 = 0;
    while (1)
    {
      v7 = v5 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v5;
      v8 = write(*a1, __buf, v7);
      if (v8 < 0)
      {
        break;
      }

      if (v8)
      {
        v9 = *(a1 + 16);
        if (v9 != -1)
        {
          *(a1 + 16) = v9 - v8;
        }

        __buf += v8;
        v3 += v8;
        v5 -= v8;
        if (v5)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamWrite", 538, 29, *v11, "write");
    return -1;
  }

  v3 = 0;
LABEL_18:
  *(a1 + 24) += v3;
  return v3;
}

off_t OFileStreamSetPos(int *a1, off_t a2)
{
  if (a1[2])
  {
    return -1;
  }

  result = lseek(*a1, a2, 0);
  if (result < 0)
  {
    v5 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamSetPos", 558, 29, *v5, "lseek", v2, v3);
    return -1;
  }

  return result;
}

off_t OFileStreamGetPos(int *a1)
{
  if (a1[2])
  {
    return -1;
  }

  result = lseek(*a1, 0, 1);
  if (result < 0)
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamGetPos", 568, 29, *v4, "lseek", v1, v2);
    return -1;
  }

  return result;
}

uint64_t OFileStreamAbort(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

int *OArchiveFileStreamCreate(const char *a1, unint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v5 = a5;
  v10 = malloc(0x60uLL);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4) = 0u;
    *(v10 + 5) = 0u;
    *(v10 + 2) = 0u;
    *(v10 + 3) = 0u;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    if ((a3 & 0x100) == 0)
    {
      unlink(a1);
    }

    v11[1] = (a3 >> 4) & 1;
    *(v11 + 2) = a2;
    if (a3)
    {
      v12 = 4;
    }

    else
    {
      v12 = a4;
    }

    if (v12 < 1)
    {
      v13 = open(a1, 1537, 420);
      *v11 = v13;
      if (v13 < 0)
      {
        v14 = 648;
        goto LABEL_31;
      }
    }

    else
    {
      v13 = open_dprotected_np(a1, 1537, v12, 0, 420);
      *v11 = v13;
      if (v13 < 0)
      {
        v14 = 640;
LABEL_31:
        v21 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", v14, 29, *v21, "%s", a1);
        ParallelCompressionAFSCStreamClose(0);
        goto LABEL_32;
      }
    }

    v16 = v13;
    if ((a3 & 8) != 0 && fcntl(v13, 48, 1))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 656, 29, "Warning: F_NOCACHE failed: %s\n", a1);
    }

    if ((a3 & 2) != 0 && fcntl(v16, 68, 1) == -1)
    {
      v17 = __error();
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 665, 29, "Warning: F_SETSTATICCONTENT failed with error %d: %s\n", *v17, a1);
    }

    if (a2 && (a3 & 4) != 0 && v5 != -1)
    {
      if ((a3 & 0x80) != 0)
      {
        v18 = 6;
      }

      else
      {
        v18 = 4;
      }

      v19 = ParallelCompressionAFSCStreamOpen(v16, a2, v5, v18);
      *(v11 + 3) = v19;
      if (!v19)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 677, 29, 0, "ParallelCompressionAFSCStreamOpen failed: %s", a1);
        ParallelCompressionAFSCStreamClose(0);
        close(v16);
LABEL_32:
        free(v11);
        return 0;
      }
    }

    else if ((a3 & 0x40) != 0)
    {
      v20 = fpathconf(v16, 27);
      if (v20 >= 1)
      {
        v11[10] = 1;
        if (v20 == 4096)
        {
          v11[18] = 4096;
        }

        else
        {
          v23 = 0x10000;
          if (v20 < 0x10000)
          {
            v23 = v20;
          }

          v24 = 1024;
          do
          {
            v25 = v24;
            v24 *= 2;
          }

          while (v25 < v23);
          v11[18] = v25;
        }
      }
    }
  }

  else
  {
    v15 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 617, 29, *v15, "malloc");
  }

  return v11;
}

uint64_t OArchiveFileStreamDestroyEx(unsigned int *a1, int a2, void *a3, void *a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 2))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 863, 29, "OArchiveFileStream didn't receive enough data before being destroyed\n");
  }

  ParallelCompressionAFSCStreamClose(*(a1 + 3));
  if ((*a1 & 0x80000000) != 0)
  {
    v9 = 0;
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    if (*(a1 + 7))
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *(a1 + 8);
      while (fcntl(*a1, 99, v11 + v8) != -1)
      {
        v11 = *(a1 + 8);
        v9 += *(v11 + v8 + 16);
        ++v10;
        v8 += 24;
        if (v10 >= *(a1 + 7))
        {
          goto LABEL_14;
        }
      }

      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 875, 29, "F_PUNCHHOLE failed");
    }

    else
    {
      v9 = 0;
    }

LABEL_14:
    if (a1[1] && fcntl(*a1, 51, 0) == -1)
    {
      v13 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 883, 29, *v13, "Final FULLSYNC");
    }

    v12 = *a1;
    if (!a2)
    {
      if (close(*a1))
      {
        v14 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 890, 29, *v14, "close");
      }

      v12 = 0xFFFFFFFFLL;
      *a1 = -1;
    }
  }

  if (a3)
  {
    *a3 = *(a1 + 4) - v9;
  }

  if (a4)
  {
    *a4 = v9;
  }

  free(*(a1 + 8));
  free(a1);
  return v12;
}

uint64_t OArchiveFileStreamWrite(uint64_t a1, char *__buf, unint64_t a3)
{
  if (!a1 || *(a1 + 8))
  {
    return -1;
  }

  v6 = a3;
  if (a3)
  {
    v4 = 0;
    v8 = *(a1 + 16);
    while (v8)
    {
      if (v8 >= v6)
      {
        v8 = v6;
      }

      if (v8 >= 0x40000000)
      {
        v9 = 0x40000000;
      }

      else
      {
        v9 = v8;
      }

      v10 = *(a1 + 24);
      if (v10)
      {
        v11 = ParallelCompressionAFSCStreamWrite(v10, __buf, v9);
        if ((v11 & 0x8000000000000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 955, 29, 0, "ParallelCompressionAFSCStreamWrite failed with status %d");
          return -1;
        }
      }

      else
      {
        if ((*a1 & 0x80000000) != 0)
        {
          return -1;
        }

        v11 = write(*a1, __buf, v9);
        if ((v11 & 0x8000000000000000) != 0)
        {
          v36 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 960, 29, v36, "write");
          return -1;
        }
      }

      if (*(a1 + 40))
      {
        v12 = 0;
        LODWORD(v13) = *(a1 + 72);
        v14 = *(a1 + 76);
        do
        {
          v15 = (v13 - v14);
          if (v12 + v15 <= v9)
          {
            v16 = v15;
          }

          else
          {
            v16 = (v9 - v12);
          }

          v17 = &__buf[v12];
          v18 = &__buf[v12 + v16];
          if ((&__buf[v12] & 7) != 0 && v16)
          {
            v19 = &__buf[v12 + 1];
            while (!*v17)
            {
              if (++v17 < v18)
              {
                if ((v19++ & 7))
                {
                  continue;
                }
              }

              goto LABEL_29;
            }

LABEL_35:
            v22 = 1;
          }

          else
          {
LABEL_29:
            while (v17 + 8 <= v18)
            {
              v21 = *v17;
              v17 += 8;
              if (v21)
              {
                goto LABEL_35;
              }
            }

            while (v17 < v18)
            {
              if (*v17)
              {
                goto LABEL_35;
              }

              ++v17;
            }

            v22 = 0;
          }

          v23 = *(a1 + 88) | v22;
          *(a1 + 88) = v23;
          v14 += v16;
          *(a1 + 76) = v14;
          if (v14 == v13)
          {
            if (!v23)
            {
              v24 = *(a1 + 80);
              v25 = *(a1 + 56);
              if (v25 && (v26 = *(a1 + 64) + 24 * v25, v27 = *(v26 - 8), v27 + *(v26 - 16) == v24))
              {
                *(v26 - 8) = v27 + v13;
              }

              else
              {
                v28 = *(a1 + 48);
                if (v25 >= v28)
                {
                  v29 = v28 + (v28 >> 1);
                  v30 = v28 == 0;
                  v31 = 32;
                  if (!v30)
                  {
                    v31 = v29;
                  }

                  *(a1 + 48) = v31;
                  v32 = reallocf(*(a1 + 64), 24 * v31);
                  *(a1 + 64) = v32;
                  if (!v32)
                  {
                    *(a1 + 48) = 0;
                    *(a1 + 56) = 0;
                    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 994, 29, "malloc holes failed");
                  }
                }

                v33 = *(a1 + 56);
                if (v33 >= *(a1 + 48))
                {
                  LODWORD(v13) = *(a1 + 72);
                }

                else
                {
                  v34 = *(a1 + 64);
                  *(a1 + 56) = v33 + 1;
                  v35 = (v34 + 24 * v33);
                  *v35 = 0;
                  v35[1] = 0;
                  v35[1] = v24;
                  v35[2] = 0;
                  v13 = *(a1 + 72);
                  v35[2] = v13;
                }
              }
            }

            v14 = 0;
            *(a1 + 80) += v13;
            *(a1 + 76) = 0;
            *(a1 + 88) = 0;
          }

          v12 += v16;
        }

        while (v12 < v9);
      }

      __buf += v11;
      v4 += v11;
      v8 = *(a1 + 16) - v11;
      *(a1 + 16) = v8;
      v6 -= v11;
      if (!v6)
      {
        break;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 32) += v4;
  return v4;
}

void *OMemStreamCreate(uint64_t a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    v4[1] = 0;
    v4[2] = a2;
    v4[3] = 0;
  }

  else
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OMemStreamCreate", 1050, 29, *v6, "malloc");
  }

  return v5;
}

size_t OMemStreamWrite(uint64_t a1, const void *a2, size_t a3)
{
  if (!a1 || *(a1 + 8))
  {
    return -1;
  }

  if (*(a1 + 16) >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  memcpy(*a1, a2, v4);
  *a1 += v4;
  v5 = *(a1 + 24) + v4;
  *(a1 + 16) -= v4;
  *(a1 + 24) = v5;
  return v4;
}

void *IMemStreamCreate(uint64_t a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    v4[1] = 0;
    v4[2] = a2;
    v4[3] = 0;
  }

  else
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMemStreamCreate", 1112, 29, *v6, "malloc");
  }

  return v5;
}

size_t IMemStreamRead(uint64_t a1, void *__dst, size_t a3)
{
  if (!a1 || *(a1 + 8))
  {
    return -1;
  }

  if (*(a1 + 16) >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  memcpy(__dst, *a1, v4);
  *a1 += v4;
  v5 = *(a1 + 24) + v4;
  *(a1 + 16) -= v4;
  *(a1 + 24) = v5;
  return v4;
}

uint64_t IMemStreamAbort(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

void ***OBufferedStreamCreate(void **a1, void **a2, void **a3, size_t a4)
{
  v8 = malloc(0x28uLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 24) = 0u;
    *(v8 + 8) = 0u;
    v10 = MemBufferCreate(a4);
    *v9 = v10;
    if (v10)
    {
      v9[1] = a1;
      v9[2] = a2;
      v9[3] = a3;
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamCreate", 1182, 29, 0, "creating internal buffer");
      OBufferedStreamDestroy(v9);
      return 0;
    }
  }

  else
  {
    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamCreate", 1176, 29, *v11, "malloc");
  }

  return v9;
}

void OBufferedStreamDestroy(void *a1)
{
  if (a1)
  {
    MemBufferFlushToOStream(*a1, 0xFFFFFFFFFFFFFFFFLL, a1[1], a1[3]);
    MemBufferDestroy(*a1);

    free(a1);
  }
}

uint64_t OBufferedStreamWrite(void *a1, char *a2, unint64_t a3)
{
  if (a1 && !*(a1 + 8))
  {
    v6 = a3;
    if (!a3)
    {
      return 0;
    }

    v4 = 0;
    while (1)
    {
      FreeSize = MemBufferGetFreeSize(*a1);
      if (!FreeSize)
      {
        if (MemBufferFlushToOStream(*a1, 0xFFFFFFFFFFFFFFFFLL, a1[1], a1[3]) < 0)
        {
          return -1;
        }

        FreeSize = MemBufferGetFreeSize(*a1);
      }

      v9 = v6 >= FreeSize ? FreeSize : v6;
      if ((MemBufferFillFromBuffer(*a1, v9, a2) & 0x8000000000000000) != 0)
      {
        break;
      }

      a2 += v9;
      v4 += v9;
      v6 -= v9;
      if (!v6)
      {
        return v4;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamWrite", 1221, 29, 0, "MemBufferFillFromBuffer failed");
  }

  return -1;
}

uint64_t bxdiff5Alloc(size_t a1, uint64_t *a2, uint64_t a3)
{
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 16) = a1;
  v3 = *a2;
  *(a3 + 8) = *(a2 + 2);
  *a3 = v3;
  if (a1)
  {
    *(a3 + 24) = calloc(a1, 0x50uLL);
  }

  return 0;
}

uint64_t bxdiff5Free(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = *(a1 + 24);
      if (*(v5 + v2))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 40, 54, 0, "in[%zu] is not NULL", v3);
        v4 = 0;
        v5 = *(a1 + 24);
      }

      if (*(v5 + v2 + 64))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 41, 54, 0, "inPatch[%zu] is not NULL", v3);
        v4 = 0;
        v5 = *(a1 + 24);
      }

      if (*(v5 + v2 + 40))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 42, 54, 0, "inControls[%zu] is not NULL", v3);
        v4 = 0;
      }

      ++v3;
      v2 += 80;
    }

    while (v3 < *(a1 + 16));
  }

  else
  {
    v4 = 1;
  }

  if (*(a1 + 32))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 44, 54, 0, "out is not NULL");
    v4 = 0;
  }

  if (*(a1 + 72))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 45, 54, 0, "comboControls is not NULL");
    v4 = 0;
  }

  if (*(a1 + 96))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 46, 54, 0, "comboPatch is not NULL");
    v4 = 0;
  }

  free(*(a1 + 24));
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *a1 = 0uLL;
  return result;
}

uint64_t bxdiff5Dump(uint64_t a1, FILE *a2)
{
  if (*(a1 + 16))
  {
    v4 = 0;
    v5 = (*(a1 + 24) + 36);
    v6 = *(a1 + 16);
    do
    {
      v7 = *v5;
      v5 += 20;
      if (v7)
      {
        ++v4;
      }

      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  fprintf(a2, "BXDiff5Data: n=%zu, nUnique=%zu\n", *(a1 + 16), v4);
  if (*(a1 + 16))
  {
    v8 = 0;
    v9 = 0;
    v10 = 16;
    do
    {
      fprintf(a2, "- input %zu\n", v9);
      v11 = (*(a1 + 24) + 80 * v9);
      if (*v11)
      {
        fprintf(a2, "    in set, inSize=%zu, inSHA1=", v11[1]);
        v12 = 20;
        v13 = v10;
        do
        {
          fprintf(a2, "%02x", *(*(a1 + 24) + v13++));
          --v12;
        }

        while (v12);
        v14 = "unique";
        if (!*(*(a1 + 24) + 80 * v9 + 36))
        {
          v14 = "non unique";
        }

        fprintf(a2, ", %s", v14);
        fputc(10, a2);
      }

      else
      {
        fwrite("    in is NULL\n", 0xFuLL, 1uLL, a2);
      }

      v15 = *(a1 + 24) + 80 * v9;
      if (*(v15 + 40))
      {
        v16 = 3 * *(v15 + 56);
        fprintf(a2, "    inControls set, nControls=%zu, inPlace=%d (%zu MB)\n", *(v15 + 56), *(v15 + 48), (v16 >> 17) & 0xFFFFFFFFFFFLL);
        v8 += 8 * v16;
      }

      else
      {
        fwrite("    inControls is NULL\n", 0x17uLL, 1uLL, a2);
      }

      v17 = *(a1 + 24) + 80 * v9;
      if (*(v17 + 64))
      {
        v18 = *(v17 + 72);
        fprintf(a2, "    inPatch set, inPatchSize=%zu (%zu MB)\n", v18, v18 >> 20);
        v8 += v18;
      }

      else
      {
        fwrite("    inPatch is NULL\n", 0x14uLL, 1uLL, a2);
      }

      ++v9;
      v10 += 80;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    v8 = 0;
  }

  fwrite("- output\n", 9uLL, 1uLL, a2);
  if (*(a1 + 32))
  {
    fprintf(a2, "    out set, outSize=%zu, outSHA1=", *(a1 + 40));
    for (i = 0; i != 20; ++i)
    {
      fprintf(a2, "%02x", *(a1 + 48 + i));
    }

    fputc(10, a2);
  }

  else
  {
    fwrite("    out is NULL\n", 0x10uLL, 1uLL, a2);
  }

  if (*(a1 + 72))
  {
    v20 = (8 * v4 + 16) * *(a1 + 88);
    fprintf(a2, "    comboControls set, nControls=%zu, inPlace=%d (%zu MB)\n", *(a1 + 88), *(a1 + 80), v20 >> 20);
    v8 += v20;
  }

  else
  {
    fwrite("    comboControls is NULL\n", 0x1AuLL, 1uLL, a2);
  }

  if (*(a1 + 96))
  {
    v21 = *(a1 + 104);
    fprintf(a2, "    comboPatch set, comboPatchSize=%zu (%zu MB)\n", v21, v21 >> 20);
    v8 += v21;
  }

  else
  {
    fwrite("    comboPatch is NULL\n", 0x17uLL, 1uLL, a2);
  }

  fprintf(a2, "Total size %zu MB\n", v8 >> 20);
  return 0;
}

uint64_t bxdiff5SetIn(void *a1, unint64_t a2, char *a3, unint64_t a4)
{
  if (a1[2] <= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetIn", 122, 54, 0, "invalid I=%zu");
    return 0xFFFFFFFFLL;
  }

  if (!a3 || !a4)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetIn", 123, 54, 0, "invalid in,inSize");
    return 0xFFFFFFFFLL;
  }

  if (!a1[4])
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetIn", 124, 54, 0, "missing out");
    return 0xFFFFFFFFLL;
  }

  v6 = a1[3] + 80 * a2;
  *v6 = a3;
  *(v6 + 8) = a4;
  getBufferSHA1Digest(a3, a4, (v6 + 16));
  v7 = a1[2];
  v8 = a1[3];
  *(v8 + 80 * a2 + 36) = 1;
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (a2 != v10)
      {
        v11 = a1[3];
        if (*(v11 + v9))
        {
          if (!sha1cmp(v11 + 80 * a2 + 16, v11 + v9 + 16))
          {
            v8 = a1[3];
            *(v8 + 80 * a2 + 36) = 0;
            break;
          }

          v7 = a1[2];
        }
      }

      ++v10;
      v9 += 80;
      if (v10 >= v7)
      {
        v8 = a1[3];
        break;
      }
    }
  }

  result = sha1cmp(v8 + 80 * a2 + 16, (a1 + 6));
  if (result)
  {
    return 0;
  }

  *(a1[3] + 80 * a2 + 36) = 0;
  return result;
}

uint64_t bxdiff5SetOut(uint64_t a1, char *a2, unint64_t a3)
{
  if (a2 && a3)
  {
    *(a1 + 32) = a2;
    *(a1 + 40) = a3;
    getBufferSHA1Digest(a2, a3, (a1 + 48));
    return 0;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetOut", 155, 54, 0, "invalid out,outSize");
    return 0xFFFFFFFFLL;
  }
}

uint64_t bxdiff5SetInPatch(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16) <= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetInPatch", 165, 54, 0, "invalid I=%zu");
  }

  else
  {
    if (a3 && a4)
    {
      result = 0;
      v6 = *(a1 + 24) + 80 * a2;
      *(v6 + 64) = a3;
      *(v6 + 72) = a4;
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetInPatch", 166, 54, 0, "invalid inPatch,inPatchSize");
  }

  return 0xFFFFFFFFLL;
}

uint64_t bxdiff5ReadInControlsFromInPatch(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", 176, 54, 0, "invalid input index");
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 24) + 80 * a2;
  if (!*v2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", 177, 54, 0, "input data is missing");
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 32))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", 178, 54, 0, "output data is missing");
    return 0xFFFFFFFFLL;
  }

  if (*(v2 + 40))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", 179, 54, 0, "input controls already present");
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2 + 64);
  if (!v3 || (v4 = *(v2 + 72), v4 <= 0x57))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", 180, 54, 0, "input patch is missing or invalid");
    return 0xFFFFFFFFLL;
  }

  if (*(v2 + 36))
  {
    if (*v3 == 0x3035464649445842 && *(v3 + 8) == 1 && (v6 = *(v3 + 24)) != 0)
    {
      if (*(v3 + 16) == *(a1 + 40))
      {
        if (*(a1 + 48) == *(v3 + 40) && *(a1 + 56) == *(v3 + 48) && *(a1 + 64) == *(v3 + 56))
        {
          v11 = *(v2 + 16);
          v12 = *(v2 + 24);
          v13 = *(v2 + 32);
          if (v11 == *(v3 + 68) && v12 == *(v3 + 76) && v13 == *(v3 + 84))
          {
            if (v3 + 88 + v6 <= v3 + v4)
            {
              v16 = *(v3 + 12);
              v9 = ILowMemoryDecoderStreamCreateWithBuffer(v3 + 88, v6, 0x10000uLL);
              if (v9)
              {
                v10 = 0;
                v17 = 0;
                v18 = 0;
                v19 = v16 & 1;
                while (1)
                {
                  if (v17 >= v18)
                  {
                    if (v18)
                    {
                      v18 += v18 >> 1;
                    }

                    else
                    {
                      v18 = 4096;
                    }

                    v20 = reallocf(v10, 24 * v18);
                    if (!v20)
                    {
                      v23 = *__error();
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", 223, 54, v23, "malloc", a1, a2);
                      goto LABEL_28;
                    }

                    v10 = v20;
                  }

                  v21 = ILowMemoryDecoderStreamRead(v9, v10 + 24 * v17, 24 * (v18 - v17));
                  if ((v21 & 0x8000000000000000) != 0)
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", 227, 54, 0, "ILZMAMemStreamRead");
                    ILowMemoryDecoderStreamDestroy(v9);
                    goto LABEL_29;
                  }

                  if (!v21)
                  {
                    ILowMemoryDecoderStreamDestroy(v9);
                    result = 0;
                    v22 = *(a1 + 24) + 80 * a2;
                    *(v22 + 40) = v10;
                    *(v22 + 48) = v19;
                    *(v22 + 56) = v17;
                    return result;
                  }

                  v17 += v21 / 0x18;
                }
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", 215, 54, 0, "Control stream init", a1, a2);
              goto LABEL_28;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", 212, 54, 0, "invalid patch payload size", a1, a2);
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", 204, 54, 0, "in digest mismatch in patch");
          }
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", 203, 54, 0, "out digest mismatch in patch");
        }
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", 202, 54, 0, "out size mismatch in patch");
      }
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5ReadInControlsFromInPatch", 199, 54, 0, "patch is not a valid 1:1 BXDIFF50");
    }

    v9 = 0;
LABEL_28:
    ILowMemoryDecoderStreamDestroy(v9);
    v10 = 0;
LABEL_29:
    free(v10);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t bxdiff5CreateInControls(uint64_t a1, unint64_t a2, int a3)
{
  if (*(a1 + 16) <= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateInControls", 247, 54, 0, "invalid input index");
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 24) + 80 * a2;
  v6 = (v5 + 40);
  if (*(v5 + 40))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateInControls", 248, 54, 0, "input controls already present");
    return 0xFFFFFFFFLL;
  }

  v8 = *v5;
  if (!*v5 || (v9 = *(v5 + 8)) == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateInControls", 249, 54, 0, "input is missing or invalid");
    return 0xFFFFFFFFLL;
  }

  if (!*(v5 + 36))
  {
    return 0;
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v5 + 56);
  if (!(v9 >> 28) || v12 >> 28 == 0)
  {
    if ((getBXDiffControls(v8, v9, v11, v12, v6, v13, a1) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateInControls", 270, 54, 0, "generic controls");
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    LargeFileControls = GetLargeFileControls(v8, v9, v11, v12, v6, v13, a1);
    if (LargeFileControls < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateInControls", 262, 54, 0, "largefile controls");
      return 0xFFFFFFFFLL;
    }
  }

  if (!a3)
  {
    return 0;
  }

  if ((forceInPlaceControls(*(*(a1 + 24) + 80 * a2 + 8), *(a1 + 40), *(*(a1 + 24) + 80 * a2 + 40), *(*(a1 + 24) + 80 * a2 + 56), *(a1 + 4)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateInControls", 278, 54, 0, "forceInPlaceControls");
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(*(a1 + 24) + 80 * a2 + 48) = 1;
  return result;
}

uint64_t bxdiff5CreateComboControls(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_7;
  }

  v3 = 0;
  v4 = (*(a1 + 24) + 36);
  v5 = *(a1 + 16);
  do
  {
    v6 = *v4;
    v4 += 20;
    if (v6)
    {
      ++v3;
    }

    --v5;
  }

  while (v5);
  if (v3 <= 1)
  {
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", 289, 54, 0, "creating combo controls requires 2 or more unique inputs");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 80) = 1;
  v9 = calloc(v1, 0x18uLL);
  if (!v9)
  {
    v17 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", 300, 54, v17, "malloc");
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  v11 = v9;
  v12 = v1;
  do
  {
    initDiffSegmentVector(v11);
    v11 += 3;
    --v12;
  }

  while (v12);
  v13 = 0;
  v14 = 0;
  v15 = *(a1 + 24);
  do
  {
    if (*(v15 + v13 + 36))
    {
      v16 = *(v15 + v13 + 40);
      if (!v16)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", 309, 54, 0, "missing controls for input %zu");
        goto LABEL_29;
      }

      if ((pushControls(&v10[3 * v14], v16, *(v15 + v13 + 56), 0, 0) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", 312, 54, 0, "pushControls");
        goto LABEL_29;
      }

      v15 = *(a1 + 24);
      if (!*(v15 + v13 + 48))
      {
        *(a1 + 80) = 0;
      }

      ++v14;
    }

    ++v12;
    v13 += 80;
  }

  while (v1 != v12);
  if ((mergeDiffSegmentVectors(v14, v10) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", 321, 54, 0, "mergeDiffSegmentVectors");
  }

  else
  {
    if ((getComboControlsFromMergedDiffSegmentVectors(v14, v10, (a1 + 72), (a1 + 88)) & 0x80000000) == 0)
    {
      v7 = 0;
      goto LABEL_30;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", 324, 54, 0, "getComboControlsFromMergedDiffSegmentVectors");
  }

LABEL_29:
  v7 = 0xFFFFFFFFLL;
LABEL_30:
  v18 = v10;
  do
  {
    BlobBufferFree(v18);
    v18 += 24;
    --v1;
  }

  while (v1);
  free(v10);
  return v7;
}

uint64_t bxdiff5CreatePatchBackend(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t __size, uint64_t a7, int64x2_t *a8, uint64_t a9, void *a10, size_t *a11, int a12, int a13, unsigned int a14)
{
  v19 = a10;
  v18 = a11;
  v20 = malloc(__size);
  v21 = v20;
  if (!v20)
  {
    v29 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 447, 54, v29, "malloc");
LABEL_48:
    v34 = 0;
LABEL_69:
    free(v21);
    free(v34);
    v75 = 0;
    v74 = 0;
    v76 = 0xFFFFFFFFLL;
    goto LABEL_70;
  }

  v22 = a13;
  v23 = a9;
  v24 = a1 + 2;
  if (a9)
  {
    v25 = 0uLL;
    v26 = vnegq_f64(0);
    v27 = a8;
    v28 = a9;
    do
    {
      v25 = vaddq_s64(vbslq_s8(vcltzq_s64(*v27), vsubq_s64(v26, *v27), *v27), v25);
      v27 = (v27 + 8 * a1 + 16);
      --v28;
    }

    while (v28);
  }

  else
  {
    v25 = 0uLL;
  }

  __dst = v20;
  if (a13 > 1)
  {
    v82 = v25;
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 backend, out: %zu B, diff: %zu B, lit: %zu B, ctrl: %zu B\n", __size, v25.u64[0], v25.u64[1], 8 * (a1 + 2) * a9);
    v25 = v82;
    v22 = a13;
    v24 = a1 + 2;
    v18 = a11;
    v19 = a10;
    v21 = __dst;
  }

  if (vaddvq_s64(v25) != __size)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 458, 54, 0, "size inconsistency: diff + archive != out");
    goto LABEL_48;
  }

  v78 = v24;
  v83 = v19;
  v80 = v18;
  v30 = v22;
  v31 = 28 * a1 + lzma_stream_buffer_bound() * a1;
  v32 = v31 + lzma_stream_buffer_bound() + 60;
  v81 = v30;
  if (v30 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch allocated: %zu B\n", v32);
  }

  v33 = malloc(v32);
  v34 = v33;
  if (!v33)
  {
    v62 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 469, 54, *v62, "malloc");
    v18 = v80;
LABEL_50:
    v19 = v83;
    goto LABEL_52;
  }

  *(v33 + 44) = 0u;
  v33[1] = 0u;
  v33[2] = 0u;
  *v33 = 0u;
  v79 = v33 + 60;
  bzero(v33 + 60, 28 * a1);
  *v34 = 0x3035464649445842;
  v34[2] = __size;
  *(v34 + 5) = *a7;
  *(v34 + 14) = *(a7 + 16);
  *(v34 + 2) = a1;
  *(v34 + 3) = a12 != 0;
  if (a1)
  {
    v35 = v34 + 68;
    v36 = a1;
    do
    {
      *v35 = *a4;
      *(v35 + 4) = *(a4 + 16);
      a4 += 20;
      v35 += 28;
      --v36;
    }

    while (v36);
  }

  v37 = v34 + v32;
  v38 = &v79[28 * a1];
  if (v30 > 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch headers: %zu B\n", v38 - v34);
  }

  v18 = v80;
  v39 = plzmaEncodeBuffer(v38, &v37[-v38], a8, 8 * (a1 + 2) * a9, a14);
  if (v39 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 499, 54, 0, "Payload compression");
LABEL_52:
    v21 = __dst;
    goto LABEL_69;
  }

  v40 = v38 + v39;
  v34[3] = v39;
  if (v81 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch control payload: %zu B\n", v39);
  }

  v21 = __dst;
  if (a1)
  {
    v41 = 0;
    v42 = a5;
    while (!a9)
    {
      v46 = v21;
LABEL_42:
      v60 = plzmaEncodeBuffer(v40, &v37[-v40], v21, v46 - v21, a14);
      if (v60 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 530, 54, 0, "Payload compression");
        goto LABEL_50;
      }

      v61 = v60;
      *&v79[28 * v41] = v60;
      if (v81 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch diff[%zu] payload: %zu B\n", v41, v60);
      }

      v40 += v61;
      ++v41;
      v21 = __dst;
      v42 = a5;
      if (v41 == a1)
      {
        goto LABEL_55;
      }
    }

    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = v21;
    while (1)
    {
      v47 = &a8->i64[v43 * v78];
      v48 = *v47;
      v49 = v47[1];
      if (*v47 < 0)
      {
        v48 = 0x8000000000000000 - *v47;
      }

      if (v49 < 0)
      {
        v49 = 0x8000000000000000 - v49;
      }

      v50 = v47[v41 + 2];
      if (v50 < 0)
      {
        v50 = 0x8000000000000000 - v50;
      }

      if (v44 < 0)
      {
        break;
      }

      v51 = v48 + v44;
      if (v48 + v44 > __size)
      {
        break;
      }

      if (v45 < 0 || (v52 = v48 + v45, v48 + v45 > *(a3 + 8 * v41)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 519, 54, 0, "in[%zu] access out of range");
        goto LABEL_68;
      }

      if (v48 >= 1)
      {
        v53 = (v42 + v44);
        v54 = (*(a2 + 8 * v41) + v45);
        v55 = v46;
        v56 = v48;
        do
        {
          v58 = *v53++;
          v57 = v58;
          v59 = *v54++;
          *v55++ = v57 - v59;
          --v56;
        }

        while (v56);
      }

      v46 += v48;
      v44 = v51 + v49;
      v45 = v52 + v50;
      if (++v43 == a9)
      {
        goto LABEL_42;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 518, 54, 0, "out access out of range");
    goto LABEL_68;
  }

  v42 = a5;
LABEL_55:
  if (a9)
  {
    v63 = 0;
    v64 = &a8->i64[1];
    v65 = 8 * a1 + 16;
    v21 = __dst;
    do
    {
      v66 = *(v64 - 1);
      v67 = *v64;
      if (v66 < 0)
      {
        v66 = 0x8000000000000000 - v66;
      }

      if (v67 >= 0)
      {
        v68 = *v64;
      }

      else
      {
        v68 = 0x8000000000000000 - v67;
      }

      v69 = v66 + v63;
      memcpy(v21, (v42 + v66 + v63), v68);
      v42 = a5;
      v21 += v68;
      v63 = v69 + v68;
      v64 = (v64 + v65);
      --v23;
    }

    while (v23);
  }

  v70 = v21 - __dst;
  v21 = __dst;
  v71 = plzmaEncodeBuffer(v40, &v37[-v40], __dst, v70, a14);
  if (v71 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 554, 54, 0, "Payload compression");
    v18 = v80;
LABEL_68:
    v19 = v83;
    goto LABEL_69;
  }

  v72 = v40 + v71;
  v34[4] = v71;
  v18 = v80;
  v19 = v83;
  if (v81 <= 1)
  {
    v74 = v72 - v34;
  }

  else
  {
    v73 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch archive payload: %zu B\n", v71);
    v74 = v72 - v34;
    fprintf(*v73, "BXDiff5 patch total size: %zu B\n", v72 - v34);
  }

  free(__dst);
  v75 = reallocToFit(v34, v74);
  v76 = 0;
LABEL_70:
  *v19 = v75;
  *v18 = v74;
  return v76;
}

uint64_t bxdiff5CreateComboPatch(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = (*(a1 + 24) + 36);
      do
      {
        v5 = *v4;
        v4 += 20;
        if (v5)
        {
          ++v3;
        }

        --v2;
      }

      while (v2);
    }

    else
    {
      v3 = 0;
    }

    v7 = calloc(v3, 8uLL);
    v8 = calloc(v3, 8uLL);
    v9 = calloc(v3, 0x14uLL);
    v10 = v9;
    if (v7)
    {
      v11 = v8 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11 || v9 == 0)
    {
      v13 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboPatch", 609, 54, *v13, "malloc");
      PatchBackend = 0xFFFFFFFFLL;
    }

    else
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *(a1 + 24);
          if (*(v18 + v15 + 36))
          {
            v7[v17] = *(v18 + v15);
            v19 = *(a1 + 24) + v15;
            v8[v17] = *(v19 + 8);
            v20 = &v9[20 * v17];
            v21 = *(v19 + 16);
            *(v20 + 4) = *(v19 + 32);
            *v20 = v21;
            ++v17;
            v14 = *(a1 + 16);
          }

          ++v16;
          v15 += 80;
        }

        while (v16 < v14);
      }

      PatchBackend = bxdiff5CreatePatchBackend(v3, v7, v8, v9, *(a1 + 32), *(a1 + 40), a1 + 48, *(a1 + 72), *(a1 + 88), (a1 + 96), (a1 + 104), *(a1 + 80), *(a1 + 4), *(a1 + 8));
    }

    free(v7);
    free(v8);
    free(v10);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboPatch", 600, 54, 0, "missing combo controls");
    return 0xFFFFFFFFLL;
  }

  return PatchBackend;
}

uint64_t BXDiff5WithIndividualPatches(uint64_t a1, void **a2, void *a3, void *a4, void *a5)
{
  v74 = *MEMORY[0x29EDCA608];
  if (HIDWORD(*a1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 645, 54, 0, "Invalid number of inputs: %zu", *a1);
    return 0xFFFFFFFFLL;
  }

  v11 = *(a1 + 48);
  enterThreadErrorContext();
  v12 = *a1;
  v13 = *(a1 + 52);
  if (a4)
  {
    v14 = a5 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = *(a1 + 40);
  v17 = *(a1 + 44);
  v69 = 0u;
  memset(v70, 0, sizeof(v70));
  *v71 = 0u;
  v72 = 0u;
  v73 = 0;
  v68 = v12;
  v66 = __PAIR64__(v13, v16);
  v67 = v17;
  if (v12)
  {
    *&v69 = calloc(v12, 0x50uLL);
    *a2 = 0;
    *a3 = 0;
    if (a4)
    {
      bzero(a4, 8 * v12);
    }

    if (a5)
    {
      bzero(a5, 8 * v12);
    }
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
  }

  if (bxdiff5SetOut(&v66, *(a1 + 24), *(a1 + 32)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 672, 54, 0, "bxdiff5SetOut");
    goto LABEL_17;
  }

  if (!v12)
  {
LABEL_27:
    v23 = v68;
    if (v68)
    {
      v24 = 0;
      v25 = (v69 + 36);
      do
      {
        v26 = *v25;
        v25 += 20;
        if (v26)
        {
          ++v24;
        }

        --v23;
      }

      while (v23);
      if (!v24)
      {
        *(v69 + 36) = 1;
      }
    }

    if (v13 >= 2)
    {
      bxdiff5Dump(&v66, *MEMORY[0x29EDCA610]);
    }

    if (!v12)
    {
      v35 = *(&v69 + 1);
      v36 = *&v70[0];
      v37 = HIDWORD(v66);
      v38 = v67;
      v39 = lzma_stream_buffer_bound();
      v40 = v39 + 60;
      if (v37 >= 1)
      {
        fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch capacity: %zu B\n", v40);
      }

      v41 = malloc(v40);
      v42 = v41;
      if (v41)
      {
        *v41 = 0u;
        *(v41 + 1) = 0u;
        *(v41 + 44) = 0u;
        *(v41 + 2) = 0u;
        *v41 = 0x3035464649445842;
        *(v41 + 1) = 0;
        *(v41 + 2) = v36;
        *(v41 + 40) = *(v70 + 8);
        *(v41 + 14) = DWORD2(v70[1]);
        v43 = plzmaEncodeBuffer((v41 + 60), v39, v35, v36, v38);
        if ((v43 & 0x8000000000000000) == 0)
        {
          v44 = a3;
          v45 = v42 + v43 + 60;
          v42[4] = v43;
          if (v37 >= 1)
          {
            fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch archive payload size: %zu B\n", v43);
          }

          v18 = 0;
          *a2 = reallocToFit(v42, v45 - v42);
          *v44 = v45 - v42;
          goto LABEL_20;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateFullReplacementBackend", 406, 54, 0, "Payload compression");
      }

      else
      {
        v52 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateFullReplacementBackend", 386, 54, *v52, "malloc patch");
      }

      free(v42);
      *a2 = 0;
      *a3 = 0;
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 689, 54, 0, "bxdiff5CreateFullReplacementBackend");
      v18 = -1;
      goto LABEL_20;
    }

    v65 = v13;
    v27 = v68;
    if (v68)
    {
      v28 = 0;
      v29 = (v69 + 36);
      do
      {
        v30 = *v29;
        v29 += 20;
        if (v30)
        {
          ++v28;
        }

        --v27;
      }

      while (v27);
      if (v28 == 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = v15;
      }

      if (v28 == 1)
      {
        v32 = 0;
        v33 = (v69 + 36);
        while (1)
        {
          v34 = *v33;
          v33 += 20;
          if (v34)
          {
            break;
          }

          if (v12 == ++v32)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 699, 54, 0, "could not find unique input");
            goto LABEL_88;
          }
        }

        v63 = a2;
        v64 = a3;
        v46 = 1;
        v15 = v31;
        v28 = 1;
LABEL_61:
        v47 = 0;
        v48 = 36;
        do
        {
          if (*(v69 + v48))
          {
            if (bxdiff5CreateInControls(&v66, v47, v11 & 2))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 710, 54, 0, "bxdiff5CreateInControls");
              goto LABEL_17;
            }

            v49 = v32 == v47 ? v46 : 0;
            if ((v15 || v49) && bxdiff5CreateInPatch(&v66, v47))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 718, 54, 0, "bxdiff5CreateInPatch");
              goto LABEL_17;
            }
          }

          ++v47;
          v48 += 80;
        }

        while (v12 != v47);
        if (v65 >= 2)
        {
          bxdiff5Dump(&v66, *MEMORY[0x29EDCA610]);
        }

        v51 = v63;
        v50 = v64;
        if (v28 >= 2)
        {
          if (bxdiff5CreateComboControls(&v66))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 730, 54, 0, "bxdiff5CreateComboControls");
            goto LABEL_88;
          }

          v53 = 0;
          v54 = v69;
          v55 = v12;
          do
          {
            free(*(v54 + v53 + 40));
            v54 = v69;
            v56 = v69 + v53;
            *(v56 + 40) = 0;
            *(v56 + 56) = 0;
            v53 += 80;
            --v55;
          }

          while (v55);
          v50 = v64;
          if (v65 > 1)
          {
            bxdiff5Dump(&v66, *MEMORY[0x29EDCA610]);
          }

          v51 = v63;
          if (bxdiff5CreateComboPatch(&v66))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 747, 54, 0, "bxdiff5CreateComboPatch");
LABEL_88:
            v18 = -1;
            goto LABEL_18;
          }
        }

        if (v65 >= 2)
        {
          bxdiff5Dump(&v66, *MEMORY[0x29EDCA610]);
        }

        if (v28 >= 2)
        {
          v57 = v73;
          *v51 = *(&v72 + 1);
          *v50 = v57;
          *(&v72 + 1) = 0;
          v73 = 0;
          if (!v15)
          {
            goto LABEL_97;
          }

          v58 = (v69 + 64);
          v59 = v12;
          do
          {
            v60 = v58[1];
            *a4++ = *v58;
            *a5++ = v60;
            *v58 = 0;
            v58[1] = 0;
            v58 += 10;
            --v59;
          }

          while (v59);
        }

        if (v28 == 1)
        {
          v18 = 0;
          v61 = v69 + 80 * v32;
          v62 = *(v61 + 72);
          *v51 = *(v61 + 64);
          *v50 = v62;
          *(v61 + 64) = 0;
          *(v61 + 72) = 0;
          goto LABEL_18;
        }

LABEL_97:
        v18 = 0;
LABEL_18:
        v19 = 0;
        v20 = v69;
        do
        {
          v21 = v20 + v19;
          *v21 = 0;
          free(*(v21 + 40));
          v20 = v69;
          *(v69 + v19 + 40) = 0;
          v19 += 80;
          --v12;
        }

        while (v12);
        goto LABEL_20;
      }

      v63 = a2;
      v64 = a3;
      v46 = 0;
    }

    else
    {
      v63 = a2;
      v64 = a3;
      v46 = 0;
      v28 = 0;
    }

    v32 = -1;
    goto LABEL_61;
  }

  v22 = 0;
  while (!bxdiff5SetIn(&v66, v22, *(*(a1 + 8) + 8 * v22), *(*(a1 + 16) + 8 * v22)))
  {
    if (v12 == ++v22)
    {
      goto LABEL_27;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 675, 54, 0, "bxdiff5SetIn");
LABEL_17:
  v18 = -1;
  if (v12)
  {
    goto LABEL_18;
  }

LABEL_20:
  *(&v69 + 1) = 0;
  free(v71[0]);
  v71[0] = 0;
  bxdiff5Free(&v66);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    return v18;
  }

  else
  {
    return result;
  }
}

uint64_t plzmaEncodeBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = IMemStreamCreate(a3, a4);
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "plzmaEncodeBuffer", 348, 54, 0, "is", v14, v15, v16, v17, v18);
    v10 = 0;
    goto LABEL_7;
  }

  v9 = OMemStreamCreate(a1, a2);
  v10 = v9;
  if (!v9)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "plzmaEncodeBuffer", 349, 54, 0, "os", v14, v15, v16, v17, v18);
    goto LABEL_7;
  }

  *(&v14 + 4) = a5 | 0x100000000;
  LODWORD(v14) = 0;
  *&v15 = 0x100000;
  *(&v15 + 1) = IMemStreamRead;
  *(&v16 + 1) = v8;
  *&v17 = OMemStreamWrite;
  v18 = v9;
  if (ParallelCompressionEncode(&v14))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "plzmaEncodeBuffer", 358, 54, 0, "encode", v14, v15, v16, v17, v18);
LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  v11 = 0;
LABEL_8:
  NWritten = OMemStreamGetNWritten(v10);
  IMagicStreamDestroy(v8);
  IMagicStreamDestroy(v10);
  if (v11)
  {
    return -1;
  }

  else
  {
    return NWritten;
  }
}

void *StringTableCreate()
{
  v0 = calloc(1uLL, 0x28uLL);
  if (!v0)
  {
    v1 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableCreate", 30, 35, *v1, "malloc");
  }

  return v0;
}

uint64_t stringTableReserve(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 4);
  if (v2 >= a2)
  {
    return 0;
  }

  if (v2)
  {
    v4 = v2 + (v2 >> 1);
  }

  else
  {
    v4 = 32;
  }

  if (v4 <= a2)
  {
    v4 = a2;
  }

  *(a1 + 4) = v4;
  v5 = reallocf(*(a1 + 8), 16 * v4);
  *(a1 + 8) = v5;
  if (v5)
  {
    return 0;
  }

  v7 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "stringTableReserve", 23, 35, *v7, "malloc");
  return 0xFFFFFFFFLL;
}

void StringTableDestroy(void **a1)
{
  if (a1)
  {
    BlobBufferFree((a1 + 2));
    free(a1[1]);

    free(a1);
  }
}

uint64_t StringTableAppend(unsigned int *a1, const void *a2, size_t a3, _DWORD *a4)
{
  if (a4)
  {
    *a4 = *a1;
  }

  if (HIDWORD(a3))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppend", 74, 35, 0, "string too long for StringTable");
  }

  else if (stringTableReserve(a1, *a1 + 1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppend", 77, 35, 0, "increasing string table capacity");
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0;
    if (!BlobBufferStore((a1 + 4), 0, a3 + 1, v11))
    {
      v8 = *(a1 + 1) + 16 * *a1;
      v9 = v11[0];
      *v8 = v11[0];
      *(v8 + 8) = a3;
      v10 = (*(a1 + 4) + v9);
      memcpy(v10, a2, a3);
      result = 0;
      *(v10 + a3) = 0;
      ++*a1;
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppend", 81, 35, 0, "insertion failed in string table");
  }

  return 0xFFFFFFFFLL;
}

uint64_t StringTableAppendTable(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = *a1;
  }

  if (!*a2)
  {
    return 0;
  }

  if (stringTableReserve(a1, *a1 + *a2))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppendTable", 152, 35, 0, "increasing string table capacity");
    return 0xFFFFFFFFLL;
  }

  v11[0] = 0;
  v11[1] = 0;
  if (BlobBufferStore(a1 + 16, *(a2 + 4), *(a2 + 3), v11))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppendTable", 156, 35, 0, "increasing blob capacity failed");
    return 0xFFFFFFFFLL;
  }

  if (*a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = *(a1 + 8);
    do
    {
      v9 = v7 + *a1;
      *(v8 + 16 * v9) = *(*(a2 + 1) + v6);
      v8 = *(a1 + 8);
      *(v8 + 16 * v9) += v11[0];
      ++v7;
      v10 = *a2;
      v6 += 16;
    }

    while (v7 < v10);
  }

  else
  {
    LODWORD(v10) = 0;
  }

  result = 0;
  *a1 += v10;
  return result;
}

size_t StringTableSort(unsigned int *a1, void *a2)
{
  result = *a1;
  if (result)
  {
    if (a2)
    {
      v5 = calloc(result, 4uLL);
      if (!v5)
      {
        v19 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableSort", 195, 35, *v19, "malloc");
        return 0xFFFFFFFFLL;
      }

      v6 = v5;
      *a2 = v5;
      v7 = *a1;
      if (v7)
      {
        v8 = 0;
        v9 = vdupq_n_s64(v7 - 1);
        v10 = xmmword_2980690D0;
        v11 = xmmword_2980690E0;
        v12 = (*(a1 + 1) + 44);
        v13 = vdupq_n_s64(4uLL);
        do
        {
          v14 = vmovn_s64(vcgeq_u64(v9, v11));
          if (vuzp1_s16(v14, *v9.i8).u8[0])
          {
            *(v12 - 8) = v8;
          }

          if (vuzp1_s16(v14, *&v9).i8[2])
          {
            *(v12 - 4) = v8 + 1;
          }

          if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
          {
            *v12 = v8 + 2;
            v12[4] = v8 + 3;
          }

          v8 += 4;
          v10 = vaddq_s64(v10, v13);
          v11 = vaddq_s64(v11, v13);
          v12 += 16;
        }

        while (((v7 + 3) & 0x1FFFFFFFCLL) != v8);
      }
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = result;
    }

    qsort_r(*(a1 + 1), v7, 0x10uLL, a1, stringTableIndexCompareProc);
    if (*a1 < 2)
    {
      v17 = 1;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      v17 = 1;
      do
      {
        v18 = *(a1 + 1);
        if (!strcmp((*(a1 + 4) + *(v18 + 16 * (v17 - 1))), (*(a1 + 4) + *(v18 + v15 + 16))))
        {
          if (v6)
          {
            v6[*(v18 + v15 + 28)] = v17 - 1;
          }
        }

        else
        {
          if (v6)
          {
            v6[*(v18 + v15 + 28)] = v17;
          }

          if (v16 != v17)
          {
            *(v18 + 16 * v17) = *(v18 + v15 + 16);
          }

          ++v17;
        }

        ++v16;
        v15 += 16;
      }

      while (v16 < *a1);
    }

    result = 0;
    *a1 = v17;
  }

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
  NWritten = OMemStreamGetNWritten(v21);
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

          v36 = (NWritten + v33);
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
          v41 -= *(v22 + v27 + v31) == *(NWritten + v27);
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
        v50 = *(v22 + v101 + v44) - *(NWritten + v102 + v44);
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
      v62 = (NWritten - 1 + v27);
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
          v79 = *(NWritten + v27 - v60 + v77);
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

_DWORD *ParallelCompressionAFSCStreamOpen(int a1, unint64_t a2, unsigned int a3, int a4)
{
  v8 = calloc(1uLL, 0x78uLL);
  if (!v8)
  {
    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamOpen", 163, 86, *v11, "malloc");
LABEL_46:
    free(v8);
    return 0;
  }

  if (!a2)
  {
    v9 = "File too small for AFSC";
    v10 = 167;
    goto LABEL_7;
  }

  if (a2 >= 0xFA000001)
  {
    v9 = "File too large for AFSC";
    v10 = 168;
LABEL_7:
    v12 = 0;
LABEL_45:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamOpen", v10, 86, v12, v9, v29);
    free(*(v8 + 5));
    free(*(v8 + 8));
    free(*(v8 + 10));
    free(*(v8 + 11));
    goto LABEL_46;
  }

  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = 4;
  }

  v14 = a3 - 3;
  if (a3 - 3 <= 0xA && ((0x551u >> v14) & 1) != 0)
  {
    v13 = dword_29806915C[v14];
  }

  if (v13 <= 9)
  {
    if (v13 == 4)
    {
      v15 = 1285;
      goto LABEL_25;
    }

    if (v13 == 8)
    {
      v15 = 2304;
      v16 = 6;
      goto LABEL_26;
    }

    goto LABEL_41;
  }

  if (v13 == 10)
  {
    v15 = 0;
    v17 = 0;
    v16 = -52;
    goto LABEL_28;
  }

  if (v13 == 12)
  {
    v15 = COMPRESSION_LZFSE;
    goto LABEL_25;
  }

  if (v13 != 14)
  {
LABEL_41:
    v29 = v13;
    v9 = "invalid compression type %d";
    v10 = 192;
    goto LABEL_7;
  }

  v15 = COMPRESSION_LZBITMAP;
LABEL_25:
  v16 = -1;
LABEL_26:
  v17 = compression_encode_scratch_buffer_size(v15);
  v18 = compression_decode_scratch_buffer_size(v15);
  if (v17 <= v18)
  {
    v17 = v18;
  }

LABEL_28:
  *v8 = a1;
  v19 = (a2 + 0xFFFF) >> 16;
  *(v8 + 1) = a2;
  v8[4] = v13;
  v8[5] = v15;
  *(v8 + 24) = v16;
  v8[7] = a4;
  v8[8] = v19;
  v20 = calloc(v19 + 1, 4uLL);
  *(v8 + 5) = v20;
  if (!v20)
  {
    v12 = *__error();
    v9 = "malloc";
    v10 = 210;
    goto LABEL_45;
  }

  v21 = v20;
  *(v8 + 3) = xmmword_298069110;
  v22 = malloc(0x100000uLL);
  *(v8 + 8) = v22;
  if (!v22)
  {
    v12 = *__error();
    v9 = "malloc";
    v10 = 214;
    goto LABEL_45;
  }

  *(v8 + 9) = 0;
  v23 = malloc(0x10000uLL);
  *(v8 + 10) = v23;
  if (!v23)
  {
    v12 = *__error();
    v9 = "malloc";
    v10 = 217;
    goto LABEL_45;
  }

  if (v17)
  {
    v24 = malloc(v17);
    *(v8 + 11) = v24;
    if (!v24)
    {
      v12 = *__error();
      v9 = "malloc";
      v10 = 221;
      goto LABEL_45;
    }
  }

  v25 = 2;
  if (v8[4] == 4)
  {
    v25 = 3;
  }

  v26 = 4;
  if (v8[4] == 4)
  {
    v26 = 264;
  }

  v27 = (v8[8] << v25) + v26;
  if (HIDWORD(v27))
  {
    v9 = "File too large for AFSC";
    v10 = 235;
    goto LABEL_7;
  }

  v8[27] = v27;
  *v21 = v27;
  v8[26] = 0;
  *(v8 + 12) = 0;
  v8[28] = 0;
  return v8;
}

unint64_t ParallelCompressionAFSCStreamWrite(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 96) + a3 <= *(a1 + 8))
  {
    if (!a3)
    {
      return 0;
    }

    v3 = 0;
    v7 = *(a1 + 56);
    while (v7 + 65537 <= *(a1 + 48) || (flushToResourceFork(a1) & 0x80000000) == 0)
    {
      v8 = *(a1 + 72);
      if (0x10000 - v8 + v3 <= a3)
      {
        v9 = 0x10000 - v8;
      }

      else
      {
        v9 = a3 - v3;
      }

      if (v9 == 0x10000)
      {
        v10 = (a2 + v3);
      }

      else
      {
        v10 = *(a1 + 80);
        memcpy(&v10[v8], (a2 + v3), v9);
        v8 = *(a1 + 72);
      }

      v11 = *(a1 + 96) + v9;
      *(a1 + 96) = v11;
      v3 += v9;
      v12 = v8 + v9;
      *(a1 + 72) = v8 + v9;
      if ((v8 + v9) >> 16 || v11 >= *(a1 + 8))
      {
        v14 = *(a1 + 56);
        v13 = *(a1 + 64);
        v15 = (v13 + v14);
        v16 = *(a1 + 20);
        v17 = v12 < 0x78 || v16 == 0;
        if (v17 || (v18 = compression_encode_buffer((v13 + v14), 0x10000uLL, v10, v12, *(a1 + 88), v16)) == 0 || (*(a1 + 28) & 1) != 0 && (v19 = v18 + (v18 >> 6), v18 = v19 + 32, v19 == -32) || v18 > *(a1 + 72) + 1)
        {
          *v15 = *(a1 + 24);
          memcpy(v15 + 1, v10, *(a1 + 72));
          v18 = *(a1 + 72) + 1;
        }

        *(a1 + 72) = 0;
        v7 = *(a1 + 56) + v18;
        *(a1 + 56) = v7;
        *(*(a1 + 40) + 4 * ++*(a1 + 104)) = *(*(a1 + 40) + 4 * *(a1 + 104)) + v18;
        if (v3 < a3)
        {
          continue;
        }
      }

      return v3;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamWrite", 270, 86, 0, "update resource fork");
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamWrite", 262, 86, 0, "too many bytes received");
  }

  return -1;
}

uint64_t flushToResourceFork(uint64_t a1)
{
  v2 = fsetxattr(*a1, "com.apple.ResourceFork", *(a1 + 64), *(a1 + 56), *(a1 + 108), 0);
  if (v2 < 0)
  {
    v3 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "flushToResourceFork", 142, 86, *v3, "fsetxattr resource fork");
  }

  v4 = *(a1 + 108) + *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 108) = v4;
  *(a1 + 112) = 1;
  return (v2 >> 31);
}

uint64_t ParallelCompressionAFSCStreamClose(uint64_t a1)
{
  v51 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    return 0;
  }

  memset(&v35, 0, sizeof(v35));
  if (*(a1 + 96) >= *(a1 + 8) && !*(a1 + 72))
  {
    v7 = *(a1 + 112);
    v8 = *(a1 + 20);
    if (v8)
    {
      v8 = (*(a1 + 28) >> 1) & 1;
    }

    if (*(a1 + 32) > 1u)
    {
      v8 = 1;
    }

    if ((*(a1 + 56) - 3569) < 0xFFFFFFFFFFFFF1FFLL)
    {
      v8 = 1;
    }

    if (v8 | v7)
    {
      if ((flushToResourceFork(a1) & 0x80000000) != 0)
      {
        v2 = "update resource fork";
        v3 = 341;
        goto LABEL_5;
      }

      v7 = *(a1 + 112);
    }

    v9 = (__PAIR64__(*(a1 + 16), v7) - 1) >> 32;
    v10 = *(a1 + 8);
    v11 = *(a1 + 80);
    *v11 = 1668116582;
    *(v11 + 4) = v9;
    *(v11 + 8) = v10;
    v12 = 16;
    *(a1 + 72) = 16;
    if (!*(a1 + 112))
    {
      memcpy((*(a1 + 80) + 16), *(a1 + 64), *(a1 + 56));
      v12 = *(a1 + 72) + *(a1 + 56);
      *(a1 + 72) = v12;
      *(a1 + 56) = 0;
    }

    if (fsetxattr(*a1, "com.apple.decmpfs", *(a1 + 80), v12, 0, 0) < 0)
    {
      v4 = *__error();
      v2 = "fsetxattr decmpfs";
      v3 = 363;
      goto LABEL_6;
    }

    if (!*(a1 + 112))
    {
      v14 = 0;
      goto LABEL_36;
    }

    if (*(a1 + 16) == 4)
    {
      v13 = *(a1 + 64);
      *v13 = old_resource_fork_map;
      *(v13 + 16) = unk_298069138;
      *(v13 + 32) = xmmword_298069148;
      *(v13 + 48) = 0;
      *(a1 + 56) = 50;
      if ((flushToResourceFork(a1) & 0x80000000) != 0)
      {
        v2 = "update resource fork";
        v3 = 373;
        goto LABEL_5;
      }

      v14 = *(a1 + 108);
      if (*(a1 + 16) == 4)
      {
        v15 = *(a1 + 32);
        if ((8 * v15) + 264 > *(a1 + 48))
        {
          v34 = (8 * v15) + 264;
          v2 = "File a radar to increase obuf_capacity, sz=%zu";
          v3 = 382;
          goto LABEL_5;
        }

        v36 = 0u;
        v37 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v50 = 0u;
        v25 = *(a1 + 64);
        *v25 = 0x10000;
        *(v25 + 4) = vrev32_s8(vadd_s32(vdup_n_s32(v14), 0xFFFFFECEFFFFFFCELL));
        *(v25 + 12) = 838860800;
        v26 = v37;
        *(v25 + 16) = v36;
        *(v25 + 32) = v26;
        v27 = v41;
        *(v25 + 80) = v40;
        *(v25 + 96) = v27;
        v28 = v39;
        *(v25 + 48) = v38;
        *(v25 + 64) = v28;
        v29 = v45;
        *(v25 + 144) = v44;
        *(v25 + 160) = v29;
        v30 = v43;
        *(v25 + 112) = v42;
        *(v25 + 128) = v30;
        v31 = v49;
        *(v25 + 208) = v48;
        *(v25 + 224) = v31;
        v32 = v47;
        *(v25 + 176) = v46;
        *(v25 + 192) = v32;
        *(v25 + 240) = v50;
        *(v25 + 256) = bswap32(v14 - 310);
        *(v25 + 260) = v15;
        v16 = 264;
        *(a1 + 56) = 264;
        if (*(a1 + 32))
        {
          v33 = 0;
          v16 = 264;
          do
          {
            *(*(a1 + 64) + v16) = (*(*(a1 + 40) + 4 * v33) - 260) | ((*(*(a1 + 40) + 4 * v33 + 4) - *(*(a1 + 40) + 4 * v33)) << 32);
            ++v33;
            v16 = *(a1 + 56) + 8;
            *(a1 + 56) = v16;
          }

          while (v33 < *(a1 + 32));
        }

        goto LABEL_35;
      }
    }

    else
    {
      v14 = *(a1 + 108);
    }

    v16 = (4 * *(a1 + 32) + 4);
    if (*(a1 + 48) < v16)
    {
      v34 = (4 * *(a1 + 32) + 4);
      v2 = "File a radar to increase obuf_capacity, sz=%zu";
      v3 = 408;
      goto LABEL_5;
    }

    memcpy(*(a1 + 64), *(a1 + 40), (4 * *(a1 + 32) + 4));
    *(a1 + 56) = v16;
LABEL_35:
    if (fsetxattr(*a1, "com.apple.ResourceFork", *(a1 + 64), v16, 0, 0) < 0)
    {
      v4 = *__error();
      v2 = "fsetxattr resource fork header";
      v3 = 418;
      goto LABEL_6;
    }

LABEL_36:
    if (ftruncate(*a1, 0))
    {
      v4 = *__error();
      v2 = "ftruncate";
      v3 = 422;
      goto LABEL_6;
    }

    if ((*(a1 + 28) & 4) != 0 || !*(a1 + 112) || 93 * *(a1 + 8) / 0x64uLL >= v14)
    {
      if (fstat(*a1, &v35))
      {
        v4 = *__error();
        v2 = "fstat";
        v3 = 465;
        goto LABEL_6;
      }

      if (fchflags(*a1, v35.st_flags | 0x20) < 0)
      {
        v4 = *__error();
        v2 = "fchflags UF_COMPRESSED";
        v3 = 466;
        goto LABEL_6;
      }
    }

    else
    {
      if (*(a1 + 32))
      {
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v19 = (*(a1 + 40) + 4 * v17);
          v20 = v19[1];
          v21 = v20 - *v19;
          if (v20 == *v19 || v21 >= 0x10002)
          {
            v2 = "Invalid chunk size";
            v3 = 437;
            goto LABEL_5;
          }

          if (fgetxattr(*a1, "com.apple.ResourceFork", *(a1 + 64), v20 - *v19, *v19, 32) != v21)
          {
            v2 = "reading chunk";
            v3 = 440;
            goto LABEL_5;
          }

          v23 = *(a1 + 64);
          if (*v23 == *(a1 + 24))
          {
            v24 = (v21 - 1);
            memcpy(*(a1 + 80), v23 + 1, v24);
          }

          else
          {
            v24 = compression_decode_buffer(*(a1 + 80), 0x10000uLL, v23, v21, *(a1 + 88), *(a1 + 20));
          }

          if (v24 != 0x10000)
          {
            if (!v24)
            {
              v2 = "Decompression";
              v3 = 451;
              goto LABEL_5;
            }

            if (v24 + v18 != *(a1 + 8))
            {
              break;
            }
          }

          if (pwrite(*a1, *(a1 + 80), v24, v18) != v24)
          {
            v2 = "writing chunk";
            v3 = 454;
            goto LABEL_5;
          }

          ++v17;
          v18 += v24;
          if (v17 >= *(a1 + 32))
          {
            goto LABEL_56;
          }
        }

        v2 = "Invalid uncompressed chunk size";
        v3 = 452;
        goto LABEL_5;
      }

LABEL_56:
      if (fremovexattr(*a1, "com.apple.ResourceFork", 32) < 0)
      {
        v4 = *__error();
        v2 = "Removing xattr";
        v3 = 459;
        goto LABEL_6;
      }

      if (fremovexattr(*a1, "com.apple.decmpfs", 32) < 0)
      {
        v4 = *__error();
        v2 = "Removing xattr";
        v3 = 460;
        goto LABEL_6;
      }
    }

    v5 = 0;
    goto LABEL_7;
  }

  v2 = "not enough bytes received";
  v3 = 325;
LABEL_5:
  v4 = 0;
LABEL_6:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamClose", v3, 86, v4, v2, v34);
  v5 = 0xFFFFFFFFLL;
LABEL_7:
  free(*(a1 + 40));
  free(*(a1 + 64));
  free(*(a1 + 80));
  free(*(a1 + 88));
  free(a1);
  return v5;
}

uint64_t ParallelCompressionAFSCGetMetadataFD(int a1, off_t *a2, unsigned int *a3, _DWORD *a4)
{
  memset(&v20, 0, sizeof(v20));
  if (fstat(a1, &v20))
  {
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadataFD", 488, 86, *v8, "fstat");
    v9 = 0;
LABEL_21:
    v10 = 0xFFFFFFFFLL;
    goto LABEL_22;
  }

  if ((v20.st_flags & 0x20) != 0)
  {
    v9 = malloc(0x1000uLL);
    if (!v9)
    {
      v14 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadataFD", 501, 86, v14, "malloc");
      goto LABEL_21;
    }

    v11 = fgetxattr(a1, "com.apple.decmpfs", v9, 0x1000uLL, 0, 32);
    if ((v11 & 0x8000000000000000) != 0)
    {
      v12 = "Missing decmpfs xattr";
      v13 = 504;
    }

    else if (v11 > 0xF)
    {
      if (*v9 == 1668116582)
      {
        v15 = *(v9 + 1);
        if (v15 > 0xE)
        {
          goto LABEL_26;
        }

        v16 = v9[1];
        if (((1 << v15) & 0x2A88) != 0)
        {
          v10 = 0;
          *a2 = v16;
          *a3 = v15;
          goto LABEL_5;
        }

        if (((1 << v15) & 0x5510) != 0)
        {
          *a2 = v16;
          *a3 = v15;
          v17 = fgetxattr(a1, "com.apple.ResourceFork", 0, 0, 0, 32);
          if ((v17 & 0x8000000000000000) != 0)
          {
            v12 = "Missing resource fork xattr";
            v13 = 532;
          }

          else
          {
            if (!HIDWORD(v17))
            {
              v10 = 0;
              *a4 = v17;
              goto LABEL_22;
            }

            v12 = "Invalid resource fork xattr";
            v13 = 533;
          }
        }

        else
        {
LABEL_26:
          v19 = *(v9 + 1);
          v12 = "Invalid compression type %u in decmpfs xattr";
          v13 = 524;
        }
      }

      else
      {
        v12 = "Invalid decmpfs xattr";
        v13 = 507;
      }
    }

    else
    {
      v12 = "Truncated decmpfs xattr";
      v13 = 505;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadataFD", v13, 86, 0, v12, v19);
    goto LABEL_21;
  }

  v9 = 0;
  v10 = 0;
  *a2 = v20.st_size;
  *a3 = -1;
LABEL_5:
  *a4 = 0;
LABEL_22:
  free(v9);
  return v10;
}

uint64_t ParallelCompressionAFSCGetMetadata(const char *a1, off_t *a2, unsigned int *a3, _DWORD *a4)
{
  v8 = open(a1, 0);
  if (v8 < 0)
  {
    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadata", 550, 86, *v11, "open %s", a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    if ((ParallelCompressionAFSCGetMetadataFD(v8, a2, a3, a4) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadata", 553, 86, 0, "retrieving AFSC metadata: %s", a1);
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = 0;
    }

    close(v9);
  }

  return v10;
}

uint64_t ParallelCompressionAFSCFixupMetadata(const std::__fs::filesystem::path *a1, unsigned int a2, const std::__fs::filesystem::path *a3)
{
  v160 = *MEMORY[0x29EDCA608];
  v142 = -1;
  v141 = 0;
  v140 = 0;
  memset(&v139, 0, sizeof(v139));
  v158 = 0;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v143 = 0u;
  value[0] = 0;
  value[1] = 0;
  if (__strlcpy_chk() >= 0x400)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 581, 86, 0, "Path too long: %s");
LABEL_5:
    v6 = 0;
    v7 = 0;
LABEL_138:
    v26 = 0;
    v50 = 0;
    v52 = 0;
    v23 = -1;
    goto LABEL_139;
  }

  if (__strlcat_chk() >= 0x400)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 582, 86, 0, "Path too long: %s");
    goto LABEL_5;
  }

  v7 = malloc(0x100000uLL);
  if (!v7)
  {
    v12 = *__error();
    v10 = "malloc";
    v11 = 586;
LABEL_137:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", v11, 86, v12, v10, v115, v116, v117, v118, v119);
    v6 = 0;
    goto LABEL_138;
  }

  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = 4;
  }

  if ((v8 + 1) > 0xF)
  {
    goto LABEL_135;
  }

  v9 = 1 << (v8 + 1);
  if ((v9 & 0x5511) != 0)
  {
    if (a3)
    {
      v115 = a3;
      v10 = "Invalid resource fork size request: %u";
      v11 = 605;
LABEL_136:
      v12 = 0;
      goto LABEL_137;
    }

    goto LABEL_16;
  }

  if ((v9 & 0xAA20) == 0)
  {
LABEL_135:
    v115 = v8;
    v10 = "Invalid compression type request %d";
    v11 = 608;
    goto LABEL_136;
  }

LABEL_16:
  if ((ParallelCompressionAFSCGetMetadata(a1, &v140, &v142, &v141) & 0x80000000) != 0)
  {
LABEL_134:
    v115 = a1;
    v10 = "obtain AFSC data: %s";
    v11 = 615;
    goto LABEL_136;
  }

  v13 = 0;
  v129 = 0;
  v14 = 0;
  v128 = (v7 + 66);
  v15 = vadd_s32(vdup_n_s32(a3), 0xFFFFFECEFFFFFFCELL);
  v16 = vrev32_s8(v15);
  position = v15.i32[0];
  v125 = bswap32(a3 - 310);
  v17 = (v8 - 4);
  v132 = 0x551u >> (v8 - 4);
  while (1)
  {
    v135 = v140;
    if (v140 >= 0xFA000001)
    {
      v10 = "Invalid AFSC data";
      v11 = 616;
      goto LABEL_136;
    }

    v134 = v13;
    if (v142 == v8)
    {
      if (!a3 || v141 == a3)
      {
        goto LABEL_154;
      }

      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }
    }

    else if ((v8 & 0x80000000) == 0)
    {
      v122 = v17;
      v18 = 4;
      if (v8 > 0xE)
      {
        v21 = v8;
      }

      else
      {
        v19 = 1 << v8;
        if (((1 << v8) & 0x5510) != 0)
        {
          v20 = 6;
        }

        else
        {
          v20 = 4;
        }

        if ((v19 & 0x2A88) != 0)
        {
          v18 = 4;
        }

        else
        {
          v18 = v20;
        }

        if ((v19 & 0x2A88) != 0)
        {
          v21 = v8 + 1;
        }

        else
        {
          v21 = v8;
        }
      }

      v22 = open(a1, 0);
      v23 = v22;
      if (v22 < 0)
      {
        v100 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 660, 86, v100, "open: %s");
      }

      else
      {
        if (!fstat(v22, &v139))
        {
          v24 = mkstemp(&__from);
          v25 = v24;
          if (v24 < 0)
          {
            v104 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 664, 86, *v104, "mkstemp");
            v6 = 0;
            v26 = 0;
          }

          else
          {
            v126 = v14;
            v26 = ParallelCompressionAFSCStreamOpen(v24, v135, v21, v18);
            if (v26)
            {
              v130 = v8;
              v136 = v7;
              v27 = 0;
              v28 = 0;
              v29 = 0x100000;
              v30 = 0x100000;
              v31 = v135;
              while (1)
              {
                v32 = v31 >= v30 ? v30 : v31;
                if (v30 - 0x100000 >= v31)
                {
                  break;
                }

                v33 = v32 + v27;
                v34 = read(v23, v136, v32 + v27);
                if (v34 < 0)
                {
                  v93 = *__error();
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 675, 86, v93, "read: %s");
                  goto LABEL_152;
                }

                if (v34 < v33)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 676, 86, 0, "truncated read: %s");
LABEL_152:
                  v6 = 0;
LABEL_153:
                  v50 = 0;
                  v52 = 0;
                  v7 = v136;
                  goto LABEL_140;
                }

                v28 += 0x100000;
                v35 = ParallelCompressionAFSCStreamWrite(v26, v136, v33);
                v30 += 0x100000;
                v27 -= 0x100000;
                v31 = v135;
                if (v135 >= v28)
                {
                  v36 = v28;
                }

                else
                {
                  v36 = v135;
                }

                v29 -= 0x100000;
                if (v35 < (v36 + v29))
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 678, 86, 0, "write to stream failed: %s");
                  goto LABEL_152;
                }
              }

              if ((ParallelCompressionAFSCStreamClose(v26) & 0x80000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 683, 86, 0, "Stream close error");
                v6 = 0;
                v26 = 0;
                goto LABEL_153;
              }

              fchown(v25, v139.st_uid, v139.st_gid);
              fchmod(v25, v139.st_mode & 0xFFF);
              close(v23);
              close(v25);
              rename(&__from, a1, v67);
              v69 = v68;
              unlink(&__from);
              v7 = v136;
              v8 = v130;
              v17 = v122;
              v14 = v126;
              if ((v69 & 0x80000000) == 0)
              {
                goto LABEL_55;
              }

              v12 = *__error();
              v115 = a1;
              v10 = "rename: %s";
              v11 = 694;
              goto LABEL_137;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 667, 86, 0, "creating compression stream %s", a1);
            v6 = 0;
          }

          v50 = 0;
          v52 = 0;
          goto LABEL_140;
        }

        v102 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 661, 86, v102, "stat: %s");
      }

LABEL_149:
      v6 = 0;
      v26 = 0;
      v50 = 0;
      v52 = 0;
      goto LABEL_139;
    }

    v37 = open(a1, 9);
    v23 = v37;
    if (v37 < 0)
    {
      v96 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 629, 86, v96, "open %s");
      goto LABEL_149;
    }

    if (write(v37, 0, 0) < 0)
    {
      v98 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 630, 86, v98, "write", v115);
      goto LABEL_149;
    }

    if (close(v23) < 0)
    {
      v12 = *__error();
      v10 = "close";
      v11 = 631;
      goto LABEL_137;
    }

    v142 = -1;
    v141 = 0;
LABEL_55:
    if ((ParallelCompressionAFSCGetMetadata(a1, &v140, &v142, &v141) & 0x80000000) != 0)
    {
      v115 = a1;
      v10 = "obtain AFSC data: %s";
      v11 = 699;
      goto LABEL_136;
    }

    if (v142 != v8)
    {
      v10 = "Couldn't convert to requested compression type";
      v11 = 700;
      goto LABEL_136;
    }

    if (!a3)
    {
      goto LABEL_154;
    }

    v38 = v141;
    v39 = a3 - v141;
    if (a3 == v141)
    {
      goto LABEL_154;
    }

    if (a3 >= v141)
    {
      break;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 711, 86, "Can't shrink resource fork: %s (current %u, target %u)", a1, v141, a3);
    v40 = v8;
LABEL_61:
    if (v134)
    {
      v118 = v38;
      v119 = a3;
      v10 = "Second pass fixup failed: %s, compression_type=%d (expected %d), resource_fork_size=%u (expected %u)";
      v116 = v40;
      v117 = v8;
      v115 = a1;
      v11 = 852;
      goto LABEL_136;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 859, 86, "First pass fixup failed: %s, compression_type=%d (expected %d), resource_fork_size=%u (expected %u)", a1, v40, v8, v38, a3);
    v41 = open(a1, 9);
    v23 = v41;
    if (v41 < 0)
    {
      v97 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 864, 86, v97, "open %s");
      goto LABEL_149;
    }

    if (write(v41, 0, 0) < 0)
    {
      v99 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 865, 86, v99, "write", v115);
      goto LABEL_149;
    }

    if (close(v23) < 0)
    {
      v12 = *__error();
      v10 = "close";
      v11 = 866;
      goto LABEL_137;
    }

    v142 = -1;
    v141 = 0;
    v42 = ParallelCompressionAFSCGetMetadata(a1, &v140, &v142, &v141);
    v13 = 1;
    if (v42 < 0)
    {
      goto LABEL_134;
    }
  }

  if (v17 > 0xA || (v132 & 1) == 0)
  {
    v115 = v8;
    v10 = "Invalid compression type %u";
    v11 = 722;
    goto LABEL_136;
  }

  v133 = dword_298069188[v17];
  v43 = open(a1, 0);
  v23 = v43;
  if (v43 < 0)
  {
    v101 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 727, 86, v101, "open: %s");
    goto LABEL_149;
  }

  if (fstat(v43, &v139))
  {
    v103 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 728, 86, v103, "fstat", v115);
    goto LABEL_149;
  }

  if (fgetxattr(v23, "com.apple.decmpfs", value, 0x10uLL, 0, 32) != 16)
  {
    v105 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 729, 86, v105, "Reading decmpfs", v115);
    goto LABEL_149;
  }

  if (fchflags(v23, v139.st_flags & 0xFFFFFFDF) < 0)
  {
    v106 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 730, 86, v106, "fchflags UF_COMPRESSED", v115);
    goto LABEL_149;
  }

  v127 = v14;
  v131 = v8;
  v121 = (v135 + 0xFFFF) >> 16;
  v123 = v17;
  v44 = v38 + 0x100000;
  v45 = -v38;
  v46 = v38;
  while (1)
  {
    v47 = a3 >= v44 ? v44 : a3;
    if (v46 >= a3)
    {
      break;
    }

    v48 = v47 + v45;
    if (v46 == v38)
    {
      __memset_chk();
    }

    v49 = fsetxattr(v23, "com.apple.ResourceFork", v7, v48, v46, 0);
    v44 += 0x100000;
    v45 -= 0x100000;
    v46 += 0x100000;
    if (v49)
    {
      v92 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 738, 86, v92, "Expanding resource fork", v115);
      goto LABEL_149;
    }
  }

  v50 = malloc(4 * v121 + 4);
  size = 4 * v121 + 4;
  v51 = malloc(size);
  v52 = v51;
  if (!v50 || !v51)
  {
    v107 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 744, 86, v107, "malloc");
    goto LABEL_186;
  }

  if (v131 != 4)
  {
    v61 = 4 * v121 + 4;
    if (fgetxattr(v23, "com.apple.ResourceFork", v50, size, 0, 32) != size)
    {
      v109 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 763, 86, v109, "Reading chunk sizes");
      goto LABEL_186;
    }

LABEL_99:
    v137 = v7;
    memcpy(v52, v50, v61);
    v52[v121] = v50[v121] + v39;
    v70 = (v135 + 0xFFFF) >> 16;
    while (v39 && v70)
    {
      v71 = v50[v70 - 1];
      v72 = v50[v70] - v71;
      if (fgetxattr(v23, "com.apple.ResourceFork", v137, v72, v71, 32) != v72)
      {
        v94 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 777, 86, *v94, "Reading chunk");
        v6 = 0;
        v26 = 0;
        v25 = -1;
        v7 = v137;
        goto LABEL_140;
      }

      v73 = 0x10000 - v72;
      if (v133 == *v137 || v72 > 0x10000)
      {
        v73 = 0;
      }

      if (v39 >= v73)
      {
        v75 = v73;
      }

      else
      {
        v75 = v39;
      }

      if (v73)
      {
        bzero(v137 + v72, v75);
      }

      v76 = (v75 + v72);
      v77 = v52[v70] - v76;
      v52[v70 - 1] = v77;
      v39 -= v75;
      --v70;
      if (fsetxattr(v23, "com.apple.ResourceFork", v137, v76, v77, 0))
      {
        v95 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 791, 86, *v95, "Writing chunk");
        v6 = 0;
        v26 = 0;
        v25 = -1;
        v7 = v137;
        goto LABEL_140;
      }
    }

    if (v131 == 4)
    {
      v78 = v156;
      v7 = v137;
      *(v137 + 51) = v155;
      *(v137 + 55) = v78;
      *(v137 + 59) = v157;
      v79 = v152;
      *(v137 + 35) = v151;
      *(v137 + 39) = v79;
      v80 = v154;
      *(v137 + 43) = v153;
      *(v137 + 47) = v80;
      v81 = v148;
      *(v137 + 19) = v147;
      *(v137 + 23) = v81;
      v82 = v150;
      *(v137 + 27) = v149;
      *(v137 + 31) = v82;
      v83 = v144;
      *(v137 + 3) = v143;
      *(v137 + 7) = v83;
      v84 = v146;
      *(v137 + 11) = v145;
      v14 = v127;
      *v137 = v127;
      *(v137 + 1) = v16;
      v85 = v158;
      *(v137 + 15) = v84;
      v137[63] = v85;
      v137[64] = v125;
      v137[65] = v129;
      if (v135)
      {
        if (v121 <= 1)
        {
          v86 = 1;
        }

        else
        {
          v86 = v121;
        }

        v87 = v52 + 1;
        v88 = *v52;
        v89 = v128;
        do
        {
          v90 = *v87++;
          *v89++ = (v88 - 260) | ((v90 - v88) << 32);
          v88 = v90;
          --v86;
        }

        while (v86);
      }

      if (fsetxattr(v23, "com.apple.ResourceFork", v137, 8 * v121 + 264, 0, 0))
      {
        v112 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 817, 86, v112, "Writing resource fork header");
        goto LABEL_186;
      }

      if (fsetxattr(v23, "com.apple.ResourceFork", &old_resource_fork_map, 0x32uLL, position, 0))
      {
        v114 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 820, 86, v114, "Writing resource map");
        goto LABEL_186;
      }
    }

    else
    {
      v7 = v137;
      v14 = v127;
      if (fsetxattr(v23, "com.apple.ResourceFork", v52, size, 0, 0))
      {
        v113 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 827, 86, v113, "Writing chunk sizes");
        goto LABEL_186;
      }
    }

    if (fsetxattr(v23, "com.apple.decmpfs", value, 0x10uLL, 0, 0))
    {
      v110 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 831, 86, v110, "Writing decmpfs");
      goto LABEL_186;
    }

    if (fchflags(v23, v139.st_flags | 0x20) < 0)
    {
      v111 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 832, 86, v111, "fchflags UF_COMPRESSED");
      goto LABEL_186;
    }

    close(v23);
    free(v50);
    free(v52);
    if ((ParallelCompressionAFSCGetMetadata(a1, &v140, &v142, &v141) & 0x80000000) == 0)
    {
      v40 = v142;
      v38 = v141;
      v8 = v131;
      if (v142 != v131)
      {
        v17 = v123;
        goto LABEL_61;
      }

      v17 = v123;
      if (v141 != a3)
      {
        goto LABEL_61;
      }

LABEL_154:
      if (v134)
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 876, 86, "Second pass fixup succeeded: %s", a1);
      }

      v26 = 0;
      v50 = 0;
      v52 = 0;
      v23 = -1;
      v6 = 1;
      goto LABEL_139;
    }

    v115 = a1;
    v10 = "obtain AFSC data: %s";
    v11 = 840;
    goto LABEL_136;
  }

  if (fgetxattr(v23, "com.apple.ResourceFork", v7, 8 * v121 + 264, 0, 32) == 8 * v121 + 264)
  {
    v53 = *v7;
    v54 = *(v7 + 55);
    v155 = *(v7 + 51);
    v156 = v54;
    v157 = *(v7 + 59);
    v158 = v7[63];
    v55 = *(v7 + 39);
    v151 = *(v7 + 35);
    v152 = v55;
    v56 = *(v7 + 47);
    v153 = *(v7 + 43);
    v154 = v56;
    v57 = *(v7 + 23);
    v147 = *(v7 + 19);
    v148 = v57;
    v58 = *(v7 + 31);
    v149 = *(v7 + 27);
    v150 = v58;
    v59 = *(v7 + 7);
    v143 = *(v7 + 3);
    v144 = v59;
    v60 = *(v7 + 15);
    v145 = *(v7 + 11);
    v146 = v60;
    v129 = v7[65];
    v127 = v53;
    if (v135)
    {
      v61 = 4 * v121 + 4;
      if (v121 <= 1)
      {
        v62 = 1;
      }

      else
      {
        v62 = v121;
      }

      v63 = v50 + 1;
      v64 = v128;
      do
      {
        v65 = *v64;
        v66 = *(v64++ + 1);
        v65 += 260;
        *(v63 - 1) = v65;
        *v63++ = v65 + v66;
        --v62;
      }

      while (v62);
    }

    else
    {
      v61 = 4 * v121 + 4;
    }

    goto LABEL_99;
  }

  v108 = *__error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 749, 86, v108, "Reading chunk sizes");
LABEL_186:
  v6 = 0;
  v26 = 0;
LABEL_139:
  v25 = -1;
LABEL_140:
  if ((ParallelCompressionAFSCStreamClose(v26) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 877, 86, 0, "Stream close error");
    v6 = 0;
  }

  if ((v23 & 0x80000000) == 0)
  {
    close(v23);
  }

  if ((v25 & 0x80000000) == 0)
  {
    close(v25);
    unlink(&__from);
  }

  free(v7);
  free(v50);
  free(v52);
  if (v6)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

ssize_t ParallelCompressionAFSCCompress(const char *a1, int a2)
{
  v36 = 0;
  v35 = -1;
  if ((ParallelCompressionAFSCGetMetadata(a1, &v36, &v35, &v34) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 907, 86, 0, "looking up AFSC data: %s");
    return 0xFFFFFFFFLL;
  }

  v4 = v36;
  if (!v36)
  {
    return 0;
  }

  if (v35 == -1)
  {
    if (!a2)
    {
      return 0;
    }

    v11 = malloc(0x10000uLL);
    if (v11)
    {
      v12 = open(a1, 2);
      if ((v12 & 0x80000000) == 0)
      {
        v13 = v12;
        v14 = ParallelCompressionAFSCStreamOpen(v12, v4, 0, 0);
        if (v14)
        {
          v15 = v14;
          v16 = 0;
          v17 = 0;
          v18 = 0x10000;
          v19 = 0x10000;
          while (1)
          {
            if (v4 >= v19)
            {
              v20 = v19;
            }

            else
            {
              v20 = v4;
            }

            if (v19 - 0x10000 >= v4)
            {
              v31 = 1;
              goto LABEL_43;
            }

            v21 = v20 + v16;
            v22 = read(v13, v11, v20 + v16);
            if (v22 < 0)
            {
              v32 = *__error();
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 950, 86, v32, "read: %s");
              goto LABEL_42;
            }

            if (v21 != v22)
            {
              v33 = a1;
              v25 = "truncated read: %s";
              v26 = 951;
              goto LABEL_41;
            }

            v23 = ParallelCompressionAFSCStreamWrite(v15, v11, v21);
            if ((v23 & 0x8000000000000000) != 0)
            {
              break;
            }

            v17 += 0x10000;
            v19 += 0x10000;
            v16 -= 0x10000;
            if (v4 >= v17)
            {
              v24 = v17;
            }

            else
            {
              v24 = v4;
            }

            v18 -= 0x10000;
            if (v24 + v18 != v23)
            {
              v33 = a1;
              v25 = "truncated write: %s";
              v26 = 954;
              goto LABEL_41;
            }
          }

          v33 = a1;
          v25 = "Stream write failed: %s";
          v26 = 953;
LABEL_41:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", v26, 86, 0, v25, v33);
LABEL_42:
          v31 = 0;
LABEL_43:
          if ((ParallelCompressionAFSCStreamClose(v15) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 956, 86, 0, "AFSC compression failed: %s");
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 942, 86, 0, "creating AFSC stream: %s");
        }

        v31 = 0;
LABEL_46:
        close(v13);
        if (v31)
        {
          v10 = 0;
        }

        else
        {
          v10 = 0xFFFFFFFFLL;
        }

        goto LABEL_49;
      }

      v30 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 940, 86, v30, "open: %s");
    }

    else
    {
      v29 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 938, 86, v29, "malloc");
    }

    v10 = 0xFFFFFFFFLL;
LABEL_49:
    free(v11);
    return v10;
  }

  if (a2)
  {
    return 0;
  }

  v5 = open(a1, 9);
  if (v5 < 0)
  {
    v28 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 921, 86, v28, "open: %s");
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = write(v5, 0, 0);
  if (v7 < 0)
  {
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 922, 86, *v8, "write: %s", a1);
  }

  if (close(v6) < 0)
  {
    v9 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 923, 86, *v9, "close: %s", a1);
  }

  return v7 >> 63;
}

uint64_t fullReplacementBXPatch5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v26 = *MEMORY[0x29EDCA608];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v9 = *(a1 + 32);
  if (a5 >= 1)
  {
    fwrite("Full replacement patch\n", 0x17uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  if (v9 + 60 <= a2)
  {
    if (v9 + 60 < a2)
    {
      fwrite("Extra bytes in patch (ignored)", 0x1EuLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    v11 = malloc(0x20000uLL);
    if (v11)
    {
      v12 = ILowMemoryDecoderStreamCreateWithBuffer(a1 + 60, v9, 0x20000uLL);
      if (v12)
      {
        v13 = OSHA1StreamCreate(a3, 0, a4);
        if (v13)
        {
          v14 = v13;
          v15 = *(a1 + 16);
          if (v15)
          {
            v16 = 0;
            while (1)
            {
              v17 = v15 - v16;
              if (v17 >= 0x20000)
              {
                v18 = 0x20000;
              }

              else
              {
                v18 = v17;
              }

              if (ILowMemoryDecoderStreamRead(v12, v11, v18) != v18)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "fullReplacementBXPatch5", 62, 42, 0, "reading from payload stream", v23);
                goto LABEL_32;
              }

              if (OSHA1StreamWrite(v14, v11, v18) != v18)
              {
                break;
              }

              v16 += v18;
              v15 = *(a1 + 16);
              if (v16 >= v15)
              {
                goto LABEL_18;
              }
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "fullReplacementBXPatch5", 64, 42, 0, "writing to digest stream", v23);
          }

          else
          {
LABEL_18:
            OSHA1StreamDestroy(v14, &v23);
            if (v23 == *(a1 + 40) && v24 == *(a1 + 48) && v25 == *(a1 + 56))
            {
              v10 = 0;
LABEL_33:
              free(v11);
              ILowMemoryDecoderStreamDestroy(v12);
              return v10;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "fullReplacementBXPatch5", 71, 42, 0, "Invalid output digest after patch application", v23);
          }
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "fullReplacementBXPatch5", 52, 42, 0, "Digest stream init", v23);
        }
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "fullReplacementBXPatch5", 51, 42, 0, "Payload stream init", v23);
      }
    }

    else
    {
      v21 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "fullReplacementBXPatch5", 50, 42, *v21, "malloc");
      v12 = 0;
    }

LABEL_32:
    v10 = 0xFFFFFFFFLL;
    goto LABEL_33;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "fullReplacementBXPatch5", 45, 42, 0, "Missing bytes in patch");
  return 0xFFFFFFFFLL;
}

uint64_t BXDiff5GetPatchInfo(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 < 8)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = 0xFFFFFFFFLL;
  if (a2 >= 0x3C && *a1 == 0x3035464649445842)
  {
    result = 0;
    *a3 = *(a1 + 16);
    v5 = *(a1 + 12) & 1;
    *(a3 + 8) = *(a1 + 8) == 0;
    *(a3 + 12) = v5;
  }

  return result;
}

uint64_t BXPatch5(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t), uint64_t a6, int a7)
{
  v8[0] = a1;
  v8[1] = a2;
  return BXPatch5StreamWithFlags(BXPatch5WithFlagsBufferStreamPRead, v8, a2, a3, a4, a5, a6, a7 > 0);
}

uint64_t BXPatch5WithFlags(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t), uint64_t a6, uint64_t a7)
{
  v8[0] = a1;
  v8[1] = a2;
  return BXPatch5StreamWithFlags(BXPatch5WithFlagsBufferStreamPRead, v8, a2, a3, a4, a5, a6, a7);
}

uint64_t BXPatch5StreamWithFlags(uint64_t (*a1)(uint64_t, void *, uint64_t, unint64_t), uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t, void *, uint64_t), uint64_t a7, uint64_t a8)
{
  v110 = *MEMORY[0x29EDCA608];
  if (a5 <= 0x3B)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 264, 42, 0, "Invalid patch size", a7, a8);
    return 0xFFFFFFFFLL;
  }

  if (*a4 != 0x3035464649445842)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 265, 42, 0, "Invalid patch header", a7, a8);
    return 0xFFFFFFFFLL;
  }

  v10 = *(a4 + 8);
  v11 = 28 * v10 + 60;
  if (v11 > a5)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 269, 42, 0, "Invalid patch size", a7, a8);
    return 0xFFFFFFFFLL;
  }

  v14 = a8 & 1;
  v15 = *(a4 + 24);
  v16 = __CFADD__(v11, v15);
  v17 = v11 + v15;
  if (v16)
  {
    v17 = -1;
  }

  if (!v10)
  {
    v36 = *(a4 + 32);
    v16 = __CFADD__(v17, v36);
    v37 = v17 + v36;
    if (v16)
    {
      v37 = -1;
    }

    if (v37 <= a5)
    {

      return fullReplacementBXPatch5(a4, a5, a6, a7, a8 & 1);
    }

LABEL_42:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 278, 42, 0, "Invalid patch size", a7, a8);
    return 0xFFFFFFFFLL;
  }

  v21 = *(a4 + 8);
  v22 = (a4 + 60);
  do
  {
    v23 = *v22;
    v22 = (v22 + 28);
    v16 = __CFADD__(v17, v23);
    v17 += v23;
    if (v16)
    {
      v17 = -1;
    }

    --v21;
  }

  while (v21);
  v24 = *(a4 + 32);
  v16 = __CFADD__(v17, v24);
  v25 = v17 + v24;
  if (v16)
  {
    v25 = -1;
  }

  if (v25 > a5)
  {
    goto LABEL_42;
  }

  v104 = (a4 + 60);
  *md = 0;
  v108 = 0;
  v109 = 0;
  memset(&c, 0, sizeof(c));
  v26 = malloc(0x40000uLL);
  if (!v26)
  {
    v39 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "getStreamSHA1Digest", 156, 42, v39, "malloc");
LABEL_48:
    free(v26);
    goto LABEL_49;
  }

  v102 = v14;
  CC_SHA1_Deprecated_Init(&c);
  v27 = 0;
  if (a3)
  {
    while (1)
    {
      v28 = v27 + 0x40000 <= a3 ? 0x40000 : a3 - v27;
      v29 = a1(a2, v26, v28, v27);
      if (v29 <= 0)
      {
        break;
      }

      v30 = v29;
      CC_SHA1_Deprecated_Update(&c, v26, v29);
      v27 += v30;
      if (v27 >= a3)
      {
        goto LABEL_27;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "getStreamSHA1Digest", 165, 42, 0, "inProc read");
    goto LABEL_48;
  }

LABEL_27:
  CC_SHA1_Deprecated_Final(md, &c);
  free(v26);
  if (v27 != a3)
  {
LABEL_49:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 285, 42, 0, "Input digest failed", v31, v32);
    return 0xFFFFFFFFLL;
  }

  if (v102)
  {
    v40 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "Input variants in patch: %u\n", *(a4 + 8));
    v33 = a4 + 40;
    if (*md != *(a4 + 40) || v108 != *(a4 + 48) || v109 != *(a4 + 56))
    {
LABEL_58:
      v43 = *(a4 + 8);
      if (!v43)
      {
LABEL_68:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 310, 42, 0, "Input doesn't match any of the expected patch inputs", v31, v32);
        return 0xFFFFFFFFLL;
      }

      v44 = 0;
      v45 = *(a4 + 8);
      v46 = a4 + 68;
      while (1)
      {
        v47 = *md == *v46 && v108 == *(v46 + 8);
        if (v47 && v109 == *(v46 + 16))
        {
          break;
        }

        ++v44;
        v46 += 28;
        if (v43 == v44)
        {
          goto LABEL_68;
        }
      }

      v99 = v44;
      if (v102)
      {
        fprintf(*MEMORY[0x29EDCA610], "Patch matching entry %u\n", v44);
        v44 = v99;
        v45 = *(a4 + 8);
        LODWORD(v43) = *(a4 + 8);
      }

      v88 = v33;
      v49 = v104;
      v95 = v104 + 28 * v45;
      v97 = *(a4 + 24);
      v50 = v95 + v97;
      v51 = 0;
      if (v43)
      {
        v52 = v44;
        do
        {
          if (!v52)
          {
            v51 = v50;
          }

          v53 = *v49;
          v49 = (v49 + 28);
          v50 += v53;
          --v52;
          --v45;
        }

        while (v45);
      }

      v91 = *(a4 + 32);
      v93 = *(v46 - 8);
      if (v50 + v91 - a4 != a5)
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 331, 42, "Warning: extra bytes in patch (ignored)\n");
        LODWORD(v43) = *(a4 + 8);
      }

      v90 = *(a4 + 16);
      v54 = 8 * (v43 + 2);
      v103 = malloc(0x20000uLL);
      v55 = malloc(0x20000uLL);
      v89 = v54;
      v56 = v54;
      v57 = v103;
      v105 = malloc(v56);
      enterThreadErrorContext();
      v101 = v55;
      if (v55 && v103 && v105)
      {
        v98 = ILowMemoryDecoderStreamCreateWithBuffer(v95, v97, 0x20000uLL);
        if (v98)
        {
          v58 = ILowMemoryDecoderStreamCreateWithBuffer(v51, v93, 0x20000uLL);
          if (v58)
          {
            v96 = ILowMemoryDecoderStreamCreateWithBuffer(v50, v91, 0x20000uLL);
            if (v96)
            {
              v59 = OSHA1StreamCreate(a6, 0, a7);
              if (v59)
              {
                v92 = v58;
                v87 = v59;
                v94 = OBufferedStreamCreate(OSHA1StreamWrite, OSHA1StreamAbort, v59, 0x20000uLL);
                if (!v94)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 356, 42, 0, "OBufferedStreamCreate");
                  v79 = 0;
                  v80 = -1;
                  v57 = v103;
                  v84 = v96;
                  v85 = v98;
LABEL_157:
                  v78 = v87;
LABEL_158:
                  free(v105);
                  free(v57);
                  free(v101);
                  OBufferedStreamDestroy(v79);
                  OSHA1StreamDestroy(v78, md);
                  ILowMemoryDecoderStreamDestroy(v85);
                  ILowMemoryDecoderStreamDestroy(v58);
                  ILowMemoryDecoderStreamDestroy(v84);
                  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
                  if (result >= 0)
                  {
                    return v80;
                  }

                  else
                  {
                    return result;
                  }
                }

                if (v90)
                {
                  v60 = 0;
                  v61 = 0;
                  v100 = v99 + 2;
                  while (1)
                  {
                    if (ILowMemoryDecoderStreamRead(v98, v105, v89) != v89)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 362, 42, 0, "reading from control stream");
                      goto LABEL_155;
                    }

                    v62 = v105[1];
                    if (*v105 >= 0)
                    {
                      v63 = *v105;
                    }

                    else
                    {
                      v63 = 0x8000000000000000 - *v105;
                    }

                    if (v62 >= 0)
                    {
                      v64 = v105[1];
                    }

                    else
                    {
                      v64 = 0x8000000000000000 - v62;
                    }

                    v65 = v105[v100];
                    if (v65 < 0)
                    {
                      v65 = 0x8000000000000000 - v65;
                    }

                    v86 = v65;
                    if ((v60 & 0x8000000000000000) != 0 || v63 + v60 > a3)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 369, 42, 0, "Invalid in segment in patch");
                      goto LABEL_155;
                    }

                    if (v63 + v61 + v64 > *(a4 + 16))
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 370, 42, 0, "Invalid out segment in patch");
                      goto LABEL_155;
                    }

                    if (v63)
                    {
                      break;
                    }

LABEL_115:
                    if (v64)
                    {
                      v72 = 0;
                      v73 = v64;
                      while (1)
                      {
                        v74 = v73 - v72;
                        if (v74 >= 0x20000)
                        {
                          v75 = 0x20000;
                        }

                        else
                        {
                          v75 = v74;
                        }

                        v57 = v103;
                        if (ILowMemoryDecoderStreamRead(v96, v103, v75) != v75)
                        {
                          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 405, 42, 0, "reading from archive stream");
                          v80 = -1;
                          goto LABEL_156;
                        }

                        if (OBufferedStreamWrite(v94, v103, v75) != v75)
                        {
                          break;
                        }

                        v72 += v75;
                        v61 += v75;
                        v73 = v64;
                        if (v72 >= v64)
                        {
                          goto LABEL_123;
                        }
                      }

                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 407, 42, 0, "writing to digest stream");
                      goto LABEL_155;
                    }

LABEL_123:
                    v60 += v86;
                    if (v61 >= v90)
                    {
                      goto LABEL_124;
                    }
                  }

                  v66 = 0;
                  while (1)
                  {
                    if (v63 - v66 >= 0x20000)
                    {
                      v67 = 0x20000;
                    }

                    else
                    {
                      v67 = v63 - v66;
                    }

                    if (ILowMemoryDecoderStreamRead(v92, v103, v67) != v67)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 379, 42, 0, "reading from diff stream");
                      goto LABEL_155;
                    }

                    if (a1(a2, v101, v67, v60) != v67)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 381, 42, 0, "reading from input stream");
                      goto LABEL_155;
                    }

                    if (v63 != v66)
                    {
                      if (v67 <= 1)
                      {
                        v68 = 1;
                      }

                      else
                      {
                        v68 = v67;
                      }

                      v69 = v101;
                      v70 = v103;
                      do
                      {
                        v71 = *v69++;
                        *v70++ += v71;
                        --v68;
                      }

                      while (v68);
                    }

                    if (OBufferedStreamWrite(v94, v103, v67) != v67)
                    {
                      break;
                    }

                    v66 += v67;
                    v60 += v67;
                    v61 += v67;
                    if (v66 >= v63)
                    {
                      goto LABEL_115;
                    }
                  }

                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 390, 42, 0, "writing to digest stream");
LABEL_155:
                  v80 = -1;
                  v57 = v103;
LABEL_156:
                  v84 = v96;
                  v85 = v98;
                  v58 = v92;
                  v79 = v94;
                  goto LABEL_157;
                }

LABEL_124:
                OBufferedStreamDestroy(v94);
                OSHA1StreamDestroy(v87, md);
                if (*md == *v88 && v108 == *(v88 + 8) && v109 == *(v88 + 16))
                {
                  v80 = 0;
                  v78 = 0;
                  v79 = 0;
                }

                else
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 421, 42, 0, "Invalid output digest after patch application");
                  v78 = 0;
                  v79 = 0;
                  v80 = -1;
                }

                v57 = v103;
                v85 = v98;
                v58 = v92;
              }

              else
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 355, 42, 0, "Digest stream init");
                v78 = 0;
                v79 = 0;
                v80 = -1;
                v85 = v98;
              }

              v84 = v96;
              goto LABEL_158;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 354, 42, 0, "Archive stream init");
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 353, 42, 0, "Diff stream init");
          }

          v78 = 0;
          v79 = 0;
          v84 = 0;
          v80 = -1;
          v85 = v98;
          goto LABEL_158;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 352, 42, 0, "Control stream init");
      }

      else
      {
        v83 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 351, 42, v83, "malloc");
      }

      v78 = 0;
      v79 = 0;
      v84 = 0;
      v58 = 0;
      v85 = 0;
      v80 = -1;
      goto LABEL_158;
    }

    fwrite("No-op patch matching, writing input\n", 0x24uLL, 1uLL, *v40);
  }

  else
  {
    v33 = a4 + 40;
    if (*md != *(a4 + 40) || v108 != *(a4 + 48) || v109 != *(a4 + 56))
    {
      goto LABEL_58;
    }
  }

  if ((copyStream(a1, a2, a3, a6, a7) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 293, 42, 0, "Output copy failed\n", v81, v82);
    return 0xFFFFFFFFLL;
  }

  return 0;
}