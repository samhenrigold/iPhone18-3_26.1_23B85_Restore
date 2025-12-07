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
    return off_2A1E9B3C0[a1];
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
    return off_2A1E9B3F8[a1];
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
    return (&off_29EE89AA8)[a1];
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
    return (&off_29EE89AE0)[a1];
  }
}

void *aaCacheStreamOpen(AAByteStream_impl *a1, unint64_t a2, unsigned int a3, unsigned int a4, unint64_t a5)
{
  v10 = calloc(1uLL, 0x68uLL);
  v11 = calloc(1uLL, 0x70uLL);
  v12 = v11;
  if (!v10 || !v11)
  {
    v16 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamOpen", 472, 146, v16, "aaCalloc");
LABEL_18:
    free(v10);
    aaCacheStreamClose(v12);
    return 0;
  }

  *v11 = a1;
  v11[26] = a4;
  v11[27] = a5 >> 62;
  v13 = ((1 << a3) - 1);
  v11[23] = 1 << a3;
  v11[24] = v13;
  v11[21] = (v13 | a2) >> a3;
  v11[22] = a3;
  if (a2 - 1073741825 <= 0xFFFFFFFFBFFFFFFFLL)
  {
    v14 = "cache too big";
    v15 = 484;
LABEL_17:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamOpen", v15, 146, 0, v14);
    goto LABEL_18;
  }

  v17 = AAByteStreamSeek(a1, 0, 2);
  *(v12 + 24) = v17;
  *(v12 + 32) = v17;
  if (v17 < 0)
  {
    v14 = "AAByteStreamSeek";
    v15 = 488;
    goto LABEL_17;
  }

  v18 = *(v12 + 84);
  if (v18 >= 0xCCCCCCCD)
  {
    *__error() = 12;
    *(v12 + 72) = 0;
LABEL_16:
    v14 = "aaCalloc";
    v15 = 492;
    goto LABEL_17;
  }

  v19 = calloc(v18, 0x28uLL);
  *(v12 + 72) = v19;
  if (!v19)
  {
    goto LABEL_16;
  }

  if (*(v12 + 84))
  {
    v20 = 0;
    v21 = 0;
    v22 = *(v12 + 92);
    while (1)
    {
      v23 = calloc(1uLL, v22);
      v24 = *(v12 + 72) + v20;
      *(v24 + 16) = v23;
      if (!v23)
      {
        break;
      }

      bzero(v23, *(v12 + 92));
      *v24 = -1;
      v22 = *(v12 + 92);
      *(v24 + 28) = 0;
      *(v24 + 32) = 0;
      *(v24 + 24) = v22;
      ++v21;
      v20 += 40;
      if (v21 >= *(v12 + 84))
      {
        goto LABEL_15;
      }
    }

    v14 = "aaCalloc";
    v15 = 498;
    goto LABEL_17;
  }

LABEL_15:
  AACustomByteStreamSetData(v10, v12);
  AACustomByteStreamSetSeekProc(v10, aaCacheStreamSeek);
  AACustomByteStreamSetPReadProc(v10, aaCacheStreamPRead);
  AACustomByteStreamSetPWriteProc(v10, aaCacheStreamPWrite);
  AACustomByteStreamSetReadProc(v10, aaCacheStreamRead);
  AACustomByteStreamSetWriteProc(v10, aaCacheStreamWrite);
  AACustomByteStreamSetCancelProc(v10, aaCacheStreamCancel);
  AACustomByteStreamSetCloseProc(v10, aaCacheStreamClose);
  v10[8] = aaCacheStreamTruncate;
  return v10;
}

uint64_t aaCacheStreamSeek(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a1 + 100))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v5 = 16;
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_11;
        }

        v5 = 24;
      }

      a2 += *(a1 + v5);
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      *(a1 + 16) = a2;
      return a2;
    }

LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamSeek", 392, 146, 0, "bad seek", v3, v4);
    return -1;
  }

  return -1;
}

uint64_t aaCacheStreamPRead(uint64_t a1, char *a2, int64_t a3, uint64_t a4)
{
  if (*(a1 + 100))
  {
    return -1;
  }

  v5 = a4;
  v7 = *(a1 + 24);
  v8 = v7 <= a4;
  v9 = v7 - a4;
  if (v8)
  {
    return 0;
  }

  if (v9 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    v4 = 0;
    while (1)
    {
      v12 = *(a1 + 96);
      if (*(a1 + 92) - (v5 & v12) >= v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = *(a1 + 92) - (v5 & v12);
      }

      v14 = cachePageGet(a1, v5 & ~v12);
      if (!v14)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheRead", 224, 146, 0, "cachePageGet");
        goto LABEL_25;
      }

      v15 = v14;
      v16 = v12 & v5;
      if ((v16 < *(v14 + 6) || (v16 + v13) > *(v14 + 7)) && (cachePageReadFromDisk(a1, v14) & 0x80000000) != 0)
      {
        break;
      }

      memcpy(a2, (*(v15 + 2) + v16), v13);
      ++*(a1 + 40);
      v17 = *(a1 + 8) + 1;
      *(a1 + 8) = v17;
      *(v15 + 1) = v17;
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v4 += v13;
      a2 += v13;
      v5 += v13;
      v10 -= v13;
      if (!v10)
      {
        goto LABEL_21;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheRead", 229, 146, 0, "cachePageReadFromDisk");
LABEL_25:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamPRead", 313, 146, 0, "cacheRead");
    return -1;
  }

  v4 = 0;
LABEL_21:
  *(a1 + 16) = v5;
  return v4;
}

uint64_t aaCacheStreamPWrite(uint64_t a1, char *a2, unint64_t a3, unint64_t a4)
{
  if (*(a1 + 100))
  {
    return -1;
  }

  v5 = a3;
  if (a3)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(a1 + 96);
      if (*(a1 + 92) - (a4 & v9) >= v5)
      {
        v10 = v5;
      }

      else
      {
        v10 = *(a1 + 92) - (a4 & v9);
      }

      v11 = cachePageGet(a1, a4 & ~v9);
      if (!v11)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheWrite", 254, 146, 0, "cachePageGet");
        goto LABEL_27;
      }

      v12 = v11;
      v13 = v9 & a4;
      v14 = v13 + v10;
      v15 = *(v11 + 6);
      v16 = *(v11 + 7);
      if (v15 < v16)
      {
        v17 = v14 < v15 || v13 > v16;
        if (v17 && (cachePageReadFromDisk(a1, v11) & 0x80000000) != 0)
        {
          break;
        }
      }

      memcpy((*(v12 + 2) + v13), a2, v10);
      ++*(a1 + 48);
      if (v13 < *(v12 + 6))
      {
        *(v12 + 6) = v13;
      }

      if (v14 > *(v12 + 7))
      {
        *(v12 + 7) = v14;
      }

      v18 = *(a1 + 8) + 1;
      *(a1 + 8) = v18;
      *(v12 + 1) = v18;
      *(v12 + 8) = 1;
      v19 = a4 + v10;
      if (*(a1 + 24) < v19)
      {
        *(a1 + 24) = v19;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      v8 += v10;
      a2 += v10;
      a4 += v10;
      v5 -= v10;
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheWrite", 262, 146, 0, "cachePageReadFromDisk");
LABEL_27:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamPWrite", 346, 146, 0, "cacheWrite");
    return -1;
  }

  v8 = 0;
LABEL_25:
  *(a1 + 16) = a4;
  return v8;
}

uint64_t aaCacheStreamClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 72))
    {
      if ((cacheFlush(result) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamClose", 440, 146, 0, "cacheFlush");
        v2 = 0;
      }

      else
      {
        v2 = 1;
      }

      if (*(v1 + 84))
      {
        v3 = 0;
        v4 = 16;
        do
        {
          free(*(*(v1 + 72) + v4));
          ++v3;
          v4 += 40;
        }

        while (v3 < *(v1 + 84));
      }

      free(*(v1 + 72));
    }

    else
    {
      v2 = 1;
    }

    if (*(v1 + 104) && AAByteStreamClose(*v1) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamClose", 446, 146, 0, "AAByteStreamClose");
      v2 = 0;
    }

    if (*(v1 + 108) >= 1)
    {
      fprintf(*MEMORY[0x29EDCA610], "CacheStream: read ops %zu/%zu, write ops %zu/%zu\n", *(v1 + 56), *(v1 + 40), *(v1 + 64), *(v1 + 48));
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

uint64_t aaCacheStreamTruncate(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 100))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v3;
  v10 = v2;
  if ((cacheFlush(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamTruncate", 411, 146, 0, "cacheFlush", v9, v10, v4, v5);
  }

  else
  {
    if ((AAByteStreamTruncate(*a1) & 0x80000000) == 0)
    {
      result = 0;
      *(a1 + 24) = a2;
      *(a1 + 32) = a2;
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamTruncate", 412, 146, 0, "AAByteStreamTruncate", v9, v10, v4, v5);
  }

  return 0xFFFFFFFFLL;
}

__int128 *cachePageGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 84) - 1;
  v4 = v3 & ((0x16069317E428CA9 * a2) >> 32);
  v5 = v2 + 40 * v4;
  if (*v5 != a2)
  {
    v8 = v4 & 0xFFFFFC00;
    v9 = v4 | 0x3FF;
    if (v9 >= v3)
    {
      v9 = *(a1 + 84) - 1;
    }

    if (v8 <= v9)
    {
      v10 = v8;
      while (1)
      {
        v11 = (v2 + 40 * v8);
        if (*v11 == a2)
        {
          break;
        }

        if (v11[1] < *(v2 + 40 * v10 + 8))
        {
          v10 = v8;
        }

        if (++v8 > v9)
        {
          goto LABEL_11;
        }
      }
    }

    v10 = v8;
LABEL_11:
    v12 = *(v5 + 32);
    v14 = *v5;
    v13 = *(v5 + 16);
    v15 = v2 + 40 * v10;
    v16 = *(v15 + 32);
    v17 = *(v15 + 16);
    *v5 = *v15;
    *(v5 + 16) = v17;
    *(v5 + 32) = v16;
    v18 = *(a1 + 72) + 40 * v10;
    *v18 = v14;
    *(v18 + 16) = v13;
    *(v18 + 32) = v12;
    if (*v5 != a2)
    {
      if ((cachePageEvict(a1, v5) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageGet", 162, 146, 0, "cachePageEvict");
        return 0;
      }

      else
      {
        bzero(*(v5 + 16), *(a1 + 92));
        v19 = *(a1 + 92);
        *(v5 + 28) = 0;
        *(v5 + 32) = 0;
        *(v5 + 24) = v19;
        *v5 = a2;
      }
    }
  }

  return v5;
}

uint64_t cachePageReadFromDisk(uint64_t *a1, uint64_t *a2)
{
  v5 = *(a2 + 6);
  v4 = *(a2 + 7);
  if (v4 >= v5)
  {
    v6 = v4 - v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 8);
  if (v4 <= v5 || v7 == 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = malloc(v6);
    v9 = v10;
    if (!v10)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageReadFromDisk", 184, 146, 0, "aaMalloc");
LABEL_33:
      v19 = 0xFFFFFFFFLL;
      goto LABEL_34;
    }

    memcpy(v10, (a2[2] + v5), v6);
  }

  v11 = *a2;
  if (a1[4] - *a2 >= *(a1 + 23))
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = a1[4] - *a2;
  }

  if (v12 < 1)
  {
    goto LABEL_26;
  }

  v13 = *a1;
  if (!*(*a1 + 32))
  {
    goto LABEL_32;
  }

  v22 = v4;
  v23 = v6;
  v14 = 0;
  v15 = a2[2];
  v16 = v12;
  while (1)
  {
    v17 = (*(v13 + 32))(*v13, v15, v16, v11);
    if (v17 < 0)
    {
      break;
    }

    if (v17)
    {
      v15 += v17;
      v14 += v17;
      v11 += v17;
      v16 -= v17;
      if (v16)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  v14 = v17;
LABEL_24:
  v6 = v23;
  v4 = v22;
  if (v12 != v14)
  {
LABEL_32:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageReadFromDisk", 193, 146, 0, "AAByteStreamPRead");
    goto LABEL_33;
  }

  ++a1[7];
  v7 = *(a2 + 8);
LABEL_26:
  if (v4 > v5 && v7 != 0)
  {
    memcpy((a2[2] + *(a2 + 6)), v9, v6);
  }

  v19 = 0;
  v20 = *(a1 + 23);
  *(a2 + 6) = 0;
  *(a2 + 7) = v20;
LABEL_34:
  free(v9);
  return v19;
}

uint64_t cachePageEvict(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 25))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a2 + 32))
  {
    return 0;
  }

  v13 = *(a2 + 24);
  v14 = *(a2 + 28);
  if (v14 <= v13)
  {
    return 0;
  }

  v25 = v9;
  v26 = v8;
  v27 = v7;
  v28 = v6;
  v29 = v5;
  v30 = v4;
  v31 = v3;
  v32 = v2;
  v16 = *a2 + v13;
  v17 = v14 - v13;
  if (v17 >= a1[3] - v16)
  {
    v18 = a1[3] - v16;
  }

  else
  {
    v18 = v17;
  }

  if (v18 <= 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageEvict", 87, 146, 0, "bad page", v9, v8, v27, v28, v5, v4, v3, v32, v10, v11);
    return 0xFFFFFFFFLL;
  }

  v19 = *a1;
  if (!*(*a1 + 40))
  {
    goto LABEL_20;
  }

  v20 = 0;
  v21 = *(a2 + 16) + v13;
  v22 = *a2 + v13;
  v23 = v18;
  while (1)
  {
    v24 = (*(v19 + 40))(*v19, v21, v23, v22);
    if (v24 < 1)
    {
      break;
    }

    v21 += v24;
    v20 += v24;
    v22 += v24;
    v23 -= v24;
    if (!v23)
    {
      goto LABEL_17;
    }
  }

  v20 = v24;
LABEL_17:
  if (v18 != v20)
  {
LABEL_20:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageEvict", 90, 146, 0, "aaByteStreamPWriteExpected", v25, v26, v27, v28, v29, v30, v31, v32, v10, v11);
    return 0xFFFFFFFFLL;
  }

  ++a1[8];
  result = 0;
  if (a1[4] < v18 + v16)
  {
    a1[4] = v18 + v16;
  }

  return result;
}

uint64_t cacheFlush(uint64_t a1)
{
  if (*(a1 + 100))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 84))
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  while ((cachePageEvict(a1, *(a1 + 72) + v3) & 0x80000000) == 0)
  {
    v5 = *(a1 + 72) + v3;
    bzero(*(v5 + 16), *(a1 + 92));
    *v5 = -1;
    v6 = *(a1 + 92);
    *(v5 + 28) = 0;
    *(v5 + 32) = 0;
    *(v5 + 24) = v6;
    ++v4;
    v3 += 40;
    if (v4 >= *(a1 + 84))
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheFlush", 115, 146, 0, "cachePageEvict");
  return 0xFFFFFFFFLL;
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

uint64_t getOLDEntryType(unsigned __int16 a1)
{
  v1 = (((a1 & 0xF000) - 4096) >> 12) - 3;
  if (v1 > 6)
  {
    return 0;
  }

  else
  {
    return dword_2980697E8[v1];
  }
}

uint64_t getAAEntryType(__int16 a1)
{
  v1 = (a1 & 0xF000) - 4096;
  if (v1 >> 14 > 2)
  {
    return 0;
  }

  else
  {
    return *&patchCacheKeyFromSHA1_hex[4 * (v1 >> 12) + 16];
  }
}

void setAAHeaderFromHeader_v10(int *a1, uint64_t a2)
{
  bzero(a1, 0x890uLL);
  v4 = *(a2 + 22);
  v5 = *(a2 + 2);
  v6 = *(a2 + 1);
  v7 = *a1 | 1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v8 = 76;
      goto LABEL_11;
    }

    if (v6 == 4)
    {
      v8 = 72;
      goto LABEL_11;
    }

LABEL_8:
    v7 = *a1 & 0xFFFFFFFE;
    v8 = a1[1];
    goto LABEL_12;
  }

  if (v6 == 1)
  {
    v8 = 70;
    goto LABEL_11;
  }

  if (v6 != 2)
  {
    goto LABEL_8;
  }

  v8 = 68;
LABEL_11:
  a1[1] = v8;
LABEL_12:
  v9 = bswap64(v5);
  *a1 = v7 | 2;
  a1[2] = bswap32(*(a2 + 24)) >> 16;
  *a1 = v7 | 6;
  a1[3] = bswap32(*(a2 + 26)) >> 16;
  *a1 = v7 | 0x16;
  a1[5] = bswap32(*(a2 + 28)) >> 16;
  *a1 = v7 | 0x1E;
  a1[4] = bswap32(*(a2 + 18));
  v10 = v7 | 0x11E;
  *a1 = v7 | 0x11E;
  *(a1 + 6) = bswap64(*(a2 + 10));
  if (v8 == 70)
  {
    v10 = v7 | 0x31E;
    *a1 = v7 | 0x31E;
    *(a1 + 8) = v9;
  }

  if (v4)
  {
    v11 = __rev16(v4);
    v10 |= 0x8000u;
    *a1 = v10;
    memcpy(a1 + 36, (a2 + 30), v11);
    v12 = v11 + 30;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v12 = 30;
    if (!v5)
    {
      return;
    }
  }

  if ((v8 | 4) == 0x4C)
  {
    *a1 = v10 | 0x10000;

    memcpy(a1 + 292, (a2 + v12), v9);
  }
}

void *setAAHeaderFromHeader_ODC(int *a1, uint64_t a2)
{
  bzero(a1, 0x890uLL);
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(a2 + 57 + v4++) & 7 | (8 * v5);
    v5 = v6;
  }

  while (v4 != 8);
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *(a2 + 64 + v7++) & 7 | (8 * v8);
    v8 = v9;
  }

  while (v7 != 4);
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = *(a2 + 68 + v10++) & 7 | (8 * v11);
    v11 = v12;
  }

  while (v10 != 8);
  v13 = 0;
  v14 = 0;
  v15 = (v9 << 24) & 0x1FF000000;
  do
  {
    v16 = *(a2 + 16 + v13++) & 7 | (8 * v14);
    v14 = v16;
  }

  while (v13 != 8);
  v17 = v6 & 0x3FFFF;
  v18 = *a1;
  result = getAAEntryType(v16);
  v20 = result;
  v21 = 0;
  v22 = 0;
  a1[5] = v16 & 0xFFF;
  *a1 = v18 | 0x111;
  a1[1] = result;
  do
  {
    v23 = *(a2 + 47 + v21++) & 7 | (8 * v22);
    v22 = v23;
  }

  while (v21 != 4);
  v24 = 0;
  v25 = 0;
  v26 = v23 << 24;
  do
  {
    v27 = *(a2 + 51 + v24++) & 7 | (8 * v25);
    v25 = v27;
  }

  while (v24 != 8);
  v28 = 0;
  v29 = 0;
  *(a1 + 6) = v27 + (v26 & 0x1FF000000);
  *a1 = v18 | 0x113;
  do
  {
    v30 = *(a2 + 22 + v28++) & 7 | (8 * v29);
    v29 = v30;
  }

  while (v28 != 8);
  v31 = 0;
  v32 = 0;
  a1[2] = v30 & 0x3FFFF;
  *a1 = v18 | 0x117;
  do
  {
    v33 = *(a2 + 28 + v31++) & 7 | (8 * v32);
    v32 = v33;
  }

  while (v31 != 8);
  v34 = 0;
  v35 = 0;
  a1[3] = v33 & 0x3FFFF;
  *a1 = v18 | 0x157;
  do
  {
    v36 = *(a2 + 10 + v34++) & 7 | (8 * v35);
    v35 = v36;
  }

  while (v34 != 8);
  v37 = 0;
  v38 = 0;
  *(a1 + 4) = v36 & 0x3FFFF;
  v39 = v18 | 0x177;
  *a1 = v18 | 0x177;
  do
  {
    v40 = *(a2 + 40 + v37++) & 7 | (8 * v38);
    v38 = v40;
  }

  while (v37 != 8);
  v41 = v12 + v15;
  a1[6] = v40 & 0x3FFFF;
  if (result == 70)
  {
    v39 = v18 | 0x377;
    *a1 = v18 | 0x377;
    *(a1 + 8) = v41;
  }

  if (v17)
  {
    v39 |= 0x8000u;
    *a1 = v39;
    result = memcpy(a1 + 36, (a2 + 76), v17);
    v42 = v17 + 76;
    if (!v41)
    {
      return result;
    }
  }

  else
  {
    v42 = 76;
    if (!v41)
    {
      return result;
    }
  }

  if ((v20 | 4) == 0x4C)
  {
    *a1 = v39 | 0x10000;

    return memcpy(a1 + 292, (a2 + v42), v41);
  }

  return result;
}

void *setAAHeaderFromHeader_NEWC(int *a1, uint64_t a2)
{
  bzero(a1, 0x890uLL);
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(a2 + 94 + v4);
    v5 *= 16;
    v7 = v6 - 48;
    if ((v6 - 48) <= 0x36)
    {
      if (((1 << v7) & 0x3FF) != 0)
      {
        v5 = v5 + v6 - 48;
      }

      else if (((1 << v7) & 0x7E0000) != 0)
      {
        v5 = v5 + v6 - 55;
      }

      else if (((1 << v7) & 0x7E000000000000) != 0)
      {
        v5 = v5 + v6 - 87;
      }
    }

    ++v4;
  }

  while (v4 != 8);
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(a2 + 54 + v8);
    v9 *= 16;
    v11 = v10 - 48;
    if ((v10 - 48) <= 0x36)
    {
      if (((1 << v11) & 0x3FF) != 0)
      {
        v9 = v9 + v10 - 48;
      }

      else if (((1 << v11) & 0x7E0000) != 0)
      {
        v9 = v9 + v10 - 55;
      }

      else if (((1 << v11) & 0x7E000000000000) != 0)
      {
        v9 = v9 + v10 - 87;
      }
    }

    ++v8;
  }

  while (v8 != 8);
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = *(a2 + 14 + v12);
    v13 *= 16;
    v15 = v14 - 48;
    if ((v14 - 48) <= 0x36)
    {
      if (((1 << v15) & 0x3FF) != 0)
      {
        v13 = v13 + v14 - 48;
      }

      else if (((1 << v15) & 0x7E0000) != 0)
      {
        v13 = v13 + v14 - 55;
      }

      else if (((1 << v15) & 0x7E000000000000) != 0)
      {
        v13 = v13 + v14 - 87;
      }
    }

    ++v12;
  }

  while (v12 != 8);
  v16 = *a1;
  result = getAAEntryType(v13);
  v18 = result;
  v19 = 0;
  v20 = 0;
  a1[5] = v13 & 0xFFF;
  *a1 = v16 | 0x111;
  a1[1] = result;
  do
  {
    v21 = *(a2 + 46 + v19);
    v20 *= 16;
    v22 = v21 - 48;
    if ((v21 - 48) <= 0x36)
    {
      if (((1 << v22) & 0x3FF) != 0)
      {
        v20 = v20 + v21 - 48;
      }

      else if (((1 << v22) & 0x7E0000) != 0)
      {
        v20 = v20 + v21 - 55;
      }

      else if (((1 << v22) & 0x7E000000000000) != 0)
      {
        v20 = v20 + v21 - 87;
      }
    }

    ++v19;
  }

  while (v19 != 8);
  v23 = 0;
  v24 = 0;
  *(a1 + 6) = v20;
  *a1 = v16 | 0x113;
  do
  {
    v25 = *(a2 + 22 + v23);
    v24 *= 16;
    v26 = v25 - 48;
    if ((v25 - 48) <= 0x36)
    {
      if (((1 << v26) & 0x3FF) != 0)
      {
        v24 = v24 + v25 - 48;
      }

      else if (((1 << v26) & 0x7E0000) != 0)
      {
        v24 = v24 + v25 - 55;
      }

      else if (((1 << v26) & 0x7E000000000000) != 0)
      {
        v24 = v24 + v25 - 87;
      }
    }

    ++v23;
  }

  while (v23 != 8);
  v27 = 0;
  v28 = 0;
  a1[2] = v24;
  *a1 = v16 | 0x117;
  do
  {
    v29 = *(a2 + 30 + v27);
    v28 *= 16;
    v30 = v29 - 48;
    if ((v29 - 48) <= 0x36)
    {
      if (((1 << v30) & 0x3FF) != 0)
      {
        v28 = v28 + v29 - 48;
      }

      else if (((1 << v30) & 0x7E0000) != 0)
      {
        v28 = v28 + v29 - 55;
      }

      else if (((1 << v30) & 0x7E000000000000) != 0)
      {
        v28 = v28 + v29 - 87;
      }
    }

    ++v27;
  }

  while (v27 != 8);
  v31 = 0;
  v32 = 0;
  a1[3] = v28;
  *a1 = v16 | 0x157;
  do
  {
    v33 = *(a2 + 6 + v31);
    v32 *= 16;
    v34 = v33 - 48;
    if ((v33 - 48) <= 0x36)
    {
      if (((1 << v34) & 0x3FF) != 0)
      {
        v32 = v32 + v33 - 48;
      }

      else if (((1 << v34) & 0x7E0000) != 0)
      {
        v32 = v32 + v33 - 55;
      }

      else if (((1 << v34) & 0x7E000000000000) != 0)
      {
        v32 = v32 + v33 - 87;
      }
    }

    ++v31;
  }

  while (v31 != 8);
  v35 = 0;
  v36 = 0;
  *(a1 + 4) = v32;
  do
  {
    v37 = *(a2 + 78 + v35);
    v36 *= 16;
    v38 = v37 - 48;
    if ((v37 - 48) <= 0x36)
    {
      if (((1 << v38) & 0x3FF) != 0)
      {
        v36 = v36 + v37 - 48;
      }

      else if (((1 << v38) & 0x7E0000) != 0)
      {
        v36 = v36 + v37 - 55;
      }

      else if (((1 << v38) & 0x7E000000000000) != 0)
      {
        v36 = v36 + v37 - 87;
      }
    }

    ++v35;
  }

  while (v35 != 8);
  v39 = 0;
  v40 = 0;
  do
  {
    v41 = *(a2 + 86 + v39);
    v40 *= 16;
    v42 = v41 - 48;
    if ((v41 - 48) <= 0x36)
    {
      if (((1 << v42) & 0x3FF) != 0)
      {
        v40 = v40 + v41 - 48;
      }

      else if (((1 << v42) & 0x7E0000) != 0)
      {
        v40 = v40 + v41 - 55;
      }

      else if (((1 << v42) & 0x7E000000000000) != 0)
      {
        v40 = v40 + v41 - 87;
      }
    }

    ++v39;
  }

  while (v39 != 8);
  v43 = v16 | 0x177;
  *a1 = v16 | 0x177;
  a1[6] = v40 + (v36 << 24);
  if (result == 70)
  {
    v43 = v16 | 0x377;
    *a1 = v16 | 0x377;
    *(a1 + 8) = v9;
  }

  if (v5)
  {
    v43 |= 0x8000u;
    *a1 = v43;
    result = memcpy(a1 + 36, (a2 + 110), v5);
    v44 = v5 + 110;
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    v44 = 110;
    if (!v9)
    {
      return result;
    }
  }

  if ((v18 | 4) == 0x4C)
  {
    *a1 = v43 | 0x10000;

    return memcpy(a1 + 292, (a2 + v44), v9);
  }

  return result;
}

uint64_t setHeaderFromValues_v10(uint64_t result, char a2, unint64_t a3, unint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned __int16 a9)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 22) = 0;
  *result = 16;
  *(result + 1) = a2;
  *(result + 2) = bswap64(a3);
  *(result + 10) = bswap64(a4);
  *(result + 18) = bswap32(a5);
  *(result + 22) = __rev16(a6);
  *(result + 24) = __rev16(a7);
  *(result + 26) = __rev16(a8);
  *(result + 28) = __rev16(a9);
  return result;
}

uint64_t yaa_parseFields(const char *a1, _DWORD *a2, _WORD *a3)
{
  v6 = strlen(a1);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = MEMORY[0x29EDCA600];
    while (1)
    {
      v12 = *&a1[v8] & 0xDFDFDF;
      if (v12 <= 0x4B4E4B)
      {
        if ((*&a1[v8] & 0xDFDFDFu) > 0x444946)
        {
          if ((*&a1[v8] & 0xDFDFDFu) > 0x464158)
          {
            switch(v12)
            {
              case 0x464159u:
                v10 |= 4u;
                goto LABEL_70;
              case 0x474C46u:
                v9 |= 8u;
                goto LABEL_70;
              case 0x4B4459u:
                v10 |= 0x10u;
                goto LABEL_70;
            }
          }

          else
          {
            switch(v12)
            {
              case 0x444947u:
                v9 |= 4u;
                goto LABEL_70;
              case 0x444955u:
                v9 |= 2u;
                goto LABEL_70;
              case 0x444F4Du:
                v9 |= 0x10u;
                goto LABEL_70;
            }
          }
        }

        else if ((*&a1[v8] & 0xDFDFDFu) > 0x124857)
        {
          switch(v12)
          {
            case 0x124858u:
              v10 |= 0x40u;
              goto LABEL_70;
            case 0x414459u:
              v10 |= 8u;
              goto LABEL_70;
            case 0x434559u:
              v10 |= 0x100u;
              goto LABEL_70;
          }
        }

        else
        {
          switch(v12)
          {
            case 0x114853u:
              v9 |= 0x2000u;
              goto LABEL_70;
            case 0x114858u:
              v10 |= 0x20u;
              goto LABEL_70;
            case 0x124853u:
              v9 |= 0x4000u;
              goto LABEL_70;
          }
        }
      }

      else if ((*&a1[v8] & 0xDFDFDFu) <= 0x544143)
      {
        if ((*&a1[v8] & 0xDFDFDFu) > 0x505841)
        {
          switch(v12)
          {
            case 0x505842u:
              v10 |= 0x80u;
              goto LABEL_70;
            case 0x505954u:
              v9 |= 1u;
              goto LABEL_70;
            case 0x534B43u:
              v9 |= 0x1000u;
              goto LABEL_70;
          }
        }

        else
        {
          switch(v12)
          {
            case 0x4B4E4Cu:
              v9 |= 0x10000u;
              goto LABEL_70;
            case 0x4C4341u:
              v9 |= 0x800u;
              goto LABEL_70;
            case 0x4D544Du:
              v9 |= 0x100u;
              goto LABEL_70;
          }
        }
      }

      else if ((*&a1[v8] & 0xDFDFDFu) <= 0x564543)
      {
        switch(v12)
        {
          case 0x544144u:
            v9 |= 0x200u;
            goto LABEL_70;
          case 0x544150u:
            v9 |= 0x8000u;
            goto LABEL_70;
          case 0x544158u:
            v9 |= 0x400u;
            goto LABEL_70;
        }
      }

      else if ((*&a1[v8] & 0xDFDFDFu) > 0x5A4952)
      {
        if (v12 == 5917011)
        {
          v9 |= 0x80u;
          goto LABEL_70;
        }

        if (v12 == 5920068)
        {
          v10 |= 1u;
          goto LABEL_70;
        }
      }

      else
      {
        if (v12 == 5653828)
        {
          v9 |= 0x20u;
          goto LABEL_70;
        }

        if (v12 == 5784649)
        {
          v10 |= 2u;
          goto LABEL_70;
        }
      }

      if (v8 + 3 < v7)
      {
        v13 = 3;
        do
        {
          v14 = a1[v8 + v13];
          if ((v14 & 0x80000000) != 0)
          {
            if (!__maskrune(v14, 0x500uLL))
            {
              goto LABEL_71;
            }
          }

          else if ((*(v11 + 4 * v14 + 60) & 0x500) == 0)
          {
            goto LABEL_71;
          }

          ++v13;
        }

        while (v7 - v8 != v13);
        v13 = v7 - v8;
        goto LABEL_71;
      }

LABEL_70:
      v13 = 3;
LABEL_71:
      v8 += v13;
      v15 = a1[v8];
      if (v15 == 32 || v15 == 44)
      {
        ++v8;
      }

      else if (!a1[v8])
      {
        goto LABEL_77;
      }

      if (v8 >= v7)
      {
LABEL_77:
        if (a2)
        {
          goto LABEL_78;
        }

        goto LABEL_79;
      }
    }
  }

  LOWORD(v10) = 0;
  v9 = 0;
  if (a2)
  {
LABEL_78:
    *a2 = v9;
  }

LABEL_79:
  if (a3)
  {
    *a3 = v10;
    a3[1] = 0;
  }

  return 0;
}

uint64_t yaa_serializeFields(_BYTE *a1, unint64_t a2, int a3, __int16 a4)
{
  if (a3)
  {
    v4 = a2 >= 3;
    a2 -= 3;
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }

    a1[2] = 80;
    *a1 = 22868;
    a1 += 3;
    v5 = 1;
    if ((a3 & 0x8000) == 0)
    {
LABEL_5:
      if ((a3 & 0x10000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v5 = 0;
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((a3 & 1) != 0 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 84;
  *a1 = 16720;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x10000) == 0)
  {
LABEL_6:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_38:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 75;
  *a1 = 20044;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x20) == 0)
  {
LABEL_7:
    if ((a3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_45:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 86;
  *a1 = 17732;
  a1 += 3;
  v5 = 1;
  if ((a3 & 2) == 0)
  {
LABEL_8:
    if ((a3 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_52:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 68;
  *a1 = 18773;
  a1 += 3;
  v5 = 1;
  if ((a3 & 4) == 0)
  {
LABEL_9:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_66;
  }

LABEL_59:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 68;
  *a1 = 18759;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x10) == 0)
  {
LABEL_10:
    if ((a3 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_73;
  }

LABEL_66:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 68;
  *a1 = 20301;
  a1 += 3;
  v5 = 1;
  if ((a3 & 8) == 0)
  {
LABEL_11:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_80;
  }

LABEL_73:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 71;
  *a1 = 19526;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x100) == 0)
  {
LABEL_12:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_87;
  }

LABEL_80:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 77;
  *a1 = 21581;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x200) == 0)
  {
LABEL_13:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_94;
  }

LABEL_87:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 84;
  *a1 = 16708;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x1000) == 0)
  {
LABEL_14:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_101;
  }

LABEL_94:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 83;
  *a1 = 19267;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x2000) == 0)
  {
LABEL_15:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_108;
  }

LABEL_101:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 49;
  *a1 = 18515;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x4000) == 0)
  {
LABEL_16:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_115;
  }

LABEL_108:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 50;
  *a1 = 18515;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x400) == 0)
  {
LABEL_17:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_18;
    }

LABEL_122:
    if (v5 && !a2)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5)
    {
      *a1++ = 44;
      --a2;
    }

    v4 = a2 >= 3;
    a2 -= 3;
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }

    a1[2] = 76;
    *a1 = 17217;
    a1 += 3;
    v5 = 1;
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_129;
  }

LABEL_115:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 84;
  *a1 = 16728;
  a1 += 3;
  v5 = 1;
  if ((a3 & 0x800) != 0)
  {
    goto LABEL_122;
  }

LABEL_18:
  if ((a3 & 0x80) == 0)
  {
    goto LABEL_19;
  }

LABEL_129:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 90;
  *a1 = 18771;
  a1 += 3;
  v5 = 1;
LABEL_19:
  if ((a4 & 0x80) != 0)
  {
    if (v5 && !a2)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5)
    {
      *a1++ = 44;
      --a2;
    }

    v4 = a2 >= 3;
    a2 -= 3;
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }

    a1[2] = 80;
    *a1 = 22594;
    a1 += 3;
    v5 = 1;
    if ((a4 & 1) == 0)
    {
LABEL_21:
      if ((a4 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_150;
    }
  }

  else if ((a4 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 90;
  *a1 = 21828;
  a1 += 3;
  v5 = 1;
  if ((a4 & 2) == 0)
  {
LABEL_22:
    if ((a4 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_157;
  }

LABEL_150:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 88;
  *a1 = 17481;
  a1 += 3;
  v5 = 1;
  if ((a4 & 0x20) == 0)
  {
LABEL_23:
    if ((a4 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_164;
  }

LABEL_157:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 49;
  *a1 = 18520;
  a1 += 3;
  v5 = 1;
  if ((a4 & 0x40) == 0)
  {
LABEL_24:
    if ((a4 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_171;
  }

LABEL_164:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 50;
  *a1 = 18520;
  a1 += 3;
  v5 = 1;
  if ((a4 & 4) == 0)
  {
LABEL_25:
    if ((a4 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_178;
  }

LABEL_171:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 70;
  *a1 = 16729;
  a1 += 3;
  v5 = 1;
  if ((a4 & 8) == 0)
  {
LABEL_26:
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_185;
  }

LABEL_178:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 65;
  *a1 = 17497;
  a1 += 3;
  v5 = 1;
  if ((a4 & 0x10) == 0)
  {
LABEL_27:
    if ((a4 & 0x100) == 0)
    {
      goto LABEL_28;
    }

LABEL_192:
    if (v5 && !a2)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5)
    {
      *a1++ = 44;
      --a2;
    }

    v4 = a2 >= 3;
    v7 = a2 - 3;
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }

    a1[2] = 67;
    *a1 = 17753;
    a1 += 3;
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_29;
  }

LABEL_185:
  if (v5 && !a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    *a1++ = 44;
    --a2;
  }

  v4 = a2 >= 3;
  a2 -= 3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[2] = 75;
  *a1 = 17497;
  a1 += 3;
  v5 = 1;
  if ((a4 & 0x100) != 0)
  {
    goto LABEL_192;
  }

LABEL_28:
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_29:
  v6 = 0;
  *a1 = 0;
  return v6;
}

uint64_t ECCGenerateThreadProc(uint64_t a1)
{
  if ((*(a1 + 40) & 0x80000000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = malloc(*(a1 + 28));
    if (!v2)
    {
      v3 = "creating workBuffer";
      v4 = 66;
LABEL_25:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCGenerateThreadProc", v4, 64, 0, v3, v16, v17, v18, v19);
      goto LABEL_26;
    }
  }

  for (i = *(a1 + 8); i < *(a1 + 16); ++i)
  {
    v6 = *(a1 + 28);
    v7 = i * v6;
    v8 = *(a1 + 64);
    if (v8 < i * v6)
    {
      v3 = "Invalid block index";
      v4 = 74;
      goto LABEL_25;
    }

    if (v7 + v6 <= v8)
    {
      v9 = v6;
    }

    else
    {
      v9 = (v8 - v7);
    }

    v10 = *(a1 + 40);
    if (v10 < 0)
    {
      v12 = *(a1 + 48) + v7;
    }

    else
    {
      v11 = pread(v10, v2, v9, *(a1 + 56) + v7);
      if (v11 < 0)
      {
        v14 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCGenerateThreadProc", 82, 64, v14, "reading data segment");
        break;
      }

      v12 = v2;
      if (v9 != v11)
      {
        v18 = v9;
        v19 = *(a1 + 40);
        v16 = v11;
        v17 = v7;
        v3 = "Truncated read n=%zd pos=%llu read=%llu %s";
        v4 = 83;
        goto LABEL_25;
      }
    }

    v13 = *(a1 + 32);
    if (i * v13 + v13 > *(a1 + 80))
    {
      v3 = "Parity buffer out of range";
      v4 = 94;
      goto LABEL_25;
    }

    if (*(a1 + 24) != 1)
    {
      v16 = *(a1 + 24);
      v3 = "invalid variant %u";
      v4 = 101;
      goto LABEL_25;
    }

    if (ECC65537GetParity(v9, v12, *(a1 + 72) + i * v13))
    {
      v16 = i;
      v3 = "generating parity block %llu\n";
      v4 = 99;
      goto LABEL_25;
    }
  }

LABEL_26:
  free(v2);
  return 0;
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

unint64_t ParallelArchiveECCGenerateCommon(int a1, char *a2, off_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v63 = *MEMORY[0x29EDCA608];
  DefaultNThreads = a7[1];
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v15 = a7[4];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x4000;
  }

  v17 = *a7;
  v61 = 0uLL;
  v62 = 0;
  v59 = 0uLL;
  v60 = 0;
  RealTime = getRealTime();
  enterThreadErrorContext();
  if (a7[3] != 1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 262, 64, 0, "Invalid ECC variant: %u");
    goto LABEL_10;
  }

  if (v16 >= 0x1FFE1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 258, 64, 0, "Invalid blockSize: %u");
LABEL_10:
    v19 = 0;
LABEL_11:
    v20 = 0;
LABEL_12:
    v21 = 1;
    goto LABEL_13;
  }

  v56 = a2;
  v57 = a3;
  v27 = (a4 + v16 - 1) / v16;
  v19 = 34 * v27 + 48;
  if (a5 || a6)
  {
    if (v19 > a6)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 273, 64, 0, "Output buffer too small, %zu B required, %zu B provided");
      goto LABEL_11;
    }

    if (v27 >= DefaultNThreads)
    {
      v28 = DefaultNThreads;
    }

    else
    {
      v28 = (a4 + v16 - 1) / v16;
    }

    if (v28 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v28;
    }

    if (a1 < 0)
    {
      if ((getBufferSHA1Digest(v56, a4, &v61) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 287, 64, 0, "computing buffer digest");
        goto LABEL_11;
      }
    }

    else if ((getFileSegmentSHA1DigestFD(a1, v57, a4, &v61) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 283, 64, 0, "computing file digest");
      goto LABEL_11;
    }

    v30 = (v27 + v29 - 1) / v29;
    v52 = v17;
    v51 = v29;
    if (v17 >= 1)
    {
      memset(v58, 0, sizeof(v58));
      sha1ToString(v58, &v61);
      v31 = MEMORY[0x29EDCA610];
      fwrite("ParallelArchiveECCGenerateCommon:\n", 0x22uLL, 1uLL, *MEMORY[0x29EDCA610]);
      fprintf(*v31, "  Input data SHA1: %s\n", v58);
      fwrite("  ECC variant: ", 0xFuLL, 1uLL, *v31);
      if (a7[3] == 1)
      {
        fwrite("RS65537\n", 8uLL, 1uLL, *v31);
      }

      fprintf(*v31, "%12llu data size\n", a4);
      fprintf(*v31, "%12u block size\n", v16);
      fprintf(*v31, "%12u ECC parity size per block\n", 34);
      fprintf(*v31, "%11.2f%% parity/data ratio\n", 3400.0 / v16);
      fprintf(*v31, "%12zu block count\n", (a4 + v16 - 1) / v16);
      fprintf(*v31, "%12zu ECC buffer size\n", 34 * v27 + 48);
      fprintf(*v31, "%12u worker threads\n", v51);
      v32 = *v31;
      v29 = v51;
      fprintf(v32, "%12zu blocks per thread\n", v30);
    }

    v33 = calloc(v29, 0x58uLL);
    v34 = v29;
    v20 = v33;
    if (!v33)
    {
      v45 = v34;
      v46 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 313, 64, *v46, "malloc %u threads", v45);
      goto LABEL_12;
    }

    v35 = 0;
    v36 = a5;
    v37 = 0;
    v50 = v36;
    v54 = v36 + 48;
    v55 = a4;
    v38 = 88 * v34;
    v53 = 1;
    do
    {
      v39 = v30 * v37;
      if (v30 * v37 < v27)
      {
        v40 = v39 + v30;
        if (v39 + v30 >= v27)
        {
          v40 = v27;
        }

        v41 = &v20[v35];
        *(v41 + 1) = v39;
        *(v41 + 2) = v40;
        *(v41 + 10) = a1;
        *(v41 + 6) = v56;
        *(v41 + 7) = v57;
        *(v41 + 8) = v55;
        *(v41 + 9) = v54;
        *(v41 + 10) = 34 * v27;
        *(v41 + 6) = a7[3];
        *(v41 + 7) = v16;
        *(v41 + 4) = 34;
        if (createThread(&v20[v35], ECCGenerateThreadProc, &v20[v35], 0))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 336, 64, 0, "createThread");
          v53 = 0;
        }
      }

      ++v37;
      v35 += 88;
    }

    while (v38 != v35);
    v42 = 0;
    LOBYTE(v21) = v53 == 0;
    while (2)
    {
      v43 = 88 * v42++;
      while (1)
      {
        v44 = *&v20[v43];
        if (v44)
        {
          if (joinThread(v44))
          {
            break;
          }
        }

        ++v42;
        v43 += 88;
        if (v42 - v51 == 1)
        {
          v17 = v52;
          if (v21)
          {
            v21 = 1;
            a4 = v55;
            a5 = v50;
          }

          else
          {
            v21 = 0;
            v47 = v61;
            v59 = v61;
            v48 = v62;
            v60 = v62;
            v49 = a7[3];
            a5 = v50;
            a4 = v55;
            *v50 = 0x3031304343455842;
            *(v50 + 8) = v55;
            *(v50 + 16) = v47;
            *(v50 + 32) = v48;
            *(v50 + 36) = v49;
            *(v50 + 40) = v16;
            *(v50 + 44) = 0;
          }

          goto LABEL_13;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 343, 64, 0, "joinThread");
      v21 = 1;
      if (v42 != v51)
      {
        continue;
      }

      break;
    }

    a4 = v55;
    a5 = v50;
    v17 = v52;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

LABEL_13:
  free(v20);
  v22 = leaveThreadErrorContext(0, 0, 0);
  if (v22 < 0)
  {
    return v22;
  }

  v23 = v17;
  if (v21)
  {
    v24 = -1;
  }

  else
  {
    v24 = v22;
  }

  if (a5 && v21 != 1 && v23 >= 1)
  {
    v25 = getRealTime();
    fprintf(*MEMORY[0x29EDCA610], "Total time %.2fs, %.2f MB/s\n", v25 - RealTime, vcvtd_n_f64_u64(a4, 0x14uLL) / (v25 - RealTime));
    if ((v21 & 1) == 0)
    {
      return v19;
    }

    return v24;
  }

  if (v21)
  {
    return v24;
  }

  return v19;
}

unint64_t ParallelArchiveECCFixCommon(int a1, char *a2, off_t a3, unint64_t a4, __int128 *a5, unint64_t a6, uint64_t a7)
{
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
  if (a1 < 0)
  {
    if ((getBufferSHA1Digest(a2, a4, &v83) & 0x80000000) != 0)
    {
      v38 = "computing buffer digest";
      v39 = 495;
      goto LABEL_51;
    }
  }

  else if ((getFileSegmentSHA1DigestFD(a1, a3, a4, &v83) & 0x80000000) != 0)
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
      *(v47 + 40) = a1;
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

  if (a1 < 0)
  {
    if ((getBufferSHA1Digest(a2, v62, &v83) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 574, 64, 0, "computing buffer digest");
      goto LABEL_100;
    }
  }

  else if ((getFileSegmentSHA1DigestFD(a1, a3, v62, &v83) & 0x80000000) != 0)
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

uint64_t ParallelArchiveECCVerifyCommon(int a1, char *a2, off_t a3, unint64_t a4, __int128 *a5, unint64_t a6)
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

  if (a1 < 0)
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

uint64_t ParallelCompressionOStreamCreate(uint64_t a1)
{
  v1 = OEncoderStreamCreate(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 8), *(a1 + 4), *(a1 + 16), *a1);
  if (!v1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Streams.c", "ParallelCompressionOStreamCreate", 20, 45, 0, "creating encoder failed");
  }

  return v1;
}

uint64_t *ParallelCompressionIStreamCreate(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    v2[1] = 0;
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 8);
    if (*(a1 + 16))
    {
      v10 = ILowMemoryDecoderStreamCreate(v4, v5, v6, v7);
      v3[1] = v10;
      if (!v10)
      {
LABEL_7:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Streams.c", "ParallelCompressionIStreamCreate", 63, 45, 0, "creating decoder failed");
        free(v3);
        return 0;
      }
    }

    else
    {
      v8 = IDecoderStreamCreate(v4, v5, v6, v7, *a1);
      *v3 = v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v9 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Streams.c", "ParallelCompressionIStreamCreate", 51, 45, *v9, "malloc");
  }

  return v3;
}

uint64_t ParallelCompressionIStreamRead(uint64_t a1, char *a2, size_t a3)
{
  if (!a1)
  {
    return -1;
  }

  if (*(a1 + 8))
  {
    return ILowMemoryDecoderStreamRead(*(a1 + 8), a2, a3);
  }

  return IDecoderStreamRead(*a1, a2, a3);
}

uint64_t *ParallelCompressionIStreamAbort(uint64_t *result)
{
  if (result)
  {
    if (result[1])
    {
      return ILowMemoryDecoderStreamAbort(result[1]);
    }

    else
    {
      return IDecoderStreamAbort(*result);
    }
  }

  return result;
}

void ParallelCompressionIStreamDestroy(void **a1)
{
  if (a1)
  {
    ILowMemoryDecoderStreamDestroy(a1[1]);
    IDecoderStreamDestroy(*a1);

    free(a1);
  }
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

void **MemBufferCreateWithData(size_t a1, const void *a2)
{
  v4 = MemBufferCreate(a1);
  v5 = v4;
  if (v4)
  {
    memcpy(v4[4], a2, a1);
    v5[1] = a1;
    v5[2] = 0;
    v5[3] = a1;
  }

  return v5;
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

void *MemBufferClear(void *result)
{
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
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

unint64_t MemBufferFillFromBufferWithCapacityIncrease(unint64_t *a1, size_t a2, const void *a3)
{
  v6 = a1[1] + a2;
  if (v6 > *a1 && (MemBufferIncreaseCapacity(a1, v6) & 0x8000000000000000) != 0)
  {
    return -1;
  }

  return MemBufferFillFromBuffer(a1, a2, a3);
}

uint64_t MemBufferFlushToBuffer(void *a1, size_t __n, void *__dst)
{
  if (a1[1] >= __n)
  {
    memcpy(__dst, (a1[4] + a1[2]), __n);

    return MemBufferDecreaseSize(a1, __n);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferFlushToBuffer", 183, 36, 0, "MemBufferFlushToBuffer n is too large: %zu", __n);
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

void *MappedBufferCreateWithFilename(const char *a1, unint64_t a2, off_t a3)
{
  v6 = malloc(0x28uLL);
  v7 = v6;
  if (v6)
  {
    v6[3] = 0;
    v6[4] = 0;
    v6[1] = -1;
    v6[2] = 0;
    memset(&v22, 0, sizeof(v22));
    v8 = getpagesize();
    *(v7 + 1) = 1;
    v9 = open(a1, 0);
    *v7 = v9;
    if (v9 < 0)
    {
      v11 = *__error();
      v19 = a1;
      v12 = "%s";
      v13 = 344;
      goto LABEL_7;
    }

    v10 = v9;
    if (fstat(v9, &v22))
    {
      v11 = *__error();
      v19 = a1;
      v12 = "%s";
      v13 = 347;
LABEL_7:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFilename", v13, 36, v11, v12, v19, v20, v21);
      MappedBufferDestroy(v7);
      return 0;
    }

    if (v22.st_size > a2)
    {
      if (a3 == -1)
      {
        a3 = v22.st_size - a2;
      }

      else if (a3 + a2 > v22.st_size)
      {
        v20 = a3;
        v21 = a1;
        v19 = a2;
        v12 = "invalid offset=%llu, size=%llu in file %s";
        v13 = 352;
LABEL_19:
        v11 = 0;
        goto LABEL_7;
      }

      if (a3)
      {
        v7[4] = a3;
        v16 = a2 / v8 * v8;
        v17 = a2 % v8;
        v7[2] = v17 + a3;
        v18 = mmap(0, v17 + a3, 1, 2, v10, v16);
        v7[1] = v18;
        if (v18 != -1)
        {
          v7[3] = &v18[v17];
          return v7;
        }

        v11 = *__error();
        v12 = "mmap file segment";
        v13 = 364;
        goto LABEL_7;
      }

      v19 = 0;
      v12 = "invalid size=%llu";
      v13 = 354;
      goto LABEL_19;
    }

    v19 = a2;
    v20 = a1;
    v12 = "invalid offset=%llu in file %s";
    v13 = 348;
    goto LABEL_19;
  }

  v14 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFilename", 329, 36, *v14, "malloc");
  return v7;
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

uint64_t verifyDirThreadProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v40 = *MEMORY[0x29EDCA608];
  v1 = *v0;
  bzero(v39, 0x800uLL);
  bzero(v38, 0x800uLL);
  memset(&v33, 0, sizeof(v33));
  v3 = *(*v1 + 64);
  v2 = *(*v1 + 72);
  atomic_fetch_add_explicit((v1 + 2136), 1uLL, memory_order_relaxed);
  if (!concatPath(v39, 0x800uLL, (v1 + 8), (v0 + 152)))
  {
    if (lstat(v39, &v33))
    {
      v6 = *__error();
      v31 = v39;
      v4 = "%s";
      v5 = 81;
      goto LABEL_6;
    }

    v8 = *(v0 + 8);
    AAEntryType = getAAEntryType(v33.st_mode);
    v10 = *(v0 + 12);
    if (v10 == 72)
    {
      if (concatPath(v38, 0x800uLL, (v1 + 8), (v0 + 1176)))
      {
        v31 = (v0 + 1176);
        v4 = "building full link path: %s";
        v5 = 93;
        goto LABEL_3;
      }

      memset(&v34, 0, sizeof(v34));
      if (lstat(v38, &v34))
      {
        v6 = *__error();
        v31 = v39;
        v4 = "%s";
        v5 = 97;
        goto LABEL_6;
      }

      if (v34.st_ino != v33.st_ino)
      {
        v11 = 64;
        goto LABEL_115;
      }

LABEL_117:
      v30 = 0;
      v29 = 0;
      if (!v3)
      {
        return 0;
      }

      goto LABEL_116;
    }

    if (AAEntryType != v10)
    {
      v11 = 1;
      goto LABEL_115;
    }

    if ((v8 & 2) != 0)
    {
      v11 = 2 * (*(v0 + 16) != v33.st_uid);
    }

    else
    {
      v11 = 0;
    }

    if ((v8 & 4) != 0)
    {
      if (*(v0 + 20) != v33.st_gid)
      {
        v11 |= 4u;
      }

      if ((v8 & 8) == 0)
      {
LABEL_20:
        if ((v8 & 0x10) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_30;
      }
    }

    else if ((v8 & 8) == 0)
    {
      goto LABEL_20;
    }

    if (*(v0 + 24) != v33.st_flags)
    {
      v11 |= 8u;
    }

    if ((v8 & 0x10) == 0)
    {
LABEL_21:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }

LABEL_30:
    if (*(v0 + 28) != (v33.st_mode & 0xFFF))
    {
      v11 |= 0x10u;
    }

    if ((v8 & 0x80) == 0)
    {
LABEL_22:
      if ((v8 & 0x100) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    }

LABEL_33:
    if (*(v0 + 48) != v33.st_size)
    {
      v11 |= 0x80u;
    }

    if ((v8 & 0x100) == 0)
    {
LABEL_40:
      if ((v8 & 0x10000) != 0 && AAEntryType == 76)
      {
        bzero(&v34, 0x400uLL);
        if (readlink(v39, &v34, 0x3FFuLL) < 0)
        {
          v6 = *__error();
          v31 = v39;
          v4 = "%s";
          v5 = 129;
          goto LABEL_6;
        }

        if (strcmp(&v34, (v0 + 1176)))
        {
          v11 |= 0x10000u;
          goto LABEL_115;
        }

        goto LABEL_114;
      }

      if (AAEntryType != 70)
      {
        goto LABEL_114;
      }

      if ((v8 & 0x1000) != 0)
      {
        v12 = &v32;
      }

      else
      {
        if ((v8 & 0x6000) == 0)
        {
          goto LABEL_114;
        }

        v12 = 0;
      }

      v32 = 0;
      v36 = 0;
      v35 = 0;
      v37 = 0;
      memset(&v34, 0, 32);
      if ((v8 & 0x2000) != 0)
      {
        v13 = &v35;
      }

      else
      {
        v13 = 0;
      }

      if ((v8 & 0x4000) != 0)
      {
        v14 = &v34;
      }

      else
      {
        v14 = 0;
      }

      if ((getFileDigests(v39, v13, v14, v12) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "verifyDirThreadProc", 141, 43, 0, "verification failed: %s", v39);
        atomic_fetch_add_explicit((v1 + 2176), 1uLL, memory_order_relaxed);
        if ((v8 & 0x1000) == 0)
        {
LABEL_61:
          if ((v8 & 0x2000) == 0)
          {
            goto LABEL_87;
          }

LABEL_67:
          if (v35 != *(v0 + 100) || v36 != *(v0 + 108) || v37 != *(v0 + 116))
          {
            v17 = *(v0 + 2200);
            if (v17)
            {
              v18 = *(v0 + 2216) + 8;
              while (1)
              {
                if (*(v18 - 4) == 5 && (*(v18 - 8) & 0xDFDFDF) == 0x114858)
                {
                  v19 = v35 == *v18 && v36 == *(v18 + 8);
                  if (v19 && v37 == *(v18 + 16))
                  {
                    break;
                  }
                }

                v18 += 1032;
                if (!--v17)
                {
                  goto LABEL_86;
                }
              }
            }

            else
            {
LABEL_86:
              v11 |= 0x2000u;
            }
          }

LABEL_87:
          if ((v8 & 0x4000) != 0)
          {
            v21 = *&v34.st_dev == *(v0 + 120) && v34.st_ino == *(v0 + 128);
            v22 = v21 && *&v34.st_uid == *(v0 + 136);
            if (!v22 || *&v34.st_rdev != *(v0 + 144))
            {
              v24 = *(v0 + 2200);
              if (!v24)
              {
LABEL_113:
                v11 |= 0x4000u;
                goto LABEL_115;
              }

              v25 = (*(v0 + 2216) + 8);
              while (1)
              {
                if (*(v25 - 1) == 6 && (*(v25 - 1) & 0xDFDFDF) == 0x124858)
                {
                  v26 = *&v34.st_dev == *v25 && v34.st_ino == v25[1];
                  v27 = v26 && *&v34.st_uid == v25[2];
                  if (v27 && *&v34.st_rdev == v25[3])
                  {
                    break;
                  }
                }

                v25 += 129;
                if (!--v24)
                {
                  goto LABEL_113;
                }
              }
            }
          }

LABEL_114:
          if (!v11)
          {
            goto LABEL_117;
          }

LABEL_115:
          atomic_fetch_add_explicit((v1 + 2160), 1uLL, memory_order_relaxed);
          v29 = v11;
          v30 = 3;
          if (!v3)
          {
            return 0;
          }

LABEL_116:
          v3(v2, v30, v29, v0 + 8, *(v0 + 2216), *(v0 + 2200));
          return 0;
        }
      }

      else if ((v8 & 0x1000) == 0)
      {
        goto LABEL_61;
      }

      if (v32 != *(v0 + 96))
      {
        v11 |= 0x1000u;
      }

      if ((v8 & 0x2000) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_67;
    }

LABEL_36:
    if (AAEntryType != 68 && (*(v0 + 56) != v33.st_mtimespec.tv_sec || *(v0 + 64) / 0x3E8uLL != v33.st_mtimespec.tv_nsec / 0x3E8uLL))
    {
      v11 |= 0x100u;
    }

    goto LABEL_40;
  }

  v31 = (v0 + 152);
  v4 = "building full path: %s";
  v5 = 78;
LABEL_3:
  v6 = 0;
LABEL_6:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "verifyDirThreadProc", v5, 43, v6, v4, v31);
  atomic_fetch_add_explicit((v1 + 2176), 1uLL, memory_order_relaxed);
  return 0;
}

uint64_t ParallelArchiveVerifyDir(uint64_t a1)
{
  v57[1] = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  bzero(v44, 0x880uLL);
  v43 = a1;
  DefaultNThreads = *(a1 + 4);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  LODWORD(__count) = DefaultNThreads;
  if (!realpath_DARWIN_EXTSN(*(a1 + 16), v44))
  {
    v9 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "ParallelArchiveVerifyDir", 350, 43, v9, *(a1 + 16));
    goto LABEL_17;
  }

  v47 = calloc(__count, 0x8B0uLL);
  v3 = calloc(__count, 8uLL);
  v48 = v3;
  if (!v47 || !v3)
  {
    v10 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "ParallelArchiveVerifyDir", 353, 43, v10, "malloc");
    goto LABEL_17;
  }

  v45 = ArchiveTreeCreateFromDirectory(*(a1 + 16), 0, *(a1 + 48), *(a1 + 56), *(a1 + 4), *a1);
  if (!v45)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "ParallelArchiveVerifyDir", 357, 43, 0, "creating directory tree");
    goto LABEL_17;
  }

  v4 = __count;
  if (__count)
  {
    v5 = 0;
    do
    {
      v6 = (v47 + 2224 * v5);
      *v6 = &v43;
      *(v48 + v5++) = v6;
    }

    while (v5 != v4);
  }

  v49 = ThreadPoolCreate(v4, v48, verifyDirThreadProc);
  if (!v49)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "ParallelArchiveVerifyDir", 366, 43, 0, "ThreadPoolCreate");
    goto LABEL_17;
  }

  v37 = 0u;
  v38 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  DWORD1(v37) = *(a1 + 4);
  v7 = *(a1 + 40);
  *(&v37 + 1) = *(a1 + 24);
  *(&v38 + 1) = v7;
  *&v39 = verifyDirBeginEntry;
  *&v41 = verifyDirEndEntry;
  *(&v39 + 1) = verifyDirBlob;
  *&v40 = verifyDirPayload;
  v42 = &v43;
  if (ParallelArchiveRead(&v37))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "ParallelArchiveVerifyDir", 379, 43, 0, "reading manifest");
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  if ((ThreadPoolDestroy(v49) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "ParallelArchiveVerifyDir", 382, 43, 0, "ThreadPoolDestroy failed");
    v8 = 0;
    v49 = 0;
    goto LABEL_18;
  }

  v49 = 0;
  v18 = atomic_load(v57);
  if (v18 > 0)
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  if (*a1 >= 1)
  {
    v19 = MEMORY[0x29EDCA610];
    v20 = *MEMORY[0x29EDCA610];
    v21 = atomic_load(&v50);
    fprintf(v20, "%12lld entries in manifest\n", v21);
    v22 = *v19;
    v23 = atomic_load(&v51);
    fprintf(v22, "%12lld entries selected\n", v23);
    v24 = *v19;
    v25 = atomic_load(&v54);
    fprintf(v24, "%12lld entries added\n", v25);
    v26 = *v19;
    v27 = atomic_load(&v53);
    fprintf(v26, "%12lld entries removed\n", v27);
    v28 = *v19;
    v29 = atomic_load(&v52);
    fprintf(v28, "%12lld entries compared\n", v29);
    v30 = *v19;
    v31 = atomic_load(&v55);
    fprintf(v30, "%12lld entries compared -> modified\n", v31);
    v32 = *v19;
    v33 = atomic_load(&v52);
    v34 = atomic_load(&v55);
    fprintf(v32, "%12lld entries compared -> verified\n", v33 - v34);
    v35 = *v19;
    v36 = atomic_load(&v56);
    fprintf(v35, "%12lld bytes hashed\n", v36);
  }

LABEL_18:
  ArchiveTreeDestroy(v45);
  if ((ThreadPoolDestroy(v49) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "ParallelArchiveVerifyDir", 403, 43, 0, "ThreadPoolDestroy");
    v8 = 0;
  }

  free(v48);
  v11 = v47;
  if (v47)
  {
    if (__count)
    {
      v12 = 0;
      v13 = 2216;
      do
      {
        free(*(v47 + v13));
        ++v12;
        v13 += 2224;
      }

      while (v12 < __count);
      v11 = v47;
    }

    free(v11);
  }

  result = leaveThreadErrorContext(0, 0, 0);
  if ((result & 0x80000000) == 0)
  {
    if (v8)
    {
      if (atomic_load(&v55))
      {
        return 0;
      }

      if (atomic_load(&v54))
      {
        return 0;
      }

      else
      {
        v17 = atomic_load(&v53);
        return v17 == 0;
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t verifyDirBeginEntry()
{
  result = MEMORY[0x2A1C7C4A8]();
  v21 = *MEMORY[0x29EDCA608];
  v5 = *(*result + 64);
  v4 = *(*result + 72);
  v6 = *(v1 + 4) == 77;
  *(result + 1084) = v6;
  if (!v6)
  {
    v7 = v3;
    v8 = v2;
    v9 = v1;
    v10 = result;
    atomic_fetch_add((result + 2120), 1uLL);
    v11 = *(*result + 48);
    if (!v11 || (result = v11(*(*result + 56), v1 + 144, *(v1 + 4)), result >= 1))
    {
      atomic_fetch_add((v10 + 2128), 1uLL);
      v12 = *(v10 + 1072);
      result = ArchiveTreeSize(*(v10 + 1032));
      if (v12 < result)
      {
        while (1)
        {
          if ((ArchiveTreeNodePath(*(v10 + 1032), *(v10 + 1072), __s1, 0x800uLL) & 0x8000000000000000) != 0)
          {
            result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "verifyDirBeginEntry", 220, 43, 0, "getting node path");
            goto LABEL_27;
          }

          result = strcmp(__s1, v9 + 144);
          if ((result & 0x80000000) == 0)
          {
            break;
          }

          if (__s1[0])
          {
            atomic_fetch_add((v10 + 2152), 1uLL);
            if (v5)
            {
              bzero(v18, 0x890uLL);
              __strlcpy_chk();
              v19 = ArchiveTreeNodeEntryType(*(v10 + 1032), *(v10 + 1072));
              v5(v4, 2, 0, v18, 0, 0);
            }
          }

          v13 = *(v10 + 1072) + 1;
          *(v10 + 1072) = v13;
          if (v13 >= ArchiveTreeSize(*(v10 + 1032)))
          {
            goto LABEL_16;
          }
        }

        if (result)
        {
          goto LABEL_14;
        }

LABEL_16:
        Worker = ThreadPoolGetWorker(*(v10 + 1064));
        if (Worker)
        {
          v15 = Worker;
          memcpy((Worker + 8), v9, 0x890uLL);
          if (*(v15 + 2208) >= v7)
          {
            v17 = *(v15 + 2216);
          }

          else
          {
            v16 = 16;
            if (v7 > 0x10)
            {
              v16 = v7;
            }

            *(v15 + 2208) = v16;
            v17 = reallocf(*(v15 + 2216), 1032 * v16);
            *(v15 + 2216) = v17;
            if (!v17)
            {
              result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "verifyDirBeginEntry", 272, 43, 0, "malloc");
LABEL_27:
              atomic_fetch_add_explicit((v10 + 2176), 1uLL, memory_order_relaxed);
              return result;
            }
          }

          memcpy(v17, v8, 1032 * v7);
          *(v15 + 2200) = v7;
          *(v15 + 8) &= *(*v10 + 8);
          result = ThreadPoolRunWorker(*(v10 + 1064));
          if ((result & 0x80000000) == 0)
          {
            ++*(v10 + 1072);
            return result;
          }

          result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "verifyDirBeginEntry", 281, 43, 0, "ThreadPoolRunWorker failed");
          goto LABEL_27;
        }

        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "verifyDirBeginEntry", 262, 43, 0, "ThreadPoolGetWorker failed");
        goto LABEL_27;
      }

LABEL_14:
      atomic_fetch_add((v10 + 2144), 1uLL);
      if (v5)
      {
        return v5(v4, 1, 0, v9, v8, v7);
      }
    }
  }

  return result;
}

size_t verifyDirEndEntry(size_t result)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(result + 1084))
  {
    v1 = result;
    v2 = *(result + 2112);
    if ((v2 + 1) <= 0x3FF)
    {
      *(result + 1088 + v2) = 0;
      v5 = 0;
      result = yaa_parseFields((result + 1088), &v5, 0);
      if (result)
      {
        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "verifyDirEndEntry", 296, 43, 0, "parsing YAF metadata field");
LABEL_5:
        atomic_fetch_add_explicit((v1 + 2176), 1uLL, memory_order_relaxed);
        return result;
      }

      v3 = *(*v1 + 8) & v5;
      v4 = MEMORY[0x29EDCA610];
      if (**v1 >= 1)
      {
        bzero(v6, 0x400uLL);
        fprintf(*v4, "Manifest fields: %s\n", (v1 + 1088));
        if (yaa_serializeFields(v6, 0x400uLL, v3, 0))
        {
          result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/VerifyDir.c", "verifyDirEndEntry", 307, 43, 0, "serializing fields");
          goto LABEL_5;
        }

        result = fprintf(*v4, "Comparison fields: %s\n", v6);
      }

      if ((v3 & 0x400) != 0)
      {
        result = fwrite("Warning: XAT field verification is not implemented\n", 0x33uLL, 1uLL, *v4);
      }

      if ((v3 & 0x800) != 0)
      {
        return fwrite("Warning: ACL field verification is not implemented\n", 0x33uLL, 1uLL, *v4);
      }
    }
  }

  return result;
}

uint64_t verifyDirBlob(uint64_t result, char *a2)
{
  v2 = result;
  v3 = *(result + 1084);
  if (v3)
  {
    result = strncasecmp(a2, "YAF", 3uLL);
    v3 = result == 0;
  }

  *(v2 + 1080) = v3;
  return result;
}

char *verifyDirPayload(char *result, const void *a2, size_t __n)
{
  if (*(result + 270))
  {
    v4 = result;
    v5 = *(result + 264);
    if (v5 + __n <= 0x3FF)
    {
      result = memcpy(&result[v5 + 1088], a2, __n);
      *(v4 + 264) += __n;
    }
  }

  return result;
}

_OWORD *ParallelArchiveDBSessionCreate(char *a1, void *a2, size_t a3, uint64_t a4)
{
  v8 = calloc(1uLL, 0x58uLL);
  if (v8)
  {
    v9 = strchr(a1, 61);
    if (v9)
    {
      v10 = v9 - a1;
      v11 = v9 + 1;
      if (!isValidAliasOrEngine(a1, v9 - a1))
      {
        v23 = v11;
        v17 = "invalid session URL: %s (invalid alias chars)";
        v18 = 68;
        goto LABEL_15;
      }

      v12 = a1;
      a1 = v11;
    }

    else
    {
      v12 = 0;
      v10 = 0;
    }

    v14 = strchr(a1, 58);
    if (v14)
    {
      v15 = v14 - a1;
      v16 = v14 + 1;
      if (!isValidAliasOrEngine(a1, v14 - a1))
      {
        v23 = v16;
        v17 = "invalid session URL: %s (invalid engine chars)";
        v18 = 78;
        goto LABEL_15;
      }

      if (v15 == 4 && *a1 == 1701603686)
      {
        v20 = *&off_2A1E9B398;
        v8[2] = xmmword_2A1E9B388;
        v8[3] = v20;
        v8[4] = xmmword_2A1E9B3A8;
        *(v8 + 10) = qword_2A1E9B3B8;
        v21 = *&off_2A1E9B378;
        *v8 = ParallelArchiveDBSession_FILE;
        v8[1] = v21;
        v22 = (*v8)(v16, a4);
        *(v8 + 10) = v22;
        if (v22)
        {
          if (!a2)
          {
            return v8;
          }

          bzero(a2, a3);
          if (v10 + 1 <= a3)
          {
            memcpy(a2, v12, v10);
            *(a2 + v10) = 0;
            return v8;
          }

          v17 = "invalid aliasCapacity";
          v18 = 98;
        }

        else
        {
          v23 = v16;
          v17 = "create session: %s";
          v18 = 91;
        }

        goto LABEL_15;
      }

      a1 = v16;
    }

    v23 = a1;
    v17 = "Invalid session URL: %s (unknown engine)";
    v18 = 87;
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBSessionCreate", v18, 11, 0, v17, v23);
    goto LABEL_16;
  }

  v13 = *__error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBSessionCreate", 52, 11, v13, "malloc");
LABEL_16:
  free(v8);
  return 0;
}

BOOL isValidAliasOrEngine(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x29EDCA600];
    while (1)
    {
      v7 = *(a1 + v5);
      if ((v7 & 0x80000000) != 0)
      {
        if (__maskrune(*(a1 + v5), 0x500uLL))
        {
          goto LABEL_9;
        }
      }

      else if ((*(v6 + 4 * v7 + 60) & 0x500) != 0)
      {
        goto LABEL_9;
      }

      if (v7 != 95 && v7 != 45)
      {
        return v4;
      }

LABEL_9:
      v4 = ++v5 >= a2;
      if (a2 == v5)
      {
        return v4;
      }
    }
  }

  return 1;
}

uint64_t ParallelArchiveDBSessionDestroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (*(result + 8))(*(result + 80));
    free(v1);
    return v2;
  }

  return result;
}

void *ParallelArchiveDBRequestOpenForWriting(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = calloc(1uLL, 0x10uLL);
  v7 = v6;
  if (!v6)
  {
    v9 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBRequestOpenForWriting", 122, 11, v9, "malloc");
    goto LABEL_5;
  }

  *v6 = a1;
  v8 = (*(a1 + 16))(*(a1 + 80), a2, a3);
  v7[1] = v8;
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBRequestOpenForWriting", 126, 11, 0, "Request creation");
LABEL_5:
    free(v7);
    return 0;
  }

  return v7;
}

uint64_t ParallelArchiveDBRequestCloseAndGetKey(void *a1)
{
  v2 = (*(*a1 + 32))(a1[1]);
  free(a1);
  return v2;
}

void *ParallelArchiveDBRequestOpenForReading(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = calloc(1uLL, 0x10uLL);
  v13 = v12;
  if (!v12)
  {
    v15 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBRequestOpenForReading", 151, 11, v15, "malloc");
    goto LABEL_5;
  }

  *v12 = a1;
  v14 = (*(a1 + 40))(*(a1 + 80), a2, a3, a4, a5, a6);
  v13[1] = v14;
  if (!v14)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBRequestOpenForReading", 155, 11, 0, "Request creation");
LABEL_5:
    free(v13);
    return 0;
  }

  return v13;
}

uint64_t ParallelArchiveDBRequestClose(void *a1)
{
  v2 = (*(*a1 + 64))(a1[1]);
  free(a1);
  return v2;
}

unint64_t *ParallelArchiveDBSetCreate(size_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBSetCreate", 191, 11, 0, "nDB is not expected to be 0\n");
    v7 = 0;
    goto LABEL_20;
  }

  v6 = calloc(1uLL, 0x18uLL);
  v7 = v6;
  if (!v6)
  {
    v12 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBSetCreate", 195, 11, v12, "malloc");
    goto LABEL_20;
  }

  *v6 = a1;
  v6[1] = calloc(a1, 8uLL);
  v8 = calloc(a1, 8uLL);
  v7[2] = v8;
  v9 = v7[1];
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBSetCreate", 200, 11, v11, "malloc");
    goto LABEL_20;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    *(v9 + 8 * v13) = malloc(0x100uLL);
    v15 = *(v7[1] + 8 * v13);
    if (!v15)
    {
      v16 = *__error();
      v17 = "malloc";
      v18 = 205;
      goto LABEL_19;
    }

    *(v7[2] + 8 * v13) = ParallelArchiveDBSessionCreate(*(a2 + 8 * v13), v15, 0x100uLL, a3);
    if (!*(v7[2] + 8 * v13))
    {
      v20 = *(a2 + 8 * v13);
      v17 = "creating session for: %s";
      v18 = 207;
      goto LABEL_24;
    }

    v9 = v7[1];
    if (!**(v9 + 8 * v13))
    {
      break;
    }

LABEL_16:
    if (a1 == ++v13)
    {
      return v7;
    }
  }

  if (!v14)
  {
    v14 = 1;
    goto LABEL_16;
  }

  v17 = "Only one default database is allowed";
  v18 = 212;
LABEL_24:
  v16 = 0;
LABEL_19:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBSetCreate", v18, 11, v16, v17, v20);
LABEL_20:
  ParallelArchiveDBSetDestroy(v7);
  return 0;
}

uint64_t ParallelArchiveDBSetDestroy(unint64_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[1];
  if (v2)
  {
    if (*a1)
    {
      v3 = 0;
      do
      {
        free(*(a1[1] + 8 * v3++));
      }

      while (v3 < *a1);
      v2 = a1[1];
    }

    free(v2);
  }

  v4 = a1[2];
  if (v4)
  {
    if (*a1)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = *(a1[2] + 8 * v5);
        if (v7)
        {
          v8 = (*(v7 + 8))(*(v7 + 80));
          free(v7);
          if (v8 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBSetDestroy", 239, 11, 0, "destroying session");
            v6 = 0;
          }
        }

        ++v5;
      }

      while (v5 < *a1);
      v4 = a1[2];
      if (v6)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v9 = 0;
    }

    free(v4);
  }

  else
  {
    v9 = 0;
  }

  free(a1);
  return v9;
}

void *ParallelArchiveDBReadRequestOpenWithSet(uint64_t *a1, char *__s2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  if (!*a1)
  {
    goto LABEL_19;
  }

  v14 = 0;
  v15 = a1[1];
  v16 = -1;
  while (1)
  {
    v17 = *(v15 + 8 * v14);
    v18 = v14;
    if (v17)
    {
      v18 = *v17 ? v16 : v14;
      if (*v17 && __s2 != 0)
      {
        v20 = strcmp(v17, __s2);
        v18 = v16;
        if (!v20)
        {
          break;
        }
      }
    }

    ++v14;
    v16 = v18;
    if (v8 == v14)
    {
      goto LABEL_15;
    }
  }

  v18 = v14;
LABEL_15:
  if (v18 == -1)
  {
LABEL_19:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBReadRequestOpenWithSet", 261, 11, 0, "No database in set matches alias %s", __s2);
    return 0;
  }

  else
  {
    v21 = *(a1[2] + 8 * v18);

    return ParallelArchiveDBRequestOpenForReading(v21, a3, a4, a5, a6, a7);
  }
}

uint64_t ParallelArchiveDBCloneWithSet(uint64_t *a1, char *__s2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_19;
  }

  v13 = 0;
  v14 = a1[1];
  v15 = -1;
  while (1)
  {
    v16 = *(v14 + 8 * v13);
    v17 = v13;
    if (v16)
    {
      v17 = *v16 ? v15 : v13;
      if (*v16 && __s2 != 0)
      {
        v19 = strcmp(v16, __s2);
        v17 = v15;
        if (!v19)
        {
          break;
        }
      }
    }

    ++v13;
    v15 = v17;
    if (v7 == v13)
    {
      goto LABEL_15;
    }
  }

  v17 = v13;
LABEL_15:
  if (v17 == -1)
  {
LABEL_19:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ArchiveDatabase.c", "ParallelArchiveDBCloneWithSet", 281, 11, 0, "No database in set matches alias %s", __s2);
    return 0;
  }

  else
  {
    v20 = *(a1[2] + 8 * v17);
    v22 = *(v20 + 72);
    v21 = *(v20 + 80);

    return v22(v21, a3, a4, a5, a6);
  }
}

uint64_t ParallelArchiveSort(uint64_t a1)
{
  v93[1] = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  v2 = *a1;
  if (*a1 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "ParallelArchiveSort:\n  input archive: %s\n", *(a1 + 8));
  }

  v92 = 0;
  v93[0] = 0;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v87 = 0u;
  *__buf = 0u;
  memset(&v86, 0, sizeof(v86));
  *__base = 0u;
  *v84 = 0u;
  v82[1] = a1;
  v82[0] = 1;
  __buf[0] = malloc(0x100000uLL);
  if (!__buf[0])
  {
    v3 = *__error();
    v4 = "malloc";
    v5 = 116;
    goto LABEL_10;
  }

  if (stat(*(a1 + 8), &v86))
  {
    v3 = *__error();
    v4 = *(a1 + 8);
    v5 = 119;
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Sort.c", "ParallelArchiveSort", v5, 49, v3, v4, v77);
    LODWORD(v82[0]) = 0;
    goto LABEL_11;
  }

  st_size = v86.st_size;
  if (loadFileSegment(*(a1 + 8), v93, 6uLL, 0))
  {
    v4 = "Reading input file magic failed";
    v5 = 123;
    goto LABEL_9;
  }

  v9 = LODWORD(v93[0]) ^ 0x37303730 | WORD2(v93[0]) ^ 0x3130;
  if (v9)
  {
    v10 = LODWORD(v93[0]) == 925906736 && WORD2(v93[0]) == 14128;
    if (!v10)
    {
      v77 = v93;
      v4 = "Invalid input file: 'odc' or 'newc' raw cpio archive expected: %s";
      v5 = 125;
      goto LABEL_9;
    }

    v11 = 0;
  }

  else
  {
    v11 = "07070100000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000b00000000TRAILER!!!";
  }

  v12 = LODWORD(v93[0]) ^ 0x37303730 | WORD2(v93[0]) ^ 0x3730;
  v10 = v12 == 0;
  v13 = v12 != 0;
  if (v10)
  {
    v14 = "0707070000000000000000000000000000000000010000000000000000000001300000000000TRAILER!!!";
  }

  else
  {
    v14 = v11;
  }

  if (v9)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = IFileStreamCreateWithFilename(*(a1 + 8), 0, -1);
  if (!v16)
  {
    v4 = "Reading input file failed";
    v5 = 134;
    goto LABEL_9;
  }

  v17 = v16;
  *&v87 = 0x100000000;
  *&v88 = 0;
  v89 = 0u;
  v91 = 0u;
  *(&v87 + 1) = IFileStreamRead;
  *(&v88 + 1) = v16;
  *&v89 = indexBeginProc;
  *&v90 = indexPayloadAndPaddingProc;
  *(&v90 + 1) = indexPayloadAndPaddingProc;
  v92 = v82;
  if (ParallelArchiveRead(&v87))
  {
    v4 = "Indexing failed";
    v5 = 145;
    goto LABEL_9;
  }

  IFileStreamDestroy(v17);
  v18 = SLODWORD(__base[0]);
  v84[0] = malloc(4 * SLODWORD(__base[0]));
  if (!v84[0])
  {
    v3 = *__error();
    v4 = "malloc";
    v5 = 148;
    goto LABEL_10;
  }

  v19 = MEMORY[0x29EDCA610];
  v78 = v15;
  if (v2 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "  %llu B, %d entries\n", __buf[1], v18);
    v18 = SLODWORD(__base[0]);
  }

  qsort(__base[1], v18, 0x8A8uLL, cmpINode);
  v20 = LODWORD(__base[0]);
  if (SLODWORD(__base[0]) >= 1)
  {
    v21 = 0;
    v22 = __base[1];
    v23 = __base[1] - 2184;
    v24 = 3;
    do
    {
      v25 = &v22[554 * v21];
      v26 = *(v25 + 4);
      v27 = *(v25 + 548);
      *(v25 + 549) = v27;
      if (v21)
      {
        v28 = v21;
        while (*&v23[2216 * v28] == v26)
        {
          v29 = __OFSUB__(v28--, 1);
          if ((v28 < 0) ^ v29 | (v28 == 0))
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
LABEL_47:
        v28 = 0;
      }

      if (v21 != v28)
      {
        v30 = v22[554 * v28 + 549];
        if (v30 >= v27)
        {
          v31 = v28;
          if (v21 > v28)
          {
            v32 = 0;
            v33 = vdupq_n_s64(~v31 + v21);
            v34 = (v24 - v31) & 0xFFFFFFFFFFFFFFFCLL;
            v35 = &v22[554 * v31];
            do
            {
              v36 = vdupq_n_s64(v32);
              v37 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v36, xmmword_2980690E0)));
              if (vuzp1_s16(v37, 2).u8[0])
              {
                v35[549] = v27;
              }

              if (vuzp1_s16(v37, 2).i8[2])
              {
                v35[1103] = v27;
              }

              if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v36, xmmword_2980690D0)))).i32[1])
              {
                v35[1657] = v27;
                v35[2211] = v27;
              }

              v32 += 4;
              v35 += 2216;
            }

            while (v34 != v32);
          }
        }

        else
        {
          v22[554 * v21 + 549] = v30;
        }
      }

      ++v21;
      ++v24;
    }

    while (v21 != v20);
  }

  v38 = v20;
  if (v2 > 1)
  {
    qsort(__base[1], v20, 0x8A8uLL, cmpIndex);
    v38 = __base[0];
    if (SLODWORD(__base[0]) >= 1)
    {
      v79 = v14;
      v39 = v19;
      v40 = 0;
      v41 = 2208;
      do
      {
        v42 = *v39;
        if (v40 == *(__base[1] + v41 - 12))
        {
          fprintf(v42, "%d ino=%llu size=%llu -- %s\n");
        }

        else
        {
          fprintf(v42, "%d HLINK(%d) ino=%llu size=%llu -- %s = %s\n");
        }

        ++v40;
        v38 = __base[0];
        v41 += 2216;
      }

      while (v40 < SLODWORD(__base[0]));
      v19 = v39;
      v14 = v79;
    }
  }

  qsort(__base[1], v38, 0x8A8uLL, cmpSortPath);
  v43 = __base[0];
  if (v2 >= 1)
  {
    if (SLODWORD(__base[0]) < 1)
    {
      goto LABEL_78;
    }

    v44 = 0;
    v45 = (__base[1] + 2192);
    do
    {
      v46 = v44;
      v47 = *v45;
      ++v44;
      v45 += 554;
    }

    while (v46 == v47 && v44 < LODWORD(__base[0]));
    if (v46 == v47)
    {
LABEL_78:
      fwrite("Input archive is already sorted\n", 0x20uLL, 1uLL, *v19);
      v43 = __base[0];
    }
  }

  if (v43 >= 1)
  {
    v49 = 0;
    v50 = __base[1];
    v51 = v84[0];
    do
    {
      v50[4] = -1;
      v51[*(v50 + 548)] = v49++;
      v52 = SLODWORD(__base[0]);
      v50 += 277;
    }

    while (v49 < SLODWORD(__base[0]));
    if (SLODWORD(__base[0]) >= 1)
    {
      v53 = 0;
      v54 = __base[1];
      v55 = v84[0];
      v56 = __base[1];
      do
      {
        v57 = &v54[2216 * v55[*(v56 + 549)]];
        v60 = *(v57 + 4);
        v59 = v57 + 32;
        v58 = v60;
        if (v60 == -1)
        {
          *v59 = v53;
          v58 = v53++;
        }

        v56[4] = v58;
        v56 += 277;
        --v52;
      }

      while (v52);
    }
  }

  LODWORD(v84[1]) = open(*(a1 + 8), 0);
  if ((v84[1] & 0x80000000) != 0)
  {
    v3 = *__error();
    v4 = *(a1 + 8);
    v5 = 225;
    goto LABEL_10;
  }

  if (SLODWORD(__base[0]) < 1)
  {
    v62 = 0;
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v80 = v14;
    do
    {
      v81 = v61;
      v63 = __base[1] + 2216 * v61;
      v64 = *(v63 + 276);
      v65 = *(v63 + 275);
      if (v2 >= 2)
      {
        fprintf(*v19, "%d (old=%d) ino=%llu size=%llu -- %s\n", v61, *(v63 + 548), *(v63 + 4), *(v63 + 276), v63 + 144);
      }

      if (v64)
      {
        v66 = 0;
        do
        {
          if (v64 >= 0x100000)
          {
            v67 = 0x100000;
          }

          else
          {
            v67 = v64;
          }

          v68 = pread(v84[1], __buf[0], v67, v65);
          if (v68 < 0)
          {
            v3 = *__error();
            v4 = "read";
            v5 = 247;
            goto LABEL_10;
          }

          if (v68 != v67)
          {
            v4 = "truncated read";
            v5 = 248;
            goto LABEL_9;
          }

          if ((v66 & 1) == 0)
          {
            if (v64 <= 5)
            {
              v4 = "truncated header";
              v5 = 254;
              goto LABEL_9;
            }

            v69 = *(v63 + 4);
            if (*__buf[0] == 925906736 && *(__buf[0] + 2) == 14128)
            {
              if (v69 >= 0x40000)
              {
                v4 = "inode index is too large";
                v5 = 257;
                goto LABEL_9;
              }

              if (v64 <= 0x4B)
              {
                v4 = "truncated header";
                v5 = 258;
                goto LABEL_9;
              }

              toOctal6(__buf[0] + 12, v69);
            }

            else
            {
              if (*__buf[0] != 925906736 || *(__buf[0] + 2) != 12592)
              {
                v4 = "invalid header";
                v5 = 269;
                goto LABEL_9;
              }

              if (HIDWORD(v69))
              {
                v4 = "inode index is too large";
                v5 = 264;
                goto LABEL_9;
              }

              if (v64 <= 0x6D)
              {
                v4 = "truncated header";
                v5 = 265;
                goto LABEL_9;
              }

              toHex8(__buf[0] + 6, v69);
            }
          }

          v72 = (*(a1 + 16))(*(a1 + 24), __buf[0], v67);
          if (v72 < 0)
          {
            v4 = "write error";
            v5 = 275;
            goto LABEL_9;
          }

          if (v72 != v67)
          {
            v4 = "truncated write";
            v5 = 276;
            goto LABEL_9;
          }

          v65 += v67;
          v62 += v67;
          v66 = 1;
          v64 -= v67;
        }

        while (v64);
      }

      v14 = v80;
      v61 = v81 + 1;
      v19 = MEMORY[0x29EDCA610];
    }

    while (v81 + 1 < SLODWORD(__base[0]));
  }

  if (!v78)
  {
    v73 = strlen(v14);
    v74 = (*(a1 + 16))(*(a1 + 24), v14, v73);
    if (v74 < 0)
    {
      v4 = "write error";
      v5 = 290;
      goto LABEL_9;
    }

    if (v74 != v73)
    {
      v4 = "truncated write";
      v5 = 291;
      goto LABEL_9;
    }

    v62 += v73;
  }

  if (v62 < st_size)
  {
    bzero(__buf[0], 0x100000uLL);
    while (1)
    {
      if (st_size - v62 >= 0x100000)
      {
        v75 = 0x100000;
      }

      else
      {
        v75 = st_size - v62;
      }

      v76 = (*(a1 + 16))(*(a1 + 24), __buf[0], v75);
      if (v76 < 0)
      {
        v4 = "write error";
        v5 = 305;
        goto LABEL_9;
      }

      if (v76 != v75)
      {
        break;
      }

      v62 += v75;
      if (v62 >= st_size)
      {
        goto LABEL_11;
      }
    }

    v4 = "truncated write";
    v5 = 306;
LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

LABEL_11:
  if ((v84[1] & 0x80000000) == 0)
  {
    close(v84[1]);
  }

  free(__base[1]);
  free(v84[0]);
  free(__buf[0]);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (LODWORD(v82[0]))
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (result >= 0)
  {
    return v8;
  }

  else
  {
    return result;
  }
}

void *indexBeginProc(uint64_t a1, void *__src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  if (v9 < v10)
  {
    v11 = *(a1 + 24);
LABEL_5:
    *(a1 + 16) = v9 + 1;
    v12 = &v11[2216 * v9];
    result = memcpy(v12, __src, 0x890uLL);
    *(v12 + 548) = *(a1 + 16) - 1;
    v14 = *(a1 + 56);
    *(v12 + 275) = v14;
    *(v12 + 276) = a6;
    *(a1 + 56) = v14 + a6;
    return result;
  }

  *(a1 + 20) = v10 + 10000;
  v11 = reallocf(*(a1 + 24), 2216 * (v10 + 10000));
  *(a1 + 24) = v11;
  if (v11)
  {
    v9 = *(a1 + 16);
    goto LABEL_5;
  }

  v15 = __error();
  result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Sort.c", "indexBeginProc", 67, 49, *v15, "malloc");
  *a1 = 0;
  return result;
}

uint64_t indexPayloadAndPaddingProc(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24) + 2216 * *(result + 16);
  *(v3 - 8) += a3;
  *(result + 56) += a3;
  return result;
}

uint64_t cmpINode(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3 < v2;
  }
}

uint64_t cmpIndex(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2192);
  v3 = *(a2 + 2192);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3 < v2;
  }
}

_BYTE *toOctal6(_BYTE *result, unint64_t a2)
{
  *result = toOctal6_oct[(a2 >> 15) & 7];
  result[1] = toOctal6_oct[(a2 >> 12) & 7];
  result[2] = toOctal6_oct[(a2 >> 9) & 7];
  result[3] = toOctal6_oct[(a2 >> 6) & 7];
  result[4] = toOctal6_oct[(a2 >> 3) & 7];
  result[5] = toOctal6_oct[a2 & 7];
  return result;
}

_BYTE *toHex8(_BYTE *result, unint64_t a2)
{
  *result = toHex8_hex[a2 >> 28];
  result[1] = toHex8_hex[(a2 >> 24) & 0xF];
  result[2] = toHex8_hex[(a2 >> 20) & 0xF];
  result[3] = toHex8_hex[(a2 >> 16) & 0xF];
  result[4] = toHex8_hex[a2 >> 12];
  result[5] = toHex8_hex[(a2 >> 8) & 0xF];
  result[6] = toHex8_hex[a2 >> 4];
  result[7] = toHex8_hex[a2 & 0xF];
  return result;
}

char *ParallelArchiveOLDWriterCreate(uint64_t a1)
{
  enterThreadErrorContext();
  v2 = calloc(1uLL, 0x608uLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 258) = *(a1 + 8);
    v4 = strlen(*a1);
    *v3 = v4;
    if (v4 - 1024 >= 0xFFFFFFFFFFFFFBFFLL)
    {
      __strlcpy_chk();
      *(v3 + 168) = 0x40000;
      v5 = malloc(0x40000uLL);
      *(v3 + 171) = v5;
      if (v5)
      {
        if (pthread_mutex_init((v3 + 1464), 0))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterCreate", 138, 47, 0, "pthread_mutex_init");
        }

        else
        {
          *(v3 + 260) = 0;
          if (pthread_mutex_init((v3 + 1048), 0) || pthread_cond_init((v3 + 1112), 0))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterCreate", 141, 47, 0, "SemInit");
          }

          else
          {
            *(v3 + 290) = 0;
            if (pthread_mutex_init((v3 + 1168), 0) || pthread_cond_init((v3 + 1232), 0))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterCreate", 142, 47, 0, "SemInit");
            }

            else if (pthread_mutex_init(v3 + 20, 0))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterCreate", 143, 47, 0, "pthread_mutex_init");
            }

            else if (writerReleaseSem(v3))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterCreate", 144, 47, 0, "writerReleaseSem");
            }

            else
            {
              *(v3 + 346) = 0;
              *(v3 + 348) = *(a1 + 12);
              *(v3 + 176) = writerReceiveData;
              *(v3 + 178) = v3;
              *(v3 + 179) = *(a1 + 32);
              *(v3 + 181) = *(a1 + 48);
              DefaultNThreads = *(a1 + 16);
              if (!DefaultNThreads)
              {
                DefaultNThreads = getDefaultNThreads();
              }

              *(v3 + 347) = DefaultNThreads;
              *(v3 + 175) = *(a1 + 24);
              if (!createThread(v3 + 182, ParallelArchiveEncoderProc, (v3 + 1384), 0))
              {
                if ((leaveThreadErrorContext(0, 0, 0) & 0x80000000) == 0)
                {
                  return v3;
                }

                goto LABEL_12;
              }

              v10 = *__error();
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterCreate", 155, 47, v10, "compressor thread");
            }
          }
        }
      }

      else
      {
        v7 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterCreate", 135, 47, v7, "malloc");
      }
    }
  }

  else
  {
    v6 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterCreate", 122, 47, v6, "malloc");
  }

  leaveThreadErrorContext(0, 0, 0);
LABEL_12:
  free(*(v3 + 171));
  free(v3);
  return 0;
}

uint64_t writerReleaseSem(uint64_t a1)
{
  v2 = *(a1 + 1032);
  v3 = *(a1 + 1360) - *(a1 + 1352);
  if (v3)
  {
    if (v2 >= 3)
    {
      fprintf(*MEMORY[0x29EDCA610], "Release bufferReady, buffer size: %zu\n", v3);
    }

    v4 = (a1 + 1168);
    if (pthread_mutex_lock((a1 + 1168)))
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(a1 + 1160);
    *(a1 + 1160) = v7 + 1;
    if (v7)
    {
      goto LABEL_14;
    }

    v6 = (a1 + 1232);
    goto LABEL_12;
  }

  if (v2 >= 3)
  {
    fwrite("Release bufferEmpty\n", 0x14uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  v4 = (a1 + 1048);
  if (pthread_mutex_lock((a1 + 1048)))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 1040);
  *(a1 + 1040) = v5 + 1;
  if (!v5)
  {
    v6 = (a1 + 1112);
LABEL_12:
    if (pthread_cond_broadcast(v6))
    {
      return 0xFFFFFFFFLL;
    }
  }

LABEL_14:
  if (pthread_mutex_unlock(v4))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

size_t writerReceiveData(uint64_t a1, void *a2, size_t a3)
{
  v3 = *(a1 + 1032);
  if (*(a1 + 1376))
  {
    if (v3 >= 3)
    {
      fwrite("writerReceiveData: ZERO (end of stream)\n", 0x28uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    return 0;
  }

  else
  {
    v4 = a3;
    if (v3 >= 3)
    {
      fwrite("Acquire bufferReady\n", 0x14uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    if (pthread_mutex_lock((a1 + 1168)))
    {
      return -1;
    }

    while (1)
    {
      v8 = *(a1 + 1160);
      if (v8 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 1232), (a1 + 1168)))
      {
        return -1;
      }
    }

    *(a1 + 1160) = v8 - 1;
    if (pthread_mutex_unlock((a1 + 1168)))
    {
      return -1;
    }

    v9 = *(a1 + 1352);
    if (*(a1 + 1360) - v9 < v4)
    {
      v4 = *(a1 + 1360) - v9;
    }

    if (v4)
    {
      memcpy(a2, (*(a1 + 1368) + v9), v4);
      *(a1 + 1352) += v4;
    }

    else
    {
      if (*(a1 + 1032) >= 3)
      {
        fwrite("end of stream\n", 0xEuLL, 1uLL, *MEMORY[0x29EDCA610]);
      }

      *(a1 + 1376) = 1;
    }

    if (writerReleaseSem(a1))
    {
      return -1;
    }

    else if (*(a1 + 1032) >= 3)
    {
      fprintf(*MEMORY[0x29EDCA610], "writerReceiveData: %zu\n", v4);
    }
  }

  return v4;
}

uint64_t ParallelArchiveOLDWriterAddEntry(uint64_t a1, const char *a2)
{
  v41 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  memset(&v37, 0, sizeof(v37));
  bzero(v40, 0x400uLL);
  bzero(__s, 0x400uLL);
  if (!a1 || !a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterAddEntry", 179, 47, 0, "invalid args");
    goto LABEL_10;
  }

  v4 = strlen(a2);
  if (*a2 == 47 || (v5 = v4, v4 >= 0x400))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterAddEntry", 185, 47, 0, "invalid path: %s");
    goto LABEL_10;
  }

  if (concatPath(v40, 0x400uLL, (a1 + 8), a2))
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if (lstat(v40, &v37))
  {
    v6 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterAddEntry", 191, 47, v6, "%s");
    goto LABEL_10;
  }

  v7 = 0;
  if (HIWORD(v37.st_uid) || HIWORD(v37.st_gid))
  {
    goto LABEL_11;
  }

  v10 = v37.st_mode & 0xF000;
  switch(v10)
  {
    case 16384:
      v13 = 0;
      st_size = 0;
      v14 = -1;
      v15 = 2;
      break;
    case 32768:
      st_size = v37.st_size;
      if (v37.st_nlink >= 2u)
      {
        if (pthread_mutex_lock((a1 + 1464)))
        {
          goto LABEL_10;
        }

        v16 = *(a1 + 1532);
        if (v16 < 1)
        {
          LODWORD(v17) = 0;
        }

        else
        {
          v17 = 0;
          v18 = *(a1 + 1536);
          while (*v18 != v37.st_ino)
          {
            v18 += 129;
            if (v16 == ++v17)
            {
              goto LABEL_36;
            }
          }
        }

        if (v17 != v16)
        {
          __strlcpy_chk();
          st_size = strlen(__s);
          pthread_mutex_unlock((a1 + 1464));
          v13 = 0;
          v14 = -1;
          v15 = 4;
          break;
        }

LABEL_36:
        if (v16 == *(a1 + 1528))
        {
          v20 = 2 * v16;
          if (!v16)
          {
            v20 = 16;
          }

          *(a1 + 1528) = v20;
          v21 = reallocf(*(a1 + 1536), 1032 * v20);
          *(a1 + 1536) = v21;
          if (!v21)
          {
            *(a1 + 1528) = 0;
            pthread_mutex_unlock((a1 + 1464));
            v22 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterAddEntry", 226, 47, v22, "malloc");
            goto LABEL_10;
          }
        }

        else
        {
          v21 = *(a1 + 1536);
        }

        v23 = 129 * v16;
        bzero(&v21[8 * v23], 0x408uLL);
        v24 = (*(a1 + 1536) + 8 * v23);
        *v24 = v37.st_ino;
        memcpy(v24 + 1, a2, v5);
        ++*(a1 + 1532);
        pthread_mutex_unlock((a1 + 1464));
      }

      v25 = open(v40, 0);
      if (v25 < 0)
      {
        v32 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterAddEntry", 261, 47, v32, "%s");
        goto LABEL_10;
      }

      v14 = v25;
      v13 = 1;
      v15 = 1;
      break;
    case 40960:
      v11 = readlink(v40, __s, 0x3FFuLL);
      if (v11 < 1)
      {
        v19 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterAddEntry", 252, 47, v19, "%s");
        goto LABEL_10;
      }

      st_size = v11;
      v13 = 0;
      __s[v11] = 0;
      v14 = -1;
      v15 = 3;
      break;
    default:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterAddEntry", 199, 47, 0, "unsupported entry type %d");
      goto LABEL_10;
  }

  *v38 = 0;
  *&v38[8] = 0;
  *&v38[22] = 0;
  *&v38[16] = 0;
  setHeaderFromValues_v10(v38, v15, st_size, v37.st_mtimespec.tv_sec, v37.st_flags, v5, LOWORD(v37.st_uid), LOWORD(v37.st_gid), v37.st_mode);
  if (pthread_mutex_lock((a1 + 1280)))
  {
    v26 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/MSUArchive.c", "ParallelArchiveOLDWriterAddEntry", 295, 47, *v26, "pthread_mutex_lock");
    v7 = 0;
  }

  else
  {
    if (!writerAcquireEmpty(a1))
    {
      *(a1 + 1352) = 0u;
      v28 = *(a1 + 1368);
      v29 = *v38;
      *(v28 + 14) = *&v38[14];
      *v28 = v29;
      v30 = *(a1 + 1360) + 30;
      *(a1 + 1360) = v30;
      memcpy((*(a1 + 1368) + v30), a2, v5);
      v31 = *(a1 + 1360) + v5;
      *(a1 + 1360) = v31;
      if ((v15 - 3) > 1)
      {
        if (v13)
        {
          if (*(a1 + 1344) - v31 >= st_size)
          {
            v33 = st_size;
          }

          else
          {
            v33 = *(a1 + 1344) - v31;
          }

          v34 = read(v14, (*(a1 + 1368) + v31), v33);
          if (v34 < 0)
          {
            goto LABEL_65;
          }

          *(a1 + 1360) += v34;
          st_size -= v34;
        }

        v27 = 1;
      }

      else
      {
        memcpy((*(a1 + 1368) + v31), __s, st_size);
        *(a1 + 1360) += st_size;
        v27 = 1;
        st_size = 0;
      }

      while (!writerReleaseSem(a1))
      {
        if (!st_size)
        {
          goto LABEL_50;
        }

        if (writerAcquireEmpty(a1))
        {
          break;
        }

        *(a1 + 1352) = 0;
        *(a1 + 1360) = 0;
        if (*(a1 + 1344) >= st_size)
        {
          v35 = st_size;
        }

        else
        {
          v35 = *(a1 + 1344);
        }

        v36 = read(v14, *(a1 + 1368), v35);
        if (v36 < 0)
        {
LABEL_65:
          v27 = 0;
        }

        else
        {
          *(a1 + 1360) += v36;
          st_size -= v36;
        }
      }
    }

    v27 = 0;
LABEL_50:
    if (pthread_mutex_unlock((a1 + 1280)))
    {
      v7 = 0;
    }

    else
    {
      v7 = v27;
    }
  }

  if ((v14 & 0x80000000) == 0)
  {
    close(v14);
  }

LABEL_11:
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (result >= 0)
  {
    return v9;
  }

  else
  {
    return result;
  }
}

uint64_t writerAcquireEmpty(uint64_t a1)
{
  if (*(a1 + 1032) >= 3)
  {
    fwrite("Acquire bufferEmpty\n", 0x14uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  if (pthread_mutex_lock((a1 + 1048)))
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v3 = *(a1 + 1040);
    if (v3 > 0)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 1112), (a1 + 1048)))
    {
      return 0xFFFFFFFFLL;
    }
  }

  *(a1 + 1040) = v3 - 1;
  if (pthread_mutex_unlock((a1 + 1048)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t ParallelArchiveOLDWriterDestroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    enterThreadErrorContext();
    if (pthread_mutex_lock((v1 + 1048)))
    {
LABEL_3:
      v2 = 1;
    }

    else
    {
      while (1)
      {
        v3 = *(v1 + 1040);
        if (v3 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v1 + 1112), (v1 + 1048)))
        {
          goto LABEL_3;
        }
      }

      *(v1 + 1040) = v3 - 1;
      v2 = pthread_mutex_unlock((v1 + 1048)) != 0;
    }

    if (pthread_mutex_lock((v1 + 1168)) || (v4 = *(v1 + 1160), *(v1 + 1160) = v4 + 1, !v4) && pthread_cond_broadcast((v1 + 1232)))
    {
      v2 = 1;
    }

    else if (pthread_mutex_unlock((v1 + 1168)))
    {
      v2 = 1;
    }

    if (pthread_mutex_lock((v1 + 1048)))
    {
LABEL_13:
      v2 = 1;
    }

    else
    {
      while (1)
      {
        v5 = *(v1 + 1040);
        if (v5 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v1 + 1112), (v1 + 1048)))
        {
          goto LABEL_13;
        }
      }

      *(v1 + 1040) = v5 - 1;
      if (pthread_mutex_unlock((v1 + 1048)))
      {
        v2 = 1;
      }
    }

    joinThread(*(v1 + 1456));
    if (pthread_mutex_destroy((v1 + 1048)))
    {
      v2 = 1;
    }

    else if (pthread_cond_destroy((v1 + 1112)))
    {
      v2 = 1;
    }

    if (pthread_mutex_destroy((v1 + 1168)))
    {
      v6 = -1;
    }

    else
    {
      v6 = (pthread_cond_destroy((v1 + 1232)) != 0 || v2) << 31 >> 31;
    }

    pthread_mutex_destroy((v1 + 1464));
    pthread_mutex_destroy((v1 + 1280));
    free(*(v1 + 1536));
    free(*(v1 + 1368));
    free(v1);
    LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
    if (result >= 0)
    {
      return v6;
    }

    else
    {
      return result;
    }
  }

  return result;
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
    v91 = 0;
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
    SimStreamClose(v17, v84, v85, v86, v87, v88, v89, v90);
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

  v113 = v20;
  v26 = aaForkInputStreamOpen(v24, a4, 0);
  if (!v26)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 249, 141, 0, "aaForkOutputStreamOpen");
    goto LABEL_124;
  }

  v103 = 0;
  v102 = vnegq_f64(0);
  v101 = 1;
  v112 = v25;
  v111 = a6;
  v118 = a2;
  v119 = a1;
LABEL_19:
  bzero(*(v113 + 8), 5 * *(v113 + 16));
  v27 = *(v113 + 16);
  *(v113 + 24) = 0;
  *(v113 + 20) = v27;
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
        v108 = v34;
        v114 = v30;
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

        a1 = v119;
        v28 = *v118;
        a6 = v111;
        v30 = v114;
        v34 = v108;
      }

      v29 += v32 + v34;
      ++v30;
    }

    while (v30 < v28);
  }

  v37 = 1;
  v38 = v28;
  v39 = v118;
  v105 = v22;
LABEL_36:
  if (!v38)
  {
    goto LABEL_63;
  }

  v40 = 0;
  v41 = 0;
  v42 = 0;
  v99 = v37;
  while (1)
  {
    v43 = (*v119 + 24 * v42);
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

    v115 = v42;
    if (v37 == 2)
    {
      v41 += v45;
      if (v41 >= *(a4 + 2056))
      {
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    v106 = v46;
    v109 = v47;
    if (v45)
    {
      break;
    }

LABEL_56:
    v40 += v109;
    v37 = v99;
    if (v99 != 1)
    {
      v22 = v105;
      v46 = v106;
LABEL_60:
      v51 = aaByteStreamSimulate(v26);
      v39 = v118;
      v42 = v115;
      if (v46 != v51)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 310, 141, 0, "aaByteStreamSimulate");
        goto LABEL_145;
      }

      goto LABEL_61;
    }

    v39 = v118;
    v42 = v115;
    v22 = v105;
    v46 = v106;
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
      a6 = v111;
LABEL_63:
      if (++v37 != 3)
      {
        goto LABEL_36;
      }

      v52 = *(v113 + 28);
      if (a6 >= 3)
      {
        fprintf(*MEMORY[0x29EDCA610], "ForceInPlace %d: excess_pages=%d/%d, converted bytes=%llu, %zu controls\n", v101, v52, *(v113 + 32), v103, v28);
        v52 = *(v113 + 28);
      }

      v53 = *(v113 + 32);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      if ((v55 < 0) ^ v54 | (v55 == 0))
      {
        v93 = merge_controls(*v119, v118, a4);
        *v119 = v93;
        if (v93)
        {
          if (v111 >= 2)
          {
            fprintf(*MEMORY[0x29EDCA610], "ForceInPlace: %zu controls. Dropped %llu bytes to stay within budget.\n", *v118, v103);
          }

          v91 = 1;
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 447, 141, 0, "merge_controls");
LABEL_145:
          v91 = 0;
        }

        v25 = v112;
        goto LABEL_125;
      }

      v56 = v55 + 1;
      v57 = (v56 >> 1) << 14;
      if (v56 < 2)
      {
        v58 = 1;
        a2 = v118;
        a1 = v119;
        v59 = v103;
        goto LABEL_118;
      }

      v97 = 0;
      v94 = -1;
      v60 = 1;
      a2 = v118;
      a1 = v119;
      v59 = v103;
      v61 = v102;
      while (2)
      {
        v62 = *(a4 + 2080);
        v63 = *a2;
        if (*a2)
        {
          v64 = 0;
          v95 = v60 - 1;
          v96 = v60;
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
                v74 = v94;
                v75 = v97;
                if (v94 > v69.i64[0])
                {
                  v75 = v66 - 24;
                }

                v97 = v75;
                if (v94 >= v69.i64[0])
                {
                  v74 = v69.i64[0];
                }

                v94 = v74;
                goto LABEL_97;
              }

              goto LABEL_92;
            }

LABEL_97:
            v65 -= 24;
            --v63;
            a1 = v119;
            if (!v63)
            {
              v58 = v64 == 0;
              a2 = v118;
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
            if (v111 >= 4)
            {
              v76 = v57;
              v104 = v59;
              v116 = v62;
              v107 = v72;
              v110 = v66;
              v100 = v71;
              v98 = v69;
              fprintf(*MEMORY[0x29EDCA610], "Dropping %llu bytes at %llu, needed=%llu bytes, type %s\n", v72, v62, v57, (&rawimg_force_in_place_pass_name)[v95]);
              v69 = v98;
              v71 = v100;
              v72 = v107;
              v66 = v110;
              v62 = v116;
              v60 = v96;
              v59 = v104;
              v57 = v76;
              v61 = v102;
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

        if (v60 != 3 || !v79 || !v97)
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
      if (*v97 >= 0)
      {
        v82 = *v97;
      }

      else
      {
        v82 = 0x8000000000000000 - *v97;
      }

      v117 = *(v97 + 8);
      if (v111 >= 4)
      {
        fprintf(*MEMORY[0x29EDCA610], "Dropping copy fork with %llu bytes, needed=%llu bytesx\n", v82, v57);
      }

      v57 = 0;
      v58 = 0;
      *v97 = 0;
      v83 = vaddq_s64(vbslq_s8(vcltzq_s64(v117), vsubq_s64(v102, v117), v117), vdupq_n_s64(v82));
      *(v97 + 8) = vbslq_s8(vcltzq_s64(v83), vsubq_s64(v102, v83), v83);
      v59 = v82 + v81;
      a2 = v118;
      a1 = v119;
LABEL_118:
      v103 = v59;
      ++v101;
      v25 = v112;
      a6 = v111;
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
  v91 = 0;
  v25 = v112;
  v22 = v105;
LABEL_125:
  if (AAByteStreamClose(v23) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 458, 141, 0, "AAByteStreamClose");
    v91 = 0;
  }

  if (AAByteStreamClose(v22) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 459, 141, 0, "AAByteStreamClose");
    v91 = 0;
  }

  if (AAByteStreamClose(v26) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 460, 141, 0, "AAByteStreamClose");
    v91 = 0;
  }

  if (AAByteStreamClose(v25) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 461, 141, 0, "AAByteStreamClose");
    v91 = 0;
  }

  if (AAByteStreamClose(v15) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 462, 141, 0, "AAByteStreamClose");
    v91 = 0;
  }

  if (AAByteStreamClose(v13) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 463, 141, 0, "AAByteStreamClose");
    v91 = 0;
  }

  if (v91)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

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

uint64_t SimStreamClose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  if (v9 < 1)
  {
    goto LABEL_7;
  }

  v10 = 0;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  do
  {
    v13 = *v11;
    v11 = (v11 + 5);
    v10 += v13;
    --v12;
  }

  while (v12);
  if (v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamClose", 148, 141, 0, "%i dangling reads", v10);
    v9 = *(a1 + 16);
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  v15 = *(a1 + 24);
  if (*(a1 + 28) + v9 != *(a1 + 20) + v15)
  {
    pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamClose", 152, 141, "file + excess != written + free", a6, a7, a8);
    v9 = *(a1 + 16);
    v15 = *(a1 + 24);
  }

  if (v9 < v15)
  {
    pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamClose", 154, 141, "file < written", a6, a7, a8);
  }

  if (*(a1 + 36) >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "SimStream: pages: %i file, %i written, %i free, %i excess (%iK)\n", *(a1 + 16), *(a1 + 24), *(a1 + 20), *(a1 + 28), 16 * *(a1 + 28));
  }

  free(*(a1 + 8));
  free(a1);
  return v14;
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

void rawimg_destroy(uint64_t *a1)
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

      v12 = "";
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

uint64_t *rawimg_create_with_path(const char *a1)
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

        *v25 = dword_298069820[v26];
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

uint64_t rawimg_get_digests(uint64_t a1, unsigned int a2, int a3, int a4)
{
  memset(&c, 0, sizeof(c));
  v8 = AAFileStreamOpenWithPath(*(a1 + 2048), 0, 0);
  v9 = v8;
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 591, 138, 0, "AAFileStreamOpenWithPath");
LABEL_79:
    v54 = 0;
    v58 = 0;
    v56 = 0;
    v61 = 0;
    v51 = 0;
    v10 = 0;
    goto LABEL_101;
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
    goto LABEL_100;
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
        goto LABEL_96;
      }

      v15 = *(v12 + 56);
      if (*(v12 + 128) == 4)
      {
        v16 = *(v12 + 40);
        v17 = *(v12 + 96);
        *(v12 + 104) |= 4uLL;
        if ((rawimg_allocate_header_and_footer(v12) & 0x80000000) == 0)
        {
          v95 = v11;
          v97 = a2;
          v103 = a3;
          if (v10[4])
          {
            v18 = 0;
            __size = 8 * v15;
            v93 = 8 * v15 + 264;
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
                    v33 = 0;
                    *__error() = 12;
                    goto LABEL_92;
                  }

                  v29 = malloc(__size);
                  v33 = v29;
                  if (!v29)
                  {
                    goto LABEL_92;
                  }

                  if (!v10[4])
                  {
                    goto LABEL_126;
                  }

                  if (__size)
                  {
                    v34 = 0;
                    v35 = v29;
                    while (1)
                    {
                      v36 = (v10[4])(*v10, v35, v28, v19);
                      if (v36 < 0)
                      {
                        break;
                      }

                      if (v36)
                      {
                        v35 += v36;
                        v34 += v36;
                        v19 += v36;
                        v28 -= v36;
                        if (v28)
                        {
                          continue;
                        }
                      }

                      goto LABEL_43;
                    }

                    v34 = v36;
LABEL_43:
                    if (__size != v34)
                    {
LABEL_126:
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 354, 138, 0, "fork chunks");
                      goto LABEL_92;
                    }
                  }

                  v38 = *(v12 + 56);
                  v39 = *(v12 + 80);
                  if (!v38)
                  {
                    v40 = 50;
                    v37 = v93;
                    v11 = v95;
                    v44 = v93;
                    a3 = v103;
                    a2 = v97;
                    goto LABEL_54;
                  }

                  v45 = v33 + 1;
                  v46 = v39 + 1;
                  v47 = *(v12 + 56);
                  a2 = v97;
                  v37 = v93;
                  v11 = v95;
                  do
                  {
                    *(v46 - 1) = (*(v45 - 1) + 260);
                    v48 = *v45;
                    v45 += 2;
                    *v46 = v48;
                    v46 += 3;
                    --v47;
                  }

                  while (v47);
                  v40 = 50;
                  a3 = v103;
                  goto LABEL_48;
                }
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 349, 138, 0, "fork footer");
              goto LABEL_91;
            }
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 346, 138, 0, "fork header");
LABEL_91:
          v33 = 0;
LABEL_92:
          a3 = v103;
          goto LABEL_98;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 343, 138, 0, "Can't allocate header/footer");
LABEL_97:
        v33 = 0;
        goto LABEL_98;
      }

      v37 = 4 * v15 + 4;
      if (v37 >= 0x2000000001)
      {
        v33 = 0;
        *__error() = 12;
        goto LABEL_98;
      }

      v33 = malloc(v37);
      if (!v33)
      {
        goto LABEL_98;
      }

      if (v37 != AAByteStreamPRead(v10, v33, v37, *(v12 + 40)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 372, 138, 0, "fork chunks");
        goto LABEL_98;
      }

      v38 = *(v12 + 56);
      v39 = *(v12 + 80);
      v40 = 0;
      if (v38)
      {
        v41 = v39 + 1;
        do
        {
          v42 = &v33[v40];
          v43 = *v42;
          LODWORD(v42) = v42[1];
          *(v41 - 1) = v43;
          ++v40;
          *v41 = v42 - v43;
          v41 += 3;
        }

        while (v38 != v40);
        v40 = 0;
LABEL_48:
        v49 = (v39 + 1);
        v44 = v37;
        while (1)
        {
          v50 = *(v49 - 1);
          if (v50 < v44)
          {
            break;
          }

          v44 = v50 + *v49;
          if (v44 > *(v12 + 96))
          {
            break;
          }

          v49 += 3;
          if (!--v38)
          {
            goto LABEL_54;
          }
        }

        if (!a3)
        {
          v68 = "bad chunk";
          v69 = 393;
LABEL_83:
          pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", v69, 138, v68, v30, v31, v32);
          goto LABEL_98;
        }

        goto LABEL_98;
      }

      v44 = v37;
LABEL_54:
      if (*v39 != v37 || v44 + v40 != *(v12 + 96))
      {
        if (!a3)
        {
          v68 = "bad index";
          v69 = 402;
          goto LABEL_83;
        }

LABEL_98:
        free(v33);
        rawimg_free_chunks(a1);
        if (!a3)
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 608, 138, "bad chunk info");
        }

LABEL_100:
        v54 = 0;
        v58 = 0;
        v56 = 0;
        v61 = 0;
        v51 = 0;
LABEL_101:
        v73 = 0;
        goto LABEL_102;
      }

      free(v33);
      if (++v11 >= *(a1 + 2160))
      {
        goto LABEL_57;
      }
    }

    *__error() = 12;
    *(v12 + 80) = 0;
LABEL_96:
    v72 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_load_chunks_from_stream", 325, 138, v72, "aaCalloc");
    goto LABEL_97;
  }

LABEL_57:
  *(a1 + 2128) |= 8uLL;
  v51 = aaForkInputStreamOpen(v10, a1, 1);
  if (!v51)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 614, 138, 0, "aaForkInputStreamOpen");
LABEL_88:
    v54 = 0;
    v58 = 0;
    v56 = 0;
LABEL_89:
    v61 = 0;
    goto LABEL_101;
  }

  v52 = *(a1 + 2160) + ((*(a1 + 2080) + 0x7FFFFFLL) >> 23);
  if (!is_mul_ok(v52, 0x38uLL) || 56 * v52 > 0x2000000000)
  {
    *__error() = 12;
    goto LABEL_87;
  }

  v53 = calloc(*(a1 + 2160) + ((*(a1 + 2080) + 0x7FFFFFLL) >> 23), 0x38uLL);
  if (!v53)
  {
LABEL_87:
    v70 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 622, 138, v70, "aaCalloc");
    goto LABEL_88;
  }

  v54 = v53;
  if ((a2 & 0x80000000) != 0)
  {
    *__error() = 12;
    v56 = 0;
    v58 = 0;
    *__error() = 12;
LABEL_94:
    v71 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 627, 138, *v71, "aaCalloc");
    goto LABEL_89;
  }

  v55 = a2;
  v56 = calloc(a2, 0x10uLL);
  v57 = calloc(a2, 8uLL);
  v58 = v57;
  if (!v56 || !v57)
  {
    goto LABEL_94;
  }

  if (a2)
  {
    v59 = v56;
    v60 = v57;
    do
    {
      *v60++ = v59;
      *v59 = v51;
      v59 += 2;
      --v55;
    }

    while (v55);
  }

  v61 = ThreadPoolCreate(a2, v57, rawimg_digest_worker);
  if (!v61)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 634, 138, 0, "ThreadPoolCreate");
    goto LABEL_101;
  }

  v94 = v52;
  v62 = *(a1 + 2056);
  if (v62 < *(a1 + 2072))
  {
    v104 = 0;
    v63 = -v62;
    v64 = v54;
    while (1)
    {
      __sizea = v62;
      v65 = v63;
      Worker = ThreadPoolGetWorker(v61);
      if (!Worker)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 643, 138, 0, "ThreadPoolGetWorker");
        goto LABEL_101;
      }

      *(Worker + 8) = v64;
      v64[6] = -1;
      v98 = v65;
      v67 = v65 + *(a1 + 2072);
      if (v67 >= 0x800000)
      {
        v67 = 0x800000;
      }

      v64[4] = __sizea;
      v64[5] = v67;
      if ((ThreadPoolRunWorker(v61) & 0x80000000) != 0)
      {
        break;
      }

      ++v104;
      v62 = __sizea + 0x800000;
      v64 += 7;
      v63 = v98 - 0x800000;
      if (__sizea + 0x800000 >= *(a1 + 2072))
      {
        goto LABEL_114;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 648, 138, 0, "ThreadPoolRunWorker");
    goto LABEL_101;
  }

  v104 = 0;
LABEL_114:
  v75 = *(a1 + 2160);
  if (v75)
  {
    v76 = 0;
    v77 = v94;
    v78 = v104;
    v92 = v9;
    while (1)
    {
      v79 = *(a1 + 2144) + 129 * v76;
      if (*(v79 + 88))
      {
        break;
      }

LABEL_124:
      if (++v76 >= v75)
      {
        goto LABEL_129;
      }
    }

    v96 = *(a1 + 2144) + 129 * v76;
    v99 = v76;
    v80 = 0;
    v81 = v78;
    v82 = 0;
    v105 = v81;
    v83 = &v54[7 * v81];
    while (1)
    {
      __sizeb = v82;
      v84 = v79;
      v85 = ThreadPoolGetWorker(v61);
      if (!v85)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 662, 138, 0, "ThreadPoolGetWorker");
        goto LABEL_133;
      }

      *(v85 + 8) = v83;
      v83[6] = v99;
      v86 = v80 + *(v84 + 88);
      if (v86 >= 0x800000)
      {
        v86 = 0x800000;
      }

      v83[4] = __sizeb + *(v84 + 48);
      v83[5] = v86;
      if ((ThreadPoolRunWorker(v61) & 0x80000000) != 0)
      {
        break;
      }

      ++v105;
      v79 = v96;
      v82 = __sizeb + 0x800000;
      v80 -= 0x800000;
      v83 += 7;
      if (__sizeb + 0x800000 >= *(v96 + 88))
      {
        v75 = *(a1 + 2160);
        v9 = v92;
        v77 = v94;
        v78 = v105;
        v76 = v99;
        goto LABEL_124;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 667, 138, 0, "ThreadPoolRunWorker");
LABEL_133:
    v73 = 0;
    v9 = v92;
  }

  else
  {
    v77 = v94;
    v78 = v104;
LABEL_129:
    if (v78 > v77)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 670, 138, 0, "too many tasks");
      goto LABEL_101;
    }

    if ((ThreadPoolSync(v61) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 676, 138, 0, "ThreadPoolSync");
      goto LABEL_101;
    }

    qsort(v54, v78, 0x38uLL, compare_digest_tasks);
    CC_SHA256_Init(&c);
    if (v78)
    {
      v87 = v54;
      do
      {
        CC_SHA256_Update(&c, v87, 0x20u);
        v87 += 56;
        --v78;
      }

      while (v78);
    }

    CC_SHA256_Final((a1 + 2088), &c);
    if (*(a1 + 2160))
    {
      v88 = 0;
      v89 = 0;
      do
      {
        v106 = v89;
        CC_SHA256_Init(&c);
        v90 = &v54[7 * v88];
        v91 = v90[6];
        while (v91 == v106)
        {
          CC_SHA256_Update(&c, v90, 0x20u);
          ++v88;
          v91 = v90[13];
          v90 += 7;
        }

        CC_SHA256_Final((*(a1 + 2144) + 129 * v106), &c);
        v89 = v106 + 1;
      }

      while ((v106 + 1) < *(a1 + 2160));
    }

    *(a1 + 2128) |= 0x10uLL;
    v73 = 1;
  }

LABEL_102:
  if ((ThreadPoolDestroy(v61) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/RawImage.c", "rawimg_get_digests", 704, 138, 0, "ThreadPoolDestroy");
    v73 = 0;
  }

  free(v56);
  free(v58);
  free(v54);
  AAByteStreamClose(v51);
  AAByteStreamClose(v10);
  AAByteStreamClose(v9);
  if (v73)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}