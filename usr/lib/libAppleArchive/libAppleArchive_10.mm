uint64_t aaDecompressionStreamAbort(uint64_t a1)
{
  *(a1 + 68) = 1;
  result = *(a1 + 72);
  if (result)
  {
    return IDecoderStreamAbort(result);
  }

  return result;
}

uint64_t jsonPushLabel(uint64_t a1, char a2)
{
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = (a1 + 72);
  if (v5 >= v4)
  {
    if (v4)
    {
      v8 = v4 + (v4 >> 1);
    }

    else
    {
      v8 = 256;
    }

    *(a1 + 72) = v8;
    v7 = reallocf(*(a1 + 88), v8);
    *(a1 + 88) = v7;
    if (!v7)
    {
      v11 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "jsonPushLabel", 358, 109, *v11, "malloc");
      *v6 = 0;
      v6[1] = 0;
      return 0xFFFFFFFFLL;
    }

    v5 = *(a1 + 80);
  }

  else
  {
    v7 = *(a1 + 88);
  }

  v9 = 0;
  *(a1 + 80) = v5 + 1;
  v7[v5] = a2;
  return v9;
}

uint64_t jsonPushValue(uint64_t a1, char a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = (a1 + 96);
  if (v5 >= v4)
  {
    if (v4)
    {
      v8 = v4 + (v4 >> 1);
    }

    else
    {
      v8 = 256;
    }

    *(a1 + 96) = v8;
    v7 = reallocf(*(a1 + 112), v8);
    *(a1 + 112) = v7;
    if (!v7)
    {
      v11 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "jsonPushValue", 372, 109, *v11, "malloc");
      *v6 = 0;
      v6[1] = 0;
      return 0xFFFFFFFFLL;
    }

    v5 = *(a1 + 104);
  }

  else
  {
    v7 = *(a1 + 112);
  }

  v9 = 0;
  *(a1 + 104) = v5 + 1;
  v7[v5] = a2;
  return v9;
}

void *AAJSONInputStreamOpen(uint64_t a1)
{
  v2 = malloc(0x78uLL);
  v3 = v2;
  if (v2)
  {
    memset_s(v2, 0x78uLL, 0, 0x78uLL);
    v3[1] = a1;
    v3[5] = 0x10000;
    v4 = malloc(0x10000uLL);
    v3[8] = v4;
    if (v4)
    {
      *(v3 + 20) = 32;
      v3[4] = calloc(0x20uLL, 4uLL);
    }

    else
    {
      v6 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamOpen", 387, 109, *v6, "malloc");
      AAJSONInputStreamClose(v3);
      return 0;
    }
  }

  else
  {
    v5 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamOpen", 382, 109, *v5, "malloc");
  }

  return v3;
}

void AAJSONInputStreamClose(void **a1)
{
  if (a1)
  {
    free(a1[4]);
    free(a1[11]);
    free(a1[14]);
    free(a1[8]);

    free(a1);
  }
}

uint64_t AAJSONInputStreamRead(uint64_t a1, int *a2)
{
  if (atomic_load(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 16);
  if (v4 == 9 || v4 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 418, 109, 0, "unexpected read call");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  v8 = MEMORY[0x29EDCA600];
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v9 = *(a1 + 56);
            v10 = *(a1 + 64);
            if (v9 >= *(a1 + 48))
            {
              v11 = AAByteStreamRead(*(a1 + 8), v10, *(a1 + 40));
              if (v11 < 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 430, 109, 0, "read error: %zd");
                goto LABEL_111;
              }

              if (!v11)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 431, 109, 0, "EOF reached");
                goto LABEL_111;
              }

              v9 = 0;
              *(a1 + 48) = v11;
              v10 = *(a1 + 64);
            }

            *(a1 + 56) = v9 + 1;
            v12 = v10[v9];
            v13 = v10[v9];
            v14 = *(a1 + 16);
            if (v14 > 3)
            {
              break;
            }

            if (v14 > 1)
            {
              if (v14 == 2)
              {
                if (((v13 - 98) >> 1) | ((v13 - 98) << 7)) < 0xAu && ((0x341u >> (((v13 - 98) >> 1) | ((v13 - 98) << 7))))
                {
                  v16 = asc_296AD20B8[(((v13 - 98) >> 1) | ((v13 - 98) << 7))];
                }

                else if (v12 == 102)
                {
                  v16 = 12;
                }

                else
                {
                  v16 = v10[v9];
                }

                if ((jsonPushValue(a1, v16) & 0x80000000) != 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 512, 109, 0, "jsonPushValue");
                  goto LABEL_111;
                }

LABEL_55:
                v15 = 1;
                goto LABEL_78;
              }

              if ((v12 - 48) > 9)
              {
                *(a1 + 16) = 5;
                *(a1 + 56) = v9;
                if ((jsonPushValue(a1, 0) & 0x80000000) == 0)
                {
                  v20 = 4;
                  goto LABEL_128;
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 539, 109, 0, "jsonPushValue");
LABEL_111:
                result = 0xFFFFFFFFLL;
                *(a1 + 16) = -1;
                return result;
              }

              if ((jsonPushValue(a1, v12) & 0x80000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 533, 109, 0, "jsonPushValue");
                goto LABEL_111;
              }
            }

            else if (v14)
            {
              if (v14 != 1)
              {
                goto LABEL_110;
              }

              if (v12 == 92)
              {
                v15 = 2;
                goto LABEL_78;
              }

              if (v12 == 34)
              {
                *(a1 + 16) = 5;
                if ((jsonPushValue(a1, 0) & 0x80000000) != 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 499, 109, 0, "jsonPushValue");
                  goto LABEL_111;
                }

                v20 = 3;
                goto LABEL_128;
              }

              if ((jsonPushValue(a1, v12) & 0x80000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 503, 109, 0, "jsonPushValue");
                goto LABEL_111;
              }
            }

            else
            {
              *(a1 + 104) = 0;
              if (v12 < 0)
              {
                if (!__maskrune(v12, 0x4000uLL))
                {
LABEL_63:
                  if (v12 == 34)
                  {
                    goto LABEL_55;
                  }

                  if (v12 == 43 || v12 == 45 || (v12 - 48) <= 9)
                  {
                    if ((jsonPushValue(a1, v12) & 0x80000000) != 0)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 451, 109, 0, "jsonPushValue");
                      goto LABEL_111;
                    }

                    v15 = 3;
                  }

                  else
                  {
                    if (v12 == 123)
                    {
                      v23 = *(a1 + 24);
                      if (v23 == *(a1 + 20))
                      {
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 465, 109, 0, "max level reached");
                        goto LABEL_111;
                      }

                      v20 = 0;
                      v34 = *(a1 + 32);
                      *(a1 + 24) = v23 + 1;
                      *(v34 + 4 * v23) = 0;
                      v27 = 6;
                      goto LABEL_127;
                    }

                    if (v12 == 91)
                    {
                      v24 = *(a1 + 24);
                      if (v24 == *(a1 + 20))
                      {
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 457, 109, 0, "max level reached");
                        goto LABEL_111;
                      }

                      v27 = 0;
                      v35 = *(a1 + 32);
                      *(a1 + 24) = v24 + 1;
                      v20 = 1;
                      *(v35 + 4 * v24) = 1;
                      goto LABEL_127;
                    }

                    if ((v12 - 97) > 0x19)
                    {
                      v18 = *(a1 + 24) - 1;
                      v25 = v12 != 93;
                      if (*(*(a1 + 32) + 4 * v18))
                      {
                        v26 = 0;
                      }

                      else
                      {
                        v25 = 1;
                        v26 = v12 == 125;
                      }

                      if (v25 && !v26)
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_123;
                    }

                    if ((jsonPushValue(a1, v12) & 0x80000000) != 0)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 473, 109, 0, "jsonPushValue");
                      goto LABEL_111;
                    }

                    v15 = 4;
                  }

LABEL_78:
                  *(a1 + 16) = v15;
                }
              }

              else if ((*(v8 + 4 * v12 + 60) & 0x4000) == 0)
              {
                goto LABEL_63;
              }
            }
          }

          if (v14 <= 5)
          {
            break;
          }

          switch(v14)
          {
            case 6:
              *(a1 + 80) = 0;
              if (v12 < 0)
              {
                if (!__maskrune(v12, 0x4000uLL))
                {
LABEL_70:
                  if (v12 != 34)
                  {
                    if (v12 != 125)
                    {
                      goto LABEL_110;
                    }

                    v22 = *(a1 + 24);
                    if (!v22)
                    {
                      goto LABEL_110;
                    }

                    v18 = v22 - 1;
                    v19 = *(*(a1 + 32) + 4 * v18);
                    goto LABEL_100;
                  }

                  v15 = 7;
                  goto LABEL_78;
                }
              }

              else if ((*(v8 + 4 * v12 + 60) & 0x4000) == 0)
              {
                goto LABEL_70;
              }

              break;
            case 7:
              if (v12 == 34)
              {
                if ((jsonPushLabel(a1, 0) & 0x80000000) != 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 587, 109, 0, "jsonPushLabel");
                  goto LABEL_111;
                }

                v15 = 8;
                goto LABEL_78;
              }

              if ((jsonPushLabel(a1, v12) & 0x80000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 591, 109, 0, "jsonPushLabel");
                goto LABEL_111;
              }

              break;
            case 8:
              if (v12 < 0)
              {
                if (!__maskrune(v12, 0x4000uLL))
                {
LABEL_60:
                  if (v12 != 58)
                  {
                    goto LABEL_110;
                  }

                  v15 = 0;
                  goto LABEL_78;
                }
              }

              else if ((*(v8 + 4 * v12 + 60) & 0x4000) == 0)
              {
                goto LABEL_60;
              }

              break;
            default:
              goto LABEL_110;
          }
        }

        if (v14 != 4)
        {
          break;
        }

        if ((v12 - 97) > 0x19)
        {
          *(a1 + 16) = 5;
          *(a1 + 56) = v9;
          if ((jsonPushValue(a1, 0) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 524, 109, 0, "jsonPushValue");
            goto LABEL_111;
          }

          v21 = *(a1 + 112);
          if (!strcmp(v21, "false") || !strcmp(v21, "true"))
          {
            v20 = 6;
            goto LABEL_128;
          }

          if (!strcmp(v21, "null"))
          {
            v20 = 7;
            goto LABEL_128;
          }

LABEL_110:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 610, 109, 0, "invalid char %c %s");
          goto LABEL_111;
        }

        if ((jsonPushValue(a1, v12) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 519, 109, 0, "jsonPushValue");
          goto LABEL_111;
        }
      }

      if (v12 < 0)
      {
        break;
      }

      if ((*(v8 + 4 * v12 + 60) & 0x4000) == 0)
      {
        goto LABEL_73;
      }
    }
  }

  while (__maskrune(v12, 0x4000uLL));
LABEL_73:
  v17 = *(a1 + 24);
  if (!v17)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAJSONStreams.c", "AAJSONInputStreamRead", 546, 109, 0, "invalid JSON state");
    goto LABEL_111;
  }

  v18 = v17 - 1;
  v19 = *(*(a1 + 32) + 4 * v18);
  if (v12 == 44)
  {
    if (v19)
    {
      v15 = 0;
    }

    else
    {
      v15 = 6;
    }

    goto LABEL_78;
  }

  if (v12 == 93)
  {
    if (v19)
    {
      goto LABEL_123;
    }

    goto LABEL_110;
  }

  if (v12 != 125)
  {
    goto LABEL_110;
  }

LABEL_100:
  if (v19)
  {
    goto LABEL_110;
  }

LABEL_123:
  *(a1 + 24) = v18;
  if (v18)
  {
    v27 = 5;
  }

  else
  {
    v27 = 9;
  }

  v20 = 2;
LABEL_127:
  *(a1 + 16) = v27;
LABEL_128:
  if (a2)
  {
    memset_s(a2, 0x38uLL, 0, 0x38uLL);
  }

  *a2 = v20;
  v28 = *(a1 + 80);
  if (v28)
  {
    v28 = *(a1 + 88);
  }

  *(a2 + 1) = v28;
  a2[12] = *(a1 + 24);
  if (v20 == 6)
  {
    v32 = strcmp(*(a1 + 112), "true");
    result = 0;
    a2[9] = v32 == 0;
  }

  else if (v20 == 4)
  {
    v29 = *(a1 + 112);
    if (*v29 == 45)
    {
      v30 = strtoull(v29 + 1, 0, 10);
      result = 0;
      *(a2 + 3) = v30;
      v31 = -1;
    }

    else
    {
      v33 = strtoull(v29, 0, 0);
      result = 0;
      *(a2 + 3) = v33;
      v31 = v33 != 0;
    }

    a2[8] = v31;
  }

  else
  {
    result = 0;
    if (v20 == 3)
    {
      *(a2 + 2) = *(a1 + 112);
    }
  }

  return result;
}

unsigned int *ThreadPoolCreate(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v6 = calloc(1uLL, 0xA8uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    v8 = calloc(a1, 0xA8uLL);
    *(v7 + 1) = v8;
    if (v8)
    {
      v9 = *v7;
      v7[8] = 0;
      v7[9] = v9;
      v10 = calloc(v9, 4uLL);
      *(v7 + 5) = v10;
      if (v10)
      {
        if (pthread_mutex_init((v7 + 12), 0))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
        }

        else
        {
          if (!pthread_cond_init((v7 + 28), 0))
          {
            v7[4] = -1;
            if (!*v7)
            {
              return v7;
            }

            v15 = 0;
            v16 = 0;
            while (1)
            {
              v17 = *(v7 + 1) + v15;
              *(v17 + 16) = v7;
              *(v17 + 8) = v16;
              *(v17 + 24) = *(a2 + 8 * v16);
              *(v17 + 32) = a3;
              *(v17 + 40) = 0;
              if (pthread_mutex_init((v17 + 48), 0) || pthread_cond_init((v17 + 112), 0))
              {
                v12 = "SemInit";
                v13 = 115;
                goto LABEL_12;
              }

              if ((createThread(v17, threadPoolWorkerThreadProc, v17, 0) & 0x80000000) != 0)
              {
                break;
              }

              ++v16;
              v15 += 168;
              if (v16 >= *v7)
              {
                return v7;
              }
            }

            v12 = "Thread creation";
            v13 = 116;
            goto LABEL_12;
          }

          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
        }
      }

      else
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
      }

      v12 = "SharedArrayInit";
      v13 = 104;
LABEL_12:
      v11 = 0;
      goto LABEL_13;
    }

    v11 = *__error();
    v12 = "malloc";
    v13 = 103;
  }

  else
  {
    v11 = *__error();
    v12 = "malloc";
    v13 = 98;
  }

LABEL_13:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolCreate", v13, 90, v11, v12);
  ThreadPoolDestroy(v7);
  return 0;
}

uint64_t threadPoolWorkerThreadProc(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  if (pthread_mutex_lock((v2 + 48)))
  {
LABEL_2:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
  }

  else
  {
    while (1)
    {
      v4 = *(v2 + 32);
      v5 = *(v2 + 36);
      v6 = v4;
      if (v4 < v5)
      {
        *(*(v2 + 40) + 4 * v4) = v3;
        v6 = *(v2 + 32);
      }

      *(v2 + 32) = v6 + 1;
      if (!v6)
      {
        if (pthread_cond_broadcast((v2 + 112)))
        {
          break;
        }
      }

      if (pthread_mutex_unlock((v2 + 48)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
        goto LABEL_3;
      }

      if (v4 >= v5)
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n");
        goto LABEL_3;
      }

      if (pthread_mutex_lock((a1 + 48)))
      {
        goto LABEL_21;
      }

      while (1)
      {
        v7 = *(a1 + 40);
        if (v7 > 0)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 112), (a1 + 48)))
        {
          goto LABEL_21;
        }
      }

      *(a1 + 40) = v7 - 1;
      if (pthread_mutex_unlock((a1 + 48)))
      {
LABEL_21:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "threadPoolWorkerThreadProc", 59, 90, 0, "SemAcquire");
        goto LABEL_22;
      }

      v8 = *(a1 + 160);
      if (v8 != -2)
      {
        if (v8 < 0)
        {
          return a1;
        }

        if (((*(a1 + 32))(*(a1 + 24)) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "threadPoolWorkerThreadProc", 72, 90, 0, "worker proc reported an error");
          atomic_fetch_add_explicit((v2 + 160), 1u, memory_order_relaxed);
        }
      }

      v3 = *(a1 + 8);
      if (pthread_mutex_lock((v2 + 48)))
      {
        goto LABEL_2;
      }
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
  }

LABEL_3:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "threadPoolWorkerThreadProc", 56, 90, 0, "SharedArrayPush");
LABEL_22:
  atomic_fetch_add_explicit((v2 + 160), 1u, memory_order_relaxed);
  return a1;
}

uint64_t ThreadPoolDestroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *result;
      if (!v3)
      {
        v7 = 1;
        goto LABEL_37;
      }

      v4 = 0;
      do
      {
        v5 = *v2;
        v2 += 21;
        if (v5)
        {
          ++v4;
        }

        --v3;
      }

      while (v3);
      if (v4)
      {
        v6 = 0;
        v7 = 1;
        while (1)
        {
          if (pthread_mutex_lock((v1 + 12)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_15:
            v9 = -1;
          }

          else
          {
            while (1)
            {
              v8 = v1[8];
              if (v8)
              {
                break;
              }

              if (pthread_cond_wait((v1 + 28), (v1 + 12)))
              {
                pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
                goto LABEL_15;
              }
            }

            v12 = v8 - 1;
            v1[8] = v12;
            v9 = *(*(v1 + 5) + 4 * v12);
            if (!pthread_mutex_unlock((v1 + 12)))
            {
              goto LABEL_17;
            }

            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 147, 90, 0, "SharedArrayPop");
          v7 = 0;
LABEL_17:
          v10 = *(v1 + 1) + 168 * v9;
          *(v10 + 160) = -1;
          if (pthread_mutex_lock((v10 + 48)) || (v11 = *(v10 + 40), *(v10 + 40) = v11 + 1, !v11) && pthread_cond_broadcast((v10 + 112)) || pthread_mutex_unlock((v10 + 48)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 155, 90, 0, "SemRelease");
            v7 = 0;
          }

          if ((joinThread(*v10) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 156, 90, 0, "joinThread");
            v7 = 0;
          }

          *v10 = 0;
          if (++v6 == v4)
          {
            if (!*v1)
            {
              goto LABEL_37;
            }

            goto LABEL_33;
          }
        }
      }

      v7 = 1;
LABEL_33:
      v13 = 0;
      v14 = 112;
      do
      {
        v15 = (*(v1 + 1) + v14);
        if (!pthread_mutex_destroy(&v15[-2].__opaque[24]))
        {
          pthread_cond_destroy(v15);
        }

        ++v13;
        v14 += 168;
      }

      while (v13 < *v1);
LABEL_37:
      free(*(v1 + 1));
      *(v1 + 1) = 0;
    }

    else
    {
      v7 = 1;
    }

    if (!pthread_mutex_destroy((v1 + 12)) && !pthread_cond_destroy((v1 + 28)))
    {
      free(*(v1 + 5));
    }

    v16 = atomic_load(v1 + 40);
    if (v16 >= 1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 171, 90, 0, "Threads reported errors");
      v7 = 0;
    }

    free(v1);
    if (v7)
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

uint64_t ThreadPoolGetWorker(uint64_t a1)
{
  if (*(a1 + 16) != -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolGetWorker", 182, 90, 0, "Missing call to RunWorker before GetWorker");
    return 0;
  }

  if (pthread_mutex_lock((a1 + 48)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolGetWorker", 186, 90, 0, "SharedArrayPop failed");
    return 0;
  }

  while (1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 112), (a1 + 48)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
      goto LABEL_10;
    }
  }

  v3 = v2 - 1;
  *(a1 + 32) = v3;
  v4 = *(*(a1 + 40) + 4 * v3);
  if (pthread_mutex_unlock((a1 + 48)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
    goto LABEL_10;
  }

  *(a1 + 16) = v4;
  return *(*(a1 + 8) + 168 * v4 + 24);
}

uint64_t ThreadPoolRunWorker(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolRunWorker", 199, 90, 0, "Missing call to GetWorker before RunWorker");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = -1;
  v2 = *(a1 + 8) + 168 * v1;
  v3 = *(a1 + 24);
  *(a1 + 24) = v3 + 1;
  *(v2 + 160) = v3;
  if (pthread_mutex_lock((v2 + 48)) || (v4 = *(v2 + 40), *(v2 + 40) = v4 + 1, !v4) && pthread_cond_broadcast((v2 + 112)) || (result = pthread_mutex_unlock((v2 + 48)), result))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolRunWorker", 211, 90, 0, "SemRelease failed");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ThreadPoolSync(unsigned int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    v7 = 1;
    goto LABEL_30;
  }

  v3 = 0;
  v4 = *(a1 + 1);
  do
  {
    v5 = *v4;
    v4 += 21;
    if (v5)
    {
      ++v3;
    }

    --v1;
  }

  while (v1);
  if (v3)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      if (pthread_mutex_lock((a1 + 12)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
      }

      else
      {
        while (1)
        {
          v8 = a1[8];
          if (v8)
          {
            break;
          }

          if (pthread_cond_wait((a1 + 28), (a1 + 12)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
            goto LABEL_15;
          }
        }

        a1[8] = v8 - 1;
        if (!pthread_mutex_unlock((a1 + 12)))
        {
          goto LABEL_16;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
      }

LABEL_15:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolSync", 231, 90, 0, "SharedArrayPop");
      v7 = 0;
LABEL_16:
      if (++v6 == v3)
      {
        if (!*a1)
        {
          goto LABEL_30;
        }

        goto LABEL_21;
      }
    }
  }

  v7 = 1;
LABEL_21:
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(a1 + 1);
    if (*(v11 + v9))
    {
      if ((v12 = v11 + v9, *(v11 + v9 + 160) = -2, pthread_mutex_lock((v11 + v9 + 48))) || (v13 = *(v12 + 40), *(v12 + 40) = v13 + 1, !v13) && pthread_cond_broadcast((v11 + v9 + 112)) || pthread_mutex_unlock((v12 + 48)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolSync", 240, 90, 0, "SemRelease");
        v7 = 0;
      }
    }

    ++v10;
    v9 += 168;
  }

  while (v10 < *a1);
LABEL_30:
  if (v7)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

AAByteStream AADecompressionRandomAccessInputStreamOpen(AAByteStream compressed_stream, size_t alloc_limit, AAFlagSet flags, int n_threads)
{
  v54 = *MEMORY[0x29EDCA608];
  v53 = 0uLL;
  v7 = malloc(0x40uLL);
  v8 = v7;
  if (!v7)
  {
    v20 = *__error();
    v21 = "malloc";
    v22 = 106;
LABEL_18:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecompressionStream.c", "AADecompressionRandomAccessInputStreamOpen", v22, 110, v20, v21);
    RandomAccessDecompressStreamDestroy(v8);
    return 0;
  }

  memset_s(v7, 0x40uLL, 0, 0x40uLL);
  *v8 = compressed_stream;
  *(v8 + 8) = flags;
  v9 = AAByteStreamSeek(compressed_stream, 0, 2);
  if (v9 < 0)
  {
    v21 = "seek to end of stream";
    v22 = 112;
    goto LABEL_17;
  }

  v10 = *v8;
  if (!*(*v8 + 32))
  {
    goto LABEL_15;
  }

  v11 = v9;
  v12 = 0;
  v13 = 0;
  v14 = &v53;
  v15 = 12;
  do
  {
    v16 = (*(v10 + 32))(*v10, v14, v15, v13);
    if (v16 < 0)
    {
      goto LABEL_15;
    }

    if (!v16)
    {
      break;
    }

    v14 = (v14 + v16);
    v12 += v16;
    v13 += v16;
    v15 -= v16;
  }

  while (v15);
  if (v12 != 12)
  {
LABEL_15:
    v21 = "reading file header";
    v22 = 116;
LABEL_17:
    v20 = 0;
    goto LABEL_18;
  }

  v17 = PCompressZLIBDecode;
  if (BYTE3(v53) <= 0x64u)
  {
    switch(BYTE3(v53))
    {
      case '-':
        v18 = 0;
        v19 = "none";
        v17 = PCompressCopyDecode;
        goto LABEL_31;
      case '4':
        v18 = 0;
        v19 = "lz4";
        v17 = PCompressLZ4Decode;
        goto LABEL_31;
      case 'b':
        v18 = 0;
        v19 = "lzbitmap";
        v17 = PCompressLZBITMAPDecode;
        goto LABEL_31;
    }

LABEL_27:
    v17 = 0;
    v19 = "???";
    v18 = 1;
    goto LABEL_31;
  }

  if (BYTE3(v53) > 0x77u)
  {
    if (BYTE3(v53) == 122)
    {
      v18 = 0;
      v19 = "zlib";
      goto LABEL_31;
    }

    if (BYTE3(v53) == 120)
    {
      v18 = 0;
      v19 = "lzma";
      v17 = PCompressLZMADecode;
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  if (BYTE3(v53) == 101)
  {
    v18 = 0;
    v19 = "lzfse";
    v17 = PCompressLZFSEDecode;
    goto LABEL_31;
  }

  if (BYTE3(v53) != 102)
  {
    goto LABEL_27;
  }

  v18 = 0;
  v19 = "lzvn";
  v17 = PCompressLZVNDecode;
LABEL_31:
  *(v8 + 16) = v17;
  if (v53 != 112 || BYTE1(v53) != 98 || BYTE2(v53) != 122 || v18)
  {
    v21 = "invalid file header";
    v22 = 128;
    goto LABEL_17;
  }

  v52[0] = *(&v53 + 4);
  v24 = bswap64(*(&v53 + 4));
  if (HIDWORD(v24))
  {
    v21 = "invalid block size";
    v22 = 131;
    goto LABEL_17;
  }

  *(v8 + 24) = 0;
  if (v11 == 12)
  {
    v25 = 0;
    goto LABEL_40;
  }

  v50 = v24;
  v48 = v19;
  v31 = 0;
  v25 = 0;
  v32 = 12;
  while (2)
  {
    if (v32 + 16 > v11)
    {
      v21 = "truncated file";
      v22 = 138;
      goto LABEL_17;
    }

    v51 = v32 + 16;
    v49 = v31;
    v33 = v25;
    v34 = *v8;
    if (!*(*v8 + 32))
    {
LABEL_75:
      v21 = "reading block header";
      v22 = 139;
      goto LABEL_17;
    }

    v35 = 0;
    v36 = v52;
    v37 = 16;
    do
    {
      v38 = (*(v34 + 32))(*v34, v36, v37, v32);
      if (v38 < 0)
      {
        goto LABEL_75;
      }

      if (!v38)
      {
        break;
      }

      v36 = (v36 + v38);
      v35 += v38;
      v32 += v38;
      v37 -= v38;
    }

    while (v37);
    if (v35 != 16)
    {
      goto LABEL_75;
    }

    v39 = bswap64(v52[0]);
    v40 = bswap64(v52[1]);
    if (v39 > v50 || v40 > v50)
    {
      v21 = "invalid block header";
      v22 = 143;
      goto LABEL_17;
    }

    v42 = v51;
    v32 = v40 + v51;
    if (v40 + v51 > v11)
    {
      v21 = "truncated file";
      v22 = 144;
      goto LABEL_17;
    }

    v43 = v33;
    v44 = *(v8 + 24);
    if (v33 != v44 * v50)
    {
      v21 = "invalid block size";
      v22 = 147;
      goto LABEL_17;
    }

    v31 = v49;
    if (v44 < v49)
    {
      v45 = *(v8 + 32);
      goto LABEL_72;
    }

    if (v49)
    {
      v31 = 2 * v49;
    }

    else
    {
      v31 = 32;
    }

    if ((16 * v31) >= 0x2000000001)
    {
      *__error() = 12;
LABEL_84:
      *(v8 + 32) = 0;
      v20 = *__error();
      v21 = "malloc";
      v22 = 154;
      goto LABEL_18;
    }

    v46 = *(v8 + 32);
    v45 = realloc(v46, 16 * v31);
    if (!v45)
    {
      free(v46);
      goto LABEL_84;
    }

    *(v8 + 32) = v45;
    v44 = *(v8 + 24);
    v42 = v51;
LABEL_72:
    *(v8 + 24) = v44 + 1;
    v47 = &v45[16 * v44];
    *v47 = v42;
    *(v47 + 2) = v40;
    *(v47 + 3) = v39;
    v25 = v39 + v43;
    if (v32 != v11)
    {
      continue;
    }

    break;
  }

  v19 = v48;
  v24 = v50;
  if (v25 < 0)
  {
    v21 = "invalid file sizes";
    v22 = 169;
    goto LABEL_17;
  }

LABEL_40:
  if (!n_threads)
  {
    n_threads = getDefaultNThreads();
  }

  *(v8 + 40) = n_threads;
  v26 = calloc(n_threads, 8uLL);
  *(v8 + 48) = v26;
  if (!v26)
  {
    v20 = *__error();
    v21 = "malloc";
    v22 = 174;
    goto LABEL_18;
  }

  v27 = v25;
  v28 = *(v8 + 40);
  if (v28)
  {
    v29 = v26;
    v30 = 0;
    while (1)
    {
      *&v29[v30] = malloc(v24);
      v29 = *(v8 + 48);
      if (!*&v29[v30])
      {
        break;
      }

      v30 += 8;
      if (8 * v28 == v30)
      {
        goto LABEL_47;
      }
    }

    v20 = *__error();
    v21 = "malloc";
    v22 = 178;
    goto LABEL_18;
  }

LABEL_47:
  if (flags >> 62)
  {
    v28 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12llu B block size\n", v24);
    fprintf(*v28, "%12llu B file size\n", v11);
    fprintf(*v28, "%12llu B data size\n", v27);
    fprintf(*v28, "%12.2f x compression ratio (%s)\n", v27 / v11, v19);
    fprintf(*v28, "%12llu blocks\n", *(v8 + 24));
    LODWORD(v28) = *(v8 + 40);
  }

  return AAGenericRandomAccessInputStreamOpen(v27, v24, v28, 2 * v28, v8, RandomAccessDecompressStreamGetBlock, RandomAccessDecompressStreamAbort, RandomAccessDecompressStreamDestroy, flags);
}

uint64_t RandomAccessDecompressStreamDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      if (*(a1 + 40))
      {
        v3 = 0;
        do
        {
          free(*(*(a1 + 48) + 8 * v3++));
        }

        while (v3 < *(a1 + 40));
        v2 = *(a1 + 48);
      }

      free(v2);
    }

    free(*(a1 + 32));
    free(a1);
  }

  return 0;
}

uint64_t RandomAccessDecompressStreamGetBlock(uint64_t *a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  if (*(a1 + 10) <= a2 || a1[3] <= a3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecompressionStream.c", "RandomAccessDecompressStreamGetBlock", 66, 110, 0, "Invalid worker/block id");
    return 0xFFFFFFFFLL;
  }

  v6 = a1[4] + 16 * a3;
  v7 = *(v6 + 8);
  if (*(v6 + 12) == v7)
  {
    v8 = a4;
  }

  else
  {
    v8 = *(a1[6] + 8 * a2);
  }

  v9 = *a1;
  if (!*(*a1 + 32))
  {
    goto LABEL_20;
  }

  v10 = 0;
  if (v7)
  {
    v11 = *v6;
    v12 = v8;
    while (1)
    {
      v13 = (*(v9 + 32))(*v9, v12, v7, v11);
      if (v13 < 0)
      {
        break;
      }

      if (v13)
      {
        v12 += v13;
        v10 += v13;
        v11 += v13;
        v7 -= v13;
        if (v7)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    v10 = v13;
LABEL_16:
    if (v10 != *(v6 + 8))
    {
LABEL_20:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecompressionStream.c", "RandomAccessDecompressStreamGetBlock", 74, 110, 0, "loading block");
      return 0xFFFFFFFFLL;
    }
  }

  if (v8 != a4 && (a1[2])(a4, *(v6 + 12), v8, v10) != *(v6 + 12))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessDecompressionStream.c", "RandomAccessDecompressStreamGetBlock", 79, 110, 0, "decompressing block");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

void RandomAccessDecompressStreamAbort(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    *(a1 + 56) = 1;
    AAByteStreamCancel(*a1);
  }
}

void *aaAsyncByteStreamAlloc(uint64_t a1, uint64_t a2, int a3, float a4, float a5)
{
  v8 = malloc(0x38uLL);
  v9 = v8;
  if (!v8)
  {
    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "aaAsyncByteStreamAlloc", 191, 97, *v13, "malloc");
    return v9;
  }

  memset_s(v8, 0x38uLL, 0, 0x38uLL);
  *v9 = a1;
  v9[1] = a2;
  if (a3)
  {
    v10 = malloc(0x70uLL);
    v11 = v10;
    if (!v10)
    {
      goto LABEL_10;
    }

    memset_s(v10, 0x70uLL, 0, 0x70uLL);
    v12 = a3 >= 1 ? a3 : 5;
    *(v11 + 24) = v12;
    *(v11 + 100) = vbsl_s8(vclez_f32(__PAIR64__(LODWORD(a5), LODWORD(a4))), 0x40A0000041200000, __PAIR64__(LODWORD(a5), LODWORD(a4)));
    *(v11 + 10) = -1;
    *(v11 + 11) = -1;
    if ((pthread_mutex_init(v11, 0) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    free(v11);
  }

  v11 = 0;
LABEL_10:
  v9[6] = v11;
  return v9;
}

uint64_t AAAsyncByteStreamGetRange(void *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v3(*a1);
  v8 = v7;
  if ((v7 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = a1[6];
  if (v7)
  {
    if (!v9)
    {
      return v8;
    }

    v10 = *a2;
    v11 = *a3;
    if (pthread_mutex_lock(v9) < 0)
    {
      v24 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataInsert", 64, 97, v24, "mutex lock");
      return v8;
    }

    v12 = *(v9 + 80);
    if (!v10)
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataInsert", 68, 97, "Async stream returning EOF, but we still have ranges in flight");
      }

      goto LABEL_50;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      v13 = *(v9 + 72);
      v14 = *(v9 + 80);
      do
      {
        v15 = (v13 + 40 * v14);
        if (v15[1] == v11 && *v15 == v10)
        {
          goto LABEL_50;
        }

        v14 = *(v13 + 40 * v14 + 32);
      }

      while ((v14 & 0x8000000000000000) == 0);
    }

    v16 = *(v9 + 88);
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

    v29 = *(v9 + 64);
    if (v29)
    {
      v30 = 2 * v29;
    }

    else
    {
      v30 = 32;
    }

    if (40 * v30 < 0x2000000001)
    {
      v31 = *(v9 + 72);
      v32 = realloc(v31, 40 * v30);
      if (v32)
      {
        *(v9 + 72) = v32;
        v16 = *(v9 + 64);
        if (v16 < v30)
        {
          v33 = v16 + 1;
          for (i = 40 * v16; ; i += 40)
          {
            v35 = &v32[i];
            if (v32)
            {
              memset_s(&v32[i], 0x28uLL, 0, 0x28uLL);
            }

            v36 = v30 == v33 ? -1 : v33;
            *(v35 + 4) = v36;
            if (v30 == v33)
            {
              break;
            }

            v32 = *(v9 + 72);
            ++v33;
          }

          v16 = *(v9 + 64);
        }

        *(v9 + 64) = v30;
        v12 = *(v9 + 80);
LABEL_13:
        v17 = *(v9 + 72) + 40 * v16;
        v18 = *(v17 + 32);
        *(v17 + 32) = v12;
        *(v9 + 80) = v16;
        *(v9 + 88) = v18;
        *v17 = v10;
        *(v17 + 8) = v11;
        *(v17 + 16) = *(v9 + 96) - 1;
        v19 = *(v9 + 100) + vcvtd_n_f64_u64(v10, 0x14uLL) * *(v9 + 104);
        *(v17 + 24) = getRealTime() + v19;
        goto LABEL_50;
      }

      free(v31);
    }

    else
    {
      *__error() = 12;
    }

    *(v9 + 72) = 0;
    v39 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataInsert", 84, 97, *v39, "malloc");
    *(v9 + 64) = 0;
    *(v9 + 80) = -1;
    *(v9 + 88) = -1;
LABEL_50:
    if (pthread_mutex_unlock(v9) < 0)
    {
      v40 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataInsert", 108, 97, v40, "mutex unlock");
    }

    return v8;
  }

  if (!v9)
  {
    return 0;
  }

  if (pthread_mutex_lock(v9) < 0)
  {
    v25 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataGetRange", 149, 97, v25, "mutex lock");
    return 0xFFFFFFFFLL;
  }

  RealTime = getRealTime();
  v21 = *(v9 + 80);
  if (v21 < 0)
  {
LABEL_20:
    v8 = 0;
  }

  else
  {
    v22 = *(v9 + 72);
    while (1)
    {
      v23 = v22 + 40 * v21;
      if (*(v23 + 24) < RealTime)
      {
        break;
      }

      v21 = *(v22 + 40 * v21 + 32);
      if (v21 < 0)
      {
        goto LABEL_20;
      }
    }

    v26 = *(v23 + 16);
    if (v26 <= 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataGetRange", 159, 97, 0, "Async stream range timed out (FAIL): %zu bytes at %llu", *v23, *(v23 + 8));
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v27 = *v23;
      v28 = *(v23 + 8);
      *(v23 + 24) = RealTime + *(v9 + 100) + vcvtd_n_f64_u64(*v23, 0x14uLL) * *(v9 + 104);
      *(v23 + 16) = v26 - 1;
      *a2 = v27;
      *a3 = v28;
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataGetRange", 170, 97, "Async stream range timed out (retry): %zu bytes at %llu", v27, v28);
      v8 = 1;
    }
  }

  if (pthread_mutex_unlock(v9) < 0)
  {
    v37 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataGetRange", 177, 97, v37, "mutex unlock");
    return 0xFFFFFFFFLL;
  }

  return v8;
}

uint64_t AAAsyncByteStreamProcess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    v8 = a1[6];
    if (v8)
    {
      if (pthread_mutex_lock(a1[6]) < 0)
      {
        v16 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataRemove", 116, 97, v16, "mutex lock");
      }

      else
      {
        v9 = (v8 + 80);
        v10 = *(v8 + 80);
        if (v10 < 0)
        {
LABEL_10:
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataRemove", 128, 97, "Async stream receiving an unknown segment");
        }

        else
        {
          v11 = *(v8 + 72);
          v12 = -1;
          while (1)
          {
            v13 = v10;
            v14 = (v11 + 40 * v10);
            if (v14[1] == a4 && *v14 == a3)
            {
              break;
            }

            v10 = *(v11 + 40 * v13 + 32);
            v12 = v13;
            if (v10 < 0)
            {
              goto LABEL_10;
            }
          }

          v17 = v11 + 40 * v12 + 32;
          if (v12 >= 0)
          {
            v9 = v17;
          }

          *v9 = v14[4];
          v14[4] = *(v8 + 88);
          *(v8 + 88) = v13;
        }

        if (pthread_mutex_unlock(v8) < 0)
        {
          v18 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStream.c", "rangeDataRemove", 140, 97, v18, "mutex unlock");
        }
      }
    }
  }

  v19 = a1[3];
  v20 = *a1;

  return v19(v20, a2, a3, a4);
}

void *AAAsyncByteStreamCancel(void *result)
{
  v1 = result[4];
  if (v1)
  {
    return v1(*result);
  }

  return result;
}

uint64_t AAAsyncByteStreamClose(uint64_t (**a1)(void))
{
  if (!a1)
  {
    return 0;
  }

  if (*a1)
  {
    v2 = a1[1]();
    *a1 = 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = a1[6];
  if (v3)
  {
    free(*(v3 + 9));
    pthread_mutex_destroy(v3);
    free(v3);
  }

  free(a1);
  return v2;
}

uint64_t aaAsyncByteStreamIsCancelled(void *a1)
{
  v1 = a1[5];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0;
  }
}

unsigned int *graisClose(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[144];
    v3 = v2 == 0;
    if (*(result + 17))
    {
      sendMessage_0(result, -1, -1);
      joinThread(*(v1 + 17));
    }

    v4 = *(v1 + 12);
    if (v4)
    {
      v5 = v1[22];
      if (v5)
      {
        v6 = 0;
        do
        {
          v7 = v6;
          v9 = *v4;
          v4 += 20;
          v8 = v9;
          if (v9)
          {
            ++v6;
          }

          --v5;
        }

        while (v5);
        if (v6)
        {
          if (v8)
          {
            v10 = v7 + 1;
          }

          else
          {
            v10 = v7;
          }

          do
          {
            v11 = v1[37];
            if (!v11)
            {
              break;
            }

            v12 = v1[39];
            if (!v12)
            {
              v12 = v1[36];
            }

            v13 = v12 - 1;
            v14 = *(*(v1 + 20) + 4 * (v12 - 1));
            v1[39] = v13;
            v1[37] = v11 - 1;
            if (v14 >= v1[22])
            {
              break;
            }

            v15 = *(v1 + 12) + 160 * v14;
            *(v15 + 144) = -1;
            if (!pthread_mutex_lock((v15 + 24)))
            {
              v16 = *(v15 + 16);
              *(v15 + 16) = v16 + 1;
              if (v16 || !pthread_cond_broadcast((v15 + 88)))
              {
                pthread_mutex_unlock((v15 + 24));
              }
            }

            joinThread(*v15);
            *v15 = 0;
            --v10;
          }

          while (v10);
        }
      }
    }

    v17 = *(v1 + 4);
    if (v17)
    {
      v3 = v17(*(v1 + 1)) >= 0 && v2 == 0;
    }

    v19 = *(v1 + 14);
    if (v19)
    {
      if (v1[26])
      {
        v20 = 0;
        v21 = 16;
        do
        {
          free(*(*(v1 + 14) + v21));
          ++v20;
          v21 += 32;
        }

        while (v20 < v1[26]);
        v19 = *(v1 + 14);
      }

      free(v19);
    }

    free(*(v1 + 10));
    v22 = *(v1 + 16);
    if (v22)
    {
      if (v1[30])
      {
        v23 = 0;
        v24 = 88;
        do
        {
          v25 = (*(v1 + 16) + v24);
          if (!pthread_mutex_destroy(&v25[-2].__opaque[24]))
          {
            pthread_cond_destroy(v25);
          }

          ++v23;
          v24 += 136;
        }

        while (v23 < v1[30]);
        v22 = *(v1 + 16);
      }

      free(v22);
    }

    free(*(v1 + 23));
    *(v1 + 21) = 0;
    *(v1 + 22) = 0;
    *(v1 + 23) = 0;
    v26 = *(v1 + 12);
    if (v26)
    {
      if (v1[22])
      {
        v27 = 0;
        v28 = 88;
        do
        {
          v29 = (*(v1 + 12) + v28);
          if (!pthread_mutex_destroy(&v29[-2].__opaque[24]))
          {
            pthread_cond_destroy(v29);
          }

          ++v27;
          v28 += 160;
        }

        while (v27 < v1[22]);
        v26 = *(v1 + 12);
      }

      free(v26);
    }

    free(*(v1 + 20));
    *(v1 + 18) = 0;
    *(v1 + 19) = 0;
    *(v1 + 20) = 0;
    free(*(v1 + 8));
    if (!pthread_mutex_destroy((v1 + 52)) && !pthread_cond_destroy((v1 + 68)))
    {
      free(*(v1 + 25));
    }

    if (!pthread_mutex_destroy((v1 + 84)) && !pthread_cond_destroy((v1 + 100)))
    {
      free(*(v1 + 41));
    }

    if (!pthread_mutex_destroy((v1 + 116)) && !pthread_cond_destroy(v1 + 11))
    {
      free(*(v1 + 57));
    }

    if ((*v1 & 0x8000000000000000) != 0)
    {
      v30 = MEMORY[0x29EDCA610];
      fprintf(*MEMORY[0x29EDCA610], "%12llu blocks\n", *(v1 + 7));
      fprintf(*v30, "%12u blocks in cache\n", v1[26]);
      v31 = *v30;
      v32 = atomic_load(v1 + 75);
      fprintf(v31, "%12llu blocks computed\n", v32);
      v33 = *v30;
      v34 = atomic_load(v1 + 76);
      fprintf(v33, "%12llu requests processed\n", v34);
    }

    free(v1);
    return (v3 - 1);
  }

  return result;
}

void *AAGenericRandomAccessInputStreamOpen(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = calloc(1uLL, 0x68uLL);
  v18 = malloc(0x268uLL);
  v19 = v18;
  if (v18)
  {
    memset_s(v18, 0x268uLL, 0, 0x268uLL);
    if (v17)
    {
      if (a4 < a3)
      {
        v20 = "Cache size must be >= n_workers";
        v21 = 653;
        goto LABEL_23;
      }

      *(v19 + 16) = a6;
      *(v19 + 24) = a7;
      *v19 = a9;
      *(v19 + 8) = a5;
      *(v19 + 48) = a2;
      *(v19 + 32) = a8;
      *(v19 + 40) = a1;
      *(v19 + 56) = (a1 + a2 - 1) / a2;
      *(v19 + 104) = a4;
      *(v19 + 88) = a3;
      *(v19 + 120) = 2 * a3;
      v23 = 3 * a3 + 1;
      *(v19 + 72) = v23;
      if (a9 < 0)
      {
        v24 = MEMORY[0x29EDCA610];
        fprintf(*MEMORY[0x29EDCA610], "%12llu blocks in file\n", (a1 + a2 - 1) / a2);
        fprintf(*v24, "%12u blocks in cache\n", *(v19 + 104));
        fprintf(*v24, "%12u workers\n", *(v19 + 88));
        fprintf(*v24, "%12u requests\n", *(v19 + 120));
        fprintf(*v24, "%12u messages\n", *(v19 + 72));
        v23 = *(v19 + 72);
      }

      *(v19 + 192) = 0;
      *(v19 + 196) = v23;
      v25 = calloc(v23, 4uLL);
      *(v19 + 200) = v25;
      if (v25)
      {
        if (pthread_mutex_init((v19 + 208), 0))
        {
LABEL_10:
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
LABEL_22:
          v20 = "SharedArrayInit";
          v21 = 684;
          goto LABEL_23;
        }

        if (pthread_cond_init((v19 + 272), 0))
        {
LABEL_12:
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
          goto LABEL_22;
        }

        v26 = *(v19 + 72);
        *(v19 + 320) = 0;
        *(v19 + 324) = v26;
        v27 = calloc(v26, 4uLL);
        *(v19 + 328) = v27;
        if (v27)
        {
          if (pthread_mutex_init((v19 + 336), 0))
          {
            goto LABEL_10;
          }

          if (pthread_cond_init((v19 + 400), 0))
          {
            goto LABEL_12;
          }

          v28 = *(v19 + 120);
          *(v19 + 448) = 0;
          *(v19 + 452) = v28;
          v29 = calloc(v28, 4uLL);
          *(v19 + 456) = v29;
          if (v29)
          {
            if (pthread_mutex_init((v19 + 464), 0))
            {
              goto LABEL_10;
            }

            if (!pthread_cond_init((v19 + 528), 0))
            {
              v30 = *(v19 + 56);
              if (v30 < 0x800000001)
              {
                v32 = calloc(v30, 4uLL);
                *(v19 + 64) = v32;
                if (v32)
                {
                  v33 = *(v19 + 56);
                  if (v33)
                  {
                    memset(v32, 255, 4 * v33);
                  }

                  v34 = calloc(*(v19 + 104), 0x20uLL);
                  *(v19 + 112) = v34;
                  if (!v34)
                  {
                    v22 = *__error();
                    v20 = "malloc";
                    v21 = 693;
                    goto LABEL_24;
                  }

                  v35 = *(v19 + 104);
                  if (v35)
                  {
                    v36 = 0;
                    v37 = *(v19 + 48);
                    v38 = (v34 + 16);
                    while (1)
                    {
                      *(v38 - 1) = -1;
                      atomic_store(0, v38 - 4);
                      v39 = malloc(v37);
                      *v38 = v39;
                      if (!v39)
                      {
                        break;
                      }

                      ++v36;
                      v38 += 8;
                      if (v36 >= v35)
                      {
                        goto LABEL_34;
                      }
                    }

                    v22 = *__error();
                    v20 = "malloc";
                    v21 = 700;
                    goto LABEL_24;
                  }

LABEL_34:
                  v40 = calloc(*(v19 + 72), 8uLL);
                  *(v19 + 80) = v40;
                  if (!v40)
                  {
                    v22 = *__error();
                    v20 = "malloc";
                    v21 = 705;
                    goto LABEL_24;
                  }

                  if (*(v19 + 72))
                  {
                    v41 = 0;
                    while ((SharedArrayPush_0((v19 + 192), v41) & 0x80000000) == 0)
                    {
                      if (++v41 >= *(v19 + 72))
                      {
                        goto LABEL_39;
                      }
                    }

                    v20 = "SharedArrayPush";
                    v21 = 708;
                    goto LABEL_23;
                  }

LABEL_39:
                  v42 = *(v19 + 120);
                  if (v42 < 0x3C3C3C3D)
                  {
                    v43 = calloc(v42, 0x88uLL);
                    *(v19 + 128) = v43;
                    if (v43)
                    {
                      v44 = *(v19 + 120);
                      v45 = malloc(4 * v44);
                      *(v19 + 184) = v45;
                      if (v45)
                      {
                        *(v19 + 176) = 0;
                        *(v19 + 168) = v44;
                        *(v19 + 172) = 0;
                        if (!v44)
                        {
LABEL_52:
                          v48 = *(v19 + 88);
                          if (v48 < 0x33333334)
                          {
                            v49 = calloc(v48, 0xA0uLL);
                            *(v19 + 96) = v49;
                            if (v49)
                            {
                              v50 = *(v19 + 88);
                              v51 = malloc(4 * v50);
                              *(v19 + 160) = v51;
                              if (v51)
                              {
                                *(v19 + 152) = 0;
                                *(v19 + 144) = v50;
                                *(v19 + 148) = 0;
                                if (v50)
                                {
                                  v52 = 0;
                                  v53 = 0;
                                  while (1)
                                  {
                                    v54 = *(v19 + 96) + v52;
                                    if ((SemInit(v54 + 16) & 0x80000000) != 0)
                                    {
                                      v20 = "SemInit";
                                      v21 = 729;
                                      goto LABEL_23;
                                    }

                                    *(v54 + 8) = v19;
                                    *(v54 + 136) = v53;
                                    if (*(v19 + 148) >= *(v19 + 144))
                                    {
                                      v20 = "LocalArrayPush";
                                      v21 = 732;
                                      goto LABEL_23;
                                    }

                                    v55 = *(v19 + 156);
                                    *(*(v19 + 160) + 4 * v55) = v53;
                                    v56 = *(v19 + 148);
                                    v57 = v55 + 1 == *(v19 + 144) ? 0 : v55 + 1;
                                    *(v19 + 156) = v57;
                                    *(v19 + 148) = v56 + 1;
                                    if ((createThread(v54, workerProc_4, v54, 0) & 0x80000000) != 0)
                                    {
                                      break;
                                    }

                                    ++v53;
                                    v52 += 160;
                                    if (v53 >= *(v19 + 88))
                                    {
                                      goto LABEL_68;
                                    }
                                  }

                                  v20 = "Worker thread creation";
                                  v21 = 733;
                                }

                                else
                                {
LABEL_68:
                                  if ((createThread((v19 + 136), streamProc_0, v19, 0) & 0x80000000) == 0)
                                  {
                                    v17[2] = graisRead;
                                    v17[4] = graisPRead;
                                    v17[6] = graisSeek;
                                    v17[7] = graisAbort;
                                    *v17 = v19;
                                    v17[1] = graisClose;
                                    return v17;
                                  }

                                  v20 = "Stream thread creation";
                                  v21 = 737;
                                }
                              }

                              else
                              {
                                v20 = "LocalArrayInit";
                                v21 = 725;
                              }

                              goto LABEL_23;
                            }
                          }

                          else
                          {
                            *__error() = 12;
                            *(v19 + 96) = 0;
                          }

                          v22 = *__error();
                          v20 = "malloc";
                          v21 = 724;
                          goto LABEL_24;
                        }

                        v46 = 0;
                        v47 = 16;
                        while (1)
                        {
                          if ((SemInit(*(v19 + 128) + v47) & 0x80000000) != 0)
                          {
                            v20 = "SemInit";
                            v21 = 718;
                            goto LABEL_23;
                          }

                          if ((SharedArrayPush_0((v19 + 448), v46) & 0x80000000) != 0)
                          {
                            break;
                          }

                          ++v46;
                          v47 += 136;
                          if (v46 >= *(v19 + 120))
                          {
                            goto LABEL_52;
                          }
                        }

                        v20 = "SharedArrayPush";
                        v21 = 719;
                      }

                      else
                      {
                        v20 = "LocalArrayInit";
                        v21 = 714;
                      }

LABEL_23:
                      v22 = 0;
                      goto LABEL_24;
                    }
                  }

                  else
                  {
                    *__error() = 12;
                    *(v19 + 128) = 0;
                  }

                  v22 = *__error();
                  v20 = "malloc";
                  v21 = 713;
                  goto LABEL_24;
                }
              }

              else
              {
                *__error() = 12;
                *(v19 + 64) = 0;
              }

              v22 = *__error();
              v20 = "malloc";
              v21 = 688;
              goto LABEL_24;
            }

            goto LABEL_12;
          }
        }
      }

      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
      goto LABEL_22;
    }
  }

  v22 = *__error();
  v20 = "malloc";
  v21 = 650;
LABEL_24:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "AAGenericRandomAccessInputStreamOpen", v21, 33, v22, v20);
  free(v17);
  graisClose(v19);
  return 0;
}

uint64_t SharedArrayPush_0(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
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
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
      }

      else
      {
        if (v4 < v5)
        {
          return 0;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n");
      }
    }

    else
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t workerProc_4(uint64_t a1)
{
  v2 = 1;
  v3 = *(a1 + 8);
  while (1)
  {
    if (pthread_mutex_lock((a1 + 24)))
    {
      goto LABEL_7;
    }

    while (1)
    {
      v4 = *(a1 + 16);
      if (v4 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 88), (a1 + 24)))
      {
        goto LABEL_7;
      }
    }

    *(a1 + 16) = v4 - 1;
    if (pthread_mutex_unlock((a1 + 24)))
    {
LABEL_7:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "workerProc", 365, 33, 0, "SemAcquire");
      v2 = 0;
    }

    v5 = *(a1 + 144);
    if (v5 == -1)
    {
      return a1;
    }

    if (((*(v3 + 16))(*(v3 + 8), *(a1 + 136), v5, *(*(v3 + 112) + 32 * *(a1 + 152) + 16)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "workerProc", 374, 33, 0, "get block data");
      v2 = 0;
    }

    *(a1 + 156) = v2;
    if ((sendMessage_0(v3, -1, *(a1 + 136)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "workerProc", 381, 33, 0, "send worker message");
      v2 = 0;
    }
  }
}

uint64_t streamProc_0(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    while (1)
    {
      if (pthread_mutex_lock((a1 + 336)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
        goto LABEL_9;
      }

      while (1)
      {
        v3 = *(a1 + 320);
        if (v3)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 400), (a1 + 336)))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
          goto LABEL_9;
        }
      }

      v4 = v3 - 1;
      *(a1 + 320) = v4;
      v5 = *(*(a1 + 328) + 4 * v4);
      if (!pthread_mutex_unlock((a1 + 336)))
      {
        break;
      }

      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
LABEL_9:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 186, 33, 0, "SharedArrayPop");
      *(a1 + 576) = 1;
    }

    v6 = (*(a1 + 80) + 8 * v5);
    v8 = *v6;
    v7 = v6[1];
    if ((SharedArrayPush_0((a1 + 192), v5) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 192, 33, 0, "SharedArrayPush");
      *(a1 + 576) = 1;
    }

    if ((v7 & v8) == 0xFFFFFFFF)
    {
      v9 = 1;
    }

    else
    {
      v9 = v2;
    }

    v51 = v9;
    v10 = v8;
    if (v7 != -1)
    {
      atomic_fetch_add_explicit((a1 + 600), 1uLL, memory_order_relaxed);
      v11 = *(a1 + 96) + 160 * v7;
      v12 = *(a1 + 112) + 32 * *(v11 + 152);
      if (*(v11 + 156))
      {
        atomic_fetch_add(v12, 1u);
        atomic_fetch_add((v12 + 4), 0xFFFFFFFF);
        *(v12 + 24) = atomic_fetch_add((a1 + 592), 1uLL);
        v13 = *(v11 + 152);
      }

      else
      {
        atomic_fetch_add((v12 + 4), 0xFFFFFFFF);
        *(v12 + 24) = atomic_fetch_add((a1 + 592), 1uLL);
        *(v12 + 8) = -1;
        v13 = -3;
      }

      *(*(a1 + 64) + 4 * *(v11 + 144)) = v13;
      *(v11 + 144) = -1;
      *(v11 + 152) = -1;
      if (*(a1 + 148) >= *(a1 + 144))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 242, 33, 0, "LocalArrayPush");
        *(a1 + 576) = 1;
      }

      else
      {
        v14 = *(a1 + 156);
        *(*(a1 + 160) + 4 * v14) = v7;
        v15 = *(a1 + 148);
        if (v14 + 1 == *(a1 + 144))
        {
          v16 = 0;
        }

        else
        {
          v16 = v14 + 1;
        }

        *(a1 + 156) = v16;
        *(a1 + 148) = v15 + 1;
      }
    }

    v17 = *(a1 + 172);
    if (v10 == -1)
    {
      goto LABEL_30;
    }

    atomic_fetch_add_explicit((a1 + 608), 1uLL, memory_order_relaxed);
    v18 = *(a1 + 168);
    if (v17 < v18)
    {
      if (*(a1 + 176))
      {
        v18 = *(a1 + 176);
      }

      v19 = v18 - 1;
      *(*(a1 + 184) + 4 * v19) = v10;
      v17 = *(a1 + 172) + 1;
      *(a1 + 172) = v17;
      *(a1 + 176) = v19;
LABEL_30:
      if (v17)
      {
        goto LABEL_33;
      }

      goto LABEL_96;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 254, 33, 0, "LocalArrayEnqueue");
    *(a1 + 576) = 1;
    v17 = *(a1 + 172);
    if (v17)
    {
LABEL_33:
      v20 = 0;
      while (1)
      {
        v21 = *(a1 + 172);
        if (v21)
        {
          v22 = *(a1 + 180);
          if (!v22)
          {
            v22 = *(a1 + 168);
          }

          v23 = v22 - 1;
          v24 = *(*(a1 + 184) + 4 * (v22 - 1));
          *(a1 + 180) = v23;
          *(a1 + 172) = v21 - 1;
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 262, 33, 0, "LocalArrayDequeue");
          *(a1 + 576) = 1;
          v24 = -1;
        }

        v25 = *(a1 + 128) + 136 * v24;
        if (v51)
        {
          break;
        }

        v27 = *(*(a1 + 64) + 4 * *v25);
        if (v27 < *(a1 + 104))
        {
          *(v25 + 8) = v27;
          v28 = *(a1 + 112) + 32 * v27;
          atomic_fetch_add(v28, 1u);
          *(v28 + 24) = atomic_fetch_add((a1 + 592), 1uLL);
          if (!pthread_mutex_lock((v25 + 24)))
          {
            v29 = *(v25 + 16);
            *(v25 + 16) = v29 + 1;
            if ((v29 || !pthread_cond_broadcast((v25 + 88))) && !pthread_mutex_unlock((v25 + 24)))
            {
              goto LABEL_81;
            }
          }

          v33 = 292;
          goto LABEL_79;
        }

        if (v27 == -3)
        {
          *(v25 + 8) = -1;
          if (!pthread_mutex_lock((v25 + 24)))
          {
            v30 = *(v25 + 16);
            *(v25 + 16) = v30 + 1;
            if ((v30 || !pthread_cond_broadcast((v25 + 88))) && !pthread_mutex_unlock((v25 + 24)))
            {
              goto LABEL_81;
            }
          }

          v33 = 303;
          goto LABEL_79;
        }

        v31 = *(a1 + 168);
        if (*(a1 + 172) >= v31)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 308, 33, 0, "LocalArrayEnqueue");
          *(a1 + 576) = 1;
        }

        else
        {
          if (*(a1 + 176))
          {
            v31 = *(a1 + 176);
          }

          v32 = v31 - 1;
          *(*(a1 + 184) + 4 * v32) = v24;
          ++*(a1 + 172);
          *(a1 + 176) = v32;
        }

        if (v27 == -1 && *(a1 + 148))
        {
          v34 = *v25;
          if (*(a1 + 56) <= *v25)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "runWorker", 149, 33, 0, "Invalid block_id, or no workers available");
            goto LABEL_95;
          }

          while (!*(a1 + 104))
          {
            v38 = -1;
LABEL_73:
            v36 = v38;
            v42 = *(a1 + 112) + 32 * v38;
            v43 = 1;
            atomic_compare_exchange_strong(v42, &v43, 0);
            if (v43 == 1)
            {
              *(*(a1 + 64) + 4 * *(v42 + 8)) = -1;
              *(v42 + 8) = -1;
              goto LABEL_85;
            }
          }

          v35 = 0;
          v36 = 0;
          v37 = -1;
          v38 = -1;
          while (1)
          {
            v39 = *(a1 + 112);
            if (!atomic_load((v39 + v35 + 4)))
            {
              if (*(v39 + v35 + 8) == -1)
              {
                v42 = v39 + v35;
                v38 = v36;
LABEL_85:
                atomic_fetch_add((v42 + 4), 1u);
                *(*(a1 + 112) + 32 * v36 + 8) = v34;
                v44 = *(a1 + 148);
                if (v44)
                {
                  v45 = *(a1 + 156);
                  if (!v45)
                  {
                    v45 = *(a1 + 144);
                  }

                  v46 = v45 - 1;
                  v47 = *(*(a1 + 160) + 4 * v46);
                  *(a1 + 156) = v46;
                  *(a1 + 148) = v44 - 1;
                  v48 = *(a1 + 96) + 160 * v47;
                  *(v48 + 144) = v34;
                  *(v48 + 152) = v38;
                  *(*(a1 + 64) + 4 * v34) = -2;
                  if (!pthread_mutex_lock((v48 + 24)))
                  {
                    v49 = *(v48 + 16);
                    *(v48 + 16) = v49 + 1;
                    if ((v49 || !pthread_cond_broadcast((v48 + 88))) && !pthread_mutex_unlock((v48 + 24)))
                    {
                      break;
                    }
                  }

                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "runWorker", 167, 33, 0, "SemRelease");
                }

                else
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "runWorker", 159, 33, 0, "LocalArrayPop");
                }

LABEL_95:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 313, 33, 0, "run worker");
LABEL_80:
                *(a1 + 576) = 1;
                break;
              }

              v41 = *(v39 + v35 + 24);
              if (v41 < v37)
              {
                v37 = v41;
                v38 = v36;
              }
            }

            ++v36;
            v35 += 32;
            if (v36 >= *(a1 + 104))
            {
              goto LABEL_73;
            }
          }
        }

LABEL_81:
        if (++v20 == v17)
        {
          goto LABEL_96;
        }
      }

      *(v25 + 8) = -1;
      if (!pthread_mutex_lock((v25 + 24)))
      {
        v26 = *(v25 + 16);
        *(v25 + 16) = v26 + 1;
        if ((v26 || !pthread_cond_broadcast((v25 + 88))) && !pthread_mutex_unlock((v25 + 24)))
        {
          goto LABEL_81;
        }
      }

      v33 = 272;
LABEL_79:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", v33, 33, 0, "SemRelease");
      goto LABEL_80;
    }

LABEL_96:
    v2 = 0;
    if (v51)
    {
      v2 = v51;
      if (*(a1 + 148) == *(a1 + 88))
      {
        return a1;
      }
    }
  }
}

uint64_t graisRead(uint64_t a1, char *a2, unint64_t a3)
{
  if (*(a1 + 576))
  {
    return -1;
  }

  else
  {
    return graisPRead(a1, a2, a3, atomic_fetch_add((a1 + 584), a3));
  }
}

uint64_t graisPRead(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 576))
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = a4;
  if ((a4 & 0x8000000000000000) == 0)
  {
    v7 = a4 + a3;
    if (a4 + a3 >= *(a1 + 40))
    {
      v7 = *(a1 + 40);
    }

    if (__CFADD__(a4, a3))
    {
      v8 = *(a1 + 40);
    }

    else
    {
      v8 = v7;
    }

    if (v8 > a4)
    {
      v9 = a4 / *(a1 + 48);
      if (v9 < *(a1 + 56))
      {
        v4 = 0;
        v11 = (a1 + 448);
        while (1)
        {
          v12 = *(a1 + 48);
          if (pthread_mutex_lock((a1 + 464)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_38:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "acquireCachedBlock", 395, 33, 0, "SharedArrayPop");
            goto LABEL_39;
          }

          while (!*v11)
          {
            if (pthread_cond_wait((a1 + 528), (a1 + 464)))
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
              goto LABEL_38;
            }
          }

          v13 = *v11 - 1;
          *(a1 + 448) = v13;
          v14 = *(*(a1 + 456) + 4 * v13);
          if (pthread_mutex_unlock((a1 + 464)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
            goto LABEL_38;
          }

          v15 = *(a1 + 128) + 136 * v14;
          *v15 = v9;
          *(v15 + 8) = -1;
          if ((sendMessage_0(a1, v14, -1) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "acquireCachedBlock", 404, 33, 0, "send request");
            v21 = 0;
          }

          else
          {
            v21 = 1;
          }

          if (pthread_mutex_lock((v15 + 24)))
          {
            goto LABEL_26;
          }

          while (1)
          {
            v16 = *(v15 + 16);
            if (v16 > 0)
            {
              break;
            }

            if (pthread_cond_wait((v15 + 88), (v15 + 24)))
            {
              goto LABEL_26;
            }
          }

          *(v15 + 16) = v16 - 1;
          if (pthread_mutex_unlock((v15 + 24)))
          {
LABEL_26:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "acquireCachedBlock", 410, 33, 0, "SemAcquire");
            v21 = 0;
          }

          v17 = *(v15 + 8);
          if ((SharedArrayPush_0((a1 + 448), v14) & 0x80000000) != 0)
          {
            break;
          }

          if (!v21 || v17 == -1)
          {
            goto LABEL_39;
          }

          v18 = v9 * v12;
          v22 = v9 * v12 + v12;
          if (v22 >= v8)
          {
            v19 = v8;
          }

          else
          {
            v19 = v9 * v12 + v12;
          }

          memcpy(a2, (*(*(a1 + 112) + 32 * v17 + 16) + v5 - v18), v19 - v5);
          v4 += v19 - v5;
          atomic_fetch_add((*(a1 + 112) + 32 * v17), 0xFFFFFFFF);
          if (v22 < v8)
          {
            a2 += v19 - v5;
            ++v9;
            v5 = v19;
            if (v9 < *(a1 + 56))
            {
              continue;
            }
          }

          return v4;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "acquireCachedBlock", 418, 33, 0, "SharedArrayPush");
LABEL_39:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "graisPRead", 464, 33, 0, "acquire segment in cache");
        return -1;
      }
    }

    return 0;
  }

  return -1;
}

unint64_t graisSeek(uint64_t a1, unint64_t a2, int a3)
{
  if (!*(a1 + 576))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a2 += atomic_fetch_add((a1 + 584), a2);
        return a2;
      }

      if (a3 != 2)
      {
        return -1;
      }

      a2 += *(a1 + 40);
    }

    atomic_store(a2, (a1 + 584));
    return a2;
  }

  return -1;
}

uint64_t graisAbort(uint64_t result)
{
  if (!*(result + 576))
  {
    *(result + 576) = 1;
    v1 = *(result + 24);
    if (v1)
    {
      return v1(*(result + 8));
    }
  }

  return result;
}

uint64_t sendMessage_0(uint64_t a1, int a2, int a3)
{
  if (pthread_mutex_lock((a1 + 208)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_8:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "sendMessage", 339, 33, 0, "SharedArrayPop");
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v6 = *(a1 + 192);
    if (v6)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 272), (a1 + 208)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
      goto LABEL_8;
    }
  }

  v7 = v6 - 1;
  *(a1 + 192) = v7;
  v8 = *(*(a1 + 200) + 4 * v7);
  if (pthread_mutex_unlock((a1 + 208)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
    goto LABEL_8;
  }

  v10 = (*(a1 + 80) + 8 * v8);
  *v10 = a2;
  v10[1] = a3;
  if ((SharedArrayPush_0((a1 + 320), v8) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "sendMessage", 347, 33, 0, "SharedArrayPush");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t contextPassThroughProc(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 104) = *(a2 + 64);
  *(a1 + 88) = v4;
  *(a1 + 72) = v3;
  *(a1 + 56) = v2;
  v5 = *(a1 + 120);
  if (v5)
  {
    return v5(*(a1 + 112));
  }

  else
  {
    return 0;
  }
}

uint64_t verifySegmentProc(uint64_t a1, size_t __size, uint64_t a3, int a4, void *a5, size_t a6)
{
  v27 = *MEMORY[0x29EDCA608];
  if (*(a1 + 56) >= __size)
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v13 = malloc(__size);
    v14 = v13;
    if (v13)
    {
      v15 = *(a1 + 8);
      __s2 = a5;
      if (*(v15 + 32))
      {
        v16 = 0;
        if (__size)
        {
          v17 = v13;
          v18 = __size;
          while (1)
          {
            v19 = (*(v15 + 32))(*v15, v17, v18, a3);
            if (v19 < 0)
            {
              break;
            }

            if (v19)
            {
              v17 = (v17 + v19);
              v16 += v19;
              a3 += v19;
              v18 -= v19;
              if (v18)
              {
                continue;
              }
            }

            goto LABEL_13;
          }

          v16 = v19;
        }
      }

      else
      {
        v16 = -1;
      }

LABEL_13:
      if (v16 == __size)
      {
        v20 = aeaChecksum(v25, a4, v14, __size);
        v6 = 0;
        if (v20 < 0 || LODWORD(v25[0]) != a6)
        {
          goto LABEL_18;
        }

        if (!memcmp(v25 + 4, __s2, a6))
        {
          v22 = *(a1 + 128);
          if (v22 && (v23 = *(a1 + 72)) != 0 && (v22(*(a1 + 112), ((atomic_fetch_add_explicit((a1 + 368), __size, memory_order_relaxed) + __size) * 100.0) / v23) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "verifySegmentProc", 128, 128, 0, "progress_proc");
            v6 = 0xFFFFFFFFLL;
          }

          else
          {
            v6 = 1;
          }

          goto LABEL_18;
        }
      }
    }

    v6 = 0;
LABEL_18:
    free(v14);
    return v6;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "verifySegmentProc", 112, 128, 0, "Invalid segment size");
  return 0xFFFFFFFFLL;
}

uint64_t readerProc(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[2];
  if (v3 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_19:
    v15 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "readerProc", 142, 128, *v15, "aaMalloc");
    v18 = 0;
    goto LABEL_20;
  }

  v18 = malloc(v3);
  if (!v18)
  {
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 3;
  do
  {
    v6 = v5;
    v7 = a1[2];
    v8 = *v2;
    if (*(*v2 + 32))
    {
      if (!v7)
      {
        break;
      }

      v9 = 0;
      v10 = a1[1];
      v11 = v18;
      v12 = a1[2];
      while (1)
      {
        v13 = (*(v8 + 32))(*v8, v11, v12, v10);
        if (v13 < 0)
        {
          break;
        }

        if (v13)
        {
          v11 += v13;
          v9 += v13;
          v10 = (v10 + v13);
          v12 = (v12 - v13);
          if (v12)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v9 = v13;
    }

    else
    {
      v9 = -1;
    }

LABEL_14:
    if (v7 == v9)
    {
      break;
    }

    v5 = v6 - 1;
    v4 = 1;
  }

  while (v6);
  if ((AAAsyncByteStreamProcess(v2[4], v18, a1[2], a1[1]) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "readerProc", 149, 128, 0, "AAAsyncByteStreamProcess");
  }

  else if ((v4 & 1) == 0)
  {
    v14 = 0;
    goto LABEL_25;
  }

LABEL_20:
  if (!pthread_mutex_lock((v2 + 29)))
  {
    v16 = *(v2 + 56);
    *(v2 + 56) = v16 + 1;
    if (v16 || !pthread_cond_broadcast((v2 + 37)))
    {
      pthread_mutex_unlock((v2 + 29));
    }
  }

  v14 = 0xFFFFFFFFLL;
LABEL_25:
  free(v18);
  return v14;
}

uint64_t writerProc_0(uint64_t a1, size_t a2, uint64_t a3, char *a4)
{
  v6 = a2;
  if (*(a1 + 384))
  {
    if (pthread_mutex_lock((a1 + 160)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "writerProc", 172, 128, 0, "MutexLock");
      return 0xFFFFFFFFLL;
    }

    v12 = atomic_load((a1 + 376));
    if (!v12)
    {
      atomic_compare_exchange_strong((a1 + 376), &v12, 1u);
    }

    v13 = *(a1 + 360);
    if (v13 <= a3)
    {
      if (v13 < a3)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = *(a1 + 344);
        do
        {
          if (!*(v18 + v16))
          {
            v31 = (v18 + v16);
            goto LABEL_57;
          }

          ++v17;
          v16 += 24;
          v15 += 2;
        }

        while (v17 != *(a1 + 352));
        if (*(a1 + 388))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "writerProc", 190, 128, 0, "too many writes pending");
          goto LABEL_14;
        }

        if (v17 < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "writerProc", 198, 128, 0, "too many writes pending");
          goto LABEL_14;
        }

        if (is_mul_ok(v15, 0x18uLL) && 24 * v15 <= 0x2000000000)
        {
          v33 = calloc(v15, 0x18uLL);
          if (v33)
          {
            v34 = v33;
            memcpy(v33, *(a1 + 344), 24 * *(a1 + 352));
            free(*(a1 + 344));
            *(a1 + 344) = v34;
            *(a1 + 352) = v15;
            v31 = &v34[v16];
LABEL_57:
            if (v6 < 0x2000000001)
            {
              v32 = malloc(v6);
              *v31 = v32;
              if (v32)
              {
                memcpy(v32, a4, v6);
                v14 = 0;
                *(v31 + 1) = a3;
                *(v31 + 2) = v6;
                goto LABEL_54;
              }
            }

            else
            {
              *__error() = 12;
              *v31 = 0;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "writerProc", 217, 128, 0, "malloc");
            goto LABEL_14;
          }
        }

        else
        {
          *__error() = 12;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "writerProc", 200, 128, 0, "too many writes pending");
        goto LABEL_14;
      }

      for (i = 0; ; v6 = *(i + 16))
      {
        v22 = *(a1 + 8);
        if (*(v22 + 24))
        {
          v23 = 0;
          if (v6)
          {
            v24 = v6;
            while (1)
            {
              v25 = (*(v22 + 24))(*v22, a4, v24);
              if (v25 < 1)
              {
                break;
              }

              a4 += v25;
              v23 += v25;
              v24 -= v25;
              if (!v24)
              {
                goto LABEL_39;
              }
            }

            v23 = v25;
          }
        }

        else
        {
          v23 = -1;
        }

LABEL_39:
        if (v6 != v23)
        {
          break;
        }

        if (i)
        {
          free(*i);
          *i = 0;
        }

        *(a1 + 360) += v6;
        v26 = *(a1 + 128);
        if (v26)
        {
          v27 = *(a1 + 72);
          if (v27)
          {
            v26(*(a1 + 112), ((atomic_fetch_add_explicit((a1 + 368), v6, memory_order_relaxed) + v6) * 100.0) / v27);
          }
        }

        if (pthread_mutex_lock((a1 + 232)) || (v28 = *(a1 + 224), *(a1 + 224) = v28 + 1, !v28) && pthread_cond_broadcast((a1 + 296)) || pthread_mutex_unlock((a1 + 232)))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "writerProc", 241, 128, 0, "SemRelease");
          goto LABEL_14;
        }

        v29 = 0;
        i = *(a1 + 344);
        while (*(i + 8) != *(a1 + 360))
        {
          ++v29;
          i += 24;
          if (v29 == *(a1 + 352))
          {
            v14 = 0;
            goto LABEL_54;
          }
        }

        a4 = *i;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "writerProc", 229, 128, 0, "aaByteStreamWriteExpected");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "writerProc", 178, 128, 0, "data already written");
    }

LABEL_14:
    v14 = 0xFFFFFFFFLL;
LABEL_54:
    pthread_mutex_unlock((a1 + 160));
    return v14;
  }

  v8 = *(a1 + 8);
  if (*(v8 + 40))
  {
    v9 = 0;
    if (a2)
    {
      v10 = a2;
      while (1)
      {
        v11 = (*(v8 + 40))(*v8, a4, v10, a3);
        if (v11 < 1)
        {
          break;
        }

        a4 += v11;
        v9 += v11;
        a3 += v11;
        v10 -= v11;
        if (!v10)
        {
          goto LABEL_24;
        }
      }

      v9 = v11;
    }
  }

  else
  {
    v9 = -1;
  }

LABEL_24:
  if (v9 != v6)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "writerProc", 166, 128, 0, "aaByteStreamPWriteExpected");
    return 0xFFFFFFFFLL;
  }

  v19 = *(a1 + 128);
  if (v19)
  {
    v20 = *(a1 + 72);
    if (v20)
    {
      if ((v19(*(a1 + 112), ((atomic_fetch_add_explicit((a1 + 368), v6, memory_order_relaxed) + v6) * 100.0) / v20) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "writerProc", 167, 128, 0, "progress_proc");
        return 0xFFFFFFFFLL;
      }
    }
  }

  return 0;
}

uint64_t AEADecryptToStreamChunk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6, unint64_t a7, unint64_t a8, int a9)
{
  DefaultNThreads = a9;
  v70 = *MEMORY[0x29EDCA608];
  v67 = 0u;
  __count = 0u;
  v65 = 0u;
  memset(v64, 0, sizeof(v64));
  *v63 = 0u;
  *v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  if (!a9)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v54[0] = a1;
  v54[1] = a2;
  *&v61 = a3;
  *(&v61 + 1) = a4;
  v62[0] = a5;
  *&__count = 3 * DefaultNThreads - 1;
  v18 = (a8 & 0x400) == 0 || *(a2 + 40) == 0;
  v68 = v18;
  v19 = (a8 & 0x100000000000000) != 0 && *(a2 + 32) && !v18;
  HIDWORD(v67) = v19;
  v69 = a6 == 0;
  if (pthread_mutex_init(v64, 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 288, 128, 0, "MutexInit");
  }

  else
  {
    *&v64[64] = 0;
    if (pthread_mutex_init(&v64[72], 0) || pthread_cond_init(&v64[136], 0))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 289, 128, 0, "SemInit");
    }

    else if (DefaultNThreads < 2)
    {
LABEL_46:
      if (is_mul_ok(__count, 0x18uLL) && (24 * __count) < 0x2000000001)
      {
        v29 = calloc(__count, 0x18uLL);
      }

      else
      {
        v28 = __error();
        v29 = 0;
        *v28 = 12;
      }

      *(&v65 + 1) = v29;
      if (DefaultNThreads < 0)
      {
        *__error() = 12;
        v62[1] = 0;
        v31 = __error();
        v30 = 0;
        *v31 = 12;
      }

      else
      {
        v62[1] = calloc(DefaultNThreads, 0x18uLL);
        v30 = calloc(DefaultNThreads, 8uLL);
      }

      v63[0] = v30;
      if (*(&v65 + 1) && v62[1] && v30)
      {
        if (HIDWORD(v67))
        {
          v32 = verifySegmentProc;
        }

        else
        {
          v32 = 0;
        }

        v33 = AEADecryptAsyncStreamOpen(v54, contextPassThroughProc, v32, writerProc_0, a8, DefaultNThreads);
        *&v55 = v33;
        if (v33)
        {
          if (a6)
          {
            v34 = AAChunkAsyncStreamOpen(v33, a6, a7, a8, DefaultNThreads);
            *(&v55 + 1) = v34;
            if (!v34)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 317, 128, 0, "AAChunkAsyncStreamOpen");
              goto LABEL_15;
            }

            v35 = v34;
            v33 = v55;
          }

          else
          {
            v35 = *(&v55 + 1);
          }

          if (!v35)
          {
            v35 = v33;
          }

          *&v56 = v35;
          if (DefaultNThreads >= 1)
          {
            for (i = 0; i != DefaultNThreads; v38[i++] = v39)
            {
              v38 = v63[0];
              v39 = v62[1] + 24 * i;
              *v39 = v54;
            }
          }

          v63[1] = ThreadPoolCreate(DefaultNThreads, v63[0], readerProc);
          if (v63[1])
          {
LABEL_73:
            if (!v68 || ((v40 = atomic_load(&v67 + 2)) != 0 ? (v41 = !v69) : (v41 = 1), v41))
            {
LABEL_96:
              while (1)
              {
                v50 = 0;
                v51 = 0;
                Range = AAAsyncByteStreamGetRange(v56, &v50, &v51);
                if (Range < 0)
                {
                  break;
                }

                if (Range)
                {
                  if (v50)
                  {
                    Worker = ThreadPoolGetWorker(v63[1]);
                    if (Worker)
                    {
                      v49 = v50;
                      *(Worker + 8) = v51;
                      *(Worker + 16) = v49;
                      if ((ThreadPoolRunWorker(v63[1]) & 0x80000000) == 0)
                      {
                        goto LABEL_73;
                      }

                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 365, 128, 0, "ThreadPoolRunWorker");
                    }

                    else
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 362, 128, 0, "ThreadPoolGetWorker");
                    }

                    goto LABEL_15;
                  }

                  v20 = 1;
LABEL_103:
                  ThreadPoolSync(v63[1]);
                  goto LABEL_16;
                }

                usleep(0x186A0u);
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 352, 128, 0, "AAAsyncByteStreamGetRange");
              v20 = 0;
              goto LABEL_103;
            }

            while (!pthread_mutex_lock(&v64[72]))
            {
              v52.tv_sec = 0;
              *&v52.tv_usec = 0;
              gettimeofday(&v52, 0);
              v42 = 1000 * v52.tv_usec;
              if (v52.tv_usec < 1000000)
              {
                v45 = v52.tv_sec + 1;
              }

              else
              {
                if (v42 >= 1999999999)
                {
                  v43 = 1999999999;
                }

                else
                {
                  v43 = 1000 * v52.tv_usec;
                }

                v44 = v42 - v43 + 999999999;
                v45 = v52.tv_sec + v44 / 0x3B9ACA00 + 2;
                v42 = 1000 * v52.tv_usec - 1000000000 * (v44 / 0x3B9ACA00) - 1000000000;
              }

              v53.tv_sec = v45;
              v53.tv_nsec = v42;
              do
              {
                if (*&v64[64] > 0)
                {
                  --*&v64[64];
                  if (!pthread_mutex_unlock(&v64[72]))
                  {
                    goto LABEL_96;
                  }

                  goto LABEL_106;
                }

                v46 = pthread_cond_timedwait(&v64[136], &v64[72], &v53);
              }

              while (!v46);
              if (v46 != 60 || pthread_mutex_unlock(&v64[72]))
              {
                break;
              }

              if (aaAsyncByteStreamIsCancelled(v56))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 343, 128, 0, "aaAsyncByteStreamIsCancelled");
                goto LABEL_15;
              }

              if (!v69)
              {
                goto LABEL_96;
              }
            }

LABEL_106:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 341, 128, 0, "SemTimedAcquire");
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 329, 128, 0, "ThreadPoolCreate");
          }
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 308, 128, 0, "AEADecryptAsyncStreamOpen");
        }
      }

      else
      {
        v36 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 299, 128, v36, "malloc");
      }
    }

    else
    {
      v26 = DefaultNThreads - 1;
      while (!pthread_mutex_lock(&v64[72]))
      {
        if (!(*&v64[64])++)
        {
          if (pthread_cond_broadcast(&v64[136]))
          {
            break;
          }
        }

        if (pthread_mutex_unlock(&v64[72]))
        {
          break;
        }

        if (!--v26)
        {
          goto LABEL_46;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 292, 128, 0, "SemRelease");
    }
  }

LABEL_15:
  v20 = 0;
LABEL_16:
  if (DefaultNThreads >= 1)
  {
    do
    {
      if (!pthread_mutex_lock(&v64[72]))
      {
        v21 = (*&v64[64])++;
        if (v21 || !pthread_cond_broadcast(&v64[136]))
        {
          pthread_mutex_unlock(&v64[72]);
        }
      }

      --DefaultNThreads;
    }

    while (DefaultNThreads);
  }

  if ((ThreadPoolDestroy(v63[1]) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 373, 128, 0, "Readers reported errors");
    v20 = 0;
  }

  if ((AAAsyncByteStreamClose(*(&v55 + 1)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 374, 128, 0, "Async stream reported errors");
    v20 = 0;
  }

  if ((AAAsyncByteStreamClose(v55) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToStream.c", "AEADecryptToStreamChunk", 375, 128, 0, "Async stream reported errors");
    v20 = 0;
  }

  pthread_mutex_destroy(v64);
  if (!pthread_mutex_destroy(&v64[72]))
  {
    pthread_cond_destroy(&v64[136]);
  }

  v22 = *(&v65 + 1);
  if (*(&v65 + 1))
  {
    if (__count)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        free(*(*(&v65 + 1) + v23));
        ++v24;
        v23 += 24;
      }

      while (v24 < __count);
      v22 = *(&v65 + 1);
    }

    free(v22);
  }

  free(v62[1]);
  free(v63[0]);
  if (v20)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
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

unsigned int *PagedFileCreate(const char *a1, unint64_t a2, unint64_t a3, int a4)
{
  memset(&v49, 0, sizeof(v49));
  if (stat(a1, &v49))
  {
    v8 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileCreate", 320, 21, v8, "%s");
    return 0;
  }

  st_size = v49.st_size;
  if (v49.st_size <= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = v49.st_size;
  }

  v11 = v10 + 4095;
  if (v11 >= 0xFFFFFFEF000)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileCreate", 324, 21, 0, "File is too large to be patched in place");
    return 0;
  }

  v14 = (v11 >> 12) + 16;
  if ((a3 >> 12) <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a3 >> 12;
  }

  v16 = v15 + v14;
  v17 = (v15 << 12) + 4096 + 4 * v15 + 16 * (v14 & 0x3FFFFFFF) + 8 * v16 + 8 * v16 + 216;
  v18 = malloc(v17);
  v12 = v18;
  if (!v18)
  {
    v22 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileCreate", 339, 21, *v22, "malloc");
    return v12;
  }

  bzero(v18, v17);
  if (a4 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "Opening paged file %s, %u pages in file, %u pages in cache, %u pages total, memory usage: %zu B\n", a1, v14, v15, v15 + v14, v17);
  }

  *v12 = -1;
  *(v12 + 1) = st_size;
  *(v12 + 2) = a2;
  v12[32] = a4;
  v12[6] = v14;
  v12[7] = v15;
  v12[8] = v16;
  v19 = open(a1, 2);
  *v12 = v19;
  if (v19 < 0)
  {
    v20 = *__error();
    v48 = a1;
    v21 = 357;
    goto LABEL_23;
  }

  if (fcntl(v19, 48, 1))
  {
    fwrite("Warning: couldn't set F_NOCACHE on paged file\n", 0x2EuLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  if (ftruncate(*v12, v14 << 12))
  {
    v20 = *__error();
    v48 = a1;
    v21 = 365;
LABEL_23:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileCreate", v21, 21, v20, "%s", v48);
LABEL_24:
    if ((*v12 & 0x80000000) == 0)
    {
      close(*v12);
    }

    free(v12);
    return 0;
  }

  v23 = v12[6];
  v24 = v12[7];
  v25 = &v12[v23 + 48];
  v26 = v25 + 4 * v23;
  v27 = v26 + 4 * v23;
  *(v12 + 14) = v26;
  *(v12 + 15) = v27;
  v28 = v27 + 4 * v23;
  *(v12 + 7) = v28;
  *(v12 + 8) = v25;
  v29 = v12[8];
  v30 = v28 + 4 * v29;
  v31 = v30 + 4 * v29;
  *(v12 + 5) = v31;
  *(v12 + 6) = v12 + 48;
  v32 = v31 + 8 * v29;
  *(v12 + 9) = v30;
  *(v12 + 10) = v32;
  v33 = v32 + 4096;
  v34 = v32 + 4096 + (v24 << 12);
  *(v12 + 11) = v33;
  *(v12 + 12) = v34;
  if (v34 + 4 * v24 > v12 + v17)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileCreate", 378, 21, 0, "in memory allocation for PagedFile", v47);
    goto LABEL_24;
  }

  if (v29)
  {
    v35 = 0;
    do
    {
      *(v28 + 8 * v29) = 0;
      *(v28 + 4 * v35) = -1;
      *(v28 + 4 * v29) = -1;
      ++v35;
      ++v29;
    }

    while (v35 < v12[8]);
    v36 = v12[6];
  }

  else
  {
    v36 = v23;
  }

  if (v36)
  {
    v37 = 0;
    v38 = v23;
    v39 = 2 * v23;
    v40 = 3 * v23;
    v41 = v12 + 48;
    v42 = v36;
    do
    {
      *v41 = -1;
      v41[v38] = -1;
      v41[v39] = -1;
      v41[v40] = -1;
      ++v37;
      ++v41;
    }

    while (v37 < v36);
    v43 = 0;
    v44 = 0;
    v45 = st_size;
    do
    {
      if (v43 >= st_size)
      {
        break;
      }

      v46 = v45 - 4096;
      if (v45 >= 0x1000)
      {
        v45 = 4096;
      }

      *(v31 + 8 * v44) = v45;
      *(v28 + 4 * v44) = v44;
      v12[v44 + 48] = v44;
      ++v44;
      v43 += 4096;
      v45 = v46;
    }

    while (v44 < v42);
  }

  return v12;
}

uint64_t PagedFileDestroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    for (i = *(result + 24); ; ++i)
    {
      if (i >= *(v1 + 32))
      {
        v3 = 1;
        goto LABEL_8;
      }

      if (storeCachePos(v1, i))
      {
        break;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "flushCache", 243, 21, 0, "flushing cache pos");
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDestroy", 423, 21, 0, "flush cache");
    v3 = 0;
LABEL_8:
    if ((*v1 & 0x80000000) == 0)
    {
      if (ftruncate(*v1, *(v1 + 16)))
      {
        v4 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDestroy", 427, 21, *v4, "Final truncate");
        v3 = 0;
      }

      if (fcntl(*v1, 51, 0) == -1)
      {
        v5 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDestroy", 432, 21, *v5, "Final FULLSYNC");
        v3 = 0;
      }

      close(*v1);
    }

    if (*(v1 + 128) >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "Closing paged file, input size: %llu B, output size: %llu B, bytes read: %llu B, bytes written: %llu B\n", *(v1 + 8), *(v1 + 16), *(v1 + 136), *(v1 + 144));
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

uint64_t PagedFileDump(uint64_t a1, const char *a2)
{
  v3 = MEMORY[0x29EDCA610];
  v4 = "current PagedFile state";
  if (a2)
  {
    v4 = a2;
  }

  fprintf(*MEMORY[0x29EDCA610], "*** %s\n", v4);
  LODWORD(v5) = *(a1 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(*(a1 + 40) + 8 * v6);
      if (!v13)
      {
        if (v6 < *(a1 + 24))
        {
          ++v11;
        }

        else
        {
          ++v12;
        }
      }

      v14 = *(*(a1 + 56) + 4 * v6);
      if (v14 != -1)
      {
        ++v7;
        v9 += v13;
        if (v6 != *(*(a1 + 48) + 4 * v14))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDump", 472, 21, 0, "invalid reverse index for IN");
        }
      }

      v15 = *(*(a1 + 72) + 4 * v6);
      if (v15 != -1)
      {
        ++v8;
        v10 += v13;
        if (v6 != *(*(a1 + 64) + 4 * v15))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDump", 480, 21, 0, "invalid reverse index for OUT");
        }
      }

      if (*(*(a1 + 56) + 4 * v6) != -1 && *(*(a1 + 72) + 4 * v6) != -1)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDump", 483, 21, 0, "inconsistency in inPage/outPage indices");
      }

      v16 = *(*(a1 + 56) + 4 * v6);
      if (v13)
      {
        if (v16 == -1 && *(*(a1 + 72) + 4 * v6) == -1)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDump", 485, 21, 0, "inconsistency in nRefs != 0");
        }
      }

      else if (v16 != -1 || *(*(a1 + 72) + 4 * v6) != -1)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDump", 486, 21, 0, "inconsistency in nRefs == 0");
      }

      ++v6;
      v5 = *(a1 + 32);
    }

    while (v6 < v5);
    v3 = MEMORY[0x29EDCA610];
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  fprintf(*v3, "  %u total pages\n", v5);
  fprintf(*v3, "  %u free pages in file\n", v11);
  fprintf(*v3, "  %u free pages in cache\n", v12);
  fprintf(*v3, "  %u input pages stored, %llu bytes referenced\n", v7, v9);
  return fprintf(*v3, "  %u output pages stored, %llu bytes referenced\n", v8, v10);
}

uint64_t PagedFileRetainIn(void *a1, unint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a1[6];
  while (1)
  {
    v4 = *(v3 + 4 * (a2 >> 12));
    if (v4 == -1)
    {
      break;
    }

    v5 = a1[15];
    *(a1[14] + 4 * (a2 >> 12)) = v4;
    v6 = 4096 - (a2 & 0xFFF);
    *(v5 + 4 * v4) = a2 >> 12;
    if (v6 >= a3)
    {
      v6 = a3;
    }

    *(a1[5] + 8 * v4) += v6;
    a2 += v6;
    a3 -= v6;
    if (!a3)
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileRetainIn", 503, 21, 0, "input page is not stored");
  return 0xFFFFFFFFLL;
}

uint64_t PagedFileReleaseIn(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = *(a1 + 48);
  v7 = MEMORY[0x29EDCA610];
  while (1)
  {
    v8 = 4096 - (a2 & 0xFFF) >= v3 ? v3 : 4096 - (a2 & 0xFFF);
    v9 = *(v6 + 4 * (a2 >> 12));
    if (v9 == -1)
    {
      break;
    }

    v10 = *(a1 + 40);
    v11 = *(v10 + 8 * v9) - v8;
    *(v10 + 8 * v9) = v11;
    if (!v11)
    {
      if (*(a1 + 128) >= 3)
      {
        fprintf(*v7, "PagedFile: input page %u removed from storage\n", a2 >> 12);
        v6 = *(a1 + 48);
      }

      *(*(a1 + 56) + 4 * v9) = -1;
      *(v6 + 4 * (a2 >> 12)) = -1;
    }

    a2 += v8;
    v3 -= v8;
    if (!v3)
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileReleaseIn", 525, 21, 0, "input page is not stored");
  return 0xFFFFFFFFLL;
}

uint64_t PagedFileRetainOut(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = *(a1 + 64);
  v7 = MEMORY[0x29EDCA610];
  while (1)
  {
    v8 = a2 >> 12;
    if (4096 - (a2 & 0xFFF) >= v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = 4096 - (a2 & 0xFFF);
    }

    v10 = *(v6 + 4 * v8);
    if (v10 != -1)
    {
      goto LABEL_11;
    }

    FreeCachePos = getFreeCachePos(a1);
    if (FreeCachePos == -1)
    {
      break;
    }

    v12 = FreeCachePos;
    if (*(a1 + 128) >= 3)
    {
      fprintf(*v7, "PagedFile: assigning cache[%u] to new output page %u\n", FreeCachePos, a2 >> 12);
    }

    v10 = v12;
    v6 = *(a1 + 64);
    *(*(a1 + 72) + 4 * v12) = v8;
    *(v6 + 4 * (a2 >> 12)) = v12;
LABEL_11:
    *(*(a1 + 40) + 8 * v10) += v9;
    a2 += v9;
    v3 -= v9;
    if (!v3)
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileRetainOut", 555, 21, 0, "no storage available for output page");
  return 0xFFFFFFFFLL;
}

uint64_t getFreeCachePos(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 >= v2)
  {
LABEL_13:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "getFreeCachePos", 231, 21, 0, "no cache");
    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
    v5 = 0xFFFFFFFFLL;
    v6 = *(a1 + 24);
    do
    {
      if (!*(*(a1 + 40) + 8 * v6))
      {
        return v6;
      }

      if (v5 == -1 || *(*(a1 + 96) + v4) < *(*(a1 + 96) + 4 * (v5 - v1)))
      {
        v5 = v6;
      }

      ++v6;
      v4 += 4;
    }

    while (v2 != v6);
    if (v5 == -1)
    {
      goto LABEL_13;
    }

    if (*(a1 + 128) >= 3)
    {
      fprintf(*MEMORY[0x29EDCA610], "PagedFile: storing oldest cache[%u] to file\n", v5);
    }

    if (storeCachePos(a1, v5))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "getFreeCachePos", 235, 21, 0, "flushing cache pos");
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

BOOL PagedFileHasNoIn(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    if (*(*(a1 + 56) + 4 * v2) != -1 && *(*(a1 + 40) + 8 * v2))
    {
      break;
    }

    v3 = ++v2 >= v1;
  }

  while (v1 != v2);
  return v3;
}

BOOL PagedFileHasAllOut(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      if (*(*(a1 + 72) + 4 * v3) != -1)
      {
        v5 = *(*(a1 + 40) + 8 * v3);
        v4 += v5;
        if (v3 < (v1 >> 12) && v5 != 4096)
        {
          break;
        }
      }

      if (v2 == ++v3)
      {
        return v4 == v1;
      }
    }

    return 0;
  }

  else
  {
    v4 = 0;
    return v4 == v1;
  }
}

uint64_t PagedFileReadAndReleaseIn(uint64_t a1, unint64_t a2, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v8 = a2 >> 12;
    if (4096 - (a2 & 0xFFF) >= v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = 4096 - (a2 & 0xFFF);
    }

    v10 = *(a1 + 24);
    if (v10 <= v8)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "inputPageData", 252, 21, 0, "invalid input PAGE");
      goto LABEL_27;
    }

    v11 = *(*(a1 + 48) + 4 * v8);
    if (v11 == -1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "inputPageData", 254, 21, 0, "input page is not stored");
      goto LABEL_27;
    }

    v12 = (a2 >> 12);
    if (v11 >= v10)
    {
      v14 = -1;
    }

    else
    {
      FreeCachePos = getFreeCachePos(a1);
      if (FreeCachePos == -1)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "inputPageData", 261, 21, 0, "could not get a free pos from cache");
        goto LABEL_27;
      }

      v14 = FreeCachePos;
      v11 = *(*(a1 + 48) + 4 * v12);
      v10 = *(a1 + 24);
    }

    if (v11 < v10)
    {
      break;
    }

LABEL_15:
    v15 = v11 >= v10;
    v16 = v11 - v10;
    if (!v15 || v11 >= *(a1 + 32))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "inputPageData", 273, 21, 0, "could not move input page in cache");
      goto LABEL_27;
    }

    v17 = *(a1 + 104);
    *(a1 + 104) = v17 + 1;
    *(*(a1 + 96) + 4 * v16) = v17;
    v18 = cacheData(a1, v11);
    if (!v18)
    {
      goto LABEL_27;
    }

    memcpy(a4, (v18 + (a2 & 0xFFF)), v9);
    PagedFileReleaseIn(a1, a2, v9);
    a2 += v9;
    a4 += v9;
    v5 -= v9;
    if (!v5)
    {
      return 0;
    }
  }

  if (!movePage(a1, v11, v14))
  {
    v11 = *(*(a1 + 48) + 4 * v12);
    v10 = *(a1 + 24);
    goto LABEL_15;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "inputPageData", 268, 21, 0, "moving page from disk to cache");
LABEL_27:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileReadAndReleaseIn", 615, 21, 0, "unable to load input page");
  return 0xFFFFFFFFLL;
}

uint64_t PagedFileRetainAndWriteOut(uint64_t a1, unint64_t a2, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    if (4096 - (a2 & 0xFFF) >= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4096 - (a2 & 0xFFF);
    }

    if (PagedFileRetainOut(a1, a2, v8))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileRetainAndWriteOut", 639, 21, 0, "retain output chunk");
      return 0xFFFFFFFFLL;
    }

    v9 = *(a1 + 24);
    if (v9 <= (a2 >> 12))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "outputPageData", 286, 21, 0, "invalid output PAGE");
      goto LABEL_29;
    }

    v10 = *(*(a1 + 64) + 4 * (a2 >> 12));
    if (v10 == -1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "outputPageData", 288, 21, 0, "output page is not stored");
      goto LABEL_29;
    }

    v11 = (a2 >> 12);
    if (v10 >= v9)
    {
      v13 = -1;
    }

    else
    {
      FreeCachePos = getFreeCachePos(a1);
      if (FreeCachePos == -1)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "outputPageData", 294, 21, 0, "could not get a free pos from cache");
        goto LABEL_29;
      }

      v13 = FreeCachePos;
      v10 = *(*(a1 + 64) + 4 * v11);
      v9 = *(a1 + 24);
    }

    if (v10 < v9)
    {
      break;
    }

LABEL_16:
    v14 = v10 >= v9;
    v15 = v10 - v9;
    if (!v14 || v10 >= *(a1 + 32))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "outputPageData", 305, 21, 0, "could not move output page in cache");
      goto LABEL_29;
    }

    v16 = *(a1 + 104);
    *(a1 + 104) = v16 + 1;
    *(*(a1 + 96) + 4 * v15) = v16;
    v17 = cacheData(a1, v10);
    if (!v17)
    {
      goto LABEL_29;
    }

    memcpy((v17 + (a2 & 0xFFF)), a4, v8);
    a2 += v8;
    a4 += v8;
    v5 -= v8;
    if (!v5)
    {
      return 0;
    }
  }

  if (!movePage(a1, v10, v13))
  {
    v10 = *(*(a1 + 64) + 4 * v11);
    v9 = *(a1 + 24);
    goto LABEL_16;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "outputPageData", 301, 21, 0, "moving page from disk to cache");
LABEL_29:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileRetainAndWriteOut", 643, 21, 0, "unable to load output page");
  return 0xFFFFFFFFLL;
}

uint64_t storeCachePos(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (v2 > a2 || *(a1 + 32) <= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 165, 21, 0, "invalid cache POS");
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 8 * a2);
  if (!v6)
  {
    return 0;
  }

  v7 = *(a1 + 56);
  v8 = *(v7 + 4 * a2);
  if (v8 == -1)
  {
    v12 = *(*(a1 + 72) + 4 * a2);
    if (v12 != -1)
    {
      if (*(v5 + 8 * v12))
      {
        v13 = -v2;
        v14 = v2 - 1;
        do
        {
          if (v14 == -1)
          {
            goto LABEL_18;
          }

          v15 = *(v5 + 8 * v14);
          ++v13;
          --v14;
        }

        while (v15);
        if (v13 == 1)
        {
LABEL_18:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 208, 21, 0, "no free pages in file");
          return 0xFFFFFFFFLL;
        }

        v20 = -v13;
        if (*(a1 + 128) >= 3)
        {
          fwrite("PagedFile: vacating file pos\n", 0x1DuLL, 1uLL, *MEMORY[0x29EDCA610]);
        }

        if (movePage(a1, v12, v20))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 210, 21, 0, "vacating page in file");
          return 0xFFFFFFFFLL;
        }
      }

      if (*(a1 + 128) >= 3)
      {
        fwrite("PagedFile: storing cached output page to file\n", 0x2EuLL, 1uLL, *MEMORY[0x29EDCA610]);
      }

      result = movePage(a1, a2, v12);
      if (result)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 213, 21, 0, "moving output page from cache to disk");
        return 0xFFFFFFFFLL;
      }

      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 215, 21, 0, "nRefs inconsistency");
    return 0xFFFFFFFFLL;
  }

  v9 = *(*(a1 + 112) + 4 * v8);
  if (v9 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 175, 21, 0, "cached input page does not have a file position");
    return 0xFFFFFFFFLL;
  }

  if (*(*(a1 + 120) + 4 * v9) == v8)
  {
    result = 0;
    *(*(a1 + 48) + 4 * v8) = v9;
    *(v5 + 8 * v9) = v6;
    *(v7 + 4 * v9) = v8;
    v11 = *(a1 + 72);
    *(v11 + 4 * v9) = -1;
    *(v5 + 8 * a2) = 0;
    *(v7 + 4 * a2) = -1;
    *(v11 + 4 * a2) = -1;
    return result;
  }

  v16 = -v2;
  v17 = v2 - 1;
  do
  {
    if (v17 == -1)
    {
      goto LABEL_24;
    }

    v18 = *(v5 + 8 * v17);
    ++v16;
    --v17;
  }

  while (v18);
  if (v16 == 1)
  {
LABEL_24:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 196, 21, 0, "no free pages in file");
    return 0xFFFFFFFFLL;
  }

  v19 = -v16;
  if (*(a1 + 128) >= 3)
  {
    fwrite("PagedFile: storing cached input page to file\n", 0x2DuLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  result = movePage(a1, a2, v19);
  if (result)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 198, 21, 0, "moving input page from cache to disk");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t movePage(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  if (v3 <= a2 || v3 <= a3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "movePage", 77, 21, 0, "invalid SRC/DST");
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 40);
  if (!*(v7 + 8 * a2))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "movePage", 78, 21, 0, "SRC is empty");
    return 0xFFFFFFFFLL;
  }

  if (*(v7 + 8 * a3))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "movePage", 79, 21, 0, "DST is not empty");
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 24);
  if (v10 > a2 && v10 > a3)
  {
    v15 = *(*(a1 + 56) + 4 * a2);
    if (v15 != -1)
    {
      *(*(a1 + 112) + 4 * v15) = a3;
    }

    *(*(a1 + 120) + 4 * a3) = v15;
    if (*(a1 + 128) >= 3)
    {
      fprintf(*MEMORY[0x29EDCA610], "PagedFile: moving page from file[%u] to file[%u]\n", a2, a3);
    }

    if (pread(*a1, *(a1 + 80), 0x1000uLL, a2 << 12) != 4096)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "movePage", 93, 21, 0, "reading page");
      return 0xFFFFFFFFLL;
    }

    if (pwrite(*a1, *(a1 + 80), 0x1000uLL, a3 << 12) != 4096)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "movePage", 94, 21, 0, "writing page");
      return 0xFFFFFFFFLL;
    }

    *(a1 + 136) = vaddq_s64(*(a1 + 136), vdupq_n_s64(0x1000uLL));
  }

  else if (v10 > a2 || v10 <= a3)
  {
    if (v10 <= a2 || v10 > a3)
    {
      if (*(a1 + 128) >= 3)
      {
        fprintf(*MEMORY[0x29EDCA610], "PagedFile: moving page from cache[%u] to cache[%u]\n", a2, a3);
      }

      v19 = cacheData(a1, a3);
      v20 = cacheData(a1, a2);
      memcpy(v19, v20, 0x1000uLL);
    }

    else
    {
      v16 = *(*(a1 + 56) + 4 * a2);
      if (v16 != -1)
      {
        *(*(a1 + 112) + 4 * v16) = a2;
      }

      *(*(a1 + 120) + 4 * a2) = v16;
      if (*(a1 + 128) >= 3)
      {
        fprintf(*MEMORY[0x29EDCA610], "PagedFile: moving page from file[%u] to cache[%u]\n", a2, a3);
      }

      v17 = *a1;
      v18 = cacheData(a1, a3);
      if (pread(v17, v18, 0x1000uLL, a2 << 12) != 4096)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "movePage", 121, 21, 0, "reading page");
        return 0xFFFFFFFFLL;
      }

      *(a1 + 136) += 4096;
    }
  }

  else
  {
    v12 = *(*(a1 + 56) + 4 * a2);
    if (v12 != -1)
    {
      *(*(a1 + 112) + 4 * v12) = a3;
    }

    *(*(a1 + 120) + 4 * a3) = v12;
    if (*(a1 + 128) >= 3)
    {
      fprintf(*MEMORY[0x29EDCA610], "PagedFile: moving page from cache[%u] to file[%u]\n", a2, a3);
    }

    v13 = *a1;
    v14 = cacheData(a1, a2);
    if (pwrite(v13, v14, 0x1000uLL, a3 << 12) != 4096)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "movePage", 108, 21, 0, "writing page");
      return 0xFFFFFFFFLL;
    }

    *(a1 + 144) += 4096;
  }

  v21 = *(a1 + 40);
  *(v21 + 8 * a3) = *(v21 + 8 * a2);
  *(v21 + 8 * a2) = 0;
  v22 = *(a1 + 56);
  v23 = *(v22 + 4 * a2);
  *(v22 + 4 * a3) = v23;
  *(v22 + 4 * a2) = -1;
  if (v23 != -1)
  {
    *(*(a1 + 48) + 4 * v23) = a3;
  }

  v24 = *(a1 + 72);
  v25 = *(v24 + 4 * a2);
  *(v24 + 4 * a3) = v25;
  *(v24 + 4 * a2) = -1;
  result = 0;
  if (v25 != -1)
  {
    *(*(a1 + 64) + 4 * v25) = a3;
  }

  return result;
}

uint64_t cacheData(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 24);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v5 && *(a1 + 32) > a2)
  {
    return *(a1 + 88) + (v6 << 12);
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "cacheData", 66, 21, 0, "invalid cache pos", v2, v3);
  return 0;
}

void joinThread_cold_1()
{
  v0 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 623, 5, *v0, "pthread_join");
  __break(1u);
}

void pc_log_error_cold_1(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2[0] = 67109378;
  v2[1] = a2;
  v3 = 2082;
  v4 = a1;
  _os_log_error_impl(&dword_296A3B000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "[0x%08x] %{public}s", v2, 0x12u);
}

void getBXDiffControls_cold_1()
{
  v0 = __error();
  v1 = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiffBase.c", "bxdiffControlsWithMatches", 255, 24, *v0, "malloc");
  __break(1u);
  BZ2_bzDecompress(v1);
}