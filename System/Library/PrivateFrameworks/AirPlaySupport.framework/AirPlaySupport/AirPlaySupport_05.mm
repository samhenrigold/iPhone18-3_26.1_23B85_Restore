uint64_t APSRTPPassThroughJitterBufferAcquireLowestInsertedNode(uint64_t a1, uint64_t *a2)
{
  v4 = 4294895295;
  if (a1 && a2)
  {
    _X0 = 0;
    _X1 = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    if (_X0)
    {
      _X4 = 0;
      v13 = _X0;
      do
      {
        _X7 = 0;
        __asm { CASPAL          X6, X7, X4, X5, [X8] }

        v16 = _X6 == v13;
        if (_X6 != v13)
        {
          v13 = _X6;
        }
      }

      while (!v16 && v13);
      if (v13)
      {
        v17 = 0;
        do
        {
          v18 = v13;
          v13 = *v13;
          *v18 = v17;
          v17 = v18;
        }

        while (v13);
        do
        {
          while (1)
          {
            v19 = v18;
            v18 = *v18;
            v20 = (v19 + 2);
            *v19 = 0;
            v19[1] = 0;
            do
            {
              v21 = atomic_load((a1 + 208));
              if ((v21 & 0x8000000000000000) == 0)
              {
                break;
              }

              v22 = *(*v20 + 4);
              if (v22 - v21 < 0)
              {
                v28 = 1;
                v29 = "NO";
                goto LABEL_29;
              }

              if (v22 - ((HIDWORD(v21) & 0x7FFFFFFF) + v21) < 0)
              {
                break;
              }

              v23 = v21;
              atomic_compare_exchange_strong((a1 + 208), &v23, v21 & 0x7FFFFFFFFFFFFFFFLL);
            }

            while (v23 != v21);
            while (1)
            {
              v24 = atomic_load((a1 + 116));
              if (!v24)
              {
                atomic_compare_exchange_strong((a1 + 116), &v24, 1u);
                if (!v24)
                {
                  break;
                }
              }

              atomic_fetch_add((a1 + 120), 1u);
              pthread_yield_np();
            }

            v25 = *(a1 + 200);
            while (1)
            {
              v25 = v25[1];
              if (v25 == *(a1 + 200))
              {
                break;
              }

              v26 = *(v25[2] + 4);
              v27 = *(*v20 + 4);
              if (v26 - v27 <= 0)
              {
                if (v26 == v27)
                {
                  v28 = 1;
                  v29 = "NO";
                  goto LABEL_27;
                }

                break;
              }
            }

            v28 = 0;
            v30 = *v25;
            *v19 = *v25;
            v19[1] = v25;
            *(v30 + 8) = v19;
            *v19[1] = v19;
            v29 = "YES";
LABEL_27:
            atomic_store(0, (a1 + 116));
LABEL_29:
            if (gLogCategory_APSRTPPassThroughJitterBuffer <= 30 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APSRTPPassThroughJitterBuffer, "void apsptjb_insertNodeIntoSortedList(APSRTPPassThroughJitterBufferRef, APSRTPPassThroughJitterBufferNode *)", 33554462, "[%{ptr}] Sort node: %{ptr}; did insert: %s\n", a1, v20, v29);
            }

            if ((v28 & 1) == 0)
            {
              break;
            }

            APSRTPPassThroughJitterBufferRelinquishNode(a1, v20);
            if (!v18)
            {
              goto LABEL_37;
            }
          }

          atomic_fetch_add((a1 + 112), 1u);
        }

        while (v18);
      }
    }

LABEL_37:
    while (1)
    {
      v31 = atomic_load((a1 + 116));
      if (!v31)
      {
        atomic_compare_exchange_strong((a1 + 116), &v31, 1u);
        if (!v31)
        {
          break;
        }
      }

      atomic_fetch_add((a1 + 120), 1u);
      pthread_yield_np();
    }

    v32 = atomic_load((a1 + 208));
    v33 = *(a1 + 200);
    v34 = *v33;
    if (*v33 == v33)
    {
LABEL_44:
      *a2 = 0;
      v4 = 4294895294;
    }

    else
    {
      while (1)
      {
        v36 = *v34;
        v35 = (v34 + 2);
        *v33 = v36;
        v36[1] = v33;
        *a2 = v35;
        atomic_fetch_add((a1 + 112), 0xFFFFFFFF);
        if ((v32 & 0x8000000000000000) == 0)
        {
          break;
        }

        v37 = *(*v35 + 4);
        if (v37 - v32 >= 0)
        {
          if (v37 - ((HIDWORD(v32) & 0x7FFFFFFF) + v32) >= 0)
          {
            v4 = 0;
            atomic_compare_exchange_strong((a1 + 208), &v38, v32 & 0x7FFFFFFFFFFFFFFFLL);
            goto LABEL_48;
          }

          break;
        }

        APSRTPPassThroughJitterBufferRelinquishNode(a1, v35);
        v32 = atomic_load((a1 + 208));
        v33 = *(a1 + 200);
        v34 = *v33;
        if (*v33 == v33)
        {
          goto LABEL_44;
        }
      }

      v4 = 0;
    }

LABEL_48:
    atomic_store(0, (a1 + 116));
  }

  if (gLogCategory_APSRTPPassThroughJitterBuffer <= 30 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
  {
    if (a2)
    {
      v39 = *a2;
      v40 = "";
    }

    else
    {
      v39 = 0;
      v40 = " <<<---- err no outNodePtr";
    }

    LogPrintF(&gLogCategory_APSRTPPassThroughJitterBuffer, "OSStatus APSRTPPassThroughJitterBufferAcquireLowestInsertedNode(APSRTPPassThroughJitterBufferRef, APSRTPPassThroughJitterBufferNode **)", 33554462, "[%{ptr}] Pop node: %{ptr} %s\n", a1, v39, v40);
  }

  return v4;
}

uint64_t APSRTPPassThroughJitterBufferGetInsertedNodeCount(uint64_t result)
{
  if (result)
  {
    return atomic_load((result + 112));
  }

  return result;
}

uint64_t APSRTPPassThroughJitterBufferFlush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 4294895295;
  if (a1)
  {
    if (a2 - a3 >= 1)
    {
      APSLogErrorAt(0);
    }

    else
    {
      if (gLogCategory_APSRTPPassThroughJitterBuffer <= 30 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSRTPPassThroughJitterBuffer, "OSStatus APSRTPPassThroughJitterBufferFlush(APSRTPPassThroughJitterBufferRef, uint32_t, uint32_t)", 33554462, "[%{ptr}] Flush: until %u; timeout: %u\n", a1, a2, a3);
      }

      v3 = 0;
      atomic_store(a2 | (((a3 - a2) | 0x80000000) << 32), (a1 + 208));
    }
  }

  return v3;
}

unint64_t APSRTPPassThroughJitterBufferIsFlushing(unint64_t result)
{
  if (result)
  {
    v1 = atomic_load((result + 208));
    return v1 >> 63;
  }

  return result;
}

uint64_t APSRTPPassThroughJitterBufferCreate(uint64_t a1, int a2, uint64_t a3, const void *a4, uint64_t *a5)
{
  if (a2 <= 0)
  {
    v37 = 4294895295;
LABEL_33:
    APSLogErrorAt(0);
    return v37;
  }

  if (!a3)
  {
    v37 = 4294895295;
    goto LABEL_33;
  }

  if (!a5)
  {
    v37 = 4294895295;
    goto LABEL_33;
  }

  v8 = a2;
  if (APSRTPPassThroughJitterBufferGetTypeID_sRegisterAPSRTPPassThroughJitterBufferOnce != -1)
  {
    dispatch_once_f(&APSRTPPassThroughJitterBufferGetTypeID_sRegisterAPSRTPPassThroughJitterBufferOnce, 0, registerAPSRTPPassThroughJitterBuffer);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return 4294895296;
  }

  v10 = Instance;
  *(Instance + 16) = v8;
  *(Instance + 24) = a3;
  if (a4)
  {
    v11 = CFRetain(a4);
    v8 = *(v10 + 16);
  }

  else
  {
    v11 = 0;
  }

  *(v10 + 32) = v11;
  v12 = 72 * v8;
  v13 = MEMORY[0x223DB3470](a4, v12, 0x107004068D07E41, 0);
  *(v10 + 40) = v13;
  if (!v13)
  {
    APSLogErrorAt(0);
    if (gLogCategory_APSRTPPassThroughJitterBuffer <= 90 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSRTPPassThroughJitterBuffer, "OSStatus APSRTPPassThroughJitterBufferCreate(CFAllocatorRef, int32_t, size_t, CFAllocatorRef, APSRTPPassThroughJitterBufferRef *)", 33554522, "Error allocating node holders storage of size %u from allocator %{ptr} %@\n", v12, a4, a4);
    }

    goto LABEL_44;
  }

  v14 = *(v10 + 24) * *(v10 + 16);
  v15 = MEMORY[0x223DB3470](a4, v14, 0x100004077774924, 0);
  *(v10 + 48) = v15;
  if (!v15)
  {
    APSLogErrorAt(0);
    if (gLogCategory_APSRTPPassThroughJitterBuffer <= 90 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSRTPPassThroughJitterBuffer, "OSStatus APSRTPPassThroughJitterBufferCreate(CFAllocatorRef, int32_t, size_t, CFAllocatorRef, APSRTPPassThroughJitterBufferRef *)", 33554522, "Error allocating node buffer storage of size %u from allocator %{ptr} %@\n", v14, a4, a4);
    }

LABEL_44:
    CFRelease(v10);
    return 4294895296;
  }

  v16 = *(v10 + 16);
  _X2 = *(v10 + 40);
  if (v16 != 1)
  {
    v18 = *(v10 + 24);
    v19 = _X2 + 72;
    v20 = (v16 - 1);
    do
    {
      *(v19 - 32) = v15;
      *(v19 - 72) = v19;
      v15 += v18;
      v19 += 72;
      --v20;
    }

    while (v20);
  }

  _X4 = 0;
  v22 = (_X2 + 72 * (v16 - 1));
  v22[5] = v15;
  *v22 = 0;
  v23 = *(v10 + 96);
  do
  {
    _X7 = *(v10 + 104);
    __asm { CASPAL          X6, X7, X4, X5, [X9] }

    _ZF = _X6 == v23;
    v23 = _X6;
  }

  while (!_ZF);
  _X0 = 0;
  v31 = *(v10 + 80);
  do
  {
    _X7 = *(v10 + 88);
    __asm { CASPAL          X6, X7, X0, X1, [X9] }

    _ZF = _X6 == v31;
    v31 = _X6;
  }

  while (!_ZF);
  v34 = *(v10 + 64);
  do
  {
    _X5 = *(v10 + 72);
    __asm { CASPAL          X4, X5, X2, X3, [X9] }

    _ZF = _X4 == v34;
    v34 = _X4;
  }

  while (!_ZF);
  *(v10 + 128) = v10 + 128;
  *(v10 + 136) = v10 + 128;
  *(v10 + 200) = v10 + 128;
  atomic_store(0, (v10 + 112));
  if (gLogCategory_APSRTPPassThroughJitterBuffer > 50)
  {
    goto LABEL_28;
  }

  if (gLogCategory_APSRTPPassThroughJitterBuffer == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_28;
    }

    v16 = *(v10 + 16);
  }

  LogPrintF(&gLogCategory_APSRTPPassThroughJitterBuffer, "OSStatus APSRTPPassThroughJitterBufferCreate(CFAllocatorRef, int32_t, size_t, CFAllocatorRef, APSRTPPassThroughJitterBufferRef *)", 33554482, "Created %{ptr}; nodeCount: %u; nodeBufferSize: %u\n", v10, v16, *(v10 + 24));
LABEL_28:
  v37 = 0;
  *a5 = v10;
  return v37;
}

uint64_t registerAPSRTPPassThroughJitterBuffer()
{
  sAPSRTPPassThroughJitterBufferClass = 0;
  unk_27D00BBF0 = "APSRTPPassThroughJitterBuffer";
  qword_27D00BBF8 = APSRTPPassThroughJitterBufferInit;
  unk_27D00BC00 = 0;
  qword_27D00BC08 = APSRTPPassThroughJitterBufferFinalize;
  unk_27D00BC10 = 0;
  qword_27D00BC18 = 0;
  unk_27D00BC20 = 0;
  qword_27D00BC28 = APSRTPPassThroughJitterBufferCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sAPSRTPPassThroughJitterBufferID = result;
  return result;
}

__CFString *APSRTPPassThroughJitterBufferCopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v1, 0);
  CFStringAppendFormat(Mutable, 0, @"APSRTPPassThroughJitterBuffer");
  return Mutable;
}

void APSRTPPassThroughJitterBufferFinalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFAllocatorDeallocate(*(a1 + 32), v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFAllocatorDeallocate(*(a1 + 32), v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

double APSRTPPassThroughJitterBufferInit(_OWORD *a1)
{
  result = 0.0;
  a1[28] = 0u;
  a1[29] = 0u;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t APSRTPPassThroughJitterBufferGetTypeID()
{
  if (APSRTPPassThroughJitterBufferGetTypeID_sRegisterAPSRTPPassThroughJitterBufferOnce != -1)
  {
    dispatch_once_f(&APSRTPPassThroughJitterBufferGetTypeID_sRegisterAPSRTPPassThroughJitterBufferOnce, 0, registerAPSRTPPassThroughJitterBuffer);
  }

  return sAPSRTPPassThroughJitterBufferID;
}

uint64_t APSClockDriftMonitorGetTypeID()
{
  if (gAPSClockDriftMonitorInitOnce != -1)
  {
    dispatch_once_f(&gAPSClockDriftMonitorInitOnce, 0, _APSClockDriftMonitorGetTypeID);
  }

  return gAPSClockDriftMonitorTypeID;
}

uint64_t _APSClockDriftMonitorGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSClockDriftMonitorTypeID = result;
  return result;
}

void _APSClockDriftMonitorFinalize(uint64_t a1)
{
  if (gLogCategory_APSClockDriftMonitor <= 30 && (gLogCategory_APSClockDriftMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSClockDriftMonitor, "void _APSClockDriftMonitorFinalize(CFTypeRef)", 33554462, "[%{ptr}] Finalized", a1);
  }

  APSClockDriftMonitorSuspend(a1);
  FigSimpleMutexDestroy();
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 16));
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 24) = 0;
  }
}

uint64_t APSClockDriftMonitorSuspend(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 136))
    {
      v2 = MEMORY[0x277CC0898];
      v3 = *MEMORY[0x277CC0898];
      *(a1 + 56) = *MEMORY[0x277CC0898];
      v4 = *(v2 + 16);
      *(a1 + 72) = v4;
      *(a1 + 80) = v3;
      *(a1 + 96) = v4;
      CMTimebaseRemoveTimerDispatchSource(*(a1 + 40), *(a1 + 16));
      *(a1 + 136) = 0;
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSClockDriftMonitorCreate(void *a1, void *a2, int64_t a3, uint64_t a4, CFTypeRef *a5)
{
  if (!a1 || !a2 || !a3 || !a4 || !a5)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (gAPSClockDriftMonitorInitOnce != -1)
  {
    dispatch_once_f(&gAPSClockDriftMonitorInitOnce, 0, _APSClockDriftMonitorGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v11 = Instance;
  Instance[7] = 0u;
  Instance[8] = 0u;
  Instance[5] = 0u;
  Instance[6] = 0u;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[1] = 0u;
  Instance[2] = 0u;
  v12 = FigDispatchQueueCreateWithPriority();
  *(v11 + 3) = v12;
  if (!v12 || (v13 = FigSimpleMutexCreate(), (*(v11 + 4) = v13) == 0))
  {
    APSLogErrorAt(0);
    v21 = 4294960568;
LABEL_47:
    v34 = v11;
    goto LABEL_48;
  }

  v14 = CFGetTypeID(a1);
  if (v14 == CMClockGetTypeID())
  {
    v15 = CFGetTypeID(a2);
    if (v15 == CMClockGetTypeID())
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = CMTimebaseCreateWithSourceClock(*MEMORY[0x277CBECE8], a1, v11 + 5);
      if (v17)
      {
        v21 = v17;
        goto LABEL_60;
      }

      v18 = *(v11 + 5);
      CMClockGetTime(&immediateSourceTime, a1);
      v36 = *MEMORY[0x277CC08F0];
      *&timebaseTime.value = *MEMORY[0x277CC08F0];
      v19 = *(MEMORY[0x277CC08F0] + 16);
      timebaseTime.epoch = v19;
      v17 = CMTimebaseSetRateAndAnchorTime(v18, 1.0, &timebaseTime, &immediateSourceTime);
      if (v17)
      {
        v21 = v17;
        goto LABEL_60;
      }

      v17 = CMTimebaseCreateWithSourceClock(v16, a2, v11 + 6);
      if (v17)
      {
        v21 = v17;
        goto LABEL_60;
      }

      v20 = *(v11 + 6);
      CMClockGetTime(&immediateSourceTime, a2);
      *&timebaseTime.value = v36;
      timebaseTime.epoch = v19;
      v17 = CMTimebaseSetRateAndAnchorTime(v20, 1.0, &timebaseTime, &immediateSourceTime);
      if (v17)
      {
        v21 = v17;
LABEL_60:
        APSLogErrorAt(v17);
        goto LABEL_47;
      }

      goto LABEL_31;
    }
  }

  v22 = CFGetTypeID(a1);
  if (v22 == CMTimebaseGetTypeID())
  {
    v23 = CFGetTypeID(a2);
    if (v23 == CMTimebaseGetTypeID())
    {
      *(v11 + 5) = CFRetain(a1);
LABEL_30:
      *(v11 + 6) = CFRetain(a2);
      goto LABEL_31;
    }
  }

  v24 = CFGetTypeID(a1);
  if (v24 != CMTimebaseGetTypeID() || (v25 = CFGetTypeID(a2), v25 != CMClockGetTypeID()))
  {
    v27 = CFGetTypeID(a1);
    if (v27 != CMClockGetTypeID() || (v28 = CFGetTypeID(a2), v28 != CMTimebaseGetTypeID()))
    {
      if (gLogCategory_APSClockDriftMonitor <= 90 && (gLogCategory_APSClockDriftMonitor != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSClockDriftMonitor, "OSStatus APSClockDriftMonitorCreate(CMClockOrTimebaseRef, CMClockOrTimebaseRef, uint64_t, uint64_t, APSClockDriftMonitorRef *)", 33554522, "[%{ptr}] SourceClockOrTimebase and/or RemoteClockOrTimebase type error ", v11);
      }

      v21 = 4294960591;
      goto LABEL_47;
    }

    v17 = CMTimebaseCreateWithSourceClock(*MEMORY[0x277CBECE8], a1, v11 + 5);
    if (v17)
    {
      v21 = v17;
      goto LABEL_60;
    }

    v29 = *(v11 + 5);
    CMClockGetTime(&immediateSourceTime, a1);
    timebaseTime = **&MEMORY[0x277CC08F0];
    v17 = CMTimebaseSetRateAndAnchorTime(v29, 1.0, &timebaseTime, &immediateSourceTime);
    if (v17)
    {
      v21 = v17;
      goto LABEL_60;
    }

    goto LABEL_30;
  }

  *(v11 + 5) = CFRetain(a1);
  v17 = CMTimebaseCreateWithSourceClock(*MEMORY[0x277CBECE8], a2, v11 + 6);
  if (v17)
  {
    v21 = v17;
    goto LABEL_60;
  }

  v26 = *(v11 + 6);
  CMClockGetTime(&immediateSourceTime, a2);
  timebaseTime = **&MEMORY[0x277CC08F0];
  v17 = CMTimebaseSetRateAndAnchorTime(v26, 1.0, &timebaseTime, &immediateSourceTime);
  if (v17)
  {
    v21 = v17;
    goto LABEL_60;
  }

LABEL_31:
  v30 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v31 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, *(v11 + 3));
  *(v11 + 2) = v31;
  if (v31)
  {
    v32 = v31;
    if (v30)
    {
      v33 = CFRetain(v30);
    }

    else
    {
      v33 = 0;
    }

    dispatch_set_context(v32, v33);
    dispatch_source_set_event_handler_f(*(v11 + 2), clockDriftMonitor_periodicallyTimer);
    dispatch_source_set_cancel_handler_f(*(v11 + 2), FigCFRelease_1717);
    dispatch_resume(*(v11 + 2));
    CMTimeMake(&immediateSourceTime, a3, 1000);
    *(v11 + 104) = immediateSourceTime;
    *(v11 + 16) = a4;
    if (gLogCategory_APSClockDriftMonitor <= 50 && (gLogCategory_APSClockDriftMonitor != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSClockDriftMonitor, "OSStatus APSClockDriftMonitorCreate(CMClockOrTimebaseRef, CMClockOrTimebaseRef, uint64_t, uint64_t, APSClockDriftMonitorRef *)", 33554482, "[%{ptr}] Created with source time source %{ptr} and remote time source %{ptr}", v11, a1, a2);
    }

    v21 = 0;
    *a5 = CFRetain(v11);
  }

  else
  {
    APSLogErrorAt(0);
    v21 = 4294960568;
  }

  CFRelease(v11);
  if (v30)
  {
    v34 = v30;
LABEL_48:
    CFRelease(v34);
  }

  return v21;
}

void FigCFRelease_1717(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void clockDriftMonitor_periodicallyTimer(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  memset(&v18, 0, sizeof(v18));
  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, sizeof(v16));
  memset(&v15, 0, sizeof(v15));
  memset(&v14, 0, sizeof(v14));
  if (v1)
  {
    v2 = v1;
    FigSimpleMutexLock();
    if (*(v2 + 136))
    {
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v17, HostTimeClock);
      v4 = CMClockGetHostTimeClock();
      v5 = *(v2 + 40);
      v12 = v17;
      CMSyncConvertTime(&lhs, &v12, v4, v5);
      v12 = *(v2 + 56);
      CMTimeSubtract(&v16, &lhs, &v12);
      v6 = CMClockGetHostTimeClock();
      v7 = *(v2 + 48);
      v12 = v17;
      CMSyncConvertTime(&lhs, &v12, v6, v7);
      v12 = *(v2 + 80);
      CMTimeSubtract(&v15, &lhs, &v12);
      lhs = v16;
      v12 = v15;
      CMTimeSubtract(&v14, &lhs, &v12);
      v12 = v14;
      CMTimeAbsoluteValue(&lhs, &v12);
      v12 = *(v2 + 104);
      if (CMTimeCompare(&lhs, &v12) < 1)
      {
        v9 = 0;
      }

      else
      {
        v8 = *MEMORY[0x277CBECE8];
        lhs = v14;
        v9 = CMTimeCopyAsDictionary(&lhs, v8);
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      CMTimebaseGetTime(&lhs, *(v2 + 40));
      CMTimeMake(&v12, *(v2 + 128), 1000);
      CMTimeAdd(&v18, &lhs, &v12);
      v10 = *(v2 + 40);
      v11 = *(v2 + 16);
      lhs = v18;
      CMTimebaseSetTimerDispatchSourceNextFireTime(v10, v11, &lhs, 0);
    }

    else
    {
      v9 = 0;
    }

    FigSimpleMutexUnlock();
    CFRelease(v2);
    if (v9)
    {
      CFRelease(v9);
    }
  }
}

uint64_t APSClockDriftMonitorResume(uint64_t a1)
{
  v13 = **&MEMORY[0x277CC0898];
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  FigSimpleMutexLock();
  if (*(a1 + 136))
  {
    APSLogErrorAt(0);
    v10 = "APSClockDriftMonitor already resumed.";
LABEL_14:
    v8 = 4294960587;
    APSSignalErrorAt(0xFFFFE5CBLL, v10, "APSClockDriftMonitorResume");
    goto LABEL_8;
  }

  if (CMTimebaseGetRate(*(a1 + 40)) <= 0.0)
  {
    APSLogErrorAt(0);
    v10 = "SourceTimebase is not running";
    goto LABEL_14;
  }

  if (CMTimebaseGetRate(*(a1 + 48)) <= 0.0)
  {
    APSLogErrorAt(0);
    v10 = "RemoteTimebase is not running";
    goto LABEL_14;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v13, HostTimeClock);
  v3 = CMClockGetHostTimeClock();
  v4 = *(a1 + 40);
  v11 = v13;
  CMSyncConvertTime(&v12, &v11, v3, v4);
  *(a1 + 56) = v12;
  v5 = CMClockGetHostTimeClock();
  v6 = *(a1 + 48);
  v11 = v13;
  CMSyncConvertTime(&v12, &v11, v5, v6);
  *(a1 + 80) = v12;
  v7 = CMTimebaseAddTimerDispatchSource(*(a1 + 40), *(a1 + 16));
  if (v7)
  {
    v8 = v7;
    goto LABEL_16;
  }

  v7 = CMTimebaseSetTimerDispatchSourceToFireImmediately(*(a1 + 40), *(a1 + 16));
  v8 = v7;
  if (v7)
  {
LABEL_16:
    APSLogErrorAt(v7);
    goto LABEL_8;
  }

  *(a1 + 136) = 1;
LABEL_8:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t APSAudioIOAssertionTimingControllerGetTypeID()
{
  if (gAPSAudioIOAssertionTimingControllerInitOnce != -1)
  {
    dispatch_once_f(&gAPSAudioIOAssertionTimingControllerInitOnce, 0, _APSAudioIOAssertionTimingControllerGetTypeID);
  }

  return gAPSAudioIOAssertionTimingControllerTypeID;
}

uint64_t _APSAudioIOAssertionTimingControllerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSAudioIOAssertionTimingControllerTypeID = result;
  return result;
}

void _APSAudioIOAssertionTimingControllerFinalize(uint64_t a1)
{
  if (gLogCategory_APSAudioIOAssertionTimingController <= 50 && (gLogCategory_APSAudioIOAssertionTimingController != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioIOAssertionTimingController, "void _APSAudioIOAssertionTimingControllerFinalize(CFTypeRef)", 33554482, "[%{ptr}] '%@' finalized", a1, *(a1 + 16));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_sync_f(*(a1 + 24), a1, audioIOAssertionTimingController_releaseAndClearAssertion);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {

    CFRelease(v6);
  }
}

void audioIOAssertionTimingController_releaseAndClearAssertion(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (gLogCategory_APSAudioIOAssertionTimingController > 50)
    {
LABEL_7:
      CFRelease(v2);
      *(a1 + 40) = 0;
      return;
    }

    if (gLogCategory_APSAudioIOAssertionTimingController == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_6:
        v2 = *(a1 + 40);
        if (!v2)
        {
          return;
        }

        goto LABEL_7;
      }

      v2 = *(a1 + 40);
    }

    LogPrintF(&gLogCategory_APSAudioIOAssertionTimingController, "void audioIOAssertionTimingController_releaseAndClearAssertion(void *)", 33554482, "[%{ptr}] '%@' timer releasing APSAudioIOAssertion [%{ptr}]", a1, *(a1 + 16), v2);
    goto LABEL_6;
  }
}

uint64_t APSAudioIOAssertionTimingControllerCreate(__CFString *a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (gAPSAudioIOAssertionTimingControllerInitOnce != -1)
    {
      dispatch_once_f(&gAPSAudioIOAssertionTimingControllerInitOnce, 0, _APSAudioIOAssertionTimingControllerGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      if (a1)
      {
        v6 = a1;
      }

      else
      {
        v6 = &stru_28358B348;
      }

      *(v5 + 16) = CFRetain(v6);
      v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v8 = dispatch_queue_create("APSAudioIOAssertionTimingController", v7);
      *(v5 + 24) = v8;
      if (v8 && (v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8), (*(v5 + 32) = v9) != 0))
      {
        dispatch_source_set_timer(v9, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_set_context(*(v5 + 32), v5);
        dispatch_source_set_event_handler_f(*(v5 + 32), audioIOAssertionTimingController_releaseAndClearAssertion);
        dispatch_resume(*(v5 + 32));
        if (gLogCategory_APSAudioIOAssertionTimingController <= 50 && (gLogCategory_APSAudioIOAssertionTimingController != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APSAudioIOAssertionTimingController, "OSStatus APSAudioIOAssertionTimingControllerCreate(CFStringRef, APSAudioIOAssertionTimingControllerRef *)", 33554482, "[%{ptr}] '%@' created", v5, *(v5 + 16));
        }

        v10 = 0;
        *a2 = CFRetain(v5);
      }

      else
      {
        APSLogErrorAt(0);
        v10 = 4294960568;
      }

      CFRelease(v5);
    }

    else
    {
      APSLogErrorAt(0);
      return 4294960568;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v10;
}

uint64_t APSAudioIOAssertionTimingControllerAssertUntilTime(uint64_t a1, uint64_t a2)
{
  context[0] = a1;
  context[1] = a2;
  if (a1)
  {
    v4 = 0;
    dispatch_sync_f(*(a1 + 24), context, audioIOAssertionTimingController_assertUntilTimeInternal);
    return v4;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t audioIOAssertionTimingController_assertUntilTimeInternal(dispatch_time_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (!a1[1])
  {
    if (!v3)
    {
      goto LABEL_15;
    }

    if (gLogCategory_APSAudioIOAssertionTimingController <= 50)
    {
      if (gLogCategory_APSAudioIOAssertionTimingController != -1)
      {
LABEL_10:
        LogPrintF(&gLogCategory_APSAudioIOAssertionTimingController, "void audioIOAssertionTimingController_assertUntilTimeInternal(void *)", 33554482, "[%{ptr}] '%@' NOW expiry releasing APSAudioIOAssertion [%{ptr}]", v2, *(v2 + 16), v3);
        v2 = *a1;
        goto LABEL_12;
      }

      v5 = _LogCategory_Initialize();
      v2 = *a1;
      if (v5)
      {
        v3 = *(v2 + 40);
        goto LABEL_10;
      }
    }

LABEL_12:
    v6 = *(v2 + 40);
    if (v6)
    {
      CFRelease(v6);
      *(*a1 + 40) = 0;
    }

    goto LABEL_15;
  }

  if (v3)
  {
    goto LABEL_15;
  }

  result = APSAudioIOAssertionCreate(*(v2 + 16), (*a1 + 40));
  if (!result)
  {
    if (gLogCategory_APSAudioIOAssertionTimingController > 50)
    {
LABEL_19:
      dispatch_source_set_timer(*(*a1 + 32), a1[1], 0xFFFFFFFFFFFFFFFFLL, 0);
      result = 0;
      goto LABEL_20;
    }

    if (gLogCategory_APSAudioIOAssertionTimingController != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APSAudioIOAssertionTimingController, "void audioIOAssertionTimingController_assertUntilTimeInternal(void *)", 33554482, "[%{ptr}] '%@' created APSAudioIOAssertion [%{ptr}]", *a1, *(*a1 + 16), *(*a1 + 40));
    }

LABEL_15:
    if (gLogCategory_APSAudioIOAssertionTimingController <= 30 && (gLogCategory_APSAudioIOAssertionTimingController != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioIOAssertionTimingController, "void audioIOAssertionTimingController_assertUntilTimeInternal(void *)", 33554462, "[%{ptr}] '%@' assertUntilTime", *a1, *(*a1 + 16));
    }

    goto LABEL_19;
  }

  if (gLogCategory_APSAudioIOAssertionTimingController <= 90)
  {
    v7 = result;
    if (gLogCategory_APSAudioIOAssertionTimingController != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APSAudioIOAssertionTimingController, "void audioIOAssertionTimingController_assertUntilTimeInternal(void *)", 33554522, "[%{ptr}] '%@' failed to create APSAudioIOAssertion err=%#m", *a1, *(*a1 + 16), v7);
    }

    result = v7;
  }

LABEL_20:
  *(a1 + 4) = result;
  return result;
}

uint64_t APSStallMonitorActivityGetTypeID()
{
  if (gAPSStallMonitorActivityInitOnce != -1)
  {
    dispatch_once_f(&gAPSStallMonitorActivityInitOnce, 0, _APSStallMonitorActivityGetTypeID);
  }

  return gAPSStallMonitorActivityTypeID;
}

uint64_t _APSStallMonitorActivityGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSStallMonitorActivityTypeID = result;
  return result;
}

void _APSStallMonitorActivityFinalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4[0] = *(a1 + 40);
    v4[1] = a1;
    dispatch_sync_f(*v2, v4, stallMonitor_deregisterActivity);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t APSStallMonitorActivityCreate(const void *a1, int a2, int a3, uint64_t *a4)
{
  if (a1 && a2)
  {
    if (gAPSStallMonitorActivityInitOnce != -1)
    {
      dispatch_once_f(&gAPSStallMonitorActivityInitOnce, 0, _APSStallMonitorActivityGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v9 = Instance;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      *(Instance + 24) = CFRetain(a1);
      *(v9 + 32) = a2;
      *(v9 + 36) = a3;
      if (_APSStallMonitorGetInstance_sOnce != -1)
      {
        dispatch_once_f(&_APSStallMonitorGetInstance_sOnce, &_APSStallMonitorGetInstance_sInstance, stallMonitor_init);
      }

      v11[0] = &_APSStallMonitorGetInstance_sInstance;
      v11[1] = v9;
      dispatch_sync_f(_APSStallMonitorGetInstance_sInstance, v11, stallMonitor_registerActivity);
      result = 0;
      *(v9 + 40) = &_APSStallMonitorGetInstance_sInstance;
      *a4 = v9;
    }

    else
    {
      APSLogErrorAt(0);
      return 4294960568;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

void stallMonitor_init(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  *a1 = dispatch_queue_create("APSStallMonitor", v2);
  *(a1 + 8) = dispatch_queue_create("APSStallMonitor.notification", 0);
  *(a1 + 16) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *a1);
  *(a1 + 24) = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
  *(a1 + 32) = 0;
  APSSettingsGetIntWithOverrideAndDefault(@"stallMonitorReportBackoffSecs", 0, 86400);
  *(a1 + 40) = SecondsToUpTicks();
  dispatch_set_context(*(a1 + 16), a1);
  dispatch_source_set_event_handler_f(*(a1 + 16), stallMonitor_timerFire);
  v3 = *(a1 + 16);
  v4 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v3, v4, 0x3B9ACA00uLL, 0xF4240uLL);
  v5 = *(a1 + 16);

  dispatch_resume(v5);
}

CFMutableStringRef stallMonitor_activityApplier(CFMutableStringRef result, uint64_t a2)
{
  v3 = result;
  data_low = LODWORD(result->data);
  while ((data_low & 1) != 0)
  {
    isa_low = LODWORD(result[1].isa);
    if (isa_low < data_low >> 1)
    {
      break;
    }

    v6 = data_low + 2;
    v7 = data_low;
    atomic_compare_exchange_strong_explicit(&result->data, &v7, data_low + 2, memory_order_relaxed, memory_order_relaxed);
    v8 = v7 == data_low;
    data_low = v7;
    if (v8)
    {
      if (isa_low >= v6 >> 1)
      {
        return result;
      }

      if (gLogCategory_APSStallMonitor <= 90)
      {
        if (gLogCategory_APSStallMonitor != -1)
        {
          goto LABEL_9;
        }

        if (_LogCategory_Initialize())
        {
          isa_low = LODWORD(v3[1].isa);
LABEL_9:
          LogPrintF(&gLogCategory_APSStallMonitor, "void stallMonitor_activityApplier(const void *, void *)", 33554522, "%@{f=0x%x} stalled for >= %us", v3->length, HIDWORD(v3[1].isa), isa_low);
        }
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      result = *(a2 + 16);
      if (result || (result = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0), (*(a2 + 16) = result) != 0))
      {
        if (*(a2 + 24))
        {
          goto LABEL_16;
        }

        result = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
        *(a2 + 24) = result;
        if (result)
        {
          result = *(a2 + 16);
LABEL_16:
          result = CFStringAppendF(result, "%@{f=0x%x}, ", v3->length, HIDWORD(v3[1].isa));
          if (!result)
          {
            result = CFStringAppendF(*(a2 + 24), "%@{f=0x%x} stalled for >= %us\n", v3->length, HIDWORD(v3[1].isa), LODWORD(v3[1].isa));
            if (!result)
            {
              *(a2 + 32) |= HIDWORD(v3[1].isa);
              return result;
            }
          }
        }
      }

      return APSLogErrorAt(result);
    }
  }

  return result;
}

uint64_t APSStallMonitorActivityBegin(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 16), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return 4294960575;
  }

  else
  {
    return 0;
  }
}

uint64_t APSStallMonitorActivityEnd(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (atomic_exchange_explicit((a1 + 16), 0, memory_order_release))
  {
    return 0;
  }

  return 4294960576;
}

uint64_t APSSystemGetUserVersion()
{
  if (APSSystemGetUserVersion_prefsOnce != -1)
  {
    dispatch_once(&APSSystemGetUserVersion_prefsOnce, &__block_literal_global_1773);
  }

  v0 = APSSystemGetUserVersion_prefsUserVersion;
  if (APSSystemGetUserVersion_prefsUserVersion >= 3)
  {
    if (senderSupportsAirPlay1080p_once != -1)
    {
      dispatch_once(&senderSupportsAirPlay1080p_once, &__block_literal_global_375);
    }

    v0 = senderSupportsAirPlay1080p_result;
  }

  if (gLogCategory_APSSystemUtils <= 30 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSSystemUtils, "int APSSystemGetUserVersion(void)", 33554462, "reporting UserVersion %d\n", v0);
  }

  return v0;
}

uint64_t __senderSupportsAirPlay1080p_block_invoke()
{
  v0 = 0;
  v1 = *MEMORY[0x277CD2898];
  for (i = 1; ; i = 0)
  {
    v3 = i;
    v4 = IOServiceMatching(senderSupportsAirPlay1080p_drivers[v0]);
    result = IOServiceGetMatchingService(v1, v4);
    if (result)
    {
      break;
    }

    v0 = 1;
    if ((v3 & 1) == 0)
    {
      return result;
    }
  }

  senderSupportsAirPlay1080p_result = 1;

  return IOObjectRelease(result);
}

uint64_t __APSSystemGetUserVersion_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  APSSystemGetUserVersion_prefsUserVersion = result;
  if (result <= 2 && gLogCategory_APSSystemUtils <= 50)
  {
    if (gLogCategory_APSSystemUtils != -1)
    {
      return LogPrintF(&gLogCategory_APSSystemUtils, "int APSSystemGetUserVersion(void)_block_invoke", 33554482, "setting UserVersion to %d because of defaults write\n", result);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      LODWORD(result) = APSSystemGetUserVersion_prefsUserVersion;
      return LogPrintF(&gLogCategory_APSSystemUtils, "int APSSystemGetUserVersion(void)_block_invoke", 33554482, "setting UserVersion to %d because of defaults write\n", result);
    }
  }

  return result;
}

uint64_t APSIsAPMSpeaker()
{
  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  return APSIsAPMSpeaker_sIsAPMSpeaker;
}

uint64_t __APSIsAPMSpeaker_block_invoke()
{
  v0 = MGGetSInt32Answer();
  if (gLogCategory_APSSystemUtils <= 50 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
  {
    v1 = "no";
    if (v0 == 7)
    {
      v1 = "yes";
    }

    LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSIsAPMSpeaker(void)_block_invoke", 33554482, "APMSpeaker: %s\n", v1);
  }

  result = FigGetCFPreferenceNumberWithDefault();
  v3 = result != 0;
  APSIsAPMSpeaker_sIsAPMSpeaker = result != 0;
  if ((v0 == 7) != v3 && gLogCategory_APSSystemUtils <= 50)
  {
    if (gLogCategory_APSSystemUtils != -1)
    {
      return LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSIsAPMSpeaker(void)_block_invoke", 33554482, "Set APMSpeaker behavior to %d because of defaults write\n", v3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v3 = APSIsAPMSpeaker_sIsAPMSpeaker;
      return LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSIsAPMSpeaker(void)_block_invoke", 33554482, "Set APMSpeaker behavior to %d because of defaults write\n", v3);
    }
  }

  return result;
}

uint64_t APSIsIPhone()
{
  if (APSIsIPhone_onceToken != -1)
  {
    dispatch_once(&APSIsIPhone_onceToken, &__block_literal_global_28);
  }

  return APSIsIPhone_sIsiPhone;
}

uint64_t __APSIsIPhone_block_invoke()
{
  result = MGGetSInt32Answer();
  if (result == 1)
  {
    APSIsIPhone_sIsiPhone = 1;
  }

  return result;
}

uint64_t APSIsIPad()
{
  if (APSIsIPad_onceToken != -1)
  {
    dispatch_once(&APSIsIPad_onceToken, &__block_literal_global_30);
  }

  return APSIsIPad_sIsiPad;
}

uint64_t __APSIsIPad_block_invoke()
{
  result = MGGetSInt32Answer();
  if (result == 3)
  {
    APSIsIPad_sIsiPad = 1;
  }

  return result;
}

uint64_t APSIsEndpointClusteringEnabled()
{
  if (APSIsEndpointClusteringEnabled_sIsEndpointClusteringEnabledOnce != -1)
  {
    dispatch_once(&APSIsEndpointClusteringEnabled_sIsEndpointClusteringEnabledOnce, &__block_literal_global_32);
  }

  return APSIsEndpointClusteringEnabled_sIsEndpointClusteringEnabled;
}

uint64_t __APSIsEndpointClusteringEnabled_block_invoke()
{
  APSIsEndpointClusteringEnabled_sIsEndpointClusteringEnabled = 1;
  result = IsAppleInternalBuild();
  if (result)
  {
    result = APSSettingsGetIntWithOverrideAndDefault(@"enableClusterEndpoint", 0, APSIsEndpointClusteringEnabled_sIsEndpointClusteringEnabled);
    APSIsEndpointClusteringEnabled_sIsEndpointClusteringEnabled = result;
  }

  return result;
}

uint64_t APSIsPairingGroupEnabled()
{
  if (APSIsPairingGroupEnabled_sIsPairingGroupEnabledOnce != -1)
  {
    dispatch_once(&APSIsPairingGroupEnabled_sIsPairingGroupEnabledOnce, &__block_literal_global_37);
  }

  return APSIsPairingGroupEnabled_sIsPairingGroupEnabled;
}

uint64_t __APSIsPairingGroupEnabled_block_invoke()
{
  result = APSSettingsIsFeatureEnabled(@"PairingGroup");
  APSIsPairingGroupEnabled_sIsPairingGroupEnabled = result;
  return result;
}

uint64_t APSMultiPrimariesEnabled()
{
  if (APSMultiPrimariesEnabled_sMultiPrimariesEnabledOnce != -1)
  {
    dispatch_once(&APSMultiPrimariesEnabled_sMultiPrimariesEnabledOnce, &__block_literal_global_42);
  }

  return APSMultiPrimariesEnabled_sMultiPrimariesEnabled;
}

void __APSMultiPrimariesEnabled_block_invoke()
{
  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (APSIsAPMSpeaker_sIsAPMSpeaker)
  {
    if (APSSettingsIsFeatureEnabledInDomain(@"MediaRemote", @"multiplayer"))
    {
      APSMultiPrimariesEnabled_sMultiPrimariesEnabled = 1;
    }
  }
}

uint64_t APSNowPlayingSessionDataSourceEnabled()
{
  if (APSNowPlayingSessionDataSourceEnabled_sNowPlayingSessionDataSourceEnabledOnce != -1)
  {
    dispatch_once(&APSNowPlayingSessionDataSourceEnabled_sNowPlayingSessionDataSourceEnabledOnce, &__block_literal_global_50);
  }

  return APSNowPlayingSessionDataSourceEnabled_sNowPlayingSessionDataSourceEnabled;
}

void __APSNowPlayingSessionDataSourceEnabled_block_invoke()
{
  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (APSIsAPMSpeaker_sIsAPMSpeaker)
  {
    if (APSSettingsIsFeatureEnabledInDomain(@"MediaRemote", @"nowplayingsession_datasource"))
    {
      APSNowPlayingSessionDataSourceEnabled_sNowPlayingSessionDataSourceEnabled = 1;
    }
  }
}

uint64_t APSIsRemoteHALPluginLoadingEnabled()
{
  if (APSIsRemoteHALPluginLoadingEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsRemoteHALPluginLoadingEnabled_sOnce, &__block_literal_global_55_1815);
  }

  return APSIsRemoteHALPluginLoadingEnabled_sRemoteHalPluginLoadingEnabled;
}

uint64_t __APSIsRemoteHALPluginLoadingEnabled_block_invoke()
{
  result = FigIsAirplaydEnabled();
  APSIsRemoteHALPluginLoadingEnabled_sRemoteHalPluginLoadingEnabled = result;
  return result;
}

uint64_t APSIsExplicitEndpointManagerInitializationEnabledInMX()
{
  if (APSIsExplicitEndpointManagerInitializationEnabledInMX_sOnce != -1)
  {
    dispatch_once(&APSIsExplicitEndpointManagerInitializationEnabledInMX_sOnce, &__block_literal_global_57);
  }

  return APSIsExplicitEndpointManagerInitializationEnabledInMX_sEnabled;
}

uint64_t __APSIsExplicitEndpointManagerInitializationEnabledInMX_block_invoke()
{
  result = APSSettingsIsFeatureEnabledInDomain(@"MediaExperience", @"ExplicitInitializationForFigEndpointManagers");
  if (result)
  {
    APSIsExplicitEndpointManagerInitializationEnabledInMX_sEnabled = 1;
  }

  return result;
}

uint64_t APSIsSuntoryEnabled()
{
  if (APSIsSuntoryEnabled_sSuntoryEnabledOnce != -1)
  {
    dispatch_once(&APSIsSuntoryEnabled_sSuntoryEnabledOnce, &__block_literal_global_65);
  }

  return APSIsSuntoryEnabled_sSuntoryEnabled;
}

uint64_t __APSIsSuntoryEnabled_block_invoke()
{
  result = APSSettingsIsFeatureEnabledInDomain(@"MediaPlayer", @"Suntory");
  if (result)
  {
    APSIsSuntoryEnabled_sSuntoryEnabled = 1;
  }

  return result;
}

uint64_t APSIsProximitySenderEnabled()
{
  if (APSIsProximitySenderEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsProximitySenderEnabled_sOnce, &__block_literal_global_73_1831);
  }

  return APSIsProximitySenderEnabled_sProximitySenderEnabled;
}

uint64_t __APSIsProximitySenderEnabled_block_invoke()
{
  result = APSSettingsIsFeatureEnabled(@"ProximitySender");
  APSIsProximitySenderEnabled_sProximitySenderEnabled = result;
  return result;
}

uint64_t APSIsProximityReceiverEnabled()
{
  if (APSIsProximityReceiverEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsProximityReceiverEnabled_sOnce, &__block_literal_global_78);
  }

  return APSIsProximityReceiverEnabled_sProximityReceiverEnabled;
}

uint64_t __APSIsProximityReceiverEnabled_block_invoke()
{
  result = APSSettingsIsFeatureEnabled(@"ProximityReceiver");
  APSIsProximityReceiverEnabled_sProximityReceiverEnabled = result;
  return result;
}

uint64_t APSIsPermanentSpeakerGroupingEnabled(uint64_t a1)
{
  if (a1)
  {
    return *MEMORY[0x277CBED28] == a1;
  }

  if (APSIsPermanentSpeakerGroupingEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsPermanentSpeakerGroupingEnabled_sOnce, &__block_literal_global_83);
  }

  return APSIsPermanentSpeakerGroupingEnabled_sPSGEnabled;
}

uint64_t __APSIsPermanentSpeakerGroupingEnabled_block_invoke()
{
  result = APSSettingsIsFeatureEnabled(@"PermanentSpeakerGrouping");
  APSIsPermanentSpeakerGroupingEnabled_sPSGEnabled = result;
  return result;
}

uint64_t APSIsSetMRInfoCommandEnabled()
{
  if (APSIsSetMRInfoCommandEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsSetMRInfoCommandEnabled_sOnce, &__block_literal_global_88);
  }

  return APSIsSetMRInfoCommandEnabled_sSetMREnabled;
}

uint64_t __APSIsSetMRInfoCommandEnabled_block_invoke()
{
  result = APSSettingsIsFeatureEnabled(@"SetMRInfo");
  if (result)
  {
    APSIsSetMRInfoCommandEnabled_sSetMREnabled = 1;
  }

  return result;
}

uint64_t APSIsOpenNANReceiverEnabled()
{
  if (APSIsOpenNANReceiverEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsOpenNANReceiverEnabled_sOnce, &__block_literal_global_93);
  }

  return APSIsOpenNANReceiverEnabled_sOpenNANReceiverEnabled;
}

void __APSIsOpenNANReceiverEnabled_block_invoke()
{
  if (APSHasNANSupport_sHasNANSupportOnce != -1)
  {
    dispatch_once(&APSHasNANSupport_sHasNANSupportOnce, &__block_literal_global_219);
  }

  v0 = APSHasNANSupport_sHasNANSupport;
  if (APSHasNANSupport_sHasNANSupport)
  {
    v0 = APSSettingsIsFeatureEnabled(@"allowOpenNANReceiver") != 0;
  }

  APSIsOpenNANReceiverEnabled_sOpenNANReceiverEnabled = v0;
}

void __APSHasNANSupport_block_invoke()
{
  if (APSIsVirtualMachine_sCheckOnceForVM != -1)
  {
    dispatch_once(&APSIsVirtualMachine_sCheckOnceForVM, &__block_literal_global_342);
  }

  if (APSIsVirtualMachine_sIsVirtualMachine == 1)
  {
    if (gLogCategory_APSSystemUtils <= 50 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
    {

      LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSHasNANSupport(void)_block_invoke", 33554482, "NAN is not supported as we're running on a virtual machine");
    }
  }

  else
  {
    APSHasNANSupport_sHasNANSupport = MGGetBoolAnswer();
  }
}

uint64_t __APSIsVirtualMachine_block_invoke()
{
  v4 = 0;
  v3 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v4, &v3, 0, 0);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = v4 == 0;
  }

  if (!v1)
  {
    APSIsVirtualMachine_sIsVirtualMachine = 1;
    result = APSSettingsGetInt64(@"useWiFiAndAWDLOnVirtualMachine", 0);
    if (result)
    {
      APSIsVirtualMachine_sIsVirtualMachine = 0;
    }

    if (gLogCategory_APSSystemUtils <= 50)
    {
      if (gLogCategory_APSSystemUtils != -1 || (result = _LogCategory_Initialize(), result))
      {
        if (APSIsVirtualMachine_sIsVirtualMachine)
        {
          v2 = "true";
        }

        else
        {
          v2 = "false";
        }

        return LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSIsVirtualMachine(void)_block_invoke", 33554482, "Is Virtual Machine %s\n", v2);
      }
    }
  }

  return result;
}

uint64_t APSHasNANSupport()
{
  if (APSHasNANSupport_sHasNANSupportOnce != -1)
  {
    dispatch_once(&APSHasNANSupport_sHasNANSupportOnce, &__block_literal_global_219);
  }

  return APSHasNANSupport_sHasNANSupport;
}

uint64_t APSIsOpenNANSenderEnabled()
{
  if (APSIsOpenNANSenderEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsOpenNANSenderEnabled_sOnce, &__block_literal_global_98);
  }

  return APSIsOpenNANSenderEnabled_sOpenNANSenderEnabled;
}

void __APSIsOpenNANSenderEnabled_block_invoke()
{
  if (APSHasNANSupport_sHasNANSupportOnce != -1)
  {
    dispatch_once(&APSHasNANSupport_sHasNANSupportOnce, &__block_literal_global_219);
  }

  if (APSHasNANSupport_sHasNANSupport)
  {
    if (APSSettingsIsFeatureEnabled(@"allowOpenNANSender"))
    {
      APSIsOpenNANSenderEnabled_sOpenNANSenderEnabled = 1;
      v0 = [objc_msgSend(objc_msgSend(MEMORY[0x277D7BA98] "currentDeviceCapabilities")];
      APSIsOpenNANSenderEnabled_sOpenNANSenderEnabled &= v0;
      if ((APSIsOpenNANSenderEnabled_sOpenNANSenderEnabled & 1) != 0 || gLogCategory_APSSystemUtils > 50 || gLogCategory_APSSystemUtils == -1 && !_LogCategory_Initialize())
      {
        return;
      }

      v1 = "Disabling OpenNANSender as NAN Pairing is not supported.";
    }

    else
    {
      if (gLogCategory_APSSystemUtils > 50 || gLogCategory_APSSystemUtils == -1 && !_LogCategory_Initialize())
      {
        return;
      }

      v1 = "Disabling OpenNANSender as feature is disabled.";
    }
  }

  else
  {
    if (gLogCategory_APSSystemUtils > 50 || gLogCategory_APSSystemUtils == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    v1 = "Disabling OpenNANSender as NAN is not supported.";
  }

  LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSIsOpenNANSenderEnabled(void)_block_invoke", 33554482, v1);
}

uint64_t APSIsWHAParallelSetupProcessingEnabled()
{
  if (APSIsWHAParallelSetupProcessingEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsWHAParallelSetupProcessingEnabled_sOnce, &__block_literal_global_107);
  }

  return APSIsWHAParallelSetupProcessingEnabled_sWHAParallelSetupProcessingEnabled;
}

uint64_t __APSIsWHAParallelSetupProcessingEnabled_block_invoke()
{
  result = APSSettingsIsFeatureEnabled(@"WHAParallelSetupProcessing");
  if (result)
  {
    APSIsWHAParallelSetupProcessingEnabled_sWHAParallelSetupProcessingEnabled = 1;
  }

  return result;
}

uint64_t APSIsPortMatchingOverrideEnabled()
{
  if (APSIsPortMatchingOverrideEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsPortMatchingOverrideEnabled_sOnce, &__block_literal_global_112);
  }

  return APSIsPortMatchingOverrideEnabled_sPortMatchingOverrideEnabled;
}

uint64_t __APSIsPortMatchingOverrideEnabled_block_invoke()
{
  result = APSSettingsGetIntWithOverrideAndDefault(@"ptpReenablePortMatchingOverride", 0, 1);
  APSIsPortMatchingOverrideEnabled_sPortMatchingOverrideEnabled = result != 0;
  return result;
}

__CFString *APSGetFabricatedMemberIDForHTGroup(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1 == 2;
  }

  v4 = @"2";
  if (v3)
  {
    v4 = @"1";
  }

  if (a2)
  {
    return @"0";
  }

  else
  {
    return v4;
  }
}

CFStringRef APSCreateGroupID(const void *a1, const __CFString *a2, const __CFString *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    return 0;
  }

  v8 = Mutable;
  CFArrayAppendValue(Mutable, a1);
  if (a2)
  {
    if ((CFStringGetLength(a2) - 1) > 2)
    {
      if (gLogCategory_APSSystemUtils <= 90 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSSystemUtils, "CFStringRef APSCreateGroupID(CFStringRef, CFStringRef, CFStringRef)", 33554522, "Cluster Member ID %@ is invalid\n", a2);
      }
    }

    else
    {
      CFArrayAppendValue(v8, a2);
    }
  }

  if (a3)
  {
    if (CFStringGetLength(a3) < 4)
    {
      if (gLogCategory_APSSystemUtils <= 90 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSSystemUtils, "CFStringRef APSCreateGroupID(CFStringRef, CFStringRef, CFStringRef)", 33554522, "Group Context ID %@ is invalid\n", a3);
      }
    }

    else
    {
      CFArrayAppendValue(v8, a3);
    }
  }

  v9 = CFStringCreateByCombiningStrings(v6, v8, @"+");
  CFRelease(v8);
  return v9;
}

CFStringRef APSCreateGroupIDForLocalDeviceEx(const __CFString *a1, uint64_t a2)
{
  v12 = 0;
  cf = 0;
  v11 = 0;
  if (!FigCFDictionaryGetBooleanIfPresent())
  {
    if (APSMultiPrimariesEnabled_sMultiPrimariesEnabledOnce != -1)
    {
      dispatch_once(&APSMultiPrimariesEnabled_sMultiPrimariesEnabledOnce, &__block_literal_global_42);
    }

    v11 = APSMultiPrimariesEnabled_sMultiPrimariesEnabled;
  }

  if (FigCFDictionaryGetIntIfPresent())
  {
    DeviceClass = 0;
  }

  else
  {
    DeviceClass = GestaltGetDeviceClass();
  }

  v4 = DeviceClass == 7 || DeviceClass == 4;
  if (!v4 || (APSCopyClusterInfo(&cf, 0, 0, &v12, 0), (v5 = cf) == 0))
  {
    v6 = APSCopyBootUUID(&cf);
    if (v6)
    {
      APSLogErrorAt(v6);
      v9 = 0;
      goto LABEL_20;
    }

    v5 = cf;
  }

  if (v11)
  {
    v7 = v12;
    v8 = a1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = APSCreateGroupID(v5, v7, v8);
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v9;
}

uint64_t APSCopyPairingIdentity(int a1, void *a2)
{
  if (a1)
  {
    v2 = systemUtils_copyPairingIdentityWithDefault(&APSCopyPairingIdentity_sSystemPairingIdentityKeychain, a2, &__block_literal_global_236);
    v3 = v2;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __APSCopyPairingIdentity_block_invoke_2;
    v5[3] = &__block_descriptor_33_e22_i16__0r_____CFString_8l;
    v6 = 0;
    v2 = systemUtils_copyPairingIdentityWithDefault(&APSCopyPairingIdentity_sPerAppParingIdentity, a2, v5);
    v3 = v2;
    if (v2)
    {
LABEL_6:
      APSLogErrorAt(v2);
    }
  }

  return v3;
}

uint64_t systemUtils_copyPairingIdentityWithDefault(unint64_t *a1, void *a2, uint64_t a3)
{
  v5 = atomic_load(a1);
  cf = v5;
  if (!v5)
  {
    v6 = (*(a3 + 16))(a3, &cf);
    if (v6)
    {
      v8 = v6;
      APSLogErrorAt(v6);
      return v8;
    }

    v7 = 0;
    atomic_compare_exchange_strong(a1, &v7, cf);
    v5 = cf;
    if (v7)
    {
      if (cf)
      {
        CFRelease(cf);
      }

      cf = v7;
      v5 = v7;
    }
  }

  if (v5)
  {
    v5 = CFRetain(v5);
  }

  v8 = 0;
  *a2 = v5;
  return v8;
}

uint64_t __APSCopyPairingIdentity_block_invoke_2(uint64_t a1, CFStringRef *a2)
{
  v3 = *(a1 + 32);
  v4 = PairingSessionCreate();
  if (v4)
  {
    v5 = v4;
LABEL_8:
    APSLogErrorAt(v4);
    return v5;
  }

  if (v3)
  {
    PairingSessionSetFlags();
  }

  PairingSessionSetKeychainInfo();
  v4 = PairingSessionCopyIdentity();
  v5 = v4;
  if (v4)
  {
    goto LABEL_8;
  }

  v6 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], 0, 0x8000100u);
  free(0);
  *a2 = v6;
  return v5;
}

uint64_t __APSCopyPairingIdentity_block_invoke(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = [MEMORY[0x277D028E0] copySystemPairingIdentifierWithFlags:0 error:&v7];
  v4 = NSErrorToOSStatus();
  v5 = v4;
  if (v4)
  {
    APSLogErrorAt(v4);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    *a2 = v3;
  }

  return v5;
}

uint64_t APSGetPersistentGroupModel()
{
  CFPreferencesAppSynchronize(@"com.apple.airplay");
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"persistentGroupModel", 0, 0);

  return APSSettingsGetIntWithOverrideAndDefault(@"simulatePersistentGroupModel", 0, IntWithOverrideAndDefault);
}

uint64_t APSValidatePersistentGroupInfo(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    v10 = 4294960591;
    goto LABEL_18;
  }

  if (a3 > 1)
  {
    v10 = 4294960561;
    goto LABEL_18;
  }

  if (!a3 && !APSIsPermanentSpeakerGroupingEnabled(a6))
  {
    return 4294960561;
  }

  if (a2 < 2)
  {
    v10 = 4294960561;
    goto LABEL_18;
  }

  if (!a4)
  {
    v10 = 4294960561;
    goto LABEL_18;
  }

  if (a3 == 1)
  {
    if (a2 > 3)
    {
      v10 = 4294960561;
    }

    else
    {
      if (a5)
      {
        return 0;
      }

      v10 = 4294960561;
    }

LABEL_18:
    APSLogErrorAt(0);
    return v10;
  }

  return 0;
}

BOOL APSIsMemberOfHTGroup()
{
  cf = 0;
  v4 = 0;
  APSCopyPersistentGroupInfo(&cf, &v4, 0, 0, 0, 0, 0, 0);
  v0 = cf;
  v1 = v4;
  if (cf)
  {
    CFRelease(cf);
  }

  return v0 && v1 == 1;
}

BOOL APSIsMemberOfStereoPair()
{
  v4 = 0;
  cf = 0;
  v3 = 0;
  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (!APSIsAPMSpeaker_sIsAPMSpeaker)
  {
    v0 = 0;
LABEL_8:
    v1 = v4;
    goto LABEL_9;
  }

  APSCopyPersistentGroupInfo(&v4, &v3, 0, 0, 0, 0, 0, 0);
  v0 = 0;
  v1 = v4;
  if (!v4 && !v3)
  {
    APSCopyTightSyncInfo(&cf, 0, 0, 0, 0);
    v0 = cf != 0;
    if (cf)
    {
      CFRelease(cf);
      v0 = 1;
    }

    goto LABEL_8;
  }

LABEL_9:
  if (v1)
  {
    CFRelease(v1);
  }

  return v0;
}

BOOL APSIsMemberOfPersistentGroup()
{
  cf = 0;
  APSCopyClusterInfo(&cf, 0, 0, 0, 0);
  v0 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  return v0 != 0;
}

uint64_t APSHasSamePersistentGroupUUID(uint64_t a1)
{
  v1 = a1;
  cf = 0;
  if (a1)
  {
    APSCopyClusterInfo(&cf, 0, 0, 0, 0);
    v1 = FigCFEqual();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v1;
}

uint64_t APSIsAPValeriaScreenSender()
{
  if (APSIsAPValeriaScreenSender_once != -1)
  {
    dispatch_once(&APSIsAPValeriaScreenSender_once, &__block_literal_global_134);
  }

  return APSIsAPValeriaScreenSender_result;
}

uint64_t __APSIsAPValeriaScreenSender_block_invoke()
{
  v0 = IsAppleTV() != 0;
  result = FigGetCFPreferenceNumberWithDefault();
  v2 = result != 0;
  APSIsAPValeriaScreenSender_result = result != 0;
  if (v0 != v2 && gLogCategory_APSSystemUtils <= 50)
  {
    if (gLogCategory_APSSystemUtils != -1)
    {
      return LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSIsAPValeriaScreenSender(void)_block_invoke", 33554482, "Set APValeria behavior to %d because of defaults write\n", v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = APSIsAPValeriaScreenSender_result;
      return LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSIsAPValeriaScreenSender(void)_block_invoke", 33554482, "Set APValeria behavior to %d because of defaults write\n", v2);
    }
  }

  return result;
}

uint64_t APSHasUDPMirroringSenderSupport()
{
  if (APSHasUDPMirroringSenderSupport_sCheckOnce != -1)
  {
    dispatch_once(&APSHasUDPMirroringSenderSupport_sCheckOnce, &__block_literal_global_140);
  }

  return APSHasUDPMirroringSenderSupport_sIsSupported;
}

uint64_t __APSHasUDPMirroringSenderSupport_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (!APSIsAPMSpeaker_sIsAPMSpeaker && !IsAppleTV())
  {
    GetDeviceModelString();
    v3 = 0;
    while (strncmp(__s1, kAPSOverrideOptionKey_SupportsMultiPrimaries_block_invoke_unsupportedModels[v3], 0x40uLL))
    {
      if (++v3 == 27)
      {
        v0 = 1;
        goto LABEL_6;
      }
    }
  }

  v0 = 0;
LABEL_6:
  result = FigGetCFPreferenceNumberWithDefault();
  v2 = result != 0;
  APSHasUDPMirroringSenderSupport_sIsSupported = result != 0;
  if (v0 != v2 && gLogCategory_APSSystemUtils <= 50)
  {
    if (gLogCategory_APSSystemUtils != -1)
    {
      return LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSHasUDPMirroringSenderSupport(void)_block_invoke", 33554482, "Set AVConferenceBasedMirroring behavior to %d because of defaults write\n", v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = APSHasUDPMirroringSenderSupport_sIsSupported;
      return LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSHasUDPMirroringSenderSupport(void)_block_invoke", 33554482, "Set AVConferenceBasedMirroring behavior to %d because of defaults write\n", v2);
    }
  }

  return result;
}

uint64_t APSHasUDPMirroringOutOfProcessSupport()
{
  if (APSHasUDPMirroringOutOfProcessSupport_sCheckOnce != -1)
  {
    dispatch_once(&APSHasUDPMirroringOutOfProcessSupport_sCheckOnce, &__block_literal_global_173);
  }

  return APSHasUDPMirroringOutOfProcessSupport_sIsSupported;
}

uint64_t __APSHasUDPMirroringOutOfProcessSupport_block_invoke()
{
  IsFeatureEnabledInDomain = APSSettingsIsFeatureEnabledInDomain(@"AVConference", @"UseAvconferenced");
  result = FigGetCFPreferenceNumberWithDefault();
  v2 = result != 0;
  APSHasUDPMirroringOutOfProcessSupport_sIsSupported = result != 0;
  if (IsFeatureEnabledInDomain != v2 && gLogCategory_APSSystemUtils <= 50)
  {
    if (gLogCategory_APSSystemUtils != -1)
    {
      return LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSHasUDPMirroringOutOfProcessSupport(void)_block_invoke", 33554482, "Set AVConferenceBasedMirroring out-of-process behavior to %d because of defaults write\n", v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = APSHasUDPMirroringOutOfProcessSupport_sIsSupported;
      return LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSHasUDPMirroringOutOfProcessSupport(void)_block_invoke", 33554482, "Set AVConferenceBasedMirroring out-of-process behavior to %d because of defaults write\n", v2);
    }
  }

  return result;
}

uint64_t APSHasUHDMirroringSupport()
{
  if (APSHasUDPMirroringSenderSupport_sCheckOnce != -1)
  {
    dispatch_once(&APSHasUDPMirroringSenderSupport_sCheckOnce, &__block_literal_global_140);
  }

  return APSHasUDPMirroringSenderSupport_sIsSupported;
}

uint64_t APSHasUDPMirroringReceiverSupport()
{
  if (APSHasUDPMirroringReceiverSupport_sCheckOnce != -1)
  {
    dispatch_once(&APSHasUDPMirroringReceiverSupport_sCheckOnce, &__block_literal_global_185);
  }

  return APSHasUDPMirroringReceiverSupport_sIsSupported;
}

uint64_t __APSHasUDPMirroringReceiverSupport_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  APSHasUDPMirroringReceiverSupport_sIsSupported = result != 0;
  if (result && gLogCategory_APSSystemUtils <= 50)
  {
    if (gLogCategory_APSSystemUtils != -1)
    {
      v1 = 1;
      return LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSHasUDPMirroringReceiverSupport(void)_block_invoke", 33554482, "Set AVConferenceBasedMirroring behavior to %d because of defaults write\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = APSHasUDPMirroringReceiverSupport_sIsSupported;
      return LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSHasUDPMirroringReceiverSupport(void)_block_invoke", 33554482, "Set AVConferenceBasedMirroring behavior to %d because of defaults write\n", v1);
    }
  }

  return result;
}

uint64_t APSHas4K60444SenderSupport()
{
  if (APSHas4K60444SenderSupport_sCheckOnce != -1)
  {
    dispatch_once(&APSHas4K60444SenderSupport_sCheckOnce, &__block_literal_global_190);
  }

  return APSHas4K60444SenderSupport_sIsSupported;
}

uint64_t __APSHas4K60444SenderSupport_block_invoke()
{
  result = APSSettingsGetIntWithOverrideAndDefault(@"senderSupports4k60444", 0, 0);
  APSHas4K60444SenderSupport_sIsSupported = result != 0;
  if (result && gLogCategory_APSSystemUtils <= 50)
  {
    if (gLogCategory_APSSystemUtils != -1)
    {
      v1 = 1;
      return LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSHas4K60444SenderSupport(void)_block_invoke", 33554482, "Set SenderSupports4k60444 to %d because of defaults write\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = APSHas4K60444SenderSupport_sIsSupported;
      return LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSHas4K60444SenderSupport(void)_block_invoke", 33554482, "Set SenderSupports4k60444 to %d because of defaults write\n", v1);
    }
  }

  return result;
}

uint64_t APSHasHDRSenderSupport()
{
  if (APSHasHDRSenderSupport_once != -1)
  {
    dispatch_once(&APSHasHDRSenderSupport_once, &__block_literal_global_196_1939);
  }

  return APSHasHDRSenderSupport_supported;
}

void __APSHasHDRSenderSupport_block_invoke()
{
  if (FVDUtilsHEVCEncoderSupports42010())
  {
    if (APSIsAPMSpeaker_sCheckOnce != -1)
    {
      dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
    }

    if (!APSIsAPMSpeaker_sIsAPMSpeaker && !IsAppleTV())
    {
      v0 = *MEMORY[0x277CD2898];
      v1 = IOServiceMatching("AppleM2ScalerCSCDriver");
      MatchingService = IOServiceGetMatchingService(v0, v1);
      if (MatchingService)
      {
        v3 = MatchingService;
        v4 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
        if (!v4)
        {
LABEL_17:

          IOObjectRelease(v3);
          return;
        }

        v5 = v4;
        v6 = CFDictionaryGetInt64() != 0;
        APSHasHDRSenderSupport_supported = v6;
        if (gLogCategory_APSSystemUtils <= 50)
        {
          if (gLogCategory_APSSystemUtils != -1)
          {
LABEL_11:
            if (v6)
            {
              v7 = "";
            }

            else
            {
              v7 = "not ";
            }

            LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSHasHDRSenderSupport(void)_block_invoke", 33554482, "AirPlay HDR %ssupported\n", v7);
            goto LABEL_16;
          }

          if (_LogCategory_Initialize())
          {
            v6 = APSHasHDRSenderSupport_supported;
            goto LABEL_11;
          }
        }

LABEL_16:
        CFRelease(v5);
        goto LABEL_17;
      }
    }
  }
}

uint64_t APSIsATVInHTGroup()
{
  result = IsAppleTV();
  if (result)
  {
    return APSIsMemberOfHTGroup();
  }

  return result;
}

unint64_t APSGetDeviceID(int a1, unsigned __int8 *a2, unsigned int *a3)
{
  PrimaryMACAddress = 0;
  v34 = *MEMORY[0x277D85DE8];
  v16 = 0;
  if (a1 <= 1)
  {
    if (!a1)
    {
      goto LABEL_9;
    }

    if (a1 == 1)
    {
      PrimaryMACAddress = GetPrimaryMACAddress();
    }
  }

  else
  {
    if (a1 == 2)
    {
      PrimaryMACAddress = systemUtils_generateRandomDeviceID(a2);
      goto LABEL_22;
    }

    if (a1 != 3)
    {
      if (a1 != 4)
      {
        goto LABEL_22;
      }

LABEL_9:
      theString = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *buffer = 0u;
      PrimaryMACAddress = atomic_load(&systemUtils_getDeviceIDFromSystemPairingID_sScalarDeviceID);
      if (!PrimaryMACAddress)
      {
        v6 = APSCopyPairingIdentity(1, &theString);
        if (v6)
        {
          v14 = v6;
        }

        else
        {
          v7 = theString;
          CString = CFStringGetCString(theString, buffer, 256, 0x8000100u);
          if (!CString)
          {
            APSLogErrorAt(CString);
            PrimaryMACAddress = 0;
            v15 = -6762;
LABEL_16:
            v16 = v15;
            if (v7)
            {
              CFRelease(v7);
            }

            goto LABEL_22;
          }

          v6 = HexToData();
          if (!v6)
          {
            APSLogErrorAt(0);
            PrimaryMACAddress = 0;
            v15 = -6717;
LABEL_15:
            v7 = theString;
            goto LABEL_16;
          }

          v14 = v6;
        }

        APSLogErrorAt(v6);
        v15 = v14;
        PrimaryMACAddress = 0;
        goto LABEL_15;
      }

      v15 = 0;
      *a2 = BYTE5(PrimaryMACAddress);
      a2[1] = BYTE4(PrimaryMACAddress);
      a2[2] = BYTE3(PrimaryMACAddress);
      a2[3] = BYTE2(PrimaryMACAddress);
      a2[4] = BYTE1(PrimaryMACAddress);
      a2[5] = PrimaryMACAddress;
      goto LABEL_15;
    }

    if (!atomic_load(&systemUtils_getProcessStableRandomDeviceID_sScalarDeviceID))
    {
      RandomDeviceID = systemUtils_generateRandomDeviceID(a2);
      v11 = 0;
      atomic_compare_exchange_strong(&systemUtils_getProcessStableRandomDeviceID_sScalarDeviceID, &v11, RandomDeviceID);
    }

    v12 = atomic_load(&systemUtils_getProcessStableRandomDeviceID_sScalarDeviceID);
    *a2 = BYTE5(v12);
    a2[1] = BYTE4(v12);
    a2[2] = BYTE3(v12);
    a2[3] = BYTE2(v12);
    a2[4] = BYTE1(v12);
    a2[5] = v12;
    PrimaryMACAddress = atomic_load(&systemUtils_getProcessStableRandomDeviceID_sScalarDeviceID);
  }

LABEL_22:
  if (a3)
  {
    *a3 = v16;
  }

  if (v16)
  {
    return 0;
  }

  else
  {
    return PrimaryMACAddress;
  }
}

unint64_t systemUtils_generateRandomDeviceID(unsigned __int8 *a1)
{
  arc4random_buf(a1, 6uLL);
  v2 = *a1 & 0xFC | 2;
  *a1 = v2;
  return (v2 << 40) | (a1[1] << 32) | (a1[2] << 24) | (a1[3] << 16) | (a1[4] << 8) | a1[5];
}

uint64_t APSScreenGetMediaPresentationParams(uint64_t a1, int a2, int a3, int a4, double *a5, int *a6, double a7, double a8)
{
  result = APSSettingsGetIntWithOverrideAndDefault(@"limit4KFPSBasedOnConnectionLatencyHint", 0, 1);
  v16 = result;
  if (!a3)
  {
    v17 = a8 * a7 > 8294400.0;
    if (a8 * a7 > 8294400.0)
    {
      a7 = 3840.0;
    }

    v18 = 2160.0;
    goto LABEL_9;
  }

  result = FigCFEqual();
  if (result)
  {
    v17 = a8 * a7 > 2073600.0;
    if (a8 * a7 > 2073600.0)
    {
      a7 = 1920.0;
    }

    v18 = 1080.0;
LABEL_9:
    if (v17)
    {
      a8 = v18;
    }

    v19 = a2 < 60;
    v20 = 60;
LABEL_12:
    if (v19)
    {
      v21 = a2;
    }

    else
    {
      v21 = v20;
    }

    goto LABEL_15;
  }

  result = FigCFEqual();
  if (a8 * a7 > 8294400.0)
  {
    a7 = 3840.0;
    a8 = 2160.0;
  }

  if (a2 >= 60)
  {
    v21 = 60;
  }

  else
  {
    v21 = a2;
  }

  if (result)
  {
    if (a7 * a8 <= 2073600.0)
    {
      goto LABEL_15;
    }

    v19 = a2 < 30;
    v20 = 30;
    goto LABEL_12;
  }

  if (a7 * a8 > 2073600.0)
  {
    if (senderSupports4K60HDR_once != -1)
    {
      dispatch_once(&senderSupports4K60HDR_once, &__block_literal_global_377);
    }

    result = APSSettingsGetIntWithOverrideAndDefault(@"senderSupports4k60HDR", 0, senderSupports4K60HDR_supported);
    v22 = result != 0;
    senderSupports4K60HDR_supported = result != 0;
    if (gLogCategory_APSSystemUtils <= 50)
    {
      if (gLogCategory_APSSystemUtils != -1 || (result = _LogCategory_Initialize(), v22 = senderSupports4K60HDR_supported, result))
      {
        if (v22)
        {
          v23 = "";
        }

        else
        {
          v23 = "not ";
        }

        result = LogPrintF(&gLogCategory_APSSystemUtils, "Boolean senderSupports4K60HDR(void)", 33554482, "AirPlay Sender 4K60HDR  %ssupported\n", v23);
        v22 = senderSupports4K60HDR_supported;
      }
    }

    if (v22)
    {
      v24 = 60;
    }

    else
    {
      v24 = 30;
    }

    if (v24 >= a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = v24;
    }
  }

LABEL_15:
  if (a4 == 1 && v16 && a8 * a7 > 2073600.0)
  {
    if (v21 >= 30)
    {
      v21 = 30;
    }

    if (gLogCategory_APSSystemUtils <= 50)
    {
      if (gLogCategory_APSSystemUtils != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF(&gLogCategory_APSSystemUtils, "void APSScreenGetMediaPresentationParams(CFStringRef, CGSize, int32_t, Boolean, APSLatencyHint, CGSize *, int32_t *)", 33554482, "Limiting fps to %d as display is > 1080p and it is a high latency connection \n", v21);
      }
    }
  }

  if (a5)
  {
    *a5 = a7;
    a5[1] = a8;
  }

  if (a6)
  {
    *a6 = v21;
  }

  return result;
}

void __senderSupports4K60HDR_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  if (APSHasHDRSenderSupport_once != -1)
  {
    dispatch_once(&APSHasHDRSenderSupport_once, &__block_literal_global_196_1939);
  }

  senderSupports4K60HDR_supported = APSHasHDRSenderSupport_supported;
  if (APSHasHDRSenderSupport_supported)
  {
    memset(v1, 0, sizeof(v1));
    GetDeviceModelString();
    v0 = 0;
    while (strncmp(v1, gUserVersionOverride_block_invoke_2_unsupportedModels[v0], 0x40uLL))
    {
      if (++v0 == 36)
      {
        return;
      }
    }

    senderSupports4K60HDR_supported = 0;
  }
}

uint64_t APSIsVirtualMachine()
{
  if (APSIsVirtualMachine_sCheckOnceForVM != -1)
  {
    dispatch_once(&APSIsVirtualMachine_sCheckOnceForVM, &__block_literal_global_342);
  }

  return APSIsVirtualMachine_sIsVirtualMachine;
}

uint64_t APSCanSendToAltReceiver()
{
  if (APSCanSendToAltReceiver_sCanSendToAltReceiverOnce != -1)
  {
    dispatch_once(&APSCanSendToAltReceiver_sCanSendToAltReceiverOnce, &__block_literal_global_225);
  }

  return APSCanSendToAltReceiver_sCanSendToAltReceiver;
}

uint64_t __APSCanSendToAltReceiver_block_invoke()
{
  result = IsAppleInternalBuild();
  if (result)
  {
    v3 = 0;
    result = APSSettingsGetInt64IfPresent(@"canSendToAltReceiver", &v3);
    if (result)
    {
      APSCanSendToAltReceiver_sCanSendToAltReceiver = v3 != 0;
      v1 = "yes";
    }

    else
    {
      v1 = "no";
    }
  }

  else
  {
    v1 = "no";
  }

  if (gLogCategory_APSSystemUtils <= 50)
  {
    if (gLogCategory_APSSystemUtils != -1 || (result = _LogCategory_Initialize(), result))
    {
      if (APSCanSendToAltReceiver_sCanSendToAltReceiver)
      {
        v2 = "yes";
      }

      else
      {
        v2 = "no";
      }

      return LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSCanSendToAltReceiver(void)_block_invoke", 33554482, "Can send to alt receiver: %s from prefs: %s\n", v2, v1);
    }
  }

  return result;
}

void APSPreCacheSystemPairingIdentity()
{
  if (APSPreCacheSystemPairingIdentity_sPrewarmCacheOnce != -1)
  {
    dispatch_once(&APSPreCacheSystemPairingIdentity_sPrewarmCacheOnce, &__block_literal_global_231);
  }
}

void __APSPreCacheSystemPairingIdentity_block_invoke()
{
  global_queue = dispatch_get_global_queue(25, 0);

  dispatch_async(global_queue, &__block_literal_global_233);
}

void __APSPreCacheSystemPairingIdentity_block_invoke_2()
{
  cf = 0;
  APSCopyPairingIdentity(1, &cf);
  v0 = cf;
  if (cf)
  {

    CFRelease(v0);
  }
}

CFTypeRef APSCopyDeviceName()
{
  if (systemUtils_copyCachedDeviceName_sOnce != -1)
  {
    dispatch_once(&systemUtils_copyCachedDeviceName_sOnce, &__block_literal_global_420);
  }

  FigSimpleMutexLock();
  if (systemUtils_copyCachedDeviceName_sCachedDeviceName)
  {
    v0 = CFRetain(systemUtils_copyCachedDeviceName_sCachedDeviceName);
  }

  else
  {
    v0 = 0;
  }

  FigSimpleMutexUnlock();
  return v0;
}

void __systemUtils_copyCachedDeviceName_block_invoke()
{
  values = @"UserAssignedDeviceName";
  v0 = CFArrayCreate(*MEMORY[0x277CBECE8], &values, 1, MEMORY[0x277CBF128]);
  systemUtils_copyCachedDeviceName_sCachedDeviceNameMutex = FigSimpleMutexCreate();
  MGRegisterForUpdates();
  systemUtils_updateCachedDeviceName(systemUtils_copyCachedDeviceName_sCachedDeviceNameMutex);
  if (v0)
  {
    CFRelease(v0);
  }
}

void systemUtils_updateCachedDeviceName(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    v1 = MGCopyAnswer();
    if (gLogCategory_APSSystemUtils <= 30 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSSystemUtils, "void systemUtils_updateCachedDeviceName(FigSimpleMutexRef, CFStringRef *)", 33554462, "Cached device name changed from '%@' => '%@'.", systemUtils_copyCachedDeviceName_sCachedDeviceName, v1);
    }

    v2 = systemUtils_copyCachedDeviceName_sCachedDeviceName;
    systemUtils_copyCachedDeviceName_sCachedDeviceName = v1;
    if (v1)
    {
      CFRetain(v1);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    FigSimpleMutexUnlock();
    if (v1)
    {

      CFRelease(v1);
    }
  }

  else
  {

    APSLogErrorAt(0);
  }
}

UInt8 *APSGetDeviceNameCString(UInt8 *a1, uint64_t a2)
{
  v2 = a1;
  usedBufLen = 0;
  if (a1)
  {
    v4 = APSCopyDeviceName();
    if (v4)
    {
      v5 = v4;
      Length = CFStringGetLength(v4);
      if (Length >= 1 && (v9.length = Length, v9.location = 0, CFStringGetBytes(v5, v9, 0x8000100u, 0, 0, v2, a2 - 1, &usedBufLen)))
      {
        v2[usedBufLen] = 0;
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      APSLogErrorAt(0);
      return 0;
    }
  }

  else
  {
    APSLogErrorAt(0);
  }

  return v2;
}

uint64_t APSPersistentGroupTypeToClusterType(int a1)
{
  if (a1)
  {
    v1 = 0;
  }

  else
  {
    v1 = 3;
  }

  if (a1 == 1)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t APSSaveAirPlayNonSystemPeer(const char *a1, const char *a2)
{
  if (gLogCategory_APSSystemUtils <= 50 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSSystemUtils, "OSStatus APSSaveAirPlayNonSystemPeer(const char *, const char *)", 33554482, "Saving AirPlay Non-System peer to the Keychain (identifier: %s, publicKey: %s)\n", a1, a2);
  }

  v4 = PairingSessionCreate();
  if (v4)
  {
    v5 = v4;
    goto LABEL_9;
  }

  PairingSessionSetKeychainInfo();
  v4 = PairingSessionSavePeer();
  v5 = v4;
  if (v4)
  {
LABEL_9:
    APSLogErrorAt(v4);
  }

  return v5;
}

CFIndex APSGetAirPlayNonSystemPeersCount()
{
  v4 = 0;
  v0 = KeychainCopyMatchingFormatted(&v4, "{%kO=%O%kO=%O%kO=%i%kO=%?.*s%kO=%O%kO=%O%kO=%O}", *MEMORY[0x277CDC228], *MEMORY[0x277CDC238], *MEMORY[0x277CDBEC8], @"com.apple.airplay.pairing", *MEMORY[0x277CDC188], 1095782514, *MEMORY[0x277CDBF20], 0, 0, 0, *MEMORY[0x277CDC140], *MEMORY[0x277CDC148], *MEMORY[0x277CDC550], *MEMORY[0x277CBED28], *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Count = CFArrayGetCount(v0);
  CFRelease(v1);
  return Count;
}

const __CFArray *APSCopyAirPlayNonSystemPeers()
{
  v0 = PairingSessionCreate();
  if (v0)
  {
    APSLogErrorAt(v0);
    v1 = 0;
  }

  else
  {
    PairingSessionSetKeychainInfo();
    v1 = PairingSessionCopyPeers();
  }

  if (gLogCategory_APSSystemUtils <= 50 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
  {
    if (v1)
    {
      Count = CFArrayGetCount(v1);
    }

    else
    {
      Count = 0;
    }

    LogPrintF(&gLogCategory_APSSystemUtils, "CFArrayRef APSCopyAirPlayNonSystemPeers(void)", 33554482, "Copied AirPlay Non-System peers from the Keychain (count: %d)\n", Count);
  }

  return v1;
}

uint64_t APSClearLegacyAirPlayPairingInfo()
{
  v2 = 0;
  if (gLogCategory_APSSystemUtils <= 50 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSSystemUtils, "void APSClearLegacyAirPlayPairingInfo(void)", 33554482, "Clearing legacy AirPlay pairing info.\n");
  }

  if (!gQblcfSzZBQsYCCV(&v2, 0))
  {
    v0 = v2;
    PHDcW8(v2, 0);
    KeychainDeleteFormatted("{%kO=%O%kO=%O%kO=%i}", *MEMORY[0x277CDC228], *MEMORY[0x277CDC238], *MEMORY[0x277CDBEC8], @"com.apple.airplay", *MEMORY[0x277CDC188], v0[8]);
    CFRelease(v0);
  }

  return APSRemoveAirPlayNonSystemPeers(0);
}

uint64_t APSRemoveAirPlayNonSystemPeers(uint64_t a1)
{
  if (a1)
  {
    v1 = PairingSessionCreate();
    if (v1)
    {
      v2 = v1;
      APSLogErrorAt(v1);
    }

    else
    {
      PairingSessionSetKeychainInfo();
      return PairingSessionDeletePeer();
    }
  }

  else
  {
    KeychainDeleteFormatted("{%kO=%O%kO=%O%kO=%i%kO=%O}", *MEMORY[0x277CDC228], *MEMORY[0x277CDC238], *MEMORY[0x277CDBEC8], @"com.apple.airplay.pairing", *MEMORY[0x277CDC188], 1095782514, *MEMORY[0x277CDC140], *MEMORY[0x277CDC148]);
    return 0;
  }

  return v2;
}

void *APSEnsureCanInitiatePlayback()
{
  if (APSEnsureCanInitiatePlayback_once != -1)
  {
    dispatch_once(&APSEnsureCanInitiatePlayback_once, &__block_literal_global_272);
  }

  v0 = APSEnsureCanInitiatePlayback_bundleID;
  if (APSEnsureCanInitiatePlayback_bundleID)
  {
    if (gLogCategory_APSSystemUtils <= 50)
    {
      if (gLogCategory_APSSystemUtils == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        v0 = APSEnsureCanInitiatePlayback_bundleID;
      }

      LogPrintF(&gLogCategory_APSSystemUtils, "void APSEnsureCanInitiatePlayback(void)", 33554482, "Setting bundleID '%@' to allow initiating playback\n", v0);
    }

LABEL_8:
    v1 = [MEMORY[0x277D26E58] sharedAVSystemController];
    result = [v1 allowAppsToInitiatePlayback:objc_msgSend(MEMORY[0x277CBEB98] clientType:"setWithObject:" isTemporary:{APSEnsureCanInitiatePlayback_bundleID), @"AirPlay", 1}];
    if (result)
    {
      if (gLogCategory_APSSystemUtils <= 90)
      {
        if (gLogCategory_APSSystemUtils != -1)
        {
          return LogPrintF(&gLogCategory_APSSystemUtils, "void APSEnsureCanInitiatePlayback(void)", 33554522, "Failed to set bundleID '%@' to allow initiating playback with error: %#m\n", APSEnsureCanInitiatePlayback_bundleID, result);
        }

        v3 = result;
        v4 = _LogCategory_Initialize();
        result = v3;
        if (v4)
        {
          return LogPrintF(&gLogCategory_APSSystemUtils, "void APSEnsureCanInitiatePlayback(void)", 33554522, "Failed to set bundleID '%@' to allow initiating playback with error: %#m\n", APSEnsureCanInitiatePlayback_bundleID, result);
        }
      }
    }

    return result;
  }

  return APSLogErrorAt(0);
}

id __APSEnsureCanInitiatePlayback_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  APSEnsureCanInitiatePlayback_bundleID = result;
  return result;
}

uint64_t APSGetClusterModelForTightSyncGroupModel(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t APSGetClusterModelForPersistentGroupModel(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

__CFString *APSGetClusterModelNameForClusterTypeAndModel(int a1, int a2)
{
  v2 = @"AppleTVHTCluster";
  if (a2 == 1)
  {
    v2 = @"AudioAccessory5,1-AppleTVHTCluster";
  }

  if (a2 == 2)
  {
    v2 = @"AudioAccessory6,1-AppleTVHTCluster";
  }

  v3 = @"AudioAccessory1,1-TightSyncCluster";
  if (a2 == 1)
  {
    v3 = @"AudioAccessory5,1-TightSyncCluster";
  }

  if (a2 == 2)
  {
    v3 = @"AudioAccessory6,1-TightSyncCluster";
  }

  if (a1 != 1)
  {
    v3 = 0;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1 == 3)
  {
    return @"GenericPersistentGroup";
  }

  else
  {
    return v2;
  }
}

__CFString *APSClusterTypeToDescriptionString(int a1)
{
  v1 = @"PSG";
  if (a1 == 2)
  {
    v1 = @"HT";
  }

  if (a1 == 1)
  {
    return @"Stereo Pair";
  }

  else
  {
    return v1;
  }
}

uint64_t APSClusterTypeToFigEndpointDescriptorClusterType(int a1)
{
  v1 = MEMORY[0x277D26FF0];
  v2 = MEMORY[0x277D26FE8];
  if (a1 != 2)
  {
    v2 = MEMORY[0x277D26FF8];
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  return *v1;
}

uint64_t APSIsDirectLinkInterface(uint64_t a1)
{
  if (!a1 || (v2 = _SCNetworkInterfaceCreateWithBSDName()) == 0)
  {
    APSLogErrorAt(0);
    return 0;
  }

  v3 = v2;
  IsThunderbolt = _SCNetworkInterfaceIsThunderbolt();
  if (IsThunderbolt)
  {
    v5 = IsThunderbolt;
    if (gLogCategory_APSSystemUtils <= 50 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSIsDirectLinkInterface(CFStringRef)", 33554482, "Found Thunderbolt DirectLink on the network interface %@ \n", a1);
    }

    goto LABEL_18;
  }

  InterfaceType = SCNetworkInterfaceGetInterfaceType(v3);
  if (CFStringCompare(InterfaceType, *MEMORY[0x277CE16D0], 0) || (_SCNetworkInterfaceGetFamilySubType(), CFGetInt64() != 1) || (_SCNetworkInterfaceGetIOPath(), !FigCFStringFind()))
  {
    v5 = 0;
    goto LABEL_18;
  }

  if (gLogCategory_APSSystemUtils > 50)
  {
    v5 = 1;
  }

  else
  {
    if (gLogCategory_APSSystemUtils == -1)
    {
      v5 = 1;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }
    }

    else
    {
      v5 = 1;
    }

    LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSIsDirectLinkInterface(CFStringRef)", 33554482, "Found USB DirectLink on the network interface %@ \n", a1);
  }

LABEL_18:
  CFRelease(v3);
  return v5;
}

uint64_t APSIsEthernetInterface(uint64_t a1)
{
  if (a1 && (v1 = _SCNetworkInterfaceCreateWithBSDName()) != 0)
  {
    v2 = v1;
    IsPhysicalEthernet = _SCNetworkInterfaceIsPhysicalEthernet();
    CFRelease(v2);
    return IsPhysicalEthernet;
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }
}

uint64_t APSShouldStartAdvertistingForAirPlaySourceBeacon(void *a1, int a2, int a3)
{
  v6 = [a1 airplaySourceFlags];
  v7 = v6;
  v8 = 1;
  if (a2 && (v6 & 4) == 0)
  {
    if (gLogCategory_APSSystemUtils <= 30 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSShouldStartAdvertistingForAirPlaySourceBeacon(void *, Boolean, Boolean)", 33554462, "Ignoring device %@. Alternate capable sender required.\n", [a1 identifier]);
    }

    v8 = 0;
  }

  if (a3 && (v7 & 0x10) != 0)
  {
    if (([a1 deviceFlags] & 0x80) != 0)
    {
      if (gLogCategory_APSSystemUtils <= 30 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSShouldStartAdvertistingForAirPlaySourceBeacon(void *, Boolean, Boolean)", 33554462, "Device found for account: %@\n", [a1 accountID]);
      }
    }

    else
    {
      if (gLogCategory_APSSystemUtils <= 30 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSShouldStartAdvertistingForAirPlaySourceBeacon(void *, Boolean, Boolean)", 33554462, "Ignoring device %@. SameAccount device required.\n", [a1 identifier]);
      }

      return 0;
    }
  }

  return v8;
}

uint64_t APSGetAccessControlConfig(unsigned int *a1, int *a2)
{
  v10 = 0;
  CFPreferencesAppSynchronize(@"com.apple.airplay");
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  v4 = 0;
  Int64 = APSSettingsGetInt64(@"accessControlType", &v10);
  v6 = v10;
  v10 = 0;
  v7 = Int64 != 1 && v6 == 0;
  if (v7 || (IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"accessControlLevel", 0, 0), v4 = IntWithOverrideAndDefault, !v6))
  {
    if (!Int64 || Int64 == 2)
    {
      goto LABEL_12;
    }

    if (Int64 != 1)
    {
      goto LABEL_16;
    }
  }

  else if ((IntWithOverrideAndDefault - 1) >= 2)
  {
    Int64 = 2;
LABEL_12:
    if (a1)
    {
      *a1 = Int64;
    }

    if (a2)
    {
      *a2 = v4;
    }

    return v10;
  }

  Int64 = 1;
  if ((v4 - 3) > 0xFFFFFFFD)
  {
    goto LABEL_12;
  }

LABEL_16:
  if (gLogCategory_APSSystemUtils <= 90 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSSystemUtils, "OSStatus APSGetAccessControlConfig(APSAccessControlType *, APSAccessControlLevelHK *)", 33554522, "Invalid access control config: (type=%d, level=%d)\n", Int64, v4);
  }

  return -6705;
}

BOOL APSGetP2PAllow()
{
  v4 = 0;
  v3 = 0;
  Int64 = APSSettingsGetInt64(@"p2pAllow", &v3);
  result = 0;
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    v2 = Int64 == 0;
  }

  if (!v2)
  {
    APSCopyClusterInfo(0, 0, &v4, 0, 0);
    return (v4 & 0xFFFFFFFD) != 1;
  }

  return result;
}

uint64_t APSIsDemoModeEnabled()
{
  if (APSIsDemoModeEnabled_once != -1)
  {
    dispatch_once(&APSIsDemoModeEnabled_once, &__block_literal_global_336);
  }

  return APSIsDemoModeEnabled_enabled;
}

void __APSIsDemoModeEnabled_block_invoke()
{
  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (!APSIsAPMSpeaker_sIsAPMSpeaker && !IsAppleTV())
  {
    Int64 = APSSettingsGetInt64(@"TetheredDemoMode", 0);
    APSIsDemoModeEnabled_enabled = Int64 != 0;
    if (Int64)
    {
      if (gLogCategory_APSSystemUtils <= 50 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
      {

        LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSIsDemoModeEnabled(void)_block_invoke", 33554482, "Demo mode enabled\n");
      }
    }
  }
}

double APSGetMaxSizePreservingAspectRatio(double result, double a2, double a3, double a4)
{
  if (result > a3 || a2 > a4)
  {
    v5 = a3 / result;
    v6 = a4 / a2;
    if (v5 >= v6)
    {
      v5 = v6;
    }

    return (result * v5 + 0.5);
  }

  return result;
}

uint64_t APSIsValidDeviceEnclosureColorString(CFStringRef str)
{
  v1 = str;
  if (!str)
  {
    return v1;
  }

  IntValue = CFStringGetIntValue(str);
  v3 = IntValue;
  if ((IntValue & 0x80000000) != 0)
  {
    if (gLogCategory_APSSystemUtils <= 60 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSIsValidDeviceEnclosureColorString(CFStringRef)", 33554492, "DeviceEnclosureColor is out of range (%@ (%d) < 0)", v1, v3);
    }

    return 0;
  }

  if (IntValue >= 0x3E8)
  {
    if (gLogCategory_APSSystemUtils <= 60 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSIsValidDeviceEnclosureColorString(CFStringRef)", 33554492, "DeviceEnclosureColor is out of range (%@ (%d) > %d)", v1, v3, 999);
    }

    return 0;
  }

  v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%d", IntValue);
  if (!v4)
  {
    APSLogErrorAt(0);
    return 0;
  }

  v5 = v4;
  if (CFEqual(v1, v4))
  {
    v1 = 1;
  }

  else
  {
    if (gLogCategory_APSSystemUtils <= 60 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSSystemUtils, "Boolean APSIsValidDeviceEnclosureColorString(CFStringRef)", 33554492, "DeviceEnclosureColor conversion mismatches (%@ != %@)", v1, v5);
    }

    v1 = 0;
  }

  CFRelease(v5);
  return v1;
}

uint64_t APSIsInAirPlaySenderSystemServer()
{
  if (APSIsInAirPlaySenderSystemServer_sOnceToken != -1)
  {
    dispatch_once(&APSIsInAirPlaySenderSystemServer_sOnceToken, &__block_literal_global_354);
  }

  return APSIsInAirPlaySenderSystemServer_sIsInAirPlaySenderSystemServer;
}

uint64_t __APSIsInAirPlaySenderSystemServer_block_invoke()
{
  if (FigIsAirplaydEnabled())
  {
    result = FigServer_IsAirplayd();
  }

  else
  {
    result = in_audio_mx_server_process();
  }

  APSIsInAirPlaySenderSystemServer_sIsInAirPlaySenderSystemServer = result;
  return result;
}

uint64_t APSIsInAudioSystemServer()
{
  if (APSIsInAudioSystemServer_sOnceToken != -1)
  {
    dispatch_once(&APSIsInAudioSystemServer_sOnceToken, &__block_literal_global_356);
  }

  return APSIsInAudioSystemServer_sIsInAudioSystemServer;
}

uint64_t __APSIsInAudioSystemServer_block_invoke(uint64_t a1)
{
  result = in_audio_mx_server_process();
  APSIsInAudioSystemServer_sIsInAudioSystemServer = result;
  return result;
}

double APSGetCPULoadAverage(void *a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0.0;
  if (APSGetCPULoadAverage_sOnceToken != -1)
  {
    dispatch_once(&APSGetCPULoadAverage_sOnceToken, &__block_literal_global_358);
  }

  v2 = getloadavg(v4, 1);
  result = v4[0];
  if (a1)
  {
    *a1 = APSGetCPULoadAverage_sProcessorCount;
  }

  if (v2 != 1)
  {
    return 0.0;
  }

  return result;
}

uint64_t __APSGetCPULoadAverage_block_invoke()
{
  result = sysconf(58);
  APSGetCPULoadAverage_sProcessorCount = result;
  return result;
}

uint64_t APSGetAllowPersistentGroupsOnInfra()
{
  if (APSGetAllowPersistentGroupsOnInfra_sAllowPersistentGroupsOnInfraOnce != -1)
  {
    dispatch_once(&APSGetAllowPersistentGroupsOnInfra_sAllowPersistentGroupsOnInfraOnce, &__block_literal_global_360);
  }

  return APSGetAllowPersistentGroupsOnInfra_sAllowPersistentGroupsOnInfra;
}

uint64_t __APSGetAllowPersistentGroupsOnInfra_block_invoke()
{
  if (APSIsVirtualMachine_sCheckOnceForVM != -1)
  {
    dispatch_once(&APSIsVirtualMachine_sCheckOnceForVM, &__block_literal_global_342);
  }

  APSGetAllowPersistentGroupsOnInfra_sAllowPersistentGroupsOnInfra = APSIsVirtualMachine_sIsVirtualMachine;
  result = IsAppleInternalBuild();
  if (result)
  {
    result = APSSettingsGetIntWithOverrideAndDefault(@"allowPersistentGroupsOnInfra", 0, APSGetAllowPersistentGroupsOnInfra_sAllowPersistentGroupsOnInfra);
    APSGetAllowPersistentGroupsOnInfra_sAllowPersistentGroupsOnInfra = result;
  }

  return result;
}

uint64_t RunAsMobile()
{
  v0 = getpwnam("mobile");
  if (!v0)
  {
    v4 = 4294960587;
    v5 = 4294960587;
    goto LABEL_7;
  }

  v1 = v0;
  v2 = getuid();
  pw_uid = v1->pw_uid;
  if (v2 != pw_uid)
  {
    v5 = setuid(pw_uid);
    v4 = v5;
    if (!v5)
    {
      return v4;
    }

LABEL_7:
    APSLogErrorAt(v5);
    return v4;
  }

  return 0;
}

uint64_t APCUGetFairPlayHWInfoEx(_DWORD *a1, char *a2, size_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = MGCopyAnswer();
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 == CFStringGetTypeID())
    {
      CString = CFStringGetCString(v7, buffer, 64, 0x600u);
      if (CString)
      {
        v10 = buffer[0];
        if (buffer[0])
        {
          v11 = a1 + 1;
          v12 = buffer;
          v13 = 4;
          while (1)
          {
            if (!v12[1])
            {
LABEL_10:
              v10 = v13 - 4;
              goto LABEL_11;
            }

            if (v13 == 24)
            {
              APSLogErrorAt(0);
              v15 = 4294960553;
              goto LABEL_14;
            }

            if (sscanf(v12, "%2hhx", v11) != 1)
            {
              break;
            }

            ++v13;
            v14 = v12[2];
            v12 += 2;
            v11 = (v11 + 1);
            if (!v14)
            {
              goto LABEL_10;
            }
          }

          APSLogErrorAt(0);
          v15 = 4294960554;
        }

        else
        {
LABEL_11:
          *a1 = v10;
          if (a2)
          {
            strlcpy(a2, buffer, a3);
          }

          v15 = 0;
        }
      }

      else
      {
        APSLogErrorAt(CString);
        v15 = 4294960596;
      }
    }

    else
    {
      APSLogErrorAt(0);
      v15 = 4294960540;
    }

LABEL_14:
    CFRelease(v7);
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960569;
  }

  return v15;
}

uint64_t APSDispatchSectionGetTypeID()
{
  if (gAPSDispatchSectionInitOnce != -1)
  {
    dispatch_once_f(&gAPSDispatchSectionInitOnce, 0, _APSDispatchSectionGetTypeID);
  }

  return gAPSDispatchSectionTypeID;
}

uint64_t _APSDispatchSectionGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSDispatchSectionTypeID = result;
  return result;
}

uint64_t APSDispatchSectionCreate(void *a1)
{
  if (gAPSDispatchSectionInitOnce != -1)
  {
    dispatch_once_f(&gAPSDispatchSectionInitOnce, 0, _APSDispatchSectionGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v3 = Instance;
    Instance[4] = 0;
    v4 = Instance + 4;
    Instance[2] = 0;
    Instance[3] = 0;
    Instance[5] = Instance + 4;
    v5 = FigSimpleMutexCreate();
    *(v4 - 2) = v5;
    if (v5)
    {
      result = 0;
      *a1 = v3;
      return result;
    }

    CFRelease(v3);
  }

  return 4294960568;
}

uint64_t APSDispatchSectionEnter(uint64_t a1, NSObject *a2, void (__cdecl *a3)(void *), void *a4)
{
  FigSimpleMutexLock();
  v8 = 4294960591;
  if (a2 && a3)
  {
    if (*(a1 + 24))
    {
      v9 = malloc_type_malloc(0x30uLL, 0x10A0040C5FEEBA1uLL);
      if (v9)
      {
        v10 = v9;
        v9[1] = a2;
        v9[2] = 0;
        *(v9 + 6) = 0;
        v9[4] = a3;
        v9[5] = a4;
        dispatch_retain(a2);
        v8 = 0;
        *v10 = 0;
        **(a1 + 40) = v10;
        *(a1 + 40) = v10;
      }

      else
      {
        v8 = 4294960568;
      }
    }

    else
    {
      CFRetain(a1);
      *(a1 + 24) = 1;
      dispatch_async_f(a2, a4, a3);
      v8 = 0;
    }
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t APSDispatchSectionEnterWithPriorityDispatcher(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigSimpleMutexLock();
  v10 = 4294960591;
  if (a2 && a4)
  {
    if (*(a1 + 24))
    {
      v11 = malloc_type_malloc(0x30uLL, 0x10A0040C5FEEBA1uLL);
      if (v11)
      {
        v12 = v11;
        v13 = CFRetain(a2);
        v10 = 0;
        v12[1] = 0;
        v12[2] = v13;
        *(v12 + 6) = a3;
        v12[4] = a4;
        v12[5] = a5;
        *v12 = 0;
        **(a1 + 40) = v12;
        *(a1 + 40) = v12;
      }

      else
      {
        v10 = 4294960568;
      }
    }

    else
    {
      v14 = priorityDispatcher_setPriority(a2, a3, 0);
      if (v14)
      {
        v10 = v14;
      }

      else
      {
        v10 = priorityDispatcher_dispatchFunction(a2, a4, a5, 1);
        if (!v10)
        {
          CFRetain(a1);
          *(a1 + 24) = 1;
        }
      }
    }
  }

  FigSimpleMutexUnlock();
  return v10;
}

uint64_t APSDispatchSectionEnterWithBlock(uint64_t a1, NSObject *a2, void *aBlock)
{
  v3 = 4294960591;
  if (a2 && aBlock)
  {
    v6 = _Block_copy(aBlock);
    if (v6)
    {
      v7 = v6;
      v3 = APSDispatchSectionEnter(a1, a2, _APSDispatchSectionDidEnterWithBlock, v6);
      if (v3)
      {
        _Block_release(v7);
      }
    }

    else
    {
      return 4294960568;
    }
  }

  return v3;
}

void _APSDispatchSectionDidEnterWithBlock(void (**a1)(void))
{
  a1[2]();

  _Block_release(a1);
}

uint64_t APSDispatchSectionLeave(uint64_t a1)
{
  FigSimpleMutexLock();
  if (!*(a1 + 24))
  {
    v6 = 4294960587;
    goto LABEL_12;
  }

  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
    *v2 = *v3;
    if (!v4)
    {
      *(a1 + 40) = v2;
    }

    v5 = *(v3 + 1);
    if (v5)
    {
      dispatch_async_f(v5, *(v3 + 5), *(v3 + 4));
      dispatch_release(*(v3 + 1));
    }

    else
    {
      v7 = *(v3 + 2);
      if (v7)
      {
        priorityDispatcher_setPriority(v7, v3[6], 0);
        v6 = priorityDispatcher_dispatchFunction(*(v3 + 2), *(v3 + 4), *(v3 + 5), 1);
        CFRelease(*(v3 + 2));
        goto LABEL_11;
      }
    }

    v6 = 0;
LABEL_11:
    free(v3);
LABEL_12:
    FigSimpleMutexUnlock();
    return v6;
  }

  *(a1 + 24) = 0;
  FigSimpleMutexUnlock();
  CFRelease(a1);
  return 0;
}

uint64_t APSW5LogCollect(__CFString *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277D7BB78] requestWithItemID:83 configuration:0];
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = @"AirPlay Performance Issue";
    }

    v6 = [MEMORY[0x277D7BB68] sharedClient];
    v13[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v11[0] = @"Reason";
    v11[1] = @"Compress";
    v12[0] = v5;
    v12[1] = MEMORY[0x277CBEC38];
    if ([v6 collectLogs:v7 configuration:objc_msgSend(MEMORY[0x277CBEAC0] update:"dictionaryWithObjects:forKeys:count:" receipts:v12 error:{v11, 2), &__block_literal_global_2030, 0, &v10}])
    {
      v8 = 0;
    }

    else
    {
      APSLogErrorAt(0);
      if (NSErrorToOSStatus())
      {
        v8 = 0;
      }

      else
      {
        v8 = 4294960596;
      }

      if (gLogCategory_APSW5Log <= 50 && (gLogCategory_APSW5Log != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSW5Log, "OSStatus APSW5LogCollect(CFStringRef)", 33554482, "Failed to collect WiFi logs error: %@", v10);
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    v8 = 4294960568;
  }

  objc_autoreleasePoolPop(v2);
  return v8;
}

void __APSW5LogCollect_block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APSW5Log <= 40 && (gLogCategory_APSW5Log != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSW5Log, "OSStatus APSW5LogCollect(CFStringRef)_block_invoke", 33554472, "Wifi Event %@", a2);
  }
}

uint64_t APSCMBlockBufferCreateWithDispatchData(const __CFAllocator *a1, NSObject *a2, CFTypeRef *a3)
{
  buffer_ptr = 0;
  blockBufferOut = 0;
  size_ptr = 0;
  v3 = 4294960591;
  if (a2 && a3)
  {
    APSTimeProfilerTaskBegin(@"DispatchDataCreateMap");
    v7 = dispatch_data_create_map(a2, &buffer_ptr, &size_ptr);
    APSTimeProfilerTaskEnd(@"DispatchDataCreateMap");
    if (v7)
    {
      customBlockSource.version = 0;
      customBlockSource.AllocateBlock = 0;
      customBlockSource.FreeBlock = bbufUtils_freeDispatchDataBlock;
      customBlockSource.refCon = v7;
      v3 = CMBlockBufferCreateWithMemoryBlock(a1, buffer_ptr, size_ptr, *MEMORY[0x277CBED00], &customBlockSource, 0, size_ptr, 0, &blockBufferOut);
      if (!v3)
      {
        dispatch_retain(v7);
        *a3 = CFRetain(blockBufferOut);
      }

      dispatch_release(v7);
      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
      }
    }

    else
    {
      return 4294960568;
    }
  }

  return v3;
}

uint64_t APSCMBlockBufferCreateContiguousCopy(const __CFAllocator *a1, const __CFAllocator *a2, CMBlockBufferRef theBuffer, CFTypeRef *a4)
{
  dataPointerOut = 0;
  theBuffera = 0;
  v4 = 4294960591;
  if (theBuffer && a4)
  {
    DataLength = CMBlockBufferGetDataLength(theBuffer);
    if (DataLength)
    {
      v10 = DataLength;
      DataPointer = CMBlockBufferCreateWithMemoryBlock(a1, 0, v10, a2, 0, 0, v10, 1u, &theBuffera);
      if (!DataPointer)
      {
        DataPointer = CMBlockBufferGetDataPointer(theBuffera, 0, 0, 0, &dataPointerOut);
        if (!DataPointer)
        {
          DataPointer = CMBlockBufferCopyDataBytes(theBuffer, 0, v10, dataPointerOut);
          if (!DataPointer)
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {
      DataPointer = CMBlockBufferCreateEmpty(a1, 0, 1u, &theBuffera);
      if (!DataPointer)
      {
LABEL_7:
        v4 = 0;
        *a4 = CFRetain(theBuffera);
        goto LABEL_10;
      }
    }

    v4 = DataPointer;
  }

LABEL_10:
  if (theBuffera)
  {
    CFRelease(theBuffera);
  }

  return v4;
}

uint64_t APSCMBlockBufferReplace(CMBlockBufferRef theBuffer, uint64_t a2, OpaqueCMBlockBuffer *a3, size_t a4, uint64_t a5)
{
  v15 = 0;
  lengthAtOffsetOut = 0;
  result = 4294960591;
  if (theBuffer)
  {
    if (a3)
    {
      DataLength = CMBlockBufferGetDataLength(theBuffer);
      v12 = CMBlockBufferGetDataLength(a3);
      result = 4294960591;
      if (a5 + a2 <= DataLength)
      {
        v13 = a5 + a4;
        if (v13 <= v12)
        {
          if (v13 <= a4)
          {
            return 0;
          }

          else
          {
            while (1)
            {
              result = CMBlockBufferGetDataPointer(a3, a4, &lengthAtOffsetOut, 0, &v15);
              if (result)
              {
                break;
              }

              v14 = lengthAtOffsetOut >= v13 - a4 ? v13 - a4 : lengthAtOffsetOut;
              result = CMBlockBufferReplaceDataBytes(v15, theBuffer, a4 + a2, v14);
              if (result)
              {
                break;
              }

              a4 += lengthAtOffsetOut;
              if (a4 >= v13)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t APSCMBlockBufferCreateBigUIntWithUInt64(CFAllocatorRef structureAllocator, unint64_t a2, CMBlockBufferRef *blockBufferOut)
{
  if (a2)
  {
    v6 = ilog2_64();
    v7 = MEMORY[0x223DB3470](structureAllocator, 8, 0x100004000313F17, 0);
    if (!v7)
    {
      return 4294960568;
    }

    v8 = v7;
    *v7 = bswap64(a2);
    v9 = CMBlockBufferCreateWithMemoryBlock(structureAllocator, v7, 8uLL, structureAllocator, 0, 8 - ((v6 >> 3) + 1), (v6 >> 3) + 1, 0, blockBufferOut);
    if (v9)
    {
      CFAllocatorDeallocate(structureAllocator, v8);
    }

    return v9;
  }

  else
  {

    return CMBlockBufferCreateEmpty(structureAllocator, 0, 0, blockBufferOut);
  }
}

uint64_t APSCMBlockBufferGetBigUIntAsUInt64(OpaqueCMBlockBuffer *a1, unint64_t *a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  DataLength = CMBlockBufferGetDataLength(a1);
  if (DataLength > 8)
  {
    return 4294960553;
  }

  if (!a2)
  {
    return 0;
  }

  if (DataLength)
  {
    result = CMBlockBufferCopyDataBytes(a1, 0, DataLength, a2 - DataLength + 8);
    if (result)
    {
      return result;
    }

    v6 = bswap64(*a2);
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t APSCMBlockBufferCreateWithUUID(const __CFUUID *a1, void *a2)
{
  if (!a2)
  {
    return 4294960591;
  }

  CFUUIDGetUUIDBytes(a1);
  BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
  if (!BlockBufferCopyingMemoryBlock)
  {
    *a2 = 0;
  }

  return BlockBufferCopyingMemoryBlock;
}

uint64_t APSCMBlockBufferCopyAsUUID(OpaqueCMBlockBuffer *a1, CFTypeRef *a2)
{
  *&v6.byte0 = 0;
  *&v6.byte8 = 0;
  if (!a2)
  {
    return 4294960591;
  }

  if (CMBlockBufferGetDataLength(a1) != 16)
  {
    return 4294960553;
  }

  result = CMBlockBufferCopyDataBytes(a1, 0, 0x10uLL, &v6);
  if (!result)
  {
    result = CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], v6);
    if (result)
    {
      v5 = result;
      *a2 = CFRetain(result);
      CFRelease(v5);
      return 0;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t APSCMBlockBufferCreateWithString(const __CFAllocator *a1, __CFString *theString, CFStringEncoding encoding, int a4, CMBlockBufferRef *a5)
{
  v19 = 0;
  usedBufLen = 0;
  v5 = 4294960591;
  if (theString && a5)
  {
    if (!a4 || (CStringPtr = CFStringGetCStringPtr(theString, encoding)) == 0 || (v11 = CStringPtr, v12 = strlen(CStringPtr), v12 < 0x1D))
    {
      Length = CFStringGetLength(theString);
      v21.location = 0;
      v21.length = Length;
      if (CFStringGetBytes(theString, v21, encoding, 0, 1u, 0, 0, &usedBufLen) != Length)
      {
        return 4294960579;
      }

      if (usedBufLen < 1)
      {
        return CMBlockBufferCreateEmpty(a1, 0, 0, a5);
      }

      v15 = MEMORY[0x223DB3470](a1);
      if (!v15)
      {
        return 4294960568;
      }

      v16 = v15;
      v22.location = 0;
      v22.length = Length;
      if (CFStringGetBytes(theString, v22, encoding, 0, 1u, v15, usedBufLen, &v19) == Length)
      {
        if (v19 == usedBufLen)
        {
          v5 = CMBlockBufferCreateWithMemoryBlock(a1, v16, v19, a1, 0, 0, v19, 0, a5);
          if (!v5)
          {
            return v5;
          }
        }

        else
        {
          v5 = 4294960548;
        }
      }

      else
      {
        v5 = 4294960579;
      }

      CFAllocatorDeallocate(a1, v16);
      return v5;
    }

    v13 = *MEMORY[0x277CBED00];
    customBlockSource.version = 0;
    customBlockSource.AllocateBlock = 0;
    customBlockSource.FreeBlock = bbufUtils_freeStringBlock;
    customBlockSource.refCon = theString;
    v5 = CMBlockBufferCreateWithMemoryBlock(a1, v11, v12, v13, &customBlockSource, 0, v12, 0, a5);
    if (!v5)
    {
      CFRetain(theString);
    }
  }

  return v5;
}

uint64_t APSCMBlockBufferCopyAsString(const __CFAllocator *a1, CMBlockBufferRef theBuffer, CFStringEncoding a3, int a4, CFTypeRef *a5)
{
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  contentsDeallocator = 0;
  v5 = 4294960591;
  if (!theBuffer || !a5)
  {
    return v5;
  }

  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!DataLength)
  {
    v5 = 0;
    *a5 = CFRetain(&stru_28358B348);
    goto LABEL_21;
  }

  v12 = DataLength;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
LABEL_5:
    v5 = DataPointer;
    goto LABEL_21;
  }

  if (a4 && lengthAtOffsetOut == v12)
  {
    if (APSReferencingAllocatorGetOverheadBytes_sOnce != -1)
    {
      dispatch_once_f(&APSReferencingAllocatorGetOverheadBytes_sOnce, &APSReferencingAllocatorGetOverheadBytes_sOverheadBytes, refAllocator_calculateOverheadBytes);
    }

    if (v12 > APSReferencingAllocatorGetOverheadBytes_sOverheadBytes)
    {
      DataPointer = APSReferencingAllocatorCreate(a1, theBuffer, &contentsDeallocator);
      if (DataPointer)
      {
        goto LABEL_5;
      }

      v14 = 0;
      v15 = contentsDeallocator;
LABEL_19:
      v17 = CFStringCreateWithBytesNoCopy(a1, dataPointerOut, v12, a3, 1u, v15);
      *a5 = v17;
      if (v17)
      {
        v5 = 0;
        goto LABEL_21;
      }

      if (v14)
      {
        v5 = 4294960568;
        v15 = contentsDeallocator;
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  if (a1)
  {
    v15 = CFRetain(a1);
  }

  else
  {
    v15 = 0;
  }

  contentsDeallocator = v15;
  v16 = MEMORY[0x223DB3470](v15, v12, 1919546159, 0);
  if (v16)
  {
    v14 = v16;
    dataPointerOut = v16;
    v5 = CMBlockBufferCopyDataBytes(theBuffer, 0, v12, v16);
    if (v5)
    {
LABEL_18:
      CFAllocatorDeallocate(v15, v14);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_27:
  v5 = 4294960568;
LABEL_21:
  if (contentsDeallocator)
  {
    CFRelease(contentsDeallocator);
  }

  return v5;
}

uint64_t AirPlayDeviceSupportsAWDLSolo(unsigned int *a1)
{
  if (APSIsVirtualMachine_sCheckOnceForVM != -1)
  {
    dispatch_once(&APSIsVirtualMachine_sCheckOnceForVM, &__block_literal_global_342);
  }

  if (APSIsVirtualMachine_sIsVirtualMachine != 1)
  {
    pthread_mutex_lock(&AirPlayDeviceSupportsAWDLSolo_soloQueryMutex);
    if ((AirPlayDeviceSupportsAWDLSolo_querySuccessful & 1) == 0)
    {
      Int64 = WiFiManagerGetInt64();
      v3 = Int64 & 1;
      AirPlayDeviceSupportsAWDLSolo_supportsSolo = Int64 & 1;
      AirPlayDeviceSupportsAWDLSolo_querySuccessful = 1;
      if (gLogCategory_APSNetworkUtils > 40)
      {
        goto LABEL_17;
      }

      if (gLogCategory_APSNetworkUtils != -1)
      {
        goto LABEL_7;
      }

      if (_LogCategory_Initialize())
      {
        LODWORD(v3) = AirPlayDeviceSupportsAWDLSolo_supportsSolo;
LABEL_7:
        v4 = "supports";
        if (!v3)
        {
          v4 = "does NOT support";
        }

        LogPrintF(&gLogCategory_APSNetworkUtils, "Boolean AirPlayDeviceSupportsAWDLSolo(OSStatus *)", 33554472, "Solo Support query was successful. The device %s AWDL Solo.\n", v4);
      }
    }

    v3 = AirPlayDeviceSupportsAWDLSolo_supportsSolo;
    if (gLogCategory_APSNetworkUtils <= 10 && (gLogCategory_APSNetworkUtils != -1 || _LogCategory_Initialize()))
    {
      v5 = "supports";
      if (!v3)
      {
        v5 = "does not support";
      }

      LogPrintF(&gLogCategory_APSNetworkUtils, "Boolean AirPlayDeviceSupportsAWDLSolo(OSStatus *)", 33554442, "AirPlay Device %s AWDL Solo.\n", v5);
    }

    goto LABEL_17;
  }

  if (gLogCategory_APSNetworkUtils <= 50 && (gLogCategory_APSNetworkUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSNetworkUtils, "Boolean AirPlayDeviceSupportsAWDLSolo(OSStatus *)", 33554482, "Ignoring AWDL Solo mode check on VirtualMachine\n");
  }

  v3 = 0;
LABEL_17:
  pthread_mutex_unlock(&AirPlayDeviceSupportsAWDLSolo_soloQueryMutex);
  if (a1)
  {
    *a1 = 0;
  }

  return v3;
}

char *AirPlayCreateAWDLChannelSequenceString(uint64_t a1, uint64_t a2, unsigned int a3, char **a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3 >= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = a3;
  }

  if (a3)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v7 += snprintf(&__s1[v7], 256 - v7, "%u", *(a1 + v8));
      if (v7 > 0xFF)
      {
        break;
      }

      if (*(a1 + v8))
      {
        v9 = *(a2 + 4 * v8);
        if ((v9 & 0x400) != 0)
        {
          v12 = snprintf(&__s1[v7], 256 - v7, "++");
          goto LABEL_13;
        }

        if ((v9 & 4) != 0)
        {
          v10 = 256 - v7;
          v11 = &__s1[v7];
          if ((v9 & 0x200) != 0)
          {
            v12 = snprintf(v11, v10, "+");
          }

          else
          {
            v12 = snprintf(v11, v10, "-");
          }

LABEL_13:
          v7 += v12;
          if (v7 > 0xFF)
          {
            break;
          }
        }
      }

      if (v8 >= (v4 - 1) || (v7 += snprintf(&__s1[v7], 256 - v7, ", "), v7 < 0x100))
      {
        if (v4 != ++v8)
        {
          continue;
        }
      }

      break;
    }
  }

  result = strdup(__s1);
  *a4 = result;
  return result;
}

uint64_t APSCopyNetworkInterfaceType(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (!a1)
    {
      APSLogErrorAt(0);
      return 0;
    }

    v3 = _SCNetworkInterfaceCreateWithBSDName();
    if (v3)
    {
      v4 = v3;
      InterfaceType = SCNetworkInterfaceGetInterfaceType(v3);
      if (InterfaceType)
      {
        InterfaceType = CFRetain(InterfaceType);
      }

      *a2 = InterfaceType;
      CFRelease(v4);
      return 0;
    }

    APSLogErrorAt(0);
    return 4294960568;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

CFStringRef APSNetworkCreateIPv6AddressWithScope(const __CFString *a1, uint64_t a2, unint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a1 || !(a2 | a3))
  {
    return 0;
  }

  location = CFStringFind(a1, @"%", 0).location;
  v5 = MEMORY[0x277CBECE8];
  if (location == -1)
  {
    v10 = CFRetain(a1);
LABEL_8:
    MutableCopy = v10;
    goto LABEL_9;
  }

  v6 = location;
  result.location = 0;
  result.length = 0;
  v22.length = CFStringGetLength(a1) - location;
  v22.location = v6;
  v7 = CFStringFindWithOptions(a1, @"]", v22, 0, &result);
  v8 = *v5;
  if (!v7)
  {
    v23.location = 0;
    v23.length = v6;
    v10 = CFStringCreateWithSubstring(v8, a1, v23);
    goto LABEL_8;
  }

  MutableCopy = CFStringCreateMutableCopy(v8, 0, a1);
  v21.length = result.location - v6;
  v21.location = v6;
  CFStringDelete(MutableCopy, v21);
LABEL_9:
  if (gLogCategory_APSNetworkUtils <= 30 && (gLogCategory_APSNetworkUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSNetworkUtils, "CFStringRef apsnet_copyAddressStrippingScope(CFStringRef)", 33554462, "Stripped %@ to %@", a1, MutableCopy);
  }

  if (!CFStringGetCString(MutableCopy, &result, 128, 0x8000100u))
  {
    goto LABEL_24;
  }

  v11 = StringToSockAddr();
  if (!v11)
  {
    if (gLogCategory_APSNetworkUtils <= 30 && (gLogCategory_APSNetworkUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSNetworkUtils, "CFStringRef APSNetworkCreateIPv6AddressWithScope(CFStringRef, const sockaddr_ip *, CFStringRef)", 33554462, "Address %'s: family %d%?{end}; isLocal: %s\n", &result, 0, 1, "no");
    }

    if (gLogCategory_APSNetworkUtils > 40 || gLogCategory_APSNetworkUtils == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_24;
    }

    v12 = 33554472;
    v16 = a1;
    v13 = "No conversion needed for address %@ - not IPv6 link local\n";
    goto LABEL_22;
  }

  if (gLogCategory_APSNetworkUtils <= 60)
  {
    v15 = v11;
    if (gLogCategory_APSNetworkUtils != -1 || _LogCategory_Initialize())
    {
      p_result = &result;
      v18 = v15;
      v16 = a1;
      v13 = "Error converting address %'@/%'s to ip: %#m\n";
      v12 = 33554492;
LABEL_22:
      LogPrintF(&gLogCategory_APSNetworkUtils, "CFStringRef APSNetworkCreateIPv6AddressWithScope(CFStringRef, const sockaddr_ip *, CFStringRef)", v12, v13, v16, p_result, v18);
    }
  }

LABEL_24:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return 0;
}

CFMutableArrayRef APSNetworkCopyConvertedLinkLocalIPv6Addresses(const __CFArray *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || CFArrayGetCount(a1) < 1 || !(a2 | a3))
  {
    return 0;
  }

  v6 = *MEMORY[0x277CBECE8];
  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(v6, Count, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    FigCFArrayApplyBlock();
  }

  return Mutable;
}

void __APSNetworkCopyConvertedLinkLocalIPv6Addresses_block_invoke(uint64_t a1, const __CFString *a2)
{
  IPv6AddressWithScope = APSNetworkCreateIPv6AddressWithScope(a2, *(a1 + 32), *(a1 + 40));
  if (IPv6AddressWithScope)
  {
    v5 = IPv6AddressWithScope;
    if (gLogCategory_APSNetworkUtils <= 30 && (gLogCategory_APSNetworkUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSNetworkUtils, "CFArrayRef APSNetworkCopyConvertedLinkLocalIPv6Addresses(CFArrayRef, const sockaddr_ip *, CFStringRef)_block_invoke", 33554462, "Converted IPv6 link local %@ -> %@\n", a2, v5);
    }

    CFArrayAppendValue(*(a1 + 48), v5);

    CFRelease(v5);
  }

  else
  {
    v6 = *(a1 + 48);

    CFArrayAppendValue(v6, a2);
  }
}

uint64_t APSAudioIOAssertionGetTypeID()
{
  if (gAPSAudioIOAssertionInitOnce != -1)
  {
    dispatch_once_f(&gAPSAudioIOAssertionInitOnce, 0, _APSAudioIOAssertionGetTypeID);
  }

  return gAPSAudioIOAssertionTypeID;
}

uint64_t _APSAudioIOAssertionGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSAudioIOAssertionTypeID = result;
  return result;
}

void _APSAudioIOAssertionFinalize(uint64_t a1)
{
  if (gLogCategory_APSAudioIOAssertion <= 50 && (gLogCategory_APSAudioIOAssertion != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSAudioIOAssertion, "void _APSAudioIOAssertionFinalize(CFTypeRef)", 33554482, "[%{ptr}] '%@' finalized", a1, *(a1 + 16));
  }

  if (*(a1 + 24))
  {
    FigSimpleMutexLock();
    v2 = *(a1 + 24);
    v3 = *(v2 + 16) - 1;
    *(v2 + 16) = v3;
    if (!v3)
    {
      audioIOAssertion_setAudioIOState(v2, 0);
    }

    FigSimpleMutexUnlock();
  }

  v4 = *(a1 + 16);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t audioIOAssertion_setAudioIOState(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  inPropertyData = a2 != 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  v4 = *(a1 + 20);
  if (v4)
  {
    if (v4 == 1836589345)
    {
      getpid();
      CMSessionMgrSystemSoundActivateForPID();
      v4 = 0;
    }

    else if (v4 == 1667330849)
    {
      v5 = AudioServicesSetProperty(0x61637421u, 4u, (a1 + 24), 4u, &inPropertyData);
      v4 = v5;
      if (v5)
      {
        APSLogErrorAt(v5);
      }
    }

    else
    {
      v4 = 4294960561;
    }
  }

  if (gLogCategory_APSAudioIOAssertion <= 110 && (gLogCategory_APSAudioIOAssertion != -1 || _LogCategory_Initialize()))
  {
    v6 = 70;
    if (v2)
    {
      v6 = 84;
    }

    LogPrintF(&gLogCategory_APSAudioIOAssertion, "OSStatus audioIOAssertion_setAudioIOState(APSAudioIOAssertionManager *, Boolean)", 33554542, "setAudioIOState ssid=%u active=%c method='%C' err=%#m", *(a1 + 24), v6, *(a1 + 20));
  }

  return v4;
}

uint64_t APSAudioIOAssertionCreate(__CFString *a1, CFTypeRef *a2)
{
  if (audioIOAssertion_getManager_sManagerOnce == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_20:
    APSLogErrorAt(0);
    return 4294960591;
  }

  dispatch_once_f(&audioIOAssertion_getManager_sManagerOnce, &audioIOAssertion_getManager_sManager, audioIOAssertion_initManager);
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (gAPSAudioIOAssertionInitOnce != -1)
  {
    dispatch_once_f(&gAPSAudioIOAssertionInitOnce, 0, _APSAudioIOAssertionGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v5 = Instance;
  *(Instance + 16) = 0;
  *(Instance + 24) = 0;
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = &stru_28358B348;
  }

  v5[2] = CFRetain(v6);
  FigSimpleMutexLock();
  v7 = dword_27D00BDB0;
  if (dword_27D00BDB0)
  {
    goto LABEL_12;
  }

  v8 = audioIOAssertion_setAudioIOState(&audioIOAssertion_getManager_sManager, 1);
  if (!v8)
  {
    v7 = dword_27D00BDB0;
LABEL_12:
    dword_27D00BDB0 = v7 + 1;
    v5[3] = &audioIOAssertion_getManager_sManager;
    if (gLogCategory_APSAudioIOAssertion <= 50 && (gLogCategory_APSAudioIOAssertion != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSAudioIOAssertion, "OSStatus APSAudioIOAssertionCreate(CFStringRef, APSAudioIOAssertionRef *)", 33554482, "[%{ptr}] '%@' created", v5, a1);
    }

    v9 = 0;
    *a2 = CFRetain(v5);
    goto LABEL_17;
  }

  v9 = v8;
  APSLogErrorAt(v8);
LABEL_17:
  FigSimpleMutexUnlock();
  CFRelease(v5);
  return v9;
}

uint64_t audioIOAssertion_initManager(uint64_t a1)
{
  *a1 = FigSimpleMutexCreate();
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  *(a1 + 8) = dispatch_queue_create("APSAudioIOAssertionManager.timer", v2);
  *(a1 + 16) = 0x6361732100000000;
  *(a1 + 24) = APSSettingsGetIntWithOverrideAndDefault(@"audioIOAssertionSSID", 0, 3100);
  result = in_audio_mx_server_process();
  if (result)
  {
    *(a1 + 20) = 1836589345;
  }

  return result;
}

uint64_t APSAudioIOAssertionUntilTime(__CFString *a1, dispatch_time_t a2)
{
  context = 0;
  v3 = APSAudioIOAssertionCreate(a1, &context);
  v4 = v3;
  if (v3)
  {
    APSLogErrorAt(v3);
  }

  else
  {
    dispatch_after_f(a2, *(*(context + 3) + 8), context, MEMORY[0x277CBE550]);
  }

  return v4;
}

uint64_t _APSAudioIOAssertionSetActivationMethod(int a1)
{
  if (audioIOAssertion_getManager_sManagerOnce != -1)
  {
    dispatch_once_f(&audioIOAssertion_getManager_sManagerOnce, &audioIOAssertion_getManager_sManager, audioIOAssertion_initManager);
  }

  FigSimpleMutexLock();
  dword_27D00BDB4 = a1;

  return FigSimpleMutexUnlock();
}

uint64_t _APSAudioIOAssertionGetActivationCount()
{
  if (audioIOAssertion_getManager_sManagerOnce != -1)
  {
    dispatch_once_f(&audioIOAssertion_getManager_sManagerOnce, &audioIOAssertion_getManager_sManager, audioIOAssertion_initManager);
  }

  FigSimpleMutexLock();
  v0 = dword_27D00BDB0;
  FigSimpleMutexUnlock();
  return v0;
}

uint64_t APSPairingAuthenticationCoreUtilsSignBytesForSelfIdentity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy__2107;
  v27 = __Block_byref_object_dispose__2108;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__2107;
  v21 = __Block_byref_object_dispose__2108;
  v22 = 0;
  v16 = 0;
  v6 = objc_alloc_init(MEMORY[0x277D44150]);
  if (!v6 || (v7 = dispatch_semaphore_create(0)) == 0)
  {
    APSLogErrorAt(0);
    v8 = 0;
    v10 = 4294960568;
    goto LABEL_20;
  }

  v8 = v7;
  if (gLogCategory_APSPairingAuthenticationCoreUtils <= 50 && (gLogCategory_APSPairingAuthenticationCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSPairingAuthenticationCoreUtils, "OSStatus APSPairingAuthenticationCoreUtilsSignBytesForSelfIdentity(const void *, size_t, uint8_t *)", 33554482, "Identity for signature creation requested\n");
  }

  dispatch_retain(v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __APSPairingAuthenticationCoreUtilsSignBytesForSelfIdentity_block_invoke;
  v15[3] = &unk_2784A3808;
  v15[5] = &v23;
  v15[6] = &v17;
  v15[4] = v8;
  [v6 getIdentitiesWithFlags:1 completion:v15];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (gLogCategory_APSPairingAuthenticationCoreUtils <= 50 && (gLogCategory_APSPairingAuthenticationCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSPairingAuthenticationCoreUtils, "OSStatus APSPairingAuthenticationCoreUtilsSignBytesForSelfIdentity(const void *, size_t, uint8_t *)", 33554482, "Identity for signature creation received\n");
  }

  v9 = [v18[5] code];
  v10 = v9;
  if (v9)
  {
    goto LABEL_27;
  }

  v11 = [v24[5] firstObject];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_28;
  }

  v13 = [v11 signDataPtr:a1 dataLen:a2 signatureBytes:a3 error:&v16];
  v9 = [v16 code];
  if (v9)
  {
    v10 = v9;
LABEL_27:
    APSLogErrorAt(v9);
    goto LABEL_20;
  }

  if ((v13 & 1) == 0)
  {
LABEL_28:
    APSLogErrorAt(0);
    v10 = 4294960587;
    goto LABEL_20;
  }

  if (gLogCategory_APSPairingAuthenticationCoreUtils <= 30 && (gLogCategory_APSPairingAuthenticationCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSPairingAuthenticationCoreUtils, "OSStatus APSPairingAuthenticationCoreUtilsSignBytesForSelfIdentity(const void *, size_t, uint8_t *)", 33554462, "Signed message with Identity: %@\n", v12);
  }

  v10 = 0;
LABEL_20:

  if (v8)
  {
    dispatch_release(v8);
  }

  [v6 invalidate];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  return v10;
}

void sub_222310A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __APSPairingAuthenticationCoreUtilsSignBytesForSelfIdentity_block_invoke(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 40) = a2;
  *(*(*(a1 + 48) + 8) + 40) = a3;
  dispatch_semaphore_signal(*(a1 + 32));
  v5 = *(a1 + 32);

  dispatch_release(v5);
}

uint64_t APSPairingAuthenticationCoreUtilsVerifySignatureForSameAccount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3052000000;
  v36 = __Block_byref_object_copy__2107;
  v37 = __Block_byref_object_dispose__2108;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__2107;
  v31 = __Block_byref_object_dispose__2108;
  v32 = 0;
  v6 = objc_alloc_init(MEMORY[0x277D44150]);
  if (v6 && (v7 = dispatch_semaphore_create(0)) != 0)
  {
    v8 = v7;
    if (gLogCategory_APSPairingAuthenticationCoreUtils <= 50 && (gLogCategory_APSPairingAuthenticationCoreUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSPairingAuthenticationCoreUtils, "OSStatus APSPairingAuthenticationCoreUtilsVerifySignatureForSameAccount(const void *, size_t, const uint8_t *)", 33554482, "Identities for signature verification requested\n");
    }

    dispatch_retain(v8);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __APSPairingAuthenticationCoreUtilsVerifySignatureForSameAccount_block_invoke;
    v26[3] = &unk_2784A3808;
    v26[5] = &v33;
    v26[6] = &v27;
    v26[4] = v8;
    [v6 getIdentitiesWithFlags:2 completion:v26];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    if (gLogCategory_APSPairingAuthenticationCoreUtils <= 50 && (gLogCategory_APSPairingAuthenticationCoreUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSPairingAuthenticationCoreUtils, "OSStatus APSPairingAuthenticationCoreUtilsVerifySignatureForSameAccount(const void *, size_t, const uint8_t *)", 33554482, "Identities for signature verification received\n");
    }

    v9 = [v28[5] code];
    v10 = v9;
    if (v9)
    {
      APSLogErrorAt(v9);
    }

    else if (v34[5])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v34[5];
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v39 count:16];
      v20 = v6;
      if (v12)
      {
        v13 = *v23;
LABEL_15:
        v14 = 0;
        while (1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v22 + 1) + 8 * v14);
          v21 = 0;
          v16 = [v15 verifySignaturePtr:a3 signatureLen:64 dataPtr:a1 dataLen:a2 error:&v21];
          v17 = v21;
          if (((v21 == 0) & v16) != 0)
          {
            if (gLogCategory_APSPairingAuthenticationCoreUtils <= 30 && (gLogCategory_APSPairingAuthenticationCoreUtils != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APSPairingAuthenticationCoreUtils, "OSStatus APSPairingAuthenticationCoreUtilsVerifySignatureForSameAccount(const void *, size_t, const uint8_t *)", 33554462, "Signature verified with Identity: %@\n", v15);
            }

            v10 = 0;
            goto LABEL_33;
          }

          if (gLogCategory_APSPairingAuthenticationCoreUtils > 30)
          {
            goto LABEL_23;
          }

          if (gLogCategory_APSPairingAuthenticationCoreUtils == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_23;
            }

            v17 = v21;
          }

          LogPrintF(&gLogCategory_APSPairingAuthenticationCoreUtils, "OSStatus APSPairingAuthenticationCoreUtilsVerifySignatureForSameAccount(const void *, size_t, const uint8_t *)", 33554462, "Failure to verify signature with identity: %@. Error: %@\n", v15, v17);
LABEL_23:
          if (v12 == ++v14)
          {
            v18 = [v11 countByEnumeratingWithState:&v22 objects:v39 count:16];
            v12 = v18;
            if (v18)
            {
              goto LABEL_15;
            }

            break;
          }
        }
      }

      APSLogErrorAt(0);
      v10 = 4294960580;
LABEL_33:
      v6 = v20;
    }

    else
    {
      APSLogErrorAt(0);
      v10 = 4294960587;
    }
  }

  else
  {
    APSLogErrorAt(0);
    v8 = 0;
    v10 = 4294960568;
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  [v6 invalidate];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  return v10;
}

void sub_222310F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APSPairingAuthenticationCoreUtilsVerifySignatureForSameAccount_block_invoke(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 40) = a2;
  *(*(*(a1 + 48) + 8) + 40) = a3;
  dispatch_semaphore_signal(*(a1 + 32));
  v5 = *(a1 + 32);

  dispatch_release(v5);
}

uint64_t tGvVBtfGSsOH67XQ()
{
  if (TyZKBvs2dXtrLjcUCR != -1)
  {
    dispatch_once_f(&TyZKBvs2dXtrLjcUCR, 0, Ja1EGqpVx);
  }

  return ItH26wrAHoeKhrXaDR;
}

uint64_t Ja1EGqpVx()
{
  result = _CFRuntimeRegisterClass();
  ItH26wrAHoeKhrXaDR = result;
  return result;
}

uint64_t yItiyMt(uint64_t a1)
{
  result = NhB9kxUGdXXE(a1);
  if (*(a1 + 336))
  {
    result = AES_CTR_Final();
    *(a1 + 336) = 0;
  }

  for (i = 16; i != 448; ++i)
  {
    *(a1 + i) = 0;
  }

  return result;
}

uint64_t NhB9kxUGdXXE(uint64_t a1)
{
  *(a1 + 340) = 0;
  v2 = *(a1 + 344);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 344) = 0;
  }

  v3 = *(a1 + 352);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 352) = 0;
  }

  if (*(a1 + 360))
  {
    SRP_free();
    *(a1 + 360) = 0;
  }

  result = *(a1 + 368);
  if (result)
  {
    result = cstr_free();
    *(a1 + 368) = 0;
  }

  if (*(a1 + 424))
  {
    result = AES_GCM_Final();
    *(a1 + 424) = 0;
  }

  if (*(a1 + 425))
  {
    result = AES_GCM_Final();
    *(a1 + 425) = 0;
  }

  return result;
}

uint64_t gQblcfSzZBQsYCCV(uint64_t *a1, int a2)
{
  if (B0qLAG != -1)
  {
    dispatch_once_f(&B0qLAG, 0, _GlobalInitialize);
  }

  if (tHHVsHfAtS9mW)
  {
    if (TyZKBvs2dXtrLjcUCR != -1)
    {
      dispatch_once_f(&TyZKBvs2dXtrLjcUCR, 0, Ja1EGqpVx);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      *(Instance + 20) = 0u;
      *(Instance + 404) = 0u;
      *(Instance + 420) = 0u;
      v5 = 1634747209;
      *(Instance + 372) = 0u;
      *(Instance + 388) = 0u;
      *(Instance + 340) = 0u;
      *(Instance + 356) = 0u;
      *(Instance + 308) = 0u;
      *(Instance + 324) = 0u;
      *(Instance + 276) = 0u;
      *(Instance + 292) = 0u;
      *(Instance + 244) = 0u;
      *(Instance + 260) = 0u;
      *(Instance + 212) = 0u;
      *(Instance + 228) = 0u;
      *(Instance + 180) = 0u;
      *(Instance + 196) = 0u;
      *(Instance + 148) = 0u;
      *(Instance + 164) = 0u;
      *(Instance + 116) = 0u;
      *(Instance + 132) = 0u;
      *(Instance + 84) = 0u;
      *(Instance + 100) = 0u;
      *(Instance + 52) = 0u;
      *(Instance + 68) = 0u;
      *(Instance + 36) = 0u;
      *(Instance + 432) = 0u;
      *(Instance + 16) = a2;
      if (a2)
      {
        v5 = 1634751305;
        v6 = 11;
        v7 = 1634751312;
        v8 = @"AirPlay Server Peer";
        v9 = @"AirPlay Server Identity";
      }

      else
      {
        v7 = 1634747216;
        v6 = 1;
        v8 = @"AirPlay Client Peer";
        v9 = @"AirPlay Client Identity";
      }

      v10 = 0;
      *(Instance + 24) = v9;
      *(Instance + 32) = v5;
      *(Instance + 40) = v8;
      *(Instance + 48) = v7;
      *(Instance + 52) = v6;
      *(Instance + 56) = v6;
      *a1 = Instance;
    }

    else
    {
      APSLogErrorAt(0);
      return 4294960568;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960534;
  }

  return v10;
}

dispatch_semaphore_t _GlobalInitialize()
{
  result = dispatch_semaphore_create(1);
  tHHVsHfAtS9mW = result;
  return result;
}

uint64_t XoN3GgjZNCvkN1T8I3(uint64_t a1)
{
  result = NhB9kxUGdXXE(a1);
  if (*(a1 + 16))
  {
    v3 = 11;
  }

  else
  {
    v3 = 1;
  }

  *(a1 + 52) = v3;
  *(a1 + 56) = v3;
  if (*(a1 + 336))
  {
    result = AES_CTR_Final();
    *(a1 + 336) = 0;
  }

  return result;
}

__n128 aMoe8v8GNE9T(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 220);
  v3 = *(a1 + 236);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 Dk7hjUuq(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 236) = *(a2 + 16);
  *(a1 + 220) = result;
  return result;
}

uint64_t PCFdAVst(uint64_t a1, const void *a2, CC_LONG a3, const void *a4, CC_LONG a5, _OWORD *a6, _OWORD *a7)
{
  v7 = *(a1 + 56);
  if (*(a1 + 16))
  {
    if (v7 != 14)
    {
      goto LABEL_6;
    }

LABEL_5:
    Mb6C1FLt7vW91ix(a1, a2, a3, a4, a5, a6, a7);
    return 0;
  }

  if (v7 == 5)
  {
    goto LABEL_5;
  }

LABEL_6:
  APSLogErrorAt(0);
  return 4294960587;
}

double Mb6C1FLt7vW91ix(uint64_t a1, const void *a2, CC_LONG a3, const void *a4, CC_LONG a5, _OWORD *a6, _OWORD *a7)
{
  v17 = *MEMORY[0x277D85DE8];
  result = 0.0;
  memset(&v15, 0, sizeof(v15));
  if (a6)
  {
    CC_SHA512_Init(&v15);
    CC_SHA512_Update(&v15, a2, a3);
    CC_SHA512_Update(&v15, (a1 + 252), 0x20u);
    CC_SHA512_Final(md, &v15);
    result = *md;
    *a6 = md[0];
  }

  if (a7)
  {
    CC_SHA512_Init(&v15);
    CC_SHA512_Update(&v15, a4, a5);
    CC_SHA512_Update(&v15, (a1 + 252), 0x20u);
    CC_SHA512_Final(md, &v15);
    result = *md;
    *a7 = md[0];
  }

  return result;
}

uint64_t h4BvW7X(uint64_t a1, __int128 *a2, uint64_t a3, _OWORD *a4, unint64_t a5, void *a6, _BYTE *a7)
{
  v14 = *(a1 + 52);
  if (v14 > 10)
  {
    if ((v14 - 11) >= 2)
    {
      goto LABEL_15;
    }

    if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus h4BvW7X(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554462, "Pair-setup server PS1: %zu bytes\n", a3);
    }

    if (a3 == 32 && a5 > 0x1F)
    {
      v17 = i9kF3TCOFmU(a1, a2, 0);
      if (v17)
      {
        v16 = v17;
      }

      else
      {
        v17 = KUY675K4ryxHGzD5GVD(a1, 1, a4, 0);
        if (!v17)
        {
          *a6 = 32;
          *a7 = 1;
          *(a1 + 52) = 12;
          if (gLogCategory_AirPlayPairing <= 40 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus h4BvW7X(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554472, "Pair-setup server done with peer %.3H\n", a2, 8, 8);
          }

          return 0;
        }

        v16 = v17;
      }

LABEL_66:
      APSLogErrorAt(v17);
      goto LABEL_47;
    }

LABEL_64:
    APSLogErrorAt(0);
    v16 = 4294960553;
    goto LABEL_47;
  }

  switch(v14)
  {
    case 1:
      goto LABEL_5;
    case 2:
      if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus h4BvW7X(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554462, "Pair-setup client PS2: %zu bytes\n", a3);
      }

      if (a3 == 32)
      {
        v18 = *a2;
        *(a1 + 236) = a2[1];
        *(a1 + 220) = v18;
        v17 = i9kF3TCOFmU(a1, a1 + 220, 0);
        if (!v17)
        {
          *a6 = 0;
          *a7 = 1;
          *(a1 + 52) = 3;
          if (gLogCategory_AirPlayPairing <= 40 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus h4BvW7X(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554472, "Pair-setup client done with peer %.3H\n", a2, 8, 8);
          }

          return 0;
        }

        v16 = v17;
        goto LABEL_66;
      }

      goto LABEL_64;
    case 3:
LABEL_5:
      if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus h4BvW7X(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554462, "Pair-setup client PS1\n");
      }

      if (!a3)
      {
        if (a5 > 0x1F)
        {
          v17 = KUY675K4ryxHGzD5GVD(a1, 1, a4, 0);
          v16 = v17;
          if (!v17)
          {
            *a6 = 32;
            *a7 = 0;
            *(a1 + 52) = 2;
            return v16;
          }

          goto LABEL_66;
        }

        goto LABEL_64;
      }

      APSLogErrorAt(0);
      v16 = 4294960591;
LABEL_47:
      v20 = gLogCategory_AirPlayPairing;
      if (*(a1 + 16))
      {
        v21 = 11;
      }

      else
      {
        v21 = 1;
      }

      *(a1 + 52) = v21;
      if (v20 <= 60 && (v20 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus h4BvW7X(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554492, "### Pair-setup failed: %#m\n", v16);
      }

      return v16;
  }

LABEL_15:
  if (gLogCategory_AirPlayPairing < 61)
  {
    if (gLogCategory_AirPlayPairing == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_46;
      }

      v14 = *(a1 + 52);
    }

    LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus h4BvW7X(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554492, "### Bad pair-setup state: %d\n", v14);
LABEL_46:
    v16 = 4294960587;
    goto LABEL_47;
  }

  if (*(a1 + 16))
  {
    v15 = 11;
  }

  else
  {
    v15 = 1;
  }

  *(a1 + 52) = v15;
  return 4294960587;
}

uint64_t KUY675K4ryxHGzD5GVD(uint64_t a1, int a2, _OWORD *a3, _OWORD *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  dispatch_semaphore_wait(tHHVsHfAtS9mW, 0xFFFFFFFFFFFFFFFFLL);
  v6 = 0;
  v7 = 1;
  v36 = 1;
  v8 = *MEMORY[0x277CDC228];
  v9 = *MEMORY[0x277CDC238];
  v10 = *MEMORY[0x277CDBEC8];
  v11 = *MEMORY[0x277CDC188];
  v12 = *MEMORY[0x277CDC550];
  v33 = *MEMORY[0x277CDC558];
  v30 = *MEMORY[0x277CDBF20];
  key = *MEMORY[0x277CDBED8];
  v28 = *MEMORY[0x277CDBEF8];
  v29 = *MEMORY[0x277CDC5E8];
  v26 = *MEMORY[0x277CDC428];
  v24 = *MEMORY[0x277CDC080];
  v25 = *MEMORY[0x277CDC430];
  v22 = *MEMORY[0x277CDC120];
  v23 = *MEMORY[0x277CDBFA0];
  v34 = *MEMORY[0x277CBED28];
  if (a4)
  {
    v13 = *MEMORY[0x277CBED28];
  }

  else
  {
    v13 = 0;
  }

  v32 = v13;
  v21 = *MEMORY[0x277CDC550];
  while (1)
  {
    if (v6)
    {
      CFRelease(v6);
    }

    v6 = KeychainCopyMatchingFormatted(&v36, "{%kO=%O%kO=%O%kO=%i%kO=%O%kO=%O}", v8, v9, v10, @"com.apple.airplay", v11, *(a1 + 32), v12, v34, v33, v32);
    if (!v36)
    {
      CFDictionaryGetData();
      if (!v36)
      {
        APSLogErrorAt(0);
        v36 = -6743;
      }
    }

    if (!a2 || v36 == -25293)
    {
      break;
    }

    v20 = v7;
    KeychainDeleteFormatted("{%kO=%O%kO=%O%kO=%i%kO=%O}", v8, v9, v10, @"com.apple.airplay", v11, *(a1 + 32), v26, v25);
    cced25519_make_key_pair_compat();
    DataToHexCStringEx();
    DataToHexCStringEx();
    SNPrintF(v37, 64, "%@: %.*s", *(a1 + 24), 8, v39);
    v14 = strlen(__s);
    v15 = KeychainAddFormatted(0, "{%kO=%O%kO=%O%kO=%O%kO=%i%kO=%s%kO=%O%kO=%s%kO=%O%kO=%D}", v8, v9, v10, @"com.apple.airplay", key, v28, v11, *(a1 + 32), v24, v37, v23, *(a1 + 24), v30, v39, v22, *(a1 + 24), v29, __s, v14);
    v36 = v15;
    if (!v15)
    {
      v16 = v43;
      *a3 = v42;
      a3[1] = v16;
      if (a4)
      {
        v17 = v41;
        *a4 = v40;
        a4[1] = v17;
      }

      if (gLogCategory_AirPlayPairing <= 50 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus KUY675K4ryxHGzD5GVD(AirPlayPairingSessionRef, Boolean, uint8_t *, uint8_t *)", 33554482, "Created %@: %s\n", *(a1 + 24), v39, v19);
      }

      break;
    }

    v12 = v21;
    if (gLogCategory_AirPlayPairing <= 40)
    {
      if (gLogCategory_AirPlayPairing == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        v15 = v36;
      }

      LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus KUY675K4ryxHGzD5GVD(AirPlayPairingSessionRef, Boolean, uint8_t *, uint8_t *)", 33554472, "### Create %@ failed (try %d of %d): %#m\n", *(a1 + 24), v7, 10, v15);
    }

LABEL_17:
    usleep(0x4E20u);
    v7 = (v7 + 1);
    if (v20 == 10)
    {
      if (gLogCategory_AirPlayPairing <= 60 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus KUY675K4ryxHGzD5GVD(AirPlayPairingSessionRef, Boolean, uint8_t *, uint8_t *)", 33554492, "### Failed to create %@ after %d tries: %#m\n", *(a1 + 24), 10, v36);
      }

      break;
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  dispatch_semaphore_signal(tHHVsHfAtS9mW);
  return v36;
}

uint64_t i9kF3TCOFmU(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  cf = 0;
  v16[0] = 0;
  DataToHexCStringEx();
  v5 = *MEMORY[0x277CDC228];
  v6 = *MEMORY[0x277CDC238];
  v7 = *MEMORY[0x277CDBEC8];
  v8 = *MEMORY[0x277CDC188];
  v9 = *MEMORY[0x277CDBF20];
  Formatted = CFPropertyListCreateFormatted(0, &cf, "{%kO=%O%kO=%O%kO=%i%kO=%s}", *MEMORY[0x277CDC228], *MEMORY[0x277CDC238], *MEMORY[0x277CDBEC8], @"com.apple.airplay", *MEMORY[0x277CDC188], *(a1 + 48), *MEMORY[0x277CDBF20], v16);
  if (Formatted)
  {
    updated = Formatted;
    APSLogErrorAt(Formatted);
  }

  else
  {
    if (!a3)
    {
      a3 = v15;
      SNPrintF(v15, 64, "%@: %.*s", *(a1 + 40), 8, v16);
    }

    dispatch_semaphore_wait(tHHVsHfAtS9mW, 0xFFFFFFFFFFFFFFFFLL);
    v11 = *MEMORY[0x277CDC080];
    updated = KeychainUpdateFormatted(cf, "{%kO=%s%kO=%s}", *MEMORY[0x277CDC080], a3, v9, v16);
    if (updated == -25300)
    {
      updated = KeychainAddFormatted(0, "{%kO=%O%kO=%O%kO=%O%kO=%i%kO=%s%kO=%O%kO=%s%kO=%O}", v5, v6, v7, @"com.apple.airplay", *MEMORY[0x277CDBED8], *MEMORY[0x277CDBEF8], v8, *(a1 + 48), v11, a3, *MEMORY[0x277CDBFA0], *(a1 + 40), v9, v16, *MEMORY[0x277CDC120], *(a1 + 40));
    }

    if (updated != -25293 && updated)
    {
      APSLogErrorAt(updated);
    }

    dispatch_semaphore_signal(tHHVsHfAtS9mW);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (updated != -25293 && updated && gLogCategory_AirPlayPairing <= 60 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus i9kF3TCOFmU(AirPlayPairingSessionRef, const uint8_t *, const char *)", 33554492, "### Save %@ %s failed: %#m\n", *(a1 + 40), v16, updated);
  }

  return updated;
}

uint64_t VBAEFt(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6, _BYTE *a7)
{
  v11 = a3;
  v12 = a2;
  v47 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 16);
  if (v14 == 1)
  {
    if (a3 <= 3)
    {
      goto LABEL_132;
    }

    if (*a2)
    {
      *(a1 + 56) = 11;
    }

    v12 = (a2 + 4);
    v11 = a3 - 4;
  }

  v15 = *(a1 + 56);
  if (v15 <= 4)
  {
    if (v15 == 1)
    {
      goto LABEL_22;
    }

    if (v15 != 2)
    {
      if (v15 != 4)
      {
        goto LABEL_25;
      }

      if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus VBAEFt(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554462, "Pair-verify client PV4: %zu bytes\n", v11);
      }

      if (v11)
      {
        goto LABEL_132;
      }

      *a6 = 0;
      *a7 = 1;
      *(a1 + 56) = 5;
      if (gLogCategory_AirPlayPairing <= 40 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus VBAEFt(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554472, "Pair-verify client done with peer %.3H\n", a1 + 220, 8, 8);
      }

      return 0;
    }

    if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus VBAEFt(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554462, "Pair-verify client PV2: %zu bytes\n", v11);
    }

    if (v11 != 96)
    {
      goto LABEL_132;
    }

    v32 = *v12;
    *(a1 + 204) = v12[1];
    *(a1 + 188) = v32;
    v33 = v12[3];
    v43 = v12[2];
    v44 = v33;
    v34 = v12[5];
    v45 = v12[4];
    v46 = v34;
    cccurve25519();
    for (i = 92; i != 124; ++i)
    {
      *(a1 + i) = 0;
    }

    Mb6C1FLt7vW91ix(a1, "Pair-Verify-AES-Key", 0x13u, "Pair-Verify-AES-IV", 0x12u, v42, v41);
    if (*(a1 + 336))
    {
      AES_CTR_Final();
      *(a1 + 336) = 0;
    }

    v18 = AES_CTR_Init();
    v17 = v18;
    for (j = 0; j != 64; ++j)
    {
      *(v42 + j) = 0;
    }

    for (k = 0; k != 64; ++k)
    {
      *(v41 + k) = 0;
    }

    if (v18)
    {
      goto LABEL_133;
    }

    *(a1 + 336) = 1;
    v18 = AES_CTR_Update();
    if (v18)
    {
      v17 = v18;
      goto LABEL_133;
    }

    v38 = cced25519_verify_compat();
    v28 = gLogCategory_AirPlayPairing;
    if (!v38)
    {
      if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus VBAEFt(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554462, "Pair-verify client PV3\n");
      }

      if (a5 > 0x43)
      {
        cced25519_sign_compat();
        for (m = 0; m != 32; ++m)
        {
          *(a1 + 156 + m) = 0;
        }

        *a4 = 0;
        v18 = AES_CTR_Update();
        v17 = v18;
        if (!v18)
        {
          *a6 = 68;
          *a7 = 0;
          v21 = 4;
          goto LABEL_102;
        }

        goto LABEL_133;
      }

      goto LABEL_132;
    }

    if (gLogCategory_AirPlayPairing <= 50)
    {
      if (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus VBAEFt(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554482, "### Pair-verify client: signature verify failed for %.3H\n", a1 + 220, 32, 32);
      }

      goto LABEL_140;
    }

LABEL_131:
    v17 = 4294960580;
    goto LABEL_58;
  }

  if (v15 > 12)
  {
    if (v15 != 13)
    {
      if (v15 != 14)
      {
        goto LABEL_25;
      }

LABEL_19:
      if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus VBAEFt(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554462, "Pair-verify server PV1: %zu bytes\n", v11);
      }

      if (v11 == 64 && a5 > 0x5F)
      {
        v22 = *v12;
        *(a1 + 204) = v12[1];
        *(a1 + 188) = v22;
        v23 = v12[2];
        *(a1 + 236) = v12[3];
        *(a1 + 220) = v23;
        if (!xOvZekdnwD6(a1, a1 + 220))
        {
          v28 = gLogCategory_AirPlayPairing;
          if (gLogCategory_AirPlayPairing > 50)
          {
            v17 = 4294960551;
            goto LABEL_58;
          }

          if (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus VBAEFt(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554482, "### Pair-verify server unknown peer %.3H\n", a1 + 220, 8, 8);
          }

          v17 = 4294960551;
LABEL_57:
          v28 = gLogCategory_AirPlayPairing;
LABEL_58:
          if (*(a1 + 16))
          {
            v29 = 11;
          }

          else
          {
            v29 = 1;
          }

          *(a1 + 56) = v29;
          if (v28 <= 60 && (v28 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus VBAEFt(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554492, "### Pair-verify failed: %#m\n", v17);
          }

          return v17;
        }

        RandomBytes();
        cccurve25519_make_pub();
        cccurve25519();
        v18 = KUY675K4ryxHGzD5GVD(a1, 1, (a1 + 124), (a1 + 156));
        if (v18)
        {
          v17 = v18;
        }

        else
        {
          cced25519_sign_compat();
          for (n = 156; n != 188; ++n)
          {
            *(a1 + n) = 0;
          }

          Mb6C1FLt7vW91ix(a1, "Pair-Verify-AES-Key", 0x13u, "Pair-Verify-AES-IV", 0x12u, v42, v41);
          if (*(a1 + 336))
          {
            AES_CTR_Final();
            *(a1 + 336) = 0;
          }

          v18 = AES_CTR_Init();
          if (v18)
          {
            v17 = v18;
          }

          else
          {
            *(a1 + 336) = 1;
            v18 = AES_CTR_Update();
            v17 = v18;
            if (!v18)
            {
              v25 = *(a1 + 76);
              *a4 = *(a1 + 60);
              *(a4 + 16) = v25;
              v26 = v44;
              *(a4 + 32) = v43;
              *(a4 + 48) = v26;
              v27 = v46;
              *(a4 + 64) = v45;
              *(a4 + 80) = v27;
              *a6 = 96;
              *a7 = 0;
              v21 = 13;
              goto LABEL_102;
            }
          }
        }

        goto LABEL_133;
      }

      goto LABEL_132;
    }

    if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus VBAEFt(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554462, "Pair-verify server PV3: %zu bytes\n", v11);
    }

    if (v11 != 64)
    {
      goto LABEL_132;
    }

    v30 = v12[1];
    v43 = *v12;
    v44 = v30;
    v31 = v12[3];
    v45 = v12[2];
    v46 = v31;
    v18 = AES_CTR_Update();
    if (v18)
    {
      v17 = v18;
      goto LABEL_133;
    }

    if (!cced25519_verify_compat())
    {
      *a6 = 0;
      *a7 = 1;
      *(a1 + 56) = 14;
      if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus VBAEFt(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554462, "Pair-verify server done with peer %.3H\n", a1 + 220, 8, 8);
      }

      return 0;
    }

    v28 = gLogCategory_AirPlayPairing;
    if (gLogCategory_AirPlayPairing <= 50)
    {
      if (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus VBAEFt(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554482, "### Pair-verify server: signature verify failed for %.3H\n", a1 + 220, 32, 32);
      }

LABEL_140:
      v17 = 4294960580;
      goto LABEL_57;
    }

    goto LABEL_131;
  }

  if (v15 == 5)
  {
LABEL_22:
    if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus VBAEFt(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554462, "Pair-verify client PV1\n");
    }

    if (!v11 && a5 > 0x43)
    {
      RandomBytes();
      cccurve25519_make_pub();
      v18 = KUY675K4ryxHGzD5GVD(a1, 1, (a1 + 124), (a1 + 156));
      v17 = v18;
      if (!v18)
      {
        *a4 = 1;
        v19 = *(a1 + 60);
        *(a4 + 20) = *(a1 + 76);
        *(a4 + 4) = v19;
        v20 = *(a1 + 124);
        *(a4 + 52) = *(a1 + 140);
        *(a4 + 36) = v20;
        *a6 = 68;
        *a7 = 0;
        v21 = 2;
LABEL_102:
        *(a1 + 56) = v21;
        return v17;
      }

LABEL_133:
      APSLogErrorAt(v18);
      goto LABEL_57;
    }

LABEL_132:
    APSLogErrorAt(0);
    v17 = 4294960553;
    goto LABEL_57;
  }

  if (v15 == 11)
  {
    goto LABEL_19;
  }

LABEL_25:
  if (gLogCategory_AirPlayPairing < 61)
  {
    if (gLogCategory_AirPlayPairing == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_56;
      }

      v15 = *(a1 + 56);
    }

    LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus VBAEFt(AirPlayPairingSessionRef, const void *, size_t, void *, size_t, size_t *, Boolean *)", 33554492, "### Bad pair-verify state: %d\n", v15);
LABEL_56:
    v17 = 4294960587;
    goto LABEL_57;
  }

  if (v14)
  {
    v16 = 11;
  }

  else
  {
    v16 = 1;
  }

  *(a1 + 56) = v16;
  return 4294960587;
}

uint64_t xOvZekdnwD6(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CDC228];
  v4 = *MEMORY[0x277CDC238];
  v5 = *MEMORY[0x277CDBEC8];
  v6 = *MEMORY[0x277CDC188];
  v7 = *MEMORY[0x277CDBF20];
  v8 = *(a1 + 48);
  v9 = DataToHexCStringEx();
  result = KeychainCopyMatchingFormatted(0, "{%kO=%O%kO=%O%kO=%i%kO=%s%kO=%O}", v3, v4, v5, @"com.apple.airplay", v6, v8, v7, v9, *MEMORY[0x277CDC550], *MEMORY[0x277CBED28]);
  if (result)
  {
    v11 = result;
    v12 = *MEMORY[0x277CDBED8];
    Value = CFDictionaryGetValue(result, *MEMORY[0x277CDBED8]);
    if (Value && CFEqual(Value, *MEMORY[0x277CDBF10]))
    {
      cf = 0;
      Formatted = CFPropertyListCreateFormatted(0, &cf, "{%kO=%O%kO=%O%kO=%i%kO=%s}", v3, v4, v5, @"com.apple.airplay", v6, *(a1 + 48), v7, v17);
      if (!Formatted)
      {
        updated = KeychainUpdateFormatted(cf, "{%kO=%O}", v12, *MEMORY[0x277CDBEF8]);
        CFRelease(cf);
        if (!updated)
        {
          if (gLogCategory_AirPlayPairing <= 50 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus taE57vhN(AirPlayPairingSessionRef, CFDictionaryRef, const char *)", 33554482, "Migrated peer %s accessibility\n");
          }

          goto LABEL_10;
        }

        Formatted = updated;
      }

      APSLogErrorAt(Formatted);
      if (gLogCategory_AirPlayPairing <= 50 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus taE57vhN(AirPlayPairingSessionRef, CFDictionaryRef, const char *)", 33554482, "### Migrate peer %s accessibility failed: %#m\n");
      }
    }

LABEL_10:
    CFRelease(v11);
    return 1;
  }

  return result;
}

uint64_t rJPl3sdBfc0E3yB(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16))
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    if (a3)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        APSLogErrorAt(0);
        return 4294960568;
      }

      v7 = Mutable;
      CFDictionarySetValue(Mutable, @"method", @"pin");
      CFDictionarySetValue(v7, @"user", cf);
      Bytes = CFPropertyListCreateBytes();
      CFRelease(v7);
      if (Bytes)
      {
        APSLogErrorAt(Bytes);
        return Bytes;
      }
    }

    v9 = *(a1 + 352);
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 352) = cf;
    if (v9)
    {
      CFRelease(v9);
    }

    Bytes = 0;
    *(a1 + 340) = 101;
  }

  return Bytes;
}

uint64_t o4IBrWf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  if (*(a1 + 16) == 1)
  {
    CFDictionaryGetTypeID();
    v4 = CFCreateWithPlistBytes();
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v6 = CFEqual(TypedValue, @"pin");
    if (v6)
    {
      CFStringGetTypeID();
      CFDictionaryGetTypedValue();
      *(a1 + 340) = 111;
    }

    else
    {
      APSLogErrorAt(v6);
      v8 = -6735;
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return -6705;
  }

  return v8;
}

uint64_t GvMGlTNs(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 344);
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 344) = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t SrtySZG0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char *a6)
{
  v105 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 340);
  if (!v10)
  {
    if (*(a1 + 16))
    {
      v10 = 111;
    }

    else
    {
      v10 = 101;
    }

    *(a1 + 340) = v10;
  }

  v101 = 0;
  v99 = 0;
  Length = 0;
  memset(&c, 0, sizeof(c));
  if (v10 <= 105)
  {
    if (v10 != 101)
    {
      if (v10 != 102)
      {
        if (v10 != 104)
        {
          goto LABEL_45;
        }

        if (!a3)
        {
          goto LABEL_314;
        }

        if (!*(a1 + 360) || !*(a1 + 368))
        {
          goto LABEL_313;
        }

        CFDictionaryGetTypeID();
        v14 = CFCreateWithPlistBytes();
        v15 = gLogCategory_AirPlayPairing;
        if (gLogCategory_AirPlayPairing > 30)
        {
          goto LABEL_190;
        }

        if (gLogCategory_AirPlayPairing == -1)
        {
          if (!_LogCategory_Initialize())
          {
LABEL_190:
            CFDataGetTypeID();
            TypedValue = CFDictionaryGetTypedValue();
            CFDataGetBytePtr(TypedValue);
            CFDataGetLength(TypedValue);
            if (!SRP_verify())
            {
              inited = KUY675K4ryxHGzD5GVD(a1, 1, v104, 0);
              v101 = inited;
              if (inited)
              {
                goto LABEL_340;
              }

              CC_SHA512_Init(&c);
              CC_SHA512_Update(&c, "Pair-Setup-AES-Key", 0x12u);
              CC_SHA512_Update(&c, **(a1 + 368), *(*(a1 + 368) + 8));
              CC_SHA512_Final(md, &c);
              CC_SHA512_Init(&c);
              CC_SHA512_Update(&c, "Pair-Setup-AES-IV", 0x11u);
              CC_SHA512_Update(&c, **(a1 + 368), *(*(a1 + 368) + 8));
              CC_SHA512_Final(v102, &c);
              if (*(a1 + 424))
              {
                AES_GCM_Final();
                *(a1 + 424) = 0;
              }

              if (*(a1 + 425))
              {
                AES_GCM_Final();
                *(a1 + 425) = 0;
              }

              inited = AES_GCM_InitEx();
              v101 = inited;
              if (inited || (inited = AES_GCM_InitEx(), (v101 = inited) != 0))
              {
                v63 = 0;
              }

              else
              {
                *(a1 + 427) = *v102;
                v63 = 1;
              }

                ;
              }

                ;
              }

              if ((v63 & 1) == 0)
              {
                goto LABEL_340;
              }

              v66 = 0;
              *(a1 + 424) = 257;
              v67 = a1 + 442;
              do
              {
                if (v66 == -16)
                {
                  break;
                }

                v68 = (*(v67 + v66--))++ + 1;
              }

              while ((v68 & 0x100) != 0);
              inited = AES_GCM_InitMessage();
              v101 = inited;
              if (inited)
              {
                goto LABEL_340;
              }

              inited = AES_GCM_Encrypt();
              v101 = inited;
              if (inited)
              {
                goto LABEL_340;
              }

              inited = AES_GCM_FinalizeMessage();
              v101 = inited;
              if (inited)
              {
                goto LABEL_340;
              }

              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (Mutable)
              {
                v20 = Mutable;
                CFDictionarySetData();
                CFDictionarySetData();
                Bytes = CFPropertyListCreateBytes();
                v101 = Bytes;
                if (Bytes)
                {
                  goto LABEL_356;
                }

                *(a1 + 340) = 106;
                v70 = gLogCategory_AirPlayPairing;
                if (gLogCategory_AirPlayPairing <= 30)
                {
                  if (gLogCategory_AirPlayPairing != -1)
                  {
LABEL_214:
                    if (v70 > 20)
                    {
                      v71 = 0;
                    }

                    else
                    {
                      v71 = v70 != -1 || _LogCategory_Initialize() != 0;
                    }

                    LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554462, "Pair-setup PIN client M5 -- exchange request %?@\n", v71, v20);
                    goto LABEL_285;
                  }

                  if (_LogCategory_Initialize())
                  {
                    v70 = gLogCategory_AirPlayPairing;
                    goto LABEL_214;
                  }
                }

LABEL_244:
                v83 = 0;
LABEL_286:
                *a6 = v83;
                v101 = 0;
LABEL_287:
                CFRelease(v20);
                goto LABEL_288;
              }

              goto LABEL_343;
            }

            v95 = -6754;
LABEL_344:
            v101 = v95;
            goto LABEL_288;
          }

          v15 = gLogCategory_AirPlayPairing;
        }

        if (v15 > 20)
        {
          v16 = 0;
        }

        else
        {
          v16 = v15 != -1 || _LogCategory_Initialize() != 0;
        }

        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554462, "Pair-setup PIN client M4 -- verify response %?@\n", v16, v14, c.count[0], c.count[1], c.hash[0], c.hash[1], c.hash[2], c.hash[3], c.hash[4], c.hash[5], c.hash[6], c.hash[7], c.wbuf[0], c.wbuf[1], c.wbuf[2], c.wbuf[3], c.wbuf[4], c.wbuf[5], c.wbuf[6], c.wbuf[7], c.wbuf[8], c.wbuf[9], c.wbuf[10], c.wbuf[11], c.wbuf[12], c.wbuf[13], c.wbuf[14], c.wbuf[15], v99);
        goto LABEL_190;
      }

      if (!a3 || !*(a1 + 344) || !*(a1 + 352))
      {
        goto LABEL_314;
      }

      CFDictionaryGetTypeID();
      v14 = CFCreateWithPlistBytes();
      v28 = gLogCategory_AirPlayPairing;
      if (gLogCategory_AirPlayPairing <= 30)
      {
        if (gLogCategory_AirPlayPairing != -1)
        {
LABEL_67:
          if (v28 > 20)
          {
            v29 = 0;
          }

          else
          {
            v29 = v28 != -1 || _LogCategory_Initialize() != 0;
          }

          LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554462, "Pair-setup PIN client M2 -- start response %?@\n", v29, v14, c.count[0], c.count[1], c.hash[0], c.hash[1], c.hash[2], c.hash[3], c.hash[4], c.hash[5], c.hash[6], c.hash[7], c.wbuf[0], c.wbuf[1], c.wbuf[2], c.wbuf[3], c.wbuf[4], c.wbuf[5], c.wbuf[6], c.wbuf[7], c.wbuf[8], c.wbuf[9], c.wbuf[10], c.wbuf[11], c.wbuf[12], c.wbuf[13], c.wbuf[14], c.wbuf[15], v99);
          goto LABEL_223;
        }

        if (_LogCategory_Initialize())
        {
          v28 = gLogCategory_AirPlayPairing;
          goto LABEL_67;
        }
      }

LABEL_223:
      if (*(a1 + 360))
      {
        SRP_free();
        *(a1 + 360) = 0;
      }

      SRP6a_client_method();
      v72 = SRP_new();
      *(a1 + 360) = v72;
      if (!v72)
      {
        goto LABEL_343;
      }

      v73 = CFCopyCString();
      inited = v101;
      if (v101)
      {
LABEL_340:
        APSLogErrorAt(inited);
        goto LABEL_288;
      }

      v101 = SRP_set_username();
      free(v73);
      v74 = v101;
      if (v101)
      {
        goto LABEL_339;
      }

      CFDataGetTypeID();
      v75 = CFDictionaryGetTypedValue();
      Length = CFDataGetLength(v75);
      if (Length <= 0xF)
      {
        APSLogErrorAt(0);
        v95 = -6743;
        goto LABEL_344;
      }

      CFDataGetBytePtr(v75);
      v74 = SRP_set_params();
      v101 = v74;
      if (v74)
      {
LABEL_339:
        APSLogErrorAt(v74);
        v95 = -6705;
        goto LABEL_344;
      }

      v76 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v76)
      {
LABEL_343:
        APSLogErrorAt(0);
        v95 = -6728;
        goto LABEL_344;
      }

      v20 = v76;
      v99 = 0;
      v77 = SRP_gen_pub();
      v101 = v77;
      if (v77)
      {
        goto LABEL_354;
      }

      CFDictionarySetData();
      cstr_free();
      v78 = CFCopyCString();
      v101 = SRP_set_auth_password();
      free(v78);
      if (v101)
      {
        APSLogErrorAt(v101);
        v96 = -6705;
      }

      else
      {
        CFDataGetTypeID();
        v79 = CFDictionaryGetTypedValue();
        if (*(a1 + 368))
        {
          cstr_free();
          *(a1 + 368) = 0;
        }

        CFDataGetBytePtr(v79);
        CFDataGetLength(v79);
        v80 = SRP_compute_key();
        v101 = v80;
        if (!v80)
        {
          v99 = 0;
          v77 = SRP_respond();
          v101 = v77;
          if (!v77)
          {
            CFDictionarySetData();
            cstr_free();
            Bytes = CFPropertyListCreateBytes();
            v101 = Bytes;
            if (Bytes)
            {
              goto LABEL_356;
            }

            *(a1 + 340) = 104;
            v81 = gLogCategory_AirPlayPairing;
            if (gLogCategory_AirPlayPairing > 30)
            {
              goto LABEL_244;
            }

            if (gLogCategory_AirPlayPairing == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_244;
              }

              v81 = gLogCategory_AirPlayPairing;
            }

            if (v81 > 20)
            {
              v82 = 0;
            }

            else
            {
              v82 = v81 != -1 || _LogCategory_Initialize() != 0;
            }

            LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554462, "Pair-setup PIN client M3 -- verify request %?@\n", v82, v20);
            goto LABEL_285;
          }

LABEL_354:
          APSLogErrorAt(v77);
          v96 = -6700;
          goto LABEL_355;
        }

        APSLogErrorAt(v80);
        v96 = -6737;
      }

LABEL_355:
      v101 = v96;
      goto LABEL_287;
    }

    if (a3 || !*(a1 + 352))
    {
      goto LABEL_314;
    }

    v19 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v19)
    {
      APSLogErrorAt(0);
      v38 = -6728;
      goto LABEL_87;
    }

    v20 = v19;
    CFDictionarySetValue(v19, @"method", @"pin");
    CFDictionarySetValue(v20, @"user", *(a1 + 352));
    v21 = CFPropertyListCreateBytes();
    v101 = v21;
    if (v21)
    {
      APSLogErrorAt(v21);
      v14 = 0;
      goto LABEL_287;
    }

    *(a1 + 340) = 102;
    v22 = gLogCategory_AirPlayPairing;
    if (gLogCategory_AirPlayPairing <= 30)
    {
      if (gLogCategory_AirPlayPairing != -1)
      {
LABEL_42:
        if (v22 > 20)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22 != -1 || _LogCategory_Initialize() != 0;
        }

        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554462, "Pair-setup PIN client M1 -- start request %?@\n", v23, v20, c.count[0], c.count[1], c.hash[0], c.hash[1], c.hash[2], c.hash[3], c.hash[4], c.hash[5], c.hash[6], c.hash[7], c.wbuf[0], c.wbuf[1], c.wbuf[2], c.wbuf[3], c.wbuf[4], c.wbuf[5], c.wbuf[6], c.wbuf[7], c.wbuf[8], c.wbuf[9], c.wbuf[10], c.wbuf[11], c.wbuf[12], c.wbuf[13], c.wbuf[14], c.wbuf[15], v99);
        goto LABEL_187;
      }

      if (_LogCategory_Initialize())
      {
        v22 = gLogCategory_AirPlayPairing;
        goto LABEL_42;
      }
    }

LABEL_187:
    v14 = 0;
    goto LABEL_285;
  }

  if (v10 > 112)
  {
    if (v10 != 113)
    {
      if (v10 != 115)
      {
        goto LABEL_45;
      }

      if (!a3 || !*(a1 + 368))
      {
        goto LABEL_314;
      }

      CFDictionaryGetTypeID();
      v14 = CFCreateWithPlistBytes();
      v17 = gLogCategory_AirPlayPairing;
      if (gLogCategory_AirPlayPairing <= 30)
      {
        if (gLogCategory_AirPlayPairing == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_144;
          }

          v17 = gLogCategory_AirPlayPairing;
        }

        if (v17 > 20)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17 != -1 || _LogCategory_Initialize() != 0;
        }

        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554462, "Pair-setup PIN server M5 -- exchange request %?@\n", v18, v14, c.count[0], c.count[1], c.hash[0], c.hash[1], c.hash[2], c.hash[3], c.hash[4], c.hash[5], c.hash[6], c.hash[7], c.wbuf[0], c.wbuf[1], c.wbuf[2], c.wbuf[3], c.wbuf[4], c.wbuf[5], c.wbuf[6], c.wbuf[7], c.wbuf[8], c.wbuf[9], c.wbuf[10], c.wbuf[11], c.wbuf[12], c.wbuf[13], c.wbuf[14], c.wbuf[15], v99);
      }

LABEL_144:
      CC_SHA512_Init(&c);
      CC_SHA512_Update(&c, "Pair-Setup-AES-Key", 0x12u);
      CC_SHA512_Update(&c, **(a1 + 368), *(*(a1 + 368) + 8));
      CC_SHA512_Final(md, &c);
      CC_SHA512_Init(&c);
      CC_SHA512_Update(&c, "Pair-Setup-AES-IV", 0x11u);
      CC_SHA512_Update(&c, **(a1 + 368), *(*(a1 + 368) + 8));
      CC_SHA512_Final(v102, &c);
      if (*(a1 + 424))
      {
        AES_GCM_Final();
        *(a1 + 424) = 0;
      }

      if (*(a1 + 425))
      {
        AES_GCM_Final();
        *(a1 + 425) = 0;
      }

      inited = AES_GCM_InitEx();
      v101 = inited;
      if (inited || (inited = AES_GCM_InitEx(), (v101 = inited) != 0))
      {
        v51 = 0;
      }

      else
      {
        *(a1 + 427) = *v102;
        v51 = 1;
      }

      for (k = 0; k != 64; ++k)
      {
        md[k] = 0;
      }

      for (m = 0; m != 64; ++m)
      {
        v102[m] = 0;
      }

      if ((v51 & 1) == 0)
      {
        goto LABEL_340;
      }

      *(a1 + 424) = 257;
      v54 = 442;
      do
      {
        if (v54 == 426)
        {
          break;
        }

        v55 = (*(a1 + v54--))++ + 1;
      }

      while ((v55 & 0x100) != 0);
      inited = AES_GCM_InitMessage();
      v101 = inited;
      if (inited)
      {
        goto LABEL_340;
      }

      CFDictionaryGetData();
      inited = v101;
      if (v101)
      {
        goto LABEL_340;
      }

      inited = AES_GCM_Decrypt();
      v101 = inited;
      if (inited)
      {
        goto LABEL_340;
      }

      CFDictionaryGetData();
      inited = v101;
      if (v101)
      {
        goto LABEL_340;
      }

      if (Length != 16)
      {
LABEL_334:
        APSLogErrorAt(0);
        v94 = -6743;
        goto LABEL_359;
      }

      v101 = AES_GCM_VerifyMessage();
      if (v101)
      {
        goto LABEL_288;
      }

      if (!*(a1 + 426))
      {
        inited = i9kF3TCOFmU(a1, v104, 0);
        v101 = inited;
        if (inited)
        {
          goto LABEL_340;
        }
      }

      inited = KUY675K4ryxHGzD5GVD(a1, 1, v104, 0);
      v101 = inited;
      if (inited)
      {
        goto LABEL_340;
      }

      v56 = 0;
      v57 = a1 + 442;
      do
      {
        if (v56 == -16)
        {
          break;
        }

        v58 = (*(v57 + v56--))++ + 1;
      }

      while ((v58 & 0x100) != 0);
      inited = AES_GCM_InitMessage();
      v101 = inited;
      if (inited)
      {
        goto LABEL_340;
      }

      inited = AES_GCM_Encrypt();
      v101 = inited;
      if (inited)
      {
        goto LABEL_340;
      }

      inited = AES_GCM_FinalizeMessage();
      v101 = inited;
      if (inited)
      {
        goto LABEL_340;
      }

      v59 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v59)
      {
LABEL_358:
        APSLogErrorAt(0);
        v94 = -6728;
        goto LABEL_359;
      }

      v20 = v59;
      CFDictionarySetData();
      CFDictionarySetData();
      Bytes = CFPropertyListCreateBytes();
      v101 = Bytes;
      if (Bytes)
      {
        goto LABEL_356;
      }

      *(a1 + 340) = 117;
      pthread_mutex_lock(&keNhHD7HkAhiLlu6y);
      R7q7ABg4QtpjFZAFcR = 0;
      RAQKrwbyvjlDG1nD = 0;
      h2UmgtdqR3Ht = 0;
      pthread_mutex_unlock(&keNhHD7HkAhiLlu6y);
      v60 = gLogCategory_AirPlayPairing;
      if (gLogCategory_AirPlayPairing > 30)
      {
        goto LABEL_256;
      }

      if (gLogCategory_AirPlayPairing == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_252;
        }

        v60 = gLogCategory_AirPlayPairing;
      }

      if (v60 > 20)
      {
        v61 = 0;
      }

      else
      {
        v61 = v60 != -1 || _LogCategory_Initialize() != 0;
      }

      LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554462, "Pair-setup PIN server M6 -- exchange response %?@\n", v61, v20);
LABEL_252:
      if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554462, "Pair-setup PIN server done -- client authenticated\n");
      }

LABEL_256:
      v83 = 1;
      goto LABEL_286;
    }

    if (!a3 || !*(a1 + 360))
    {
      goto LABEL_314;
    }

    CFDictionaryGetTypeID();
    v14 = CFCreateWithPlistBytes();
    v26 = gLogCategory_AirPlayPairing;
    if (gLogCategory_AirPlayPairing <= 30)
    {
      if (gLogCategory_AirPlayPairing == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_127;
        }

        v26 = gLogCategory_AirPlayPairing;
      }

      if (v26 > 20)
      {
        v27 = 0;
      }

      else
      {
        v27 = v26 != -1 || _LogCategory_Initialize() != 0;
      }

      LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554462, "Pair-setup PIN server M3 -- verify request %?@\n", v27, v14, c.count[0], c.count[1], c.hash[0], c.hash[1], c.hash[2], c.hash[3], c.hash[4], c.hash[5], c.hash[6], c.hash[7], c.wbuf[0], c.wbuf[1], c.wbuf[2], c.wbuf[3], c.wbuf[4], c.wbuf[5], c.wbuf[6], c.wbuf[7], c.wbuf[8], c.wbuf[9], c.wbuf[10], c.wbuf[11], c.wbuf[12], c.wbuf[13], c.wbuf[14], c.wbuf[15], v99);
    }

LABEL_127:
    CFDataGetTypeID();
    v43 = CFDictionaryGetTypedValue();
    if (*(a1 + 368))
    {
      cstr_free();
      *(a1 + 368) = 0;
    }

    CFDataGetBytePtr(v43);
    CFDataGetLength(v43);
    v44 = SRP_compute_key();
    v101 = v44;
    if (v44)
    {
      APSLogErrorAt(v44);
      v94 = -6737;
    }

    else
    {
      CFDataGetTypeID();
      v45 = CFDictionaryGetTypedValue();
      CFDataGetBytePtr(v45);
      CFDataGetLength(v45);
      v101 = SRP_verify();
      if (!v101)
      {
        v46 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v46)
        {
          v20 = v46;
          v99 = 0;
          v47 = SRP_respond();
          v101 = v47;
          if (!v47)
          {
            CFDictionarySetData();
            cstr_free();
            Bytes = CFPropertyListCreateBytes();
            v101 = Bytes;
            if (!Bytes)
            {
              *(a1 + 340) = 115;
              v49 = gLogCategory_AirPlayPairing;
              if (gLogCategory_AirPlayPairing <= 30)
              {
                if (gLogCategory_AirPlayPairing == -1)
                {
                  if (!_LogCategory_Initialize())
                  {
                    goto LABEL_285;
                  }

                  v49 = gLogCategory_AirPlayPairing;
                }

                if (v49 > 20)
                {
                  v50 = 0;
                }

                else
                {
                  v50 = v49 != -1 || _LogCategory_Initialize() != 0;
                }

                LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554462, "Pair-setup PIN server M4 -- verify response %?@\n", v50, v20);
              }

LABEL_285:
              v83 = 0;
              goto LABEL_286;
            }

LABEL_356:
            APSLogErrorAt(Bytes);
            goto LABEL_287;
          }

          goto LABEL_365;
        }

        goto LABEL_358;
      }

      v94 = -6754;
    }

    goto LABEL_359;
  }

  if (v10 != 106)
  {
    if (v10 == 111)
    {
      if (a3 && *(a1 + 344))
      {
        pthread_mutex_lock(&keNhHD7HkAhiLlu6y);
        v11 = mach_absolute_time();
        v12 = v11;
        v13 = h2UmgtdqR3Ht;
        if (!h2UmgtdqR3Ht)
        {
          h2UmgtdqR3Ht = v11;
          v13 = v11;
        }

        if (R7q7ABg4QtpjFZAFcR <= 9)
        {
          ++R7q7ABg4QtpjFZAFcR;
          goto LABEL_80;
        }

        v30 = 2 * RAQKrwbyvjlDG1nD;
        if ((2 * RAQKrwbyvjlDG1nD) >= 0x2A30)
        {
          v30 = 10800;
        }

        if (RAQKrwbyvjlDG1nD)
        {
          v31 = v30;
        }

        else
        {
          v31 = 1;
        }

        RAQKrwbyvjlDG1nD = v31;
        v32 = v13 + UpTicksPerSecond() * v31;
        v33 = v32 >= v12;
        v34 = v32 - v12;
        if (v34 == 0 || !v33)
        {
LABEL_80:
          pthread_mutex_unlock(&keNhHD7HkAhiLlu6y);
          CFDictionaryGetTypeID();
          v14 = CFCreateWithPlistBytes();
          v36 = gLogCategory_AirPlayPairing;
          if (gLogCategory_AirPlayPairing <= 30)
          {
            if (gLogCategory_AirPlayPairing != -1)
            {
LABEL_82:
              if (v36 > 20)
              {
                v37 = 0;
              }

              else
              {
                v37 = v36 != -1 || _LogCategory_Initialize() != 0;
              }

              LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554462, "Pair-setup PIN server M1 -- start request %?@\n", v37, v14, c.count[0], c.count[1], c.hash[0], c.hash[1], c.hash[2], c.hash[3], c.hash[4], c.hash[5], c.hash[6], c.hash[7], c.wbuf[0], c.wbuf[1], c.wbuf[2], c.wbuf[3], c.wbuf[4], c.wbuf[5], c.wbuf[6], c.wbuf[7], c.wbuf[8], c.wbuf[9], c.wbuf[10], c.wbuf[11], c.wbuf[12], c.wbuf[13], c.wbuf[14], c.wbuf[15], v99);
              goto LABEL_263;
            }

            if (_LogCategory_Initialize())
            {
              v36 = gLogCategory_AirPlayPairing;
              goto LABEL_82;
            }
          }

LABEL_263:
          CFStringGetTypeID();
          v84 = CFDictionaryGetTypedValue();
          v85 = CFEqual(v84, @"pin");
          if (v85)
          {
            v86 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v86)
            {
              v20 = v86;
              if (*(a1 + 360))
              {
                SRP_free();
                *(a1 + 360) = 0;
              }

              SRP6a_server_method();
              v87 = SRP_new();
              *(a1 + 360) = v87;
              if (v87)
              {
                v88 = CFDictionaryCopyCString();
                Bytes = v101;
                if (v101)
                {
                  goto LABEL_356;
                }

                v101 = SRP_set_username();
                free(v88);
                v89 = v101;
                if (!v101)
                {
                  Bytes = RandomBytes();
                  v101 = Bytes;
                  if (Bytes)
                  {
                    goto LABEL_356;
                  }

                  CFDictionarySetData();
                  v89 = SRP_set_params();
                  v101 = v89;
                  if (!v89)
                  {
                    v90 = CFCopyCString();
                    v101 = SRP_set_auth_password();
                    free(v90);
                    v89 = v101;
                    if (!v101)
                    {
                      v99 = 0;
                      v47 = SRP_gen_pub();
                      v101 = v47;
                      if (!v47)
                      {
                        CFDictionarySetData();
                        cstr_free();
                        Bytes = CFPropertyListCreateBytes();
                        v101 = Bytes;
                        if (!Bytes)
                        {
                          *(a1 + 340) = 113;
                          v91 = gLogCategory_AirPlayPairing;
                          if (gLogCategory_AirPlayPairing <= 30)
                          {
                            if (gLogCategory_AirPlayPairing != -1)
                            {
LABEL_277:
                              if (v91 > 20)
                              {
                                v92 = 0;
                              }

                              else
                              {
                                v92 = v91 != -1 || _LogCategory_Initialize() != 0;
                              }

                              LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554462, "Pair-setup PIN server M2 -- start response %?@\n", v92, v20);
                              goto LABEL_285;
                            }

                            if (_LogCategory_Initialize())
                            {
                              v91 = gLogCategory_AirPlayPairing;
                              goto LABEL_277;
                            }
                          }

                          goto LABEL_285;
                        }

                        goto LABEL_356;
                      }

LABEL_365:
                      APSLogErrorAt(v47);
                      v97 = -6700;
                      goto LABEL_366;
                    }
                  }
                }

                APSLogErrorAt(v89);
                v97 = -6705;
              }

              else
              {
                APSLogErrorAt(0);
                v97 = -6728;
              }

LABEL_366:
              v101 = v97;
              goto LABEL_287;
            }

            goto LABEL_358;
          }

          APSLogErrorAt(v85);
          v94 = -6735;
LABEL_359:
          v101 = v94;
          goto LABEL_288;
        }

        pthread_mutex_unlock(&keNhHD7HkAhiLlu6y);
        if (gLogCategory_AirPlayPairing <= 50 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
        {
          v35 = UpTicksPerSecond();
          LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554482, "PIN throttle %llu seconds\n", v34 / v35);
        }

        v38 = -6760;
LABEL_87:
        v101 = v38;
        goto LABEL_291;
      }

LABEL_314:
      APSLogErrorAt(0);
      v38 = -6705;
      goto LABEL_87;
    }

LABEL_45:
    if (gLogCategory_AirPlayPairing <= 60)
    {
      if (gLogCategory_AirPlayPairing == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_86;
        }

        v10 = *(a1 + 340);
      }

      LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554492, "### Bad pair-setup state: %d\n", v10);
    }

LABEL_86:
    v38 = -6709;
    goto LABEL_87;
  }

  if (!a3)
  {
    goto LABEL_314;
  }

  if (!*(a1 + 425))
  {
LABEL_313:
    APSLogErrorAt(0);
    v38 = -6745;
    goto LABEL_87;
  }

  CFDictionaryGetTypeID();
  v14 = CFCreateWithPlistBytes();
  v24 = gLogCategory_AirPlayPairing;
  if (gLogCategory_AirPlayPairing <= 30)
  {
    if (gLogCategory_AirPlayPairing == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_111;
      }

      v24 = gLogCategory_AirPlayPairing;
    }

    if (v24 > 20)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24 != -1 || _LogCategory_Initialize() != 0;
    }

    LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554462, "Pair-setup PIN client M6 -- exchange response %?@\n", v25, v14, c.count[0], c.count[1], c.hash[0], c.hash[1], c.hash[2], c.hash[3], c.hash[4], c.hash[5], c.hash[6], c.hash[7], c.wbuf[0], c.wbuf[1], c.wbuf[2], c.wbuf[3], c.wbuf[4], c.wbuf[5], c.wbuf[6], c.wbuf[7], c.wbuf[8], c.wbuf[9], c.wbuf[10], c.wbuf[11], c.wbuf[12], c.wbuf[13], c.wbuf[14], c.wbuf[15], v99);
  }

LABEL_111:
  v39 = 442;
  do
  {
    if (v39 == 426)
    {
      break;
    }

    v40 = (*(a1 + v39--))++ + 1;
  }

  while ((v40 & 0x100) != 0);
  inited = AES_GCM_InitMessage();
  v101 = inited;
  if (inited)
  {
    goto LABEL_340;
  }

  CFDictionaryGetData();
  inited = AES_GCM_Decrypt();
  v101 = inited;
  if (inited)
  {
    goto LABEL_340;
  }

  CFDictionaryGetData();
  if (Length != 16)
  {
    goto LABEL_334;
  }

  v101 = AES_GCM_VerifyMessage();
  if (v101)
  {
    goto LABEL_288;
  }

  if (!*(a1 + 426))
  {
    inited = i9kF3TCOFmU(a1, v104, 0);
    v101 = inited;
    if (inited)
    {
      goto LABEL_340;
    }
  }

  v42 = v104[1];
  *(a1 + 220) = v104[0];
  *(a1 + 236) = v42;
  *(a1 + 340) = 107;
  *a4 = 0;
  *a5 = 0;
  if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554462, "Pair-setup PIN client done -- server authenticated\n");
  }

  *a6 = 1;
  v101 = 0;
LABEL_288:
  if (v14)
  {
    CFRelease(v14);
  }

  if (!v101)
  {
    return 0;
  }

LABEL_291:
  if (gLogCategory_AirPlayPairing <= 60 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayPairing, "OSStatus SrtySZG0(AirPlayPairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 33554492, "### Pair-setup PIN state %d failed: %#m\n", *(a1 + 340));
  }

  NhB9kxUGdXXE(a1);
  return v101;
}

CFMutableArrayRef Fqbh1vZGfV6J(uint64_t a1, int *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = 0;
  dispatch_semaphore_wait(tHHVsHfAtS9mW, 0xFFFFFFFFFFFFFFFFLL);
  v4 = KeychainCopyMatchingFormatted(&v14, "{%kO=%O%kO=%O%kO=%i%kO=%O%kO=%O}", *MEMORY[0x277CDC228], *MEMORY[0x277CDC238], *MEMORY[0x277CDBEC8], @"com.apple.airplay", *MEMORY[0x277CDC188], *(a1 + 48), *MEMORY[0x277CDC550], *MEMORY[0x277CBED28], *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
  dispatch_semaphore_signal(tHHVsHfAtS9mW);
  if (v14 == -25300)
  {
    v14 = 0;
  }

  else if (v14)
  {
    Mutable = 0;
    goto LABEL_11;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    if (v4 && (Count = CFArrayGetCount(v4), Count >= 1))
    {
      v7 = Count;
      v8 = 0;
      v9 = MEMORY[0x277CBF138];
      v10 = MEMORY[0x277CBF150];
      while (1)
      {
        CFArrayGetValueAtIndex(v4, v8);
        v11 = CFDictionaryCreateMutable(0, 0, v9, v10);
        if (!v11)
        {
          break;
        }

        v12 = v11;
        CFDictionaryGetData();
        CFRelease(v12);
        if (v7 == ++v8)
        {
          goto LABEL_10;
        }
      }

      APSLogErrorAt(0);
      v14 = -6728;
      CFRelease(Mutable);
      Mutable = 0;
    }

    else
    {
LABEL_10:
      v14 = 0;
    }
  }

  else
  {
    APSLogErrorAt(0);
    v14 = -6728;
  }

LABEL_11:
  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    *a2 = v14;
  }

  return Mutable;
}

uint64_t PHDcW8(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v15[0] = 0;
  if (a2)
  {
    DataToHexCStringEx();
  }

  v3 = KeychainCopyMatchingFormatted(0, "{%kO=%O%kO=%O%kO=%i%kO=%O%kO=%O%kO=%O}", *MEMORY[0x277CDC228], *MEMORY[0x277CDC238], *MEMORY[0x277CDBEC8], @"com.apple.airplay", *MEMORY[0x277CDC188], *(a1 + 48), *MEMORY[0x277CDC550], *MEMORY[0x277CBED28], *MEMORY[0x277CDC560], *MEMORY[0x277CBED28], *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
  if (v3)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      v8 = *MEMORY[0x277CDC5F0];
      do
      {
        CFDictionaryGetTypeID();
        TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
        if (TypedValueAtIndex)
        {
          v10 = TypedValueAtIndex;
          if (*(a1 + 48) == CFDictionaryGetInt64())
          {
            if (!v15[0] || (CFDictionaryGetCString(), !v13) && !strcasecmp(v14, v15))
            {
              Value = CFDictionaryGetValue(v10, v8);
              if (Value)
              {
                v13 = KeychainDeleteFormatted("{%kO=%O}", v8, Value);
              }
            }
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }

    CFRelease(v4);
  }

  return 0;
}

uint64_t APAudioFormatIndexToASBD(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    switch(a1)
    {
      case 2:
        result = 0;
        v24 = 0x40BF400000000000;
        goto LABEL_61;
      case 3:
        result = 0;
        v17 = 0x40BF400000000000;
        goto LABEL_59;
      case 4:
        result = 0;
        v24 = 0x40CF400000000000;
        goto LABEL_61;
      case 5:
        result = 0;
        v17 = 0x40CF400000000000;
        goto LABEL_59;
      case 6:
        result = 0;
        v24 = 0x40D7700000000000;
        goto LABEL_61;
      case 7:
        result = 0;
        v17 = 0x40D7700000000000;
        goto LABEL_59;
      case 8:
        result = 0;
        v24 = 0x40DF400000000000;
        goto LABEL_61;
      case 9:
        result = 0;
        v17 = 0x40DF400000000000;
        goto LABEL_59;
      case 10:
        result = 0;
        v24 = 0x40E5888000000000;
        goto LABEL_61;
      case 11:
        result = 0;
        v17 = 0x40E5888000000000;
        goto LABEL_59;
      case 12:
        result = 0;
        v23 = 0x40E5888000000000;
        goto LABEL_73;
      case 13:
        result = 0;
        v26 = 0x40E5888000000000;
        goto LABEL_75;
      case 14:
        result = 0;
        v24 = 0x40E7700000000000;
LABEL_61:
        *a2 = v24;
        *(a2 + 8) = xmmword_22234D3F0;
        v5 = xmmword_22234D400;
        goto LABEL_110;
      case 15:
        result = 0;
        v17 = 0x40E7700000000000;
LABEL_59:
        *a2 = v17;
        *(a2 + 8) = xmmword_22234D3D0;
        v5 = xmmword_22234D3E0;
        goto LABEL_110;
      case 16:
        result = 0;
        v23 = 0x40E7700000000000;
LABEL_73:
        *a2 = v23;
        *(a2 + 8) = xmmword_22234D3B0;
        v5 = xmmword_22234D3C0;
        goto LABEL_110;
      case 17:
        result = 0;
        v26 = 0x40E7700000000000;
LABEL_75:
        *a2 = v26;
        *(a2 + 8) = xmmword_22234D390;
        v5 = xmmword_22234D3A0;
        goto LABEL_110;
      case 18:
        result = 0;
        v16 = 0x40E5888000000000;
        goto LABEL_83;
      case 19:
        result = 0;
        v25 = 0x40E5888000000000;
        goto LABEL_78;
      case 20:
        result = 0;
        v16 = 0x40E7700000000000;
LABEL_83:
        *a2 = v16;
        v8 = xmmword_22234D220;
        goto LABEL_104;
      case 21:
        result = 0;
        v25 = 0x40E7700000000000;
LABEL_78:
        *a2 = v25;
        v8 = xmmword_22234D200;
        goto LABEL_104;
      case 22:
        result = 0;
        v19 = 0x40E5888000000000;
        goto LABEL_89;
      case 23:
        result = 0;
        v19 = 0x40E7700000000000;
LABEL_89:
        *a2 = v19;
        v8 = xmmword_22234D1F0;
        goto LABEL_104;
      case 24:
        result = 0;
        v22 = 0x40E5888000000000;
        goto LABEL_50;
      case 25:
        result = 0;
        v22 = 0x40E7700000000000;
LABEL_50:
        *a2 = v22;
        v8 = xmmword_22234D1E0;
        goto LABEL_104;
      case 26:
        result = 0;
        v21 = 0x40CF400000000000;
        goto LABEL_69;
      case 27:
        result = 0;
        v21 = 0x40D7700000000000;
        goto LABEL_69;
      case 28:
        result = 0;
        *a2 = 0x40CF400000000000;
        v15 = xmmword_22234D1D0;
        goto LABEL_70;
      case 29:
        result = 0;
        *a2 = 0x40D7700000000000;
        v15 = xmmword_22234D1C0;
        goto LABEL_70;
      case 30:
        result = 0;
        *a2 = 0x40E7700000000000;
        v15 = xmmword_22234D1A0;
        goto LABEL_70;
      case 31:
        result = 0;
        v21 = 0x40E5888000000000;
        goto LABEL_69;
      case 32:
        result = 0;
        v21 = 0x40E7700000000000;
        goto LABEL_69;
      case 33:
        result = 0;
        *a2 = 0x40E7700000000000;
        v4 = xmmword_22234D140;
        goto LABEL_95;
      case 34:
        result = 0;
        *a2 = 0x40E7700000000000;
        v14 = xmmword_22234D140;
        goto LABEL_106;
      case 35:
        result = 0;
        *a2 = 0x40E7700000000000;
        v18 = xmmword_22234D140;
        goto LABEL_65;
      case 38:
      case 78:
        result = 0;
        *a2 = 0x40E7700000000000;
        *(a2 + 8) = xmmword_22234D350;
        v5 = xmmword_22234D360;
        goto LABEL_110;
      case 39:
        result = 0;
        *a2 = 0x40E7700000000000;
        v11 = xmmword_22234D1F0;
        goto LABEL_109;
      case 40:
      case 90:
        result = 0;
        *a2 = 0x40E7700000000000;
        v4 = xmmword_22234D1F0;
        goto LABEL_95;
      case 41:
        result = 0;
        *a2 = 0x40E7700000000000;
        v11 = xmmword_22234D1E0;
        goto LABEL_109;
      case 42:
        result = 0;
        *a2 = 0x40E7700000000000;
        v4 = xmmword_22234D1E0;
        goto LABEL_95;
      case 43:
        result = 0;
        v21 = 0x40DF400000000000;
LABEL_69:
        *a2 = v21;
        v15 = xmmword_22234D1E0;
LABEL_70:
        *(a2 + 8) = v15;
        v5 = xmmword_22234D1B0;
        goto LABEL_110;
      case 44:
        result = 0;
        *a2 = 0x40E7700000000000;
        *(a2 + 8) = xmmword_22234D370;
        v5 = xmmword_22234D380;
        goto LABEL_110;
      case 45:
        result = 0;
        *a2 = 0x40E7700000000000;
        *(a2 + 8) = xmmword_22234D300;
        v5 = xmmword_22234D310;
        goto LABEL_110;
      case 46:
        result = 0;
        *a2 = 0x40E7700000000000;
        *(a2 + 8) = xmmword_22234D2E0;
        v5 = xmmword_22234D2F0;
        goto LABEL_110;
      case 47:
        result = 0;
        *a2 = 0x40E7700000000000;
        *(a2 + 8) = xmmword_22234D2C0;
        v5 = xmmword_22234D2D0;
        goto LABEL_110;
      case 48:
      case 79:
        result = 0;
        *a2 = 0x40E7700000000000;
        *(a2 + 8) = xmmword_22234D2A0;
        v5 = xmmword_22234D2B0;
        goto LABEL_110;
      case 49:
        result = 0;
        *a2 = 0x40E7700000000000;
        v8 = xmmword_22234D230;
        goto LABEL_104;
      case 50:
        result = 0;
        *a2 = 0x40E7700000000000;
        v11 = xmmword_22234D230;
        goto LABEL_109;
      case 51:
        result = 0;
        *a2 = 0x40E7700000000000;
        v4 = xmmword_22234D230;
        goto LABEL_95;
      case 52:
        result = 0;
        *a2 = 0x40E7700000000000;
        v14 = xmmword_22234D230;
        goto LABEL_106;
      case 53:
        result = 0;
        *a2 = 0x40E7700000000000;
        v18 = xmmword_22234D230;
        goto LABEL_65;
      case 54:
        result = 0;
        v27 = 0x40E7700000000000;
        goto LABEL_101;
      case 55:
        result = 0;
        *a2 = 0x40E7700000000000;
        v11 = xmmword_22234D160;
        goto LABEL_109;
      case 56:
        result = 0;
        *a2 = 0x40E7700000000000;
        v4 = xmmword_22234D160;
        goto LABEL_95;
      case 57:
        result = 0;
        v12 = 0x40E7700000000000;
        goto LABEL_87;
      case 58:
        result = 0;
        *a2 = 0x40E7700000000000;
        v11 = xmmword_22234D150;
        goto LABEL_109;
      case 60:
        result = 0;
        *a2 = 0x40E7700000000000;
        v4 = xmmword_22234D150;
        goto LABEL_95;
      case 61:
        result = 0;
        v13 = 0x40E7700000000000;
        goto LABEL_92;
      case 62:
        result = 0;
        *a2 = 0x40E7700000000000;
        v8 = xmmword_22234D140;
        goto LABEL_104;
      case 63:
        result = 0;
        *a2 = 0x40E7700000000000;
        v11 = xmmword_22234D140;
        goto LABEL_109;
      case 64:
        result = 0;
        *a2 = 0x40E7700000000000;
        v8 = xmmword_22234D0B0;
        goto LABEL_104;
      case 65:
        result = 0;
        *a2 = 0x40E7700000000000;
        v11 = xmmword_22234D0B0;
        goto LABEL_109;
      case 66:
      case 67:
        result = 0;
        *a2 = 0x40E7700000000000;
        v4 = xmmword_22234D0B0;
        goto LABEL_95;
      case 68:
        result = 0;
        *a2 = 0x40E7700000000000;
        v14 = xmmword_22234D0B0;
LABEL_106:
        *(a2 + 8) = v14;
        v5 = xmmword_22234D0D0;
        goto LABEL_110;
      case 69:
        result = 0;
        *a2 = 0x40E7700000000000;
        v20 = xmmword_22234D260;
        goto LABEL_112;
      case 70:
        result = 0;
        v27 = 0x40E5888000000000;
LABEL_101:
        *a2 = v27;
        v8 = xmmword_22234D160;
        goto LABEL_104;
      case 71:
        result = 0;
        v12 = 0x40E5888000000000;
LABEL_87:
        *a2 = v12;
        v8 = xmmword_22234D150;
        goto LABEL_104;
      case 72:
        result = 0;
        *a2 = 0x40E5888000000000;
        v8 = xmmword_22234D190;
        goto LABEL_104;
      case 73:
        result = 0;
        v13 = 0x40E5888000000000;
LABEL_92:
        *a2 = v13;
        v8 = xmmword_22234D170;
        goto LABEL_104;
      case 74:
        result = 0;
        v9 = 0x40E5888000000000;
        goto LABEL_103;
      case 75:
        result = 0;
        v9 = 0x40E7700000000000;
LABEL_103:
        *a2 = v9;
        v8 = xmmword_22234D090;
        goto LABEL_104;
      case 76:
      case 77:
        result = 0;
        *a2 = 0x40E7700000000000;
        *(a2 + 8) = xmmword_22234D0B0;
        v5 = xmmword_22234D0E0;
        goto LABEL_110;
      case 80:
      case 82:
        result = 0;
        *a2 = 0x40E7700000000000;
        v6 = xmmword_22234D340;
        goto LABEL_10;
      case 81:
      case 83:
        result = 0;
        *a2 = 0x40E7700000000000;
        v6 = xmmword_22234D280;
LABEL_10:
        *(a2 + 8) = v6;
        v5 = xmmword_22234D290;
        goto LABEL_110;
      case 84:
        result = 0;
        *a2 = 0x40E7700000000000;
        v20 = xmmword_22234D330;
LABEL_112:
        *(a2 + 8) = v20;
        v5 = xmmword_22234D270;
        goto LABEL_110;
      case 85:
        result = 0;
        v7 = 0x40E5888000000000;
        goto LABEL_13;
      case 86:
        result = 0;
        v7 = 0x40E7700000000000;
LABEL_13:
        *a2 = v7;
        v8 = xmmword_22234D210;
        goto LABEL_104;
      case 87:
        result = 0;
        *a2 = 0x40E7700000000000;
        v11 = xmmword_22234D130;
        goto LABEL_109;
      case 88:
        result = 0;
        *a2 = 0x40E7700000000000;
        v4 = xmmword_22234D120;
LABEL_95:
        *(a2 + 8) = v4;
        v5 = xmmword_22234D0F0;
        goto LABEL_110;
      case 89:
        result = 0;
        *a2 = 0x40E5888000000000;
        v8 = xmmword_22234D180;
LABEL_104:
        *(a2 + 8) = v8;
        v5 = xmmword_22234D0A0;
        goto LABEL_110;
      case 91:
        result = 0;
        *a2 = 0x40E7700000000000;
        v11 = xmmword_22234D110;
LABEL_109:
        *(a2 + 8) = v11;
        v5 = xmmword_22234D100;
        goto LABEL_110;
      case 92:
        result = 0;
        *a2 = 0x40E7700000000000;
        v18 = xmmword_22234D0B0;
LABEL_65:
        *(a2 + 8) = v18;
        v5 = xmmword_22234D0C0;
        goto LABEL_110;
      case 93:
        result = 0;
        *a2 = 0x40E7700000000000;
        v10 = xmmword_22234D320;
        goto LABEL_80;
      case 94:
        result = 0;
        *a2 = 0x40E7700000000000;
        v10 = xmmword_22234D240;
LABEL_80:
        *(a2 + 8) = v10;
        v5 = xmmword_22234D250;
LABEL_110:
        *(a2 + 24) = v5;
        break;
      default:
        if (gLogCategory_APAudioFormat <= 90 && (gLogCategory_APAudioFormat != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APAudioFormat, "OSStatus APAudioFormatIndexToASBD(APAudioFormatIndex, AudioStreamBasicDescription *)", 33554522, "Unsupported index %llu", a1);
        }

        result = 4294960561;
        break;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

uint64_t APAudioFormatIndexGetBitsPerChannel(uint64_t a1)
{
  result = 16;
  if ((a1 - 18) > 0x3B || ((1 << (a1 - 18)) & 0xF77F5FF83E3FFF5) == 0)
  {
    v3 = a1 - 87;
    v4 = a1 - 85;
    v5 = a1 - 19;
    if (((1 << v5) & 0x40040000000005) != 0)
    {
      v6 = 24;
    }

    else
    {
      v6 = 0;
    }

    if (v5 <= 0x36)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v4 < 2)
    {
      v7 = 20;
    }

    if (v3 >= 6)
    {
      return v7;
    }

    else
    {
      return 16;
    }
  }

  return result;
}

uint64_t APAudioFormatIndexToChannelLayoutTag(uint64_t a1, int *a2)
{
  if (a2)
  {
    v2 = a1 - 2;
    if ((a1 - 2) > 0x5C)
    {
      v4 = -65536;
      result = 4294960561;
    }

    else
    {
      result = dword_22234D7DC[v2];
      v4 = dword_22234D950[v2];
    }

    *a2 = v4;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

uint64_t ASBDToAPAudioFormatIndex(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a1 || !a3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v5 = *(a1 + 8);
  if (v5 > 1869641074)
  {
    if (v5 <= 1902207855)
    {
      if (v5 <= 1902207330)
      {
        if (v5 == 1869641075)
        {
          if (*(a1 + 28) == 1)
          {
            v24 = *a1;
            switch(v24)
            {
              case 16000:
                v6 = 28;
                goto LABEL_187;
              case 48000:
                v6 = 30;
                goto LABEL_187;
              case 24000:
                v6 = 29;
                goto LABEL_187;
            }
          }

          return 4294960561;
        }

        if (v5 == 1885430115)
        {
          if (*a1 == 44100.0 && *(a1 + 28) == 2)
          {
            v6 = 89;
            goto LABEL_187;
          }

          return 4294960561;
        }
      }

      else
      {
        switch(v5)
        {
          case 1902207331:
            if (*a1 == 44100.0 && *(a1 + 28) == 2)
            {
              v6 = 70;
              goto LABEL_187;
            }

            if (*a1 == 48000.0)
            {
              v25 = *(a1 + 28);
              switch(v25)
              {
                case 2:
                  v6 = 54;
                  goto LABEL_187;
                case 8:
                  v6 = 56;
                  goto LABEL_187;
                case 6:
                  v6 = 55;
                  goto LABEL_187;
              }
            }

            return 4294960561;
          case 1902207795:
            if (*a1 == 48000.0 && *(a1 + 28) == 6)
            {
              v6 = 87;
              goto LABEL_187;
            }

            return 4294960561;
          case 1902207848:
            if (*a1 == 44100.0 && *(a1 + 28) == 2)
            {
              v6 = 71;
LABEL_187:
              result = 0;
              *a3 = v6;
              return result;
            }

            if (*a1 == 48000.0)
            {
              v26 = *(a1 + 28);
              switch(v26)
              {
                case 2:
                  v6 = 57;
                  goto LABEL_187;
                case 8:
                  v6 = 60;
                  goto LABEL_187;
                case 6:
                  v6 = 58;
                  goto LABEL_187;
              }
            }

            return 4294960561;
        }
      }

      goto LABEL_101;
    }

    if (v5 > 1902324530)
    {
      if (v5 != 1902324531)
      {
        if (v5 == 1902469939)
        {
          if (*a1 == 48000.0 && *(a1 + 28) == 8)
          {
            v6 = 88;
            goto LABEL_187;
          }

          return 4294960561;
        }

        if (v5 == 1902928227)
        {
          if (*(a1 + 12) == 3 && *(a1 + 28) == 2)
          {
            if (*a1 == 44100.0)
            {
              v6 = 73;
              goto LABEL_187;
            }

            if (*a1 == 48000.0)
            {
              v6 = 61;
              goto LABEL_187;
            }
          }

          return 4294960561;
        }

        goto LABEL_101;
      }

      if (*a1 != 48000.0)
      {
        return 4294960561;
      }

      HIDWORD(v23) = *(a1 + 28) - 2;
      LODWORD(v23) = HIDWORD(v23);
      v20 = v23 >> 1;
      if (v20 >= 8 || ((0xADu >> v20) & 1) == 0)
      {
        return 4294960561;
      }

      v22 = &unk_22234DB38;
LABEL_92:
      v6 = v22[v20];
      goto LABEL_187;
    }

    if (v5 == 1902207856)
    {
      if (*a1 == 44100.0 && *(a1 + 28) == 2)
      {
        v6 = 72;
        goto LABEL_187;
      }

      return 4294960561;
    }

    v13 = 1902211171;
    goto LABEL_53;
  }

  if (v5 <= 1634754914)
  {
    if (v5 <= 1633772388)
    {
      if (v5 == 778924083)
      {
        if (*(a1 + 28) == 2)
        {
          v17 = *a1;
          if (v17 == 44100)
          {
            v6 = 74;
            goto LABEL_187;
          }

          if (v17 == 48000)
          {
            v6 = 75;
            goto LABEL_187;
          }
        }

        return 4294960561;
      }

      if (v5 == 1633772320)
      {
        v9 = *(a1 + 28);
        switch(v9)
        {
          case 8:
            if (*a1 == 48000.0)
            {
              IsAudioChannelLayoutTag7_1 = APAudioFormatIsAudioChannelLayoutTag7_1(a2);
              v6 = 90;
              if (!IsAudioChannelLayoutTag7_1)
              {
                v6 = 40;
              }

              goto LABEL_187;
            }

            break;
          case 6:
            if (*a1 == 48000.0)
            {
              v6 = 39;
              goto LABEL_187;
            }

            break;
          case 2:
            v10 = *a1;
            if (v10 == 44100)
            {
              v6 = 22;
              goto LABEL_187;
            }

            if (v10 == 48000)
            {
              v6 = 23;
              goto LABEL_187;
            }

            break;
        }

        return 4294960561;
      }

      goto LABEL_101;
    }

    if (v5 != 1633772389)
    {
      if (v5 == 1634492771)
      {
        if (*a1 == 44100.0 && *(a1 + 28) == 2)
        {
          v11 = *(a1 + 12) - 1;
          if (v11 >= 3)
          {
            return 4294960561;
          }

          v12 = &unk_22234DAC8;
        }

        else
        {
          if (*a1 != 48000.0)
          {
            return 4294960561;
          }

          if (*(a1 + 28) != 2)
          {
            return 4294960561;
          }

          v11 = *(a1 + 12) - 1;
          if (v11 >= 3)
          {
            return 4294960561;
          }

          v12 = &unk_22234DAE0;
        }

        v6 = v12[v11];
        goto LABEL_187;
      }

      goto LABEL_101;
    }

    v18 = *(a1 + 28);
    result = 4294960561;
    if (v18 <= 5)
    {
      if (v18 == 1)
      {
        v29 = *a1;
        if (v29 <= 31999)
        {
          if (v29 == 16000)
          {
            v6 = 26;
          }

          else
          {
            if (v29 != 24000)
            {
              return result;
            }

            v6 = 27;
          }
        }

        else
        {
          switch(v29)
          {
            case 32000:
              v6 = 43;
              break;
            case 44100:
              v6 = 31;
              break;
            case 48000:
              v6 = 32;
              break;
            default:
              return result;
          }
        }
      }

      else
      {
        if (v18 != 2)
        {
          return result;
        }

        v19 = *a1;
        if (v19 == 44100)
        {
          v6 = 24;
        }

        else
        {
          if (v19 != 48000)
          {
            return result;
          }

          v6 = 25;
        }
      }

      goto LABEL_187;
    }

    if (v18 == 6)
    {
      if (*a1 != 48000.0)
      {
        return result;
      }

      v6 = 41;
      goto LABEL_187;
    }

    if (v18 == 8 && *a1 == 48000.0)
    {
      v6 = 42;
      goto LABEL_187;
    }
  }

  else
  {
    if (v5 <= 1700997938)
    {
      if (v5 == 1634754915)
      {
        goto LABEL_54;
      }

      v13 = 1667330147;
LABEL_53:
      if (v5 == v13)
      {
LABEL_54:
        if (*a1 == 48000.0)
        {
          v14 = *(a1 + 28);
          result = 4294960561;
          if (v14 > 9)
          {
            switch(v14)
            {
              case 10:
                v6 = 76;
                if (a2 == 12845066)
                {
                  v6 = 77;
                }

                break;
              case 12:
                v6 = 68;
                break;
              case 16:
                v6 = 92;
                break;
              default:
                return result;
            }
          }

          else
          {
            switch(v14)
            {
              case 2:
                v6 = 64;
                break;
              case 6:
                v6 = 65;
                break;
              case 8:
                v16 = APAudioFormatIsAudioChannelLayoutTag7_1(a2);
                v6 = 66;
                if (v16)
                {
                  v6 = 67;
                }

                break;
              default:
                return result;
            }
          }

          goto LABEL_187;
        }

        return 4294960561;
      }

LABEL_101:
      if (gLogCategory_APAudioFormat <= 50)
      {
        if (gLogCategory_APAudioFormat == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return 4294960561;
          }

          v5 = *(a1 + 8);
        }

        LogPrintF(&gLogCategory_APAudioFormat, "OSStatus ASBDToAPAudioFormatIndex(const AudioStreamBasicDescription *, AudioChannelLayoutTag, APAudioFormatIndex *)", 33554482, "unsupported formatID: %c%c%c%c", HIBYTE(v5), BYTE2(v5), BYTE1(v5), v5);
      }

      return 4294960561;
    }

    if (v5 == 1700997939)
    {
      if (*a1 != 48000.0)
      {
        return 4294960561;
      }

      HIDWORD(v21) = *(a1 + 28) - 2;
      LODWORD(v21) = HIDWORD(v21);
      v20 = v21 >> 1;
      if (v20 >= 8 || ((0xADu >> v20) & 1) == 0)
      {
        return 4294960561;
      }

      v22 = &unk_22234DAF8;
      goto LABEL_92;
    }

    if (v5 == 1700998451)
    {
      if (*a1 == 48000.0 && *(a1 + 28) == 6)
      {
        v6 = 91;
        goto LABEL_187;
      }

      return 4294960561;
    }

    if (v5 != 1819304813)
    {
      goto LABEL_101;
    }

    v7 = *a1;
    if (*a1 == 8000.0)
    {
      v8 = *(a1 + 28);
      if (v8 == 1)
      {
        v6 = 2;
        goto LABEL_187;
      }

      if (v8 == 2)
      {
        v6 = 3;
        goto LABEL_187;
      }

      return 4294960561;
    }

    if (v7 == 16000.0)
    {
      v27 = *(a1 + 28);
      if (v27 == 1)
      {
        v6 = 4;
        goto LABEL_187;
      }

      if (v27 == 2)
      {
        v6 = 5;
        goto LABEL_187;
      }

      return 4294960561;
    }

    if (v7 == 24000.0)
    {
      v30 = *(a1 + 28);
      if (v30 == 1)
      {
        v6 = 6;
        goto LABEL_187;
      }

      if (v30 == 2)
      {
        v6 = 7;
        goto LABEL_187;
      }

      return 4294960561;
    }

    if (v7 == 32000.0)
    {
      v31 = *(a1 + 28);
      if (v31 == 1)
      {
        v6 = 8;
        goto LABEL_187;
      }

      if (v31 == 2)
      {
        v6 = 9;
        goto LABEL_187;
      }

      return 4294960561;
    }

    if (v7 == 44100.0)
    {
      v32 = *(a1 + 28);
      if (v32 == 2)
      {
        v36 = *(a1 + 32);
        if (v36 == 16)
        {
          v6 = 11;
          goto LABEL_187;
        }

        if (v36 == 24)
        {
          v6 = 13;
          goto LABEL_187;
        }
      }

      else if (v32 == 1)
      {
        v33 = *(a1 + 32);
        if (v33 == 16)
        {
          v6 = 10;
          goto LABEL_187;
        }

        if (v33 == 24)
        {
          v6 = 12;
          goto LABEL_187;
        }
      }

      return 4294960561;
    }

    if (v7 != 48000.0)
    {
      return 4294960561;
    }

    v34 = *(a1 + 28);
    result = 4294960561;
    if (v34 > 5)
    {
      if (v34 == 6)
      {
        if (*(a1 + 32) == 16)
        {
          v6 = 44;
          goto LABEL_187;
        }

        if (*(a1 + 12))
        {
          v6 = 47;
          goto LABEL_187;
        }
      }

      else if (v34 == 8)
      {
        if (*(a1 + 32) == 16)
        {
          v6 = 38;
          goto LABEL_187;
        }

        if (*(a1 + 12))
        {
          v6 = 48;
          goto LABEL_187;
        }
      }
    }

    else if (v34 == 1)
    {
      v37 = *(a1 + 32);
      if (v37 == 16)
      {
        v6 = 14;
        goto LABEL_187;
      }

      if (v37 == 24)
      {
        v6 = 16;
        goto LABEL_187;
      }

      if (*(a1 + 12))
      {
        v6 = 45;
        goto LABEL_187;
      }
    }

    else if (v34 == 2)
    {
      v35 = *(a1 + 32);
      if (v35 == 16)
      {
        v6 = 15;
        goto LABEL_187;
      }

      if (v35 == 24)
      {
        v6 = 17;
        goto LABEL_187;
      }

      if (*(a1 + 12))
      {
        v6 = 46;
        goto LABEL_187;
      }
    }
  }

  return result;
}

uint64_t APAudioFormatIsAudioChannelLayoutTag7_1(int a1)
{
  result = 0;
  if (a1 <= 10747911)
  {
    if (a1 <= 8519687)
    {
      if (a1 > 8388615)
      {
        if (a1 == 8388616)
        {
          return 1;
        }

        v3 = 8454152;
      }

      else
      {
        if (a1 == 8257544)
        {
          return 1;
        }

        v3 = 8323080;
      }
    }

    else if (a1 <= 10551303)
    {
      if (a1 == 8519688)
      {
        return 1;
      }

      v3 = 10485768;
    }

    else
    {
      if (a1 == 10551304 || a1 == 10616840)
      {
        return 1;
      }

      v3 = 10682376;
    }

LABEL_27:
    if (a1 != v3)
    {
      return result;
    }

    return 1;
  }

  if (a1 > 11993095)
  {
    if (a1 <= 12386311)
    {
      if (a1 == 11993096)
      {
        return 1;
      }

      v3 = 12058632;
    }

    else
    {
      if (a1 == 12386312 || a1 == 14090248)
      {
        return 1;
      }

      v3 = 13172744;
    }

    goto LABEL_27;
  }

  if (a1 <= 10878983)
  {
    if (a1 == 10747912)
    {
      return 1;
    }

    v3 = 10813448;
    goto LABEL_27;
  }

  if (a1 != 10878984 && a1 != 10944520)
  {
    v3 = 11599880;
    goto LABEL_27;
  }

  return 1;
}

uint64_t APAudioFormatToASBD(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = 4294960561;
  if (a1 > 0x3FFFFFFF)
  {
    if (a1 <= 0x7FFFFFFFFFFFLL)
    {
      if (a1 > 0x7FFFFFFFFFLL)
      {
        if (a1 <= 0x7FFFFFFFFFFLL)
        {
          if (a1 <= 0x1FFFFFFFFFFLL)
          {
            if (a1 != 0x8000000000)
            {
              if (a1 != 0x10000000000)
              {
                return v3;
              }

              v4 = 0;
              v5 = xmmword_22234D1F0;
              goto LABEL_144;
            }

            v4 = 0;
            v5 = xmmword_22234D1F0;
LABEL_159:
            v6 = 6;
            goto LABEL_160;
          }

          if (a1 == 0x20000000000)
          {
            v4 = 0;
            v5 = xmmword_22234D1E0;
            goto LABEL_159;
          }

          if (a1 != 0x40000000000)
          {
            return v3;
          }

          v4 = 0;
          v5 = xmmword_22234D1E0;
          goto LABEL_144;
        }

        if (a1 <= 0x1FFFFFFFFFFFLL)
        {
          if (a1 != 0x80000000000)
          {
            if (a1 != 0x100000000000)
            {
              return v3;
            }

            v5 = xmmword_22234D370;
            v4 = 16;
            goto LABEL_159;
          }

          v4 = 0;
          v5 = xmmword_22234D1E0;
          goto LABEL_154;
        }

        if (a1 != 0x200000000000)
        {
          if (a1 != 0x400000000000)
          {
            return v3;
          }

          v5 = xmmword_22234D2E0;
          v4 = 32;
          goto LABEL_151;
        }

        v5 = xmmword_22234D300;
        v4 = 32;
LABEL_157:
        v6 = 1;
        goto LABEL_160;
      }

      if (a1 > 0x1FFFFFFFFLL)
      {
        if (a1 <= 0x7FFFFFFFFLL)
        {
          if (a1 == 0x200000000)
          {
            v4 = 0;
            v5 = xmmword_22234D140;
            goto LABEL_144;
          }

          if (a1 != 0x400000000)
          {
            return v3;
          }

          v4 = 0;
          v5 = xmmword_22234D140;
LABEL_149:
          v6 = 12;
          goto LABEL_160;
        }

        if (a1 != 0x800000000)
        {
          if (a1 != 0x4000000000)
          {
            return v3;
          }

          v5 = xmmword_22234D350;
          v4 = 16;
          goto LABEL_144;
        }

        v4 = 0;
        v5 = xmmword_22234D140;
        goto LABEL_147;
      }

      if (a1 == 0x40000000)
      {
        v4 = 0;
        v5 = xmmword_22234D1A0;
        goto LABEL_157;
      }

      if (a1 != 0x80000000)
      {
        if (a1 != 0x100000000)
        {
          return v3;
        }

        v4 = 0;
        v5 = xmmword_22234D1E0;
        goto LABEL_157;
      }

      v4 = 0;
      v5 = xmmword_22234D1E0;
      goto LABEL_117;
    }

    if (a1 <= 0x3FFFFFFFFFFFFFLL)
    {
      if (a1 > 0x3FFFFFFFFFFFFLL)
      {
        if (a1 <= 0xFFFFFFFFFFFFFLL)
        {
          if (a1 == 0x4000000000000)
          {
            v4 = 0;
            v5 = xmmword_22234D230;
            goto LABEL_159;
          }

          if (a1 != 0x8000000000000)
          {
            return v3;
          }

          v4 = 0;
          v5 = xmmword_22234D230;
          goto LABEL_144;
        }

        if (a1 == 0x10000000000000)
        {
          v4 = 0;
          v5 = xmmword_22234D230;
          goto LABEL_149;
        }

        if (a1 != 0x20000000000000)
        {
          return v3;
        }

        v4 = 0;
        v5 = xmmword_22234D230;
LABEL_147:
        v6 = 16;
        goto LABEL_160;
      }

      if (a1 == 0x800000000000)
      {
        v5 = xmmword_22234D2C0;
        v4 = 32;
        goto LABEL_159;
      }

      if (a1 == 0x1000000000000)
      {
        v5 = xmmword_22234D2A0;
        v4 = 32;
        goto LABEL_144;
      }

      if (a1 != 0x2000000000000)
      {
        return v3;
      }

      v4 = 0;
      v5 = xmmword_22234D230;
    }

    else if (a1 > 0x3FFFFFFFFFFFFFFLL)
    {
      if (a1 <= 0x1FFFFFFFFFFFFFFFLL)
      {
        if (a1 == 0x400000000000000)
        {
          v4 = 0;
          v5 = xmmword_22234D150;
          goto LABEL_159;
        }

        if (a1 != 0x1000000000000000)
        {
          return v3;
        }

        v4 = 0;
        v5 = xmmword_22234D150;
LABEL_144:
        v6 = 8;
LABEL_160:
        v7 = 0x40E7700000000000;
        goto LABEL_161;
      }

      if (a1 == 0x2000000000000000)
      {
        v4 = 0;
        v5 = xmmword_22234D170;
      }

      else
      {
        if (a1 != 0x4000000000000000)
        {
          return v3;
        }

        v4 = 0;
        v5 = xmmword_22234D140;
      }
    }

    else if (a1 > 0xFFFFFFFFFFFFFFLL)
    {
      if (a1 == 0x100000000000000)
      {
        v4 = 0;
        v5 = xmmword_22234D160;
        goto LABEL_144;
      }

      if (a1 != 0x200000000000000)
      {
        return v3;
      }

      v4 = 0;
      v5 = xmmword_22234D150;
    }

    else
    {
      if (a1 != 0x40000000000000)
      {
        if (a1 != 0x80000000000000)
        {
          return v3;
        }

        v4 = 0;
        v5 = xmmword_22234D160;
        goto LABEL_159;
      }

      v4 = 0;
      v5 = xmmword_22234D160;
    }

LABEL_151:
    v6 = 2;
    goto LABEL_160;
  }

  if (a1 >= 0x8000)
  {
    if (a1 >= 0x400000)
    {
      if (a1 <= 0x3FFFFFF)
      {
        if (a1 > 0xFFFFFF)
        {
          if (a1 != 0x1000000)
          {
            if (a1 != 0x2000000)
            {
              return v3;
            }

            v4 = 0;
            v5 = xmmword_22234D1E0;
            goto LABEL_151;
          }

          v4 = 0;
          v5 = xmmword_22234D1E0;
        }

        else
        {
          if (a1 != 0x400000)
          {
            if (a1 != 0x800000)
            {
              return v3;
            }

            v4 = 0;
            v5 = xmmword_22234D1F0;
            goto LABEL_151;
          }

          v4 = 0;
          v5 = xmmword_22234D1F0;
        }

        goto LABEL_133;
      }

      if (a1 <= 0xFFFFFFF)
      {
        if (a1 != 0x4000000)
        {
          if (a1 != 0x8000000)
          {
            return v3;
          }

          v4 = 0;
          v5 = xmmword_22234D1E0;
          goto LABEL_130;
        }

        v4 = 0;
        v5 = xmmword_22234D1E0;
        goto LABEL_126;
      }

      if (a1 != 0x10000000)
      {
        if (a1 != 0x20000000)
        {
          return v3;
        }

        v4 = 0;
        v5 = xmmword_22234D1C0;
        goto LABEL_130;
      }

      v4 = 0;
      v5 = xmmword_22234D1D0;
      goto LABEL_126;
    }

    if (a1 < 0x40000)
    {
      if (a1 != 0x8000)
      {
        if (a1 != 0x10000)
        {
          if (a1 != 0x20000)
          {
            return v3;
          }

          v5 = xmmword_22234D390;
          v4 = 24;
          goto LABEL_151;
        }

        v5 = xmmword_22234D3B0;
        v4 = 24;
        goto LABEL_157;
      }

      v5 = xmmword_22234D3D0;
      v4 = 16;
      goto LABEL_151;
    }

    if (a1 >= 0x100000)
    {
      if (a1 == 0x100000)
      {
        v4 = 0;
        v5 = xmmword_22234D220;
      }

      else
      {
        if (a1 != 0x200000)
        {
          return v3;
        }

        v4 = 0;
        v5 = xmmword_22234D200;
      }

      goto LABEL_151;
    }

    if (a1 == 0x40000)
    {
      v4 = 0;
      v5 = xmmword_22234D220;
    }

    else
    {
      if (a1 != 0x80000)
      {
        return v3;
      }

      v4 = 0;
      v5 = xmmword_22234D200;
    }

LABEL_133:
    v6 = 2;
    goto LABEL_134;
  }

  v5 = xmmword_22234D3F0;
  if (a1 > 255)
  {
    if (a1 <= 2047)
    {
      if (a1 == 256)
      {
        v4 = 16;
LABEL_154:
        v6 = 1;
        goto LABEL_155;
      }

      if (a1 == 512)
      {
        v5 = xmmword_22234D3D0;
        v4 = 16;
        v6 = 2;
LABEL_155:
        v7 = 0x40DF400000000000;
        goto LABEL_161;
      }

      if (a1 != 1024)
      {
        return v3;
      }

      v4 = 16;
    }

    else
    {
      if (a1 >= 0x2000)
      {
        if (a1 != 0x2000)
        {
          if (a1 != 0x4000)
          {
            return v3;
          }

          v4 = 16;
          goto LABEL_157;
        }

        v5 = xmmword_22234D390;
        v4 = 24;
        goto LABEL_133;
      }

      if (a1 == 2048)
      {
        v5 = xmmword_22234D3D0;
        v4 = 16;
        goto LABEL_133;
      }

      if (a1 != 4096)
      {
        return v3;
      }

      v5 = xmmword_22234D3B0;
      v4 = 24;
    }

LABEL_117:
    v6 = 1;
LABEL_134:
    v7 = 0x40E5888000000000;
    goto LABEL_161;
  }

  if (a1 <= 15)
  {
    if (a1 != 0x8000000000000000)
    {
      v7 = 0x40BF400000000000;
      if (a1 == 4)
      {
        v4 = 16;
        v6 = 1;
      }

      else
      {
        if (a1 != 8)
        {
          return v3;
        }

        v5 = xmmword_22234D3D0;
        v4 = 16;
        v6 = 2;
      }

      goto LABEL_161;
    }

    v4 = 0;
    v5 = xmmword_22234D140;
    goto LABEL_159;
  }

  if (a1 > 63)
  {
    if (a1 != 64)
    {
      if (a1 != 128)
      {
        return v3;
      }

      v5 = xmmword_22234D3D0;
      v4 = 16;
      v6 = 2;
      goto LABEL_131;
    }

    v4 = 16;
LABEL_130:
    v6 = 1;
LABEL_131:
    v7 = 0x40D7700000000000;
    goto LABEL_161;
  }

  if (a1 != 16)
  {
    if (a1 != 32)
    {
      return v3;
    }

    v5 = xmmword_22234D3D0;
    v4 = 16;
    v6 = 2;
    goto LABEL_127;
  }

  v4 = 16;
LABEL_126:
  v6 = 1;
LABEL_127:
  v7 = 0x40CF400000000000;
LABEL_161:
  *a2 = v7;
  *(a2 + 8) = v5;
  *(a2 + 24) = DWORD2(v5);
  *(a2 + 28) = v6;
  *(a2 + 32) = v4;
  *(a2 + 36) = 0;
  if (a3)
  {
    v8 = 16;
    if (a1 <= 0x7FFFFFFFFLL)
    {
      if (a1 > 0x3FFFFFF)
      {
        if (a1 <= 0x3FFFFFFF)
        {
          if (a1 > 0xFFFFFFF)
          {
            if (a1 != 0x10000000)
            {
              v9 = 0x20000000;
              goto LABEL_216;
            }
          }

          else if (a1 != 0x4000000)
          {
            v9 = 0x8000000;
            goto LABEL_216;
          }
        }

        else
        {
          if (a1 > 0xFFFFFFFFLL)
          {
            if (a1 == 0x100000000 || a1 == 0x200000000)
            {
              goto LABEL_217;
            }

            v9 = 0x400000000;
            goto LABEL_216;
          }

          if (a1 != 0x40000000)
          {
            v9 = 0x80000000;
            goto LABEL_216;
          }
        }

        goto LABEL_217;
      }

      if (a1 < 0x200000)
      {
        if (a1 < 0x80000)
        {
          if (a1 == 0x8000000000000000 || a1 == 0x40000)
          {
            goto LABEL_217;
          }

          goto LABEL_219;
        }

        if (a1 != 0x80000)
        {
          goto LABEL_217;
        }
      }

      else
      {
        if (a1 >= 0x800000)
        {
          if (a1 == 0x800000 || a1 == 0x1000000)
          {
            goto LABEL_217;
          }

          v9 = 0x2000000;
          goto LABEL_216;
        }

        if (a1 != 0x200000)
        {
          goto LABEL_217;
        }
      }
    }

    else
    {
      if (a1 <= 0xFFFFFFFFFFFFFLL)
      {
        if (a1 <= 0x3FFFFFFFFFFLL)
        {
          if (a1 > 0xFFFFFFFFFFLL)
          {
            if (a1 != 0x10000000000)
            {
              v9 = 0x20000000000;
              goto LABEL_216;
            }
          }

          else if (a1 != 0x800000000)
          {
            v9 = 0x8000000000;
            goto LABEL_216;
          }
        }

        else
        {
          if (a1 > 0x1FFFFFFFFFFFFLL)
          {
            if (a1 == 0x2000000000000 || a1 == 0x4000000000000)
            {
              goto LABEL_217;
            }

            v9 = 0x8000000000000;
            goto LABEL_216;
          }

          if (a1 != 0x40000000000)
          {
            v9 = 0x80000000000;
            goto LABEL_216;
          }
        }

LABEL_217:
        v3 = 0;
        *a3 = v8;
        return v3;
      }

      if (a1 <= 0x1FFFFFFFFFFFFFFLL)
      {
        if (a1 > 0x3FFFFFFFFFFFFFLL)
        {
          if (a1 == 0x40000000000000 || a1 == 0x80000000000000)
          {
            goto LABEL_217;
          }

          v9 = 0x100000000000000;
LABEL_216:
          if (a1 == v9)
          {
            goto LABEL_217;
          }

LABEL_219:
          v8 = v4;
          goto LABEL_217;
        }

        if (a1 != 0x10000000000000)
        {
          v9 = 0x20000000000000;
          goto LABEL_216;
        }

        goto LABEL_217;
      }

      if (a1 <= 0xFFFFFFFFFFFFFFFLL)
      {
        if (a1 != 0x200000000000000)
        {
          v9 = 0x400000000000000;
          goto LABEL_216;
        }

        goto LABEL_217;
      }

      if (a1 == 0x1000000000000000 || a1 == 0x4000000000000000)
      {
        goto LABEL_217;
      }
    }

    v8 = 24;
    goto LABEL_217;
  }

  return 0;
}