uint64_t sub_67EFC(uint64_t a1, char *__buf, unint64_t a3)
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
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 955, 29, 0, "ParallelCompressionAFSCStreamWrite failed with status %d");
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
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 960, 29, v36, "write");
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
                    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 994, 29, "malloc holes failed");
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

uint64_t sub_68204(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

void *sub_68214(uint64_t a1, uint64_t a2)
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OMemStreamCreate", 1050, 29, *v6, "malloc");
  }

  return v5;
}

size_t sub_6828C(uint64_t a1, const void *a2, size_t a3)
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

void *sub_682F8(uint64_t a1, uint64_t a2)
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMemStreamCreate", 1112, 29, *v6, "malloc");
  }

  return v5;
}

size_t sub_68370(uint64_t a1, void *__dst, size_t a3)
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

uint64_t sub_683E4(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

void ***sub_683F4(void **a1, void **a2, void **a3, const char *a4)
{
  v8 = malloc(0x28uLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 24) = 0u;
    *(v8 + 8) = 0u;
    v10 = sub_75AC4(a4);
    *v9 = v10;
    if (v10)
    {
      v9[1] = a1;
      v9[2] = a2;
      v9[3] = a3;
    }

    else
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamCreate", 1182, 29, 0, "creating internal buffer");
      sub_684D0(v9);
      return 0;
    }
  }

  else
  {
    v11 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamCreate", 1176, 29, *v11, "malloc");
  }

  return v9;
}

void sub_684D0(void *a1)
{
  if (a1)
  {
    sub_76184(*a1, 0xFFFFFFFFFFFFFFFFLL, a1[1], a1[3]);
    sub_75BD4(*a1);

    free(a1);
  }
}

uint64_t sub_68528(void *a1, char *a2, unint64_t a3)
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
      v8 = sub_75C74(*a1);
      if (!v8)
      {
        if (sub_76184(*a1, 0xFFFFFFFFFFFFFFFFLL, a1[1], a1[3]) < 0)
        {
          return -1;
        }

        v8 = sub_75C74(*a1);
      }

      v9 = v6 >= v8 ? v8 : v6;
      if ((sub_75DFC(*a1, v9, a2) & 0x8000000000000000) != 0)
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

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamWrite", 1221, 29, 0, "MemBufferFillFromBuffer failed");
  }

  return -1;
}

uint64_t sub_68608(uint64_t result)
{
  if (result)
  {
    *(result + 32) = 1;
  }

  return result;
}

_OWORD *sub_68618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc(a4 + 64);
  v9 = v8;
  if (v8)
  {
    *v8 = 0u;
    v8[1] = 0u;
    v8[2] = 0u;
    v8[3] = 0u;
    *v8 = a1;
    *(v8 + 1) = a2;
    *(v8 + 2) = a3;
    *(v8 + 4) = a4;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0;
    *(v8 + 7) = 0;
  }

  else
  {
    v10 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IHistoryStreamCreate", 1270, 29, *v10, "malloc");
  }

  return v9;
}

uint64_t sub_686B4(uint64_t a1, char *__dst, uint64_t a3, size_t a4)
{
  if (!a1)
  {
    return -1;
  }

  if (*(a1 + 24))
  {
    return -1;
  }

  v6 = a4;
  v8 = a4 + a3;
  v9 = __dst;
  if (a4 + a3 <= a4)
  {
    return v9 - __dst;
  }

  v10 = a1 + 64;
  v9 = __dst;
  while (1)
  {
    v11 = *(a1 + 56);
    if (v6 < v11)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IHistoryStreamPRead", 1301, 29, 0, "history stream access out of range, requested %llu, available %llu");
      return -1;
    }

    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = v13 + v11;
    if (v6 >= v13 + v11)
    {
      break;
    }

    if (v14 >= v8)
    {
      v14 = v8;
    }

    v15 = v6 - v11 + v12;
    v16 = *(a1 + 32);
    if (v15 >= v16)
    {
      v17 = *(a1 + 32);
    }

    else
    {
      v17 = 0;
    }

    v18 = v15 - v17;
    v19 = v14 + v12 - (v11 + v17);
    if (v19 <= v16)
    {
      v22 = v19 - v18;
      memcpy(v9, (v10 + v18), v19 - v18);
      v9 += v22;
    }

    else
    {
      v20 = v16 - v18;
      memcpy(v9, (v10 + v18), v16 - v18);
      v21 = &v9[v20];
      v22 = v20 + v6;
      v6 = v19 - *(a1 + 32);
      memcpy(v21, (a1 + 64), v6);
      v9 = &v21[v6];
    }

    v6 += v22;
LABEL_32:
    if (v6 >= v8)
    {
      return v9 - __dst;
    }
  }

  v23 = v12 + v13;
  v24 = *(a1 + 32);
  if (v23 >= v24)
  {
    v25 = *(a1 + 32);
  }

  else
  {
    v25 = 0;
  }

  v26 = v23 - v25;
  v27 = v24 - (v23 - v25);
  if (v8 - v14 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v8 - v14;
  }

  v29 = (*a1)(*(a1 + 16), v10 + v26, v28);
  if ((v29 & 0x8000000000000000) == 0)
  {
    if (!v29)
    {
      return v9 - __dst;
    }

    v30 = *(a1 + 48) + v29;
    *(a1 + 48) = v30;
    v31 = *(a1 + 32);
    v32 = v30 > v31;
    v33 = v30 - v31;
    if (v32)
    {
      if (v26 + v29 >= v31)
      {
        v34 = *(a1 + 32);
      }

      else
      {
        v34 = 0;
      }

      v35 = *(a1 + 56);
      *(a1 + 48) = v31;
      *(a1 + 56) = v33 + v35;
      *(a1 + 40) = v26 + v29 - v34;
    }

    goto LABEL_32;
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IHistoryStreamPRead", 1347, 29, 0, "read failed");
  return -1;
}

uint64_t sub_688AC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      result = v2(*(result + 16));
    }

    *(v1 + 24) = 1;
  }

  return result;
}

_DWORD *ParallelCompressionAFSCStreamOpen(int a1, unint64_t a2, unsigned int a3, int a4)
{
  v8 = calloc(1uLL, 0x78uLL);
  if (!v8)
  {
    v11 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamOpen", 163, 86, *v11, "malloc");
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamOpen", v10, 86, v12, v9, v29);
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
    v13 = dword_10B29C[v14];
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
  *(v8 + 3) = xmmword_10B250;
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
    while (v7 + 65537 <= *(a1 + 48) || (sub_68E60(a1) & 0x80000000) == 0)
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

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamWrite", 270, 86, 0, "update resource fork");
  }

  else
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamWrite", 262, 86, 0, "too many bytes received");
  }

  return -1;
}

uint64_t sub_68E60(uint64_t a1)
{
  v2 = fsetxattr(*a1, "com.apple.ResourceFork", *(a1 + 64), *(a1 + 56), *(a1 + 108), 0);
  if (v2 < 0)
  {
    v3 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "flushToResourceFork", 142, 86, *v3, "fsetxattr resource fork");
  }

  v4 = *(a1 + 108) + *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 108) = v4;
  *(a1 + 112) = 1;
  return (v2 >> 31);
}

uint64_t ParallelCompressionAFSCStreamClose(uint64_t a1)
{
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
      if ((sub_68E60(a1) & 0x80000000) != 0)
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
      *v13 = xmmword_10B268;
      *(v13 + 16) = unk_10B278;
      *(v13 + 32) = xmmword_10B288;
      *(v13 + 48) = 0;
      *(a1 + 56) = 50;
      if ((sub_68E60(a1) & 0x80000000) != 0)
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
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamClose", v3, 86, v4, v2, v34);
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadataFD", 488, 86, *v8, "fstat");
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
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadataFD", 501, 86, v14, "malloc");
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

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadataFD", v13, 86, 0, v12, v19);
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadata", 550, 86, *v11, "open %s", a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    if ((ParallelCompressionAFSCGetMetadataFD(v8, a2, a3, a4) & 0x80000000) != 0)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadata", 553, 86, 0, "retrieving AFSC metadata: %s", a1);
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 581, 86, 0, "Path too long: %s");
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 582, 86, 0, "Path too long: %s");
    goto LABEL_5;
  }

  v7 = malloc(0x100000uLL);
  if (!v7)
  {
    v12 = *__error();
    v10 = "malloc";
    v11 = 586;
LABEL_137:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", v11, 86, v12, v10, v115, v116, v117, v118, v119);
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
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 660, 86, v100, "open: %s");
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
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 664, 86, *v104, "mkstemp");
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
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 675, 86, v93, "read: %s");
                  goto LABEL_152;
                }

                if (v34 < v33)
                {
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 676, 86, 0, "truncated read: %s");
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
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 678, 86, 0, "write to stream failed: %s");
                  goto LABEL_152;
                }
              }

              if ((ParallelCompressionAFSCStreamClose(v26) & 0x80000000) != 0)
              {
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 683, 86, 0, "Stream close error");
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

            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 667, 86, 0, "creating compression stream %s", a1);
            v6 = 0;
          }

          v50 = 0;
          v52 = 0;
          goto LABEL_140;
        }

        v102 = *__error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 661, 86, v102, "stat: %s");
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
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 629, 86, v96, "open %s");
      goto LABEL_149;
    }

    if (write(v37, 0, 0) < 0)
    {
      v98 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 630, 86, v98, "write", v115);
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

    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 711, 86, "Can't shrink resource fork: %s (current %u, target %u)", a1, v141, a3);
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

    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 859, 86, "First pass fixup failed: %s, compression_type=%d (expected %d), resource_fork_size=%u (expected %u)", a1, v40, v8, v38, a3);
    v41 = open(a1, 9);
    v23 = v41;
    if (v41 < 0)
    {
      v97 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 864, 86, v97, "open %s");
      goto LABEL_149;
    }

    if (write(v41, 0, 0) < 0)
    {
      v99 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 865, 86, v99, "write", v115);
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

  v133 = dword_10B2C8[v17];
  v43 = open(a1, 0);
  v23 = v43;
  if (v43 < 0)
  {
    v101 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 727, 86, v101, "open: %s");
    goto LABEL_149;
  }

  if (fstat(v43, &v139))
  {
    v103 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 728, 86, v103, "fstat", v115);
    goto LABEL_149;
  }

  if (fgetxattr(v23, "com.apple.decmpfs", value, 0x10uLL, 0, 32) != 16)
  {
    v105 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 729, 86, v105, "Reading decmpfs", v115);
    goto LABEL_149;
  }

  if (fchflags(v23, v139.st_flags & 0xFFFFFFDF) < 0)
  {
    v106 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 730, 86, v106, "fchflags UF_COMPRESSED", v115);
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
      __memset_chk(v7, 0, v47 + v45, ": %s %s file with no ota-uuid\n", v115, v116);
    }

    v49 = fsetxattr(v23, "com.apple.ResourceFork", v7, v48, v46, 0);
    v44 += 0x100000;
    v45 -= 0x100000;
    v46 += 0x100000;
    if (v49)
    {
      v92 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 738, 86, v92, "Expanding resource fork", v115);
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 744, 86, v107, "malloc");
    goto LABEL_186;
  }

  if (v131 != 4)
  {
    v61 = 4 * v121 + 4;
    if (fgetxattr(v23, "com.apple.ResourceFork", v50, size, 0, 32) != size)
    {
      v109 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 763, 86, v109, "Reading chunk sizes");
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
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 777, 86, *v94, "Reading chunk");
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
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 791, 86, *v95, "Writing chunk");
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
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 817, 86, v112, "Writing resource fork header");
        goto LABEL_186;
      }

      if (fsetxattr(v23, "com.apple.ResourceFork", &xmmword_10B268, 0x32uLL, position, 0))
      {
        v114 = *__error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 820, 86, v114, "Writing resource map");
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
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 827, 86, v113, "Writing chunk sizes");
        goto LABEL_186;
      }
    }

    if (fsetxattr(v23, "com.apple.decmpfs", value, 0x10uLL, 0, 0))
    {
      v110 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 831, 86, v110, "Writing decmpfs");
      goto LABEL_186;
    }

    if (fchflags(v23, v139.st_flags | 0x20) < 0)
    {
      v111 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 832, 86, v111, "fchflags UF_COMPRESSED");
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
        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 876, 86, "Second pass fixup succeeded: %s", a1);
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
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 749, 86, v108, "Reading chunk sizes");
LABEL_186:
  v6 = 0;
  v26 = 0;
LABEL_139:
  v25 = -1;
LABEL_140:
  if ((ParallelCompressionAFSCStreamClose(v26) & 0x80000000) != 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 877, 86, 0, "Stream close error");
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 907, 86, 0, "looking up AFSC data: %s");
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
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 950, 86, v32, "read: %s");
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
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", v26, 86, 0, v25, v33);
LABEL_42:
          v31 = 0;
LABEL_43:
          if ((ParallelCompressionAFSCStreamClose(v15) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 956, 86, 0, "AFSC compression failed: %s");
        }

        else
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 942, 86, 0, "creating AFSC stream: %s");
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
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 940, 86, v30, "open: %s");
    }

    else
    {
      v29 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 938, 86, v29, "malloc");
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 921, 86, v28, "open: %s");
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = write(v5, 0, 0);
  if (v7 < 0)
  {
    v8 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 922, 86, *v8, "write: %s", a1);
  }

  if (close(v6) < 0)
  {
    v9 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 923, 86, *v9, "close: %s", a1);
  }

  return v7 >> 63;
}

uint64_t sub_6B014(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  return 1;
}

uint64_t sub_6B024(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *a1;
  if (a3)
  {
    v4 = a3;
    v5 = a3;
    do
    {
      v6 = *a2++;
      v3 = dword_10B2F4[v6 ^ HIBYTE(v3)] ^ (v3 << 8);
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

uint64_t sub_6B074(unsigned int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v2 = dword_10B2F4[v3 ^ HIBYTE(v2)] ^ (v2 << 8);
      v4 = v3 > 0xFF;
      v3 >>= 8;
    }

    while (v4);
  }

  *a1 = ~v2;
  return 1;
}

unsigned int *sub_6B0B8(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6)
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
            sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
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
                  sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
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

                        if ((sub_60BD4((v27 - 352), sub_6B570, v27 - 352, a6) & 0x80000000) != 0)
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
                      if ((sub_60BD4(v29, sub_6B830, v29, 0) & 0x80000000) == 0)
                      {
                        return v13;
                      }

                      v19 = "Thread creation";
                      v20 = 206;
                    }

                    goto LABEL_14;
                  }

                  sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
                }
              }

              else
              {
                sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
              }

              v19 = "SharedArrayInit";
              v20 = 182;
LABEL_14:
              v18 = 0;
              goto LABEL_15;
            }

            sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
          }
        }

        else
        {
          sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
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
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineCreate", v20, 87, v18, v19);
  sub_6BAB4(v13);
  return 0;
}

uint64_t sub_6B570(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (1)
  {
    v3 = *(a1 + 8);
    if (pthread_mutex_lock((v2 + 56)))
    {
      sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
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
      sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
      goto LABEL_35;
    }

    if (v4 >= v5)
    {
      sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n");
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
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 72, 87, 0, "SemAcquire");
      goto LABEL_28;
    }

    if ((*(a1 + 400) & 0x8000000000000000) != 0)
    {
      return a1;
    }

    if (((*(a1 + 32))(*(a1 + 24)) & 0x80000000) != 0)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 82, 87, 0, "worker proc reported an error");
      atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
    }

    if (pthread_mutex_lock((a1 + 168)) || (v8 = *(a1 + 160), *(a1 + 160) = v8 + 1, !v8) && pthread_cond_broadcast((a1 + 232)) || pthread_mutex_unlock((a1 + 168)))
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 85, 87, 0, "SemRelease");
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 88, 87, 0, "SemAcquire");
    goto LABEL_28;
  }

  sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
LABEL_35:
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 69, 87, 0, "SharedArrayPush");
LABEL_28:
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t sub_6B830(uint64_t a1)
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
        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
        goto LABEL_3;
      }
    }

    v4 = v3 - 1;
    *(v2 + 168) = v4;
    v5 = *(*(v2 + 176) + 4 * v4);
    if (pthread_mutex_unlock((v2 + 184)))
    {
      sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
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
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 134, 87, 0, "SemAcquire");
        goto LABEL_29;
      }

      if (((*(a1 + 24))(*(a1 + 16), *(v6 + 24)) & 0x80000000) != 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 141, 87, 0, "consumer proc reported an error");
        atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
      }

      if (pthread_mutex_lock((v6 + 288)) || (v9 = *(v6 + 280), *(v6 + 280) = v9 + 1, !v9) && pthread_cond_broadcast((v6 + 352)) || pthread_mutex_unlock((v6 + 288)))
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 144, 87, 0, "SemRelease");
        goto LABEL_29;
      }
    }
  }

  sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_3:
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 114, 87, 0, "SharedArrayDequeue");
LABEL_29:
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t sub_6BAB4(uint64_t result)
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
            sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
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
                sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
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

            sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
          }

          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 237, 87, 0, "SharedArrayPop");
          v6 = 0;
LABEL_17:
          v9 = *(v1 + 1) + 408 * v8;
          *(v9 + 400) = -1;
          if (pthread_mutex_lock((v9 + 48)) || (v10 = *(v9 + 40), *(v9 + 40) = v10 + 1, !v10) && pthread_cond_broadcast((v9 + 112)) || pthread_mutex_unlock((v9 + 48)))
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 245, 87, 0, "SemRelease");
            v6 = 0;
          }

          if ((sub_60F34(*v9) & 0x80000000) != 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 246, 87, 0, "joinThread");
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
        if ((sub_66530(v1 + 42, -1) & 0x80000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 272, 87, 0, "SharedArrayEnqueue");
          v6 = 0;
        }

        if ((sub_60F34(*v17) & 0x80000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 273, 87, 0, "joinThread");
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
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 285, 87, 0, "Threads reported errors");
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

uint64_t sub_6BEA0(uint64_t a1)
{
  if (*(a1 + 24) != -1)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineGetWorker", 294, 87, 0, "Missing call to RunWorker before GetWorker");
    return 0;
  }

  if (pthread_mutex_lock((a1 + 56)))
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_10:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineGetWorker", 298, 87, 0, "SharedArrayPop failed");
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
      sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
      goto LABEL_10;
    }
  }

  v3 = v2 - 1;
  *(a1 + 40) = v3;
  v4 = *(*(a1 + 48) + 4 * v3);
  if (pthread_mutex_unlock((a1 + 56)))
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
    goto LABEL_10;
  }

  *(a1 + 24) = v4;
  return *(*(a1 + 8) + 408 * v4 + 24);
}

uint64_t sub_6BFD4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", 311, 87, 0, "Missing call to GetWorker before RunWorker");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = -1;
  v2 = *(a1 + 8) + 408 * v1;
  v3 = *(a1 + 32);
  *(a1 + 32) = v3 + 1;
  *(v2 + 400) = v3;
  if ((sub_66530((a1 + 168), v1) & 0x80000000) != 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", 324, 87, 0, "SharedArrayEnqueue failed");
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((v2 + 48)) || (v4 = *(v2 + 40), *(v2 + 40) = v4 + 1, !v4) && pthread_cond_broadcast((v2 + 112)) || (result = pthread_mutex_unlock((v2 + 48)), result))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", 325, 87, 0, "SemRelease failed");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_6C0D0(uint64_t a1)
{
  if ((sub_66530((a1 + 168), -2) & 0x80000000) != 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineFlush", 333, 87, 0, "SharedArrayEnqueue failed");
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineFlush", 336, 87, 0, "SemAquire failed");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_6C18C(uint64_t *a1)
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 244, 37, 0, "NOP received");
    return 0;
  }

  if (v5 < 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 246, 37, 0, "Invalid iBlock received");
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
        fprintf(__stderrp, "Worker: encode block %5lld: %7llu => %7llu\n");
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
        fprintf(__stderrp, "Worker: decode block %5lld: %7llu => %7llu\n");
      }

      return 0;
    }

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 292, 37, 0, "invalid output size/decoder error: block=%lld, inSize=%lld, outSize=%lld, expectedOutSize=%lld", a1[6], a1[3]);
  }

  v10 = 0;
  a1[6] = -1;
  atomic_compare_exchange_strong((v2 + 112), &v10, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t sub_6C39C(uint64_t a1, uint64_t a2)
{
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
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 327, 37, 0, "invalid block ID in write thread %lld");
    goto LABEL_19;
  }

  if (*(a1 + 4) != 1)
  {
    v9 = vrev64q_s8(*(a2 + 56));
    v13 = vextq_s8(v9, v9, 8uLL);
    v10 = sub_6C600(*(a1 + 56), *(a1 + 72), &v13, 16);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v7 = v10;
      if (v10 == 16)
      {
        v11 = sub_6C600(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
        if (v11 < 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 351, 37, 0, "writing block payload");
          v7 = 16;
        }

        else
        {
          v7 = v11 + 16;
          if (v11 == *(a2 + 56))
          {
            goto LABEL_5;
          }

          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 353, 37, 0, "Truncated block payload (%lld/%llu bytes read)");
        }
      }

      else
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 347, 37, 0, "Truncated block header (%lld/16 bytes written)");
      }

      goto LABEL_21;
    }

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 345, 37, 0, "writing block header");
LABEL_19:
    v7 = 0;
    goto LABEL_21;
  }

  v8 = sub_6C600(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
  if (v8 < 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 334, 37, 0, "writing block");
    goto LABEL_19;
  }

  v7 = v8;
  if (v8 == *(a2 + 56))
  {
    goto LABEL_5;
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 336, 37, 0, "Truncated block payload (%lld/%llu bytes written)");
LABEL_21:
  v12 = 0;
  *(a1 + 88) += v7;
  atomic_compare_exchange_strong((a1 + 112), &v12, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t sub_6C600(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a4;
    v8 = 0;
    while (1)
    {
      v9 = a1(a2, a3, v6);
      v10 = v9;
      if (v9 < 0)
      {
        break;
      }

      a3 += v9;
      v8 += v9;
      v6 -= v9;
      if (!v6)
      {
        return v8;
      }
    }

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 131, 37, 0, "pcWrite failed");
    return v10;
  }

  else
  {
    v8 = a1(a2, 0, 0);
    if (v8 < 0)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 121, 37, 0, "pcWrite EOF failed");
    }
  }

  return v8;
}

uint64_t PCompressFilter(unsigned int *a1, void *a2, void *a3)
{
  ParallelCompressionEnterThreadErrorContext_0();
  v81 = 0;
  v79 = 0u;
  *v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v74 = 0u;
  v6 = a1[2];
  if (!v6)
  {
    v6 = sub_62BA4();
  }

  a1[2] = v6;
  if (a1[1] == 1)
  {
    if (sub_6D138(*a2, a2[2], &v82, 4) == 4)
    {
      if (a3)
      {
        *a3 += 4;
      }

      v7 = 0;
      while (1)
      {
        v8 = sub_758D4(v7);
        if (v8 != 63)
        {
          LODWORD(v83[0]) = 544891504;
          BYTE3(v83[0]) = v8;
          if (v82 == LODWORD(v83[0]))
          {
            break;
          }
        }

        if (++v7 == 7)
        {
          if (compression_stream_identify_algorithm(&v82) == -1)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processFileHeader", 179, 37, 0, "invalid header in input stream");
          }

          else
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processFileHeader", 178, 37, 0, "compressed stream detected : try compression_tool");
          }

          goto LABEL_89;
        }
      }

      v83[0] = 0;
      if (sub_6D138(*a2, a2[2], v83, 8) == 8)
      {
        if (a3)
        {
          *a3 += 8;
        }

        if (v83[0])
        {
          *(a1 + 2) = bswap64(v83[0]);
          *a1 = v7;
          if (a1[6] >= 1)
          {
            v13 = __stderrp;
            v14 = sub_7590C(v7);
            fprintf(v13, "Decoder: %s\n", v14);
            fprintf(__stderrp, "Blocksize: %llu\n");
          }

          goto LABEL_28;
        }

        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processFileHeader", 191, 37, 0, "invalid blockSize in input stream");
      }
    }

LABEL_89:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", 507, 37, 0, "processFileHeader");
    goto LABEL_90;
  }

  v9 = *(a1 + 2);
  v10 = sub_75900(*a1);
  v11 = sub_758D4(v10);
  if (v11 == 63)
  {
    goto LABEL_89;
  }

  v82 = 544891504;
  HIBYTE(v82) = v11;
  if (sub_6C600(a2[3], a2[5], &v82, 4) != 4)
  {
    goto LABEL_89;
  }

  if (a3)
  {
    a3[1] += 4;
  }

  v83[0] = bswap64(v9);
  if (sub_6C600(a2[3], a2[5], v83, 8) != 8)
  {
    goto LABEL_89;
  }

  if (a3)
  {
    a3[1] += 8;
  }

  if (a1[6] >= 1)
  {
    v12 = __stderrp;
    sub_758B4(*a1);
    fprintf(v12, "Encoder: %s\n");
  }

LABEL_28:
  v15 = *(a1 + 1);
  v74 = *a1;
  v75 = v15;
  v79 = 0u;
  *v80 = 0u;
  v81 = 0;
  v16 = *(a2 + 1);
  v76 = *a2;
  v77 = v16;
  v78 = *(a2 + 2);
  if (a3)
  {
    v79 = *a3;
  }

  v17 = *a1;
  if (a1[1])
  {
    v18 = sub_75A04(v17);
  }

  else
  {
    v18 = sub_759E4(v17);
  }

  v80[0] = v18;
  v19 = calloc(a1[2], 0x48uLL);
  v80[1] = v19;
  if (!v19)
  {
    v25 = 468;
LABEL_86:
    v58 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "initFilterState", v25, 37, *v58, "malloc");
LABEL_87:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", 510, 37, 0, "initFilterState");
LABEL_101:
    v64 = 0;
    v65 = 1;
    goto LABEL_102;
  }

  v20 = a1[2];
  if (v20 < 1)
  {
    goto LABEL_43;
  }

  v21 = v19;
  v22 = *(a1 + 2);
  v23 = malloc(v22);
  v21[1] = v23;
  v24 = malloc(v22);
  v21[5] = v24;
  *v21 = &v74;
  v25 = 477;
  if (!v23 || !v24)
  {
    goto LABEL_86;
  }

  v26 = 0;
  v27 = v21 + 9;
  do
  {
    if (v20 - 1 == v26)
    {
      goto LABEL_43;
    }

    v28 = malloc(v22);
    v27[1] = v28;
    v29 = malloc(v22);
    v27[5] = v29;
    *v27 = &v74;
    ++v26;
    if (!v28)
    {
      break;
    }

    v27 += 9;
  }

  while (v29);
  v30 = __error();
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "initFilterState", 477, 37, *v30, "malloc");
  if (v26 < v20)
  {
    goto LABEL_87;
  }

LABEL_43:
  v31 = v75;
  v32 = SDWORD2(v74);
  v33 = malloc(8 * SDWORD2(v74));
  if (!v33)
  {
    v63 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 372, 37, v63, "malloc");
    goto LABEL_100;
  }

  v34 = v33;
  if (v32 >= 1)
  {
    v35 = v80[1];
    v36 = (v32 + 1) & 0xFFFFFFFE;
    v37 = vdupq_n_s64(v32 - 1);
    v38 = xmmword_10A0F0;
    v39 = v33 + 8;
    v40 = vdupq_n_s64(2uLL);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v37, v38));
      if (v41.i8[0])
      {
        *(v39 - 1) = v35;
      }

      if (v41.i8[4])
      {
        *v39 = v35 + 72;
      }

      v38 = vaddq_s64(v38, v40);
      v39 += 2;
      v35 += 144;
      v36 -= 2;
    }

    while (v36);
  }

  v73 = v31;
  v42 = sub_6B0B8(v32, v33, sub_6C18C, &v74, sub_6C39C, 0);
  if (!v42)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 375, 37, 0, "creating pipeline");
    goto LABEL_100;
  }

  v43 = v42;
  v72 = v34;
  v44 = 0;
  v45 = 1;
  while (1)
  {
    if (atomic_load(&v81))
    {
      v45 = 0;
LABEL_115:
      v70 = v45 == 0;
      goto LABEL_117;
    }

    if (!v45)
    {
      break;
    }

    v47 = sub_6BEA0(v43);
    if (!v47)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 387, 37, 0, "getting worker from pipeline");
      v55 = 0;
LABEL_82:
      v45 = 0;
      goto LABEL_83;
    }

    v48 = v47;
    if (DWORD1(v74) == 1)
    {
      v49 = sub_6D138(v76, v77, v83, 16);
      if (v49)
      {
        v50 = v49;
        if (v49 < 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 397, 37, 0, "reading block header");
          v50 = 0;
        }

        else if (v49 == 16)
        {
          v51 = v31;
          v52 = bswap64(v83[0]);
          v53 = bswap64(v83[1]);
          if (v53 > v51 || v52 > v51)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 405, 37, 0, "Invalid block header payload=0x%llx raw=0x%llx block=0x%llx\n", v53, v52, v51);
            v50 = 16;
            v31 = v51;
          }

          else
          {
            v54 = sub_6D138(v76, v77, v48[1], v53);
            if (v54 < 0)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 411, 37, 0, "reading block payload");
              v50 = 16;
            }

            else
            {
              v50 = v54 + 16;
              if (v54 == v53)
              {
                v55 = 0;
                v48[3] = v53;
                v48[4] = v52;
                v48[2] = v44;
                *&v79 = v79 + v50;
                v45 = 1;
                v31 = v73;
                goto LABEL_80;
              }

              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 415, 37, 0, "Truncated block payload (%lld/%llu bytes read)", v54, v53);
            }

            v31 = v73;
          }
        }

        else
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 399, 37, 0, "Truncated block header (%lld/16 bytes read)", v49);
        }

        v45 = 0;
        *&v79 = v79 + v50;
        v57 = -1;
      }

      else
      {
        v57 = -2;
        v45 = 1;
      }
    }

    else
    {
      v56 = sub_6D138(v76, v77, *(v47 + 8), v31);
      if (v56 < 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 428, 37, 0, "reading block");
        v45 = 0;
        v57 = -1;
      }

      else
      {
        if (v56)
        {
          v55 = 0;
          v48[3] = v56;
          v48[4] = 0;
          v48[2] = v44;
          *&v79 = v79 + v56;
          v45 = 1;
          goto LABEL_80;
        }

        v57 = -2;
        v45 = 1;
      }
    }

    v48[2] = v57;
    v55 = v45;
LABEL_80:
    if ((sub_6BFD4(v43) & 0x80000000) != 0)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 445, 37, 0, "RunWorker");
      goto LABEL_82;
    }

LABEL_83:
    ++v44;
    if (v55)
    {
      goto LABEL_115;
    }
  }

  atomic_load(&v81);
  v70 = 1;
LABEL_117:
  if ((sub_6BAB4(v43) & 0x80000000) != 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 447, 37, 0, "ThreadPipelineDestroy");
    free(v72);
    goto LABEL_100;
  }

  free(v72);
  if (v70)
  {
LABEL_100:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", 513, 37, 0, "processStream");
    goto LABEL_101;
  }

  v71 = (a2[3])(a2[5], 0, 0);
  if (v71 < 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 121, 37, 0, "pcWrite EOF failed");
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", 520, 37, 0, "writing EOF");
    goto LABEL_101;
  }

  v65 = 0;
  *(&v79 + 1) += v71;
  v64 = 1;
LABEL_102:
  v66 = v80[1];
  if (v80[1])
  {
    if (SDWORD2(v74) >= 1)
    {
      v67 = 0;
      v68 = 0;
      do
      {
        free(*(v80[1] + v67 + 8));
        free(*(v80[1] + v67 + 40));
        ++v68;
        v67 += 72;
      }

      while (v68 < SDWORD2(v74));
      v66 = v80[1];
    }

    free(v66);
    v80[1] = 0;
  }

  v69 = v64 ^ 1;
  if (!a3)
  {
    v69 = 1;
  }

  if ((v69 & 1) == 0)
  {
    v61 = 0;
    *a3 = v79;
    goto LABEL_95;
  }

  if (!v65)
  {
    v61 = 0;
    goto LABEL_95;
  }

LABEL_90:
  v59 = a2[4];
  if (v59)
  {
    v59(a2[5]);
  }

  v60 = a2[1];
  if (v60)
  {
    v60(a2[2]);
  }

  v61 = -1;
LABEL_95:
  LODWORD(result) = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
  if (result >= 0)
  {
    return v61;
  }

  else
  {
    return result;
  }
}

uint64_t sub_6D138(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  v8 = 0;
  while (1)
  {
    v9 = a1(a2, a3, v4);
    v10 = v9;
    if (v9 < 0)
    {
      break;
    }

    if (v9)
    {
      a3 += v9;
      v8 += v9;
      v4 -= v9;
      if (v4)
      {
        continue;
      }
    }

    return v8;
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcRead", 82, 37, 0, "pcRead failed");
  return v10;
}

uint64_t sub_6D1E4(uint64_t a1, unint64_t a2, char *__source, char *__dst, size_t __size)
{
  if (HIDWORD(a2))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "clusterLookup", 213, 2, 0, "cluster id out of range");
    return 0xFFFFFFFFLL;
  }

  v11 = *a1;
  if (*a1 <= a2)
  {
    do
    {
      if (v11)
      {
        v11 += v11 >> 1;
      }

      else
      {
        v11 = 32;
      }
    }

    while (v11 <= a2);
    v13 = reallocf(*(a1 + 8), 1028 * v11);
    *(a1 + 8) = v13;
    if (!v13)
    {
      v15 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "clusterLookup", 221, 2, v15, "malloc");
      return 0xFFFFFFFFLL;
    }

    v12 = v13;
    bzero(&v13[1028 * *a1], 1028 * (v11 - *a1));
    *a1 = v11;
  }

  else
  {
    v12 = *(a1 + 8);
  }

  v14 = &v12[1028 * a2];
  if (*v14)
  {
    strlcpy(__dst, v14 + 4, __size);
    return 1;
  }

  else
  {
    strlcpy(v14 + 4, __source, 0x400uLL);
    result = 0;
    *(*(a1 + 8) + 1028 * a2) = 1;
  }

  return result;
}

uint64_t sub_6D348(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  bzero(path, 0x800uLL);
  if (*v4 >= 3)
  {
    fprintf(__stderrp, "[%7d] set attributes: %s\n", *(a2 + 2296), (a2 + 144));
  }

  if ((sub_63058(path, 0x800uLL, (a1 + 12), (a2 + 144)) & 0x80000000) != 0)
  {
    v19 = (a2 + 144);
    v7 = "invalid path: %s";
    v8 = 257;
LABEL_21:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "setEntryAttributes", v8, 2, 0, v7, v19);
    goto LABEL_22;
  }

  if (*(a2 + 4) == 68 && (sub_64998(path) & 0x80000000) != 0)
  {
    v19 = path;
    v7 = "clear XAT: %s";
    v8 = 262;
    goto LABEL_21;
  }

  if ((v5 & 0x40000) == 0 && sub_5EFE4(path, a2, a2 + 2192, v5 & 1))
  {
    v6 = 266;
LABEL_19:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "setEntryAttributes", v6, 2, 0, "setEntryAttributes", v19);
LABEL_22:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  v9 = *(a2 + 2280);
  if (v9)
  {
    v10 = sub_75C6C(v9);
    v11 = sub_75C80(*(a2 + 2280));
    if (sub_5F658(path, a2, v5 & 1, v10, v11))
    {
      v7 = "setEntryXAT";
      v8 = 272;
      goto LABEL_21;
    }
  }

  v12 = *(a2 + 2288);
  if (v12)
  {
    v13 = sub_75C6C(v12) / 0x120uLL;
    v14 = sub_75C80(*(a2 + 2288));
    if (sub_5F828(path, a2, v5 & 1, v13, v14))
    {
      v7 = "setEntryACL";
      v8 = 278;
      goto LABEL_21;
    }
  }

  if ((v5 & 0x40000) != 0 && sub_5EFE4(path, a2, a2 + 2192, v5 & 1))
  {
    v6 = 282;
    goto LABEL_19;
  }

  v15 = 0;
LABEL_23:
  v16 = *a1;
  v17 = *(*a1 + 96);
  if (v17)
  {
    v17(*(v16 + 18), a2);
    v16 = *a1;
  }

  atomic_fetch_add_explicit((a1 + 1528), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  if (*v16 >= 3)
  {
    fprintf(__stderrp, "[%7d] end: %s\n", *(a2 + 2296), (a2 + 144));
  }

  return v15;
}

unint64_t sub_6D610(void *a1, int a2)
{
  v2 = a1[174];
  if (!v2)
  {
    return -1;
  }

  v3 = a1[175];
  v4 = (a2 - *(a1[177] + 2320 * v3 + 2296));
  if (v4 < 0 || v2 <= v4)
  {
    return -1;
  }

  v5 = v3 + v4;
  v6 = a1[173];
  if (v5 < v6)
  {
    v6 = 0;
  }

  return v5 - v6;
}

uint64_t sub_6D65C(void *a1, int a2)
{
  v2 = a1[174];
  if (!v2)
  {
    return 0;
  }

  v3 = a1[177];
  v4 = a1[175];
  v5 = (a2 - *(v3 + 2320 * v4 + 2296));
  if (v5 < 0 || v2 <= v5)
  {
    return 0;
  }

  v6 = v4 + v5;
  v7 = a1[173];
  if (v6 < v7)
  {
    v7 = 0;
  }

  v8 = v6 - v7;
  v9 = v3 + 2320 * v8;
  if (v8 >= 0)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6D6B8(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    v6 = sub_75C74(*(a1 + 16));
    if (v6)
    {
      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = v6;
      }

      sub_75DFC(*(a1 + 16), v7, a2);
      a2 += v7;
      v3 -= v7;
      goto LABEL_18;
    }

    if (pthread_mutex_lock((a1 + 32)) || (v8 = *(a1 + 24), *(a1 + 24) = v8 + 1, !v8) && pthread_cond_broadcast((a1 + 96)) || pthread_mutex_unlock((a1 + 32)))
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "writeToThread", 764, 2, 0, "SemRelease");
      return 0xFFFFFFFFLL;
    }

    if (pthread_mutex_lock((a1 + 152)))
    {
      goto LABEL_20;
    }

    while (1)
    {
      v9 = *(a1 + 144);
      if (v9 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 216), (a1 + 152)))
      {
        goto LABEL_20;
      }
    }

    *(a1 + 144) = v9 - 1;
    if (pthread_mutex_unlock((a1 + 152)))
    {
LABEL_20:
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "writeToThread", 767, 2, 0, "SemAcquire");
      return 0xFFFFFFFFLL;
    }

    if (!sub_75C74(*(a1 + 16)))
    {
      break;
    }

LABEL_18:
    if (!v3)
    {
      return 0;
    }
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "writeToThread", 770, 2, 0, "thread didn't consume data");
  return 0xFFFFFFFFLL;
}

uint64_t sub_6D820(uint64_t a1)
{
  result = pthread_mutex_lock((a1 + 8));
  if (!result)
  {
    v3 = (*a1)++;
    if (v3 || (result = pthread_cond_broadcast((a1 + 72)), !result))
    {

      return pthread_mutex_unlock((a1 + 8));
    }
  }

  return result;
}

uint64_t sub_6D88C(uint64_t a1)
{
  if (pthread_mutex_lock((a1 + 8)))
  {
    return 0xFFFFFFFFLL;
  }

  while (*a1 <= 0)
  {
    if (pthread_cond_wait((a1 + 72), (a1 + 8)))
    {
      return 0xFFFFFFFFLL;
    }
  }

  --*a1;
  if (pthread_mutex_unlock((a1 + 8)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t ParallelArchiveExtract()
{
  v0 = off_1AD4E8();
  if (!v0)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = v0;
  ParallelCompressionEnterThreadErrorContext_0();
  bzero(&v77, 0x628uLL);
  v76 = v1;
  v2 = *(v1 + 20);
  if (!v2)
  {
    v2 = sub_62BA4();
  }

  LODWORD(__count) = v2;
  v90 = -1;
  v3 = *(v1 + 40);
  v77 = (*(v1 + 24) >> 1) & 1;
  v79 = v3;
  pthread_mutex_init(&v88, 0);
  pthread_mutex_init(&v89, 0);
  v64 = v1;
  if (!realpath_DARWIN_EXTSN(*(v1 + 8), v78))
  {
    v5 = *__error();
    v6 = *(v1 + 8);
    v7 = 1908;
    goto LABEL_15;
  }

  v80 = 0;
  v81 = __count;
  v82 = calloc(__count, 4uLL);
  if (!v82)
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
    goto LABEL_13;
  }

  if (pthread_mutex_init(&v83, 0))
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
LABEL_13:
    v6 = "SharedArrayInit";
    v7 = 1911;
    goto LABEL_14;
  }

  if (pthread_cond_init(&v84, 0))
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
    goto LABEL_13;
  }

  v86 = calloc(__count, 0x130uLL);
  if (!v86)
  {
    v5 = *__error();
    v6 = "malloc";
    v7 = 1915;
    goto LABEL_15;
  }

  if (__count)
  {
    v47 = 0;
    v48 = 216;
    while (1)
    {
      v49 = v86;
      v50 = v86 + v48;
      v51 = v86 + v48;
      *(v51 - 27) = &v76;
      v52 = (v51 - 216);
      v53 = sub_75AC4(": %s %s file with no ota-uuid\n", v62, v63);
      *(v52 + 16) = v53;
      if (!v53)
      {
        break;
      }

      *(v50 - 48) = 0;
      if (pthread_mutex_init((v50 - 184), 0) || (v54 = &v49[v48], pthread_cond_init(&v49[v48 - 120], 0)))
      {
        v6 = "SemInit";
        v7 = 1922;
        goto LABEL_14;
      }

      *(v54 - 18) = 0;
      if (pthread_mutex_init(v54 - 1, 0) || (v55 = &v49[v48], pthread_cond_init(v55, 0)))
      {
        v6 = "SemInit";
        v7 = 1923;
        goto LABEL_14;
      }

      if (sub_60BD4(&v55[-5].__opaque[24], sub_6E4A4, v52, 0))
      {
        v5 = *__error();
        v6 = "createThread";
        v7 = 1924;
        goto LABEL_15;
      }

      ++v47;
      v48 += 304;
      if (v47 >= __count)
      {
        goto LABEL_85;
      }
    }

    v6 = "MemBufferCreate";
    v7 = 1921;
LABEL_14:
    v5 = 0;
LABEL_15:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", v7, 2, v5, v6);
    v8 = 0;
    v9 = 0.0;
    goto LABEL_16;
  }

LABEL_85:
  v67 = 0;
  v56 = *(v64 + 16);
  if (!v56)
  {
    v56 = sub_62BA4();
  }

  v65[0] = 0;
  v65[1] = v56;
  v57 = *(v64 + 64);
  v66 = *(v64 + 48);
  v68 = v57;
  v69 = sub_70074;
  v70 = sub_70C08;
  v71 = sub_70D1C;
  v73 = sub_70DE4;
  v72 = sub_70F6C;
  v74 = sub_70F6C;
  v75 = &v76;
  v58 = sub_62B5C();
  v59 = ParallelArchiveRead(v65);
  v60 = sub_62B5C();
  v8 = 1;
  if (v59 | v87)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 1948, 2, 0, "ParallelArchiveRead failed");
    v87 = 1;
    v8 = 0;
  }

  v9 = v60 - v58;
  if (v90 != -1 && v91)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 1956, 2, 0, "aborting current receiving thread");
    v87 = 1;
    v61 = v86 + 304 * v90;
    if (!v91)
    {
      sub_6D88C((v61 + 144));
      v91 = 1;
    }

    sub_75DE0(*(v61 + 2));
    v91 = 0;
    sub_6D820((v61 + 24));
  }

  while (1)
  {
LABEL_16:
    if (v86)
    {
      v10 = __count == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = 0;
      do
      {
        v12 = v86 + 304 * v11;
        if (*(v12 + 1))
        {
          LODWORD(v110[0]) = 0;
          if (!pthread_mutex_lock((v12 + 152)))
          {
            while (1)
            {
              v13 = *(v12 + 36);
              if (v13 > 0)
              {
                break;
              }

              if (pthread_cond_wait((v12 + 216), (v12 + 152)))
              {
                goto LABEL_27;
              }
            }

            *(v12 + 36) = v13 - 1;
            pthread_mutex_unlock((v12 + 152));
          }

LABEL_27:
          sub_75DFC(*(v12 + 2), 4uLL, v110);
          if (!pthread_mutex_lock((v12 + 32)))
          {
            v14 = *(v12 + 6);
            *(v12 + 6) = v14 + 1;
            if (v14 || !pthread_cond_broadcast(v12 + 2))
            {
              pthread_mutex_unlock((v12 + 32));
            }
          }

          if (sub_60F34(*(v12 + 1)))
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 1989, 2, 0, "joinThread");
            v8 = 0;
          }
        }

        sub_75BD4(*(v12 + 2));
        if (!pthread_mutex_destroy((v12 + 32)))
        {
          pthread_cond_destroy(v12 + 2);
        }

        if (!pthread_mutex_destroy((v12 + 152)))
        {
          pthread_cond_destroy((v12 + 216));
        }

        atomic_fetch_add(&v105, *(v12 + 36));
        atomic_fetch_add(&v109, *(v12 + 37));
        ++v11;
      }

      while (v11 < __count);
    }

    if (pthread_mutex_lock(&v88))
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "processDeferredEntries", 701, 2, 0, "pthread_mutex_lock");
      goto LABEL_51;
    }

    v15 = v96;
    if (!v96)
    {
      break;
    }

    v16 = 1;
    do
    {
      memset(v112, 0, 368);
      memset(v111, 0, sizeof(v111));
      v96 = v15 - 1;
      v17 = v97 + 16 * v15 - 16;
      pc_zero_coder_decode(v111, 2320, *v17, *(v17 + 1));
      if (v116 != 6 || v111[1] != 68)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "processDeferredEntries", 711, 2, 0, "Invalid entry state");
        v16 = 0;
      }

      sub_60A5C(v110);
      if (*v76 >= 3)
      {
        fprintf(__stderrp, "[%7d] processing deferred Dir: %s\n", v115, v112);
      }

      if ((sub_6D348(&v76, v111) & 0x80000000) != 0)
      {
        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "processDeferredEntries", 720, 2, "Failed to set dir attributes");
        sub_60AD0(v110);
        v116 = 7;
        ++v98;
      }

      sub_75BD4(v113);
      sub_75BD4(v114);
      free(*v17);
      *v17 = 0;
      v15 = v96;
    }

    while (v96);
    pthread_mutex_unlock(&v88);
    if (v16)
    {
      goto LABEL_53;
    }

LABEL_51:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2002, 2, 0, "Processing deferred entries");
    v8 = 0;
  }

  pthread_mutex_unlock(&v88);
LABEL_53:
  if (v8)
  {
    if (*v64 >= 1)
    {
      v18 = atomic_load(&v105);
      v19 = atomic_load(&v109);
      v20 = v19 + v18;
      v21 = atomic_load(&v106);
      v22 = atomic_load(&v107);
      v23 = v20 + v21 + v22;
      v24 = atomic_load(&v108);
      v25 = v23 + v24;
      v26 = __stderrp;
      v27 = atomic_load(&v102);
      fprintf(v26, "%12lld entries in archive\n", v27);
      v28 = __stderrp;
      v29 = atomic_load(&v103);
      fprintf(v28, "%12lld entries extracted\n", v29);
      fprintf(__stderrp, "%12llu entries failed to extract\n", v98);
      fprintf(__stderrp, "%12lld max entries in flight\n", v94);
      v30 = __stderrp;
      v31 = atomic_load(v104);
      fprintf(v30, "%12lld deferred directories\n", v31);
      fprintf(__stderrp, "%12llu bytes in archive\n", v92);
      fprintf(__stderrp, "%12lld bytes received in regular files\n", v25);
      v32 = __stderrp;
      v33 = atomic_load(&v105);
      fprintf(v32, "%12lld bytes stored in regular files\n", v33);
      v34 = __stderrp;
      v35 = atomic_load(&v109);
      fprintf(v34, "%12lld bytes not stored in holes\n", v35);
      v36 = __stderrp;
      v37 = atomic_load(&v106);
      fprintf(v36, "%12lld bytes not stored in hard links\n", v37);
      v38 = __stderrp;
      v39 = atomic_load(&v107);
      fprintf(v38, "%12lld bytes not stored in clones\n", v39);
      v40 = __stderrp;
      v41 = atomic_load(&v108);
      fprintf(v40, "%12lld bytes not stored in same data files\n", v41);
      fprintf(__stderrp, "%12.0f MB/s\n", v25 / v9 * 0.000000953674316);
      if (*v64 >= 3)
      {
        if (__count)
        {
          v42 = 0;
          v43 = 264;
          do
          {
            v44 = v86;
            fprintf(__stderrp, "-- thread %d:\n", v42);
            v45 = &v44[v43];
            fprintf(__stderrp, "%12lld entries stored\n", *(v45 + 1));
            fprintf(__stderrp, "%12lld bytes received\n", *(v45 + 2));
            fprintf(__stderrp, "%12lld bytes stored\n", *(v45 + 3));
            fprintf(__stderrp, "%12lld buffers exchanged\n", *v45);
            ++v42;
            v43 += 304;
          }

          while (v42 < __count);
        }
      }
    }
  }

  free(v86);
  if (!pthread_mutex_destroy(&v83) && !pthread_cond_destroy(&v84))
  {
    free(v82);
  }

  pthread_mutex_destroy(&v88);
  pthread_mutex_destroy(&v89);
  if (v93)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2043, 2, 0, "Destroying state with non-empty in-flight queue");
  }

  free(v95);
  if (v96)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2045, 2, 0, "Destroying state with non-empty deferred queue");
  }

  free(v97);
  free(v99);
  free(v100);
  free(v101);
  if (v98 && (*(v64 + 24) & 8) == 0)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2054, 2, 0, "%llu entries failed to extract", v98);
    v8 = 0;
  }

  LODWORD(result) = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
  if (v8)
  {
    v46 = 0;
  }

  else
  {
    v46 = -1;
  }

  if (result >= 0)
  {
    return v46;
  }

  else
  {
    return result;
  }
}

uint64_t sub_6E4A4()
{
  v0 = off_1AD4E8();
  v1 = *v0;
  v2 = **v0;
  v81 = *v2;
  v3 = 678152731 * ((v0 - *(*v0 + 1176)) >> 4);
  __dst = -1;
  memset(v118, 0, 368);
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  *v110 = 0u;
  v109 = 0u;
  v98 = 0;
  v97 = 0u;
  memset(v96, 0, sizeof(v96));
  bzero(v108, 0x800uLL);
  v92 = -1;
  v4 = *(v2 + 96);
  v84 = *(v2 + 88);
  v82 = *(v2 + 104);
  v83 = *(v2 + 144);
  v5 = *(v2 + 24);
  v6 = sub_75AC4(&loc_10000);
  v7 = sub_75AC4(&loc_10000);
  v8 = v7;
  v89 = v6;
  if (!v6 || !v7)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 830, 2, 0, "MemBufferCreate");
  }

  v93 = 0;
  v94 = 0;
  v95 = 0;
  if (*(*v1 + 32) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(*v1 + 32);
  }

  v91 = v9;
  v90 = calloc(v9, 0x120uLL);
  if (!v90)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 835, 2, 0, "malloc ACE");
  }

  if (sub_70F7C(v1 + 260, v3))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 838, 2, 0, "SharedArrayPush");
  }

  v85 = v5;
  if (pthread_mutex_lock((v0 + 152)) || (v10 = *(v0 + 144), *(v0 + 144) = v10 + 1, !v10) && pthread_cond_broadcast((v0 + 216)) || pthread_mutex_unlock((v0 + 152)))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 847, 2, 0, "SemRelease");
  }

  v87 = 0;
  v88 = 0;
  v11 = 0;
  v12 = 0;
  v13 = " (MSU)";
  if ((v85 & 0x10000) == 0)
  {
    v13 = "";
  }

  v80 = v13;
  v86 = 7;
LABEL_20:
  v14 = 1;
  while (v12 != -1)
  {
    v15 = v12;
    if (v12 == 6)
    {
      break;
    }

    if (v14)
    {
      if (pthread_mutex_lock((v0 + 32)))
      {
        goto LABEL_29;
      }

      while (1)
      {
        v16 = *(v0 + 24);
        if (v16 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v0 + 96), (v0 + 32)))
        {
          goto LABEL_29;
        }
      }

      *(v0 + 24) = v16 - 1;
      if (pthread_mutex_unlock((v0 + 32)))
      {
LABEL_29:
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 859, 2, 0, "SemAcquire");
      }

      ++*(v0 + 264);
    }

    if (!sub_75C6C(*(v0 + 16)) && v1[296])
    {
      goto LABEL_55;
    }

    if (v12 > 3)
    {
      if (v12 > 5)
      {
LABEL_55:
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1425, 2, 0, "aborting entry");
        v92 = -1;
        sub_75DE0(v89);
        sub_75DE0(v8);
        if (!sub_70F7C(v1 + 260, v3))
        {
          v12 = 0;
LABEL_58:
          v88 = 0;
          goto LABEL_108;
        }

        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1440, 2, 0, "SharedArrayPush");
        v88 = 0;
        v12 = 7;
LABEL_108:
        if (pthread_mutex_lock((v0 + 152)) || (v31 = *(v0 + 144), *(v0 + 144) = v31 + 1, !v31) && pthread_cond_broadcast((v0 + 216)) || (v32 = pthread_mutex_unlock((v0 + 152)), v14 = 1, v32))
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1462, 2, 0, "SemRelease");
          goto LABEL_20;
        }
      }

      else
      {
        if (v12 == 4)
        {
          *&__s[0] = 0;
          if (sub_75C6C(*(v0 + 16)) < 8)
          {
            v12 = 4;
            goto LABEL_108;
          }

          if (sub_75F2C(*(v0 + 16), 8uLL, __s) < 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1295, 2, 0, "MemBufferFlushToBuffer");
            v12 = 4;
            goto LABEL_157;
          }

          *(v0 + 280) += 8;
          v23 = v92;
          v24 = *&__s[0];
          if (pthread_mutex_lock((v1 + 298)))
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreEntryEnd", 424, 2, 0, "pthread_mutex_lock");
            goto LABEL_92;
          }

          v44 = sub_6D65C(v1, v23);
          if (v44)
          {
            *(v44 + 2312) = v24;
            pthread_mutex_unlock((v1 + 298));
          }

          else
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreEntryEnd", 428, 2, 0, "couldn't locate entry [%d] in queue", v23);
            pthread_mutex_unlock((v1 + 298));
LABEL_92:
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1297, 2, 0, "store entryEnd");
          }

          v12 = 5;
          goto LABEL_157;
        }

        if (v11)
        {
          *&__s[0] = 0;
          *v106 = 0;
          sub_67D18(v11, 0, __s, v106);
          v17 = *(v0 + 296) + *v106;
          *(v0 + 288) += *&__s[0];
          *(v0 + 296) = v17;
          if ((v109 & 8) != 0 && sub_64398(v110[0]) && v113 && (v96[0] & 0x20) != 0 && (v96[0] & 0x40) != 0 && DWORD1(v97) && (ParallelCompressionAFSCFixupMetadata(v108, v97, DWORD1(v97)) & 0x80000000) != 0)
          {
            sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1322, 2, "ParallelCompressionAFSCFixupMetadata failed: %s (aft=%d afr=%u)", v108, v77, v78);
          }
        }

        v18 = v86;
        if (v86 == 2)
        {
          v18 = 3;
        }

        if (v18 == 7)
        {
LABEL_142:
          v86 = v18;
          if (sub_7108C())
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1399, 2, 0, "retiring entry from in-flight state");
          }

          else
          {
            if (!sub_75C6C(*(v0 + 16)))
            {
              v92 = -1;
              sub_75DE0(v89);
              sub_75DE0(v8);
              if (sub_70F7C(v1 + 260, v3))
              {
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1417, 2, 0, "SharedArrayPush");
                v11 = 0;
                v88 = 0;
                v12 = 5;
                goto LABEL_108;
              }

              v12 = 0;
              v11 = 0;
              goto LABEL_58;
            }

            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1402, 2, 0, "buffer is not empty");
          }

          v11 = 0;
          v14 = 0;
          v12 = 5;
        }

        else
        {
          if (v18 == 3)
          {
            sub_60A5C(__s);
            if ((v85 & 0x40000) != 0 || !sub_5EFE4(v108, &v109, v96, v85 & 1))
            {
              v19 = 3;
            }

            else
            {
              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1341, 2, "setEntryAttributes: %s", v108);
              v19 = 7;
            }

            if ((BYTE1(v109) & 4) != 0)
            {
              v33 = sub_75C6C(v89);
              v34 = sub_75C80(v89);
              if (sub_5F658(v108, &v109, v85 & 1, v33, v34))
              {
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1350, 2, 0, "setEntryXAT: %s", v108);
                v19 = 7;
              }
            }

            if ((BYTE1(v109) & 8) != 0 && sub_5F828(v108, &v109, v85 & 1, v88, v90))
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1360, 2, 0, "setEntryACL: %s", v108);
              v19 = 7;
            }

            if ((v85 & 0x40000) != 0 && sub_5EFE4(v108, &v109, v96, v85 & 1))
            {
              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1368, 2, "setEntryAttributes: %s", v108);
              v19 = 7;
            }

            if (v4)
            {
              v4(*(*v1 + 144), &v109);
            }

            atomic_fetch_add_explicit(v1 + 191, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
            if (v19 == 7)
            {
              sub_60AD0(__s);
              v18 = 7;
            }

            else
            {
              v18 = 4;
            }

            goto LABEL_142;
          }

          v86 = v18;
          v25 = v8;
          v79 = v4;
          v26 = v3;
          v27 = v92;
          v28 = sub_75C6C(v89);
          v29 = sub_75C80(v89);
          v30 = v90;
          if (pthread_mutex_lock((v1 + 298)))
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreBlobs", 445, 2, 0, "pthread_mutex_lock");
            v3 = v26;
            v8 = v25;
          }

          else
          {
            v40 = sub_6D65C(v1, v27);
            if (v40)
            {
              v41 = v40;
              if (v28 && (v42 = sub_75C18(v28, v29), (*(v41 + 2280) = v42) == 0))
              {
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreBlobs", 454, 2, 0, "allocating XAT blob", v76);
              }

              else
              {
                if (!v88 || (v43 = sub_75C18((288 * v88), v30), (*(v41 + 2288) = v43) != 0))
                {
                  pthread_mutex_unlock((v1 + 298));
                  v3 = v26;
                  v4 = v79;
                  v8 = v25;
                  v18 = v86;
                  goto LABEL_142;
                }

                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreBlobs", 459, 2, 0, "allocating ACL blob", v76);
              }
            }

            else
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreBlobs", 449, 2, 0, "couldn't locate entry [%d] in queue");
            }

            v3 = v26;
            v8 = v25;
            pthread_mutex_unlock((v1 + 298));
          }

          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1391, 2, 0, "store XAT and ACL blobs in entry");
          v11 = 0;
          v14 = 0;
          v12 = 5;
          v4 = v79;
        }
      }
    }

    else if (v12 > 1)
    {
      if (v12 == 2)
      {
        goto LABEL_44;
      }

      v20 = sub_75C6C(*(v0 + 16));
      v21 = sub_75C80(*(v0 + 16));
      if (v20 >= v87)
      {
        v20 = v87;
      }

      *(v0 + 280) += v20;
      switch(__dst)
      {
        case 4:
          if ((sub_75DFC(v8, v20, v21) & 0x8000000000000000) != 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1251, 2, 0, "storing ACL blob contents");
            goto LABEL_161;
          }

LABEL_106:
          sub_75CDC(*(v0 + 16), v20);
          v87 -= v20;
          if (v87)
          {
            v12 = 3;
            goto LABEL_108;
          }

          v87 = 0;
          v14 = 0;
          v12 = 2;
          if (__dst == 4)
          {
            v14 = 0;
            v87 = 0;
            if ((BYTE1(v109) & 8) != 0)
            {
              if (v114)
              {
                v35 = sub_75C6C(v8);
                v36 = sub_75C80(v8);
                v37 = sub_5EEBC(&v109, &v91, &v90, v35, v36);
                if (v37 < 0)
                {
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1267, 2, 0, "decodeEntryACL");
                }

                v38 = v37 & ~(v37 >> 63);
                if (v82)
                {
                  v38 = v82(v83, &v109, v38, v91, v90);
                  if (v38 > v91)
                  {
                    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1274, 2, 0, "invalid user ACL callback return value");
                    v38 = 0;
                  }
                }

                v88 = v38;
                sub_75DE0(v8);
                v87 = 0;
                goto LABEL_138;
              }
            }
          }

          break;
        case 3:
          if ((sub_75DFC(v89, v20, v21) & 0x8000000000000000) != 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1246, 2, 0, "storing XAT blob contents");
            goto LABEL_161;
          }

          goto LABEL_106;
        case 2:
          if (!v11 || sub_67EFC(v11, v21, v20) != v20)
          {
            sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1239, 2, "OArchiveFileStreamWrite");
            v86 = 7;
          }

          goto LABEL_106;
        default:
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1253, 2, 0, "invalid op in BLOB PAYLOAD");
LABEL_161:
          v14 = 0;
          v12 = 3;
          break;
      }
    }

    else if (v12)
    {
      if (sub_75C6C(*(v0 + 16)) < 0x8EC)
      {
        v12 = 1;
        goto LABEL_108;
      }

      if (sub_75F2C(*(v0 + 16), 0x890uLL, &v109) < 0)
      {
        v39 = 926;
LABEL_167:
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", v39, 2, 0, "MemBufferFlushToBuffer");
        goto LABEL_231;
      }

      if (sub_75F2C(*(v0 + 16), 0x58uLL, v96) < 0)
      {
        v39 = 927;
        goto LABEL_167;
      }

      if (sub_75F2C(*(v0 + 16), 4uLL, &v92) < 0)
      {
        v39 = 928;
        goto LABEL_167;
      }

      *(v0 + 272) = vaddq_s64(*(v0 + 272), xmmword_10B700);
      if (!v84)
      {
        goto LABEL_196;
      }

      v93 = 0;
      v94 = 0;
      v95 = 0;
      v84(v83, &v109, &v93);
      if (v93)
      {
        LODWORD(v109) = v109 | 2;
        DWORD2(v109) = HIDWORD(v93);
        if ((v93 & 2) == 0)
        {
LABEL_82:
          if ((v93 & 8) != 0)
          {
            goto LABEL_177;
          }

          goto LABEL_83;
        }
      }

      else if ((v93 & 2) == 0)
      {
        goto LABEL_82;
      }

      LODWORD(v109) = v109 | 4;
      HIDWORD(v109) = v94;
      if ((v93 & 8) != 0)
      {
LABEL_177:
        LODWORD(v109) = v109 | 0x10;
        v110[1] = v95;
        if ((v93 & 4) == 0)
        {
          goto LABEL_85;
        }

LABEL_84:
        LODWORD(v109) = v109 | 8;
        v110[0] = HIDWORD(v94);
        goto LABEL_85;
      }

LABEL_83:
      if ((v93 & 4) != 0)
      {
        goto LABEL_84;
      }

LABEL_85:
      if ((v93 & 0xF) != 0)
      {
        v22 = v92;
        if (!pthread_mutex_lock((v1 + 298)))
        {
          v46 = sub_6D65C(v1, v22);
          if (!v46)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueOverrideAttributes", 405, 2, 0, "couldn't locate entry [%d] in queue", v22);
            pthread_mutex_unlock((v1 + 298));
            goto LABEL_88;
          }

          v47 = v93;
          if (v93)
          {
            *v46 |= 2u;
            v46[2] = HIDWORD(v93);
            v47 = v93;
          }

          if ((v47 & 2) != 0)
          {
            *v46 |= 4u;
            v46[3] = v94;
            v47 = v93;
            if ((v93 & 8) != 0)
            {
              goto LABEL_248;
            }

LABEL_193:
            if ((v47 & 4) == 0)
            {
LABEL_195:
              pthread_mutex_unlock((v1 + 298));
              goto LABEL_196;
            }
          }

          else
          {
            if ((v47 & 8) == 0)
            {
              goto LABEL_193;
            }

LABEL_248:
            *v46 |= 0x10u;
            v46[5] = v95;
            if ((v93 & 4) == 0)
            {
              goto LABEL_195;
            }
          }

          *v46 |= 8u;
          v46[4] = HIDWORD(v94);
          goto LABEL_195;
        }

        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueOverrideAttributes", 401, 2, 0, "pthread_mutex_lock");
LABEL_88:
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 949, 2, 0, "override attributes", v76);
LABEL_230:
        v86 = 0;
LABEL_231:
        v14 = 0;
        v12 = 1;
      }

      else
      {
LABEL_196:
        atomic_fetch_add_explicit(v1 + 191, 1uLL, memory_order_relaxed);
        if (**v1 >= 3)
        {
          fprintf(__stderrp, "[%7d] begin: %s\n", v92, v118);
        }

        if ((sub_63058(v108, 0x800uLL, v1 + 12, v118) & 0x80000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 955, 2, 0, "invalid path: %s");
          goto LABEL_230;
        }

        v48 = v109;
        if ((v109 & 0x400) != 0)
        {
          if ((sub_75B58(v89, *(&v113 + 1)) & 0x8000000000000000) != 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 960, 2, 0, "allocate XAT blob", v76);
            goto LABEL_230;
          }

          v48 = v109;
        }

        if ((v48 & 0x800) != 0 && (sub_75B58(v8, v114) & 0x8000000000000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 964, 2, 0, "allocate ACL blob", v76);
          goto LABEL_230;
        }

        if (!sub_75DEC(v89) || !sub_75DEC(v8))
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 968, 2, 0, "XAT/ACL blob is not empty", v76);
          goto LABEL_230;
        }

        if (SDWORD1(v109) > 75)
        {
          if (SDWORD1(v109) > 119)
          {
            if ((DWORD1(v109) - 120) >= 2)
            {
              goto LABEL_275;
            }

            v14 = 0;
            v12 = 2;
            v86 = 1;
            if (v81 >= 3)
            {
              v77 = v118;
              fprintf(__stderrp, "[%7d] HLINK/CLONE deferred: %s\n");
              goto LABEL_260;
            }
          }

          else
          {
            switch(DWORD1(v109))
            {
              case 'L':
                if (v81 >= 3)
                {
                  fprintf(__stderrp, "[%7d] SLINK: %s -> %s\n", v92, v118, v119);
                }

                unlink(v108);
                v62 = symlink(v119, v108);
                v14 = 0;
                v12 = 2;
                v86 = 3;
                if (v62)
                {
                  v77 = v119;
                  sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1086, 2, "symlink %s -> %s");
                  goto LABEL_274;
                }

                break;
              case 'P':
                if (v81 >= 3)
                {
                  fprintf(__stderrp, "[%7d] FIFO: %s\n", v92, v118);
                }

                unlink(v108);
                if ((v109 & 0x10) != 0)
                {
                  v63 = LOWORD(v110[1]) | 0x1000;
                }

                else
                {
                  v63 = 4516;
                }

                v64 = mkfifo(v108, v63);
                v14 = 0;
                v12 = 2;
                v86 = 3;
                if (v64)
                {
                  sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1108, 2, "mkfifo %s");
LABEL_274:
                  v14 = 0;
                  v86 = 7;
                }

                break;
              case 'S':
                if (v81 >= 3)
                {
                  fprintf(__stderrp, "[%7d] SOCKET: %s\n", v92, v118);
                }

                unlink(v108);
                bzero(__s, 0x400uLL);
                bzero(v106, 0x400uLL);
                v104 = 0u;
                memset(v105, 0, sizeof(v105));
                v102 = 0u;
                v103 = 0u;
                v100 = 0;
                v101 = 0u;
                __strlcpy_chk();
                v53 = strrchr(__s, 47);
                if (!v53)
                {
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1137, 2, 0, "could not determine parent directory: %s");
LABEL_280:
                  v86 = 3;
                  goto LABEL_138;
                }

                *v53 = 0;
                v54 = v53 + 1;
                v104 = 0u;
                memset(v105, 0, sizeof(v105));
                v102 = 0u;
                v103 = 0u;
                v100 = 0;
                v101 = 0u;
                __strlcpy_chk();
                v100.sa_len = strlen(v100.sa_data) + 3;
                v100.sa_family = 1;
                v55 = socket(1, 1, 0);
                if (v55 < 0)
                {
                  v65 = *__error();
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1162, 2, v65, "socket failed: %s");
                  goto LABEL_280;
                }

                v56 = v55;
                if (pthread_mutex_lock((v1 + 314)) < 0)
                {
                  v57 = __error();
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1169, 2, *v57, "locking chdir_mutex failed: %s", v108);
                }

                if (getcwd(v106, 0x400uLL))
                {
                  if (chdir(__s) < 0 || bind(v56, &v100, 0x6Au) < 0)
                  {
                    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1176, 2, "chdir+bind failed: %s/%s", __s, v54);
                    v58 = 7;
                  }

                  else
                  {
                    v58 = 3;
                  }

                  v86 = v58;
                  if (chdir(v106) < 0)
                  {
                    v72 = __error();
                    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1180, 2, *v72, "chdir failed: %s", v106);
                  }
                }

                else
                {
                  v73 = __error();
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1182, 2, *v73, "getcwd failed: %s", v108);
                  v86 = 3;
                }

                if (pthread_mutex_unlock((v1 + 314)) < 0)
                {
                  v74 = __error();
                  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1183, 2, *v74, "unlocking chdir_mutex failed: %s", v108);
                }

                close(v56);
LABEL_138:
                v14 = 0;
                v12 = 2;
                break;
              default:
LABEL_275:
                v12 = 2;
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1217, 2, 0, "unsupported entry type");
                v86 = 0;
LABEL_157:
                v14 = 0;
                break;
            }
          }
        }

        else if (SDWORD1(v109) > 69)
        {
          if (DWORD1(v109) == 70)
          {
            v59 = v1[259];
            if ((v109 & 8) != 0)
            {
              v61 = v85;
              if (sub_64398(v110[0]))
              {
                v60 = v113 != 0;
              }

              else
              {
                v60 = 0;
              }
            }

            else
            {
              v60 = 0;
              v61 = v85;
            }

            if (v81 >= 3)
            {
              v66 = "";
              if (v60)
              {
                v66 = " (C)";
              }

              fprintf(__stderrp, "[%7d] FILE writing %s%s: %s\n", v92, v66, v80, v118);
            }

            if (v60)
            {
              if (v96[0] & 0x20) != 0 && (v67 = v97 - 3, (v97 - 3) <= 0xB) && ((0xFF3u >> v67))
              {
                v68 = dword_10B720[v67];
                v59 = dword_10B750[v67];
              }

              else
              {
                v68 = 4;
              }
            }

            else
            {
              v68 = 0;
            }

            v69 = v68 | (16 * v85) & 0x40;
            if ((v61 & 0x10000) != 0)
            {
              v70 = v69 | 0x2B;
            }

            else
            {
              v70 = v69;
            }

            if ((v61 & 0x10) != 0)
            {
              if ((v96[0] & 0x80) != 0)
              {
                v71 = DWORD2(v97);
              }

              else
              {
                v71 = -1;
              }
            }

            else
            {
              v71 = -1;
            }

            sub_65374(v108);
            sub_60A5C(__s);
            v11 = sub_67770(v108, v113, v70 | 0x100u, v71, v59);
            if (!v11)
            {
              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1062, 2, "OArchiveFileStreamCreate: %s", v108);
              sub_60AD0(__s);
            }

            v14 = 0;
            v86 = 2;
            v12 = 2;
          }

          else
          {
            if (DWORD1(v109) != 72)
            {
              goto LABEL_275;
            }

            v14 = 0;
            v12 = 2;
            v86 = 1;
            if (v81 >= 3)
            {
              v77 = v118;
              fprintf(__stderrp, "[%7d] HLINK (legacy) deferred: %s\n");
              goto LABEL_260;
            }
          }
        }

        else if ((DWORD1(v109) - 66) >= 2)
        {
          if (DWORD1(v109) != 68)
          {
            goto LABEL_275;
          }

          v14 = 0;
          v12 = 2;
          v86 = 1;
          if (v81 >= 3)
          {
            v77 = v118;
            fprintf(__stderrp, "[%7d] DIR deferred: %s\n");
LABEL_260:
            v14 = 0;
            v86 = 1;
          }
        }

        else
        {
          if (v81 >= 3)
          {
            v49 = "CHAR";
            if (DWORD1(v109) == 66)
            {
              v49 = "BLOCK";
            }

            fprintf(__stderrp, "[%7d] %s SPECIAL: %s\n", v92, v49, v108);
          }

          if ((v109 & 0x20) == 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1195, 2, 0, "DEV field is not set for a block/char special entry");
          }

          unlink(v108);
          v50 = v110[1];
          if ((v109 & 0x10) == 0)
          {
            v50 = 420;
          }

          if (DWORD1(v109) == 66)
          {
            v51 = 24576;
          }

          else
          {
            v51 = 0x2000;
          }

          v52 = mknod(v108, v51 | v50, v110[2]);
          v14 = 0;
          v12 = 2;
          v86 = 3;
          if (v52)
          {
            sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1209, 2, "mknod %s");
            goto LABEL_274;
          }
        }
      }
    }

    else
    {
LABEL_44:
      if (sub_75C6C(*(v0 + 16)) < 4)
      {
        goto LABEL_108;
      }

      if (sub_75F2C(*(v0 + 16), 4uLL, &__dst) < 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 882, 2, 0, "MemBufferFlushToBuffer");
        v14 = 0;
      }

      else
      {
        v14 = 0;
        *(v0 + 280) += 4;
        v12 = 6;
        if (v15 | __dst)
        {
          if (v15 || (v14 = 0, v12 = 1, __dst != 1))
          {
            if (v15 == 2 && __dst == 2)
            {
              if ((BYTE1(v109) & 2) == 0)
              {
                v12 = 2;
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 894, 2, 0, "unexpected DAT blob");
                goto LABEL_157;
              }

              v14 = 0;
              v12 = 3;
              v87 = v113;
            }

            else if (v15 == 2 && __dst == 3)
            {
              if ((BYTE1(v109) & 4) == 0)
              {
                v12 = 2;
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 901, 2, 0, "unexpected XAT blob");
                goto LABEL_157;
              }

              v14 = 0;
              v12 = 3;
              v87 = *(&v113 + 1);
            }

            else if (v15 == 2 && __dst == 4)
            {
              if ((BYTE1(v109) & 8) == 0)
              {
                v12 = 2;
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 908, 2, 0, "unexpected ACL blob");
                goto LABEL_157;
              }

              v14 = 0;
              v12 = 3;
              v87 = v114;
            }

            else
            {
              v14 = 0;
              if (__dst == 5 && v15 == 2)
              {
                v12 = 4;
              }

              else
              {
                v12 = -1;
              }
            }
          }
        }
      }
    }
  }

  sub_75BD4(v89);
  sub_75BD4(v8);
  sub_67D08(v11);
  free(v90);
  return 0;
}

void sub_70074()
{
  v0 = off_1AD4E8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  bzero(v74, 0x800uLL);
  v72 = 0;
  *v70 = 0u;
  v71 = 0u;
  memset(v69, 0, sizeof(v69));
  bzero(__dst, 0x890uLL);
  v12 = (v11 + 1320);
  *(v11 + 1320) = xmmword_10B710;
  v13 = *(v11 + 1368);
  *(v11 + 1352) = v13;
  *(v11 + 1368) = v13 + v2;
  *(v11 + 1336) = 0xFFFFFFFF00000000;
  if (*(v11 + 1184))
  {
    return;
  }

  if (v10[1] != 77)
  {
    memcpy(__dst, v10, sizeof(__dst));
    v16 = 1;
    atomic_fetch_add_explicit((v11 + 1504), 1uLL, memory_order_relaxed);
    *(v11 + 1324) = 0;
    v17 = *v11;
    v18 = *(*v11 + 72);
    if (v18)
    {
      if ((*(v17 + 26) & 2) != 0)
      {
        LODWORD(__dst[0]) |= 0x40u;
        __dst[4] = v13;
      }

      v19 = v18(*(v17 + 144), __dst);
      v16 = v19 != 0;
      *(v11 + 1324) = v19 == 0;
    }

    v20 = 0;
    if (v6)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = (v8 + 8);
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v31 = *(v28 - 1) & 0xDFDFDF;
        if (v31 <= 0x494C45)
        {
          if ((*(v28 - 1) & 0xDFDFDFu) > 0x434C52)
          {
            if (v31 == 4410451)
            {
              v27 |= 0x10u;
              v22 = *v28;
            }

            else if (v31 == 4411984)
            {
              v27 |= 0x80u;
              v32 = *v28;
              v25 = -1;
              if (*v28 > 67)
              {
                switch(v32)
                {
                  case 'D':
                    v25 = 4;
                    break;
                  case 'E':
                    v25 = 5;
                    break;
                  case 'F':
                    v25 = 6;
                    break;
                }
              }

              else
              {
                switch(v32)
                {
                  case 'A':
                    v25 = 1;
                    break;
                  case 'B':
                    v25 = 2;
                    break;
                  case 'C':
                    v25 = 3;
                    break;
                }
              }
            }
          }

          else if (v31 == 4410435)
          {
            v27 |= 8u;
            v21 = *v28;
          }

          else if (v31 == 4410440)
          {
            v27 |= 4u;
            v20 = *v28;
          }
        }

        else if ((*(v28 - 1) & 0xDFDFDFu) <= 0x4D5442)
        {
          if (v31 == 4803654)
          {
            v27 |= 0x100u;
            v26 = *v28;
          }

          else if (v31 == 5067842)
          {
            v27 |= 2u;
            v30 = *v28;
          }
        }

        else
        {
          switch(v31)
          {
            case 0x544641u:
              v27 |= 0x20u;
              v23 = *v28;
              break;
            case 0x524641u:
              v27 |= 0x40u;
              v24 = *v28;
              break;
            case 0x4D5443u:
              v27 |= 1u;
              v29 = *v28;
              break;
          }
        }

        v28 += 129;
        --v6;
      }

      while (v6);
      v72 = v26;
      DWORD2(v71) = v25;
      *&v71 = __PAIR64__(v24, v23);
      *v70 = v21;
      *&v70[2] = v22;
      *(&v69[2] + 1) = v20;
      *(&v69[1] + 8) = v30;
      *(v69 + 8) = v29;
    }

    else
    {
      LOWORD(v27) = 0;
    }

    LOWORD(v69[0]) = v27;
    if (v16 && HIDWORD(__dst[0]) == 70)
    {
      if ((v27 & 4) != 0 && v20 != -1)
      {
        v33 = sub_6D1E4(v11 + 1456, v20, &__dst[18], &__dst[146], 0x400uLL);
        if (v33 < 0)
        {
          v63 = *__error();
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1608, 2, v63, "looking up cluster");
          goto LABEL_73;
        }

        if (v33)
        {
          HIDWORD(__dst[0]) = 120;
          *(v11 + 1336) = 1;
          atomic_fetch_add((v11 + 1552), __dst[8]);
        }
      }

      if (HIDWORD(__dst[0]) == 70)
      {
        if ((v69[0] & 8) != 0 && *v70 != -1)
        {
          v34 = sub_6D1E4(v11 + 1472, *v70, &__dst[18], &__dst[146], 0x400uLL);
          if (v34 < 0)
          {
            v64 = *__error();
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1630, 2, v64, "looking up cluster");
            goto LABEL_73;
          }

          if (v34)
          {
            HIDWORD(__dst[0]) = 121;
            *(v11 + 1336) = 1;
            atomic_fetch_add((v11 + 1560), __dst[8]);
          }
        }

        if (HIDWORD(__dst[0]) == 70 && (v69[0] & 0x10) != 0 && *&v70[2] != -1 && *(v11 + 8))
        {
          v35 = sub_6D1E4(v11 + 1488, *&v70[2], &__dst[18], &__dst[146], 0x400uLL);
          if (v35 < 0)
          {
            v65 = *__error();
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1652, 2, v65, "looking up cluster");
            goto LABEL_73;
          }

          if (v35)
          {
            HIDWORD(__dst[0]) = 121;
            *(v11 + 1336) = 1;
            atomic_fetch_add((v11 + 1568), __dst[8]);
          }
        }
      }
    }

    v36 = *(v11 + 1352);
    if (pthread_mutex_lock((v11 + 1192)))
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueInsert", 325, 2, 0, "pthread_mutex_lock");
LABEL_71:
      *v12 = -1;
      goto LABEL_72;
    }

    v37 = *(v11 + 1392);
    v38 = *(v11 + 1384);
    if (v37 >= v38)
    {
      if (v38)
      {
        v38 += v38 >> 1;
      }

      else
      {
        v38 = 128;
      }

      v39 = calloc(v38, 0x910uLL);
      if (!v39)
      {
        v62 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueInsert", 336, 2, *v62, "malloc");
        pthread_mutex_unlock((v11 + 1192));
        goto LABEL_71;
      }

      v40 = v39;
      if (*(v11 + 1392))
      {
        v41 = 0;
        v42 = *(v11 + 1400);
        v43 = v39;
        do
        {
          memcpy(v43, (*(v11 + 1416) + 2320 * v42), 0x910uLL);
          v44 = *(v11 + 1384);
          if (v42 + 1 < v44)
          {
            v44 = 0;
          }

          v42 = v42 + 1 - v44;
          ++v41;
          v43 += 2320;
        }

        while (v41 < *(v11 + 1392));
      }

      free(*(v11 + 1416));
      *(v11 + 1416) = v40;
      *(v11 + 1384) = v38;
      *(v11 + 1400) = 0;
      v37 = *(v11 + 1392);
    }

    if (v37)
    {
      v45 = *(v11 + 1400);
    }

    else
    {
      v45 = 0;
      *(v11 + 1400) = 0;
    }

    v46 = v45 + v37;
    if (v46 >= v38)
    {
      v47 = v38;
    }

    else
    {
      v47 = 0;
    }

    v48 = *(v11 + 1416) + 2320 * (v46 - v47);
    v49 = *(v11 + 1376);
    *(v11 + 1376) = v49 + 1;
    bzero(v48, 0x910uLL);
    memcpy(v48, __dst, 0x890uLL);
    v50 = v69[0];
    *(v48 + 2208) = v69[1];
    *(v48 + 2192) = v50;
    v51 = v69[2];
    v52 = *v70;
    v53 = v71;
    *(v48 + 2272) = v72;
    *(v48 + 2256) = v53;
    *(v48 + 2240) = v52;
    *(v48 + 2224) = v51;
    *(v48 + 2296) = v49;
    *(v48 + 2312) = v36;
    *(v48 + 2304) = v36;
    *(v48 + 2300) = 0;
    v54 = *(v11 + 1392) + 1;
    *(v11 + 1392) = v54;
    if (v54 > *(v11 + 1408))
    {
      *(v11 + 1408) = v54;
    }

    if (**v11 >= 3)
    {
      fprintf(__stderrp, "[%7d] inserted: %s\n", v49, &__dst[18]);
    }

    pthread_mutex_unlock((v11 + 1192));
    *v12 = v49;
    if ((v49 & 0x80000000) == 0)
    {
      if (*(v11 + 1324))
      {
        return;
      }

      v55 = 1;
      atomic_fetch_add_explicit((v11 + 1512), 1uLL, memory_order_relaxed);
      if ((sub_63058(v74, 0x800uLL, (v11 + 12), &__dst[18]) & 0x80000000) != 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1690, 2, 0, "invalid path: %s", &__dst[18]);
        v55 = 0;
      }

      v56 = HIDWORD(__dst[0]);
      if (HIDWORD(__dst[0]) == 68)
      {
        if (**v11 >= 3)
        {
          fprintf(__stderrp, "[%7d] DIR mkdir: %s\n", *v12, &__dst[18]);
        }

        memset(&v68, 0, sizeof(v68));
        if (!lstat(v74, &v68) && (v68.st_mode & 0xF000) != 0x4000)
        {
          unlink(v74);
        }

        if (mkdir(v74, 0x1EDu) && *__error() != 17)
        {
          v57 = __error();
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1706, 2, *v57, "%s", v74);
          v55 = 0;
        }

        if ((__dst[0] & 6) != 0)
        {
          if ((__dst[0] & 4) != 0)
          {
            v58 = HIDWORD(__dst[1]);
          }

          else
          {
            v58 = -1;
          }

          if ((__dst[0] & 2) != 0)
          {
            v59 = __dst[1];
          }

          else
          {
            v59 = -1;
          }

          chown(v74, v59, v58);
        }

        v56 = HIDWORD(__dst[0]);
      }

      if (v56 == 70 && (__dst[0] & 0x200) == 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1720, 2, 0, "Regular file is missing DAT blob: %s", &__dst[18]);
        v55 = 0;
      }

      if (pthread_mutex_lock((v11 + 1056)))
      {
        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_131:
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1729, 2, 0, "SharedArrayPop", v67);
        goto LABEL_73;
      }

      while (1)
      {
        v60 = *(v11 + 1040);
        if (v60)
        {
          break;
        }

        if (pthread_cond_wait((v11 + 1120), (v11 + 1056)))
        {
          sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
          goto LABEL_131;
        }
      }

      v61 = v60 - 1;
      *(v11 + 1040) = v61;
      *(v11 + 1340) = *(*(v11 + 1048) + 4 * v61);
      if (pthread_mutex_unlock((v11 + 1056)))
      {
        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
        goto LABEL_131;
      }

      v66 = *(v11 + 1176) + 304 * *(v11 + 1340);
      if (sub_6D88C(v66 + 144))
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1740, 2, 0, "SemAcquire");
        v55 = 0;
      }

      *(v11 + 1344) = 1;
      v68.st_dev = 1;
      if (sub_6D6B8(v66, &v68, 4uLL))
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1748, 2, 0, "writeToThread");
        v55 = 0;
      }

      if (sub_6D6B8(v66, __dst, 0x890uLL))
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1749, 2, 0, "writeToThread");
        v55 = 0;
      }

      if (sub_6D6B8(v66, v69, 0x58uLL))
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1750, 2, 0, "writeToThread");
        if (!sub_6D6B8(v66, (v11 + 1320), 4uLL))
        {
          goto LABEL_73;
        }
      }

      else if (!sub_6D6B8(v66, (v11 + 1320), 4uLL))
      {
        if (v55)
        {
          return;
        }

LABEL_73:
        *(v11 + 1184) = 1;
        return;
      }

      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1751, 2, 0, "writeToThread");
      goto LABEL_73;
    }

LABEL_72:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1676, 2, 0, "extractInsertEntry: %s");
    goto LABEL_73;
  }

  *(v11 + 1332) = 1;
  v14 = *(*v11 + 112);
  if (v14)
  {
    v15 = *(*v11 + 144);

    v14(v15, v10, v8, v6, v4, v2);
  }
}

_DWORD *sub_70C08(_DWORD *result, _DWORD *a2)
{
  v3 = result;
  if (result[333])
  {
    v4 = *(*result + 120);
    if (v4)
    {
      result = v4(*(*result + 144), a2);
    }
  }

  if ((v3[330] & 0x80000000) == 0 && !v3[331])
  {
    v5 = *(v3 + 147);
    v6 = v3[335];
    v3[332] = 0;
    v7 = *a2 & 0xDFDFDF;
    if (v7 == 4997953)
    {
      v9 = 4;
    }

    else if (v7 == 5521752)
    {
      v9 = 3;
    }

    else
    {
      v8 = v3 + 332;
      if (v7 != 5521732 || v3[334])
      {
LABEL_15:
        *v8 = 1;
        return result;
      }

      v9 = 2;
    }

    v10 = v9;
    result = sub_6D6B8(v5 + 304 * v6, &v10, 4uLL);
    if (!result)
    {
      return result;
    }

    result = sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBlobProc", 1790, 2, 0, "writeToThread");
    v8 = v3 + 296;
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_70D1C(uint64_t result, char *a2, unint64_t a3)
{
  v5 = result;
  *(result + 1368) += a3;
  if (*(result + 1332))
  {
    v6 = *(*result + 128);
    if (v6)
    {
      result = v6(*(*result + 144), a2, a3);
    }
  }

  if ((*(v5 + 1320) & 0x80000000) == 0 && !*(v5 + 1324) && !*(v5 + 1328))
  {
    result = sub_6D6B8(*(v5 + 1176) + 304 * *(v5 + 1340), a2, a3);
    if (result)
    {
      result = sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractPayloadProc", 1819, 2, 0, "extractWriteToThread");
      *(v5 + 1184) = 1;
    }
  }

  return result;
}

uint64_t sub_70DE4(uint64_t result)
{
  v1 = result;
  *(result + 1360) = *(result + 1368);
  if (*(result + 1332))
  {
    v2 = *(*result + 136);
    if (v2)
    {
      result = v2(*(*result + 144));
    }
  }

  if ((*(v1 + 1320) & 0x80000000) == 0)
  {
    if (*(v1 + 1324))
    {
      result = sub_7108C();
      if ((result & 0x80000000) == 0)
      {
LABEL_7:
        *(v1 + 1320) = -1;
        *(v1 + 1340) = -1;
        return result;
      }

      result = sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractEndProc", 1870, 2, 0, "Updating entry state");
    }

    else
    {
      v3 = *(v1 + 1176) + 304 * *(v1 + 1340);
      v5 = 5;
      if (sub_6D6B8(v3, &v5, 4uLL))
      {
        result = sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractEndProc", 1859, 2, 0, "extractWriteToThread");
      }

      else if (sub_6D6B8(v3, (v1 + 1360), 8uLL))
      {
        result = sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractEndProc", 1860, 2, 0, "extractWriteToThread");
      }

      else
      {
        *(v1 + 1344) = 0;
        if (!pthread_mutex_lock((v3 + 32)))
        {
          v4 = *(v3 + 24);
          *(v3 + 24) = v4 + 1;
          if (v4 || !pthread_cond_broadcast((v3 + 96)))
          {
            result = pthread_mutex_unlock((v3 + 32));
            if (!result)
            {
              goto LABEL_7;
            }
          }
        }

        result = sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractEndProc", 1865, 2, 0, "SemRelease");
      }
    }

    *(v1 + 1184) = 1;
  }

  return result;
}

uint64_t sub_70F7C(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
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
        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
      }

      else
      {
        if (v4 < v5)
        {
          return 0;
        }

        sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n");
      }
    }

    else
    {
      sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_7108C()
{
  v0 = off_1AD4E8();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  if (pthread_mutex_lock((v0 + 1192)))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 476, 2, 0, "pthread_mutex_lock");
    return 0xFFFFFFFFLL;
  }

  v7 = sub_6D65C(v5, v4);
  if (!v7)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 480, 2, 0, "couldn't locate entry [%d] in queue");
LABEL_17:
    v6 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v8 = *(v7 + 2300);
  if (v8 <= 2)
  {
    if (v8)
    {
LABEL_16:
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 485, 2, 0, "Invalid entry state [%d] %s: %s", v4);
      goto LABEL_17;
    }

    *(v7 + 2300) = v2;
    v8 = v2;
  }

  else if (v8 <= 4 || v8 != 7)
  {
    goto LABEL_16;
  }

  if (**v5 >= 3)
  {
    if (v8 > 7)
    {
      v9 = "???";
    }

    else
    {
      v9 = off_1A9EC0[v8];
    }

    fprintf(__stderrp, "[%7d] retiring %s: %s\n", v4, v9, (v7 + 144));
  }

  if (!*(v5 + 1392))
  {
    v6 = 0;
    goto LABEL_18;
  }

  v11 = *(v5 + 1400);
  v12 = 1;
  do
  {
    v13 = *(v5 + 1416) + 2320 * v11;
    v14 = *(v13 + 2300);
    if (v14 == 1)
    {
      v16 = *(v13 + 4);
      if (v16 == 72)
      {
        bzero(__src, 0x800uLL);
        bzero(v43, 0x800uLL);
        if ((sub_63058(__src, 0x800uLL, (v5 + 12), (v13 + 144)) & 0x80000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 506, 2, 0, "invalid path: %s");
          goto LABEL_17;
        }

        if (sub_62F94(v43, 0x800uLL, (v5 + 12), (v13 + 1168)))
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 507, 2, 0, "concatPath", v39, v40, v41);
          goto LABEL_17;
        }

        if (**v5 >= 3)
        {
          fprintf(__stderrp, "[%7d] HLINK (legacy) %s -> %s\n", *(v13 + 2296), (v13 + 144), v43);
        }

        unlink(__src);
        if (link(v43, __src))
        {
          sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 521, 2, "%s", __src);
          LODWORD(v14) = 7;
        }

        else
        {
          LODWORD(v14) = 3;
        }

        *(v13 + 2300) = v14;
        v14 = v14;
      }

      else if (v16 == 120)
      {
        bzero(__src, 0x800uLL);
        bzero(v43, 0x800uLL);
        if ((sub_63058(__src, 0x800uLL, (v5 + 12), (v13 + 144)) & 0x80000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 533, 2, 0, "invalid path: %s");
          goto LABEL_17;
        }

        if (sub_62F94(v43, 0x800uLL, (v5 + 12), (v13 + 1168)))
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 534, 2, 0, "concatPath", v39, v40, v41);
          goto LABEL_17;
        }

        if (**v5 >= 3)
        {
          fprintf(__stderrp, "[%7d] HLINK %s -> %s\n", *(v13 + 2296), (v13 + 144), (v13 + 1168));
        }

        unlink(__src);
        if (link(v43, __src))
        {
          sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 548, 2, "%s", __src);
          LODWORD(v14) = 7;
        }

        else
        {
          LODWORD(v14) = 3;
        }

        *(v13 + 2300) = v14;
        v14 = v14;
      }

      else
      {
        v17 = *(v13 + 4);
        if (v17 != 121)
        {
          if (v17 != 68)
          {
LABEL_63:
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 608, 2, 0, "Invalid entry state [%d] %s: %s", v4);
            goto LABEL_110;
          }

          v18 = (*v13 & 8) != 0 && *(v13 + 16) != 0;
          if ((*v13 & 0x10) != 0 && (~*(v13 + 20) & 0x1ED) != 0)
          {
            v18 = 1;
          }

          if (*(v13 + 2288))
          {
            v19 = 0;
          }

          else
          {
            v19 = (*v13 & 0x100) == 0;
          }

          if (v19 && *(v13 + 2280) == 0 && !v18)
          {
            *(v13 + 2300) = 3;
LABEL_27:
            if ((sub_6D348(v5, v13) & 0x80000000) != 0)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 599, 2, 0, "setEntryAttributes failed");
              v15 = 1;
              v14 = 7;
            }

            else
            {
              v15 = 1;
              v14 = 4;
            }
          }

          else
          {
            v15 = 0;
            v14 = 6;
          }

          *(v13 + 2300) = v14;
          goto LABEL_80;
        }

        bzero(__src, 0x800uLL);
        bzero(v43, 0x800uLL);
        if ((sub_63058(__src, 0x800uLL, (v5 + 12), (v13 + 144)) & 0x80000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 560, 2, 0, "invalid path: %s");
          goto LABEL_17;
        }

        if (sub_62F94(v43, 0x800uLL, (v5 + 12), (v13 + 1168)))
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 561, 2, 0, "concatPath");
          goto LABEL_17;
        }

        if (**v5 >= 3)
        {
          fprintf(__stderrp, "[%7d] CLONE %s -> %s\n", *(v13 + 2296), (v13 + 144), (v13 + 1168));
        }

        unlink(__src);
        if (clonefile(v43, __src, 0) && (sub_63BD8(v43, 0, 0xFFFFFFFFFFFFFFFFLL, __src) & 0x80000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 572, 2, 0, "cloning file, falling back to copy, failed: %s", __src);
          v12 = 0;
        }

        *(v13 + 2300) = 3;
        v14 = 3;
      }
    }

    else if (!*(v13 + 2300))
    {
      break;
    }

    if (v14 == 3)
    {
      goto LABEL_27;
    }

    if ((v14 & 0xFFFFFFFC) != 4)
    {
      goto LABEL_63;
    }

    v15 = 1;
LABEL_80:
    v22 = *v5;
    if (*(*v5 + 80))
    {
      v23 = *(v22 + 24);
      if ((v23 & 8) != 0)
      {
        *v13 |= 0x20u;
        *(v13 + 24) = v14 == 7;
        v22 = *v5;
        v23 = *(*v5 + 24);
      }

      if ((v23 & 0x20000) != 0)
      {
        *v13 |= 0x40u;
        *(v13 + 32) = *(v13 + 2312);
        v22 = *v5;
      }

      (*(v22 + 80))(*(v22 + 144), v13);
      v14 = *(v13 + 2300);
    }

    if (v14 == 7)
    {
      ++*(v5 + 1448);
    }

    if (**v5 < 2 || v14 == 5)
    {
      if (v15)
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (v14 == 7)
      {
        fprintf(__stderrp, "%s (with errors)\n");
      }

      else
      {
        fprintf(__stderrp, "%s\n");
      }

      if (v15)
      {
LABEL_94:
        sub_75BD4(*(v13 + 2280));
        sub_75BD4(*(v13 + 2288));
        goto LABEL_111;
      }
    }

    v25 = *(v5 + 1432);
    v26 = *(v5 + 1424);
    v27 = *(v5 + 1440);
    if (v25 >= v26)
    {
      v28 = v26 + (v26 >> 1);
      v19 = v26 == 0;
      v29 = 16;
      if (!v19)
      {
        v29 = v28;
      }

      *(v5 + 1424) = v29;
      v30 = reallocf(v27, 16 * v29);
      *(v5 + 1440) = v30;
      if (!v30)
      {
        v36 = *__error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 646, 2, v36, "Allocating deferred stack", v39, v40, v41);
        goto LABEL_110;
      }

      v27 = v30;
      v25 = *(v5 + 1432);
      bzero(&v30[16 * v25], 16 * (*(v5 + 1424) - v25));
    }

    v31 = &v27[16 * v25];
    v32 = pc_zero_coder_encode(__src, 2610, v13, 2320);
    *(v31 + 1) = v32;
    if (v32)
    {
      v33 = v32;
      v34 = malloc(v32);
      *v31 = v34;
      if (v34)
      {
        memcpy(v34, __src, v33);
        ++*(v5 + 1432);
        atomic_fetch_add_explicit((v5 + 1520), 1uLL, memory_order_relaxed);
        goto LABEL_111;
      }

      v35 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 661, 2, v35, "Allocating deferred entry", v39, v40, v41);
    }

    else
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 657, 2, 0, "zero_coder_encode", v39, v40, v41);
    }

LABEL_110:
    v12 = 0;
LABEL_111:
    bzero(v13, 0x910uLL);
    v37 = *(v5 + 1400);
    if (v37 + 1 == *(v5 + 1384))
    {
      v11 = 0;
    }

    else
    {
      v11 = v37 + 1;
    }

    *(v5 + 1400) = v11;
    v38 = *(v5 + 1392) - 1;
    *(v5 + 1392) = v38;
  }

  while (v38);
  if (v12)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

LABEL_18:
  pthread_mutex_unlock((v5 + 1192));
  return v6;
}

_BYTE *pc_zero_coder_decode(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = &a3[a4];
  v5 = &a1[a2];
  if (a2 >= 8 && a4 >= 9)
  {
    v6 = a1;
    while (1)
    {
      v7 = *a3;
      if (*a3)
      {
        v8 = a3[1];
        a3 += 2;
        if ((v7 & 2) != 0)
        {
LABEL_6:
          v10 = *a3++;
          v9 = v10;
          if ((v7 & 4) != 0)
          {
            goto LABEL_7;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v8 = 0;
        ++a3;
        if ((v7 & 2) != 0)
        {
          goto LABEL_6;
        }
      }

      v9 = 0;
      if ((v7 & 4) != 0)
      {
LABEL_7:
        v12 = *a3++;
        v11 = v12;
        if ((v7 & 8) != 0)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }

LABEL_11:
      v11 = 0;
      if ((v7 & 8) != 0)
      {
LABEL_8:
        v14 = *a3++;
        v13 = v14;
        goto LABEL_13;
      }

LABEL_12:
      v13 = 0;
LABEL_13:
      *v6 = v8;
      v6[1] = v9;
      v6[2] = v11;
      v6[3] = v13;
      if ((v7 & 0x10) != 0)
      {
        v22 = *a3++;
        v15 = v22;
        if ((v7 & 0x20) != 0)
        {
LABEL_15:
          v17 = *a3++;
          v16 = v17;
          if ((v7 & 0x40) != 0)
          {
            goto LABEL_16;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v15 = 0;
        if ((v7 & 0x20) != 0)
        {
          goto LABEL_15;
        }
      }

      v16 = 0;
      if ((v7 & 0x40) != 0)
      {
LABEL_16:
        v19 = *a3++;
        v18 = v19;
        if (v7 < 0)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

LABEL_20:
      v18 = 0;
      if (v7 < 0)
      {
LABEL_17:
        v21 = *a3++;
        v20 = v21;
        goto LABEL_22;
      }

LABEL_21:
      v20 = 0;
LABEL_22:
      v6[4] = v15;
      v6[5] = v16;
      v6[6] = v18;
      v6[7] = v20;
      v23 = v6 + 16;
      v6 += 8;
      if (v23 > v5 || a3 + 9 > v4)
      {
        goto LABEL_33;
      }
    }
  }

  v6 = a1;
LABEL_33:
  if (a3 < v4)
  {
    v24 = *a3++;
    v25 = v24 | 0x100;
    while (v6 != v5)
    {
      if (v25)
      {
        if (a3 == v4)
        {
          return (v6 - a1);
        }

        v27 = *a3++;
        v26 = v27;
      }

      else
      {
        v26 = 0;
      }

      *v6++ = v26;
      v28 = v25 > 3;
      v25 >>= 1;
      if (!v28)
      {
        goto LABEL_33;
      }
    }

    v6 = &a1[a2];
  }

  return (v6 - a1);
}

_BYTE *pc_zero_coder_encode(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (a2 < 9)
  {
    return 0;
  }

  v5 = &a3[a4];
  v6 = a1;
  while (a3 + 8 <= v5)
  {
    v7 = *a3;
    v8 = a3[1];
    v9 = a3[2];
    v10 = a3[3];
    if (!*a3)
    {
      v11 = v6 + 1;
      if (!a3[1])
      {
        goto LABEL_8;
      }

LABEL_7:
      *v11++ = v8;
      v7 |= 2u;
      goto LABEL_8;
    }

    v11 = v6 + 2;
    v6[1] = v7;
    v7 = 1;
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_8:
    if (v9)
    {
      *v11++ = v9;
      v7 |= 4u;
    }

    if (v10)
    {
      *v11++ = v10;
      v7 |= 8u;
    }

    v12 = a3[5];
    v13 = a3[6];
    v14 = a3[7];
    if (a3[4])
    {
      *v11++ = a3[4];
      v7 |= 0x10u;
    }

    if (v12)
    {
      *v11++ = v12;
      v7 |= 0x20u;
    }

    if (v13)
    {
      *v11++ = v13;
      v7 |= 0x40u;
    }

    if (v14)
    {
      *v11++ = v14;
      v7 |= 0x80u;
    }

    *v6 = v7;
    a3 += 8;
    v6 = v11;
    if (v11 + 9 > &a1[a2])
    {
      return 0;
    }
  }

  if (a3 >= v5)
  {
    v17 = v6;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = v6 + 1;
    v18 = -1 << (a4 & 7);
    v19 = 1;
    v20 = a3;
    do
    {
      v21 = *v20;
      if (v21)
      {
        *v17++ = v21;
        v18 |= 1 << v15;
      }

      v15 = ++v16;
      v20 = &a3[v19++];
    }

    while (v20 < v5);
    *v6 = v18;
  }

  return (v17 - a1);
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
    v5 = sub_682F8(a1, a2);
    if (v5)
    {
      DWORD2(v8) = a3;
      LODWORD(v8) = 0;
      DWORD1(v8) = sub_62BA4();
      *&v9 = 0x200000;
      *(&v9 + 1) = sub_68370;
      *(&v10 + 1) = v5;
      *&v11 = sub_71D88;
      v12 = &v7;
      if (!ParallelCompressionEncode(&v8))
      {
        if (v7 < v3)
        {
          v3 = v7;
        }

        goto LABEL_9;
      }

      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ParallelCompressionGetCompressedSize", 75, 39, 0, "ParallelCompressionEncode");
    }

    else
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ParallelCompressionGetCompressedSize", 64, 39, 0, "IMemStreamCreate");
    }

    v3 = -1;
LABEL_9:
    j__free(v5);
  }

  return v3;
}

uint64_t sub_71D9C(uint64_t a1)
{
  if (ParallelCompressionDecode(a1))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamThreadProc", 100, 39, 0, "decoder failed");
  }

  return 0;
}

uint64_t sub_71DE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x48uLL);
  v11 = v10;
  if (v10)
  {
    v10[2] = 0u;
    v10[3] = 0u;
    *v10 = 0u;
    v10[1] = 0u;
    v12 = sub_659B0(a4);
    *(v11 + 64) = v12;
    if (!v12)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 112, 39, 0, "fail to init buffer");
      goto LABEL_7;
    }

    *v11 = 0;
    *(v11 + 4) = a5;
    *(v11 + 8) = a1;
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    *(v11 + 32) = sub_66658;
    *(v11 + 40) = sub_66224;
    *(v11 + 48) = v12;
    if (sub_60BD4((v11 + 56), sub_71D9C, v11, 0))
    {
      v13 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 125, 39, v13, "failed to start decoder thread");
LABEL_7:
      sub_71F30(v11);
      return 0;
    }
  }

  else
  {
    v14 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 107, 39, *v14, "malloc");
  }

  return v11;
}

void sub_71F30(void *a1)
{
  if (a1)
  {
    if (a1[8])
    {
      while (1)
      {
        v2 = sub_666FC(a1[8], v5, 0x400uLL);
        if (v2 < 0)
        {
          break;
        }

        if (!v2)
        {
          goto LABEL_7;
        }
      }

      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 155, 39, 0, "flushing shared buffer");
    }

LABEL_7:
    v3 = a1[7];
    if (v3)
    {
      if (sub_60F34(v3))
      {
        v4 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 163, 39, *v4, "failed to join decoder thread");
      }
    }

    sub_65E5C(a1[8]);
    free(a1);
  }
}

uint64_t sub_72020(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    return sub_666FC(*(a1 + 64), a2, a3);
  }

  else
  {
    return -1;
  }
}

uint64_t sub_72034(uint64_t result)
{
  if (result)
  {
    return sub_66224(*(result + 64));
  }

  return result;
}

uint64_t sub_72044(uint64_t a1)
{
  if (ParallelCompressionEncode(a1))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamThreadProc", 192, 39, 0, "encoder failed");
  }

  return 0;
}

uint64_t sub_7208C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, int a7)
{
  v14 = malloc(0x60uLL);
  v15 = v14;
  if (v14)
  {
    v14[10] = 0;
    *(v14 + 3) = 0u;
    *(v14 + 4) = 0u;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
    v16 = sub_659B0(a4);
    *(v15 + 88) = v16;
    if (!v16)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamCreate", 204, 39, 0, "init buffer");
      goto LABEL_7;
    }

    *(v15 + 4) = a7;
    *(v15 + 8) = a5;
    *v15 = 0;
    *(v15 + 16) = a6;
    *(v15 + 24) = sub_666FC;
    *(v15 + 32) = sub_66224;
    *(v15 + 40) = v16;
    *(v15 + 48) = a1;
    *(v15 + 56) = a2;
    *(v15 + 64) = a3;
    if (sub_60BD4((v15 + 80), sub_72044, v15, 0))
    {
      v17 = *__error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamCreate", 219, 39, v17, "failed to start encoder thread");
LABEL_7:
      sub_721F8(v15);
      return 0;
    }
  }

  else
  {
    v18 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamCreate", 199, 39, *v18, "malloc");
  }

  return v15;
}

void sub_721F8(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 72))
    {
      sub_66658(*(a1 + 88), 0, 0);
    }

    v2 = *(a1 + 80);
    if (v2 && sub_60F34(v2))
    {
      v3 = __error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamDestroy", 260, 39, *v3, "failed to join encoder thread");
    }

    sub_65E5C(*(a1 + 88));

    free(a1);
  }
}

uint64_t sub_72290(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return -1;
  }

  v4 = *(a1 + 72);
  if (a3)
  {
    if (v4)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamWrite", 241, 39, 0, "extra bytes written after EOF has been sent");
      return -1;
    }
  }

  else
  {
    if (v4)
    {
      return 0;
    }

    *(a1 + 72) = 1;
  }

  v6 = *(a1 + 88);

  return sub_66658(v6, a2, a3);
}

uint64_t sub_72314(uint64_t result)
{
  if (result)
  {
    return sub_66224(*(result + 88));
  }

  return result;
}

uint64_t *sub_72324(int a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x10uLL);
  v11 = v10;
  if (v10)
  {
    v10[1] = 0;
    v12 = sub_66F58(a1, a2, a3);
    *v11 = v12;
    if (!v12 || (v13 = sub_71DE4(sub_6707C, sub_673E4, v12, a4, a5), (v11[1] = v13) == 0))
    {
      sub_72408(v11);
      return 0;
    }
  }

  else
  {
    v14 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IFileDecoderStreamCreateWithFD", 285, 39, *v14, "malloc");
  }

  return v11;
}

void sub_72408(uint64_t a1)
{
  if (a1)
  {
    sub_71F30(*(a1 + 8));
    sub_66F00(*a1);

    free(a1);
  }
}

void *sub_72454(const char *a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x10uLL);
  v11 = v10;
  if (v10)
  {
    v10[1] = 0;
    v12 = sub_66B80(a1, a2, a3);
    *v11 = v12;
    if (!v12 || (v13 = sub_71DE4(sub_6707C, sub_673E4, v12, a4, a5), (v11[1] = v13) == 0))
    {
      sub_72408(v11);
      return 0;
    }
  }

  else
  {
    v14 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IFileDecoderStreamCreateWithFilename", 304, 39, *v14, "malloc");
  }

  return v11;
}

uint64_t sub_72538(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 && (v3 = *(a1 + 8)) != 0)
  {
    return sub_666FC(*(v3 + 64), a2, a3);
  }

  else
  {
    return -1;
  }
}

uint64_t *sub_72554(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    result = sub_673E4(*result);
    v2 = v1[1];
    if (v2)
    {
      v3 = *(v2 + 64);

      return sub_66224(v3);
    }
  }

  return result;
}

void *sub_725A8(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, int a6)
{
  v12 = malloc(0x10uLL);
  v13 = v12;
  if (v12)
  {
    v12[1] = 0;
    v14 = sub_674D4(a1, a2);
    *v13 = v14;
    if (!v14 || (v15 = sub_7208C(sub_675A0, sub_67760, v14, a3, a4, a5, a6), (v13[1] = v15) == 0))
    {
      sub_7269C(v13);
      return 0;
    }
  }

  else
  {
    v16 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OFileEncoderStreamCreateWithFD", 355, 39, *v16, "malloc");
  }

  return v13;
}

void sub_7269C(uint64_t a1)
{
  if (a1)
  {
    sub_721F8(*(a1 + 8));
    sub_67550(*a1);

    free(a1);
  }
}

int **sub_726E8(const char *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, int a6)
{
  v12 = malloc(0x10uLL);
  v13 = v12;
  if (v12)
  {
    v12[1] = 0;
    v14 = sub_673F4(a1, a2);
    *v13 = v14;
    if (!v14 || (v15 = sub_7208C(sub_675A0, sub_67760, v14, a3, a4, a5, a6), (v13[1] = v15) == 0))
    {
      sub_7269C(v13);
      return 0;
    }
  }

  else
  {
    v16 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OFileEncoderStreamCreateWithFilename", 374, 39, *v16, "malloc");
  }

  return v13;
}

uint64_t *sub_727E4(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    result = sub_67760(*result);
    v2 = v1[1];
    if (v2)
    {
      v3 = *(v2 + 88);

      return sub_66224(v3);
    }
  }

  return result;
}

void *sub_72838(uint64_t (*a1)(uint64_t, uint64_t, unint64_t), uint64_t a2, uint64_t a3, const char *a4, ...)
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
      a4 = (&stru_FF8 + 8);
    }

    *v8 = 0uLL;
    v10 = sub_75AC4(a4);
    *(v9 + 56) = v10;
    if (!v10)
    {
      goto LABEL_26;
    }

    v11 = sub_75AC4(a4);
    *(v9 + 64) = v11;
    if (!v11)
    {
      goto LABEL_26;
    }

    *(v9 + 32) = -1;
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
    if (sub_75FD4(*(v9 + 56), 0xCuLL, a1, a3) != 12)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 465, 39, 0, "couldn't read enough header bytes from compressed file");
      goto LABEL_26;
    }

    v12 = sub_75C80(*(v9 + 56));
    if ((*(v9 + 32) & 0x80000000) != 0)
    {
      v13 = v12;
      if (*v12 == 25200 && *(v12 + 2) == 122)
      {
        v19 = 0;
        while (1)
        {
          v20 = v13[3];
          if (v20 == sub_758D4(v19))
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
        *(v9 + 48) = sub_75A04(v19);
        sub_75CDC(*(v9 + 56), 0xCuLL);
        if ((sub_75B58(*(v9 + 56), *(v9 + 40)) & 0x8000000000000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 487, 39, 0, "MemBufferIncreaseCapacity in");
        }

        else
        {
          if ((sub_75B58(*(v9 + 64), *(v9 + 40)) & 0x8000000000000000) == 0)
          {
            *(v9 + 32) = 0;
            return v9;
          }

          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 488, 39, 0, "MemBufferIncreaseCapacity out");
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

        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 503, 39, 0, "lzma_stream_decoder");
        goto LABEL_26;
      }

      v16 = *v13 == 23106 && v13[2] == 104;
      if (v16 && v13[3] - 49 <= 8)
      {
        if (BZ2_bzDecompressInit((v9 + 72), 0, 0))
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 514, 39, 0, "BZ2_bzDecompressInit");
LABEL_26:
          sub_72DBC(v9);
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
            sub_75CDC(*(v9 + 56), 2uLL);
            *(v9 + 32) = 2;
            return v9;
          }

          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 570, 39, 0, "compression_stream_init");
          goto LABEL_26;
        }
      }

      else if (v21 == 31 && v13[1] == 139 && v13[2] == 8)
      {
        if ((sub_75FD4(*(v9 + 56), 0x1000uLL, *v9, *(v9 + 16)) & 0x8000000000000000) != 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 525, 39, 0, "reading gzip header data");
          goto LABEL_26;
        }

        v22 = sub_75C6C(*(v9 + 56));
        if ((v13[3] & 4) != 0)
        {
          if (v22 <= 0xB)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 531, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }

          v23 = *(v13 + 5) + 12;
          if (v23 > v22)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 534, 39, 0, "parsing gzip header");
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
          if (v23 + 2 > v22)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 539, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }

          if (v23 + 2 < v22)
          {
            while (v13[v23 + 1])
            {
              if (v22 - 2 == ++v23)
              {
                v24 = v22;
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
          if (v24 + 2 > v22)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 545, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }

          if (v24 + 2 < v22)
          {
            while (v13[v24 + 1])
            {
              if (v22 - 2 == ++v24)
              {
                v25 = v22;
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
          if (v25 > v22)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 551, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }
        }

        sub_75CDC(*(v9 + 56), v25);
        if (compression_stream_init((v9 + 72), COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB))
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 557, 39, 0, "compression_stream_init");
          goto LABEL_26;
        }

        v26 = 2;
        goto LABEL_60;
      }

      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 579, 39, 0, "Could not identify compressed stream format");
      goto LABEL_26;
    }
  }

  else
  {
    v17 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 452, 39, *v17, "malloc");
  }

  return v9;
}

void sub_72DBC(uint64_t a1)
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

    sub_75BD4(*(a1 + 56));
    sub_75BD4(*(a1 + 64));
    j__free(*(a1 + 24));

    free(a1);
  }
}

void *sub_72E4C(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = sub_682F8(a1, a2);
  if (v4)
  {
    v5 = v4;
    result = sub_72838(sub_68370, sub_683E4, v4, a3);
    if (result)
    {
      result[3] = v5;
      return result;
    }

    j__free(v5);
  }

  else
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreateWithBuffer", 596, 39, 0, "IMemStreamCreate failed");
  }

  return 0;
}

uint64_t sub_72EE8(void *a1, char *a2, size_t a3)
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

      v8 = sub_75C6C(a1[8]);
      if (v8)
      {
        if (v8 >= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = v8;
        }

        v10 = sub_75C80(a1[8]);
        memcpy(a2, v10, v9);
        sub_75CDC(a1[8], v9);
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
        v23 = sub_75C6C(v11);
        v24 = v23;
        if (v23 <= 0xF)
        {
          if ((sub_75FD4(a1[7], 16 - v23, *a1, a1[2]) & 0x8000000000000000) != 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 645, 39, 0, "reading block header failed");
            return -1;
          }

          v25 = sub_75C6C(a1[7]);
          if (!v25)
          {
            *(a1 + 52) = 1;
            return v7;
          }

          v24 = v25;
        }

        v26 = sub_75C80(a1[7]);
        v28 = *v26;
        v27 = v26[1];
        v29 = bswap64(*v26);
        v30 = bswap64(v27);
        v31 = a1[5];
        if (v29 > v31 || v30 > v31)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 655, 39, 0, "invalid block header");
          return -1;
        }

        sub_75CDC(a1[7], 0x10uLL);
        v33 = v30 >= v24 - 16;
        v34 = v30 - (v24 - 16);
        if (v34 != 0 && v33)
        {
          if (sub_75FD4(a1[7], v34, *a1, a1[2]) != v34)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 665, 39, 0, "reading block payload failed");
            return -1;
          }

          sub_75C6C(a1[7]);
        }

        if (v28 == v27)
        {
          v35 = sub_75C90(a1[8]);
          v36 = sub_75C80(a1[7]);
          memcpy(v35, v36, v29);
        }

        else
        {
          v47 = a1[6];
          v48 = sub_75C90(a1[8]);
          v49 = sub_75C80(a1[7]);
          if (v47(v48, v29, v49, v30) != v29)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 677, 39, 0, "decoding block payload failed");
            return -1;
          }
        }

        sub_75CDC(a1[7], v30);
        sub_75D64(a1[8], v29);
        goto LABEL_64;
      }

      if ((sub_75FD4(v11, 0xFFFFFFFFFFFFFFFFLL, *a1, a1[2]) & 0x8000000000000000) != 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 687, 39, 0, "reading payload failed");
        return -1;
      }

      v12 = sub_75C80(a1[7]);
      v13 = sub_75C6C(a1[7]);
      v14 = sub_75C90(a1[8]);
      v15 = sub_75C74(a1[8]);
      v16 = v15;
      v17 = *(a1 + 8);
      switch(v17)
      {
        case 1:
          a1[9] = v12;
          a1[10] = v13;
          a1[12] = v14;
          a1[13] = v15;
          v42 = lzma_code();
          v43 = v42;
          if (v42 > 0xA || ((1 << v42) & 0x403) == 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 738, 39, 0, "decoding lzma payload");
            v50 = 1;
            goto LABEL_62;
          }

          v44 = a1[9];
          v45 = a1[12];
          sub_75CDC(a1[7], v44 - v12);
          if (v45 == v14 && v44 == v12)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          sub_75D64(a1[8], v45 - v14);
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
          *(a1 + 26) = v15;
          v37 = BZ2_bzDecompress((a1 + 9));
          if (v37 < 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 722, 39, 0, "decoding bzip2 payload");
            return -1;
          }

          v38 = v37;
          v39 = a1[9];
          v40 = a1[12];
          sub_75CDC(a1[7], v39 - v12);
          if (v40 == v14 && v39 == v12)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          sub_75D64(a1[8], v40 - v14);
          if (v38 != 4)
          {
            goto LABEL_64;
          }

          break;
        case 2:
          a1[11] = v12;
          a1[12] = v13;
          a1[9] = v14;
          a1[10] = v15;
          v18 = compression_stream_process((a1 + 9), 0);
          if (v18 < 0)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 706, 39, 0, "decoding zlib payload");
            return -1;
          }

          v19 = v18;
          v20 = a1[12];
          v21 = a1[10];
          sub_75CDC(a1[7], v13 - v20);
          if (v16 == v21 && v13 == v20)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          sub_75D64(a1[8], v16 - v21);
          if (v19 != COMPRESSION_STATUS_END)
          {
            goto LABEL_64;
          }

          break;
        default:
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 748, 39, 0, "invalid decoder: %d");
          return -1;
      }

      *(a1 + 52) = 1;
LABEL_64:
      if (v6 >= 3)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 753, 39, 0, "Truncated stream");
        return -1;
      }

      v50 = 0;
    }

    while (!v50);
  }

  return -1;
}

uint64_t sub_733E0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v2(*(result + 16));
    }

    v3 = *(v1 + 24);

    return sub_683E4(v3);
  }

  return result;
}

void *sub_7342C(int a1, unint64_t st_size, unint64_t a3, unsigned int a4)
{
  v8 = calloc(1uLL, 0x70uLL);
  if (!v8)
  {
    v12 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamCreateWithFD", 889, 39, *v12, "malloc");
    return v8;
  }

  memset(&v41, 0, sizeof(v41));
  if (fstat(a1, &v41))
  {
    v9 = *__error();
    v10 = "accessing file";
    v11 = 896;
    goto LABEL_20;
  }

  if (v41.st_size < st_size)
  {
    st_size = v41.st_size;
  }

  if (st_size + a3 > v41.st_size || a3 == -1)
  {
    a3 = v41.st_size - st_size;
  }

  *v8 = a1;
  if (pread(a1, &__buf, 0xCuLL, st_size) != 12)
  {
    v10 = "reading file header";
    v11 = 906;
    goto LABEL_19;
  }

  if (__buf != 25200 || v44 != 122)
  {
    v10 = "invalid file header";
    v11 = 907;
LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v16 = v45;
  if (v45 <= 0x64u)
  {
    switch(v45)
    {
      case '-':
        v17 = 6;
        break;
      case '4':
        v17 = 3;
        break;
      case 'b':
        v17 = 5;
        break;
      default:
        goto LABEL_35;
    }
  }

  else if (v45 > 0x77u)
  {
    if (v45 == 120)
    {
      v17 = 1;
    }

    else
    {
      if (v45 != 122)
      {
        goto LABEL_35;
      }

      v17 = 0;
    }
  }

  else
  {
    if (v45 != 101)
    {
      if (v45 == 102)
      {
        v17 = 2;
        goto LABEL_39;
      }

LABEL_35:
      v8[2] = 0;
LABEL_57:
      v40 = v16;
      v10 = "Unsupported decoder in file header: %c";
      v11 = 920;
      goto LABEL_19;
    }

    v17 = 4;
  }

LABEL_39:
  v18 = sub_75A04(v17);
  v8[2] = v18;
  if (!v18)
  {
    v16 = v45;
    goto LABEL_57;
  }

  *(v8 + 8) = bswap64(v46);
  v19 = st_size + 12;
  v20 = a3 + st_size;
  if (v19 < v20)
  {
    v21 = 0;
    v22 = 0;
    while (1)
    {
      if (pread(*v8, v42, 0x10uLL, v19) != 16)
      {
        v40 = v19;
        v10 = "reading block header at offset %llu";
        v11 = 932;
        goto LABEL_19;
      }

      v23 = bswap64(v42[0]);
      v24 = bswap64(v42[1]);
      v25 = *(v8 + 8);
      if (v25 < v23 || v25 < v24)
      {
        v10 = "Invalid sizes in file block header";
        v11 = 936;
        goto LABEL_19;
      }

      v28 = v8[5];
      v27 = v8[6];
      if (v28 >= v21)
      {
        if (v21)
        {
          v21 += v21 >> 1;
        }

        else
        {
          v21 = 32;
        }

        v27 = reallocf(v27, 32 * v21);
        v8[6] = v27;
        if (!v27)
        {
          v9 = *__error();
          v10 = "malloc";
          v11 = 944;
LABEL_20:
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamCreateWithFD", v11, 39, v9, v10, v40);
          sub_7392C(v8);
          return 0;
        }

        v28 = v8[5];
      }

      v29 = &v27[32 * v28];
      *v29 = v22;
      *(v29 + 2) = v23;
      *(v29 + 2) = v19 + 16;
      *(v29 + 6) = v24;
      *(v29 + 7) = -1;
      v8[5] = v28 + 1;
      v19 += 16 + v24;
      v22 += v23;
      if (v19 >= v20)
      {
        goto LABEL_59;
      }
    }
  }

  v22 = 0;
LABEL_59:
  if (v19 != v20)
  {
    v10 = "extra bytes found in file";
    v11 = 961;
    goto LABEL_19;
  }

  v8[3] = v22;
  *(v8 + 14) = a4;
  v30 = calloc(a4, 0x10uLL);
  v8[8] = v30;
  if (!v30)
  {
    v9 = *__error();
    v10 = "malloc";
    v11 = 967;
    goto LABEL_20;
  }

  v31 = calloc(*(v8 + 14), *(v8 + 8));
  v8[9] = v31;
  if (!v31)
  {
    v9 = *__error();
    v10 = "malloc";
    v11 = 969;
    goto LABEL_20;
  }

  v32 = *(v8 + 14);
  if (v32)
  {
    v33 = (v32 + 1) & 0x1FFFFFFFELL;
    v34 = vdupq_n_s64(v32 - 1);
    v35 = xmmword_10A0F0;
    v36 = (v8[8] + 16);
    v37 = vdupq_n_s64(2uLL);
    do
    {
      v38 = vmovn_s64(vcgeq_u64(v34, v35));
      if (v38.i8[0])
      {
        *(v36 - 2) = -1;
      }

      if (v38.i8[4])
      {
        *v36 = -1;
      }

      v35 = vaddq_s64(v35, v37);
      v36 += 4;
      v33 -= 2;
    }

    while (v33);
  }

  v39 = malloc(*(v8 + 8));
  v8[10] = v39;
  if (!v39)
  {
    v9 = *__error();
    v10 = "malloc";
    v11 = 977;
    goto LABEL_20;
  }

  return v8;
}

void sub_7392C(void **a1)
{
  if (a1)
  {
    free(a1[6]);
    free(a1[8]);
    free(a1[9]);
    free(a1[10]);

    free(a1);
  }
}

uint64_t sub_73988(uint64_t a1, char *__dst, unint64_t a3, unint64_t a4)
{
  ++*(a1 + 8);
  if (a3)
  {
    v6 = a3;
    v8 = 0;
    v40 = (a1 + 88);
    v38 = (a1 + 96);
    while (1)
    {
      if (a4 >= *(a1 + 24))
      {
        goto LABEL_38;
      }

      v9 = *(a1 + 32);
      v10 = a4 / v9;
      if (a4 / v9 >= *(a1 + 40))
      {
        break;
      }

      v11 = *(a1 + 48);
      v12 = v11 + 32 * v10;
      v13 = a4 % v9;
      v14 = *(v12 + 8);
      if (v14 <= (a4 % v9))
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamPRead", 1000, 39, 0, "Block offset out of range");
        return -1;
      }

      v15 = (v14 - v13);
      if (v6 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v6;
      }

      if (!v16)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamPRead", 1003, 39, 0, "Invalid block size in read");
        return -1;
      }

      v17 = *(v12 + 28);
      if (v17 == -1)
      {
        v19 = *(a1 + 56);
        v20 = *(a1 + 64);
        if (v19)
        {
          v21 = 0;
          v22 = (v20 + 8);
          LODWORD(v17) = -1;
          while (*(v22 - 1) != -1)
          {
            if (v17 == -1 || *v22 < *(v20 + 16 * v17 + 8))
            {
              LODWORD(v17) = v21;
            }

            ++v21;
            v22 += 2;
            if (v19 == v21)
            {
              goto LABEL_23;
            }
          }

          LODWORD(v17) = v21;
        }

        else
        {
          LODWORD(v17) = -1;
        }

LABEL_23:
        v23 = (v20 + 16 * v17);
        v24 = *(a1 + 72);
        if (*v23 != -1)
        {
          *(v11 + 32 * *v23 + 28) = -1;
          *v23 = -1;
        }

        v39 = (v20 + 16 * v17);
        v25 = (v17 * v9);
        v26 = *(v12 + 24);
        v27 = *a1;
        if (v14 == v26)
        {
          v28 = pread(v27, (v24 + v25), v14, *(v12 + 16));
          if (v28 < 0)
          {
            v34 = *__error();
            v32 = "read block";
            v33 = 862;
            goto LABEL_48;
          }

          if (*(v12 + 8) != v28)
          {
            v32 = "Truncated block";
            v33 = 863;
            goto LABEL_47;
          }
        }

        else
        {
          v36 = v25;
          v37 = v24;
          v29 = pread(v27, *(a1 + 80), v26, *(v12 + 16));
          if (v29 < 0)
          {
            v34 = *__error();
            v32 = "read block";
            v33 = 870;
            goto LABEL_48;
          }

          if (*(v12 + 24) != v29)
          {
            v32 = "Truncated block";
            v33 = 871;
LABEL_47:
            v34 = 0;
LABEL_48:
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "loadBlock", v33, 39, v34, v32);
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamPRead", 1006, 39, 0, "loading block");
            return -1;
          }

          v30 = (*(a1 + 16))(v37 + v36, *(a1 + 32), *(a1 + 80));
          if (v30 < 0 || *(v12 + 8) != v30)
          {
            v32 = "decoding compressed block";
            v33 = 874;
            goto LABEL_47;
          }
        }

        *(v12 + 28) = v17;
        v18 = v38;
        *v39 = v10;
      }

      else
      {
        v18 = v40;
        if (*(*(a1 + 64) + 16 * v17) != v10)
        {
          v32 = "Cache inconsistency";
          v33 = 835;
          goto LABEL_47;
        }
      }

      ++*v18;
      if (v17 >= *(a1 + 56))
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamPRead", 1007, 39, 0, "Invalid cache index");
        return -1;
      }

      v31 = *(a1 + 72);
      *(*(a1 + 64) + 16 * v17 + 8) = *(a1 + 8);
      memcpy(__dst, (v31 + (*(a1 + 32) * v17) + v13), v16);
      __dst += v16;
      a4 += v16;
      v8 += v16;
      v6 -= v16;
      if (!v6)
      {
        goto LABEL_38;
      }
    }

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IRandomAccessFileDecoderStreamPRead", 997, 39, 0, "Block index out of range");
    return -1;
  }

  v8 = 0;
LABEL_38:
  *(a1 + 104) += v8;
  return v8;
}

uint64_t sub_73D8C(uint64_t result)
{
  if (result)
  {
    *(result + 4) = 1;
  }

  return result;
}

size_t sub_73D9C(void *a1, size_t a2, void *__src, size_t __n)
{
  if (a2 < __n)
  {
    return -1;
  }

  v4 = __n;
  memcpy(a1, __src, __n);
  return v4;
}

size_t sub_73DDC(void *a1, size_t a2, void *__src, size_t __n)
{
  if (a2 < __n)
  {
    return -1;
  }

  v4 = __n;
  memcpy(a1, __src, __n);
  return v4;
}

uint64_t sub_73E1C(unsigned __int16 a1)
{
  v1 = (((a1 & 0xF000) - 4096) >> 12) - 3;
  if (v1 > 6)
  {
    return 0;
  }

  else
  {
    return dword_10B7B0[v1];
  }
}

uint64_t sub_73E4C(__int16 a1)
{
  v1 = (a1 & 0xF000) - 4096;
  if (v1 >> 14 > 2)
  {
    return 0;
  }

  else
  {
    return dword_10B780[v1 >> 12];
  }
}

void sub_73E7C(_DWORD *a1, uint64_t a2)
{
  bzero(a1, 0x830uLL);
  *(a1 + 1) = bswap64(*(a2 + 2));
  *a1 = *(a2 + 1);
  a1[4] = bswap32(*(a2 + 24)) >> 16;
  a1[5] = bswap32(*(a2 + 26)) >> 16;
  a1[6] = bswap32(*(a2 + 28)) >> 16;
  a1[7] = bswap32(*(a2 + 18));
  *(a1 + 5) = bswap64(*(a2 + 10));
}

void sub_73F04(unsigned int *a1, uint64_t a2)
{
  bzero(a1, 0x830uLL);
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = v5;
    v5 = *(a2 + 16 + v4++) & 7 | (8 * v5);
  }

  while (v4 != 8);
  v7 = ((((8 * v6) & 0xF000) - 4096) >> 12) - 3;
  if (v7 > 6)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_10B7B0[v7];
  }

  v9 = 0;
  v10 = 0;
  *a1 = v8;
  a1[6] = v5 & 0xFFF;
  do
  {
    v11 = *(a2 + 64 + v9++) & 7 | (8 * v10);
    v10 = v11;
  }

  while (v9 != 4);
  v12 = 0;
  v13 = 0;
  v14 = v11 << 24;
  do
  {
    v15 = *(a2 + 68 + v12++) & 7 | (8 * v13);
    v13 = v15;
  }

  while (v12 != 8);
  v16 = 0;
  v17 = 0;
  *(a1 + 1) = v15 + (v14 & 0x1FF000000);
  do
  {
    v18 = *(a2 + 47 + v16++) & 7 | (8 * v17);
    v17 = v18;
  }

  while (v16 != 4);
  v19 = 0;
  v20 = 0;
  v21 = v18 << 24;
  do
  {
    v22 = *(a2 + 51 + v19++) & 7 | (8 * v20);
    v20 = v22;
  }

  while (v19 != 8);
  v23 = 0;
  v24 = 0;
  *(a1 + 5) = v22 + (v21 & 0x1FF000000);
  do
  {
    v25 = *(a2 + 22 + v23++) & 7 | (8 * v24);
    v24 = v25;
  }

  while (v23 != 8);
  v26 = 0;
  v27 = 0;
  a1[4] = v25 & 0x3FFFF;
  do
  {
    v28 = *(a2 + 28 + v26++) & 7 | (8 * v27);
    v27 = v28;
  }

  while (v26 != 8);
  v29 = 0;
  v30 = 0;
  a1[5] = v28 & 0x3FFFF;
  do
  {
    v31 = *(a2 + 10 + v29++) & 7 | (8 * v30);
    v30 = v31;
  }

  while (v29 != 8);
  *(a1 + 4) = v31 & 0x3FFFF;
}

void sub_740C4(unsigned int *a1, uint64_t a2)
{
  bzero(a1, 0x830uLL);
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(a2 + 14 + v4);
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
  v8 = (((v5 & 0xF000) - 4096) >> 12) - 3;
  if (v8 > 6)
  {
    v9 = 0;
  }

  else
  {
    v9 = dword_10B7B0[v8];
  }

  v10 = 0;
  v11 = 0;
  *a1 = v9;
  a1[6] = v5 & 0xFFF;
  do
  {
    v12 = *(a2 + 54 + v10);
    v11 *= 16;
    v13 = v12 - 48;
    if ((v12 - 48) <= 0x36)
    {
      if (((1 << v13) & 0x3FF) != 0)
      {
        v11 = v11 + v12 - 48;
      }

      else if (((1 << v13) & 0x7E0000) != 0)
      {
        v11 = v11 + v12 - 55;
      }

      else if (((1 << v13) & 0x7E000000000000) != 0)
      {
        v11 = v11 + v12 - 87;
      }
    }

    ++v10;
  }

  while (v10 != 8);
  v14 = 0;
  v15 = 0;
  *(a1 + 1) = v11;
  do
  {
    v16 = *(a2 + 46 + v14);
    v15 *= 16;
    v17 = v16 - 48;
    if ((v16 - 48) <= 0x36)
    {
      if (((1 << v17) & 0x3FF) != 0)
      {
        v15 = v15 + v16 - 48;
      }

      else if (((1 << v17) & 0x7E0000) != 0)
      {
        v15 = v15 + v16 - 55;
      }

      else if (((1 << v17) & 0x7E000000000000) != 0)
      {
        v15 = v15 + v16 - 87;
      }
    }

    ++v14;
  }

  while (v14 != 8);
  v18 = 0;
  v19 = 0;
  *(a1 + 5) = v15;
  do
  {
    v20 = *(a2 + 22 + v18);
    v19 *= 16;
    v21 = v20 - 48;
    if ((v20 - 48) <= 0x36)
    {
      if (((1 << v21) & 0x3FF) != 0)
      {
        v19 = v19 + v20 - 48;
      }

      else if (((1 << v21) & 0x7E0000) != 0)
      {
        v19 = v19 + v20 - 55;
      }

      else if (((1 << v21) & 0x7E000000000000) != 0)
      {
        v19 = v19 + v20 - 87;
      }
    }

    ++v18;
  }

  while (v18 != 8);
  v22 = 0;
  v23 = 0;
  a1[4] = v19;
  do
  {
    v24 = *(a2 + 30 + v22);
    v23 *= 16;
    v25 = v24 - 48;
    if ((v24 - 48) <= 0x36)
    {
      if (((1 << v25) & 0x3FF) != 0)
      {
        v23 = v23 + v24 - 48;
      }

      else if (((1 << v25) & 0x7E0000) != 0)
      {
        v23 = v23 + v24 - 55;
      }

      else if (((1 << v25) & 0x7E000000000000) != 0)
      {
        v23 = v23 + v24 - 87;
      }
    }

    ++v22;
  }

  while (v22 != 8);
  v26 = 0;
  v27 = 0;
  a1[5] = v23;
  do
  {
    v28 = *(a2 + 6 + v26);
    v27 *= 16;
    v29 = v28 - 48;
    if ((v28 - 48) <= 0x36)
    {
      if (((1 << v29) & 0x3FF) != 0)
      {
        v27 = v27 + v28 - 48;
      }

      else if (((1 << v29) & 0x7E0000) != 0)
      {
        v27 = v27 + v28 - 55;
      }

      else if (((1 << v29) & 0x7E000000000000) != 0)
      {
        v27 = v27 + v28 - 87;
      }
    }

    ++v26;
  }

  while (v26 != 8);
  *(a1 + 4) = v27;
}

void sub_743F4(int *a1, uint64_t a2)
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

void *sub_745B0(int *a1, uint64_t a2)
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
  result = sub_73E4C(v16);
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

void *sub_74880(int *a1, uint64_t a2)
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
  result = sub_73E4C(v13);
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

uint64_t sub_74DD4(uint64_t result, char a2, unint64_t a3, unint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned __int16 a9)
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

uint64_t sub_74E2C(const char *a1, _DWORD *a2, _WORD *a3)
{
  v6 = strlen(a1);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *&a1[v8] & 0xDFDFDF;
      if (v11 <= 0x4B4E4B)
      {
        if ((*&a1[v8] & 0xDFDFDFu) > 0x444946)
        {
          if ((*&a1[v8] & 0xDFDFDFu) > 0x464158)
          {
            switch(v11)
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
            switch(v11)
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
          switch(v11)
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
          switch(v11)
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
          switch(v11)
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
          switch(v11)
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
        switch(v11)
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
        if (v11 == 5917011)
        {
          v9 |= 0x80u;
          goto LABEL_70;
        }

        if (v11 == 5920068)
        {
          v10 |= 1u;
          goto LABEL_70;
        }
      }

      else
      {
        if (v11 == 5653828)
        {
          v9 |= 0x20u;
          goto LABEL_70;
        }

        if (v11 == 5784649)
        {
          v10 |= 2u;
          goto LABEL_70;
        }
      }

      if (v8 + 3 < v7)
      {
        v12 = 3;
        do
        {
          v13 = a1[v8 + v12];
          if (v13 < 0)
          {
            if (!__maskrune(v13, 0x500uLL))
            {
              goto LABEL_71;
            }
          }

          else if ((_DefaultRuneLocale.__runetype[v13] & 0x500) == 0)
          {
            goto LABEL_71;
          }

          ++v12;
        }

        while (v7 - v8 != v12);
        v12 = v7 - v8;
        goto LABEL_71;
      }

LABEL_70:
      v12 = 3;
LABEL_71:
      v8 += v12;
      v14 = a1[v8];
      if (v14 == 32 || v14 == 44)
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