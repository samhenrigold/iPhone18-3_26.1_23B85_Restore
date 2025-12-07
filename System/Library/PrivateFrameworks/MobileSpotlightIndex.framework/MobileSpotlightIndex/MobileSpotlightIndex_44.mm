uint64_t flushReverseStore(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = setCrashStateTarget(2);
  v3 = *(a1 + 4416);
  v5 = v3 == -1073623027 || v3 == -804450864 || v3 == 2;
  if (v5 || *(a1 + 232) == *(a1 + 240))
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(6);
    v8 = 2 * (dword_1EBF46AE4 < 4);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(a1 + 4416);
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&dword_1C278D000, v7, v8, "skip flushReverseStore; %x", buf, 8u);
    }

    v10 = 0;
    *__error() = v6;
  }

  else
  {
    if (!storageResolvePtr(a1, 0, 1, 1))
    {
LABEL_24:
      v10 = 0;
      goto LABEL_12;
    }

    v12 = OSAtomicIncrement32(&exceptionSequenceNum);
    v13 = *(a1 + 216);
    if (v13)
    {
      v14 = *(v13 + 44);
    }

    else
    {
      v14 = -1;
    }

    v15 = setThreadIdAndInfo(v14, sStorageExceptionCallbacks, a1, 1, v12);
    v33 = HIDWORD(v15);
    v34 = v15;
    v32 = __PAIR64__(v16, v17);
    v18 = threadData[9 * v15 + 1] + 320 * HIDWORD(v15);
    v19 = *(v18 + 312);
    v20 = *(v18 + 224);
    if (v20)
    {
      v20(*(v18 + 288));
    }

    v31 = v34;
    v30 = v33;
    v29 = v32;
    if (_setjmp(v18))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      *(v18 + 312) = v19;
      CIOnThreadCleanUpReset(v29);
      dropThreadId(v31, 1, v12);
      CICleanUpReset(v31, HIDWORD(v29));
      goto LABEL_24;
    }

    dirtyStore(a1);
    v21 = storageResolvePtr(a1, 0x40uLL, 1024, 1);
    *buf = v21 + 8;
    storageHeaderStore(a1, buf);
    dirtyStoragePage(a1, v21);
    v22 = storageSyncPages(a1, a1 + 4376, 0x20000uLL);
    v23 = *__error();
    v24 = _SILogForLogForCategory(6);
    v25 = 2 * (dword_1EBF46AE4 < 4);
    if (os_log_type_enabled(v24, v25))
    {
      v28[0] = 0;
      _os_log_impl(&dword_1C278D000, v24, v25, "completed flushReverseStore", v28, 2u);
    }

    *__error() = v23;
    v26 = threadData[9 * v31 + 1] + 320 * v30;
    *(v26 + 312) = v19;
    v27 = *(v26 + 232);
    if (v27)
    {
      v27(*(v26 + 288));
    }

    dropThreadId(v31, 0, v12);
    v10 = v22;
  }

LABEL_12:
  setCrashStateTarget(v2);
  return v10;
}

uint64_t commitSyncReverseStore(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = setCrashStateTarget(2);
  if (*(a1 + 4416) == -1073623027)
  {
    v5 = 0;
    goto LABEL_26;
  }

  if (a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = -804450864;
  }

  *(a1 + 4416) = v6;
  if (!storageResolvePtr(a1, 0, 1, 1))
  {
LABEL_16:
    v5 = 14;
    goto LABEL_26;
  }

  v7 = OSAtomicIncrement32(&exceptionSequenceNum);
  v8 = *(a1 + 216);
  if (v8)
  {
    v9 = *(v8 + 44);
  }

  else
  {
    v9 = -1;
  }

  v10 = setThreadIdAndInfo(v9, sStorageExceptionCallbacks, a1, 1, v7);
  v27 = HIDWORD(v10);
  v28 = v10;
  v25 = v12;
  v26 = v11;
  v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v25);
    dropThreadId(v28, 1, v7);
    CICleanUpReset(v28, v26);
    goto LABEL_16;
  }

  if (*(a1 + 232) <= 0x43FuLL)
  {
    storageAllocOffsetFromEnd(a1, *(a1 + 224) + 960);
  }

  v16 = storageResolvePtr(a1, 0x40uLL, 1024, 1);
  *(v16 + 4) = *(a1 + 4416);
  v17 = *MEMORY[0x1E69E9AB8];
  fd_system_status_stall_if_busy();
  v18 = msync((v16 & ~v17), 0x1000uLL, 16);
  if (v18 == -1)
  {
    v18 = *__error();
  }

  v19 = *__error();
  v20 = _SILogForLogForCategory(6);
  v21 = 2 * (dword_1EBF46AE4 < 4);
  if (os_log_type_enabled(v20, v21))
  {
    *buf = 67109120;
    v30 = v18;
    _os_log_impl(&dword_1C278D000, v20, v21, "completed commitSyncReverseStore: %d", buf, 8u);
  }

  *__error() = v19;
  v22 = threadData[9 * v28 + 1] + 320 * v27;
  *(v22 + 312) = v14;
  v23 = *(v22 + 232);
  if (v23)
  {
    v23(*(v22 + 288));
  }

  dropThreadId(v28, 0, v7);
  v5 = v18;
LABEL_26:
  setCrashStateTarget(v4);
  return v5;
}

uint64_t shadowReverseStore(uint64_t a1, char a2, _DWORD *a3)
{
  v109 = *MEMORY[0x1E69E9840];
  v6 = setCrashStateTarget(2);
  if (!storageResolvePtr(a1, 0, 1, 1))
  {
LABEL_11:
    v16 = 0;
LABEL_12:
    v17 = *__error();
    v18 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v101 = "shadowReverseStore";
      v102 = 1024;
      v103 = 4218;
      v104 = 1024;
      v105 = v16;
      _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: shadowReverseStore fail. metadata = %d", buf, 0x18u);
    }

    *__error() = v17;
    return 104;
  }

  v7 = OSAtomicIncrement32(&exceptionSequenceNum);
  *buf = 0;
  v99 = 0;
  v98 = 0;
  v8 = *(a1 + 216);
  if (v8)
  {
    v9 = *(v8 + 44);
  }

  else
  {
    v9 = -1;
  }

  v10 = setThreadIdAndInfo(v9, sStorageExceptionCallbacks, a1, 1, v7);
  *buf = v10;
  v98 = v12;
  v99 = __PAIR64__(HIDWORD(v10), v11);
  v13 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  v14 = *(v13 + 312);
  v15 = *(v13 + 224);
  if (v15)
  {
    v15(*(v13 + 288));
  }

  v97 = *buf;
  v96 = HIDWORD(v99);
  v95 = __PAIR64__(v99, v98);
  if (_setjmp(v13))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v94 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v94, 2u);
    }

    *(v13 + 312) = v14;
    CIOnThreadCleanUpReset(v95);
    dropThreadId(v97, 1, v7);
    CICleanUpReset(v97, HIDWORD(v95));
    goto LABEL_11;
  }

  v20 = *(storageResolvePtr(a1, 0x40uLL, 1024, 1) + 4);
  v21 = threadData[9 * v97 + 1] + 320 * v96;
  *(v21 + 312) = v14;
  v22 = *(v21 + 232);
  if (v22)
  {
    v22(*(v21 + 288));
  }

  dropThreadId(v97, 0, v7);
  if (!*(a1 + 4416) || !v20)
  {
    v16 = v20;
    goto LABEL_12;
  }

  if (v20 != -804450864)
  {
    if (v20 == 2)
    {
      v76 = __si_assert_copy_extra(*(a1 + 216));
      v77 = v76;
      v78 = "";
      if (v76)
      {
        v78 = v76;
      }

      __message_assert("%s:%u: failed assertion '%s' %s invalid state", "FileTree.c", 4224, "metadata != kIndexShutDownStateFastFlush", v78);
      free(v77);
      if (__valid_fsp(*(a1 + 216)))
      {
        v79 = 2989;
      }

      else
      {
        v79 = 3072;
      }

      *v79 = -559038737;
      abort();
    }

    v23 = *__error();
    v24 = _SILogForLogForCategory(6);
    v25 = 2 * (dword_1EBF46AE4 < 4);
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_24;
    }

    *buf = 67109120;
    LODWORD(v101) = v20;
    v26 = "shadowReverseStore: %d";
    v27 = v24;
    v28 = v25;
    v29 = 8;
    goto LABEL_23;
  }

  v30 = *(a1 + 216);
  if (v30)
  {
    v31 = *(v30 + 44);
  }

  else
  {
    v31 = 0xFFFFFFFFLL;
  }

  if (isRegisteredForCloning(v31))
  {
    if (copyFileFallback(v31, "reverseDirectoryStore", v31, "reverseDirectoryStore.shadow", a3, 0, 1))
    {
      bit_vector_set_bits_4698((a1 + 4376), 0, *(a1 + 4376));
      v23 = *__error();
      v32 = _SILogForLogForCategory(6);
      v33 = 2 * (dword_1EBF46AE4 < 4);
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v26 = "Completed shadowReverseStore";
      v27 = v32;
      v28 = v33;
      v29 = 2;
LABEL_23:
      _os_log_impl(&dword_1C278D000, v27, v28, v26, buf, v29);
LABEL_24:
      *__error() = v23;
      return 0;
    }

    v34 = *__error();
    v35 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v101 = "shadowReverseStore";
      v102 = 1024;
      v103 = 4241;
      _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: copyFile error, src: reverseDirectoryStore, dst: reverseDirectoryStore.shadow", buf, 0x12u);
    }

    *__error() = v34;
  }

  v36 = *(a1 + 232);
  v37 = v6;
  memset(v108, 0, sizeof(v108));
  v92 = 0;
  v93 = 0;
  sibling_protected = fd_create_sibling_protected(*(a1 + 216), "reverseDirectoryStore.shadow", 514, 0);
  fd_no_cache(sibling_protected);
  if (!sibling_protected)
  {
    v44 = *__error();
    v45 = *__error();
    v46 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v101 = "shadowReverseStore";
      v102 = 1024;
      v103 = 4265;
      v104 = 1024;
      v105 = v44;
      v106 = 2080;
      v107 = "reverseDirectoryStore.shadow";
      _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, "%s:%d: open err: %d, %s", buf, 0x22u);
    }

    v47 = 0;
    v48 = -1;
    v49 = v45;
    goto LABEL_96;
  }

  v39 = (v36 + 0x1FFFF) >> 17;
  if ((a2 & 1) == 0 && v39 >= *(a1 + 4376))
  {
    v39 = *(a1 + 4376);
  }

  v40 = malloc_type_malloc(0x20000uLL, 0x51B4EE50uLL);
  if (!v40)
  {
    v80 = __si_assert_copy_extra(0);
    v81 = v80;
    v82 = "";
    if (v80)
    {
      v82 = v80;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 4275, "readBuffer", v82);
    free(v81);
    if (__valid_fs(-1))
    {
      v83 = 2989;
    }

    else
    {
      v83 = 3072;
    }

    *v83 = -559038737;
    abort();
  }

  v41 = v40;
  v42 = *(a1 + 232);
  v43 = *(a1 + 216);
  if (!(v42 >> 17))
  {
    if (fd_pread(v43, v41, v42, 0) != -1)
    {
      if (fd_pwrite(sibling_protected, v41, *(a1 + 232), 0) != -1)
      {
        bit_vector_internal_touch_for_set_4691((a1 + 4376), 0);
        CFBitVectorSetBitAtIndex(*(a1 + 4392), 0, 0);
        goto LABEL_83;
      }

      v44 = *__error();
      v65 = *__error();
      v66 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_95;
      }

      *buf = 136315650;
      v101 = "shadowReverseStore";
      v102 = 1024;
      v103 = 4284;
      v104 = 1024;
      v105 = v44;
      v67 = "%s:%d: pwrite err: %d";
      goto LABEL_94;
    }

    v44 = *__error();
    v65 = *__error();
    v66 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v101 = "shadowReverseStore";
      v102 = 1024;
      v103 = 4279;
      v104 = 1024;
      v105 = v44;
      v67 = "%s:%d: read err: %d";
LABEL_94:
      _os_log_error_impl(&dword_1C278D000, v66, OS_LOG_TYPE_ERROR, v67, buf, 0x18u);
      goto LABEL_95;
    }

    goto LABEL_95;
  }

  v50 = _fd_acquire_fd(v43, &v92);
  if (v50 == -1)
  {
    v44 = *__error();
    v65 = *__error();
    v66 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v101 = "shadowReverseStore";
      v102 = 1024;
      v103 = 4292;
      v104 = 1024;
      v105 = v44;
      v67 = "%s:%d: fd_open err: %d";
      goto LABEL_94;
    }

LABEL_95:
    v48 = -1;
    v49 = v65;
    v47 = v41;
LABEL_96:
    v68 = -1;
LABEL_97:
    *__error() = v49;
    goto LABEL_98;
  }

  __fd = v50;
  v51 = _fd_acquire_fd(sibling_protected, &v93);
  if (v51 == -1)
  {
    v44 = *__error();
    v71 = *__error();
    v72 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v101 = "shadowReverseStore";
      v102 = 1024;
      v103 = 4298;
      v104 = 1024;
      v105 = v44;
      _os_log_error_impl(&dword_1C278D000, v72, OS_LOG_TYPE_ERROR, "%s:%d: fd_open err: %d", buf, 0x18u);
    }

    v68 = -1;
    v49 = v71;
    v47 = v41;
    v48 = __fd;
    goto LABEL_97;
  }

  v91 = sibling_protected;
  v89 = v51;
  if (v39 < 1)
  {
    goto LABEL_82;
  }

  v52 = 0;
  v53 = 0;
  do
  {
    v54 = v53;
    if (v53 == 100)
    {
      v55 = 0;
      while (1)
      {
        if (*a3 == 1 || *a3 == -1 && (a2 & 1) != 0)
        {
          goto LABEL_106;
        }

        v56 = *(v108 + v55);
        if (prot_pread(__fd, v41, 0x20000uLL, v56 << 17) == -1)
        {
          break;
        }

        if (*a3 == 1 || *a3 == -1 && (a2 & 1) != 0)
        {
          goto LABEL_106;
        }

        if (prot_pwrite_guarded(v89, &v93, v41, 0x20000uLL, v56 << 17) == -1)
        {
          v44 = *__error();
          v73 = *__error();
          v74 = _SILogForLogForCategory(0);
          if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_110;
          }

          *buf = 136315650;
          v101 = "shadowReverseStore";
          v102 = 1024;
          v103 = 4320;
          v104 = 1024;
          v105 = v44;
          v75 = "%s:%d: pwrite err: %d";
          goto LABEL_118;
        }

        bit_vector_internal_touch_for_set_4691((a1 + 4376), v56);
        CFBitVectorSetBitAtIndex(*(a1 + 4392), v56, 0);
        v55 += 4;
        if (v55 == 400)
        {
          v54 = 0;
          goto LABEL_65;
        }
      }

      v44 = *__error();
      v73 = *__error();
      v74 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
LABEL_110:
        v49 = v73;
        v47 = v41;
        v68 = v89;
        v48 = __fd;
        sibling_protected = v91;
        goto LABEL_97;
      }

      *buf = 136315650;
      v101 = "shadowReverseStore";
      v102 = 1024;
      v103 = 4311;
      v104 = 1024;
      v105 = v44;
      v75 = "%s:%d: read err: %d";
LABEL_118:
      _os_log_error_impl(&dword_1C278D000, v74, OS_LOG_TYPE_ERROR, v75, buf, 0x18u);
      goto LABEL_110;
    }

LABEL_65:
    if ((a2 & 1) != 0 || *(a1 + 4376) > v52 && CFBitVectorGetBitAtIndex(*(a1 + 4392), v52))
    {
      *(v108 + v54) = v52;
      v57 = (v54 + 1);
    }

    else
    {
      v57 = v54;
    }

    ++v52;
    v53 = v57;
  }

  while (v52 != v39);
  if (!v57)
  {
LABEL_82:
    prot_fsync(v89, 0);
    _fd_release_fd(*(a1 + 216), __fd, 0, v92);
    sibling_protected = v91;
    _fd_release_fd(v91, v89, 0, v93);
LABEL_83:
    v110.length = *(a1 + 4376);
    v110.location = 0;
    FirstIndexOfBit = CFBitVectorGetFirstIndexOfBit(*(a1 + 4392), v110, 1u);
    if (FirstIndexOfBit != -1 && FirstIndexOfBit < *(a1 + 232) >> 17)
    {
      v84 = FirstIndexOfBit;
      v85 = __si_assert_copy_extra(*(a1 + 216));
      v86 = v85;
      v87 = "";
      if (v85)
      {
        v87 = v85;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Expected bitmap to be clean for index in state %x. Dirty bit at index %lx", "FileTree.c", 4393, "dirtyBitIx == kCFNotFound || dirtyBitIx >= (CFIndex)(storageGetCount(&store->storage)/STORAGE_SHADOWPAGESIZE)", v87, -804450864, v84);
      free(v86);
      if (__valid_fsp(*(a1 + 216)))
      {
        v88 = 2989;
      }

      else
      {
        v88 = 3072;
      }

      *v88 = -559038737;
      abort();
    }

    fd_release(sibling_protected);
    free(v41);
    v62 = *__error();
    v63 = _SILogForLogForCategory(6);
    v64 = 2 * (dword_1EBF46AE4 < 4);
    if (os_log_type_enabled(v63, v64))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v63, v64, "Completed shadowReverseStore", buf, 2u);
    }

    *__error() = v62;
    setCrashStateTarget(v37);
    return 0;
  }

  v58 = v57;
  v59 = v108;
  while (*a3 != 1 && (*a3 != -1 || (a2 & 1) == 0))
  {
    v60 = *v59;
    if (prot_pread(__fd, v41, 0x20000uLL, v60 << 17) == -1)
    {
      v44 = *__error();
      v73 = *__error();
      v74 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_110;
      }

      *buf = 136315650;
      v101 = "shadowReverseStore";
      v102 = 1024;
      v103 = 4348;
      v104 = 1024;
      v105 = v44;
      v75 = "%s:%d: pread err: %d";
      goto LABEL_118;
    }

    if (*a3 == 1 || *a3 == -1 && (a2 & 1) != 0)
    {
      break;
    }

    if (prot_pwrite_guarded(v89, &v93, v41, 0x20000uLL, v60 << 17) == -1)
    {
      v44 = *__error();
      v73 = *__error();
      v74 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_110;
      }

      *buf = 136315650;
      v101 = "shadowReverseStore";
      v102 = 1024;
      v103 = 4357;
      v104 = 1024;
      v105 = v44;
      v75 = "%s:%d: pwrite err: %d";
      goto LABEL_118;
    }

    bit_vector_set_4833((a1 + 4376), v60);
    ++v59;
    if (!--v58)
    {
      goto LABEL_82;
    }
  }

LABEL_106:
  v44 = 89;
  v47 = v41;
  v68 = v89;
  v48 = __fd;
  sibling_protected = v91;
LABEL_98:
  v69 = *__error();
  v70 = _SILogForLogForCategory(6);
  if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v101 = "shadowReverseStore";
    v102 = 1024;
    v103 = 4406;
    _os_log_error_impl(&dword_1C278D000, v70, OS_LOG_TYPE_ERROR, "%s:%d: Failed shadowReverseStore", buf, 0x12u);
  }

  *__error() = v69;
  free(v47);
  _fd_release_fd(*(a1 + 216), v48, 0, v92);
  _fd_release_fd(sibling_protected, v68, 0, v93);
  fd_release(sibling_protected);
  setCrashStateTarget(v37);
  if (v44)
  {
    return v44;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void bit_vector_set_4833(CFIndex *a1, CFIndex a2)
{
  bit_vector_internal_touch_for_set_4691(a1, a2);
  v4 = a1[2];

  CFBitVectorSetBitAtIndex(v4, a2, 0);
}

uint64_t commitShadowReverseStore(uint64_t a1)
{
  v2 = setCrashStateTarget(2);
  if (!storageResolvePtr(a1, 0, 1, 1))
  {
LABEL_11:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  v3 = OSAtomicIncrement32(&exceptionSequenceNum);
  v4 = *(a1 + 216);
  if (v4)
  {
    v5 = *(v4 + 44);
  }

  else
  {
    v5 = -1;
  }

  v6 = setThreadIdAndInfo(v5, sStorageExceptionCallbacks, a1, 1, v3);
  v28 = HIDWORD(v6);
  v29 = v6;
  v27 = __PAIR64__(v7, v8);
  v9 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
  v10 = *(v9 + 312);
  v11 = *(v9 + 224);
  if (v11)
  {
    v11(*(v9 + 288));
  }

  v26 = v29;
  v25 = v28;
  v24 = v27;
  if (_setjmp(v9))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v23, 2u);
    }

    *(v9 + 312) = v10;
    CIOnThreadCleanUpReset(v24);
    dropThreadId(v26, 1, v3);
    CICleanUpReset(v26, HIDWORD(v24));
    goto LABEL_11;
  }

  v13 = storageResolvePtr(a1, 0x40uLL, 1024, 1);
  if (v13)
  {
    v14 = v13;
    *(v13 + 4) = -1073623027;
    v15 = *MEMORY[0x1E69E9AB8];
    fd_system_status_stall_if_busy();
    v16 = msync((v14 & ~v15), 0x1000uLL, 16);
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  *(a1 + 4416) = -1073623027;
  v17 = *__error();
  v18 = _SILogForLogForCategory(6);
  v19 = 2 * (dword_1EBF46AE4 < 4);
  if (os_log_type_enabled(v18, v19))
  {
    *v23 = 0;
    _os_log_impl(&dword_1C278D000, v18, v19, "Completed commitShadowReverseStore", v23, 2u);
  }

  *__error() = v17;
  v20 = threadData[9 * v26 + 1] + 320 * v25;
  *(v20 + 312) = v10;
  v21 = *(v20 + 232);
  if (v21)
  {
    v21(*(v20 + 288));
  }

  dropThreadId(v26, 0, v3);
  v12 = v16;
LABEL_20:
  setCrashStateTarget(v2);
  return v12;
}

void freeReverseDirStore(uint64_t a1)
{
  v2 = (a1 + 4376);
  v3 = *(a1 + 4392);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 4392) = 0;
  }

  *v2 = 0;
  v2[1] = 0;
  db_rwlock_destroy((a1 + 4424));
  storageClose(a1);
  v4 = *(a1 + 4640);
  if (v4)
  {
    _Block_release(v4);
  }

  free(a1);
}

char *createReverseStore(int a1, const char *a2, void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x1228uLL, 0x10A0040394FE5FDuLL);
  *(v6 + 579) = 0;
  *(v6 + 4424) = 0u;
  *(v6 + 4440) = 0u;
  *(v6 + 4456) = 0u;
  *(v6 + 4472) = 0u;
  *(v6 + 4488) = 0u;
  *(v6 + 4504) = 0u;
  *(v6 + 4520) = 0u;
  *(v6 + 4536) = 0u;
  *(v6 + 4552) = 0u;
  *(v6 + 4568) = 0u;
  *(v6 + 4584) = 0u;
  *(v6 + 4600) = 0u;
  *(v6 + 4616) = 0u;
  pthread_mutex_init((v6 + 4424), 0);
  v9 = 0;
  asprintf(&v9, "%sreverseDirectoryStore", a2);
  v7 = fd_create_protected(a1, v9, 1538, 0);
  free(v9);
  if (reverseDirStoreInit(v6, v7, 1, 0, a3))
  {
    dirtyStore(v6);
  }

  else
  {
    freeReverseDirStore(v6);
    return 0;
  }

  return v6;
}

char *openReverseStore(uint64_t a1, int a2, int a3, int a4, _DWORD *a5, uint64_t a6, void *a7)
{
  v14 = setCrashStateTarget(2);
  if (a2 > 10)
  {
    return 0;
  }

  v15 = v14;
  if (!a3 || (a4 & 1) != 0)
  {
    if ((a3 & a4) != 0)
    {
      v20 = "reverseDirectoryStore.shadow";
    }

    else
    {
      v20 = "reverseDirectoryStore";
    }
  }

  else
  {
    v45 = a6;
    v16 = v14;
    v17 = *__error();
    v18 = _SILogForLogForCategory(0);
    v19 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v18, v19, "Recovering reverse store on open", buf, 2u);
    }

    *__error() = v17;
    v20 = "reverseDirectoryStore";
    v15 = v16;
    a6 = v45;
    if ((recoverReverseStore(a1, "reverseDirectoryStore.shadow", "reverseDirectoryStore", a5, 1) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (a4)
  {
    v21 = 0;
  }

  else
  {
    v21 = 2;
  }

  v22 = fd_create_protected(a1, v20, v21, 0);
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  v24 = malloc_type_calloc(1uLL, 0x1228uLL, 0x10A0040394FE5FDuLL);
  *(v24 + 1104) = -1073623027;
  *(v24 + 579) = 0;
  *(v24 + 4424) = 0u;
  *(v24 + 4440) = 0u;
  *(v24 + 4456) = 0u;
  *(v24 + 4472) = 0u;
  *(v24 + 4488) = 0u;
  *(v24 + 4504) = 0u;
  *(v24 + 4520) = 0u;
  *(v24 + 4536) = 0u;
  *(v24 + 4552) = 0u;
  *(v24 + 4568) = 0u;
  *(v24 + 4584) = 0u;
  *(v24 + 4600) = 0u;
  *(v24 + 4616) = 0u;
  pthread_mutex_init((v24 + 4424), 0);
  if (!reverseDirStoreInit(v24, v23, 0, a4, a7))
  {
    freeReverseDirStore(v24);
    v26 = *__error();
    v27 = _SILogForLogForCategory(6);
    v28 = 2 * (dword_1EBF46AE4 < 4);
    if (!os_log_type_enabled(v27, v28))
    {
LABEL_21:
      *__error() = v26;
LABEL_22:
      setCrashStateTarget(v15);
      return 0;
    }

    *v46 = 0;
    v29 = "Failed open for reverse store";
    v30 = v46;
LABEL_20:
    _os_log_impl(&dword_1C278D000, v27, v28, v29, v30, 2u);
    goto LABEL_21;
  }

  state = get_state(v24);
  *(v24 + 1104) = state;
  if (*(v24 + 29) <= 0x447uLL)
  {
LABEL_17:
    freeReverseDirStore(v24);
    return 0;
  }

  if (!a6 || state != 2 || (a3 & 1) != 0 || (a4 & 1) != 0)
  {
    if (state == -804450864 && (a4 & 1) == 0)
    {
      v33 = a5;
      v34 = *__error();
      v35 = _SILogForLogForCategory(0);
      v36 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v35, v36))
      {
        *v49 = 0;
        _os_log_impl(&dword_1C278D000, v35, v36, "Shadowing reverse store on open", v49, 2u);
      }

      *__error() = v34;
      if (shadowReverseStore(v24, 1, v33))
      {
        goto LABEL_17;
      }

      fd_sync(*(v24 + 27), 1);
      if (commitShadowReverseStore(v24))
      {
        goto LABEL_17;
      }

      fd_sync(*(v24 + 27), 1);
    }

    bit_vector_init_4656((v24 + 4376));
  }

  else
  {
    v32 = *(a6 + 16);
    *(v24 + 4376) = *a6;
    *(v24 + 549) = v32;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    *a6 = 0;
    dirtyStore(v24);
  }

  v37 = get_state(v24);
  *(v24 + 1104) = v37;
  if (a2)
  {
    if (_reverseStoreValidate(v24))
    {
      freeReverseDirStore(v24);
      v26 = *__error();
      v27 = _SILogForLogForCategory(6);
      v28 = 2 * (dword_1EBF46AE4 < 4);
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_21;
      }

      v48 = 0;
      v29 = "Opened corrupt reverse store";
      v30 = &v48;
      goto LABEL_20;
    }

    v37 = *(v24 + 1104);
  }

  if (v37 == -804450864 && (a4 & 1) == 0)
  {
    v41 = __si_assert_copy_extra(*(v24 + 27));
    v42 = v41;
    v43 = "";
    if (v41)
    {
      v43 = v41;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 4635, "(store->state != kIndexShutDownStateNeedsShadow || readOnly)", v43);
    free(v42);
    if (__valid_fsp(*(v24 + 27)))
    {
      v44 = 2989;
    }

    else
    {
      v44 = 3072;
    }

    *v44 = -559038737;
    abort();
  }

  v38 = *__error();
  v39 = _SILogForLogForCategory(6);
  v40 = 2 * (dword_1EBF46AE4 < 4);
  if (os_log_type_enabled(v39, v40))
  {
    *v47 = 0;
    _os_log_impl(&dword_1C278D000, v39, v40, "Successfully opened from reverse store", v47, 2u);
  }

  *__error() = v38;
  setCrashStateTarget(v15);
  return v24;
}

uint64_t recoverReverseStore(uint64_t a1, const char *a2, const char *a3, _DWORD *a4, int a5)
{
  v9 = a1;
  v43 = *MEMORY[0x1E69E9840];
  v10 = *__error();
  v11 = _SILogForLogForCategory(0);
  v12 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, v11, v12, "recoverReverseStore", buf, 2u);
  }

  *__error() = v10;
  if ((_copyFile(v9, a2, v9, a3, a4, 1088) & 1) == 0)
  {
    v22 = *__error();
    v23 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      v26 = __error();
      result = 0;
      *v26 = v22;
      return result;
    }

    *buf = 136315650;
    v37 = "recoverReverseStore";
    v38 = 1024;
    v39 = 4502;
    v40 = 2080;
    v41 = a2;
    v24 = "%s:%d: Copy file failed for %s";
    v25 = buf;
LABEL_24:
    _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, v24, v25, 0x1Cu);
    goto LABEL_15;
  }

  v13 = fd_create_protected(v9, a2, 0, 0);
  bzero(buf, 0x440uLL);
  v14 = fd_pread(v13, buf, 0x440uLL, 0);
  fd_release(v13);
  if (v14 != 1088)
  {
    v22 = *__error();
    v23 = _SILogForLogForCategory(6);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *v32 = 136315650;
    v33 = "recoverReverseStore";
    v34 = 1024;
    *v35 = 4514;
    *&v35[4] = 2080;
    *&v35[6] = a2;
    v24 = "%s:%d: Failed to read reverse store file %s";
    v25 = v32;
    goto LABEL_24;
  }

  v15 = fd_create_protected(v9, a3, 2, 0);
  v31 = 0;
  v16 = _fd_acquire_fd(v15, &v31);
  prot_fsync(v16, 1);
  v17 = v42;
  v42 = 0;
  if (prot_pwrite_guarded(v16, &v31, buf, 0x440uLL, 0) != 1088)
  {
    v27 = *__error();
    v28 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v32 = 136315650;
      v33 = "recoverReverseStore";
      v34 = 1024;
      *v35 = 4529;
      *&v35[4] = 2080;
      *&v35[6] = a3;
      _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: Failed to write reverse store header %s", v32, 0x1Cu);
    }

    *__error() = v27;
    goto LABEL_19;
  }

  prot_fsync(v16, 1);
  if (a5 && v17 != -1073623027 && v17 != -804450864)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v32 = 136315650;
      v33 = "recoverReverseStore";
      v34 = 1024;
      *v35 = 4541;
      *&v35[4] = 1024;
      *&v35[6] = v17;
      _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: Unexpected state in shadow header %x", v32, 0x18u);
    }

    *__error() = v29;
LABEL_19:
    _fd_release_fd(v15, v16, 0, v31);
    fd_release(v15);
    return 0;
  }

  v42 = -1073623027;
  prot_pwrite_guarded(v16, &v31, buf, 0x440uLL, 0);
  _fd_release_fd(v15, v16, 0, v31);
  fd_release(v15);
  v18 = *__error();
  v19 = _SILogForLogForCategory(6);
  v20 = 2 * (dword_1EBF46AE4 < 4);
  if (os_log_type_enabled(v19, v20))
  {
    *v32 = 136315650;
    v33 = a2;
    v34 = 2080;
    *v35 = a3;
    *&v35[8] = 1024;
    *&v35[10] = v17;
    _os_log_impl(&dword_1C278D000, v19, v20, "Successfully recovered from %s to %s with state %x", v32, 0x1Cu);
  }

  *__error() = v18;
  return 1;
}

uint64_t get_state(uint64_t a1)
{
  v21 = -559038737;
  if (storageResolvePtr(a1, 0, 1, 1))
  {
    v2 = OSAtomicIncrement32(&exceptionSequenceNum);
    v3 = *(a1 + 216);
    if (v3)
    {
      v4 = *(v3 + 44);
    }

    else
    {
      v4 = -1;
    }

    v5 = setThreadIdAndInfo(v4, sStorageExceptionCallbacks, a1, 1, v2);
    v19 = HIDWORD(v5);
    v20 = v5;
    v18 = __PAIR64__(v6, v7);
    v8 = threadData[9 * v5 + 1] + 320 * HIDWORD(v5);
    v9 = *(v8 + 312);
    v10 = *(v8 + 224);
    if (v10)
    {
      v10(*(v8 + 288));
    }

    v17 = v20;
    v16 = v19;
    v15 = v18;
    if (_setjmp(v8))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v14, 2u);
      }

      *(v8 + 312) = v9;
      CIOnThreadCleanUpReset(v15);
      dropThreadId(v17, 1, v2);
      CICleanUpReset(v17, HIDWORD(v15));
    }

    else
    {
      if (*(a1 + 232) < 0x440uLL)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(storageResolvePtr(a1, 0x40uLL, 1024, 1) + 4);
      }

      v11 = threadData[9 * v17 + 1] + 320 * v16;
      *(v11 + 312) = v9;
      v12 = *(v11 + 232);
      if (v12)
      {
        v12(*(v11 + 288));
      }

      dropThreadId(v17, 0, v2);
    }
  }

  return v21;
}

uint64_t _reverseStoreValidate(uint64_t a1)
{
  if (!a1)
  {
    v10 = 0;
    return v10 & 1;
  }

  _db_write_lock(a1 + 4424);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  storage_reader_init(a1, &v46);
  v45 = 1;
  v2 = OSAtomicIncrement32(&exceptionSequenceNum);
  v3 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v2);
  v43 = HIDWORD(v3);
  v44 = v3;
  v42 = __PAIR64__(v4, v5);
  v6 = threadData[9 * v3 + 1] + 320 * HIDWORD(v3);
  v7 = *(v6 + 312);
  v8 = *(v6 + 224);
  if (v8)
  {
    v8(*(v6 + 288));
  }

  v41 = v44;
  v40 = v43;
  v39 = v42;
  if (!_setjmp(v6))
  {
    if (v48 == 1)
    {
      v11 = OSAtomicIncrement32(&exceptionSequenceNum);
      v12 = setThreadIdAndInfo(-1, sStorageReaderExceptionCallbacks, &v46, 0, v11);
      v37 = HIDWORD(v12);
      *buf = v12;
      v36 = __PAIR64__(v13, v14);
      v15 = threadData[9 * v12 + 1] + 320 * HIDWORD(v12);
      v16 = *(v15 + 312);
      v17 = *(v15 + 224);
      if (v17)
      {
        v17(*(v15 + 288));
      }

      v35 = *buf;
      v34 = v37;
      v33 = v36;
      if (!_setjmp(v15))
      {
        v20 = 0;
        v32[0] = 0;
        Page = _directoryStoreReaderGetPage(&v46, 0x440uLL, v32, v18, v19);
        if (Page)
        {
          if (v32[0])
          {
            v28 = __si_assert_copy_extra(*(a1 + 216));
            v29 = v28;
            v30 = "";
            if (v28)
            {
              v30 = v28;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 3999, "(!page)", v30);
            free(v29);
            if (__valid_fsp(*(a1 + 216)))
            {
              v31 = 2989;
            }

            else
            {
              v31 = 3072;
            }

            *v31 = -559038737;
            abort();
          }

          v20 = _reverseStoreValidateTreePage(&v46, Page, 0x440, 0);
        }

        v22 = threadData[9 * v35 + 1] + 320 * v34;
        *(v22 + 312) = v16;
        v23 = *(v22 + 232);
        if (v23)
        {
          v23(*(v22 + 288));
        }

        dropThreadId(v35, 0, v11);
        v9 = v20;
        goto LABEL_25;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v32 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v32, 2u);
      }

      *(v15 + 312) = v16;
      CIOnThreadCleanUpReset(v33);
      dropThreadId(v35, 1, v11);
      CICleanUpReset(v35, HIDWORD(v33));
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v9 = 0;
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
LABEL_25:
      v45 = 0;
      v24 = threadData[9 * v41 + 1] + 320 * v40;
      *(v24 + 312) = v7;
      v25 = *(v24 + 232);
      if (v25)
      {
        v25(*(v24 + 288));
      }

      dropThreadId(v41, 0, v2);
      goto LABEL_28;
    }

    v9 = 0;
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
  }

  *(v6 + 312) = v7;
  CIOnThreadCleanUpReset(v39);
  dropThreadId(v41, 1, v2);
  CICleanUpReset(v41, HIDWORD(v39));
  v9 = 0;
LABEL_28:
  v26 = v9 | v45;
  db_write_unlock(a1 + 4424);
  if (v47)
  {
    _release_read_window(&availableReaders, v47);
  }

  v10 = v26;
  return v10 & 1;
}

BOOL _reverseStoreValidateTreePage(uint64_t *a1, unsigned __int16 *a2, unsigned __int16 *a3, int a4)
{
  *(&v58[2] + 6) = *MEMORY[0x1E69E9840];
  Size = directoryTreePageGetSize(*a2, *(a2 + 2));
  v46 = a2;
  v10 = a2[3];
  if (dword_1EBF46AE4 >= 5)
  {
    v42 = a2[2];
    v43 = *__error();
    v44 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219008;
      v54 = v46;
      v55 = 1024;
      *v56 = a4;
      *&v56[4] = 1024;
      *&v56[6] = v10;
      v57 = 1024;
      LODWORD(v58[0]) = v42;
      WORD2(v58[0]) = 1024;
      *(v58 + 6) = Size;
      _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "Tree page:%p level: %d depth: %d origin: %d size: %d", buf, 0x24u);
    }

    *__error() = v43;
  }

  if (v10 != a4)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(6);
    v13 = dword_1EBF46AE4 < 3;
    if (os_log_type_enabled(v12, (dword_1EBF46AE4 < 3)))
    {
      *buf = 134218496;
      v54 = a3;
      v55 = 1024;
      *v56 = v10;
      *&v56[4] = 1024;
      *&v56[6] = a4;
      _os_log_impl(&dword_1C278D000, v12, v13, "*warn* Flat page: 0x%8.8llx depth: %d exected: %d", buf, 0x18u);
    }

    *__error() = v11;
  }

  v14 = Size;
  if (Size)
  {
    v45 = v10;
    v15 = 0;
    v16 = v46 + 4;
    v51 = a4 + 1;
    v17 = 1;
    v8.n128_u64[0] = 134218496;
    v47 = a1;
    do
    {
      v18 = *&v16[4 * v15];
      if (v18)
      {
        if (dword_1EBF46AE4 >= 5)
        {
          v33 = *__error();
          v34 = _SILogForLogForCategory(6);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218752;
            v54 = v46;
            v55 = 1024;
            *v56 = v45;
            *&v56[4] = 1024;
            *&v56[6] = v15;
            v57 = 2048;
            v58[0] = v18;
            _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "page:%p depth: %d idx: %d offset: 0x%8.8llx", buf, 0x22u);
          }

          *__error() = v33;
        }

        v52 = 0;
        Page = _directoryStoreReaderGetPage(a1, v18, &v52, v8, v9);
        if (!Page)
        {
          return v17;
        }

        v20 = Page;
        if (v52)
        {
          v21 = directoryStorePageGetSize(Page);
          v22 = *v20;
          if ((64 << *(v20 + 2)) - 8 < v22)
          {
            v38 = __si_assert_copy_extra(0);
            v39 = v38;
            v40 = "";
            if (v38)
            {
              v40 = v38;
            }

            __message_assert("%s:%u: failed assertion '%s' %s Got end %d and size %d", "FileTree.c", 287, "storePageEnd((StorePageRef)page) <= storePageDataSize((StorePageRef)page)", v40, *v20, (64 << *(v20 + 2)) - 8);
            free(v39);
            if (__valid_fs(-1))
            {
              v41 = 2989;
            }

            else
            {
              v41 = 3072;
            }

            *v41 = -559038737;
            abort();
          }

          v23 = v21;
          v24 = v20[3];
          if (dword_1EBF46AE4 >= 5)
          {
            v49 = v20[2];
            v35 = *__error();
            v36 = _SILogForLogForCategory(6);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134219008;
              v54 = v20;
              v55 = 1024;
              *v56 = v51;
              *&v56[4] = 1024;
              *&v56[6] = v24;
              v57 = 1024;
              LODWORD(v58[0]) = v49;
              WORD2(v58[0]) = 1024;
              *(v58 + 6) = v23;
              _os_log_impl(&dword_1C278D000, v36, OS_LOG_TYPE_DEFAULT, "Flat page:%p level: %d depth: %d origin: %d size: %d", buf, 0x24u);
            }

            *__error() = v35;
            a1 = v47;
            v14 = Size;
          }

          if (v51 != v24)
          {
            v48 = *__error();
            v25 = _SILogForLogForCategory(6);
            v26 = dword_1EBF46AE4 < 3;
            if (os_log_type_enabled(v25, (dword_1EBF46AE4 < 3)))
            {
              *buf = 134218496;
              v54 = v18;
              v55 = 1024;
              *v56 = v24;
              *&v56[4] = 1024;
              *&v56[6] = v51;
              _os_log_impl(&dword_1C278D000, v25, v26, "*warn* Flat page: 0x%8.8llx depth: %d exected: %d", buf, 0x18u);
            }

            *__error() = v48;
            a1 = v47;
            v14 = Size;
          }

          v27 = v22 >> 4;
          if (v23)
          {
            v28 = (v20 + 8);
            do
            {
              v29 = *(v28 - 1);
              if (v29)
              {
                --v27;
                if (dword_1EBF46AE4 >= 5)
                {
                  v30 = *v28;
                  v31 = *__error();
                  v32 = _SILogForLogForCategory(6);
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218240;
                    v54 = v29;
                    v55 = 2048;
                    *v56 = v30;
                    _os_log_impl(&dword_1C278D000, v32, OS_LOG_TYPE_DEFAULT, "oid: %lld parent: %lld", buf, 0x16u);
                  }

                  *__error() = v31;
                  a1 = v47;
                  v14 = Size;
                }
              }

              v28 += 2;
              v23 = (v23 - 1);
            }

            while (v23);
          }

          v16 = v46 + 4;
          if (v27)
          {
            return v17;
          }
        }

        else if (_reverseStoreValidateTreePage(a1, Page, v18, v51))
        {
          return v17;
        }
      }

      v17 = ++v15 < v14;
    }

    while (v15 != v14);
  }

  return 0;
}

uint64_t reverseStoreNeedsRecover(int a1)
{
  v1 = fd_create_protected(a1, "reverseDirectoryStore", 0, 0);
  v3 = 0;
  if (fd_pread(v1, &v3, 4uLL, 68) != 4)
  {
    v3 = 0;
  }

  fd_release(v1);
  return v3;
}

uint64_t reverseStoreUpdateState(uint64_t a1, int a2, _BYTE *a3)
{
  v6 = 0;
  v25 = *MEMORY[0x1E69E9840];
  v14 = 0;
  *a3 = 0;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      updated = _reverseStoreUpdateState(a1, -804450864);
      if (updated)
      {
        v6 = updated;
        v7 = 4741;
        goto LABEL_14;
      }

      if ((!isRegisteredForCloning(a1) || (copyFileFallback(a1, "reverseDirectoryStore", a1, "reverseDirectoryStore.shadow", &v14, 0, 1) & 1) == 0) && !recoverReverseStore(a1, "reverseDirectoryStore", "reverseDirectoryStore.shadow", &v14, 0))
      {
        v7 = 4751;
        v6 = 0xFFFFFFFFLL;
        goto LABEL_14;
      }

      v6 = _reverseStoreUpdateState(a1, -1073623027);
      if (v6)
      {
        v7 = 4757;
        goto LABEL_14;
      }
    }

    else
    {
      if (a2 != 4)
      {
        return v6;
      }

      v6 = _reverseStoreUpdateState(a1, -1073623027);
      if (v6)
      {
        v7 = 4765;
        goto LABEL_14;
      }
    }

    goto LABEL_29;
  }

  if (a2 == 1)
  {
    v8 = _reverseStoreUpdateState(a1, 0);
    if (v8)
    {
      v6 = v8;
      v7 = 4707;
      goto LABEL_14;
    }

    if ((!isRegisteredForCloning(a1) || (copyFileFallback(a1, "reverseDirectoryStore.shadow", a1, "reverseDirectoryStore", &v14, 0, 1) & 1) == 0) && (recoverReverseStore(a1, "reverseDirectoryStore.shadow", "reverseDirectoryStore", &v14, 1) & 1) == 0)
    {
      v13 = *__error();
      if (v13)
      {
        v6 = v13;
      }

      else
      {
        v6 = 0xFFFFFFFFLL;
      }

      v7 = 4717;
      goto LABEL_14;
    }

    v6 = _reverseStoreUpdateState(a1, -1073623027);
    if (v6)
    {
      v7 = 4724;
      goto LABEL_14;
    }

LABEL_29:
    *a3 = 4;
    return v6;
  }

  if (a2 != 2)
  {
    return v6;
  }

  v6 = _reverseStoreUpdateState(a1, 2);
  if (!v6)
  {
    *a3 = 2;
    return v6;
  }

  v7 = 4732;
LABEL_14:
  v10 = *__error();
  v11 = _SILogForLogForCategory(6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v16 = "reverseStoreUpdateState";
    v17 = 1024;
    v18 = 4776;
    v19 = 1024;
    v20 = a2;
    v21 = 1024;
    v22 = v6;
    v23 = 1024;
    v24 = v7;
    _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: update state (%d) failed err:%d at %d", buf, 0x24u);
  }

  *__error() = v10;
  return v6;
}

uint64_t _reverseStoreUpdateState(int a1, int a2)
{
  v3 = fd_create_protected(a1, "reverseDirectoryStore", 2, 0);
  v4 = v3;
  if (v3 && (v8 = 0, fd_pread(v3, &v8, 4uLL, 68) == 4) && (v8 == a2 || (v8 = a2, fd_pwrite(v4, &v8, 4uLL, 68) == 4)))
  {
    v5 = 0;
  }

  else
  {
    v6 = *__error();
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0xFFFFFFFFLL;
    }
  }

  fd_release(v4);
  return v5;
}

uint64_t reverseStoreRestoreDirtyBitmap(int a1, uint64_t a2)
{
  v43 = 0u;
  *__buf = 0u;
  v41 = 0u;
  *__offseta = 0u;
  v3 = fd_create_protected(a1, "reverseStore.updates", 0, 0);
  if (!store_stream_init(&v41, v3, 0))
  {
    v8 = 0;
    goto LABEL_24;
  }

  v4 = v43;
  v40 = v3;
  if (v43 - *(&v43 + 1) < 6uLL)
  {
    v37 = 0;
    v6 = 0;
    __dst = 0;
    while (store_stream_read_bytes(&v41, &__dst) == 1)
    {
      v6 |= (__dst & 0x7F) << v37;
      v37 += 7;
      if ((__dst & 0x80) == 0)
      {
        goto LABEL_40;
      }
    }

    v6 = 0;
LABEL_40:
    v7 = *(&v43 + 1);
    v4 = v43;
    goto LABEL_13;
  }

  v5 = *(&v43 + 1) + 1;
  v6 = *(__buf[0] + *(&v43 + 1));
  if (*(__buf[0] + *(&v43 + 1)) < 0)
  {
    v7 = *(&v43 + 1) + 2;
    v9 = *(__buf[0] + v5);
    v10 = *(__buf[0] + v5);
    if (v9 < 0)
    {
      v11 = *(&v43 + 1) + 3;
      v12 = *(__buf[0] + v7);
      if (*(__buf[0] + v7) < 0)
      {
        v7 = *(&v43 + 1) + 4;
        v14 = *(__buf[0] + v11);
        v15 = *(__buf[0] + v11);
        if (v14 < 0)
        {
          v30 = *(__buf[0] + v7);
          if (v30 < 0)
          {
            v7 = *(&v43 + 1) + 5;
            v6 = ((v15 & 0x7F) << 21) | (v30 << 28) | ((v12 & 0x7F) << 14) | ((v10 & 0x7F) << 7) | v6 & 0x7F;
          }

          else
          {
            v6 = 0;
            LODWORD(__offseta[0]) = 22;
            v7 = *(&v43 + 1) + 5;
          }

          goto LABEL_13;
        }

        v13 = ((v12 & 0x7F) << 14) | (v15 << 21) | ((v10 & 0x7F) << 7) | v6 & 0x7F;
      }

      else
      {
        v13 = ((v10 & 0x7F) << 7) | (v12 << 14) | v6 & 0x7F;
        v7 = *(&v43 + 1) + 3;
      }

      v6 = v13;
    }

    else
    {
      v6 = v6 & 0x7F | (v10 << 7);
    }
  }

  else
  {
    v7 = *(&v43 + 1) + 1;
  }

LABEL_13:
  v16 = v6;
  v17 = v6 + 7;
  v18 = v17 >> 3;
  v8 = malloc_type_malloc(v17 >> 3, 0xAEF3C7D2uLL);
  bit_vector_init_4656(a2);
  if (v7 + (v17 >> 3) > v4)
  {
    v39 = 0;
    __fd = v41;
    v22 = v17 >> 3;
    v21 = v8;
    v20 = __buf[0];
    v31 = __offseta[1];
    while (1)
    {
      v23 = v4 - v7;
      if (v4 != v7)
      {
        v32 = &v20[v7];
        v33 = v4 - v7;
        v34 = v31;
        memcpy(v21, v32, v33);
        v31 = v34;
      }

      v35 = v31;
      v36 = prot_pread(__fd, v20, v4, v31);
      if (v36 == -1)
      {
        *&v43 = v4;
        *(&v43 + 1) = v4;
        __offseta[1] = v35;
        v23 = 0;
        LODWORD(__offseta[0]) = *__error();
        goto LABEL_43;
      }

      v31 = v35 + v36;
      if (!v36)
      {
        break;
      }

      v7 = 0;
      v21 += v23;
      v22 -= v23;
      v39 += v23;
      v4 = v36;
      if (v22 <= v36)
      {
        v7 = 0;
        __offseta[1] = v31;
        *&v43 = v36;
        v19 = v39;
        goto LABEL_15;
      }
    }

    v43 = 0uLL;
    __offseta[1] = v35;
LABEL_43:
    v19 = v39;
  }

  else
  {
    v19 = 0;
    v20 = __buf[0];
    v21 = v8;
    v22 = v17 >> 3;
LABEL_15:
    memcpy(v21, &v20[v7], v22);
    *(&v43 + 1) = v7 + v22;
    v23 = v22;
  }

  if (v23 + v19 == v18 && (v24 = CFBitVectorCreate(0, v8, v16)) != 0)
  {
    v25 = v24;
    if (v16)
    {
      for (i = 0; i != v16; ++i)
      {
        v27 = CFBitVectorGetBitAtIndex(v25, i) != 0;
        bit_vector_internal_touch_for_set_4691(a2, i);
        CFBitVectorSetBitAtIndex(*(a2 + 16), i, v27);
      }
    }

    CFRelease(v25);
  }

  else
  {
    LODWORD(__offseta[0]) = -1;
  }

  v3 = v40;
LABEL_24:
  v28 = LODWORD(__offseta[0]);
  free(v8);
  store_stream_destroy(&v41);
  fd_release(v3);
  return v28;
}

uint64_t reverseStoreStoreDirtyBitmap(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = *(a1 + 4376);
  v4 = v2 + 7;
  v3 = v2 < -7;
  v5 = v2 + 14;
  if (!v3)
  {
    v5 = v4;
  }

  v6 = v5 >> 3;
  v7 = malloc_type_malloc(v5 >> 3, 0xA2CB6193uLL);
  if (!v7)
  {
    v24 = __si_assert_copy_extra(0);
    v25 = v24;
    v26 = "";
    if (v24)
    {
      v26 = v24;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "FileTree.c", 4851, "bits", v26);
    free(v25);
    if (__valid_fs(-1))
    {
      v27 = 2989;
    }

    else
    {
      v27 = 3072;
    }

    *v27 = -559038737;
    abort();
  }

  v8 = v7;
  sibling_protected = fd_create_sibling_protected(*(a1 + 216), "reverseStore.updates", 1538, 0);
  if (store_stream_init(&v29, sibling_protected, 1))
  {
    v10 = *(a1 + 4376);
    v11 = *(&v31 + 1);
    if (v31 - *(&v31 + 1) < 6uLL)
    {
      memset(__src, 0, sizeof(__src));
      if (v10 >> 28)
      {
        LOBYTE(__src[0]) = v10 | 0x80;
        BYTE1(__src[0]) = (v10 >> 7) | 0x80;
        BYTE2(__src[0]) = (v10 >> 14) | 0x80;
        BYTE3(__src[0]) = (v10 >> 21) | 0x80;
        BYTE4(__src[0]) = v10 >> 28;
        v28 = 5;
      }

      else if (v10 >= 0x200000)
      {
        LOBYTE(__src[0]) = v10 | 0x80;
        BYTE1(__src[0]) = (v10 >> 7) | 0x80;
        BYTE2(__src[0]) = (v10 >> 14) | 0x80;
        BYTE3(__src[0]) = v10 >> 21;
        v28 = 4;
      }

      else if (v10 >= 0x4000)
      {
        LOBYTE(__src[0]) = v10 | 0x80;
        BYTE1(__src[0]) = (v10 >> 7) | 0x80;
        BYTE2(__src[0]) = v10 >> 14;
        v28 = 3;
      }

      else if (v10 >= 0x80)
      {
        LOBYTE(__src[0]) = v10 | 0x80;
        BYTE1(__src[0]) = v10 >> 7;
        v28 = 2;
      }

      else
      {
        LOBYTE(__src[0]) = v10;
        v28 = 1;
      }

      store_stream_write_bytes(&v29, __src, v28);
    }

    else
    {
      if (v10 >> 28)
      {
        v15 = (v32 + *(&v31 + 1));
        *v15 = v10 | 0x80;
        v15[1] = (v10 >> 7) | 0x80;
        v15[2] = (v10 >> 14) | 0x80;
        v15[3] = (v10 >> 21) | 0x80;
        v13 = v11 + 5;
        v15[4] = v10 >> 28;
      }

      else if (v10 >= 0x200000)
      {
        v16 = (v32 + *(&v31 + 1));
        *v16 = v10 | 0x80;
        v16[1] = (v10 >> 7) | 0x80;
        v16[2] = (v10 >> 14) | 0x80;
        v13 = v11 + 4;
        v16[3] = v10 >> 21;
      }

      else
      {
        v12 = (v32 + *(&v31 + 1));
        if (v10 >= 0x4000)
        {
          *v12 = v10 | 0x80;
          v12[1] = (v10 >> 7) | 0x80;
          v13 = v11 + 3;
          v12[2] = v10 >> 14;
        }

        else if (v10 >= 0x80)
        {
          *v12 = v10 | 0x80;
          v13 = v11 + 2;
          v12[1] = v10 >> 7;
        }

        else
        {
          v13 = *(&v31 + 1) + 1;
          *v12 = v10;
        }
      }

      *(&v31 + 1) = v13;
    }

    v17.length = *(a1 + 4376);
    if (v17.length)
    {
      v17.location = 0;
      CFBitVectorGetBits(*(a1 + 4392), v17, v8);
    }

    v18 = *(&v31 + 1);
    v19 = v31;
    v20 = *(&v31 + 1) + v6;
    v21 = v8;
    while (v20 >= v19)
    {
      v22 = v19 - v18;
      memcpy((v32 + v18), v21, v19 - v18);
      *(&v31 + 1) += v22;
      if (store_stream_flush(&v29, 0))
      {
        goto LABEL_24;
      }

      v21 += v22;
      v6 -= v22;
      v18 = *(&v31 + 1);
      v19 = v31;
      v20 = *(&v31 + 1) + v6;
    }

    memcpy((v32 + v18), v21, v6);
    *(&v31 + 1) += v6;
LABEL_24:
    store_stream_flush(&v29, 0);
    v14 = v30;
    store_stream_destroy(&v29);
  }

  else
  {
    v14 = v30;
  }

  fd_release(sibling_protected);
  free(v8);
  return v14;
}

void si_perform_livequeries_directory_updates(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v48 = v1;
  v3 = v2;
  v66[128] = *MEMORY[0x1E69E9840];
  bzero(values, 0x2000uLL);
  pthread_mutex_lock((v3 + 1712));
  Count = CFSetGetCount(*(v3 + 1776));
  v5 = Count;
  if (Count >= 1024)
  {
    v6 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    CFSetGetValues(*(v3 + 1776), v6);
  }

  else if (!Count || (v6 = values, CFSetGetValues(*(v3 + 1776), values), v5 < 1))
  {
    pthread_mutex_unlock((v3 + 1712));
    return;
  }

  v7 = 0;
  do
  {
    atomic_fetch_add(v6[v7++], 1u);
  }

  while (v5 != v7);
  v49 = v3;
  pthread_mutex_unlock((v3 + 1712));
  v8 = 0;
  alloc = *MEMORY[0x1E695E480];
  v43 = v5;
  do
  {
    v9 = v6[v8];
    v10 = *(v9 + 1);
    v11 = *(v9 + 5);
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x2000000000;
    v56 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2000000000;
    v54 = 0;
    scope_node = si_query_get_scope_node(v49, v10, 0);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 0x40000000;
    v50[2] = __si_query_evaluate_move_block_invoke;
    v50[3] = &unk_1E8196398;
    v50[6] = v49;
    v50[7] = v48;
    v50[4] = &v51;
    v50[5] = v55;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 0x40000000;
    v66[2] = __db_query_tree_apply_block_block_invoke;
    v66[3] = &unk_1E8198ED0;
    v66[4] = v50;
    db_query_tree_apply_block_with_meta(scope_node, v66, 0);
    if (*(v52 + 24) != 1)
    {
      goto LABEL_15;
    }

    v13 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A004060519A17uLL);
    atomic_store(1u, v13);
    atomic_fetch_add(v11, 1u);
    *(v13 + 10) = v11;
    *(v13 + 3) = *(v11 + 48);
    *(v13 + 1) = 0;
    *(v13 + 4) = 0;
    *(v13 + 5) = 0;
    *(v13 + 26) = 1;
    *(v13 + 99) = *(v11 + 99);
    *(v13 + 96) = *(v11 + 96);
    v14 = *(v11 + 88);
    if (v14)
    {
      CFRetain(*(v11 + 88));
    }

    *(v13 + 11) = v14;
    bzero(v66, 0x400uLL);
    v15 = *(v49 + 1416);
    if (*(v15 + 240))
    {
      goto LABEL_13;
    }

    v16 = (*(v15 + 40))(v15, *v48, v66, 0, 0, 0, 0, -1);
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = CFStringCreateWithFileSystemRepresentation(alloc, v16);
    v18 = v10[24];
    cf1 = v17;
    if (!v18)
    {
      Mutable = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
      v5 = v43;
LABEL_58:
      CFArrayAppendValue(Mutable, v17);
      v21 = Mutable;
      goto LABEL_59;
    }

    v19 = CFArrayGetCount(v18);
    v45 = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
    if (!v19)
    {
      v5 = v43;
      Mutable = v45;
      goto LABEL_58;
    }

    if (v19 < 1)
    {
      v5 = v43;
      v21 = v45;
      goto LABEL_59;
    }

    theArray = v18;
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v19;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
      v24 = CFGetTypeID(ValueAtIndex);
      if (v24 == CFStringGetTypeID())
      {
        v25 = v21;
        v26 = ValueAtIndex;
LABEL_24:
        ProcessPathForScope(v25, v26, cf1);
        goto LABEL_31;
      }

      v27 = CFGetTypeID(ValueAtIndex);
      if (v27 != CFArrayGetTypeID())
      {
        goto LABEL_31;
      }

      v28 = CFArrayGetCount(ValueAtIndex);
      if (v28)
      {
        v26 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
        if (v28 == 1)
        {
          v25 = v21;
          goto LABEL_24;
        }

        v29 = v26;
        if (CFEqual(cf1, v26))
        {
          goto LABEL_30;
        }

        if (CFStringHasPrefix(v29, cf1))
        {
          Length = CFStringGetLength(cf1);
          if (CFStringGetCharacterAtIndex(v29, Length) != 47)
          {
            goto LABEL_50;
          }

LABEL_30:
          v21 = v45;
          CFArrayAppendValue(v45, ValueAtIndex);
LABEL_31:
          LODWORD(v28) = 0;
          goto LABEL_32;
        }

        if (!CFStringHasPrefix(cf1, v29) || (v31 = CFStringGetLength(v29), CFStringGetCharacterAtIndex(cf1, v31) != 47))
        {
LABEL_50:
          LODWORD(v28) = 0;
          v21 = v45;
          goto LABEL_32;
        }

        v40 = CFArrayCreateMutable(alloc, v28, MEMORY[0x1E695E9C0]);
        CFArrayAppendValue(v40, cf1);
        if (v28 < 2)
        {
LABEL_51:
          v21 = v45;
          v35 = v40;
          CFArrayAppendValue(v45, v40);
          LODWORD(v28) = 0;
        }

        else
        {
          v32 = 1;
          while (1)
          {
            v41 = v32;
            prefix = CFArrayGetValueAtIndex(ValueAtIndex, v32);
            if (CFEqual(cf1, v29))
            {
              break;
            }

            if (CFStringHasPrefix(cf1, prefix))
            {
              v33 = CFStringGetLength(prefix);
              if (CFStringGetCharacterAtIndex(cf1, v33) == 47)
              {
                break;
              }
            }

            else if (CFStringHasPrefix(prefix, cf1))
            {
              v34 = CFStringGetLength(cf1);
              if (CFStringGetCharacterAtIndex(prefix, v34) == 47)
              {
                CFArrayAppendValue(v40, prefix);
              }
            }

            v32 = v41 + 1;
            if (v28 == v41 + 1)
            {
              goto LABEL_51;
            }
          }

          LODWORD(v28) = 1;
          v21 = v45;
          v35 = v40;
        }

        CFRelease(v35);
      }

LABEL_32:
      v19 = v22;
      ++v20;
    }

    while (v20 < v22 && !v28);
    v5 = v43;
    if (v28)
    {
LABEL_60:
      CFRelease(v21);
      v21 = 0;
      goto LABEL_61;
    }

LABEL_59:
    if (!CFArrayGetCount(v21))
    {
      goto LABEL_60;
    }

LABEL_61:
    if (dword_1EBF46AD0 >= 5)
    {
      v37 = *__error();
      v38 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v10[24];
        v58 = 136315906;
        v59 = "adds";
        v60 = 2112;
        v61 = cf1;
        v62 = 2112;
        v63 = v39;
        v64 = 2112;
        v65 = v21;
        _os_log_impl(&dword_1C278D000, v38, OS_LOG_TYPE_DEFAULT, "check (%s) %@ old:%@ new:%@", &v58, 0x2Au);
      }

      *__error() = v37;
      v5 = v43;
    }

    CFRelease(cf1);
    if (v21)
    {
      atomic_fetch_add_explicit(v13 + 16, 1u, memory_order_relaxed);
      _queryGoCracked(v10, v49, v21, v13);
      CFRelease(v21);
      si_querypipe_remove_process(v13, v10, 0, 0);
    }

LABEL_13:
    if (v13 != v11)
    {
      si_querypipe_release(v13);
    }

LABEL_15:
    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(v55, 8);
    si_livequery_release(v6[v8++]);
  }

  while (v8 != v5);
  if (v6 != values)
  {
    free(v6);
  }
}

void si_perform_livequeries_bulk_updates(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v25 = v3;
  v5 = v4;
  v112 = *MEMORY[0x1E69E9840];
  bzero(values, 0x2000uLL);
  pthread_mutex_lock((v5 + 1712));
  Count = CFSetGetCount(*(v5 + 1776));
  v7 = Count;
  if (Count >= 1024)
  {
    v8 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    CFSetGetValues(*(v5 + 1776), v8);
  }

  else
  {
    if (!Count)
    {
      v9 = 0;
      v8 = values;
      goto LABEL_10;
    }

    v8 = values;
    CFSetGetValues(*(v5 + 1776), values);
    if (v7 < 1)
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  v10 = 0;
  v9 = 1;
  do
  {
    atomic_fetch_add(v8[v10++], 1u);
  }

  while (v7 != v10);
LABEL_10:
  pthread_mutex_unlock((v5 + 1712));
  if (v2)
  {
    atomic_fetch_add((v5 + 1452), 1u);
    v20 = _si_scheduler_suspend(*(v5 + 872), "SpotlightIndex.c", 2139);
    atomic_fetch_add((v5 + 1452), 0xFFFFFFFF);
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v20 = 0;
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  v11 = 0;
  v21 = MEMORY[0x1E69E9820];
  v22 = v8;
  v23 = v7;
  do
  {
    v12 = v8[v11];
    v28 = v12[5];
    v13 = *(v28 + 88);
    if (v13)
    {
      v27 = *(v13 + 120);
    }

    else
    {
      v27 = 0;
    }

    v14 = v12[1];
    v15 = *(v14 + 144);
    v33 = v21;
    *&v34 = 0x40000000;
    *(&v34 + 1) = __query_once_block_invoke;
    *&v35 = &__block_descriptor_tmp_518;
    *(&v35 + 1) = v14;
    v24 = v11;
    if (v15 != -1)
    {
      dispatch_once((v14 + 144), &v33);
    }

    v16 = *(v14 + 136);
    if (v16 >= 1)
    {
      v17 = *(v14 + 128);
      v26 = v17;
      do
      {
        if (*(*v17 + 4))
        {
          bzero(v37, 0x4D0uLL);
          v29 = *(v5 + 2072);
          v18 = *(v5 + 6587) & 1;
          v34 = 0u;
          v35 = 0u;
          v36 = 0;
          memset(&v37[8], 0, 41);
          memset(&v37[56], 0, 60);
          memset(&v37[128], 0, 64);
          v33 = &unk_1F4282348;
          v38 = -1;
          v43 = 0;
          v39 = 0u;
          v40 = 0u;
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 0x40000000;
          v31[2] = ___ZN11SISearchCtxC2Ev_block_invoke;
          v31[3] = &__block_descriptor_tmp_6;
          v31[4] = &v33;
          v41 = md_deadline_once_create();
          v42 = dispatch_time(0, 500000000);
          v33 = &unk_1F427CAD8;
          v47 = 10;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0;
          v64 = 0u;
          v65 = 0u;
          memset(v66, 0, 22);
          v66[22] = v29;
          v66[23] = v18;
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v79 = 0;
          v80 = 0;
          v106 = 0;
          v107 = 0;
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          memset(v78, 0, sizeof(v78));
          v102 = 0;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v81 = 0u;
          v103 = 0;
          v104 = 0;
          v105 = 0;
          v30 = 0;
          v31[0] = 0;
          si_query_copy_grouping(v14, v31, &v30);
          SISearchCtx_METADATA::vinitContext(&v33, v14, v5, *v26, v26[1], *(v14 + 176), *(v14 + 200), v27, v19, v28, *(v14 + 16), v31[0], v30, *(v14 + 697));
          LOBYTE(v63) = 1;
          LODWORD(v64) = *(v25 + 56);
          SISearchCtx::executeSearchContext(&v33, 1);
          SISearchCtx_METADATA::~SISearchCtx_METADATA(&v33);
        }

        v17 += 2;
        --v16;
      }

      while (v16);
    }

    v8 = v22;
    si_livequery_release(v22[v24]);
    v11 = v24 + 1;
  }

  while (v24 + 1 != v23);
LABEL_26:
  if (v2)
  {
    si_scheduler_resume(*(v5 + 872), v20, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SILiveQuerySupport.c", 326);
  }

  if (v8 != values)
  {
    free(v8);
  }
}

uint64_t __si_perform_livequeries_updates_block_invoke(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) != 4)
  {
    return a2;
  }

  v3 = **(a2 + 16);
  if (!v3)
  {
    return a2;
  }

  v5 = *v3;
  if (v5 == 42)
  {
    if (v3[1])
    {
      goto LABEL_5;
    }

LABEL_15:
    v13 = a1[4];
    v14 = a1[5];
    v15 = *(a1[6] + 16);
    v16 = 0x40000000;
LABEL_17:
    update_lq_field_info(v13, v14, v15, v16);
    return a2;
  }

  if (42 == v5)
  {
    goto LABEL_15;
  }

LABEL_5:
  v6 = strcmp("kMDItemTextContent", v3);
  v7 = a1[4];
  if (!v6)
  {
    v14 = a1[5];
    v15 = *(a1[6] + 16);
    v13 = a1[4];
    v16 = 0;
    goto LABEL_17;
  }

  if (*(v7 + 2072) != 1 || strcmp("_kMDItemBundleID", v3))
  {
    v8 = *(v7 + 1192);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v19 = __si_perform_livequeries_updates_block_invoke_2;
    v20 = &__block_descriptor_tmp_4907;
    v21 = v7;
    v22 = *(a1 + 5);
    memset(v23, 0, sizeof(v23));
    v9 = db_copy_field_ids_with_buffer(v8, v3, v23, 8uLL);
    if (v9)
    {
      v10 = v9;
      if (*v9)
      {
        v11 = v9 + 1;
        do
        {
          (v19)(v18);
        }

        while (*v11++);
      }

      if (v10 != v23)
      {
        free(v10);
      }
    }
  }

  return a2;
}

void update_lq_field_info(unsigned int *a1, CFSetRef theSet, __CFArray *a3, void *value)
{
  if (!CFSetContainsValue(theSet, value))
  {
    CFSetAddValue(theSet, value);
    if (value)
    {
      CFArrayAppendValue(a3, value);
      if (a1[510] == value || a1[511] == value || a1[512] == value)
      {
        v8 = a1[509];
        if (!CFSetContainsValue(theSet, v8))
        {
          CFSetAddValue(theSet, v8);

          CFArrayAppendValue(a3, v8);
        }
      }
    }

    else
    {

      CFArrayInsertValueAtIndex(a3, 0, 0);
    }
  }
}

void si_perform_livequeries_deletions(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  values[1024] = *MEMORY[0x1E69E9840];
  bzero(values, 0x2000uLL);
  pthread_mutex_lock((v4 + 1712));
  Count = CFSetGetCount(*(v4 + 1776));
  v6 = Count;
  if (Count >= 1024)
  {
    v7 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    CFSetGetValues(*(v4 + 1776), v7);
  }

  else if (!Count || (v7 = values, CFSetGetValues(*(v4 + 1776), values), v6 < 1))
  {
    pthread_mutex_unlock((v4 + 1712));
    return;
  }

  v8 = 0;
  do
  {
    atomic_fetch_add(v7[v8++], 1u);
  }

  while (v6 != v8);
  pthread_mutex_unlock((v4 + 1712));
  v9 = 0;
  do
  {
    v10 = v7[v9];
    v11 = v10[5];
    do
    {
      v12 = v11;
      v11 = *(v11 + 80);
    }

    while (v11);
    v13 = *(v12 + 40);
    if (RLEOIDArrayContainsOid(v13, v2))
    {
      v14 = v10[5];
      do
      {
        v15 = v14;
        v14 = *(v14 + 80);
      }

      while (v14);
      v16 = *(v15 + 8);
      v17 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
      if (dword_1EBF46AD4 >= 5)
      {
        v24 = *__error();
        v21 = _SILogForLogForCategory(2);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "Passing up deletion", buf, 2u);
        }

        *__error() = v24;
      }

      v17[1] = *(v10[5] + 48);
      *(v17 + 1) = si_querypipe_copy_jobid(v10[5]);
      *(v17 + 5) = 0;
      *v17 = 7;
      v18 = malloc_type_malloc(0x10uLL, 0x100004000313F17uLL);
      RLEOIDArrayRemoveOid(v13, v2);
      *v18 = 0;
      v19 = v10[5];
      do
      {
        v20 = v19;
        v19 = *(v19 + 80);
      }

      while (v19);
      *v18 = (*(*(v20 + 8) + 80) << 32) | 0xDE10001;
      v18[1] = v2;
      *(v17 + 4) = _MDStoreOIDArrayCreateMutableWithOids();
      _MDStoreOIDArraySetShouldUseMalloc();
      *(v17 + 14) = 3;
      if (!si_resultqueue_enqueue(v16, v17))
      {
        if (dword_1EBF46AD4 >= 5)
        {
          v22 = *__error();
          v23 = _SILogForLogForCategory(2);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "Attempt to append to queue failed. Releasing result batch", buf, 2u);
          }

          *__error() = v22;
        }

        SIResultBatchFree(v17);
      }
    }

    si_livequery_release(v7[v9++]);
  }

  while (v9 != v6);
  if (v7 != values)
  {
    free(v7);
  }
}

void si_perform_livequeries_reassignments(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v76 = v3;
  v5 = v4;
  v7 = v6;
  v135 = *MEMORY[0x1E69E9840];
  bzero(v127, 0x2000uLL);
  pthread_mutex_lock((v7 + 1712));
  Count = CFSetGetCount(*(v7 + 1776));
  v9 = Count;
  if (Count >= 1024)
  {
    v10 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    CFSetGetValues(*(v7 + 1776), v10);
  }

  else
  {
    if (!Count)
    {
      v11 = 0;
      v10 = v127;
      goto LABEL_10;
    }

    v10 = v127;
    CFSetGetValues(*(v7 + 1776), v127);
    if (v9 < 1)
    {
      v11 = 0;
      goto LABEL_10;
    }
  }

  v12 = 0;
  v11 = 1;
  do
  {
    atomic_fetch_add(v10[v12++], 1u);
  }

  while (v9 != v12);
LABEL_10:
  pthread_mutex_unlock((v7 + 1712));
  bzero(&v125, 0x1000uLL);
  v80 = 0;
  v81 = 0;
  if (v2)
  {
    v13 = *(v7 + 6624);
    if (v13)
    {
      v125 = v2[3];
      Path = directoryStoreGetPath(v13, v125, &v126);
      v81 = Path + 1;
      if (Path == -1)
      {
        v15 = 0;
      }

      else
      {
        v15 = &v125;
      }

      v80 = v15;
    }
  }

  if (v11)
  {
    v16 = 0;
    allocator = *MEMORY[0x1E695E480];
    v93 = v7;
    v75 = v9;
    v79 = v10;
    v73 = v5;
    v74 = v2;
    while (1)
    {
      v17 = v10[v16];
      v18 = v17[5];
      do
      {
        v19 = v18;
        v18 = *(v18 + 80);
      }

      while (v18);
      v20 = *(v19 + 40);
      if (!RLEOIDArrayContainsOid(v20, v5))
      {
        goto LABEL_97;
      }

      v88 = v16;
      v21 = v17[5];
      do
      {
        v22 = v21;
        v21 = *(v21 + 80);
      }

      while (v21);
      v89 = *(v22 + 8);
      v23 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
      if (dword_1EBF46AD4 >= 5)
      {
        v65 = *__error();
        v66 = _SILogForLogForCategory(2);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C278D000, v66, OS_LOG_TYPE_DEFAULT, "Passing up deletion", buf, 2u);
        }

        *__error() = v65;
        v9 = v75;
      }

      v23[1] = *(v17[5] + 48);
      *(v23 + 1) = si_querypipe_copy_jobid(v17[5]);
      *(v23 + 5) = 0;
      *v23 = 7;
      v24 = malloc_type_malloc(0x10uLL, 0x100004000313F17uLL);
      RLEOIDArrayRemoveOid(v20, v5);
      *v24 = 0;
      v25 = v17[5];
      do
      {
        v26 = v25;
        v25 = *(v25 + 80);
      }

      while (v25);
      *v24 = (*(*(v26 + 8) + 80) << 32) | 0xDE10001;
      v24[1] = v5;
      *(v23 + 4) = _MDStoreOIDArrayCreateMutableWithOids();
      _MDStoreOIDArraySetShouldUseMalloc();
      *(v23 + 14) = 3;
      v27 = v89;
      pthread_mutex_lock((*v89 + 8));
      ++*(v89 + 21);
      pthread_mutex_unlock((*v89 + 8));
      if (!si_resultqueue_enqueue(v89, v23))
      {
        if (dword_1EBF46AD4 >= 5)
        {
          v71 = *__error();
          v72 = _SILogForLogForCategory(2);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v72, OS_LOG_TYPE_DEFAULT, "Attempt to append to queue failed. Releasing result batch", buf, 2u);
          }

          *__error() = v71;
          v9 = v75;
        }

        SIResultBatchFree(v23);
      }

      v29 = v17[1];
      v30 = *(v29 + 576);
      if (!v30)
      {
        goto LABEL_32;
      }

      pthread_rwlock_wrlock((v30 + 16));
      if (RLEOIDArrayContainsOid(v30, v5))
      {
        break;
      }

      pthread_rwlock_unlock((v30 + 16));
      v16 = v88;
LABEL_96:
      si_resultqueue_start(v27);
LABEL_97:
      si_livequery_release(v10[v16++]);
      if (v16 == v9)
      {
        goto LABEL_108;
      }
    }

    RLEOIDArrayRemoveOid(v30, v5);
    pthread_rwlock_wrlock((v30 + 16));
    SIValueSet<unsigned long long>::SIValueSetInsert((v30 + 216), v76);
    pthread_rwlock_unlock((v30 + 16));
    pthread_rwlock_unlock((v30 + 16));
    v29 = v17[1];
LABEL_32:
    v31 = v17[5];
    v32 = *(v29 + 144);
    *buf = MEMORY[0x1E69E9820];
    v106 = 0x40000000;
    v107 = __query_once_block_invoke;
    v108 = &__block_descriptor_tmp_518;
    v109 = v29;
    if (v32 != -1)
    {
      dispatch_once((v29 + 144), buf);
    }

    v90 = v31;
    v33 = *(v31 + 88);
    v123 = 0;
    v118 = v7;
    v119 = 0;
    v121 = 0;
    v120 = v33;
    v117 = &unk_1F427AF00;
    v122 = v81;
    v124 = v80;
    v114 = v2;
    v115 = 0;
    v116 = 0;
    v84 = v33;
    if (v33)
    {
      v34 = *(v33 + 120);
    }

    else
    {
      v34 = 0;
    }

    v82 = *(v29 + 256);
    v83 = *(v29 + 248);
    v35 = *(v29 + 60) ^ 1;
    v86 = v29;
    v36 = *(v29 + 61);
    if ((v35 & 1) == 0)
    {
      db_eval_obj_with_options(v28);
    }

    Mutable = CFDictionaryCreateMutable(allocator, 0, 0, MEMORY[0x1E695E9E8]);
    bzero(buf, 0x11E0uLL);
    v85 = Mutable;
    v38 = Mutable;
    v39 = v86;
    PartialQueryResults::PartialQueryResults(buf, *(v86 + 16), *(v86 + 24), 0, 0, v38, *(v86 + 152), 0, *(v86 + 360), 0, 0, 0, 0, 1u);
    if (*(v86 + 152) > 3)
    {
      if (v110)
      {
        PartialQueryResults::attributeVector(buf);
        v49 = v110;
      }

      else
      {
        v49 = 0;
      }

      v10 = v79;
      collectAttributesFromDBO(v7, v2, v49, buf, v34);
      si_querypipe_addcoalescedresults(v90, buf, *(v7 + 1192), 1);
      v16 = v88;
    }

    else
    {
      v40 = v90;
      do
      {
        v41 = v40;
        v40 = *(v40 + 80);
      }

      while (v40);
      v42 = RLEOIDArrayContainsOid(*(v41 + 40), *v2);
      v104 = 0;
      v77 = v42;
      LOBYTE(v43) = 1;
      v44 = 0uLL;
      *&cf[1] = 0u;
      if (v42)
      {
        v45 = 2;
      }

      else
      {
        v45 = 1;
      }

      v101 = 0;
      v100 = 0;
      v97 = 0;
      v98 = v7;
      v99 = v84;
      v102 = 0uLL;
      memset(cf, 0, sizeof(cf));
      if (v7)
      {
        v43 = *(v7 + 6586) >> 7;
      }

      LOBYTE(v104) = v43;
      v96 = &unk_1F42826A0;
      v101 = v2;
      LODWORD(v97) = 4;
      v78 = v45;
      if (v36)
      {
        v46 = 0;
        v47 = 0;
        v48 = -1;
      }

      else
      {
        v92 = *(v86 + 288);
        if (v92 < 1)
        {
          v46 = 0;
          v47 = 0;
        }

        else
        {
          v50 = 0;
          v46 = 0;
          v47 = 0;
          v51 = 0;
          v91 = *(v86 + 264);
          do
          {
            v52 = (v91 + 24 * v50);
            v53 = v52[1];
            if (v53 < 1)
            {
              v55 = 0;
              v56 = 0;
            }

            else
            {
              v54 = 0;
              v55 = 0;
              v56 = 0;
              do
              {
                if (*(*v52 + 8 * v54))
                {
                  v57 = db_eval_obj_with_options(v44) != 0;
                  v58 = __CFADD__(v55, v57);
                  v55 += v57;
                  if (v58)
                  {
                    ++v56;
                  }
                }

                ++v54;
                v53 = v52[1];
              }

              while (v53 > v54);
            }

            v59 = (v56 << v51) | (v55 >> 1 >> ~v51);
            if ((v51 & 0x40) != 0)
            {
              v59 = v55 << v51;
              v60 = 0;
            }

            else
            {
              v60 = v55 << v51;
            }

            v47 |= v59;
            v46 |= v60;
            v51 += v53;
            ++v50;
          }

          while (v92 > v50);
        }

        v39 = v86;
        v48 = *(v86 + 360);
        v5 = v73;
        v2 = v74;
        v27 = v89;
      }

      v61 = v90;
      v10 = v79;
      do
      {
        v62 = v61;
        v61 = *(v61 + 80);
      }

      while (v61);
      if (v77)
      {
        v63 = 3213;
      }

      else
      {
        v63 = 2781;
      }

      v64 = PartialQueryResults::start(buf, *(*(v62 + 8) + 80), v63, 2uLL, 0);
      LODWORD(v97) = v97 | 8;
      *v128 = v46;
      *&v128[8] = v47;
      *&v128[16] = 0u;
      v129 = 0u;
      v130 = v48;
      v131 = 0;
      v133 = 0;
      v132 = 0;
      v134 = 0;
      memset(v94, 0, sizeof(v94));
      v95 = 0;
      v7 = v93;
      writeDBOToPlistBytes(v93, v64, buf, v34, &v96, v84, v83, v82, 0, v128, 0, 0, v94, 0, 0, 0, v39, 0);
      if (v112)
      {
        _MDPlistBytesEndArray();
        _MDPlistBytesEndPlist();
      }

      v9 = v75;
      v16 = v88;
      if (v111)
      {
        _MDStoreOIDArrayEndBulkAdd();
        _MDStoreOIDArrayEndSequence();
        v113 = 0;
      }

      if (v101 == v2)
      {
        v101 = 0;
      }

      si_querypipe_addresults(v90, buf, v78, 0, v39);
      if (dword_1EBF46AD4 >= 5)
      {
        v67 = *__error();
        v68 = _SILogForLogForCategory(2);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = *v2;
          v70 = *(v39 + 8);
          *v128 = 134218242;
          *&v128[4] = v69;
          *&v128[12] = 2112;
          *&v128[14] = v70;
          _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "True live query: (%lld) %@", v128, 0x16u);
        }

        *__error() = v67;
        v16 = v88;
      }

      v96 = &unk_1F42826A0;
      if (BYTE2(v104) && v101)
      {
        free(v101);
      }

      v96 = &unk_1F4282660;
      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (cf[2])
      {
        free(cf[2]);
        cf[2] = 0;
      }

      if (cf[1])
      {
        CFRelease(cf[1]);
        cf[1] = 0;
      }

      if (BYTE1(v104) == 1)
      {
        free(v102);
      }
    }

    CFRelease(v85);
    PartialQueryResults::~PartialQueryResults(buf);
    v117 = &unk_1F427AF00;
    if (v123)
    {
      (*(*v123 + 8))(v123);
    }

    goto LABEL_96;
  }

LABEL_108:
  if (v10 != v127)
  {
    free(v10);
  }
}

uint64_t si_remove_livequery(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((a1 + 1712));
  CFSetRemoveValue(*(a1 + 1776), a2);

  return pthread_mutex_unlock((a1 + 1712));
}

uint64_t si_dump_livequeries(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 1712));
  v2 = *(a1 + 1776);
  if (v2)
  {
    Count = CFSetGetCount(v2);
    if (Count)
    {
      v5 = Count;
      v19[1] = v19;
      MEMORY[0x1EEE9AC00](v4);
      v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v7, v6);
      CFSetGetValues(*(a1 + 1776), v7);
      if (v5 >= 1)
      {
        v9 = 0;
        *&v8 = 67110914;
        v20 = v8;
        do
        {
          v10 = *&v7[8 * v9];
          v11 = *__error();
          v12 = _SILogForLogForCategory(2);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(a1 + 32);
            v14 = atomic_load(v10);
            v15 = *(v10 + 40);
            v16 = *(v10 + 8);
            v17 = *(v16 + 8);
            *buf = v20;
            v22 = v13;
            v23 = 1024;
            v24 = v9;
            v25 = 1024;
            v26 = v5;
            v27 = 2048;
            v28 = v10;
            v29 = 1024;
            v30 = v14;
            v31 = 2048;
            v32 = v15;
            v33 = 2048;
            v34 = v16;
            v35 = 2112;
            v36 = v17;
            _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "### indexFd: %d live_query[%d,%d]: %p rc: %d pipe: %p q: %p %@", buf, 0x42u);
          }

          *__error() = v11;
          ++v9;
        }

        while (v5 != v9);
      }
    }
  }

  return pthread_mutex_unlock((a1 + 1712));
}

uint64_t siquerynode_compare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 != v3)
  {
    return (v2 - v3);
  }

  v4 = a1;
  while (1)
  {
    v5 = *v4;
    result = (*v4 - *a2);
    if (*v4 != *a2)
    {
      return result;
    }

    if (v5 != 2)
    {
      break;
    }

    v4 = *(v4 + 24);
    a2 = *(a2 + 24);
    v2 = *(v4 + 4);
    v3 = *(a2 + 4);
    if (v2 != v3)
    {
      return (v2 - v3);
    }
  }

  if (v5 < 2)
  {
    v7 = *(v4 + 24);
    v8 = *(a2 + 24);
    if (v7 != v8)
    {
      return (v7 - v8);
    }

    if (v7 >= 1)
    {
      v9 = *(v4 + 32);
      v10 = *(a2 + 32);
      do
      {
        result = siquerynode_compare(*v9, *v10);
        if (result)
        {
          break;
        }

        ++v10;
        ++v9;
        --v7;
      }

      while (v7);
      return result;
    }

    return 0;
  }

  if (v5 != 3)
  {
    return 0;
  }

  v11 = *(v4 + 24);
  v12 = *(v11 + 48);
  v13 = *(a2 + 24);
  v14 = *(v13 + 48);
  result = (v12 - v14);
  if (v12 != v14)
  {
    return result;
  }

  v15 = *(v11 + 56);
  v16 = *(v13 + 56);
  result = (v15 - v16);
  if (v15 != v16)
  {
    return result;
  }

  if (v12 != 4)
  {
    return 0;
  }

  v17 = *(v11 + 16);
  v18 = *(v17 + 24);
  v19 = *(v13 + 16);
  v20 = *(v19 + 24);
  result = (v18 - v20);
  if (v18 != v20)
  {
    return result;
  }

  v21 = *(v17 + 40);
  v22 = *(v19 + 40);
  result = (v21 - v22);
  if (v21 != v22)
  {
    return result;
  }

  result = strcmp(*v17, *v19);
  if (result)
  {
    return result;
  }

  if ((v18 - 11) < 2)
  {
    v23 = 0;
    v24 = 8 * (v21 & ~(v21 >> 31));
    while (v24 != v23)
    {
      result = strcmp(*(*(v17 + 168) + v23), *(*(v19 + 168) + v23));
      v23 += 8;
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  if (v18 != 15)
  {
    return strcmp(*(v17 + 72), *(v19 + 72));
  }

  v25 = *(v17 + 60);
  v26 = v25 & 3;
  result = (*(v17 + 60) & 3) - (*(v19 + 60) & 3u);
  if ((*(v17 + 60) & 3) == (*(v19 + 60) & 3))
  {
    v27 = (v25 >> 2) & 3;
    v28 = (*(v19 + 60) >> 2) & 3;
    result = (v27 - v28);
    if (v27 == v28)
    {
      v29 = *(v17 + 64);
      v30 = *(v19 + 64);
      if (v29 == v30)
      {
        result = *(v17 + 296);
        if (!result)
        {
          return result;
        }

        v32 = *(v19 + 296);
        if (!v32)
        {
          return 0;
        }

        v33 = -1;
        if (v26 != 3 && v27 != 3)
        {
          v33 = (vector_dimension_vec_sizes_15424[v26] * vector_size_elem_sizes_15423[v27]);
        }

        return memcmp(result, v32, v33) == 0;
      }

      else
      {
        if (v29 >= v30)
        {
          v31 = 0;
        }

        else
        {
          v31 = -1;
        }

        if (v29 > v30)
        {
          return 1;
        }

        else
        {
          return v31;
        }
      }
    }
  }

  return result;
}

void *si_querynode_add(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a1;
  }

  v4 = MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= 0x27uLL)
  {
    ++sTotal_4940;
  }

  v5 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
  if (!v5)
  {
    _log_fault_for_malloc_failure();
  }

  *v5 = 0;
  v5[3] = 2;
  if (*v4 <= 0xFuLL)
  {
    ++sTotal_4940;
  }

  v6 = malloc_type_zone_calloc(queryZone, 1uLL, 0x10uLL, 0x5BAF1CEAuLL);
  if (!v6)
  {
    _log_fault_for_malloc_failure();
  }

  v5[4] = v6;
  *v6 = a1;
  *(v5[4] + 8) = a2;
  return v5;
}

void *si_querynode_join(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a1;
  }

  v4 = MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= 0x27uLL)
  {
    ++sTotal_4940;
  }

  v5 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
  if (!v5)
  {
    _log_fault_for_malloc_failure();
  }

  *v5 = 1;
  v5[3] = 2;
  if (*v4 <= 0xFuLL)
  {
    ++sTotal_4940;
  }

  v6 = malloc_type_zone_calloc(queryZone, 1uLL, 0x10uLL, 0x5BAF1CEAuLL);
  if (!v6)
  {
    _log_fault_for_malloc_failure();
  }

  v5[4] = v6;
  *v6 = a1;
  *(v5[4] + 8) = a2;
  return v5;
}

void translateSDBQuery(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __db_query_tree_apply_block_block_invoke;
  v3[3] = &unk_1E8198ED0;
  v3[4] = &__block_literal_global_33_4954;
  db_query_tree_apply_block_with_meta(a1, v3, &__block_literal_global_37_4955);
  if (a1)
  {
    if (v2)
    {
      *(v2 + 16) = *(a1 + 56) & 1;
    }
  }
}

void __initCharSets_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
  v4.location = 3584;
  v4.length = 128;
  CFCharacterSetAddCharactersInRange(Mutable, v4);
  _infixChars = CFCharacterSetCreateCopy(v0, Mutable);
  CFRelease(Mutable);
  v2 = CFCharacterSetCreateMutable(v0);
  v5.location = 11904;
  v5.length = 52096;
  CFCharacterSetAddCharactersInRange(v2, v5);
  v6.location = 65376;
  v6.length = 80;
  CFCharacterSetAddCharactersInRange(v2, v6);
  _cjkChars = CFCharacterSetCreateCopy(v0, v2);

  CFRelease(v2);
}

uint64_t rewriteForFSPostCheckInPlace(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (!v3)
  {
    v4 = 0;
LABEL_13:
    v8 = v2;
    goto LABEL_14;
  }

  v4 = *(v3 + 48);
  if ((*(v3 + 24) - 11) > 1)
  {
    goto LABEL_13;
  }

  v5 = *v3;
  if (strncmp(*v3, "kMDItemFS", 9uLL))
  {
    if (strncmp(v5, "_kMDItemFS", 0xAuLL))
    {
      goto LABEL_13;
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = __db_query_tree_apply_block_block_invoke;
  v17[3] = &unk_1E8198ED0;
  v17[4] = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v2, v17, &__block_literal_global_25_15416);
  v7 = v6;
  if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
  {
    ++sTotal_4940;
  }

  v8 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
  if (!v8)
  {
    _log_fault_for_malloc_failure();
  }

  *v8 = v7;
  v8[1] = v2;
  v9 = *(v7 + 16);
  v10 = *(v9 + 24);
  if (v10 == 11)
  {
    *(v8 + 24) = 2;
    *(v9 + 24) = 8;
    v11 = v2[2];
    v12 = 7;
  }

  else
  {
    if (v10 != 12)
    {
      v11 = v2[2];
      goto LABEL_25;
    }

    *(v8 + 24) = 1;
    *(v9 + 24) = 3;
    v11 = v2[2];
    v12 = 4;
  }

  *(v11 + 24) = v12;
LABEL_25:
  *(v9 + 72) = **(v9 + 168);
  *(v11 + 72) = *(*(v11 + 168) + 8);
  free(*(*(v9 + 168) + 8));
  **(*(v7 + 16) + 168) = 0;
  *(*(*(v7 + 16) + 168) + 8) = 0;
  free(**(v2[2] + 168));
  **(v2[2] + 168) = 0;
  *(*(v2[2] + 168) + 8) = 0;
  *(v2[2] + 40) = 0;
  *(*(v7 + 16) + 40) = 0;
LABEL_14:
  *a1 = v8;
  v13 = v4;
  if (*v8)
  {
    v13 = rewriteForFSPostCheckInPlace(v8);
  }

  v15 = v8[1];
  v14 = v8 + 1;
  if (v15)
  {
    v4 = rewriteForFSPostCheckInPlace(v14);
  }

  if (v13 >= v4)
  {
    return v4;
  }

  else
  {
    return v13;
  }
}

uint64_t keycompare_4999(uint64_t a1, int a2, const char *a3, int a4, const char *a5)
{
  v5 = *a3;
  v6 = *a5;
  if (a2 == 8)
  {
    v7 = v5 >= v6;
    v8 = v5 > v6;
    if (v5 == v6)
    {
      v9 = -1;
    }

    else
    {
      v9 = (v5 > v6) - (v5 < v6);
    }

    v10 = v8;
    v11 = !v7;
    v12 = v10 - v11;
    if (a4 == 8)
    {
      return v12;
    }

    else
    {
      return v9;
    }
  }

  else if (a4 == 8)
  {
    if (v5 == v6)
    {
      return 1;
    }

    else
    {
      return (v5 > v6) - (v5 < v6);
    }
  }

  else
  {
    v14 = v5 >= v6;
    if (v5 == v6)
    {
      return strcmp(a3 + 14, a5 + 14);
    }

    else
    {
      v15 = v5 > v6;
      v16 = !v14;
      return (v15 - v16);
    }
  }
}

void release_persistent_id_64_store(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4;
  if (a1[4] > 0x7FFFFFFFFFFFFFFEuLL)
  {
    if (!_sqlite_insert(a1, &master_fid_rec_4983, master_fid_rec_size_4985, a1 + 32, 8, 0))
    {
      goto LABEL_7;
    }

    v3 = *__error();
    v4 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = *v2;
      v13 = 136315650;
      v14 = "release_persistent_id_64_store";
      v15 = 1024;
      v16 = 298;
      v17 = 2048;
      v18 = v12;
      v6 = "%s:%d: psid-release: Failed to update the master fid! (0x%llx)\n";
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *v2;
      v13 = 136315650;
      v14 = "release_persistent_id_64_store";
      v15 = 1024;
      v16 = 285;
      v17 = 2048;
      v18 = v5;
      v6 = "%s:%d: release_psid_64_store: danger! master_fid %lld looks bad.\n";
LABEL_13:
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, v6, &v13, 0x1Cu);
    }
  }

  *__error() = v3;
LABEL_7:
  v11 = a1[2];
  if (v11)
  {
    sqlite3BtreeCloseCursor(v11);
  }

  if (*a1)
  {
    sqlite3BtreeClose(*a1, v7, v8, v9, v10);
  }

  free(a1);
}

uint64_t get_id_for_path_64(uint64_t *a1, const char *a2, uint64_t *a3, void *a4, char a5, uint64_t a6)
{
  v28[34] = *MEMORY[0x1E69E9840];
  v27 = 0;
  memset(&v28[1], 0, 264);
  v28[0] = 2;
  *a3 = 0;
  if (a4)
  {
    *a4 = 2;
  }

  v12 = *a2;
  if (*a2)
  {
    v26 = a6 + 16;
    v13 = 2;
    v14 = a2;
    do
    {
      while (v12 == 47)
      {
        v15 = *++v14;
        v12 = v15;
      }

      v16 = v14;
      if (!v12)
      {
        break;
      }

      do
      {
        if (v12 == 47)
        {
          break;
        }

        v17 = *++v16;
        v12 = v17;
      }

      while (v17);
      v18 = v16 - v14;
      if (((v16 - v14) & 0xFF00) != 0)
      {
        v18 = 255;
      }

      WORD2(v28[1]) = v18;
      __strncpy_chk();
      v19 = WORD2(v28[1]);
      ++WORD2(v28[1]);
      *(&v28[1] + v19 + 6) = 0;
      LODWORD(v28[1]) = 0;
      if (*v16 == 47)
      {
        v14 = v16 + 1;
      }

      else
      {
        v14 = v16;
      }

      if (psid_lookup_5012(a1, v28, &v27))
      {
        if ((a5 & 1) == 0)
        {
          return 2;
        }

        if (a6)
        {
          v24 = &v24;
          v25 = a1;
          MEMORY[0x1EEE9AC00](v20);
          v22 = &v24 - v21;
          bzero(&v24 - v21, v14 - a2 + 1);
          strncat(v22, a2, v14 - a2);
          v22[v14 - a2] = 0;
          a1 = v25;
          v27 = (*(a6 + 16))(a6, v22);
          result = psid_insert_with_id(a1, v28, &v27);
          if (result)
          {
            return result;
          }
        }

        else
        {
          result = psid_insert(a1, v28, &v27);
          if (result)
          {
            return result;
          }
        }
      }

      if (a4)
      {
        *a4 = v28[0];
      }

      v13 = v27;
      v28[0] = v27;
      v12 = *v14;
    }

    while (*v14);
  }

  else
  {
    v13 = 2;
  }

  result = 0;
  *a3 = v13;
  return result;
}

uint64_t psid_lookup_5012(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 12);
  v6 = 8;
  v7 = 0;
  result = _sqlite_get_psid(a1, a2, v4 + 16, &v7, &v6);
  if (result)
  {
    return 2;
  }

  *a3 = v7;
  return result;
}

uint64_t psid_insert_with_id(uint64_t *a1, uint64_t a2, const char **a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a3 > 1)
  {

    return _psid_insert_5014(a1, a2, a3);
  }

  else
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(4);
    v6 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *a3;
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_1C278D000, v5, v6, "psid_insert_with_id: fid %lld not valid!\n", &v9, 0xCu);
    }

    *__error() = v4;
    return 22;
  }
}

uint64_t psid_insert(uint64_t *a1, uint64_t a2, const char **a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  if (v4 > 1)
  {
    *a3 = v4;
    ++a1[4];

    return _psid_insert_5014(a1, a2, a3);
  }

  else
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(4);
    v7 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = a1[4];
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_1C278D000, v6, v7, "psid_insert: master fid corrupted (%lld)\n", &v10, 0xCu);
    }

    *__error() = v5;
    return 22;
  }
}

uint64_t _psid_insert_5014(uint64_t *a1, uint64_t a2, const char **a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (_sqlite_bulkBegin(a1))
  {
    return 22;
  }

  v7 = *(a2 + 12);
  if (_sqlite_insert(a1, a2, v7 + 16, a3, 8, 1))
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = a1[4];
      *buf = 136315906;
      v25 = "_psid_insert_locked";
      v26 = 1024;
      *v27 = 413;
      *&v27[4] = 2048;
      *&v27[6] = v10;
      v28 = 2080;
      v29 = a2 + 14;
      v11 = "%s:%d: psid-insert: failed to store fid 0x%llx for path %s\n";
LABEL_21:
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, v11, buf, 0x26u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v12 = 0x1EBF46000uLL;
  if (dword_1EBF46ADC >= 5)
  {
    v23 = v7;
    v18 = *__error();
    v19 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *a3;
      *buf = 134218242;
      v25 = v20;
      v26 = 2080;
      *v27 = a2 + 14;
      _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "psid-insert: fid 0x%llx for path %s\n", buf, 0x16u);
    }

    *__error() = v18;
    v7 = v23;
    v12 = 0x1EBF46000;
  }

  if (_sqlite_insert(a1, a3, 8uLL, a2, v7 + 16, 1))
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = a1[4];
      *buf = 136315906;
      v25 = "_psid_insert_locked";
      v26 = 1024;
      *v27 = 419;
      *&v27[4] = 2080;
      *&v27[6] = a2 + 14;
      v28 = 2048;
      v29 = v17;
      v11 = "%s:%d: psid-insert: failed to store path %s for fid 0x%llx\n";
      goto LABEL_21;
    }

LABEL_9:
    v14 = 22;
    goto LABEL_10;
  }

  if (*(v12 + 2780) < 5)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v8 = *__error();
  v21 = _SILogForLogForCategory(4);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = a1[4];
    *buf = 136315394;
    v25 = (a2 + 14);
    v26 = 2048;
    *v27 = v22;
    _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "psid-insert: store path %s for fid 0x%llx\n", buf, 0x16u);
  }

  v14 = 0;
LABEL_10:
  *__error() = v8;
LABEL_11:
  v15 = _sqlite_bulkEnd(a1, v13);
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 22;
  }

  if (v15)
  {
    return v16;
  }

  else
  {
    return v14;
  }
}

uint64_t get_path_for_id_64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = a2;
  v7 = a5;
  *(a4 + a5 - 1) = 0;
  if (a2 == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 1;
    memset(v33, 0, sizeof(v33));
    while (1)
    {
      v28 = 272;
      if (_sqlite_get(a1, &v29, 8, v33, &v28))
      {
        return 2;
      }

      v11 = WORD6(v33[0]);
      if (WORD6(v33[0]) >= a5)
      {
        v15 = *__error();
        v16 = _SILogForLogForCategory(4);
        v17 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v16, v17))
        {
          *buf = 67109890;
          *v31 = WORD6(v33[0]);
          *&v31[4] = 2048;
          *&v31[6] = *&v33[0];
          *&v31[14] = 1024;
          *&v31[16] = DWORD2(v33[0]);
          LOWORD(v32[0]) = 2080;
          *(v32 + 2) = v33 | 0xE;
          v18 = "get_path_for_id: bogus part len %d (%lld/%d/%s)\n";
          v19 = v16;
          v20 = v17;
          v21 = 34;
          goto LABEL_21;
        }

LABEL_22:
        *__error() = v15;
        return 22;
      }

      if (*&v33[0] <= 1uLL)
      {
        v12 = *__error();
        v13 = _SILogForLogForCategory(4);
        v14 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v13, v14))
        {
          *buf = 134218498;
          *v31 = v29;
          *&v31[8] = 2048;
          *&v31[10] = *&v33[0];
          *&v31[18] = 2080;
          v32[0] = v33 | 0xE;
          _os_log_impl(&dword_1C278D000, v13, v14, "get_path_for_id: bogus looking part fid (cur fid %lld, part fid %lld name %s)\n", buf, 0x20u);
        }

        *__error() = v12;
        v11 = WORD6(v33[0]);
      }

      if (v8 + v11 + 1 >= a5)
      {
        *(a4 + v8) = 0;
        v15 = *__error();
        v22 = _SILogForLogForCategory(4);
        v23 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v22, v23))
        {
          *buf = 67109634;
          *v31 = v8;
          *&v31[4] = 1024;
          *&v31[6] = WORD6(v33[0]);
          *&v31[10] = 2080;
          *&v31[12] = a4;
          v18 = "get_path_for_id: path index too large! (%d %d : %s)\n";
          v19 = v22;
          v20 = v23;
          v21 = 24;
LABEL_21:
          _os_log_impl(&dword_1C278D000, v19, v20, v18, buf, v21);
        }

        goto LABEL_22;
      }

      strncpy((a4 + 1 + a5 - (v8 + v11)), (v33 | 0xE), v11 - 1);
      v8 += v11;
      *(a4 + v7 - v8) = 47;
      if (v29 == 2 && *&v33[0] != 2)
      {
        break;
      }

      v29 = *&v33[0];
      if (*&v33[0] == 2)
      {
        goto LABEL_3;
      }
    }

    v24 = *__error();
    v25 = _SILogForLogForCategory(4);
    v26 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v25, v26))
    {
      *buf = 134218240;
      *v31 = v29;
      *&v31[8] = 2048;
      *&v31[10] = *&v33[0];
      _os_log_impl(&dword_1C278D000, v25, v26, "get_path_for_id: cur fid %lld should have parent fid 2 but part->fid == %lld\n", buf, 0x16u);
    }

    *__error() = v24;
  }

LABEL_3:
  result = 0;
  *a3 = a4 + v7 - v8;
  return result;
}

uint64_t set_id_for_path_64(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v94 = *MEMORY[0x1E69E9840];
  v81 = v4;
  *(&v5 + 1) = 0;
  memset(&v91[1], 0, 264);
  v91[0] = 2;
  v6 = *v2;
  if (!*v2)
  {
    return v6;
  }

  v7 = v3;
  v8 = v2;
  v9 = v1;
  v79 = &v91[1] + 6;
  v80 = 0;
  v78 = v3 + 16;
  v75 = v85 + 14;
  *&v5 = 134218242;
  v72 = v5;
  *&v5 = 136315394;
  v71 = v5;
  *&v5 = 136315650;
  v76 = v5;
  *&v5 = 134218498;
  v74 = v5;
  *&v5 = 134217984;
  v73 = v5;
  *&v5 = 67109376;
  v77 = v5;
  v10 = v2;
  while (1)
  {
    while (v6 == 47)
    {
      v20 = *++v10;
      v6 = v20;
    }

    v11 = v10;
    if (!v6)
    {
      return v6;
    }

    do
    {
      if (v6 == 47)
      {
        break;
      }

      v12 = *++v11;
      LODWORD(v6) = v12;
    }

    while (v12);
    v13 = v11 - v10;
    if (((v11 - v10) & 0xFF00) != 0)
    {
      v13 = 255;
    }

    WORD2(v91[1]) = v13;
    v14 = v79;
    __strncpy_chk();
    v15 = WORD2(v91[1]);
    ++WORD2(v91[1]);
    v14[v15] = 0;
    LODWORD(v91[1]) = 0;
    v10 = *v11 == 47 ? v11 + 1 : v11;
    if (psid_lookup_5012(v9, v91, &v80))
    {
      break;
    }

    if (*v10)
    {
      goto LABEL_83;
    }

    if (v80 == v81)
    {
      if (dword_1EBF46AE4 < 5)
      {
        goto LABEL_83;
      }

      v21 = *__error();
      v22 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v86 = v72;
        v87 = v81;
        v88 = 2080;
        v89 = v8;
        v23 = &v86;
        v24 = v22;
        v25 = "Existing path for %lld at %s matches. Re-parent not needed.";
        v26 = 22;
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    if (dword_1EBF46AE4 >= 5)
    {
      v59 = *__error();
      v60 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v86 = v72;
        v87 = v81;
        v88 = 2080;
        v89 = v8;
        _os_log_impl(&dword_1C278D000, v60, OS_LOG_TYPE_DEFAULT, "Existing path for %lld at %s. Re-parent.", &v86, 0x16u);
      }

      *__error() = v59;
    }

    memcpy(v90, v91, sizeof(v90));
    v90[0] = 2;
    strncpy(&v90[1] + 6, "SP_TMP_MOVE", 0x100uLL);
    WORD2(v90[1]) = strlen(&v90[1] + 6);
    if (!psid_insert_with_id(v9, v90, &v81))
    {
      v70 = v8;
      bzero(&v86, 0x2000uLL);
      while (1)
      {
        _sqlite_bulkBegin(v9);
        v84 = v80;
        v82 = 0;
        if (!v80)
        {
          goto LABEL_80;
        }

        v83 = 0;
        memset(v85, 0, 272);
        v28 = sqlite3BtreeMoveto(v9[2], &v84, 8, &v82);
        if (v28 | v82)
        {
          v49 = v28;
          v50 = *__error();
          v51 = _SILogForLogForCategory(4);
          v52 = 2 * (dword_1EBF46ADC < 4);
          if (os_log_type_enabled(v51, v52))
          {
            *buf = v77;
            *v93 = v49;
            *&v93[4] = 2048;
            *&v93[6] = v84;
            _os_log_impl(&dword_1C278D000, v51, v52, "psid_iterate: sqlite3BtreeMoveto failed; rc = %d for for dir_id %lld\n", buf, 0x12u);
          }

          *__error() = v50;
LABEL_80:
          _sqlite_bulkEnd(v9, v27);
          goto LABEL_81;
        }

        v29 = 0;
        while (1)
        {
          v30 = v9[2];
          if (!*(v30 + 97))
          {
            break;
          }

          getCellInfo(v9[2]);
          v31 = *(v30 + 72);
          v30 = v9[2];
          if (v31 != 8)
          {
            goto LABEL_45;
          }

          if (getPayload(v9[2], 8, &v83, 0))
          {
            goto LABEL_65;
          }

          v32 = v83;
          if (v84)
          {
            if (v84 != v83)
            {
              goto LABEL_65;
            }
          }

          if (dword_1EBF46ADC >= 5)
          {
            v33 = *__error();
            v34 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v73;
              *v93 = v32;
              _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "key: %lld # ", buf, 0xCu);
            }

            *__error() = v33;
          }

LABEL_48:
          v35 = v9[2];
          if (!*(v35 + 97))
          {
            v36 = 0;
LABEL_55:
            if (getPayload(v35, v36, v85, 1))
            {
              goto LABEL_65;
            }

            if (dword_1EBF46ADC >= 5)
            {
              v38 = *__error();
              v39 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v74;
                *v93 = *&v85[0];
                *&v93[8] = 1024;
                *&v93[10] = DWORD2(v85[0]);
                *&v93[14] = 2080;
                *&v93[16] = v75;
                _os_log_impl(&dword_1C278D000, v39, OS_LOG_TYPE_DEFAULT, "value: %lld / %d / %s\n", buf, 0x1Cu);
              }

              *__error() = v38;
            }

            goto LABEL_57;
          }

          getCellInfo(v9[2]);
          v36 = *(v35 + 80);
          v35 = v9[2];
          if (v36 != 8)
          {
            goto LABEL_55;
          }

          if (getPayload(v9[2], 8, &v83, 1))
          {
            goto LABEL_65;
          }

          if (dword_1EBF46ADC >= 5)
          {
            v40 = *__error();
            v41 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v73;
              *v93 = v83;
              _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "value: %lld\n", buf, 0xCu);
            }

            *__error() = v40;
          }

          *(&v86 + v29++) = v83;
          if (v29 >= 0x401)
          {
            v48 = 1;
            goto LABEL_67;
          }

LABEL_57:
          v37 = sqlite3BtreeNext(v9[2], &v82);
          if (v37 | v82)
          {
            goto LABEL_65;
          }
        }

        LODWORD(v31) = 0;
LABEL_45:
        if (!getPayload(v30, v31, v85, 0) && (!v84 || v84 == *&v85[0]))
        {
          goto LABEL_48;
        }

LABEL_65:
        if (!v29)
        {
          goto LABEL_80;
        }

        v48 = 0;
LABEL_67:
        v42 = &v86;
        do
        {
          bzero(v85, 0x800uLL);
          v84 = 0;
          v43 = *v42++;
          if (!get_path_for_id_64(v9, v43, &v84, v85, 2048))
          {
            v45 = v84;
            v46 = rename_path_64(v9, v84, "/SP_TMP_MOVE", v7);
            if (dword_1EBF46AE4 >= 5)
            {
              v47 = v46;
              v69 = *__error();
              v68 = _SILogForLogForCategory(6);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v76;
                *v93 = v45;
                *&v93[8] = 2080;
                *&v93[10] = "/SP_TMP_MOVE";
                *&v93[18] = 1024;
                *&v93[20] = v47;
                _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "Move %s to %s. (%d)", buf, 0x1Cu);
              }

              *__error() = v69;
            }
          }

          --v29;
        }

        while (v29);
        _sqlite_bulkEnd(v9, v44);
        if ((v48 & 1) == 0)
        {
LABEL_81:
          v8 = v70;
          v53 = remove_path_64(v9, v70);
          if (dword_1EBF46AE4 >= 5)
          {
            v61 = v53;
            v62 = *__error();
            v63 = _SILogForLogForCategory(6);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v85[0]) = v71;
              *(v85 + 4) = v8;
              WORD6(v85[0]) = 1024;
              *(v85 + 14) = v61;
              _os_log_impl(&dword_1C278D000, v63, OS_LOG_TYPE_DEFAULT, "Remove %s. (%d)", v85, 0x12u);
            }

            *__error() = v62;
          }

          v54 = rename_path_64(v9, "/SP_TMP_MOVE", v8, v7);
          if (dword_1EBF46AE4 < 5)
          {
            break;
          }

          v64 = v54;
          v21 = *__error();
          v65 = _SILogForLogForCategory(6);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v85[0]) = v76;
            *(v85 + 4) = "/SP_TMP_MOVE";
            WORD6(v85[0]) = 2080;
            *(v85 + 14) = v8;
            WORD3(v85[1]) = 1024;
            DWORD2(v85[1]) = v64;
            v23 = v85;
            v24 = v65;
            v25 = "Move %s to %s. (%d)";
            v26 = 28;
LABEL_99:
            _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, v25, v23, v26);
          }

LABEL_100:
          *__error() = v21;
          break;
        }
      }
    }

LABEL_83:
    v91[0] = v80;
    v6 = *v10;
    if (!*v10)
    {
      return v6;
    }
  }

  if (!*v10)
  {
    if (dword_1EBF46AE4 >= 5)
    {
      v55 = *__error();
      v56 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v86 = v72;
        v87 = v81;
        v88 = 2080;
        v89 = v79;
        _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "%lld -> %s", &v86, 0x16u);
      }

      *__error() = v55;
    }

    v19 = psid_insert_with_id(v9, v91, &v81);
    if (!v19)
    {
      v80 = v81;
      goto LABEL_83;
    }

    return v19;
  }

  if (v7)
  {
    MEMORY[0x1EEE9AC00](v16);
    v18 = &v67 - v17;
    bzero(&v67 - v17, v10 - v8 + 1);
    strncpy(v18, v8, v10 - v8);
    v18[v10 - v8] = 0;
    v80 = (*(v7 + 16))(v7, v18);
    v19 = psid_insert_with_id(v9, v91, &v80);
    if (!v19)
    {
      goto LABEL_83;
    }

    return v19;
  }

  v6 = psid_insert(v9, v91, &v80);
  if (dword_1EBF46AE4 >= 5)
  {
    v57 = *__error();
    v58 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v86 = v72;
      v87 = v80;
      v88 = 2080;
      v89 = v79;
      _os_log_impl(&dword_1C278D000, v58, OS_LOG_TYPE_DEFAULT, "%lld -> %s", &v86, 0x16u);
    }

    *__error() = v57;
  }

  if (!v6)
  {
    goto LABEL_83;
  }

  return v6;
}

uint64_t rename_path_64(uint64_t *a1, char *a2, char *a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = 0;
  remove_path_64(a1, a3);
  if (get_id_for_path_64(a1, a2, &v30, &v29, 0, 0))
  {
    return 2;
  }

  strncpy(__dst, a3, 0x400uLL);
  __dst[1023] = 0;
  v8 = strrchr(__dst, 47);
  if (v8)
  {
    v9 = v8;
    *v8 = 0;
  }

  else
  {
    v9 = &__dst[-(__dst[0] != 47)];
  }

  v28 = 0;
  if (get_id_for_path_64(a1, __dst, &v28, 0, 1, a4))
  {
    return 2;
  }

  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  v11 = strncpy((v39 | 0xE), v9 + 1, 0x100uLL);
  BYTE13(v40) = 0;
  v12 = strlen(v11);
  *&v39[0] = v28;
  WORD6(v39[0]) = v12 + 1;
  v13 = _sqlite_bulkBegin(a1);
  if (v13)
  {
    v14 = v13;
    v15 = *__error();
    v16 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v32 = "rename_path_64";
      v33 = 1024;
      v34 = 981;
      v35 = 1024;
      *v36 = v14;
      *&v36[4] = 2048;
      *&v36[6] = v30;
      *&v36[14] = 2048;
      *&v36[16] = *&v39[0];
      v37 = 2080;
      v38 = v39 | 0xE;
      v17 = "%s:%d: psid-rename: begin error %d updating the file-fid record for fid %lld pid %lld / %s. \n";
LABEL_28:
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x36u);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (_sqlite_insert(a1, &v30, 8uLL, v39, v12 + 17, 1))
  {
    v18 = *__error();
    v19 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v32 = "rename_path_64";
      v33 = 1024;
      v34 = 989;
      v35 = 2048;
      *v36 = v30;
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: psid-rename: Could not update the file-fid record for fid %lld\n", buf, 0x1Cu);
    }

    *__error() = v18;
  }

  if (_sqlite_insert(a1, v39, v12 + 17, &v30, 8, 1))
  {
    v20 = *__error();
    v21 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v32 = "rename_path_64";
      v33 = 1024;
      v34 = 997;
      v35 = 2048;
      *v36 = *&v39[0];
      *&v36[8] = 2080;
      *&v36[10] = v39 | 0xE;
      _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: psid-rename: failed to insert new record for %lld / %s.\n", buf, 0x26u);
    }

    *__error() = v20;
  }

  *&v39[0] = v29;
  v22 = strrchr(a2, 47);
  if (v22)
  {
    v24 = strncpy((v39 | 0xE), v22 + 1, 0x100uLL);
    BYTE13(v40) = 0;
    WORD6(v39[0]) = strlen(v24) + 1;
    if (_sqlite_delete(a1, v39, WORD6(v39[0]) + 16))
    {
      v25 = *__error();
      v26 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v32 = "rename_path_64";
        v33 = 1024;
        v34 = 1019;
        v35 = 2048;
        *v36 = *&v39[0];
        *&v36[8] = 2080;
        *&v36[10] = v39 | 0xE;
        _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: psid-rename: failed to delete old record for %lld / %s\n", buf, 0x26u);
      }

      *__error() = v25;
    }
  }

  result = _sqlite_bulkEnd(a1, v23);
  if (result)
  {
    v27 = result;
    v15 = *__error();
    v16 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v32 = "rename_path_64";
      v33 = 1024;
      v34 = 1025;
      v35 = 1024;
      *v36 = v27;
      *&v36[4] = 2048;
      *&v36[6] = v30;
      *&v36[14] = 2048;
      *&v36[16] = *&v39[0];
      v37 = 2080;
      v38 = v39 | 0xE;
      v17 = "%s:%d: psid-rename: end error %d updating the file-fid record for fid %lld pid %lld / %s. \n";
      goto LABEL_28;
    }

LABEL_26:
    *__error() = v15;
    return 22;
  }

  return result;
}

uint64_t remove_path_64(uint64_t *a1, char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (_sqlite_bulkBegin(a1))
  {
    return 22;
  }

  memset(v20, 0, sizeof(v20));
  v13 = 0;
  if (get_id_for_path_64(a1, a2, v20, &v13, 0, 0))
  {
    v6 = 2;
  }

  else
  {
    if (_sqlite_delete(a1, v20, 8))
    {
      v7 = *__error();
      v8 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v15 = "remove_path_locked";
        v16 = 1024;
        v17 = 813;
        v18 = 2048;
        v19 = *&v20[0];
        _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: psid-remove: Could not delete the file-fid record for fid %lld\n", buf, 0x1Cu);
      }

      *__error() = v7;
    }

    memset(v20 + 8, 0, 264);
    *&v20[0] = v13;
    v9 = strrchr(a2, 47);
    v10 = a2 - 1;
    if (v9)
    {
      v10 = v9;
    }

    strncpy((v20 | 0xE), v10 + 1, 0x100uLL);
    BYTE13(v20[16]) = 0;
    WORD6(v20[0]) = strlen((v20 | 0xE)) + 1;
    v6 = 2 * (_sqlite_delete(a1, v20, WORD6(v20[0]) + 16) != 0);
  }

  v11 = _sqlite_bulkEnd(a1, v5);
  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = 22;
  }

  if (v11)
  {
    return v12;
  }

  else
  {
    return v6;
  }
}

uint64_t si_getUserFSBundleID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!*(a1 + 1192) || (*(a1 + 2072) & 1) != 0)
  {
    return 0;
  }

  result = 0;
  if (a4)
  {
    if (*(a1 + 1416))
    {
      (*(a9 + 16))(a9, 28, "com.apple.filesystems.UserFS.FileProvider", 0, a6, a10, a7, a8);
      return 1;
    }
  }

  return result;
}

uint64_t si_getRenderOrEngagementValues(datastore_info *a1, uint64_t a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6, char *__s)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Dbo = a3;
  if (!a3)
  {
    Dbo = iterateToGetDbo(a1, a2);
    if (!Dbo)
    {
      return 0;
    }
  }

  v36 = 0;
  v37 = 0;
  if (db_get_field_locked(a1, Dbo, __s, &v37, &v36))
  {
    goto LABEL_41;
  }

  if (*v37 != 14)
  {
    goto LABEL_41;
  }

  v14 = *(v37 + 8);
  if (v14 < 2)
  {
    goto LABEL_41;
  }

  v15 = v36;
  if (*v36 != 9)
  {
    goto LABEL_41;
  }

  v16 = v14 - 1;
  v39 = 0;
  v38 = 0;
  if (v16 < 9)
  {
    goto LABEL_41;
  }

  v17 = llround(((86400 * (CFAbsoluteTimeGetCurrent() / 0x15180)) - *(v36 + 1)) / 86400.0);
  if (v17 > 0x16D || v16 == 9)
  {
    goto LABEL_41;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = (v15 + 9);
  v27 = (v15 + 11);
  do
  {
    v28 = *v26;
    v25 += v28;
    if (v28 == 255 && !v26[3])
    {
      v25 += *v27;
      v29 = 1;
    }

    else
    {
      v29 = 0;
    }

    v30 = v17 - v25;
    v31 = v26[1];
    if (v17 == v25)
    {
      v24 += v31;
      LOWORD(v38) = v24;
LABEL_20:
      v23 += v31;
      WORD1(v38) = v23;
LABEL_21:
      v22 += v31;
      WORD2(v38) = v22;
LABEL_22:
      v21 += v31;
      HIWORD(v38) = v21;
LABEL_23:
      v20 += v31;
      LOWORD(v39) = v20;
LABEL_24:
      v19 += v31;
      HIWORD(v39) = v19;
      goto LABEL_25;
    }

    if (v30 <= 6)
    {
      goto LABEL_20;
    }

    if (v30 <= 0x1D)
    {
      goto LABEL_21;
    }

    if (v30 <= 0x59)
    {
      goto LABEL_22;
    }

    if (v30 <= 0xB5)
    {
      goto LABEL_23;
    }

    if (v30 <= 0x16C)
    {
      goto LABEL_24;
    }

LABEL_25:
    v26 += 4;
    if (!v29)
    {
      v26 = v27;
    }

    if ((v30 & 0x8000000000000000) != 0)
    {
      break;
    }

    v27 = v26 + 2;
  }

  while ((v26 + 2) <= v15 + 1 + v16);
  if (v31)
  {
    v33 = (*(a5 + 16))(a5, 6, 0, 0, a4, a6);
    for (i = 0; i != 6; ++i)
    {
      (*(a5 + 16))(a5, 17, *(&v38 + i), 0, i, v33);
    }

    (*(a5 + 16))(a5, 7, v33, 0, a4, a6);
    v32 = 1;
    goto LABEL_42;
  }

LABEL_41:
  v32 = 0;
LABEL_42:
  if (Dbo != a3)
  {
    free(Dbo);
  }

  return v32;
}

_DWORD *iterateToGetDbo(datastore_info *a1, uint64_t a2)
{
  v12 = a2;
  v2 = db_obj_iter_create_with_filter(a1, 1uLL, &v12, 0, 0, 16, 0, 0, 0);
  v6 = db_obj_iter_next(v2, &v11, 1, v3, v4, v5);
  if (v6)
  {
    v7 = v6;
    v8 = malloc_type_malloc(v6[3], 0x1000040EED21634uLL);
    v9 = v8;
    if (v8)
    {
      memcpy(v8, v7, v7[3]);
      v9[2] = v7[3];
    }
  }

  else
  {
    v9 = 0;
  }

  db_obj_iter_release(v2);
  return v9;
}

uint64_t si_fsContentTypeMatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CatInfoGotten *a6, uint64_t a7)
{
  if (!convert_value_to_type(0xBu, a7))
  {
    if (*(a7 + 24) == 5 && (v9 = *(a7 + 72), *v9 == 42))
    {
      if (!a6 || !v9[1])
      {
        return 0;
      }
    }

    else if (!a6)
    {
      return 0;
    }

    CatInfoGotten::fastPath(a6);
  }

  return 0;
}

uint64_t si_fsContentTypeAttr(int a1, int a2, int a3, int a4, int a5, int a6, int a7, CatInfoGotten *this)
{
  if (this)
  {
    CatInfoGotten::fastPath(this);
  }

  return 0;
}

uint64_t si_getOnBootVolumeField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(a1 + 6584))
  {
    v10 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v10 = MEMORY[0x1E695E4C0];
  }

  (*(a9 + 16))(a9, 34, *v10, 0, a6, a10, a7, a8);
  return 1;
}

uint64_t si_getSDBInfo(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  MEMORY[0x1EEE9AC00](a1);
  v17 = v16;
  v60[512] = *MEMORY[0x1E69E9840];
  v59 = v13;
  result = v16[149];
  if (result)
  {
    v19 = v15;
    v20 = v14;
    v21 = v13;
    v22 = v12;
    v23 = v11;
    if (!v13 && (!db_get_obj(result, v12, &v59, 0) ? (v24 = v59 == 0) : (v24 = 1), v24))
    {
      return 0;
    }

    else
    {
      makeThreadId();
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v23)
      {
        v26 = *(v23 + 176);
      }

      else
      {
        v26 = 0;
      }

      v27 = v17[149];
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 0x40000000;
      v57[2] = ___ZL13si_getSDBInfoP4__SIPKcP11__SIUserCtxxP6db_objiPP8db_fieldP13CatInfoGottenU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmSC_ESC__block_invoke;
      v57[3] = &__block_descriptor_tmp_213;
      v58 = v26;
      v57[4] = v17;
      v57[5] = v59;
      v57[6] = Mutable;
      _enumerate_dbo(v27, v59, 1, v57);
      v28 = CFDateCreate(0, *(v59 + 2) / 1000000.0 - *MEMORY[0x1E695E468]);
      CFDictionaryAddValue(Mutable, @"kMDItemAttributeChangeDate", v28);
      CFRelease(v28);
      valuePtr = *v59;
      v29 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      CFDictionaryAddValue(Mutable, @"oid", v29);
      CFRelease(v29);
      valuePtr = *(v59 + 3);
      v30 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      CFDictionaryAddValue(Mutable, @"parent_oid", v30);
      CFRelease(v30);
      valuePtr = *(v59 + 4);
      v31 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      CFDictionaryAddValue(Mutable, @"index_id", v31);
      CFRelease(v31);
      v55 = 0;
      v32 = si_indexForDocId(v17, valuePtr);
      if (v32)
      {
        LODWORD(v60[0]) = 0;
        v53 = 0;
        v54 = 0.0;
        v33 = !v19 || (*(v19 + 8) & 4) == 0;
        if (_CIGetDocIDInfo(v32, v21[4], &v55, v60, &v54, &v53, v33))
        {
          if (LODWORD(v60[0]))
          {
            v34 = CFDateCreate(0, LODWORD(v60[0]));
            CFDictionaryAddValue(Mutable, @"index_ranking_date", v34);
            CFRelease(v34);
          }

          if (v54 != 0.0)
          {
            v35 = CFNumberCreate(0, kCFNumberFloatType, &v54);
            CFDictionaryAddValue(Mutable, @"index_ranking_score", v35);
            CFRelease(v35);
          }

          if (v53)
          {
            valuePtr = v53;
            v36 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
            CFDictionaryAddValue(Mutable, @"index_ranking_container", v36);
            CFRelease(v36);
          }
        }
      }

      v37 = CFNumberCreate(0, kCFNumberSInt8Type, &v55);
      CFDictionaryAddValue(Mutable, @"index_group", v37);
      CFRelease(v37);
      v38 = CFNumberCreate(0, kCFNumberSInt32Type, v59 + 40);
      CFDictionaryAddValue(Mutable, @"flags", v38);
      CFRelease(v38);
      v39 = v17[828];
      if (v39)
      {
        v40 = *(v59 + 3);
        if (v40)
        {
          bzero(v60, 0x1000uLL);
          Path = directoryStoreGetPath(v39, v40, v60);
          if (Path)
          {
            v42 = Path;
            v43 = CFStringCreateMutable(0, 0);
            if (v42 >= 1)
            {
              v44 = v42 + 1;
              v45 = &v60[v42 - 1];
              do
              {
                v46 = *v45--;
                CFStringAppendFormat(v43, 0, @"/%lld", v46);
                --v44;
              }

              while (v44 > 1);
            }

            CFStringAppendFormat(v43, 0, @"/%lld", *(v59 + 3));
            CFStringAppendFormat(v43, 0, @"/%lld", *v59);
            CFDictionaryAddValue(Mutable, @"oid_path", v43);
            CFRelease(v43);
          }
        }
      }

      v47 = v17[177];
      if (v47)
      {
        bzero(v60, 0x400uLL);
        if (!*(v47 + 240))
        {
          v50 = (*(v47 + 40))(v47, v22, v60, 0, 0, 0, 0, -1);
          if (v50)
          {
            v51 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v50, 0x8000100u);
            if (v51)
            {
              v52 = v51;
              CFDictionaryAddValue(Mutable, @"_kMDItemPSIDPath", v51);
              CFRelease(v52);
            }
          }
        }
      }

      if (*v59 == 2)
      {
        v48 = SICopyProperties(v17);
        if (v48)
        {
          v49 = v48;
          CFDictionaryAddValue(Mutable, @"store_properties", v48);
          CFRelease(v49);
        }
      }

      (*(a10 + 16))(a10, 34, Mutable, 0, v20, a11);
      CFRelease(Mutable);
      if (v59 != v21)
      {
        free(v59);
      }

      return 1;
    }
  }

  return result;
}

void ___ZL13si_getSDBInfoP4__SIPKcP11__SIUserCtxxP6db_objiPP8db_fieldP13CatInfoGottenU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmSC_ESC__block_invoke(uint64_t a1, char *a2, uint64_t a3)
{
  if (isEntitledForAttribute(*(a1 + 56), a2))
  {
    v6 = CFStringCreateWithCString(0, a2, 0x8000100u);
    if (v6)
    {
      v8 = v6;
      v9 = _decodeSDBField(*(*(a1 + 32) + 1192), a3, (a3 + 13), 0, 0, 0, 1, *MEMORY[0x1E695E480], v7);
      if (v9)
      {
        v10 = v9;
        CFDictionaryAddValue(*(a1 + 48), v8, v9);
        CFRelease(v10);
      }

      CFRelease(v8);
    }
  }
}

uint64_t si_getLabelIDs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a1 + 1192);
  if (a5)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  result = !v12;
  if (!v12)
  {
    v22 = result;
    v21 = a6;
    v15 = (*(a9 + 16))(a9, 6, 0, 0);
    if (*(a5 + 12) >= 0x31u)
    {
      v16 = 0;
      v17 = a5 + 48;
      do
      {
        if (*(a1 + 1284) < 73 || (*(v17 + 2) & 4) != 0)
        {
          field_name_for_id_locked = db_get_field_name_for_id_locked(v11, *(v17 + 4));
          if (field_name_for_id_locked)
          {
            v19 = field_name_for_id_locked;
            if (!strncmp("kMDLabel_", field_name_for_id_locked, 9uLL))
            {
              v20 = rindex(v19, 95);
              (*(a9 + 16))(a9, 28, v20 + 1, 0, v16++, v15);
            }
          }
        }

        v17 += *(v17 + 8) + 13;
      }

      while (v17 < a5 + *(a5 + 12));
    }

    (*(a9 + 16))(a9, 7, v15, 0, v21, a10);
    return v22;
  }

  return result;
}

uint64_t si_collectDisplayNameWithExtensionsSynth(uint64_t a1, int a2, uint64_t a3, __CFSet *a4, char **a5)
{
  v5 = 0;
  if (a3)
  {
    v6 = *(a1 + 1192);
    if (v6)
    {
      *v14 = 0;
      v15 = 0;
      if (db_get_field_locked(v6, a3, "_kMDItemDisplayNameWithExtensions", v14, &v15))
      {
        v11 = 1;
      }

      else
      {
        v11 = v15 == 0;
      }

      if (!v11 || (v5 = 0, !db_get_field_locked(v6, a3, "kMDItemDisplayName", v14, &v15)) && v15)
      {
        v5 = 1;
        v12 = _decodeSDBField(v6, *v14, (*v14 + 13), a5, 0, 0, 1, 0, v10);
        CFSetAddValue(a4, v12);
        CFRelease(v12);
      }
    }
  }

  return v5;
}

uint64_t si_getDisplayNameWithExtensionsSynth(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a1 + 1192);
  if (a3)
  {
    v13 = *(a3 + 120);
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    v13 = 0;
    if (!v12)
    {
      return 0;
    }
  }

  if (a5 && a6 && a7)
  {
    v14 = (a7 + 8 * a6);
    result = *v14;
    if (!*v14)
    {
      result = v14[1];
      if (!result)
      {
        return result;
      }
    }

LABEL_17:
    eventParseField(result, *result, a9, a10, v12, v13, 0, a6);
    return 1;
  }

  if (!a5)
  {
    return 0;
  }

  key = 0;
  v18 = 0;
  if (!db_get_field_locked(v12, a5, "_kMDItemDisplayNameWithExtensions", &key, &v18) && v18 || (field_locked = db_get_field_locked(v12, a5, "kMDItemDisplayName", &key, &v18), result = 0, !field_locked) && v18)
  {
    result = key;
    goto LABEL_17;
  }

  return result;
}

BOOL si_dboLastModMatches(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return 0;
  }

  if ((*(a7 + 24) - 11) >= 2)
  {
    if (convert_value_to_type(0xCu, a7))
    {
      return 0;
    }

    else
    {
      v9.n128_f64[0] = *(a5 + 16) / 1000000.0 - *MEMORY[0x1E695E468];
      return db_compare_val(v9);
    }
  }

  else
  {
    v10 = *(a5 + 16) / 1000000.0 - *MEMORY[0x1E695E468];
    return _db_rangeCompare(12, a7, 8uLL, &v10, 0, 0, 0) == 1;
  }
}

BOOL si_itemRecipientEmailAddressesMatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 0;
  if (a5)
  {
    v8 = *(a1 + 1192);
    if (v8)
    {
      v14 = 0;
      v15 = 0;
      if (convert_value_to_type(0xBu, a7))
      {
        return 0;
      }

      if (db_get_field_locked(v8, a5, "kMDItemPrimaryRecipientEmailAddresses", &v15, &v14) || (v7 = 1, do_compare(v11) != 1))
      {
        if (db_get_field_locked(v8, a5, "kMDItemAdditionalRecipientEmailAddresses", &v15, &v14) || (v7 = 1, do_compare(v12) != 1))
        {
          if (!db_get_field_locked(v8, a5, "kMDItemHiddenAdditionalRecipientEmailAddresses", &v15, &v14))
          {
            return do_compare(v13) == 1;
          }

          return 0;
        }
      }
    }
  }

  return v7;
}

uint64_t si_getItemRecipientEmailAddresses(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a1 + 1192);
  if (a5)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    v17 = (*(a9 + 16))(a9, 6, 0, 0, a6);
    v45 = 0;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2000000000;
    v44 = 0;
    v37[0] = MEMORY[0x1E69E9820];
    v18.n128_u64[0] = 0x40000000;
    v37[1] = 0x40000000;
    v38 = ___ZL33si_getItemRecipientEmailAddressesP4__SIPKcP11__SIUserCtxxP6db_objiPP8db_fieldP13CatInfoGottenU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmSC_ESC__block_invoke;
    v39 = &unk_1E8193E90;
    v40 = a9;
    v41 = v43;
    v35 = v17;
    v42 = v17;
    if (a6 && a7)
    {
      v19 = (a7 + 8 * a6);
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      if (*v19)
      {
        v45 = v20 + 13;
        v23 = _decodeSDBField(*(a1 + 1192), v20, (v20 + 13), 0, 0, 0, 1, *MEMORY[0x1E695E480], v18);
        v38(v37, v23);
        CFRelease(v23);
      }

      if (v21)
      {
        v45 = v21 + 13;
        v24 = _decodeSDBField(*(a1 + 1192), v21, (v21 + 13), 0, 0, 0, 1, *MEMORY[0x1E695E480], v18);
        v38(v37, v24);
        CFRelease(v24);
      }

      if (!v22)
      {
        goto LABEL_23;
      }

      v25 = (v22 + 13);
      v45 = v22 + 13;
      v26 = *(a1 + 1192);
      v27 = *MEMORY[0x1E695E480];
      v28 = v22;
    }

    else
    {
      *v36 = 0;
      if (!db_get_field_locked(v10, a5, "kMDItemPrimaryRecipientEmailAddresses", v36, &v45))
      {
        v30 = _decodeSDBField(*(a1 + 1192), *v36, (*v36 + 13), 0, 0, 0, 1, *MEMORY[0x1E695E480], v29);
        v38(v37, v30);
        CFRelease(v30);
      }

      if (!db_get_field_locked(v10, a5, "kMDItemAdditionalRecipientEmailAddresses", v36, &v45))
      {
        v32 = _decodeSDBField(*(a1 + 1192), *v36, (*v36 + 13), 0, 0, 0, 1, *MEMORY[0x1E695E480], v31);
        v38(v37, v32);
        CFRelease(v32);
      }

      if (db_get_field_locked(v10, a5, "kMDItemHiddenAdditionalRecipientEmailAddresses", v36, &v45))
      {
        goto LABEL_23;
      }

      v26 = *(a1 + 1192);
      v28 = *v36;
      v27 = *MEMORY[0x1E695E480];
      v25 = (*v36 + 13);
    }

    v33 = _decodeSDBField(v26, v28, v25, 0, 0, 0, 1, v27, v18);
    v38(v37, v33);
    CFRelease(v33);
LABEL_23:
    (*(a9 + 16))(a9, 7, v35, 0, a6, a10);
    _Block_object_dispose(v43, 8);
  }

  return v12;
}

uint64_t ___ZL33si_getItemRecipientEmailAddressesP4__SIPKcP11__SIUserCtxxP6db_objiPP8db_fieldP13CatInfoGottenU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmSC_ESC__block_invoke(uint64_t a1, const __CFArray *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    for (i = 0; ; ++i)
    {
      result = CFArrayGetCount(a2);
      if (result <= i)
      {
        break;
      }

      v7 = *(a1 + 32);
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      ++*(*(*(a1 + 40) + 8) + 24);
      (*(v7 + 16))(v7, 34, ValueAtIndex, 0);
    }
  }

  else
  {
    v9 = CFStringGetTypeID();
    result = CFGetTypeID(a2);
    if (v9 == result)
    {
      v10 = *(a1 + 32);
      ++*(*(*(a1 + 40) + 8) + 24);
      v11 = *(v10 + 16);

      return v11();
    }
  }

  return result;
}

BOOL si_getIndexGroupId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a5)
  {
    v12 = *(a5 + 32);
    v13 = si_indexForDocId(a1, v12);
    v14 = _CIGetGroupForDocId(v13, v12);
    (*(a9 + 16))(a9, 18, v14, 0, a6, a10);
  }

  return a5 != 0;
}

uint64_t si_getCachedTextContent(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v12 = result;
    bzero(v31, 0x400uLL);
    v13 = si_cache_relative_path_for_oid(a4, "txt", v31, *(v12 + 2072));
    if (v13)
    {
      v15 = openat(*(v12 + 32), v13, 0);
      if (v15 != -1)
      {
        v16 = v15;
        v17 = lseek(v15, 0, 2);
        if (v17 >= 1)
        {
          v18 = v17 >= 0x20000 ? 0x20000 : v17;
          v19 = mmap(0, v18, 1, 1025, v16, 0);
          if (v19 != -1)
          {
            v20 = v19;
            (*(a9 + 16))(a9, 33, v19, v18, a6, a10);
            munmap(v20, v18);
            close(v16);
            return 1;
          }
        }

        close(v16);
      }
    }

    if (!*(v12 + 1296))
    {
      return 0;
    }

    MEMORY[0x1EEE9AC00](v14);
    bzero(v29, 0x3E9uLL);
    v30 = 0;
    if (doc_store_get_document(*(v12 + 1296), a4, v29, &v30))
    {
      return 0;
    }

    v21 = v30;
    if (!v30)
    {
      return 0;
    }

    if ((v29[v30 - 1] & 0x80000000) == 0)
    {
LABEL_17:
      v29[v21] = 0;
      (*(a9 + 16))(a9, 28, v29, 0, a6, a10);
      return 1;
    }

    v22 = v29[v30 - 1];
    if (v22 - 194 > 0x32)
    {
      if (v22 > 0xBF)
      {
        goto LABEL_17;
      }

      v23 = v29[v30 - 2];
      if ((v23 - 224) > 0x14)
      {
        if (v23 > -65)
        {
          goto LABEL_17;
        }

        v28 = v29[v30 - 3];
        if ((v28 - 240) > 4 || ((byte_1C2BFF1EA[v23 >> 4] >> (v28 & 7)) & 1) == 0)
        {
          goto LABEL_17;
        }

        v30 -= 3;
        v21 -= 3;
LABEL_22:
        if (v21)
        {
          goto LABEL_17;
        }

        return 0;
      }

      v24 = v23 > 0xEF;
      v25 = v23 & 7;
      v26 = &a00000000000000[v23 & 0xF];
      v27 = v22 >> 5;
      if (v24)
      {
        LOBYTE(v27) = v25;
        v26 = &byte_1C2BFF1EA[v29[v30 - 1] >> 4];
      }

      if (((*v26 >> v27) & 1) == 0)
      {
        goto LABEL_17;
      }

      v21 = v30 - 2;
    }

    else
    {
      v21 = v30 - 1;
    }

    v30 = v21;
    goto LABEL_22;
  }

  return result;
}

uint64_t si_getHealthCheckDate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!*(a1 + 1192))
  {
    return 0;
  }

  result = SICopyProperty(a1, @"kStorePropertyHealthCheckCompleteTime");
  if (result)
  {
    v12 = result;
    (*(a9 + 16))(a9, 34, result, 0, a6, a10);
    CFRelease(v12);
    return 1;
  }

  return result;
}

BOOL si_fsGroupIdMatch(int a1, int a2, int a3, int a4, int a5, CatInfoGotten *this, uint64_t a7)
{
  if (this)
  {
    CatInfoGotten::fastPath(this);
  }

  convert_value_to_type(5u, a7);
  return db_compare_val(v8);
}

uint64_t si_fsGroupIdAttr(int a1, int a2, int a3, int a4, int a5, int a6, int a7, CatInfoGotten *this)
{
  if (this)
  {
    CatInfoGotten::fastPath(this);
  }

  return 0;
}

uint64_t si_dboTopMatchingAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = 0u;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZL26si_dboTopMatchingAttributeP4__SIPKcP11__SIUserCtxxP6db_objiPP8db_fieldP13CatInfoGottenU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmSC_ESC__block_invoke;
  block[3] = &__block_descriptor_tmp_5183;
  v29 = 0;
  v30 = constStrDictionaryCopyDescriptionCallBack;
  v31 = constStrDictionaryEqualCallBack;
  v32 = constStrDictionaryHashCallBack;
  if (si_dboTopMatchingAttribute(__SI *,char const*,__SIUserCtx *,long long,db_obj *,int,db_field **,CatInfoGotten *,void *({block_pointer})(SI_OBJECT_EVENT,si_event_data_t,unsigned long,void *),void *)::once == -1)
  {
    if (!a5)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&si_dboTopMatchingAttribute(__SI *,char const*,__SIUserCtx *,long long,db_obj *,int,db_field **,CatInfoGotten *,void *({block_pointer})(SI_OBJECT_EVENT,si_event_data_t,unsigned long,void *),void *)::once, block);
    if (!a5)
    {
      return 0;
    }
  }

  if (*(a5 + 12) >= 0x31u)
  {
    v14 = 0;
    v15 = (a5 + 48);
    v16 = 0.0;
    do
    {
      if (*(v15 + 12) && (v15[1] & 0x100) == 0)
      {
        field_name_for_id_locked = db_get_field_name_for_id_locked(*(a1 + 1192), *(v15 + 1));
        v18 = *(v15 + 1) == *(a1 + 2052) ? "kMDItemDisplayName" : field_name_for_id_locked;
        if (v18)
        {
          Value = CFDictionaryGetValue(si_dboTopMatchingAttribute(__SI *,char const*,__SIUserCtx *,long long,db_obj *,int,db_field **,CatInfoGotten *,void *({block_pointer})(SI_OBJECT_EVENT,si_event_data_t,unsigned long,void *),void *)::__attribute_importance_dictionary, v18);
          if (Value)
          {
            valuePtr = 0.0;
            if (CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr))
            {
              if (valuePtr > v16 || v14 == 0)
              {
                v16 = valuePtr;
                v14 = v15;
              }
            }
          }
        }
      }

      v15 = (v15 + *(v15 + 2) + 13);
    }

    while (v15 < a5 + *(a5 + 12));
    if (v14)
    {
      v21 = (*(a9 + 16))(a9, 12, 0, 0, a6, a10, a7, a8);
      addFieldName(a9, v21, *(a1 + 1192), *(v14 + 1));
      if (a3)
      {
        v22 = *(a3 + 120);
      }

      else
      {
        v22 = 0;
      }

      v23 = 1;
      eventParseField(v14, *v14, a9, v21, *(a1 + 1192), v22, 0, 1);
      (*(a9 + 16))(a9, 13, v21, 0, a6, a10);
      return v23;
    }
  }

  if ((*(a5 + 41) & 0x80) == 0)
  {
    return 0;
  }

  v24 = (*(a9 + 16))(a9, 12, 0, 0, a6, a10, a7, a8);
  if (!(*(a9 + 16))(a9, 30, 0x40000000, 0, 0, v24))
  {
    (*(a9 + 16))(a9, 31, "kMDItemTextContent", 0x40000000, 0, v24);
  }

  (*(a9 + 16))(a9, 13, v24, 0, a6, a10);
  return 1;
}

void ___ZL26si_dboTopMatchingAttributeP4__SIPKcP11__SIUserCtxxP6db_objiPP8db_fieldP13CatInfoGottenU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmSC_ESC__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = 41;
  si_dboTopMatchingAttribute(__SI *,char const*,__SIUserCtx *,long long,db_obj *,int,db_field **,CatInfoGotten *,void *({block_pointer})(SI_OBJECT_EVENT,si_event_data_t,unsigned long,void *),void *)::__attribute_importance_dictionary = CFDictionaryCreateMutable(0, 41, (a1 + 32), MEMORY[0x1E695E9E8]);
  v2 = &unk_1E8193C00;
  do
  {
    v3 = *(v2 - 1);
    CStringPtr = CFStringGetCStringPtr(v3, 0);
    memset(v6, 0, sizeof(v6));
    if (CStringPtr || (CStringPtr = v6, CFStringGetCString(v3, v6, 256, 0x8000100u)))
    {
      if (*CStringPtr)
      {
        v5 = CFNumberCreate(0, kCFNumberFloatType, v2);
        CFDictionarySetValue(si_dboTopMatchingAttribute(__SI *,char const*,__SIUserCtx *,long long,db_obj *,int,db_field **,CatInfoGotten *,void *({block_pointer})(SI_OBJECT_EVENT,si_event_data_t,unsigned long,void *),void *)::__attribute_importance_dictionary, CStringPtr, v5);
        CFRelease(v5);
      }
    }

    v2 += 2;
    --v1;
  }

  while (v1);
}

uint64_t addFieldName(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v8 = a4 | 0x40000000;
  result = (*(a1 + 16))(a1, 30, 0, v8, 0, a2);
  if (!result)
  {
    field_name_for_id_locked = db_get_field_name_for_id_locked(a3, a4);
    if (field_name_for_id_locked)
    {
      v11 = field_name_for_id_locked;
    }

    else
    {
      v11 = "";
    }

    v12 = *(a1 + 16);

    return v12(a1, 31, v11, v8, 0, a2);
  }

  return result;
}

uint64_t constStrDictionaryHashCallBack(const char *a1)
{
  v2 = -1759636613;
  v3 = strlen(a1);
  if (v3 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 + 3;
  }

  v5 = &a1[v4 & 0xFFFFFFFC];
  if ((v3 + 3) >= 7)
  {
    v8 = -(v4 >> 2);
    v9 = -1789642873;
    v10 = 718793509;
    do
    {
      v9 = 5 * v9 + 2071795100;
      v10 = 5 * v10 + 1808688022;
      HIDWORD(v11) = v9 * *&v5[4 * v8];
      LODWORD(v11) = HIDWORD(v11);
      v12 = (v11 >> 21) * v10;
      HIDWORD(v11) = v2;
      LODWORD(v11) = v2;
      v2 = v12 ^ (5 * (v11 >> 19) + 1390208809);
    }

    while (!__CFADD__(v8++, 1));
    v7 = 5 * v9 + 2071795100;
    v6 = 5 * v10 + 1808688022;
  }

  else
  {
    v6 = 1107688271;
    v7 = 1713515327;
  }

  v14 = 0;
  if ((v3 & 3u) > 1)
  {
    if ((v3 & 3) != 2)
    {
      v14 = *(v5 + 2) << 16;
    }

    v14 |= *(v5 + 1) << 8;
  }

  else if ((v3 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v15) = (v14 ^ *v5) * v7;
  LODWORD(v15) = HIDWORD(v15);
  v16 = (v15 >> 21) * v6;
  HIDWORD(v15) = v2;
  LODWORD(v15) = v2;
  v2 = v16 ^ (5 * (v15 >> 19) + 1390208809);
LABEL_17:
  v17 = -1028477387 * ((-2048144789 * (v2 ^ v3)) ^ ((-2048144789 * (v2 ^ v3)) >> 13));
  return v17 ^ HIWORD(v17);
}

uint64_t si_getIndexCookie(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = si_storecookieRef(a1);
  v12 = CFUUIDCreateString(*MEMORY[0x1E695E480], v11);
  (*(a9 + 16))(a9, 34, v12, 0, a6, a10);
  CFRelease(v12);
  return 1;
}

uint64_t si_getFPItemIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 1192) || (*(a1 + 2072) & 1) != 0)
  {
    return 0;
  }

  result = 0;
  if (a5 && a4 && *(a1 + 1416))
  {
    makeThreadId();
    if (a4 == 2)
    {
      (*(a9 + 16))(a9, 28, "NSFileProviderRootContainerItemIdentifier", 0, a6, a10);
      return 1;
    }

    bzero(v28, 0x400uLL);
    v26 = 0;
    v27 = 0;
    if (db_get_field_locked(*(a1 + 1192), a5, "_kMDItemFileName", &v26, &v27) || *v26 != 11 || (v26[1] & 0x10) != 0)
    {
      v17 = 0;
    }

    else
    {
      v15 = *(a1 + 1416);
      if (v15 && (*(v15 + 160) & 1) == 0 && (v16 = *(v15 + 184)) != 0)
      {
        v17 = v28;
        v18 = v16();
        if (v18)
        {
          v17 = 0;
        }

        if (v18 != 45)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v17 = 0;
        v28[0] = 0;
      }
    }

    v19 = *(a1 + 1416);
    if (!*(v19 + 240))
    {
      v20 = (*(v19 + 40))(v19, 2, v28, 0, 0, 0, 0, -1);
      if (v20)
      {
        v21 = strlen(v20);
        v22 = *(a1 + 1416);
        if (!*(v22 + 240))
        {
          v23 = (*(v22 + 40))(v22, a4, v28, 0, 0, 0, 0, -1);
          if (v23)
          {
            v24 = v23;
            if (strlen(v23) > v21)
            {
              v17 = &v24[v21 - 1];
              do
              {
                v25 = *++v17;
              }

              while (v25 == 47);
LABEL_23:
              (*(a9 + 16))(a9, 28, v17, 0, a6, a10);
              return 1;
            }
          }
        }
      }
    }

LABEL_22:
    if (!v17)
    {
      return 0;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t si_indexRankingDateSecondsMatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 0;
  if (a5 && *(a1 + 1192))
  {
    if (convert_value_to_type(6u, a7))
    {
      return 0;
    }

    v12 = *(a5 + 32);
    result = si_indexForDocId(a1, v12);
    if (result)
    {
      v17 = 0;
      if (a6)
      {
        v13 = (*(a6 + 8) & 4) == 0;
      }

      else
      {
        v13 = 1;
      }

      _CIGetDocIDInfo(result, v12, 0, &v17, 0, 0, v13);
      if (!v17)
      {
        return 0;
      }

      v14 = *(a7 + 216);
      v15 = *(a7 + 24);
      if (v15 == 1)
      {
        return v17 == v14;
      }

      if (v15 == 2 && v17 == v14)
      {
        return 1;
      }

      if ((v15 - 5) <= 1 && v17 != v14)
      {
        return 1;
      }

      v16 = v17 - v14;
      if (v15 == 7 && v16 < 0)
      {
        return 1;
      }

      if (v15 == 3 && v16 < 1)
      {
        return 1;
      }

      if (v15 == 8 && v16 > 0)
      {
        return 1;
      }

      result = 0;
      if (v15 == 4 && (v16 & 0x80000000) == 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL si_getIndexRankingDateSeconds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a5)
  {
    return 0;
  }

  v12 = *(a5 + 32);
  v13 = si_indexForDocId(a1, v12);
  if (!v13)
  {
    return 0;
  }

  v17 = 0;
  if (a8)
  {
    v14 = (*(a8 + 8) & 4) == 0;
  }

  else
  {
    v14 = 1;
  }

  _CIGetDocIDInfo(v13, v12, 0, &v17, 0, 0, v14);
  v15 = v17 != 0;
  if (v17)
  {
    (*(a9 + 16))(a9, 22, v17, 0, a6, a10);
  }

  return v15;
}

uint64_t si_getIndexRankingContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a5)
  {
    return 0;
  }

  v12 = *(a5 + 32);
  v13 = si_indexForDocId(a1, v12);
  if (!v13)
  {
    return 0;
  }

  v17 = 0;
  if (a8)
  {
    v14 = (*(a8 + 8) & 4) == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = _CIGetDocIDInfo(v13, v12, 0, 0, 0, &v17, v14);
  if (v15)
  {
    (*(a9 + 16))(a9, 22, v17, 0, a6, a10);
  }

  return v15;
}

uint64_t si_dboDisplayNameMatchingAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a5)
  {
    v9 = *(a5 + 12);
    if (v9 >= 0x31)
    {
      v10 = a5 + v9;
      v11 = a5 + 48;
      do
      {
        if (*(v11 + 12))
        {
          if ((*(v11 + 2) & 0x100) == 0)
          {
            v12 = *(v11 + 4);
            if (v12 == *(a1 + 2016) || v12 == *(a1 + 2052))
            {
              break;
            }
          }
        }

        v11 += *(v11 + 8) + 13;
      }

      while (v11 < v10);
    }
  }

  (*(a9 + 16))();
  return 1;
}

uint64_t si_getIndexRankingScore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a5)
  {
    return 0;
  }

  v12 = *(a5 + 32);
  v13 = si_indexForDocId(a1, v12);
  if (!v13)
  {
    return 0;
  }

  v17 = 0;
  if (a8)
  {
    v14 = (*(a8 + 8) & 4) == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = _CIGetDocIDInfo(v13, v12, 0, 0, &v17, 0, v14);
  if (v15)
  {
    (*(a9 + 16))(a9, 26, v17, 0, a6, a10);
  }

  return v15;
}

BOOL si_getIndexRankingDate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a5)
  {
    return 0;
  }

  v12 = *(a5 + 32);
  v13 = si_indexForDocId(a1, v12);
  if (!v13)
  {
    return 0;
  }

  v18 = 0;
  if (a8)
  {
    v14 = (*(a8 + 8) & 4) == 0;
  }

  else
  {
    v14 = 1;
  }

  _CIGetDocIDInfo(v13, v12, 0, &v18, 0, 0, v14);
  v15 = v18 != 0;
  if (v18)
  {
    v16 = CFDateCreate(0, v18);
    (*(a9 + 16))(a9, 34, v16, 0, a6, a10);
    CFRelease(v16);
  }

  return v15;
}

uint64_t si_getCachedCachedIconPath(uint64_t a1, int a2, int a3, unint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  if (a5 && (db_get_field_locked(*(a1 + 1192), a5, "_kMDItemThumbnailDataExists", &v17, &v18) || !*v18))
  {
    return 0;
  }

  bzero(__dst, 0x800uLL);
  if (fcntl(*(a1 + 32), 50, __dst) < 0)
  {
    return 0;
  }

  if (!__dst[0])
  {
    return 0;
  }

  v14 = strlcat(__dst, "/", 0x400uLL);
  if (v14 > 0x3FF)
  {
    return 0;
  }

  si_cache_relative_path_for_oid(a4, "img", &__dst[v14], *(a1 + 2072));
  memset(&v16, 0, sizeof(v16));
  if (!a5)
  {
    if (stat(__dst, &v16))
    {
      return 0;
    }
  }

  (*(a9 + 16))(a9, 28, __dst, 0, a6, a10);
  return 1;
}

BOOL si_getAccumulatedSizes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 1192);
  if (!v10)
  {
    return v10 != 0;
  }

  v12 = *(a1 + 2072);
  v13 = *(a9 + 16);
  v31 = a6;
  v32 = a10;
  if ((v12 & 1) == 0)
  {
    v21 = v13(a9, 6, 0, 0);
    pthread_mutex_lock((a1 + 6976));
    MEMORY[0x1EEE9AC00](v22);
    v23 = 0;
    v24 = 0;
    memset(&v28[1872], 0, 176);
    do
    {
      v25 = *(a1 + 7048 + v23);
      v24 |= v25 < 0;
      *&v28[v23 + 1880] = v25 & ~(v25 >> 63);
      v23 += 8;
    }

    while (v23 != 168);
    pthread_mutex_unlock((a1 + 6976));
    for (i = 0; i != 21; ++i)
    {
      (*(a9 + 16))(a9, 23, *&v28[8 * i + 1880], 0, i, v21);
    }

    (*(a9 + 16))(a9, 7, v21, 0, v31, v32);
    if ((v24 & 1) == 0)
    {
      return v10 != 0;
    }

LABEL_19:
    _SIRecomputeSizesWithCallback(a1, 0, &__block_literal_global_9005);
    return v10 != 0;
  }

  v30 = v10;
  v14 = v13(a9, 10, 0, 0);
  pthread_mutex_lock((a1 + 6976));
  v29 = &v29;
  MEMORY[0x1EEE9AC00](v15);
  bzero(v28, 0x800uLL);
  v16 = 0;
  v17 = 0;
  do
  {
    if ((*&v28[v16 + 8] & 0x8000000000000000) != 0)
    {
      v18 = 0;
      v17 = 1;
    }

    else
    {
      v18 = *(a1 + 7048 + v16);
    }

    *&v28[v16 + 8] = v18;
    v16 += 8;
  }

  while (v16 != 2040);
  pthread_mutex_unlock((a1 + 6976));
  for (j = 1; j != 256; ++j)
  {
    v20 = *&v28[8 * j];
    if (v20)
    {
      *__str = 0u;
      v34 = 0u;
      snprintf(__str, 0x20uLL, "%d", j);
      (*(a9 + 16))(a9, 14, __str, 0, j - 1, v14);
      (*(a9 + 16))(a9, 23, v20, 0, j - 1, v14);
    }
  }

  (*(a9 + 16))(a9, 11, v14, 0, v31, v32);
  v10 = v30;
  if (v17)
  {
    goto LABEL_19;
  }

  return v10 != 0;
}

uint64_t si_dboMatchingAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = a6;
  v13 = (*(a9 + 16))(a9, 6, 0, 0, a6, a10, a7, a8);
  if (a5)
  {
    if (*(a5 + 12) >= 0x31u)
    {
      v14 = 0;
      v15 = a5 + 48;
      while (!*(v15 + 12) || (*(v15 + 2) & 0x100) != 0)
      {
LABEL_15:
        v15 += *(v15 + 8) + 13;
        if (v15 >= a5 + *(a5 + 12))
        {
          goto LABEL_16;
        }
      }

      v16 = *(v15 + 4);
      if (v16 == *(a1 + 2052))
      {
        if ((v14 & 1) == 0)
        {
          v17 = *(a1 + 1192);
          v16 = *(a1 + 2016);
LABEL_11:
          addFieldName(a9, v13, v17, v16);
        }
      }

      else if (((v16 == *(a1 + 2016)) & v14) == 0)
      {
        v17 = *(a1 + 1192);
        goto LABEL_11;
      }

      v18 = *(v15 + 4);
      if (v18 == *(a1 + 2052) || v18 != *(a1 + 2016))
      {
        v14 = 1;
      }

      goto LABEL_15;
    }

LABEL_16:
    if ((*(a5 + 41) & 0x80) != 0 && (*(a9 + 16))(a9, 30, 0x40000000, 0, 0, v13))
    {
      (*(a9 + 16))(a9, 31, "kMDItemTextContent", 0x40000000, 0, v13);
    }
  }

  (*(a9 + 16))(a9, 7, v13, 0, v12, a10);
  return 1;
}

uint64_t si_getCachedCachedIcon(uint64_t a1, int a2, int a3, unint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = 0;
  if (a5 && (db_get_field_locked(*(a1 + 1192), a5, "_kMDItemThumbnailDataExists", &v22, &v23) || !*v23))
  {
    return 0;
  }

  bzero(__str, 0x400uLL);
  v13 = si_cache_relative_path_for_oid(a4, "img", __str, *(a1 + 2072));
  if (!v13)
  {
    return 0;
  }

  v14 = openat(*(a1 + 32), v13, 0);
  if (v14 == -1)
  {
    return 0;
  }

  v15 = v14;
  v16 = lseek(v14, 0, 2);
  if (v16 >= 0x100000 || (v17 = v16, v18 = mmap(0, v16, 1, 1025, v15, 0), v18 == -1))
  {
    v20 = 0;
  }

  else
  {
    v19 = v18;
    (*(a9 + 16))(a9, 33, v18, v17, a6, a10);
    munmap(v19, v17);
    v20 = 1;
  }

  close(v15);
  return v20;
}

BOOL si_getIndexID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a5)
  {
    (*(a9 + 16))(a9, 19, *(a5 + 32), 0, a6, a10, a7, a8);
  }

  return a5 != 0;
}

uint64_t si_getFPIsTrashed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!*(a1 + 1192) || (*(a1 + 2072) & 1) != 0)
  {
    return 0;
  }

  result = 0;
  if (a4)
  {
    if (*(a1 + 1416))
    {
      (*(a9 + 16))(a9, 20, 0, 0, a6, a10, a7, a8);
      return 1;
    }
  }

  return result;
}

uint64_t si_getPSIDPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 1192) || (*(a1 + 2072) & 1) != 0)
  {
    return 0;
  }

  result = 0;
  if (a4 && *(a1 + 1416))
  {
    makeThreadId();
    bzero(v15, 0x400uLL);
    v14 = *(a1 + 1416);
    if (*(v14 + 240))
    {
      return 0;
    }

    result = (*(v14 + 40))(v14, a4, v15, 0, 0, 0, 0, -1);
    if (result)
    {
      (*(a9 + 16))(a9, 28, result, 0, a6, a10);
      return 1;
    }
  }

  return result;
}

BOOL si_getOIDParent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a5)
  {
    (*(a9 + 16))(a9, 23, *(a5 + 24), 0, a6, a10, a7, a8);
  }

  return a5 != 0;
}

BOOL si_getOIDPath(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  MEMORY[0x1EEE9AC00](a1);
  v15 = v14;
  v28[512] = *MEMORY[0x1E69E9840];
  v16 = *(v14 + 1192);
  if (!v16)
  {
    return 0;
  }

  if (!*(v15 + 6624))
  {
    return 0;
  }

  v17 = v13;
  v18 = v12;
  Dbo = v12;
  if (!v12)
  {
    Dbo = iterateToGetDbo(v16, v11);
    if (!Dbo)
    {
      return 0;
    }
  }

  if (Dbo[3])
  {
    bzero(v28, 0x1000uLL);
    makeThreadId();
    Path = directoryStoreGetPath(*(v15 + 6624), Dbo[3], v28);
    v21 = Path != 0;
    if (Path)
    {
      v22 = Path;
      Mutable = CFStringCreateMutable(0, 0);
      if (v22 >= 1)
      {
        v24 = v22 + 1;
        v25 = &v28[v22 - 1];
        do
        {
          v26 = *v25--;
          CFStringAppendFormat(Mutable, 0, @"/%lld", v26);
          --v24;
        }

        while (v24 > 1);
      }

      CFStringAppendFormat(Mutable, 0, @"/%lld", Dbo[3]);
      CFStringAppendFormat(Mutable, 0, @"/%lld", *Dbo);
      (*(a10 + 16))(a10, 34, Mutable, 0, v17, a11);
      CFRelease(Mutable);
    }
  }

  else
  {
    v21 = 0;
  }

  if (Dbo != v18)
  {
    free(Dbo);
  }

  return v21;
}

uint64_t si_getFilesystemField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a8 && (*(a1 + 2072) & 1) == 0)
    {
      bzero(v14, 0x470uLL);
      v14[1] = a1;
      v15 = a3;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = (*(a1 + 6584) >> 23) & 1;
LABEL_7:
      v19 = v11;
      v13 = &unk_1F42826E0;
      v20 = a4;
      CatInfoGotten_OID::~CatInfoGotten_OID(&v13);
    }
  }

  else if (!a8)
  {
    bzero(v14, 0x470uLL);
    v15 = a3;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    LOBYTE(v11) = 1;
    goto LABEL_7;
  }

  return 0;
}

BOOL si_dboIdMatches(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v10 = *a7;
  if (!strcmp(*a7, "_kMDItemIndexID"))
  {
    if (!a5)
    {
      return 0;
    }

    v11 = a5[4];
  }

  else
  {
    if (strcmp(v10, "_kMDItemOIDParent"))
    {
      if (a4)
      {
        v14 = a4;
        goto LABEL_12;
      }

      if (a5)
      {
        v11 = *a5;
        goto LABEL_11;
      }

      return 0;
    }

    if (!a5)
    {
      return 0;
    }

    v11 = a5[3];
  }

LABEL_11:
  v14 = v11;
LABEL_12:
  if ((*(a7 + 24) - 11) < 2)
  {
    return _db_rangeCompare(7, a7, 4uLL, &v14, 0, 0, 0) == 1;
  }

  if (convert_value_to_type(7u, a7))
  {
    return 0;
  }

  return db_compare_val(v13);
}

void _log_fault_for_malloc_failure()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v0 = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v0, 2u);
  }
}

CFAllocatorRef __query_zone_init_block_invoke()
{
  queryZone = malloc_create_zone(0x10000uLL, 0);
  malloc_set_zone_name(queryZone, "SIQueryMallocZone");
  context.version = 0;
  context.info = queryZone;
  memset(&context.retain, 0, 24);
  context.allocate = zone_allocate;
  context.reallocate = zone_reallocate;
  context.deallocate = zone_deallocate;
  context.preferredSize = zone_preferredSize;
  result = CFAllocatorCreate(*MEMORY[0x1E695E480], &context);
  kCIQueryZoneAllocator = result;
  return result;
}

float automaton_state_score(uint64_t a1, int a2)
{
  if (!a1)
  {
    return INFINITY;
  }

  v2 = a1 & -a1;
  if (!v2)
  {
    return INFINITY;
  }

  result = INFINITY;
  do
  {
    v4 = __clz(__rbit64(v2));
    if (a2 + ((103 * v4) >> 9))
    {
      v5 = (v4 - 5 * ((103 * v4) >> 9)) / (a2 + ((103 * v4) >> 9));
      if (v5 < result)
      {
        v6 = v5;
        result = v6;
      }
    }

    v7 = (-2 * v2) & a1;
    if (!v7)
    {
      break;
    }

    v2 = v7 & -v7;
  }

  while (v2);
  return result;
}

void la_init(uint64_t a1, char a2)
{
  *(malloc_type_malloc(0x48uLL, 0x10300400E37CE8CuLL) + 7) = a1;
  *(malloc_type_malloc(0x10uLL, 0x10200405F07FB98uLL) + 8) = 1;
  operator new();
}

void sub_1C29D824C(_Unwind_Exception *a1)
{
  v4 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(v2);
  MEMORY[0x1C691FEF0](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t ***std::__hash_table<std::__hash_value_type<unsigned char,unsigned int>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,unsigned int>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,unsigned int>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,unsigned int>>>::find<unsigned char>(void *a1, unsigned __int8 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 16) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void la_free(uint64_t **a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(v2);
    MEMORY[0x1C691FEF0](v3, 0x10A0C408EF24B1CLL);
  }

  v4 = *a1;
  v5 = **a1;
  if (v5)
  {
    v6 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(v5);
    MEMORY[0x1C691FEF0](v6, 0x10A0C408EF24B1CLL);
  }

  free(v4);
  v7 = 0;
  do
  {
    lt_trie_free(a1[5][3 * v7++]);
  }

  while (v7 <= *(a1 + 4));
  free(a1[1]);
  free(a1[5]);
  free(a1[8]);

  free(a1);
}

uint64_t la_new_state_from_state_with_char_at_index(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v4 = a3;
  v7 = 2 * *(a1 + 32);
  if (v7 < *(a1 + 16) - a3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = *(a1 + 16) - a3;
  }

  v9 = std::__hash_table<std::__hash_value_type<unsigned char,unsigned int>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,unsigned int>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,unsigned int>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,unsigned int>>>::find<unsigned char>(*(a1 + 24), *(*(a1 + 8) + a4));
  if (v9)
  {
    v10 = ((*(v9 + 5) >> v4) & ~(-1 << v8)) | (v8 << 8);
  }

  else
  {
    v10 = v8 << 8;
  }

  v13 = 0;
  v12 = 0;
  if (tt_transition_for_state(**a1, a2, v10, &v12, &v13))
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

CFTimeZoneRef __si_calendar_retain_block_invoke()
{
  si_calendar_retain_s_local_tz = CFTimeZoneCopySystem();
  result = CFTimeZoneCreateWithTimeIntervalFromGMT(*MEMORY[0x1E695E480], 0.0);
  si_calendar_retain_s_gmt_tz = result;
  return result;
}

CFCalendarRef ___expandFunctions_block_invoke()
{
  result = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
  _expandFunctions_calendar = result;
  return result;
}

void __si_querypipe_addresults_block_invoke_2(uint64_t a1, const void *a2, const void *a3)
{
  if (*(*(*(a1 + 32) + 8) + 24) != *(*(*(a1 + 40) + 8) + 24))
  {
    MutableCopy = _MDStoreOIDArrayCreateMutableCopy();
    _MDStoreOIDArrayGetVectorCount();
    _MDStoreOIDArrayApplyBlock();
    Vector = _MDStoreOIDArrayGetVector();
    VectorCount = _MDStoreOIDArrayGetVectorCount();
    if (VectorCount)
    {
      for (i = 0; i < VectorCount; i += v11 + 1)
      {
        v10 = (Vector + 8 * i);
        v11 = *v10;
        v10[1] = 3213;
      }
    }

    v12 = _MDPlistBytesCreateMutableCopy();
    _si_querypipe_addoids(*(a1 + 56), 2, MutableCopy, 0, v12, 0, *(a1 + 64));
  }

  _MDStoreOIDArrayGetVectorCount();
  _MDStoreOIDArrayApplyBlock();
  _si_querypipe_addoids(*(a1 + 56), *(a1 + 72), a2, *(*(*(a1 + 32) + 8) + 24), a3, 0, *(a1 + 64));
}

uint64_t PartialQueryResults::ownOidArray(PartialQueryResults *this)
{
  if (*(this + 443))
  {
    v3 = __si_assert_copy_extra_332();
    v11 = v3;
    v12 = "";
    if (v3)
    {
      v12 = v3;
    }

    __message_assert_336(v3, v4, v5, v6, v7, v8, v9, v10, "SISearchCtx.h", 1409, "ffillPtr[0] == 0", v12);
    free(v11);
    if (__valid_fs(-1))
    {
      v13 = 2989;
    }

    else
    {
      v13 = 3072;
    }

    *v13 = -559038737;
    abort();
  }

  v1 = *(this + 58);
  *(this + 58) = 0;
  _MDStoreOIDArrayAppendMultipleOIDArrays();
  return v1;
}

uint64_t PartialQueryResults::ownFields(PartialQueryResults *this)
{
  v1 = *(this + 186);
  *(this + 186) = 0;
  v2 = *(this + 884);
  if (v1)
  {
LABEL_8:
    _MDPlistBytesAppendMultiplePlistBytes();
  }

  else
  {
    if (v2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    v4 = (this + 1496);
    v5 = 1;
    while (v3 != v5)
    {
      v1 = *v4;
      *v4++ = 0;
      ++v5;
      if (v1)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  return v1;
}

uint64_t __si_querypipe_addresults_block_invoke_5(uint64_t result, uint64_t a2, int a3)
{
  if (!a3 || !*(result + 48))
  {
    v3 = *(result + 40);
    v4 = *(*(result + 32) + 8);
    v5 = *(v4 + 24);
    *(v4 + 24) = v5 + 1;
    *(v3 + 8 * v5) = a2;
  }

  return result;
}

uint64_t _oidCmp(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t __si_querypipe_addresults_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 32);
  v7 = (a5 - 1);
  pthread_rwlock_rdlock((v6 + 16));
  if (v7)
  {
    v8 = (a4 + 8);
    if (*(v6 + 384))
    {
      bzero(v8, 8 * v7);
    }

    else
    {
      for (i = 0; i != v7; ++i)
      {
        if (*(v6 + 384))
        {
          goto LABEL_13;
        }

        v10 = *(v8 + i);
        v11 = *(v6 + 224);
        if (v11)
        {
          if ((*(v6 + 216) ^ v10) >> (-4 * v11))
          {
            goto LABEL_13;
          }
        }

        v12 = *(v6 + 256 + 8 * ((v10 >> (60 - 4 * v11)) & 0xF));
        if (v12)
        {
          v13 = v11 + 2;
          do
          {
            v12 = *((v12 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v10 >> (64 - 4 * v13++)) & 0xF));
          }

          while ((v12 & 1) != 0);
        }

        if (!v12 || ((*(*v12 + 16))(v12) & 1) == 0)
        {
LABEL_13:
          *(v8 + i) = 0;
        }
      }
    }
  }

  return pthread_rwlock_unlock((v6 + 16));
}

uint64_t __si_querypipe_addresults_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 32);
  v7 = (a5 - 1);
  pthread_rwlock_rdlock((v6 + 16));
  if (v7 && (*(v6 + 384) & 1) == 0)
  {
    v8 = 0;
    v9 = a4 + 8;
    do
    {
      if ((*(v6 + 384) & 1) == 0)
      {
        v10 = *(v9 + 8 * v8);
        v11 = *(v6 + 224);
        if (!v11 || !((*(v6 + 216) ^ v10) >> (-4 * v11)))
        {
          v12 = *(v6 + 256 + 8 * ((v10 >> (60 - 4 * v11)) & 0xF));
          if (v12)
          {
            v13 = v11 + 2;
            do
            {
              v12 = *((v12 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v10 >> (64 - 4 * v13++)) & 0xF));
            }

            while ((v12 & 1) != 0);
          }

          if (v12 && (*(*v12 + 16))(v12))
          {
            *(v9 + 8 * v8) = 0;
          }
        }
      }

      ++v8;
    }

    while (v8 != v7);
  }

  return pthread_rwlock_unlock((v6 + 16));
}

void si_querypipe_addcompletions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    goto LABEL_5;
  }

  v7 = a1;
  do
  {
    v8 = v7;
    v7 = *(v7 + 80);
  }

  while (v7);
  if (*(*(v8 + 8) + 12) == 1)
  {
LABEL_5:
    v9 = si_querypipe_copy_jobid(a1);
    if (v9)
    {
      v10 = v9;
      if (*MEMORY[0x1E69E9AC8] <= 0x3FuLL)
      {
        ++sTotal;
      }

      v11 = malloc_type_zone_calloc(queryZone, 1uLL, 0x40uLL, 0x5BAF1CEAuLL);
      if (!v11)
      {
        _log_fault_for_malloc_failure();
      }

      v11[1] = *(a1 + 48);
      *(v11 + 1) = v10;
      *v11 = 9;
      *(v11 + 4) = _MDStoreOIDArrayCreate();

      si_querypipe_remove_process(a1, a4, v11, 0);
    }

    return;
  }

  v12 = *(a2 + 320);
  if (*a4 && (v13 = *(*a4 + 120)) != 0)
  {
    v14 = *v13;
    v15 = *__error();
    v16 = _SILogForLogForCategory(1);
    v17 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v16, v17))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_1C278D000, v16, v17, "Setting locale to %s", &buf, 0xCu);
    }

    *__error() = v15;
  }

  else
  {
    v14 = "en-US";
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x2000000000;
  MutableUsingMallocWithZone = _MDPlistBytesCreateMutableUsingMallocWithZone();
  _MDPlistBytesBeginPlist();
  _MDPlistBytesBeginArray();
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2000000000;
  v31[3] = 0;
  if ((v12 & 0x100) != 0)
  {
    v19 = *(a2 + 320);
    if (!v14)
    {
      v21 = 0;
LABEL_38:
      v24 = *(a2 + 424);
      v25 = *(a2 + 312);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 0x40000000;
      v30[2] = __si_querypipe_addcompletions_block_invoke;
      v30[3] = &unk_1E8194030;
      v30[4] = &buf;
      v30[5] = v31;
      SIPommesEnumerateSuggestions(v24, v25, (v19 >> 9) & 1, (v19 & 0x400) != 0, (v19 >> 11) & 1, v21, v14, v30);
      goto LABEL_39;
    }

    v20 = *v14;
    switch(v20)
    {
      case 'z':
        if (v14[1] != 104)
        {
          goto LABEL_35;
        }

        break;
      case 'k':
        if (v14[1] != 111)
        {
          v22 = 14;
LABEL_37:
          v21 = v22 == 0;
          goto LABEL_38;
        }

        break;
      case 'j':
        if (v14[1] != 97)
        {
          goto LABEL_35;
        }

        break;
      case 'y':
        v20 = *(v14 + 1);
        if (v20 == 117)
        {
          v20 = *(v14 + 2);
          v23 = 101;
        }

        else
        {
          v23 = 117;
        }

        goto LABEL_36;
      default:
LABEL_35:
        v23 = 121;
LABEL_36:
        v22 = v23 - v20;
        goto LABEL_37;
    }

    v21 = 1;
    goto LABEL_38;
  }

  atomic_load_explicit((a2 + 328), memory_order_acquire);
  v18.n128_u64[0] = 0x40000000;
  SICompletionModelEnumerateCompletions(v18);
LABEL_39:
  _MDPlistBytesEndArray();
  _MDPlistBytesEndPlist();
  if (*MEMORY[0x1E69E9AC8] <= 0x3FuLL)
  {
    ++sTotal;
  }

  v26 = malloc_type_zone_calloc(queryZone, 1uLL, 0x40uLL, 0x5BAF1CEAuLL);
  if (!v26)
  {
    _log_fault_for_malloc_failure();
  }

  v26[1] = *(a1 + 48);
  *(v26 + 1) = si_querypipe_copy_jobid(a1);
  v27 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *(v26 + 5) = *(*(&buf + 1) + 24);
  *v26 = 9;
  *(v26 + 4) = _MDStoreOIDArrayCreateMutableWithOids();
  v28 = a1;
  do
  {
    v29 = v28;
    v28 = *(v28 + 80);
  }

  while (v28);
  *v27 = (*(*(v29 + 8) + 80) << 32) | 0xADF0000;
  _MDStoreOIDArraySetShouldUseMalloc();
  si_querypipe_remove_process(a1, a4, v26, 0);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&buf, 8);
}

uint64_t __si_querypipe_addcompletions_block_invoke(uint64_t a1, uint64_t a2)
{
  _MDPlistBytesBeginArray();
  _MDPlistBytesAddString();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddReal();
  _MDPlistBytesAddReal();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddReal();
  _MDPlistBytesAddReal();
  _MDPlistBytesAddReal();
  _MDPlistBytesAddReal();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesBeginArray();
  v4 = *(a2 + 184);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 184), i);
        if (CFStringGetCStringPtr(ValueAtIndex, 0x8000100u))
        {
          _MDPlistBytesAddCString();
        }
      }
    }
  }

  _MDPlistBytesEndArray();
  result = _MDPlistBytesEndArray();
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t __si_querypipe_addcompletions_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  _MDPlistBytesBeginArray();
  _MDPlistBytesAddString();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddReal();
  _MDPlistBytesAddReal();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddReal();
  _MDPlistBytesAddReal();
  _MDPlistBytesAddReal();
  _MDPlistBytesAddReal();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesAddInteger();
  _MDPlistBytesBeginArray();
  if (*(a2 + 164) >= 1)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E9C10];
    do
    {
      v6 = *(a2 + 168 + 4 * v4);
      if (v6)
      {
        if (!_MDPlistBytesAddRawInternedCStringKey())
        {
          string_for_id = db_get_string_for_id(*(a1 + 48), v6);
          if (string_for_id)
          {
            v8 = string_for_id;
            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v11 = v8;
              _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "String: %s", buf, 0xCu);
            }

            _MDPlistBytesAddRawInternedCStringKeyWithString();
          }
        }
      }

      ++v4;
    }

    while (v4 < *(a2 + 164));
  }

  _MDPlistBytesEndArray();
  result = _MDPlistBytesEndArray();
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t FileBackedBloomMap::grow(FileBackedBloomMap *this)
{
  if (_fd_ftruncate(*this, (*(this + 6) << 17) + 0x20000))
  {
    return -*__error();
  }

  *(this + 3) = (*(this + 6) + 1);
  FileBackedBloomMap::unmap(this);

  return FileBackedBloomMap::map(this);
}

int *FileBackedBloomMap::unmap(FileBackedBloomMap *this)
{
  v3 = (this + 8);
  result = *(this + 1);
  if (result)
  {
    v4 = *(this + 2);
    *v3 = 0;
    v3[1] = 0;
    result = munmap(result, v4);
    if (result)
    {

      return __error();
    }
  }

  return result;
}

uint64_t FileBackedBloomMap::map(FileBackedBloomMap *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = mmap(0, *(this + 6) << 17, 1, 1, *this, 0);
  if (*(this + 1) == -1)
  {
    v9 = __error();
    v5 = -*v9;
    if (gSILogLevels[0] >= 5)
    {
      __errnuma = *v9;
      v6 = *__error();
      v7 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v14 = strerror(__errnuma);
        v8 = "mmap: %s\n";
        goto LABEL_9;
      }

LABEL_10:
      *__error() = v6;
    }
  }

  else
  {
    v3 = *(this + 6) << 17;
    *(this + 1) = v2;
    *(this + 2) = v3;
    if (!mprotect(&v2[v3 - 0x20000], 0x20000uLL, 3))
    {
      return 0;
    }

    v4 = __error();
    v5 = -*v4;
    if (gSILogLevels[0] >= 5)
    {
      __errnum = *v4;
      v6 = *__error();
      v7 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v14 = strerror(__errnum);
        v8 = "mprotect: %s\n";
LABEL_9:
        _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  return v5;
}

uint64_t FileBackedBloomMap::Update(FileBackedBloomMap *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 7) < *(this + 8) || (v6 = FileBackedBloomMap::grow(this), !v6))
  {
    v7 = *(this + 2);
    v34[0] = *(this + 1);
    v34[1] = v7;
    v34[2] = 0;
    v33[0] = 1;
    v33[1] = v34;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v9 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v33, 0, add_explicit + 1);
    v11 = v10;
    v12 = v9;
    v13 = HIDWORD(v9);
    v15 = v14;
    v16 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
    *(v16 + 216) = 0;
    v17 = *(v16 + 312);
    v18 = *(v16 + 224);
    v19 = v16;
    if (v18)
    {
      v18(*(v16 + 288));
    }

    v31 = v13;
    v32 = v12;
    v29 = v11;
    v30 = v15;
    if (_setjmp(v19))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v28 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v28, 2u);
      }

      v19[78] = v17;
      CIOnThreadCleanUpReset(v29);
      dropThreadId(v32, 1, add_explicit + 1);
      CICleanUpReset(v32, v30);
      return 4294967261;
    }

    else
    {
      v21 = *(this + 9);
      if (v21 >= 1)
      {
        v22 = *(this + 1) + (*(this + 6) << 17) - 0x20000;
        v23 = bloom_filter_hash_moduli;
        do
        {
          v24 = *v23++;
          *(v22 + (((a3 + ((v24 * a2) >> 32)) >> 3) & 0x1FFFF)) |= 1 << ((a3 + ((v24 * a2) >> 32)) & 7);
          --v21;
        }

        while (v21);
      }

      v25 = threadData[9 * v32 + 1] + 320 * v31;
      *(v25 + 312) = v17;
      v26 = *(v25 + 232);
      if (v26)
      {
        v26(*(v25 + 288));
      }

      dropThreadId(v32, 0, add_explicit + 1);
      ++*(this + 7);
      return 0;
    }
  }

  return v6;
}

uint64_t FileBackedBloomMap::CalcMayContainBitset(FileBackedBloomMap *this, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v68 = a4;
  v78 = *MEMORY[0x1E69E9840];
  v7 = *(this + 1);
  if (!v7)
  {
    v22 = FileBackedBloomMap::map(this);
    if (v22)
    {
      return v22;
    }

    v7 = *(this + 1);
  }

  v8 = *(this + 2);
  v76[0] = v7;
  v76[1] = v8;
  v76[2] = 0;
  v75[0] = 1;
  v75[1] = v76;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v75, 0, add_explicit + 1);
  v12 = v11;
  v13 = v10;
  v14 = HIDWORD(v10);
  v16 = v15;
  v17 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  *(v17 + 216) = 0;
  v18 = *(v17 + 312);
  v19 = *(v17 + 224);
  v20 = v17;
  if (v19)
  {
    v19(*(v17 + 288));
  }

  v73 = v14;
  v74 = v13;
  v71 = v12;
  v72 = v16;
  if (_setjmp(v20))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    v20[78] = v18;
    CIOnThreadCleanUpReset(v71);
    dropThreadId(v74, 1, add_explicit + 1);
    CICleanUpReset(v74, v72);
  }

  else
  {
    v67 = v18;
    v69 = a3;
    v70 = add_explicit;
    v66 = &v55;
    v23 = v68;
    MEMORY[0x1EEE9AC00](v21);
    v24 = (v23 + 15) & 0x1FFFFFFF0;
    v64 = &v55 - v24;
    bzero(&v55 - v24, v23);
    MEMORY[0x1EEE9AC00](v25);
    v63 = &v55 - v24;
    v65 = v23;
    bzero(&v55 - v24, v23);
    v26 = v23;
    bzero(&v55 - v24, v23);
    v62 = *(this + 6);
    if (v62 >= 1)
    {
      v27 = v63;
      v60 = *(this + 1);
      v61 = v23;
      v59 = *(this + 9);
      v58 = v59;
      v57 = 0x1FFFFLL;
      v56 = v23 - 0x20000;
      v28 = 0;
      do
      {
        v55 = v28;
        memset(v27, 255, v61);
        if (v58 >= 1)
        {
          v29 = v59;
          v30 = (v60 + (v55 << 17));
          v31 = bloom_filter_hash_moduli;
          do
          {
            v32 = *v31++;
            v33 = ((v32 * a2) >> 32) & 7;
            v34 = ((v32 * a2) >> 35) & 0x1FFFF;
            if ((v34 + v26) >> 17)
            {
              v38 = a2;
              v39 = v34;
              buf[0] = v30[v57];
              buf[1] = *v30;
              v40 = v34 ^ 0x1FFFF;
              do_shifted_and(v27, &v30[v34], v34 ^ 0x1FFFF, v33);
              v41 = &v63[v40];
              do_shifted_and(v41, buf, 1u, v33);
              v42 = v39;
              a2 = v38;
              v36 = v41 + 1;
              v37 = v56 + v42;
              v35 = v30;
            }

            else
            {
              v35 = &v30[v34];
              v36 = v27;
              v37 = v68;
            }

            do_shifted_and(v36, v35, v37, v33);
            --v29;
          }

          while (v29);
        }

        v43 = v27;
        v44 = v64;
        v45 = v65;
        if (v68 >= 1)
        {
          do
          {
            v46 = *v43++;
            *v44++ |= v46;
            --v45;
          }

          while (v45);
        }

        v28 = v55 + 1;
      }

      while (v55 + 1 != v62);
    }

    v47 = v70;
    if (v68 >= 1)
    {
      v48 = v64;
      v49 = v65;
      v50 = v69;
      do
      {
        v51 = *v48++;
        *v50++ &= v51;
        --v49;
      }

      while (v49);
    }

    v52 = threadData[9 * v74 + 1] + 320 * v73;
    *(v52 + 312) = v67;
    v53 = *(v52 + 232);
    if (v53)
    {
      v53(*(v52 + 288));
    }

    dropThreadId(v74, 0, v47 + 1);
  }

  return 0;
}

uint64_t ends(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a1 + v3);
  v5 = a2[v2] != *v4 || v3 + 1 < v2;
  if (v5 || memcmp(&v4[-v2 + 1], a2 + 1, v2))
  {
    return 0;
  }

  *(a1 + 12) = v3 - v2;
  return 1;
}

uint64_t m(uint64_t *a1)
{
  v1 = *(a1 + 3);
  if ((v1 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = *a1;
  while (1)
  {
    v4 = 0;
    for (i = v2; ; --i)
    {
      HIDWORD(v7) = *(v3 + i) - 97;
      LODWORD(v7) = HIDWORD(v7);
      v6 = v7 >> 1;
      if (v6 != 12)
      {
        break;
      }

      if (!i)
      {
        goto LABEL_12;
      }

      v4 ^= 1u;
    }

    if (v6 <= 0xA && ((1 << v6) & 0x495) != 0)
    {
      v9 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v9 = 1;
LABEL_13:
    if (v9 == v4)
    {
      break;
    }

    if (++v2 == v1 + 1)
    {
      return 0;
    }
  }

  result = 0;
LABEL_18:
  v11 = v2;
  if (v2 <= v1)
  {
    v12 = v1;
  }

  else
  {
    v12 = v2;
  }

  v13 = v2 + 2;
  while (v11 != v12)
  {
    v14 = v11;
    LODWORD(v2) = v13;
    v15 = 0;
    for (j = ++v11; ; --j)
    {
      HIDWORD(v18) = *(v3 + j) - 97;
      LODWORD(v18) = HIDWORD(v18);
      v17 = v18 >> 1;
      if (v17 != 12)
      {
        break;
      }

      if (!j)
      {
        goto LABEL_32;
      }

      v15 ^= 1u;
    }

    if (v17 <= 0xA && ((1 << v17) & 0x495) != 0)
    {
      v20 = 0;
      goto LABEL_33;
    }

LABEL_32:
    v20 = 1;
LABEL_33:
    v13 = v2 + 1;
    if (v20 != v15)
    {
      result = (result + 1);
      if (v14 + 2 > v1)
      {
        return result;
      }

      v2 = v2;
      while (1)
      {
        v21 = 0;
        for (k = v2; ; --k)
        {
          HIDWORD(v24) = *(v3 + k) - 97;
          LODWORD(v24) = HIDWORD(v24);
          v23 = v24 >> 1;
          if (v23 != 12)
          {
            break;
          }

          if (!k)
          {
            goto LABEL_45;
          }

          v21 ^= 1u;
        }

        if (v23 <= 0xA && ((1 << v23) & 0x495) != 0)
        {
          v26 = 0;
          goto LABEL_46;
        }

LABEL_45:
        v26 = 1;
LABEL_46:
        if (v26 == v21)
        {
          goto LABEL_18;
        }

        if (v2++ >= v1)
        {
          return result;
        }
      }
    }
  }

  return result;
}

BOOL cvc(uint64_t *a1, int a2)
{
  v2 = (a2 - 2);
  if (a2 < 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *a1;
  for (i = a2; ; --i)
  {
    HIDWORD(v7) = *(v4 + i) - 97;
    LODWORD(v7) = HIDWORD(v7);
    v6 = v7 >> 1;
    if (v6 != 12)
    {
      break;
    }

    if (!i)
    {
      goto LABEL_11;
    }

    v3 ^= 1u;
  }

  if (v6 <= 0xA && ((1 << v6) & 0x495) != 0)
  {
    v9 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v9 = 1;
LABEL_12:
  if (v9 == v3)
  {
    return 0;
  }

  v10 = 0;
  for (j = (a2 - 1); ; --j)
  {
    HIDWORD(v13) = *(v4 + j) - 97;
    LODWORD(v13) = HIDWORD(v13);
    v12 = v13 >> 1;
    if (v12 != 12)
    {
      break;
    }

    if (!j)
    {
      goto LABEL_22;
    }

    v10 ^= 1u;
  }

  if (v12 <= 0xA && ((1 << v12) & 0x495) != 0)
  {
    v15 = 0;
    goto LABEL_23;
  }

LABEL_22:
  v15 = 1;
LABEL_23:
  if (v15 != v10)
  {
    return 0;
  }

  for (k = 0; ; k ^= 1u)
  {
    HIDWORD(v18) = *(v4 + v2) - 97;
    LODWORD(v18) = HIDWORD(v18);
    v17 = v18 >> 1;
    if (v17 != 12)
    {
      break;
    }

    if (!v2)
    {
      goto LABEL_33;
    }

    --v2;
  }

  if (v17 <= 0xA && ((1 << v17) & 0x495) != 0)
  {
    v20 = 0;
    return v20 != k && *(v4 + a2) - 122 < 0xFFFFFFFD;
  }

LABEL_33:
  v20 = 1;
  return v20 != k && *(v4 + a2) - 122 < 0xFFFFFFFD;
}

uint64_t step5(uint64_t result)
{
  v1 = result;
  v2 = *result;
  v3 = *(result + 8);
  *(result + 12) = v3;
  v4 = *(v2 + v3);
  if (v4 == 101)
  {
    result = m(result);
    if (result < 2)
    {
      if (result != 1)
      {
        return result;
      }

      LODWORD(v3) = v3 - 1;
      result = cvc(v1, v3);
      if (result)
      {
        return result;
      }
    }

    else
    {
      LODWORD(v3) = v3 - 1;
    }

    *(v1 + 8) = v3;
    v4 = *(v2 + v3);
  }

  if (v3 >= 1 && v4 == 108 && *(v2 + v3) == *(v2 + v3 - 1))
  {
    result = m(v1);
    if (result >= 2)
    {
      *(v1 + 8) = v3 - 1;
    }
  }

  return result;
}

void *userDefaultExtendedDebuggingEnabled(void)
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];

    return [v1 BOOLForKey:@"EnableL1ExtendedDebug"];
  }

  return result;
}

uint64_t SISearchCtx_METADATA::queryContext(SISearchCtx_METADATA *this)
{
  if (!*(this + 150))
  {
    operator new();
  }

  return *(this + 150);
}

const __CFDictionary *QueryFunctionCallbackContext_METADATA::getDocSet(QueryFunctionCallbackContext_METADATA *this, query_piece *a2)
{
  result = *(a2 + 15);
  if (!result)
  {
    result = *(*(this + 2) + 216);
    if (result)
    {
      return CFDictionaryGetValue(result, a2);
    }
  }

  return result;
}

uint64_t QueryFunctionCallbackContext_METADATA::findPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  if (*a5 == -1)
  {
    v7 = 0;
  }

  else
  {
    if (!v6)
    {
      v9 = __si_assert_copy_extra_332();
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "SISearchCtx_METADATA.cpp", 861, v11);
      free(v10);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    v7 = ContentIndexDocSetContainsDocId(v6, *(*a3 + 32));
  }

  return v7 ^ ((*(a4 + 24) - 5) < 2);
}

uint64_t QueryFunctionCallbackContext_METADATA::findContent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  if (*a4 == -1)
  {
    v11 = 0;
  }

  else if (v6)
  {
    v11 = ContentIndexDocSetContainsDocId(v6, *(a2 + 32));
  }

  else
  {
    v8 = *(a3 + 32);
    v9 = *(a3 + 72);
    if (v9)
    {
      v10 = strlen(*(a3 + 72));
    }

    else
    {
      v10 = 0;
    }

    v12 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v9, v10, 0x8000100u, 0);
    v13 = *(a1 + 8);
    v14 = *(a2 + 32);
    v15 = si_indexForDocId(v13, v14);
    if (!v15)
    {
      v11 = 0;
      if (!v12)
      {
        return v11 ^ ((*(a3 + 24) - 5) < 2);
      }

      goto LABEL_20;
    }

    v16 = (v8 >> 4) & 1;
    if ((v8 & 0x800000) != 0)
    {
      v16 = (v8 >> 4) & 1 | ((*(a3 + 28) & 0x7F) << 18) | 0x10000;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    v17 = *(a1 + 16);
    if (v17)
    {
      v18 = *(v17 + 8);
      if (v18)
      {
        v19 = v18[82];
        v23 = v18[4];
        v24 = v19;
        v25 = v18[9];
      }
    }

    v20 = *(a1 + 24);
    if (v20)
    {
      v21 = *(v20 + 144);
    }

    else
    {
      v21 = 0;
    }

    v11 = ContentIndexContainsContentByDocId(v15, v14, v12, v16 | (v8 >> 4) & 2, v21, (*(v13 + 6584) >> 25) & 3, *(a1 + 32), &v23);
    if (v12)
    {
LABEL_20:
      CFRelease(v12);
    }
  }

  return v11 ^ ((*(a3 + 24) - 5) < 2);
}

uint64_t QueryFunctionCallbackContext_METADATA::gotten(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*a3)
  {
    (*(a3 + 8))(a2, a3);
    if (!*a3)
    {
      return 0;
    }
  }

  v5 = *(*a1 + 32);

  return v5(a1);
}

const void *QueryFunctionCallbackContext_METADATA::gotten(uint64_t a1, void *key)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    *(a1 + 40) = CFDictionaryCreateMutable(kCIQueryZoneAllocator, 0, 0, 0);
    goto LABEL_5;
  }

  Value = CFDictionaryGetValue(v3, key);
  if (!Value)
  {
LABEL_5:
    operator new();
  }

  return Value;
}

uint64_t deleteValue(const void *a1, const void *a2, void *a3)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a2 + 56) != *(a1 + 40))
  {
    return 1;
  }

  if (*(a2 + 15712))
  {
    return 0;
  }

  v5 = *__error();
  v6 = _SILogForLogForCategory(1);
  v7 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(a1 + 40);
    v10[0] = 67109634;
    v10[1] = v8;
    v11 = 2048;
    v12 = a2;
    v13 = 2080;
    v14 = a2 + 15208;
    _os_log_impl(&dword_1C278D000, v6, v7, "Index Should Merge id:%d %p %s", v10, 0x1Cu);
  }

  v9 = __error();
  result = 0;
  *v9 = v5;
  *(a2 + 15712) = 1;
  *(*(a1 + 32) + 647) = 1;
  return result;
}

uint64_t ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke_1(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a2 + 56) != *(a1 + 40))
  {
    return 1;
  }

  if (*(a2 + 15206))
  {
    return 0;
  }

  v5 = *__error();
  v6 = _SILogForLogForCategory(1);
  v7 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(a1 + 40);
    v10[0] = 67109634;
    v10[1] = v8;
    v11 = 2048;
    v12 = a2;
    v13 = 2080;
    v14 = a2 + 15208;
    _os_log_impl(&dword_1C278D000, v6, v7, "Index Should Merge id:%d %p %s", v10, 0x1Cu);
  }

  v9 = __error();
  result = 0;
  *v9 = v5;
  *(a2 + 15206) = 1;
  *(*(a1 + 32) + 646) = 1;
  return result;
}

uint64_t SISearchCtx_METADATA::addMatchingAttributeNodes(SISearchCtx_METADATA *this, CFArrayRef theArray, const int *a3, uint64_t *a4, char a5)
{
  Count = CFArrayGetCount(theArray);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2000000000;
  v30 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  if (Count)
  {
    v11 = Count;
    v30 = 2 * Count;
    if (((Count >> 13) & 0x7FFFFFFFFFFFLL) == 0 && 16 * Count > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal;
    }

    v12 = malloc_type_zone_calloc(queryZone, 2 * Count, 8uLL, 0x5BAF1CEAuLL);
    if (!v12)
    {
      _log_fault_for_malloc_failure();
    }

    v26[3] = v12;
    Mutable = CFSetCreateMutable(kCIQueryZoneAllocator, 0, &dbqpSetCallbacks);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = 0;
    v14 = **(this + 105);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v19[2] = ___ZN20SISearchCtx_METADATA25addMatchingAttributeNodesEPK9__CFArrayPKiPlb_block_invoke;
    v19[3] = &unk_1E8194120;
    v20 = a5;
    v19[4] = &v31;
    v19[5] = v29;
    v19[8] = Mutable;
    v19[9] = v11;
    v19[10] = theArray;
    v19[11] = a3;
    v19[6] = &v25;
    v19[7] = &v21;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 0x40000000;
    v35[2] = __db_query_tree_apply_block_block_invoke;
    v35[3] = &unk_1E8198ED0;
    v35[4] = v19;
    db_query_tree_apply_block_with_meta(v14, v35, 0);
    v15 = v22[3];
    if (v15)
    {
      CFRelease(v15);
    }

    CFRelease(Mutable);
    _Block_object_dispose(&v21, 8);
    v16 = v32[3];
    v17 = v26[3];
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  *a4 = v16;
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v31, 8);
  return v17;
}

void cleanUp(SISearchCtx_METADATA *a1)
{
  SISearchCtx_METADATA::cleanUp(a1, 0);
  v2 = *(a1 + 208);
  if (v2)
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      v5 = *(*(a1 + 105) + v3);
      if (v5)
      {
        clear_node_caches(v5);
        v2 = *(a1 + 208);
      }

      v3 += 48;
    }
  }
}

CFArrayRef ___ZN20SISearchCtx_METADATA10preIterateEv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = xmmword_1E8194160;
  v2 = @"kMDItemPhotosPeopleNamesAlternatives";
  result = CFArrayCreate(*MEMORY[0x1E695E480], &v1, 3, MEMORY[0x1E695E9C0]);
  SISearchCtx_METADATA::preIterate(void)::sAttributesToConsider = result;
  return result;
}

uint64_t ___ZN20SISearchCtx_METADATA25addMatchingAttributeNodesEPK9__CFArrayPKiPlb_block_invoke(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  bzero(__s1, 0x400uLL);
  if (query_node_is_double_star(a2))
  {
    goto LABEL_2;
  }

  if (a2)
  {
    if (*(a2 + 48) == 4)
    {
      v7 = *(a2 + 16);
      if (v7)
      {
        v8 = *v7;
        if (v8)
        {
          if (*v8 == 42 && !v8[1])
          {
LABEL_2:
            if (*(a1 + 96))
            {
              v38 = MEMORY[0x1E69E9820];
              v39 = 0x40000000;
              v40 = __db_query_tree_apply_block_block_invoke;
              v41 = &unk_1E8198ED0;
              v42 = &__block_literal_global_21_15415;
              db_query_tree_apply_block_with_meta(a2, &v38, &__block_literal_global_25_15416);
              v5 = v4;
              if (v4)
              {
                v6 = *(v4 + 16);
                if (v6)
                {
                  if (*v6)
                  {
                    if (CFSetContainsValue(*(a1 + 64), v6))
                    {
                      v38 = MEMORY[0x1E69E9820];
                      v39 = 0x40000000;
                      v40 = __db_query_tree_apply_block_block_invoke;
                      v41 = &unk_1E8198ED0;
                      v42 = &__block_literal_global_174;
                      db_query_tree_apply_block_with_meta(v5, &v38, 0);
                      return a2;
                    }

                    v25 = *(*(a1 + 32) + 8);
                    v26 = *(v25 + 24);
                    v27 = *(*(a1 + 40) + 8);
                    if (v26 == *(v27 + 24))
                    {
                      *(v27 + 24) = 2 * v26;
                      *(*(*(a1 + 48) + 8) + 24) = malloc_type_realloc(*(*(*(a1 + 48) + 8) + 24), 8 * *(*(*(a1 + 40) + 8) + 24), 0x2004093837F09uLL);
                      v25 = *(*(a1 + 32) + 8);
                      v26 = *(v25 + 24);
                    }

                    v28 = *(*(*(a1 + 48) + 8) + 24);
                    *(v25 + 24) = v26 + 1;
                    *(v28 + 8 * v26) = v5;
LABEL_51:
                    CFSetAddValue(*(a1 + 64), *(v5 + 16));
                    return a2;
                  }
                }
              }

              goto LABEL_24;
            }

            if (*(a1 + 72) < 1)
            {
              return a2;
            }

            v13 = 0;
            while (!cStringFromCFStringArray(*(a1 + 80), v13, __s1))
            {
LABEL_41:
              if (++v13 >= *(a1 + 72))
              {
                return a2;
              }
            }

            if (a2)
            {
              if (*(a2 + 48) == 4)
              {
                v14 = *(a2 + 16);
                if (v14)
                {
                  if (*v14)
                  {
                    v38 = MEMORY[0x1E69E9820];
                    v39 = 0x40000000;
                    v40 = __db_query_tree_apply_block_block_invoke;
                    v41 = &unk_1E8198ED0;
                    v42 = &__block_literal_global_21_15415;
                    db_query_tree_apply_block_with_meta(a2, &v38, &__block_literal_global_25_15416);
                    v16 = v15;
                    if (!v15)
                    {
LABEL_40:
                      db_free_query_node(v16);
                      goto LABEL_41;
                    }

                    v17 = v15[2];
                    if (v17 && *v17)
                    {
                      free(*v17);
                      v18 = strdup(__s1);
                      v19 = v16[2];
                      *v19 = v18;
                      if (v18)
                      {
                        if (CFSetContainsValue(*(a1 + 64), v19))
                        {
                          v38 = MEMORY[0x1E69E9820];
                          v39 = 0x40000000;
                          v40 = __db_query_tree_apply_block_block_invoke;
                          v41 = &unk_1E8198ED0;
                          v42 = &__block_literal_global_174;
                          db_query_tree_apply_block_with_meta(v16, &v38, 0);
                        }

                        else
                        {
                          v20 = *(*(a1 + 32) + 8);
                          v21 = *(v20 + 24);
                          v22 = *(*(a1 + 40) + 8);
                          if (v21 == *(v22 + 24))
                          {
                            *(v22 + 24) = 2 * v21;
                            *(*(*(a1 + 48) + 8) + 24) = malloc_type_realloc(*(*(*(a1 + 48) + 8) + 24), 8 * *(*(*(a1 + 40) + 8) + 24), 0x2004093837F09uLL);
                            v20 = *(*(a1 + 32) + 8);
                            v21 = *(v20 + 24);
                          }

                          v23 = *(*(*(a1 + 48) + 8) + 24);
                          *(v20 + 24) = v21 + 1;
                          *(v23 + 8 * v21) = v16;
                          CFSetAddValue(*(a1 + 64), v16[2]);
                          v24 = *(a1 + 88);
                          if (v24)
                          {
                            LODWORD(v24) = *(v24 + 4 * v13);
                          }

                          *(v16[2] + 80) = v24;
                        }

                        goto LABEL_41;
                      }

                      goto LABEL_40;
                    }

                    v38 = MEMORY[0x1E69E9820];
                    v39 = 0x40000000;
                    v40 = __db_query_tree_apply_block_block_invoke;
                    v41 = &unk_1E8198ED0;
                    v42 = &__block_literal_global_174;
                    db_query_tree_apply_block_with_meta(v15, &v38, 0);
                  }
                }
              }
            }

            v16 = 0;
            goto LABEL_40;
          }

          v9 = *(a2 + 16);
          if (v9 && *v9)
          {
            v10 = *(*(*(a1 + 56) + 8) + 24);
            if (v10)
            {
              goto LABEL_70;
            }

            *(*(*(a1 + 56) + 8) + 24) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &kCStringDictionaryKeyCallBacks, &kIntDictionaryValueCallBacks);
            if (*(a1 + 72) >= 1)
            {
              v30 = 0;
              do
              {
                if (cStringFromCFStringArray(*(a1 + 80), v30, __s1))
                {
                  v31 = *(a1 + 88);
                  if (v31)
                  {
                    v32 = *(v31 + 4 * v30);
                  }

                  else
                  {
                    v32 = 0;
                  }

                  CFDictionarySetValue(*(*(*(a1 + 56) + 8) + 24), __s1, v32);
                }

                ++v30;
              }

              while (v30 < *(a1 + 72));
            }

            v10 = *(*(*(a1 + 56) + 8) + 24);
            if (v10)
            {
              if (*(a2 + 48) == 4)
              {
                v9 = *(a2 + 16);
                if (v9)
                {
LABEL_70:
                  if (*v9 && CFDictionaryContainsKey(v10, *v9) && **(a2 + 16))
                  {
                    db_clone_query_node(a2);
                    v5 = v11;
                    if (v11)
                    {
                      v12 = *(v11 + 16);
                      if (v12)
                      {
                        if (*v12 && !CFSetContainsValue(*(a1 + 64), v12))
                        {
                          v33 = *(*(*(a1 + 32) + 8) + 24);
                          v34 = *(*(a1 + 40) + 8);
                          if (v33 == *(v34 + 24))
                          {
                            *(v34 + 24) = 2 * v33;
                            *(*(*(a1 + 48) + 8) + 24) = malloc_type_realloc(*(*(*(a1 + 48) + 8) + 24), 8 * *(*(*(a1 + 40) + 8) + 24), 0x2004093837F09uLL);
                          }

                          *(*(v5 + 16) + 80) = CFDictionaryGetValue(*(*(*(a1 + 56) + 8) + 24), **(v5 + 16));
                          v35 = *(*(*(a1 + 48) + 8) + 24);
                          v36 = *(*(a1 + 32) + 8);
                          v37 = *(v36 + 24);
                          *(v36 + 24) = v37 + 1;
                          *(v35 + 8 * v37) = v5;
                          goto LABEL_51;
                        }
                      }
                    }

LABEL_24:
                    db_free_query_node(v5);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return a2;
}

BOOL cStringFromCFStringArray(const __CFArray *a1, CFIndex a2, char *a3)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v5 = CFGetTypeID(ValueAtIndex);
  return v5 == CFStringGetTypeID() && CFStringGetCString(ValueAtIndex, a3, 1024, 0x8000100u) != 0;
}

uint64_t ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(*(a1 + 32) + 216);
    if (!v4)
    {
      goto LABEL_9;
    }

    Value = CFDictionaryGetValue(v4, v3);
    if (!Value)
    {
      goto LABEL_9;
    }

    v7 = *(Value + 12);
    if (v7 <= 3)
    {
      LODWORD(v9) = 0;
      if (v7 <= 1)
      {
        if (!v7)
        {
          goto LABEL_10;
        }

        if (v7 == 1)
        {
          LODWORD(v9) = *(*(Value + 7) + 68);
          goto LABEL_10;
        }

        goto LABEL_22;
      }

      if (v7 == 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if ((v7 - 4) < 4)
      {
LABEL_6:
        v8 = (Value + 80);
        goto LABEL_7;
      }

      if (v7 != 8)
      {
        if (v7 == 9)
        {
          goto LABEL_6;
        }

LABEL_22:
        assert_invalid_doc_type(Value);
      }
    }

    v9 = *(Value + 8);
    if (!v9)
    {
      goto LABEL_10;
    }

    v8 = (v9 + 88);
LABEL_7:
    if (*v8)
    {
      LODWORD(v9) = lockedCountItemsInRange(*v8, (*v8)[5], (*v8)[6], v6);
LABEL_10:
      *(*(a2 + 16) + 152) += v9;
      return a2;
    }

LABEL_9:
    LODWORD(v9) = 0;
    goto LABEL_10;
  }

  return a2;
}

uint64_t ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (*(a2 + 16))
  {
    malloc_size(**(a1 + 32));
    _db_render_query_tree(v2);
    _MDPlistContainerAddCString();
    _MDPlistContainerAddInt64Value();
    return v4;
  }

  return a2;
}

uint64_t SISearchCtx_METADATA::updateGroupingCount(SISearchCtx_METADATA *this)
{
  v2 = currentCategoryCount(*(this + 3));
  v3 = *(this + 291) + v2;
  result = *(this + 164);
  if (v3 > result)
  {
    v5 = *(this + 116);
    if (v5 && v5[1] < v3)
    {
      v5 = malloc_type_realloc(*(this + 116), 32 * (*(this + 291) + v2) + 40, 0x10000400A747E1EuLL);
      if (v5[1] < v3)
      {
        L1ComboQueueInit();
      }

      v5[1] = v3;
    }

    *(this + 116) = v5;
    v6 = *(this + 22);
    if (v6 || (v6 = *(this + 23)) != 0)
    {
      if (v6 <= *(this + 21))
      {
        v6 = *(this + 21);
      }

      v6 = v6;
    }

    Info = *(this + 147);
    v8 = *(this + 291);
    v9 = v8 + v2;
    if ((*(this + 40) & 0xFFFFFFFD) == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = v6;
    }

    if (Info)
    {
      if (*Info < v9)
      {
        Info = malloc_type_zone_realloc(queryZone, *(this + 147), 40 * v9 + 8, 0xA1A7ADA0uLL);
        if (!Info)
        {
          _log_fault_for_malloc_failure();
        }

        v11 = *Info;
        if (*Info < v9)
        {
          v12 = v2 + v8 - v11;
          v13 = &Info[10 * v11 + 8];
          do
          {
            pqinit_rankAndFetchInfo_t(v13 - 3, v10);
            *v13 = 0;
            *(v13 + 1) = 0;
            v13 += 10;
            --v12;
          }

          while (v12);
        }

        *Info = v9;
      }
    }

    else
    {
      Info = createFetchInfo(v8 + v2, v10);
    }

    *(this + 147) = Info;
    result = (*(this + 291) + v2);
    *(this + 164) = result;
  }

  return result;
}

uint64_t pqpop_rankAndFetchInfo_t(uint64_t result, void *a2)
{
  v146 = *MEMORY[0x1E69E9840];
  v2 = a2[2];
  if (v2 != 1)
  {
    v3 = *a2;
    v4 = *(*a2 + 272);
    *(result + 96) = *(*a2 + 256);
    *(result + 112) = v4;
    v5 = *(v3 + 304);
    *(result + 128) = *(v3 + 288);
    *(result + 144) = v5;
    v6 = *(v3 + 208);
    *(result + 32) = *(v3 + 192);
    *(result + 48) = v6;
    v7 = *(v3 + 240);
    *(result + 64) = *(v3 + 224);
    *(result + 80) = v7;
    v8 = *(v3 + 176);
    *result = *(v3 + 160);
    *(result + 16) = v8;
    result = 160;
    v9 = v3 + 160 * v2;
    v10 = *(v9 - 160);
    v11 = *(v9 - 152);
    v94 = *(v9 - 144);
    v96 = *(v9 - 128);
    v12 = *(v9 - 112);
    v13 = *(v9 - 108);
    v14 = *(v9 - 104);
    v15 = *(v9 - 100);
    v16 = *(v9 - 96);
    v17 = *(v9 - 92);
    v18 = *(v9 - 91);
    v19 = *(v9 - 90);
    v20 = *(v9 - 82);
    v84 = *(v9 - 48);
    v86 = *(v9 - 32);
    v88 = *(v9 - 16);
    v80 = *(v9 - 80);
    v82 = *(v9 - 64);
    *(v3 + 176) = v94;
    *(v3 + 192) = v96;
    *(v3 + 288) = v86;
    *(v3 + 304) = v88;
    *(v3 + 256) = v82;
    *(v3 + 272) = v84;
    *(v3 + 240) = v80;
    v138 = v94;
    v139 = v96;
    v135 = v88;
    v90 = v16;
    v92 = v17;
    v140 = v19;
    v141 = v20;
    *(v3 + 160) = v10;
    *(v3 + 168) = v11;
    *(v3 + 208) = v12;
    *(v3 + 212) = v13;
    *(v3 + 216) = v14;
    *(v3 + 220) = v15;
    *(v3 + 228) = v17;
    *(v3 + 224) = v16;
    *(v3 + 229) = v18;
    *(v3 + 238) = v20;
    *(v3 + 230) = v19;
    v22 = a2[1];
    v21 = a2[2];
    a2[2] = v21 - 1;
    v23 = v22 >> 1;
    v136 = v16;
    v137 = v17;
    v144 = v19;
    v145 = v141;
    v24 = 3;
    v133 = v84;
    v134 = v86;
    v25 = 2;
    v26 = 1;
    v27 = 0uLL;
    v131 = v80;
    v132 = v82;
    while (1)
    {
      v28 = *a2;
      v29 = *a2 + 160 * v25;
      v30 = *v29;
      v31 = *(v29 + 8);
      v32 = *(v29 + 48);
      v33 = *(v29 + 52);
      v34 = *(v29 + 56);
      v35 = *(v29 + 60);
      v36 = *(v29 + 69);
      v37 = *a2 + 160 * v24;
      v39 = *v37;
      v38 = *(v37 + 8);
      v40 = *(v37 + 32);
      v129 = *(v37 + 16);
      v130 = v40;
      v41 = *(v37 + 48);
      v42 = *(v37 + 52);
      v43 = *(v37 + 56);
      v44 = *(v37 + 60);
      v45 = *(v37 + 64);
      v128 = *(v37 + 68);
      v127 = v45;
      v46 = *(v37 + 69);
      v142 = *(v37 + 70);
      v143 = *(v37 + 78);
      v47 = *(v37 + 128);
      v124 = *(v37 + 112);
      v125 = v47;
      v126 = *(v37 + 144);
      v48 = *(v37 + 96);
      v122 = *(v37 + 80);
      v123 = v48;
      if (v24 >= v21)
      {
        v129 = xmmword_1C2BFF510;
        v130 = unk_1C2BFF520;
        v127 = 0;
        v128 = 0;
        v142 = 0;
        v143 = 0;
        v122 = v27;
        v123 = v27;
        v124 = v27;
        v125 = v27;
        v126 = v27;
        if (v25 >= v21)
        {
          return result;
        }

        v46 = 0;
        v43 = 0;
        v41 = 0;
        v39 = -1;
        v42 = 0.0;
        v44 = 3.4028e38;
        v38 = -1;
      }

      v110[0] = v10;
      v110[1] = v11;
      v111 = v94;
      v112 = v96;
      v113 = v12;
      v114 = v13;
      v115 = v14;
      v116 = v15;
      v117 = v90;
      v118 = v92;
      v119 = v18;
      v120 = v140;
      v121 = v141;
      v98[0] = v39;
      v98[1] = v38;
      v99 = v129;
      v100 = v130;
      v101 = v41;
      v102 = v42;
      v103 = v43;
      v104 = v44;
      v105 = v127;
      v106 = v128;
      v107 = v46;
      v109 = v143;
      v108 = v142;
      if (v36)
      {
        if (v35 < v15)
        {
          goto LABEL_19;
        }

        if (v35 != v15)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (__PAIR128__(v31, v30) < __PAIR128__(v11, v10))
        {
          goto LABEL_19;
        }

        if (v31 != v11 || v30 != v10)
        {
LABEL_38:
          v73 = v21;
          v74 = v18;
          v75 = v14;
          v76 = v12;
          v77 = v11;
          v78 = v10;
          v79 = a2;
          result = ci_rankingbits_wrapped_s::operator<(v98, v110);
          if ((result & 1) == 0)
          {
            _X8 = v28 + 320 * v26;
            __asm { PRFM            #1, [X8] }

            return result;
          }

          v53 = &v122;
          v52 = &v142;
          v51 = &v127;
          v50 = &v129;
          v36 = v46;
          v35 = v44;
          v34 = v43;
          v33 = v42;
          v32 = v41;
          v30 = v39;
          v31 = v38;
          v25 = v24;
          v10 = v78;
          a2 = v79;
          result = 160;
          v11 = v77;
          v14 = v75;
          v12 = v76;
          v18 = v74;
          v21 = v73;
          v27 = 0uLL;
          goto LABEL_33;
        }
      }

      if (v33 >= v13 && (v33 != v13 || v32 <= v12))
      {
        goto LABEL_38;
      }

LABEL_19:
      v50 = (v29 + 16);
      v51 = (v29 + 64);
      v52 = (v29 + 70);
      v53 = (v29 + 80);
      if ((v46 & 1) == 0)
      {
        if (__PAIR128__(v38, v39) >= __PAIR128__(v31, v30))
        {
          if (v38 != v31 || v39 != v30)
          {
            goto LABEL_33;
          }

LABEL_29:
          if (v42 >= v33 && (v42 != v33 || v41 <= v32))
          {
            goto LABEL_33;
          }
        }

LABEL_32:
        v53 = &v122;
        v52 = &v142;
        v51 = &v127;
        v50 = &v129;
        v36 = v46;
        v35 = v44;
        v34 = v43;
        v33 = v42;
        v32 = v41;
        v30 = v39;
        v31 = v38;
        v25 = v24;
        goto LABEL_33;
      }

      if (v44 < v35)
      {
        goto LABEL_32;
      }

      if (v44 == v35)
      {
        goto LABEL_29;
      }

LABEL_33:
      v95 = *v50;
      v97 = v50[1];
      v91 = *v51;
      v93 = *(v51 + 4);
      v140 = *v52;
      v141 = *(v52 + 4);
      v87 = v53[3];
      v89 = v53[4];
      v83 = v53[1];
      v85 = v53[2];
      v81 = *v53;
      _X14 = v28 + 320 * v25;
      __asm { PRFM            #1, [X14] }

      if (v25 != v26)
      {
        v60 = v28 + 160 * v25;
        *v60 = v10;
        *(v60 + 8) = v11;
        v61 = v139;
        v62 = v138;
        v63 = v139;
        *(v60 + 16) = v138;
        *(v60 + 32) = v61;
        *(v60 + 48) = v12;
        *(v60 + 52) = v13;
        *(v60 + 56) = v14;
        *(v60 + 60) = v15;
        v64 = v136;
        *(v60 + 64) = v136;
        *(v60 + 68) = v137;
        *(v60 + 69) = v18;
        *(v60 + 78) = v145;
        v65 = v144;
        *(v60 + 70) = v144;
        v66 = v134;
        *(v60 + 112) = v133;
        *(v60 + 128) = v66;
        *(v60 + 144) = v135;
        v67 = v132;
        *(v60 + 80) = v131;
        *(v60 + 96) = v67;
        v68 = *a2 + 160 * v26;
        *(v68 + 16) = v95;
        *(v68 + 32) = v97;
        *(v68 + 52) = v33;
        *(v68 + 60) = v35;
        *(v68 + 128) = v87;
        *(v68 + 144) = v89;
        *(v68 + 96) = v83;
        *(v68 + 112) = v85;
        *(v68 + 80) = v81;
        v94 = v62;
        v96 = v63;
        v26 = v25;
        v24 = (2 * v25) | 1;
        *v68 = v30;
        *(v68 + 8) = v31;
        *(v68 + 48) = v32;
        *(v68 + 56) = v34;
        *(v68 + 64) = v91;
        *(v68 + 68) = v93;
        *(v68 + 69) = v36;
        v69 = v140;
        *(v68 + 78) = v141;
        *(v68 + 70) = v69;
        v92 = v137;
        v90 = v64;
        v141 = v145;
        v140 = v65;
        v70 = v25 < v23;
        v25 *= 2;
        if (v70)
        {
          continue;
        }
      }

      return result;
    }
  }

  *(result + 96) = xmmword_1C2BFF380;
  *(result + 112) = unk_1C2BFF390;
  *(result + 128) = xmmword_1C2BFF3A0;
  *(result + 144) = unk_1C2BFF3B0;
  *(result + 32) = xmmword_1C2BFF340;
  *(result + 48) = unk_1C2BFF350;
  *(result + 64) = xmmword_1C2BFF360;
  *(result + 80) = unk_1C2BFF370;
  *result = ZERO_FETCHINFO;
  *(result + 16) = *algn_1C2BFF330;
  return result;
}