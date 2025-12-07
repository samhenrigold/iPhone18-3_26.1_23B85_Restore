int AEAEncryptionOutputStreamCloseAndUpdateContext(AAByteStream stream, AEAContext context)
{
  if (stream)
  {
    v2 = stream;
    if (*(stream + 1) == aeaOutputStreamClose)
    {
      v3 = *stream;
      *v2 = 0;
      updated = aeaOutputStreamCloseAndUpdateContext(v3, context);
      free(v2);
      LODWORD(stream) = updated;
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamCloseAndUpdateContext", 534, 41, 0, "Invalid stream type");
      LODWORD(stream) = -1;
    }
  }

  return stream;
}

uint64_t aeaOutputStreamCloseAndUpdateContext(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 48);
  if (v4 && (v5 = *(result + 16), v5))
  {
    v6 = 0;
    do
    {
      if (*v4)
      {
        ++v6;
      }

      v4 += 119;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if ((aeaOutputStreamRunCurrentWorker(result) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamCloseAndUpdateContext", 207, 41, 0, "Sending task to worker");
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v22 = a2;
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if (pthread_mutex_lock((v3 + 80)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_20:
        v10 = -1;
      }

      else
      {
        while (1)
        {
          v9 = *(v3 + 64);
          if (v9)
          {
            break;
          }

          if (pthread_cond_wait((v3 + 144), (v3 + 80)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
            goto LABEL_20;
          }
        }

        v13 = v9 - 1;
        *(v3 + 64) = v13;
        v10 = *(*(v3 + 72) + 4 * v13);
        if (!pthread_mutex_unlock((v3 + 80)))
        {
          goto LABEL_22;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamCloseAndUpdateContext", 213, 41, 0, "SharedArrayPop");
      v7 = 0;
LABEL_22:
      v11 = *(v3 + 48) + 952 * v10;
      memset_s((v11 + 48), 0x220uLL, 0, 0x220uLL);
      *(v11 + 48) = -1;
      if (pthread_mutex_lock((v11 + 600)) || (v12 = *(v11 + 592), *(v11 + 592) = v12 + 1, !v12) && pthread_cond_broadcast((v11 + 664)) || pthread_mutex_unlock((v11 + 600)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamCloseAndUpdateContext", 217, 41, 0, "SemRelease");
        v7 = 0;
      }

      joinThread(*v11);
      free(*(v11 + 32));
      free(*(v11 + 40));
      free(*(v11 + 24));
      if (!pthread_mutex_destroy((v11 + 600)))
      {
        pthread_cond_destroy((v11 + 664));
      }

      if (!pthread_mutex_destroy((v11 + 720)))
      {
        pthread_cond_destroy((v11 + 784));
      }

      if (!pthread_mutex_destroy((v11 + 840)))
      {
        pthread_cond_destroy((v11 + 904));
      }
    }
  }

  v14 = *(v3 + 320);
  if (v14)
  {
    v15 = v22;
    if (*v14)
    {
      if ((SharedArrayEnqueue((v3 + 192), -1) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamCloseAndUpdateContext", 230, 41, 0, "SharedArrayEnqueue");
        v7 = 0;
      }

      joinThread(**(v3 + 320));
    }
  }

  else
  {
    v15 = v22;
  }

  result = *(v3 + 24);
  if (result && (result = aeaContainerFinish(result, *v3), (result & 0x80000000) != 0))
  {
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamCloseAndUpdateContext", 235, 41, 0, "finishing container");
    v7 = 0;
    if (v15)
    {
      goto LABEL_46;
    }
  }

  else if (v15)
  {
LABEL_46:
    v16 = *(v3 + 24);
    *v15 = *v16;
    v17 = *(v16 + 16);
    v18 = *(v16 + 32);
    v19 = *(v16 + 48);
    *(v15 + 64) = *(v16 + 64);
    *(v15 + 32) = v18;
    *(v15 + 48) = v19;
    *(v15 + 16) = v17;
    v20 = *(v3 + 24);
    v21 = *(v20 + 1448);
    if (v21 >= 0x101)
    {
      __break(1u);
      return result;
    }

    memcpy((v15 + 1896), (v20 + 1452), *(v20 + 1448));
    *(v15 + 1892) = v21;
    memset_s((v15 + 1896 + v21), 256 - v21, 0, 256 - v21);
  }

  if (!pthread_mutex_destroy((v3 + 80)) && !pthread_cond_destroy((v3 + 144)))
  {
    free(*(v3 + 72));
  }

  if (!pthread_mutex_destroy((v3 + 208)) && !pthread_cond_destroy((v3 + 272)))
  {
    free(*(v3 + 200));
  }

  free(*(v3 + 48));
  free(*(v3 + 320));
  aeaContainerDestroy(*(v3 + 24));
  memset_s(v3, 0x148uLL, 0, 0x148uLL);
  free(v3);
  if (v7)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t aeaOutputStreamRunCurrentWorker(uint64_t a1)
{
  v5 = *(a1 + 56);
  if (v5 == -1)
  {
    return 0;
  }

  v12 = v2;
  v13 = v1;
  v7 = *(a1 + 48);
  if (!v7)
  {
    return 0;
  }

  v8 = v7 + 952 * v5;
  if (pthread_mutex_lock((v8 + 600)) || (v9 = *(v8 + 592), *(v8 + 592) = v9 + 1, !v9) && pthread_cond_broadcast((v8 + 664)) || pthread_mutex_unlock((v8 + 600)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamRunCurrentWorker", 188, 41, 0, "SemRelease", v12, v13, v3, v4);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  if ((SharedArrayEnqueue((a1 + 192), *(a1 + 56)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamRunCurrentWorker", 189, 41, 0, "SharedArrayEnqueue");
    v10 = 0;
  }

  *(a1 + 56) = -1;
  if (v10)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t SharedArrayEnqueue(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayEnqueue", 157, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
  }

  else
  {
    v4 = *a1;
    v5 = a1[1];
    if (v4 >= v5)
    {
      v6 = *a1;
    }

    else
    {
      if (v4)
      {
        memmove((*(a1 + 1) + 4), *(a1 + 1), 4 * v4);
      }

      **(a1 + 1) = a2;
      v6 = *a1;
    }

    *a1 = v6 + 1;
    if (v6 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayEnqueue", 168, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
      }

      else
      {
        if (v4 < v5)
        {
          return 0;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayEnqueue", 169, 0, "SharedArrayPush: stack is full\n");
      }
    }

    else
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayEnqueue", 166, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
    }
  }

  return 0xFFFFFFFFLL;
}

ssize_t AAArchiveStreamProcess(AAArchiveStream istream, AAArchiveStream ostream, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v35 = *MEMORY[0x29EDCA608];
  v32 = 0;
  header = 0;
  __s = 0;
  v10 = malloc(0x40000uLL);
  if (!v10)
  {
    v29 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStreamProcess.c", "AAArchiveStreamProcess", 24, 16, v29, "malloc");
LABEL_32:
    v12 = -1;
    goto LABEL_33;
  }

  v11 = AAArchiveStreamReadHeader(istream, &header);
  if (v11 < 0)
  {
LABEL_27:
    AAArchiveStreamCancel(ostream);
    v27 = "archive stream read error (header)";
    v28 = 32;
LABEL_31:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStreamProcess.c", "AAArchiveStreamProcess", v28, 16, 0, v27);
    goto LABEL_32;
  }

  v12 = 0;
  while (v11)
  {
    if (!msg_proc)
    {
      goto LABEL_39;
    }

    v13 = header;
    v14.ikey = 5521744;
    KeyIndex = AAHeaderGetKeyIndex(header, v14);
    if ((KeyIndex & 0x80000000) != 0)
    {
      goto LABEL_39;
    }

    FieldString = AAHeaderGetFieldString(v13, KeyIndex, 0x400uLL, value, 0);
    v17 = FieldString <= 1 ? 1 : FieldString;
    if (v17 < 1)
    {
      goto LABEL_39;
    }

    v18 = (msg_proc)(msg_data, 50, value, header);
    if (v18 < 0)
    {
      v27 = "callback cancel";
      v28 = 45;
      goto LABEL_31;
    }

    if (!v18)
    {
LABEL_39:
      if ((aaHeaderBlobArrayInitWithHeader(&__s, header) & 0x80000000) != 0)
      {
        v27 = "capturing non-empty blobs";
        v28 = 55;
        goto LABEL_31;
      }

      if (AAArchiveStreamWriteHeader(ostream, header) < 0)
      {
        AAArchiveStreamCancel(istream);
        v27 = "archive stream write error (header)";
        v28 = 61;
        goto LABEL_31;
      }

      ++v12;
      v19 = __s;
      if (__s)
      {
        v20 = 0;
        while (1)
        {
          v21 = v32 + 24 * v20;
          v22 = *(v21 + 1);
          if (v22)
          {
            break;
          }

LABEL_25:
          if (++v20 >= v19)
          {
            goto LABEL_26;
          }
        }

        while (1)
        {
          if (v22 >= 0x40000)
          {
            v23 = 0x40000;
          }

          else
          {
            v23 = v22;
          }

          v24 = *v21;
          if (AAArchiveStreamReadBlob(istream, v24, v10, v23) < 0)
          {
            AAArchiveStreamCancel(ostream);
            v27 = "archive stream read error (blob)";
            v28 = 75;
            goto LABEL_31;
          }

          v25 = *v21;
          if (AAArchiveStreamWriteBlob(ostream, v25, v10, v23) < 0)
          {
            break;
          }

          v26 = *(v21 + 1);
          v22 = v26 - v23;
          *(v21 + 1) = v26 - v23;
          if (v26 == v23)
          {
            v19 = __s;
            goto LABEL_25;
          }
        }

        AAArchiveStreamCancel(istream);
        v27 = "archive stream write error (blob)";
        v28 = 80;
        goto LABEL_31;
      }
    }

LABEL_26:
    v11 = AAArchiveStreamReadHeader(istream, &header);
    if (v11 < 0)
    {
      goto LABEL_27;
    }
  }

LABEL_33:
  AAHeaderDestroy(header);
  free(v32);
  memset_s(&__s, 0x10uLL, 0, 0x10uLL);
  free(v10);
  return v12;
}

uint64_t treeDeleteRangeWithPoint(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 < 0)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = (v6 + 56 * v3);
  if (*v7 > a3)
  {
    if ((treeDeleteRangeWithPoint(a1, v7 + 3, a3) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 456, 107, 0, "treeDelete: %zd");
      return 0xFFFFFFFFLL;
    }

    goto LABEL_30;
  }

  if (v7[1] <= a3)
  {
    if ((treeDeleteRangeWithPoint(a1, v7 + 4, a3) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 463, 107, 0, "treeDelete: %zd");
      return 0xFFFFFFFFLL;
    }

    goto LABEL_30;
  }

  v8 = v7[3];
  v9 = v7[4];
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (v9 < 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v6 + 56 * v9 + 48);
    }

    v11 = *(v6 + 56 * v8 + 48);
LABEL_15:
    if (v10 >= v11)
    {
      v12 = (v6 + 56 * v3 + 32);
      if ((v9 & 0x8000000000000000) == 0)
      {
        do
        {
          v13 = v9;
          v9 = *(v6 + 56 * v9 + 24);
        }

        while ((v9 & 0x8000000000000000) == 0);
LABEL_29:
        v17 = *(v6 + 56 * v13);
        *v7 = v17;
        if ((treeDeleteRangeWithPoint(a1, v12, v17) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 493, 107, 0, "treeDelete: %zd");
          return 0xFFFFFFFFLL;
        }

LABEL_30:
        v18 = *(a1 + 8);
        v19 = v18 + 56 * v3;
        v20 = *(v19 + 24);
        if (v20 < 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = *(v18 + 56 * v20 + 48);
        }

        v22 = *(v19 + 32);
        if (v22 < 0)
        {
          v23 = 0;
        }

        else
        {
          v23 = *(v18 + 56 * v22 + 48);
        }

        if (v23 > v21)
        {
          v21 = v23;
        }

        *(v19 + 48) = v21 + 1;
        if (v20 < 0)
        {
          v24 = 0;
        }

        else
        {
          v24 = *(v18 + 56 * v20 + 40);
        }

        v25 = *(v19 + 8) - *v19 + v24;
        if (v22 < 0)
        {
          v26 = 0;
        }

        else
        {
          v26 = *(v18 + 56 * v22 + 40);
        }

        *(v19 + 40) = v25 + v26;
        if ((treeRebalance(a1, a2) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 499, 107, 0, "treeRebalance: %zd");
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      v16 = v3;
      while (1)
      {
        v13 = *(v6 + 56 * v16 + 16);
        if (v13 < 0)
        {
          break;
        }

        v15 = *(v6 + 56 * v13 + 32) == v16;
        v16 = *(v6 + 56 * v16 + 16);
        if (!v15)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v12 = (v6 + 56 * v3 + 24);
      if ((v8 & 0x8000000000000000) == 0)
      {
        do
        {
          v13 = v8;
          v8 = *(v6 + 56 * v8 + 32);
        }

        while ((v8 & 0x8000000000000000) == 0);
        goto LABEL_29;
      }

      v14 = v3;
      while (1)
      {
        v13 = *(v6 + 56 * v14 + 16);
        if (v13 < 0)
        {
          break;
        }

        v15 = *(v6 + 56 * v13 + 24) == v14;
        v14 = *(v6 + 56 * v14 + 16);
        if (!v15)
        {
          goto LABEL_29;
        }
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 490, 107, 0, "no nodePrev/Next: %zd");
    return 0xFFFFFFFFLL;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v10 = *(v6 + 56 * v9 + 48);
    goto LABEL_15;
  }

  result = 0;
  *(v6 + 56 * v3 + 16) = *(a1 + 24);
  *(a1 + 24) = v3;
  *a2 = -1;
  return result;
}

uint64_t treeRebalance(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v24 = v2;
  if (v2 < 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = v5 + 56 * v2;
  v7 = *(v6 + 32);
  v8 = v7 < 0 ? 0 : *(v5 + 56 * v7 + 48);
  v9 = *(v6 + 24);
  v10 = v9 < 0 ? 0 : *(v5 + 56 * v9 + 48);
  v11 = v8 - v10;
  if ((v11 + 1) < 3)
  {
    return 0;
  }

  if (v11 == -2)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      v16 = v5 + 56 * v9;
      v17 = *(v16 + 32);
      v18 = v17 < 0 ? 0 : *(v5 + 56 * v17 + 48);
      v21 = *(v16 + 24);
      v22 = v21 < 0 ? 0 : *(v5 + 56 * v21 + 48);
      if (v18 > v22)
      {
        v23 = v9;
        if ((treeRotateLeft(a1, &v23) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 360, 107, 0, "treeRotateLeft %zd");
          return 0xFFFFFFFFLL;
        }

        *(*(a1 + 8) + 56 * v2 + 24) = v23;
      }
    }

    if ((treeRotateRight(a1, &v24) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 364, 107, 0, "treeRotateRight %zd");
      return 0xFFFFFFFFLL;
    }

    goto LABEL_36;
  }

  if (v11 == 2)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v13 = v5 + 56 * v7;
      v14 = *(v13 + 32);
      v15 = v14 < 0 ? 0 : *(v5 + 56 * v14 + 48);
      v19 = *(v13 + 24);
      v20 = v19 < 0 ? 0 : *(v5 + 56 * v19 + 48);
      if (v15 < v20)
      {
        v23 = v7;
        if ((treeRotateRight(a1, &v23) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 347, 107, 0, "treeRotateRight %zd");
          return 0xFFFFFFFFLL;
        }

        *(*(a1 + 8) + 56 * v2 + 32) = v23;
      }
    }

    if ((treeRotateLeft(a1, &v24) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 351, 107, 0, "treeRotateRight %zd");
      return 0xFFFFFFFFLL;
    }

LABEL_36:
    result = 0;
    *a2 = v24;
    return result;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 366, 107, 0, "invalid imbalance: %d");
  return 0xFFFFFFFFLL;
}

uint64_t treeSub(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 2);
  v3 = a1[2];
  if (v3 < 0)
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
      v8 = (a1[1] + 56 * v3);
      v9 = *v8;
      if (*v8 >= a3)
      {
        v11 = 3;
        goto LABEL_6;
      }

      v10 = v8[1];
      if (v10 > a2)
      {
        break;
      }

      v11 = 4;
LABEL_6:
      v3 = v8[v11];
      if (v3 < 0)
      {
        return 0;
      }
    }

    if (v9 >= a2 && v10 <= a3)
    {
      break;
    }

    if (v9 >= a2)
    {
      *v8 = a3;
    }

    else
    {
      v8[1] = a2;
      if (v10 > a3 && (treeAdd(a1, -1, v4, a3, v10) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeSub", 538, 107, 0, "treeAdd");
        return 0xFFFFFFFFLL;
      }
    }

LABEL_19:
    result = 0;
    v3 = *v4;
    if (*v4 < 0)
    {
      return result;
    }
  }

  if ((treeDeleteRangeWithPoint(a1, v4, v9) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeSub", 525, 107, 0, "treeDeleteRangeWithPoint");
  return 0xFFFFFFFFLL;
}

uint64_t treeAdd(unint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5)
{
  v5 = a5 - a4;
  if (a5 <= a4)
  {
    return 0;
  }

  v10 = *a3;
  v43 = v10;
  if (v10 < 0)
  {
    v10 = a1[3];
    if ((v10 & 0x8000000000000000) == 0)
    {
      v12 = a1[1];
      goto LABEL_5;
    }

    if (*a1)
    {
      v36 = 2 * *a1;
    }

    else
    {
      v36 = 32;
    }

    if (56 * v36 < 0x2000000001)
    {
      v37 = a1[1];
      v12 = realloc(v37, 56 * v36);
      if (v12)
      {
        a1[1] = v12;
        v38 = *a1;
        if (*a1 >= v36)
        {
          v10 = -1;
        }

        else
        {
          v39 = &v12[56 * v38 + 16];
          v40 = -1;
          do
          {
            *v39 = v40;
            v39 += 7;
            v40 = v38++;
          }

          while (v36 != v38);
          v10 = v38 - 1;
        }

        *a1 = v36;
LABEL_5:
        v13 = &v12[56 * v10];
        a1[3] = *(v13 + 2);
        *(v13 + 2) = a2;
        *(v13 + 3) = -1;
        *v13 = a4;
        *(v13 + 1) = a5;
        *(v13 + 12) = 1;
        *(v13 + 4) = -1;
        *(v13 + 5) = v5;
        v43 = v10;
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_73:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 391, 107, 0, "nodeAlloc");
        return 0xFFFFFFFFLL;
      }

      free(v37);
    }

    else
    {
      *__error() = 12;
    }

    a1[1] = 0;
    v41 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "nodeAlloc", 43, 107, *v41, "malloc");
    goto LABEL_73;
  }

LABEL_6:
  v14 = a1[1];
  v15 = (v14 + 56 * v10);
  v16 = *v15;
  v17 = v15[3];
  if (v17 < 0)
  {
    v20 = 0x8000000000000000;
  }

  else
  {
    v18 = v15[3];
    do
    {
      v19 = v14 + 56 * v18;
      v18 = *(v19 + 32);
    }

    while ((v18 & 0x8000000000000000) == 0);
    v20 = *(v19 + 8);
  }

  if (v16 > a4 && v16 <= a5 && v20 < v16)
  {
    if (a4 <= v20)
    {
      v16 = v20;
    }

    else
    {
      v16 = a4;
    }

    *v15 = v16;
  }

  v22 = v15[1];
  v23 = *(v14 + 56 * v10 + 32);
  if (v23 < 0)
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    do
    {
      v24 = (v14 + 56 * v23);
      v23 = v24[3];
    }

    while ((v23 & 0x8000000000000000) == 0);
    v25 = *v24;
  }

  if (v22 < a5 && v22 >= a4 && v25 > v22)
  {
    if (v25 >= a5)
    {
      v22 = a5;
    }

    else
    {
      v22 = v25;
    }

    *(v14 + 56 * v10 + 8) = v22;
  }

  if (v16 > a4)
  {
    if (v16 >= a5)
    {
      v26 = a5;
    }

    else
    {
      v26 = v16;
    }

    v42 = v17;
    if ((treeAdd(a1, v10, &v42, a4, v26) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 418, 107, 0, "treeAdd: %zd");
      return 0xFFFFFFFFLL;
    }

    v14 = a1[1];
    *(v14 + 56 * v10 + 24) = v42;
  }

  if (v22 < a5)
  {
    if (v22 <= a4)
    {
      v27 = a4;
    }

    else
    {
      v27 = v22;
    }

    v42 = *(v14 + 56 * v10 + 32);
    if ((treeAdd(a1, v10, &v42, v27, a5) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 428, 107, 0, "treeAdd: %zd");
      return 0xFFFFFFFFLL;
    }

    v14 = a1[1];
    *(v14 + 56 * v10 + 32) = v42;
  }

  v28 = v14 + 56 * v10;
  v29 = *(v28 + 24);
  if (v29 < 0)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(v14 + 56 * v29 + 48);
  }

  v31 = *(v28 + 32);
  if (v31 < 0)
  {
    v32 = 0;
  }

  else
  {
    v32 = *(v14 + 56 * v31 + 48);
  }

  if (v32 > v30)
  {
    v30 = v32;
  }

  *(v28 + 48) = v30 + 1;
  if (v29 < 0)
  {
    v33 = 0;
  }

  else
  {
    v33 = *(v14 + 56 * v29 + 40);
  }

  v34 = *(v28 + 8) - *v28 + v33;
  if (v31 < 0)
  {
    v35 = 0;
  }

  else
  {
    v35 = *(v14 + 56 * v31 + 40);
  }

  *(v28 + 40) = v34 + v35;
  if ((treeRebalance(a1, &v43) & 0x80000000) == 0)
  {
    result = 0;
    *a3 = v43;
    return result;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 434, 107, 0, "treeRebalance: %zd");
  return 0xFFFFFFFFLL;
}

void *AAByteRangeCreate()
{
  v0 = malloc(0x20uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x20uLL, 0, 0x20uLL);
    v1[2] = -1;
    v1[3] = -1;
  }

  else
  {
    v2 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeCreate", 551, 107, *v2, "malloc");
    AAByteRangeDestroy(0);
  }

  return v1;
}

void AAByteRangeDestroy(void **a1)
{
  if (a1)
  {
    free(a1[1]);

    free(a1);
  }
}

void *AAByteRangeClone(uint64_t a1)
{
  v2 = malloc(0x20uLL);
  v3 = v2;
  if (!v2)
  {
    v6 = 563;
    goto LABEL_10;
  }

  memset_s(v2, 0x20uLL, 0, 0x20uLL);
  v3[2] = -1;
  v3[3] = -1;
  if ((*(a1 + 16) & 0x8000000000000000) == 0)
  {
    v4 = *a1;
    if (is_mul_ok(*a1, 0x38uLL) && 56 * v4 < 0x2000000001)
    {
      v5 = calloc(v4, 0x38uLL);
      v3[1] = v5;
      if (v5)
      {
        memcpy(v5, *(a1 + 8), 56 * *a1);
        *v3 = *a1;
        *(v3 + 1) = *(a1 + 16);
        return v3;
      }
    }

    else
    {
      *__error() = 12;
      v3[1] = 0;
    }

    v6 = 570;
LABEL_10:
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeClone", v6, 107, *v7, "malloc");
    AAByteRangeDestroy(v3);
    return 0;
  }

  return v3;
}

uint64_t AAByteRangeAdd(uint64_t a1, int64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  if (a2 <= a3)
  {
    if ((treeAdd(a1, -1, (a1 + 16), a2, a3) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeAdd", 595, 107, 0, "addSegment");
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeAdd", 593, 107, 0, "Invalid segment bounds");
  return 0xFFFFFFFFLL;
}

uint64_t AAByteRangeSub(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  if (a2 <= a3)
  {
    if ((a1[2] & 0x8000000000000000) != 0 || (treeSub(a1, a2, a3) & 0x80000000) == 0)
    {
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeSub", 612, 107, 0, "subSegment");
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeSub", 609, 107, 0, "Invalid segment bounds");
  }

  return 0xFFFFFFFFLL;
}

uint64_t AAByteRangeSizeAtOffset(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 < 0)
  {
    return 0;
  }

  result = 0;
  v5 = *(a1 + 8);
  while (1)
  {
    v6 = (v5 + 56 * v2);
    v7 = v6 + 3;
    if (a2 > *v6)
    {
      break;
    }

LABEL_9:
    v2 = *v7;
    if (*v7 < 0)
    {
      return result;
    }
  }

  v8 = *v7;
  if (v8 < 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v5 + 56 * v8 + 40);
  }

  v10 = v9 + result;
  v11 = v6[1];
  if (v11 < a2)
  {
    result = v11 - *v6 + v10;
    v7 = v6 + 4;
    goto LABEL_9;
  }

  return a2 - *v6 + v10;
}

uint64_t AAByteRangeOffsetAtSize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = *(a1 + 8);
    do
    {
      v4 = (v3 + 56 * v2);
      if (a2 > v4[5])
      {
        break;
      }

      v2 = v4[3];
      if (v2 < 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(v3 + 56 * v2 + 40);
      }

      v6 = __OFSUB__(a2, v5);
      v7 = a2 - v5;
      if (!((v7 < 0) ^ v6 | (v7 == 0)))
      {
        v8 = v4[1] - *v4;
        a2 = v7 - v8;
        if (v7 <= v8)
        {
          return *v4 + v7;
        }

        v2 = v4[4];
      }
    }

    while ((v2 & 0x8000000000000000) == 0);
  }

  return -1;
}

uint64_t AAByteRangeFirst(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  First = findFirst(a1, *(a1 + 16), a2);
  if (First < 0)
  {
    return -1;
  }

  v8 = First;
  v9 = *(a1 + 8);
  v10 = *(v9 + 56 * First);
  while (1)
  {
    result = v8;
    v12 = v9 + 56 * v8;
    v13 = *(v12 + 8);
    v14 = *(v12 + 32);
    v15 = result;
    if (v14 < 0)
    {
      break;
    }

    do
    {
      v8 = v14;
      v14 = *(v9 + 56 * v14 + 24);
    }

    while ((v14 & 0x8000000000000000) == 0);
LABEL_8:
    if (*(v9 + 56 * v8) != v13)
    {
      goto LABEL_9;
    }
  }

  while (1)
  {
    v8 = *(v9 + 56 * v15 + 16);
    if (v8 < 0)
    {
      break;
    }

    v16 = *(v9 + 56 * v8 + 32) == v15;
    v15 = *(v9 + 56 * v15 + 16);
    if (!v16)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  *a3 = v10;
  *a4 = v13;
  return result;
}

uint64_t findFirst(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    return -1;
  }

  v4 = a2;
  v6 = *(a1 + 8);
  while (1)
  {
    v7 = (v6 + 56 * v4);
    if (*v7 > a3)
    {
      First = findFirst(a1, v7[3], a3);
      if ((First & 0x8000000000000000) == 0)
      {
        break;
      }
    }

    if (v7[1] > a3)
    {
      return v4;
    }

    v4 = v7[4];
    if (v4 < 0)
    {
      return -1;
    }
  }

  return First;
}

uint64_t AAByteRangeNext(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2 < 0)
  {
    return -1;
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 56 * a2 + 32);
  if (v5 < 0)
  {
    while (1)
    {
      result = *(v4 + 56 * a2 + 16);
      if (result < 0)
      {
        break;
      }

      v7 = *(v4 + 56 * result + 32) == a2;
      a2 = *(v4 + 56 * a2 + 16);
      if (!v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    do
    {
      result = v5;
      v5 = *(v4 + 56 * v5 + 24);
    }

    while ((v5 & 0x8000000000000000) == 0);
LABEL_9:
    v8 = (v4 + 56 * result);
    *a3 = *v8;
    *a4 = v8[1];
  }

  return result;
}

uint64_t treeRotateRight(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  v4 = v3 + 56 * v2;
  v5 = *(v4 + 24);
  if (v5 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v3 + 56 * v5;
  v7 = *(v6 + 32);
  *(v6 + 32) = v2;
  *(v6 + 16) = *(v4 + 16);
  *(v4 + 16) = v5;
  *(v4 + 24) = v7;
  if (v7 < 0)
  {
    v9 = 0;
  }

  else
  {
    v8 = v3 + 56 * v7;
    *(v8 + 16) = v2;
    v9 = *(v8 + 48);
  }

  v11 = *(v4 + 32);
  if (v11 < 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v3 + 56 * v11 + 48);
  }

  if (v12 > v9)
  {
    v9 = v12;
  }

  v13 = v9 + 1;
  *(v4 + 48) = v13;
  if (v7 < 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v3 + 56 * v7 + 40);
  }

  v15 = *(v4 + 8) - *v4 + v14;
  if (v11 < 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v3 + 56 * v11 + 40);
  }

  v17 = v15 + v16;
  *(v4 + 40) = v17;
  v18 = *(v6 + 24);
  if (v18 < 0)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(v3 + 56 * v18 + 48);
  }

  if (v13 <= v19)
  {
    v13 = v19;
  }

  *(v6 + 48) = v13 + 1;
  if (v18 < 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v3 + 56 * v18 + 40);
  }

  result = 0;
  *(v6 + 40) = *(v6 + 8) - *v6 + v20 + v17;
  *a2 = v5;
  return result;
}

uint64_t treeRotateLeft(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  v4 = v3 + 56 * v2;
  v5 = *(v4 + 32);
  if (v5 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v3 + 56 * v5;
  v7 = *(v6 + 24);
  *(v6 + 16) = *(v4 + 16);
  *(v6 + 24) = v2;
  *(v4 + 16) = v5;
  *(v4 + 32) = v7;
  if ((v7 & 0x8000000000000000) == 0)
  {
    *(v3 + 56 * v7 + 16) = v2;
  }

  v8 = *(v4 + 24);
  if (v8 < 0)
  {
    v9 = 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = *(v3 + 56 * v8 + 48);
  if (v7 < 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = *(v3 + 56 * v7 + 48);
LABEL_11:
  if (v10 > v9)
  {
    v9 = v10;
  }

  v12 = v9 + 1;
  *(v4 + 48) = v12;
  if (v8 < 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v3 + 56 * v8 + 40);
  }

  v14 = *(v4 + 8) - *v4 + v13;
  if (v7 < 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v3 + 56 * v7 + 40);
  }

  v16 = v14 + v15;
  *(v4 + 40) = v16;
  v17 = *(v6 + 32);
  if (v17 < 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v3 + 56 * v17 + 48);
  }

  if (v18 > v12)
  {
    v12 = v18;
  }

  *(v6 + 48) = v12 + 1;
  v19 = *(v6 + 8) - *v6 + v16;
  if (v17 < 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v3 + 56 * v17 + 40);
  }

  result = 0;
  *(v6 + 40) = v19 + v20;
  *a2 = v5;
  return result;
}

void *aaArchiveFileOutputStreamOpenAt(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, __int16 a7)
{
  LODWORD(v8) = a6;
  v10 = a4;
  v14 = calloc(1uLL, 0x68uLL);
  v15 = malloc(0x80uLL);
  v16 = v15;
  if (v15)
  {
    memset_s(v15, 0x80uLL, 0, 0x80uLL);
    if (v14)
    {
      *v16 = -1;
      if ((a7 & 0x100) == 0)
      {
        if (a1 < 0)
        {
          unlink(a2);
        }

        else
        {
          unlinkat(a1, a2, 0);
        }
      }

      if (a7)
      {
        v8 = 4;
      }

      else
      {
        v8 = v8;
      }

      if (v8 < 1)
      {
        v22 = *v16;
        if (*v16 < 0)
        {
          v22 = a1 < 0 ? open(a2, 1793, 420) : openat(a1, a2, 1793, 420);
          *v16 = v22;
          if (v22 < 0)
          {
            v17 = *__error();
            v34 = a2;
            v18 = "%s";
            v19 = 363;
            goto LABEL_7;
          }
        }
      }

      else if (a1 < 0)
      {
        v22 = open_dprotected_np(a2, 1793, v8, 0, 420);
        *v16 = v22;
        if (v22 < 0)
        {
LABEL_23:
          v17 = *__error();
          v34 = a2;
          v18 = "%s";
          v19 = 354;
          goto LABEL_7;
        }
      }

      else
      {
        v21 = openat(a1, a2, 1793, 420);
        *v16 = v21;
        if (v21 < 0)
        {
          goto LABEL_23;
        }

        if (fcntl(v21, 64, v8) < 0)
        {
          v17 = *__error();
          v18 = "fcntl F_SETPROTECTIONCLASS";
          v19 = 352;
          goto LABEL_7;
        }

        v22 = *v16;
        if (*v16 < 0)
        {
          goto LABEL_23;
        }
      }

      if ((a7 & 8) != 0 && fcntl(v22, 48, 1))
      {
        v23 = __error();
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAt", 371, 67, "Warning: F_NOCACHE failed with error %d: %s\n", *v23, a2);
      }

      if ((a7 & 2) != 0 && fcntl(*v16, 68, 1) == -1)
      {
        v24 = __error();
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAt", 380, 67, "Warning: F_SETSTATICCONTENT failed with error %d: %s\n", *v24, a2);
      }

      if (a3 > 0)
      {
        if (v10 != -1 && (a7 & 4) != 0)
        {
          v25 = AAAFSCStreamOpen(*v16, a3, v10, a5);
          *(v16 + 5) = v25;
          if (!v25)
          {
            v34 = a2;
            v18 = "ParallelCompressionAFSCStreamOpen failed: %s";
            v19 = 389;
            goto LABEL_61;
          }
        }

        if ((a7 & 0x40) != 0 && !*(v16 + 5))
        {
          v26 = fpathconf(*v16, 27);
          if (v26 >= 1)
          {
            v16[22] = 1;
            if (v26 == 4096)
            {
              *(v16 + 12) = 4096;
            }

            else
            {
              v27 = 0x10000;
              if (v26 < 0x10000)
              {
                v27 = v26;
              }

              v28 = 1024;
              do
              {
                v29 = v28;
                v28 *= 2;
              }

              while (v29 < v27);
              *(v16 + 12) = v29;
            }
          }
        }
      }

      *(v16 + 2) = a3;
      *(v16 + 7) = 0x40000;
      if (*(v16 + 5))
      {
        goto LABEL_59;
      }

      v30 = *(v16 + 9);
      if (v30 >> 18)
      {
        goto LABEL_59;
      }

      do
      {
        v31 = (v30 >> 1) + v30;
        if (((v30 >> 1) & v30) != 0)
        {
          v31 = ((v30 >> 1) & v30) + v30;
        }

        if (v30)
        {
          v30 = v31;
        }

        else
        {
          v30 = 0x4000;
        }
      }

      while (v30 < 0x40000);
      v32 = *(v16 + 10);
      v33 = realloc(v32, v30);
      if (v33)
      {
        *(v16 + 9) = v30;
        *(v16 + 10) = v33;
LABEL_59:
        *v14 = v16;
        v14[1] = afStreamClose;
        v14[7] = afStreamCancel;
        v14[3] = afStreamWrite;
        v14[12] = afStreamCloseWithState;
        return v14;
      }

      free(v32);
      *(v16 + 8) = 0;
      *(v16 + 9) = 0;
      *(v16 + 10) = 0;
      v18 = "alloc blob";
      v19 = 434;
LABEL_61:
      v17 = 0;
      goto LABEL_7;
    }
  }

  v17 = *__error();
  v18 = "malloc";
  v19 = 329;
LABEL_7:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAt", v19, 67, v17, v18, v34);
  afStreamClose(v16);
  free(v14);
  return 0;
}

uint64_t afStreamClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 48));
    v3 = v2 == 0;
    if (AAByteStreamClose(*(result + 40)) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamClose", 197, 67, 0, "closing AFSC stream");
      v3 = 0;
    }

    if (*(v1 + 120) && *(v1 + 104))
    {
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v6 = (*(v1 + 120) + v4);
        v11 = 0;
        v12 = 0;
        v10 = 0;
        v7 = *v6;
        v8 = v6[1] - *v6;
        v11 = v7;
        v12 = v8;
        if (fcntl(*v1, 99, &v10) < 0)
        {
          break;
        }

        ++v5;
        v4 += 16;
        if (v5 >= *(v1 + 104))
        {
          goto LABEL_11;
        }
      }

      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamClose", 209, 67, "F_PUNCHHOLE failed");
    }

LABEL_11:
    if ((*(v1 + 8) & 0x10) != 0 && fcntl(*v1, 51, 0) == -1)
    {
      v9 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamClose", 218, 67, *v9, "Final FULLFSYNC");
    }

    if ((*v1 & 0x80000000) == 0 && !*(v1 + 4))
    {
      close(*v1);
    }

    free(*(v1 + 80));
    memset_s((v1 + 64), 0x18uLL, 0, 0x18uLL);
    free(*(v1 + 120));
    free(v1);
    return (v3 - 1);
  }

  return result;
}

uint64_t afStreamWrite(uint64_t a1, char *__src, size_t a3)
{
  if (!atomic_load((a1 + 48)))
  {
    v5 = a3;
    v7 = *(a1 + 24);
    if (__CFADD__(a3, v7) || a3 + v7 > *(a1 + 16))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamWrite", 275, 67, 0, "received too many bytes %llu/%llu");
      goto LABEL_13;
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      if (!v9[3])
      {
        v4 = -1;
LABEL_46:
        if (v7 != *(a1 + 16) || (flushBuf(a1) & 0x80000000) == 0)
        {
          if ((v4 & 0x8000000000000000) == 0)
          {
            return v4;
          }

          goto LABEL_14;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamWrite", 298, 67, 0, "flush buf");
LABEL_13:
        v4 = -1;
LABEL_14:
        v11 = 0;
        atomic_compare_exchange_strong((a1 + 48), &v11, 1u);
        return v4;
      }

      if (a3)
      {
        v4 = 0;
        while (1)
        {
          v10 = (v9[3])(*v9, __src, v5);
          if (v10 < 1)
          {
            break;
          }

          __src += v10;
          v4 += v10;
          v5 -= v10;
          if (!v5)
          {
            goto LABEL_41;
          }
        }

        v7 = *(a1 + 24);
        v4 = v10;
        goto LABEL_46;
      }
    }

    else if (a3)
    {
      v4 = 0;
      v13 = (a1 + 64);
      v12 = *(a1 + 64);
      do
      {
        v14 = *(a1 + 56);
        v15 = v14 - v12;
        if (v14 == v12)
        {
          if ((flushBuf(a1) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamWrite", 284, 67, 0, "flush buf");
            goto LABEL_13;
          }

          v12 = *v13;
        }

        if (v5 < v15)
        {
          v15 = v5;
        }

        v16 = __CFADD__(v12, v15);
        v17 = v12 + v15;
        if (v16 || (v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v18 = *(a1 + 72);
        if (v18 < v17)
        {
          do
          {
            while (!v18)
            {
              v18 = 0x4000;
              v20 = 0x4000;
              if (v17 <= 0x4000)
              {
                goto LABEL_33;
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
          v20 = v18;
          if (v18 >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_54;
          }

LABEL_33:
          v21 = *(a1 + 80);
          v22 = realloc(v21, v20);
          if (v22)
          {
            *(a1 + 72) = v20;
            *(a1 + 80) = v22;
            goto LABEL_35;
          }

          free(v21);
LABEL_54:
          *v13 = 0;
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
LABEL_55:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamWrite", 286, 67, 0, "append to buf");
          goto LABEL_13;
        }

LABEL_35:
        v23 = *(a1 + 80);
        if (__src)
        {
          memcpy((v23 + *v13), __src, v15);
        }

        else if (v23)
        {
          memset_s((v23 + *v13), v15, 0, v15);
        }

        v12 = *v13 + v15;
        *v13 = v12;
        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        __src += v15;
        v4 += v15;
        v5 -= v15;
      }

      while (v5);
LABEL_41:
      v7 = *(a1 + 24);
      if (v4 >= 1)
      {
        v7 += v4;
        *(a1 + 24) = v7;
      }

      goto LABEL_46;
    }

    v4 = 0;
    v7 = *(a1 + 24);
    goto LABEL_46;
  }

  return -1;
}

uint64_t afStreamCloseWithState(uint64_t a1, void *a2, void *a3)
{
  if (atomic_load((a1 + 48)))
  {
    return 0xFFFFFFFFLL;
  }

  v30 = v3;
  v31 = v4;
  if ((flushBuf(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamCloseWithState", 236, 67, 0, "flush buf");
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = *(a1 + 24);
  v25 = *(a1 + 8);
  v26 = v11;
  v12 = *(a1 + 96);
  v27 = *(a1 + 56);
  v28 = v12;
  LOBYTE(v29) = *(a1 + 40) != 0;
  BYTE1(v29) = *(a1 + 88);
  if (!a2[3])
  {
    goto LABEL_32;
  }

  v13 = 0;
  v14 = &v25;
  v15 = 66;
  while (1)
  {
    v16 = (a2[3])(*a2, v14, v15);
    if (v16 < 1)
    {
      break;
    }

    v14 = (v14 + v16);
    v13 += v16;
    v15 -= v16;
    if (!v15)
    {
      if (v13 < 0)
      {
        goto LABEL_32;
      }

      goto LABEL_13;
    }
  }

  if (v16 < 0)
  {
    goto LABEL_32;
  }

LABEL_13:
  if (!a2[3])
  {
    goto LABEL_32;
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    v18 = 0;
    v19 = *(a1 + 80);
    while (1)
    {
      v20 = (a2[3])(*a2, v19, v17);
      if (v20 < 1)
      {
        break;
      }

      v19 += v20;
      v18 += v20;
      v17 -= v20;
      if (!v17)
      {
        if (v18 < 0)
        {
          goto LABEL_32;
        }

        goto LABEL_21;
      }
    }

    if (v20 < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    if (!a2[3])
    {
      goto LABEL_32;
    }
  }

  v21 = 16 * *(a1 + 104);
  if (v21)
  {
    v22 = 0;
    v23 = *(a1 + 120);
    while (1)
    {
      v24 = (a2[3])(*a2, v23, v21);
      if (v24 < 1)
      {
        break;
      }

      v23 += v24;
      v22 += v24;
      v21 -= v24;
      if (!v21)
      {
        goto LABEL_28;
      }
    }

    v22 = v24;
LABEL_28:
    if (v22 < 0)
    {
      goto LABEL_32;
    }
  }

  if ((AAByteStreamCloseWithState(*(a1 + 40)) & 0x80000000) != 0)
  {
LABEL_32:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamCloseWithState", 253, 67, 0, "serializing state", v25, v26, v27, v28, v29);
    v10 = 0;
  }

  else if (a3)
  {
    *a3 = *(a1 + 24);
  }

  if ((*a1 & 0x80000000) == 0 && !*(a1 + 4))
  {
    close(*a1);
  }

  free(*(a1 + 80));
  memset_s((a1 + 64), 0x18uLL, 0, 0x18uLL);
  free(*(a1 + 120));
  free(a1);
  if (v10)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *aaArchiveFileOutputStreamOpenAtWithState(int a1, const char *a2, AAByteStream_impl *a3, void *a4)
{
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v8 = calloc(1uLL, 0x68uLL);
  v9 = malloc(0x80uLL);
  v10 = v9;
  if (!v9 || (memset_s(v9, 0x80uLL, 0, 0x80uLL), !v8))
  {
    v12 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 467, 67, v12, "malloc");
    goto LABEL_26;
  }

  *v10 = -1;
  if (a1 < 0)
  {
    v11 = open(a2, 257, 420);
  }

  else
  {
    v11 = openat(a1, a2, 257, 420);
  }

  *v10 = v11;
  if (v11 < 0)
  {
    v27 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 475, 67, v27, "%s");
    goto LABEL_26;
  }

  if (!*(a3 + 2))
  {
LABEL_25:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 478, 67, 0, "loading state", v46);
    goto LABEL_26;
  }

  v13 = &v47;
  v14 = 66;
  do
  {
    v15 = (*(a3 + 2))(*a3, v13, v14);
    if (v15 < 0)
    {
      goto LABEL_25;
    }

    v13 = (v13 + v15);
    v14 -= v15;
    if (v15)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }
  }

  while (!v16);
  v17 = *(&v50 + 1);
  v18 = v50;
  *(v10 + 104) = *(&v50 + 1);
  v19 = (v10 + 104);
  v20 = v48;
  *(v10 + 8) = v47;
  *(v10 + 24) = v20;
  v21 = v49;
  *(v10 + 56) = v49;
  *(v10 + 88) = HIBYTE(v51);
  *(v10 + 96) = v18;
  *(v10 + 112) = v17;
  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_79:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 490, 67, 0, "alloc buf", v46);
    goto LABEL_26;
  }

  v22 = (v10 + 64);
  v23 = *(v10 + 72);
  if (v23 >= v21)
  {
    goto LABEL_33;
  }

  do
  {
    while (!v23)
    {
      v23 = 0x4000;
      if (v21 <= 0x4000)
      {
        v25 = (v10 + 80);
        v23 = 0x4000;
        goto LABEL_31;
      }
    }

    v24 = v23 >> 1;
    if ((v23 & (v23 >> 1)) != 0)
    {
      v24 = v23 & (v23 >> 1);
    }

    v23 += v24;
  }

  while (v23 < v21);
  v25 = (v10 + 80);
  if (v23 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_78;
  }

LABEL_31:
  v28 = *v25;
  v29 = realloc(*v25, v23);
  if (!v29)
  {
    free(v28);
LABEL_78:
    *v25 = 0;
    *v22 = 0;
    *(v10 + 72) = 0;
    goto LABEL_79;
  }

  *(v10 + 72) = v23;
  *(v10 + 80) = v29;
  v17 = *(v10 + 112);
LABEL_33:
  if (v17)
  {
    if (v17 >= 0x200000001)
    {
      *__error() = 12;
      *(v10 + 120) = 0;
LABEL_76:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 492, 67, 0, "alloc holes");
      *v19 = 0;
      *(v10 + 112) = 0;
      goto LABEL_26;
    }

    v30 = calloc(v17, 0x10uLL);
    *(v10 + 120) = v30;
    if (!v30)
    {
      goto LABEL_76;
    }
  }

  v31 = *(&v49 + 1);
  if (*(&v49 + 1))
  {
    v33 = *(v10 + 64);
    v32 = *(v10 + 72);
    do
    {
      if (v33 == v32)
      {
        v34 = v32 + 0x40000;
        if ((v32 + 0x40000) < 0)
        {
          goto LABEL_84;
        }

        if (v32 <= 0xFFFFFFFFFFFBFFFFLL)
        {
          do
          {
            while (!v32)
            {
              v32 = 0x4000;
              v36 = 0x4000;
              if (v34 <= 0x4000)
              {
                goto LABEL_52;
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
            *__error() = 12;
            goto LABEL_83;
          }

LABEL_52:
          v37 = *(v10 + 80);
          v38 = realloc(v37, v36);
          if (v38)
          {
            *(v10 + 72) = v36;
            *(v10 + 80) = v38;
            v33 = *(v10 + 64);
            goto LABEL_54;
          }

          free(v37);
LABEL_83:
          *v22 = 0;
          *(v10 + 72) = 0;
          *(v10 + 80) = 0;
LABEL_84:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 496, 67, 0, "loading state", v46);
LABEL_26:
          afStreamClose(v10);
          free(v8);
          return 0;
        }

        v33 = v32;
      }

      v36 = v32;
LABEL_54:
      if (v36 - v33 >= v31)
      {
        v39 = v31;
      }

      else
      {
        v39 = v36 - v33;
      }

      v40 = AAByteStreamRead(a3, (*(v10 + 80) + v33), v39);
      if (v40 < 0)
      {
        goto LABEL_84;
      }

      if (!v40)
      {
        break;
      }

      v33 = *v22 + v40;
      if (__CFADD__(*v22, v40))
      {
        goto LABEL_84;
      }

      v32 = *(v10 + 72);
      if (v33 > v32)
      {
        goto LABEL_84;
      }

      *v22 = v33;
      v31 -= v40;
    }

    while (v31);
  }

  if (!*(a3 + 2))
  {
    goto LABEL_84;
  }

  v41 = 16 * *v19;
  if (v41)
  {
    v42 = *(v10 + 120);
    do
    {
      v43 = (*(a3 + 2))(*a3, v42, v41);
      if (v43 < 0)
      {
        goto LABEL_84;
      }

      v42 += v43;
      v41 -= v43;
      if (v43)
      {
        v44 = v41 == 0;
      }

      else
      {
        v44 = 1;
      }
    }

    while (!v44);
  }

  if (v51)
  {
    v45 = AAAFSCStreamOpenWithState(*v10, a3, 0);
    *(v10 + 40) = v45;
    if (!v45)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 500, 67, 0, "loading AFSC stream state", v46);
      goto LABEL_26;
    }
  }

  if (a4)
  {
    *a4 = *(v10 + 24);
  }

  *v8 = v10;
  v8[1] = afStreamClose;
  v8[7] = afStreamCancel;
  v8[3] = afStreamWrite;
  v8[12] = afStreamCloseWithState;
  return v8;
}

uint64_t aaArchiveFileOutputStreamCloseAndReturnFD(uint64_t (**a1)(uint64_t result))
{
  if (a1 && a1[1] == afStreamClose)
  {
    v1 = **a1;
    *(*a1 + 1) = 1;
    if ((AAByteStreamClose(a1) & 0x80000000) == 0)
    {
      return v1;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamCloseAndReturnFD", 531, 67, 0, "closing stream");
    if ((v1 & 0x80000000) == 0)
    {
      close(v1);
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamCloseAndReturnFD", 524, 67, 0, "invalid stream");
  }

  return 0xFFFFFFFFLL;
}

uint64_t flushBuf(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 88);
  if (v3 + v1 < *(a1 + 16))
  {
    if (v4)
    {
      v5 = -*(a1 + 96);
    }

    else
    {
      v5 = -16384;
    }

    v1 &= v5;
  }

  v6 = *(a1 + 80);
  if (!v4)
  {
    if (!v1)
    {
      return 0;
    }

    v10 = v1;
    while (1)
    {
      v11 = pwrite(*a1, v6, v10, v3);
      if (v11 < 0)
      {
        break;
      }

      v6 += v11;
      v3 = *(a1 + 32) + v11;
      *(a1 + 32) = v3;
      v10 -= v11;
      if (!v10)
      {
        goto LABEL_64;
      }
    }

    v9 = *__error();
    v7 = "write";
    v8 = 170;
    goto LABEL_67;
  }

  if (((*(a1 + 96) - 1) & v3) != 0)
  {
    v7 = "buffer offset not aligned to holes";
    v8 = 114;
LABEL_10:
    v9 = 0;
LABEL_67:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "flushBuf", v8, 67, v9, v7);
    return 0xFFFFFFFFLL;
  }

  if (!v1)
  {
    return 0;
  }

  v12 = v1;
  while (2)
  {
    v13 = *(a1 + 96);
    if (v13 <= v12)
    {
      v14 = 0;
      v15 = v6;
      v16 = *(a1 + 96);
      do
      {
        v17 = v16;
        if (v13)
        {
          v18 = 0;
          do
          {
            v19 = *&v15[v18];
            v18 += 8;
            if (v19)
            {
              v20 = 1;
            }

            else
            {
              v20 = v18 >= v13;
            }
          }

          while (!v20);
          if (v19)
          {
            break;
          }
        }

        v16 = v13 + v17;
        v15 += v13;
        v14 = v17;
      }

      while (v13 + v17 <= v12);
    }

    else
    {
      v14 = 0;
    }

    v21 = &v6[v14];
    v22 = v14;
    do
    {
      v23 = v22;
      v22 += v13;
      if (v22 > v12)
      {
        v23 = v12;
        if (v14)
        {
          goto LABEL_41;
        }

        goto LABEL_50;
      }

      if (!v13)
      {
        v23 = v14;
        if (v14)
        {
          goto LABEL_41;
        }

        goto LABEL_50;
      }

      v24 = 0;
      do
      {
        v25 = *&v21[v24];
        v24 += 8;
        if (v25)
        {
          v26 = 1;
        }

        else
        {
          v26 = v24 >= v13;
        }
      }

      while (!v26);
      v21 += v13;
    }

    while (v25);
    if (!v14)
    {
LABEL_50:
      v34 = v3;
      goto LABEL_56;
    }

LABEL_41:
    v27 = *(a1 + 104);
    if (!v27 || (v28 = *(a1 + 120) + 16 * v27, v30 = *(v28 - 8), v29 = (v28 - 8), v30 != v3))
    {
      if (v27 == *(a1 + 112))
      {
        v31 = 2 * v27;
        if (v31 <= 0x10)
        {
          v31 = 16;
        }

        *(a1 + 112) = v31;
        if (16 * v31 >= 0x2000000001)
        {
          *__error() = 12;
        }

        else
        {
          v32 = *(a1 + 120);
          v33 = realloc(v32, 16 * v31);
          if (v33)
          {
            *(a1 + 120) = v33;
            v27 = *(a1 + 104);
            v3 = *(a1 + 32);
            goto LABEL_54;
          }

          free(v32);
        }

        *(a1 + 120) = 0;
        v39 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "flushBuf", 140, 67, *v39, "malloc");
        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        return 0xFFFFFFFFLL;
      }

      v33 = *(a1 + 120);
LABEL_54:
      *(a1 + 104) = v27 + 1;
      v35 = &v33[16 * v27];
      *v35 = v3;
      v29 = v35 + 1;
    }

    v34 = v3;
    v3 += v14;
    *v29 = v3;
LABEL_56:
    if (v3 == *(a1 + 16))
    {
      if (!v14 || v14 != v23)
      {
        v7 = "invalid state";
        v8 = 151;
        goto LABEL_10;
      }

      v14 -= *(a1 + 96);
    }

    if (v23 > v14)
    {
      if (pwrite(*a1, &v6[v14], v23 - v14, v14 + v34) != v23 - v14)
      {
        v7 = "writing data";
        v8 = 159;
        goto LABEL_10;
      }

      v34 = *(a1 + 32);
    }

    v6 += v23;
    v3 = v34 + v23;
    *(a1 + 32) = v34 + v23;
    v12 -= v23;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_64:
  v36 = *(a1 + 64);
  v37 = v36 - v1;
  if (v36 < v1)
  {
    return 0;
  }

  if (v36 != v1)
  {
    memmove(*(a1 + 80), (*(a1 + 80) + v1), v36 - v1);
  }

  result = 0;
  *(a1 + 64) = v37;
  return result;
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

uint64_t BXPatch5FileWithFlags(const char *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t), uint64_t a5, uint64_t a6)
{
  st_size = 0;
  memset(&v18, 0, sizeof(v18));
  v12 = open(a1, 0);
  v19 = v12;
  if ((v12 & 0x80000000) != 0)
  {
    v16 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5FileWithFlags", 235, 42, *v16, "open: %s", a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v13 = v12;
    if (fstat(v12, &v18))
    {
      v14 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5FileWithFlags", 236, 42, *v14, "fstat: %s", a1);
      v15 = 0xFFFFFFFFLL;
LABEL_6:
      close(v13);
      return v15;
    }

    st_size = v18.st_size;
    v15 = BXPatch5StreamWithFlags(BXPatch5WithFlagsFileStreamPRead, &v19, v18.st_size, a2, a3, a4, a5, a6);
    v13 = v19;
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  return v15;
}

ssize_t BXPatch5WithFlagsFileStreamPRead(uint64_t a1, void *a2, size_t a3, off_t a4)
{
  if (!a3)
  {
    return 0;
  }

  result = -1;
  if (!__CFADD__(a4, a3) && a4 + a3 <= *(a1 + 8))
  {
    return pread(*a1, a2, a3, a4);
  }

  return result;
}

uint64_t copyStream(uint64_t (*a1)(uint64_t, void *, uint64_t, unint64_t), uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t), uint64_t a5)
{
  v10 = malloc(0x40000uLL);
  if (!v10)
  {
    v16 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "copyStream", 188, 42, v16, "malloc");
LABEL_16:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  v11 = 0;
  if (a3)
  {
    while (1)
    {
      if (v11 + 0x40000 <= a3)
      {
        v12 = 0x40000;
      }

      else
      {
        v12 = a3 - v11;
      }

      v13 = a1(a2, v10, v12, v11);
      if (v13 <= 0)
      {
        v17 = "inProc read";
        v18 = 196;
        goto LABEL_15;
      }

      v14 = a4(a5, v10, v13);
      if (v14 <= 0)
      {
        break;
      }

      v11 += v14;
      if (v11 >= a3)
      {
        goto LABEL_9;
      }
    }

    v17 = "outProc write";
    v18 = 198;
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "copyStream", v18, 42, 0, v17);
    goto LABEL_16;
  }

LABEL_9:
  if (v11 == a3)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0xFFFFFFFFLL;
  }

LABEL_17:
  free(v10);
  return v15;
}

uint64_t BXPatch5InPlace(const char *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v98 = *MEMORY[0x29EDCA608];
  if (a3 <= 0x3B)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 441, 42, 0, "Invalid patch size");
    return 0xFFFFFFFFLL;
  }

  if (*a2 != 0x3035464649445842)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 442, 42, 0, "Invalid patch header");
    return 0xFFFFFFFFLL;
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 445, 42, 0, "Patch can't be applied in-place");
    return 0xFFFFFFFFLL;
  }

  v5 = a4;
  if (a4 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "Input variants in patch: %u\n", *(a2 + 8));
  }

  v95 = 0;
  v96 = 0;
  v97 = 0;
  if (getFileSHA1Digest(a1, &v95))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 450, 42, 0, "computing file digest");
    return 0xFFFFFFFFLL;
  }

  if (v95 != *(a2 + 40) || v96 != *(a2 + 48) || v97 != *(a2 + 56))
  {
    v10 = *(a2 + 8);
    if (!v10)
    {
LABEL_28:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 467, 42, 0, "Input doesn't match any of the expected patch inputs (in-place)");
      return 0xFFFFFFFFLL;
    }

    v11 = 0;
    v12 = (a2 + 60);
    v13 = *(a2 + 8);
    v14 = a2 + 68;
    while (1)
    {
      v15 = v95 == *v14 && v96 == *(v14 + 8);
      if (v15 && v97 == *(v14 + 16))
      {
        break;
      }

      ++v11;
      v14 += 28;
      if (v10 == v11)
      {
        goto LABEL_28;
      }
    }

    if (v5 >= 1)
    {
      fprintf(*MEMORY[0x29EDCA610], "In-place patch matching entry %u\n", v11);
      v13 = *(a2 + 8);
      LODWORD(v10) = *(a2 + 8);
    }

    v93 = *(a2 + 24);
    v89 = v12 + 28 * v13;
    v18 = v89 + v93;
    v19 = 0;
    if (v10)
    {
      v20 = v11;
      do
      {
        if (!v20)
        {
          v19 = v18;
        }

        v21 = *v12;
        v12 = (v12 + 28);
        v18 += v21;
        --v20;
        --v13;
      }

      while (v13);
    }

    v22 = *(v14 - 8);
    v75 = *(a2 + 32);
    if (v18 + v75 - a2 != a3)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 489, 42, "Warning: extra bytes in patch (ignored)\n");
      LODWORD(v10) = *(a2 + 8);
    }

    enterThreadErrorContext();
    v81 = malloc(0x1000uLL);
    if (v81)
    {
      v23 = malloc(0x1000uLL);
      if (v23)
      {
        v77 = v23;
        v82 = (v10 + 2);
        v83 = 8 * v82;
        v80 = malloc(8 * v82);
        v24 = ILowMemoryDecoderStreamCreateWithBuffer(v89, v93, 0x1000uLL);
        if (v24)
        {
          v73 = v22;
          v85 = v24;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = v80;
          v30 = 8 * (v10 + 2);
          while (1)
          {
            v90 = v25;
            v94 = v27;
            if (v27 == v26)
            {
              v31 = v26 + (v26 >> 1);
              if (v26 >> 5 <= 0xC34)
              {
                v31 = 2 * v26;
              }

              if (!v26)
              {
                v31 = 2000;
              }

              v86 = v31;
              v32 = reallocf(v28, v30 * v31);
              v30 = 8 * (v10 + 2);
              v29 = v80;
              v28 = v32;
              if (!v32)
              {
                v61 = v80;
                v62 = *__error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 527, 42, v62, "malloc");
                goto LABEL_91;
              }
            }

            else
            {
              v86 = v26;
            }

            v33 = ILowMemoryDecoderStreamRead(v85, v29, v30);
            if (!v33)
            {
              break;
            }

            v34 = v29;
            v35 = v90;
            v36 = (v10 + 2);
            if (v33 != v30)
            {
              v61 = v29;
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 533, 42, 0, "reading from control stream S=%lld");
LABEL_91:
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v42 = v77;
LABEL_93:
              v46 = v85;
              goto LABEL_94;
            }

            do
            {
              v38 = *v34++;
              v37 = v38;
              v39 = 0x8000000000000000 - v38;
              if (v38 < 0)
              {
                v37 = v39;
              }

              *&v28[v35] = v37;
              v35 += 8;
              --v36;
            }

            while (v36);
            v27 = v94 + 1;
            v25 = v90 + v30;
            v26 = v86;
          }

          if (v5 >= 2)
          {
            fprintf(*MEMORY[0x29EDCA610], "%zu controls in patch (%zu B allocated)\n", v94, v83 * v86);
          }

          v47 = PagedFileCreate(a1, *(a2 + 16), 0x2800000uLL, v5);
          if (!v47)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v42 = v77;
            v61 = v80;
            goto LABEL_93;
          }

          v48 = v47;
          if (v94)
          {
            v49 = 0;
            v50 = v28;
            v51 = v94;
            do
            {
              v78 = *v50;
              v87 = v49;
              v91 = v50[(v11 + 2)];
              PagedFileRetainIn(v48, v49, *v50);
              v49 = v87 + v78 + v91;
              v50 = (v50 + v83);
              --v51;
            }

            while (v51);
          }

          PagedFileReleaseAllIn(v48);
          v43 = v48;
          if (v5 > 1)
          {
            PagedFileDump(v48, "Input retained");
          }

          v46 = v85;
          v84 = ILowMemoryDecoderStreamCreateWithBuffer(v19, v73, 0x1000uLL);
          if (v84)
          {
            v88 = v43;
            if (v94)
            {
              v52 = 0;
              v92 = 0;
              v53 = 0;
              v54 = v11 + 2;
              v55 = v77;
              v74 = v11 + 2;
              while (1)
              {
                v56 = &v28[8 * v52 * v82];
                v57 = *v56;
                v58 = v56[1];
                v79 = v56[v54];
                if (v5 >= 3)
                {
                  fprintf(*MEMORY[0x29EDCA610], "DIFF STREAM: I=%zu OPOS=%llu IPOS=%llu NDIFF=%llu NARCHIVE=%llu IDELTA=%lld\n", v52, v53, v92, v57, v58, v79);
                  PagedFileDump(v88, "Before applying control");
                  v55 = v77;
                }

                v76 = v58;
                if (v57)
                {
                  break;
                }

LABEL_88:
                v92 += v79;
                v53 += v76;
                ++v52;
                v54 = v74;
                if (v52 == v94)
                {
                  goto LABEL_104;
                }
              }

              while (1)
              {
                if (v57 >= 0x1000)
                {
                  v59 = 4096;
                }

                else
                {
                  v59 = v57;
                }

                if (ILowMemoryDecoderStreamRead(v84, v55, v59) != v59)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 584, 42, 0, "reading from diff stream");
                  goto LABEL_129;
                }

                if (PagedFileReadAndReleaseIn(v88, v92, v59, v81))
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 587, 42, 0, "reading from input stream");
                  goto LABEL_129;
                }

                for (i = 0; i != v59; ++i)
                {
                  v77[i] += v81[i];
                }

                if (PagedFileRetainAndWriteOut(v88, v53, v59, v77))
                {
                  break;
                }

                v92 += v59;
                v53 += v59;
                v57 -= v59;
                v55 = v77;
                if (!v57)
                {
                  goto LABEL_88;
                }
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 593, 42, 0, "writing output");
LABEL_129:
              v44 = 0;
            }

            else
            {
              v92 = 0;
LABEL_104:
              v43 = v88;
              if (v5 >= 2)
              {
                PagedFileDump(v88, "Diff stream applied");
              }

              if (!PagedFileHasNoIn(v88))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 608, 42, 0, "some input bytes are still mapped after diff expansion");
                v44 = 0;
                v42 = v77;
                v61 = v80;
                v46 = v85;
LABEL_137:
                v45 = v84;
                goto LABEL_94;
              }

              v44 = ILowMemoryDecoderStreamCreateWithBuffer(v18, v75, 0x1000uLL);
              if (v44)
              {
                if (v94)
                {
                  v65 = 0;
                  v66 = 0;
                  while (1)
                  {
                    v67 = &v28[8 * v65 * v82];
                    v69 = *v67;
                    v68 = *(v67 + 1);
                    if (v5 >= 3)
                    {
                      fprintf(*MEMORY[0x29EDCA610], "ARCHIVE STREAM: OPOS=%llu IPOS=%llu NDIFF=%llu NARCHIVE=%llu\n", v66, v92, *v67, v68);
                    }

                    v66 += v69;
                    if (v68)
                    {
                      break;
                    }

LABEL_120:
                    if (++v65 == v94)
                    {
                      goto LABEL_121;
                    }
                  }

                  v42 = v77;
                  while (1)
                  {
                    if (v68 >= 0x1000)
                    {
                      v70 = 4096;
                    }

                    else
                    {
                      v70 = v68;
                    }

                    if (ILowMemoryDecoderStreamRead(v44, v42, v70) != v70)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 630, 42, 0, "reading from archive stream");
                      goto LABEL_136;
                    }

                    if (PagedFileRetainAndWriteOut(v88, v66, v70, v42))
                    {
                      break;
                    }

                    v66 += v70;
                    v68 -= v70;
                    v42 = v77;
                    if (!v68)
                    {
                      goto LABEL_120;
                    }
                  }

                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 633, 42, 0, "writing output");
                }

                else
                {
LABEL_121:
                  if (v5 >= 2)
                  {
                    PagedFileDump(v88, "Archive stream applied");
                  }

                  if (PagedFileHasAllOut(v88))
                  {
                    PagedFileDestroy(v88);
                    free(v28);
                    free(v80);
                    free(v81);
                    free(v77);
                    ILowMemoryDecoderStreamDestroy(v85);
                    ILowMemoryDecoderStreamDestroy(v84);
                    ILowMemoryDecoderStreamDestroy(v44);
                    if (getFileSHA1Digest(a1, &v95))
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 658, 42, 0, "computing file digest");
                      v63 = 0;
                    }

                    else
                    {
                      v63 = 1;
                    }

                    if (v95 == *(a2 + 40) && v96 == *(a2 + 48) && v97 == *(a2 + 56))
                    {
                      goto LABEL_96;
                    }

                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 659, 42, 0, "Invalid output digest");
LABEL_95:
                    v63 = 0;
LABEL_96:
                    LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
                    if (v63)
                    {
                      v64 = 0;
                    }

                    else
                    {
                      v64 = -1;
                    }

                    if (result >= 0)
                    {
                      return v64;
                    }

                    else
                    {
                      return result;
                    }
                  }

                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 643, 42, 0, "some output bytes are missing or referenced more than once after archive expansion");
                }
              }

              else
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 611, 42, 0, "Archive stream init");
              }
            }

            v42 = v77;
LABEL_136:
            v61 = v80;
            v46 = v85;
            v43 = v88;
            goto LABEL_137;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 563, 42, 0, "Diff stream init");
          v44 = 0;
          v45 = 0;
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 517, 42, 0, "Control stream init");
          v28 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
        }

        v42 = v77;
        v61 = v80;
LABEL_94:
        PagedFileDestroy(v43);
        free(v28);
        free(v61);
        free(v81);
        free(v42);
        ILowMemoryDecoderStreamDestroy(v46);
        ILowMemoryDecoderStreamDestroy(v45);
        ILowMemoryDecoderStreamDestroy(v44);
        goto LABEL_95;
      }

      v41 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 513, 42, v41, "malloc");
    }

    else
    {
      v40 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 511, 42, v40, "malloc");
    }

    v28 = 0;
    v61 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    goto LABEL_94;
  }

  if (v5 >= 1)
  {
    fwrite("No-op patch matching, do nothing\n", 0x21uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  return 0;
}

size_t PCompressLZVNEncode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, 0x900u);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZVNDecode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, 0x900u);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t AEADecryptInPlace(AAByteStream_impl *a1, AEAContext_impl *a2, uint64_t a3, uint64_t (*a4)(void, float), AAFlagSet a5, int a6)
{
  v11 = aaInPlaceStreamOpen(a1);
  v12 = v11;
  if (v11)
  {
    v13 = AEADecryptionRandomAccessInputStreamOpen(v11, a2, 0xFFFFFFFFFFFFFFFFLL, a5, a6);
    if (v13)
    {
      FieldUInt = AEAContextGetFieldUInt(a2, 0xDu);
      if ((FieldUInt & 0x8000000000000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEADecryptInPlace", 80, 127, 0, "bad output size");
      }

      else
      {
        if ((processWithProgress(v13, v12, 0, FieldUInt, a3, a4) & 0x80000000) == 0)
        {
          v15 = 1;
          goto LABEL_12;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEADecryptInPlace", 83, 127, 0, "processWithProgress");
      }
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEADecryptInPlace", 76, 127, 0, "AEADecryptionRandomAccessInputStreamOpen");
    }

    AAByteStreamCancel(v12);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEADecryptInPlace", 72, 127, 0, "aaInPlaceStreamOpen");
    v13 = 0;
  }

  v15 = 0;
LABEL_12:
  if (AAByteStreamClose(v13) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEADecryptInPlace", 87, 127, 0, "AAByteStreamClose");
    v15 = 0;
  }

  AAByteStreamClose(v12);
  if (v15)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t processWithProgress(AAByteStream_impl *a1, AAByteStream_impl *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void, float))
{
  v8 = a4;
  if (a3 && a4)
  {
    v12 = 0;
  }

  else
  {
    v12 = malloc(0x40000uLL);
    if (v12)
    {
      if (a3)
      {
        v13 = a3;
        v39 = a5;
        v40 = v8;
LABEL_7:
        v14 = v13;
        if (v13 >= 0x40000)
        {
          v13 = 0x40000;
        }

        if (*(a1 + 2))
        {
          v15 = a6;
          v16 = 0;
          v17 = v12;
          v18 = v13;
          while (1)
          {
            v19 = (*(a1 + 2))(*a1, v17, v18);
            if (v19 < 0)
            {
              break;
            }

            if (v19)
            {
              v17 += v19;
              v16 += v19;
              v18 -= v19;
              if (v18)
              {
                continue;
              }
            }

            if (v16 <= 0)
            {
              break;
            }

            if (*(a2 + 3))
            {
              v20 = 0;
              v21 = v12;
              v22 = v13;
              while (1)
              {
                v23 = (*(a2 + 3))(*a2, v21, v22);
                if (v23 < 1)
                {
                  break;
                }

                v21 += v23;
                v20 += v23;
                v22 -= v23;
                if (!v22)
                {
                  if (v20 <= 0)
                  {
                    break;
                  }

                  v13 = v14 - v13;
                  a6 = v15;
                  a5 = v39;
                  if (a6 && (a6(v39, ((a3 - v13) * 100.0) / a3) & 0x80000000) != 0)
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "processWithProgress", 33, 127, 0, "progress_proc");
                    goto LABEL_48;
                  }

                  v8 = v40;
                  if (v13)
                  {
                    goto LABEL_7;
                  }

                  goto LABEL_23;
                }
              }
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "processWithProgress", 31, 127, 0, "aaByteStreamWriteExpected");
            goto LABEL_48;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "processWithProgress", 30, 127, 0, "aaByteStreamReadExpected");
      }

      else
      {
LABEL_23:
        if (!v8)
        {
LABEL_42:
          free(v12);
          return 0;
        }

        v24 = v8;
        v25 = v8;
        v38 = a6;
        v41 = v8;
LABEL_25:
        if (v25 >= 0x40000)
        {
          v26 = 0x40000;
        }

        else
        {
          v26 = v25;
        }

        if (*(a1 + 4))
        {
          v27 = 0;
          v25 -= v26;
          v28 = v12;
          v29 = v25;
          v30 = v26;
          while (1)
          {
            v31 = (*(a1 + 4))(*a1, v28, v30, v29);
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

            if (v27 <= 0)
            {
              break;
            }

            if (*(a2 + 5))
            {
              v32 = 0;
              v33 = v12;
              v34 = v25;
              while (1)
              {
                v35 = (*(a2 + 5))(*a2, v33, v26, v34);
                if (v35 < 1)
                {
                  break;
                }

                v33 += v35;
                v32 += v35;
                v34 += v35;
                v26 -= v35;
                if (!v26)
                {
                  if (v32 <= 0)
                  {
                    break;
                  }

                  if (v38 && (v38(a5, ((v41 - v25) * 100.0) / v24) & 0x80000000) != 0)
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "processWithProgress", 43, 127, 0, "progress_proc");
                    goto LABEL_48;
                  }

                  if (v25)
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_42;
                }
              }
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "processWithProgress", 42, 127, 0, "aaByteStreamPWriteExpected");
            goto LABEL_48;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "processWithProgress", 41, 127, 0, "aaByteStreamPReadExpected");
      }
    }

    else
    {
      v37 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "processWithProgress", 24, 127, v37, "malloc");
    }
  }

LABEL_48:
  free(v12);
  AAByteStreamCancel(a1);
  AAByteStreamCancel(a2);
  return 0xFFFFFFFFLL;
}

uint64_t AEAEncryptInPlace(AAByteStream_impl *a1, AEAContext_impl *a2, uint64_t a3, uint64_t (*a4)(void, float), unint64_t a5, int a6)
{
  v12 = AAByteStreamSeek(a1, 0, 2);
  if (v12 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEAEncryptInPlace", 106, 127, 0, "AAByteStreamSeek");
    v15 = 0;
LABEL_11:
    v17 = 0;
LABEL_15:
    v18 = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  v13 = v12;
  v14 = aaInPlaceStreamOpen(a1);
  v15 = v14;
  if (!v14)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEAEncryptInPlace", 110, 127, 0, "aaInPlaceStreamOpen");
    goto LABEL_11;
  }

  v16 = 3;
  if (a5 < 3)
  {
    v16 = a5;
  }

  v17 = AEAEncryptionOutputStreamOpen(v14, a2, v16 << 62, a6);
  if (!v17)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEAEncryptInPlace", 114, 127, 0, "AEAEncryptionOutputStreamOpen");
LABEL_14:
    AAByteStreamCancel(v15);
    goto LABEL_15;
  }

  if ((processWithProgress(v15, v17, v13, 0, a3, a4) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEAEncryptInPlace", 117, 127, 0, "processWithProgress");
    goto LABEL_14;
  }

  if (AEAEncryptionOutputStreamCloseAndUpdateContext(v17, a2) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEAEncryptInPlace", 121, 127, 0, "AEAEncryptionOutputStreamCloseAndUpdateContext");
    v17 = 0;
    goto LABEL_14;
  }

  v17 = 0;
  v18 = 0;
LABEL_16:
  AAByteStreamClose(v17);
  AAByteStreamClose(v15);
  return v18;
}

uint64_t AEAKeychainGenerateItem(int a1, unint64_t a2, unint64_t a3, void *bytes, unint64_t *a5)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = (a2 + 7) >> 3;
      if (v7 <= a3)
      {
        result = CCRandomGenerateBytes(bytes, (a2 + 7) >> 3);
        if (!result)
        {
          *a5 = v7;
          return result;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "RNG", 24, 96, 0, "generate random bytes");
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainGenerateItem", 43, 96, 0, "RNG failed");
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainGenerateItem", 42, 96, 0, "Insufficient buffer capacity");
      }
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainGenerateItem", 78, 96, 0, "Invalid item type");
    }
  }

  else
  {
    v8 = vcvtps_u32_f32(a2 / 16.61);
    if (6 * v8 <= a3)
    {
      bytesa = 0;
      if (!v8)
      {
LABEL_24:
        result = 0;
        *(bytes + v8) = 0;
        *a5 = v8;
        return result;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 5 * v8;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      while (1)
      {
        if (0xCCCCCCCCCCCCCCCDLL * v11 <= 0x3333333333333333 && v12 != 0)
        {
          *(bytes + v12++) = 45;
        }

        if (!v13)
        {
          break;
        }

LABEL_23:
        v8 = v12 + 1;
        *(bytes + v12) = (v10 % 0xA) | 0x30;
        bytesa = v10 / 0xA;
        --v13;
        ++v11;
        v10 /= 0xAu;
        ++v12;
        if (v11 == v15)
        {
          goto LABEL_24;
        }
      }

      while (!CCRandomGenerateBytes(&bytesa, 4uLL))
      {
        if (bytesa <= 0xEE6B27FF)
        {
          v10 = bytesa % 0x3B9ACA00;
          v13 = 9;
          goto LABEL_23;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "RNG", 24, 96, 0, "generate random bytes");
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainGenerateItem", 64, 96, 0, "RNG failed");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainGenerateItem", 52, 96, 0, "Insufficient buffer capacity");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t AEAKeychainStoreItem(unsigned __int8 *a1, unint64_t a2, uint64_t a3, const UInt8 *a4, CFIndex a5)
{
  if (!a2 || !a5)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainStoreItem", 178, 96, 0, "Invalid args");
    return 0xFFFFFFFFLL;
  }

  Attributes = aeaKeychainCreateAttributes(a1, a2, a3);
  if (!Attributes)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainStoreItem", 182, 96, 0, "create attributes");
    return 0xFFFFFFFFLL;
  }

  v8 = Attributes;
  v9 = CFDataCreate(*MEMORY[0x29EDB8ED8], a4, a5);
  if (!v9)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainStoreItem", 186, 96, 0, "create item data");
    CFRelease(v8);
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  CFDictionaryAddValue(v8, *MEMORY[0x29EDBBCD0], v9);
  v11 = SecAccessControlCreateWithFlags(0, *MEMORY[0x29EDBBB90], 1uLL, 0);
  if (!v11)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainStoreItem", 191, 96, 0, "create access control");
    goto LABEL_14;
  }

  CFDictionaryAddValue(v8, *MEMORY[0x29EDBBB70], v11);
  if (SecItemAdd(v8, 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainStoreItem", 196, 96, 0, "adding item to the keychain: %d");
LABEL_14:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  v12 = 0;
LABEL_16:
  CFRelease(v8);
  CFRelease(v10);
  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

__CFDictionary *aeaKeychainCreateAttributes(unsigned __int8 *a1, unint64_t a2, int a3)
{
  v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "kSecUseDataProtectionKeychain");
  if (v6)
  {
    v7 = *v6;
    if (a3)
    {
      if (a3 != 1)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 124, 96, 0, "Invalid item type %d");
        return 0;
      }

      v8 = "kAEA";
    }

    else
    {
      v8 = "pAEA";
    }

    v9 = *MEMORY[0x29EDB8ED8];
    v10 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, v8);
    if (v10)
    {
      v11 = v10;
      if (((a2 >> 36) & 0x7FFFFFF) != 0)
      {
        *__error() = 12;
LABEL_19:
        v21 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 132, 96, *v21, "malloc");
        v22 = v11;
LABEL_20:
        CFRelease(v22);
        return 0;
      }

      v12 = 2 * a2;
      v13 = malloc((2 * a2) | 1);
      if (!v13)
      {
        goto LABEL_19;
      }

      v14 = v13;
      if (a2)
      {
        v15 = v13 + 1;
        do
        {
          v16 = *a1++;
          *(v15 - 1) = aeaKeychainCreateAttributes_hex[v16 >> 4];
          *v15 = aeaKeychainCreateAttributes_hex[v16 & 0xF];
          v15 += 2;
          --a2;
        }

        while (a2);
      }

      v13[v12] = 0;
      v17 = CFStringCreateWithCString(v9, v13, 0x600u);
      if (v17)
      {
        Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        v19 = Mutable;
        if (Mutable)
        {
          CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBBC30], *MEMORY[0x29EDBBC40]);
          CFDictionaryAddValue(v19, v7, *MEMORY[0x29EDB8F00]);
          CFDictionaryAddValue(v19, *MEMORY[0x29EDBBC28], v11);
          CFDictionaryAddValue(v19, *MEMORY[0x29EDBBC10], @"AppleEncryptedArchive");
          CFDictionaryAddValue(v19, *MEMORY[0x29EDBBBA0], v17);
          v20 = 0;
LABEL_26:
          free(v14);
          CFRelease(v11);
          if (v17)
          {
            CFRelease(v17);
            if ((v20 & 1) == 0)
            {
              return v19;
            }
          }

          else if (!v20)
          {
            return v19;
          }

          if (!v19)
          {
            return v19;
          }

          v22 = v19;
          goto LABEL_20;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 144, 96, 0, "create attributes");
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 141, 96, 0, "create attributes");
        v19 = 0;
      }

      v20 = 1;
      goto LABEL_26;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 128, 96, 0, "create attributes");
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 115, 96, 0, "Keychain support not available");
  }

  return 0;
}

uint64_t AEAKeychainLoadItem(unsigned __int8 *a1, unint64_t a2, int a3, unint64_t a4, void *a5, size_t *a6)
{
  result = 0;
  if (!a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainLoadItem", 219, 96, 0, "Invalid args");
    return 0xFFFFFFFFLL;
  }

  Attributes = aeaKeychainCreateAttributes(a1, a2, a3);
  if (!Attributes)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainLoadItem", 223, 96, 0, "create attributes");
    return 0xFFFFFFFFLL;
  }

  v10 = Attributes;
  CFDictionaryAddValue(Attributes, *MEMORY[0x29EDBBCB0], *MEMORY[0x29EDB8F00]);
  v11 = SecItemCopyMatching(v10, &result);
  if (v11 == -25300)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if (!a5 || v11)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainLoadItem", 231, 96, 0, "searching item in keychain: %d");
  }

  else
  {
    v13 = CFGetTypeID(result);
    if (v13 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(result);
      if (Length - 1 < a4)
      {
        v15 = Length;
        BytePtr = CFDataGetBytePtr(result);
        memcpy(a5, BytePtr, v15);
        *a6 = v15;
        v12 = 1;
        goto LABEL_17;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainLoadItem", 236, 96, 0, "Invalid data size");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainLoadItem", 234, 96, 0, "Invalid return type");
    }
  }

  v12 = 0xFFFFFFFFLL;
LABEL_17:
  CFRelease(v10);
  if (result)
  {
    CFRelease(result);
  }

  return v12;
}

uint64_t AEAKeychainHasItem(unsigned __int8 *a1, unint64_t a2, int a3)
{
  result = 0;
  if (!a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainHasItem", 258, 96, 0, "Invalid args");
    return 0xFFFFFFFFLL;
  }

  Attributes = aeaKeychainCreateAttributes(a1, a2, a3);
  if (!Attributes)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainHasItem", 262, 96, 0, "create attributes");
    return 0xFFFFFFFFLL;
  }

  v4 = Attributes;
  CFDictionaryAddValue(Attributes, *MEMORY[0x29EDBBCA8], *MEMORY[0x29EDB8F00]);
  v5 = SecItemCopyMatching(v4, &result);
  if (v5 == -25300)
  {
    v6 = 0;
  }

  else if (v5)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainHasItem", 270, 96, 0, "searching item in keychain: %d", v5);
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  CFRelease(v4);
  if (result)
  {
    CFRelease(result);
  }

  return v6;
}

uint64_t AEAKeychainRemoveItem(unsigned __int8 *a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainRemoveItem", 289, 96, 0, "Invalid args");
    return 0xFFFFFFFFLL;
  }

  Attributes = aeaKeychainCreateAttributes(a1, a2, a3);
  if (!Attributes)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainRemoveItem", 293, 96, 0, "create attributes");
    return 0xFFFFFFFFLL;
  }

  v4 = Attributes;
  v5 = SecItemDelete(Attributes);
  if (v5 == -25300)
  {
    v6 = 0;
  }

  else if (v5)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainRemoveItem", 298, 96, 0, "removing item from keychain: %d", v5);
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  CFRelease(v4);
  return v6;
}

size_t PCompressZLIB5Encode(uint64_t a1, unint64_t a2, const uint8_t *a3, size_t a4)
{
  v4 = a2 >= 2;
  v5 = a2 - 2;
  if (!v4)
  {
    return -1;
  }

  *a1 = 24184;
  v7 = compression_encode_buffer((a1 + 2), v5, a3, a4, 0, COMPRESSION_ZLIB);
  if (v7)
  {
    return v7 + 2;
  }

  else
  {
    return -1;
  }
}

size_t PCompressZLIBDecode(uint8_t *a1, size_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >= 2;
  v5 = a4 - 2;
  if (!v4)
  {
    return -1;
  }

  result = compression_decode_buffer(a1, a2, (a3 + 2), v5, 0, COMPRESSION_ZLIB);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t ParallelCompressionEncode(uint64_t a1)
{
  v8 = 0;
  v1 = *(a1 + 4);
  LODWORD(v8) = *a1;
  v7 = *(a1 + 16);
  v5[1] = 0;
  v6 = v1;
  v5[0] = *(a1 + 8);
  v2 = *(a1 + 40);
  v4[0] = *(a1 + 24);
  v4[1] = v2;
  v4[2] = *(a1 + 56);
  return PCompressFilter(v5, v4, 0);
}

uint64_t ParallelCompressionDecode(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  v1 = *(a1 + 4);
  DWORD2(v6) = *a1;
  DWORD1(v5) = 1;
  DWORD2(v5) = v1;
  v2 = *(a1 + 24);
  v4[0] = *(a1 + 8);
  v4[1] = v2;
  v4[2] = *(a1 + 40);
  return PCompressFilter(&v5, v4, 0);
}

uint64_t (*PCompressGetEncoderFilter(unsigned int a1))()
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_2A1DE8F20[a1];
  }
}

uint64_t (*PCompressGetDecoderFilter(unsigned int a1))()
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_2A1DE8F58[a1];
  }
}

uint64_t RawImagePatchInternal(uint64_t a1, AAByteStream_impl *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  DefaultNThreads = *(a1 + 44);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
    *(a1 + 44) = DefaultNThreads;
  }

  if (DefaultNThreads >= 3)
  {
    *(a1 + 44) = 2;
  }

  if (!*(a1 + 16))
  {
    *(a1 + 16) = *(a1 + 24);
  }

  v7 = a2;
  if (!a2)
  {
    v17 = AAFileStreamOpenWithPath(*(a1 + 32), 0, 0);
    v7 = v17;
    if (!v17)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 542, 135, 0, "AAFileStreamOpenWithPath");
      v23 = 0;
      v22 = 0;
      v21 = 0;
      v20 = 0;
      v19 = 0;
      goto LABEL_30;
    }

    if ((v6 & 1) != 0 && (io_set_nocache(v17) & 0x80000000) != 0)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 543, 135, "io_set_nocache %s", *(a1 + 32));
    }
  }

  v8 = malloc(0x2EuLL);
  v9 = v8;
  if (!v8)
  {
    v16 = *__error();
    v14 = "aaMalloc";
    v15 = 108;
    goto LABEL_24;
  }

  if (!*(v7 + 2))
  {
    goto LABEL_17;
  }

  v10 = 0;
  v11 = 46;
  v12 = v8;
  do
  {
    v13 = (*(v7 + 2))(*v7, v12, v11);
    if (v13 < 0)
    {
      goto LABEL_17;
    }

    if (!v13)
    {
      break;
    }

    v12 = (v12 + v13);
    v10 += v13;
    v11 -= v13;
  }

  while (v11);
  if (v10 != 46)
  {
LABEL_17:
    v14 = "aaByteStreamReadExpected";
    v15 = 110;
    goto LABEL_18;
  }

  if (*v9 != 0x3031464649444952 || !*(v9 + 4) || !*(v9 + 18) || (v25 = *(v9 + 30), v25 < 0x2F) || v25 >= *(v9 + 38))
  {
    v14 = "bad header";
    v15 = 118;
LABEL_18:
    v16 = 0;
LABEL_24:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_header", v15, 135, v16, v14);
LABEL_25:
    free(v9);
    v18 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 548, 135, *v18, "patch_read_header");
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
LABEL_26:
    v23 = 0;
    goto LABEL_27;
  }

  if (v25 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_50:
    v33 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_header", 122, 135, *v33, "aaReallocf");
    v9 = 0;
    goto LABEL_25;
  }

  v26 = realloc(v9, v25);
  if (!v26)
  {
    free(v9);
    goto LABEL_50;
  }

  v22 = v26;
  v27 = *(v26 + 30) - 46;
  v28 = v26 + 46;
  if (*(v7 + 2))
  {
    if (*(v26 + 30) == 46)
    {
      goto LABEL_54;
    }

    v29 = 0;
    v30 = v26 + 46;
    v31 = *(v26 + 30) - 46;
    while (1)
    {
      v32 = (*(v7 + 2))(*v7, v30, v31);
      if (v32 < 0)
      {
        break;
      }

      if (v32)
      {
        v30 += v32;
        v29 += v32;
        v31 -= v32;
        if (v31)
        {
          continue;
        }
      }

      goto LABEL_53;
    }

    v29 = v32;
  }

  else
  {
    v29 = -1;
  }

LABEL_53:
  if (v27 != v29)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_header", 124, 135, 0, "aaByteStreamReadExpected");
LABEL_62:
    v9 = v22;
    goto LABEL_25;
  }

LABEL_54:
  v34 = *(v22 + 38);
  v35 = *(v22 + 4);
  v36 = v35 + 1;
  v37 = 46;
  do
  {
    v38 = *&v22[v37];
    if (v34 >= v38)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_header", 130, 135, 0, "bad header");
      goto LABEL_62;
    }

    v37 += 8;
    v34 = v38;
    --v36;
  }

  while (v36);
  v204 = v28;
  if (*(a1 + 48) >= 1)
  {
    v39 = MEMORY[0x29EDCA610];
    if (v35 == 1)
    {
      v40 = "*full replacement*";
    }

    else
    {
      v40 = *(a1 + 16);
    }

    v41 = "(stream based)";
    if (*(a1 + 32))
    {
      v41 = *(a1 + 32);
    }

    v42 = *(a1 + 40);
    if (v42)
    {
      v43 = "no";
    }

    else
    {
      v43 = "yes";
    }

    if ((v42 & 2) != 0)
    {
      v44 = "yes";
    }

    else
    {
      v44 = "no";
    }

    fprintf(*MEMORY[0x29EDCA610], "ImagePatch\n  Input:        %s\n  Output:       %s\n  Patch:        %s\n  CryptexCache: %s\n  StaticContent: %s\n", v40, *(a1 + 24), v41, v43, v44);
    if (*(a1 + 48) >= 2)
    {
      fprintf(*v39, "  - Variants:   %d\n  - Flags:      %llx\n  - # controls: %llu\n  - Patch size: %llu bytes\n    - Metadata: %llu bytes\n    - Controls: %llu bytes\n", *(v22 + 4), *(v22 + 10), *(v22 + 18), *&v28[8 * *(v22 + 4)], *(v22 + 38) - *(v22 + 30), *(v22 + 46) - *(v22 + 38));
      if (*(v22 + 4))
      {
        v45 = 0;
        v46 = v22 + 54;
        do
        {
          if (v45)
          {
            v47 = "Diff";
          }

          else
          {
            v47 = "Literal";
          }

          ++v45;
          fprintf(*v39, "    - %s stream: %llu bytes\n", v47, *v46 - *(v46 - 1));
          ++v46;
        }

        while (v45 < *(v22 + 4));
      }
    }
  }

  v48 = aaIntervalInputStreamOpen(v7, *(v22 + 30), *(v22 + 38));
  v49 = v48;
  if (!v48)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_variants", 187, 135, 0, "aaIntervalInputStreamOpen");
    v21 = 0;
    v52 = 0;
    goto LABEL_94;
  }

  v50 = *(a1 + 48);
  if (v50 <= 3)
  {
    v51 = v50 << 62;
  }

  else
  {
    v51 = 0xC000000000000000;
  }

  v52 = AADecompressionInputStreamOpen(v48, v51, *(a1 + 44));
  if (!v52)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_variants", 189, 135, 0, "AADecompressionInputStreamOpen");
    v21 = 0;
    goto LABEL_94;
  }

  v21 = calloc(*(v22 + 4), 8uLL);
  if (!v21)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_variants", 193, 135, 0, "aaCalloc");
    goto LABEL_94;
  }

  if (*(v22 + 4))
  {
    v53 = 0;
    while (1)
    {
      v54 = rawimg_create_with_stream(v52, v53 == 0);
      v21[v53] = v54;
      if (!v54)
      {
        break;
      }

      if (++v53 >= *(v22 + 4))
      {
        goto LABEL_89;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_variants", 199, 135, 0, "rawimg_create_with_stream");
LABEL_94:
    free(v21);
    v55 = 1;
  }

  else
  {
LABEL_89:
    v55 = 0;
  }

  v56 = AAByteStreamClose(v52);
  v57 = AAByteStreamClose(v49);
  if (!v21 || (v55 & 1) != 0 || v57 < 0 || v56 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 552, 135, 0, "patch_read_variants");
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_26;
  }

  v58 = calloc(*(v22 + 4), 0x20uLL);
  v23 = v58;
  if (!v58)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 556, 135, 0, "aaCalloc");
    v20 = 0;
    goto LABEL_379;
  }

  if (*(v22 + 4))
  {
    v59 = 0;
    v60 = v58;
    do
    {
      v61 = *(v21[v59] + 2104);
      *v60 = *(v21[v59] + 2088);
      v60[1] = v61;
      v60 += 2;
      ++v59;
      v62 = *(v22 + 4);
    }

    while (v59 < v62);
    *(*v21 + 2048) = *(a1 + 24);
    if (v62 == 1)
    {
      v20 = 0;
      v182 = 0;
      v188 = 0;
      s = 0;
      v200 = 0;
      compressed_stream = 0;
      v191 = 0;
      v63 = *v21;
      v64 = *(a1 + 40);
      v65 = v64 & 1;
      goto LABEL_105;
    }
  }

  else
  {
    *(*v21 + 2048) = *(a1 + 24);
  }

  v68 = malloc(0x2000uLL);
  v20 = v68;
  if (!v68)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 568, 135, 0, "aaMalloc");
    goto LABEL_379;
  }

  saveThreadErrorContext(v68);
  v69 = *(v22 + 4);
  if (!*(v22 + 4))
  {
LABEL_137:
    restoreThreadErrorContext(v20);
    goto LABEL_138;
  }

  v70 = &v23[4 * v69 - 4];
  v71 = (v21 - 1);
  while (1)
  {
    v206 = v69;
    v72 = v69 - 1;
    *(*&v71[8 * v69] + 2048) = *(a1 + 16);
    if (!rawimg_get_digests(*&v71[8 * v69], 4, 1, 1))
    {
      v73 = *&v71[8 * v206];
      v74 = v73[261];
      v75 = v73[262];
      v76 = v73[263];
      v77 = v73[264];
      v78 = *v70 == v74 && v70[1] == v75;
      v79 = v78 && v70[2] == v76;
      if (v79 && v70[3] == v77)
      {
        break;
      }
    }

    v70 -= 4;
    v69 = v72;
    if (!v72)
    {
      goto LABEL_137;
    }
  }

  restoreThreadErrorContext(v20);
  v182 = v72;
  if ((v72 & 0x80000000) != 0)
  {
LABEL_138:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 586, 135, 0, "ImagePatch: No variant found");
    goto LABEL_379;
  }

  if (v206 != 1)
  {
    v197 = v72 & 0x7FFFFFFF;
    v127 = &v23[4 * v197];
    v128 = *v127;
    v129 = v127[1];
    v131 = v127[2];
    v130 = v127[3];
    if (*v23 != v128 || v23[1] != v129 || v23[2] != v131 || v23[3] != v130)
    {
      rawimg_show(v21[v197], 0, *(a1 + 48));
      v64 = *(a1 + 40);
      v65 = v64 & 1;
      v198 = *v21;
      v201 = v21[v197];
      v135 = v201[256];
      v195 = strcmp(v135, *(*v21 + 2048));
      if (v195)
      {
        if (*(v22 + 4) > 1u)
        {
          v188 = AAFileStreamOpenWithPath(v135, 0, 0);
          if (v188)
          {
            if ((v64 & 1) == 0)
            {
              goto LABEL_282;
            }

            if ((io_set_nocache(v188) & 0x80000000) != 0)
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 284, 135, "io_set_nocache %s", v201[256]);
            }

            v136 = *(a1 + 48);
            v137 = v136 <= 3 ? v136 << 62 : 0xC000000000000000;
            v65 = 1;
            v188 = aaCacheStreamOpen(v188, 0x1000000uLL, 0xEu, 1u, v137);
            if (v188)
            {
LABEL_282:
              v202 = 0;
              goto LABEL_336;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 286, 135, 0, "aaCacheStreamOpen");
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 281, 135, 0, "AAFileStreamOpenWithPath");
          }

LABEL_358:
          v192 = 0;
          v194 = 0;
          v196 = 0;
          v191 = 0;
          compressed_stream = 0;
          v205 = 0;
          v207 = 0;
          v200 = 0;
          v202 = 0;
          s = 0;
          v188 = 0;
LABEL_359:
          v189 = 0;
          if (v188 == v202)
          {
            v160 = 0;
          }

          else
          {
            v160 = v188;
          }

          goto LABEL_362;
        }

        v188 = 0;
        s = 0;
        v200 = 0;
        compressed_stream = 0;
        v191 = 0;
LABEL_318:
        v63 = v198;
LABEL_105:
        v198 = v63;
        v202 = AAFileStreamOpenWithPath(*(v63 + 2048), 1538, 0x1A4u);
        if (!v202)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 305, 135, 0, "AAFileStreamOpenWithPath");
          goto LABEL_141;
        }

        if ((v64 & 2) != 0 && (io_hint_static_content(v202) & 0x80000000) != 0)
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 308, 135, "ImagePatch: Static content hint failed.");
        }

        if ((io_preallocate(v202, *(v198 + 2120)) & 0x80000000) != 0)
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 311, 135, "ImagePatch: Preallocation failed.");
        }

        if (v65)
        {
          if ((io_set_nocache(v202) & 0x80000000) != 0)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 316, 135, "io_set_nocache %s", *(v198 + 2048));
          }

          v66 = *(a1 + 48);
          if (v66 <= 3)
          {
            v67 = v66 << 62;
          }

          else
          {
            v67 = 0xC000000000000000;
          }

          v181 = 1;
          v202 = aaCacheStreamOpen(v202, 0x100000uLL, 0xEu, 1u, v67);
          if (!v202)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 318, 135, 0, "aaCacheStreamOpen");
LABEL_141:
            v192 = 0;
            v194 = 0;
            v196 = 0;
            v205 = 0;
            v207 = 0;
            v202 = 0;
            goto LABEL_359;
          }
        }

        else
        {
          v181 = 1;
        }

LABEL_143:
        v81 = aaSegmentStreamOpen(v202, v198);
LABEL_144:
        v205 = v81;
        if (v81)
        {
          v207 = aaForkOutputStreamOpen(v81, v198);
          if (!v207)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 324, 135, 0, "aaForkOutputStreamOpen");
            v192 = 0;
            v194 = 0;
            v196 = 0;
            v207 = 0;
            goto LABEL_359;
          }

          v194 = aaIntervalInputStreamOpen(v7, *(v22 + 46), *(v22 + 54));
          if (v194)
          {
            v82 = *(a1 + 48);
            if (v82 <= 3)
            {
              v83 = v82 << 62;
            }

            else
            {
              v83 = 0xC000000000000000;
            }

            v196 = AADecompressionInputStreamOpen(v194, v83, *(a1 + 44));
            if (v196)
            {
              v192 = calloc(1uLL, 0x10040uLL);
              if (!v192)
              {
                v138 = __error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "ctrl_reader_create", 36, 135, *v138, "aaCalloc");
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 338, 135, 0, "control_reader_create");
                v192 = 0;
                goto LABEL_359;
              }

              *(v192 + 0x2000) = v7;
              *(v192 + 8195) = v22;
              *(v192 + 8196) = a1;
              v84 = *(v22 + 4) + 1;
              *(v192 + 8197) = 0x2000 / v84 * v84;
              *(v192 + 8198) = -1;
              v85 = *(v22 + 18);
              *(v192 + 8199) = v85 * v84;
              v86 = v181;
              if (!v85)
              {
                v86 = 1;
              }

              if (v86)
              {
LABEL_155:
                v189 = calloc(1uLL, 0x20000uLL);
                if (v189)
                {
                  v174 = 0;
                  v171 = 0;
                  v167 = v182;
                  v87 = *(v22 + 18);
                  v168 = 1;
                  while (!v87)
                  {
LABEL_255:
                    v126 = v181;
                    if (v168 > 1)
                    {
                      v126 = 1;
                    }

                    ++v168;
                    if (v126 == 1)
                    {
                      if ((AAByteStreamTruncate(v202) & 0x80000000) == 0)
                      {
                        v199 = 0;
                        goto LABEL_396;
                      }

                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 457, 135, 0, "AAByteStreamTruncate");
LABEL_395:
                      v199 = 1;
LABEL_396:
                      if (v188 == v202)
                      {
                        v160 = 0;
                      }

                      else
                      {
                        v160 = v188;
                      }

                      goto LABEL_363;
                    }
                  }

                  v169 = 0;
                  v170 = 0;
                  v179 = 0;
                  while (2)
                  {
                    v88 = ctrl_reader_get(v192, v169);
                    if (!v88)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 387, 135, 0, "ctrl_reader_get");
                      goto LABEL_395;
                    }

                    v89 = *v88;
                    v90 = v88[1];
                    if ((*v88 & 0x8000000000000000) != 0)
                    {
                      v89 = 0x8000000000000000 - *v88;
                    }

                    v175 = v89;
                    v91 = 0x8000000000000000 - v90;
                    if (v90 >= 0)
                    {
                      v91 = v88[1];
                    }

                    v173 = v91;
                    v92 = v88[v167 + 1];
                    if (v92 < 0)
                    {
                      v92 = 0x8000000000000000 - v92;
                    }

                    v166 = v92;
                    if (v168 == 2)
                    {
                      v179 += v175;
                      if ((v181 & 1) == 0 && v179 < *(v198 + 2056))
                      {
                        goto LABEL_169;
                      }

LABEL_222:
                      if (v173)
                      {
                        v176 = 0;
                        while (1)
                        {
                          v113 = v173 - v176;
                          if (v173 - v176 >= 0x10000)
                          {
                            v113 = 0x10000;
                          }

                          v178 = v113;
                          if (!*(v196 + 2))
                          {
                            goto LABEL_348;
                          }

                          if (v173 == v176)
                          {
                            v114 = 0;
                          }

                          else
                          {
                            v114 = 0;
                            v115 = v189;
                            v116 = v113;
                            while (1)
                            {
                              v117 = (*(v196 + 2))(*v196, v115, v116);
                              if (v117 < 0)
                              {
                                break;
                              }

                              if (v117)
                              {
                                v115 += v117;
                                v114 += v117;
                                v116 -= v117;
                                if (v116)
                                {
                                  continue;
                                }
                              }

                              goto LABEL_235;
                            }

                            v114 = v117;
                          }

LABEL_235:
                          if (v178 != v114)
                          {
LABEL_348:
                            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 439, 135, 0, "aaByteStreamReadExpected");
                            goto LABEL_395;
                          }

                          if (!*(v207 + 5))
                          {
                            goto LABEL_349;
                          }

                          if (v173 == v176)
                          {
                            v185 = 0;
                          }

                          else
                          {
                            v185 = 0;
                            v118 = v189;
                            v120 = v178;
                            v119 = v179;
                            while (1)
                            {
                              v121 = (*(v207 + 5))(*v207, v118, v120, v119);
                              if (v121 < 1)
                              {
                                break;
                              }

                              v118 += v121;
                              v185 += v121;
                              v119 += v121;
                              v120 -= v121;
                              if (!v120)
                              {
                                goto LABEL_244;
                              }
                            }

                            v185 = v121;
                          }

LABEL_244:
                          if (v178 != v185)
                          {
LABEL_349:
                            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 440, 135, 0, "aaByteStreamWriteExpected");
                            goto LABEL_395;
                          }

                          v122 = v178 + v174;
                          v174 += v178;
                          if (*a1)
                          {
                            v123 = v122 > v171;
                          }

                          else
                          {
                            v123 = 0;
                          }

                          if (v123)
                          {
                            v124 = *(v198 + 2080);
                            if (v174 < v124)
                            {
                              v125 = ((v124 >> 2) * 0x28F5C28F5C28F5C3uLL) >> 64;
                              if (((*a1)(*(a1 + 8), v174 / (v124 / 0x64 + 1)) & 0x80000000) != 0)
                              {
                                v165 = 450;
                                goto LABEL_401;
                              }

                              v171 = v174 + (v125 >> 2);
                            }
                          }

                          v179 += v178;
                          v176 += v178;
                          if (v176 >= v173)
                          {
                            goto LABEL_254;
                          }
                        }
                      }

                      goto LABEL_254;
                    }

                    if (!v175)
                    {
LABEL_219:
                      v170 += v166;
                      if ((v181 & 1) != 0 || v168 != 1 || v179 < *(v198 + 2056))
                      {
                        goto LABEL_222;
                      }

LABEL_169:
                      v179 += v173;
LABEL_254:
                      v87 = *(v22 + 18);
                      if (++v169 >= v87)
                      {
                        goto LABEL_255;
                      }

                      continue;
                    }

                    break;
                  }

                  v172 = 0;
                  while (2)
                  {
                    v93 = v175 - v172;
                    if (v175 - v172 >= 0x10000)
                    {
                      v93 = 0x10000;
                    }

                    v177 = v93;
                    if (!v200[4])
                    {
                      goto LABEL_352;
                    }

                    if (v175 == v172)
                    {
                      v183 = 0;
                    }

                    else
                    {
                      v183 = 0;
                      v94 = v189;
                      v95 = v170;
                      v96 = v93;
                      while (1)
                      {
                        v97 = (v200[4])(*v200, v94, v96, v95);
                        if (v97 < 0)
                        {
                          break;
                        }

                        if (v97)
                        {
                          v94 += v97;
                          v183 += v97;
                          v95 += v97;
                          v96 -= v97;
                          if (v96)
                          {
                            continue;
                          }
                        }

                        goto LABEL_183;
                      }

                      v183 = v97;
                    }

LABEL_183:
                    if (v177 != v183)
                    {
LABEL_352:
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 400, 135, 0, "aaByteStreamPReadExpected");
                      goto LABEL_395;
                    }

                    v98 = *(v198 + 2072);
                    if (v179 < v98)
                    {
                      if (v177 + v179 > v98)
                      {
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 406, 135, 0, "bad controls");
                        goto LABEL_395;
                      }

                      if (!*(v191 + 2))
                      {
                        goto LABEL_392;
                      }

                      if (v175 == v172)
                      {
                        if (!*(v207 + 5))
                        {
                          goto LABEL_353;
                        }

                        goto LABEL_203;
                      }

                      v99 = 0;
                      v100 = v189 + 0x10000;
                      v101 = v177;
                      while (1)
                      {
                        v102 = (*(v191 + 2))(*v191, v100, v101);
                        if (v102 < 0)
                        {
                          break;
                        }

                        if (v102)
                        {
                          v100 += v102;
                          v99 += v102;
                          v101 -= v102;
                          if (v101)
                          {
                            continue;
                          }
                        }

                        goto LABEL_196;
                      }

                      v99 = v102;
LABEL_196:
                      if (v177 != v99)
                      {
LABEL_392:
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 407, 135, 0, "aaByteStreamReadExpected");
                        goto LABEL_395;
                      }

                      v103 = v177;
                      if (v177 <= 1)
                      {
                        v103 = 1;
                      }

                      v104 = v189;
                      do
                      {
                        *v104 += v104[0x10000];
                        ++v104;
                        --v103;
                      }

                      while (v103);
                    }

                    if (!*(v207 + 5))
                    {
                      goto LABEL_353;
                    }

                    if (v175 == v172)
                    {
LABEL_203:
                      v184 = 0;
                    }

                    else
                    {
                      v184 = 0;
                      v105 = v189;
                      v107 = v177;
                      v106 = v179;
                      while (1)
                      {
                        v108 = (*(v207 + 5))(*v207, v105, v107, v106);
                        if (v108 < 1)
                        {
                          break;
                        }

                        v105 += v108;
                        v184 += v108;
                        v106 += v108;
                        v107 -= v108;
                        if (!v107)
                        {
                          goto LABEL_209;
                        }
                      }

                      v184 = v108;
                    }

LABEL_209:
                    if (v177 != v184)
                    {
LABEL_353:
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 412, 135, 0, "aaByteStreamWriteExpected");
                      goto LABEL_395;
                    }

                    v109 = v174 + v177;
                    v174 += v177;
                    if (*a1)
                    {
                      v110 = v109 > v171;
                    }

                    else
                    {
                      v110 = 0;
                    }

                    if (v110)
                    {
                      v111 = *(v198 + 2080);
                      if (v174 < v111)
                      {
                        v112 = ((v111 >> 2) * 0x28F5C28F5C28F5C3uLL) >> 64;
                        if (((*a1)(*(a1 + 8), v174 / (v111 / 0x64 + 1)) & 0x80000000) != 0)
                        {
                          v165 = 422;
LABEL_401:
                          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", v165, 135, 0, "callback signaled abort");
                          if (v188 == v202)
                          {
                            v160 = 0;
                          }

                          else
                          {
                            v160 = v188;
                          }

                          if (v191)
                          {
                            AAByteStreamCancel(v191);
                          }

                          AAByteStreamCancel(v196);
LABEL_362:
                          v199 = 1;
LABEL_363:
                          if (v192)
                          {
                            AAByteStreamClose(*(v192 + 8194));
                            AAByteStreamClose(*(v192 + 8193));
                            free(v192);
                          }

                          free(v189);
                          AAByteStreamClose(v200);
                          AAByteStreamClose(s);
                          AAByteStreamClose(v160);
                          AAByteStreamClose(v207);
                          AAByteStreamClose(v205);
                          AAByteStreamClose(v202);
                          AAByteStreamClose(v191);
                          AAByteStreamClose(compressed_stream);
                          AAByteStreamClose(v196);
                          AAByteStreamClose(v194);
                          if (v199)
                          {
                            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 621, 135, 0, "patch_apply");
                            goto LABEL_379;
                          }

                          if (rawimg_get_digests(*v21, 4, 0, 1) || (*v23 == *(*v21 + 2088) ? (v161 = v23[1] == *(*v21 + 2096)) : (v161 = 0), v161 ? (v162 = v23[2] == *(*v21 + 2104)) : (v162 = 0), v162 ? (v163 = v23[3] == *(*v21 + 2112)) : (v163 = 0), !v163))
                          {
                            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 630, 135, 0, "digest mismatch");
                            goto LABEL_379;
                          }

                          if (*(a1 + 48) >= 2)
                          {
                            v144 = *MEMORY[0x29EDCA610];
                            v145 = "ImagePatch: Digest match. Output reconstructed.\n";
                            v146 = 48;
LABEL_386:
                            fwrite(v145, v146, 1uLL, v144);
                          }

                          goto LABEL_387;
                        }

                        v171 = v174 + (v112 >> 2);
                      }
                    }

                    v170 += v177;
                    v179 += v177;
                    v172 += v177;
                    if (v172 >= v175)
                    {
                      goto LABEL_219;
                    }

                    continue;
                  }
                }

                v154 = *__error();
                v152 = "aaCalloc";
                v153 = 371;
              }

              else
              {
                v147 = 0;
                v190 = 0;
                while (1)
                {
                  v148 = ctrl_reader_get(v192, v190);
                  if (!v148)
                  {
                    v152 = "ctrl_reader_get";
                    v153 = 349;
                    goto LABEL_314;
                  }

                  if ((*v148 & 0x8000000000000000) == 0)
                  {
                    v149 = *v148;
                  }

                  else
                  {
                    v149 = 0x8000000000000000 - *v148;
                  }

                  v150 = v148[v182 + 1];
                  if (v150 < 0)
                  {
                    v150 = 0x8000000000000000 - v150;
                  }

                  v180 = v150;
                  if (v149)
                  {
                    break;
                  }

LABEL_311:
                  v147 += v180;
                  if (++v190 >= *(v22 + 18))
                  {
                    goto LABEL_155;
                  }
                }

                while (1)
                {
                  v151 = v149 >= 0x10000 ? 0x10000 : v149;
                  if (v151 != aaByteStreamSimulate(v200))
                  {
                    break;
                  }

                  v147 += v151;
                  v149 -= v151;
                  if (!v149)
                  {
                    goto LABEL_311;
                  }
                }

                v152 = "aaByteStreamSimulate";
                v153 = 358;
LABEL_314:
                v154 = 0;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", v153, 135, v154, v152);
              goto LABEL_359;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 330, 135, 0, "AADecompressionInputStreamOpen");
            v192 = 0;
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 328, 135, 0, "aaIntervalInputStreamOpen");
            v192 = 0;
            v194 = 0;
          }

          v196 = 0;
          goto LABEL_359;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 322, 135, 0, "aaSegmentStreamOpen");
        v192 = 0;
        v194 = 0;
        v196 = 0;
      }

      else
      {
        if (v22[10])
        {
          if (*(a1 + 48))
          {
            fprintf(*MEMORY[0x29EDCA610], "ImagePatch: Patching with excess space <= %d bytes.\n", *(v22 + 26));
          }
        }

        else
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 245, 135, "ImagePatch: Patch not created with in place. No bound on needed excess space.");
        }

        v155 = v201[265];
        if (*(v198 + 2120) > v155)
        {
          v155 = *(v198 + 2120);
        }

        v193 = v155;
        v203 = AAFileStreamOpenWithPath(*(v198 + 2048), 2, 0x1A4u);
        if (!v203)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 252, 135, 0, "AAFileStreamOpenWithPath");
          goto LABEL_358;
        }

        if (v64)
        {
          if ((io_set_nocache(v203) & 0x80000000) != 0)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 257, 135, "io_set_nocache %s", *(v198 + 2048));
          }

          v156 = *(a1 + 48);
          v157 = v156 <= 3 ? v156 << 62 : 0xC000000000000000;
          v203 = aaCacheStreamOpen(v203, 0x1000000uLL, 0xEu, 1u, v157);
          if (!v203)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 259, 135, 0, "aaCacheStreamOpen");
            goto LABEL_358;
          }
        }

        v188 = aaInSituStreamOpen(v203, v193, *(v22 + 26), *(a1 + 48), 1);
        if (!v188)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 264, 135, 0, "aaInSituStreamOpen");
          goto LABEL_358;
        }

        if (*(v22 + 4) <= 1u)
        {
          s = 0;
          v200 = 0;
          compressed_stream = 0;
          v191 = 0;
          v181 = 0;
          v202 = v188;
          v81 = aaSegmentStreamOpen(v188, v198);
          goto LABEL_144;
        }

        v202 = v188;
LABEL_336:
        s = aaSegmentStreamOpen(v188, v201);
        if (!s)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 290, 135, 0, "aaSegmentStreamOpen");
          v192 = 0;
          v194 = 0;
          v196 = 0;
          v191 = 0;
          compressed_stream = 0;
          v205 = 0;
          v207 = 0;
          v200 = 0;
          s = 0;
          goto LABEL_359;
        }

        v200 = aaForkInputStreamOpen(s, v201, 0);
        if (!v200)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 292, 135, 0, "aaForkInputStreamOpen");
          v192 = 0;
          v194 = 0;
          v196 = 0;
          v191 = 0;
          compressed_stream = 0;
          v205 = 0;
          v207 = 0;
          v200 = 0;
          goto LABEL_359;
        }

        compressed_stream = aaIntervalInputStreamOpen(v7, *&v204[8 * v197], *&v204[8 * v206]);
        if (compressed_stream)
        {
          v158 = *(a1 + 48);
          if (v158 <= 3)
          {
            v159 = v158 << 62;
          }

          else
          {
            v159 = 0xC000000000000000;
          }

          v191 = AADecompressionInputStreamOpen(compressed_stream, v159, *(a1 + 44));
          if (v191)
          {
            if (v195)
            {
              goto LABEL_318;
            }

            v181 = 0;
            goto LABEL_143;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 298, 135, 0, "AADecompressionInputStreamOpen");
          v192 = 0;
          v194 = 0;
          v196 = 0;
          v191 = 0;
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 296, 135, 0, "aaIntervalInputStreamOpen");
          v192 = 0;
          v194 = 0;
          v196 = 0;
          v191 = 0;
          compressed_stream = 0;
        }
      }

      v205 = 0;
      v207 = 0;
      goto LABEL_359;
    }

    *(*v21 + 2048) = *(a1 + 16);
  }

  v139 = *v21;
  v140 = *(*v21 + 2048);
  v141 = *(a1 + 24);
  v142 = strcmp(v140, v141);
  v143 = *(a1 + 48);
  if (v142)
  {
    if (v143 >= 2)
    {
      fwrite("ImagePatch: Digest match. Copy input to output.\n", 0x30uLL, 1uLL, *MEMORY[0x29EDCA610]);
      v139 = *v21;
    }

    if ((copyFileSegment(v140, 0, *(v139 + 2120), v141) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 607, 135, 0, "copyFileSegment");
      goto LABEL_379;
    }
  }

  else if (v143 >= 2)
  {
    v144 = *MEMORY[0x29EDCA610];
    v145 = "ImagePatch: Digest match. Output already correct.\n";
    v146 = 50;
    goto LABEL_386;
  }

LABEL_387:
  v19 = 1;
  rawimg_show(*v21, 1, *(a1 + 48));
  if (*a1 && ((*a1)(*(a1 + 8), 100) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 641, 135, 0, "callback signaled abort");
LABEL_379:
    v19 = 0;
  }

  if (*(v22 + 4))
  {
    v164 = 0;
    do
    {
      rawimg_destroy(v21[v164++]);
    }

    while (v164 < *(v22 + 4));
  }

LABEL_27:
  if (!a2)
  {
LABEL_30:
    if (AAByteStreamClose(v7) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 649, 135, 0, "AAByteStreamClose");
      v19 = 0;
    }
  }

  free(v23);
  free(v22);
  free(v21);
  free(v20);
  if (v19)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ctrl_reader_get(uint64_t a1, unint64_t a2)
{
  v2 = a1 + 0x10000;
  v3 = *(a1 + 65560);
  if (*(v3 + 18) <= a2)
  {
    return 0;
  }

  v5 = a2 + a2 * *(v3 + 8);
  if (v5 >= *(a1 + 65584))
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 65568);
  *(a1 + 65584) = -*(a1 + 65576);
  AAByteStreamClose(*(a1 + 65552));
  *(v2 + 16) = 0;
  AAByteStreamClose(*(v2 + 8));
  *(v2 + 8) = 0;
  v7 = aaIntervalInputStreamOpen(*v2, *(v3 + 38), *(v3 + 46));
  *(v2 + 8) = v7;
  if (!v7)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "ctrl_reader_get", 81, 135, 0, "aaIntervalInputStreamOpen");
    return 0;
  }

  v8 = *(v6 + 48);
  if (v8 <= 3)
  {
    v9 = v8 << 62;
  }

  else
  {
    v9 = 0xC000000000000000;
  }

  v10 = AADecompressionInputStreamOpen(v7, v9, *(v6 + 44));
  *(v2 + 16) = v10;
  if (!v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "ctrl_reader_get", 83, 135, 0, "AADecompressionInputStreamOpen");
    return 0;
  }

LABEL_8:
  while (1)
  {
    v11 = *(v2 + 40);
    v12 = *(v2 + 48);
    v13 = v11 + v12;
    if (v5 < v11 + v12)
    {
      return a1 + 8 * (v5 - v12);
    }

    *(v2 + 48) = v13;
    v14 = *(v2 + 56) - v13;
    if (v14 < v11)
    {
      v11 = v14;
    }

    v15 = *(v2 + 16);
    if (*(v15 + 16))
    {
      v16 = 0;
      v17 = 8 * v11;
      if (8 * v11)
      {
        v18 = a1;
        v19 = 8 * v11;
        while (1)
        {
          v20 = (*(v15 + 16))(*v15, v18, v19);
          if (v20 < 0)
          {
            break;
          }

          if (v20)
          {
            v18 += v20;
            v16 += v20;
            v19 -= v20;
            if (v19)
            {
              continue;
            }
          }

          goto LABEL_19;
        }

        v16 = v20;
      }

LABEL_19:
      if (v17 == v16)
      {
        continue;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "ctrl_reader_get", 91, 135, 0, "aaByteStreamReadExpected");
    return 0;
  }
}

off_t AARandomAccessByteStreamProcess(AAByteStream istream, AAByteStream ostream, off_t max_offset, size_t block_size, AAFlagSet flags, int n_threads)
{
  if (block_size <= 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "AARandomAccessByteStreamProcess", 315, 89, 0, "Invalid arguments");
    return -1;
  }

  LODWORD(v6) = n_threads;
  if ((flags & 0x400) == 0)
  {
    if (n_threads <= 0)
    {
      LODWORD(v6) = getDefaultNThreads();
    }

    __s = 0;
    v54 = 0;
    v55 = 0;
    memset_s(&__s, 0x18uLL, 0, 0x18uLL);
    __s = ostream;
    v6 = v6;
    v11 = calloc(v6, 8uLL);
    if (v11)
    {
      v12 = v11;
      if (v6)
      {
        v13 = v11;
        v14 = v6;
        while (1)
        {
          v15 = malloc(0x38uLL);
          if (!v15)
          {
            v42 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processSequential", 125, 89, v42, "malloc");
            goto LABEL_55;
          }

          v16 = v15;
          memset_s(v15, 0x38uLL, 0, 0x38uLL);
          *v13 = v16;
          v16[1] = block_size;
          v16[2] = 0;
          *v16 = istream;
          if (block_size >= 0x2000000001)
          {
            break;
          }

          v17 = malloc(block_size);
          v16[3] = v17;
          if (!v17)
          {
            goto LABEL_54;
          }

          ++v13;
          if (!--v14)
          {
            goto LABEL_12;
          }
        }

        *__error() = 12;
        v16[3] = 0;
LABEL_54:
        v44 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processSequential", 131, 89, v44, "malloc");
LABEL_55:
        v18 = 0;
      }

      else
      {
LABEL_12:
        v18 = ThreadPipelineCreate(v6, v12, sequentialReaderProc, &__s, sequentialWriterProc, 0);
        if (v18)
        {
          v19 = 0;
          if (max_offset >= 0x7FFFFFFFFFFFFFFFLL)
          {
            max_offset = 0x7FFFFFFFFFFFFFFFLL;
          }

          while (1)
          {
            v20 = atomic_load(&v55 + 1);
            if (v20 || (v21 = atomic_load(&v55)) != 0)
            {
              v40 = 0;
              goto LABEL_61;
            }

            Worker = ThreadPipelineGetWorker(v18);
            if (!Worker)
            {
              break;
            }

            if ((v19 + block_size) >= max_offset)
            {
              v23 = max_offset;
            }

            else
            {
              v23 = v19 + block_size;
            }

            *(Worker + 32) = v23 - v19;
            *(Worker + 40) = v19;
            v19 = v23;
            if ((ThreadPipelineRunWorker(v18) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processSequential", 158, 89, 0, "running task");
              goto LABEL_60;
            }
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processSequential", 153, 89, 0, "allocating reader");
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processSequential", 136, 89, 0, "ThreadPipelineCreate");
        }
      }

LABEL_60:
      v40 = 1;
LABEL_61:
      ThreadPipelineDestroy(v18);
      if (v6)
      {
        v46 = v12;
        do
        {
          v47 = *v46++;
          free(v47[3]);
          free(v47);
          --v6;
        }

        while (v6);
      }

      free(v12);
      if ((v40 & 1) == 0)
      {
        return v54;
      }
    }

    else
    {
      v38 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processSequential", 121, 89, *v38, "malloc");
      ThreadPipelineDestroy(0);
    }

    return -1;
  }

  if (n_threads <= 0)
  {
    LODWORD(v6) = getDefaultNThreads();
  }

  LODWORD(__s) = 0;
  v56 = 0;
  v24 = v6;
  v25 = calloc(v6, 8uLL);
  if (!v25)
  {
    v39 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processRandomAccess", 246, 89, *v39, "malloc");
    ThreadPoolDestroy(0);
    return -1;
  }

  v52 = v25;
  if (v6)
  {
    v26 = v25;
    v6 = v6;
    while (1)
    {
      v27 = malloc(0x48uLL);
      if (!v27)
      {
        v43 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processRandomAccess", 250, 89, v43, "malloc", max_offset);
        goto LABEL_58;
      }

      v28 = v27;
      memset_s(v27, 0x48uLL, 0, 0x48uLL);
      *v26 = v28;
      *v28 = istream;
      v28[1] = ostream;
      v28[4] = &__s;
      v28[5] = &v56;
      v28[2] = block_size;
      if (block_size >= 0x2000000001)
      {
        break;
      }

      v29 = malloc(block_size);
      v28[3] = v29;
      if (!v29)
      {
        goto LABEL_57;
      }

      ++v26;
      if (!--v6)
      {
        goto LABEL_33;
      }
    }

    *__error() = 12;
    v28[3] = 0;
LABEL_57:
    v45 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processRandomAccess", 258, 89, v45, "malloc", max_offset);
LABEL_58:
    v31 = 0;
    v41 = 1;
    v30 = v52;
  }

  else
  {
LABEL_33:
    v30 = v52;
    v31 = ThreadPoolCreate(v24, v52, randomAccessWorkerProc);
    if (v31)
    {
      v32 = 0;
      if (max_offset >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v33 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = max_offset;
      }

      while (1)
      {
        v34 = atomic_load(&__s);
        if (v34 || (v35 = atomic_load(&v56)) != 0)
        {
          v41 = 0;
          goto LABEL_68;
        }

        v36 = ThreadPoolGetWorker(v31);
        if (!v36)
        {
          break;
        }

        if ((v32 + block_size) >= v33)
        {
          v37 = v33;
        }

        else
        {
          v37 = v32 + block_size;
        }

        *(v36 + 56) = v37 - v32;
        *(v36 + 64) = v32;
        v32 = v37;
        if ((ThreadPoolRunWorker(v31) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processRandomAccess", 285, 89, 0, "running task", max_offset);
          goto LABEL_67;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processRandomAccess", 280, 89, 0, "allocating reader", max_offset);
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processRandomAccess", 263, 89, 0, "ThreadPipelineCreate", max_offset);
    }

LABEL_67:
    v41 = 1;
  }

LABEL_68:
  ThreadPoolDestroy(v31);
  v48 = 0;
  if (v24)
  {
    v49 = v30;
    do
    {
      v50 = *v49++;
      v48 += *(v50 + 48);
      free(*(v50 + 24));
      free(v50);
      --v24;
    }

    while (v24);
  }

  free(v30);
  if (v41)
  {
    return -1;
  }

  return v48;
}

uint64_t sequentialReaderProc(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 48) = 0;
  v2 = *(a1 + 32);
  if (v2 > *(a1 + 8))
  {
    goto LABEL_2;
  }

  if (!v2)
  {
    return 0;
  }

  v4 = AAByteStreamPRead(*a1, *(a1 + 24), v2, *(a1 + 40));
  if (v4 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "sequentialReaderProc", 49, 89, 0, "PRead");
LABEL_2:
    *(a1 + 48) = 1;
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  result = 0;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sequentialWriterProc(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 20);
  if (atomic_load((a1 + 20)))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a2 + 48))
  {
    v7 = *(a2 + 16);
    if (!v7)
    {
      result = 0;
      v2 = (a1 + 16);
      goto LABEL_5;
    }

    v8 = *(a2 + 24);
    while (1)
    {
      v9 = AAByteStreamWrite(*a1, v8, v7);
      if (v9 <= 0)
      {
        break;
      }

      v8 += v9;
      *(a1 + 8) += v9;
      v7 -= v9;
      if (!v7)
      {
        return 0;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "sequentialWriterProc", 87, 89, 0, "Write failed");
  }

  result = 0xFFFFFFFFLL;
LABEL_5:
  v5 = 0;
  atomic_compare_exchange_strong(v2, &v5, 1u);
  return result;
}

uint64_t randomAccessWorkerProc(uint64_t a1)
{
  if (!atomic_load(*(a1 + 32)))
  {
    v3 = *(a1 + 56);
    if (v3 <= *(a1 + 16))
    {
      if (!v3)
      {
        return 0;
      }

      v4 = AAByteStreamPRead(*a1, *(a1 + 24), v3, *(a1 + 64));
      if (v4 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "randomAccessWorkerProc", 207, 89, 0, "PRead");
      }

      else
      {
        v5 = v4;
        if (!v4)
        {
          v7 = 0;
          result = 0;
          atomic_compare_exchange_strong(*(a1 + 40), &v7, 1u);
          return result;
        }

        if (AAByteStreamPWrite(*(a1 + 8), *(a1 + 24), v4, *(a1 + 64)) == v4)
        {
          result = 0;
          *(a1 + 48) += v5;
          return result;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "randomAccessWorkerProc", 219, 89, 0, "Write");
      }
    }

    v8 = 0;
    atomic_compare_exchange_strong(*(a1 + 32), &v8, 1u);
  }

  return 0xFFFFFFFFLL;
}

void *AEADecryptionDirectRandomAccessInputStreamOpen(AAByteStream_impl *a1, uint64_t a2, AAByteStream_impl *a3, int a4)
{
  if (a4 <= 0)
  {
    getDefaultNThreads();
  }

  if (!*(a2 + 2736) || !*(a2 + 2728))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADirectRandomAccessDecryptionStream.c", "AEADecryptionDirectRandomAccessInputStreamOpen", 148, 122, 0, "Invalid context");
    v9 = 0;
    v7 = 0;
LABEL_15:
    BlockDecryptionStreamClose(v9);
    free(v7);
    return 0;
  }

  v7 = calloc(1uLL, 0x68uLL);
  v8 = malloc(0x30uLL);
  v9 = v8;
  if (!v8 || (memset_s(v8, 0x30uLL, 0, 0x30uLL), !v7))
  {
    v15 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADirectRandomAccessDecryptionStream.c", "AEADecryptionDirectRandomAccessInputStreamOpen", 153, 122, v15, "malloc");
    goto LABEL_15;
  }

  *v9 = a1;
  v9[1] = a3;
  if ((a3 & 0x400000000000000) != 0)
  {
    *(a2 + 2740) = 1;
  }

  Existing = aeaContainerCreateExisting(a2, a1, 1, 0);
  v9[2] = Existing;
  if (!Existing)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADirectRandomAccessDecryptionStream.c", "AEADecryptionDirectRandomAccessInputStreamOpen", 166, 122, 0, "unlock container");
    goto LABEL_15;
  }

  if (*(Existing + 24))
  {
    v11 = aeaEffectiveCompressionAlgorithm(*(Existing + 24));
    v9[3] = compression_decode_scratch_buffer_size(v11);
    Existing = v9[2];
  }

  *v7 = v9;
  v7[1] = BlockDecryptionStreamClose;
  v7[7] = BlockDecryptionStreamCancel;
  v7[4] = BlockDecryptionStreamPRead;
  v7[2] = BlockDecryptionStreamRead;
  *a2 = *Existing;
  v12 = *(Existing + 16);
  v13 = *(Existing + 32);
  v14 = *(Existing + 48);
  *(a2 + 64) = *(Existing + 64);
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  *(a2 + 16) = v12;
  return v7;
}

uint64_t BlockDecryptionStreamClose(void *a1)
{
  if (a1)
  {
    aeaContainerDestroy(a1[2]);
    free(a1);
  }

  return 0;
}

void BlockDecryptionStreamCancel(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 32), &v1, 1u);
  if (!v1)
  {
    AAByteStreamCancel(*a1);
  }
}

uint64_t BlockDecryptionStreamPRead(void *a1, uint8_t *a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADirectRandomAccessDecryptionStream.c", "BlockDecryptionStreamPRead", 55, 122, 0, "negative offset");
    goto LABEL_6;
  }

  v4 = a4;
  v5 = a4 + a3;
  if (__CFADD__(a4, a3))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADirectRandomAccessDecryptionStream.c", "BlockDecryptionStreamPRead", 59, 122, 0, "invalid request");
LABEL_6:
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = -1;
    goto LABEL_48;
  }

  v11 = a1[2];
  v12 = *(v11 + 32);
  if (v12 <= a4 || (v5 >= v12 ? (v13 = *(v11 + 32)) : (v13 = a4 + a3), v5 <= a4))
  {
    v9 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_48;
  }

  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v33 = *(v11 + 24);
  v15 = *(v11 + 16);
  __size = v15;
  v32 = v13;
  while (1)
  {
    v16 = v7;
    v17 = v4 / v15;
    v18 = a1[2];
    if (v4 / v15 >= *(v18 + 400))
    {
      v30 = v8;
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADirectRandomAccessDecryptionStream.c", "BlockDecryptionStreamPRead", 69, 122, 0, "invalid state");
      v8 = v30;
LABEL_51:
      v9 = -1;
      v7 = v16;
      goto LABEL_48;
    }

    v19 = v17 * v15;
    v20 = *(*(v18 + 392) + 544 * v17 + 4);
    v21 = v17 * v15 + v20;
    if (v4 <= v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = v4;
    }

    if (v21 >= v13)
    {
      v21 = v13;
    }

    v34 = v22;
    v23 = v21 - v22;
    v24 = v19 >= v4 && v23 == v20;
    v25 = v24;
    v36 = v25;
    if (v24)
    {
      v38 = a2;
      goto LABEL_30;
    }

    v38 = v8;
    if (!v8)
    {
      v8 = malloc(__size);
      v38 = v8;
      if (!v8)
      {
        v31 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADirectRandomAccessDecryptionStream.c", "BlockDecryptionStreamPRead", 93, 122, *v31, "malloc");
        v8 = 0;
        goto LABEL_51;
      }
    }

LABEL_30:
    v37 = v8;
    if (v33)
    {
      v7 = v16;
      if (!v16)
      {
        v7 = malloc(__size);
      }

      if (!v6)
      {
        v26 = a1[3];
        if (v26)
        {
          if (v26 < 0x2000000001)
          {
            v6 = malloc(v26);
          }

          else
          {
            v6 = 0;
            *__error() = 12;
          }
        }
      }

      if (!v7 || !v6 && a1[3])
      {
        v29 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADirectRandomAccessDecryptionStream.c", "BlockDecryptionStreamPRead", 100, 122, v29, "malloc");
        goto LABEL_53;
      }

      v16 = v7;
      v18 = a1[2];
    }

    v27 = v18;
    v7 = v16;
    if (aeaContainerLoadSegment(v27, *a1, v17, v38, v16, v6) < 0)
    {
      break;
    }

    if ((v36 & 1) == 0)
    {
      memcpy(a2, &v38[v34 - v19], v23);
    }

    v4 += v23;
    a2 += v23;
    v9 += v23;
    v13 = v32;
    v8 = v37;
    v15 = __size;
    if (v4 >= v32)
    {
      goto LABEL_48;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADirectRandomAccessDecryptionStream.c", "BlockDecryptionStreamPRead", 105, 122, 0, "loading segment");
LABEL_53:
  v9 = -1;
  v8 = v37;
LABEL_48:
  free(v8);
  free(v7);
  free(v6);
  return v9;
}

uint64_t ECC65537GetParity(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x29EDCA608];
  if (a1 > 0x1FFE0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = (a1 & 1) + a1;
  if (v4)
  {
    v5 = 0uLL;
    v6 = vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_296AD18A0), vceqzq_s32(qword_296AD18B0)));
    v7 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(ECC65537_G), vceqzq_s32(unk_296AD1890))));
    v8.i64[0] = 0xFFFF0000FFFFLL;
    v8.i64[1] = 0xFFFF0000FFFFLL;
    v9.i64[0] = 0x1000100010001;
    v9.i64[1] = 0x1000100010001;
    v10.i64[0] = 0x1000100010001;
    v10.i64[1] = 0x1000100010001;
    v11.i64[0] = 0x100000001;
    v11.i64[1] = 0x100000001;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    do
    {
      v15 = v4 - 2;
      if (v4 <= a1)
      {
        v16 = *(a2 + v15);
      }

      else
      {
        v16 = *(a2 + v15);
      }

      v17 = vextq_s8(v5, v12, 0xCuLL);
      v18 = vextq_s8(v12, v13, 0xCuLL);
      v19 = vextq_s8(v13, v14, 0xCuLL);
      v20 = vdupq_laneq_s32(v14, 3);
      v21 = vextq_s8(qword_296AD18B0, v5, 0xCuLL);
      v21.i32[0] = v16;
      v22 = vmulq_laneq_s32(ECC65537_G, v14, 3);
      v23 = vmulq_laneq_s32(unk_296AD1890, v14, 3);
      v24 = vmulq_laneq_s32(xmmword_296AD18A0, v14, 3);
      v25 = vmulq_laneq_s32(qword_296AD18B0, v14, 3);
      v26 = vceqzq_s32(v20);
      v27 = vuzp1q_s16(v26, v26);
      v28 = vuzp1q_s16(vceqzq_s32(v24), vceqzq_s32(v25));
      v29 = vmovn_s16(vuzp1q_s16(vceqzq_s32(v22), vceqzq_s32(v23)));
      v30 = vsubq_s32(vandq_s8(v25, v8), vshrq_n_u32(v25, 0x10uLL));
      v31 = vsubq_s32(vandq_s8(v24, v8), vshrq_n_u32(v24, 0x10uLL));
      v32 = vsubq_s32(vandq_s8(v23, v8), vshrq_n_u32(v23, 0x10uLL));
      v33 = vsubq_s32(vandq_s8(v22, v8), vshrq_n_u32(v22, 0x10uLL));
      v34 = vand_s8(vand_s8(v7, v29), vmovn_s16(vmvnq_s8(v27)));
      *v27.i8 = vmovn_s16(vandq_s8(vbicq_s8(v6, v27), v28));
      v35 = vsubq_s32(v19, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v27.i8, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v30, vandq_s8(vcgtq_u32(v30, v10), v9))));
      v36 = vsubq_s32(v18, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v27.i8, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v31, vandq_s8(vcgtq_u32(v31, v10), v9))));
      v37 = vsubq_s32(v17, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v34, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v32, vandq_s8(vcgtq_u32(v32, v10), v9))));
      v38 = vsubq_s32(v21, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v34, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v33, vandq_s8(vcgtq_u32(v33, v10), v9))));
      v14 = vaddq_s32(v35, vandq_s8(vcgtq_u32(v35, v10), v9));
      v13 = vaddq_s32(v36, vandq_s8(vcgtq_u32(v36, v10), v9));
      v12 = vaddq_s32(v37, vandq_s8(vcgtq_u32(v37, v10), v9));
      v5 = vaddq_s32(v38, vandq_s8(vcgtq_u32(v38, v10), v9));
      v4 = v15;
    }

    while (v15);
  }

  else
  {
    v5 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  v39 = 0;
  v40 = 0;
  v43[0] = v5;
  v43[1] = v12;
  v43[2] = v13;
  v43[3] = v14;
  do
  {
    v41 = *(v43 + v39);
    if (v41)
    {
      v42 = 65537 - v41;
    }

    else
    {
      v42 = 0;
    }

    v40 |= (1 << v39) & (v42 << 15 >> 31);
    *(a3 + 2 * v39++) = v42;
  }

  while (v39 != 16);
  result = 0;
  *(a3 + 32) = v40;
  return result;
}

uint64_t ECC65537CheckAndFix(unsigned int a1, uint64_t a2, uint16x8_t *a3, _DWORD *a4)
{
  v111 = *MEMORY[0x29EDCA608];
  v7 = 0uLL;
  v8 = (a1 & 1) + a1;
  if (v8)
  {
    v9 = 0uLL;
    v10 = vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_296AD18A0), vceqzq_s32(qword_296AD18B0)));
    v11 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(ECC65537_G), vceqzq_s32(unk_296AD1890))));
    v12.i64[0] = 0xFFFF0000FFFFLL;
    v12.i64[1] = 0xFFFF0000FFFFLL;
    v13.i64[0] = 0x1000100010001;
    v13.i64[1] = 0x1000100010001;
    v14.i64[0] = 0x1000100010001;
    v14.i64[1] = 0x1000100010001;
    v15.i64[0] = 0x100000001;
    v15.i64[1] = 0x100000001;
    v16 = (a1 & 1) + a1;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    do
    {
      v20 = v16 - 2;
      if (v16 <= a1)
      {
        v21 = *(a2 + v20);
      }

      else
      {
        v21 = *(a2 + v20);
      }

      v22 = vextq_s8(v9, v17, 0xCuLL);
      v23 = vextq_s8(v17, v18, 0xCuLL);
      v24 = vextq_s8(v18, v19, 0xCuLL);
      v25 = vdupq_laneq_s32(v19, 3);
      v26 = vextq_s8(0, v9, 0xCuLL);
      v26.i32[0] = v21;
      v27 = vmulq_laneq_s32(ECC65537_G, v19, 3);
      v28 = vmulq_laneq_s32(unk_296AD1890, v19, 3);
      v29 = vmulq_laneq_s32(xmmword_296AD18A0, v19, 3);
      v30 = vmulq_laneq_s32(qword_296AD18B0, v19, 3);
      v31 = vceqzq_s32(v25);
      v32 = vuzp1q_s16(v31, v31);
      v33 = vuzp1q_s16(vceqzq_s32(v29), vceqzq_s32(v30));
      v34 = vmovn_s16(vuzp1q_s16(vceqzq_s32(v27), vceqzq_s32(v28)));
      v35 = vsubq_s32(vandq_s8(v30, v12), vshrq_n_u32(v30, 0x10uLL));
      v36 = vsubq_s32(vandq_s8(v29, v12), vshrq_n_u32(v29, 0x10uLL));
      v37 = vsubq_s32(vandq_s8(v28, v12), vshrq_n_u32(v28, 0x10uLL));
      v38 = vsubq_s32(vandq_s8(v27, v12), vshrq_n_u32(v27, 0x10uLL));
      v39 = vand_s8(vand_s8(v11, v34), vmovn_s16(vmvnq_s8(v32)));
      *v32.i8 = vmovn_s16(vandq_s8(vbicq_s8(v10, v32), v33));
      v40 = vsubq_s32(v24, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v32.i8, 0)), 0x1FuLL)), v15, vaddq_s32(v35, vandq_s8(vcgtq_u32(v35, v14), v13))));
      v41 = vsubq_s32(v23, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v32.i8, 0)), 0x1FuLL)), v15, vaddq_s32(v36, vandq_s8(vcgtq_u32(v36, v14), v13))));
      v42 = vsubq_s32(v22, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v39, 0)), 0x1FuLL)), v15, vaddq_s32(v37, vandq_s8(vcgtq_u32(v37, v14), v13))));
      v43 = vsubq_s32(v26, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v39, 0)), 0x1FuLL)), v15, vaddq_s32(v38, vandq_s8(vcgtq_u32(v38, v14), v13))));
      v19 = vaddq_s32(v40, vandq_s8(vcgtq_u32(v40, v14), v13));
      v18 = vaddq_s32(v41, vandq_s8(vcgtq_u32(v41, v14), v13));
      v17 = vaddq_s32(v42, vandq_s8(vcgtq_u32(v42, v14), v13));
      v9 = vaddq_s32(v43, vandq_s8(vcgtq_u32(v43, v14), v13));
      v16 = v20;
    }

    while (v20);
  }

  else
  {
    v9 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v44 = 0;
  v110[0] = v9;
  v110[1] = v17;
  v110[2] = v18;
  v110[3] = v19;
  v45 = xmmword_296AD1830;
  v46 = vdupq_n_s32(a3[2].u16[0]);
  v47 = xmmword_296AD1840;
  v48.i64[0] = 0x100000001;
  v48.i64[1] = 0x100000001;
  v49.i64[0] = 0x1000000010000;
  v49.i64[1] = 0x1000000010000;
  v50.i64[0] = 0x800000008;
  v50.i64[1] = 0x800000008;
  v51 = 0uLL;
  do
  {
    v52 = *a3++;
    v53 = vmovl_u16(*v52.i8);
    v54 = vmovl_high_u16(v52);
    v55 = &v110[v44];
    v56 = vaddq_s32(vbslq_s8(vceqzq_s32(vandq_s8(vshlq_u32(v48, v45), v46)), v54, (*&v54 | __PAIR128__(0x1000000010000, 0x1000000010000))), v110[v44 + 1]);
    v57 = vaddq_s32(vbslq_s8(vceqzq_s32(vandq_s8(vshlq_u32(v48, v47), v46)), v53, (*&v53 | __PAIR128__(0x1000000010000, 0x1000000010000))), v110[v44]);
    v58 = vminq_u32(vaddq_s32(v56, v49), v56);
    v59 = vminq_u32(vaddq_s32(v57, v49), v57);
    *v55 = v59;
    v55[1] = v58;
    v51 = vorrq_s8(v58, v51);
    v7 = vorrq_s8(v59, v7);
    v47 = vaddq_s32(v47, v50);
    v45 = vaddq_s32(v45, v50);
    v44 += 2;
  }

  while (v44 != 4);
  v60 = vorrq_s8(v7, v51);
  if (!*&vorr_s8(*v60.i8, *&vextq_s8(v60, v60, 8uLL)))
  {
    return 0;
  }

  v61 = calloc(1uLL, 0x4C0uLL);
  if (!v61)
  {
    v105 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection_ECC65537.c", "ECC65537CheckAndFix", 423, 63, *v105, "malloc");
    return 0xFFFFFFFFLL;
  }

  v62 = v61;
  v108 = a1;
  v109 = a2;
  v63 = 0;
  v64 = v8 >> 1;
  v65 = 1;
  do
  {
    v62[v63] = ecc65537PolyEval(0x10u, v110, v65);
    v66 = (3 * v65) - ((3 * v65) >> 16);
    if (v66 + 65537 >= v66)
    {
      v65 = (3 * v65) - ((3 * v65) >> 16);
    }

    else
    {
      v65 = v66 + 65537;
    }

    ++v63;
  }

  while (v63 != 16);
  v67 = 0;
  v68 = v62 + 48;
  v69 = 48;
  do
  {
    v70 = &v62[v69];
    v71 = *&v62[v67];
    v72 = *&v62[v67 + 4];
    v70[8] = v62[v67 + 8];
    *v70 = v71;
    *(v70 + 1) = v72;
    v69 += 16;
    ++v67;
  }

  while (v67 != 8);
  v73 = ecc65537Triangulate(8u, 9, (v62 + 48));
  if (v73 < 1)
  {
    goto LABEL_84;
  }

  LODWORD(v74) = v73;
  if ((ecc65537Solve(v73, v62 + 48, (v62 + 16)) & 0x80000000) != 0)
  {
    goto LABEL_84;
  }

  v75 = 0;
  v76 = 0;
  v77 = v62 + 32;
  v78 = v64 + 16;
  v79 = 1;
  do
  {
    if (!ecc65537PolyEval(v74 + 1, (v62 + 16), v79) && v76 <= 7)
    {
      v77[v76++] = v75;
    }

    v80 = (3 * v79) - ((3 * v79) >> 16);
    if (v80 + 65537 >= v80)
    {
      v79 = (3 * v79) - ((3 * v79) >> 16);
    }

    else
    {
      v79 = v80 + 65537;
    }

    ++v75;
  }

  while (v78 != v75);
  if (v76 != v74)
  {
    goto LABEL_84;
  }

  v107 = a4;
  v81 = 0;
  v74 = v74;
  do
  {
    v82 = 0;
    do
    {
      v83 = v77[v82] * v81;
      if (v83)
      {
        v84 = 3;
        if (v83 < 0)
        {
          v84 = ecc65537Inv(3);
          v83 = -v83;
        }

        v85 = v83;
        v86 = 1;
        while (1)
        {
          if (v85)
          {
            if (v84 && v86 && !(v86 * v84))
            {
              v86 = 1;
            }

            else
            {
              v86 = (v86 * v84) - ((v86 * v84) >> 16);
              if (v86 + 65537 < v86)
              {
                v86 += 65537;
              }
            }
          }

          if (v85 < 2)
          {
            break;
          }

          v85 >>= 1;
          v87 = v84 * v84;
          if (v84)
          {
            v84 = 1;
            if (!v87)
            {
              continue;
            }
          }

          v88 = v87 - HIWORD(v87);
          if (v88 + 65537 >= v88)
          {
            v84 = v88;
          }

          else
          {
            v84 = v88 + 65537;
          }
        }
      }

      else
      {
        v86 = 1;
      }

      v68[v82 + (16 * v81)] = v86;
      ++v82;
    }

    while (v82 != v74);
    v89 = v62[v81];
    if (v89)
    {
      v90 = 65537 - v89;
    }

    else
    {
      v90 = 0;
    }

    v68[16 * v81++ + v74] = v90;
  }

  while (v81 != v74);
  if (ecc65537Triangulate(v74, v74 + 1, (v62 + 48)) == v74)
  {
    v91 = v62 + 40;
    a4 = v107;
    if ((ecc65537Solve(v74, v62 + 48, (v62 + 40)) & 0x80000000) == 0)
    {
      v93 = 0;
      v94 = 0;
      while (1)
      {
        v95 = *(v91 - 8);
        if (v108 > 2 * v95)
        {
          v96 = 2 * v95;
          v97 = v96 + 2 <= v108 || v108 - v96 == 2;
          v98 = v97;
          if (v97)
          {
            v99 = *(v109 + v96);
          }

          else
          {
            v99 = *(v109 + v96);
          }

          v100 = v99 - *v91;
          if (v100 + 65537 < v100)
          {
            v100 += 65537;
          }

          if (HIWORD(v100))
          {
            goto LABEL_85;
          }

          v101 = v100 ^ v99;
          v92.i32[0] = v101;
          v92 = vcnt_s8(v92);
          v92.i16[0] = vaddlv_u8(v92);
          v94 += v92.i32[0];
          if (v101 <= 0xFF)
          {
            v102 = v93;
          }

          else
          {
            v102 = v93 + 1;
          }

          if (v101)
          {
            v93 = v102 + 1;
          }

          else
          {
            v93 = v102;
          }

          if (v98)
          {
            *(v109 + v96) = v100;
          }

          else
          {
            *(v109 + v96) = v100;
          }
        }

        ++v91;
        v103 = v93;
        if (!--v74)
        {
          goto LABEL_86;
        }
      }
    }

LABEL_84:
    v94 = 0;
    LODWORD(v93) = 0;
LABEL_85:
    v103 = 0xFFFFFFFFLL;
    goto LABEL_86;
  }

  v94 = 0;
  LODWORD(v93) = 0;
  v103 = 0xFFFFFFFFLL;
  a4 = v107;
LABEL_86:
  free(v62);
  if (a4 && (v103 & 0x80000000) == 0)
  {
    v104 = a4[1] + v93;
    *a4 += v94;
    a4[1] = v104;
  }

  return v103;
}

uint64_t ecc65537PolyEval(unsigned int a1, uint64_t a2, int a3)
{
  if (a1 < 1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v5 = a1 + 1;
  v6 = (a2 + 4 * a1 - 4);
  do
  {
    if (a3 && result && !(result * a3))
    {
      v7 = 1;
    }

    else
    {
      v7 = (result * a3) - ((result * a3) >> 16);
      if (v7 + 65537 < v7)
      {
        v7 += 65537;
      }
    }

    v8 = *v6--;
    v9 = v7 + v8;
    if (v9 - 65537 >= v9)
    {
      result = v9;
    }

    else
    {
      result = v9 - 65537;
    }

    --v5;
  }

  while (v5 > 1);
  return result;
}

uint64_t ecc65537Triangulate(unsigned int a1, int a2, uint64_t a3)
{
  if (a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  LODWORD(v5) = 0;
  v6 = a3 + 64;
  v7 = a3;
  v8 = 1;
  while (v4 >= a2)
  {
    LODWORD(v12) = v5;
LABEL_12:
    v5 = v3;
    if (v4 == a2)
    {
      return v5;
    }

    v14 = 16 * v3;
    if (v3 != v12 && a2 > 0)
    {
      v15 = 0;
      v16 = a3 + 64 * v12;
      do
      {
        v17 = *(v16 + v15);
        *(v16 + v15) = *(v7 + v15);
        *(v7 + v15) = v17;
        v15 += 4;
      }

      while (4 * a2 != v15);
    }

    if (++v3 < a1)
    {
      v18 = *(a3 + 4 * v14 + 4 * v4);
      v19 = a3 + 4 * v4;
      v20 = (a3 + 4 * v14 + 4 * (v4 + 1));
      v21 = v8;
      v22 = (v6 + 4 * (v4 + 1));
      do
      {
        v23 = *(v19 + (v21 << 6));
        if (v23)
        {
          *(v19 + (v21 << 6)) = 0;
          if (v4 + 1 < a2)
          {
            v24 = a2 - 1 - v4;
            v25 = v22;
            v26 = v20;
            do
            {
              if (v18 && (*v25 ? (v27 = *v25 * v18 == 0) : (v27 = 0), v27))
              {
                v28 = 1;
              }

              else
              {
                v28 = (*v25 * v18) - ((*v25 * v18) >> 16);
                if (v28 + 65537 < v28)
                {
                  v28 += 65537;
                }
              }

              v30 = *v26++;
              v29 = v30;
              v31 = v30 * v23;
              v32 = (v30 * v23) - ((v30 * v23) >> 16);
              v33 = v32 + 65537;
              if (v32 + 65537 >= v32)
              {
                v33 = v32;
              }

              if (v29)
              {
                v34 = v31 == 0;
              }

              else
              {
                v34 = 0;
              }

              if (v34)
              {
                v33 = 1;
              }

              v35 = v28 - v33;
              if (v35 + 65537 < v35)
              {
                v35 += 65537;
              }

              *v25 = v35;
              v25 += 2;
              --v24;
            }

            while (v24);
          }
        }

        ++v21;
        v22 += 32;
      }

      while (v21 != a1);
    }

    ++v8;
    v7 += 64;
    v6 += 64;
    if (v3 == a1)
    {
      return a1;
    }
  }

  v9 = v4;
  v10 = (v7 + 4 * v4);
  while (2)
  {
    v11 = v10;
    v12 = v3;
    do
    {
      v13 = *v11;
      v11 += 16;
      if (v13)
      {
        v4 = v9;
        goto LABEL_12;
      }

      ++v12;
    }

    while (a1 != v12);
    ++v9;
    ++v10;
    if (v9 != a2)
    {
      continue;
    }

    return v3;
  }
}

uint64_t ecc65537Solve(unsigned int a1, int *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 <= 0)
  {
    v26 = 0;
    *(a3 + 4 * a1) = 1;
  }

  else
  {
    v5 = a1;
    v6 = a1;
    v7 = a2;
    do
    {
      v8 = *v7;
      v7 += 17;
      if (!v8)
      {
        return 0xFFFFFFFFLL;
      }

      --v6;
    }

    while (v6);
    *(a3 + 4 * a1) = 1;
    v9 = a1;
    v10 = 17 * a1 - 16;
    v11 = a1;
    do
    {
      if (v11 <= v5)
      {
        v12 = 0;
        v13 = v10;
        v14 = v9;
        do
        {
          v15 = *(a3 + 4 * v14);
          v16 = a2[v13];
          if (v15)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17 && v16 * v15 == 0)
          {
            v19 = 1;
          }

          else
          {
            v19 = (v16 * v15) - ((v16 * v15) >> 16);
            if (v19 + 65537 < v19)
            {
              v19 += 65537;
            }
          }

          v20 = v19 + v12;
          if (v20 - 65537 >= v20)
          {
            v12 = v20;
          }

          else
          {
            v12 = v20 - 65537;
          }

          --v13;
          v21 = v11 < v14--;
        }

        while (v21);
      }

      else
      {
        v12 = 0;
      }

      v22 = ecc65537Inv(a2[17 * v11 - 17]);
      if (v12 && (v22 ? (v23 = v22 * v12 == 0) : (v23 = 0), v23))
      {
        v24 = 1;
      }

      else
      {
        v24 = (v22 * v12) - ((v22 * v12) >> 16);
        if (v24 + 65537 < v24)
        {
          v24 += 65537;
        }
      }

      if (65537 - v24 >= -v24)
      {
        v25 = -v24;
      }

      else
      {
        v25 = 65537 - v24;
      }

      *(a3 + 4 * (v11 - 1)) = v25;
      v10 -= 16;
      v21 = v11-- <= 1;
    }

    while (!v21);
    return 0;
  }

  return v26;
}

uint64_t ecc65537Inv(uint64_t a1)
{
  if (a1 == 1)
  {
    LODWORD(v1) = 1;
  }

  else
  {
    v2 = 0;
    v3 = 1;
    v4 = 65537;
    do
    {
      if (a1 <= v4)
      {
        v5 = -1;
        do
        {
          v6 = a1 << (v5 + 2);
          ++v5;
        }

        while (v6 <= v4);
        v4 = (v4 - (a1 << v5));
        v2 = (v2 - (v3 << v5));
      }

      v1 = v2;
      v7 = v4;
      v2 = v3;
      v3 = v1;
      v4 = a1;
      a1 = v7;
    }

    while (v7 != 1);
  }

  v8 = v1 + 65537 * (((v1 & ~(v1 >> 31)) - (v1 + (v1 >> 31))) / 0x10001 + (v1 >> 31));
  if (v8 <= 0x10000)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = v1 + 65537 * (((v1 & ~(v1 >> 31)) - (v1 + (v1 >> 31))) / 0x10001 + (v1 >> 31));
  }

  return v8 - ((((2147450881 * v9) >> 32) >> 15) | (((2147450881 * v9) >> 32) >> 15 << 16));
}

uint64_t ParallelCompressionGetCompressedSize(uint64_t a1, unint64_t a2, int a3)
{
  v3 = a2;
  if (a2 >= 0x400)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0;
    v5 = IMemStreamCreate(a1, a2);
    if (v5)
    {
      DWORD2(v8) = a3;
      LODWORD(v8) = 0;
      DWORD1(v8) = getDefaultNThreads();
      *&v9 = 0x200000;
      *(&v9 + 1) = IMemStreamRead;
      *(&v10 + 1) = v5;
      *&v11 = getCompressedSizeCounterProc;
      v12 = &v7;
      if (!ParallelCompressionEncode(&v8))
      {
        if (v7 < v3)
        {
          v3 = v7;
        }

        goto LABEL_9;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ParallelCompressionGetCompressedSize", 75, 39, 0, "ParallelCompressionEncode");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ParallelCompressionGetCompressedSize", 64, 39, 0, "IMemStreamCreate");
    }

    v3 = -1;
LABEL_9:
    OMemStreamDestroy(v5);
  }

  return v3;
}

uint64_t IDecoderStreamThreadProc(uint64_t a1)
{
  if (ParallelCompressionDecode(a1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamThreadProc", 100, 39, 0, "decoder failed");
  }

  return 0;
}

_OWORD *IDecoderStreamCreate(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x48uLL);
  v11 = v10;
  if (v10)
  {
    v10[2] = 0u;
    v10[3] = 0u;
    *v10 = 0u;
    v10[1] = 0u;
    v12 = SharedBufferCreate(a4);
    *(v11 + 64) = v12;
    if (!v12)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 112, 39, 0, "fail to init buffer");
      goto LABEL_7;
    }

    *v11 = 0;
    *(v11 + 4) = a5;
    *(v11 + 8) = a1;
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    *(v11 + 32) = SharedBufferWrite;
    *(v11 + 40) = SharedBufferAbort;
    *(v11 + 48) = v12;
    if (createThread((v11 + 56), IDecoderStreamThreadProc, v11, 0))
    {
      v13 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 125, 39, v13, "failed to start decoder thread");
LABEL_7:
      IDecoderStreamDestroy(v11);
      return 0;
    }
  }

  else
  {
    v14 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 107, 39, *v14, "malloc");
  }

  return v11;
}

void IDecoderStreamDestroy(void *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a1[8])
    {
      while (1)
      {
        v2 = SharedBufferRead(a1[8], v5, 0x400uLL);
        if (v2 < 0)
        {
          break;
        }

        if (!v2)
        {
          goto LABEL_7;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 155, 39, 0, "flushing shared buffer");
    }

LABEL_7:
    v3 = a1[7];
    if (v3)
    {
      if (joinThread(v3))
      {
        v4 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 163, 39, *v4, "failed to join decoder thread");
      }
    }

    SharedBufferDestroy(a1[8]);
    free(a1);
  }
}

uint64_t IDecoderStreamRead(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    return SharedBufferRead(*(a1 + 64), a2, a3);
  }

  else
  {
    return -1;
  }
}

uint64_t IDecoderStreamAbort(uint64_t result)
{
  if (result)
  {
    return SharedBufferAbort(*(result + 64));
  }

  return result;
}

void *ILowMemoryDecoderStreamCreate(uint64_t (*a1)(uint64_t, uint64_t, unint64_t), uint64_t a2, uint64_t a3, size_t a4)
{
  v8 = malloc(0xD8uLL);
  v9 = v8;
  if (v8)
  {
    v8[26] = 0;
    *(v8 + 11) = 0u;
    *(v8 + 12) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    if (a4 <= 0x1000)
    {
      a4 = 4096;
    }

    *v8 = 0uLL;
    v10 = MemBufferCreate(a4);
    *(v9 + 56) = v10;
    if (!v10)
    {
      goto LABEL_26;
    }

    v11 = MemBufferCreate(a4);
    *(v9 + 64) = v11;
    if (!v11)
    {
      goto LABEL_26;
    }

    *(v9 + 32) = -1;
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
    if (MemBufferFillFromIStream(*(v9 + 56), 0xCuLL, a1, a3) != 12)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 465, 39, 0, "couldn't read enough header bytes from compressed file");
      goto LABEL_26;
    }

    DataPtr = MemBufferGetDataPtr(*(v9 + 56));
    if ((*(v9 + 32) & 0x80000000) != 0)
    {
      v13 = DataPtr;
      if (*DataPtr == 25200 && *(DataPtr + 2) == 122)
      {
        v19 = 0;
        while (1)
        {
          v20 = v13[3];
          if (v20 == PCompressGetDecoderKey(v19))
          {
            break;
          }

          if (++v19 == 7)
          {
            if ((*(v9 + 32) & 0x80000000) == 0)
            {
              return v9;
            }

            goto LABEL_12;
          }
        }

        *(v9 + 40) = bswap64(*(v13 + 4));
        *(v9 + 48) = PCompressGetDecoderFilter(v19);
        MemBufferDecreaseSize(*(v9 + 56), 0xCuLL);
        if ((MemBufferIncreaseCapacity(*(v9 + 56), *(v9 + 40)) & 0x8000000000000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 487, 39, 0, "MemBufferIncreaseCapacity in");
        }

        else
        {
          if ((MemBufferIncreaseCapacity(*(v9 + 64), *(v9 + 40)) & 0x8000000000000000) == 0)
          {
            *(v9 + 32) = 0;
            return v9;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 488, 39, 0, "MemBufferIncreaseCapacity out");
        }

        goto LABEL_26;
      }

LABEL_12:
      if (*v13 == 1484404733 && *(v13 + 2) == 90)
      {
        if (!lzma_stream_decoder())
        {
          *(v9 + 32) = 1;
          return v9;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 503, 39, 0, "lzma_stream_decoder");
        goto LABEL_26;
      }

      v16 = *v13 == 23106 && v13[2] == 104;
      if (v16 && v13[3] - 49 <= 8)
      {
        if (BZ2_bzDecompressInit((v9 + 72), 0, 0))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 514, 39, 0, "BZ2_bzDecompressInit");
LABEL_26:
          ILowMemoryDecoderStreamDestroy(v9);
          return 0;
        }

        v26 = 3;
LABEL_60:
        *(v9 + 32) = v26;
        return v9;
      }

      v21 = *v13;
      if (v21 == 120)
      {
        if (-1108378657 * (v13[1] | 0x7800u) <= 0x8421084)
        {
          if (compression_stream_init((v9 + 72), COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB) == COMPRESSION_STATUS_OK)
          {
            MemBufferDecreaseSize(*(v9 + 56), 2uLL);
            *(v9 + 32) = 2;
            return v9;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 570, 39, 0, "compression_stream_init");
          goto LABEL_26;
        }
      }

      else if (v21 == 31 && v13[1] == 139 && v13[2] == 8)
      {
        if ((MemBufferFillFromIStream(*(v9 + 56), 0x1000uLL, *v9, *(v9 + 16)) & 0x8000000000000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 525, 39, 0, "reading gzip header data");
          goto LABEL_26;
        }

        DataSize = MemBufferGetDataSize(*(v9 + 56));
        if ((v13[3] & 4) != 0)
        {
          if (DataSize <= 0xB)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 531, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }

          v23 = *(v13 + 5) + 12;
          if (v23 > DataSize)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 534, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }
        }

        else
        {
          v23 = 10;
        }

        if ((v13[3] & 8) != 0)
        {
          v24 = v23 + 2;
          if (v23 + 2 > DataSize)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 539, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }

          if (v23 + 2 < DataSize)
          {
            while (v13[v23 + 1])
            {
              if (DataSize - 2 == ++v23)
              {
                v24 = DataSize;
                goto LABEL_42;
              }
            }

            v24 = v23 + 2;
          }
        }

        else
        {
          v24 = v23;
        }

LABEL_42:
        if ((v13[3] & 0x10) != 0)
        {
          v25 = v24 + 2;
          if (v24 + 2 > DataSize)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 545, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }

          if (v24 + 2 < DataSize)
          {
            while (v13[v24 + 1])
            {
              if (DataSize - 2 == ++v24)
              {
                v25 = DataSize;
                goto LABEL_44;
              }
            }

            v25 = v24 + 2;
          }
        }

        else
        {
          v25 = v24;
        }

LABEL_44:
        if ((v13[3] & 2) != 0)
        {
          v25 += 2;
          if (v25 > DataSize)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 551, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }
        }

        MemBufferDecreaseSize(*(v9 + 56), v25);
        if (compression_stream_init((v9 + 72), COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 557, 39, 0, "compression_stream_init");
          goto LABEL_26;
        }

        v26 = 2;
        goto LABEL_60;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 579, 39, 0, "Could not identify compressed stream format");
      goto LABEL_26;
    }
  }

  else
  {
    v17 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 452, 39, *v17, "malloc");
  }

  return v9;
}

void ILowMemoryDecoderStreamDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    switch(v2)
    {
      case 3:
        BZ2_bzDecompressEnd((a1 + 72));
        break;
      case 2:
        compression_stream_destroy((a1 + 72));
        break;
      case 1:
        lzma_end();
        break;
    }

    MemBufferDestroy(*(a1 + 56));
    MemBufferDestroy(*(a1 + 64));
    OMemStreamDestroy(*(a1 + 24));

    free(a1);
  }
}

void *ILowMemoryDecoderStreamCreateWithBuffer(uint64_t a1, uint64_t a2, size_t a3)
{
  v4 = IMemStreamCreate(a1, a2);
  if (v4)
  {
    v5 = v4;
    result = ILowMemoryDecoderStreamCreate(IMemStreamRead, IMemStreamAbort, v4, a3);
    if (result)
    {
      result[3] = v5;
      return result;
    }

    OMemStreamDestroy(v5);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreateWithBuffer", 596, 39, 0, "IMemStreamCreate failed");
  }

  return 0;
}

uint64_t ILowMemoryDecoderStreamRead(void *a1, char *a2, size_t a3)
{
  if (a1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (!a3)
      {
        return v7;
      }

      DataSize = MemBufferGetDataSize(a1[8]);
      if (DataSize)
      {
        if (DataSize >= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = DataSize;
        }

        DataPtr = MemBufferGetDataPtr(a1[8]);
        memcpy(a2, DataPtr, v9);
        MemBufferDecreaseSize(a1[8], v9);
        v7 += v9;
        a3 -= v9;
        if (!a3)
        {
          return v7;
        }

        a2 += v9;
      }

      if (*(a1 + 52))
      {
        return v7;
      }

      v11 = a1[7];
      if (!*(a1 + 8))
      {
        v23 = MemBufferGetDataSize(v11);
        v24 = v23;
        if (v23 <= 0xF)
        {
          if ((MemBufferFillFromIStream(a1[7], 16 - v23, *a1, a1[2]) & 0x8000000000000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 645, 39, 0, "reading block header failed");
            return -1;
          }

          v25 = MemBufferGetDataSize(a1[7]);
          if (!v25)
          {
            *(a1 + 52) = 1;
            return v7;
          }

          v24 = v25;
        }

        v26 = MemBufferGetDataPtr(a1[7]);
        v28 = *v26;
        v27 = v26[1];
        v29 = bswap64(*v26);
        v30 = bswap64(v27);
        v31 = a1[5];
        if (v29 > v31 || v30 > v31)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 655, 39, 0, "invalid block header");
          return -1;
        }

        MemBufferDecreaseSize(a1[7], 0x10uLL);
        v33 = v30 >= v24 - 16;
        v34 = v30 - (v24 - 16);
        if (v34 != 0 && v33)
        {
          if (MemBufferFillFromIStream(a1[7], v34, *a1, a1[2]) != v34)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 665, 39, 0, "reading block payload failed");
            return -1;
          }

          MemBufferGetDataSize(a1[7]);
        }

        if (v28 == v27)
        {
          FreePtr = MemBufferGetFreePtr(a1[8]);
          v36 = MemBufferGetDataPtr(a1[7]);
          memcpy(FreePtr, v36, v29);
        }

        else
        {
          v47 = a1[6];
          v48 = MemBufferGetFreePtr(a1[8]);
          v49 = MemBufferGetDataPtr(a1[7]);
          if (v47(v48, v29, v49, v30) != v29)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 677, 39, 0, "decoding block payload failed");
            return -1;
          }
        }

        MemBufferDecreaseSize(a1[7], v30);
        MemBufferIncreaseSize(a1[8], v29);
        goto LABEL_64;
      }

      if ((MemBufferFillFromIStream(v11, 0xFFFFFFFFFFFFFFFFLL, *a1, a1[2]) & 0x8000000000000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 687, 39, 0, "reading payload failed");
        return -1;
      }

      v12 = MemBufferGetDataPtr(a1[7]);
      v13 = MemBufferGetDataSize(a1[7]);
      v14 = MemBufferGetFreePtr(a1[8]);
      FreeSize = MemBufferGetFreeSize(a1[8]);
      v16 = FreeSize;
      v17 = *(a1 + 8);
      switch(v17)
      {
        case 1:
          a1[9] = v12;
          a1[10] = v13;
          a1[12] = v14;
          a1[13] = FreeSize;
          v42 = lzma_code();
          v43 = v42;
          if (v42 > 0xA || ((1 << v42) & 0x403) == 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 738, 39, 0, "decoding lzma payload");
            v50 = 1;
            goto LABEL_62;
          }

          v44 = a1[9];
          v45 = a1[12];
          MemBufferDecreaseSize(a1[7], v44 - v12);
          if (v45 == v14 && v44 == v12)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          MemBufferIncreaseSize(a1[8], v45 - v14);
          if (v43 != 1)
          {
            v50 = 14;
LABEL_62:
            if (v43 > 0xA || ((1 << v43) & 0x403) == 0)
            {
              continue;
            }

            goto LABEL_64;
          }

          break;
        case 3:
          a1[9] = v12;
          *(a1 + 20) = v13;
          a1[12] = v14;
          *(a1 + 26) = FreeSize;
          v37 = BZ2_bzDecompress((a1 + 9));
          if (v37 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 722, 39, 0, "decoding bzip2 payload");
            return -1;
          }

          v38 = v37;
          v39 = a1[9];
          v40 = a1[12];
          MemBufferDecreaseSize(a1[7], v39 - v12);
          if (v40 == v14 && v39 == v12)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          MemBufferIncreaseSize(a1[8], v40 - v14);
          if (v38 != 4)
          {
            goto LABEL_64;
          }

          break;
        case 2:
          a1[11] = v12;
          a1[12] = v13;
          a1[9] = v14;
          a1[10] = FreeSize;
          v18 = compression_stream_process((a1 + 9), 0);
          if (v18 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 706, 39, 0, "decoding zlib payload");
            return -1;
          }

          v19 = v18;
          v20 = a1[12];
          v21 = a1[10];
          MemBufferDecreaseSize(a1[7], v13 - v20);
          if (v16 == v21 && v13 == v20)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          MemBufferIncreaseSize(a1[8], v16 - v21);
          if (v19 != COMPRESSION_STATUS_END)
          {
            goto LABEL_64;
          }

          break;
        default:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 748, 39, 0, "invalid decoder: %d");
          return -1;
      }

      *(a1 + 52) = 1;
LABEL_64:
      if (v6 >= 3)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 753, 39, 0, "Truncated stream");
        return -1;
      }

      v50 = 0;
    }

    while (!v50);
  }

  return -1;
}

uint64_t rawimg_force_in_place(uint64_t *a1, unint64_t *a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 2120) <= a3[265])
  {
    v12 = a3[265];
  }

  else
  {
    v12 = *(a4 + 2120);
  }

  v13 = AAFileStreamOpenWithPath(*(a4 + 2048), 0, 0);
  if (!v13)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 234, 141, 0, "AAFileStreamOpenWithPath");
LABEL_123:
    v26 = 0;
    v25 = 0;
    v23 = 0;
    v22 = 0;
    v15 = 0;
LABEL_124:
    v84 = 0;
    goto LABEL_125;
  }

  v14 = (a5 + 0x3FFF) >> 14;
  v15 = calloc(1uLL, 0x68uLL);
  v16 = calloc(1uLL, 0x28uLL);
  v17 = v16;
  if ((v14 & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "aaSimStreamOpen", 184, 141, 0, "too little excess");
LABEL_122:
    free(v15);
    SimStreamClose(v17);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 236, 141, 0, "aaSimStreamOpen");
    goto LABEL_123;
  }

  if (!v15 || !v16)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "aaSimStreamOpen", 185, 141, 0, "aaCalloc");
    goto LABEL_122;
  }

  *v16 = v13;
  *(v16 + 4) = (v12 + 0x3FFF) >> 14;
  *(v16 + 8) = v14;
  *(v16 + 9) = a6;
  v18 = ((v12 + 0x3FFF) >> 14);
  if (v18 >= 0x3333333333333334)
  {
    *__error() = 12;
    v17[1] = 0;
LABEL_121:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "aaSimStreamOpen", 195, 141, 0, "aaCalloc");
    goto LABEL_122;
  }

  v19 = calloc(v18, 5uLL);
  v17[1] = v19;
  if (!v19)
  {
    goto LABEL_121;
  }

  AACustomByteStreamSetData(v15, v17);
  AACustomByteStreamSetCloseProc(v15, SimStreamClose);
  AACustomByteStreamSetPReadProc(v15, SimStreamPRead);
  AACustomByteStreamSetPWriteProc(v15, SimStreamPWrite);
  v15[11] = SimStreamSimulate;
  v20 = *v15;
  v21 = aaSegmentStreamOpen(v15, a3);
  v22 = v21;
  if (!v21)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 241, 141, 0, "aaSegmentStreamOpen");
    v26 = 0;
    v25 = 0;
    v23 = 0;
    goto LABEL_124;
  }

  v23 = aaForkInputStreamOpen(v21, a3, 0);
  if (!v23)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 243, 141, 0, "aaForkInputStreamOpen");
    v26 = 0;
    v25 = 0;
    goto LABEL_124;
  }

  v24 = aaSegmentStreamOpen(v15, a4);
  v25 = v24;
  if (!v24)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 247, 141, 0, "aaSegmentStreamOpen");
    v26 = 0;
    goto LABEL_124;
  }

  v106 = v20;
  v26 = aaForkInputStreamOpen(v24, a4, 0);
  if (!v26)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 249, 141, 0, "aaForkOutputStreamOpen");
    goto LABEL_124;
  }

  v96 = 0;
  v95 = vnegq_f64(0);
  v94 = 1;
  v105 = v25;
  v104 = a6;
  v111 = a2;
  v112 = a1;
LABEL_19:
  bzero(*(v106 + 8), 5 * *(v106 + 16));
  v27 = *(v106 + 16);
  *(v106 + 24) = 0;
  *(v106 + 20) = v27;
  v28 = *a2;
  if (*a2)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = (*a1 + 24 * v30);
      if ((*v31 & 0x8000000000000000) == 0)
      {
        v32 = *v31;
      }

      else
      {
        v32 = 0x8000000000000000 - *v31;
      }

      v33 = v31[2];
      v34 = 0x8000000000000000 - v33;
      if (v33 >= 0)
      {
        v34 = v33;
      }

      if (v32)
      {
        v101 = v34;
        v107 = v30;
        for (i = 0; i < v32; i += v36)
        {
          if (v32 - i >= 0x10000)
          {
            v36 = 0x10000;
          }

          else
          {
            v36 = v32 - i;
          }

          if (v36 != aaByteStreamSimulate(v23))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 270, 141, 0, "aaByteStreamSimulate");
            goto LABEL_145;
          }
        }

        a1 = v112;
        v28 = *v111;
        a6 = v104;
        v30 = v107;
        v34 = v101;
      }

      v29 += v32 + v34;
      ++v30;
    }

    while (v30 < v28);
  }

  v37 = 1;
  v38 = v28;
  v39 = v111;
  v98 = v22;
LABEL_36:
  if (!v38)
  {
    goto LABEL_63;
  }

  v40 = 0;
  v41 = 0;
  v42 = 0;
  v92 = v37;
  while (1)
  {
    v43 = (*v112 + 24 * v42);
    v44 = v43[1];
    v45 = 0x8000000000000000 - *v43;
    if ((*v43 & 0x8000000000000000) == 0)
    {
      v45 = *v43;
    }

    if (v44 >= 0)
    {
      v46 = v43[1];
    }

    else
    {
      v46 = 0x8000000000000000 - v44;
    }

    v47 = v43[2];
    if (v47 < 0)
    {
      v47 = 0x8000000000000000 - v47;
    }

    v108 = v42;
    if (v37 == 2)
    {
      v41 += v45;
      if (v41 >= *(a4 + 2056))
      {
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    v99 = v46;
    v102 = v47;
    if (v45)
    {
      break;
    }

LABEL_56:
    v40 += v102;
    v37 = v92;
    if (v92 != 1)
    {
      v22 = v98;
      v46 = v99;
LABEL_60:
      v51 = aaByteStreamSimulate(v26);
      v39 = v111;
      v42 = v108;
      if (v46 != v51)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 310, 141, 0, "aaByteStreamSimulate");
        goto LABEL_145;
      }

      goto LABEL_61;
    }

    v39 = v111;
    v42 = v108;
    v22 = v98;
    v46 = v99;
    if (v41 < *(a4 + 2056))
    {
      goto LABEL_60;
    }

LABEL_61:
    v41 += v46;
    ++v42;
    v28 = *v39;
    if (v42 >= *v39)
    {
      v38 = *v39;
      a6 = v104;
LABEL_63:
      if (++v37 != 3)
      {
        goto LABEL_36;
      }

      v52 = *(v106 + 28);
      if (a6 >= 3)
      {
        fprintf(*MEMORY[0x29EDCA610], "ForceInPlace %d: excess_pages=%d/%d, converted bytes=%llu, %zu controls\n", v94, v52, *(v106 + 32), v96, v28);
        v52 = *(v106 + 28);
      }

      v53 = *(v106 + 32);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      if ((v55 < 0) ^ v54 | (v55 == 0))
      {
        v86 = merge_controls(*v112, v111, a4);
        *v112 = v86;
        if (v86)
        {
          if (v104 >= 2)
          {
            fprintf(*MEMORY[0x29EDCA610], "ForceInPlace: %zu controls. Dropped %llu bytes to stay within budget.\n", *v111, v96);
          }

          v84 = 1;
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 447, 141, 0, "merge_controls");
LABEL_145:
          v84 = 0;
        }

        v25 = v105;
        goto LABEL_125;
      }

      v56 = v55 + 1;
      v57 = (v56 >> 1) << 14;
      if (v56 < 2)
      {
        v58 = 1;
        a2 = v111;
        a1 = v112;
        v59 = v96;
        goto LABEL_118;
      }

      v90 = 0;
      v87 = -1;
      v60 = 1;
      a2 = v111;
      a1 = v112;
      v59 = v96;
      v61 = v95;
      while (2)
      {
        v62 = *(a4 + 2080);
        v63 = *a2;
        if (*a2)
        {
          v64 = 0;
          v88 = v60 - 1;
          v89 = v60;
          v65 = 24 * v63;
          while (1)
          {
            v66 = *a1 + v65;
            v67 = (v66 - 24);
            v68 = *(v66 - 24);
            v69 = vbslq_s8(vcltzq_s64(v68), vsubq_s64(v61, v68), v68);
            v70 = *(v66 - 8);
            v71 = 0x8000000000000000 - v70;
            if (v70 >= 0)
            {
              v71 = *(v66 - 8);
            }

            v62 -= vaddvq_s64(v69);
            if (!v57)
            {
              goto LABEL_97;
            }

            v72 = v69.i64[0];
            if (!v69.i64[0])
            {
              goto LABEL_97;
            }

            if (v60 == 1)
            {
              break;
            }

            if (v60 != 2)
            {
              if (v60 != 3)
              {
                goto LABEL_97;
              }

              v73 = *(a4 + 2056);
              goto LABEL_89;
            }

            if (v62 >= *(a4 + 2072))
            {
              if (v69.i64[0] > v57)
              {
                v74 = v87;
                v75 = v90;
                if (v87 > v69.i64[0])
                {
                  v75 = v66 - 24;
                }

                v90 = v75;
                if (v87 >= v69.i64[0])
                {
                  v74 = v69.i64[0];
                }

                v87 = v74;
                goto LABEL_97;
              }

              goto LABEL_92;
            }

LABEL_97:
            v65 -= 24;
            --v63;
            a1 = v112;
            if (!v63)
            {
              v58 = v64 == 0;
              a2 = v111;
              goto LABEL_100;
            }
          }

          if (v62 < *(a4 + 2056))
          {
            goto LABEL_97;
          }

          v73 = *(a4 + 2072);
LABEL_89:
          if (v62 < v73)
          {
            if (v69.i64[0] >= v57)
            {
              v72 = v57;
            }

LABEL_92:
            if (v104 >= 4)
            {
              v76 = v57;
              v97 = v59;
              v109 = v62;
              v100 = v72;
              v103 = v66;
              v93 = v71;
              v91 = v69;
              fprintf(*MEMORY[0x29EDCA610], "Dropping %llu bytes at %llu, needed=%llu bytes, type %s\n", v72, v62, v57, rawimg_force_in_place_pass_name[v88]);
              v69 = v91;
              v71 = v93;
              v72 = v100;
              v66 = v103;
              v62 = v109;
              v60 = v89;
              v59 = v97;
              v57 = v76;
              v61 = v95;
            }

            v68.i64[0] = v72;
            v77.i64[0] = vsubq_s64(v69, v68).u64[0];
            v77.i64[1] = vaddq_s64(v69, vdupq_n_s64(v72)).i64[1];
            *v67 = vbslq_s8(vcltzq_s64(v77), vsubq_s64(v61, v77), v77);
            v78 = v72 + v71;
            if ((v72 + v71) < 0)
            {
              v78 = 0x8000000000000000 - (v72 + v71);
            }

            *(v66 - 8) = v78;
            v59 += v72;
            v57 -= v72;
            v64 = 1;
            goto LABEL_97;
          }

          goto LABEL_97;
        }

        v58 = 1;
LABEL_100:
        if (v62)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 411, 141, 0, "control sequence broken");
          goto LABEL_145;
        }

        if (v57)
        {
          v79 = v58;
        }

        else
        {
          v79 = 0;
        }

        if (v60 != 3 || !v79 || !v90)
        {
          v80 = !v58;
          if (v60 > 2)
          {
            v80 = 1;
          }

          if (v80)
          {
            goto LABEL_118;
          }

          ++v60;
          if (!v57)
          {
            goto LABEL_118;
          }

          continue;
        }

        break;
      }

      v81 = v59;
      if (*v90 >= 0)
      {
        v82 = *v90;
      }

      else
      {
        v82 = 0x8000000000000000 - *v90;
      }

      v110 = *(v90 + 8);
      if (v104 >= 4)
      {
        fprintf(*MEMORY[0x29EDCA610], "Dropping copy fork with %llu bytes, needed=%llu bytesx\n", v82, v57);
      }

      v57 = 0;
      v58 = 0;
      *v90 = 0;
      v83 = vaddq_s64(vbslq_s8(vcltzq_s64(v110), vsubq_s64(v95, v110), v110), vdupq_n_s64(v82));
      *(v90 + 8) = vbslq_s8(vcltzq_s64(v83), vsubq_s64(v95, v83), v83);
      v59 = v82 + v81;
      a2 = v111;
      a1 = v112;
LABEL_118:
      v96 = v59;
      ++v94;
      v25 = v105;
      a6 = v104;
      if (v58 && v57)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 441, 141, 0, "no possible conversions");
        goto LABEL_124;
      }

      goto LABEL_19;
    }
  }

  v48 = 0;
  while (1)
  {
    v49 = v45;
    if (v45 - v48 >= 0x10000)
    {
      v50 = 0x10000;
    }

    else
    {
      v50 = v45 - v48;
    }

    if (v50 != aaByteStreamSimulate(v23))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 298, 141, 0, "aaByteStreamSimulate");
      goto LABEL_149;
    }

    if (v50 != aaByteStreamSimulate(v26))
    {
      break;
    }

    v40 += v50;
    v41 += v50;
    v48 += v50;
    v45 = v49;
    if (v48 >= v49)
    {
      goto LABEL_56;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 299, 141, 0, "aaByteStreamSimulate");
LABEL_149:
  v84 = 0;
  v25 = v105;
  v22 = v98;
LABEL_125:
  if (AAByteStreamClose(v23) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 458, 141, 0, "AAByteStreamClose");
    v84 = 0;
  }

  if (AAByteStreamClose(v22) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 459, 141, 0, "AAByteStreamClose");
    v84 = 0;
  }

  if (AAByteStreamClose(v26) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 460, 141, 0, "AAByteStreamClose");
    v84 = 0;
  }

  if (AAByteStreamClose(v25) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 461, 141, 0, "AAByteStreamClose");
    v84 = 0;
  }

  if (AAByteStreamClose(v15) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 462, 141, 0, "AAByteStreamClose");
    v84 = 0;
  }

  if (AAByteStreamClose(v13) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 463, 141, 0, "AAByteStreamClose");
    v84 = 0;
  }

  if (v84)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}