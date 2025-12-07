void sub_1000FD9FC(CC_SHA1_CTX *c, unsigned __int8 *md)
{
  if (c)
  {
    j__CC_SHA1_Final(md, c);

    free(c);
  }
}

uint64_t sub_1000FDA44(CC_SHA1_CTX *c, const void *a2, uint64_t a3)
{
  if (!c || c[1].h0)
  {
    return -1;
  }

  v4 = a3;
  j__CC_SHA1_Update(c, a2, a3);
  v7 = *&c[1].h2;
  if (!v7)
  {
    return v4;
  }

  v8 = *&c[1].Nh;

  return v7(v8, a2, v4);
}

uint64_t sub_1000FDAC4(uint64_t result)
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

uint64_t *sub_1000FDB04(uint64_t (*a1)(uint64_t, uint64_t *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc(a4 + 48);
  v9 = v8;
  if (v8)
  {
    bzero(v8, a4 + 48);
    v10 = a1(a3, v9 + 6, a4);
    if (v10 < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMagicStreamCreate", 138, 29, 0, "reading magic");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMagicStreamCreate", 133, 29, *v11, "malloc");
  }

  return v9;
}

uint64_t sub_1000FDBFC(uint64_t a1, char *__dst, size_t a3)
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

uint64_t sub_1000FDCE0(uint64_t result)
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

void *sub_1000FDD20(const char *a1, unint64_t a2, uint64_t a3)
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

      sub_1000FDE8C(v7);
      if ((sub_1000FDF10(v7, a2) & 0x80000000) == 0)
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
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFilename", v11, 29, v12, v10, v15);
  sub_1000FE0A0(v7);
  return 0;
}

uint64_t sub_1000FDE8C(uint64_t a1)
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

uint64_t sub_1000FDF10(uint64_t a1, unint64_t a2)
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
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "seekTo", v16, 29, v17, v15, v7, v6, v22, v23, v24, v25, v8, v9);
  return 0xFFFFFFFFLL;
}

void sub_1000FE0A0(char *a1)
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

uint64_t sub_1000FE0F8(int a1, unint64_t a2, uint64_t a3)
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFD", 325, 29, 0, "pthread_mutex_init");
    }

    else
    {
      sub_1000FDE8C(v7);
      if ((sub_1000FDF10(v7, a2) & 0x80000000) == 0)
      {
        return v7;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFD", 331, 29, 0, "seek error");
    }

    sub_1000FE0A0(v7);
    return 0;
  }

  else
  {
    v10 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFD", 314, 29, *v10, "malloc");
  }

  return v7;
}

unint64_t sub_1000FE21C(uint64_t a1, char *a2, size_t a3)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamRead", 358, 29, 0, "pos out of range");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamRead", 374, 29, *v13, "read");
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

unint64_t sub_1000FE358(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  v5 = *(a1 + 16);
  v6 = v5 + a4;
  if (__CFADD__(v5, a4) || (v7 = *(a1 + 24), v6 > v7))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamPRead", 397, 29, 0, "invalid offset");
    return -1;
  }

  v11 = v6 + a3;
  if (v6 + a3 >= v7)
  {
    v11 = *(a1 + 24);
  }

  if (!__CFADD__(v6, a3))
  {
    v7 = v11;
  }

  v8 = v7 - v6;
  if (pread(*a1, a2, v7 - v6, v6) == v7 - v6)
  {
    atomic_fetch_add((a1 + 104), v8);
    return v8;
  }

  if (pthread_mutex_lock((a1 + 40)))
  {
    return -1;
  }

  v12 = *(a1 + 32);
  v13 = sub_1000FDF10(a1, v6);
  v14 = sub_1000FE21C(a1, a2, v8);
  v15 = sub_1000FDF10(a1, v12);
  v8 = -1;
  if (!pthread_mutex_unlock((a1 + 40)) && (v15 & 0x80000000) == 0 && (v14 & 0x8000000000000000) == 0 && (v13 & 0x80000000) == 0)
  {
    atomic_fetch_add((a1 + 104), v14);
    return v14;
  }

  return v8;
}

uint64_t sub_1000FE488(uint64_t a1, uint64_t a2)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamSetPos", 435, 29, 0, "invalid pos", v3, v11, v4, v5);
    return -1;
  }

  if ((sub_1000FDF10(a1, v10) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamSetPos", 436, 29, 0, "changing pos", v3, v11, v4, v5);
    return -1;
  }

  return *(a1 + 32) - *(a1 + 16);
}

uint64_t sub_1000FE53C(uint64_t a1)
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

uint64_t sub_1000FE568(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  else
  {
    return *(a1 + 24) - *(a1 + 16);
  }
}

uint64_t sub_1000FE584(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

int *sub_1000FE594(const char *a1, uint64_t a2)
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFilename", 490, 29, *v7, "%s", a1);
      free(v5);
      return 0;
    }
  }

  else
  {
    v8 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFilename", 484, 29, *v8, "malloc");
  }

  return v5;
}

void *sub_1000FE674(int a1, uint64_t a2)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFD", 497, 29, *v6, "malloc");
  }

  return v5;
}

void sub_1000FE6F0(int *a1)
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

uint64_t sub_1000FE740(uint64_t a1, char *__buf, unint64_t a3)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamWrite", 538, 29, *v11, "write");
    return -1;
  }

  v3 = 0;
LABEL_18:
  *(a1 + 24) += v3;
  return v3;
}

off_t sub_1000FE824(int *a1, off_t a2)
{
  if (a1[2])
  {
    return -1;
  }

  result = lseek(*a1, a2, 0);
  if (result < 0)
  {
    v5 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamSetPos", 558, 29, *v5, "lseek", v2, v3);
    return -1;
  }

  return result;
}

off_t sub_1000FE88C(int *a1)
{
  if (a1[2])
  {
    return -1;
  }

  result = lseek(*a1, 0, 1);
  if (result < 0)
  {
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamGetPos", 568, 29, *v4, "lseek", v1, v2);
    return -1;
  }

  return result;
}

uint64_t sub_1000FE900(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

int *sub_1000FE910(const char *a1, unint64_t a2, unsigned int a3, int a4, uint64_t a5)
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
        v27 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", v14, 29, *v27, "%s", a1);
        ParallelCompressionAFSCStreamClose(0);
        goto LABEL_32;
      }
    }

    v16 = v13;
    if ((a3 & 8) != 0 && fcntl(v13, 48, 1))
    {
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 656, 29, "Warning: F_NOCACHE failed: %s\n", v17, v18, v19, a1);
    }

    if ((a3 & 2) != 0 && fcntl(v16, 68, 1) == -1)
    {
      v20 = __error();
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 665, 29, "Warning: F_SETSTATICCONTENT failed with error %d: %s\n", v21, v22, v23, *v20, a1);
    }

    if (a2 && (a3 & 4) != 0 && v5 != -1)
    {
      if ((a3 & 0x80) != 0)
      {
        v24 = 6;
      }

      else
      {
        v24 = 4;
      }

      v25 = ParallelCompressionAFSCStreamOpen(v16, a2, v5, v24);
      *(v11 + 3) = v25;
      if (!v25)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 677, 29, 0, "ParallelCompressionAFSCStreamOpen failed: %s", a1);
        ParallelCompressionAFSCStreamClose(0);
        close(v16);
LABEL_32:
        free(v11);
        return 0;
      }
    }

    else if ((a3 & 0x40) != 0)
    {
      v26 = fpathconf(v16, 27);
      if (v26 >= 1)
      {
        v11[10] = 1;
        if (v26 == 4096)
        {
          v11[18] = 4096;
        }

        else
        {
          v29 = 0x10000;
          if (v26 < 0x10000)
          {
            v29 = v26;
          }

          v30 = 1024;
          do
          {
            v31 = v30;
            v30 *= 2;
          }

          while (v31 < v29);
          v11[18] = v31;
        }
      }
    }
  }

  else
  {
    v15 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 617, 29, *v15, "malloc");
  }

  return v11;
}

int *sub_1000FEBCC(int a1, const char *a2, unint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  v6 = a6;
  v12 = malloc(0x60uLL);
  v13 = v12;
  if (!v12)
  {
    v25 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 740, 29, *v25, "malloc");
    return v13;
  }

  *(v12 + 8) = 0u;
  *(v12 + 11) = 0;
  *(v12 + 72) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 24) = 0u;
  *v12 = -1;
  *(v12 + 1) = (a4 >> 4) & 1;
  *(v12 + 2) = a3;
  if ((a4 & 0x100) == 0)
  {
    unlinkat(a1, a2, 0);
  }

  if ((a4 & 1) != 0 || a5 >= 1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 759, 29, 0, "non default protection class is not supported");
LABEL_24:
    ParallelCompressionAFSCStreamClose(0);
    goto LABEL_25;
  }

  v14 = openat(a1, a2, 1537, 420);
  *v13 = v14;
  if (v14 < 0)
  {
    v26 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 766, 29, v26, "%s");
    goto LABEL_24;
  }

  v15 = v14;
  if ((a4 & 8) != 0 && fcntl(v14, 48, 1))
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 774, 29, "Warning: F_NOCACHE failed: %s\n", v16, v17, v18, a2);
  }

  if ((a4 & 2) != 0 && fcntl(v15, 68, 1) == -1)
  {
    v19 = __error();
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 783, 29, "Warning: F_SETSTATICCONTENT failed with error %d: %s\n", v20, v21, v22, *v19, a2);
  }

  if (a3 && (a4 & 4) != 0 && v6 != -1)
  {
    if ((a4 & 0x80) != 0)
    {
      v23 = 6;
    }

    else
    {
      v23 = 4;
    }

    v24 = ParallelCompressionAFSCStreamOpen(v15, a3, v6, v23);
    *(v13 + 3) = v24;
    if (!v24)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 795, 29, 0, "ParallelCompressionAFSCStreamOpen failed: %s", a2);
      ParallelCompressionAFSCStreamClose(0);
      close(v15);
LABEL_25:
      free(v13);
      return 0;
    }
  }

  else if ((a4 & 0x40) != 0)
  {
    v28 = fpathconf(v15, 27);
    if (v28 >= 1)
    {
      v13[10] = 1;
      if (v28 == 4096)
      {
        v13[18] = 4096;
      }

      else
      {
        v29 = 0x10000;
        if (v28 < 0x10000)
        {
          v29 = v28;
        }

        v30 = 1024;
        do
        {
          v31 = v30;
          v30 *= 2;
        }

        while (v31 < v29);
        v13[18] = v31;
      }
    }
  }

  return v13;
}

uint64_t sub_1000FEEB8(unsigned int *a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 2))
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 863, 29, "OArchiveFileStream didn't receive enough data before being destroyed\n", a6, a7, a8);
  }

  ParallelCompressionAFSCStreamClose(*(a1 + 3));
  if ((*a1 & 0x80000000) != 0)
  {
    v13 = 0;
    v19 = 0xFFFFFFFFLL;
  }

  else
  {
    if (*(a1 + 7))
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = *(a1 + 8);
      while (fcntl(*a1, 99, v15 + v12) != -1)
      {
        v15 = *(a1 + 8);
        v13 += *(v15 + v12 + 16);
        ++v14;
        v12 += 24;
        if (v14 >= *(a1 + 7))
        {
          goto LABEL_14;
        }
      }

      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 875, 29, "F_PUNCHHOLE failed", v16, v17, v18);
    }

    else
    {
      v13 = 0;
    }

LABEL_14:
    if (a1[1] && fcntl(*a1, 51, 0) == -1)
    {
      v20 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 883, 29, *v20, "Final FULLSYNC");
    }

    v19 = *a1;
    if (!a2)
    {
      if (close(*a1))
      {
        v21 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamDestroyEx", 890, 29, *v21, "close");
      }

      v19 = 0xFFFFFFFFLL;
      *a1 = -1;
    }
  }

  if (a3)
  {
    *a3 = *(a1 + 4) - v13;
  }

  if (a4)
  {
    *a4 = v13;
  }

  free(*(a1 + 8));
  free(a1);
  return v19;
}

uint64_t sub_1000FF09C(uint64_t a1, char *__buf, unint64_t a3)
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
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 955, 29, 0, "ParallelCompressionAFSCStreamWrite failed with status %d");
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
          v39 = *__error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 960, 29, v39, "write");
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
                    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamWrite", 994, 29, "malloc holes failed", v33, v34, v35);
                  }
                }

                v36 = *(a1 + 56);
                if (v36 >= *(a1 + 48))
                {
                  LODWORD(v13) = *(a1 + 72);
                }

                else
                {
                  v37 = *(a1 + 64);
                  *(a1 + 56) = v36 + 1;
                  v38 = (v37 + 24 * v36);
                  *v38 = 0;
                  v38[1] = 0;
                  v38[1] = v24;
                  v38[2] = 0;
                  v13 = *(a1 + 72);
                  v38[2] = v13;
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

uint64_t sub_1000FF3A4(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

void *sub_1000FF3B4(uint64_t a1, uint64_t a2)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OMemStreamCreate", 1050, 29, *v6, "malloc");
  }

  return v5;
}

size_t sub_1000FF42C(uint64_t a1, const void *a2, size_t a3)
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

void *sub_1000FF498(uint64_t a1, uint64_t a2)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMemStreamCreate", 1112, 29, *v6, "malloc");
  }

  return v5;
}

size_t sub_1000FF510(uint64_t a1, void *__dst, size_t a3)
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

uint64_t sub_1000FF584(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

void ***sub_1000FF594(void **a1, void **a2, void **a3, size_t a4)
{
  v8 = malloc(0x28uLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 24) = 0u;
    *(v8 + 8) = 0u;
    v10 = sub_100120834(a4);
    *v9 = v10;
    if (v10)
    {
      v9[1] = a1;
      v9[2] = a2;
      v9[3] = a3;
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamCreate", 1182, 29, 0, "creating internal buffer");
      sub_1000FF670(v9);
      return 0;
    }
  }

  else
  {
    v11 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamCreate", 1176, 29, *v11, "malloc");
  }

  return v9;
}

void sub_1000FF670(void *a1)
{
  if (a1)
  {
    sub_100120EF4(*a1, 0xFFFFFFFFFFFFFFFFLL, a1[1], a1[3]);
    sub_100120944(*a1);

    free(a1);
  }
}

uint64_t sub_1000FF6C8(void *a1, char *a2, unint64_t a3)
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
      v8 = sub_1001209E4(*a1);
      if (!v8)
      {
        if (sub_100120EF4(*a1, 0xFFFFFFFFFFFFFFFFLL, a1[1], a1[3]) < 0)
        {
          return -1;
        }

        v8 = sub_1001209E4(*a1);
      }

      v9 = v6 >= v8 ? v8 : v6;
      if ((sub_100120B6C(*a1, v9, a2) & 0x8000000000000000) != 0)
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OBufferedStreamWrite", 1221, 29, 0, "MemBufferFillFromBuffer failed");
  }

  return -1;
}

uint64_t sub_1000FF7A8(uint64_t result)
{
  if (result)
  {
    *(result + 32) = 1;
  }

  return result;
}

_OWORD *sub_1000FF7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IHistoryStreamCreate", 1270, 29, *v10, "malloc");
  }

  return v9;
}

uint64_t sub_1000FF854(uint64_t a1, char *__dst, uint64_t a3, size_t a4)
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IHistoryStreamPRead", 1301, 29, 0, "history stream access out of range, requested %llu, available %llu");
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

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IHistoryStreamPRead", 1347, 29, 0, "read failed");
  return -1;
}

uint64_t sub_1000FFA4C(uint64_t result)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamOpen", 163, 86, *v11, "malloc");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamOpen", v10, 86, v12, v9, v29);
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
    v13 = dword_10037C22C[v14];
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
  *(v8 + 3) = xmmword_10037C1E0;
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
    while (v7 + 65537 <= *(a1 + 48) || (sub_100100000(a1) & 0x80000000) == 0)
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamWrite", 270, 86, 0, "update resource fork");
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamWrite", 262, 86, 0, "too many bytes received");
  }

  return -1;
}

uint64_t sub_100100000(uint64_t a1)
{
  v2 = fsetxattr(*a1, "com.apple.ResourceFork", *(a1 + 64), *(a1 + 56), *(a1 + 108), 0);
  if (v2 < 0)
  {
    v3 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "flushToResourceFork", 142, 86, *v3, "fsetxattr resource fork");
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
      if ((sub_100100000(a1) & 0x80000000) != 0)
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
      *v13 = xmmword_10037C1F8;
      *(v13 + 16) = unk_10037C208;
      *(v13 + 32) = xmmword_10037C218;
      *(v13 + 48) = 0;
      *(a1 + 56) = 50;
      if ((sub_100100000(a1) & 0x80000000) != 0)
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
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCStreamClose", v3, 86, v4, v2, v34);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadataFD", 488, 86, *v8, "fstat");
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadataFD", 501, 86, v14, "malloc");
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadataFD", v13, 86, 0, v12, v19);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadata", 550, 86, *v11, "open %s", a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    if ((ParallelCompressionAFSCGetMetadataFD(v8, a2, a3, a4) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCGetMetadata", 553, 86, 0, "retrieving AFSC metadata: %s", a1);
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
  v145 = -1;
  v144 = 0;
  v143 = 0;
  memset(&v142, 0, sizeof(v142));
  v161 = 0;
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v146 = 0u;
  value[0] = 0;
  value[1] = 0;
  if (__strlcpy_chk() >= 0x400)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 581, 86, 0, "Path too long: %s");
LABEL_5:
    v6 = 0;
    v7 = 0;
LABEL_138:
    v29 = 0;
    v53 = 0;
    v55 = 0;
    v26 = -1;
    goto LABEL_139;
  }

  if (__strlcat_chk() >= 0x400)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 582, 86, 0, "Path too long: %s");
    goto LABEL_5;
  }

  v7 = malloc(0x100000uLL);
  if (!v7)
  {
    v12 = *__error();
    v10 = "malloc";
    v11 = 586;
LABEL_137:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", v11, 86, v12, v10, v118, v119, v120, v121, v122);
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
      v118 = a3;
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
    v118 = v8;
    v10 = "Invalid compression type request %d";
    v11 = 608;
    goto LABEL_136;
  }

LABEL_16:
  if ((ParallelCompressionAFSCGetMetadata(a1, &v143, &v145, &v144) & 0x80000000) != 0)
  {
LABEL_134:
    v118 = a1;
    v10 = "obtain AFSC data: %s";
    v11 = 615;
    goto LABEL_136;
  }

  v16 = 0;
  v132 = 0;
  v17 = 0;
  v131 = (v7 + 66);
  v18 = vadd_s32(vdup_n_s32(a3), 0xFFFFFECEFFFFFFCELL);
  v19 = vrev32_s8(v18);
  position = v18.i32[0];
  v128 = bswap32(a3 - 310);
  v20 = (v8 - 4);
  v135 = 0x551u >> (v8 - 4);
  while (1)
  {
    v138 = v143;
    if (v143 >= 0xFA000001)
    {
      v10 = "Invalid AFSC data";
      v11 = 616;
      goto LABEL_136;
    }

    v137 = v16;
    if (v145 == v8)
    {
      if (!a3 || v144 == a3)
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
      v125 = v20;
      v21 = 4;
      if (v8 > 0xE)
      {
        v24 = v8;
      }

      else
      {
        v22 = 1 << v8;
        if (((1 << v8) & 0x5510) != 0)
        {
          v23 = 6;
        }

        else
        {
          v23 = 4;
        }

        if ((v22 & 0x2A88) != 0)
        {
          v21 = 4;
        }

        else
        {
          v21 = v23;
        }

        if ((v22 & 0x2A88) != 0)
        {
          v24 = v8 + 1;
        }

        else
        {
          v24 = v8;
        }
      }

      v25 = open(a1, 0);
      v26 = v25;
      if (v25 < 0)
      {
        v103 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 660, 86, v103, "open: %s");
      }

      else
      {
        if (!fstat(v25, &v142))
        {
          v27 = mkstemp(&__from);
          v28 = v27;
          if (v27 < 0)
          {
            v107 = __error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 664, 86, *v107, "mkstemp");
            v6 = 0;
            v29 = 0;
          }

          else
          {
            v129 = v17;
            v29 = ParallelCompressionAFSCStreamOpen(v27, v138, v24, v21);
            if (v29)
            {
              v133 = v8;
              v139 = v7;
              v30 = 0;
              v31 = 0;
              v32 = 0x100000;
              v33 = 0x100000;
              v34 = v138;
              while (1)
              {
                v35 = v34 >= v33 ? v33 : v34;
                if (v33 - 0x100000 >= v34)
                {
                  break;
                }

                v36 = v35 + v30;
                v37 = read(v26, v139, v35 + v30);
                if (v37 < 0)
                {
                  v96 = *__error();
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 675, 86, v96, "read: %s");
                  goto LABEL_152;
                }

                if (v37 < v36)
                {
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 676, 86, 0, "truncated read: %s");
LABEL_152:
                  v6 = 0;
LABEL_153:
                  v53 = 0;
                  v55 = 0;
                  v7 = v139;
                  goto LABEL_140;
                }

                v31 += 0x100000;
                v38 = ParallelCompressionAFSCStreamWrite(v29, v139, v36);
                v33 += 0x100000;
                v30 -= 0x100000;
                v34 = v138;
                if (v138 >= v31)
                {
                  v39 = v31;
                }

                else
                {
                  v39 = v138;
                }

                v32 -= 0x100000;
                if (v38 < (v39 + v32))
                {
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 678, 86, 0, "write to stream failed: %s");
                  goto LABEL_152;
                }
              }

              if ((ParallelCompressionAFSCStreamClose(v29) & 0x80000000) != 0)
              {
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 683, 86, 0, "Stream close error");
                v6 = 0;
                v29 = 0;
                goto LABEL_153;
              }

              fchown(v28, v142.st_uid, v142.st_gid);
              fchmod(v28, v142.st_mode & 0xFFF);
              close(v26);
              close(v28);
              rename(&__from, a1, v70);
              v72 = v71;
              unlink(&__from);
              v7 = v139;
              v8 = v133;
              v20 = v125;
              v17 = v129;
              if ((v72 & 0x80000000) == 0)
              {
                goto LABEL_55;
              }

              v12 = *__error();
              v118 = a1;
              v10 = "rename: %s";
              v11 = 694;
              goto LABEL_137;
            }

            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 667, 86, 0, "creating compression stream %s", a1);
            v6 = 0;
          }

          v53 = 0;
          v55 = 0;
          goto LABEL_140;
        }

        v105 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 661, 86, v105, "stat: %s");
      }

LABEL_149:
      v6 = 0;
      v29 = 0;
      v53 = 0;
      v55 = 0;
      goto LABEL_139;
    }

    v40 = open(a1, 9);
    v26 = v40;
    if (v40 < 0)
    {
      v99 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 629, 86, v99, "open %s");
      goto LABEL_149;
    }

    if (write(v40, 0, 0) < 0)
    {
      v101 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 630, 86, v101, "write", v118);
      goto LABEL_149;
    }

    if (close(v26) < 0)
    {
      v12 = *__error();
      v10 = "close";
      v11 = 631;
      goto LABEL_137;
    }

    v145 = -1;
    v144 = 0;
LABEL_55:
    if ((ParallelCompressionAFSCGetMetadata(a1, &v143, &v145, &v144) & 0x80000000) != 0)
    {
      v118 = a1;
      v10 = "obtain AFSC data: %s";
      v11 = 699;
      goto LABEL_136;
    }

    if (v145 != v8)
    {
      v10 = "Couldn't convert to requested compression type";
      v11 = 700;
      goto LABEL_136;
    }

    if (!a3)
    {
      goto LABEL_154;
    }

    v41 = v144;
    v42 = a3 - v144;
    if (a3 == v144)
    {
      goto LABEL_154;
    }

    if (a3 >= v144)
    {
      break;
    }

    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 711, 86, "Can't shrink resource fork: %s (current %u, target %u)", v13, v14, v15, a1, v144, a3);
    v43 = v8;
LABEL_61:
    if (v137)
    {
      v121 = v41;
      v122 = a3;
      v10 = "Second pass fixup failed: %s, compression_type=%d (expected %d), resource_fork_size=%u (expected %u)";
      v119 = v43;
      v120 = v8;
      v118 = a1;
      v11 = 852;
      goto LABEL_136;
    }

    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 859, 86, "First pass fixup failed: %s, compression_type=%d (expected %d), resource_fork_size=%u (expected %u)", v13, v14, v15, a1, v43, v8, v41, a3);
    v44 = open(a1, 9);
    v26 = v44;
    if (v44 < 0)
    {
      v100 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 864, 86, v100, "open %s");
      goto LABEL_149;
    }

    if (write(v44, 0, 0) < 0)
    {
      v102 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 865, 86, v102, "write", v118);
      goto LABEL_149;
    }

    if (close(v26) < 0)
    {
      v12 = *__error();
      v10 = "close";
      v11 = 866;
      goto LABEL_137;
    }

    v145 = -1;
    v144 = 0;
    v45 = ParallelCompressionAFSCGetMetadata(a1, &v143, &v145, &v144);
    v16 = 1;
    if (v45 < 0)
    {
      goto LABEL_134;
    }
  }

  if (v20 > 0xA || (v135 & 1) == 0)
  {
    v118 = v8;
    v10 = "Invalid compression type %u";
    v11 = 722;
    goto LABEL_136;
  }

  v136 = dword_10037C258[v20];
  v46 = open(a1, 0);
  v26 = v46;
  if (v46 < 0)
  {
    v104 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 727, 86, v104, "open: %s");
    goto LABEL_149;
  }

  if (fstat(v46, &v142))
  {
    v106 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 728, 86, v106, "fstat", v118);
    goto LABEL_149;
  }

  if (fgetxattr(v26, "com.apple.decmpfs", value, 0x10uLL, 0, 32) != 16)
  {
    v108 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 729, 86, v108, "Reading decmpfs", v118);
    goto LABEL_149;
  }

  if (fchflags(v26, v142.st_flags & 0xFFFFFFDF) < 0)
  {
    v109 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 730, 86, v109, "fchflags UF_COMPRESSED", v118);
    goto LABEL_149;
  }

  v130 = v17;
  v134 = v8;
  v124 = (v138 + 0xFFFF) >> 16;
  v126 = v20;
  v47 = v41 + 0x100000;
  v48 = -v41;
  v49 = v41;
  while (1)
  {
    v50 = a3 >= v47 ? v47 : a3;
    if (v49 >= a3)
    {
      break;
    }

    v51 = v50 + v48;
    if (v49 == v41)
    {
      __memset_chk();
    }

    v52 = fsetxattr(v26, "com.apple.ResourceFork", v7, v51, v49, 0);
    v47 += 0x100000;
    v48 -= 0x100000;
    v49 += 0x100000;
    if (v52)
    {
      v95 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 738, 86, v95, "Expanding resource fork", v118);
      goto LABEL_149;
    }
  }

  v53 = malloc(4 * v124 + 4);
  size = 4 * v124 + 4;
  v54 = malloc(size);
  v55 = v54;
  if (!v53 || !v54)
  {
    v110 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 744, 86, v110, "malloc");
    goto LABEL_186;
  }

  if (v134 != 4)
  {
    v64 = 4 * v124 + 4;
    if (fgetxattr(v26, "com.apple.ResourceFork", v53, size, 0, 32) != size)
    {
      v112 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 763, 86, v112, "Reading chunk sizes");
      goto LABEL_186;
    }

LABEL_99:
    v140 = v7;
    memcpy(v55, v53, v64);
    v55[v124] = v53[v124] + v42;
    v73 = (v138 + 0xFFFF) >> 16;
    while (v42 && v73)
    {
      v74 = v53[v73 - 1];
      v75 = v53[v73] - v74;
      if (fgetxattr(v26, "com.apple.ResourceFork", v140, v75, v74, 32) != v75)
      {
        v97 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 777, 86, *v97, "Reading chunk");
        v6 = 0;
        v29 = 0;
        v28 = -1;
        v7 = v140;
        goto LABEL_140;
      }

      v76 = 0x10000 - v75;
      if (v136 == *v140 || v75 > 0x10000)
      {
        v76 = 0;
      }

      if (v42 >= v76)
      {
        v78 = v76;
      }

      else
      {
        v78 = v42;
      }

      if (v76)
      {
        bzero(v140 + v75, v78);
      }

      v79 = (v78 + v75);
      v80 = v55[v73] - v79;
      v55[v73 - 1] = v80;
      v42 -= v78;
      --v73;
      if (fsetxattr(v26, "com.apple.ResourceFork", v140, v79, v80, 0))
      {
        v98 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 791, 86, *v98, "Writing chunk");
        v6 = 0;
        v29 = 0;
        v28 = -1;
        v7 = v140;
        goto LABEL_140;
      }
    }

    if (v134 == 4)
    {
      v81 = v159;
      v7 = v140;
      *(v140 + 51) = v158;
      *(v140 + 55) = v81;
      *(v140 + 59) = v160;
      v82 = v155;
      *(v140 + 35) = v154;
      *(v140 + 39) = v82;
      v83 = v157;
      *(v140 + 43) = v156;
      *(v140 + 47) = v83;
      v84 = v151;
      *(v140 + 19) = v150;
      *(v140 + 23) = v84;
      v85 = v153;
      *(v140 + 27) = v152;
      *(v140 + 31) = v85;
      v86 = v147;
      *(v140 + 3) = v146;
      *(v140 + 7) = v86;
      v87 = v149;
      *(v140 + 11) = v148;
      v17 = v130;
      *v140 = v130;
      *(v140 + 1) = v19;
      v88 = v161;
      *(v140 + 15) = v87;
      v140[63] = v88;
      v140[64] = v128;
      v140[65] = v132;
      if (v138)
      {
        if (v124 <= 1)
        {
          v89 = 1;
        }

        else
        {
          v89 = v124;
        }

        v90 = v55 + 1;
        v91 = *v55;
        v92 = v131;
        do
        {
          v93 = *v90++;
          *v92++ = (v91 - 260) | ((v93 - v91) << 32);
          v91 = v93;
          --v89;
        }

        while (v89);
      }

      if (fsetxattr(v26, "com.apple.ResourceFork", v140, 8 * v124 + 264, 0, 0))
      {
        v115 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 817, 86, v115, "Writing resource fork header");
        goto LABEL_186;
      }

      if (fsetxattr(v26, "com.apple.ResourceFork", &xmmword_10037C1F8, 0x32uLL, position, 0))
      {
        v117 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 820, 86, v117, "Writing resource map");
        goto LABEL_186;
      }
    }

    else
    {
      v7 = v140;
      v17 = v130;
      if (fsetxattr(v26, "com.apple.ResourceFork", v55, size, 0, 0))
      {
        v116 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 827, 86, v116, "Writing chunk sizes");
        goto LABEL_186;
      }
    }

    if (fsetxattr(v26, "com.apple.decmpfs", value, 0x10uLL, 0, 0))
    {
      v113 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 831, 86, v113, "Writing decmpfs");
      goto LABEL_186;
    }

    if (fchflags(v26, v142.st_flags | 0x20) < 0)
    {
      v114 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 832, 86, v114, "fchflags UF_COMPRESSED");
      goto LABEL_186;
    }

    close(v26);
    free(v53);
    free(v55);
    if ((ParallelCompressionAFSCGetMetadata(a1, &v143, &v145, &v144) & 0x80000000) == 0)
    {
      v43 = v145;
      v41 = v144;
      v8 = v134;
      if (v145 != v134)
      {
        v20 = v126;
        goto LABEL_61;
      }

      v20 = v126;
      if (v144 != a3)
      {
        goto LABEL_61;
      }

LABEL_154:
      if (v137)
      {
        sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 876, 86, "Second pass fixup succeeded: %s", v13, v14, v15, a1);
      }

      v29 = 0;
      v53 = 0;
      v55 = 0;
      v26 = -1;
      v6 = 1;
      goto LABEL_139;
    }

    v118 = a1;
    v10 = "obtain AFSC data: %s";
    v11 = 840;
    goto LABEL_136;
  }

  if (fgetxattr(v26, "com.apple.ResourceFork", v7, 8 * v124 + 264, 0, 32) == 8 * v124 + 264)
  {
    v56 = *v7;
    v57 = *(v7 + 55);
    v158 = *(v7 + 51);
    v159 = v57;
    v160 = *(v7 + 59);
    v161 = v7[63];
    v58 = *(v7 + 39);
    v154 = *(v7 + 35);
    v155 = v58;
    v59 = *(v7 + 47);
    v156 = *(v7 + 43);
    v157 = v59;
    v60 = *(v7 + 23);
    v150 = *(v7 + 19);
    v151 = v60;
    v61 = *(v7 + 31);
    v152 = *(v7 + 27);
    v153 = v61;
    v62 = *(v7 + 7);
    v146 = *(v7 + 3);
    v147 = v62;
    v63 = *(v7 + 15);
    v148 = *(v7 + 11);
    v149 = v63;
    v132 = v7[65];
    v130 = v56;
    if (v138)
    {
      v64 = 4 * v124 + 4;
      if (v124 <= 1)
      {
        v65 = 1;
      }

      else
      {
        v65 = v124;
      }

      v66 = v53 + 1;
      v67 = v131;
      do
      {
        v68 = *v67;
        v69 = *(v67++ + 1);
        v68 += 260;
        *(v66 - 1) = v68;
        *v66++ = v68 + v69;
        --v65;
      }

      while (v65);
    }

    else
    {
      v64 = 4 * v124 + 4;
    }

    goto LABEL_99;
  }

  v111 = *__error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 749, 86, v111, "Reading chunk sizes");
LABEL_186:
  v6 = 0;
  v29 = 0;
LABEL_139:
  v28 = -1;
LABEL_140:
  if ((ParallelCompressionAFSCStreamClose(v29) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCFixupMetadata", 877, 86, 0, "Stream close error");
    v6 = 0;
  }

  if ((v26 & 0x80000000) == 0)
  {
    close(v26);
  }

  if ((v28 & 0x80000000) == 0)
  {
    close(v28);
    unlink(&__from);
  }

  free(v7);
  free(v53);
  free(v55);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 907, 86, 0, "looking up AFSC data: %s");
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
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 950, 86, v32, "read: %s");
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
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", v26, 86, 0, v25, v33);
LABEL_42:
          v31 = 0;
LABEL_43:
          if ((ParallelCompressionAFSCStreamClose(v15) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 956, 86, 0, "AFSC compression failed: %s");
        }

        else
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 942, 86, 0, "creating AFSC stream: %s");
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 940, 86, v30, "open: %s");
    }

    else
    {
      v29 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 938, 86, v29, "malloc");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 921, 86, v28, "open: %s");
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = write(v5, 0, 0);
  if (v7 < 0)
  {
    v8 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 922, 86, *v8, "write: %s", a1);
  }

  if (close(v6) < 0)
  {
    v9 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ParallelCompressionAFSCStream.c", "ParallelCompressionAFSCCompress", 923, 86, *v9, "close: %s", a1);
  }

  return v7 >> 63;
}

unsigned int *sub_1001021B4(unsigned int a1, uint64_t a2, uint64_t a3)
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
          v14 = "SharedArrayInit: pthread_mutex_init failed\n";
          v15 = 56;
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

            v20 = 0;
            v21 = 0;
            while (1)
            {
              v22 = *(v7 + 1) + v20;
              *(v22 + 16) = v7;
              *(v22 + 8) = v21;
              *(v22 + 24) = *(a2 + 8 * v21);
              *(v22 + 32) = a3;
              *(v22 + 40) = 0;
              if (pthread_mutex_init((v22 + 48), 0) || pthread_cond_init((v22 + 112), 0))
              {
                v17 = "SemInit";
                v18 = 115;
                goto LABEL_12;
              }

              if ((sub_1000E766C(v22, sub_100102410, v22, 0) & 0x80000000) != 0)
              {
                break;
              }

              ++v21;
              v20 += 168;
              if (v21 >= *v7)
              {
                return v7;
              }
            }

            v17 = "Thread creation";
            v18 = 116;
            goto LABEL_12;
          }

          v14 = "SharedArrayInit: pthread_cond_init failed\n";
          v15 = 57;
        }
      }

      else
      {
        v14 = "SharedArrayInit: malloc failed\n";
        v15 = 55;
      }

      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v15, 0, v14, v11, v12, v13);
      v17 = "SharedArrayInit";
      v18 = 104;
LABEL_12:
      v16 = 0;
      goto LABEL_13;
    }

    v16 = *__error();
    v17 = "malloc";
    v18 = 103;
  }

  else
  {
    v16 = *__error();
    v17 = "malloc";
    v18 = 98;
  }

LABEL_13:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolCreate", v18, 90, v16, v17);
  sub_100102638(v7);
  return 0;
}

uint64_t sub_100102410(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  if (pthread_mutex_lock((v2 + 48)))
  {
LABEL_2:
    v7 = "SharedArrayPush: pthread_mutex_lock failed\n";
    v8 = 117;
  }

  else
  {
    while (1)
    {
      v9 = *(v2 + 32);
      v10 = *(v2 + 36);
      v11 = v9;
      if (v9 < v10)
      {
        *(*(v2 + 40) + 4 * v9) = v3;
        v11 = *(v2 + 32);
      }

      *(v2 + 32) = v11 + 1;
      if (!v11)
      {
        if (pthread_cond_broadcast((v2 + 112)))
        {
          break;
        }
      }

      if (pthread_mutex_unlock((v2 + 48)))
      {
        v7 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        v8 = 124;
        goto LABEL_3;
      }

      if (v9 >= v10)
      {
        v7 = "SharedArrayPush: stack is full\n";
        v8 = 125;
        goto LABEL_3;
      }

      if (pthread_mutex_lock((a1 + 48)))
      {
        goto LABEL_21;
      }

      while (1)
      {
        v12 = *(a1 + 40);
        if (v12 > 0)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 112), (a1 + 48)))
        {
          goto LABEL_21;
        }
      }

      *(a1 + 40) = v12 - 1;
      if (pthread_mutex_unlock((a1 + 48)))
      {
LABEL_21:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "threadPoolWorkerThreadProc", 59, 90, 0, "SemAcquire");
        goto LABEL_22;
      }

      v13 = *(a1 + 160);
      if (v13 != -2)
      {
        if (v13 < 0)
        {
          return a1;
        }

        if (((*(a1 + 32))(*(a1 + 24)) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "threadPoolWorkerThreadProc", 72, 90, 0, "worker proc reported an error");
          atomic_fetch_add_explicit((v2 + 160), 1u, memory_order_relaxed);
        }
      }

      v3 = *(a1 + 8);
      if (pthread_mutex_lock((v2 + 48)))
      {
        goto LABEL_2;
      }
    }

    v7 = "SharedArrayPush: pthread_cond_broadcast failed\n";
    v8 = 122;
  }

LABEL_3:
  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", v8, 0, v7, v4, v5, v6);
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "threadPoolWorkerThreadProc", 56, 90, 0, "SharedArrayPush");
LABEL_22:
  atomic_fetch_add_explicit((v2 + 160), 1u, memory_order_relaxed);
  return a1;
}

uint64_t sub_100102638(uint64_t result)
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
            v11 = 91;
            v12 = "SharedArrayPop: pthread_mutex_lock failed\n";
LABEL_15:
            sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v11, 0, v12, v8, v9, v10);
            v14 = -1;
          }

          else
          {
            while (1)
            {
              v13 = v1[8];
              if (v13)
              {
                break;
              }

              if (pthread_cond_wait((v1 + 28), (v1 + 12)))
              {
                v11 = 94;
                v12 = "SharedArrayPop: pthread_cond_wait failed\n";
                goto LABEL_15;
              }
            }

            v17 = v13 - 1;
            v1[8] = v17;
            v14 = *(*(v1 + 5) + 4 * v17);
            if (!pthread_mutex_unlock((v1 + 12)))
            {
              goto LABEL_17;
            }

            sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n", v18, v19, v20);
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 147, 90, 0, "SharedArrayPop");
          v7 = 0;
LABEL_17:
          v15 = *(v1 + 1) + 168 * v14;
          *(v15 + 160) = -1;
          if (pthread_mutex_lock((v15 + 48)) || (v16 = *(v15 + 40), *(v15 + 40) = v16 + 1, !v16) && pthread_cond_broadcast((v15 + 112)) || pthread_mutex_unlock((v15 + 48)))
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 155, 90, 0, "SemRelease");
            v7 = 0;
          }

          if ((sub_1000E79CC(*v15) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 156, 90, 0, "joinThread");
            v7 = 0;
          }

          *v15 = 0;
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
      v21 = 0;
      v22 = 112;
      do
      {
        v23 = (*(v1 + 1) + v22);
        if (!pthread_mutex_destroy(&v23[-2].__opaque[24]))
        {
          pthread_cond_destroy(v23);
        }

        ++v21;
        v22 += 168;
      }

      while (v21 < *v1);
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

    v24 = atomic_load(v1 + 40);
    if (v24 >= 1)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 171, 90, 0, "Threads reported errors");
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

uint64_t sub_100102924(uint64_t a1)
{
  if (*(a1 + 16) != -1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolGetWorker", 182, 90, 0, "Missing call to RunWorker before GetWorker");
    return 0;
  }

  if (pthread_mutex_lock((a1 + 48)))
  {
    v5 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v6 = 91;
LABEL_10:
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v6, 0, v5, v2, v3, v4);
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolGetWorker", 186, 90, 0, "SharedArrayPop failed");
    return 0;
  }

  while (1)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 112), (a1 + 48)))
    {
      v5 = "SharedArrayPop: pthread_cond_wait failed\n";
      v6 = 94;
      goto LABEL_10;
    }
  }

  v8 = v7 - 1;
  *(a1 + 32) = v8;
  v9 = *(*(a1 + 40) + 4 * v8);
  if (pthread_mutex_unlock((a1 + 48)))
  {
    v5 = "SharedArrayPop: pthread_mutex_unlock failed\n";
    v6 = 98;
    goto LABEL_10;
  }

  *(a1 + 16) = v9;
  return *(*(a1 + 8) + 168 * v9 + 24);
}

uint64_t sub_100102A58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == -1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolRunWorker", 199, 90, 0, "Missing call to GetWorker before RunWorker");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = -1;
  v2 = *(a1 + 8) + 168 * v1;
  v3 = *(a1 + 24);
  *(a1 + 24) = v3 + 1;
  *(v2 + 160) = v3;
  if (pthread_mutex_lock((v2 + 48)) || (v4 = *(v2 + 40), *(v2 + 40) = v4 + 1, !v4) && pthread_cond_broadcast((v2 + 112)) || (result = pthread_mutex_unlock((v2 + 48)), result))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolRunWorker", 211, 90, 0, "SemRelease failed");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100102B28(unsigned int *a1)
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
        v11 = 91;
        v12 = "SharedArrayPop: pthread_mutex_lock failed\n";
      }

      else
      {
        while (1)
        {
          v13 = a1[8];
          if (v13)
          {
            break;
          }

          if (pthread_cond_wait((a1 + 28), (a1 + 12)))
          {
            v11 = 94;
            v12 = "SharedArrayPop: pthread_cond_wait failed\n";
            goto LABEL_15;
          }
        }

        a1[8] = v13 - 1;
        if (!pthread_mutex_unlock((a1 + 12)))
        {
          goto LABEL_16;
        }

        v11 = 98;
        v12 = "SharedArrayPop: pthread_mutex_unlock failed\n";
      }

LABEL_15:
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v11, 0, v12, v8, v9, v10);
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolSync", 231, 90, 0, "SharedArrayPop");
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
  v14 = 0;
  v15 = 0;
  do
  {
    v16 = *(a1 + 1);
    if (*(v16 + v14))
    {
      if ((v17 = v16 + v14, *(v16 + v14 + 160) = -2, pthread_mutex_lock((v16 + v14 + 48))) || (v18 = *(v17 + 40), *(v17 + 40) = v18 + 1, !v18) && pthread_cond_broadcast((v16 + v14 + 112)) || pthread_mutex_unlock((v17 + 48)))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolSync", 240, 90, 0, "SemRelease");
        v7 = 0;
      }
    }

    ++v15;
    v14 += 168;
  }

  while (v15 < *a1);
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

uint64_t sub_100102D50(uint64_t a1, uint64_t *a2, uint64_t a3)
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
    if ((sub_100102D50(a1, v7 + 3, a3) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 456, 107, 0, "treeDelete: %zd");
      return 0xFFFFFFFFLL;
    }

    goto LABEL_30;
  }

  if (v7[1] <= a3)
  {
    if ((sub_100102D50(a1, v7 + 4, a3) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 463, 107, 0, "treeDelete: %zd");
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
        if ((sub_100102D50(a1, v12, v17) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 493, 107, 0, "treeDelete: %zd");
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
        if ((sub_10010307C(a1, a2) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 499, 107, 0, "treeRebalance: %zd");
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 490, 107, 0, "no nodePrev/Next: %zd");
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

uint64_t sub_10010307C(uint64_t a1, uint64_t *a2)
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
        if ((sub_100103F00(a1, &v23) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 360, 107, 0, "treeRotateLeft %zd");
          return 0xFFFFFFFFLL;
        }

        *(*(a1 + 8) + 56 * v2 + 24) = v23;
      }
    }

    if ((sub_100103DD0(a1, &v24) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 364, 107, 0, "treeRotateRight %zd");
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
        if ((sub_100103DD0(a1, &v23) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 347, 107, 0, "treeRotateRight %zd");
          return 0xFFFFFFFFLL;
        }

        *(*(a1 + 8) + 56 * v2 + 32) = v23;
      }
    }

    if ((sub_100103F00(a1, &v24) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 351, 107, 0, "treeRotateRight %zd");
      return 0xFFFFFFFFLL;
    }

LABEL_36:
    result = 0;
    *a2 = v24;
    return result;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 366, 107, 0, "invalid imbalance: %d");
  return 0xFFFFFFFFLL;
}

uint64_t sub_100103308(unint64_t *a1, uint64_t a2, uint64_t a3)
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
      if (v10 > a3 && (sub_100103440(a1, -1, v4, a3, v10) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeSub", 538, 107, 0, "treeAdd");
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

  if ((sub_100102D50(a1, v4, v9) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeSub", 525, 107, 0, "treeDeleteRangeWithPoint");
  return 0xFFFFFFFFLL;
}

uint64_t sub_100103440(unint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5)
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 391, 107, 0, "nodeAlloc");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "nodeAlloc", 43, 107, *v41, "malloc");
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
    if ((sub_100103440(a1, v10, &v42, a4, v26) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 418, 107, 0, "treeAdd: %zd");
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
    if ((sub_100103440(a1, v10, &v42, v27, a5) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 428, 107, 0, "treeAdd: %zd");
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
  if ((sub_10010307C(a1, &v43) & 0x80000000) == 0)
  {
    result = 0;
    *a3 = v43;
    return result;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 434, 107, 0, "treeRebalance: %zd");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeCreate", 551, 107, *v2, "malloc");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeClone", v6, 107, *v7, "malloc");
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
    if ((sub_100103440(a1, -1, (a1 + 16), a2, a3) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeAdd", 595, 107, 0, "addSegment");
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeAdd", 593, 107, 0, "Invalid segment bounds");
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
    if ((a1[2] & 0x8000000000000000) != 0 || (sub_100103308(a1, a2, a3) & 0x80000000) == 0)
    {
      return 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeSub", 612, 107, 0, "subSegment");
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeSub", 609, 107, 0, "Invalid segment bounds");
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
  v7 = sub_100103CCC(a1, *(a1 + 16), a2);
  if (v7 < 0)
  {
    return -1;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  v10 = *(v9 + 56 * v7);
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

uint64_t sub_100103CCC(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v8 = sub_100103CCC(a1, v7[3], a3);
      if ((v8 & 0x8000000000000000) == 0)
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

  return v8;
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

uint64_t sub_100103DD0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100103F00(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10010403C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  return 1;
}

uint64_t sub_10010404C(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *a1;
  if (a3)
  {
    v4 = a3;
    v5 = a3;
    do
    {
      v6 = *a2++;
      v3 = dword_10037C284[v6 ^ HIBYTE(v3)] ^ (v3 << 8);
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

uint64_t sub_10010409C(unsigned int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v2 = dword_10037C284[v3 ^ HIBYTE(v2)] ^ (v2 << 8);
      v4 = v3 > 0xFF;
      v3 >>= 8;
    }

    while (v4);
  }

  *a1 = ~v2;
  return 1;
}

AAArchiveStream AAExtractArchiveOutputStreamOpen(const char *dir, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v5 = n_threads;
  if (!n_threads)
  {
    v5 = sub_1000F4290();
  }

  v10 = malloc(0x38uLL);
  v11 = v10;
  if (v10)
  {
    memset_s(v10, 0x38uLL, 0, 0x38uLL);
  }

  memset(&v38, 0, sizeof(v38));
  v12 = malloc(0x690uLL);
  v13 = v12;
  if (v12)
  {
    memset_s(v12, 0x690uLL, 0, 0x690uLL);
    if (v11)
    {
      if (!realpath_DARWIN_EXTSN(dir, v13))
      {
        v20 = *__error();
        v37 = dir;
        v21 = "%s";
        v22 = 1611;
        goto LABEL_16;
      }

      if (stat(v13, &v38) || (v38.st_mode & 0xF000) != 0x4000)
      {
        v37 = dir;
        v21 = "Invalid directory: %s";
        v22 = 1612;
      }

      else
      {
        *(v13 + 1024) = flags;
        *(v13 + 1032) = msg_data;
        *(v13 + 1040) = msg_proc;
        *(v13 + 1656) = sub_1000F4248();
        *(v13 + 1640) = 0;
        *(v13 + 1056) = 1;
        *(v13 + 1072) = 0;
        *(v13 + 1076) = v5;
        v14 = calloc(v5, 4uLL);
        *(v13 + 1080) = v14;
        if (!v14)
        {
          v18 = "SharedArrayInit: malloc failed\n";
          v19 = 55;
          goto LABEL_22;
        }

        if (pthread_mutex_init((v13 + 1088), 0))
        {
          v18 = "SharedArrayInit: pthread_mutex_init failed\n";
          v19 = 56;
LABEL_22:
          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", v19, 0, v18, v15, v16, v17);
          v21 = "SharedArrayInit";
          v22 = 1619;
          goto LABEL_15;
        }

        if (pthread_cond_init((v13 + 1152), 0))
        {
          v18 = "SharedArrayInit: pthread_cond_init failed\n";
          v19 = 57;
          goto LABEL_22;
        }

        v24 = sub_1000F6F90(v13);
        v25 = -1;
        if (v24 < 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = v24;
        }

        v26 = 268;
        if ((v25 & 8) == 0)
        {
          v26 = 264;
        }

        v27 = v26 & 0xFFFFFFFFFFFFFFDFLL | (32 * (v25 & 1));
        if ((flags & 0x20) == 0 && (v25 & 2) != 0)
        {
          v28 = v27 | 0x40;
        }

        else
        {
          v28 = v27;
        }

        *(v13 + 1048) = v28;
        if (sub_1000F4CD8(v13) >= 1)
        {
          *(v13 + 1056) = 0;
        }

        for (i = 0; i != 240; i += 80)
        {
          *(v13 + i + 1376) = 0u;
          if (pthread_mutex_init((v13 + i + 1312), 0) < 0)
          {
            v30 = __error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterInit", 472, 72, *v30, "pthread_mutex_init");
            v21 = "cluster init";
            v22 = 1638;
            goto LABEL_15;
          }
        }

        *(v13 + 1200) = v13;
        if (pthread_mutex_init((v13 + 1216), 0))
        {
          v20 = *__error();
          v21 = "pthread_mutex_init";
          v22 = 1643;
          goto LABEL_16;
        }

        if ((sub_1000E766C((v13 + 1208), sub_10010464C, v13 + 1200, 0) & 0x80000000) == 0)
        {
          *(v13 + 1060) = v5;
          if (v5 < 0x2E8BA2E9)
          {
            v31 = calloc(v5, 0xB0uLL);
            *(v13 + 1064) = v31;
            if (v31)
            {
              if (!v5)
              {
LABEL_50:
                v11[3] = sub_100106550;
                v11[4] = sub_100107044;
                v11[2] = sub_100107730;
                *v11 = v13;
                v11[1] = sub_100105924;
                return v11;
              }

              v32 = 0;
              v33 = 176 * v5;
              while (1)
              {
                v34 = *(v13 + 1064);
                v35 = v34 + v32;
                *(v34 + v32) = v13;
                if (AASharedBufferPipeOpen((v34 + v32 + 32), (v34 + v32 + 40), 0x40000uLL) < 0)
                {
                  v21 = "creating shared data buffer";
                  v22 = 1654;
                  goto LABEL_15;
                }

                if (AASharedBufferPipeOpen((v35 + 16), (v35 + 24), 0x4000uLL) < 0)
                {
                  v21 = "creating shared command buffer";
                  v22 = 1655;
                  goto LABEL_15;
                }

                v36 = v34 + v32;
                if ((sub_1000F913C(v36 + 48) & 0x80000000) != 0)
                {
                  v21 = "SemInit failed";
                  v22 = 1656;
                  goto LABEL_15;
                }

                if ((sub_1000E766C((v36 + 8), sub_100104B2C, v35, 0) & 0x80000000) != 0)
                {
                  break;
                }

                v32 += 176;
                if (v33 == v32)
                {
                  goto LABEL_50;
                }
              }

              v21 = "creating worker thread";
              v22 = 1657;
              goto LABEL_15;
            }
          }

          else
          {
            *__error() = 12;
            *(v13 + 1064) = 0;
          }

          v20 = *__error();
          v21 = "malloc";
          v22 = 1649;
          goto LABEL_16;
        }

        v21 = "creating retire thread";
        v22 = 1644;
      }

LABEL_15:
      v20 = 0;
      goto LABEL_16;
    }
  }

  v20 = *__error();
  v21 = "malloc";
  v22 = 1610;
LABEL_16:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "AAExtractArchiveOutputStreamOpen", v22, 72, v20, v21, v37);
  free(v11);
  sub_100105924(v13);
  return 0;
}

pthread_mutex_t *sub_10010464C(pthread_mutex_t *a1)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadDequeue", 643, 72, *v7, "pthread_mutex_unlock");
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
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "hlinkInsertEntry", 455, 72, *v29, "malloc");
            sig[194] = 0;
            sig[195] = 0;
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadProc", 681, 72, 0, "hlinkInsertEntry failed: %s");
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
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "dirInsertEntry", 433, 72, *v31, "malloc");
          sig[197] = 0;
          sig[198] = 0;
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadProc", 687, 72, 0, "dirInsertEntry failed: %s");
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterInsertEntry", 561, 72, v22, "pthread_mutex_lock");
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterInsertEntry", 574, 72, 0, "entry already linked");
    if ((pthread_mutex_unlock(v12) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

LABEL_54:
    v30 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterInsertEntry", 585, 72, v30, "pthread_mutex_unlock");
LABEL_55:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadProc", 674, 72, 0, "clusterInsertEntry failed: %s");
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
    sub_100107750(v6);
LABEL_62:
    if (pthread_mutex_lock(v2))
    {
LABEL_63:
      v33 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadDequeue", 637, 72, *v33, "pthread_mutex_lock");
      return a1;
    }
  }
}

uint64_t sub_100104B2C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2 = *v1;
  v3 = *(*v1 + 1064);
  bzero(v71, 0x800uLL);
  bzero(__s, 0x800uLL);
  bzero(__s2, 0x800uLL);
  v4 = malloc(0x40000uLL);
  if (!v4)
  {
    v62 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 756, 72, v62, "malloc");
LABEL_197:
    free(v4);
    return v1;
  }

  if (*(v2 + 1060) <= -1171354717 * ((v1 - v3) >> 4))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 757, 72, 0, "invalid thread ID %d");
    goto LABEL_197;
  }

  v66 = -1171354717 * ((v1 - v3) >> 4);
  v5 = 0;
  v65 = -1;
  while (1)
  {
LABEL_4:
    if (v5)
    {
      goto LABEL_22;
    }

    if (pthread_mutex_lock((v2 + 1088)))
    {
      v9 = 117;
      v10 = "SharedArrayPush: pthread_mutex_lock failed\n";
    }

    else
    {
      v11 = *(v2 + 1072);
      v12 = *(v2 + 1076);
      v13 = v11;
      if (v11 < v12)
      {
        *(*(v2 + 1080) + 4 * v11) = v66;
        v13 = *(v2 + 1072);
      }

      *(v2 + 1072) = v13 + 1;
      if (v13 || !pthread_cond_broadcast((v2 + 1152)))
      {
        if (pthread_mutex_unlock((v2 + 1088)))
        {
          v9 = 124;
          v10 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        }

        else
        {
          if (v11 < v12)
          {
            goto LABEL_17;
          }

          v9 = 125;
          v10 = "SharedArrayPush: stack is full\n";
        }
      }

      else
      {
        v9 = 122;
        v10 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      }
    }

    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", v9, 0, v10, v6, v7, v8);
LABEL_17:
    if (!pthread_mutex_lock((v1 + 56)))
    {
      while (1)
      {
        v14 = *(v1 + 48);
        if (v14 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v1 + 120), (v1 + 56)))
        {
          goto LABEL_22;
        }
      }

      *(v1 + 48) = v14 - 1;
      pthread_mutex_unlock((v1 + 56));
    }

LABEL_22:
    memset(buf, 0, 12);
    v15 = AAByteStreamRead(*(v1 + 24), buf, 0xCuLL);
    if (v15 != 12)
    {
      break;
    }

    if (SLODWORD(buf[0]) <= 68)
    {
      if (SLODWORD(buf[0]) <= 65)
      {
        if (LODWORD(buf[0]) == 65)
        {
LABEL_51:
          v27 = *(v1 + 168);
          if (v27)
          {
            v28 = v27 + 281;
            v29 = v27 + 275;
            v30 = v27 + 278;
            if (LODWORD(buf[0]) != 65)
            {
              v30 = 0;
            }

            if (LODWORD(buf[0]) == 88)
            {
              v30 = v29;
            }

            if (LODWORD(buf[0]) == 89)
            {
              v31 = v28;
            }

            else
            {
              v31 = v30;
            }

            if (*v31 + *(buf + 4) > v31[1])
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 931, 72, 0, "too many blob bytes received", v64);
              goto LABEL_111;
            }

            v37 = AAByteStreamRead(*(v1 + 40), (v31[2] + *v31), *(buf + 4));
            if (v37 < 0)
            {
              v40 = 933;
              goto LABEL_110;
            }

            v38 = *(buf + 4);
            *(buf + 4) -= v37;
            if (v37)
            {
              v39 = *v31 + v37;
              if (!__CFADD__(*v31, v37) && v39 <= v31[1])
              {
                *v31 = v39;
              }
            }

            if (v38 != v37)
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 936, 72, 0, "truncated read", v64);
              goto LABEL_111;
            }
          }

LABEL_77:
          v16 = 0;
        }

        else
        {
          if (LODWORD(buf[0]) == 42)
          {
            goto LABEL_199;
          }

LABEL_84:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 942, 72, 0, "Invalid thread command", v64);
LABEL_111:
          v16 = 1;
        }

        v5 = 1;
        goto LABEL_113;
      }

      if (LODWORD(buf[0]) == 66)
      {
        if (!*(v1 + 168))
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 786, 72, 0, "no entry in thread", v64);
          goto LABEL_111;
        }

        goto LABEL_77;
      }

      if (LODWORD(buf[0]) != 68)
      {
        goto LABEL_84;
      }

      v17 = *(v1 + 168);
      if (v17)
      {
        v18 = *(v17 + 2192);
        if (v18 == -1)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 847, 72, 0, "DAT size not received yet", v64);
          goto LABEL_111;
        }

        if (*(v17 + 2288))
        {
          goto LABEL_35;
        }

        if ((*(v17 + 2056) & 4) != 0)
        {
          v41 = 0;
          v42 = -1;
          if (v18 && (*(v17 + 2068) & 0x20) != 0)
          {
            if (*(v17 + 2128))
            {
              v42 = *(v17 + 2136);
            }

            else
            {
              v42 = 0;
            }

            if ((*(v17 + 2128) & 0x10) != 0)
            {
              v41 = *(v17 + 2156);
              v56 = *(v17 + 2152);
              if (v56)
              {
                if (v18 <= v56)
                {
                  v41 = v41 & 0xFFFFFFFC;
                  v42 = 10;
                }

                else
                {
                  v41 |= 3uLL;
                }
              }
            }

            else
            {
              v41 = 0;
            }
          }
        }

        else
        {
          v41 = 0;
          v42 = -1;
        }

        if ((*(v17 + 2128) & 8) != 0 && (*(v2 + 1030) & 2) != 0)
        {
          v43 = *(v17 + 2132);
        }

        else
        {
          v43 = -1;
        }

        if ((sub_1000F4744(v71, 0x800uLL, v2, *(v1 + 168)) & 0x80000000) != 0)
        {
          v55 = 885;
        }

        else
        {
          if (*(v2 + 1056))
          {
            sub_1000F6A60(v71);
          }

          __strlcpy_chk();
          v51 = strrchr(__s, 47);
          if (v51)
          {
            *v51 = 0;
            v52 = v51 + 1;
            if (v65 < 0)
            {
              goto LABEL_151;
            }

            if (!strcmp(__s, __s2))
            {
              v53 = v65;
            }

            else
            {
              close(v65);
LABEL_151:
              __strlcpy_chk();
              v53 = open(__s2, 0);
              if (v53 < 0)
              {
                v65 = v53;
                v54 = *(v17 + 2288);
LABEL_172:
                if (!v54)
                {
                  v60 = sub_100122190(-1, v71, *(v17 + 2192), v42, v41, v43, *(v2 + 1048));
                  *(v17 + 2288) = v60;
                  if (!v60)
                  {
                    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 904, 72, 0, "opening output file: %s");
                    goto LABEL_111;
                  }
                }

                while (1)
                {
LABEL_35:
                  if (!*(buf + 4))
                  {
                    v5 = 1;
                    goto LABEL_4;
                  }

                  v19 = *(buf + 4) >= 0x40000 ? 0x40000 : *(buf + 4);
                  v20 = AAByteStreamRead(*(v1 + 40), v4, v19);
                  if (v20 < 0)
                  {
                    break;
                  }

                  v21 = v20;
                  *(buf + 4) -= v20;
                  v22 = *(v17 + 2288);
                  if (*(v22 + 24))
                  {
                    v23 = 0;
                    if (v20)
                    {
                      v24 = v4;
                      v25 = v20;
                      while (1)
                      {
                        v26 = (*(v22 + 24))(*v22, v24, v25);
                        if (v26 < 1)
                        {
                          break;
                        }

                        v24 += v26;
                        v23 += v26;
                        v25 -= v26;
                        if (!v25)
                        {
                          goto LABEL_48;
                        }
                      }

                      v23 = v26;
                    }
                  }

                  else
                  {
                    v23 = -1;
                  }

LABEL_48:
                  if (v23 != v21)
                  {
                    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 915, 72, 0, "write failed %zd");
                    goto LABEL_111;
                  }
                }

                v40 = 912;
LABEL_110:
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", v40, 72, 0, "reading payload");
                goto LABEL_111;
              }
            }

            v65 = v53;
            v54 = sub_100122190(v53, v52, *(v17 + 2192), v42, v41, v43, *(v2 + 1048));
            *(v17 + 2288) = v54;
            goto LABEL_172;
          }

          v55 = 890;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", v55, 72, 0, "invalid path: %s");
        goto LABEL_111;
      }

      v16 = 0;
      v5 = 1;
    }

    else
    {
      if ((LODWORD(buf[0]) - 88) < 2)
      {
        goto LABEL_51;
      }

      if (LODWORD(buf[0]) == 69)
      {
        v32 = *(v1 + 168);
        if (!v32)
        {
          v16 = 0;
          v5 = 0;
          goto LABEL_113;
        }

        v33 = *(v32 + 2048);
        if (v33 == 70)
        {
          v34 = *(v32 + 2288);
          if (v34)
          {
            goto LABEL_66;
          }

          if (*(v32 + 2192))
          {
LABEL_92:
            v33 = *(v32 + 2048);
          }

          else
          {
            if ((*(v32 + 2128) & 8) != 0 && (*(v2 + 1030) & 2) != 0)
            {
              v50 = *(v32 + 2132);
            }

            else
            {
              v50 = -1;
            }

            if ((sub_1000F4744(v71, 0x800uLL, v2, *(v1 + 168)) & 0x80000000) != 0)
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 808, 72, 0, "invalid path: %s");
              goto LABEL_132;
            }

            if (*(v2 + 1056))
            {
              sub_1000F6A60(v71);
            }

            v34 = sub_100122190(-1, v71, *(v32 + 2192), 0xFFFFFFFF, 0, v50, *(v2 + 1048));
            *(v32 + 2288) = v34;
            if (!v34)
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 811, 72, 0, "opening output file: %s");
              goto LABEL_132;
            }

            v33 = *(v32 + 2048);
            if (v33 == 70)
            {
LABEL_66:
              *(v32 + 2296) = sub_1001231D8(v34);
              *(v32 + 2288) = 0;
              v35 = sub_100107984(v2, v32);
              v36 = *(v32 + 2296);
              if ((v36 & 0x80000000) == 0)
              {
                close(v36);
                *(v32 + 2296) = -1;
              }

              if (v35 < 0)
              {
                v48 = 822;
                goto LABEL_125;
              }

              if (*(v32 + 2300) != 2)
              {
                *(v32 + 2300) = 2;
              }

              goto LABEL_92;
            }
          }
        }

        if (v33 == 70 || v33 == 72)
        {
LABEL_95:
          if ((sub_100107D24(v2 + 1200, *(v1 + 168)) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 837, 72, 0, "sending entry to retire thread", v64);
            goto LABEL_132;
          }

          v16 = 0;
          v5 = 0;
          *(v1 + 168) = 0;
          goto LABEL_113;
        }

        if ((sub_1000F4744(v72, 0x800uLL, v2, v32) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 274, 72, 0, "invalid path: %s");
          goto LABEL_131;
        }

        v44 = *(v32 + 2048);
        if (v44 == 68)
        {
          memset(&v68, 0, sizeof(v68));
          if (!*(v2 + 1056) || lstat(v72, &v68))
          {
            goto LABEL_103;
          }

          if ((v68.st_mode & 0xF000) != 0x4000)
          {
            sub_1000F6A60(v72);
LABEL_103:
            if (mkdir(v72, 0x1EDu))
            {
              if (lstat(v72, &v68) || (v68.st_mode & 0xF000) != 0x4000)
              {
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 305, 72, 0, "mkdir failed: %s");
LABEL_131:
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 829, 72, 0, "creating fs object: %s");
                goto LABEL_132;
              }
            }

            else if ((*(v32 + 2056) & 3) != 0)
            {
              if (*(v32 + 2056))
              {
                v57 = *(v32 + 2060);
              }

              else
              {
                v57 = -1;
              }

              if ((*(v32 + 2056) & 2) != 0)
              {
                v61 = *(v32 + 2064);
              }

              else
              {
                v61 = -1;
              }

              chown(v72, v57, v61);
            }
          }
        }

        else
        {
          if (*(v2 + 1056))
          {
            sub_1000F6A60(v72);
            v44 = *(v32 + 2048);
          }

          switch(v44)
          {
            case 'H':
              if (link((v32 + 1024), v72))
              {
                v59 = *__error();
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 320, 72, v59, "link %s");
                goto LABEL_131;
              }

              break;
            case 'P':
              if (mkfifo(v72, 0x1A4u))
              {
                v58 = *__error();
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 325, 72, v58, "mkfifo %s");
                goto LABEL_131;
              }

              break;
            case 'L':
              if (symlink((v32 + 1024), v72))
              {
                v49 = *__error();
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 315, 72, v49, "symlink %s");
                goto LABEL_131;
              }

              break;
            default:
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "createFilesystemObject", 330, 72, 0, "not implemented yet");
              goto LABEL_131;
          }
        }

        if (*(v32 + 2300) != 2)
        {
          *(v32 + 2300) = 2;
        }

        if (*(v32 + 2048) != 68 && (sub_100107984(v2, v32) & 0x80000000) != 0)
        {
          v48 = 833;
LABEL_125:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", v48, 72, 0, "applyEntryAttributes failed: %s");
LABEL_132:
          v5 = 0;
          v16 = 1;
          goto LABEL_113;
        }

        goto LABEL_95;
      }

      if (LODWORD(buf[0]) != 70)
      {
        goto LABEL_84;
      }

      if ((sub_1001078C0(v1) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 792, 72, 0, "retire failed entry", v64);
        goto LABEL_132;
      }

      v16 = 0;
      v5 = 0;
    }

LABEL_113:
    v45 = *(buf + 4);
    if (*(buf + 4))
    {
      while (1)
      {
        v46 = v45 >= 0x40000 ? 0x40000 : v45;
        v47 = AAByteStreamRead(*(v1 + 40), v4, v46);
        if (v47 < 0)
        {
          break;
        }

        v45 = *(buf + 4) - v47;
        *(buf + 4) -= v47;
        if (!*(buf + 4))
        {
          goto LABEL_119;
        }
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 953, 72, 0, "reading payload");
LABEL_122:
      if ((sub_1001078C0(v1) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 959, 72, 0, "retire failed entry");
      }
    }

    else
    {
LABEL_119:
      if (v16)
      {
        goto LABEL_122;
      }
    }
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadProc", 775, 72, 0, "reading thread command, %zd", v15);
LABEL_199:
  free(v4);
  if ((v65 & 0x80000000) == 0)
  {
    close(v65);
  }

  return v1;
}

uint64_t sub_100105924(uint64_t a1)
{
  result = __chkstk_darwin(a1);
  if (!result)
  {
    return result;
  }

  v2 = result;
  v77 = *(result + 1024);
  if (atomic_load((result + 1600)))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1486, 72, 0, "stream cancelled");
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  if (*(v2 + 1632) || *(v2 + 1640))
  {
    sub_100107EA8(v2);
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1492, 72, 0, "invalid state on destroy");
    v4 = 0;
  }

  if (*(v2 + 1064))
  {
    v5 = *(v2 + 1060);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(v2 + 1064);
        if (v9)
        {
          v10 = v9 + v6;
          if (*(v10 + 8))
          {
            ++v8;
          }

          if (!v4)
          {
            v11 = *(v10 + 32);
            if (v11)
            {
              AAByteStreamCancel(v11);
              v5 = *(v2 + 1060);
            }
          }
        }

        ++v7;
        v6 += 176;
      }

      while (v7 < v5);
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          if (pthread_mutex_lock((v2 + 1088)))
          {
            v16 = 91;
            v17 = "SharedArrayPop: pthread_mutex_lock failed\n";
LABEL_25:
            sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v16, 0, v17, v13, v14, v15);
          }

          else
          {
            while (1)
            {
              v18 = *(v2 + 1072);
              if (v18)
              {
                break;
              }

              if (pthread_cond_wait((v2 + 1152), (v2 + 1088)))
              {
                v16 = 94;
                v17 = "SharedArrayPop: pthread_cond_wait failed\n";
                goto LABEL_25;
              }
            }

            v19 = v18 - 1;
            *(v2 + 1072) = v19;
            v20 = *(*(v2 + 1080) + 4 * v19);
            if (pthread_mutex_unlock((v2 + 1088)))
            {
              sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n", v21, v22, v23);
            }

            if (v20 != -1)
            {
              v24 = *(v2 + 1064) + 176 * v20;
              if (!pthread_mutex_lock((v24 + 56)))
              {
                v25 = *(v24 + 48);
                *(v24 + 48) = v25 + 1;
                if (v25 || !pthread_cond_broadcast((v24 + 120)))
                {
                  pthread_mutex_unlock((v24 + 56));
                }
              }

              v85 = 0;
              buf = 42;
              AAByteStreamWrite(*(v24 + 16), &buf, 0xCuLL);
              sub_1000E79CC(*(v24 + 8));
              AAByteStreamClose(*(v24 + 16));
              AAByteStreamClose(*(v24 + 24));
              AAByteStreamClose(*(v24 + 32));
              AAByteStreamClose(*(v24 + 40));
              if (!pthread_mutex_destroy((v24 + 56)))
              {
                pthread_cond_destroy((v24 + 120));
              }
            }
          }
        }
      }
    }

    free(*(v2 + 1064));
  }

  if (!pthread_mutex_destroy((v2 + 1088)) && !pthread_cond_destroy((v2 + 1152)))
  {
    free(*(v2 + 1080));
  }

  if (*(v2 + 1208))
  {
    sub_100107D24(v2 + 1200, 0);
    sub_1000E79CC(*(v2 + 1208));
    pthread_mutex_destroy((v2 + 1216));
  }

  if (*(v2 + 1632))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1541, 72, 0, "entry found in extract stream");
    sub_100107750(*(v2 + 1632));
    v4 = 0;
  }

  v26 = 0;
  v27 = (v2 + 1384);
  v81 = *(v2 + 1024);
  v78 = v4;
  v79 = v2 + 1312;
  do
  {
    v28 = v79 + 80 * v26;
    if (*(v28 + 64))
    {
      v29 = 0;
      v30 = (v81 & 0x10) == 0 && v26 == 2;
      v31 = v30;
      if (v30)
      {
        v32 = (v81 >> 7) & 1;
      }

      else
      {
        v32 = 0;
      }

      v82 = v32;
      v80 = v31 ^ 1 | ((v81 & 0x80) != 0);
      while (1)
      {
        v33 = (*(v28 + 72) + 32 * v29);
        if (!v33[1])
        {
          goto LABEL_100;
        }

        v34 = v33[2];
        v35 = v27;
        if (v34 != -1 || (v34 = v33[3], v35 = (v2 + 1464), v36 = (*(v28 + 72) + 32 * v29), v34 != -1))
        {
          v36 = (*v35 + 32 * v34);
        }

        v37 = *v36;
        if (*v36)
        {
          if (*(v37 + 575) == 3)
          {
            break;
          }
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1049, 72, 0, "no valid DAT entry for cluster %d/%llu", v26, v29);
        while (1)
        {
          v49 = v33[1];
          if (!v49)
          {
            break;
          }

          v33[1] = *(v49 + 8 * v26 + 2336);
          if (*(v49 + 2300) != -1)
          {
            *(v49 + 2300) = -1;
            v50 = *(v2 + 1040);
            if (v50)
            {
              v50(*(v2 + 1032), 22, v49, v49 + 2272);
            }
          }

          sub_100107750(v49);
        }

LABEL_100:
        if (++v29 >= *(v28 + 64))
        {
          goto LABEL_108;
        }
      }

      if ((sub_1000F4744(&buf, 0x800uLL, v2, *v36) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1071, 72, 0, "invalid DAT path");
      }

      while (1)
      {
        v48 = v33[1];
        if (!v48)
        {
          v27 = (v2 + 1384);
          goto LABEL_100;
        }

        v33[1] = *(v48 + 8 * v26 + 2336);
        if (v48 != v37)
        {
          break;
        }

LABEL_97:
        sub_100107750(v48);
      }

      v38 = sub_1000F4744(v83, 0x800uLL, v2, v48);
      if (v38 < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1082, 72, 0, "invalid path: %s", v48);
      }

      unlink(v83);
      if (v26)
      {
        if (v26 == 1)
        {
LABEL_70:
          if ((clonefile(&buf, v83, 0) & 0x80000000) == 0)
          {
            goto LABEL_80;
          }

          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1116, 72, "failed to create clone: %s", v39, v40, v41, v48);
LABEL_79:
          if ((sub_1000F56CC(&buf, v83, 0, v81 & 1, 0) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1123, 72, 0, "create copy: %s", v48);
            v43 = 0;
            goto LABEL_86;
          }

LABEL_80:
          v42 = 0;
          if ((v38 & 0x80000000) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_75;
        }

        if (!v82)
        {
          if (v80)
          {
            goto LABEL_79;
          }

          goto LABEL_70;
        }
      }

      if (link(&buf, v83) < 0)
      {
        v44 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1108, 72, v44, "failed to create hard link: %s");
        goto LABEL_90;
      }

      v42 = 1;
      if ((v38 & 0x80000000) == 0)
      {
LABEL_81:
        if (*(v48 + 2300) != 2)
        {
          *(v48 + 2300) = 2;
        }

        v43 = 1;
        if (v42)
        {
LABEL_87:
          if (v43)
          {
            v45 = 3;
LABEL_91:
            if (*(v48 + 2300) != v45)
            {
              *(v48 + 2300) = v45;
              v46 = *(v2 + 1040);
              if (v46)
              {
                if (v45 == -1)
                {
                  v47 = 22;
                }

                else
                {
                  v47 = 21;
                }

                v46(*(v2 + 1032), v47, v48, v48 + 2272);
              }
            }

            goto LABEL_97;
          }

LABEL_90:
          v45 = -1;
          goto LABEL_91;
        }

LABEL_86:
        if ((sub_100107984(v2, v48) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessClusters", 1129, 72, 0, "setting entry attributes: %s");
          goto LABEL_90;
        }

        goto LABEL_87;
      }

LABEL_75:
      v43 = 0;
      if (v42)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

LABEL_108:
    ++v26;
  }

  while (v26 != 3);
  if (!*(v2 + 1560))
  {
    goto LABEL_130;
  }

  v51 = 0;
  v52 = 1;
  while (2)
  {
    v53 = *(*(v2 + 1568) + 8 * v51);
    if ((sub_1000F4744(&buf, 0x800uLL, v2, v53) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessHLinks", 1007, 72, 0, "invalid 'H' PAT", v75, v76);
LABEL_119:
      v55 = 0;
      v56 = -1;
      goto LABEL_120;
    }

    if ((sub_1000F4744(v83, 0x800uLL, v2, (v53 + 1024)) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessHLinks", 1008, 72, 0, "invalid 'H' LNK", v75, v76);
      goto LABEL_119;
    }

    if (*(v2 + 1056))
    {
      sub_1000F6A60(&buf);
    }

    if (link(v83, &buf))
    {
      v54 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessHLinks", 1010, 72, v54, "link %s ->%s");
      goto LABEL_119;
    }

    v55 = 1;
    v56 = 3;
LABEL_120:
    if (*(v53 + 2300) != v56)
    {
      *(v53 + 2300) = v56;
      v57 = *(v2 + 1040);
      if (v57)
      {
        if (v56 == -1)
        {
          v58 = 22;
        }

        else
        {
          v58 = 21;
        }

        v57(*(v2 + 1032), v58, v53, v53 + 2272);
      }
    }

    sub_100107750(v53);
    *(*(v2 + 1568) + 8 * v51) = 0;
    v52 &= v55;
    if (++v51 < *(v2 + 1560))
    {
      continue;
    }

    break;
  }

  *(v2 + 1560) = 0;
  if (!v52)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1550, 72, 0, "process hlinks");
    v78 = 0;
  }

LABEL_130:
  v59 = *(v2 + 1584);
  if (v59)
  {
    v60 = v59 - 1;
    v61 = 1;
    while (1)
    {
      v62 = *(*(v2 + 1592) + 8 * v60);
      if ((sub_1000F4744(&buf, 0x800uLL, v2, v62) & 0x80000000) != 0)
      {
        break;
      }

      if ((sub_100107984(v2, v62) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessDirs", 984, 72, 0, "applyEntryAttributes failed");
        goto LABEL_137;
      }

      v63 = 1;
LABEL_138:
      sub_100107750(v62);
      *(*(v2 + 1592) + 8 * v60) = 0;
      v61 &= v63;
      if (--v60 == -1)
      {
        *(v2 + 1584) = 0;
        v64 = v78;
        if (!v61)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1553, 72, 0, "process dirs");
          v64 = 0;
        }

        goto LABEL_142;
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamProcessDirs", 983, 72, 0, "invalid 'D' PAT");
LABEL_137:
    v63 = 0;
    goto LABEL_138;
  }

  v64 = v78;
LABEL_142:
  if (atomic_load((v2 + 1604)))
  {
    v66 = atomic_load((v2 + 1604));
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamClose", 1556, 72, 0, "%u entries failed to extract", v66);
    v64 = 0;
  }

  else if (v64 && v77 >> 62)
  {
    v67 = sub_1000F4248() - *(v2 + 1656);
    v64 = 1;
    fwrite("Extract archive\n", 0x10uLL, 1uLL, __stderrp);
    fprintf(__stderrp, "%12u worker threads\n", *(v2 + 1060));
    fprintf(__stderrp, "%12u directories\n", *(v2 + 1672));
    fprintf(__stderrp, "%12u regular files\n", *(v2 + 1668));
    fprintf(__stderrp, "%12u symbolic links\n", *(v2 + 1676));
    fprintf(__stderrp, "%12u entries\n", *(v2 + 1664));
    fprintf(__stderrp, "%12.2f time (s)\n", v67);
  }

  for (j = 0; j != 3; ++j)
  {
    v69 = v79 + 80 * j;
    if (*(v69 + 64))
    {
      v70 = 0;
      do
      {
        v71 = *(v69 + 72);
        v72 = *(v71 + 32 * v70 + 8);
        if (v72)
        {
          do
          {
            fprintf(__stderrp, "pending %s\n", v72);
            v72 = *&v72[8 * j + 2336];
          }

          while (v72);
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterFree", 485, 72, 0, "cluster has pending entries %d/%llu", j, v70);
          goto LABEL_155;
        }

        while (1)
        {
          v73 = (v71 + 32 * v70);
          v74 = v73[1];
          if (!v74)
          {
            break;
          }

          v73[1] = *(v74 + 8 * v70 + 2336);
          sub_100107750(v74);
LABEL_155:
          v71 = *(v69 + 72);
        }

        sub_100107750(*v73);
        ++v70;
      }

      while (v70 < *(v69 + 64));
    }

    pthread_mutex_destroy(v69);
    free(*(v69 + 72));
  }

  free(*(v2 + 1568));
  free(*(v2 + 1624));
  memset_s((v2 + 1616), 0x10uLL, 0, 0x10uLL);
  free(*(v2 + 1304));
  free(*(v2 + 1592));
  free(v2);
  return (v64 - 1);
}

uint64_t sub_100106550(uint64_t a1, AAHeader header)
{
  size = 0;
  value = -1;
  offset = 0;
  v3 = *(a1 + 1024);
  *(a1 + 1608) = 0;
  if (*(a1 + 1632) || *(a1 + 1640))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1245, 72, 0, "invalid extract state");
LABEL_4:
    sub_100107EA8(a1);
    return 0xFFFFFFFFLL;
  }

  v7.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v7);
  if ((KeyIndex & 0x80000000) != 0 || AAHeaderGetFieldUInt(header, KeyIndex, &value) >= 2)
  {
    v19 = "AA entry missing TYP field";
    v20 = 1249;
LABEL_23:
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", v20, 72, v19, v9, v10, v11);
    goto LABEL_24;
  }

  if (value - 66 > 0x11 || ((1 << (value - 66)) & 0x24457) == 0)
  {
    result = 0;
    *(a1 + 1608) = 1;
    return result;
  }

  length[0] = 0;
  v13.ikey = 5521744;
  v14 = AAHeaderGetKeyIndex(header, v13);
  if ((v14 & 0x80000000) != 0 || AAHeaderGetFieldString(header, v14, 0x400uLL, __s, length) >= 2)
  {
    v19 = "YAA entry missing/invalid PAT field";
    v20 = 1274;
    goto LABEL_23;
  }

  v15 = *(a1 + 1040);
  if (v15)
  {
    v16 = v15(*(a1 + 1032), 20, __s, header);
    if (v16 < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1284, 72, 0, "user cancelled");
      goto LABEL_4;
    }

    if (!v16)
    {
      v17 = (*(a1 + 1040))(*(a1 + 1032), 27, __s, length);
      if (v17 < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1289, 72, 0, "user cancelled");
        goto LABEL_4;
      }

      if (v17)
      {
        __strlcpy_chk();
      }

      goto LABEL_19;
    }

LABEL_24:
    result = 0;
    *(a1 + 1608) = 1;
    return result;
  }

LABEL_19:
  v18 = value;
  if (strlen(__s) >= 0x400)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryCreate", 198, 72, 0, "path too long");
LABEL_33:
    *(a1 + 1632) = 0;
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1295, 72, 0, "entry creation");
    goto LABEL_4;
  }

  v21 = malloc(0x938uLL);
  if (!v21)
  {
    v23 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryCreate", 200, 72, v23, "malloc");
    goto LABEL_33;
  }

  v22 = v21;
  memset_s(v21, 0x938uLL, 0, 0x938uLL);
  __memcpy_chk();
  *(v22 + 256) = v18;
  *(v22 + 574) = -1;
  *(v22 + 289) = -1;
  *(v22 + 290) = -1;
  *(v22 + 291) = -1;
  *(v22 + 273) = -1;
  *(v22 + 274) = -1;
  atomic_store(1u, v22 + 576);
  *(a1 + 1632) = v22;
  ++*(a1 + 1664);
  switch(value)
  {
    case 'L':
      ++*(a1 + 1676);
      break;
    case 'F':
      ++*(a1 + 1668);
      break;
    case 'D':
      ++*(a1 + 1672);
      break;
  }

  if ((sub_1000ED290(a1 + 1616, header) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1307, 72, 0, "Eerror getting blobs from header");
    goto LABEL_4;
  }

  if ((sub_10010ABC0(v22 + 2056, v22 + 2128, 0, header) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1310, 72, 0, "getting attributes from header");
    goto LABEL_4;
  }

  v24 = *(a1 + 1040);
  if (v24)
  {
    if ((v24(*(a1 + 1032), 23, v22, v22 + 2056) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1314, 72, 0, "message callback cancelled operations");
      goto LABEL_4;
    }

    v25 = *(a1 + 1040);
    if (v25 && (*(a1 + 1030) & 0x10) != 0 && (v25(*(a1 + 1032), 26, v22, v22 + 2128) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1320, 72, 0, "message callback cancelled operations");
      goto LABEL_4;
    }
  }

  if ((v22[2056] & 4) != 0 && (v22[2068] & 0x20) != 0 && (v22[2128] & 1) != 0 && *(v22 + 534) == -1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1325, 72, 0, "disable AFSC by clearing UF_COMPRESSED");
    goto LABEL_4;
  }

  v26.ikey = 4997953;
  v27 = AAHeaderGetKeyIndex(header, v26);
  if ((v27 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v27, &size, &offset) <= 1)
  {
    if ((size & 0x8000000000000000) != 0)
    {
LABEL_168:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1331, 72, 0, "ACL blob allocation");
      goto LABEL_4;
    }

    v28 = *(v22 + 279);
    if (v28 < size)
    {
      v29 = v3;
      do
      {
        while (!v28)
        {
          v28 = 0x4000;
          if (size <= 0x4000)
          {
            v31 = (v22 + 2240);
            v28 = 0x4000;
            goto LABEL_66;
          }
        }

        v30 = v28 >> 1;
        if ((v28 & (v28 >> 1)) != 0)
        {
          v30 = v28 & (v28 >> 1);
        }

        v28 += v30;
      }

      while (v28 < size);
      v31 = (v22 + 2240);
      if (v28 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_167;
      }

LABEL_66:
      v32 = *v31;
      v33 = realloc(*v31, v28);
      if (v33)
      {
        *(v22 + 280) = v33;
        *(v22 + 279) = v28;
        LOBYTE(v3) = v29;
        goto LABEL_68;
      }

      free(v32);
LABEL_167:
      *v31 = 0;
      *(v22 + 278) = 0;
      *(v22 + 279) = 0;
      goto LABEL_168;
    }
  }

LABEL_68:
  v34.ikey = 5521752;
  v35 = AAHeaderGetKeyIndex(header, v34);
  if ((v35 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v35, &size, &offset) <= 1)
  {
    if ((size & 0x8000000000000000) != 0)
    {
LABEL_171:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1335, 72, 0, "XAT blob allocation");
      goto LABEL_4;
    }

    v36 = *(v22 + 276);
    if (v36 < size)
    {
      v37 = v3;
      do
      {
        while (!v36)
        {
          v36 = 0x4000;
          if (size <= 0x4000)
          {
            v39 = (v22 + 2216);
            v36 = 0x4000;
            goto LABEL_82;
          }
        }

        v38 = v36 >> 1;
        if ((v36 & (v36 >> 1)) != 0)
        {
          v38 = v36 & (v36 >> 1);
        }

        v36 += v38;
      }

      while (v36 < size);
      v39 = (v22 + 2216);
      if (v36 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_170;
      }

LABEL_82:
      v40 = *v39;
      v41 = realloc(*v39, v36);
      if (v41)
      {
        *(v22 + 277) = v41;
        *(v22 + 276) = v36;
        LOBYTE(v3) = v37;
        goto LABEL_84;
      }

      free(v40);
LABEL_170:
      *v39 = 0;
      *(v22 + 275) = 0;
      *(v22 + 276) = 0;
      goto LABEL_171;
    }
  }

LABEL_84:
  v42.ikey = 4408665;
  v43 = AAHeaderGetKeyIndex(header, v42);
  if ((v43 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v43, &size, &offset) <= 1)
  {
    if ((size & 0x8000000000000000) != 0)
    {
LABEL_174:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1339, 72, 0, "YEC blob allocation");
      goto LABEL_4;
    }

    v44 = *(v22 + 282);
    if (v44 < size)
    {
      v45 = v3;
      do
      {
        while (!v44)
        {
          v44 = 0x4000;
          if (size <= 0x4000)
          {
            v47 = (v22 + 2264);
            v44 = 0x4000;
            goto LABEL_99;
          }
        }

        v46 = v44 >> 1;
        if ((v44 & (v44 >> 1)) != 0)
        {
          v46 = v44 & (v44 >> 1);
        }

        v44 += v46;
      }

      while (v44 < size);
      v47 = (v22 + 2264);
      if (v44 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_173;
      }

LABEL_99:
      v48 = *v47;
      v49 = realloc(*v47, v44);
      if (v49)
      {
        *(v22 + 283) = v49;
        *(v22 + 282) = v44;
        LOBYTE(v3) = v45;
        goto LABEL_101;
      }

      free(v48);
LABEL_173:
      *v47 = 0;
      *(v22 + 281) = 0;
      *(v22 + 282) = 0;
      goto LABEL_174;
    }
  }

LABEL_101:
  v83 = 0;
  *(v22 + 284) = -1;
  *(v22 + 285) = -1;
  v50.ikey = 5784649;
  v51 = AAHeaderGetKeyIndex(header, v50);
  if ((v51 & 0x80000000) == 0)
  {
    FieldUInt = AAHeaderGetFieldUInt(header, v51, &v83);
    v53 = FieldUInt <= 1 ? 1 : FieldUInt;
    if (v53 >= 1)
    {
      *(v22 + 284) = v83;
    }
  }

  v54.ikey = 5915721;
  v55 = AAHeaderGetKeyIndex(header, v54);
  if ((v55 & 0x80000000) == 0)
  {
    v56 = AAHeaderGetFieldUInt(header, v55, &v83);
    v57 = v56 <= 1 ? 1 : v56;
    if (v57 >= 1)
    {
      *(v22 + 285) = v83;
    }
  }

  if (value == 70)
  {
    *(v22 + 274) = -1;
    v58.ikey = 5521732;
    v59 = AAHeaderGetKeyIndex(header, v58);
    if ((v59 & 0x80000000) == 0 && AAHeaderGetFieldBlob(header, v59, &size, &offset) <= 1)
    {
      *(v22 + 274) = size;
    }

    v60 = 0;
    v61 = 0;
    v62 = v3 & 0x10;
    v63 = 0;
    do
    {
      if (v60 == 2 && v62)
      {
        break;
      }

      v64.ikey = 4410451;
      if (v60 != 2)
      {
        v64.ikey = 4144959;
      }

      if (v60 == 1)
      {
        v64.ikey = 4410435;
      }

      if (v60)
      {
        v65 = v64;
      }

      else
      {
        v65.ikey = 4410440;
      }

      v82 = -1;
      v66 = AAHeaderGetKeyIndex(header, v65);
      if ((v66 & 0x80000000) == 0 && AAHeaderGetFieldUInt(header, v66, &v82) <= 1)
      {
        v67 = v82;
        *&v22[8 * v60 + 2312] = v82;
        v81 = 0;
        if (*(v22 + 274) == -1)
        {
          v68 = 0;
        }

        else
        {
          v68 = v22;
        }

        v69 = sub_100108050(a1, v60, v67, v68, &v81);
        if (v69 < 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1371, 72, 0, "cluster entry query");
          goto LABEL_4;
        }

        if (v69)
        {
          v63 = 1;
        }

        if (v81)
        {
          v70 = v69 == 0;
        }

        else
        {
          v70 = 0;
        }

        if (v70)
        {
          v61 = 1;
        }
      }

      ++v60;
    }

    while (v60 != 3);
    if (!v63 && v61 && *(v22 + 274) != -1)
    {
      *(v22 + 274) = -1;
    }
  }

  else if ((value & 0xFFFFFFFFFFFFFFFBLL) == 0x48)
  {
    v82 = 0;
    v71.ikey = 4935244;
    v72 = AAHeaderGetKeyIndex(header, v71);
    if ((v72 & 0x80000000) != 0 || AAHeaderGetFieldString(header, v72, 0x400uLL, v22 + 1024, &v82) > 1)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1389, 72, 0, "YAA link entry has no LNK field: %s");
      goto LABEL_4;
    }
  }

  else if ((value & 0xFFFFFFFFFFFFFFFELL) == 0x42)
  {
    v73.ikey = 5653828;
    v74 = AAHeaderGetKeyIndex(header, v73);
    if ((v74 & 0x80000000) != 0 || AAHeaderGetFieldUInt(header, v74, v22 + 273) >= 2)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1394, 72, 0, "YAA device entry has no DEV field: %s");
      goto LABEL_4;
    }
  }

  *(a1 + 1648) = 0;
  v75 = *(a1 + 1616);
  if (v75 && (v76 = *(a1 + 1624), !*(v76 + 8)))
  {
    v78 = (v76 + 32);
    v79 = 1;
    do
    {
      v77 = v79;
      if (v75 == v79)
      {
        break;
      }

      v80 = *v78;
      v78 += 3;
      ++v79;
    }

    while (!v80);
    *(a1 + 1648) = v77;
  }

  else
  {
    v77 = 0;
  }

  if (v77 >= v75 && (sub_100108228(a1) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteHeader", 1404, 72, 0, "end entry");
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_100107044(uint64_t a1, int a2, void *__src, rsize_t __smax)
{
  if (atomic_load((a1 + 1600)))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (__smax && !*(a1 + 1608))
  {
    v8 = *(a1 + 1632);
    v9 = *(a1 + 1640);
    if (*(a1 + 1632) == 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1423, 72, 0, "no active entry or active thread");
LABEL_8:
      sub_100107EA8(a1);
      return 0xFFFFFFFFLL;
    }

    v10 = *(a1 + 1648);
    if (v10 >= *(a1 + 1616))
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1424, 72, 0, "invalid blob reference");
      return 0xFFFFFFFFLL;
    }

    v11 = *(a1 + 1624) + 24 * v10;
    if (((*v11 ^ a2) & 0xFFFFFF) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1428, 72, 0, "inconsistent blob key");
      return 0xFFFFFFFFLL;
    }

    if (*(v11 + 8) < __smax)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1429, 72, 0, "too many blob bytes received");
      return 0xFFFFFFFFLL;
    }

    v13 = *v11 & 0xFFFFFF;
    if (v13 <= 0x544143)
    {
      if (v13 != 4408665)
      {
        if (v13 == 4997953)
        {
          if (v8)
          {
            v14 = v8[278];
            v15 = __CFADD__(v14, __smax);
            v16 = v14 + __smax;
            if (v15 || (v16 & 0x8000000000000000) != 0)
            {
              goto LABEL_110;
            }

            v17 = v8 + 278;
            v18 = v8[279];
            if (v18 < v16)
            {
              do
              {
                while (!v18)
                {
                  v18 = 0x4000;
                  if (v16 <= 0x4000)
                  {
                    v20 = (v8 + 280);
                    v18 = 0x4000;
                    goto LABEL_67;
                  }
                }

                v19 = v18 >> 1;
                if ((v18 & (v18 >> 1)) != 0)
                {
                  v19 = v18 & (v18 >> 1);
                }

                v18 += v19;
              }

              while (v18 < v16);
              v20 = (v8 + 280);
              if (v18 >= 0x2000000001)
              {
                v52 = (v8 + 280);
                *__error() = 12;
                goto LABEL_109;
              }

LABEL_67:
              v51 = v18;
              v52 = v20;
              v33 = *v20;
              v34 = realloc(*v20, v18);
              if (v34)
              {
                v8[280] = v34;
                v8[279] = v51;
                goto LABEL_69;
              }

              free(v33);
LABEL_109:
              *v52 = 0;
              *v17 = 0;
              v8[279] = 0;
              goto LABEL_110;
            }

LABEL_69:
            v35 = v8[280];
            if (__src)
            {
              memcpy((v35 + *v17), __src, __smax);
            }

            else if (v35)
            {
              memset_s((v35 + *v17), __smax, 0, __smax);
            }

            *v17 += __smax;
            if ((__smax & 0x8000000000000000) != 0)
            {
LABEL_110:
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1438, 72, 0, "too many blob bytes received", v51);
              goto LABEL_8;
            }
          }

          if (v9 && (sub_100107F88(v9, 65, __smax, __src) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1439, 72, 0, "sending blob", v51);
            goto LABEL_8;
          }
        }

LABEL_96:
        v42 = *(v11 + 8) - __smax;
        *(v11 + 8) = v42;
        if (v42)
        {
          return 0;
        }

        v43 = *(a1 + 1648);
        v44 = (v43 + 1);
        *(a1 + 1648) = v44;
        v45 = *(a1 + 1616);
        if (v44 < v45)
        {
          v46 = *(a1 + 1624);
          if (!*(v46 + 24 * v44 + 8))
          {
            v47 = (v46 + 24 * v44 + 32);
            v48 = ~v44 + v45;
            v49 = v43 + 2;
            do
            {
              LODWORD(v44) = v49;
              if (!v48)
              {
                break;
              }

              v50 = *v47;
              v47 += 3;
              --v48;
              ++v49;
            }

            while (!v50);
            *(a1 + 1648) = v44;
          }
        }

        if (v44 < v45 || (sub_100108228(a1) & 0x80000000) == 0)
        {
          return 0;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1472, 72, 0, "end entry failed", v51);
        return 0xFFFFFFFFLL;
      }

      if (!v8)
      {
        goto LABEL_95;
      }

      v27 = v8[281];
      v15 = __CFADD__(v27, __smax);
      v28 = v27 + __smax;
      if (!v15 && (v28 & 0x8000000000000000) == 0)
      {
        v29 = v8 + 281;
        v30 = v8[282];
        if (v30 < v28)
        {
          do
          {
            while (!v30)
            {
              v30 = 0x4000;
              if (v28 <= 0x4000)
              {
                v32 = (v8 + 283);
                v30 = 0x4000;
                goto LABEL_75;
              }
            }

            v31 = v30 >> 1;
            if ((v30 & (v30 >> 1)) != 0)
            {
              v31 = v30 & (v30 >> 1);
            }

            v30 += v31;
          }

          while (v30 < v28);
          v32 = (v8 + 283);
          if (v30 >= 0x2000000001)
          {
            v54 = (v8 + 283);
            *__error() = 12;
            goto LABEL_115;
          }

LABEL_75:
          v51 = v30;
          v54 = v32;
          v39 = *v32;
          v40 = realloc(*v32, v30);
          if (v40)
          {
            v8[283] = v40;
            v8[282] = v51;
            goto LABEL_77;
          }

          free(v39);
LABEL_115:
          *v54 = 0;
          *v29 = 0;
          v8[282] = 0;
          goto LABEL_116;
        }

LABEL_77:
        v41 = v8[283];
        if (__src)
        {
          memcpy((v41 + *v29), __src, __smax);
        }

        else if (v41)
        {
          memset_s((v41 + *v29), __smax, 0, __smax);
        }

        *v29 += __smax;
        if ((__smax & 0x8000000000000000) == 0)
        {
LABEL_95:
          if (v9 && (sub_100107F88(v9, 89, __smax, __src) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1444, 72, 0, "sending blob", v51);
            goto LABEL_8;
          }

          goto LABEL_96;
        }
      }

LABEL_116:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1443, 72, 0, "too many blob bytes received", v51);
      goto LABEL_8;
    }

    if (v13 == 5521732)
    {
      if (!v8 || v8[274] != -1)
      {
        if (!v9)
        {
          if ((sub_100108304(a1) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1453, 72, 0, "send entry to thread");
            goto LABEL_8;
          }

          v9 = *(a1 + 1640);
        }

        if ((sub_100107F88(v9, 68, __smax, __src) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1457, 72, 0, "sending DAT blob");
          goto LABEL_8;
        }
      }

      goto LABEL_96;
    }

    if (v13 != 5521752)
    {
      goto LABEL_96;
    }

    if (!v8)
    {
      goto LABEL_89;
    }

    v21 = v8[275];
    v15 = __CFADD__(v21, __smax);
    v22 = v21 + __smax;
    if (!v15 && (v22 & 0x8000000000000000) == 0)
    {
      v23 = v8 + 275;
      v24 = v8[276];
      if (v24 < v22)
      {
        do
        {
          while (!v24)
          {
            v24 = 0x4000;
            if (v22 <= 0x4000)
            {
              v26 = (v8 + 277);
              v24 = 0x4000;
              goto LABEL_71;
            }
          }

          v25 = v24 >> 1;
          if ((v24 & (v24 >> 1)) != 0)
          {
            v25 = v24 & (v24 >> 1);
          }

          v24 += v25;
        }

        while (v24 < v22);
        v26 = (v8 + 277);
        if (v24 >= 0x2000000001)
        {
          v53 = (v8 + 277);
          *__error() = 12;
          goto LABEL_112;
        }

LABEL_71:
        v51 = v24;
        v53 = v26;
        v36 = *v26;
        v37 = realloc(*v26, v24);
        if (v37)
        {
          v8[277] = v37;
          v8[276] = v51;
          goto LABEL_73;
        }

        free(v36);
LABEL_112:
        *v53 = 0;
        *v23 = 0;
        v8[276] = 0;
        goto LABEL_113;
      }

LABEL_73:
      v38 = v8[277];
      if (__src)
      {
        memcpy((v38 + *v23), __src, __smax);
      }

      else if (v38)
      {
        memset_s((v38 + *v23), __smax, 0, __smax);
      }

      *v23 += __smax;
      if ((__smax & 0x8000000000000000) == 0)
      {
LABEL_89:
        if (v9 && (sub_100107F88(v9, 88, __smax, __src) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1434, 72, 0, "sending blob", v51);
          goto LABEL_8;
        }

        goto LABEL_96;
      }
    }

LABEL_113:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamWriteBlob", 1433, 72, 0, "too many blob bytes received", v51);
    goto LABEL_8;
  }

  return result;
}

void sub_100107730(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong((result + 1600), &v1, 1u);
  if (!v1)
  {
    sub_100107EA8(result);
  }
}

void sub_100107750(uint64_t a1)
{
  if (a1 && atomic_fetch_add((a1 + 2304), 0xFFFFFFFF) == 1)
  {
    v2 = *(a1 + 2300);
    if (v2 != -1 && v2 != 3)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryDestroy", 223, 72, 0, "invalid entry final state %d: %s", *(a1 + 2300), a1);
    }

    if (atomic_load((a1 + 2304)))
    {
      v5 = atomic_load((a1 + 2304));
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryDestroy", 224, 72, 0, "invalid entry final ref count %u: %s", v5, a1);
    }

    if ((*(a1 + 2296) & 0x80000000) == 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "entryDestroy", 226, 72, 0, "invalid entry final fd");
      close(*(a1 + 2296));
    }

    AAByteStreamClose(*(a1 + 2288));
    free(*(a1 + 2216));
    memset_s((a1 + 2200), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 2240));
    memset_s((a1 + 2224), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 2264));
    memset_s((a1 + 2248), 0x18uLL, 0, 0x18uLL);

    free(a1);
  }
}

uint64_t sub_1001078C0(uint64_t *a1)
{
  v1 = a1[21];
  if (!v1)
  {
    return 0;
  }

  a1[21] = 0;
  v3 = *a1;
  if (*(v1 + 2300) != -1)
  {
    *(v1 + 2300) = -1;
    v4 = *(v3 + 1040);
    if (v4)
    {
      v4(*(v3 + 1032), 22, v1, v1 + 2272);
      v3 = *a1;
    }
  }

  atomic_fetch_add_explicit((v3 + 1604), 1u, memory_order_relaxed);
  AAByteStreamClose(*(v1 + 2288));
  *(v1 + 2288) = 0;
  if ((sub_100107D24(*a1 + 1200, v1) & 0x80000000) == 0)
  {
    return 0;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadFailEntry", 736, 72, 0, "sending entry to retire thread");
  return 0xFFFFFFFFLL;
}

uint64_t sub_100107984(uint64_t a1, uint64_t a2)
{
  v4 = AAEntryACLBlobCreate();
  v5 = AAEntryXATBlobCreate();
  v6 = *(a2 + 2224);
  if (v6 && (sub_1001117B8(v4, *(a2 + 2240), v6) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 354, 72, 0, "invalid ACL blob");
LABEL_22:
    v18 = 0;
    v9 = 0;
    goto LABEL_32;
  }

  v7 = *(a2 + 2200);
  if (v7 && (sub_10010DEF4(v5, *(a2 + 2216), v7) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 357, 72, 0, "invalid XAT blob");
    goto LABEL_22;
  }

  v8 = *(a2 + 2248);
  if (v8)
  {
    v9 = AAEntryYECBlobCreateWithEncodedData(*(a2 + 2264), v8);
    if (!v9)
    {
      v10 = "invalid YEC blob";
      v11 = 361;
LABEL_25:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", v11, 72, 0, v10, v21, v22);
LABEL_26:
      v18 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = *(a1 + 1040);
  if (v12)
  {
    v12(*(a1 + 1032), 24, a2, v5);
    (*(a1 + 1040))(*(a1 + 1032), 25, a2, v4);
  }

  if (v9)
  {
    *v23 = 0;
    if ((AAEntryYECBlobApplyToPath(v9, a1, a2, v23, *(a1 + 1024), *(a1 + 1060)) & 0x80000000) != 0)
    {
      v21 = *v23;
      v22 = a2;
      v10 = "corrupted file data, ECC failed 0x%08x: %s";
      v11 = 377;
      goto LABEL_25;
    }

    if (*v23)
    {
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 378, 72, "ECC applied 0x%08x: %s", v13, v14, v15, *v23, a2);
    }
  }

  if ((sub_1000F4744(v23, 0x800uLL, a1, a2) & 0x80000000) != 0)
  {
    v21 = a1;
    v22 = a2;
    v10 = "invalid path: %s/%s";
    v11 = 391;
    goto LABEL_25;
  }

  v16 = *(a2 + 2296);
  v17 = v16;
  if (v16 < 0)
  {
    v17 = open(v23, 0x200000);
    if (v17 < 0)
    {
      v20 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 400, 72, v20, "open: %s");
      goto LABEL_26;
    }
  }

  if ((sub_10010EABC(v5, v17, *(a1 + 1024)) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 405, 72, 0, "applying XAT: %s", a2);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  if ((sub_1001126B4(v4, v17, *(a1 + 1024)) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 406, 72, 0, "applying ACL: %s", a2);
    v18 = 0;
  }

  if ((sub_10010BEB4((a2 + 2056), v17, *(a1 + 1024)) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "applyEntryAttributes", 407, 72, 0, "applying ATTR: %s", a2);
    v18 = 0;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  close(v17);
LABEL_32:
  AAEntryXATBlobDestroy(v5);
  AAEntryACLBlobDestroy(v4);
  AAEntryYECBlobDestroy(v9);
  if (v18)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100107D24(uint64_t a1, uint64_t a2)
{
  if (pthread_mutex_lock((a1 + 16)))
  {
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadEnqueue", 597, 72, *v4, "pthread_mutex_lock");
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 88);
  v6 = *(a1 + 96);
  v8 = v6 - v7;
  if (v6 == v7)
  {
    v6 = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  else if (v7 >= 0x40)
  {
    memmove(*(a1 + 104), (*(a1 + 104) + 8 * v7), 8 * v8);
    *(a1 + 88) = 0;
    *(a1 + 96) = v8;
    v6 = v8;
  }

  v9 = *(a1 + 80);
  if (v6 < v9)
  {
    goto LABEL_14;
  }

  v10 = 2 * v9;
  if (!v9)
  {
    v10 = 256;
  }

  *(a1 + 80) = v10;
  if ((8 * v10) < 0x2000000001)
  {
    v11 = *(a1 + 104);
    v12 = realloc(v11, 8 * v10);
    if (!v12)
    {
      free(v11);
      goto LABEL_18;
    }

    *(a1 + 104) = v12;
    v6 = *(a1 + 96);
    v9 = *(a1 + 80);
LABEL_14:
    if (v6 < v9)
    {
      v13 = *(a1 + 104);
      *(a1 + 96) = v6 + 1;
      *(v13 + 8 * v6) = a2;
    }

    v14 = 1;
    goto LABEL_19;
  }

  *__error() = 12;
LABEL_18:
  v14 = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
LABEL_19:
  if (pthread_mutex_unlock((a1 + 16)))
  {
    v15 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "retireThreadEnqueue", 623, 72, *v15, "pthread_mutex_unlock");
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

void sub_100107EA8(uint64_t a1)
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

    if ((sub_100107D24(a1 + 1200, v4) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamSendEntryToRetireThread", 1163, 72, 0, "retireThreadEnqueue failed");
      sub_100107750(v3);
    }

    atomic_fetch_add_explicit((a1 + 1604), 1u, memory_order_relaxed);
  }

  else
  {
    v6 = *(a1 + 1640);
    if (v6)
    {
      sub_100107F88(v6, 70, 0, 0);
    }
  }

  *(a1 + 1608) = 1;
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_100107F88(uint64_t a1, int a2, size_t a3, const void *a4)
{
  buf = a2;
  v9 = a3;
  if (AAByteStreamWrite(*(a1 + 16), &buf, 0xCuLL) == 12)
  {
    if (!a3 || AAByteStreamWrite(*(a1 + 32), a4, a3) == a3)
    {
      return 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadSendCommand", 713, 72, 0, "sending command payload");
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractThreadSendCommand", 708, 72, 0, "sending command");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100108050(uint64_t a1, int a2, unint64_t a3, uint64_t a4, void *a5)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterEntryUpdateDAT", 514, 72, v14, "pthread_mutex_lock");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterEntryUpdateDAT", 523, 72, *v21, "malloc");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "clusterEntryUpdateDAT", 547, 72, v22, "pthread_mutex_unlock");
    return 0xFFFFFFFFLL;
  }

  return v11;
}

uint64_t sub_100108228(uint64_t a1)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamEntryEnd", 1202, 72, 0, "no active entry or active thread");
LABEL_7:
    sub_100107EA8(a1);
    return 0xFFFFFFFFLL;
  }

  if (v4)
  {
    if ((sub_100108304(a1) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamEntryEnd", 1207, 72, 0, "send entry to thread");
      goto LABEL_7;
    }

    v5 = *(a1 + 1640);
  }

  v6 = (a1 + 1632);
  if (v5)
  {
    sub_100107F88(v5, 69, 0, 0);
  }

  result = 0;
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_100108304(uint64_t a1)
{
  if (pthread_mutex_lock((a1 + 1088)))
  {
    v5 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v6 = 91;
LABEL_8:
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v6, 0, v5, v2, v3, v4);
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamSendEntryToExtractThread", 1145, 72, 0, "SharedArrayPop failed");
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v7 = *(a1 + 1072);
    if (v7)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 1152), (a1 + 1088)))
    {
      v5 = "SharedArrayPop: pthread_cond_wait failed\n";
      v6 = 94;
      goto LABEL_8;
    }
  }

  v8 = v7 - 1;
  *(a1 + 1072) = v8;
  v9 = *(*(a1 + 1080) + 4 * v8);
  if (pthread_mutex_unlock((a1 + 1088)))
  {
    v5 = "SharedArrayPop: pthread_mutex_unlock failed\n";
    v6 = 98;
    goto LABEL_8;
  }

  v11 = *(a1 + 1064) + 176 * v9;
  *(a1 + 1640) = v11;
  *(v11 + 168) = *(a1 + 1632);
  *(a1 + 1632) = 0;
  if (pthread_mutex_lock((v11 + 56)) || (v12 = *(v11 + 48), *(v11 + 48) = v12 + 1, !v12) && pthread_cond_broadcast((v11 + 120)) || pthread_mutex_unlock((v11 + 56)))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamSendEntryToExtractThread", 1150, 72, 0, "SemRelease failed");
    return 0xFFFFFFFFLL;
  }

  if ((sub_100107F88(v11, 66, 0, 0) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAExtractArchiveOutputStream.c", "extractStreamSendEntryToExtractThread", 1153, 72, 0, "extract thread BEGIN failed");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

unsigned int *sub_1001084A4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6)
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
            v21 = "SharedArrayInit: pthread_mutex_init failed\n";
            v22 = 56;
          }

          else
          {
            if (!pthread_cond_init((v13 + 30), 0))
            {
              v27 = *v13 + 1;
              v13[42] = 0;
              v13[43] = v27;
              v28 = calloc(v27, 4uLL);
              *(v13 + 22) = v28;
              if (v28)
              {
                if (pthread_mutex_init((v13 + 46), 0))
                {
                  v32 = "SharedArrayInit: pthread_mutex_init failed\n";
                  v33 = 56;
                }

                else
                {
                  if (!pthread_cond_init((v13 + 62), 0))
                  {
                    v13[6] = -1;
                    v13[74] = 0;
                    if (pthread_mutex_init((v13 + 76), 0) || pthread_cond_init((v13 + 92), 0))
                    {
                      v24 = "SemInit";
                      v25 = 184;
                    }

                    else if (*v13)
                    {
                      v34 = 0;
                      v35 = 352;
                      while (1)
                      {
                        v36 = *(v13 + 1);
                        v37 = v36 + v35;
                        *(v36 + v35 - 336) = v13;
                        *(v36 + v35 - 344) = v34;
                        v40 = v34;
                        *(v36 + v35 - 328) = *(a2 + 8 * v34);
                        *(v36 + v35 - 320) = a3;
                        *(v36 + v35 - 312) = 0;
                        if (pthread_mutex_init((v36 + v35 - 304), 0) || pthread_cond_init((v37 - 240), 0))
                        {
                          v24 = "SemInit";
                          v25 = 194;
                          goto LABEL_14;
                        }

                        *(v36 + v35 - 192) = 0;
                        if (pthread_mutex_init((v36 + v35 - 184), 0) || pthread_cond_init((v36 + v35 - 120), 0))
                        {
                          v24 = "SemInit";
                          v25 = 195;
                          goto LABEL_14;
                        }

                        v38 = (v36 + v35);
                        *&v38[-2].__opaque[16] = 0;
                        if (pthread_mutex_init(&v38[-2].__opaque[24], 0) || pthread_cond_init(v38, 0))
                        {
                          v24 = "SemInit";
                          v25 = 196;
                          goto LABEL_14;
                        }

                        if ((sub_1000E766C((v37 - 352), sub_10010895C, v37 - 352, a6) & 0x80000000) != 0)
                        {
                          break;
                        }

                        v34 = v40 + 1;
                        v35 += 408;
                        if (v40 + 1 >= *v13)
                        {
                          goto LABEL_37;
                        }
                      }

                      v24 = "Thread creation";
                      v25 = 197;
                    }

                    else
                    {
LABEL_37:
                      v39 = *(v13 + 2);
                      *(v39 + 8) = v13;
                      *(v39 + 16) = a4;
                      *(v39 + 24) = a5;
                      if ((sub_1000E766C(v39, sub_100108C1C, v39, 0) & 0x80000000) == 0)
                      {
                        return v13;
                      }

                      v24 = "Thread creation";
                      v25 = 206;
                    }

                    goto LABEL_14;
                  }

                  v32 = "SharedArrayInit: pthread_cond_init failed\n";
                  v33 = 57;
                }
              }

              else
              {
                v32 = "SharedArrayInit: malloc failed\n";
                v33 = 55;
              }

              sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v33, 0, v32, v29, v30, v31);
              v24 = "SharedArrayInit";
              v25 = 182;
LABEL_14:
              v23 = 0;
              goto LABEL_15;
            }

            v21 = "SharedArrayInit: pthread_cond_init failed\n";
            v22 = 57;
          }
        }

        else
        {
          v21 = "SharedArrayInit: malloc failed\n";
          v22 = 55;
        }

        sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v22, 0, v21, v18, v19, v20);
        v24 = "SharedArrayInit";
        v25 = 180;
        goto LABEL_14;
      }

      v23 = *__error();
      v24 = "malloc";
      v25 = 179;
    }

    else
    {
      v23 = *__error();
      v24 = "malloc";
      v25 = 177;
    }
  }

  else
  {
    v23 = *__error();
    v24 = "malloc";
    v25 = 172;
  }

LABEL_15:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineCreate", v25, 87, v23, v24);
  sub_100108EA0(v13);
  return 0;
}

uint64_t sub_10010895C(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (1)
  {
    v3 = *(a1 + 8);
    if (pthread_mutex_lock((v2 + 56)))
    {
      v14 = "SharedArrayPush: pthread_mutex_lock failed\n";
      v15 = 117;
      goto LABEL_35;
    }

    v7 = *(v2 + 40);
    v8 = *(v2 + 44);
    v9 = v7;
    if (v7 < v8)
    {
      *(*(v2 + 48) + 4 * v7) = v3;
      v9 = *(v2 + 40);
    }

    *(v2 + 40) = v9 + 1;
    if (!v9)
    {
      if (pthread_cond_broadcast((v2 + 120)))
      {
        break;
      }
    }

    if (pthread_mutex_unlock((v2 + 56)))
    {
      v14 = "SharedArrayPush: pthread_mutex_unlock failed\n";
      v15 = 124;
      goto LABEL_35;
    }

    if (v7 >= v8)
    {
      v14 = "SharedArrayPush: stack is full\n";
      v15 = 125;
      goto LABEL_35;
    }

    if (pthread_mutex_lock((a1 + 48)))
    {
      goto LABEL_27;
    }

    while (1)
    {
      v10 = *(a1 + 40);
      if (v10 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 112), (a1 + 48)))
      {
        goto LABEL_27;
      }
    }

    *(a1 + 40) = v10 - 1;
    if (pthread_mutex_unlock((a1 + 48)))
    {
LABEL_27:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 72, 87, 0, "SemAcquire");
      goto LABEL_28;
    }

    if ((*(a1 + 400) & 0x8000000000000000) != 0)
    {
      return a1;
    }

    if (((*(a1 + 32))(*(a1 + 24)) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 82, 87, 0, "worker proc reported an error");
      atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
    }

    if (pthread_mutex_lock((a1 + 168)) || (v11 = *(a1 + 160), *(a1 + 160) = v11 + 1, !v11) && pthread_cond_broadcast((a1 + 232)) || pthread_mutex_unlock((a1 + 168)))
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 85, 87, 0, "SemRelease");
      goto LABEL_28;
    }

    if (!pthread_mutex_lock((a1 + 288)))
    {
      while (1)
      {
        v12 = *(a1 + 280);
        if (v12 > 0)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 352), (a1 + 288)))
        {
          goto LABEL_26;
        }
      }

      *(a1 + 280) = v12 - 1;
      if (!pthread_mutex_unlock((a1 + 288)))
      {
        continue;
      }
    }

LABEL_26:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 88, 87, 0, "SemAcquire");
    goto LABEL_28;
  }

  v14 = "SharedArrayPush: pthread_cond_broadcast failed\n";
  v15 = 122;
LABEL_35:
  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", v15, 0, v14, v4, v5, v6);
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 69, 87, 0, "SharedArrayPush");
LABEL_28:
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t sub_100108C1C(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (!pthread_mutex_lock((v2 + 184)))
  {
    while (1)
    {
      v8 = *(v2 + 168);
      if (v8)
      {
        break;
      }

      if (pthread_cond_wait((v2 + 248), (v2 + 184)))
      {
        v6 = "SharedArrayPop: pthread_cond_wait failed\n";
        v7 = 94;
        goto LABEL_3;
      }
    }

    v9 = v8 - 1;
    *(v2 + 168) = v9;
    v10 = *(*(v2 + 176) + 4 * v9);
    if (pthread_mutex_unlock((v2 + 184)))
    {
      v6 = "SharedArrayPop: pthread_mutex_unlock failed\n";
      v7 = 98;
      goto LABEL_3;
    }

    if (v10 == -2)
    {
      if (!pthread_mutex_lock((v2 + 304)))
      {
        v13 = *(v2 + 296);
        *(v2 + 296) = v13 + 1;
        if (v13 || !pthread_cond_broadcast((v2 + 368)))
        {
          pthread_mutex_unlock((v2 + 304));
        }
      }
    }

    else
    {
      if (v10 == -1)
      {
        return a1;
      }

      v11 = *(v2 + 8) + 408 * v10;
      if (pthread_mutex_lock((v11 + 168)))
      {
        goto LABEL_28;
      }

      while (1)
      {
        v12 = *(v11 + 160);
        if (v12 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v11 + 232), (v11 + 168)))
        {
          goto LABEL_28;
        }
      }

      *(v11 + 160) = v12 - 1;
      if (pthread_mutex_unlock((v11 + 168)))
      {
LABEL_28:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 134, 87, 0, "SemAcquire");
        goto LABEL_29;
      }

      if (((*(a1 + 24))(*(a1 + 16), *(v11 + 24)) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 141, 87, 0, "consumer proc reported an error");
        atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
      }

      if (pthread_mutex_lock((v11 + 288)) || (v14 = *(v11 + 280), *(v11 + 280) = v14 + 1, !v14) && pthread_cond_broadcast((v11 + 352)) || pthread_mutex_unlock((v11 + 288)))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 144, 87, 0, "SemRelease");
        goto LABEL_29;
      }
    }
  }

  v6 = "SharedArrayPop: pthread_mutex_lock failed\n";
  v7 = 91;
LABEL_3:
  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v7, 0, v6, v3, v4, v5);
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 114, 87, 0, "SharedArrayDequeue");
LABEL_29:
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t sub_100108EA0(uint64_t result)
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
            v10 = 91;
            v11 = "SharedArrayPop: pthread_mutex_lock failed\n";
LABEL_15:
            sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v10, 0, v11, v7, v8, v9);
            v13 = -1;
          }

          else
          {
            while (1)
            {
              v12 = v1[10];
              if (v12)
              {
                break;
              }

              if (pthread_cond_wait((v1 + 30), (v1 + 14)))
              {
                v10 = 94;
                v11 = "SharedArrayPop: pthread_cond_wait failed\n";
                goto LABEL_15;
              }
            }

            v16 = v12 - 1;
            v1[10] = v16;
            v13 = *(*(v1 + 6) + 4 * v16);
            if (!pthread_mutex_unlock((v1 + 14)))
            {
              goto LABEL_17;
            }

            sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n", v17, v18, v19);
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 237, 87, 0, "SharedArrayPop");
          v6 = 0;
LABEL_17:
          v14 = *(v1 + 1) + 408 * v13;
          *(v14 + 400) = -1;
          if (pthread_mutex_lock((v14 + 48)) || (v15 = *(v14 + 40), *(v14 + 40) = v15 + 1, !v15) && pthread_cond_broadcast((v14 + 112)) || pthread_mutex_unlock((v14 + 48)))
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 245, 87, 0, "SemRelease");
            v6 = 0;
          }

          if ((sub_1000E79CC(*v14) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 246, 87, 0, "joinThread");
            v6 = 0;
          }

          *v14 = 0;
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
      v20 = 0;
      v21 = 352;
      do
      {
        v22 = *(v1 + 1);
        v23 = v22 + v21;
        if (!pthread_mutex_destroy((v22 + v21 - 304)))
        {
          pthread_cond_destroy((v23 - 240));
        }

        if (!pthread_mutex_destroy((v23 - 184)))
        {
          pthread_cond_destroy((v22 + v21 - 120));
        }

        v24 = (v22 + v21);
        if (!pthread_mutex_destroy(&v24[-2].__opaque[24]))
        {
          pthread_cond_destroy(v24);
        }

        ++v20;
        v21 += 408;
      }

      while (v20 < *v1);
LABEL_41:
      free(*(v1 + 1));
      *(v1 + 1) = 0;
    }

    else
    {
      v6 = 1;
    }

    v25 = *(v1 + 2);
    if (v25)
    {
      if (*v25)
      {
        if ((sub_1000FAA6C(v1 + 42, -1) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 272, 87, 0, "SharedArrayEnqueue");
          v6 = 0;
        }

        if ((sub_1000E79CC(*v25) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 273, 87, 0, "joinThread");
          v6 = 0;
        }

        *v25 = 0;
        v25 = *(v1 + 2);
      }

      free(v25);
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

    v26 = atomic_load(v1 + 104);
    if (v26 >= 1)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 285, 87, 0, "Threads reported errors");
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

uint64_t sub_10010928C(uint64_t a1)
{
  if (*(a1 + 24) != -1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineGetWorker", 294, 87, 0, "Missing call to RunWorker before GetWorker");
    return 0;
  }

  if (pthread_mutex_lock((a1 + 56)))
  {
    v5 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v6 = 91;
LABEL_10:
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v6, 0, v5, v2, v3, v4);
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineGetWorker", 298, 87, 0, "SharedArrayPop failed");
    return 0;
  }

  while (1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 120), (a1 + 56)))
    {
      v5 = "SharedArrayPop: pthread_cond_wait failed\n";
      v6 = 94;
      goto LABEL_10;
    }
  }

  v8 = v7 - 1;
  *(a1 + 40) = v8;
  v9 = *(*(a1 + 48) + 4 * v8);
  if (pthread_mutex_unlock((a1 + 56)))
  {
    v5 = "SharedArrayPop: pthread_mutex_unlock failed\n";
    v6 = 98;
    goto LABEL_10;
  }

  *(a1 + 24) = v9;
  return *(*(a1 + 8) + 408 * v9 + 24);
}

uint64_t sub_1001093C0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", 311, 87, 0, "Missing call to GetWorker before RunWorker");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = -1;
  v2 = *(a1 + 8) + 408 * v1;
  v3 = *(a1 + 32);
  *(a1 + 32) = v3 + 1;
  *(v2 + 400) = v3;
  if ((sub_1000FAA6C((a1 + 168), v1) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", 324, 87, 0, "SharedArrayEnqueue failed");
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((v2 + 48)) || (v4 = *(v2 + 40), *(v2 + 40) = v4 + 1, !v4) && pthread_cond_broadcast((v2 + 112)) || (result = pthread_mutex_unlock((v2 + 48)), result))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", 325, 87, 0, "SemRelease failed");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1001094BC(uint64_t a1)
{
  if ((sub_1000FAA6C((a1 + 168), -2) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineFlush", 333, 87, 0, "SharedArrayEnqueue failed");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineFlush", 336, 87, 0, "SemAquire failed");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100109578(uint64_t *a1)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 244, 37, 0, "NOP received");
    return 0;
  }

  if (v5 < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 246, 37, 0, "Invalid iBlock received");
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 292, 37, 0, "invalid output size/decoder error: block=%lld, inSize=%lld, outSize=%lld, expectedOutSize=%lld", a1[6], a1[3]);
  }

  v10 = 0;
  a1[6] = -1;
  atomic_compare_exchange_strong((v2 + 112), &v10, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100109788(uint64_t a1, uint64_t a2)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 327, 37, 0, "invalid block ID in write thread %lld");
    goto LABEL_19;
  }

  if (*(a1 + 4) != 1)
  {
    v9 = vrev64q_s8(*(a2 + 56));
    v13 = vextq_s8(v9, v9, 8uLL);
    v10 = sub_1001099EC(*(a1 + 56), *(a1 + 72), &v13, 16);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v7 = v10;
      if (v10 == 16)
      {
        v11 = sub_1001099EC(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
        if (v11 < 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 351, 37, 0, "writing block payload");
          v7 = 16;
        }

        else
        {
          v7 = v11 + 16;
          if (v11 == *(a2 + 56))
          {
            goto LABEL_5;
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 353, 37, 0, "Truncated block payload (%lld/%llu bytes read)");
        }
      }

      else
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 347, 37, 0, "Truncated block header (%lld/16 bytes written)");
      }

      goto LABEL_21;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 345, 37, 0, "writing block header");
LABEL_19:
    v7 = 0;
    goto LABEL_21;
  }

  v8 = sub_1001099EC(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
  if (v8 < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 334, 37, 0, "writing block");
    goto LABEL_19;
  }

  v7 = v8;
  if (v8 == *(a2 + 56))
  {
    goto LABEL_5;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 336, 37, 0, "Truncated block payload (%lld/%llu bytes written)");
LABEL_21:
  v12 = 0;
  *(a1 + 88) += v7;
  atomic_compare_exchange_strong((a1 + 112), &v12, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1001099EC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 131, 37, 0, "pcWrite failed");
    return v10;
  }

  else
  {
    v8 = a1(a2, 0, 0);
    if (v8 < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 121, 37, 0, "pcWrite EOF failed");
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
    v6 = sub_1000F4290();
  }

  a1[2] = v6;
  if (a1[1] == 1)
  {
    if (sub_10010A524(*a2, a2[2], &v82, 4) == 4)
    {
      if (a3)
      {
        *a3 += 4;
      }

      v7 = 0;
      while (1)
      {
        v8 = sub_100119FE4(v7);
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
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processFileHeader", 179, 37, 0, "invalid header in input stream");
          }

          else
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processFileHeader", 178, 37, 0, "compressed stream detected : try compression_tool");
          }

          goto LABEL_89;
        }
      }

      v83[0] = 0;
      if (sub_10010A524(*a2, a2[2], v83, 8) == 8)
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
            v14 = sub_10011A01C(v7);
            fprintf(v13, "Decoder: %s\n", v14);
            fprintf(__stderrp, "Blocksize: %llu\n");
          }

          goto LABEL_28;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processFileHeader", 191, 37, 0, "invalid blockSize in input stream");
      }
    }

LABEL_89:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", 507, 37, 0, "processFileHeader");
    goto LABEL_90;
  }

  v9 = *(a1 + 2);
  v10 = sub_10011A010(*a1);
  v11 = sub_100119FE4(v10);
  if (v11 == 63)
  {
    goto LABEL_89;
  }

  v82 = 544891504;
  HIBYTE(v82) = v11;
  if (sub_1001099EC(a2[3], a2[5], &v82, 4) != 4)
  {
    goto LABEL_89;
  }

  if (a3)
  {
    a3[1] += 4;
  }

  v83[0] = bswap64(v9);
  if (sub_1001099EC(a2[3], a2[5], v83, 8) != 8)
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
    sub_100119FC4(*a1);
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
    v18 = sub_10011AE94(v17);
  }

  else
  {
    v18 = sub_10011AE74(v17);
  }

  v80[0] = v18;
  v19 = calloc(a1[2], 0x48uLL);
  v80[1] = v19;
  if (!v19)
  {
    v25 = 468;
LABEL_86:
    v58 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "initFilterState", v25, 37, *v58, "malloc");
LABEL_87:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", 510, 37, 0, "initFilterState");
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
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "initFilterState", 477, 37, *v30, "malloc");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 372, 37, v63, "malloc");
    goto LABEL_100;
  }

  v34 = v33;
  if (v32 >= 1)
  {
    v35 = v80[1];
    v36 = (v32 + 1) & 0xFFFFFFFE;
    v37 = vdupq_n_s64(v32 - 1);
    v38 = xmmword_1003772E0;
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
  v42 = sub_1001084A4(v32, v33, sub_100109578, &v74, sub_100109788, 0);
  if (!v42)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 375, 37, 0, "creating pipeline");
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

    v47 = sub_10010928C(v43);
    if (!v47)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 387, 37, 0, "getting worker from pipeline");
      v55 = 0;
LABEL_82:
      v45 = 0;
      goto LABEL_83;
    }

    v48 = v47;
    if (DWORD1(v74) == 1)
    {
      v49 = sub_10010A524(v76, v77, v83, 16);
      if (v49)
      {
        v50 = v49;
        if (v49 < 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 397, 37, 0, "reading block header");
          v50 = 0;
        }

        else if (v49 == 16)
        {
          v51 = v31;
          v52 = bswap64(v83[0]);
          v53 = bswap64(v83[1]);
          if (v53 > v51 || v52 > v51)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 405, 37, 0, "Invalid block header payload=0x%llx raw=0x%llx block=0x%llx\n", v53, v52, v51);
            v50 = 16;
            v31 = v51;
          }

          else
          {
            v54 = sub_10010A524(v76, v77, v48[1], v53);
            if (v54 < 0)
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 411, 37, 0, "reading block payload");
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

              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 415, 37, 0, "Truncated block payload (%lld/%llu bytes read)", v54, v53);
            }

            v31 = v73;
          }
        }

        else
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 399, 37, 0, "Truncated block header (%lld/16 bytes read)", v49);
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
      v56 = sub_10010A524(v76, v77, *(v47 + 8), v31);
      if (v56 < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 428, 37, 0, "reading block");
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
    if ((sub_1001093C0(v43) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 445, 37, 0, "RunWorker");
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
  if ((sub_100108EA0(v43) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 447, 37, 0, "ThreadPipelineDestroy");
    free(v72);
    goto LABEL_100;
  }

  free(v72);
  if (v70)
  {
LABEL_100:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", 513, 37, 0, "processStream");
    goto LABEL_101;
  }

  v71 = (a2[3])(a2[5], 0, 0);
  if (v71 < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 121, 37, 0, "pcWrite EOF failed");
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", 520, 37, 0, "writing EOF");
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