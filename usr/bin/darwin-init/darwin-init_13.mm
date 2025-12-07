uint64_t sub_100117C68(_DWORD *a1, const void *a2, size_t a3)
{
  if (a3 < 0x101)
  {
    v6 = a1 + 1;
    memcpy(a1 + 1, a2, a3);
    *a1 = a3;
    memset_s(v6 + a3, 256 - a3, 0, 256 - a3);
    return 0;
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "setFieldBlob", 223, 57, 0, "Invalid field size");
    return 0xFFFFFFFFLL;
  }
}

int AEAContextGenerateFieldBlob(AEAContext context, AEAContextField field)
{
  v6 = 0;
  if (field == 19)
  {
    v3 = context + 2156;
    result = AEAKeychainGenerateItem(0, 0x63uLL, 0x100uLL, context + 2156, &v6);
    if ((result & 0x80000000) == 0)
    {
      v5 = v6;
      if (v6 < 0x101)
      {
        *(context + 538) = v6;
        goto LABEL_9;
      }

      goto LABEL_15;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGenerateFieldBlob", 527, 57, 0, "generate random field");
  }

  else if (field == 9)
  {
    v3 = context + 76;
    result = AEAKeychainGenerateItem(1, 0x100uLL, 0x100uLL, context + 76, &v6);
    if ((result & 0x80000000) == 0)
    {
      v5 = v6;
      if (v6 < 0x101)
      {
        *(context + 18) = v6;
LABEL_9:
        memset_s(&v3[v5], 256 - v5, 0, 256 - v5);
        return 0;
      }

LABEL_15:
      __break(1u);
      return result;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGenerateFieldBlob", 520, 57, 0, "generate random field");
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGenerateFieldBlob", 532, 57, 0, "Invalid field");
  }

  return -1;
}

uint64_t AEAContextSetFieldCallback(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 16)
  {
    result = 0;
    a1[305] = a3;
    a1[304] = a4;
  }

  else if (a2 == 15)
  {
    result = 0;
    a1[303] = a3;
    a1[302] = a4;
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldCallback", 555, 57, 0, "Invalid field", v4, v5);
    return 0xFFFFFFFFLL;
  }

  return result;
}

unint64_t AEAContextGetContainerSizeUpperBound(uint64_t a1, uint64_t a2)
{
  memset(__s, 0, sizeof(__s));
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  if ((sub_1000DB560(__s, a1) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetContainerSizeUpperBound", 569, 57, 0, "Invalid context", v8, v9, v10, v11);
    return -1;
  }

  if ((sub_1000FB160(&v8, a1, __s) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetContainerSizeUpperBound", 572, 57, 0, "deriving container offsets", v8, v9, v10, v11);
    return -1;
  }

  v4 = v14 * (((a2 + *(a1 + 16) - 1) / *(a1 + 16) + *(a1 + 20) - 1) / *(a1 + 20));
  v5 = __CFADD__(v12, v4);
  v6 = v12 + v4;
  if (v5)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetContainerSizeUpperBound", 580, 57, 0, "invalid sizes", v8, v9, v10, v11);
    return -1;
  }

  if (__CFADD__(v6, a2))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetContainerSizeUpperBound", 581, 57, 0, "invalid sizes", v8, v9, v10, v11);
    return -1;
  }

  result = sub_1000F2900(v6 + a2, *(a1 + 56));
  if (result == -1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetContainerSizeUpperBound", 585, 57, 0, "Container size is too large to allow padding", v8, v9, v10, v11);
    return -1;
  }

  return result;
}

uint64_t sub_100118024(void *a1)
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

uint64_t sub_10011803C(void *a1)
{
  v1 = a1[3];
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

uint64_t sub_10011806C(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 == sub_1001180AC || v1 == sub_1001180F4)
  {
    return **a1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1001180AC(int *a1)
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

uint64_t sub_1001180F4(char *a1)
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

uint64_t AAByteStreamCloseWithState(uint64_t (**a1)(void))
{
  if (a1)
  {
    v2 = a1[12];
    v3 = *a1;
    if (v2)
    {
      if (v3)
      {
        v4 = v2();
LABEL_8:
        v5 = v4;
LABEL_10:
        free(a1);
        return v5;
      }
    }

    else if (v3)
    {
      v4 = a1[1]();
      goto LABEL_8;
    }

    v5 = 0;
    goto LABEL_10;
  }

  return 0;
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

uint64_t AAByteStreamPReadAsync(void *a1)
{
  v1 = a1[10];
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
    v4[1] = sub_1001180AC;
    v4[2] = sub_1001183E4;
    v4[3] = sub_100118468;
    v4[4] = sub_1001184EC;
    v4[5] = sub_100118574;
    v4[7] = sub_1001185FC;
    v4[6] = sub_100118608;
    v4[8] = sub_100118620;
    v4[9] = sub_100118638;
  }

  else
  {
    v7 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAFileStreamOpenWithFD", 402, 17, *v7, "malloc");
    free(v4);
    free(v6);
    return 0;
  }

  return v4;
}

ssize_t sub_1001183E4(int *a1, void *a2, size_t a3)
{
  if (a1[2])
  {
    return -1;
  }

  v3 = read(*a1, a2, a3);
  if (v3 < 0)
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamRead", 92, 17, "aaFileStreamRead err=%zd buf=%p n=%zu", v6, v7, v8, v3, a2, a3);
  }

  return v3;
}

ssize_t sub_100118468(int *a1, const void *a2, size_t a3)
{
  if (a1[2])
  {
    return -1;
  }

  v3 = write(*a1, a2, a3);
  if (v3 < 0)
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamWrite", 104, 17, "aaFileStreamWrite err=%zd buf=%p n=%zu", v6, v7, v8, v3, a2, a3);
  }

  return v3;
}

ssize_t sub_1001184EC(int *a1, void *a2, size_t a3, off_t a4)
{
  if (a1[2])
  {
    return -1;
  }

  v4 = pread(*a1, a2, a3, a4);
  if (v4 < 0)
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamPRead", 116, 17, "aaFileStreamPRead err=%zd buf=%p n=%zu off=%llu", v8, v9, v10, v4, a2, a3, a4);
  }

  return v4;
}

ssize_t sub_100118574(int *a1, const void *a2, size_t a3, off_t a4)
{
  if (a1[2])
  {
    return -1;
  }

  v4 = pwrite(*a1, a2, a3, a4);
  if (v4 < 0)
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamPWrite", 128, 17, "aaFileStreamPWrite err=%zd buf=%p n=%zu off=%llu", v8, v9, v10, v4, a2, a3, a4);
  }

  return v4;
}

off_t sub_100118608(int *a1, off_t a2, int a3)
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

uint64_t sub_100118620(int *a1, off_t a2)
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

uint64_t sub_100118638(int *a1)
{
  if (a1[2])
  {
    return 0xFFFFFFFFLL;
  }

  result = fsync(*a1);
  if (result)
  {
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamFlush", 151, 17, *v4, "fsync", v1, v2);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAFileStreamOpenWithPath", 428, 17, *v7, "open: %s", path);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AATempFileStreamOpenWithDirectory", v6, 17, v7, v5, v10);
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

  else if ((sub_1000F4C14(v4 + 12, 0x400uLL) & 0x80000000) != 0)
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
  v2[1] = sub_1001180F4;
  v2[2] = sub_1001183E4;
  v2[3] = sub_100118468;
  v2[4] = sub_1001184EC;
  v2[5] = sub_100118574;
  v2[7] = sub_1001185FC;
  v2[6] = sub_100118608;
  v2[8] = sub_100118620;
  v2[9] = sub_100118638;
  return v2;
}

int AASharedBufferPipeOpen(AAByteStream *ostream, AAByteStream *istream, size_t buffer_capacity)
{
  v6 = calloc(1uLL, 0x68uLL);
  v7 = calloc(1uLL, 0x68uLL);
  v8 = v7;
  if (v6 && v7)
  {
    v9 = sub_1000F9EEC(buffer_capacity);
    if (v9)
    {
      v10 = v9;
      result = 0;
      *v8 = v10;
      *(v8 + 1) = sub_100118ADC;
      *(v8 + 3) = sub_100118B20;
      *(v8 + 7) = sub_1000FA760;
      *v6 = v10;
      *(v6 + 1) = sub_100118B24;
      *(v6 + 2) = sub_100118B58;
      *(v6 + 7) = sub_1000FA760;
      *ostream = v8;
      *istream = v6;
      return result;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AASharedBufferPipeOpen", 503, 17, 0, "SharedBufferCreate");
  }

  else
  {
    v12 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AASharedBufferPipeOpen", 499, 17, v12, "malloc");
  }

  free(v6);
  free(v8);
  sub_1000FA398(0);
  return -1;
}

uint64_t sub_100118ADC(uint64_t a1)
{
  sub_1000FAB94(a1, 0, 0);
  if (sub_1000FA414(a1))
  {
    sub_1000FA398(a1);
  }

  return 0;
}

uint64_t sub_100118B24(uint64_t a1)
{
  if (sub_1000FA414(a1))
  {
    sub_1000FA398(a1);
  }

  return 0;
}

void *AAMagicInputStreamOpen(void *a1, size_t a2, void *a3, size_t *a4)
{
  v8 = calloc(1uLL, 0x68uLL);
  v9 = malloc(0x18uLL);
  v10 = v9;
  if (!v8 || !v9)
  {
    v11 = *__error();
    v12 = 552;
LABEL_11:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAMagicInputStreamOpen", v12, 17, v11, "malloc");
LABEL_12:
    free(v8);
    free(v10);
    return 0;
  }

  memset_s(v9, 0x18uLL, 0, 0x18uLL);
  *v10 = a1;
  if (a2 >= 0x2000000001)
  {
    *__error() = 12;
    v10[2] = 0;
LABEL_10:
    v11 = *__error();
    v12 = 558;
    goto LABEL_11;
  }

  v13 = malloc(a2);
  v10[2] = v13;
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = a1[2];
  if (!v14 || (v15 = v14(*a1, v13, a2), (v15 & 0x8000000000000000) != 0))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAMagicInputStreamOpen", 562, 17, 0, "reading magic bytes\n");
    goto LABEL_12;
  }

  v16 = v15;
  v10[1] = v15;
  memcpy(a3, v10[2], v15);
  *a4 = v16;
  *v8 = v10;
  v8[1] = sub_100118D10;
  v8[2] = sub_100118D44;
  v8[7] = sub_100118E58;
  return v8;
}

uint64_t sub_100118D10(void **a1)
{
  free(a1[2]);
  free(a1);
  return 0;
}

uint64_t sub_100118D44(uint64_t **a1, char *__dst, size_t a3)
{
  v3 = a3;
  v6 = a1[1];
  if (v6)
  {
    v7 = 0;
    if (!a3)
    {
      return v7;
    }

    do
    {
      if (v6 >= v3)
      {
        v8 = v3;
      }

      else
      {
        v8 = v6;
      }

      memcpy(__dst, a1[2], v8);
      v9 = a1[1];
      if (v9 > v8)
      {
        memmove(a1[2], a1[2] + v8, v9 - v8);
        v9 = a1[1];
      }

      __dst += v8;
      v3 -= v8;
      v7 += v8;
      v6 = (v9 - v8);
      a1[1] = v6;
      if (v6)
      {
        v10 = v3 == 0;
      }

      else
      {
        v10 = 1;
      }
    }

    while (!v10);
    if (!v3)
    {
      return v7;
    }

    v11 = (*a1)[2];
    if (v11)
    {
      v12 = v11(**a1, __dst, v3);
      if (v12 < 0)
      {
        return v12;
      }

      v7 += v12;
      return v7;
    }

    return -1;
  }

  v13 = (*a1)[2];
  if (!v13)
  {
    return -1;
  }

  v14 = **a1;

  return v13(v14);
}

void **sub_100118E58(void **result)
{
  v1 = (*result)[7];
  if (v1)
  {
    return v1(**result);
  }

  return result;
}

void *AATeeOutputStreamOpen(uint64_t a1, uint64_t a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = malloc(0x10uLL);
  v6 = v5;
  if (v5 && (memset_s(v5, 0x10uLL, 0, 0x10uLL), v4))
  {
    *v6 = a1;
    v6[1] = a2;
    *v4 = v6;
    v4[1] = sub_100118F60;
    v4[3] = sub_100118F7C;
    v4[5] = sub_100119088;
    v4[7] = sub_1001191B4;
  }

  else
  {
    v7 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AATeeOutputStreamOpen", 591, 17, *v7, "malloc");
    free(v4);
    free(v6);
    return 0;
  }

  return v4;
}

uint64_t sub_100118F7C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  if (*(*a1 + 24))
  {
    v7 = 0;
    if (!a3)
    {
      if (*(a1[1] + 24))
      {
        v11 = 0;
      }

      else
      {
        v11 = -1;
      }

      goto LABEL_20;
    }

    v8 = a2;
    v9 = a3;
    while (1)
    {
      v10 = (*(v6 + 24))(*v6, v8, v9);
      if (v10 < 1)
      {
        break;
      }

      v8 += v10;
      v7 += v10;
      v9 -= v10;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    v7 = v10;
  }

  else
  {
    v7 = -1;
  }

LABEL_12:
  v12 = a1[1];
  if (*(v12 + 24))
  {
    v11 = 0;
    if (a3)
    {
      v13 = a3;
      while (1)
      {
        v14 = (*(v12 + 24))(*v12, v4, v13);
        if (v14 < 1)
        {
          break;
        }

        v4 += v14;
        v11 += v14;
        v13 -= v14;
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      v11 = v14;
    }
  }

  else
  {
    v11 = -1;
  }

LABEL_20:
  if (v11 == a3 && v7 == a3)
  {
    return a3;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_100119088(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v8 = *a1;
  if (*(*a1 + 40))
  {
    v9 = 0;
    if (!a3)
    {
      if (*(a1[1] + 40))
      {
        v14 = 0;
      }

      else
      {
        v14 = -1;
      }

      goto LABEL_20;
    }

    v10 = a2;
    v11 = a4;
    v12 = a3;
    while (1)
    {
      v13 = (*(v8 + 40))(*v8, v10, v12, v11);
      if (v13 < 1)
      {
        break;
      }

      v10 += v13;
      v9 += v13;
      v11 += v13;
      v12 -= v13;
      if (!v12)
      {
        goto LABEL_12;
      }
    }

    v9 = v13;
  }

  else
  {
    v9 = -1;
  }

LABEL_12:
  v15 = a1[1];
  if (*(v15 + 40))
  {
    v14 = 0;
    if (a3)
    {
      v16 = a3;
      while (1)
      {
        v17 = (*(v15 + 40))(*v15, v6, v16, v4);
        if (v17 < 1)
        {
          break;
        }

        v6 += v17;
        v14 += v17;
        v4 += v17;
        v16 -= v17;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      v14 = v17;
    }
  }

  else
  {
    v14 = -1;
  }

LABEL_20:
  if (v14 == a3 && v9 == a3)
  {
    return a3;
  }

  else
  {
    return -1;
  }
}

void **sub_1001191B4(void **result)
{
  v1 = result;
  v2 = (*result)[7];
  if (v2)
  {
    result = v2(**result);
  }

  v3 = v1[1];
  v4 = v3[7];
  if (v4)
  {
    v5 = *v3;

    return v4(v5);
  }

  return result;
}

AAByteStream AACustomByteStreamOpen(void)
{
  v0 = calloc(1uLL, 0x68uLL);
  if (!v0)
  {
    v1 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AACustomByteStreamOpen", 619, 17, *v1, "malloc");
  }

  return v0;
}

uint64_t *AEADecryptToFileAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  strcpy(v26, ".tmp_decrypt");
  memset(&v25, 0, sizeof(v25));
  v12 = malloc(0x898uLL);
  v13 = v12;
  if (v12)
  {
    memset_s(v12, 0x898uLL, 0, 0x898uLL);
    v14 = malloc(0x38uLL);
    v15 = v14;
    if (v14)
    {
      memset_s(v14, 0x38uLL, 0, 0x38uLL);
      *(v13 + 8) = a2;
      *(v13 + 16) = a3;
      *(v13 + 24) = a4;
      *(v13 + 2084) = -1;
      *(v13 + 2080) = a5 >> 62;
      if (pthread_mutex_init((v13 + 2136), 0))
      {
        v16 = "MutexInit";
        v17 = 290;
      }

      else if (strlen(a1) - 1012 > 0xFFFFFFFFFFFFFBFELL)
      {
        __strlcpy_chk();
        __strlcpy_chk();
        __strlcat_chk();
        v21 = stat((v13 + 32), &v25);
        if (v21 || (v25.st_mode & 0xF000) == 0x8000)
        {
          v22 = stat((v13 + 1056), &v25);
          if (v22 || (v25.st_mode & 0xF000) == 0x8000)
          {
            if (v22 | v21)
            {
              v23 = AEADecryptAsyncStreamOpen(v13, sub_100119660, sub_1001198EC, sub_100119B6C, a5, a6);
              *v13 = v23;
              if (v23)
              {
                *v15 = v13;
                v15[1] = sub_100119D68;
                v15[4] = sub_100119EEC;
                v15[2] = sub_100119EF4;
                v15[3] = sub_100119EFC;
                return v15;
              }

              v16 = "creating DecryptAsyncStream";
              v17 = 313;
            }

            else
            {
              v24 = (v13 + 32);
              v16 = "Both file and temp file exist: %s";
              v17 = 309;
            }
          }

          else
          {
            v24 = (v13 + 1056);
            v16 = "Temp file exists but is not a regular file: %s";
            v17 = 306;
          }
        }

        else
        {
          v24 = (v13 + 32);
          v16 = "File exists but is not a regular file: %s";
          v17 = 301;
        }
      }

      else
      {
        v24 = a1;
        v16 = "Filename is too long: %s";
        v17 = 293;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "AEADecryptToFileAsyncStreamOpen", v17, 98, 0, v16, v24);
    }

    else
    {
      v19 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "AEADecryptToFileAsyncStreamOpen", 281, 98, v19, "malloc");
    }
  }

  else
  {
    v18 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "AEADecryptToFileAsyncStreamOpen", 279, 98, *v18, "malloc");
    v15 = 0;
  }

  sub_100119D68(v13);
  free(v15);
  return 0;
}

uint64_t sub_100119660(uint64_t a1, AEAContext context)
{
  memset(&v14, 0, sizeof(v14));
  v4 = *(a1 + 16);
  if (v4 && (v4(*(a1 + 8), context) & 0x80000000) != 0)
  {
    v5 = "Client context callback returned an error";
    v6 = 58;
    goto LABEL_9;
  }

  if (!*(a1 + 2096))
  {
    result = 0;
    *(a1 + 2096) = 1;
    return result;
  }

  if ((*(a1 + 2084) & 0x80000000) == 0 || (*(a1 + 2088) & 0x80000000) == 0)
  {
    v5 = "Invalid state, file already open";
    v6 = 64;
LABEL_9:
    v8 = 0;
LABEL_10:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "setupContext", v6, 98, v8, v5, v13);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 2104) = AEAContextGetFieldUInt(context, 0xDu);
  *(a1 + 2112) = AEAContextGetFieldUInt(context, 4u);
  if (!stat((a1 + 32), &v14) && (v14.st_mode & 0xF000) == 0x8000)
  {
    if (v14.st_size && v14.st_size != *(a1 + 2104))
    {
      v13 = a1 + 32;
      v5 = "Destination file exists and size doesn't match: %s";
      v6 = 77;
      goto LABEL_9;
    }

    rename((a1 + 32), (a1 + 1056), v9);
    if (v10)
    {
      v8 = *__error();
      v13 = a1 + 32;
      v5 = "rename: %s";
      v6 = 82;
      goto LABEL_10;
    }

    if (*(a1 + 2080))
    {
      fprintf(__stderrp, "Verifying file: %s\n", (a1 + 32));
    }
  }

  if (stat((a1 + 1056), &v14) || (v14.st_mode & 0xF000) != 0x8000)
  {
    *(a1 + 2088) = open((a1 + 1056), 1537, 420);
    *(a1 + 2092) = 1;
    v11 = *(a1 + 2084);
  }

  else
  {
    v11 = open((a1 + 1056), 0);
    *(a1 + 2084) = v11;
  }

  v12 = *(a1 + 2088);
  if (v11 < 0)
  {
    if (v12 < 0)
    {
      v8 = *__error();
      v13 = a1 + 1056;
      v5 = "open: %s";
      v6 = 98;
      goto LABEL_10;
    }
  }

  else if (v12 < 0)
  {
    return 0;
  }

  result = ftruncate(v12, *(a1 + 2104));
  if (result)
  {
    v8 = *__error();
    v13 = a1 + 1056;
    v5 = "truncate to final size: %s";
    v6 = 101;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001198EC(uint64_t a1, size_t a2, uint64_t a3, int a4, const void *a5, size_t a6)
{
  if (!*(a1 + 2092))
  {
    v9 = *(a1 + 2112);
    if (v9 < a2)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "verifySegment", 117, 98, 0, "Invalid segment size");
      return 0xFFFFFFFFLL;
    }

    v24 = 0;
    memset(v23, 0, sizeof(v23));
    if (v9 < 0x2000000001)
    {
      v10 = malloc(v9);
      if (v10)
      {
        v15 = 0;
        while (a2 > v15)
        {
          v16 = pread(*(a1 + 2084), v10 + v15, a2 - v15, v15 + a3);
          if (v16)
          {
            v17 = 0;
          }

          else
          {
            v17 = 5;
          }

          v15 += v16 & ~(v16 >> 63);
          if (v16 < 0)
          {
            v17 = 4;
          }

          if (v17)
          {
            if (v17 == 4)
            {
              goto LABEL_21;
            }

            break;
          }
        }

        if (v15 == a2)
        {
          v18 = sub_1000FB1CC(v23, a4, v10, a2);
          v6 = 0;
          if (v18 < 0 || LODWORD(v23[0]) != a6)
          {
            goto LABEL_22;
          }

          if (!memcmp(v23 + 4, a5, a6))
          {
            atomic_fetch_add_explicit((a1 + 2128), a2, memory_order_relaxed);
            v21 = *(a1 + 24);
            if (v21 && ((v22 = *(a1 + 2104)) == 0 ? (v19.n128_u64[0] = 0) : (v19.n128_f32[0] = (*(a1 + 2128) * 100.0) / v22), (v21(*(a1 + 8), v19) & 0x80000000) != 0))
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "verifySegment", 144, 98, 0, "Client progress callback reported an error");
              v6 = 0xFFFFFFFFLL;
            }

            else
            {
              if (*(a1 + 2080) >= 3u)
              {
                fprintf(__stderrp, "Segment verified: offset=%llu size=%zu\n", a3, a2);
              }

              v6 = 1;
            }

            goto LABEL_22;
          }
        }
      }

LABEL_21:
      v6 = 0;
    }

    else
    {
      v10 = 0;
      v6 = 0;
      *__error() = 12;
    }

LABEL_22:
    free(v10);
    return v6;
  }

  return 0;
}

uint64_t sub_100119B6C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if ((*(a1 + 2088) & 0x80000000) != 0)
  {
    if (pthread_mutex_lock((a1 + 2136)))
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", 165, 98, 0, "MutexInit");
      return 0xFFFFFFFFLL;
    }

    if ((*(a1 + 2088) & 0x80000000) != 0)
    {
      *(a1 + 2088) = open((a1 + 1056), 2);
    }

    if (pthread_mutex_unlock((a1 + 2136)))
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", 167, 98, 0, "MutexUnlock");
      return 0xFFFFFFFFLL;
    }

    if ((*(a1 + 2088) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", 168, 98, 0, "Can't reopen %s for writing");
      return 0xFFFFFFFFLL;
    }
  }

  v9 = 0;
  do
  {
    v10 = v9;
    if (a2 <= v9)
    {
      break;
    }

    v11 = pwrite(*(a1 + 2088), (a4 + v9), a2 - v9, v9 + a3);
    v9 = v11 + v10;
  }

  while (v11 > 0);
  if (a2 == v10)
  {
    atomic_fetch_add_explicit((a1 + 2128), a2, memory_order_relaxed);
    if (*(a1 + 2080) >= 3u)
    {
      fprintf(__stderrp, "Segment processed: offset=%llu size=%zu\n", a3, a2);
    }
  }

  else
  {
    atomic_fetch_add_explicit((a1 + 2120), a2, memory_order_relaxed);
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", 181, 98, 0, "Segment write failed: offset=%llu size=%zu\n", a3, a2);
  }

  v12 = *(a1 + 24);
  if (!v12)
  {
    return 0;
  }

  v13 = *(a1 + 2104);
  if (v13)
  {
    a5.n128_f32[0] = (*(a1 + 2128) * 100.0) / v13;
  }

  else
  {
    a5.n128_u64[0] = 0;
  }

  if ((v12(*(a1 + 8), a5) & 0x80000000) == 0)
  {
    return 0;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", 190, 98, 0, "Client progress callback reported an error", v15);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100119D68(uint64_t a1)
{
  if (a1)
  {
    v2 = AAAsyncByteStreamClose(*a1);
    if ((v2 & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "decryptToFileAsyncClose", 207, 98, 0, "Async stream reported errors");
    }

    pthread_mutex_destroy((a1 + 2136));
    v3 = atomic_load((a1 + 2128));
    v4 = atomic_load((a1 + 2120));
    if (!v2)
    {
      if (v3 == *(a1 + 2104) && v4 == 0)
      {
        v2 = 0;
      }

      else
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "decryptToFileAsyncClose", 216, 98, 0, "Some segments failed to process");
        v2 = 0xFFFFFFFFLL;
      }
    }

    v6 = *(a1 + 2084);
    if (v6 < 0)
    {
      v8 = *(a1 + 2088);
      if (v8 < 0)
      {
        if (v2)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      }
    }

    else
    {
      close(v6);
      v8 = *(a1 + 2088);
      if (v8 < 0)
      {
        if (!v2)
        {
LABEL_18:
          rename((a1 + 1056), (a1 + 32), v7);
          if (v9)
          {
            v10 = __error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "decryptToFileAsyncClose", 227, 98, *v10, "rename: %s", (a1 + 32));
            v2 = 0xFFFFFFFFLL;
            goto LABEL_24;
          }

LABEL_21:
          if (*(a1 + 2080) >= 2u)
          {
            fprintf(__stderrp, "Decrypted file: %s\n", (a1 + 32));
          }

          v2 = 0;
        }

LABEL_24:
        free(a1);
        return v2;
      }
    }

    close(v8);
    if (!v2)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  return 0;
}

void *AEADecryptToFileChunkAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  v12 = AEADecryptToFileAsyncStreamOpen(a1, a2, a3, a4, a7 | 0x200000000000000, a8);
  if (v12)
  {

    return sub_1000DEB6C(v12, a5, a6, a7, a8);
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "AEADecryptToFileChunkAsyncStreamOpen", 349, 98, 0, "AEADecryptToFileAsyncStreamOpen");
    return 0;
  }
}

char *sub_100119FA4(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_100483688[a1];
  }
}

char *sub_100119FC4(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1004836C0[a1];
  }
}

unint64_t sub_100119FE4(unsigned int a1)
{
  v1 = 0x2D62653466787AuLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 63;
  }

  return v1 & 0x7F;
}

uint64_t sub_10011A010(uint64_t result)
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

char *sub_10011A01C(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1004836F8[a1];
  }
}

void *sub_10011A03C()
{
  v0 = calloc(1uLL, 0x28uLL);
  if (!v0)
  {
    v1 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableCreate", 30, 35, *v1, "malloc");
  }

  return v0;
}

void **sub_10011A09C(unsigned int *a1)
{
  v2 = calloc(1uLL, 0x28uLL);
  v3 = v2;
  if (!v2)
  {
    v7 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableClone", 38, 35, *v7, "malloc");
    goto LABEL_7;
  }

  if (a1)
  {
    if ((sub_10011A15C(v2, a1[1]) & 0x80000000) == 0 && (sub_1000E05D0((v3 + 2), *(a1 + 2)) & 0x80000000) == 0)
    {
      v4 = *a1;
      *v3 = v4;
      memcpy(v3[1], *(a1 + 1), 16 * v4);
      v6 = *(a1 + 3);
      v5 = *(a1 + 4);
      v3[3] = v6;
      memcpy(v3[4], v5, v6);
      return v3;
    }

LABEL_7:
    sub_10011A1FC(v3);
    return 0;
  }

  return v3;
}

uint64_t sub_10011A15C(uint64_t a1, unsigned int a2)
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
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "stringTableReserve", 23, 35, *v7, "malloc");
  return 0xFFFFFFFFLL;
}

void sub_10011A1FC(void **a1)
{
  if (a1)
  {
    sub_1000E0670((a1 + 2));
    free(a1[1]);

    free(a1);
  }
}

uint64_t sub_10011A248(uint64_t result)
{
  *(result + 24) = 0;
  *result = 0;
  return result;
}

uint64_t sub_10011A254(unsigned int *a1, const void *a2, size_t a3, _DWORD *a4)
{
  if (a4)
  {
    *a4 = *a1;
  }

  if (HIDWORD(a3))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppend", 74, 35, 0, "string too long for StringTable");
  }

  else if (sub_10011A15C(a1, *a1 + 1))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppend", 77, 35, 0, "increasing string table capacity");
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0;
    if (!sub_1000E0518((a1 + 4), 0, a3 + 1, v11))
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppend", 81, 35, 0, "insertion failed in string table");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10011A384(unsigned int *a1, const char *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = *a1;
  }

  bzero(__s, 0x800uLL);
  v5 = fopen(a2, "r");
  if (!v5)
  {
    v12 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppendFile", 104, 35, v12, "%s", a2);
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  if (!fgets(__s, 2048, v5))
  {
LABEL_15:
    v11 = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v7 = strlen(__s);
    if (v7)
    {
      break;
    }

    __s[0] = 0;
LABEL_14:
    if (!fgets(__s, 2048, v6))
    {
      goto LABEL_15;
    }
  }

  v8 = v7;
  v9 = v7 - 1;
  v10 = __s[v7 - 1];
  if ((v10 & 0x80000000) == 0)
  {
    if ((_DefaultRuneLocale.__runetype[v10] & 0x4000) != 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    __s[v8] = 0;
    v9 = v8;
    goto LABEL_13;
  }

  if (!__maskrune(v10, 0x4000uLL))
  {
    goto LABEL_12;
  }

LABEL_8:
  __s[v9] = 0;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_13:
  if ((sub_10011A254(a1, __s, v9, 0) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  v11 = 0xFFFFFFFFLL;
LABEL_18:
  fclose(v6);
  return v11;
}

uint64_t sub_10011A514(unsigned int *a1, CFArrayRef theArray, unsigned int *a3)
{
  if (a3)
  {
    *a3 = *a1;
  }

  Count = CFArrayGetCount(theArray);
  v6 = Count;
  if (!Count)
  {
    return 0;
  }

  if (sub_10011A15C(a1, *a1 + Count))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppendArray", 133, 35, 0, "increasing string table capacity");
    return 0xFFFFFFFFLL;
  }

  else
  {
    bzero(buffer, 0x800uLL);
    v8 = 0;
    v9 = v6;
    v10 = 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      if (!ValueAtIndex || !CFStringGetCString(ValueAtIndex, buffer, 2048, 0x8000100u))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppendArray", 139, 35, 0, "invalid string");
        return (v10 << 31 >> 31);
      }

      v12 = strlen(buffer);
      if ((sub_10011A254(a1, buffer, v12, 0) & 0x80000000) != 0)
      {
        break;
      }

      v10 = ++v8 < v9;
      if (v9 == v8)
      {
        v10 = 0;
        return (v10 << 31 >> 31);
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppendArray", 140, 35, 0, "inserting string");
    return (v10 << 31 >> 31);
  }
}

uint64_t sub_10011A6AC(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = *a1;
  }

  if (!*a2)
  {
    return 0;
  }

  if (sub_10011A15C(a1, *a1 + *a2))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppendTable", 152, 35, 0, "increasing string table capacity");
    return 0xFFFFFFFFLL;
  }

  v11[0] = 0;
  v11[1] = 0;
  if (sub_1000E0518(a1 + 16, *(a2 + 4), *(a2 + 3), v11))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppendTable", 156, 35, 0, "increasing blob capacity failed");
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

size_t sub_10011A7DC(unsigned int *a1, void *a2)
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableSort", 195, 35, *v19, "malloc");
        return 0xFFFFFFFFLL;
      }

      v6 = v5;
      *a2 = v5;
      v7 = *a1;
      if (v7)
      {
        v8 = 0;
        v9 = vdupq_n_s64(v7 - 1);
        v10 = xmmword_10037C710;
        v11 = xmmword_1003772E0;
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

    qsort_r(*(a1 + 1), v7, 0x10uLL, a1, sub_10011A9EC);
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

uint64_t sub_10011AA04(int *a1, char *__s, unsigned int *a3)
{
  v6 = strlen(__s);

  return sub_10011AA5C(a1, __s, v6, a3);
}

uint64_t sub_10011AA5C(int *a1, char *__s1, size_t a3, unsigned int *a4)
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
  v14 = sub_10011AD60(a1, v13, __s1, a3);
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
        v16 = sub_10011AD60(a1, v15 + ((v13 - v15) >> 1), __s1, a3);
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

uint64_t sub_10011ABA4(int *a1, char *__s)
{
  v4 = strlen(__s);
  if (sub_10011AA5C(a1, __s, v4, 0))
  {
    return 1;
  }

  if (v4)
  {
    v6 = v4 - 1;
    while (__s[v6] != 47 || !sub_10011AA5C(a1, __s, v6, 0))
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

__CFArray *sub_10011AC40(unsigned int *a1, CFAllocatorRef allocator, CFStringEncoding a3)
{
  Mutable = CFArrayCreateMutable(allocator, *a1, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    if (*a1)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = CFStringCreateWithCString(allocator, (*(a1 + 4) + *(*(a1 + 1) + v7)), a3);
        if (!v9)
        {
          break;
        }

        v10 = v9;
        CFArrayAppendValue(Mutable, v9);
        CFRelease(v10);
        ++v8;
        v7 += 16;
        if (v8 >= *a1)
        {
          return Mutable;
        }
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableGetCFArray", 330, 35, 0, "CFStringCreateWithCString");
      CFRelease(Mutable);
      return 0;
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableGetCFArray", 323, 35, 0, "CFArrayCreateMutable failed");
  }

  return Mutable;
}

uint64_t sub_10011AD60(uint64_t a1, unsigned int a2, char *__s1, size_t __n)
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

uint64_t (*sub_10011AE74(unsigned int a1))()
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_100483730[a1];
  }
}

uint64_t (*sub_10011AE94(unsigned int a1))()
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_100483768[a1];
  }
}

uint64_t sub_10011AEB4(uint64_t a1)
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCGenerateThreadProc", v4, 64, 0, v3, v16, v17, v18, v19);
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCGenerateThreadProc", 82, 64, v14, "reading data segment");
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

    if (sub_1000E6078(v9, v12, *(a1 + 72) + i * v13))
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

uint64_t sub_10011B0C8(int64x2_t *a1)
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 157, 64, 0, "creating workBuffer");
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 166, 64, 0, "Invalid block index");
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
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 174, 64, v17, "reading data segment");
          break;
        }

        v10 = v2;
        if (v7 != v9)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 175, 64, 0, "Truncated read n=%zd pos=%llu read=%u fd=%d", v9);
          break;
        }
      }

      v11 = a1[2].u32[0];
      if (v3 * v11 + v11 > a1[5].i64[0])
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 187, 64, 0, "Parity buffer out of range");
        break;
      }

      if (a1[1].i32[2] != 1)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 205, 64, 0, "invalid variant %u");
        break;
      }

      v21 = 0;
      v12 = sub_1000E6324(v7, v10, (a1[4].i64[1] + v3 * v11), &v21);
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
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 211, 64, v18, "writing data segment");
            break;
          }

          if (v7 != v16)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", 212, 64, 0, "Truncated write n=%zd pos=%llu read=%u fd=%d", v16);
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

unint64_t sub_10011B388(int a1, char *a2, off_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v14 = a7[1];
  if (!v14)
  {
    v14 = sub_1000F4290();
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
  v59 = 0uLL;
  v60 = 0;
  v57 = 0uLL;
  v58 = 0;
  v18 = sub_1000F4248();
  ParallelCompressionEnterThreadErrorContext_0();
  if (a7[3] != 1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 262, 64, 0, "Invalid ECC variant: %u");
    goto LABEL_10;
  }

  if (v16 >= 0x1FFE1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 258, 64, 0, "Invalid blockSize: %u");
LABEL_10:
    v19 = 0;
LABEL_11:
    v20 = 0;
LABEL_12:
    v21 = 1;
    goto LABEL_13;
  }

  v54 = a2;
  v55 = a3;
  v27 = (a4 + v16 - 1) / v16;
  v19 = 34 * v27 + 48;
  if (a5 || a6)
  {
    if (v19 > a6)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 273, 64, 0, "Output buffer too small, %zu B required, %zu B provided");
      goto LABEL_11;
    }

    if (v27 >= v14)
    {
      v28 = v14;
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
      if ((sub_1000F6224(v54, a4, &v59) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 287, 64, 0, "computing buffer digest");
        goto LABEL_11;
      }
    }

    else if ((sub_1000F6584(a1, v55, a4, &v59) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 283, 64, 0, "computing file digest");
      goto LABEL_11;
    }

    v30 = (v27 + v29 - 1) / v29;
    v50 = v17;
    v49 = v29;
    if (v17 >= 1)
    {
      memset(v56, 0, sizeof(v56));
      sub_1000F4310(v56, &v59);
      fwrite("ParallelArchiveECCGenerateCommon:\n", 0x22uLL, 1uLL, __stderrp);
      fprintf(__stderrp, "  Input data SHA1: %s\n", v56);
      fwrite("  ECC variant: ", 0xFuLL, 1uLL, __stderrp);
      if (a7[3] == 1)
      {
        fwrite("RS65537\n", 8uLL, 1uLL, __stderrp);
      }

      fprintf(__stderrp, "%12llu data size\n", a4);
      fprintf(__stderrp, "%12u block size\n", v16);
      fprintf(__stderrp, "%12u ECC parity size per block\n", 34);
      fprintf(__stderrp, "%11.2f%% parity/data ratio\n", 3400.0 / v16);
      fprintf(__stderrp, "%12zu block count\n", (a4 + v16 - 1) / v16);
      fprintf(__stderrp, "%12zu ECC buffer size\n", 34 * v27 + 48);
      fprintf(__stderrp, "%12u worker threads\n", v29);
      fprintf(__stderrp, "%12zu blocks per thread\n", v30);
    }

    v31 = calloc(v29, 0x58uLL);
    v32 = v29;
    v20 = v31;
    if (!v31)
    {
      v43 = v32;
      v44 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 313, 64, *v44, "malloc %u threads", v43);
      goto LABEL_12;
    }

    v33 = 0;
    v34 = a5;
    v35 = 0;
    v48 = v34;
    v52 = v34 + 48;
    v53 = a4;
    v36 = 88 * v32;
    v51 = 1;
    do
    {
      v37 = v30 * v35;
      if (v30 * v35 < v27)
      {
        v38 = v37 + v30;
        if (v37 + v30 >= v27)
        {
          v38 = v27;
        }

        v39 = &v20[v33];
        *(v39 + 1) = v37;
        *(v39 + 2) = v38;
        *(v39 + 10) = a1;
        *(v39 + 6) = v54;
        *(v39 + 7) = v55;
        *(v39 + 8) = v53;
        *(v39 + 9) = v52;
        *(v39 + 10) = 34 * v27;
        *(v39 + 6) = a7[3];
        *(v39 + 7) = v16;
        *(v39 + 4) = 34;
        if (sub_1000E766C(&v20[v33], sub_10011AEB4, &v20[v33], 0))
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 336, 64, 0, "createThread");
          v51 = 0;
        }
      }

      ++v35;
      v33 += 88;
    }

    while (v36 != v33);
    v40 = 0;
    LOBYTE(v21) = v51 == 0;
    while (2)
    {
      v41 = 88 * v40++;
      while (1)
      {
        v42 = *&v20[v41];
        if (v42)
        {
          if (sub_1000E79CC(v42))
          {
            break;
          }
        }

        ++v40;
        v41 += 88;
        if (v40 - v49 == 1)
        {
          v17 = v50;
          if (v21)
          {
            v21 = 1;
            a4 = v53;
            a5 = v48;
          }

          else
          {
            v21 = 0;
            v45 = v59;
            v57 = v59;
            v46 = v60;
            v58 = v60;
            v47 = a7[3];
            a5 = v48;
            a4 = v53;
            *v48 = 0x3031304343455842;
            *(v48 + 8) = v53;
            *(v48 + 16) = v45;
            *(v48 + 32) = v46;
            *(v48 + 36) = v47;
            *(v48 + 40) = v16;
            *(v48 + 44) = 0;
          }

          goto LABEL_13;
        }
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 343, 64, 0, "joinThread");
      v21 = 1;
      if (v40 != v49)
      {
        continue;
      }

      break;
    }

    a4 = v53;
    a5 = v48;
    v17 = v50;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

LABEL_13:
  free(v20);
  v22 = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
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
    v25 = sub_1000F4248();
    fprintf(__stderrp, "Total time %.2fs, %.2f MB/s\n", v25 - v18, vcvtd_n_f64_u64(a4, 0x14uLL) / (v25 - v18));
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

uint64_t sub_10011B9D8(uint64_t a1)
{
  memset(&v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  ParallelCompressionEnterThreadErrorContext_0();
  v2 = open(*a1, 0);
  if (v2 < 0)
  {
    v5 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateFile", 669, 64, *v5, *a1);
    v6 = 0;
    v7 = -1;
    goto LABEL_17;
  }

  v3 = v2;
  if (fstat(v2, &v19))
  {
    v4 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateFile", 673, 64, v4, *a1, v17, *v18, *&v18[16], *&v19.st_dev, v19.st_ino, *&v19.st_uid, *&v19.st_rdev, v19.st_atimespec.tv_sec, v19.st_atimespec.tv_nsec, v19.st_mtimespec.tv_sec, v19.st_mtimespec.tv_nsec, v19.st_ctimespec.tv_sec, v19.st_ctimespec.tv_nsec, v19.st_birthtimespec.tv_sec, v19.st_birthtimespec.tv_nsec);
LABEL_14:
    v6 = 0;
LABEL_15:
    v7 = -1;
    goto LABEL_16;
  }

  if ((v19.st_mode & 0xF000) != 0x8000)
  {
    v17 = *a1;
    v11 = "Error: not a regular file: %s";
    v12 = 675;
LABEL_13:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateFile", v12, 64, 0, v11, v17, *v18, *&v18[16], *&v19.st_dev, v19.st_ino, *&v19.st_uid, *&v19.st_rdev, v19.st_atimespec.tv_sec, v19.st_atimespec.tv_nsec, v19.st_mtimespec.tv_sec, v19.st_mtimespec.tv_nsec, v19.st_ctimespec.tv_sec, v19.st_ctimespec.tv_nsec, v19.st_birthtimespec.tv_sec, v19.st_birthtimespec.tv_nsec);
    goto LABEL_14;
  }

  st_size = v19.st_size;
  *&v18[4] = vextq_s8(vrev64q_s32(*(a1 + 16)), *(a1 + 16), 8uLL);
  *v18 = *(a1 + 32);
  v9 = sub_10011B388(v3, 0, 0, v19.st_size, 0, 0, v18);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v11 = "get ECC buffer size";
    v12 = 687;
    goto LABEL_13;
  }

  v10 = v9;
  v6 = valloc(v9);
  if (!v6)
  {
    v14 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateFile", 690, 64, v14, "malloc");
    goto LABEL_15;
  }

  if (sub_10011B388(v3, 0, 0, st_size, v6, v10, v18) != v10)
  {
    v15 = "generate ECC buffer";
    v16 = 693;
LABEL_24:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateFile", v16, 64, 0, v15);
    goto LABEL_15;
  }

  if ((sub_1000F5188(*(a1 + 8), v6, v10) & 0x80000000) != 0)
  {
    v15 = "store ECC file";
    v16 = 696;
    goto LABEL_24;
  }

  v7 = 0;
LABEL_16:
  close(v3);
LABEL_17:
  free(v6);
  LODWORD(result) = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
  if (result >= 0)
  {
    return v7;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10011BC6C(uint64_t a1, _DWORD *a2)
{
  memset(&v21, 0, sizeof(v21));
  v18 = 0;
  v19 = 0;
  v20 = 0;
  ParallelCompressionEnterThreadErrorContext_0();
  v4 = open(*a1, 2);
  if (v4 < 0)
  {
    v7 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCCheckAndFixFile", 726, 64, *v7, *a1);
    v8 = 0;
    v9 = -1;
    v10 = 1;
    goto LABEL_12;
  }

  v5 = v4;
  if (fstat(v4, &v21))
  {
    v6 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCCheckAndFixFile", 730, 64, v6, *a1, v17, *&v18, v19, v20, *&v21.st_dev, v21.st_ino, *&v21.st_uid, *&v21.st_rdev, v21.st_atimespec.tv_sec, v21.st_atimespec.tv_nsec, v21.st_mtimespec.tv_sec, v21.st_mtimespec.tv_nsec, v21.st_ctimespec.tv_sec, v21.st_ctimespec.tv_nsec, v21.st_birthtimespec.tv_sec, v21.st_birthtimespec.tv_nsec);
LABEL_9:
    v8 = 0;
LABEL_10:
    v10 = 1;
    v9 = -1;
    goto LABEL_11;
  }

  if ((v21.st_mode & 0xF000) != 0x8000)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCCheckAndFixFile", 732, 64, 0, "Error: not a regular file: %s");
    goto LABEL_9;
  }

  st_size = v21.st_size;
  v12 = sub_100121150(*(a1 + 8), 0, -1);
  v8 = v12;
  if (!v12)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCCheckAndFixFile", 737, 64, 0, "mapping ECC file");
    goto LABEL_10;
  }

  v13 = sub_1000FE8F8(v12);
  v14 = sub_100121634(v8);
  LODWORD(v19) = *(a1 + 16);
  v18 = vrev64_s32(*(a1 + 20));
  v9 = sub_10011BEE0(v5, 0, 0, st_size, v13, v14, &v18);
  v10 = 0;
LABEL_11:
  close(v5);
LABEL_12:
  sub_1001213A4(v8);
  LODWORD(result) = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
  v16 = result;
  if (result >= 0)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = result;
  }

  if ((v10 & 1) == 0 && (v16 & 0x80000000) == 0)
  {
    if (a2)
    {
      *a2 = HIDWORD(v20);
    }

    if (v9 >= 0x7FFFFFFF)
    {
      return 0x7FFFFFFFLL;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

unint64_t sub_10011BEE0(int a1, char *a2, off_t a3, unint64_t a4, __int128 *a5, unint64_t a6, uint64_t a7)
{
  v14 = *(a7 + 4);
  if (!v14)
  {
    v14 = sub_1000F4290();
  }

  v61 = *a7;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  v15 = sub_1000F4248();
  *(a7 + 16) = 0;
  *(a7 + 12) = 0;
  ParallelCompressionEnterThreadErrorContext_0();
  v60 = a4;
  if (a6 <= 0x2F)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 452, 64, 0, "Truncated ECC buffer");
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
  v78 = *a5;
  v79 = v16;
  v80 = a5[2];
  if (v78 != 0x3031304343455842)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 454, 64, 0, "Invalid ECC magic");
    goto LABEL_9;
  }

  if (HIDWORD(v80))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 455, 64, 0, "Invalid ECC header");
    goto LABEL_9;
  }

  v59 = DWORD2(v80);
  if (!DWORD2(v80))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 456, 64, 0, "Invalid ECC header");
    goto LABEL_9;
  }

  if (*(&v78 + 1) != a4)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 457, 64, 0, "Input buffer size mismatch: expected %llu B, got %llu B");
    goto LABEL_9;
  }

  v23 = DWORD1(v80);
  if (DWORD1(v80) != 1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 476, 64, 0, "Invalid ECC variant: %u", DWORD1(v80));
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
LABEL_54:
    v22 = v59;
    goto LABEL_10;
  }

  if (DWORD2(v80) >= 0x1FFE1)
  {
    v22 = DWORD2(v80);
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 472, 64, 0, "Invalid blockSize: %u", DWORD2(v80));
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v23 = 1;
    goto LABEL_10;
  }

  v35 = (a4 + DWORD2(v80) - 1) / DWORD2(v80);
  v57 = 34 * v35;
  if (34 * v35 + 48 != a6)
  {
    v37 = "Invalid ECC buffer size";
    v38 = 481;
    goto LABEL_51;
  }

  if (v35 >= v14)
  {
    LODWORD(v36) = v14;
  }

  else
  {
    LODWORD(v36) = (a4 + DWORD2(v80) - 1) / DWORD2(v80);
  }

  if (v36 <= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = v36;
  }

  __count = v36;
  v56 = (a4 + DWORD2(v80) - 1) / DWORD2(v80);
  if (a1 < 0)
  {
    if ((sub_1000F6224(a2, a4, &v81) & 0x80000000) != 0)
    {
      v37 = "computing buffer digest";
      v38 = 495;
      goto LABEL_51;
    }
  }

  else if ((sub_1000F6584(a1, a3, a4, &v81) & 0x80000000) != 0)
  {
    v37 = "computing file digest";
    v38 = 491;
LABEL_51:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", v38, 64, 0, v37);
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

  v39 = (v56 + __count - 1) / __count;
  if (v61 >= 1)
  {
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
    v62 = 0u;
    v63 = 0u;
    fwrite("ParallelArchiveECCFixCommon:\n", 0x1DuLL, 1uLL, __stderrp);
    sub_1000F4310(&v62, &v81);
    fprintf(__stderrp, "  Input data SHA1: %s\n", &v62);
    sub_1000F4310(&v62, &v79);
    fprintf(__stderrp, "  Expected SHA1: %s\n", &v62);
    fwrite("  ECC variant: ", 0xFuLL, 1uLL, __stderrp);
    fwrite("RS65537\n", 8uLL, 1uLL, __stderrp);
    fprintf(__stderrp, "%12llu data size\n", a4);
    fprintf(__stderrp, "%12u block size\n", v59);
    fprintf(__stderrp, "%12u ECC parity size per block\n", 34);
    fprintf(__stderrp, "%11.2f%% parity/data ratio\n", 3400.0 / v59);
    fprintf(__stderrp, "%12zu block count\n", v56);
    fprintf(__stderrp, "%12zu ECC buffer size\n", a6);
    fprintf(__stderrp, "%12u worker threads\n", __count);
    fprintf(__stderrp, "%12zu blocks per thread\n", v39);
  }

  if (v81 == v79 && v82 == *(&v79 + 1) && v83 == v80)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v17 = 1;
    goto LABEL_53;
  }

  v18 = __count;
  v42 = calloc(__count, 0x78uLL);
  if (!v42)
  {
    v51 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 526, 64, v51, "malloc %u threads");
    goto LABEL_52;
  }

  v43 = 0;
  v44 = a5 + 3;
  v54 = v42;
  v45 = v42;
  v17 = 1;
  do
  {
    v46 = v39 * v43;
    if (v39 * v43 < v56)
    {
      v47 = v46 + v39;
      if (v46 + v39 >= v56)
      {
        v47 = v56;
      }

      *(v45 + 8) = v46;
      *(v45 + 16) = v47;
      *(v45 + 40) = a1;
      *(v45 + 48) = a2;
      *(v45 + 56) = a3;
      *(v45 + 64) = v60;
      *(v45 + 72) = v44;
      *(v45 + 80) = v57;
      *(v45 + 24) = 1;
      *(v45 + 28) = v59;
      *(v45 + 32) = 34;
      if (sub_1000E766C(v45, sub_10011B0C8, v45, 0))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 549, 64, 0, "createThread");
        v17 = 0;
      }
    }

    ++v43;
    v45 += 120;
    --v18;
  }

  while (v18);
  v21 = 0;
  v20 = 0;
  v58 = 0;
  v48 = __count;
  v49 = v54 + 112;
  do
  {
    v50 = *(v49 - 14);
    if (v50)
    {
      if (sub_1000E79CC(v50))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 556, 64, 0, "joinThread");
        v17 = 0;
      }

      v21 += *(v49 - 3);
      v20 += *(v49 - 2);
      v58 += *(v49 - 1);
      v18 += *v49;
    }

    v49 += 15;
    --v48;
  }

  while (v48);
  if (v21)
  {
    goto LABEL_80;
  }

  if (a1 < 0)
  {
    if ((sub_1000F6224(a2, v60, &v81) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 574, 64, 0, "computing buffer digest");
      goto LABEL_100;
    }
  }

  else if ((sub_1000F6584(a1, a3, v60, &v81) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 570, 64, 0, "computing file digest");
LABEL_100:
    v17 = 0;
    v21 = 0;
LABEL_80:
    v23 = 1;
    v19 = v58;
    v22 = v59;
    goto LABEL_10;
  }

  v22 = v59;
  if (v61 >= 1)
  {
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
    v62 = 0u;
    v63 = 0u;
    sub_1000F4310(&v62, &v81);
    fprintf(__stderrp, "  Output data SHA1: %s\n", &v62);
    sub_1000F4310(&v62, &v79);
  }

  if (v81 == v79 && v82 == *(&v79 + 1) && v83 == v80)
  {
    v21 = 0;
    v23 = 1;
    v19 = v58;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v23 = 1;
    v21 = v56;
  }

LABEL_10:
  result = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
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

  if (v61 <= 0)
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
    fprintf(__stderrp, "%12llu fixed blocks\n", v20);
    v32 = v19;
    fprintf(__stderrp, "%12llu fixed bytes\n", v19);
    fprintf(__stderrp, "%12llu fixed bits\n", v18);
    if (v21)
    {
      fprintf(__stderrp, "%12llu INVALID BLOCKS\n", v21);
      v33 = "FAIL";
    }

    else
    {
      v33 = "OK";
    }

    fprintf(__stderrp, "    0x%06x diagnostic code\n", v31);
    *(a7 + 12) = v23;
    *(a7 + 16) = v22;
    *(a7 + 20) = v31;
    v34 = sub_1000F4248();
    fprintf(__stderrp, "Total time %.2fs, %.2f MB/s (%s)\n", v34 - v15, vcvtd_n_f64_u64(v60, 0x14uLL) / (v34 - v15), v33);
    v19 = v32;
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

uint64_t sub_10011C870(int a1, char *a2, off_t a3, unint64_t a4, __int128 *a5, unint64_t a6)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (a6 <= 0x2F)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCVerifyCommon", 390, 64, 0, "Truncated ECC buffer");
    return 0xFFFFFFFFLL;
  }

  v9 = *a5;
  v10 = a5[1];
  v11 = a5[2];
  if (*a5 != 0x3031304343455842)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCVerifyCommon", 392, 64, 0, "Invalid ECC magic", v9);
    return 0xFFFFFFFFLL;
  }

  if (HIDWORD(v11))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCVerifyCommon", 393, 64, 0, "Invalid ECC header", 0x3031304343455842);
    return 0xFFFFFFFFLL;
  }

  if (!DWORD2(v11))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCVerifyCommon", 394, 64, 0, "Invalid ECC header", 0x3031304343455842);
    return 0xFFFFFFFFLL;
  }

  if (*(&v9 + 1) != a4)
  {
    return 0;
  }

  if (a1 < 0)
  {
    if ((sub_1000F6224(a2, a4, &v12) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCVerifyCommon", 404, 64, 0, "computing buffer digest", 0x3031304343455842);
      return 0xFFFFFFFFLL;
    }
  }

  else if ((sub_1000F6584(a1, a3, a4, &v12) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCVerifyCommon", 400, 64, 0, "computing file digest", 0x3031304343455842);
    return 0xFFFFFFFFLL;
  }

  return v12 == v10 && v13 == *(&v10 + 1) && v14 == v11;
}

void *sub_10011CA50(int a1, unsigned int a2, uint64_t a3)
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
        j__CC_SHA1_Init((v7 + 76));
        v7[7] = 48;
        sub_10011CBF0(v7);
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
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "OECCStreamCreate", v10, 64, v11, v9);
  sub_10011CC54(v7);
  return 0;
}

int *sub_10011CBF0(int *result)
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
    return j__CC_SHA1_Final((v1 + 16), (result + 19));
  }

  return result;
}

void sub_10011CC54(void **a1)
{
  if (a1)
  {
    free(a1[8]);
    free(a1[1]);

    free(a1);
  }
}

uint64_t sub_10011CCA0(uint64_t a1)
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

uint64_t sub_10011CCB8(uint64_t a1)
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

uint64_t sub_10011CCD0(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = __CFADD__(v3, a3);
  v5 = v3 + a3;
  v6 = v4;
  if (v5 <= *(a1 + 32) && v6 == 0)
  {
    v9 = a3;
    v10 = a2;
    j__CC_SHA1_Update((a1 + 76), a2, a3);
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
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "OECCStreamWrite", 914, 64, 0, "ECC buffer overflow");
          return -1;
        }

        if (*a1 != 1)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "OECCStreamWrite", 921, 64, 0, "Invalid ECC algorithm");
          return -1;
        }

        if ((sub_1000E6078(v15, *(a1 + 64), *(a1 + 8) + v17) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "OECCStreamWrite", 918, 64, 0, "ECC generation failed");
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

    sub_10011CBF0(a1);
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "OECCStreamWrite", 892, 64, 0, "Too many bytes received");
    return -1;
  }

  return v8;
}

uint64_t (**AAChunkAsyncStreamOpen(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5))(void)
{
  v5 = a5;
  if (a5)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_12:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", 651, 143, 0, "invalid chunk size");
    v11 = 0;
LABEL_15:
    sub_10011D0F4(v11);
    v13 = 0;
    goto LABEL_16;
  }

  v5 = sub_1000F4290();
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_3:
  v10 = malloc(0xF0uLL);
  v11 = v10;
  if (!v10)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", 655, 143, 0, "malloc");
    goto LABEL_15;
  }

  memset_s(v10, 0xF0uLL, 0, 0xF0uLL);
  v12 = sub_10010D7B4(v11, sub_10011D0F4, ~(a4 >> 55) & 4, 20.0, 1.0);
  if (!v12)
  {
    v15 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", 657, 143, v15, "malloc");
    goto LABEL_15;
  }

  v13 = v12;
  *(v11 + 8) = a2;
  *(v11 + 16) = a4;
  *v11 = a1;
  *(v11 + 24) = a4 >> 62;
  if (a3 == -1)
  {
    v14 = v5;
  }

  else
  {
    v14 = a3 / a2;
  }

  if (pthread_mutex_init((v11 + 32), 0))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", 668, 143, 0, "mutex init");
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

    if ((sub_10011D2D4(v11, v17) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", 669, 143, 0, "init active chunks");
    }

    else
    {
      v13[2] = sub_10011D470;
      v13[3] = sub_10011D63C;
      v13[4] = sub_10011D808;
      v13[5] = sub_10011D82C;
      if ((sub_1000E766C((v11 + 192), sub_10011D838, v11, 0) & 0x80000000) == 0)
      {
        return v13;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", 678, 143, 0, "createThread");
    }
  }

LABEL_16:
  AAAsyncByteStreamClose(v13);
  return 0;
}

uint64_t sub_10011D0F4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    atomic_compare_exchange_strong((result + 204), &v2, 1u);
    v3 = *(result + 192);
    if (v3)
    {
      sub_1000E79CC(v3);
    }

    v4 = atomic_load((v1 + 200));
    if (*(v1 + 24))
    {
      fwrite("AAChunkAsyncStream\n", 0x13uLL, 1uLL, __stderrp);
      fprintf(__stderrp, "%12zu chunk size\n", *(v1 + 8));
      fprintf(__stderrp, "%12zu allocated chunks\n", *(v1 + 96));
      v5 = __stderrp;
      v6 = atomic_load((v1 + 208));
      fprintf(v5, "%12llu ranges requested\n", v6);
      v7 = __stderrp;
      v8 = atomic_load((v1 + 224));
      fprintf(v7, "%12llu chunks processed\n", v8);
      fprintf(__stderrp, "%12zu bytes in chunks (%.2f MB)\n", *(v1 + 8) * *(v1 + 96), vcvtd_n_f64_u64(*(v1 + 8) * *(v1 + 96), 0x14uLL));
      v9 = __stderrp;
      v10 = atomic_load((v1 + 216));
      v11 = atomic_load((v1 + 216));
      fprintf(v9, "%12llu bytes requested in ranges (%.2f MB)\n", v10, vcvtd_n_f64_u64(v11, 0x14uLL));
      v12 = __stderrp;
      v13 = atomic_load((v1 + 232));
      v14 = atomic_load((v1 + 232));
      fprintf(v12, "%12llu bytes processed in chunks (%.2f MB)\n", v13, vcvtd_n_f64_u64(v14, 0x14uLL));
    }

    pthread_mutex_destroy((v1 + 32));
    free(*(v1 + 168));
    if (*(v1 + 96))
    {
      v15 = 0;
      v16 = 40;
      do
      {
        free(*(*(v1 + 104) + v16));
        ++v15;
        v16 += 48;
      }

      while (v15 < *(v1 + 96));
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

uint64_t sub_10011D2D4(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 96) >= a2)
  {
    return 0;
  }

  if (*(a1 + 24) >= 3u)
  {
    fprintf(__stderrp, "    %zu active chunks\n", a2);
  }

  if (48 * a2 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_15:
    *(a1 + 104) = 0;
    v14 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "lockedStateReserveActiveChunks", 147, 143, v14, "malloc");
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
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "lockedStateReserveActiveChunks", 152, 143, v15, "malloc");
  return 0xFFFFFFFFLL;
}

uint64_t sub_10011D470(uint64_t a1, void *a2, uint64_t *a3)
{
  if (atomic_load((a1 + 200)))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 32)))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncGetRange", 519, 143, 0, "lock");
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
      fprintf(__stderrp, "<-- chunk %10llx %10llx -- %8zu\n", v14, v15, *(v13 + 8));
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
      fwrite("<-- EOF\n", 8uLL, 1uLL, __stderrp);
    }

    goto LABEL_22;
  }

  v7 = 0;
LABEL_22:
  if (!pthread_mutex_unlock((a1 + 32)))
  {
    return v7;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncGetRange", 546, 143, 0, "unlock");
  v16 = 0;
  atomic_compare_exchange_strong((a1 + 200), &v16, 1u);
  if (!v16)
  {
    AAAsyncByteStreamCancel(*a1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10011D63C(uint64_t a1, const void *a2, size_t a3, unint64_t a4)
{
  if (atomic_load((a1 + 200)))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 32)))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncProcess", 556, 143, 0, "lock");
    return 0xFFFFFFFFLL;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncProcess", 559, 143, 0, "invalid range");
    return 0xFFFFFFFFLL;
  }

  v13[0] = a4;
  v13[1] = a4 + a3;
  if (__CFADD__(a4, a3))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncProcess", 561, 143, 0, "invalid range");
    return 0xFFFFFFFFLL;
  }

  atomic_fetch_add_explicit((a1 + 232), a3, memory_order_relaxed);
  atomic_fetch_add_explicit((a1 + 224), 1uLL, memory_order_relaxed);
  v10 = *(a1 + 96);
  if (v10)
  {
    v11 = *(a1 + 104);
    while (*v11 != 2 || sub_10011E63C((v11 + 16), v13))
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
      fprintf(__stderrp, "--> chunk %10llx %10llx -- %8zu\n", *(v11 + 16), *(v11 + 24), *(v11 + 8));
    }
  }

LABEL_19:
  result = pthread_mutex_unlock((a1 + 32));
  if (result)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncProcess", 582, 143, 0, "unlock");
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

atomic_uint *sub_10011D808(atomic_uint *result)
{
  v1 = 0;
  atomic_compare_exchange_strong(result + 50, &v1, 1u);
  if (!v1)
  {
    return AAAsyncByteStreamCancel(*result);
  }

  return result;
}

void **sub_10011D838(void **a1)
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
      v44 = a1[21] + 1;
      do
      {
        v43 = *v44 + v43 - *(v44 - 1);
        v44 += 2;
        v41 = (v41 - 1);
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateFetchRanges", 220, 143, 0, "GetRange");
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateFetchRanges", 228, 143, 0, "invalid range");
        goto LABEL_265;
      }

      v47 = (v141 + v140);
      *&v142 = v141;
      *(&v142 + 1) = v141 + v140;
      if (__CFADD__(v141, v140))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateFetchRanges", 230, 143, 0, "invalid range overflow");
        goto LABEL_265;
      }

      v48 = a1[20];
      if (v48)
      {
        v49 = a1[21];
        v50 = a1[20];
        while (sub_10011E63C(v49, &v142))
        {
          v49 += 2;
          v50 = (v50 - 1);
          if (!v50)
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateFetchRanges", 248, 143, *v138, "malloc");
        a1[19] = 0;
        a1[20] = 0;
LABEL_265:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "streamProc", 493, 143, 0, "fetching ranges");
        goto LABEL_272;
      }

LABEL_95:
      if (*(a1 + 6) >= 3u)
      {
        fprintf(__stderrp, "<<< range %10llx %10llx\n", v46, v47);
      }

      v57 = a1[20];
      v56 = a1[21];
      a1[20] = (v57 + 1);
      *&v56[2 * v57] = v142;
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
      fwrite("<<< range EOF\n", 0xEuLL, 1uLL, __stderrp);
    }

    *(a1 + 32) = 1;
LABEL_112:
    if (v3)
    {
      sub_10011E690(a1);
    }

LABEL_5:
    if (pthread_mutex_lock((a1 + 4)))
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", 276, 143, 0, "lock");
LABEL_268:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "streamProc", 497, 143, 0, "retiring ranges");
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
      v9 = &a1[21][2 * v6];
      v11 = *v9;
      v10 = v9[1];
      v12 = *v9 / v8;
      v13 = (v10 + v8 - 1) / v8;
      if (v12 < v13)
      {
        break;
      }

LABEL_51:
      v26 = (v10 - v11);
      if (v10 - v11 > a1[22])
      {
        a1[22] = v26;
        if (v26 >= 0x2000000001)
        {
          *__error() = 12;
LABEL_261:
          a1[23] = 0;
          v135 = __error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", 314, 143, *v135, "malloc");
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
          v30 = &a1[13][6 * a1[15][v12]];
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

          memcpy(a1[23] + v29, (v30[5] + v33 - v31), v32 - v33);
          ++v12;
          v29 = v35;
          if (v12 >= v13)
          {
            goto LABEL_67;
          }
        }

        v38 = 328;
LABEL_73:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", v38, 143, 0, "invalid state");
        goto LABEL_74;
      }

LABEL_67:
      v36 = *v9;
      v37 = v9[1];
      if (*(a1 + 6) >= 3u)
      {
        fprintf(__stderrp, ">>> range %10llx %10llx\n", *v9, v37);
        v36 = *v9;
        v37 = v9[1];
      }

      if ((AAAsyncByteStreamProcess(*a1, a1[23], v37 - v36, v36) & 0x80000000) != 0)
      {
        v134 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", 336, 143, v134, "process range");
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
      v16 = a1[15][v15];
      if (v16 == -1)
      {
        break;
      }

      v17 = &a1[13][6 * v16];
      if (!*v17 || v15 != v17[1])
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
      v19 = (v15 * v8 + v8);
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
      v22 = v17[2];
      v21 = v17[3];
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
      sub_10011E690(a1);
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", 347, 143, 0, "unlock");
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", 359, 143, 0, "lock");
      goto LABEL_271;
    }

    v60 = a1[14];
    v61 = a1[12];
    v62 = a1[20];
    if (v62)
    {
      v63 = a1[1];
      v64 = a1[21] + 1;
      do
      {
        v65 = (v63 - 1 + *v64) / v63;
        if (v65 > v60)
        {
          v60 = (v63 - 1 + *v64) / v63;
        }

        if (v65 - *(v64 - 1) / v63 > v61)
        {
          v61 = (v65 - *(v64 - 1) / v63);
        }

        v64 += 2;
        v62 = (v62 - 1);
      }

      while (v62);
    }

    if ((sub_10011D2D4(a1, v61) & 0x80000000) != 0)
    {
      goto LABEL_247;
    }

    if (a1[14] >= v60)
    {
      goto LABEL_138;
    }

    if (*(a1 + 6) >= 3u)
    {
      fprintf(__stderrp, "    %zu chunks\n", v60);
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "lockedStateReserveChunks", 172, 143, *v132, "malloc");
      a1[14] = 0;
LABEL_247:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", 375, 143, 0, "reserving chunks");
      goto LABEL_248;
    }

    a1[15] = v68;
    v69 = a1[14];
    if (v69 < v60)
    {
      memset(&v68[v69], 255, 8 * v60 - 8 * v69);
    }

    a1[14] = v60;
LABEL_138:
    v70 = a1[12];
    if (v70)
    {
      v71 = (v70 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v72 = vdupq_n_s64(v70 - 1);
      v73 = a1[13] + 10;
      v74 = xmmword_1003772E0;
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
          if (!v99[v97 + 4] && LODWORD(v99[v97]))
          {
            v100 = &v99[v97];
            v101 = v99[v97 + 1];
            if (v101 >= a1[14])
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", 410, 143, 0, "invalid chunk index");
              goto LABEL_249;
            }

            a1[15][v101] = -1;
            *v100 = 0;
            v100[2] = 0;
            v100[3] = 0;
            v100[1] = -1;
            v70 = a1[12];
            v66 = 1;
          }

          v97 += 6;
        }

        if (v70)
        {
          v102 = (v70 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v103 = vdupq_n_s64(v70 - 1);
          v104 = a1[13] + 10;
          v105 = xmmword_1003772E0;
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
          v109 = &a1[21][2 * j];
          v110 = a1[1];
          v111 = *v109 / v110;
          v112 = (v110 + v109[1] - 1) / v110;
          if (!j && v111 < v112)
          {
            v113 = a1[15];
            v114 = v111;
            do
            {
              v115 = v113[v114];
              if (v115 != -1)
              {
                a1[13][6 * v115 + 4] = 1;
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
              if (v116[v111] == -1)
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

                    v118 = (v118 + 1);
                    if (v117 == v118)
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
                    v121 = a1[13] + 4;
                    while (1)
                    {
                      v122 = *v121;
                      v121 += 6;
                      if (!v122)
                      {
                        break;
                      }

                      v118 = (v118 + 1);
                      if (v117 == v118)
                      {
                        goto LABEL_243;
                      }
                    }
                  }

                  if (v118 == v117)
                  {
LABEL_243:
                    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", 451, 143, 0, "no available chunk");
                    goto LABEL_249;
                  }

                  v123 = &a1[13][6 * v118];
                  v124 = v123[1];
                  v116[v124] = -1;
                  *v123 = 0;
                  v123[2] = 0;
                  v123[3] = 0;
                  v123[1] = -1;
                  fprintf(__stderrp, "BYE chunk %8zu evicted\n", v124);
                  v116 = a1[15];
                }

                v125 = &a1[13][6 * v118];
                v125[1] = v111;
                v116[v111] = v118;
                *v125 = 1;
                v126 = a1[1];
                v127 = (v126 * v125[1]);
                v125[2] = v127;
                v128 = (v126 + v127);
                v125[3] = v126 + v127;
                v125[4] = j == 0;
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

                v125[2] = v127;
                v125[3] = v128;
                if (v127 >= v128)
                {
LABEL_235:
                  v125[2] = 0;
                  v125[3] = 0;
                }

                if (*(a1 + 6) >= 3u)
                {
                  fprintf(__stderrp, "SET range %10llx %10llx -- %8zu\n", *v109, v109[1], v111);
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
      v80 = &v78[2 * v77];
      v81 = *v80;
      v82 = v80[1];
      v83 = v81 / v79;
      v84 = &v82[v79 - 1] / v79;
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
      v87 = v85[v83];
      if (v87 == -1)
      {
        goto LABEL_184;
      }

      v88 = &a1[13][6 * v87];
      if (*v88 && v83 == v88[1])
      {
        if (v81 == v86)
        {
          goto LABEL_158;
        }

        v89 = v83 * v79;
        v90 = (v83 * v79 + v79);
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
        v93 = v88[2];
        v92 = v88[3];
        if (v93 != v92)
        {
          v86 = v81;
        }

        v94 = 0;
        if (v81 != v82 && v93 != v92)
        {
          if (v81 <= v93)
          {
            v94 = v88[2];
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
            v91 = v88[3];
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
          ++v88[4];
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", 389, 143, 0, "invalid state");
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

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", 478, 143, 0, "unlock");
LABEL_271:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "streamProc", 501, 143, 0, "updating chunks");
LABEL_272:
  v136 = 0;
  atomic_compare_exchange_strong(a1 + 50, &v136, 1u);
  if (!v136)
  {
    AAAsyncByteStreamCancel(*a1);
  }

  return a1;
}

uint64_t sub_10011E63C(unint64_t *a1, unint64_t *a2)
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

void sub_10011E690(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1)
  {
    qsort(*(a1 + 168), v1, 0x10uLL, sub_10011E63C);
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

size_t sub_10011E710(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZBITMAP);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_10011E738(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZBITMAP);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_10011E760(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, 0x900u);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_10011E788(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, 0x900u);
  if (!result)
  {
    return -1;
  }

  return result;
}

unsigned int **AAPathListCreate()
{
  result = sub_10011E7D4();
  result[1][4] = 1;
  return result;
}

unsigned int **sub_10011E7D4()
{
  v0 = malloc(0x20uLL);
  v1 = v0;
  if (!v0)
  {
    v6 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "create", 444, 60, v6, "malloc");
LABEL_11:
    AAPathListDestroy(v1);
    return 0;
  }

  memset_s(v0, 0x20uLL, 0, 0x20uLL);
  v2 = sub_10011A03C();
  *(v1 + 16) = v2;
  if (!v2)
  {
    v7 = "StringTableCreate";
    v8 = 447;
LABEL_10:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "create", v8, 60, 0, v7);
    goto LABEL_11;
  }

  if ((sub_10011F360(v1, 0x100u) & 0x80000000) != 0)
  {
    v7 = "alloc";
    v8 = 450;
    goto LABEL_10;
  }

  v10 = -1;
  if ((sub_10011A254(*(v1 + 16), "", 0, &v10) & 0x80000000) != 0)
  {
    v7 = "String table insert";
    v8 = 452;
    goto LABEL_10;
  }

  v3 = *(v1 + 8);
  v4 = (*v1)++;
  v5 = v3 + 24 * v4;
  *(v5 + 20) = -1;
  *(v5 + 8) = -1;
  *v5 = -1;
  *(v5 + 12) = v10;
  return v1;
}

void AAPathListDestroy(AAPathList path_list)
{
  if (path_list)
  {
    sub_10011A1FC(*(path_list + 2));
    free(*(path_list + 1));

    free(path_list);
  }
}

AAPathList AAPathListCreateWithDirectoryContents(const char *dir, const char *path, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v6 = __chkstk_darwin(dir);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v6;
  v88 = 0;
  bzero(v92, 0x400uLL);
  bzero(v91, 0x400uLL);
  if (!v8)
  {
    v8 = sub_1000F4290();
  }

  if (!realpath_DARWIN_EXTSN(v17, v92))
  {
    v24 = *__error();
    v78 = v17;
    v22 = "Invalid dir: %s";
    v23 = 508;
    goto LABEL_47;
  }

  v18 = strlen(v92);
  v20 = v18 != 1 || v92[0] != 47;
  if (v16)
  {
    v21 = v18;
    __strlcpy_chk();
    if ((sub_1000F456C(v91) & 0x80000000) != 0)
    {
      v78 = v17;
      v79 = v16;
      v22 = "Invalid path (subpath normalization failed): %s/%s";
      v23 = 517;
LABEL_46:
      v24 = 0;
      goto LABEL_47;
    }

    if ((sub_1000F4680(v90, 0x800uLL, v92, v91) & 0x80000000) != 0)
    {
      v24 = *__error();
      v78 = v17;
      v79 = v16;
      v22 = "Path too long: %s/%s";
      v23 = 523;
    }

    else
    {
      if (realpath_DARWIN_EXTSN(v90, __s))
      {
        if (v20 && (strlen(__s) < v21 || memcmp(__s, v92, v21) || __s[v21] && __s[v21] != 47))
        {
          v78 = v17;
          v79 = v16;
          v22 = "Path resolving outside target dir: %s/%s";
          v23 = 531;
        }

        else
        {
          memset(&v87, 0, sizeof(v87));
          if (!lstat(__s, &v87) && (v87.st_mode & 0xF000) == 0x4000)
          {
            goto LABEL_26;
          }

          v78 = v17;
          v79 = v16;
          v22 = "Not a directory: %s/%s";
          v23 = 534;
        }

        goto LABEL_46;
      }

      v24 = *__error();
      v78 = v17;
      v79 = v16;
      v22 = "Invalid path, doesn't exist: %s/%s";
      v23 = 524;
    }

LABEL_47:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", v23, 60, v24, v22, v78, v79);
    v25 = 0;
LABEL_48:
    v41 = 0;
    v42 = 0;
    v40 = 0;
    v43 = 0;
    v44 = 0;
    goto LABEL_49;
  }

LABEL_26:
  v25 = sub_10011E7D4();
  if (!v25)
  {
    return v25;
  }

  v86 = v8;
  v26 = strlen(v91);
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = 0;
    v30 = &v25[1][6 * *(v25 + 7)];
    *(v30 + 16) |= 1u;
    do
    {
      v31 = v91[v29];
      if (v31 == 47 || v31 == 0)
      {
        *v90 = -1;
        if ((sub_10011F360(v25, *v25 + 1) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 553, 60, 0, "increase PathList capacity");
LABEL_115:
          v41 = 0;
          v42 = 0;
          v40 = 0;
          v43 = 0;
          v44 = 0;
          goto LABEL_49;
        }

        if ((sub_10011A254(v25[2], &v91[v28], v29 - v28, v90) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 554, 60, 0, "inserting path component in table");
          goto LABEL_115;
        }

        v33 = *v25;
        v34 = &v25[1][6 * *v25];
        *v34 = *v25 - 1;
        v34[3] = *v90;
        v34[4] = v31 != 0;
        *v25 = v33 + 1;
        if (!v31)
        {
          break;
        }

        v28 = ++v29;
      }

      ++v29;
    }

    while (v29 <= v27);
  }

  if (!v12)
  {
    goto LABEL_43;
  }

  v35 = (v12)(v14, 11, v91, 0);
  if (v35 < 0)
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 570, 60, "abort from callback", v36, v37, v38);
    goto LABEL_48;
  }

  if (v35)
  {
    v39 = &v25[1][6 * (*v25 - 1)];
    *(v39 + 16) |= 1u;
  }

LABEL_43:
  if (v8 < 0)
  {
    *__error() = 12;
    v85 = 0;
    v40 = 0;
    *__error() = 12;
  }

  else
  {
    v85 = calloc(v8, 0x28uLL);
    v40 = calloc(v8, 0x38uLL);
  }

  if ((8 * v8) >= 0x2000000001)
  {
    v42 = 0;
    *__error() = 12;
LABEL_64:
    v50 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 578, 60, *v50, "malloc");
    v41 = 0;
LABEL_65:
    v44 = 0;
    v43 = v85;
    goto LABEL_49;
  }

  v51 = malloc(8 * v8);
  v42 = v51;
  if (!v85 || !v40 || !v51)
  {
    goto LABEL_64;
  }

  if (v8 >= 1)
  {
    v52 = v40;
    v53 = v51;
    v54 = v8;
    do
    {
      v52[2] = v14;
      v52[3] = v12;
      v52[4] = &v88;
      *v52 = v25;
      v52[1] = v92;
      *(v52 + 10) = (v10 >> 6) & 1;
      *v53++ = v52;
      v52 += 7;
      --v54;
    }

    while (v54);
  }

  v41 = sub_1001021B4(v8, v51, sub_10011F41C);
  if (!v41)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 591, 60, 0, "ThreadPoolCreate");
    goto LABEL_65;
  }

  v82 = v40;
  v55 = *v25;
  if (!*v25)
  {
    goto LABEL_110;
  }

  v56 = 0;
  v57 = v55 - 1;
  if (v8 <= 1)
  {
    v58 = 1;
  }

  else
  {
    v58 = v8;
  }

  v80 = v55 - 1;
  v81 = v58;
  do
  {
    v59 = v8;
    v60 = 0;
    v61 = v58;
    if ((v59 + v55 + ~v57) / v59 <= 0x64)
    {
      v62 = 100;
    }

    else
    {
      v62 = (v59 + v55 + ~v57) / v59;
    }

    v63 = !v56;
    v83 = v56;
    v84 = 1;
    v64 = v85;
    do
    {
      v65 = v57 + v62 * v60;
      *v64 = v63;
      v64[1] = v65;
      v66 = v65 + v62;
      v64[2] = v65 + v62;
      if (v65 > v55)
      {
        v64[1] = v55;
        v65 = v55;
      }

      if (v66 > v55)
      {
        v64[2] = v55;
        v66 = v55;
      }

      if (v65 < v66)
      {
        v67 = sub_100102924(v41);
        if (v67)
        {
          *(v67 + 48) = v64;
          if ((sub_100102A58(v41) & 0x80000000) == 0)
          {
            goto LABEL_92;
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 618, 60, 0, "ThreadPoolRunWorker");
        }

        else
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 616, 60, 0, "ThreadPoolGetWorker");
        }

        v84 = 0;
      }

LABEL_92:
      ++v60;
      v64 += 10;
      --v61;
    }

    while (v61);
    if ((sub_100102B28(v41) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 620, 60, 0, "ThreadPoolSync");
      v77 = atomic_load(&v88);
      v43 = v85;
      v8 = v86;
      if (v77 >= 1)
      {
LABEL_122:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 621, 60, 0, "Abort");
      }

LABEL_123:
      v44 = 0;
      goto LABEL_124;
    }

    v68 = atomic_load(&v88);
    v43 = v85;
    v8 = v86;
    if (v68 > 0)
    {
      goto LABEL_122;
    }

    if (!v84)
    {
      goto LABEL_123;
    }

    v69 = 0;
    v58 = v81;
    do
    {
      v70 = &v85[5 * v69];
      if (*(v70 + 1) < *(v70 + 2))
      {
        v71 = *(v70 + 4);
        if (v71)
        {
          *v90 = 0;
          if ((sub_10011F360(v25, *v25 + v71) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 631, 60, 0, "alloc");
            goto LABEL_123;
          }

          if ((sub_10011A6AC(v25[2], v70[4], v90) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 632, 60, 0, "String table append");
            goto LABEL_123;
          }

          v72 = v25[1];
          v73 = *v25;
          v74 = v70[3] + 2;
          do
          {
            v75 = &v72[6 * v73++];
            *v25 = v73;
            *v75 = *(v74 - 2);
            v75[3] = *v90 + *(v74 - 1);
            v76 = *v74;
            v74 += 3;
            v75[4] = v76;
            --v71;
          }

          while (v71);
          *(v70 + 4) = 0;
        }
      }

      ++v69;
    }

    while (v69 != v81);
    if (v83)
    {
      break;
    }

    v56 = v55 == *v25;
    v57 = v55 == *v25 ? v80 : v55;
    v55 = *v25;
  }

  while (v57 < *v25);
LABEL_110:
  if ((sub_10011FC00(v25) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 656, 60, 0, "Tree normalization");
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v43 = v85;
LABEL_124:
  v40 = v82;
LABEL_49:
  if ((sub_100102638(v41) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 661, 60, 0, "ThreadPoolDestroy");
    v44 = 0;
  }

  v45 = atomic_load(&v88);
  if (v45 >= 1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 662, 60, 0, "threads reported errors");
    v44 = 0;
  }

  if (v40)
  {
    if (v8 >= 1)
    {
      v46 = v8;
      v47 = v43 + 4;
      do
      {
        free(*(v47 - 1));
        v48 = *v47;
        v47 += 5;
        sub_10011A1FC(v48);
        --v46;
      }

      while (v46);
    }

    free(v40);
    free(v42);
  }

  free(v43);
  if (!v44)
  {
    AAPathListDestroy(v25);
    return 0;
  }

  return v25;
}

uint64_t sub_10011F360(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 4);
  if (v2 >= a2)
  {
    return 0;
  }

  do
  {
    if (v2)
    {
      v2 += v2 >> 1;
    }

    else
    {
      v2 = 256;
    }
  }

  while (v2 < a2);
  *(a1 + 4) = v2;
  v4 = *(a1 + 8);
  v5 = realloc(v4, 24 * v2);
  if (v5)
  {
    v6 = v5;
    result = 0;
    *(a1 + 8) = v6;
  }

  else
  {
    free(v4);
    *(a1 + 8) = 0;
    v8 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "increaseCapacity", 270, 60, *v8, "malloc");
    *a1 = 0;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_10011F41C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2 = *(v1 + 48);
  bzero(__src, 0x400uLL);
  bzero(v66, 0x800uLL);
  v3 = *(v2 + 4);
  if (!v3)
  {
    v3 = sub_10011A03C();
    *(v2 + 4) = v3;
    if (!v3)
    {
      v5 = "String table creation";
      v6 = 79;
      goto LABEL_84;
    }
  }

  sub_10011A248(v3);
  v2[4] = 0;
  v4 = strlen(*(v1 + 8));
  if (v4 >= 0x800)
  {
    v5 = "dir name too long";
    v6 = 88;
    goto LABEL_84;
  }

  v7 = v4;
  __memcpy_chk();
  v8 = &v66[v7];
  v66[v7] = 0;
  v9 = v2[1];
  if (v9 >= v2[2])
  {
    return 0;
  }

  v10 = v7 + 1;
  while (1)
  {
    v11 = *v1;
    if (**v1 <= v9 || (v65.d_ino = 0, (sub_1001202D0(v11, v9, 0x400uLL, __src, &v65.d_ino) & 0x80000000) != 0))
    {
      v5 = "get node path";
      v6 = 96;
      goto LABEL_84;
    }

    d_ino = v65.d_ino;
    if (v65.d_ino >= 0x400)
    {
      v5 = "truncated node path";
      v6 = 97;
      goto LABEL_84;
    }

    if (v65.d_ino)
    {
      v13 = v10 + v65.d_ino;
    }

    else
    {
      v13 = v7;
    }

    if (v65.d_ino)
    {
      if (v10 + v65.d_ino >= 0x800)
      {
        v5 = "path too long";
        v6 = 103;
        goto LABEL_84;
      }

      *v8 = 47;
      memcpy(v8 + 1, __src, d_ino);
    }

    v66[v13] = 0;
    memset(&v64, 0, sizeof(v64));
    if (lstat(v66, &v64) < 0)
    {
      v52 = *__error();
      v57 = v66;
      v5 = "lstat %s";
      v6 = 111;
      goto LABEL_85;
    }

    if (!sub_1000F6F88(v64.st_flags))
    {
      break;
    }

    v17 = *(v1 + 24);
    if (v17 && v17(*(v1 + 16), 12, __src, 0))
    {
      v57 = v66;
      v5 = "dataless dir error: %s";
      v6 = 118;
      goto LABEL_84;
    }

    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 119, 60, "skip dataless dir: %s", v14, v15, v16, v66, v59);
LABEL_73:
    if (++v9 >= v2[2])
    {
      return 0;
    }
  }

  v18 = opendir(v66);
  if (!v18)
  {
    v45 = *(v1 + 24);
    v10 = v7 + 1;
    if (v45 && v45(*(v1 + 16), 12, __src, 0))
    {
      v52 = *__error();
      v57 = v66;
      v5 = "opendir failed: %s";
      v6 = 130;
      goto LABEL_85;
    }

    v58 = *__error();
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 131, 60, "opendir failed with errno=%d: %s", v46, v47, v48, v58, v66);
    goto LABEL_73;
  }

  v19 = v18;
  v60 = v8;
  memset(&v65, 0, 512);
  v63 = 0;
  while (!readdir_r(v19, &v65, &v63))
  {
    if (!v63)
    {
      goto LABEL_71;
    }

    d_namlen = v65.d_namlen;
    if ((v65.d_namlen != 1 || v65.d_name[0] != 46) && (v65.d_namlen != 2 || v65.d_name[0] != 46 || v65.d_name[1] != 46))
    {
      v21 = v13 + 1 + v65.d_namlen;
      if (v21 >= 0x800)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 162, 60, 0, "path too long");
LABEL_80:
        closedir(v19);
        v5 = "Directory expansion";
        v6 = 211;
        goto LABEL_84;
      }

      v66[v13] = 47;
      memcpy(&v66[v13 + 1], v65.d_name, d_namlen);
      v66[v21] = 0;
      memset(&v62, 0, sizeof(v62));
      if (lstat(v66, &v62))
      {
        sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 169, 60, "stat failed: %s", v22, v23, v24, v66);
      }

      else if (v65.d_type == 4)
      {
        v25 = *v2;
        if (*v2)
        {
LABEL_44:
          if (v62.st_dev == v64.st_dev || *(v1 + 40))
          {
            if (!v25)
            {
              goto LABEL_50;
            }

            v28 = *(v1 + 24);
            if (!v28)
            {
              goto LABEL_58;
            }

            v29 = v28(*(v1 + 16), 10, v60 + 1, 0);
            if (v29 < 0)
            {
              v55 = 182;
              goto LABEL_93;
            }

            if (!v29)
            {
LABEL_50:
              v33 = 1;
              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        if (v65.d_type)
        {
          v26 = 0;
        }

        else
        {
          v26 = (v62.st_mode & 0xF000) == 0x4000;
        }

        v27 = v26;
        v25 = *v2;
        if ((((*v2 != 0) ^ v27) & 1) == 0)
        {
          if (v27)
          {
            goto LABEL_44;
          }

          v33 = 0;
LABEL_52:
          v34 = *(v1 + 24);
          if (!v34)
          {
LABEL_58:
            v37 = 1;
            goto LABEL_59;
          }

          v35 = v34(*(v1 + 16), 11, v60 + 1, 0);
          if (v35 < 0)
          {
            v55 = 189;
LABEL_93:
            sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", v55, 60, "abort from callback", v30, v31, v32);
            goto LABEL_80;
          }

          v36 = v33;
          v37 = v35 == 0;
          if (!v35)
          {
            v36 = 1;
          }

          if (v36 == 1)
          {
LABEL_59:
            v61 = -1;
            if ((sub_10011A254(*(v2 + 4), v65.d_name, d_namlen, &v61) & 0x80000000) != 0)
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 196, 60, 0, "String insertion failed");
              goto LABEL_80;
            }

            v39 = v2[3];
            v38 = v2[4];
            v40 = *(v2 + 3);
            if (v38 >= v39)
            {
              v41 = 2 * v39;
              if (!v39)
              {
                v41 = 256;
              }

              v2[3] = v41;
              v42 = realloc(v40, 12 * v41);
              if (!v42)
              {
                free(v40);
                *(v2 + 3) = 0;
                v56 = __error();
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 201, 60, *v56, "malloc");
                v2[3] = 0;
                v2[4] = 0;
                goto LABEL_80;
              }

              *(v2 + 3) = v42;
              v38 = v2[4];
              v40 = v42;
            }

            v2[4] = v38 + 1;
            v43 = &v40[12 * v38];
            v44 = v61;
            *v43 = v9;
            v43[1] = v44;
            v43[2] = !v37;
          }
        }
      }
    }
  }

  if (*__error() != 11)
  {
    v54 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 144, 60, v54, "readdir_r");
    goto LABEL_80;
  }

  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 143, 60, "readdir on dataless directory: %s", v49, v50, v51, v66);
LABEL_71:
  closedir(v19);
  if (!**(v1 + 32))
  {
    v8 = v60;
    v10 = v7 + 1;
    goto LABEL_73;
  }

  v5 = "Abort requested";
  v6 = 212;
LABEL_84:
  v52 = 0;
LABEL_85:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", v6, 60, v52, v5, v57);
  atomic_fetch_add(*(v1 + 32), 1u);
  return 0;
}

uint64_t sub_10011FC00(unsigned int **a1)
{
  if (*a1)
  {
    v2 = sub_10011AC38(a1[2]);
    v30 = 0;
    v3 = *a1;
    if ((sub_10011A7DC(a1[2], &v30) & 0x80000000) != 0)
    {
      v25 = "String table sorting";
      v26 = 379;
LABEL_30:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "normalize", v26, 60, 0, v25);
    }

    else
    {
      if (v3)
      {
        v4 = v30;
        v5 = a1[1] + 3;
        v6 = v3;
        do
        {
          v7 = *v5;
          if (v7 >= v2)
          {
            v25 = "Name out of range";
            v26 = 386;
            goto LABEL_30;
          }

          *v5 = v4[v7];
          *(v5 - 1) = -1;
          v5 += 6;
          --v6;
        }

        while (v6);
        v8 = 0;
        v9 = -1;
        *(a1 + 7) = -1;
        v10 = a1[1];
        v11 = v10 + 2;
        do
        {
          v12 = *(v11 - 2);
          if (v12 == -1)
          {
            if (v9 != -1)
            {
              v25 = "Multiple root nodes";
              v26 = 399;
              goto LABEL_30;
            }

            *(a1 + 7) = v8;
            v9 = v8;
          }

          else
          {
            v13 = &v10[6 * v12];
            *v11 = v13[1];
            v13[1] = v8;
          }

          ++v8;
          v11 += 6;
        }

        while (v3 != v8);
        v14 = calloc(v3, 4uLL);
        if (!v14)
        {
          goto LABEL_28;
        }

        v15 = v14;
        v16 = 0;
        v17 = 0;
        v18 = (a1[1] + 4);
        do
        {
          v19 = *v18;
          v18 += 24;
          if ((v19 & 1) == 0)
          {
            *&v14[4 * v17++] = v16;
          }

          ++v16;
        }

        while (v3 != v16);
        qsort_r(v14, v17, 4uLL, a1, sub_100120714);
        v20 = (a1 + 3);
        if (v17)
        {
          v21 = 0;
          v22 = a1[1];
          do
          {
            v23 = *&v15[v21];
            *v20 = v23;
            v20 = &v22[6 * v23 + 5];
            v21 += 4;
          }

          while (4 * v17 != v21);
        }

        goto LABEL_26;
      }

      *(a1 + 7) = -1;
      v27 = calloc(v3, 4uLL);
      if (v27)
      {
        v15 = v27;
        qsort_r(v27, 0, 4uLL, a1, sub_100120714);
        v20 = (a1 + 3);
LABEL_26:
        v24 = 0;
        *v20 = -1;
LABEL_32:
        free(v30);
        free(v15);
        return v24;
      }

LABEL_28:
      v28 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "normalize", 410, 60, v28, "malloc");
    }

    v15 = 0;
    v24 = 0xFFFFFFFFLL;
    goto LABEL_32;
  }

  return 0;
}

AAPathList AAPathListCreateWithPath(const char *dir, const char *path)
{
  v2 = __chkstk_darwin(dir);
  v4 = v3;
  v5 = v2;
  bzero(v29, 0x400uLL);
  bzero(v28, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(v5, v29))
  {
    v11 = *__error();
    v23 = v5;
    v9 = "Invalid dir: %s";
    v10 = 693;
LABEL_20:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithPath", v10, 60, v11, v9, v23, v24);
    v12 = 0;
    goto LABEL_21;
  }

  v6 = strlen(v29);
  v8 = v6 != 1 || v29[0] != 47;
  __strlcpy_chk();
  if ((sub_1000F456C(v28) & 0x80000000) != 0)
  {
    v23 = v5;
    v24 = v4;
    v9 = "Invalid path (subpath normalization failed): %s/%s";
    v10 = 699;
    goto LABEL_17;
  }

  if ((sub_1000F4680(v27, 0x800uLL, v29, v28) & 0x80000000) != 0)
  {
    v11 = *__error();
    v23 = v5;
    v24 = v4;
    v9 = "Path too long: %s/%s";
    v10 = 705;
    goto LABEL_20;
  }

  if (!realpath_DARWIN_EXTSN(v27, __s))
  {
    v11 = *__error();
    v23 = v5;
    v24 = v4;
    v9 = "Invalid path, doesn't exist: %s/%s";
    v10 = 706;
    goto LABEL_20;
  }

  if (v8 && (strlen(__s) < v6 || memcmp(__s, v29, v6) || __s[v6] && __s[v6] != 47))
  {
    v23 = v5;
    v24 = v4;
    v9 = "Path resolving outside target dir: %s/%s";
    v10 = 713;
LABEL_17:
    v11 = 0;
    goto LABEL_20;
  }

  v12 = sub_10011E7D4();
  if (!v12)
  {
    goto LABEL_21;
  }

  v14 = strlen(v28);
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = 0;
    v18 = &v12[1][6 * *(v12 + 7)];
    *(v18 + 16) |= 1u;
    do
    {
      v19 = v28[v16];
      if (v19 == 47 || v19 == 0)
      {
        v25 = -1;
        if ((sub_10011F360(v12, *v12 + 1) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithPath", 732, 60, 0, "increase PathList capacity");
          goto LABEL_21;
        }

        if ((sub_10011A254(v12[2], &v28[v17], v16 - v17, &v25) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithPath", 733, 60, 0, "inserting path component in table");
LABEL_21:
          AAPathListDestroy(v12);
          return 0;
        }

        v21 = *v12;
        v22 = &v12[1][6 * *v12];
        *v22 = *v12 - 1;
        v22[3] = v25;
        v22[4] = v19 != 0;
        *v12 = v21 + 1;
        if (!v19)
        {
          break;
        }

        v17 = ++v16;
      }

      ++v16;
    }

    while (v16 <= v15);
  }

  if ((sub_10011FC00(v12) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithPath", 745, 60, 0, "Tree normalization");
    goto LABEL_21;
  }

  return v12;
}

int AAPathListNodeGetPath(AAPathList path_list, uint64_t node, size_t path_capacity, char *path, size_t *path_length)
{
  if (node == -1)
  {
    if (path_capacity)
    {
      *path = 0;
    }

    result = 0;
    *path_length = 0;
  }

  else if (*path_list <= node)
  {
    return -1;
  }

  else
  {
    v7 = 0;
    result = sub_1001202D0(path_list, node, path_capacity, path, &v7);
    if (path_length)
    {
      *path_length = v7;
    }
  }

  return result;
}

uint64_t sub_1001202D0(uint64_t a1, unsigned int a2, size_t a3, _BYTE *a4, size_t *a5)
{
  if (a2 == -1)
  {
    v17 = 0;
    if (a3)
    {
      *a4 = 0;
    }

    goto LABEL_15;
  }

  if ((sub_1001202D0(a1, *(*(a1 + 8) + 24 * a2), a3, a4, a5) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 16);
  v11 = *(v10 + 8) + 16 * *(*(a1 + 8) + 24 * a2 + 12);
  v12 = *(v11 + 8);
  if (!v12)
  {
    return 0;
  }

  v13 = *a5;
  v14 = *a5 + 1;
  if (v14 + v12 < a3)
  {
    v15 = *(v10 + 32);
    v16 = *v11;
    if (v13)
    {
      a4[v13] = 47;
    }

    else
    {
      v14 = 0;
    }

    memcpy(&a4[v14], (v15 + v16), v12);
    v17 = v14 + v12;
    a4[v14 + v12] = 0;
    goto LABEL_15;
  }

  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = v13 + (v12 + 1);
LABEL_15:
  result = 0;
  *a5 = v17;
  return result;
}

uint64_t AAPathListGetNode(uint64_t a1, char *__s)
{
  v2 = *(a1 + 28);
  if (v2 != -1)
  {
    v6 = strlen(__s);
    if (!v6)
    {
      return v2;
    }

    v7 = 0;
    v15 = v6;
    while (1)
    {
      v8 = v6 <= v7 + 1 ? v7 + 1 : v6;
      v9 = v7;
      while (__s[v9] != 47)
      {
        if (v8 == ++v9)
        {
          v10 = __s[v8] != 0;
          v9 = v8;
          goto LABEL_14;
        }
      }

      v10 = 1;
LABEL_14:
      if (v9 == v7)
      {
        break;
      }

      v11 = *(a1 + 8);
      v2 = *(v11 + 24 * v2 + 4);
      if (v2 == -1)
      {
        break;
      }

      v16 = v10;
      v12 = *(a1 + 16);
      v13 = *(v12 + 8);
      while (1)
      {
        v14 = *(v11 + 24 * v2 + 12);
        if (v9 - v7 == *(v13 + 16 * v14 + 8) && !strncmp((*(v12 + 32) + *(v13 + 16 * v14)), &__s[v7], v9 - v7))
        {
          break;
        }

        v2 = *(v11 + 24 * v2 + 8);
        if (v2 == -1)
        {
          return -1;
        }
      }

      v6 = v15;
      v7 = v9 + v16;
      if (v9 + v16 >= v15)
      {
        return v2;
      }
    }
  }

  return -1;
}

uint64_t AAPathListMerge(unsigned int *a1, unsigned int *a2)
{
  v16 = 0;
  if (*a2 == 1)
  {
    return 0;
  }

  if ((sub_10011A6AC(*(a1 + 2), *(a2 + 2), &v16) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListMerge", 800, 60, 0, "String table merge");
  }

  else
  {
    v5 = *a1;
    if ((sub_10011F360(a1, *a2 + *a1) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListMerge", 804, 60, 0, "Capacity increase");
    }

    else
    {
      if (*a2 >= 2)
      {
        v6 = *(a1 + 1);
        v7 = *a1;
        v8 = (*(a2 + 1) + 40);
        v9 = 1;
        do
        {
          v10 = v6 + 24 * v7++;
          *a1 = v7;
          v11 = v16 + *(v8 - 1);
          v12 = *(v8 - 4);
          v13 = v12 == 0;
          v14 = v5 - 1 + v12;
          if (v13)
          {
            v14 = 0;
          }

          *v10 = v14;
          v15 = *v8;
          v8 += 6;
          *(v10 + 12) = v11;
          *(v10 + 16) = v15;
          *(v10 + 20) = -1;
          *(v10 + 4) = -1;
          ++v9;
        }

        while (v9 < *a2);
      }

      if ((sub_10011FC00(a1) & 0x80000000) == 0)
      {
        return 0;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListMerge", 816, 60, 0, "Tree normalization");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t AAPathListNodeFirst(AAPathList path_list)
{
  if (*(path_list + 6) == -1)
  {
    return -1;
  }

  else
  {
    return *(path_list + 6);
  }
}

uint64_t AAPathListNodeNext(AAPathList path_list, uint64_t node)
{
  if (*path_list <= node)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListNodeNext", 826, 60, 0, "Invalid node: %llu", node);
    return -1;
  }

  else if (*(*(path_list + 1) + 24 * node + 20) == -1)
  {
    return -1;
  }

  else
  {
    return *(*(path_list + 1) + 24 * node + 20);
  }
}

uint64_t sub_100120714(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v6 = (v5 + 24 * v3);
  v7 = (v5 + 24 * *a3);
  if (*v6 == *v7)
  {
    v8 = v6[3];
    v9 = v7[3];
    if (v8 < v9)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v9 < v8;
    }
  }

  else
  {
    if (*a1 <= v3 || (*__s2 = 0, (sub_1001202D0(a1, v3, 0x400uLL, __s1, __s2) & 0x80000000) != 0) || *__s2 >= 0x400uLL)
    {
      __s1[0] = 0;
    }

    if (*a1 <= v4 || (v12 = 0, (sub_1001202D0(a1, v4, 0x400uLL, __s2, &v12) & 0x80000000) != 0) || v12 >= 0x400)
    {
      __s2[0] = 0;
    }

    return strcmp(__s1, __s2);
  }
}

void **sub_100120834(size_t a1)
{
  v2 = malloc(0x28uLL);
  v3 = v2;
  if (v2)
  {
    v2[4] = 0;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    if ((sub_1001208C8(v2, a1) & 0x8000000000000000) != 0)
    {
      free(v3[4]);
      free(v3);
      return 0;
    }
  }

  else
  {
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferCreate", 41, 36, *v4, "malloc");
  }

  return v3;
}

unint64_t sub_1001208C8(uint64_t a1, size_t a2)
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferIncreaseCapacity", 91, 36, *v6, "malloc");
      return -1;
    }
  }

  return result;
}

void sub_100120944(void **a1)
{
  if (a1)
  {
    free(a1[4]);

    free(a1);
  }
}

void **sub_100120988(size_t a1, const void *a2)
{
  v4 = sub_100120834(a1);
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

uint64_t sub_100120A00(uint64_t a1)
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

uint64_t sub_100120A4C(uint64_t a1, unint64_t a2)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferDecreaseSize", 117, 36, 0, "MemBufferDecreaseSize n is too large: %zu", a2);
    return -1;
  }

  return result;
}

unint64_t sub_100120AD4(unint64_t *a1, uint64_t a2)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferIncreaseSize", 137, 36, 0, "MemBufferIncreaseSize n is too large: %zu", a2);
    return -1;
  }

  return v3;
}

void *sub_100120B50(void *result)
{
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

unint64_t sub_100120B6C(unint64_t *a1, size_t a2, const void *a3)
{
  v6 = *a1 - a1[1];
  v7 = sub_100120A00(a1);
  if (v6 >= a2)
  {
    memcpy(v7, a3, a2);

    return sub_100120AD4(a1, a2);
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferFillFromBuffer", 162, 36, 0, "MemBufferFillFromBuffer n is too large: %zu", a2);
    return -1;
  }
}

unint64_t sub_100120C20(unint64_t *a1, size_t a2, const void *a3)
{
  v6 = a1[1] + a2;
  if (v6 > *a1 && (sub_1001208C8(a1, v6) & 0x8000000000000000) != 0)
  {
    return -1;
  }

  return sub_100120B6C(a1, a2, a3);
}

uint64_t sub_100120C9C(void *a1, size_t __n, void *__dst)
{
  if (a1[1] >= __n)
  {
    memcpy(__dst, (a1[4] + a1[2]), __n);

    return sub_100120A4C(a1, __n);
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferFlushToBuffer", 183, 36, 0, "MemBufferFlushToBuffer n is too large: %zu", __n);
    return -1;
  }
}

unint64_t sub_100120D44(unint64_t *a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v8 = *a1 - a1[1];
  v9 = sub_100120A00(a1);
  if (v8 >= a2)
  {
    v8 = a2;
  }

  if (v8)
  {
    v10 = v9;
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

    return sub_100120AD4(a1, v11);
  }
}

unint64_t sub_100120E00(unint64_t *a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  if (!a2)
  {
    return a1[1];
  }

  v8 = 0;
  while (1)
  {
    v9 = *a1 - a1[1];
    v10 = sub_100120A00(a1);
    if (v9)
    {
      goto LABEL_9;
    }

    v11 = *a1 ? *a1 + (*a1 >> 2) : 0x10000;
    if ((sub_1001208C8(a1, v11) & 0x8000000000000000) != 0)
    {
      break;
    }

    v9 = *a1 - a1[1];
    v10 = sub_100120A00(a1);
LABEL_9:
    v12 = a3(a4, v10, v9);
    if (v12 < 0)
    {
      return -1;
    }

    if (v12)
    {
      v8 += v12;
      sub_100120AD4(a1, v12);
      if (v8 < a2)
      {
        continue;
      }
    }

    return a1[1];
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferFillFromIStreamWithCapacityIncrease", 229, 36, 0, "Capacity increase failed");
  return -1;
}

uint64_t sub_100120EF4(void *a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferFlushToOStream", 265, 36, 0, "MemBuffer write proc returned 0");
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

    return sub_100120A4C(a1, v8);
  }
}

unint64_t sub_100120FD4(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
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
      v10 = sub_1000FD92C;
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
      v12 = sub_1000FD95C;
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
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferTransmit", 294, 36, 0, "read failed");
          return -1;
        }

        v15 = v14;
        v16 = v12(v11, a1[4], v14);
        if ((v16 & 0x8000000000000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferTransmit", 298, 36, 0, "write failed");
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

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferTransmit", 299, 36, 0, "truncated write");
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferTransmit", 281, 36, 0, "MemBuffer is not allocated");
    }

    return -1;
  }

  return a2;
}

void *sub_100121150(const char *a1, unint64_t a2, off_t a3)
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFilename", v13, 36, v11, v12, v19, v20, v21);
      sub_1001213A4(v7);
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
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFilename", 329, 36, *v14, "malloc");
  return v7;
}

void sub_1001213A4(void *a1)
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

void *sub_100121408(int a1, unint64_t a2, unint64_t a3)
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFD", v12, 36, v10, v11, v18, v19, *&v20.st_dev, v20.st_ino, *&v20.st_uid, *&v20.st_rdev, v20.st_atimespec.tv_sec, v20.st_atimespec.tv_nsec, v20.st_mtimespec.tv_sec, v20.st_mtimespec.tv_nsec, v20.st_ctimespec.tv_sec, v20.st_ctimespec.tv_nsec, v20.st_birthtimespec.tv_sec, v20.st_birthtimespec.tv_nsec);
      sub_1001213A4(v7);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFD", 382, 36, *v13, "malloc");
  }

  return v7;
}

void *sub_10012163C(uint64_t a1, const char *a2)
{
  memset(&v14, 0, sizeof(v14));
  address = 0;
  v4 = mach_task_self_;
  v5 = calloc(1uLL, 0x430uLL);
  v6 = v5;
  if (v5)
  {
    *(v5 + 256) = -1;
    v7 = (a1 + 0xFFFF) & 0xFFFFFFFFFFFF0000;
    if (!a1)
    {
      v7 = 10485760;
    }

    v5[130] = v7;
    if (!a2)
    {
      __strlcpy_chk();
      goto LABEL_11;
    }

    if (realpath_DARWIN_EXTSN(a2, v5))
    {
      if (stat(a2, &v14) || (v14.st_mode & 0xF000) != 0x4000)
      {
        v12 = a2;
        v8 = "Invalid tempDir %s";
        v9 = 526;
LABEL_16:
        v10 = 0;
        goto LABEL_17;
      }

LABEL_11:
      __strlcat_chk();
      if (vm_allocate(v4, &address, v6[130], 1))
      {
        v8 = "Failed vm_allocate out buffer";
        v9 = 531;
      }

      else
      {
        if (!vm_protect(v4, address, v6[130], 0, 3))
        {
          v6[129] = address;
          return v6;
        }

        v8 = "Failed vm_protect out buffer";
        v9 = 532;
      }

      goto LABEL_16;
    }

    v10 = *__error();
    v12 = a2;
    v8 = "Invalid tempDir %s";
    v9 = 525;
  }

  else
  {
    v10 = *__error();
    v8 = "malloc";
    v9 = 514;
  }

LABEL_17:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "TempBufferCreate", v9, 36, v10, v8, v12);
  sub_100121848(v6);
  return 0;
}

void sub_100121848(void *a1)
{
  if (a1)
  {
    v2 = a1[129];
    if (v2)
    {
      vm_deallocate(mach_task_self_, v2, a1[130]);
      a1[129] = 0;
    }

    v3 = *(a1 + 256);
    if ((v3 & 0x80000000) == 0)
    {
      close(v3);
      unlink(a1);
    }

    free(a1);
  }
}

uint64_t sub_1001218B8(uint64_t a1)
{
  *(a1 + 1068) = 1;
  *(a1 + 1048) = 0;
  return 0;
}

size_t sub_1001218CC(uint64_t a1, void *a2, size_t a3)
{
  result = sub_100121904(a1, a2, a3, *(a1 + 1048));
  if ((result & 0x8000000000000000) == 0)
  {
    *(a1 + 1048) += result;
  }

  return result;
}

size_t sub_100121904(char *a1, void *__buf, size_t __nbyte, unint64_t a4)
{
  if (*(a1 + 266) || *(a1 + 267))
  {
    return -1;
  }

  if (*(a1 + 132) < a4)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "TempBufferPWrite", 590, 36, 0, "offset out of range: %llllu", a4);
    return -1;
  }

  v6 = __nbyte;
  v8 = a4 + __nbyte;
  v9 = *(a1 + 129);
  if (v9)
  {
    if (v8 <= *(a1 + 130))
    {
      memcpy((v9 + a4), __buf, __nbyte);
      goto LABEL_19;
    }

    if ((*(a1 + 256) & 0x80000000) == 0)
    {
      v10 = "Already switched to file";
      v11 = 475;
LABEL_9:
      v12 = 0;
LABEL_24:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "tempBufferSwitchToFile", v11, 36, v12, v10, v19);
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "TempBufferPWrite", 597, 36, 0, "switching to tmp file", v20);
      return -1;
    }

    v13 = mkstemp(a1);
    *(a1 + 256) = v13;
    if (v13 < 0)
    {
      v12 = *__error();
      v19 = a1;
      v10 = "%s";
      v11 = 479;
      goto LABEL_24;
    }

    v14 = write(v13, *(a1 + 129), *(a1 + 132));
    if (v14 < 0)
    {
      v12 = *__error();
      v10 = "write";
      v11 = 483;
      goto LABEL_24;
    }

    if (v14 != *(a1 + 132))
    {
      v10 = "truncated write";
      v11 = 484;
      goto LABEL_9;
    }

    v15 = *(a1 + 129);
    if (v15)
    {
      vm_deallocate(mach_task_self_, v15, *(a1 + 130));
      *(a1 + 129) = 0;
    }
  }

  v16 = *(a1 + 256);
  if (v16 < 0)
  {
    return -1;
  }

  v17 = pwrite(v16, __buf, v6, a4);
  if (v17 < 0 || v17 != v6)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "TempBufferPWrite", 611, 36, 0, "Write to tmp error");
    return -1;
  }

LABEL_19:
  if (v8 > *(a1 + 132))
  {
    *(a1 + 132) = v8;
  }

  return v6;
}

size_t sub_100121B30(uint64_t a1, void *a2, size_t a3)
{
  result = sub_100121B68(a1, a2, a3, *(a1 + 1048));
  if ((result & 0x8000000000000000) == 0)
  {
    *(a1 + 1048) += result;
  }

  return result;
}

size_t sub_100121B68(uint64_t a1, void *__buf, size_t a3, unint64_t a4)
{
  if (*(a1 + 1064) || !*(a1 + 1068))
  {
    return -1;
  }

  v6 = *(a1 + 1056);
  if (v6 < a4)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "TempBufferPRead", 634, 36, 0, "offset out of range: %llllu", a4);
    return -1;
  }

  if (a4 + a3 <= v6)
  {
    v4 = a3;
  }

  else
  {
    v4 = v6 - a4;
  }

  if (v4)
  {
    v7 = *(a1 + 1032);
    if (v7)
    {
      memcpy(__buf, (v7 + a4), v4);
      return v4;
    }

    v8 = *(a1 + 1024);
    if (v8 < 0)
    {
      return -1;
    }

    v9 = pread(v8, __buf, v4, a4);
    if (v9 < 0 || v9 != v4)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "TempBufferPRead", 650, 36, 0, "Read from tmp error");
      return -1;
    }
  }

  return v4;
}

unint64_t sub_100121C50(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 1064))
  {
    return -1;
  }

  v4 = *(a1 + 1056);
  if (v4 >= a2)
  {
    *(a1 + 1048) = a2;
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "TempBufferSetPos", 662, 36, 0, "offset out of range: %llllu size=%ll llu", a2, v4, v2, v3);
    return -1;
  }

  return a2;
}

uint64_t sub_100121CC8(uint64_t a1)
{
  if (*(a1 + 1064))
  {
    return -1;
  }

  else
  {
    return *(a1 + 1048);
  }
}

uint64_t sub_100121CE0(uint64_t a1)
{
  if (*(a1 + 1064))
  {
    return -1;
  }

  else
  {
    return *(a1 + 1056);
  }
}

unint64_t AAAsyncByteStreamProcessAllRanges(void *a1, void *a2, int a3, size_t __count)
{
  if (!__count)
  {
    LODWORD(__count) = sub_1000F4290();
  }

  v28 = 0;
  v27 = 0;
  v6 = __count;
  v7 = calloc(__count, 8uLL);
  v8 = v7;
  if (!v7)
  {
    v19 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 79, 116, *v19, "malloc");
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 83, 116, *v20, "malloc");
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

  v13 = sub_1001021B4(v6, v8, sub_100122010);
  if (!v13)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 93, 116, 0, "ThreadPoolCreate");
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 101, 116, 0, "AAAsyncByteStreamGetRange");
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

    v15 = sub_100102924(v13);
    if (!v15)
    {
      break;
    }

    v16 = v25;
    *(v15 + 32) = v26;
    *(v15 + 40) = v16;
    if ((sub_100102A58(v13) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 110, 116, 0, "ThreadPoolRunWorker");
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

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 107, 116, 0, "ThreadPoolGetWorker");
LABEL_23:
  LODWORD(v12) = 0;
LABEL_24:
  if ((sub_100102638(v13) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 115, 116, 0, "Threads reported errors");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 127, 116, 0, "Threads reported errors");
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

uint64_t sub_100122010(uint64_t a1)
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "workerProc", 36, 116, *v8, "malloc");
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "workerProc", 43, 116, 0, "istream read");
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "workerProc", 50, 116, 0, "stream process");
  }

LABEL_16:
  v9 = 0;
  *(a1 + 56) = 0;
  atomic_compare_exchange_strong(*(a1 + 16), &v9, 1u);
  return 0xFFFFFFFFLL;
}

void *sub_100122190(int a1, const char *a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, __int16 a7)
{
  LODWORD(v8) = a6;
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
            v40 = a2;
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
          v40 = a2;
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
        sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAt", 371, 67, "Warning: F_NOCACHE failed with error %d: %s\n", v24, v25, v26, *v23, a2);
      }

      if ((a7 & 2) != 0 && fcntl(*v16, 68, 1) == -1)
      {
        v27 = __error();
        sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAt", 380, 67, "Warning: F_SETSTATICCONTENT failed with error %d: %s\n", v28, v29, v30, *v27, a2);
      }

      if (a3 > 0)
      {
        if (a4 != -1 && (a7 & 4) != 0)
        {
          v31 = AAAFSCStreamOpen(*v16, a3, a4, a5);
          *(v16 + 5) = v31;
          if (!v31)
          {
            v40 = a2;
            v18 = "ParallelCompressionAFSCStreamOpen failed: %s";
            v19 = 389;
            goto LABEL_61;
          }
        }

        if ((a7 & 0x40) != 0 && !*(v16 + 5))
        {
          v32 = fpathconf(*v16, 27);
          if (v32 >= 1)
          {
            v16[22] = 1;
            if (v32 == 4096)
            {
              *(v16 + 12) = 4096;
            }

            else
            {
              v33 = 0x10000;
              if (v32 < 0x10000)
              {
                v33 = v32;
              }

              v34 = 1024;
              do
              {
                v35 = v34;
                v34 *= 2;
              }

              while (v35 < v33);
              *(v16 + 12) = v35;
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

      v36 = *(v16 + 9);
      if (v36 >> 18)
      {
        goto LABEL_59;
      }

      do
      {
        v37 = (v36 >> 1) + v36;
        if (((v36 >> 1) & v36) != 0)
        {
          v37 = ((v36 >> 1) & v36) + v36;
        }

        if (v36)
        {
          v36 = v37;
        }

        else
        {
          v36 = 0x4000;
        }
      }

      while (v36 < 0x40000);
      v38 = *(v16 + 10);
      v39 = realloc(v38, v36);
      if (v39)
      {
        *(v16 + 9) = v36;
        *(v16 + 10) = v39;
LABEL_59:
        *v14 = v16;
        v14[1] = sub_1001225F4;
        v14[7] = sub_100122794;
        v14[3] = sub_1001227A8;
        v14[12] = sub_100122A88;
        return v14;
      }

      free(v38);
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
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAt", v19, 67, v17, v18, v40);
  sub_1001225F4(v16);
  free(v14);
  return 0;
}

uint64_t sub_1001225F4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 48));
    v3 = v2 == 0;
    if (AAByteStreamClose(*(result + 40)) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamClose", 197, 67, 0, "closing AFSC stream");
      v3 = 0;
    }

    if (*(v1 + 120) && *(v1 + 104))
    {
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v6 = (*(v1 + 120) + v4);
        v14 = 0;
        v15 = 0;
        v13 = 0;
        v7 = *v6;
        v8 = v6[1] - *v6;
        v14 = v7;
        v15 = v8;
        if (fcntl(*v1, 99, &v13) < 0)
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

      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamClose", 209, 67, "F_PUNCHHOLE failed", v9, v10, v11);
    }

LABEL_11:
    if ((*(v1 + 8) & 0x10) != 0 && fcntl(*v1, 51, 0) == -1)
    {
      v12 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamClose", 218, 67, *v12, "Final FULLFSYNC");
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

uint64_t sub_1001227A8(uint64_t a1, char *__src, size_t a3)
{
  if (!atomic_load((a1 + 48)))
  {
    v5 = a3;
    v7 = *(a1 + 24);
    if (__CFADD__(a3, v7) || a3 + v7 > *(a1 + 16))
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamWrite", 275, 67, 0, "received too many bytes %llu/%llu");
      goto LABEL_13;
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      if (!v9[3])
      {
        v4 = -1;
LABEL_46:
        if (v7 != *(a1 + 16) || (sub_100123290(a1) & 0x80000000) == 0)
        {
          if ((v4 & 0x8000000000000000) == 0)
          {
            return v4;
          }

          goto LABEL_14;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamWrite", 298, 67, 0, "flush buf");
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
          if ((sub_100123290(a1) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamWrite", 284, 67, 0, "flush buf");
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
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamWrite", 286, 67, 0, "append to buf");
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

uint64_t sub_100122A88(uint64_t a1, void *a2, void *a3)
{
  if (atomic_load((a1 + 48)))
  {
    return 0xFFFFFFFFLL;
  }

  v30 = v3;
  v31 = v4;
  if ((sub_100123290(a1) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamCloseWithState", 236, 67, 0, "flush buf");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamCloseWithState", 253, 67, 0, "serializing state", v25, v26, v27, v28, v29);
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

void *sub_100122CE4(int a1, const char *a2, AAByteStream_impl *a3, void *a4)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 467, 67, v12, "malloc");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 475, 67, v27, "%s");
    goto LABEL_26;
  }

  if (!*(a3 + 2))
  {
LABEL_25:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 478, 67, 0, "loading state", v46);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 490, 67, 0, "alloc buf", v46);
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 492, 67, 0, "alloc holes");
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
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 496, 67, 0, "loading state", v46);
LABEL_26:
          sub_1001225F4(v10);
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 500, 67, 0, "loading AFSC stream state", v46);
      goto LABEL_26;
    }
  }

  if (a4)
  {
    *a4 = *(v10 + 24);
  }

  *v8 = v10;
  v8[1] = sub_1001225F4;
  v8[7] = sub_100122794;
  v8[3] = sub_1001227A8;
  v8[12] = sub_100122A88;
  return v8;
}

uint64_t sub_1001231D8(uint64_t (**a1)(uint64_t result))
{
  if (a1 && a1[1] == sub_1001225F4)
  {
    v1 = **a1;
    *(*a1 + 1) = 1;
    if ((AAByteStreamClose(a1) & 0x80000000) == 0)
    {
      return v1;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamCloseAndReturnFD", 531, 67, 0, "closing stream");
    if ((v1 & 0x80000000) == 0)
    {
      close(v1);
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamCloseAndReturnFD", 524, 67, 0, "invalid stream");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100123290(uint64_t a1)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "flushBuf", v8, 67, v9, v7);
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "flushBuf", 140, 67, *v39, "malloc");
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

void *AARangeInputStreamOpen(uint64_t a1, uint64_t a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = malloc(0x30uLL);
  v6 = v5;
  if (!v5 || (memset_s(v5, 0x30uLL, 0, 0x30uLL), !v4))
  {
    v8 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARangeInputStream.c", "AARangeInputStreamOpen", 81, 118, v8, "malloc");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARangeInputStream.c", "AARangeInputStreamOpen", 86, 118, 0, "AAByteRangeClone");
    goto LABEL_6;
  }

  v6[4] = AAByteRangeFirst(v7, 0, v6 + 2, v6 + 3);
  *v4 = v6;
  v4[1] = sub_10012374C;
  v4[7] = sub_100123780;
  v4[2] = sub_1001237A4;
  return v4;
}

uint64_t sub_10012374C(void ***a1)
{
  AAByteRangeDestroy(a1[1]);
  free(a1);
  return 0;
}

void sub_100123780(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 40), &v1, 1u);
  if (!v1)
  {
    AAByteStreamCancel(*a1);
  }
}

uint64_t sub_1001237A4(uint64_t a1, char *buf, unint64_t a3)
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

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARangeInputStream.c", "rangeInputStreamRead", 59, 118, 0, "Stream pread");
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

void *AAMemoryInputStreamOpen(uint64_t a1, uint64_t a2)
{
  if (!a1 && a2)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryInputStreamOpen", 132, 68, 0, "Invalid arguments");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryInputStreamOpen", 137, 68, *v7, "malloc");
    goto LABEL_8;
  }

  *v5 = a1;
  v5[1] = a2;
  *v4 = v5;
  v4[1] = sub_100123A10;
  v4[7] = sub_100123A2C;
  v4[2] = sub_100123A40;
  v4[4] = sub_100123A60;
  v4[6] = sub_100123AD8;
  return v4;
}

size_t sub_100123A40(uint64_t a1, void *a2, unint64_t a3)
{
  if (atomic_load((a1 + 24)))
  {
    return -1;
  }

  else
  {
    return sub_100123A60(a1, a2, a3, atomic_fetch_add((a1 + 16), a3));
  }
}

size_t sub_100123A60(uint64_t a1, void *__dst, uint64_t a3, uint64_t a4)
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

unint64_t sub_100123AD8(uint64_t a1, unint64_t a2, int a3)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryOutputStreamOpen", 169, 68, 0, "Invalid arguments");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryOutputStreamOpen", 174, 68, *v7, "malloc");
    goto LABEL_8;
  }

  v5[1] = 0;
  v5[2] = a2;
  *v5 = a1;
  *v4 = v5;
  v4[1] = sub_100123C48;
  v4[7] = sub_100123C64;
  v4[3] = sub_100123C78;
  return v4;
}

size_t sub_100123C78(void *a1, const void *a2, size_t __n)
{
  v3 = __n;
  if (__n)
  {
    v5 = a1[1];
    v6 = v5 + __n;
    if (__CFADD__(v5, __n))
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "memoryOutputStreamWrite", 102, 68, 0, "invalid size");
    }

    else
    {
      if (v6 <= a1[2])
      {
        memcpy((*a1 + v5), a2, __n);
        a1[1] = v6;
        return v3;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "memoryOutputStreamWrite", 103, 68, 0, "buffer full");
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

  if (a1[1] == sub_100123C48)
  {
    v2 = *(*a1 + 1);
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryOutputStreamCloseWithSize", 201, 68, 0, "invalid stream type");
    v2 = -1;
  }

  if (AAByteStreamClose(a1) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAMemoryStream.c", "AAMemoryOutputStreamCloseWithSize", 207, 68, 0, "close stream");
    return -1;
  }

  return v2;
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

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "RNG", 24, 96, 0, "generate random bytes");
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainGenerateItem", 43, 96, 0, "RNG failed");
      }

      else
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainGenerateItem", 42, 96, 0, "Insufficient buffer capacity");
      }
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainGenerateItem", 78, 96, 0, "Invalid item type");
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

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "RNG", 24, 96, 0, "generate random bytes");
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainGenerateItem", 64, 96, 0, "RNG failed");
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainGenerateItem", 52, 96, 0, "Insufficient buffer capacity");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t AEAKeychainStoreItem(unsigned __int8 *a1, unint64_t a2, uint64_t a3, const UInt8 *a4, CFIndex a5)
{
  if (!a2 || !a5)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainStoreItem", 178, 96, 0, "Invalid args");
    return 0xFFFFFFFFLL;
  }

  v7 = sub_100124234(a1, a2, a3);
  if (!v7)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainStoreItem", 182, 96, 0, "create attributes");
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = CFDataCreate(kCFAllocatorDefault, a4, a5);
  if (!v9)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainStoreItem", 186, 96, 0, "create item data");
    CFRelease(v8);
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  CFDictionaryAddValue(v8, kSecValueData, v9);
  v11 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleWhenUnlocked, 1uLL, 0);
  if (!v11)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainStoreItem", 191, 96, 0, "create access control");
    goto LABEL_14;
  }

  CFDictionaryAddValue(v8, kSecAttrAccessControl, v11);
  if (SecItemAdd(v8, 0))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainStoreItem", 196, 96, 0, "adding item to the keychain: %d");
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

__CFDictionary *sub_100124234(unsigned __int8 *a1, unint64_t a2, int a3)
{
  v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "kSecUseDataProtectionKeychain");
  if (v6)
  {
    v7 = *v6;
    if (a3)
    {
      if (a3 != 1)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 124, 96, 0, "Invalid item type %d");
        return 0;
      }

      v8 = "kAEA";
    }

    else
    {
      v8 = "pAEA";
    }

    v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v8);
    if (v9)
    {
      v10 = v9;
      if (((a2 >> 36) & 0x7FFFFFF) != 0)
      {
        *__error() = 12;
LABEL_19:
        v20 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 132, 96, *v20, "malloc");
        v21 = v10;
LABEL_20:
        CFRelease(v21);
        return 0;
      }

      v11 = 2 * a2;
      v12 = malloc((2 * a2) | 1);
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = v12;
      if (a2)
      {
        v14 = v12 + 1;
        do
        {
          v15 = *a1++;
          *(v14 - 1) = a0123456789abcd_0[v15 >> 4];
          *v14 = a0123456789abcd_0[v15 & 0xF];
          v14 += 2;
          --a2;
        }

        while (a2);
      }

      v12[v11] = 0;
      v16 = CFStringCreateWithCString(kCFAllocatorDefault, v12, 0x600u);
      if (v16)
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v18 = Mutable;
        if (Mutable)
        {
          CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
          CFDictionaryAddValue(v18, v7, kCFBooleanTrue);
          CFDictionaryAddValue(v18, kSecAttrType, v10);
          CFDictionaryAddValue(v18, kSecAttrService, @"AppleEncryptedArchive");
          CFDictionaryAddValue(v18, kSecAttrAccount, v16);
          v19 = 0;
LABEL_26:
          free(v13);
          CFRelease(v10);
          if (v16)
          {
            CFRelease(v16);
            if ((v19 & 1) == 0)
            {
              return v18;
            }
          }

          else if (!v19)
          {
            return v18;
          }

          if (!v18)
          {
            return v18;
          }

          v21 = v18;
          goto LABEL_20;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 144, 96, 0, "create attributes");
      }

      else
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 141, 96, 0, "create attributes");
        v18 = 0;
      }

      v19 = 1;
      goto LABEL_26;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 128, 96, 0, "create attributes");
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 115, 96, 0, "Keychain support not available");
  }

  return 0;
}