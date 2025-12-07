void extractStreamStateFail(uint64_t a1)
{
  v2 = (a1 + 1632);
  v3 = *(a1 + 1632);
  if (v3)
  {
    v4 = *(a1 + 1632);
    if (*(v3 + 2300) != -1)
    {
      *(v3 + 2300) = -1;
      v5 = *(a1 + 1040);
      v4 = v3;
      if (v5)
      {
        v5(*(a1 + 1032), 22, v3, v3 + 2272);
        v4 = *(a1 + 1632);
      }
    }

    if ((retireThreadEnqueue(a1 + 1200, v4) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamSendEntryToRetireThread", 1163, 72, 0, "retireThreadEnqueue failed");
      entryRelease(v3);
    }

    atomic_fetch_add_explicit((a1 + 1604), 1u, memory_order_relaxed);
  }

  else
  {
    v6 = *(a1 + 1640);
    if (v6)
    {
      extractThreadSendCommand(v6, 70, 0, 0);
    }
  }

  *(a1 + 1608) = 1;
  *v2 = 0;
  v2[1] = 0;
}

uint64_t extractThreadSendCommand(uint64_t a1, int a2, size_t a3, const void *a4)
{
  buf = a2;
  v9 = a3;
  if (AAByteStreamWrite(*(a1 + 16), &buf, 0xCuLL) == 12)
  {
    if (!a3 || AAByteStreamWrite(*(a1 + 32), a4, a3) == a3)
    {
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadSendCommand", 713, 72, 0, "sending command payload");
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadSendCommand", 708, 72, 0, "sending command");
  }

  return 0xFFFFFFFFLL;
}

uint64_t clusterEntryUpdateDAT(uint64_t a1, int a2, unint64_t a3, uint64_t a4, void *a5)
{
  *a5 = 0;
  if (a3 == -1)
  {
    return 0;
  }

  v8 = a1 + 80 * a2 + 1312;
  if (pthread_mutex_lock(v8) < 0)
  {
    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterEntryUpdateDAT", 514, 72, v14, "pthread_mutex_lock");
    return 0xFFFFFFFFLL;
  }

  v9 = *(v8 + 64);
  if (v9 <= a3)
  {
    v15 = *(v8 + 64);
    do
    {
      if (v15)
      {
        v15 *= 2;
      }

      else
      {
        v15 = 32;
      }
    }

    while (v15 <= a3);
    *(v8 + 64) = v15;
    if (32 * v15 < 0x2000000001)
    {
      v16 = *(v8 + 72);
      v10 = realloc(v16, 32 * v15);
      if (v10)
      {
        *(v8 + 72) = v10;
        v17 = *(v8 + 64);
        v18 = v17 > v9;
        v19 = v17 - v9;
        if (v18)
        {
          v20 = &v10[32 * v9 + 16];
          do
          {
            *(v20 - 2) = 0;
            *(v20 - 1) = 0;
            *v20 = -1;
            *(v20 + 1) = -1;
            v20 += 32;
            --v19;
          }

          while (v19);
        }

        goto LABEL_5;
      }

      free(v16);
    }

    else
    {
      *__error() = 12;
    }

    *(v8 + 72) = 0;
    v21 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterEntryUpdateDAT", 523, 72, *v21, "malloc");
    *(v8 + 64) = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  v10 = *(v8 + 72);
LABEL_5:
  v11 = 0;
  v12 = &v10[32 * a3];
  v13 = *v12;
  if (a4 && !v13)
  {
    *v12 = a4;
    v11 = 1;
    atomic_fetch_add((a4 + 2304), 1u);
    v13 = *(*(v8 + 72) + 32 * a3);
  }

  *a5 = v13;
LABEL_26:
  if (pthread_mutex_unlock(v8) < 0)
  {
    v22 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterEntryUpdateDAT", 547, 72, v22, "pthread_mutex_unlock");
    return 0xFFFFFFFFLL;
  }

  return v11;
}

uint64_t extractStreamEntryEnd(uint64_t a1)
{
  if (atomic_load((a1 + 1600)))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 1608))
  {
    return 0;
  }

  v4 = *(a1 + 1632);
  v5 = *(a1 + 1640);
  if (*(a1 + 1632) == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamEntryEnd", 1202, 72, 0, "no active entry or active thread");
LABEL_7:
    extractStreamStateFail(a1);
    return 0xFFFFFFFFLL;
  }

  if (v4)
  {
    if ((extractStreamSendEntryToExtractThread(a1) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamEntryEnd", 1207, 72, 0, "send entry to thread");
      goto LABEL_7;
    }

    v5 = *(a1 + 1640);
  }

  v6 = (a1 + 1632);
  if (v5)
  {
    extractThreadSendCommand(v5, 69, 0, 0);
  }

  result = 0;
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t extractStreamSendEntryToExtractThread(uint64_t a1)
{
  if (pthread_mutex_lock((a1 + 1088)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_8:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamSendEntryToExtractThread", 1145, 72, 0, "SharedArrayPop failed");
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *(a1 + 1072);
    if (v2)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 1152), (a1 + 1088)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
      goto LABEL_8;
    }
  }

  v3 = v2 - 1;
  *(a1 + 1072) = v3;
  v4 = *(*(a1 + 1080) + 4 * v3);
  if (pthread_mutex_unlock((a1 + 1088)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
    goto LABEL_8;
  }

  v6 = *(a1 + 1064) + 176 * v4;
  *(a1 + 1640) = v6;
  *(v6 + 168) = *(a1 + 1632);
  *(a1 + 1632) = 0;
  if (pthread_mutex_lock((v6 + 56)) || (v7 = *(v6 + 48), *(v6 + 48) = v7 + 1, !v7) && pthread_cond_broadcast((v6 + 120)) || pthread_mutex_unlock((v6 + 56)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamSendEntryToExtractThread", 1150, 72, 0, "SemRelease failed");
    return 0xFFFFFFFFLL;
  }

  if ((extractThreadSendCommand(v6, 66, 0, 0) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamSendEntryToExtractThread", 1153, 72, 0, "extract thread BEGIN failed");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t aaHeaderInitWithEncodedData(uint64_t a1, unsigned __int16 *a2, rsize_t a3)
{
  init_blob_with_magic(a1);
  *a1 = 0;
  *(a1 + 40) = 0;
  if (a3 <= 5)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 113, 101, 0, "invalid header size: %llu");
    goto LABEL_66;
  }

  if (*a2 != 826360153 && *a2 != 825246017)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 114, 101, 0, "invalid header magic");
    goto LABEL_66;
  }

  if (a2[2] != a3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 116, 101, 0, "header size mismatch: stored %u, got %llu");
    goto LABEL_66;
  }

  *(a1 + 16) = 0;
  v6 = (a1 + 16);
  v7 = *(a1 + 24);
  if (v7 >= a3)
  {
    v10 = 0;
    v11 = *(a1 + 32);
  }

  else
  {
    do
    {
      while (!v7)
      {
        v7 = 0x4000;
        if (a3 <= 0x4000)
        {
          v9 = (a1 + 32);
          v7 = 0x4000;
          goto LABEL_19;
        }
      }

      v8 = v7 >> 1;
      if ((v7 & (v7 >> 1)) != 0)
      {
        v8 = v7 & (v7 >> 1);
      }

      v7 += v8;
    }

    while (v7 < a3);
    v9 = (a1 + 32);
    if (v7 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_64;
    }

LABEL_19:
    v12 = *v9;
    v11 = realloc(*v9, v7);
    if (!v11)
    {
      free(v12);
LABEL_64:
      *v9 = 0;
      *v6 = 0;
      *(a1 + 24) = 0;
LABEL_65:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 121, 101, 0, "realloc blob");
      goto LABEL_66;
    }

    *(a1 + 24) = v7;
    *(a1 + 32) = v11;
    v10 = *(a1 + 16);
    if (!a2)
    {
      memset_s(&v11[v10], a3, 0, a3);
      goto LABEL_22;
    }
  }

  memcpy(&v11[v10], a2, a3);
LABEL_22:
  v13 = *v6 + a3;
  *v6 = v13;
  if ((a3 & 0x8000000000000000) != 0 || v13 < 4)
  {
    goto LABEL_65;
  }

  **(a1 + 32) = 825246017;
  if (a3 == 6)
  {
    return 0;
  }

  v15 = 0;
  v16 = 6;
  while (2)
  {
    if ((realloc_fields(a1, *a1 + 1) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 127, 101, 0, "realloc_fields");
      goto LABEL_66;
    }

    v17 = *(a1 + 8);
    v18 = (*a1)++;
    if (v16 + 4 > a3)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 130, 101, 0, "truncated header");
      goto LABEL_66;
    }

    v19 = v17 + 48 * v18;
    v20 = a2 + v16;
    v21 = *(a2 + v16);
    *v19 = v21;
    *(v19 + 8) = SHIBYTE(v21);
    *(v19 + 3) = 0;
    switch(HIBYTE(v21))
    {
      case '1':
        v22 = 1;
        v23 = 1;
        goto LABEL_51;
      case '2':
        v22 = 1;
        goto LABEL_43;
      case '3':
      case '5':
      case '6':
      case '7':
      case '9':
      case ':':
      case ';':
      case '<':
      case '=':
      case '>':
      case '?':
      case '@':
      case 'D':
      case 'E':
      case 'K':
      case 'L':
      case 'M':
      case 'N':
      case 'O':
      case 'Q':
      case 'R':
        goto LABEL_71;
      case '4':
        v22 = 1;
        goto LABEL_41;
      case '8':
        v22 = 1;
        goto LABEL_46;
      case 'A':
        v22 = 5;
LABEL_43:
        v23 = 2;
        goto LABEL_51;
      case 'B':
        v22 = 5;
        goto LABEL_41;
      case 'C':
        v22 = 5;
        goto LABEL_46;
      case 'F':
        v22 = 3;
LABEL_41:
        v23 = 4;
        goto LABEL_51;
      case 'G':
        v22 = 3;
        v23 = 20;
        goto LABEL_51;
      case 'H':
        v22 = 3;
        v23 = 32;
        goto LABEL_51;
      case 'I':
        v22 = 3;
        v23 = 48;
        goto LABEL_51;
      case 'J':
        v22 = 3;
        v23 = 64;
        goto LABEL_51;
      case 'P':
        if (v16 + 6 <= a3)
        {
          v15 = *(v20 + 2);
          v23 = v15 + 2;
          v22 = 2;
LABEL_51:
          *(v19 + 4) = v22;
          if (v16 + 4 + v23 > a3)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 161, 101, 0, "truncated header");
            goto LABEL_66;
          }

          v24 = 0;
          *(v19 + 40) = 0;
          v25 = (v19 + 40);
          v26 = v23 + 4;
          *(v19 + 12) = v16;
          *(v19 + 16) = v23 + 4;
          *(v19 + 24) = 0;
          *(v19 + 32) = 0;
          if (v22 > 2)
          {
            if (v22 == 3)
            {
              v24 = 0;
              *v25 = v23;
            }

            else if (v22 == 5)
            {
              memcpy((v19 + 32), v20 + 4, v23);
              *(v19 + 24) = *(a1 + 40);
              v24 = *(v19 + 32);
            }
          }

          else if (v22 == 1)
          {
            memcpy(v25, v20 + 4, v23);
            v24 = 0;
          }

          else if (v22 == 2)
          {
            v24 = 0;
            *v25 = v15;
          }

          result = 0;
          *(a1 + 40) += v24;
          v16 += v26;
          if (v16 >= a3)
          {
            return result;
          }

          continue;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 153, 101, 0, "truncated header");
LABEL_66:
        *a1 = 0;
        *(a1 + 16) = 0;
        result = 0xFFFFFFFFLL;
        *(a1 + 40) = 0;
        return result;
      case 'S':
        v22 = 4;
LABEL_46:
        v23 = 8;
        goto LABEL_51;
      case 'T':
        v22 = 4;
        v23 = 12;
        goto LABEL_51;
      default:
        if (HIBYTE(v21) != 42)
        {
LABEL_71:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 159, 101, 0, "invalid field subtype: %d");
          goto LABEL_66;
        }

        v22 = 0;
        v23 = 0;
        goto LABEL_51;
    }
  }
}

uint64_t init_blob_with_magic(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 <= 5)
  {
    while (v2)
    {
      v3 = v2 >> 1;
      if ((v2 & (v2 >> 1)) != 0)
      {
        v3 = v2 & (v2 >> 1);
      }

      v2 += v3;
      if (v2 >= 6)
      {
        goto LABEL_8;
      }
    }

    v2 = 0x4000;
LABEL_8:
    v4 = *(a1 + 32);
    v5 = realloc(v4, v2);
    if (!v5)
    {
      free(v4);
      *a1 = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "init_blob_with_magic", 61, 101, 0, "realloc_blob failed");
      return 0xFFFFFFFFLL;
    }

    *(a1 + 24) = v2;
    *(a1 + 32) = v5;
  }

  *(a1 + 16) = 0;
  **(a1 + 32) = 825246017;
  v6 = *(a1 + 16) + 4;
  *(a1 + 16) = v6;
  v7 = v6 + 2;
  if (v6 >= 0xFFFFFFFFFFFFFFFELL || (v7 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  if (v8 >= v7)
  {
    v12 = *(a1 + 32);
LABEL_28:
    result = 0;
    *&v12[v6] = 6;
    *(a1 + 16) += 2;
  }

  else
  {
    v9 = 0x4000;
    do
    {
      while (!v8)
      {
        v8 = 0x4000;
        if (v7 <= 0x4000)
        {
          goto LABEL_26;
        }
      }

      v10 = v8 >> 1;
      if ((v8 & (v8 >> 1)) != 0)
      {
        v10 = v8 & (v8 >> 1);
      }

      v8 += v10;
    }

    while (v8 < v7);
    v9 = v8;
    if (v8 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_30;
    }

LABEL_26:
    v13 = *(a1 + 32);
    v14 = realloc(v13, v9);
    if (v14)
    {
      v12 = v14;
      *(a1 + 24) = v9;
      *(a1 + 32) = v14;
      v6 = *(a1 + 16);
      goto LABEL_28;
    }

    free(v13);
LABEL_30:
    result = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t realloc_fields(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 4);
  if (v3 >= a2)
  {
    return 0;
  }

  v4 = *(a1 + 4);
  do
  {
    if (v4)
    {
      v4 += v4 >> 1;
    }

    else
    {
      v4 = 16;
    }
  }

  while (v4 < a2);
  if (v3 >= v4)
  {
    return 0;
  }

  if (v4 < 0xAAAAAAAB)
  {
    v6 = *(a1 + 8);
    v7 = realloc(v6, 48 * v4);
    if (v7)
    {
      v8 = v7;
      result = 0;
      *(a1 + 8) = v8;
      *(a1 + 4) = v4;
      return result;
    }

    free(v6);
  }

  else
  {
    *__error() = 12;
  }

  *(a1 + 8) = 0;
  v9 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "realloc_fields", 35, 101, *v9, "malloc");
  *a1 = 0;
  result = 0xFFFFFFFFLL;
  *(a1 + 16) = 0;
  return result;
}

uint64_t aaHeaderInitWithPath(AAHeader_impl *a1, AAFieldKeySet_impl *a2, char *a3, const char *a4, unint64_t a5)
{
  v86 = *MEMORY[0x29EDCA608];
  memset(&v83, 0, sizeof(v83));
  init_blob_with_magic(a1);
  *a1 = 0;
  *(a1 + 5) = 0;
  if ((concatPath(v85, 0x800uLL, a3, a4) & 0x80000000) != 0)
  {
    v79 = a3;
    v80 = a4;
    v11 = "invalid path %s/%s";
    v12 = 196;
    goto LABEL_7;
  }

  if ((init_blob_with_magic(a1) & 0x80000000) != 0)
  {
    v11 = "init_blob_with_magic";
    v12 = 199;
    goto LABEL_7;
  }

  *a1 = 0;
  *(a1 + 5) = 0;
  if (lstat(v85, &v83))
  {
    v10 = *__error();
    v79 = v85;
    v11 = "lstat %s";
    v12 = 204;
LABEL_8:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithPath", v12, 101, v10, v11, v79, v80);
    *a1 = 0;
    *(a1 + 2) = 0;
    result = 0xFFFFFFFFLL;
    *(a1 + 5) = 0;
    return result;
  }

  v14 = aaEntryTypeFromMode(v83.st_mode);
  if (!v14)
  {
    v79 = v85;
    v11 = "could not determine entry type: %s";
    v12 = 210;
    goto LABEL_7;
  }

  v15.ikey = 5265748;
  if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v15, v14) < 0)
  {
    v79 = v85;
    v11 = "inserting TYP: %s";
    v12 = 211;
    goto LABEL_7;
  }

  v16 = strlen(a4);
  v17.ikey = 5521744;
  if (AAHeaderSetFieldString(a1, 0xFFFFFFFF, v17, a4, v16) < 0)
  {
    v79 = v85;
    v11 = "inserting PAT: %s";
    v12 = 217;
    goto LABEL_7;
  }

  v18 = v83.st_mode & 0xF000;
  if (v18 == 40960)
  {
    v19 = readlink(v85, value, 0x3FFuLL);
    if (v19 < 0)
    {
      v10 = *__error();
      v79 = v85;
      v11 = "readlink: %s";
      v12 = 225;
      goto LABEL_8;
    }

    value[v19] = 0;
    v20.ikey = 4935244;
    if (AAHeaderSetFieldString(a1, 0xFFFFFFFF, v20, value, v19) < 0)
    {
      v79 = v85;
      v11 = "inserting LNK: %s";
      v12 = 227;
      goto LABEL_7;
    }

    v18 = v83.st_mode & 0xF000;
  }

  if ((v18 | 0x4000) == 0x6000)
  {
    v21.ikey = 5653828;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v21, v83.st_rdev) < 0)
    {
      v79 = v85;
      v11 = "inserting DEV: %s";
      v12 = 233;
      goto LABEL_7;
    }
  }

  v22.ikey = 4475221;
  if (AAFieldKeySetContainsKey(a2, v22))
  {
    v23.ikey = 4475221;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v23, v83.st_uid) < 0)
    {
      v79 = v85;
      v11 = "inserting UID: %s";
      v12 = 239;
      goto LABEL_7;
    }
  }

  v24.ikey = 4475207;
  if (AAFieldKeySetContainsKey(a2, v24))
  {
    v25.ikey = 4475207;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v25, v83.st_gid) < 0)
    {
      v79 = v85;
      v11 = "inserting GID: %s";
      v12 = 245;
      goto LABEL_7;
    }
  }

  v26.ikey = 4476749;
  if (AAFieldKeySetContainsKey(a2, v26))
  {
    v27.ikey = 4476749;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v27, v83.st_mode & 0xFFF) < 0)
    {
      v79 = v85;
      v11 = "inserting MOD: %s";
      v12 = 251;
      goto LABEL_7;
    }
  }

  v28.ikey = 4672582;
  if (AAFieldKeySetContainsKey(a2, v28))
  {
    v29.ikey = 4672582;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v29, v83.st_flags) < 0)
    {
      v79 = v85;
      v11 = "inserting FLG: %s";
      v12 = 259;
      goto LABEL_7;
    }
  }

  v30.ikey = 5067843;
  if (AAFieldKeySetContainsKey(a2, v30) || (v31.ikey = 5067842, AAFieldKeySetContainsKey(a2, v31)))
  {
    v82[1] = 0;
    v82[2] = 0;
    memset(value, 0, 64);
    v82[0] = 0x220000000005;
    if (!getattrlist(v85, v82, value, 0x40uLL, 1u) && *value == 36)
    {
      v81 = *&value[4];
      v32.ikey = 5067843;
      if (AAFieldKeySetContainsKey(a2, v32))
      {
        if (v81.tv_sec)
        {
          v33.ikey = 5067843;
          if (AAHeaderSetFieldTimespec(a1, 0xFFFFFFFF, v33, &v81) < 0)
          {
            v79 = v85;
            v11 = "inserting CTM: %s";
            v12 = 277;
            goto LABEL_7;
          }
        }
      }

      v81 = *&value[20];
      v34.ikey = 5067842;
      if (AAFieldKeySetContainsKey(a2, v34))
      {
        if (v81.tv_sec)
        {
          v35.ikey = 5067842;
          if (AAHeaderSetFieldTimespec(a1, 0xFFFFFFFF, v35, &v81) < 0)
          {
            v79 = v85;
            v11 = "inserting BTM: %s";
            v12 = 283;
            goto LABEL_7;
          }
        }
      }
    }
  }

  v36.ikey = 5067853;
  if (AAFieldKeySetContainsKey(a2, v36))
  {
    v37.ikey = 5067853;
    if (AAHeaderSetFieldTimespec(a1, 0xFFFFFFFF, v37, &v83.st_mtimespec) < 0)
    {
      v79 = v85;
      v11 = "inserting MTM: %s";
      v12 = 291;
      goto LABEL_7;
    }
  }

  if ((v83.st_mode & 0xF000) == 0x8000)
  {
    v38.ikey = 5523009;
    if (AAFieldKeySetContainsKey(a2, v38) > 0 || (v39.ikey = 5391937, AAFieldKeySetContainsKey(a2, v39) >= 1))
    {
      *value = 0;
      LODWORD(v82[0]) = 0;
      LODWORD(v81.tv_sec) = 0;
      if ((ParallelCompressionAFSCGetMetadata(v85, value, v82, &v81) & 0x80000000) != 0)
      {
        v11 = "querying AFSC metadata";
        v12 = 306;
        goto LABEL_7;
      }

      if (LODWORD(v82[0]) != -1)
      {
        v40.ikey = 5523009;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v40, SLODWORD(v82[0])) < 0)
        {
          v79 = v85;
          v11 = "inserting AFT: %s";
          v12 = 309;
          goto LABEL_7;
        }

        v41.ikey = 5391937;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v41, LODWORD(v81.tv_sec)) < 0)
        {
          v79 = v85;
          v11 = "inserting AFR: %s";
          v12 = 310;
          goto LABEL_7;
        }
      }
    }
  }

  v42 = v83.st_mode & 0xF000;
  if (v42 == 0x8000 || v42 == 0x4000)
  {
    v43.ikey = 4803654;
    if (AAFieldKeySetContainsKey(a2, v43) >= 1)
    {
      FileAPFSInternalFlagsFD = getFileAPFSInternalFlagsFD();
      if (FileAPFSInternalFlagsFD)
      {
        v45.ikey = 4803654;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v45, FileAPFSInternalFlagsFD) < 0)
        {
          v79 = v85;
          v11 = "inserting FLI: %s";
          v12 = 322;
          goto LABEL_7;
        }
      }
    }
  }

  if ((v83.st_mode & 0xF000) == 0x8000)
  {
    v46.ikey = 4411984;
    if (AAFieldKeySetContainsKey(a2, v46) >= 1)
    {
      FileProtectionClass = getFileProtectionClass(v85);
      if ((FileProtectionClass - 1) <= 5)
      {
        v48.ikey = 4411984;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v48, FileProtectionClass | 0x40u) < 0)
        {
          v79 = v85;
          v11 = "inserting PRC: %s";
          v12 = 342;
          goto LABEL_7;
        }
      }
    }
  }

  v49.ikey = 5197385;
  if (AAFieldKeySetContainsKey(a2, v49))
  {
    v50.ikey = 5197385;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v50, v83.st_ino) < 0)
    {
      v79 = v85;
      v11 = "inserting INO: %s";
      v12 = 359;
      goto LABEL_7;
    }
  }

  v51.ikey = 4934734;
  if (AAFieldKeySetContainsKey(a2, v51))
  {
    v52.ikey = 4934734;
    if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v52, v83.st_nlink) < 0)
    {
      v79 = v85;
      v11 = "inserting LNK: %s";
      v12 = 365;
      goto LABEL_7;
    }
  }

  if ((v83.st_mode & 0xF000) == 0x8000)
  {
    v53.ikey = 5917011;
    if (AAFieldKeySetContainsKey(a2, v53))
    {
      v54.ikey = 5917011;
      if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v54, v83.st_size) < 0)
      {
        v79 = v85;
        v11 = "inserting SIZ: %s";
        v12 = 371;
        goto LABEL_7;
      }
    }
  }

  v55 = v83.st_mode & 0xF000;
  if (v55 == 0x4000 || v55 == 40960 || v55 == 0x8000)
  {
    v56.ikey = 5920068;
    if (AAFieldKeySetContainsKey(a2, v56))
    {
      FilesystemBlockSize = getFilesystemBlockSize(a3);
      FileDiskUsageBlocks2 = getFileDiskUsageBlocks2(a3, a4, FilesystemBlockSize);
      if ((FileDiskUsageBlocks2 & 0x8000000000000000) == 0)
      {
        v59.ikey = 5920068;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v59, FileDiskUsageBlocks2) < 0)
        {
          v79 = v85;
          v11 = "inserting DUZ: %s";
          v12 = 381;
          goto LABEL_7;
        }
      }
    }
  }

  if ((v83.st_mode & 0xF000) == 0x8000)
  {
    v60.ikey = 5194573;
    if (AAFieldKeySetContainsKey(a2, v60))
    {
      *value = 0;
      if ((aaEntryMCOStringCreateWithPath(value, v85, a5) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithPath", 389, 101, 0, "fetching Mach-O information: %s", v85);
      }

      if (*value)
      {
        v61 = strlen(*value);
        v62.ikey = 5194573;
        if ((AAHeaderSetFieldString(a1, 0xFFFFFFFF, v62, *value, v61) & 0x80000000) == 0)
        {
          free(*value);
          goto LABEL_75;
        }

        v79 = v85;
        v11 = "inserting MCO: %s";
        v12 = 392;
LABEL_7:
        v10 = 0;
        goto LABEL_8;
      }
    }
  }

LABEL_75:
  v63.ikey = 5458755;
  v64 = AAFieldKeySetContainsKey(a2, v63);
  v65.ikey = 3229779;
  v66 = AAFieldKeySetContainsKey(a2, v65);
  v67.ikey = 3295315;
  v68 = AAFieldKeySetContainsKey(a2, v67);
  v69.ikey = 3360851;
  v70 = AAFieldKeySetContainsKey(a2, v69);
  v71.ikey = 3491923;
  v72 = AAFieldKeySetContainsKey(a2, v71);
  result = 0;
  if ((v83.st_mode & 0xF000) == 0x8000)
  {
    v73 = ((v64 & 1) << 11) & 0xFFF | ((v66 & 1) << 12) & 0x1FFF | ((v68 & 1) << 13) & 0x3FFF | ((v70 & 1) << 14) & 0x7FFF | ((v72 & 1) << 15);
    if (v73)
    {
      memset(value, 0, 172);
      if ((aaEntryHashesInitWithPath(value, v73, a3, a4) & 0x80000000) != 0)
      {
        v79 = v85;
        v11 = "computing file hashes: %s";
        v12 = 407;
      }

      else if ((v64 & 1) != 0 && (v74.ikey = 5458755, AAHeaderSetFieldHash(a1, 0xFFFFFFFF, v74, 1u, &value[4]) < 0))
      {
        v79 = v85;
        v11 = "inserting CKS: %s";
        v12 = 409;
      }

      else if ((v66 & 1) != 0 && (v75.ikey = 3229779, AAHeaderSetFieldHash(a1, 0xFFFFFFFF, v75, 2u, &value[8]) < 0))
      {
        v79 = v85;
        v11 = "inserting SH1: %s";
        v12 = 411;
      }

      else if ((v68 & 1) != 0 && (v76.ikey = 3295315, AAHeaderSetFieldHash(a1, 0xFFFFFFFF, v76, 3u, &value[28]) < 0))
      {
        v79 = v85;
        v11 = "inserting SH2: %s";
        v12 = 413;
      }

      else if ((v70 & 1) != 0 && (v77.ikey = 3360851, AAHeaderSetFieldHash(a1, 0xFFFFFFFF, v77, 4u, &value[60]) < 0))
      {
        v79 = v85;
        v11 = "inserting SH3: %s";
        v12 = 415;
      }

      else
      {
        if ((v72 & 1) == 0)
        {
          return 0;
        }

        v78.ikey = 3491923;
        if ((AAHeaderSetFieldHash(a1, 0xFFFFFFFF, v78, 5u, &value[108]) & 0x80000000) == 0)
        {
          return 0;
        }

        v79 = v85;
        v11 = "inserting SH5: %s";
        v12 = 417;
      }

      goto LABEL_7;
    }
  }

  return result;
}

off_t getFileDiskUsageBlocks2(char *a1, const char *a2, unsigned int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  bzero(v7, 0x800uLL);
  if (concatPath(v7, 0x800uLL, a1, a2))
  {
    return -1;
  }

  result = getFileDiskUsage(v7);
  if (result >= 0)
  {
    return (result + a3 - 1) & -a3;
  }

  return result;
}

uint64_t aaHeaderAppendEntryAttributes(AAHeader header, char *a2, char *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7.ikey = 4475221;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v7, *(a2 + 1)) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 428, 101, 0, "append UID");
      return 0xFFFFFFFFLL;
    }

    v6 = *a2;
  }

  if ((v6 & 2) != 0)
  {
    v8.ikey = 4475207;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v8, *(a2 + 2)) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 429, 101, 0, "append GID");
      return 0xFFFFFFFFLL;
    }

    v6 = *a2;
  }

  if ((v6 & 8) != 0)
  {
    v9.ikey = 4476749;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v9, *(a2 + 4)) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 430, 101, 0, "append MOD");
      return 0xFFFFFFFFLL;
    }

    v6 = *a2;
  }

  if ((v6 & 4) != 0)
  {
    v10.ikey = 4672582;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v10, *(a2 + 3)) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 431, 101, 0, "append FLG");
      return 0xFFFFFFFFLL;
    }

    v6 = *a2;
  }

  if ((v6 & 0x40) != 0)
  {
    v11.ikey = 5067853;
    if (AAHeaderSetFieldTimespec(header, 0xFFFFFFFF, v11, (a2 + 56)) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 432, 101, 0, "append MTM");
      return 0xFFFFFFFFLL;
    }

    v6 = *a2;
  }

  if ((v6 & 0x20) != 0)
  {
    v12.ikey = 5067843;
    if (AAHeaderSetFieldTimespec(header, 0xFFFFFFFF, v12, (a2 + 40)) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 433, 101, 0, "append CTM");
      return 0xFFFFFFFFLL;
    }

    v6 = *a2;
  }

  if ((v6 & 0x10) != 0 && (v13.ikey = 5067842, AAHeaderSetFieldTimespec(header, 0xFFFFFFFF, v13, (a2 + 24)) < 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 434, 101, 0, "append BTM");
  }

  else
  {
    v14 = *a3;
    if (*a3)
    {
      v15.ikey = 5523009;
      if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v15, *(a3 + 2)) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 435, 101, 0, "append AFT");
        return 0xFFFFFFFFLL;
      }

      v14 = *a3;
    }

    if ((v14 & 2) != 0)
    {
      v16.ikey = 5391937;
      if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v16, *(a3 + 3)) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 436, 101, 0, "append AFR");
        return 0xFFFFFFFFLL;
      }

      v14 = *a3;
    }

    if ((v14 & 4) != 0)
    {
      v17.ikey = 4803654;
      if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v17, *(a3 + 2)) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 437, 101, 0, "append FLI");
        return 0xFFFFFFFFLL;
      }

      v14 = *a3;
    }

    if ((v14 & 8) == 0)
    {
      return 0;
    }

    v18.ikey = 4411984;
    if ((AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v18, *(a3 + 1)) & 0x80000000) == 0)
    {
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 438, 101, 0, "append PRC");
  }

  return 0xFFFFFFFFLL;
}

uint64_t aaHeaderBlobArrayInitWithHeader(uint64_t a1, AAHeader_impl *a2)
{
  *a1 = 0;
  v4 = *a2;
  if (v4 <= *(a1 + 4))
  {
    if (v4)
    {
      goto LABEL_5;
    }

    v8 = 0;
LABEL_15:
    result = 0;
    *a1 = v8;
  }

  else
  {
    *(a1 + 4) = v4;
    v5 = *(a1 + 8);
    v6 = realloc(v5, 24 * v4);
    if (v6)
    {
      *(a1 + 8) = v6;
LABEL_5:
      v7 = 0;
      v8 = 0;
      while (1)
      {
        if (AAHeaderGetFieldType(a2, v7) == 5)
        {
          size = 0;
          if (AAHeaderGetFieldBlob(a2, v7, &size, &v12) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderBlobArrayInitWithHeader", 460, 101, 0, "get field blob failed");
            return 0xFFFFFFFFLL;
          }

          v9 = *(a1 + 8);
          *(v9 + 24 * v8) = AAHeaderGetFieldKey(a2, v7);
          *(*(a1 + 8) + 24 * v8++ + 8) = vdupq_lane_s64(size, 0);
        }

        if (v4 == ++v7)
        {
          goto LABEL_15;
        }
      }
    }

    free(v5);
    *(a1 + 8) = 0;
    v10 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderBlobArrayInitWithHeader", 453, 101, *v10, "malloc");
    *a1 = 0;
    return 0xFFFFFFFFLL;
  }

  return result;
}

int AAHeaderGetFieldType(AAHeader header, uint32_t i)
{
  if (*header > i)
  {
    return *(*(header + 1) + 48 * i + 4);
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldType", 592, 101, 0, "invalid field index %u", i);
  return -1;
}

int AAHeaderGetFieldBlob(AAHeader header, uint32_t i, uint64_t *size, uint64_t *offset)
{
  if (*header <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldBlob", 670, 101, 0, "invalid field index %u");
  }

  else
  {
    v4 = *(header + 1) + 48 * i;
    if (*(v4 + 4) == 5)
    {
      result = 0;
      *size = *(v4 + 32);
      *offset = *(v4 + 24);
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldBlob", 672, 101, 0, "invalid type %d, expected BLOB");
  }

  return -1;
}

AAFieldKey AAHeaderGetFieldKey(AAHeader header, uint32_t i)
{
  if (*header <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldKey", 598, 101, 0, "invalid field index %u", i);
    return 0;
  }

  else
  {
    return *(*(header + 1) + 48 * i);
  }
}

uint64_t aaHeaderBlobArrayPayloadSize(unsigned int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (*(a1 + 1) + 8);
  do
  {
    v5 = *v4;
    v4 += 3;
    result += v5;
    --v1;
  }

  while (v1);
  return result;
}

AAHeader AAHeaderCreate(void)
{
  v0 = malloc(0x30uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x30uLL, 0, 0x30uLL);
    if ((init_blob_with_magic(v1) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderCreate", 485, 101, 0, "init_blob_with_magic");
      AAHeaderDestroy(v1);
      return 0;
    }
  }

  else
  {
    v2 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderCreate", 482, 101, *v2, "malloc");
  }

  return v1;
}

void AAHeaderDestroy(AAHeader header)
{
  if (header)
  {
    free(*(header + 1));
    free(*(header + 4));
    memset_s(header + 16, 0x18uLL, 0, 0x18uLL);

    free(header);
  }
}

AAHeader AAHeaderClone(AAHeader header)
{
  v2 = malloc(0x30uLL);
  v3 = v2;
  if (v2)
  {
    memset_s(v2, 0x30uLL, 0, 0x30uLL);
    if (AAHeaderAssign(v3, header) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderClone", 507, 101, 0, "header copy");
      AAHeaderDestroy(v3);
      return 0;
    }
  }

  else
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderClone", 504, 101, *v4, "malloc");
  }

  return v3;
}

int AAHeaderAssign(AAHeader header, AAHeader from_header)
{
  if ((realloc_fields(header, *from_header) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderAssign", 519, 101, 0, "realloc_fields");
  }

  else
  {
    memcpy(*(header + 1), *(from_header + 1), 48 * *from_header);
    *header = *from_header;
    *(header + 2) = 0;
    v4 = (header + 16);
    v5 = *(from_header + 2);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(from_header + 4);
      v7 = *(header + 3);
      if (v7 >= v5)
      {
LABEL_16:
        v12 = *(header + 4);
        if (v6)
        {
          memcpy((v12 + *v4), v6, v5);
        }

        else if (v12)
        {
          memset_s((v12 + *v4), v5, 0, v5);
        }

        v13 = *v4 + v5;
        *v4 = v13;
        if (v13 > 3)
        {
          result = 0;
          **(header + 4) = 825246017;
          *(header + 5) = *(from_header + 5);
          return result;
        }
      }

      else
      {
        do
        {
          while (!v7)
          {
            v7 = 0x4000;
            if (v5 <= 0x4000)
            {
              v9 = (header + 32);
              v7 = 0x4000;
              goto LABEL_14;
            }
          }

          v8 = v7 >> 1;
          if ((v7 & (v7 >> 1)) != 0)
          {
            v8 = v7 & (v7 >> 1);
          }

          v7 += v8;
        }

        while (v7 < v5);
        v9 = (header + 32);
        if (v7 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_23;
        }

LABEL_14:
        v10 = *v9;
        v11 = realloc(*v9, v7);
        if (v11)
        {
          *(header + 3) = v7;
          *(header + 4) = v11;
          goto LABEL_16;
        }

        free(v10);
LABEL_23:
        *v9 = 0;
        *v4 = 0;
        *(header + 3) = 0;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderAssign", 526, 101, 0, "realloc blob");
  }

  return -1;
}

AAHeader AAHeaderCreateWithEncodedData(size_t data_size, const uint8_t *data)
{
  v4 = AAHeaderCreate();
  v5 = v4;
  if (v4 && (aaHeaderInitWithEncodedData(v4, data, data_size) & 0x80000000) != 0)
  {
    AAHeaderDestroy(v5);
    return 0;
  }

  return v5;
}

AAHeader AAHeaderCreateWithPath(AAFieldKeySet key_set, const char *dir, const char *path, AAFlagSet flags)
{
  v8 = AAHeaderCreate();
  v9 = v8;
  if (v8 && (aaHeaderInitWithPath(v8, key_set, dir, path, flags) & 0x80000000) != 0)
  {
    AAHeaderDestroy(v9);
    return 0;
  }

  return v9;
}

int AAHeaderRemoveField(AAHeader header, uint32_t i)
{
  if ((update_field_sizes(header, i, 0, 0) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderRemoveField", 558, 101, 0, "update_field_sizes failed");
    return -1;
  }

  else
  {
    v4 = *header;
    if (*header + ~i)
    {
      memmove((*(header + 1) + 48 * i), (*(header + 1) + 48 * (i + 1)), 48 * (*header + ~i));
      v4 = *header;
    }

    result = 0;
    *header = v4 - 1;
  }

  return result;
}

uint64_t update_field_sizes(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (*a1 <= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "update_field_sizes", 74, 101, 0, "invalid field index");
    return 0xFFFFFFFFLL;
  }

  v4 = a2;
  v6 = (a1 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8) + 48 * a2;
  v9 = *(v8 + 16);
  v10 = *(v8 + 12) + v9;
  if (v7 < v10)
  {
LABEL_3:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "update_field_sizes", 78, 101, 0, "realloc blob");
    return 0xFFFFFFFFLL;
  }

  if (v9 >= a3)
  {
    if (v9 <= a3)
    {
      goto LABEL_29;
    }

    v19 = v9 - a3;
    if (v7 != v10)
    {
      memmove((*(a1 + 32) + v10 - v19), (*(a1 + 32) + v10), v7 - v10);
      v10 = *(a1 + 16);
    }

    v7 = v10 - v19;
  }

  else
  {
    v14 = a3 - v9;
    v15 = v7 + v14;
    if ((v7 + v14) < 0)
    {
      goto LABEL_3;
    }

    v16 = *(a1 + 24);
    if (v16 < v15)
    {
      do
      {
        while (!v16)
        {
          v16 = 0x4000;
          if (v15 <= 0x4000)
          {
            v29 = v14;
            v18 = (a1 + 32);
            v16 = 0x4000;
            goto LABEL_23;
          }
        }

        v17 = v16 >> 1;
        if ((v16 & (v16 >> 1)) != 0)
        {
          v17 = v16 & (v16 >> 1);
        }

        v16 += v17;
      }

      while (v16 < v15);
      v18 = (a1 + 32);
      if (v16 >= 0x2000000001)
      {
        v20 = (a1 + 32);
        *__error() = 12;
        goto LABEL_36;
      }

      v29 = v14;
LABEL_23:
      v27 = v18;
      v28 = *v18;
      v21 = realloc(*v18, v16);
      if (v21)
      {
        *(a1 + 24) = v16;
        *(a1 + 32) = v21;
        v14 = v29;
        goto LABEL_25;
      }

      v20 = v27;
      free(v28);
LABEL_36:
      *v20 = 0;
      *v6 = 0;
      v6[1] = 0;
      goto LABEL_3;
    }

LABEL_25:
    if (v7 != v10)
    {
      v22 = v14;
      memmove((*(a1 + 32) + v10 + v14), (*(a1 + 32) + v10), v7 - v10);
      v14 = v22;
    }

    v7 = *v6 + v14;
  }

  *v6 = v7;
LABEL_29:
  *(a1 + 40) = *(a1 + 40) + a4 - *(v8 + 32);
  if (v7 <= 5)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "update_field_sizes", 85, 101, 0, "copy header size");
    return 0xFFFFFFFFLL;
  }

  *(*(a1 + 32) + 4) = v7;
  *(v8 + 16) = a3;
  *(v8 + 32) = a4;
  if (v4 + 1 < *a1)
  {
    v23 = *(a1 + 8);
    v24 = (v23 + 48 * (v4 + 1) + 24);
    v25 = *a1 - 1;
    do
    {
      v26 = v23 + 48 * v4;
      *(v24 - 3) = *(v26 + 16) + *(v26 + 12);
      *v24 = *(v26 + 32) + *(v26 + 24);
      v24 += 6;
      ++v4;
    }

    while (v25 != v4);
  }

  return 0;
}

int AAHeaderClear(AAHeader header)
{
  init_blob_with_magic(header);
  *header = 0;
  *(header + 5) = 0;
  return 0;
}

int AAHeaderGetKeyIndex(AAHeader header, AAFieldKey key)
{
  v2 = *header;
  if (v2)
  {
    v4 = 0;
    v5 = *(header + 1);
    while (1)
    {
      v6 = *v5;
      v5 += 12;
      if (((v6 ^ key.ikey) & 0xFFFFFF) == 0)
      {
        break;
      }

      if (v2 == ++v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    LODWORD(v4) = -1;
  }

  return v4;
}

int AAHeaderGetFieldUInt(AAHeader header, uint32_t i, uint64_t *value)
{
  if (*header <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldUInt", 604, 101, 0, "invalid field index %u");
  }

  else
  {
    v3 = *(header + 1) + 48 * i;
    if (*(v3 + 4) == 1)
    {
      result = 0;
      *value = *(v3 + 40);
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldUInt", 606, 101, 0, "invalid type %d, expected UINT");
  }

  return -1;
}

int AAHeaderGetFieldString(AAHeader header, uint32_t i, size_t capacity, char *value, size_t *length)
{
  if (*header <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldString", 614, 101, 0, "invalid field index %u");
    return -1;
  }

  v5 = (*(header + 1) + 48 * i);
  if (v5[1] != 2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldString", 616, 101, 0, "invalid type %d, expected STRING");
    return -1;
  }

  v7 = v5[10];
  if (length)
  {
    *length = v7;
  }

  if (!capacity)
  {
    return 0;
  }

  if (v7 >= capacity)
  {
    return -1;
  }

  v8 = (v5[3] + 6);
  if (v7 + v8 > *(header + 2))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldString", 624, 101, 0, "invalid blob segment");
    return -1;
  }

  memcpy(value, (*(header + 4) + v8), v7);
  result = 0;
  value[v7] = 0;
  return result;
}

int AAHeaderGetFieldHash(AAHeader header, uint32_t i, size_t capacity, AAHashFunction *hash_function, uint8_t *value)
{
  if (*header <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldHash", 634, 101, 0, "invalid field index %u");
    return -1;
  }

  v5 = (*(header + 1) + 48 * i);
  if (v5[1] != 3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldHash", 636, 101, 0, "invalid type %d, expected HASH");
    return -1;
  }

  v7 = v5[10];
  if (v7 > capacity)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldHash", 639, 101, 0, "not enough capacity to store HASH");
    return -1;
  }

  v9 = (v5[3] + 4);
  if (v7 + v9 > *(header + 2))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldHash", 640, 101, 0, "invalid blob segment");
    return -1;
  }

  memcpy(value, (*(header + 4) + v9), v7);
  result = 0;
  if (hash_function)
  {
    v11 = v5[2];
    v12 = v11 - 70;
    v13 = v11 - 69;
    if (v12 >= 5)
    {
      v13 = -1;
    }

    *hash_function = v13;
  }

  return result;
}

int AAHeaderGetFieldTimespec(AAHeader header, uint32_t i, timespec *value)
{
  if (*header <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldTimespec", 647, 101, 0, "invalid field index %u");
    return -1;
  }

  v3 = (*(header + 1) + 48 * i);
  if (v3[1] != 4)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldTimespec", 649, 101, 0, "invalid type %d, expected TIMESPEC");
    return -1;
  }

  v4 = v3[2];
  if (v4 == 84)
  {
    v7 = v3[3];
    v8 = (v7 + 4);
    v9 = *(header + 2);
    v10 = (v7 + 12);
    if (v8 + 8 > v9 || v10 + 4 > v9)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldTimespec", 661, 101, 0, "invalid blob segment");
      return -1;
    }

    v12 = *(header + 4);
    v13 = *(v12 + v8);
    v14 = *(v12 + v10);
LABEL_19:
    result = 0;
    value->tv_sec = v13;
    value->tv_nsec = v14;
    return result;
  }

  if (v4 != 83)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_19;
  }

  v5 = (v3[3] + 4);
  if ((v5 + 8) <= *(header + 2))
  {
    v14 = 0;
    v13 = *(*(header + 4) + v5);
    goto LABEL_19;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldTimespec", 655, 101, 0, "invalid blob segment");
  return -1;
}

int AAHeaderSetFieldFlag(AAHeader header, uint32_t i, AAFieldKey key)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * key.skey[0] + 60) & 0x500) == 0)
  {
    goto LABEL_19;
  }

  v6 = *key.skey >> 8;
  if (v6 > 0x7F)
  {
    if (__maskrune(v6, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_19:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldFlag", 681, 101, 0, "invalid key");
    return -1;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * v6 + 60) & 0x500) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v7 = (key.ikey << 8) >> 24;
  if (v7 > 0x7F)
  {
    v8 = __maskrune(v7, 0x500uLL);
  }

  else
  {
    v8 = *(MEMORY[0x29EDCA600] + 4 * v7 + 60) & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v8)
  {
    goto LABEL_19;
  }

  if (i == -1)
  {
    i = append_field(header);
  }

  if ((update_field_sizes(header, i, 4u, 0) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldFlag", 685, 101, 0, "update_field_sizes failed");
  }

  else
  {
    v9 = *(header + 1) + 48 * i;
    *v9 = key;
    *(v9 + 4) = 0x2A00000000;
    *(v9 + 40) = 0;
    v15 = 0;
    v16 = 0;
    __src = key;
    __src.skey[3] = 42;
    v12 = v9 + 12;
    v11 = *(v9 + 12);
    v10 = *(v12 + 4);
    if (v11 + v10 <= *(header + 2))
    {
      memcpy((*(header + 4) + v11), &__src, v10);
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldFlag", 696, 101, 0, "invalid blob segment");
  }

  return -1;
}

uint64_t append_field(unsigned int *a1)
{
  v2 = *a1;
  if ((realloc_fields(a1, v2 + 1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "append_field", 46, 101, 0, "realloc_fields failed");
    return 0xFFFFFFFFLL;
  }

  else
  {
    ++*a1;
    v3 = *(a1 + 1);
    v4 = v3 + 48 * v2;
    if (v3)
    {
      memset_s((v3 + 48 * v2), 0x30uLL, 0, 0x30uLL);
    }

    *(v4 + 12) = *(a1 + 2);
    *(v4 + 24) = *(a1 + 5);
  }

  return v2;
}

int AAHeaderSetFieldUInt(AAHeader header, uint32_t i, AAFieldKey key, uint64_t value)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_16;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * key.skey[0] + 60) & 0x500) == 0)
  {
    goto LABEL_16;
  }

  v8 = *key.skey >> 8;
  if (v8 > 0x7F)
  {
    if (__maskrune(v8, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldUInt", 703, 101, 0, "invalid key");
    return -1;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * v8 + 60) & 0x500) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v9 = (key.ikey << 8) >> 24;
  if (v9 > 0x7F)
  {
    v10 = __maskrune(v9, 0x500uLL);
  }

  else
  {
    v10 = *(MEMORY[0x29EDCA600] + 4 * v9 + 60) & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v10)
  {
    goto LABEL_16;
  }

  if (value >= 0x100)
  {
    if (value >= 0x10000)
    {
      if (HIDWORD(value))
      {
        v12 = 12;
      }

      else
      {
        v12 = 8;
      }

      if (HIDWORD(value))
      {
        v11 = 56;
      }

      else
      {
        v11 = 52;
      }
    }

    else
    {
      v11 = 50;
      v12 = 6;
    }
  }

  else
  {
    v11 = 49;
    v12 = 5;
  }

  if (i == -1)
  {
    i = append_field(header);
  }

  if ((update_field_sizes(header, i, v12, 0) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldUInt", 713, 101, 0, "update_field_sizes failed");
  }

  else
  {
    v14 = *(header + 1) + 48 * i;
    *v14 = key;
    *(v14 + 4) = 1;
    *(v14 + 8) = v11;
    *(v14 + 40) = value;
    v19 = value;
    v20 = 0;
    __src = key;
    __src.skey[3] = v11;
    v17 = v14 + 12;
    v16 = *(v14 + 12);
    v15 = *(v17 + 4);
    if (v16 + v15 <= *(header + 2))
    {
      memcpy((*(header + 4) + v16), &__src, v15);
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldUInt", 725, 101, 0, "invalid blob segment");
  }

  return -1;
}

int AAHeaderSetFieldString(AAHeader header, uint32_t i, AAFieldKey key, const char *value, size_t length)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_16;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * key.skey[0] + 60) & 0x500) == 0)
  {
    goto LABEL_16;
  }

  v10 = *key.skey >> 8;
  if (v10 > 0x7F)
  {
    if (__maskrune(v10, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldString", 732, 101, 0, "invalid key");
    return -1;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * v10 + 60) & 0x500) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v11 = (key.ikey << 8) >> 24;
  if (v11 > 0x7F)
  {
    v12 = __maskrune(v11, 0x500uLL);
  }

  else
  {
    v12 = *(MEMORY[0x29EDCA600] + 4 * v11 + 60) & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v12)
  {
    goto LABEL_16;
  }

  if (length >= 0x10000)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldString", 733, 101, 0, "string too long");
    return -1;
  }

  if (i == -1)
  {
    i = append_field(header);
  }

  if ((update_field_sizes(header, i, length + 6, 0) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldString", 737, 101, 0, "update_field_sizes failed");
    return -1;
  }

  v14 = *(header + 1) + 48 * i;
  *v14 = key;
  *(v14 + 4) = 0x5000000002;
  *(v14 + 40) = length;
  v15 = *(v14 + 12);
  if ((v15 + 6) > *(header + 2) || (v16 = *(header + 4) + v15, *v16 = key.ikey | 0x50000000, *(v16 + 4) = length, v17 = (*(v14 + 12) + 6), v17 + length > *(header + 2)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldString", 750, 101, 0, "invalid blob segment");
    return -1;
  }

  v18 = *(header + 4);
  if (value)
  {
    memcpy((v18 + v17), value, length);
  }

  else if (v18)
  {
    memset_s((v18 + v17), length, 0, length);
  }

  return 0;
}

int AAHeaderSetFieldHash(AAHeader header, uint32_t i, AAFieldKey key, AAHashFunction hash_function, const uint8_t *value)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_21;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * key.skey[0] + 60) & 0x500) == 0)
  {
    goto LABEL_21;
  }

  v10 = *key.skey >> 8;
  if (v10 > 0x7F)
  {
    if (__maskrune(v10, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_21:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldHash", 757, 101, 0, "invalid key");
    return -1;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * v10 + 60) & 0x500) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  v11 = (key.ikey << 8) >> 24;
  if (v11 > 0x7F)
  {
    v12 = __maskrune(v11, 0x500uLL);
  }

  else
  {
    v12 = *(MEMORY[0x29EDCA600] + 4 * v11 + 60) & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v12)
  {
    goto LABEL_21;
  }

  if (hash_function - 1 >= 5)
  {
    v17 = -1;
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldHash", 760, 101, 0, "invalid HASH subtype: %d", -1);
    return v17;
  }

  v13 = dword_296AD1F98[hash_function - 1];
  if (i == -1)
  {
    i = append_field(header);
  }

  if ((update_field_sizes(header, i, v13 + 4, 0) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldHash", 764, 101, 0, "update_field_sizes failed");
    return -1;
  }

  v14 = *(header + 1) + 48 * i;
  *v14 = key;
  *(v14 + 4) = 3;
  *(v14 + 8) = hash_function + 69;
  *(v14 + 40) = v13;
  v15 = *(v14 + 12);
  if ((v15 + 4) > *(header + 2) || (*(*(header + 4) + v15) = key.ikey | ((hash_function + 69) << 24), v16 = (*(v14 + 12) + 4), v16 + v13 > *(header + 2)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldHash", 776, 101, 0, "invalid blob segment");
    return -1;
  }

  v19 = *(header + 4);
  if (value)
  {
    memcpy((v19 + v16), value, v13);
  }

  else if (v19)
  {
    memset_s((v19 + v16), v13, 0, v13);
  }

  return 0;
}

int AAHeaderSetFieldTimespec(AAHeader header, uint32_t i, AAFieldKey key, const timespec *value)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_25;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * key.skey[0] + 60) & 0x500) == 0)
  {
    goto LABEL_25;
  }

  v8 = *key.skey >> 8;
  if (v8 > 0x7F)
  {
    if (__maskrune(v8, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_25:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldTimespec", 783, 101, 0, "invalid key");
    return -1;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * v8 + 60) & 0x500) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v9 = (key.ikey << 8) >> 24;
  if (v9 > 0x7F)
  {
    v10 = __maskrune(v9, 0x500uLL);
  }

  else
  {
    v10 = *(MEMORY[0x29EDCA600] + 4 * v9 + 60) & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v10)
  {
    goto LABEL_25;
  }

  if (value->tv_nsec)
  {
    v11 = 16;
  }

  else
  {
    v11 = 12;
  }

  if (value->tv_nsec)
  {
    v12 = 84;
  }

  else
  {
    v12 = 83;
  }

  if (i == -1)
  {
    i = append_field(header);
  }

  if ((update_field_sizes(header, i, v11, 0) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldTimespec", 791, 101, 0, "update_field_sizes failed");
  }

  else
  {
    v13 = *(header + 1) + 48 * i;
    *v13 = key;
    *(v13 + 4) = 4;
    *(v13 + 8) = v12;
    *(v13 + 40) = 0;
    __src = key;
    __src.skey[3] = v12;
    tv_nsec = value->tv_nsec;
    tv_sec = value->tv_sec;
    v21 = tv_nsec;
    v22 = 0;
    v17 = v13 + 12;
    v16 = *(v13 + 12);
    v15 = *(v17 + 4);
    if (v16 + v15 <= *(header + 2))
    {
      memcpy((*(header + 4) + v16), &__src, v15);
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldTimespec", 804, 101, 0, "invalid blob segment");
  }

  return -1;
}

int AAHeaderSetFieldBlob(AAHeader header, uint32_t i, AAFieldKey key, uint64_t size)
{
  if (key.skey[0] > 0x7F)
  {
    if (!__maskrune(key.skey[0], 0x500uLL))
    {
      goto LABEL_31;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * key.skey[0] + 60) & 0x500) == 0)
  {
    goto LABEL_31;
  }

  v8 = *key.skey >> 8;
  if (v8 > 0x7F)
  {
    if (__maskrune(v8, 0x500uLL))
    {
      goto LABEL_9;
    }

LABEL_31:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldBlob", 811, 101, 0, "invalid key");
    return -1;
  }

  if ((*(MEMORY[0x29EDCA600] + 4 * v8 + 60) & 0x500) == 0)
  {
    goto LABEL_31;
  }

LABEL_9:
  v9 = (key.ikey << 8) >> 24;
  if (v9 > 0x7F)
  {
    v10 = __maskrune(v9, 0x500uLL);
  }

  else
  {
    v10 = *(MEMORY[0x29EDCA600] + 4 * v9 + 60) & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v10)
  {
    goto LABEL_31;
  }

  if (HIDWORD(size))
  {
    v11 = 12;
  }

  else
  {
    v11 = 8;
  }

  if (HIDWORD(size))
  {
    v12 = 67;
  }

  else
  {
    v12 = 66;
  }

  if (size >= 0x10000)
  {
    v13 = v11;
  }

  else
  {
    v13 = 6;
  }

  if (size >= 0x10000)
  {
    v14 = v12;
  }

  else
  {
    v14 = 65;
  }

  if (i == -1)
  {
    i = append_field(header);
  }

  if ((update_field_sizes(header, i, v13, size) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldBlob", 820, 101, 0, "update_field_sizes failed");
  }

  else
  {
    v15 = *(header + 1) + 48 * i;
    *v15 = key;
    *(v15 + 4) = 5;
    *(v15 + 8) = v14;
    *(v15 + 40) = 0;
    v21 = size;
    v22 = 0;
    __src = key;
    __src.skey[3] = v14;
    v18 = v15 + 12;
    v17 = *(v15 + 12);
    v16 = *(v18 + 4);
    if (v17 + v16 <= *(header + 2))
    {
      memcpy((*(header + 4) + v17), &__src, v16);
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldBlob", 832, 101, 0, "invalid blob segment");
  }

  return -1;
}

uint64_t aaEntryXATBlobInitWithEncodedData(unint64_t *a1, char *__src, rsize_t __smax)
{
  *a1 = 0;
  a1[3] = 0;
  v3 = a1 + 3;
  if (!__smax)
  {
    return 0;
  }

  if (__smax < 4)
  {
    goto LABEL_3;
  }

  v8 = 0;
  v9 = 1;
  while (2)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *&__src[v11];
      if (v12 < 4)
      {
        goto LABEL_3;
      }

      v13 = __CFADD__(v12, v11);
      v14 = v12 + v11;
      if (v13 || v14 > __smax)
      {
        goto LABEL_3;
      }

      if (v8)
      {
        v15 = a1[2];
        v16 = (*a1)++;
        *(v15 + 8 * v16) = v11;
        if (v14 >= __smax)
        {
          goto LABEL_42;
        }

        ++v10;
        goto LABEL_14;
      }

      ++v10;
      if (v14 >= __smax)
      {
        break;
      }

LABEL_14:
      v11 = v14;
      if (v14 + 4 > __smax)
      {
        goto LABEL_3;
      }
    }

    if (v9)
    {
      if (v10 <= 0xFFFFFFFE)
      {
        v17 = a1[1];
        if (v17 >= v10)
        {
          goto LABEL_28;
        }

        v18 = a1[1];
        do
        {
          if (v18)
          {
            v18 *= 2;
          }

          else
          {
            v18 = 16;
          }
        }

        while (v18 < v10);
        if (v18 <= v17)
        {
LABEL_28:
          if ((__smax & 0x8000000000000000) == 0)
          {
            v21 = a1[4];
            if (v21 >= __smax)
            {
              goto LABEL_40;
            }

            do
            {
              while (!v21)
              {
                v21 = 0x4000;
                v23 = 0x4000;
                if (__smax <= 0x4000)
                {
                  goto LABEL_38;
                }
              }

              v22 = v21 >> 1;
              if ((v21 & (v21 >> 1)) != 0)
              {
                v22 = v21 & (v21 >> 1);
              }

              v21 += v22;
            }

            while (v21 < __smax);
            v23 = v21;
            if (v21 >= 0x2000000001)
            {
              *__error() = 12;
            }

            else
            {
LABEL_38:
              v24 = a1[5];
              v25 = realloc(v24, v23);
              if (v25)
              {
                a1[4] = v23;
                a1[5] = v25;
LABEL_40:
                v9 = 0;
                v8 = 1;
                if (__smax < 4)
                {
                  goto LABEL_3;
                }

                continue;
              }

              free(v24);
            }

            *v3 = 0;
            v3[1] = 0;
            v3[2] = 0;
          }
        }

        else
        {
          a1[1] = v18;
          if (8 * v18 >= 0x2000000001)
          {
            *__error() = 12;
          }

          else
          {
            v19 = a1[2];
            v20 = realloc(v19, 8 * v18);
            if (v20)
            {
              a1[2] = v20;
              goto LABEL_28;
            }

            free(v19);
          }

          a1[2] = 0;
        }
      }

LABEL_3:
      *a1 = 0;
      a1[3] = 0;
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithEncodedData", 72, 104, 0, "invalid XAT blob");
      goto LABEL_4;
    }

    break;
  }

LABEL_42:
  *v3 = 0;
  if ((__smax & 0x8000000000000000) != 0)
  {
    goto LABEL_3;
  }

  v26 = a1[4];
  if (v26 < __smax)
  {
    v27 = 0x4000;
    do
    {
      while (!v26)
      {
        v26 = 0x4000;
        if (__smax <= 0x4000)
        {
          goto LABEL_54;
        }
      }

      v28 = v26 >> 1;
      if ((v26 & (v26 >> 1)) != 0)
      {
        v28 = v26 & (v26 >> 1);
      }

      v26 += v28;
    }

    while (v26 < __smax);
    v27 = v26;
    if (v26 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_75:
      a1[4] = 0;
      a1[5] = 0;
      goto LABEL_3;
    }

LABEL_54:
    v29 = a1[5];
    v30 = realloc(v29, v27);
    if (!v30)
    {
      free(v29);
      goto LABEL_75;
    }

    a1[4] = v27;
    a1[5] = v30;
  }

  v31 = a1[5];
  if (__src)
  {
    memcpy((v31 + *v3), __src, __smax);
  }

  else if (v31)
  {
    memset_s((v31 + *v3), __smax, 0, __smax);
  }

  a1[3] += __smax;
  v32 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v33 = 0;
  while (v32 <= v33)
  {
    v34 = 0;
    v35 = 0xFFFFFFFFLL;
LABEL_66:
    v36 = (v34 + 1);
    v37 = v35 - 4;
    while (*v36++)
    {
      if (!--v37)
      {
        goto LABEL_73;
      }
    }

    result = 0;
    if (++v33 == v32)
    {
      return result;
    }
  }

  v34 = (a1[5] + *(a1[2] + 8 * v33));
  v35 = *v34;
  if (v35 >= 5)
  {
    goto LABEL_66;
  }

LABEL_73:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithEncodedData", 84, 104, 0, "invalid XAT key");
LABEL_4:
  *a1 = 0;
  a1[3] = 0;
  return 0xFFFFFFFFLL;
}

uint64_t aaEntryXATBlobInitWithPath(AAEntryXATBlob_impl *a1, char *__s, const char *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((concatPath(v9, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithPath", 99, 104, 0, "invalid path %s/%s");
    return 0xFFFFFFFFLL;
  }

  v4 = open(v9, 0x200000);
  if (v4 < 0)
  {
    v7 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithPath", 110, 104, v7, "open: %s");
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if ((aaEntryXATBlobInitWithFD(a1, v4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithPath", 112, 104, 0, "aaEntryXATBlobInitWithFD failed: %s", v9);
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  close(v5);
  return v6;
}

uint64_t aaEntryXATBlobInitWithFD(AAEntryXATBlob_impl *a1, int fd)
{
  *a1 = 0;
  *(a1 + 3) = 0;
  v4 = flistxattr(fd, 0, 0, 0);
  if (v4 < 1)
  {
    v6 = 0;
    v7 = 0;
LABEL_5:
    free(v6);
    free(v7);
    return 0;
  }

  v5 = v4;
  if (v4 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_26:
    v17 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 144, 104, *v17, "malloc");
    v6 = 0;
    v7 = 0;
    goto LABEL_27;
  }

  v9 = malloc(v4);
  if (!v9)
  {
    goto LABEL_26;
  }

  v7 = v9;
  v10 = flistxattr(fd, v9, v5, 0);
  if (v10 < 1)
  {
    v18 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 153, 104, *v18, "listxattr");
    v6 = 0;
    goto LABEL_27;
  }

  v22 = v10;
  v11 = 0;
  v6 = 0;
  v12 = 0;
  v13 = v7;
  while (v7[v11])
  {
LABEL_24:
    if (++v11 == v10)
    {
      goto LABEL_5;
    }
  }

  v14 = fgetxattr(fd, v13, 0, 0, 0, 0);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v19 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 167, 104, v19, "getxattr failed for name=%s");
    goto LABEL_27;
  }

  v15 = v14;
  if (v14 >= 0xFFFFFFFF)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 169, 104, 0, "attribute data is too large name=%s");
    goto LABEL_27;
  }

  if (v14 <= v12)
  {
    v16 = v6;
    goto LABEL_21;
  }

  do
  {
    if (v12)
    {
      v12 += v12 >> 1;
    }

    else
    {
      v12 = 256;
    }
  }

  while (v14 > v12);
  if (v12 < 0x2000000001)
  {
    v16 = realloc(v6, v12);
    if (!v16)
    {
      free(v6);
      goto LABEL_35;
    }

LABEL_21:
    if (fgetxattr(fd, v13, v16, v12, 0, 0) < 0)
    {
      v20 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 187, 104, v20, "getxattr failed for name=%s");
    }

    else
    {
      if ((AAEntryXATBlobAppendEntry(a1, v13, v16, v15) & 0x80000000) == 0)
      {
        v13 = &v7[v11 + 1];
        v6 = v16;
        v10 = v22;
        goto LABEL_24;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 190, 104, 0, "inserting XAT entry");
    }

    v6 = v16;
    goto LABEL_27;
  }

  *__error() = 12;
LABEL_35:
  v21 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobInitWithFD", 178, 104, *v21, "malloc");
  v6 = 0;
LABEL_27:
  free(v6);
  free(v7);
  *a1 = 0;
  *(a1 + 3) = 0;
  return 0xFFFFFFFFLL;
}

int AAEntryXATBlobAppendEntry(AAEntryXATBlob xat, const char *key, const uint8_t *data, size_t data_size)
{
  v8 = strlen(key);
  v9 = v8 + 1;
  v10 = v8 + 5;
  if (v8 + 1 >= 0xFFFFFFFFFFFFFFFCLL || (v11 = data_size + v10, __CFADD__(data_size, v10)) || v11 >= 0xFFFFFFFF)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobAppendEntry", 377, 104, 0, "invalid attribute size");
    return -1;
  }

  if (v11 < 4)
  {
    goto LABEL_48;
  }

  v12 = (xat + 24);
  v13 = *(xat + 3);
  v14 = v13 + v11;
  if (__CFADD__(v13, v11))
  {
    goto LABEL_48;
  }

  v16 = *xat;
  v15 = *(xat + 1);
  v17 = *xat + 1;
  if (v15 < v17)
  {
    v18 = *(xat + 1);
    do
    {
      if (v18)
      {
        v18 *= 2;
      }

      else
      {
        v18 = 16;
      }
    }

    while (v18 < v17);
    if (v18 > v15)
    {
      v20 = (xat + 16);
      v19 = *(xat + 2);
      *(xat + 1) = v18;
      if (8 * v18 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_47:
        *xat = 0;
        *v20 = 0;
        *(xat + 3) = 0;
        goto LABEL_48;
      }

      v39 = v19;
      v40 = v16;
      v21 = realloc(v19, 8 * v18);
      if (!v21)
      {
        free(v39);
        goto LABEL_47;
      }

      *v20 = v21;
      v16 = v40;
    }
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  v22 = *(xat + 4);
  if (v22 < v14)
  {
    do
    {
      while (!v22)
      {
        v22 = 0x4000;
        if (v14 <= 0x4000)
        {
          v22 = 0x4000;
          goto LABEL_29;
        }
      }

      v23 = v22 >> 1;
      if ((v22 & (v22 >> 1)) != 0)
      {
        v23 = v22 & (v22 >> 1);
      }

      v22 += v23;
    }

    while (v22 < v14);
    if (v22 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_42;
    }

LABEL_29:
    v41 = v16;
    v24 = *(xat + 5);
    v25 = realloc(v24, v22);
    if (v25)
    {
      *(xat + 4) = v22;
      *(xat + 5) = v25;
      v16 = v41;
      goto LABEL_31;
    }

    free(v24);
LABEL_42:
    *(xat + 4) = 0;
    *(xat + 5) = 0;
LABEL_43:
    *xat = 0;
    *(xat + 3) = 0;
    goto LABEL_48;
  }

LABEL_31:
  v26 = *v12;
  v27 = *v12 + v11;
  if (__CFADD__(*v12, v11) || (v27 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  if (v22 < v27)
  {
    do
    {
      while (!v22)
      {
        v22 = 0x4000;
        if (v27 <= 0x4000)
        {
          v42 = v16;
          v29 = (xat + 40);
          v22 = 0x4000;
          goto LABEL_53;
        }
      }

      v28 = v22 >> 1;
      if ((v22 & (v22 >> 1)) != 0)
      {
        v28 = v22 & (v22 >> 1);
      }

      v22 += v28;
    }

    while (v22 < v27);
    v29 = (xat + 40);
    if (v22 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_61;
    }

    v42 = v16;
LABEL_53:
    v39 = v29;
    v33 = *v29;
    v30 = realloc(v33, v22);
    if (v30)
    {
      *(xat + 5) = v30;
      v31 = (xat + 40);
      *(xat + 4) = v22;
      v26 = *(xat + 3);
      goto LABEL_55;
    }

    free(v33);
    v29 = v39;
LABEL_61:
    *v29 = 0;
    *v12 = 0;
    *(xat + 4) = 0;
    goto LABEL_48;
  }

  v42 = v16;
  v31 = (xat + 40);
  v30 = *(xat + 5);
  if (v30)
  {
LABEL_55:
    memset_s(&v30[v26], v11, 0, v11);
    v26 = *v12;
  }

  *(xat + 3) = v26 + v11;
  v34 = *(xat + 2);
  v35 = (*xat)++;
  *(v34 + 8 * v35) = v13;
  if (v13 >= 0xFFFFFFFFFFFFFFFCLL || v13 + 4 > *v12 || (*(*v31 + v13) = v11, v42 < 0))
  {
LABEL_48:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobAppendEntry", 381, 104, 0, "alloc XAT entry", v39);
    return -1;
  }

  v36 = *(xat + 5);
  v37 = *(*(xat + 2) + 8 * v42);
  *(v36 + v37) = v11;
  v38 = (v36 + v37 + 4);
  memcpy(v38, key, v9);
  memcpy(&v38[v9], data, data_size);
  return 0;
}

uint64_t aaEntryXATBlobApplyToFD(void *a1, int fd, char a3)
{
  if ((a3 & 8) != 0)
  {
    v6 = flistxattr(fd, 0, 0, 0);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v8 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "clearXATFD", 28, 104, v8, "listxattr");
LABEL_38:
      v9 = 0;
      goto LABEL_39;
    }

    v7 = v6;
    if (v6)
    {
      if (v6 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_37:
        v28 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "clearXATFD", 34, 104, v28, "malloc");
        goto LABEL_38;
      }

      v21 = malloc(v6);
      if (!v21)
      {
        goto LABEL_37;
      }

      v9 = v21;
      v22 = flistxattr(fd, v21, v7, 0);
      if (v22 < 0)
      {
        v30 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "clearXATFD", 43, 104, v30, "listxattr");
        goto LABEL_39;
      }

      v23 = v22;
      if (v22)
      {
        v24 = v9 + 1;
        v25 = v9;
        do
        {
          if (*(v24 - 1))
          {
            v26 = v25;
          }

          else
          {
            v27 = fremovexattr(fd, v25, 0);
            v26 = v24;
            if (v27 < 0)
            {
              v31 = *__error();
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "clearXATFD", 57, 104, v31, "removexattr failed for name=%s");
LABEL_39:
              free(v9);
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobApplyToFD", 212, 104, 0, "clearing extended attributes");
              return 0xFFFFFFFFLL;
            }
          }

          ++v24;
          v25 = v26;
          --v23;
        }

        while (v23);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if (*a1)
  {
    v10 = 0;
    while (1)
    {
      v11 = (a1[5] + *(a1[2] + 8 * v10));
      v14 = *v11;
      v12 = (v11 + 1);
      v13 = v14;
      if (v14 < 5)
      {
        goto LABEL_27;
      }

      v15 = 0;
      v16 = (a1[5] + *(a1[2] + 8 * v10) + v13);
      while (v12[v15])
      {
        v17 = &v12[++v15];
        if (&v12[v15] >= v16)
        {
          if (!v15)
          {
            goto LABEL_27;
          }

          goto LABEL_18;
        }
      }

      v17 = &v12[v15];
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_18:
      if (v17 == v16)
      {
LABEL_27:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobApplyToFD", 225, 104, 0, "invalid XAT entry key %zu");
        return 0xFFFFFFFFLL;
      }

      v18 = v16 == v17 + 1 ? 0 : v17 + 1;
      if (fsetxattr(fd, v12, v18, v16 - (v17 + 1), 0, 0) < 0)
      {
        v19 = __error();
        if ((a3 & 1) == 0 || *v19 != 1)
        {
          break;
        }
      }

      if (++v10 >= *a1)
      {
        return 0;
      }
    }

    v29 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "aaEntryXATBlobApplyToFD", 238, 104, v29, "setxattr");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

AAEntryXATBlob AAEntryXATBlobCreate(void)
{
  v0 = malloc(0x30uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x30uLL, 0, 0x30uLL);
  }

  else
  {
    v2 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobCreate", 251, 104, *v2, "malloc");
  }

  return v1;
}

void AAEntryXATBlobDestroy(AAEntryXATBlob xat)
{
  if (xat)
  {
    free(*(xat + 2));
    free(*(xat + 5));
    memset_s(xat + 24, 0x18uLL, 0, 0x18uLL);
    memset_s(xat, 0x30uLL, 0, 0x30uLL);

    free(xat);
  }
}

AAEntryXATBlob AAEntryXATBlobCreateWithEncodedData(const uint8_t *data, size_t data_size)
{
  v4 = AAEntryXATBlobCreate();
  v5 = v4;
  if (v4 && (aaEntryXATBlobInitWithEncodedData(v4, data, data_size) & 0x80000000) != 0)
  {
    AAEntryXATBlobDestroy(v5);
    return 0;
  }

  return v5;
}

AAEntryXATBlob AAEntryXATBlobCreateWithPath(const char *dir, const char *path, AAFlagSet flags)
{
  v5 = AAEntryXATBlobCreate();
  v6 = v5;
  if (v5 && (aaEntryXATBlobInitWithPath(v5, dir, path) & 0x80000000) != 0)
  {
    AAEntryXATBlobDestroy(v6);
    return 0;
  }

  return v6;
}

int AAEntryXATBlobClear(AAEntryXATBlob xat)
{
  *xat = 0;
  *(xat + 3) = 0;
  return 0;
}

int AAEntryXATBlobApplyToPath(AAEntryXATBlob xat, const char *dir, const char *path, AAFlagSet flags)
{
  v4 = flags;
  v12 = *MEMORY[0x29EDCA608];
  if ((concatPath(v11, 0x800uLL, dir, path) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobApplyToPath", 299, 104, 0, "invalid path %s/%s");
    return -1;
  }

  v6 = open(v11, 0x200000);
  if (v6 < 0)
  {
    v9 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobApplyToPath", 304, 104, v9, "open: %s");
    return -1;
  }

  v7 = v6;
  if ((aaEntryXATBlobApplyToFD(xat, v6, v4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobApplyToPath", 306, 104, 0, "applying XAT blob: %s", v11);
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  close(v7);
  return v8;
}

int AAEntryXATBlobGetEntry(AAEntryXATBlob xat, uint32_t i, size_t key_capacity, char *key, size_t *key_length, size_t data_capacity, uint8_t *data, size_t *data_size)
{
  if (*xat <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobGetEntry", 328, 104, 0, "invalid XAT index %u", data, data_size);
    return -1;
  }

  v8 = (*(xat + 5) + *(*(xat + 2) + 8 * i));
  v9 = v8 + 1;
  v10 = *v8;
  if (v10 < 5)
  {
    goto LABEL_15;
  }

  v14 = 0;
  while (v9[v14])
  {
    if (++v14 + 4 >= v10)
    {
      goto LABEL_15;
    }
  }

  v15 = v10 - 5 - v14;
  if (v15 >= v10)
  {
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobGetEntry", 338, 104, 0, "invalid XAT blob");
    return -1;
  }

  if (key_length)
  {
    *key_length = v14;
  }

  if (data_size)
  {
    *data_size = v15;
  }

  if (v14 >= key_capacity)
  {
    if (key_capacity)
    {
      return -1;
    }
  }

  else
  {
    memcpy(key, v9, v14);
    key[v14] = 0;
  }

  if (v15 > data_capacity)
  {
    if (!data_capacity)
    {
      return 0;
    }

    return -1;
  }

  memcpy(data, v8 + v10 - v15, v15);
  return 0;
}

int AAEntryXATBlobSetEntry(AAEntryXATBlob xat, uint32_t i, const char *key, const uint8_t *data, size_t data_size)
{
  if (*xat <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobSetEntry", 401, 104, 0, "invalid XAT index");
    return -1;
  }

  v10 = strlen(key);
  v11 = v10 + 1;
  v12 = v10 + 5;
  if (v10 + 1 >= 0xFFFFFFFFFFFFFFFCLL || (v14 = data_size + v12, __CFADD__(data_size, v12)) || v14 >= 0xFFFFFFFF)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobSetEntry", 409, 104, 0, "invalid attribute size");
    return -1;
  }

  if (v14 < 4)
  {
    goto LABEL_11;
  }

  v15 = i;
  v16 = *(*(xat + 2) + 8 * i);
  v17 = *(xat + 5);
  v18 = *&v17[v16];
  v19 = v16 + v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_11;
  }

  v20 = *(xat + 3);
  v21 = v20 - v19;
  if (v20 < v19)
  {
    goto LABEL_11;
  }

  v22 = v14 - v18;
  if (v14 > v18)
  {
    v23 = v20 + v22;
    if ((v20 + v22) < 0)
    {
LABEL_11:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobSetEntry", 412, 104, 0, "alloc XAT entry", v42, v43, v44, v45);
      return -1;
    }

    v24 = *(xat + 4);
    if (v24 < v23)
    {
      v25 = 0x4000;
      do
      {
        while (!v24)
        {
          v24 = 0x4000;
          if (v23 <= 0x4000)
          {
            goto LABEL_29;
          }
        }

        v26 = v24 >> 1;
        if ((v24 & (v24 >> 1)) != 0)
        {
          v26 = v24 & (v24 >> 1);
        }

        v24 += v26;
      }

      while (v24 < v23);
      v25 = v24;
      if (v24 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_44;
      }

LABEL_29:
      v43 = v22;
      v44 = v20 - v19;
      v45 = v15;
      v42 = v25;
      v32 = realloc(v17, v25);
      if (v32)
      {
        v22 = v43;
        *(xat + 4) = v42;
        *(xat + 5) = v32;
        v17 = v32;
        v21 = v20 - v19;
        v15 = v45;
        goto LABEL_31;
      }

      free(v17);
LABEL_44:
      *(xat + 3) = 0;
      *(xat + 4) = 0;
      *(xat + 5) = 0;
      goto LABEL_11;
    }

LABEL_31:
    if (v20 != v19)
    {
      v33 = &v17[v19];
      v34 = &v17[v19 + v22];
      v35 = v15;
      v36 = v22;
      memmove(v34, v33, v21);
      v22 = v36;
      v15 = v35;
    }

    v20 = *(xat + 3) + v22;
    goto LABEL_34;
  }

  if (v14 < v18)
  {
    v27 = v18 - v14;
    if (v20 != v19)
    {
      v28 = &v17[v19];
      v29 = &v17[v19 - v27];
      v30 = v15;
      v31 = v27;
      memmove(v29, v28, v21);
      v27 = v31;
      v15 = v30;
      v19 = *(xat + 3);
    }

    v20 = v19 - v27;
LABEL_34:
    *(xat + 3) = v20;
  }

  if (v16 >= 0xFFFFFFFFFFFFFFFCLL || v16 + 4 > v20)
  {
    goto LABEL_11;
  }

  *(*(xat + 5) + v16) = v14;
  if (*xat > v15)
  {
    v37 = v15;
    while (v16 < 0xFFFFFFFFFFFFFFFCLL && v16 + 4 <= *(xat + 3))
    {
      v38 = *(*(xat + 5) + v16);
      *(*(xat + 2) + 8 * v37) = v16;
      v16 += v38;
      if (++v37 >= *xat)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_11;
  }

LABEL_42:
  v39 = *(xat + 5);
  v40 = *(*(xat + 2) + 8 * v15);
  *(v39 + v40) = v14;
  v41 = (v39 + v40 + 4);
  memcpy(v41, key, v11);
  memcpy(&v41[v11], data, data_size);
  return 0;
}

int AAEntryXATBlobRemoveEntry(AAEntryXATBlob xat, uint32_t i)
{
  v2 = *xat;
  if (*xat <= i || (v4 = i, v5 = *(*(xat + 2) + 8 * i), v6 = *(xat + 5), v7 = *(v6 + v5), v8 = __CFADD__(v5, v7), v9 = v5 + v7, v8) || (v10 = *(xat + 3), v10 < v9))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldXAT.c", "AAEntryXATBlobRemoveEntry", 426, 104, 0, "invalid XAT index %u", i);
    return -1;
  }

  else
  {
    if (v7)
    {
      if (v10 != v9)
      {
        memmove((v6 + v9 - v7), (v6 + v9), v10 - v9);
        v9 = *(xat + 3);
        v2 = *xat;
      }

      *(xat + 3) = v9 - v7;
    }

    v12 = v2 - 1;
    *xat = v12;
    if (v12 > v4)
    {
      v13 = *(xat + 2);
      do
      {
        *(v13 + 8 * v4) = *(v13 + 8 * v4 + 8) - v7;
        ++v4;
      }

      while (v4 < *xat);
    }

    return 0;
  }
}

uint64_t loadAndDecodeHeader_Ustar(uint64_t a1, uint64_t *a2)
{
  *&v125[1022] = *MEMORY[0x29EDCA608];
  if (AAHeaderAssign(*(a1 + 88), *(a1 + 96)) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 199, 70, 0, "init header");
    return 0xFFFFFFFFLL;
  }

  if ((decodeStreamLoadHeader(a1, 0x200uLL) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 202, 70, 0, "invalid tar archive");
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 64);
  if (isZero(v4, 512))
  {
    if ((decodeStreamLoadHeader(a1, 0x400uLL) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 207, 70, 0, "invalid tar archive");
      return 0xFFFFFFFFLL;
    }

    if (!isZero(*(a1 + 64), 1024))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 209, 70, 0, "Invalid EOF record header");
      return 0xFFFFFFFFLL;
    }

    return 1;
  }

  v113 = a2;
  v6 = 70;
  while (1)
  {
    while (1)
    {
      v7 = *(a1 + 72);
      v8 = &v4[v7];
      v9 = &v4[v7 - 356];
      v10 = *v9;
      if (v10 != 120 && v10 != 103)
      {
        break;
      }

      v122 = 0;
      if ((tarParseInt(v8 - 388, 0xCuLL, &v122) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 229, 70, 0, "invalid pax header", v110);
        return 0xFFFFFFFFLL;
      }

      v11 = v122;
      if (v10 == 103 && AAHeaderClear(*(a1 + 88)) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 233, 70, 0, "clear header", v110);
        return 0xFFFFFFFFLL;
      }

      if ((decodeStreamLoadHeader(a1, v7 + ((v11 + 511) & 0xFFFFFFFFFFFFFE00) + 512) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 236, 70, 0, "truncated stream", v110);
        return 0xFFFFFFFFLL;
      }

      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 64) + v7;
        v14 = v13 + v11;
        while (1)
        {
          __endptr = 0;
          v15 = strtoll((v13 + v12), &__endptr, 10);
          if (!v15 || ((v12 += v15, v16 = __endptr, v12 <= v11) ? (v17 = __endptr > v14) : (v17 = 1), v17 || (v18 = (v12 - 1), v19 = (v13 + v12 - 1), *v19 != 10)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 249, 70, 0, "invalid xhdr entry", v110);
            return 0xFFFFFFFFLL;
          }

          v18[v13] = 0;
          v20 = &v16[-v13];
          if (&v16[-v13] < v18)
          {
            while (1)
            {
              v21 = *v16++;
              if (v21 != 32)
              {
                break;
              }

              if (++v20 >= v18)
              {
                goto LABEL_145;
              }
            }
          }

          if (v20 >= v18)
          {
LABEL_145:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 257, 70, 0, "invalid xhdr entry", v110);
            return 0xFFFFFFFFLL;
          }

          v22 = v13;
          while (v20[v22] != 61)
          {
            --v18;
            ++v22;
            if (v20 == v18)
            {
              goto LABEL_145;
            }
          }

          v112 = v14;
          v20[v22] = 0;
          v23 = &v20[v22 + 1];
          fprintf(*MEMORY[0x29EDCA610], "xhdr %s: %s\n", &v20[v13], v23);
          if (!strcmp(&v20[v13], "size"))
          {
            v26.ikey = 5521732;
            v24 = 5;
LABEL_43:
            v25 = 1;
            goto LABEL_48;
          }

          if (!strcmp(&v20[v13], "path"))
          {
            v25 = 0;
            v24 = 2;
            v26.ikey = 5521744;
            goto LABEL_48;
          }

          if (!strcmp(&v20[v13], "uid"))
          {
            break;
          }

          if (!strcmp(&v20[v13], "gid"))
          {
            v25 = 1;
            v26.ikey = 4475207;
            goto LABEL_47;
          }

          if (!strcmp(&v20[v13], "uname"))
          {
            v26.ikey = 5130581;
            v24 = 2;
            goto LABEL_43;
          }

          if (!strcmp(&v20[v13], "gname"))
          {
            v24 = 2;
            v25 = 1;
            v26.ikey = 5130567;
          }

          else if (!strcmp(&v20[v13], "linkpath"))
          {
            v25 = 0;
            v24 = 2;
            v26.ikey = 4935244;
          }

          else
          {
            if (strcmp(&v20[v13], "mtime"))
            {
              goto LABEL_96;
            }

            v24 = 4;
            v25 = 1;
            v26.ikey = 5067853;
          }

LABEL_48:
          v27 = *v23;
          if (!*v23)
          {
            v31 = *(a1 + 88);
            KeyIndex = AAHeaderGetKeyIndex(v31, v26);
            if ((KeyIndex & 0x80000000) == 0 && AAHeaderRemoveField(v31, KeyIndex) < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 278, 70, 0, "removing header field", v110);
              return 0xFFFFFFFFLL;
            }

            goto LABEL_96;
          }

          if (v24 > 3)
          {
            if (v24 == 4)
            {
              v49 = v26;
              value.tv_sec = 0;
              value.tv_nsec = 0;
              value.tv_sec = strtoll(v23, &__endptr, 10);
              v50 = __endptr;
              if (__endptr && *__endptr == 46)
              {
                value.tv_nsec = strtoll(__endptr + 1, &__endptr, 10);
                v50 = __endptr;
              }

              if (v50 != v19)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 317, 70, 0, "xhdr value parsing", v110);
                return 0xFFFFFFFFLL;
              }

              v51 = *(a1 + 88);
              v52 = v49;
              v53 = AAHeaderGetKeyIndex(v51, v52);
              if (v53 < 0)
              {
                v54 = -1;
              }

              else
              {
                v54 = v53;
              }

              v55 = v49;
              if (AAHeaderSetFieldTimespec(v51, v54, v55, &value) < 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 318, 70, 0, "creating header", v110);
                return 0xFFFFFFFFLL;
              }
            }

            else
            {
              v33 = v26;
              v34 = strtoll(v23, &__endptr, 10);
              if (__endptr != v19)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 288, 70, 0, "xhdr value parsing", v110);
                return 0xFFFFFFFFLL;
              }

              v35 = v34;
              v36 = *(a1 + 88);
              v37 = v33;
              v38 = AAHeaderGetKeyIndex(v36, v37);
              if (v38 < 0)
              {
                v39 = -1;
              }

              else
              {
                v39 = v38;
              }

              v40 = v33;
              if (AAHeaderSetFieldBlob(v36, v39, v40, v35) < 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 289, 70, 0, "creating header", v110);
                return 0xFFFFFFFFLL;
              }
            }
          }

          else
          {
            if (v24 != 1)
            {
              key = v26;
              v28 = v25;
              v29 = strlen(&v20[v22 + 1]);
              v30 = v29;
              if (v28)
              {
                goto LABEL_91;
              }

              if (v29 == 1)
              {
                if (v27 == 46)
                {
                  v30 = 0;
                  goto LABEL_91;
                }

                v30 = 1;
              }

              else if (!v29 || v27 == 46 && v20[v22 + 2] == 47 && (v23 = &v20[v22 + 3], v30 = v29 - 2, v29 == 2))
              {
LABEL_91:
                v56 = *(a1 + 88);
                v57 = key;
                v58 = AAHeaderGetKeyIndex(v56, v57);
                if (v58 < 0)
                {
                  v59 = -1;
                }

                else
                {
                  v59 = v58;
                }

                v60 = key;
                if (AAHeaderSetFieldString(v56, v59, v60, v23, v30) < 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 309, 70, 0, "creating header", v110);
                  return 0xFFFFFFFFLL;
                }

                v11 = v122;
                goto LABEL_96;
              }

              if (v23[v30 - 1] == 47)
              {
                --v30;
              }

              goto LABEL_91;
            }

            v41 = v26;
            v42 = strtoll(v23, &__endptr, 10);
            if (__endptr != v19)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 295, 70, 0, "xhdr value parsing", v110);
              return 0xFFFFFFFFLL;
            }

            v43 = v42;
            v44 = *(a1 + 88);
            v45 = v41;
            v46 = AAHeaderGetKeyIndex(v44, v45);
            if (v46 < 0)
            {
              v47 = -1;
            }

            else
            {
              v47 = v46;
            }

            v48 = v41;
            if (AAHeaderSetFieldUInt(v44, v47, v48, v43) < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 296, 70, 0, "creating header", v110);
              return 0xFFFFFFFFLL;
            }
          }

LABEL_96:
          v14 = v112;
          if (v12 >= v11)
          {
            goto LABEL_97;
          }
        }

        v26.ikey = 4475221;
        v25 = 1;
LABEL_47:
        v24 = 1;
        goto LABEL_48;
      }

LABEL_97:
      if (*v9 == 103 && AAHeaderAssign(*(a1 + 96), *(a1 + 88)) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 330, 70, 0, "update global header", v110);
        return 0xFFFFFFFFLL;
      }

      v4 = *(a1 + 64);
      v6 = 70;
    }

    if ((v61 = *(a1 + 88)) != 0 && (v62.ikey = 5521744, v63 = AAHeaderGetKeyIndex(*(a1 + 88), v62), (v63 & 0x80000000) == 0) && ((FieldString = AAHeaderGetFieldString(v61, v63, 0x400uLL, &__s, 0), FieldString <= 1) ? (v65 = 1) : (v65 = FieldString), v65 < 0 || FieldString < 2))
    {
      if (v65 < 0)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v66 = 0;
      v67 = v8 - 512;
      do
      {
        if (!v67[v66])
        {
          break;
        }

        ++v66;
      }

      while (v66 != 100);
      for (i = 0; i != 155; ++i)
      {
        if (!v8[i - 167])
        {
          break;
        }
      }

      do
      {
        v69 = v66;
        if (!v66)
        {
          break;
        }

        --v66;
      }

      while (v67[v69 - 1] == 47);
      v70 = i - 1022;
      while (v70 != -1022)
      {
        v71 = v8[v70-- + 854];
        if (v71 != 47)
        {
          if (v69 + v70 >= 0xFFFFFFFFFFFFFBFFLL)
          {
            __memcpy_chk();
            v72 = v70 + 1024;
            v125[v70 + 1021] = 47;
            goto LABEL_122;
          }

LABEL_143:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 337, 70, 0, "invalid header", v110);
          return 0xFFFFFFFFLL;
        }
      }

      if (v69 - 1023 < 0xFFFFFFFFFFFFFBFFLL)
      {
        goto LABEL_143;
      }

      v72 = 0;
LABEL_122:
      v73 = &__s + v72;
      memcpy(&__s + v72, v8 - 512, v69);
      v73[v69] = 0;
    }

    v74 = strrchr(&__s, 47);
    v75 = *v9;
    if (v75 != 48)
    {
      break;
    }

    if (v74)
    {
      p_s = v74 + 1;
    }

    else
    {
      p_s = &__s;
    }

    if (*p_s != 46)
    {
      goto LABEL_162;
    }

    v77 = v74 + 2;
    if (!v74)
    {
      v77 = &v124;
    }

    if (*v77 != 95)
    {
LABEL_162:
      v81 = 0;
      v83 = 0;
      v85 = 0;
      v84 = 0;
      v82 = 1;
      goto LABEL_168;
    }

    value.tv_sec = 0;
    if ((tarParseInt(v8 - 388, 0xCuLL, &value) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 346, 70, 0, "invalid header", v110);
      return 0xFFFFFFFFLL;
    }

    tv_sec = value.tv_sec;
    if ((decodeStreamLoadHeader(a1, v7 + ((value.tv_sec + 511) & 0xFFFFFFFFFFFFFE00) + 512) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 350, 70, 0, "truncated stream", v110);
      return 0xFFFFFFFFLL;
    }

    if (tv_sec >= 0x18)
    {
      v4 = *(a1 + 64);
      v79 = *&v4[v7] == 0x20007160500 && *&v4[v7 + 8] == 0x5820534F2063614DLL;
      if (v79 && *&v4[v7 + 16] == 0x2020202020202020)
      {
        continue;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 361, 70, 0, "invalid ._ entry", v110);
    return 0xFFFFFFFFLL;
  }

  v81 = 0;
  v82 = 1;
  if (*v9 <= 0x32u)
  {
    v83 = 0;
    v85 = 0;
    v84 = 0;
    switch(v75)
    {
      case 0:
        goto LABEL_168;
      case 49:
        v81 = 0;
        v85 = 0;
        v84 = 0;
        v82 = 0;
        v83 = 1;
        v6 = 72;
        goto LABEL_168;
      case 50:
        v83 = 0;
        v85 = 0;
        v84 = 0;
        v82 = 0;
        v81 = 1;
        v6 = 76;
        goto LABEL_168;
    }

LABEL_161:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 392, 70, 0, "Non supported entry type %u");
    return 0xFFFFFFFFLL;
  }

  if (*v9 > 0x34u)
  {
    if (v75 == 53)
    {
      v81 = 0;
      v83 = 0;
      v85 = 0;
      v84 = 0;
      v82 = 0;
      v6 = 68;
      goto LABEL_168;
    }

    v83 = 0;
    v85 = 0;
    v84 = 0;
    if (v75 == 55)
    {
      goto LABEL_168;
    }

    goto LABEL_161;
  }

  v81 = 0;
  v83 = 0;
  if (v75 == 51)
  {
    v85 = 0;
    v82 = 0;
    v84 = 1;
    v6 = 67;
  }

  else
  {
    v84 = 0;
    v82 = 0;
    v85 = 1;
    v6 = 66;
  }

LABEL_168:
  v86.ikey = 5265748;
  if (AAHeaderSetFieldUInt(*(a1 + 88), 0xFFFFFFFF, v86, v6) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 394, 70, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v87.ikey = 5521744;
  if (AAHeaderGetKeyIndex(*(a1 + 88), v87) < 0)
  {
    v88 = &__s;
    v89 = strlen(&__s);
    v90 = v89;
    if (v89 == 1 && __s == 46)
    {
      v90 = 0;
    }

    else
    {
      v88 = &__s;
      if (v89 >= 2 && __s == 46 && v124 == 47)
      {
        v88 = v125;
        v90 = v89 - 2;
      }
    }

    v91.ikey = 5521744;
    if (AAHeaderSetFieldString(*(a1 + 88), 0xFFFFFFFF, v91, v88, v90) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 405, 70, 0, "creating header", v110);
      return 0xFFFFFFFFLL;
    }
  }

  if ((v81 | v83) == 1)
  {
    v92.ikey = 4935244;
    if (AAHeaderGetKeyIndex(*(a1 + 88), v92) < 0)
    {
      v93 = 0;
      v94 = v8 - 355;
      while (v94[v93])
      {
        if (++v93 == 100)
        {
          goto LABEL_190;
        }
      }

      if (!v93)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 412, 70, 0, "invalid linkname", v110);
        return 0xFFFFFFFFLL;
      }

      if (v93 != 1)
      {
LABEL_190:
        if (*v94 == 46 && *(v8 - 354) == 47)
        {
          v94 = v8 - 353;
          v93 -= 2;
        }
      }

      v95.ikey = 4935244;
      if (AAHeaderSetFieldString(*(a1 + 88), 0xFFFFFFFF, v95, v94, v93) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 417, 70, 0, "creating header", v110);
        return 0xFFFFFFFFLL;
      }
    }
  }

  if ((v85 | v84) == 1)
  {
    value.tv_sec = 0;
    v122 = 0;
    if ((tarParseInt(v8 - 183, 8uLL, &value) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 424, 70, 0, "invalid header", v110);
      return 0xFFFFFFFFLL;
    }

    if ((tarParseInt(v8 - 175, 8uLL, &v122) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 425, 70, 0, "invalid header", v110);
      return 0xFFFFFFFFLL;
    }

    v96.ikey = 5653828;
    if ((appendFieldIfNotDefinedUInt(*(a1 + 88), v96, value.tv_sec) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 426, 70, 0, "creating header", v110);
      return 0xFFFFFFFFLL;
    }

    v97.ikey = 3294532;
    if ((appendFieldIfNotDefinedUInt(*(a1 + 88), v97, v122) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 427, 70, 0, "creating header", v110);
      return 0xFFFFFFFFLL;
    }
  }

  size = 0;
  if ((tarParseInt(v8 - 388, 0xCuLL, &size) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 432, 70, 0, "invalid header", v110);
    return 0xFFFFFFFFLL;
  }

  if (v82)
  {
    v98.ikey = 5521732;
    v99 = AAHeaderGetKeyIndex(*(a1 + 88), v98);
    if ((v99 & 0x80000000) != 0)
    {
      v100.ikey = 5521732;
      if (AAHeaderSetFieldBlob(*(a1 + 88), 0xFFFFFFFF, v100, size) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 438, 70, 0, "creating header", v110);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      value.tv_sec = 0;
      if (AAHeaderGetFieldBlob(*(a1 + 88), v99, &size, &value) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 443, 70, 0, "looking up header", v110);
        return 0xFFFFFFFFLL;
      }
    }
  }

  v117 = 0;
  v118 = 0;
  v116 = 0;
  if ((tarParseInt(v8 - 412, 8uLL, &v118) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 449, 70, 0, "invalid header", v110);
    return 0xFFFFFFFFLL;
  }

  if ((tarParseInt(v8 - 404, 8uLL, &v117) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 450, 70, 0, "invalid header", v110);
    return 0xFFFFFFFFLL;
  }

  if ((tarParseInt(v8 - 396, 8uLL, &v116) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 451, 70, 0, "invalid header", v110);
    return 0xFFFFFFFFLL;
  }

  v101.ikey = 4476749;
  if ((appendFieldIfNotDefinedUInt(*(a1 + 88), v101, v118) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 452, 70, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v102.ikey = 4475221;
  if ((appendFieldIfNotDefinedUInt(*(a1 + 88), v102, v117) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 453, 70, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v103.ikey = 4475207;
  if ((appendFieldIfNotDefinedUInt(*(a1 + 88), v103, v116) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 454, 70, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v115.tv_sec = 0;
  v115.tv_nsec = 0;
  v114 = 0;
  if ((tarParseInt(v8 - 376, 0xCuLL, &v114) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 459, 70, 0, "invalid header", v110);
    return 0xFFFFFFFFLL;
  }

  v115.tv_sec = v114;
  if ((appendFieldIfNotDefinedTimespec(*(a1 + 88), &v115) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 461, 70, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v104 = 0;
  v105 = v8 - 247;
  while (v105[v104])
  {
    if (++v104 == 32)
    {
      goto LABEL_239;
    }
  }

  if (!v104)
  {
LABEL_240:
    v107 = 0;
    v108 = v8 - 215;
    while (v108[v107])
    {
      if (++v107 == 32)
      {
        goto LABEL_245;
      }
    }

    if (v107)
    {
LABEL_245:
      v109.ikey = 5130567;
      if ((appendFieldIfNotDefinedString(*(a1 + 88), v109, v108, v107) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 467, 70, 0, "creating header", v110);
        return 0xFFFFFFFFLL;
      }
    }

    result = 0;
    *v113 = (size + 511) & 0xFFFFFFFFFFFFFE00;
    return result;
  }

LABEL_239:
  v106.ikey = 5130581;
  if ((appendFieldIfNotDefinedString(*(a1 + 88), v106, v105, v104) & 0x80000000) == 0)
  {
    goto LABEL_240;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 465, 70, 0, "creating header", v110);
  return 0xFFFFFFFFLL;
}

uint64_t isZero(_BYTE *a1, uint64_t a2)
{
  v2 = &a1[a2];
  if (a2 >= 1 && (a1 & 7) != 0)
  {
    v3 = a1 + 1;
    while (!*a1)
    {
      if (++a1 < v2)
      {
        if ((v3++ & 7))
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    return 0;
  }

  else
  {
LABEL_9:
    while (a1 + 8 <= v2)
    {
      v5 = *a1;
      a1 += 8;
      if (v5)
      {
        return 0;
      }
    }

    while (a1 < v2)
    {
      if (*a1)
      {
        return 0;
      }

      ++a1;
    }

    return 1;
  }
}

uint64_t tarParseInt(_BYTE *a1, unint64_t a2, unint64_t *a3)
{
  v3 = *a1;
  v4 = 0xFFFFFFFFLL;
  if (*a1 && v3 != 128 && v3 != 255)
  {
    v5 = 0;
    if (a2)
    {
      while (a1[v5] == 32)
      {
        if (a2 == ++v5)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    v6 = a2 - v5;
    if (a2 <= v5)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = 0;
    v8 = 0;
    v9 = -3 * v5 + 3 * a2;
    v10 = &a1[v5];
    while (1)
    {
      v12 = *v10++;
      v11 = v12;
      if ((v12 & 0xF8) != 0x30)
      {
        break;
      }

      v7 += 3;
      v8 = v11 & 7 | (8 * v8);
      if (!--v6)
      {
        v7 = v9;
        break;
      }
    }

    if (v7 - 65 >= 0xFFFFFFFFFFFFFFC0)
    {
      v4 = 0;
      *a3 = v8;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t appendFieldIfNotDefinedUInt(AAHeader_impl *a1, AAFieldKey key, uint64_t a3)
{
  if ((AAHeaderGetKeyIndex(a1, key) & 0x80000000) == 0)
  {
    return 0;
  }

  v7 = key;

  return AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v7, a3);
}

uint64_t appendFieldIfNotDefinedTimespec(AAHeader_impl *a1, const timespec *a2)
{
  v4.ikey = 5067853;
  if ((AAHeaderGetKeyIndex(a1, v4) & 0x80000000) == 0)
  {
    return 0;
  }

  v6.ikey = 5067853;

  return AAHeaderSetFieldTimespec(a1, 0xFFFFFFFF, v6, a2);
}

uint64_t appendFieldIfNotDefinedString(AAHeader_impl *a1, AAFieldKey key, const char *a3, size_t a4)
{
  if ((AAHeaderGetKeyIndex(a1, key) & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = key;

  return AAHeaderSetFieldString(a1, 0xFFFFFFFF, v9, a3, a4);
}

uint64_t aaEntryACLBlobInitWithEncodedData(uint64_t *a1, char *__src, rsize_t __smax)
{
  *a1 = 0;
  a1[3] = 0;
  v3 = a1 + 3;
  if (!__smax)
  {
    return 0;
  }

  if (__smax < 4)
  {
    goto LABEL_3;
  }

  v8 = 0;
  v9 = 1;
  while (2)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *&__src[v11];
      if (v12 < 4)
      {
        goto LABEL_3;
      }

      v13 = __CFADD__(v12, v11);
      v14 = v12 + v11;
      if (v13 || v14 > __smax)
      {
        goto LABEL_3;
      }

      if ((v8 & 1) == 0)
      {
        break;
      }

      v15 = a1[2];
      v16 = (*a1)++;
      *(v15 + 8 * v16) = v11;
      if (v14 >= __smax)
      {
        goto LABEL_42;
      }

      ++v10;
LABEL_14:
      v11 = v14;
      if (v14 + 4 > __smax)
      {
        goto LABEL_3;
      }
    }

    ++v10;
    if (v14 < __smax)
    {
      goto LABEL_14;
    }

    if ((v9 & 1) == 0)
    {
LABEL_42:
      *v3 = 0;
      if ((__smax & 0x8000000000000000) != 0)
      {
        break;
      }

      v26 = a1[4];
      if (v26 < __smax)
      {
        v27 = 0x4000;
        do
        {
          while (!v26)
          {
            v26 = 0x4000;
            if (__smax <= 0x4000)
            {
              goto LABEL_54;
            }
          }

          v28 = v26 >> 1;
          if ((v26 & (v26 >> 1)) != 0)
          {
            v28 = v26 & (v26 >> 1);
          }

          v26 += v28;
        }

        while (v26 < __smax);
        v27 = v26;
        if (v26 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_79;
        }

LABEL_54:
        v29 = a1[5];
        v30 = realloc(v29, v27);
        if (v30)
        {
          a1[4] = v27;
          a1[5] = v30;
          goto LABEL_56;
        }

        free(v29);
LABEL_79:
        a1[4] = 0;
        a1[5] = 0;
        break;
      }

LABEL_56:
      v31 = a1[5];
      if (__src)
      {
        memcpy((v31 + *v3), __src, __smax);
      }

      else if (v31)
      {
        memset_s((v31 + *v3), __smax, 0, __smax);
      }

      a1[3] += __smax;
      v32 = *a1;
      if (*a1)
      {
        v33 = 0;
        while (1)
        {
          if (v32 == v33 || (v34 = a1[5] + *(a1[2] + 8 * v33), (*v34 + 1) <= 0x16))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 179, 100, 0, "invalid ACL blob");
            goto LABEL_4;
          }

          v35 = *(v34 + 4);
          if ((v35 - 65) > 0x14 || ((1 << (v35 - 65)) & 0x100809) == 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 188, 100, 0, "invalid ACL entry type %c");
            goto LABEL_4;
          }

          HIDWORD(v38) = *(v34 + 21) - 71;
          LODWORD(v38) = HIDWORD(v38);
          v37 = v38 >> 1;
          v39 = v37 > 7;
          v40 = (1 << v37) & 0xC3;
          if (v39 || v40 == 0)
          {
            break;
          }

          if ((*(v34 + 5) & 0xFFFFFFFFFCFDFE0FLL) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 199, 100, 0, "invalid ACL flags 0x%llx");
            goto LABEL_4;
          }

          if ((*(v34 + 13) & 0xFFFFFFFFFFEFC001) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 200, 100, 0, "invalid ACL perms 0x%llx");
            goto LABEL_4;
          }

          result = 0;
          if (v32 == ++v33)
          {
            return result;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 197, 100, 0, "invalid ACL qualifier type %c");
        goto LABEL_4;
      }

      return 0;
    }

    if (v10 > 0xFFFFFFFE)
    {
      break;
    }

    v17 = a1[1];
    if (v17 >= v10)
    {
      goto LABEL_28;
    }

    v18 = a1[1];
    do
    {
      if (v18)
      {
        v18 *= 2;
      }

      else
      {
        v18 = 16;
      }
    }

    while (v18 < v10);
    if (v18 <= v17)
    {
      goto LABEL_28;
    }

    a1[1] = v18;
    if (8 * v18 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_89:
      a1[2] = 0;
      break;
    }

    v19 = a1[2];
    v20 = realloc(v19, 8 * v18);
    if (!v20)
    {
      free(v19);
      goto LABEL_89;
    }

    a1[2] = v20;
LABEL_28:
    if ((__smax & 0x8000000000000000) != 0)
    {
      break;
    }

    v21 = a1[4];
    if (v21 >= __smax)
    {
LABEL_40:
      v9 = 0;
      v8 = 1;
      if (__smax >= 4)
      {
        continue;
      }
    }

    else
    {
      do
      {
        while (!v21)
        {
          v21 = 0x4000;
          v23 = 0x4000;
          if (__smax <= 0x4000)
          {
            goto LABEL_38;
          }
        }

        v22 = v21 >> 1;
        if ((v21 & (v21 >> 1)) != 0)
        {
          v22 = v21 & (v21 >> 1);
        }

        v21 += v22;
      }

      while (v21 < __smax);
      v23 = v21;
      if (v21 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_86;
      }

LABEL_38:
      v24 = a1[5];
      v25 = realloc(v24, v23);
      if (v25)
      {
        a1[4] = v23;
        a1[5] = v25;
        goto LABEL_40;
      }

      free(v24);
LABEL_86:
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
    }

    break;
  }

LABEL_3:
  *a1 = 0;
  a1[3] = 0;
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithEncodedData", 169, 100, 0, "invalid ACL blob");
LABEL_4:
  *a1 = 0;
  a1[3] = 0;
  return 0xFFFFFFFFLL;
}

uint64_t aaEntryACLBlobInitWithPath(AAEntryACLBlob_impl *a1, char *__s, const char *a3, uint64_t a4)
{
  v4 = a4;
  v12 = *MEMORY[0x29EDCA608];
  if ((concatPath(v11, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithPath", 215, 100, 0, "invalid path %s/%s");
    return 0xFFFFFFFFLL;
  }

  v6 = open(v11, 0x200000);
  if (v6 < 0)
  {
    v9 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithPath", 219, 100, v9, "open: %s");
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if ((aaEntryACLBlobInitWithFD(a1, v6, v4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithPath", 221, 100, 0, "initializing ACL blob: %s", v11);
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  close(v7);
  return v8;
}

uint64_t aaEntryACLBlobInitWithFD(AAEntryACLBlob_impl *a1, int a2, char a3)
{
  v35 = *MEMORY[0x29EDCA608];
  v6 = sysconf(71);
  v7 = sysconf(70);
  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v8 <= 4096)
  {
    v9 = 4096;
  }

  else
  {
    v9 = v8;
  }

  if (v8 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_14:
    v15 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 243, 100, *v15, "malloc");
    goto LABEL_15;
  }

  v10 = malloc(v9);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  *a1 = 0;
  *(a1 + 3) = 0;
  fd_np = acl_get_fd_np(a2, ACL_TYPE_EXTENDED);
  if (!fd_np)
  {
LABEL_13:
    free(v11);
    return 0;
  }

  v13 = fd_np;
  entry_p = 0;
  if (acl_get_entry(fd_np, 0, &entry_p))
  {
LABEL_12:
    acl_free(v13);
    goto LABEL_13;
  }

  while (1)
  {
    tag_type_p = ACL_UNDEFINED_TAG;
    flagset_p = 0;
    mask_p = 0;
    *id_type = 0;
    memset(&sid, 0, sizeof(sid));
    memset(&ace, 0, sizeof(ace));
    memset(out, 0, 256);
    if (acl_get_tag_type(entry_p, &tag_type_p))
    {
      v21 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 272, 100, v21, "acl_get_tag_type");
      goto LABEL_66;
    }

    if (tag_type_p - 1 <= 1)
    {
      break;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 274, 100, "Warning: ACL tag type is not ALLOW/DENY (ignoring entry): %d\n", tag_type_p);
LABEL_60:
    if (acl_get_entry(v13, -1, &entry_p))
    {
      goto LABEL_12;
    }
  }

  ace.tag = tag_type_p;
  if (acl_get_flagset_np(entry_p, &flagset_p))
  {
    v22 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 278, 100, v22, "acl_get_flagset_np");
    goto LABEL_66;
  }

  if (acl_get_flag_np(flagset_p, ACL_FLAG_NO_INHERIT))
  {
    ace.flags = 0x20000;
    v16 = 0x20000;
  }

  else
  {
    v16 = 0;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_INHERITED))
  {
    v16 |= 0x10uLL;
    ace.flags = v16;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_FILE_INHERIT))
  {
    v16 |= 0x20uLL;
    ace.flags = v16;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_DIRECTORY_INHERIT))
  {
    v16 |= 0x40uLL;
    ace.flags = v16;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_LIMIT_INHERIT))
  {
    v16 |= 0x80uLL;
    ace.flags = v16;
  }

  if (acl_get_flag_np(flagset_p, ACL_ENTRY_ONLY_INHERIT))
  {
    ace.flags = v16 | 0x100;
  }

  if (acl_get_permset_mask_np(entry_p, &mask_p))
  {
    v23 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 289, 100, v23, "acl_get_permset_mask_np");
    goto LABEL_66;
  }

  ace.perms = mask_p & 0x103FFE;
  qualifier = acl_get_qualifier(entry_p);
  if (!qualifier)
  {
    v24 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 294, 100, v24, "acl_get_qualifier");
    goto LABEL_66;
  }

  v18 = qualifier;
  if ((a3 & 4) != 0)
  {
    goto LABEL_57;
  }

  if (!mbr_uuid_to_id(qualifier, &id_type[1], id_type))
  {
    if (id_type[0] == 1)
    {
      memset(&v26, 0, 32);
      v25 = 0;
      v19 = 0;
      if (getgrgid_r(id_type[1], &v26, v11, v9, &v25) || !v25 || !v26.pw_name)
      {
LABEL_52:
        if (v19)
        {
          goto LABEL_58;
        }

        goto LABEL_53;
      }

      if (strlen(v26.pw_name) <= 0xFF)
      {
        v19 = 71;
        goto LABEL_50;
      }
    }

    else
    {
      if (id_type[0])
      {
        goto LABEL_53;
      }

      memset(&v26, 0, sizeof(v26));
      v25 = 0;
      v19 = 0;
      if (getpwuid_r(id_type[1], &v26, v11, v9, &v25) || !v25 || !v26.pw_name)
      {
        goto LABEL_52;
      }

      if (strlen(v26.pw_name) <= 0xFF)
      {
        v19 = 85;
LABEL_50:
        ace.qualifier_type = v19;
        __strlcpy_chk();
        goto LABEL_52;
      }
    }

    v19 = 0;
    goto LABEL_52;
  }

LABEL_53:
  if (!mbr_uuid_to_sid(v18, &sid) && !mbr_sid_to_string(&sid, v11) && strlen(v11) <= 0xFF)
  {
    ace.qualifier_type = 83;
    __strlcpy_chk();
    goto LABEL_58;
  }

LABEL_57:
  ace.qualifier_type = 73;
  uuid_unparse_upper(v18, out);
LABEL_58:
  v20 = strlen(out);
  if ((AAEntryACLBlobAppendEntry(a1, &ace, out, v20) & 0x80000000) == 0)
  {
    acl_free(v18);
    goto LABEL_60;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobInitWithFD", 340, 100, 0, "encoding entry");
  acl_free(v18);
LABEL_66:
  acl_free(v13);
  free(v11);
LABEL_15:
  *a1 = 0;
  *(a1 + 3) = 0;
  return 0xFFFFFFFFLL;
}

int AAEntryACLBlobAppendEntry(AAEntryACLBlob acl, const AAAccessControlEntry *ace, const uint8_t *qualifier_value, size_t qualifier_size)
{
  if ((ace_check_entry(ace) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobAppendEntry", 618, 100, 0, "invalid ACL entry");
    return -1;
  }

  if (qualifier_size > 0xFFFFFFE9 || (v8 = (qualifier_size + 22), qualifier_size == -23))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobAppendEntry", 622, 100, 0, "ACL entry size out of range");
    return -1;
  }

  if (v8 < 4)
  {
    goto LABEL_49;
  }

  v9 = (acl + 24);
  v10 = *(acl + 3);
  v11 = v10 + v8;
  if (__CFADD__(v10, v8))
  {
    goto LABEL_49;
  }

  v13 = *acl;
  v12 = *(acl + 1);
  v14 = *acl + 1;
  if (v12 < v14)
  {
    v15 = *(acl + 1);
    do
    {
      if (v15)
      {
        v15 *= 2;
      }

      else
      {
        v15 = 16;
      }
    }

    while (v15 < v14);
    if (v15 > v12)
    {
      v36 = *acl;
      v17 = (acl + 16);
      v16 = *(acl + 2);
      *(acl + 1) = v15;
      if (8 * v15 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_48:
        *acl = 0;
        *v17 = 0;
        *(acl + 3) = 0;
        goto LABEL_49;
      }

      v18 = realloc(v16, 8 * v15);
      if (!v18)
      {
        free(v16);
        goto LABEL_48;
      }

      *v17 = v18;
      v13 = v36;
    }
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_44;
  }

  v19 = *(acl + 4);
  if (v19 < v11)
  {
    do
    {
      while (!v19)
      {
        v19 = 0x4000;
        if (v11 <= 0x4000)
        {
          v19 = 0x4000;
          goto LABEL_30;
        }
      }

      v20 = v19 >> 1;
      if ((v19 & (v19 >> 1)) != 0)
      {
        v20 = v19 & (v19 >> 1);
      }

      v19 += v20;
    }

    while (v19 < v11);
    if (v19 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_43;
    }

LABEL_30:
    v21 = *(acl + 5);
    v22 = realloc(v21, v19);
    if (v22)
    {
      *(acl + 4) = v19;
      *(acl + 5) = v22;
      goto LABEL_32;
    }

    free(v21);
LABEL_43:
    *(acl + 4) = 0;
    *(acl + 5) = 0;
LABEL_44:
    *acl = 0;
    *(acl + 3) = 0;
    goto LABEL_49;
  }

LABEL_32:
  v23 = *v9;
  v24 = *v9 + v8;
  if (__CFADD__(*v9, v8) || (v24 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

  if (v19 < v24)
  {
    do
    {
      while (!v19)
      {
        v19 = 0x4000;
        if (v24 <= 0x4000)
        {
          v26 = (acl + 40);
          v19 = 0x4000;
          goto LABEL_53;
        }
      }

      v25 = v19 >> 1;
      if ((v19 & (v19 >> 1)) != 0)
      {
        v25 = v19 & (v19 >> 1);
      }

      v19 += v25;
    }

    while (v19 < v24);
    v26 = (acl + 40);
    if (v19 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_69;
    }

LABEL_53:
    v37 = v26;
    v30 = *v26;
    v27 = realloc(v30, v19);
    if (v27)
    {
      *(acl + 5) = v27;
      v28 = (acl + 40);
      *(acl + 4) = v19;
      v23 = *(acl + 3);
      goto LABEL_55;
    }

    free(v30);
    v26 = v37;
LABEL_69:
    *v26 = 0;
    *v9 = 0;
    *(acl + 4) = 0;
    goto LABEL_49;
  }

  v28 = (acl + 40);
  v27 = *(acl + 5);
  if (v27)
  {
LABEL_55:
    memset_s(&v27[v23], (qualifier_size + 22), 0, (qualifier_size + 22));
    v23 = *v9;
  }

  *(acl + 3) = v23 + v8;
  v31 = *(acl + 2);
  v32 = (*acl)++;
  *(v31 + 8 * v32) = v10;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL || v10 + 4 > *v9 || (*(*v28 + v10) = v8, v13 < 0))
  {
LABEL_49:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobAppendEntry", 626, 100, 0, "alloc ACL entry");
    return -1;
  }

  v33 = *(acl + 5) + *(*(acl + 2) + 8 * v13);
  *v33 = v8;
  if (ace->tag == ACL_EXTENDED_DENY)
  {
    v34 = 68;
  }

  else
  {
    v34 = 0;
  }

  if (ace->tag == ACL_EXTENDED_ALLOW)
  {
    v35 = 65;
  }

  else
  {
    v35 = v34;
  }

  *(v33 + 4) = v35;
  *(v33 + 5) = ace->flags;
  *(v33 + 13) = ace->perms;
  *(v33 + 21) = ace->qualifier_type;
  if (qualifier_size)
  {
    memcpy((v33 + 22), qualifier_value, qualifier_size);
  }

  return 0;
}

uint64_t aaEntryACLBlobApplyToFD(unint64_t *a1, uint64_t a2, char a3)
{
  v68 = *MEMORY[0x29EDCA608];
  memset(&v50, 0, sizeof(v50));
  if (fstat(a2, &v50))
  {
    v6 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 370, 100, *v6, "fstat");
    return 0xFFFFFFFFLL;
  }

  v8 = v50.st_mode & 0xF000;
  if (v8 != 0x8000 && v8 != 0x4000)
  {
    return 0;
  }

  v9 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v10 = 0;
  v11 = a1[2];
  do
  {
    v12 = *v11++;
    v13 = *(a1[5] + 4 + v12);
    if (v13 == 68 || v13 == 65)
    {
      ++v10;
    }

    --v9;
  }

  while (v9);
  if (!v10)
  {
    return 0;
  }

  acl_p = 0;
  v14 = sysconf(71);
  v15 = sysconf(70);
  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  if (v16 <= 4096)
  {
    v17 = 4096;
  }

  else
  {
    v17 = v16;
  }

  if (v16 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_24:
    v21 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 403, 100, *v21, "malloc");
    v19 = 0;
    goto LABEL_81;
  }

  v18 = malloc(v17);
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = v18;
  if ((a3 & 8) != 0)
  {
    fd_np = acl_p;
  }

  else
  {
    fd_np = acl_get_fd_np(a2, ACL_TYPE_EXTENDED);
    acl_p = fd_np;
  }

  if (!fd_np)
  {
    fd_np = acl_init(v10);
    acl_p = fd_np;
    if (!fd_np)
    {
      v36 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 415, 100, v36, "acl_init");
      goto LABEL_81;
    }
  }

  v22 = *a1;
  if (*a1)
  {
    v23 = 0;
    while (1)
    {
      v24 = a1[5] + *(a1[2] + 8 * v23);
      flagset_p = 0;
      entry_p = 0;
      memset(uu, 0, sizeof(uu));
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      *in = 0u;
      v52 = 0u;
      v25 = *v24;
      v26 = *(v24 + 4);
      if (v26 == 65)
      {
        v27 = ACL_EXTENDED_ALLOW;
      }

      else
      {
        if (v26 != 68)
        {
          goto LABEL_62;
        }

        v27 = ACL_EXTENDED_DENY;
      }

      if ((*(v24 + 5) & 0xFFFFFFFFFCFDFE0FLL) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 444, 100, 0, "invalid ACE flags: 0x%016llx");
        goto LABEL_81;
      }

      if ((*(v24 + 13) & 0xFFFFFFFFFFEFC001) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 445, 100, 0, "invalid ACE perms: 0x%016llx");
        goto LABEL_81;
      }

      if ((v25 - 278) <= 0xFFFFFEFE)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 448, 100, 0, "qualifier too long");
        goto LABEL_81;
      }

      v28 = v25 - 22;
      __memcpy_chk();
      in[v28] = 0;
      HIDWORD(v30) = *(v24 + 21) - 71;
      LODWORD(v30) = HIDWORD(v30);
      v29 = v30 >> 1;
      if (v29 > 5)
      {
        break;
      }

      if (v29)
      {
        if (v29 != 1)
        {
          goto LABEL_80;
        }

        if (uuid_parse(in, uu))
        {
LABEL_73:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 486, 100, 0, "could not resolve qualifier (type %c): %s");
          goto LABEL_81;
        }

        goto LABEL_55;
      }

      memset(&v46, 0, 32);
      v45 = 0;
      v34 = getgrnam_r(in, &v46, v19, v17, &v45);
      v32 = 0;
      if (!v34 && v45)
      {
        v33 = mbr_gid_to_uuid(v46.pw_uid, uu);
LABEL_53:
        v32 = v33 == 0;
      }

LABEL_54:
      if (!v32)
      {
        goto LABEL_73;
      }

LABEL_55:
      if (acl_create_entry(&acl_p, &entry_p))
      {
        v38 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 489, 100, v38, "acl_create_entry");
        goto LABEL_81;
      }

      if (acl_set_tag_type(entry_p, v27))
      {
        v39 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 490, 100, v39, "acl_set_tag_type");
        goto LABEL_81;
      }

      if (acl_set_permset_mask_np(entry_p, *(v24 + 13)))
      {
        v40 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 491, 100, v40, "acl_set_permset_mask_np");
        goto LABEL_81;
      }

      if (acl_get_flagset_np(entry_p, &flagset_p))
      {
        v41 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 492, 100, v41, "acl_get_flagset_np");
        goto LABEL_81;
      }

      if (acl_add_flag_np(flagset_p, *(v24 + 5)))
      {
        v42 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 493, 100, v42, "acl_add_flag_np");
        goto LABEL_81;
      }

      if (acl_set_qualifier(entry_p, uu))
      {
        v43 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 494, 100, v43, "acl_set_qualifier");
        goto LABEL_81;
      }

      v22 = *a1;
LABEL_62:
      if (++v23 >= v22)
      {
        fd_np = acl_p;
        goto LABEL_64;
      }
    }

    if (v29 == 6)
    {
      memset(&v46, 0, sizeof(v46));
      if (mbr_string_to_sid(in, &v46))
      {
        v32 = 0;
        goto LABEL_54;
      }

      v33 = mbr_sid_to_uuid(&v46, uu);
    }

    else
    {
      if (v29 != 7)
      {
LABEL_80:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 483, 100, 0, "invalid qualifier type: %d");
LABEL_81:
        v7 = 0xFFFFFFFFLL;
        goto LABEL_82;
      }

      memset(&v46, 0, sizeof(v46));
      v45 = 0;
      v31 = getpwnam_r(in, &v46, v19, v17, &v45);
      v32 = 0;
      if (v31 || !v45)
      {
        goto LABEL_54;
      }

      v33 = mbr_uid_to_uuid(v46.pw_uid, uu);
    }

    goto LABEL_53;
  }

LABEL_64:
  if ((MEMORY[0x29C25DDB0](a2, fd_np) & 0x80000000) != 0)
  {
    v35 = __error();
    if ((a3 & 1) == 0 || *v35 != 1)
    {
      v37 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "aaEntryACLBlobApplyToFD", 499, 100, v37, "acl_set_fd");
      goto LABEL_81;
    }
  }

  v7 = 0;
LABEL_82:
  if (acl_p)
  {
    acl_free(acl_p);
  }

  free(v19);
  return v7;
}

AAEntryACLBlob AAEntryACLBlobCreate(void)
{
  v0 = malloc(0x30uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x30uLL, 0, 0x30uLL);
  }

  else
  {
    v2 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobCreate", 521, 100, *v2, "malloc");
  }

  return v1;
}

void AAEntryACLBlobDestroy(AAEntryACLBlob acl)
{
  if (acl)
  {
    free(*(acl + 2));
    free(*(acl + 5));
    memset_s(acl + 24, 0x18uLL, 0, 0x18uLL);
    memset_s(acl, 0x30uLL, 0, 0x30uLL);

    free(acl);
  }
}

AAEntryACLBlob AAEntryACLBlobCreateWithEncodedData(const uint8_t *data, size_t data_size)
{
  v4 = AAEntryACLBlobCreate();
  v5 = v4;
  if (v4 && (aaEntryACLBlobInitWithEncodedData(v4, data, data_size) & 0x80000000) != 0)
  {
    AAEntryACLBlobDestroy(v5);
    return 0;
  }

  return v5;
}

AAEntryACLBlob AAEntryACLBlobCreateWithPath(const char *dir, const char *path, AAFlagSet flags)
{
  v6 = AAEntryACLBlobCreate();
  v7 = v6;
  if (v6 && (aaEntryACLBlobInitWithPath(v6, dir, path, flags) & 0x80000000) != 0)
  {
    AAEntryACLBlobDestroy(v7);
    return 0;
  }

  return v7;
}

int AAEntryACLBlobClear(AAEntryACLBlob acl)
{
  *acl = 0;
  *(acl + 3) = 0;
  return 0;
}

int AAEntryACLBlobApplyToPath(AAEntryACLBlob acl, const char *dir, const char *path, AAFlagSet flags)
{
  v4 = flags;
  v12 = *MEMORY[0x29EDCA608];
  if ((concatPath(v11, 0x800uLL, dir, path) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobApplyToPath", 569, 100, 0, "invalid path %s/%s");
    return -1;
  }

  v6 = open(v11, 0x200000);
  if ((v6 & 0x80000000) != 0)
  {
    v9 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobApplyToPath", 571, 100, v9, "open: %s");
    return -1;
  }

  v7 = v6;
  if ((aaEntryACLBlobApplyToFD(acl, v6, v4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobApplyToPath", 573, 100, 0, "applying ACL blob: %s", v11);
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  close(v7);
  return v8;
}

int AAEntryACLBlobGetEntry(AAEntryACLBlob acl, uint32_t i, AAAccessControlEntry *ace, size_t qualifier_capacity, uint8_t *qualifier_value, size_t *qualifier_size)
{
  if (*acl <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobGetEntry", 593, 100, 0, "invalid ACL index %u", i);
  }

  else
  {
    v7 = *(acl + 5) + *(*(acl + 2) + 8 * i);
    v8 = (*v7 - 22);
    v9 = *(v7 + 4);
    if (v9 == 65)
    {
      v10 = ACL_EXTENDED_ALLOW;
    }

    else
    {
      v10 = 2 * (v9 == 68);
    }

    ace->tag = v10;
    ace->qualifier_type = *(v7 + 21);
    ace->flags = *(v7 + 5);
    ace->perms = *(v7 + 13);
    if (qualifier_size)
    {
      *qualifier_size = v8;
    }

    if (!qualifier_capacity)
    {
      return 0;
    }

    if (v8 <= qualifier_capacity)
    {
      memcpy(qualifier_value, (v7 + 22), v8);
      return 0;
    }
  }

  return -1;
}

uint64_t ace_check_entry(uint64_t a1)
{
  if ((*a1 - 3) > 0xFFFFFFFD)
  {
    HIDWORD(v2) = *(a1 + 24) - 71;
    LODWORD(v2) = HIDWORD(v2);
    v1 = v2 >> 1;
    v3 = v1 > 7;
    v4 = (1 << v1) & 0xC3;
    if (v3 || v4 == 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 156, 100, 0, "invalid ACL qualifier type %c");
    }

    else if ((*(a1 + 16) & 0xFFFFFFFFFCFDFE0FLL) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 158, 100, 0, "invalid ACL flags 0x%llx");
    }

    else
    {
      if ((*(a1 + 8) & 0xFFFFFFFFFFEFC001) == 0)
      {
        return 0;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 159, 100, 0, "invalid ACL perms 0x%llx");
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "ace_check_entry", 148, 100, 0, "invalid ACL entry tag %c");
  }

  return 0xFFFFFFFFLL;
}

int AAEntryACLBlobSetEntry(AAEntryACLBlob acl, uint32_t i, const AAAccessControlEntry *ace, const uint8_t *qualifier_value, size_t qualifier_size)
{
  if ((ace_check_entry(ace) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobSetEntry", 648, 100, 0, "invalid ACL entry");
    return -1;
  }

  if (*acl <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobSetEntry", 649, 100, 0, "invalid ACL index %u");
    return -1;
  }

  if (qualifier_size > 0xFFFFFFE9 || (v10 = (qualifier_size + 22), qualifier_size == -23))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobSetEntry", 653, 100, 0, "ACL entry size out of range");
    return -1;
  }

  v11 = i;
  v12 = *(*(acl + 2) + 8 * i);
  v13 = *(acl + 5);
  v14 = *&v13[v12];
  v15 = v12 + v14;
  if (__CFADD__(v12, v14) || (v16 = *(acl + 3), v17 = v16 - v15, v16 < v15))
  {
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobSetEntry", 656, 100, 0, "alloc ACL entry");
    return -1;
  }

  if (v10 > v14)
  {
    v19 = v10 - v14;
    v20 = v16 + v10 - v14;
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_7;
    }

    v21 = *(acl + 4);
    if (v21 < v20)
    {
      v22 = 0x4000;
      do
      {
        while (!v21)
        {
          v21 = 0x4000;
          if (v20 <= 0x4000)
          {
            goto LABEL_29;
          }
        }

        v23 = v21 >> 1;
        if ((v21 & (v21 >> 1)) != 0)
        {
          v23 = v21 & (v21 >> 1);
        }

        v21 += v23;
      }

      while (v21 < v20);
      v22 = v21;
      if (v21 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_54;
      }

LABEL_29:
      v36 = v19;
      v35 = v22;
      v26 = realloc(v13, v22);
      if (v26)
      {
        v19 = v36;
        *(acl + 4) = v35;
        *(acl + 5) = v26;
        v13 = v26;
        v17 = v16 - v15;
        goto LABEL_31;
      }

      free(v13);
LABEL_54:
      *(acl + 3) = 0;
      *(acl + 4) = 0;
      *(acl + 5) = 0;
      goto LABEL_7;
    }

LABEL_31:
    if (v16 != v15)
    {
      v27 = v19;
      memmove(&v13[v15 + v19], &v13[v15], v17);
      v19 = v27;
    }

    v16 = *(acl + 3) + v19;
    goto LABEL_34;
  }

  if (v10 < v14)
  {
    v24 = v14 - v10;
    if (v16 != v15)
    {
      v25 = v24;
      memmove(&v13[v15 - v24], &v13[v15], v17);
      v24 = v25;
      v15 = *(acl + 3);
    }

    v16 = v15 - v24;
LABEL_34:
    *(acl + 3) = v16;
  }

  if (v12 >= 0xFFFFFFFFFFFFFFFCLL || v12 + 4 > v16)
  {
    goto LABEL_7;
  }

  *(*(acl + 5) + v12) = v10;
  if (*acl > v11)
  {
    v28 = v11;
    while (v12 < 0xFFFFFFFFFFFFFFFCLL && v12 + 4 <= *(acl + 3))
    {
      v29 = *(acl + 5);
      v30 = *(v29 + v12);
      v31 = *(acl + 2);
      *(v31 + 8 * v28) = v12;
      v12 += v30;
      if (++v28 >= *acl)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_7;
  }

  v29 = *(acl + 5);
  v31 = *(acl + 2);
LABEL_44:
  v32 = v29 + *(v31 + 8 * v11);
  *v32 = v10;
  if (ace->tag == ACL_EXTENDED_DENY)
  {
    v33 = 68;
  }

  else
  {
    v33 = 0;
  }

  if (ace->tag == ACL_EXTENDED_ALLOW)
  {
    v34 = 65;
  }

  else
  {
    v34 = v33;
  }

  *(v32 + 4) = v34;
  *(v32 + 5) = ace->flags;
  *(v32 + 13) = ace->perms;
  *(v32 + 21) = ace->qualifier_type;
  if (qualifier_size)
  {
    memcpy((v32 + 22), qualifier_value, qualifier_size);
  }

  return 0;
}

int AAEntryACLBlobRemoveEntry(AAEntryACLBlob acl, uint32_t i)
{
  v2 = *acl;
  if (*acl <= i || (v4 = i, v5 = *(*(acl + 2) + 8 * i), v6 = *(acl + 5), v7 = *(v6 + v5), v8 = __CFADD__(v5, v7), v9 = v5 + v7, v8) || (v10 = *(acl + 3), v10 < v9))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldACL.c", "AAEntryACLBlobRemoveEntry", 673, 100, 0, "invalid ACL index %u", i);
    return -1;
  }

  else
  {
    if (v7)
    {
      if (v10 != v9)
      {
        memmove((v6 + v9 - v7), (v6 + v9), v10 - v9);
        v9 = *(acl + 3);
        v2 = *acl;
      }

      *(acl + 3) = v9 - v7;
    }

    v12 = v2 - 1;
    *acl = v12;
    if (v12 > v4)
    {
      v13 = *(acl + 2);
      do
      {
        *(v13 + 8 * v4) = *(v13 + 8 * v4 + 8) - v7;
        ++v4;
      }

      while (v4 < *acl);
    }

    return 0;
  }
}

uint64_t AAAssetBuilderGenerate(void *a1, uint64_t a2, int DefaultNThreads)
{
  v3 = a1[2];
  if (!v3 || v3 != a1[1] + 1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "AAAssetBuilderGenerate", 1557, 27, 0, "exactly one output, and 0 or more inputs expected");
LABEL_176:
    v8 = 0;
    goto LABEL_177;
  }

  v7 = malloc(0x460uLL);
  v8 = v7;
  if (!v7)
  {
    v105 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCreate", 648, 27, v105, "malloc");
LABEL_175:
    stateDestroy_0(v8);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "AAAssetBuilderGenerate", 1560, 27, 0, "stateCreate");
    goto LABEL_176;
  }

  memset_s(v7, 0x460uLL, 0, 0x460uLL);
  *(v8 + 32) = StringTableCreate();
  v9 = StringTableCreate();
  *(v8 + 40) = v9;
  if (!*(v8 + 32) || !v9)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCreate", 652, 27, 0, "StringTableCreate");
    goto LABEL_175;
  }

  *v8 = a2;
  *(v8 + 8) = a1;
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v10 = *a1;
  v11 = *a1 >> 62;
  *(v8 + 20) = DefaultNThreads;
  *(v8 + 24) = v11;
  *(v8 + 16) = v10 & 1;
  *(v8 + 48) = *(a1 + 1);
  if ((getTempDir((v8 + 92), 0x3F6uLL) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCreate", 660, 27, 0, "getTempDir");
LABEL_174:
    memset_s((v8 + 92), 0x400uLL, 0, 0x400uLL);
    goto LABEL_175;
  }

  __strlcat_chk();
  if (!mkdtemp((v8 + 92)))
  {
    v106 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCreate", 662, 27, v106, "mkdtemp");
    goto LABEL_174;
  }

  v12 = *(v8 + 56);
  v13 = **(v8 + 8);
  if ((v13 & 0x10) != 0)
  {
    v14 = "DAT,YEC";
  }

  else
  {
    v14 = "DAT";
  }

  v15 = AAFieldKeySetCreateWithString(v14);
  if (!v15)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateScanVariants", 865, 27, 0, "AAFieldKeySetCreateWithString");
    v25 = 0;
    v20 = 0;
    goto LABEL_180;
  }

  if (!*(v8 + 56))
  {
    goto LABEL_153;
  }

  v16 = 0;
  v17 = v12 - 1;
  v18 = v13 & 0x10;
  v193 = v18;
  v194 = v12 - 1;
  do
  {
    if (*(v8 + 24))
    {
      fprintf(*MEMORY[0x29EDCA610], "Scanning archive for variant %zu...\n", v16);
    }

    AAByteStreamSeek(*(*(v8 + 8) + 8 * v16 + 24), 0, 0);
    v19 = malloc(0x38uLL);
    v20 = v19;
    if (!v19)
    {
      v153 = v15;
      v154 = 377;
LABEL_272:
      v155 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamOpen", v154, 27, *v155, "malloc");
      free(v20);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateScanVariants", 876, 27, 0, "collector stream");
      v25 = 0;
      v20 = 0;
      v27 = 0;
      v26 = 0;
      v15 = v153;
      goto LABEL_183;
    }

    memset_s(v19, 0x38uLL, 0, 0x38uLL);
    v21 = malloc(0x40uLL);
    if (!v21)
    {
      v153 = v15;
      v154 = 379;
      goto LABEL_272;
    }

    v22 = v21;
    memset_s(v21, 0x40uLL, 0, 0x40uLL);
    v23 = v16 == v17 && v18 == 0;
    *v22 = v8;
    v22[1] = v16;
    *v20 = v22;
    v20[1] = stateCollectorStreamClose;
    v20[3] = stateCollectorStreamWriteHeader;
    v20[4] = stateCollectorStreamWriteBlob;
    if (v23)
    {
      v24 = "SH2,IDX,IDZ,SIZ,YEC";
    }

    else
    {
      v24 = "SH2,IDX,IDZ,SIZ";
    }

    v25 = AAFieldKeySetCreateWithString(v24);
    if (!v25)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateScanVariants", 882, 27, 0, "AAFieldKeySetCreateWithString");
LABEL_180:
      v27 = 0;
      v26 = 0;
      goto LABEL_183;
    }

    v26 = AADecodeArchiveInputStreamOpen(*(*(v8 + 8) + 8 * v16 + 24), 0, 0, 0x100uLL, *(v8 + 20));
    if (!v26)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateScanVariants", 884, 27, 0, "AADecodeArchiveInputStreamOpen");
      v27 = 0;
      goto LABEL_183;
    }

    v27 = AAConvertArchiveOutputStreamOpen(v20, v25, v15, 0, 0, 0, *(v8 + 20));
    if (AAArchiveStreamProcess(v26, v27, 0, 0, 0, *(v8 + 20)) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateScanVariants", 887, 27, 0, "processing manifest");
      goto LABEL_183;
    }

    v207 = 0;
    if ((StringTableSort(*(v8 + 32), &v207) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateAggregateEntries", 802, 27, 0, "StringTableSort");
LABEL_182:
      free(v207);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateScanVariants", 890, 27, 0, "aggregating entries");
LABEL_183:
      AAArchiveStreamClose(v20);
      AAArchiveStreamClose(v27);
      AAArchiveStreamClose(v26);
      AAFieldKeySetDestroy(v25);
      AAFieldKeySetDestroy(v15);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "AAAssetBuilderGenerate", 1563, 27, 0, "loading manifests / scanning directories", v172);
      goto LABEL_177;
    }

    v29 = *(v8 + 72);
    v28 = *(v8 + 80);
    if (v29)
    {
      v30 = v207;
      v31 = *(v8 + 80);
      v32 = *(v8 + 72);
      do
      {
        *v31 = v30[*v31];
        v31 += 248;
        --v32;
      }

      while (v32);
    }

    s = v27;
    v203 = v26;
    v198 = v16;
    qsort(v28, v29, 0x3E0uLL, entryVectorCmp);
    if (!*(v8 + 72))
    {
      v34 = 0;
      goto LABEL_152;
    }

    v33 = 0;
    v34 = 0;
    v35 = 272;
    v196 = v25;
    do
    {
      v36 = *(v8 + 80);
      v37 = v36 + 992 * v33;
      if (!v34 || (v38 = v36 + 992 * v34, *(v38 - 992) != *v37))
      {
        if (v33 != v34)
        {
          memcpy((v36 + 992 * v34), (v36 + 992 * v33), 0x3E0uLL);
        }

        ++v34;
        goto LABEL_56;
      }

      v39 = 0;
      v40 = v38 - 720;
      v41 = v36 + v35;
      do
      {
        v42 = v41 + v39;
        if (*(v41 + v39))
        {
          v43 = v40 + v39;
          if (*(v40 + v39))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateAggregateEntries", 832, 27, 0, "entry defined multiple times in the same variant");
            v27 = s;
            v26 = v203;
            goto LABEL_182;
          }

          *v43 = *v42;
          v44 = *(v42 + 16);
          v45 = *(v42 + 32);
          v46 = *(v42 + 48);
          *(v43 + 64) = *(v42 + 64);
          *(v43 + 32) = v45;
          *(v43 + 48) = v46;
          *(v43 + 16) = v44;
        }

        v39 += 72;
      }

      while (v39 != 720);
      v47 = (v38 - 928);
      if (!*(v38 - 928) && *(v37 + 64))
      {
        *v47 = 0;
        v48 = *(v37 + 64);
        if ((v48 & 0x8000000000000000) == 0)
        {
          v189 = v15;
          v49 = *(v37 + 80);
          v50 = *(v38 - 920);
          if (v50 >= v48)
          {
LABEL_63:
            v55 = *(v38 - 912);
            if (v49)
            {
              memcpy((v55 + *v47), v49, v48);
              v15 = v189;
            }

            else
            {
              v15 = v189;
              if (v55)
              {
                memset_s((v55 + *v47), v48, 0, v48);
              }
            }

            *v47 += v48;
          }

          else
          {
            do
            {
              while (!v50)
              {
                v50 = 0x4000;
                if (v48 <= 0x4000)
                {
                  v177 = (v38 - 920);
                  v181 = *(v37 + 80);
                  v52 = (v38 - 912);
                  v50 = 0x4000;
                  goto LABEL_61;
                }
              }

              v51 = v50 >> 1;
              if ((v50 & (v50 >> 1)) != 0)
              {
                v51 = v50 & (v50 >> 1);
              }

              v50 += v51;
            }

            while (v50 < v48);
            v52 = (v38 - 912);
            if (v50 >= 0x2000000001)
            {
              v53 = (v38 - 912);
              *__error() = 12;
              goto LABEL_69;
            }

            v177 = (v38 - 920);
            v181 = *(v37 + 80);
LABEL_61:
            v185 = v52;
            v173 = *v52;
            v54 = realloc(*v52, v50);
            if (v54)
            {
              v49 = v181;
              *v185 = v54;
              *v177 = v50;
              goto LABEL_63;
            }

            v53 = v185;
            free(v173);
LABEL_69:
            *v53 = 0;
            *v47 = 0;
            *(v38 - 920) = 0;
            v15 = v189;
          }
        }

        free(*(v37 + 80));
        memset_s((v37 + 64), 0x18uLL, 0, 0x18uLL);
        v25 = v196;
      }

      v56 = (v38 - 952);
      if (!*(v38 - 952) && *(v37 + 40))
      {
        *v56 = 0;
        v57 = *(v37 + 40);
        if ((v57 & 0x8000000000000000) == 0)
        {
          v190 = v15;
          v58 = *(v37 + 56);
          v59 = *(v38 - 944);
          if (v59 >= v57)
          {
LABEL_87:
            v64 = *(v38 - 936);
            if (v58)
            {
              memcpy((v64 + *v56), v58, v57);
              v15 = v190;
            }

            else
            {
              v15 = v190;
              if (v64)
              {
                memset_s((v64 + *v56), v57, 0, v57);
              }
            }

            *v56 += v57;
          }

          else
          {
            do
            {
              while (!v59)
              {
                v59 = 0x4000;
                if (v57 <= 0x4000)
                {
                  v178 = (v38 - 944);
                  v182 = *(v37 + 56);
                  v61 = (v38 - 936);
                  v59 = 0x4000;
                  goto LABEL_85;
                }
              }

              v60 = v59 >> 1;
              if ((v59 & (v59 >> 1)) != 0)
              {
                v60 = v59 & (v59 >> 1);
              }

              v59 += v60;
            }

            while (v59 < v57);
            v61 = (v38 - 936);
            if (v59 >= 0x2000000001)
            {
              v62 = (v38 - 936);
              *__error() = 12;
              goto LABEL_93;
            }

            v178 = (v38 - 944);
            v182 = *(v37 + 56);
LABEL_85:
            v186 = v61;
            v174 = *v61;
            v63 = realloc(*v61, v59);
            if (v63)
            {
              v58 = v182;
              *v186 = v63;
              *v178 = v59;
              goto LABEL_87;
            }

            v62 = v186;
            free(v174);
LABEL_93:
            *v62 = 0;
            *v56 = 0;
            *(v38 - 944) = 0;
            v15 = v190;
          }
        }

        free(*(v37 + 56));
        memset_s((v37 + 40), 0x18uLL, 0, 0x18uLL);
        v25 = v196;
      }

      v65 = (v38 - 904);
      if (!*(v38 - 904) && *(v37 + 88))
      {
        *v65 = 0;
        v66 = *(v37 + 88);
        if ((v66 & 0x8000000000000000) == 0)
        {
          v191 = v15;
          v67 = *(v37 + 104);
          v68 = *(v38 - 896);
          if (v68 >= v66)
          {
LABEL_111:
            v73 = *(v38 - 888);
            if (v67)
            {
              memcpy((v73 + *v65), v67, v66);
              v15 = v191;
            }

            else
            {
              v15 = v191;
              if (v73)
              {
                memset_s((v73 + *v65), v66, 0, v66);
              }
            }

            *v65 += v66;
          }

          else
          {
            do
            {
              while (!v68)
              {
                v68 = 0x4000;
                if (v66 <= 0x4000)
                {
                  v179 = (v38 - 896);
                  v183 = *(v37 + 104);
                  v70 = (v38 - 888);
                  v68 = 0x4000;
                  goto LABEL_109;
                }
              }

              v69 = v68 >> 1;
              if ((v68 & (v68 >> 1)) != 0)
              {
                v69 = v68 & (v68 >> 1);
              }

              v68 += v69;
            }

            while (v68 < v66);
            v70 = (v38 - 888);
            if (v68 >= 0x2000000001)
            {
              v71 = (v38 - 888);
              *__error() = 12;
              goto LABEL_117;
            }

            v179 = (v38 - 896);
            v183 = *(v37 + 104);
LABEL_109:
            v187 = v70;
            v175 = *v70;
            v72 = realloc(*v70, v68);
            if (v72)
            {
              v67 = v183;
              *v187 = v72;
              *v179 = v68;
              goto LABEL_111;
            }

            v71 = v187;
            free(v175);
LABEL_117:
            *v71 = 0;
            *v65 = 0;
            *(v38 - 896) = 0;
            v15 = v191;
          }
        }

        free(*(v37 + 104));
        memset_s((v37 + 88), 0x18uLL, 0, 0x18uLL);
        v25 = v196;
      }

      v74 = (v38 - 880);
      if (!*(v38 - 880) && *(v37 + 112))
      {
        *v74 = 0;
        v75 = *(v37 + 112);
        if ((v75 & 0x8000000000000000) == 0)
        {
          v192 = v15;
          v76 = *(v37 + 128);
          v77 = *(v38 - 872);
          if (v77 >= v75)
          {
LABEL_135:
            v82 = *(v38 - 864);
            if (v76)
            {
              memcpy((v82 + *v74), v76, v75);
              v15 = v192;
            }

            else
            {
              v15 = v192;
              if (v82)
              {
                memset_s((v82 + *v74), v75, 0, v75);
              }
            }

            *v74 += v75;
          }

          else
          {
            do
            {
              while (!v77)
              {
                v77 = 0x4000;
                if (v75 <= 0x4000)
                {
                  v180 = (v38 - 872);
                  v184 = *(v37 + 128);
                  v79 = (v38 - 864);
                  v77 = 0x4000;
                  goto LABEL_133;
                }
              }

              v78 = v77 >> 1;
              if ((v77 & (v77 >> 1)) != 0)
              {
                v78 = v77 & (v77 >> 1);
              }

              v77 += v78;
            }

            while (v77 < v75);
            v79 = (v38 - 864);
            if (v77 >= 0x2000000001)
            {
              v80 = (v38 - 864);
              *__error() = 12;
              goto LABEL_141;
            }

            v180 = (v38 - 872);
            v184 = *(v37 + 128);
LABEL_133:
            v188 = v79;
            v176 = *v79;
            v81 = realloc(*v79, v77);
            if (v81)
            {
              v76 = v184;
              *v188 = v81;
              *v180 = v77;
              goto LABEL_135;
            }

            v80 = v188;
            free(v176);
LABEL_141:
            *v80 = 0;
            *v74 = 0;
            *(v38 - 872) = 0;
            v15 = v192;
          }
        }

        free(*(v37 + 128));
        memset_s((v37 + 112), 0x18uLL, 0, 0x18uLL);
        v25 = v196;
      }

      if (!*(v38 - 848) && *(v37 + 144))
      {
        *(v38 - 848) = *(v37 + 144);
        v83 = *(v37 + 160);
        v84 = *(v37 + 176);
        v85 = *(v37 + 192);
        *(v38 - 784) = *(v37 + 208);
        *(v38 - 816) = v84;
        *(v38 - 800) = v85;
        *(v38 - 832) = v83;
      }

      if (!*(v38 - 776) && *(v37 + 216))
      {
        v86 = *(v37 + 216);
        v87 = *(v37 + 232);
        v88 = *(v37 + 248);
        *(v38 - 728) = *(v37 + 264);
        *(v38 - 760) = v87;
        *(v38 - 744) = v88;
        *(v38 - 776) = v86;
      }

      if (*(v38 - 856) == -1)
      {
        *(v38 - 856) = *(v37 + 136);
      }

LABEL_56:
      ++v33;
      v35 += 992;
    }

    while (v33 < *(v8 + 72));
LABEL_152:
    *(v8 + 72) = v34;
    free(v207);
    AAArchiveStreamClose(v20);
    AAArchiveStreamClose(s);
    AAArchiveStreamClose(v203);
    AAFieldKeySetDestroy(v25);
    v16 = v198 + 1;
    v18 = v193;
    v17 = v194;
  }

  while ((v198 + 1) < *(v8 + 56));
LABEL_153:
  AAArchiveStreamClose(0);
  AAArchiveStreamClose(0);
  AAArchiveStreamClose(0);
  AAFieldKeySetDestroy(0);
  AAFieldKeySetDestroy(v15);
  v89 = *(v8 + 72);
  if (v89)
  {
    v90 = *(v8 + 80);
    do
    {
      if (*(v90 + 72 * *(v8 + 56) + 200) == 70 && *(v90 + 136) != -1)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "AAAssetBuilderGenerate", 1572, 27, 0, "HLC field found, not supported: %s");
        goto LABEL_177;
      }

      v90 += 992;
      --v89;
    }

    while (v89);
  }

  v208 = -1;
  *(v8 + 88) = 1;
  if ((StringTableAppend(*(v8 + 40), "main", 4uLL, &v208) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateAssignLabels", 915, 27, 0, "string table");
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "AAAssetBuilderGenerate", 1578, 27, 0, "assigning labels", v172);
    goto LABEL_177;
  }

  v97 = *(v8 + 72);
  if (v97)
  {
    v98 = *(v8 + 80);
    v99 = v208;
    v100 = (v97 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v95 = xmmword_296AD18D0;
    v96 = xmmword_296AD1760;
    v101 = vdupq_n_s64(v97 - 1);
    v102 = vdupq_n_s64(4uLL);
    do
    {
      v103 = vmovn_s64(vcgeq_u64(v101, v96));
      if (vuzp1_s16(v103, *v95.i8).u8[0])
      {
        v98[1] = v99;
      }

      if (vuzp1_s16(v103, *&v95).i8[2])
      {
        v98[249] = v99;
      }

      if (vuzp1_s16(*&v95, vmovn_s64(vcgeq_u64(v101, *&v95))).i32[1])
      {
        v98[497] = v99;
        v98[745] = v99;
      }

      v95 = vaddq_s64(v95, v102);
      v96 = vaddq_s64(v96, v102);
      v98 += 992;
      v100 -= 4;
    }

    while (v100);
    v104 = *(v8 + 72);
  }

  else
  {
    v104 = 0;
  }

  if (*(v8 + 24))
  {
    if (v104)
    {
      v109 = 0;
      v110 = 0;
      v111 = 0;
      v112 = 0;
      v113 = *(v8 + 56) - 1;
      v114 = 272;
      v115 = MEMORY[0x29EDCA610];
      v195 = v113;
      do
      {
        v116 = *(v8 + 80);
        v117 = (v116 + 992 * v109);
        v118 = v117[18 * v113 + 68];
        if (v118)
        {
          ++v111;
        }

        if (v118 == 70)
        {
          v110 = (v110 + 1);
        }

        if (v118 == 68)
        {
          v112 = (v112 + 1);
        }

        if (*(v8 + 24) >= 2u)
        {
          v197 = &v117[18 * v113];
          v199 = v111;
          sa = v110;
          v204 = v112;
          if (!v109)
          {
            fwrite("All entries:\n", 0xDuLL, 1uLL, *v115);
          }

          if (*(v8 + 56))
          {
            v119 = 0;
            v120 = (v116 + v114);
            do
            {
              v122 = *v120;
              v120 += 18;
              LODWORD(v121) = v122;
              if (v122)
              {
                v121 = v121;
              }

              else
              {
                v121 = 45;
              }

              fprintf(*v115, " %c", v121);
              ++v119;
            }

            while (v119 < *(v8 + 56));
          }

          fprintf(*v115, " lbl=%s", (*(*(v8 + 40) + 32) + *(*(*(v8 + 40) + 8) + 16 * v117[1])));
          if (v118 == 70)
          {
            fprintf(*v115, " siz=%llu yec=%zu", *(v197 + 36), *(v117 + 5));
            v112 = v204;
          }

          else
          {
            v112 = v204;
            if (v118 == 76)
            {
              fprintf(*v115, " lnk=%s", *(v117 + 10));
            }
          }

          fprintf(*v115, " pat=%s", (*(*(v8 + 32) + 32) + *(*(*(v8 + 32) + 8) + 16 * *v117)));
          fputc(10, *v115);
          v104 = *(v8 + 72);
          v111 = v199;
          v110 = sa;
          v113 = v195;
        }

        ++v109;
        v114 += 992;
      }

      while (v109 < v104);
    }

    else
    {
      v112 = 0;
      v111 = 0;
      v110 = 0;
    }

    v123 = MEMORY[0x29EDCA610];
    v124 = v110;
    fprintf(*MEMORY[0x29EDCA610], "%12zu entries in output\n", v111);
    fprintf(*v123, "%12zu regular files\n", v124);
    fprintf(*v123, "%12zu directories\n", v112);
    v104 = *(v8 + 72);
  }

  if (!v104)
  {
LABEL_264:
    v152 = 0;
    goto LABEL_265;
  }

  v125 = 0;
  v205 = *(v8 + 56);
  v126 = 272;
  v127 = 312;
  v128 = 288;
  while (2)
  {
    v129 = *(v8 + 80);
    v130 = (v129 + 992 * v125);
    v131 = *(v8 + 32);
    v132 = *(v131 + 32);
    v133 = *(*(v131 + 8) + 16 * *v130);
    v134 = &v130[18 * (v205 - 1)];
    v135 = v134[68];
    if (!v135)
    {
      v145 = *(v8 + 24);
      v146 = 2;
      v147 = "REMOVE (not in output): %s\n";
      goto LABEL_240;
    }

    v136 = *(v8 + 48);
    if (!v136)
    {
      v145 = *(v8 + 24);
      v146 = 3;
      v147 = "ARCHIVE (full replacement): %s\n";
      goto LABEL_240;
    }

    if (v135 != 70)
    {
      v145 = *(v8 + 24);
      v146 = 3;
      v147 = "ARCHIVE (not a regular file): %s\n";
LABEL_240:
      if (v145 <= 1)
      {
        goto LABEL_242;
      }

      goto LABEL_241;
    }

    v137 = (v129 + v126);
    v138 = *(v8 + 48);
    do
    {
      v139 = *v137;
      v137 += 18;
      if (v139 != 70)
      {
        v145 = *(v8 + 24);
        v146 = 3;
        v147 = "ARCHIVE (different type/missing in some inputs): %s\n";
        goto LABEL_240;
      }

      --v138;
    }

    while (v138);
    v140 = (v129 + v127);
    v141 = *(v8 + 48);
    while (1)
    {
      v91 = v140[2];
      v92 = v140[3];
      v93 = *(v134 + 41);
      v94 = *(v134 + 42);
      v142 = *v140 == *(v134 + 39) && v140[1] == *(v134 + 40);
      v143 = v142 && v91 == v93;
      if (!v143 || v92 != v94)
      {
        break;
      }

      v140 += 9;
      if (!--v141)
      {
        v145 = *(v8 + 24);
        v146 = 1;
        v147 = "COPY: %s\n";
        goto LABEL_240;
      }
    }

    v148 = (v129 + v128);
    do
    {
      v149 = *v148;
      v148 += 9;
      if (!v149)
      {
        v145 = *(v8 + 24);
        v146 = 3;
        v147 = "ARCHIVE (empty in some inputs): %s\n";
        goto LABEL_240;
      }

      --v136;
    }

    while (v136);
    if (*(v134 + 36) >= *(*(v8 + 8) + 104))
    {
      v147 = "PATCH: %s\n";
    }

    else
    {
      v147 = "ARCHIVE (too small for patching): %s\n";
    }

    if (*(v134 + 36) < *(*(v8 + 8) + 104))
    {
      v146 = 3;
    }

    else
    {
      v146 = 4;
    }

    if (*(v8 + 24) >= 2u)
    {
LABEL_241:
      fprintf(*MEMORY[0x29EDCA610], v147, v91, v92, v93, v94, *v95.i64, *v96.i64, v132 + v133);
      v104 = *(v8 + 72);
    }

LABEL_242:
    ++v125;
    v130[2] = v146;
    v126 += 992;
    v127 += 992;
    v128 += 992;
    if (v125 < v104)
    {
      continue;
    }

    break;
  }

  if (!v104)
  {
    goto LABEL_264;
  }

  v150 = 0;
  v151 = *(v8 + 80) + 200;
  do
  {
    if (*(v151 + 72 * v205) == 70 && *(v151 - 64) != -1)
    {
      ++v150;
    }

    v151 += 992;
    --v104;
  }

  while (v104);
  if (!v150)
  {
    goto LABEL_264;
  }

  if (v150 > 0x400000000)
  {
    *__error() = 12;
    goto LABEL_299;
  }

  v156 = calloc(v150, 8uLL);
  if (v156)
  {
    v152 = v156;
    v158 = *(v8 + 72);
    v157 = *(v8 + 80);
    if (v158)
    {
      v159 = 0;
      v160 = 0;
      v161 = v157 + 200;
      do
      {
        if (*&v161[72 * v205] == 70 && *(v161 - 8) != -1)
        {
          *(v156 + v159++) = v160;
          v158 = *(v8 + 72);
        }

        ++v160;
        v161 += 992;
      }

      while (v160 < v158);
    }

    qsort_r(v156, v150, 8uLL, v157, entryIndexCmpHLC);
    v162 = 0;
    v163 = -v150;
    sb = (v152 + 8);
    v206 = v152;
    do
    {
      v164 = v162 + 1;
      if (v162 + 1 < v150)
      {
        v165 = 1;
        while (*(*(v8 + 80) + 992 * *(v152 + v162 + v165) + 136) == *(*(v8 + 80) + 992 * *(v152 + v162) + 136))
        {
          ++v165;
          if (!(v163 + v162 + v165))
          {
            v165 = v150 - v162;
            v164 = v150;
            goto LABEL_291;
          }
        }

        v164 = v162 + v165;
LABEL_291:
        if (v165 >= 2)
        {
          v166 = v163;
          v167 = v165 - 1;
          v168 = (sb + 8 * v162);
          do
          {
            v169 = *v168++;
            v170 = (*(v8 + 80) + 992 * v169);
            if (*(v8 + 24) >= 2u)
            {
              fprintf(*MEMORY[0x29EDCA610], "FIXUP (hard linked): %s\n", (*(*(v8 + 32) + 32) + *(*(*(v8 + 32) + 8) + 16 * *v170)));
            }

            v170[2] = 5;
            --v167;
          }

          while (v167);
          v163 = v166;
          v152 = v206;
        }
      }

      v162 = v164;
    }

    while (v164 < v150);
LABEL_265:
    free(v152);
    if ((stateComputePatches(v8) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "AAAssetBuilderGenerate", 1611, 27, 0, "compute patches", v172);
    }

    else
    {
      if ((stateGenerateArchive(v8) & 0x80000000) == 0)
      {
        v107 = 0;
        goto LABEL_178;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "AAAssetBuilderGenerate", 1612, 27, 0, "generate archive", v172);
    }
  }

  else
  {
LABEL_299:
    v171 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateInitOps", 1031, 27, *v171, "malloc");
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "AAAssetBuilderGenerate", 1610, 27, 0, "init ops", v172);
  }

LABEL_177:
  v107 = 0xFFFFFFFFLL;
LABEL_178:
  stateDestroy_0(v8);
  return v107;
}

uint64_t stateComputePatches(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 20);
  if (*(a1 + 24))
  {
    fwrite("Computing patches...\n", 0x15uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  v4 = calloc(v3, 8uLL);
  v5 = v4;
  if (!v4)
  {
    v29 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateComputePatches", 1074, 27, v29, "malloc");
    goto LABEL_28;
  }

  if (v3)
  {
    v6 = v3;
    v7 = v4;
    while (1)
    {
      v8 = malloc(0x10uLL);
      *v7 = v8;
      if (!v8)
      {
        break;
      }

      ++v7;
      if (!--v6)
      {
        goto LABEL_8;
      }
    }

    v30 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateComputePatches", 1078, 27, v30, "malloc");
LABEL_28:
    v9 = 0;
    goto LABEL_34;
  }

LABEL_8:
  v9 = ThreadPoolCreate(v3, v5, computePatchesWorkerProc);
  if (!v9)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateComputePatches", 1083, 27, 0, "ThreadPoolCreate");
    goto LABEL_34;
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    v11 = 0;
    v12 = 72 * v2 + 216;
    v13 = 8;
    do
    {
      v14 = *(a1 + 80);
      if (*(v14 + v13) == 4 && *(v14 + v12) < *(*(a1 + 8) + 152))
      {
        Worker = ThreadPoolGetWorker(v9);
        if (!Worker)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateComputePatches", 1091, 27, 0, "ThreadPoolGetWorker");
          goto LABEL_34;
        }

        *Worker = a1;
        Worker[1] = v11;
        if ((ThreadPoolRunWorker(v9) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateComputePatches", 1095, 27, 0, "ThreadPoolRunWorker");
          goto LABEL_34;
        }

        v10 = *(a1 + 72);
      }

      ++v11;
      v12 += 992;
      v13 += 992;
    }

    while (v11 < v10);
  }

  if ((ThreadPoolSync(v9) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateComputePatches", 1097, 27, 0, "ThreadPoolSync");
    goto LABEL_34;
  }

  v23 = *(a1 + 72);
  if (!v23)
  {
LABEL_25:
    v28 = 1;
    goto LABEL_35;
  }

  v24 = 0;
  v25 = 72 * v2 + 216;
  v26 = 8;
  while (1)
  {
    v27 = *(a1 + 80);
    if (*(v27 + v26) != 4 || *(v27 + v25) < *(*(a1 + 8) + 152))
    {
      goto LABEL_24;
    }

    v34[0] = a1;
    v34[1] = v24;
    if ((computePatchesWorkerProc(v34, v16, v17, v18, v19, v20, v21, v22) & 0x80000000) != 0)
    {
      break;
    }

    v23 = *(a1 + 72);
LABEL_24:
    ++v24;
    v25 += 992;
    v26 += 992;
    if (v24 >= v23)
    {
      goto LABEL_25;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateComputePatches", 1107, 27, 0, "compute patch");
LABEL_34:
  v28 = 0;
LABEL_35:
  if ((ThreadPoolDestroy(v9) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateComputePatches", 1111, 27, 0, "ThreadPoolDestroy");
    v28 = 0;
  }

  if (v5)
  {
    if (v3)
    {
      v31 = v5;
      do
      {
        v32 = *v31++;
        free(v32);
        --v3;
      }

      while (v3);
    }

    free(v5);
  }

  if (v28)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t stateGenerateArchive(uint64_t a1)
{
  v211 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 56);
  v3 = *(a1 + 8);
  v4 = v3[16];
  v5 = *v3;
  if (*(a1 + 24))
  {
    fwrite("Generating asset...\n", 0x14uLL, 1uLL, *MEMORY[0x29EDCA610]);
    v3 = *(a1 + 8);
  }

  v6 = AATempStreamOpen(v3[14]);
  if (!v6)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1161, 27, 0, "AATempStreamOpen");
    v205 = 0;
    v207 = 0;
LABEL_325:
    remove_key_set = 0;
    v13 = 0;
LABEL_326:
    v173 = 0;
    v174 = 0;
    v172 = 0;
    v7 = 0;
    goto LABEL_327;
  }

  v7 = AAHeaderCreate();
  if (!v7)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1163, 27, 0, "AAHeaderCreate");
    v205 = 0;
    remove_key_set = 0;
    v207 = 0;
    v13 = 0;
    v173 = 0;
    v174 = 0;
    v172 = 0;
LABEL_327:
    v15 = 0;
    goto LABEL_328;
  }

  v207 = v7;
  v202 = AAFieldKeySetCreateWithString("IDX,IDZ,SIZ");
  if (!v202)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1165, 27, 0, "AAFieldKeySetCreateWithString");
    v205 = 0;
    goto LABEL_325;
  }

  v8 = AAFieldKeySetCreateWithString("DAT,YEC,UID,GID,FLG,AFT,AFR");
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1167, 27, 0, "AAFieldKeySetCreateWithString");
    v205 = 0;
    remove_key_set = 0;
LABEL_334:
    v173 = 0;
    v174 = 0;
    v172 = 0;
    v7 = 0;
    v15 = 0;
    goto LABEL_335;
  }

  remove_key_set = v8;
  v9 = malloc(0x10000uLL);
  if (!v9)
  {
    v178 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1169, 27, *v178, "malloc");
    v205 = 0;
    goto LABEL_334;
  }

  v205 = v9;
  if (!*(a1 + 88))
  {
LABEL_313:
    v15 = subArchiveCreate(*(*(a1 + 8) + 112), 0, 0, 0);
    if (v15)
    {
      v13 = v202;
      if (AAByteStreamSeek(v6, 0, 0) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1510, 27, 0, "seek");
        goto LABEL_382;
      }

      v171 = v15[4];
      if (!v171)
      {
        v171 = v15[3];
      }

      v172 = AAEncodeArchiveOutputStreamOpen(v171, 0, 0, 0, *(a1 + 20));
      v173 = AAConvertArchiveOutputStreamOpen(v172, v202, remove_key_set, 0, 0, 0, *(a1 + 20));
      v174 = AADecodeArchiveInputStreamOpen(v6, 0, 0, 0x100uLL, *(a1 + 20));
      if (AAArchiveStreamProcess(v174, v173, 0, 0, 0, *(a1 + 20)) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1517, 27, 0, "processing manifest");
        goto LABEL_383;
      }

      AAArchiveStreamClose(v174);
      AAArchiveStreamClose(v173);
      AAArchiveStreamClose(v172);
      v175 = *a1;
      AAByteStreamClose(v15[4]);
      v15[4] = 0;
      if ((encodeYOPEntry(v175, 0x4Du, 0, 0, v15[3]) & 0x80000000) == 0)
      {
        subArchiveDestroy(v15);
        v13 = v202;
        if (AAByteStreamSeek(v6, 0, 0) < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1530, 27, 0, "seek");
        }

        else
        {
          if ((AAByteStreamProcess(v6, *a1) & 0x8000000000000000) == 0)
          {
            v173 = 0;
            v174 = 0;
            v172 = 0;
            v7 = 0;
            v15 = 0;
            v176 = 0;
            goto LABEL_329;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1531, 27, 0, "writing archive");
        }

        goto LABEL_326;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1524, 27, 0, "encode entry");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1508, 27, 0, "sub_asset");
    }

    v173 = 0;
    v174 = 0;
    v172 = 0;
    v7 = 0;
LABEL_335:
    v176 = 0xFFFFFFFFLL;
    v13 = v202;
    goto LABEL_329;
  }

  v10 = 0;
  v204 = v2 - 1;
  v185 = v4 != 0;
  v186 = v5;
  ostream = v6;
  v195 = v4;
  v190 = v4 != 0;
LABEL_10:
  v11 = 0;
  v12 = *(a1 + 40);
  v182 = v10;
  v187 = *(*(v12 + 8) + 16 * v10);
  v188 = *(v12 + 32);
  v13 = v202;
  while (v11 <= 3 && !*(a1 + 48))
  {
LABEL_311:
    if (++v11 == 10)
    {
      v10 = v182 + 1;
      if (v182 + 1 >= *(a1 + 88))
      {
        goto LABEL_313;
      }

      goto LABEL_10;
    }
  }

  v200 = v11;
  v14 = subArchiveCreate(*(*(a1 + 8) + 112), *(*(a1 + 8) + 136), *(*(a1 + 8) + 144), *(a1 + 20));
  v15 = v14;
  if (!v14)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1192, 27, 0, "subArchiveCreate");
    goto LABEL_382;
  }

  v16 = *(a1 + 72);
  if (!v16)
  {
LABEL_310:
    AAByteStreamClose(v15[4]);
    AAByteStreamClose(v15[3]);
    free(v15);
    v6 = ostream;
    v11 = v200;
    goto LABEL_311;
  }

  v196 = 0;
  v17 = 0;
  v18 = 0;
  v189 = 0;
  v19 = 0;
  v20 = v200;
  v203 = v14;
  while (1)
  {
    v21 = *(a1 + 80);
    v22 = v21 + 992 * v19;
    v23 = v21 + 992 * v16 + 992 * ~v19;
    if (v20 == 7)
    {
      v24 = v23;
    }

    else
    {
      v24 = (v21 + 992 * v19);
    }

    v25 = (*(*(a1 + 32) + 32) + *(*(*(a1 + 32) + 8) + 16 * *v24));
    v26 = v24 + 68;
    v27 = &v24[18 * v204 + 68];
    v28 = *v27;
    if (v20 > 3)
    {
      if (v20 > 5)
      {
        if (v20 != 6)
        {
          if (v20 == 7)
          {
            v17 = 1;
            if (v28 == 68)
            {
              goto LABEL_66;
            }

            v18 = 79;
          }

LABEL_218:
          v15 = v203;
          goto LABEL_282;
        }

        v18 = 79;
        v17 = 1;
        if (!v28 || v28 == 68)
        {
          goto LABEL_218;
        }

LABEL_66:
        sizea = v17;
        valuea = *v27;
        v44 = AAHeaderClear(v7);
        v45.ikey = 5265748;
        v46 = AAHeaderSetFieldUInt(v7, 0xFFFFFFFF, v45, valuea);
        v47 = strlen(v25);
        v48.ikey = 5521744;
        v49 = AAHeaderSetFieldString(v7, 0xFFFFFFFF, v48, v25, v47);
        appended = aaHeaderAppendEntryAttributes(v7, v24 + 144, v24 + 216);
        v51 = valuea;
        v52 = (appended | v46 | v44 | v49) >= 0;
        if (valuea == 70)
        {
          v53 = *(v24 + 17);
          v6 = ostream;
          if (v53 != -1)
          {
            v54.ikey = 4410440;
            v55 = AAHeaderSetFieldUInt(v7, 0xFFFFFFFF, v54, v53);
            v51 = valuea;
            if (v55 < 0)
            {
              v52 = 0;
            }
          }
        }

        else
        {
          v6 = ostream;
        }

        if ((v186 & 0x10) == 0 && (v51 == 70 ? (v57 = v24[8] == 0) : (v57 = 0), v57))
        {
          v71.ikey = 3295315;
          if (AAHeaderSetFieldHash(v7, 0xFFFFFFFF, v71, 3u, v27 + 40) < 0)
          {
            v52 = 0;
          }
        }

        else if ((v51 | 2) != 0x46)
        {
LABEL_120:
          if (!v52)
          {
            goto LABEL_343;
          }

          EncodedSize = AAHeaderGetEncodedSize(v7);
          EncodedData = AAHeaderGetEncodedData(v7);
          if (sizea)
          {
            v6 = v203[4];
            if (!v6)
            {
              v6 = v203[3];
            }
          }

          if (*(v6 + 3))
          {
            v78 = 0;
            if (EncodedSize)
            {
              v79 = EncodedSize;
              while (1)
              {
                v80 = (*(v6 + 3))(*v6, EncodedData, v79);
                if (v80 < 1)
                {
                  break;
                }

                EncodedData += v80;
                v78 += v80;
                v79 -= v80;
                if (!v79)
                {
                  goto LABEL_170;
                }
              }

              v78 = v80;
            }
          }

          else
          {
            v78 = -1;
          }

LABEL_170:
          if (v78 != EncodedSize)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1328, 27, 0, "write header");
            goto LABEL_356;
          }

          v20 = v200;
          v17 = sizea;
          if ((valuea | 2) == 0x46)
          {
            v105 = *(v24 + 11);
            if (v105)
            {
              if (!*(v6 + 3))
              {
                goto LABEL_350;
              }

              v106 = 0;
              v107 = *(v24 + 13);
              while (1)
              {
                v108 = (*(v6 + 3))(*v6, v107, v105);
                if (v108 < 1)
                {
                  break;
                }

                v107 += v108;
                v106 += v108;
                v105 -= v108;
                if (!v105)
                {
                  goto LABEL_179;
                }
              }

              v106 = v108;
LABEL_179:
              v20 = v200;
              v17 = sizea;
              if (v106 < 0)
              {
LABEL_350:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1332, 27, 0, "write XAT");
                goto LABEL_356;
              }
            }

            v109 = *(v24 + 14);
            if (v109)
            {
              if (!*(v6 + 3))
              {
                goto LABEL_351;
              }

              v110 = 0;
              v111 = *(v24 + 16);
              while (1)
              {
                v112 = (*(v6 + 3))(*v6, v111, v109);
                if (v112 < 1)
                {
                  break;
                }

                v111 += v112;
                v110 += v112;
                v109 -= v112;
                if (!v109)
                {
                  goto LABEL_213;
                }
              }

              v110 = v112;
LABEL_213:
              v20 = v200;
              v17 = sizea;
              if (v110 < 0)
              {
LABEL_351:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1333, 27, 0, "write ACL");
                goto LABEL_356;
              }
            }
          }

          v129 = v196;
          if (v17)
          {
            v129 = v196 + 1;
          }

          v196 = v129;
          v18 = 79;
LABEL_217:
          v13 = v202;
          goto LABEL_218;
        }

        v72 = *(v24 + 11);
        if (v72)
        {
          v73.ikey = 5521752;
          if (AAHeaderSetFieldBlob(v7, 0xFFFFFFFF, v73, v72) < 0)
          {
            v52 = 0;
          }
        }

        v74 = *(v24 + 14);
        if (v74)
        {
          v75.ikey = 4997953;
          if (AAHeaderSetFieldBlob(v7, 0xFFFFFFFF, v75, v74) < 0)
          {
LABEL_343:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1322, 27, 0, "setup header");
LABEL_360:
            v173 = 0;
            v174 = 0;
            v172 = 0;
            v7 = 0;
            v176 = 0xFFFFFFFFLL;
            goto LABEL_361;
          }
        }

        goto LABEL_120;
      }

      if (v20 == 4)
      {
        v18 = 69;
        if (*(v22 + 8) != 3 || v28 == 70)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v18 = 69;
        if (*(v22 + 8) != 3 || v28 != 70)
        {
LABEL_71:
          v17 = v190;
          goto LABEL_218;
        }
      }

      size = *(v27 + 2);
      v33 = *v27;
      v34 = AAHeaderClear(v7);
      v35.ikey = 5265748;
      v36 = AAHeaderSetFieldUInt(v7, 0xFFFFFFFF, v35, v33);
      v37 = strlen(v25);
      v38.ikey = 5521744;
      v39 = (AAHeaderSetFieldString(v7, 0xFFFFFFFF, v38, v25, v37) | v36 | v34) >= 0;
      if (!v195)
      {
        v40 = strlen((v188 + v187));
        v41.ikey = 4997708;
        if (AAHeaderSetFieldString(v7, 0xFFFFFFFF, v41, (v188 + v187), v40) < 0)
        {
          v39 = 0;
        }
      }

      v13 = v202;
      value = v33;
      if (v33 == 70)
      {
        if ((*(v22 + 144) & 4) != 0)
        {
          v58.ikey = 4672582;
          if (AAHeaderSetFieldUInt(v7, 0xFFFFFFFF, v58, *(v22 + 156)) < 0)
          {
            v39 = 0;
          }
        }

        v59 = *(v22 + 216);
        if (v59)
        {
          v60.ikey = 5523009;
          if (AAHeaderSetFieldUInt(v7, 0xFFFFFFFF, v60, *(v22 + 224)) < 0)
          {
            v39 = 0;
          }

          v59 = *(v22 + 216);
        }

        if ((v59 & 2) != 0)
        {
          v61.ikey = 5391937;
          if (AAHeaderSetFieldUInt(v7, 0xFFFFFFFF, v61, *(v22 + 228)) < 0)
          {
            v39 = 0;
          }
        }

        v62.ikey = 5521732;
        if (AAHeaderSetFieldBlob(v7, 0xFFFFFFFF, v62, size) < 0)
        {
          v39 = 0;
        }

        v63 = *(v22 + 40);
        if (v63)
        {
          v64.ikey = 4408665;
          if (AAHeaderSetFieldBlob(v7, 0xFFFFFFFF, v64, v63) < 0)
          {
LABEL_344:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1452, 27, 0, "setup header");
            v173 = 0;
            v174 = 0;
            v172 = 0;
            v7 = 0;
            v176 = 0xFFFFFFFFLL;
            v6 = ostream;
            v15 = v203;
            goto LABEL_329;
          }
        }
      }

      else if (v33 == 76)
      {
        if (*(v22 + 64))
        {
          v42 = strlen(*(v22 + 80));
          v43.ikey = 4935244;
          v13 = v202;
          if (AAHeaderSetFieldString(v7, 0xFFFFFFFF, v43, *(v22 + 80), v42) < 0)
          {
            goto LABEL_344;
          }
        }
      }

      if (!v39)
      {
        goto LABEL_344;
      }

      v65 = AAHeaderGetEncodedSize(v7);
      v66 = AAHeaderGetEncodedData(v7);
      v67 = ostream;
      if (v195)
      {
        v67 = v203[4];
        if (!v67)
        {
          v67 = v203[3];
        }
      }

      if (v67[3])
      {
        v68 = 0;
        if (v65)
        {
          v69 = v65;
          while (1)
          {
            v70 = (v67[3])(*v67, v66, v69);
            if (v70 < 1)
            {
              break;
            }

            v66 += v70;
            v68 += v70;
            v69 -= v70;
            if (!v69)
            {
              goto LABEL_132;
            }
          }

          v68 = v70;
        }
      }

      else
      {
        v68 = -1;
      }

LABEL_132:
      if (v68 != v65)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1458, 27, 0, "write header");
        goto LABEL_356;
      }

      v81 = value;
      v6 = ostream;
      if (value == 70 && size)
      {
        *&offset.st_dev = 0;
        v209 = 0;
        EntryHeader = stateLoadEntryHeader(a1, v204, v19);
        v83 = EntryHeader;
        if (!EntryHeader)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateStreamEntryBlob", 769, 27, 0, "loading entry header");
LABEL_354:
          v88 = 0;
LABEL_359:
          AAHeaderDestroy(v83);
          free(v88);
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1463, 27, 0, "write DAT");
          goto LABEL_360;
        }

        v84.ikey = 5521732;
        KeyIndex = AAHeaderGetKeyIndex(EntryHeader, v84);
        if ((KeyIndex & 0x80000000) != 0 || ((FieldBlob = AAHeaderGetFieldBlob(v83, KeyIndex, &v209, &offset), FieldBlob <= 1) ? (v87 = 1) : (v87 = FieldBlob), v87 <= 0))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateStreamEntryBlob", 770, 27, 0, "blob not found");
          goto LABEL_354;
        }

        v88 = malloc(0x40000uLL);
        if (!v88)
        {
          v179 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateStreamEntryBlob", 773, 27, *v179, "malloc");
          goto LABEL_359;
        }

        v89 = *(*(a1 + 80) + 992 * v19 + 72 * v204 + 296);
        header = v83;
        v90 = AAHeaderGetEncodedSize(v83);
        v91 = v209;
        if (v209)
        {
          v92 = v90 + v89 + *&offset.st_dev;
          while (1)
          {
            if (v91 >= 0x40000)
            {
              v93 = 0x40000;
            }

            else
            {
              v93 = v91;
            }

            v94 = AAByteStreamPRead(*(*(a1 + 8) + 8 * v204 + 24), v88, v93, v92);
            if (v94 < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateStreamEntryBlob", 781, 27, 0, "read blob from archive");
              goto LABEL_341;
            }

            v95 = v94;
            if (!v94)
            {
              goto LABEL_159;
            }

            if (v67[3])
            {
              v96 = 0;
              v97 = v88;
              v98 = v94;
              while (1)
              {
                v99 = (v67[3])(*v67, v97, v98);
                if (v99 < 1)
                {
                  break;
                }

                v97 += v99;
                v96 += v99;
                v98 -= v99;
                if (!v98)
                {
                  goto LABEL_156;
                }
              }

              v96 = v99;
            }

            else
            {
              v96 = -1;
            }

LABEL_156:
            if (v96 != v95)
            {
              break;
            }

            v92 += v95;
            v91 = v209 - v95;
            v32 = v209 == v95;
            v209 -= v95;
            v7 = v207;
            if (v32)
            {
              goto LABEL_159;
            }
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateStreamEntryBlob", 783, 27, 0, "write blob to stream");
LABEL_341:
          v6 = ostream;
          v83 = header;
          goto LABEL_359;
        }

LABEL_159:
        AAHeaderDestroy(header);
        free(v88);
        v100 = size;
        if (!v195)
        {
          v100 = 0;
        }

        v189 += v100;
        v81 = value;
      }

      v20 = v200;
      if (v81 == 70)
      {
        v101 = *(v24 + 5);
        if (v101)
        {
          if (!v67[3])
          {
            goto LABEL_355;
          }

          v102 = 0;
          v103 = *(v24 + 7);
          while (1)
          {
            v104 = (v67[3])(*v67, v103, v101);
            if (v104 < 1)
            {
              break;
            }

            v103 += v104;
            v102 += v104;
            v101 -= v104;
            if (!v101)
            {
              goto LABEL_222;
            }
          }

          v102 = v104;
LABEL_222:
          v20 = v200;
          if (v102 < 0)
          {
LABEL_355:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1470, 27, 0, "write YEC");
LABEL_356:
            v173 = 0;
            v174 = 0;
            v172 = 0;
            v7 = 0;
LABEL_357:
            v176 = 0xFFFFFFFFLL;
            v6 = ostream;
LABEL_361:
            v13 = v202;
            v15 = v203;
            goto LABEL_329;
          }
        }
      }

      v130 = v196 + v185;
      v18 = 69;
      v196 += v185;
      if (v195)
      {
        v15 = v203;
        if (!v130)
        {
          v17 = v190;
          v13 = v202;
          goto LABEL_282;
        }

        v13 = v202;
        if (v189 > *(*(a1 + 8) + 128))
        {
          AAByteStreamClose(v203[4]);
          v203[4] = 0;
          v6 = ostream;
          if ((encodeYOPEntry(ostream, 0x45u, 0, (v188 + v187), v203[3]) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1479, 27, 0, "encode entry");
          }

          else
          {
            if ((AAByteStreamTruncate(v203[3]) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "subArchiveReset", 196, 27, 0, "AAByteStreamTruncate");
            }

            else if (AAByteStreamSeek(v203[3], 0, 0) < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "subArchiveReset", 197, 27, 0, "AAByteStreamSeek");
            }

            else
            {
              AAByteStreamClose(v203[4]);
              v203[4] = 0;
              if (!*v203 || (v131 = AACompressionOutputStreamOpen(v203[3], *v203, v203[1], 0, *(v203 + 4)), (v203[4] = v131) != 0))
              {
                v189 = 0;
                v196 = 0;
                v18 = 69;
                v17 = v190;
                goto LABEL_281;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "subArchiveReset", 202, 27, 0, "AACompressionOutputStreamOpen");
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1482, 27, 0, "truncating sub asset");
          }

LABEL_382:
          v173 = 0;
          v174 = 0;
          v172 = 0;
LABEL_383:
          v7 = 0;
LABEL_328:
          v176 = 0xFFFFFFFFLL;
          goto LABEL_329;
        }

        goto LABEL_232;
      }

      v17 = v190;
      goto LABEL_217;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        v15 = v203;
        if (*(v22 + 8) == 1)
        {
          if (v195)
          {
            v30 = v203[4];
            if (!v30)
            {
              v30 = v203[3];
            }

            if ((encodeEntry(v30, v28, v25) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1360, 27, 0, "encode entry", v180);
              goto LABEL_386;
            }

            ++v196;
            v18 = 67;
            goto LABEL_78;
          }

          v18 = 67;
          if ((encodeYOPEntry(ostream, 0x43u, v25, (v188 + v187), 0) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1365, 27, 0, "encode entry", v180);
            goto LABEL_386;
          }

          goto LABEL_211;
        }

        v18 = 67;
        goto LABEL_232;
      }

      if (*(v22 + 8) != 4)
      {
        goto LABEL_218;
      }

      if (v18 != 79)
      {
        if (v18 == 73)
        {
          goto LABEL_62;
        }

        sizec = v17;
        if (*(v22 + 24))
        {
          v7 = 0;
          valueb = *(v22 + 16);
        }

        else
        {
          v15 = v203;
          if (snprintf(__str, 0x400uLL, "%s/0x%08zx", (a1 + 92), v19) >= 0x400)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1379, 27, 0, "patch path: %s");
            goto LABEL_386;
          }

          memset(&offset, 0, sizeof(offset));
          if (stat(__str, &offset) < 0 || (offset.st_mode & 0xF000) != 0x8000)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1381, 27, 0, "invalid patch: %s");
            goto LABEL_386;
          }

          valueb = offset.st_size;
          v138 = AAFileStreamOpenWithPath(__str, 0, 0);
          if (!v138)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1385, 27, 0, "open: %s");
            goto LABEL_386;
          }

          v7 = v138;
        }

        headera = AAHeaderClear(v207);
        v139.ikey = 5265748;
        v181 = AAHeaderSetFieldUInt(v207, 0xFFFFFFFF, v139, 0x4DuLL);
        v140.ikey = 5263193;
        v141 = AAHeaderSetFieldUInt(v207, 0xFFFFFFFF, v140, 0x50uLL);
        v142 = strlen(v25);
        v143.ikey = 5521744;
        v144 = AAHeaderSetFieldString(v207, 0xFFFFFFFF, v143, v25, v142);
        v145 = strlen((v188 + v187));
        v146.ikey = 4997708;
        v147 = (AAHeaderSetFieldString(v207, 0xFFFFFFFF, v146, (v188 + v187), v145) | v141 | v181 | headera | v144) >= 0;
        if ((*(v22 + 144) & 4) != 0)
        {
          v148.ikey = 4672582;
          if (AAHeaderSetFieldUInt(v207, 0xFFFFFFFF, v148, *(v22 + 156)) < 0)
          {
            v147 = 0;
          }
        }

        v149 = *(v22 + 216);
        if (v149)
        {
          v150.ikey = 5523009;
          if (AAHeaderSetFieldUInt(v207, 0xFFFFFFFF, v150, *(v22 + 224)) < 0)
          {
            v147 = 0;
          }

          v149 = *(v22 + 216);
        }

        v15 = v203;
        if ((v149 & 2) != 0)
        {
          v151 = v207;
          v152.ikey = 5391937;
          if (AAHeaderSetFieldUInt(v207, 0xFFFFFFFF, v152, *(v22 + 228)) < 0)
          {
            v147 = 0;
          }
        }

        else
        {
          v151 = v207;
        }

        v153.ikey = 5521732;
        if (AAHeaderSetFieldBlob(v151, 0xFFFFFFFF, v153, valueb) < 0)
        {
          v147 = 0;
        }

        v154 = *(v22 + 40);
        if (v154 && (v155.ikey = 4408665, AAHeaderSetFieldBlob(v151, 0xFFFFFFFF, v155, v154) < 0) || !v147)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1402, 27, 0, "setup header");
LABEL_375:
          v173 = 0;
          v174 = 0;
          v172 = 0;
          goto LABEL_376;
        }

        v156 = AAHeaderGetEncodedSize(v207);
        v157 = AAHeaderGetEncodedData(v207);
        if (*(ostream + 3))
        {
          if (v156)
          {
            v158 = v157;
            v159 = 0;
            v160 = v156;
            while (1)
            {
              v161 = (*(ostream + 3))(*ostream, v158, v160);
              if (v161 < 1)
              {
                break;
              }

              v158 += v161;
              v159 += v161;
              v160 -= v161;
              if (!v160)
              {
                goto LABEL_285;
              }
            }

            v159 = v161;
          }

          else
          {
            v159 = 0;
          }
        }

        else
        {
          v159 = -1;
        }

LABEL_285:
        if (v159 != v156)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1408, 27, 0, "write header");
          v173 = 0;
          v174 = 0;
          v172 = 0;
          goto LABEL_357;
        }

        v163 = *(v22 + 24);
        if (v163)
        {
          v15 = v203;
          if (!*(ostream + 3))
          {
            goto LABEL_365;
          }

          v164 = 0;
          if (!valueb)
          {
            goto LABEL_296;
          }

          v165 = valueb;
          while (1)
          {
            v166 = (*(ostream + 3))(*ostream, v163, v165);
            if (v166 < 1)
            {
              break;
            }

            v163 += v166;
            v164 += v166;
            v165 -= v166;
            if (!v165)
            {
              goto LABEL_296;
            }
          }
        }

        else
        {
          v15 = v203;
          if (!v7)
          {
            goto LABEL_365;
          }

          v166 = AAByteStreamProcess(v7, ostream);
        }

        v164 = v166;
LABEL_296:
        if (v164 < 0 || v164 != valueb)
        {
LABEL_365:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1414, 27, 0, "write patch payload");
          goto LABEL_375;
        }

        v167 = *(v22 + 40);
        if (v167)
        {
          if (!*(ostream + 3))
          {
            goto LABEL_372;
          }

          v168 = 0;
          v169 = *(v22 + 56);
          while (1)
          {
            v170 = (*(ostream + 3))(*ostream, v169, v167);
            if (v170 < 1)
            {
              break;
            }

            v169 += v170;
            v168 += v170;
            v167 -= v170;
            if (!v167)
            {
              goto LABEL_305;
            }
          }

          v168 = v170;
LABEL_305:
          if (v168 < 0)
          {
LABEL_372:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1419, 27, 0, "write YEC");
            goto LABEL_375;
          }
        }

        AAByteStreamClose(v7);
        v7 = v207;
        v13 = v202;
        v20 = v200;
        v17 = sizec;
        goto LABEL_282;
      }

      goto LABEL_66;
    }

    if (!v20)
    {
      break;
    }

    v15 = v203;
    if (v20 == 1)
    {
      v29 = *(v22 + 8);
      if (v29 == 2 || v29 == 3 && v28 != 68)
      {
        if (v195)
        {
          v56 = v203[4];
          if (!v56)
          {
            v56 = v203[3];
          }

          if ((encodeEntry(v56, v28, v25) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1346, 27, 0, "encode entry", v180);
            goto LABEL_386;
          }

          ++v196;
          v18 = 82;
LABEL_78:
          v17 = 1;
LABEL_281:
          v20 = v200;
          goto LABEL_282;
        }

        v18 = 82;
        if ((encodeYOPEntry(ostream, 0x52u, v25, (v188 + v187), 0) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1351, 27, 0, "encode entry", v180);
          goto LABEL_386;
        }

LABEL_211:
        v17 = 0;
        goto LABEL_281;
      }

      v18 = 82;
LABEL_232:
      v17 = v190;
    }

LABEL_282:
    ++v19;
    v16 = *(a1 + 72);
    if (v19 >= v16)
    {
      if (!v17)
      {
        goto LABEL_310;
      }

      if (!v196)
      {
        goto LABEL_310;
      }

      AAByteStreamClose(v15[4]);
      v15[4] = 0;
      if ((encodeYOPEntry(ostream, v18, 0, (v188 + v187), v15[3]) & 0x80000000) == 0)
      {
        goto LABEL_310;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1498, 27, 0, "encode entry", v180);
LABEL_386:
      v173 = 0;
      v174 = 0;
      v172 = 0;
      v7 = 0;
      v176 = 0xFFFFFFFFLL;
      v6 = ostream;
      goto LABEL_329;
    }
  }

  if (v28 != 70)
  {
    v18 = 73;
    v17 = 1;
    goto LABEL_218;
  }

  v31 = *(v22 + 8);
  v17 = 1;
  v32 = v31 == 1 || v31 == 4;
  if (!v32)
  {
LABEL_63:
    v18 = 73;
    goto LABEL_218;
  }

LABEL_62:
  if (*(v22 + 32))
  {
    goto LABEL_63;
  }

  sizeb = v17;
  v113 = *v27;
  v114 = AAHeaderClear(v7);
  v115.ikey = 5265748;
  LODWORD(v113) = AAHeaderSetFieldUInt(v7, 0xFFFFFFFF, v115, v113);
  v116 = strlen(v25);
  v117.ikey = 5521744;
  v118 = ((AAHeaderSetFieldString(v7, 0xFFFFFFFF, v117, v25, v116) | v113 | v114) & 0x80000000) == 0;
  v119 = *(a1 + 48);
  if (v119)
  {
    v120 = 0;
    v121 = v24 + 78;
    v15 = v203;
    do
    {
      v122 = &v26[18 * v120];
      if (*v122 == 70)
      {
        if (v120)
        {
          v123 = v121;
          v124 = v120;
          while (1)
          {
            if (*(v123 - 10) == 70)
            {
              v125 = *v123 == *(v122 + 5) && *(v123 + 1) == *(v122 + 6);
              v126 = v125 && *(v123 + 2) == *(v122 + 7);
              if (v126 && *(v123 + 3) == *(v122 + 8))
              {
                break;
              }
            }

            v123 += 18;
            if (!--v124)
            {
              goto LABEL_203;
            }
          }
        }

        else
        {
LABEL_203:
          v128.ikey = 3295315;
          if (AAHeaderSetFieldHash(v7, 0xFFFFFFFF, v128, 3u, v122 + 40) < 0)
          {
            v118 = 0;
          }

          v119 = *(a1 + 48);
        }
      }

      ++v120;
    }

    while (v120 < v119);
  }

  else
  {
    v15 = v203;
  }

  if (!v118)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1290, 27, 0, "setup header");
    goto LABEL_370;
  }

  v132 = AAHeaderGetEncodedSize(v7);
  v133 = AAHeaderGetEncodedData(v7);
  v134 = ostream;
  if (sizeb)
  {
    v134 = v15[4];
    if (!v134)
    {
      v134 = v15[3];
    }
  }

  if (*(v134 + 3))
  {
    v135 = 0;
    if (v132)
    {
      v136 = v132;
      while (1)
      {
        v137 = (*(v134 + 3))(*v134, v133, v136);
        if (v137 < 1)
        {
          break;
        }

        v133 += v137;
        v135 += v137;
        v136 -= v137;
        if (!v136)
        {
          goto LABEL_277;
        }
      }

      v135 = v137;
    }
  }

  else
  {
    v135 = -1;
  }

LABEL_277:
  if (v135 == v132)
  {
    v17 = sizeb;
    v162 = v196;
    if (sizeb)
    {
      v162 = v196 + 1;
    }

    v196 = v162;
    v18 = 73;
    v13 = v202;
    goto LABEL_281;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateGenerateArchive", 1296, 27, 0, "write header");
LABEL_370:
  v173 = 0;
  v174 = 0;
  v172 = 0;
  v7 = 0;
LABEL_376:
  v176 = 0xFFFFFFFFLL;
  v6 = ostream;
  v13 = v202;
LABEL_329:
  AAArchiveStreamClose(v172);
  AAArchiveStreamClose(v174);
  AAArchiveStreamClose(v173);
  AAByteStreamClose(v6);
  if (v15)
  {
    AAByteStreamClose(v15[4]);
    AAByteStreamClose(v15[3]);
    free(v15);
  }

  AAByteStreamClose(v7);
  AAHeaderDestroy(v207);
  AAFieldKeySetDestroy(v13);
  AAFieldKeySetDestroy(remove_key_set);
  free(v205);
  return v176;
}

void stateDestroy_0(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 92);
    v2 = (a1 + 92);
    if (v3)
    {
      removeTree(v2);
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      if (*(a1 + 72))
      {
        v5 = 0;
        v6 = 128;
        do
        {
          v7 = (*(a1 + 80) + v6);
          free(*(v7 - 13));
          free(*(v7 - 9));
          memset_s(v7 - 11, 0x18uLL, 0, 0x18uLL);
          free(*(v7 - 3));
          memset_s(v7 - 5, 0x18uLL, 0, 0x18uLL);
          free(*v7);
          memset_s(v7 - 2, 0x18uLL, 0, 0x18uLL);
          free(*(v7 - 6));
          memset_s(v7 - 8, 0x18uLL, 0, 0x18uLL);
          ++v5;
          v6 += 992;
        }

        while (v5 < *(a1 + 72));
        v4 = *(a1 + 80);
      }

      free(v4);
    }

    StringTableDestroy(*(a1 + 32));
    StringTableDestroy(*(a1 + 40));

    free(a1);
  }
}

uint64_t stateCollectorStreamWriteHeader(void *a1, AAHeader header)
{
  v113 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v107 = 0;
  value = 0;
  v105 = 0;
  v106 = -1;
  v104 = 0;
  hash_function = 0;
  v5 = *(v4 + 56);
  *(a1 + 1) = 0u;
  v6 = a1 + 2;
  v7 = a1[1];
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  v9.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v9);
  if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(header, KeyIndex, &value), FieldUInt <= 1) ? (v12 = 1) : (v12 = FieldUInt), v12 <= 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteHeader", 246, 27, 0, "no TYP");
    return 0xFFFFFFFFLL;
  }

  if (value == 77)
  {
    return 0;
  }

  v14.ikey = 5521744;
  v15 = AAHeaderGetKeyIndex(header, v14);
  if ((v15 & 0x80000000) != 0 || ((FieldString = AAHeaderGetFieldString(header, v15, 0x400uLL, __s, 0), FieldString <= 1) ? (v17 = 1) : (v17 = FieldString), v17 <= 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteHeader", 248, 27, 0, "no PAT");
    return 0xFFFFFFFFLL;
  }

  v18.ikey = 5784649;
  v19 = AAHeaderGetKeyIndex(header, v18);
  if ((v19 & 0x80000000) != 0 || ((v20 = AAHeaderGetFieldUInt(header, v19, &v105), v20 <= 1) ? (v21 = 1) : (v21 = v20), v21 <= 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteHeader", 249, 27, 0, "no IDX");
    return 0xFFFFFFFFLL;
  }

  v22.ikey = 5915721;
  v23 = AAHeaderGetKeyIndex(header, v22);
  if ((v23 & 0x80000000) != 0 || ((v24 = AAHeaderGetFieldUInt(header, v23, &v104), v24 <= 1) ? (v25 = 1) : (v25 = v24), v25 <= 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteHeader", 250, 27, 0, "no IDZ");
    return 0xFFFFFFFFLL;
  }

  v26 = v5 - 1;
  v27 = value;
  if (value != 70)
  {
    goto LABEL_50;
  }

  v28.ikey = 3295315;
  v29 = AAHeaderGetKeyIndex(header, v28);
  if ((v29 & 0x80000000) != 0 || ((FieldHash = AAHeaderGetFieldHash(header, v29, 0x20uLL, &hash_function, v109), FieldHash <= 1) ? (v31 = 1) : (v31 = FieldHash), v31 <= 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteHeader", 255, 27, 0, "no hash: %s");
    return 0xFFFFFFFFLL;
  }

  v32.ikey = 5917011;
  v33 = AAHeaderGetKeyIndex(header, v32);
  if ((v33 & 0x80000000) != 0 || ((v34 = AAHeaderGetFieldUInt(header, v33, &v107), v34 <= 1) ? (v35 = 1) : (v35 = v34), v35 <= 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteHeader", 256, 27, 0, "no SIZ: %s");
    return 0xFFFFFFFFLL;
  }

  v36.ikey = 4410440;
  v37 = AAHeaderGetKeyIndex(header, v36);
  if ((v37 & 0x80000000) != 0 || ((v38 = AAHeaderGetFieldUInt(header, v37, &v106), v38 <= 1) ? (v39 = 1) : (v39 = v38), v39 <= 0))
  {
    v106 = -1;
  }

  if (v7 != v26)
  {
    goto LABEL_64;
  }

  size[0] = 0;
  offset = 0;
  v40.ikey = 4408665;
  v41 = AAHeaderGetKeyIndex(header, v40);
  if ((v41 & 0x80000000) == 0)
  {
    FieldBlob = AAHeaderGetFieldBlob(header, v41, size, &offset);
    v43 = FieldBlob <= 1 ? 1 : FieldBlob;
    if (v43 >= 1)
    {
      *v6 = size[0];
    }
  }

  v27 = value;
LABEL_50:
  if ((v27 & 0xFFFFFFFFFFFFFFFDLL) != 0x44 || v7 != v26)
  {
    goto LABEL_65;
  }

  size[0] = 0;
  offset = 0;
  v44.ikey = 5521752;
  v45 = AAHeaderGetKeyIndex(header, v44);
  if ((v45 & 0x80000000) == 0)
  {
    v46 = AAHeaderGetFieldBlob(header, v45, size, &offset);
    v47 = v46 <= 1 ? 1 : v46;
    if (v47 >= 1)
    {
      a1[4] = size[0];
    }
  }

  v48.ikey = 4997953;
  v49 = AAHeaderGetKeyIndex(header, v48);
  if ((v49 & 0x80000000) == 0)
  {
    v50 = AAHeaderGetFieldBlob(header, v49, size, &offset);
    v51 = v50 <= 1 ? 1 : v50;
    if (v51 >= 1)
    {
      a1[6] = size[0];
    }
  }

LABEL_64:
  v27 = value;
LABEL_65:
  if (v27 == 76)
  {
    v52.ikey = 4935244;
    v53 = AAHeaderGetKeyIndex(header, v52);
    if ((v53 & 0x80000000) != 0 || ((v54 = AAHeaderGetFieldString(header, v53, 0x400uLL, size, 0), v54 <= 1) ? (v55 = 1) : (v55 = v54), v55 <= 0))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteHeader", 284, 27, 0, "no LNK");
      return 0xFFFFFFFFLL;
    }
  }

  v56 = *(v4 + 64);
  if (*(v4 + 72) >= v56)
  {
    v57 = 2 * v56;
    v58 = v56 == 0;
    v59 = 32;
    if (!v58)
    {
      v59 = v57;
    }

    *(v4 + 64) = v59;
    if ((992 * v59) >= 0x2000000001)
    {
      *__error() = 12;
LABEL_102:
      *(v4 + 80) = 0;
      v75 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteHeader", 292, 27, v75, "malloc");
      return 0xFFFFFFFFLL;
    }

    v60 = *(v4 + 80);
    v61 = realloc(v60, 992 * v59);
    if (!v61)
    {
      free(v60);
      goto LABEL_102;
    }

    *(v4 + 80) = v61;
  }

  LODWORD(offset) = -1;
  v62 = strlen(__s);
  if ((StringTableAppend(*(v4 + 32), __s, v62, &offset) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteHeader", 295, 27, 0, "string table append");
    return 0xFFFFFFFFLL;
  }

  v64 = *(v4 + 72);
  v63 = *(v4 + 80);
  *(v4 + 72) = v64 + 1;
  v65 = v63 + 992 * v64;
  if (v63)
  {
    memset_s((v63 + 992 * v64), 0x3E0uLL, 0, 0x3E0uLL);
  }

  *v65 = offset;
  *(v65 + 136) = -1;
  v66 = a1[1];
  v67 = v65 + 272 + 72 * v66;
  *v67 = value;
  *(v67 + 16) = v107;
  *(v67 + 24) = v105;
  *(v67 + 32) = v104;
  if (hash_function)
  {
    v68 = *v109;
    v69 = v65 + 272 + 72 * v66;
    *(v69 + 56) = v110;
    *(v69 + 40) = v68;
  }

  if (v7 != v26)
  {
    return 0;
  }

  v70 = *v6;
  if (*v6)
  {
    if ((v70 & 0x8000000000000000) != 0)
    {
LABEL_151:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteHeader", 315, 27, 0, "YEC blob");
      return 0xFFFFFFFFLL;
    }

    v71 = (v65 + 40);
    v72 = *(v65 + 48);
    if (v72 < v70)
    {
      do
      {
        while (!v72)
        {
          v72 = 0x4000;
          if (v70 <= 0x4000)
          {
            v74 = (v65 + 56);
            v72 = 0x4000;
            goto LABEL_105;
          }
        }

        v73 = v72 >> 1;
        if ((v72 & (v72 >> 1)) != 0)
        {
          v73 = v72 & (v72 >> 1);
        }

        v72 += v73;
      }

      while (v72 < v70);
      v74 = (v65 + 56);
      if (v72 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_150;
      }

LABEL_105:
      v76 = *v74;
      v77 = v72;
      v78 = realloc(*v74, v72);
      if (v78)
      {
        *(v65 + 48) = v77;
        *(v65 + 56) = v78;
        goto LABEL_107;
      }

      free(v76);
LABEL_150:
      *v74 = 0;
      *v71 = 0;
      *(v65 + 48) = 0;
      goto LABEL_151;
    }

LABEL_107:
    a1[3] = v71;
  }

  v79 = a1[4];
  if (v79)
  {
    if ((v79 & 0x8000000000000000) != 0)
    {
LABEL_154:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteHeader", 320, 27, 0, "XAT blob");
      return 0xFFFFFFFFLL;
    }

    v80 = (v65 + 88);
    v81 = *(v65 + 96);
    if (v81 < v79)
    {
      do
      {
        while (!v81)
        {
          v81 = 0x4000;
          if (v79 <= 0x4000)
          {
            v83 = (v65 + 104);
            v81 = 0x4000;
            goto LABEL_120;
          }
        }

        v82 = v81 >> 1;
        if ((v81 & (v81 >> 1)) != 0)
        {
          v82 = v81 & (v81 >> 1);
        }

        v81 += v82;
      }

      while (v81 < v79);
      v83 = (v65 + 104);
      if (v81 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_153;
      }

LABEL_120:
      v84 = *v83;
      v85 = realloc(*v83, v81);
      if (v85)
      {
        *(v65 + 96) = v81;
        *(v65 + 104) = v85;
        goto LABEL_122;
      }

      free(v84);
LABEL_153:
      *v83 = 0;
      *v80 = 0;
      *(v65 + 96) = 0;
      goto LABEL_154;
    }

LABEL_122:
    a1[5] = v80;
  }

  v86 = a1[6];
  if (v86)
  {
    if ((v86 & 0x8000000000000000) != 0)
    {
LABEL_158:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteHeader", 325, 27, 0, "ACL blob");
      return 0xFFFFFFFFLL;
    }

    v87 = (v65 + 112);
    v88 = *(v65 + 120);
    if (v88 < v86)
    {
      do
      {
        while (!v88)
        {
          v88 = 0x4000;
          if (v86 <= 0x4000)
          {
            v90 = (v65 + 128);
            v88 = 0x4000;
            goto LABEL_135;
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
      v90 = (v65 + 128);
      if (v88 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_157;
      }

LABEL_135:
      v91 = *v90;
      v92 = realloc(*v90, v88);
      if (v92)
      {
        *(v65 + 120) = v88;
        *(v65 + 128) = v92;
        goto LABEL_137;
      }

      free(v91);
LABEL_157:
      *v90 = 0;
      *v87 = 0;
      *(v65 + 120) = 0;
      goto LABEL_158;
    }

LABEL_137:
    a1[7] = v87;
  }

  if (value == 76)
  {
    v93 = strlen(size) + 1;
    v95 = (v65 + 64);
    v94 = *(v65 + 64);
    v96 = v94 + v93;
    if (__CFADD__(v94, v93) || (v96 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v97 = *(v65 + 72);
    if (v97 < v96)
    {
      do
      {
        while (!v97)
        {
          v97 = 0x4000;
          if (v96 <= 0x4000)
          {
            v99 = (v65 + 80);
            v97 = 0x4000;
            goto LABEL_161;
          }
        }

        v98 = v97 >> 1;
        if ((v97 & (v97 >> 1)) != 0)
        {
          v98 = v97 & (v97 >> 1);
        }

        v97 += v98;
      }

      while (v97 < v96);
      v99 = (v65 + 80);
      if (v97 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_168;
      }

LABEL_161:
      v101 = *v99;
      v100 = realloc(*v99, v97);
      if (v100)
      {
        *(v65 + 72) = v97;
        *(v65 + 80) = v100;
        v94 = *(v65 + 64);
        goto LABEL_163;
      }

      free(v101);
LABEL_168:
      *v99 = 0;
      *v95 = 0;
      *(v65 + 72) = 0;
      goto LABEL_169;
    }

    v100 = *(v65 + 80);
LABEL_163:
    memcpy(&v100[v94], size, v93);
    *v95 += v93;
    if ((v93 & 0x8000000000000000) != 0)
    {
LABEL_169:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteHeader", 331, 27, 0, "LNK blob");
      return 0xFFFFFFFFLL;
    }
  }

  if ((aaEntryAttributesInitWithHeader((v65 + 144), (v65 + 216), 0, header) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetGenerate.c", "stateCollectorStreamWriteHeader", 333, 27, 0, "attributes from header");
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(v65 + 136) = v106;
  return result;
}