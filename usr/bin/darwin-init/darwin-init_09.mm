uint64_t sub_1000E34E8(int a1)
{
  memset(&v5, 0, sizeof(v5));
  if (fstat(a1, &v5))
  {
    v2 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "setUFCompressedBit", 115, 55, v2, "fstat");
    return 0xFFFFFFFFLL;
  }

  if ((v5.st_flags & 0x20) == 0 && fchflags(a1, v5.st_flags | 0x20) < 0)
  {
    v4 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "setUFCompressedBit", 120, 55, v4, "fchflags UF_COMPRESSED");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_1000E35AC(int fd, int a2, unsigned int a3, _DWORD *a4)
{
  v35 = 0uLL;
  value = 0;
  if (a2 == 4)
  {
    v5 = 8 * a3 + 264;
  }

  else
  {
    v5 = 4 * a3 + 4;
  }

  if (v5 >= 0xFFFFFFFF)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size", v35, value);
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeChunkOffsets", 373, 55, 0, "invalid file size", v35, value);
LABEL_41:
    v11 = 0;
    goto LABEL_42;
  }

  if (a2 == 4)
  {
    v8 = a3;
    if (fsetxattr(fd, "com.apple.ResourceFork", &unk_10037C020, 0x32uLL, a4[a3], 0) < 0)
    {
      v30 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeChunkOffsets", 379, 55, v30, "fsetxattr resource fork", v35, value);
      goto LABEL_41;
    }

    v9 = a4[a3];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v10 = malloc(0x4000uLL);
    v11 = v10;
    if (!v10)
    {
      v35 = 0uLL;
      v33 = 399;
LABEL_45:
      value = 0;
LABEL_53:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeChunkOffsets", v33, 55, 0, "prepare zlib header", v35, value);
      goto LABEL_42;
    }

    value = v10;
    *v10 = 0x10000;
    *(v10 + 1) = bswap32(v9);
    *(v10 + 2) = bswap32(v9 - 256);
    *(v10 + 3) = 838860800;
    v12 = v50;
    *(v10 + 13) = v49;
    *(v10 + 14) = v12;
    *(v10 + 15) = v51;
    v13 = v46;
    *(v10 + 9) = v45;
    *(v10 + 10) = v13;
    v14 = v48;
    *(v10 + 11) = v47;
    *(v10 + 12) = v14;
    v15 = v42;
    *(v10 + 5) = v41;
    *(v10 + 6) = v15;
    v16 = v44;
    *(v10 + 7) = v43;
    *(v10 + 8) = v16;
    v17 = v38;
    *(v10 + 1) = v37;
    *(v10 + 2) = v17;
    v18 = v40;
    *(v10 + 3) = v39;
    *(v10 + 4) = v18;
    *(v10 + 64) = bswap32(v9 - 260);
    *(v10 + 65) = a3;
    v35 = xmmword_10037C010;
    if (a3)
    {
      v19 = 0;
      v5 = 264;
      v20 = 0x4000;
      while (1)
      {
        v21 = v5 + 8;
        if (v5 >= 0xFFFFFFFFFFFFFFF8 || (v21 & 0x8000000000000000) != 0)
        {
          v33 = 406;
          v11 = value;
          goto LABEL_53;
        }

        v22 = a4[v19++];
        v23 = a4[v19];
        if (v20 < v21)
        {
          break;
        }

LABEL_24:
        *&v11[v5] = (v22 - 260) | ((v23 - v22) << 32);
        v5 = v35 + 8;
        *&v35 = v35 + 8;
        if (v19 == v8)
        {
          v11 = value;
          goto LABEL_49;
        }
      }

      do
      {
        while (!v20)
        {
          v20 = 0x4000;
          v25 = 0x4000;
          if (v21 <= 0x4000)
          {
            goto LABEL_22;
          }
        }

        v24 = v20 >> 1;
        if ((v20 & (v20 >> 1)) != 0)
        {
          v24 = v20 & (v20 >> 1);
        }

        v20 += v24;
      }

      while (v20 < v21);
      v25 = v20;
      if (v20 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_57;
      }

LABEL_22:
      v26 = realloc(v11, v25);
      if (v26)
      {
        *(&v35 + 1) = v25;
        value = v26;
        v11 = v26;
        v20 = v25;
        goto LABEL_24;
      }

      free(v11);
LABEL_57:
      v11 = 0;
      v35 = 0uLL;
      v33 = 406;
      goto LABEL_45;
    }

    v5 = 264;
  }

  else
  {
    v27 = 0;
    do
    {
      while (!v27)
      {
        v27 = 0x4000;
        if (v5 <= 0x4000)
        {
          v27 = 0x4000;
          goto LABEL_36;
        }
      }

      v28 = v27 >> 1;
      if ((v27 & (v27 >> 1)) != 0)
      {
        v28 = v27 & (v27 >> 1);
      }

      v27 += v28;
    }

    while (v27 < v5);
    if (v27 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_39:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeChunkOffsets", 411, 55, 0, "prepare non zlib header", 0, 0, 0);
      goto LABEL_41;
    }

LABEL_36:
    v29 = malloc(v27);
    if (!v29)
    {
      goto LABEL_39;
    }

    v11 = v29;
    *(&v35 + 1) = v27;
    value = v29;
    if (a4)
    {
      memcpy(v29, a4, v5);
    }

    else
    {
      memset_s(v29, v5, 0, v5);
    }

    *&v35 = v5;
  }

LABEL_49:
  if ((fsetxattr(fd, "com.apple.ResourceFork", v11, v5, 0, 0) & 0x80000000) == 0)
  {
    v31 = 0;
    goto LABEL_43;
  }

  v34 = *__error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "storeChunkOffsets", 420, 55, v34, "fsetxattr resource fork", v35, value);
LABEL_42:
  v31 = 0xFFFFFFFFLL;
LABEL_43:
  free(v11);
  memset_s(&v35, 0x18uLL, 0, 0x18uLL);
  return v31;
}

uint64_t sub_1000E3A2C(uint64_t a1)
{
  v2 = (*(a1 + 8) & 2) != 0 && *(a1 + 32) != 10;
  v3 = *(a1 + 112);
  if (v3)
  {
    if (v3 > 0xD || ((1 << v3) & 0x2A88) == 0)
    {
      v6 = (a1 + 40);
      LODWORD(v5) = *(a1 + 40);
LABEL_15:
      v8 = v3 > 0xD;
      v9 = (1 << v3) & 0x2A88;
      if (!v8 && v9 != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushOBuf", 704, 55, 0, "requested compression type requests inline storage");
        return 0xFFFFFFFFLL;
      }

LABEL_21:
      if (!v5)
      {
        v11 = *(a1 + 44);
        v12 = 8 * v11 + 264;
        v13 = 4 * v11 + 4;
        if (*(a1 + 32) == 4)
        {
          v5 = v12;
        }

        else
        {
          v5 = v13;
        }

        v7 = 0xFFFFFFFFLL;
        if (v5 >= 0xFFFFFFFF)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size");
          *v6 = -1;
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushOBuf", 714, 55, 0, "File too large for AFSC");
          return v7;
        }

        *v6 = v5;
      }

      if ((fsetxattr(*a1, "com.apple.ResourceFork", *(a1 + 104), *(a1 + 88), v5, 0) & 0x80000000) == 0)
      {
        v7 = 0;
        *(a1 + 40) += *(a1 + 88);
        *(a1 + 88) = 0;
        return v7;
      }

      v15 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "flushOBuf", 723, 55, v15, "fsetxattr resource fork");
      return 0xFFFFFFFFLL;
    }
  }

  v6 = (a1 + 40);
  LODWORD(v5) = *(a1 + 40);
  if (v5 != 0 || v2 || *(a1 + 44) != 1 || *(a1 + 24) != *(a1 + 16) || (*(a1 + 88) + 16) >= 0xE01)
  {
    if (!v3)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1000E3C2C(int a1, int a2, unsigned int a3, _DWORD *a4)
{
  __s = 0;
  v20 = 0;
  v21 = 0;
  v5 = 4 * a3 + 4;
  if (a2 == 4)
  {
    v6 = 8 * a3 + 264;
  }

  else
  {
    v6 = 4 * a3 + 4;
  }

  if (v6 >= 0xFFFFFFFF)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "resourceForkHeaderSize", 146, 55, 0, "invalid file size");
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadChunkOffsets", 329, 55, 0, "invalid file size");
LABEL_24:
    v14 = 0;
    goto LABEL_25;
  }

  v10 = 0;
  v11 = a3;
  do
  {
    while (!v10)
    {
      v10 = 0x4000;
      if (v6 <= 0x4000)
      {
        v10 = 0x4000;
        goto LABEL_16;
      }
    }

    v12 = v10 >> 1;
    if ((v10 & (v10 >> 1)) != 0)
    {
      v12 = v10 & (v10 >> 1);
    }

    v10 += v12;
  }

  while (v10 < v6);
  if (v10 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_23:
    v20 = 0;
    v21 = 0;
    __s = 0;
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadChunkOffsets", 332, 55, 0, "alloc buffer");
    goto LABEL_24;
  }

LABEL_16:
  v13 = malloc(v10);
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v13;
  v20 = v10;
  v21 = v13;
  if (fgetxattr(a1, "com.apple.ResourceFork", v13, v6, 0, 32) != v6)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAFSCStream.c", "loadChunkOffsets", 335, 55, 0, "read resource fork header");
LABEL_25:
    v17 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  __s = v6;
  if (a2 == 4)
  {
    *a4 = v6;
    if (a3)
    {
      v15 = a4 + 1;
      v16 = 268;
      do
      {
        LODWORD(v6) = v6 + *&v14[v16];
        *v15++ = v6;
        v16 += 8;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    memcpy(a4, v14, v5);
  }

  v17 = 0;
LABEL_26:
  free(v14);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  return v17;
}

size_t sub_1000E3E68(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_1000E3E90(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

unsigned __int16 *sub_1000E3EB8(uint64_t a1, uint64_t a2, __int16 a3, int a4, int a5, const char *a6, ...)
{
  va_start(va, a6);
  bzero(__str, 0x400uLL);
  v10 = ((a3 & 0x3FFF) << 10) | (a4 << 24);
  if (a5 >= 1)
  {
    v11 = strerror(a5);
    snprintf(__str, 0x400uLL, "%s: ", v11);
  }

  v12 = v10 & 0xFFFFFC00 | a5 & 0x3FF;
  v13 = strlen(__str);
  vsnprintf(&__str[v13], 1024 - v13, a6, va);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000E43D4(__str, v12 | 0x80000000);
  }

  return ParallelCompressionUpdateError((v12 | 0x80000000), __str);
}

_DWORD *sub_1000E3FC4(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  bzero(__s, 0x400uLL);
  v11 = (((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000);
  v12 = strlen(__s);
  vsnprintf(&__s[v12], 1024 - v12, a5, va);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v15 = v11;
    v16 = 2082;
    v17 = __s;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[0x%08x](warning) %{public}s", buf, 0x12u);
  }

  return ParallelCompressionUpdateWarning(v11);
}

void sub_1000E40D8(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  bzero(__s, 0x400uLL);
  v11 = strlen(__s);
  vsnprintf(&__s[v11], 1024 - v11, a5, va);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v13 = ((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000;
    v14 = 2082;
    v15 = __s;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[0x%08x] %{public}s", buf, 0x12u);
  }
}

uint64_t sub_1000E41E0(const char *a1, const char *a2, int a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  bzero(__str, 0x400uLL);
  if (*a1)
  {
    v12 = a1;
    v13 = a1;
    do
    {
      if (v12 > a1 && *(v12 - 1) == 47)
      {
        v13 = v12;
      }
    }

    while (*++v12);
  }

  else
  {
    v13 = a1;
  }

  snprintf(__str, 0x400uLL, "%s:%s:%d: ", v13, a2, a3);
  v15 = strlen(__str);
  vsnprintf(&__str[v15], 1024 - v15, a5, va);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E4460(__str);
  }

  return fputs(__str, __stderrp);
}

uint64_t sub_1000E430C(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = 0;
  *__s = 0u;
  v13 = 0u;
  time(&v11);
  ctime_r(&v11, __s);
  v9 = strlen(__s);
  if (v9)
  {
    __s[v9 - 1] = 0;
  }

  fprintf(__stderrp, "[%s] ", __s);
  return vfprintf(__stderrp, a1, va);
}

void sub_1000E43D4(uint64_t a1, int a2)
{
  v2[0] = 67109378;
  v2[1] = a2;
  v3 = 2082;
  v4 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[0x%08x] %{public}s", v2, 0x12u);
}

void sub_1000E4460(uint64_t a1)
{
  v1 = 136446210;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%{public}s", &v1, 0xCu);
}

uint64_t sub_1000E44E0(void *a1, void *__src, rsize_t __smax)
{
  *a1 = 0;
  if ((__smax & 0x8000000000000000) != 0)
  {
LABEL_21:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithEncodedData", 22, 105, 0, "malloc");
    return 0xFFFFFFFFLL;
  }

  v6 = a1[1];
  if (v6 < __smax)
  {
    do
    {
      while (!v6)
      {
        v6 = 0x4000;
        if (__smax <= 0x4000)
        {
          v6 = 0x4000;
          goto LABEL_12;
        }
      }

      v7 = v6 >> 1;
      if ((v6 & (v6 >> 1)) != 0)
      {
        v7 = v6 & (v6 >> 1);
      }

      v6 += v7;
    }

    while (v6 < __smax);
    if (v6 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_20;
    }

LABEL_12:
    v8 = a1[2];
    v9 = realloc(v8, v6);
    if (v9)
    {
      a1[1] = v6;
      a1[2] = v9;
      goto LABEL_14;
    }

    free(v8);
LABEL_20:
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    goto LABEL_21;
  }

LABEL_14:
  v10 = a1[2];
  if (__src)
  {
    memcpy((v10 + *a1), __src, __smax);
  }

  else if (v10)
  {
    memset_s((v10 + *a1), __smax, 0, __smax);
  }

  result = 0;
  *a1 += __smax;
  return result;
}

uint64_t sub_1000E4624(void *a1, int a2, char *a3, const char *a4)
{
  if ((sub_1000F4680(v11, 0x800uLL, a3, a4) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithPath", 34, 105, 0, "invalid path %s/%s");
    return 0xFFFFFFFFLL;
  }

  v6 = open(v11, 0);
  if ((v6 & 0x80000000) != 0)
  {
    v9 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithPath", 38, 105, v9, "open: %s");
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if ((aaEntryYECBlobInitWithFD(a1, a2, v6) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithPath", 40, 105, 0, "computing YEC blob: %s", v11);
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  close(v7);
  return v8;
}

uint64_t aaEntryYECBlobInitWithFD(void *a1, int a2, uint64_t a3)
{
  if (a2 == 65552)
  {
    v3 = a3;
    memset(&v21, 0, sizeof(v21));
    if (!fstat(a3, &v21) && (v21.st_mode & 0xF000) == 0x8000)
    {
      st_size = v21.st_size;
      v6 = sub_1000FE0F8(v3, 0, v21.st_size);
      if (v6)
      {
        v7 = sub_10011CA50(1, 0x4000u, st_size);
        if (v7)
        {
          v8 = sub_100120834(0x10000uLL);
          v9 = v8;
          if (v8)
          {
            v10 = sub_100120FD4(v8, st_size, sub_1000FE21C, v6, sub_10011CCD0, v7);
            if ((v10 & 0x8000000000000000) == 0 && v10 == st_size)
            {
              v11 = sub_10011CCB8(v7);
              v12 = sub_10011CCA0(v7);
              *a1 = 0;
              if ((v11 & 0x8000000000000000) != 0)
              {
LABEL_41:
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 89, 105, 0, "alloc blob failed");
                return 0xFFFFFFFFLL;
              }

              v13 = v12;
              v14 = a1[1];
              if (v14 < v11)
              {
                do
                {
                  while (!v14)
                  {
                    v14 = 0x4000;
                    if (v11 <= 0x4000)
                    {
                      v14 = 0x4000;
                      goto LABEL_32;
                    }
                  }

                  v15 = v14 >> 1;
                  if ((v14 & (v14 >> 1)) != 0)
                  {
                    v15 = v14 & (v14 >> 1);
                  }

                  v14 += v15;
                }

                while (v14 < v11);
                if (v14 >= 0x2000000001)
                {
                  *__error() = 12;
                  goto LABEL_40;
                }

LABEL_32:
                v18 = a1[2];
                v19 = realloc(v18, v14);
                if (v19)
                {
                  a1[1] = v14;
                  a1[2] = v19;
                  goto LABEL_34;
                }

                free(v18);
LABEL_40:
                a1[1] = 0;
                a1[2] = 0;
                *a1 = 0;
                goto LABEL_41;
              }

LABEL_34:
              v20 = a1[2];
              if (v13)
              {
                memcpy((v20 + *a1), v13, v11);
              }

              else if (v20)
              {
                memset_s((v20 + *a1), v11, 0, v11);
              }

              v16 = 0;
              *a1 += v11;
LABEL_22:
              sub_1000FE0A0(v6);
              sub_10011CC54(v7);
              sub_100120944(v9);
              return v16;
            }

            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 84, 105, 0, "reading file data for ECC");
          }

          else
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 80, 105, 0, "allocating mem buffer");
          }

LABEL_21:
          v16 = 0xFFFFFFFFLL;
          goto LABEL_22;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 78, 105, 0, "creating the ECC stream");
      }

      else
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 76, 105, 0, "opening file");
        v7 = 0;
      }

      v9 = 0;
      goto LABEL_21;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 71, 105, 0, "entry not found, or not a regular file");
    v7 = 0;
    v9 = 0;
    v6 = 0;
    goto LABEL_21;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "aaEntryYECBlobInitWithFD", 57, 105, 0, "invalid YEC variant: %u");
  return 0xFFFFFFFFLL;
}

void *AAEntryYECBlobCreate()
{
  v0 = malloc(0x18uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x18uLL, 0, 0x18uLL);
  }

  else
  {
    v2 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobCreate", 105, 105, *v2, "malloc");
  }

  return v1;
}

void AAEntryYECBlobDestroy(void **a1)
{
  if (a1)
  {
    free(a1[2]);
    memset_s(a1, 0x18uLL, 0, 0x18uLL);

    free(a1);
  }
}

void **AAEntryYECBlobCreateWithEncodedData(void *a1, rsize_t a2)
{
  v4 = AAEntryYECBlobCreate();
  v5 = v4;
  if (v4 && (sub_1000E44E0(v4, a1, a2) & 0x80000000) != 0)
  {
    AAEntryYECBlobDestroy(v5);
    return 0;
  }

  return v5;
}

void **AAEntryYECBlobCreateWithPath(int a1, char *a2, const char *a3)
{
  v6 = AAEntryYECBlobCreate();
  v7 = v6;
  if (v6 && (sub_1000E4624(v6, a1, a2, a3) & 0x80000000) != 0)
  {
    AAEntryYECBlobDestroy(v7);
    return 0;
  }

  return v7;
}

uint64_t AAEntryYECBlobApplyToPath(uint64_t a1, char *__s, const char *a3, int *a4, uint64_t a5, int a6)
{
  memset(&v25, 0, sizeof(v25));
  __sa[0] = 0;
  __sa[1] = 0;
  v24 = 0;
  if ((sub_1000F4680(v26, 0x800uLL, __s, a3) & 0x80000000) != 0)
  {
    v21 = __s;
    v22 = a3;
    v17 = "invalid path %s/%s";
    v18 = 153;
    goto LABEL_12;
  }

  if (lstat(v26, &v25) || (v25.st_mode & 0xF000) != 0x8000)
  {
    v21 = v26;
    v17 = "entry not found, or not a regular file: %s";
    v18 = 156;
LABEL_12:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", v18, 105, 0, v17, v21, v22);
    goto LABEL_13;
  }

  st_size = v25.st_size;
  memset_s(__sa, 0x18uLL, 0, 0x18uLL);
  HIDWORD(__sa[0]) = a6;
  v12 = open(v26, 2);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = v12;
    v14 = ParallelArchiveECCFixFileSegment(v12, 0, st_size, *(a1 + 16), *a1, __sa);
    v15 = HIDWORD(v24);
    if (v14 < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", 166, 105, 0, "file can't be fixed: %s");
    }

    else
    {
      if (!v14 || !sub_1000F5A84(v25.st_flags) || (ParallelCompressionAFSCCompress(v26, 1) & 0x80000000) == 0)
      {
        v16 = 0;
        goto LABEL_19;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", 171, 105, 0, "file can't be re-compressed: %s");
    }

    v16 = 0xFFFFFFFFLL;
LABEL_19:
    close(v13);
    if (!a4)
    {
      return v16;
    }

    goto LABEL_14;
  }

  v20 = *__error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldYEC.c", "AAEntryYECBlobApplyToPath", 163, 105, v20, "opening file RW: %s");
LABEL_13:
  v16 = 0xFFFFFFFFLL;
  v15 = -1;
  if (a4)
  {
LABEL_14:
    *a4 = v15;
  }

  return v16;
}

AAFieldKeySet AAFieldKeySetCreate(void)
{
  v0 = malloc(0x10uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x10uLL, 0, 0x10uLL);
  }

  else
  {
    v2 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreate", 63, 103, *v2, "malloc");
  }

  return v1;
}

AAFieldKeySet AAFieldKeySetCreateWithString(const char *s)
{
  v2 = AAFieldKeySetCreate();
  if (!v2)
  {
    goto LABEL_43;
  }

  v3 = strlen(s) + 1;
  if ((v3 & 3) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 73, 103, 0, "Invalid KeySet string length: %zu");
    return 0;
  }

  if (v3 >= 0x3FFFFFFFDLL)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 75, 103, 0, "String too long: %zu");
    return 0;
  }

  v4 = v3 >> 2;
  if (((v3 >> 2) & 0x80000000) != 0)
  {
LABEL_42:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 77, 103, 0, "realloc_keys");
LABEL_43:
    AAFieldKeySetDestroy(v2);
    return 0;
  }

  v5 = *(v2 + 1);
  if (v5 < v4)
  {
    do
    {
      if (v5)
      {
        v5 += v5 >> 1;
      }

      else
      {
        v5 = 16;
      }
    }

    while (v5 < v4);
    v6 = *(v2 + 1);
    v7 = realloc(v6, 4 * v5);
    if (v7)
    {
      v8 = v7;
      *(v2 + 1) = v7;
      *(v2 + 1) = v5;
      goto LABEL_15;
    }

    free(v6);
    *(v2 + 1) = 0;
    v19 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v19, "malloc");
    *v2 = 0;
    goto LABEL_42;
  }

  v8 = *(v2 + 1);
LABEL_15:
  memcpy(v8, s, v3);
  if (v3)
  {
    v9 = v3;
    do
    {
      *v8 = __toupper(*v8);
      ++v8;
      --v9;
    }

    while (v9);
    *v2 = v4;
    v10 = 0;
    if (v4 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v4;
    }

    while (1)
    {
      v12 = *(v2 + 1) + v10;
      if (*(v12 + 3))
      {
        if (*(v12 + 3) != 44)
        {
          break;
        }
      }

      *(v12 + 3) = 0;
      v13 = *(*(v2 + 1) + v10);
      if (v13 > 0x7F)
      {
        v14 = __maskrune(v13, 0x500uLL);
      }

      else
      {
        v14 = _DefaultRuneLocale.__runetype[v13] & 0x500;
      }

      if (!v14 || ((v15 = v13 >> 8, v15 > 0x7F) ? (v16 = __maskrune(v15, 0x500uLL)) : (v16 = _DefaultRuneLocale.__runetype[v15] & 0x500), !v16 || ((v17 = (v13 << 8) >> 24, v17 > 0x7F) ? (v18 = __maskrune(v17, 0x500uLL)) : (v18 = _DefaultRuneLocale.__runetype[v17] & 0x500), HIBYTE(v13) || !v18)))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 88, 103, 0, "invalid key set: %s");
        goto LABEL_43;
      }

      v10 += 4;
      if (!--v11)
      {
        goto LABEL_39;
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetCreateWithString", 86, 103, 0, "invalid key set: %s");
    goto LABEL_43;
  }

  *v2 = v4;
LABEL_39:
  qsort(*(v2 + 1), v4, 4uLL, sub_1000E5240);
  return v2;
}

void AAFieldKeySetDestroy(AAFieldKeySet key_set)
{
  if (key_set)
  {
    free(*(key_set + 1));

    free(key_set);
  }
}

AAFieldKeySet AAFieldKeySetClone(AAFieldKeySet key_set)
{
  v2 = AAFieldKeySetCreate();
  v3 = v2;
  if (!v2)
  {
    goto LABEL_15;
  }

  v4 = *key_set;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      v5 = *(v2 + 1);
      if (v5 >= v4)
      {
        v7 = *(v2 + 1);
        goto LABEL_12;
      }

      do
      {
        if (v5)
        {
          v5 += v5 >> 1;
        }

        else
        {
          v5 = 16;
        }
      }

      while (v5 < v4);
      v6 = *(v2 + 1);
      v7 = realloc(v6, 4 * v5);
      if (v7)
      {
        *(v3 + 1) = v7;
        *(v3 + 1) = v5;
LABEL_12:
        *v3 = v4;
        memcpy(v7, *(key_set + 1), 4 * v4);
        return v3;
      }

      free(v6);
      *(v3 + 1) = 0;
      v8 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v8, "malloc");
      *v3 = 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetClone", 106, 103, 0, "realloc_keys");
LABEL_15:
    AAFieldKeySetDestroy(v3);
    return 0;
  }

  return v3;
}

int AAFieldKeySetContainsKey(AAFieldKeySet key_set, AAFieldKey key)
{
  v3 = 0;
  v10 = key;
  v11 = 0;
  do
  {
    *(&v11 + v3) = __toupper(v10.skey[v3]);
    ++v3;
  }

  while (v3 != 3);
  v4 = *key_set;
  if (*key_set && (v5 = *(key_set + 1), *v5 < v11))
  {
    v6 = v4 - 1;
    v7 = v5[v4 - 1];
    if (v7 < v11)
    {
      return 0;
    }

    if (v4 < 3)
    {
      return v7 == v11;
    }

    v8 = 0;
    do
    {
      if (v5[(v8 + v6) >> 1] >= v11)
      {
        v6 = (v8 + v6) >> 1;
      }

      else
      {
        v8 = (v8 + v6) >> 1;
      }
    }

    while (v6 - v8 > 1);
  }

  else
  {
    v6 = 0;
  }

  if (v6 < v4)
  {
    v7 = *(*(key_set + 1) + 4 * v6);
    return v7 == v11;
  }

  return 0;
}

int AAFieldKeySetInsertKey(AAFieldKeySet key_set, AAFieldKey key)
{
  v3 = 0;
  v17 = key;
  v18 = 0;
  do
  {
    *(&v18 + v3) = __toupper(v17.skey[v3]);
    ++v3;
  }

  while (v3 != 3);
  v4 = *key_set;
  v5 = *key_set + 1;
  if (v5 < 0)
  {
    goto LABEL_21;
  }

  v6 = v18;
  v7 = *(key_set + 1);
  if (v7 < v5)
  {
    do
    {
      if (v7)
      {
        v7 += v7 >> 1;
      }

      else
      {
        v7 = 16;
      }
    }

    while (v7 < v5);
    v8 = *(key_set + 1);
    v9 = realloc(v8, 4 * v7);
    if (v9)
    {
      *(key_set + 1) = v9;
      *(key_set + 1) = v7;
      v4 = *key_set;
      goto LABEL_11;
    }

    free(v8);
    *(key_set + 1) = 0;
    v15 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v15, "malloc");
    *key_set = 0;
LABEL_21:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetInsertKey", 139, 103, 0, "realloc_keys failed");
    return -1;
  }

LABEL_11:
  if (!v4 || (v10 = *(key_set + 1), *v10 >= v6))
  {
    v11 = 0;
    goto LABEL_16;
  }

  v11 = v4 - 1;
  v12 = v10[v4 - 1];
  if (v12 >= v6)
  {
    if (v4 < 3)
    {
      v13 = v11;
      goto LABEL_18;
    }

    v16 = 0;
    do
    {
      if (v10[(v16 + v11) >> 1] >= v6)
      {
        v11 = (v16 + v11) >> 1;
      }

      else
      {
        v16 = (v16 + v11) >> 1;
      }
    }

    while (v11 - v16 > 1);
LABEL_16:
    if (v11 >= v4)
    {
      goto LABEL_23;
    }

    v10 = *(key_set + 1);
    v13 = v11;
    v12 = v10[v11];
LABEL_18:
    if (v12 == v6)
    {
      return 0;
    }

    memmove(&v10[v13 + 1], &v10[v13], 4 * (v4 - v11));
    goto LABEL_23;
  }

  v11 = v4;
LABEL_23:
  result = 0;
  *(*(key_set + 1) + 4 * v11) = v6;
  ++*key_set;
  return result;
}

int AAFieldKeySetRemoveKey(AAFieldKeySet key_set, AAFieldKey key)
{
  v3 = 0;
  v14 = key;
  v15 = 0;
  do
  {
    *(&v15 + v3) = __toupper(v14.skey[v3]);
    ++v3;
  }

  while (v3 != 3);
  v4 = *key_set;
  if (!v4 || (v5 = *(key_set + 1), *v5 >= v15))
  {
    v6 = 0;
LABEL_14:
    if (v6 == v4)
    {
      return 0;
    }

    v5 = *(key_set + 1);
    v9 = v6;
    v7 = v5[v6];
    goto LABEL_16;
  }

  v6 = v4 - 1;
  v7 = v5[v4 - 1];
  if (v7 < v15)
  {
    return 0;
  }

  if (v4 >= 3)
  {
    v8 = 0;
    do
    {
      if (v5[(v8 + v6) >> 1] >= v15)
      {
        v6 = (v8 + v6) >> 1;
      }

      else
      {
        v8 = (v8 + v6) >> 1;
      }
    }

    while (v6 - v8 > 1);
    goto LABEL_14;
  }

  v9 = v4 - 1;
LABEL_16:
  if (v7 == v15)
  {
    v10 = v4 - 1;
    *key_set = v10;
    v11 = __OFSUB__(v10, v6);
    v12 = v10 - v6;
    if (!((v12 < 0) ^ v11 | (v12 == 0)))
    {
      memmove(&v5[v9], &v5[v9 + 1], 4 * v12);
    }
  }

  return 0;
}

int AAFieldKeySetInsertKeySet(AAFieldKeySet key_set, AAFieldKeySet s)
{
  v2 = *s;
  if (v2)
  {
    v4 = *(s + 1);
    v5 = *key_set;
    v6 = *(key_set + 1);
    *key_set = 0;
    *(key_set + 1) = 0;
    v7 = v5 + v2;
    if (v5 + v2 >= 0)
    {
      if (!v7)
      {
LABEL_11:
        if (v5)
        {
          v10 = 0;
          v11 = 0;
          v12 = 0;
          while (1)
          {
            v13 = v6[v12];
            v14 = *(v4 + 4 * v11);
            if (v13 == v14)
            {
              *(*(key_set + 1) + 4 * v10) = v13;
              ++v12;
            }

            else
            {
              v15 = *(key_set + 1);
              if (v13 < v14)
              {
                *(v15 + 4 * v10) = v13;
                ++v12;
                goto LABEL_19;
              }

              *(v15 + 4 * v10) = v14;
            }

            ++v11;
LABEL_19:
            ++v10;
            if (v12 >= v5 || v11 >= v2)
            {
              goto LABEL_23;
            }
          }
        }

        v12 = 0;
        v11 = 0;
        v10 = 0;
LABEL_23:
        if (v12 >= v5)
        {
          v18 = v10;
        }

        else
        {
          v16 = &v6[v12];
          v17 = v5 - v12;
          do
          {
            v18 = v10 + 1;
            v19 = *v16++;
            *(*(key_set + 1) + 4 * v10++) = v19;
            --v17;
          }

          while (v17);
        }

        if (v11 >= v2)
        {
          v22 = v18;
        }

        else
        {
          v20 = (v4 + 4 * v11);
          v21 = v2 - v11;
          do
          {
            v22 = v18 + 1;
            v23 = *v20++;
            *(*(key_set + 1) + 4 * v18++) = v23;
            --v21;
          }

          while (v21);
        }

        LODWORD(v2) = 0;
        *key_set = v22;
        goto LABEL_36;
      }

      v8 = 0;
      do
      {
        if (v8)
        {
          v8 += v8 >> 1;
        }

        else
        {
          v8 = 16;
        }
      }

      while (v8 < v7);
      v9 = malloc(4 * v8);
      if (v9)
      {
        *(key_set + 1) = v9;
        *(key_set + 1) = v8;
        goto LABEL_11;
      }

      *(key_set + 1) = 0;
      v24 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "realloc_keys", 17, 103, *v24, "malloc");
      *key_set = 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldKeys.c", "AAFieldKeySetInsertKeySet", 178, 103, 0, "realloc_keys");
    LODWORD(v2) = -1;
LABEL_36:
    free(v6);
  }

  return v2;
}

int AAFieldKeySetRemoveKeySet(AAFieldKeySet key_set, AAFieldKeySet s)
{
  v2 = *s;
  if (v2)
  {
    v3 = *key_set;
    v4 = *(key_set + 1);
    if (v3)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = *(s + 1);
      while (1)
      {
        v9 = *(v4 + 4 * v7);
        v10 = *(v8 + 4 * v6);
        if (v9 == v10)
        {
          ++v7;
        }

        else if (v9 < v10)
        {
          *(*(key_set + 1) + 4 * v5++) = v9;
          ++v7;
          goto LABEL_9;
        }

        ++v6;
LABEL_9:
        if (v7 >= v3 || v6 >= v2)
        {
          goto LABEL_13;
        }
      }
    }

    v7 = 0;
    v5 = 0;
LABEL_13:
    if (v7 >= v3)
    {
      v13 = v5;
    }

    else
    {
      v11 = (v4 + 4 * v7);
      v12 = v3 - v7;
      do
      {
        v13 = v5 + 1;
        v14 = *v11++;
        *(*(key_set + 1) + 4 * v5++) = v14;
        --v12;
      }

      while (v12);
    }

    *key_set = v13;
  }

  return 0;
}

int AAFieldKeySetSelectKeySet(AAFieldKeySet key_set, AAFieldKeySet s)
{
  v2 = *s;
  if (v2 && (v3 = *key_set, v3))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(s + 1);
    v8 = *(key_set + 1);
    do
    {
      v9 = *(v8 + 4 * v6);
      v10 = *(v7 + 4 * v5);
      if (v9 == v10)
      {
        *(*(key_set + 1) + 4 * v4++) = v9;
        ++v6;
        ++v5;
      }

      else if (v9 >= v10)
      {
        ++v5;
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < v3 && v5 < v2);
  }

  else
  {
    v4 = 0;
  }

  *key_set = v4;
  return 0;
}

int AAFieldKeySetSerialize(AAFieldKeySet key_set, size_t capacity, char *s)
{
  v3 = *key_set;
  if (v3)
  {
    if (capacity >= 4 * v3)
    {
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = s;
        do
        {
          *v5 = *(*(key_set + 1) + 4 * v4);
          if (v4)
          {
            *(v5 - 1) = 44;
          }

          ++v4;
          v5 += 4;
        }

        while (v4 < *key_set);
        LODWORD(v3) = *key_set;
      }

      s += (4 * v3 - 1);
      goto LABEL_11;
    }
  }

  else if (capacity)
  {
LABEL_11:
    result = 0;
    *s = 0;
    return result;
  }

  return -1;
}

uint64_t AEADecryptAndExtractChunk(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unsigned int a11)
{
  v19[3] = a6;
  v20 = 0;
  v19[0] = a2;
  v19[1] = a5;
  v19[2] = a7;
  v21 = a10 >> 62;
  ChunkAsyncStreamOpen = AEADecryptAndExtractChunkAsyncStreamOpen(a3, a4, v19, sub_1000E5D3C, sub_1000E6018, sub_1000E6030, a8, a9, a10, a11);
  v13 = ChunkAsyncStreamOpen;
  if (!ChunkAsyncStreamOpen)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", 96, 117, 0, "AEADecryptAndExtractAsyncStreamOpen");
LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  if (!a1[10])
  {
    if ((AAAsyncByteStreamProcessAllRanges(ChunkAsyncStreamOpen, a1, a10, a11) & 0x8000000000000000) == 0)
    {
      v15 = 1;
      goto LABEL_19;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", 124, 117, 0, "AAAsyncByteStreamProcessAllRanges");
    goto LABEL_18;
  }

  while (1)
  {
    v17 = 0;
    v18 = 0;
    Range = AAAsyncByteStreamGetRange(v13, &v18, &v17);
    if (Range < 0)
    {
      break;
    }

    if (Range)
    {
      if (!v18)
      {
        v15 = 1;
        goto LABEL_16;
      }

      if ((AAByteStreamPReadAsync(a1) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", 113, 117, 0, "AAByteStreamPReadAsync");
        goto LABEL_15;
      }
    }

    else
    {
      usleep(0x186A0u);
    }
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", 108, 117, 0, "AAAsyncByteStreamGetRange");
LABEL_15:
  v15 = 0;
LABEL_16:
  if ((AAByteStreamPReadAsync(a1) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", 118, 117, 0, "AAByteStreamPReadAsync barrier");
    goto LABEL_18;
  }

LABEL_19:
  if ((AAAsyncByteStreamClose(v13) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptAndExtract.c", "AEADecryptAndExtractChunk", 128, 117, 0, "AAAsyncByteStreamClose");
    v15 = 0;
  }

  if (v15)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000E5D3C(uint64_t result, _OWORD *context)
{
  v3 = result;
  v4 = *result;
  if (*(result + 32))
  {
    *v4 = *context;
    v5 = context[1];
    v6 = context[2];
    v7 = context[3];
    *(v4 + 64) = *(context + 8);
    *(v4 + 32) = v6;
    *(v4 + 48) = v7;
    *(v4 + 16) = v5;
    if (*(result + 36))
    {
      v8 = __stderrp;
      FieldUInt = AEAContextGetFieldUInt(context, 3u);
      if (FieldUInt <= 1284)
      {
        switch(FieldUInt)
        {
          case 0:
            v14 = "none";
            goto LABEL_25;
          case 256:
            v14 = "lz4";
            goto LABEL_25;
          case 774:
            v14 = "lzma";
LABEL_25:
            v15 = AEAContextGetFieldUInt(context, 4u);
            fprintf(v8, "  compression: %s %zu MB\n", v14, v15 >> 20);
            v16 = __stderrp;
            v17 = AEAContextGetFieldUInt(context, 2u);
            if (v17 > 2)
            {
              v18 = "???";
            }

            else
            {
              v18 = off_1004835E0[v17 & 3];
            }

            fprintf(v16, "  checksum: %s\n", v18);
            v19 = __stderrp;
            v20 = AEAContextGetFieldUInt(context, 0xEu);
            fprintf(v19, "  container size: %llu B\n", v20);
            v21 = __stderrp;
            v22 = AEAContextGetFieldUInt(context, 0xDu);
            fprintf(v21, "  raw size: %llu B\n", v22);
            return 0;
        }
      }

      else
      {
        if (FieldUInt <= 2048)
        {
          if (FieldUInt == 1285)
          {
            v14 = "zlib";
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
          v14 = "lzfse";
          goto LABEL_25;
        }

        if (FieldUInt == 2304)
        {
          v14 = "lzvn";
          goto LABEL_25;
        }
      }

LABEL_22:
      v14 = "???";
      goto LABEL_25;
    }

    return 0;
  }

  v10 = *(v4 + 1112);
  if (v10 < 0x101)
  {
    memcpy(context + 1116, (v4 + 1116), *(v4 + 1112));
    *(context + 278) = v10;
    result = memset_s(context + v10 + 1116, 256 - v10, 0, 256 - v10);
    v11 = *(*v3 + 72);
    if (v11 < 0x101)
    {
      memcpy(context + 76, (*v3 + 76), *(*v3 + 72));
      *(context + 18) = v11;
      result = memset_s(context + v11 + 76, 256 - v11, 0, 256 - v11);
      v12 = *(*v3 + 2152);
      if (v12 < 0x101)
      {
        memcpy(context + 2156, (*v3 + 2156), *(*v3 + 2152));
        *(context + 538) = v12;
        result = memset_s(context + v12 + 2156, 256 - v12, 0, 256 - v12);
        v13 = *(*v3 + 332);
        if (v13 < 0x101)
        {
          memcpy(context + 21, (*v3 + 336), *(*v3 + 332));
          *(context + 83) = v13;
          memset_s(context + v13 + 336, 256 - v13, 0, 256 - v13);
          v3[8] = 1;
          return 0;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E6018(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return v1(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E6030(uint64_t a1)
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

uint64_t sub_1000E6078(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 0x1FFE0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = (a1 & 1) + a1;
  if (v4)
  {
    v5 = 0uLL;
    v6 = vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_10037C120), vceqzq_s32(qword_10037C130)));
    v7 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_10037C100), vceqzq_s32(unk_10037C110))));
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
      v21 = vextq_s8(qword_10037C130, v5, 0xCuLL);
      v21.i32[0] = v16;
      v22 = vmulq_laneq_s32(xmmword_10037C100, v14, 3);
      v23 = vmulq_laneq_s32(unk_10037C110, v14, 3);
      v24 = vmulq_laneq_s32(xmmword_10037C120, v14, 3);
      v25 = vmulq_laneq_s32(qword_10037C130, v14, 3);
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

uint64_t sub_1000E6324(unsigned int a1, uint64_t a2, uint16x8_t *a3, _DWORD *a4)
{
  v7 = 0uLL;
  v8 = (a1 & 1) + a1;
  if (v8)
  {
    v9 = 0uLL;
    v10 = vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_10037C120), vceqzq_s32(qword_10037C130)));
    v11 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_10037C100), vceqzq_s32(unk_10037C110))));
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
      v27 = vmulq_laneq_s32(xmmword_10037C100, v19, 3);
      v28 = vmulq_laneq_s32(unk_10037C110, v19, 3);
      v29 = vmulq_laneq_s32(xmmword_10037C120, v19, 3);
      v30 = vmulq_laneq_s32(qword_10037C130, v19, 3);
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
  v45 = xmmword_10037C0E0;
  v46 = vdupq_n_s32(a3[2].u16[0]);
  v47 = xmmword_10037C0F0;
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection_ECC65537.c", "ECC65537CheckAndFix", 423, 63, *v105, "malloc");
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
    v62[v63] = sub_1000E69E8(0x10u, v110, v65);
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
  v73 = sub_1000E6A68(8u, 9, (v62 + 48));
  if (v73 < 1)
  {
    goto LABEL_84;
  }

  LODWORD(v74) = v73;
  if ((sub_1000E6C94(v73, v62 + 48, (v62 + 16)) & 0x80000000) != 0)
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
    if (!sub_1000E69E8(v74 + 1, (v62 + 16), v79) && v76 <= 7)
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
          v84 = sub_1000E6E2C(3);
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
  if (sub_1000E6A68(v74, v74 + 1, (v62 + 48)) == v74)
  {
    v91 = v62 + 40;
    a4 = v107;
    if ((sub_1000E6C94(v74, v62 + 48, (v62 + 40)) & 0x80000000) == 0)
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

uint64_t sub_1000E69E8(unsigned int a1, uint64_t a2, int a3)
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

uint64_t sub_1000E6A68(unsigned int a1, int a2, uint64_t a3)
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

uint64_t sub_1000E6C94(unsigned int a1, int *a2, uint64_t a3)
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

      v22 = sub_1000E6E2C(a2[17 * v11 - 17]);
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

uint64_t sub_1000E6E2C(uint64_t a1)
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

unsigned __int16 *ParallelCompressionEnterThreadErrorContext_0()
{
  v0 = sub_1000E7BB8();
  result = pthread_getspecific(v0);
  if (result)
  {
    ++result[2];
  }

  else
  {
    v2 = calloc(1uLL, 0x2000uLL);
    if (v2)
    {
      v2[2] = 1;
      *(v2 + 18) = 531890176;

      return sub_1000E6FA4(v2);
    }

    else
    {
      v3 = *__error();

      return sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThreadErrorContext", 76, 5, v3, "malloc");
    }
  }

  return result;
}

unsigned __int16 *sub_1000E6FA4(const void *a1)
{
  v2 = sub_1000E7BB8();
  result = pthread_setspecific(v2, a1);
  if (result)
  {
    v4 = *__error();

    return sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "setThreadErrorContext", 65, 5, v4, "pthread_setspecific");
  }

  return result;
}

uint64_t ParallelCompressionLeaveThreadErrorContext_0(__CFError **a1, const __CFString **a2, int a3)
{
  v6 = sub_1000E7BB8();
  v7 = pthread_getspecific(v6);
  if (v7)
  {
    v8 = v7;
    v9 = v7[2] - 1;
    v7[2] = v9;
    if (!v9)
    {
      v11 = v7[36];
      v10 = *v7;
      if (!v7[36] && (v10 & 0x80000000) == 0)
      {
        if (!v7[3] || !a2 && !a3)
        {
          goto LABEL_46;
        }

        bzero(userInfoKeys, 0x400uLL);
        v26 = 0;
        do
        {
          v27 = strlen(userInfoKeys);
          if (v27 + 20 > 0x3FF)
          {
            break;
          }

          if (v27)
          {
            snprintf(userInfoKeys + v27, 1024 - v27, ",0x%08x");
          }

          else
          {
            snprintf(userInfoKeys, 0x400uLL, "Warnings:0x%08x");
          }

          ++v26;
        }

        while (v26 < v8[3]);
        v28 = CFStringCreateWithCString(kCFAllocatorDefault, userInfoKeys, 0x600u);
        if (!v28)
        {
          goto LABEL_46;
        }

        v29 = v28;
        if (a2)
        {
          *a2 = v28;
          goto LABEL_46;
        }

        Length = CFStringGetLength(v28);
        v37 = calloc(1uLL, Length + 1);
        if (v37)
        {
          v38 = v37;
          CFStringGetCString(v29, v37, Length + 1, 0x600u);
          fprintf(__stderrp, "%s\n", v38);
          free(v38);
        }

        v35 = v29;
LABEL_45:
        CFRelease(v35);
        goto LABEL_46;
      }

      if (!a1 && !a3)
      {
        goto LABEL_46;
      }

      v12 = calloc(v11 + 32, 1uLL);
      if (!v12)
      {
        goto LABEL_46;
      }

      v13 = v12;
      v14 = v12;
      if ((v10 & 0x80000000) != 0)
      {
        snprintf(v12, v11 + 32, "Error 0x%08x\n", v10);
        v14 = &v13[strlen(v13)];
      }

      v15 = v8[36];
      if (v8[36])
      {
        v16 = 0;
        do
        {
          v17 = (v8 + v16 + 76);
          v18 = *v17;
          v19 = v18 + v16;
          if (v18 < 4 || v19 > v15)
          {
            break;
          }

          v21 = v18 - 3;
          memcpy(v14, v17 + 1, v21);
          v22 = &v14[v21];
          *v22 = 10;
          v14 = v22 + 1;
          v16 = v19;
          v15 = v8[36];
        }

        while (v15 > v19);
      }

      if (v14 > v13)
      {
        *(v14 - 1) = 0;
      }

      v23 = CFStringCreateWithCString(kCFAllocatorDefault, v13, 0x600u);
      if (!v23)
      {
        free(v13);
        goto LABEL_46;
      }

      v24 = v23;
      userInfoKeys[0] = kCFErrorLocalizedDescriptionKey;
      userInfoValues = v23;
      v25 = CFErrorCreateWithUserInfoKeysAndValues(kCFAllocatorDefault, @"com.apple.ParallelCompression", 1, userInfoKeys, &userInfoValues, 1);
      CFRelease(v24);
      free(v13);
      if (v25)
      {
        if (!a1)
        {
          v30 = CFErrorCopyDescription(v25);
          if (v30)
          {
            v31 = v30;
            v32 = CFStringGetLength(v30);
            v33 = calloc(1uLL, v32 + 1);
            if (v33)
            {
              v34 = v33;
              CFStringGetCString(v31, v33, v32 + 1, 0x600u);
              fprintf(__stderrp, "%s\n", v34);
              free(v34);
            }

            CFRelease(v31);
          }

          v35 = v25;
          goto LABEL_45;
        }

        *a1 = v25;
      }

LABEL_46:
      sub_1000E6FA4(0);
      free(v8);
      return v10;
    }
  }

  return 0;
}

unsigned __int16 *sub_1000E73AC(unsigned __int16 *result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result - 8193 >= 0xFFFFFFFFFFFFE000)
    {
      v2 = result;
      v3 = sub_1000E7BB8();
      result = pthread_getspecific(v3);
      if (result)
      {
        v4 = result;
        v5 = v2 + 3;
        v6 = result[36];
        if (v6 + (v2 + 3) <= result[37])
        {
          v7 = result + v6;
          *(v7 + 76) = v5;
          v8 = v7 + 78;
          result = memcpy((v7 + 78), v1, v2);
          *(v8 + v2) = 0;
          *(v4 + 72) += v5;
        }
      }
    }
  }

  return result;
}

_WORD *sub_1000E7450(_WORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    v2 = sub_1000E7BB8();
    result = pthread_getspecific(v2);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        *result = v1;
        result[3] = 0;
      }
    }
  }

  return result;
}

_DWORD *sub_1000E7498(_DWORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    v2 = sub_1000E7BB8();
    result = pthread_getspecific(v2);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        v3 = *(result + 3);
        if (v3 <= 0xF)
        {
          result[v3 + 2] = v1;
          *(result + 3) = v3 + 1;
        }
      }
    }
  }

  return result;
}

unsigned __int16 *sub_1000E74F4(void *a1)
{
  v2 = sub_1000E7BB8();
  result = pthread_getspecific(v2);
  if (result)
  {
    v4 = result;
    bzero(a1, 0x2000uLL);
    v5 = v4[36];
    if (v5 <= 0x1FB4)
    {
      v6 = v5 + 76;
    }

    else
    {
      v6 = 0;
    }

    return memcpy(a1, v4, v6);
  }

  return result;
}

unsigned __int16 *sub_1000E7568(__int128 *a1)
{
  v2 = sub_1000E7BB8();
  result = pthread_getspecific(v2);
  if (result)
  {
    v4 = a1[1];
    v12 = *a1;
    v13 = v4;
    v5 = a1[3];
    v14 = a1[2];
    *v15 = v5;
    *&v15[12] = *(a1 + 60);
    if ((v12 & 0x80000000) == 0)
    {
      v6 = WORD3(v12);
      if ((*result & 0x80000000) != 0 && WORD3(v12) <= 0xFu)
      {
        v6 = WORD3(v12) + 1;
        *(&v12 + WORD3(v12) + 2) = *result;
      }

      v7 = result[3];
      if (result[3] && v6 <= 0xF)
      {
        v8 = 0;
        do
        {
          v9 = *&result[2 * v8 + 4];
          if (v8 >= v6 || *(&v12 + v8 + 2) != v9)
          {
            *(&v12 + v6++ + 2) = v9;
          }

          ++v8;
        }

        while (v8 < v7 && v6 < 0x10);
      }

      WORD3(v12) = v6;
    }

    v10 = *v15;
    *(result + 2) = v14;
    *(result + 3) = v10;
    *(result + 30) = *&v15[12];
    v11 = v13;
    *result = v12;
    *(result + 1) = v11;
    if (*&v15[24] <= 0x1FB4uLL)
    {
      return memcpy(result + 38, a1 + 76, *&v15[24]);
    }
  }

  return result;
}

uint64_t sub_1000E766C(pthread_t *a1, uint64_t a2, uint64_t a3, size_t a4)
{
  *__relative_priority = 0;
  v8 = calloc(1uLL, 0x2000uLL);
  if (!v8)
  {
    v15 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 552, 5, *v15, "malloc");
    return -*__error();
  }

  v9 = v8;
  v10 = calloc(1uLL, 0x40uLL);
  if (!v10)
  {
    v16 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 555, 5, *v16, "malloc");
    v17 = __error();
    v13 = -*v17;
    if (!*v17)
    {
      return v13;
    }

    goto LABEL_9;
  }

  v11 = v10;
  v12 = pthread_attr_init(v10);
  if (v12)
  {
    v13 = v12;
    v14 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 558, 5, v14, "pthread_attr_init");
  }

  else if (a4 && (v20 = pthread_attr_setstacksize(v11, a4), v20))
  {
    v13 = v20;
    v21 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 564, 5, v21, "pthread_attr_setstacksize");
  }

  else
  {
    v22 = pthread_self();
    qos_class_np = pthread_get_qos_class_np(v22, &__relative_priority[1], __relative_priority);
    if (qos_class_np)
    {
      v13 = qos_class_np;
      v24 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 570, 5, v24, "pthread_get_qos_class_np");
    }

    else
    {
      v25 = pthread_attr_set_qos_class_np(v11, __relative_priority[1], __relative_priority[0]);
      if (v25)
      {
        v13 = v25;
        v26 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 572, 5, v26, "pthread_attr_set_qos_class_np");
      }

      else
      {
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 0x40000000;
        v30[2] = sub_1000E797C;
        v30[3] = &unk_1004835F8;
        v30[4] = v9;
        v27 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v30);
        v9[2] = v27;
        if (v27)
        {
          *v9 = a2;
          v9[1] = a3;
          *(v9 + 7) = 1;
          *(v9 + 24) = 530317312;
          v13 = pthread_create(a1, v11, sub_1000E7988, v9);
          if (v13)
          {
            v28 = *__error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 591, 5, v28, "pthread_create");
          }
        }

        else
        {
          v29 = __error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 578, 5, *v29, "dispatch_block_create");
          v13 = -*__error();
        }
      }
    }
  }

  pthread_attr_destroy(v11);
  free(v11);
  if (v13)
  {
LABEL_9:
    v18 = v9[2];
    if (v18)
    {
      _Block_release(v18);
    }

    free(v9);
  }

  return v13;
}

uint64_t sub_1000E7988(uint64_t a1)
{
  sub_1000E6FA4((a1 + 24));
  (*(*(a1 + 16) + 16))();
  sub_1000E6FA4(0);
  return a1;
}

uint64_t sub_1000E79CC(_opaque_pthread_t *a1)
{
  v20 = 0;
  if (pthread_join(a1, &v20))
  {
    sub_1000E7C88();
  }

  v1 = v20;
  if (*(v20 + 14) != 1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 627, 5, 0, "expected ref_count=1 for terminating thread");
    v11 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  v2 = sub_1000E7BB8();
  v3 = pthread_getspecific(v2);
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = v3;
  v5 = *v3;
  if ((*v3 & 0x80000000) == 0)
  {
    v6 = v1[6];
    if (v6 < 0)
    {
      *v3 = v6;
      v5 = v6;
    }
  }

  v7 = *(v1 + 48);
  if (!*(v1 + 48))
  {
LABEL_14:
    if (v5)
    {
      v11 = 0;
      *(v4 + 3) = 0;
      goto LABEL_26;
    }

    if (*(v1 + 15))
    {
      v13 = 0;
      v14 = *(v4 + 3);
      LODWORD(v15) = 16 - v14;
      if (v14 <= 0x10)
      {
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      v16 = &v4[v14 + 2];
      v17 = v14 + 1;
      while (v15 != v13)
      {
        v11 = 0;
        *(v16 + 4 * v13) = v1[v13 + 8];
        *(v4 + 3) = v17 + v13++;
        if (v13 >= *(v1 + 15))
        {
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v11 = 0;
    goto LABEL_26;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = (v1 + v9 + 100);
    v11 = *v10;
    if (!*v10)
    {
      break;
    }

    v8 += v11;
    if (v8 > v7)
    {
      goto LABEL_25;
    }

    v12 = *(v4 + 36);
    if (v12 + v11 <= *(v4 + 37))
    {
      memcpy(v4 + v12 + 76, v10, *v10);
      *(v4 + 36) += v11;
      v9 = v8;
      v7 = *(v1 + 48);
      if (v7 > v8)
      {
        continue;
      }
    }

    v5 = *v4;
    goto LABEL_14;
  }

LABEL_26:
  v18 = *(v1 + 2);
  if (v18)
  {
    _Block_release(v18);
  }

  free(v1);
  return v11;
}

unsigned __int16 *ParallelCompressionUpdateError(_WORD *a1, unsigned __int16 *a2)
{
  sub_1000E7450(a1);

  return sub_1000E73AC(a2);
}

uint64_t sub_1000E7BB8()
{
  if (pthread_once(&stru_1004A9D28, sub_1000E7C20))
  {
    v0 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "getErrorContextKey", 53, 5, *v0, "pthread_once");
  }

  return qword_1004B9FB0;
}

uint64_t sub_1000E7C20()
{
  result = pthread_key_create(&qword_1004B9FB0, 0);
  if (result)
  {
    v1 = *__error();

    return sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createErrorContextKey", 42, 5, v1, "pthread_key_create");
  }

  return result;
}

void sub_1000E7C88()
{
  v0 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 623, 5, *v0, "pthread_join");
  __break(1u);
}

size_t sub_1000E7CC4(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_1000E7CEC(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

void *sub_1000E7D14(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  snprintf(__str, 0x1000uLL, "1 0x%x %u", *v1, v1[1]);
  if (v1[1])
  {
    v2 = strlen(__str);
    v3 = 0;
    v4 = v1 + 10;
    while (1)
    {
      snprintf(&__str[v2], 4096 - v2, " (0x%x %i %i %u %llu %llu %u)", *(v4 - 8), *(v4 - 7), *(v4 - 6), *(v4 - 5), *v4, *(v4 + 1), v4[4]);
      v2 += strlen(&__str[v2]);
      if (v2 + 1 >= 0x1000)
      {
        break;
      }

      v4 += 14;
      if (++v3 >= v1[1])
      {
        goto LABEL_5;
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaCreateArchString", 476, 148, 0, "String overflow");
    return 0;
  }

  else
  {
LABEL_5:
    v5 = strlen(__str);
    v6 = v5 + 1;
    if (v5 + 1 < 0x2000000001)
    {
      v8 = malloc(v5 + 1);
      v7 = v8;
      if (v8)
      {
        memcpy(v8, __str, v6);
      }
    }

    else
    {
      v7 = 0;
      *__error() = 12;
    }
  }

  return v7;
}

uint64_t sub_1000E7EC0(void *a1, const char *a2, unint64_t a3)
{
  bzero(&v69, 0xE08uLL);
  *a1 = 0;
  v6 = open(a2, 0);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    memset(&v72, 0, sizeof(v72));
    v8 = fstat(v6, &v72);
    if (v8)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "AAEntryMCOBlobInitWithFD", 492, 148, 0, "fstat failed");
      goto LABEL_4;
    }

    st_size = v72.st_size;
    v12 = sub_1000E8628(v7, 0, v72.st_size);
    v9 = v12;
    v69 = v12 | 0x100000000;
    if (v12 <= -822415875)
    {
      if (v12 > -889275715)
      {
        if ((v12 + 889275714) < 2)
        {
          goto LABEL_21;
        }

        v13 = -872498498;
      }

      else
      {
        if ((v12 + 1095041334) < 2)
        {
          goto LABEL_21;
        }

        v13 = -1078264118;
      }

      if (v12 != v13)
      {
        goto LABEL_4;
      }

LABEL_21:
      v15 = v12 == -1078264118 || v12 == -889275713;
      v16 = (v12 | 0x1000000) == 0xBFBAFECA || v12 == -1095041333;
      v81 = 0;
      v78 = 0;
      v79 = 0;
      v80 = 0;
      memset(v77, 0, sizeof(v77));
      if (v15)
      {
        v17 = 32;
      }

      else
      {
        v17 = 20;
      }

      if ((sub_1000E8A2C(v7, &v81, 8uLL, 0, st_size) & 0x80000000) == 0)
      {
        v21 = bswap32(HIDWORD(v81));
        if (v16)
        {
          v22 = v21;
        }

        else
        {
          v22 = HIDWORD(v81);
        }

        HIDWORD(v69) = v22;
        if (v22 > 0x40)
        {
          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaParseFatFile", 302, 148, "Too many arches", v18, v19, v20);
          goto LABEL_4;
        }

        v67 = v16;
        v60 = a3;
        v61 = a2;
        v62 = a1;
        if (v22)
        {
          v38 = 0;
          v39 = 0;
          v40 = bswap32(v9);
          v41 = vdup_n_s32(!v67);
          if (v67)
          {
            v42 = v40;
          }

          else
          {
            v42 = v9;
          }

          v65 = v42;
          v64 = 56 * v22;
          v43 = 8;
          v44 = vcltz_s32(vshl_n_s32(v41, 0x1FuLL));
          v45.i64[0] = v41.u32[0];
          v45.i64[1] = v41.u32[1];
          v63 = vcltzq_s64(vshlq_n_s64(v45, 0x3FuLL));
          v66 = v17;
          do
          {
            v76 = 0;
            v74 = 0u;
            v75 = 0u;
            v73 = 0u;
            if (v9 == -889275713 || v9 == -1078264118)
            {
              if ((sub_1000E8A2C(v7, v77, v17, v43, st_size) & 0x80000000) != 0)
              {
                goto LABEL_100;
              }

              *&v70[v38 + 4] = vbsl_s8(v44, v77[0], vrev32_s8(v77[0]));
              v46 = &v71[56 * v39 + 20];
              v47 = vbslq_s8(v63, *v77[1].i8, vrev64q_s8(*v77[1].i8));
            }

            else
            {
              if ((sub_1000E8A2C(v7, &v78, v17, v43, st_size) & 0x80000000) != 0)
              {
LABEL_100:
                a2 = v61;
                a1 = v62;
                a3 = v60;
                v8 = 0;
                goto LABEL_4;
              }

              v48 = v79;
              *&v70[v38 + 4] = vbsl_s8(v44, v78, vrev32_s8(v78));
              v46 = &v71[v38 + 20];
              v49 = vbsl_s8(v44, v48, vrev32_s8(v48));
              v50.i64[0] = v49.u32[0];
              v50.i64[1] = v49.u32[1];
              v47 = v50;
            }

            v51 = v47.i64[0];
            v52 = &v70[v38 - 8];
            *(v52 + 6) = v47.i64[1];
            *v46 = v47.i64[0];
            *&v70[v38] = v65;
            *(v52 + 14) = v67;
            v53 = vaddvq_s64(v47);
            if (v53 <= st_size)
            {
              v54 = v53;
              v55 = sub_1000E8628(v7, v51, v53);
              if (v55 <= -17958195)
              {
                if (v55 != -822415874 && v55 != -805638658)
                {
                  goto LABEL_98;
                }
              }

              else if ((v55 + 17958194) >= 2)
              {
                v56 = v55 == 1918975009 || v55 == 557605234;
                if (!v56 || (sub_1000E8710(&v73, v7, v51, v54) & 0x80000000) != 0)
                {
                  goto LABEL_98;
                }

LABEL_97:
                *&v70[v38] = v73;
                v58 = &v70[v38 - 8];
                *(v58 + 3) = v74;
                v59 = v76;
                *(v58 + 8) = DWORD2(v74);
                *(v52 + 14) = v59;
                goto LABEL_98;
              }

              if ((sub_1000E88EC(&v73, v7, v55, v51, v54) & 0x80000000) == 0)
              {
                goto LABEL_97;
              }
            }

LABEL_98:
            ++v39;
            v38 += 56;
            v17 = v66;
            v43 += v66;
          }

          while (v64 != v38);
        }

        a2 = v61;
        a1 = v62;
        a3 = v60;
        goto LABEL_43;
      }

LABEL_4:
      v9 = 0;
      v69 = 0;
      if (v8)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaEntryMCOStringCreateWithPath", 545, 148, 0, "Can't init MCO");
        goto LABEL_6;
      }

LABEL_43:
      if (!v9)
      {
        goto LABEL_66;
      }

      if (a3 >> 62 == 3)
      {
        v23 = __stderrp;
        v24 = sub_1000E8AA8(v9);
        v25 = HIDWORD(v69);
        fprintf(v23, "%s (N=%u)", v24, HIDWORD(v69));
        if (v25)
        {
          v26 = v71;
          do
          {
            v27 = __stderrp;
            v28 = sub_1000E8AA8(*(v26 - 3));
            v29 = *(v26 - 2);
            if (v29 <= 16777222)
            {
              v32 = "x86";
              if (v29 != 7)
              {
                if (v29 != 12)
                {
                  goto LABEL_60;
                }

                v32 = "arm";
              }
            }

            else
            {
              if (v29 != 33554444)
              {
                v30 = *(v26 - 1) & 0xFFFFFF;
                if (v29 == 16777228)
                {
                  v31 = v30 == 2;
                  v32 = "arm64";
                  v33 = "arm64e";
LABEL_57:
                  if (v31)
                  {
                    v32 = v33;
                  }

                  goto LABEL_61;
                }

                if (v29 == 16777223)
                {
                  v31 = v30 == 8;
                  v32 = "x86_64";
                  v33 = "x86_64h";
                  goto LABEL_57;
                }

LABEL_60:
                v32 = "?";
                goto LABEL_61;
              }

              v32 = "arm64_32";
            }

LABEL_61:
            v34 = *v26 - 1;
            v35 = "?";
            if (v34 <= 0xD)
            {
              v35 = off_100483618[v34];
            }

            fprintf(v27, " [%s, %s, %s]", v28, v32, v35);
            v26 += 14;
            --v25;
          }

          while (v25);
        }

        fprintf(__stderrp, "\t<%s>\n", a2);
      }

      v36 = sub_1000E7D14(&v69);
      *a1 = v36;
      if (v36)
      {
LABEL_66:
        v10 = 0;
        goto LABEL_67;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaEntryMCOStringCreateWithPath", 555, 148, 0, "MCO creation failed");
LABEL_6:
      v10 = 0xFFFFFFFFLL;
LABEL_67:
      close(v7);
      return v10;
    }

    if (v12 <= -17958195)
    {
      if (v12 != -822415874 && v12 != -805638658)
      {
        goto LABEL_4;
      }
    }

    else if ((v12 + 17958194) >= 2)
    {
      if (v12 != 1918975009 && v12 != 557605234 || sub_1000E8710(v70, v7, 0, st_size))
      {
        goto LABEL_4;
      }

LABEL_42:
      v9 = v69;
      goto LABEL_43;
    }

    if (sub_1000E88EC(v70, v7, v12, 0, st_size))
    {
      goto LABEL_4;
    }

    goto LABEL_42;
  }

  v11 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaEntryMCOStringCreateWithPath", 542, 148, *v11, "%s", a2);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000E8628(uint64_t a1, off_t a2, size_t a3)
{
  v5 = a1;
  v8 = 0;
  if ((sub_1000E8A2C(a1, &v8, 4uLL, a2, a3) & 0x80000000) != 0)
  {
    return 0;
  }

  result = v8;
  if (v8 == 1918975009 || v8 == 557605234)
  {
    v9 = 0;
    if ((sub_1000E8A2C(v5, &v9, 8uLL, a2, a3) & 0x80000000) == 0)
    {
      if (v9 == 0xA3E686372613C21)
      {
        return v8;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000E8710(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v4 = a3 + 8;
  if (a3 + 8 < a4)
  {
    v8 = a3 + 68;
    while (1)
    {
      v19 = 0u;
      memset(v20, 0, 28);
      v18 = 0u;
      if ((sub_1000E8A2C(a2, &v18, 0x3CuLL, v4, a4) & 0x80000000) != 0)
      {
        break;
      }

      if (v18 != 12579 || BYTE2(v18) != 47)
      {
        break;
      }

      if (HIWORD(v20[6]) != 2656)
      {
        break;
      }

      LOBYTE(v19) = 0;
      BYTE2(v20[6]) = 0;
      v10 = strtoull(&v18 + 3, 0, 10);
      v11 = strtoull(&v20[4], 0, 10);
      v12 = v11 + v8;
      if (v11 + v8 > a4)
      {
        break;
      }

      v13 = v11;
      if (v10 > v11 || v12 < v4)
      {
        break;
      }

      v14 = sub_1000E8628(a2, v10 + v8, v12);
      v15 = v14;
      v16 = v14 + 17958194;
      if ((v14 + 17958194) < 2 || v14 == -822415874 || v14 == -805638658)
      {
        result = sub_1000E88EC(a1, a2, v14, v10 + v8, v12);
        if (v16 < 2 || v15 == -805638658 || v15 == -822415874)
        {
          return result;
        }
      }

      else
      {
        v4 = v12 + (v13 & 1);
        v8 = v4 + 60;
        result = 0xFFFFFFFFLL;
        if (v4 >= a4)
        {
          return result;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000E88EC(uint64_t a1, uint64_t a2, int a3, off_t a4, size_t a5)
{
  v8 = a3 & 0xFEFFFFFF;
  v9 = (a3 & 0xFEFFFFFF) == -822415874;
  if (a3 == -17958193 || a3 == -805638658)
  {
    v17 = 0u;
    v18 = 0u;
    v10 = a2;
    v11 = 32;
  }

  else
  {
    v17 = 0uLL;
    DWORD2(v18) = 0;
    *&v18 = 0;
    v10 = a2;
    v11 = 28;
  }

  if ((sub_1000E8A2C(v10, &v17, v11, a4, a5) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v8 == -822415874;
  v13 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v12)), 0x1FuLL)), vrev32q_s8(v17), v17);
  *a1 = v13;
  *(a1 + 16) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v12), 0x1FuLL)), vrev32_s8(*&v18), *&v18);
  v14 = DWORD2(v18);
  v15 = bswap32(DWORD2(v18));
  if (v8 == -822415874)
  {
    v14 = v15;
  }

  *(a1 + 24) = v14;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5 - a4;
  *(a1 + 48) = v9;
  if ((v13.i32[0] + 17958192) >= 0xFFFFFFFE)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000E8A2C(int a1, void *a2, size_t a3, off_t a4, size_t a5)
{
  if (a4 + a3 > a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (pread(a1, a2, a3, a4) == a3)
  {
    return 0;
  }

  v6 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAFieldMCO.c", "aaPReadExpected", 181, 148, *v6, "pread failed");
  return 0xFFFFFFFFLL;
}

const char *sub_1000E8AA8(int a1)
{
  if (a1 > -822415875)
  {
    if (a1 > -17958194)
    {
      switch(a1)
      {
        case -17958193:
          return "Mach-O 64-bit";
        case 1918975009:
          return "Object archive BE";
        case 557605234:
          return "Object archive";
      }
    }

    else
    {
      switch(a1)
      {
        case -822415874:
          return "Mach-O BE";
        case -805638658:
          return "Mach-O 64-bit BE";
        case -17958194:
          return "Mach-O";
      }
    }
  }

  else if (a1 > -889275715)
  {
    switch(a1)
    {
      case -889275714:
        return "Fat binary";
      case -889275713:
        return "Fat binary 64-bit";
      case -872498498:
        return "Fat GPU binary";
    }
  }

  else
  {
    switch(a1)
    {
      case -1095041334:
        return "Fat binary BE";
      case -1095041333:
        return "Fat GPU binary BE";
      case -1078264118:
        return "Fat binary 64-bit BE";
    }
  }

  return "?";
}

int AAArchiveStreamReadHeader(AAArchiveStream s, AAHeader *header)
{
  v2 = *(s + 5);
  if (v2)
  {
    return v2(*s, header);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamReadBlob(AAArchiveStream s, AAFieldKey key, void *buf, size_t nbyte)
{
  v4 = *(s + 6);
  if (v4)
  {
    return v4(*s, key.ikey, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamWriteHeader(AAArchiveStream s, AAHeader header)
{
  v2 = *(s + 3);
  if (v2)
  {
    return v2(*s, header);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamWriteBlob(AAArchiveStream s, AAFieldKey key, const void *buf, size_t nbyte)
{
  v4 = *(s + 4);
  if (v4)
  {
    return v4(*s, key.ikey, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

int AAArchiveStreamClose(AAArchiveStream s)
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

void AAArchiveStreamCancel(AAArchiveStream s)
{
  v1 = *(s + 2);
  if (v1)
  {
    v1(*s);
  }
}

AAArchiveStream AACustomArchiveStreamOpen(void)
{
  v0 = malloc(0x38uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x38uLL, 0, 0x38uLL);
  }

  else
  {
    v2 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AACustomArchiveStreamOpen", 49, 14, *v2, "malloc");
  }

  return v1;
}

uint64_t sub_1000E8DB0(unint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  bzero(path, 0x400uLL);
  bzero(v139, 0x800uLL);
  v4 = AAHeaderCreate();
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 168, 14, 0, "creating header");
    v5 = 0;
  }

  v6 = AAEntryXATBlobCreate();
  if (!v6)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 170, 14, 0, "creating XAT field");
    v5 = 0;
  }

  v7 = AAEntryACLBlobCreate();
  if (!v7)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 172, 14, 0, "creating XAT field");
    v5 = 0;
  }

  v8 = AAEntryYECBlobCreate();
  if (!v8)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 174, 14, 0, "creating YEC field");
    v5 = 0;
  }

  memset(&v136, 0, sizeof(v136));
  size[0] = 0;
  size[1] = 0;
  v135 = 0;
  v9 = (v2[136] + 40 * a1[1]);
  v10 = *v9;
  if (*v9 < v9[1])
  {
    v11 = *(v2 + 280) != 0;
    do
    {
      v12 = v2[144] + (v10 << 7);
      if (v11 || *(v2 + 280))
      {
        v5 = 0;
        v13 = 1;
        v11 = 1;
      }

      else
      {
        path_length = 0;
        if (AAPathListNodeGetPath(v2[1], *(v12 + 24), 0x400uLL, path, &path_length) < 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 192, 14, 0, "AAPathListNodeGetPath", v115);
          goto LABEL_41;
        }

        if ((sub_1000F4680(v139, 0x800uLL, v2 + 24, path) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 193, 14, 0, "invalid path", v115);
          goto LABEL_41;
        }

        v14 = v2[132];
        if (!v14 || (v14(v2[131], 30, path, 0) & 0x80000000) == 0)
        {
          if (lstat(v139, &v136) < 0)
          {
            v25 = *__error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 202, 14, v25, "lstat %s");
          }

          else if ((sub_1000EC174(v4, v2[2], v2 + 24, path, v3) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 203, 14, 0, "initializing header from path");
          }

          else
          {
            v18.ikey = 5521732;
            if (AAFieldKeySetContainsKey(v2[2], v18) && (v136.st_mode & 0xF000) == 0x8000 && (v19.ikey = 5521732, AAHeaderSetFieldBlob(v4, 0xFFFFFFFF, v19, v136.st_size) < 0))
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 209, 14, 0, "inserting DAT: %s");
            }

            else
            {
              v20.ikey = 5521752;
              if (AAFieldKeySetContainsKey(v2[2], v20) && (v136.st_mode & 0xF000) != 0xC000)
              {
                if ((sub_10010E2A0(v6, v2 + 24, path) & 0x80000000) != 0)
                {
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 216, 14, 0, "initializing XAT field from path", v115);
                }

                else
                {
                  if (!AAEntryXATBlobGetEntryCount(v6))
                  {
                    goto LABEL_28;
                  }

                  EncodedSize = AAEntryXATBlobGetEncodedSize(v6);
                  v31.ikey = 5521752;
                  if ((AAHeaderSetFieldBlob(v4, 0xFFFFFFFF, v31, EncodedSize) & 0x80000000) == 0)
                  {
                    __src = 0;
                    goto LABEL_29;
                  }

                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 220, 14, 0, "inserting XAT: %s");
                }
              }

              else
              {
LABEL_28:
                __src = 1;
LABEL_29:
                v21.ikey = 4997953;
                if (!AAFieldKeySetContainsKey(v2[2], v21))
                {
                  goto LABEL_42;
                }

                v22 = v136.st_mode & 0xF000;
                if (v22 != 0x8000 && v22 != 0x4000)
                {
                  goto LABEL_42;
                }

                if ((sub_100111C50(v7, v2 + 24, path, v3) & 0x80000000) != 0)
                {
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 228, 14, 0, "initializing ACL field from path", v115);
                  goto LABEL_41;
                }

                if (!AAEntryACLBlobGetEntryCount(v7))
                {
LABEL_42:
                  v122 = 1;
LABEL_43:
                  v27.ikey = 4408665;
                  if (AAFieldKeySetContainsKey(v2[2], v27))
                  {
                    v124 = 1;
                    if ((v136.st_mode & 0xF000) == 0x8000 && v136.st_size >= 1)
                    {
                      if ((sub_1000E4624(v8, 65552, v2 + 24, path) & 0x80000000) != 0)
                      {
                        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 240, 14, 0, "initializing YEC field from path", v115);
                        goto LABEL_41;
                      }

                      v28 = AAEntryYECBlobGetEncodedSize(v8);
                      v29.ikey = 4408665;
                      if (AAHeaderSetFieldBlob(v4, 0xFFFFFFFF, v29, v28) < 0)
                      {
                        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 242, 14, 0, "inserting YEC: %s");
                        goto LABEL_41;
                      }

                      v124 = 0;
                    }
                  }

                  else
                  {
                    v124 = 1;
                  }

                  v32.ikey = 5260889;
                  if (!AAFieldKeySetContainsKey(v2[2], v32))
                  {
                    v121 = 1;
                    goto LABEL_61;
                  }

                  v121 = 1;
                  if ((v136.st_mode & 0xF000) != 0x8000 || v136.st_size < 1)
                  {
                    goto LABEL_61;
                  }

                  if ((sub_1000DE384(size, v2 + 24, path) & 0x80000000) != 0)
                  {
                    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 249, 14, 0, "initializing YFP field from path", v115);
                  }

                  else
                  {
                    v33.ikey = 5260889;
                    if ((AAHeaderSetFieldBlob(v4, 0xFFFFFFFF, v33, size[0]) & 0x80000000) == 0)
                    {
                      v121 = 0;
LABEL_61:
                      v34.ikey = 4410440;
                      if (AAFieldKeySetContainsKey(v2[2], v34) && (v136.st_mode & 0xF000) == 0x8000 && v136.st_nlink >= 2u)
                      {
                        *(v12 + 32) = v136.st_ino;
                      }

                      v35.ikey = 4410435;
                      v36 = AAFieldKeySetContainsKey(v2[2], v35);
                      st_mode = v136.st_mode;
                      xat = v6;
                      if (v36 && (v136.st_mode & 0xF000) == 0x8000)
                      {
                        v137 = 0uLL;
                        if (!fsctl(v139, 0x40104A0EuLL, &v137, 0) && v137 == 2)
                        {
                          *(v12 + 40) = *(&v137 + 1);
                        }

                        st_mode = v136.st_mode;
                      }

                      if ((st_mode & 0xF000) == 0x8000)
                      {
                        v38.ikey = 4410451;
                        if (AAFieldKeySetContainsKey(v2[2], v38))
                        {
                          if ((*(v12 + 48) = 0, memset_s((v12 + 56), 0x40uLL, 0, 0x40uLL), hash_function = 0, v39.ikey = 3491923, !AAFieldKeySetContainsKey(v2[2], v39)) || (v40.ikey = 3491923, v41 = AAHeaderGetKeyIndex(v4, v40), (v41 & 0x80000000) != 0) || ((v42 = AAHeaderGetFieldHash(v4, v41, 0x40uLL, &hash_function, (v12 + 56)), v42 <= 1) ? (v43 = 1) : (v43 = v42), v43 <= 0))
                          {
                            if ((v44.ikey = 3360851, !AAFieldKeySetContainsKey(v2[2], v44)) || (v45.ikey = 3360851, v46 = AAHeaderGetKeyIndex(v4, v45), (v46 & 0x80000000) != 0) || ((v47 = AAHeaderGetFieldHash(v4, v46, 0x40uLL, &hash_function, (v12 + 56)), v47 <= 1) ? (v48 = 1) : (v48 = v47), v48 <= 0))
                            {
                              if ((v49.ikey = 3295315, !AAFieldKeySetContainsKey(v2[2], v49)) || (v50.ikey = 3295315, v51 = AAHeaderGetKeyIndex(v4, v50), (v51 & 0x80000000) != 0) || ((v52 = AAHeaderGetFieldHash(v4, v51, 0x40uLL, &hash_function, (v12 + 56)), v52 <= 1) ? (v53 = 1) : (v53 = v52), v53 <= 0))
                              {
                                if ((v54.ikey = 3229779, !AAFieldKeySetContainsKey(v2[2], v54)) || (v55.ikey = 3229779, KeyIndex = AAHeaderGetKeyIndex(v4, v55), (KeyIndex & 0x80000000) != 0) || ((FieldHash = AAHeaderGetFieldHash(v4, KeyIndex, 0x40uLL, &hash_function, (v12 + 56)), FieldHash <= 1) ? (v58 = 1) : (v58 = FieldHash), v58 <= 0))
                                {
                                  v137 = 0uLL;
                                  v138 = 0;
                                  if ((sub_1000F64C8(v139, &v137) & 0x80000000) == 0)
                                  {
                                    v59 = v137;
                                    *(v12 + 72) = v138;
                                    *(v12 + 56) = v59;
                                    goto LABEL_99;
                                  }

                                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 282, 14, 0, "hashing file: %s", v139);
                                  v11 = 0;
                                  v5 = 0;
                                  v13 = 1;
LABEL_236:
                                  v6 = xat;
                                  goto LABEL_15;
                                }
                              }
                            }
                          }
                        }
                      }

LABEL_99:
                      v119 = v3;
                      v60 = AAHeaderGetEncodedSize(v4);
                      if ((__src & 1) == 0)
                      {
                        v60 += AAEntryXATBlobGetEncodedSize(xat);
                      }

                      if ((v122 & 1) == 0)
                      {
                        v60 += AAEntryACLBlobGetEncodedSize(v7);
                      }

                      if ((v124 & 1) == 0)
                      {
                        v60 += AAEntryYECBlobGetEncodedSize(v8);
                      }

                      v61 = size[0];
                      if (v121)
                      {
                        v61 = 0;
                      }

                      v62 = v61 + v60;
                      *v12 = v9[2];
                      *(v12 + 8) = v61 + v60;
                      *(v12 + 16) = AAHeaderGetEncodedSize(v4);
                      v63 = v9[2] + v62;
                      if ((v63 & 0x8000000000000000) != 0)
                      {
LABEL_142:
                        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 300, 14, 0, "reallocating block blob");
                        v11 = 0;
                        v5 = 0;
                        v13 = 1;
                      }

                      else
                      {
                        v64 = v9[3];
                        if (v64 < v63)
                        {
                          do
                          {
                            while (!v64)
                            {
                              v64 = 0x4000;
                              v66 = 0x4000;
                              if (v63 <= 0x4000)
                              {
                                goto LABEL_121;
                              }
                            }

                            v65 = v64 >> 1;
                            if ((v64 & (v64 >> 1)) != 0)
                            {
                              v65 = v64 & (v64 >> 1);
                            }

                            v64 += v65;
                          }

                          while (v64 < v63);
                          v66 = v64;
                          if (v64 >= 0x2000000001)
                          {
                            *__error() = 12;
                            goto LABEL_141;
                          }

LABEL_121:
                          v67 = v9[4];
                          v68 = realloc(v67, v66);
                          if (v68)
                          {
                            v9[3] = v66;
                            v9[4] = v68;
                            goto LABEL_123;
                          }

                          free(v67);
LABEL_141:
                          v9[2] = 0;
                          v9[3] = 0;
                          v9[4] = 0;
                          goto LABEL_142;
                        }

LABEL_123:
                        EncodedData = AAHeaderGetEncodedData(v4);
                        v70 = AAHeaderGetEncodedSize(v4);
                        v71 = v9[2];
                        v72 = v71 + v70;
                        if (!__CFADD__(v71, v70) && (v72 & 0x8000000000000000) == 0)
                        {
                          v73 = v70;
                          v74 = v9[3];
                          if (v74 >= v72)
                          {
LABEL_147:
                            v78 = v9[4];
                            if (EncodedData)
                            {
                              memcpy((v78 + v9[2]), EncodedData, v73);
                            }

                            else if (v78)
                            {
                              memset_s((v78 + v9[2]), v73, 0, v73);
                            }

                            v71 = v9[2] + v73;
                            v9[2] = v71;
                          }

                          else
                          {
                            v117 = EncodedData;
                            do
                            {
                              while (!v74)
                              {
                                v74 = 0x4000;
                                v76 = 0x4000;
                                if (v72 <= 0x4000)
                                {
                                  goto LABEL_145;
                                }
                              }

                              v75 = v74 >> 1;
                              if ((v74 & (v74 >> 1)) != 0)
                              {
                                v75 = v74 & (v74 >> 1);
                              }

                              v74 += v75;
                            }

                            while (v74 < v72);
                            v76 = v74;
                            if (v74 >= 0x2000000001)
                            {
                              *__error() = 12;
                              goto LABEL_154;
                            }

LABEL_145:
                            v116 = v9[4];
                            v77 = realloc(v116, v76);
                            if (v77)
                            {
                              v9[3] = v76;
                              v9[4] = v77;
                              EncodedData = v117;
                              goto LABEL_147;
                            }

                            free(v116);
LABEL_154:
                            v71 = 0;
                            v9[2] = 0;
                            v9[3] = 0;
                            v9[4] = 0;
                          }
                        }

                        if ((__src & 1) == 0)
                        {
                          __srca = AAEntryXATBlobGetEncodedData(xat);
                          v79 = AAEntryXATBlobGetEncodedSize(xat);
                          v71 = v9[2];
                          v80 = v71 + v79;
                          if (!__CFADD__(v71, v79) && (v80 & 0x8000000000000000) == 0)
                          {
                            v81 = v79;
                            v82 = v9[3];
                            if (v82 >= v80)
                            {
LABEL_170:
                              v86 = v9[4];
                              if (__srca)
                              {
                                memcpy((v86 + v9[2]), __srca, v81);
                              }

                              else if (v86)
                              {
                                memset_s((v86 + v9[2]), v81, 0, v81);
                              }

                              v71 = v9[2] + v81;
                              v9[2] = v71;
                            }

                            else
                            {
                              do
                              {
                                while (!v82)
                                {
                                  v82 = 0x4000;
                                  v84 = 0x4000;
                                  if (v80 <= 0x4000)
                                  {
                                    goto LABEL_168;
                                  }
                                }

                                v83 = v82 >> 1;
                                if ((v82 & (v82 >> 1)) != 0)
                                {
                                  v83 = v82 & (v82 >> 1);
                                }

                                v82 += v83;
                              }

                              while (v82 < v80);
                              v84 = v82;
                              if (v82 >= 0x2000000001)
                              {
                                *__error() = 12;
                                goto LABEL_176;
                              }

LABEL_168:
                              v118 = v9[4];
                              v85 = realloc(v118, v84);
                              if (v85)
                              {
                                v9[3] = v84;
                                v9[4] = v85;
                                goto LABEL_170;
                              }

                              free(v118);
LABEL_176:
                              v71 = 0;
                              v9[2] = 0;
                              v9[3] = 0;
                              v9[4] = 0;
                            }
                          }
                        }

                        if ((v122 & 1) == 0)
                        {
                          v87 = AAEntryACLBlobGetEncodedData(v7);
                          v88 = AAEntryACLBlobGetEncodedSize(v7);
                          v71 = v9[2];
                          v89 = v71 + v88;
                          if (!__CFADD__(v71, v88) && (v89 & 0x8000000000000000) == 0)
                          {
                            v90 = v88;
                            v91 = v9[3];
                            if (v91 >= v89)
                            {
LABEL_193:
                              v95 = v9[4];
                              if (v87)
                              {
                                memcpy((v95 + v9[2]), v87, v90);
                              }

                              else if (v95)
                              {
                                memset_s((v95 + v9[2]), v90, 0, v90);
                              }

                              v71 = v9[2] + v90;
                              v9[2] = v71;
                            }

                            else
                            {
                              __srcb = v87;
                              do
                              {
                                while (!v91)
                                {
                                  v91 = 0x4000;
                                  v93 = 0x4000;
                                  if (v89 <= 0x4000)
                                  {
                                    goto LABEL_191;
                                  }
                                }

                                v92 = v91 >> 1;
                                if ((v91 & (v91 >> 1)) != 0)
                                {
                                  v92 = v91 & (v91 >> 1);
                                }

                                v91 += v92;
                              }

                              while (v91 < v89);
                              v93 = v91;
                              if (v91 >= 0x2000000001)
                              {
                                *__error() = 12;
                                goto LABEL_199;
                              }

LABEL_191:
                              v123 = v9[4];
                              v94 = realloc(v123, v93);
                              if (v94)
                              {
                                v9[3] = v93;
                                v9[4] = v94;
                                v87 = __srcb;
                                goto LABEL_193;
                              }

                              free(v123);
LABEL_199:
                              v71 = 0;
                              v9[2] = 0;
                              v9[3] = 0;
                              v9[4] = 0;
                            }
                          }
                        }

                        if ((v124 & 1) == 0)
                        {
                          v96 = AAEntryYECBlobGetEncodedData(v8);
                          v97 = AAEntryYECBlobGetEncodedSize(v8);
                          v71 = v9[2];
                          v98 = v71 + v97;
                          if (!__CFADD__(v71, v97) && (v98 & 0x8000000000000000) == 0)
                          {
                            v99 = v97;
                            v100 = v9[3];
                            if (v100 >= v98)
                            {
LABEL_216:
                              v104 = v9[4];
                              if (v96)
                              {
                                memcpy((v104 + v9[2]), v96, v99);
                              }

                              else if (v104)
                              {
                                memset_s((v104 + v9[2]), v99, 0, v99);
                              }

                              v71 = v9[2] + v99;
                              v9[2] = v71;
                            }

                            else
                            {
                              __srcc = v96;
                              do
                              {
                                while (!v100)
                                {
                                  v100 = 0x4000;
                                  v102 = 0x4000;
                                  if (v98 <= 0x4000)
                                  {
                                    goto LABEL_214;
                                  }
                                }

                                v101 = v100 >> 1;
                                if ((v100 & (v100 >> 1)) != 0)
                                {
                                  v101 = v100 & (v100 >> 1);
                                }

                                v100 += v101;
                              }

                              while (v100 < v98);
                              v102 = v100;
                              if (v100 >= 0x2000000001)
                              {
                                *__error() = 12;
                                goto LABEL_222;
                              }

LABEL_214:
                              v125 = v9[4];
                              v103 = realloc(v125, v102);
                              if (v103)
                              {
                                v9[3] = v102;
                                v9[4] = v103;
                                v96 = __srcc;
                                goto LABEL_216;
                              }

                              free(v125);
LABEL_222:
                              v71 = 0;
                              v9[2] = 0;
                              v9[3] = 0;
                              v9[4] = 0;
                            }
                          }
                        }

                        if ((v121 & 1) != 0 || (v105 = size[0], v106 = __CFADD__(v71, size[0]), v107 = v71 + size[0], v106) || (v107 & 0x8000000000000000) != 0)
                        {
                          v13 = 0;
                          v11 = 0;
                        }

                        else
                        {
                          v108 = v135;
                          v109 = v9[3];
                          if (v109 >= v107)
                          {
LABEL_241:
                            v113 = v9[4];
                            if (v108)
                            {
                              memcpy((v113 + v9[2]), v108, v105);
                            }

                            else if (v113)
                            {
                              memset_s((v113 + v9[2]), v105, 0, v105);
                            }

                            v13 = 0;
                            v11 = 0;
                            v9[2] += v105;
                          }

                          else
                          {
                            do
                            {
                              while (!v109)
                              {
                                v109 = 0x4000;
                                v111 = 0x4000;
                                if (v107 <= 0x4000)
                                {
                                  goto LABEL_239;
                                }
                              }

                              v110 = v109 >> 1;
                              if ((v109 & (v109 >> 1)) != 0)
                              {
                                v110 = v109 & (v109 >> 1);
                              }

                              v109 += v110;
                            }

                            while (v109 < v107);
                            v111 = v109;
                            if (v109 >= 0x2000000001)
                            {
                              *__error() = 12;
                              goto LABEL_247;
                            }

LABEL_239:
                            v126 = v9[4];
                            __srcd = v135;
                            v112 = realloc(v126, v111);
                            if (v112)
                            {
                              v9[3] = v111;
                              v9[4] = v112;
                              v108 = __srcd;
                              goto LABEL_241;
                            }

                            free(v126);
LABEL_247:
                            v13 = 0;
                            v11 = 0;
                            v9[2] = 0;
                            v9[3] = 0;
                            v9[4] = 0;
                          }
                        }
                      }

                      v3 = v119;
                      goto LABEL_236;
                    }

                    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 251, 14, 0, "inserting YFP: %s");
                  }

                  goto LABEL_41;
                }

                v23 = AAEntryACLBlobGetEncodedSize(v7);
                v24.ikey = 4997953;
                if ((AAHeaderSetFieldBlob(v4, 0xFFFFFFFF, v24, v23) & 0x80000000) == 0)
                {
                  v122 = 0;
                  goto LABEL_43;
                }

                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 232, 14, 0, "inserting ACL: %s");
              }
            }
          }

LABEL_41:
          v11 = 0;
          v5 = 0;
          v13 = 1;
          goto LABEL_15;
        }

        sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "appendPathListWorkerProc", 199, 14, "operation aborted", v15, v16, v17);
        v26 = 0;
        v11 = 0;
        v5 = 0;
        v13 = 1;
        atomic_compare_exchange_strong(v2 + 280, &v26, 1u);
      }

LABEL_15:
      *(v12 + 120) = v13;
      ++v10;
    }

    while (v10 < v9[1]);
  }

  AAHeaderDestroy(v4);
  AAEntryXATBlobDestroy(v6);
  AAEntryACLBlobDestroy(v7);
  AAEntryYECBlobDestroy(v8);
  free(v135);
  memset_s(size, 0x18uLL, 0, 0x18uLL);
  if (v5)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

int AAArchiveStreamWritePathList(AAArchiveStream s, AAPathList path_list, AAFieldKeySet key_set, const char *dir, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v8 = __chkstk_darwin(s);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v8;
  bzero(v245, 0x470uLL);
  v24 = sub_1000F4248();
  if (!v10)
  {
    v10 = sub_1000F4290();
  }

  v243 = v22;
  v244 = v20;
  v249 = 1024;
  LODWORD(__count) = v10;
  v242 = v12;
  v246 = v16;
  v247 = v14;
  if (!realpath_DARWIN_EXTSN(v18, v245))
  {
    v28 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 373, 14, v28, "%s");
LABEL_18:
    v36 = 0;
    v37 = 0;
    v38 = 0;
LABEL_19:
    v39 = 0;
    v40 = 0;
    goto LABEL_20;
  }

  v25 = AAPathListNodeFirst(v22);
  if (v25 != -1)
  {
    for (i = v25; i != -1; i = AAPathListNodeNext(v22, i))
    {
      ++v248;
    }
  }

  v250 = (v248 + v249 - 1) / v249;
  v27 = v248 << 7;
  if (v248 << 7 >= 0x2000000001)
  {
    *__error() = 12;
    v259 = 0;
LABEL_17:
    v35 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 379, 14, v35, "malloc");
    goto LABEL_18;
  }

  v29 = malloc(v27);
  v259 = v29;
  if (!v29)
  {
    goto LABEL_17;
  }

  memset(v29, 255, v27);
  v30 = AAPathListNodeFirst(v22);
  if (v30 != -1)
  {
    v31 = v30;
    v32 = 24;
    do
    {
      *&v259[v32] = v31;
      v31 = AAPathListNodeNext(v22, v31);
      v32 += 128;
    }

    while (v31 != -1);
  }

  if (is_mul_ok(v250, 0x28uLL) && 40 * v250 < 0x2000000001)
  {
    v34 = calloc(v250, 0x28uLL);
  }

  else
  {
    v33 = __error();
    v34 = 0;
    *v33 = 12;
  }

  v251 = v34;
  v253 = calloc(__count, 0x10uLL);
  v46 = calloc(__count, 8uLL);
  v254 = v46;
  if (!v251 || !v253 || (v47 = v46) == 0)
  {
    v61 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 387, 14, v61, "malloc");
    goto LABEL_18;
  }

  v48 = __count;
  if (__count)
  {
    v49 = 0;
    do
    {
      v50 = &v253[16 * v49];
      *v50 = &v242;
      v254[v49++] = v50;
    }

    while (v49 != v48);
    v47 = v254;
  }

  v38 = sub_1001021B4(v48, v47, sub_1000E8DB0);
  if (!v38)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 396, 14, 0, "ThreadPoolCreate");
    v36 = 0;
    v37 = 0;
    goto LABEL_19;
  }

  if (v250)
  {
    v235 = v23;
    v51 = 0;
    v52 = 1;
    while (1)
    {
      if (v255)
      {
LABEL_49:
        v60 = 0;
        goto LABEL_56;
      }

      v53 = v249;
      v54 = v249 * v51;
      v55 = &v251[40 * v51];
      *v55 = v249 * v51;
      v56 = v53 * v51 + v53;
      *(v55 + 1) = v56;
      v57 = v248;
      if (v54 >= v248)
      {
        *v55 = v248;
      }

      if (v56 >= v57)
      {
        *(v55 + 1) = v57;
      }

      v58 = sub_100102924(v38);
      if (!v58)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 408, 14, 0, "ThreadPoolGetWorker");
        goto LABEL_55;
      }

      *(v58 + 8) = v51;
      if ((sub_100102A58(v38) & 0x80000000) != 0)
      {
        break;
      }

      v51 = v52;
      v59 = v250 > v52++;
      if (!v59)
      {
        goto LABEL_49;
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 410, 14, 0, "ThreadPoolRunWorker");
LABEL_55:
    v60 = 1;
LABEL_56:
    v23 = v235;
  }

  else
  {
    v60 = 0;
  }

  if ((sub_100102638(v38) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 414, 14, 0, "ThreadPoolDestroy");
    if (!atomic_load(&v255))
    {
      goto LABEL_18;
    }

LABEL_77:
    v77 = v23[2];
    if (v77)
    {
      v77(*v23);
    }

    goto LABEL_18;
  }

  if (atomic_load(&v255))
  {
    goto LABEL_77;
  }

  if (v60)
  {
    goto LABEL_18;
  }

  v236 = v23;
  v219 = v12;
  v63 = v250;
  if (v250)
  {
    v64 = 0;
    v65 = 0;
    v66 = v251;
    v67 = v259;
    do
    {
      v68 = &v66[40 * v65];
      v70 = *v68;
      v69 = *(v68 + 1);
      v59 = v69 > v70;
      v71 = v69 - v70;
      if (v59)
      {
        v72 = &v67[128 * v70];
        do
        {
          *v72 += v64;
          v72 += 128;
          --v71;
        }

        while (v71);
      }

      v64 += *&v66[40 * v65++ + 16];
    }

    while (v65 != v63);
    if ((v64 & 0x8000000000000000) == 0)
    {
      v73 = v257;
      if (v257 >= v64)
      {
LABEL_84:
        v79 = 0;
        do
        {
          v80 = &v251[40 * v79];
          v81 = *(v80 + 2);
          v82 = v256 + v81;
          if (!__CFADD__(v256, v81) && (v82 & 0x8000000000000000) == 0)
          {
            v83 = *(v80 + 4);
            v84 = v257;
            if (v257 >= v82)
            {
LABEL_100:
              if (v83)
              {
                memcpy(&v258[v256], v83, v81);
              }

              else if (v258)
              {
                memset_s(&v258[v256], v81, 0, v81);
              }

              v256 += v81;
            }

            else
            {
              do
              {
                while (!v84)
                {
                  v84 = 0x4000;
                  if (v82 <= 0x4000)
                  {
                    v86 = v258;
                    v84 = 0x4000;
                    goto LABEL_98;
                  }
                }

                v85 = v84 >> 1;
                if ((v84 & (v84 >> 1)) != 0)
                {
                  v85 = v84 & (v84 >> 1);
                }

                v84 += v85;
              }

              while (v84 < v82);
              if (v84 >= 0x2000000001)
              {
                *__error() = 12;
                goto LABEL_106;
              }

              v86 = v258;
LABEL_98:
              v87 = realloc(v86, v84);
              if (v87)
              {
                v258 = v87;
                v257 = v84;
                goto LABEL_100;
              }

              free(v86);
LABEL_106:
              v256 = 0;
              v257 = 0;
              v258 = 0;
            }
          }

          v88 = &v251[40 * v79];
          free(v88[4]);
          memset_s(v88 + 2, 0x18uLL, 0, 0x18uLL);
          ++v79;
        }

        while (v79 < v250);
        goto LABEL_108;
      }

      do
      {
        while (!v73)
        {
          v73 = 0x4000;
          if (v64 <= 0x4000)
          {
            v75 = v258;
            v73 = 0x4000;
            goto LABEL_82;
          }
        }

        v74 = v73 >> 1;
        if ((v73 & (v73 >> 1)) != 0)
        {
          v74 = v73 & (v73 >> 1);
        }

        v73 += v74;
      }

      while (v73 < v64);
      if (v73 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_286;
      }

      v75 = v258;
LABEL_82:
      v78 = realloc(v75, v73);
      if (v78)
      {
        v258 = v78;
        v257 = v73;
        if (!v250)
        {
          goto LABEL_108;
        }

        goto LABEL_84;
      }

      free(v75);
LABEL_286:
      v258 = 0;
      v256 = 0;
      v257 = 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 428, 14, 0, "allocating final blob");
    goto LABEL_18;
  }

LABEL_108:
  v89.ikey = 4410440;
  if (AAFieldKeySetContainsKey(v20, v89))
  {
    qsort(v259, v248, 0x80uLL, sub_1000EB63C);
    v90 = v248;
    if (v248)
    {
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = v259;
      v95 = v259 + 160;
      v96 = vdupq_n_s64(2uLL);
      while (1)
      {
        v97 = &v94[128 * v93];
        v100 = *(v97 + 4);
        v99 = v97 + 32;
        v98 = v100;
        if (v100 == -1)
        {
LABEL_129:
          v214 = v92;
          v221 = v91;
          goto LABEL_132;
        }

        v101 = v93 + 1;
        if (v93 + 1 < v90)
        {
          v102 = &v95[128 * v93];
          v103 = v102;
          v104 = 1;
          while (1)
          {
            v105 = *v103;
            v103 += 128;
            if (v105 != v98)
            {
              break;
            }

            ++v104;
            if (!(v93 - v90 + v104))
            {
              v104 = v90 - v93;
              v101 = v90;
              goto LABEL_118;
            }
          }

          v101 = v93 + v104;
LABEL_118:
          if (!v104)
          {
            goto LABEL_127;
          }

          if (v104 != 1)
          {
            break;
          }
        }

        *v99 = -1;
LABEL_128:
        v93 = v101;
        if (v101 >= v90)
        {
          goto LABEL_129;
        }
      }

      v106 = (v104 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v107 = vdupq_n_s64(v104 - 1);
      v108 = xmmword_1003772E0;
      do
      {
        v109 = vmovn_s64(vcgeq_u64(v107, v108));
        if (v109.i8[0])
        {
          *(v102 - 16) = v91;
        }

        if (v109.i8[4])
        {
          *v102 = v91;
        }

        v108 = vaddq_s64(v108, v96);
        v102 += 256;
        v106 -= 2;
      }

      while (v106);
LABEL_127:
      ++v91;
      v92 += v104;
      goto LABEL_128;
    }

    v221 = 0;
    v214 = 0;
LABEL_132:
    v110 = 1;
  }

  else
  {
    v221 = 0;
    v214 = 0;
    v110 = 0;
  }

  v111.ikey = 4410435;
  if (AAFieldKeySetContainsKey(v20, v111))
  {
    qsort(v259, v248, 0x80uLL, sub_1000EB670);
    v112 = v248;
    if (v248)
    {
      v113 = 0;
      v114 = 0;
      v115 = 0;
      v116 = v259;
      v117 = v259 + 168;
      v118 = vdupq_n_s64(2uLL);
      while (1)
      {
        v119 = &v116[128 * v115];
        v122 = *(v119 + 5);
        v121 = v119 + 40;
        v120 = v122;
        if (v122 == -1)
        {
LABEL_154:
          v213 = v114;
          v220 = v113;
          goto LABEL_157;
        }

        v123 = v115 + 1;
        if (v115 + 1 < v112)
        {
          v124 = &v117[128 * v115];
          v125 = v124;
          v126 = 1;
          while (1)
          {
            v127 = *v125;
            v125 += 128;
            if (v127 != v120)
            {
              break;
            }

            ++v126;
            if (!(v115 - v112 + v126))
            {
              v126 = v112 - v115;
              v123 = v112;
              goto LABEL_143;
            }
          }

          v123 = v115 + v126;
LABEL_143:
          if (!v126)
          {
            goto LABEL_152;
          }

          if (v126 != 1)
          {
            break;
          }
        }

        *v121 = -1;
LABEL_153:
        v115 = v123;
        if (v123 >= v112)
        {
          goto LABEL_154;
        }
      }

      v128 = (v126 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v129 = vdupq_n_s64(v126 - 1);
      v130 = xmmword_1003772E0;
      do
      {
        v131 = vmovn_s64(vcgeq_u64(v129, v130));
        if (v131.i8[0])
        {
          *(v124 - 16) = v113;
        }

        if (v131.i8[4])
        {
          *v124 = v113;
        }

        v130 = vaddq_s64(v130, v118);
        v124 += 256;
        v128 -= 2;
      }

      while (v128);
LABEL_152:
      ++v113;
      v114 += v126;
      goto LABEL_153;
    }

    v220 = 0;
    v213 = 0;
LABEL_157:
    v110 = 1;
  }

  else
  {
    v220 = 0;
    v213 = 0;
  }

  v132.ikey = 4410451;
  if (AAFieldKeySetContainsKey(v20, v132))
  {
    qsort(v259, v248, 0x80uLL, sub_1000EB6A4);
    v133.ikey = 3295315;
    v222 = 1;
    if (!AAFieldKeySetContainsKey(v20, v133))
    {
      v134.ikey = 3360851;
      if (!AAFieldKeySetContainsKey(v20, v134))
      {
        v135.ikey = 3491923;
        if (!AAFieldKeySetContainsKey(v20, v135))
        {
          v222 = 0;
        }
      }
    }

    v136 = v248;
    if (v248)
    {
      v228 = 0;
      v137 = 0;
      v224 = 0;
      v41 = 1;
      v216 = vdupq_n_s64(2uLL);
      v225 = v20;
      while (1)
      {
        v138 = &v259[128 * v137];
        if (v138[6] == -1)
        {
          goto LABEL_200;
        }

        v139 = v137 + 1;
        if (v137 + 1 >= v136)
        {
          goto LABEL_173;
        }

        *v229 = v136 - v137;
        v231 = v136;
        v226 = v137 << 7;
        v140 = (v138 + 23);
        v233 = v137;
        v141 = v137 - v136;
        v142 = 1;
        while (!memcmp(v138 + 7, v140, 0x40uLL))
        {
          ++v142;
          v140 += 128;
          if (!(v141 + v142))
          {
            v142 = *v229;
            v143 = v231;
            goto LABEL_172;
          }
        }

        v143 = v233 + v142;
LABEL_172:
        v144 = v142 - 1;
        v20 = v225;
        if (v142 == 1)
        {
LABEL_173:
          v138[6] = -1;
          v137 = v139;
        }

        else
        {
          v145 = v143;
          if (v222)
          {
            goto LABEL_175;
          }

          if ((AAPathListNodeGetPath(v22, v138[3], 0x400uLL, path, 0) & 0x80000000) == 0)
          {
            if (v142)
            {
              v153 = v226 + 152;
              v146 = v142 - 1;
              while (1)
              {
                if (AAPathListNodeGetPath(v22, *&v259[v153], 0x400uLL, v241, 0) < 0)
                {
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 526, 14, 0, "AAPathListNodeGetPath");
                  v41 = 0;
                }

                else if (sub_1000F5D8C(v18) < 1)
                {
                  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 527, 14, "Hash collision detected: %s != %s", v154, v155, v156, path, v241);
                  v147 = -1;
                  goto LABEL_177;
                }

                v153 += 128;
                if (!--v144)
                {
                  goto LABEL_176;
                }
              }
            }

LABEL_175:
            v146 = v142 - 1;
LABEL_176:
            v147 = v228;
            v224 += v142;
            ++v228;
LABEL_177:
            if (v142)
            {
              v148 = (v142 + 1) & 0xFFFFFFFFFFFFFFFELL;
              v149 = vdupq_n_s64(v146);
              v150 = &v259[v226 + 176];
              v151 = xmmword_1003772E0;
              do
              {
                v152 = vmovn_s64(vcgeq_u64(v149, v151));
                if (v152.i8[0])
                {
                  *(v150 - 16) = v147;
                }

                if (v152.i8[4])
                {
                  *v150 = v147;
                }

                v151 = vaddq_s64(v151, v216);
                v150 += 32;
                v148 -= 2;
              }

              while (v148);
            }

            v137 = v145;
            goto LABEL_185;
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 523, 14, 0, "AAPathListNodeGetPath");
          v41 = 0;
          v137 = v233;
        }

LABEL_185:
        v136 = v248;
        if (v137 >= v248)
        {
          goto LABEL_200;
        }
      }
    }

    v224 = 0;
    v228 = 0;
    v41 = 1;
  }

  else
  {
    if (!v110)
    {
      v224 = 0;
      v228 = 0;
      v41 = 1;
      goto LABEL_201;
    }

    v224 = 0;
    v228 = 0;
    v41 = 1;
    v136 = v248;
  }

LABEL_200:
  qsort(v259, v136, 0x80uLL, sub_1000EB708);
LABEL_201:
  if ((v221 + 1) < 0x2000000001)
  {
    v40 = calloc(v221 + 1, 1uLL);
  }

  else
  {
    v40 = 0;
    *__error() = 12;
  }

  if ((v220 + 1) < 0x2000000001)
  {
    v39 = calloc(v220 + 1, 1uLL);
  }

  else
  {
    v39 = 0;
    *__error() = 12;
  }

  if ((v228 + 1) >= 0x2000000001)
  {
    v38 = 0;
    *__error() = 12;
LABEL_209:
    v157 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 554, 14, *v157, "malloc");
    v36 = 0;
    v37 = 0;
    goto LABEL_20;
  }

  v158 = calloc(v228 + 1, 1uLL);
  v38 = v158;
  if (!v40 || !v39 || !v158)
  {
    goto LABEL_209;
  }

  v37 = AAHeaderCreate();
  if (!v37)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 558, 14, 0, "Header creation");
    v36 = 0;
    goto LABEL_20;
  }

  v36 = malloc(0x40000uLL);
  if (!v36)
  {
    v196 = *__error();
    v197 = "malloc";
    v198 = 560;
LABEL_326:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", v198, 14, v196, v197, v203);
    goto LABEL_20;
  }

  v159 = v248;
  v205 = 1;
  if (!v248)
  {
    LODWORD(v217) = 0;
    v232 = 0;
LABEL_290:
    v208 = v159;
    v199 = sub_1000F4248();
    if (v219 >> 62)
    {
      v200 = v199;
      fwrite("Archive path list\n", 0x12uLL, 1uLL, __stderrp);
      bzero(path, 0x400uLL);
      if (!AAFieldKeySetSerialize(v20, 0x400uLL, path))
      {
        fprintf(__stderrp, "%12s %s\n", "fields", path);
      }

      fprintf(__stderrp, "%12llu entries\n", v248);
      if (v221)
      {
        fprintf(__stderrp, "%12llu entries in %llu hard link clusters (HLC)\n", v214, v221);
      }

      if (v220)
      {
        fprintf(__stderrp, "%12llu entries in %llu clone clusters (CLC)\n", v213, v220);
      }

      if (v228)
      {
        fprintf(__stderrp, "%12llu entries in %llu same data clusters (SLC)\n", v224, v228);
      }

      if (v217)
      {
        fprintf(__stderrp, "%12u entries with XAT field\n", v217);
      }

      if (v232)
      {
        fprintf(__stderrp, "%12u entries with ACL field\n", v232);
      }

      v201 = v200 - v24;
      if (!v205)
      {
        fprintf(__stderrp, "%12u entries with YEC field\n", v232);
      }

      fprintf(__stderrp, "%12llu bytes in regular files DAT\n", v208);
      fprintf(__stderrp, "%12.2f time (s)\n", v201);
    }

    goto LABEL_21;
  }

  v160 = 0;
  v207 = 0;
  v232 = 0;
  v217 = 0;
  v212 = 0;
  v161 = 0;
  while (1)
  {
    v206 = v161;
    v162 = &v259[128 * v160];
    v164 = *v162;
    v163 = v162[1];
    v234 = v162;
    v165 = v162[2];
    v215 = v163 - v165;
    if (v163 < v165 || v164 >= v256)
    {
      v197 = "invalid header blob size";
      v198 = 568;
LABEL_325:
      v196 = 0;
      goto LABEL_326;
    }

    v167 = v162[2];
    if ((sub_1000EB968(v37, &v258[v164], v165) & 0x80000000) != 0)
    {
      v197 = "parse stored header";
      v198 = 569;
      goto LABEL_325;
    }

    if ((v219 & 2) != 0)
    {
      v168 = v234[4];
      if (v168 == -1)
      {
        v169 = v234[5];
        if (v169 == -1)
        {
          v170 = v234[6];
          if (v170 == -1)
          {
            goto LABEL_233;
          }

          if (!*(v38 + v170))
          {
            *(v38 + v170) = 1;
            goto LABEL_233;
          }
        }

        else if (!v39[v169])
        {
          v39[v169] = 1;
          goto LABEL_233;
        }
      }

      else if (!v40[v168])
      {
        v40[v168] = 1;
        goto LABEL_233;
      }

      v171.ikey = 5521732;
      KeyIndex = AAHeaderGetKeyIndex(v37, v171);
      if ((KeyIndex & 0x80000000) == 0)
      {
        AAHeaderRemoveField(v37, KeyIndex);
      }
    }

LABEL_233:
    v173 = v234[4];
    if (v173 != -1)
    {
      v174.ikey = 4410440;
      if (AAHeaderSetFieldUInt(v37, 0xFFFFFFFF, v174, v173) < 0)
      {
        v197 = "add HLC field";
        v198 = 603;
        goto LABEL_325;
      }
    }

    v175 = v234[5];
    if (v175 != -1)
    {
      v176.ikey = 4410435;
      if (AAHeaderSetFieldUInt(v37, 0xFFFFFFFF, v176, v175) < 0)
      {
        v197 = "add CLC field";
        v198 = 604;
        goto LABEL_325;
      }
    }

    v177 = v234[6];
    if (v177 != -1)
    {
      v178.ikey = 4410451;
      if (AAHeaderSetFieldUInt(v37, 0xFFFFFFFF, v178, v177) < 0)
      {
        v197 = "add SLC field";
        v198 = 605;
        goto LABEL_325;
      }
    }

    v179 = v236[3];
    if (!v179 || (v179(*v236, v37) & 0x80000000) != 0)
    {
      v197 = "encoding header";
      v198 = 608;
      goto LABEL_325;
    }

    FieldCount = AAHeaderGetFieldCount(v37);
    if (FieldCount)
    {
      break;
    }

    v181 = v217;
LABEL_279:
    if (v215)
    {
      v197 = "blob byte count mismatch";
      v198 = 679;
      goto LABEL_325;
    }

    v217 = v181;
    v160 = (v206 + 1);
    v161 = v206 + 1;
    if (v248 <= v160)
    {
      v205 = v212 == 0;
      v159 = v207;
      goto LABEL_290;
    }
  }

  v180 = 0;
  v227 = 0;
  v210 = v167 + v164;
  v181 = v217;
  while (1)
  {
    v182 = v180;
    if (AAHeaderGetFieldType(v37, v180) == 5)
    {
      break;
    }

    v194 = v182;
LABEL_276:
    v180 = v194 + 1;
    if (v180 == FieldCount)
    {
      goto LABEL_279;
    }
  }

  size = 0;
  offset = 0;
  FieldKey = AAHeaderGetFieldKey(v37, v182);
  v237 = FieldKey;
  v209 = v182;
  if (AAHeaderGetFieldBlob(v37, v182, &size, &offset) < 0)
  {
    v197 = "get blob location";
    v198 = 620;
    goto LABEL_325;
  }

  if (v227 != offset)
  {
    v197 = "blob segment mismatch";
    v198 = 621;
    goto LABEL_325;
  }

  v183 = FieldKey.ikey & 0xFFFFFF;
  if ((FieldKey.ikey & 0xFFFFFF) == 0x4C4341)
  {
    v184 = v232 + 1;
  }

  else
  {
    v184 = v232;
  }

  v232 = v184;
  if (v183 == 5521752)
  {
    v181 = (v181 + 1);
  }

  else
  {
    v181 = v181;
  }

  v185 = v212;
  if (v183 == 4408665)
  {
    v185 = v212 + 1;
  }

  v212 = v185;
  if (v183 != 5521732)
  {
    if (size > v215)
    {
      v203 = &v237;
      v197 = "Blob segment out of range, key=%s";
      v198 = 665;
      goto LABEL_325;
    }

    v195 = v236[4];
    if (!v195 || (v195(*v236, FieldKey.ikey, &v258[v210]) & 0x80000000) != 0)
    {
      v197 = "sending blob data";
      v198 = 666;
      goto LABEL_325;
    }

    v193 = size;
    v210 += size;
    v215 -= size;
    goto LABEL_275;
  }

  v186 = size;
  if (AAPathListNodeGetPath(v243, v234[3], 0x400uLL, v241, 0) < 0)
  {
    v197 = "getting entry path";
    v198 = 636;
    goto LABEL_325;
  }

  if ((sub_1000F4680(path, 0x800uLL, v245, v241) & 0x80000000) != 0)
  {
    v197 = "getting entry full path";
    v198 = 637;
    goto LABEL_325;
  }

  v204 = v186;
  v218 = v181;
  v230 = open(path, 0);
  if (v230 < 0)
  {
    v196 = *__error();
    v203 = path;
    v197 = "%s";
    v198 = 639;
    goto LABEL_326;
  }

  v187 = size;
  if (!size)
  {
LABEL_268:
    close(v230);
    if (!v41)
    {
      goto LABEL_20;
    }

    v207 += v204;
    v41 = 1;
    v193 = size;
    v181 = v218;
LABEL_275:
    v194 = v209;
    v227 += v193;
    goto LABEL_276;
  }

  v188 = 0;
  while (1)
  {
    if (v188 + 0x40000 <= v187)
    {
      v189 = 0x40000;
    }

    else
    {
      v189 = v187 - v188;
    }

    v190 = read(v230, v36, v189);
    if (v190 < 0)
    {
      v202 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 649, 14, v202, "read: %s");
      goto LABEL_310;
    }

    v191 = v190;
    if (!v190)
    {
      break;
    }

    v192 = v236[4];
    if (!v192 || (v192(*v236, FieldKey.ikey, v36, v190) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 651, 14, 0, "sending blob data");
      goto LABEL_310;
    }

    v188 += v191;
    v187 = size;
    if (v188 >= size)
    {
      goto LABEL_268;
    }
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 650, 14, 0, "truncated: %s");
LABEL_310:
  close(v230);
LABEL_20:
  v41 = 0;
LABEL_21:
  if ((sub_100102638(0) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "AAArchiveStreamWritePathList", 703, 14, 0, "ThreadPoolDestroy");
    v41 = 0;
  }

  if (v251 && v250)
  {
    v42 = 0;
    v43 = 32;
    do
    {
      v44 = &v251[v43 - 16];
      free(*&v251[v43]);
      memset_s(v44, 0x18uLL, 0, 0x18uLL);
      ++v42;
      v43 += 40;
    }

    while (v42 < v250);
  }

  free(v254);
  free(v253);
  free(v251);
  free(v259);
  free(v36);
  free(v40);
  free(v39);
  free(v38);
  AAHeaderDestroy(v37);
  free(v258);
  memset_s(&v256, 0x18uLL, 0, 0x18uLL);
  if (v41)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

unint64_t sub_1000EB63C(void *a1, void *a2)
{
  v4 = a1[4];
  v2 = a2[4];
  v3 = v4 >= v2;
  LODWORD(v4) = v4 != v2;
  if (v3)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (!v4)
  {
    if (*a1 < *a2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return *a1 != *a2;
    }
  }

  return v4;
}

unint64_t sub_1000EB670(void *a1, void *a2)
{
  v4 = a1[5];
  v2 = a2[5];
  v3 = v4 >= v2;
  LODWORD(v4) = v4 != v2;
  if (v3)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (!v4)
  {
    if (*a1 < *a2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return *a1 != *a2;
    }
  }

  return v4;
}

uint64_t sub_1000EB6A4(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a2[6];
  v5 = v3 >= v4;
  v6 = v3 != v4;
  if (v5)
  {
    result = v6;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (!result)
  {
    result = memcmp(a1 + 7, a2 + 7, 0x40uLL);
    if (!result)
    {
      if (*a1 < *a2)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return *a1 != *a2;
      }
    }
  }

  return result;
}

uint64_t sub_1000EB708(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

void *sub_1000EB720(uint64_t a1, int a2, uint64_t a3)
{
  v6 = calloc(1uLL, 0x68uLL);
  v7 = malloc(0x20uLL);
  v8 = v7;
  if (v7 && (memset_s(v7, 0x20uLL, 0, 0x20uLL), v6))
  {
    *v8 = a1;
    v8[2] = a2;
    *(v8 + 2) = a3;
    *v6 = v8;
    v6[1] = sub_1000EB810;
    v6[7] = sub_1000EB848;
    v6[2] = sub_1000EB85C;
  }

  else
  {
    v9 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStream.c", "aaArchiveBlobInputStreamOpen", 769, 14, *v9, "malloc");
    free(v6);
    free(v8);
  }

  return v6;
}

unsigned int *sub_1000EB810(unsigned int *result)
{
  if (result)
  {
    v1 = atomic_load(result + 6);
    free(result);
    if (v1)
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

unint64_t sub_1000EB85C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (atomic_load((a1 + 24)))
  {
    return -1;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v4 = v7 >= a3 ? a3 : *(a1 + 16);
  v8 = *(*a1 + 48);
  if (!v8 || (v8(**a1, *(a1 + 8), a2, v4) & 0x80000000) != 0)
  {
    return -1;
  }

  *(a1 + 16) -= v4;
  return v4;
}

size_t sub_1000EB8E0(uint64_t a1, unint64_t a2, const uint8_t *a3, size_t a4)
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

size_t sub_1000EB928(uint8_t *a1, size_t a2, uint64_t a3, unint64_t a4)
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

uint64_t sub_1000EB968(uint64_t a1, unsigned __int16 *a2, rsize_t a3)
{
  sub_1000EBED0(a1);
  *a1 = 0;
  *(a1 + 40) = 0;
  if (a3 <= 5)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 113, 101, 0, "invalid header size: %llu");
    goto LABEL_66;
  }

  if (*a2 != 826360153 && *a2 != 825246017)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 114, 101, 0, "invalid header magic");
    goto LABEL_66;
  }

  if (a2[2] != a3)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 116, 101, 0, "header size mismatch: stored %u, got %llu");
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 121, 101, 0, "realloc blob");
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
    if ((sub_1000EC074(a1, *a1 + 1) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 127, 101, 0, "realloc_fields");
      goto LABEL_66;
    }

    v17 = *(a1 + 8);
    v18 = (*a1)++;
    if (v16 + 4 > a3)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 130, 101, 0, "truncated header");
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
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 161, 101, 0, "truncated header");
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

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 153, 101, 0, "truncated header");
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
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithEncodedData", 159, 101, 0, "invalid field subtype: %d");
          goto LABEL_66;
        }

        v22 = 0;
        v23 = 0;
        goto LABEL_51;
    }
  }
}

uint64_t sub_1000EBED0(uint64_t a1)
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "init_blob_with_magic", 61, 101, 0, "realloc_blob failed");
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

uint64_t sub_1000EC074(uint64_t a1, unsigned int a2)
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
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "realloc_fields", 35, 101, *v9, "malloc");
  *a1 = 0;
  result = 0xFFFFFFFFLL;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1000EC174(AAHeader_impl *a1, AAFieldKeySet_impl *a2, char *a3, const char *a4, unint64_t a5)
{
  memset(&v83, 0, sizeof(v83));
  sub_1000EBED0(a1);
  *a1 = 0;
  *(a1 + 5) = 0;
  if ((sub_1000F4680(v85, 0x800uLL, a3, a4) & 0x80000000) != 0)
  {
    v79 = a3;
    v80 = a4;
    v11 = "invalid path %s/%s";
    v12 = 196;
    goto LABEL_7;
  }

  if ((sub_1000EBED0(a1) & 0x80000000) != 0)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithPath", v12, 101, v10, v11, v79, v80);
    *a1 = 0;
    *(a1 + 2) = 0;
    result = 0xFFFFFFFFLL;
    *(a1 + 5) = 0;
    return result;
  }

  v14 = sub_10010AB90(v83.st_mode);
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
      v44 = default argument 0 of DownloadConfiguration.init(downloadRetries:networkServiceType:alternateCDNHost:maxActiveTasks:chunkSize:)();
      if (v44)
      {
        v45.ikey = 4803654;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v45, v44) < 0)
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
      v47 = sub_1000F5FF4(v85);
      if ((v47 - 1) <= 5)
      {
        v48.ikey = 4411984;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v48, v47 | 0x40u) < 0)
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
      v57 = sub_1000F5E4C(a3);
      v58 = sub_1000ECEA4(a3, a4, v57);
      if ((v58 & 0x8000000000000000) == 0)
      {
        v59.ikey = 5920068;
        if (AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v59, v58) < 0)
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
      if ((sub_1000E7EC0(value, v85, a5) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderInitWithPath", 389, 101, 0, "fetching Mach-O information: %s", v85);
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
      if ((sub_10010A8A4(value, v73, a3, a4) & 0x80000000) != 0)
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

off_t sub_1000ECEA4(char *a1, const char *a2, unsigned int a3)
{
  bzero(v7, 0x800uLL);
  if (sub_1000F4680(v7, 0x800uLL, a1, a2))
  {
    return -1;
  }

  result = sub_1000F5F24(v7);
  if (result >= 0)
  {
    return (result + a3 - 1) & -a3;
  }

  return result;
}

uint64_t sub_1000ECF58(AAHeader header, char *a2, char *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7.ikey = 4475221;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v7, *(a2 + 1)) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 428, 101, 0, "append UID");
      return 0xFFFFFFFFLL;
    }

    v6 = *a2;
  }

  if ((v6 & 2) != 0)
  {
    v8.ikey = 4475207;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v8, *(a2 + 2)) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 429, 101, 0, "append GID");
      return 0xFFFFFFFFLL;
    }

    v6 = *a2;
  }

  if ((v6 & 8) != 0)
  {
    v9.ikey = 4476749;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v9, *(a2 + 4)) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 430, 101, 0, "append MOD");
      return 0xFFFFFFFFLL;
    }

    v6 = *a2;
  }

  if ((v6 & 4) != 0)
  {
    v10.ikey = 4672582;
    if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v10, *(a2 + 3)) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 431, 101, 0, "append FLG");
      return 0xFFFFFFFFLL;
    }

    v6 = *a2;
  }

  if ((v6 & 0x40) != 0)
  {
    v11.ikey = 5067853;
    if (AAHeaderSetFieldTimespec(header, 0xFFFFFFFF, v11, (a2 + 56)) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 432, 101, 0, "append MTM");
      return 0xFFFFFFFFLL;
    }

    v6 = *a2;
  }

  if ((v6 & 0x20) != 0)
  {
    v12.ikey = 5067843;
    if (AAHeaderSetFieldTimespec(header, 0xFFFFFFFF, v12, (a2 + 40)) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 433, 101, 0, "append CTM");
      return 0xFFFFFFFFLL;
    }

    v6 = *a2;
  }

  if ((v6 & 0x10) != 0 && (v13.ikey = 5067842, AAHeaderSetFieldTimespec(header, 0xFFFFFFFF, v13, (a2 + 24)) < 0))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 434, 101, 0, "append BTM");
  }

  else
  {
    v14 = *a3;
    if (*a3)
    {
      v15.ikey = 5523009;
      if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v15, *(a3 + 2)) < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 435, 101, 0, "append AFT");
        return 0xFFFFFFFFLL;
      }

      v14 = *a3;
    }

    if ((v14 & 2) != 0)
    {
      v16.ikey = 5391937;
      if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v16, *(a3 + 3)) < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 436, 101, 0, "append AFR");
        return 0xFFFFFFFFLL;
      }

      v14 = *a3;
    }

    if ((v14 & 4) != 0)
    {
      v17.ikey = 4803654;
      if (AAHeaderSetFieldUInt(header, 0xFFFFFFFF, v17, *(a3 + 2)) < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 437, 101, 0, "append FLI");
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderAppendEntryAttributes", 438, 101, 0, "append PRC");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000ED290(uint64_t a1, AAHeader_impl *a2)
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
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderBlobArrayInitWithHeader", 460, 101, 0, "get field blob failed");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "aaHeaderBlobArrayInitWithHeader", 453, 101, *v10, "malloc");
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

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldType", 592, 101, 0, "invalid field index %u", i);
  return -1;
}

int AAHeaderGetFieldBlob(AAHeader header, uint32_t i, uint64_t *size, uint64_t *offset)
{
  if (*header <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldBlob", 670, 101, 0, "invalid field index %u");
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldBlob", 672, 101, 0, "invalid type %d, expected BLOB");
  }

  return -1;
}

AAFieldKey AAHeaderGetFieldKey(AAHeader header, uint32_t i)
{
  if (*header <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldKey", 598, 101, 0, "invalid field index %u", i);
    return 0;
  }

  else
  {
    return *(*(header + 1) + 48 * i);
  }
}

uint64_t sub_1000ED59C(unsigned int *a1)
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
    if ((sub_1000EBED0(v1) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderCreate", 485, 101, 0, "init_blob_with_magic");
      AAHeaderDestroy(v1);
      return 0;
    }
  }

  else
  {
    v2 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderCreate", 482, 101, *v2, "malloc");
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderClone", 507, 101, 0, "header copy");
      AAHeaderDestroy(v3);
      return 0;
    }
  }

  else
  {
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderClone", 504, 101, *v4, "malloc");
  }

  return v3;
}

int AAHeaderAssign(AAHeader header, AAHeader from_header)
{
  if ((sub_1000EC074(header, *from_header) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderAssign", 519, 101, 0, "realloc_fields");
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderAssign", 526, 101, 0, "realloc blob");
  }

  return -1;
}

AAHeader AAHeaderCreateWithEncodedData(size_t data_size, const uint8_t *data)
{
  v4 = AAHeaderCreate();
  v5 = v4;
  if (v4 && (sub_1000EB968(v4, data, data_size) & 0x80000000) != 0)
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
  if (v8 && (sub_1000EC174(v8, key_set, dir, path, flags) & 0x80000000) != 0)
  {
    AAHeaderDestroy(v9);
    return 0;
  }

  return v9;
}

int AAHeaderRemoveField(AAHeader header, uint32_t i)
{
  if ((sub_1000EDAD8(header, i, 0, 0) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderRemoveField", 558, 101, 0, "update_field_sizes failed");
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

uint64_t sub_1000EDAD8(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (*a1 <= a2)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "update_field_sizes", 74, 101, 0, "invalid field index");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "update_field_sizes", 78, 101, 0, "realloc blob");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "update_field_sizes", 85, 101, 0, "copy header size");
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
  sub_1000EBED0(header);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldUInt", 604, 101, 0, "invalid field index %u");
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldUInt", 606, 101, 0, "invalid type %d, expected UINT");
  }

  return -1;
}

int AAHeaderGetFieldString(AAHeader header, uint32_t i, size_t capacity, char *value, size_t *length)
{
  if (*header <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldString", 614, 101, 0, "invalid field index %u");
    return -1;
  }

  v5 = (*(header + 1) + 48 * i);
  if (v5[1] != 2)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldString", 616, 101, 0, "invalid type %d, expected STRING");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldString", 624, 101, 0, "invalid blob segment");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldHash", 634, 101, 0, "invalid field index %u");
    return -1;
  }

  v5 = (*(header + 1) + 48 * i);
  if (v5[1] != 3)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldHash", 636, 101, 0, "invalid type %d, expected HASH");
    return -1;
  }

  v7 = v5[10];
  if (v7 > capacity)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldHash", 639, 101, 0, "not enough capacity to store HASH");
    return -1;
  }

  v9 = (v5[3] + 4);
  if (v7 + v9 > *(header + 2))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldHash", 640, 101, 0, "invalid blob segment");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldTimespec", 647, 101, 0, "invalid field index %u");
    return -1;
  }

  v3 = (*(header + 1) + 48 * i);
  if (v3[1] != 4)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldTimespec", 649, 101, 0, "invalid type %d, expected TIMESPEC");
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldTimespec", 661, 101, 0, "invalid blob segment");
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

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderGetFieldTimespec", 655, 101, 0, "invalid blob segment");
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

  else if ((_DefaultRuneLocale.__runetype[key.skey[0]] & 0x500) == 0)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldFlag", 681, 101, 0, "invalid key");
    return -1;
  }

  if ((_DefaultRuneLocale.__runetype[v6] & 0x500) == 0)
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
    v8 = _DefaultRuneLocale.__runetype[v7] & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v8)
  {
    goto LABEL_19;
  }

  if (i == -1)
  {
    i = sub_1000EE3F8(header);
  }

  if ((sub_1000EDAD8(header, i, 4u, 0) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldFlag", 685, 101, 0, "update_field_sizes failed");
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldFlag", 696, 101, 0, "invalid blob segment");
  }

  return -1;
}

uint64_t sub_1000EE3F8(unsigned int *a1)
{
  v2 = *a1;
  if ((sub_1000EC074(a1, v2 + 1) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "append_field", 46, 101, 0, "realloc_fields failed");
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

  else if ((_DefaultRuneLocale.__runetype[key.skey[0]] & 0x500) == 0)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldUInt", 703, 101, 0, "invalid key");
    return -1;
  }

  if ((_DefaultRuneLocale.__runetype[v8] & 0x500) == 0)
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
    v10 = _DefaultRuneLocale.__runetype[v9] & 0x500;
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
    i = sub_1000EE3F8(header);
  }

  if ((sub_1000EDAD8(header, i, v12, 0) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldUInt", 713, 101, 0, "update_field_sizes failed");
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldUInt", 725, 101, 0, "invalid blob segment");
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

  else if ((_DefaultRuneLocale.__runetype[key.skey[0]] & 0x500) == 0)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldString", 732, 101, 0, "invalid key");
    return -1;
  }

  if ((_DefaultRuneLocale.__runetype[v10] & 0x500) == 0)
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
    v12 = _DefaultRuneLocale.__runetype[v11] & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v12)
  {
    goto LABEL_16;
  }

  if (length >= 0x10000)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldString", 733, 101, 0, "string too long");
    return -1;
  }

  if (i == -1)
  {
    i = sub_1000EE3F8(header);
  }

  if ((sub_1000EDAD8(header, i, length + 6, 0) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldString", 737, 101, 0, "update_field_sizes failed");
    return -1;
  }

  v14 = *(header + 1) + 48 * i;
  *v14 = key;
  *(v14 + 4) = 0x5000000002;
  *(v14 + 40) = length;
  v15 = *(v14 + 12);
  if ((v15 + 6) > *(header + 2) || (v16 = *(header + 4) + v15, *v16 = key.ikey | 0x50000000, *(v16 + 4) = length, v17 = (*(v14 + 12) + 6), v17 + length > *(header + 2)))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldString", 750, 101, 0, "invalid blob segment");
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

  else if ((_DefaultRuneLocale.__runetype[key.skey[0]] & 0x500) == 0)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldHash", 757, 101, 0, "invalid key");
    return -1;
  }

  if ((_DefaultRuneLocale.__runetype[v10] & 0x500) == 0)
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
    v12 = _DefaultRuneLocale.__runetype[v11] & 0x500;
  }

  if ((key.ikey & 0xFF000000) != 0 || !v12)
  {
    goto LABEL_21;
  }

  if (hash_function - 1 >= 5)
  {
    v17 = -1;
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldHash", 760, 101, 0, "invalid HASH subtype: %d", -1);
    return v17;
  }

  v13 = dword_10037C150[hash_function - 1];
  if (i == -1)
  {
    i = sub_1000EE3F8(header);
  }

  if ((sub_1000EDAD8(header, i, v13 + 4, 0) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldHash", 764, 101, 0, "update_field_sizes failed");
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldHash", 776, 101, 0, "invalid blob segment");
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

  else if ((_DefaultRuneLocale.__runetype[key.skey[0]] & 0x500) == 0)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldTimespec", 783, 101, 0, "invalid key");
    return -1;
  }

  if ((_DefaultRuneLocale.__runetype[v8] & 0x500) == 0)
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
    v10 = _DefaultRuneLocale.__runetype[v9] & 0x500;
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
    i = sub_1000EE3F8(header);
  }

  if ((sub_1000EDAD8(header, i, v11, 0) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldTimespec", 791, 101, 0, "update_field_sizes failed");
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldTimespec", 804, 101, 0, "invalid blob segment");
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

  else if ((_DefaultRuneLocale.__runetype[key.skey[0]] & 0x500) == 0)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldBlob", 811, 101, 0, "invalid key");
    return -1;
  }

  if ((_DefaultRuneLocale.__runetype[v8] & 0x500) == 0)
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
    v10 = _DefaultRuneLocale.__runetype[v9] & 0x500;
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
    i = sub_1000EE3F8(header);
  }

  if ((sub_1000EDAD8(header, i, v13, size) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldBlob", 820, 101, 0, "update_field_sizes failed");
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAHeader.c", "AAHeaderSetFieldBlob", 832, 101, 0, "invalid blob segment");
  }

  return -1;
}

AEAAuthData AEAAuthDataCreate(void)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataCreate", 19, 95, *v2, "malloc");
  }

  return v1;
}

void AEAAuthDataDestroy(AEAAuthData auth_data)
{
  if (auth_data)
  {
    free(*(auth_data + 2));
    free(*(auth_data + 5));
    memset_s(auth_data + 24, 0x18uLL, 0, 0x18uLL);
    memset_s(auth_data, 0x30uLL, 0, 0x30uLL);

    free(auth_data);
  }
}

AEAAuthData AEAAuthDataCreateWithContext(AEAContext context)
{
  __s = 0;
  v44 = 0;
  __ptr = 0;
  v42 = 0;
  v2 = AEAAuthDataCreate();
  if (!v2)
  {
    return v2;
  }

  if (AEAContextGetFieldBlob(context, 5u, 0, 0, 0, &v42) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataCreateWithContext", 46, 95, 0, "AEAContextGetFieldBlob", v42, __s, v44);
    goto LABEL_31;
  }

  if (!v42)
  {
    goto LABEL_97;
  }

  if ((v42 & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

  v3 = v44;
  if (v44 >= v42)
  {
    v6 = __ptr;
  }

  else
  {
    do
    {
      while (!v3)
      {
        v3 = 0x4000;
        if (v42 <= 0x4000)
        {
          v5 = __ptr;
          v3 = 0x4000;
          goto LABEL_18;
        }
      }

      v4 = v3 >> 1;
      if ((v3 & (v3 >> 1)) != 0)
      {
        v4 = v3 & (v3 >> 1);
      }

      v3 += v4;
    }

    while (v3 < v42);
    if (v3 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_29;
    }

    v5 = __ptr;
LABEL_18:
    v6 = realloc(v5, v3);
    if (!v6)
    {
      free(v5);
LABEL_29:
      v44 = 0;
      __ptr = 0;
      __s = 0;
      goto LABEL_30;
    }

    v44 = v3;
    __ptr = v6;
  }

  if (AEAContextGetFieldBlob(context, 5u, 0, v3 - __s, v6 + __s, &v42) < 0)
  {
    goto LABEL_30;
  }

  v7 = __s;
  if (v42)
  {
    v7 = __s + v42;
    if (!__CFADD__(__s, v42) && v7 <= v44)
    {
      __s += v42;
      goto LABEL_25;
    }

LABEL_30:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataCreateWithContext", 59, 95, 0, "AEAContextGetFieldBlob", v42, __s, v44);
    goto LABEL_31;
  }

LABEL_25:
  v8 = __ptr;
  *v2 = 0;
  *(v2 + 3) = 0;
  v9 = (v2 + 24);
  if (!v7)
  {
    goto LABEL_97;
  }

  if (v7 < 4)
  {
    goto LABEL_27;
  }

  v10 = 0;
  v11 = 1;
  while (2)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *&v8[v13];
      if (v14 < 4)
      {
        goto LABEL_27;
      }

      v15 = __CFADD__(v14, v13);
      v16 = v14 + v13;
      if (v15 || v16 > v7)
      {
        goto LABEL_27;
      }

      if (v10)
      {
        v17 = *(v2 + 2);
        v18 = (*v2)++;
        *(v17 + 8 * v18) = v13;
        if (v16 >= v7)
        {
          goto LABEL_68;
        }

        ++v12;
        goto LABEL_41;
      }

      ++v12;
      if (v16 >= v7)
      {
        break;
      }

LABEL_41:
      v13 = v16;
      if (v16 + 4 > v7)
      {
        goto LABEL_27;
      }
    }

    if (v11)
    {
      if (v12 > 0xFFFFFFFE)
      {
        goto LABEL_27;
      }

      v19 = *(v2 + 1);
      if (v19 >= v12)
      {
        goto LABEL_55;
      }

      v20 = *(v2 + 1);
      do
      {
        if (v20)
        {
          v20 *= 2;
        }

        else
        {
          v20 = 16;
        }
      }

      while (v20 < v12);
      if (v20 <= v19)
      {
        goto LABEL_55;
      }

      *(v2 + 1) = v20;
      if (8 * v20 >= 0x2000000001)
      {
        *__error() = 12;
      }

      else
      {
        v21 = *(v2 + 2);
        v22 = realloc(v21, 8 * v20);
        if (v22)
        {
          *(v2 + 2) = v22;
LABEL_55:
          if ((v7 & 0x8000000000000000) == 0)
          {
            v23 = *(v2 + 4);
            if (v23 >= v7)
            {
              goto LABEL_67;
            }

            do
            {
              while (!v23)
              {
                v23 = 0x4000;
                v25 = 0x4000;
                if (v7 <= 0x4000)
                {
                  goto LABEL_65;
                }
              }

              v24 = v23 >> 1;
              if ((v23 & (v23 >> 1)) != 0)
              {
                v24 = v23 & (v23 >> 1);
              }

              v23 += v24;
            }

            while (v23 < v7);
            v25 = v23;
            if (v23 >= 0x2000000001)
            {
              *__error() = 12;
            }

            else
            {
LABEL_65:
              v26 = *(v2 + 5);
              v27 = realloc(v26, v25);
              if (v27)
              {
                *(v2 + 4) = v25;
                *(v2 + 5) = v27;
LABEL_67:
                v11 = 0;
                v10 = 1;
                continue;
              }

              free(v26);
            }

            *v9 = 0;
            *(v2 + 4) = 0;
            *(v2 + 5) = 0;
          }

LABEL_27:
          *v2 = 0;
          *(v2 + 3) = 0;
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataCreateWithContext", 62, 95, 0, "invalid auth data blob", v42, __s, v44);
          goto LABEL_31;
        }

        free(v21);
      }

      *(v2 + 2) = 0;
      goto LABEL_27;
    }

    break;
  }

LABEL_68:
  *v9 = 0;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  v28 = *(v2 + 4);
  if (v28 < v7)
  {
    v29 = 0x4000;
    do
    {
      while (!v28)
      {
        v28 = 0x4000;
        if (v7 <= 0x4000)
        {
          goto LABEL_80;
        }
      }

      v30 = v28 >> 1;
      if ((v28 & (v28 >> 1)) != 0)
      {
        v30 = v28 & (v28 >> 1);
      }

      v28 += v30;
    }

    while (v28 < v7);
    v29 = v28;
    if (v28 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_101:
      *(v2 + 4) = 0;
      *(v2 + 5) = 0;
      goto LABEL_27;
    }

LABEL_80:
    v31 = *(v2 + 5);
    v32 = realloc(v31, v29);
    if (!v32)
    {
      free(v31);
      goto LABEL_101;
    }

    *(v2 + 4) = v29;
    *(v2 + 5) = v32;
  }

  v33 = *(v2 + 5);
  if (v8)
  {
    memcpy((v33 + *v9), v8, v7);
  }

  else if (v33)
  {
    memset_s((v33 + *v9), v7, 0, v7);
  }

  *(v2 + 3) += v7;
  v34 = *v2;
  if (!*v2)
  {
LABEL_97:
    free(__ptr);
    memset_s(&__s, 0x18uLL, 0, 0x18uLL);
    return v2;
  }

  v35 = 0;
  while (v34 <= v35)
  {
    v36 = 0;
    v37 = 0xFFFFFFFFLL;
LABEL_92:
    v38 = (v36 + 1);
    v39 = v37 - 4;
    while (*v38++)
    {
      if (!--v39)
      {
        goto LABEL_99;
      }
    }

    if (++v35 == v34)
    {
      goto LABEL_97;
    }
  }

  v36 = (*(v2 + 5) + *(*(v2 + 2) + 8 * v35));
  v37 = *v36;
  if (v37 >= 5)
  {
    goto LABEL_92;
  }

LABEL_99:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataCreateWithContext", 74, 95, 0, "invalid auth_data key", v42, __s, v44);
LABEL_31:
  free(__ptr);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  AEAAuthDataDestroy(v2);
  return 0;
}

int AEAAuthDataGetEntry(AEAAuthData auth_data, uint32_t i, size_t key_capacity, char *key, size_t *key_length, size_t data_capacity, uint8_t *data, size_t *data_size)
{
  if (*auth_data <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataGetEntry", 98, 95, 0, "invalid entry index %u", data, data_size);
    return -1;
  }

  v8 = (*(auth_data + 5) + *(*(auth_data + 2) + 8 * i));
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataGetEntry", 109, 95, 0, "invalid auth_data blob");
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

int AEAAuthDataAppendEntry(AEAAuthData auth_data, const char *key, const uint8_t *data, size_t data_size)
{
  v8 = strlen(key);
  v9 = v8 + 1;
  v10 = v8 + 5;
  if (v8 + 1 >= 0xFFFFFFFFFFFFFFFCLL || (v11 = data_size + v10, __CFADD__(data_size, v10)) || v11 >= 0xFFFFFFFF)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataAppendEntry", 148, 95, 0, "invalid attribute size");
    return -1;
  }

  if (v11 < 4)
  {
    goto LABEL_48;
  }

  v12 = (auth_data + 24);
  v13 = *(auth_data + 3);
  v14 = v13 + v11;
  if (__CFADD__(v13, v11))
  {
    goto LABEL_48;
  }

  v16 = *auth_data;
  v15 = *(auth_data + 1);
  v17 = *auth_data + 1;
  if (v15 < v17)
  {
    v18 = *(auth_data + 1);
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
      v20 = (auth_data + 16);
      v19 = *(auth_data + 2);
      *(auth_data + 1) = v18;
      if (8 * v18 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_47:
        *auth_data = 0;
        *v20 = 0;
        *(auth_data + 3) = 0;
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

  v22 = *(auth_data + 4);
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
    v24 = *(auth_data + 5);
    v25 = realloc(v24, v22);
    if (v25)
    {
      *(auth_data + 4) = v22;
      *(auth_data + 5) = v25;
      v16 = v41;
      goto LABEL_31;
    }

    free(v24);
LABEL_42:
    *(auth_data + 4) = 0;
    *(auth_data + 5) = 0;
LABEL_43:
    *auth_data = 0;
    *(auth_data + 3) = 0;
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
          v29 = (auth_data + 40);
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
    v29 = (auth_data + 40);
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
      *(auth_data + 5) = v30;
      v31 = (auth_data + 40);
      *(auth_data + 4) = v22;
      v26 = *(auth_data + 3);
      goto LABEL_55;
    }

    free(v33);
    v29 = v39;
LABEL_61:
    *v29 = 0;
    *v12 = 0;
    *(auth_data + 4) = 0;
    goto LABEL_48;
  }

  v42 = v16;
  v31 = (auth_data + 40);
  v30 = *(auth_data + 5);
  if (v30)
  {
LABEL_55:
    memset_s(&v30[v26], v11, 0, v11);
    v26 = *v12;
  }

  *(auth_data + 3) = v26 + v11;
  v34 = *(auth_data + 2);
  v35 = (*auth_data)++;
  *(v34 + 8 * v35) = v13;
  if (v13 >= 0xFFFFFFFFFFFFFFFCLL || v13 + 4 > *v12 || (*(*v31 + v13) = v11, v42 < 0))
  {
LABEL_48:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataAppendEntry", 152, 95, 0, "alloc auth_data entry", v39);
    return -1;
  }

  v36 = *(auth_data + 5);
  v37 = *(*(auth_data + 2) + 8 * v42);
  *(v36 + v37) = v11;
  v38 = (v36 + v37 + 4);
  memcpy(v38, key, v9);
  memcpy(&v38[v9], data, data_size);
  return 0;
}