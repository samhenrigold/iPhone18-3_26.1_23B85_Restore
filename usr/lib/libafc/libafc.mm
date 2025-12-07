uint64_t __WaitForTimeoutOrEvent(uint64_t a1, int a2, const timespec *a3)
{
  v39 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 208);
  if (v6)
  {
    connection.ident = 0;
    if (a2 == 1)
    {
      bufferSize.ident = 0;
      if (SSLGetBufferedReadSize(v6, &bufferSize.ident))
      {
        v7 = 1;
      }

      else
      {
        v7 = bufferSize.ident == 0;
      }

      if (!v7)
      {
        return 0;
      }

      v6 = *(a1 + 208);
    }

    v8 = SSLGetConnection(v6, &connection);
    if (v8)
    {
      v17 = v8;
      v19 = 3892330500;
      v18 = "SSLGetConnection";
      v20 = 1;
      v21 = 354;
      return __AFCSetErrorResult_3(v20, v17, v19, v9, v21, v18, v10, v11, v31);
    }

    ident = connection.ident;
  }

  else
  {
    ident = *(a1 + 56);
  }

  if (ident == -1)
  {
    return 0;
  }

  v13 = *(a1 + 1256);
  if (v13 == -1)
  {
    v17 = *__error();
    v18 = "kqueue";
    v19 = 3892330519;
    v20 = 1;
    v21 = 380;
    return __AFCSetErrorResult_3(v20, v17, v19, v9, v21, v18, v10, v11, v31);
  }

  v14 = *(a1 + 1260);
  connection.ident = ident;
  if (a2 == 1)
  {
    v15 = -1;
  }

  else
  {
    v15 = -2;
  }

  connection.filter = v15;
  connection.flags = 37;
  memset(&connection.fflags, 0, 20);
  if (v14 == -1)
  {
    v16 = 1;
  }

  else
  {
    v34 = v14;
    v37 = 0;
    v36 = 0;
    v16 = 2;
    v35 = 393215;
    v38 = 0;
  }

  v22 = kevent(v13, &connection, v16, &bufferSize, v16, a3);
  if (v22 == -1)
  {
    v17 = *__error();
    v18 = "kevent failed for kq %d, fd %d, signalFD %d";
    v31 = v13;
    v19 = 3892330519;
    v20 = 1;
    v21 = 407;
    return __AFCSetErrorResult_3(v20, v17, v19, v9, v21, v18, v10, v11, v31);
  }

  if (!v22)
  {
    v18 = "kevent timeout";
    v19 = 3892330508;
    v20 = 1;
    v17 = 60;
    v21 = 411;
    return __AFCSetErrorResult_3(v20, v17, v19, v9, v21, v18, v10, v11, v31);
  }

  if (v22 < 1)
  {
    return 0;
  }

  v27 = v22;
  for (i = &bufferSize.data; ; i += 4)
  {
    v29 = *(i - 4);
    if (v14 == v29)
    {
      AFCLog(4, "Woke up due to write to signal FD", v23, v9, v24, v25, v10, v11, v31);
      v18 = "kevent connection close wakeup";
      v20 = 0;
      v17 = 0xFFFFFFFFLL;
      v19 = 3892330507;
      v21 = 423;
      return __AFCSetErrorResult_3(v20, v17, v19, v9, v21, v18, v10, v11, v31);
    }

    if (ident == v29)
    {
      break;
    }

    AFCLog(1, "Unknown kevent ident %d", v23, v9, v24, v25, v10, v11, *(i - 4));
LABEL_38:
    if (!--v27)
    {
      return 0;
    }
  }

  if ((*(i - 3) & 0x4000) != 0)
  {
    v17 = *i;
    v18 = "kevent EV_ERROR";
    v20 = 0;
    v19 = 3892330507;
    v21 = 430;
    return __AFCSetErrorResult_3(v20, v17, v19, v9, v21, v18, v10, v11, v31);
  }

  if (a2 == 1 && *(i - 4) == -1 && *i)
  {
    if ((*(i - 3) & 0x8000) != 0)
    {
      AFCLog(4, "EV_EOF but %ld bytes available anyway", v23, v9, v24, v25, v10, v11, *i);
    }

    return 0;
  }

  if ((*(i - 3) & 0x8000) == 0)
  {
    if (a2 == 2)
    {
      AFCLog(5, "kevent says ready to write %d bytes on conn %p.", v23, v9, v24, v25, v10, v11, *i);
    }

    goto LABEL_38;
  }

  v26 = 3892330507;
  AFCLog(4, "Woke up due to EOF", v23, v9, v24, v25, v10, v11, v31);
  v17 = *(i - 1);
  if (!v17)
  {
    return v26;
  }

  v18 = "kevent EV_EOF";
  v20 = 0;
  v19 = 3892330507;
  v21 = 452;
  return __AFCSetErrorResult_3(v20, v17, v19, v9, v21, v18, v10, v11, v31);
}

uint64_t AFCLogV(int a1, const char *a2, va_list a3)
{
  result = pthread_once(&__gPlatformInit, __AFCPlatformInitialize);
  if (gAFCLogLevel == 6)
  {
    v7 = MEMORY[0x29EDCA610];
    vfprintf(*MEMORY[0x29EDCA610], a2, a3);
    v8 = *v7;

    return fflush(v8);
  }

  else if (gAFCLogLevel >= a1 || (gAFCVerboseLogEnabled & 1) != 0)
  {
    AFCLockLock(__gAFCLogLock);
    asl_vlog(__gAFCASLClient, 0, 3, a2, a3);
    v9 = __gAFCLogLock;

    return AFCLockUnlock(v9);
  }

  return result;
}

uint64_t AFCServeWithRoot(uint64_t a1, const __CFString *a2)
{
  v35 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    __AFCConnectionSetRoot(a1, a2);
  }

  memset(v34, 0, sizeof(v34));
  CFRetain(a1);
  do
  {
    ptr = 0;
    v3 = AFCReadPacketHeader(a1, v34, 0x80uLL, &ptr);
    if (v3)
    {
      v17 = v3;
      if (v3 == -402636789)
      {
        AFCLog(5, "Disconnected during packet read", v4, v5, v6, v7, v8, v9, v32);
        v17 = 3892330507;
      }

      else
      {
        __error();
        AFCLog(1, "packet read error %d, errno %d", v25, v26, v27, v28, v29, v30, v17);
      }

      goto LABEL_16;
    }

    if (ptr)
    {
      v10 = ptr;
    }

    else
    {
      v10 = v34;
    }

    __AFCSpinMonitorStart();
    v17 = AFCProcessServerPacket(a1, v10, v11, v12, v13, v14, v15, v16);
    __AFCSpinMonitorStart();
    if (ptr)
    {
      v24 = CFGetAllocator(a1);
      CFAllocatorDeallocate(v24, ptr);
    }
  }

  while (*(a1 + 68) != 1);
  AFCLog(1, "fatal error 0x%x", v18, v19, v20, v21, v22, v23, *(a1 + 64));
  if (!v17)
  {
    v17 = *(a1 + 64);
  }

LABEL_16:
  CFRelease(a1);
  return v17;
}

void AFCFreeServerContext(uint64_t a1)
{
  AFCFlushServerContext(a1);
  dispatch_group_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
  if (gAFCMaxOpenFileCount)
  {
    v2 = 0;
    v3 = (a1 + 104);
    do
    {
      v4 = *v3;
      v3 += 5;
      dispatch_release(v4);
      ++v2;
    }

    while (v2 < gAFCMaxOpenFileCount);
  }

  dispatch_release(*(a1 + 48));
  dispatch_release(*(a1 + 56));
  dispatch_source_cancel(*(a1 + 32));
  dispatch_release(*(a1 + 32));
  dispatch_release(*(a1 + 24));
  v5 = *(a1 + 64);
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

void AFCFlushServerContext(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
  if (gAFCMaxOpenFileCount)
  {
    v2 = 0;
    v3 = (a1 + 112);
    do
    {
      v4 = *(v3 - 8);
      if (v4 != -1)
      {
        close(v4);
        *(v3 - 8) = -1;
      }

      if (*v3)
      {
        (*(*v3 + 2))();
        _Block_release(*v3);
        *v3 = 0;
      }

      ++v2;
      v3 += 5;
    }

    while (v2 < gAFCMaxOpenFileCount);
  }

  v5 = *(a1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __AFCFlushServerBuffers_block_invoke;
  block[3] = &__block_descriptor_tmp_17;
  block[4] = a1;
  dispatch_sync(v5, block);
}

void __AFCFlushServerBuffers(uint64_t a1)
{
  dispatch_source_set_timer(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  while (*(a1 + 16))
  {
    v2 = *(a1 + 16);
    *(a1 + 16) = *v2;
    free(v2[2]);
    free(v2);
  }
}

uint64_t AFCLockLock(uint64_t a1)
{
  if (!a1)
  {
    return 3892330503;
  }

  v1 = pthread_mutex_lock((a1 + 16));

  return AFCErrnoToAFCDomainError(v1, 3892330519);
}

uint64_t AFCConnectionSetContext(uint64_t a1, uint64_t a2)
{
  AFCLockLock(*(a1 + 136));
  *(a1 + 120) = a2;
  v4 = *(a1 + 136);

  return AFCLockUnlock(v4);
}

uint64_t AFCErrnoToAFCDomainError(uint64_t result, uint64_t a2)
{
  if ((result & 0x80000000) != 0)
  {
    return a2;
  }

  if (result > 59)
  {
    if (result > 79)
    {
      if ((result - 80) < 2)
      {
        return 3892330506;
      }
    }

    else
    {
      switch(result)
      {
        case '<':
          return 3892330508;
        case '?':
          return 3892330503;
        case 'M':
          return 3892330499;
      }
    }

    return a2;
  }

  switch(result)
  {
    case 0:
      return result;
    case 1:
    case 13:
      return 3892330506;
    case 2:
    case 3:
      return 3892330504;
    case 4:
      return 3892330517;
    case 5:
      return 3892330516;
    case 6:
    case 8:
    case 10:
    case 11:
    case 14:
    case 15:
    case 18:
    case 19:
    case 20:
    case 25:
    case 26:
    case 29:
    case 30:
    case 32:
    case 33:
    case 34:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
      return a2;
    case 7:
    case 12:
    case 23:
    case 24:
    case 27:
    case 31:
      return 3892330499;
    case 9:
      goto LABEL_15;
    case 16:
      return 3892330513;
    case 17:
      return 3892330512;
    case 21:
      return 3892330505;
    case 22:
      return 3892330503;
    case 28:
      return 3892330514;
    case 35:
      return 3892330515;
    case 36:
      return 3892330518;
    case 45:
      return 3892330511;
    default:
      if (result != 57)
      {
        return a2;
      }

LABEL_15:
      result = 3892330507;
      break;
  }

  return result;
}

uint64_t AFCLockUnlock(uint64_t a1)
{
  if (!a1)
  {
    return 3892330503;
  }

  v1 = pthread_mutex_unlock((a1 + 16));

  return AFCErrnoToAFCDomainError(v1, 3892330519);
}

uint64_t AFCConnectionInvalidate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  __buf = a1;
  AFCLog(5, "AFCConnectionInvalidate(%p)", a3, a4, a5, a6, a7, a8, a1);
  AFCLockLock(*(v8 + 136));
  if (*(v8 + 16) == 1)
  {
    *(v8 + 16) = 2;
    AFCLockUnlock(*(v8 + 136));
    v16 = *(v8 + 1264);
    if (v16 != -1)
    {
      write(v16, &__buf, 1uLL);
      v8 = __buf;
    }

    __AFCConnectionSignalIOLoop(v8, v9, v10, v11, v12, v13, v14, v15, v25);
    AFCConditionWait(*(__buf + 24), (4 * *(__buf + 104)));
    return AFCLog(5, "AFCConnectionInvalidate done", v17, v18, v19, v20, v21, v22, v26);
  }

  else
  {
    v24 = *(v8 + 136);

    return AFCLockUnlock(v24);
  }
}

void __AFCConnectionPerformOperationCallBack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AFCLog(5, "%s(%p)\n", a3, a4, a5, a6, a7, a8, "__AFCConnectionPerformOperationCallBack");
  AFCLockLock(*(a1 + 136));
  CFRetain(a1);
  if (*(a1 + 16) == 1)
  {
    while (CFArrayGetCount(*(a1 + 160)) < *(a1 + 112))
    {
      AFCLockUnlock(*(a1 + 136));
      v16 = __AFCDequeue(a1, *(a1 + 152));
      if (!v16)
      {
        AFCLockLock(*(a1 + 136));
        break;
      }

      v17 = v16;
      if (__AFCConnectionSendOperation(a1, v16))
      {
        __AFCConnectionNotifyOperationComplete(a1, v17, v18, v19, v20, v21, v22, v23);
        CFRelease(v17);
      }

      else
      {
        __AFCEnqueue(a1, *(a1 + 160), v17);
        v17[6] = 4;
      }

      AFCLockLock(*(a1 + 136));
      if (*(a1 + 16) != 1)
      {
        break;
      }
    }
  }

  v24 = *(a1 + 32);
  if (v24 == 1)
  {
    *(a1 + 32) = 0;
    __AFCConnectionUnscheduleFromRunLoop(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  AFCLockUnlock(*(a1 + 136));
  if (*(a1 + 16) == 2)
  {
    __AFCConnectionInvalidate(a1, v25, v26, v27, v28, v29, v30, v31);
  }

  if (v24)
  {
    AFCConditionSignal(*(a1 + 40));
  }

  CFRelease(a1);
}

void __AFCConnectionSignalIOLoop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 16))
  {
    v10 = *(a1 + 192);
    if (v10 && *(a1 + 184) && (Current = CFRunLoopGetCurrent(), !CFEqual(v10, Current)))
    {
      CFRunLoopSourceSignal(*(a1 + 184));
      v12 = *(a1 + 192);

      CFRunLoopWakeUp(v12);
    }

    else
    {

      __AFCConnectionPerformOperationCallBack(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  else
  {

    AFCLog(4, "SignalIOLoop on an invalid connection", a3, a4, a5, a6, a7, a8, a9);
  }
}

void __AFCConnectionInvalidate(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  __buf = a1;
  AFCLog(5, "__AFCConnectionInvalidate(%p)", a3, a4, a5, a6, a7, a8, a1);
  AFCLockLock(v8[17]);
  v15 = *(v8 + 4);
  if (v15 == 1)
  {
    AFCLog(2, "Warning: connection %p state going from valid->invalid", v9, v10, v11, v12, v13, v14, v8);
  }

  else if (!v15)
  {
    v16 = v8[17];

    AFCLockUnlock(v16);
    return;
  }

  *(v8 + 4) = 0;
  CFRetain(v8);
  v17 = v8[6];
  if (v17)
  {
    CFSocketInvalidate(v17);
    CFRelease(v8[6]);
    v8[6] = 0;
  }

  v18 = *(v8 + 14);
  if (v18 != -1 && *(v8 + 60) == 1)
  {
    shutdown(v18, 2);
    close(*(v8 + 14));
    *(v8 + 14) = -1;
  }

  v19 = *(v8 + 316);
  if (v19 != -1)
  {
    write(v19, &__buf, 1uLL);
    v8 = __buf;
  }

  v20 = v8[22];
  if (v20)
  {
    CFRunLoopSourceInvalidate(v20);
    v8 = __buf;
    *(__buf + 176) = 0;
  }

  v21 = v8[23];
  if (v21)
  {
    CFRunLoopSourceInvalidate(v21);
    v8 = __buf;
    *(__buf + 184) = 0;
  }

  v22 = __AFCDequeue(v8, v8[19]);
  if (v22)
  {
    v26 = v22;
    do
    {
      __AFCOperationSetClientError(v26, 3892330507, "/Library/Caches/com.apple.xbs/Sources/AppleFileConduit/connection.c", 970, "Connection invalidated", v23, v24, v25, v46);
      __AFCConnectionNotifyOperationComplete(__buf, v26, v27, v28, v29, v30, v31, v32);
      CFRelease(v26);
      v26 = __AFCDequeue(__buf, *(__buf + 152));
    }

    while (v26);
  }

  v33 = __AFCDequeue(__buf, *(__buf + 160));
  if (v33)
  {
    v37 = v33;
    do
    {
      __AFCOperationSetClientError(v37, 3892330507, "/Library/Caches/com.apple.xbs/Sources/AppleFileConduit/connection.c", 982, "Connection invalidated", v34, v35, v36, v46);
      __AFCConnectionNotifyOperationComplete(__buf, v37, v38, v39, v40, v41, v42, v43);
      CFRelease(v37);
      v37 = __AFCDequeue(__buf, *(__buf + 160));
    }

    while (v37);
  }

  AFCConditionSignal(*(__buf + 24));
  v44 = __buf;
  v45 = *(__buf + 216);
  if (v45)
  {
    v45();
    v44 = __buf;
  }

  AFCLockUnlock(*(v44 + 136));
  CFRelease(__buf);
}

const void *__AFCDequeue(uint64_t a1, const __CFArray *a2)
{
  AFCLockLock(*(a1 + 136));
  if (CFArrayGetCount(a2) < 1)
  {
    ValueAtIndex = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
    CFArrayRemoveValueAtIndex(a2, 0);
  }

  AFCLockUnlock(*(a1 + 136));
  return ValueAtIndex;
}

uint64_t AFCConditionSignal(uint64_t a1)
{
  v2 = pthread_mutex_lock((a1 + 16));
  if (!v2)
  {
    *(a1 + 128) = 1;
    v3 = pthread_cond_broadcast((a1 + 80));
    v2 = (pthread_mutex_unlock((a1 + 16)) | v3) != 0;
  }

  return AFCErrnoToAFCDomainError(v2, 3892330519);
}

uint64_t AFCConditionWait(uint64_t a1, double a2)
{
  v4 = pthread_mutex_lock((a1 + 16));
  if (!v4)
  {
    v5 = ((a2 - floor(a2)) * 1000000000.0);
    while (1)
    {
      v6 = *(a1 + 128);
      if (v6)
      {
        break;
      }

      if (a2 == 0.0)
      {
        v7 = pthread_cond_wait((a1 + 80), (a1 + 16));
      }

      else
      {
        v10.tv_sec = 0;
        v10.tv_nsec = 0;
        v10.tv_sec = time(0) + a2;
        v10.tv_nsec = v5;
        v7 = pthread_cond_timedwait((a1 + 80), (a1 + 16), &v10);
      }

      v8 = v7;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    v8 = 0;
    *(a1 + 128) = 0;
LABEL_10:
    LODWORD(v4) = pthread_mutex_unlock((a1 + 16));
    if ((v6 & (v4 != 0)) != 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v8;
    }
  }

  return AFCErrnoToAFCDomainError(v4, 3892330519);
}

void __AFCConnectionFinalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 136);
  AFCLog(5, "%s(%p)", a3, a4, a5, a6, a7, a8, "__AFCConnectionFinalize");
  AFCLockLock(v9);
  v16 = *(a1 + 16);
  if (v16 == 1)
  {
    v17 = "Finalizing connection %p which is still valid";
  }

  else
  {
    if (v16 != 2)
    {
      goto LABEL_6;
    }

    v17 = "Finalizing connection %p which has requested invalidation";
  }

  AFCLog(1, v17, v10, v11, v12, v13, v14, v15, a1);
LABEL_6:
  Copy = CFSetCreateCopy(0, *(a1 + 168));
  CFSetApplyFunction(Copy, __AFCConnectionInvalidateFileDescriptor, a1);
  CFRelease(Copy);
  v19 = *(a1 + 48);
  if (v19)
  {
    CFSocketInvalidate(v19);
    CFRelease(*(a1 + 48));
    *(a1 + 48) = 0;
  }

  v20 = *(a1 + 208);
  if (v20 && *(a1 + 60) == 1 && *(a1 + 61) == 1)
  {
    SSLClose(v20);
    CFRelease(*(a1 + 208));
  }

  *(a1 + 208) = 0;
  v21 = *(a1 + 144);
  if (v21)
  {
    AFCLockLock(*(a1 + 144));
    *(a1 + 144) = 0;
    AFCLockUnlock(v21);
    AFCLockFree(v21);
  }

  v22 = *(a1 + 1256);
  if (v22 != -1)
  {
    close(v22);
    *(a1 + 1256) = -1;
  }

  v23 = *(a1 + 1260);
  if (v23 != -1)
  {
    close(v23);
    *(a1 + 1260) = -1;
  }

  v24 = *(a1 + 1264);
  if (v24 != -1)
  {
    close(v24);
    *(a1 + 1264) = -1;
  }

  v25 = *(a1 + 160);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(a1 + 152);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(a1 + 168);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(a1 + 184);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(a1 + 176);
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(a1 + 192);
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = *(a1 + 200);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(a1 + 72);
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = *(a1 + 40);
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = *(a1 + 24);
  if (v34)
  {
    CFRelease(v34);
  }

  *(a1 + 136) = 0;
  AFCLockUnlock(v9);

  AFCLockFree(v9);
}

uint64_t __AFCConditionFinalize(uint64_t a1)
{
  *(a1 + 128) = 1;
  pthread_mutex_destroy((a1 + 16));

  return pthread_cond_destroy((a1 + 80));
}

char *AFCStringCopy(char *a1, size_t __size, char *__src, size_t a4)
{
  if (!a4)
  {
    return strlcpy(a1, __src, __size);
  }

  if (a4 >= __size)
  {
    v5 = __size;
  }

  else
  {
    v5 = a4;
  }

  return strncpy(a1, __src, v5);
}

uint64_t AFCValidateHeader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 0x434641364C504141)
  {
    AFCLog(5, "Swapped packet\n", a3, a4, a5, a6, a7, a8, v13);
    v10 = vrev64q_s8(*(a1 + 8));
    *(a1 + 8) = v10;
    *(a1 + 32) = bswap64(*(a1 + 32));
    v9 = v10.u64[1];
  }

  else
  {
    if (*a1 != 0x4141504C36414643)
    {
      return __AFCSetErrorResult(1, a2, 3892330498, a4, 116, "Bad packet signature 0x%qx", a7, a8, *a1);
    }

    v9 = *(a1 + 16);
  }

  if (v9 < 0x28)
  {
    return __AFCSetErrorResult(1, a2, 3892330498, a4, 121, "Header length 0x%qx too small or exceeds packet length", a7, a8, v9);
  }

  v11 = *(a1 + 8);
  if (v9 > v11)
  {
    return __AFCSetErrorResult(1, a2, 3892330498, a4, 121, "Header length 0x%qx too small or exceeds packet length", a7, a8, v9);
  }

  if (HIDWORD(v11))
  {
    return __AFCSetErrorResult(1, a2, 3892330498, a4, 126, "Implausible packet length 0x%qx", a7, a8, *(a1 + 8));
  }

  if (HIDWORD(*(a1 + 32)))
  {
    return __AFCSetErrorResult(1, a2, 3892330498, a4, 130, "Implausible packet type 0x%qx", a7, a8, *(a1 + 32));
  }

  return 0;
}

uint64_t __AFCSetErrorResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a5;
  AFCLog(5, "Setting error result %d, 0x%X, %s, %d\n", a3, a4, a5, a6, a7, a8, 0xFFFFFFFFLL);
  return AFCSetErrorInfoWithArgs(a1, 0xFFFFFFFFLL, a3, "/Library/Caches/com.apple.xbs/Sources/AppleFileConduit/afc.c", v10, a6);
}

uint64_t AFCSwapHeader(void *a1)
{
  if (*a1 != 0x434641364C504141)
  {
    return 0;
  }

  result = 3892330502;
  v3 = __gAFCHeaderSwapInfo;
  if (__gAFCHeaderSwapInfo)
  {
    v4 = &__gAFCHeaderSwapInfo;
    while (v3 != a1[4])
    {
      v5 = v4[9];
      v4 += 9;
      v3 = v5;
      if (!v5)
      {
        return result;
      }
    }

    v6 = 1;
    result = 3892330497;
    do
    {
      v7 = v4[v6];
      if (!v7)
      {
        break;
      }

      if (v7 > a1[2] - 8)
      {
        return result;
      }

      *(a1 + (v7 & 0xFFFFFFFFFFFFFFF8)) = bswap64(*(a1 + (v7 & 0xFFFFFFFFFFFFFFF8)));
      ++v6;
    }

    while (v6 != 9);
    return 0;
  }

  return result;
}

void *AFCHeaderInit(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 0x4141504C36414643;
  result[1] = a4 + a3;
  result[2] = a3;
  result[4] = a2;
  if (a5)
  {
    v5 = *(a5 + 24);
  }

  else
  {
    v5 = -1;
  }

  result[3] = v5;
  return result;
}

void AFCLogPacketInfo(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 32);
  if ((v5 - 1) > 0x27)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = gAFCPacketTypeNames[v5];
  }

  snprintf(__str, 0x200uLL, "%s: PacketType=%d PacketName=%s HeaderLength=%d PacketLength=%d PacketID=%d", a2, v5, v6, *(a3 + 16), *(a3 + 8), *(a3 + 24));
  switch(*(a3 + 32))
  {
    case 1:
      v13 = AFCCopyErrorString(*(a3 + 40));
      if (v13)
      {
        v20 = v13;
        CFStringGetCString(v13, buffer, 128, 0x8000100u);
        AFCLog(a1, "%s Status=0x%x StatusName=%s\n", v21, v22, v23, v24, v25, v26, __str);
        CFRelease(v20);
      }

      else
      {
        strcpy(buffer, "Unknown");
        AFCLog(a1, "%s Status=0x%x StatusName=%s\n", v14, v15, v16, v17, v18, v19, __str);
      }

      break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 0xALL:
    case 0xCLL:
    case 0xDLL:
    case 0x18:
    case 0x1CLL:
    case 0x1DLL:
    case 0x1ELL:
      AFCLog(a1, "%s Path=%s\n", v7, v8, v9, v10, v11, v12, __str);
      break;
    case 7:
      AFCLog(a1, "PacketID=%d Path=%s\n", v7, v8, v9, v10, v11, v12, *(a3 + 24));
      break;
    case 0xELL:
      AFCLog(a1, "%s FileRef=%d\n", v7, v8, v9, v10, v11, v12, __str);
      break;
    case 0x1FLL:
      AFCLog(a1, "%s RangeStart=%lli RangeLength=%lli Path=%s\n", v7, v8, v9, v10, v11, v12, __str);
      break;
    default:
      AFCLog(a1, "%s\n", v7, v8, v9, v10, v11, v12, __str);
      break;
  }
}

uint64_t AFCReadPacketHeader(uint64_t a1, char *a2, unint64_t a3, uint64_t *a4)
{
  v8 = CFGetAllocator(a1);
  if (*(a1 + 68) == 1)
  {
    return *(a1 + 64);
  }

  v14 = v8;
  if (!a2 || !a4)
  {
    v44 = "NULL buffer";
    v45 = 3892330503;
    v46 = 498;
LABEL_30:
    v13 = __AFCSetErrorResult(0, v9, v45, v10, v46, v44, v11, v12, v47);
    v35 = 0;
    goto LABEL_31;
  }

  if (a3 <= 0x27)
  {
    v44 = "Static buffer too small";
    v45 = 3892330503;
    v46 = 499;
    goto LABEL_30;
  }

  v15 = AFCReadData(a1, a2, 0x28uLL);
  if (v15 || (v15 = AFCValidateHeader(a2, v16, v17, v18, v19, v20, v21, v22), v15))
  {
    v13 = v15;
LABEL_24:
    *a4 = 0;
    return v13;
  }

  v26 = *(a2 + 2);
  v27 = v26 + 1;
  if (v26 == -1)
  {
    v45 = 3892330498;
    v44 = "Packet Size Rollover";
    v46 = 512;
    goto LABEL_30;
  }

  if (v27 <= a3)
  {
    v39 = 0;
    v36 = *(a2 + 2);
    v35 = a2;
    goto LABEL_15;
  }

  v35 = MEMORY[0x29C289090](v14, v26 + 1, 0x10000400A747E1ELL, 0);
  if (v35)
  {
    AFCLog(5, "Allocated %llu bytes\n", v29, v30, v31, v32, v33, v34, v27);
    v36 = *(a2 + 2);
    if (v35 == a2)
    {
      v39 = 0;
      v26 = *(a2 + 2);
    }

    else
    {
      v37 = *a2;
      v38 = *(a2 + 1);
      *(v35 + 32) = *(a2 + 4);
      *v35 = v37;
      *(v35 + 16) = v38;
      v26 = *(a2 + 2);
      v39 = v35;
    }

LABEL_15:
    *(v35 + v26) = 0;
    v40 = v36 - 40;
    if (v36 != 40 && (AFCLog(5, "Expecting %u bytes\n", v23, v10, v24, v25, v11, v12, v36 - 40), v41 = AFCReadData(a1, (v35 + 40), v40), v41))
    {
      v13 = v41;
    }

    else
    {
      AFCSwapHeader(v35);
      v13 = 0;
      *a4 = v39;
    }

    AFCLogPacketInfo(4, "AFCReadPacketHeader", v35);
    v42 = 0;
    if (!v13)
    {
      return v13;
    }

    goto LABEL_19;
  }

  v13 = __AFCSetErrorResult(0, v28, 3892330499, v30, 518, "CFAllocatorAllocate", v33, v34, v47);
LABEL_31:
  v42 = 1;
  if (!v13)
  {
    return v13;
  }

LABEL_19:
  if (v35 == a2)
  {
    v42 = 1;
  }

  if ((v42 & 1) == 0)
  {
    CFAllocatorDeallocate(v14, v35);
  }

  if (a4)
  {
    goto LABEL_24;
  }

  return v13;
}

uint64_t AFCReadPacketBody(_BYTE *cf, uint64_t a2, char **a3, size_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (cf[68] == 1)
  {
    return *(cf + 16);
  }

  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = v13 - v14;
  if (v13 == v14)
  {
    v16 = 0;
LABEL_7:
    result = 0;
    *a3 = v16;
    *a4 = v15;
    return result;
  }

  v17 = CFGetAllocator(cf);
  v18 = MEMORY[0x29C289090](v17, v15, 0x100004077774924, 0);
  if (v18)
  {
    v16 = v18;
    v23 = AFCReadData(cf, v18, v15);
    if (!v23)
    {
      goto LABEL_7;
    }

    v24 = v23;
    v25 = CFGetAllocator(cf);
    CFAllocatorDeallocate(v25, v16);
    return v24;
  }

  else
  {

    return __AFCSetErrorResult(0, v19, 3892330499, v20, 590, "CFAllocatorAllocate", v21, v22, a9);
  }
}

uint64_t AFCSendHeader(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 68) == 1)
  {
    return *(a1 + 64);
  }

  AFCLogPacketInfo(4, "AFCSendHeader", a2);
  return AFCSendData(a1, a2, *(a2 + 16));
}

CFMutableDataRef __AFCCreateAFCDataWithDictionary(const __CFDictionary *a1)
{
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    CFDictionaryApplyFunction(a1, __ConvertDictEntry, Mutable);
  }

  return Mutable;
}

uint64_t AFCSendStatusExtended(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  AFCLog(5, "Writing status packet %d info %p\n", a3, a4, a5, a6, a7, a8, a3);
  if (v9 && (v9 + 402636777) <= 0xFFFFFFEA)
  {
    AFCLog(5, "Oh no!", v12, v13, v14, v15, v16, v17, v25);
  }

  if (*(a1 + 68) == 1)
  {
    return *(a1 + 64);
  }

  if (!v8)
  {
    goto LABEL_8;
  }

  if ((*(a1 + 128) & 1) == 0)
  {
    v8 = 0;
LABEL_8:
    v18 = 48;
    goto LABEL_10;
  }

  v8 = __AFCCreateAFCDataWithDictionary(v8);
  v18 = CFDataGetLength(v8) + 48;
LABEL_10:
  v26[0] = 0x4141504C36414643;
  v26[1] = v18;
  v26[2] = 48;
  v26[4] = 1;
  if (a2)
  {
    v19 = *(a2 + 24);
  }

  else
  {
    v19 = -1;
  }

  v26[3] = v19;
  v26[5] = v9 & 0x1FFF;
  v20 = AFCSendHeader(a1, v26);
  if (v20)
  {
    v23 = v20;
    if (!v8)
    {
      return v23;
    }
  }

  else
  {
    if (!v8)
    {
      return 0;
    }

    BytePtr = CFDataGetBytePtr(v8);
    Length = CFDataGetLength(v8);
    v23 = AFCSendData(a1, BytePtr, Length);
  }

  CFRelease(v8);
  return v23;
}

uint64_t AFCSendStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ErrorInfo = AFCCopyAndClearLastErrorInfo();
  v11 = AFCSendStatusExtended(a1, a2, a3, ErrorInfo, v7, v8, v9, v10);
  if (ErrorInfo)
  {
    CFRelease(ErrorInfo);
  }

  return v11;
}

uint64_t AFCDiscardData(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v36 = *MEMORY[0x29EDCA608];
  AFCLog(5, "Discard data length %u\n", a3, a4, a5, a6, a7, a8, a2);
  if (*(a1 + 68) == 1)
  {
    return *(a1 + 64);
  }

  if (!v8)
  {
    return 0;
  }

  if (v8 <= 0x40)
  {
    v10 = AFCReadData(a1, v35, v8);
    if (!v10)
    {
      return v10;
    }

LABEL_19:
    v20 = __error();
    AFCLog(2, "Error %d discarding data\n", v21, v22, v23, v24, v25, v26, *v20);
    AFCConnectionSetFatalError(a1, v10, v27, v28, v29, v30, v31, v32);
    return v10;
  }

  v11 = MEMORY[0x29C289090](0, *(a1 + 96), 0x100004077774924, 0);
  if (!v11)
  {
    v10 = 3892330499;
    __AFCSetErrorResult(0, v12, 3892330499, v13, 989, "CFAllocatorAllocate", v14, v15, v34);
    return v10;
  }

  v16 = v11;
  do
  {
    if (v8 >= *(a1 + 96))
    {
      v17 = *(a1 + 96);
    }

    else
    {
      v17 = v8;
    }

    v18 = AFCReadData(a1, v16, v17);
    v8 -= v17;
    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = v8 == 0;
    }
  }

  while (!v19);
  v10 = v18;
  CFAllocatorDeallocate(0, v16);
  if (v10)
  {
    goto LABEL_19;
  }

  return v10;
}

void *AFCIteratorCreate(const __CFAllocator *a1, const void *a2)
{
  pthread_once(&AFCIteratorGetTypeID_typeIDInit, __AFCIteratorRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (a2 && Instance)
  {
    *(Instance + 16) = 0u;
    v6 = (Instance + 16);
    *(Instance + 48) = 0;
    *(Instance + 32) = 0u;
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID())
    {
      Count = CFDictionaryGetCount(a2);
      if (Count)
      {
        v9 = Count;
        v10 = MEMORY[0x29C289090](0, 8 * Count, 0x80040B8603338, 0);
        if (!v10)
        {
          goto LABEL_15;
        }

        v11 = v10;
        CFDictionaryGetKeysAndValues(a2, v10, 0);
        v5[3] = CFArrayCreate(a1, v11, v9, MEMORY[0x29EDB9000]);
        CFAllocatorDeallocate(0, v11);
        v12 = v5[3];
      }

      else
      {
        v12 = CFArrayCreate(a1, 0, 0, 0);
        v5[3] = v12;
      }

      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = CFGetTypeID(a2);
      if (v13 == CFArrayGetTypeID())
      {
        v6 = v5 + 3;
LABEL_11:
        *v6 = a2;
        CFRetain(a2);
        Mutable = CFDataCreateMutable(a1, 0);
        v5[5] = Mutable;
        if (Mutable)
        {
          v15 = CFDataCreateMutable(a1, 0);
          v5[6] = v15;
          if (v15)
          {
            return v5;
          }
        }
      }
    }

LABEL_15:
    AFCIteratorCreate_cold_1(v5);
    goto LABEL_16;
  }

  if (Instance)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (a2)
  {
    CFRelease(a2);
  }

  return 0;
}

const void *AFCIteratorNext(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= CFArrayGetCount(*(a1 + 24)))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 32) = v4 + 1;

  return CFArrayGetValueAtIndex(v3, v4);
}

uint64_t AFCIteratorGetObject(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    return *(a1 + 24);
  }

  return result;
}

const UInt8 *AFCIteratorGetKeyBuffer(uint64_t a1, CFIndex a2)
{
  if (CFDataGetLength(*(a1 + 40)) < a2)
  {
    CFDataSetLength(*(a1 + 40), a2);
  }

  v4 = *(a1 + 40);

  return CFDataGetBytePtr(v4);
}

const UInt8 *AFCIteratorGetValueBuffer(uint64_t a1, CFIndex a2)
{
  if (CFDataGetLength(*(a1 + 48)) < a2)
  {
    CFDataSetLength(*(a1 + 48), a2);
  }

  v4 = *(a1 + 48);

  return CFDataGetBytePtr(v4);
}

uint64_t __AFCIteratorRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __gAFCIteratorTypeID = result;
  return result;
}

void __AFCIteratorFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[4] = 0;
}

__CFString *__AFCIteratorCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<AFCIterator %p [%p]> {\n", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"  Dictionary: %@\n", a1[2]);
  CFStringAppendFormat(Mutable, 0, @"  Array: %@\n", a1[3]);
  CFStringAppendFormat(Mutable, 0, @"  Index: %ld\n", a1[4]);
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

CFStringRef AFCCopyErrorString(uint64_t a1)
{
  if (a1)
  {
    v1 = &off_29EE95F28;
    while (1)
    {
      v2 = *v1;
      if (!*v1)
      {
        break;
      }

      v3 = *(v1 - 2);
      v1 += 2;
      if (v3 == a1)
      {
        goto LABEL_7;
      }
    }

    v5 = CFStringCreateWithFormat(0, 0, @"Error 0x%x", a1);
    CFRelease(@"Error 0x%x");
    return v5;
  }

  else
  {
    v2 = @"Success";
LABEL_7:

    return CFStringCreateCopy(0, v2);
  }
}

CFDictionaryRef __AFCCreateErrorObject(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  *keys = xmmword_29EE960A0;
  v15 = *off_29EE960B0;
  valuePtr = a2;
  values = @"AFCErrorDomain";
  cf = CFNumberCreate(a1, kCFNumberLongType, &valuePtr);
  v12 = AFCCopyErrorString(a2);
  v13 = a3;
  if (a3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  v7 = CFDictionaryCreate(a1, keys, &values, v6, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFRelease(cf);
  CFRelease(v12);
  return v7;
}

CFStringRef AFCCopyPacketTypeString(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = @"Status";
LABEL_6:
    MainBundle = CFBundleGetMainBundle();

    return CFBundleCopyLocalizedString(MainBundle, v1, v1, @"AFCError");
  }

  else
  {
    v3 = &off_29EE960E0;
    while (1)
    {
      v1 = *v3;
      if (!*v3)
      {
        break;
      }

      v4 = *(v3 - 1);
      v3 += 3;
      if (v4 == a1)
      {
        goto LABEL_6;
      }
    }

    v7 = CFBundleGetMainBundle();
    v8 = CFBundleCopyLocalizedString(v7, @"Packet Type %qu", @"Packet Type %qu", @"AFCError");
    v9 = CFStringCreateWithFormat(0, 0, v8, a1);
    CFRelease(v8);
    return v9;
  }
}

uint64_t __AFCOperationRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __gAFCOperationTypeID = result;
  return result;
}

uint64_t AFCOperationCreate(uint64_t a1, void *a2, const void *a3, uint64_t a4, const void *a5, uint64_t a6)
{
  pthread_once(&AFCOperationGetTypeID_typeIDInit, __AFCOperationRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v20 = Instance;
  if (Instance)
  {
    if (a2)
    {
      v21 = a2[2];
      *(Instance + 256) = 0;
      *(Instance + 224) = 0u;
      *(Instance + 240) = 0u;
      *(Instance + 192) = 0u;
      *(Instance + 208) = 0u;
      *(Instance + 160) = 0u;
      *(Instance + 176) = 0u;
      *(Instance + 128) = 0u;
      *(Instance + 144) = 0u;
      *(Instance + 96) = 0u;
      *(Instance + 112) = 0u;
      *(Instance + 64) = 0u;
      *(Instance + 80) = 0u;
      *(Instance + 32) = 0u;
      *(Instance + 48) = 0u;
      *(Instance + 16) = 0u;
      if (v21 > 0x80)
      {
        v22 = MEMORY[0x29C289090](a1, a2[2], 0x10000400A747E1ELL, 0);
        *(v20 + 88) = v22;
        v23 = a1;
        v24 = v21;
        if (!v22)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v22 = (Instance + 112);
        *(v20 + 88) = v20 + 112;
        v23 = *MEMORY[0x29EDB8EE8];
        v24 = 128;
      }

      *(v20 + 96) = v23;
      *(v20 + 104) = v24;
      memcpy(v22, a2, v21);
      *(v20 + 48) = a2[4];
      if (a3)
      {
        CFRetain(a3);
      }

      *(v20 + 64) = a3;
      *(v20 + 72) = a4;
      if (a5)
      {
        CFRetain(a5);
      }

      *(v20 + 80) = a5;
      v25 = AFCConditionCreate(a1);
      *(v20 + 256) = v25;
      if (v25)
      {
        *(v20 + 16) = a6;
        *(v20 + 24) = 1;
        v26 = AFCLockCreate();
        *(v20 + 248) = v26;
        if (v26)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_14:
    AFCOperationCreate_cold_1(v20, v13, v14, v15, v16, v17, v18, v19);
    return 0;
  }

LABEL_12:
  AFCLog(5, "%s(%p)\n", v14, v15, v16, v17, v18, v19, "AFCOperationCreate");
  return v20;
}

uint64_t AFCOperationGetResultStatus(uint64_t a1)
{
  AFCLockLock(*(a1 + 248));
  if (*(a1 + 24) == 5)
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = 3892330518;
  }

  AFCLockUnlock(*(a1 + 248));
  return v2;
}

uint64_t __AFCOperationGetDataLength(uint64_t a1)
{
  AFCLockLock(*(a1 + 248));
  v2 = *(*(a1 + 88) + 8) - *(*(a1 + 88) + 16);
  AFCLockUnlock(*(a1 + 248));
  return v2;
}

uint64_t __AFCOperationSetClientErrorWithInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CFGetAllocator(a1);
  v7 = __AFCCreateErrorObject(v6, a2, a3);
  if (!v7)
  {
    v7 = CFRetain(*MEMORY[0x29EDB8F80]);
  }

  AFCLockLock(*(a1 + 248));
  *(a1 + 24) = 5;
  *(a1 + 40) = a2;
  *(a1 + 240) = v7;
  v8 = *(a1 + 248);

  return AFCLockUnlock(v8);
}

uint64_t __AFCOperationSetClientError(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v10 = AFCErrorInfoCreateWithArgs(&v12, 0xFFFFFFFFLL, a2, a3, a4, a5);
  return __AFCOperationSetClientErrorWithInfo(a1, v10, v12);
}

CFDictionaryRef AFCOperationCreatePacketHeaderDictionary(void *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = a1[11];
  v3 = CFGetAllocator(a1);
  *keys = xmmword_29EE96498;
  v10 = *&off_29EE964A8;
  v11 = xmmword_29EE964B8;
  AFCLockLock(a1[31]);
  v8[0] = CFNumberCreate(v3, kCFNumberSInt64Type, v2);
  v8[1] = CFNumberCreate(v3, kCFNumberSInt64Type, (v2 + 8));
  v8[2] = CFNumberCreate(v3, kCFNumberSInt64Type, (v2 + 16));
  v8[3] = CFNumberCreate(v3, kCFNumberSInt64Type, (v2 + 24));
  v8[4] = CFNumberCreate(v3, kCFNumberSInt64Type, (v2 + 32));
  v8[5] = CFDataCreate(v3, v2, *(v2 + 16));
  AFCLockUnlock(a1[31]);
  v4 = CFGetAllocator(a1);
  v5 = CFDictionaryCreate(v4, keys, v8, 6, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  for (i = 0; i != 6; ++i)
  {
    CFRelease(v8[i]);
  }

  return v5;
}

CFDataRef AFCOperationCopyPacketData(void *a1)
{
  AFCLockLock(a1[31]);
  v2 = CFGetAllocator(a1);
  v3 = a1[9];
  AFCLockLock(a1[31]);
  v4 = *(a1[11] + 8) - *(a1[11] + 16);
  AFCLockUnlock(a1[31]);
  v5 = CFDataCreate(v2, v3, v4);
  AFCLockUnlock(a1[31]);
  return v5;
}

uint64_t __AFCFileDescriptorRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __gAFCFileDescriptorTypeID = result;
  return result;
}

uint64_t AFCFileDescriptorCreate(uint64_t a1, const void *a2, uint64_t a3)
{
  pthread_once(&AFCFileDescriptorGetTypeID_typeIDInit, __AFCFileDescriptorRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    CFRetain(a2);
    *(Instance + 16) = a2;
    *(Instance + 24) = a3;
    *(Instance + 32) = 1;
    __AFCConnectionAddFileDescriptor(a2, Instance);
    *(Instance + 36) = 0u;
    *(Instance + 516) = 0u;
    *(Instance + 532) = 0u;
    *(Instance + 484) = 0u;
    *(Instance + 500) = 0u;
    *(Instance + 452) = 0u;
    *(Instance + 468) = 0u;
    *(Instance + 420) = 0u;
    *(Instance + 436) = 0u;
    *(Instance + 388) = 0u;
    *(Instance + 404) = 0u;
    *(Instance + 356) = 0u;
    *(Instance + 372) = 0u;
    *(Instance + 324) = 0u;
    *(Instance + 340) = 0u;
    *(Instance + 292) = 0u;
    *(Instance + 308) = 0u;
    *(Instance + 260) = 0u;
    *(Instance + 276) = 0u;
    *(Instance + 228) = 0u;
    *(Instance + 244) = 0u;
    *(Instance + 196) = 0u;
    *(Instance + 212) = 0u;
    *(Instance + 164) = 0u;
    *(Instance + 180) = 0u;
    *(Instance + 132) = 0u;
    *(Instance + 148) = 0u;
    *(Instance + 100) = 0u;
    *(Instance + 116) = 0u;
    *(Instance + 68) = 0u;
    *(Instance + 84) = 0u;
    *(Instance + 52) = 0u;
  }

  return Instance;
}

uint64_t AFCFileDescriptorSetRemoteName(uint64_t a1, char *__src)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  AFCStringCopy((a1 + 36), 0x200uLL, __src, 0);
  return 0;
}

uint64_t AFCFileDescriptorCreateCloseOperation(atomic_uint *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 0u;
  memset(v20, 0, sizeof(v20));
  v10 = a1 + 8;
  AFCLog(5, "AFCFileDescriptorCreateCloseOperation(%p) [valid %d]", a3, a4, a5, a6, a7, a8, a1);
  if (AFCCompareAndSwap32(1, 0, v10) && (AFCHeaderInit(v20, 20, 48, 0, 0), (*(&v21 + 1) = *(a1 + 3)) != 0))
  {
    v17 = CFGetAllocator(a1);
    v18 = AFCOperationCreate(v17, v20, 0, 0, 0, a2);
    if (v18)
    {
      *(a1 + 3) = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  AFCLog(5, "Close op for desc %p = %p", v11, v12, v13, v14, v15, v16, a1);
  return v18;
}

uint64_t AFCFileDescriptorInvalidate(uint64_t a1)
{
  result = AFCCompareAndSwap32(1, 0, (a1 + 32));
  if (result)
  {
    result = AFCLog(5, "AFCFileDescriptorInvalidate(%p)", v3, v4, v5, v6, v7, v8, a1);
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t AFCOperationCreateGetDeviceInfo(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  AFCHeaderInit(v5, 11, 40, 0, 0);
  return AFCOperationCreate(a1, v5, 0, 0, 0, a2);
}

uint64_t AFCOperationCreateGetConnectionInfo(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  AFCHeaderInit(v5, 22, 40, 0, 0);
  return AFCOperationCreate(a1, v5, 0, 0, 0, a2);
}

uint64_t AFCOperationCreateSetConnectionOptions(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = __AFCCreateAFCDataWithDictionary(a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  Length = CFDataGetLength(v5);
  AFCHeaderInit(v10, 23, 40, Length, 0);
  v8 = AFCOperationCreate(a1, v10, v6, 0, 0, a3);
  CFRelease(v6);
  return v8;
}

uint64_t __AFCSetErrorResult_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a5;
  AFCLog(5, "Setting error result %d, 0x%X, %s, %d\n", a3, a4, a5, a6, a7, a8, 0xFFFFFFFFLL);
  return AFCSetErrorInfoWithArgs(0, 0xFFFFFFFFLL, 3892330503, "/Library/Caches/com.apple.xbs/Sources/AppleFileConduit/client-async.c", v9, "CFStringGetCString failed");
}

void __AFCOperationFinalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AFCLog(5, "%s(%p)\n", a3, a4, a5, a6, a7, a8, "__AFCOperationFinalize");
  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 64) = 0;
  v10 = *(a1 + 72);
  if (v10)
  {
    CFAllocatorDeallocate(*(a1 + 80), v10);
    *(a1 + 72) = 0;
  }

  v11 = *(a1 + 88);
  if (v11)
  {
    CFAllocatorDeallocate(*(a1 + 96), v11);
    *(a1 + 88) = 0;
  }

  v12 = *(a1 + 240);
  if (v12)
  {
    CFRelease(v12);
  }

  *(a1 + 240) = 0;
  v13 = *(a1 + 256);
  if (v13)
  {
    CFRelease(v13);
  }

  *(a1 + 256) = 0;
  v14 = *(a1 + 248);
  if (v14)
  {
    CFRelease(v14);
  }

  *(a1 + 248) = 0;
}

__CFString *__AFCOperationCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = *(a1 + 24);
  if (v3 <= 5)
  {
    v4 = __OperationStates[v3];
  }

  else
  {
    v4 = @"Invalid";
  }

  v5 = AFCCopyErrorString(*(a1 + 40));
  v6 = AFCCopyPacketTypeString(*(a1 + 48));
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<AFCOperation %p [%p]> { Packet '%@' (%qu), State '%@' (%d), Status '%@' (0x%x)", a1, v2, v6, *(a1 + 48), v4, *(a1 + 24), v5, *(a1 + 40));
  if (*(a1 + 240))
  {
    CFStringAppendFormat(Mutable, 0, @" ResultObject '%@'", *(a1 + 240));
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  CFRelease(v5);
  CFRelease(v6);
  return Mutable;
}

void __AFCFileDescriptorFinalize(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AFCLog(5, "__AFCFileDescriptorFinalize(%p)", a3, a4, a5, a6, a7, a8, a1);
  AFCFileDescriptorInvalidate(a1);
  v9 = a1[2];
  if (v9)
  {
    __AFCConnectionRemoveFileDescriptor(v9, a1);
    v10 = a1[2];
    if (v10)
    {

      CFRelease(v10);
    }
  }
}

__CFString *__AFCFileDescriptorCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<AFCFileDescriptor %p [%p]> { Connection %p, FileRef %d }", a1, v2, a1[2], a1[3]);
  return Mutable;
}

void OUTLINED_FUNCTION_0()
{

  JUMPOUT(0x29C289090);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1)
{

  return CFStringGetCString(v1, (a1 + 40), v2 + 1, 0x8000100u);
}

CFIndex OUTLINED_FUNCTION_7(int a1, CFStringRef theString)
{

  return CFStringGetLength(theString);
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, char *a2, CFIndex a3)
{

  return CFStringGetCString(v3, a2, a3, 0x8000100u);
}

CFIndex OUTLINED_FUNCTION_9(int a1, CFStringRef theString)
{

  return CFStringGetLength(theString);
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{

  return CFStringGetCString(v2, (v3 + a1 + 1), v4 + v1 - (v3 + a1 + 1), 0x8000100u);
}

void OUTLINED_FUNCTION_12()
{

  JUMPOUT(0x29C289090);
}

void OUTLINED_FUNCTION_14()
{

  CFAllocatorDeallocate(0, v0);
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return AFCOperationCreate(a1, &a9, 0, v11, v10, v9);
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2, CFIndex a3)
{

  return CFStringGetCString(v4, v3, a3, 0x8000100u);
}

void OUTLINED_FUNCTION_18()
{

  CFAllocatorDeallocate(0, v0);
}

uint64_t AFCConnectionOpen(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = AFCConnectionCreate(0, a1, 1, 0, a2);
  *a3 = v4;
  if (v4)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t AFCConnectionClose(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AFCConnectionInvalidate(a1, a2, a3, a4, a5, a6, a7, a8);
  CFRelease(a1);
  return 0;
}

uint64_t __AFCSetErrorResult_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a5;
  AFCLog(5, "Setting error result %d, 0x%X, %s, %d\n", a3, a4, a5, a6, a7, a8, 0xFFFFFFFFLL);
  return AFCSetErrorInfoWithArgs(0, 0xFFFFFFFFLL, a3, "/Library/Caches/com.apple.xbs/Sources/AppleFileConduit/client-sync.c", v10, a6);
}

uint64_t AFCRenamePath(const void *a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a3)
  {
    v18 = __AFCSetErrorResult_1(a1, a2, 3892330503, a4, 270, "NULL argument", a7, a8, v20);
    return v18 & 0x1FFF;
  }

  v11 = CFGetAllocator(a1);
  v12 = CFStringCreateWithCString(v11, a2, 0x8000100u);
  v13 = CFGetAllocator(a1);
  v14 = CFStringCreateWithCString(v13, a3, 0x8000100u);
  v15 = v14;
  if (v12 && v14)
  {
    v16 = CFGetAllocator(a1);
    RenamePath = AFCOperationCreateRenamePath(v16, v12, v15, 0);
    if (RenamePath)
    {
      AFCRenamePath_cold_1(a1, RenamePath, &v21);
      v18 = v21;
    }

    else
    {
      v18 = 16387;
    }

    goto LABEL_8;
  }

  v18 = 16387;
  if (v12)
  {
LABEL_8:
    CFRelease(v12);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v18 & 0x1FFF;
}

uint64_t AFCLinkPath(const void *a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a3 || !a4)
  {
    v19 = __AFCSetErrorResult_1(a1, a2, 3892330503, a4, 299, "NULL argument", a7, a8, v21);
    return v19 & 0x1FFF;
  }

  v12 = CFGetAllocator(a1);
  v13 = CFStringCreateWithCString(v12, a3, 0x8000100u);
  v14 = CFGetAllocator(a1);
  v15 = CFStringCreateWithCString(v14, a4, 0x8000100u);
  v16 = v15;
  if (v13 && v15)
  {
    v17 = CFGetAllocator(a1);
    LinkPath = AFCOperationCreateLinkPath(v17, a2, v13, v16, 0);
    if (LinkPath)
    {
      AFCRenamePath_cold_1(a1, LinkPath, &v22);
      v19 = v22;
    }

    else
    {
      v19 = 16387;
    }

    goto LABEL_8;
  }

  v19 = 16387;
  if (v13)
  {
LABEL_8:
    CFRelease(v13);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v19 & 0x1FFF;
}

uint64_t AFCDirectoryRead(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a3)
  {
    return __AFCSetErrorResult_1(a1, a2, 3892330503, a4, 675, "NULL argument", a7, a8, v15) & 0x1FFF;
  }

  result = AFCIteratorNext(a2);
  if (result)
  {
    v11 = result;
    v12 = CFGetTypeID(result);
    if (v12 == CFStringGetTypeID())
    {
      v13 = 9 * CFStringGetLength(v11);
      ValueBuffer = AFCIteratorGetValueBuffer(a2, v13 + 1);
      *a3 = ValueBuffer;
      if (CFStringGetCString(v11, ValueBuffer, v13 + 1, 0x8000100u))
      {
        return 0;
      }

      else
      {
        return 23;
      }
    }

    else
    {
      return 7;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t AFCDirectoryClose(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !cf)
  {
    return __AFCSetErrorResult_1(a1, cf, 3892330503, a4, 705, "NULL argument", a7, a8, vars0) & 0x1FFF;
  }

  CFRelease(cf);
  return 0;
}

uint64_t AFCKeyValueRead(uint64_t TypeID, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (TypeID && a2 && a3)
  {
    v10 = TypeID;
    v11 = AFCIteratorNext(TypeID);
    if (!v11)
    {
      *a2 = 0;
LABEL_14:
      *a3 = 0;
      return v11 & 0x1FFF;
    }

    v12 = v11;
    v13 = CFGetTypeID(v11);
    TypeID = CFStringGetTypeID();
    if (v13 == TypeID)
    {
      Object = AFCIteratorGetObject(v10);
      v15 = CFGetTypeID(Object);
      TypeID = CFDictionaryGetTypeID();
      if (v15 == TypeID)
      {
        v16 = AFCIteratorGetObject(v10);
        Value = CFDictionaryGetValue(v16, v12);
        v18 = CFGetTypeID(Value);
        TypeID = CFStringGetTypeID();
        if (v18 == TypeID)
        {
          v19 = 9 * CFStringGetLength(v12);
          TypeID = AFCIteratorGetKeyBuffer(v10, v19 + 1);
          *a2 = TypeID;
          if (TypeID)
          {
            TypeID = CFStringGetCString(v12, TypeID, v19 + 1, 0x8000100u);
            if (TypeID)
            {
              v20 = 9 * CFStringGetLength(Value);
              TypeID = AFCIteratorGetValueBuffer(v10, v20 + 1);
              *a3 = TypeID;
              if (TypeID)
              {
                TypeID = CFStringGetCString(Value, TypeID, v20 + 1, 0x8000100u);
                if (TypeID)
                {
                  LOWORD(v11) = 0;
                  return v11 & 0x1FFF;
                }

                v22 = "CString encoding of value failed";
                v23 = 3892330503;
                v24 = 781;
              }

              else
              {
                v23 = 3892330499;
                v22 = "NULL value buffer";
                v24 = 780;
              }
            }

            else
            {
              v22 = "CString encoding of key failed";
              v23 = 3892330503;
              v24 = 776;
            }
          }

          else
          {
            v23 = 3892330499;
            v22 = "NULL key buffer";
            v24 = 775;
          }
        }

        else
        {
          v22 = "value is not a string";
          v23 = 3892330503;
          v24 = 771;
        }
      }

      else
      {
        v22 = "iterator object is not a dictionary";
        v23 = 3892330503;
        v24 = 768;
      }
    }

    else
    {
      v22 = "key is not a string";
      v23 = 3892330503;
      v24 = 766;
    }
  }

  else
  {
    v22 = "NULL argument";
    v23 = 3892330503;
    v24 = 755;
  }

  LODWORD(v11) = __AFCSetErrorResult_1(TypeID, a2, v23, a4, v24, v22, a7, a8, v25);
  if (v11)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      goto LABEL_14;
    }
  }

  return v11 & 0x1FFF;
}

uint64_t AFCKeyValueClose(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return __AFCSetErrorResult_1(0, a2, 3892330503, a4, 799, "NULL argument", a7, a8, vars0) & 0x1FFF;
  }

  CFRelease(a1);
  return 0;
}

CFStringRef OUTLINED_FUNCTION_2_0(const __CFAllocator *a1)
{

  return CFStringCreateWithCString(a1, v1, 0x8000100u);
}

void OUTLINED_FUNCTION_6_0()
{

  CFRelease(v0);
}

uint64_t __AFCSetErrorResult_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a5;
  AFCLog(5, "Setting error result %d, 0x%X, %s, %d\n", a3, a4, a5, a6, a7, a8, 0xFFFFFFFFLL);
  return AFCSetErrorInfoWithArgs(0, 0xFFFFFFFFLL, a3, "/Library/Caches/com.apple.xbs/Sources/AppleFileConduit/connection.c", v10, a6);
}

uint64_t __AFCConnectionSendOperation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  DataLength = __AFCOperationGetDataLength(a2);
  BytePtr = *(a2 + 64);
  if (BytePtr)
  {
    BytePtr = CFDataGetBytePtr(BytePtr);
    v11 = BytePtr;
    if (!DataLength)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (!DataLength)
    {
      goto LABEL_6;
    }
  }

  if (!v11)
  {
    return __AFCSetErrorResult_2(BytePtr, v5, 3892330503, v6, 1231, "Invalid data buffer in operation (%p, %d)", v7, v8, 0);
  }

LABEL_6:
  AFCLockLock(*(a1 + 136));
  v12 = *(a1 + 80);
  *(a1 + 80) = v12 + 1;
  *(v4 + 24) = v12;
  AFCLockUnlock(*(a1 + 136));
  v13 = AFCSendPacket(a1, v4, v11, DataLength);
  if (v13)
  {
    ErrorInfo = AFCCopyAndClearLastErrorInfo();
    __AFCOperationSetClientErrorWithInfo(a2, v13, ErrorInfo);
    if (ErrorInfo)
    {
      CFRelease(ErrorInfo);
    }
  }

  return v13;
}

uint64_t __AFCConnectionNotifyOperationComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AFCLog(5, "%s(%p, %p) [%lu]\n", a3, a4, a5, a6, a7, a8, "__AFCConnectionNotifyOperationComplete");
  *(a2 + 24) = 5;
  v17 = *(a1 + 216);
  if (v17 && (*(a2 + 32) & 1) == 0)
  {
    v17(a1, 1, a2);
  }

  __AFCConnectionSignalIOLoop(a1, v10, v11, v12, v13, v14, v15, v16, v20);
  v18 = *(a2 + 256);

  return AFCConditionSignal(v18);
}

uint64_t __AFCEnqueue(uint64_t a1, __CFArray *a2, const void *a3)
{
  AFCLockLock(*(a1 + 136));
  CFArrayAppendValue(a2, a3);
  CFArrayGetCount(a2);
  v6 = *(a1 + 136);

  return AFCLockUnlock(v6);
}

void __AFCConnectionUnscheduleFromRunLoop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AFCLog(5, "__AFCConnectionUnscheduleFromRunLoop(%p)", a3, a4, a5, a6, a7, a8, a1);
  if (CFArrayGetCount(*(a1 + 160)) > 0 || CFArrayGetCount(*(a1 + 152)) >= 1)
  {
    AFCLog(1, "WARNING: unscheduling from run loop with outstanding requests!", v9, v10, v11, v12, v13, v14, v18);
  }

  v15 = *(a1 + 192);
  if (v15)
  {
    v16 = *(a1 + 176);
    if (v16)
    {
      CFRunLoopRemoveSource(v15, v16, *(a1 + 200));
      CFRelease(*(a1 + 176));
      *(a1 + 176) = 0;
      v15 = *(a1 + 192);
    }

    v17 = *(a1 + 184);
    if (v17)
    {
      CFRunLoopRemoveSource(v15, v17, *(a1 + 200));
      CFRelease(*(a1 + 184));
      *(a1 + 184) = 0;
      v15 = *(a1 + 192);
    }

    CFRelease(v15);
    *(a1 + 192) = 0;
    CFRelease(*(a1 + 200));
    *(a1 + 200) = 0;
  }
}

uint64_t __AFCConnectionProcessData(uint64_t a1)
{
  AFCLockLock(*(a1 + 136));
  CFRetain(a1);
  v9 = *(a1 + 32);
  if (v9 == 1)
  {
    *(a1 + 32) = 0;
    __AFCConnectionUnscheduleFromRunLoop(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v10 = 3892330507;
  AFCLockUnlock(*(a1 + 136));
  if (AFCSocketIsDisconnected(*(a1 + 56)))
  {
    AFCLog(5, "Socket closed for connection %p.", v11, v12, v13, v14, v15, v16, a1);
  }

  else
  {
    v24 = __AFCDequeue(a1, *(a1 + 160));
    if (v24)
    {
      v31 = v24;
      v32 = __AFCConnectionReceiveOperation(a1, v24);
      if (v32 != -402636789)
      {
        v46 = v32;
        __AFCConnectionNotifyOperationComplete(a1, v31, v33, v34, v35, v36, v37, v38);
        CFRelease(v31);
        v10 = v46;
        if (!v9)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      AFCLog(5, "Socket closed when reading on connection %p.", v33, v34, v35, v36, v37, v38, a1);
      __AFCConnectionNotifyOperationComplete(a1, v31, v39, v40, v41, v42, v43, v44);
      CFRelease(v31);
    }

    else
    {
      AFCLog(1, "Data received on connection %p when no reply expected.", v25, v26, v27, v28, v29, v30, a1);
    }
  }

  *(a1 + 16) = 2;
  __AFCConnectionInvalidate(a1, v17, v18, v19, v20, v21, v22, v23);
  if (v9)
  {
LABEL_10:
    AFCConditionSignal(*(a1 + 40));
  }

LABEL_11:
  CFRelease(a1);
  return v10;
}

uint64_t __AFCConnectionReceiveOperation(const void *a1, uint64_t a2)
{
  v24 = 0;
  CFRetain(a1);
  v4 = AFCReadPacketHeader(a1, *(a2 + 88), *(a2 + 104), &v24);
  if (v4 == -402636789)
  {
    AFCLog(5, "Socket closed when reading.\n", v5, v6, v7, v8, v9, v10, v23);
    AFCConnectionInvalidate(a1, v11, v12, v13, v14, v15, v16, v17);
    v18 = 3892330507;
  }

  else
  {
    v18 = v4;
    v19 = v24;
    if (v24)
    {
      v20 = *(a2 + 88);
      if (v20)
      {
        CFAllocatorDeallocate(*(a2 + 96), v20);
        v19 = v24;
      }

      *(a2 + 88) = v19;
      *(a2 + 96) = CFGetAllocator(a1);
    }

    if (!v18)
    {
      v18 = __AFCConnectionDispatchReply(a1, a2);
    }

    if (v18)
    {
      ErrorInfo = AFCCopyAndClearLastErrorInfo();
      __AFCOperationSetClientErrorWithInfo(a2, v18, ErrorInfo);
      if (ErrorInfo)
      {
        CFRelease(ErrorInfo);
      }
    }
  }

  CFRelease(a1);
  return v18;
}

uint64_t __AFCConnectionAddFileDescriptor(uint64_t a1, const void *a2)
{
  AFCLockLock(*(a1 + 136));
  CFSetAddValue(*(a1 + 168), a2);
  v4 = *(a1 + 136);

  return AFCLockUnlock(v4);
}

uint64_t __AFCConnectionRemoveFileDescriptor(uint64_t a1, const void *a2)
{
  AFCLockLock(*(a1 + 136));
  CFSetRemoveValue(*(a1 + 168), a2);
  v4 = *(a1 + 136);

  return AFCLockUnlock(v4);
}

size_t __AFCConnectionSetRoot(uint64_t a1, CFStringRef string)
{
  *(a1 + 224) = 0;
  v3 = a1 + 224;
  CFStringGetFileSystemRepresentation(string, (a1 + 224), 1023);
  result = strlen(v3);
  *(v3 + 1024) = result;
  if (result)
  {
    if (*(result + v3 - 1) != 47)
    {
      *(a1 + 1248) = result + 1;
      *(v3 + result) = 47;
      *(v3 + *(a1 + 1248)) = 0;
    }
  }

  return result;
}

uint64_t AFCConnectionCreate(const __CFAllocator *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  pthread_once(&AFCConnectionGetTypeID_typeIDInit, __AFCConnectionRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v17 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), 0x4E8uLL);
    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = v17;
    v18 = CFSocketCreateWithNative(a1, v8, 1uLL, __AFCConnectionSocketCallBack, &context);
    *(v17 + 48) = v18;
    if (!v18 || (CFSocketSetSocketFlags(v18, 1uLL), AFCSetSocketOptions(v17, v8), Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x29EDB9000]), (*(v17 + 152) = Mutable) == 0) || (v20 = CFArrayCreateMutable(a1, 0, MEMORY[0x29EDB9000]), (*(v17 + 160) = v20) == 0) || (v21 = CFSetCreateMutable(a1, 0, 0), (*(v17 + 168) = v21) == 0) || (*(v17 + 56) = v8, *(v17 + 60) = a3 != 0, *(v17 + 216) = a4, *(v17 + 64) = 0, *(v17 + 68) = 0, *(v17 + 80) = 0, *(v17 + 88) = 0x100000, *(v17 + 96) = 0x100000, *(v17 + 120) = a5, v22 = AFCLockCreate(), (*(v17 + 136) = v22) == 0) || (v23 = AFCLockCreate(), (*(v17 + 144) = v23) == 0) || (*(v17 + 104) = 60, *(v17 + 112) = 1, *(v17 + 1256) = kqueue(), *(v17 + 16) = 1, v24 = AFCConditionCreate(a1), (*(v17 + 40) = v24) == 0) || (v25 = AFCConditionCreate(a1), (*(v17 + 24) = v25) == 0))
    {
      AFCConnectionCreate_cold_1(v17, (v17 + 48));
      return 0;
    }

    AFCCreateSignalFileDescriptors((v17 + 1260), (v17 + 1264));
  }

  AFCLog(5, "%s(%p)\n", v11, v12, v13, v14, v15, v16, "AFCConnectionCreate");
  return v17;
}

uint64_t __AFCConnectionSocketCallBack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 1)
  {
    return __AFCConnectionProcessData(a5);
  }

  return result;
}

uint64_t AFCConnectionSetCallBack(uint64_t a1, uint64_t a2)
{
  AFCLockLock(*(a1 + 136));
  *(a1 + 216) = a2;
  v4 = *(a1 + 136);

  return AFCLockUnlock(v4);
}

uint64_t __AFCConnectionRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __gAFCConnectionTypeID = result;
  return result;
}

uint64_t AFCConnectionScheduleWithRunLoop(uint64_t a1, void *a2, const __CFString *a3)
{
  AFCLockLock(*(a1 + 136));
  if (*(a1 + 16) == 1)
  {
    if (*(a1 + 192))
    {
      v12 = 3892330503;
      AFCLog(2, "Trying to add to run loop when already on run loop", v6, v7, v8, v9, v10, v11, v18.version);
    }

    else
    {
      *(a1 + 192) = CFRetain(a2);
      *(a1 + 200) = CFStringCreateCopy(0, a3);
      if (!*(a1 + 176))
      {
        v13 = CFGetAllocator(a1);
        RunLoopSource = CFSocketCreateRunLoopSource(v13, *(a1 + 48), 200);
        *(a1 + 176) = RunLoopSource;
        CFRunLoopAddSource(a2, RunLoopSource, a3);
        CFSocketEnableCallBacks(*(a1 + 48), 1uLL);
      }

      if (!*(a1 + 184))
      {
        v18.version = 0;
        memset(&v18.retain, 0, 56);
        v18.info = a1;
        v18.perform = __AFCConnectionPerformOperationCallBack;
        v15 = CFGetAllocator(a1);
        v16 = CFRunLoopSourceCreate(v15, 100, &v18);
        *(a1 + 184) = v16;
        CFRunLoopAddSource(a2, v16, a3);
      }

      AFCLockUnlock(*(a1 + 136));
      return 0;
    }
  }

  else
  {
    AFCLockUnlock(*(a1 + 136));
    return 3892330507;
  }

  return v12;
}

uint64_t AFCConnectionUnscheduleFromRunLoop(uint64_t a1)
{
  CFRunLoopGetCurrent();
  AFCLog(5, "%s(%p, %p) [%p]", v2, v3, v4, v5, v6, v7, "AFCConnectionUnscheduleFromRunLoop");
  AFCConnectionInvalidate(a1, v8, v9, v10, v11, v12, v13, v14);
  AFCLockLock(*(a1 + 136));
  if (*(a1 + 192))
  {
    if (*(a1 + 16))
    {
      *(a1 + 32) = 1;
      AFCLockUnlock(*(a1 + 136));
      __AFCConnectionSignalIOLoop(a1, v21, v22, v23, v24, v25, v26, v27, v43);
      AFCConditionWait(*(a1 + 40), (4 * *(a1 + 104)));
      return AFCLog(5, "%s(%p, %p) finished", v28, v29, v30, v31, v32, v33, "AFCConnectionUnscheduleFromRunLoop");
    }

    AFCLog(5, "Connection %p already invalid, just unscheduling", v15, v16, v17, v18, v19, v20, a1);
    __AFCConnectionUnscheduleFromRunLoop(a1, v35, v36, v37, v38, v39, v40, v41);
  }

  else
  {
    AFCLog(5, "Connection %p already unscheduled", v15, v16, v17, v18, v19, v20, a1);
  }

  v42 = *(a1 + 136);

  return AFCLockUnlock(v42);
}

uint64_t __AFCConnectionDispatchReply(uint64_t a1, uint64_t a2)
{
  AFCLockLock(*(a2 + 248));
  v4 = *(a2 + 88);
  if (v4)
  {
    v5 = *(a2 + 48);
    v6 = *(v4 + 32);
    AFCLockUnlock(*(a2 + 248));
    v7 = __AFCProcessStatusPacket;
    for (i = &qword_2A1EE3880; ; i += 3)
    {
      v9 = *(i - 1);
      v10 = !v9 || v9 == v5;
      if (v10 && *i == v6)
      {
        break;
      }

      v7 = i[4];
      if (!v7)
      {
        result = 3892330502;
        *(a2 + 24) = 5;
        return result;
      }
    }

    *(a2 + 24) = 5;

    return v7(a1, a2);
  }

  else
  {
    AFCLockUnlock(*(a2 + 248));
    return 3892330519;
  }
}

uint64_t AFCConnectionSubmitOperation(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AFCLog(5, "AFCConnectionSubmitOperation(%p, %p)", a3, a4, a5, a6, a7, a8, a1);
  if (*(a1 + 16) != 1)
  {
    return 3892330507;
  }

  CFRetain(a2);
  a2[6] = 2;
  __AFCEnqueue(a1, *(a1 + 152), a2);
  __AFCConnectionSignalIOLoop(a1, v10, v11, v12, v13, v14, v15, v16, v18);
  return 0;
}

uint64_t AFCConnectionProcessOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CFTimeInterval a9)
{
  AFCLog(5, "AFCConnectionProcessOperation(%p, %p, %g)", a3, a4, a5, a6, a7, a8, a1);
  AFCLockLock(*(a1 + 136));
  if (*(a1 + 16) == 1)
  {
    CFRetain(a1);
    v12 = *(a1 + 192);
    if (!v12)
    {
      AFCConnectionProcessOperation_cold_1((a1 + 136), a1, a2, &v39);
      v23 = v39;
      goto LABEL_19;
    }

    Current = CFRunLoopGetCurrent();
    v14 = CFEqual(v12, Current);
    AFCLockUnlock(*(a1 + 136));
    v21 = AFCConnectionSubmitOperation(a1, a2, v15, v16, v17, v18, v19, v20);
    if (!v21)
    {
      v22 = *(a2 + 256);
      if (v14)
      {
        if (AFCConditionIsSignaled(v22))
        {
LABEL_6:
          v23 = 0;
LABEL_19:
          CFRelease(a1);
          AFCLog(5, "ProcessOperation(%p) = %x", v32, v33, v34, v35, v36, v37, a2);
          return v23;
        }

        v23 = 3892330507;
        while (1)
        {
          v30 = CFAbsoluteTimeGetCurrent();
          v31 = CFRunLoopRunInMode(@"AFCRunLoopMode", a9, 1u);
          if (v31 != kCFRunLoopRunHandledSource)
          {
            break;
          }

          if (a9 != 0.0)
          {
            a9 = a9 + v30 - CFAbsoluteTimeGetCurrent();
            if (a9 <= 0.0)
            {
              goto LABEL_18;
            }
          }

          if (AFCConditionIsSignaled(*(a2 + 256)))
          {
            goto LABEL_6;
          }
        }

        if ((v31 - 1) < 2)
        {
          goto LABEL_19;
        }

        if (v31 != kCFRunLoopRunTimedOut)
        {
          v23 = 3892330497;
          goto LABEL_19;
        }

LABEL_18:
        AFCLog(1, "Operation %p timed out!", v24, v25, v26, v27, v28, v29, a2);
        v23 = 3892330508;
        goto LABEL_19;
      }

      v21 = AFCConditionWait(v22, a9);
      if (v21 == -402636788)
      {
        goto LABEL_18;
      }
    }

    v23 = v21;
    goto LABEL_19;
  }

  AFCLockUnlock(*(a1 + 136));
  return 3892330507;
}

uint64_t AFCConnectionProcessOperations(uint64_t a1, CFTimeInterval a2)
{
  if (*(a1 + 16) == 1)
  {
    return __AFCConnectionProcessOperations(a1, a2);
  }

  else
  {
    return 3892330507;
  }
}

uint64_t AFCConnectionGetStatus(uint64_t a1)
{
  if (!a1)
  {
    return 3892330503;
  }

  if (*(a1 + 68) == 1)
  {
    return *(a1 + 64);
  }

  return 0;
}

uint64_t AFCConnectionCopyLastErrorInfo(uint64_t a1)
{
  AFCLockLock(*(a1 + 136));
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRetain(*(a1 + 72));
  }

  AFCLockUnlock(*(a1 + 136));
  return v2;
}

uint64_t AFCConnectionSetSecureContext(uint64_t a1, uint64_t a2)
{
  AFCLockLock(*(a1 + 136));
  *(a1 + 208) = a2;
  v4 = *(a1 + 136);

  return AFCLockUnlock(v4);
}

uint64_t AFCConnectionSetIOTimeout(uint64_t a1, uint64_t a2)
{
  AFCLockLock(*(a1 + 136));
  *(a1 + 104) = a2;
  v4 = *(a1 + 136);

  return AFCLockUnlock(v4);
}

uint64_t AFCConnectionSetFatalError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AFCLog(1, "Fatal connection error 0x%x", a3, a4, a5, a6, a7, a8, a2);
  AFCLockLock(*(a1 + 136));
  *(a1 + 64) = a2;
  *(a1 + 68) = 1;
  AFCLockUnlock(*(a1 + 136));
  return a2;
}

uint64_t __AFCConnectionGetRequestPath(uint64_t a1, char *__src, char *a3, size_t __size)
{
  v4 = __size;
  if (!*(a1 + 224))
  {
    goto LABEL_4;
  }

  v8 = *(a1 + 1248);
  if (v8 < __size)
  {
    memcpy(a3, (a1 + 224), v8);
    v9 = *(a1 + 1248);
    a3 += v9;
    v4 -= v9;
LABEL_4:
    AFCStringCopy(a3, v4, __src, 0);
    return 1;
  }

  return 0;
}

__CFString *__AFCConnectionCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  AFCLockLock(*(a1 + 136));
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<AFCConnection %p [%p]> {\n", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"  FileDescriptor = %d\n", *(a1 + 56));
  CFStringAppendFormat(Mutable, 0, @"  LastError = %d\n", *(a1 + 64));
  CFStringAppendFormat(Mutable, 0, @"  FatalError = %d\n", *(a1 + 64));
  CFStringAppendFormat(Mutable, 0, @"  MaxOperations = %d\n", *(a1 + 112));
  CFStringAppendFormat(Mutable, 0, @"}");
  AFCLockUnlock(*(a1 + 136));
  return Mutable;
}

uint64_t __AFCProcessFileRefOpen(const void *a1, void *cf)
{
  v4 = cf[11];
  v5 = CFGetAllocator(cf);
  cf[30] = AFCFileDescriptorCreate(v5, a1, *(v4 + 40));
  result = AFCDiscardBodyData(a1, v4, v6, v7, v8, v9, v10, v11);
  if (!result)
  {
    if (cf[30])
    {
      return 0;
    }

    else
    {
      return 3892330499;
    }
  }

  return result;
}

uint64_t __AFCProcessFileRefTell(uint64_t a1, void *cf)
{
  v4 = cf[11];
  valuePtr = *(v4 + 40);
  v5 = CFGetAllocator(cf);
  cf[30] = CFNumberCreate(v5, kCFNumberSInt64Type, &valuePtr);
  result = AFCDiscardBodyData(a1, v4, v6, v7, v8, v9, v10, v11);
  if (!result)
  {
    if (cf[30])
    {
      return 0;
    }

    else
    {
      return 3892330499;
    }
  }

  return result;
}

BOOL AFCCompareAndSwap32(int a1, unsigned int a2, atomic_uint *a3)
{
  v3 = a1;
  atomic_compare_exchange_strong_explicit(a3, &v3, a2, memory_order_relaxed, memory_order_relaxed);
  return v3 == a1;
}

uint64_t __AFCLockRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __gAFCLockTypeID = result;
  return result;
}

const void *AFCLockCreate()
{
  v5 = *MEMORY[0x29EDCA608];
  v4.__sig = 0;
  *v4.__opaque = 0;
  if (pthread_mutexattr_init(&v4) || (pthread_mutexattr_settype(&v4, 2), pthread_once(&AFCLockGetTypeID_typeIDInit, __AFCLockRegisterClass), (Instance = _CFRuntimeCreateInstance()) == 0))
  {
    pthread_mutexattr_destroy(&v4);
    return 0;
  }

  v1 = Instance;
  v2 = pthread_mutex_init((Instance + 16), &v4);
  pthread_mutexattr_destroy(&v4);
  if (v2)
  {
    CFRelease(v1);
    return 0;
  }

  return v1;
}

uint64_t AFCReadData(uint64_t a1, char *a2, size_t a3)
{
  if (*(a1 + 68) == 1)
  {
    return *(a1 + 64);
  }

  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v52[0] = AFCConnectionGetIOTimeout(a1);
  v52[1] = 0;
  while (1)
  {
    SocketBlockSize = AFCConnectionGetSocketBlockSize(a1);
    if (SocketBlockSize >= a3 - v7)
    {
      v16 = a3 - v7;
    }

    else
    {
      v16 = SocketBlockSize;
    }

    if (v52[0])
    {
      v17 = v52;
    }

    else
    {
      v17 = 0;
    }

    if (!*(a1 + 208))
    {
      while (1)
      {
        v30 = __WaitForTimeoutOrEvent(a1, 1, v17);
        if (v30)
        {
          return v30;
        }

        v31 = recv(*(a1 + 56), a2, v16, 0);
        if ((v31 & 0x8000000000000000) == 0)
        {
          break;
        }

        v35 = *__error();
        if (v35 != 35 && v35 != 4)
        {
          v31 = 1;
          v37 = 3892330500;
          v38 = 617;
          v39 = "recv";
LABEL_38:
          v4 = __AFCSetErrorResult_3(v31, v35, v37, v32, v38, v39, v33, v34, v50);
          goto LABEL_31;
        }
      }

      if (v31)
      {
        v4 = 0;
        v8 = v31;
        goto LABEL_31;
      }

      v37 = 3892330507;
      v35 = 0xFFFFFFFFLL;
      v38 = 619;
      v39 = "recv connection closed";
      goto LABEL_38;
    }

    AFCLog(5, "%s on ctx %p for %u bytes.", v10, v11, v12, v13, v14, v15, "__SecureRecvWithTimeout");
    if (v16)
    {
      connection = 0;
      v24 = SSLGetConnection(*(a1 + 208), &connection);
      if (v24)
      {
        v40 = v24;
        v41 = 505;
        v42 = "SSLGetConnection";
LABEL_42:
        v28 = __AFCSetErrorResult_3(1, v40, 3892330500, v19, v41, v42, v22, v23, v51);
      }

      else
      {
        AFCLog(5, "%s on ctx %p with fd %d.", v25, v19, v26, v27, v22, v23, "__SecureRecvWithTimeout");
        while (1)
        {
          v28 = __WaitForTimeoutOrEvent(a1, 1, v17);
          if (v28)
          {
            break;
          }

          connection = 0;
          v29 = SSLRead(*(a1 + 208), a2, v16, &connection);
          if (v29 != -9803)
          {
            v40 = v29;
            if (v29 >> 1 == 2147478745)
            {
              v8 = 0;
              v4 = 0;
              connection = 0;
              goto LABEL_30;
            }

            if (!v29)
            {
              v4 = 0;
              v8 = connection;
              goto LABEL_30;
            }

            v41 = 538;
            v42 = "SSLRead";
            goto LABEL_42;
          }

          AFCLog(4, "Reading %lu bytes gets SSL error %d, amount_sent %lu\n", v18, v19, v20, v21, v22, v23, v16);
          if (connection)
          {
            v4 = 0;
            v8 = connection;
            goto LABEL_30;
          }
        }
      }

      v4 = v28;
    }

    else
    {
      v8 = 0;
      v4 = 0;
    }

LABEL_30:
    AFCLog(5, "%s returned %d.", v18, v19, v20, v21, v22, v23, "__SecureRecvWithTimeout");
LABEL_31:
    if (v4 || !v8)
    {
      break;
    }

    v7 += v8;
    a2 += v8;
    if (v7 >= a3)
    {
      goto LABEL_45;
    }
  }

  if (v4)
  {
    return v4;
  }

LABEL_45:
  if (v7)
  {
    if (v7 < v16)
    {
      v4 = __AFCSetErrorResult_3(1, 0xFFFFFFFFLL, 3892330500, v32, 808, "Read underrun (%d < %d)", v33, v34, v7);
      AFCConnectionSetFatalError(a1, v4, v43, v44, v45, v46, v47, v48);
      return v4;
    }

    return 0;
  }

  return __AFCSetErrorResult_3(0, 0xFFFFFFFFLL, 3892330507, v32, 804, "Read length 0", v33, v34, v50);
}

uint64_t __AFCSetErrorResult_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a5;
  AFCLog(5, "Setting error result %d, 0x%X, %s, %d\n", a3, a4, a5, a6, a7, a8, a2);
  return AFCSetErrorInfoWithArgs(a1, a2, a3, "/Library/Caches/com.apple.xbs/Sources/AppleFileConduit/platform.c", v10, a6);
}

uint64_t AFCSendData(uint64_t a1, char *a2, unint64_t a3)
{
  if (*(a1 + 68) == 1)
  {
    return *(a1 + 64);
  }

  if (!a3)
  {
    return 0;
  }

  v6 = a2;
  if (!a2)
  {
    return 3892330503;
  }

  v7 = 0;
  v57[0] = AFCConnectionGetIOTimeout(a1);
  v57[1] = 0;
  while (1)
  {
    SocketBlockSize = AFCConnectionGetSocketBlockSize(a1);
    if (SocketBlockSize >= a3 - v7)
    {
      v15 = a3 - v7;
    }

    else
    {
      v15 = SocketBlockSize;
    }

    if (v57[0])
    {
      v16 = v57;
    }

    else
    {
      v16 = 0;
    }

    if (!*(a1 + 208))
    {
      while (1)
      {
        v35 = __WaitForTimeoutOrEvent(a1, 2, v16);
        if (v35)
        {
          return v35;
        }

        v36 = send(*(a1 + 56), v6, v15, 0);
        if ((v36 & 0x8000000000000000) == 0)
        {
          v29 = v36;
          v4 = 0;
          goto LABEL_31;
        }

        v30 = *__error();
        if (v30 != 35 && v30 != 4)
        {
          v4 = __AFCSetErrorResult_3(1, v30, 3892330501, v31, 753, "send", v32, v33, v55);
          goto LABEL_45;
        }
      }
    }

    processed = 0;
    AFCLog(5, "%s on ctx %p for %u bytes.", v9, v10, v11, v12, v13, v14, "__SecureSendWithTimeout");
    if (v15)
    {
      connection = 0;
      v23 = SSLGetConnection(*(a1 + 208), &connection);
      if (v23)
      {
        v37 = v23;
        v39 = 650;
        v40 = "SSLGetConnection";
LABEL_41:
        v27 = __AFCSetErrorResult_3(1, v37, 3892330501, v18, v39, v40, v21, v22, v56);
      }

      else
      {
        AFCLog(5, "%s on ctx %p with fd %d.", v24, v18, v25, v26, v21, v22, "__SecureSendWithTimeout");
        while (1)
        {
          v27 = __WaitForTimeoutOrEvent(a1, 2, v16);
          if (v27)
          {
            break;
          }

          v28 = SSLWrite(*(a1 + 208), v6, v15, &processed);
          if (v28 != -9803)
          {
            v37 = v28;
            if (!v28)
            {
              v4 = 0;
              v29 = processed;
              goto LABEL_30;
            }

            v39 = 676;
            v40 = "SSLWrite";
            goto LABEL_41;
          }

          AFCLog(4, "Writing %lu bytes gets SSL error %d, amount_sent %lu\n", v17, v18, v19, v20, v21, v22, v15);
          v29 = processed;
          if (processed)
          {
            v4 = 0;
            goto LABEL_30;
          }
        }
      }

      v4 = v27;
      v29 = 0;
    }

    else
    {
      v29 = 0;
      v4 = 3892330503;
    }

LABEL_30:
    AFCLog(5, "%s returned %d.", v17, v18, v19, v20, v21, v22, "__SecureSendWithTimeout");
LABEL_31:
    if (!v29 || v4 != 0)
    {
      break;
    }

    v4 = 0;
    v7 += v29;
    v6 += v29;
    if (v7 >= a3)
    {
      return v4;
    }
  }

LABEL_45:
  if (v4)
  {
    return v4;
  }

  if (v7)
  {
    v44 = __error();
    v4 = __AFCSetErrorResult_3(1, *v44, 3892330501, v45, 864, "Write underrun (%d < %d)", v46, v47, v7);
    AFCConnectionSetFatalError(a1, v4, v48, v49, v50, v51, v52, v53);
    return v4;
  }

  return __AFCSetErrorResult_3(1, 0xFFFFFFFFLL, 3892330507, v41, 862, "Write length 0", v42, v43, v55);
}

uint64_t AFCSetSocketOptions(uint64_t a1, int a2)
{
  v35 = 1;
  v34[0] = AFCConnectionGetIOTimeout(a1);
  v34[1] = 0;
  if (setsockopt(a2, 6, 1, &v35, 4u) < 0)
  {
    v4 = __error();
    v33 = strerror(*v4);
    AFCLog(5, "Setting TCP_NODELAY on connection %p failed: %s", v5, v6, v7, v8, v9, v10, a1);
  }

  if (fcntl(a2, 4, 4, v33) < 0)
  {
    v11 = __error();
    strerror(*v11);
    AFCLog(5, "Setting O_NONBLOCK on connection %p failed: %s\n", v12, v13, v14, v15, v16, v17, a1);
  }

  if (setsockopt(a2, 0xFFFF, 4101, v34, 0x10u) < 0)
  {
    v18 = __error();
    strerror(*v18);
    AFCLog(4, "Setting SO_SNDTIMEO on connection %p failed: %s", v19, v20, v21, v22, v23, v24, a1);
  }

  result = setsockopt(a2, 0xFFFF, 4102, v34, 0x10u);
  if ((result & 0x80000000) != 0)
  {
    v26 = __error();
    strerror(*v26);
    return AFCLog(4, "Setting SO_RCVTIMEO on connection %p failed: %s", v27, v28, v29, v30, v31, v32, a1);
  }

  return result;
}

BOOL AFCSocketIsDisconnected(int a1)
{
  if (a1 == -1)
  {
    return 1;
  }

  v11 = v1;
  v12 = v2;
  v4 = kqueue();
  if (v4 < 0)
  {
    return 0;
  }

  v5 = v4;
  changelist.ident = a1;
  *&changelist.filter = 2490367;
  memset(&changelist.fflags, 0, 20);
  if (kevent(v4, &changelist, 1, 0, 0, 0))
  {
    close(v5);
    return 0;
  }

  v9.tv_sec = 0;
  v9.tv_nsec = 0;
  v7 = kevent(v5, 0, 0, &changelist, 1, &v9);
  close(v5);
  if (v7 < 0)
  {
    return 0;
  }

  return v7 == 1 && (changelist.flags & 0x8000u) != 0;
}

uint64_t AFCCreateSignalFileDescriptors(int *a1, int *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  *a1 = -1;
  *a2 = -1;
  v6 = 1;
  result = socketpair(1, 1, 0, &v7);
  if (!result)
  {
    if (setsockopt(v7, 0xFFFF, 4130, &v6, 4u) == -1 || (result = setsockopt(v8, 0xFFFF, 4130, &v6, 4u), result == -1))
    {
      close(v7);
      return close(v8);
    }

    else
    {
      v5 = v8;
      *a1 = v7;
      *a2 = v5;
    }
  }

  return result;
}

uint64_t AFCGetFilesystemInfo(const char *a1, void *a2, void *a3, void *a4, void *a5)
{
  v24 = *MEMORY[0x29EDCA608];
  memset(&v23, 0, 512);
  if (statfs(a1, &v23))
  {
    v16 = __error();
    return __AFCSetErrorResult_3(0, *v16, 3892330497, v17, 1029, "statfs", v18, v19, v22);
  }

  else
  {
    f_bsize = v23.f_bsize;
    AFCLog(5, "Filesystem info for '%s': total %llu, free %llu, block size %lu, iosize %lu", v10, v11, v12, v13, v14, v15, a1);
    if (a4)
    {
      *a4 = f_bsize;
    }

    if (a2)
    {
      *a2 = v23.f_blocks * f_bsize;
    }

    if (a3)
    {
      *a3 = v23.f_bavail * f_bsize;
    }

    result = 0;
    if (a5)
    {
      *a5 = v23.f_iosize;
    }
  }

  return result;
}

CFNumberRef __AFCPlatformInitialize()
{
  __gAFCLogLock = AFCLockCreate();
  v0 = getprogname();
  __gAFCASLClient = asl_open(v0, "com.apple.afc", 2u);
  pthread_key_create(&__gAFCErrorInfoKey, MEMORY[0x29EDB8C90]);
  __AFCLogPreferencesChanged(0, v1, v2, v3, v4, v5, v6, v7);
  v8 = MEMORY[0x29EDCA578];
  notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &gAFCProfileNotificationToken, MEMORY[0x29EDCA578], &__block_literal_global);
  notify_register_dispatch("com.apple.afc.preferencesChanged", &gAFCLogLevelNotificationToken, v8, &__block_literal_global_53);
  result = CFNumberCreate(0, kCFNumberDoubleType, &AFCafcVersionNumber);
  __gAFCVersion = result;
  return result;
}

uint64_t __AFCConditionRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __gAFCConditionTypeID = result;
  return result;
}

uint64_t AFCConditionCreate(uint64_t a1)
{
  pthread_once(&AFCConditionGetTypeID_typeIDInit, __AFCConditionRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    if (!pthread_mutex_init((Instance + 16), 0))
    {
      if (!pthread_cond_init((v2 + 80), 0))
      {
        *(v2 + 128) = 0;
        return v2;
      }

      pthread_mutex_destroy((v2 + 16));
    }

    CFRelease(v2);
    return 0;
  }

  return v2;
}

uint64_t __AFCConnectionProcessOperations(uint64_t a1, CFTimeInterval a2)
{
  if (*(a1 + 192))
  {
    return 3892330513;
  }

  Current = CFRunLoopGetCurrent();
  AFCConnectionScheduleWithRunLoop(a1, Current, @"AFCRunLoopMode");
  do
  {
    if (!AFCConnectionIsValid(a1))
    {
      v2 = 0;
      goto LABEL_12;
    }

    v6 = CFRunLoopRunInMode(@"AFCRunLoopMode", a2, 0);
  }

  while (v6 == kCFRunLoopRunHandledSource);
  v7 = -402636788;
  if (v6 != kCFRunLoopRunTimedOut)
  {
    v7 = -402636799;
  }

  if ((v6 - 1) >= 2)
  {
    v2 = v7;
  }

  else
  {
    v2 = 3892330507;
  }

LABEL_12:
  CFRunLoopGetCurrent();
  AFCConnectionUnscheduleFromRunLoop(a1);
  return v2;
}

const __CFDictionary *__AFCCopyErrorInfoDescription(CFDictionaryRef theDict)
{
  Mutable = theDict;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    if (Count && (v3 = Count, (v4 = MEMORY[0x29C289090](0, 16 * Count, 0x80040B8603338, 0)) != 0))
    {
      v5 = v4;
      CFDictionaryGetKeysAndValues(Mutable, v4, &v4[v3]);
      Mutable = CFStringCreateMutable(0, 0);
      if (Mutable && v3 >= 1)
      {
        v6 = v5;
        v7 = v3;
        do
        {
          CFStringAppendFormat(Mutable, 0, @"%@=%@ ", *v6, v6[v3]);
          ++v6;
          --v7;
        }

        while (v7);
      }

      CFAllocatorDeallocate(0, v5);
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

void *AFCCopyAndClearLastErrorInfo()
{
  pthread_once(&__gPlatformInit, __AFCPlatformInitialize);
  v0 = pthread_getspecific(__gAFCErrorInfoKey);
  pthread_setspecific(__gAFCErrorInfoKey, 0);
  return v0;
}

__CFString *__AFCLockCopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<AFCLock %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

uint64_t __AFCLogPreferencesChanged(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  keyExistsAndHasValidFormat = 0;
  if (a1)
  {
    AFCLog(1, "Checking for changed log settings", a3, a4, a5, a6, a7, a8, v18);
  }

  CFPreferencesSynchronize(@"com.apple.afc", *MEMORY[0x29EDB8FB0], *MEMORY[0x29EDB8F90]);
  result = CFPreferencesGetAppBooleanValue(@"VerboseLogging", @"com.apple.afc", &keyExistsAndHasValidFormat);
  v16 = result;
  if (a1)
  {
    result = AFCLog(1, "valid %d value %d", v10, v11, v12, v13, v14, v15, keyExistsAndHasValidFormat);
  }

  if (keyExistsAndHasValidFormat)
  {
    gAFCVerboseLogEnabled = v16 != 0;
    result = CFPreferencesAppValueIsForced(@"VerboseLogging", @"com.apple.afc");
  }

  if (a1)
  {
    if (gAFCVerboseLogEnabled)
    {
      v17 = "enabled";
    }

    else
    {
      v17 = "disabled";
    }

    return AFCLog(1, "Verbose logging %s%s", v10, v11, v12, v13, v14, v15, v17);
  }

  return result;
}

__CFString *__AFCConditionCopyDescription(unsigned __int8 *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<AFCCondition %p [%p]> { Signaled %d", a1, v2, a1[128]);
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

CFStringRef OUTLINED_FUNCTION_0_2(CFStringRef format)
{

  return CFStringCreateWithFormatAndArguments(0, 0, format, v1);
}

CFNumberRef OUTLINED_FUNCTION_1_1(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(0, kCFNumberIntType, a3);
}

void OUTLINED_FUNCTION_2_1(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

CFStringRef OUTLINED_FUNCTION_3_1(uint64_t a1, uint64_t a2, uint64_t a3, const __CFAllocator *a4)
{

  return CFStringCreateWithCStringNoCopy(0, v4, 0x8000100u, a4);
}

CFURLRef OUTLINED_FUNCTION_4_1(CFIndex bufLen)
{

  return CFURLCreateFromFileSystemRepresentation(0, v1, bufLen, 0);
}

void OUTLINED_FUNCTION_5_1(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

uint64_t AFCDeviceAppendDeviceInfo(uint64_t a1, CFMutableDataRef theData)
{
  v13 = *MEMORY[0x29EDCA608];
  CFDataAppendBytes(theData, "Model", 6);
  pthread_once(&GetModelName_modelInitialized, InitModelName);
  v4 = strlen(gModelName);
  CFDataAppendBytes(theData, gModelName, v4 + 1);
  v10 = 0;
  v11 = 0;
  v9 = 0;
  if (!AFCGetFilesystemInfo((a1 + 224), &v9, &v10, &v11, 0))
  {
    CFDataAppendBytes(theData, "FSTotalBytes", 13);
    snprintf(__str, 0x40uLL, "%llu", v9);
    v5 = strlen(__str);
    CFDataAppendBytes(theData, __str, v5 + 1);
    CFDataAppendBytes(theData, "FSFreeBytes", 12);
    snprintf(__str, 0x40uLL, "%llu", v10);
    v6 = strlen(__str);
    CFDataAppendBytes(theData, __str, v6 + 1);
    CFDataAppendBytes(theData, "FSBlockSize", 12);
    snprintf(__str, 0x40uLL, "%lu", v11);
    v7 = strlen(__str);
    CFDataAppendBytes(theData, __str, v7 + 1);
  }

  return 0;
}

char *InitModelName()
{
  v9 = 127;
  result = sysctlbyname("hw.machine", gModelName, &v9, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    v2 = __error();
    AFCLog(1, "Getting model name failed: %d\n", v3, v4, v5, v6, v7, v8, *v2);
    result = AFCStringCopy(gModelName, 0x80uLL, "unknown", 0);
    v1 = 7u;
  }

  else
  {
    v1 = v9;
  }

  gModelName[v1] = 0;
  return result;
}

CFTypeRef AFCServerContextSetRootPath(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 64) = cf;

  return CFRetain(cf);
}

char *AFCCreateServerContext()
{
  pthread_once(&gAFCServerOnce, __AFCServerInit);
  v0 = 40 * gAFCMaxOpenFileCount + 80;
  v1 = malloc_type_malloc(v0, 0x10E004011F7165CuLL);
  v2 = v1;
  if (v1)
  {
    bzero(v1, v0);
    if (gAFCMaxOpenFileCount)
    {
      v3 = 0;
      v4 = (v2 + 104);
      do
      {
        *(v4 - 6) = -1;
        v5 = dispatch_queue_create("com.apple.afc.fileio", 0);
        *v4 = v5;
        v4 += 5;
        global_queue = dispatch_get_global_queue(gAFCIOPriority, 0);
        dispatch_set_target_queue(v5, global_queue);
        ++v3;
      }

      while (v3 < gAFCMaxOpenFileCount);
    }

    *(v2 + 7) = dispatch_group_create();
    *(v2 + 6) = dispatch_semaphore_create(gAFCMaxIORequests);
    v7 = dispatch_queue_create("com.apple.afc.buffercache", 0);
    *(v2 + 3) = v7;
    v8 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, v7);
    *(v2 + 4) = v8;
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = __AFCCreateServerContext_block_invoke;
    handler[3] = &__block_descriptor_tmp_0;
    handler[4] = v2;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(*(v2 + 4));
  }

  return v2;
}

uint64_t __AFCServerInit()
{
  v17 = 0;
  v16 = 8;
  if (sysctlbyname("kern.maxvnodes", &v17, &v16, 0, 0))
  {
    v0 = __error();
    AFCLog(1, "sysctl kern.maxvnodes failed: %d\n", v1, v2, v3, v4, v5, v6, *v0);
  }

  if (getdtablesize() >= 32)
  {
    v13 = getdtablesize() - 16;
  }

  else
  {
    v13 = 16;
  }

  v14 = v17 >> 4;
  if (v17 >> 4 >= v13)
  {
    v14 = v13;
  }

  if (v17)
  {
    v13 = v14;
  }

  gAFCMaxOpenFileCount = v13;
  return AFCLog(5, "Max open files: %u\n", v7, v8, v9, v10, v11, v12, v13);
}

void __AFCCreateServerContext_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 40))
  {
    __AFCFlushServerBuffers(v1);
  }
}

uint64_t AFCInitServerConnection(uint64_t a1)
{
  Context = AFCConnectionGetContext(a1);
  v9 = gAFCFSBlocksizeDefault;
  if (!gAFCFSBlocksizeDefault)
  {
    v13 = 0x100000;
    v10 = AFCGetFilesystemInfo((a1 + 224), 0, 0, 0, &v13);
    v9 = v13;
    if (v10)
    {
      v9 = 0x100000;
    }
  }

  *(a1 + 88) = v9;
  v11 = gAFCFSBlocksizeMax;
  if (v9 > gAFCFSBlocksizeMax)
  {
    *(a1 + 88) = gAFCFSBlocksizeMax;
    v9 = v11;
  }

  result = AFCLog(5, "Setting server FS blocksize to %u\n", v2, v3, v4, v5, v6, v7, v9);
  *(Context + 8) = *(a1 + 88);
  return result;
}

uint64_t AFCProcessServerPacket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v756 = *MEMORY[0x29EDCA608];
  AFCLog(5, "Header packet type %d", a3, a4, a5, a6, a7, a8, *(a2 + 32));
  AFCLog(5, "Header len %llu", v10, v11, v12, v13, v14, v15, *(v8 + 16));
  AFCLog(5, "Server received packet type 0x%X\n", v16, v17, v18, v19, v20, v21, *(v8 + 32));
  switch(*(v8 + 32))
  {
    case 1:
      AFCLog(5, "Processing status packet\n", v22, v23, v24, v25, v26, v27, p_block);
      v187 = AFCDiscardBodyData(a1, v8, v181, v182, v183, v184, v185, v186);
      AFCSendStatus(a1, v8, v187);
      return 0;
    case 3:
      if (__AFCConnectionGetRequestPath(a1, (v8 + 40), &block, 0x400uLL))
      {
        AFCLog(5, "Read directory '%s'\n", v223, v224, v225, v226, v227, v228, &block);
        v235 = AFCDiscardBodyData(a1, v8, v229, v230, v231, v232, v233, v234);
        if (v235)
        {
          st_dev = v235;
          v249 = 0;
          goto LABEL_358;
        }

        v236 = opendir(&block);
        if (v236)
        {
          v237 = v236;
          v244 = readdir(v236);
          if (v244)
          {
            LODWORD(v245) = 0;
            do
            {
              AFCLog(5, "dir entry '%s' (%d)\n", v238, v239, v240, v241, v242, v243, v244 + 21);
              v245 = v245 + *(v244 + 18) + 1;
              v244 = readdir(v237);
            }

            while (v244);
            rewinddir(v237);
            v249 = malloc_type_malloc(v245, 0x1BD90B9CuLL);
            if (v249)
            {
              v250 = readdir(v237);
              if (v250)
              {
                v257 = v250;
                v258 = 0;
                v259 = v249;
                do
                {
                  AFCLog(5, "dir entry '%s' (%d)\n", v251, v252, v253, v254, v255, v256, v257->d_name);
                  if (v258 + v257->d_namlen > v245)
                  {
                    break;
                  }

                  strlcpy(v259, v257->d_name, (v245 - v258));
                  v260 = v257->d_namlen + 1;
                  v258 += v260;
                  v259 += v260;
                  v257 = readdir(v237);
                }

                while (v257);
                st_dev = 0;
                v244 = v258;
                goto LABEL_356;
              }

              st_dev = 0;
            }

            else
            {
              st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330499, v246, 1001, "malloc", v247, v248, v741);
            }

            v244 = 0;
          }

          else
          {
            rewinddir(v237);
            st_dev = 0;
            v249 = 0;
          }

LABEL_356:
          closedir(v237);
          goto LABEL_357;
        }

        AFCProcessServerPacket_cold_14(&v755);
        v249 = 0;
        v244 = 0;
        st_dev = v755.st_dev;
      }

      else
      {
        st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330498, v224, 980, "AFCConnectionGetRequestPath", v227, v228, p_block);
        v249 = 0;
        v244 = 0;
      }

LABEL_357:
      if (!st_dev)
      {
        AFCSendDataPacket(a1, v8, v249, v244, v621, v622, v623, v624);
LABEL_360:
        if (v249)
        {
          free(v249);
        }

        return st_dev;
      }

LABEL_358:
      AFCSendStatus(a1, v8, st_dev);
      goto LABEL_360;
    case 5:
    case 6:
    case 0xCLL:
      AFCProcessObsoletePacket(a1, v8, v22, v23, v24, v25, v26, v27);
      return 3892330511;
    case 7:
      *&v755.st_dev = 0;
      if (!__AFCConnectionGetRequestPath(a1, (v8 + 48), &block, 0x400uLL))
      {
        v600 = 3892330498;
        v601 = "AFCConnectionGetRequestPath";
        v602 = 1;
        v599 = 0xFFFFFFFFLL;
        v603 = 1295;
        goto LABEL_326;
      }

      v194 = AFCDiscardBodyData(a1, v8, v188, v189, v190, v191, v192, v193);
      if (v194)
      {
        goto LABEL_327;
      }

      v194 = AFCCheckForSpecialFile(&block, (v8 + 48));
      if (v194)
      {
        goto LABEL_327;
      }

      AFCLog(5, "Processing truncate '%s' %lld\n", v195, v196, v197, v198, v199, v200, &block);
      if (*(a1 + 1268) == 1)
      {
        v194 = __AFCCoordinateFileActivity(&block, 8, &v755);
        if (v194)
        {
          goto LABEL_327;
        }
      }

      if ((truncate(&block, *(v8 + 40)) & 0x80000000) == 0)
      {
        st_dev = 0;
        goto LABEL_328;
      }

      v599 = *__error();
      v600 = 3892330497;
      v601 = "truncate";
      v602 = 0;
      v603 = 1312;
      goto LABEL_326;
    case 8:
      *&v755.st_dev = 0;
      if (__AFCConnectionGetRequestPath(a1, (v8 + 40), &block, 0x400uLL))
      {
        AFCLog(5, "Processing remove path '%s'\n", v261, v189, v262, v263, v192, v193, &block);
        v194 = AFCDiscardBodyData(a1, v8, v264, v265, v266, v267, v268, v269);
        if (!v194)
        {
          if (*(a1 + 1268) != 1 || (v194 = __AFCCoordinateFileActivity(&block, 1, &v755), !v194))
          {
            v194 = RemovePath(&block);
          }
        }
      }

      else
      {
        v600 = 3892330498;
        v601 = "AFCConnectionGetRequestPath";
        v602 = 1;
        v599 = 0xFFFFFFFFLL;
        v603 = 1363;
LABEL_326:
        v194 = __AFCSetErrorResult_4(v602, v599, v600, v189, v603, v601, v192, v193, p_block);
      }

LABEL_327:
      st_dev = v194;
LABEL_328:
      v604 = *&v755.st_dev;
      if (*&v755.st_dev)
      {
        (*(*&v755.st_dev + 16))(*&v755.st_dev);
        _Block_release(v604);
      }

LABEL_330:
      v605 = AFCSendStatus(a1, v8, st_dev);
      if (st_dev)
      {
        return st_dev;
      }

      else
      {
        return v605;
      }

    case 9:
      memset(&valuePtr, 0, sizeof(valuePtr));
      *__str = 0;
      if (!__AFCConnectionGetRequestPath(a1, (v8 + 40), &v755, 0x400uLL))
      {
        v282 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330498, v271, 1561, "AFCConnectionGetRequestPath", v274, v275, p_block);
        goto LABEL_488;
      }

      AFCLog(5, "Processing make directory '%s'\n", v270, v271, v272, v273, v274, v275, &v755);
      v282 = AFCDiscardBodyData(a1, v8, v276, v277, v278, v279, v280, v281);
      if (v282)
      {
LABEL_488:
        v301 = v282;
        goto LABEL_422;
      }

      v289 = strlen((a1 + 224));
      v290 = *(&v755.st_dev + v289) == 47;
      if (*(a1 + 1268) == 1)
      {
        v291 = __AFCCoordinateFileActivity(&v755, 8, __str);
        if (v291)
        {
          goto LABEL_394;
        }
      }

      v292 = v289 + v290;
      v293 = -1;
      while (1)
      {
        if (*(&v755.st_dev + v292))
        {
          if (*(&v755.st_dev + v292) != 47)
          {
            goto LABEL_146;
          }

          v294 = 0;
        }

        else
        {
          v294 = 1;
        }

        *(&v755.st_dev + v292) = 0;
        AFCLog(5, "Make intermediate dir '%s'\n", v283, v284, v285, v286, v287, v288, &v755);
        if (mkdir(&v755, 0x1EDu) < 0)
        {
          break;
        }

        if ((*(a1 + 1269) & 1) == 0)
        {
          v295 = open(&v755, 1048832);
          if (v295 < 0)
          {
            v661 = *__error();
            v662 = __error();
            strerror(*v662);
            v291 = __AFCSetErrorResult_4(1, v661, 3892330519, v663, 1607, "Failed to open %s : %s", v664, v665, &v755);
LABEL_394:
            v301 = v291;
            goto LABEL_422;
          }

          v293 = v295;
          if (fcntl(v295, 64, 4))
          {
            v296 = *__error();
            __error();
            v297 = __error();
            strerror(*v297);
            v301 = __AFCSetErrorResult_4(1, v296, 3892330519, v298, 1612, "Failed to setclass(%d) on directory %s: (%d) %s", v299, v300, 4);
            if (*__error() != 45)
            {
              goto LABEL_421;
            }

            memset(&block, 0, 512);
            if (fstatfs(v293, &block) < 0)
            {
              v692 = *__error();
              v693 = __error();
              strerror(*v693);
              v301 = __AFCSetErrorResult_4(1, v692, 3892330519, v694, 1621, "Failed fstatfs on directory %s: %s", v695, v696, &v755);
              goto LABEL_421;
            }

            if ((block.f_flags & 0x80) != 0)
            {
              AFCLog(3, "The path %s supports content protection, so this is an error", v302, v303, v304, v305, v306, v307, &v755);
              goto LABEL_421;
            }

            AFCLog(3, "The path %s doesn't allow content protection, so this is not an error", v302, v303, v304, v305, v306, v307, &v755);
          }
        }

LABEL_144:
        if (v294)
        {
          v301 = 0;
          goto LABEL_319;
        }

        *(&v755.st_dev + v292) = 47;
LABEL_146:
        ++v292;
      }

      if (*__error() != 21 && *__error() != 17)
      {
        v687 = *__error();
        v688 = 3892330497;
        v689 = "mkdir %p";
        v742 = &v755;
        v690 = 1598;
        goto LABEL_417;
      }

      if (stat(&v755, &valuePtr))
      {
        v709 = *__error();
        v691 = __AFCSetErrorResult_4(1, v709, 3892330497, v710, 1592, "stat %p", v711, v712, &v755);
        goto LABEL_418;
      }

      if ((valuePtr.st_mode & 0xF000) == 0x4000)
      {
        goto LABEL_144;
      }

      v688 = 3892330512;
      v689 = &v755;
      v687 = 0xFFFFFFFFLL;
      v690 = 1596;
LABEL_417:
      v691 = __AFCSetErrorResult_4(1, v687, v688, v284, v690, v689, v287, v288, v742);
LABEL_418:
      v301 = v691;
LABEL_319:
      if (v293 < 0)
      {
        goto LABEL_422;
      }

LABEL_421:
      close(v293);
LABEL_422:
      v697 = *__str;
      if (*__str)
      {
        (*(*__str + 16))(*__str);
        _Block_release(v697);
      }

      v698 = AFCSendStatus(a1, v8, v301);
      if (v301)
      {
        return v301;
      }

      else
      {
        return v698;
      }

    case 0xALL:
      memset(&valuePtr, 0, sizeof(valuePtr));
      if (__AFCConnectionGetRequestPath(a1, (v8 + 40), &block, 0x400uLL))
      {
        AFCLog(5, "AFCProcessGetFileInfo(%s)\n", v465, v466, v467, v468, v469, v470, &block);
        if (__AFCPathDepthCheck((v8 + 40)))
        {
          v41 = AFCDiscardBodyData(a1, v8, v471, v466, v472, v473, v469, v470);
          if (v41)
          {
            goto LABEL_468;
          }

          AFCLog(5, "lstat(%s)", v474, v475, v476, v477, v478, v479, &block);
          Mutable = CFDataCreateMutable(0, 0);
          if (Mutable)
          {
            if (!lstat(&block, &valuePtr))
            {
              CFDataAppendBytes(Mutable, "st_size", 8);
              snprintf(__str, 0x80uLL, "%lld", valuePtr.st_size);
              v483 = strlen(__str);
              CFDataAppendBytes(Mutable, __str, v483 + 1);
              CFDataAppendBytes(Mutable, "st_blocks", 10);
              snprintf(__str, 0x80uLL, "%lld", valuePtr.st_blocks);
              v484 = strlen(__str);
              CFDataAppendBytes(Mutable, __str, v484 + 1);
              CFDataAppendBytes(Mutable, "st_nlink", 9);
              snprintf(__str, 0x80uLL, "%d", valuePtr.st_nlink);
              v485 = strlen(__str);
              CFDataAppendBytes(Mutable, __str, v485 + 1);
              CFDataAppendBytes(Mutable, "st_ifmt", 8);
              v486 = (valuePtr.st_mode + 24576) >> 12;
              v487 = "S_IFREG";
              if (v486 > 7)
              {
                v488 = "S_IFCHR";
                if (v486 == 10)
                {
                  v487 = "S_IFDIR";
                }

                if (v486 == 12)
                {
                  v487 = "S_IFBLK";
                }

                v489 = v486 == 8;
              }

              else
              {
                if (!((valuePtr.st_mode + 24576) >> 12))
                {
                  CFDataAppendBytes(Mutable, "S_IFLNK", 8);
                  v666 = readlink(&block, &v755, 0x400uLL);
                  if (v666 < 0)
                  {
                    goto LABEL_317;
                  }

                  *(&v755.st_dev + v666) = 0;
                  CFDataAppendBytes(Mutable, "LinkTarget", 11);
                  v667 = strlen(&v755);
                  v589 = &v755;
                  v587 = v667 + 1;
                  v588 = Mutable;
LABEL_316:
                  CFDataAppendBytes(v588, v589, v587);
LABEL_317:
                  CFDataAppendBytes(Mutable, "st_mtime", 9);
                  snprintf(__str, 0x80uLL, "%llu", valuePtr.st_mtimespec.tv_nsec + 1000000000 * valuePtr.st_mtimespec.tv_sec);
                  v590 = strlen(__str);
                  CFDataAppendBytes(Mutable, __str, v590 + 1);
                  CFDataAppendBytes(Mutable, "st_birthtime", 13);
                  snprintf(__str, 0x80uLL, "%llu", valuePtr.st_birthtimespec.tv_nsec + 1000000000 * valuePtr.st_birthtimespec.tv_sec);
                  v591 = strlen(__str);
                  CFDataAppendBytes(Mutable, __str, v591 + 1);
                  goto LABEL_406;
                }

                v488 = "S_IFSOCK";
                if (v486 == 7)
                {
                  v487 = "S_IFIFO";
                }

                v489 = v486 == 2;
              }

              if (v489)
              {
                v586 = v488;
              }

              else
              {
                v586 = v487;
              }

              v587 = strlen(v586) + 1;
              v588 = Mutable;
              v589 = v586;
              goto LABEL_316;
            }

            AFCProcessServerPacket_cold_15(&v755);
            st_dev = v755.st_dev;
          }

          else
          {
            st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330499, v480, 1070, "CFDataCreateMutable", v481, v482, v738);
          }

LABEL_404:
          if (!st_dev)
          {
LABEL_406:
            AFCLog(5, "Sending data buffer\n", v592, v593, v594, v595, v596, v597, v738);
            BytePtr = CFDataGetBytePtr(Mutable);
            Length = CFDataGetLength(Mutable);
            AFCSendDataPacket(a1, v8, BytePtr, Length, v677, v678, v679, v680);
            st_dev = 0;
            goto LABEL_407;
          }

LABEL_405:
          AFCSendStatus(a1, v8, st_dev);
LABEL_407:
          if (!Mutable)
          {
            return st_dev;
          }

          v518 = Mutable;
LABEL_409:
          CFRelease(v518);
          return st_dev;
        }

        v725 = "Request path is outside document root";
        v726 = 0;
        v724 = 3892330503;
        v727 = 1062;
      }

      else
      {
        v724 = 3892330498;
        v725 = "AFCConnectionGetRequestPath";
        v726 = 1;
        v727 = 1054;
      }

      st_dev = __AFCSetErrorResult_4(v726, 0xFFFFFFFFLL, v724, v466, v727, v725, v469, v470, p_block);
      Mutable = 0;
      goto LABEL_404;
    case 0xBLL:
      AFCLog(5, "Processing device info packet\n", v22, v23, v24, v25, v26, v27, p_block);
      v349 = AFCDiscardBodyData(a1, v8, v343, v344, v345, v346, v347, v348);
      if (v349)
      {
        st_dev = v349;
        v353 = 0;
      }

      else
      {
        v353 = CFDataCreateMutable(0, 0);
        if (v353)
        {
          v354 = fopen("/Library/Preferences/SystemConfiguration/com.apple.afc.DeviceInfo.plist", "r");
          if (v354)
          {
            v361 = v354;
            AFCLog(5, "Found info plist file.\n", v355, v356, v357, v358, v359, v360, v743);
            v362 = feof(v361);
            AFCLog(5, "feof %d\n", v363, v364, v365, v366, v367, v368, v362);
            if (feof(v361))
            {
              goto LABEL_411;
            }

            v375 = "got line: '%s'\n";
            v376 = MEMORY[0x29EDCA600];
            theData = v353;
            while (1)
            {
              v377 = fgets(&block, 128, v361);
              if (!v377)
              {
                AFCLog(5, "no more lines\n", v378, v379, v380, v381, v382, v383, v744);
LABEL_411:
                AFCLog(5, "Sending data buffer\n", v369, v370, v371, v372, v373, v374, v744);
                v681 = CFDataGetBytePtr(v353);
                v682 = CFDataGetLength(v353);
                AFCSendDataPacket(a1, v8, v681, v682, v683, v684, v685, v686);
                st_dev = 0;
LABEL_412:
                if (v353)
                {
                  CFRelease(v353);
                }

                if (v361)
                {
                  fclose(v361);
                }

                return st_dev;
              }

              v384 = v377;
              AFCLog(5, v375, v378, v379, v380, v381, v382, v383, v377);
              v391 = *v384;
              if (!*v384)
              {
                goto LABEL_180;
              }

              if (v391 != 35)
              {
                break;
              }

              AFCLog(5, "Comment line\n", v385, v386, v387, v388, v389, v390, v744);
LABEL_205:
              if (feof(v361))
              {
                goto LABEL_411;
              }
            }

            do
            {
              if ((v391 & 0x80) != 0)
              {
                if (!__maskrune(v391, 0x4000uLL))
                {
                  break;
                }
              }

              else if ((*(v376 + 4 * v391 + 60) & 0x4000) == 0)
              {
                break;
              }

              v392 = *++v384;
              LOBYTE(v391) = v392;
            }

            while (v392);
LABEL_180:
            for (i = v384; ; ++i)
            {
              if (!*i)
              {
                goto LABEL_205;
              }

              if (*i == 61)
              {
                break;
              }
            }

            v394 = i;
            while (1)
            {
              *v394-- = 0;
              if (v394 <= &block)
              {
                break;
              }

              v395 = *v394;
              if ((v395 & 0x80000000) != 0)
              {
                if (!__maskrune(v395, 0x4000uLL))
                {
                  break;
                }
              }

              else if ((*(v376 + 4 * v395 + 60) & 0x4000) == 0)
              {
                break;
              }
            }

            v396 = v375;
            v397 = v8;
            v398 = a1;
            AFCLog(5, "Key: '%s'\n", v385, v386, v387, v388, v389, v390, v384);
            while (1)
            {
              v405 = i;
              v407 = *++i;
              v406 = v407;
              if (!v407)
              {
                break;
              }

              if ((v406 & 0x80000000) != 0)
              {
                if (!__maskrune(v406, 0x4000uLL))
                {
                  break;
                }
              }

              else if ((*(v376 + 4 * v406 + 60) & 0x4000) == 0)
              {
                break;
              }
            }

            v408 = 0;
            v409 = v405;
            v410 = 2;
            do
            {
              v411 = v410;
              v412 = v409;
              v413 = v405[++v408];
              ++v410;
              ++v409;
            }

            while (v413);
            a1 = v398;
            v8 = v397;
            v375 = v396;
            if (v408 >= 3)
            {
              do
              {
                v414 = *v412;
                if ((v414 & 0x80000000) != 0)
                {
                  if (!__maskrune(v414, 0x4000uLL))
                  {
                    break;
                  }
                }

                else if ((*(v376 + 4 * v414 + 60) & 0x4000) == 0)
                {
                  break;
                }

                *v412-- = 0;
                --v411;
              }

              while (v411 > 3);
            }

            AFCLog(5, "Value: '%s'\n", v399, v400, v401, v402, v403, v404, i);
            v415 = strlen(v384);
            v353 = theData;
            CFDataAppendBytes(theData, v384, v415 + 1);
            v416 = strlen(i);
            CFDataAppendBytes(theData, i, v416 + 1);
            goto LABEL_205;
          }

          AFCLog(5, "No file found\n", v355, v356, v357, v358, v359, v360, v743);
          appended = AFCDeviceAppendDeviceInfo(a1, v353);
        }

        else
        {
          appended = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330499, v350, 1162, "CFDataCreateMutable", v351, v352, v743);
        }

        st_dev = appended;
        if (!appended)
        {
          v361 = 0;
          goto LABEL_411;
        }
      }

      AFCSendStatus(a1, v8, st_dev);
      v361 = 0;
      goto LABEL_412;
    case 0xDLL:
      Context = AFCConnectionGetContext(a1);
      v749 = 0;
      memset(&valuePtr, 0, sizeof(valuePtr));
      if (__AFCConnectionGetRequestPath(a1, (v8 + 48), &block, 0x400uLL))
      {
        AFCLog(5, "Processing FileRefOpen packet\n", v132, v133, v134, v135, v136, v137, p_block);
        if (Context)
        {
          v141 = AFCDiscardBodyData(a1, v8, v138, v133, v139, v140, v136, v137);
          if (v141)
          {
            st_dev = v141;
            LODWORD(v150) = 0;
            goto LABEL_440;
          }

          if (gAFCMaxOpenFileCount)
          {
            v148 = 0;
            v149 = Context + 80;
            while (*v149 != -1)
            {
              ++v148;
              v149 += 40;
              if (gAFCMaxOpenFileCount == v148)
              {
                goto LABEL_67;
              }
            }

            if ((v148 & 0x8000000000000000) == 0)
            {
              v608 = *(v8 + 40);
              AFCLog(5, "AFCProcessFileRefOpen(%s) mode %d\n", v142, v143, v144, v145, v146, v147, &block);
              if ((v608 - 1) >= 7)
              {
                v625 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330503, v609, 2027, "Invalid file mode %d", v610, v611, v608);
                LODWORD(v150) = 0;
                if (v625)
                {
                  st_dev = v625;
                  goto LABEL_440;
                }

                v612 = a1;
              }

              else
              {
                v612 = a1;
                LODWORD(v150) = dword_2983CB660[v608 - 1];
              }

              if (!gAllowSpecialFiles)
              {
                LODWORD(v150) = v150 | 0x100;
              }

              v626 = AFCCheckForSpecialFile(&block, (v8 + 48));
              if (v626)
              {
                st_dev = v626;
                LODWORD(v150) = 0;
                goto LABEL_458;
              }

              if (v612[1268] == 1 && (!v150 ? (v627 = 1) : (v627 = 8), v628 = __AFCCoordinateFileActivity(&block, v627, &v749), v628))
              {
                st_dev = v628;
                LODWORD(v150) = 0;
              }

              else
              {
                if (v612[1269] == 1)
                {
                  v629 = open(&block, v150, 420);
                }

                else
                {
                  v629 = open_dprotected_np(&block, v150, 4, 0, 420, v608);
                }

                v150 = v629;
                if (v629 == -1)
                {
                  AFCProcessServerPacket_cold_8(&v755);
                  st_dev = v755.st_dev;
                  LODWORD(v150) = -1;
                  goto LABEL_458;
                }

                if ((v629 & 0x80000000) != 0)
                {
                  st_dev = 3892330503;
                  AFCProcessServerPacket_cold_13(v629);
                }

                else
                {
                  if (gAllowSpecialFiles)
                  {
LABEL_381:
                    if (fstat(v150, &valuePtr) != -1)
                    {
                      a1 = v612;
                      if (valuePtr.st_nlink != 1)
                      {
                        v668 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 1, v631, 2067, "Failed open operation as there are additional hard links (%d) to the file being opened.", v632, v633, valuePtr.st_nlink);
LABEL_438:
                        st_dev = v668;
                        goto LABEL_439;
                      }

                      if (fcntl(v150, 50, &v755) != -1)
                      {
                        if (__AFCHasPrefix(&v755, v612 + 224))
                        {
                          AFCLog(5, "Setting file descriptor index %d to %d\n", v634, v635, v636, v637, v638, v639, v148);
                          *v149 = v150;
                          *(v149 + 8) = 0;
                          if (fcntl(v150, 76, 1, v150) < 0)
                          {
                            v640 = __error();
                            AFCLog(5, "F_SINGLE_WRITER failed (%d)!\n", v641, v642, v643, v644, v645, v646, *v640);
                          }

                          if (fcntl(v150, 48, 1) < 0)
                          {
                            v647 = __error();
                            AFCLog(5, "F_NOCACHE failed (%d)!\n", v648, v649, v650, v651, v652, v653, *v647);
                          }

                          if (v608 == 7 && fcntl(v150, 68, 1) < 0)
                          {
                            v654 = __error();
                            AFCLog(5, "F_SETSTATICCONTENT failed (%d)!\n", v655, v656, v657, v658, v659, v660, *v654);
                          }

                          *(v149 + 16) = 0;
                          goto LABEL_445;
                        }

                        v668 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 1, v635, 2078, "Path obtained by fcntl (%s) doesn't have the correct prefix: %s.", v638, v639, &v755);
                        goto LABEL_438;
                      }

                      AFCProcessServerPacket_cold_9(__str);
                      st_dev = *__str;
LABEL_439:
                      if (!st_dev)
                      {
LABEL_445:
                        v751 = 0u;
                        v752 = 0u;
                        *__str = 0u;
                        AFCLog(5, "Success, returning ref %d = fd %d\n", v142, v143, v144, v145, v146, v147, v148);
                        AFCHeaderInit(__str, 14, 48, 0, v8);
                        *(&v752 + 1) = v148 + 1;
                        *(Context + 40 * v148 + 112) = v749;
                        return AFCSendHeader(a1, __str);
                      }

LABEL_440:
                      AFCLog(5, "sending status %d\n", v142, v143, v144, v145, v146, v147, st_dev);
                      AFCSendStatus(a1, v8, st_dev);
                      v701 = v749;
                      if (v749)
                      {
                        v749[2](v749);
                        _Block_release(v701);
                      }

                      if (v150 != -1)
                      {
                        close(v150);
                      }

                      return st_dev;
                    }

                    AFCProcessServerPacket_cold_10(&v755);
                    st_dev = v755.st_dev;
LABEL_458:
                    a1 = v612;
                    goto LABEL_439;
                  }

                  memset(&v755, 0, sizeof(v755));
                  if (fstat(v629, &v755))
                  {
                    AFCProcessServerPacket_cold_11();
                    st_dev = 23;
                  }

                  else
                  {
                    v630 = v755.st_mode & 0xF000;
                    if (v630 == 0x4000 || v630 == 0x8000)
                    {
                      goto LABEL_381;
                    }

                    AFCProcessServerPacket_cold_12(v150);
                    st_dev = 3892330506;
                  }
                }
              }

              a1 = v612;
              goto LABEL_440;
            }
          }

          else
          {
LABEL_67:
            v148 = -1;
          }

          st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330499, v143, 2000, "No file slots", v146, v147, p_block);
          LODWORD(v150) = 0;
          goto LABEL_439;
        }

        v715 = 3892330499;
        v716 = "No server context";
        v717 = 1994;
      }

      else
      {
        v715 = 3892330498;
        v716 = "AFCConnectionGetRequestPath";
        v717 = 1990;
      }

      st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, v715, v133, v717, v716, v136, v137, p_block);
      LODWORD(v150) = 0;
      v148 = 0;
      goto LABEL_439;
    case 0xFLL:
      v702 = a1;
      v703 = v8;
      v704 = 0;
      goto LABEL_453;
    case 0x10:
      v103 = a1;
      v104 = v8;
      v105 = 0;
      goto LABEL_238;
    case 0x11:
      *&v755.st_dev = 0;
      v755.st_ino = &v755;
      *&v755.st_uid = 0x2000000000;
      v755.st_rdev = 0;
      v151 = AFCConnectionGetContext(a1);
      if (v151)
      {
        v158 = v151;
        v159 = AFCDiscardBodyData(a1, v8, v152, v153, v154, v155, v156, v157);
        *(v755.st_ino + 24) = v159;
        if (v159)
        {
          goto LABEL_465;
        }

        v166 = (*(v8 + 40) - 1);
        AFCLog(5, "Processing FileRefSeek ref %d offset %qd whence %d\n", v160, v161, v162, v163, v164, v165, v166);
        if (gAFCMaxOpenFileCount > v166)
        {
          v170 = v158 + 40 * v166;
          v173 = *(v170 + 80);
          v172 = v170 + 80;
          v171 = v173;
          if (v173 != -1)
          {
            v174 = __AFCAllowedToOperateOnFile(v171, (a1 + 224), v167, v153, v168, v169, v156, v157);
            st_ino = v755.st_ino;
            *(v755.st_ino + 24) = v174;
            if (v174)
            {
              st_dev = 1;
              goto LABEL_527;
            }

            *(st_ino + 24) = 0;
            v179 = *(v8 + 48);
            if (v179 < 3)
            {
LABEL_77:
              v180 = *(v172 + 24);
              *&block.f_bsize = MEMORY[0x29EDCA5F8];
              block.f_blocks = 0x40000000;
              block.f_bfree = __AFCProcessFileRefSeekPacket_block_invoke;
              block.f_bavail = &unk_29EE96648;
              block.f_ffree = v158;
              block.f_fsid = v8;
              block.f_owner = v166;
              block.f_type = v179;
              block.f_files = &v755;
              dispatch_sync(v180, &block);
              goto LABEL_213;
            }

            v159 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330503, v175, 2498, "Invalid whence argument", v176, v177, p_block);
            *(v755.st_ino + 24) = v159;
            if (!v159)
            {
              LODWORD(v179) = 0;
              goto LABEL_77;
            }

LABEL_465:
            st_dev = v159;
LABEL_527:
            AFCSendStatus(a1, v8, st_dev);
LABEL_217:
            *(v755.st_ino + 24) = st_dev;
LABEL_337:
            p_valuePtr = &v755;
LABEL_338:
            _Block_object_dispose(p_valuePtr, 8);
            return st_dev;
          }
        }

        v719 = "Invalid file ref";
        v718 = 3892330503;
        v720 = 2480;
      }

      else
      {
        v718 = 3892330499;
        v719 = "No server context";
        v720 = 2471;
      }

      st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, v718, v153, v720, v719, v156, v157, p_block);
      *(v755.st_ino + 24) = st_dev;
LABEL_214:
      v434 = AFCSendStatus(a1, v8, st_dev);
      if (st_dev)
      {
        st_dev = st_dev;
      }

      else
      {
        st_dev = v434;
      }

      goto LABEL_217;
    case 0x12:
      *&valuePtr.st_dev = 0;
      valuePtr.st_ino = &valuePtr;
      *&valuePtr.st_uid = 0x2000000000;
      valuePtr.st_rdev = -402636799;
      v519 = AFCConnectionGetContext(a1);
      *__str = 0;
      *&__str[8] = __str;
      v751 = 0x2000000000uLL;
      AFCLog(5, "Processing FileRefTell packet\n", v520, v521, v522, v523, v524, v525, p_block);
      if (v519)
      {
        v532 = AFCDiscardBodyData(a1, v8, v526, v527, v528, v529, v530, v531);
        *(valuePtr.st_ino + 24) = v532;
        if (v532)
        {
          st_dev = v532;
          goto LABEL_261;
        }

        v536 = (*(v8 + 40) - 1);
        if (gAFCMaxOpenFileCount > v536)
        {
          v537 = v519 + 40 * v536;
          v540 = *(v537 + 80);
          v539 = v537 + 80;
          v538 = v540;
          if (v540 != -1)
          {
            v541 = __AFCAllowedToOperateOnFile(v538, (a1 + 224), v533, v527, v534, v535, v530, v531);
            *(valuePtr.st_ino + 24) = v541;
            if (v541)
            {
              st_dev = 1;
              goto LABEL_261;
            }

            v542 = *(v539 + 24);
            *&block.f_bsize = MEMORY[0x29EDCA5F8];
            block.f_blocks = 0x40000000;
            block.f_bfree = __AFCProcessFileRefTellPacket_block_invoke;
            block.f_bavail = &unk_29EE96670;
            block.f_owner = v536;
            block.f_files = __str;
            block.f_ffree = &valuePtr;
            block.f_fsid = v519;
            dispatch_sync(v542, &block);
            st_dev = *(valuePtr.st_ino + 24);
            if (st_dev)
            {
LABEL_261:
              AFCSendStatus(a1, v8, st_dev);
              *(valuePtr.st_ino + 24) = st_dev;
              goto LABEL_516;
            }

LABEL_515:
            memset(&v755, 0, 48);
            AFCHeaderInit(&v755, 19, 48, 0, v8);
            v755.st_atimespec.tv_nsec = *(*&__str[8] + 24);
            v731 = AFCSendHeader(a1, &v755);
            *(valuePtr.st_ino + 24) = v731;
            st_dev = v731;
LABEL_516:
            _Block_object_dispose(__str, 8);
            p_valuePtr = &valuePtr;
            goto LABEL_338;
          }
        }

        v729 = "Invalid file ref";
        v728 = 3892330503;
        v730 = 2540;
      }

      else
      {
        v728 = 3892330499;
        v729 = "No server context";
        v730 = 2533;
      }

      st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, v728, v527, v730, v729, v530, v531, v745);
      *(valuePtr.st_ino + 24) = st_dev;
      if (st_dev)
      {
        goto LABEL_261;
      }

      goto LABEL_515;
    case 0x14:
      *&v755.st_dev = 0;
      v755.st_ino = &v755;
      *&v755.st_uid = 0x2000000000;
      v755.st_rdev = 0;
      v417 = AFCConnectionGetContext(a1);
      if (v417)
      {
        v424 = v417;
        v425 = AFCDiscardBodyData(a1, v8, v418, v419, v420, v421, v422, v423);
        *(v755.st_ino + 24) = v425;
        if (v425)
        {
          goto LABEL_212;
        }

        v432 = (*(v8 + 40) - 1);
        AFCLog(5, "Processing FileRefClose ref %d\n", v426, v427, v428, v429, v430, v431, v432);
        if (gAFCMaxOpenFileCount > v432 && *(v424 + 80 + 40 * v432) != -1)
        {
          v433 = *(v424 + 80 + 40 * v432 + 24);
          *&block.f_bsize = MEMORY[0x29EDCA5F8];
          block.f_blocks = 0x40000000;
          block.f_bfree = __AFCProcessFileRefClosePacket_block_invoke;
          block.f_bavail = &unk_29EE96698;
          block.f_fsid.val[0] = v432;
          block.f_files = &v755;
          block.f_ffree = v424;
          dispatch_sync(v433, &block);
          v425 = *(v755.st_ino + 24);
          goto LABEL_212;
        }

        v722 = "Invalid file ref";
        v721 = 3892330503;
        v723 = 2590;
      }

      else
      {
        v721 = 3892330499;
        v722 = "No server context";
        v723 = 2581;
      }

      v425 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, v721, v419, v723, v722, v422, v423, p_block);
      *(v755.st_ino + 24) = v425;
LABEL_212:
      AFCLog(5, "FileRefClose returns %d (deferred %d)\n", v426, v427, v428, v429, v430, v431, v425);
LABEL_213:
      st_dev = *(v755.st_ino + 24);
      goto LABEL_214;
    case 0x15:
      v435 = AFCConnectionGetContext(a1);
      *&v755.st_dev = 0;
      v755.st_ino = &v755;
      *&v755.st_uid = 0x2000000000;
      v755.st_rdev = 0;
      if (v435)
      {
        v442 = v435;
        v443 = AFCDiscardBodyData(a1, v8, v436, v437, v438, v439, v440, v441);
        if (v443)
        {
LABEL_226:
          v464 = v443;
          goto LABEL_334;
        }

        v450 = (*(v8 + 40) - 1);
        AFCLog(5, "Processing FileRefSetFileSize (ref %d, size %d)\n", v444, v445, v446, v447, v448, v449, v450);
        if (gAFCMaxOpenFileCount <= v450 || (v454 = v442 + 40 * v450, v457 = *(v454 + 80), v456 = v454 + 80, v455 = v457, v457 == -1))
        {
          v461 = "Invalid file ref";
          v462 = 1;
          v459 = 0xFFFFFFFFLL;
          v460 = 3892330503;
          v463 = 2978;
          goto LABEL_225;
        }

        if (__AFCAllowedToOperateOnFile(v455, (a1 + 224), v451, v437, v452, v453, v440, v441))
        {
          v464 = 1;
        }

        else
        {
          v458 = *(v456 + 24);
          *&block.f_bsize = MEMORY[0x29EDCA5F8];
          block.f_blocks = 0x40000000;
          block.f_bfree = __AFCProcessFileRefSetFileSizePacket_block_invoke;
          block.f_bavail = &unk_29EE966C0;
          block.f_files = &v755;
          block.f_ffree = v442;
          block.f_owner = v450;
          block.f_fsid = v8;
          dispatch_sync(v458, &block);
          if (*(v755.st_ino + 24))
          {
            v459 = *__error();
            v460 = 3892330501;
            v461 = "ftruncate";
            v462 = 0;
            v463 = 2991;
LABEL_225:
            v443 = __AFCSetErrorResult_4(v462, v459, v460, v437, v463, v461, v440, v441, p_block);
            goto LABEL_226;
          }

          v464 = 0;
        }

LABEL_334:
        AFCLog(5, "FileRefSetFileSize returns %d\n", v444, v445, v446, v447, v448, v449, v464);
        v606 = AFCSendStatus(a1, v8, v464);
        if (v464)
        {
          st_dev = v464;
        }

        else
        {
          st_dev = v606;
        }

        goto LABEL_337;
      }

      v460 = 3892330499;
      v461 = "No server context";
      v462 = 1;
      v459 = 0xFFFFFFFFLL;
      v463 = 2969;
      goto LABEL_225;
    case 0x16:
      *&block.f_bsize = kAFCConnectionOptionExtendedStatusKey[0];
      block.f_blocks = kAFCConnectionServerVersionKey;
      v755.st_ino = 0;
      *&v755.st_dev = 0;
      valuePtr.st_dev = *(a1 + 128) & 1;
      v503 = CFStringCreateWithCString(0, "@(#)PROGRAM:afc  PROJECT:afc-279\n", 0x8000100u);
      v504 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      v505 = v504;
      if (v503 && v504)
      {
        *&v755.st_dev = v504;
        v755.st_ino = v503;
        v506 = CFDictionaryCreate(0, &block, &v755, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        v507 = v506;
        if (v506 && (v508 = __AFCCreateAFCDataWithDictionary(v506)) != 0)
        {
          v509 = v508;
          v510 = CFDataGetBytePtr(v508);
          v511 = CFDataGetLength(v509);
          st_dev = AFCSendDataPacket(a1, v8, v510, v511, v512, v513, v514, v515);
        }

        else
        {
          st_dev = AFCSendStatus(a1, v8, 0);
          v509 = 0;
        }
      }

      else
      {
        st_dev = AFCSendStatus(a1, v8, 0);
        v509 = 0;
        v507 = 0;
        v516 = 0;
        v517 = 0;
        if (!v503)
        {
LABEL_249:
          if (v505)
          {
            CFRelease(v505);
          }

          if (v517)
          {
            CFRelease(v517);
          }

          if (!v516)
          {
            return st_dev;
          }

          v518 = v516;
          goto LABEL_409;
        }
      }

      CFRelease(v503);
      v516 = v509;
      v517 = v507;
      goto LABEL_249;
    case 0x17:
      *&block.f_bsize = 0;
      *&v755.st_dev = 0;
      *&valuePtr.st_dev = 0;
      v543 = AFCReadPacketBody(a1, v8, &v755, &valuePtr, v24, v25, v26, v27, p_block);
      if (v543 || (v543 = __AFCCreateDictionaryOrArrayFromData(0, *&v755.st_dev, *&valuePtr.st_dev, 1, &block), v543))
      {
        v556 = v543;
        v549 = 0;
      }

      else if (*&block.f_bsize && (Count = CFDictionaryGetCount(*&block.f_bsize), Count >= 1))
      {
        v545 = Count;
        v549 = MEMORY[0x29C289090](0, 16 * Count, 0x80040B8603338, 0);
        if (v549)
        {
          CFDictionaryGetKeysAndValues(*&block.f_bsize, v549, &v549[v545]);
          for (j = 0; j != v545; ++j)
          {
            v551 = v549[j];
            v552 = *(&v549[v545] + j);
            if (CFStringCompare(v551, kAFCConnectionOptionServerDebugLevelKey, 0))
            {
              if (CFStringCompare(v551, kAFCConnectionOptionExtendedStatusKey[0], 0))
              {
                if (CFStringCompare(v551, kAFCConnectionOptionTrailingJunkKey[0], 0) == kCFCompareEqualTo)
                {
                  *(a1 + 128) = *(a1 + 128) & 0xFFFF7FFF | ((CFStringGetIntValue(v552) != 0) << 15);
                }
              }

              else
              {
                IntValue = CFStringGetIntValue(v552);
                v555 = *(a1 + 128) & 0xFFFFFFFE;
                if (IntValue)
                {
                  ++v555;
                }

                *(a1 + 128) = v555;
              }
            }

            else
            {
              v553 = CFStringGetIntValue(v552);
              AFCSetLogLevel(v553);
            }
          }

          v556 = 0;
        }

        else
        {
          v556 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330499, v546, 3024, "malloc", v547, v548, v746);
        }
      }

      else
      {
        v549 = 0;
        v556 = 0;
      }

      if (*&v755.st_dev)
      {
        v557 = CFGetAllocator(a1);
        CFAllocatorDeallocate(v557, *&v755.st_dev);
      }

      if (v549)
      {
        CFAllocatorDeallocate(0, v549);
      }

      if (*&block.f_bsize)
      {
        CFRelease(*&block.f_bsize);
      }

      v77 = a1;
      v78 = v8;
      v79 = v556;
      return AFCSendStatus(v77, v78, v79);
    case 0x18:
      *&valuePtr.st_dev = 0;
      v308 = MEMORY[0x29C289090](0, 1024, 3692196648, 0);
      if (!v308)
      {
        AFCProcessServerPacket_cold_7();
        return v755.st_dev;
      }

      v309 = v308;
      v310 = v8 + 40;
      v311 = strlen((v8 + 40));
      if (!__AFCConnectionGetRequestPath(a1, (v8 + 40), &block, 0x400uLL))
      {
        v340 = 3892330498;
        v338 = "AFCConnectionGetRequestPath";
        v339 = 1;
        v341 = 1470;
        goto LABEL_164;
      }

      if (!__AFCConnectionGetRequestPath(a1, (v310 + v311 + 1), v309, 0x400uLL))
      {
        v340 = 3892330498;
        v338 = "AFCConnectionGetRequestPath";
        v339 = 1;
        v341 = 1474;
        goto LABEL_164;
      }

      AFCLog(5, "Processing rename path '%s'->'%s'\n", v315, v312, v316, v317, v313, v314, &block);
      v324 = AFCDiscardBodyData(a1, v8, v318, v319, v320, v321, v322, v323);
      if (v324)
      {
        goto LABEL_165;
      }

      if (__AFCPathContainsDots(&block))
      {
        v324 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330503, v325, 1492, "Request path cannot contain dots : %s", v326, v327, &block);
        goto LABEL_165;
      }

      if (__AFCPathContainsDots(v309))
      {
        v324 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330503, v328, 1496, "Dest path cannot contain dots : %s", v329, v330, v309);
        goto LABEL_165;
      }

      if ((__AFCPathDepthCheck((v8 + 40)) & 1) == 0)
      {
        v338 = "Request path is outside document root";
        v339 = 0;
        v340 = 3892330503;
        v341 = 1501;
        goto LABEL_164;
      }

      if ((__AFCPathDepthCheck((v310 + v311 + 1)) & 1) == 0)
      {
        v338 = "Request path is outside document root";
        v339 = 0;
        v340 = 3892330503;
        v341 = 1506;
        goto LABEL_164;
      }

      *&v755.st_dev = &block;
      v755.st_ino = 0;
      v331 = fts_open(&v755, 20, 0);
      if (!v331)
      {
        goto LABEL_163;
      }

      v332 = v331;
      while (1)
      {
        v333 = fts_read(v332);
        if (!v333)
        {
          break;
        }

        fts_info = v333->fts_info;
        v335 = fts_info > 0xD;
        v336 = (1 << fts_info) & 0x3080;
        if (!v335 && v336 != 0)
        {
          fts_close(v332);
LABEL_163:
          v338 = "%s contains symlinks and cannot be renamed to %s";
          p_block = &block;
          v339 = 0;
          v340 = 3892330503;
          v341 = 1511;
LABEL_164:
          v324 = __AFCSetErrorResult_4(v339, 0xFFFFFFFFLL, v340, v312, v341, v338, v313, v314, p_block);
LABEL_165:
          v342 = v324;
          goto LABEL_431;
        }
      }

      fts_close(v332);
      if (*(a1 + 1268) == 1)
      {
        v324 = __AFCCoordinateFileActivity(&block, 2, &valuePtr);
        if (v324)
        {
          goto LABEL_165;
        }
      }

      rename(&block, v309, v613);
      if (v614)
      {
        AFCProcessServerPacket_cold_6(&v755);
        v342 = v755.st_dev;
        goto LABEL_431;
      }

      if (*(a1 + 1268) != 1)
      {
        goto LABEL_430;
      }

      v615 = *MEMORY[0x29EDB8ED8];
      v616 = strlen(&block);
      v617 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x29EDB8ED8], &block, v616, 0);
      v618 = strlen(v309);
      v619 = CFURLCreateFromFileSystemRepresentation(v615, v309, v618, 0);
      v342 = v619;
      if (v617)
      {
        v620 = v619 == 0;
      }

      else
      {
        v620 = 1;
      }

      if (v620)
      {
        if (!v617)
        {
LABEL_428:
          if (v342)
          {
            CFRelease(v342);
LABEL_430:
            v342 = 0;
          }

LABEL_431:
          v699 = *&valuePtr.st_dev;
          if (*&valuePtr.st_dev)
          {
            (*(*&valuePtr.st_dev + 16))(*&valuePtr.st_dev);
            _Block_release(v699);
          }

          v700 = AFCSendStatus(a1, v8, v342);
          if (v342)
          {
            st_dev = v342;
          }

          else
          {
            st_dev = v700;
          }

          CFAllocatorDeallocate(0, v309);
          return st_dev;
        }
      }

      else
      {
        _CFFileDidMove2();
      }

      CFRelease(v617);
      goto LABEL_428;
    case 0x19:
      v705 = a1;
      v706 = v8;
      v707 = _AFCSetFSBlockSize;
      v708 = 512;
      goto LABEL_449;
    case 0x1ALL:
      v705 = a1;
      v706 = v8;
      v707 = _AFCSetSocketBlockSize;
      v708 = 1;
LABEL_449:

      return AFCProcessSetBlockSize(v705, v706, v707, v708);
    case 0x1BLL:
      v106 = AFCConnectionGetContext(a1);
      *&v755.st_dev = 0;
      v755.st_ino = &v755;
      *&v755.st_uid = 0x2000000000;
      v755.st_rdev = 0;
      AFCLog(5, "Processing FileRefLock packet\n", v107, v108, v109, v110, v111, v112, p_block);
      if (!v106)
      {
        v584 = 3892330499;
        v583 = "No server context";
        v585 = 2645;
        goto LABEL_304;
      }

      v119 = AFCDiscardBodyData(a1, v8, v113, v114, v115, v116, v117, v118);
      if (v119)
      {
        goto LABEL_467;
      }

      v123 = (*(v8 + 40) - 1);
      if (gAFCMaxOpenFileCount <= v123 || (v124 = v106 + 40 * v123, v127 = *(v124 + 80), v126 = v124 + 80, v125 = v127, v127 == -1))
      {
        v583 = "Invalid file ref";
        v584 = 3892330503;
        v585 = 2652;
        goto LABEL_304;
      }

      if (__AFCAllowedToOperateOnFile(v125, (a1 + 224), v120, v114, v121, v122, v117, v118))
      {
        goto LABEL_471;
      }

      v128 = *(v8 + 48);
      if (v128 >= 0x10)
      {
        v583 = "Invalid lock type";
        v584 = 3892330503;
        v585 = 2663;
        goto LABEL_304;
      }

      v129 = *(v126 + 24);
      *&block.f_bsize = MEMORY[0x29EDCA5F8];
      block.f_blocks = 0x40000000;
      block.f_bfree = __AFCProcessFileRefLockPacket_block_invoke;
      block.f_bavail = &unk_29EE966E8;
      if (v128 >= 8)
      {
        v130 = v128 | 8;
      }

      else
      {
        v130 = v128 & 7;
      }

      block.f_files = &v755;
      block.f_ffree = v106;
      block.f_fsid.val[0] = v123;
      block.f_fsid.val[1] = v130;
      dispatch_sync(v129, &block);
      if (*(v755.st_ino + 24))
      {
        AFCProcessServerPacket_cold_5(&valuePtr);
        goto LABEL_536;
      }

      goto LABEL_294;
    case 0x1CLL:
      st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330511, v23, 1668, "Unsupported API.", v26, v27, p_block);
      goto LABEL_330;
    case 0x1DLL:
      *&v755.st_dev = 0;
      *&valuePtr.st_dev = 0;
      if (__AFCConnectionGetRequestPath(a1, (v8 + 40), &block, 0x400uLL))
      {
        v207 = AFCDiscardBodyData(a1, v8, v201, v202, v203, v204, v205, v206);
        if (!v207)
        {
          v207 = AFCCheckForSpecialFile(&block, (v8 + 40));
          if (!v207)
          {
            if (*(a1 + 1268) != 1 || (v207 = __AFCCoordinateFileActivity(&block, 1, &valuePtr), !v207))
            {
              v207 = __AFCGetFileHash(&block, &v755, 0, 0);
            }
          }
        }
      }

      else
      {
        v207 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330498, v202, 1895, "AFCConnectionGetRequestPath", v205, v206, p_block);
      }

      st_dev = v207;
      v208 = *&valuePtr.st_dev;
      if (*&valuePtr.st_dev)
      {
        (*(*&valuePtr.st_dev + 16))(*&valuePtr.st_dev);
        _Block_release(v208);
      }

      if (st_dev)
      {
        goto LABEL_95;
      }

      goto LABEL_105;
    case 0x1ELL:
      if (__AFCConnectionGetRequestPath(a1, (v8 + 48), &block, 0x400uLL))
      {
        AFCLog(5, "AFCProcessSetModTimePacket('%s', %lld)", v62, v63, v64, v65, v66, v67, &block);
        v74 = AFCDiscardBodyData(a1, v8, v68, v69, v70, v71, v72, v73);
        if (v74)
        {
          st_dev = v74;
          v501 = a1;
          v502 = v8;
          v500 = st_dev;
LABEL_242:
          AFCSendStatus(v501, v502, v500);
          return st_dev;
        }

        v75 = AFCCheckForSpecialFile(&block, (v8 + 48));
        if (!v75)
        {
          v76 = *(v8 + 40);
          *&v755.st_uid = (v76 / 0x3B9ACA00);
          *&v755.st_dev = *&v755.st_uid;
          v755.st_rdev = v76 % 0x3B9ACA00 / 0x3E8;
          LODWORD(v755.st_ino) = v755.st_rdev;
          if (!utimes(&block, &v755))
          {
            v77 = a1;
            v78 = v8;
            v79 = 0;
            return AFCSendStatus(v77, v78, v79);
          }

          AFCProcessServerPacket_cold_4(&valuePtr);
          st_dev = valuePtr.st_dev;
LABEL_524:
          v558 = AFCSendStatus(a1, v8, st_dev);
          if (st_dev)
          {
            return st_dev;
          }

          return v558;
        }
      }

      else
      {
        v75 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330498, v63, 2747, "AFCConnectionGetRequestPath", v66, v67, p_block);
      }

      st_dev = v75;
      goto LABEL_524;
    case 0x1FLL:
      *&v755.st_dev = 0;
      *&valuePtr.st_dev = 0;
      if (__AFCConnectionGetRequestPath(a1, (v8 + 56), &block, 0x400uLL))
      {
        v215 = AFCDiscardBodyData(a1, v8, v209, v210, v211, v212, v213, v214);
        if (!v215)
        {
          v215 = AFCCheckForSpecialFile(&block, (v8 + 56));
          if (!v215)
          {
            if (*(a1 + 1268) != 1 || (v215 = __AFCCoordinateFileActivity(&block, 1, &valuePtr), !v215))
            {
              v215 = __AFCGetFileHash(&block, &v755, *(v8 + 40), *(v8 + 48));
            }
          }
        }
      }

      else
      {
        v215 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330498, v210, 1936, "AFCConnectionGetRequestPath", v213, v214, p_block);
      }

      st_dev = v215;
      v216 = *&valuePtr.st_dev;
      if (*&valuePtr.st_dev)
      {
        (*(*&valuePtr.st_dev + 16))(*&valuePtr.st_dev);
        _Block_release(v216);
      }

      if (st_dev)
      {
LABEL_95:
        AFCSendStatus(a1, v8, st_dev);
        Mutable = *&v755.st_dev;
      }

      else
      {
LABEL_105:
        Mutable = *&v755.st_dev;
        v217 = CFDataGetBytePtr(*&v755.st_dev);
        v218 = CFDataGetLength(Mutable);
        st_dev = AFCSendDataPacket(a1, v8, v217, v218, v219, v220, v221, v222);
      }

      goto LABEL_407;
    case 0x20:
      v559 = AFCConnectionGetContext(a1);
      *&v755.st_dev = 0;
      v755.st_ino = &v755;
      *&v755.st_uid = 0x2000000000;
      v755.st_rdev = 0;
      AFCLog(5, "Processing FileRefSetImmutableHint packet", v560, v561, v562, v563, v564, v565, p_block);
      if (v559)
      {
        v119 = AFCDiscardBodyData(a1, v8, v566, v114, v567, v568, v117, v118);
        if (v119)
        {
LABEL_467:
          st_dev = v119;
          v713 = v8;
          v714 = a1;
          goto LABEL_472;
        }

        v572 = (*(v8 + 40) - 1);
        if (gAFCMaxOpenFileCount > v572)
        {
          v573 = v559 + 40 * v572;
          v576 = *(v573 + 80);
          v575 = v573 + 80;
          v574 = v576;
          if (v576 != -1)
          {
            if (!__AFCAllowedToOperateOnFile(v574, (a1 + 224), v569, v114, v570, v571, v117, v118))
            {
              v577 = *v575;
              v578 = *(v8 + 48) != 0;
              v579 = *(v575 + 24);
              *&block.f_bsize = MEMORY[0x29EDCA5F8];
              block.f_blocks = 0x40000000;
              block.f_bfree = __AFCProcessFileRefSetImmutableHintPacket_block_invoke;
              block.f_bavail = &unk_29EE96710;
              block.f_files = &v755;
              block.f_ffree = __PAIR64__(v578, v577);
              dispatch_sync(v579, &block);
              if (!*(v755.st_ino + 24))
              {
LABEL_294:
                v580 = AFCSendStatus(a1, v8, 0);
                goto LABEL_295;
              }

              AFCProcessServerPacket_cold_3(&valuePtr);
LABEL_536:
              st_dev = valuePtr.st_dev;
LABEL_305:
              v580 = AFCSendStatus(a1, v8, st_dev);
              if (st_dev)
              {
                goto LABEL_337;
              }

LABEL_295:
              st_dev = v580;
              goto LABEL_337;
            }

LABEL_471:
            v713 = v8;
            v714 = a1;
            st_dev = 1;
LABEL_472:
            AFCSendStatus(v714, v713, st_dev);
            goto LABEL_337;
          }
        }

        v583 = "Invalid file ref";
        v584 = 3892330503;
        v585 = 2711;
      }

      else
      {
        v584 = 3892330499;
        v583 = "No server context";
        v585 = 2704;
      }

LABEL_304:
      st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, v584, v114, v585, v583, v117, v118, v740);
      goto LABEL_305;
    case 0x21:
      memset(&v755, 0, sizeof(v755));
      v748 = a1;
      if (!__AFCConnectionGetRequestPath(a1, (v8 + 48), &block, 0x400uLL))
      {
        st_dev = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330498, v30, 2785, "AFCConnectionGetRequestPath", v33, v34, p_block);
        Mutable = 0;
        goto LABEL_403;
      }

      AFCLog(5, "Processing remove path '%s'\n", v29, v30, v31, v32, v33, v34, &block);
      v41 = AFCDiscardBodyData(a1, v8, v35, v36, v37, v38, v39, v40);
      if (v41)
      {
LABEL_468:
        st_dev = v41;
        Mutable = 0;
        goto LABEL_405;
      }

      if (lstat(&block, &v755))
      {
        AFCProcessServerPacket_cold_2(&valuePtr);
        Mutable = 0;
        st_dev = valuePtr.st_dev;
        goto LABEL_403;
      }

      st_dev = 0;
      v45 = *(v8 + 40);
      v46 = v755.st_mode & 0xF000;
      v47 = v46 != 0x8000 && v45 == 1;
      if (v47)
      {
        st_size = v755.st_size;
      }

      else
      {
        st_size = 0;
      }

      if (v47)
      {
        st_blksize = v755.st_blksize;
      }

      else
      {
        st_blksize = 0;
      }

      if (v46 == 40960 || v46 == 0x8000)
      {
        goto LABEL_401;
      }

      if (v46 != 0x4000)
      {
        st_dev = __AFCSetErrorResult_4(0, 0xFFFFFFFFLL, 3892330506, v42, 2848, "Special files not allowed", v43, v44, v738);
        goto LABEL_401;
      }

      valuePtr.st_ino = 0;
      *&valuePtr.st_dev = &block;
      Mutable = fts_open(&valuePtr, 84, 0);
      if (!Mutable)
      {
        v735 = *__error();
        v732 = 3892330497;
        v733 = "Could not start directory walk";
        v734 = 0;
        v736 = 2815;
        goto LABEL_545;
      }

      while (1)
      {
        v51 = fts_read(Mutable);
        if (!v51)
        {
          st_dev = 0;
LABEL_400:
          fts_close(Mutable);
LABEL_401:
          v669 = CFDataCreateMutable(0, 0);
          Mutable = v669;
          if (v669)
          {
            CFDataAppendBytes(v669, "st_size", 8);
            snprintf(&valuePtr, 0x80uLL, "%lld", st_size);
            v673 = strlen(&valuePtr);
            CFDataAppendBytes(Mutable, &valuePtr, v673 + 1);
            CFDataAppendBytes(Mutable, "st_blocks", 10);
            snprintf(&valuePtr, 0x80uLL, "%lld", st_blksize);
            v674 = strlen(&valuePtr);
            CFDataAppendBytes(Mutable, &valuePtr, v674 + 1);
LABEL_403:
            a1 = v748;
            goto LABEL_404;
          }

          v732 = 3892330499;
          v733 = "CFDataCreateMutable";
          v734 = 1;
          v735 = 0xFFFFFFFFLL;
          v736 = 2853;
LABEL_545:
          st_dev = __AFCSetErrorResult_4(v734, v735, v732, v670, v736, v733, v671, v672, v738);
          goto LABEL_403;
        }

        v58 = v51;
        v59 = v51->fts_info;
        if (v59 > 0xA)
        {
LABEL_26:
          if (v45 == 1 || (v51->fts_statp->st_mode & 0xF000) == 0x8000)
          {
            AFCLog(5, "Summing file %s = %lld bytes\n", v52, v53, v54, v55, v56, v57, v51->fts_path);
            fts_statp = v58->fts_statp;
            st_size += fts_statp->st_size;
            st_blksize += fts_statp->st_blocks;
          }
        }

        else
        {
          v60 = 1 << v59;
          if ((v60 & 0x490) != 0)
          {
            st_dev = __AFCSetErrorResult_4(0, v51->fts_errno, 3892330497, v53, 2829, "Error during file traversal", v56, v57, v738);
            if (st_dev)
            {
              goto LABEL_400;
            }
          }

          else if ((v60 & 0x22) == 0)
          {
            goto LABEL_26;
          }
        }
      }

    case 0x22:
      *&valuePtr.st_dev = 0;
      if (__AFCConnectionGetRequestPath(a1, (v8 + 40), &block, 0x400uLL))
      {
        AFCLog(5, "Processing remove path '%s'\n", v80, v81, v82, v83, v84, v85, &block);
        v92 = AFCDiscardBodyData(a1, v8, v86, v87, v88, v89, v90, v91);
        if (!v92)
        {
          if (*(a1 + 1268) != 1 || (v92 = __AFCCoordinateFileActivity(&block, 1, &valuePtr), !v92))
          {
            v755.st_ino = 0;
            *&v755.st_dev = &block;
            v93 = fts_open(&v755, 84, 0);
            if (v93)
            {
              v94 = v93;
              while (1)
              {
                v95 = fts_read(v94);
                if (!v95)
                {
                  v102 = 0;
LABEL_297:
                  fts_close(v94);
                  goto LABEL_298;
                }

                v99 = v95->fts_info;
                if (v99 > 0xA)
                {
                  break;
                }

                v100 = 1 << v99;
                if ((v100 & 0x490) != 0)
                {
                  v101 = __AFCSetErrorResult_4(0, v95->fts_errno, 3892330497, v96, 1432, "Error during file traversal", v97, v98, v739);
LABEL_46:
                  v102 = v101;
                  if (v101)
                  {
                    goto LABEL_297;
                  }
                }

                else if ((v100 & 0x22) == 0)
                {
                  break;
                }
              }

              v101 = RemovePath(v95->fts_path);
              goto LABEL_46;
            }

            AFCProcessServerPacket_cold_1(__str);
            v102 = *__str;
LABEL_298:
            v581 = *&valuePtr.st_dev;
            if (*&valuePtr.st_dev)
            {
              (*(*&valuePtr.st_dev + 16))(*&valuePtr.st_dev);
              _Block_release(v581);
            }

            v582 = AFCSendStatus(a1, v8, v102);
            if (v102)
            {
              return v102;
            }

            else
            {
              return v582;
            }
          }
        }
      }

      else
      {
        v92 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330498, v81, 1400, "AFCConnectionGetRequestPath", v84, v85, p_block);
      }

      v102 = v92;
      goto LABEL_298;
    case 0x27:
      v702 = a1;
      v703 = v8;
      v704 = 1;
LABEL_453:

      return AFCProcessFileRefReadPacket(v702, v703, v704);
    case 0x28:
      v103 = a1;
      v104 = v8;
      v105 = 1;
LABEL_238:

      return AFCProcessFileRefWritePacket(v103, v104, v105);
    default:
      AFCLog(5, "Processing unknown packet %d\n", v22, v23, v24, v25, v26, v27, *(v8 + 32));
      AFCDiscardBodyData(a1, v8, v491, v492, v493, v494, v495, v496);
      st_dev = 3892330502;
      v500 = __AFCSetErrorResult_4(0, 0xFFFFFFFFLL, 3892330502, v497, 1265, "Unknown packet type %d", v498, v499, *(v8 + 32));
      v501 = a1;
      v502 = v8;
      goto LABEL_242;
  }
}

uint64_t AFCProcessObsoletePacket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AFCDiscardBodyData(a1, a2, a3, a4, a5, a6, a7, a8);
  v13 = __AFCSetErrorResult_4(0, 0xFFFFFFFFLL, 3892330511, v10, 1279, "Obsolete packet type %d", v11, v12, *(a2 + 32));

  return AFCSendStatus(a1, a2, v13);
}

uint64_t AFCProcessFileRefWritePacket(uint64_t a1, void *a2, int a3)
{
  v62 = 0;
  v63[0] = &v62;
  v63[1] = 0x2000000000;
  v64 = 0;
  Context = AFCConnectionGetContext(a1);
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v61 = 0;
  AFCLog(5, "Processing FileRefWrite packet\n", v7, v8, v9, v10, v11, v12, v53);
  if (Context)
  {
    v19 = a2[5];
    v20 = a2[1];
    v21 = a2[2];
    if (a3)
    {
      v59[3] = a2[6];
    }

    v54 = a2;
    v22 = (v19 - 1);
    if (gAFCMaxOpenFileCount <= v22 || (v23 = Context + 40 * v22, v26 = *(v23 + 80), v25 = v23 + 80, v24 = v26, v26 == -1))
    {
      AFCProcessFileRefWritePacket_cold_2(v63);
    }

    else
    {
      v27 = __AFCAllowedToOperateOnFile(v24, (a1 + 224), v13, v14, v15, v16, v17, v18);
      *(v63[0] + 24) = v27;
      if (!v27)
      {
        v28 = v20 - v21;
        *(v25 + 16) = 0;
        if (v28 >= 1)
        {
          while (1)
          {
            v29 = v28 >= *(Context + 8) ? *(Context + 8) : v28;
            v30 = AFCGetBuffer(Context, v29);
            if (!v30)
            {
              break;
            }

            v31 = v30;
            v32 = AFCReadData(a1, *(v30 + 16), v29);
            *(v63[0] + 24) = v32;
            if (v32)
            {
              goto LABEL_21;
            }

            v33 = *(Context + 48);
            v34 = *(a1 + 104);
            if (v34)
            {
              v35 = dispatch_time(0, 1000000000 * v34 * gAFCMaxIORequests);
            }

            else
            {
              v35 = -1;
            }

            v28 -= v29;
            if (dispatch_semaphore_wait(v33, v35))
            {
              AFCProcessFileRefWritePacket_cold_1();
              goto LABEL_21;
            }

            v39 = *(v25 + 16);
            if (v39)
            {
              v42 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, v39, v36, 2384, "Previous IO error", v37, v38, v54);
              *(v63[0] + 24) = v42;
              AFCDiscardData(a1, v28, v43, v44, v45, v46, v47, v48);
              dispatch_semaphore_signal(*(Context + 48));
LABEL_21:
              dispatch_group_wait(*(Context + 56), 0xFFFFFFFFFFFFFFFFLL);
              AFCReleaseBuffer(Context, v31);
              goto LABEL_22;
            }

            v40 = *(Context + 56);
            v41 = *(v25 + 24);
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 0x40000000;
            block[2] = __AFCProcessFileRefWritePacket_block_invoke;
            block[3] = &unk_29EE96620;
            block[6] = v31;
            block[7] = v29;
            v57 = a3;
            block[8] = Context;
            v56 = v22;
            block[4] = &v58;
            block[5] = &v62;
            dispatch_group_async(v40, v41, block);
            if (v28 <= 0)
            {
              goto LABEL_19;
            }
          }

          AFCProcessFileRefWritePacket_cold_3();
        }
      }
    }

LABEL_19:
    dispatch_group_wait(*(Context + 56), 0xFFFFFFFFFFFFFFFFLL);
LABEL_22:
    a2 = v54;
  }

  else
  {
    AFCProcessFileRefWritePacket_cold_4(v63);
  }

  v49 = *(v63[0] + 24);
  v50 = AFCSendStatus(a1, a2, v49);
  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = v50;
  }

  *(v63[0] + 24) = v51;
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);
  return v51;
}

uint64_t __AFCSetErrorResult_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a5;
  AFCLog(5, "Setting error result %d, 0x%X, %s, %d\n", a3, a4, a5, a6, a7, a8, a2);
  return AFCSetErrorInfoWithArgs(a1, a2, a3, "/Library/Caches/com.apple.xbs/Sources/AppleFileConduit/server.c", v10, a6);
}

char *__AFCPathDepthCheck(const char *a1)
{
  result = strndup(a1, 0x400uLL);
  __stringp = result;
  if (result)
  {
    v2 = result;
    v3 = 0;
    while (1)
    {
      v4 = strsep(&__stringp, "/");
      if (!v4)
      {
LABEL_13:
        free(v2);
        return (v3 >= 0);
      }

      if (!*v4)
      {
        goto LABEL_10;
      }

      if (*v4 != 46)
      {
        goto LABEL_9;
      }

      if (v4[1])
      {
        if (v4[1] != 46 || v4[2])
        {
LABEL_9:
          ++v3;
          goto LABEL_10;
        }

        if (--v3 < 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
LABEL_10:
        if (v3 < 0)
        {
          goto LABEL_13;
        }
      }
    }
  }

  return result;
}

uint64_t AFCCheckForSpecialFile(const char *a1, const char *a2)
{
  v37 = *MEMORY[0x29EDCA608];
  memset(&v33, 0, sizeof(v33));
  if (a2 && (__AFCPathDepthCheck(a2) & 1) == 0)
  {
    v6 = 3892330503;
    __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330503, v3, 228, "Request path is outside document root", v4, v5, v32);
  }

  else
  {
    v6 = 0;
    if (a1 && (gAllowSpecialFiles & 1) == 0)
    {
      bzero(&__s, 0x400uLL);
      if (*a1 == 47)
      {
        v7 = strlen(a1);
        if (v7 >= 1)
        {
          v8 = 0;
          do
          {
            if (a1[v8] == 47 && a1[v8 + 1] != 47)
            {
              break;
            }

            ++v8;
          }

          while ((v7 & 0x7FFFFFFF) != v8);
        }
      }

      __strcpy_chk();
      while (1)
      {
        v9 = strlen(&__s);
        if (v9 >= 2)
        {
          v10 = v9 & 0x7FFFFFFF;
          do
          {
            if (*(&v34 + v10) != 47)
            {
              break;
            }

            *(&v34 + v10) = 0;
          }

          while (v10-- > 2);
        }

        if (__s ^ 0x7261762F | BYTE4(__s) && __s ^ 0x6374652F | BYTE4(__s) && __s ^ 0x706D742F | BYTE4(__s))
        {
          if (gInternalBuild != 1 || (__s == 0x762F2F31746E6D2FLL ? (v12 = *(&__s + 3) == 0x7261762F2F3174) : (v12 = 0), !v12 && (__s == 0x652F2F31746E6D2FLL ? (v13 = *(&__s + 3) == 0x6374652F2F3174) : (v13 = 0), !v13 && (__s == 0x742F2F31746E6D2FLL ? (v14 = *(&__s + 3) == 0x706D742F2F3174) : (v14 = 0), !v14 && __s ^ 0x626F6D2F7261762FLL | *(&__s + 1) ^ 0x7262694C2F656C69 | *v36 ^ 0x73676F4C2F797261 | v36[8] && (__s == 0x7269772F7261762FLL ? (v15 = *(&__s + 1) == 0x694C2F7373656C65) : (v15 = 0), v15 ? (v16 = *v36 == 0x6F4C2F7972617262) : (v16 = 0), v16 ? (v17 = *&v36[3] == 0x73676F4C2F7972) : (v17 = 0), !v17 && (__s == 0x626F6D2F7261762FLL ? (v18 = *(&__s + 1) == 0x6964654D2F656C69) : (v18 = 0), v18 ? (v19 = *v36 == 0x726F746361462F61) : (v19 = 0), v19 ? (v20 = *&v36[6] == 0x73676F4C79726FLL) : (v20 = 0), !v20))))))
          {
            if (lstat(&__s, &v33))
            {
              if (*__error() != 2)
              {
                v27 = *__error();
                v28 = __error();
                strerror(*v28);
                __AFCSetErrorResult_4(1, v27, 3892330519, v29, 302, "failed to retrieve file information for %s (%s)", v30, v31, &__s);
                return 23;
              }
            }

            else
            {
              v24 = v33.st_mode & 0xF000;
              if (v24 != 0x4000 && v24 != 0x8000)
              {
                v6 = 3892330506;
                __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330506, v21, 295, "%s is special file", v22, v23, &__s);
                return v6;
              }
            }
          }
        }

        v25 = strrchr(&__s, 47);
        if (v25)
        {
          *v25 = 0;
          if (__s)
          {
            continue;
          }
        }

        return 0;
      }
    }
  }

  return v6;
}

uint64_t __AFCCoordinateFileActivity(const char *a1, uint64_t a2, void *a3)
{
  v44 = *MEMORY[0x29EDCA608];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3002000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  v6 = strlen(a1);
  v7 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x29EDB8ED8], a1, v6, 0);
  if (v7)
  {
    v11 = v7;
    v12 = dispatch_semaphore_create(0);
    dispatch_retain(v12);
    if (a2 == 1)
    {
      _CFFileCoordinateReadingItemAtURL2();
    }

    else
    {
      _CFFileCoordinateWritingItemAtURL2();
    }

    v13 = dispatch_time(0, 25000000000);
    if (dispatch_semaphore_wait(v12, v13))
    {
      AFCLog(1, "Timeout waiting for File Coordination to release %s", v14, v15, v16, v17, v18, v19, a1);
      v20 = 0;
    }

    else
    {
      v21 = v40[3];
      if (v21)
      {
        memset(buffer, 0, sizeof(buffer));
        v22 = CFErrorCopyDescription(v21);
        if (v22)
        {
          v29 = v22;
          CFStringGetCString(v22, buffer, 256, 0x8000100u);
          CFRelease(v29);
        }

        AFCLog(1, "File Coordination error for path %s: %s", v23, v24, v25, v26, v27, v28, a1);
        CFRelease(v40[3]);
      }

      v20 = v34[5];
    }

    *a3 = v20;
    if (v12)
    {
      dispatch_release(v12);
    }

    CFRelease(v11);
    v30 = 0;
  }

  else
  {
    v30 = __AFCSetErrorResult_4(0, 0xFFFFFFFFLL, 3892330499, v8, 402, "Could not create request URL", v9, v10, v32);
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);
  return v30;
}

uint64_t RemovePath(const char *a1)
{
  memset(&v11, 0, sizeof(v11));
  if (lstat(a1, &v11))
  {
    RemovePath_cold_1(&v12);
    return v12;
  }

  v5 = v11.st_mode & 0xF000;
  if (v5 != 0x4000)
  {
    if ((gAllowSpecialFiles & 1) == 0 && (v5 | 0x2000) != 0xA000)
    {
      v7 = "Special files not allowed";
      v8 = 3892330506;
      v6 = 0xFFFFFFFFLL;
      v9 = 1348;
      return __AFCSetErrorResult_4(0, v6, v8, v2, v9, v7, v3, v4, *&v11.st_dev);
    }

    if (unlink(a1) < 0)
    {
      v6 = *__error();
      v7 = "unlink";
      v8 = 3892330497;
      v9 = 1345;
      return __AFCSetErrorResult_4(0, v6, v8, v2, v9, v7, v3, v4, *&v11.st_dev);
    }

    return 0;
  }

  if ((rmdir(a1) & 0x80000000) == 0)
  {
    return 0;
  }

  v6 = *__error();
  v7 = "rmdir";
  v8 = 3892330497;
  v9 = 1340;
  return __AFCSetErrorResult_4(0, v6, v8, v2, v9, v7, v3, v4, *&v11.st_dev);
}

BOOL __AFCHasPrefix(const char *a1, char *__s)
{
  result = 0;
  if (a1 && __s)
  {
    v5 = strlen(__s);
    return strlen(a1) >= v5 && strncmp(__s, a1, v5) == 0;
  }

  return result;
}

BOOL __AFCAllowedToOperateOnFile(int a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x29EDCA608];
  if (a1 < 0 || !a2)
  {
    v14 = "Invalid arg(s).";
    v15 = 0;
    v16 = 0xFFFFFFFFLL;
    v17 = 7;
    v18 = 2176;
LABEL_13:
    v13 = __AFCSetErrorResult_4(v15, v16, v17, a4, v18, v14, a7, a8, st_nlink);
    return v13 != 0;
  }

  memset(&v25, 0, sizeof(v25));
  st_nlink = v26;
  if (fcntl(a1, 50, a3, a4, a5, a6, a7, a8) == -1)
  {
    v19 = *__error();
    v20 = __error();
    v14 = strerror(*v20);
    v15 = 1;
    v16 = v19;
    v17 = 23;
    v18 = 2181;
    goto LABEL_13;
  }

  if (!__AFCHasPrefix(v26, a2))
  {
    v13 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 1, v10, 2186, "Requested path (%s) does not start with AFC root (%s)", v11, v12, v26);
    return v13 != 0;
  }

  if (fstat(a1, &v25) == -1)
  {
    v21 = *__error();
    v22 = __error();
    v14 = strerror(*v22);
    v15 = 0;
    v16 = v21;
    v17 = 23;
    v18 = 2191;
    goto LABEL_13;
  }

  if (v25.st_nlink != 1)
  {
    v14 = "Can't operate on this file via AFC as there are additional hard links: %d";
    st_nlink = v25.st_nlink;
    v15 = 0;
    v16 = 0xFFFFFFFFLL;
    v17 = 1;
    v18 = 2196;
    goto LABEL_13;
  }

  v13 = 0;
  return v13 != 0;
}

ssize_t __AFCProcessFileRefReadPacket_block_invoke(uint64_t a1)
{
  result = AFCGetBuffer(*(a1 + 88), *(*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = result;
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (v3)
  {
    *(*(*(a1 + 56) + 8) + 24) = *(v3 + 16);
    *(*(*(a1 + 64) + 8) + 24) = 0;
    for (i = *(*(*(a1 + 40) + 8) + 24); *(*(*(a1 + 64) + 8) + 24) < i; i = *(*(*(a1 + 40) + 8) + 24))
    {
      v5 = *(a1 + 96);
      v6 = *(*(*(a1 + 56) + 8) + 24);
      if (*(a1 + 104) == 1)
      {
        result = pread(v5, v6, i, *(*(*(a1 + 80) + 8) + 24));
        *(*(*(a1 + 72) + 8) + 24) = result;
        v7 = *(*(*(a1 + 72) + 8) + 24);
        if (v7 < 1)
        {
          return result;
        }

        *(*(*(a1 + 64) + 8) + 24) += v7;
        *(*(*(a1 + 56) + 8) + 24) += *(*(*(a1 + 72) + 8) + 24);
        *(*(*(a1 + 40) + 8) + 24) -= *(*(*(a1 + 72) + 8) + 24);
        v8 = *(*(a1 + 80) + 8);
        v9 = *(v8 + 24) + *(*(*(a1 + 72) + 8) + 24);
      }

      else
      {
        result = read(v5, v6, i);
        *(*(*(a1 + 72) + 8) + 24) = result;
        v10 = *(*(*(a1 + 72) + 8) + 24);
        if (v10 < 1)
        {
          return result;
        }

        v11 = *(a1 + 88) + 40 * *(a1 + 100);
        *(v11 + 88) += v10;
        *(*(*(a1 + 64) + 8) + 24) += *(*(*(a1 + 72) + 8) + 24);
        *(*(*(a1 + 56) + 8) + 24) += *(*(*(a1 + 72) + 8) + 24);
        v8 = *(*(a1 + 40) + 8);
        v9 = *(v8 + 24) - *(*(*(a1 + 72) + 8) + 24);
      }

      *(v8 + 24) = v9;
    }
  }

  else
  {
    v12 = __error();
    result = __AFCSetErrorResult_4(1, *v12, 3892330499, v13, 2269, "AFCGetBuffer failed", v14, v15, v16);
    *(*(*(a1 + 48) + 8) + 24) = result;
  }

  return result;
}

uint64_t AFCGetBuffer(uint64_t a1, unint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = 0;
  if (a2 <= 0x400000)
  {
    v4 = *(a1 + 24);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = __AFCGetBuffer_block_invoke;
    block[3] = &unk_29EE965D8;
    block[4] = &v7;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(v4, block);
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

void AFCReleaseBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = __AFCReleaseBuffer_block_invoke;
  v4[3] = &__block_descriptor_tmp_124;
  v4[4] = a2;
  v4[5] = a1;
  dispatch_sync(v3, v4);
}

void __AFCGetBuffer_block_invoke(void *a1)
{
  v2 = *(a1[5] + 16);
  if (v2)
  {
    v3 = a1 + 4;
    *(*(a1[4] + 8) + 24) = v2;
    *(a1[5] + 16) = **(a1[5] + 16);
    v4 = *(*(a1[4] + 8) + 24);
    v5 = a1 + 6;
    if (*(v4 + 24) >= a1[6])
    {
      goto LABEL_6;
    }

    free(*(v4 + 16));
    v6 = 3801252997;
  }

  else
  {
    v3 = a1 + 4;
    *(*(a1[4] + 8) + 24) = malloc_type_malloc(0x20uLL, 0x10A0040D083E0E9uLL);
    v7 = *(*(a1[4] + 8) + 24);
    *v7 = 0u;
    v7[1] = 0u;
    v5 = a1 + 6;
    v6 = 2358966840;
  }

  *(*(*(*v3 + 8) + 24) + 16) = malloc_type_valloc(*v5, v6);
  *(*(*(*v3 + 8) + 24) + 24) = malloc_size(*(*(*(*v3 + 8) + 24) + 16));
LABEL_6:
  v8 = a1[5];
  *(*(*(a1[4] + 8) + 24) + 8) = 1;
  v9 = *(v8 + 40);
  if (!v9)
  {
    dispatch_source_set_timer(*(v8 + 32), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v8 = a1[5];
    v9 = *(v8 + 40);
  }

  *(v8 + 40) = v9 + 1;
}

void __AFCReleaseBuffer_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(v2 + 8) = 0;
  *v2 = *(v3 + 16);
  *(*(a1 + 40) + 16) = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v4 + 40) - 1;
  *(v4 + 40) = v5;
  if (!v5)
  {
    v6 = *(v4 + 32);
    v7 = dispatch_time(0, 10000000000);

    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }
}

intptr_t __AFCProcessFileRefWritePacket_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 < 1)
  {
LABEL_11:
    v9 = __error();
    v13 = __AFCSetErrorResult_4(0, *v9, 0xFFFFFFFFLL, v10, 2422, "file write failure", v11, v12, v16);
    v8 = *(a1 + 64);
    *(v8 + 80 + 40 * *(a1 + 72) + 16) = v13;
    *(*(*(a1 + 40) + 8) + 24) = *(v8 + 80 + 40 * *(a1 + 72) + 16);
  }

  else
  {
    v3 = *(*(a1 + 48) + 16);
    do
    {
      v4 = *(*(a1 + 64) + 40 * *(a1 + 72) + 80);
      if (*(a1 + 76) == 1)
      {
        v5 = pwrite(v4, v3, v2, *(*(*(a1 + 32) + 8) + 24));
        if (v5 < 1)
        {
          goto LABEL_11;
        }

        v6 = (*(*(a1 + 32) + 8) + 24);
      }

      else
      {
        v5 = write(v4, v3, v2);
        if (v5 < 1)
        {
          goto LABEL_11;
        }

        v6 = (*(a1 + 64) + 40 * *(a1 + 72) + 88);
      }

      *v6 += v5;
      v3 += v5;
      v7 = v2 <= v5;
      v2 -= v5;
    }

    while (!v7);
    v8 = *(a1 + 64);
  }

  AFCReleaseBuffer(v8, *(a1 + 48));
  v14 = *(*(a1 + 64) + 48);

  return dispatch_semaphore_signal(v14);
}

uint64_t __AFCProcessFileRefSeekPacket_block_invoke(uint64_t a1)
{
  v2 = lseek(*(*(a1 + 40) + 40 * *(a1 + 56) + 80), *(*(a1 + 48) + 56), *(a1 + 60));
  if (v2 < 0)
  {
    v5 = __error();
    result = __AFCSetErrorResult_4(0, *v5, 3892330497, v6, 2509, "lseek", v7, v8, v9);
  }

  else
  {
    v3 = v2;
    result = 0;
    *(*(a1 + 40) + 40 * *(a1 + 56) + 88) = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __AFCProcessFileRefTellPacket_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = lseek(*(*(a1 + 48) + 40 * *(a1 + 56) + 80), 0, 1);
  if (*(*(*(a1 + 32) + 8) + 24) == -1)
  {
    v3 = __error();
    result = __AFCSetErrorResult_4(0, *v3, 3892330497, v4, 2548, "lseek", v5, v6, v7);
  }

  else
  {
    result = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __AFCProcessFileRefClosePacket_block_invoke(uint64_t a1)
{
  if (close(*(*(a1 + 40) + 40 * *(a1 + 48) + 80)))
  {
    v2 = __error();
    v6 = __AFCSetErrorResult_4(0, *v2, 3892330497, v3, 2597, "close", v4, v5, v12);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v6;
  *(v7 + 80 + 40 * *(a1 + 48)) = -1;
  v8 = *(v7 + 80 + 40 * *(a1 + 48) + 32);
  if (v8)
  {
    (*(v8 + 16))(v8);
    _Block_release(*(*(a1 + 40) + 40 * *(a1 + 48) + 112));
    v7 = *(a1 + 40);
    *(v7 + 40 * *(a1 + 48) + 112) = 0;
  }

  if (!gAFCMaxOpenFileCount)
  {
    goto LABEL_11;
  }

  v9 = 0;
  v10 = 1;
  do
  {
    if (*(v7 + 80 + 40 * v9) != -1)
    {
      break;
    }

    v9 = v10;
  }

  while (gAFCMaxOpenFileCount > v10++);
  if (gAFCMaxOpenFileCount == v9)
  {
LABEL_11:

    AFCFlushServerContext(v7);
  }
}

uint64_t __AFCProcessFileRefSetFileSizePacket_block_invoke(uint64_t a1)
{
  result = ftruncate(*(*(a1 + 40) + 40 * *(a1 + 56) + 80), *(*(a1 + 48) + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __AFCPathContainsDots(const char *a1)
{
  v1 = strndup(a1, 0x400uLL);
  __stringp = v1;
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = strsep(&__stringp, "/");
  if (v3)
  {
    while (*v3 != 46 || v3[1] != 46 || v3[2])
    {
      v3 = strsep(&__stringp, "/");
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    v4 = 1;
  }

  else
  {
LABEL_7:
    v4 = 0;
  }

  free(v2);
  return v4;
}

uint64_t _AFCSetFSBlockSize(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 88) == a3 && *(a1 + 96) == a3)
  {
    return 0;
  }

  AFCLog(5, "Setting block size to %llu", a3, a4, a5, a6, a7, a8, a3);
  if (a3 > 0x400000)
  {
    return 3892330503;
  }

  *(a1 + 88) = a3;
  *(a1 + 96) = a3;
  AFCFlushServerContext(a2);
  result = 0;
  *(a2 + 8) = a3;
  return result;
}

uint64_t __AFCProcessFileRefLockPacket_block_invoke(uint64_t a1)
{
  result = flock(*(*(a1 + 40) + 40 * *(a1 + 48) + 80), *(a1 + 52));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __AFCGetFileHash(const char *a1, CFDataRef *a2, uint64_t a3, off_t a4)
{
  v36 = *MEMORY[0x29EDCA608];
  memset(&v33, 0, sizeof(v33));
  if (stat(a1, &v33))
  {
    __AFCGetFileHash_cold_1(&c);
    return c.h0;
  }

  valuePtr = v33.st_mtimespec.tv_nsec / 1000000000.0 + v33.st_mtimespec.tv_sec;
  v11 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (a4 | a3)
  {
    st_size = a4;
  }

  else
  {
    st_size = v33.st_size;
  }

  if (a3 < 0)
  {
    v27 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330503, v8, 1762, "Invalid starting offset %ld.", v9, v10, a3);
  }

  else if (st_size <= 0)
  {
    v27 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330503, v8, 1763, "Invalid length %ld.", v9, v10, st_size);
  }

  else
  {
    if (st_size + a3 <= v33.st_size)
    {
      memset(&c, 0, sizeof(c));
      CC_SHA1_Init(&c);
      v13 = open(a1, 0);
      if (v13 < 0)
      {
        __AFCGetFileHash_cold_4(&v34);
      }

      else
      {
        v14 = v13;
        if (st_size >= 0x80000)
        {
          v15 = 0x80000;
        }

        else
        {
          v15 = st_size;
        }

        v16 = MEMORY[0x29C289090](0, v15, 2237703902, 0);
        if (!v16)
        {
          v28 = "CFAllocatorAlocate";
          v29 = 1830;
LABEL_37:
          v27 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330499, v17, v29, v28, v18, v19, v30);
          goto LABEL_38;
        }

        v20 = v16;
        if (lseek(v14, a3, 0) == a3)
        {
          v21 = 0;
          while (1)
          {
            v22 = st_size - v21 >= v15 ? v15 : st_size - v21;
            v23 = read(v14, v20, v22);
            if (v23 < 1)
            {
              break;
            }

            CC_SHA1_Update(&c, v20, v23);
            v21 += v23;
            if (v21 >= st_size)
            {
              CFAllocatorDeallocate(0, v20);
              goto LABEL_22;
            }
          }

          CFAllocatorDeallocate(0, v20);
          if (v23 < 0)
          {
            __AFCGetFileHash_cold_3(&v34);
            goto LABEL_35;
          }

LABEL_22:
          CC_SHA1_Final(md, &c);
          v24 = CFDataCreate(0, md, 20);
          if (v24)
          {
            v25 = 0;
            *a2 = v24;
            goto LABEL_24;
          }

          v28 = "CFDataCreate";
          v29 = 1852;
          goto LABEL_37;
        }

        __AFCGetFileHash_cold_2(&v34);
      }

LABEL_35:
      v25 = v34;
      goto LABEL_24;
    }

    v27 = __AFCSetErrorResult_4(1, 0xFFFFFFFFLL, 3892330503, v8, 1764, "File %s ain't that long!", v9, v10, a1);
  }

LABEL_38:
  v25 = v27;
LABEL_24:
  if (v11)
  {
    CFRelease(v11);
  }

  return v25;
}

uint64_t __AFCProcessFileRefSetImmutableHintPacket_block_invoke(uint64_t a1)
{
  result = fcntl(*(a1 + 40), 68, *(a1 + 44));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t AFCSendPacket(uint64_t a1, uint64_t a2, void *a3, size_t a4)
{
  v8 = 3892330503;
  v9 = *(a2 + 16);
  AFCLockLock(*(a1 + 144));
  if (*(a1 + 16) == 1)
  {
    if (a3 || !a4)
    {
      if (v9 + a4 <= 0x2000 && (v10 = malloc_type_malloc(0x2000uLL, 0x100004077774924uLL)) != 0)
      {
        v11 = v10;
        __memcpy_chk();
        memcpy(&v11[v9], a3, a4);
        AFCLogPacketInfo(4, "AFCSendHeader", a2);
        v8 = AFCSendData(a1, v11, v9 + a4);
        free(v11);
      }

      else
      {
        v12 = AFCSendHeader(a1, a2);
        if (!v12)
        {
          v12 = AFCSendData(a1, a3, a4);
        }

        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 3892330507;
  }

  AFCLockUnlock(*(a1 + 144));
  return v8;
}

BOOL __ConvertDictEntry(_BOOL8 result, __CFString *a2, __CFData *a3)
{
  if (result)
  {
    if (a2)
    {
      result = __AppendValue(result, a3);
      if (result)
      {

        return __AppendValue(a2, a3);
      }
    }
  }

  return result;
}

uint64_t AFCSendDataPacket(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AFCLog(5, "Writing data packet with data length %u\n", a3, a4, a5, a6, a7, a8, a4);
  if (*(a1 + 68) == 1)
  {
    return *(a1 + 64);
  }

  v14[0] = 0x4141504C36414643;
  v14[1] = a4 + 40;
  v14[2] = 40;
  v14[4] = 2;
  if (a2)
  {
    v13 = *(a2 + 24);
  }

  else
  {
    v13 = -1;
  }

  v14[3] = v13;
  result = AFCSendHeader(a1, v14);
  if (!result)
  {
    return AFCSendData(a1, a3, a4);
  }

  return result;
}

BOOL __AppendValue(__CFString *a1, __CFData *a2)
{
  v3 = a1;
  v4 = CFGetTypeID(a1);
  if (v4 != CFStringGetTypeID())
  {
    if (v4 == CFNumberGetTypeID())
    {
      if (CFNumberIsFloatType(v3))
      {
        valuePtr = 0;
        if (!CFNumberGetValue(v3, kCFNumberDoubleType, &valuePtr))
        {
          return 0;
        }

        v5 = CFStringCreateWithFormat(0, 0, @"%g", valuePtr);
      }

      else
      {
        valuePtr = 0;
        if (!CFNumberGetValue(v3, kCFNumberSInt64Type, &valuePtr))
        {
          return 0;
        }

        v5 = CFStringCreateWithFormat(0, 0, @"%qi", valuePtr);
      }
    }

    else
    {
      if (v4 == CFBooleanGetTypeID())
      {
        if (*MEMORY[0x29EDB8F00] == v3)
        {
          v3 = @"1";
        }

        else
        {
          v3 = @"0";
        }

        goto LABEL_16;
      }

      v5 = CFCopyDescription(v3);
    }

    v3 = v5;
    if (v5)
    {
      goto LABEL_16;
    }

    return 0;
  }

  CFRetain(v3);
  if (!v3)
  {
    return 0;
  }

LABEL_16:
  v6 = 9 * CFStringGetLength(v3);
  v7 = MEMORY[0x29C289090](0, v6 + 1, 0x100004077774924, 0);
  if (v7)
  {
    v8 = v7;
    usedBufLen = 0;
    Length = CFStringGetLength(v3);
    v17.location = 0;
    v17.length = Length;
    Bytes = CFStringGetBytes(v3, v17, 0x8000100u, 0, 0, v8, v6, &usedBufLen);
    v11 = Length == Bytes;
    if (Length == Bytes)
    {
      v12 = usedBufLen++;
      v13 = usedBufLen;
      v8[v12] = 0;
      CFDataAppendBytes(a2, v8, v13);
    }

    CFAllocatorDeallocate(0, v8);
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v3);
  return v11;
}

void AFCIteratorCreate_cold_1(void *cf)
{
  v2 = cf[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = cf[2];
  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(cf);
}

uint64_t AFCFileDescriptorCreateReadOperation(_DWORD *a1)
{
  if (!a1[8])
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v2, v3, v4, v5, v6);
  v7 = CFGetAllocator(a1);
  return OUTLINED_FUNCTION_15(v7, v8, v9, v10, v11, v12, v13, v14, v16);
}

uint64_t AFCFileDescriptorCreateReadAtPositionOperation(_DWORD *a1)
{
  if (!a1[8])
  {
    return 0;
  }

  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v2, v3, v4, v5, v6);
  v7 = CFGetAllocator(a1);
  return OUTLINED_FUNCTION_15(v7, v8, v9, v10, v11, v12, v13, v14, v16);
}

uint64_t AFCFileDescriptorCreateWriteOperation(_DWORD *a1, CFDataRef theData, uint64_t a3)
{
  if (!a1[8])
  {
    return 0;
  }

  if (theData)
  {
    CFDataGetLength(theData);
  }

  OUTLINED_FUNCTION_2();
  AFCHeaderInit(v5, 16, 48, v6, 0);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_5();
  return AFCOperationCreate(v7, v8, v9, v10, v11, a3);
}

uint64_t AFCFileDescriptorCreateWriteAtPositionOperation(_DWORD *a1, CFDataRef theData, uint64_t a3, uint64_t a4)
{
  if (!a1[8])
  {
    return 0;
  }

  if (theData)
  {
    CFDataGetLength(theData);
  }

  OUTLINED_FUNCTION_1();
  AFCHeaderInit(v6, 40, 56, v7, 0);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_5();
  return AFCOperationCreate(v8, v9, v10, v11, v12, a4);
}

uint64_t AFCFileDescriptorCreateSetPositionOperation(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1[8])
  {
    return 0;
  }

  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v6, v7, v8, v9, v10);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_3();
  return AFCOperationCreate(v11, v12, v13, v14, v15, a4);
}

uint64_t AFCFileDescriptorCreateGetPositionOperation(_DWORD *a1, uint64_t a2)
{
  if (!a1[8])
  {
    return 0;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v4, v5, v6, v7, v8);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_3();
  return AFCOperationCreate(v9, v10, v11, v12, v13, a2);
}

uint64_t AFCFileDescriptorCreateSetSizeOperation(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (!a1[8])
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v5, v6, v7, v8, v9);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_3();
  return AFCOperationCreate(v10, v11, v12, v13, v14, a3);
}

uint64_t AFCFileDescriptorCreateLockOperation(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (!a1[8])
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v5, v6, v7, v8, v9);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_3();
  return AFCOperationCreate(v10, v11, v12, v13, v14, a3);
}

uint64_t AFCFileDescriptorCreateUnlockOperation(_DWORD *a1, uint64_t a2)
{
  if (!a1[8])
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v4, v5, v6, v7, v8);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_3();
  return AFCOperationCreate(v9, v10, v11, v12, v13, a2);
}

uint64_t AFCFileDescriptorCreateSetImmutableHintOperation(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (!a1[8])
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v5, v6, v7, v8, v9);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_3();
  return AFCOperationCreate(v10, v11, v12, v13, v14, a3);
}

uint64_t AFCOperationCreateGetFileInfo(int a1, const __CFString *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_0();
  if (!v4)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_4(v4);
  if (v5)
  {
    strlen((v2 + 40));
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_3();
    v22 = AFCOperationCreate(v17, v18, v19, v20, v21, v3);
  }

  else
  {
    __AFCSetErrorResult_0(v5, v6, v7, v8, 1035, v9, v10, v11, v24);
    v22 = 0;
  }

  OUTLINED_FUNCTION_14();
  return v22;
}

uint64_t AFCOperationCreateRemovePath(int a1, const __CFString *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_0();
  if (!v4)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_4(v4);
  if (v5)
  {
    strlen((v2 + 40));
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_3();
    v22 = AFCOperationCreate(v17, v18, v19, v20, v21, v3);
  }

  else
  {
    __AFCSetErrorResult_0(v5, v6, v7, v8, 1065, v9, v10, v11, v24);
    v22 = 0;
  }

  OUTLINED_FUNCTION_14();
  return v22;
}

uint64_t AFCOperationCreateRenamePath(int a1, CFStringRef theString, const __CFString *a3, uint64_t a4)
{
  Length = CFStringGetLength(theString);
  v8 = 9 * (CFStringGetLength(a3) + Length);
  v9 = MEMORY[0x29C289090](0, v8 + 44, 0x10000400A747E1ELL, 0);
  if (!v9)
  {
    return 0;
  }

  v11 = (v9 + 40);
  v12 = OUTLINED_FUNCTION_17(v9, v10, v8 + 4);
  if (!v12)
  {
    v32 = 1098;
LABEL_10:
    __AFCSetErrorResult_0(v12, v13, v14, v15, v32, v16, v17, v18, v33);
    v30 = 0;
    goto LABEL_5;
  }

  v19 = strlen(v11);
  v12 = OUTLINED_FUNCTION_10(v19);
  if (!v12)
  {
    v32 = 1100;
    goto LABEL_10;
  }

  strlen(v11);
  strlen(theString);
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v20, v21, v22, v23, v24);
  OUTLINED_FUNCTION_3();
  v30 = AFCOperationCreate(v25, v26, v27, v28, v29, a4);
LABEL_5:
  OUTLINED_FUNCTION_14();
  return v30;
}

uint64_t AFCOperationCreateSetModTime(int a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v6 = 9 * OUTLINED_FUNCTION_9(a1, a2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  if (!v7)
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = OUTLINED_FUNCTION_8(v8, v9, v6 + 2);
  if (v10)
  {
    strlen((v4 + 48));
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_3();
    v27 = AFCOperationCreate(v22, v23, v24, v25, v26, a4);
  }

  else
  {
    __AFCSetErrorResult_0(v10, v11, v12, v13, 1132, v14, v15, v16, v29);
    v27 = 0;
  }

  OUTLINED_FUNCTION_18();
  return v27;
}

uint64_t AFCOperationCreateLinkPath(int a1, uint64_t a2, CFStringRef theString, const __CFString *a4, uint64_t a5)
{
  Length = CFStringGetLength(theString);
  v10 = 9 * (CFStringGetLength(a4) + Length);
  OUTLINED_FUNCTION_6();
  v11 = MEMORY[0x29C289090](0, v10 + 52);
  if (!v11)
  {
    return 0;
  }

  *(v11 + 40) = a2;
  v13 = (v11 + 48);
  v14 = OUTLINED_FUNCTION_17(v11, v12, v10 + 12);
  if (!v14)
  {
    v34 = 1165;
LABEL_10:
    __AFCSetErrorResult_0(v14, v15, v16, v17, v34, v18, v19, v20, v35);
    v32 = 0;
    goto LABEL_5;
  }

  v21 = strlen(v13);
  v14 = OUTLINED_FUNCTION_10(v21);
  if (!v14)
  {
    v34 = 1168;
    goto LABEL_10;
  }

  strlen(v13);
  strlen(theString);
  OUTLINED_FUNCTION_5();
  AFCHeaderInit(v22, v23, v24, v25, v26);
  OUTLINED_FUNCTION_3();
  v32 = AFCOperationCreate(v27, v28, v29, v30, v31, a5);
LABEL_5:
  OUTLINED_FUNCTION_14();
  return v32;
}

uint64_t AFCOperationCreateReadDirectory(int a1, const __CFString *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_0();
  if (!v4)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_4(v4);
  if (v5)
  {
    strlen((v2 + 40));
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_3();
    v22 = AFCOperationCreate(v17, v18, v19, v20, v21, v3);
  }

  else
  {
    __AFCSetErrorResult_0(v5, v6, v7, v8, 1200, v9, v10, v11, v24);
    v22 = 0;
  }

  OUTLINED_FUNCTION_14();
  return v22;
}

uint64_t AFCOperationCreateMakeDirectory(int a1, const __CFString *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_0();
  if (!v4)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_4(v4);
  if (v5)
  {
    strlen((v2 + 40));
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_3();
    v22 = AFCOperationCreate(v17, v18, v19, v20, v21, v3);
  }

  else
  {
    __AFCSetErrorResult_0(v5, v6, v7, v8, 1232, v9, v10, v11, v24);
    v22 = 0;
  }

  OUTLINED_FUNCTION_14();
  return v22;
}

uint64_t AFCOperationCreateOpenFile(int a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v6 = 9 * OUTLINED_FUNCTION_9(a1, a2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  if (!v7)
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = OUTLINED_FUNCTION_8(v8, v9, v6 + 1);
  if (v10)
  {
    strlen((v4 + 48));
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_3();
    v27 = AFCOperationCreate(v22, v23, v24, v25, v26, a4);
  }

  else
  {
    __AFCSetErrorResult_0(v10, v11, v12, v13, 1265, v14, v15, v16, v29);
    v27 = 0;
  }

  OUTLINED_FUNCTION_18();
  return v27;
}

uint64_t AFCOperationCreateGetFileHash(int a1, const __CFString *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_0();
  if (!v4)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_4(v4);
  if (v5)
  {
    strlen((v2 + 40));
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_3();
    v22 = AFCOperationCreate(v17, v18, v19, v20, v21, v3);
  }

  else
  {
    __AFCSetErrorResult_0(v5, v6, v7, v8, 1296, v9, v10, v11, v24);
    v22 = 0;
  }

  OUTLINED_FUNCTION_14();
  return v22;
}

uint64_t AFCOperationCreateGetFileHashWithRange(int a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 9 * OUTLINED_FUNCTION_9(a1, a2);
  OUTLINED_FUNCTION_12();
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  v11 = OUTLINED_FUNCTION_8(v9, (v9 + 56), v8 + 1);
  if (v11)
  {
    strlen((v10 + 56));
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_3();
    v28 = AFCOperationCreate(v23, v24, v25, v26, v27, a5);
  }

  else
  {
    __AFCSetErrorResult_0(v11, v12, v13, v14, 1329, v15, v16, v17, v30);
    v28 = 0;
  }

  OUTLINED_FUNCTION_18();
  return v28;
}

uint64_t AFCOperationCreateGetSizeOfPathContents(int a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v6 = 9 * OUTLINED_FUNCTION_9(a1, a2);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  if (!v7)
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = OUTLINED_FUNCTION_8(v8, v9, v6 + 1);
  if (v10)
  {
    strlen((v4 + 48));
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_3();
    v27 = AFCOperationCreate(v22, v23, v24, v25, v26, a4);
  }

  else
  {
    __AFCSetErrorResult_0(v10, v11, v12, v13, 1362, v14, v15, v16, v29);
    v27 = 0;
  }

  OUTLINED_FUNCTION_18();
  return v27;
}

uint64_t AFCOperationCreateRemovePathAndContents(int a1, const __CFString *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  OUTLINED_FUNCTION_0();
  if (!v4)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_4(v4);
  if (v5)
  {
    strlen((v2 + 40));
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_5();
    AFCHeaderInit(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_3();
    v22 = AFCOperationCreate(v17, v18, v19, v20, v21, v3);
  }

  else
  {
    __AFCSetErrorResult_0(v5, v6, v7, v8, 1393, v9, v10, v11, v24);
    v22 = 0;
  }

  OUTLINED_FUNCTION_14();
  return v22;
}

void AFCOperationCreate_cold_1(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AFCLog(5, "AFCOperationCreate %p failed", a3, a4, a5, a6, a7, a8, a1);

  CFRelease(a1);
}

uint64_t __AFCConnectionSetBlockSize(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  memset(v27, 0, sizeof(v27));
  ptr = 0;
  v8 = AFCLockLock(a1[17]);
  if (v8 || (AFCHeaderInit(v25, a2, 48, 0, 0), *(&v26 + 1) = a3, v8 = AFCSendHeader(a1, v25), v8))
  {
    v20 = v8;
LABEL_17:
    if (v20)
    {
      AFCConnectionSetFatalError(a1, v20, v9, v10, v11, v12, v13, v14);
    }

    goto LABEL_19;
  }

  v15 = AFCReadPacketHeader(a1, v27, 0x80uLL, &ptr);
  v16 = ptr;
  if (v15)
  {
    v20 = v15;
    v21 = 0;
  }

  else
  {
    if (ptr)
    {
      v17 = ptr;
    }

    else
    {
      v17 = v27;
    }

    if (*(v17 + 4) == 1)
    {
      v18 = v27;
      if (ptr)
      {
        v18 = ptr;
      }

      v19 = *(v18 + 10);
      if (v19)
      {
        v20 = v19 | 0xE8004000;
      }

      else
      {
        v20 = 0;
        *a4 = a3;
      }

      v21 = 1;
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }
  }

  if (v16)
  {
    v22 = CFGetAllocator(a1);
    CFAllocatorDeallocate(v22, ptr);
  }

  if ((v21 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  AFCLockUnlock(a1[17]);
  return v20;
}

uint64_t AFCDeviceInfoOpen(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 16407;
  if (a1 && a2)
  {
    v11 = CFGetAllocator(a1);
    DeviceInfo = AFCOperationCreateGetDeviceInfo(v11, 0);
    if (DeviceInfo)
    {
      v13 = DeviceInfo;
      AFCConnectionGetIOTimeout(a1);
      v14 = OUTLINED_FUNCTION_4_0();
      ResultStatus = AFCConnectionProcessOperation(v14, v13, v15, v16, v17, v18, v19, v20, v21);
      if (ResultStatus || (ResultStatus = AFCOperationGetResultStatus(v13)) != 0)
      {
        v8 = ResultStatus;
      }

      else
      {
        ResultObject = AFCOperationGetResultObject(v13);
        if (ResultObject)
        {
          v24 = ResultObject;
          v25 = CFGetTypeID(ResultObject);
          if (v25 == CFDictionaryGetTypeID())
          {
            v26 = CFGetAllocator(a1);
            v8 = 0;
            *a2 = AFCIteratorCreate(v26, v24);
          }
        }
      }

      CFRelease(v13);
    }

    else
    {
      v8 = 16387;
    }
  }

  else
  {
    v8 = __AFCSetErrorResult_1(a1, a2, 3892330503, a4, 171, "NULL argument", a7, a8, v28);
  }

  return v8 & 0x1FFF;
}

uint64_t AFCFileInfoOpen()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && v2 && (v7 = v3) != 0)
  {
    v8 = v1;
    v9 = CFGetAllocator(v1);
    v10 = OUTLINED_FUNCTION_2_0(v9);
    if (v10)
    {
      v11 = v10;
      v12 = CFGetAllocator(v8);
      FileInfo = AFCOperationCreateGetFileInfo(v12, v11);
      CFRelease(v11);
      if (FileInfo)
      {
        AFCConnectionGetIOTimeout(v8);
        v14 = OUTLINED_FUNCTION_4_0();
        ResultStatus = AFCConnectionProcessOperation(v14, FileInfo, v15, v16, v17, v18, v19, v20, v21);
        if (ResultStatus || (ResultStatus = AFCOperationGetResultStatus(FileInfo)) != 0)
        {
          LOWORD(v0) = ResultStatus;
        }

        else
        {
          ResultObject = AFCOperationGetResultObject(FileInfo);
          if (ResultObject && (v24 = ResultObject, v25 = CFGetTypeID(ResultObject), v25 == CFDictionaryGetTypeID()))
          {
            v26 = CFGetAllocator(v8);
            v27 = AFCIteratorCreate(v26, v24);
            if (v27)
            {
              *v7 = v27;
              LOWORD(v0) = 0;
            }
          }

          else
          {
            LOWORD(v0) = v0 + 20;
          }
        }

        CFRelease(FileInfo);
      }
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v4, 203, "NULL argument", v5, v6, v29);
  }

  return v0 & 0x1FFF;
}

uint64_t AFCRemovePath()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && (v6 = v2) != 0)
  {
    v7 = v1;
    v8 = CFGetAllocator(v1);
    v9 = CFStringCreateWithCString(v8, v6, 0x8000100u);
    if (v9)
    {
      v10 = v9;
      v11 = CFGetAllocator(v7);
      v12 = AFCOperationCreateRemovePath(v11, v10);
      CFRelease(v10);
      if (v12)
      {
        IOTimeout = AFCConnectionGetIOTimeout(v7);
        v20 = AFCConnectionProcessOperation(v7, v12, v14, v15, v16, v17, v18, v19, IOTimeout);
        if (!v20)
        {
          LOWORD(v20) = AFCOperationGetResultStatus(v12);
        }

        LOWORD(v0) = v20;
        CFRelease(v12);
      }
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v3, 243, "NULL argument", v4, v5, v22);
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefOpen()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && (v7 = v2) != 0 && (v8 = v4) != 0)
  {
    v9 = v3;
    v10 = v1;
    v11 = CFGetAllocator(v1);
    v12 = OUTLINED_FUNCTION_2_0(v11);
    if (v12)
    {
      v13 = v12;
      v14 = CFGetAllocator(v10);
      OpenFile = AFCOperationCreateOpenFile(v14, v13, v9, 0);
      CFRelease(v13);
      if (OpenFile)
      {
        IOTimeout = AFCConnectionGetIOTimeout(v10);
        ResultStatus = AFCConnectionProcessOperation(v10, OpenFile, v17, v18, v19, v20, v21, v22, IOTimeout);
        if (ResultStatus || (ResultStatus = AFCOperationGetResultStatus(OpenFile)) != 0)
        {
          LOWORD(v0) = ResultStatus;
        }

        else
        {
          ResultObject = AFCOperationGetResultObject(OpenFile);
          AFCFileDescriptorSetRemoteName(ResultObject, v7);
          LOWORD(v0) = v0 + 20;
          if (ResultObject)
          {
            v25 = CFGetTypeID(ResultObject);
            if (v25 == AFCFileDescriptorGetTypeID())
            {
              CFRetain(ResultObject);
              *v8 = ResultObject;
              LOWORD(v0) = 0;
            }
          }
        }

        CFRelease(OpenFile);
      }
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v4, 373, "NULL argument", v5, v6, v27);
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefRead()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && (v7 = v2) != 0 && v3 && (v8 = v4) != 0)
  {
    v9 = v1;
    AFCFileDescriptorGetRemoteName(v2);
    Operation = AFCFileDescriptorCreateReadOperation(v7);
    if (Operation)
    {
      v11 = Operation;
      IOTimeout = AFCConnectionGetIOTimeout(v9);
      ResultStatus = AFCConnectionProcessOperation(v9, v11, v13, v14, v15, v16, v17, v18, IOTimeout);
      if (ResultStatus || (ResultStatus = AFCOperationGetResultStatus(v11)) != 0)
      {
        LOWORD(v0) = ResultStatus;
      }

      else
      {
        ResultObject = AFCOperationGetResultObject(v11);
        v21 = CFGetTypeID(ResultObject);
        if (v21 == CFDataGetTypeID())
        {
          *v8 = CFDataGetLength(ResultObject);
          AFCFileDescriptorGetRemoteName(v7);
          LOWORD(v0) = 0;
        }

        else
        {
          LOWORD(v0) = v0 + 20;
        }
      }

      CFRelease(v11);
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v4, 412, "NULL argument", v5, v6, v23);
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefWrite()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && (v7 = v2) != 0 && (v8 = v3) != 0)
  {
    v9 = v4;
    v10 = v1;
    AFCFileDescriptorGetRemoteName(v2);
    v11 = CFDataCreateWithBytesNoCopy(0, v8, v9, *MEMORY[0x29EDB8EE8]);
    if (v11)
    {
      v12 = v11;
      v13 = AFCFileDescriptorCreateWriteOperation(v7, v11, 0);
      if (v13)
      {
        v14 = v13;
        IOTimeout = AFCConnectionGetIOTimeout(v10);
        v22 = AFCConnectionProcessOperation(v10, v14, v16, v17, v18, v19, v20, v21, IOTimeout);
        if (v22)
        {
          LOWORD(v0) = v22;
        }

        else
        {
          LOWORD(v0) = AFCOperationGetResultStatus(v14);
          AFCFileDescriptorGetRemoteName(v7);
        }

        CFRelease(v14);
      }

      CFRelease(v12);
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v4, 446, "NULL argument", v5, v6, v24);
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefClose()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && (v9 = v2) != 0)
  {
    v10 = v1;
    CloseOperation = AFCFileDescriptorCreateCloseOperation(v2, 0, v3, v4, v5, v6, v7, v8);
    if (CloseOperation)
    {
      v12 = CloseOperation;
      AFCConnectionGetIOTimeout(v10);
      v13 = OUTLINED_FUNCTION_4_0();
      v21 = AFCConnectionProcessOperation(v13, v12, v14, v15, v16, v17, v18, v19, v20);
      if (v21)
      {
        LOWORD(v0) = v21;
      }

      else
      {
        LOWORD(v0) = AFCOperationGetResultStatus(v12);
        AFCFileDescriptorInvalidate(v9);
        CFRelease(v9);
      }

      CFRelease(v12);
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v4, 475, "NULL argument", v7, v8, v23);
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefSeek()
{
  OUTLINED_FUNCTION_0_0();
  if (v2 && v3)
  {
    v7 = OUTLINED_FUNCTION_5_0(v2, v3);
    if (AFCFileDescriptorCreateSetPositionOperation(v7, v9, v8, 0))
    {
      v10 = OUTLINED_FUNCTION_3_0();
      AFCConnectionGetIOTimeout(v10);
      v11 = OUTLINED_FUNCTION_1_0();
      if (!AFCConnectionProcessOperation(v11, v1, v12, v13, v14, v15, v16, v17, v18))
      {
        AFCOperationGetResultStatus(v1);
      }

      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v2, v3, (v0 + 4), v4, 502, "NULL argument", v5, v6, v20);
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefTell(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 16407;
  if (a1 && a2 && a3)
  {
    PositionOperation = AFCFileDescriptorCreateGetPositionOperation(a2, 0);
    if (PositionOperation)
    {
      v12 = PositionOperation;
      AFCConnectionGetIOTimeout(a1);
      v13 = OUTLINED_FUNCTION_4_0();
      ResultStatus = AFCConnectionProcessOperation(v13, v12, v14, v15, v16, v17, v18, v19, v20);
      if (ResultStatus || (ResultStatus = AFCOperationGetResultStatus(v12)) != 0)
      {
        v8 = ResultStatus;
      }

      else
      {
        ResultObject = AFCOperationGetResultObject(v12);
        if (ResultObject)
        {
          v23 = ResultObject;
          v24 = CFGetTypeID(ResultObject);
          if (v24 == CFNumberGetTypeID())
          {
            if (CFNumberGetValue(v23, kCFNumberSInt64Type, a3))
            {
              v8 = 0;
            }

            else
            {
              v8 = 16407;
            }
          }
        }
      }

      CFRelease(v12);
    }

    else
    {
      v8 = 16387;
    }
  }

  else
  {
    v8 = __AFCSetErrorResult_1(a1, a2, 3892330503, a4, 526, "NULL argument", a7, a8, v26);
  }

  return v8 & 0x1FFF;
}

uint64_t AFCFileRefLock()
{
  OUTLINED_FUNCTION_0_0();
  if (v2 && v3)
  {
    v7 = OUTLINED_FUNCTION_5_0(v2, v3);
    if (AFCFileDescriptorCreateLockOperation(v7, v8, 0))
    {
      v9 = OUTLINED_FUNCTION_3_0();
      AFCConnectionGetIOTimeout(v9);
      v10 = OUTLINED_FUNCTION_1_0();
      if (!AFCConnectionProcessOperation(v10, v1, v11, v12, v13, v14, v15, v16, v17))
      {
        AFCOperationGetResultStatus(v1);
      }

      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v2, v3, (v0 + 4), v4, 556, "NULL argument", v5, v6, v19);
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefSetFileSize()
{
  OUTLINED_FUNCTION_0_0();
  if (v2 && v3)
  {
    v7 = OUTLINED_FUNCTION_5_0(v2, v3);
    if (AFCFileDescriptorCreateSetSizeOperation(v7, v8, 0))
    {
      v9 = OUTLINED_FUNCTION_3_0();
      AFCConnectionGetIOTimeout(v9);
      v10 = OUTLINED_FUNCTION_1_0();
      if (!AFCConnectionProcessOperation(v10, v1, v11, v12, v13, v14, v15, v16, v17))
      {
        AFCOperationGetResultStatus(v1);
      }

      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v2, v3, (v0 + 4), v4, 580, "NULL argument", v5, v6, v19);
  }

  return v0 & 0x1FFF;
}

uint64_t AFCFileRefUnlock()
{
  OUTLINED_FUNCTION_0_0();
  if (v2 && v3)
  {
    v7 = OUTLINED_FUNCTION_5_0(v2, v3);
    if (AFCFileDescriptorCreateUnlockOperation(v7, 0))
    {
      v8 = OUTLINED_FUNCTION_3_0();
      AFCConnectionGetIOTimeout(v8);
      v9 = OUTLINED_FUNCTION_1_0();
      if (!AFCConnectionProcessOperation(v9, v1, v10, v11, v12, v13, v14, v15, v16))
      {
        AFCOperationGetResultStatus(v1);
      }

      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v2, v3, (v0 + 4), v4, 604, "NULL argument", v5, v6, v18);
  }

  return v0 & 0x1FFF;
}

uint64_t AFCDirectoryOpen()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && v2 && (v7 = v3) != 0)
  {
    v8 = v1;
    v9 = CFGetAllocator(v1);
    v10 = OUTLINED_FUNCTION_2_0(v9);
    if (v10)
    {
      v11 = v10;
      v12 = CFGetAllocator(v8);
      Directory = AFCOperationCreateReadDirectory(v12, v11);
      if (Directory)
      {
        v14 = Directory;
        IOTimeout = AFCConnectionGetIOTimeout(v8);
        ResultStatus = AFCConnectionProcessOperation(v8, v14, v16, v17, v18, v19, v20, v21, IOTimeout);
        if (ResultStatus || (ResultStatus = AFCOperationGetResultStatus(v14)) != 0)
        {
          LOWORD(v0) = ResultStatus;
        }

        else
        {
          ResultObject = AFCOperationGetResultObject(v14);
          LOWORD(v0) = v0 + 20;
          if (ResultObject)
          {
            v24 = ResultObject;
            v25 = CFGetTypeID(ResultObject);
            if (v25 == CFArrayGetTypeID())
            {
              v26 = CFGetAllocator(v8);
              LOWORD(v0) = 0;
              *v7 = AFCIteratorCreate(v26, v24);
            }
          }
        }

        CFRelease(v11);
        v27 = v14;
      }

      else
      {
        v27 = v11;
      }

      CFRelease(v27);
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v4, 635, "NULL argument", v5, v6, v29);
  }

  return v0 & 0x1FFF;
}

uint64_t AFCDirectoryCreate()
{
  OUTLINED_FUNCTION_0_0();
  if (v1 && (v6 = v2) != 0)
  {
    v7 = v1;
    v8 = CFGetAllocator(v1);
    if (OUTLINED_FUNCTION_2_0(v8))
    {
      v9 = OUTLINED_FUNCTION_3_0();
      v10 = CFGetAllocator(v9);
      Directory = AFCOperationCreateMakeDirectory(v10, v6);
      if (Directory)
      {
        v12 = Directory;
        AFCConnectionGetIOTimeout(v7);
        v13 = OUTLINED_FUNCTION_1_0();
        v21 = AFCConnectionProcessOperation(v13, v12, v14, v15, v16, v17, v18, v19, v20);
        if (!v21)
        {
          LOWORD(v21) = AFCOperationGetResultStatus(v12);
        }

        LOWORD(v0) = v21;
        CFRelease(v12);
      }

      CFRelease(v6);
    }
  }

  else
  {
    LOWORD(v0) = __AFCSetErrorResult_1(v1, v2, (v0 + 4), v3, 720, "NULL argument", v4, v5, v23);
  }

  return v0 & 0x1FFF;
}

void AFCRenamePath_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  AFCConnectionGetIOTimeout(a1);
  v5 = OUTLINED_FUNCTION_1_0();
  ResultStatus = AFCConnectionProcessOperation(v5, a2, v6, v7, v8, v9, v10, v11, v12);
  if (!ResultStatus)
  {
    ResultStatus = AFCOperationGetResultStatus(a2);
  }

  *a3 = ResultStatus;

  CFRelease(a2);
}

uint64_t __AFCCreateDictionaryOrArrayFromData(const __CFAllocator *a1, void *a2, uint64_t a3, int a4, CFArrayRef *a5)
{
  v5 = 3892330503;
  if (!a2 || !a5)
  {
    return v5;
  }

  v11 = MEMORY[0x29EDB9000];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v13 = CFArrayCreateMutable(0, 0, v11);
  v18 = v13;
  if (!Mutable || !v13)
  {
    v36 = 3892330499;
    v35 = "CFArrayCreateMutable";
    v37 = 45;
LABEL_29:
    v38 = __AFCSetErrorResult_2(v13, v14, v36, v15, v37, v35, v16, v17, v39);
    goto LABEL_30;
  }

  if (a3 >= 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = a2;
    while (1)
    {
      v13 = memchr(v21, 0, a3 - v19);
      if (!v13)
      {
        v35 = "Last string is unterminated";
        v36 = 3892330503;
        v37 = 52;
        goto LABEL_29;
      }

      v22 = v13;
      v13 = CFStringCreateWithBytes(a1, v21, v13 - v21, 0x8000100u, 0);
      if (!v13)
      {
        break;
      }

      v23 = v13;
      if ((v20 & 1) != 0 || a4 == 0)
      {
        v25 = v18;
      }

      else
      {
        v25 = Mutable;
      }

      CFArrayAppendValue(v25, v23);
      CFRelease(v23);
      v21 = (v22 + 1);
      ++v20;
      v19 = v22 + 1 - a2;
      if (v19 >= a3)
      {
        goto LABEL_16;
      }
    }

    v35 = "Could not create string object";
    v36 = 3892330503;
    v37 = 55;
    goto LABEL_29;
  }

LABEL_16:
  if (!a4)
  {
    v5 = 0;
    *a5 = CFArrayCreateCopy(0, v18);
    goto LABEL_23;
  }

  Count = CFArrayGetCount(Mutable);
  v13 = CFArrayGetCount(v18);
  if (Count != v13)
  {
    v35 = "Key without value";
    v36 = 3892330503;
    v37 = 71;
    goto LABEL_29;
  }

  if (!Count)
  {
    v5 = 0;
    *a5 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    goto LABEL_23;
  }

  v27 = CFArrayGetCount(Mutable);
  v28 = MEMORY[0x29C289090](0, 16 * v27, 0x80040B8603338, 0);
  if (v28)
  {
    v33 = v28;
    v40.location = 0;
    v40.length = Count;
    CFArrayGetValues(Mutable, v40, v28);
    v41.length = CFArrayGetCount(v18);
    v41.location = 0;
    CFArrayGetValues(v18, v41, &v33[Count]);
    *a5 = CFDictionaryCreate(0, v33, &v33[Count], Count, MEMORY[0x29EDB8F28], MEMORY[0x29EDB9020]);
    CFAllocatorDeallocate(0, v33);
    v5 = 0;
LABEL_23:
    CFRelease(Mutable);
    goto LABEL_24;
  }

  v38 = __AFCSetErrorResult_2(0, v29, 3892330499, v30, 78, "CFAllocatorAllocate failed for %d keys", v31, v32, Count);
LABEL_30:
  v5 = v38;
  if (Mutable)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v18)
  {
    CFRelease(v18);
  }

  return v5;
}

uint64_t __AFCProcessStatusPacket(uint64_t a1, uint64_t a2)
{
  v4 = 3892330499;
  v5 = *(a2 + 88);
  DataLength = __AFCOperationGetDataLength(a2);
  cf = 0;
  v7 = CFGetAllocator(a2);
  if (DataLength < 1)
  {
    v9 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    v8 = MEMORY[0x29C289090](v7, DataLength);
    if (!v8)
    {
      goto LABEL_21;
    }

    v9 = v8;
    v10 = AFCReadData(a1, v8, DataLength);
    if (v10)
    {
      v4 = v10;
      goto LABEL_20;
    }

    v11 = CFGetAllocator(a2);
    if (__AFCCreateDictionaryOrArrayFromData(v11, v9, DataLength, 1, &cf))
    {
      cf = 0;
    }
  }

  v12 = *(v5 + 40);
  v13 = v12 | 0xE8004000;
  if (!v12)
  {
    v13 = 0;
  }

  *(a2 + 40) = v13;
  if (!v12)
  {
    v4 = 0;
    *(a2 + 240) = CFRetain(*MEMORY[0x29EDB8F80]);
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v14 = CFGetAllocator(a2);
  v15 = __AFCCreateErrorObject(v14, *(a2 + 40), cf);
  *(a2 + 240) = v15;
  if (v15)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3892330499;
  }

  AFCLockLock(*(a1 + 136));
  *(a1 + 64) = *(a2 + 40);
  v16 = *(a1 + 72);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a2 + 240);
  *(a1 + 72) = v17;
  if (v17)
  {
    CFRetain(v17);
  }

  AFCLockUnlock(*(a1 + 136));
  if (v9)
  {
LABEL_20:
    CFAllocatorDeallocate(v7, v9);
  }

LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t __AFCProcessDataPacket(uint64_t a1, uint64_t a2)
{
  v4 = 3892330499;
  DataLength = __AFCOperationGetDataLength(a2);
  v6 = CFGetAllocator(a2);
  v7 = v6;
  if (DataLength < 1)
  {
    v12 = CFDataCreate(v6, 0, 0);
    *(a2 + 240) = v12;
    if (v12)
    {
      return 0;
    }

    else
    {
      return 3892330499;
    }
  }

  else
  {
    v8 = *(a2 + 72);
    if (!v8)
    {
      OUTLINED_FUNCTION_0_1();
      v9 = MEMORY[0x29C289090](v7, DataLength);
      *(a2 + 72) = v9;
      if (!v9)
      {
        return v4;
      }

      *(a2 + 80) = v7;
      CFRetain(v7);
      v8 = *(a2 + 72);
    }

    v10 = AFCReadData(a1, v8, DataLength);
    if (v10)
    {
      return v10;
    }

    else
    {
      v11 = CFDataCreateWithBytesNoCopy(v7, *(a2 + 72), DataLength, *(a2 + 80));
      *(a2 + 240) = v11;
      if (v11)
      {
        *(a2 + 72) = 0;
        CFRelease(*(a2 + 80));
        v4 = 0;
        *(a2 + 80) = 0;
      }
    }
  }

  return v4;
}

uint64_t __AFCProcessArrayOrDictReply(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 3892330499;
  DataLength = __AFCOperationGetDataLength(a2);
  v8 = CFGetAllocator(a2);
  v9 = *(a2 + 72);
  if (!v9)
  {
    OUTLINED_FUNCTION_0_1();
    v10 = MEMORY[0x29C289090](v8, DataLength);
    *(a2 + 72) = v10;
    if (!v10)
    {
      return v6;
    }

    *(a2 + 80) = v8;
    CFRetain(v8);
    v9 = *(a2 + 72);
  }

  v11 = AFCReadData(a1, v9, DataLength);
  if (v11)
  {
    return v11;
  }

  v12 = __AFCCreateDictionaryOrArrayFromData(v8, *(a2 + 72), DataLength, a3, (a2 + 240));
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a2 + 240) == 0;
  }

  if (v13)
  {
    return 3892330499;
  }

  else
  {
    return v12;
  }
}

void AFCConnectionCreate_cold_1(void *cf, CFTypeRef *a2)
{
  v4 = cf[17];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = cf[19];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = cf[20];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = cf[21];
  if (v7)
  {
    CFRelease(v7);
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  CFRelease(cf);
}

uint64_t AFCConnectionProcessOperation_cold_1(uint64_t *a1, uint64_t *a2, uint64_t a3, _DWORD *a4)
{
  AFCLockUnlock(*a1);
  AFCLockLock(a2[18]);
  v7 = __AFCConnectionSendOperation(a2, a3);
  if (!v7)
  {
    *(a3 + 24) = 4;
    v7 = __AFCConnectionReceiveOperation(a2, a3);
  }

  *a4 = v7;
  AFCLockUnlock(a2[18]);
  if (v7 == -402636789)
  {
    AFCLog(5, "Socket closed when reading.\n", v8, v9, v10, v11, v12, v13, v23);
    __AFCConnectionInvalidate(a2, v14, v15, v16, v17, v18, v19, v20);
  }

  else if (!v7)
  {
    goto LABEL_10;
  }

  if (!*(a3 + 40))
  {
    ErrorInfo = AFCCopyAndClearLastErrorInfo();
    __AFCOperationSetClientErrorWithInfo(a3, v7, ErrorInfo);
    if (ErrorInfo)
    {
      CFRelease(ErrorInfo);
    }
  }

LABEL_10:

  return __AFCConnectionNotifyOperationComplete(a2, a3, v8, v9, v10, v11, v12, v13);
}

uint64_t AFCErrorInfoCreateWithArgs(__CFDictionary **a1, uint64_t a2, uint64_t a3, const char *a4, int a5, const void *a6)
{
  v8 = a2;
  v37 = *MEMORY[0x29EDCA608];
  v34 = a5;
  v35 = a2;
  v33 = AFCErrnoToAFCDomainError(a2, a3);
  Mutable = CFDictionaryCreateMutable(0, 7, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v12 = Mutable;
  if (Mutable)
  {
    v13 = OUTLINED_FUNCTION_1_1(Mutable, v11, &v33);
    if (v13)
    {
      v16 = v13;
      OUTLINED_FUNCTION_5_1(v13, @"AFCCode");
      CFRelease(v16);
    }

    if (v8 != -1)
    {
      strerror_r(v8, __strerrbuf, 0x80uLL);
      v17 = CFStringCreateWithCString(0, __strerrbuf, 0x8000100u);
      if (v17)
      {
        v19 = v17;
        CFDictionarySetValue(v12, @"NSDebugDescription", v17);
        CFRelease(v19);
      }

      v13 = OUTLINED_FUNCTION_1_1(v17, v18, &v35);
      if (v13)
      {
        v20 = v13;
        CFDictionarySetValue(v12, @"NSUnderlyingError", v13);
        CFRelease(v20);
      }
    }

    v21 = OUTLINED_FUNCTION_3_1(v13, v14, v15, *MEMORY[0x29EDB8EE8]);
    if (v21)
    {
      v22 = OUTLINED_FUNCTION_0_2(v21);
      if (v22)
      {
        v23 = v22;
        OUTLINED_FUNCTION_2_1(v22, @"NSDescription");
        CFRelease(v23);
      }

      CFRelease(a6);
    }

    if (a4)
    {
      v24 = strlen(a4);
      v25 = OUTLINED_FUNCTION_4_1(v24);
      if (v25)
      {
        v26 = v25;
        PathComponent = CFURLCopyLastPathComponent(v25);
        if (PathComponent)
        {
          v29 = PathComponent;
          OUTLINED_FUNCTION_2_1(PathComponent, @"AFCFileName");
          CFRelease(v29);
        }

        v30 = OUTLINED_FUNCTION_1_1(PathComponent, v28, &v34);
        if (v30)
        {
          v31 = v30;
          OUTLINED_FUNCTION_2_1(v30, @"AFCFileLine");
          CFRelease(v31);
        }

        CFRelease(v26);
      }
    }

    if (__gAFCVersion)
    {
      CFDictionarySetValue(v12, @"AFCVersion", __gAFCVersion);
    }
  }

  *a1 = v12;
  return v33;
}

uint64_t AFCSetErrorInfoWithArgs(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, int a5, const void *a6)
{
  v41 = 0;
  pthread_once(&__gPlatformInit, __AFCPlatformInitialize);
  v12 = AFCErrorInfoCreateWithArgs(&v41, a2, a3, a4, a5, a6);
  v13 = v41;
  AFCLog(5, "created error info %p", v14, v15, v16, v17, v18, v19, v41);
  if (v13)
  {
    if (a1 >= 1)
    {
      v20 = __AFCCopyErrorInfoDescription(v13);
      if (v20)
      {
        v21 = v20;
        Length = CFStringGetLength(v20);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v24 = MEMORY[0x29C289090](0, MaximumSizeForEncoding, 0x100004077774924, 0);
        if (v24)
        {
          v25 = v24;
          if (CFStringGetCString(v21, v24, MaximumSizeForEncoding, 0x8000100u))
          {
            AFCLog(a1, "%s", v26, v27, v28, v29, v30, v31, v25);
          }

          CFAllocatorDeallocate(0, v25);
        }

        CFRelease(v21);
      }
    }

    v32 = pthread_getspecific(__gAFCErrorInfoKey);
    if (v32)
    {
      CFRelease(v32);
    }

    if (pthread_setspecific(__gAFCErrorInfoKey, v13))
    {
      AFCLog(5, "Error setting thread error info", v33, v34, v35, v36, v37, v38, v40);
      CFRelease(v13);
    }
  }

  return v12;
}

uint64_t AFCProcessFileRefReadPacket(uint64_t a1, void *a2, int a3)
{
  v88 = 0;
  v89 = &v88;
  v90 = 0x2000000000;
  v91 = 0;
  Context = AFCConnectionGetContext(a1);
  v84 = 0;
  v85 = &v84;
  v86 = 0x2000000000;
  v87 = 0;
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x2000000000;
  v83[3] = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2000000000;
  v82 = 0;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x2000000000;
  v78[3] = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2000000000;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2000000000;
  v73 = 0;
  AFCLog(5, "Processing FileRefRead packet\n", v7, v8, v9, v10, v11, v12, v64);
  if (!Context)
  {
    v56 = OUTLINED_FUNCTION_1_2();
    v63 = 2223;
    goto LABEL_23;
  }

  v19 = a2[5];
  v20 = a2[6];
  v85[3] = v20;
  if (v20 >= 0x400000)
  {
    v20 = 0x400000;
  }

  v80[3] = v20;
  if (a3)
  {
    v71[3] = a2[7];
  }

  v21 = v19 - 1;
  AFCLog(5, "AFCFileRefRead(%d, %d, %d)\n", v13, v14, v15, v16, v17, v18, (v19 - 1));
  v22 = OUTLINED_FUNCTION_4_2();
  v30 = AFCDiscardBodyData(v22, v23, v24, v25, v26, v27, v28, v29);
  *(v89 + 6) = v30;
  if (!v30)
  {
    if (gAFCMaxOpenFileCount <= v21 || (v37 = Context + 40 * v21, v40 = *(v37 + 80), v39 = v37 + 80, v38 = v40, v40 == -1))
    {
      v56 = OUTLINED_FUNCTION_3_2();
      v63 = 2255;
      goto LABEL_23;
    }

    v41 = __AFCAllowedToOperateOnFile(v38, (a1 + 224), v31, v32, v33, v34, v35, v36);
    *(v89 + 6) = v41;
    if (!v41)
    {
      v42 = *(v39 + 24);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = __AFCProcessFileRefReadPacket_block_invoke;
      block[3] = &unk_29EE965B0;
      block[4] = &v74;
      block[5] = &v79;
      block[6] = &v88;
      block[7] = v78;
      v69 = a3;
      block[8] = v83;
      block[9] = &v84;
      block[10] = &v70;
      block[11] = Context;
      v67 = v38;
      v68 = v21;
      dispatch_sync(v42, block);
      v30 = *(v89 + 6);
      if (v30)
      {
        goto LABEL_14;
      }

      if ((v85[3] & 0x8000000000000000) == 0)
      {
        v43 = OUTLINED_FUNCTION_4_2();
        v30 = AFCSendDataPacket(v43, v44, v45, v46, v47, v48, v49, v50);
LABEL_13:
        *(v89 + 6) = v30;
        goto LABEL_14;
      }

      v57 = *__error();
      v60 = "read";
      v58 = 3892330500;
      v56 = 1;
      v63 = 2301;
LABEL_23:
      v30 = __AFCSetErrorResult_4(v56, v57, v58, v59, v63, v60, v61, v62, v65);
      goto LABEL_13;
    }

    v30 = 1;
  }

LABEL_14:
  AFCLog(5, "Sending result %d\n", v31, v32, v33, v34, v35, v36, v30);
  v51 = v75[3];
  if (v51)
  {
    AFCReleaseBuffer(Context, v51);
  }

  v52 = *(v89 + 6);
  if (v52)
  {
    v53 = OUTLINED_FUNCTION_4_2();
    AFCSendStatus(v53, v54, v52);
    *(v89 + 6) = v52;
  }

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(v78, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(v83, 8);
  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v88, 8);
  return v52;
}

uint64_t AFCProcessSetBlockSize(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void), unint64_t a4)
{
  Context = AFCConnectionGetContext(a1);
  AFCLog(5, "Processing SetBlockSize packet\n", v9, v10, v11, v12, v13, v14, v39);
  if (Context)
  {
    v15 = OUTLINED_FUNCTION_4_2();
    if (AFCDiscardBodyData(v15, v16, v17, v18, v19, v20, v21, v22))
    {
      goto LABEL_10;
    }

    v23 = *(a2 + 40);
    if (v23 > 0x400000)
    {
      v40 = *(a2 + 40);
      v34 = OUTLINED_FUNCTION_2_2();
      v38 = 2929;
    }

    else if (v23 <= a4)
    {
      v40 = *(a2 + 40);
      v34 = OUTLINED_FUNCTION_2_2();
      v38 = 2933;
    }

    else
    {
      v24 = *(Context + 56);
      v25 = *(a1 + 104);
      if (v25)
      {
        v26 = dispatch_time(0, 1000000000 * v25 * gAFCMaxIORequests);
      }

      else
      {
        v26 = -1;
      }

      if (!dispatch_group_wait(v24, v26))
      {
        a3(a1, Context, *(a2 + 40));
        goto LABEL_10;
      }

      v37 = "timeout waiting for all IO requests to complete";
      v36 = 3892330508;
      v34 = 0;
      v35 = 0xFFFFFFFFLL;
      v38 = 2937;
    }
  }

  else
  {
    v34 = OUTLINED_FUNCTION_3_2();
    v38 = 2922;
  }

  __AFCSetErrorResult_4(v34, v35, v36, v27, v38, v37, v28, v29, v40);
LABEL_10:
  v30 = OUTLINED_FUNCTION_4_2();

  return AFCSendStatus(v30, v31, v32);
}

uint64_t AFCProcessServerPacket_cold_1(_DWORD *a1)
{
  __error();
  v2 = OUTLINED_FUNCTION_0_3();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 1418, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_2(_DWORD *a1)
{
  __error();
  v2 = OUTLINED_FUNCTION_5_2();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 2792, v6, v7, v8, v10);
  *a1 = result;
  return result;
}