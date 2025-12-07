os_log_t __chunkItem_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkItem_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkItem_block_invoke_34()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkItem_block_invoke_3_45()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkItem_block_invoke_49()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkItem_block_invoke_2_56()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkItem_block_invoke_60()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkItem_block_invoke_3_71()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

void freeChunkListCacheInfo(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t CSchunklist_for_file(char *a1, CFStringRef *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v26 = 0;
  valuePtr = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  memset(v20, 0, sizeof(v20));
  cf = 0;
  v4 = open(a1, 0);
  if (v4 == -1)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CSchunklist_for_file_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v12 = *MEMORY[0x277CBECE8];
      v13 = __error();
      v14 = strerror(*v13);
      v6 = CFStringCreateWithFormat(v12, 0, @"open failed on %s: %s\n", a1, v14);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CSchunklist_for_file_cold_2();
      }

      v15 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v29 = v6;
        _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (!v6)
      {
        goto LABEL_25;
      }

      CFRelease(v6);
    }

    goto LABEL_24;
  }

  if (!gOperations)
  {
    gOperations = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
    if (!gOperations)
    {
LABEL_24:
      v6 = 0;
LABEL_25:
      v10 = 0;
      v8 = 0;
      goto LABEL_26;
    }
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v6 = Mutable;
  if (!Mutable)
  {
    goto LABEL_25;
  }

  DWORD2(v24) = v4;
  *&v25 = 0;
  *(&v25 + 1) = Mutable;
  LODWORD(v20[0]) = 2;
  *&v21 = openFd;
  *(&v21 + 1) = closeFd;
  *&v22 = statFd;
  *(&v22 + 1) = readFd;
  *&v23 = getCacheBlobFd;
  *(&v23 + 1) = setCacheBlobFd;
  *&v24 = a1;
  *(&v20[0] + 1) = 0;
  if (!openFd(&v24, &v26, 0))
  {
    goto LABEL_25;
  }

  v7 = v26;
  *(v26 + 8) = v26;
  *(v7 + 16) = v20;
  v8 = 1;
  if (!CKChunkDigestArgumentsV1Create(&cf, 1, 0) || setOpCtxPath(v7, a1) || setOpCtxChunkScheme(v7, 1, cf) || (v18 = 0, memset(v17, 0, sizeof(v17)), !(v22)(v7, v17, 0)))
  {
    v10 = 0;
    goto LABEL_26;
  }

  setOpCtxStatInfo(v7, v17);
  valuePtr = *(v7 + 40);
  v9 = valuePtr;
  *(v7 + 16) = v20;
  *(v7 + 128) = CSchunklist_for_file_callback;
  *(v7 + 56) = v9;
  *(v7 + 160) = 5;
  v10 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (!v10)
  {
LABEL_26:
    v11 = 0;
    goto LABEL_27;
  }

  while (!registerOperation(&gOperationsLock, gOperations, v10))
  {
    waitForOperation(&gOperationsLock, &gOperationsCondition, gOperations, v10);
  }

  if (chunkItem(v7, 0))
  {
    v11 = 0;
    v8 = 1;
  }

  else
  {
    *a2 = v6;
    v8 = 1;
    v11 = 1;
    v6 = 0;
  }

LABEL_27:
  if (cf)
  {
    CKBaseRelease(cf);
  }

  cf = 0;
  if (v8)
  {
    (*(&v21 + 1))(*(&v20[0] + 1), v26, 0);
  }

  if (v10)
  {
    unregisterOperation(&gOperationsLock, &gOperationsCondition, gOperations, v10);
    CFRelease(v10);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v4 != -1)
  {
    close(v4);
  }

  return v11;
}

uint64_t openFd(uint64_t a1, uint64_t *a2, CFErrorRef *a3)
{
  *a2 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  v6 = *(a1 + 8);
  if (v6 == -1)
  {
    goto LABEL_6;
  }

  v7 = *a1;
  memset(&v20, 0, sizeof(v20));
  if (fstat(v6, &v20) == -1)
  {
    v10 = *__error();
    v11 = *__error();
    v12 = __error();
    v13 = strerror(*v12);
    v9 = CKPOSIXErrorCreateWithFormat(v10, @"fstat failed for fd:%d, path:%s: (%d) %s", v6, v7, v11, v13);
    v8 = 0;
LABEL_9:
    freeOpCtx(v8);
    if (a3)
    {
      result = 0;
      *a3 = v9;
    }

    else
    {
      if (v9)
      {
        CFRelease(v9);
      }

      return 0;
    }

    return result;
  }

  if ((v20.st_mode & 0xF000) == 0x4000)
  {
LABEL_6:
    v8 = 0;
LABEL_7:
    v9 = 0;
    goto LABEL_9;
  }

  OpCtx = createOpCtx();
  v8 = OpCtx;
  if (!OpCtx || setOpCtxPath(OpCtx, v7))
  {
    goto LABEL_7;
  }

  *(v8 + 36) = v6;
  tv_sec = v20.st_mtimespec.tv_sec;
  *(v8 + 40) = v20.st_ino;
  *(v8 + 48) = v20.st_dev;
  st_mode = v20.st_mode;
  *(v8 + 32) = v20.st_mode;
  *(v8 + 28) = v20.st_nlink;
  *(v8 + 80) = v20.st_size;
  *(v8 + 88) = tv_sec;
  *(v8 + 344) = *(a1 + 16);
  v18 = st_mode & 0xF000;
  v19 = 0;
  if (!getFileWriteGeneration(v7, v6, &v19))
  {
    *(v8 + 34) = 1;
    *(v8 + 24) = v19;
    *(v8 + 178) = v18 == 40960;
    *(v8 + 177) = v18 == 40960;
  }

  if (v18 != 40960)
  {
    *(v8 + 120) = getMaxXattrSize(v7, v6);
  }

  *a2 = v8;
  freeOpCtx(0);
  return 1;
}

uint64_t closeFd(int a1, void **a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2[1] != a2)
  {
    closeFd_cold_1();
  }

  freeOpCtx(a2);
  return 1;
}

uint64_t statFd(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (*(a1 + 8) != a1)
  {
    statFd_cold_1();
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = *(a1 + 40);
  v4 = *(a1 + 88);
  *a2 = *(a1 + 80);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = *(a1 + 34);
  *(a2 + 28) = *(a1 + 24);
  return 1;
}

uint64_t readFd(uint64_t a1, unint64_t a2, void *__buf, size_t __nbyte, unint64_t *a5, CFErrorRef *a6)
{
  v8 = __nbyte;
  v36 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    *a6 = 0;
  }

  if (*(a1 + 8) != a1)
  {
    readFd_cold_1();
  }

  v12 = *(a1 + 36);
  if (v12 == -1)
  {
    if (a6)
    {
      v18 = 0;
LABEL_19:
      result = 0;
      *a6 = v18;
      return result;
    }

    return 0;
  }

  v13 = *(a1 + 104);
  if ((*(a1 + 32) & 0xF000) == 0xA000)
  {
    v14 = *(a1 + 320);
    if (v14)
    {
      v15 = *(a1 + 328);
LABEL_8:
      v16 = v15 > a2;
      v17 = v15 - a2;
      if (v16)
      {
        if (v17 < v8)
        {
          v8 = v17;
        }

        memcpy(__buf, &v14[a2], v8);
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_26;
    }

    bzero(v35, 0x400uLL);
    if (v13 || (v13 = v35, !get_path_for_fd(v12, v35)))
    {
      v24 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
      if (v24)
      {
        v14 = v24;
        v25 = readlink(v13, v24, 0x400uLL);
        if ((v25 & 0x8000000000000000) == 0)
        {
          v15 = 1024;
          if (v25 < 0x400)
          {
            v15 = v25;
          }

          *(a1 + 320) = v14;
          *(a1 + 328) = v15;
          goto LABEL_8;
        }

        v29 = *__error();
        v30 = *__error();
        v31 = __error();
        v32 = strerror(*v31);
        v18 = CKPOSIXErrorCreateWithFormat(v29, @"readlink failed for fd:%d, path:%s: (%d) %s", v12, v13, v30, v32);
        free(v14);
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_18;
    }

    v26 = *__error();
    v27 = *__error();
    v28 = __error();
    v33 = strerror(*v28);
    v22 = CKPOSIXErrorCreateWithFormat(v26, @"get path failed for fd:%d: %d (%s)", v12, v27, v33);
LABEL_17:
    v18 = v22;
LABEL_18:
    if (a6)
    {
      goto LABEL_19;
    }

    if (v18)
    {
      CFRelease(v18);
    }

    return 0;
  }

  v8 = pread(*(a1 + 36), __buf, __nbyte, a2);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v19 = *__error();
    v20 = *__error();
    v21 = __error();
    v34 = strerror(*v21);
    v22 = CKPOSIXErrorCreateWithFormat(v19, @"pread failed on fd:%d, path:%s, offset:0x%llx: (%d) %s", v12, v13, a2, v20, v34);
    goto LABEL_17;
  }

LABEL_26:
  if (a5)
  {
    *a5 = v8;
  }

  return 1;
}

uint64_t getCacheBlobFd(uint64_t a1, char *name, __CFData **a3, CFErrorRef *a4)
{
  if (*(a1 + 8) != a1)
  {
    getCacheBlobFd_cold_1();
  }

  v8 = *(a1 + 36);
  v9 = *(a1 + 104);

  return CKGetCacheBlobFd(v9, v8, name, a3, a4);
}

uint64_t setCacheBlobFd(uint64_t a1, char *name, CFDataRef theData, CFErrorRef *a4)
{
  if (*(a1 + 8) != a1)
  {
    setCacheBlobFd_cold_1();
  }

  v8 = *(a1 + 36);
  v9 = *(a1 + 104);

  return CKSetCacheBlobFd(v9, v8, name, theData, a4);
}

uint64_t CSchunklist_for_file_callback(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 352);
  v3 = CKSchemeSignatureAndKeySize((v1 + 84));
  v4 = CFDataCreate(0, (v1 + 72), v3 + 16);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(v2, v4);
    CFRelease(v5);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t CKCopyChunkCache(char *a1, char *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v50 = 0;
  cf = 0;
  v41 = 0;
  if (CK_DEFAULT_LOG_BLOCK_0 != -1)
  {
    CKCopyChunkCache_cold_1();
  }

  memset(v48, 0, sizeof(v48));
  memset(v47, 0, sizeof(v47));
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"srcPath:%s, dstPath:%s\n", a1, a2);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKCopyChunkCache_cold_2();
    }

    v5 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v52 = v4;
      _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = -1;
  v9 = -1;
  v10 = 0;
  v11 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_32;
  }

  v12 = open(a1, 0);
  v13 = v12 != -1;
  if (v12 == -1)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKCopyChunkCache_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v15 = *MEMORY[0x277CBECE8];
      v16 = *__error();
      v17 = __error();
      v18 = strerror(*v17);
      v19 = CFStringCreateWithFormat(v15, 0, @"open failed on %s: %d (%s)\n", a1, v16, v18);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CKCopyChunkCache_cold_4();
      }

      v38 = v13;
      v20 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v52 = v19;
        _os_log_impl(&dword_243431000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v7 = 0;
      v6 = 0;
      v11 = 0;
      v10 = 0;
      v9 = -1;
      if (!v19)
      {
        goto LABEL_32;
      }

LABEL_27:
      CFRelease(v19);
      v10 = v38;
      goto LABEL_32;
    }

LABEL_28:
    v7 = 0;
    v6 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_32;
  }

  v9 = v12;
  if (openFdWithReadContext(a1, v12, &v50, v48, &v44))
  {
    goto LABEL_28;
  }

  if (BYTE8(v45) != 1)
  {
    v7 = 0;
    goto LABEL_30;
  }

  if (getChunkListCacheBlob(v50, &v41))
  {
    v41 = 0;
  }

  if (getFileSignatureCacheBlob(v50, &cf))
  {
    v14 = 0;
    cf = 0;
  }

  else
  {
    v14 = cf != 0;
  }

  v7 = v41;
  if (!v41 && !v14)
  {
    v11 = 1;
    goto LABEL_40;
  }

  v22 = open(a2, 0);
  if (v22 == -1)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKCopyChunkCache_cold_13();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v25 = *MEMORY[0x277CBECE8];
      v26 = *__error();
      v27 = __error();
      v28 = strerror(*v27);
      v19 = CFStringCreateWithFormat(v25, 0, @"open failed on %s: %d (%s)\n", a2, v26, v28);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CKCopyChunkCache_cold_14();
      }

      v38 = v13;
      v29 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v52 = v19;
        _os_log_impl(&dword_243431000, v29, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v6 = 0;
      v8 = -1;
      if (!v19)
      {
        v10 = 1;
        v11 = 0;
        goto LABEL_32;
      }

      v11 = 0;
      goto LABEL_27;
    }

LABEL_30:
    v6 = 0;
    v11 = 0;
LABEL_31:
    v10 = 1;
    goto LABEL_32;
  }

  v8 = v22;
  if (openFdWithReadContext(a2, v22, &v49, v47, v42[0].i64))
  {
    goto LABEL_30;
  }

  if (v42[1].u8[8] != 1)
  {
LABEL_58:
    v11 = 0;
LABEL_105:
    v6 = 1;
    goto LABEL_31;
  }

  if (v7)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    v24 = MutableBytePtr;
    if (HIDWORD(v45) == *(MutableBytePtr + 21) && v45 == *(MutableBytePtr + 25) && v44 == __PAIR128__(*(MutableBytePtr + 33), *(MutableBytePtr + 41)))
    {
      *(MutableBytePtr + 21) = v42[1].i32[3];
      *(MutableBytePtr + 25) = vextq_s8(*(v42 + 8), *(v42 + 8), 8uLL);
      *(MutableBytePtr + 41) = v42[0].i64[0];
      if (setChunkListCacheBlob(v49, v7))
      {
        goto LABEL_58;
      }

      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CKCopyChunkCache_cold_7();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        v39 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Copied chunk list cache from %s to %s (%llu/%llu)\n", a1, a2, *(&v44 + 1), v42[0].i64[1]);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CKCopyChunkCache_cold_8();
        }

        v37 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v52 = v39;
          _os_log_impl(&dword_243431000, v37, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        v31 = 1;
        v11 = 1;
LABEL_77:
        if (v39)
        {
          CFRelease(v39);
          v11 = v31;
        }

        goto LABEL_82;
      }

      v11 = 1;
    }

    else
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CKCopyChunkCache_cold_5();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        v39 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk list cache for %s, type:%u, mtime:%llu/%llu, ino:%llu/%llu, generation:%u/%u, sz:%llu/%llu\n", a1, v24[20], *(v24 + 25), v45, *(v24 + 33), *(&v44 + 1), *(v24 + 21), HIDWORD(v45), *(v24 + 41), v44);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CKCopyChunkCache_cold_6();
        }

        v30 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v52 = v39;
          _os_log_impl(&dword_243431000, v30, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        v31 = 0;
        v11 = 0;
        goto LABEL_77;
      }

      v11 = 0;
    }

LABEL_82:
    v32 = cf;
    if (cf)
    {
      goto LABEL_83;
    }

    CFRelease(v7);
LABEL_107:
    closeFdWithReadContext(v49, v47);
    goto LABEL_40;
  }

  v11 = 0;
  v32 = cf;
  if (!cf)
  {
    goto LABEL_107;
  }

LABEL_83:
  v33 = CFDataGetMutableBytePtr(v32);
  v34 = v33;
  if (HIDWORD(v45) == *(v33 + 21) && v45 == *(v33 + 25) && v44 == __PAIR128__(*(v33 + 33), *(v33 + 41)))
  {
    *(v33 + 21) = v42[1].i32[3];
    *(v33 + 25) = vextq_s8(*(v42 + 8), *(v42 + 8), 8uLL);
    *(v33 + 41) = v42[0].i64[0];
    if (setFileSignatureCacheBlob(v49, cf))
    {
      goto LABEL_105;
    }

    v38 = v13;
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKCopyChunkCache_cold_11();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v6 = 1;
      v10 = 1;
      v11 = 1;
      goto LABEL_32;
    }

    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Copied file signature cache from %s to %s (%llu/%llu)\n", a1, a2, *(&v44 + 1), v42[0].i64[1]);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKCopyChunkCache_cold_12();
    }

    v35 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v52 = v19;
      _os_log_impl(&dword_243431000, v35, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v6 = 1;
    v11 = 1;
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKCopyChunkCache_cold_9();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_105;
    }

    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid file signature cache for %s, type:%u, mtime:%llu/%llu, ino:%llu/%llu, generation:%u/%u, sz:%llu/%llu\n", a1, v34[20], *(v34 + 25), v45, *(v34 + 33), *(&v44 + 1), *(v34 + 21), HIDWORD(v45), *(v34 + 41), v44);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKCopyChunkCache_cold_10();
    }

    v38 = v13;
    v36 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v52 = v19;
      _os_log_impl(&dword_243431000, v36, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v6 = 1;
  }

  v10 = 1;
  if (v19)
  {
    goto LABEL_27;
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if ((v6 & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  closeFdWithReadContext(v49, v47);
  if (v10)
  {
LABEL_40:
    closeFdWithReadContext(v50, v48);
  }

LABEL_41:
  if (v9 != -1)
  {
    close(v9);
  }

  if (v8 != -1)
  {
    close(v8);
  }

  return v11;
}

os_log_t __CKCopyChunkCache_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_93()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_2_100()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_104()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_2_108()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_112()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_2_119()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_123()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_2_130()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_134()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_2_141()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_145()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKCopyChunkCache_block_invoke_2_152()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

uint64_t CKFixupChunkCacheAfterExchangeData(char *a1, char *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v55 = 0;
  v56 = 0;
  cf = 0;
  v46 = 0;
  if (CK_DEFAULT_LOG_BLOCK_0 != -1)
  {
    CKFixupChunkCacheAfterExchangeData_cold_1();
  }

  memset(v54, 0, sizeof(v54));
  memset(v53, 0, sizeof(v53));
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"srcPath:%s, dstPath:%s\n", a1, a2);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_2();
    }

    v5 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v58 = v4;
      _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = -1;
  v9 = -1;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_57;
  }

  v14 = open(a2, 0);
  v15 = v14 != -1;
  if (v14 == -1)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_3();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v7 = 0;
      v6 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v9 = -1;
      goto LABEL_57;
    }

    v16 = *MEMORY[0x277CBECE8];
    v17 = *__error();
    v18 = __error();
    v19 = strerror(*v18);
    v20 = CFStringCreateWithFormat(v16, 0, @"open failed on %s: %d (%s)\n", a2, v17, v19);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_4();
    }

    v21 = v15;
    v22 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v58 = v20;
      _os_log_impl(&dword_243431000, v22, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    v7 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v6 = 0;
    v8 = -1;
    v9 = -1;
    if (!v20)
    {
      goto LABEL_57;
    }

LABEL_23:
    CFRelease(v20);
    v6 = v21;
    goto LABEL_57;
  }

  v8 = v14;
  if (openFdWithReadContext(a2, v14, &v55, v53, &v47))
  {
    v7 = 0;
    v6 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_57;
  }

  if (BYTE8(v48) != 1)
  {
    v7 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_56:
    v13 = 0;
    v6 = 1;
    goto LABEL_57;
  }

  ChunkListCacheBlob = getChunkListCacheBlob(v55, &v46);
  if (ChunkListCacheBlob)
  {
    v12 = ChunkListCacheBlob == 22;
    v46 = 0;
  }

  else
  {
    v12 = 0;
  }

  FileSignatureCacheBlob = getFileSignatureCacheBlob(v55, &cf);
  if (FileSignatureCacheBlob)
  {
    v25 = 0;
    v11 = FileSignatureCacheBlob == 22;
    cf = 0;
  }

  else
  {
    v11 = 0;
    v25 = cf != 0;
  }

  v7 = v46;
  if (!v46 && !v25)
  {
    v7 = 0;
    v10 = 0;
    v6 = 1;
LABEL_36:
    v13 = 1;
    goto LABEL_57;
  }

  v26 = open(a1, 0);
  if (v26 == -1)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_13();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v30 = *MEMORY[0x277CBECE8];
      v31 = *__error();
      v32 = __error();
      v33 = strerror(*v32);
      v20 = CFStringCreateWithFormat(v30, 0, @"open failed on %s: %d (%s)\n", a1, v31, v33);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CKFixupChunkCacheAfterExchangeData_cold_14();
      }

      v21 = v15;
      v34 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v58 = v20;
        _os_log_impl(&dword_243431000, v34, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v10 = 0;
      v9 = -1;
      if (!v20)
      {
        v6 = 1;
        v13 = 0;
        goto LABEL_57;
      }

      v13 = 0;
      goto LABEL_23;
    }

    goto LABEL_55;
  }

  v9 = v26;
  if (openFdWithReadContext(a1, v26, &v56, v54, &v50))
  {
LABEL_55:
    v10 = 0;
    goto LABEL_56;
  }

  if (BYTE8(v51) != 1)
  {
LABEL_45:
    v13 = 0;
LABEL_92:
    v6 = 1;
    v10 = 1;
    goto LABEL_57;
  }

  --HIDWORD(v51);
  if (!v7)
  {
    v13 = 0;
    goto LABEL_87;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(v7);
  v28 = MutableBytePtr;
  if (HIDWORD(v51) != *(MutableBytePtr + 21) || (v29 = v48, v48 != *(MutableBytePtr + 25)) || __PAIR128__(v47, *(&v50 + 1)) != *(MutableBytePtr + 33))
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_5();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v13 = 0;
      v12 = 1;
      goto LABEL_87;
    }

    v36 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid chunk list cache for %s, type:%u, mtime:%llu/%llu, ino:%llu/%llu, generation:%u/%u, sz:%llu/%llu\n", a2, v28[20], *(v28 + 25), v48, *(v28 + 33), *(&v50 + 1), *(v28 + 21), HIDWORD(v51), *(v28 + 41), v47);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_6();
    }

    v37 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v58 = v36;
      _os_log_impl(&dword_243431000, v37, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v38 = 0;
    v13 = 0;
    v12 = 1;
    if (!v36)
    {
      goto LABEL_87;
    }

LABEL_84:
    CFRelease(v36);
    v13 = v38;
    goto LABEL_87;
  }

  *(MutableBytePtr + 21) = HIDWORD(v48);
  *(MutableBytePtr + 25) = v29;
  *(MutableBytePtr + 33) = *(&v47 + 1);
  if (setChunkListCacheBlob(v55, v7))
  {
    goto LABEL_45;
  }

  if (CK_DEFAULT_LOG_BLOCK_0 != -1)
  {
    CKFixupChunkCacheAfterExchangeData_cold_7();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    goto LABEL_87;
  }

  v36 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Fixed up chunk list cache for %s (%llu)\n", a2, *(&v47 + 1));
  if (CK_DEFAULT_LOG_BLOCK_0 != -1)
  {
    CKFixupChunkCacheAfterExchangeData_cold_8();
  }

  v43 = CK_DEFAULT_LOG_INTERNAL_0;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v58 = v36;
    _os_log_impl(&dword_243431000, v43, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
  }

  v38 = 1;
  v13 = 1;
  if (v36)
  {
    goto LABEL_84;
  }

LABEL_87:
  if (!cf)
  {
    goto LABEL_92;
  }

  v39 = CFDataGetMutableBytePtr(cf);
  v40 = v39;
  if (HIDWORD(v51) == *(v39 + 21) && (v41 = v48, v48 == *(v39 + 25)) && __PAIR128__(v47, *(&v50 + 1)) == *(v39 + 33))
  {
    *(v39 + 21) = HIDWORD(v48);
    *(v39 + 25) = v41;
    *(v39 + 33) = *(&v47 + 1);
    if (setFileSignatureCacheBlob(v55, cf))
    {
      goto LABEL_92;
    }

    v21 = v15;
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_11();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v6 = 1;
      v10 = 1;
      goto LABEL_36;
    }

    v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Fixed up file signature cache for %s (%llu)\n", a2, *(&v47 + 1));
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_12();
    }

    v44 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v58 = v20;
      _os_log_impl(&dword_243431000, v44, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v10 = 1;
    v13 = 1;
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_9();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v6 = 1;
      v10 = 1;
      v11 = 1;
      goto LABEL_57;
    }

    v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid file signature cache for %s, type:%u, mtime:%llu/%llu, ino:%llu/%llu, generation:%u/%u, sz:%llu/%llu\n", a2, v40[20], *(v40 + 25), v48, *(v40 + 33), *(&v50 + 1), *(v40 + 21), HIDWORD(v51), *(v40 + 41), v47);
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CKFixupChunkCacheAfterExchangeData_cold_10();
    }

    v21 = v15;
    v42 = CK_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v58 = v20;
      _os_log_impl(&dword_243431000, v42, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    v10 = 1;
    v11 = 1;
  }

  v6 = 1;
  if (v20)
  {
    goto LABEL_23;
  }

LABEL_57:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if ((v6 & v12) == 1)
  {
    setCacheBlob(v55, "com.apple.cscache", 0);
  }

  if ((v6 & v11) == 1)
  {
    setFileSignatureCacheBlob(v55, 0);
    if (!v10)
    {
      goto LABEL_65;
    }
  }

  else if (!v10)
  {
LABEL_65:
    if (!v6)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  closeFdWithReadContext(v56, v54);
  if (v6)
  {
LABEL_66:
    closeFdWithReadContext(v55, v53);
  }

LABEL_67:
  if (v9 != -1)
  {
    close(v9);
  }

  if (v8 != -1)
  {
    close(v8);
  }

  return v13;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_162()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_2_166()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_170()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_2_174()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_178()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_2_182()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_186()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_2_193()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_197()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_2_201()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_205()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __CKFixupChunkCacheAfterExchangeData_block_invoke_2_212()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

uint64_t openFdUncached(uint64_t a1, uint64_t *a2, CFErrorRef *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = openFd(a1, a2, a3);
  if (v4)
  {
    v5 = *a2;
    if ((*(*a2 + 32) & 0xF000) != 0xA000)
    {
      v6 = *(v5 + 104);
      v7 = *(v5 + 36);
      if (make_fd_uncached(*(v5 + 36)))
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          openFdUncached_cold_1();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *MEMORY[0x277CBECE8];
          v9 = *(v5 + 40);
          v10 = *__error();
          v11 = __error();
          v12 = strerror(*v11);
          v13 = CFStringCreateWithFormat(v8, 0, @"make_fd_uncached failed for fd:%d, path:%s, ino:%llu: %d (%s)\n", v7, v6, v9, v10, v12);
          if (CK_DEFAULT_LOG_BLOCK_0 != -1)
          {
            openFdUncached_cold_2();
          }

          v14 = CK_DEFAULT_LOG_INTERNAL_0;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v17 = v13;
            _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          if (v13)
          {
            CFRelease(v13);
          }
        }
      }
    }
  }

  return v4;
}

os_log_t __openFdUncached_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __openFdUncached_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_249()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_2_256()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_260()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_2_267()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_271()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_2_278()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_282()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_2_289()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_294()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_2_301()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_305()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __getChunkListCache_block_invoke_2_312()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_329()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_336()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_340()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_347()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_351()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_358()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_363()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_370()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_374()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_381()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_385()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_392()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_396()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_403()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_407()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_414()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_421()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkUsingChunkCache_block_invoke_2_428()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

uint64_t _SetSourceChunk(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  if (*(v2 + 8))
  {
    _SetSourceChunk_cold_1();
  }

  if (*(v2 + 64))
  {
    _SetSourceChunk_cold_2();
  }

  v5 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  *(v2 + 8) = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  *(v2 + 80) = 0;
  *(v2 + 72) = a2;
  if (!CKChunkSignatureGeneratorCreate((v2 + 64), *(a1 + 152)) || !*(v2 + 64))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v2 + 32))
  {
    _SetSourceChunk_cold_3();
  }

  if (*(v2 + 56))
  {
    _SetSourceChunk_cold_4();
  }

  result = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  return result;
}

void _ClearSourceChunk(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(v1 + 8);
  if (v2)
  {
    free(v2);
    *(v1 + 8) = 0;
  }

  v3 = *(v1 + 48);
  *(v1 + 40) = 0;
  v4 = *(v1 + 56);
  if (v3)
  {
    if (!v4)
    {
      _ClearSourceChunk_cold_1();
    }

    free(v4);
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  else if (v4)
  {
    _ClearSourceChunk_cold_2();
  }

  v5 = *(v1 + 64);
  if (v5)
  {
    CKBaseRelease(v5);
  }

  *(v1 + 64) = 0;
  v6 = *(v1 + 32);
  if (v6)
  {
    CKBaseRelease(v6);
  }

  *(v1 + 32) = 0;
}

os_log_t __chunkerFileReadBufferSize_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __chunkerFileReadBufferSize_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

uint64_t CSfixed_subchunk_stream(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 136);
  v34 = 0;
  if (!a3)
  {
    CSfixed_subchunk_stream_cold_6();
  }

  v8 = a3;
  v10 = a4;
  while (1)
  {
    v11 = *(v5 + 32);
    if (!v11)
    {
      CKChunkDigestArgumentsV1Create(&v34, 0, 0);
      if (!CKChunkSignatureGeneratorCreate((v5 + 32), v34))
      {
        break;
      }

      v11 = *(v5 + 32);
      if (!v11)
      {
        break;
      }
    }

    v12 = *(v5 + 40) % a4;
    if (v12 + v8 < a4 && (a5 & 1) == 0)
    {
      CKChunkSignatureGeneratorUpdate(v11);
      v29 = 0;
      *(v5 + 40) += v8;
      goto LABEL_43;
    }

    v13 = a4 - v12;
    if (v13 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v13;
    }

    CKChunkSignatureGeneratorUpdate(v11);
    if (!CKChunkSignatureGeneratorFinish(*(v5 + 32)))
    {
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CSfixed_subchunk_stream_cold_4();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        v30 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"CKChunkSignatureGeneratorFinish failed\n");
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSfixed_subchunk_stream_cold_5();
        }

        v31 = CK_DEFAULT_LOG_INTERNAL_0;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v36 = v30;
          _os_log_impl(&dword_243431000, v31, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v30)
        {
          CFRelease(v30);
        }
      }

      *(v5 + 64) = 0;
      break;
    }

    v15 = CKChunkDigestResultsChunkSignature(0);
    v16 = CKSchemeAndSignatureSize(v15);
    v18 = *(v5 + 48);
    v17 = *(v5 + 52);
    if (v18 <= v17)
    {
      v19 = (2 * v18);
      v20 = ceilf(v8 / v10);
      if (v20 >= v19)
      {
        v19 = v20;
      }

      v21 = v19;
      *(v5 + 48) = v21;
      v22 = *(v5 + 56);
      v23 = v16 * v21 + 1;
      if (v22)
      {
        v24 = malloc_type_realloc(v22, v23, 0x100004077774924uLL);
      }

      else
      {
        v24 = malloc_type_calloc(1uLL, v23, 0x100004077774924uLL);
      }

      *(v5 + 56) = v24;
      v17 = *(v5 + 52);
    }

    if (v17)
    {
      v25 = (*(v5 + 56) + v16 * v17);
      if (!v15)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (a4 >= 0x40000)
      {
        CSfixed_subchunk_stream_cold_3();
      }

      v25 = *(v5 + 56);
      *v25 = a4 >> 10;
      if (!v15)
      {
LABEL_48:
        CSfixed_subchunk_stream_cold_2();
      }
    }

    memcpy(v25 + 1, v15, v16);
    v26 = *(v5 + 52);
    if (v26 >= 0x50)
    {
      CSfixed_subchunk_stream_cold_1();
    }

    *(v5 + 52) = v26 + 1;
    if (v34)
    {
      CFRelease(v34);
    }

    v34 = 0;
    v27 = *(v5 + 32);
    if (v27)
    {
      CFRelease(v27);
    }

    v28 = *(v5 + 40) + v14;
    *(v5 + 32) = 0;
    *(v5 + 40) = v28;
    a2 += v14;
    v8 -= v14;
    if (!v8)
    {
      v29 = 0;
      goto LABEL_43;
    }
  }

  v29 = -1;
LABEL_43:
  if (v34)
  {
    CFRelease(v34);
  }

  v34 = 0;
  v32 = *(v5 + 32);
  if (v32)
  {
    CFRelease(v32);
  }

  *(v5 + 32) = 0;
  return v29;
}

uint64_t CS_fixed_chunk_stream_accumulate(uint64_t a1, const void *a2, size_t a3)
{
  v6 = *(a1 + 136);
  CKChunkSignatureGeneratorUpdate(*(v6 + 64));
  if (*(a1 + 179))
  {
    goto LABEL_7;
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 80);
  if (!v7)
  {
    if (v8)
    {
      CS_fixed_chunk_stream_accumulate_cold_1();
    }

    v8 = 0;
  }

  v9 = malloc_type_realloc(v7, v8 + a3, 0xD9087845uLL);
  if (v9)
  {
    *(v6 + 8) = v9;
    memcpy(&v9[*(v6 + 80)], a2, a3);
LABEL_7:
    result = 0;
    *(v6 + 80) += a3;
    return result;
  }

  free(*(v6 + 8));
  *(v6 + 8) = 0;
  return 0xFFFFFFFFLL;
}

uint64_t CSchunklist_add_stream(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 136);
  if (CKChunkSignatureGeneratorFinish(*(v2 + 64)))
  {
    v3 = *(v2 + 64);
    if (v3)
    {
      CKBaseRelease(v3);
    }

    *(v2 + 64) = 0;
    if (*(v2 + 80))
    {
      CopyChunkSignatureAndKeyFromChunkDigestResults(v2 + 72, 0);
      if ((*(a1 + 179) & 1) == 0)
      {
        *(v2 + 25) = 1;
        *v2 = *(a1 + 36);
      }

      *v2 = *(a1 + 56);
      v4 = *(a1 + 440);
      *(a1 + 440) = v4 + 1;
      *(v2 + 16) = v4;
      v5 = *(v2 + 80);
      v6 = *(a1 + 256) + 56 * *(a1 + 252);
      *(v6 + 40) += v5;
      ++*(v6 + 48);
      *(a1 + 424) += v5;
      if (*(a1 + 184) != 1)
      {
        goto LABEL_48;
      }

      memset(v18, 0, 43);
      CShex_to_string((v2 + 84), 21, v18);
      v7 = *(a1 + 112);
      if (*(a1 + 544))
      {
        bzero(__str, 0x400uLL);
        snprintf(__str, 0x400uLL, "%s: %llu, %llu, o:0x%llx, sz:0x%x(%u), s:%s\n", v7, *(a1 + 56), *(v2 + 16), *(v2 + 72), *(v2 + 80), *(v2 + 80), v18);
        strcat(*(a1 + 544), __str);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_stream_cold_1();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_48;
        }

        v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s: %llu, %lld, o:0x%llx, sz:0x%x(%u), s:%s\n", v7, *(a1 + 56), *(v2 + 16), *(v2 + 72), *(v2 + 80), *(v2 + 80), v18, 0);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_stream_cold_2();
        }

        v9 = CK_DEFAULT_LOG_INTERNAL_0;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
LABEL_46:
          if (v8)
          {
            CFRelease(v8);
          }

LABEL_48:
          if (*(a1 + 180))
          {
            return 0;
          }

          else
          {
            return (*(a1 + 128))(a1);
          }
        }

        *__str = 138543362;
        v17 = v8;
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_stream_cold_3();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_48;
        }

        v15 = "E";
        if (*(v2 + 84) >= 0)
        {
          v15 = "-";
        }

        v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s: %s, %lld, o:0x%llx, sz:0x%x(%u), s:%s\n", v7, v15, *(v2 + 16), *(v2 + 72), *(v2 + 80), *(v2 + 80), v18, 0);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_stream_cold_4();
        }

        v9 = CK_DEFAULT_LOG_INTERNAL_0;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_46;
        }

        *__str = 138543362;
        v17 = v8;
      }

      _os_log_impl(&dword_243431000, v9, OS_LOG_TYPE_DEBUG, "%{public}@", __str, 0xCu);
      goto LABEL_46;
    }

    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CSchunklist_add_stream_cold_5();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Ignoring attempt to add 0 length chunk\n");
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CSchunklist_add_stream_cold_6();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *__str = 138543362;
        v17 = v13;
        _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", __str, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    return 0;
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CSchunklist_add_stream_cold_7();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"CKChunkSignatureGeneratorFinish failed\n");
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CSchunklist_add_stream_cold_8();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *__str = 138543362;
        v17 = v10;
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", __str, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    *(v2 + 64) = 0;
    return 0xFFFFFFFFLL;
  }
}

char *CopyChunkSignatureAndKeyFromChunkDigestResults(uint64_t a1, uint64_t a2)
{
  v4 = CKChunkDigestResultsChunkSignature(a2);
  result = CKChunkDigestResultsChunkKey(a2);
  v6 = result;
  if (v4)
  {
    v7 = CKChunkSchemeAndSignatureSize(v4);
    result = memcpy((a1 + 12), v4, v7);
  }

  v9 = *(a1 + 12);
  v8 = (a1 + 12);
  if (v9 < 0 && v6)
  {
    v10 = CKChunkSchemeAndSignatureSize(v8);
    v11 = CKChunkSchemeAndEncryptionKeySize(v6);

    return memcpy(&v8[v10], v6, v11);
  }

  return result;
}

double CSchunklist_add(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v38[1002] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 136);
  v11 = CKChunkDigestArgumentsChunkScheme(*(a1 + 152));
  if (!a4)
  {
    v13 = *(a1 + 544);
    if (v13)
    {
      bzero(v38, 0x3E2uLL);
      strcpy(__s2, "  === segment end marker ===\n");
      strcat(v13, __s2);
    }

    *(v10 + 8) = 0;
    goto LABEL_66;
  }

  if (a5 <= 0)
  {
    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CSchunklist_add_cold_9();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Ignoring attempt to add a chunk with invalid length %d.\n", a5);
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CSchunklist_add_cold_10();
      }

      v15 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *__s2 = 138543362;
        *&__s2[4] = v14;
        _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_DEBUG, "%{public}@", __s2, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  else
  {
    v12 = v11;
    if (*(a1 + 179))
    {
      *v10 = *(a1 + 56);
    }

    else
    {
      *(v10 + 25) = 1;
      *v10 = *(a1 + 36);
    }

    *(v10 + 72) = a3;
    *(v10 + 80) = a5;
    *(v10 + 8) = a4;
    *(v10 + 16) = a2;
    v16 = *(a1 + 256) + 56 * *(a1 + 252);
    *(v16 + 40) += a5;
    ++*(v16 + 48);
    if (*(a1 + 183) == 1)
    {
      *(a1 + 480) = mach_absolute_time();
    }

    v33 = 0;
    v17 = CKCalculateChunkSignatureAndEncryptionKey(*(v10 + 8), *(v10 + 80), *(a1 + 152), &v33);
    if ((v12 & 0x80) == 0)
    {
      if (!v17)
      {
        goto LABEL_78;
      }

      CopyChunkSignatureAndKeyFromChunkDigestResults(v10 + 72, v33);
      if (v33)
      {
        CKBaseRelease(v33);
      }

      v33 = 0;
LABEL_39:
      if (*(a1 + 183) == 1)
      {
        *(a1 + 488) += mach_absolute_time() - *(a1 + 480);
      }

      if (*(a1 + 184) != 1)
      {
        goto LABEL_65;
      }

      v24 = *(a1 + 112);
      v36 = 0;
      memset(v35, 0, sizeof(v35));
      memset(v34, 0, 43);
      v25 = *(v10 + 80);
      if (v25 >= 0x50)
      {
        v26 = 80;
      }

      else
      {
        v26 = v25;
      }

      CShex_to_string((v10 + 84), 21, v34);
      CShex_to_string((*(v10 + 8) + (*(v10 + 80) - v26)), v26, v35);
      if (*(a1 + 544))
      {
        bzero(__s2, 0x400uLL);
        snprintf(__s2, 0x400uLL, "%s: %llu, %lld, o:0x%llx, sz:0x%x(%u), s:%s, (%u, %s)\n", v24, *(a1 + 56), a2, a3, a5, a5, v34, v26, v35);
        strcat(*(a1 + 544), __s2);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_cold_5();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_65;
        }

        v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s: %llu, %lld, o:0x%llx, sz:0x%x(%u), s:%s, (%u, %s)\n", v24, *(a1 + 56), a2, a3, a5, a5, v34, v26, v35);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_cold_6();
        }

        v28 = CK_DEFAULT_LOG_INTERNAL_0;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
LABEL_63:
          if (v27)
          {
            CFRelease(v27);
          }

LABEL_65:
          *(a1 + 424) += *(v10 + 80);
LABEL_66:
          if ((*(a1 + 180) & 1) == 0)
          {
            (*(a1 + 128))(a1);
          }

          goto LABEL_78;
        }

        *__s2 = 138543362;
        *&__s2[4] = v27;
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_cold_7();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_65;
        }

        v29 = "E";
        if ((v12 & 0x80) == 0)
        {
          v29 = "-";
        }

        v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s: %s, %llu, o:0x%llx, sz:0x%x(%u), s:%s", v24, v29, a2, a3, a5, a5, v34);
        if (CK_DEFAULT_LOG_BLOCK_0 != -1)
        {
          CSchunklist_add_cold_8();
        }

        v28 = CK_DEFAULT_LOG_INTERNAL_0;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_63;
        }

        *__s2 = 138543362;
        *&__s2[4] = v27;
      }

      _os_log_impl(&dword_243431000, v28, OS_LOG_TYPE_DEBUG, "%{public}@", __s2, 0xCu);
      goto LABEL_63;
    }

    if (!v17)
    {
      goto LABEL_78;
    }

    CopyChunkSignatureAndKeyFromChunkDigestResults(v10 + 72, v33);
    if (v33)
    {
      CKBaseRelease(v33);
    }

    v33 = 0;
    if (*(a1 + 179))
    {
      goto LABEL_39;
    }

    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CSchunklist_add_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"encrypting\n");
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CSchunklist_add_cold_2();
      }

      v19 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
      {
        *__s2 = 138543362;
        *&__s2[4] = v18;
        _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_DEBUG, "%{public}@", __s2, 0xCu);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    v20 = *(v10 + 8);
    v21 = *(v10 + 80);
    v22 = v33;
    v23 = CKChunkDigestResultsChunkLength(v33);
    if (doEncrypt(v20, v21, v22, v23))
    {
      goto LABEL_39;
    }

    if (CK_DEFAULT_LOG_BLOCK_0 != -1)
    {
      CSchunklist_add_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v30 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"doEncrypt failed\n");
      if (CK_DEFAULT_LOG_BLOCK_0 != -1)
      {
        CSchunklist_add_cold_4();
      }

      v31 = CK_DEFAULT_LOG_INTERNAL_0;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
      {
        *__s2 = 138543362;
        *&__s2[4] = v30;
        _os_log_impl(&dword_243431000, v31, OS_LOG_TYPE_ERROR, "%{public}@", __s2, 0xCu);
      }

      if (v30)
      {
        CFRelease(v30);
      }
    }
  }

LABEL_78:
  *(v10 + 80) = 0;
  result = 0.0;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  return result;
}

os_log_t __setChunkListCache_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_718()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_2_725()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_729()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_2_736()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_740()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_757()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_3_768()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_772()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_2_779()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_784()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_2_791()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_795()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

os_log_t __setChunkListCache_block_invoke_2_802()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_0 = result;
  return result;
}

void CSParametersFinalize(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t CSChunkCryptor_Destroy(uint64_t a1, CFErrorRef *a2)
{
  if (a1 && (v4 = *(a1 + 56)) != 0)
  {
    v5 = v4[1];
    if (v5)
    {
      free(v5);
      v4[1] = 0;
    }

    v6 = v4[7];
    if (v6)
    {
      CFRelease(v6);
      v4[7] = 0;
    }

    v7 = v4[8];
    if (v7)
    {
      CFRelease(v7);
      v4[8] = 0;
    }

    v8 = v4[9];
    if (v8)
    {
      CFRelease(v8);
      v4[9] = 0;
    }

    v9 = v4[11];
    if (v9)
    {
      free(v9);
    }

    free(v4);
    *(a1 + 56) = 0;
    return 1;
  }

  else
  {
    v11 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    result = 0;
    *a2 = v11;
  }

  return result;
}

uint64_t CSChunkCryptor_InitializeEncryptor(uint64_t a1, const __CFData *a2, const __CFData *a3, unint64_t a4, unint64_t a5, CFErrorRef *a6)
{
  if (a5 >= a4)
  {
    if (_CSChunkCryptor_Initialize(a1, a2, a3, a4, a5, a6))
    {
      result = 1;
      *(*(a1 + 56) + 48) = 1;
      return result;
    }
  }

  else
  {
    *a6 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 0, 0);
  }

  result = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t _CSChunkCryptor_Initialize(uint64_t a1, CFDataRef theData, const __CFData *a3, uint64_t a4, uint64_t a5, CFErrorRef *a6)
{
  v26 = *MEMORY[0x277D85DE8];
  if (CFDataGetLength(theData) != 32)
  {
    v14 = *MEMORY[0x277CBECE8];
    v15 = *MEMORY[0x277CBEE48];
    v16 = 5;
    goto LABEL_7;
  }

  v12 = malloc_type_malloc(0x60uLL, 0x1060040A3E8CD77uLL);
  if (!v12)
  {
    v14 = *MEMORY[0x277CBECE8];
    v15 = *MEMORY[0x277CBEE48];
    v16 = 1;
    goto LABEL_7;
  }

  v13 = v12;
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  *(v12 + 49) = 256;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  ccsha256_di();
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  *bytes = 0u;
  v23 = 0u;
  CFDataGetLength(theData);
  CFDataGetBytePtr(theData);
  if (cchkdf())
  {
    free(v13);
    cc_clear();
    v14 = *MEMORY[0x277CBECE8];
    v15 = *MEMORY[0x277CBEE48];
    v16 = 2;
LABEL_7:
    v17 = CFErrorCreate(v14, v15, v16, 0);
    result = 0;
    *a6 = v17;
    return result;
  }

  v19 = *MEMORY[0x277CBECE8];
  v13[7] = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 32);
  v13[8] = CFDataCreate(v19, v24, 32);
  v13[9] = CFDataCreate(v19, v25, 32);
  cc_clear();
  v20 = ccsha256_di();
  *v13 = v20;
  v13[1] = malloc_type_malloc(*(v20 + 8) + *(v20 + 16) + 12, 0x100004052888210uLL);
  ccdigest_init();
  CFDataGetBytePtr(a3);
  if (CFDataGetLength(a3) <= 31)
  {
    CFDataGetLength(a3);
  }

  __memcpy_chk();
  ccsha256_di();
  CFDataGetLength(v13[8]);
  CFDataGetBytePtr(v13[8]);
  cchmac();
  v21 = ccaes_ctr_crypt_mode();
  v13[10] = v21;
  v13[11] = malloc_type_malloc(*v21, 0x1000040451B5BE8uLL);
  CFDataGetLength(v13[9]);
  CFDataGetBytePtr(v13[9]);
  ccctr_init();
  *(a1 + 56) = v13;
  cc_clear();
  cc_clear();
  return 1;
}

uint64_t CSChunkCryptor_InitializeDecryptor(uint64_t a1, const __CFData *a2, const __CFData *a3, unint64_t a4, unint64_t a5, CFErrorRef *a6)
{
  if (a5 >= a4)
  {
    if (_CSChunkCryptor_Initialize(a1, a2, a3, a4, a5, a6))
    {
      *(*(a1 + 56) + 48) = 0;
      return 1;
    }
  }

  else
  {
    *a6 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 0, 0);
  }

  result = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t CSChunkCryptor_Update(uint64_t a1, uint64_t a2, unsigned int a3, CFErrorRef *a4)
{
  v4 = *(a1 + 56);
  if (!v4)
  {
    v9 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 7, 0);
    result = 0;
    *a4 = v9;
    return result;
  }

  if (*(v4 + 49))
  {
    v6 = 0;
    v7 = a3;
  }

  else
  {
    v11 = *(v4 + 32);
    v7 = a3;
    v12 = v11 + a3;
    v13 = *(v4 + 16);
    v14 = v13 - v11;
    if (v12 <= v13)
    {
      v6 = a3;
    }

    else
    {
      v6 = v14;
    }
  }

  if (v7 > v6)
  {
    *(v4 + 49) = 1;
  }

  if (v6 && *(v4 + 48))
  {
    ccdigest_update();
  }

  ccctr_update();
  *(v4 + 32) += v7;
  v15 = *(v4 + 48);
  if (v6 && !*(v4 + 48))
  {
    ccdigest_update();
    v15 = *(v4 + 48);
  }

  if (v15)
  {
    return 1;
  }

  result = 1;
  if (*(v4 + 49))
  {
    v16 = v7 - v6;
    if (v7 > v6)
    {
      v17 = *(v4 + 50) & 1;
      v18 = (a2 + v6);
      do
      {
        if (*v18++)
        {
          v17 = 0;
        }

        *(v4 + 50) = v17;
        --v16;
      }

      while (v16);
      return 1;
    }
  }

  return result;
}

uint64_t CSChunkCryptor_Finalize(uint64_t a1, uint64_t a2, unsigned int a3, CFErrorRef *a4)
{
  v5 = *(a1 + 56);
  if (!v5)
  {
    v7 = *MEMORY[0x277CBECE8];
    v8 = *MEMORY[0x277CBEE48];
    v9 = 7;
    goto LABEL_17;
  }

  cc_clear();
  free(*(v5 + 88));
  *(v5 + 88) = 0;
  (*(*v5 + 56))();
  cc_clear();
  if (!*(a1 + 24))
  {
    goto LABEL_10;
  }

  ccsha256_di();
  CFDataGetLength(*(a1 + 24));
  CFDataGetBytePtr(*(a1 + 24));
  if (!cchkdf())
  {
    if (cchkdf())
    {
      v9 = 2;
LABEL_16:
      v7 = *MEMORY[0x277CBECE8];
      v8 = *MEMORY[0x277CBEE48];
      goto LABEL_17;
    }

    CFDataGetBytePtr(*(v5 + 56));
    v10 = cc_cmp_safe();
    cc_clear();
    cc_clear();
    cc_clear();
    if (v10)
    {
      v9 = 4;
      goto LABEL_16;
    }

LABEL_10:
    if (*(v5 + 48) || (ccsha256_di(), CFDataGetLength(*(v5 + 56)), CFDataGetBytePtr(*(v5 + 56)), cchmac(), !cc_cmp_safe()))
    {
      if (*(v5 + 50))
      {
        return 1;
      }

      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_16;
  }

  cc_clear();
  v7 = *MEMORY[0x277CBECE8];
  v8 = *MEMORY[0x277CBEE48];
  v9 = 2;
LABEL_17:
  v12 = CFErrorCreate(v7, v8, v9, 0);
  result = 0;
  *a4 = v12;
  return result;
}

uint64_t cs_longrdlock(uint64_t a1)
{
  v2 = pthread_mutex_lock((a1 + 200));
  if (!v2)
  {
    v2 = pthread_rwlock_rdlock(a1);
    if (v2)
    {
      pthread_mutex_unlock((a1 + 200));
    }

    *(a1 + 264) = 0;
  }

  return v2;
}

uint64_t cs_longrdunlock(uint64_t a1)
{
  if (*(a1 + 264))
  {
    cs_longrdunlock_cold_1();
  }

  result = pthread_rwlock_unlock(a1);
  if (!result)
  {

    return pthread_mutex_unlock((a1 + 200));
  }

  return result;
}

os_log_t __CKChunkStoreCreate_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreCreate_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreCreate_block_invoke_9()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreCreate_block_invoke_2_16()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

void CKChunkStoreRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t *_CSCheckChunkStoreDB(uint64_t *result, sqlite3_int64 a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*(result + 17))
  {
    return result;
  }

  v3 = result;
  result = _CSRemovePendingBatchesForInode(result, a2);
  if (*(v3 + 17))
  {
    return result;
  }

  if (a2)
  {
    result = _CSPrepareStatement(v3, @"SELECT pft_rowid, pft_token FROM CSStoragePendingFileChunklistTable where pft_inode = ?", "SELECT pft_rowid, pft_token FROM CSStoragePendingFileChunklistTable where pft_inode = ?");
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = sqlite3_bind_int64(result[2], 1, a2);
    if (v5)
    {
      v6 = v5;
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCheckChunkStoreDB_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v7 = *MEMORY[0x277CBECE8];
        v8 = sqlite3_errmsg(v3[3]);
        v9 = CFStringCreateWithFormat(v7, 0, @"sqlite3_bind_int64 for inode: %lld returned: %d (%s)\n", a2, v6, v8);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCheckChunkStoreDB_cold_2();
        }

        v10 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v41 = v9;
          _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        v11 = 0;
        goto LABEL_14;
      }

      v11 = 0;
      goto LABEL_64;
    }
  }

  else
  {
    result = _CSPrepareStatement(v3, @"SELECT pft_rowid, pft_token FROM CSStoragePendingFileChunklistTable", "SELECT pft_rowid, pft_token FROM CSStoragePendingFileChunklistTable");
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  v11 = _CSPrepareStatement(v3, @"SELECT clt_count, clt_chunkRowIDs FROM CSStorageChunkListTable WHERE clt_rowid = ?", "SELECT clt_count, clt_chunkRowIDs FROM CSStorageChunkListTable WHERE clt_rowid = ?");
  if (!v11)
  {
    goto LABEL_64;
  }

  alloc = *MEMORY[0x277CBECE8];
  while (1)
  {
    v12 = CS_sqlite3_step(v4);
    if (v12 != 100)
    {
      break;
    }

    v13 = sqlite3_column_int64(v4[2], 0);
    v14 = sqlite3_column_int64(v4[2], 1);
    if (!a2)
    {
      goto LABEL_39;
    }

    memset(&v37, 0, sizeof(v37));
    bzero(buf, 0x400uLL);
    if (CKChunkStoreGetLocation(v3, buf, 0x400uLL))
    {
      if (stat(buf, &v37))
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCheckChunkStoreDB_cold_4();
        }

        v15 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *v38 = 136315138;
          *v39 = buf;
          v16 = v15;
          v17 = "stat failed for %s";
          v18 = 12;
LABEL_38:
          _os_log_impl(&dword_243431000, v16, OS_LOG_TYPE_ERROR, v17, v38, v18);
        }
      }

      else
      {
        st_dev = v37.st_dev;
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCheckChunkStoreDB_cold_5();
        }

        v21 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *v38 = 67109632;
          *v39 = st_dev;
          *&v39[4] = 2048;
          *&v39[6] = a2;
          *&v39[14] = 2048;
          *&v39[16] = 0x8000;
          _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "fsopen(%d,%llu,0x%0llx): unimplemented; returning -1\n", v38, 0x1Cu);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCheckChunkStoreDB_cold_6();
          }
        }

        v22 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v23 = v37.st_dev;
          v24 = __error();
          v25 = strerror(*v24);
          *v38 = 134218498;
          *v39 = v23;
          *&v39[8] = 2048;
          *&v39[10] = a2;
          *&v39[18] = 2080;
          *&v39[20] = v25;
          v16 = v22;
          v17 = "open (%lld,%lld) failed: %s";
          v18 = 32;
          goto LABEL_38;
        }
      }
    }

    else
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCheckChunkStoreDB_cold_3();
      }

      v19 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *v38 = 0;
        v16 = v19;
        v17 = "CKChunkStoreGetLocation failed\n";
        v18 = 2;
        goto LABEL_38;
      }
    }

LABEL_39:
    sqlite3_bind_int64(v11[2], 1, v14);
    v26 = CS_sqlite3_step(v11);
    if (v26 == 100)
    {
      v27 = sqlite3_column_int64(v11[2], 0);
      v28 = sqlite3_column_blob(v11[2], 1);
      if (_CSBeginTransactionSqlRc(v3))
      {
        goto LABEL_64;
      }

      _CSReleaseOrphanedChunks(v3, v28, v27);
      if (_CSEndTransactionSqlRc(v3))
      {
        _CSRollbackTransactionSqlRc(v3);
      }
    }

    else
    {
      v29 = v26;
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCheckChunkStoreDB_cold_7();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v30 = sqlite3_errmsg(v3[3]);
        v31 = CFStringCreateWithFormat(alloc, 0, @"sqlite3_step returned: %d (%s), listToken: %llu\n", v29, v30, v14);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCheckChunkStoreDB_cold_8();
        }

        v32 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v41 = v31;
          _os_log_impl(&dword_243431000, v32, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v31)
        {
          CFRelease(v31);
        }
      }
    }

    if (sqlite3_reset(v11[2]) || sqlite3_clear_bindings(v11[2]))
    {
      goto LABEL_64;
    }

    CSsql_corruption_checking_do_0(v3, v3[3], "DELETE FROM CSStoragePendingFileChunklistTable WHERE pft_rowid = %lld", v13);
  }

  v33 = v12;
  if (v12 != 101)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCheckChunkStoreDB_cold_9();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v34 = sqlite3_errmsg(v3[3]);
      v9 = CFStringCreateWithFormat(alloc, 0, @"sqlite3_step returned: %d (%s)\n", v33, v34);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCheckChunkStoreDB_cold_10();
      }

      v35 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v41 = v9;
        _os_log_impl(&dword_243431000, v35, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

LABEL_14:
      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

LABEL_64:
  _CSFinishPreparedStatement(v11);
  return _CSFinishPreparedStatement(v4);
}

uint64_t CKCleanChunkStoreDBForInode(uint64_t *a1, sqlite3_int64 a2)
{
  result = CKLockChunkStore(a1);
  if (!result)
  {
    _CSCheckChunkStoreDB(a1, a2);

    return cs_unlock((a1 + 34));
  }

  return result;
}

BOOL CKChunkStoreGetLocation(uint64_t a1, void *a2, size_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  v6 = strlen(v5) + 1;
  if (v6 > a3)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CKChunkStoreGetLocation_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"bufLen is too small: %lu", a3);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CKChunkStoreGetLocation_cold_2();
      }

      v8 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v7;
        _os_log_impl(&dword_243431000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  else
  {
    memcpy(a2, v5, v6);
  }

  return v6 <= a3;
}

os_log_t __CKChunkStoreGetLocation_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreGetLocation_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

uint64_t CKChunkStoreRelocateDB(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = copyfile_state_alloc();
  if (v2)
  {
    v3 = v2;
    if (copyfile_state_set(v2, 6u, copyfile_callback))
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CKChunkStoreRelocateDB_cold_1();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_31;
      }

      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"copyfile_state_set failed");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CKChunkStoreRelocateDB_cold_2();
      }

      v5 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
LABEL_29:
        if (!v4)
        {
LABEL_32:
          copyfile_state_free(v3);
          return v4;
        }

        CFRelease(v4);
LABEL_31:
        v4 = 0;
        goto LABEL_32;
      }

      *buf = 138543362;
      v13 = v4;
    }

    else
    {
      if (!copyfile(*(a1 + 112), *(a1 + 120), v3, 0x800Fu))
      {
        v4 = 1;
        goto LABEL_32;
      }

      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CKChunkStoreRelocateDB_cold_3();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_31;
      }

      v8 = *MEMORY[0x277CBECE8];
      v9 = __error();
      v10 = strerror(*v9);
      v4 = CFStringCreateWithFormat(v8, 0, @"copyfile failed: %s", v10);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CKChunkStoreRelocateDB_cold_4();
      }

      v5 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      *buf = 138543362;
      v13 = v4;
    }

    _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    goto LABEL_29;
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    CKChunkStoreRelocateDB_cold_5();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"copyfile_state_alloc failed");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CKChunkStoreRelocateDB_cold_6();
    }

    v7 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  return 0;
}

os_log_t __CKChunkStoreRelocateDB_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreRelocateDB_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreRelocateDB_block_invoke_40()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreRelocateDB_block_invoke_2_47()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreRelocateDB_block_invoke_51()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CKChunkStoreRelocateDB_block_invoke_2_58()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

uint64_t CKLockChunkStoreNoFlag(uint64_t a1)
{
  result = cs_wrlock(a1 + 272);
  if (!result)
  {
    if (*(a1 + 24))
    {
      return 0;
    }

    else
    {
      cs_unlock(a1 + 272);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t CKLongReadLockChunkStore(uint64_t a1)
{
  v2 = (a1 + 256);
  atomic_fetch_add_explicit((a1 + 256), 1u, memory_order_relaxed);
  result = cs_longrdlock(a1 + 272);
  atomic_fetch_add_explicit(v2, 0xFFFFFFFF, memory_order_relaxed);
  if (!result)
  {
    if (*(a1 + 24))
    {
      return 0;
    }

    else
    {
      cs_unlock(a1 + 272);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t CKReadLockChunkStore(uint64_t a1)
{
  v2 = (a1 + 256);
  atomic_fetch_add_explicit((a1 + 256), 1u, memory_order_relaxed);
  result = pthread_rwlock_rdlock((a1 + 272));
  atomic_fetch_add_explicit(v2, 0xFFFFFFFF, memory_order_relaxed);
  if (!result)
  {
    if (*(a1 + 24))
    {
      return 0;
    }

    else
    {
      cs_unlock(a1 + 272);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t CKChunkStoreSetTestFlags(uint64_t a1, unsigned int a2)
{
  *(a1 + 544) = a2;
  CSSetSQLiteCorruptionTestingEnabled(a2 & 1);
  CSSetContinueOnCorruptDB((a2 >> 1) & 1);

  return CSSetExitOnCorruptDB((a2 >> 3) & 1);
}

uint64_t CKChunkStoreResetTestFlags(uint64_t a1)
{
  *(a1 + 544) = 0;
  CSSetSQLiteCorruptionTestingEnabled(0);
  CSSetContinueOnCorruptDB(0);

  return CSSetExitOnCorruptDB(0);
}

uint64_t _CSBeginTransaction(uint64_t a1)
{
  if (_CSBeginTransactionSqlRc(a1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t _CSEndTransaction(uint64_t a1)
{
  if (_CSEndTransactionSqlRc(a1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t _CSRollbackTransactionSqlRc(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v1 = CS_corruption_checking_sqlite3_exec_0(a1, *(a1 + 24), "ROLLBACK TRANSACTION", &v5);
  if (v1)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRollbackTransactionSqlRc_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to rollback transaction: %d (%s)\n", v1, v5);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRollbackTransactionSqlRc_cold_2();
      }

      v3 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v7 = v2;
        _os_log_impl(&dword_243431000, v3, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v2)
      {
        CFRelease(v2);
      }
    }

    sqlite3_free(v5);
  }

  return v1;
}

uint64_t _CSRollbackTransaction(uint64_t a1)
{
  if (_CSRollbackTransactionSqlRc(a1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t __sqlite3_step(uint64_t a1, sqlite3_stmt *a2, const char *a3, uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = pthread_rwlock_tryrdlock((a1 + 272));
  if (v8 == 16)
  {
    return sqlite3_step(a2);
  }

  v9 = v8;
  if (v8)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_step_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = *__error();
      v18 = __error();
      v19 = strerror(*v18);
      v20 = CFStringCreateWithFormat(v16, 0, @"pthread_mutex_trylock error: %d:%s res: %d in function %s : %d", v17, v19, v9, a3, a4);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __sqlite3_step_cold_4();
      }

      v21 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *__str = 138543362;
        *&__str[4] = v20;
        _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "%{public}@", __str, 0xCu);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    return sqlite3_step(a2);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *__str = 0u;
  v26 = 0u;
  snprintf(__str, 0x200uLL, "*** WARNING: _sqlite3_step called without chunkstore_lock in function %s : %d", a3, a4);
  v10 = open("/tmp/cs_log.log", 522, 484);
  if (v10 != -1)
  {
    v11 = v10;
    v12 = strlen(__str);
    write(v11, __str, v12);
    close(v11);
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __sqlite3_step_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"*** WARNING: _sqlite3_step called without chunkstore_lock in function %s : %d", a3, a4);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_step_cold_2();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v13;
      _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  v15 = sqlite3_step(a2);
  cs_unlock(a1 + 272);
  return v15;
}

os_log_t ____sqlite3_step_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_step_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_step_block_invoke_125()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_step_block_invoke_2_132()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

uint64_t __sqlite3_reset(uint64_t a1, sqlite3_stmt *a2, const char *a3, uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = pthread_rwlock_tryrdlock((a1 + 272));
  if (v8 == 16)
  {
    return sqlite3_reset(a2);
  }

  v9 = v8;
  if (v8)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_reset_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = *__error();
      v18 = __error();
      v19 = strerror(*v18);
      v20 = CFStringCreateWithFormat(v16, 0, @"pthread_mutex_trylock error: %d:%s res: %d in function %s : %d", v17, v19, v9, a3, a4);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __sqlite3_reset_cold_4();
      }

      v21 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *__str = 138543362;
        *&__str[4] = v20;
        _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "%{public}@", __str, 0xCu);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    return sqlite3_reset(a2);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *__str = 0u;
  v26 = 0u;
  snprintf(__str, 0x200uLL, "*** WARNING: _sqlite3_reset called without chunkstore_lock in function %s : %d", a3, a4);
  v10 = open("/tmp/cs_log.log", 522, 484);
  if (v10 != -1)
  {
    v11 = v10;
    v12 = strlen(__str);
    write(v11, __str, v12);
    close(v11);
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __sqlite3_reset_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"*** WARNING: _sqlite3_reset called without chunkstore_lock in function %s : %d", a3, a4);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_reset_cold_2();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v13;
      _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  v15 = sqlite3_reset(a2);
  cs_unlock(a1 + 272);
  return v15;
}

os_log_t ____sqlite3_reset_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_reset_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_reset_block_invoke_146()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_reset_block_invoke_2_150()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

uint64_t __sqlite3_clear_bindings(uint64_t a1, sqlite3_stmt *a2, const char *a3, uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = pthread_rwlock_tryrdlock((a1 + 272));
  if (v8 == 16)
  {
    return sqlite3_clear_bindings(a2);
  }

  v9 = v8;
  if (v8)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_clear_bindings_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = *__error();
      v18 = __error();
      v19 = strerror(*v18);
      v20 = CFStringCreateWithFormat(v16, 0, @"pthread_mutex_trylock error: %d:%s res: %d in function %s : %d", v17, v19, v9, a3, a4);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __sqlite3_clear_bindings_cold_4();
      }

      v21 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *__str = 138543362;
        *&__str[4] = v20;
        _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "%{public}@", __str, 0xCu);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    return sqlite3_clear_bindings(a2);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *__str = 0u;
  v26 = 0u;
  snprintf(__str, 0x200uLL, "*** WARNING: _sqlite3_clear_bindings called without chunkstore_lock in function %s : %d", a3, a4);
  v10 = open("/tmp/cs_log.log", 522, 484);
  if (v10 != -1)
  {
    v11 = v10;
    v12 = strlen(__str);
    write(v11, __str, v12);
    close(v11);
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __sqlite3_clear_bindings_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"*** WARNING: _sqlite3_clear_bindings called without chunkstore_lock in function %s : %d", a3, a4);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_clear_bindings_cold_2();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v13;
      _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  v15 = sqlite3_clear_bindings(a2);
  cs_unlock(a1 + 272);
  return v15;
}

os_log_t ____sqlite3_clear_bindings_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_clear_bindings_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_clear_bindings_block_invoke_164()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_clear_bindings_block_invoke_2_168()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

uint64_t __sqlite3_finalize(uint64_t a1, sqlite3_stmt *a2, const char *a3, uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = pthread_rwlock_tryrdlock((a1 + 272));
  if (v8 == 16)
  {
    return sqlite3_finalize(a2);
  }

  v9 = v8;
  if (v8)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_finalize_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = *__error();
      v18 = __error();
      v19 = strerror(*v18);
      v20 = CFStringCreateWithFormat(v16, 0, @"pthread_mutex_trylock error: %d:%s res: %d in function %s : %d", v17, v19, v9, a3, a4);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __sqlite3_finalize_cold_4();
      }

      v21 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *__str = 138543362;
        *&__str[4] = v20;
        _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "%{public}@", __str, 0xCu);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    return sqlite3_finalize(a2);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *__str = 0u;
  v26 = 0u;
  snprintf(__str, 0x200uLL, "*** WARNING: _sqlite3_finalize called without chunkstore_lock in function %s : %d", a3, a4);
  v10 = open("/tmp/cs_log.log", 522, 484);
  if (v10 != -1)
  {
    v11 = v10;
    v12 = strlen(__str);
    write(v11, __str, v12);
    close(v11);
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __sqlite3_finalize_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"*** WARNING: _sqlite3_finalize called without chunkstore_lock in function %s : %d", a3, a4);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __sqlite3_finalize_cold_2();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v13;
      _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  v15 = sqlite3_finalize(a2);
  cs_unlock(a1 + 272);
  return v15;
}

os_log_t ____sqlite3_finalize_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_finalize_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_finalize_block_invoke_182()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t ____sqlite3_finalize_block_invoke_2_186()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

uint64_t CS_sqlite3_step(uint64_t *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[2];
  if (CSSQLiteCorruptionTestingEnabled())
  {
    v3 = CS_corruption_causing_sqlite3_step(v2);
  }

  else
  {
    v3 = sqlite3_step(v2);
  }

  v4 = v3;
  _CSHandleDatabaseIOError_0(v3);
  if (v4 == 26 || v4 == 11)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      CS_sqlite3_step_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in sqlite3_step", v4);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        CS_sqlite3_step_cold_2();
      }

      v7 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = v6;
        _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    _CSHandleCorruptDatabase(v1);
  }

  return v4;
}

sqlite3_stmt **_CSPrepareStatement(uint64_t a1, const void *a2, const char *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    _CSPrepareStatement_cold_5();
  }

  pthread_mutex_lock((a1 + 32));
  v6 = *(a1 + 96);
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, a2);
    if (Value)
    {
      v8 = Value;
      CFDictionaryRemoveValue(*(a1 + 96), a2);
      sqlite3_reset(v8[2]);
      sqlite3_clear_bindings(v8[2]);
      goto LABEL_32;
    }
  }

  else
  {
    *(a1 + 96) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
  }

  v8 = malloc_type_malloc(0x18uLL, 0x60040AA6EF139uLL);
  *v8 = a1;
  v8[1] = a2;
  v9 = *(a1 + 24);
  v10 = CSSQLiteCorruptionTestingEnabled();
  v11 = v8 + 2;
  if (v10)
  {
    v12 = CS_corruption_causing_sqlite3_prepare_v2(v9, a3, -1, v11, 0);
  }

  else
  {
    v12 = sqlite3_prepare_v2(v9, a3, -1, v11, 0);
  }

  v13 = v12;
  _CSHandleDatabaseIOError_0(v12);
  if (v13)
  {
    if (v13 == 26 || v13 == 11)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSPrepareStatement_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: detected error %d in sqlite3_prepare_v2", v13);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSPrepareStatement_cold_2();
        }

        v15 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v22 = v14;
          _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v14)
        {
          CFRelease(v14);
        }
      }

      _CSHandleCorruptDatabase(a1);
    }

    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSPrepareStatement_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = sqlite3_errmsg(*(a1 + 24));
      v18 = CFStringCreateWithFormat(v16, 0, @"sqlite3_prepare_v2 returned: %d %s for query %s\n", v13, v17, a3);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSPrepareStatement_cold_4();
      }

      v19 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v22 = v18;
        _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    free(v8);
    v8 = 0;
  }

LABEL_32:
  pthread_mutex_unlock((a1 + 32));
  return v8;
}

uint64_t *_CSFinishPreparedStatement(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    sqlite3_reset(result[2]);
    sqlite3_clear_bindings(v1[2]);
    pthread_mutex_lock((v2 + 32));
    if (CFDictionaryContainsKey(*(v2 + 96), v1[1]))
    {
      sqlite3_finalize(v1[2]);
      free(v1);
    }

    else
    {
      CFDictionarySetValue(*(v2 + 96), v1[1], v1);
    }

    return pthread_mutex_unlock((v2 + 32));
  }

  return result;
}

BOOL __CSCreateStoragePath(uint64_t a1, int a2, int a3, char *a4, size_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  bzero(v15, 0x400uLL);
  if (CKChunkStoreGetLocation(a1, v15, 0x400uLL))
  {
    if (a3)
    {
      if (snprintf(a4, a5, "%s/%s/%d/%d/%d", v15, "ChunkStorage", HIBYTE(a2), BYTE2(a2), BYTE1(a2)) >= a5)
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          __CSCreateStoragePath_cold_5();
        }

        result = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"outPath too small\n");
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            __CSCreateStoragePath_cold_6();
          }

          v12 = CK_DEFAULT_LOG_INTERNAL_1;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          *buf = 138543362;
          v14 = v11;
LABEL_18:
          _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_19:
          if (v11)
          {
            CFRelease(v11);
          }

          return 0;
        }

        return result;
      }
    }

    else if (snprintf(a4, a5, "%s/%s/%d/%d/%d/%d", v15, "ChunkStorage", HIBYTE(a2), BYTE2(a2), BYTE1(a2), a2) >= a5)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        __CSCreateStoragePath_cold_3();
      }

      result = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"outPath too small\n");
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          __CSCreateStoragePath_cold_4();
        }

        v12 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 138543362;
        v14 = v11;
        goto LABEL_18;
      }

      return result;
    }

    return 1;
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __CSCreateStoragePath_cold_1();
  }

  result = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to get chunk store location!\n");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __CSCreateStoragePath_cold_2();
    }

    v12 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 138543362;
    v14 = v11;
    goto LABEL_18;
  }

  return result;
}

uint64_t _CSCreateStorageFile(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v42 = 0;
  bzero(v43, 0x400uLL);
  if (!CKChunkStoreGetLocation(a1, v43, 0x400uLL))
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCreateStorageFile_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"CKChunkStoreGetLocation failed");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_2();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        buf[0].st_dev = 138543362;
        *&buf[0].st_mode = v10;
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x100004017768742uLL);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = _CSAddStorageFileToDb(a1, 0, &v42);
  if (v6)
  {
    v7 = v6;
LABEL_5:
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCreateStorageFile_cold_28();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to add SF entry to database!\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_29();
      }

      v9 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        buf[0].st_dev = 138543362;
        *&buf[0].st_mode = v8;
LABEL_12:
        _os_log_impl(&dword_243431000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      goto LABEL_13;
    }

    goto LABEL_15;
  }

  alloc = *MEMORY[0x277CBECE8];
  while (1)
  {
    v13 = v42;
    bzero(buf, 0x400uLL);
    bzero(__str, 0x400uLL);
    if (!CKChunkStoreGetLocation(a1, buf, 0x400uLL))
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v18 = CFStringCreateWithFormat(alloc, 0, @"failed to get chunk store location!");
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_4();
        }

        v19 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *v44 = 138543362;
          v45 = v18;
          goto LABEL_92;
        }

        goto LABEL_93;
      }

      goto LABEL_97;
    }

    if (snprintf(__str, 0x400uLL, "%s/%s/%d/%d/%d/", buf, "ChunkStorage", BYTE3(v13), BYTE2(v13), BYTE1(v13)) >= 0x400)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_5();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v18 = CFStringCreateWithFormat(alloc, 0, @"path exceeds %d characters!", 1024);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_6();
        }

        v19 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *v44 = 138543362;
          v45 = v18;
          goto LABEL_92;
        }

LABEL_93:
        if (v18)
        {
          CFRelease(v18);
        }

        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_9();
        }
      }

LABEL_97:
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_105;
      }

      v8 = CFStringCreateWithFormat(alloc, 0, @"unable to create storage directory\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_10();
      }

      v20 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        buf[0].st_dev = 138543362;
        *&buf[0].st_mode = v8;
LABEL_102:
        _os_log_impl(&dword_243431000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

LABEL_103:
      if (v8)
      {
        CFRelease(v8);
        goto LABEL_105;
      }

LABEL_135:
      v7 = -1;
      goto LABEL_136;
    }

    if (mkdir_recursive(__str, 0x1C0u) && *__error() != 17)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_7();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v29 = __error();
        v30 = strerror(*v29);
        v18 = CFStringCreateWithFormat(alloc, 0, @"failed to create directory: %s, %s\n", __str, v30);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_8();
        }

        v19 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *v44 = 138543362;
          v45 = v18;
LABEL_92:
          _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_ERROR, "%{public}@", v44, 0xCu);
        }

        goto LABEL_93;
      }

      goto LABEL_97;
    }

    if (!__CSCreateStoragePath(a1, v13, 0, v43, 0x400uLL))
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_11();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v8 = CFStringCreateWithFormat(alloc, 0, @"unable to create storage path\n");
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_12();
        }

        v20 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          buf[0].st_dev = 138543362;
          *&buf[0].st_mode = v8;
          goto LABEL_102;
        }

        goto LABEL_103;
      }

LABEL_105:
      LOBYTE(v8) = 0;
      goto LABEL_135;
    }

    v14 = open(v43, 2562, 384);
    if (v14 != -1)
    {
      v21 = v14;
      memset(&v41, 0, sizeof(v41));
      if (fstat(v14, &v41))
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_13();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v22 = __error();
          v23 = strerror(*v22);
          v24 = CFStringCreateWithFormat(alloc, 0, @"fstat failed: %s", v23);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCreateStorageFile_cold_14();
          }

          v25 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            buf[0].st_dev = 138543362;
            *&buf[0].st_mode = v24;
            _os_log_impl(&dword_243431000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          LODWORD(v26) = 0;
          goto LABEL_132;
        }

        LODWORD(v26) = 0;
LABEL_134:
        close(v21);
        unlink(v43);
        LOBYTE(v8) = v26 == 13;
        goto LABEL_135;
      }

      v31 = CSsql_corruption_checking_do_0(a1, *(a1 + 24), "UPDATE CSStorageFileTable SET ft_inode = %lld WHERE ft_rowid = %lld", v41.st_ino, v13);
      if (v31)
      {
        v26 = v31;
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_15();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_134;
        }

        v32 = sqlite3_errmsg(*(a1 + 24));
        v24 = CFStringCreateWithFormat(alloc, 0, @"failed to set inode for file: %s: %d %s\n", v43, v26, v32);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_16();
        }

        v33 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_132;
        }

        buf[0].st_dev = 138543362;
        *&buf[0].st_mode = v24;
      }

      else
      {
        v34 = CSsql_corruption_checking_do_0(a1, *(a1 + 24), "UPDATE CSStorageFileTable SET ft_space = %d WHERE ft_rowid = %lld", 20971620, v13);
        if (v34)
        {
          v26 = v34;
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCreateStorageFile_cold_17();
          }

          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_134;
          }

          v35 = sqlite3_errmsg(*(a1 + 24));
          v24 = CFStringCreateWithFormat(alloc, 0, @"failed to set space for file: %s: %d %s\n", v43, v26, v35);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCreateStorageFile_cold_18();
          }

          v33 = CK_DEFAULT_LOG_INTERNAL_1;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_132;
          }

          buf[0].st_dev = 138543362;
          *&buf[0].st_mode = v24;
        }

        else
        {
          v36 = CSsql_corruption_checking_do_0(a1, *(a1 + 24), "UPDATE CSStorageFileTable SET ft_pspace = %d WHERE ft_rowid = %lld", 0, v13);
          if (!v36)
          {
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSCreateStorageFile_cold_21();
            }

            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
            {
              v38 = CFStringCreateWithFormat(alloc, 0, @"Created a new SF, ino:%llu, rowID:%llu\n", v41.st_ino, v13);
              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
              {
                _CSCreateStorageFile_cold_22();
              }

              v39 = CK_DEFAULT_LOG_INTERNAL_1;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
              {
                buf[0].st_dev = 138543362;
                *&buf[0].st_mode = v38;
                _os_log_impl(&dword_243431000, v39, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (v38)
              {
                CFRelease(v38);
              }
            }

            result = 0;
            v5[2] = v21;
            *v5 = v41.st_ino;
            *(v5 + 2) = v13;
            *(v5 + 3) = 20971620;
            *a2 = v5;
            return result;
          }

          v26 = v36;
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCreateStorageFile_cold_19();
          }

          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_134;
          }

          v37 = sqlite3_errmsg(*(a1 + 24));
          v24 = CFStringCreateWithFormat(alloc, 0, @"failed to set purgeable space for file: %s: %d %s\n", v43, v26, v37);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCreateStorageFile_cold_20();
          }

          v33 = CK_DEFAULT_LOG_INTERNAL_1;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_132;
          }

          buf[0].st_dev = 138543362;
          *&buf[0].st_mode = v24;
        }
      }

      _os_log_impl(&dword_243431000, v33, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_132:
      if (v24)
      {
        CFRelease(v24);
      }

      goto LABEL_134;
    }

    if (*__error() != 17)
    {
      break;
    }

    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCreateStorageFile_cold_25();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      memset(buf, 0, 144);
      stat(v43, buf);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCreateStorageFile_cold_26();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        v15 = CFStringCreateWithFormat(alloc, 0, @"file %s already exists (size: %lld), trying again.", v43, buf[0].st_size);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCreateStorageFile_cold_27();
        }

        v16 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
        {
          *__str = 138543362;
          v47 = v15;
          _os_log_impl(&dword_243431000, v16, OS_LOG_TYPE_DEBUG, "%{public}@", __str, 0xCu);
        }

        if (v15)
        {
          CFRelease(v15);
        }
      }
    }

    v17 = _CSAddStorageFileToDb(a1, 0, &v42);
    if (v17)
    {
      v7 = v17;
      goto LABEL_5;
    }
  }

  v7 = *__error();
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSCreateStorageFile_cold_23();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
LABEL_15:
    LOBYTE(v8) = 0;
    goto LABEL_136;
  }

  v27 = __error();
  v28 = strerror(*v27);
  v8 = CFStringCreateWithFormat(alloc, 0, @"open(%s) failed: %s", v43, v28);
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSCreateStorageFile_cold_24();
  }

  v9 = CK_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    buf[0].st_dev = 138543362;
    *&buf[0].st_mode = v8;
    goto LABEL_12;
  }

LABEL_13:
  if (v8)
  {
    CFRelease(v8);
    goto LABEL_15;
  }

LABEL_136:
  free(v5);
  _CSRemoveStorageFileFromDb(a1, v42);
  if ((v8 & (v7 < 0)) != 0)
  {
    return 28;
  }

  else
  {
    return v7;
  }
}

uint64_t _CSAddStorageFileToDb(uint64_t a1, sqlite3_int64 a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  v6 = _CSPrepareStatement(a1, @"INSERT INTO CSStorageFileTable (ft_inode, vt_rowID) VALUES (?, ?)", "INSERT INTO CSStorageFileTable (ft_inode, vt_rowID) VALUES (?, ?)");
  v7 = v6;
  if (!v6)
  {
    insert_rowid = 0;
    LODWORD(v10) = 0;
LABEL_7:
    v12 = -1;
    v8 = 1;
    goto LABEL_8;
  }

  v8 = 1;
  v9 = sqlite3_bind_int64(v6[2], 1, a2);
  if (v9 || (v9 = sqlite3_bind_int64(v7[2], 2, 0)) != 0)
  {
    LODWORD(v10) = v9;
LABEL_5:
    insert_rowid = 0;
    v12 = -1;
    goto LABEL_8;
  }

  v14 = CS_sqlite3_step(v7);
  if (v14 != 101)
  {
    v10 = v14;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSAddStorageFileToDb_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v15 = *MEMORY[0x277CBECE8];
    v16 = sqlite3_errmsg(*(a1 + 24));
    insert_rowid = CFStringCreateWithFormat(v15, 0, @"sqlite3_step returned: %d %s\n", v10, v16);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSAddStorageFileToDb_cold_2();
    }

    v17 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = insert_rowid;
      _os_log_impl(&dword_243431000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (insert_rowid)
    {
      CFRelease(insert_rowid);
      insert_rowid = 0;
    }

    goto LABEL_7;
  }

  insert_rowid = sqlite3_last_insert_rowid(*(a1 + 24));
  v8 = 0;
  v12 = 0;
  LODWORD(v10) = 101;
LABEL_8:
  _CSFinishPreparedStatement(v7);
  if ((v8 & (v10 == 13)) != 0)
  {
    result = 28;
  }

  else
  {
    result = v12;
  }

  if (!result)
  {
    *a3 = insert_rowid;
  }

  return result;
}

uint64_t *_CSRemoveStorageFileFromDb(uint64_t *result, sqlite3_int64 a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = result;
    result = _CSPrepareStatement(result, @"DELETE FROM CSStorageFileTable WHERE ft_rowid = ?", "DELETE FROM CSStorageFileTable WHERE ft_rowid = ?");
    if (result)
    {
      v4 = result;
      if (!sqlite3_bind_int64(result[2], 1, a2))
      {
        v5 = CS_sqlite3_step(v4);
        if (v5 != 101)
        {
          v6 = v5;
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSRemoveStorageFileFromDb_cold_1();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v7 = *MEMORY[0x277CBECE8];
            v8 = sqlite3_errmsg(v3[3]);
            v9 = CFStringCreateWithFormat(v7, 0, @"sqlite3_step returned: %d %s\n", v6, v8);
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSRemoveStorageFileFromDb_cold_2();
            }

            v10 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v12 = v9;
              _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v9)
            {
              CFRelease(v9);
            }
          }
        }
      }

      return _CSFinishPreparedStatement(v4);
    }
  }

  return result;
}

uint64_t _CSUpdateStorageFileInfo(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = CSsql_get64(a1, 1, "SELECT ft_space FROM CSStorageFileTable WHERE ft_rowid = %lld", *(a2 + 16));
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSUpdateStorageFileInfo_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Updating SF space for ftRowId:%llu curspace:%llu, space:%llu\n", *(a2 + 16), v4, *(a2 + 24));
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSUpdateStorageFileInfo_cold_2();
    }

    v6 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v26 = v5;
      _os_log_impl(&dword_243431000, v6, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (v4 != *(a2 + 24))
  {
    v9 = _CSPrepareStatement(a1, @"UPDATE CSStorageFileTable SET ft_space = ? WHERE ft_rowid = ?", "UPDATE CSStorageFileTable SET ft_space = ? WHERE ft_rowid = ?");
    v8 = v9;
    if (v9)
    {
      v10 = sqlite3_bind_int64(v9[2], 1, *(a2 + 24));
      if (v10)
      {
        v11 = v10;
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSUpdateStorageFileInfo_cold_3();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        v12 = *MEMORY[0x277CBECE8];
        v13 = sqlite3_errmsg(*(a1 + 24));
        v14 = CFStringCreateWithFormat(v12, 0, @"sqlite3_bind_int returned: %d %s\n", v11, v13);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSUpdateStorageFileInfo_cold_4();
        }

        v15 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        *buf = 138543362;
        v26 = v14;
        goto LABEL_38;
      }

      v16 = sqlite3_bind_int64(v8[2], 2, *(a2 + 16));
      if (v16)
      {
        v17 = v16;
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSUpdateStorageFileInfo_cold_5();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        v18 = *MEMORY[0x277CBECE8];
        v19 = sqlite3_errmsg(*(a1 + 24));
        v14 = CFStringCreateWithFormat(v18, 0, @"sqlite3_bind_int64 returned: %d %s\n", v17, v19);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSUpdateStorageFileInfo_cold_6();
        }

        v15 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        *buf = 138543362;
        v26 = v14;
        goto LABEL_38;
      }

      v20 = CS_sqlite3_step(v8);
      if (v20 == 101)
      {
        v7 = 0;
        goto LABEL_42;
      }

      v21 = v20;
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSUpdateStorageFileInfo_cold_7();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v22 = *MEMORY[0x277CBECE8];
        v23 = sqlite3_errmsg(*(a1 + 24));
        v14 = CFStringCreateWithFormat(v22, 0, @"sqlite3_step returned: %d %s\n", v21, v23);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSUpdateStorageFileInfo_cold_8();
        }

        v15 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        *buf = 138543362;
        v26 = v14;
LABEL_38:
        _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_39:
        if (v14)
        {
          CFRelease(v14);
        }
      }
    }

LABEL_41:
    v7 = 0xFFFFFFFFLL;
    goto LABEL_42;
  }

  v7 = 0;
  v8 = 0;
LABEL_42:
  _CSFinishPreparedStatement(v8);
  return v7;
}

void _CSCacheStorageFile(uint64_t result, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0x7FFFFFFFLL;
  v7 = *(result + 264);
  while (*v7)
  {
    if (*(*v7 + 24) < v6)
    {
      v5 = v4;
      v6 = *(*v7 + 24);
    }

    ++v4;
    v7 += 8;
    if (v4 == 5)
    {
      _CSCloseStorageFile(result, *(*(result + 264) + 8 * v5), 0);
      v7 = *(result + 264) + 8 * v5;
      break;
    }
  }

  *v7 = a2;
}

void _CSCloseStorageFile(uint64_t a1, _DWORD *a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = a2[2];
    if (v6 != -1)
    {
      if (close(v6) == -1)
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCloseStorageFile_cold_1();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"close failed for SF rowID:%llu\n", *(a2 + 2));
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCloseStorageFile_cold_2();
          }

          v8 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v15 = v7;
            _os_log_impl(&dword_243431000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v7)
          {
            CFRelease(v7);
          }
        }
      }

      a2[2] = -1;
    }

    if (a3)
    {
      _CSUpdateStorageFileInfo(a1, a2);
    }

    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(a1 + 264);
      v12 = v9;
      while (1)
      {
        v13 = *(v11 + 8 * v12);
        if (v13 == a2)
        {
          break;
        }

        if (++v12 == 5)
        {
          if ((v10 & 1) == 0)
          {
            free(a2);
          }

          return;
        }
      }

      if ((v10 & 1) == 0)
      {
        free(v13);
        v11 = *(a1 + 264);
      }

      *(v11 + 8 * v12) = 0;
      v9 = v12 + 1;
      v10 = 1;
    }

    while (v12 != 4);
  }
}

uint64_t _CSSyncStorageFile(uint64_t a1, uint64_t a2, char a3)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_8();
    }

    v15 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136315138;
    v42 = "_CSSyncStorageFile";
    v12 = "could not fsync null storage file in %s";
    v13 = v15;
    v14 = 12;
    goto LABEL_16;
  }

  v6 = *(a2 + 8);
  if (v6 < 0)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_1();
    }

    v16 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v17 = *(a2 + 16);
    *buf = 134218242;
    v42 = v17;
    v43 = 2080;
    v44 = "_CSSyncStorageFile";
    v12 = "could not fsync closed storage file %llu in %s";
    v13 = v16;
    v14 = 22;
    goto LABEL_16;
  }

  if (fsync(v6))
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_2();
    }

    v7 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v8 = *(a2 + 16);
    v9 = __error();
    v10 = strerror(*v9);
    v11 = *__error();
    *buf = 134218754;
    v42 = v8;
    v43 = 2080;
    v44 = "_CSSyncStorageFile";
    v45 = 2080;
    v46 = v10;
    v47 = 1024;
    v48 = v11;
    v12 = "fsync for storage file %llu in %s failed: %s (%d)";
    v13 = v7;
    v14 = 38;
LABEL_16:
    _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    return 1;
  }

  bzero(buf, 0x400uLL);
  if (!__CSCreateStoragePath(a1, *(a2 + 16), 1, buf, 0x400uLL))
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_3();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"could not create storage file path for storage file %llu in %s", *(a2 + 16), "_CSSyncStorageFile");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_4();
    }

    v28 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *v33 = 138543362;
      v34 = v18;
LABEL_43:
      _os_log_impl(&dword_243431000, v28, OS_LOG_TYPE_ERROR, "%{public}@", v33, 0xCu);
    }

LABEL_44:
    if (!v18)
    {
      return v18;
    }

    CFRelease(v18);
    return 0;
  }

  v20 = open(buf, 0);
  if (v20 < 0)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_5();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v29 = *MEMORY[0x277CBECE8];
    v30 = __error();
    v31 = strerror(*v30);
    v32 = __error();
    v18 = CFStringCreateWithFormat(v29, 0, @"could not open storage file directory %s in %s: %s (%d)", buf, "_CSSyncStorageFile", v31, *v32);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_6();
    }

    v28 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *v33 = 138543362;
      v34 = v18;
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v21 = v20;
  v22 = fsync(v20);
  v18 = (v22 == 0);
  if (v22)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSSyncStorageFile_cold_7();
    }

    v23 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a2 + 16);
      v25 = __error();
      v26 = strerror(*v25);
      v27 = *__error();
      *v33 = 134218754;
      v34 = v24;
      v35 = 2080;
      v36 = "_CSSyncStorageFile";
      v37 = 2080;
      v38 = v26;
      v39 = 1024;
      v40 = v27;
      _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_ERROR, "fsync for storage file %llu parent directory in %s failed: %s (%d)", v33, 0x26u);
    }
  }

  close(v21);
  return v18;
}

void _CSCloseCachedStorageFile(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(a1 + 264);
      v5 = *(v4 + v3);
      if (v5)
      {
        if (*(v5 + 16) == a2)
        {
          break;
        }
      }

      v3 += 8;
      if (v3 == 40)
      {
        return;
      }
    }

    _CSCloseStorageFile(a1, *(v4 + v3), a3);
  }
}

void *_CSGetStorageFile(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v3 = *(a2 + 80);
  v4 = v3 + CKSchemeAndSignatureSize((a2 + 84)) + 4;
  if (v4 >> 31)
  {
    _CSGetStorageFile_cold_19();
  }

  for (i = 0; i != 5; ++i)
  {
    v6 = *(*(a1 + 264) + 8 * i);
    if (v6 && *(v6 + 3) >= v4)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSGetStorageFile_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Found cached SF %u at rowID:%llu, space:%llu, needSize:%llu\n", i, *(v6 + 2), *(v6 + 3), v4);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSGetStorageFile_cold_2();
        }

        v19 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v50 = v18;
          _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }

      return v6;
    }
  }

  v7 = _CSPrepareStatement(a1, @"SELECT ft_rowid, ft_space FROM CSStorageFileTable WHERE (ft_space >= ? AND ft_status IS NULL)", "SELECT ft_rowid, ft_space FROM CSStorageFileTable WHERE (ft_space >= ? AND ft_status IS NULL)");
  if (v7)
  {
    v8 = v7;
    sqlite3_bind_int(v7[2], 1, v4);
    if (CS_sqlite3_step(v8) != 100)
    {
      _CSFinishPreparedStatement(v8);
      goto LABEL_112;
    }

    v43 = a1;
    v9 = 0;
    v10 = 0;
    alloc = *MEMORY[0x277CBECE8];
    do
    {
      v11 = sqlite3_column_int(v8[2], 0);
      if (v11)
      {
        v12 = v11;
        v13 = sqlite3_column_int(v8[2], 1);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSGetStorageFile_cold_3();
        }

        v14 = v12;
        v15 = v13;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
        {
          v16 = CFStringCreateWithFormat(alloc, 0, @"Checking free space for SF at rowID:%llu, %llu/%llu\n", v12, v13, v4);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSGetStorageFile_cold_4();
          }

          v17 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v50 = v16;
            _os_log_impl(&dword_243431000, v17, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v16)
          {
            CFRelease(v16);
          }
        }

        if (v4 <= v15 && v10 < v15)
        {
          v10 = v15;
          v9 = v14;
        }
      }
    }

    while (CS_sqlite3_step(v8) == 100);
    _CSFinishPreparedStatement(v8);
    a1 = v43;
    if (!v9)
    {
LABEL_112:
      _CSCreateStorageFile(a1, &v45);
      v6 = v45;
      if (!v45)
      {
        return v6;
      }

      goto LABEL_113;
    }

    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSGetStorageFile_cold_5();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v22 = CFStringCreateWithFormat(alloc, 0, @"Found a candidate SF at rowID:%llu\n", v9);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSGetStorageFile_cold_6();
      }

      v23 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v50 = v22;
        _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }

    v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x100004017768742uLL);
    v45 = v6;
    if (v6)
    {
      bzero(buf, 0x400uLL);
      if (__CSCreateStoragePath(v43, v9, 0, buf, 0x400uLL))
      {
        memset(&v48, 0, sizeof(v48));
        v24 = open(buf, 2, 384);
        *(v6 + 2) = v24;
        if (v24 == -1)
        {
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSGetStorageFile_cold_15();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v34 = __error();
            v35 = strerror(*v34);
            v36 = CFStringCreateWithFormat(alloc, 0, @"Attempting first aid in %s after open failed for %s: %s\n", "_CSGetStorageFile", buf, v35);
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSGetStorageFile_cold_16();
            }

            v37 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              *v46 = 138543362;
              v47 = v36;
              _os_log_impl(&dword_243431000, v37, OS_LOG_TYPE_ERROR, "%{public}@", v46, 0xCu);
            }

            if (v36)
            {
              CFRelease(v36);
            }
          }

          CSAttemptAutomaticFirstAidForStorageFile(v43, v9);
        }

        else
        {
          if (fstat(v24, &v48) != -1)
          {
            if (v10 <= 0x1400064)
            {
              v25 = 20971620 - v10;
            }

            else
            {
              v25 = 0;
            }

            if (v10 <= 0x1400063 && v25 < v48.st_size)
            {
              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
              {
                _CSGetStorageFile_cold_9();
              }

              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
              {
                v26 = CFStringCreateWithFormat(alloc, 0, @"The size on disk is different from the size in db for %s: usedSpace:%llu, size:%llu - truncating\n", buf, v25, v48.st_size);
                if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                {
                  _CSGetStorageFile_cold_10();
                }

                v27 = CK_DEFAULT_LOG_INTERNAL_1;
                if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                {
                  *v46 = 138543362;
                  v47 = v26;
                  _os_log_impl(&dword_243431000, v27, OS_LOG_TYPE_ERROR, "%{public}@", v46, 0xCu);
                }

                a1 = v43;
                if (v26)
                {
                  CFRelease(v26);
                }
              }

              if (ftruncate(*(v6 + 2), v25))
              {
                if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                {
                  _CSGetStorageFile_cold_11();
                }

                if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                {
                  v28 = __error();
                  v29 = strerror(*v28);
                  v30 = CFStringCreateWithFormat(alloc, 0, @"ftruncate failed for %s: %s\n", buf, v29);
                  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                  {
                    _CSGetStorageFile_cold_12();
                  }

                  v31 = CK_DEFAULT_LOG_INTERNAL_1;
                  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                  {
                    *v46 = 138543362;
                    v47 = v30;
                    _os_log_impl(&dword_243431000, v31, OS_LOG_TYPE_ERROR, "%{public}@", v46, 0xCu);
                  }

                  if (v30)
                  {
                    CFRelease(v30);
                  }
                }
              }
            }

            *(v6 + 2) = v9;
            *(v6 + 3) = v10;
LABEL_113:
            _CSCacheStorageFile(a1, v6);
            return v6;
          }

          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSGetStorageFile_cold_13();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v38 = __error();
            v39 = strerror(*v38);
            v40 = CFStringCreateWithFormat(alloc, 0, @"fstat failed for %s: %s\n", buf, v39);
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSGetStorageFile_cold_14();
            }

            v41 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              *v46 = 138543362;
              v47 = v40;
              _os_log_impl(&dword_243431000, v41, OS_LOG_TYPE_ERROR, "%{public}@", v46, 0xCu);
            }

            if (v40)
            {
              CFRelease(v40);
            }
          }

          close(*(v6 + 2));
        }
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSGetStorageFile_cold_7();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v32 = CFStringCreateWithFormat(alloc, 0, @"_CSCreateStoragePath failed for rowID: %lld\n", v9);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSGetStorageFile_cold_8();
          }

          v33 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v48.st_dev = 138543362;
            *&v48.st_mode = v32;
            _os_log_impl(&dword_243431000, v33, OS_LOG_TYPE_ERROR, "%{public}@", &v48, 0xCu);
          }

          if (v32)
          {
            CFRelease(v32);
          }
        }
      }

      free(v6);
      v45 = 0;
      goto LABEL_112;
    }
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSGetStorageFile_cold_17();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL stmt");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSGetStorageFile_cold_18();
      }

      v21 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v50 = v20;
        _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }

    return 0;
  }

  return v6;
}

unint64_t _CSCompactStorage(uint64_t a1, unint64_t a2)
{
  v243 = *MEMORY[0x277D85DE8];
  v4 = &unk_280C64000;
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSCompactStorage_cold_1();
  }

  v5 = &unk_280C64000;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"spaceNeeded:%llu\n", a2);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCompactStorage_cold_2();
    }

    v7 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v6;
      _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (!a2 || *(a1 + 256))
  {
    v8 = 0;
LABEL_13:
    if (v4[445] != -1)
    {
      _CSCompactStorage_cold_75();
    }

    goto LABEL_15;
  }

  if (*(a1 + 17) == 1)
  {
    _CSCompactStorage_cold_74();
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v8 = 0;
    v23 = 0xFFFFFFFFLL;
    goto LABEL_192;
  }

  v17 = Mutable;
  v18 = _CSPrepareStatement(a1, @"SELECT ft_rowid FROM CSStorageFileTable WHERE ft_pspace > 0 ORDER BY ft_pspace DESC", "SELECT ft_rowid FROM CSStorageFileTable WHERE ft_pspace > 0 ORDER BY ft_pspace DESC");
  if (!v18)
  {
    v8 = 0;
    v23 = 0xFFFFFFFFLL;
    goto LABEL_191;
  }

  v19 = v18;
  while (1)
  {
    v20 = CS_sqlite3_step(v19);
    if (v20 != 100)
    {
      break;
    }

    if (*(a1 + 256))
    {
      goto LABEL_187;
    }

    *buf = sqlite3_column_int64(v19[2], 0);
    v21 = CFNumberCreate(0, kCFNumberLongLongType, buf);
    if (!v21)
    {
      v226 = 0;
      v23 = 0xFFFFFFFFLL;
      goto LABEL_190;
    }

    v22 = v21;
    CFArrayAppendValue(v17, v21);
    CFRelease(v22);
  }

  v24 = v20;
  if (v20 != 101)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCompactStorage_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v25 = *MEMORY[0x277CBECE8];
      v26 = sqlite3_errmsg(*(a1 + 24));
      v27 = CFStringCreateWithFormat(v25, 0, @"sqlite3_step returned: %d %s\n", v24, v26);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_4();
      }

      v28 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v27;
        _os_log_impl(&dword_243431000, v28, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v5 = &unk_280C64000;
      if (v27)
      {
        CFRelease(v27);
      }
    }
  }

  _CSFinishPreparedStatement(v19);
  Count = CFArrayGetCount(v17);
  if (Count < 1)
  {
    v19 = 0;
LABEL_187:
    v226 = 0;
LABEL_189:
    v23 = 0;
    goto LABEL_190;
  }

  v29 = 0;
  v226 = 0;
  alloc = *MEMORY[0x277CBECE8];
  v30 = a2;
  do
  {
    if (*(a1 + 256))
    {
      v19 = 0;
      goto LABEL_189;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v17, v29);
    *&valuePtr.st_dev = 0;
    if (!CFNumberGetValue(ValueAtIndex, kCFNumberLongLongType, &valuePtr))
    {
      goto LABEL_176;
    }

    if (*(a1 + 17) == 1)
    {
      _CSCompactStorage_cold_21();
    }

    v32 = *&valuePtr.st_dev;
    if ((CSAttemptAutomaticFirstAidForStorageFile(a1, *&valuePtr.st_dev) & 1) == 0)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_5();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_65;
      }

      v33 = CFStringCreateWithFormat(alloc, 0, @"Failed first aid check in %s", "removeUnreferencedChunksAtEof");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_6();
      }

      v34 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v33;
        _os_log_impl(&dword_243431000, v34, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v33)
      {
        CFRelease(v33);
      }
    }

    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCompactStorage_cold_7();
    }

LABEL_65:
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v35 = CFStringCreateWithFormat(alloc, 0, @"ftRowId:%llu, spaceNeeded:%llu\n", v32, v30);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_8();
      }

      v36 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v35;
        _os_log_impl(&dword_243431000, v36, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v35)
      {
        CFRelease(v35);
      }
    }

    v37 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v222 = v32;
    if (!v37)
    {
      v41 = 0;
      v42 = 0xFFFFFFFFLL;
      v5 = &unk_280C64000;
      goto LABEL_160;
    }

    v38 = v37;
    v39 = _CSPrepareStatement(a1, @"SELECT ct_rowid, dataLen, offset, refCount FROM CSChunkTable WHERE ft_rowid = ? AND location = ? ORDER BY offset DESC", "SELECT ct_rowid, dataLen, offset, refCount FROM CSChunkTable WHERE ft_rowid = ? AND location = ? ORDER BY offset DESC");
    v40 = v39;
    if (!v39)
    {
      goto LABEL_157;
    }

    v5 = &unk_280C64000;
    if (sqlite3_bind_int64(v39[2], 1, v32) || sqlite3_bind_int(v40[2], 2, 115))
    {
      goto LABEL_76;
    }

    v43 = CS_sqlite3_step(v40);
    v44 = v43 == 100;
    theArray = v38;
    if (v43 != 100)
    {
      v53 = v43;
      __fd = 0;
      v54 = 0;
      goto LABEL_96;
    }

    __fd = 0;
    v45 = -1;
    do
    {
      if (*(a1 + 256))
      {
        v42 = 0;
        v41 = 0;
        goto LABEL_141;
      }

      v217 = v45;
      *v231 = sqlite3_column_int64(v40[2], 0);
      v46 = sqlite3_column_int(v40[2], 1);
      v54 = sqlite3_column_int64(v40[2], 2);
      v47 = sqlite3_column_int64(v40[2], 3);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_9();
      }

      cf = v46;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        v48 = CFStringCreateWithFormat(alloc, 0, @"ctRowId:%llu, refCount:%llu, offset:0x%llx, size:0x%llx\n", *v231, v47, v54, v46);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCompactStorage_cold_10();
        }

        v49 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v48;
          _os_log_impl(&dword_243431000, v49, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v48)
        {
          CFRelease(v48);
        }
      }

      if (v47)
      {
        v44 = 1;
        v38 = theArray;
        goto LABEL_106;
      }

      if (v217 <= v54)
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCompactStorage_cold_11();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v56 = CFStringCreateWithFormat(alloc, 0, @"Invalid chunk, ftRowId:%llu, ctRowId:%llu, chunkOffset:0x%llx, truncateOffset:0x%llx\n", v222, *v231, v54, v217);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCompactStorage_cold_12();
          }

          v57 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
LABEL_137:
            *buf = 138543362;
            *&buf[4] = v56;
            _os_log_impl(&dword_243431000, v57, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

LABEL_138:
          if (v56)
          {
            CFRelease(v56);
          }
        }

LABEL_140:
        v41 = 0;
        v42 = 0xFFFFFFFFLL;
LABEL_141:
        v5 = &unk_280C64000;
LABEL_142:
        v38 = theArray;
        goto LABEL_159;
      }

      v50 = CFNumberCreate(0, kCFNumberLongLongType, v231);
      if (!v50)
      {
        goto LABEL_140;
      }

      v51 = v50;
      CFArrayAppendValue(theArray, v50);
      CFRelease(v51);
      __fd += cf;
      v52 = CS_sqlite3_step(v40);
      v45 = v54;
    }

    while (v52 == 100);
    v53 = v52;
    v38 = theArray;
    v44 = 1;
LABEL_96:
    v217 = v54;
    if ((v53 - 102) <= 0xFFFFFFFD)
    {
      v5 = &unk_280C64000;
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_17();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v55 = sqlite3_errmsg(*(a1 + 24));
        v56 = CFStringCreateWithFormat(alloc, 0, @"sqlite3_step returned: %d %s\n", v53, v55);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCompactStorage_cold_18();
        }

        v57 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_137;
        }

        goto LABEL_138;
      }

LABEL_76:
      v41 = 0;
      v42 = 0xFFFFFFFFLL;
      goto LABEL_159;
    }

LABEL_106:
    v58 = v44;
    _CSFinishPreparedStatement(v40);
    v59 = CFArrayGetCount(v38);
    v5 = &unk_280C64000;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCompactStorage_cold_13();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v60 = CFStringCreateWithFormat(alloc, 0, @"chunkCount:%u, truncateOffset:0x%llx, freeSpace:%llu\n", v59, v217, __fd);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_14();
      }

      v61 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v60;
        _os_log_impl(&dword_243431000, v61, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      v5 = &unk_280C64000;
      if (v60)
      {
        CFRelease(v60);
      }
    }

    if (v59)
    {
      v62 = 0;
    }

    else
    {
      v62 = v58;
    }

    if (v62)
    {
      v40 = 0;
      v42 = 0;
      v41 = 0;
      goto LABEL_142;
    }

    v63 = v59;
    v40 = _CSPrepareStatement(a1, @"DELETE FROM CSChunkTable WHERE ct_rowid = ?", "DELETE FROM CSChunkTable WHERE ct_rowid = ?");
    v38 = theArray;
    if (!v40 || _CSBeginTransactionSqlRc(a1))
    {
      goto LABEL_76;
    }

    if (v63 < 1)
    {
      v64 = 0;
      goto LABEL_154;
    }

    v64 = 0;
    while (1)
    {
      v65 = CFArrayGetValueAtIndex(v38, v64);
      *v231 = 0;
      if (!CFNumberGetValue(v65, kCFNumberLongLongType, v231))
      {
        goto LABEL_129;
      }

      if (sqlite3_bind_int64(v40[2], 1, *v231))
      {
        goto LABEL_153;
      }

      v66 = CS_sqlite3_step(v40);
      if (v66 != 101)
      {
        break;
      }

      if (sqlite3_reset(v40[2]))
      {
        goto LABEL_153;
      }

      v38 = theArray;
      if (sqlite3_clear_bindings(v40[2]))
      {
        goto LABEL_154;
      }

LABEL_129:
      if (v63 == ++v64)
      {
        _CSFinishPreparedStatement(v40);
        goto LABEL_155;
      }
    }

    v67 = v66;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCompactStorage_cold_15();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v68 = sqlite3_errmsg(*(a1 + 24));
      cfa = CFStringCreateWithFormat(alloc, 0, @"sqlite3_step error: %d, %s", v67, v68);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_16();
      }

      v69 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = cfa;
        _os_log_impl(&dword_243431000, v69, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (cfa)
      {
        CFRelease(cfa);
      }
    }

LABEL_153:
    v38 = theArray;
LABEL_154:
    _CSFinishPreparedStatement(v40);
    if (v64 != v63)
    {
LABEL_156:
      _CSRollbackTransactionSqlRc(a1);
      v40 = 0;
LABEL_157:
      v41 = 0;
      v42 = 0xFFFFFFFFLL;
      goto LABEL_158;
    }

LABEL_155:
    if (_CSEndTransactionSqlRc(a1))
    {
      goto LABEL_156;
    }

    v74 = truncateStorageFile(a1, v222, v217, __fd, __fd);
    v40 = 0;
    if (v74)
    {
      v41 = 0;
    }

    else
    {
      v41 = __fd;
    }

    if (v74)
    {
      v42 = 0xFFFFFFFFLL;
    }

    else
    {
      v42 = 0;
    }

LABEL_158:
    v5 = &unk_280C64000;
LABEL_159:
    _CSFinishPreparedStatement(v40);
    CFRelease(v38);
LABEL_160:
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCompactStorage_cold_19();
    }

    if (os_log_type_enabled(*(v5 + 433), OS_LOG_TYPE_DEBUG))
    {
      v70 = CFStringCreateWithFormat(alloc, 0, @"ftRowId:%llu, totalFreeSpace:%llu, rc:%d\n", v222, v41, v42);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSCompactStorage_cold_20();
      }

      v71 = *(v5 + 433);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v70;
        _os_log_impl(&dword_243431000, v71, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      v5 = &unk_280C64000;
      if (v70)
      {
        CFRelease(v70);
      }
    }

    v72 = v30 - v41;
    if (v30 < v41)
    {
      v72 = 0;
    }

    if (v42)
    {
      v73 = 0;
    }

    else
    {
      v73 = v41;
    }

    v226 += v73;
    if (!v42)
    {
      v30 = v72;
    }

LABEL_176:
    v23 = 0;
    v19 = 0;
    ++v29;
  }

  while (v29 < Count && v30);
LABEL_190:
  _CSFinishPreparedStatement(v19);
  v4 = &unk_280C64000;
  v8 = v226;
LABEL_191:
  CFRelease(v17);
LABEL_192:
  if (a2 >= v8)
  {
    v75 = a2 - v8;
  }

  else
  {
    v75 = 0;
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSCompactStorage_cold_22();
  }

  if (os_log_type_enabled(*(v5 + 433), OS_LOG_TYPE_DEBUG))
  {
    v76 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"removeUnreferencedChunks freed %llu bytes, totalFreeSpace:%llu, spaceNeeded:%llu, rc:%d\n", v8, v8, v75, v23);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSCompactStorage_cold_23();
    }

    v77 = *(v5 + 433);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v76;
      _os_log_impl(&dword_243431000, v77, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v76)
    {
      CFRelease(v76);
    }
  }

  if (v8 >= a2 || *(a1 + 256))
  {
    goto LABEL_13;
  }

  if (*(a1 + 17) == 1)
  {
    _CSCompactStorage_cold_73();
  }

  v78 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (v78)
  {
    v79 = v78;
    v227 = v8;
    v80 = _CSPrepareStatement(a1, @"SELECT ft_rowid FROM CSStorageFileTable WHERE (ft_pspace > 0 AND ft_status IS NULL) ORDER BY ft_pspace DESC", "SELECT ft_rowid FROM CSStorageFileTable WHERE (ft_pspace > 0 AND ft_status IS NULL) ORDER BY ft_pspace DESC");
    if (v80)
    {
      v81 = v80;
      while (1)
      {
        v82 = CS_sqlite3_step(v81);
        if (v82 != 100)
        {
          break;
        }

        if (*(a1 + 256))
        {
          goto LABEL_518;
        }

        *buf = sqlite3_column_int64(v81[2], 0);
        v83 = CFNumberCreate(0, kCFNumberLongLongType, buf);
        if (!v83)
        {
          v85 = 0;
          v86 = 0xFFFFFFFFLL;
          goto LABEL_521;
        }

        v84 = v83;
        CFArrayAppendValue(v79, v83);
        CFRelease(v84);
      }

      v87 = v82;
      if (v82 != 101)
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSCompactStorage_cold_24();
        }

        if (os_log_type_enabled(*(v5 + 433), OS_LOG_TYPE_ERROR))
        {
          v88 = *MEMORY[0x277CBECE8];
          v89 = sqlite3_errmsg(*(a1 + 24));
          v90 = CFStringCreateWithFormat(v88, 0, @"sqlite3_step returned: %d %s\n", v87, v89);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCompactStorage_cold_25();
          }

          v91 = *(v5 + 433);
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v90;
            _os_log_impl(&dword_243431000, v91, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v90)
          {
            CFRelease(v90);
          }
        }
      }

      _CSFinishPreparedStatement(v81);
      v223 = CFArrayGetCount(v79);
      if (v223 >= 1)
      {
        v92 = 0;
        v85 = 0;
        alloca = *MEMORY[0x277CBECE8];
        v93 = v75;
        while (2)
        {
          if (*(a1 + 256))
          {
            v81 = 0;
            goto LABEL_520;
          }

          v94 = CFArrayGetValueAtIndex(v79, v92);
          v228 = 0;
          if (!CFNumberGetValue(v94, kCFNumberLongLongType, &v228))
          {
            goto LABEL_484;
          }

          v95 = v228;
          v230 = 0;
          if (*(a1 + 17) == 1)
          {
            _CSCompactStorage_cold_70();
          }

          v225 = v93;
          if (CSAttemptAutomaticFirstAidForStorageFile(a1, v228))
          {
            _CSCloseCachedStorageFile(a1, v95, 0);
            bzero(buf, 0x400uLL);
            if (!__CSCreateStoragePath(a1, v95, 0, buf, 0x400uLL))
            {
              goto LABEL_248;
            }

            v96 = open(buf, 2, 384);
            if (v96 != -1)
            {
              v97 = v96;
              memset(&valuePtr, 0, sizeof(valuePtr));
              if (fstat(v96, &valuePtr) == -1)
              {
                if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                {
                  _CSCompactStorage_cold_62();
                }

                if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                {
                  __fda = v97;
                  v111 = __error();
                  v112 = strerror(*v111);
                  v113 = CFStringCreateWithFormat(alloca, 0, @"fstat failed for %s: %s", buf, v112);
                  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                  {
                    _CSCompactStorage_cold_63();
                  }

                  v114 = CK_DEFAULT_LOG_INTERNAL_1;
                  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                  {
                    *v231 = 138543362;
                    *&v231[4] = v113;
                    _os_log_impl(&dword_243431000, v114, OS_LOG_TYPE_ERROR, "%{public}@", v231, 0xCu);
                  }

                  if (v113)
                  {
                    CFRelease(v113);
                  }

                  v100 = 0;
                  LODWORD(v102) = 0;
                  LODWORD(v97) = __fda;
                  goto LABEL_300;
                }

                v100 = 0;
              }

              else
              {
                st_size = valuePtr.st_size;
                v99 = _CSPrepareStatement(a1, @"SELECT CSChunkTable.ct_rowid, CSChunkTable.dataLen, CSChunkTable.offset FROM CSStorageFileTable INNER JOIN CSChunkTable on CSChunkTable.ft_rowid = CSStorageFileTable.ft_rowid WHERE CSChunkTable.ft_rowid = ? AND CSChunkTable.refCount > 0 AND CSChunkTable.location = ? AND CSStorageFileTable.ft_status IS NULL ORDER BY CSChunkTable.refCount DESC", "SELECT CSChunkTable.ct_rowid, CSChunkTable.dataLen, CSChunkTable.offset FROM CSStorageFileTable INNER JOIN CSChunkTable on CSChunkTable.ft_rowid = CSStorageFileTable.ft_rowid WHERE CSChunkTable.ft_rowid = ? AND CSChunkTable.refCount > 0 AND CSChunkTable.location = ? AND CSStorageFileTable.ft_status IS NULL ORDER BY CSChunkTable.refCount DESC");
                v100 = v99;
                if (v99)
                {
                  v206 = st_size;
                  v101 = sqlite3_bind_int64(v99[2], 1, v95);
                  if (!v101)
                  {
                    v101 = sqlite3_bind_int(v100[2], 2, 115);
                    if (!v101)
                    {
                      v204 = v100;
                      theArraya = 0;
                      *__fdb = v97;
                      v202 = 0;
                      v117 = 0;
                      v207 = 0;
                      v118 = 0;
                      while (1)
                      {
                        v205 = v117;
                        v119 = v204;
                        v120 = CS_sqlite3_step(v204);
                        if (v120 != 100)
                        {
                          break;
                        }

                        v121 = sqlite3_column_int64(v204[2], 0);
                        v122 = sqlite3_column_int(v204[2], 1);
                        v123 = sqlite3_column_int64(v204[2], 2);
                        v124 = v123;
                        if (!v122)
                        {
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_39();
                          }

                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            v145 = CFStringCreateWithFormat(alloca, 0, @"Bad chunk in %s, ctRowId:%llu, chunkOffset:0x%llx, chunkSize:0x%llx\n", buf, v121, v124, 0);
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_40();
                            }

                            v146 = CK_DEFAULT_LOG_INTERNAL_1;
                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              *v231 = 138543362;
                              *&v231[4] = v145;
                              _os_log_impl(&dword_243431000, v146, OS_LOG_TYPE_ERROR, "%{public}@", v231, 0xCu);
                            }

                            if (v145)
                            {
                              CFRelease(v145);
                            }
                          }

                          goto LABEL_380;
                        }

                        v125 = v122;
                        __nbyte = v122;
                        v203 = v121;
                        if (v123 > 0x1400064)
                        {
                          v147 = "offset_bounded_by_storage_file_length";
                          goto LABEL_359;
                        }

                        v126 = __fdb[0];
                        if (v125 > 0x500019)
                        {
                          v147 = "length_bounded_by_slot_size";
LABEL_359:
                          v148 = xpc_string_create("compact_source_invalid");
                          theArrayb = v147;
                          v149 = xpc_string_create(v147);
                          keys = xmmword_278DB9EB0;
                          values = v148;
                          v150 = v148;
                          v238 = v149;
                          v151 = xpc_dictionary_create(&keys, &values, 2uLL);
                          analytics_send_event();
                          xpc_release(v150);
                          xpc_release(v149);
                          xpc_release(v151);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_38();
                          }

                          v152 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_FAULT))
                          {
                            *v231 = 136316162;
                            *&v231[4] = buf;
                            *&v231[12] = 2048;
                            *&v231[14] = v203;
                            *&v231[22] = 2048;
                            v232 = v124;
                            v233 = 2048;
                            v234 = __nbyte;
                            v235 = 2080;
                            v236 = theArrayb;
                            v153 = v152;
                            v154 = "Bad chunk offset/size in %s, ctRowId:%llu, chunkOffset:0x%llx, chunkSize:0x%llx (%s violated)";
                            v155 = 52;
LABEL_367:
                            _os_log_impl(&dword_243431000, v153, OS_LOG_TYPE_FAULT, v154, v231, v155);
                          }

LABEL_380:
                          LODWORD(v105) = -1;
                          goto LABEL_381;
                        }

                        if (v123 + v125 > 0x1400064)
                        {
                          v147 = "chunk_contained_in_storage_file";
                          goto LABEL_359;
                        }

                        v127 = (theArraya + v125);
                        if (theArraya + v125 > 0x1400064)
                        {
                          v156 = xpc_string_create("compact_destination_invalid");
                          v157 = xpc_string_create("chunk_contained_in_storage_file");
                          keys = xmmword_278DB9EB0;
                          values = v156;
                          v238 = v157;
                          v158 = xpc_dictionary_create(&keys, &values, 2uLL);
                          analytics_send_event();
                          xpc_release(v156);
                          xpc_release(v157);
                          xpc_release(v158);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_37();
                          }

                          v159 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_FAULT))
                          {
                            *v231 = 134218754;
                            *&v231[4] = v203;
                            *&v231[12] = 2048;
                            *&v231[14] = theArraya;
                            *&v231[22] = 2048;
                            v232 = __nbyte;
                            v233 = 2080;
                            v234 = "chunk_contained_in_storage_file";
                            v153 = v159;
                            v154 = "Bad chunk offset/size, ctRowId:%llu, dstOffset:0x%llx, chunkSize:0x%llx (%s violated)";
                            v155 = 42;
                            goto LABEL_367;
                          }

                          goto LABEL_380;
                        }

                        v128 = v207;
                        if (!v207)
                        {
                          v128 = malloc_type_malloc(0x500019uLL, 0x100004052888210uLL);
                          if (!v128)
                          {
                            v207 = 0;
                            LODWORD(v105) = -1;
                            LODWORD(v102) = 100;
                            goto LABEL_383;
                          }
                        }

                        v207 = v128;
                        v129 = pread(__fdb[0], v128, __nbyte, v124);
                        if (v129 != __nbyte)
                        {
                          v160 = v129;
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_28();
                          }

                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            v161 = "Read size doesn't match request";
                            if (v160 < 0)
                            {
                              v162 = __error();
                              v161 = strerror(*v162);
                            }

                            v163 = CFStringCreateWithFormat(alloca, 0, @"pread(%d, 0x%llx, 0x%llx) failed: %s, read %lld bytes, file is 0x%llx(%lld) bytes long\n", *__fdb, __nbyte, v124, v161, v160, v206, v206);
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_29();
                            }

                            v164 = CK_DEFAULT_LOG_INTERNAL_1;
                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              *v231 = 138543362;
                              *&v231[4] = v163;
                              _os_log_impl(&dword_243431000, v164, OS_LOG_TYPE_ERROR, "%{public}@", v231, 0xCu);
                            }

                            if (v163)
                            {
                              CFRelease(v163);
                            }
                          }

                          CSsql_corruption_checking_do_0(a1, *(a1 + 24), "DELETE FROM CSChunkTable WHERE ct_rowid = %lld", v203);
                          goto LABEL_380;
                        }

                        v130 = v230;
                        if (!v230)
                        {
                          v131 = _CSCreateStorageFile(a1, &v230);
                          if (v131)
                          {
                            v105 = v131;
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_30();
                            }

                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              v168 = CFStringCreateWithFormat(alloca, 0, @"_CSCreateStorageFile failed, rc:%d\n", v105);
                              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                              {
                                _CSCompactStorage_cold_31();
                              }

                              v169 = CK_DEFAULT_LOG_INTERNAL_1;
                              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                              {
LABEL_457:
                                *v231 = 138543362;
                                *&v231[4] = v168;
                                _os_log_impl(&dword_243431000, v169, OS_LOG_TYPE_ERROR, "%{public}@", v231, 0xCu);
                              }

LABEL_458:
                              if (v168)
                              {
                                CFRelease(v168);
                              }
                            }

LABEL_381:
                            LODWORD(v102) = 100;
LABEL_382:
                            v126 = __fdb[0];
LABEL_383:
                            _CSFinishPreparedStatement(v204);
                            close(v126);
                            if (v207)
                            {
                              free(v207);
                            }

                            if (v205)
                            {
                              CFRelease(v205);
                            }

                            goto LABEL_250;
                          }

                          v130 = v230;
                          v202 = *(v230 + 2);
                        }

                        v132 = pwrite(v130[2], v207, __nbyte, theArraya);
                        if (v132 < 0)
                        {
                          LODWORD(v105) = *__error();
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_35();
                          }

                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            v165 = *__error();
                            v166 = __error();
                            v167 = strerror(*v166);
                            v168 = CFStringCreateWithFormat(alloca, 0, @"pwrite(%d, sz:0x%llx, o:0x%llx) failed: %d, %s\n", *__fdb, __nbyte, theArraya, v165, v167);
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_36();
                            }

                            v169 = CK_DEFAULT_LOG_INTERNAL_1;
                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_457;
                            }

                            goto LABEL_458;
                          }

                          goto LABEL_381;
                        }

                        v133 = v132;
                        v117 = v205;
                        if (v132 != __nbyte)
                        {
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_32();
                          }

                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            v170 = CFStringCreateWithFormat(alloca, 0, @"pwrite(%d, sz:0x%llx, o:0x%llx) failed: wrote %lld bytes\n", *__fdb, __nbyte, theArraya, v133);
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_33();
                            }

                            v171 = CK_DEFAULT_LOG_INTERNAL_1;
                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              *v231 = 138543362;
                              *&v231[4] = v170;
                              _os_log_impl(&dword_243431000, v171, OS_LOG_TYPE_ERROR, "%{public}@", v231, 0xCu);
                            }

                            if (v170)
                            {
                              CFRelease(v170);
                            }
                          }

                          LODWORD(v105) = 28;
                          goto LABEL_381;
                        }

                        if (!v205)
                        {
                          v117 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
                          if (!v117)
                          {
                            v205 = 0;
LABEL_488:
                            LODWORD(v105) = -1;
                            LODWORD(v102) = 100;
                            goto LABEL_382;
                          }
                        }

                        if (!v202)
                        {
                          _CSCompactStorage_cold_34();
                        }

                        *v231 = v202;
                        *&v231[8] = v203;
                        *&v231[16] = theArraya;
                        v134 = CFDataCreate(0, v231, 24);
                        if (!v134)
                        {
                          v205 = v117;
                          goto LABEL_488;
                        }

                        v135 = v134;
                        CFArrayAppendValue(v117, v134);
                        CFRelease(v135);
                        v118 += __nbyte;
                        theArraya = v127;
                      }

                      v102 = v120;
                      if (v120 != 101)
                      {
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSCompactStorage_cold_41();
                        }

                        v119 = v204;
                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                        {
                          v136 = sqlite3_errmsg(*(a1 + 24));
                          v137 = CFStringCreateWithFormat(alloca, 0, @"sqlite3_step error: %d, %s", v102, v136);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_42();
                          }

                          v138 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            *v231 = 138543362;
                            *&v231[4] = v137;
                            _os_log_impl(&dword_243431000, v138, OS_LOG_TYPE_ERROR, "%{public}@", v231, 0xCu);
                          }

                          v119 = v204;
                          if (v137)
                          {
                            CFRelease(v137);
                          }
                        }
                      }

                      _CSFinishPreparedStatement(v119);
                      if (v207)
                      {
                        free(v207);
                      }

                      if (v205)
                      {
                        if (v118)
                        {
                          v139 = *(v230 + 3);
                          v140 = v139 >= v118;
                          v141 = v139 - v118;
                          if (!v140)
                          {
                            v141 = 0;
                          }

                          v102 = CSsql_corruption_checking_do_0(a1, *(a1 + 24), "UPDATE CSStorageFileTable SET ft_space = %lld, ft_pspace = 0 WHERE ft_rowid = %lld", v141, *(v230 + 2));
                          if (v102)
                          {
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_43();
                            }

                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              v142 = sqlite3_errmsg(*(a1 + 24));
                              v143 = CFStringCreateWithFormat(alloca, 0, @"CSsql_do error: %d, %s", v102, v142);
                              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                              {
                                _CSCompactStorage_cold_44();
                              }

                              v144 = CK_DEFAULT_LOG_INTERNAL_1;
                              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                              {
                                *v231 = 138543362;
                                *&v231[4] = v143;
                                _os_log_impl(&dword_243431000, v144, OS_LOG_TYPE_ERROR, "%{public}@", v231, 0xCu);
                              }

                              if (v143)
                              {
                                CFRelease(v143);
                              }
                            }

LABEL_514:
                            v204 = 0;
LABEL_515:
                            v207 = 0;
                            LODWORD(v105) = -1;
                            goto LABEL_382;
                          }
                        }

                        v204 = _CSPrepareStatement(a1, @"UPDATE CSChunkTable SET offset = ?, ft_rowid = ? WHERE ct_rowid = ?", "UPDATE CSChunkTable SET offset = ?, ft_rowid = ? WHERE ct_rowid = ?");
                        if (!v204)
                        {
                          goto LABEL_514;
                        }

                        if (_CSBeginTransactionSqlRc(a1))
                        {
                          goto LABEL_515;
                        }

                        theArrayc = CFArrayGetCount(v205);
                        if (theArrayc < 1)
                        {
                          v185 = 0;
                        }

                        else
                        {
                          v185 = 0;
                          while (1)
                          {
                            v186 = CFArrayGetValueAtIndex(v205, v185);
                            BytePtr = CFDataGetBytePtr(v186);
                            sqlite3_bind_int64(v204[2], 1, BytePtr[2]);
                            sqlite3_bind_int64(v204[2], 2, *BytePtr);
                            sqlite3_bind_int64(v204[2], 3, BytePtr[1]);
                            v188 = CS_sqlite3_step(v204);
                            if (v188 != 101)
                            {
                              break;
                            }

                            v189 = sqlite3_reset(v204[2]);
                            if (v189 || (v189 = sqlite3_clear_bindings(v204[2])) != 0)
                            {
                              LODWORD(v102) = v189;
                              goto LABEL_500;
                            }

                            if (theArrayc == ++v185)
                            {
                              LODWORD(v102) = 0;
                              v185 = theArrayc;
                              goto LABEL_500;
                            }
                          }

                          v102 = v188;
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_45();
                          }

                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            v195 = sqlite3_errmsg(*(a1 + 24));
                            __nbytea = CFStringCreateWithFormat(alloca, 0, @"sqlite3_step error: %d, %s", v102, v195);
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_46();
                            }

                            v196 = CK_DEFAULT_LOG_INTERNAL_1;
                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              *v231 = 138543362;
                              *&v231[4] = __nbytea;
                              _os_log_impl(&dword_243431000, v196, OS_LOG_TYPE_ERROR, "%{public}@", v231, 0xCu);
                            }

                            if (__nbytea)
                            {
                              CFRelease(__nbytea);
                            }
                          }
                        }

LABEL_500:
                        _CSFinishPreparedStatement(v204);
                        if ((_CSSyncStorageFile(a1, v230, 1) & 1) == 0)
                        {
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_47();
                          }

                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            v197 = CFStringCreateWithFormat(alloca, 0, @"failed to sync storage file while relocating chunks in %s", "_CSRelocateStorageFileChunks");
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_48();
                            }

                            v198 = CK_DEFAULT_LOG_INTERNAL_1;
                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
                              *v231 = 138543362;
                              *&v231[4] = v197;
                              _os_log_impl(&dword_243431000, v198, OS_LOG_TYPE_ERROR, "%{public}@", v231, 0xCu);
                            }

                            if (v197)
                            {
                              CFRelease(v197);
                            }
                          }

LABEL_513:
                          _CSRollbackTransactionSqlRc(a1);
                          goto LABEL_514;
                        }

                        if (v185 != theArrayc)
                        {
                          goto LABEL_513;
                        }

                        LODWORD(v102) = _CSEndTransactionSqlRc(a1);
                        if (v102)
                        {
                          goto LABEL_513;
                        }

                        CFRelease(v205);
                        _CSCloseStorageFile(a1, v230, 0);
LABEL_413:
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSCompactStorage_cold_51();
                        }
                      }

                      else
                      {
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSCompactStorage_cold_49();
                        }

                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                        {
                          v172 = CFStringCreateWithFormat(alloca, 0, @"Nothing was moved from SF ft_rowid:%lld\n", v95);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_50();
                          }

                          v173 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                          {
                            *v231 = 138543362;
                            *&v231[4] = v172;
                            _os_log_impl(&dword_243431000, v173, OS_LOG_TYPE_DEBUG, "%{public}@", v231, 0xCu);
                          }

                          if (v172)
                          {
                            CFRelease(v172);
                          }

                          goto LABEL_413;
                        }
                      }

                      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                      {
                        v174 = CFStringCreateWithFormat(alloca, 0, @"Removing SF %s\n", buf);
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSCompactStorage_cold_52();
                        }

                        v175 = CK_DEFAULT_LOG_INTERNAL_1;
                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                        {
                          *v231 = 138543362;
                          *&v231[4] = v174;
                          _os_log_impl(&dword_243431000, v175, OS_LOG_TYPE_DEBUG, "%{public}@", v231, 0xCu);
                        }

                        if (v174)
                        {
                          CFRelease(v174);
                        }
                      }

                      if (unlink(buf))
                      {
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSCompactStorage_cold_53();
                        }

                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                        {
                          v176 = __error();
                          v177 = strerror(*v176);
                          v178 = CFStringCreateWithFormat(alloca, 0, @"unlink failed for %s: %s\n", buf, v177);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_54();
                          }

                          v179 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            *v231 = 138543362;
                            *&v231[4] = v178;
                            _os_log_impl(&dword_243431000, v179, OS_LOG_TYPE_ERROR, "%{public}@", v231, 0xCu);
                          }

                          if (v178)
                          {
                            CFRelease(v178);
                          }
                        }
                      }

                      close(__fdb[0]);
                      v180 = CSsql_corruption_checking_do_0(a1, *(a1 + 24), "DELETE FROM CSChunkTable WHERE ft_rowid = %lld", v95);
                      if (v180)
                      {
                        v181 = v180;
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSCompactStorage_cold_55();
                        }

                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                        {
                          v182 = sqlite3_errmsg(*(a1 + 24));
                          v183 = CFStringCreateWithFormat(alloca, 0, @"sqlite3_step error: %d (%s)", v181, v182);
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_56();
                          }

                          v184 = CK_DEFAULT_LOG_INTERNAL_1;
                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_467;
                          }

                          goto LABEL_468;
                        }
                      }

                      else
                      {
                        v190 = CSsql_corruption_checking_do_0(a1, *(a1 + 24), "DELETE FROM CSStorageFileTable WHERE ft_rowid = %lld", v95);
                        if (v190)
                        {
                          v191 = v190;
                          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                          {
                            _CSCompactStorage_cold_57();
                          }

                          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                          {
                            v192 = sqlite3_errmsg(*(a1 + 24));
                            v183 = CFStringCreateWithFormat(alloca, 0, @"CSsql_do error: %d (%s)", v191, v192);
                            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                            {
                              _CSCompactStorage_cold_58();
                            }

                            v184 = CK_DEFAULT_LOG_INTERNAL_1;
                            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                            {
LABEL_467:
                              *v231 = 138543362;
                              *&v231[4] = v183;
                              _os_log_impl(&dword_243431000, v184, OS_LOG_TYPE_ERROR, "%{public}@", v231, 0xCu);
                            }

LABEL_468:
                            if (v183)
                            {
                              CFRelease(v183);
                            }
                          }
                        }
                      }

                      v108 = v206 - v118;
                      if (v206 < v118)
                      {
                        _CSCompactStorage_cold_61();
                      }

                      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                      {
                        _CSCompactStorage_cold_59();
                      }

                      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                      {
                        v193 = CFStringCreateWithFormat(alloca, 0, @"fileSize:%llu, totalMoved:%llu\n", v206, v118);
                        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                        {
                          _CSCompactStorage_cold_60();
                        }

                        v194 = CK_DEFAULT_LOG_INTERNAL_1;
                        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
                        {
                          *v231 = 138543362;
                          *&v231[4] = v193;
                          _os_log_impl(&dword_243431000, v194, OS_LOG_TYPE_DEBUG, "%{public}@", v231, 0xCu);
                        }

                        if (v193)
                        {
                          CFRelease(v193);
                        }
                      }

LABEL_480:
                      v85 += v108;
                      if (v225 >= v108)
                      {
                        v93 = v225 - v108;
                      }

                      else
                      {
                        v93 = 0;
                      }

                      v4 = &unk_280C64000;
                      goto LABEL_484;
                    }
                  }

                  LODWORD(v102) = v101;
LABEL_300:
                  _CSFinishPreparedStatement(v100);
                  close(v97);
LABEL_249:
                  LODWORD(v105) = -1;
LABEL_250:
                  if (v230)
                  {
                    v106 = *(v230 + 2);
                    _CSCloseStorageFile(a1, v230, 0);
                    if (v106)
                    {
                      bzero(v231, 0x400uLL);
                      if (__CSCreateStoragePath(a1, v106, 0, v231, 0x400uLL))
                      {
                        unlink(v231);
                      }

                      _CSRemoveStorageFileFromDb(a1, v106);
                    }
                  }

                  if (v102 == 13 && v105 < 0)
                  {
                    v108 = 28;
                  }

                  else
                  {
                    v108 = v105;
                  }

                  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                  {
                    _CSCompactStorage_cold_68();
                  }

                  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                  {
                    v109 = CFStringCreateWithFormat(alloca, 0, @"There was a problem compacting SF ft_rowid:%lld, rc:%d\n", v95, v108);
                    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                    {
                      _CSCompactStorage_cold_69();
                    }

                    v110 = CK_DEFAULT_LOG_INTERNAL_1;
                    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                    {
                      *v231 = 138543362;
                      *&v231[4] = v109;
                      _os_log_impl(&dword_243431000, v110, OS_LOG_TYPE_ERROR, "%{public}@", v231, 0xCu);
                    }

                    if (v109)
                    {
                      CFRelease(v109);
                    }
                  }

                  if (!v108)
                  {
                    goto LABEL_480;
                  }

                  if (v108 == 28)
                  {
                    v81 = 0;
                    v86 = 28;
                    v4 = &unk_280C64000;
                    goto LABEL_521;
                  }

                  v4 = &unk_280C64000;
                  v93 = v225;
LABEL_484:
                  v86 = 0;
                  v81 = 0;
                  if (++v92 >= v223 || !v93)
                  {
                    goto LABEL_521;
                  }

                  continue;
                }
              }

              LODWORD(v102) = 0;
              goto LABEL_300;
            }

            if (*__error() == 2)
            {
              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
              {
                _CSCompactStorage_cold_66();
              }

              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
              {
                v103 = CFStringCreateWithFormat(alloca, 0, @"%s does not exist, ft_rowid:%llu\n", buf, v95);
                if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                {
                  _CSCompactStorage_cold_67();
                }

                v104 = CK_DEFAULT_LOG_INTERNAL_1;
                if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                {
                  break;
                }

LABEL_246:
                if (v103)
                {
                  CFRelease(v103);
                }
              }

LABEL_248:
              LODWORD(v102) = 0;
              goto LABEL_249;
            }

            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSCompactStorage_cold_64();
            }

            if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_248;
            }

            v115 = __error();
            v116 = strerror(*v115);
            v103 = CFStringCreateWithFormat(alloca, 0, @"open failed for %s, ft_rowid=%lld: %s", buf, v95, v116);
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSCompactStorage_cold_65();
            }

            v104 = CK_DEFAULT_LOG_INTERNAL_1;
            if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_246;
            }
          }

          else
          {
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSCompactStorage_cold_26();
            }

            if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_248;
            }

            v103 = CFStringCreateWithFormat(alloca, 0, @"Failed first aid check in %s, skipping chunk copying", "_CSRelocateStorageFileChunks");
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSCompactStorage_cold_27();
            }

            v104 = CK_DEFAULT_LOG_INTERNAL_1;
            if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_246;
            }
          }

          break;
        }

        *v231 = 138543362;
        *&v231[4] = v103;
        _os_log_impl(&dword_243431000, v104, OS_LOG_TYPE_ERROR, "%{public}@", v231, 0xCu);
        goto LABEL_246;
      }

      v81 = 0;
LABEL_518:
      v85 = 0;
LABEL_520:
      v86 = 0;
LABEL_521:
      _CSFinishPreparedStatement(v81);
      v5 = &unk_280C64000;
    }

    else
    {
      v85 = 0;
      v86 = 0xFFFFFFFFLL;
    }

    CFRelease(v79);
    v8 = v227;
  }

  else
  {
    v85 = 0;
    v86 = 0xFFFFFFFFLL;
  }

  if (v4[445] != -1)
  {
    _CSCompactStorage_cold_71();
  }

  v8 += v85;
  if (os_log_type_enabled(*(v5 + 433), OS_LOG_TYPE_DEBUG))
  {
    v199 = v75 - v85;
    if (v75 < v85)
    {
      v199 = 0;
    }

    v200 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"copyReferencedChunks freed %llu bytes, totalFreeSpace:%llu, spaceNeeded:%llu, rc:%d\n", v85, v8, v199, v86);
    if (v4[445] != -1)
    {
      _CSCompactStorage_cold_72();
    }

    v201 = *(v5 + 433);
    if (os_log_type_enabled(v201, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v200;
      _os_log_impl(&dword_243431000, v201, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v200)
    {
      CFRelease(v200);
    }

    goto LABEL_13;
  }

LABEL_15:
  if (os_log_type_enabled(*(v5 + 433), OS_LOG_TYPE_DEBUG))
  {
    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"freeSpace:%llu\n", v8);
    if (v4[445] != -1)
    {
      _CSCompactStorage_cold_76();
    }

    v10 = *(v5 + 433);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v9;
      _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  v11 = sqlite3_wal_checkpoint_v2(*(a1 + 24), 0, 1, 0, 0);
  if (v11)
  {
    v12 = v11;
    if (v4[445] != -1)
    {
      _CSCompactStorage_cold_77();
    }

    v13 = *(v5 + 433);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = sqlite3_errstr(v12);
      *buf = 136315394;
      *&buf[4] = "_CSCompactStorage";
      v241 = 2080;
      v242 = v14;
      _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_FAULT, "failed to checkpoint WAL in %s: %s", buf, 0x16u);
    }
  }

  return v8;
}

uint64_t _CSStoreChunks(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, void *a5, uint64_t a6)
{
  v80 = *MEMORY[0x277D85DE8];
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
  if (Mutable)
  {
    v10 = Mutable;
    if (a3)
    {
      v11 = (a2 + 84);
      v12 = a3;
      do
      {
        *&valuePtr = 0;
        if (_CSStorageFileForChunkSignature(a1, v11, 115, &valuePtr))
        {
          v13 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
          if (v13)
          {
            v14 = v13;
            CFSetAddValue(v10, v13);
            CFRelease(v14);
          }
        }

        v11 += a4;
        --v12;
      }

      while (v12);
    }

    Count = CFSetGetCount(v10);
    v16 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFSetGetValues(v10, v16);
    if (Count < 1)
    {
      free(v16);
    }

    else
    {
      v17 = 0;
      v18 = 1;
      do
      {
        *&valuePtr = 0;
        if (CFNumberGetValue(v16[v17], kCFNumberLongLongType, &valuePtr))
        {
          v18 &= CSAttemptAutomaticFirstAidForStorageFile(a1, valuePtr);
        }

        ++v17;
      }

      while (Count != v17);
      free(v16);
      CFRelease(v10);
      if (v18)
      {
        goto LABEL_25;
      }

      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStoreChunks_cold_1();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed first aid check in %s", "_CSStoreChunks");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStoreChunks_cold_2();
      }

      v19 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        LODWORD(valuePtr) = 138543362;
        *(&valuePtr + 4) = v10;
        _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_ERROR, "%{public}@", &valuePtr, 0xCu);
      }

      if (!v10)
      {
        goto LABEL_25;
      }
    }

    CFRelease(v10);
  }

LABEL_25:
  if (_CSBeginTransactionSqlRc(a1))
  {
    v20 = 0;
    goto LABEL_195;
  }

  _CSSetDirtyState(a1, 1);
  if (!a3)
  {
    if (_CSEndTransactionSqlRc(a1))
    {
      v20 = 0;
      goto LABEL_194;
    }

    goto LABEL_199;
  }

  v20 = 0;
  v65 = a4;
  alloc = *MEMORY[0x277CBECE8];
  while (1)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSStoreChunks_cold_3();
    }

    v21 = a2 + v20 * v65;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v22 = CFStringCreateWithFormat(alloc, 0, @"o:0x%llx, sz:0x%x, (0x%x/%u/%llu)\n", *(v21 + 72), *(v21 + 80), *(v21 + 84), *(v21 + 25), *(v21 + 16));
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStoreChunks_cold_4();
      }

      v23 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(valuePtr) = 138543362;
        *(&valuePtr + 4) = v22;
        _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", &valuePtr, 0xCu);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }

    if (!*(v21 + 80))
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStoreChunks_cold_5();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEFAULT))
      {
        if (a6)
        {
          v24 = *(a6 + 104);
        }

        else
        {
          v24 = 0;
        }

        v25 = CFStringCreateWithFormat(alloc, 0, @"zero length chunk for file %s\n", v24);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSStoreChunks_cold_6();
        }

        v26 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(valuePtr) = 138543362;
          *(&valuePtr + 4) = v25;
          _os_log_impl(&dword_243431000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@", &valuePtr, 0xCu);
        }

        if (v25)
        {
          CFRelease(v25);
        }
      }
    }

    if (*(a1 + 17))
    {
      v27 = 0;
      insert_rowid = 0;
      goto LABEL_143;
    }

    if (a6 && *(a6 + 183) == 1)
    {
      *(a6 + 528) = mach_absolute_time();
    }

    insert_rowid = _CSTokenForChunkSignature(a1, (v21 + 84), 115);
    if (insert_rowid)
    {
      v29 = _CSChunkIsInvalid(a1, insert_rowid);
      v30 = v29;
      v31 = v29;
      if (!a6)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v31 = 0;
      v30 = 1;
      if (!a6)
      {
        goto LABEL_62;
      }
    }

    if (*(a6 + 183) == 1)
    {
      *(a6 + 536) += mach_absolute_time() - *(a6 + 528);
    }

LABEL_62:
    if (v31)
    {
      v32 = @"UPDATE CSChunkTable SET cid = ?, ft_rowid = ?, offset = ?, dataLen = ?, refCount = ?, timestamp = ?, location = ? WHERE ct_rowid = ?";
      v33 = "UPDATE CSChunkTable SET cid = ?, ft_rowid = ?, offset = ?, dataLen = ?, refCount = ?, timestamp = ?, location = ? WHERE ct_rowid = ?";
    }

    else
    {
      v32 = @"INSERT INTO CSChunkTable (cid, ft_rowid, offset, dataLen, refCount, timestamp, location) VALUES (?, ?, ?, ?, ?, ?, ?)";
      v33 = "INSERT INTO CSChunkTable (cid, ft_rowid, offset, dataLen, refCount, timestamp, location) VALUES (?, ?, ?, ?, ?, ?, ?)";
    }

    v27 = _CSPrepareStatement(a1, v32, v33);
    if (!v27)
    {
      goto LABEL_143;
    }

    if (a6 && *(a6 + 183) == 1)
    {
      *(a6 + 528) = mach_absolute_time();
    }

    if ((v30 & 1) == 0)
    {
      if (*(v21 + 25) == 1)
      {
        if (a6 && *(a6 + 184) == 1)
        {
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSStoreChunks_cold_7();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
          {
            v39 = CFStringCreateWithFormat(alloc, 0, @"Retaining chunk: o:0x%llx, sz:0x%x\n", *(v21 + 72), *(v21 + 80));
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSStoreChunks_cold_8();
            }

            v40 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(valuePtr) = 138543362;
              *(&valuePtr + 4) = v39;
              _os_log_impl(&dword_243431000, v40, OS_LOG_TYPE_DEBUG, "%{public}@", &valuePtr, 0xCu);
            }

            if (v39)
            {
              CFRelease(v39);
            }
          }

          printSignature((v21 + 84));
        }

        if (!_CSRetainChunkForRowID(a1, insert_rowid))
        {
          insert_rowid = 0;
        }
      }

      goto LABEL_143;
    }

    if (v31)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStoreChunks_cold_11();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        v34 = CFStringCreateWithFormat(alloc, 0, @"Fixing corruption in chunk %llu by storing chunk: o:0x%llx, sz:0x%x\n", insert_rowid, *(v21 + 72), *(v21 + 80));
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSStoreChunks_cold_12();
        }

        v35 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(valuePtr) = 138543362;
          *(&valuePtr + 4) = v34;
          _os_log_impl(&dword_243431000, v35, OS_LOG_TYPE_DEBUG, "%{public}@", &valuePtr, 0xCu);
        }

        if (v34)
        {
          CFRelease(v34);
        }
      }

      v36 = _CSRefCountForChunkWithRowID(a1, insert_rowid);
      if (v36 < 0)
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSStoreChunks_cold_13();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v43 = CFStringCreateWithFormat(alloc, 0, @"Could not retrieve retain count for chunk with ct_rowid %llu", insert_rowid);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSStoreChunks_cold_14();
          }

          v44 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            LODWORD(valuePtr) = 138543362;
            *(&valuePtr + 4) = v43;
            _os_log_impl(&dword_243431000, v44, OS_LOG_TYPE_ERROR, "%{public}@", &valuePtr, 0xCu);
          }

          if (v43)
          {
            CFRelease(v43);
          }
        }

        v37 = 0;
        if (a6)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v37 = v36;
        if (v36)
        {
          v38 = v36;
          do
          {
            _CSReleaseChunkForSignature(a1, (v21 + 84));
            --v38;
          }

          while (v38);
        }

        if (a6)
        {
          goto LABEL_125;
        }
      }
    }

    else
    {
      if (a6)
      {
        if (*(a6 + 184) == 1)
        {
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSStoreChunks_cold_9();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
          {
            v41 = CFStringCreateWithFormat(alloc, 0, @"Storing chunk: o:0x%llx, sz:0x%x\n", *(v21 + 72), *(v21 + 80));
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSStoreChunks_cold_10();
            }

            v42 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(valuePtr) = 138543362;
              *(&valuePtr + 4) = v41;
              _os_log_impl(&dword_243431000, v42, OS_LOG_TYPE_DEBUG, "%{public}@", &valuePtr, 0xCu);
            }

            if (v41)
            {
              CFRelease(v41);
            }
          }

          printSignature((v21 + 84));
        }

        v37 = 0;
LABEL_125:
        if (*(a6 + 183) == 1)
        {
          *(a6 + 536) += mach_absolute_time() - *(a6 + 528);
          if (*(a6 + 183))
          {
            *(a6 + 512) = mach_absolute_time();
          }
        }

        v78 = 0u;
        memset(v79, 0, 25);
        valuePtr = 0u;
        v45 = _StoreChunk(a1, v21, &valuePtr);
        if (*(a6 + 183) == 1 && (*(a6 + 520) += mach_absolute_time() - *(a6 + 512), (*(a6 + 183) & 1) != 0))
        {
          *(a6 + 528) = mach_absolute_time();
          if ((v45 & 1) == 0)
          {
            goto LABEL_143;
          }
        }

        else if (!v45)
        {
          goto LABEL_143;
        }

        goto LABEL_136;
      }

      v37 = 0;
    }

    v78 = 0u;
    memset(v79, 0, 25);
    valuePtr = 0u;
    if ((_StoreChunk(a1, v21, &valuePtr) & 1) == 0)
    {
      goto LABEL_143;
    }

LABEL_136:
    v46 = "offset_bounded_by_storage_file_length";
    if (*(&v78 + 1) > 0x1400064uLL || (v46 = "length_bounded_by_slot_size", v79[2] > 0x500019u) || (v46 = "chunk_contained_in_storage_file", *(&v78 + 1) + v79[2] > 0x1400064))
    {
      v47 = xpc_string_create("chunk_insert_invalid");
      v48 = xpc_string_create(v46);
      *keys = xmmword_278DB9EB0;
      values[0] = v47;
      values[1] = v48;
      v49 = xpc_dictionary_create(keys, values, 2uLL);
      analytics_send_event();
      xpc_release(v47);
      xpc_release(v48);
      xpc_release(v49);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStoreChunks_cold_19();
      }

      v50 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        v70 = *(&v78 + 1);
        v71 = 1024;
        v72 = v79[2];
        v73 = 2080;
        v74 = v46;
        _os_log_impl(&dword_243431000, v50, OS_LOG_TYPE_FAULT, "Bad chunk value(s): o:0x%llx, sz:0x%x (%s violated)", buf, 0x1Cu);
      }

      goto LABEL_143;
    }

    v51 = CKSchemeAndSignatureSize((v21 + 84));
    v52 = sqlite3_bind_blob(v27[2], 1, (v21 + 84), v51, 0);
    if (v52)
    {
      goto LABEL_161;
    }

    v52 = sqlite3_bind_int(v27[2], 2, SHIDWORD(valuePtr));
    if (v52)
    {
      goto LABEL_161;
    }

    v52 = sqlite3_bind_int64(v27[2], 3, *(&v78 + 1));
    if (v52)
    {
      goto LABEL_161;
    }

    v52 = sqlite3_bind_int(v27[2], 4, v51 + v79[2] + 4);
    if (v52)
    {
      goto LABEL_161;
    }

    v52 = sqlite3_bind_int64(v27[2], 5, v37 + *(v21 + 25));
    if (v52)
    {
      goto LABEL_161;
    }

    v52 = sqlite3_bind_int64(v27[2], 6, *&v79[3]);
    if (v52)
    {
      goto LABEL_161;
    }

    v52 = sqlite3_bind_int(v27[2], 7, 115);
    if (v52)
    {
      v53 = 0;
    }

    else
    {
      v53 = v31;
    }

    if (v53 == 1)
    {
      v52 = sqlite3_bind_int64(v27[2], 8, insert_rowid);
    }

    if (v52)
    {
LABEL_161:
      v54 = v52;
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStoreChunks_cold_15();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v55 = sqlite3_errmsg(*(a1 + 24));
        v56 = CFStringCreateWithFormat(alloc, 0, @"sqlite3_bind failed: %s (%d)\n", v55, v54);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSStoreChunks_cold_16();
        }

        v57 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_167;
        }

        goto LABEL_168;
      }
    }

    else
    {
      v58 = CS_sqlite3_step(v27);
      if (v58 == 101)
      {
        *(v21 + 24) = 1;
        if ((v31 & 1) == 0)
        {
          insert_rowid = sqlite3_last_insert_rowid(*(a1 + 24));
        }
      }

      else
      {
        v59 = v58;
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSStoreChunks_cold_17();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v60 = sqlite3_errmsg(*(a1 + 24));
          v56 = CFStringCreateWithFormat(alloc, 0, @"sqlite3_step failed: %s (%d)\n", v60, v59);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSStoreChunks_cold_18();
          }

          v57 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
LABEL_167:
            *buf = 138543362;
            v70 = v56;
            _os_log_impl(&dword_243431000, v57, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

LABEL_168:
          if (v56)
          {
            CFRelease(v56);
          }
        }
      }
    }

LABEL_143:
    _CSFinishPreparedStatement(v27);
    if (a6 && *(a6 + 183) == 1)
    {
      *(a6 + 536) += mach_absolute_time() - *(a6 + 528);
    }

    a5[v20] = insert_rowid;
    if (!insert_rowid)
    {
      break;
    }

    if (++v20 == a3)
    {
      v20 = a3;
      goto LABEL_192;
    }
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSStoreChunks_cold_20();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v61 = CFStringCreateWithFormat(alloc, 0, @"_CSInsertChunk failed, i:%llu, count:%llu\n", v20, a3);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSStoreChunks_cold_21();
    }

    v62 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      LODWORD(valuePtr) = 138543362;
      *(&valuePtr + 4) = v61;
      _os_log_impl(&dword_243431000, v62, OS_LOG_TYPE_ERROR, "%{public}@", &valuePtr, 0xCu);
    }

    if (v61)
    {
      CFRelease(v61);
    }
  }

  if (!v20)
  {
    goto LABEL_193;
  }

LABEL_192:
  if (!_CSRecordPendingChunks(a1, a5, v20, *(a6 + 40)))
  {
    goto LABEL_194;
  }

LABEL_193:
  if (_CSEndTransactionSqlRc(a1))
  {
LABEL_194:
    _CSRollbackTransactionSqlRc(a1);
    goto LABEL_195;
  }

  if (v20 == a3)
  {
LABEL_199:
    _CSSetDirtyState(a1, 0);
    return 1;
  }

  else
  {
LABEL_195:
    if (a3 > v20)
    {
      bzero(&a5[v20], 8 * (a3 - v20));
    }

    return 0;
  }
}

uint64_t _CSStorageFileForChunkSignature(uint64_t a1, char *a2, int a3, sqlite3_int64 *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = _CSPrepareStatement(a1, @"SELECT ft_rowid FROM CSChunkTable WHERE cid = ? AND location = ?", "SELECT ft_rowid FROM CSChunkTable WHERE cid = ? AND location = ?");
  if (v8)
  {
    v9 = CKSchemeAndSignatureSize(a2);
    if (!sqlite3_bind_blob(v8[2], 1, a2, v9, 0) && !sqlite3_bind_int(v8[2], 2, a3))
    {
      v10 = CS_sqlite3_step(v8);
      v11 = v10;
      if ((v10 - 102) > 0xFFFFFFFD)
      {
        if (v10 == 100)
        {
          v16 = sqlite3_column_int64(v8[2], 0);
          v17 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSStorageFileForChunkSignature_cold_1();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v12 = *MEMORY[0x277CBECE8];
          v13 = sqlite3_errmsg(*(a1 + 24));
          v14 = CFStringCreateWithFormat(v12, 0, @"sqlite3_step returned: %s (%d), for signature:", v13, v11);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSStorageFileForChunkSignature_cold_2();
          }

          v15 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v20 = v14;
            _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v14)
          {
            CFRelease(v14);
          }
        }

        printSignature(a2);
      }
    }
  }

  v16 = 0;
  v17 = 0;
LABEL_18:
  _CSFinishPreparedStatement(v8);
  if (a4)
  {
    *a4 = v16;
  }

  return v17;
}

void _CSSetDirtyState(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  bzero(__s, 0x400uLL);
  if (CKChunkStoreGetLocation(a1, __s, 0x400uLL))
  {
    v4 = strlen(__s);
    snprintf(&__s[v4], 1024 - v4, "/%s", "ChunkStoreDirty");
    if (a2)
    {
      v5 = open(__s, 512, 384);
      if (v5 != -1)
      {
        close(v5);
        return;
      }

      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSSetDirtyState_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v12 = *MEMORY[0x277CBECE8];
        v13 = *__error();
        v14 = __error();
        v15 = strerror(*v14);
        v10 = CFStringCreateWithFormat(v12, 0, @"open failed on %s: %d (%s)\n", __s, v13, v15);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSSetDirtyState_cold_4();
        }

        v11 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        *buf = 138543362;
        v17 = v10;
LABEL_20:
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_21:
        if (v10)
        {
          CFRelease(v10);
        }
      }
    }

    else if (unlink(__s))
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSSetDirtyState_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v6 = *MEMORY[0x277CBECE8];
        v7 = *__error();
        v8 = __error();
        v9 = strerror(*v8);
        v10 = CFStringCreateWithFormat(v6, 0, @"unlink failed %s: %d (%s)\n", __s, v7, v9);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSSetDirtyState_cold_2();
        }

        v11 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        *buf = 138543362;
        v17 = v10;
        goto LABEL_20;
      }
    }
  }
}

const void *_CSRecordPendingChunks(uint64_t a1, const void *a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 17))
  {
    v4 = 0;
LABEL_7:
    insert_rowid = 0;
    goto LABEL_8;
  }

  v9 = _CSPrepareStatement(a1, @"INSERT INTO CSStoragePendingChunksTable (pct_inode, pct_count, pct_chunkRowIDs) VALUES (?, ?, ?)", "INSERT INTO CSStoragePendingChunksTable (pct_inode, pct_count, pct_chunkRowIDs) VALUES (?, ?, ?)");
  v4 = v9;
  if (!v9 || sqlite3_bind_int64(v9[2], 1, a4) || sqlite3_bind_int64(v4[2], 2, a3) || sqlite3_bind_blob(v4[2], 3, a2, 8 * a3, 0))
  {
    goto LABEL_7;
  }

  v12 = CS_sqlite3_step(v4);
  if (v12 == 101)
  {
    insert_rowid = sqlite3_last_insert_rowid(*(a1 + 24));
    goto LABEL_8;
  }

  v13 = v12;
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSRecordPendingChunks_cold_1();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v14 = *MEMORY[0x277CBECE8];
  v15 = sqlite3_errmsg(*(a1 + 24));
  insert_rowid = CFStringCreateWithFormat(v14, 0, @"sqlite3_step returned: %d (%s)\n", v13, v15);
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSRecordPendingChunks_cold_2();
  }

  v16 = CK_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v18 = insert_rowid;
    _os_log_impl(&dword_243431000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  if (insert_rowid)
  {
    CFRelease(insert_rowid);
    goto LABEL_7;
  }

LABEL_8:
  _CSFinishPreparedStatement(v4);
  return insert_rowid;
}

uint64_t *_CSCommitChunkedFile(uint64_t *result, sqlite3_int64 a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = result;
    if ((*(result + 17) & 1) == 0)
    {
      v4 = _CSPrepareStatement(result, @"SELECT pft_inode FROM CSStoragePendingFileChunklistTable WHERE pft_token = ?", "SELECT pft_inode FROM CSStoragePendingFileChunklistTable WHERE pft_token = ?");
      v5 = v4;
      if (v4 && !sqlite3_bind_int64(v4[2], 1, a2))
      {
        while (1)
        {
          v7 = CS_sqlite3_step(v5);
          if (v7 != 100)
          {
            break;
          }

          v6 = sqlite3_column_int64(v5[2], 0);
          _CSRemovePendingBatchesForInode(v2, v6);
        }

        v8 = v7;
        if (v7 != 101)
        {
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSCommitChunkedFile_cold_1();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v9 = *MEMORY[0x277CBECE8];
            v10 = sqlite3_errmsg(v2[3]);
            v11 = CFStringCreateWithFormat(v9, 0, @"sqlite3_step returned: %d %s\n", v8, v10);
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSCommitChunkedFile_cold_2();
            }

            v12 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v14 = v11;
              _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v11)
            {
              CFRelease(v11);
            }
          }
        }

        CSsql_corruption_checking_do_0(v2, v2[3], "DELETE FROM CSStoragePendingFileChunklistTable WHERE pft_token = %llu", a2);
      }

      return _CSFinishPreparedStatement(v5);
    }
  }

  return result;
}

uint64_t *_CSRemovePendingBatchesForInode(uint64_t a1, sqlite3_int64 a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 17) == 1)
  {
    _CSRemovePendingBatchesForInode_cold_7();
  }

  if (a2)
  {
    v4 = _CSPrepareStatement(a1, @"SELECT * FROM CSStoragePendingChunksTable WHERE pct_inode = ?", "SELECT * FROM CSStoragePendingChunksTable WHERE pct_inode = ?");
    v5 = v4;
    if (!v4)
    {
      return _CSFinishPreparedStatement(v5);
    }

    v6 = sqlite3_bind_int64(v4[2], 1, a2);
    if (v6)
    {
      v7 = v6;
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRemovePendingBatchesForInode_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v8 = *MEMORY[0x277CBECE8];
        v9 = sqlite3_errmsg(*(a1 + 24));
        v10 = CFStringCreateWithFormat(v8, 0, @"sqlite3_bind_int64 for inode:%lld returned: %d (%s)\n", a2, v7, v9);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSRemovePendingBatchesForInode_cold_2();
        }

        v11 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        *buf = 138543362;
        v23 = v10;
LABEL_33:
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_34:
        if (v10)
        {
          CFRelease(v10);
        }

        return _CSFinishPreparedStatement(v5);
      }

      return _CSFinishPreparedStatement(v5);
    }
  }

  else
  {
    v5 = _CSPrepareStatement(a1, @"SELECT * FROM CSStoragePendingChunksTable", "SELECT * FROM CSStoragePendingChunksTable");
    if (!v5)
    {
      return _CSFinishPreparedStatement(v5);
    }
  }

  alloc = *MEMORY[0x277CBECE8];
  while (1)
  {
    v12 = CS_sqlite3_step(v5);
    if (v12 != 100)
    {
      break;
    }

    v13 = sqlite3_column_int64(v5[2], 0);
    v14 = sqlite3_column_int64(v5[2], 2);
    v15 = sqlite3_column_blob(v5[2], 3);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRemovePendingBatchesForInode_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v16 = CFStringCreateWithFormat(alloc, 0, @"Removing pending batch for inode:%llu, rowId:%llu, count:0x%llu\n", a2, v13, v14);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRemovePendingBatchesForInode_cold_4();
      }

      v17 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v23 = v16;
        _os_log_impl(&dword_243431000, v17, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    _CSReleaseOrphanedChunks(a1, v15, v14);
    CSsql_corruption_checking_do_0(a1, *(a1 + 24), "DELETE FROM CSStoragePendingChunksTable WHERE pct_rowid = %lld", v13);
  }

  v18 = v12;
  if (v12 != 101)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRemovePendingBatchesForInode_cold_5();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v19 = sqlite3_errmsg(*(a1 + 24));
      v10 = CFStringCreateWithFormat(alloc, 0, @"sqlite3_step returned: %d %s\n", v18, v19);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRemovePendingBatchesForInode_cold_6();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 138543362;
      v23 = v10;
      goto LABEL_33;
    }
  }

  return _CSFinishPreparedStatement(v5);
}

sqlite3_int64 _CSRegisterStorageChunkList(uint64_t a1, const void *a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (_CSBeginTransactionSqlRc(a1))
  {
    return 0;
  }

  if (*(a1 + 17))
  {
    v8 = 0;
  }

  else
  {
    v9 = _CSPrepareStatement(a1, @"INSERT INTO CSStorageChunkListTable (clt_count, clt_chunkRowIDs, clt_inode) VALUES (?, ?, ?)", "INSERT INTO CSStorageChunkListTable (clt_count, clt_chunkRowIDs, clt_inode) VALUES (?, ?, ?)");
    v8 = v9;
    if (v9 && !sqlite3_bind_int64(v9[2], 1, a3) && !sqlite3_bind_blob(v8[2], 2, a2, 8 * a3, 0) && !sqlite3_bind_int64(v8[2], 3, a4))
    {
      v12 = CS_sqlite3_step(v8);
      if (v12 == 101)
      {
        insert_rowid = sqlite3_last_insert_rowid(*(a1 + 24));
        if (insert_rowid)
        {
          v10 = insert_rowid;
          if (!CSsql_corruption_checking_do_0(a1, *(a1 + 24), "DELETE FROM CSStoragePendingChunksTable WHERE pct_inode = %llu", a4) && !CSsql_corruption_checking_do_0(a1, *(a1 + 24), "INSERT INTO CSStoragePendingFileChunklistTable (pft_token, pft_inode) VALUES (%llu, %llu)", v10, a4))
          {
            _CSFinishPreparedStatement(v8);
            if (!_CSEndTransactionSqlRc(a1))
            {
              return v10;
            }

            goto LABEL_9;
          }
        }
      }

      else
      {
        v14 = v12;
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSRegisterStorageChunkList_cold_1();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v15 = *MEMORY[0x277CBECE8];
          v16 = sqlite3_errmsg(*(a1 + 24));
          v17 = CFStringCreateWithFormat(v15, 0, @"sqlite3_step returned: %d (%s)\n", v14, v16);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSRegisterStorageChunkList_cold_2();
          }

          v18 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v20 = v17;
            _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v17)
          {
            CFRelease(v17);
          }
        }
      }
    }
  }

  _CSFinishPreparedStatement(v8);
LABEL_9:
  _CSRollbackTransactionSqlRc(a1);
  return 0;
}

uint64_t _CSRemoveStoredFile(uint64_t a1, sqlite3_int64 a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 17) == 1)
  {
    _CSRemoveStoredFile_cold_13();
  }

  if (!a2)
  {
LABEL_17:
    v10 = 0;
    v13 = 0;
    goto LABEL_66;
  }

  v28 = 0;
  v4 = _CSChunkRefsForToken(a1, a2, &v28);
  if (!v4)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRemoveStoredFile_cold_9();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v10 = 0;
      goto LABEL_68;
    }

    v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"_CSChunkRefsForToken failed\n");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRemoveStoredFile_cold_10();
    }

    v12 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = v11;
      _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_17;
  }

  v5 = v4;
  v6 = _CSChunkSignatureForToken(a1, *v4, 0);
  if (v6)
  {
    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (v7)
    {
      v8 = v7;
      v9 = _CSBeginTransactionSqlRc(a1);
      if (v9)
      {
        v10 = v9;
        goto LABEL_63;
      }

      v15 = v28;
      if (!v28)
      {
LABEL_50:
        v19 = CSsql_corruption_checking_do_0(a1, *(a1 + 24), "DELETE FROM CSStorageChunkListTable WHERE clt_rowid = %llu", a2);
        if (v19)
        {
          v10 = v19;
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSRemoveStoredFile_cold_5();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v20 = *MEMORY[0x277CBECE8];
            v21 = sqlite3_errmsg(*(a1 + 24));
            v22 = CFStringCreateWithFormat(v20, 0, @"CSsql_do returned: %d (%s)\n", v10, v21);
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSRemoveStoredFile_cold_6();
            }

            v23 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v30 = v22;
              _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v22)
            {
              CFRelease(v22);
            }
          }
        }

        else
        {
          v10 = _CSEndTransactionSqlRc(a1);
          if (!v10)
          {
            v13 = 1;
            goto LABEL_64;
          }
        }

        _CSRollbackTransactionSqlRc(a1);
LABEL_63:
        v13 = 0;
LABEL_64:
        free(v8);
        goto LABEL_65;
      }

      alloc = *MEMORY[0x277CBECE8];
      v16 = v5;
      while (_CSChunkSignatureForToken(a1, *v16, v8))
      {
        if (_CSReleaseChunkForSignature(a1, v8))
        {
          goto LABEL_49;
        }

        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSRemoveStoredFile_cold_1();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_49;
        }

        v17 = CFStringCreateWithFormat(alloc, 0, @"_CSReleaseChunkForSignature failed for chunk token %lld\n", *v16);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSRemoveStoredFile_cold_2();
        }

        v18 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

LABEL_47:
        if (v17)
        {
          CFRelease(v17);
        }

LABEL_49:
        v16 += 2;
        if (!--v15)
        {
          goto LABEL_50;
        }
      }

      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRemoveStoredFile_cold_3();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      v17 = CFStringCreateWithFormat(alloc, 0, @"_CSChunkSignatureForToken failed for chunk token %lld\n", *v16);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRemoveStoredFile_cold_4();
      }

      v18 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

LABEL_46:
      *buf = 138543362;
      v30 = v17;
      _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      goto LABEL_47;
    }
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRemoveStoredFile_cold_7();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid signature size, sigSize:%u\n", 0);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRemoveStoredFile_cold_8();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v30 = v13;
        _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (!v13)
      {
        v10 = 0;
        goto LABEL_65;
      }

      CFRelease(v13);
    }
  }

  v10 = 0;
  v13 = 0;
LABEL_65:
  free(v5);
LABEL_66:
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSRemoveStoredFile_cold_11();
  }

LABEL_68:
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"token:%llu, result:%d, sqlRc:%d\n", a2, v13, v10);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRemoveStoredFile_cold_12();
    }

    v25 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v30 = v24;
      _os_log_impl(&dword_243431000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v24)
    {
      CFRelease(v24);
    }
  }

  return v13;
}