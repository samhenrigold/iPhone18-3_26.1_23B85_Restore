void *merge_controls(void *result, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (!*a2)
  {
    return result;
  }

  if (v3 == 1)
  {
    goto LABEL_20;
  }

  v4 = 0;
  v5 = *result + result[1];
  v6 = result + 3;
  v7 = 1;
  do
  {
    v8 = *v6;
    v9 = v6[1];
    if (v5 == *(a3 + 2072))
    {
LABEL_8:
      ++v4;
      v13 = *v6;
      v14 = &result[3 * v4];
      v14[2] = v6[2];
      *v14 = v13;
      goto LABEL_17;
    }

    v10 = &result[3 * v4];
    v11 = v10[1];
    if (v8)
    {
      if (v11)
      {
        goto LABEL_8;
      }

      v12 = v10[2];
      if (v12)
      {
        goto LABEL_8;
      }

      v11 = 0;
    }

    else
    {
      v12 = v10[2];
    }

    *v10 += v8;
    v10[1] = v11 + v9;
    if (v12 < 0)
    {
      v12 = 0x8000000000000000 - v12;
    }

    v15 = v6[2];
    if (v15 < 0)
    {
      v15 = 0x8000000000000000 - v15;
    }

    v16 = __OFADD__(v15, v12);
    v17 = v15 + v12;
    if (v17 < 0 != v16)
    {
      v17 = 0x8000000000000000 - v17;
    }

    v10[2] = v17;
LABEL_17:
    v5 += v9 + v8;
    ++v7;
    v6 += 3;
  }

  while (v7 < *a2);
  v3 = v4 + 1;
LABEL_20:
  *a2 = v3;
  return result;
}

uint64_t SimStreamClose(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (v2 < 1)
  {
    goto LABEL_7;
  }

  v3 = 0;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  do
  {
    v6 = *v4;
    v4 = (v4 + 5);
    v3 += v6;
    --v5;
  }

  while (v5);
  if (v3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamClose", 148, 141, 0, "%i dangling reads", v3);
    v2 = *(a1 + 16);
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  v8 = *(a1 + 24);
  if (*(a1 + 28) + v2 != *(a1 + 20) + v8)
  {
    pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamClose", 152, 141, "file + excess != written + free");
    v2 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  if (v2 < v8)
  {
    pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamClose", 154, 141, "file < written");
  }

  if (*(a1 + 36) >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "SimStream: pages: %i file, %i written, %i free, %i excess (%iK)\n", *(a1 + 16), *(a1 + 24), *(a1 + 20), *(a1 + 28), 16 * *(a1 + 28));
  }

  free(*(a1 + 8));
  free(a1);
  return v7;
}

uint64_t SimStreamSimulate(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  if (a4 < 1)
  {
    return a4;
  }

  if (a2 > 2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamSimulate", 87, 141, 0, "not implemented", v5, v6);
    return -1;
  }

  v7 = a5 + a4;
  v8 = *(a1 + 8);
  while (1)
  {
    v9 = v8 + 5 * (a5 >> 14);
    if (a2)
    {
      break;
    }

    if (!(*v9)++)
    {
      v12 = *(a1 + 20);
      *(a1 + 20) = v12 - 1;
      if (!v12)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamSimulate", 94, 141, 0, "no free pages", v5, v6);
        return -1;
      }
    }

LABEL_17:
    a5 = (a5 & 0xFFFFFFFFFFFFC000) + 0x4000;
    if (a5 >= v7)
    {
      return a4;
    }
  }

  if (a2 != 1)
  {
    if (!*(v9 + 4))
    {
      *(v9 + 4) = 1;
      v13 = *(a1 + 20);
      if (v13)
      {
        *(a1 + 20) = v13 - 1;
      }

      else
      {
        ++*(a1 + 28);
      }

      ++*(a1 + 24);
    }

    goto LABEL_17;
  }

  if (*v9 > 0)
  {
    v10 = *v9 - 1;
    *v9 = v10;
    if (!v10)
    {
      ++*(a1 + 20);
    }

    goto LABEL_17;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamSimulate", 99, 141, 0, "data not locked", v5, v6);
  return -1;
}

int AEAContextDecryptAttributes(AEAContext context)
{
  v13 = *MEMORY[0x29EDCA608];
  v12 = 0;
  memset(__s, 0, sizeof(__s));
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  if (*(context + 684) && *(context + 341))
  {
    if ((aeaContextUnlock(context, &v6, __s, 0, 1, 0) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContextValidate.c", "AEAContextDecryptAttributes", 18, 121, 0, "unlock container", v6);
    }

    else
    {
      if ((v8 + v7 - 1) / v7 < 0xFFFFFFFF)
      {
        v2 = 0;
        v4 = v9;
        *(context + 2) = v8;
        *(context + 3) = v4;
        *(context + 8) = v10;
        v5 = v7;
        *context = v6;
        *(context + 1) = v5;
        goto LABEL_8;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContextValidate.c", "AEAContextDecryptAttributes", 22, 121, 0, "Invalid data size", v6);
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContextValidate.c", "AEAContextDecryptAttributes", 15, 121, 0, "invalid context", v6);
  }

  v2 = -1;
LABEL_8:
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  memset_s(&v6, 0x48uLL, 0, 0x48uLL);
  return v2;
}

char *SharedBufferCreate(unint64_t a1)
{
  if (a1 - 0x100000000 > 0xFFFFFFFF00000000)
  {
    v2 = getpagesize();
    if (v2 <= 0x197)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 252, 73, 0, "Incompatible page size");
      return 0;
    }

    v5 = v2;
    if (a1 >> 2 < v2)
    {
      v6 = 1;
    }

    else
    {
      v6 = (a1 >> 2) / v2;
    }

    v7 = v6 * v2;
    v8 = valloc(v2 + 4 * v7);
    v3 = v8;
    if (!v8)
    {
      v10 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 262, 73, *v10, "malloc");
      return v3;
    }

    *(v8 + 50) = 0;
    *(v8 + 23) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 21) = 0u;
    *(v8 + 22) = 0u;
    *(v8 + 19) = 0u;
    *(v8 + 20) = 0u;
    *(v8 + 17) = 0u;
    *(v8 + 18) = 0u;
    *(v8 + 15) = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 13) = 0u;
    *(v8 + 14) = 0u;
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
    *v8 = 0u;
    *(v8 + 48) = -1;
    atomic_store(2u, v8 + 101);
    *v8 = 0x600000000;
    v9 = calloc(6uLL, 4uLL);
    *(v3 + 1) = v9;
    if (v9)
    {
      if (pthread_mutex_init((v3 + 4), 0))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
      }

      else
      {
        if (!pthread_cond_init((v3 + 20), 0))
        {
          *(v3 + 16) = 0x600000000;
          v11 = calloc(6uLL, 4uLL);
          *(v3 + 17) = v11;
          if (v11)
          {
            if (pthread_mutex_init((v3 + 36), 0))
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
            }

            else
            {
              if (!pthread_cond_init((v3 + 52), 0))
              {
                v12 = 0;
                for (i = v3 + 68; ; i += 4)
                {
                  *i = 0;
                  i[1] = 0;
                  *(i - 2) = v3 + v5;
                  *(i - 1) = v7;
                  if ((SharedArrayPush(v3 + 32, v12) & 0x80000000) != 0)
                  {
                    break;
                  }

                  ++v12;
                  v5 += v7;
                  if (v12 == 4)
                  {
                    return v3;
                  }
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 283, 73, 0, "SharedArrayPush");
                goto LABEL_19;
              }

              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
            }
          }

          else
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 270, 73, 0, "SharedArrayInit");
LABEL_19:
          if (!pthread_mutex_destroy((v3 + 4)) && !pthread_cond_destroy((v3 + 20)))
          {
            free(*(v3 + 1));
          }

          if (!pthread_mutex_destroy((v3 + 36)) && !pthread_cond_destroy((v3 + 52)))
          {
            free(*(v3 + 17));
          }

          free(v3);
          return 0;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
      }
    }

    else
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 269, 73, 0, "SharedArrayInit");
    goto LABEL_19;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 247, 73, 0, "SharedBuffer invalid capacity: %zu");
  return 0;
}

uint64_t SharedArrayPush(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
  }

  else
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = *a1;
    if (*a1 < v5)
    {
      *(*(a1 + 1) + 4 * v4) = a2;
      v6 = *a1;
    }

    *a1 = v6 + 1;
    if (v6 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
      }

      else
      {
        if (v4 < v5)
        {
          return 0;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n");
      }
    }

    else
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
    }
  }

  return 0xFFFFFFFFLL;
}

void SharedBufferDestroy(uint64_t a1)
{
  if (a1)
  {
    if (!pthread_mutex_destroy((a1 + 16)) && !pthread_cond_destroy((a1 + 80)))
    {
      free(*(a1 + 8));
    }

    if (!pthread_mutex_destroy((a1 + 144)) && !pthread_cond_destroy((a1 + 208)))
    {
      free(*(a1 + 136));
    }

    free(a1);
  }
}

uint64_t SharedBufferFillFromStream(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  if (a2)
  {
    if (!atomic_load((a1 + 400)))
    {
      if (atomic_load((a1 + 392)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", 365, 73, 0, "write after EOF");
      }

      else
      {
        v9 = a2;
        v10 = 0;
        v11 = a1 + 256;
        while (1)
        {
          v12 = *(a1 + 384);
          if (v12 <= 3)
          {
            v14 = *(v11 + 32 * v12 + 24);
          }

          else
          {
            if (pthread_mutex_lock((a1 + 144)))
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_24:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", 378, 73, 0, "SharedArrayPop");
              goto LABEL_25;
            }

            while (1)
            {
              v13 = *(a1 + 128);
              if (v13)
              {
                break;
              }

              if (pthread_cond_wait((a1 + 208), (a1 + 144)))
              {
                pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
                goto LABEL_24;
              }
            }

            v15 = v13 - 1;
            *(a1 + 128) = v15;
            v12 = *(*(a1 + 136) + 4 * v15);
            if (pthread_mutex_unlock((a1 + 144)))
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
              goto LABEL_24;
            }

            if (v12 > 3)
            {
              goto LABEL_25;
            }

            v14 = 0;
            *(a1 + 384) = v12;
            v16 = (a1 + 272 + 32 * v12);
            *v16 = 0;
            v16[1] = 0;
          }

          v17 = (v11 + 32 * v12);
          if (v17[1] - v14 >= v9)
          {
            v18 = v9;
          }

          else
          {
            v18 = v17[1] - v14;
          }

          v19 = a3(a4, *v17 + v14, v18);
          if (v19 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", 393, 73, 0, "stream read");
            goto LABEL_25;
          }

          v20 = v19;
          if (!v19)
          {
            break;
          }

          v21 = v17[3] + v19;
          v17[3] = v21;
          if (v21 == v17[1] && (currentWriteBufferFull(a1) & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          v10 += v20;
          v9 -= v20;
          if (!v9)
          {
            goto LABEL_30;
          }
        }

        if ((sendEOF(a1) & 0x80000000) == 0)
        {
LABEL_30:
          if ((currentWriteBufferFull(a1) & 0x80000000) == 0)
          {
            return v10;
          }
        }
      }

LABEL_25:
      SharedBufferAbort(a1);
    }
  }

  return -1;
}

uint64_t sendEOF(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 392), &v1, 1u);
  if (v1)
  {
    return 0;
  }

  if ((currentWriteBufferFull(a1) & 0x80000000) == 0)
  {
    if ((SharedArrayEnqueue_0(a1, -2) & 0x80000000) == 0)
    {
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "sendEOF", 351, 73, 0, "SharedArrayEnqueue");
  }

  return 0xFFFFFFFFLL;
}

uint64_t currentWriteBufferFull(unsigned int *a1)
{
  v3 = a1[96];
  a1[96] = -1;
  if (v3 > 3)
  {
    return 0;
  }

  if ((SharedArrayEnqueue_0(a1, v3) & 0x80000000) == 0)
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "currentWriteBufferFull", 324, 73, 0, "SharedArrayEnqueue", v1, v2);
  return 0xFFFFFFFFLL;
}

uint64_t SharedBufferAbort(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    atomic_compare_exchange_strong((result + 400), &v2, 1u);
    if (!v2)
    {
      if ((SharedArrayPush((result + 128), -1) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 500, 73, 0, "SharedArrayPush");
      }

      result = SharedArrayEnqueue_0(v1, -1);
      if ((result & 0x80000000) != 0)
      {

        return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 501, 73, 0, "SharedArrayPush");
      }
    }
  }

  return result;
}

uint64_t SharedBufferFlushToStream(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  if (!a2)
  {
    return -1;
  }

  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  if (!atomic_load((a1 + 396)))
  {
    v11 = a2;
    v6 = 0;
    while (1)
    {
      v12 = *(a1 + 388);
      if (v12 >= 4)
      {
        if (pthread_mutex_lock((a1 + 16)))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
          goto LABEL_26;
        }

        while (!*a1)
        {
          if (pthread_cond_wait((a1 + 80), (a1 + 16)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
            goto LABEL_26;
          }
        }

        v13 = *a1 - 1;
        *a1 = v13;
        v12 = *(*(a1 + 8) + 4 * v13);
        if (pthread_mutex_unlock((a1 + 16)))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
LABEL_26:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFlushToStream", 448, 73, 0, "SharedArrayDequeue");
LABEL_27:
          SharedBufferAbort(a1);
          return -1;
        }

        if (v12 == 4294967294)
        {
          v22 = 0;
          atomic_compare_exchange_strong((a1 + 396), &v22, 1u);
          return v6;
        }

        if (v12 > 3)
        {
          goto LABEL_27;
        }

        *(a1 + 388) = v12;
      }

      v14 = (a1 + 256 + 32 * v12);
      v15 = v14[2];
      if (v14[3] - v15 >= v11)
      {
        v16 = v11;
      }

      else
      {
        v16 = v14[3] - v15;
      }

      v17 = a3(a4, *v14 + v15, v16);
      if (v17 <= 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFlushToStream", 469, 73, 0, "stream write");
        goto LABEL_27;
      }

      v18 = v17;
      v19 = v14[3];
      v20 = v14[2] + v17;
      v14[2] = v20;
      if (v20 == v19)
      {
        v21 = *(a1 + 388);
        *(a1 + 388) = -1;
        if (v21 <= 3 && (SharedArrayPush((a1 + 128), v21) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "currentReadBufferEmpty", 337, 73, 0, "SharedArrayPush");
          goto LABEL_27;
        }
      }

      v6 += v18;
      v11 -= v18;
      if (!v11)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t SharedArrayEnqueue_0(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", 157, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
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
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", 168, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
      }

      else
      {
        if (v4 < v5)
        {
          return 0;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", 169, 0, "SharedArrayPush: stack is full\n");
      }
    }

    else
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", 166, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t SharedBufferWrite(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  if (!a3)
  {
    return sendEOF(a1);
  }

  v5 = a2;
  return SharedBufferFillFromStream(a1, a3, SharedBufferReadFromBufferProc, &v5);
}

size_t SharedBufferReadFromBufferProc(const void **a1, void *__dst, size_t a3)
{
  memcpy(__dst, *a1, a3);
  *a1 = *a1 + a3;
  return a3;
}

uint64_t SharedBufferRead(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  v7[1] = v3;
  v7[2] = v4;
  v7[0] = a2;
  return SharedBufferFlushToStream(a1, a3, SharedBufferWriteToBufferProc, v7);
}

size_t SharedBufferWriteToBufferProc(void **a1, const void *a2, size_t a3)
{
  memcpy(*a1, a2, a3);
  *a1 = *a1 + a3;
  return a3;
}

char **AARemoveArchiveOutputStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  DefaultNThreads = a5;
  if (!a5)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v10 = malloc(0x38uLL);
  v11 = v10;
  if (v10)
  {
    memset_s(v10, 0x38uLL, 0, 0x38uLL);
  }

  memset(&v28, 0, sizeof(v28));
  v12 = malloc(0x478uLL);
  v13 = v12;
  if (v12 && (memset_s(v12, 0x478uLL, 0, 0x478uLL), v11))
  {
    if (realpath_DARWIN_EXTSN(a1, v13))
    {
      if (stat(v13, &v28) || (v28.st_mode & 0xF000) != 0x4000)
      {
        v27 = a1;
        v23 = "Invalid directory: %s";
        v24 = 393;
        goto LABEL_24;
      }

      *(v13 + 1024) = a4;
      *(v13 + 1032) = a2;
      *(v13 + 1040) = a3;
      *(v13 + 1048) = getRealTime();
      *(v13 + 1120) = DefaultNThreads;
      v14 = StringTableCreate();
      *(v13 + 1088) = v14;
      if (!v14)
      {
        v23 = "string table creation";
        v24 = 402;
        goto LABEL_24;
      }

      v15 = calloc(*(v13 + 1120), 8uLL);
      *(v13 + 1128) = v15;
      if (v15)
      {
        if (*(v13 + 1120))
        {
          v16 = 0;
          while (1)
          {
            v17 = malloc(0x1040uLL);
            v18 = v17;
            if (v17)
            {
              memset_s(v17, 0x1040uLL, 0, 0x1040uLL);
              *(v18 + 2064) = -1;
              *v18 = v13;
              v19 = StringTableCreate();
              *(v18 + 2072) = v19;
              if (v19)
              {
                goto LABEL_19;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "workerCreate", 82, 123, 0, "StringTableCreate");
            }

            else
            {
              v20 = *__error();
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "workerCreate", 78, 123, v20, "malloc");
            }

            workerDestroy(v18);
            v18 = 0;
LABEL_19:
            *(*(v13 + 1128) + 8 * v16) = v18;
            v21 = *(v13 + 1128);
            if (!*(v21 + 8 * v16))
            {
              v23 = "creating new worker";
              v24 = 410;
              goto LABEL_24;
            }

            ++v16;
            v15 = *(v13 + 1120);
            if (v16 >= v15)
            {
              goto LABEL_31;
            }
          }
        }

        v21 = v15;
        LODWORD(v15) = 0;
LABEL_31:
        v26 = ThreadPoolCreate(v15, v21, workerProc_1);
        *(v13 + 1136) = v26;
        if (v26)
        {
          v11[3] = removeStreamWriteHeader;
          v11[4] = removeStreamWriteBlob;
          v11[2] = removeStreamAbort;
          *v11 = v13;
          v11[1] = removeStreamClose;
          return v11;
        }

        v23 = "ThreadPoolCreate";
        v24 = 415;
LABEL_24:
        v22 = 0;
      }

      else
      {
        v22 = *__error();
        v23 = "malloc";
        v24 = 406;
      }
    }

    else
    {
      v22 = *__error();
      v27 = a1;
      v23 = "%s";
      v24 = 392;
    }
  }

  else
  {
    v22 = *__error();
    v23 = "malloc";
    v24 = 391;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "AARemoveArchiveOutputStreamOpen", v24, 123, v22, v23, v27);
  free(v11);
  removeStreamClose(v13);
  return 0;
}

uint64_t workerProc_1(uint64_t *a1)
{
  v2 = *a1;
  if (a1[260])
  {
    v3 = 0;
    v4 = (a1 + 261);
    do
    {
      if ((processEntry(a1, v4, a1[259]) & 0x80000000) != 0)
      {
        v9 = 185;
        goto LABEL_14;
      }

      ++v3;
      v4 += 2;
    }

    while (v3 < a1[260]);
  }

  v5 = a1[517];
  v6 = a1[518];
  if (v5 < v6)
  {
    v7 = 8 * v5;
    do
    {
      v8 = *(v2 + 1112) + v7;
      if (*(a1 + 1038) == *(v8 + 6))
      {
        if ((processEntry(a1, v8, *(v2 + 1088)) & 0x80000000) != 0)
        {
          v9 = 193;
LABEL_14:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "workerProc", v9, 123, 0, "entry failed");
          v10 = 0;
          atomic_compare_exchange_strong((v2 + 1056), &v10, 1u);
          return 0;
        }

        v6 = a1[518];
      }

      ++v5;
      v7 += 8;
    }

    while (v5 < v6);
  }

  return 0;
}

uint64_t removeStreamClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 1024);
    if (atomic_load((result + 1056)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "removeStreamClose", 314, 123, 0, "stream cancelled");
      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    if (*(v1 + 1080))
    {
      if ((ThreadPoolRunWorker(*(v1 + 1136)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "removeStreamClose", 319, 123, 0, "ThreadPoolRunWorker");
        v4 = 0;
      }

      *(v1 + 1080) = 0;
    }

    v5 = *(v1 + 1104);
    if (v5)
    {
      v6 = 0;
      v7 = (*(v1 + 1112) + 6);
      v8 = (v5 + *(v1 + 1120) - 1) / (4 * *(v1 + 1120));
      do
      {
        v10 = *v7;
        v7 += 4;
        v9 = v10;
        if (v10 > v6)
        {
          v6 = v9;
        }

        --v5;
      }

      while (v5);
      v11 = v8 <= 0xC8 ? 200 : v8;
      if (v4)
      {
        while (1)
        {
          if (*(v1 + 1104))
          {
            v12 = 0;
            while (1)
            {
              Worker = ThreadPoolGetWorker(*(v1 + 1136));
              if (!Worker)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "removeStreamClose", 335, 123, 0, "ThreadPoolGetWorker");
                goto LABEL_28;
              }

              *(Worker + 2080) = 0;
              *(Worker + 4136) = v12;
              v12 += v11;
              v14 = *(v1 + 1104);
              if (v12 < v14)
              {
                v14 = v12;
              }

              *(Worker + 4144) = v14;
              *(Worker + 4152) = v6;
              if ((ThreadPoolRunWorker(*(v1 + 1136)) & 0x80000000) != 0)
              {
                break;
              }

              if (v12 >= *(v1 + 1104))
              {
                goto LABEL_25;
              }
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "removeStreamClose", 340, 123, 0, "ThreadPoolRunWorker");
LABEL_28:
            v4 = 0;
            v15 = 1;
          }

          else
          {
LABEL_25:
            v15 = 0;
            v4 = 1;
          }

          ThreadPoolSync(*(v1 + 1136));
          if (!v6)
          {
            break;
          }

          --v6;
          if (v15)
          {
            v4 = 0;
            break;
          }
        }
      }
    }

    ThreadPoolDestroy(*(v1 + 1136));
    v16 = *(v1 + 1128);
    if (v16)
    {
      if (*(v1 + 1120))
      {
        v17 = 0;
        do
        {
          workerDestroy(*(*(v1 + 1128) + 8 * v17++));
        }

        while (v17 < *(v1 + 1120));
        v16 = *(v1 + 1128);
      }

      free(v16);
    }

    StringTableDestroy(*(v1 + 1088));
    free(*(v1 + 1112));
    if (v4 && v2 >> 62)
    {
      v18 = getRealTime() - *(v1 + 1048);
      v19 = MEMORY[0x29EDCA610];
      fwrite("Remove archive\n", 0xFuLL, 1uLL, *MEMORY[0x29EDCA610]);
      v20 = *v19;
      v21 = atomic_load((v1 + 1064));
      fprintf(v20, "%12llu entries removed\n", v21);
      v22 = *v19;
      v23 = atomic_load((v1 + 1072));
      fprintf(v22, "%12llu entries skipped\n", v23);
      fprintf(*v19, "%12.2f time (s)\n", v18);
    }

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

uint64_t removeStreamWriteHeader(uint64_t a1, AAHeader header)
{
  *&v42[1023] = *MEMORY[0x29EDCA608];
  value = -1;
  if (atomic_load((a1 + 1056)))
  {
    return 0xFFFFFFFFLL;
  }

  v7.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v7);
  if ((KeyIndex & 0x80000000) != 0 || AAHeaderGetFieldUInt(header, KeyIndex, &value) >= 2)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "removeStreamWriteHeader", 215, 123, "AA entry missing TYP field");
    return 0;
  }

  if (value == 77)
  {
    return 0;
  }

  length[0] = 0;
  v9.ikey = 5521744;
  v10 = AAHeaderGetKeyIndex(header, v9);
  if ((v10 & 0x80000000) != 0 || AAHeaderGetFieldString(header, v10, 0x400uLL, &__s, length) >= 2)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "removeStreamWriteHeader", 224, 123, "AA entry missing/invalid PAT field");
    return 0;
  }

  v11 = *(a1 + 1040);
  if (v11)
  {
    v12 = v11(*(a1 + 1032), 80, &__s, header);
    if (v12 < 0)
    {
      v18 = "user cancelled";
      v19 = 234;
      goto LABEL_46;
    }

    if (!v12)
    {
      v13 = (*(a1 + 1040))(*(a1 + 1032), 81, &__s, length);
      if (v13 < 0)
      {
        v18 = "user cancelled";
        v19 = 239;
        goto LABEL_46;
      }

      if (v13)
      {
        __strlcpy_chk();
      }

      goto LABEL_14;
    }

    return 0;
  }

LABEL_14:
  if (value != 68)
  {
    v20 = *(a1 + 1080);
    if (!v20)
    {
      Worker = ThreadPoolGetWorker(*(a1 + 1136));
      *(a1 + 1080) = Worker;
      if (!Worker)
      {
        v18 = "ThreadPoolGetWorker";
        v19 = 269;
        goto LABEL_46;
      }

      v20 = Worker;
      *(Worker + 2080) = 0;
      StringTableClear(*(Worker + 2072));
      *(v20 + 4136) = 0u;
      *(v20 + 4152) = -1;
    }

    v37 = 0;
    v22 = strlen(&__s);
    if ((StringTableAppend(*(v20 + 2072), &__s, v22, &v37) & 0x80000000) != 0)
    {
      v18 = "StringTableAppend";
      v19 = 278;
      goto LABEL_46;
    }

    v23 = *(v20 + 2080);
    v24 = v20 + 8 * v23++;
    *(v20 + 2080) = v23;
    *(v24 + 2088) = v37;
    *(v24 + 2092) = value;
    *(v24 + 2094) = 0;
    if (v23 == 256)
    {
      if ((ThreadPoolRunWorker(*(a1 + 1136)) & 0x80000000) == 0)
      {
        result = 0;
        *(a1 + 1080) = 0;
        return result;
      }

      v18 = "ThreadPoolRunWorker";
      v19 = 287;
LABEL_46:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "removeStreamWriteHeader", v19, 123, 0, v18);
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  v14 = *(a1 + 1104);
  if (v14 == *(a1 + 1096))
  {
    v15 = 2 * v14;
    v16 = v14 == 0;
    v17 = 256;
    if (!v16)
    {
      v17 = v15;
    }

    *(a1 + 1096) = v17;
    if ((8 * v17) >= 0x2000000001)
    {
      *__error() = 12;
LABEL_48:
      *(a1 + 1096) = 0;
      *(a1 + 1104) = 0;
      *(a1 + 1112) = 0;
      v36 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "removeStreamWriteHeader", 250, 123, v36, "malloc");
      return 0xFFFFFFFFLL;
    }

    v25 = *(a1 + 1112);
    v26 = realloc(v25, 8 * v17);
    if (!v26)
    {
      free(v25);
      goto LABEL_48;
    }

    *(a1 + 1112) = v26;
  }

  v38 = 0;
  v27 = strlen(&__s);
  v28 = StringTableAppend(*(a1 + 1088), &__s, v27, &v38);
  if (v28 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "removeStreamWriteHeader", 253, 123, 0, "StringTableAppend");
  }

  else
  {
    v29 = *(a1 + 1112);
    v30 = *(a1 + 1104);
    *(a1 + 1104) = v30 + 1;
    v31 = v29 + 8 * v30;
    *v31 = v38;
    *(v31 + 4) = value;
    *(v31 + 6) = 0;
    v32 = __s;
    if (__s)
    {
      v33 = 0;
      v34 = v42;
      do
      {
        if (v32 == 47)
        {
          ++v33;
        }

        *(v31 + 6) = v33;
        v35 = *v34++;
        v32 = v35;
      }

      while (v35);
    }
  }

  return (v28 >> 31);
}

uint64_t removeStreamWriteBlob(uint64_t a1)
{
  if (atomic_load((a1 + 1056)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void workerDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 2064);
    if ((v2 & 0x80000000) == 0)
    {
      close(v2);
    }

    StringTableDestroy(*(a1 + 2072));

    free(a1);
  }
}

uint64_t processEntry(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v30 = *MEMORY[0x29EDCA608];
  memset(&v28, 0, sizeof(v28));
  v5 = *a1;
  v6 = (*(a3 + 32) + *(*(a3 + 8) + 16 * *a2));
  if ((concatPath(__s, 0x400uLL, *a1, v6) & 0x80000000) != 0)
  {
    v13 = 114;
LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "processEntry", v13, 123, 0, "invalid path");
LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "processEntry", 167, 123, 0, "Entry failed: %s", v6);
    return 0xFFFFFFFFLL;
  }

  v7 = strrchr(__s, 47);
  if (!v7)
  {
    v13 = 118;
    goto LABEL_11;
  }

  v8 = v7;
  *v7 = 0;
  v9 = v7 + 1;
  v10 = strlen(__s);
  v11 = v10;
  v12 = *(a1 + 2064);
  if ((v12 & 0x80000000) == 0)
  {
    if (v10 == *(a1 + 2056) && !strcmp(__s, (a1 + 8)))
    {
      goto LABEL_14;
    }

    close(v12);
    *(a1 + 2064) = -1;
  }

  if (v11 >= 0x800)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "workerUpdateDir", 95, 123, 0, "directory path too long");
    goto LABEL_18;
  }

  *(a1 + 2056) = v11;
  memcpy((a1 + 8), __s, v11);
  *(a1 + 8 + v11) = 0;
  v15 = open((a1 + 8), 0);
  *(a1 + 2064) = v15;
  if (v15 < 0)
  {
LABEL_18:
    v20 = *(v5 + 130);
    if (!v20)
    {
      goto LABEL_27;
    }

    v21 = v20(*(v5 + 129), 82, v6, 0);
    if (!v21)
    {
      goto LABEL_27;
    }

    v18 = 0;
    v19 = v21 >= 0;
    goto LABEL_25;
  }

LABEL_14:
  *v8 = 47;
  if (fstatat(*(a1 + 2064), v9, &v28, 32) < 0)
  {
    if (*__error() != 2)
    {
      v25 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARemoveArchiveOutputStream.c", "processEntry", 128, 123, v25, __s);
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v16 = aaEntryTypeFromMode(v28.st_mode);
  v17 = *(a2 + 2);
  if (v16 == v17)
  {
    v18 = 0;
    v19 = 1;
  }

  else
  {
    v22 = *(v5 + 130);
    if (!v22)
    {
      goto LABEL_27;
    }

    v23 = v22(*(v5 + 129), 83, v6, 0);
    v18 = v23 == 0;
    v19 = v23 >= 0;
    if (v23 < 1)
    {
      goto LABEL_25;
    }

    v17 = *(a2 + 2);
  }

  if (unlinkat(*(a1 + 2064), v9, (v17 == 68) << 7) < 0)
  {
    v26 = *(v5 + 130);
    if (v26)
    {
      v27 = v26(*(v5 + 129), 84, v6, 0);
      if (!v27)
      {
        v18 = 1;
      }

      if (v27 < 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v18 = 1;
    }
  }

LABEL_25:
  if (!v19)
  {
    goto LABEL_12;
  }

  if (!v18)
  {
    result = 0;
    v24 = (v5 + 1064);
    goto LABEL_28;
  }

LABEL_27:
  result = 0;
  v24 = (v5 + 1072);
LABEL_28:
  atomic_fetch_add_explicit(v24, 1uLL, memory_order_relaxed);
  return result;
}

uint64_t AEADecryptToFileChunk(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unsigned int a9)
{
  v19 = 0;
  v18[0] = a2;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a8 >> 62;
  LODWORD(v19) = a1[10] != 0;
  v11 = AEADecryptToFileChunkAsyncStreamOpen(a3, v18, asyncContext_0, asyncProgress_0, a6, a7, a8, a9);
  v12 = v11;
  if (!v11)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFile.c", "AEADecryptToFileChunk", 87, 56, 0, "AEADecryptToFileAsyncStreamOpen");
LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  if (!a1[10])
  {
    if ((AAAsyncByteStreamProcessAllRanges(v11, a1, a8, a9) & 0x8000000000000000) == 0)
    {
      v14 = 1;
      goto LABEL_19;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFile.c", "AEADecryptToFileChunk", 115, 56, 0, "AAAsyncByteStreamProcessAllRanges");
    goto LABEL_18;
  }

  while (1)
  {
    v16 = 0;
    v17 = 0;
    Range = AAAsyncByteStreamGetRange(v12, &v17, &v16);
    if (Range < 0)
    {
      break;
    }

    if (Range)
    {
      if (!v17)
      {
        v14 = 1;
        goto LABEL_16;
      }

      if ((AAByteStreamPReadAsync(a1) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFile.c", "AEADecryptToFileChunk", 104, 56, 0, "AAByteStreamPReadAsync");
        goto LABEL_15;
      }
    }

    else
    {
      usleep(0x186A0u);
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFile.c", "AEADecryptToFileChunk", 99, 56, 0, "AAAsyncByteStreamGetRange");
LABEL_15:
  v14 = 0;
LABEL_16:
  if ((AAByteStreamPReadAsync(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFile.c", "AEADecryptToFileChunk", 109, 56, 0, "AAByteStreamPReadAsync barrier");
    goto LABEL_18;
  }

LABEL_19:
  if ((AAAsyncByteStreamClose(v12) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFile.c", "AEADecryptToFileChunk", 119, 56, 0, "AAAsyncByteStreamClose");
    v14 = 0;
  }

  if (v14)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t asyncContext_0(uint64_t result, _OWORD *context)
{
  v3 = result;
  v4 = *result;
  if (*(result + 28))
  {
    *v4 = *context;
    v5 = context[1];
    v6 = context[2];
    v7 = context[3];
    *(v4 + 64) = *(context + 8);
    *(v4 + 32) = v6;
    *(v4 + 48) = v7;
    *(v4 + 16) = v5;
    if (*(result + 24))
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
              v19 = off_29EE51318[v18 & 3];
            }

            fprintf(v17, "  checksum: %s\n", v19);
            v20 = *v8;
            v21 = AEAContextGetFieldUInt(context, 0xEu);
            fprintf(v20, "  container size: %llu B\n", v21);
            v22 = *v8;
            v23 = AEAContextGetFieldUInt(context, 0xDu);
            fprintf(v22, "  raw size: %llu B\n", v23);
            if (v3[8])
            {
              v24 = "yes";
            }

            else
            {
              v24 = "no";
            }

            fprintf(*v8, "  async read stream: %s\n", v24);
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
          v3[7] = 1;
          return 0;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t asyncProgress_0(uint64_t a1)
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

void *aaCompositeChunkAsyncStreamOpen(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a1;
  if (a1 && a2)
  {
    v7 = a5;
    v10 = malloc(0x10uLL);
    v11 = v10;
    if (v10)
    {
      memset_s(v10, 0x10uLL, 0, 0x10uLL);
      *v11 = v5;
      v12 = AAChunkAsyncStreamOpen(v5, a2, a3, a4 | 0x200000000000000, v7);
      *(v11 + 8) = v12;
      if (v12)
      {
        v13 = aaAsyncByteStreamAlloc(v11, compositeChunkAsyncClose, ~(a4 >> 55) & 4, 20.0, 1.0);
        if (v13)
        {
          v5 = v13;
          v13[2] = compositeChunkAsyncGetRange;
          v13[3] = compositeChunkAsyncProcess;
          v13[4] = compositeChunkAsyncCancel;
          v13[5] = compositeChunkAsyncIsCancelled;
          return v5;
        }

        v15 = "async stream alloc";
        v16 = 89;
      }

      else
      {
        v15 = "AAChunkAsyncStreamOpen";
        v16 = 86;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompositeChunkAsyncStream.c", "aaCompositeChunkAsyncStreamOpen", v16, 145, 0, v15);
    }

    else
    {
      v14 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACompositeChunkAsyncStream.c", "aaCompositeChunkAsyncStreamOpen", 78, 145, v14, "malloc");
    }

    compositeChunkAsyncClose(v11);
    AAAsyncByteStreamClose(0);
    return 0;
  }

  return v5;
}

uint64_t (***compositeChunkAsyncClose(uint64_t (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    v2 = AAAsyncByteStreamClose(result[1]);
    v3 = AAAsyncByteStreamClose(*v1) | v2;
    free(v1);
    return (v3 >> 31);
  }

  return result;
}

void aeaContainerDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 384);
    if (v2)
    {
      memset_s(*(a1 + 384), *(a1 + 4), 0, *(a1 + 4));
    }

    free(v2);
    v3 = *(a1 + 392);
    if (v3)
    {
      memset_s(*(a1 + 392), 544 * *(a1 + 400), 0, 544 * *(a1 + 400));
    }

    free(v3);
    memset_s(a1, 0x6C0uLL, 0, 0x6C0uLL);

    free(a1);
  }
}

uint64_t aeaContainerCreateNew(uint64_t a1)
{
  v2 = malloc(0x6C0uLL);
  v3 = v2;
  if (!v2)
  {
    v12 = *__error();
    v10 = "malloc";
    v11 = 22;
    goto LABEL_28;
  }

  memset_s(v2, 0x6C0uLL, 0, 0x6C0uLL);
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a1 + 64);
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  if ((aeaCryptoInit((v3 + 72), v3) & 0x80000000) != 0)
  {
    v10 = "Invalid context";
    v11 = 28;
    goto LABEL_27;
  }

  v6 = *(v3 + 4);
  if (v6)
  {
    v7 = malloc(*(v3 + 4));
    *(v3 + 384) = v7;
    if (v7)
    {
      memcpy(v7, *(a1 + 2712), v6);
      goto LABEL_6;
    }

    v12 = *__error();
    v10 = "malloc";
    v11 = 34;
LABEL_28:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateNew", v11, 28, v12, v10);
    aeaContainerDestroy(v3);
    return 0;
  }

LABEL_6:
  if (*v3 <= 5u && ((1 << *v3) & 0x2A) != 0)
  {
    goto LABEL_10;
  }

  if (*(a1 + 592))
  {
    v13 = *(v3 + 240);
    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = v13(a1 + 332, a1 + 592);
    if (*(a1 + 332) != *(v3 + 104) || v14 < 0)
    {
      goto LABEL_23;
    }

    v15 = *(a1 + 592);
    if (v15 >= 0x101)
    {
      __break(1u);
LABEL_23:
      v10 = "Invalid signing private key in context";
      v11 = 45;
      goto LABEL_27;
    }
  }

  else
  {
    v15 = 0;
  }

  __memcpy_chk();
  *(v3 + 1188) = v15;
  memset_s((v3 + 1192 + v15), 256 - v15, 0, 256 - v15);
  *(v3 + 1712) = *(a1 + 2416);
  if (*(a1 + 332) != *(v3 + 104))
  {
    v10 = "Invalid signing public key in context";
    v11 = 55;
    goto LABEL_27;
  }

LABEL_10:
  if ((aeaContainerOffsetsInit(v3 + 280, v3, (v3 + 72)) & 0x80000000) != 0)
  {
    v10 = "deriving container offsets";
    v11 = 59;
    goto LABEL_27;
  }

  v9 = *(v3 + 344);
  *(v3 + 32) = 0;
  *(v3 + 40) = v9;
  if ((aeaDeriveMainKeyNew((v3 + 72), v3, (v3 + 668), (v3 + 928), (v3 + 408), (a1 + 72), (a1 + 2152), (a1 + 332), (a1 + 852)) & 0x80000000) != 0)
  {
    v10 = "Main key derivation";
    v11 = 75;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  return v3;
}

uint64_t aeaContainerCreateExisting(uint64_t a1, AAByteStream_impl *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v112 = *MEMORY[0x29EDCA608];
  v92 = 0;
  memset(__s, 0, sizeof(__s));
  v90 = 0;
  memset(v89, 0, sizeof(v89));
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  memset(v86, 0, sizeof(v86));
  v8 = malloc(0x6C0uLL);
  v9 = v8;
  if (!v8)
  {
    v19 = *__error();
    v20 = "malloc";
    v21 = 95;
    goto LABEL_41;
  }

  memset_s(v8, 0x6C0uLL, 0, 0x6C0uLL);
  v10 = (v9 + 668);
  if ((aeaContextUnlock(a1, v9, (v9 + 668), (v9 + 408), v5, v4) & 0x80000000) != 0)
  {
    v20 = "unlocking context";
    v21 = 99;
LABEL_40:
    v19 = 0;
    goto LABEL_41;
  }

  if ((aeaCryptoInit((v9 + 72), v9) & 0x80000000) != 0)
  {
    v20 = "Invalid container";
    v21 = 102;
    goto LABEL_40;
  }

  if ((aeaContainerOffsetsInit(v9 + 280, v9, (v9 + 72)) & 0x80000000) != 0)
  {
    v20 = "deriving container offsets";
    v21 = 103;
    goto LABEL_40;
  }

  v11 = *(v9 + 4);
  if (v11)
  {
    v12 = malloc(*(v9 + 4));
    *(v9 + 384) = v12;
    if (v12)
    {
      memcpy(v12, *(a1 + 2712), v11);
      goto LABEL_8;
    }

    v19 = *__error();
    v20 = "malloc";
    v21 = 110;
LABEL_41:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", v21, 28, v19, v20);
    v18 = 0;
    goto LABEL_42;
  }

LABEL_8:
  if (*v9 > 5u || ((1 << *v9) & 0x2A) == 0)
  {
    if (*(a1 + 592))
    {
      v27 = *(v9 + 240);
      if (!v27)
      {
        goto LABEL_36;
      }

      v28 = v27(a1 + 332, a1 + 592);
      if (*(a1 + 332) != *(v9 + 104) || v28 < 0)
      {
        goto LABEL_36;
      }

      v29 = *(a1 + 592);
      if (v29 >= 0x101)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        v20 = "Invalid signing private key in context";
        v21 = 121;
        goto LABEL_40;
      }
    }

    else
    {
      v29 = 0;
    }

    __memcpy_chk();
    *(v9 + 1188) = v29;
    memset_s((v9 + 1192 + v29), 256 - v29, 0, 256 - v29);
    *(v9 + 1712) = *(a1 + 2416);
    if (*(a1 + 332) != *(v9 + 104))
    {
      v20 = "Invalid signing public key in context";
      v21 = 131;
      goto LABEL_40;
    }
  }

  v13 = *(v9 + 120);
  if (v13 >= 0x101)
  {
    goto LABEL_35;
  }

  __memcpy_chk();
  *(v9 + 928) = v13;
  memset_s((v9 + 932 + v13), 256 - v13, 0, 256 - v13);
  v14 = *(v9 + 84);
  if (v14 >= 0x101)
  {
    goto LABEL_35;
  }

  __memcpy_chk();
  LODWORD(v87[0]) = v14;
  memset_s(v87 + v14 + 4, 256 - v14, 0, 256 - v14);
  v15 = *(v9 + 84);
  if (v15 >= 0x101)
  {
    goto LABEL_35;
  }

  __memcpy_chk();
  LODWORD(v89[0]) = v15;
  memset_s(v89 + v15 + 4, 256 - v15, 0, 256 - v15);
  v16 = AAByteStreamSeek(a2, 0, 2);
  if ((v16 & 0x8000000000000000) == 0 && v16 != *(v9 + 40))
  {
    v20 = "Container size mismatch";
    v21 = 143;
    goto LABEL_40;
  }

  v17 = *(v9 + 376);
  if (v17 <= 0x100000)
  {
    v18 = 0x100000;
  }

  else
  {
    v18 = *(v9 + 376);
  }

  if (v17 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_28:
    v26 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 151, 28, *v26, "malloc");
LABEL_42:
    v23 = 0;
LABEL_43:
    v30 = 1;
    goto LABEL_44;
  }

  v22 = malloc(v18);
  if (!v22)
  {
    goto LABEL_28;
  }

  v23 = v22;
  v24 = (*(v9 + 32) + *(v9 + 16) - 1) / *(v9 + 16);
  if (HIDWORD(v24))
  {
    v25 = 155;
LABEL_51:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", v25, 28, 0, "Invalid sizes in root header");
    goto LABEL_43;
  }

  *(v9 + 400) = v24;
  v32 = *(v9 + 20);
  v33 = (v24 + v32 - 1) / v32;
  *(v9 + 404) = v33;
  if (((v32 * v33) & 0xFFFFFFFF00000000) != 0)
  {
    v25 = 158;
    goto LABEL_51;
  }

  v34 = v33 * v32;
  if (v34 >= 0xF0F0F10)
  {
    *__error() = 12;
    *(v9 + 392) = 0;
LABEL_98:
    v65 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 171, 28, v65, "malloc");
    goto LABEL_43;
  }

  v35 = calloc(v34, 0x220uLL);
  *(v9 + 392) = v35;
  if (!v35)
  {
    goto LABEL_98;
  }

  v81 = v18;
  v36 = *(v9 + 344);
  v83 = a2;
  v82 = (v9 + 668);
  if (*(v9 + 404))
  {
    v85 = 0;
    v37 = *(v9 + 376);
    while (1)
    {
      v84 = v36;
      if (*(a2 + 4))
      {
        v38 = 0;
        if (v37)
        {
          v39 = v23;
          v40 = v37;
          while (1)
          {
            v41 = (*(a2 + 4))(*a2, v39, v40, v36);
            if (v41 < 0)
            {
              break;
            }

            if (v41)
            {
              v39 += v41;
              v38 += v41;
              v36 += v41;
              v40 -= v41;
              if (v40)
              {
                continue;
              }
            }

            goto LABEL_66;
          }

          v38 = v41;
        }
      }

      else
      {
        v38 = -1;
      }

LABEL_66:
      if (v38 != v37)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 183, 28, 0, "loading cluster header");
        goto LABEL_107;
      }

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
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v93 = 0u;
      memset(&v111[8], 0, 252);
      memset(v110, 0, 260);
      *&v111[8] = 19267;
      *v111 = 0x5F41454100000006;
      memset_s(&v111[10], 0xFAuLL, 0, 0xFAuLL);
      v42 = *v111;
      if (*v111 >= 0xFDu)
      {
        goto LABEL_35;
      }

      *&v111[*v111 + 4] = v85;
      *v111 = v42 + 4;
      memset_s(&v111[v42 + 8], 252 - v42, 0, 252 - v42);
      v43 = *(v9 + 144);
      if (!v43 || !*v10)
      {
        break;
      }

      v44 = v43(&v93, *(v9 + 72), v10, v111, v110);
      memset_s(v111, 0x104uLL, 0, 0x104uLL);
      v45 = 0;
      if (v44 < 0)
      {
        goto LABEL_73;
      }

LABEL_74:
      memset(v110 + 12, 0, 248);
      *(v110 + 4) = 0x4B4548435F414541;
      LODWORD(v110[0]) = 8;
      memset_s(v110 + 12, 0xF8uLL, 0, 0xF8uLL);
      memset(v111, 0, sizeof(v111));
      v46 = *(v9 + 144);
      if (!v46 || !v93)
      {
        memset_s(v110, 0x104uLL, 0, 0x104uLL);
LABEL_105:
        memset_s(&v93, 0x104uLL, 0, 0x104uLL);
LABEL_106:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 187, 28, 0, "deriving cluster header key");
LABEL_107:
        v30 = 1;
        goto LABEL_108;
      }

      v47 = v46(__s, *(v9 + 76), &v93, v110, v111);
      memset_s(v110, 0x104uLL, 0, 0x104uLL);
      if (v47 < 0)
      {
        goto LABEL_105;
      }

      memset_s(&v93, 0x104uLL, 0, 0x104uLL);
      if (v45)
      {
        goto LABEL_106;
      }

      v48 = *(v9 + 168);
      if (!v48 || LODWORD(v87[0]) != *(v9 + 84) || (v48(v23, *(v9 + 360), v87, __s, &v23[*(v9 + 360)], *(v9 + 376) - *(v9 + 360)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 195, 28, 0, "decrypting cluster header");
        goto LABEL_107;
      }

      v49 = *(v9 + 84);
      if (v49 >= 0x101)
      {
        goto LABEL_35;
      }

      __memcpy_chk();
      LODWORD(v87[0]) = v49;
      memset_s(v87 + v49 + 4, 256 - v49, 0, 256 - v49);
      LODWORD(v50) = *(v9 + 20);
      if (v50)
      {
        v51 = 0;
        v52 = *(v9 + 368);
        v53 = *(v9 + 352);
        do
        {
          v54 = v51 + v85 * v50;
          if (v54 >= *(v9 + 400))
          {
            v37 = *(v9 + 376);
            a2 = v83;
            v36 = v37 + v84;
            v10 = (v9 + 668);
            goto LABEL_92;
          }

          v55 = (*(v9 + 392) + 544 * v54);
          *v55 = v54;
          v55[1] = *&v23[v53];
          v55[2] = *&v23[v53 + 4];
          v56 = *(v9 + 48);
          if (v56 >= 0x101)
          {
            goto LABEL_35;
          }

          v57 = v53 + 8;
          memcpy(v55 + 7, &v23[v57], *(v9 + 48));
          v55[6] = v56;
          memset_s(v55 + v56 + 28, 256 - v56, 0, 256 - v56);
          v58 = *(v9 + 84);
          if (v58 >= 0x101)
          {
            goto LABEL_35;
          }

          v53 = v57 + *(v9 + 48);
          memcpy(v55 + 72, &v23[v52], *(v9 + 84));
          v55[71] = v58;
          memset_s(v55 + v58 + 288, 256 - v58, 0, 256 - v58);
          v52 += *(v9 + 84);
          ++v51;
          LODWORD(v50) = *(v9 + 20);
        }

        while (v51 < v50);
        v37 = *(v9 + 376);
        a2 = v83;
        v36 = v37 + v84;
        v10 = (v9 + 668);
        if (!v50)
        {
          goto LABEL_95;
        }

LABEL_92:
        v59 = (v50 * v85);
        v60 = *(v9 + 400);
        v50 = v50;
        v61 = 544 * v59;
        do
        {
          if (v59 >= v60)
          {
            break;
          }

          v62 = *(v9 + 392) + v61;
          *(v62 + 16) = v36;
          v36 += *(v62 + 8);
          v61 += 544;
          ++v59;
          --v50;
        }

        while (v50);
      }

      else
      {
        v37 = *(v9 + 376);
        v36 = v37 + v84;
        a2 = v83;
        v10 = (v9 + 668);
      }

LABEL_95:
      if (++v85 >= *(v9 + 404))
      {
        goto LABEL_96;
      }
    }

    memset_s(v111, 0x104uLL, 0, 0x104uLL);
LABEL_73:
    v45 = 1;
    goto LABEL_74;
  }

LABEL_96:
  v63 = *(v9 + 40);
  v64 = v63 - v36;
  if (v63 < v36)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 230, 28, 0, "Invalid container size");
    goto LABEL_107;
  }

  *(v9 + 64) = v64;
  v18 = v81;
  if (v63 == v36 || *(a1 + 2740))
  {
    v30 = 0;
  }

  else
  {
    v66 = v36;
    memset(v111, 0, sizeof(v111));
    memset(v110, 0, 260);
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
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
    if (*(v9 + 248) && (*(v110 + 7) = 1262571615, *&v110[0] = 0x5F41454100000007, memset_s((v110 | 0xB), 0xF9uLL, 0, 0xF9uLL), (v67 = *(v9 + 144)) != 0) && *v82 && (v67(v111, *(v9 + 72), v82, v110, &v93) & 0x80000000) == 0)
    {
      v68 = (*(v9 + 248))(v111);
    }

    else
    {
      v68 = 0;
    }

    memset_s(v111, 0x104uLL, 0, 0x104uLL);
    memset_s(v110, 0x104uLL, 0, 0x104uLL);
    if (!v68)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 241, 28, 0, "authenticating padding");
      goto LABEL_107;
    }

    v69 = v83;
    while (1)
    {
      if (v64 >= 0x100000)
      {
        v70 = 0x100000;
      }

      else
      {
        v70 = v64;
      }

      if (!*(v69 + 4))
      {
        goto LABEL_133;
      }

      v71 = 0;
      v72 = v23;
      v73 = v66;
      v74 = v70;
      while (1)
      {
        v75 = (*(v83 + 4))(*v83, v72, v74, v73);
        if (v75 < 0)
        {
          break;
        }

        if (v75)
        {
          v72 += v75;
          v71 += v75;
          v73 += v75;
          v74 -= v75;
          if (v74)
          {
            continue;
          }
        }

        goto LABEL_127;
      }

      v71 = v75;
LABEL_127:
      if (v71 != v70)
      {
LABEL_133:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 250, 28, 0, "loading padding");
        goto LABEL_107;
      }

      v76 = *(v9 + 256);
      v69 = v83;
      if (!v76 || (v76(v68, v23, v70) & 0x80000000) != 0)
      {
        break;
      }

      v66 += v70;
      v64 -= v70;
      if (!v64)
      {
        v30 = 0;
        goto LABEL_135;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 252, 28, 0, "authenticating padding");
    v30 = 1;
LABEL_135:
    memset(v111, 0, sizeof(v111));
    v77 = *(v9 + 264);
    if (!v77)
    {
      goto LABEL_143;
    }

    if (LODWORD(v87[0]) != *(v9 + 84))
    {
      goto LABEL_143;
    }

    if ((v77(v68, v111) & 0x80000000) != 0)
    {
      goto LABEL_143;
    }

    if (*v111 != *(v9 + 84))
    {
      goto LABEL_143;
    }

    if (*v111 >= 8u)
    {
      v78 = 0;
      v79 = 4;
      do
      {
        v78 |= *&v111[v79] ^ *(v87 + v79);
        v80 = v79 + 12;
        v79 += 8;
      }

      while (v80 <= *v111);
      if (v78)
      {
LABEL_143:
        memset_s(v111, 0x104uLL, 0, 0x104uLL);
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 257, 28, 0, "authenticating padding");
        goto LABEL_107;
      }
    }

    memset_s(v111, 0x104uLL, 0, 0x104uLL);
LABEL_108:
    v18 = v81;
  }

LABEL_44:
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  memset_s(v89, 0x104uLL, 0, 0x104uLL);
  memset_s(v87, 0x104uLL, 0, 0x104uLL);
  memset_s(v86, 0x30uLL, 0, 0x30uLL);
  if (v23)
  {
    memset_s(v23, v18, 0, v18);
  }

  free(v23);
  if (v30)
  {
    aeaContainerDestroy(v9);
    return 0;
  }

  return v9;
}

uint64_t aeaContainerAppendSegment(uint64_t a1, uint64_t a2, void *__src, uint64_t a4)
{
  if (*__src == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerAppendSegment", 280, 28, 0, "Invalid segment id\n");
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 400);
  v9 = *(a1 + 404);
  v10 = *(a1 + 20);
  if (v8 < v10 * v9)
  {
    v11 = *(a1 + 40);
    goto LABEL_4;
  }

  *(a1 + 404) = v9 + 1;
  v18 = v10 * (v9 + 1);
  if (v18 >= 0xFFFFFFFF)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerAppendSegment", 287, 28, 0, "Container size limit reached");
    return 0xFFFFFFFFLL;
  }

  if (v18 >= 0xF0F0F10)
  {
    *__error() = 12;
LABEL_23:
    *(a1 + 392) = 0;
    v22 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerAppendSegment", 289, 28, v22, "malloc");
    return 0xFFFFFFFFLL;
  }

  v19 = *(a1 + 392);
  v20 = realloc(v19, 544 * v18);
  if (!v20)
  {
    free(v19);
    goto LABEL_23;
  }

  *(a1 + 392) = v20;
  memset_s(&v20[544 * *(a1 + 400)], 544 * (v18 - *(a1 + 400)), 0, 544 * (v18 - *(a1 + 400)));
  v11 = *(a1 + 40) + *(a1 + 376);
  *(a1 + 40) = v11;
  v8 = *(a1 + 400);
LABEL_4:
  __src[2] = v11;
  v12 = *(__src + 2);
  memcpy((*(a1 + 392) + 544 * v8), __src, 0x220uLL);
  ++*(a1 + 400);
  v13 = *(a1 + 40) + v12;
  *(a1 + 32) += *(__src + 1);
  *(a1 + 40) = v13;
  if (*(a2 + 40))
  {
    v14 = 0;
    if (v12)
    {
      v15 = __src[2];
      v16 = v12;
      while (1)
      {
        v17 = (*(a2 + 40))(*a2, a4, v16, v15);
        if (v17 < 1)
        {
          break;
        }

        a4 += v17;
        v14 += v17;
        v15 += v17;
        v16 -= v17;
        if (!v16)
        {
          goto LABEL_18;
        }
      }

      v14 = v17;
    }

LABEL_18:
    if (v14 == v12)
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerAppendSegment", 308, 28, 0, "Segment write");
  return 0xFFFFFFFFLL;
}

uint64_t aeaContainerRemovePadding(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 40) -= v2;
    *(a1 + 64) = 0;
    if ((AAByteStreamTruncate(a2) & 0x80000000) != 0)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerRemovePadding", 328, 28, "Warning: container truncate failed");
    }
  }

  return 0;
}

uint64_t aeaContainerRemoveLastSegment(uint64x2_t *a1, void *a2)
{
  v2 = a1[25].i32[0];
  if (!v2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerRemoveLastSegment", 339, 28, 0, "No segments to remove");
    return 0xFFFFFFFFLL;
  }

  if (a1[4].i64[0])
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerRemoveLastSegment", 340, 28, 0, "Padding was not removed");
    return 0xFFFFFFFFLL;
  }

  v6 = a1[24].i64[1] + 544 * (v2 - 1);
  v7 = a1[25].i32[1];
  a1[25].i32[0] = v2 - 1;
  a1[25].i32[1] = (v2 + a1[1].i32[1] - 2) / a1[1].i32[1];
  a1[2] = vsubw_u32(a1[2], *(v6 + 4));
  memset_s(v6, 0x220uLL, 0, 0x220uLL);
  if (v7 != a1[25].i32[1])
  {
    a1[2].i64[1] -= a1[23].i64[1];
  }

  if ((AAByteStreamTruncate(a2) & 0x80000000) != 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerRemoveLastSegment", 364, 28, "Warning: container truncate failed");
  }

  return 0;
}

uint64_t aeaContainerReencrypt(uint64_t a1, AAByteStream_impl *a2, unsigned int *a3, _DWORD *a4, unsigned int *a5, unsigned int *a6)
{
  v127 = *MEMORY[0x29EDCA608];
  v107 = 0;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  *__n = 0u;
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  *v74 = 0u;
  v75 = 0u;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  *v57 = 0u;
  v58 = 0u;
  v12 = *(a1 + 16);
  v13 = *a1;
  v14 = *a1 < 6u;
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  v15 = malloc(v12);
  if (!v15)
  {
    v47 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 390, 28, *v47, "malloc");
    v46 = 0xFFFFFFFFLL;
    goto LABEL_66;
  }

  if ((aeaDeriveMainKeyNew((a1 + 72), a1, v74, v57, __n, a3, a4, a5, a6) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 400, 28, 0, "generating new main key");
    v46 = 0xFFFFFFFFLL;
    goto LABEL_65;
  }

  v50 = v12;
  if (!*(a1 + 400))
  {
LABEL_47:
    v43 = LODWORD(__n[0]);
    if (LODWORD(__n[0]) >= 0x101 || (memcpy((a1 + 412), __n + 4, LODWORD(__n[0])), *(a1 + 408) = v43, memset_s((a1 + 412 + v43), 256 - v43, 0, 256 - v43), v44 = LODWORD(v74[0]), v12 = v50, LODWORD(v74[0]) >= 0x101) || (memcpy((a1 + 672), v74 + 4, LODWORD(v74[0])), *(a1 + 668) = v44, memset_s((a1 + 672 + v44), 256 - v44, 0, 256 - v44), v45 = LODWORD(v57[0]), LODWORD(v57[0]) >= 0x101))
    {
LABEL_68:
      __break(1u);
    }

    memcpy((a1 + 932), v57 + 4, LODWORD(v57[0]));
    *(a1 + 928) = v45;
    memset_s((a1 + 932 + v45), 256 - v45, 0, 256 - v45);
    v46 = 0;
    goto LABEL_65;
  }

  v16 = 0;
  v49 = v14 & (1u >> v13);
  v51 = (a1 + 668);
  v53 = v15;
  while (1)
  {
    if (!*(a2 + 4))
    {
      goto LABEL_54;
    }

    v17 = *(a1 + 392) + 544 * v16;
    v18 = *(a1 + 20);
    nbyte = *(v17 + 8);
    v52 = v17;
    v19 = 0;
    if (nbyte)
    {
      v20 = *(v17 + 16);
      v21 = v15;
      v22 = *(v17 + 8);
      while (1)
      {
        v23 = (*(a2 + 4))(*a2, v21, v22, v20);
        if (v23 < 0)
        {
          break;
        }

        if (v23)
        {
          v21 += v23;
          v19 += v23;
          v20 += v23;
          v22 -= v23;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v19 = v23;
    }

LABEL_13:
    v15 = v53;
    if (v19 != nbyte)
    {
LABEL_54:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 412, 28, 0, "loading compressed segment");
      goto LABEL_63;
    }

    v124 = 0;
    v123 = 0uLL;
    v122 = 0uLL;
    v121 = 0uLL;
    v120 = 0uLL;
    v119 = 0uLL;
    v118 = 0uLL;
    v117 = 0uLL;
    v116 = 0uLL;
    v115 = 0uLL;
    v114 = 0uLL;
    v113 = 0uLL;
    v112 = 0uLL;
    v111 = 0uLL;
    v110 = 0uLL;
    v109 = 0uLL;
    v108 = 0uLL;
    *(&__s[15] + 4) = 0uLL;
    *(&__s[14] + 8) = 0uLL;
    *(&__s[13] + 8) = 0uLL;
    *(&__s[12] + 8) = 0uLL;
    *(&__s[11] + 8) = 0uLL;
    *(&__s[10] + 8) = 0uLL;
    *(&__s[9] + 8) = 0uLL;
    *(&__s[8] + 8) = 0uLL;
    *(&__s[7] + 8) = 0uLL;
    *(&__s[6] + 8) = 0uLL;
    *(&__s[5] + 8) = 0uLL;
    *(&__s[4] + 8) = 0uLL;
    *(&__s[3] + 8) = 0uLL;
    *(&__s[2] + 8) = 0uLL;
    *(&__s[1] + 8) = 0uLL;
    __s[0] = 0x5F41454100000006uLL;
    memset(v125, 0, 260);
    WORD4(__s[0]) = 19267;
    memset_s(__s + 10, 0xFAuLL, 0, 0xFAuLL);
    v24 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    *(__s + LODWORD(__s[0]) + 4) = v16 / v18;
    LODWORD(__s[0]) = v24 + 4;
    memset_s(__s + v24 + 8, 252 - v24, 0, 252 - v24);
    v25 = *(a1 + 144);
    if (v25 && *v51)
    {
      v26 = v25(&v108, *(a1 + 72), v51, __s, v125);
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      v27 = 0;
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    v27 = 1;
LABEL_21:
    memset(v125 + 8, 0, 224);
    memset(&v125[14] + 8, 0, 28);
    WORD4(v125[0]) = 19283;
    *&v125[0] = 0x5F41454100000006;
    memset_s(v125 + 10, 0xFAuLL, 0, 0xFAuLL);
    v28 = LODWORD(v125[0]);
    if (LODWORD(v125[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    v29 = v16 % v18;
    *(v125 + LODWORD(v125[0]) + 4) = v16 % v18;
    LODWORD(v125[0]) = v28 + 4;
    memset_s(v125 + v28 + 8, 252 - v28, 0, 252 - v28);
    memset(__s, 0, 260);
    v30 = *(a1 + 144);
    if (!v30 || !v108)
    {
      memset_s(v125, 0x104uLL, 0, 0x104uLL);
LABEL_57:
      memset_s(&v108, 0x104uLL, 0, 0x104uLL);
LABEL_58:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 416, 28, 0, "deriving segment key");
LABEL_59:
      v46 = 0xFFFFFFFFLL;
      v15 = v53;
      goto LABEL_64;
    }

    v31 = v30(v55, *(a1 + 76), &v108, v125, __s);
    memset_s(v125, 0x104uLL, 0, 0x104uLL);
    if (v31 < 0)
    {
      goto LABEL_57;
    }

    memset_s(&v108, 0x104uLL, 0, 0x104uLL);
    if (v27)
    {
      goto LABEL_58;
    }

    v32 = *(a1 + 168);
    if (!v32 || (v33 = (v52 + 284), *(v52 + 284) != *(a1 + 84)) || (v32(v53, nbyte, v52 + 284, v55, 0, 0) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 418, 28, 0, "decrypting segment data");
      goto LABEL_59;
    }

    v124 = 0;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    memset(__s + 8, 0, 252);
    memset(v125, 0, 260);
    WORD4(__s[0]) = 19267;
    *&__s[0] = 0x5F41454100000006;
    memset_s(__s + 10, 0xFAuLL, 0, 0xFAuLL);
    v34 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    *(__s + LODWORD(__s[0]) + 4) = v16 / v18;
    LODWORD(__s[0]) = v34 + 4;
    memset_s(__s + v34 + 8, 252 - v34, 0, 252 - v34);
    v35 = *(a1 + 144);
    if (v35 && LODWORD(v74[0]))
    {
      v36 = v35(&v108, *(a1 + 72), v74, __s, v125);
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      v37 = 0;
      if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    v37 = 1;
LABEL_36:
    memset(v125 + 8, 0, 224);
    memset(&v125[14] + 8, 0, 28);
    WORD4(v125[0]) = 19283;
    *&v125[0] = 0x5F41454100000006;
    memset_s(v125 + 10, 0xFAuLL, 0, 0xFAuLL);
    v38 = LODWORD(v125[0]);
    if (LODWORD(v125[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    *(v125 + LODWORD(v125[0]) + 4) = v29;
    LODWORD(v125[0]) = v38 + 4;
    memset_s(v125 + v38 + 8, 252 - v38, 0, 252 - v38);
    memset(__s, 0, 260);
    v39 = *(a1 + 144);
    if (!v39 || !v108)
    {
      break;
    }

    v40 = v39(v55, *(a1 + 76), &v108, v125, __s);
    memset_s(v125, 0x104uLL, 0, 0x104uLL);
    v15 = v53;
    if (v40 < 0)
    {
      goto LABEL_61;
    }

    memset_s(&v108, 0x104uLL, 0, 0x104uLL);
    if (v37)
    {
      goto LABEL_62;
    }

    v41 = *(a1 + 160);
    if (!v41 || (v42 = v41(v53, nbyte, v33, v55, 0, 0), *v33 != *(a1 + 84)) || v42 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 424, 28, 0, "decrypting segment data");
      goto LABEL_63;
    }

    if ((v49 & 1) == 0 && AAByteStreamPWrite(a2, v53, nbyte, *(v52 + 16)) != nbyte)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 429, 28, 0, "storing compressed segment");
      goto LABEL_63;
    }

    if (++v16 >= *(a1 + 400))
    {
      goto LABEL_47;
    }
  }

  memset_s(v125, 0x104uLL, 0, 0x104uLL);
  v15 = v53;
LABEL_61:
  memset_s(&v108, 0x104uLL, 0, 0x104uLL);
LABEL_62:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 422, 28, 0, "deriving segment key");
LABEL_63:
  v46 = 0xFFFFFFFFLL;
LABEL_64:
  v12 = v50;
LABEL_65:
  memset_s(v15, v12, 0, v12);
LABEL_66:
  free(v15);
  memset_s(v74, 0x104uLL, 0, 0x104uLL);
  memset_s(__n, 0x104uLL, 0, 0x104uLL);
  memset_s(v57, 0x104uLL, 0, 0x104uLL);
  memset_s(v55, 0x104uLL, 0, 0x104uLL);
  return v46;
}

uint64_t aeaContainerLoadSegment(uint64_t a1, void *a2, unsigned int a3, uint8_t *a4, uint8_t *a5, void *a6)
{
  v50 = *MEMORY[0x29EDCA608];
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = a5;
  }

  else
  {
    v7 = a4;
  }

  if (*(a1 + 400) <= a3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", 463, 28, 0, "Invalid segment index");
    goto LABEL_41;
  }

  if (!a2[4])
  {
    goto LABEL_20;
  }

  v11 = *(a1 + 392) + 544 * a3;
  v12 = *(v11 + 8);
  __n = *(v11 + 4);
  v36 = v11;
  if (v12)
  {
    v13 = 0;
    v14 = *(v11 + 16);
    v15 = v7;
    v16 = *(v11 + 8);
    while (1)
    {
      v17 = (a2[4])(*a2, v7, v12, v14);
      if (v17 < 0)
      {
        break;
      }

      if (v17)
      {
        v7 += v17;
        v13 += v17;
        v14 += v17;
        v12 -= v17;
        if (v12)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v13 = v17;
  }

  else
  {
    v15 = v7;
    v16 = *(v11 + 8);
    v13 = 0;
  }

LABEL_15:
  if (v13 != v16)
  {
LABEL_20:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", 471, 28, 0, "loading segment");
    goto LABEL_41;
  }

  v18 = v16;
  v19 = v15;
  v20 = *(a1 + 20);
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  memset(&__s[8], 0, 252);
  memset(v48, 0, 260);
  *&__s[8] = 19267;
  memset_s(&__s[10], 0xFAuLL, 0, 0xFAuLL);
  v34 = v18;
  *&__s[10] = a3 / v20;
  *__s = 0x5F4145410000000ALL;
  memset_s(&__s[14], 0xF6uLL, 0, 0xF6uLL);
  v21 = *(a1 + 144);
  if (v21 && *(a1 + 668))
  {
    v22 = v21(v46, *(a1 + 72));
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    v23 = 0;
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
  }

  v23 = 1;
LABEL_23:
  memset(v48 + 8, 0, 224);
  memset(&v48[14] + 8, 0, 28);
  WORD4(v48[0]) = 19283;
  *&v48[0] = 0x5F41454100000006;
  result = memset_s(v48 + 10, 0xFAuLL, 0, 0xFAuLL);
  v25 = LODWORD(v48[0]);
  if (LODWORD(v48[0]) < 0xFD)
  {
    *(v48 + LODWORD(v48[0]) + 4) = a3 % v20;
    LODWORD(v48[0]) = v25 + 4;
    memset_s(v48 + v25 + 8, 252 - v25, 0, 252 - v25);
    memset(__s, 0, sizeof(__s));
    v26 = *(a1 + 144);
    if (v26 && LODWORD(v46[0]))
    {
      v27 = v26(v42, *(a1 + 76), v46, v48, __s);
      memset_s(v48, 0x104uLL, 0, 0x104uLL);
      if ((v27 & 0x80000000) == 0)
      {
        memset_s(v46, 0x104uLL, 0, 0x104uLL);
        if (!v23)
        {
          v28 = *(a1 + 168);
          if (v28 && *(v36 + 284) == *(a1 + 84) && (v28(v19, v34) & 0x80000000) == 0)
          {
            v29 = __n;
            if (v6)
            {
              v30 = *(a1 + 24);
              if (v30 && __n > v34)
              {
                if (v30 == 774)
                {
                  v31 = PCompressLZMADecode(a4, *(a1 + 16), a5, v34);
                  if (v31 >= 0)
                  {
                    v31 = v31;
                  }

                  else
                  {
                    v31 = 0;
                  }
                }

                else
                {
                  v32 = aeaEffectiveCompressionAlgorithm(v30);
                  v31 = compression_decode_buffer(a4, *(a1 + 16), a5, v34, a6, v32);
                }

                if (v31 != __n)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", 511, 28, 0, "Segment decompression", v34);
                  goto LABEL_41;
                }
              }

              else
              {
                memcpy(a4, a5, __n);
              }
            }

            if ((aeaChecksum(v40, *(a1 + 12), a4, __n) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", 515, 28, 0, "computing segment checksum", v34);
            }

            else
            {
              v33 = *(a1 + 48);
              if (!v33 || !memcmp(v40 + 4, (v36 + 28), v33))
              {
                goto LABEL_42;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", 519, 28, 0, "Checksum verification failed, data corrupted", v34);
            }
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", 485, 28, 0, "decrypting segment data", v34);
          }

LABEL_41:
          v29 = -1;
LABEL_42:
          memset_s(v44, 0x104uLL, 0, 0x104uLL);
          memset_s(v42, 0x104uLL, 0, 0x104uLL);
          memset_s(v40, 0x104uLL, 0, 0x104uLL);
          return v29;
        }

LABEL_40:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", 481, 28, 0, "deriving segment key", v34);
        goto LABEL_41;
      }
    }

    else
    {
      memset_s(v48, 0x104uLL, 0, 0x104uLL);
    }

    memset_s(v46, 0x104uLL, 0, 0x104uLL);
    goto LABEL_40;
  }

  __break(1u);
  return result;
}

unint64_t aeaPaddedContainerSize(unint64_t result, unint64_t a2)
{
  if (result)
  {
    if (a2 > 0xF)
    {
      goto LABEL_8;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        if (result >= 8)
        {
          v4 = __clz(result);
          v5 = __clz(v4 ^ 0x3F) - v4;
          if (v5 < -31)
          {
            return -1;
          }

          a2 = 1 << (v5 + 31);
LABEL_8:
          if (!__CFADD__(result, a2 - 1))
          {
            return (result + a2 - 1) / a2 * a2;
          }

          return -1;
        }
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaPaddedContainerSize", 585, 28, 0, "Invalid padding_alignment", v2, v3);
        return -1;
      }
    }
  }

  return result;
}

uint64_t aeaContainerFinish(uint64_t a1, AAByteStream_impl *a2)
{
  v191 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 344);
  v4 = *(a1 + 376);
  if (v3 <= v4)
  {
    v5 = *(a1 + 376);
  }

  else
  {
    v5 = *(a1 + 344);
  }

  v154 = 0;
  if (v5 <= 0x100000)
  {
    v6 = 0x100000;
  }

  else
  {
    v6 = v5;
  }

  memset(__s, 0, sizeof(__s));
  v152 = 0;
  v151 = 0u;
  v150 = 0u;
  v149 = 0u;
  v148 = 0u;
  v147 = 0u;
  v146 = 0u;
  v145 = 0u;
  v144 = 0u;
  v143 = 0u;
  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  v139 = 0u;
  v138 = 0u;
  v137 = 0u;
  *v136 = 0u;
  v135 = 0;
  memset(v134, 0, sizeof(v134));
  v133 = 0;
  memset(v132, 0, sizeof(v132));
  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  *v115 = 0u;
  v116 = 0u;
  v114 = 0;
  memset(v113, 0, sizeof(v113));
  v112 = 0;
  memset(v111, 0, sizeof(v111));
  v107 = 0;
  v106 = 0;
  v109 = 0u;
  v110 = 0u;
  v108 = 0u;
  if (v5 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_21:
    v17 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 620, 28, *v17, "malloc");
    v8 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 0xFFFFFFFFLL;
    v20 = 1;
LABEL_25:
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    memset_s(v136, 0x104uLL, 0, 0x104uLL);
    memset_s(v113, 0x104uLL, 0, 0x104uLL);
    memset_s(v134, 0x104uLL, 0, 0x104uLL);
    memset_s(v132, 0x104uLL, 0, 0x104uLL);
    memset_s(v115, 0x104uLL, 0, 0x104uLL);
    memset_s(v111, 0x104uLL, 0, 0x104uLL);
    memset_s(&v108, 0x30uLL, 0, 0x30uLL);
    memset_s(&v106, 0xCuLL, 0, 0xCuLL);
    if ((v20 & 1) == 0)
    {
      memset_s(v8, v6, 0, v6);
    }

    free(v8);
    if (v18)
    {
      memset_s(v18, v16, 0, v16);
    }

    free(v18);
    v21 = *(a1 + 384);
    if (v21)
    {
      memset_s(*(a1 + 384), *(a1 + 4), 0, *(a1 + 4));
    }

    free(v21);
    *(a1 + 384) = 0;
    return v19;
  }

  v7 = malloc(v6);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = *(a1 + 84);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  if (v9 > 0x100 || (v10 = *(a1 + 136)) == 0 || (v10(__s + 4, v9) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 624, 28, 0, "generating last cluster random MAC");
LABEL_23:
    v20 = 0;
    v16 = 0;
    v18 = 0;
LABEL_24:
    v19 = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  __n = v6;
  LODWORD(__s[0]) = v9;
  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = *(a1 + 40);
    v13 = aeaPaddedContainerSize(v12, v11);
    if (v13 == -1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 631, 28, 0, "Container size is too large to allow padding");
LABEL_130:
      v20 = 0;
      v16 = 0;
      goto LABEL_131;
    }

    v14 = v13;
    if (v13 > v12)
    {
      memset(v190, 0, sizeof(v190));
      memset(v189, 0, 260);
      v188 = 0;
      v187 = 0u;
      v186 = 0u;
      v185 = 0u;
      v184 = 0u;
      v183 = 0u;
      v182 = 0u;
      v181 = 0u;
      v180 = 0u;
      v179 = 0u;
      v178 = 0u;
      v177 = 0u;
      v176 = 0u;
      v175 = 0u;
      v174 = 0u;
      v173 = 0u;
      v172 = 0u;
      if (*(a1 + 248) && (*(v189 + 7) = 1262571615, *&v189[0] = 0x5F41454100000007, memset_s((v189 | 0xB), 0xF9uLL, 0, 0xF9uLL), (v15 = *(a1 + 144)) != 0) && *(a1 + 668) && (v15(v190, *(a1 + 72)) & 0x80000000) == 0)
      {
        v16 = (*(a1 + 248))(v190);
      }

      else
      {
        v16 = 0;
      }

      memset_s(v190, 0x104uLL, 0, 0x104uLL);
      memset_s(v189, 0x104uLL, 0, 0x104uLL);
      if (!v16)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 636, 28, 0, "hashing padding");
        v20 = 0;
LABEL_131:
        v18 = 0;
LABEL_132:
        v19 = 0xFFFFFFFFLL;
LABEL_133:
        v6 = __n;
        goto LABEL_25;
      }

      nbyte = v3;
      v103 = v16;
      while (1)
      {
        if (v14 - v12 >= 0x100000)
        {
          v23 = 0x100000;
        }

        else
        {
          v23 = v14 - v12;
        }

        v24 = *(a1 + 136);
        if (!v24 || (v24(v8, v23) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 640, 28, 0, "generating padding", nbyte);
          goto LABEL_58;
        }

        v25 = *(a1 + 256);
        if (!v25 || (v25(v16, v8, v23) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 641, 28, 0, "hashing padding", nbyte);
          goto LABEL_58;
        }

        if (!*(a2 + 5))
        {
          break;
        }

        v26 = v14;
        if (v14 == v12)
        {
          v27 = 0;
        }

        else
        {
          v27 = 0;
          v28 = v8;
          v29 = v12;
          v30 = v23;
          while (1)
          {
            v31 = (*(a2 + 5))(*a2, v28, v30, v29);
            if (v31 < 1)
            {
              break;
            }

            v28 += v31;
            v27 += v31;
            v29 += v31;
            v30 -= v31;
            if (!v30)
            {
              goto LABEL_51;
            }
          }

          v27 = v31;
        }

LABEL_51:
        v16 = v103;
        if (v23 != v27)
        {
          break;
        }

        v14 = v26;
        v12 += v23;
        if (v12 >= v26)
        {
          v32 = 0;
          goto LABEL_59;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 642, 28, 0, "writing padding", nbyte);
LABEL_58:
      v32 = 1;
LABEL_59:
      v33 = *(a1 + 264);
      if (v33)
      {
        if ((v33(v16, __s) & 0x80000000) == 0 && LODWORD(__s[0]) == *(a1 + 84))
        {
          if (!v32)
          {
            *(a1 + 40) = v12;
            v3 = nbyte;
            goto LABEL_64;
          }

          goto LABEL_129;
        }

        memset_s(__s, 0x104uLL, 0, 0x104uLL);
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 645, 28, 0, "hashing padding", nbyte);
LABEL_129:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 647, 28, 0, "Padding generation and hashing failed", nbyte);
      goto LABEL_130;
    }
  }

LABEL_64:
  nbytea = v3;
  v34 = *(a1 + 404);
  v35 = v34 - 1;
  v100 = (a1 + 668);
  while (v34)
  {
    v36 = *(a1 + 20);
    v102 = v35;
    v104 = v34 - 1;
    v37 = (v36 * (v34 - 1));
    v38 = *(a1 + 400);
    if (v36 * v34 >= v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = (v36 * v34);
    }

    v40 = *(a1 + 392);
    v101 = *(v40 + 544 * v37 + 16);
    v41 = *(a1 + 368);
    v42 = *(a1 + 376);
    v43 = 0;
    if (v37 < v39)
    {
      v44 = (v40 + 544 * (v36 * v35));
      do
      {
        v45 = &v8[v43];
        *v45 = v44[1];
        *(v45 + 1) = v44[2];
        v46 = v43 + 8;
        memcpy(&v8[v46], v44 + 7, v44[6]);
        v43 = v46 + v44[6];
        memcpy(&v8[v41], v44 + 72, v44[71]);
        v41 += v44[71];
        ++v37;
        v44 += 136;
      }

      while (v37 < v39);
    }

    v47 = *(a1 + 360);
    v48 = v42;
    if (v47 > v43)
    {
      memset_s(&v8[v43], v47 - v43, 0, v47 - v43);
      v48 = *(a1 + 376);
    }

    v49 = v48 - v41;
    if (v48 > v41)
    {
      v50 = *(a1 + 136);
      if (!v50 || (v50(&v8[v41], v49) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 686, 28, 0, "generating random padding", nbytea);
        goto LABEL_130;
      }
    }

    memcpy(&v8[*(a1 + 360)], __s + 4, LODWORD(__s[0]));
    v188 = 0;
    v187 = 0u;
    v186 = 0u;
    v185 = 0u;
    v184 = 0u;
    v183 = 0u;
    v182 = 0u;
    v181 = 0u;
    v180 = 0u;
    v179 = 0u;
    v178 = 0u;
    v177 = 0u;
    v176 = 0u;
    v175 = 0u;
    v174 = 0u;
    v173 = 0u;
    v172 = 0u;
    memset(&v190[8], 0, 252);
    memset(v189, 0, 260);
    *&v190[8] = 19267;
    *v190 = 0x5F41454100000006;
    result = memset_s(&v190[10], 0xFAuLL, 0, 0xFAuLL);
    v51 = *v190;
    if (*v190 >= 0xFDu)
    {
      goto LABEL_181;
    }

    v34 = v104;
    *&v190[*v190 + 4] = v104;
    *v190 = v51 + 4;
    memset_s(&v190[v51 + 8], 252 - v51, 0, 252 - v51);
    v52 = *(a1 + 144);
    if (!v52 || !*v100)
    {
      memset_s(v190, 0x104uLL, 0, 0x104uLL);
LABEL_83:
      v54 = 1;
      goto LABEL_84;
    }

    v53 = v52(&v172, *(a1 + 72), v100, v190, v189);
    memset_s(v190, 0x104uLL, 0, 0x104uLL);
    v54 = 0;
    if (v53 < 0)
    {
      goto LABEL_83;
    }

LABEL_84:
    memset(v189 + 12, 0, 248);
    *(v189 + 4) = 0x4B4548435F414541;
    LODWORD(v189[0]) = 8;
    memset_s(v189 + 12, 0xF8uLL, 0, 0xF8uLL);
    memset(v190, 0, sizeof(v190));
    v55 = *(a1 + 144);
    if (!v55 || !v172)
    {
      memset_s(v189, 0x104uLL, 0, 0x104uLL);
LABEL_125:
      memset_s(&v172, 0x104uLL, 0, 0x104uLL);
LABEL_126:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 694, 28, 0, "derivating secondary key", nbytea);
      goto LABEL_130;
    }

    v56 = v55(v134, *(a1 + 76), &v172, v189, v190);
    memset_s(v189, 0x104uLL, 0, 0x104uLL);
    if (v56 < 0)
    {
      goto LABEL_125;
    }

    memset_s(&v172, 0x104uLL, 0, 0x104uLL);
    if (v54)
    {
      goto LABEL_126;
    }

    v57 = *(a1 + 160);
    if (!v57 || (v58 = v57(v8, *(a1 + 360), __s, v134, &v8[*(a1 + 360)], v4 - *(a1 + 360)), LODWORD(__s[0]) != *(a1 + 84)) || v58 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 701, 28, 0, "Cluster header encryption", nbytea);
      goto LABEL_130;
    }

    v59 = *(a2 + 5);
    if (v59)
    {
      v60 = 0;
    }

    else
    {
      v60 = -1;
    }

    if (v59 && v4)
    {
      v60 = 0;
      v61 = v101 - v42;
      v62 = v8;
      v63 = v4;
      while (1)
      {
        v64 = (*(a2 + 5))(*a2, v62, v63, v61);
        if (v64 < 1)
        {
          break;
        }

        v62 += v64;
        v60 += v64;
        v61 += v64;
        v63 -= v64;
        if (!v63)
        {
          goto LABEL_101;
        }
      }

      v60 = v64;
    }

LABEL_101:
    v35 = v102 - 1;
    if (v60 != v4)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 706, 28, 0, "writing cluster header", nbytea);
      goto LABEL_130;
    }
  }

  v6 = __n;
  memset_s(v8, __n, 0, __n);
  if ((aeaMagicInit(&v106, a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 716, 28, 0, "encoding magic", nbytea);
    goto LABEL_23;
  }

  v65 = *(a1 + 288);
  v66 = &v8[*(a1 + 280)];
  *v66 = v106;
  *(v66 + 2) = v107;
  memcpy(&v8[v65], *(a1 + 384), *(a1 + 4));
  memcpy(&v8[*(a1 + 336)], __s + 4, LODWORD(__s[0]));
  if ((aeaRootHeaderInit(&v108, a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 726, 28, 0, "encoding root header", nbytea);
    goto LABEL_23;
  }

  v67 = LODWORD(__s[0]);
  v68 = *(a1 + 4);
  v16 = (v68 + LODWORD(__s[0]));
  v69 = malloc(v16);
  v18 = v69;
  if (!v69)
  {
    v85 = *__error();
    v83 = "malloc";
    v84 = 731;
    goto LABEL_140;
  }

  memcpy(v69, __s + 4, v67);
  memcpy(&v18[v67], *(a1 + 384), v68);
  memset(v189 + 12, 0, 248);
  *(v189 + 4) = 0x4B4548525F414541;
  LODWORD(v189[0]) = 8;
  memset_s(v189 + 12, 0xF8uLL, 0, 0xF8uLL);
  memset(v190, 0, sizeof(v190));
  v70 = *(a1 + 144);
  if (!v70 || !*v100)
  {
    memset_s(v189, 0x104uLL, 0, 0x104uLL);
    goto LABEL_137;
  }

  v71 = v70(v134, *(a1 + 76), v100, v189, v190);
  memset_s(v189, 0x104uLL, 0, 0x104uLL);
  if (v71 < 0)
  {
LABEL_137:
    v83 = "derivating RHEK";
    v84 = 738;
LABEL_138:
    v85 = 0;
LABEL_140:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", v84, 28, v85, v83, nbytea);
    v20 = 0;
    goto LABEL_24;
  }

  v72 = *(a1 + 160);
  if (!v72 || (v73 = v72(&v108, 48, v136, v134, v18, v16), v74 = LODWORD(v136[0]), LODWORD(v136[0]) != *(a1 + 84)) || v73 < 0)
  {
    v83 = "Root header encryption";
    v84 = 744;
    goto LABEL_138;
  }

  v75 = *(a1 + 320);
  v76 = &v8[*(a1 + 328)];
  v77 = v109;
  *v76 = v108;
  *(v76 + 1) = v77;
  *(v76 + 2) = v110;
  memcpy(&v8[v75], v136 + 4, v74);
  memcpy(&v8[*(a1 + 312)], (a1 + 412), *(a1 + 408));
  v78 = *(a1 + 928);
  if (v78 != *(a1 + 120))
  {
    v83 = "Invalid encryption data size";
    v84 = 752;
    goto LABEL_138;
  }

  memcpy(&v8[*(a1 + 304)], (a1 + 932), v78);
  if (!*(a1 + 1188) && !*(a1 + 1712))
  {
LABEL_172:
    v95 = *(a1 + 272);
    if (v95 && (v96 = v95(a1 + 1448, v8, nbytea), *(a1 + 1448) == *(a1 + 124)) && (v96 & 0x80000000) == 0)
    {
      if (AAByteStreamPWrite(a2, v8, nbytea, 0) == nbytea)
      {
        v20 = 0;
        v19 = 0;
        goto LABEL_133;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 800, 28, 0, "writing container headers", nbytea);
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 796, 28, 0, "digesting prologue", nbytea);
    }

    goto LABEL_144;
  }

  v79 = *(a1 + 192);
  if (!v79 || (v80 = v79(v111, v8, nbytea), LODWORD(v111[0]) != *(a1 + 108)) || v80 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 759, 28, 0, "digesting prologue", nbytea);
LABEL_144:
    v20 = 0;
    goto LABEL_132;
  }

  v81 = *(a1 + 1712);
  if (!v81)
  {
    v86 = *(a1 + 200);
    if (!v86 || (result = v86(v132, a1 + 1188, v111), LODWORD(v132[0]) != *(a1 + 112)) || (result & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 778, 28, 0, "signing prologue", nbytea);
      goto LABEL_144;
    }

LABEL_152:
    if (*a1)
    {
      memset(&v190[8], 0, 252);
      memset(v189, 0, 260);
      *&v190[7] = 1262834527;
      *v190 = 0x5F41454100000007;
      memset_s(&v190[11], 0xF9uLL, 0, 0xF9uLL);
      v87 = *(a1 + 144);
      if (v87 && *v100)
      {
        v88 = v87(v113, *(a1 + 72), v100, v190, v189);
        memset_s(v190, 0x104uLL, 0, 0x104uLL);
        if ((v88 & 0x80000000) == 0)
        {
          if (*(a1 + 216))
          {
            memset(v189, 0, 260);
            v188 = 0;
            v187 = 0u;
            v186 = 0u;
            v185 = 0u;
            v184 = 0u;
            v183 = 0u;
            v182 = 0u;
            v181 = 0u;
            v180 = 0u;
            v179 = 0u;
            v178 = 0u;
            v177 = 0u;
            v176 = 0u;
            v175 = 0u;
            v174 = 0u;
            v173 = 0u;
            v172 = 0u;
            v171 = 0;
            v170 = 0u;
            v169 = 0u;
            v168 = 0u;
            v167 = 0u;
            v166 = 0u;
            v165 = 0u;
            v164 = 0u;
            v163 = 0u;
            v162 = 0u;
            v161 = 0u;
            v160 = 0u;
            v159 = 0u;
            v158 = 0u;
            v157 = 0u;
            v156 = 0u;
            *v155 = 0u;
            if (LODWORD(v132[0]) == *(a1 + 112) && LODWORD(v113[0]) == *(a1 + 72))
            {
              *(&v172 + 4) = 0x324B45535F414541;
              LODWORD(v172) = 8;
              memset_s((&v172 | 0xC), 0xF8uLL, 0, 0xF8uLL);
              memset(v190, 0, sizeof(v190));
              v89 = *(a1 + 144);
              if (v89)
              {
                if (LODWORD(v113[0]))
                {
                  result = v89(v189, *(a1 + 76), v113, &v172, v190);
                  if ((result & 0x80000000) == 0)
                  {
                    v90 = LODWORD(v132[0]);
                    if (LODWORD(v132[0]) >= 0x101)
                    {
                      goto LABEL_181;
                    }

                    __memcpy_chk();
                    LODWORD(v115[0]) = v90;
                    memset_s(v115 + v90 + 4, 256 - v90, 0, 256 - v90);
                    result = (*(a1 + 216))(v115 + 4, LODWORD(v132[0]), v155, v189, 0, 0);
                    if ((result & 0x80000000) == 0)
                    {
                      v91 = LODWORD(v115[0]) + LODWORD(v155[0]);
                      if (v91 >= 0x101)
                      {
                        goto LABEL_181;
                      }

                      memcpy(v115 + LODWORD(v115[0]) + 4, v155 + 4, LODWORD(v155[0]));
                      LODWORD(v115[0]) = v91;
                      memset_s(v115 + v91 + 4, 256 - v91, 0, 256 - v91);
                      v92 = v115[0];
                      v93 = *(a1 + 116);
                      memset_s(v189, 0x104uLL, 0, 0x104uLL);
                      memset_s(v155, 0x104uLL, 0, 0x104uLL);
                      memset_s(&v172, 0x104uLL, 0, 0x104uLL);
                      if (v92 != v93)
                      {
                        goto LABEL_180;
                      }

                      goto LABEL_171;
                    }
                  }
                }
              }
            }

            memset_s(v189, 0x104uLL, 0, 0x104uLL);
            memset_s(v155, 0x104uLL, 0, 0x104uLL);
            memset_s(&v172, 0x104uLL, 0, 0x104uLL);
          }

LABEL_180:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 788, 28, 0, "encrypt signature", nbytea);
          goto LABEL_144;
        }
      }

      else
      {
        memset_s(v190, 0x104uLL, 0, 0x104uLL);
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 786, 28, 0, "deriving signature encryption key", nbytea);
      goto LABEL_144;
    }

    v94 = LODWORD(v132[0]);
    if (LODWORD(v132[0]) >= 0x101)
    {
      goto LABEL_181;
    }

    __memcpy_chk();
    LODWORD(v115[0]) = v94;
    memset_s(v115 + v94 + 4, 256 - v94, 0, 256 - v94);
LABEL_171:
    memcpy(&v8[*(a1 + 296)], v115 + 4, LODWORD(v115[0]));
    goto LABEL_172;
  }

  *v190 = 0;
  result = v81(*(a1 + 1720), 256, v132 + 4, v190, v111 + 4);
  if ((result & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 771, 28, 0, "Signing callback", nbytea);
    goto LABEL_144;
  }

  v82 = *(a1 + 112);
  if (*v190 > v82)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 772, 28, 0, "Invalid callback size return value", nbytea);
    goto LABEL_144;
  }

  if (v82 < 0x101)
  {
    LODWORD(v132[0]) = *(a1 + 112);
    result = memset_s(v132 + v82 + 4, 256 - v82, 0, 256 - v82);
    goto LABEL_152;
  }

LABEL_181:
  __break(1u);
  return result;
}

void *AAMemoryInputStreamOpen(uint64_t a1, uint64_t a2)
{
  if (!a1 && a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryInputStreamOpen", 132, 68, 0, "Invalid arguments");
    v4 = 0;
    v5 = 0;
LABEL_8:
    free(v5);
    free(v4);
    return 0;
  }

  v4 = calloc(1uLL, 0x68uLL);
  v6 = malloc(0x20uLL);
  v5 = v6;
  if (!v6 || (memset_s(v6, 0x20uLL, 0, 0x20uLL), !v4))
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryInputStreamOpen", 137, 68, *v7, "malloc");
    goto LABEL_8;
  }

  *v5 = a1;
  v5[1] = a2;
  *v4 = v5;
  v4[1] = memoryInputStreamClose;
  v4[7] = memoryInputStreamCancel;
  v4[2] = memoryInputStreamRead;
  v4[4] = memoryInputStreamPRead;
  v4[6] = memoryInputStreamSeek;
  return v4;
}

size_t memoryInputStreamRead(uint64_t a1, void *a2, unint64_t a3)
{
  if (atomic_load((a1 + 24)))
  {
    return -1;
  }

  else
  {
    return memoryInputStreamPRead(a1, a2, a3, atomic_fetch_add((a1 + 16), a3));
  }
}

size_t memoryInputStreamPRead(uint64_t a1, void *__dst, uint64_t a3, uint64_t a4)
{
  v4 = atomic_load((a1 + 24));
  v5 = -1;
  if ((a4 & 0x8000000000000000) == 0 && !v4)
  {
    v6 = *(a1 + 8);
    v7 = v6 >= a4 ? a4 : *(a1 + 8);
    if (!__CFADD__(v7, a3))
    {
      if (v7 + a3 < v6)
      {
        v6 = v7 + a3;
      }

      v5 = v6 - v7;
      if (v6 <= v7)
      {
        return 0;
      }

      else
      {
        memcpy(__dst, (*a1 + v7), v5);
      }
    }
  }

  return v5;
}

unint64_t memoryInputStreamSeek(uint64_t a1, unint64_t a2, int a3)
{
  if (!atomic_load((a1 + 24)))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a2 += atomic_fetch_add((a1 + 16), a2);
        return a2;
      }

      if (a3 != 2)
      {
        return -1;
      }

      a2 += *(a1 + 8);
    }

    atomic_store(a2, (a1 + 16));
    return a2;
  }

  return -1;
}

void *AAMemoryOutputStreamOpen(uint64_t a1, uint64_t a2)
{
  if (!a1 && a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryOutputStreamOpen", 169, 68, 0, "Invalid arguments");
    v4 = 0;
    v5 = 0;
LABEL_8:
    free(v5);
    free(v4);
    return 0;
  }

  v4 = calloc(1uLL, 0x68uLL);
  v6 = malloc(0x20uLL);
  v5 = v6;
  if (!v6 || (memset_s(v6, 0x20uLL, 0, 0x20uLL), !v4))
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryOutputStreamOpen", 174, 68, *v7, "malloc");
    goto LABEL_8;
  }

  v5[1] = 0;
  v5[2] = a2;
  *v5 = a1;
  *v4 = v5;
  v4[1] = memoryOutputStreamClose;
  v4[7] = memoryOutputStreamCancel;
  v4[3] = memoryOutputStreamWrite;
  return v4;
}

size_t memoryOutputStreamWrite(void *a1, const void *a2, size_t __n)
{
  v3 = __n;
  if (__n)
  {
    v5 = a1[1];
    v6 = v5 + __n;
    if (__CFADD__(v5, __n))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "memoryOutputStreamWrite", 102, 68, 0, "invalid size");
    }

    else
    {
      if (v6 <= a1[2])
      {
        memcpy((*a1 + v5), a2, __n);
        a1[1] = v6;
        return v3;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "memoryOutputStreamWrite", 103, 68, 0, "buffer full");
    }

    return -1;
  }

  return v3;
}

uint64_t AAMemoryOutputStreamCloseWithSize(uint64_t (**a1)(void *a1))
{
  if (!a1)
  {
    return 0;
  }

  if (a1[1] == memoryOutputStreamClose)
  {
    v2 = *(*a1 + 1);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryOutputStreamCloseWithSize", 201, 68, 0, "invalid stream type");
    v2 = -1;
  }

  if (AAByteStreamClose(a1) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryOutputStreamCloseWithSize", 207, 68, 0, "close stream");
    return -1;
  }

  return v2;
}

AAByteStream_impl *aaForkOutputStreamOpen(uint64_t a1, void *a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = calloc(1uLL, 0x20050uLL);
  v6 = v5;
  if (!v4 || !v5)
  {
    v12 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "aaForkOutputStreamOpen", 408, 136, v12, "malloc");
    goto LABEL_13;
  }

  if (!*(a1 + 40) || !*(a1 + 32))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "aaForkOutputStreamOpen", 409, 136, 0, "stream not compatible\n");
    goto LABEL_13;
  }

  AACustomByteStreamSetData(v4, v5);
  AACustomByteStreamSetWriteProc(v4, ForkOutputStreamWrite);
  AACustomByteStreamSetPWriteProc(v4, ForkOutputStreamPWrite);
  AACustomByteStreamSetCancelProc(v4, ForkOutputStreamCancel);
  AACustomByteStreamSetCloseProc(v4, ForkOutputStreamClose);
  *(v6 + 16385) = a1;
  *(v6 + 16386) = a2;
  if (a2[258])
  {
    v7 = a2[270] + 1;
  }

  else
  {
    v7 = a2[270];
  }

  *(v6 + 16390) = v7;
  if (is_mul_ok(v7, 0x30uLL) && 48 * v7 < 0x2000000001)
  {
    v11 = calloc(v7, 0x30uLL);
  }

  else
  {
    v8 = __error();
    v11 = 0;
    *v8 = 12;
  }

  *(v6 + 16389) = v11;
  *(v6 + 131128) = 0u;
  *(v6 + 32786) = 0;
  if (!v11)
  {
    v27 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "aaForkOutputStreamOpen", 426, 136, v27, "aaCalloc");
LABEL_13:
    free(v4);
    ForkOutputStreamClose(v6);
    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = a2[270];
  v17 = a2[258];
  v18 = 1;
  v19 = v11;
  while (1)
  {
    if (v16)
    {
      v20 = a2[268];
      for (i = v16; i; --i)
      {
        v22 = v20[13];
        if (v15)
        {
          if ((v22 & 2) != 0)
          {
            v19[1] = v14;
            v19[2] = 0;
            v23 = v20[4];
            v24 = 3;
            v25 = v23;
LABEL_25:
            v19[v24] = v23;
            v19[5] = v20[5];
            v14 += v25;
            *(v6 + 16392) = v14;
            v19 += 6;
          }
        }

        else if (v22)
        {
          *v19 = v20;
          v19[1] = v14;
          v26 = v20[10];
          v25 = v20[11];
          v19[2] = 0;
          v19[3] = v25;
          v23 = *v26;
          v24 = 4;
          goto LABEL_25;
        }

        v20 = (v20 + 129);
      }
    }

    if ((v18 & 1) == 0)
    {
      break;
    }

    v18 = 0;
    v15 = 1;
    v9 = v14;
    v10 = v14;
    if (v17)
    {
      v18 = 0;
      v19[1] = v14;
      v19[2] = 0;
      v9 = v17 + v14;
      v19[3] = v17;
      v19[5] = 0;
      v19 += 6;
      v10 = v14;
      v14 = v9;
      *(v6 + 16392) = v9;
    }
  }

  a2[257] = v10;
  a2[259] = v9;
  if (v19 != &v11[6 * *(v6 + 16390)])
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "aaForkOutputStreamOpen", 480, 136, 0, "bad variant");
    a2[260] = *(v6 + 16392);
    goto LABEL_13;
  }

  a2[260] = v14;
  return v4;
}

unint64_t ForkOutputStreamWrite(uint8_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = a1 + 131080;
  if (*(a1 + 32786))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", 201, 136, 0, "bad write mode");
    return -1;
  }

  v4 = a3;
  if (!a3)
  {
    return v4;
  }

  v6 = a2;
  v7 = 0;
  dst_buffer = a1 + 65537;
  v126 = a1 + 131080;
  src_buffer = a1;
  while (1)
  {
    v8 = *(v3 + 6);
    if (v8 == *(v3 + 5))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", 205, 136, 0, "segment out of range");
      return -1;
    }

    v9 = (*(v3 + 4) + 48 * v8);
    v10 = v4 - v7;
    v11 = v9[2];
    if (v4 - v7 >= 0x10000 - v11)
    {
      v10 = 0x10000 - v11;
    }

    if (v9[3] - v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9[3] - v11;
    }

    memcpy(&a1[v11], (v6 + v7), v12);
    v13 = v9[3];
    v14 = v12 + v9[2];
    v129 = v9;
    v9[2] = v14;
    if (v14 == v13)
    {
      ++*(v3 + 6);
    }

    v15 = v14;
    if (v14)
    {
      if (v14 < v13)
      {
        goto LABEL_137;
      }
    }

    else
    {
      v15 = 0x10000;
    }

    v16 = *v9;
    if (!*v129)
    {
      v22 = v12;
      v23 = *v3;
      if (*(*v3 + 40))
      {
        v24 = 0;
        v25 = v14 - v15 + v129[5];
        v26 = src_buffer;
        v27 = v15;
        while (1)
        {
          v28 = (*(v23 + 40))(*v23, v26, v27, v25);
          if (v28 < 1)
          {
            break;
          }

          v26 += v28;
          v24 += v28;
          v25 += v28;
          v27 -= v28;
          if (!v27)
          {
            goto LABEL_85;
          }
        }

        v24 = v28;
      }

      else
      {
        v24 = -1;
      }

LABEL_85:
      v3 = v126;
      v12 = v22;
      if (v15 != v24)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", 233, 136, 0, "aaByteStreamPWriteExpected");
        return -1;
      }

      goto LABEL_137;
    }

    v17 = *(v16 + 56);
    v122 = v7;
    v123 = v12;
    if (*(v3 + 3) < v17)
    {
      *(v3 + 3) = v17;
      if (24 * v17 >= 0x2000000001)
      {
        *__error() = 12;
      }

      else
      {
        v18 = v3;
        v19 = *(v3 + 2);
        v20 = realloc(v19, 24 * v17);
        if (v20)
        {
          *(v18 + 2) = v20;
          v21 = v129;
          v14 = v129[2];
          v3 = v18;
          goto LABEL_30;
        }

        free(v19);
        v3 = v18;
      }

      *(v3 + 2) = 0;
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", 243, 136, 0, "aaReallocf");
      return -1;
    }

    v20 = *(v3 + 2);
    v21 = v129;
LABEL_30:
    v29 = (v14 - 1) >> 16;
    v30 = *(v16 + 80) + 12 * v29;
    v127 = v29;
    v31 = &v20[24 * v29];
    v32 = compression_encode_buffer(dst_buffer, 0x10000uLL, src_buffer, v15, 0, *(*(v3 + 1) + 8 * *(v16 + 128)));
    if (v32 - 1 >= v15)
    {
      v33 = v15 + 1;
    }

    else
    {
      v33 = v32;
    }

    *(v31 + 1) = v33;
    *(v31 + 2) = v33;
    v34 = v21[4];
    v35 = *v30 + *(v30 + 8);
    v36 = v33;
    if (v34 + v33 < v35)
    {
      v36 = v35 - v34;
      *(v31 + 2) = v35 - v34;
    }

    if (v36 == v15 + 1)
    {
      *(v31 + 1) = v15 + 1;
      *dst_buffer = *(*(v3 + 1) + 8 * *(v16 + 128) + 4);
      memcpy(src_buffer + 65538, src_buffer, v15);
      v33 = *(v31 + 1);
      v36 = *(v31 + 2);
    }

    bzero(&dst_buffer[v33], v36 - v33);
    v37 = *(v31 + 2);
    v38 = v21[4];
    v39 = *(v16 + 96) - v38;
    v40 = v37 - v39;
    if (v37 > v39)
    {
      break;
    }

LABEL_76:
    *v31 = v38;
    v65 = *(v31 + 2);
    v66 = *v3;
    if (*(*v3 + 40))
    {
      if (!v65)
      {
        goto LABEL_90;
      }

      v67 = 0;
      v68 = v21[5] + v38;
      v69 = dst_buffer;
      v70 = *(v31 + 2);
      while (1)
      {
        v71 = (*(v66 + 40))(*v66, v69, v70, v68);
        if (v71 < 1)
        {
          break;
        }

        v69 += v71;
        v67 += v71;
        v68 += v71;
        v70 -= v71;
        if (!v70)
        {
          goto LABEL_88;
        }
      }

      v67 = v71;
    }

    else
    {
      v67 = -1;
    }

LABEL_88:
    v72 = v65 == v67;
    v3 = v126;
    v6 = a2;
    if (!v72)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", 290, 136, 0, "aaByteStreamPWriteExpected");
      return -1;
    }

LABEL_90:
    v73 = v21[3];
    v21[4] += v65;
    v4 = a3;
    v7 = v122;
    v12 = v123;
    if (v21[2] == v73)
    {
      v74 = *v129;
      v75 = *(*v129 + 104);
      v76 = *(*v129 + 56);
      v77 = 2 * v76;
      if ((v75 & 4) == 0)
      {
        v77 = v76 + 1;
      }

      v78 = 4 * v77;
      if ((4 * v77) >= 0x2000000001)
      {
        *__error() = 12;
LABEL_148:
        v117 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 81, 136, *v117, "aaMalloc");
        v80 = 0;
LABEL_153:
        free(v80);
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", 297, 136, 0, "fork_write_index");
        return -1;
      }

      v79 = malloc(v78);
      if (!v79)
      {
        goto LABEL_148;
      }

      v80 = v79;
      if ((v75 & 4) != 0)
      {
        if (v74[8] && (v91 = v74[9]) != 0)
        {
          v92 = *v3;
          if (*(*v3 + 40))
          {
            v93 = 0;
            v94 = v129[5] + v74[12] - 50;
            v95 = 50;
            while (1)
            {
              v96 = (*(v92 + 40))(*v92, v91, v95, v94);
              if (v96 < 1)
              {
                break;
              }

              v91 += v96;
              v93 += v96;
              v94 += v96;
              v95 -= v96;
              if (!v95)
              {
                if (v93 != 50)
                {
                  break;
                }

                v97 = *v126;
                if (*(*v126 + 40))
                {
                  v98 = 0;
                  v99 = v74[8];
                  v100 = v129[5];
                  v101 = 264;
                  while (1)
                  {
                    v102 = (*(v97 + 40))(*v97, v99, v101, v100);
                    if (v102 < 1)
                    {
                      break;
                    }

                    v99 += v102;
                    v98 += v102;
                    v100 += v102;
                    v101 -= v102;
                    if (!v101)
                    {
                      if (v98 != 264)
                      {
                        break;
                      }

                      v103 = v74[7];
                      v3 = v126;
                      if (v103)
                      {
                        v104 = v80 + 1;
                        v105 = (*(v126 + 2) + 16);
                        do
                        {
                          v106 = *(v105 - 4) - 260;
                          v107 = *v105;
                          v105 += 3;
                          *(v104 - 1) = v106;
                          *v104 = v107;
                          v104 += 2;
                          --v103;
                        }

                        while (v103);
                      }

                      v85 = v129[5] + 264;
                      goto LABEL_100;
                    }
                  }
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 97, 136, 0, "aaByteStreamPWriteExpected");
                goto LABEL_153;
              }
            }
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 92, 136, 0, "aaByteStreamPWriteExpected");
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 87, 136, 0, "Fork missing header/footer");
        }

        goto LABEL_153;
      }

      if (v76)
      {
        v81 = v79 + 1;
        v82 = (*(v3 + 2) + 16);
        do
        {
          v83 = *(v82 - 4);
          v84 = *v82;
          v82 += 6;
          *(v81 - 1) = v83;
          *v81++ = v84 + v83;
          --v76;
        }

        while (v76);
      }

      v85 = v129[5];
LABEL_100:
      v4 = a3;
      v86 = *v3;
      if (!*(*v3 + 40))
      {
        goto LABEL_150;
      }

      if (v78)
      {
        v87 = 0;
        v88 = v80;
        v89 = v78;
        while (1)
        {
          v90 = (*(v86 + 40))(*v86, v88, v89, v85);
          if (v90 < 1)
          {
            break;
          }

          v88 = (v88 + v90);
          v87 += v90;
          v85 += v90;
          v89 -= v90;
          if (!v89)
          {
            goto LABEL_123;
          }
        }

        v87 = v90;
LABEL_123:
        v72 = v78 == v87;
        v4 = a3;
        v3 = v126;
        if (!v72)
        {
LABEL_150:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 120, 136, 0, "aaByteStreamPWriteExpected");
          goto LABEL_153;
        }
      }

      v108 = v74[4];
      v109 = v74[12];
      v110 = v108 - v109;
      if (v108 != v109)
      {
        if (v110 >= 0x10000)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 126, 136, 0, "Too much fork padding: %zu");
          goto LABEL_153;
        }

        bzero(dst_buffer, v108 - v109);
        v111 = *v3;
        if (!*(*v3 + 40))
        {
          goto LABEL_151;
        }

        if (v110)
        {
          v112 = 0;
          v113 = v129[5] + v74[12];
          v114 = dst_buffer;
          v115 = v110;
          while (1)
          {
            v116 = (*(v111 + 40))(*v111, v114, v115, v113);
            if (v116 < 1)
            {
              break;
            }

            v114 += v116;
            v112 += v116;
            v113 += v116;
            v115 -= v116;
            if (!v115)
            {
              goto LABEL_134;
            }
          }

          v112 = v116;
LABEL_134:
          v72 = v110 == v112;
          v4 = a3;
          v3 = v126;
          if (!v72)
          {
LABEL_151:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_write_index", 129, 136, 0, "aaByteStreamPWriteExpected");
            goto LABEL_153;
          }
        }
      }

      free(v80);
      v12 = v123;
    }

LABEL_137:
    v7 += v12;
    a1 = src_buffer;
    if (v7 >= v4)
    {
      return v4;
    }
  }

  v41 = v127;
  v42 = src_buffer;
  v118 = v31;
  do
  {
    if (!v41)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_realign", 145, 136, 0, "realignment failed");
      goto LABEL_142;
    }

    v43 = (*(v3 + 2) + 24 * (v41 - 1));
    v44 = v43[1];
    v45 = v43[2];
    v46 = v45 - v44;
    v47 = v40 - (v45 - v44);
    if (v40 > v45 - v44)
    {
      v43[2] = v44;
      --v41;
      goto LABEL_73;
    }

    v43[2] = v45 - v40;
    v38 = *v43 + v45 - v40;
    v21[4] = v38;
    if (v41 >= v127)
    {
      goto LABEL_76;
    }

    v119 = v45 - v44;
    v120 = v40;
    while (1)
    {
      v48 = (*(v3 + 2) + 24 * v41);
      v49 = v21[5];
      v50 = v48[1];
      v51 = *v48 + v49;
      v52 = *v3;
      if (*(*v3 + 88))
      {
        if (v50 != aaByteStreamSimulate(*v3))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_realign", 176, 136, 0, "aaByteStreamSimulate");
          goto LABEL_72;
        }

        goto LABEL_59;
      }

      if (*(v52 + 32))
      {
        if (!v50)
        {
          if (!*(v52 + 40))
          {
            goto LABEL_70;
          }

          goto LABEL_68;
        }

        v53 = 0;
        v54 = v42;
        v55 = v48[1];
        while (1)
        {
          v56 = (*(v52 + 32))(*v52, v54, v55, v51);
          if (v56 < 0)
          {
            break;
          }

          if (v56)
          {
            v54 += v56;
            v53 += v56;
            v51 += v56;
            v55 -= v56;
            if (v55)
            {
              continue;
            }
          }

          goto LABEL_58;
        }

        v53 = v56;
      }

      else
      {
        v53 = -1;
      }

LABEL_58:
      v3 = v126;
      v42 = src_buffer;
      if (v50 != v53)
      {
        break;
      }

LABEL_59:
      v57 = *v3;
      if (*(*v3 + 40))
      {
        if (!v50)
        {
          goto LABEL_68;
        }

        v58 = 0;
        v59 = v49 + v38;
        v60 = v42;
        v61 = v50;
        while (1)
        {
          v62 = (*(v57 + 40))(*v57, v60, v61, v59);
          if (v62 < 1)
          {
            break;
          }

          v60 += v62;
          v58 += v62;
          v59 += v62;
          v61 -= v62;
          if (!v61)
          {
            goto LABEL_67;
          }
        }

        v58 = v62;
      }

      else
      {
        v58 = -1;
      }

LABEL_67:
      v3 = v126;
      v42 = src_buffer;
      if (v50 != v58)
      {
LABEL_70:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_realign", 183, 136, 0, "aaByteStreamPWriteExpected");
        goto LABEL_72;
      }

LABEL_68:
      v21 = v129;
      v63 = v129[4];
      *v48 = v63;
      v38 = v63 + v50;
      v129[4] = v63 + v50;
      if (++v41 == v127)
      {
        goto LABEL_75;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "fork_realign", 179, 136, 0, "aaByteStreamPReadExpected");
LABEL_72:
    LODWORD(v37) = -1;
    v46 = v119;
    v40 = v120;
    v47 = v120;
    v6 = a2;
    v21 = v129;
    v31 = v118;
LABEL_73:
    v64 = v40 > v46;
    v40 = v47;
  }

  while (v64);
  if ((v37 & 0x80000000) == 0)
  {
LABEL_75:
    v38 = v21[4];
    v6 = a2;
    v31 = v118;
    goto LABEL_76;
  }

LABEL_142:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamWrite", 282, 136, 0, "realign_fork");
  return -1;
}

unint64_t ForkOutputStreamPWrite(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a1 + 0x20000;
  if (*(a1 + 131144))
  {
    goto LABEL_2;
  }

  v20 = a1;
  v21 = (*(a1 + 131112) + 48 * *(a1 + 131128));
  v22 = v21[2];
  if (v22 + v21[1] != a4)
  {
    v24 = v21[2];
    if (v21[2])
    {
      if (*v21)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamPWrite", 326, 136, 0, "pending compressed fork", a2);
        return -1;
      }

      v25 = *(a1 + 131080);
      if (!v25[5])
      {
        goto LABEL_48;
      }

      v26 = a3;
      v27 = 0;
      v28 = (v22 & 0xFFFFFFFFFFFF0000) + v21[5];
      v29 = v21[2];
      while (1)
      {
        v30 = (v25[5])(*v25, v20, v29, v28);
        if (v30 < 1)
        {
          break;
        }

        v20 += v30;
        v27 += v30;
        v28 += v30;
        v29 -= v30;
        if (!v29)
        {
          goto LABEL_46;
        }
      }

      v27 = v30;
LABEL_46:
      a3 = v26;
      if (v24 != v27)
      {
LABEL_48:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamPWrite", 328, 136, 0, "aaByteStreamPWriteExpected", a2);
        return -1;
      }
    }

    *(v5 + 72) = 1;
LABEL_2:
    v6 = 0;
    if (a3)
    {
      v32 = a3;
      while (1)
      {
        if (*(v5 + 64) <= v4)
        {
LABEL_36:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamPWrite", 343, 136, 0, "no segment found", a2);
          return -1;
        }

        v7 = *(v5 + 40);
        v8 = *(v5 + 48);
        if (v8 < 2)
        {
          if (!v7)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v9 = 0;
          do
          {
            if (v7[6 * ((v8 + v9) >> 1) + 1] <= v4)
            {
              v9 = (v8 + v9) >> 1;
            }

            else
            {
              v8 = (v8 + v9) >> 1;
            }
          }

          while (v9 + 1 < v8);
          v7 += 6 * v9;
        }

        if (*v7)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamPWrite", 344, 136, 0, "compressed fork", a2);
          return -1;
        }

        v10 = v4 - v7[1];
        v11 = v7[3];
        if (a3 - v6 >= v11 - v10)
        {
          v12 = v11 - v10;
        }

        else
        {
          v12 = a3 - v6;
        }

        v13 = v12 + v7[2];
        v7[2] = v13;
        if (v13 > v11)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamPWrite", 352, 136, 0, "too much data", a2);
          return -1;
        }

        v14 = *(v5 + 8);
        if (*(v14 + 40))
        {
          if (!v12)
          {
            goto LABEL_27;
          }

          v15 = 0;
          v16 = a2 + v6;
          v17 = v7[5] + v10;
          v18 = v12;
          while (1)
          {
            v19 = (*(v14 + 40))(*v14, v16, v18, v17);
            if (v19 < 1)
            {
              break;
            }

            v16 += v19;
            v15 += v19;
            v17 += v19;
            v18 -= v19;
            if (!v18)
            {
              goto LABEL_26;
            }
          }

          v15 = v19;
        }

        else
        {
          v15 = -1;
        }

LABEL_26:
        a3 = v32;
        if (v12 != v15)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamPWrite", 356, 136, 0, "aaByteStreamPWriteExpected", a2);
          return -1;
        }

LABEL_27:
        v4 += v12;
        v6 += v12;
        if (v6 >= a3)
        {
          return v6;
        }
      }
    }

    return v6;
  }

  return ForkOutputStreamWrite(a1, a2, a3);
}

uint64_t ForkOutputStreamClose(void *a1)
{
  if (a1)
  {
    v2 = a1 + 0x4000;
    v3 = a1[16389];
    if (!v3)
    {
      v9 = 0;
LABEL_17:
      free(v2[3]);
      free(a1);
      return v9;
    }

    v4 = v2[6];
    if (v4)
    {
      if (v3[2] != v3[3])
      {
        v9 = 0xFFFFFFFFLL;
LABEL_15:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageOutputStream.c", "ForkOutputStreamClose", 385, 136, 0, "data missing");
        v3 = v2[5];
        goto LABEL_16;
      }

      v5 = 0;
      v6 = v3 + 9;
      while (v4 - 1 != v5)
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v6 += 6;
        ++v5;
        if (v7 != v8)
        {
          if (v5 >= v4)
          {
            v9 = 0;
          }

          else
          {
            v9 = 0xFFFFFFFFLL;
          }

          goto LABEL_15;
        }
      }
    }

    v9 = 0;
LABEL_16:
    free(v3);
    goto LABEL_17;
  }

  return 0;
}

uint64_t BlobBufferStore(uint64_t a1, const void *a2, size_t a3, void *a4)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 8) + a3;
  if ((BlobBufferIncreaseCapacity(a1, v8) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/BlobBuffer.c", "BlobBufferStore", 19, 6, 0, "BlobBufferStore");
    return 0xFFFFFFFFLL;
  }

  else
  {
    if (a2)
    {
      memcpy((*(a1 + 16) + *(a1 + 8)), a2, a3);
    }

    if (a4)
    {
      *a4 = *(a1 + 8);
      a4[1] = a3;
    }

    result = 0;
    *(a1 + 8) = v8;
  }

  return result;
}

uint64_t BlobBufferIncreaseCapacity(uint64_t a1, size_t a2)
{
  v2 = *a1;
  if (*a1 >= a2)
  {
    return 0;
  }

  do
  {
    v4 = v2 + (v2 >> 1);
    if (__CFADD__(v2, v2 >> 1))
    {
      v4 = -1;
    }

    if (v2)
    {
      v2 = v4;
    }

    else
    {
      v2 = 0x10000;
    }
  }

  while (v2 < a2);
  v5 = reallocf(*(a1 + 16), v2);
  *(a1 + 16) = v5;
  if (v5)
  {
    result = 0;
    *a1 = v2;
  }

  else
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/BlobBuffer.c", "BlobBufferIncreaseCapacity", 58, 6, *v7, "malloc");
    return 0xFFFFFFFFLL;
  }

  return result;
}

void BlobBufferFree(uint64_t a1)
{
  free(*(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
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

uint64_t StringTableClear(uint64_t result)
{
  *(result + 24) = 0;
  *result = 0;
  return result;
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
        v10 = xmmword_296AD18D0;
        v11 = xmmword_296AD1760;
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

uint64_t StringTableSearchSortedWithLength(int *a1, char *__s1, size_t a3, unsigned int *a4)
{
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_6;
  }

  v9 = *(a1 + 1);
  v10 = *(v9 + 8);
  v11 = strncmp(__s1, (*(a1 + 4) + *v9), a3);
  if (v11)
  {
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    result = 0;
    if (!a4)
    {
      return result;
    }

    v13 = -1;
    goto LABEL_8;
  }

  if (v10 > a3)
  {
    goto LABEL_6;
  }

  if (v10 >= a3)
  {
    result = 1;
    if (!a4)
    {
      return result;
    }

    v13 = 0;
    goto LABEL_8;
  }

LABEL_11:
  v13 = v5 - 1;
  v14 = StringTableCmp(a1, v13, __s1, a3);
  if (v14 >= 1)
  {
    result = 0;
    if (!a4)
    {
      return result;
    }

LABEL_8:
    *a4 = v13;
    return result;
  }

  if (v14)
  {
    if (v13 < 2)
    {
      v15 = 0;
LABEL_28:
      result = 0;
      v13 = v15;
      if (a4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v15 = 0;
      while (1)
      {
        v16 = StringTableCmp(a1, v15 + ((v13 - v15) >> 1), __s1, a3);
        if (!v16)
        {
          break;
        }

        if (v16 < 0)
        {
          v13 = v15 + ((v13 - v15) >> 1);
        }

        else
        {
          v15 += (v13 - v15) >> 1;
        }

        if (v15 + 1 >= v13)
        {
          goto LABEL_28;
        }
      }

      result = 1;
      v13 = v15 + ((v13 - v15) >> 1);
      if (a4)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    result = 1;
    if (a4)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t StringTableMatchesPrefixSorted(int *a1, char *__s)
{
  v4 = strlen(__s);
  if (StringTableSearchSortedWithLength(a1, __s, v4, 0))
  {
    return 1;
  }

  if (v4)
  {
    v6 = v4 - 1;
    while (__s[v6] != 47 || !StringTableSearchSortedWithLength(a1, __s, v6, 0))
    {
      if (--v6 == -1)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t StringTableCmp(uint64_t a1, unsigned int a2, char *__s1, size_t __n)
{
  v5 = *(a1 + 8) + 16 * a2;
  v6 = *(v5 + 8);
  LODWORD(result) = strncmp(__s1, (*(a1 + 32) + *v5), __n);
  if (v6 <= __n)
  {
    v8 = v6 < __n;
  }

  else
  {
    v8 = -1;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t ECCFixThreadProc(int64x2_t *a1)
{
  if (a1[2].i32[2] < 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = malloc(a1[1].u32[3]);
    if (!v2)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 157, 64, 0, "creating workBuffer");
      goto LABEL_32;
    }
  }

  v3 = a1->u64[1];
  if (v3 < a1[1].i64[0])
  {
    v20 = vdupq_n_s64(1uLL).u64[0];
    do
    {
      v4 = a1[1].u32[3];
      v5 = v3 * v4;
      v6 = a1[4].u64[0];
      if (v6 < v3 * v4)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 166, 64, 0, "Invalid block index");
        break;
      }

      if (v5 + v4 <= v6)
      {
        v7 = v4;
      }

      else
      {
        v7 = (v6 - v5);
      }

      v8 = a1[2].i32[2];
      if (v8 < 0)
      {
        v10 = a1[3].i64[0] + v5;
      }

      else
      {
        v9 = pread(v8, v2, v7, a1[3].i64[1] + v5);
        if (v9 < 0)
        {
          v17 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 174, 64, v17, "reading data segment");
          break;
        }

        v10 = v2;
        if (v7 != v9)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 175, 64, 0, "Truncated read n=%zd pos=%llu read=%u fd=%d", v9);
          break;
        }
      }

      v11 = a1[2].u32[0];
      if (v3 * v11 + v11 > a1[5].i64[0])
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 187, 64, 0, "Parity buffer out of range");
        break;
      }

      if (a1[1].i32[2] != 1)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 205, 64, 0, "invalid variant %u");
        break;
      }

      v21 = 0;
      v12 = ECC65537CheckAndFix(v7, v10, (a1[4].i64[1] + v3 * v11), &v21);
      if (v12 < 0)
      {
        ++a1[5].i64[1];
      }

      else if (v12)
      {
        v13.i64[0] = v20;
        v14 = v21;
        v13.i64[1] = HIDWORD(v21);
        a1[6] = vaddq_s64(a1[6], v13);
        a1[7].i64[0] += v14;
        v15 = a1[2].i32[2];
        if ((v15 & 0x80000000) == 0)
        {
          v16 = pwrite(v15, v2, v7, a1[3].i64[1] + v5);
          if (v16 < 0)
          {
            v18 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 211, 64, v18, "writing data segment");
            break;
          }

          if (v7 != v16)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 212, 64, 0, "Truncated write n=%zd pos=%llu read=%u fd=%d", v16);
            break;
          }
        }
      }

      ++v3;
    }

    while (v3 < a1[1].i64[0]);
  }

LABEL_32:
  free(v2);
  return 0;
}

unint64_t ParallelArchiveECCFixCommon(uint64_t a1, char *a2, off_t a3, unint64_t a4, __int128 *a5, unint64_t a6, uint64_t a7)
{
  v13 = a1;
  v86 = *MEMORY[0x29EDCA608];
  DefaultNThreads = *(a7 + 4);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v63 = *a7;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  RealTime = getRealTime();
  *(a7 + 16) = 0;
  *(a7 + 12) = 0;
  enterThreadErrorContext();
  v62 = a4;
  if (a6 <= 0x2F)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 452, 64, 0, "Truncated ECC buffer");
LABEL_9:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_10;
  }

  v16 = a5[1];
  v80 = *a5;
  v81 = v16;
  v82 = a5[2];
  if (v80 != 0x3031304343455842)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 454, 64, 0, "Invalid ECC magic");
    goto LABEL_9;
  }

  if (HIDWORD(v82))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 455, 64, 0, "Invalid ECC header");
    goto LABEL_9;
  }

  v61 = DWORD2(v82);
  if (!DWORD2(v82))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 456, 64, 0, "Invalid ECC header");
    goto LABEL_9;
  }

  if (*(&v80 + 1) != a4)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 457, 64, 0, "Input buffer size mismatch: expected %llu B, got %llu B");
    goto LABEL_9;
  }

  v23 = DWORD1(v82);
  if (DWORD1(v82) != 1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 476, 64, 0, "Invalid ECC variant: %u", DWORD1(v82));
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
LABEL_54:
    v22 = v61;
    goto LABEL_10;
  }

  if (DWORD2(v82) >= 0x1FFE1)
  {
    v22 = DWORD2(v82);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 472, 64, 0, "Invalid blockSize: %u", DWORD2(v82));
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v23 = 1;
    goto LABEL_10;
  }

  v36 = (a4 + DWORD2(v82) - 1) / DWORD2(v82);
  v59 = 34 * v36;
  if (34 * v36 + 48 != a6)
  {
    v38 = "Invalid ECC buffer size";
    v39 = 481;
    goto LABEL_51;
  }

  if (v36 >= DefaultNThreads)
  {
    LODWORD(v37) = DefaultNThreads;
  }

  else
  {
    LODWORD(v37) = (a4 + DWORD2(v82) - 1) / DWORD2(v82);
  }

  if (v37 <= 1)
  {
    v37 = 1;
  }

  else
  {
    v37 = v37;
  }

  __count = v37;
  v58 = (a4 + DWORD2(v82) - 1) / DWORD2(v82);
  if (v13 < 0)
  {
    if ((getBufferSHA1Digest(a2, a4, &v83) & 0x80000000) != 0)
    {
      v38 = "computing buffer digest";
      v39 = 495;
      goto LABEL_51;
    }
  }

  else if ((getFileSegmentSHA1DigestFD(v13, a3, a4, &v83) & 0x80000000) != 0)
  {
    v38 = "computing file digest";
    v39 = 491;
LABEL_51:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", v39, 64, 0, v38);
LABEL_52:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
LABEL_53:
    v23 = 1;
    goto LABEL_54;
  }

  v40 = (v58 + __count - 1) / __count;
  if (v63 >= 1)
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v41 = MEMORY[0x29EDCA610];
    fwrite("ParallelArchiveECCFixCommon:\n", 0x1DuLL, 1uLL, *MEMORY[0x29EDCA610]);
    sha1ToString(&v64, &v83);
    fprintf(*v41, "  Input data SHA1: %s\n", &v64);
    sha1ToString(&v64, &v81);
    fprintf(*v41, "  Expected SHA1: %s\n", &v64);
    fwrite("  ECC variant: ", 0xFuLL, 1uLL, *v41);
    fwrite("RS65537\n", 8uLL, 1uLL, *v41);
    fprintf(*v41, "%12llu data size\n", a4);
    fprintf(*v41, "%12u block size\n", v61);
    fprintf(*v41, "%12u ECC parity size per block\n", 34);
    fprintf(*v41, "%11.2f%% parity/data ratio\n", 3400.0 / v61);
    fprintf(*v41, "%12zu block count\n", v58);
    fprintf(*v41, "%12zu ECC buffer size\n", a6);
    fprintf(*v41, "%12u worker threads\n", __count);
    fprintf(*v41, "%12zu blocks per thread\n", v40);
  }

  if (v83 == v81 && v84 == *(&v81 + 1) && v85 == v82)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v17 = 1;
    goto LABEL_53;
  }

  v18 = __count;
  v44 = calloc(__count, 0x78uLL);
  if (!v44)
  {
    v53 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 526, 64, v53, "malloc %u threads");
    goto LABEL_52;
  }

  v45 = 0;
  v46 = a5 + 3;
  v56 = v44;
  v47 = v44;
  v17 = 1;
  do
  {
    v48 = v40 * v45;
    if (v40 * v45 < v58)
    {
      v49 = v48 + v40;
      if (v48 + v40 >= v58)
      {
        v49 = v58;
      }

      *(v47 + 8) = v48;
      *(v47 + 16) = v49;
      *(v47 + 40) = v13;
      *(v47 + 48) = a2;
      *(v47 + 56) = a3;
      *(v47 + 64) = v62;
      *(v47 + 72) = v46;
      *(v47 + 80) = v59;
      *(v47 + 24) = 1;
      *(v47 + 28) = v61;
      *(v47 + 32) = 34;
      if (createThread(v47, ECCFixThreadProc, v47, 0))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 549, 64, 0, "createThread");
        v17 = 0;
      }
    }

    ++v45;
    v47 += 120;
    --v18;
  }

  while (v18);
  v21 = 0;
  v20 = 0;
  v60 = 0;
  v50 = __count;
  v51 = v56 + 112;
  do
  {
    v52 = *(v51 - 14);
    if (v52)
    {
      if (joinThread(v52))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 556, 64, 0, "joinThread");
        v17 = 0;
      }

      v21 += *(v51 - 3);
      v20 += *(v51 - 2);
      v60 += *(v51 - 1);
      v18 += *v51;
    }

    v51 += 15;
    --v50;
  }

  while (v50);
  if (v21)
  {
    goto LABEL_80;
  }

  if (v13 < 0)
  {
    if ((getBufferSHA1Digest(a2, v62, &v83) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 574, 64, 0, "computing buffer digest");
      goto LABEL_100;
    }
  }

  else if ((getFileSegmentSHA1DigestFD(v13, a3, v62, &v83) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 570, 64, 0, "computing file digest");
LABEL_100:
    v17 = 0;
    v21 = 0;
LABEL_80:
    v23 = 1;
    v19 = v60;
    v22 = v61;
    goto LABEL_10;
  }

  v22 = v61;
  if (v63 >= 1)
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    sha1ToString(&v64, &v83);
    fprintf(*MEMORY[0x29EDCA610], "  Output data SHA1: %s\n", &v64);
    sha1ToString(&v64, &v81);
  }

  if (v83 == v81 && v84 == *(&v81 + 1) && v85 == v82)
  {
    v21 = 0;
    v23 = 1;
    v19 = v60;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v23 = 1;
    v21 = v58;
  }

LABEL_10:
  result = leaveThreadErrorContext(0, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  v25 = 0x7FFF;
  if (v18 < 0x7FFF)
  {
    v25 = v18;
  }

  v26 = v25 << 8;
  v27 = 255;
  if (v20 < 0xFF)
  {
    v27 = v20;
  }

  v28 = v26 | v27;
  v29 = 255;
  if (v21 < 0xFF)
  {
    v29 = v21;
  }

  v30 = v26 | v29 | 0x800000;
  if (v21)
  {
    v31 = v30;
  }

  else
  {
    v31 = v28;
  }

  if (v63 <= 0)
  {
    *(a7 + 12) = v23;
    *(a7 + 16) = v22;
    *(a7 + 20) = v31;
    if (v21)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v32 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12llu fixed blocks\n", v20);
    v33 = v19;
    fprintf(*v32, "%12llu fixed bytes\n", v19);
    fprintf(*v32, "%12llu fixed bits\n", v18);
    if (v21)
    {
      fprintf(*v32, "%12llu INVALID BLOCKS\n", v21);
      v34 = "FAIL";
    }

    else
    {
      v34 = "OK";
    }

    fprintf(*v32, "    0x%06x diagnostic code\n", v31);
    *(a7 + 12) = v23;
    *(a7 + 16) = v22;
    *(a7 + 20) = v31;
    v35 = getRealTime();
    fprintf(*v32, "Total time %.2fs, %.2f MB/s (%s)\n", v35 - RealTime, vcvtd_n_f64_u64(v62, 0x14uLL) / (v35 - RealTime), v34);
    v19 = v33;
    if (v21)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v19 >= 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return v19;
  }
}

uint64_t ParallelArchiveECCVerifyCommon(uint64_t a1, char *a2, off_t a3, unint64_t a4, __int128 *a5, unint64_t a6)
{
  v15 = *MEMORY[0x29EDCA608];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (a6 <= 0x2F)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCVerifyCommon", 390, 64, 0, "Truncated ECC buffer");
    return 0xFFFFFFFFLL;
  }

  v9 = *a5;
  v10 = a5[1];
  v11 = a5[2];
  if (*a5 != 0x3031304343455842)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCVerifyCommon", 392, 64, 0, "Invalid ECC magic", v9);
    return 0xFFFFFFFFLL;
  }

  if (HIDWORD(v11))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCVerifyCommon", 393, 64, 0, "Invalid ECC header", 0x3031304343455842);
    return 0xFFFFFFFFLL;
  }

  if (!DWORD2(v11))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCVerifyCommon", 394, 64, 0, "Invalid ECC header", 0x3031304343455842);
    return 0xFFFFFFFFLL;
  }

  if (*(&v9 + 1) != a4)
  {
    return 0;
  }

  if ((a1 & 0x80000000) != 0)
  {
    if ((getBufferSHA1Digest(a2, a4, &v12) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCVerifyCommon", 404, 64, 0, "computing buffer digest", 0x3031304343455842);
      return 0xFFFFFFFFLL;
    }
  }

  else if ((getFileSegmentSHA1DigestFD(a1, a3, a4, &v12) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCVerifyCommon", 400, 64, 0, "computing file digest", 0x3031304343455842);
    return 0xFFFFFFFFLL;
  }

  return v12 == v10 && v13 == *(&v10 + 1) && v14 == v11;
}

void *OECCStreamCreate(int a1, unsigned int a2, uint64_t a3)
{
  v6 = calloc(1uLL, 0xB0uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    v6[4] = a3;
    *(v6 + 10) = a2;
    v8 = malloc(a2);
    v7[8] = v8;
    if (v8)
    {
      if (a1 != 1)
      {
        v9 = "Invalid ECC algorithm";
        v10 = 857;
        goto LABEL_9;
      }

      if (a2 >= 0x1FFE1)
      {
        v9 = "Invalid ECC block size";
        v10 = 853;
LABEL_9:
        v11 = 0;
        goto LABEL_10;
      }

      *(v7 + 6) = 34;
      v13 = 34 * ((a3 + a2 - 1) / a2) + 48;
      v7[2] = v13;
      v14 = malloc(v13);
      v7[1] = v14;
      if (v14)
      {
        CC_SHA1_Deprecated_Init((v7 + 76));
        v7[7] = 48;
        checkEOF(v7);
        return v7;
      }

      v11 = *__error();
      v9 = "malloc";
      v10 = 862;
    }

    else
    {
      v11 = *__error();
      v9 = "malloc";
      v10 = 846;
    }
  }

  else
  {
    v11 = *__error();
    v9 = "malloc";
    v10 = 841;
  }

LABEL_10:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "OECCStreamCreate", v10, 64, v11, v9);
  OECCStreamDestroy(v7);
  return 0;
}

int *checkEOF(int *result)
{
  if (*(result + 6) == *(result + 4) && !result[43])
  {
    result[43] = 1;
    v1 = *(result + 1);
    *v1 = 0x3031304343455842;
    v2 = *result;
    *(v1 + 8) = *(result + 4);
    *(v1 + 44) = 0;
    v3 = result[10];
    *(v1 + 36) = v2;
    *(v1 + 40) = v3;
    return CC_SHA1_Deprecated_Final((v1 + 16), (result + 19));
  }

  return result;
}

void OECCStreamDestroy(void **a1)
{
  if (a1)
  {
    free(a1[8]);
    free(a1[1]);

    free(a1);
  }
}

uint64_t OECCStreamGetDataPtr(uint64_t a1)
{
  if (*(a1 + 172))
  {
    return *(a1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t OECCStreamGetDataSize(uint64_t a1)
{
  if (*(a1 + 172))
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t OECCStreamWrite(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = __CFADD__(v3, a3);
  v5 = v3 + a3;
  v6 = v4;
  if (v5 <= *(a1 + 32) && v6 == 0)
  {
    v9 = a3;
    v10 = a2;
    CC_SHA1_Deprecated_Update((a1 + 76), a2, a3);
    v8 = 0;
    if (v9)
    {
      v12 = *(a1 + 72);
      do
      {
        v13 = *(a1 + 40);
        v14 = v9 + v12 <= v13 ? v9 : v13 - v12;
        memcpy((*(a1 + 64) + v12), v10, v14);
        v15 = *(a1 + 72) + v14;
        *(a1 + 72) = v15;
        v16 = *(a1 + 48) + v14;
        *(a1 + 48) = v16;
        v8 += v14;
        if (v15 < *(a1 + 40) && v16 < *(a1 + 32))
        {
          break;
        }

        v17 = *(a1 + 56);
        if (v17 + *(a1 + 24) > *(a1 + 16))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "OECCStreamWrite", 914, 64, 0, "ECC buffer overflow");
          return -1;
        }

        if (*a1 != 1)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "OECCStreamWrite", 921, 64, 0, "Invalid ECC algorithm");
          return -1;
        }

        if ((ECC65537GetParity(v15, *(a1 + 64), *(a1 + 8) + v17) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "OECCStreamWrite", 918, 64, 0, "ECC generation failed");
          return -1;
        }

        v12 = 0;
        v10 += v14;
        *(a1 + 56) += *(a1 + 24);
        *(a1 + 72) = 0;
        v9 -= v14;
      }

      while (v9);
    }

    checkEOF(a1);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "OECCStreamWrite", 892, 64, 0, "Too many bytes received");
    return -1;
  }

  return v8;
}

uint64_t initBestMatchThreadProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v73 = *MEMORY[0x29EDCA608];
  v9 = *v8;
  v10 = *(v8 + 20);
  bzero(v72, 0x3000uLL);
  bzero(v71, 0x7000uLL);
  v11 = *(v8 + 12);
  v12 = *(v8 + 16);
  v13 = *(v9 + 36);
  v14 = v13 - v10;
  if (v13 < v10)
  {
    v14 = 0;
  }

  if (v12 + v10 > v13)
  {
    v12 = v14;
  }

  if (v11 < v12)
  {
    v15 = *(v8 + 12);
    do
    {
      v16 = *(v9 + 48);
      v17 = *(v16 + 8 * v15 + 4);
      if (v17 < 0x400)
      {
        v18 = v15;
        v19 = *(v9 + 24);
        v20 = 0;
        if (v10)
        {
          v21 = (v19 + v15);
          v22 = v10;
          do
          {
            v23 = *v21++;
            v20 = -1640531535 * (v23 + v20) - 1640531535;
            v22 -= 4;
          }

          while (v22);
        }

        v24 = v20 ^ HIWORD(v20);
        v25 = *(v8 + 32) + 6 * (v20 >> *(v9 + 44));
        if (*(v25 + 4) == v24)
        {
          v26 = *v25;
          if (*v25 >= *(v8 + 8))
          {
            v27 = &v72[3 * ((v15 - v26) & 0x3FF)];
            if (v26 != v27[1] + v15 - *v27 || v27[2] + *v27 < v15)
            {
              v28 = &v71[28 * (v26 & 0x3FF)];
              if (*v28 == v26)
              {
                v29 = v28[2];
                v30 = v15 - v29;
                if (v29 != v28[5] + v15 - v29)
                {
                  goto LABEL_26;
                }

                v32 = v28[3];
                v31 = v28[4];
                v33 = v31 + v30;
                v34 = v28[1];
                if (v31 + v30 <= v34)
                {
                  v33 = v28[1];
                }

                v35 = v33 + v30;
                v36 = v28[6] + v31;
                if (v36 >= v32 + v34)
                {
                  v36 = v32 + v34;
                }

                v37 = v36 >= v35;
                v38 = v36 - v35;
                if (v38 != 0 && v37)
                {
                  v26 = v26 - v15 + v35;
                  v18 = v35;
                }

                else
                {
LABEL_26:
                  v38 = 0;
                  LODWORD(v35) = v15;
                }
              }

              else
              {
                v29 = 0;
                v38 = 0;
                *v28 = v26;
                v28[1] = 0;
                LODWORD(v35) = v15;
                *(v28 + 1) = 0;
              }

              v39 = 0;
              if (v26 >= v35 - v11)
              {
                v40 = v35 - v11;
              }

              else
              {
                v40 = v26;
              }

              v41 = *(v9 + 16);
              v42 = v41 + v26;
              v43 = v19 + v18;
              v44 = -1;
              while (1)
              {
                v39 += 8;
                if (v39 > v40)
                {
                  break;
                }

                v45 = *(v42 - v39);
                v46 = *(v43 - v39);
                v44 += 8;
                if (v45 != v46)
                {
                  v44 = v39 + (__clz(v46 ^ v45) >> 3) - 8;
                  goto LABEL_38;
                }
              }

              while (1)
              {
                v47 = v44 + 2;
                if (v44 + 2 > v40)
                {
                  break;
                }

                ++v44;
                if (*(v42 - v47) != *(v43 - v47))
                {
                  goto LABEL_38;
                }
              }

              v44 = v40;
LABEL_38:
              v48 = v26 - v44;
              v49 = v35 - v44;
              v50 = v44 + v38;
              LODWORD(v51) = *(v9 + 32) - v48;
              v52 = *(v9 + 36) - v49;
              if (v51 >= v52)
              {
                v51 = v52;
              }

              else
              {
                v51 = v51;
              }

              v53 = v41 + v48;
              v54 = v19 + v49;
              while (1)
              {
                v55 = v50 + 8;
                if (v50 + 8 > v51)
                {
                  break;
                }

                v56 = *(v53 + v50);
                v57 = *(v54 + v50);
                v50 += 8;
                if (v56 != v57)
                {
                  LODWORD(v51) = v55 + (__clz(__rbit64(v57 ^ v56)) >> 3) - 8;
                  goto LABEL_51;
                }
              }

              if (v50 < v51)
              {
                v58 = v50;
                while (*(v53 + v58) == *(v54 + v58))
                {
                  if (++v58 >= v51)
                  {
                    goto LABEL_51;
                  }
                }

                LODWORD(v51) = v58;
              }

LABEL_51:
              if (v51 >= v10)
              {
                *v27 = v49;
                v27[1] = v48;
                v27[2] = v51;
                v59 = v28[1];
                v60 = v28[3];
                v28[5] = v29;
                v28[6] = v60;
                v28[1] = v49;
                v28[2] = v15;
                v28[3] = v51;
                v28[4] = v59;
                v61 = (v16 + 8 * v49);
                if (v51 > v61[1])
                {
                  *v61 = v48;
                  *(*(v9 + 48) + 8 * v49 + 4) = v51;
                  if (v51 + v49 > v15 + 1024)
                  {
                    v15 = v51 + v49 - 1024;
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v15 = v15 + v17 - 1024;
      }

      ++v15;
    }

    while (v15 < v12);
  }

  if (*(v8 + 24))
  {
    v62 = *(v8 + 16);
    v63 = (*(v8 + 12) + 1);
    if (v63 < v62)
    {
      v64 = 8 * (*(v8 + 12) + 1);
      do
      {
        v65 = *(v9 + 48);
        v66 = v65 + v64;
        v67 = *(v65 + v64 - 4);
        if (v67 > v10 && v67 > *(v65 + v64 + 4))
        {
          v69 = *(v66 - 8) + 1;
          if (v69 < *(v9 + 32))
          {
            *(v65 + v64) = v69;
            *(v66 + 4) = v67 - 1;
            v62 = *(v8 + 16);
          }
        }

        ++v63;
        v64 += 8;
      }

      while (v63 < v62);
    }
  }

  return 0;
}

_DWORD *BXDiffMatchesCreate(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int *a5)
{
  v172[1] = *MEMORY[0x29EDCA608];
  v168 = 0;
  v169 = 0;
  v170 = 0;
  v5 = *a5;
  if (!*a5)
  {
    v5 = 6;
  }

  if (a4 >= 0x4B000)
  {
    v6 = v5;
  }

  else
  {
    v6 = 20;
  }

  if (a2 > 0xFFFFFFFE || (v7 = a4, a4 >= 0xFFFFFFFF))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "BXDiffMatchesCreate", 994, 92, 0, "isize,osize too large");
    return 0;
  }

  v12 = calloc(1uLL, 0x40uLL);
  v13 = v12;
  if (!v12)
  {
    v82 = *__error();
    v83 = "malloc";
    v84 = 998;
LABEL_108:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "BXDiffMatchesCreate", v84, 92, v82, v83, v158);
    BXDiffMatchesDestroy(v13);
    return 0;
  }

  v14 = *a5;
  v12[2] = a5[2];
  *v12 = v14;
  DefaultNThreads = a5[2];
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  *(v13 + 8) = DefaultNThreads;
  *(v13 + 16) = a1;
  *(v13 + 24) = a3;
  *(v13 + 32) = a2;
  *(v13 + 36) = v7;
  if ((getProfile(&v168, v6) & 0x80000000) != 0)
  {
    v158 = *a5;
    v83 = "loading profile: %d";
    v84 = 1008;
LABEL_106:
    v82 = 0;
    goto LABEL_108;
  }

  if (v168 >= 1)
  {
    getRealTime();
    v16 = malloc(4 * a2 + 1028);
    v17 = malloc(8 * a2);
    v18 = v17;
    if (!v16 || !v17)
    {
      v85 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "qsufsort32", 377, 92, *v85, "malloc");
      free(v16);
      free(v18);
      *(v13 + 56) = 0;
      v84 = 1021;
      v82 = 0;
      v83 = "qsufsort32";
      goto LABEL_108;
    }

    v19 = v16 + 257;
    v16[257] = a2;
    *v17 = 0;
    if (a2)
    {
      v160 = v16;
      v162 = v7;
      v164 = v13;
      v20 = 0;
      v166 = a2 ^ 0x80000000;
      v21 = v17 + 1;
      do
      {
        if (*v18 == v166)
        {
          break;
        }

        v22 = 0;
        v23 = -1;
        do
        {
          v24 = &v18[2 * v22];
          v25 = *v24;
          if ((v25 & 0x80000000) != 0)
          {
            LODWORD(v26) = v25 & 0x7FFFFFFF;
          }

          else
          {
            v26 = v19[v25];
            if (v20)
            {
              if (v26 > v22)
              {
                v27 = v26 - v22;
                v28 = &v21[2 * v22];
                do
                {
                  *v28 = v19[*(v28 - 1) + v20];
                  v28 += 2;
                  --v27;
                }

                while (v27);
              }
            }

            else if (v26 > v22)
            {
              v29 = 0;
              v30 = (v26 - 1);
              v31 = &v21[2 * v30];
              v32 = (a1 + v30);
              v33 = 1;
              v34 = v26;
              do
              {
                v35 = *v32--;
                v36 = __PAIR64__(v35, v29) >> 8;
                v37 = v34 + 2;
                v38 = v34 - 1;
                v39 = v36 | 0xFF;
                v29 = v33 + (v36 & 0xFFFFFF00);
                if (v37 < v26)
                {
                  v29 = v39;
                }

                *(v31 - 1) = v38;
                *v31 = v29;
                v31 -= 2;
                ++v33;
                v34 = v38;
              }

              while (v22 < v38);
            }

            quicksort64(v26 - v22, &v18[2 * v22], 24);
            v40 = v22 + 1;
            if (v22 + 1 <= v26)
            {
              v41 = v24[1];
              do
              {
                v42 = v41;
                if (v40 >= v26)
                {
                  v41 = 0;
                }

                else
                {
                  v41 = v21[2 * v40];
                }

                if (v42 != v41)
                {
                  if (v40 - v22 < 2)
                  {
                    if (v23 >= a2)
                    {
                      v23 = v22;
                    }
                  }

                  else if (v23 < a2)
                  {
                    v18[2 * v23] = v22 ^ 0x80000000;
                    v23 = -1;
                  }

                  if (v40 > v22)
                  {
                    v43 = v40 - v22;
                    v44 = &v18[2 * v22];
                    do
                    {
                      v45 = *v44;
                      v44 += 2;
                      v19[v45] = v40;
                      --v43;
                    }

                    while (v43);
                    v22 = v40;
                  }
                }

                ++v40;
              }

              while (v40 <= v26);
            }
          }

          v22 = v26;
        }

        while (v26 < a2);
        if (v23 < a2)
        {
          v18[2 * v23] = v166;
        }

        if (v20 >= 3)
        {
          v20 *= 2;
        }

        else
        {
          v20 = 3;
        }
      }

      while (v20 < a2);
      v46 = 0;
      do
      {
        *&v18[2 * (v19[v46] - 1)] = v46;
        ++v46;
      }

      while (a2 != v46);
      v47 = v18;
      v48 = v19;
      v49 = a2;
      v7 = v162;
      v13 = v164;
      v16 = v160;
      do
      {
        v50 = *v47++;
        *v48++ = v50;
        --v49;
      }

      while (v49);
    }

    v51 = 0;
    *v16 = 0;
    v16[256] = a2;
    for (i = 1; i != 256; ++i)
    {
      v53 = a2;
      if (v51 != a2)
      {
        if (v51 + 1 >= a2)
        {
          v53 = a2;
        }

        else
        {
          v53 = a2;
          do
          {
            if (i <= *(a1 + v19[v51 + ((v53 - v51) >> 1)]))
            {
              v53 = v51 + ((v53 - v51) >> 1);
            }

            else
            {
              v51 += (v53 - v51) >> 1;
            }
          }

          while (v53 > v51 + 1);
        }

        v54 = v19[v51];
        if (v54 != a2 && i == *(a1 + v54))
        {
          v53 = v51;
        }
      }

      v16[i] = v53;
      v51 = v53;
    }

    free(v18);
    *(v13 + 56) = v16;
    getRealTime();
  }

  if (SHIDWORD(v168) >= 1)
  {
    v55 = malloc(8 * v7);
    *(v13 + 48) = v55;
    if (!v55)
    {
      v82 = *__error();
      v83 = "malloc";
      v84 = 1033;
      goto LABEL_108;
    }

    if (*(v13 + 36))
    {
      v56 = 0;
      v57 = 0;
      do
      {
        *(*(v13 + 48) + v56) = 0xFFFFFFFFLL;
        ++v57;
        v56 += 8;
      }

      while (v57 < *(v13 + 36));
    }
  }

  v58 = *(v13 + 48);
  if (*(v13 + 56))
  {
    if (!v58)
    {
      goto LABEL_185;
    }

    v59 = HIDWORD(v169);
    v60 = v170;
    getRealTime();
    v61 = *(v13 + 36);
    if (v61)
    {
      v62 = 0;
      v63 = 1;
      do
      {
        v64 = v62;
        v65 = (*(v13 + 48) + 8 * v62);
        if (v65[1] < v60)
        {
          v66 = *(v13 + 56);
          v67 = (v66 + 4 * *(*(v13 + 24) + v62));
          v68 = *v67;
          LODWORD(v67) = v67[1];
          LODWORD(v171) = -1;
          v69 = bestMatchInRange(v13, v66 + 1028, v62, v68, v67 + 1, &v171);
          v70 = v171;
          *v65 = v171;
          *(*(v13 + 48) + 8 * v62 + 4) = v69;
          if (v69 >= v60)
          {
            v71 = v70 + 1;
            if ((v70 + 1) < *(v13 + 32))
            {
              v72 = 8 * v63;
              v73 = v69 - 1;
              v74 = v63;
              do
              {
                v75 = v74 < *(v13 + 36) && v73 >= v60;
                if (!v75)
                {
                  break;
                }

                *(*(v13 + 48) + v72) = v71;
                *(*(v13 + 48) + v72 + 4) = v73;
                ++v71;
                v72 += 8;
                ++v74;
                --v73;
              }

              while (v71 < *(v13 + 32));
            }

            if (v62 && v70)
            {
              v76 = 0;
              v77 = v62 - 1;
              v78 = 8 * v62;
              v79 = v69 + 1;
              do
              {
                v80 = *(v13 + 48) + v78;
                if (*(v80 - 8) != -1)
                {
                  break;
                }

                if (*(*(v13 + 16) + (v70 + v76 - 1)) != *(*(v13 + 24) + v77 + v76))
                {
                  break;
                }

                *(v80 - 8) = v70 - 1 + v76;
                *(*(v13 + 48) + v78 - 4) = v79;
                if (!(v77 + v76))
                {
                  break;
                }

                v81 = v70 + v76--;
                v78 -= 8;
                ++v79;
              }

              while (v81 != 1);
            }
          }

          v61 = *(v13 + 36);
        }

        v62 += v59;
        v63 += v59;
      }

      while (v64 + v59 < v61);
    }

    goto LABEL_184;
  }

  if (!v58)
  {
    goto LABEL_185;
  }

  v87 = -13;
  do
  {
    v88 = v87 + 33;
    v89 = 1 << (v87++ + 33 + v169);
  }

  while (v88 < SHIDWORD(v170) && v89 < *(v13 + 32));
  *(v13 + 40) = v87 + 32;
  *(v13 + 44) = -v87;
  v90 = v170;
  getRealTime();
  v91 = *(v13 + 8);
  v171 = 0;
  v172[0] = 0;
  v92 = 1;
  v94 = *(v13 + 32);
  v93 = *(v13 + 36);
  if (v94 >= v93)
  {
    v94 = *(v13 + 36);
  }

  if (v94 < 2 * v90)
  {
    v95 = 0;
    v96 = 0;
    goto LABEL_183;
  }

  v97 = 6 * (1 << *(v13 + 40));
  v167 = ((v91 + v93 - 1) / v91 + 0xFFFF) & 0xFFFF0000;
  v98 = &v171;
  v99 = 1;
  do
  {
    v100 = calloc(1uLL, v97);
    *v98 = v100;
    if (!v100)
    {
      v114 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 852, 92, *v114, "malloc");
      v95 = 0;
      v96 = 0;
      goto LABEL_182;
    }

    v101 = (v91 != 1) & v99;
    v98 = v172;
    v99 = 0;
  }

  while ((v101 & 1) != 0);
  v95 = calloc(v91, 0x28uLL);
  v102 = malloc(8 * v91);
  v96 = v102;
  if (v95 && v102)
  {
    v109 = 0;
    if (v91 <= 1)
    {
      v110 = 1;
    }

    else
    {
      v110 = v91;
    }

    v163 = v110;
    v111 = 8 * v110;
    v112 = v95;
    do
    {
      v102[v109 / 8] = v112;
      v112[5] = v90;
      *v112 = v13;
      v112 += 10;
      v109 += 8;
    }

    while (v111 != v109);
    if (v91 == 1)
    {
      v113 = 0;
    }

    else
    {
      v113 = ThreadPoolCreate(v91, v102, initBestMatchThreadProc);
      if (!v113)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 874, 92, 0, "ThreadPoolCreate");
        goto LABEL_182;
      }
    }

    v116 = *(v13 + 32);
    if (v116)
    {
      v159 = v95;
      v117 = 0;
      v118 = 0;
      while (2)
      {
        v161 = v117;
        v119 = v172[v117 - 1];
        v75 = v116 >= v90;
        v120 = v116 - v90;
        if (!v75)
        {
          v120 = 0;
        }

        v165 = v118 + v89;
        if (v118 + v89 < v120)
        {
          v120 = v118 + v89;
        }

        v121 = v118 + 4;
        if (v118 + 4 < v120)
        {
          v122 = *(v13 + 16);
          v123 = v118;
          do
          {
            v124 = v121;
            if (v90)
            {
              v125 = 0;
              v126 = (v122 + v123);
              v127 = v126;
              v128 = v90;
              do
              {
                v129 = *v127++;
                v125 = -1640531535 * (v129 + v125) - 1640531535;
                v128 -= 4;
              }

              while (v128);
              v130 = 0;
              v131 = *(v13 + 44);
              v132 = v125 >> v131;
              v133 = (v126 + 1);
              v134 = v90;
              do
              {
                v135 = *v133++;
                v130 = -1640531535 * (v135 + v130) - 1640531535;
                v134 -= 4;
              }

              while (v134);
              v136 = 0;
              v104 = HIWORD(v130);
              v137 = v130 >> v131;
              v138 = (v126 + 2);
              v139 = v90;
              do
              {
                v140 = *v138++;
                v136 = -1640531535 * (v140 + v136) - 1640531535;
                v139 -= 4;
              }

              while (v139);
              v141 = 0;
              v142 = HIWORD(v125) ^ v125;
              v105 = HIWORD(v136);
              v143 = v136 >> v131;
              v144 = (v126 + 3);
              LODWORD(v106) = v90;
              do
              {
                v145 = *v144++;
                v107 = v145;
                v141 = -1640531535 * (v145 + v141) - 1640531535;
                v106 = (v106 - 4);
              }

              while (v106);
              v146 = HIWORD(v130) ^ v130;
              v147 = HIWORD(v136) ^ v136;
              v148 = &v119[6 * v132];
              v149 = &v119[6 * v137];
              v150 = &v119[6 * v143];
            }

            else
            {
              v147 = 0;
              v142 = 0;
              v146 = 0;
              v141 = 0;
              v131 = *(v13 + 44);
              v150 = v119;
              v148 = v119;
              v149 = v119;
            }

            v103 = v141 ^ HIWORD(v141);
            *v148 = v123;
            *(v148 + 2) = v142;
            *v149 = v123 + 1;
            v151 = &v119[6 * (v141 >> v131)];
            *(v149 + 2) = v146;
            *v150 = v123 + 2;
            *(v150 + 2) = v147;
            *v151 = v123 + 3;
            *(v151 + 2) = v141 ^ HIWORD(v141);
            v121 = v124 + 4;
            v123 = v124;
          }

          while (v124 + 4 < v120);
        }

        v152 = v13;
        if (v113 && (ThreadPoolSync(v113) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 906, 92, 0, "ThreadPoolSync");
LABEL_179:
          v92 = 0;
          v13 = v152;
          v95 = v159;
LABEL_180:
          if ((ThreadPoolDestroy(v113) & 0x80000000) == 0)
          {
            goto LABEL_183;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 930, 92, 0, "ThreadPoolDestroy");
          goto LABEL_182;
        }

        v153 = 0;
        v154 = v163;
        do
        {
          if (v113)
          {
            Worker = ThreadPoolGetWorker(v113);
          }

          else
          {
            Worker = *v96;
          }

          if (!Worker)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 910, 92, 0, "ThreadPoolGetWorker");
            v92 = 0;
            v13 = v152;
            goto LABEL_176;
          }

          *(Worker + 32) = v119;
          *(Worker + 24) = v165 >= *(v152 + 32);
          *(Worker + 8) = v118;
          *(Worker + 12) = v153 * v167;
          v156 = v153 * v167 + v167;
          *(Worker + 16) = v156;
          v157 = *(v152 + 36);
          if (v153 * v167 > v157)
          {
            *(Worker + 12) = v157;
          }

          if (v156 > v157)
          {
            *(Worker + 16) = v157;
          }

          if (v113)
          {
            if ((ThreadPoolRunWorker(v113) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 920, 92, 0, "ThreadPoolRunWorker");
              goto LABEL_179;
            }
          }

          else
          {
            initBestMatchThreadProc(Worker, Worker, v103, v104, v105, v106, v107, v108);
          }

          ++v153;
          --v154;
        }

        while (v154);
        v117 = v161 ^ (v113 != 0);
        v13 = v152;
        v116 = *(v152 + 32);
        v118 += v89;
        if (v165 < v116)
        {
          continue;
        }

        break;
      }

      v92 = 1;
LABEL_176:
      v95 = v159;
    }

    else
    {
      v92 = 1;
    }

    if (!v113)
    {
      goto LABEL_183;
    }

    goto LABEL_180;
  }

  v115 = *__error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "initBestMatchFromHashes", 862, 92, v115, "malloc");
LABEL_182:
  v92 = 0;
LABEL_183:
  free(v95);
  free(v96);
  free(v171);
  free(v172[0]);
  if (!v92)
  {
    v83 = "initBestMatchFromHashes";
    v84 = 1069;
    goto LABEL_106;
  }

LABEL_184:
  getRealTime();
LABEL_185:
  if (v168 >= 2)
  {
    free(*(v13 + 56));
    *(v13 + 56) = 0;
  }

  return v13;
}

size_t getProfile(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 6;
  }

  v19 = (a1 + 4);
  switch(v3)
  {
    case 2:
      v4 = xmmword_296AD19B0;
      goto LABEL_20;
    case 3:
      v4 = xmmword_296AD19A0;
      goto LABEL_20;
    case 4:
      v4 = xmmword_296AD1990;
      goto LABEL_20;
    case 5:
      v4 = xmmword_296AD1980;
      goto LABEL_20;
    case 6:
      *a1 = xmmword_296AD1980;
      v7 = 0x1A00000010;
      goto LABEL_29;
    case 7:
      v8 = xmmword_296AD1980;
      goto LABEL_22;
    case 8:
      *a1 = xmmword_296AD1970;
      v7 = 0x1A0000000CLL;
      goto LABEL_29;
    case 9:
      v8 = xmmword_296AD1970;
LABEL_22:
      *a1 = v8;
      v7 = 0x1A00000008;
      goto LABEL_29;
    case 10:
      v6 = xmmword_296AD1960;
      goto LABEL_28;
    case 11:
      v6 = xmmword_296AD1950;
      goto LABEL_28;
    case 12:
      v6 = xmmword_296AD1940;
      goto LABEL_28;
    case 13:
      v5 = xmmword_296AD1930;
      goto LABEL_11;
    case 14:
      v5 = xmmword_296AD1920;
      goto LABEL_11;
    case 15:
      v6 = xmmword_296AD1910;
      goto LABEL_28;
    case 16:
      v6 = xmmword_296AD1900;
      goto LABEL_28;
    case 17:
      v6 = xmmword_296AD18F0;
LABEL_28:
      *a1 = v6;
      v7 = 24;
      goto LABEL_29;
    case 18:
      v5 = xmmword_296AD18F0;
LABEL_11:
      *a1 = v5;
      v7 = 16;
      goto LABEL_29;
    case 19:
      *a1 = xmmword_296AD18F0;
      v7 = 8;
      goto LABEL_29;
    case 20:
      *a1 = 1;
      *v19 = 0;
      *(a1 + 12) = 0;
      *(a1 + 20) = 0;
      goto LABEL_30;
    case 21:
      *a1 = xmmword_296AD1980;
      v7 = 0x1800000010;
      goto LABEL_29;
    default:
      v4 = xmmword_296AD19C0;
LABEL_20:
      *a1 = v4;
      v7 = 0x1A00000018;
LABEL_29:
      *(a1 + 16) = v7;
LABEL_30:
      result = getenv("BXDIFF_MATCHES_PROFILE");
      if (!result)
      {
        return result;
      }

      v10 = result;
      result = strlen(result);
      if (!result)
      {
        return result;
      }

      v11 = result;
      v12 = v10 + 1;
      v13 = MEMORY[0x29EDCA600];
      break;
  }

  while (1)
  {
    v14 = __tolower(*(v12 - 1));
    v15 = v14;
    if (v14 > 0x7F)
    {
      if (__maskrune(v14, 0x4000uLL))
      {
        goto LABEL_51;
      }
    }

    else if ((*(v13 + 4 * v14 + 60) & 0x4000) != 0)
    {
      goto LABEL_51;
    }

    v16 = v15 - 58;
    if ((v15 - 58) <= 0x39)
    {
      break;
    }

LABEL_46:
    if (v15 != 44)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "parseProfile", 505, 92, 0, "Invalid profile code: %c");
      goto LABEL_54;
    }

LABEL_51:
    ++v12;
    if (!--v11)
    {
      return 0;
    }
  }

  if (((1 << v16) & 0x224820000000000) == 0)
  {
    if (((1 << v16) & 3) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_46;
  }

  __endptr = 0;
  v17 = strtol(v12, &__endptr, 10);
  if (*__error())
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "parseProfile", 508, 92, 0, "Invalid profile value: %s");
    goto LABEL_54;
  }

  if (v15 > 104)
  {
    v18 = (a1 + 8);
    if (v15 != 105)
    {
      v18 = (a1 + 16);
      if (v15 != 108)
      {
        v18 = a1;
        if (v15 != 115)
        {
          goto LABEL_57;
        }
      }
    }

    goto LABEL_50;
  }

  v18 = v19;
  if (v15 == 99 || (v18 = (a1 + 12), v15 == 100))
  {
LABEL_50:
    *v18 = v17;
    goto LABEL_51;
  }

LABEL_57:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "parseProfile", 515, 92, 0, "Invalid profile code: %c");
LABEL_54:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffMatches.c", "getProfile", 560, 92, 0, "parsing profile: %s", v10);
  return 0xFFFFFFFFLL;
}

void BXDiffMatchesDestroy(void **a1)
{
  if (a1)
  {
    free(a1[7]);
    free(a1[6]);

    free(a1);
  }
}

uint64_t BXDiffMatchesGetBestMatch(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v5 = a2;
  v11 = 0;
  if (*(a1 + 36) <= a2)
  {
    v8 = 0;
    goto LABEL_6;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = (v6 + 8 * a2);
    v8 = *v7;
    v11 = v8;
    if (v8 != -1)
    {
      LODWORD(result) = v7[1];
      goto LABEL_7;
    }
  }

  v8 = *(a1 + 56);
  if (!v8)
  {
LABEL_6:
    LODWORD(result) = 0;
    goto LABEL_7;
  }

  v10 = (v8 + 4 * *(*(a1 + 24) + a2));
  result = bestMatchInRange(a1, v8 + 1028, a2, *v10, v10[1], &v11);
  v8 = v11;
  if (v6)
  {
    *(v6 + 8 * v5) = v11 | (result << 32);
  }

LABEL_7:
  *a3 = v8;
  return result;
}

uint64_t bestMatchInRange(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, _DWORD *a6)
{
  if (a5 <= a4)
  {
    v18 = 0;
    result = 0;
  }

  else
  {
    v6 = 0;
    v7 = *(a2 + 4 * a4);
    v8 = a4;
    v9 = *(a1 + 32);
    v10 = *(a1 + 36) - a3;
    if (v10 >= v9 - v7)
    {
      v11 = (v9 - v7);
    }

    else
    {
      v11 = v10;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    v14 = v13 + a3;
    while (1)
    {
      v15 = v6 + 8;
      if (v6 + 8 > v11)
      {
        break;
      }

      v16 = *(v12 + v7 + v6);
      v17 = *(v14 + v6);
      v6 += 8;
      if (v16 != v17)
      {
        LODWORD(v11) = v15 + (__clz(__rbit64(v17 ^ v16)) >> 3) - 8;
        goto LABEL_16;
      }
    }

    if (v6 < v11)
    {
      v20 = v11 - v6;
      v21 = (v13 + a3 + v6);
      v22 = (v12 + v7 + v6);
      while (1)
      {
        v24 = *v22++;
        v23 = v24;
        v25 = *v21++;
        if (v23 != v25)
        {
          break;
        }

        ++v6;
        if (!--v20)
        {
          goto LABEL_16;
        }
      }

      LODWORD(v11) = v6;
    }

LABEL_16:
    v26 = 0;
    v27 = a5 - 1;
    v28 = *(a2 + 4 * v27);
    LODWORD(v29) = v9 - v28;
    if (v10 >= v9 - v28)
    {
      v29 = v29;
    }

    else
    {
      v29 = v10;
    }

    while (1)
    {
      v30 = v26 + 8;
      if (v26 + 8 > v29)
      {
        break;
      }

      v31 = *(v12 + v28 + v26);
      v32 = *(v14 + v26);
      v26 += 8;
      if (v31 != v32)
      {
        LODWORD(v29) = v30 + (__clz(__rbit64(v32 ^ v31)) >> 3) - 8;
        goto LABEL_28;
      }
    }

    if (v26 < v29)
    {
      v33 = v29 - v26;
      v34 = (v13 + a3 + v26);
      v35 = (v12 + v28 + v26);
      while (1)
      {
        v37 = *v35++;
        v36 = v37;
        v38 = *v34++;
        if (v36 != v38)
        {
          break;
        }

        ++v26;
        if (!--v33)
        {
          goto LABEL_28;
        }
      }

      LODWORD(v29) = v26;
    }

LABEL_28:
    v39 = v27 - v8;
    if ((v27 - v8) < 2)
    {
      v40 = v8;
    }

    else
    {
      do
      {
        v40 = v8 + (v39 >> 1);
        v41 = *(a2 + 4 * v40);
        LODWORD(v42) = v9 - v41;
        if (v10 >= v9 - v41)
        {
          v42 = v42;
        }

        else
        {
          v42 = v10;
        }

        if (v11 >= v29)
        {
          LODWORD(v43) = v29;
        }

        else
        {
          LODWORD(v43) = v11;
        }

        v44 = v12 + v41;
        while (1)
        {
          v45 = v43 + 8;
          if (v43 + 8 > v42)
          {
            break;
          }

          v46 = *(v44 + v43);
          v47 = *(v14 + v43);
          LODWORD(v43) = v43 + 8;
          if (v46 != v47)
          {
            LODWORD(v43) = v45 + (__clz(__rbit64(v47 ^ v46)) >> 3) - 8;
            goto LABEL_39;
          }
        }

        if (v43 >= v42)
        {
LABEL_46:
          LODWORD(v43) = v42;
          goto LABEL_47;
        }

        v43 = v43;
        while (*(v44 + v43) == *(v14 + v43))
        {
          if (++v43 >= v42)
          {
            goto LABEL_46;
          }
        }

LABEL_39:
        if (v43 < v42 && *(v13 + v43 + a3) < *(v12 + (v43 + v41)))
        {
          LODWORD(v29) = v43;
          v27 = v40;
          v40 = v8;
          goto LABEL_48;
        }

LABEL_47:
        LODWORD(v11) = v43;
        v8 = v40;
LABEL_48:
        v39 = v27 - v40;
      }

      while ((v27 - v40) > 1);
    }

    if (v11 <= v29)
    {
      v48 = v27;
    }

    else
    {
      v48 = v40;
    }

    if (v11 <= v29)
    {
      result = v29;
    }

    else
    {
      result = v11;
    }

    v18 = *(a2 + 4 * v48);
  }

  *a6 = v18;
  return result;
}

unint64_t quicksort64(unint64_t result, unint64_t *a2, int a3)
{
  if (result >= 2)
  {
    v5 = result;
    while (1)
    {
      if (v5 > 3)
      {
        if (v5 == 4)
        {
          v37 = *a2;
          v36 = a2[1];
          if (HIDWORD(*a2) <= HIDWORD(v36))
          {
            v38 = a2[1];
            v36 = *a2;
          }

          else
          {
            *a2 = v36;
            a2[1] = v37;
            v38 = v37;
          }

          v58 = a2[2];
          v57 = a2[3];
          v59 = HIDWORD(v58);
          if (HIDWORD(v58) <= HIDWORD(v57))
          {
            v60 = a2[3];
            v57 = a2[2];
          }

          else
          {
            v59 = HIDWORD(v57);
            a2[2] = v57;
            a2[3] = v58;
            v60 = v58;
          }

          if (v59 >= HIDWORD(v36))
          {
            v36 = v57;
          }

          else
          {
            *a2 = v57;
            a2[2] = v36;
          }

          v61 = HIDWORD(v38);
          if (HIDWORD(v38) <= HIDWORD(v60))
          {
            v60 = v38;
          }

          else
          {
            v61 = HIDWORD(v60);
            a2[1] = v60;
            a2[3] = v38;
          }

          if (v61 > HIDWORD(v36))
          {
            a2[1] = v36;
            a2[2] = v60;
          }

          return result;
        }

        if (v5 == 5)
        {
          v39 = *a2;
          v40 = a2[1];
          if (HIDWORD(*a2) <= HIDWORD(v40))
          {
            v41 = a2[1];
            v40 = *a2;
          }

          else
          {
            *a2 = v40;
            a2[1] = v39;
            v41 = v39;
          }

          v63 = a2[2];
          v62 = a2[3];
          v64 = HIDWORD(v63);
          if (HIDWORD(v63) <= HIDWORD(v62))
          {
            v65 = a2[3];
            v62 = a2[2];
          }

          else
          {
            v64 = HIDWORD(v62);
            a2[2] = v62;
            a2[3] = v63;
            v65 = v63;
          }

          if (v64 >= HIDWORD(v40))
          {
            v66 = v62;
            v62 = v40;
          }

          else
          {
            *a2 = v62;
            a2[2] = v40;
            v66 = v40;
          }

          v67 = a2[4];
          v68 = HIDWORD(v41);
          if (HIDWORD(v41) <= HIDWORD(v67))
          {
            v69 = a2[4];
            v67 = v41;
          }

          else
          {
            v68 = HIDWORD(v67);
            a2[1] = v67;
            a2[4] = v41;
            v69 = v41;
          }

          if (v68 >= HIDWORD(v62))
          {
            v62 = v67;
          }

          else
          {
            *a2 = v67;
            a2[1] = v62;
          }

          v70 = HIDWORD(v66);
          if (HIDWORD(v66) <= HIDWORD(v65))
          {
            v71 = v65;
            v65 = v66;
          }

          else
          {
            v70 = HIDWORD(v65);
            a2[2] = v65;
            a2[3] = v66;
            v71 = v66;
          }

          if (v70 >= HIDWORD(v62))
          {
            v62 = v65;
          }

          else
          {
            a2[1] = v65;
            a2[2] = v62;
          }

          v72 = HIDWORD(v71);
          if (HIDWORD(v71) <= HIDWORD(v69))
          {
            v69 = v71;
          }

          else
          {
            v72 = HIDWORD(v69);
            a2[3] = v69;
            a2[4] = v71;
          }

          if (v72 < HIDWORD(v62))
          {
            a2[2] = v69;
            a2[3] = v62;
          }

          return result;
        }
      }

      else
      {
        if (v5 == 2)
        {
          v30 = *a2;
          v31 = a2[1];
          if (HIDWORD(*a2) > HIDWORD(v31))
          {
            *a2 = v31;
            a2[1] = v30;
          }

          return result;
        }

        if (v5 == 3)
        {
          v32 = *a2;
          v33 = a2[2];
          v34 = HIDWORD(*a2);
          if (v34 <= HIDWORD(v33))
          {
            v35 = a2[2];
            v33 = *a2;
          }

          else
          {
            v34 = HIDWORD(v33);
            *a2 = v33;
            a2[2] = v32;
            v35 = v32;
          }

          v56 = a2[1];
          if (v34 <= HIDWORD(v56))
          {
            v34 = HIDWORD(v56);
          }

          else
          {
            *a2 = v56;
            a2[1] = v33;
            v56 = v33;
          }

          if (v34 > HIDWORD(v35))
          {
            a2[1] = v35;
            a2[2] = v56;
          }

          return result;
        }
      }

      if (a3 <= 0)
      {
        break;
      }

      v6 = v5 >> 2;
      v7 = &a2[v5 >> 1];
      v8 = *a2;
      v9 = v7[-(v5 >> 2)];
      if (HIDWORD(*a2) <= HIDWORD(v9))
      {
        v10 = v7[-(v5 >> 2)];
        v9 = *a2;
      }

      else
      {
        *a2 = v9;
        v7[-(v5 >> 2)] = v8;
        v10 = v8;
      }

      v11 = *v7;
      v12 = v7[v6];
      v13 = HIDWORD(*v7);
      if (v13 <= HIDWORD(v12))
      {
        v14 = v7[v6];
        v12 = *v7;
      }

      else
      {
        v13 = HIDWORD(v12);
        *v7 = v12;
        v7[v6] = v11;
        v14 = v11;
      }

      if (v13 >= HIDWORD(v9))
      {
        v15 = v12;
        v12 = v9;
      }

      else
      {
        *a2 = v12;
        *v7 = v9;
        v15 = v9;
      }

      v16 = &a2[v5];
      v17 = *(v16 - 1);
      v18 = HIDWORD(v10);
      if (HIDWORD(v10) <= HIDWORD(v17))
      {
        v19 = *(v16 - 1);
        v17 = v10;
      }

      else
      {
        v18 = HIDWORD(v17);
        v7[-(v5 >> 2)] = v17;
        *(v16 - 1) = v10;
        v19 = v10;
      }

      if (v18 >= HIDWORD(v12))
      {
        v12 = v17;
      }

      else
      {
        *a2 = v17;
        v7[-(v5 >> 2)] = v12;
      }

      v20 = HIDWORD(v15);
      if (HIDWORD(v15) <= HIDWORD(v14))
      {
        v21 = v14;
        v14 = v15;
      }

      else
      {
        v20 = HIDWORD(v14);
        *v7 = v14;
        v7[v6] = v15;
        v21 = v15;
      }

      if (v20 >= HIDWORD(v12))
      {
        v12 = v14;
      }

      else
      {
        v7[-(v5 >> 2)] = v14;
        *v7 = v12;
      }

      v22 = HIDWORD(v21);
      if (HIDWORD(v21) <= HIDWORD(v19))
      {
        v19 = v21;
      }

      else
      {
        v22 = HIDWORD(v19);
        v7[v6] = v19;
        *(v16 - 1) = v21;
      }

      if (v22 < HIDWORD(v12))
      {
        *v7 = v19;
        v7[v6] = v12;
      }

      v23 = 0;
      v24 = *(v7 + 1);
      v25 = v5;
      while (1)
      {
        if (v23 < v5)
        {
          while (HIDWORD(a2[v23]) < v24)
          {
            if (v5 == ++v23)
            {
              v23 = v5;
              break;
            }
          }
        }

        while (v25)
        {
          if (HIDWORD(a2[v25 - 1]) < v24)
          {
            break;
          }

          --v25;
        }

        if (v23 >= v25)
        {
          break;
        }

        if (v23 != --v25)
        {
          v26 = a2[v23];
          a2[v23] = a2[v25];
          a2[v25] = v26;
        }

        ++v23;
      }

      v27 = v25;
      if (v25 < v5)
      {
        do
        {
          v28 = a2[v27];
          if (v24 == HIDWORD(v28))
          {
            if (v27 != v25)
            {
              v29 = a2[v25];
              a2[v25] = v28;
              a2[v27] = v29;
            }

            ++v25;
          }

          ++v27;
        }

        while (v5 != v27);
      }

      result = quicksort64(v23, a2, --a3);
      v5 -= v25;
      a2 += v25;
      if (v5 < 2)
      {
        return result;
      }
    }

    for (i = 1; i != v5; ++i)
    {
      v43 = a2[i];
      v44 = i;
      while (1)
      {
        v45 = v44 - 1;
        v46 = (v44 - 1) >> 1;
        v47 = a2[v46];
        if (v47 >= v43)
        {
          break;
        }

        a2[v44] = v47;
        v44 = (v44 - 1) >> 1;
        if (v45 <= 1)
        {
          goto LABEL_70;
        }
      }

      v46 = v44;
LABEL_70:
      a2[v46] = v43;
    }

    v48 = v5 - 1;
    v49 = a2[v5 - 1];
    a2[v5 - 1] = *a2;
    if (v5 - 1 >= 2)
    {
      do
      {
        v50 = 0;
        v51 = 0;
        v52 = 1;
        while (1)
        {
          v53 = a2[v52];
          v54 = v50 + 2;
          if (v50 + 2 >= v48)
          {
            v54 = v52;
          }

          else
          {
            v55 = a2[v54];
            if (v53 >= v55)
            {
              v54 = v52;
            }

            if (v53 <= v55)
            {
              v53 = v55;
            }
          }

          if (v49 >= v53)
          {
            break;
          }

          a2[v51] = v53;
          v50 = 2 * v54;
          v52 = (2 * v54) | 1;
          v51 = v54;
          if (v52 >= v48)
          {
            goto LABEL_84;
          }
        }

        v54 = v51;
LABEL_84:
        a2[v54] = v49;
        v49 = a2[--v48];
        a2[v48] = *a2;
      }

      while (v48 > 1);
    }

    *a2 = v49;
  }

  return result;
}

void **MemBufferCreate(size_t a1)
{
  v2 = malloc(0x28uLL);
  v3 = v2;
  if (v2)
  {
    v2[4] = 0;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    if ((MemBufferIncreaseCapacity(v2, a1) & 0x8000000000000000) != 0)
    {
      free(v3[4]);
      free(v3);
      return 0;
    }
  }

  else
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferCreate", 41, 36, *v4, "malloc");
  }

  return v3;
}

unint64_t MemBufferIncreaseCapacity(uint64_t a1, size_t a2)
{
  result = *a1;
  if (result < a2)
  {
    v5 = reallocf(*(a1 + 32), a2);
    *(a1 + 32) = v5;
    if (v5)
    {
      *a1 = a2;
      return a2;
    }

    else
    {
      v6 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferIncreaseCapacity", 91, 36, *v6, "malloc");
      return -1;
    }
  }

  return result;
}

void MemBufferDestroy(void **a1)
{
  if (a1)
  {
    free(a1[4]);

    free(a1);
  }
}

uint64_t MemBufferGetFreePtr(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      memmove(*(a1 + 32), (*(a1 + 32) + v3), v2);
      v4 = *(a1 + 8);
      *(a1 + 16) = 0;
      *(a1 + 24) = v4;
    }
  }

  return *(a1 + 32) + *(a1 + 24);
}

uint64_t MemBufferDecreaseSize(uint64_t a1, unint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  result = v4 - a2;
  if (v4 >= a2)
  {
    if (v4 == a2)
    {
      result = 0;
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
    }

    else
    {
      v6 = *(a1 + 16) + a2;
      *(a1 + 8) = result;
      *(a1 + 16) = v6;
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferDecreaseSize", 117, 36, 0, "MemBufferDecreaseSize n is too large: %zu", a2);
    return -1;
  }

  return result;
}

unint64_t MemBufferIncreaseSize(unint64_t *a1, uint64_t a2)
{
  v2 = a1[3] + a2;
  if (v2 <= *a1)
  {
    a1[3] = v2;
    v3 = a1[1] + a2;
    a1[1] = v3;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferIncreaseSize", 137, 36, 0, "MemBufferIncreaseSize n is too large: %zu", a2);
    return -1;
  }

  return v3;
}

unint64_t MemBufferFillFromBuffer(unint64_t *a1, size_t a2, const void *a3)
{
  v6 = *a1 - a1[1];
  FreePtr = MemBufferGetFreePtr(a1);
  if (v6 >= a2)
  {
    memcpy(FreePtr, a3, a2);

    return MemBufferIncreaseSize(a1, a2);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferFillFromBuffer", 162, 36, 0, "MemBufferFillFromBuffer n is too large: %zu", a2);
    return -1;
  }
}

unint64_t MemBufferFillFromIStream(unint64_t *a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v8 = *a1 - a1[1];
  FreePtr = MemBufferGetFreePtr(a1);
  if (v8 >= a2)
  {
    v8 = a2;
  }

  if (v8)
  {
    v10 = FreePtr;
    v11 = 0;
    while (1)
    {
      v12 = a3(a4, v10, v8);
      if (v12 < 0)
      {
        return -1;
      }

      if (v12)
      {
        v10 += v12;
        v11 += v12;
        v8 -= v12;
        if (v8)
        {
          continue;
        }
      }

      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
LABEL_10:

    return MemBufferIncreaseSize(a1, v11);
  }
}

uint64_t MemBufferFlushToOStream(void *a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  if (a1[1] >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1[1];
  }

  if (v5)
  {
    v8 = 0;
    v9 = a1[4] + a1[2];
    while (1)
    {
      v10 = a3(a4, v9, v5);
      if (v10 < 0)
      {
        return -1;
      }

      if (!v10)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferFlushToOStream", 265, 36, 0, "MemBuffer write proc returned 0");
        return -1;
      }

      v9 += v10;
      v8 += v10;
      v5 -= v10;
      if (!v5)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v8 = 0;
LABEL_11:

    return MemBufferDecreaseSize(a1, v8);
  }
}

unint64_t MemBufferTransmit(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (a3 | a5)
  {
    if (a3)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    if (a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = IZeroStreamRead;
    }

    if (a5)
    {
      v11 = a6;
    }

    else
    {
      v11 = 0;
    }

    if (a5)
    {
      v12 = a5;
    }

    else
    {
      v12 = ONullStreamWrite;
    }

    if (*a1)
    {
      a1[1] = 0;
      a1[2] = 0;
      a1[3] = 0;
      v7 = 0;
      if (!a2)
      {
        return v7;
      }

      while (1)
      {
        if (*a1 >= v6)
        {
          v13 = v6;
        }

        else
        {
          v13 = *a1;
        }

        v14 = (v10)(v9, a1[4], v13, a4);
        if (v14 < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferTransmit", 294, 36, 0, "read failed");
          return -1;
        }

        v15 = v14;
        v16 = v12(v11, a1[4], v14);
        if ((v16 & 0x8000000000000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferTransmit", 298, 36, 0, "write failed");
          return -1;
        }

        if (v16 < v15)
        {
          break;
        }

        if (v15)
        {
          v7 += v15;
          if (v6 == -1)
          {
            v6 = -1;
          }

          else
          {
            v6 -= v15;
          }

          if (v6)
          {
            continue;
          }
        }

        return v7;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferTransmit", 299, 36, 0, "truncated write");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferTransmit", 281, 36, 0, "MemBuffer is not allocated");
    }

    return -1;
  }

  return a2;
}

void MappedBufferDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2 != -1)
    {
      munmap(v2, a1[2]);
    }

    if (*(a1 + 1) && (*a1 & 0x80000000) == 0)
    {
      close(*a1);
    }

    free(a1);
  }
}

void *MappedBufferCreateWithFD(int a1, unint64_t a2, unint64_t a3)
{
  v6 = malloc(0x28uLL);
  v7 = v6;
  if (v6)
  {
    v6[3] = 0;
    v6[4] = 0;
    v6[1] = -1;
    v6[2] = 0;
    memset(&v20, 0, sizeof(v20));
    v8 = getpagesize();
    *v7 = a1;
    *(v7 + 1) = 0;
    if (a1 < 0)
    {
      v11 = "invalid file descriptor";
      v12 = 397;
LABEL_17:
      v10 = 0;
      goto LABEL_18;
    }

    v9 = v8;
    if (fstat(a1, &v20))
    {
      v10 = *__error();
      v11 = "MappedBuffer fstat";
      v12 = 400;
LABEL_18:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFD", v12, 36, v10, v11, v18, v19, *&v20.st_dev, v20.st_ino, *&v20.st_uid, *&v20.st_rdev, v20.st_atimespec.tv_sec, v20.st_atimespec.tv_nsec, v20.st_mtimespec.tv_sec, v20.st_mtimespec.tv_nsec, v20.st_ctimespec.tv_sec, v20.st_ctimespec.tv_nsec, v20.st_birthtimespec.tv_sec, v20.st_birthtimespec.tv_nsec);
      MappedBufferDestroy(v7);
      return 0;
    }

    if (v20.st_size <= a2)
    {
      v18 = a2;
      v11 = "invalid offset=%llu for fd";
      v12 = 401;
      goto LABEL_17;
    }

    if (a3 == -1)
    {
      a3 = v20.st_size - a2;
    }

    else if (a3 + a2 > v20.st_size)
    {
      v18 = a2;
      v19 = a3;
      v11 = "invalid offset=%llu, size=%llu for fd";
      v12 = 405;
      goto LABEL_17;
    }

    if (!a3)
    {
      v18 = 0;
      v11 = "invalid size=%llu for fd";
      v12 = 407;
      goto LABEL_17;
    }

    v7[4] = a3;
    v14 = a2 / v9 * v9;
    v15 = a2 % v9;
    v7[2] = v15 + a3;
    v16 = mmap(0, v15 + a3, 1, 1, a1, v14);
    v7[1] = v16;
    if (v16 == -1)
    {
      v10 = *__error();
      v11 = "mmap file segment";
      v12 = 417;
      goto LABEL_18;
    }

    v7[3] = &v16[v15];
  }

  else
  {
    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFD", 382, 36, *v13, "malloc");
  }

  return v7;
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