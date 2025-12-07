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

uint64_t IFileStreamCreateWithFD(int a1, unint64_t a2, uint64_t a3)
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
    *v7 = a1;
    *(v7 + 4) = 0;
    v9 = a2 + a3;
    if (__CFADD__(a2, a3))
    {
      v9 = -1;
    }

    *(v7 + 16) = a2;
    *(v7 + 24) = v9;
    if (pthread_mutex_init(v8, 0))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFD", 325, 29, 0, "pthread_mutex_init");
    }

    else
    {
      clampIfRegularFile(v7);
      if ((seekTo(v7, a2) & 0x80000000) == 0)
      {
        return v7;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFD", 331, 29, 0, "seek error");
    }

    IFileStreamDestroy(v7);
    return 0;
  }

  else
  {
    v10 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFD", 314, 29, *v10, "malloc");
  }

  return v7;
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
      *(v9 + 1) = a1;
      *(v9 + 2) = a2;
      *(v9 + 3) = a3;
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

void OBufferedStreamDestroy(void ***a1)
{
  if (a1)
  {
    MemBufferFlushToOStream(*a1, 0xFFFFFFFFFFFFFFFFLL, a1[1], a1[3]);
    MemBufferDestroy(*a1);

    free(a1);
  }
}

uint64_t OBufferedStreamWrite(unint64_t **a1, char *a2, unint64_t a3)
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

void *aaAssetDecompressionStreamOpen(uint64_t a1)
{
  v2 = malloc(0x70uLL);
  v3 = v2;
  if (!v2)
  {
    v6 = 277;
LABEL_6:
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "aaAssetDecompressionStreamOpen", v6, 132, *v7, "malloc");
    closeProc_0(v3);
    return 0;
  }

  memset_s(v2, 0x70uLL, 0, 0x70uLL);
  *v3 = a1;
  v4 = malloc(0x38uLL);
  if (!v4)
  {
    v6 = 282;
    goto LABEL_6;
  }

  v5 = v4;
  memset_s(v4, 0x38uLL, 0, 0x38uLL);
  *v5 = v3;
  v5[1] = closeProc_0;
  v5[6] = closeWithStateProc_0;
  v5[3] = writeProc_0;
  v5[2] = cancelProc_0;
  return v5;
}

uint64_t closeProc_0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 8));
    free(*(result + 72));
    memset_s(v1 + 7, 0x18uLL, 0, 0x18uLL);
    free(v1[12]);
    memset_s(v1 + 10, 0x18uLL, 0, 0x18uLL);
    memset_s(v1, 0x70uLL, 0, 0x70uLL);
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

uint64_t closeWithStateProc_0(uint64_t result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = atomic_load((result + 8));
    v7 = (result + 80);
    v6 = *(result + 80);
    v25 = *(result + 24);
    v8 = *(result + 48);
    v26 = *(result + 32);
    v27 = v8;
    v9 = v5 == 0;
    v10 = (result + 56);
    v11 = *(result + 104);
    v28 = v6;
    v29 = v11;
    if (a2[3])
    {
      v13 = 0;
      v14 = &v25;
      v15 = 56;
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
          if (v13 != 56)
          {
            break;
          }

          if (!a2[3])
          {
            goto LABEL_29;
          }

          v17 = *v10;
          if (*v10)
          {
            v18 = 0;
            v19 = *(v4 + 72);
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
                goto LABEL_18;
              }
            }

            v18 = v20;
LABEL_18:
            if (v18 < 0 || !a2[3])
            {
              goto LABEL_29;
            }
          }

          v21 = *v7;
          if (*v7)
          {
            v22 = 0;
            v23 = *(v4 + 96);
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
                goto LABEL_26;
              }
            }

            v22 = v24;
LABEL_26:
            if (v22 < 0)
            {
LABEL_29:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "closeWithStateProc", 250, 132, 0, "write state");
              goto LABEL_14;
            }
          }

          if (a3)
          {
            *a3 = *(v4 + 104);
          }

          goto LABEL_15;
        }
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "closeWithStateProc", 245, 132, 0, "write state");
LABEL_14:
    v9 = 0;
LABEL_15:
    free(*(v4 + 72));
    memset_s(v7 - 3, 0x18uLL, 0, 0x18uLL);
    free(*(v4 + 96));
    memset_s(v7, 0x18uLL, 0, 0x18uLL);
    memset_s(v4, 0x70uLL, 0, 0x70uLL);
    free(v4);
    return (v9 - 1);
  }

  return result;
}

uint64_t writeProc_0(unsigned int *a1, char *__src, size_t a3)
{
  if (atomic_load(a1 + 2))
  {
    return -1;
  }

  v4 = 0;
  v9 = (a1 + 14);
  v8 = *(a1 + 7);
  v10 = (a1 + 20);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v11 = a1[6];
        if (v11 != 2)
        {
          break;
        }

        v12 = *(a1 + 5);
        v13 = v12 - v8;
        if (v12 <= v8)
        {
          v27 = *(a1 + 2);
          if (v27 && *(a1 + 6) != v12)
          {
            if (v12 != v8 || (v32 = *(a1 + 10), *(a1 + 11) - v32 < *(a1 + 4)))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "writeProc", 174, 132, 0, "invalid state", v52, *v53);
              goto LABEL_123;
            }

            v33 = v27(&v32[*(a1 + 12)]);
            if (v33 != *(a1 + 6))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "writeProc", 176, 132, 0, "corrupted stream", v52, *v53);
              goto LABEL_123;
            }

            v8 = *v10;
            if (v33)
            {
              v34 = __CFADD__(v8, v33);
              v8 += v33;
              if (v34 || v8 > *(a1 + 11))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "writeProc", 177, 132, 0, "invalid size", v52, *v53);
                goto LABEL_123;
              }

              *v10 = v8;
            }

            v28 = v10;
            if (v8)
            {
LABEL_64:
              v35 = v28[2];
              while (1)
              {
                v36 = *(*a1 + 24);
                if (!v36)
                {
                  break;
                }

                v37 = v36(**a1, v35, v8);
                if (v37 <= 0)
                {
                  break;
                }

                v35 += v37;
                v8 -= v37;
                if (!v8)
                {
                  goto LABEL_68;
                }
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "writeProc", 187, 132, 0, "write", v52, *v53);
              goto LABEL_123;
            }
          }

          else
          {
            v28 = v9;
            if (v8)
            {
              goto LABEL_64;
            }
          }

LABEL_68:
          v8 = 0;
          *(a1 + 7) = 0;
          *(a1 + 10) = 0;
          a1[6] = 1;
        }

        else
        {
          if (!a3)
          {
            goto LABEL_103;
          }

LABEL_7:
          if (v13 >= a3)
          {
            v14 = a3;
          }

          else
          {
            v14 = v13;
          }

          v15 = v8 + v14;
          if (__CFADD__(v8, v14) || (v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_116;
          }

          v16 = *(a1 + 8);
          if (v16 < v15)
          {
            do
            {
              while (!v16)
              {
                v16 = 0x4000;
                v18 = 0x4000;
                if (v15 <= 0x4000)
                {
                  goto LABEL_48;
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
            v18 = v16;
            if (v16 >= 0x2000000001)
            {
              *__error() = 12;
              goto LABEL_115;
            }

LABEL_48:
            v29 = *(a1 + 9);
            v30 = realloc(v29, v18);
            if (v30)
            {
              *(a1 + 8) = v18;
              *(a1 + 9) = v30;
              goto LABEL_50;
            }

            free(v29);
LABEL_115:
            *v9 = 0;
            v9[1] = 0;
            v9[2] = 0;
LABEL_116:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "writeProc", 209, 132, 0, "malloc", v52, *v53);
            goto LABEL_123;
          }

LABEL_50:
          v31 = *(a1 + 9);
          if (__src)
          {
            memcpy(v31 + *v9, __src, v14);
          }

          else if (v31)
          {
            memset_s(v31 + *v9, v14, 0, v14);
          }

          v8 = *v9 + v14;
          *v9 = v8;
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_116;
          }

          a3 -= v14;
          __src += v14;
          v4 += v14;
          *(a1 + 13) += v14;
        }
      }

      if (v11 == 1)
      {
        break;
      }

      if (v11)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "writeProc", 199, 132, 0, "invalid state %d");
        goto LABEL_123;
      }

      if (!(a3 | v8))
      {
        goto LABEL_103;
      }

      if (v8 <= 0xB)
      {
        v48 = 12;
        goto LABEL_102;
      }

      v19 = *(a1 + 9);
      *v53 = *v19;
      *&v53[8] = *(v19 + 2);
      if (*v19 != 25200 || BYTE2(*v19) != 122)
      {
LABEL_108:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "writeProc", 106, 132, 0, "invalid compressed stream", v52, *v53);
        goto LABEL_123;
      }

      if (v53[3] <= 0x64u)
      {
        switch(v53[3])
        {
          case '-':
            v22 = 0;
            v21 = 0;
            break;
          case '4':
            v21 = PCompressLZ4Decode;
            v22 = 256;
            break;
          case 'b':
            v21 = PCompressLZBITMAPDecode;
            v22 = 1794;
            break;
          default:
            goto LABEL_108;
        }
      }

      else if (v53[3] > 0x77u)
      {
        if (v53[3] == 120)
        {
          v21 = PCompressLZMADecode;
          v22 = 774;
        }

        else
        {
          if (v53[3] != 122)
          {
            goto LABEL_108;
          }

          v21 = PCompressZLIBDecode;
          v22 = 1285;
        }
      }

      else if (v53[3] == 101)
      {
        v21 = PCompressLZFSEDecode;
        v22 = 2049;
      }

      else
      {
        if (v53[3] != 102)
        {
          goto LABEL_108;
        }

        v21 = PCompressLZVNDecode;
        v22 = 2304;
      }

      a1[7] = v22;
      v38 = bswap64(*&v53[4]);
      *(a1 + 4) = v38;
      *(a1 + 2) = v21;
      if ((v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_122;
      }

      v39 = *(a1 + 8);
      if (v39 < v38)
      {
        do
        {
          while (!v39)
          {
            v39 = 0x4000;
            v41 = 0x4000;
            if (v38 <= 0x4000)
            {
              goto LABEL_86;
            }
          }

          v40 = v39 >> 1;
          if ((v39 & (v39 >> 1)) != 0)
          {
            v40 = v39 & (v39 >> 1);
          }

          v39 += v40;
        }

        while (v39 < v38);
        v41 = v39;
        if (v39 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_121;
        }

LABEL_86:
        v42 = realloc(v19, v41);
        if (!v42)
        {
          free(v19);
          goto LABEL_121;
        }

        *(a1 + 8) = v41;
        *(a1 + 9) = v42;
        v38 = *(a1 + 4);
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_122;
        }
      }

      v43 = *(a1 + 11);
      if (v43 < v38)
      {
        do
        {
          while (!v43)
          {
            v43 = 0x4000;
            v45 = 0x4000;
            if (v38 <= 0x4000)
            {
              goto LABEL_97;
            }
          }

          v44 = v43 >> 1;
          if ((v43 & (v43 >> 1)) != 0)
          {
            v44 = v43 & (v43 >> 1);
          }

          v43 += v44;
        }

        while (v43 < v38);
        v45 = v43;
        if (v43 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_120;
        }

LABEL_97:
        v46 = *(a1 + 12);
        v47 = realloc(v46, v45);
        if (v47)
        {
          *(a1 + 11) = v45;
          *(a1 + 12) = v47;
          goto LABEL_99;
        }

        free(v46);
LABEL_120:
        v9 = v10;
LABEL_121:
        *v9 = 0;
        v9[1] = 0;
        v9[2] = 0;
LABEL_122:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "writeProc", 128, 132, 0, "reserve buffers", v52, *v53);
LABEL_123:
        v4 = -1;
        goto LABEL_124;
      }

LABEL_99:
      v8 = 0;
      *(a1 + 7) = 0;
      a1[6] = 1;
    }

    if (!(a3 | v8))
    {
      goto LABEL_103;
    }

    if (v8 <= 0xF)
    {
      break;
    }

    v23 = *(a1 + 9);
    v24 = v23[1];
    v25 = bswap64(*v23);
    v26 = bswap64(v24);
    *(a1 + 5) = v26;
    *(a1 + 6) = v25;
    if (v25 < v26 || v25 > *(a1 + 4))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "writeProc", 149, 132, 0, "invalid compressed stream", v52, *v53);
      goto LABEL_123;
    }

    v8 = 0;
    *(a1 + 7) = 0;
    a1[6] = 2;
  }

  v48 = 16;
LABEL_102:
  v13 = v48 - v8;
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_103:
  if ((v4 & 0x8000000000000000) == 0)
  {
    return v4;
  }

LABEL_124:
  v49 = 0;
  atomic_compare_exchange_strong(a1 + 2, &v49, 1u);
  if (!v49)
  {
    v50 = *(*a1 + 16);
    if (v50)
    {
      v50(**a1);
    }
  }

  return v4;
}

atomic_uint *cancelProc_0(atomic_uint *result)
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

void (**aaAssetDecompressionStreamOpenWithState(uint64_t a1, AAByteStream_impl *a2, void *a3))(void)
{
  v5 = aaAssetDecompressionStreamOpen(a1);
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  v7 = *v5;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  if (!*(a2 + 2))
  {
LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "aaAssetDecompressionStreamOpenWithState", 316, 132, 0, "truncated state", v52, v53);
    goto LABEL_17;
  }

  v8 = &v52;
  v9 = 56;
  do
  {
    v10 = (*(a2 + 2))(*a2, v8, v9);
    if (v10 < 0)
    {
      goto LABEL_16;
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
  }

  while (!v11);
  v13 = v52;
  v12 = DWORD1(v52);
  *(v7 + 6) = v52;
  *(v7 + 7) = v12;
  v14 = *(&v52 + 1);
  v15 = v53;
  *(v7 + 4) = *(&v52 + 1);
  *(v7 + 5) = v15;
  v16 = *(&v53 + 1);
  v17 = v55;
  *(v7 + 6) = *(&v53 + 1);
  *(v7 + 13) = v17;
  if (v13 >= 3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "aaAssetDecompressionStreamOpenWithState", 330, 132, 0, "invalid state", v52, v53);
    goto LABEL_17;
  }

  v18 = PCompressZLIBDecode;
  if (v12 <= 1284)
  {
    if (v12)
    {
      if (v12 == 256)
      {
        v18 = PCompressLZ4Decode;
      }

      else
      {
        if (v12 != 774)
        {
          goto LABEL_30;
        }

        v18 = PCompressLZMADecode;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if (v12 <= 2048)
    {
      if (v12 == 1285)
      {
        goto LABEL_33;
      }

      if (v12 == 1794)
      {
        v18 = PCompressLZBITMAPDecode;
        goto LABEL_33;
      }

LABEL_30:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "aaAssetDecompressionStreamOpenWithState", 342, 132, 0, "invalid compression algo", v52, v53);
      goto LABEL_17;
    }

    if (v12 == 2049)
    {
      v18 = PCompressLZFSEDecode;
    }

    else
    {
      if (v12 != 2304)
      {
        goto LABEL_30;
      }

      v18 = PCompressLZVNDecode;
    }
  }

LABEL_33:
  *(v7 + 2) = v18;
  if (v15 > v14 || v16 > v14 || v54 > v15 || v15 > v16 || *(&v54 + 1) > v16)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "aaAssetDecompressionStreamOpenWithState", 352, 132, 0, "invalid sizes", v52, v53);
    goto LABEL_17;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_121;
  }

  v20 = *(v7 + 8);
  if (v20 < v14)
  {
    do
    {
      while (!v20)
      {
        v20 = 0x4000;
        if (v14 <= 0x4000)
        {
          v22 = (v7 + 72);
          v20 = 0x4000;
          goto LABEL_50;
        }
      }

      v21 = v20 >> 1;
      if ((v20 & (v20 >> 1)) != 0)
      {
        v21 = v20 & (v20 >> 1);
      }

      v20 += v21;
    }

    while (v20 < v14);
    v22 = (v7 + 72);
    if (v20 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_117:
      *v22 = 0;
      *(v7 + 7) = 0;
      *(v7 + 8) = 0;
      goto LABEL_121;
    }

LABEL_50:
    v23 = *v22;
    v24 = realloc(*v22, v20);
    if (!v24)
    {
      free(v23);
      goto LABEL_117;
    }

    *(v7 + 8) = v20;
    *(v7 + 9) = v24;
    v14 = *(v7 + 4);
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_121;
    }
  }

  v26 = (v7 + 88);
  v25 = *(v7 + 11);
  if (v25 < v14)
  {
    do
    {
      while (!v25)
      {
        v25 = 0x4000;
        if (v14 <= 0x4000)
        {
          v25 = 0x4000;
          goto LABEL_62;
        }
      }

      v27 = v25 >> 1;
      if ((v25 & (v25 >> 1)) != 0)
      {
        v27 = v25 & (v25 >> 1);
      }

      v25 += v27;
    }

    while (v25 < v14);
    if (v25 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_119:
      *(v7 + 11) = 0;
      *(v7 + 12) = 0;
      goto LABEL_120;
    }

LABEL_62:
    v28 = *(v7 + 12);
    v29 = realloc(v28, v25);
    if (!v29)
    {
      free(v28);
      goto LABEL_119;
    }

    *(v7 + 11) = v25;
    *(v7 + 12) = v29;
  }

  v30 = v54;
  if (v54)
  {
    v32 = *(v7 + 7);
    v31 = *(v7 + 8);
    while (1)
    {
      if (v32 != v31)
      {
        goto LABEL_77;
      }

      v33 = v31 + 0x40000;
      if ((v31 + 0x40000) < 0)
      {
        goto LABEL_121;
      }

      if (v31 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v31)
        {
          v31 = 0x4000;
          v35 = 0x4000;
          if (v33 <= 0x4000)
          {
            goto LABEL_79;
          }
        }

        v34 = v31 >> 1;
        if ((v31 & (v31 >> 1)) != 0)
        {
          v34 = v31 & (v31 >> 1);
        }

        v31 += v34;
      }

      while (v31 < v33);
      v35 = v31;
      if (v31 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_124;
      }

LABEL_79:
      v36 = *(v7 + 9);
      v37 = realloc(v36, v35);
      if (!v37)
      {
        free(v36);
LABEL_124:
        *(v7 + 7) = 0;
        *(v7 + 8) = 0;
        *(v7 + 9) = 0;
        goto LABEL_121;
      }

      *(v7 + 8) = v35;
      *(v7 + 9) = v37;
      v32 = *(v7 + 7);
LABEL_81:
      if (v35 - v32 >= v30)
      {
        v38 = v30;
      }

      else
      {
        v38 = v35 - v32;
      }

      v39 = AAByteStreamRead(a2, (*(v7 + 9) + v32), v38);
      if (v39 < 0)
      {
        goto LABEL_121;
      }

      if (v39)
      {
        v40 = *(v7 + 7);
        v32 = v40 + v39;
        if (__CFADD__(v40, v39))
        {
          goto LABEL_121;
        }

        v31 = *(v7 + 8);
        if (v32 > v31)
        {
          goto LABEL_121;
        }

        *(v7 + 7) = v32;
        v30 -= v39;
        if (v30)
        {
          continue;
        }
      }

      goto LABEL_89;
    }

    v32 = v31;
LABEL_77:
    v35 = v31;
    goto LABEL_81;
  }

LABEL_89:
  v41 = *(&v54 + 1);
  if (!*(&v54 + 1))
  {
LABEL_114:
    if (a3)
    {
      *a3 = *(v7 + 13);
    }

    return v6;
  }

  v43 = *(v7 + 10);
  v42 = *(v7 + 11);
  while (1)
  {
    if (v43 != v42)
    {
      goto LABEL_102;
    }

    v44 = v42 + 0x40000;
    if ((v42 + 0x40000) < 0)
    {
      goto LABEL_121;
    }

    if (v42 <= 0xFFFFFFFFFFFBFFFFLL)
    {
      break;
    }

    v43 = v42;
LABEL_102:
    v46 = v42;
LABEL_106:
    if (v46 - v43 >= v41)
    {
      v49 = v41;
    }

    else
    {
      v49 = v46 - v43;
    }

    v50 = AAByteStreamRead(a2, (*(v7 + 12) + v43), v49);
    if (v50 < 0)
    {
      goto LABEL_121;
    }

    if (!v50)
    {
      goto LABEL_114;
    }

    v51 = *(v7 + 10);
    v43 = v51 + v50;
    if (__CFADD__(v51, v50))
    {
      goto LABEL_121;
    }

    v42 = *v26;
    if (v43 > *v26)
    {
      goto LABEL_121;
    }

    *(v7 + 10) = v43;
    v41 -= v50;
    if (!v41)
    {
      goto LABEL_114;
    }
  }

  do
  {
    while (!v42)
    {
      v42 = 0x4000;
      v46 = 0x4000;
      if (v44 <= 0x4000)
      {
        goto LABEL_104;
      }
    }

    v45 = v42 >> 1;
    if ((v42 & (v42 >> 1)) != 0)
    {
      v45 = v42 & (v42 >> 1);
    }

    v42 += v45;
  }

  while (v42 < v44);
  v46 = v42;
  if (v42 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_127;
  }

LABEL_104:
  v47 = *(v7 + 12);
  v48 = realloc(v47, v46);
  if (v48)
  {
    *(v7 + 11) = v46;
    *(v7 + 12) = v48;
    v43 = *(v7 + 10);
    goto LABEL_106;
  }

  free(v47);
LABEL_127:
  *v26 = 0;
  *(v7 + 12) = 0;
LABEL_120:
  *(v7 + 10) = 0;
LABEL_121:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetDecompressionStream.c", "aaAssetDecompressionStreamOpenWithState", 359, 132, 0, "truncated state", v52, v53);
LABEL_17:
  if (*v6)
  {
    v6[1]();
  }

  free(v6);
  return 0;
}

unsigned int *ThreadPipelineCreate(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6)
{
  v12 = calloc(1uLL, 0x1A8uLL);
  v13 = v12;
  if (v12)
  {
    *v12 = a1;
    v14 = calloc(a1, 0x198uLL);
    *(v13 + 1) = v14;
    if (v14)
    {
      v15 = calloc(1uLL, 0x20uLL);
      *(v13 + 2) = v15;
      if (v15)
      {
        v16 = *v13;
        v13[10] = 0;
        v13[11] = v16;
        v17 = calloc(v16, 4uLL);
        *(v13 + 6) = v17;
        if (v17)
        {
          if (pthread_mutex_init((v13 + 14), 0))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
          }

          else
          {
            if (!pthread_cond_init((v13 + 30), 0))
            {
              v22 = *v13 + 1;
              v13[42] = 0;
              v13[43] = v22;
              v23 = calloc(v22, 4uLL);
              *(v13 + 22) = v23;
              if (v23)
              {
                if (pthread_mutex_init((v13 + 46), 0))
                {
                  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
                }

                else
                {
                  if (!pthread_cond_init((v13 + 62), 0))
                  {
                    v13[6] = -1;
                    v13[74] = 0;
                    if (pthread_mutex_init((v13 + 76), 0) || pthread_cond_init((v13 + 92), 0))
                    {
                      v19 = "SemInit";
                      v20 = 184;
                    }

                    else if (*v13)
                    {
                      v24 = 0;
                      v25 = 352;
                      while (1)
                      {
                        v26 = *(v13 + 1);
                        v27 = v26 + v25;
                        *(v26 + v25 - 336) = v13;
                        *(v26 + v25 - 344) = v24;
                        v30 = v24;
                        *(v26 + v25 - 328) = *(a2 + 8 * v24);
                        *(v26 + v25 - 320) = a3;
                        *(v26 + v25 - 312) = 0;
                        if (pthread_mutex_init((v26 + v25 - 304), 0) || pthread_cond_init((v27 - 240), 0))
                        {
                          v19 = "SemInit";
                          v20 = 194;
                          goto LABEL_14;
                        }

                        *(v26 + v25 - 192) = 0;
                        if (pthread_mutex_init((v26 + v25 - 184), 0) || pthread_cond_init((v26 + v25 - 120), 0))
                        {
                          v19 = "SemInit";
                          v20 = 195;
                          goto LABEL_14;
                        }

                        v28 = (v26 + v25);
                        *&v28[-2].__opaque[16] = 0;
                        if (pthread_mutex_init(&v28[-2].__opaque[24], 0) || pthread_cond_init(v28, 0))
                        {
                          v19 = "SemInit";
                          v20 = 196;
                          goto LABEL_14;
                        }

                        if ((createThread((v27 - 352), threadPipelineWorkerThreadProc, v27 - 352, a6) & 0x80000000) != 0)
                        {
                          break;
                        }

                        v24 = v30 + 1;
                        v25 += 408;
                        if (v30 + 1 >= *v13)
                        {
                          goto LABEL_37;
                        }
                      }

                      v19 = "Thread creation";
                      v20 = 197;
                    }

                    else
                    {
LABEL_37:
                      v29 = *(v13 + 2);
                      *(v29 + 8) = v13;
                      *(v29 + 16) = a4;
                      *(v29 + 24) = a5;
                      if ((createThread(v29, threadPipelineConsumerThreadProc, v29, 0) & 0x80000000) == 0)
                      {
                        return v13;
                      }

                      v19 = "Thread creation";
                      v20 = 206;
                    }

                    goto LABEL_14;
                  }

                  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
                }
              }

              else
              {
                pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
              }

              v19 = "SharedArrayInit";
              v20 = 182;
LABEL_14:
              v18 = 0;
              goto LABEL_15;
            }

            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
          }
        }

        else
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
        }

        v19 = "SharedArrayInit";
        v20 = 180;
        goto LABEL_14;
      }

      v18 = *__error();
      v19 = "malloc";
      v20 = 179;
    }

    else
    {
      v18 = *__error();
      v19 = "malloc";
      v20 = 177;
    }
  }

  else
  {
    v18 = *__error();
    v19 = "malloc";
    v20 = 172;
  }

LABEL_15:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineCreate", v20, 87, v18, v19);
  ThreadPipelineDestroy(v13);
  return 0;
}

uint64_t threadPipelineWorkerThreadProc(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (1)
  {
    v3 = *(a1 + 8);
    if (pthread_mutex_lock((v2 + 56)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
      goto LABEL_35;
    }

    v4 = *(v2 + 40);
    v5 = *(v2 + 44);
    v6 = v4;
    if (v4 < v5)
    {
      *(*(v2 + 48) + 4 * v4) = v3;
      v6 = *(v2 + 40);
    }

    *(v2 + 40) = v6 + 1;
    if (!v6)
    {
      if (pthread_cond_broadcast((v2 + 120)))
      {
        break;
      }
    }

    if (pthread_mutex_unlock((v2 + 56)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
      goto LABEL_35;
    }

    if (v4 >= v5)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n");
      goto LABEL_35;
    }

    if (pthread_mutex_lock((a1 + 48)))
    {
      goto LABEL_27;
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
        goto LABEL_27;
      }
    }

    *(a1 + 40) = v7 - 1;
    if (pthread_mutex_unlock((a1 + 48)))
    {
LABEL_27:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 72, 87, 0, "SemAcquire");
      goto LABEL_28;
    }

    if ((*(a1 + 400) & 0x8000000000000000) != 0)
    {
      return a1;
    }

    if (((*(a1 + 32))(*(a1 + 24)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 82, 87, 0, "worker proc reported an error");
      atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
    }

    if (pthread_mutex_lock((a1 + 168)) || (v8 = *(a1 + 160), *(a1 + 160) = v8 + 1, !v8) && pthread_cond_broadcast((a1 + 232)) || pthread_mutex_unlock((a1 + 168)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 85, 87, 0, "SemRelease");
      goto LABEL_28;
    }

    if (!pthread_mutex_lock((a1 + 288)))
    {
      while (1)
      {
        v9 = *(a1 + 280);
        if (v9 > 0)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 352), (a1 + 288)))
        {
          goto LABEL_26;
        }
      }

      *(a1 + 280) = v9 - 1;
      if (!pthread_mutex_unlock((a1 + 288)))
      {
        continue;
      }
    }

LABEL_26:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 88, 87, 0, "SemAcquire");
    goto LABEL_28;
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
LABEL_35:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 69, 87, 0, "SharedArrayPush");
LABEL_28:
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t threadPipelineConsumerThreadProc(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (!pthread_mutex_lock((v2 + 184)))
  {
    while (1)
    {
      v3 = *(v2 + 168);
      if (v3)
      {
        break;
      }

      if (pthread_cond_wait((v2 + 248), (v2 + 184)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
        goto LABEL_3;
      }
    }

    v4 = v3 - 1;
    *(v2 + 168) = v4;
    v5 = *(*(v2 + 176) + 4 * v4);
    if (pthread_mutex_unlock((v2 + 184)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
      goto LABEL_3;
    }

    if (v5 == -2)
    {
      if (!pthread_mutex_lock((v2 + 304)))
      {
        v8 = *(v2 + 296);
        *(v2 + 296) = v8 + 1;
        if (v8 || !pthread_cond_broadcast((v2 + 368)))
        {
          pthread_mutex_unlock((v2 + 304));
        }
      }
    }

    else
    {
      if (v5 == -1)
      {
        return a1;
      }

      v6 = *(v2 + 8) + 408 * v5;
      if (pthread_mutex_lock((v6 + 168)))
      {
        goto LABEL_28;
      }

      while (1)
      {
        v7 = *(v6 + 160);
        if (v7 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v6 + 232), (v6 + 168)))
        {
          goto LABEL_28;
        }
      }

      *(v6 + 160) = v7 - 1;
      if (pthread_mutex_unlock((v6 + 168)))
      {
LABEL_28:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 134, 87, 0, "SemAcquire");
        goto LABEL_29;
      }

      if (((*(a1 + 24))(*(a1 + 16), *(v6 + 24)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 141, 87, 0, "consumer proc reported an error");
        atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
      }

      if (pthread_mutex_lock((v6 + 288)) || (v9 = *(v6 + 280), *(v6 + 280) = v9 + 1, !v9) && pthread_cond_broadcast((v6 + 352)) || pthread_mutex_unlock((v6 + 288)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 144, 87, 0, "SemRelease");
        goto LABEL_29;
      }
    }
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_3:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 114, 87, 0, "SharedArrayDequeue");
LABEL_29:
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t ThreadPipelineDestroy(uint64_t result)
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
        v6 = 1;
        goto LABEL_41;
      }

      v4 = 0;
      do
      {
        if (*v2)
        {
          ++v4;
        }

        v2 += 51;
        --v3;
      }

      while (v3);
      if (v4)
      {
        v5 = 0;
        v6 = 1;
        while (1)
        {
          if (pthread_mutex_lock((v1 + 14)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_15:
            v8 = -1;
          }

          else
          {
            while (1)
            {
              v7 = v1[10];
              if (v7)
              {
                break;
              }

              if (pthread_cond_wait((v1 + 30), (v1 + 14)))
              {
                pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
                goto LABEL_15;
              }
            }

            v11 = v7 - 1;
            v1[10] = v11;
            v8 = *(*(v1 + 6) + 4 * v11);
            if (!pthread_mutex_unlock((v1 + 14)))
            {
              goto LABEL_17;
            }

            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 237, 87, 0, "SharedArrayPop");
          v6 = 0;
LABEL_17:
          v9 = *(v1 + 1) + 408 * v8;
          *(v9 + 400) = -1;
          if (pthread_mutex_lock((v9 + 48)) || (v10 = *(v9 + 40), *(v9 + 40) = v10 + 1, !v10) && pthread_cond_broadcast((v9 + 112)) || pthread_mutex_unlock((v9 + 48)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 245, 87, 0, "SemRelease");
            v6 = 0;
          }

          if ((joinThread(*v9) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 246, 87, 0, "joinThread");
            v6 = 0;
          }

          *v9 = 0;
          if (++v5 == v4)
          {
            if (!*v1)
            {
              goto LABEL_41;
            }

            goto LABEL_33;
          }
        }
      }

      v6 = 1;
LABEL_33:
      v12 = 0;
      v13 = 352;
      do
      {
        v14 = *(v1 + 1);
        v15 = v14 + v13;
        if (!pthread_mutex_destroy((v14 + v13 - 304)))
        {
          pthread_cond_destroy((v15 - 240));
        }

        if (!pthread_mutex_destroy((v15 - 184)))
        {
          pthread_cond_destroy((v14 + v13 - 120));
        }

        v16 = (v14 + v13);
        if (!pthread_mutex_destroy(&v16[-2].__opaque[24]))
        {
          pthread_cond_destroy(v16);
        }

        ++v12;
        v13 += 408;
      }

      while (v12 < *v1);
LABEL_41:
      free(*(v1 + 1));
      *(v1 + 1) = 0;
    }

    else
    {
      v6 = 1;
    }

    v17 = *(v1 + 2);
    if (v17)
    {
      if (*v17)
      {
        if ((SharedArrayEnqueue_0(v1 + 42, -1) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 272, 87, 0, "SharedArrayEnqueue");
          v6 = 0;
        }

        if ((joinThread(*v17) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 273, 87, 0, "joinThread");
          v6 = 0;
        }

        *v17 = 0;
        v17 = *(v1 + 2);
      }

      free(v17);
      *(v1 + 2) = 0;
    }

    if (!pthread_mutex_destroy((v1 + 14)) && !pthread_cond_destroy((v1 + 30)))
    {
      free(*(v1 + 6));
    }

    if (!pthread_mutex_destroy((v1 + 46)) && !pthread_cond_destroy((v1 + 62)))
    {
      free(*(v1 + 22));
    }

    if (!pthread_mutex_destroy((v1 + 76)))
    {
      pthread_cond_destroy((v1 + 92));
    }

    v18 = atomic_load(v1 + 104);
    if (v18 >= 1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 285, 87, 0, "Threads reported errors");
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

uint64_t ThreadPipelineGetWorker(uint64_t a1)
{
  if (*(a1 + 24) != -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineGetWorker", 294, 87, 0, "Missing call to RunWorker before GetWorker");
    return 0;
  }

  if (pthread_mutex_lock((a1 + 56)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineGetWorker", 298, 87, 0, "SharedArrayPop failed");
    return 0;
  }

  while (1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 120), (a1 + 56)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
      goto LABEL_10;
    }
  }

  v3 = v2 - 1;
  *(a1 + 40) = v3;
  v4 = *(*(a1 + 48) + 4 * v3);
  if (pthread_mutex_unlock((a1 + 56)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
    goto LABEL_10;
  }

  *(a1 + 24) = v4;
  return *(*(a1 + 8) + 408 * v4 + 24);
}

uint64_t ThreadPipelineRunWorker(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", 311, 87, 0, "Missing call to GetWorker before RunWorker");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = -1;
  v2 = *(a1 + 8) + 408 * v1;
  v3 = *(a1 + 32);
  *(a1 + 32) = v3 + 1;
  *(v2 + 400) = v3;
  if ((SharedArrayEnqueue_0((a1 + 168), v1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", 324, 87, 0, "SharedArrayEnqueue failed");
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((v2 + 48)) || (v4 = *(v2 + 40), *(v2 + 40) = v4 + 1, !v4) && pthread_cond_broadcast((v2 + 112)) || (result = pthread_mutex_unlock((v2 + 48)), result))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", 325, 87, 0, "SemRelease failed");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ThreadPipelineFlush(uint64_t a1)
{
  if ((SharedArrayEnqueue_0((a1 + 168), -2) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineFlush", 333, 87, 0, "SharedArrayEnqueue failed");
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 304)))
  {
    goto LABEL_3;
  }

  while (1)
  {
    v2 = *(a1 + 296);
    if (v2 > 0)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 368), (a1 + 304)))
    {
      goto LABEL_3;
    }
  }

  *(a1 + 296) = v2 - 1;
  result = pthread_mutex_unlock((a1 + 304));
  if (result)
  {
LABEL_3:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineFlush", 336, 87, 0, "SemAquire failed");
    return 0xFFFFFFFFLL;
  }

  return result;
}

void *AARangeInputStreamOpen(uint64_t a1, uint64_t a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = malloc(0x30uLL);
  v6 = v5;
  if (!v5 || (memset_s(v5, 0x30uLL, 0, 0x30uLL), !v4))
  {
    v8 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARangeInputStream.c", "AARangeInputStreamOpen", 81, 118, v8, "malloc");
LABEL_6:
    free(v6);
    free(v4);
    return 0;
  }

  *v6 = a1;
  v7 = AAByteRangeClone(a2);
  v6[1] = v7;
  if (!v7)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARangeInputStream.c", "AARangeInputStreamOpen", 86, 118, 0, "AAByteRangeClone");
    goto LABEL_6;
  }

  v6[4] = AAByteRangeFirst(v7, 0, v6 + 2, v6 + 3);
  *v4 = v6;
  v4[1] = rangeInputStreamClose;
  v4[7] = rangeInputStreamCancel;
  v4[2] = rangeInputStreamRead;
  return v4;
}

uint64_t rangeInputStreamClose(void ***a1)
{
  AAByteRangeDestroy(a1[1]);
  free(a1);
  return 0;
}

void rangeInputStreamCancel(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 40), &v1, 1u);
  if (!v1)
  {
    AAByteStreamCancel(*a1);
  }
}

uint64_t rangeInputStreamRead(uint64_t a1, char *buf, unint64_t a3)
{
  if (atomic_load((a1 + 40)))
  {
    return -1;
  }

  v4 = 0;
  if ((*(a1 + 32) & 0x8000000000000000) == 0)
  {
    v7 = a3;
    if (a3)
    {
      v4 = 0;
      v10 = (a1 + 16);
      v9 = *(a1 + 16);
      while (1)
      {
        v11 = *(a1 + 24);
        if (v9 >= v11)
        {
          v12 = AAByteRangeNext(*(a1 + 8), *(a1 + 32), (a1 + 16), (a1 + 24));
          *(a1 + 32) = v12;
          if (v12 < 0)
          {
            return v4;
          }

          v9 = *v10;
          v11 = *(a1 + 24);
        }

        v13 = v7 >= 0x10000000 ? 0x10000000 : v7;
        v14 = v9 + v13 <= v11 ? v13 : v11 - v9;
        v15 = AAByteStreamPRead(*a1, buf, v14, v9);
        if (v15 < 1)
        {
          break;
        }

        v9 = *v10 + v15;
        *v10 = v9;
        buf += v15;
        v4 += v15;
        v7 -= v15;
        if (!v7)
        {
          return v4;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARangeInputStream.c", "rangeInputStreamRead", 59, 118, 0, "Stream pread");
      v16 = 0;
      atomic_compare_exchange_strong((a1 + 40), &v16, 1u);
      if (!v16)
      {
        AAByteStreamCancel(*a1);
      }

      return -1;
    }
  }

  return v4;
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
    v13 = dword_296AD1A6C[v14];
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
  *(v8 + 3) = xmmword_296AD1A20;
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
      *(v13 + 16) = unk_296AD1A48;
      *(v13 + 32) = xmmword_296AD1A58;
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

  v133 = dword_296AD1A98[v17];
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

void *AAChunkInputStreamOpen(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  DefaultNThreads = a5;
  if (!a5)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v10 = calloc(1uLL, 0x68uLL);
  v11 = malloc(0x90uLL);
  v12 = v11;
  if (!v11 || (memset_s(v11, 0x90uLL, 0, 0x90uLL), !v10))
  {
    v20 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "AAChunkInputStreamOpen", 277, 66, v20, "malloc");
LABEL_23:
    free(v10);
    streamClose(v12);
    return 0;
  }

  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a4;
  v13 = DefaultNThreads;
  if (DefaultNThreads * a2 > a3)
  {
    v13 = a3 / a2;
  }

  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  *(v12 + 128) = v14;
  if (!is_mul_ok(v14, 0x30uLL) || 48 * v14 >= 0x2000000001)
  {
    *__error() = 12;
    *(v12 + 136) = 0;
    goto LABEL_22;
  }

  v15 = calloc(v14, 0x30uLL);
  *(v12 + 136) = v15;
  if (!v15)
  {
LABEL_22:
    v21 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "AAChunkInputStreamOpen", 290, 66, v21, "malloc");
    goto LABEL_23;
  }

  v16 = *(v12 + 128);
  if (v16)
  {
    v17 = *(v12 + 8);
    v18 = v15 + 16;
    while (1)
    {
      *(v18 - 2) = -1;
      if (v17 >= 0x2000000001)
      {
        break;
      }

      v19 = malloc(v17);
      *v18 = v19;
      if (!v19)
      {
        goto LABEL_27;
      }

      v18 += 6;
      if (!--v16)
      {
        goto LABEL_18;
      }
    }

    *__error() = 12;
    *v18 = 0;
LABEL_27:
    v24 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "AAChunkInputStreamOpen", 296, 66, v24, "malloc");
    goto LABEL_23;
  }

LABEL_18:
  if (pthread_mutex_init((v12 + 32), 0) < 0)
  {
    v23 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "AAChunkInputStreamOpen", 298, 66, v23, "pthread_mutex_init");
    goto LABEL_23;
  }

  *v10 = v12;
  v10[1] = streamClose;
  v10[7] = streamAbort;
  v10[4] = streamPRead;
  v10[2] = streamRead;
  v10[6] = streamSeek;
  return v10;
}

uint64_t streamClose(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) >> 62)
    {
      v2 = MEMORY[0x29EDCA610];
      fwrite("ChunkInputStream\n", 0x11uLL, 1uLL, *MEMORY[0x29EDCA610]);
      fprintf(*v2, "%12zu chunk size (B)\n", *(a1 + 8));
      fprintf(*v2, "%12zu chunks in cache\n", *(a1 + 128));
      v3 = *v2;
      v4 = atomic_load((a1 + 112));
      fprintf(v3, "%12llu bytes read from upstream\n", v4);
      v5 = *v2;
      v6 = atomic_load((a1 + 120));
      fprintf(v5, "%12llu bytes read from clients\n", v6);
      v7 = *v2;
      v8 = atomic_load((a1 + 120));
      v9 = v8 * 100.0;
      v10 = atomic_load((a1 + 112));
      fprintf(v7, "%12.2f percent usage\n", v9 / v10);
    }

    pthread_mutex_destroy((a1 + 32));
    v11 = *(a1 + 136);
    if (v11)
    {
      if (*(a1 + 128))
      {
        v12 = 0;
        v13 = 16;
        do
        {
          free(*(*(a1 + 136) + v13));
          ++v12;
          v13 += 48;
        }

        while (v12 < *(a1 + 128));
        v11 = *(a1 + 136);
      }

      free(v11);
    }

    free(a1);
  }

  return 0;
}

void streamAbort(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 24), &v1, 1u);
  if (!v1)
  {
    AAByteStreamCancel(*a1);
  }
}

uint64_t streamPRead(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  if (!atomic_load((a1 + 24)))
  {
    if (!a3)
    {
      return 0;
    }

    v6 = a4;
    v7 = a4 + a3;
    if (a4 + a3 <= a4)
    {
      return 0;
    }

    v5 = 0;
    v10 = *(a1 + 8);
    v36 = v10;
    v37 = a4 + a3;
    while (1)
    {
      v11 = v6 / v10;
      v12 = v6 / v10 * v10;
      v13 = v12 <= v6 ? v6 : v6 / v10 * v10;
      v14 = v12 + v10;
      v15 = v7 >= v14 ? v14 : v7;
      if (pthread_mutex_lock((a1 + 32)) < 0)
      {
        break;
      }

      v16 = *(a1 + 128);
      if (v16)
      {
        v17 = *(a1 + 136);
        v18 = v17;
        v19 = *(a1 + 128);
        do
        {
          if (*v18 == v11)
          {
LABEL_33:
            *(v18 + 8) = atomic_fetch_add((a1 + 96), 1uLL);
            atomic_fetch_add((v18 + 40), 1u);
            goto LABEL_34;
          }

          v18 += 48;
          --v19;
        }

        while (v19);
        v18 = *(a1 + 136);
        v20 = *(a1 + 128);
        do
        {
          if (*v18 == -1)
          {
            v21 = -1;
LABEL_29:
            if (v21 != v11)
            {
              v22 = atomic_load((v18 + 40));
              if (v22 >= 1)
              {
                do
                {
                  pthread_yield_np();
                  v23 = atomic_load((v18 + 40));
                }

                while (v23 > 0);
              }

              *v18 = v11;
              *(v18 + 24) = 0;
              atomic_store(0, (v18 + 32));
              atomic_store(0, (v18 + 36));
              atomic_store(0, (v18 + 40));
            }

            goto LABEL_33;
          }

          v18 += 48;
          --v20;
        }

        while (v20);
        v18 = 0;
        do
        {
          if (!v18 || *(v17 + 8) < *(v18 + 8))
          {
            v18 = v17;
          }

          v17 += 48;
          --v16;
        }

        while (v16);
        if (v18)
        {
          v21 = *v18;
          goto LABEL_29;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "streamGetChunk", 75, 66, 0, "Invalid state");
      v18 = 0;
LABEL_34:
      if (pthread_mutex_unlock((a1 + 32)) < 0)
      {
        v24 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "streamGetChunk", 107, 66, *v24, "pthread_mutex_unlock");
      }

      if (!v18)
      {
        goto LABEL_55;
      }

      while (!atomic_load((v18 + 32)))
      {
        v26 = atomic_load((a1 + 24));
        if (v26)
        {
          goto LABEL_57;
        }

        atomic_compare_exchange_strong((v18 + 36), &v26, 1u);
        if (v26)
        {
          pthread_yield_np();
        }

        else
        {
          v27 = AAByteStreamPRead(*a1, *(v18 + 16), *(a1 + 8), *(a1 + 8) * v11);
          if (v27 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "streamReadChunkData", 132, 66, 0, "Stream read");
LABEL_57:
            atomic_fetch_add((v18 + 40), 0xFFFFFFFF);
            goto LABEL_58;
          }

          v28 = 0;
          *(v18 + 24) = v27;
          atomic_compare_exchange_strong((v18 + 32), &v28, 1u);
          atomic_fetch_add_explicit((a1 + 112), v27, memory_order_relaxed);
        }
      }

      v29 = v13 - v12;
      v30 = *(v18 + 24);
      if (v30 < v13 - v12)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "streamReadChunkData", 148, 66, 0, "Read out of range");
        goto LABEL_57;
      }

      if (v30 >= v15 - v12)
      {
        v31 = v15 - v13;
      }

      else
      {
        v31 = v30 - (v13 - v12);
      }

      memcpy(a2, (*(v18 + 16) + v29), v31);
      atomic_fetch_add_explicit((a1 + 120), v31, memory_order_relaxed);
      atomic_fetch_add((v18 + 40), 0xFFFFFFFF);
      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if (v31)
      {
        v5 += v31;
        v6 += v31;
        a2 += v31;
        v10 = v36;
        v7 = v37;
        if (v6 < v37)
        {
          continue;
        }
      }

      return v5;
    }

    v33 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "streamGetChunk", 51, 66, *v33, "pthread_mutex_lock");
LABEL_55:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "streamReadChunkData", 119, 66, 0, "get a valid chunk from cache");
LABEL_58:
    v34 = 0;
    atomic_compare_exchange_strong((a1 + 24), &v34, 1u);
    if (!v34)
    {
      AAByteStreamCancel(*a1);
    }

LABEL_60:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkInputStream.c", "streamPRead", 215, 66, 0, "Reading chunk data failed");
    v35 = 0;
    atomic_compare_exchange_strong((a1 + 24), &v35, 1u);
    if (!v35)
    {
      AAByteStreamCancel(*a1);
    }
  }

  return -1;
}

uint64_t streamRead(uint64_t a1, char *a2, unint64_t a3)
{
  if (atomic_load((a1 + 24)))
  {
    return -1;
  }

  else
  {
    return streamPRead(a1, a2, a3, atomic_fetch_add((a1 + 104), a3));
  }
}

off_t streamSeek(uint64_t a1, off_t a2, int a3)
{
  if (atomic_load((a1 + 24)))
  {
    return -1;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    a2 += atomic_fetch_add((a1 + 104), a2);
    return a2;
  }

  if (a3 != 2)
  {
    return -1;
  }

  a2 = AAByteStreamSeek(*a1, a2, 2);
  if (a2 < 0)
  {
    return -1;
  }

LABEL_8:
  atomic_store(a2, (a1 + 104));
  return a2;
}

uint64_t CC_CKSUM_Init(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  return 1;
}

uint64_t CC_CKSUM_Update(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *a1;
  if (a3)
  {
    v4 = a3;
    v5 = a3;
    do
    {
      v6 = *a2++;
      v3 = CKSUMTable[v6 ^ HIBYTE(v3)] ^ (v3 << 8);
      --v5;
    }

    while (v5);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v3;
  *(a1 + 8) += v4;
  return 1;
}

uint64_t CC_CKSUM_Final(unsigned int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v2 = CKSUMTable[v3 ^ HIBYTE(v2)] ^ (v2 << 8);
      v4 = v3 > 0xFF;
      v3 >>= 8;
    }

    while (v4);
  }

  *a1 = ~v2;
  return 1;
}

uint64_t (**AAChunkAsyncStreamOpen(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5))(void)
{
  DefaultNThreads = a5;
  if (a5)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", 651, 143, 0, "invalid chunk size");
    v11 = 0;
LABEL_15:
    chunkAsyncClose(v11);
    v13 = 0;
    goto LABEL_16;
  }

  DefaultNThreads = getDefaultNThreads();
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_3:
  v10 = malloc(0xF0uLL);
  v11 = v10;
  if (!v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", 655, 143, 0, "malloc");
    goto LABEL_15;
  }

  memset_s(v10, 0xF0uLL, 0, 0xF0uLL);
  v12 = aaAsyncByteStreamAlloc(v11, chunkAsyncClose, ~(a4 >> 55) & 4, 20.0, 1.0);
  if (!v12)
  {
    v15 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", 657, 143, v15, "malloc");
    goto LABEL_15;
  }

  v13 = v12;
  *(v11 + 8) = a2;
  *(v11 + 16) = a4;
  *v11 = a1;
  *(v11 + 24) = a4 >> 62;
  if (a3 == -1)
  {
    v14 = DefaultNThreads;
  }

  else
  {
    v14 = a3 / a2;
  }

  if (pthread_mutex_init((v11 + 32), 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", 668, 143, 0, "mutex init");
  }

  else
  {
    if (v14 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v14;
    }

    if ((lockedStateReserveActiveChunks(v11, v17) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", 669, 143, 0, "init active chunks");
    }

    else
    {
      v13[2] = chunkAsyncGetRange;
      v13[3] = chunkAsyncProcess;
      v13[4] = chunkAsyncCancel;
      v13[5] = chunkAsyncIsCancelled;
      if ((createThread((v11 + 192), streamProc, v11, 0) & 0x80000000) == 0)
      {
        return v13;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", 678, 143, 0, "createThread");
    }
  }

LABEL_16:
  AAAsyncByteStreamClose(v13);
  return 0;
}

uint64_t chunkAsyncClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    atomic_compare_exchange_strong((result + 204), &v2, 1u);
    v3 = *(result + 192);
    if (v3)
    {
      joinThread(v3);
    }

    v4 = atomic_load((v1 + 200));
    if (*(v1 + 24))
    {
      v5 = MEMORY[0x29EDCA610];
      fwrite("AAChunkAsyncStream\n", 0x13uLL, 1uLL, *MEMORY[0x29EDCA610]);
      fprintf(*v5, "%12zu chunk size\n", *(v1 + 8));
      fprintf(*v5, "%12zu allocated chunks\n", *(v1 + 96));
      v6 = *v5;
      v7 = atomic_load((v1 + 208));
      fprintf(v6, "%12llu ranges requested\n", v7);
      v8 = *v5;
      v9 = atomic_load((v1 + 224));
      fprintf(v8, "%12llu chunks processed\n", v9);
      fprintf(*v5, "%12zu bytes in chunks (%.2f MB)\n", *(v1 + 8) * *(v1 + 96), vcvtd_n_f64_u64(*(v1 + 8) * *(v1 + 96), 0x14uLL));
      v10 = *v5;
      v11 = atomic_load((v1 + 216));
      v12 = atomic_load((v1 + 216));
      fprintf(v10, "%12llu bytes requested in ranges (%.2f MB)\n", v11, vcvtd_n_f64_u64(v12, 0x14uLL));
      v13 = *v5;
      v14 = atomic_load((v1 + 232));
      v15 = atomic_load((v1 + 232));
      fprintf(v13, "%12llu bytes processed in chunks (%.2f MB)\n", v14, vcvtd_n_f64_u64(v15, 0x14uLL));
    }

    pthread_mutex_destroy((v1 + 32));
    free(*(v1 + 168));
    if (*(v1 + 96))
    {
      v16 = 0;
      v17 = 40;
      do
      {
        free(*(*(v1 + 104) + v17));
        ++v16;
        v17 += 48;
      }

      while (v16 < *(v1 + 96));
    }

    free(*(v1 + 104));
    free(*(v1 + 120));
    free(*(v1 + 184));
    memset_s(v1, 0xF0uLL, 0, 0xF0uLL);
    free(v1);
    if (v4)
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

uint64_t lockedStateReserveActiveChunks(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 96) >= a2)
  {
    return 0;
  }

  if (*(a1 + 24) >= 3u)
  {
    fprintf(*MEMORY[0x29EDCA610], "    %zu active chunks\n", a2);
  }

  if (48 * a2 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_15:
    *(a1 + 104) = 0;
    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "lockedStateReserveActiveChunks", 147, 143, v14, "malloc");
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 104);
  v6 = realloc(v5, 48 * a2);
  if (!v6)
  {
    free(v5);
    goto LABEL_15;
  }

  *(a1 + 104) = v6;
  v7 = *(a1 + 96);
  v8 = a2 - v7;
  if (a2 <= v7)
  {
LABEL_13:
    result = 0;
    *(a1 + 96) = a2;
    return result;
  }

  v9 = 48 * v7;
  while (1)
  {
    v10 = *(a1 + 104);
    v11 = *(a1 + 8);
    if (v11 >= 0x2000000001)
    {
      break;
    }

    v12 = malloc(v11);
    v13 = v10 + v9;
    *(v10 + v9 + 40) = v12;
    if (!v12)
    {
      goto LABEL_18;
    }

    *v13 = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    v9 += 48;
    *(v13 + 8) = -1;
    if (!--v8)
    {
      goto LABEL_13;
    }
  }

  *__error() = 12;
  *(v10 + v9 + 40) = 0;
LABEL_18:
  v15 = *__error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "lockedStateReserveActiveChunks", 152, 143, v15, "malloc");
  return 0xFFFFFFFFLL;
}

uint64_t chunkAsyncGetRange(uint64_t a1, void *a2, uint64_t *a3)
{
  if (atomic_load((a1 + 200)))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 32)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncGetRange", 519, 143, 0, "lock");
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    v10 = 0;
    v11 = *(a1 + 104);
    while (1)
    {
      v12 = *v11;
      v11 += 12;
      if (v12 == 1)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if (v10 != v9)
  {
    v13 = *(a1 + 104) + 48 * v10;
    *v13 = 2;
    v14 = *(v13 + 16);
    *a3 = v14;
    v15 = *(v13 + 24);
    *a2 = v15 - v14;
    if (*(a1 + 24) >= 3u)
    {
      fprintf(*MEMORY[0x29EDCA610], "<-- chunk %10llx %10llx -- %8zu\n", v14, v15, *(v13 + 8));
    }

    goto LABEL_19;
  }

LABEL_13:
  if (!*(a1 + 160) && *(a1 + 128))
  {
    *a2 = 0;
    *a3 = 0;
LABEL_19:
    if (*(a1 + 24) < 3u || *a2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 1;
      fwrite("<-- EOF\n", 8uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    goto LABEL_22;
  }

  v7 = 0;
LABEL_22:
  if (!pthread_mutex_unlock((a1 + 32)))
  {
    return v7;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncGetRange", 546, 143, 0, "unlock");
  v16 = 0;
  atomic_compare_exchange_strong((a1 + 200), &v16, 1u);
  if (!v16)
  {
    AAAsyncByteStreamCancel(*a1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t chunkAsyncProcess(uint64_t a1, const void *a2, size_t a3, unint64_t a4)
{
  if (atomic_load((a1 + 200)))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 32)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncProcess", 556, 143, 0, "lock");
    return 0xFFFFFFFFLL;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncProcess", 559, 143, 0, "invalid range");
    return 0xFFFFFFFFLL;
  }

  v13[0] = a4;
  v13[1] = a4 + a3;
  if (__CFADD__(a4, a3))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncProcess", 561, 143, 0, "invalid range");
    return 0xFFFFFFFFLL;
  }

  atomic_fetch_add_explicit((a1 + 232), a3, memory_order_relaxed);
  atomic_fetch_add_explicit((a1 + 224), 1uLL, memory_order_relaxed);
  v10 = *(a1 + 96);
  if (v10)
  {
    v11 = *(a1 + 104);
    while (*v11 != 2 || rangeCmp((v11 + 16), v13))
    {
      v11 += 48;
      if (!--v10)
      {
        goto LABEL_19;
      }
    }

    memcpy(*(v11 + 40), a2, a3);
    *v11 = 3;
    if (*(a1 + 24) >= 3u)
    {
      fprintf(*MEMORY[0x29EDCA610], "--> chunk %10llx %10llx -- %8zu\n", *(v11 + 16), *(v11 + 24), *(v11 + 8));
    }
  }

LABEL_19:
  result = pthread_mutex_unlock((a1 + 32));
  if (result)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncProcess", 582, 143, 0, "unlock");
    v12 = 0;
    atomic_compare_exchange_strong((a1 + 200), &v12, 1u);
    if (!v12)
    {
      AAAsyncByteStreamCancel(*a1);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

atomic_uint *chunkAsyncCancel(atomic_uint *result)
{
  v1 = 0;
  atomic_compare_exchange_strong(result + 50, &v1, 1u);
  if (!v1)
  {
    return AAAsyncByteStreamCancel(*result);
  }

  return result;
}

void *streamProc(void *a1)
{
  if (atomic_load(a1 + 51))
  {
    return a1;
  }

  v139 = vdupq_n_s64(2uLL);
  while (1)
  {
    if (*(a1 + 32))
    {
      goto LABEL_4;
    }

    v40 = a1[1] * a1[12];
    v41 = a1[20];
    v42 = v40 + (v40 >> 2);
    v43 = 0;
    if (v41)
    {
      v44 = (a1[21] + 8);
      do
      {
        v43 = *v44 + v43 - *(v44 - 1);
        v44 += 2;
        --v41;
      }

      while (v41);
      if (v43 > v42)
      {
LABEL_4:
        v3 = 0;
        goto LABEL_5;
      }
    }

    v3 = 0;
    while (1)
    {
      v140 = 0;
      v141 = 0;
      Range = AAAsyncByteStreamGetRange(*a1, &v140, &v141);
      if (Range < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateFetchRanges", 220, 143, 0, "GetRange");
        goto LABEL_265;
      }

      if (!Range)
      {
        goto LABEL_112;
      }

      if (!v140)
      {
        break;
      }

      v46 = v141;
      if ((v141 & 0x8000000000000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateFetchRanges", 228, 143, 0, "invalid range");
        goto LABEL_265;
      }

      v47 = v141 + v140;
      *&v142 = v141;
      *(&v142 + 1) = v141 + v140;
      if (__CFADD__(v141, v140))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateFetchRanges", 230, 143, 0, "invalid range overflow");
        goto LABEL_265;
      }

      v48 = a1[20];
      if (v48)
      {
        v49 = a1[21];
        v50 = a1[20];
        while (rangeCmp(v49, &v142))
        {
          v49 += 2;
          if (!--v50)
          {
            goto LABEL_89;
          }
        }

        goto LABEL_106;
      }

LABEL_89:
      v51 = a1[19];
      if (v48 >= v51)
      {
        v52 = 2 * v51;
        v24 = v51 == 0;
        v53 = 32;
        if (!v24)
        {
          v53 = v52;
        }

        a1[19] = v53;
        if ((16 * v53) >= 0x2000000001)
        {
          *__error() = 12;
        }

        else
        {
          v54 = a1[21];
          v55 = realloc(v54, 16 * v53);
          if (v55)
          {
            a1[21] = v55;
            goto LABEL_95;
          }

          free(v54);
        }

        a1[21] = 0;
        v138 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateFetchRanges", 248, 143, *v138, "malloc");
        a1[19] = 0;
        a1[20] = 0;
LABEL_265:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "streamProc", 493, 143, 0, "fetching ranges");
        goto LABEL_272;
      }

LABEL_95:
      if (*(a1 + 6) >= 3u)
      {
        fprintf(*MEMORY[0x29EDCA610], "<<< range %10llx %10llx\n", v46, v47);
      }

      v57 = a1[20];
      v56 = a1[21];
      a1[20] = v57 + 1;
      *(v56 + 16 * v57) = v142;
      v43 += v47 - v46;
      atomic_fetch_add_explicit(a1 + 27, v47 - v46, memory_order_relaxed);
      atomic_fetch_add_explicit(a1 + 26, 1uLL, memory_order_relaxed);
      v59 = a1[17];
      v58 = a1[18];
      if (v59 == v58)
      {
        *(a1 + 17) = v142;
      }

      else if (v47 != v46)
      {
        if (v59 >= v46)
        {
          v59 = v46;
        }

        if (v47 > v58)
        {
          v58 = v47;
        }

        a1[17] = v59;
        a1[18] = v58;
      }

      v3 = 1;
LABEL_106:
      if (v43 > v42)
      {
        goto LABEL_112;
      }
    }

    if (*(a1 + 6) >= 3u)
    {
      fwrite("<<< range EOF\n", 0xEuLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    *(a1 + 32) = 1;
LABEL_112:
    if (v3)
    {
      stateSortRanges(a1);
    }

LABEL_5:
    if (pthread_mutex_lock((a1 + 4)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", 276, 143, 0, "lock");
LABEL_268:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "streamProc", 497, 143, 0, "retiring ranges");
      goto LABEL_272;
    }

    v4 = a1[20];
    if (!v4)
    {
      goto LABEL_115;
    }

    v5 = 0;
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = a1[1];
LABEL_9:
      v9 = (a1[21] + 16 * v6);
      v11 = *v9;
      v10 = v9[1];
      v12 = *v9 / v8;
      v13 = (v10 + v8 - 1) / v8;
      if (v12 < v13)
      {
        break;
      }

LABEL_51:
      v26 = v10 - v11;
      if (v10 - v11 > a1[22])
      {
        a1[22] = v26;
        if (v26 >= 0x2000000001)
        {
          *__error() = 12;
LABEL_261:
          a1[23] = 0;
          v135 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", 314, 143, *v135, "malloc");
          a1[22] = 0;
          goto LABEL_74;
        }

        v27 = a1[23];
        v28 = realloc(v27, v10 - v11);
        if (!v28)
        {
          free(v27);
          goto LABEL_261;
        }

        a1[23] = v28;
      }

      if (v12 < v13)
      {
        v29 = 0;
        while (1)
        {
          v30 = (a1[13] + 48 * *(a1[15] + 8 * v12));
          v31 = v30[2];
          v32 = v30[3];
          if (v31 == v32)
          {
            goto LABEL_64;
          }

          v33 = *v9;
          v34 = v9[1];
          if (*v9 == v34)
          {
            goto LABEL_64;
          }

          if (v33 <= v31)
          {
            v33 = v30[2];
          }

          if (v32 >= v34)
          {
            v32 = v9[1];
          }

          if (v33 >= v32)
          {
LABEL_64:
            v33 = 0;
            v32 = 0;
          }

          v35 = v32 - v33 + v29;
          if (v35 > v26)
          {
            break;
          }

          memcpy((a1[23] + v29), (v30[5] + v33 - v31), v32 - v33);
          ++v12;
          v29 = v35;
          if (v12 >= v13)
          {
            goto LABEL_67;
          }
        }

        v38 = 328;
LABEL_73:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", v38, 143, 0, "invalid state");
        goto LABEL_74;
      }

LABEL_67:
      v36 = *v9;
      v37 = v9[1];
      if (*(a1 + 6) >= 3u)
      {
        fprintf(*MEMORY[0x29EDCA610], ">>> range %10llx %10llx\n", *v9, v37);
        v36 = *v9;
        v37 = v9[1];
      }

      if ((AAAsyncByteStreamProcess(*a1, a1[23], v37 - v36, v36) & 0x80000000) != 0)
      {
        v134 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", 336, 143, v134, "process range");
LABEL_74:
        v39 = 1;
        goto LABEL_116;
      }

      v7 = 0;
      *v9 = 0;
      v9[1] = 0;
      v4 = a1[20];
      ++v6;
      v5 = 1;
      if (v6 >= v4)
      {
        goto LABEL_256;
      }
    }

    v14 = *v9;
    v15 = *v9 / v8;
    while (v15 < a1[14])
    {
      v16 = *(a1[15] + 8 * v15);
      if (v16 == -1)
      {
        break;
      }

      v17 = a1[13] + 48 * v16;
      if (!*v17 || v15 != *(v17 + 8))
      {
        v38 = 291;
        goto LABEL_73;
      }

      if (*v17 != 3)
      {
        break;
      }

      if (v14 == v10)
      {
        goto LABEL_22;
      }

      v18 = v15 * v8;
      v19 = v15 * v8 + v8;
      if (v14 > v15 * v8)
      {
        v18 = v14;
      }

      if (v19 >= v10)
      {
        v19 = v9[1];
      }

      if (v18 >= v19)
      {
LABEL_22:
        v18 = 0;
        v19 = 0;
      }

      v20 = 0;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 != v21)
      {
        v14 = v9[1];
      }

      v23 = 0;
      if (v10 != v11 && v22 != v21)
      {
        if (v11 <= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = *v9;
        }

        if (v21 >= v10)
        {
          v20 = v9[1];
        }

        else
        {
          v20 = v21;
        }

        if (v23 >= v20)
        {
          v20 = 0;
          v23 = 0;
        }

        else if (v19 == v18)
        {
          break;
        }

        v14 = *v9;
      }

      v24 = v19 != v18 && v20 == v23;
      v25 = v24;
      if (v20 != v19 || v23 != v18 || v25)
      {
        break;
      }

      if (++v15 >= v13)
      {
        goto LABEL_51;
      }
    }

    if (++v6 < v4)
    {
      goto LABEL_9;
    }

    if ((v7 & 1) == 0)
    {
LABEL_256:
      stateSortRanges(a1);
      v39 = 0;
    }

    else
    {
LABEL_115:
      v39 = 0;
      v5 = 0;
    }

LABEL_116:
    if (pthread_mutex_unlock((a1 + 4)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", 347, 143, 0, "unlock");
      goto LABEL_268;
    }

    if (v39)
    {
      goto LABEL_268;
    }

    if (!a1[20])
    {
      v66 = 0;
      goto LABEL_252;
    }

    if (pthread_mutex_lock((a1 + 4)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", 359, 143, 0, "lock");
      goto LABEL_271;
    }

    v60 = a1[14];
    v61 = a1[12];
    v62 = a1[20];
    if (v62)
    {
      v63 = a1[1];
      v64 = (a1[21] + 8);
      do
      {
        v65 = (v63 - 1 + *v64) / v63;
        if (v65 > v60)
        {
          v60 = (v63 - 1 + *v64) / v63;
        }

        if (v65 - *(v64 - 1) / v63 > v61)
        {
          v61 = v65 - *(v64 - 1) / v63;
        }

        v64 += 2;
        --v62;
      }

      while (v62);
    }

    if ((lockedStateReserveActiveChunks(a1, v61) & 0x80000000) != 0)
    {
      goto LABEL_247;
    }

    if (a1[14] >= v60)
    {
      goto LABEL_138;
    }

    if (*(a1 + 6) >= 3u)
    {
      fprintf(*MEMORY[0x29EDCA610], "    %zu chunks\n", v60);
    }

    if (8 * v60 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_246;
    }

    v67 = a1[15];
    v68 = realloc(v67, 8 * v60);
    if (!v68)
    {
      free(v67);
LABEL_246:
      a1[15] = 0;
      v132 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "lockedStateReserveChunks", 172, 143, *v132, "malloc");
      a1[14] = 0;
LABEL_247:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", 375, 143, 0, "reserving chunks");
      goto LABEL_248;
    }

    a1[15] = v68;
    v69 = a1[14];
    if (v69 < v60)
    {
      memset(&v68[8 * v69], 255, 8 * v60 - 8 * v69);
    }

    a1[14] = v60;
LABEL_138:
    v70 = a1[12];
    if (v70)
    {
      v71 = (v70 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v72 = vdupq_n_s64(v70 - 1);
      v73 = (a1[13] + 80);
      v74 = xmmword_296AD1760;
      do
      {
        v75 = vmovn_s64(vcgeq_u64(v72, v74));
        if (v75.i8[0])
        {
          *(v73 - 6) = 0;
        }

        if (v75.i8[4])
        {
          *v73 = 0;
        }

        v74 = vaddq_s64(v74, vdupq_n_s64(2uLL));
        v73 += 12;
        v71 -= 2;
      }

      while (v71);
    }

    v76 = a1[20];
    if (!v76)
    {
LABEL_186:
      if (v70)
      {
        v97 = 0;
        v66 = 0;
        for (i = 0; i < v70; ++i)
        {
          v99 = a1[13];
          if (!*(v99 + v97 + 32) && *(v99 + v97))
          {
            v100 = v99 + v97;
            v101 = *(v99 + v97 + 8);
            if (v101 >= a1[14])
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", 410, 143, 0, "invalid chunk index");
              goto LABEL_249;
            }

            *(a1[15] + 8 * v101) = -1;
            *v100 = 0;
            *(v100 + 16) = 0;
            *(v100 + 24) = 0;
            *(v100 + 8) = -1;
            v70 = a1[12];
            v66 = 1;
          }

          v97 += 48;
        }

        if (v70)
        {
          v102 = (v70 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v103 = vdupq_n_s64(v70 - 1);
          v104 = (a1[13] + 80);
          v105 = xmmword_296AD1760;
          do
          {
            v106 = vmovn_s64(vcgeq_u64(v103, v105));
            if (v106.i8[0])
            {
              *(v104 - 6) = 0;
            }

            if (v106.i8[4])
            {
              *v104 = 0;
            }

            v105 = vaddq_s64(v105, v139);
            v104 += 12;
            v102 -= 2;
          }

          while (v102);
        }
      }

      else
      {
        v66 = 0;
      }

      v107 = a1[20];
      if (v107)
      {
        for (j = 0; j < v107; ++j)
        {
          v109 = (a1[21] + 16 * j);
          v110 = a1[1];
          v111 = *v109 / v110;
          v112 = (v110 + v109[1] - 1) / v110;
          if (!j && v111 < v112)
          {
            v113 = a1[15];
            v114 = v111;
            do
            {
              v115 = *(v113 + 8 * v114);
              if (v115 != -1)
              {
                *(a1[13] + 48 * v115 + 32) = 1;
              }

              ++v114;
            }

            while (v114 < v112);
          }

          if (v111 < v112)
          {
            while (1)
            {
              v116 = a1[15];
              if (*(v116 + 8 * v111) == -1)
              {
                v117 = a1[12];
                if (v117)
                {
                  v118 = 0;
                  v119 = a1[13];
                  while (1)
                  {
                    v120 = *v119;
                    v119 += 12;
                    if (!v120)
                    {
                      break;
                    }

                    if (v117 == ++v118)
                    {
                      goto LABEL_220;
                    }
                  }
                }

                else
                {
                  v118 = 0;
                }

                if (v118 == v117)
                {
LABEL_220:
                  if (j)
                  {
                    goto LABEL_244;
                  }

                  v118 = 0;
                  if (v117)
                  {
                    v121 = (a1[13] + 32);
                    while (1)
                    {
                      v122 = *v121;
                      v121 += 6;
                      if (!v122)
                      {
                        break;
                      }

                      if (v117 == ++v118)
                      {
                        goto LABEL_243;
                      }
                    }
                  }

                  if (v118 == v117)
                  {
LABEL_243:
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", 451, 143, 0, "no available chunk");
                    goto LABEL_249;
                  }

                  v123 = a1[13] + 48 * v118;
                  v124 = *(v123 + 8);
                  *(v116 + 8 * v124) = -1;
                  *v123 = 0;
                  *(v123 + 16) = 0;
                  *(v123 + 24) = 0;
                  *(v123 + 8) = -1;
                  fprintf(*MEMORY[0x29EDCA610], "BYE chunk %8zu evicted\n", v124);
                  v116 = a1[15];
                }

                v125 = a1[13] + 48 * v118;
                *(v125 + 8) = v111;
                *(v116 + 8 * v111) = v118;
                *v125 = 1;
                v126 = a1[1];
                v127 = v126 * *(v125 + 8);
                *(v125 + 16) = v127;
                v128 = v127 + v126;
                *(v125 + 24) = v127 + v126;
                *(v125 + 32) = j == 0;
                if (!v126)
                {
                  goto LABEL_235;
                }

                v130 = a1[17];
                v129 = a1[18];
                if (v130 == v129)
                {
                  goto LABEL_235;
                }

                if (v130 > v127)
                {
                  v127 = a1[17];
                }

                if (v128 >= v129)
                {
                  v128 = a1[18];
                }

                *(v125 + 16) = v127;
                *(v125 + 24) = v128;
                if (v127 >= v128)
                {
LABEL_235:
                  *(v125 + 16) = 0;
                  *(v125 + 24) = 0;
                }

                if (*(a1 + 6) >= 3u)
                {
                  fprintf(*MEMORY[0x29EDCA610], "SET range %10llx %10llx -- %8zu\n", *v109, v109[1], v111);
                }

                v66 = 1;
              }

              if (++v111 >= v112)
              {
                v107 = a1[20];
                break;
              }
            }
          }

          v131 = 0;
        }
      }

      else
      {
LABEL_244:
        v131 = 0;
      }

      goto LABEL_250;
    }

    v77 = 0;
    v78 = a1[21];
    v79 = a1[1];
    while (1)
    {
      v80 = (v78 + 16 * v77);
      v81 = *v80;
      v82 = v80[1];
      v83 = v81 / v79;
      v84 = (v79 - 1 + v82) / v79;
      if (v81 / v79 < v84)
      {
        break;
      }

LABEL_185:
      if (++v77 == v76)
      {
        goto LABEL_186;
      }
    }

    v85 = a1[15];
    v86 = v82;
    while (2)
    {
      v87 = *(v85 + 8 * v83);
      if (v87 == -1)
      {
        goto LABEL_184;
      }

      v88 = a1[13] + 48 * v87;
      if (*v88 && v83 == *(v88 + 8))
      {
        if (v81 == v86)
        {
          goto LABEL_158;
        }

        v89 = v83 * v79;
        v90 = v83 * v79 + v79;
        if (v81 > v83 * v79)
        {
          v89 = v81;
        }

        if (v90 >= v86)
        {
          v90 = v86;
        }

        if (v89 >= v90)
        {
LABEL_158:
          v89 = 0;
          v90 = 0;
        }

        v91 = 0;
        v93 = *(v88 + 16);
        v92 = *(v88 + 24);
        if (v93 != v92)
        {
          v86 = v81;
        }

        v94 = 0;
        if (v81 != v82 && v93 != v92)
        {
          if (v81 <= v93)
          {
            v94 = *(v88 + 16);
          }

          else
          {
            v94 = v81;
          }

          if (v92 >= v82)
          {
            v91 = v82;
          }

          else
          {
            v91 = *(v88 + 24);
          }

          if (v94 >= v91)
          {
            v91 = 0;
            v94 = 0;
          }

          else
          {
            v86 = v82;
            if (v90 == v89)
            {
              goto LABEL_184;
            }
          }

          v86 = v82;
        }

        v96 = v90 != v89 && v91 == v94;
        if (v90 == v91 && v94 == v89 && !v96)
        {
          ++*(v88 + 32);
        }

LABEL_184:
        if (++v83 >= v84)
        {
          goto LABEL_185;
        }

        continue;
      }

      break;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", 389, 143, 0, "invalid state");
LABEL_248:
    v66 = 0;
LABEL_249:
    v131 = 1;
LABEL_250:
    if (pthread_mutex_unlock((a1 + 4)))
    {
      break;
    }

    if (v131)
    {
      goto LABEL_271;
    }

LABEL_252:
    if (!(v5 | v3 | v66))
    {
      usleep(0x9C40u);
    }

    if (atomic_load(a1 + 51))
    {
      return a1;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", 478, 143, 0, "unlock");
LABEL_271:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "streamProc", 501, 143, 0, "updating chunks");
LABEL_272:
  v136 = 0;
  atomic_compare_exchange_strong(a1 + 50, &v136, 1u);
  if (!v136)
  {
    AAAsyncByteStreamCancel(*a1);
  }

  return a1;
}

uint64_t rangeCmp(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == *a1 && v5 != v4)
  {
    return 1;
  }

  if (v3 >= v5)
  {
    v7 = v5 < v3;
  }

  else
  {
    v7 = -1;
  }

  if (v4 >= v2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if ((v5 != v4 || v3 == v2) && v2 >= v4)
  {
    return v8;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void stateSortRanges(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1)
  {
    qsort(*(a1 + 168), v1, 0x10uLL, rangeCmp);
    v3 = *(a1 + 160);
    if (v3)
    {
      v4 = v3 - 1;
      v5 = (*(a1 + 168) + 16 * v3 - 8);
      do
      {
        if (*(v5 - 1) != *v5)
        {
          break;
        }

        v5 -= 2;
        *(a1 + 160) = v4--;
      }

      while (v4 != -1);
    }
  }
}

unint64_t AAAsyncByteStreamProcessAllRanges(void *a1, void *a2, uint64_t a3, size_t __count)
{
  if (!__count)
  {
    LODWORD(__count) = getDefaultNThreads();
  }

  v28 = 0;
  v27 = 0;
  v6 = __count;
  v7 = calloc(__count, 8uLL);
  v8 = v7;
  if (!v7)
  {
    v19 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 79, 116, *v19, "malloc");
    v13 = 0;
    goto LABEL_23;
  }

  if (v6)
  {
    v9 = v6;
    v10 = v7;
    do
    {
      v11 = malloc(0x48uLL);
      v12 = v11;
      if (!v11)
      {
        v20 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 83, 116, *v20, "malloc");
        v13 = 0;
        goto LABEL_24;
      }

      memset_s(v11, 0x48uLL, 0, 0x48uLL);
      *v12 = a2;
      v12[1] = a1;
      v12[2] = &v28;
      v12[3] = &v27;
      *v10++ = v12;
      --v9;
    }

    while (v9);
  }

  v13 = ThreadPoolCreate(v6, v8, workerProc_2);
  if (!v13)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 93, 116, 0, "ThreadPoolCreate");
    goto LABEL_23;
  }

  if (atomic_load(&v28))
  {
LABEL_10:
    LODWORD(v12) = 1;
    goto LABEL_24;
  }

  while (1)
  {
    v25 = 0;
    v26 = 0;
    Range = AAAsyncByteStreamGetRange(a1, &v26, &v25);
    if (Range < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 101, 116, 0, "AAAsyncByteStreamGetRange");
      goto LABEL_23;
    }

    if (!Range)
    {
      usleep(0x4E20u);
      goto LABEL_17;
    }

    if (!v26)
    {
      goto LABEL_10;
    }

    Worker = ThreadPoolGetWorker(v13);
    if (!Worker)
    {
      break;
    }

    v16 = v25;
    *(Worker + 32) = v26;
    *(Worker + 40) = v16;
    if ((ThreadPoolRunWorker(v13) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 110, 116, 0, "ThreadPoolRunWorker");
      goto LABEL_23;
    }

LABEL_17:
    v17 = atomic_load(&v28);
    LODWORD(v12) = 1;
    if (v17)
    {
      goto LABEL_24;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 107, 116, 0, "ThreadPoolGetWorker");
LABEL_23:
  LODWORD(v12) = 0;
LABEL_24:
  if ((ThreadPoolDestroy(v13) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 115, 116, 0, "Threads reported errors");
    LODWORD(v12) = 0;
  }

  if (v8)
  {
    if (v6)
    {
      v21 = v8;
      do
      {
        v22 = *v21;
        if (*v21)
        {
          free(v22[8]);
          free(v22);
        }

        ++v21;
        --v6;
      }

      while (v6);
    }

    free(v8);
  }

  if (atomic_load(&v28))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 127, 116, 0, "Threads reported errors");
    return -1;
  }

  if (v12)
  {
    return atomic_load(&v27);
  }

  else
  {
    return -1;
  }
}

uint64_t workerProc_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48) < v2)
  {
    *(a1 + 48) = v2;
    if (v2 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_15:
      *(a1 + 64) = 0;
      v8 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "workerProc", 36, 116, *v8, "malloc");
      *(a1 + 48) = 0;
      goto LABEL_16;
    }

    v3 = *(a1 + 64);
    v4 = realloc(v3, v2);
    if (!v4)
    {
      free(v3);
      goto LABEL_15;
    }

    *(a1 + 64) = v4;
    v2 = *(a1 + 32);
  }

  *(a1 + 56) = 0;
  v5 = 0;
  if (v2)
  {
    while (1)
    {
      v6 = AAByteStreamPRead(*a1, (*(a1 + 64) + v5), v2 - v5, *(a1 + 40) + v5);
      if (v6 < 0)
      {
        break;
      }

      v5 = *(a1 + 56);
      if (v6)
      {
        v5 += v6;
        *(a1 + 56) = v5;
        v2 = *(a1 + 32);
        if (v5 < v2)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "workerProc", 43, 116, 0, "istream read");
  }

  else
  {
LABEL_10:
    if ((AAAsyncByteStreamProcess(*(a1 + 8), *(a1 + 64), v5, *(a1 + 40)) & 0x80000000) == 0)
    {
      result = 0;
      atomic_fetch_add_explicit(*(a1 + 24), *(a1 + 56), memory_order_relaxed);
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "workerProc", 50, 116, 0, "stream process");
  }

LABEL_16:
  v9 = 0;
  *(a1 + 56) = 0;
  atomic_compare_exchange_strong(*(a1 + 16), &v9, 1u);
  return 0xFFFFFFFFLL;
}

void *reallocToFit(void *a1, size_t __size)
{
  if (__size >= 0x1000)
  {
    v4 = malloc(__size);
    if (v4)
    {
      v5 = v4;
      memcpy(v4, a1, __size);
      free(a1);
      return v5;
    }
  }

  return a1;
}

double getRealTime()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec + v1.tv_usec * 0.000001;
}

uint64_t getDefaultNThreads()
{
  v3 = 0;
  v2 = 4;
  if (!sysctlbyname("hw.physicalcpu", &v3, &v2, 0, 0))
  {
    return v3;
  }

  v0 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDefaultNThreads", 107, 3, *v0, "sysctlbyname");
  return 1;
}

uint64_t sha1ToString(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (result + 1);
  do
  {
    v4 = *(a2 + v2);
    *(v3 - 1) = serializeHexString_digit[v4 >> 4];
    *v3 = serializeHexString_digit[v4 & 0xF];
    v3 += 2;
    ++v2;
  }

  while (v2 != 20);
  *(result + 40) = 0;
  return result;
}

uint64_t serializeHexString(uint64_t result, unsigned int a2, unsigned __int8 *a3)
{
  if (a2)
  {
    v3 = 0;
    do
    {
      v4 = *a3++;
      *(result + v3) = serializeHexString_digit[v4 >> 4];
      *(result + (v3 + 1)) = serializeHexString_digit[v4 & 0xF];
      v3 += 2;
    }

    while (2 * a2 != v3);
  }

  *(result + 2 * a2) = 0;
  return result;
}

uint64_t sha1cmp(uint64_t a1, uint64_t a2)
{
  v2 = bswap64(*a1);
  v3 = bswap64(*a2);
  if (v2 == v3)
  {
    v2 = bswap64(*(a1 + 8));
    v3 = bswap64(*(a2 + 8));
    if (v2 == v3)
    {
      v2 = bswap32(*(a1 + 16));
      v3 = bswap32(*(a2 + 16));
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

const char *makePath(const char *result, unint64_t a2)
{
  v3 = result;
  memset(&v6, 0, sizeof(v6));
  if (a2)
  {
    v4 = a2;
    do
    {
      if (v3[v4] == 47)
      {
        v3[v4] = 0;
        result = stat(v3, &v6);
        if (!result)
        {
          break;
        }
      }

      --v4;
    }

    while (v4);
  }

  else
  {
    v4 = 0;
  }

  if (v4 < a2)
  {
    v5 = 1;
    do
    {
      if (!v3[v4])
      {
        if (!v5)
        {
          result = mkdir(v3, 0x1EDu);
        }

        v5 = 0;
        v3[v4] = 47;
      }

      ++v4;
    }

    while (a2 != v4);
  }

  return result;
}

uint64_t normalizePath(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = a1 - 1;
  do
  {
LABEL_2:
    for (i = v2; ; i += 2)
    {
      while (1)
      {
        v2 = i + 1;
        v5 = *(a1 + i);
        if (v5 != 47)
        {
          break;
        }

        ++i;
        if (v1)
        {
          i = v2;
          if (*(v3 + v1) != 47)
          {
            LOBYTE(v5) = 47;
LABEL_28:
            *(a1 + v1++) = v5;
            goto LABEL_2;
          }
        }
      }

      if (!*(a1 + i))
      {
        goto LABEL_29;
      }

      if (v1)
      {
        v6 = *(v3 + v1) == 47;
      }

      else
      {
        v6 = 1;
      }

      if (v5 != 46 || !v6)
      {
        goto LABEL_28;
      }

      v8 = *(a1 + v2);
      if (v8 != 47)
      {
        break;
      }
    }

    if (!*(a1 + v2))
    {
      break;
    }

    if (v8 != 46 || *(a1 + 2 + i) != 47 && *(a1 + 2 + i))
    {
      LOBYTE(v5) = 46;
      goto LABEL_28;
    }

    if (!v1)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = (a1 - 2 + v1);
    v10 = v1 - 1;
    do
    {
      v1 = v10;
      if (!v10)
      {
        break;
      }

      v11 = *v9--;
      --v10;
    }

    while (v11 != 47);
    v2 = i + 3;
  }

  while (*(a1 + 2 + i));
LABEL_29:
  while (v1)
  {
    if (*(v3 + v1) != 47)
    {
      break;
    }

    --v1;
  }

  v12 = 0;
  *(a1 + v1) = 0;
  return v12;
}

uint64_t concatPath(char *a1, size_t a2, char *__s, const char *a4)
{
  v8 = strlen(__s);
  v9 = strlen(a4);
  if (v8 + v9 + 2 > a2)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v9;
  if (a1 != __s)
  {
    memcpy(a1, __s, v8);
  }

  if (v11)
  {
    if (!v8 || a1[v8 - 1] != 47)
    {
      a1[v8++] = 47;
    }

    memcpy(&a1[v8], a4, v11);
    v8 += v11;
  }

  result = 0;
  a1[v8] = 0;
  return result;
}

uint64_t concatExtractPath(char *a1, size_t a2, char *__s, const char *a4)
{
  v8 = strlen(__s);
  v9 = strlen(a4);
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 278, 3, 0, "invalid dir: %s");
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (v8 + v9 + 1 >= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 279, 3, 0, "dir/path too long: %s");
    return 0xFFFFFFFFLL;
  }

  strlcpy(a1, __s, a2);
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  memset(&v22, 0, sizeof(v22));
  while (1)
  {
    v12 = &a4[v11];
    v13 = strchr(&a4[v11], 47);
    v14 = v13 - a4;
    if (v13)
    {
      v15 = v13 - a4;
    }

    else
    {
      v15 = v10;
    }

    v16 = v15 - v11;
    if (v15 == v11)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 297, 3, 0, "invalid path: %s");
      return 0xFFFFFFFFLL;
    }

    v17 = v13;
    if (v16 != 2)
    {
      if (v16 == 1 && *v12 == 46)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    if (*v12 == 46 && v12[1] == 46)
    {
      break;
    }

LABEL_15:
    v18 = lstat(a1, &v22);
    if (v11)
    {
      if (v18)
      {
        if (mkdir(a1, 0x1EDu) && (lstat(a1, &v22) || (v22.st_mode & 0xF000) != 0x4000))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 326, 3, 0, "a parent of path is not a directory: %s");
          return 0xFFFFFFFFLL;
        }
      }

      else if ((v22.st_mode & 0xF000) != 0x4000)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 316, 3, 0, "a parent of path is not a directory: %s");
        return 0xFFFFFFFFLL;
      }
    }

    else if (v18 || (v19 = v22.st_mode & 0xF000, v19 != 0x4000) && v19 != 40960)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 311, 3, 0, "dir doesn't exist, or is invalid: %s");
      return 0xFFFFFFFFLL;
    }

    v20 = &a1[v8];
    if (a1[v8 - 1] != 47)
    {
      ++v8;
      *v20 = 47;
    }

    memcpy(&a1[v8], &a4[v11], v16);
    v8 += v16;
    a1[v8] = 0;
LABEL_29:
    if (v17)
    {
      v11 = v14 + 1;
      if (v14 + 1 < v10)
      {
        continue;
      }
    }

    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 304, 3, 0, "invalid path: %s");
  return 0xFFFFFFFFLL;
}

BOOL pathIsValid(_BYTE *a1, size_t __n)
{
  if (!__n)
  {
    return 1;
  }

  if (__n > 0x3FF || memchr(a1, 0, __n) || *a1 == 47)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = &a1[v5];
    v7 = memchr(&a1[v5], 47, __n - v5);
    if (!v7)
    {
      break;
    }

    v8 = v7 - a1;
    v9 = v7 - a1 - v5;
    if (v7 - a1 == v5)
    {
      return 0;
    }

    if (v5 && v9 == 1)
    {
      v10 = *v6;
      goto LABEL_13;
    }

    if (v9 == 2 && *v6 == 46)
    {
      v10 = v6[1];
LABEL_13:
      if (v10 == 46)
      {
        return 0;
      }
    }

    v5 = v8 + 1;
  }

  while (v8 + 1 < __n);
  return v5 != __n;
}

uint64_t getTempDir(char *a1, size_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = confstr(65537, a1, a2);
  if (!v4)
  {
    if (issetugid())
    {
      v4 = 0;
    }

    else
    {
      v4 = getenv("TMPDIR");
      if (v4)
      {
        v4 = strlcpy(a1, v4, a2);
      }
    }
  }

  if (v4 >= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = strlen(a1);
  if (v6)
  {
    do
    {
      v7 = a1[v6 - 1];
      if (v7 != 47)
      {
        break;
      }

      --v6;
    }

    while (v6);
    if (v7 == 47)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  a1[v6] = 0;
  return v5;
}

uint64_t isDirEmpty(const char *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = opendir(a1);
  if (v2)
  {
    v3 = v2;
    memset(&v11, 0, 512);
    v10 = 0;
    while (1)
    {
      if (readdir_r(v3, &v11, &v10))
      {
        v8 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "isDirEmpty", 438, 3, *v8, "readdir_r");
        v4 = 0xFFFFFFFFLL;
        goto LABEL_24;
      }

      if (!v10)
      {
        break;
      }

      if (v11.d_namlen == 1 && v11.d_name[0] == 46)
      {
        v4 = 1;
      }

      else
      {
        v6 = v11.d_namlen == 2 && v11.d_name[0] == 46 && v11.d_name[1] == 46;
        v4 = v6;
        if (!v6)
        {
          goto LABEL_24;
        }
      }

      if (!v4)
      {
        goto LABEL_24;
      }
    }

    v4 = 1;
LABEL_24:
    closedir(v3);
  }

  else
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "isDirEmpty", 428, 3, *v7, "%s", a1);
    return 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t storeFileContents(const char *a1, uint64_t a2, unint64_t a3)
{
  v6 = open(a1, 1537, 420);
  if (v6 < 0)
  {
    v12 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 535, 3, *v12, "%s", a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
    if (a3)
    {
      v8 = 0;
      while (1)
      {
        if (a3 - v8 >= 0x10000000)
        {
          v9 = 0x10000000;
        }

        else
        {
          v9 = a3 - v8;
        }

        v10 = write(v7, (a2 + v8), v9);
        if (v10 < 0)
        {
          v13 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 544, 3, v13, "%s");
          goto LABEL_14;
        }

        if (!v10)
        {
          break;
        }

        v8 += v10;
        if (v8 >= a3)
        {
          goto LABEL_10;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 545, 3, 0, "write error: %s");
LABEL_14:
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
LABEL_10:
      v11 = 0;
    }

    close(v7);
  }

  return v11;
}

uint64_t copyFileSegment(const char *a1, unint64_t a2, unint64_t a3, const char *a4)
{
  v8 = MemBufferCreate(0x100000uLL);
  if (v8)
  {
    v9 = IFileStreamCreateWithFilename(a1, a2, a3);
    if (v9)
    {
      v10 = OFileStreamCreateWithFilename(a4, a3);
      if (v10)
      {
        if ((MemBufferTransmit(v8, a3, IFileStreamRead, v9, OFileStreamWrite, v10) & 0x8000000000000000) == 0)
        {
          v11 = 0;
          goto LABEL_11;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 569, 3, 0, "copy failed: %s to %s");
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 566, 3, 0, "opening file: %s");
      }
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 565, 3, 0, "opening file: %s", a1);
      v10 = 0;
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 564, 3, 0, "mem buffer creation");
    v10 = 0;
    v9 = 0;
  }

  v11 = 1;
LABEL_11:
  IFileStreamDestroy(v9);
  OFileStreamDestroy(v10);
  MemBufferDestroy(v8);
  if (v11)
  {
    unlink(a4);
  }

  return (v11 << 31 >> 31);
}

uint64_t updateFileAttributes(const char *a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v16.tv_sec = *(a2 + 32);
  v16.tv_usec = 0;
  v17 = *(a2 + 48);
  v18 = 0;
  memset(&v15, 0, sizeof(v15));
  if (stat(a1, &v15))
  {
    if (*__error() == 1)
    {
      return 0;
    }

    v7 = 604;
LABEL_24:
    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", v7, 3, *v13, "%s", a1);
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 16);
  if (v15.st_uid == v5)
  {
    v6 = *(a2 + 20);
    if (v15.st_gid == v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = *(a2 + 20);
  }

  if (chown(a1, v5, v6) && *__error() != 1)
  {
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 610, 3, *v8, "%s", a1);
    v4 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

LABEL_11:
  v4 = 0;
LABEL_13:
  v9 = *(a2 + 4);
  if (v15.st_mode != v9 && chmod(a1, v9 & 0xFFF) && *__error() != 1)
  {
    v10 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 614, 3, *v10, "%s", a1);
    v4 = 0xFFFFFFFFLL;
  }

  v11 = *(a2 + 116) & 0xFFFFFFDF | (32 * ((v15.st_flags >> 5) & 1));
  if (v15.st_flags != v11 && chflags(a1, v11) && *__error() != 1)
  {
    v12 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 621, 3, *v12, "%s", a1);
    v4 = 0xFFFFFFFFLL;
  }

  if (utimes(a1, &v16) && *__error() != 1)
  {
    v7 = 624;
    goto LABEL_24;
  }

  return v4;
}

uint64_t copyFileWithAttributes(const char *a1, const char *a2, uint64_t a3, uint64_t a4, int a5)
{
  memset(&v23, 0, sizeof(v23));
  v9 = open(a1, 0, a3, a4);
  if (v9 < 0)
  {
    v12 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 645, 3, *v12, "%s", a1);
LABEL_19:
    v16 = 0;
LABEL_20:
    v18 = 0;
LABEL_21:
    v20 = 0;
LABEL_22:
    IFileStreamDestroy(v16);
    OArchiveFileStreamDestroy(v18);
    MemBufferDestroy(v20);
    unlink(a2);
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (fstat(v9, &v23))
  {
    v11 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 646, 3, v11, "%s");
LABEL_18:
    close(v10);
    goto LABEL_19;
  }

  if ((v23.st_mode & 0xF000) != 0x8000)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 647, 3, 0, "not a regular file: %s");
    goto LABEL_18;
  }

  FileProtectionClassFD = getFileProtectionClassFD(v10);
  close(v10);
  st_size = v23.st_size;
  st_flags = v23.st_flags;
  v16 = IFileStreamCreateWithFilename(a1, 0, v23.st_size);
  if (!v16)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 666, 3, 0, "open failed: %s", a1);
    goto LABEL_20;
  }

  if ((st_flags & 0x40000020) == 0x20)
  {
    v17 = a5 | 4;
  }

  else
  {
    v17 = a5;
  }

  v18 = OArchiveFileStreamCreate(a2, st_size, v17 | 8u, FileProtectionClassFD, a3);
  if (!v18)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 667, 3, 0, "open failed: %s", a1);
    goto LABEL_21;
  }

  v19 = MemBufferCreate(0x100000uLL);
  v20 = v19;
  if (!v19)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 670, 3, 0, "alloc");
    goto LABEL_22;
  }

  v21 = MemBufferTransmit(v19, st_size, IFileStreamRead, v16, OArchiveFileStreamWrite, v18);
  if ((v21 & 0x8000000000000000) != 0 || v21 != st_size)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 674, 3, 0, "copy failed %lld");
    goto LABEL_22;
  }

  IFileStreamDestroy(v16);
  OArchiveFileStreamDestroy(v18);
  MemBufferDestroy(v20);
  if (!updateFileAttributes(a2, &v23))
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 690, 3, 0, "update file attributes");
  return 0xFFFFFFFFLL;
}

uint64_t getFileProtectionClassFD(int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v4[1] = 0;
  v4[2] = 0;
  memset(v5, 0, sizeof(v5));
  v4[0] = 0x4000000000000005;
  v1 = fgetattrlist(a1, v4, v5, 0x40uLL, 1u);
  if (LODWORD(v5[0]) == 8 && v1 == 0)
  {
    return DWORD1(v5[0]);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t statIsCompressed(unsigned int a1)
{
  if ((a1 & 0x40000000) != 0)
  {
    return 0;
  }

  else
  {
    return (a1 >> 5) & 1;
  }
}

uint64_t setFileAPFSInternalFlags(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t areFilesEqual(const char *a1, const char *a2)
{
  memset(&v24, 0, sizeof(v24));
  memset(&v23, 0, sizeof(v23));
  if (stat(a1, &v24))
  {
    v4 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 708, 3, v4, "%s");
LABEL_5:
    v6 = 0;
    v7 = 0;
    v8 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  if (stat(a2, &v23))
  {
    v5 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 709, 3, v5, "%s");
    goto LABEL_5;
  }

  if ((v24.st_mode & 0xF000) != 0x8000 || (v23.st_mode & 0xF000) != 0x8000 || v24.st_size != v23.st_size)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v10 = open(a1, 0);
  if (v10 < 0)
  {
    v18 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 714, 3, v18, "%s");
    goto LABEL_5;
  }

  v11 = v10;
  v12 = open(a2, 0);
  if (v12 < 0)
  {
    v19 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 716, 3, *v19, "%s", a2);
    close(v11);
    goto LABEL_5;
  }

  v13 = v12;
  v7 = malloc(0x40000uLL);
  v14 = malloc(0x40000uLL);
  v6 = v14;
  if (v7 && v14)
  {
    while (1)
    {
      v15 = read(v11, v7, 0x40000uLL);
      if (v15 < 0)
      {
        v21 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 723, 3, v21, "%s read");
        goto LABEL_24;
      }

      v16 = v15;
      v17 = read(v13, v6, 0x40000uLL);
      if (v17 < 0)
      {
        v22 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 725, 3, v22, "%s read");
        goto LABEL_24;
      }

      if (v16 != v17)
      {
        goto LABEL_19;
      }

      if (!v16)
      {
        break;
      }

      if (memcmp(v7, v6, v16))
      {
LABEL_19:
        v8 = 0;
        goto LABEL_25;
      }
    }

    v8 = 1;
  }

  else
  {
    v20 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 719, 3, v20, "malloc");
LABEL_24:
    v8 = 0xFFFFFFFFLL;
  }

LABEL_25:
  close(v11);
  close(v13);
LABEL_6:
  free(v7);
  free(v6);
  return v8;
}

uint64_t areFilesEqual2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v16 = *MEMORY[0x29EDCA608];
  if (concatPath(v15, 0x800uLL, v8, v12) || concatPath(v14, 0x800uLL, v11, v10))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return areFilesEqual(v15, v14);
  }
}

uint64_t getFilesystemBlockSize(const char *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  memset(&v3, 0, 512);
  if ((statfs(a1, &v3) & 0x80000000) == 0)
  {
    return v3.f_bsize;
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFilesystemBlockSize", 752, 3, "statfs failed: %s\n", a1);
  return 4096;
}

off_t getFileDiskUsage(const char *a1)
{
  memset(&v9, 0, sizeof(v9));
  if (lstat(a1, &v9))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDiskUsage", 765, 3, "stat failed: %s\n", a1);
    return -1;
  }

  else
  {
    if (v9.st_blocks << 9 >= v9.st_size)
    {
      st_size = v9.st_size;
    }

    else
    {
      st_size = v9.st_blocks << 9;
    }

    if (v9.st_blocks << 9)
    {
      v2 = st_size;
    }

    else
    {
      v2 = v9.st_size;
    }

    if ((v9.st_mode & 0xF000) == 0x8000)
    {
      v7 = 0;
      v8 = 0;
      v4 = ParallelCompressionAFSCGetMetadata(a1, &v8, &v7 + 1, &v7);
      if (HIDWORD(v7) != -1 && v4 == 0)
      {
        return v7;
      }
    }
  }

  return v2;
}

uint64_t getFileProtectionClass(const char *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v4[1] = 0;
  v4[2] = 0;
  memset(v5, 0, sizeof(v5));
  v4[0] = 0x4000000000000005;
  v1 = getattrlist(a1, v4, v5, 0x40uLL, 1u);
  if (LODWORD(v5[0]) == 8 && v1 == 0)
  {
    return DWORD1(v5[0]);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t getBufferSHA1Digest(char *a1, unint64_t a2, unsigned __int8 *a3)
{
  memset(&v10, 0, sizeof(v10));
  CC_SHA1_Init(&v10);
  if (a2)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      v6 += 0x100000;
      if (v6 <= a2)
      {
        v8 = 0x100000;
      }

      else
      {
        v8 = v7;
      }

      CC_SHA1_Update(&v10, a1, v8);
      v7 -= 0x100000;
      a1 += 0x100000;
    }

    while (v6 < a2);
  }

  CC_SHA1_Final(a3, &v10);
  return 0;
}

uint64_t getFileSegmentSHA1Digest(const char *a1, off_t a2, unint64_t a3, uint64_t a4)
{
  v8 = open(a1, 0);
  if (v8 < 0)
  {
    v12 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1Digest", 1025, 3, *v12, "%s", a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    FileSegmentSHA1DigestFD = getFileSegmentSHA1DigestFD(v8, a2, a3, a4);
    close(v9);
    return FileSegmentSHA1DigestFD;
  }
}

uint64_t getFileSegmentSHA1DigestFD(int a1, off_t a2, unint64_t a3, uint64_t a4)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (fcntl(a1, 48, 1))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1044, 3, "Warning: couldn't set F_NOCACHE\n");
  }

  memset(&c, 0, sizeof(c));
  v8 = valloc(0x100000uLL);
  if (!v8)
  {
    v13 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1049, 3, v13, "malloc", v16, v17, *&c.h0, *&c.h2, *&c.h4, *&c.Nh, *&c.data[1], *&c.data[3], *&c.data[5], *&c.data[7], *&c.data[9], *&c.data[11], *&c.data[13], *&c.data[15]);
LABEL_16:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  CC_SHA1_Init(&c);
  if (a3)
  {
    while (1)
    {
      v9 = a3 >= 0x100000 ? 0x100000 : a3;
      v10 = pread(a1, v8, v9, a2);
      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      v11 = v10;
      if (!v10)
      {
        goto LABEL_12;
      }

      if (v10 > v9)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1062, 3, 0, "error: read more bytes than requested: %zd (requested %zu)");
        goto LABEL_16;
      }

      CC_SHA1_Update(&c, v8, v10);
      a2 += v11;
      a3 -= v11;
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1059, 3, v14, "read", v16, v17, *&c.h0, *&c.h2, *&c.h4, *&c.Nh, *&c.data[1], *&c.data[3], *&c.data[5], *&c.data[7], *&c.data[9], *&c.data[11], *&c.data[13], *&c.data[15]);
    goto LABEL_16;
  }

LABEL_12:
  CC_SHA1_Final(a4, &c);
  v12 = 0;
LABEL_17:
  free(v8);
  return v12;
}

uint64_t enumerateTree(void *a1, char *__s)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = strlen(__s);
  if (v3 - 1024 < 0xFFFFFFFFFFFFFBFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v3;
  bzero(v7, 0x400uLL);
  __memcpy_chk();
  do
  {
    v6 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
  }

  while (v7[v6 - 1] == 47);
  v7[v6] = 0;
  return enumerateTree_rec(a1, v7, v6);
}

uint64_t removeFile(const char *a1)
{
  memset(&v3, 0, sizeof(v3));
  if (lstat(a1, &v3))
  {
    return 0;
  }

  if ((v3.st_mode & 0xF000) == 0x4000)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v3.st_flags & 0x20002) != 0)
  {
    lchflags(a1, v3.st_flags & 0xFFFDFFFD);
  }

  return unlink(a1);
}

uint64_t enumerateTree_rec(void *a1, const char *a2, uint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v6 = a2;
  }

  else
  {
    v6 = "/";
  }

  v7 = opendir(v6);
  if (v7)
  {
    memset(&v23, 0, 512);
    v22 = 0;
    v8 = a1[1];
    if (!v8 || (v8(*a1, a2) & 0x80000000) == 0)
    {
      if (!readdir_r(v7, &v23, &v22))
      {
        v14 = a3 + 1;
        v15 = &a2[a3];
        do
        {
          if (!v22)
          {
            v10 = 1;
            goto LABEL_10;
          }

          d_namlen = v23.d_namlen;
          if ((v23.d_namlen != 1 || v23.d_name[0] != 46) && (v23.d_namlen != 2 || v23.d_name[0] != 46 || v23.d_name[1] != 46))
          {
            v17 = v14 + v23.d_namlen;
            if (v17 > 0x3FF)
            {
              goto LABEL_9;
            }

            *v15 = 47;
            memcpy(v15 + 1, v23.d_name, d_namlen);
            a2[v17] = 0;
            memset(&v21, 0, sizeof(v21));
            if (lstat(a2, &v21))
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1170, 3, "lstat after readdir failed (errno=%d): %s");
            }

            else if ((v21.st_flags & 0x40000000) != 0)
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1175, 3, "skip dataless: %s");
            }

            else
            {
              d_type = v23.d_type;
              if (!v23.d_type)
              {
                if ((v21.st_mode & 0xF000) == 0x4000)
                {
                  d_type = 4;
                  v23.d_type = 4;
                }

                else
                {
                  d_type = 0;
                }
              }

              v19 = a1[3];
              if (v19)
              {
                v20 = v19(*a1, a2) >> 31;
                d_type = v23.d_type;
              }

              else
              {
                LOBYTE(v20) = 0;
              }

              if (d_type == 4 && (enumerateTree_rec(a1, a2, v17) & 0x80000000) != 0)
              {
                v10 = 0;
                *v15 = 0;
                goto LABEL_10;
              }

              *v15 = 0;
              if (v20)
              {
                goto LABEL_9;
              }
            }
          }
        }

        while (!readdir_r(v7, &v23, &v22));
      }

      v9 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1143, 3, *v9, "readdir_r");
    }

LABEL_9:
    v10 = 0;
LABEL_10:
    closedir(v7);
    v11 = a1[2];
    if (v11 && v11(*a1, a2) < 0)
    {
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

  else
  {
    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1126, 3, *v13, "%s", a2);
    return 0xFFFFFFFFLL;
  }
}

uint64_t removeTree(char *__s)
{
  v2[0] = 0;
  v2[1] = 0;
  v2[3] = removeEntryProc;
  v2[2] = removeLeaveDirProc;
  return enumerateTree(v2, __s);
}

uint64_t removeEntryProc(int a1, char *a2)
{
  memset(&v6, 0, sizeof(v6));
  if (lstat(a2, &v6))
  {
    v3 = 1247;
LABEL_3:
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "removeEntryProc", v3, 3, *v4, "%s", a2);
    return 0xFFFFFFFFLL;
  }

  if ((v6.st_mode & 0xF000) == 0x4000)
  {
    return 0;
  }

  result = unlink(a2);
  if (result)
  {
    v3 = 1250;
    goto LABEL_3;
  }

  return result;
}

uint64_t removeLeaveDirProc(int a1, char *a2)
{
  result = rmdir(a2);
  if (result)
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "removeLeaveDirProc", 1258, 3, *v4, "%s", a2);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t getVolumeCapabilities(const char *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  bzero(&v11, 0x878uLL);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (statfs(a1, &v11) < 0)
  {
    return -1;
  }

  LOWORD(v8) = 5;
  LODWORD(v9) = -2147352576;
  v2 = getattrlist(v11.f_mntonname, &v8, v6, 0x24uLL, 1u);
  result = -1;
  if (!v2 && LODWORD(v6[0]) == 36)
  {
    v4.i64[0] = *(v6 + 4);
    v4.i64[1] = *(v6 + 4);
    v5 = vandq_s8(vshlq_u32(v4, xmmword_296AD1ED0), xmmword_296AD1EE0);
    *v5.i8 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
    return (v5.i32[0] | v5.i32[1]);
  }

  return result;
}

uint64_t aaAssetExtractStreamSetParameterPtr(uint64_t *a1, int a2, char *a3)
{
  if (a1[1] == closeProc_1)
  {
    v4 = *a1;
    memset(&v5, 0, sizeof(v5));
    switch(a2)
    {
      case 'e':
        result = 0;
        *(v4 + 1040) = a3;
        return result;
      case 'j':
        if (!realpath_DARWIN_EXTSN(a3, (v4 + 3516)) || stat((v4 + 3516), &v5) < 0 || (v5.st_mode & 0xF000) != 0x4000)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamSetParameterPtr", 820, 133, 0, "invalid output dir: %s");
          return 0xFFFFFFFFLL;
        }

        break;
      case 'i':
        if (a3)
        {
          if (!realpath_DARWIN_EXTSN(a3, (v4 + 2492)) || stat((v4 + 2492), &v5) < 0 || (v5.st_mode & 0xF000) != 0x4000)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamSetParameterPtr", 816, 133, 0, "invalid input dir: %s");
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          memset_s((v4 + 2492), 0x400uLL, 0, 0x400uLL);
        }

        break;
      default:
        return 0xFFFFFFFFLL;
    }

    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamSetParameterPtr", 808, 133, 0, "invalid stream");
  return 0xFFFFFFFFLL;
}

uint64_t closeProc_1(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 8));
    AAHeaderDestroy(*(result + 4768));
    free(*(v1 + 4800));
    memset_s((v1 + 4784), 0x18uLL, 0, 0x18uLL);
    free(*(v1 + 4824));
    memset_s((v1 + 4808), 0x18uLL, 0, 0x18uLL);
    free(*(v1 + 4848));
    memset_s((v1 + 4832), 0x18uLL, 0, 0x18uLL);
    free(*(v1 + 4888));
    memset_s((v1 + 4872), 0x18uLL, 0, 0x18uLL);
    AAByteStreamClose(*(v1 + 4864));
    AAByteStreamClose(*(v1 + 4856));
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

uint64_t aaAssetExtractStreamSetParameterCallback(uint64_t (**a1)(uint64_t result), int a2, uint64_t a3)
{
  if (a1)
  {
    if (a1[1] == closeProc_1)
    {
      if (a2 == 104)
      {
        result = 0;
        *(*a1 + 131) = a3;
        return result;
      }
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamSetParameterCallback", 835, 133, 0, "invalid stream");
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamSetParameterCallback", 834, 133, 0, "NULL stream");
  }

  return 0xFFFFFFFFLL;
}

uint64_t *aaAssetExtractStreamOpen(const char *a1, uint64_t a2)
{
  memset(&v12, 0, sizeof(v12));
  v4 = malloc(0x1320uLL);
  v5 = v4;
  if (!v4)
  {
    v8 = 855;
LABEL_9:
    v9 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "openProc", v8, 133, *v9, "malloc");
    closeProc_1(v5);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpen", 885, 133, 0, "create extract stream");
    closeProc_1(0);
    return 0;
  }

  memset_s(v4, 0x1320uLL, 0, 0x1320uLL);
  v6 = malloc(0x38uLL);
  if (!v6)
  {
    v8 = 859;
    goto LABEL_9;
  }

  v7 = v6;
  memset_s(v6, 0x38uLL, 0, 0x38uLL);
  *v7 = v5;
  v7[1] = closeProc_1;
  v7[6] = closeWithStateProc_1;
  v7[4] = writeHeaderProc;
  v7[5] = writeBlobProc;
  v7[2] = cancelProc_1;
  *v5 = a2;
  *(v5 + 4752) = 0x100000;
  if (!realpath_DARWIN_EXTSN(a1, (v5 + 12)))
  {
    v10 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpen", 893, 133, v10, a1);
    goto LABEL_12;
  }

  if (stat((v5 + 12), &v12) || (v12.st_mode & 0xF000) != 0x4000)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpen", 894, 133, 0, "Not a directory: %s");
LABEL_12:
    if (*v7)
    {
      (v7[1])();
    }

    free(v7);
    return 0;
  }

  __strlcpy_chk();
  return v7;
}

uint64_t *aaAssetExtractStreamOpenWithState(const char *a1, AAByteStream_impl *a2, void *a3)
{
  v113 = *MEMORY[0x29EDCA608];
  data_size = 0;
  v110 = 0;
  data = 0;
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v103 = 0u;
  __s = 0;
  v101 = 0;
  __ptr = 0;
  StreamOpen = aaAssetExtractStreamOpen(a1, 0);
  v6 = StreamOpen;
  if (!StreamOpen)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpenWithState", 927, 133, 0, "create extract stream");
    goto LABEL_222;
  }

  if (!*(a2 + 2))
  {
    goto LABEL_186;
  }

  v7 = *StreamOpen;
  v8 = &v103;
  v9 = 84;
  do
  {
    v10 = (*(a2 + 2))(*a2, v8, v9);
    if (v10 < 0)
    {
      break;
    }

    v8 = (v8 + v10);
    v9 -= v10;
  }

  while (v10 && v9 != 0);
  if (v10 < 0 || (v12 = v104, v104 > 0x3FF) || DWORD1(v104) > 0x3FF || DWORD2(v104) > 0xC7 || HIDWORD(v104) >= 0x10000)
  {
LABEL_186:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpenWithState", 935, 133, 0, "invalid state");
    goto LABEL_222;
  }

  v13 = *(&v103 + 1);
  *v7 = v103;
  *(v7 + 4752) = v13;
  v14 = *(&v105 + 1);
  *(v7 + 4776) = v105;
  *(v7 + 4740) = BYTE2(v108);
  *(v7 + 4744) = HIBYTE(v108);
  *(v7 + 4760) = v14;
  if (!*(a2 + 2))
  {
    goto LABEL_221;
  }

  if (v12)
  {
    v15 = v7 + 2492;
    do
    {
      v16 = (*(a2 + 2))(*a2, v15, v12);
      if (v16 < 0)
      {
        goto LABEL_221;
      }

      v15 += v16;
      v12 -= v16;
      if (v16)
      {
        v17 = v12 == 0;
      }

      else
      {
        v17 = 1;
      }
    }

    while (!v17);
    if (!*(a2 + 2))
    {
      goto LABEL_221;
    }
  }

  v99 = (v7 + 3516);
  v18 = DWORD1(v104);
  if (DWORD1(v104))
  {
    v19 = v7 + 3516;
    do
    {
      v20 = (*(a2 + 2))(*a2, v19, v18);
      if (v20 < 0)
      {
        goto LABEL_221;
      }

      v19 += v20;
      v18 -= v20;
      if (v20)
      {
        v21 = v18 == 0;
      }

      else
      {
        v21 = 1;
      }
    }

    while (!v21);
    if (!*(a2 + 2))
    {
      goto LABEL_221;
    }
  }

  v22 = DWORD2(v104);
  if (DWORD2(v104))
  {
    v23 = v7 + 4540;
    do
    {
      v24 = (*(a2 + 2))(*a2, v23, v22);
      if (v24 < 0)
      {
        goto LABEL_221;
      }

      v23 += v24;
      v22 -= v24;
      if (v24)
      {
        v25 = v22 == 0;
      }

      else
      {
        v25 = 1;
      }
    }

    while (!v25);
  }

  v26 = HIDWORD(v104);
  if (HIDWORD(v104))
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    do
    {
      if (v29 != v28)
      {
        goto LABEL_54;
      }

      v30 = v28 + 0x40000;
      if ((v28 + 0x40000) < 0)
      {
        goto LABEL_221;
      }

      if (v28 <= 0xFFFFFFFFFFFBFFFFLL)
      {
        do
        {
          while (!v28)
          {
            v28 = 0x4000;
            v32 = 0x4000;
            if (v30 <= 0x4000)
            {
              goto LABEL_56;
            }
          }

          v31 = v28 >> 1;
          if ((v28 & (v28 >> 1)) != 0)
          {
            v31 = v28 & (v28 >> 1);
          }

          v28 += v31;
        }

        while (v28 < v30);
        v32 = v28;
        if (v28 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_219;
        }

LABEL_56:
        v33 = realloc(v27, v32);
        if (!v33)
        {
          free(v27);
LABEL_219:
          p_data_size = &data_size;
LABEL_220:
          *p_data_size = 0;
          p_data_size[1] = 0;
          p_data_size[2] = 0;
LABEL_221:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpenWithState", 953, 133, 0, "write state");
          goto LABEL_222;
        }

        v110 = v32;
        data = v33;
        v27 = v33;
      }

      else
      {
LABEL_54:
        v32 = v28;
      }

      if (v32 - v29 >= v26)
      {
        v34 = v26;
      }

      else
      {
        v34 = v32 - v29;
      }

      v35 = AAByteStreamRead(a2, &v27[v29], v34);
      if (v35 < 0)
      {
        goto LABEL_221;
      }

      if (!v35)
      {
        break;
      }

      v29 = data_size + v35;
      if (__CFADD__(data_size, v35))
      {
        goto LABEL_221;
      }

      v28 = v110;
      if (v29 > v110)
      {
        goto LABEL_221;
      }

      data_size += v35;
      v26 -= v35;
    }

    while (v26);
  }

  v36 = *(&v106 + 1);
  if (*(&v106 + 1))
  {
    p_data_size = (v7 + 4784);
    v38 = *(v7 + 4784);
    v39 = *(v7 + 4792);
    while (1)
    {
      if (v38 != v39)
      {
        goto LABEL_79;
      }

      v40 = v39 + 0x40000;
      if ((v39 + 0x40000) < 0)
      {
        goto LABEL_221;
      }

      if (v39 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v39)
        {
          v39 = 0x4000;
          v42 = 0x4000;
          if (v40 <= 0x4000)
          {
            goto LABEL_81;
          }
        }

        v41 = v39 >> 1;
        if ((v39 & (v39 >> 1)) != 0)
        {
          v41 = v39 & (v39 >> 1);
        }

        v39 += v41;
      }

      while (v39 < v40);
      v42 = v39;
      if (v39 >= 0x2000000001)
      {
LABEL_217:
        *__error() = 12;
        goto LABEL_220;
      }

LABEL_81:
      v43 = *(v7 + 4800);
      v44 = realloc(v43, v42);
      if (!v44)
      {
LABEL_214:
        free(v43);
        goto LABEL_220;
      }

      *(v7 + 4800) = v44;
      *(v7 + 4792) = v42;
      v38 = *(v7 + 4784);
LABEL_83:
      if (v42 - v38 >= v36)
      {
        v45 = v36;
      }

      else
      {
        v45 = v42 - v38;
      }

      v46 = AAByteStreamRead(a2, (*(v7 + 4800) + v38), v45);
      if (v46 < 0)
      {
        goto LABEL_221;
      }

      if (!v46)
      {
        goto LABEL_91;
      }

      v38 = *p_data_size + v46;
      if (__CFADD__(*p_data_size, v46))
      {
        goto LABEL_221;
      }

      v39 = *(v7 + 4792);
      if (v38 > v39)
      {
        goto LABEL_221;
      }

      *p_data_size = v38;
      v36 -= v46;
      if (!v36)
      {
        goto LABEL_91;
      }
    }

    v38 = v39;
LABEL_79:
    v42 = v39;
    goto LABEL_83;
  }

LABEL_91:
  v47 = v107;
  if (v107)
  {
    p_data_size = (v7 + 4808);
    v48 = *(v7 + 4808);
    v49 = *(v7 + 4816);
    while (1)
    {
      if (v48 != v49)
      {
        goto LABEL_104;
      }

      v50 = v49 + 0x40000;
      if ((v49 + 0x40000) < 0)
      {
        goto LABEL_221;
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
            goto LABEL_106;
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
        goto LABEL_217;
      }

LABEL_106:
      v43 = *(v7 + 4824);
      v53 = realloc(v43, v52);
      if (!v53)
      {
        goto LABEL_214;
      }

      *(v7 + 4824) = v53;
      *(v7 + 4816) = v52;
      v48 = *(v7 + 4808);
LABEL_108:
      if (v52 - v48 >= v47)
      {
        v54 = v47;
      }

      else
      {
        v54 = v52 - v48;
      }

      v55 = AAByteStreamRead(a2, (*(v7 + 4824) + v48), v54);
      if (v55 < 0)
      {
        goto LABEL_221;
      }

      if (!v55)
      {
        goto LABEL_116;
      }

      v48 = *p_data_size + v55;
      if (__CFADD__(*p_data_size, v55))
      {
        goto LABEL_221;
      }

      v49 = *(v7 + 4816);
      if (v48 > v49)
      {
        goto LABEL_221;
      }

      *p_data_size = v48;
      v47 -= v55;
      if (!v47)
      {
        goto LABEL_116;
      }
    }

    v48 = v49;
LABEL_104:
    v52 = v49;
    goto LABEL_108;
  }

LABEL_116:
  v56 = *(&v107 + 1);
  if (*(&v107 + 1))
  {
    p_data_size = (v7 + 4832);
    v57 = *(v7 + 4832);
    v58 = *(v7 + 4840);
    while (1)
    {
      if (v57 != v58)
      {
        goto LABEL_129;
      }

      v59 = v58 + 0x40000;
      if ((v58 + 0x40000) < 0)
      {
        goto LABEL_221;
      }

      if (v58 > 0xFFFFFFFFFFFBFFFFLL)
      {
        break;
      }

      do
      {
        while (!v58)
        {
          v58 = 0x4000;
          v61 = 0x4000;
          if (v59 <= 0x4000)
          {
            goto LABEL_131;
          }
        }

        v60 = v58 >> 1;
        if ((v58 & (v58 >> 1)) != 0)
        {
          v60 = v58 & (v58 >> 1);
        }

        v58 += v60;
      }

      while (v58 < v59);
      v61 = v58;
      if (v58 >= 0x2000000001)
      {
        goto LABEL_217;
      }

LABEL_131:
      v43 = *(v7 + 4848);
      v62 = realloc(v43, v61);
      if (!v62)
      {
        goto LABEL_214;
      }

      *(v7 + 4848) = v62;
      *(v7 + 4840) = v61;
      v57 = *(v7 + 4832);
LABEL_133:
      if (v61 - v57 >= v56)
      {
        v63 = v56;
      }

      else
      {
        v63 = v61 - v57;
      }

      v64 = AAByteStreamRead(a2, (*(v7 + 4848) + v57), v63);
      if (v64 < 0)
      {
        goto LABEL_221;
      }

      if (!v64)
      {
        goto LABEL_141;
      }

      v57 = *p_data_size + v64;
      if (__CFADD__(*p_data_size, v64))
      {
        goto LABEL_221;
      }

      v58 = *(v7 + 4840);
      if (v57 > v58)
      {
        goto LABEL_221;
      }

      *p_data_size = v57;
      v56 -= v64;
      if (!v56)
      {
        goto LABEL_141;
      }
    }

    v57 = v58;
LABEL_129:
    v61 = v58;
    goto LABEL_133;
  }

LABEL_141:
  *(v7 + 2492 + v104) = 0;
  v99[DWORD1(v104)] = 0;
  *(v7 + 4540 + DWORD2(v104)) = 0;
  if (HIDWORD(v104))
  {
    v65 = AAHeaderCreateWithEncodedData(data_size, data);
    *(v7 + 4768) = v65;
    if (!v65)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpenWithState", 959, 133, 0, "invalid header in state");
      goto LABEL_222;
    }
  }

  if (BYTE1(v108))
  {
    v66 = AATempFileStreamOpenWithDirectory((v7 + 12));
    *(v7 + 4864) = v66;
    if (!v66)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpenWithState", 965, 133, 0, "create temp file");
      goto LABEL_222;
    }

    v67 = v106;
    if (v106)
    {
      v68 = 0;
      while (2)
      {
        __s = 0;
        v69 = v67 - v68;
        if (v69)
        {
          v70 = 0;
          v71 = 0;
          if (v69 >= 0x40000)
          {
            v72 = 0x40000;
          }

          else
          {
            v72 = v69;
          }

          v73 = v101;
          while (1)
          {
            if (v70 == v73)
            {
              v74 = v73 + 0x40000;
              if ((v73 + 0x40000) < 0)
              {
                goto LABEL_250;
              }

              if (v73 <= 0xFFFFFFFFFFFBFFFFLL)
              {
                do
                {
                  while (!v73)
                  {
                    v73 = 0x4000;
                    v76 = 0x4000;
                    if (v74 <= 0x4000)
                    {
                      goto LABEL_163;
                    }
                  }

                  v75 = v73 >> 1;
                  if ((v73 & (v73 >> 1)) != 0)
                  {
                    v75 = v73 & (v73 >> 1);
                  }

                  v73 += v75;
                }

                while (v73 < v74);
                v76 = v73;
                if (v73 >= 0x2000000001)
                {
                  *__error() = 12;
                  goto LABEL_249;
                }

LABEL_163:
                v77 = realloc(__ptr, v76);
                if (v77)
                {
                  v101 = v76;
                  __ptr = v77;
                  v73 = v76;
                  goto LABEL_165;
                }

                free(__ptr);
LABEL_249:
                __s = 0;
                v101 = 0;
                __ptr = 0;
LABEL_250:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpenWithState", 973, 133, 0, "reading state");
                goto LABEL_222;
              }
            }

LABEL_165:
            if (v73 - v70 >= v72)
            {
              v78 = v72;
            }

            else
            {
              v78 = v73 - v70;
            }

            v79 = AAByteStreamRead(a2, __ptr + v70, v78);
            if (v79 < 0)
            {
              goto LABEL_250;
            }

            if (!v79)
            {
              break;
            }

            v80 = __CFADD__(v70, v79);
            v70 += v79;
            if (v80 || v70 > v73)
            {
              goto LABEL_250;
            }

            __s = v70;
            v71 += v79;
            v72 -= v79;
            if (!v72)
            {
              goto LABEL_175;
            }
          }

          if (!v71)
          {
            goto LABEL_234;
          }

LABEL_175:
          v81 = *(v7 + 4864);
          if (*(v81 + 24))
          {
            v82 = 0;
            if (v70)
            {
              v83 = __ptr;
              while (1)
              {
                v84 = (*(v81 + 24))(*v81, v83, v70);
                if (v84 < 1)
                {
                  break;
                }

                v83 += v84;
                v82 += v84;
                v70 -= v84;
                if (!v70)
                {
                  goto LABEL_183;
                }
              }

              v82 = v84;
            }
          }

          else
          {
            v82 = -1;
          }

LABEL_183:
          if (v82 != v71)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpenWithState", 976, 133, 0, "write DAT file");
            goto LABEL_222;
          }

          v68 += v71;
          v67 = v106;
          if (v68 < v106)
          {
            continue;
          }
        }

        else
        {
LABEL_234:
          v67 = v106;
        }

        break;
      }

      if (v68 != v67)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpenWithState", 979, 133, 0, "truncated state");
        goto LABEL_222;
      }
    }

    goto LABEL_236;
  }

  v85 = v106;
  if (!v106)
  {
LABEL_236:
    if ((updateFromHeader(v7) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpenWithState", 987, 133, 0, "deriving fields from header");
      goto LABEL_222;
    }

    if (v108)
    {
      if (!*(v7 + 1056))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpenWithState", 995, 133, 0, "missing PAT");
        goto LABEL_222;
      }

      if ((concatExtractPath(v112, 0x400uLL, v99, (v7 + 1064)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpenWithState", 996, 133, 0, "invalid PAT: %s");
        goto LABEL_222;
      }

      v98 = aaArchiveFileOutputStreamOpenAtWithState(-1, v112, a2, a3);
      *(v7 + 4856) = v98;
      if (!v98)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpenWithState", 1000, 133, 0, "aaArchiveFileOutputStreamOpenAtWithState");
        goto LABEL_222;
      }
    }

    if (a3)
    {
      *a3 = -1;
    }

    v96 = 1;
    goto LABEL_223;
  }

  v86 = (v7 + 4872);
  v87 = *(v7 + 4872);
  v88 = *(v7 + 4880);
  while (1)
  {
    if (v87 != v88)
    {
      goto LABEL_201;
    }

    v89 = v88 + 0x40000;
    if ((v88 + 0x40000) < 0)
    {
      goto LABEL_255;
    }

    if (v88 <= 0xFFFFFFFFFFFBFFFFLL)
    {
      break;
    }

    v87 = v88;
LABEL_201:
    v91 = v88;
LABEL_205:
    if (v91 - v87 >= v85)
    {
      v94 = v85;
    }

    else
    {
      v94 = v91 - v87;
    }

    v95 = AAByteStreamRead(a2, (*(v7 + 4888) + v87), v94);
    if (v95 < 0)
    {
      goto LABEL_255;
    }

    if (!v95)
    {
      goto LABEL_236;
    }

    v87 = *v86 + v95;
    if (__CFADD__(*v86, v95))
    {
      goto LABEL_255;
    }

    v88 = *(v7 + 4880);
    if (v87 > v88)
    {
      goto LABEL_255;
    }

    *v86 = v87;
    v85 -= v95;
    if (!v85)
    {
      goto LABEL_236;
    }
  }

  do
  {
    while (!v88)
    {
      v88 = 0x4000;
      v91 = 0x4000;
      if (v89 <= 0x4000)
      {
        goto LABEL_203;
      }
    }

    v90 = v88 >> 1;
    if ((v88 & (v88 >> 1)) != 0)
    {
      v90 = v88 & (v88 >> 1);
    }

    v88 += v90;
  }

  while (v88 < v89);
  v91 = v88;
  if (v88 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_254;
  }

LABEL_203:
  v92 = *(v7 + 4888);
  v93 = realloc(v92, v91);
  if (v93)
  {
    *(v7 + 4888) = v93;
    *(v7 + 4880) = v91;
    v87 = *(v7 + 4872);
    goto LABEL_205;
  }

  free(v92);
LABEL_254:
  *v86 = 0;
  *(v7 + 4880) = 0;
  *(v7 + 4888) = 0;
LABEL_255:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "aaAssetExtractStreamOpenWithState", 983, 133, 0, "truncated state");
LABEL_222:
  v96 = 0;
LABEL_223:
  free(data);
  memset_s(&data_size, 0x18uLL, 0, 0x18uLL);
  free(__ptr);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  if (v96)
  {
    result = v6;
  }

  else
  {
    result = 0;
  }

  if (v6 && (v96 & 1) == 0)
  {
    if (*v6)
    {
      (v6[1])();
    }

    free(v6);
    return 0;
  }

  return result;
}

uint64_t updateFromHeader(_BYTE *a1)
{
  size = 0;
  length = 0;
  v41 = 0;
  offset = 0;
  *(a1 + 132) = 0;
  *(a1 + 261) = 0;
  *(a1 + 263) = 0;
  *(a1 + 262) = 0;
  memset_s(a1 + 2112, 0x48uLL, 0, 0x48uLL);
  memset_s(a1 + 2184, 0x38uLL, 0, 0x38uLL);
  memset_s(a1 + 2240, 0xACuLL, 0, 0xACuLL);
  memset_s(a1 + 2416, 0x38uLL, 0, 0x38uLL);
  v2 = *(a1 + 596);
  if (!v2)
  {
    return 0;
  }

  v3.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(*(a1 + 596), v3);
  if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(v2, KeyIndex, a1 + 261), FieldUInt <= 1) ? (v6 = 1) : (v6 = FieldUInt), v6 <= 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "updateFromHeader", 141, 133, 0, "missing TYP", v41, offset);
    return 0xFFFFFFFFLL;
  }

  if ((aaEntryAttributesInitWithHeader(a1 + 2112, a1 + 2184, a1 + 2240, *(a1 + 596)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "updateFromHeader", 142, 133, 0, "attributes from header", v41, offset);
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 596);
  v8.ikey = 5521744;
  v9 = AAHeaderGetKeyIndex(v7, v8);
  if ((v9 & 0x80000000) == 0)
  {
    FieldString = AAHeaderGetFieldString(v7, v9, 0x400uLL, a1 + 1064, &length);
    v11 = FieldString <= 1 ? 1 : FieldString;
    if (v11 >= 1)
    {
      *(a1 + 264) = 1;
    }
  }

  v12 = *(a1 + 596);
  v13.ikey = 4408665;
  v14 = AAHeaderGetKeyIndex(v12, v13);
  if ((v14 & 0x80000000) == 0)
  {
    FieldBlob = AAHeaderGetFieldBlob(v12, v14, &size, &offset);
    v16 = FieldBlob <= 1 ? 1 : FieldBlob;
    if (v16 >= 1)
    {
      a1[2416] |= 1u;
      *(a1 + 304) = size;
    }
  }

  v17 = *(a1 + 596);
  v18.ikey = 5521752;
  v19 = AAHeaderGetKeyIndex(v17, v18);
  if ((v19 & 0x80000000) == 0)
  {
    v20 = AAHeaderGetFieldBlob(v17, v19, &size, &offset);
    v21 = v20 <= 1 ? 1 : v20;
    if (v21 >= 1)
    {
      a1[2416] |= 2u;
      *(a1 + 306) = size;
    }
  }

  v22 = *(a1 + 596);
  v23.ikey = 4997953;
  v24 = AAHeaderGetKeyIndex(v22, v23);
  if ((v24 & 0x80000000) == 0)
  {
    v25 = AAHeaderGetFieldBlob(v22, v24, &size, &offset);
    v26 = v25 <= 1 ? 1 : v25;
    if (v26 >= 1)
    {
      a1[2416] |= 4u;
      *(a1 + 308) = size;
    }
  }

  v27 = *(a1 + 596);
  v28.ikey = 5521732;
  v29 = AAHeaderGetKeyIndex(v27, v28);
  if ((v29 & 0x80000000) == 0)
  {
    v30 = AAHeaderGetFieldBlob(v27, v29, &size, &offset);
    v31 = v30 <= 1 ? 1 : v30;
    if (v31 >= 1)
    {
      *(a1 + 265) = 1;
      *(a1 + 263) = size;
    }
  }

  v32 = *(a1 + 595);
  *(a1 + 262) = v32;
  if (!v32)
  {
    v33 = *(a1 + 596);
    v34.ikey = 5263193;
    v35 = AAHeaderGetKeyIndex(v33, v34);
    if ((v35 & 0x80000000) != 0 || ((v36 = AAHeaderGetFieldUInt(v33, v35, &v41), v36 <= 1) ? (v37 = 1) : (v37 = v36), v37 < 1))
    {
      v38 = *(a1 + 262);
    }

    else
    {
      v38 = v41;
      *(a1 + 262) = v41;
    }

    if (!v38 && *(a1 + 261) != 77)
    {
      *(a1 + 262) = 69;
    }
  }

  *(a1 + 310) = 40;
  *(a1 + 618) = -1;
  *(a1 + 622) = -1;
  if ((a1[2112] & 4) != 0)
  {
    v40 = a1[2184];
    if ((a1[2124] & 0x20) != 0)
    {
      *(a1 + 310) = 44;
      *(a1 + 622) = 0;
      if (v40)
      {
        *(a1 + 622) = *(a1 + 548);
      }
    }
  }

  else
  {
    v40 = a1[2184];
  }

  if ((v40 & 8) != 0)
  {
    result = 0;
    *(a1 + 618) = *(a1 + 547);
    return result;
  }

  return 0;
}