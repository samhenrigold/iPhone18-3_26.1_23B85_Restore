CFArrayRef CFBundleCreateBundlesFromDirectory(CFAllocatorRef allocator, CFURLRef directoryURL, CFStringRef bundleType)
{
  Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
  v5 = _CFCreateContentsOfDirectory(allocator, 0, 0);
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        v11 = CFBundleCreate(allocator, ValueAtIndex);
        if (v11)
        {
          CFArrayAppendValue(Mutable, v11);
        }
      }
    }

    CFRelease(v6);
  }

  return Mutable;
}

__CFArray *_CFCreateContentsOfDirectory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v10 = v3;
  *&v54[1025] = *MEMORY[0x1E69E9840];
  if (v4)
  {
    bufLen = strlen(v4);
    if (!v6)
    {
LABEL_15:
      v12 = 0;
      v18 = 0;
      usedBufLen = 0;
      v19 = 1;
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    bufLen = 0;
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  v11 = CFRetain(v6);
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = v11;
  Length = CFStringGetLength(v11);
  usedBufLen = Length;
  if (Length >= 1 && ((v14 = Length, v15 = CFStringFileSystemEncoding(), v55.location = 0, v55.length = v14, CFStringGetBytes(v12, v55, v15, 0, 0, &buffer, 1024, &usedBufLen), v54[usedBufLen - 1] = 0, buffer != 46) ? (p_buffer = &buffer) : (p_buffer = v54), (v17 = strchr(p_buffer, 46)) != 0))
  {
    v18 = 0;
    do
    {
      ++v18;
      v17 = strchr(v17 + 1, 46);
    }

    while (v17);
    v19 = 0;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
    if (!v9)
    {
LABEL_18:
      if (!CFURLGetFileSystemRepresentation(v8, 1u, v52, 1024))
      {
        if (v19)
        {
          return 0;
        }

        goto LABEL_89;
      }

      v9 = v52;
      bufLen = strlen(v52);
    }
  }

LABEL_20:
  memset(&v51, 0, 512);
  v47 = 0;
  if (__CFProphylacticAutofsAccess)
  {
    v45 = open("/dev/autofs_nowait", 0);
  }

  else
  {
    v45 = -1;
  }

  v20 = opendir(v9);
  if (!v20)
  {
    if ((v19 & 1) == 0)
    {
      CFRelease(v12);
    }

    if (v45 != -1)
    {
      close(v45);
    }

    return 0;
  }

  v21 = v20;
  v44 = v19;
  Mutable = CFArrayCreateMutable(v10, 0, &kCFTypeArrayCallBacks);
  v23 = 1;
  if (readdir_r(v21, &v51, &v47))
  {
    goto LABEL_73;
  }

  v42 = v12;
  v24 = v47;
  if (!v47)
  {
    goto LABEL_72;
  }

  v43 = 0;
  do
  {
    v25 = strlen(v24->d_name);
    if (v24->d_name[0] != 46 || v25 != 1 && (v25 != 2 || v24->d_name[1] != 46))
    {
      v26 = usedBufLen;
      if (usedBufLen <= v25)
      {
        if (usedBufLen < 1)
        {
          goto LABEL_52;
        }

        if (v24->d_name[v25 - 1] != 46)
        {
          d_name = v24->d_name;
          if (v18)
          {
            v28 = strchr(d_name, 46);
            if (!v28)
            {
              goto LABEL_69;
            }

            do
            {
              v29 = 0;
              v30 = v28;
              while (1)
              {
                v30 = strchr(v30, 46);
                if (!v30)
                {
                  break;
                }

                if (v18 == ++v29)
                {
                  v29 = v18;
                  break;
                }
              }

              if (v29 == v18)
              {
                v31 = v28;
              }

              else
              {
                v31 = 0;
              }

              v32 = strchr(v28, 46);
              if (!v32)
              {
                break;
              }

              v28 = v32;
            }

            while (!v31);
          }

          else
          {
            v31 = strrchr(d_name, 46);
          }

          if (v31)
          {
            if (buffer != 46)
            {
              ++v31;
            }

            if (strlen(v31) == v26 && !strncmp(v31, &buffer, v26))
            {
LABEL_52:
              if (!v8)
              {
                v43 = 1;
                v8 = CFURLCreateFromFileSystemRepresentation(v10, v9, bufLen, 1u);
                v24 = v47;
              }

              v33 = ((v24->d_type >> 1) | (v24->d_type << 7));
              v34 = v33 > 7;
              v35 = (1 << v33) & 0xA5;
              if (v34 || v35 == 0)
              {
                v37 = 0;
              }

              else if (v24->d_type == 4)
              {
                v37 = 1;
              }

              else
              {
                memset(&v49, 0, sizeof(v49));
                __strlcpy_chk();
                __strlcat_chk();
                __strlcat_chk();
                if (stat(v50, &v49))
                {
                  v38 = 0;
                }

                else
                {
                  v38 = (v49.st_mode & 0xF000) == 0x4000;
                }

                v37 = v38;
                v24 = v47;
              }

              v39 = CFURLCreateFromFileSystemRepresentationRelativeToBase(v10, v24->d_name, v24->d_namlen, v37, v8);
              CFArrayAppendValue(Mutable, v39);
              CFRelease(v39);
            }
          }
        }
      }
    }

LABEL_69:
    if (readdir_r(v21, &v51, &v47))
    {
      break;
    }

    v24 = v47;
  }

  while (v47);
  v23 = v43 == 0;
LABEL_72:
  v12 = v42;
LABEL_73:
  v40 = closedir(v21);
  if (v45 != -1)
  {
    close(v45);
  }

  if (v40)
  {
    CFRelease(Mutable);
    if (!v23)
    {
      CFRelease(v8);
    }

    if (v44)
    {
      return 0;
    }

LABEL_89:
    CFRelease(v12);
    return 0;
  }

  if ((v44 & 1) == 0)
  {
    CFRelease(v12);
  }

  if (!v23)
  {
    CFRelease(v8);
  }

  return Mutable;
}

CFAbsoluteTime CFRunLoopTimerGetNextFireDate(CFRunLoopTimerRef timer)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (CF_IS_OBJC(0x2FuLL, timer))
  {

    [(__CFRunLoopTimer *)timer _cffireTime];
  }

  else
  {
    pthread_mutex_lock((timer + 24));
    v3 = atomic_load(timer + 1);
    v4 = 0.0;
    if ((v3 & 8) != 0)
    {
      v4 = *(timer + 13);
    }

    pthread_mutex_unlock((timer + 24));
    return v4;
  }

  return result;
}

void CFSocketInvalidate(CFSocketRef s)
{
  v33 = *MEMORY[0x1E69E9840];
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketInvalidate_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v2 = _CFGetNonObjCTypeID(s);
  if (v2 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  CFRetain(s);
  os_unfair_lock_lock(&__CFAllSocketsLock);
  pthread_mutex_lock((s + 24));
  v3 = atomic_load(s + 1);
  if ((v3 & 0x10) != 0)
  {
    v4 = atomic_load(s + 1);
    v5 = v4;
    do
    {
      atomic_compare_exchange_strong(s + 1, &v5, v4 & 0xFFFFFFFFFFFFFFEFLL);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
    v7 = atomic_load(s + 1);
    v8 = v7;
    do
    {
      atomic_compare_exchange_strong(s + 1, &v8, v7 & 0xFFFFFFFFFFFFFFBFLL);
      v6 = v8 == v7;
      v7 = v8;
    }

    while (!v6);
    v9 = atomic_load(s + 1);
    v10 = v9;
    do
    {
      atomic_compare_exchange_strong(s + 1, &v10, v9 & 0xFFFFFFFFFFFFFFDFLL);
      v6 = v10 == v9;
      v9 = v10;
    }

    while (!v6);
    os_unfair_lock_lock(&__CFActiveSocketsLock);
    v11 = __CFWriteSockets;
    v34.length = CFArrayGetCount(__CFWriteSockets);
    v34.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v11, v34, s);
    if ((FirstIndexOfValue & 0x80000000) == 0)
    {
      CFArrayRemoveValueAtIndex(__CFWriteSockets, FirstIndexOfValue & 0x7FFFFFFF);
      v13 = *(s + 38);
      if ((v13 & 0x80000000) == 0)
      {
        v14 = __CFWriteSocketsFds;
        if (v13 < 8 * CFDataGetLength(__CFWriteSocketsFds))
        {
          MutableBytePtr = CFDataGetMutableBytePtr(v14);
          if (__darwin_check_fd_set_overflow(v13, MutableBytePtr, 1))
          {
            if ((*&MutableBytePtr[4 * (v13 >> 5)] & (1 << v13)) != 0)
            {
              if (__darwin_check_fd_set_overflow(v13, MutableBytePtr, 1))
              {
                *&MutableBytePtr[4 * (v13 >> 5)] &= ~(1 << v13);
              }

              if (__CFWakeupSocketPair != -1)
              {
                v31 = 120;
                send(__CFWakeupSocketPair, &v31, 1uLL, 0);
              }
            }
          }
        }
      }
    }

    v16 = __CFReadSockets;
    v35.length = CFArrayGetCount(__CFReadSockets);
    v35.location = 0;
    v17 = CFArrayGetFirstIndexOfValue(v16, v35, s);
    if ((v17 & 0x80000000) == 0)
    {
      CFArrayRemoveValueAtIndex(__CFReadSockets, v17 & 0x7FFFFFFF);
      __CFReadSocketsTimeoutInvalid = 0;
      v18 = *(s + 38);
      if ((v18 & 0x80000000) == 0)
      {
        v19 = __CFReadSocketsFds;
        if (v18 < 8 * CFDataGetLength(__CFReadSocketsFds))
        {
          v20 = CFDataGetMutableBytePtr(v19);
          if (__darwin_check_fd_set_overflow(v18, v20, 1))
          {
            if ((*&v20[4 * (v18 >> 5)] & (1 << v18)) != 0)
            {
              if (__darwin_check_fd_set_overflow(v18, v20, 1))
              {
                *&v20[4 * (v18 >> 5)] &= ~(1 << v18);
              }

              if (__CFWakeupSocketPair != -1)
              {
                v32 = 115;
                send(__CFWakeupSocketPair, &v32, 1uLL, 0);
              }
            }
          }
        }
      }
    }

    os_unfair_lock_unlock(&__CFActiveSocketsLock);
    CFDictionaryRemoveValue(__CFAllSockets, *(s + 38));
    if ((*(s + 16) & 0x80) != 0)
    {
      close(*(s + 38));
    }

    *(s + 38) = -1;
    v21 = *(s + 22);
    if (v21)
    {
      CFRelease(v21);
      *(s + 22) = 0;
    }

    v22 = *(s + 32);
    if (v22)
    {
      CFRelease(v22);
      *(s + 32) = 0;
    }

    v23 = *(s + 33);
    if (v23)
    {
      CFRelease(v23);
      *(s + 33) = 0;
    }

    *(s + 46) = 0;
    v24 = CFRetain(*(s + 25));
    CFRelease(*(s + 25));
    v25 = *(s + 24);
    *(s + 24) = 0;
    *(s + 25) = 0;
    v26 = *(s + 28);
    v27 = *(s + 30);
    *(s + 14) = 0u;
    *(s + 15) = 0u;
    pthread_mutex_unlock((s + 24));
    Count = CFArrayGetCount(v24);
    if (Count)
    {
      v29 = Count - 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v24, v29);
        CFRunLoopWakeUp(ValueAtIndex);
        --v29;
      }

      while (v29 != -1);
    }

    CFRelease(v24);
    if (v27)
    {
      v27(v26);
    }

    if (v25)
    {
      CFRunLoopSourceInvalidate(v25);
      CFRelease(v25);
    }
  }

  else
  {
    pthread_mutex_unlock((s + 24));
  }

  os_unfair_lock_unlock(&__CFAllSocketsLock);
  CFRelease(s);
}

void __CFSocketDeallocate(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 168) = 0;
  }

  v3 = *(a1 + 288);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 288) = 0;
  }

  v4 = *(a1 + 328);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 328) = 0;
  }

  *(a1 + 280) = 0;
  *(a1 + 272) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  *(a1 + 320) = 1;
  *(a1 + 324) = 0;
}

void deletionStreamCallback(uint64_t a1, uint64_t a2, uint64_t a3, const __CFArray *a4, uint64_t a5)
{
  v24[5] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(fseventsQueue);
  os_unfair_lock_lock(&dirWatcherLock);
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v10 = &unk_1EA849000;
    do
    {
      if ((~*(a5 + 4 * v8) & 0x20200) == 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a4, v8);
        Value = CFDictionaryGetValue(dirWatcherTargets, ValueAtIndex);
        if (Value)
        {
          v13 = Value;
          v14 = v10;
          Count = CFArrayGetCount(Value);
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              *(CFArrayGetValueAtIndex(v13, i) + 141) = 0;
            }

            v9 = 1;
          }

          v26.location = 0;
          v26.length = Count;
          CFArrayAppendArray(Mutable, v13, v26);
          v10 = v14;
        }

        CFDictionaryRemoveValue(dirWatcherTargets, ValueAtIndex);
        v17 = v10[366];
        v25.length = CFArrayGetCount(v17);
        v25.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v17, v25, ValueAtIndex);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(v10[366], FirstIndexOfValue);
        }
      }

      ++v8;
    }

    while (v8 != a3);
    if (v9)
    {
      _onqueue_locked_CFPrefsRecreateFileWatcher();
    }
  }

  os_unfair_lock_unlock(&dirWatcherLock);
  v19 = CFArrayGetCount(Mutable);
  if (v19 >= 1)
  {
    v20 = v19;
    for (j = 0; j != v20; ++j)
    {
      v22 = CFArrayGetValueAtIndex(Mutable, j);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __deletionStreamCallback_block_invoke;
      v24[3] = &unk_1E6D81EC0;
      v24[4] = v22;
      [v22 lockedSync:v24];
    }
  }

  CFRelease(Mutable);
}

uint64_t __CFAllocatorGetAllocator(uint64_t result)
{
  if (*(result + 128) != 939)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t __CFCharacterSetEqual(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v6 = v4;
  v7 = v3;
  v155 = *MEMORY[0x1E69E9840];
  v8 = atomic_load((v3 + 8));
  v9 = atomic_load((v4 + 8));
  v10 = atomic_load((v3 + 8));
  if ((v10 & 4) != 0)
  {
    v11 = atomic_load((v4 + 8));
    if ((v11 & 4) != 0 && *(v3 + 16) != *(v4 + 16))
    {
      return 0;
    }
  }

  v12 = v9 ^ v8;
  v13 = *(v3 + 40);
  if (!v13 || !*(v13 + 8) && !*(v13 + 13))
  {
    v14 = atomic_load((v3 + 8));
    v15 = (v14 >> 4) & 7;
    if (v15 > 2)
    {
      if (v15 != 3 && v15 != 4 || *(v3 + 24))
      {
        goto LABEL_27;
      }
    }

    else if (v15 != 1 && v15 != 2 || *(v3 + 32))
    {
      goto LABEL_27;
    }

    v16 = *(v4 + 40);
    if (v16 && (*(v16 + 8) || *(v16 + 13)))
    {
      goto LABEL_27;
    }

    v17 = atomic_load((v4 + 8));
    v18 = (v17 >> 4) & 7;
    if (v18 > 2)
    {
      if (v18 != 3 && v18 != 4 || *(v4 + 24))
      {
        goto LABEL_27;
      }
    }

    else if (v18 != 1 && v18 != 2 || *(v4 + 32))
    {
      goto LABEL_27;
    }

    if ((v12 & 8) != 0)
    {
      return 0;
    }
  }

LABEL_27:
  v19 = atomic_load((v3 + 8));
  v20 = atomic_load((v4 + 8));
  if (((v20 ^ v19) & 0x70) != 0 || (v21 = atomic_load((v3 + 8)), (v21 & 0x70) == 0x40))
  {
    v22 = *(v3 + 40);
    if (!v22 || !*(v22 + 8) && !*(v22 + 13))
    {
      v23 = atomic_load((v3 + 8));
      v24 = (v23 >> 4) & 7;
      if (v24 > 2)
      {
        if ((v24 == 3 || v24 == 4) && !*(v3 + 24))
        {
LABEL_123:
          v65 = *(v3 + 40);
          if (!v65 || !*(v65 + 8) && !*(v65 + 13))
          {
            v66 = atomic_load((v3 + 8));
            v67 = (v66 >> 4) & 7;
            if (v67 > 2)
            {
              if ((v67 == 3 || v67 == 4) && !*(v3 + 24))
              {
                goto LABEL_211;
              }
            }

            else if ((v67 == 1 || v67 == 2) && !*(v3 + 32))
            {
LABEL_211:
              v7 = v4;
            }
          }

          v109 = atomic_load(v7 + 1);
          if ((v109 & 0x70) != 0)
          {
            v110 = atomic_load(v7 + 1);
            if ((v110 & 0x70) == 0x10)
            {
              v111 = v7[4];
              if ((v12 & 8) != 0)
              {
                return v111 == 1114112;
              }

              else
              {
                return v111 == 0;
              }
            }

            v113 = v7[5];
            if (v113)
            {
              v114 = *(v113 + 13);
              v115 = *(v113 + 8);
              if (v114)
              {
                if (v115 != 131070)
                {
                  return 0;
                }
              }

              else if (v115)
              {
                return 0;
              }
            }

            v131 = atomic_load(v7 + 1);
            if ((v131 & 0x70) == 0x30)
            {
              v132 = v7[3];
              if (!v132)
              {
                goto LABEL_269;
              }
            }

            else
            {
              v132 = v154;
              __CFCSetGetBitmap(v7, v154);
            }

            if (v132 != -1)
            {
              for (i = 0; i != 2048; ++i)
              {
                if (v132->i32[i])
                {
                  return 0;
                }
              }

LABEL_269:
              v133 = v7[5];
              if (v133 && *(v133 + 13))
              {
                v134 = 1;
                while (1)
                {
                  v135 = atomic_load(v7 + 1);
                  if ((v135 & 0x70) == 0x30)
                  {
                    v136 = v7[5];
                    if (v136 && *(v136 + 13))
                    {
                      v137 = 0;
                    }

                    else
                    {
                      v137 = -1;
                    }

                    result = __CFCSetIsEqualBitmap(v137, v154);
                    if (!result)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    v138 = v7[5];
                    if (v138 && ((*(v138 + 8) >> v134) & 1) != 0 && *(v138 + 12) >= v134)
                    {
                      v139 = *(*v138 + 8 * v134 - 8);
                    }

                    else
                    {
                      v139 = 0;
                    }

                    __CFCSetGetBitmap(v139, v154);
                    if (v154 != -1)
                    {
                      for (j = 0; j != 2048; ++j)
                      {
                        result = 0;
                        v141 = v154[0].i32[j];
                        if (v141 != -1)
                        {
                          return result;
                        }
                      }
                    }
                  }

                  ++v134;
                  result = 1;
                  if (v134 == 16)
                  {
                    return result;
                  }
                }
              }

              return 1;
            }
          }

          return 0;
        }
      }

      else if ((v24 == 1 || v24 == 2) && !*(v3 + 32))
      {
        goto LABEL_123;
      }
    }

    v25 = *(v4 + 40);
    if (!v25 || !*(v25 + 8) && !*(v25 + 13))
    {
      v26 = atomic_load((v4 + 8));
      v27 = (v26 >> 4) & 7;
      if (v27 > 2)
      {
        if ((v27 == 3 || v27 == 4) && !*(v4 + 24))
        {
          goto LABEL_123;
        }
      }

      else if ((v27 == 1 || v27 == 2) && !*(v4 + 32))
      {
        goto LABEL_123;
      }
    }

    v32 = atomic_load((v3 + 8));
    if ((v32 & 0x70) != 0)
    {
      v33 = atomic_load((v4 + 8));
      if ((v33 & 0x70) != 0)
      {
        v34 = atomic_load((v3 + 8));
        if ((v34 & 0x70) == 0x10 || (v35 = atomic_load((v4 + 8)), (v35 & 0x70) == 0x10))
        {
          v36 = atomic_load((v3 + 8));
          if ((v36 & 0x70) == 0x10)
          {
            v37 = v3;
          }

          else
          {
            v37 = v4;
          }

          if (v37 == v3)
          {
            v7 = v4;
          }

          v38 = *(v37 + 24);
          v39 = v38 + *(v37 + 32);
          v40 = atomic_load((v37 + 8));
          v41 = atomic_load(v7 + 1);
          if ((v41 & 0x70) == 0x30)
          {
            v42 = v7[3];
          }

          else
          {
            v42 = v154;
            __CFCSetGetBitmap(v7, v154);
          }

          v76 = (v40 >> 3) & 1;
          v77 = v39 - 1;
          if ((v38 & 0xFF0000) != 0)
          {
            if (v76)
            {
              v78 = -1;
            }

            else
            {
              v78 = 0;
            }

            result = __CFCSetIsEqualBitmap(v42, v78);
            if (!result)
            {
              return result;
            }

            v79 = v38;
            v80 = BYTE2(v38);
          }

          else
          {
            if ((v77 & 0xFF0000) != 0)
            {
              v81 = -1;
            }

            else
            {
              v81 = v39 - 1;
            }

            result = __CFCSetIsBitmapEqualToRange(v42, v38, v81, v76);
            if (!result)
            {
              return result;
            }

            v79 = 0;
            v80 = 1;
          }

          v82 = (v39 - 1);
          v83 = v7[5];
          if (v83)
          {
            LODWORD(v83) = *(v83 + 13) != 0;
          }

          v84 = 0;
          v85 = v83 ^ ((v40 & 0xF8) >> 3);
          v86 = v85 & 1;
          v87 = v85 ^ 1;
          v146 = v79;
          v88 = v79 != 0;
          if (v80 == BYTE2(v77))
          {
            v89 = v39 - 1;
          }

          else
          {
            v89 = -1;
          }

          v145 = v89;
          v147 = v87 << 63 >> 63;
          v148 = v85 << 63 >> 63;
          v152 = v85 & (v82 == 0xFFFF);
          v90 = v82 != 0xFFFF && v80 == BYTE2(v77);
          v150 = v87 | v88 | v90;
          v91 = v80 - 1;
          v92 = BYTE2(v77) - 1;
          while (1)
          {
            v93 = v84 + 1;
            v94 = v7[5];
            if (!v94 || ((*(v94 + 8) >> (v84 + 1)) & 1) == 0 || *(v94 + 12) < v93 || (v95 = *(*v94 + 8 * v84)) == 0)
            {
              if (v93 < v80 || v93 > BYTE2(v77))
              {
                if (v86)
                {
                  return 0;
                }
              }

              else if (v93 <= v80 || v93 >= BYTE2(v77))
              {
                if (v91 == v84)
                {
                  if (v150)
                  {
                    return 0;
                  }
                }

                else if (!((v92 != v84) | v152 & 1))
                {
                  return 0;
                }
              }

              else if ((v86 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_179;
            }

            v96 = atomic_load(v95 + 1);
            if ((v96 & 0x70) == 0x30)
            {
              v97 = v95[3];
            }

            else
            {
              v97 = v154;
              __CFCSetGetBitmap(v95, v154);
            }

            if (v93 < v80 || v93 > BYTE2(v77))
            {
              break;
            }

            if (v93 > v80 && v93 < BYTE2(v77))
            {
              v98 = v97;
              v99 = v147;
              goto LABEL_193;
            }

            if (v91 == v84)
            {
              v100 = v146;
              v101 = v145;
              v102 = v97;
            }

            else
            {
              if (v92 != v84)
              {
                goto LABEL_179;
              }

              v101 = v77;
              v102 = v97;
              v100 = 0;
            }

            result = __CFCSetIsBitmapEqualToRange(v102, v100, v101, v86);
            if (!result)
            {
              return result;
            }

LABEL_179:
            if (++v84 == 15)
            {
              return 1;
            }
          }

          v98 = v97;
          v99 = v148;
LABEL_193:
          result = __CFCSetIsEqualBitmap(v98, v99);
          if (!result)
          {
            return result;
          }

          goto LABEL_179;
        }

        v103 = atomic_load((v3 + 8));
        v104 = v103 & 0x70;
        v105 = atomic_load((v4 + 8));
        v106 = v105 & 0x70;
        if (v104 == 48 && v106 == 48)
        {
          v107 = *(v3 + 24);
          v108 = *(v4 + 24);
        }

        else
        {
          if (v104 == 48 || v106 == 48)
          {
            if (v106 == 48)
            {
              v144 = v3;
            }

            else
            {
              v144 = v4;
            }

            if (v106 == 48)
            {
              v7 = v4;
            }

            __CFCSetGetBitmap(v144, v154);
            result = __CFCSetIsEqualBitmap(v7[3], v154);
            if (!result)
            {
              return result;
            }

            v6 = v144;
            return __CFCSetIsEqualAnnex(v7, v6, v130);
          }

          __CFCSetGetBitmap(v3, v154);
          __CFCSetGetBitmap(v6, __b);
          v107 = v154;
          v108 = __b;
        }

        result = __CFCSetIsEqualBitmap(v107, v108);
        if (!result)
        {
          return result;
        }

        return __CFCSetIsEqualAnnex(v7, v6, v130);
      }
    }

    v43 = atomic_load((v3 + 8));
    if ((v43 & 0x70) != 0)
    {
      v44 = v4;
    }

    else
    {
      v44 = v3;
    }

    if (v44 == v3)
    {
      v7 = v4;
    }

    v45 = atomic_load(v7 + 1);
    if ((v45 & 0x70) == 0x10)
    {
      v46 = 0;
      v47 = *(v7 + 6);
      v48 = v47 + *(v7 + 8);
      v49 = -v48;
      v50 = v48 - 1;
      v51 = (BYTE2(v47) ^ ((v48 - 1) >> 16)) == 0;
      if (v51)
      {
        v52 = v47;
      }

      else
      {
        v52 = 0;
      }

      v151 = v52;
      if (v51)
      {
        v53 = v50;
      }

      else
      {
        v53 = -1;
      }

      v149 = v53;
      v30 = v49 == 0;
      v54 = v49 != 0;
      v55 = !v30 || v51 && v47 != 0;
      v56 = v51 && v54;
      if (v47)
      {
        v57 = 1;
      }

      else
      {
        v57 = v56;
      }

      while (1)
      {
        BitmapForPlane = CFUniCharGetBitmapForPlane(*(v44 + 24), v46, v154, (v12 & 8) == 0);
        if (v46 < BYTE2(v47) || v46 > BYTE2(v50))
        {
          if (BitmapForPlane)
          {
            if (BitmapForPlane == 1)
            {
              return 0;
            }
          }

          else
          {
            if (v154 == -1)
            {
              return 0;
            }

            for (k = 0; k != 2048; ++k)
            {
              if (v154[0].i32[k])
              {
                return 0;
              }
            }
          }
        }

        else if (v46 <= BYTE2(v47) || v46 >= BYTE2(v50))
        {
          if (BitmapForPlane == 1)
          {
            if (v46 == BYTE2(v47))
            {
              if (v57)
              {
                return 0;
              }
            }

            else if (v55)
            {
              return 0;
            }
          }

          else
          {
            if (BitmapForPlane == 255)
            {
              return 0;
            }

            if (v46 == BYTE2(v47))
            {
              v59 = v47;
              v60 = v149;
            }

            else
            {
              v59 = v151;
              v60 = v50;
            }

            result = __CFCSetIsBitmapEqualToRange(v154, v59, v60, 0);
            if (!result)
            {
              return result;
            }
          }
        }

        else if (BitmapForPlane)
        {
          if (BitmapForPlane == 255)
          {
            return 0;
          }
        }

        else if (v154 != -1)
        {
          for (m = 0; m != 2048; ++m)
          {
            result = 0;
            v64 = v154[0].i32[m];
            if (v64 != -1)
            {
              return result;
            }
          }
        }

        ++v46;
        result = 1;
        if (v46 == 16)
        {
          return result;
        }
      }
    }

    v68 = *(v44 + 24);
    v69 = atomic_load((v44 + 8));
    v70 = CFUniCharGetBitmapForPlane(v68, 0, v154, (v69 >> 3) & 1);
    v71 = atomic_load(v7 + 1);
    v72 = v71 & 0x70;
    if (v70)
    {
      v73 = v70;
      if (v72 == 48)
      {
        if (v70 == 1)
        {
          v74 = -1;
        }

        else
        {
          v74 = 0;
        }

        v75 = v7[3];
      }

      else
      {
        __CFCSetGetBitmap(v7, v154);
        if (v73 == 1)
        {
          v74 = -1;
        }

        else
        {
          v74 = 0;
        }

        v75 = v154;
      }
    }

    else if (v72 == 48)
    {
      v75 = v7[3];
      v74 = v154;
    }

    else
    {
      __CFCSetGetBitmap(v7, __b);
      v74 = v154;
      v75 = __b;
    }

    result = __CFCSetIsEqualBitmap(v74, v75);
    if (!result)
    {
      return result;
    }

    v117 = atomic_load((v44 + 8));
    v118 = v7[5];
    if (v118)
    {
      v119 = *(v118 + 13) != 0;
    }

    else
    {
      v119 = 0;
    }

    v120 = 0;
    v121 = (v117 >> 3) & 1;
    while (1)
    {
      v122 = v120 + 1;
      v123 = CFUniCharGetBitmapForPlane(*(v44 + 24), v120 + 1, v154, v121 ^ v119);
      v124 = v7[5];
      if (v124 && ((*(v124 + 8) >> v122) & 1) != 0 && *(v124 + 12) >= v122)
      {
        result = *(*v124 + 8 * v120);
        if (!v123)
        {
LABEL_246:
          if (!result)
          {
            return result;
          }

          v129 = atomic_load((result + 8));
          if ((v129 & 0x70) == 0x30)
          {
            v127 = *(result + 24);
            v128 = v154;
          }

          else
          {
            __CFCSetGetBitmap(result, __b);
            v128 = v154;
            v127 = __b;
          }

LABEL_254:
          result = __CFCSetIsEqualBitmap(v128, v127);
          if (!result)
          {
            return result;
          }

          goto LABEL_255;
        }
      }

      else
      {
        result = 0;
        if (!v123)
        {
          goto LABEL_246;
        }
      }

      if (result)
      {
        v125 = atomic_load((result + 8));
        if ((v125 & 0x70) == 0x30)
        {
          if (v123 == 1)
          {
            v126 = -1;
          }

          else
          {
            v126 = 0;
          }

          v127 = *(result + 24);
          v128 = v126;
        }

        else
        {
          __CFCSetGetBitmap(result, v154);
          if (v123 == 1)
          {
            v128 = -1;
          }

          else
          {
            v128 = 0;
          }

          v127 = v154;
        }

        goto LABEL_254;
      }

      if (v123 == 1)
      {
        return 0;
      }

LABEL_255:
      if (++v120 == 15)
      {
        return 1;
      }
    }
  }

  v28 = atomic_load((v3 + 8));
  v29 = (v28 >> 4) & 7;
  if (v29 <= 1)
  {
    if (!v29)
    {
      return (v12 & 8) == 0 && *(v3 + 24) == *(v4 + 24);
    }

    if (*(v3 + 24) == *(v4 + 24) && *(v3 + 32))
    {
      v30 = (v12 & 8) != 0 || *(v4 + 32) == 0;
      return !v30;
    }

    return 0;
  }

  if (v29 == 2)
  {
    if ((v12 & 8) != 0)
    {
      return 0;
    }

    v116 = *(v3 + 32);
    if (*(v4 + 32) != v116 || memcmp(*(v3 + 24), *(v4 + 24), 2 * v116))
    {
      return 0;
    }
  }

  else if (v29 == 3)
  {
    result = __CFCSetIsEqualBitmap(*(v3 + 24), *(v4 + 24));
    if (!result)
    {
      return result;
    }
  }

  return __CFCSetIsEqualAnnex(v7, v6, v5);
}

uint64_t __CFCSetIsEqualBitmap(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (a1 && a2)
    {
      if (a1 == -1)
      {
        for (i = 0; i != 0x2000; i += 4)
        {
          v9 = *(a2 + i);
          if (v9 != -1)
          {
            return 0;
          }
        }
      }

      else if (a2 == -1)
      {
        for (j = 0; j != 0x2000; j += 4)
        {
          v11 = *(a1 + j);
          if (v11 != -1)
          {
            return 0;
          }
        }
      }

      else
      {
        for (k = 0; k != 0x2000; k += 4)
        {
          v3 = *(a1 + k);
          v4 = *(a2 + k);
          if (v3 != v4)
          {
            return 0;
          }
        }
      }
    }

    else if (a1 | a2)
    {
      if (a2)
      {
        v5 = a2;
      }

      else
      {
        v5 = a1;
      }

      if (v5 == -1)
      {
        return 0;
      }

      for (m = 0; m != 0x2000; m += 4)
      {
        if (*(v5 + m))
        {
          return 0;
        }
      }
    }
  }

  return 1;
}

void __CFBinaryHeapDeallocate(unint64_t *a1)
{
  v2 = CFGetAllocator(a1);
  CFBinaryHeapRemoveAllValues(a1);
  v3 = atomic_load(a1 + 1);
  if ((v3 & 0xC) == 4)
  {
    v4 = a1[14];

    CFAllocatorDeallocate(v2, v4);
  }
}

void CFBinaryHeapRemoveAllValues(CFBinaryHeapRef heap)
{
  v2 = *(heap + 2);
  if (*(heap + 6))
  {
    v3 = v2 < 1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = 0;
    do
    {
      v5 = *(heap + 6);
      v6 = CFGetAllocator(heap);
      v5(v6, *(*(heap + 14) + 8 * v4++));
    }

    while (v2 != v4);
  }

  *(heap + 2) = 0;
}

void *__CFMessagePortCreateRemote(__objc2_class **a1, const __CFString *a2, int a3, unsigned int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  memset(&context, 0, sizeof(context));
  *special_port = 0;
  ptr = 0;
  SanitizedStringName = __CFMessagePortCreateSanitizedStringName(a2, &ptr);
  if (!SanitizedStringName)
  {
    return 0;
  }

  v8 = SanitizedStringName;
  os_unfair_lock_lock(&__CFAllMessagePortsLock);
  if (!a3 && (value = 0, __CFAllRemoteMessagePorts) && CFDictionaryGetValueIfPresent(__CFAllRemoteMessagePorts, v8, &value))
  {
    CFRetain(value);
    os_unfair_lock_unlock(&__CFAllMessagePortsLock);
    CFRelease(v8);
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr);
    IsValid = CFMessagePortIsValid(value);
    v14 = value;
    if (IsValid)
    {
      return v14;
    }
  }

  else
  {
    os_unfair_lock_unlock(&__CFAllMessagePortsLock);
    Instance = _CFRuntimeCreateInstance(a1, 0x23uLL, 104, 0, v9, v10, v11, v12);
    v14 = Instance;
    if (!Instance)
    {
      CFRelease(v8);
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr);
      return v14;
    }

    v15 = atomic_load(Instance + 1);
    v16 = v15;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v16, v15 & 0xFFFFFFFFFFFFFFFELL);
      v17 = v16 == v15;
      v15 = v16;
    }

    while (!v17);
    v18 = atomic_load(Instance + 1);
    v19 = v18;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v19, v18 & 0xFFFFFFFFFFFFFFFDLL);
      v17 = v19 == v18;
      v18 = v19;
    }

    while (!v17);
    v20 = atomic_load(Instance + 1);
    v21 = v20;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v21, v20 | 4);
      v17 = v21 == v20;
      v20 = v21;
    }

    while (!v17);
    *(Instance + 28) = 0;
    Instance[2] = v8;
    Instance[4] = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
    if (a3)
    {
      *(v14 + 11) = a4;
    }

    context.version = 0;
    context.info = v14;
    memset(&context.retain, 0, 24);
    task_get_special_port(*MEMORY[0x1E69E9A60], 4, &special_port[1]);
    if (bootstrap_look_up2())
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr);
    }

    else
    {
      v25 = CFMachPortCreateWithPort(a1, special_port[0], __CFMessagePortDummyCallback, &context, 0);
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr);
      if (v25)
      {
        *(v14 + 3) = v25;
        v26 = atomic_load(v14 + 1);
        v27 = v26;
        do
        {
          atomic_compare_exchange_strong(v14 + 1, &v27, v26 | 1);
          v17 = v27 == v26;
          v26 = v27;
        }

        while (!v17);
        os_unfair_lock_lock(&__CFAllMessagePortsLock);
        if (!a3)
        {
          value = 0;
          if (!__CFAllRemoteMessagePorts)
          {
            goto LABEL_35;
          }

          if (CFDictionaryGetValueIfPresent(__CFAllRemoteMessagePorts, v8, &value))
          {
            CFRetain(value);
            os_unfair_lock_unlock(&__CFAllMessagePortsLock);
            CFRelease(v14);
            return value;
          }

          Mutable = __CFAllRemoteMessagePorts;
          if (!__CFAllRemoteMessagePorts)
          {
LABEL_35:
            Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
            __CFAllRemoteMessagePorts = Mutable;
          }

          CFDictionaryAddValue(Mutable, v8, v14);
        }

        CFRetain(v25);
        os_unfair_lock_unlock(&__CFAllMessagePortsLock);
        CFMachPortSetInvalidationCallBack(v25, __CFMessagePortInvalidationCallBack);
        if (CFMachPortIsValid(v25))
        {
          CFRelease(v25);
          return v14;
        }

        CFRelease(v14);
        v22 = v25;
        goto LABEL_18;
      }
    }
  }

  v22 = v14;
LABEL_18:
  CFRelease(v22);
  return 0;
}

void _CFXPreferencesReplaceValuesInSourceWithBundleIDWithContainer()
{
  if ((_CFPrefsCurrentProcessIsCFPrefsD() & 1) == 0)
  {
    if (qword_1ED40BE20 != -1)
    {
      dispatch_once(&qword_1ED40BE20, &__block_literal_global_263);
    }

    [qword_1ED40BE18 copyPrefs];
  }

  OUTLINED_FUNCTION_10_1();
  [_CFXPreferences replaceValuesInSourceForIdentifier:v0 user:? host:? container:? withValues:?];
}

CFStringRef __CFMessagePortCreateSanitizedStringName(const __CFString *a1, UInt8 **a2)
{
  usedBufLen[1] = *MEMORY[0x1E69E9840];
  usedBufLen[0] = 0;
  Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 0x81uLL, 0xCB2644F9uLL);
  v9.length = CFStringGetLength(a1);
  v9.location = 0;
  CFStringGetBytes(a1, v9, 0x8000100u, 0, 0, Typed, 128, usedBufLen);
  v5 = usedBufLen[0];
  Typed[usedBufLen[0]] = 0;
  if (strlen(Typed) != v5)
  {
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    Typed = 0;
    v6 = 0;
    if (!a2)
    {
      return v6;
    }

LABEL_5:
    *a2 = Typed;
    return v6;
  }

  v6 = CFStringCreateWithBytes(&__kCFAllocatorSystemDefault, Typed, v5, 0x8000100u, 0);
  if (a2)
  {
    goto LABEL_5;
  }

  CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
  return v6;
}

void __CFMessagePortDeallocate(CFMessagePortRef ms)
{
  v2 = atomic_load(ms + 1);
  v3 = v2;
  do
  {
    atomic_compare_exchange_strong(ms + 1, &v3, v2 | 8);
    v4 = v3 == v2;
    v2 = v3;
  }

  while (!v4);
  CFMessagePortInvalidate(ms);
  v5 = *(ms + 4);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(ms + 2);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(ms + 3);
  if (v7)
  {
    Port = CFMachPortGetPort(v7);
    v9 = atomic_load(ms + 1);
    _cfmp_record_deallocation(1u, Port, (v9 & 2) != 0, (v9 & 2) != 0);
    CFMachPortInvalidate(*(ms + 3));
    CFRelease(*(ms + 3));
  }

  os_unfair_lock_lock(&__CFAllMessagePortsLock);
  if (__CFAllRemoteMessagePorts)
  {
    Count = CFDictionaryGetCount(__CFAllRemoteMessagePorts);
    Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * Count, 0x2004093837F09uLL);
    CFDictionaryGetKeysAndValues(__CFAllRemoteMessagePorts, 0, Typed);
    if (Count < 1)
    {
      os_unfair_lock_unlock(&__CFAllMessagePortsLock);
      if (!Typed)
      {
        return;
      }
    }

    else
    {
      v12 = Typed;
      v13 = Count;
      do
      {
        v14 = *v12++;
        CFRetain(v14);
        --v13;
      }

      while (v13);
      os_unfair_lock_unlock(&__CFAllMessagePortsLock);
      v15 = Typed;
      do
      {
        CFMessagePortIsValid(*v15);
        v16 = *v15++;
        CFRelease(v16);
        --Count;
      }

      while (Count);
    }

    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
  }

  else
  {

    os_unfair_lock_unlock(&__CFAllMessagePortsLock);
  }
}

void CFMessagePortInvalidate(CFMessagePortRef ms)
{
  if (ms)
  {
    __CFCheckCFInfoPACSignature(ms);
    v2 = _CFGetNonObjCTypeID(ms);
    if (v2 != 35)
    {
      _CFAssertMismatchedTypeID(0x23uLL, v2);
    }

    v3 = atomic_load(ms + 1);
    if ((v3 & 8) == 0)
    {
      CFRetain(ms);
    }

    os_unfair_lock_lock(ms + 28);
    v4 = atomic_load(ms + 1);
    if (v4)
    {
      v5 = *(ms + 8);
      if (v5)
      {
        dispatch_source_cancel(*(ms + 8));
        *(ms + 8) = 0;
        *(ms + 9) = 0;
      }

      v6 = *(ms + 6);
      v7 = *(ms + 7);
      v8 = *(ms + 10);
      v9 = *(ms + 11);
      v11 = *(ms + 2);
      v10 = *(ms + 3);
      v12 = atomic_load(ms + 1);
      v13 = v12;
      do
      {
        atomic_compare_exchange_strong(ms + 1, &v13, v12 & 0xFFFFFFFFFFFFFFFELL);
        v14 = v13 == v12;
        v12 = v13;
      }

      while (!v14);
      v15 = atomic_load(ms + 1);
      if ((v15 & 4) != 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(ms + 16);
        *(ms + 16) = 0;
      }

      *(ms + 3) = 0;
      *(ms + 10) = 0;
      *(ms + 6) = 0;
      *(ms + 7) = 0;
      os_unfair_lock_unlock(ms + 28);
      os_unfair_lock_lock(&__CFAllMessagePortsLock);
      if (!*(ms + 11) && v11)
      {
        v17 = atomic_load(ms + 1);
        v18 = (v17 & 4) != 0 ? &__CFAllRemoteMessagePorts : &__CFAllLocalMessagePorts;
        if (*v18)
        {
          v19 = atomic_load(ms + 1);
          if ((v19 & 4) != 0)
          {
            v20 = &__CFAllRemoteMessagePorts;
          }

          else
          {
            v20 = &__CFAllLocalMessagePorts;
          }

          CFDictionaryRemoveValue(*v20, v11);
        }
      }

      os_unfair_lock_unlock(&__CFAllMessagePortsLock);
      if (v9)
      {
        v9(ms, v16);
      }

      v21 = atomic_load(ms + 1);
      if ((v21 & 4) == 0)
      {
        v22 = *(ms + 18);
        if (v22)
        {
          v22(v16);
        }
      }

      if (v7)
      {
        CFRunLoopSourceInvalidate(v7);
        CFRelease(v7);
      }

      if (v6)
      {
        CFMachPortInvalidate(v6);
        CFRelease(v6);
      }

      if (v10)
      {
        Port = CFMachPortGetPort(v10);
        v24 = atomic_load(ms + 1);
        if ((v24 & 4) != 0)
        {
          _cfmp_record_deallocation(1u, Port, 1, 0);
        }

        CFMachPortSetInvalidationCallBack(v10, 0);
        v25 = atomic_load(ms + 1);
        _cfmp_record_deallocation(1u, Port, (v25 & 2) != 0, (v25 & 2) != 0);
        CFMachPortInvalidate(v10);
        CFRelease(v10);
      }

      if (v8)
      {
        if (v5)
        {
          dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
        }

        dispatch_release(v8);
      }
    }

    else
    {
      os_unfair_lock_unlock(ms + 28);
    }

    v26 = atomic_load(ms + 1);
    if ((v26 & 8) == 0)
    {

      CFRelease(ms);
    }
  }
}

id *__exceptionPreprocess(id *a1)
{
  if (objectIsKindOfClass(a1, NSException))
  {
    v2 = a1[4];
    if (v2)
    {
      if ([a1[4] objectForKey:@"callStackReturnAddresses"] || objc_msgSend(v2, "objectForKey:", @"callStackSymbols"))
      {
        return a1;
      }
    }

    else
    {
      __CFLookUpClass("NSMutableDictionary");
      v2 = objc_opt_new();
      a1[4] = v2;
    }

    if (([objc_msgSend(objc_msgSend(a1 "userInfo")] & 1) == 0)
    {
      v3 = __CFLookUpClass("NSThread");
      v4 = [(objc_class *)v3 callStackReturnAddresses];
      v5 = [(objc_class *)v3 callStackSymbols];
      if (v4)
      {
        [v2 setObject:v4 forKey:@"callStackReturnAddresses"];
      }

      if (v5)
      {
        [v2 setObject:v5 forKey:@"callStackSymbols"];
      }
    }
  }

  return a1;
}

uint64_t objectIsKindOfClass(void *a1, objc_class *a2)
{
  if (a1)
  {
    v3 = a1;
    Class = object_getClass(a1);
    if (class_respondsToSelector(Class, sel_isKindOfClass_))
    {
      LOBYTE(a1) = objc_opt_isKindOfClass();
    }

    else
    {
      Superclass = object_getClass(v3);
      for (LOBYTE(a1) = Superclass != 0; Superclass != a2 && Superclass; LOBYTE(a1) = Superclass != 0)
      {
        Superclass = class_getSuperclass(Superclass);
      }
    }
  }

  return a1 & 1;
}

CFRunLoopSourceRef CFSocketCreateRunLoopSource(CFAllocatorRef allocator, CFSocketRef s, CFIndex order)
{
  v14 = *MEMORY[0x1E69E9840];
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketCreateRunLoopSource_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v6 = _CFGetNonObjCTypeID(s);
  if (v6 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v6);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((s + 24));
  v7 = atomic_load(s + 1);
  if ((v7 & 0x10) != 0)
  {
    v9 = *(s + 24);
    if (v9)
    {
      IsValid = CFRunLoopSourceIsValid(v9);
      v11 = *(s + 24);
      if (IsValid)
      {
        if (v11)
        {
LABEL_16:
          CFRetain(v11);
          v8 = *(s + 24);
          goto LABEL_17;
        }
      }

      else
      {
        CFRelease(v11);
        *(s + 24) = 0;
      }
    }

    context.version = 0;
    context.info = s;
    context.retain = CFRetain;
    context.release = CFRelease;
    context.copyDescription = CFCopyDescription;
    context.equal = CFEqual;
    context.hash = CFHash;
    context.schedule = __CFSocketSchedule;
    context.cancel = __CFSocketCancel;
    context.perform = __CFSocketPerformV0;
    v11 = CFRunLoopSourceCreate(allocator, order, &context);
    *(s + 24) = v11;
    goto LABEL_16;
  }

  v8 = 0;
LABEL_17:
  pthread_mutex_unlock((s + 24));
  return v8;
}

Boolean CFRunLoopSourceIsValid(CFRunLoopSourceRef source)
{
  __CFCheckCFInfoPACSignature(source);
  v2 = _CFGetNonObjCTypeID(source);
  if (v2 != 46)
  {
    _CFAssertMismatchedTypeID(0x2EuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v3 = atomic_load(source + 1);
  return (v3 >> 3) & 1;
}

uint64_t __CFSocketCancel(uint64_t a1, const void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 184) - 1;
  *(a1 + 184) = v4;
  if (!v4)
  {
    os_unfair_lock_lock(&__CFActiveSocketsLock);
    v5 = __CFWriteSockets;
    v22.length = CFArrayGetCount(__CFWriteSockets);
    v22.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v22, a1);
    if ((FirstIndexOfValue & 0x80000000) == 0)
    {
      CFArrayRemoveValueAtIndex(__CFWriteSockets, FirstIndexOfValue & 0x7FFFFFFF);
      v7 = *(a1 + 152);
      if ((v7 & 0x80000000) == 0)
      {
        v8 = __CFWriteSocketsFds;
        if (v7 < 8 * CFDataGetLength(__CFWriteSocketsFds))
        {
          MutableBytePtr = CFDataGetMutableBytePtr(v8);
          if (__darwin_check_fd_set_overflow(v7, MutableBytePtr, 1))
          {
            if ((*&MutableBytePtr[4 * (v7 >> 5)] & (1 << v7)) != 0)
            {
              if (__darwin_check_fd_set_overflow(v7, MutableBytePtr, 1))
              {
                *&MutableBytePtr[4 * (v7 >> 5)] &= ~(1 << v7);
              }

              if (__CFWakeupSocketPair != -1)
              {
                v19 = 120;
                send(__CFWakeupSocketPair, &v19, 1uLL, 0);
              }
            }
          }
        }
      }
    }

    v10 = __CFReadSockets;
    v23.length = CFArrayGetCount(__CFReadSockets);
    v23.location = 0;
    v11 = CFArrayGetFirstIndexOfValue(v10, v23, a1);
    if ((v11 & 0x80000000) == 0)
    {
      CFArrayRemoveValueAtIndex(__CFReadSockets, v11 & 0x7FFFFFFF);
      __CFReadSocketsTimeoutInvalid = 0;
      v12 = *(a1 + 152);
      if ((v12 & 0x80000000) == 0)
      {
        v13 = __CFReadSocketsFds;
        if (v12 < 8 * CFDataGetLength(__CFReadSocketsFds))
        {
          v14 = CFDataGetMutableBytePtr(v13);
          if (__darwin_check_fd_set_overflow(v12, v14, 1))
          {
            if ((*&v14[4 * (v12 >> 5)] & (1 << v12)) != 0)
            {
              if (__darwin_check_fd_set_overflow(v12, v14, 1))
              {
                *&v14[4 * (v12 >> 5)] &= ~(1 << v12);
              }

              if (__CFWakeupSocketPair != -1)
              {
                v20 = 115;
                send(__CFWakeupSocketPair, &v20, 1uLL, 0);
              }
            }
          }
        }
      }
    }

    os_unfair_lock_unlock(&__CFActiveSocketsLock);
  }

  v15 = *(a1 + 200);
  if (v15)
  {
    MutableCopy = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, *(a1 + 200));
    v24.length = CFArrayGetCount(MutableCopy);
    v24.location = 0;
    v17 = CFArrayGetFirstIndexOfValue(MutableCopy, v24, a2);
    if ((v17 & 0x80000000) == 0)
    {
      CFArrayRemoveValueAtIndex(MutableCopy, v17 & 0x7FFFFFFF);
    }

    *(a1 + 200) = MutableCopy;
    CFRelease(v15);
  }

  return pthread_mutex_unlock((a1 + 24));
}

uint64_t __CFStorageFindByte(char *cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, void *a6, int a7)
{
  v9 = a2;
  v10 = cf;
  if ((*(a2 + 13) & 1) == 0)
  {
    while (1)
    {
      v12 = a3;
      v14 = v9 + 16;
      v13 = *(v9 + 16);
      v15 = a3 < *v13;
      a3 -= *v13;
      if (v15)
      {
        break;
      }

      v13 = *(v9 + 24);
      if (a3 < *v13)
      {
        v16 = 1;
LABEL_7:
        v9 = v13;
        if (a7)
        {
          goto LABEL_10;
        }

        goto LABEL_48;
      }

      v9 = *(v9 + 32);
      v16 = 2;
      a3 -= *v13;
      if (a7)
      {
LABEL_10:
        if (*(v9 + 12) == 1)
        {
          if (*(v9 + 8) == 1)
          {
            *(v9 + 12) = 0;
          }

          else
          {
            v17 = CFGetAllocator(v10);
            Node = __CFStorageCreateNode(v17, v10, *(v9 + 13), *v9);
            v19 = Node;
            if (*(v9 + 13) == 1)
            {
              v20 = *(v9 + 24);
              if (v20)
              {
                v21 = *Node;
                if (*Node <= *MEMORY[0x1E69E9AC8] / 2)
                {
                  v29 = v21 + 63;
                  if (v21 < -63)
                  {
                    v29 = v21 + 126;
                  }

                  v23 = v29 & 0xFFFFFFFFFFFFFFC0;
                }

                else
                {
                  v22 = (v21 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
                  if (*(v10 + 17) >= v22)
                  {
                    v23 = v22;
                  }

                  else
                  {
                    v23 = *(v10 + 17);
                  }
                }

                if (v23 > Node[2])
                {
                  pthread_mutex_lock((cf + 32));
                  if (v23 > v19[2])
                  {
                    v19[3] = __CFSafelyReallocateWithAllocatorTyped(v17, v19[3], v23, 864523722, 0);
                    if (__CFOASafe == 1)
                    {
                      __CFSetLastAllocationEventName();
                    }

                    v19[2] = v23;
                  }

                  pthread_mutex_unlock((cf + 32));
                  v20 = *(v9 + 24);
                  v21 = *v19;
                }

                memmove(v19[3], v20, v21);
                v10 = cf;
              }
            }

            else
            {
              v24 = *(v9 + 16);
              if (*(v24 + 8))
              {
                atomic_fetch_add_explicit((v24 + 8), 1u, memory_order_relaxed);
              }

              Node[2] = v24;
              v25 = *(v9 + 24);
              if (v25)
              {
                if (*(v25 + 8))
                {
                  atomic_fetch_add_explicit((v25 + 8), 1u, memory_order_relaxed);
                }

                Node[3] = v25;
              }

              v26 = *(v9 + 32);
              if (v26)
              {
                if (*(v26 + 8))
                {
                  atomic_fetch_add_explicit((v26 + 8), 1u, memory_order_relaxed);
                }

                Node[4] = v26;
              }

              if (*(v9 + 12) == 1)
              {
                *(Node[2] + 12) = 1;
                v27 = Node[3];
                if (v27)
                {
                  *(v27 + 12) = 1;
                }

                v28 = Node[4];
                if (v28)
                {
                  *(v28 + 12) = 1;
                }
              }
            }

            *(v14 + 8 * v16) = v19;
            if (*(v9 + 8) && atomic_fetch_add_explicit((v9 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
            {
              __CFStorageDeallocateNode(v10, v9);
            }

            v9 = v19;
          }
        }
      }

LABEL_48:
      a4 = a4 + v12 - a3;
      if (*(v9 + 13))
      {
        goto LABEL_49;
      }
    }

    v16 = 0;
    a3 = v12;
    goto LABEL_7;
  }

LABEL_49:
  v30 = *v9;
  *a6 = a4;
  a6[1] = v30;
  *a5 = v9;
  v31 = CFGetAllocator(v10);
  v32 = *v9;
  if (*v9 <= *MEMORY[0x1E69E9AC8] / 2)
  {
    v35 = v32 + 63;
    v15 = v32 < -63;
    v36 = v32 + 126;
    if (!v15)
    {
      v36 = v35;
    }

    v34 = v36 & 0xFFFFFFFFFFFFFFC0;
  }

  else
  {
    v33 = (v32 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
    if (*(v10 + 17) >= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = *(v10 + 17);
    }
  }

  if (v34 > *(v9 + 16))
  {
    pthread_mutex_lock((v10 + 32));
    if (v34 > *(v9 + 16))
    {
      *(v9 + 24) = __CFSafelyReallocateWithAllocatorTyped(v31, *(v9 + 24), v34, 864523722, 0);
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      *(v9 + 16) = v34;
    }

    pthread_mutex_unlock((v10 + 32));
  }

  return *(v9 + 24) + a3;
}

uint64_t createPair(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  pthread_mutex_lock(&CFNetworkSupport);
  if ((dword_1EA846F70 & 1) == 0)
  {
    initializeCFNetworkSupport();
  }

  pthread_mutex_unlock(&CFNetworkSupport);
  v14 = off_1EA846F78;

  return (v14)(a1, a2, a3, a4, a5, a6, a7);
}

Boolean CFReadStreamSetProperty(CFReadStreamRef stream, CFStreamPropertyKey propertyName, CFTypeRef propertyValue)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {
    return [(__CFReadStream *)stream setProperty:propertyValue forKey:propertyName];
  }

  v7 = *(*(stream + 6) + 104);
  if (!v7)
  {
    return 0;
  }

  *(stream + 2) |= 0x40uLL;
  result = v7(stream, propertyName, propertyValue, *(stream + 5));
  *(stream + 2) &= ~0x40uLL;
  return result;
}

void __CFSocketManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3);
  pthread_setname_np("com.apple.CFSocket.private");
  Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 4uLL, 0x100004052888210uLL);
  v4 = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 4uLL, 0x100004052888210uLL);
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  v6 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  v164 = 0;
  v7 = 0;
  v170 = 0uLL;
  v169.tv_sec = 0;
  *&v169.tv_usec = 0;
  v8 = &unk_1EA849000;
  v159 = 1;
  theArray = v6;
  while (1)
  {
    while (1)
    {
      os_unfair_lock_lock(&__CFActiveSocketsLock);
      ++__CFSocketManagerIteration;
      v9 = 8 * CFDataGetLength(__CFReadSocketsFds);
      v10 = 8 * CFDataGetLength(__CFWriteSocketsFds);
      if (v9 <= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v9;
      }

      v12 = v159;
      if (v11 > 32 * v159)
      {
        v13 = (v11 + 31) >> 5;
        Typed = __CFSafelyReallocateWithAllocatorTyped(&__kCFAllocatorSystemDefault, Typed, 4 * v13, 1384677904, 0);
        v14 = __CFSafelyReallocateWithAllocatorTyped(&__kCFAllocatorSystemDefault, v4, 4 * v13, 1384677904, 0);
        v12 = v13;
        v4 = v14;
      }

      v159 = v12;
      v15 = 4 * v12;
      bzero(Typed, v15);
      bzero(v4, v15);
      v16 = __CFWriteSocketsFds;
      v177.length = CFDataGetLength(__CFWriteSocketsFds);
      v177.location = 0;
      CFDataGetBytes(v16, v177, Typed);
      v17 = __CFReadSocketsFds;
      v178.length = CFDataGetLength(__CFReadSocketsFds);
      v178.location = 0;
      CFDataGetBytes(v17, v178, v4);
      if ((__CFReadSocketsTimeoutInvalid & 1) == 0)
      {
        *&context[0].sa_len = 0;
        __CFReadSocketsTimeoutInvalid = 1;
        v18 = *(v8 + 483);
        v179.length = CFArrayGetCount(v18);
        v179.location = 0;
        CFArrayApplyFunction(v18, v179, _calcMinTimeout_locked, context);
        if (*&context[0].sa_len)
        {
          v170 = **&context[0].sa_len;
          v164 = &v170;
        }

        else
        {
          v164 = 0;
        }
      }

      if (v164)
      {
        gettimeofday(&v169, 0);
      }

      os_unfair_lock_unlock(&__CFActiveSocketsLock);
      v163 = Typed;
      v165 = select_DARWIN_EXTSN();
      if (!v165)
      {
        *&context[0].sa_data[6] = 0;
        *&context[0].sa_len = 0;
        gettimeofday(context, 0);
        os_unfair_lock_lock(&__CFActiveSocketsLock);
        Count = CFArrayGetCount(*(v8 + 483));
        if (Count >= 1)
        {
          v20 = 0;
          MutableBytePtr = 0;
          v22 = Count & 0x7FFFFFFF;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 483), v20);
            if (*(ValueAtIndex + 34) || ValueAtIndex[70] || *(ValueAtIndex + 41))
            {
              v24 = ValueAtIndex[38];
              if ((v24 & 0x80000000) == 0 && v24 < v11)
              {
                CFArraySetValueAtIndex(v6, v7, ValueAtIndex);
                if (!MutableBytePtr)
                {
                  MutableBytePtr = CFDataGetMutableBytePtr(__CFReadSocketsFds);
                }

                ++v7;
                if (__darwin_check_fd_set_overflow(v24, MutableBytePtr, 1))
                {
                  *&MutableBytePtr[(v24 >> 3) & 0x1FFFFFFC] &= ~(1 << v24);
                }
              }
            }

            ++v20;
          }

          while (v22 != v20);
        }

        os_unfair_lock_unlock(&__CFActiveSocketsLock);
        Typed = v163;
      }

      if (v165 < 0)
      {
        break;
      }

      v25 = HIDWORD(__CFWakeupSocketPair);
      if (__darwin_check_fd_set_overflow(SHIDWORD(__CFWakeupSocketPair), v4, 1) && ((*&v4[(v25 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v25) & 1) != 0)
      {
        recv(SHIDWORD(__CFWakeupSocketPair), v171, 0x100uLL, 0);
      }

      v166 = v11;
      os_unfair_lock_lock(&__CFActiveSocketsLock);
      v26 = CFArrayGetCount(__CFWriteSockets);
      if (v26 < 1)
      {
        idx = 0;
      }

      else
      {
        v27 = 0;
        v28 = 0;
        idx = 0;
        v29 = v26 & 0x7FFFFFFF;
        v160 = v29;
        do
        {
          v30 = CFArrayGetValueAtIndex(__CFWriteSockets, v27);
          v31 = v30[38];
          if ((v31 & 0x80000000) == 0 && v31 < v166)
          {
            v32 = v30;
            if (__darwin_check_fd_set_overflow(v30[38], v163, 1))
            {
              if ((*(v163 + (v31 >> 5)) & (1 << v31)) != 0)
              {
                CFArraySetValueAtIndex(Mutable, idx, v32);
                if (!v28)
                {
                  v28 = CFDataGetMutableBytePtr(__CFWriteSocketsFds);
                }

                ++idx;
                if (__darwin_check_fd_set_overflow(v31, v28, 1))
                {
                  *&v28[4 * (v31 >> 5)] &= ~(1 << v31);
                }

                v8 = &unk_1EA849000;
                v29 = v160;
              }

              else
              {
                v8 = &unk_1EA849000;
              }
            }
          }

          ++v27;
        }

        while (v29 != v27);
      }

      v46 = CFArrayGetCount(*(v8 + 483));
      v168.tv_sec = 0;
      *&v168.tv_usec = 0;
      if (v164)
      {
        gettimeofday(&v168, 0);
      }

      if (v46 >= 1)
      {
        v47 = 0;
        v48 = 0;
        v49 = v46 & 0x7FFFFFFF;
        do
        {
          v50 = v7;
          v51 = CFArrayGetValueAtIndex(*(v8 + 483), v47);
          v52 = v51;
          v53 = *(v51 + 38);
          v55 = (v53 & 0x80000000) == 0 && v53 < v166;
          v51[352] = 0;
          if (v165 && v164 && v55 && (!__darwin_check_fd_set_overflow(v53, v4, 1) || ((*&v4[(v53 >> 3) & 0x1FFFFFFC] >> v53) & 1) == 0))
          {
            v56 = *(v52 + 42);
            if (v56 || *(v52 + 86))
            {
              v57 = v168.tv_sec <= v56;
              if (v168.tv_sec == v56)
              {
                v57 = v168.tv_usec <= *(v52 + 86);
              }

              if (!v57)
              {
                v52[352] = 1;
              }
            }
          }

          if (v55 && (__darwin_check_fd_set_overflow(v53, v4, 1) && ((*&v4[(v53 >> 3) & 0x1FFFFFFC] >> v53) & 1) != 0 || v52[352]))
          {
            CFArraySetValueAtIndex(theArray, v50, v52);
            if (!v48)
            {
              v48 = CFDataGetMutableBytePtr(__CFReadSocketsFds);
            }

            v7 = v50 + 1;
            if (__darwin_check_fd_set_overflow(v53, v48, 1))
            {
              *&v48[4 * (v53 >> 5)] &= ~(1 << v53);
            }
          }

          else
          {
            v7 = v50;
          }

          ++v47;
        }

        while (v49 != v47);
      }

      os_unfair_lock_unlock(&__CFActiveSocketsLock);
      v58 = idx;
      v167 = v7;
      if (idx >= 1)
      {
        v59 = 0;
        while (1)
        {
          v60 = CFArrayGetValueAtIndex(Mutable, v59);
          if (&__kCFNull != v60)
          {
            break;
          }

LABEL_107:
          if (++v59 == v58)
          {
            goto LABEL_125;
          }
        }

        v61 = v60;
        *&context[0].sa_len = 0;
        *&v176[0].sa_len = 4;
        if (!CFSocketIsValid(v60))
        {
LABEL_106:
          CFArraySetValueAtIndex(Mutable, v59, &__kCFNull);
          goto LABEL_107;
        }

        if ((v61[2] & 0x40) != 0 || getsockopt(*(v61 + 38), 0xFFFF, 4103, context, &v176[0].sa_len))
        {
          *&context[0].sa_len = 0;
        }

        pthread_mutex_lock((v61 + 3));
        v62 = atomic_load(v61 + 1);
        v63 = atomic_load(v61 + 1);
        if ((v63 & 0x10) == 0)
        {
          goto LABEL_105;
        }

        v64 = 8;
        if ((v61[2] & 4) == 0)
        {
          v64 = 12;
        }

        if ((~(*(v61 + 4) >> 8) & v64 & v62) == 0)
        {
LABEL_105:
          pthread_mutex_unlock((v61 + 3));
          goto LABEL_106;
        }

        *(v61 + 40) = *&context[0].sa_len;
        v65 = atomic_load(v61 + 1);
        v66 = v65;
        do
        {
          atomic_compare_exchange_strong(v61 + 1, &v66, v65 | 0x40);
          v67 = v66 == v65;
          v65 = v66;
        }

        while (!v67);
        CFRunLoopSourceSignal(v61[24]);
        v68 = CFRetain(v61[25]);
        MutableCopy = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v61[25]);
        v70 = v61[24];
        if (v70)
        {
          if (CFRunLoopSourceIsValid(v61[24]))
          {
            CFRetain(v70);
            v71 = 0;
LABEL_117:
            pthread_mutex_unlock((v61 + 3));
            v72 = __CFSocketCopyRunLoopToWakeUp(v70, MutableCopy);
            if ((v71 & 1) == 0)
            {
              CFRelease(v70);
            }

            if (v72)
            {
              CFRunLoopWakeUp(v72);
              CFRelease(v72);
            }

            pthread_mutex_lock((v61 + 3));
            v7 = v167;
            v58 = idx;
            if (v68 == v61[25])
            {
              v61[25] = MutableCopy;
              CFRelease(v68);
              MutableCopy = 0;
            }

            pthread_mutex_unlock((v61 + 3));
            CFRelease(v68);
            if (MutableCopy)
            {
              CFRelease(MutableCopy);
            }

            goto LABEL_106;
          }

          v70 = 0;
        }

        v71 = 1;
        goto LABEL_117;
      }

LABEL_125:
      v6 = theArray;
      if (v7 >= 1)
      {
        v73 = 0;
        while (1)
        {
          v74 = CFArrayGetValueAtIndex(v6, v73);
          if (&__kCFNull != v74)
          {
            break;
          }

LABEL_241:
          if (++v73 == v7)
          {
            goto LABEL_276;
          }
        }

        v75 = v74;
        if (v165)
        {
          v76 = *(v74 + 352) == 0;
        }

        else
        {
          v76 = 0;
        }

        if (!CFSocketIsValid(v74))
        {
          goto LABEL_240;
        }

        v77 = atomic_load(v75 + 1);
        if ((~v77 & 3) == 0)
        {
          v172 = 256;
          if (*(v75 + 39) == 1)
          {
            v78 = *(v75 + 38);
            v79 = context;
            v80 = context;
            v81 = 0x8000;
            goto LABEL_141;
          }

          v79 = malloc_type_malloc(0xFFFFuLL, 0x100004077774924uLL);
          if (!v79)
          {
            goto LABEL_154;
          }

          v78 = *(v75 + 38);
          v80 = v79;
          v81 = 0xFFFFLL;
LABEL_141:
          v89 = recvfrom(v78, v80, v81, 0, &v173, &v172);
          if (v89 > 0)
          {
            v90 = CFGetAllocator(v75);
            v91 = CFDataCreate(v90, &v79->sa_len, v89 & 0x7FFFFFFF);
            v92 = 1;
          }

          else
          {
LABEL_154:
            v99 = CFGetAllocator(v75);
            v91 = CFDataCreate(v99, 0, 0);
            v92 = 0;
          }

          if (v79 && v79 != context)
          {
            free(v79);
          }

          pthread_mutex_lock((v75 + 3));
          v100 = atomic_load(v75 + 1);
          if ((v100 & 0x10) == 0)
          {
            CFRelease(v91);
            pthread_mutex_unlock((v75 + 3));
            v6 = theArray;
            goto LABEL_160;
          }

          v101 = atomic_load(v75 + 1);
          v102 = v101;
          do
          {
            atomic_compare_exchange_strong(v75 + 1, &v102, v101 | 0x20);
            v67 = v102 == v101;
            v101 = v102;
          }

          while (!v67);
          if (v172 >= 1)
          {
            v103 = CFGetAllocator(v75);
            v104 = CFDataCreate(v103, &v173.sa_len, v172);
            goto LABEL_170;
          }

          if (*(v75 + 39) == 1)
          {
            v105 = v75[22];
            if (v105)
            {
LABEL_169:
              v104 = CFRetain(v105);
LABEL_170:
              v106 = v104;
              if (!v104)
              {
                goto LABEL_171;
              }

LABEL_172:
              v108 = v75[32];
              if (!v108)
              {
                v109 = CFGetAllocator(v75);
                v108 = CFArrayCreateMutable(v109, 0, &kCFTypeArrayCallBacks);
                v75[32] = v108;
              }

              if (!v75[33])
              {
                v110 = CFGetAllocator(v75);
                v75[33] = CFArrayCreateMutable(v110, 0, &kCFTypeArrayCallBacks);
                v108 = v75[32];
              }

              CFArrayAppendValue(v108, v91);
              CFRelease(v91);
              CFArrayAppendValue(v75[33], v106);
              CFRelease(v106);
              v6 = theArray;
              if (v92)
              {
                v111 = *(v75 + 4);
                if ((v111 & 3) != 0 && (v111 & 0x300) == 0 && *(v75 + 46) >= 1)
                {
                  os_unfair_lock_lock(&__CFActiveSocketsLock);
                  __CFReadSocketsTimeoutInvalid = 0;
                  v112 = *(v75 + 38);
                  if ((v112 & 0x80000000) == 0)
                  {
                    v113 = __CFReadSocketsFds;
                    v114 = 8 * CFDataGetLength(__CFReadSocketsFds);
                    if (v114 <= v112)
                    {
                      v130 = v114 >> 5;
                      v131 = 4 * (((v112 + 32) >> 5) - (v114 >> 5));
                      CFDataIncreaseLength(v113, v131);
                      v115 = CFDataGetMutableBytePtr(v113);
                      bzero(&v115[4 * v130], v131);
                    }

                    else
                    {
                      v115 = CFDataGetMutableBytePtr(v113);
                    }

                    if (!__darwin_check_fd_set_overflow(v112, v115, 1) || ((*&v115[(v112 >> 3) & 0x1FFFFFFC] >> v112) & 1) == 0)
                    {
                      if (__darwin_check_fd_set_overflow(v112, v115, 1))
                      {
                        *&v115[4 * (v112 >> 5)] |= 1 << v112;
                      }

                      v132 = __CFWakeupSocketPair;
                      if (__CFWakeupSocketPair != -1)
                      {
                        v176[0].sa_len = 114;
                        v133 = v176;
                        goto LABEL_225;
                      }
                    }
                  }

                  goto LABEL_226;
                }
              }

              goto LABEL_227;
            }

            v175 = 256;
            v129 = atomic_load(v75 + 1);
            v105 = v75[22];
            if ((v129 & 0x10) != 0)
            {
              if (v105)
              {
                goto LABEL_169;
              }

              v145 = *(v75 + 38);
              if (v145 != -1)
              {
                if (getpeername(v145, v176, &v175) || v175 <= 0)
                {
                  v105 = v75[22];
                }

                else
                {
                  v146 = CFGetAllocator(v75);
                  v105 = CFDataCreate(v146, &v176[0].sa_len, v175);
                  v75[22] = v105;
                }

                goto LABEL_207;
              }
            }

            else
            {
LABEL_207:
              if (v105)
              {
                goto LABEL_169;
              }
            }
          }

LABEL_171:
          v107 = CFGetAllocator(v75);
          v106 = CFDataCreate(v107, 0, 0);
          goto LABEL_172;
        }

        v82 = atomic_load(v75 + 1);
        if ((v82 & 3) == 2)
        {
          *&v176[0].sa_len = 256;
          v83 = accept(*(v75 + 38), context, &v176[0].sa_len);
          if (v83 != -1)
          {
            v84 = v83;
            v85 = *&v176[0].sa_len;
            v86 = CFGetAllocator(v75);
            if (v85 < 1)
            {
              v88 = 0;
              v87 = 0;
            }

            else
            {
              v87 = *&v176[0].sa_len;
              v88 = context;
            }

            v116 = CFDataCreate(v86, &v88->sa_len, v87);
            pthread_mutex_lock((v75 + 3));
            v117 = atomic_load(v75 + 1);
            if ((v117 & 0x10) == 0)
            {
              close(v84);
              CFRelease(v116);
              goto LABEL_186;
            }

            v118 = atomic_load(v75 + 1);
            v119 = v118;
            do
            {
              atomic_compare_exchange_strong(v75 + 1, &v119, v118 | 0x20);
              v67 = v119 == v118;
              v118 = v119;
            }

            while (!v67);
            v120 = v75[32];
            if (!v120)
            {
              v121 = CFGetAllocator(v75);
              v120 = CFArrayCreateMutable(v121, 0, 0);
              v75[32] = v120;
            }

            if (!v75[33])
            {
              v122 = CFGetAllocator(v75);
              v75[33] = CFArrayCreateMutable(v122, 0, &kCFTypeArrayCallBacks);
              v120 = v75[32];
            }

            CFArrayAppendValue(v120, v84);
            CFArrayAppendValue(v75[33], v116);
            CFRelease(v116);
            if ((v75[2] & 0x202) == 2 && *(v75 + 46) >= 1)
            {
              os_unfair_lock_lock(&__CFActiveSocketsLock);
              __CFReadSocketsTimeoutInvalid = 0;
              v123 = *(v75 + 38);
              if ((v123 & 0x80000000) == 0)
              {
                v124 = __CFReadSocketsFds;
                v125 = 8 * CFDataGetLength(__CFReadSocketsFds);
                if (v125 <= v123)
                {
                  v134 = v125 >> 5;
                  v135 = 4 * (((v123 + 32) >> 5) - (v125 >> 5));
                  CFDataIncreaseLength(v124, v135);
                  v126 = CFDataGetMutableBytePtr(v124);
                  bzero(&v126[4 * v134], v135);
                }

                else
                {
                  v126 = CFDataGetMutableBytePtr(v124);
                }

                if (!__darwin_check_fd_set_overflow(v123, v126, 1) || ((*&v126[(v123 >> 3) & 0x1FFFFFFC] >> v123) & 1) == 0)
                {
                  if (__darwin_check_fd_set_overflow(v123, v126, 1))
                  {
                    *&v126[4 * (v123 >> 5)] |= 1 << v123;
                  }

                  v132 = __CFWakeupSocketPair;
                  if (__CFWakeupSocketPair != -1)
                  {
                    v173.sa_len = 114;
                    v133 = &v173;
LABEL_225:
                    send(v132, v133, 1uLL, 0);
                  }
                }
              }

LABEL_226:
              os_unfair_lock_unlock(&__CFActiveSocketsLock);
            }

LABEL_227:
            CFRunLoopSourceSignal(v75[24]);
            v136 = CFRetain(v75[25]);
            v137 = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v75[25]);
            v138 = v75[24];
            if (v138)
            {
              if (CFRunLoopSourceIsValid(v75[24]))
              {
                CFRetain(v138);
                v139 = 0;
                goto LABEL_232;
              }

              v138 = 0;
            }

            v139 = 1;
LABEL_232:
            pthread_mutex_unlock((v75 + 3));
            v140 = __CFSocketCopyRunLoopToWakeUp(v138, v137);
            if ((v139 & 1) == 0)
            {
              CFRelease(v138);
            }

            if (v140)
            {
              CFRunLoopWakeUp(v140);
              CFRelease(v140);
            }

            pthread_mutex_lock((v75 + 3));
            v7 = v167;
            if (v136 == v75[25])
            {
              v75[25] = v137;
              CFRelease(v136);
              v137 = 0;
            }

            pthread_mutex_unlock((v75 + 3));
            CFRelease(v136);
            if (v137)
            {
              CFRelease(v137);
            }
          }

LABEL_240:
          CFArraySetValueAtIndex(v6, v73, &__kCFNull);
          goto LABEL_241;
        }

        pthread_mutex_lock((v75 + 3));
        v93 = atomic_load(v75 + 1);
        if (v93 & 0x10) == 0 || (*(v75 + 17))
        {
          pthread_mutex_unlock((v75 + 3));
          goto LABEL_240;
        }

        if (v76)
        {
          v94 = v75[37];
          if (!v94)
          {
            goto LABEL_202;
          }

          if (*(v75 + 320))
          {
            goto LABEL_202;
          }

          v95 = v94 - v75[38];
          if (v95 < 1)
          {
            goto LABEL_202;
          }

          v96 = CFDataGetMutableBytePtr(v75[36]);
          Native = CFSocketGetNative(v75);
          v98 = read(Native, v75[38] + v96, v95);
          if (!v98)
          {
            goto LABEL_153;
          }

          if (v98 != -1)
          {
            v149 = v75[37];
            v150 = v75[38] + v98;
            v75[38] = v150;
            if (v149 != v150)
            {
              *&context[0].sa_data[6] = 0;
              *&context[0].sa_len = 0;
              gettimeofday(context, 0);
              v151 = v75[34] + *&context[0].sa_len;
              v75[42] = v151;
              v152 = *(v75 + 70) + *&context[0].sa_data[6];
              *(v75 + 86) = v152;
              if (v152 >= 1000000)
              {
                v75[42] = (v151 + 1);
                *(v75 + 86) = v152 - 1000000;
              }

              os_unfair_lock_lock(&__CFActiveSocketsLock);
              __CFReadSocketsTimeoutInvalid = 0;
              v153 = *(v75 + 38);
              if ((v153 & 0x80000000) == 0)
              {
                v154 = __CFReadSocketsFds;
                v155 = 8 * CFDataGetLength(__CFReadSocketsFds);
                if (v155 <= v153)
                {
                  v157 = v155 >> 5;
                  v158 = 4 * (((v153 + 32) >> 5) - (v155 >> 5));
                  CFDataIncreaseLength(v154, v158);
                  v156 = CFDataGetMutableBytePtr(v154);
                  bzero(&v156[4 * v157], v158);
                }

                else
                {
                  v156 = CFDataGetMutableBytePtr(v154);
                }

                if (!__darwin_check_fd_set_overflow(v153, v156, 1) || ((*&v156[(v153 >> 3) & 0x1FFFFFFC] >> v153) & 1) == 0)
                {
                  if (__darwin_check_fd_set_overflow(v153, v156, 1))
                  {
                    *&v156[4 * (v153 >> 5)] |= 1 << v153;
                  }

                  if (__CFWakeupSocketPair != -1)
                  {
                    v176[0].sa_len = 114;
                    send(__CFWakeupSocketPair, v176, 1uLL, 0);
                  }
                }
              }

              os_unfair_lock_unlock(&__CFActiveSocketsLock);
              pthread_mutex_unlock((v75 + 3));
LABEL_160:
              v7 = v167;
              goto LABEL_240;
            }

            *(v75 + 86) = 0;
            v75[42] = 0;
            goto LABEL_202;
          }

          if (*__error() != 35)
          {
            *(v75 + 81) = *__error();
LABEL_153:
            *(v75 + 320) = 1;
LABEL_202:
            v127 = atomic_load(v75 + 1);
            v128 = v127;
            do
            {
              atomic_compare_exchange_strong(v75 + 1, &v128, v127 | 0x20);
              v67 = v128 == v127;
              v127 = v128;
            }

            while (!v67);
            goto LABEL_227;
          }
        }

        else
        {
          if (v75[38] || v75[41])
          {
            goto LABEL_202;
          }

          *(v75 + 86) = 0;
          v75[42] = 0;
        }

        os_unfair_lock_lock(&__CFActiveSocketsLock);
        __CFReadSocketsTimeoutInvalid = 0;
        v141 = *(v75 + 38);
        v7 = v167;
        if ((v141 & 0x80000000) == 0)
        {
          v142 = __CFReadSocketsFds;
          v143 = 8 * CFDataGetLength(__CFReadSocketsFds);
          if (v143 <= v141)
          {
            v147 = v143 >> 5;
            v148 = 4 * (((v141 + 32) >> 5) - (v143 >> 5));
            CFDataIncreaseLength(v142, v148);
            v144 = CFDataGetMutableBytePtr(v142);
            bzero(&v144[4 * v147], v148);
          }

          else
          {
            v144 = CFDataGetMutableBytePtr(v142);
          }

          if (!__darwin_check_fd_set_overflow(v141, v144, 1) || ((*&v144[(v141 >> 3) & 0x1FFFFFFC] >> v141) & 1) == 0)
          {
            if (__darwin_check_fd_set_overflow(v141, v144, 1))
            {
              *&v144[4 * (v141 >> 5)] |= 1 << v141;
            }

            if (__CFWakeupSocketPair != -1)
            {
              context[0].sa_len = 114;
              send(__CFWakeupSocketPair, context, 1uLL, 0);
            }
          }
        }

        os_unfair_lock_unlock(&__CFActiveSocketsLock);
LABEL_186:
        pthread_mutex_unlock((v75 + 3));
        goto LABEL_240;
      }

LABEL_276:
      v7 = 0;
      Typed = v163;
LABEL_279:
      v8 = &unk_1EA849000;
    }

    if (*__error() == 9)
    {
      v33 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
      os_unfair_lock_lock(&__CFActiveSocketsLock);
      v34 = CFArrayGetCount(__CFWriteSockets);
      if (v34 >= 1)
      {
        v35 = v34;
        for (i = 0; i != v35; ++i)
        {
          v37 = CFArrayGetValueAtIndex(__CFWriteSockets, i);
          if (!__CFNativeSocketIsValid(v37[38]))
          {
            CFArrayAppendValue(v33, v37);
          }
        }
      }

      v38 = CFArrayGetCount(__CFReadSockets);
      if (v38 >= 1)
      {
        v39 = v38;
        for (j = 0; j != v39; ++j)
        {
          v41 = CFArrayGetValueAtIndex(__CFReadSockets, j);
          if (!__CFNativeSocketIsValid(v41[38]))
          {
            CFArrayAppendValue(v33, v41);
          }
        }
      }

      v42 = CFArrayGetCount(v33);
      if (v42)
      {
        v43 = v42;
        os_unfair_lock_unlock(&__CFActiveSocketsLock);
        Typed = v163;
        if (v43 >= 1)
        {
          for (k = 0; k != v43; ++k)
          {
            v45 = CFArrayGetValueAtIndex(v33, k);
            CFSocketInvalidate(v45);
          }
        }
      }

      else
      {
        clearInvalidFileDescriptors(__CFReadSocketsFds);
        clearInvalidFileDescriptors(__CFWriteSocketsFds);
        os_unfair_lock_unlock(&__CFActiveSocketsLock);
        Typed = v163;
      }

      CFRelease(v33);
      goto LABEL_279;
    }
  }
}

Boolean CFSocketIsValid(CFSocketRef s)
{
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketIsValid_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v2 = _CFGetNonObjCTypeID(s);
  if (v2 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v3 = atomic_load(s + 1);
  return (v3 >> 4) & 1;
}

char *__CFSocketCopyRunLoopToWakeUp(__CFRunLoopSource *a1, CFArrayRef theArray)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (ValueAtIndex && Count != 1)
  {
    v6 = 1;
    do
    {
      v7 = CFArrayGetValueAtIndex(theArray, v6);
      if (v7 != ValueAtIndex)
      {
        break;
      }

      ++v6;
    }

    while (v6 < (Count & 0x7FFFFFFFu));
    if (v7 != ValueAtIndex)
    {
      ValueAtIndex = 0;
    }
  }

  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = Count & 0x7FFFFFFF;
    do
    {
      v12 = CFArrayGetValueAtIndex(theArray, ValueAtIndex);
      v13 = CFRunLoopCopyCurrentMode(v12);
      if (v13)
      {
        v14 = v13;
        if (CFRunLoopContainsSource(v12, a1, v13))
        {
          IsWaiting = CFRunLoopIsWaiting(v12);
          v16 = v10 ? v9 : ValueAtIndex;
          v17 = IsWaiting == 0;
          if (IsWaiting)
          {
            v9 = ValueAtIndex;
          }

          else
          {
            v10 = 1;
            v9 = v16;
          }
        }

        else
        {
          v17 = 1;
        }

        CFRelease(v14);
        if (!v17)
        {
          break;
        }
      }

      ++ValueAtIndex;
    }

    while (ValueAtIndex < v11);
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
    CFRetain(ValueAtIndex);
    CFArrayRemoveValueAtIndex(theArray, v9);
    CFArrayAppendValue(theArray, ValueAtIndex);
  }

  return ValueAtIndex;
}

void __CFSocketPerformV0(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 24));
  v2 = (a1 + 8);
  v3 = atomic_load((a1 + 8));
  if ((v3 & 0x10) == 0)
  {

    pthread_mutex_unlock((a1 + 24));
    return;
  }

  atomic_load(v2);
  v4 = atomic_load(v2);
  v5 = atomic_load(v2);
  v6 = v4 & (v5 << 26 >> 31);
  v7 = atomic_load(v2);
  if ((v4 & 3) == 2)
  {
    v11 = *(a1 + 256);
    if (v11 && CFArrayGetCount(v11) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 256), 0);
      v9 = 0;
      goto LABEL_13;
    }
  }

  else if ((v4 & 3) == 3)
  {
    v8 = *(a1 + 256);
    if (v8)
    {
      if (CFArrayGetCount(v8) >= 1)
      {
        v9 = CFArrayGetValueAtIndex(*(a1 + 256), 0);
        CFRetain(v9);
        ValueAtIndex = -1;
LABEL_13:
        CFArrayRemoveValueAtIndex(*(a1 + 256), 0);
        v12 = CFArrayGetValueAtIndex(*(a1 + 264), 0);
        CFRetain(v12);
        CFArrayRemoveValueAtIndex(*(a1 + 264), 0);
        goto LABEL_15;
      }
    }
  }

  v12 = 0;
  v9 = 0;
  ValueAtIndex = -1;
LABEL_15:
  v13 = *(a1 + 232);
  theData = v9;
  if (v13)
  {
    v46 = *(a1 + 240);
    v44 = *(a1 + 224);
    v13();
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v14 = v12;
  v15 = 0;
  v16 = v4;
  v17 = v6 & 3;
  v49 = 0;
  v50 = ValueAtIndex;
  v18 = atomic_load((a1 + 8));
  v19 = atomic_load((a1 + 8));
  v20 = atomic_load((a1 + 8));
  v21 = atomic_load((a1 + 8));
  if ((v21 & 0x40) != 0)
  {
    v15 = (*(a1 + 18) & 1) == 0;
  }

  v48 = v17 | (8 * ((v7 >> 6) & 1));
  v22 = v19 & 3;
  v23 = atomic_load((a1 + 8));
  v24 = v23;
  do
  {
    atomic_compare_exchange_strong((a1 + 8), &v24, v23 & 0xFFFFFFFFFFFFFFDFLL);
    v25 = v24 == v23;
    v23 = v24;
  }

  while (!v25);
  v26 = atomic_load((a1 + 8));
  v27 = v26;
  do
  {
    atomic_compare_exchange_strong((a1 + 8), &v27, v26 & 0xFFFFFFFFFFFFFFBFLL);
    v25 = v27 == v26;
    v26 = v27;
  }

  while (!v25);
  v28 = *(a1 + 208);
  v45 = *(a1 + 224);
  if ((v21 & 0x40) != 0)
  {
    v49 = *(a1 + 160);
    *(a1 + 16) |= 0x10000u;
  }

  pthread_mutex_unlock((a1 + 24));
  v29 = *&v15 & ((v18 & 4) >> 2);
  if (v29 != 1)
  {
    v32 = 0;
    goto LABEL_37;
  }

  if (v49)
  {
    if (v28)
    {
      v30 = &v49;
      v31 = a1;
LABEL_35:
      v28(v31, 4, 0, v30, v45);
    }
  }

  else if (v28)
  {
    v31 = a1;
    v30 = 0;
    goto LABEL_35;
  }

  v32 = 1;
LABEL_37:
  if (v22 == 2)
  {
    v33 = v14;
    v34 = theData;
    if (v50 == -1)
    {
      goto LABEL_64;
    }

    if (v29)
    {
      v32 = 1;
      if (!CFSocketIsValid(a1) || !v28)
      {
        goto LABEL_64;
      }
    }

    else if (!v28)
    {
      goto LABEL_63;
    }

    v28(a1, 2, v33, &v50, v45);
    goto LABEL_63;
  }

  if (v22 == 3)
  {
    v33 = v14;
    v34 = theData;
    if (!theData)
    {
      goto LABEL_64;
    }

    if (!v29 || CFSocketIsValid(a1))
    {
      Length = CFDataGetLength(theData);
      if (v28)
      {
        v28(a1, 3, v33, theData, v45);
      }

      if (!Length && *(a1 + 156) == 1)
      {
        CFSocketInvalidate(a1);
      }
    }

    goto LABEL_63;
  }

  if (v22 != 1)
  {
    v33 = v14;
    v34 = theData;
    goto LABEL_64;
  }

  v33 = v14;
  v34 = theData;
  if ((v20 & 0x20) == 0)
  {
    goto LABEL_64;
  }

  if (v29)
  {
    v32 = 1;
    if (!CFSocketIsValid(a1) || !v28)
    {
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  if (v28)
  {
LABEL_62:
    v32 = 1;
    v28(a1, 1, 0, 0, v45);
    goto LABEL_64;
  }

LABEL_63:
  v32 = 1;
LABEL_64:
  if ((v18 & 8) != 0 && (v21 & 0x40) != 0 && !v49 && (!v32 || CFSocketIsValid(a1)) && v28)
  {
    v28(a1, 8, 0, 0, v45);
  }

  if (v46)
  {
    v46(v44);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  pthread_mutex_lock((a1 + 24));
  v36 = 0;
  v37 = atomic_load((a1 + 8));
  if ((v16 & 2) == 0 || (v37 & 0x10) == 0)
  {
    goto LABEL_94;
  }

  v38 = *(a1 + 256);
  if (!v38 || CFArrayGetCount(v38) < 1)
  {
    v36 = 0;
    goto LABEL_94;
  }

  CFRunLoopSourceSignal(*(a1 + 192));
  v39 = CFRetain(*(a1 + 200));
  MutableCopy = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, *(a1 + 200));
  v41 = *(a1 + 192);
  if (v41)
  {
    if (CFRunLoopSourceIsValid(*(a1 + 192)))
    {
      CFRetain(v41);
      v42 = 0;
      goto LABEL_87;
    }

    v41 = 0;
  }

  v42 = 1;
LABEL_87:
  pthread_mutex_unlock((a1 + 24));
  v36 = __CFSocketCopyRunLoopToWakeUp(v41, MutableCopy);
  if ((v42 & 1) == 0)
  {
    CFRelease(v41);
  }

  pthread_mutex_lock((a1 + 24));
  if (v39 == *(a1 + 200))
  {
    *(a1 + 200) = MutableCopy;
    CFRelease(v39);
    v43 = v39;
  }

  else
  {
    CFRelease(v39);
    if (!MutableCopy)
    {
      goto LABEL_94;
    }

    v43 = MutableCopy;
  }

  CFRelease(v43);
LABEL_94:
  __CFSocketEnableCallBacks(a1, *(a1 + 16) & v48, 0);
  if (v36)
  {
    CFRunLoopWakeUp(v36);
    CFRelease(v36);
  }
}

CFSocketNativeHandle CFSocketGetNative(CFSocketRef s)
{
  if (CFSocketGetTypeID_initOnce == -1)
  {
    if (!s)
    {
      goto LABEL_4;
    }
  }

  else
  {
    CFSocketGetNative_cold_1();
    if (!s)
    {
      goto LABEL_4;
    }
  }

  __CFCheckCFInfoPACSignature(s);
  v2 = _CFGetNonObjCTypeID(s);
  if (v2 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v2);
  }

LABEL_4:
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (s)
  {
    return *(s + 38);
  }

  else
  {
    return -1;
  }
}

uint64_t __CFSocketEnableCallBacks(uint64_t a1, uint64_t a2, int a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (a2)
  {
    v6 = atomic_load((a1 + 8));
    if ((v6 & 0x10) == 0 || *(a1 + 184) < 1)
    {
      return pthread_mutex_unlock((a1 + 24));
    }

    v7 = atomic_load((a1 + 8));
    v8 = v7 & 3;
    v9 = atomic_load((a1 + 8));
    v10 = a2 & v9 & 0xF;
    if (a3)
    {
      *(a1 + 16) &= (~v10 << 8) | 0xFFFF00FF;
    }

    if (v8 == 2 || *(a1 + 156) != 1)
    {
      v11 = *(a1 + 16) | 0x10000;
      *(a1 + 16) = v11;
      if ((v11 & 0x10000) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = *(a1 + 16);
      if ((v11 & 0x10000) != 0)
      {
        goto LABEL_20;
      }
    }

    if ((v10 & 4) != 0)
    {
      v13 = 0;
      v14 = (v11 & 0x400) == 0;
      goto LABEL_23;
    }

LABEL_20:
    v14 = 0;
    v13 = v10 >= 8 && (v11 & 0x800) == 0;
LABEL_23:
    v15 = v7 & v10 & 3;
    v16 = v11 & 0x100;
    v17 = v16 == 0;
    v18 = v16 >> 8;
    v19 = v15 == 0;
    if (v15)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      LOBYTE(v18) = 1;
    }

    v21 = v8 == 0;
    if (v8)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = 1;
    }

    else
    {
      v23 = v18;
    }

    if (v14 || v13 || v22)
    {
      os_unfair_lock_lock(&__CFActiveSocketsLock);
      if (v14 || v13)
      {
        if (a3)
        {
          v24 = __CFWriteSockets;
          v42.length = CFArrayGetCount(__CFWriteSockets);
          v42.location = 0;
          if (CFArrayGetFirstIndexOfValue(v24, v42, a1) == -1)
          {
            CFArrayAppendValue(__CFWriteSockets, a1);
          }
        }

        v25 = *(a1 + 152);
        if ((v25 & 0x80000000) == 0)
        {
          v26 = __CFWriteSocketsFds;
          v27 = 8 * CFDataGetLength(__CFWriteSocketsFds);
          if (v27 <= v25)
          {
            v29 = v27 >> 5;
            v30 = 4 * (((v25 + 32) >> 5) - (v27 >> 5));
            CFDataIncreaseLength(v26, v30);
            MutableBytePtr = CFDataGetMutableBytePtr(v26);
            bzero(&MutableBytePtr[4 * v29], v30);
          }

          else
          {
            MutableBytePtr = CFDataGetMutableBytePtr(v26);
          }

          if (!__darwin_check_fd_set_overflow(v25, MutableBytePtr, 1) || ((*&MutableBytePtr[(v25 >> 3) & 0x1FFFFFFC] >> v25) & 1) == 0)
          {
            if (__darwin_check_fd_set_overflow(v25, MutableBytePtr, 1))
            {
              *&MutableBytePtr[4 * (v25 >> 5)] |= 1 << v25;
            }

            if (__CFWakeupSocketPair != -1)
            {
              v38 = 119;
              send(__CFWakeupSocketPair, &v38, 1uLL, 0);
            }
          }
        }
      }

      if ((v23 & 1) == 0)
      {
        if (a3)
        {
          v31 = __CFReadSockets;
          v43.length = CFArrayGetCount(__CFReadSockets);
          v43.location = 0;
          if (CFArrayGetFirstIndexOfValue(v31, v43, a1) == -1)
          {
            CFArrayAppendValue(__CFReadSockets, a1);
          }
        }

        __CFReadSocketsTimeoutInvalid = 0;
        v32 = *(a1 + 152);
        if ((v32 & 0x80000000) == 0)
        {
          v33 = __CFReadSocketsFds;
          v34 = 8 * CFDataGetLength(__CFReadSocketsFds);
          if (v34 <= v32)
          {
            v36 = v34 >> 5;
            v37 = 4 * (((v32 + 32) >> 5) - (v34 >> 5));
            CFDataIncreaseLength(v33, v37);
            v35 = CFDataGetMutableBytePtr(v33);
            bzero(&v35[4 * v36], v37);
          }

          else
          {
            v35 = CFDataGetMutableBytePtr(v33);
          }

          if (!__darwin_check_fd_set_overflow(v32, v35, 1) || ((*&v35[(v32 >> 3) & 0x1FFFFFFC] >> v32) & 1) == 0)
          {
            if (__darwin_check_fd_set_overflow(v32, v35, 1))
            {
              *&v35[4 * (v32 >> 5)] |= 1 << v32;
            }

            if (__CFWakeupSocketPair != -1)
            {
              v39 = 114;
              send(__CFWakeupSocketPair, &v39, 1uLL, 0);
            }
          }
        }
      }

      os_unfair_lock_unlock(&__CFActiveSocketsLock);
    }

    return pthread_mutex_unlock((a1 + 24));
  }

  return pthread_mutex_unlock((a1 + 24));
}

uint64_t _calcMinTimeout_locked(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 272);
  if (!v2 && !*(result + 280))
  {
    goto LABEL_7;
  }

  v3 = (result + 272);
  v4 = *a2;
  if (*a2)
  {
    v5 = v2 < *v4;
    if (v2 == *v4)
    {
      v5 = *(result + 280) < *(v4 + 8);
    }

    if (!v5)
    {
LABEL_7:
      if (!*(result + 328))
      {
        return result;
      }

      v3 = &_calcMinTimeout_locked_sKickerTime;
    }
  }

  *a2 = v3;
  return result;
}

CFSocketRef CFSocketCreateWithNative(CFAllocatorRef allocator, CFSocketNativeHandle sock, CFOptionFlags callBackTypes, CFSocketCallBack callout, const CFSocketContext *context)
{
  v7 = callBackTypes;
  v53 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  value = 0;
  v50 = 4;
  os_unfair_lock_lock(&__CFActiveSocketsLock);
  if (!__CFReadSockets)
  {
    __CFWriteSockets = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, 0);
    __CFReadSockets = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, 0);
    __CFWriteSocketsFds = CFDataCreateMutable(&__kCFAllocatorSystemDefault, 0);
    __CFReadSocketsFds = CFDataCreateMutable(&__kCFAllocatorSystemDefault, 0);
    if (socketpair(1, 2, 0, &__CFWakeupSocketPair) < 0 || (v48 = 1, fcntl(__CFWakeupSocketPair, 2) < 0) || (v48 = 1, fcntl(SHIDWORD(__CFWakeupSocketPair), 2) < 0))
    {
      close(__CFWakeupSocketPair);
      close(SHIDWORD(__CFWakeupSocketPair));
      __CFWakeupSocketPair = -1;
      CFLog(4, @"*** Could not create wakeup socket pair for CFSocket!!!", v14, v15, v16, v17, v18, v19, v48);
    }

    else
    {
      LODWORD(callBacks.__sig) = 1;
      ioctl(__CFWakeupSocketPair, 0x8004667EuLL, &callBacks);
      ioctl(SHIDWORD(__CFWakeupSocketPair), 0x8004667EuLL, &callBacks);
      v10 = HIDWORD(__CFWakeupSocketPair);
      if ((__CFWakeupSocketPair & 0x8000000000000000) == 0)
      {
        v11 = __CFReadSocketsFds;
        v12 = 8 * CFDataGetLength(__CFReadSocketsFds);
        if (v12 <= v10)
        {
          v46 = v12 >> 5;
          v47 = 4 * (((v10 + 32) >> 5) - (v12 >> 5));
          CFDataIncreaseLength(v11, v47);
          MutableBytePtr = CFDataGetMutableBytePtr(v11);
          bzero(&MutableBytePtr[4 * v46], v47);
        }

        else
        {
          MutableBytePtr = CFDataGetMutableBytePtr(v11);
        }

        if ((!__darwin_check_fd_set_overflow(v10, MutableBytePtr, 1) || ((*&MutableBytePtr[(v10 >> 3) & 0x1FFFFFFC] >> v10) & 1) == 0) && __darwin_check_fd_set_overflow(v10, MutableBytePtr, 1))
        {
          *&MutableBytePtr[4 * (v10 >> 5)] |= 1 << v10;
        }
      }
    }
  }

  os_unfair_lock_unlock(&__CFActiveSocketsLock);
  os_unfair_lock_lock(&__CFAllSocketsLock);
  Mutable = __CFAllSockets;
  if (!__CFAllSockets)
  {
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
    __CFAllSockets = Mutable;
  }

  if (sock == -1 || !CFDictionaryGetValueIfPresent(Mutable, sock, &value))
  {
    if (CFSocketGetTypeID_initOnce != -1)
    {
      CFSocketCreateWithNative_cold_1();
    }

    Instance = _CFRuntimeCreateInstance(allocator, 0x3DuLL, 344, 0, v20, v21, v22, v23);
    value = Instance;
    if (!Instance)
    {
      os_unfair_lock_unlock(&__CFAllSocketsLock);
      return 0;
    }

    v26 = atomic_load(Instance + 1);
    v27 = v26;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v27, v26 & 0xFFFFFFFFFFFFFFF0 | v7 & 0xF);
      v28 = v27 == v26;
      v26 = v27;
    }

    while (!v28);
    if (sock != -1)
    {
      v29 = (value + 8);
      v30 = atomic_load(value + 1);
      v31 = v30;
      do
      {
        atomic_compare_exchange_strong(v29, &v31, v30 | 0x10);
        v28 = v31 == v30;
        v30 = v31;
      }

      while (!v28);
    }

    v32 = (value + 8);
    v33 = atomic_load(value + 1);
    v34 = v33;
    do
    {
      atomic_compare_exchange_strong(v32, &v34, v33 & 0xFFFFFFFFFFFFFFBFLL);
      v28 = v34 == v33;
      v33 = v34;
    }

    while (!v28);
    v35 = (value + 8);
    v36 = atomic_load(value + 1);
    v37 = v36;
    do
    {
      atomic_compare_exchange_strong(v35, &v37, v36 & 0xFFFFFFFFFFFFFFDFLL);
      v28 = v37 == v36;
      v36 = v37;
    }

    while (!v28);
    v38 = value;
    *(value + 4) = v7 & 0x73 | *(value + 4) & 0xFFFFFF00 | 0x80;
    v38[3] = 850045857;
    *(v38 + 2) = 0u;
    *(v38 + 3) = 0u;
    *(v38 + 4) = 0u;
    v38[10] = 0;
    v38[11] = 850045857;
    *(v38 + 6) = 0u;
    *(v38 + 7) = 0u;
    *(v38 + 8) = 0u;
    v38[18] = 0;
    *(v38 + 38) = sock;
    if (sock == -1)
    {
      *(v38 + 39) = 0;
      v38[26] = callout;
      *(v38 + 70) = 0;
      v38[34] = 0;
      *(v38 + 86) = 0;
      v38[42] = 0;
    }

    else
    {
      if (getsockopt(sock, 0xFFFF, 4104, v38 + 156, &v50))
      {
        *(value + 39) = 0;
      }

      *&callBacks.__sig = *&kCFTypeArrayCallBacks.version;
      *&callBacks.__opaque[8] = kCFTypeArrayCallBacks.release;
      *&callBacks.__opaque[16] = 0;
      *&callBacks.__opaque[24] = CFEqual;
      v39 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &callBacks);
      v40 = value;
      *(value + 25) = v39;
      v40[26] = callout;
      *(v40 + 70) = 0;
      v40[34] = 0;
      *(v40 + 86) = 0;
      v40[42] = 0;
      CFDictionaryAddValue(__CFAllSockets, sock, v40);
    }

    if (!__CFSocketManagerThread)
    {
      v49 = 0;
      memset(&callBacks, 0, sizeof(callBacks));
      pthread_attr_init(&callBacks);
      pthread_attr_setscope(&callBacks, 1);
      pthread_attr_setdetachstate(&callBacks, 2);
      v42 = qos_class_main();
      pthread_attr_set_qos_class_np(&callBacks, v42, 0);
      pthread_create(&v49, &callBacks, __CFSocketManager, 0);
      pthread_attr_destroy(&callBacks);
      __CFSocketManagerThread = v49;
    }

    os_unfair_lock_unlock(&__CFAllSocketsLock);
    if (context)
    {
      info = context->info;
      retain = context->retain;
      if (retain)
      {
        info = (retain)(context->info);
      }

      pthread_mutex_lock((value + 24));
      v45 = value;
      *(value + 232) = *&context->retain;
      *(v45 + 31) = context->copyDescription;
      *(v45 + 28) = info;
      pthread_mutex_unlock((v45 + 24));
    }
  }

  else
  {
    os_unfair_lock_unlock(&__CFAllSocketsLock);
    CFRetain(value);
  }

  return value;
}

CFOptionFlags CFSocketGetSocketFlags(CFSocketRef s)
{
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketGetSocketFlags_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v2 = _CFGetNonObjCTypeID(s);
  if (v2 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  return *(s + 16);
}

void CFSocketSetSocketFlags(CFSocketRef s, CFOptionFlags flags)
{
  v2 = flags;
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketSetSocketFlags_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v4 = _CFGetNonObjCTypeID(s);
  if (v4 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v4);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((s + 24));
  *(s + 16) = v2;

  pthread_mutex_unlock((s + 24));
}

void CFSocketEnableCallBacks(CFSocketRef s, CFOptionFlags callBackTypes)
{
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketEnableCallBacks_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v4 = _CFGetNonObjCTypeID(s);
  if (v4 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v4);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((s + 24));

  __CFSocketEnableCallBacks(s, callBackTypes, 1);
}

uint64_t __CFSocketSchedule(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = atomic_load((a1 + 8));
  if ((v4 & 0x10) != 0 && (v5 = *(a1 + 200), MutableCopy = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v5), CFArrayAppendValue(MutableCopy, a2), *(a1 + 200) = MutableCopy, CFRelease(v5), v7 = *(a1 + 184), *(a1 + 184) = v7 + 1, !v7))
  {
    v9 = atomic_load((a1 + 8));

    return __CFSocketEnableCallBacks(a1, v9 & 0xF, 1);
  }

  else
  {

    return pthread_mutex_unlock((a1 + 24));
  }
}

ssize_t __CFSocketRead(uint64_t a1, void *a2, ssize_t a3, int *a4)
{
  pthread_mutex_lock((a1 + 24));
  *a4 = 0;
  v8 = *(a1 + 328);
  if (v8)
  {
    Length = CFDataGetLength(v8);
    if (Length < a3)
    {
      a3 = Length;
    }

    BytePtr = CFDataGetBytePtr(*(a1 + 328));
    memcpy(a2, BytePtr, a3);
    v11 = CFDataGetLength(*(a1 + 328));
    v12 = *(a1 + 328);
    if (a3 >= v11)
    {
      CFRelease(v12);
      *(a1 + 328) = 0;
    }

    else
    {
      v24.location = 0;
      v24.length = a3;
      CFDataReplaceBytes(v12, v24, 0, 0);
    }
  }

  else if (*(a1 + 296) && (v13 = *(a1 + 312), v14 = *(a1 + 304) - v13, v14 >= 1))
  {
    if (v14 < a3)
    {
      a3 = *(a1 + 304) - v13;
    }

    v15 = CFDataGetBytePtr(*(a1 + 288));
    memcpy(a2, &v15[*(a1 + 312)], a3);
    v16 = *(a1 + 304);
    v17 = *(a1 + 312) + a3;
    *(a1 + 312) = v17;
    if (v17 == v16)
    {
      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
    }
  }

  else
  {
    v18 = *(a1 + 324);
    if (v18)
    {
      *a4 = v18;
      a3 = -1;
    }

    else if (*(a1 + 320))
    {
      a3 = 0;
    }

    else
    {
      Native = CFSocketGetNative(a1);
      v21 = read(Native, a2, a3);
      a3 = v21;
      if (v21)
      {
        if (v21 < 0)
        {
          v22 = __error();
          v23 = *v22;
          *a4 = *v22;
          if (v23 != 35)
          {
            *(a1 + 324) = v23;
          }
        }
      }

      else
      {
        *(a1 + 320) = 1;
      }
    }
  }

  pthread_mutex_unlock((a1 + 24));
  return a3;
}

void CFSocketDisableCallBacks(CFSocketRef s, CFOptionFlags callBackTypes)
{
  v2 = callBackTypes;
  v17 = *MEMORY[0x1E69E9840];
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketDisableCallBacks_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v4 = _CFGetNonObjCTypeID(s);
  if (v4 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v4);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((s + 24));
  v5 = atomic_load(s + 1);
  if ((v5 & 0x10) != 0 && *(s + 46) >= 1)
  {
    v6 = atomic_load(s + 1);
    v7 = v2 & v6 & 0xF;
    v8 = atomic_load(s + 1);
    *(s + 4) |= v7 << 8;
    os_unfair_lock_lock(&__CFActiveSocketsLock);
    if ((v8 & 3) == 2 || *(s + 39) != 1)
    {
      *(s + 4) |= 0x10000u;
    }

    if (v7 > 7 || v7 >= 4 && (*(s + 18) & 1) == 0)
    {
      v9 = *(s + 38);
      if ((v9 & 0x80000000) == 0)
      {
        v10 = __CFWriteSocketsFds;
        if (v9 < 8 * CFDataGetLength(__CFWriteSocketsFds))
        {
          MutableBytePtr = CFDataGetMutableBytePtr(v10);
          if (__darwin_check_fd_set_overflow(v9, MutableBytePtr, 1))
          {
            if ((*&MutableBytePtr[4 * (v9 >> 5)] & (1 << v9)) != 0)
            {
              if (__darwin_check_fd_set_overflow(v9, MutableBytePtr, 1))
              {
                *&MutableBytePtr[4 * (v9 >> 5)] &= ~(1 << v9);
              }

              if (__CFWakeupSocketPair != -1)
              {
                v15 = 120;
                send(__CFWakeupSocketPair, &v15, 1uLL, 0);
              }

              atomic_load(s + 1);
            }
          }
        }
      }
    }

    if ((v8 & 3) != 0 && (v8 & v7 & 3) != 0)
    {
      __CFReadSocketsTimeoutInvalid = 0;
      v12 = *(s + 38);
      if ((v12 & 0x80000000) == 0)
      {
        v13 = __CFReadSocketsFds;
        if (v12 < 8 * CFDataGetLength(__CFReadSocketsFds))
        {
          v14 = CFDataGetMutableBytePtr(v13);
          if (__darwin_check_fd_set_overflow(v12, v14, 1))
          {
            if ((*&v14[4 * (v12 >> 5)] & (1 << v12)) != 0)
            {
              if (__darwin_check_fd_set_overflow(v12, v14, 1))
              {
                *&v14[4 * (v12 >> 5)] &= ~(1 << v12);
              }

              if (__CFWakeupSocketPair != -1)
              {
                v16 = 115;
                send(__CFWakeupSocketPair, &v16, 1uLL, 0);
              }
            }
          }
        }
      }
    }

    os_unfair_lock_unlock(&__CFActiveSocketsLock);
  }

  pthread_mutex_unlock((s + 24));
}

CFTypeRef CFReadStreamCopyProperty(CFReadStreamRef stream, CFStreamPropertyKey propertyName)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {
    v4 = [(__CFReadStream *)stream propertyForKey:propertyName];

    return v4;
  }

  else
  {
    v6 = *(*(stream + 6) + 96);
    if (v6)
    {
      *(stream + 2) |= 0x40uLL;
      result = v6(stream, propertyName, *(stream + 5));
      *(stream + 2) &= ~0x40uLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *boundPairReadCopyProperty(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v3 = 0;
  if (a2 && a3)
  {
    if (*(a3 + 40) && CFStringCompare(@"_kCFStreamPropertyHTTPTrailer", a2, 1uLL) == kCFCompareEqualTo)
    {
      Value = CFDictionaryGetValue(*(a3 + 40), a2);
      v3 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t __CFBasicHashGetCountOfValue_block_invoke(void *a1, uint64_t a2)
{
  if (a1[5] == *(a2 + 16) || (v4 = *(CFBasicHashCallBackPtrs[(*(a1[6] + 32) >> 39) & 0x1FLL] + 8 * ((*(a1[6] + 32) >> 34) & 0x1FLL))) != 0 && v4())
  {
    *(*(a1[4] + 8) + 24) += *(a2 + 24);
  }

  return 1;
}

void CFStringTrim(CFMutableStringRef theString, CFStringRef trimString)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = CF_IS_OBJC(7uLL, theString);
  if (v4)
  {

    [(__CFString *)theString _cfTrim:trimString];
  }

  else
  {
    result.location = 0;
    result.length = 0;
    p_info = &theString->info;
    v7 = atomic_load(&theString->info);
    if (v7)
    {
      v16 = atomic_load(p_info);
      v17 = v16 & 5;
      v18 = atomic_load(p_info);
      v19 = v18 & 0x60;
      if (v17 == 4)
      {
        p_data = &theString->data;
        if (v19)
        {
          v21 = *p_data;
        }

        else
        {
          v23 = atomic_load(&theString->info);
          v21 = &p_data[(v23 & 5) != 4];
        }

        length = *v21;
      }

      else if ((v18 & 0x60) != 0)
      {
        length = theString->length;
      }

      else
      {
        length = theString->data;
      }

      v48.location = 0;
      v48.length = length;
      if (CFStringFindWithOptionsAndLocale(theString, trimString, v48, 8uLL, 0, &result))
      {
        do
        {
          v24 = result.length + result.location;
          v25 = length - (result.length + result.location);
          v49.location = result.length + result.location;
          v49.length = v25;
        }

        while (CFStringFindWithOptionsAndLocale(theString, trimString, v49, 8uLL, 0, &result));
        v26 = v24;
      }

      else
      {
        v24 = 0;
        v26 = 0;
        v25 = length;
      }

      if (v24 >= length)
      {
        v44 = 0;
        v45 = length;
      }

      else
      {
        v27 = atomic_load(&theString->info);
        v28 = atomic_load(&theString->info);
        v29 = &theString->data;
        if ((v28 & 0x60) != 0)
        {
          v30 = *v29;
        }

        else
        {
          v31 = atomic_load(&theString->info);
          v30 = &v29[(v31 & 5) != 4];
        }

        v32 = (v27 >> 4) & 1;
        v33 = &theString->info;
        v34 = atomic_load(&theString->info);
        v35 = &v30[(v34 >> 2) & 1];
        if (CFStringGetLength(trimString) < v25)
        {
          while (1)
          {
            v50.location = v26;
            v50.length = v25;
            if (!CFStringFindWithOptionsAndLocale(theString, trimString, v50, 0xCuLL, 0, &result))
            {
              break;
            }

            v25 = result.location - v24;
          }
        }

        memmove(v35, &v35[v24 << v32], v25 << v32);
        v36 = atomic_load(v33);
        v37 = v36 & 5;
        v38 = atomic_load(v33);
        v39 = v38 & 0x60;
        if (v37 == 4)
        {
          if (v39)
          {
            v40 = *v29;
          }

          else
          {
            v42 = atomic_load(&theString->info);
            v40 = &v29[(v42 & 5) != 4];
          }

          v41 = *v40;
        }

        else if (v39)
        {
          v41 = theString->length;
        }

        else
        {
          v41 = *v29;
        }

        v44 = v25;
        v45 = v41 - v25;
      }

      __CFStringChangeSizeMultiple(theString, &v44, 1, 0, 0);
    }

    else
    {
      v8 = _CFOSLog(v4, v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        CFStringTrim_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }
}

uint64_t __extendLocationForward(int64_t a1, UniChar *buffer, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6)
{
  while (1)
  {
    if (a1 < 0 || (v12 = *(buffer + 20), v12 <= a1))
    {
      v14 = 0;
      goto LABEL_6;
    }

    v13 = *(buffer + 17);
    if (v13)
    {
      v14 = *(v13 + 2 * *(buffer + 19) + 2 * a1);
    }

    else
    {
      v15 = *(buffer + 18);
      if (v15)
      {
        v14 = *(v15 + *(buffer + 19) + a1);
      }

      else
      {
        if (*(buffer + 22) <= a1 || (v16 = *(buffer + 21), v16 > a1))
        {
          v17 = a1 - 4;
          if (a1 < 4)
          {
            v17 = 0;
          }

          if (v17 + 64 < v12)
          {
            v12 = v17 + 64;
          }

          *(buffer + 21) = v17;
          *(buffer + 22) = v12;
          v31.length = v12 - v17;
          v31.location = *(buffer + 19) + v17;
          CFStringGetCharacters(*(buffer + 16), v31, buffer);
          v16 = *(buffer + 21);
        }

        v14 = buffer[a1 - v16];
      }
    }

    if (v14 >> 10 == 54)
    {
      v18 = a1 + 1;
      v19 = *(buffer + 20);
      if (v19 > a1 + 1)
      {
        v20 = *(buffer + 17);
        if (v20)
        {
          v21 = *(v20 + 2 * *(buffer + 19) + 2 * v18);
        }

        else
        {
          v22 = *(buffer + 18);
          if (v22)
          {
            v21 = *(v22 + *(buffer + 19) + v18);
          }

          else
          {
            if (*(buffer + 22) <= v18 || (v23 = *(buffer + 21), v23 > v18))
            {
              v24 = a1 - 3;
              if (a1 < 3)
              {
                v24 = 0;
              }

              if (v24 + 64 < v19)
              {
                v19 = v24 + 64;
              }

              *(buffer + 21) = v24;
              *(buffer + 22) = v19;
              v32.length = v19 - v24;
              v32.location = *(buffer + 19) + v24;
              CFStringGetCharacters(*(buffer + 16), v32, buffer);
              v23 = *(buffer + 21);
            }

            v21 = buffer[v18 - v23];
          }
        }

        if (v21 >> 10 == 55)
        {
          break;
        }
      }
    }

LABEL_6:
    ++a1;
    if (a3 && ((*(a3 + (v14 >> 3)) >> (v14 & 7)) & 1) != 0 || a4 && ((*(a4 + (v14 >> 3)) >> (v14 & 7)) & 1) != 0)
    {
      if (((v14 - 11904) >> 7) < 0xFBu)
      {
        return a1;
      }
    }

    else if (!a5 || ((v14 - 11904) >> 7) < 0xFBu || ((1 << (v14 & 7)) & *(a5 + (v14 >> 3))) == 0)
    {
      return a1;
    }

LABEL_15:
    if (a1 >= a6)
    {
      return a1;
    }
  }

  v25 = v21;
  v26 = (v14 << 10) + v21 - 56613888;
  a1 += 2;
  BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(0xAu, HIWORD(v26));
  if (BitmapPtrForPlane && ((*(BitmapPtrForPlane + (v26 >> 3)) >> (v25 & 7)) & 1) != 0)
  {
    goto LABEL_15;
  }

  v28 = CFUniCharGetBitmapPtrForPlane(0xBu, HIWORD(v26));
  if (v28)
  {
    if ((*(v28 + (v26 >> 3)) >> (v25 & 7)))
    {
      goto LABEL_15;
    }
  }

  v29 = CFUniCharGetBitmapPtrForPlane(0x6Cu, HIWORD(v26));
  if (v29)
  {
    if ((*(v29 + (v26 >> 3)) >> (v25 & 7)))
    {
      goto LABEL_15;
    }
  }

  return a1;
}

void __NSCacheApplicationDidEnterBackgroundCallBack(uint64_t a1, unsigned __int8 *a2)
{
  v3 = a2;
  if (a2[24] != 255)
  {
    cache_remove_with_block();
  }
}

void sub_1831AFC58(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1831AFC1CLL);
  }

  _Unwind_Resume(exception_object);
}

void __CFNotificationCenterDeallocate(uint64_t a1)
{
  CFRelease(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    xpc_connection_cancel(v2);
    v3 = *(a1 + 24);

    xpc_release(v3);
  }
}

void _CFBundleSetupXPCBootstrapWithLanguages(void *a1, const __CFArray *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = xpc_array_create(0, 0);
  if (CFArrayGetCount(a2) >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
      if (CFStringGetCString(ValueAtIndex, buffer, 128, 0x8000100u))
      {
        v7 = xpc_string_create(buffer);
        if (v7)
        {
          v8 = v7;
          xpc_array_append_value(v4, v7);
          xpc_release(v8);
        }
      }

      ++v5;
    }

    while (v5 < CFArrayGetCount(a2));
  }

  if (xpc_array_get_count(v4))
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v9, "MainBundleLanguages", v4);
    xpc_dictionary_set_value(a1, "_NSBundleEntry", v9);
    xpc_release(v9);
  }

  xpc_release(v4);
}

__CFDictionary *parsePlistDictContent(uint64_t a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(*(a1 + 32), 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v13 = lineNumberStrings(a1);
    Error = __CFPropertyListCreateError(3840, @"Unable to allocate dictionary while parsing plist at line %d", v13);
    v15 = *(a1 + 24);
    if (v15)
    {
      CFRelease(v15);
    }

    v5 = 0;
    *(a1 + 24) = Error;
    return v5;
  }

  v5 = Mutable;
  v6 = parsePlistString(a1);
  if (!v6)
  {
LABEL_14:
    v12 = *(a1 + 24);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 24) = 0;
    }

    return v5;
  }

  v7 = v6;
  while (1)
  {
    if (!advanceToNonSpace(a1))
    {
      v23 = lineNumberStrings(a1);
      v19 = __CFPropertyListCreateError(3840, @"Missing ';' on line %d", v23);
      goto LABEL_24;
    }

    v8 = *(a1 + 8);
    v9 = *v8;
    if (v9 != 61)
    {
      if (v9 == 59)
      {
        v10 = CFRetain(v7);
        goto LABEL_9;
      }

      v24 = lineNumberStrings(a1);
      v19 = __CFPropertyListCreateError(3840, @"Expected ';' or '=' after key at line %d", v24);
LABEL_24:
      v20 = v19;
      v21 = *(a1 + 24);
      if (v21)
      {
        CFRelease(v21);
      }

      *(a1 + 24) = v20;
LABEL_27:
      CFRelease(v7);
      goto LABEL_28;
    }

    *(a1 + 8) = v8 + 1;
    v10 = parsePlistObject(a1, 1, (a2 + 1));
    if (!v10)
    {
      goto LABEL_27;
    }

LABEL_9:
    CFDictionarySetValue(v5, v7, v10);
    CFRelease(v7);
    if (v10)
    {
      CFRelease(v10);
    }

    if (!advanceToNonSpace(a1))
    {
      break;
    }

    v11 = *(a1 + 8);
    if (*v11 != 59)
    {
      break;
    }

    *(a1 + 8) = v11 + 1;
    v7 = parsePlistString(a1);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v16 = lineNumberStrings(a1);
  v17 = __CFPropertyListCreateError(3840, @"Missing ';' on line %d", v16);
  v18 = *(a1 + 24);
  if (v18)
  {
    CFRelease(v18);
  }

  *(a1 + 24) = v17;
LABEL_28:
  CFRelease(v5);
  return 0;
}

__CFString *parsePlistString(uint64_t a1)
{
  if (!advanceToNonSpace(a1))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *v2;
  if (v3 == 39 || v3 == 34)
  {
    *(a1 + 8) = v2 + 1;

    return parseQuotedPlistString(a1, v3);
  }

  if ((v3 - 48) >= 0xA && ((v3 & 0xFFDF) - 65) >= 0x1Au && ((v3 - 36) > 0x3B || ((1 << (v3 - 36)) & 0x800000000400E01) == 0))
  {
    return 0;
  }

  return parseUnquotedPlistString(a1);
}

__CFString *parseQuotedPlistString(uint64_t a1, int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
LABEL_70:
    *(a1 + 8) = v4;
    v35 = lineNumberStrings(a1);
    Error = __CFPropertyListCreateError(3840, @"Unterminated quoted string starting on line %d", v35);
    goto LABEL_71;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E9830];
  v8 = *(a1 + 8);
  v9 = v8;
  do
  {
    chars = *v8;
    if (chars == a2)
    {
      break;
    }

    if (chars == 92)
    {
      if (!v6)
      {
        Mutable = CFStringCreateMutable(*(a1 + 32), 0);
        if (!Mutable)
        {
          Error = __CFPropertyListCreateError(3840, @"Unable to allocate quoted string while parsing plist");
          goto LABEL_71;
        }

        v6 = Mutable;
        v8 = *(a1 + 8);
      }

      CFStringAppendCharacters(v6, v9, v8 - v9);
      v12 = *(a1 + 8);
      v11 = *(a1 + 16);
      *(a1 + 8) = v12 + 2;
      if (v12 + 2 == v11)
      {
        CFRelease(v6);
        v36 = lineNumberStrings(a1);
        Error = __CFPropertyListCreateError(3840, @"Unterminated backslash sequence on line %d", v36);
        goto LABEL_71;
      }

      v13 = *(v12 + 2);
      v14 = (v12 + 4);
      *(a1 + 8) = v14;
      if (v13 > 84)
      {
        if (v13 > 109)
        {
          if (v13 > 115)
          {
            if (v13 == 116)
            {
              LOWORD(v13) = 9;
            }

            else if (v13 == 118)
            {
              LOWORD(v13) = 11;
            }
          }

          else if (v13 == 110)
          {
            LOWORD(v13) = 10;
          }

          else if (v13 == 114)
          {
            LOWORD(v13) = 13;
          }
        }

        else if (v13 > 97)
        {
          if (v13 == 98)
          {
            LOWORD(v13) = 8;
          }

          else if (v13 == 102)
          {
            LOWORD(v13) = 12;
          }
        }

        else if (v13 == 85)
        {
          if (v14 >= v11)
          {
            LOWORD(v13) = 0;
          }

          else
          {
            LOWORD(v13) = 0;
            v20 = -5;
            do
            {
              if (__CFADD__(v20++, 1))
              {
                break;
              }

              v22 = *v14;
              if (v22 <= 0x7F && (*(v7 + 4 * v22 + 60) & 0x10000) != 0)
              {
                *(a1 + 8) = ++v14;
                if (v22 >= 0x47)
                {
                  v23 = -87;
                }

                else
                {
                  v23 = -55;
                }

                if (v22 < 0x3A)
                {
                  v23 = -48;
                }

                LOWORD(v13) = v22 + 16 * v13 + v23;
              }
            }

            while (v14 < v11);
          }
        }

        else if (v13 == 97)
        {
          LOWORD(v13) = 7;
        }
      }

      else
      {
        v15 = v13 - 48;
        if ((v13 - 48) < 8)
        {
          v39 = 0;
          v38 = 0;
          v16 = 1;
          do
          {
            if (v14 >= v11)
            {
              break;
            }

            v17 = v16;
            if ((*v14 & 0xFFF8) != 0x30)
            {
              break;
            }

            v16 = 0;
            v15 = *v14++ + 8 * v15 - 48;
            *(a1 + 8) = v14;
          }

          while ((v17 & 1) != 0);
          v40 = v15;
          if (CFStringEncodingBytesToUnicode(0xB01u, 0, &v40, 1, 0, &v39, 1, &v38))
          {
            v18 = __CFPropertyListCreateError(3840, @"Unable to convert octet-stream while parsing plist");
            v19 = *(a1 + 24);
            if (v19)
            {
              CFRelease(v19);
            }

            LOWORD(v13) = 0;
            *(a1 + 24) = v18;
          }

          else if (v38 == 1)
          {
            LOWORD(v13) = v39;
          }

          else
          {
            LOWORD(v13) = 0;
          }
        }
      }

      chars = v13;
      CFStringAppendCharacters(v6, &chars, 1);
      v8 = *(a1 + 8);
      v3 = *(a1 + 16);
      v9 = v8;
    }

    else
    {
      *(a1 + 8) = ++v8;
    }
  }

  while (v8 < v3);
  if (v3 <= v8)
  {
    if (v6)
    {
      CFRelease(v6);
    }

    goto LABEL_70;
  }

  if (v6)
  {
    if (v9 != v8)
    {
      CFStringAppendCharacters(v6, v9, v8 - v9);
    }

    if (*(a1 + 40) == 2)
    {
      goto LABEL_81;
    }

    Value = CFSetGetValue(*(a1 + 48), v6);
    if (!Value)
    {
      v25 = __CFStringCollectionCopy(*(a1 + 32), v6);
      if (!v25)
      {
        v33 = __CFPropertyListCreateError(3840, @"Unable to copy string while parsing plist");
        v34 = *(a1 + 24);
        if (v34)
        {
          CFRelease(v34);
        }

        Value = 0;
        *(a1 + 24) = v33;
        goto LABEL_67;
      }

      Value = v25;
      CFSetAddValue(*(a1 + 48), v25);
      __CFTypeCollectionRelease(*(a1 + 32), Value);
    }

    CFRetain(Value);
LABEL_67:
    CFRelease(v6);
    v6 = Value;
    goto LABEL_81;
  }

  if (*(a1 + 40) != 2)
  {
    v6 = _uniqueStringForCharacters(a1, v9, v8 - v9);
LABEL_81:
    *(a1 + 8) += 2;
    v32 = *(a1 + 24);
    if (v32)
    {
      CFRelease(v32);
      *(a1 + 24) = 0;
    }

    return v6;
  }

  v30 = CFStringCreateMutable(*(a1 + 32), 0);
  if (v30)
  {
    v6 = v30;
    v31 = *(a1 + 8);
    if (v9 != v31)
    {
      CFStringAppendCharacters(v30, v9, v31 - v9);
    }

    goto LABEL_81;
  }

  Error = __CFPropertyListCreateError(3840, @"Unable to allocate mutable string while parsing plist");
LABEL_71:
  v27 = Error;
  v28 = *(a1 + 24);
  if (v28)
  {
    CFRelease(v28);
  }

  v6 = 0;
  *(a1 + 24) = v27;
  return v6;
}

CFTypeRef _uniqueStringForCharacters(uint64_t a1, const UniChar *a2, CFIndex a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    MEMORY[0x1EEE9AC00](a1, a2, a3);
    v7 = v19 - v6;
    if (v8 >= 2048)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, a3 + 1, 0x100004077774924uLL);
      if (!Typed)
      {
        Error = __CFPropertyListCreateError(3840, @"Unable to allocate string while parsing plist");
        goto LABEL_22;
      }
    }

    else
    {
      Typed = v19 - v6;
      if (a3 < 1)
      {
LABEL_12:
        Typed[a3] = 0;
        v13 = CFStringCreateWithBytes(*(a1 + 32), Typed, a3, 0x600u, 0);
        if (!v13)
        {
          Error = __CFPropertyListCreateError(3840, @"Unable to allocate ascii string while parsing plist");
LABEL_22:
          v17 = Error;
          v18 = *(a1 + 24);
          if (v18)
          {
            CFRelease(v18);
          }

          Value = 0;
          *(a1 + 24) = v17;
          return Value;
        }

LABEL_15:
        v15 = v13;
        if (Typed != v7)
        {
          CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
        }

        Value = CFSetGetValue(*(a1 + 48), v15);
        if (!Value)
        {
          CFSetAddValue(*(a1 + 48), v15);
          Value = v15;
        }

        CFRelease(v15);
        CFRetain(Value);
        return Value;
      }
    }

    v11 = 0;
    while (1)
    {
      v12 = a2[v11];
      if (v12 >= 0x80)
      {
        break;
      }

      Typed[v11++] = v12;
      if (a3 == v11)
      {
        goto LABEL_12;
      }
    }

    v13 = CFStringCreateWithCharacters(*(a1 + 32), a2, a3);
    if (!v13)
    {
      Error = __CFPropertyListCreateError(3840, @"Unable to allocate pre-unique string while parsing plist");
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  return CFRetain(&stru_1EF068AA8);
}

uint64_t _CFDataFindBytes(const __CFData *a1, const __CFData *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  BytePtr = CFDataGetBytePtr(a1);
  v11 = CFDataGetBytePtr(a2);
  if (CF_IS_OBJC(0x14uLL, a1))
  {
    v12 = [(__CFData *)a1 length];
  }

  else
  {
    v12 = *(a1 + 2);
  }

  if (CF_IS_OBJC(0x14uLL, a2))
  {
    v13 = [(__CFData *)a2 length];
  }

  else
  {
    v13 = *(a2 + 2);
  }

  v14 = ((a5 << 63 >> 63) & (a4 - v13)) + a3;
  if (a4 > v13)
  {
    v15 = v13;
  }

  else
  {
    v14 = a3;
    v15 = a4;
  }

  if ((a5 & 2) != 0)
  {
    a3 = v14;
    v16 = v15;
  }

  else
  {
    v16 = a4;
  }

  if (v16 >= v12 - a3)
  {
    v16 = v12 - a3;
  }

  result = -1;
  if (v13 - 1 < v16 && v12)
  {
    v18 = &BytePtr[a3];
    v19 = __CFDataSearchBoyerMoore(v18, v16, v11, v13, a5 & 1);
    if (v19)
    {
      return &v19[a3 - v18];
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void _extractCFPDBits(void *a1, void *a2, void *a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    length = 0;
    buffer = 0u;
    *pid = 0u;
    data = xpc_dictionary_get_data(a1, "CFPreferencesAuditToken", &length);
    if (data && length == 32)
    {
      v8 = data[1];
      buffer = *data;
      *pid = v8;
    }

    else
    {
      if (!xpc_dictionary_get_remote_connection(a1))
      {
        value = xpc_dictionary_get_value(a1, "connection");
        if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
        {
          _extractCFPDBits_cold_1();
        }
      }

      xpc_connection_get_audit_token();
    }

    v10 = pid[1];
    v36 = 0u;
    v37 = 0u;
    buffer = 0u;
    *pid = 0u;
    v9 = v10 != -1 && proc_name(v10, &buffer, 0x40u) >= 0;
  }

  else
  {
    v9 = 0;
    v36 = 0u;
    v37 = 0u;
    buffer = 0u;
    *pid = 0u;
    v10 = 0xFFFFFFFFLL;
  }

  v33 = 0;
  v32 = 0;
  v12 = toCString([a3 domain], &v33 + 1, "no domain");
  v13 = toCString([a3 user], &v33, "no user");
  if (!a2)
  {
    goto LABEL_16;
  }

  Class = object_getClass(a2);
  if (Class == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(a2);
    v15 = 0;
  }

  else
  {
    if (Class != MEMORY[0x1E69E9E80])
    {
LABEL_16:
      v15 = 0;
      string_ptr = "no key";
      goto LABEL_19;
    }

    length = 0;
    p_length = &length;
    v30 = 0x2020000000;
    v31 = 0;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = ___extractCFPDBits_block_invoke;
    applier[3] = &unk_1E6D7DAB0;
    applier[4] = &length;
    xpc_dictionary_apply(a2, applier);
    string_ptr = malloc_type_calloc(1uLL, p_length[3] + 3, 0x4EB1C7E3uLL);
    *string_ptr = 91;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___extractCFPDBits_block_invoke_2;
    v22[3] = &unk_1E6DD1DC0;
    v22[4] = &v23;
    v22[5] = string_ptr;
    xpc_dictionary_apply(a2, v22);
    string_ptr[*(v24 + 6)] = 93;
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&length, 8);
    v15 = 1;
  }

LABEL_19:
  if ([a3 byHost])
  {
    v17 = "kCFPreferencesCurrentHost";
  }

  else
  {
    v17 = "kCFPreferencesAnyHost";
  }

  v18 = [a3 copyUncanonicalizedPath];
  v19 = toCString(v18, &v32, "no uncanonicalized path");
  if (v9)
  {
    p_buffer = &buffer;
  }

  else
  {
    p_buffer = "unknown process name";
  }

  (*(a4 + 16))(a4, v10, p_buffer, v12, string_ptr, v13, v17, v19, [a3 managed]);
  if (v18)
  {
    CFRelease(v18);
  }

  if (HIBYTE(v33) == 1)
  {
    free(v12);
  }

  if (v33 == 1)
  {
    free(v13);
  }

  if (v32 == 1)
  {
    free(v19);
  }

  if (v15)
  {
    free(string_ptr);
  }
}

void sub_1831B0EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unsigned __int8 *__CFDataSearchBoyerMoore(unint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  bzero(v49, 0x800uLL);
  if (a4 >> 60)
  {
    goto LABEL_62;
  }

  v13 = MEMORY[0x1EEE9AC00](v10, v11, v12);
  v17 = &v47[-v16];
  if (a4 <= 0x100)
  {
    MEMORY[0x1EEE9AC00](v13, v14, v15);
    v18 = &v47[-((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0)];
    goto LABEL_7;
  }

  v19 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
  if (!v19 || (v17 = v19, (v20 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL)) == 0))
  {
LABEL_62:
    __CFDataHandleOutOfMemory(8 * a4);
  }

  v18 = v20;
LABEL_7:
  v21 = vdupq_n_s64(a4);
  v22 = 0;
  if (a5)
  {
    do
    {
      *&v49[v22] = v21;
      v22 += 16;
    }

    while (v22 != 2048);
    v48 = a5;
    v23 = (a4 - 1);
    if (a4 - 1 >= 0)
    {
      do
      {
        *&v49[8 * a3[v23]] = v23;
        --v23;
      }

      while (v23 != -1);
    }

    v24 = malloc_type_malloc(a4, 0x100004077774924uLL);
    if (!v24)
    {
      __CFDataHandleOutOfMemory(a4);
    }

    v25 = v24;
    memmove(v24, a3, a4);
    if (a4 >= 2)
    {
      v33 = 0;
      v34 = a4 >> 1;
      v35 = a4 - 1;
      do
      {
        v36 = v25[v33];
        v25[v33] = v25[v35];
        v25[v35] = v36;
        ++v33;
        --v35;
      }

      while (v34 != v33);
      _computeGoodSubstringShift(v25, a4, v17, v18);
      v37 = &v17[a4 - 1];
      v38 = v17;
      do
      {
        v39 = *v38;
        *v38++ = *v37;
        *v37-- = v39;
        --v34;
      }

      while (v34);
    }

    else
    {
      _computeGoodSubstringShift(v25, a4, v17, v18);
    }

    free(v25);
    if (v48)
    {
      v40 = &a3[a4];
      v41 = (a1 + a2 - a4);
      if (v41 >= a1 && a4)
      {
        v42 = a3;
        do
        {
          if (*v41 == *v42)
          {
            ++v41;
            ++v42;
          }

          else
          {
            v43 = v17[v42 - a3];
            if (*&v49[8 * *v41] > v43)
            {
              v43 = *&v49[8 * *v41];
            }

            v41 -= v43;
            v42 = a3;
          }
        }

        while (v41 >= a1 && v42 < v40);
      }

      else
      {
        v42 = a3;
      }

      if (v42 == v40)
      {
        v45 = &v41[-a4];
      }

      else
      {
        v45 = 0;
      }

      goto LABEL_59;
    }
  }

  else
  {
    do
    {
      *&v49[v22] = v21;
      v22 += 16;
    }

    while (v22 != 2048);
    if (a4)
    {
      v26 = a4 - 1;
      v27 = a3;
      do
      {
        v28 = *v27++;
        *&v49[8 * v28] = v26--;
      }

      while (v26 != -1);
    }

    _computeGoodSubstringShift(a3, a4, v17, v18);
  }

  v29 = (a1 + a4 - 1);
  if (v29 >= a1 + a2 || &a3[a4 - 1] < a3)
  {
    v30 = &a3[a4 - 1];
  }

  else
  {
    v30 = &a3[a4 - 1];
    do
    {
      if (*v29 == *v30)
      {
        --v29;
        --v30;
      }

      else
      {
        v31 = v17[v30 - a3];
        if (*&v49[8 * *v29] > v31)
        {
          v31 = *&v49[8 * *v29];
        }

        v29 += v31;
        v30 = &a3[a4 - 1];
      }
    }

    while (v29 < a1 + a2 && v30 >= a3);
  }

  if (v30 < a3)
  {
    v45 = v29 + 1;
  }

  else
  {
    v45 = 0;
  }

LABEL_59:
  if (a4 >= 0x101)
  {
    free(v17);
    free(v18);
  }

  return v45;
}

const char *toCString(const __CFString *a1, char *a2, const char *a3)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v5 = a1;
  v6 = CFGetTypeID(a1);
  if (v6 != CFStringGetTypeID())
  {
    v7 = CFCopyDescription(v5);
    if (!v7)
    {
      goto LABEL_10;
    }

    v5 = v7;
    CFAutorelease(v7);
  }

  SystemEncoding = CFStringGetSystemEncoding();
  CStringPtr = CFStringGetCStringPtr(v5, SystemEncoding);
  if (!CStringPtr)
  {
    Length = CFStringGetLength(v5);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, SystemEncoding);
    v10 = 1;
    v13 = malloc_type_calloc(MaximumSizeForEncoding + 1, 1uLL, 0x100004077774924uLL);
    if (CFStringGetCString(v5, v13, MaximumSizeForEncoding + 1, SystemEncoding))
    {
      a3 = v13;
      goto LABEL_11;
    }

    free(v13);
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = 0;
  a3 = CStringPtr;
LABEL_11:
  *a2 = v10;
  return a3;
}

uint64_t _computeGoodSubstringShift(uint64_t result, int a2, void *a3, uint64_t *a4)
{
  v4 = (a2 - 1);
  a4[v4] = a2;
  if (a2 > 1)
  {
    v5 = (a2 - 2);
    LODWORD(v6) = a2 - 1;
    v7 = a2 - 1;
    do
    {
      if (v5 <= v6 || (v8 = a4[~v7 + a2 + v5], v8 >= v5 - v6))
      {
        if (v5 >= v6)
        {
          v9 = v6;
        }

        else
        {
          v9 = v5;
        }

        if (v9 < 0)
        {
          LODWORD(v6) = v9;
        }

        else
        {
          v6 = v6;
          if (v5 < v6)
          {
            v6 = v5;
          }

          while (*(result + v6) == *(result + a2 - 1 - v5 + v6))
          {
            v10 = v6-- <= 0;
            if (v10)
            {
              LODWORD(v6) = -1;
              break;
            }
          }
        }

        v8 = v5 - v6;
        v7 = v5;
      }

      a4[v5] = v8;
      v10 = v5-- <= 0;
    }

    while (!v10);
  }

  if (a2 >= 1)
  {
    v11 = v4;
    v12 = (a2 + 1) & 0xFFFFFFFE;
    v13 = vdupq_n_s64(a2 - 1);
    v14 = xmmword_183306C30;
    v15 = a3 + 1;
    v16 = vdupq_n_s64(2uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v13, v14));
      if (v17.i8[0])
      {
        *(v15 - 1) = a2;
      }

      if (v17.i8[4])
      {
        *v15 = a2;
      }

      v14 = vaddq_s64(v14, v16);
      v15 += 2;
      v12 -= 2;
    }

    while (v12);
    LODWORD(v18) = 0;
    v19 = a2;
    do
    {
      v20 = v19--;
      if (a4[v19] == v20 && v4 - v19 > v18)
      {
        v18 = v18;
        do
        {
          if (a3[v18] == a2)
          {
            a3[v18] = v4 - v19;
          }

          ++v18;
        }

        while (v12 != v18);
        LODWORD(v18) = v12;
      }

      ++v12;
    }

    while (v12 != a2);
    if (a2 != 1)
    {
      v21 = (a2 - 1);
      v22 = v4;
      do
      {
        v23 = *a4++;
        a3[v4 - v23] = v22--;
        --v21;
      }

      while (v21);
      do
      {
        *a3++ += v11--;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t CFStringHashCharacters(unsigned __int16 *a1, uint64_t a2)
{
  if (a2 >= 97)
  {
    v5 = 0;
    v4 = a2;
    do
    {
      v4 = a1[v5 + 3] + 67503105 * v4 + 257 * (257 * (257 * a1[v5] + a1[v5 + 1]) + a1[v5 + 2]);
      v6 = v5 >= 28;
      v5 += 4;
    }

    while (!v6);
    v7 = 0;
    do
    {
      v8 = a1 + (a2 & 0xFFFFFFFFFFFFFFFELL) - 32;
      v4 = *&v8[v7 + 6] + 67503105 * v4 + 257 * (257 * (257 * *&v8[v7] + *&v8[v7 + 2]) + *&v8[v7 + 4]);
      v9 = v7 - 32;
      v7 += 8;
    }

    while (v9 < 24);
    v10 = &a1[a2];
    v11 = v10 - 32;
    do
    {
      v4 = v11[3] + 67503105 * v4 + 257 * (257 * (257 * *v11 + v11[1]) + v11[2]);
      v11 += 4;
    }

    while (v11 < v10);
  }

  else
  {
    v2 = &a1[a2];
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) < 1)
    {
      v4 = a2;
    }

    else
    {
      v3 = &a1[a2 & 0xFFFFFFFFFFFFFFFCLL];
      v4 = a2;
      do
      {
        v4 = a1[3] + 67503105 * v4 + 257 * (257 * (257 * *a1 + a1[1]) + a1[2]);
        a1 += 4;
      }

      while (a1 < v3);
    }

    while (a1 < v2)
    {
      v12 = *a1++;
      v4 = 257 * v4 + v12;
    }
  }

  return (v4 << (a2 & 0x1F)) + v4;
}

CFIndex _CFPreferencesGetUserIdentifierForUID(uid_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  key = a1;
  os_unfair_lock_lock(&_cfprefsUsernameLock);
  Mutable = _CFPreferencesGetUserIdentifierForUID__cfprefsUidToUsername;
  if (!_CFPreferencesGetUserIdentifierForUID__cfprefsUidToUsername)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    _CFPreferencesGetUserIdentifierForUID__cfprefsUidToUsername = Mutable;
  }

  if (!_cfprefsUsernameToUid)
  {
    memset(&keyCallBacks, 0, 24);
    keyCallBacks.copyDescription = kCFCopyStringDictionaryKeyCallBacks.copyDescription;
    *&keyCallBacks.equal = *&kCFCopyStringDictionaryKeyCallBacks.equal;
    _cfprefsUsernameToUid = CFDictionaryCreateMutable(0, 0, &keyCallBacks, 0);
    Mutable = _CFPreferencesGetUserIdentifierForUID__cfprefsUidToUsername;
  }

  keyCallBacks.version = 0;
  if (CFDictionaryGetValueIfPresent(Mutable, &key, &keyCallBacks))
  {
    version = CFRetain(keyCallBacks.version);
  }

  else
  {
    *__error() = 0;
    v3 = getpwuid(key);
    if (v3)
    {
      keyCallBacks.version = CFStringCreateWithFormat(0, 0, @"%s", v3->pw_name);
      CFDictionarySetValue(_CFPreferencesGetUserIdentifierForUID__cfprefsUidToUsername, key, keyCallBacks.version);
      CFDictionarySetValue(_cfprefsUsernameToUid, keyCallBacks.version, key);
      version = keyCallBacks.version;
    }

    else
    {
      v4 = __error();
      v5 = *v4;
      v7 = _CFPrefsClientLog(v4, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        _CFPreferencesGetUserIdentifierForUID_cold_1(&key, v5, v7);
      }

      version = 0;
    }
  }

  os_unfair_lock_unlock(&_cfprefsUsernameLock);
  return version;
}

uint64_t _CFPropertyListCreateSingleValue(__objc2_class **a1, const __CFData *a2, uint64_t a3, CFStringRef theString, void *a5, CFTypeRef *a6)
{
  v43 = *MEMORY[0x1E69E9840];
  if (theString && CFStringGetLength(theString))
  {
    v40 = 0;
    memset(v42, 0, sizeof(v42));
    v39 = 0;
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    if (Length >= 8)
    {
      v14 = Length;
      if (__CFDataGetBinaryPlistTopLevelInfo(a2, &v40, &v39, v42))
      {
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(&__kCFAllocatorSystemDefault, theString, @":");
        v41 = 0;
        *v38 = v39;
        Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
        Count = CFArrayGetCount(ArrayBySeparatingStrings);
        _CFDictionarySetCapacity(Mutable, Count + 1);
        v18 = Count > 0;
        if (Count < 1)
        {
LABEL_39:
          v18 = 0;
        }

        else
        {
          v35 = a3;
          v36 = a5;
          v19 = 0;
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, i);
            if (__CFBinaryPlistIsDictionary(BytePtr, v14, *v38, v42))
            {
              if ((__CFBinaryPlistGetOffsetForValueFromDictionary3(BytePtr, v14, *v38, v42, ValueAtIndex, &v41, v38) & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            else if (__CFBinaryPlistIsArray(BytePtr, v14, *v38, v42) && (IntValue = CFStringGetIntValue(ValueAtIndex), IntValue <= 0x7FFFFFFE))
            {
              if ((__CFBinaryPlistGetOffsetForValueFromArray2(BytePtr, v14, *v38, v42, IntValue, v38) & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            else if ((v19 & 1) == 0)
            {
              goto LABEL_39;
            }

            v19 = 1;
          }

          if (v36)
          {
            v37 = 0;
            v18 = __CFBinaryPlistCreateObjectFiltered(BytePtr, v14, *v38, v42, a1, v35, 0, Mutable, 0, 0, 0, &v37, 0);
            if (v18)
            {
              *v36 = v37;
            }
          }
        }

        CFRelease(ArrayBySeparatingStrings);
        v33 = Mutable;
LABEL_45:
        CFRelease(v33);
        return v18;
      }
    }

    v41 = 0;
    _CFPropertyListCreateWithData(a1, a2, a3, a6, 1, 0, 0, &v41);
    v23 = v41;
    if (v41)
    {
      v24 = CFStringCreateArrayBySeparatingStrings(&__kCFAllocatorSystemDefault, theString, @":");
      v25 = v23;
      if (CFArrayGetCount(v24) < 1)
      {
LABEL_35:
        v31 = v25 != 0;
        v32 = 1;
        if (a5 && v25)
        {
          *a5 = v25;
          CFRetain(v25);
          v18 = 1;
        }

        else
        {
LABEL_43:
          v18 = v32 & v31;
        }

        CFRelease(v24);
        v33 = v23;
        goto LABEL_45;
      }

      v26 = 0;
      v25 = v23;
      while (1)
      {
        v27 = CFArrayGetValueAtIndex(v24, v26);
        v28 = CFStringGetIntValue(v27);
        v29 = v28;
        if (v28 == 0x7FFFFFFF)
        {
          goto LABEL_25;
        }

        if (!v28)
        {
          break;
        }

        if (v28 != 0x80000000 || !v25)
        {
LABEL_31:
          if (!v25)
          {
LABEL_41:
            v32 = 0;
            v31 = 0;
            goto LABEL_43;
          }

          goto LABEL_32;
        }

LABEL_29:
        if (CFGetTypeID(v25) == 18)
        {
          Value = CFDictionaryGetValue(v25, v27);
          goto LABEL_34;
        }

LABEL_32:
        if (CFGetTypeID(v25) != 19)
        {
          v32 = 0;
          v31 = 1;
          goto LABEL_43;
        }

        Value = CFArrayGetValueAtIndex(v25, v29);
LABEL_34:
        v25 = Value;
        if (++v26 >= CFArrayGetCount(v24))
        {
          goto LABEL_35;
        }
      }

      if (CFStringCompare(@"0", v27, 0) == kCFCompareEqualTo)
      {
        goto LABEL_31;
      }

LABEL_25:
      if (!v25)
      {
        goto LABEL_41;
      }

      goto LABEL_29;
    }
  }

  return 0;
}

unint64_t __CFBinaryPlistIsDictionary(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = 0;
  if (a3 < 8)
  {
    return v4;
  }

  v5 = *(a4 + 24) - 1;
  if (v5 < a3)
  {
    return v4;
  }

  v4 = 0;
  v6 = (a1 + a3);
  if (a1 + a3 == -1)
  {
    return v4;
  }

  v7 = *v6;
  if ((*v6 & 0xF0) != 0xD0)
  {
    return v4;
  }

  v8 = (v6 + 1);
  v4 = v7 & 0xF;
  if ((v7 & 0xF) != 0xF)
  {
    goto LABEL_25;
  }

  if (a1 + v5 < v8)
  {
    return 0;
  }

  v9 = v6 + 2;
  v10 = *v8;
  if ((*v8 & 0xF0) != 0x10)
  {
    return 0;
  }

  v4 = 0;
  v11 = v10 & 0xF;
  v12 = 1 << (v10 & 0xF);
  if (__CFADD__(v12, v9) || v12 + v8 > a1 + v5)
  {
    return v4;
  }

  if (v12 > 3u)
  {
    if (v12 == 4)
    {
      v4 = bswap32(*(v8 + 1));
      goto LABEL_24;
    }

    if (v12 == 8)
    {
      v4 = bswap64(*(v8 + 1));
      goto LABEL_23;
    }

LABEL_17:
    if (v11 > 7)
    {
      v4 = 0;
      goto LABEL_24;
    }

    v4 = 0;
    v13 = v12;
    v14 = v9;
    do
    {
      v15 = *v14++;
      v4 = v15 | (v4 << 8);
      --v13;
    }

    while (v13);
LABEL_23:
    if ((v4 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (v12 == 1)
  {
    v4 = *v9;
    goto LABEL_24;
  }

  if (v12 != 2)
  {
    goto LABEL_17;
  }

  v4 = __rev16(*(v8 + 1));
LABEL_24:
  v8 = &v9[v12];
LABEL_25:
  if (v4)
  {
    v16 = 2 * v4;
    if (!is_mul_ok(v16, *(a4 + 7)))
    {
      return 0;
    }

    v4 = v16 * *(a4 + 7);
  }

  v17 = __CFADD__(v4, v8);
  LODWORD(v4) = a1 + v5 >= v4 + v8 - 1;
  if (v17)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t _CFBigNumInitWithInt32(uint64_t result, unsigned int a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if ((a2 & 0x80000000) != 0)
  {
    *(result + 20) |= 0xFFu;
    a2 = -a2;
  }

  *result = a2 % 0x3B9ACA00;
  *(result + 4) = a2 / 0x3B9ACA00;
  return result;
}

const __CFArray *_CFBundleCopyLanguageSearchListInDirectory(CFURLRef url, unsigned __int8 *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v4 = _CFBundleCopyInfoDictionaryInDirectory(&__kCFAllocatorSystemDefault, url, &v18);
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(v4, @"CFBundleDevelopmentRegion");
  v7 = Value;
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 != CFStringGetTypeID() || !CFStringGetLength(v7))
    {
      v7 = 0;
    }
  }

  v9 = CFDictionaryGetValue(v5, @"CFBundleLocalizations");
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  CFRetain(v9);
  v11 = CFGetTypeID(v10);
  if (v11 != CFArrayGetTypeID())
  {
    CFRelease(v10);
LABEL_9:
    v10 = _copyAppleLocalizations(v5);
  }

LABEL_11:
  v12 = _CFBundleCopyResourcesDirectoryURLInDirectory(url, v18);
  v13 = _CFBundleCopyLProjDirectoriesForURL(&__kCFAllocatorSystemDefault, v12);
  CFRelease(v12);
  if (v10 && v13)
  {
    MutableCopy = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v10);
    v21.length = CFArrayGetCount(v13);
    v21.location = 0;
    CFArrayAppendArray(MutableCopy, v13, v21);
    CFRelease(v13);
    v13 = MutableCopy;
LABEL_16:
    CFRelease(v10);
    goto LABEL_17;
  }

  if (v10)
  {
    v13 = CFRetain(v10);
    goto LABEL_16;
  }

  if (!v13)
  {
    v13 = CFArrayCreate(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeArrayCallBacks);
  }

LABEL_17:
  v15 = _CFBundleCopyUserLanguages();
  v16 = _CFBundleCopyPreferredLanguagesInList(v13, v7, v15, 1, url, 0);
  if (v15)
  {
    CFRelease(v15);
  }

  CFRelease(v13);
  if (v7)
  {
    v20.length = CFArrayGetCount(v16);
    v20.location = 0;
    if (CFArrayGetFirstIndexOfValue(v16, v20, v7) < 0)
    {
      CFArrayAppendValue(v16, v7);
    }
  }

  if (!CFArrayGetCount(v16))
  {
    CFArrayAppendValue(v16, @"en");
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (a2)
  {
    *a2 = v18;
  }

  return v16;
}

CFURLRef CFBundleCopyResourceURLInDirectory(CFURLRef bundleURL, CFStringRef resourceName, CFStringRef resourceType, CFStringRef subDirName)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!CFURLGetFileSystemRepresentation(bundleURL, 1u, buffer, 1026))
  {
    return 0;
  }

  v8 = strlen(buffer);
  v9 = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, buffer, v8, 1u);
  if (!v9)
  {
    v9 = CFRetain(bundleURL);
  }

  if (_CFBundleCouldBeBundle(v9))
  {
    Resources = _CFBundleCopyFindResources(0, bundleURL, v10, resourceName, resourceType, subDirName, 0, 0, 0, 0);
    if (!v9)
    {
      return Resources;
    }

    goto LABEL_9;
  }

  Resources = 0;
  if (v9)
  {
LABEL_9:
    CFRelease(v9);
  }

  return Resources;
}

uint64_t _CFGetTypeIDDescription(unint64_t a1)
{
  if (a1 > 0x47)
  {
    v2 = a1 - 72;
    if (a1 - 72 >= dword_1ED40C410[0])
    {
      return 0;
    }

    v3 = __CFRuntimeClassTables[v2 >> 6];
    if (!v3)
    {
      return 0;
    }

    v1 = (v3 + 8 * (v2 & 0x3F));
  }

  else
  {
    v1 = (&__CFRuntimeBuiltinClassTable + a1);
  }

  v4 = 0;
  if (a1 != 1)
  {
    v5 = *v1;
    if (v5)
    {
      return *(v5 + 8);
    }
  }

  return v4;
}

void _CFAssertMismatchedTypeID(unint64_t a1, unint64_t a2)
{
  v4 = _CFGetTypeIDDescription(a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "<unknown>";
  }

  v6 = _CFGetTypeIDDescription(a2);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = "<unknown>";
  }

  snprintf(__str, 0xFFuLL, "Expected typeID %lu (%s) does not match actual typeID %lu (%s)", a1, v5, a2, v7);
  qword_1EA849A30 = __str;
  __break(1u);
}

double CFGetSystemUptime()
{
  if (CFDateGetTypeID_initOnce != -1)
  {
    CFGetSystemUptime_cold_1();
  }

  return *&__CF1_TSRRate * mach_absolute_time();
}

__CFString *_CFDateComponentsCopyDescriptionInner(void *a1)
{
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  CFStringAppend(Mutable, @"{");
  if (a1[2])
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Calendar: %@", a1[2]);
  }

  if (a1[3])
  {
    CFStringAppendFormat(Mutable, 0, @"\n    TimeZone: %@", a1[3]);
  }

  if (a1[4] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Era: %ld", a1[4]);
  }

  if (a1[5] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Calendar Year: %ld", a1[5]);
  }

  if (a1[21] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Day of Year: %ld", a1[21]);
  }

  if (a1[6] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Month: %ld", a1[6]);
  }

  if (a1[7] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Leap Month: %ld", a1[7]);
  }

  if (a1[9] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Day: %ld", a1[9]);
  }

  if (a1[8] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Repeated Day: %ld", a1[8]);
  }

  if (a1[10] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Hour: %ld", a1[10]);
  }

  if (a1[11] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Minute: %ld", a1[11]);
  }

  if (a1[12] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Second: %ld", a1[12]);
  }

  if (a1[20] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Nanosecond: %ld", a1[20]);
  }

  if (a1[16] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Quarter: %ld", a1[16]);
  }

  if (a1[19] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Year for Week of Year: %ld", a1[19]);
  }

  if (a1[18] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Week of Year: %ld", a1[18]);
  }

  if (a1[17] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Week of Month: %ld", a1[17]);
  }

  if (a1[13] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Week (obsolete): %ld", a1[13]);
  }

  if (a1[14] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Weekday: %ld", a1[14]);
  }

  if (a1[15] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Weekday Ordinal: %ld", a1[15]);
  }

  return Mutable;
}

unint64_t *_CFListFormatterCreate(__objc2_class **a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CFListFormatterCreate_cold_2();
  }

  if (!a2)
  {
    _CFListFormatterCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance(a1, 0x44uLL, 8, 0, a5, a6, a7, a8);
  if (Instance)
  {
    Instance[2] = CFRetain(a2);
  }

  return Instance;
}

__CFString *_CFListFormatterCreateStringByJoiningStrings(const __CFAllocator *a1, unint64_t *a2, const __CFArray *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(a2);
  v6 = _CFGetNonObjCTypeID(a2);
  if (v6 != 68)
  {
    _CFAssertMismatchedTypeID(0x44uLL, v6);
  }

  if (!a3)
  {
    return 0;
  }

  Count = CFArrayGetCount(a3);
  if (!Count)
  {
    return &stru_1EF068AA8;
  }

  v8 = Count;
  alloc = a1;
  locale = a2[2];
  v9 = malloc_type_malloc(8 * Count, 0x10040436913F5uLL);
  v10 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  v11 = malloc_type_calloc(v8, 1uLL, 0x100004077774924uLL);
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
      Length = CFStringGetLength(ValueAtIndex);
      CharactersPtr = CFStringGetCharactersPtr(ValueAtIndex);
      if (!CharactersPtr)
      {
        CharactersPtr = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
        v28.location = 0;
        v28.length = Length;
        CFStringGetCharacters(ValueAtIndex, v28, CharactersPtr);
        v11[i] = 1;
      }

      v10[i] = Length;
      v9[i] = CharactersPtr;
    }
  }

  v24 = 0;
  Identifier = CFLocaleGetIdentifier(locale);
  if (!CFStringGetCStringPtr(Identifier, 0x600u))
  {
    CFStringGetCString(Identifier, buffer, 256, 0x600u);
  }

  v17 = __cficu_ulistfmt_open();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = ___CFListFormatterCreateStringByJoiningStrings_block_invoke;
  v23[3] = &__block_descriptor_tmp_21;
  v23[4] = v17;
  v23[5] = v8;
  v23[6] = v9;
  v23[7] = v11;
  v23[8] = v10;
  v24 = 0;
  v18 = __cficu_ulistfmt_format();
  v19 = CFStringCreateWithCharacters(alloc, chars, v18);
  ___CFListFormatterCreateStringByJoiningStrings_block_invoke(v23);
  return v19;
}

void __CFListFormatterDeallocate(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __CFListFormatterDeallocate_cold_1();
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *__CFArrayCopyDescription(unint64_t a1)
{
  v2 = *(a1 + 16);
  if ((a1 & 0x8000000000000000) != 0)
  {
    v3 = &kCFAllocatorSystemDefault;
  }

  else
  {
    v4 = atomic_load((a1 + 8));
    if (v4 < 0)
    {
      v3 = &kCFAllocatorSystemDefault;
    }

    else
    {
      v3 = (a1 - 16);
    }
  }

  v5 = *v3;
  Mutable = CFStringCreateMutable(*v3, 0);
  v7 = Mutable;
  v8 = atomic_load((a1 + 8));
  v9 = v8 & 3;
  if (v9)
  {
    if (v9 != 2)
    {
      goto LABEL_13;
    }

    v10 = CFSTR("<CFArray %p [%p]>{type = mutable-small, count = %lu, values = (%s");
  }

  else
  {
    v10 = CFSTR("<CFArray %p [%p]>{type = immutable, count = %lu, values = (%s");
  }

  v11 = "\n";
  if (!v2)
  {
    v11 = "";
  }

  CFStringAppendFormat(Mutable, 0, v10, a1, v5, v2, v11);
LABEL_13:
  v12 = atomic_load((a1 + 8));
  v13 = (v12 >> 2) & 3;
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = &kCFTypeArrayCallBacks;
    }

    else
    {
      v15 = atomic_load((a1 + 8));
      v16 = v15 & 3;
      if (v16 != 2 && v16)
      {
        v14 = 0;
      }

      else
      {
        v14 = (a1 + 48);
      }
    }
  }

  else
  {
    v14 = &__kCFNullArrayCallBacks;
  }

  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      atomic_load((a1 + 8));
      v18 = atomic_load((a1 + 8));
      if ((v18 & 3) != 0)
      {
        v19 = *(a1 + 40) + 8 * **(a1 + 40) + 16;
      }

      else
      {
        v20 = atomic_load((a1 + 8));
        v21 = (~v20 & 0xC) == 0;
        v22 = 48;
        if (v21)
        {
          v22 = 88;
        }

        v19 = a1 + v22;
      }

      v23 = *(v19 + 8 * i);
      copyDescription = v14->copyDescription;
      if (copyDescription && (v25 = copyDescription(v23)) != 0)
      {
        v26 = v25;
        CFStringAppendFormat(v7, 0, @"\t%lu : %@\n", i, v25);
        CFRelease(v26);
      }

      else
      {
        CFStringAppendFormat(v7, 0, @"\t%lu : <%p>\n", i, v23);
      }
    }
  }

  CFStringAppend(v7, @"}"));
  return v7;
}

CFIndex CFArrayGetCountOfValue(CFArrayRef theArray, CFRange range, const void *value)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(0x13uLL, theArray))
  {
    goto LABEL_2;
  }

  v11 = atomic_load(theArray + 1);
  v12 = (v11 >> 2) & 3;
  if (v12)
  {
    if (v12 == 1)
    {
LABEL_2:
      v7 = &kCFTypeArrayCallBacks;
      goto LABEL_3;
    }

    v13 = atomic_load(theArray + 1);
    v14 = v13 & 3;
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = (theArray + 48);
    }

    if (v14 == 2)
    {
      v7 = (theArray + 48);
    }

    else
    {
      v7 = v15;
    }
  }

  else
  {
    v7 = &__kCFNullArrayCallBacks;
  }

LABEL_3:
  if (length < 1)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = [(__CFArray *)theArray objectAtIndex:location];
    if (v9 == value || (equal = v7->equal) != 0 && equal(value, v9))
    {
      ++v8;
    }

    ++location;
    --length;
  }

  while (length);
  return v8;
}

void CFArrayExchangeValuesAtIndices(CFMutableArrayRef theArray, CFIndex idx1, CFIndex idx2)
{
  if (CF_IS_OBJC(0x13uLL, theArray))
  {

    [(__CFArray *)theArray exchangeObjectAtIndex:idx1 withObjectAtIndex:idx2];
  }

  else
  {
    v6 = (theArray + 8);
    v7 = atomic_load(theArray + 1);
    if ((v7 & 1 | 2) == 2)
    {
      v8 = atomic_load(v6);
      v9 = v8 & 3;
      if (v9 == 2)
      {
        v13 = (*(theArray + 5) + 8 * **(theArray + 5) + 16);
      }

      else if (v9)
      {
        v13 = 0;
      }

      else
      {
        v10 = atomic_load(theArray + 1);
        v11 = (~v10 & 0xC) == 0;
        v12 = 48;
        if (v11)
        {
          v12 = 88;
        }

        v13 = theArray + v12;
      }

      v14 = &v13[8 * idx1];
    }

    else
    {
      v14 = 0;
    }

    atomic_load(v6);
    v15 = atomic_load(v6);
    if ((v15 & 3) != 0)
    {
      v16 = (*(theArray + 5) + 8 * **(theArray + 5) + 16);
    }

    else
    {
      v17 = atomic_load(theArray + 1);
      v11 = (~v17 & 0xC) == 0;
      v18 = 48;
      if (v11)
      {
        v18 = 88;
      }

      v16 = theArray + v18;
    }

    v19 = *v14;
    *v14 = *&v16[8 * idx2];
    *&v16[8 * idx2] = v19;
    ++*(theArray + 3);
  }
}

void _CFArraySortValues(void *a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x13uLL, a1))
  {
    v6 = [a1 count];
  }

  else
  {
    v6 = a1[2];
  }

  if (v6 >= 2)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    Typed = values;
    *values = 0u;
    v13 = 0u;
    if (v6 >= 0x101)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * v6, 0x80040B8603338uLL);
    }

    v45.location = 0;
    v45.length = v6;
    CFArrayGetValues(a1, v45, Typed);
    v11[0] = a2;
    v11[1] = a3;
    CFQSortArray(Typed, v6, 8, __CFArrayCompareValues, v11, v8, v9, v10);
    v46.location = 0;
    v46.length = v6;
    CFArrayReplaceValues(a1, v46, Typed, v6);
    if (Typed != values)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    }
  }
}

uint64_t __CFAttributedStringEqual(CFStringRef *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a1[2];
  if (CF_IS_OBJC(0x3EuLL, a2))
  {
    v5 = [a2 string];
  }

  else
  {
    v5 = a2[2];
  }

  result = CFEqual(v4, v5);
  if (result)
  {
    Length = CFStringGetLength(a1[2]);
    effectiveRange.location = 0;
    effectiveRange.length = 0;
    v16.location = 0;
    v16.length = 0;
    if (Length < 1)
    {
      return 1;
    }

    else
    {
      v8 = Length;
      location = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      Attributes = 0;
      v15 = 0;
      while (1)
      {
        if (v15 >= v11 + v12)
        {
          Attributes = CFAttributedStringGetAttributes(a1, v15, &effectiveRange);
          location = v16.location;
          v10 = v16.length;
        }

        if (v15 >= location + v10)
        {
          v13 = CFAttributedStringGetAttributes(a2, v15, &v16);
        }

        result = CFEqual(Attributes, v13);
        if (!result)
        {
          break;
        }

        location = v16.location;
        v10 = v16.length;
        v11 = effectiveRange.location;
        v12 = effectiveRange.length;
        if (effectiveRange.location + effectiveRange.length >= v16.location + v16.length)
        {
          v15 = v16.location + v16.length;
        }

        else
        {
          v15 = effectiveRange.location + effectiveRange.length;
        }

        if (v15 >= v8)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

__CFString *__CFAttributedStringCopyDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v82 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  Length = CFStringGetLength(v3[2]);
  effectiveRange.location = 0;
  effectiveRange.length = 0;
  v16 = Length;
  if (Length >= 1)
  {
    location = 0;
    while (1)
    {
      Attributes = CFAttributedStringGetAttributes(v3, location, &effectiveRange);
      v8 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v3[2], effectiveRange);
      CFStringAppend(Mutable, v8);
      CFRelease(v8);
      CFStringAppendFormat(Mutable, 0, @" %p {", Attributes);
      Count = CFDictionaryGetCount(Attributes);
      v81 = 0u;
      v80 = 0u;
      v79 = 0u;
      v78 = 0u;
      v77 = 0u;
      v76 = 0u;
      v75 = 0u;
      v74 = 0u;
      v73 = 0u;
      v72 = 0u;
      v71 = 0u;
      v70 = 0u;
      v69 = 0u;
      v68 = 0u;
      v67 = 0u;
      v66 = 0u;
      v65 = 0u;
      v64 = 0u;
      v63 = 0u;
      v62 = 0u;
      v61 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      v53 = 0u;
      v52 = 0u;
      v51 = 0u;
      *keys = 0u;
      if (Count >= 0xFFFFFFFFFFFFFFFLL)
      {
        __CFAttributedStringCopyDescription_cold_1();
      }

      v10 = Count;
      if (Count >= 0x101)
      {
        break;
      }

      v48 = 0uLL;
      v49 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      *values = 0uLL;
      v19 = 0uLL;
      v11 = keys;
      v12 = values;
      CFDictionaryGetKeysAndValues(Attributes, keys, values);
      if (v10)
      {
        goto LABEL_8;
      }

LABEL_13:
      CFStringAppendFormat(Mutable, 0, @"} Len %ld\n", effectiveRange.length);
      effectiveRange.location += effectiveRange.length;
      if (v11 != keys)
      {
        free(v11);
      }

      if (v12 != values)
      {
        free(v12);
      }

      location = effectiveRange.location;
      if (effectiveRange.location >= v16)
      {
        return Mutable;
      }
    }

    v11 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
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
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *values = 0u;
    v19 = 0u;
    v12 = malloc_type_malloc(8 * v10, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(Attributes, v11, v12);
LABEL_8:
    v13 = v10 - 1;
    do
    {
      if (v13)
      {
        v14 = ", ";
      }

      else
      {
        v14 = "";
      }

      CFStringAppendFormat(Mutable, 0, @"%@=%@%s", v11[v13], v12[v13], v14);
      --v13;
    }

    while (v13 != -1);
    goto LABEL_13;
  }

  return Mutable;
}

unint64_t *_CFAttributedStringCreateWithRuns(__objc2_class **a1, const __CFString *a2, const __CFDictionary **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  Instance = _CFRuntimeCreateInstance(a1, 0x3EuLL, 16, 0, a5, a6, a7, a8);
  if (Instance)
  {
    Instance[2] = CFStringCreateCopy(a1, a2);
    Instance[3] = CFRunArrayCreate(a1, v14, v15, v16, v17, v18, v19, v20);
    Length = CFStringGetLength(Instance[2]);
    if (Length)
    {
      v22 = Length;
      Mutable = CFDictionaryCreateMutable(a1, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFRunArrayInsert(Instance[3], 0, v22, Mutable);
      CFRelease(Mutable);
    }

    if (v8 >= 1)
    {
      v24 = (a4 + 8);
      do
      {
        v25 = *a3++;
        AttributesDictionary = __CFAttributedStringCreateAttributesDictionary(a1, v25);
        CFRunArrayReplace(Instance[3], *(v24 - 1), *v24, AttributesDictionary, *v24);
        CFRelease(AttributesDictionary);
        v24 += 2;
        --v8;
      }

      while (v8);
    }

    v27 = atomic_load(Instance + 1);
    v28 = v27;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v28, v27 | 1);
      v29 = v28 == v27;
      v27 = v28;
    }

    while (!v29);
  }

  return Instance;
}

uint64_t _CFAttributedStringGetNumberOfRuns(const __CFAttributedString *a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  Length = CFAttributedStringGetLength(a1);
  if (Length < 1)
  {
    return 0;
  }

  v5 = Length;
  v6 = 0;
  v7 = 0;
  do
  {
    longestEffectiveRange.location = 0;
    longestEffectiveRange.length = 0;
    v13.location = v7;
    v13.length = v5;
    AttributesAndLongestEffectiveRange = CFAttributedStringGetAttributesAndLongestEffectiveRange(a1, v7, v13, &longestEffectiveRange);
    if (a2 || CFDictionaryGetCount(AttributesAndLongestEffectiveRange) >= 1)
    {
      ++v6;
    }

    v7 += longestEffectiveRange.length;
    v9 = v5 <= longestEffectiveRange.length;
    v5 -= longestEffectiveRange.length;
  }

  while (!v9);
  return v6;
}

uint64_t _CFAttributedStringGetRuns(const __CFAttributedString *a1, int a2, uint64_t *a3, CFRange *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  result = CFAttributedStringGetLength(a1);
  if (result >= 1)
  {
    v9 = result;
    v10 = 0;
    do
    {
      longestEffectiveRange.location = 0;
      longestEffectiveRange.length = 0;
      v15.location = v10;
      v15.length = v9;
      result = CFAttributedStringGetAttributesAndLongestEffectiveRange(a1, v10, v15, &longestEffectiveRange);
      v11 = result;
      if (a2 || (result = CFDictionaryGetCount(result), result >= 1))
      {
        if (a3)
        {
          *a3++ = v11;
        }

        if (a4)
        {
          *a4++ = longestEffectiveRange;
        }
      }

      v10 += longestEffectiveRange.length;
      v12 = v9 <= longestEffectiveRange.length;
      v9 -= longestEffectiveRange.length;
    }

    while (!v12);
  }

  return result;
}

CFMutableStringRef CFAttributedStringGetMutableString(CFMutableAttributedStringRef aStr)
{
  if (!CF_IS_OBJC(0x3EuLL, aStr))
  {
    return 0;
  }

  return [(__CFAttributedString *)aStr mutableString];
}

void CFAttributedStringRemoveAttribute(CFMutableAttributedStringRef aStr, CFRange range, CFStringRef attrName)
{
  length = range.length;
  location = range.location;
  v17 = *MEMORY[0x1E69E9840];
  if (!CF_IS_OBJC(0x3EuLL, aStr))
  {
    if (!length)
    {
      return;
    }

    while (1)
    {
      v15 = 0;
      v16 = 0;
      ValueAtIndex = CFRunArrayGetValueAtIndex(*(aStr + 3), location, &v15, 0);
      v8 = ValueAtIndex;
      v10 = v15;
      v9 = v16;
      v11 = v15 == location && v16 <= length;
      if (!v11)
      {
        goto LABEL_14;
      }

      if (CFGetRetainCount(ValueAtIndex) != 1)
      {
        break;
      }

      CFDictionaryRemoveValue(v8, attrName);
LABEL_21:
      location += v16;
      length -= v16;
      if (!length)
      {
        return;
      }
    }

    v10 = v15;
    v9 = v16;
LABEL_14:
    v11 = v10 < location;
    v12 = v10 - location;
    if (v11)
    {
      v9 += v12;
      v15 = location;
      v16 = v9;
    }

    if (v9 > length)
    {
      v16 = length;
    }

    if (CFDictionaryContainsKey(v8, attrName))
    {
      v13 = CFGetAllocator(aStr);
      AttributesDictionary = __CFAttributedStringCreateAttributesDictionary(v13, v8);
      CFDictionaryRemoveValue(AttributesDictionary, attrName);
      CFRunArrayReplace(*(aStr + 3), v15, v16, AttributesDictionary, v16);
      CFRelease(AttributesDictionary);
    }

    goto LABEL_21;
  }

  [(__CFAttributedString *)aStr removeAttribute:attrName range:location, length];
}

void CFAttributedStringBeginEditing(CFMutableAttributedStringRef aStr)
{
  if (CF_IS_OBJC(0x3EuLL, aStr))
  {

    [(__CFAttributedString *)aStr beginEditing];
  }
}

void CFAttributedStringEndEditing(CFMutableAttributedStringRef aStr)
{
  if (CF_IS_OBJC(0x3EuLL, aStr))
  {

    [(__CFAttributedString *)aStr endEditing];
  }
}

uint64_t _CFAttributedStringCheckAndReplace(uint64_t a1, CFIndex a2, CFIndex a3, const __CFString *a4)
{
  Length = CFStringGetLength(*(a1 + 16));
  if (a2 > Length || a2 + a3 > Length)
  {
    return 3;
  }

  v11 = atomic_load((a1 + 8));
  if (v11)
  {
    return 1;
  }

  v12.location = a2;
  v12.length = a3;
  CFAttributedStringReplaceString(a1, v12, a4);
  return 0;
}

uint64_t _CFAttributedStringCheckAndSetAttribute(uint64_t a1, CFIndex a2, CFIndex a3, const __CFString *a4, const void *a5)
{
  Length = CFStringGetLength(*(a1 + 16));
  if (a2 > Length || a2 + a3 > Length)
  {
    return 3;
  }

  v13 = atomic_load((a1 + 8));
  if (v13)
  {
    return 1;
  }

  if (!a4)
  {
    return 2;
  }

  v14.location = a2;
  v14.length = a3;
  if (a5)
  {
    CFAttributedStringSetAttribute(a1, v14, a4, a5);
  }

  else
  {
    CFAttributedStringRemoveAttribute(a1, v14, a4);
  }

  return 0;
}

unint64_t *__CFBagCreateTransfer(__objc2_class **a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[10] = *MEMORY[0x1E69E9840];
  v22[0] = __CFTypeCollectionRetain;
  v22[1] = __CFTypeCollectionRetain;
  v22[2] = __CFTypeCollectionRelease;
  v22[3] = __CFTypeCollectionRelease;
  v22[4] = CFEqual;
  v22[5] = CFEqual;
  v22[6] = CFHash;
  v22[7] = 0;
  v22[8] = CFCopyDescription;
  v22[9] = CFCopyDescription;
  v10 = CFBasicHashCreate(a1, 0x2002u, v22, a4, a5, a6, a7, a8);
  CFBasicHashSuppressRC(v10);
  if (a3 >= 1)
  {
    CFBasicHashSetCapacity(v10, a3);
    do
    {
      v11 = *a2++;
      CFBasicHashAddValue(v10, v11, v11);
      --a3;
    }

    while (a3);
  }

  CFBasicHashUnsuppressRC(v10);
  v18 = atomic_load(v10 + 1);
  v19 = v18;
  do
  {
    atomic_compare_exchange_strong(v10 + 1, &v19, v18 | 0x40);
    v20 = v19 == v18;
    v18 = v19;
  }

  while (!v20);
  _CFRuntimeSetInstanceTypeIDAndIsa(v10, 4uLL, v12, v13, v14, v15, v16, v17);
  if (__CFOASafe)
  {
    __CFSetLastAllocationEventName();
  }

  return v10;
}

CFBagRef CFBagCreate(CFAllocatorRef allocator, const void **values, CFIndex numValues, const CFBagCallBacks *callBacks)
{
  v8 = numValues;
  Generic = __CFBagCreateGeneric(allocator, callBacks, numValues, callBacks, v4, v5, v6, v7);
  v17 = Generic;
  if (Generic)
  {
    if (v8 >= 1)
    {
      CFBasicHashSetCapacity(Generic, v8);
      do
      {
        v18 = *values++;
        CFBasicHashAddValue(v17, v18, v18);
        --v8;
      }

      while (v8);
    }

    v19 = atomic_load(v17 + 1);
    v20 = v19;
    do
    {
      atomic_compare_exchange_strong(v17 + 1, &v20, v19 | 0x40);
      v21 = v20 == v19;
      v19 = v20;
    }

    while (!v21);
    _CFRuntimeSetInstanceTypeIDAndIsa(v17, 4uLL, v11, v12, v13, v14, v15, v16);
    if (__CFOASafe)
    {
      __CFSetLastAllocationEventName();
    }
  }

  return v17;
}

void CFBagGetValues(CFBagRef theBag, const void **values)
{
  Count = CFBasicHashGetCount(theBag);

  CFBasicHashGetElements(theBag, Count, 0, values);
}

CFMutableBagRef CFBagCreateMutableCopy(CFAllocatorRef allocator, CFIndex capacity, CFBagRef theBag)
{
  v31 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(4uLL, theBag))
  {
    Count = CFBasicHashGetCount(theBag);
    memset(v30, 0, 512);
    if (Count >= 257)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * Count, 0xC0040B8AA526DuLL);
    }

    else
    {
      Typed = v30;
    }

    v20 = CFBasicHashGetCount(theBag);
    CFBasicHashGetElements(theBag, v20, 0, Typed);
    Generic = __CFBagCreateGeneric(allocator, &kCFTypeBagCallBacks, v21, v22, v23, v24, v25, v26);
    Copy = Generic;
    if (Count >= 1 && Generic)
    {
      CFBasicHashSetCapacity(Generic, Count);
      for (i = 0; i < Count; ++i)
      {
        CFBasicHashAddValue(Copy, *(Typed + i), *(Typed + i));
      }
    }

    if (Count >= 257)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    }
  }

  else
  {
    Copy = CFBasicHashCreateCopy(allocator, theBag, v5, v6, v7, v8, v9, v10);
  }

  if (Copy)
  {
    _CFRuntimeSetInstanceTypeIDAndIsa(Copy, 4uLL, v13, v14, v15, v16, v17, v18);
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }
  }

  return Copy;
}

Boolean CFBagGetValueIfPresent(CFBagRef theBag, const void *candidate, const void **value)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0u;
  v6 = 0u;
  CFBasicHashFindBucket(theBag, candidate, &v5);
  if (!*(&v6 + 1))
  {
    return 0;
  }

  if (value)
  {
    *value = v6;
  }

  return 1;
}

BOOL _CFBagIsMutable(unint64_t a1)
{
  if (CF_IS_OBJC(4uLL, a1))
  {
    return 0;
  }

  v3 = atomic_load((a1 + 8));
  return ((v3 >> 6) & 1) == 0;
}

void _CFBagSetCapacity(unint64_t a1, uint64_t a2)
{
  if (!CF_IS_OBJC(4uLL, a1))
  {

    CFBasicHashSetCapacity(a1, a2);
  }
}

void CFBagReplaceValue(CFMutableBagRef theBag, const void *value)
{
  v10 = atomic_load(theBag + 1);
  if ((v10 & 0x40) != 0)
  {
    CFLog(3, @"%s(): immutable collection %p given to mutating function", v2, v3, v4, v5, v6, v7, "void CFBagReplaceValue(CFMutableBagRef, const void *)");
  }

  CFBasicHashReplaceValue(theBag, value, value);
}

void CFBagSetValue(CFMutableBagRef theBag, const void *value)
{
  v10 = atomic_load(theBag + 1);
  if ((v10 & 0x40) != 0)
  {
    CFLog(3, @"%s(): immutable collection %p given to mutating function", v2, v3, v4, v5, v6, v7, "void CFBagSetValue(CFMutableBagRef, const void *)");
  }

  CFBasicHashSetValue(theBag, value, value);
}

CFStringRef __CFAllocatorCopyDescription(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 == 939)
  {
    v1 = a1;
  }

  return CFStringCreateWithFormat(v1, 0, @"<CFAllocator %p [%p]>{info = %p}", a1, v1, *(a1 + 144));
}

void CFAllocatorSetDefault(CFAllocatorRef allocator)
{
  v2 = _CFGetTSD(1);
  if (!v2)
  {
    v2 = &__kCFAllocatorSystemDefault;
  }

  if (allocator)
  {
    v3 = *allocator & ~MEMORY[0x1E69E58F0];
    if ((*allocator & MEMORY[0x1E69E58F0]) != 0)
    {
      v3 |= *allocator & MEMORY[0x1E69E58F0];
    }

    if (v3 == qword_1ED40C0D0 && v2 != allocator)
    {
      CFRelease(v2);
      CFRetain(allocator);
      CFRetain(allocator);

      _CFSetTSD(1, allocator, 0);
    }
  }
}

CFAllocatorRef CFAllocatorCreateWithZone(const __CFAllocator *a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3.version = 0;
  v3.info = a2;
  memset(&v3.retain, 0, 24);
  v3.allocate = __CFAllocatorSystemAllocate;
  v3.reallocate = __CFAllocatorSystemReallocate;
  v3.deallocate = __CFAllocatorSystemDeallocate;
  v3.preferredSize = 0;
  result = CFAllocatorCreate(a1, &v3);
  if (result)
  {
    *(result + 26) = __CFAllocatorSystemAllocateTyped;
    *(result + 27) = __CFAllocatorSystemReallocateTyped;
  }

  return result;
}

void *__CFAllocatorCustomCalloc(malloc_zone_t *a1, int a2, size_t size)
{
  Impl = _CFAllocatorAllocateImpl(a1, size, 0x83C93EDDuLL, 0);
  v5 = Impl;
  if (Impl)
  {
    bzero(Impl, size);
  }

  return v5;
}

unint64_t __CFAllocatorCustomValloc(malloc_zone_t *a1, unint64_t a2)
{
  v2 = MEMORY[0x1E69E9AC8];
  if (~(2 * *MEMORY[0x1E69E9AC8]) <= a2)
  {
    return 0;
  }

  else
  {
    return (_CFAllocatorAllocateImpl(a1, *MEMORY[0x1E69E9AC8] + a2, 0x3EB7D1D2uLL, 0) + *v2 - 1) & -*v2;
  }
}

double __os_log_helper_1_2_3_8_32_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 136315650;
  *a1 = 136315650;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  return result;
}

double __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&result = 136315906;
  *a1 = 136315906;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  *(a1 + 32) = 2048;
  *(a1 + 34) = a5;
  return result;
}

uint64_t (**__CFStringEncodingGetArabicConverterDefinition(int a1, uint64_t (*a2)(uint64_t)))()
{
  if (!__CFStringEncodingPrecomposeLatinCharacter)
  {
    __CFStringEncodingPrecomposeLatinCharacter = a2(4);
    __CFStringEncodingIsValidCombiningCharacterForLatin1 = a2(3);
  }

  if (a1 > 517)
  {
    if (a1 != 518)
    {
      if (a1 == 1286)
      {
        return __CFConverterWindowsArabic;
      }

      return 0;
    }

    return __CFConverterISOLatinArabic;
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 == 140)
      {
        return __CFConverterMacFarsi;
      }

      return 0;
    }

    return __CFConverterMacArabic;
  }
}

uint64_t __CFToMacArabic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  if (a3 < 1)
  {
    v12 = 0;
    goto LABEL_25;
  }

  v11 = a1;
  v12 = 0;
  while (1)
  {
    if (a5 < 0)
    {
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      a1 = *(a2 + 2 * v12);
      if ((a1 - 1619) >= 3)
      {
        a1 = __CFStringEncodingIsValidCombiningCharacterForLatin1();
        if (!a1)
        {
          goto LABEL_25;
        }
      }
    }

    v13 = *(a2 + 2 * v12);
    if (v13 <= 0x7F)
    {
      v19 = *(a2 + 2 * v12);
      if (!a5)
      {
        goto LABEL_20;
      }

LABEL_19:
      *(a4 + v12) = v19;
      goto LABEL_20;
    }

    if ((v13 - 10059) < 0xD955u)
    {
      break;
    }

    v14 = &unk_1832BB284;
    v15 = &macarabic_from_uni;
    while (1)
    {
      v16 = &v15[2 * ((v14 - v15) >> 3)];
      v17 = *v16;
      if (v17 <= v13)
      {
        break;
      }

      v14 = v16 - 2;
LABEL_16:
      if (v15 > v14)
      {
        goto LABEL_17;
      }
    }

    if (v17 < v13)
    {
      v15 = v16 + 2;
      goto LABEL_16;
    }

    v19 = *(v16 + 2);
    if (a5)
    {
      goto LABEL_19;
    }

LABEL_20:
    if (++v12 == a3)
    {
      v12 = a3;
      goto LABEL_25;
    }
  }

LABEL_17:
  a1 = __CFToISOArabic(a1, v13, &v19);
  if (a1)
  {
    if (!a5)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_25:
  *a6 = 0;
  return v12;
}

uint64_t __CFFromMacArabic(uint64_t a1, char *a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  if (a5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a5;
  }

  if (a5)
  {
    result = v6;
  }

  else
  {
    result = a3;
  }

  if (result >= 1)
  {
    v8 = result;
    while (1)
    {
      v10 = *a2++;
      v9 = v10;
      if (v10 < 0)
      {
        break;
      }

      if (a5)
      {
        goto LABEL_11;
      }

LABEL_12:
      ++a4;
      if (!--v8)
      {
        goto LABEL_17;
      }
    }

    v9 = macarabic_to_uni[v9 & 0x7F];
    if (!a5)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a4 = v9;
    goto LABEL_12;
  }

  result = 0;
LABEL_17:
  *a6 = result;
  return result;
}

uint64_t __CFIsValidCombiningCharacterForArabic(int a1)
{
  if ((a1 - 1619) >= 3)
  {
    return __CFStringEncodingIsValidCombiningCharacterForLatin1();
  }

  else
  {
    return 1;
  }
}

uint64_t __CFToISOArabic(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 < 0xA1)
  {
    goto LABEL_2;
  }

  if (a2 - 1569 <= 0x31)
  {
    if ((a2 - 59) < 5u)
    {
      return 0;
    }

    LOBYTE(a2) = a2 - 96;
    goto LABEL_2;
  }

  result = 0;
  if (a2 <= 1547)
  {
    if (a2 == 164 || a2 == 173)
    {
      goto LABEL_2;
    }
  }

  else
  {
    switch(a2)
    {
      case 0x60Cu:
        LOBYTE(a2) = -84;
        goto LABEL_2;
      case 0x61Bu:
        LOBYTE(a2) = -69;
        goto LABEL_2;
      case 0x61Fu:
        LOBYTE(a2) = -65;
LABEL_2:
        *a3 = a2;
        return 1;
    }
  }

  return result;
}

uint64_t __CFToMacFarsi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a5 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a5;
  }

  if (a5)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 < 1)
  {
    v12 = 0;
    goto LABEL_28;
  }

  v12 = 0;
  v20 = 0;
  while (1)
  {
    v13 = *(a2 + 2 * v12);
    if (v13 <= 0x7F)
    {
      v20 = *(a2 + 2 * v12);
      goto LABEL_22;
    }

    if (v13 - 1776 <= 9)
    {
      v14 = v13 - 64;
      goto LABEL_13;
    }

    if ((v13 - 10059) < 0xD955u)
    {
      break;
    }

    v15 = &unk_1832BB284;
    v16 = &macarabic_from_uni;
    while (1)
    {
      v17 = &v16[2 * ((v15 - v16) >> 3)];
      v18 = *v17;
      if (v18 <= v13)
      {
        break;
      }

      v15 = v17 - 2;
LABEL_20:
      if (v16 > v15)
      {
        goto LABEL_21;
      }
    }

    if (v18 < v13)
    {
      v16 = v17 + 2;
      goto LABEL_20;
    }

    v14 = *(v17 + 2);
LABEL_13:
    v20 = v14;
LABEL_22:
    if (a5)
    {
      *(a4 + v12) = v20;
    }

    if (++v12 == v8)
    {
      v12 = v8;
      goto LABEL_28;
    }
  }

LABEL_21:
  a1 = __CFToISOArabic(a1, v13, &v20);
  if (a1)
  {
    goto LABEL_22;
  }

LABEL_28:
  *a6 = v12;
  return v12;
}

uint64_t __CFFromMacFarsi(uint64_t a1, char *a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  if (a5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a5;
  }

  if (a5)
  {
    result = v6;
  }

  else
  {
    result = a3;
  }

  if (result >= 1)
  {
    v8 = result;
    while (1)
    {
      v10 = *a2++;
      v9 = v10;
      v11 = v10;
      if (v10 < 0)
      {
        if ((v11 - 176) > 9)
        {
          LOWORD(v11) = macarabic_to_uni[v9 & 0x7F];
          if (!a5)
          {
            goto LABEL_14;
          }

LABEL_13:
          *a4 = v11;
          goto LABEL_14;
        }

        LOWORD(v11) = v11 | 0x640;
      }

      if (a5)
      {
        goto LABEL_13;
      }

LABEL_14:
      ++a4;
      if (!--v8)
      {
        goto LABEL_19;
      }
    }
  }

  result = 0;
LABEL_19:
  *a6 = result;
  return result;
}

uint64_t __CFToWinArabic(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 8483 < 0xFFFFDF7D)
  {
    return 0;
  }

  v5 = &cp1256_from_uni;
  v6 = &unk_1832BB564;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromWinArabic(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = cp1256_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToWinArabicPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = *a2;
  if (v9 >= 0x80)
  {
    v11 = a2[1];
    if (v11 == 1621)
    {
      if (v9 != 1575)
      {
        return 0;
      }

      v10 = 1573;
    }

    else if (v11 == 1620)
    {
      result = 0;
      if (*a2 > 0x6C0u)
      {
        switch(v9)
        {
          case 0x6C1u:
            v10 = 1730;
            break;
          case 0x6D2u:
            v10 = 1747;
            break;
          case 0x6D5u:
            v10 = 1728;
            break;
          default:
            return result;
        }
      }

      else
      {
        switch(v9)
        {
          case 0x627u:
            v10 = 1571;
            break;
          case 0x648u:
            v10 = 1572;
            break;
          case 0x64Au:
            v10 = 1574;
            break;
          default:
            return result;
        }
      }
    }

    else
    {
      if (v11 != 1619 || v9 != 1575)
      {
        return 0;
      }

      v10 = 1570;
    }
  }

  else
  {
    v10 = __CFStringEncodingPrecomposeLatinCharacter(a2, a3, 0);
    if (v10 <= 0x7F)
    {
      goto LABEL_33;
    }

    if ((v10 - 8483) < 0xDF7Du)
    {
      return 0;
    }
  }

  v13 = &cp1256_from_uni;
  v14 = &unk_1832BB564;
  while (1)
  {
    v15 = &v13[2 * ((v14 - v13) >> 3)];
    v16 = *v15;
    if (v16 <= v10)
    {
      break;
    }

    v14 = v15 - 2;
LABEL_30:
    if (v13 > v14)
    {
      return 0;
    }
  }

  if (v16 < v10)
  {
    v13 = v15 + 2;
    goto LABEL_30;
  }

  LOBYTE(v10) = *(v15 + 2);
LABEL_33:
  if (!v10)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v10;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFFromISOArabic(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (a2 < 0xA1)
  {
    goto LABEL_2;
  }

  if (a2 < 0xC1)
  {
    result = 0;
    if (a2 <= 172)
    {
      if (a2 == 164)
      {
        goto LABEL_2;
      }

      if (a2 == 172)
      {
        LOWORD(a2) = 1548;
        goto LABEL_2;
      }
    }

    else
    {
      switch(a2)
      {
        case 0xADu:
          goto LABEL_2;
        case 0xBBu:
          LOWORD(a2) = 1563;
          goto LABEL_2;
        case 0xBFu:
          LOWORD(a2) = 1567;
          goto LABEL_2;
      }
    }
  }

  else
  {
    result = 0;
    if (a2 <= 0xF2 && a2 - 219 >= 5)
    {
      LOWORD(a2) = a2 + 1376;
LABEL_2:
      *a3 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t __CFToISOArabicPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = a2[1];
  if (v9 == 1621)
  {
    if (*a2 == 1575)
    {
      v10 = 1573;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v9 == 1620)
  {
    v11 = *a2;
    if (v11 > 0x6C0)
    {
      switch(v11)
      {
        case 0x6C1u:
          v10 = 1730;
          goto LABEL_18;
        case 0x6D2u:
          v10 = 1747;
          goto LABEL_18;
        case 0x6D5u:
          v10 = 1728;
          goto LABEL_18;
      }
    }

    else
    {
      switch(v11)
      {
        case 0x627u:
          v10 = 1571;
          goto LABEL_18;
        case 0x648u:
          v10 = 1572;
          goto LABEL_18;
        case 0x64Au:
          v10 = 1574;
          goto LABEL_18;
      }
    }

LABEL_17:
    v10 = 65533;
    goto LABEL_18;
  }

  if (v9 != 1619 || *a2 != 1575)
  {
    goto LABEL_17;
  }

  v10 = 1570;
LABEL_18:
  v14 = 0;
  v12 = __CFToISOArabic(a1, v10, &v14);
  result = 0;
  if (v12 && v14)
  {
    if (a5)
    {
      *a4 = v14;
    }

    *a6 = 1;
    return 2;
  }

  return result;
}

unsigned __int16 *CFUniCharGetBidiCategory(unsigned __int16 *result, uint64_t a2, _BYTE *a3)
{
  if (a2 >= 1)
  {
    v4 = result;
    result = 0;
    v5 = -1;
    v6 = &v4[a2];
    do
    {
      v7 = v4 + 1;
      v8 = *v4;
      if ((v8 & 0xFC00) != 0xD800 || v7 >= v6)
      {
        ++v4;
      }

      else
      {
        v10 = *v7;
        v11 = (v10 & 0xFC00) == 56320;
        v12 = v10 + (v8 << 10) - 56613888;
        if (v11)
        {
          v4 += 2;
        }

        else
        {
          ++v4;
        }

        if (v11)
        {
          v8 = v12;
        }
      }

      if (v5 != (HIWORD(v8) & 0x1F))
      {
        result = CFUniCharGetUnicodePropertyDataForPlane(1u, HIWORD(v8) & 0x1F);
        v5 = HIWORD(v8) & 0x1F;
      }

      if (result)
      {
        v13 = *(result + BYTE1(v8));
        if (v13 >= 0x13)
        {
          LOBYTE(v13) = *(result + ((v13 << 8) - 4864) + v8 + 256);
        }
      }

      else
      {
        LOBYTE(v13) = 1;
      }

      *a3 = v13;
      if (v8 < 0x10000)
      {
        ++a3;
      }

      else
      {
        a3[1] = v13;
        a3 += 2;
      }
    }

    while (v4 < v6);
  }

  return result;
}

uint64_t CFUniCharGetFirstBidiParagraphLength(uint64_t a1, uint64_t a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(a1 + v2);
    if (v3 == 13)
    {
      break;
    }

    if ((v3 - 11) <= 2)
    {
      *(a1 + v2) = 0;
    }

    if (a2 == ++v2)
    {
      return a2;
    }
  }

  a2 = v2 + 1;
  *(a1 + v2) = 10;
  return a2;
}

uint64_t CFUniCharApplyUnicodeBidiAlgorithm(uint64_t result, char *a2, _BYTE *a3, uint64_t a4)
{
  v74 = result;
  if (a4 < 1)
  {
    return result;
  }

  v5 = a2;
  v6 = &a2[a4];
  if (result)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v69 = result & 1;
  v70 = !(result & 1);
  v71 = v7;
  v72 = &a2[a4];
  do
  {
    v8 = v6 - v5;
    v75 = a3;
    v73 = v6 - v5;
    if (v6 - v5 < 1)
    {
      result = resolveExplicit(v74, 0, v5, a3, 0, 0);
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = v69;
      v15 = v71;
      goto LABEL_72;
    }

    v9 = 0;
    while (1)
    {
      v10 = v5[v9];
      if (v10 == 13)
      {
        break;
      }

      if ((v10 - 11) <= 2)
      {
        v5[v9] = 0;
      }

      if (v8 == ++v9)
      {
        goto LABEL_15;
      }
    }

    v8 = v9 + 1;
    v5[v9] = 10;
LABEL_15:
    v16 = v74;
    result = resolveExplicit(v74, 0, v5, a3, v8, 0);
    v17 = v75;
    v11 = v8;
    v13 = 0;
    v18 = 0;
    v19 = v74;
    v15 = v71;
    do
    {
      v20 = v5[v18];
      if ((v20 & 0x7F) == 0xA)
      {
        v17[v18] = v16;
        v21 = v18 + 1;
        if (v18 + 1 != v11 || v16 == v74)
        {
          if (v21 >= v11 || (v36 = v17[v21], v16 == v36) || v5[v21] == 10)
          {
            if (v13)
            {
              ++v13;
            }

            else
            {
              v13 = 0;
            }

            v35 = v5[v18] | 0x80;
            goto LABEL_64;
          }

          if (v16 > v36)
          {
            LOBYTE(v36) = v16;
          }

          v17[v18] = v36;
          if (v36)
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          v5[v18] = v20;
          v16 = v17[v21];
        }

        else
        {
          if (v16)
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          v5[v18] = v20;
        }

        v22 = 0x80;
      }

      else
      {
        v22 = 0;
      }

      v23 = v18 - 1;
      v24 = v17[v18];
      if (v19 != v24)
      {
        v25 = v20 > 5u || ((1 << v20) & 0x26) == 0;
        if (v25)
        {
          if (v13 >= 1)
          {
            if (v16 <= v24)
            {
              v26 = v17[v18];
            }

            else
            {
              v26 = v16;
            }

            v25 = (v26 & 1) == 0;
            v27 = 2;
            if (v25)
            {
              v27 = 1;
            }

            v28 = actionWeak[10 * v15 + v27] >> 4;
            if (v28 != 15)
            {
              v29 = v18 - v13;
              if (v23 < v29)
              {
                v29 = v18 - 1;
              }

              result = memset(&v5[v23 - (v23 - v29)], v28, (v23 - v29) + 1);
              v17 = v75;
              v11 = v8;
              v13 = 0;
              v24 = v75[v18];
            }
          }

          if (v19 <= v24)
          {
            v30 = v24;
          }

          else
          {
            v30 = v19;
          }

          if (v30)
          {
            v15 = 1;
          }

          else
          {
            v15 = 2;
          }
        }

        v19 = v24;
      }

      v31 = actionWeak[10 * v15 + v20];
      v32 = v31 >> 4;
      if (v32 != 15)
      {
        if (v13 >= 1)
        {
          v33 = v18 - v13;
          if (v23 < v33)
          {
            v33 = v18 - 1;
          }

          result = memset(&v5[v23 - (v23 - v33)], v32, (v23 - v33) + 1);
          v17 = v75;
          v11 = v8;
        }

        v13 = 0;
      }

      v34 = v31 & 0xF;
      if ((v31 & 0xF) == 0xF)
      {
        v34 = v5[v18];
      }

      v13 += (v31 >> 8) & 1;
      v15 = stateWeak[10 * v15 + v20];
      v35 = v34 | v22;
      v21 = v18 + 1;
LABEL_64:
      v5[v18] = v35;
      v18 = v21;
    }

    while (v21 != v11);
    v14 = v16 & 1;
    v12 = v11;
    v8 = v73;
LABEL_72:
    v25 = v14 == 0;
    v37 = 2;
    if (v25)
    {
      v37 = 1;
    }

    v38 = actionWeak[10 * v15 + v37] >> 4;
    v39 = v38 == 15 || v13 < 1;
    v76 = v11;
    if (!v39)
    {
      v40 = v12 - v13;
      v41 = v12 - 1;
      if (v40 >= v41)
      {
        v40 = v41;
      }

      result = memset(&v5[v41 - (v41 - v40)], v38, (v41 - v40) + 1);
      v11 = v76;
    }

    if (v8 < 1)
    {
      v59 = 0;
      v43 = 0;
      v58 = v69;
      v50 = v70;
      v46 = v75;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v45 = v5;
      v46 = v75;
      v47 = v75;
      v48 = v11;
      v49 = v74;
      v50 = v70;
      do
      {
        v51 = *v45;
        v52 = v51;
        if ((v51 & 0x80) != 0)
        {
          v52 = v51 & 0x7F;
          *v45 = v51 & 0x7F;
        }

        v53 = v44;
        if (v52 == 10)
        {
          if (v43)
          {
            ++v43;
          }

          else
          {
            v43 = 0;
          }

          v54 = 10;
        }

        else
        {
          v55 = actionNeutrals[5 * v50 + v52];
          v56 = v55 >> 4;
          if (v55 >> 4)
          {
            if (v56 == 3)
            {
              if (v49)
              {
                v56 = 2;
              }

              else
              {
                v56 = 1;
              }
            }

            if (v43 >= 1)
            {
              v57 = v42 - v43;
              if (v44 < v57)
              {
                v57 = v44;
              }

              result = memset(&v5[v44 - (v44 - v57)], v56, (v44 - v57) + 1);
              v46 = v75;
              v11 = v76;
            }

            v43 = 0;
          }

          v54 = v55 & 0xF;
          if ((v55 & 0xF) != 0)
          {
            *v45 = v54;
          }

          else
          {
            v54 = *v45;
          }

          v43 += (v55 >> 8) & 1;
          v50 = stateNeutrals[5 * v50 + v52];
          v49 = *v47;
        }

        *v45++ = v54 | v51 & 0x80;
        ++v47;
        v44 = v53 + 1;
        ++v42;
        --v48;
      }

      while (v48);
      v58 = v49 & 1;
      v59 = v11;
      v8 = v73;
    }

    if (v58)
    {
      v60 = 2;
    }

    else
    {
      v60 = 1;
    }

    if (actionNeutrals[5 * v50 + v60] >> 4)
    {
      if (actionNeutrals[5 * v50 + v60] >> 4 != 3)
      {
        v60 = actionNeutrals[5 * v50 + v60] >> 4;
      }

      if (v43 >= 1)
      {
        v61 = v59 - v43;
        v62 = v59 - 1;
        if (v61 >= v62)
        {
          v61 = v62;
        }

        result = memset(&v5[v62 - (v62 - v61)], v60, (v62 - v61) + 1);
        v46 = v75;
        v11 = v76;
      }
    }

    if (v8 >= 1)
    {
      v63 = v5;
      v64 = v46;
      v65 = v11;
      LOBYTE(v66) = v74;
      do
      {
        v68 = *v63++;
        v67 = v68;
        if ((v68 & 0x8000000000000000) == 0)
        {
          v66 = *v64 + addLevel[4 * (*v64 & 1) - 1 + v67];
        }

        *v64++ = v66;
        --v65;
      }

      while (v65);
    }

    v5 += v11;
    a3 = &v46[v11];
    v6 = v72;
  }

  while (v5 < v72);
  return result;
}