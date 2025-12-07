void __timesyncLogMeanIntervalApplier_setIntervalAndApplyIfDifferent_block_invoke(uint64_t a1)
{
  if (qword_1ED4CCF48)
  {
    if (dword_1EAF1CF48)
    {
      v2 = OUTLINED_FUNCTION_32_6();
      v10 = OUTLINED_FUNCTION_12_3(v2, v3, v4, v5, v6, v7, v8, v9, v32, v34, v36, *v38, v38[2], 0, 0);
      v18 = OUTLINED_FUNCTION_5_2(v10, v11, v12, v13, v14, v15, v16, v17, v33, v35, v37, v39, v40, type, v42);
      if (OUTLINED_FUNCTION_6_2(v18))
      {
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_6_3();
        OUTLINED_FUNCTION_29_6(v19, v20, v21, v22, v23, v24, v25, v26);
      }

      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_34_4(v27, v28, v29, v30, v31);
    }

    if (byte_1ED4CCF38 != *(a1 + 32))
    {
      byte_1ED4CCF38 = *(a1 + 32);
      timesyncLogMeanIntervalApplier_restartIntervalApplierInternal();
    }
  }
}

void __fig8021ASClock_getMetricsForClockAndAllPorts_block_invoke(uint64_t a1, uint64_t a2, const __CFNumber *a3)
{
  v15 = 0;
  v5 = *(a1 + 32);
  UInt16 = FigCFNumberGetUInt16(a3);
  fig8021ASClock_copyPortMetricsForPortIfValid(v5, UInt16, &v15, v7, v8, v9, v10, v11, v14);
  v12 = *(*(a1 + 32) + 104);
  v13 = v15;
  FigCFDictionarySetValue(v12, a3, v15);
  if (v13)
  {

    CFRelease(v13);
  }
}

size_t CM8021ASClockAddIPv4Port_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x30B, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CM8021ASClockAddIPv6Port_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x381, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CM8021ASClockAddAWDLPort_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x3EF, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CM8021ASClockRemoveAWDLPort_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x3FE, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CM8021ASClockOverridePortReceiveMatching_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x412, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CM8021ASClockRestorePortReceiveMatching_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x424, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

BOOL CM8021ASClockEnablePort_cold_2(os_unfair_lock_s **a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x43D, v8, a7, a8, v12);
  FigSimpleMutexUnlock(*a1);
  return a2 == 0;
}

size_t CM8021ASClockEnablePort_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE35uLL, "<<<< 8021ASClock >>>>", 0x442, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

BOOL CM8021ASClockDisablePort_cold_2(os_unfair_lock_s **a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x463, v8, a7, a8, v12);
  FigSimpleMutexUnlock(*a1);
  return a2 == 0;
}

size_t CM8021ASClockDisablePort_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE35uLL, "<<<< 8021ASClock >>>>", 0x46A, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CM8021ASClockSetAllPortRemoteSyncMessageIntervals_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x61A, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CM8021ASClockSetAllPortRemoteSyncMessageIntervals_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x619, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

BOOL CM8021ASClockSetPortRemoteSyncMessageIntervals_cold_2(os_unfair_lock_s **a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x64F, v8, a7, a8, v12);
  FigSimpleMutexUnlock(*a1);
  return a2 == 0;
}

size_t CM8021ASClockSetPortRemoteSyncMessageIntervals_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE2CuLL, "<<<< 8021ASClock >>>>", 0x655, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CM8021ASClockSetPortRemoteSyncMessageIntervals_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE35uLL, "<<<< 8021ASClock >>>>", 0x658, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t CM8021ASClockSetPortRemoteSyncMessageIntervals_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF40, 0xFFFFCE36uLL, "<<<< 8021ASClock >>>>", 0x651, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t ftd_PostEvent(const void *a1, int *a2, int a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *buffer = 0u;
  v22 = 0u;
  usedBufLen = 0;
  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294955254;
    }

    v9 = Mutable;
    CFDictionarySetValue(Mutable, @"deviceID", *(a4 + 32));
    CFDictionarySetValue(v9, @"deviceRef", *(a4 + 16));
    usedBufLen = 0;
    Length = CFStringGetLength(*(a4 + 32));
    if (Length >= 8)
    {
      v11.length = 8;
    }

    else
    {
      v11.length = Length;
    }

    v11.location = 0;
    CFStringGetBytes(*(a4 + 32), v11, 0x8000100u, 0, 0, buffer, 128, &usedBufLen);
    buffer[usedBufLen] = 0;
    v12 = CFStringCreateWithCString(0, buffer, 0x8000100u);
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(v9, @"deviceName", v12);
      CFRelease(v13);
    }
  }

  else
  {
    v9 = 0;
  }

  CFRetain(a1);
  v14 = *a2;
  v15 = *(a2 + 1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ftd_PostEvent_block_invoke;
  block[3] = &__block_descriptor_tmp_43;
  block[4] = a1;
  block[5] = a2;
  v18 = v14;
  v19 = a3;
  block[6] = v9;
  dispatch_async(v15, block);
  return 0;
}

void CFDictionarySetInt64(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (a3 == a3)
  {
    v11 = a3;
    p_valuePtr = &v11;
    v6 = kCFNumberSInt8Type;
  }

  else
  {
    p_valuePtr = &valuePtr;
    v6 = kCFNumberSInt64Type;
  }

  v7 = CFNumberCreate(0, v6, p_valuePtr);
  if (v7)
  {
    v8 = v7;
    CFDictionarySetValue(a1, a2, v7);
    CFRelease(v8);
  }
}

CFIndex ftd_PostEventOnAllHandlers_cold_1(CFArrayRef *a1, const void *a2, int a3, uint64_t a4)
{
  v8 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a1, v8);
    result = ftd_PostEvent(a2, ValueAtIndex, a3, a4);
    if (result)
    {
      break;
    }

    ++v8;
    result = CFArrayGetCount(*a1);
  }

  while (result > v8);
  return result;
}

uint64_t FigTransportCreateCFNumberFromRemoteObjectRef(uint64_t a1, uint64_t a2, CFNumberRef *a3)
{
  valuePtr = a2;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v4)
  {
    return 4294955266;
  }

  v5 = v4;
  result = 0;
  *a3 = v5;
  return result;
}

uint64_t FigTransportGetRemoteObjectRefFromCFNumber(const void *a1, void *a2)
{
  if (!a1)
  {
    return 4294955259;
  }

  v4 = CFGetTypeID(a1);
  v5 = 4294955259;
  if (v4 == CFNumberGetTypeID())
  {
    if (CFNumberGetValue(a1, kCFNumberSInt64Type, a2))
    {
      return 0;
    }

    else
    {
      return 4294955259;
    }
  }

  return v5;
}

uint64_t FigTransportCreateCFNumberFromLocalObjectRef(uint64_t a1, uint64_t a2, CFNumberRef *a3)
{
  valuePtr = a2;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v4)
  {
    return 4294955266;
  }

  v5 = v4;
  result = 0;
  *a3 = v5;
  return result;
}

uint64_t FigTransportGetLocalObjectRefFromCFNumber(const void *a1, void *a2)
{
  valuePtr = 0;
  if (!a1)
  {
    return 4294955259;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID() || !CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr))
  {
    return 4294955259;
  }

  result = 0;
  *a2 = valuePtr;
  return result;
}

uint64_t FigJSONObjectCreateWithData(uint64_t a1, unsigned int a2, CFTypeRef *a3)
{
  err = 0;
  v3 = 4294949992;
  if (a1 && a3)
  {
    Class = objc_getClass("NSJSONSerialization");
    if (Class && (v8 = Class, (v9 = sel_registerName("JSONObjectWithData:options:error:")) != 0))
    {
      v10 = v9;
      v11 = a2;
      v12 = objc_autoreleasePoolPush();
      v13 = [v8 v10];
      if (v13)
      {
        v3 = 0;
        *a3 = CFRetain(v13);
      }

      else
      {
        v3 = 4294949991;
        if (err)
        {
          Code = CFErrorGetCode(err);
          if (Code == Code)
          {
            v3 = Code;
          }

          else
          {
            v3 = 4294949991;
          }
        }
      }

      if (v12)
      {
        objc_autoreleasePoolPop(v12);
      }
    }

    else
    {
      return 4294949991;
    }
  }

  return v3;
}

id FigIsValidJSONObject(uint64_t a1)
{
  Class = objc_getClass("NSJSONSerialization");
  if (!Class)
  {
    return 0;
  }

  v3 = Class;
  v4 = sel_registerName("isValidJSONObject:");
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  v7 = [v3 v5];
  if (v6)
  {
    objc_autoreleasePoolPop(v6);
  }

  return v7;
}

uint64_t FigCFDataCreateWithJSONObject(uint64_t a1, unsigned int a2, CFTypeRef *a3)
{
  err = 0;
  if ((a2 & 0x3000000) != 0)
  {
    return 4294949992;
  }

  v4 = 4294949992;
  if (a1 && a3)
  {
    Class = objc_getClass("NSJSONSerialization");
    if (Class && (v8 = Class, (v9 = sel_registerName("dataWithJSONObject:options:error:")) != 0))
    {
      v10 = v9;
      v11 = objc_autoreleasePoolPush();
      v12 = [v8 v10];
      if (v12)
      {
        v4 = 0;
        *a3 = CFRetain(v12);
      }

      else
      {
        v4 = 4294949991;
        if (err)
        {
          Code = CFErrorGetCode(err);
          if (Code == Code)
          {
            v4 = Code;
          }

          else
          {
            v4 = 4294949991;
          }
        }
      }

      if (v11)
      {
        objc_autoreleasePoolPop(v11);
      }
    }

    else
    {
      return 4294949991;
    }
  }

  return v4;
}

size_t _createByteStreamWithIOSurface(uint64_t a1, IOSurfaceRef buffer, size_t a3, int a4, char a5, uint64_t a6, CFTypeRef *a7, uint64_t a8, CMBlockBufferRef *a9)
{
  cf = 0;
  v9 = a4 == 0;
  if (a6)
  {
    OUTLINED_FUNCTION_0_22();
    v33 = 302;
  }

  else if (buffer)
  {
    v13 = a4;
    if (IOSurfaceGetAllocSize(buffer) >= a3)
    {
      if (IOSurfaceLock(buffer, v9, 0))
      {
        return 4294954422;
      }

      ClassID = CMByteStreamGetClassID();
      v21 = CMDerivedObjectCreate(a1, kFigIOSurfaceByteStreamVTable, ClassID, &cf, v17, v18, v19, v20, v34);
      if (v21)
      {
        v24 = v21;
        IOSurfaceUnlock(buffer, v9, 0);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
        v23 = CFRetain(buffer);
        *DerivedStorage = v23;
        *(DerivedStorage + 8) = a3;
        if (a5)
        {
          *(DerivedStorage + 8) = IOSurfaceGetAllocSize(buffer);
          v23 = *DerivedStorage;
        }

        *(DerivedStorage + 16) = v13;
        IOSurfaceIncrementUseCount(v23);
        v24 = 0;
        *a7 = cf;
      }

      return v24;
    }

    OUTLINED_FUNCTION_0_22();
    v33 = 304;
  }

  else
  {
    OUTLINED_FUNCTION_0_22();
    v33 = 303;
  }

  return FigSignalErrorAtGM(v26, v27, v28, v29, v33, v30, v31, v32, a9);
}

size_t FigIOSurfaceByteStreamRead(uint64_t a1, size_t a2, uint64_t a3, void *a4, size_t *a5)
{
  CMByteStreamGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v9);
  if (a2)
  {
    if (a3 < 0)
    {
      OUTLINED_FUNCTION_0_22();
      result = FigSignalErrorAtGM(v16, v17, v18, v19, 0x6B, v20, v21, v22, v23);
      a2 = 0;
      if (!a5)
      {
        return result;
      }

      goto LABEL_8;
    }

    v11 = *(DerivedStorage + 8);
    v12 = v11 <= a3;
    v13 = v11 - a3;
    if (v12)
    {
      return 4294954423;
    }

    if (v13 < a2)
    {
      a2 = v13;
    }

    BaseAddress = IOSurfaceGetBaseAddress(*DerivedStorage);
    memcpy(a4, &BaseAddress[a3], a2);
  }

  result = 0;
  if (!a5)
  {
    return result;
  }

LABEL_8:
  if (!result)
  {
    *a5 = a2;
  }

  return result;
}

size_t FigIOSurfaceByteStreamWrite(uint64_t a1, size_t a2, uint64_t a3, const void *a4, size_t *a5)
{
  CMByteStreamGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v10);
  if (!*(DerivedStorage + 16))
  {
    v19 = v5;
    v20 = "%s signalled err=%d at <>:%d";
    v21 = "(Fig)";
    v22 = 0;
    v23 = 4294954419;
    v24 = 134;
LABEL_18:
    result = FigSignalErrorAtGM(v20, v22, v23, v21, v24, v19, v12, v13, v25);
    goto LABEL_11;
  }

  if (!a4)
  {
    OUTLINED_FUNCTION_0_22();
    v24 = 135;
    goto LABEL_18;
  }

  if (a3 < 0)
  {
    OUTLINED_FUNCTION_0_22();
    v24 = 136;
    goto LABEL_18;
  }

  if (a2)
  {
    v14 = DerivedStorage;
    AllocSize = IOSurfaceGetAllocSize(*DerivedStorage);
    if ((AllocSize - a3) < 1)
    {
      return 4294954423;
    }

    if (AllocSize - a3 < a2)
    {
      a2 = AllocSize - a3;
    }

    BaseAddress = IOSurfaceGetBaseAddress(*v14);
    memcpy(&BaseAddress[a3], a4, a2);
    result = 0;
    v18 = *(v14 + 8);
    if (v18 <= a2 + a3)
    {
      v18 = a2 + a3;
    }

    *(v14 + 8) = v18;
  }

  else
  {
    result = 0;
  }

LABEL_11:
  if (a5)
  {
    if (!result)
    {
      *a5 = a2;
    }
  }

  return result;
}

size_t FigIOSurfaceByteStreamSetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xDE, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigIOSurfaceByteStreamSetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xE3, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigIOSurfaceByteStreamSetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xE8, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigIOSurfaceByteStreamGetAvailableLengthAtOffset_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_22();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xFA, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t fcpos_Equal(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    OUTLINED_FUNCTION_0_78(&sRegisterFigCaptionPositionTypeOnce);
    result = 0;
    if (a2)
    {
      if (v4 == sFigCaptionPositionID)
      {
        v5 = CFGetTypeID(a2);
        OUTLINED_FUNCTION_0_78(&sRegisterFigCaptionPositionTypeOnce);
        if (v5 == sFigCaptionPositionID && *(v3 + 16) == *(a2 + 16) && *(v3 + 20) == *(a2 + 20))
        {
          result = FigGeometryDimensionEqualToDimension(*(v3 + 24), *(v3 + 32), *(a2 + 24), *(a2 + 32));
          if (result)
          {
            return FigGeometryDimensionEqualToDimension(*(v3 + 40), *(v3 + 48), *(a2 + 40), *(a2 + 48));
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

const void *fcpos_Hash(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    OUTLINED_FUNCTION_0_78(&sRegisterFigCaptionPositionTypeOnce);
    if (v2 == sFigCaptionPositionID)
    {
      v3 = (*(v1 + 5) ^ *(v1 + 4));
      v4 = FigGeometryDimensionHash(*(v1 + 3), *(v1 + 4));
      return (v4 ^ FigGeometryDimensionHash(*(v1 + 5), *(v1 + 6)) ^ v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t FigCaptionPositionCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14uLL, "(Fig)", 0x451, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t FigEndpointPlaybackSessionXPCRemoteCreateWithObjectID(CMBlockBufferRef *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a1)
  {
    if (a2)
    {
      result = remoteXPCEndpointPlaybackSessionClient_EnsureClientEstablished();
      if (result)
      {
        return result;
      }

      v38 = 0;
      v13 = *MEMORY[0x1E695E480];
      ClassID = FigEndpointPlaybackSessionGetClassID(result, v12);
      result = CMDerivedObjectCreate(v13, kFigEndpointPlaybackSessionRemoteXPC_EndpointPlaybackSessionVTable, ClassID, &v38, v15, v16, v17, v18, v37.version);
      if (result)
      {
        goto LABEL_8;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage(v38);
      DerivedStorage[1] = a1;
      DerivedStorage[7] = 1;
      v37.version = 0;
      v37.retain = remoteXPCEndpointPlaybackSession_cloneCompletionCallback;
      v37.release = remoteXPCEndpointPlaybackSession_freeCompletionCallback;
      v37.copyDescription = 0;
      v37.equal = 0;
      v20 = CFDictionaryCreateMutable(v13, 0, 0, &v37);
      DerivedStorage[3] = v20;
      if (v20)
      {
        v21 = dispatch_queue_create("com.apple.coremedia.endpointplaybacksession.callbacks", 0);
        DerivedStorage[2] = v21;
        if (v21)
        {
          FigXPCRemoteClientAssociateObject(gFigEndpointPlaybackSessionRemoteClient, v38, a1, v22, v23, v24, v25, v26, v37.version);
          result = 0;
LABEL_8:
          *a2 = v38;
          return result;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        v36 = 1285;
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        v36 = 1282;
      }

      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, 0xFFFFBE9BuLL, "<< FigEndpointPlaybackSessionXPCRemote >>", v36, v33, v34, v35, v37.version);
      goto LABEL_8;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v31 = 1323;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v31 = 1321;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 0xFFFFCE14uLL, "<< FigEndpointPlaybackSessionXPCRemote >>", v31, v28, v29, v30, a9);
}

uint64_t remoteXPCEndpointPlaybackSessionClient_HandleClientMessage(uint64_t a1, void *a2)
{
  HIDWORD(v60) = 0;
  result = FigXPCMessageGetOpCode(a2, &v60 + 1);
  if (!result)
  {
    if (HIDWORD(v60) == 1701340002)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
      v38 = *(DerivedStorage + 16);
      block = MEMORY[0x1E69E9820];
      v70 = 0x40000000;
      v71 = __remoteXPCEndpointPlaybackSessionClient_eventHandlerCallback_block_invoke;
      v72 = &__block_descriptor_tmp_9_3;
      v73 = DerivedStorage;
      v74 = a2;
      v75 = a1;
      dispatch_sync(v38, &block);
      return 0;
    }

    if (HIDWORD(v60) != 1667329122)
    {
      return 4294966630;
    }

    v63 = 0;
    v64 = &v63;
    v65 = 0x3000000000;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    v5 = CMBaseObjectGetDerivedStorage(a1);
    uint64 = xpc_dictionary_get_uint64(a2, "CompletionID");
    OSStatus = FigXPCMessageGetOSStatus(a2, "CompletionStatus", v7, v8, v9, v10, v11, v12, v60);
    v14 = *(v5 + 16);
    block = MEMORY[0x1E69E9820];
    v70 = 0x40000000;
    v71 = __remoteXPCEndpointPlaybackSessionClient_handleCompletionCallback_block_invoke;
    v72 = &unk_1E74A5758;
    v74 = v5;
    v75 = uint64;
    v73 = &v63;
    dispatch_sync(v14, &block);
    v21 = v64[3];
    switch(v21)
    {
      case 1937010544:
        goto LABEL_23;
      case 1735421033:
        cf = 0;
        break;
      case 1735422066:
        v61 = 0;
        cf = 0;
        v47 = OUTLINED_FUNCTION_1_54();
        FigXPCMessageCopyCFString(v47, v48, v49);
        v50 = FigXPCMessageCopyCFObject(a2, "PropertyValue", &v61);
        v58 = OUTLINED_FUNCTION_2_38(v50, v51, v52, v53, v54, v55, v56, v57, v60, v61, cf);
        v59(v58);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

LABEL_35:
        v46 = v61;
        if (!v61)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      case 1768976745:
      case 1886151033:
        goto LABEL_23;
      case 1886545249:
        cf = 0;
        v42 = FigXPCMessageGetOSStatus(a2, "ResponseStatus", v15, v16, v17, v18, v19, v20, v60);
        v43 = OUTLINED_FUNCTION_1_54();
        FigXPCMessageCopyCFObject(v43, v44, v45);
        (v64[5])(v42, cf, v64[4]);
LABEL_28:
        v46 = cf;
        if (cf)
        {
LABEL_29:
          CFRelease(v46);
          goto LABEL_30;
        }

        goto LABEL_30;
      case 1919971689:
        goto LABEL_23;
      case 1936024673:
      case 1936028777:
        cf = 0;
        break;
      case 1936875892:
LABEL_23:
        (v64[5])(OSStatus, v64[4]);
        goto LABEL_30;
      case 1635018857:
        v61 = 0;
        cf = 0;
        v24 = OUTLINED_FUNCTION_1_54();
        FigXPCMessageCopyCFData(v24, v25, v26);
        v27 = FigXPCMessageCopyCFString(a2, "PlayerGUID", &v61);
        v35 = OUTLINED_FUNCTION_2_38(v27, v28, v29, v30, v31, v32, v33, v34, v60, v61, cf);
        v36(v35);
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_35;
      default:
LABEL_30:
        _Block_object_dispose(&v63, 8);
        return 0;
    }

    v39 = OUTLINED_FUNCTION_1_54();
    FigXPCMessageCopyCFDictionary(v39, v40, v41);
    (v64[5])(cf, OSStatus, v64[4]);
    goto LABEL_28;
  }

  return result;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_Invalidate(uint64_t a1)
{
  v6 = 0;
  v7 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v6);
  if (ObjectID)
  {
    v4 = ObjectID;
    v3 = 0;
  }

  else
  {
    v2 = FigXPCCreateBasicMessage(0x696E766Cu, v6, &v7);
    v3 = v7;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage(gFigEndpointPlaybackSessionRemoteClient, v7);
      v3 = v7;
    }
  }

  FigXPCRelease(v3);
  return v4;
}

void FigEndpointPlaybackSessionRemoteXPC_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v3 = CMBaseObjectGetDerivedStorage(a1);
  v10 = v3;
  v16 = 0;
  if (!*v3)
  {
    v11 = *(v3 + 8);
    *v3 = 1;
    FigXPCRemoteClientDisassociateObject(gFigEndpointPlaybackSessionRemoteClient, v11, v4, v5, v6, v7, v8, v9, v15);
    if (!*(v10 + 1) && !FigXPCCreateBasicMessage(0x646F6F6Du, v11, &v16))
    {
      FigXPCRemoteClientSendSyncMessage(gFigEndpointPlaybackSessionRemoteClient, v16);
    }
  }

  v12 = *(v10 + 24);
  if (v12)
  {
    CFRelease(v12);
    *(v10 + 24) = 0;
  }

  FigXPCRelease(v16);
  v13 = *(DerivedStorage + 16);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(DerivedStorage + 48);
  if (v14)
  {
    CFRelease(v14);
  }
}

unint64_t FigEndpointPlaybackSessionRemoteXPC_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v14 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v14);
  if (!ObjectID)
  {
    ObjectID = FigXPCSendStdCopyPropertyMessage(gFigEndpointPlaybackSessionRemoteClient, v14, a2, &cf, v7, v8, v9, v10);
  }

  v11 = ObjectID;
  if (a4)
  {
    *a4 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v12);
  if (!ObjectID)
  {
    ObjectID = FigXPCSendStdSetPropertyMessage(gFigEndpointPlaybackSessionRemoteClient, v12, a2, a3, v6, v7, v8, v9);
  }

  v10 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout();
  return v10;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_SetProxiedProperty(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v11 = 0;
  *v12 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v11);
  if (ObjectID)
  {
    v8 = ObjectID;
    v9 = 0;
  }

  else
  {
    v8 = FigXPCCreateBasicMessage(0x73707072u, v11, v12);
    v9 = *v12;
    if (!v8)
    {
      FigXPCMessageSetCFString(*v12, "PropertyKey", a2);
      FigXPCMessageSetCFDictionary(*v12, "Params", a3);
      FigXPCMessageSetCFObject(*v12, "PropertyValue", a4);
      v8 = FigXPCRemoteClientSendSyncMessage(gFigEndpointPlaybackSessionRemoteClient, *v12);
      v9 = *v12;
    }
  }

  FigXPCRelease(v9);
  return v8;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_SetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v15 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v15);
  if (!ObjectID)
  {
    if (a2)
    {
      v9 = 1936029288;
    }

    else
    {
      v9 = 1667593832;
    }

    ObjectID = FigXPCCreateBasicMessage(v9, v15, &v16);
    if (!ObjectID)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
      v11 = *(DerivedStorage + 16);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = __FigEndpointPlaybackSessionRemoteXPC_SetEventHandler_block_invoke;
      v14[3] = &__block_descriptor_tmp_14_5;
      v14[4] = DerivedStorage;
      v14[5] = a2;
      v14[6] = a3;
      v14[7] = a4;
      dispatch_sync(v11, v14);
      ObjectID = FigXPCRemoteClientSendSyncMessage(gFigEndpointPlaybackSessionRemoteClient, v16);
    }
  }

  v12 = ObjectID;
  FigXPCRelease(v16);
  return v12;
}

uint64_t FigEndpointPlaybackSessionRemoteXPC_BroadcastCoordinatedPlaybackState(uint64_t a1, const void *a2, void *a3)
{
  v9 = 0;
  *v10 = 0;
  ObjectID = remoteXPCEndpointPlaybackSession_GetObjectID(a1, &v9);
  if (ObjectID)
  {
    v6 = ObjectID;
    v7 = 0;
  }

  else
  {
    v6 = FigXPCCreateBasicMessage(0x62706373u, v9, v10);
    v7 = *v10;
    if (!v6)
    {
      FigXPCMessageSetCFString(*v10, "Type", a2);
      FigXPCMessageSetCFDictionary(*v10, "Params", a3);
      v6 = FigXPCRemoteClientSendSyncMessage(gFigEndpointPlaybackSessionRemoteClient, *v10);
      v7 = *v10;
    }
  }

  FigXPCRelease(v7);
  return v6;
}

void remoteXPCEndpointPlaybackSession_generateSandboxTokenForFilePath(void *a1, const __CFDictionary *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  bzero(v10, 0x400uLL);
  Value = CFDictionaryGetValue(a2, @"movPkgPath");
  if (Value || (Value = CFDictionaryGetValue(a2, @"path")) != 0)
  {
    if (CFStringGetCString(Value, buffer, 1024, 0x8000100u))
    {
      if ((v5 = open(buffer, 0), v5 != -1) && (v6 = v5, v7 = fcntl(v5, 50, v10), close(v6), v7 != -1) || realpath_DARWIN_EXTSN(buffer, v10) || !*__error())
      {
        v8 = sandbox_extension_issue_file();
        if (v8)
        {
          v9 = v8;
          xpc_dictionary_set_string(a1, "SExtToken", v8);
          free(v9);
        }
      }
    }
  }
}

size_t remoteXPCEndpointPlaybackSession_GetObjectID_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0FuLL, "<< FigEndpointPlaybackSessionXPCRemote >>", 0x101, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t remoteXPCEndpointPlaybackSession_GetObjectID_cold_2(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBEAEuLL, "<< FigEndpointPlaybackSessionXPCRemote >>", 0x102, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t figHALDriver_PerformDeviceConfigurationChange()
{
  OUTLINED_FUNCTION_0_79();
  v8 = driver_CopyDeviceForID(v0, v1, v2, v3, v4, v5, v6, v7);
  if (v8)
  {
LABEL_4:
    v11 = v8;
    if (!cf)
    {
      return v11;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable(cf) + 24) + 16))
  {
    v9 = OUTLINED_FUNCTION_2_3();
    v8 = v10(v9);
    goto LABEL_4;
  }

  v11 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v11;
}

uint64_t figHALDriver_AbortDeviceConfigurationChange()
{
  OUTLINED_FUNCTION_0_79();
  v8 = driver_CopyDeviceForID(v0, v1, v2, v3, v4, v5, v6, v7);
  if (v8)
  {
LABEL_4:
    v11 = v8;
    if (!cf)
    {
      return v11;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable(cf) + 24) + 24))
  {
    v9 = OUTLINED_FUNCTION_2_3();
    v8 = v10(v9);
    goto LABEL_4;
  }

  v11 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v11;
}

uint64_t figHALDriver_HasProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_79();
  if (!driver_CopyObjectForID(v5, v6, v7, v8, v9, v10, v11, v12, v16))
  {
    v13 = *(*(CMBaseObjectGetVTable(v17) + 16) + 16);
    if (v13)
    {
      v14 = v13(v17, a4);
      if (!v17)
      {
        return v14;
      }

      goto LABEL_6;
    }
  }

  v14 = 0;
  if (v17)
  {
LABEL_6:
    CFRelease(v17);
  }

  return v14;
}

uint64_t figHALDriver_IsPropertySettable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  OUTLINED_FUNCTION_0_79();
  v14 = driver_CopyObjectForID(v6, v7, v8, v9, v10, v11, v12, v13, v22);
  if (v14)
  {
    v15 = v14;
    if (!v23)
    {
      return v15;
    }

    goto LABEL_9;
  }

  v15 = 2003332927;
  if (*(*(CMBaseObjectGetVTable(v23) + 16) + 16))
  {
    v16 = OUTLINED_FUNCTION_2_3();
    if (v17(v16))
    {
      if (*(*(CMBaseObjectGetVTable(v23) + 16) + 24))
      {
        v18 = OUTLINED_FUNCTION_2_3();
        v20 = v19(v18);
      }

      else
      {
        v20 = 0;
      }

      v15 = 0;
      *a5 = v20;
    }
  }

  if (v23)
  {
LABEL_9:
    CFRelease(v23);
  }

  return v15;
}

uint64_t figHALDriver_GetPropertyDataSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  OUTLINED_FUNCTION_0_79();
  v19 = driver_CopyObjectForID(v11, v12, v13, v14, v15, v16, v17, v18, v25);
  if (v19)
  {
    v20 = v19;
    if (!v26)
    {
      return v20;
    }

    goto LABEL_9;
  }

  v20 = 2003332927;
  v21 = *(*(CMBaseObjectGetVTable(v26) + 16) + 16);
  if (v21 && v21(v26, a4))
  {
    v22 = *(*(CMBaseObjectGetVTable(v26) + 16) + 32);
    if (v22)
    {
      v23 = v22(v26, a4, a5, a6);
    }

    else
    {
      v23 = 0;
    }

    v20 = 0;
    *a7 = v23;
  }

  if (v26)
  {
LABEL_9:
    CFRelease(v26);
  }

  return v20;
}

uint64_t figHALDriver_GetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_79();
  v13 = driver_CopyObjectForID(v5, v6, v7, v8, v9, v10, v11, v12, v19);
  if (v13)
  {
    goto LABEL_6;
  }

  v14 = 2003332927;
  v15 = *(*(CMBaseObjectGetVTable(v20) + 16) + 16);
  if (v15 && v15(v20, a4))
  {
    if (*(*(CMBaseObjectGetVTable(v20) + 16) + 40))
    {
      v16 = OUTLINED_FUNCTION_2_39();
      v13 = v17(v16);
LABEL_6:
      v14 = v13;
      goto LABEL_8;
    }

    v14 = 4294954514;
  }

LABEL_8:
  if (v20)
  {
    CFRelease(v20);
  }

  return v14;
}

uint64_t figHALDriver_SetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_79();
  v13 = driver_CopyObjectForID(v5, v6, v7, v8, v9, v10, v11, v12, v19);
  if (v13)
  {
    goto LABEL_6;
  }

  v14 = 2003332927;
  v15 = *(*(CMBaseObjectGetVTable(v20) + 16) + 16);
  if (v15 && v15(v20, a4))
  {
    if (*(*(CMBaseObjectGetVTable(v20) + 16) + 48))
    {
      v16 = OUTLINED_FUNCTION_2_39();
      v13 = v17(v16);
LABEL_6:
      v14 = v13;
      goto LABEL_8;
    }

    v14 = 4294954514;
  }

LABEL_8:
  if (v20)
  {
    CFRelease(v20);
  }

  return v14;
}

uint64_t figHALDriver_StartIO()
{
  OUTLINED_FUNCTION_0_79();
  v8 = driver_CopyDeviceForID(v0, v1, v2, v3, v4, v5, v6, v7);
  if (v8)
  {
LABEL_4:
    v10 = v8;
    if (!cf)
    {
      return v10;
    }

    goto LABEL_7;
  }

  v9 = *(*(CMBaseObjectGetVTable(cf) + 24) + 32);
  if (v9)
  {
    v8 = v9();
    goto LABEL_4;
  }

  v10 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v10;
}

uint64_t figHALDriver_StopIO()
{
  OUTLINED_FUNCTION_0_79();
  v8 = driver_CopyDeviceForID(v0, v1, v2, v3, v4, v5, v6, v7);
  if (v8)
  {
LABEL_4:
    v10 = v8;
    if (!cf)
    {
      return v10;
    }

    goto LABEL_7;
  }

  v9 = *(*(CMBaseObjectGetVTable(cf) + 24) + 40);
  if (v9)
  {
    v8 = v9();
    goto LABEL_4;
  }

  v10 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v10;
}

uint64_t figHALDriver_GetZeroTimeStamp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_79();
  v17 = driver_CopyDeviceForID(v9, v10, v11, v12, v13, v14, v15, v16);
  if (v17)
  {
LABEL_4:
    v19 = v17;
    if (!cf)
    {
      return v19;
    }

    goto LABEL_7;
  }

  v18 = *(*(CMBaseObjectGetVTable(cf) + 24) + 48);
  if (v18)
  {
    v17 = v18(cf, a4, a5, a6);
    goto LABEL_4;
  }

  v19 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v19;
}

uint64_t figHALDriver_WillDoIOOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_79();
  v17 = driver_CopyDeviceForID(v9, v10, v11, v12, v13, v14, v15, v16);
  if (v17)
  {
LABEL_4:
    v19 = v17;
    if (!cf)
    {
      return v19;
    }

    goto LABEL_7;
  }

  v18 = *(*(CMBaseObjectGetVTable(cf) + 24) + 56);
  if (v18)
  {
    v17 = v18(cf, a4, a5, a6);
    goto LABEL_4;
  }

  v19 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v19;
}

uint64_t figHALDriver_BeginIOOperation()
{
  OUTLINED_FUNCTION_0_79();
  v8 = driver_CopyDeviceForID(v0, v1, v2, v3, v4, v5, v6, v7);
  if (v8)
  {
LABEL_4:
    v11 = v8;
    if (!cf)
    {
      return v11;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable(cf) + 24) + 64))
  {
    v9 = OUTLINED_FUNCTION_3_37();
    v8 = v10(v9);
    goto LABEL_4;
  }

  v11 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v11;
}

uint64_t figHALDriver_EndIOOperation()
{
  OUTLINED_FUNCTION_0_79();
  v8 = driver_CopyDeviceForID(v0, v1, v2, v3, v4, v5, v6, v7);
  if (v8)
  {
LABEL_4:
    v11 = v8;
    if (!cf)
    {
      return v11;
    }

    goto LABEL_7;
  }

  if (*(*(CMBaseObjectGetVTable(cf) + 24) + 72))
  {
    v9 = OUTLINED_FUNCTION_3_37();
    v8 = v10(v9);
    goto LABEL_4;
  }

  v11 = 4294954514;
  if (cf)
  {
LABEL_7:
    CFRelease(cf);
  }

  return v11;
}

size_t driver_CopyObjectForID(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a2)
  {
    v11 = FigHALAudioObjectMapperCopyObjectForID(*(a1 + 12), a2, a3, a4, a5, a6, a7, a8);
    if (v11)
    {
      v12 = v11;
      result = 0;
      *a3 = v12;
    }

    else
    {
      return 560947818;
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBE05uLL, "<<< FigHALPluginDriver >>>", 0x4F, v9, v15, v16, a9);
  }

  return result;
}

size_t figHALDriver_QueryInterface_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE06uLL, "<<< FigHALPluginDriver >>>", 0x8D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figHALDriver_QueryInterface_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x6E6F7065uLL, "<<< FigHALPluginDriver >>>", 0x8A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figHALDriver_DoIOOperation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x21737472uLL, "<<< FigHALPluginDriver >>>", 0x64, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t driver_CopyDeviceForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0x21646576uLL, "<<< FigHALPluginDriver >>>", 0x78, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

__n128 FigTimeRangeSetGetUnion@<Q0>(uint64_t a1@<X8>)
{
  result.n128_u64[0] = OUTLINED_FUNCTION_11_16(&kCMTimeRangeInvalid).n128_u64[0];
  if (v2)
  {
    v4 = v2;
    Count = CFArrayGetCount(*(v2 + 16));
    if (Count >= 1)
    {
      v6 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 16), 0);
      v8 = ValueAtIndex;
      if (v6 == 1)
      {
        result = *ValueAtIndex;
        v14 = ValueAtIndex[2];
        *(a1 + 16) = ValueAtIndex[1];
        *(a1 + 32) = v14;
        *a1 = result;
      }

      else
      {
        v9 = CFArrayGetValueAtIndex(*(v4 + 16), v6 - 1);
        v10 = OUTLINED_FUNCTION_20_11(v9);
        *&v15.start.epoch = v11;
        *&v15.duration.timescale = v12;
        *&v15.start.value = v10;
        CMTimeRangeGetEnd(&end, &v15);
        v13 = *v8;
        v15.start.epoch = *(v8 + 2);
        *&v15.start.value = v13;
        CMTimeRangeFromTimeToTime(a1, &v15.start, &end);
      }
    }
  }

  return result;
}

uint64_t FigTimeRangeSetApplyFunction(uint64_t a1, uint64_t (*a2)(_OWORD *, uint64_t), uint64_t a3)
{
  result = 0;
  if (a1 && a2)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v8 = Count;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v9);
        v11 = OUTLINED_FUNCTION_20_11(ValueAtIndex);
        v14[1] = v12;
        v14[2] = v13;
        v14[0] = v11;
        result = a2(v14, a3);
        if (result)
        {
          break;
        }

        if (v8 == ++v9)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t FigTimeRangeSetRemoveAllTimeRanges(uint64_t a1)
{
  if (a1)
  {
    CFArrayRemoveAllValues(*(a1 + 16));
    OUTLINED_FUNCTION_8_20(&kCMTimeZero);
  }

  return 0;
}

size_t FigTimeRangeSetAddTimeRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  memset(&value, 0, sizeof(value));
  if (!a1)
  {
    OUTLINED_FUNCTION_6_29();
    v19 = 382;
    goto LABEL_6;
  }

  v10 = *(a2 + 12);
  if ((v10 & 1) == 0 || (v11 = *(a2 + 36), (v11 & 1) == 0) || *(a2 + 40) || (*(a2 + 24) & 0x8000000000000000) != 0)
  {
    OUTLINED_FUNCTION_6_29();
    v19 = 383;
LABEL_6:

    return FigSignalErrorAtGM(v12, v13, v14, v15, v19, v16, v17, v18, a9);
  }

  if (((v11 | v10) & 0x10) != 0)
  {
    OUTLINED_FUNCTION_6_29();
    v19 = 384;
    goto LABEL_6;
  }

  if (*(a2 + 16))
  {
    OUTLINED_FUNCTION_6_29();
    v19 = 385;
    goto LABEL_6;
  }

  *&time1.start.value = *(a2 + 24);
  time1.start.epoch = *(a2 + 40);
  OUTLINED_FUNCTION_26_9(&kCMTimeZero);
  if (CMTimeCompare(&time1.start, &time2))
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count)
    {
      v23 = Count;
      v24 = Count - 1;
      v25 = OUTLINED_FUNCTION_19_11();
      ValueAtIndex = CFArrayGetValueAtIndex(v25, v26);
      v28 = OUTLINED_FUNCTION_20_11(ValueAtIndex);
      *&time1.start.epoch = v29;
      *&time1.duration.timescale = v30;
      *&time1.start.value = v28;
      CMTimeRangeGetEnd(&time2, &time1);
      OUTLINED_FUNCTION_30_6();
      v31 = CMTimeCompare(&time1.start, &time2);
      if (v31 < 1)
      {
        v50 = OUTLINED_FUNCTION_0_80();
        if (!timeRangeSet_tryOrderedMergeIntoIndex(v50, v24, ValueAtIndex, v51, 0))
        {
          v52 = CFArrayGetValueAtIndex(*(a1 + 16), 0);
          v53 = *(a2 + 16);
          *&time1.start.value = *a2;
          *&time1.start.epoch = v53;
          *&time1.duration.timescale = *(a2 + 32);
          CMTimeRangeGetEnd(&time2, &time1);
          v54 = *v52;
          time1.start.epoch = *(v52 + 2);
          *&time1.start.value = v54;
          v55 = CMTimeCompare(&time2, &time1.start);
          if (v55 < 0)
          {
            v63 = OUTLINED_FUNCTION_2_40(v55, v56, v57, v58, v59, v60, v61, v62, v107, v114, v118, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, *&time2.value, time2.epoch);
            OUTLINED_FUNCTION_10_16(v63, v64, v65, v66, v67, v68, v69, v70, v71, v109, v112, v116, v120, v72, time1.start.value);
            CFArrayInsertValueAtIndex(*(a1 + 16), 0, a2);
          }

          else
          {
            v73 = OUTLINED_FUNCTION_0_80();
            if (!timeRangeSet_tryOrderedMergeIntoIndex(v73, 0, v52, v74, 1))
            {
              OUTLINED_FUNCTION_30_6();
              OUTLINED_FUNCTION_26_9(&kCMTimePositiveInfinity);
              CMTimeRangeMake(&value, &time1.start, &time2);
              OUTLINED_FUNCTION_7_22();
              v126.location = 0;
              v126.length = v23;
              v77 = CFArrayBSearchValues(v75, v126, &value, v76, 0);
              v78 = v77 - 1;
              if (v77 < 1 || (CFArrayGetValueAtIndex(*(a1 + 16), v78), v99 = OUTLINED_FUNCTION_0_80(), !timeRangeSet_tryOrderedMergeIntoIndex(v99, v78, v100, v101, 0)))
              {
                if (v77 >= v23 || (v102 = OUTLINED_FUNCTION_19_11(), CFArrayGetValueAtIndex(v102, v103), v104 = OUTLINED_FUNCTION_0_80(), !timeRangeSet_tryOrderedMergeIntoIndex(v104, v77, v105, v106, 1)))
                {
                  v79 = OUTLINED_FUNCTION_19_11();
                  CFArrayInsertValueAtIndex(v79, v80, a2);
                  v89 = OUTLINED_FUNCTION_2_40(v81, v82, v83, v84, v85, v86, v87, v88, v107, v114, v118, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, *&time2.value, time2.epoch);
                  OUTLINED_FUNCTION_10_16(v89, v90, v91, v92, v93, v94, v95, v96, v97, v110, v113, v117, v121, v98, time1.start.value);
                }
              }
            }
          }
        }
      }

      else
      {
        v39 = OUTLINED_FUNCTION_2_40(v31, v32, v33, v34, v35, v36, v37, v38, v107, v114, v118, time1.start.value, *&time1.start.timescale, time1.start.epoch, time1.duration.value, *&time1.duration.timescale, time1.duration.epoch, *&time2.value, time2.epoch);
        OUTLINED_FUNCTION_10_16(v39, v40, v41, v42, v43, v44, v45, v46, v47, v108, v111, v115, v119, v48, time1.start.value);
        CFArrayAppendValue(*(a1 + 16), a2);
      }
    }

    else
    {
      CFArrayAppendValue(*(a1 + 16), a2);
      v49 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v49;
    }
  }

  return 0;
}

uint64_t timeRangeSet_tryOrderedMergeIntoIndex(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, int a5)
{
  memset(&v137, 0, sizeof(v137));
  *&lhs.start.value = *(a3 + 24);
  lhs.start.epoch = *(a3 + 5);
  *&rhs.start.value = *(a4 + 24);
  rhs.start.epoch = *(a4 + 40);
  CMTimeAdd(&v137, &lhs.start, &rhs.start);
  v10 = a3[1];
  *&lhs.start.value = *a3;
  *&lhs.start.epoch = v10;
  *&lhs.duration.timescale = a3[2];
  v11 = *(a4 + 16);
  *&otherRange.start.value = *a4;
  *&otherRange.start.epoch = v11;
  *&otherRange.duration.timescale = *(a4 + 32);
  memset(&rhs, 0, sizeof(rhs));
  CMTimeRangeGetUnion(&rhs, &lhs, &otherRange);
  lhs.start = rhs.duration;
  otherRange.start = v137;
  v12 = CMTimeCompare(&lhs.start, &otherRange.start);
  if (v12 > 0)
  {
    return 0;
  }

  if (!a5)
  {
    *&lhs.start.value = *&rhs.start.value;
    lhs.start.epoch = rhs.start.epoch;
    *&otherRange.start.value = *a3;
    otherRange.start.epoch = *(a3 + 2);
    v12 = CMTimeCompare(&lhs.start, &otherRange.start);
    if (v12)
    {
      return 0;
    }
  }

  if (OUTLINED_FUNCTION_13_13(v12, v13, v14, v15, v16, v17, v18, v19, v77, v81, v84, v88, v91, v95, v98, v102, v105, v108, v111, v114, v117, v121, v122, v125, v128, v132, *&otherRange.start.value, otherRange.start.epoch) >= 1)
  {
    v20 = a2 + 1;
    OUTLINED_FUNCTION_17_11();
    otherRange.start.epoch = *(a1 + 40);
    OUTLINED_FUNCTION_1_55();
    CMTimeSubtract(v23, v21, v22);
    OUTLINED_FUNCTION_5_32();
    *(a1 + 40) = v24;
    OUTLINED_FUNCTION_17_11();
    otherRange.start.epoch = v25;
    v118 = *&rhs.duration.value;
    OUTLINED_FUNCTION_1_55();
    CMTimeAdd(v28, v26, v27);
    v29 = OUTLINED_FUNCTION_5_32();
    *(a1 + 40) = v30;
    OUTLINED_FUNCTION_22_10(v31, v32, v33, v34, v35, v36, v37, v38, v29, v78, v82, v85, v89, v92, v96, v99, v103, v106, v109, v112, v115, v118, *(&v118 + 1), v123, v126, v129, v133, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, *&rhs.start.value, *&rhs.start.epoch, v39);
    Count = CFArrayGetCount(*(a1 + 16));
    if (v20 < Count)
    {
      v41 = Count;
      v86 = *&kCMTimeRangeInvalid.start.epoch;
      v93 = *&kCMTimeRangeInvalid.start.value;
      v79 = *&kCMTimeRangeInvalid.duration.timescale;
      v42 = v20;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v42);
        *v119 = *a3;
        *&v119[16] = a3[1];
        v44 = *a3;
        v130 = a3[2];
        *v100 = *ValueAtIndex;
        *&v100[16] = ValueAtIndex[1];
        *&v100[32] = ValueAtIndex[2];
        *&otherRange.start.value = v93;
        *&otherRange.start.epoch = v86;
        *&otherRange.duration.timescale = v79;
        memset(&v142, 0, sizeof(v142));
        *&lhs.start.value = v44;
        *&lhs.start.epoch = *&v119[16];
        *&lhs.duration.timescale = a3[2];
        CMTimeRangeGetEnd(&v142, &lhs);
        memset(&v140, 0, sizeof(v140));
        lhs = *v100;
        CMTimeRangeGetEnd(&v140, &lhs);
        lhs.start = v142;
        time2 = *v100;
        if ((CMTimeCompare(&lhs.start, &time2) & 0x80000000) == 0)
        {
          time2 = v142;
          v138 = v140;
          CMTimeMaximum(&lhs.start, &time2, &v138);
          time2 = *v119;
          CMTimeRangeFromTimeToTime(&otherRange, &time2, &lhs.start);
        }

        rhs = otherRange;
        if ((otherRange.start.flags & 1) == 0 || (rhs.duration.flags & 1) == 0 || rhs.duration.epoch || rhs.duration.value < 0)
        {
          break;
        }

        OUTLINED_FUNCTION_17_11();
        otherRange.start.epoch = *(a1 + 40);
        *v119 = *(ValueAtIndex + 24);
        OUTLINED_FUNCTION_1_55();
        CMTimeSubtract(v47, v45, v46);
        OUTLINED_FUNCTION_5_32();
        *(a1 + 40) = v48;
        v57 = OUTLINED_FUNCTION_13_13(v49, v50, v51, v52, v53, v54, v55, v56, v79, *(&v79 + 1), v86, *(&v86 + 1), v93, *(&v93 + 1), *v100, *&v100[8], *&v100[16], *&v100[24], *&v100[32], *&v100[40], *v119, *&v119[8], *&v119[16], *&v119[24], v130, *(&v130 + 1), *&otherRange.start.value, otherRange.start.epoch);
        if (v57 >= 1)
        {
          OUTLINED_FUNCTION_17_11();
          otherRange.start.epoch = *(a1 + 40);
          OUTLINED_FUNCTION_1_55();
          CMTimeSubtract(v69, v67, v68);
          OUTLINED_FUNCTION_5_32();
          *(a1 + 40) = v70;
          OUTLINED_FUNCTION_17_11();
          otherRange.start.epoch = v71;
          v120 = *&rhs.duration.value;
          OUTLINED_FUNCTION_1_55();
          CMTimeAdd(v74, v72, v73);
          v65 = OUTLINED_FUNCTION_5_32();
          *(a1 + 40) = v75;
        }

        OUTLINED_FUNCTION_22_10(v57, v58, v59, v60, v61, v62, v63, v64, v65, v80, v83, v87, v90, v94, v97, v101, v104, v107, v110, v113, v116, v120, *(&v120 + 1), v124, v127, v131, v134, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, *&rhs.start.value, *&rhs.start.epoch, v66);
        if (v41 == ++v42)
        {
          v42 = v41;
          break;
        }
      }

      if (v42 > v20)
      {
        v143.location = v20;
        v143.length = v42 - v20;
        CFArrayReplaceValues(*(a1 + 16), v143, 0, 0);
      }
    }
  }

  return 1;
}

uint64_t timeRangeSet_TimeRangeComparator(CMTime **a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_18_13(a2[2], *a2, a2[1], v7, v9, *a1);
  if (v4 < 0)
  {
    result = -1;
  }

  else
  {
    result = v4 != 0;
  }

  if (!result)
  {
    v6 = OUTLINED_FUNCTION_18_13(a2[5], a2[3], a2[4], v8, v10, a1[3]);
    if (v6 < 0)
    {
      return -1;
    }

    else
    {
      return v6 != 0;
    }
  }

  return result;
}

size_t FigTimeRangeSetRemoveTimeRangesLessThanTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_6_29();
    v80 = 470;
    goto LABEL_20;
  }

  v9 = *(a2 + 12);
  if ((~v9 & 9) == 0)
  {
    return 0;
  }

  if ((~v9 & 5) == 0)
  {
    CFArrayRemoveAllValues(*(a1 + 16));
    OUTLINED_FUNCTION_8_20(&kCMTimeZero);
    return 0;
  }

  if ((*(a2 + 12) & 0x1D) == 1)
  {
    if (!*(a2 + 16))
    {
      Count = CFArrayGetCount(*(a1 + 16));
      if (Count >= 1)
      {
        v12 = Count;
        v13 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v13);
          OUTLINED_FUNCTION_2_8();
          OUTLINED_FUNCTION_28_9(v15);
          if (CMTimeCompare(&v81.start, &time2) < 1)
          {
            break;
          }

          OUTLINED_FUNCTION_15_15();
          v24 = OUTLINED_FUNCTION_16_11(v16, v17, v18, v19, v20, v21, v22, v23, v81.start.value, *&v81.start.timescale, v81.start.epoch, v81.duration.value, *&v81.duration.timescale, v81.duration.epoch, v82.value, *&v82.timescale, ValueAtIndex[5], v83, time2.value);
          v27 = CMTimeSubtract(v26, v24, v25);
          OUTLINED_FUNCTION_27_9(v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v81.start.value);
          OUTLINED_FUNCTION_29_7();
          CMTimeRangeGetEnd(&time2, &v81);
          OUTLINED_FUNCTION_2_8();
          if (CMTimeCompare(&v81.start, &time2) < 0)
          {
            OUTLINED_FUNCTION_2_8();
            CMTimeConvertScale(&time2, &v81.start, v37, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
            OUTLINED_FUNCTION_29_7();
            End = CMTimeRangeGetEnd(&v82, &v81);
            v46 = OUTLINED_FUNCTION_16_11(End, v39, v40, v41, v42, v43, v44, v45, v81.start.value, *&v81.start.timescale, v81.start.epoch, v81.duration.value, *&v81.duration.timescale, v81.duration.epoch, v82.value, *&v82.timescale, v82.epoch, v83, time2.value);
            CMTimeRangeFromTimeToTime(v48, v46, v47);
            v49 = *&v81.start.value;
            v50 = *&v81.duration.timescale;
            *(ValueAtIndex + 1) = *&v81.start.epoch;
            *(ValueAtIndex + 2) = v50;
            *ValueAtIndex = v49;
            OUTLINED_FUNCTION_15_15();
            v59 = OUTLINED_FUNCTION_16_11(v51, v52, v53, v54, v55, v56, v57, v58, v81.start.value, *&v81.start.timescale, v81.start.epoch, v81.duration.value, *&v81.duration.timescale, v81.duration.epoch, v82.value, *&v82.timescale, ValueAtIndex[5], v83, time2.value);
            v62 = CMTimeAdd(v61, v59, v60);
            OUTLINED_FUNCTION_27_9(v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v81.start.value);
            break;
          }

          if (v12 == ++v13)
          {
            v13 = v12;
            goto LABEL_14;
          }
        }

        if (!v13)
        {
          return 0;
        }

LABEL_14:
        v86.location = 0;
        v86.length = v13;
        CFArrayReplaceValues(*(a1 + 16), v86, 0, 0);
      }

      return 0;
    }

    OUTLINED_FUNCTION_6_29();
    v80 = 474;
  }

  else
  {
    OUTLINED_FUNCTION_6_29();
    v80 = 473;
  }

LABEL_20:

  return FigSignalErrorAtGM(v73, v74, v75, v76, v80, v77, v78, v79, a9);
}

size_t FigTimeRangeSetRemoveTimeRangesGreaterThanOrEqualToTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_6_29();
    v64 = 513;
    goto LABEL_18;
  }

  v9 = *(a2 + 12);
  if ((~v9 & 5) == 0)
  {
    return 0;
  }

  if ((~v9 & 9) == 0)
  {
    CFArrayRemoveAllValues(*(a1 + 16));
    OUTLINED_FUNCTION_8_20(&kCMTimeZero);
    return 0;
  }

  if ((*(a2 + 12) & 0x1D) == 1)
  {
    if (!*(a2 + 16))
    {
      Count = CFArrayGetCount(*(a1 + 16));
      v12 = 0;
      v13 = Count;
      while (1)
      {
        v14 = v13;
        v15 = v12;
        if (v13-- < 1)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v13);
        v18 = OUTLINED_FUNCTION_20_11(ValueAtIndex);
        *&range.start.epoch = v19;
        *&range.duration.timescale = v20;
        *&range.start.value = v18;
        CMTimeRangeGetEnd(&time2, &range);
        OUTLINED_FUNCTION_9_17();
        if ((CMTimeCompare(&range.start, &time2) & 0x80000000) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_14_14();
        v21 = OUTLINED_FUNCTION_24_10();
        v24 = CMTimeSubtract(v23, v21, v22);
        OUTLINED_FUNCTION_23_10(v24, v25, v26, v27, v28, v29, v30, v31, v32, v65, v66.value, *&v66.timescale, v66.epoch, start.value, *&start.timescale, start.epoch, v68, v33, range.start.value);
        OUTLINED_FUNCTION_9_17();
        v34 = *ValueAtIndex;
        time2.epoch = ValueAtIndex[2];
        *&time2.value = v34;
        v35 = CMTimeCompare(&range.start, &time2);
        v12 = v15 + 1;
        if (v35 >= 1)
        {
          v36 = *ValueAtIndex;
          v37 = *(ValueAtIndex + 2);
          *&range.start.epoch = *(ValueAtIndex + 1);
          *&range.duration.timescale = v37;
          *&range.start.value = v36;
          CMTimeRangeGetEnd(&v66, &range);
          OUTLINED_FUNCTION_9_17();
          CMTimeConvertScale(&time2, &range.start, v38, kCMTimeRoundingMethod_RoundTowardPositiveInfinity);
          v39 = *ValueAtIndex;
          start.epoch = ValueAtIndex[2];
          *&start.value = v39;
          CMTimeRangeFromTimeToTime(&range, &start, &time2);
          v40 = *&range.start.value;
          v41 = *&range.duration.timescale;
          *(ValueAtIndex + 1) = *&range.start.epoch;
          *(ValueAtIndex + 2) = v41;
          *ValueAtIndex = v40;
          OUTLINED_FUNCTION_14_14();
          v42 = OUTLINED_FUNCTION_24_10();
          v45 = CMTimeAdd(v44, v42, v43);
          OUTLINED_FUNCTION_23_10(v45, v46, v47, v48, v49, v50, v51, v52, v53, v65, v66.value, *&v66.timescale, v66.epoch, start.value, *&start.timescale, start.epoch, v68, v54, range.start.value);
          break;
        }
      }

      if (Count > v14)
      {
        v55 = OUTLINED_FUNCTION_19_11();
        v72.length = v15;
        CFArrayReplaceValues(v55, v72, 0, 0);
      }

      return 0;
    }

    OUTLINED_FUNCTION_6_29();
    v64 = 517;
  }

  else
  {
    OUTLINED_FUNCTION_6_29();
    v64 = 516;
  }

LABEL_18:

  return FigSignalErrorAtGM(v57, v58, v59, v60, v64, v61, v62, v63, a9);
}

double FigTimeRangeSetGetEarliestTimeRange()
{
  *&result = OUTLINED_FUNCTION_11_16(&kCMTimeRangeInvalid).n128_u64[0];
  if (v0)
  {
    v2 = v0;
    if (CFArrayGetCount(*(v0 + 16)) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 16), 0);
      *&result = OUTLINED_FUNCTION_21_12(ValueAtIndex).n128_u64[0];
    }
  }

  return result;
}

double FigTimeRangeSetGetLatestTimeRange()
{
  *&result = OUTLINED_FUNCTION_11_16(&kCMTimeRangeInvalid).n128_u64[0];
  if (v0)
  {
    v2 = v0;
    Count = CFArrayGetCount(*(v0 + 16));
    if (Count >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 16), Count - 1);
      *&result = OUTLINED_FUNCTION_21_12(ValueAtIndex).n128_u64[0];
    }
  }

  return result;
}

uint64_t FigTimeRangeSetContainsTimeRange(uint64_t result, uint64_t a2)
{
  memset(&value, 0, sizeof(value));
  if (result)
  {
    v3 = *(a2 + 12);
    if ((v3 & 1) == 0)
    {
      return 0;
    }

    v4 = *(a2 + 36);
    if ((v4 & 1) == 0 || *(a2 + 40))
    {
      return 0;
    }

    v5 = result;
    result = 0;
    if (((v4 | v3) & 0x10) == 0 && (*(a2 + 24) & 0x8000000000000000) == 0)
    {
      if (*(a2 + 16))
      {
        return 0;
      }

      Count = CFArrayGetCount(*(v5 + 16));
      if (Count < 1)
      {
        return 0;
      }

      v7 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 16), 0);
      OUTLINED_FUNCTION_28_9(ValueAtIndex);
      *time2 = *a2;
      *&time2[16] = *(a2 + 16);
      v9 = CMTimeCompare(&time1.start, time2);
      if (v9 > 0)
      {
        return 0;
      }

      result = OUTLINED_FUNCTION_4_31(v9, v10, v11, v12, v13, v14, v17, ValueAtIndex[1], ValueAtIndex[2], *ValueAtIndex, v15, v16, v18, v19, v20, v55, v58.value, *&v58.timescale, v58.epoch, *time2, *&time2[16], v60, v21, *&time1.start.value, *&time1.start.epoch);
      if (result)
      {
        return result;
      }

      if (v7 == 1)
      {
        return 0;
      }

      v22 = CFArrayGetValueAtIndex(*(v5 + 16), v7 - 1);
      v23 = *(a2 + 16);
      *&time1.start.value = *a2;
      *&time1.start.epoch = v23;
      *&time1.duration.timescale = *(a2 + 32);
      CMTimeRangeGetEnd(time2, &time1);
      v24 = *v22;
      v25 = v22[2];
      *&time1.start.epoch = v22[1];
      *&time1.duration.timescale = v25;
      *&time1.start.value = v24;
      CMTimeRangeGetEnd(&v58, &time1);
      v26 = CMTimeCompare(time2, &v58);
      if (v26 > 0)
      {
        return 0;
      }

      result = OUTLINED_FUNCTION_4_31(v26, v27, v28, v29, v30, v31, v34, v22[1], v22[2], *v22, v32, v33, v35, v36, v37, v56, v58.value, *&v58.timescale, v58.epoch, *time2, *&time2[16], v60, v38, *&time1.start.value, *&time1.start.epoch);
      if (!result)
      {
        if (v7 >= 3)
        {
          *&time1.start.value = *a2;
          time1.start.epoch = *(a2 + 16);
          *time2 = *&kCMTimePositiveInfinity.value;
          *&time2[16] = 0;
          CMTimeRangeMake(&value, &time1.start, time2);
          OUTLINED_FUNCTION_7_22();
          v63.location = 0;
          v63.length = v7;
          v41 = CFArrayBSearchValues(v39, v63, &value, v40, 0);
          if (v41 >= 1)
          {
            v42 = CFArrayGetValueAtIndex(*(v5 + 16), v41 - 1);
            return OUTLINED_FUNCTION_4_31(v42, v43, v44, v45, v46, v47, v50, v42[1], v42[2], *v42, v48, v49, v51, v52, v53, v57, v58.value, *&v58.timescale, v58.epoch, *time2, *&time2[16], v60, v54, *&time1.start.value, *&time1.start.epoch);
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t FigTimeRangeSetContainsTime(uint64_t a1, CMTime *a2)
{
  start = *a2;
  *&v4.value = *&kCMTimeZero.value;
  v4.epoch = 0;
  CMTimeRangeMake(&v6, &start, &v4);
  return FigTimeRangeSetContainsTimeRange(a1, &v6);
}

uint64_t timeRangeSet_IsEqual(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_25_8(a1);
  if (OUTLINED_FUNCTION_18_13(v4[5], v4[3], v4[4], v6, v7, v8))
  {
    return 0;
  }

  else
  {
    return CFEqual(*(a1 + 16), *(a2 + 16));
  }
}

CFStringRef timeRangeSet_CopyFormattingDesc(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  OUTLINED_FUNCTION_25_8(a1);
  v3 = CMTimeCopyDescription(v2, &time);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFGetAllocator(a1);
  v6 = CFStringCreateWithFormat(v2, 0, @"<FigTimeRangeSet %p [%p]>{ timeRanges = %@, duration = %@ }", a1, v5, a1[2], v4);
  CFRelease(v4);
  return v6;
}

__n128 timeRangeSet_TimeRangeRetain(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8D7200](a1, 48, 0x1000040EED21634, 0);
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 32);
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 32) = v5;
    *v3 = result;
  }

  return result;
}

void FigTimeRangeSetCreateMutable_cold_2(const void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBB04uLL, "(Fig)", 0x5E, v8, a7, a8, v10);

  CFRelease(a1);
}

size_t FigTimeRangeSetCreateMutable_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFBB04uLL, "(Fig)", 0x5A, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigTimeRangeSetCreateMutable_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_6_29();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x57, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 4294901760;
  }
}

size_t FigEndpointStreamAudioFormatDescriptionCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE0EuLL, "(Fig)", 0x51, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigEndpointStreamAudioFormatDescriptionCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x4E, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigEndpointStreamAudioFormatDescriptionCreate_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x4D, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB3, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB4, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB2, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t FigEndpointRemoteControlSessionXPCRemotePing()
{
  v5 = 0;
  v0 = remoteXPCEndpointRemoteControlSessionClient_EnsureClientEstablished();
  if (v0)
  {
    v3 = v0;
    v2 = 0;
  }

  else
  {
    v1 = FigXPCCreateBasicMessage(0x2E706E67u, 0, &v5);
    v2 = v5;
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessage(gFigEndpointRemoteControlSessionRemoteClient, v5);
      v2 = v5;
    }
  }

  FigXPCRelease(v2);
  return v3;
}

uint64_t FigEndpointRemoteControlSessionXPCRemoteCreateWithObjectID(CMBlockBufferRef *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a1)
  {
    if (a2)
    {
      result = remoteXPCEndpointRemoteControlSessionClient_EnsureClientEstablished();
      if (!result)
      {

        return remoteXPCEndpointRemoteControlSession_CreateInternal(a1, a2);
      }

      return result;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v16 = 743;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v16 = 741;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFCE14uLL, "<< FigEndpointRemoteControlSessionXPCRemote >>", v16, v13, v14, v15, a9);
}

size_t remoteXPCEndpointRemoteControlSession_CreateInternal(CMBlockBufferRef *a1, void *a2)
{
  v26 = 0;
  v5 = *MEMORY[0x1E695E480];
  ClassID = FigEndpointRemoteControlSessionGetClassID(a1, a2);
  result = CMDerivedObjectCreate(v5, kFigEndpointRemoteControlSessionRemoteXPC_EndpointRemoteControlSessionVTable, ClassID, &v26, v7, v8, v9, v10, v25.version);
  if (!result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(v26);
    DerivedStorage[1] = a1;
    DerivedStorage[6] = 1;
    v25.version = 0;
    v25.retain = remoteXPCEndpointRemoteControlSession_cloneCompletionCallback;
    v25.release = remoteXPCEndpointRemoteControlSession_freeCompletionCallback;
    v25.copyDescription = 0;
    v25.equal = 0;
    v13 = CFDictionaryCreateMutable(v5, 0, 0, &v25);
    DerivedStorage[3] = v13;
    if (v13)
    {
      v14 = dispatch_queue_create("com.apple.coremedia.endpointremotecontrolsession.callbacks", 0);
      DerivedStorage[2] = v14;
      if (v14)
      {
        FigXPCRemoteClientAssociateObject(gFigEndpointRemoteControlSessionRemoteClient, v26, a1, v15, v16, v17, v18, v19, v25.version);
        result = 0;
        goto LABEL_5;
      }

      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v23 = v2;
      v24 = 704;
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v23 = v2;
      v24 = 701;
    }

    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBBE9uLL, "<< FigEndpointRemoteControlSessionXPCRemote >>", v24, v23, v21, v22, v25.version);
  }

LABEL_5:
  *a2 = v26;
  return result;
}

uint64_t remoteXPCEndpointRemoteControlSessionClient_HandleClientMessage(uint64_t a1, void *a2)
{
  v12 = 0;
  result = FigXPCMessageGetOpCode(a2, &v12);
  if (!result)
  {
    if (v12 == 1701340002)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
      v30 = 0;
      v31 = 0;
      v13 = 0;
      v14 = &v13;
      v15 = 0x2000000000;
      v16 = 0;
      v26 = 0;
      v27 = &v26;
      v28 = 0x2000000000;
      v29 = 0;
      v10 = *(DerivedStorage + 16);
      block = MEMORY[0x1E69E9820];
      v20 = 0x40000000;
      v21 = __remoteXPCEndpointRemoteControlSessionClient_eventHandlerCallback_block_invoke;
      v22 = &unk_1E74A58F0;
      v24 = &v26;
      v25 = DerivedStorage;
      v23 = &v13;
      dispatch_sync(v10, &block);
      if (v27[3])
      {
        FigXPCMessageCopyCFString(a2, "EventType", &v31);
        FigXPCMessageCopyCFData(a2, "EventPayload", &v30);
        if (v14[3])
        {
          (v27[3])(a1, v31, v30);
        }
      }

      v11 = v14[3];
      if (v11)
      {
        CFRelease(v11);
      }

      if (v31)
      {
        CFRelease(v31);
      }

      if (v30)
      {
        CFRelease(v30);
      }

      _Block_object_dispose(&v26, 8);
      goto LABEL_17;
    }

    if (v12 == 1667329122)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3000000000;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v5 = CMBaseObjectGetDerivedStorage(a1);
      uint64 = xpc_dictionary_get_uint64(a2, "CompletionID");
      v7 = *(v5 + 16);
      block = MEMORY[0x1E69E9820];
      v20 = 0x40000000;
      v21 = __remoteXPCEndpointRemoteControlSessionClient_handleCompletionCallback_block_invoke;
      v22 = &unk_1E74A58C8;
      v24 = v5;
      v25 = uint64;
      v23 = &v13;
      dispatch_sync(v7, &block);
      if (v14[3] == 1936614509)
      {
        v26 = 0;
        int64 = xpc_dictionary_get_int64(a2, "ResponseStatus");
        FigXPCMessageCopyCFObject(a2, "ResponseParams", &v26);
        (v14[5])(int64, v26, v14[4]);
        if (v26)
        {
          CFRelease(v26);
        }
      }

LABEL_17:
      _Block_object_dispose(&v13, 8);
      return 0;
    }

    return 4294951138;
  }

  return result;
}

void FigEndpointRemoteControlSessionRemoteXPC_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v3 = CMBaseObjectGetDerivedStorage(a1);
  v10 = v3;
  v17 = 0;
  if (!*v3)
  {
    v11 = *(v3 + 8);
    *v3 = 1;
    FigXPCRemoteClientDisassociateObject(gFigEndpointRemoteControlSessionRemoteClient, v11, v4, v5, v6, v7, v8, v9, v16);
    if (!*(v10 + 1) && !FigXPCCreateBasicMessage(0x646F6F6Du, v11, &v17))
    {
      FigXPCRemoteClientSendSyncMessage(gFigEndpointRemoteControlSessionRemoteClient, v17);
    }
  }

  v12 = *(v10 + 24);
  if (v12)
  {
    CFRelease(v12);
    *(v10 + 24) = 0;
  }

  FigXPCRelease(v17);
  v13 = *(DerivedStorage + 16);
  if (v13)
  {
    dispatch_release(v13);
  }

  v15 = *(DerivedStorage + 40);
  v14 = (DerivedStorage + 40);
  if (v15)
  {
    FigCFWeakReferenceDestroy(v14);
    *v14 = 0;
  }
}

uint64_t FigEndpointRemoteControlSessionRemoteXPC_SendMessage(uint64_t a1, const void *a2, void (*a3)(uint64_t, void, uint64_t), uint64_t a4)
{
  v17 = 0;
  *v18 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (a2 && !remoteXPCEndpointRemoteControlSession_GetObjectID(a1, &v17) && !FigXPCCreateBasicMessage(0x736E646Du, v17, v18))
  {
    FigXPCMessageSetCFData(*v18, "Params", a2);
  }

  if (a3)
  {
    v15 = a4;
    v16 = a3;
    v14 = 1936614509;
  }

  v8 = *v18;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v10 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigEndpointRemoteControlSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke;
  block[3] = &unk_1E74A5918;
  block[4] = &v25;
  block[5] = a1;
  block[6] = DerivedStorage;
  block[7] = &v14;
  dispatch_sync(v10, block);
  if (v8)
  {
    xpc_dictionary_set_uint64(v8, "CompletionID", v26[3]);
    v11 = FigXPCRemoteClientSendSyncMessage(gFigEndpointRemoteControlSessionRemoteClient, v8);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = 4294949866;
  }

  v12 = *(DerivedStorage + 16);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = __FigEndpointRemoteControlSessionRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke_2;
  v19[3] = &unk_1E74A5940;
  v19[5] = &v21;
  v19[6] = DerivedStorage;
  v19[4] = &v25;
  dispatch_sync(v12, v19);
  if (*(v22 + 24) && v14 == 1936614509)
  {
    v16(v11, 0, v15);
  }

LABEL_13:
  FigXPCRemoteClientKillServerOnTimeout();
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  FigXPCRelease(*v18);
  return v11;
}

uint64_t FigEndpointRemoteControlSessionRemoteXPC_SetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  ObjectID = remoteXPCEndpointRemoteControlSession_GetObjectID(a1, &v13);
  if (!ObjectID)
  {
    if (a2)
    {
      v7 = 1936029288;
    }

    else
    {
      v7 = 1667593832;
    }

    ObjectID = FigXPCCreateBasicMessage(v7, v13, &v14);
    if (!ObjectID)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
      v9 = *(DerivedStorage + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __FigEndpointRemoteControlSessionRemoteXPC_SetEventHandler_block_invoke;
      block[3] = &__block_descriptor_tmp_14_6;
      block[4] = DerivedStorage;
      block[5] = a2;
      block[6] = a3;
      dispatch_sync(v9, block);
      ObjectID = FigXPCRemoteClientSendSyncMessage(gFigEndpointRemoteControlSessionRemoteClient, v14);
    }
  }

  v10 = ObjectID;
  FigXPCRelease(v14);
  return v10;
}

uint64_t FigEndpointRemoteControlSessionRemoteXPC_TeardownSession(uint64_t a1)
{
  v6 = 0;
  v7 = 0;
  ObjectID = remoteXPCEndpointRemoteControlSession_GetObjectID(a1, &v6);
  if (ObjectID)
  {
    v4 = ObjectID;
    v3 = 0;
  }

  else
  {
    v2 = FigXPCCreateBasicMessage(0x7472646Eu, v6, &v7);
    v3 = v7;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage(gFigEndpointRemoteControlSessionRemoteClient, v7);
      v3 = v7;
    }
  }

  FigXPCRelease(v3);
  return v4;
}

uint64_t FigEndpointRemoteControlSessionRemoteXPC_Start(uint64_t a1)
{
  v6 = 0;
  v7 = 0;
  ObjectID = remoteXPCEndpointRemoteControlSession_GetObjectID(a1, &v6);
  if (ObjectID)
  {
    v4 = ObjectID;
    v3 = 0;
  }

  else
  {
    v2 = FigXPCCreateBasicMessage(0x73747274u, v6, &v7);
    v3 = v7;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage(gFigEndpointRemoteControlSessionRemoteClient, v7);
      v3 = v7;
    }
  }

  FigXPCRelease(v3);
  return v4;
}

size_t remoteXPCEndpointRemoteControlSession_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0FuLL, "<< FigEndpointRemoteControlSessionXPCRemote >>", 0xD9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t remoteXPCEndpointRemoteControlSession_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBEAEuLL, "<< FigEndpointRemoteControlSessionXPCRemote >>", 0xDA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t tcp_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!*DerivedStorage)
  {
    v2 = DerivedStorage;
    *DerivedStorage = 1;
    v3 = *(DerivedStorage + 64);
    if (v3)
    {
      dispatch_release(v3);
      *(v2 + 64) = 0;
    }

    v4 = *(v2 + 56);
    if (v4)
    {
      _Block_release(v4);
      *(v2 + 56) = 0;
    }
  }

  return 0;
}

void tcp_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  tcp_Invalidate(a1);
  tcp_CleanupFileDescriptors(a1);
  v3 = DerivedStorage[1];
  if (v3)
  {
    dispatch_release(v3);
    DerivedStorage[1] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    dispatch_release(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[3] = 0;
  }

  v6 = DerivedStorage[4];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[4] = 0;
  }

  v7 = DerivedStorage[8];
  if (v7)
  {
    dispatch_release(v7);
    DerivedStorage[8] = 0;
  }

  v8 = DerivedStorage[7];
  if (v8)
  {
    _Block_release(v8);
    DerivedStorage[7] = 0;
  }

  v9 = DerivedStorage[9];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[9] = 0;
  }

  v10 = DerivedStorage[10];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[10] = 0;
  }
}

uint64_t tcp_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, @"ConnectionMode"))
  {
    v8 = v7[3];
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (CFEqual(a2, @"IPAddress"))
  {
    v8 = v7[4];
    if (v8)
    {
LABEL_7:
      v8 = CFRetain(v8);
    }
  }

  else
  {
    if (!CFEqual(a2, @"Version"))
    {
      return 4294954512;
    }

    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v7 + 44);
  }

LABEL_8:
  v9 = 0;
  *a4 = v8;
  return v9;
}

uint64_t tcp_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"ConnectionMode"))
  {
    v7 = v6[3];
    v6[3] = a3;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"IPAddress"))
  {
    v7 = v6[4];
    v6[4] = a3;
    if (!a3)
    {
LABEL_5:
      if (v7)
      {
        CFRelease(v7);
        return 0;
      }

      return v7;
    }

LABEL_4:
    CFRetain(a3);
    goto LABEL_5;
  }

  if (CFEqual(a2, @"Port"))
  {
    CFNumberGetValue(a3, kCFNumberSInt32Type, v6 + 5);
    return 0;
  }

  if (!CFEqual(a2, @"Version"))
  {
    return 4294954512;
  }

  if (!a3)
  {
    return 4294954516;
  }

  v9 = CFGetTypeID(a3);
  v7 = 4294954516;
  if (v9 == CFNumberGetTypeID())
  {
    if (CFNumberGetValue(a3, kCFNumberSInt32Type, v6 + 44))
    {
      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  return v7;
}

uint64_t tcp_SetEventHandler(uint64_t a1, NSObject *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v6 = DerivedStorage;
  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    dispatch_release(v7);
    *(v6 + 64) = 0;
  }

  if (a2)
  {
    *(v6 + 64) = a2;
    dispatch_retain(a2);
  }

  else
  {
    *(v6 + 64) = FigDispatchQueueCreateWithPriority("FigTransportConnectionEvent", 0, 28);
  }

  v8 = *(v6 + 56);
  if (v8)
  {
    _Block_release(v8);
    *(v6 + 56) = 0;
  }

  if (!a3)
  {
    return 0;
  }

  v9 = _Block_copy(a3);
  result = 0;
  *(v6 + 56) = v9;
  return result;
}

uint64_t tcp_Stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v3 = *(DerivedStorage + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __tcp_Stop_block_invoke;
  v5[3] = &__block_descriptor_tmp_32;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v3, v5);
  return 0;
}

size_t tcp_EnqueuePackageWithPriority(const void *a1, unsigned int *a2, OpaqueCMBlockBuffer *a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v9 = *a2;
  DataLength = CMBlockBufferGetDataLength(a3);
  if (*DerivedStorage)
  {
    v12 = 4294955241;
    goto LABEL_11;
  }

  if (a2[1] == 1885957735)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v20 = 4294955246;
    v21 = 965;
LABEL_20:
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v20, "<<< transporttcp >>>", v21, v17, v18, v19, blockBufferOut);
    goto LABEL_11;
  }

  if (!*(DerivedStorage + 121))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v20 = 4294955244;
    v21 = 966;
    goto LABEL_20;
  }

  if ((a4 - 3) <= 0xFFFFFFFD)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v20 = 4294955246;
    v21 = 967;
    goto LABEL_20;
  }

  v11 = v9 - DataLength;
  if (v11 <= 7)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v20 = 4294955246;
    v21 = 968;
    goto LABEL_20;
  }

  destinationBuffer = 0;
  if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, v11, *MEMORY[0x1E695E488], 0, 0, v11, 1u, &destinationBuffer) || CMBlockBufferReplaceDataBytes(a2, destinationBuffer, 0, v11) || a3 && CMBlockBufferAppendBufferReference(destinationBuffer, a3, 0, 0, 0))
  {
    if (destinationBuffer)
    {
      CFRelease(destinationBuffer);
    }

    v12 = 4294955245;
  }

  else
  {
    v14 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    v14[1] = destinationBuffer;
    CFRetain(a1);
    v15 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __tcp_EnqueuePackageWithPriority_block_invoke;
    block[3] = &__block_descriptor_tmp_33_2;
    block[4] = v14;
    block[5] = DerivedStorage;
    v24 = a4;
    block[6] = a1;
    dispatch_async(v15, block);
    v12 = 0;
  }

LABEL_11:
  tcp_destroyPackageRecord(0);
  return v12;
}

uint64_t tcp_FlushPendingPackagesWithPriority(uint64_t a1, int a2)
{
  if (*CMBaseObjectGetDerivedStorage(a1))
  {
    return 4294955241;
  }

  tcp_sendDataToSocket(a1, a2);
  return 0;
}

void tcp_sendAndReceiveData(const void *a1)
{
  v27[8] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  CFRetain(a1);
  v3 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __tcp_sendAndReceiveData_block_invoke;
  block[3] = &__block_descriptor_tmp_22_2;
  block[4] = DerivedStorage;
  block[5] = a1;
  dispatch_async(v3, block);
  v4 = (DerivedStorage + 96);
  if (!fcntl(*(DerivedStorage + 96), 4, 4) && !fcntl(*(DerivedStorage + 104), 4, 4))
  {
    *(DerivedStorage + 100) = 5;
    *(DerivedStorage + 108) = 1;
    while (!*(DerivedStorage + 120))
    {
      if (poll(v4, 2u, -1) < 0)
      {
        break;
      }

      if ((*(DerivedStorage + 110) & 0x19) != 0)
      {
          ;
        }

        if (*(DerivedStorage + 120))
        {
          break;
        }
      }

      v6 = *(DerivedStorage + 102);
      if ((v6 & 0x18) != 0)
      {
        break;
      }

      if (v6)
      {
        v7 = CMBaseObjectGetDerivedStorage(a1);
        v23 = 0;
        v24 = &v23;
        v25 = 0x2000000000;
        v26 = 1;
        v8 = MEMORY[0x1E69E9820];
        do
        {
          v19 = 0;
          v20 = &v19;
          v21 = 0x2000000000;
          v22 = 0;
          v9 = *(v7 + 16);
          v18[0] = v8;
          v18[1] = 0x40000000;
          v18[2] = __tcp_readDataFromSocket_block_invoke;
          v18[3] = &unk_1E74A5A60;
          v18[5] = &v19;
          v18[6] = a1;
          v18[4] = &v23;
          dispatch_sync(v9, v18);
          v10 = v20[3];
          if (v10)
          {
            v11 = CMBaseObjectGetDerivedStorage(a1);
            if (*(v11 + 56))
            {
              v12 = v11;
              CFRetain(v10);
              CFRetain(a1);
              v13 = *(v12 + 64);
              v27[0] = MEMORY[0x1E69E9820];
              v27[1] = 0x40000000;
              v27[2] = __tcp_didReceivePackage_block_invoke;
              v27[3] = &__block_descriptor_tmp_27_2;
              v27[4] = v12;
              v27[5] = v10;
              v27[6] = a1;
              dispatch_async(v13, v27);
            }

            CFRelease(v20[3]);
          }

          _Block_object_dispose(&v19, 8);
        }

        while (*(v24 + 24));
        _Block_object_dispose(&v23, 8);
        v6 = *(DerivedStorage + 102);
        v4 = (DerivedStorage + 96);
      }

      if ((v6 & 4) != 0)
      {
        tcp_sendDataToSocket(a1, 0);
      }

      v14 = *(DerivedStorage + 16);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = __tcp_sendAndReceiveData_block_invoke_3;
      v16[3] = &__block_descriptor_tmp_23_2;
      v16[4] = DerivedStorage;
      dispatch_sync(v14, v16);
    }
  }

  CFRetain(a1);
  v5 = *(DerivedStorage + 16);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = __tcp_sendAndReceiveData_block_invoke_4;
  v15[3] = &__block_descriptor_tmp_25_3;
  v15[4] = DerivedStorage;
  v15[5] = a1;
  dispatch_async(v5, v15);
}

size_t FigTransportConnectionTCPCreate_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFD0EEuLL, "<<< transporttcp >>>", 0x412, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

dispatch_queue_t FigDispatchQueueCreateTargetingWorkloopWithPriority(const char *a1, NSObject *a2, unsigned int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x100uLL);
  if (a1)
  {
    snprintf(__str, 0x100uLL, "%s.workloop(%d)");
  }

  else
  {
    snprintf(__str, 0x100uLL, "com.apple.coremedia.unknown.workloop(%d)");
  }

  WorkloopWithPriority = FigDispatchCreateWorkloopWithPriority(__str, a3);
  if (!WorkloopWithPriority)
  {
    return 0;
  }

  v7 = WorkloopWithPriority;
  v8 = dispatch_queue_create_with_target_V2(a1, a2, WorkloopWithPriority);
  if (gGMFigKTraceEnabled == 1)
  {
    FigThreadGetMachThreadPriorityValue(a3);
    kdebug_trace();
  }

  dispatch_release(v7);
  return v8;
}

dispatch_queue_t FigDispatchQueueCreateWithPriorityAndClientPID(const char *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  QualityOfServiceClassForFigThreadPriority = FigGetQualityOfServiceClassForFigThreadPriority(a3);
  v9 = dispatch_queue_attr_make_with_qos_class(a2, QualityOfServiceClassForFigThreadPriority, 0);
  if (a4)
  {
    v10 = dispatch_queue_create(a1, v9);
    if (v10)
    {
      v11 = figDispatch_copyRootQueueWithPriorityAndClientPID(a3, a4);
      if (v11)
      {
        v12 = v11;
        dispatch_set_target_queue(v10, v11);
        dispatch_release(v12);
      }
    }

    return v10;
  }

  else
  {

    return FigDispatchQueueCreateWithPriority(a1, v9, a3);
  }
}

uint64_t figDispatch_createRootQueueWithMachPriority(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(&v10, 0, sizeof(v10));
  v9 = 0;
  if (pthread_attr_init(&v10))
  {
    return 0;
  }

  if (a3)
  {
    global_queue = dispatch_get_global_queue(a3, 0);
  }

  else
  {
    pthread_attr_setschedpolicy(&v10, 4);
    if (pthread_attr_getschedparam(&v10, &v9) || (v9.sched_priority = a2, pthread_attr_setschedparam(&v10, &v9)))
    {
      v7 = 0;
      goto LABEL_8;
    }

    global_queue = dispatch_pthread_root_queue_create();
  }

  v7 = global_queue;
LABEL_8:
  pthread_attr_destroy(&v10);
  return v7;
}

uint64_t __figDispatch_copyRootQueueWithPriorityAndClientPID_block_invoke_2(uint64_t a1)
{
  v2 = pthread_self();
  v3 = pthread_mach_thread_np(v2);
  figSetMachThreadPriority(v3, *(a1 + 32));
  v4 = pthread_self();
  v6 = 0;
  result = pthread_threadid_np(v4, &v6);
  if (!result)
  {
    return proc_pidbind();
  }

  return result;
}

dispatch_queue_global_t __figDispatch_getSharedPerMachPriorityRootQueueWithPriority_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x40uLL, "com.apple.coremedia.sharedRootQueue.%02d", *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 36);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __figDispatch_getSharedPerMachPriorityRootQueueWithPriority_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_19_5;
  v6 = v2;
  result = figDispatch_createRootQueueWithMachPriority(__str, v2, v3, v5);
  sRootQueuesIndexedByMachPriority[2 * *(a1 + 32) + 1] = result;
  return result;
}

size_t FigDispatchQueueCreateStandardDispatchQueue_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE0EuLL, "(Fig)", 0x416, v10, v11, v12, a9);
}

size_t FigDispatchQueueSetPriorityAndClientPID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "(Fig)", 0x46D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigDispatchQueueSetPriorityAndClientPID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "(Fig)", 0x476, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigDispatchQueueSetPriorityAndClientPID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "(Fig)", 0x459, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigDispatchSyncCopyPropertyImplementation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "(Fig)", 0x4C2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigDispatchAsyncSetPropertyImplementation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "(Fig)", 0x4DE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigDispatchAsyncSetPropertyImplementation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "(Fig)", 0x4DB, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigDispatchQueueHolderCreateWithDispatchQueue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "(Fig)", 0x59A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigDispatchQueueHolderCreateWithDispatchQueue_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "(Fig)", 0x597, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigDispatchQueueHolderCreateWithDispatchQueue_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "(Fig)", 0x596, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figSetMachThreadPriority_cold_1(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "(Fig)", 0x15B, v3, v4, v5, v7);
}

size_t figSetMachThreadPriority_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFFFFFuLL, "(Fig)", 0x156, v1, v2, v3, v5);
}

dispatch_queue_global_t __figDispatch_getRootQueueWithPriority_block_invoke_cold_1(unsigned int a1, unsigned int *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  QualityOfServiceClassForFigThreadPriority = FigGetQualityOfServiceClassForFigThreadPriority(a1);
  MachThreadPriorityValue = FigThreadGetMachThreadPriorityValue(a1);
  snprintf(__str, 0x40uLL, "com.apple.coremedia.rootQueue.fP-%02d.mP-%02d", *a2, MachThreadPriorityValue);
  *a3 = MEMORY[0x1E69E9820];
  *(a3 + 8) = 0x40000000;
  *(a3 + 16) = __figDispatch_getRootQueueWithPriority_block_invoke_2;
  *(a3 + 24) = &__block_descriptor_tmp_16_3;
  *(a3 + 32) = MachThreadPriorityValue;
  result = figDispatch_createRootQueueWithMachPriority(__str, MachThreadPriorityValue, QualityOfServiceClassForFigThreadPriority, a3);
  sRootQueuesIndexedByFigThreadPriority[2 * *a2 + 1] = result;
  return result;
}

size_t FigProcessStateMonitorGetServerPurgeState(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  FigReentrantMutexLock(qword_1ED4CDA20);
  v11 = qword_1ED4CDA28;
  FigReentrantMutexUnlock(qword_1ED4CDA20);
  if (a1)
  {
    if (_MergedGlobals_64 != 1)
    {
      return 0;
    }

    v14 = remoteFigProcessStateMonitor_EnsureInternalStateSetup();
    if (v14)
    {
      return v14;
    }

    FigReentrantMutexLock(qword_1ED4CDA20);
    if ([qword_1ED4CDA30 count])
    {
      v32 = v9;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = [qword_1ED4CDA30 pointerAtIndex:{v16, v32}];
        if (v18)
        {
          break;
        }

LABEL_21:
        if (++v16 >= [qword_1ED4CDA30 count])
        {
          goto LABEL_30;
        }
      }

      v19 = v18;
      CFRetain(v18);
      v22 = v19[24];
      if (v22 == 1)
      {
        [qword_1ED4CDA30 replacePointerAtIndex:v16 withPointer:0];
LABEL_20:
        CFRelease(v19);
        goto LABEL_21;
      }

      v34 = 0;
      dataPointerOut = 0;
      v33 = 0;
      if (v22)
      {
        v27 = qword_1ED4CC378;
        v28 = 4294947859;
        v29 = 510;
      }

      else
      {
        DataPointer = CMBlockBufferGetDataPointer(*(v19 + 8), 0, 0, 0, &dataPointerOut);
        if (DataPointer)
        {
LABEL_26:
          v25 = DataPointer;
          v26 = 0;
          goto LABEL_27;
        }

        if ((dataPointerOut & 0xF) == 0)
        {
          v24 = *dataPointerOut;
          if (*dataPointerOut > 0)
          {
            v26 = 0;
            v25 = 0;
LABEL_15:
            FigXPCRelease(v26);
            FigXPCRelease(v33);
            if (v25)
            {
              v15 = v25;
            }

            else
            {
              v15 = v15;
            }

            if (v24 > v17)
            {
              v17 = v24;
            }

            goto LABEL_20;
          }

          v25 = FigXPCCreateBasicMessage(0x646F7063u, *(v19 + 5), &v34);
          v26 = v34;
          if (!v25)
          {
            FigXPCRemoteClientSendSyncMessageCreatingReply(*(v19 + 2), v34, &v33);
            v26 = v34;
            v24 = *dataPointerOut;
            goto LABEL_15;
          }

LABEL_27:
          v24 = 0;
          goto LABEL_15;
        }

        v27 = qword_1ED4CC378;
        v28 = 4294947862;
        v29 = 515;
      }

      DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, "<<<< FigProcessStateMonitorRemote >>>>", v29, v32, v20, v21, v32);
      goto LABEL_26;
    }

    v17 = 0;
    v15 = 0;
LABEL_30:
    if (v11 <= v17)
    {
      figProcessStateMonitor_updateLastPurgeEventIfNecessary(v17);
      v11 = v17;
    }

    [qword_1ED4CDA30 compact];
    *a1 = v11;
    FigReentrantMutexUnlock(qword_1ED4CDA20);
    return v15;
  }

  else
  {
    v31 = qword_1ED4CC378;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 0xFFFFB41AuLL, "<<<< FigProcessStateMonitorRemote >>>>", 0x227, v9, v12, v13, a9);
  }
}

void figProcessStateMonitorRemote_Finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = 0;
  if (dword_1ED4CC380)
  {
    v32 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC378, 1, &v32, &type);
    v10 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
    v11 = OUTLINED_FUNCTION_6_2(v10);
    if (v11)
    {
      v34 = 136315394;
      v35 = "figProcessStateMonitorRemote_Finalize";
      v36 = 2114;
      v37 = a1;
      v30 = &v34;
      OUTLINED_FUNCTION_29_6(v11, 0, v38, 128, &dword_196FA7000, v12, v13, "<<<< FigProcessStateMonitorRemote >>>> %s: Finalizing %{public}@");
    }

    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_34_4(v14, v15, v16, v17, v18);
  }

  FigStopMonitoringMediaServicesProcessDeath(a1, a2, a3, a4, a5, a6, a7, a8);
  FigXPCRemoteClientDisassociateObject(*(a1 + 16), *(a1 + 40), v19, v20, v21, v22, v23, v24, v30);
  if (!*(a1 + 24) && !FigXPCCreateBasicMessage(0x64697370u, *(a1 + 40), &v33))
  {
    FigXPCRemoteClientSendAsyncMessage(*(a1 + 16), v33);
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    CFRelease(v25);
  }

  FigXPCRelease(*(a1 + 32));
  v26 = *(a1 + 72);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(a1 + 56);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(a1 + 64);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(a1 + 96);
  if (v29)
  {
    CFRelease(v29);
  }

  FigXPCRelease(v33);
}

size_t FigProcessStateMonitorRemoteAssociateObject_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC378, 0xFFFFB41AuLL, "<<<< FigProcessStateMonitorRemote >>>>", 0x3AD, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigProcessStateMonitorRemoteAssociateObject_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC378, 0xFFFFB41AuLL, "<<<< FigProcessStateMonitorRemote >>>>", 0x3AC, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t FigEndpointManagerGetSupportedFeatures(CFTypeRef cf1, int a2, uint64_t *a3)
{
  result = 4294950586;
  if (cf1 && a3)
  {
    if (CFEqual(cf1, @"AirPlay"))
    {
      result = 0;
      v7 = 63;
      if (!a2)
      {
        v7 = 31;
      }
    }

    else if (CFEqual(cf1, @"CarPlay") || CFEqual(cf1, @"Nero/Stevenote"))
    {
      result = 0;
      v7 = 3;
    }

    else
    {
      v8 = CFEqual(cf1, @"SidePlay");
      v9 = v8 != 0;
      if (v8)
      {
        result = 0;
      }

      else
      {
        result = 4294950583;
      }

      v7 = 8 * v9;
    }

    *a3 = v7;
  }

  return result;
}

uint64_t FigEndpointManagerGetSupportedDiscoveryFeatures(CFTypeRef cf1, uint64_t *a2)
{
  result = 4294950586;
  if (cf1 && a2)
  {
    v5 = CFEqual(cf1, @"AirPlay");
    result = 0;
    v6 = v5 == 0;
    v7 = 7;
    if (v6)
    {
      v7 = 5;
    }

    *a2 = v7;
  }

  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionBlockBuffer(const __CFAllocator *a1, CMBlockBufferRef theBuffer, uint64_t a3, CMFormatDescriptionRef *a4)
{
  *v18 = 0;
  blockBufferOut = 0;
  if (!theBuffer)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v4;
    v17 = 195;
LABEL_13:
    DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "(Fig)", v17, v16, v14, v15, *v18);
    goto LABEL_8;
  }

  if (!a4)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v4;
    v17 = 196;
    goto LABEL_13;
  }

  v6 = theBuffer;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!CMBlockBufferIsRangeContiguous(v6, 0, 0))
  {
    DataPointer = CMBlockBufferCreateContiguous(a1, v6, a1, 0, 0, 0, 0, &blockBufferOut);
    if (DataPointer)
    {
      goto LABEL_8;
    }

    v6 = blockBufferOut;
  }

  DataPointer = CMBlockBufferGetDataPointer(v6, 0, 0, 0, v18);
  if (!DataPointer)
  {
    DataPointer = CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData(a1, *v18, DataLength, v10, a4);
  }

LABEL_8:
  v11 = DataPointer;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v11;
}

uint64_t sceneBridgeAppendExtensionsFunc(const __CFString *a1, const void *a2, uint64_t a3)
{
  v34 = 0;
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v32 = 226;
LABEL_12:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 0xFFFFCE56uLL, "(Fig)", v32, v29, v30, v31, v33);
    return FigAtomWriterEndAtom(a3, v13, v14, v15, v16, v17, v18, v19);
  }

  if (!a2 || (v7 = CFGetTypeID(a2), v7 != CFDataGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v32 = 227;
    goto LABEL_12;
  }

  if (!FigCFStringGetOSTypeValue(a1, &v34))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v32 = 230;
    goto LABEL_12;
  }

  if (!FigAtomWriterBeginAtom(a3, v34, 0, v8, v9, v10, v11, v12))
  {
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    FigAtomWriterAppendData(a3, BytePtr, Length, v22, v23, v24, v25, v26, v33);
  }

  return FigAtomWriterEndAtom(a3, v13, v14, v15, v16, v17, v18, v19);
}

size_t flipSceneDescriptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "(Fig)", 0x37, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "(Fig)", 0x78, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "(Fig)", 0x74, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "(Fig)", 0x71, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "(Fig)", 0x88, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x6D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0xAA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "(Fig)", 0xA4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "(Fig)", 0x12D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "(Fig)", 0x12E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE54uLL, "(Fig)", 0x13A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "(Fig)", 0x12C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "(Fig)", 0x12B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigTransportConnectionUSBCreate(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  if (a2)
  {
    ClassID = NeroTransportConnectionGetClassID(a1, a2);
    v9 = CMDerivedObjectCreate(a1, kFigTransportConnectionUSBVTable_1, ClassID, &cf, v5, v6, v7, v8, v23);
    if (!v9)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
      v11 = FigDispatchQueueCreateWithPriority("FigTransportConnection", 0, 28);
      DerivedStorage[1] = v11;
      if (!v11)
      {
        goto LABEL_16;
      }

      v12 = FigDispatchQueueCreateWithPriority("FigTransportConnection.data", 0, 28);
      DerivedStorage[2] = v12;
      if (!v12)
      {
        goto LABEL_16;
      }

      v13 = FigSimpleMutexCreate();
      DerivedStorage[26] = v13;
      if (!v13)
      {
        goto LABEL_16;
      }

      v14 = FigSimpleMutexCreate();
      DerivedStorage[20] = v14;
      if (!v14)
      {
        goto LABEL_16;
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"FigMemoryPool_LoggingName", @"TransportConnectionUSB");
      v16 = CMMemoryPoolCreate(Mutable);
      DerivedStorage[14] = v16;
      if (Mutable)
      {
        CFRelease(Mutable);
        v16 = DerivedStorage[14];
      }

      if (v16)
      {
        Allocator = CMMemoryPoolGetAllocator(v16);
        DerivedStorage[15] = Allocator;
        if (Allocator)
        {
          CFRetain(Allocator);
        }

        DerivedStorage[4] = CFRetain(@"Nero");
        *a2 = cf;
        cf = 0;
        FigAtomicIncrement32(&sInstanceCount);
        v9 = 0;
      }

      else
      {
LABEL_16:
        v9 = 4294955245;
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFD0EEuLL, "<<< transportusb >>>", 0x7BE, v20, v21, v22, v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t usb_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!*DerivedStorage)
  {
    *DerivedStorage = 1;
    usb_stopMessageSendingAndReceivingThreads(a1);
  }

  return 0;
}

uint64_t usb_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  usb_Invalidate(a1);
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 8) = 0;
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 16) = 0;
  }

  v5 = *(DerivedStorage + 72);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 72) = 0;
  }

  v6 = *(DerivedStorage + 96);
  if (v6)
  {
    _Block_release(v6);
    *(DerivedStorage + 96) = 0;
  }

  v7 = *(DerivedStorage + 104);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 104) = 0;
  }

  v8 = *(DerivedStorage + 112);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 112) = 0;
  }

  v9 = *(DerivedStorage + 120);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 120) = 0;
  }

  v10 = *(DerivedStorage + 32);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 32) = 0;
  }

  FigSimpleMutexDestroy(*(DerivedStorage + 208));
  FigSimpleMutexDestroy(*(DerivedStorage + 160));

  return FigAtomicDecrement32(&sInstanceCount);
}

uint64_t usb_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, @"ConnectionMode"))
  {
    v8 = v7[9];
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (CFEqual(a2, @"Service"))
  {
    v8 = v7[10];
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (CFEqual(a2, @"IsHiSpeed"))
  {
    v9 = MEMORY[0x1E695E4D0];
    if (v7[31] != 512)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    v8 = *v9;
LABEL_12:
    v8 = CFRetain(v8);
    goto LABEL_13;
  }

  if (CFEqual(a2, @"Version"))
  {
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v7 + 28);
    goto LABEL_13;
  }

  if (!CFEqual(a2, @"USBInterfaceName"))
  {
    return 4294954512;
  }

  v8 = v7[4];
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_13:
  v10 = 0;
  *a4 = v8;
  return v10;
}

uint64_t usb_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"ConnectionMode"))
  {
    v7 = v6[9];
    v6[9] = a3;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (CFEqual(a2, @"Service"))
  {
    v7 = v6[10];
    v6[10] = a3;
    if (!a3)
    {
LABEL_5:
      if (v7)
      {
        CFRelease(v7);
        return 0;
      }

      return v7;
    }

LABEL_4:
    CFRetain(a3);
    goto LABEL_5;
  }

  if (!CFEqual(a2, @"Version"))
  {
    if (!CFEqual(a2, @"USBInterfaceName"))
    {
      return 4294954512;
    }

    v7 = v6[4];
    v6[4] = a3;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!a3)
  {
    return 4294954516;
  }

  v9 = CFGetTypeID(a3);
  v7 = 4294954516;
  if (v9 == CFNumberGetTypeID())
  {
    if (CFNumberGetValue(a3, kCFNumberSInt32Type, v6 + 28))
    {
      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  return v7;
}

uint64_t usb_SetEventHandler(uint64_t a1, NSObject *a2, unint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v6 = DerivedStorage;
  v7 = *(DerivedStorage + 104);
  if (a2 | a3)
  {
    if (v7)
    {
      dispatch_release(v7);
      *(v6 + 104) = 0;
    }

    if (a2)
    {
      *(v6 + 104) = a2;
      dispatch_retain(a2);
    }

    else
    {
      *(v6 + 104) = FigDispatchQueueCreateWithPriority("FigTransportConnectionEvent", 0, 28);
    }

    v8 = *(v6 + 96);
    if (v8)
    {
      _Block_release(v8);
      *(v6 + 96) = 0;
    }

    if (a3)
    {
      v9 = _Block_copy(a3);
      result = 0;
      *(v6 + 96) = v9;
      return result;
    }
  }

  else
  {
    if (!v7)
    {
      return 4294955240;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __usb_SetEventHandler_block_invoke;
    block[3] = &__block_descriptor_tmp_26_3;
    block[4] = v6;
    dispatch_sync(v7, block);
  }

  return 0;
}

uint64_t usb_Stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v3 = *(DerivedStorage + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __usb_Stop_block_invoke;
  v5[3] = &__block_descriptor_tmp_59;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v3, v5);
  return 0;
}

size_t usb_EnqueuePackageWithPriority(const void *a1, _DWORD *a2, OpaqueCMBlockBuffer *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  if (a2[1] == 1885957735)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v25 = 4294955246;
    v26 = 1913;
  }

  else if (DerivedStorage[25])
  {
    if ((a4 - 3) > 0xFFFFFFFD)
    {
      destinationBuffer[0] = 0;
      if (*a2 <= 7u)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 0xFFFFD0EAuLL, "<<< transportusb >>>", 0x231, v28, v29, v30, blockBufferOut);
        return 0;
      }

      v14 = *a2 - CMBlockBufferGetDataLength(a3);
      appended = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, v14, *MEMORY[0x1E695E488], 0, 0, v14, 1u, destinationBuffer);
      v16 = destinationBuffer[0];
      if (!appended)
      {
        appended = CMBlockBufferReplaceDataBytes(a2, destinationBuffer[0], 0, v14);
        v16 = destinationBuffer[0];
        if (a3)
        {
          if (!appended)
          {
            appended = CMBlockBufferAppendBufferReference(destinationBuffer[0], a3, 0, 0, 0);
            v16 = destinationBuffer[0];
          }
        }
      }

      if (!appended || !v16)
      {
        if (!v16)
        {
          return 0;
        }

        v17 = CMBaseObjectGetDerivedStorage(a1);
        if (!*v17)
        {
          v18 = v17;
          CFRetain(v16);
          CFRetain(a1);
          v19 = *(v18 + 2);
          destinationBuffer[0] = MEMORY[0x1E69E9820];
          destinationBuffer[1] = 0x40000000;
          destinationBuffer[2] = __usb_enqueuePackageWithPriority_block_invoke;
          destinationBuffer[3] = &__block_descriptor_tmp_60_0;
          v33 = a4;
          destinationBuffer[4] = v18;
          destinationBuffer[5] = v16;
          destinationBuffer[6] = a1;
          dispatch_async(v19, destinationBuffer);
        }
      }

      CFRelease(v16);
      return 0;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v25 = 4294955246;
    v26 = 1915;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v25 = 4294955244;
    v26 = 1914;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v25, "<<< transportusb >>>", v26, v22, v23, v24, a9);
}

uint64_t usb_FlushPendingPackagesWithPriority(const void *a1, int a2)
{
  if (*CMBaseObjectGetDerivedStorage(a1))
  {
    return 4294955241;
  }

  usb_sendDataViaUSB(a1, a2);
  return 0;
}

uint64_t usb_sendMemoryBlockViaUSB(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v7 = 0;
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 25))
    {
      if ((*(*(DerivedStorage + 240) + 16))() == -536870186)
      {
        CFRetain(a1);
        v4 = *(v3 + 8);
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 0x40000000;
        v6[2] = __usb_sendMemoryBlockViaUSB_block_invoke;
        v6[3] = &__block_descriptor_tmp_36_0;
        v6[4] = a1;
        dispatch_async(v4, v6);
      }
    }
  }

  return v7;
}

size_t usb_Start_cold_1(uint64_t a1, _DWORD *a2)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFD0EEuLL, "<<< transportusb >>>", 0x73C, v2, v6, v7, v9);
  *a2 = result;
  *(*a1 + 24) = result;
  return result;
}

uint64_t FigXPCMessageGetOpCode(void *a1, _DWORD *a2)
{
  uint64 = xpc_dictionary_get_uint64(a1, ".Operation");
  if (!uint64)
  {
    return 4294951145;
  }

  result = 0;
  *a2 = uint64;
  return result;
}

unint64_t FigXPCSendStdCopyPropertyMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = OUTLINED_FUNCTION_11_18(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, *v16, cf);
  if (!v11)
  {
    v11 = FigXPCMessageSetCFString(*v16, ".PropertyName", v10);
    if (!v11)
    {
      v11 = FigXPCRemoteClientSendSyncMessageCreatingReply(v9, *v16, &v15);
      if (!v11)
      {
        v11 = FigXPCMessageCopyCFObject(v15, ".Value", &cf);
      }
    }
  }

  v12 = v11;
  if (v8)
  {
    *v8 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease(v15);
  FigXPCRelease(*v16);
  return v12;
}

uint64_t FigXPCSendStdSetPropertyMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = OUTLINED_FUNCTION_13_15(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15);
  if (!v11)
  {
    v11 = FigXPCMessageSetCFString(v16, ".PropertyName", v10);
    if (!v11)
    {
      v11 = FigXPCMessageSetCFObject(v16, ".Value", v9);
      if (!v11)
      {
        v11 = FigXPCRemoteClientSendSyncMessageCreatingReply(v8, v16, 0);
      }
    }
  }

  v12 = v11;
  FigXPCRelease(v16);
  return v12;
}

uint64_t FigXPCHandleStdCopyPropertyMessage(uint64_t a1, void *a2, void *a3)
{
  cf = 0;
  v17 = 0;
  v6 = FigXPCMessageCopyCFString(a2, ".PropertyName", &v17);
  if (v6)
  {
    goto LABEL_12;
  }

  v7 = v17;
  if (!v17)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE10uLL, "<< FigXPC >>", 0x3FB, v3, v14, v15, cf);
LABEL_12:
    v11 = v6;
    goto LABEL_8;
  }

  v8 = *(*(CMBaseObjectGetVTable(a1) + 8) + 48);
  if (v8)
  {
    v9 = v8(a1, v7, *MEMORY[0x1E695E480], &cf);
    v10 = cf;
    if (!v9)
    {
      v11 = FigXPCMessageSetCFObject(a3, ".Value", cf);
      v10 = cf;
      if (!cf)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    v11 = v9;
    if (cf)
    {
LABEL_6:
      CFRelease(v10);
    }
  }

  else
  {
    v11 = 4294954514;
  }

LABEL_8:
  if (v17)
  {
    CFRelease(v17);
  }

  return v11;
}

uint64_t FigXPCHandleStdSetPropertyMessage(uint64_t a1, void *a2)
{
  cf = 0;
  v14 = 0;
  v4 = FigXPCMessageCopyCFString(a2, ".PropertyName", &v14);
  if (v4)
  {
    goto LABEL_6;
  }

  if (!v14)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE10uLL, "<< FigXPC >>", 0x411, v10, v11, v12, cf);
    goto LABEL_6;
  }

  v4 = FigXPCMessageCopyCFObject(a2, ".Value", &cf);
  if (v4)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_8;
  }

  if (*(*(CMBaseObjectGetVTable(a1) + 8) + 56))
  {
    v5 = OUTLINED_FUNCTION_2_9();
    v4 = v6(v5);
    goto LABEL_6;
  }

  v7 = 4294954514;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v7;
}

void figXPCConnection_forwardThreadAbortForSyncXPCMessage(int64_t *a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject(*(a1[1] + 24));
  if (v2)
  {
    v3 = v2;
    v4 = v2[4];
    if (v4)
    {
      figXPCConnection_forwardThreadAbort(v4, 0, *a1);
    }

    else
    {
      OUTLINED_FUNCTION_5_34();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v5, 0, v6, v7);
      v9 = v23;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v10 = v23;
      }

      else
      {
        v10 = v23 & 0xFFFFFFFE;
      }

      if (v10)
      {
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_6_3();
        _os_log_send_and_compose_impl(v11, v12, v13, v14, v15, os_log_and_send_and_compose_flags_and_os_log_type, type, v16);
        v9 = v23;
      }

      v17 = OUTLINED_FUNCTION_3_40();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v17, v18, v19, v20, v21, v9);
    }

    CFRelease(v3);
  }
}

uint64_t __FigXPCConnectionSendAsyncMessageWithReplyHandler_block_invoke(uint64_t a1, uint64_t a2)
{
  figXPCConnection_processServerReply(*(a1 + 40), a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t FigXPCConnectionSetCustomServerTimeoutPerConnection(uint64_t a1, int64_t a2)
{
  xdict = 0;
  v4 = FigXPCCreateBasicMessage(0x2E746F21u, 0, &xdict);
  v5 = xdict;
  if (!v4)
  {
    xpc_dictionary_set_int64(xdict, ".SelfTerminationTimeout", a2);
    v4 = FigXPCConnectionSendAsyncMessage(a1, v5);
  }

  v6 = v4;
  FigXPCRelease(v5);
  return v6;
}

size_t FigXPCConnectionAssociateObject(uint64_t a1, uint64_t a2, CMBlockBufferRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a1)
  {
    result = FigCFWeakReferenceTableAddValueAssociatedWithKey(*(a1 + 32), a2, a3);
    if (!result)
    {
      result = FigCFWeakReferenceTableAddValueAssociatedWithKey(*(*(a1 + 16) + 112), a2, a3);
      if (!result)
      {
        FigSimpleMutexLock(*(a1 + 96));
        v20 = *(a1 + 104);
        if (v20)
        {
          FigProcessStateMonitorRemoteAssociateObject(v20, a3, v14, v15, v16, v17, v18, v19);
        }

        FigSimpleMutexUnlock(*(a1 + 96));
        return 0;
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x658, v9, v22, v23, a9);
  }

  return result;
}

size_t FigXPCConnectionDisassociateObject(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (a1)
  {
    if (!a2)
    {
      return 0;
    }

    result = FigCFWeakReferenceTableRemoveValue(*(a1 + 32), a2);
    if (!result)
    {
      result = FigCFWeakReferenceTableRemoveValue(*(*(a1 + 16) + 112), a2);
      if (!result)
      {
        FigSimpleMutexLock(*(a1 + 96));
        v18 = *(a1 + 104);
        if (v18)
        {
          FigProcessStateMonitorRemoteDisassociateObject(v18, a2, v12, v13, v14, v15, v16, v17);
        }

        FigSimpleMutexUnlock(*(a1 + 96));
        return 0;
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x673, v20, v21, v22, a9);
  }

  return result;
}

uint64_t FigXPCConnectionRetainCopiedObject(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = 0;
  cf = 0;
  v18 = 0;
  if (a1)
  {
    v16 = a2 & 0xFFFFFFFFFFFFFF00;
    v6 = FigCFWeakReferenceTableApplyFunction(*(*(a1 + 16) + 112), figXPC_RetainCopiedObjectApplierFunction, &v16);
    if (v6)
    {
      goto LABEL_8;
    }

    v7 = cf;
    if (!cf || v18 == a2)
    {
      goto LABEL_7;
    }

    xdict = 0;
    v8 = FigXPCCreateBasicMessage(0x2E6E6370u, a2, &xdict);
    if (!v8)
    {
      v9 = xdict;
      v6 = FigXPCConnectionSendAsyncMessage(a1, xdict);
      FigXPCRelease(v9);
      v7 = cf;
LABEL_7:
      *a3 = v7;
      cf = 0;
      goto LABEL_8;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x6B4, v12, v13, v14, xdict);
  }

  v6 = v8;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

unint64_t FigXPCConnectionSendStdCopyPropertyMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = OUTLINED_FUNCTION_11_18(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, *v16, cf);
  if (!v11)
  {
    v11 = FigXPCMessageSetCFString(*v16, ".PropertyName", v10);
    if (!v11)
    {
      v11 = FigXPCConnectionSendSyncMessageCreatingReply(v9, *v16, &v15);
      if (!v11)
      {
        v11 = FigXPCMessageCopyCFObject(v15, ".Value", &cf);
      }
    }
  }

  v12 = v11;
  if (v8)
  {
    *v8 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease(v15);
  FigXPCRelease(*v16);
  return v12;
}

uint64_t FigXPCConnectionSendStdSetPropertyMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = OUTLINED_FUNCTION_13_15(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15);
  if (!v11)
  {
    v11 = FigXPCMessageSetCFString(v16, ".PropertyName", v10);
    if (!v11)
    {
      v11 = FigXPCMessageSetCFObject(v16, ".Value", v9);
      if (!v11)
      {
        v11 = FigXPCConnectionSendSyncMessageCreatingReply(v8, v16, 0);
      }
    }
  }

  v12 = v11;
  FigXPCRelease(v16);
  return v12;
}

uint64_t FigXPCConnectionCopyMemoryOriginForConnectedProcess(uint64_t a1, CFTypeRef *a2)
{
  v13 = 0;
  FigSimpleMutexLock(*(*(a1 + 16) + 128));
  v4 = *(*(a1 + 16) + 136);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = FigXPCCreateBasicMessage(0x2E6F7267u, 0, &v13);
    v5 = v13;
    if (v6 || (v6 = FigMemoryOriginBeginEstablishingMemoryRecipientByFillingInXPCMessage1(v13), v6) || (v7 = OUTLINED_FUNCTION_2_9(), v6 = FigXPCConnectionSendSyncMessageCreatingReply(v7, v8, v9), v6) || (v6 = FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2(0, (*(a1 + 16) + 136)), v6))
    {
      v10 = v6;
      goto LABEL_9;
    }

    v4 = *(*(a1 + 16) + 136);
  }

  v10 = 0;
  *a2 = CFRetain(v4);
LABEL_9:
  v11 = OUTLINED_FUNCTION_22_11();
  FigSimpleMutexUnlock(v11);
  FigXPCRelease(v5);
  FigXPCRelease(0);
  return v10;
}

size_t FigXPCConnectionCopyMemoryRecipientForConnectedProcess(uint64_t a1, CFTypeRef *a2)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  FigSimpleMutexLock(*(*(a1 + 16) + 128));
  v4 = *(*(a1 + 16) + 144);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    updated = FigXPCCreateBasicMessage(0x2E727031u, 0, &v16);
    v5 = v16;
    if (updated || (v7 = OUTLINED_FUNCTION_2_9(), updated = FigXPCConnectionSendSyncMessageCreatingReply(v7, v8, v9), updated) || (updated = FigXPCCreateBasicMessage(0x2E727032u, 0, &v14), updated) || (v10 = v14, updated = FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2(v15, v14, *(*(a1 + 16) + 16), (*(a1 + 16) + 144)), updated) || (updated = FigXPCConnectionSendSyncMessageCreatingReply(a1, v10, 0), updated))
    {
      v11 = updated;
      goto LABEL_10;
    }

    v4 = *(*(a1 + 16) + 144);
  }

  v11 = 0;
  *a2 = CFRetain(v4);
LABEL_10:
  v12 = OUTLINED_FUNCTION_22_11();
  FigSimpleMutexUnlock(v12);
  FigXPCRelease(v5);
  FigXPCRelease(v15);
  FigXPCRelease(v14);
  return v11;
}

uint64_t FigXPCConnectionCreateAssociatedEventLink(_DWORD *a1, uint64_t a2, unsigned int a3, int a4, CFTypeRef *a5)
{
  cf = 0;
  v28 = 0;
  xdict = 0;
  v26 = 0;
  v24 = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v21 = 4294951145;
    v22 = 2611;
LABEL_21:
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v21, "<< FigXPC >>", v22, v18, v19, v20, v23);
LABEL_22:
    v15 = v9;
    v11 = 0;
    goto LABEL_10;
  }

  if (a1[20])
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v21 = 4294951142;
    v22 = 2612;
    goto LABEL_21;
  }

  v9 = FigXPCConnectionCopyMemoryOriginForConnectedProcess(a1, &v28);
  if (v9)
  {
    goto LABEL_22;
  }

  v9 = FigXPCConnectionCopyMemoryRecipientForConnectedProcess(a1, &cf);
  if (v9)
  {
    goto LABEL_22;
  }

  v10 = FigXPCCreateBasicMessage(0x2E656C73u, 0, &xdict);
  v11 = xdict;
  if (v10 || (xpc_dictionary_set_uint64(xdict, "ServerEventLinkFigThreadPriority", a3), xpc_dictionary_set_int64(v11, "ServerEventLinkMachThreadPriority", a4), v10 = FigXPCConnectionSendSyncMessageCreatingReply(a1, v11, &v24), v10))
  {
    v15 = v10;
LABEL_10:
    v13 = v28;
    goto LABEL_11;
  }

  v12 = CFGetAllocator(a1);
  v13 = v28;
  v14 = FigOSEventLinkRemoteCreateFromXPCObject(v12, v24, v28, cf, &v26);
  if (!v14)
  {
    v15 = FigOSEventLinkRemoteSetAbortActionCallback(v26, a1, figXPCConnection_forwardThreadAbortForEventLink);
    if (!v15)
    {
      *a5 = v26;
      v26 = 0;
    }

    goto LABEL_10;
  }

  v15 = v14;
LABEL_11:
  FigXPCRelease(v11);
  FigXPCRelease(v24);
  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v15;
}

size_t FigXPCServerCreateAssociatedEventLinkForConnection(_xpc_connection_s *a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5, unsigned int a6, int a7, CFTypeRef *a8)
{
  v8 = a1;
  xdict = 0;
  cf = 0;
  if (a1)
  {
    v15 = FigXPCCreateBasicMessage(0x2E656C63u, 0, &xdict);
    v16 = xdict;
    if (v15)
    {
      v17 = v15;
      v8 = 0;
    }

    else
    {
      xpc_dictionary_set_uint64(xdict, "ServerEventLinkFigThreadPriority", a6);
      xpc_dictionary_set_int64(v16, "ServerEventLinkMachThreadPriority", a7);
      v8 = xpc_connection_send_message_with_reply_sync(v8, v16);
      if (v8)
      {
        v17 = FigOSEventLinkRemoteCreateFromXPCObject(a2, v8, a3, a4, &cf);
        if (!v17)
        {
          *a8 = cf;
          cf = 0;
        }
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFC0E1uLL, "<< FigXPC >>", 0xA76, v24, v25, v26, xdict);
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xA6A, v20, v21, v22, xdict);
    v16 = 0;
  }

  FigXPCRelease(v16);
  FigXPCRelease(v8);
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t FigXPCRemoteClientCopyMemoryOriginAsync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v13 = 0;
  v4 = OUTLINED_FUNCTION_22_11();
  FigSimpleMutexLock(v4);
  if (*(v3[2] + 136))
  {
    (*(a2 + 16))(a2, 0);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = FigXPCCreateBasicMessage(0x2E6F7267u, 0, &v13);
    v5 = v13;
    if (!v7)
    {
      v7 = FigMemoryOriginBeginEstablishingMemoryRecipientByFillingInXPCMessage1(v13);
      if (!v7)
      {
        CFRetain(v3);
        v8 = OUTLINED_FUNCTION_2_9();
        v7 = FigXPCConnectionSendAsyncMessageWithReplyHandler(v8, v9, v10);
      }
    }

    v6 = v7;
  }

  v11 = OUTLINED_FUNCTION_22_11();
  FigSimpleMutexUnlock(v11);
  FigXPCRelease(v5);
  return v6;
}

xpc_connection_t __FigXPCRemoteClientCreateSecondaryConnection_block_invoke(uint64_t a1)
{
  xdict = 0;
  v14 = 0;
  v2 = FigXPCCreateBasicMessage(0x2E326E64u, 0, &v14);
  v3 = v14;
  if (v2 || FigXPCRemoteClientSendSyncMessageCreatingReply(*(a1 + 32), v14, &xdict))
  {
    goto LABEL_11;
  }

  value = xpc_dictionary_get_value(xdict, ".SecondaryEndpoint");
  if (!value)
  {
    v8 = 3214;
LABEL_10:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFC0E1uLL, "<< FigXPC >>", v8, v10, v11, v12, xdict);
LABEL_11:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = value;
  if (MEMORY[0x19A8DA4F0]() != MEMORY[0x1E69E9E90])
  {
    v8 = 3215;
    goto LABEL_10;
  }

  v6 = xpc_connection_create_from_endpoint(v5);
  if (!v6)
  {
    v8 = 3219;
    goto LABEL_10;
  }

LABEL_6:
  FigXPCRelease(v3);
  FigXPCRelease(xdict);
  return v6;
}

size_t figXPC_RegisterServedObject(uint64_t a1, void *a2, const void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, CMBlockBufferRef **a8, CMBlockBufferRef *a9)
{
  if (a1)
  {
    if (a3)
    {
      v17 = (*(*(a1 + 56) + 8) | (FigAtomicIncrement32((*(a1 + 56) + 20)) << 8) | 1);
      result = figXPC_RegisterServedObjectWithID(a1, a2, a3, a4, a5, a6, a7, v17);
      if (!result)
      {
        *a8 = v17;
      }

      return result;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v23 = 5860;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v23 = 5859;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFC0E9uLL, "<< FigXPC >>", v23, v20, v21, v22, a9);
}

size_t figXPC_CopyInfoForProcess(uint64_t a1, void *key, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v100 = *MEMORY[0x1E69E9840];
  if (key > 0)
  {
    v11 = key;
    v13 = key;
    Value = CFDictionaryGetValue(*(a1 + 104), key);
    if (Value)
    {
      v15 = CFRetain(Value);
      if (v15)
      {
        goto LABEL_30;
      }
    }

    v89 = 0;
    v16 = *MEMORY[0x1E695E480];
    if (_MergedGlobals_66 != -1)
    {
      dispatch_once(&_MergedGlobals_66, &__block_literal_global_160);
    }

    Instance = _CFRuntimeCreateInstance();
    v15 = Instance;
    if (!Instance)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v55 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x13DC, v64, v65, v66, v85);
      v56 = 0;
LABEL_27:
      free(v56);
      if (v55)
      {
        return v55;
      }

      goto LABEL_28;
    }

    *(Instance + 16) = v11;
    asprintf(&v89, "%s(%d)-messages", *(a1 + 88), v11);
    v18 = FigDispatchQueueCreateWithPriority(v89, 0, *(a1 + 120));
    v15[3] = v18;
    FigThreadMakeDispatchQueueAbortable(v18, v19, v20, v21, v22, v23, v24, v25, v86);
    v26 = FigSimpleMutexCreate();
    v15[10] = v26;
    if (v26)
    {
      Mutable = CFArrayCreateMutable(v16, 0, MEMORY[0x1E695E9C0]);
      v15[11] = Mutable;
      if (Mutable)
      {
        if (*(a1 + 124))
        {
          v28 = *a1;
          if (*a1)
          {
            v28 = CFRetain(v28);
          }

          v15[6] = v28;
        }

        else
        {
          FigCFWeakReferenceTableCreate(v16, 1, v15 + 6);
        }

        v15[7] = a1;
        *(v15 + 44) = 0;
        v29 = OUTLINED_FUNCTION_16_13();
        v33 = CFDictionaryCreateMutable(v29, v30, v31, v32);
        v15[20] = v33;
        if (v33)
        {
          v34 = OUTLINED_FUNCTION_16_13();
          v37 = CFDictionaryCreateMutable(v34, v35, v36, 0);
          v15[21] = v37;
          if (v37)
          {
            v38 = *(v15[7] + 88);
            v39 = *(v15 + 4);
            cf = 0;
            label[0] = 0;
            v98 = 0u;
            v99 = 0u;
            v97 = 0u;
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            handler = 0u;
            if (qword_1ED4CDB20 != -1)
            {
              dispatch_once(&qword_1ED4CDB20, &__block_literal_global_173);
            }

            v40 = _CFRuntimeCreateInstance();
            if (v40)
            {
              v47 = v40;
              FigServer_CopyProcessName(v39, &cf, v41, v42, v43, v44, v45, v46);
              CStringPtrMaybeUsingPreallocatedBuffer = FigCFStringGetCStringPtrMaybeUsingPreallocatedBuffer(cf, &handler, 128, 0x600u);
              asprintf(label, "%s(%s-%d)-drainNotifications", v38, CStringPtrMaybeUsingPreallocatedBuffer, v39);
              snprintf((v47 + 16), 0x80uLL, "%s-%d", v38, v39);
              v49 = FigSimpleMutexCreate();
              *(v47 + 152) = v49;
              if (v49)
              {
                v50 = OUTLINED_FUNCTION_16_13();
                v53 = CFArrayCreateMutable(v50, v51, v52);
                *(v47 + 160) = v53;
                if (v53)
                {
                  v54 = dispatch_queue_create(label[0], 0);
                  *(v47 + 144) = v54;
                  if (v54)
                  {
                    v55 = 0;
                    *(v47 + 168) = 0;
                    v15[14] = v47;
                    goto LABEL_23;
                  }

                  v80 = 4381;
                }

                else
                {
                  v80 = 4379;
                }
              }

              else
              {
                v80 = 4377;
              }

              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_27_2();
              v55 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, 0xFFFFC0EAuLL, "<< FigXPC >>", v80, v82, v83, v84, v88);
              CFRelease(v47);
            }

            else
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_27_2();
              v55 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v76, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1110, v77, v78, v79, v87);
            }

LABEL_23:
            if (cf)
            {
              CFRelease(cf);
            }

            free(label[0]);
            if (!v55)
            {
              v56 = v89;
              goto LABEL_27;
            }

LABEL_42:
            free(v89);
            CFRelease(v15);
            v15 = 0;
            if (v55)
            {
              return v55;
            }

LABEL_28:
            CFDictionarySetValue(*(a1 + 104), v13, v15);
            v57 = dispatch_source_create(MEMORY[0x1E69E96F0], v13, 0x80000000uLL, qword_1ED4CDB30);
            if (v57)
            {
              v58 = v57;
              *&handler = MEMORY[0x1E69E9820];
              *(&handler + 1) = 0x40000000;
              *&v93 = __figXPC_StartListeningForClientProcessDeath_block_invoke;
              *(&v93 + 1) = &__block_descriptor_tmp_174;
              *&v94 = a1;
              DWORD2(v94) = v11;
              dispatch_source_set_event_handler(v57, &handler);
              label[0] = MEMORY[0x1E69E9820];
              label[1] = 0x40000000;
              label[2] = __figXPC_StartListeningForClientProcessDeath_block_invoke_2;
              label[3] = &__block_descriptor_tmp_175;
              label[4] = v58;
              dispatch_source_set_cancel_handler(v58, label);
              v15[13] = v58;
              dispatch_resume(v58);
            }

            else
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_27_2();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v68, 0xFFFFC0E1uLL, "<< FigXPC >>", 0x141B, v69, v70, v71, v88);
            }

LABEL_30:
            v55 = 0;
            *a3 = v15;
            return v55;
          }

          v67 = 5110;
        }

        else
        {
          v67 = 5108;
        }
      }

      else
      {
        v67 = 5096;
      }
    }

    else
    {
      v67 = 5094;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v55 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, 0xFFFFC0EAuLL, "<< FigXPC >>", v67, v73, v74, v75, v87);
    goto LABEL_42;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E1uLL, "<< FigXPC >>", 0x1441, v9, v61, v62, a9);
}

size_t FigXPCServerStartWithNewXPCEndpoint(uint64_t a1, unint64_t *a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = FigXPCServerStartWithListenerCreatingBlock(a1, a2, a3, a4, &__block_literal_global_59, a6, a7, a8, v11);
  if (!v9)
  {
    *(*a4 + 32) = xpc_endpoint_create(*(*a4 + 24));
  }

  return v9;
}

void figXPCConnection_forwardThreadAbort(uint64_t a1, unsigned int a2, int64_t a3)
{
  xdict = 0;
  v5 = FigXPCCreateBasicMessage(0x2E737470u, 0, &xdict);
  v6 = xdict;
  if (!v5)
  {
    xpc_dictionary_set_int64(xdict, ".AbortActionID", a3);
    xpc_dictionary_set_int64(v6, ".AbortActionTarget", a2);
    v7 = OUTLINED_FUNCTION_2_9();
    FigXPCConnectionSendAsyncMessage(v7, v8);
  }

  FigXPCRelease(v6);
}

void __FigXPCRemoteClientCreateWithConnectionCreatingBlockAsync_block_invoke(uint64_t a1, int a2, CFTypeRef cf)
{
  if (!a2)
  {
    if (cf)
    {
      v4 = CFRetain(cf);
    }

    else
    {
      v4 = 0;
    }

    *(*(a1 + 40) + 24) = v4;
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener(DefaultLocalCenter, *(a1 + 40), figXPCRemoteClient_PrimaryConnectionNotificationCallback, 0, *(*(a1 + 40) + 24), 0, 0, v6, v8);
  }

  (*(*(a1 + 32) + 16))();
  v7 = *(a1 + 40);
  if (v7)
  {

    CFRelease(v7);
  }
}

void __FigXPCConnectionCopyMemoryOriginForConnectedProcessAsync_block_invoke(uint64_t a1, int a2, void *a3)
{
  FigSimpleMutexLock(*(*(*(a1 + 40) + 16) + 128));
  if (!a2)
  {
    v6 = *(*(a1 + 40) + 16);
    v8 = *(v6 + 136);
    v7 = (v6 + 136);
    if (!v8)
    {
      FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2(a3, v7);
    }
  }

  (*(*(a1 + 32) + 16))();
  FigSimpleMutexUnlock(*(*(*(a1 + 40) + 16) + 128));
  v9 = *(a1 + 40);
  if (v9)
  {

    CFRelease(v9);
  }
}

void figXPCServedObject_NotificationCallback(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5)
{
  if (!*(a2 + 56))
  {
    return;
  }

  v8 = FigCFWeakReferenceLoadAndRetain((a2 + 64));
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = *(v8 + 14);
  FigSimpleMutexLock(*(v10 + 152));
  v11 = *(v10 + 172);
  if ((v11 - 1) < 2)
  {
    OUTLINED_FUNCTION_18_15();
  }

  else if (v11)
  {
    if (v11 == 3)
    {
      v12 = *(v10 + 168);
LABEL_14:
      *(v10 + 168) = v12 + 1;
      FigSimpleMutexUnlock(*(v10 + 152));
      figXPC_SendOneNotification(a2, a3, a5);
      goto LABEL_11;
    }
  }

  else
  {
    v12 = *(v10 + 168);
    if (v12 < 100)
    {
      goto LABEL_14;
    }

    *(v10 + 172) = 1;
    OUTLINED_FUNCTION_18_15();
    figXPC_SendNotificationCheckpoint(v10, *(a2 + 56));
  }

  FigSimpleMutexUnlock(*(v10 + 152));
LABEL_11:

  CFRelease(v9);
}

void figXPC_SendOneNotification(void *a1, const void *a2, const void *a3)
{
  *v12 = 0;
  v6 = FigXPCCreateBasicMessage(0x2E6E6F74u, a1[3], v12);
  v7 = *v12;
  if (v6)
  {
    goto LABEL_14;
  }

  FigXPCMessageSetCFString(*v12, ".NotificationName", a2);
  v8 = a1[6];
  if (!v8)
  {
    if (a3)
    {
LABEL_7:
      v10 = CFRetain(a3);
LABEL_8:
      if (v10)
      {
LABEL_9:
        if (!FigXPCMessageSetCFDictionary(v7, ".payload", v10))
        {
          xpc_connection_send_notification();
        }

        CFRelease(v10);
        v7 = *v12;
        goto LABEL_14;
      }
    }

LABEL_13:
    xpc_connection_send_notification();
    goto LABEL_14;
  }

  v11 = 0;
  v9 = v8(a1[4], a1[2], a2, a3, &v11, v7);
  v10 = 0;
  switch(v9)
  {
    case 0:
      if (!a3)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    case 2:
      goto LABEL_8;
    case 4:
      v10 = v11;
      if (!v11)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    default:
      break;
  }

LABEL_14:
  FigXPCRelease(v7);
}

void figXPC_HandleMessage(uint64_t a1, uint64_t a2, _xpc_connection_s *a3, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, ".Operation");
  context = xpc_connection_get_context(a3);
  if (context)
  {
    v10 = CFRetain(context);
  }

  else
  {
    v10 = 0;
  }

  xdicta[0] = 0;
  if (*(a1 + 125) && FigAtomicCompareAndSwap32(0, 1u, (a2 + 40)))
  {
    figXPCServer_EstablishSecondaryConnectionManagement(a1, a2);
    v11 = FigXPCCreateBasicMessage(0x2E636164u, 0, xdicta);
    v12 = xdicta[0];
    if (!v11)
    {
      xpc_dictionary_set_value(xdicta[0], ".SecondaryEndpoint", *(a2 + 136));
      v13 = xpc_connection_send_message_with_reply_sync(a3, v12);
      goto LABEL_8;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
LABEL_8:
  FigXPCRelease(v13);
  FigXPCRelease(v12);
  if ((uint64 & 0x100000000) == 0)
  {
    remote_connection = xpc_dictionary_get_remote_connection(xdict);
    reply = xpc_dictionary_create_reply(xdict);
    if (!reply)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_10_15();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x15B5, v25, v26, v27, v88);
      goto LABEL_112;
    }

    v16 = reply;
    if (uint64 != 775056996)
    {
      if (uint64 != 778398835)
      {
        switch(uint64)
        {
          case 0x2E6F7267:
            updated = FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2(xdict, reply, *(a1 + 88), (a2 + 72));
            break;
          case 0x2E727032:
            v22 = &qword_1ED4CD000;
            if (FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2(xdict, (a2 + 64)))
            {
              goto LABEL_112;
            }

            goto LABEL_43;
          case 0x2E727031:
            updated = FigMemoryOriginBeginEstablishingMemoryRecipientByFillingInXPCMessage1(reply);
            break;
          case 0x2E706E67:
            string = xpc_dictionary_get_string(xdict, ".ProcessName");
            if (string)
            {
              v18 = string;
              v19 = *MEMORY[0x1E695E480];
              v20 = CFStringCreateWithCString(*MEMORY[0x1E695E480], string, 0x8000100u);
              if (v20)
              {
                if (xpc_dictionary_get_BOOL(xdict, ".IsDaemon"))
                {
                  FigApplicationStateMonitorAddPIDToIgnore(*(v10 + 40));
                }

                FigProcessInfoCreateWithDetails(v19, *(v10 + 40), v20, v10 + 3);
                v21 = FigCFWeakReferenceLoadAndRetain(v10 + 2);
                if (v21)
                {
                  strncpy(xdicta, v18, 8uLL);
                  *(v10 + 21) = xdicta[0];
                }

                goto LABEL_22;
              }
            }

            else
            {
              v20 = 0;
            }

            v21 = 0;
LABEL_22:
            v22 = &qword_1ED4CD000;
            xpc_dictionary_set_uint64(v16, ".ServerCapabilities", qword_1ED4CDB38);
            xpc_dictionary_set_int64(v16, ".Token", *(v10 + 25));
            if (v21)
            {
              CFRelease(v21);
            }

            if (v20)
            {
              CFRelease(v20);
            }

LABEL_43:
            v34 = 0;
LABEL_83:
            v35 = 0;
LABEL_105:
            xdicta[0] = 0;
            if ((v22[359] & 1) != 0 || !FigAtomicCompareAndSwap32(0, 1u, (a2 + 44)))
            {
              v83 = 0;
            }

            else
            {
              v82 = FigProcessStateMonitorServerEnsureStartedAndCopyEndpoint(xdicta, v75, v76, v77, v78, v79, v80, v81);
              v83 = xdicta[0];
              if (!v82)
              {
                xpc_dictionary_set_value(v16, ".ProcessStateMonitorEndpoint", xdicta[0]);
                v83 = xdicta[0];
              }
            }

            FigXPCRelease(v83);
            if (!v35)
            {
              xpc_dictionary_set_int64(v16, ".ErrorReturn", v34);
              xpc_connection_send_message(remote_connection, v16);
            }

            xpc_release(v16);
            goto LABEL_112;
          default:
            TimeoutNanoseconds = FigRPCServer_GetTimeoutNanoseconds();
            if (*(v10 + 28))
            {
              v37 = *(v10 + 29);
              v38 = *(v10 + 28);
            }

            else
            {
              v38 = TimeoutNanoseconds;
              v37 = 0;
            }

            int64 = xpc_dictionary_get_int64(xdict, ".SelfTerminationTimeout");
            if (1000000000 * int64)
            {
              v70 = 0;
            }

            else
            {
              v70 = v37;
            }

            if (1000000000 * int64)
            {
              v38 = 1000000000 * int64;
            }

            if (v38 && v70)
            {
              v38 = FigRPCServer_PickRPCTimeoutForCurrentThread(v38, v70);
            }

            v90 = remote_connection;
            xpc_dictionary_set_int64(v16, ".Token", *(v10 + 25));
            if (v38)
            {
              xpc_dictionary_set_int64(v16, ".ErrorReturn", -16156);
              xpc_retain(v16);
              *(v10 + 27) = xpc_retain(xdict);
              dispatch_set_context(*(v10 + 24), v16);
              v71 = *(v10 + 24);
              v72 = dispatch_time(0, v38);
              dispatch_source_set_timer(v71, v72, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
              *(v10 + 208) = 1;
            }

            v73 = xpc_dictionary_get_int64(xdict, ".AbortActionID");
            if (v73 && *(a1 + 125))
            {
              os_unfair_lock_lock((a2 + 176));
              CFDictionarySetValue(*(a2 + 160), v73, v10);
              os_unfair_lock_unlock((a2 + 176));
            }

            v34 = (*(a1 + 48))(a3, xdict, v16);
            if (v73 && *(a1 + 125))
            {
              os_unfair_lock_lock((a2 + 176));
              CFDictionaryRemoveValue(*(a2 + 160), v73);
              os_unfair_lock_unlock((a2 + 176));
            }

            v95 = 0;
            v96 = &v95;
            v97 = 0x2000000000;
            v98 = 0;
            v22 = &qword_1ED4CD000;
            if (*(v10 + 208))
            {
              *(v10 + 208) = 0;
              dispatch_source_set_timer(*(v10 + 24), 0xFFFFFFFFFFFFFFFFLL, 0, 0x1DCD6500uLL);
              xdicta[0] = MEMORY[0x1E69E9820];
              xdicta[1] = 0x40000000;
              xdicta[2] = __figXPC_UnsetTimeoutTimer_block_invoke;
              xdicta[3] = &unk_1E74A6640;
              xdicta[4] = &v95;
              xdicta[5] = v10;
              dispatch_sync(qword_1ED4CDB30, xdicta);
              v74 = *(v96 + 24) != 0;
            }

            else
            {
              v74 = 0;
            }

            remote_connection = v90;
            _Block_object_dispose(&v95, 8);
            v35 = (uint64 & 0x200000000) == 0 && v74;
            goto LABEL_105;
        }

        v34 = updated;
        v35 = 0;
        v22 = &qword_1ED4CD000;
        goto LABEL_105;
      }

      v93 = 0;
      xdicta[0] = 0;
      v95 = 0;
      cf = 0;
      value = 0;
      v89 = remote_connection;
      if (*(a1 + 40) <= 2uLL)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_10_15();
        v68 = 7303;
      }

      else
      {
        v40 = *(a1 + 80);
        v39 = (a1 + 80);
        if (v40)
        {
          if (a3)
          {
            v41 = FigXPCServerCopyMemoryOrigin(a3, &v93);
            if (!v41)
            {
              v41 = FigXPCServerCopyMemoryRecipient(a3, &v95);
              if (!v41)
              {
                FigServer_CopyProcessName(*(a2 + 16), &cf, v42, v43, v44, v45, v46, v47);
                v48 = *MEMORY[0x1E695E480];
                v49 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s.%d.%@.eventlink", *(*(a2 + 56) + 88), *(a2 + 16), cf);
                Mutable = CFDictionaryCreateMutable(v48, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                CFDictionarySetValue(Mutable, @"FigMemoryPool_LoggingName", v49);
                v51 = CMMemoryPoolCreate(Mutable);
                if (Mutable)
                {
                  CFRelease(Mutable);
                }

                v52 = xpc_dictionary_get_int64(xdict, "ServerEventLinkMachThreadPriority");
                v53 = xpc_dictionary_get_uint64(xdict, "ServerEventLinkFigThreadPriority");
                v54 = FigOSEventLinkServerCreate(v48, v53, v52, v49, 0, v51, v93, v95, xdicta);
                if (!v54)
                {
                  v54 = FigOSEventLinkServerSetAbortActionCallbacks(xdicta[0], a2, figXPC_willHandleAbortableEventLinkMessage, figXPC_didHandleAbortableEventLinkMessage);
                  if (!v54)
                  {
                    v54 = FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection(xdicta[0], a3);
                    if (!v54)
                    {
                      v55 = FigOSEventLinkServerCopyRemoteCreationInfoXPCObject(xdicta[0], &value);
                      v22 = &qword_1ED4CD000;
                      if (!v55)
                      {
                        xpc_dictionary_set_value(v16, "RemoteEventLinkCreationInfo", value);
                        v55 = (*v39)(xdicta[0], 0);
                      }

                      v34 = v55;
                      goto LABEL_71;
                    }
                  }
                }

                v34 = v54;
LABEL_70:
                v22 = &qword_1ED4CD000;
LABEL_71:
                if (cf)
                {
                  CFRelease(cf);
                }

                if (v51)
                {
                  CFRelease(v51);
                }

                if (v95)
                {
                  CFRelease(v95);
                }

                remote_connection = v89;
                if (v93)
                {
                  CFRelease(v93);
                }

                if (v49)
                {
                  CFRelease(v49);
                }

                FigXPCRelease(value);
                if (xdicta[0])
                {
                  CFRelease(xdicta[0]);
                }

                goto LABEL_83;
              }
            }

LABEL_69:
            v34 = v41;
            v51 = 0;
            v49 = 0;
            goto LABEL_70;
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_10_15();
          v68 = 7305;
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_10_15();
          v68 = 7304;
        }
      }

      v41 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, 0xFFFFC0E9uLL, "<< FigXPC >>", v68, v65, v66, v67, v88);
      goto LABEL_69;
    }

    v56 = *(a2 + 16);
    xdicta[0] = 0;
    if (*(a1 + 138))
    {
      FigSimpleMutexLock(*(a1 + 112));
      v34 = figXPC_CopyInfoForProcess(a1, v56, xdicta, v57, v58, v59, v60, v61, v88);
      FigSimpleMutexUnlock(*(a1 + 112));
      v62 = xdicta[0];
      v22 = &qword_1ED4CD000;
      if (v34)
      {
        if (!xdicta[0])
        {
          goto LABEL_63;
        }
      }

      else
      {
        figXPCServer_EstablishSecondaryConnectionManagement(a1, xdicta[0]);
        xpc_dictionary_set_value(v16, ".SecondaryEndpoint", v62[17]);
      }

      CFRelease(v62);
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_10_15();
      v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v84, 0xFFFFB4F4uLL, "<< FigXPC >>", 0x1C45, v85, v86, v87, v88);
      v22 = &qword_1ED4CD000;
    }

LABEL_63:
    FigXPCRelease(0);
    goto LABEL_83;
  }

  if (uint64 != 779382561)
  {
    if (uint64 == 779318384)
    {
      v28 = xpc_dictionary_get_int64(xdict, ".AbortActionID");
      v29 = xpc_dictionary_get_int64(xdict, ".AbortActionTarget");
      if (v28)
      {
        v30 = v29;
        os_unfair_lock_lock((a2 + 176));
        if (v30 == 1)
        {
          v63 = CFDictionaryGetValue(*(a2 + 168), v28);
          if (v63)
          {
            FigThreadAbort(v63);
          }
        }

        else if (!v30)
        {
          v31 = CFDictionaryGetValue(*(a2 + 160), v28);
          if (v31)
          {
            FigThreadAbortQueue(v31[30]);
          }
        }

        os_unfair_lock_unlock((a2 + 176));
      }
    }

    else if (uint64 == 778986352)
    {
      v23 = xpc_dictionary_get_uint64(xdict, ".objectID");
      FigXPCServerDisassociateObjectWithConnection(a3, v23);
    }

    else
    {
      v32 = *(a1 + 56);
      if (v32)
      {
        v32(a3, xdict);
      }
    }

LABEL_112:
    if (!v10)
    {
      return;
    }

    goto LABEL_113;
  }

  *(v10 + 28) = 1000000000 * xpc_dictionary_get_int64(xdict, ".SelfTerminationTimeout");
  *(v10 + 29) = 0;
LABEL_113:
  CFRelease(v10);
}

size_t FigXPCCreateBasicMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x3A2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCCreateBasicMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x39F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendSyncMessageCreatingReply_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB4F4uLL, "<< FigXPC >>", 0xB06, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendSyncMessageCreatingReply_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB05, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendSyncMessageCreatingReply_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB04, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x524, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x52A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x525, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageWithNoTimeoutCreatingReply_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x523, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageCreatingReply_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x5BD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageCreatingReply_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB4F4uLL, "<< FigXPC >>", 0x5BF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageCreatingReply_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x5BE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendSyncMessageCreatingReply_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x5BC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x5F0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x5F7, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessage_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x5F1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessage_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x5EF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithReplyHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x60E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithReplyHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x610, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithReplyHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x60F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithReplyHandler_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x60D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x632, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x639, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x634, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x633, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x631, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPConnectionLookupAndRetainAssociatedObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x68F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionGetServerPID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E1uLL, "<< FigXPC >>", 0x8ED, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB1F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB1E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB2D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB2C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessageWithReplyHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB3C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessageWithReplyHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB3B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessageWithReplyHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB3A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB4B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB4A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientSendAsyncMessageWithNoTimeoutWithReplyHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB49, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientDisassociateObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB58, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientAssociateObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB67, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientLookupAndRetainAssociatedObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB74, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientRetainCopiedObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xB81, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientGetServerPID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E1uLL, "<< FigXPC >>", 0xC35, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientGetServerPID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xC33, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientGetServerPIDSync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E1uLL, "<< FigXPC >>", 0xC46, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientGetServerPIDSync_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xC42, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientGetServerPIDSync_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xC41, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientCopyPrimaryConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0xC70, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientCopyPrimaryConnection_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0xC6F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientCopyPrimaryConnection_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xC6E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCIsObjectIDLocallyServed_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x169D, v10, v11, v12, a9);
}

size_t FigXPCServerCopyMemoryOrigin_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E1uLL, "<< FigXPC >>", 0x17AC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t FigXPCServerCopyMemoryOrigin_cold_3(char a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x17AB, v5, v6, v7, v9);
  return a1 & 1;
}

size_t FigXPCServerCopyMemoryRecipient_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E1uLL, "<< FigXPC >>", 0x17BC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t FigXPCServerCopyMemoryRecipient_cold_3(char a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x17BB, v5, v6, v7, v9);
  return a1 & 1;
}

uint64_t FigXPCServerDisassociateObjectWithConnection_cold_2(char a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x1812, v5, v6, v7, v9);
  return a1 & 1;
}

size_t FigXPCServerAssociateObjectWithConnectionWithFlags_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x1824, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerAssociateCopiedObjectWithConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x1843, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figXPC_RegisterCopiedObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1735, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerFindUniqueObjectIDForObjectAssociatedWithConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB4F5uLL, "<< FigXPC >>", 0x1706, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerFindUniqueObjectIDForObjectAssociatedWithConnection_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB4F5uLL, "<< FigXPC >>", 0x170F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerFindUniqueObjectIDForObjectAssociatedWithConnection_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x1857, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t _figXPCServerLookupAndRetainAssociatedObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x186D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x18A5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerRetainNeighborObjectFromID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E8uLL, "<< FigXPC >>", 0x18D7, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerRetainNeighborObjectFromID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x18D4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerRetainNeighborObjectFromID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x18D3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerRetainNeighborObjectFromIDWithProcessID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E8uLL, "<< FigXPC >>", 0x18F2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerRetainNeighborObjectFromIDWithProcessID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x18E3, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerRetainNeighborObjectFromIDWithProcessID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x18E2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerDisassociateObjectWithNeighborClientPID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1952, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerConfirmNeighborProcessByPID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x19C7, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerSetConnectionRefcon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x19FB, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerSetConnectionRefcon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x19FA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerSetConnectionRefcon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x19F7, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

void FigXPCServerSelfTerminateDueToError_cold_1(char **a1, uint64_t a2, int a3)
{
  *a1 = 0;
  asprintf(a1, "****** Self-terminating due to fatal error %d on server %s", a3, *(a2 + 88));
  v4 = *a1;
  getpid();
  FigRPCServer_TimeoutCrashReport(0, v4);
  abort();
}

size_t FigXPCServerGetConnectionRefcon_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x1A3B, v10, v11, v12, a9);
}

size_t FigXPCServerCopyPrimaryConnection_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFC0E6uLL, "<< FigXPC >>", 0x1A4B, v10, v11, v12, a9);
}

size_t FigXPCServerStartWithListenerCreatingBlock_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1A94, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithListenerCreatingBlock_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1A73, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithListenerCreatingBlock_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1A71, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithListenerCreatingBlock_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1A6E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithListenerCreatingBlock_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1A6B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithListenerCreatingBlock_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1A69, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerCopyXPCEndpoint_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1ADA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerCopyXPCEndpoint_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1AD9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithClientXPCConnection_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1B0F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithClientXPCConnection_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1AFA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithClientXPCConnection_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1AF8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithClientXPCConnection_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x1AF5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithClientXPCConnection_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1AF2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithClientXPCConnection_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1AF1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCServerStartWithClientXPCConnection_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1AF0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figXPC_HandleNewClientConnection_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFC0E1uLL, "<< FigXPC >>", 0x162B, v10, v11, v12, a9);
}

size_t FigXPCRemoteClientCreateWithConnectionCreatingBlockCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x48B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCRemoteClientCreateWithConnectionCreatingBlockCommon_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0xB94, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figXPCCreateXPCConnectionInternalCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x9BA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figXPCCreateXPCConnectionInternalCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E7uLL, "<< FigXPC >>", 0x9AD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figXPCCreateXPCConnectionInternalCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x995, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figXPCCreateXPCConnectionInternalCommon_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x991, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figXPCCreateXPCConnectionInternalCommon_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x98C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

BOOL figXPCCreateXPCConnectionInternalCommon_cold_7(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x98B, v5, v6, v7, v9);
  return a1 == 0;
}

size_t __figXPCCreateXPCConnectionInternalCommon_block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x811, v10, v11, v12, a9);
}

size_t __figXPCCreateXPCConnectionInternalCommon_block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x810, v10, v11, v12, a9);
}

size_t __figXPCCreateXPCConnectionInternalCommon_block_invoke_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFC0E9uLL, "<< FigXPC >>", 0xCE3, v10, v11, v12, a9);
}

size_t __figXPCConnection_handleCreateAdminConnectionReplyMessageFromServer_block_invoke_cold_1(const CMBlockBufferCustomBlockSource *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFC0E1uLL, "<< FigXPC >>", a1, v11, v12, v13, a9);
}

size_t figXPC_RegisterServedObjectWithID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x16BA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t figXPC_CreateNewConnectionInfo_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFC0EAuLL, "<< FigXPC >>", 0x134B, v10, v11, v12, a9);
}

size_t figXPC_CreateNewConnectionInfo_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFC0E9uLL, "<< FigXPC >>", 0x1348, v10, v11, v12, a9);
}

__CFDictionary *figXPCCopySanitizedCFDictionary(__CFDictionary *result)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E6966050];
  v4[0] = *MEMORY[0x1E69660F8];
  v4[1] = v1;
  if (result)
  {
    v2 = result;
    v3 = CFGetTypeID(result);
    if (v3 == CFDictionaryGetTypeID())
    {
      return FigCFDictionaryCreateCopyRemovingKeys(v2, v4, 2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t FigXPCMessageSetBlockBuffer(void *a1, char *a2, CMBlockBufferRef theBuffer)
{
  address = 0;
  totalLengthOut = 0;
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  blockBufferOut = 0;
  v22 = 0;
  v3 = MEMORY[0x1E69E9A60];
  if (!theBuffer)
  {
LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v19 = 4294950016;
    v20 = 843;
LABEL_26:
    DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v19, "<<<< FigXPCUtilities >>>>", v20, v16, v17, v18, v21);
    goto LABEL_27;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v19 = 4294950016;
    v20 = 844;
    goto LABEL_26;
  }

  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (DataPointer)
  {
    goto LABEL_27;
  }

  v8 = totalLengthOut;
  if (!totalLengthOut)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v19 = 4294954590;
    v20 = 848;
    goto LABEL_26;
  }

  if (totalLengthOut >= *MEMORY[0x1E69E9AC8])
  {
    DataPointer = vm_allocate(*v3, &address, totalLengthOut, 1543503873);
    if (!DataPointer)
    {
      DataPointer = CMBlockBufferCopyDataBytes(theBuffer, 0, totalLengthOut, address);
      if (!DataPointer)
      {
        v12 = FigXPCMessageSetAndConsumeVMData(a1, a2, address, totalLengthOut);
        address = 0;
        if (v12)
        {
          v13 = v12;
          goto LABEL_20;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    if (lengthAtOffsetOut == totalLengthOut)
    {
LABEL_11:
      xpc_dictionary_set_data(a1, a2, dataPointerOut, v8);
LABEL_15:
      FigXPCMessageGetOpCode(a1, &v22);
      if (gGMFigKTraceEnabled == 1)
      {
        strncpy(__dst, a2, 8uLL);
        kdebug_trace();
      }

      goto LABEL_17;
    }

    DataPointer = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], theBuffer, *MEMORY[0x1E695E480], 0, 0, totalLengthOut, 0, &blockBufferOut);
    if (!DataPointer)
    {
      DataPointer = OUTLINED_FUNCTION_7_25(blockBufferOut, v9, v10, v11, &dataPointerOut);
      if (!DataPointer)
      {
        v8 = totalLengthOut;
        goto LABEL_11;
      }
    }
  }

LABEL_27:
  v13 = DataPointer;
LABEL_18:
  if (address)
  {
    MEMORY[0x19A8DA090](*v3, address, totalLengthOut);
  }

LABEL_20:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v13;
}

size_t FigXPCMessageSetFormatDescriptionArray(void *a1, const char *a2, const __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v18 = 0;
  v19 = 0;
  if (!a3)
  {
    return 0;
  }

  if (a1)
  {
    if (a2)
    {
      result = FigRemote_CreateSerializedAtomDataForFormatDescriptions(a3, &v18, *MEMORY[0x1E69E9AC8], &v19, a5, a6, a7, a8, v18);
      if (result)
      {
        return result;
      }

      xpc_dictionary_set_data(a1, a2, v18, v19);
      MEMORY[0x19A8DA090](*MEMORY[0x1E69E9A60], v18, v19);
      return 0;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v9;
    v17 = 1150;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v9;
    v17 = 1149;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", v17, v16, v14, v15, a9);
}

size_t FigXPCMessageAddCMSampleBufferForPID(void *a1, CMSampleBufferRef sbuf, const __CFArray *a3, unsigned int a4, uint64_t a5, const opaqueCMFormatDescription **a6, uint64_t *a7, int a8)
{
  v65 = 0;
  v9 = *a6;
  v71 = 0;
  v10 = *a7;
  v69 = 0;
  size = 0;
  v67 = 0;
  v68 = 0;
  cf = 0;
  if (!sbuf)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v52 = v8;
    v53 = 4294951145;
    v54 = 1445;
    goto LABEL_48;
  }

  v18 = a4;
  if (CMSampleBufferDataIsReady(sbuf))
  {
    v67 = CFRetain(sbuf);
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_3_41();
      v53 = 4294951145;
      v54 = 1453;
      goto LABEL_48;
    }

    if ((v18 & 2) == 0)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_3_41();
      v53 = 4294951145;
      v54 = 1454;
      goto LABEL_48;
    }

    CopyWithNoData = FigSampleBufferCreateCopyWithNoData(*MEMORY[0x1E695E480], sbuf, &v67);
    if (CopyWithNoData)
    {
      goto LABEL_49;
    }
  }

  if (!v10)
  {
    v20 = FigCopyCommonMemoryPool();
    if (v20)
    {
      v10 = v20;
      *a7 = v20;
      goto LABEL_10;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_3_41();
    v53 = 4294951146;
    v54 = 1464;
LABEL_48:
    CopyWithNoData = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v53, "<<<< FigXPCUtilities >>>>", v54, v52, v50, v51, v55);
    goto LABEL_49;
  }

LABEL_10:
  CopyWithNoData = FigRemote_CopyReplacementAttachmentsForSampleBuffer(v67, a3, &cf, &v65);
  if (CopyWithNoData)
  {
    goto LABEL_49;
  }

  CopyWithNoData = FigRemote_WriteSerializedAtomDataForSampleBufferExcludingDataBufferWithOptionsForPID(v67, cf, v65, (a4 >> 2) & 1, 0, 0, &size, v9, 0, 0, 0, a8);
  if (CopyWithNoData)
  {
    goto LABEL_49;
  }

  v22 = size;
  if (size <= 0x3000)
  {
    v36 = malloc_type_calloc(1uLL, size, 0xA66077BAuLL);
    v68 = v36;
    if (v36)
    {
      v37 = v36;
      OUTLINED_FUNCTION_5_35();
      v43 = FigRemote_WriteSerializedAtomDataForSampleBufferExcludingDataBufferWithOptionsForPID(v38, v39, v40, v41, v37, v42, 0, v9, v55, v57, v59, valuePtr);
      if (v43)
      {
        v47 = v43;
LABEL_29:
        free(v37);
        goto LABEL_30;
      }

      xpc_dictionary_set_data(a1, "SerializedMetadata-Inline", v37, size);
      if ((v18 & 2) != 0)
      {
        goto LABEL_22;
      }

LABEL_21:
      v44 = FigXPCMessageAddDataBufferFromCMSampleBuffer(a1, v67);
      if (v44)
      {
        v47 = v44;
LABEL_27:
        if (v22 > 0x3000)
        {
          goto LABEL_30;
        }

        v37 = v68;
        goto LABEL_29;
      }

LABEL_22:
      v45 = *a6;
      v46 = v71;
      *a6 = v71;
      if (v46)
      {
        CFRetain(v46);
      }

      if (v45)
      {
        CFRelease(v45);
      }

      v47 = 0;
      goto LABEL_27;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_3_41();
    v53 = 4294951146;
    v54 = 1478;
    goto LABEL_48;
  }

  CopyWithNoData = FigMemoryPoolCreateBlockBuffer(v10, size, &v69, v21);
  if (!CopyWithNoData)
  {
    OUTLINED_FUNCTION_7_25(v69, v23, v24, v25, &v68);
    OUTLINED_FUNCTION_5_35();
    CopyWithNoData = FigRemote_WriteSerializedAtomDataForSampleBufferExcludingDataBufferWithOptionsForPID(v26, v27, v28, v29, v30, v31, 0, v9, v55, v57, v59, valuePtr);
    if (!CopyWithNoData)
    {
      CopyWithNoData = FigMemoryOriginSetBlockBufferInXPCMessage(a5, a1, "SerializedMetadata-PooledBBuf", v69, v32, v33, v34, v35, v56, v58, v60, valuePtra, v63, v8, a5, v65, cf, v67, v68, v69, size, v71, v72, v73, v74, v75);
      if (!CopyWithNoData)
      {
        if ((v18 & 2) != 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }
  }

LABEL_49:
  v47 = CopyWithNoData;
LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  return v47;
}

uint64_t FigXPCMessageCopyDataBufferFromCMSampleBufferMessage(const __CFAllocator *a1, void *a2, uint64_t a3, CMBlockBufferRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v17 = 0;
  if (a4)
  {
    result = FigXPCMessageCopyBlockBufferUsingMemoryRecipient(a1, a2, "SampleData-PooledBBuf", a3, &v17);
    if (result)
    {
      return result;
    }

    v13 = v17;
    if (!v17)
    {
      result = FigXPCMessageCreateBlockBufferDataWithSize(*MEMORY[0x1E695E480], a2, "SampleData-Inline", 0, &v17);
      if (result)
      {
        return result;
      }

      v13 = v17;
    }

    result = 0;
    *a4 = v13;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E9uLL, "<<<< FigXPCUtilities >>>>", 0x5FA, v9, v15, v16, a9);
  }

  return result;
}

size_t FigXPCMessageCopyCMSampleBufferWithLastCryptor(const __CFAllocator *a1, xpc_object_t xdict, uint64_t a3, char a4, const opaqueCMFormatDescription **a5, const __CFAllocator **a6, CMSampleBufferRef *a7)
{
  data = 0;
  theBuffer = 0;
  cf = 0;
  length = 0;
  SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor = FigMemoryRecipientCopyBlockBufferFromXPCMessage(a1, a3, xdict, "SerializedMetadata-PooledBBuf", &theBuffer);
  if (!SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor)
  {
    if (theBuffer)
    {
      OUTLINED_FUNCTION_7_25(theBuffer, v15, v16, v17, &data);
      length = CMBlockBufferGetDataLength(theBuffer);
    }

    else
    {
      data = xpc_dictionary_get_data(xdict, "SerializedMetadata-Inline", &length);
    }

    SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor = FigXPCMessageCopyDataBufferFromCMSampleBufferMessage(a1, xdict, a3, &cf, v18, v19, v20, v21, cf);
    if (!SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor)
    {
      SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor = FigRemote_CreateSampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor(a1, data, length, (a4 & 1) == 0, cf, a5, a6, a7);
    }
  }

  v22 = SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor;
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v22;
}

size_t FigXPCMessageSetCFObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7FuLL, "<<<< FigXPCUtilities >>>>", 0x12E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFObject_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x126, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFObject_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x125, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x15A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7FuLL, "<<<< FigXPCUtilities >>>>", 0x160, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x159, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFDictionary_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x158, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x141, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFURL_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7FuLL, "<<<< FigXPCUtilities >>>>", 0x146, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFURL_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x140, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFURL_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x13F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x174, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFString_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7FuLL, "<<<< FigXPCUtilities >>>>", 0x177, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFString_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x173, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFString_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x172, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFNumber_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x187, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFNumber_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x186, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFBoolean_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x197, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFBoolean_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x196, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x1AA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7FuLL, "<<<< FigXPCUtilities >>>>", 0x1AD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFArray_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1A9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFArray_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1A8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFDate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x1BF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFDate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1BE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFDate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1BD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7DuLL, "<<<< FigXPCUtilities >>>>", 0x1DB, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1DA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1D9, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetAndConsumeVMData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7EuLL, "<<<< FigXPCUtilities >>>>", 0x1FD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetAndConsumeVMData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7EuLL, "<<<< FigXPCUtilities >>>>", 0x1F8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetAndConsumeVMData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1F5, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetAndConsumeVMData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1EF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetAndConsumeVMData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x1EE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFError_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x211, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCFError_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x210, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFError_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x224, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x299, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

BOOL FigXPCMessageCopyCFDictionary_cold_2()
{
  OUTLINED_FUNCTION_11_1();
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v6 = OUTLINED_FUNCTION_4_34("%s signalled err=%d at <>:%d", v0, v1, "<<<< FigXPCUtilities >>>>", v2, v3, v4, v5, v8);
  return OUTLINED_FUNCTION_1_58(v6);
}

size_t FigXPCMessageCopyCFObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7FuLL, "<<<< FigXPCUtilities >>>>", 0x241, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFObject_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x23A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFString_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x257, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFNumber_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x26D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFBoolean_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x283, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x2AF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFDate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7EuLL, "<<<< FigXPCUtilities >>>>", 0x2CE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFDate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x2C6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x2E6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyCFURL_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x2FC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCreateBlockBufferDataWithSize_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x324, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCMTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x37B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCMTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x37A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageGetCMTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7CuLL, "<<<< FigXPCUtilities >>>>", 0x390, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageGetCMTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x38C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCArraySetCMTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x39F, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCArraySetCMTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3A2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCArraySetCMTime_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x39E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCArrayGetCMTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3BC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCArrayGetCMTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7CuLL, "<<<< FigXPCUtilities >>>>", 0x3C1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCArrayGetCMTime_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3BA, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCMTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3CF, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCMTimeRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3CE, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageGetCMTimeRange_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7CuLL, "<<<< FigXPCUtilities >>>>", 0x3E4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageGetCMTimeRange_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3E0, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCMTimeMapping_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3F2, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetCMTimeMapping_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x3F1, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageGetCMTimeMapping_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7CuLL, "<<<< FigXPCUtilities >>>>", 0x408, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageGetCMTimeMapping_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x403, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetOSStatus_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x414, v10, v11, v12, a9);
}

size_t FigXPCMessageSetOSStatus_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x413, v10, v11, v12, a9);
}

size_t FigXPCMessageGetOSStatus_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x421, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageGetOSStatus_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x420, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetInt32_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x430, v10, v11, v12, a9);
}

size_t FigXPCMessageSetInt32_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x42F, v10, v11, v12, a9);
}

size_t FigXPCMessageGetInt32_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x43D, v10, v11, v12, a9);
}

size_t FigXPCMessageGetInt32_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x43C, v10, v11, v12, a9);
}

size_t FigXPCMessageSetUInt32_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x44F, v10, v11, v12, a9);
}

size_t FigXPCMessageSetUInt32_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x44E, v10, v11, v12, a9);
}

size_t FigXPCMessageGetUInt32_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x45A, v10, v11, v12, a9);
}

size_t FigXPCMessageGetUInt32_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x459, v10, v11, v12, a9);
}

size_t FigXPCMessageGetBoolean_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x46E, v10, v11, v12, a9);
}

size_t FigXPCMessageGetBoolean_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x46D, v10, v11, v12, a9);
}

size_t FigXPCMessageCopyFormatDescriptionArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x498, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x4AD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetFormatDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x4AC, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyFormatDescription2_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x4C6, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCConnectionHasEntitlement_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x4E2, v10, v11, v12, a9);
}

size_t FigXPCConnectionHasEntitlement_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x4E1, v10, v11, v12, a9);
}

size_t FigXPCMessageSetBlockBufferUsingMemoryOrigin_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC7EuLL, "<<<< FigXPCUtilities >>>>", 0x54A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetBlockBufferUsingMemoryOrigin_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x53C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyBlockBufferUsingMemoryRecipient_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x56A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyBlockBufferUsingMemoryRecipient_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x569, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyBlockBufferUsingMemoryRecipient_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x568, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyBlockBufferUsingMemoryRecipient_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC80uLL, "<<<< FigXPCUtilities >>>>", 0x567, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageAddDataBufferFromCMSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<<<< FigXPCUtilities >>>>", 0x57C, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCMessageAddDataBufferFromCMSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0E9uLL, "<<<< FigXPCUtilities >>>>", 0x579, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t met_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v6 = 4294954516;
  if (a2 && a3)
  {
    v8[0] = DerivedStorage;
    v8[1] = a2;
    v8[2] = a3;
    v9 = 0;
    dispatch_sync_f(*DerivedStorage, v8, met_setPropertyOnQueue);
    return v9;
  }

  return v6;
}

void met_invalidateOnQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!*(CMBaseObjectGetDerivedStorage(a1) + 56))
  {
    *(DerivedStorage + 56) = 1;
    v3 = *(DerivedStorage + 8);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(DerivedStorage + 64);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(DerivedStorage + 16);
    if (v5 >= 1)
    {
      for (i = 0; i < v5; ++i)
      {
        v7 = *(*(DerivedStorage + 48) + 8 * i);
        if (v7)
        {
          CFRelease(v7);
          v5 = *(DerivedStorage + 16);
        }
      }
    }

    MallocZoneForMedia = FigGetMallocZoneForMedia();
    malloc_zone_free(MallocZoneForMedia, *(DerivedStorage + 48));
    v9 = FigGetMallocZoneForMedia();
    v10 = *(DerivedStorage + 40);

    malloc_zone_free(v9, v10);
  }
}

uint64_t met_subscribeToAllEventsOnQueue(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage(*a1);
  if (*(DerivedStorage + 16) < 1)
  {
LABEL_5:
    result = 0;
  }

  else
  {
    v5 = DerivedStorage;
    v6 = 0;
    while (1)
    {
      result = met_addSubscriberForEventID(v2, v6, v3);
      if (result)
      {
        break;
      }

      if (*(v5 + 16) <= ++v6)
      {
        goto LABEL_5;
      }
    }
  }

  *(a1 + 64) = result;
  return result;
}

void met_publishEventDispatch(uint64_t a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(*(CMBaseObjectGetVTable(v4) + 16) + 24);
  if (v5)
  {
    v6 = v5(v4);
  }

  else
  {
    v6 = -12782;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(v2);
  v8 = *(DerivedStorage[5] + 8 * (v6 >> 56)) + (v6 & 0xFFFFFFFFFFFFFFLL);
  if (v8 >= DerivedStorage[2])
  {
    OUTLINED_FUNCTION_1_21();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, 0xFFFFB405uLL, "metricevent", 0xD2, v40, v41, v42, v47);
    goto LABEL_47;
  }

  v9 = DerivedStorage[6];
  v10 = *(v9 + 8 * v8);
  if (!v10)
  {
LABEL_47:
    v13 = 0;
    goto LABEL_37;
  }

  Count = CFSetGetCount(*(v9 + 8 * v8));
  MallocZoneForMedia = FigGetMallocZoneForMedia();
  v13 = malloc_type_zone_calloc(MallocZoneForMedia, 1uLL, 8 * Count, 0xC0040B8AA526DuLL);
  if (v13)
  {
    CFSetGetValues(v10, v13);
    if (Count < 1)
    {
      goto LABEL_37;
    }

    v48 = v1;
    v14 = 0;
    while (1)
    {
      v15 = v13[v14];
      v16 = *(v15 + 2);
      if (v16)
      {
        v17 = CFRetain(v16);
      }

      else
      {
        v17 = 0;
      }

      v19 = *(v15 + 3);
      v18 = *(v15 + 4);
      if (v18)
      {
        dispatch_retain(*(v15 + 4));
      }

      if (!v17)
      {
        OUTLINED_FUNCTION_1_21();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 0xFFFFB405uLL, "metricevent", 0x138, v32, v33, v34, v48);
        if (!v18)
        {
          goto LABEL_32;
        }

LABEL_31:
        dispatch_release(v18);
        goto LABEL_32;
      }

      if (!*(v19 + 8) || !v18)
      {
        break;
      }

      v20 = FigGetMallocZoneForMedia();
      v21 = malloc_type_zone_calloc(v20, 1uLL, 0x28uLL, 0xE0040BA15B581uLL);
      if (!v21)
      {
        OUTLINED_FUNCTION_1_21();
        v28 = 315;
        goto LABEL_21;
      }

      v22 = v21;
      v21[1] = CFRetain(v17);
      v22[4] = v19;
      if (v2)
      {
        v23 = CFRetain(v2);
      }

      else
      {
        v23 = 0;
      }

      *v22 = v23;
      if (v3)
      {
        v29 = CFRetain(v3);
      }

      else
      {
        v29 = 0;
      }

      v22[2] = v29;
      if (v4)
      {
        v30 = CFRetain(v4);
      }

      else
      {
        v30 = 0;
      }

      v22[3] = v30;
      dispatch_async_f(v18, v22, met_issueSubscriberCallbackOnCallbackQueue);
LABEL_30:
      CFRelease(v17);
      if (v18)
      {
        goto LABEL_31;
      }

LABEL_32:
      if (Count == ++v14)
      {
        v1 = v48;
        goto LABEL_37;
      }
    }

    OUTLINED_FUNCTION_1_21();
    v28 = 312;
LABEL_21:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 0xFFFFB405uLL, "metricevent", v28, v25, v26, v27, v48);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_1_21();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, 0xFFFFCD41uLL, "metricevent", 0x1F3, v44, v45, v46, v47);
LABEL_37:
  v35 = FigGetMallocZoneForMedia();
  malloc_zone_free(v35, v13);
  if (*v1)
  {
    CFRelease(*v1);
  }

  v36 = *(v1 + 48);
  if (v36)
  {
    CFRelease(v36);
  }

  v37 = *(v1 + 56);
  if (v37)
  {
    CFRelease(v37);
  }

  v38 = FigGetMallocZoneForMedia();

  malloc_zone_free(v38, v1);
}

size_t FigMetricEventTimelineCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB405uLL, "metricevent", 0x308, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB405uLL, "metricevent", 0x305, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineCreate_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB405uLL, "metricevent", 0x2FE, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineCreate_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB405uLL, "metricevent", 0x2F3, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineCreate_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x2E3, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_registerSubscriber_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x193, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_registerSubscriber_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x192, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_registerSubscriber_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x191, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_registerSubscriber_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x190, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_subscribeByEventID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x1AC, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_subscribeByEventID_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x1AB, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_subscribeByClassID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x1C4, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_subscribeByClassID_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x1C3, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_subscribetoAllEvents_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x1DC, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_subscribetoAllEvents_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x1DB, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_publishEvent_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB405uLL, "metricevent", 0x23C, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_publishEvent_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x237, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_publishEvent_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB406uLL, "metricevent", 0x236, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_addSubscriberForEventID_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB404uLL, "metricevent", 0xE7, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_addSubscriberForEventID_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB405uLL, "metricevent", 0xEC, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_addSubscriberForEventID_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB404uLL, "metricevent", 0xE2, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_subscribeByClassIDOnQueue_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB404uLL, "metricevent", 0xFE, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_subscribeByClassIDOnQueue_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB405uLL, "metricevent", 0x107, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_subscribeByClassIDOnQueue_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB404uLL, "metricevent", 0x101, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t met_subscribeByClassIDOnQueue_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF60, 0xFFFFB404uLL, "metricevent", 0xFB, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t FigEndpointCopyActiveEndpointOfType()
{
  v3 = v2;
  OUTLINED_FUNCTION_18_4();
  *v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  if (qword_1ED4CDB50 == -1)
  {
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_13:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v23 = 3144;
LABEL_15:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFBEB0uLL, "<< FigEndpointXPCRemote >>", v23, v20, v21, v22, v24, v25, *v26, v27);
LABEL_16:
    v17 = OUTLINED_FUNCTION_15_18();
    goto LABEL_11;
  }

  dispatch_once(&qword_1ED4CDB50, &__block_literal_global_60);
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (!v0)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v23 = 3145;
    goto LABEL_15;
  }

  *v0 = 0;
  if (remoteXPCFigEndpoint_getSharedXPCClient(0, &v24))
  {
    goto LABEL_16;
  }

  if (qword_1ED4CDB58 != -1)
  {
    dispatch_once(&qword_1ED4CDB58, &__block_literal_global_22);
  }

  if (FigXPCCreateBasicMessage(0x61637476u, 0, v26))
  {
    goto LABEL_16;
  }

  v4 = FigXPCMessageSetCFString(*v26, "EndpointType", v1);
  if (v4)
  {
    goto LABEL_16;
  }

  v3 = OUTLINED_FUNCTION_23_12(v4, v5, v6, v7, v8, v9, v10, v11, v24, v25, *v26);
  v17 = v25;
  if (!v3)
  {
    v3 = FigEndpointXPCRemoteRetainCopiedEndpointFromReply(v25, &v27, v0, v12, v13, v14, v15, v16, v24);
    v17 = v25;
  }

LABEL_11:
  FigXPCRelease(v17);
  FigXPCRelease(*v26);
  return v3;
}

size_t remoteXPCFigEndpoint_getSharedXPCClient(unint64_t a1, unint64_t **a2)
{
  v108 = *MEMORY[0x1E69E9840];
  if (a1 > 2)
  {
    return 4294950576;
  }

  os_unfair_lock_lock(&_MergedGlobals_67);
  v6 = (&_MergedGlobals_67 + 16 * a1);
  if (*(v6 + 14) || (v35 = v6[6]) == 0)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DeathNoticeName", @"Endpoint_ServerConnectionDied");
    CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_PrivilegedConnection", *MEMORY[0x1E695E4D0]);
    v16 = OUTLINED_FUNCTION_21_14(v8, v9, v10, v11, v12, v13, v14, v15, v71, v76, v81, v3, v90, v95, SBYTE2(v95), SBYTE3(v95), SHIDWORD(v95));
    v24 = OUTLINED_FUNCTION_27_10(v16, v17, v18, v19, v20, v21, v22, v23, v72, v77, v82, v86, v91, v96, v100, v102, v104);
    if (v24)
    {
      v27 = v2;
    }

    else
    {
      v27 = v2 & 0xFFFFFFFE;
    }

    v92 = a2;
    if (v27)
    {
      v28 = FigEndpointXPCServerNameForSource(a1, v25);
      *v106 = 136315650;
      *&v106[4] = "remoteXPCFigEndpoint_getSharedXPCClient";
      *&v106[12] = 2048;
      *&v106[14] = a1;
      *&v106[22] = 2080;
      LODWORD(v78) = 32;
      v24 = OUTLINED_FUNCTION_20_13(v28, v29, v30, v31, &dword_196FA7000, v32, v33, "<< FigEndpointXPCRemote >> %s: (%llx / %s) creating client", v106, v78, v83, v87, a2, v97, *v106, *&v106[8], *&v106[16], v28);
      v34 = v24;
      v2 = HIDWORD(v97);
    }

    else
    {
      v34 = 0;
    }

    OUTLINED_FUNCTION_19_14(v24, v25, v26, v34);
    v38 = FigEndpointXPCServerNameForSource(a1, v37);
    v39 = FigXPCRemoteClientCreate(v38, remoteXPCFigEndpoint_getSharedXPCClient_clientCallbacks, Mutable, v6 + 6);
    *(v6 + 14) = v39;
    v47 = OUTLINED_FUNCTION_21_14(v39, v40, v41, v42, v43, v44, v45, v46, v73, v78, v83, v87, v92, v97, SBYTE2(v97), SBYTE3(v97), SHIDWORD(v97));
    v55 = OUTLINED_FUNCTION_27_10(v47, v48, v49, v50, v51, v52, v53, v54, v74, v79, v84, v88, v93, v98, v101, v103, v105);
    if (v55)
    {
      v58 = v2;
    }

    else
    {
      v58 = v2 & 0xFFFFFFFE;
    }

    if (v58)
    {
      v59 = FigEndpointXPCServerNameForSource(a1, v56);
      v60 = *(v6 + 14);
      *v106 = 136315650;
      *&v106[4] = "remoteXPCFigEndpoint_getSharedXPCClient";
      *&v106[12] = 2080;
      *&v106[14] = v59;
      *&v106[22] = 1024;
      LODWORD(v107) = v60;
      LODWORD(v80) = 28;
      v55 = OUTLINED_FUNCTION_20_13(v59, v61, v62, v63, &dword_196FA7000, v64, v65, "<< FigEndpointXPCRemote >> %s: Endpoint Remote Client %s created, result = %d", v106, v80, v85, v89, v94, v99, *v106, *&v106[8], *&v106[16], v107);
      v66 = v55;
    }

    else
    {
      v66 = 0;
    }

    OUTLINED_FUNCTION_19_14(v55, v56, v57, v66);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v35 = v6[6];
    v36 = *(v6 + 14);
    a2 = v94;
    if (!v35)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v36, "<< FigEndpointXPCRemote >>", 0x4DD, v89, v68, v69, v75);
      goto LABEL_22;
    }
  }

  else
  {
    v36 = 0;
  }

  *a2 = v35;
LABEL_22:
  os_unfair_lock_unlock(&_MergedGlobals_67);
  return v36;
}

void *FigEndpointXPCRemoteRetainCopiedEndpointFromReply(void *result, CMBlockBufferRef **a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  if (result)
  {
    if (a3)
    {
      v11 = result;
      uint64 = xpc_dictionary_get_uint64(result, "EndpointObjectID");
      if (uint64)
      {
        v13 = xpc_dictionary_get_uint64(v11, "EndpointXPCSource");
        if (FigEndpointXPCSourceNeedsSubEndpoint(v13))
        {
          v17 = xpc_dictionary_get_uint64(v11, "SubEndpointObjectID");
          v18 = xpc_dictionary_get_uint64(v11, "SubEndpointXPCSource");
        }

        else
        {
          v17 = 0;
          v18 = 0;
        }

        result = remoteXPCEndpoint_retainCopiedEndpointForSource(uint64, v13, v17, v18, a3, v14, v15, v16, v23);
        if (a2 && !result)
        {
          goto LABEL_5;
        }
      }

      else
      {
        *a3 = 0;
        if (a2)
        {
LABEL_5:
          result = 0;
          *a2 = uint64;
          return result;
        }

        return 0;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFCE14uLL, "<< FigEndpointXPCRemote >>", 0xD5C, v20, v21, v22, a9);
    }
  }

  return result;
}

uint64_t FigEndpointIsCarPlayActive(BOOL *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_14_17();
  if (qword_1ED4CDB50 != -1)
  {
    dispatch_once(&qword_1ED4CDB50, &__block_literal_global_60);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_11:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBEB0uLL, "<< FigEndpointXPCRemote >>", 0xC7A, v10, v11, v12, v13);
LABEL_12:
    v7 = OUTLINED_FUNCTION_25_9();
    goto LABEL_9;
  }

  if (!a1)
  {
    goto LABEL_11;
  }

LABEL_3:
  *a1 = 0;
  if (remoteXPCFigEndpoint_getSharedXPCClient(0, &v14))
  {
    goto LABEL_12;
  }

  if (qword_1ED4CDB58 != -1)
  {
    dispatch_once(&qword_1ED4CDB58, &__block_literal_global_22);
  }

  if (FigXPCCreateBasicMessage(0x61766C62u, 0, &v16))
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_35();
  v2 = FigXPCRemoteClientSendSyncMessageCreatingReply(v4, v5, v6);
  v7 = xdict;
  if (!v2)
  {
    *a1 = xpc_dictionary_get_BOOL(xdict, ".Value");
    v7 = xdict;
  }

LABEL_9:
  FigXPCRelease(v7);
  FigXPCRelease(v16);
  return v2;
}

size_t FigEndpointXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*(DerivedStorage + 32));
  if (!a2)
  {
    v12 = 0;
    v11 = 4294950576;
    goto LABEL_9;
  }

  if (a1 && CMBaseObjectGetVTable(a1) == kFigEndpointRemoteXPC_EndpointAggregateVTable)
  {
    if (*(DerivedStorage + 40))
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v9 = 4294950573;
      v10 = 3265;
    }

    else
    {
      if (!*(DerivedStorage + 41))
      {
        v11 = 0;
        v12 = *DerivedStorage;
        goto LABEL_9;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v9 = 4294950574;
      v10 = 3266;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v9 = 4294954516;
    v10 = 3264;
  }

  v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v9, "<< FigEndpointXPCRemote >>", v10, v6, v7, v8, v14);
  v12 = 0;
LABEL_9:
  FigSimpleMutexUnlock(*(DerivedStorage + 32));
  *a2 = v12;
  return v11;
}

size_t FigEndpointXPCRemoteWriteEndpointToMessageForOtherProcess(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  value = 0;
  if (a1 && (v10 = a2, CMBaseObjectGetVTable(a1) == kFigEndpointRemoteXPC_EndpointAggregateVTable))
  {
    result = FigEndpointXPCRemoteObtainObjectIDForOtherProcess(a1, v10, &value);
    if (!result)
    {
      v17 = *(CMBaseObjectGetDerivedStorage(a1) + 8);
      xpc_dictionary_set_uint64(a3, "EndpointObjectID", value);
      xpc_dictionary_set_uint64(a3, "EndpointXPCSource", v17);
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFCE14uLL, "<< FigEndpointXPCRemote >>", 0xCD4, v13, v14, v15, a9);
  }

  return result;
}

uint64_t FigEndpointXPCRemoteObtainObjectIDForOtherProcess(uint64_t a1, int a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_14_17();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v6);
  v27 = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v26 = 3350;
LABEL_15:
    SharedXPCClient = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 0xFFFFCE14uLL, "<< FigEndpointXPCRemote >>", v26, v23, v24, v25, v27);
LABEL_16:
    v20 = SharedXPCClient;
    goto LABEL_11;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v26 = 3351;
    goto LABEL_15;
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v26 = 3352;
    goto LABEL_15;
  }

  v8 = DerivedStorage;
  if (qword_1ED4CDB50 != -1)
  {
    dispatch_once(&qword_1ED4CDB50, &__block_literal_global_60);
  }

  SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(*(v8 + 8), &v27);
  if (SharedXPCClient)
  {
    goto LABEL_16;
  }

  SharedXPCClient = FigEndpointXPCRemoteGetObjectID(a1, &v30);
  if (SharedXPCClient)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_4_35();
  SharedXPCClient = FigXPCCreateBasicMessage(0x63656670u, v10, v11);
  if (SharedXPCClient)
  {
    goto LABEL_16;
  }

  xpc_dictionary_set_int64(xdict, "OtherProcessPID", a2);
  v20 = OUTLINED_FUNCTION_23_12(v12, v13, v14, v15, v16, v17, v18, v19, v27, v28, xdict);
  if (!v20)
  {
    *a3 = xpc_dictionary_get_uint64(v28, ".objectID");
  }

LABEL_11:
  FigXPCRelease(xdict);
  FigXPCRelease(v28);
  return v20;
}

uint64_t FigEndpointXPCRemotePing(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  if (qword_1ED4CDB50 != -1)
  {
    dispatch_once(&qword_1ED4CDB50, &__block_literal_global_60);
  }

  IsAirplaydEnabled = FigIsAirplaydEnabled(a1, a2);
  SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(2 * (IsAirplaydEnabled != 0), &v8);
  if (SharedXPCClient)
  {
    v6 = SharedXPCClient;
    v5 = 0;
  }

  else
  {
    v4 = FigXPCCreateBasicMessage(0x2E706E67u, 0, &v9);
    v5 = v9;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = FigXPCRemoteClientSendSyncMessage(v8, v9);
      v5 = v9;
    }
  }

  FigXPCRelease(v5);
  return v6;
}

size_t remoteXPCEndpoint_retainCopiedEndpointForSource(CMBlockBufferRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v61 = 0;
  v62 = 0;
  if (qword_1ED4CDB50 != -1)
  {
    dispatch_once(&qword_1ED4CDB50, &__block_literal_global_60);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_47:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v55 = 3073;
    goto LABEL_49;
  }

  if (!a1)
  {
    goto LABEL_47;
  }

LABEL_3:
  if (a5)
  {
    if ((a2 & 0x1000) == 0)
    {
      Base = FigEndpointXPCSourceGetBase(a2);
      SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(Base, &v61);
      if (SharedXPCClient)
      {
        return SharedXPCClient;
      }

      v16 = FigXPCRemoteClientRetainCopiedObject(v61, a1, &v62);
      version = v62;
      if (!v16)
      {
        if (v62)
        {
          v18 = 0;
LABEL_29:
          *a5 = version;
          return v18;
        }

        v64 = 0;
        v65 = 0;
        memset(&cf, 0, sizeof(cf));
        v30 = FigEndpointXPCSourceGetBase(a2);
        v31 = remoteXPCFigEndpoint_getSharedXPCClient(v30, &v64);
        if (!v31)
        {
          v33 = (a2 >> 13) & 1;
          v34 = *MEMORY[0x1E695E480];
          v35 = (v33 ? FigEndpointAggregateGetClassID(v31, v32) : FigEndpointExtendedGetClassID(v31, v32));
          v31 = CMDerivedObjectCreate(v34, kFigEndpointRemoteXPC_EndpointAggregateVTable, v35, &v65, v36, v37, v38, v39, v61);
          if (!v31)
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage(v65);
            *DerivedStorage = a1;
            *(DerivedStorage + 96) = 1;
            *(DerivedStorage + 8) = FigEndpointXPCSourceGetBase(a2);
            *(DerivedStorage + 16) = (a2 & 0x2000) != 0;
            if (!v33 || (v31 = FigEndpointRPCCacheCreate((DerivedStorage + 48), 1), !v31))
            {
              cf.version = 0;
              cf.retain = remoteXPCEndpoint_cloneCompletionCallback;
              cf.copyDescription = 0;
              cf.equal = 0;
              cf.release = remoteXPCEndpoint_freeCompletionCallback;
              v41 = FigSimpleMutexCreate();
              *(DerivedStorage + 32) = v41;
              if (!v41)
              {
                v18 = 4294950575;
                goto LABEL_63;
              }

              v42 = CFDictionaryCreateMutable(v34, 0, 0, &cf);
              *(DerivedStorage + 88) = v42;
              if (v42)
              {
                v43 = dispatch_queue_create("com.apple.coremedia.remoteendpoint.notification", 0);
                *(DerivedStorage + 24) = v43;
                if (v43)
                {
                  Mutable = CFDictionaryCreateMutable(v34, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  *(DerivedStorage + 56) = Mutable;
                  if (Mutable)
                  {
                    v45 = CFArrayCreateMutable(v34, 0, MEMORY[0x1E695E9C0]);
                    *(DerivedStorage + 80) = v45;
                    if (v45)
                    {
                      FigXPCRemoteClientAssociateObject(v64, v65, a1, v46, v47, v48, v49, v50, v61);
                      v18 = 0;
                      v62 = v65;
LABEL_44:
                      version = v62;
                      goto LABEL_29;
                    }

                    v56 = 2988;
                  }

                  else
                  {
                    v56 = 2985;
                  }
                }

                else
                {
                  v56 = 2982;
                }
              }

              else
              {
                v56 = 2979;
              }

              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_0_20();
              v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, 0xFFFFBEAFuLL, "<< FigEndpointXPCRemote >>", v56, v58, v59, v60, v61);
            }
          }
        }

        v18 = v31;
LABEL_63:
        if (v65)
        {
          CFRelease(v65);
        }

        goto LABEL_44;
      }

      v18 = v16;
LABEL_54:
      if (version)
      {
        CFRelease(version);
      }

      return v18;
    }

    cf.version = 0;
    v64 = 0;
    v65 = 0;
    if (qword_1ED4CDB68 != -1)
    {
      dispatch_once(&qword_1ED4CDB68, &__block_literal_global_31);
    }

    FigSimpleMutexLock(qword_1ED4CDB70);
    v19 = FigEndpointXPCSourceGetBase(a2);
    v23 = remoteXPCEndpoint_retainCopiedEndpointForSource(a1, v19, 0, 0, &v65, v20, v21, v22, v61);
    if (!v23)
    {
      v24 = FigEndpointXPCSourceGetBase(a4);
      v23 = remoteXPCEndpoint_retainCopiedEndpointForSource(a3, v24, 0, 0, &v64, v25, v26, v27, v61);
      if (!v23)
      {
        if (FigEndpointIsXPCDemux(qword_1ED4CDB60) && FigEndpointXPCDemuxEndpointsMatch(qword_1ED4CDB60, v65, v64))
        {
          cf.version = CFRetain(qword_1ED4CDB60);
LABEL_21:
          v18 = 0;
          version = cf.version;
          v62 = cf.version;
          cf.version = 0;
          goto LABEL_22;
        }

        v23 = FigEndpointXPCDemuxCreate(v65, v64, &cf);
        if (!v23)
        {
          v28 = qword_1ED4CDB60;
          qword_1ED4CDB60 = cf.version;
          if (cf.version)
          {
            CFRetain(cf.version);
          }

          if (v28)
          {
            CFRelease(v28);
          }

          goto LABEL_21;
        }
      }
    }

    v18 = v23;
    version = 0;
LABEL_22:
    FigSimpleMutexUnlock(qword_1ED4CDB70);
    if (cf.version)
    {
      CFRelease(cf.version);
    }

    if (v65)
    {
      CFRelease(v65);
    }

    if (v64)
    {
      CFRelease(v64);
    }

    if (!v18)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_20();
  v55 = 3074;
LABEL_49:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v51, 0xFFFFCE14uLL, "<< FigEndpointXPCRemote >>", v55, v52, v53, v54, a9);
}

void remoteXPCEndpointClient_DeadConnectionCallback(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return;
  }

  v7 = Mutable;
  FigSimpleMutexLock(*(DerivedStorage + 32));
  *(DerivedStorage + 40) = 257;
  FigCFDictionarySetInt64(v7, @"ActivationSeed", *(DerivedStorage + 64), v8, v9, v10, v11, v12);
  FigCFDictionarySetInt64(v7, @"Features", *(DerivedStorage + 72), v13, v14, v15, v16, v17);
  if (!*(DerivedStorage + 72))
  {
    v20 = 0;
    v19 = 0;
    goto LABEL_7;
  }

  v18 = *(DerivedStorage + 184);
  if (!v18)
  {
    v19 = 0;
    goto LABEL_9;
  }

  v19 = FigCFWeakReferenceHolderCopyReferencedObject(v18);
  if (v19)
  {
LABEL_9:
    v1 = *(DerivedStorage + 160);
    v2 = *(DerivedStorage + 64);
    v20 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt64(v20, @"Status", -16722, v21, v22, v23, v24, v25);
    FigCFDictionarySetValue(v20, @"FailureType", @"FailureType_Disconnected");
    goto LABEL_10;
  }

  v20 = 0;
LABEL_7:
  OUTLINED_FUNCTION_12_14();
LABEL_10:
  FigSimpleMutexUnlock(*(DerivedStorage + 32));
  v26 = CMBaseObjectGetDerivedStorage(a1);
  FigSimpleMutexLock(*(v26 + 32));
  Copy = CFDictionaryCreateCopy(v5, *(v26 + 88));
  CFDictionaryRemoveAllValues(*(v26 + 88));
  v28 = *(v26 + 64);
  FigSimpleMutexUnlock(*(v26 + 32));
  OUTLINED_FUNCTION_3_1();
  v35 = 0x40000000;
  v36 = __FigEndpointRemoteXPC_runAllCallbacks_block_invoke;
  v37 = &__block_descriptor_tmp_11_8;
  v38 = Copy;
  v39 = v28;
  v40 = -16722;
  dispatch_async(v29, block);
  if (v1)
  {
    remoteXPCEndpointClient_callDelegateHandleFailed(a1, 0, v2, 0, v1, v19, v20);
  }

  v30 = *(DerivedStorage + 24);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification(v30, DefaultLocalCenter, @"Endpoint_Dissociated", a1, v7, 0, v32, v33);
  if (v20)
  {
    CFRelease(v20);
  }

  CFRelease(v7);
  if (v19)
  {
    CFRelease(v19);
  }
}

uint64_t remoteXPCEndpointClient_HandleClientMessage(void *a1, void *a2)
{
  HIDWORD(v45) = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v45 + 1);
  if (OpCode)
  {
    return OpCode;
  }

  if (HIDWORD(v45) != 1667329122)
  {
    if (HIDWORD(v45) != 1919116387)
    {
      if (HIDWORD(v45) != 1920230499)
      {
        return 4294966630;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
      *&v62 = 0;
      v64 = 0;
      v65[0] = 0;
      uint64 = xpc_dictionary_get_uint64(a2, "ActivationSeed");
      FigXPCMessageCopyCFString(a2, "DelegateFunctionType", &v62);
      FigSimpleMutexLock(*(DerivedStorage + 32));
      v27 = *(DerivedStorage + 184);
      if (v27)
      {
        v28 = FigCFWeakReferenceHolderCopyReferencedObject(v27);
        if (v28)
        {
          v5 = 0;
        }

        else
        {
          v5 = 4294949690;
        }
      }

      else
      {
        v5 = 0;
        v28 = 0;
      }

      v30 = *(DerivedStorage + 152);
      v29 = *(DerivedStorage + 160);
      FigSimpleMutexUnlock(*(DerivedStorage + 32));
      FigEndpointXPCRemoteRetainCopiedEndpointFromReply(a2, 0, v65, v31, v32, v33, v34, v35, v45);
      if (CFStringCompare(v62, @"hrar", 0))
      {
        if (CFStringCompare(v62, @"hrtf", 0))
        {
          v5 = 4294950570;
        }

        else
        {
          FigXPCMessageCopyCFDictionary(a2, "FailureInfo", &v64);
          v5 = remoteXPCEndpointClient_callDelegateHandleFailed(a1, v5, uint64, v65[0], v29, v28, v64);
          if (v64)
          {
            CFRelease(v64);
          }
        }
      }

      else
      {
        v36 = v65[0];
        CMBaseObjectGetDerivedStorage(a1);
        *&__dst[0] = 0;
        v37 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
        *v37 = FigXPCRetain(a2);
        if (!v5)
        {
          if (v30)
          {
            FigXPCMessageCopyCFString(a2, "AuthorizationType", __dst);
            CFRetain(a1);
            if (v36)
            {
              CFRetain(v36);
            }

            if (*&__dst[0])
            {
              CFRetain(*&__dst[0]);
            }

            OUTLINED_FUNCTION_9_19();
            v47 = 0x40000000;
            v48 = __remoteXPCEndpointClient_callDelegateHandleAuthRequired_block_invoke;
            v49 = &__block_descriptor_tmp_18_4;
            v50 = v30;
            v51 = a1;
            v52 = v36;
            v53 = uint64;
            v54 = v28;
            v55 = v38;
            v56 = v37;
            dispatch_async(v39, block);
            if (*&__dst[0])
            {
              CFRelease(*&__dst[0]);
            }

            v5 = 0;
            goto LABEL_58;
          }

          v5 = 4294949690;
        }

        CFRetain(a1);
        OUTLINED_FUNCTION_3_1();
        v47 = 0x40000000;
        v48 = __remoteXPCEndpointClient_callDelegateHandleAuthRequired_block_invoke_2;
        v49 = &__block_descriptor_tmp_19_6;
        v50 = a1;
        v51 = v37;
        dispatch_async(v44, block);
      }

LABEL_58:
      if (v65[0])
      {
        CFRelease(v65[0]);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      if (v62)
      {
        CFRelease(v62);
      }

      return v5;
    }

    v16 = CMBaseObjectGetDerivedStorage(a1);
    v64 = 0;
    v65[0] = 0;
    *&__dst[0] = 0;
    *(&__dst[0] + 1) = __dst;
    __dst[1] = 0x2000000000uLL;
    v17 = xpc_dictionary_get_uint64(a2, "ActivationSeed");
    FigXPCMessageCopyCFString(a2, "CommChannelUUID", v65);
    FigXPCMessageCopyCFString(a2, "DelegateFunctionType", &v64);
    FigSimpleMutexLock(*(v16 + 32));
    v18 = *(v16 + 136);
    if (v18)
    {
      v19 = FigCFWeakReferenceHolderCopyReferencedObject(v18);
      if (!v19)
      {
        v20 = 0;
        v5 = 4294949690;
        goto LABEL_25;
      }

      v5 = 0;
    }

    else
    {
      v5 = 0;
      v19 = 0;
    }

    v20 = 1;
LABEL_25:
    v21 = *(v16 + 120);
    v62 = *(v16 + 104);
    v63 = v21;
    FigSimpleMutexUnlock(*(v16 + 32));
    if (v20)
    {
      CFRetain(a1);
      FigXPCRetain(a2);
      if (v19)
      {
        CFRetain(v19);
      }

      if (v65[0])
      {
        CFRetain(v65[0]);
      }

      if (v64)
      {
        CFRetain(v64);
      }

      OUTLINED_FUNCTION_9_19();
      v47 = 0x40000000;
      v57 = v62;
      v58 = v63;
      v48 = __remoteXPCEndpointClient_handleRemoteControlDelegateCallback_block_invoke;
      v49 = &unk_1E74A6738;
      v50 = __dst;
      v51 = v22;
      v52 = a2;
      v53 = a1;
      v54 = v17;
      v55 = v65[0];
      v56 = v19;
      dispatch_async(v23, block);
    }

    if (v65[0])
    {
      CFRelease(v65[0]);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v64)
    {
      CFRelease(v64);
    }

    _Block_object_dispose(__dst, 8);
    return v5;
  }

  v6 = CMBaseObjectGetDerivedStorage(a1);
  memset(__dst, 0, 72);
  *&v62 = 0;
  v7 = xpc_dictionary_get_uint64(a2, "CompletionID");
  int64 = xpc_dictionary_get_int64(a2, "CompletionStatus");
  v9 = xpc_dictionary_get_uint64(a2, "ActivationSeed");
  v10 = xpc_dictionary_get_uint64(a2, "ActivationFeatures");
  FigXPCMessageCopyCFDictionary(a2, "SendCommandResponse", &v62);
  FigSimpleMutexLock(*(v6 + 32));
  Value = CFDictionaryGetValue(*(v6 + 88), v7);
  if (Value)
  {
    v12 = Value;
    memcpy(__dst, Value, 0x48uLL);
    remoteXPCEndpointClient_retainCompletionCallbackEntryFields(__dst);
    if (v12[1] && *(v12 + 40) && !int64)
    {
      *(v6 + 64) = v9;
      *(v6 + 72) = v10;
    }

    CFDictionaryRemoveValue(*(v6 + 88), v7);
    v13 = *&__dst[0];
    FigSimpleMutexUnlock(*(v6 + 32));
    if (v13)
    {
      if (*&__dst[2])
      {
        remoteXPCFigEndpoint_clearAggregateSubEndpointsDependentCache(v6);
      }

      if (v62)
      {
        CFRetain(v62);
      }

      remoteXPCEndpointClient_retainCompletionCallbackEntryFields(__dst);
      v14 = *(v6 + 24);
      OUTLINED_FUNCTION_3_1();
      v47 = 0x40000000;
      v48 = __remoteXPCEndpointClient_handleCompletionCallback_block_invoke;
      v49 = &__block_descriptor_tmp_16_4;
      memcpy((v15 + 32), __dst, 0x48uLL);
      *&v58 = v9;
      *(&v58 + 1) = v10;
      v59 = v62;
      v60 = int64;
      dispatch_async(v14, block);
      v5 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    FigSimpleMutexUnlock(*(v6 + 32));
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_3();
  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, 0xFFFFBEABuLL, "<< FigEndpointXPCRemote >>", 0x304, v41, v42, v43, v45);
LABEL_17:
  if (v62)
  {
    CFRelease(v62);
  }

  remoteXPCEndpointClient_releaseCompletionCallbackEntryFields(__dst);
  return v5;
}

uint64_t remoteXPCEndpointClient_callDelegateHandleFailed(const void *a1, CFMutableDictionaryRef a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, const __CFDictionary *a7)
{
  CMBaseObjectGetDerivedStorage(a1);
  if (a2)
  {
    return a2;
  }

  if (!a5)
  {
    return 4294949690;
  }

  if (a4 && a7)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a7);
    FigCFDictionarySetValue(MutableCopy, @"SubEndpoint", a4);
    CFRetain(a1);
    a7 = MutableCopy;
LABEL_7:
    CFRetain(a4);
    a2 = MutableCopy;
    goto LABEL_8;
  }

  CFRetain(a1);
  MutableCopy = 0;
  a2 = 0;
  if (a4)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (a7)
  {
    CFRetain(a7);
  }

  OUTLINED_FUNCTION_1();
  v17[1] = 0x40000000;
  v17[2] = __remoteXPCEndpointClient_callDelegateHandleFailed_block_invoke;
  v17[3] = &__block_descriptor_tmp_12_8;
  v17[4] = a5;
  v17[5] = a1;
  v17[6] = a3;
  v17[7] = a7;
  v17[8] = a6;
  v17[9] = a4;
  dispatch_async(v15, v17);
  if (a2)
  {
    CFRelease(a2);
    return 0;
  }

  return a2;
}

void remoteXPCEndpointClient_handleAuthCompletionCallback(uint64_t a1, const void *a2, int a3, xpc_object_t *a4)
{
  if (*a4 && (remote_connection = xpc_dictionary_get_remote_connection(*a4)) != 0)
  {
    v8 = remote_connection;
    reply = xpc_dictionary_create_reply(*a4);
    xpc_dictionary_set_int64(reply, "AuthorizationResult", a3);
    FigXPCMessageSetCFString(reply, "AuthorizationString", a2);
    xpc_connection_send_message(v8, reply);
  }

  else
  {
    reply = 0;
  }

  FigXPCRelease(reply);
  FigXPCRelease(*a4);

  free(a4);
}

void __remoteXPCEndpointClient_callDelegateHandleAuthRequired_block_invoke_2(uint64_t a1)
{
  remoteXPCEndpointClient_handleAuthCompletionCallback(a1, 0, -16728, *(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

size_t FigEndpointRemoteXPC_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v3 = CMBaseObjectGetDerivedStorage(a1);
  v22 = 0;
  v23 = 0;
  v4 = *v3;
  if (*(v3 + 40) || (v5 = v3, remoteXPCFigEndpoint_getSharedXPCClient(*(v3 + 8), &v22)) || (v12 = v22, FigXPCRemoteClientDisassociateObject(v22, v4, v6, v7, v8, v9, v10, v11, v22), *(v5 + 41)))
  {
    v13 = 0;
  }

  else
  {
    v14 = FigXPCCreateBasicMessage(0x646F6F6Du, v4, &v23);
    v13 = v23;
    if (!v14)
    {
      FigXPCRemoteClientSendSyncMessage(v12, v23);
      FigXPCRemoteClientKillServerOnTimeout();
      v13 = v23;
    }
  }

  FigXPCRelease(v13);
  v15 = *(DerivedStorage + 88);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 88) = 0;
  }

  v16 = *(DerivedStorage + 56);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 56) = 0;
  }

  v17 = *(DerivedStorage + 80);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 80) = 0;
  }

  v18 = *(DerivedStorage + 136);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 136) = 0;
  }

  v19 = *(DerivedStorage + 184);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 184) = 0;
  }

  FigEndpointRPCCacheDispose(*(DerivedStorage + 48));
  v20 = *(DerivedStorage + 24);
  if (v20)
  {
    dispatch_release(v20);
  }

  return FigSimpleMutexDestroy(*(DerivedStorage + 32));
}

uint64_t FigEndpointRemoteXPC_CopyProperty(unint64_t *a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v5 = v4;
  Mutable = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  valuePtr = 0;
  v53 = 0;
  v50 = 0;
  cf = 0;
  v49 = 0;
  if (OUTLINED_FUNCTION_29_8() || FigCFEqual(a2, @"Type"))
  {
    if (remoteXPCFigEndpoint_copyCachedProperty(Mutable, a2, &cf))
    {
LABEL_4:
      OUTLINED_FUNCTION_12_14();
      v11 = 0;
      goto LABEL_5;
    }

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v49);
  if (SharedXPCClient)
  {
    goto LABEL_53;
  }

  SharedXPCClient = FigEndpointXPCRemoteGetObjectID(Mutable, &v53);
  if (SharedXPCClient)
  {
    goto LABEL_53;
  }

  if (v14 && remoteXPCFigEndpoint_copyCachedProperty(Mutable, a2, &cf))
  {
    goto LABEL_4;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_12_14();
    v11 = 4294954516;
    goto LABEL_5;
  }

  if (CFEqual(@"Streams", a2) || CFEqual(@"ExternalPlaybackCompetingStreams", a2))
  {
    SharedXPCClient = FigEndpointStreamXPCRemotePing();
    if (!SharedXPCClient)
    {
      goto LABEL_28;
    }

LABEL_53:
    v11 = SharedXPCClient;
    goto LABEL_54;
  }

  if (CFEqual(@"Messenger", a2))
  {
    SharedXPCClient = FigEndpointMessengerXPCRemotePing();
    if (SharedXPCClient)
    {
      goto LABEL_53;
    }
  }

LABEL_28:
  if (!CFEqual(@"Messenger", a2))
  {
    if (!CFEqual(@"Endpoints", a2))
    {
      v11 = FigXPCSendStdCopyPropertyMessage(v49, v53, a2, &cf, v24, v25, v26, v27);
      if (!v11)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    xdict = 0;
    value = 0;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    v28 = CMBaseObjectGetDerivedStorage(Mutable);
    if (*(v28 + 16))
    {
      v29 = v28;
      ObjectID = remoteXPCFigEndpoint_getSharedXPCClient(*(v28 + 8), &v54);
      if (!ObjectID)
      {
        ObjectID = FigEndpointXPCRemoteGetObjectID(Mutable, &v55);
        if (!ObjectID)
        {
          ObjectID = FigXPCCreateBasicMessage(0x63707365u, v55, &value);
          if (!ObjectID)
          {
            ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(v54, value, &xdict);
            if (!ObjectID)
            {
              v31 = xpc_dictionary_get_value(xdict, "AddedSubEndpoints");
              Mutable = xpc_dictionary_get_value(xdict, "SubtractedSubEndpoints");
              FigSimpleMutexLock(*(v29 + 32));
              v11 = FigEndpointRPCCacheApplyObjectDeltas(*(v29 + 48), v31, Mutable);
              if (!v11)
              {
                v11 = FigEndpointRPCCacheCopyAvailableObjects(*(v29 + 48), &v56);
              }

              FigSimpleMutexUnlock(*(v29 + 32));
              cf = v56;
              v56 = 0;
LABEL_49:
              FigXPCRelease(xdict);
              FigXPCRelease(value);
              if (!v11)
              {
                goto LABEL_56;
              }

              goto LABEL_54;
            }
          }
        }
      }
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      ObjectID = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0DuLL, "<< FigEndpointXPCRemote >>", 0x4F7, v4, v46, v47, v48);
    }

    v11 = ObjectID;
    goto LABEL_49;
  }

  Mutable = v49;
  xdict = 0;
  value = 0;
  v56 = 0;
  v16 = FigXPCCreateBasicMessage(0x636D7367u, v53, &xdict);
  if (v16 || (v16 = FigXPCRemoteClientSendSyncMessageCreatingReply(Mutable, xdict, &v56), v16))
  {
    v11 = v16;
  }

  else
  {
    v11 = FigXPCMessageCopyCFObject(v56, ".Value", &value);
    if (v11)
    {
      if (value)
      {
        CFRelease(value);
      }
    }

    else
    {
      cf = value;
      value = 0;
    }
  }

  FigXPCRelease(v56);
  FigXPCRelease(xdict);
  if (cf)
  {
    Mutable = CFGetTypeID(cf);
    if (Mutable == CFNumberGetTypeID())
    {
      if (!CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr) || (cf = 0, v11 = FigEndpointMessengerXPCRemoteCreateWithObjectID(valuePtr, &v50, v17, v18, v19, v20, v21, v22, v48), !v11))
      {
        if (cf)
        {
          CFRelease(cf);
        }

        v23 = v50;
        v50 = 0;
        cf = v23;
        goto LABEL_56;
      }

LABEL_54:
      OUTLINED_FUNCTION_12_14();
      goto LABEL_5;
    }
  }

LABEL_56:
  if (!CFEqual(@"Streams", a2))
  {
    Mutable = 0;
    if (!CFEqual(@"ExternalPlaybackCompetingStreams", a2) || (v32 = cf) == 0)
    {
      v5 = 0;
      goto LABEL_72;
    }

    goto LABEL_61;
  }

  v32 = cf;
  if (cf)
  {
LABEL_61:
    Mutable = CFGetTypeID(v32);
    if (Mutable == CFArrayGetTypeID())
    {
      v5 = cf;
      cf = 0;
      Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        goto LABEL_5;
      }

      Count = CFArrayGetCount(v5);
      if (Count >= 1)
      {
        v34 = Count;
        for (i = 0; i != v34; ++i)
        {
          xdict = 0;
          value = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
          if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &xdict))
          {
            v11 = FigEndpointStreamXPCRemoteRetainCopiedEndpointStream(xdict, &value, v37, v38, v39, v40, v41, v42, v48);
            if (v11)
            {
              goto LABEL_5;
            }

            CFArrayAppendValue(Mutable, value);
            CFRelease(value);
          }
        }
      }

      cf = CFRetain(Mutable);
      goto LABEL_72;
    }
  }

  OUTLINED_FUNCTION_12_14();
LABEL_72:
  if (FigCFEqual(a2, @"AirPlayFromCloud") || FigCFEqual(a2, @"AirPlayVodkaVersion") || FigCFEqual(a2, @"AudioWithScreenMirroringOnly") || FigCFEqual(a2, @"AuthenticationData") || FigCFEqual(a2, @"AuthenticationType") || FigCFEqual(a2, @"AuthorizationType") || FigCFEqual(a2, @"AutoconnectEnabled") || FigCFEqual(a2, @"IsDissociated") || FigCFEqual(a2, @"EndpointInfo") || FigCFEqual(a2, @"ExtendedFeatures") || FigCFEqual(a2, @"ExternalPlaybackCompetingStreams") || FigCFEqual(a2, @"FirmwareVersion") || FigCFEqual(a2, @"HIDs") || FigCFEqual(a2, @"ID") || FigCFEqual(a2, @"IsLocalDevice") || FigCFEqual(a2, @"IsPerAppDisplay") || FigCFEqual(a2, @"IsRemoteControlOnly") || FigCFEqual(a2, @"LimitedUI") || FigCFEqual(a2, @"LimitedUIElements") || FigCFEqual(a2, @"MACAddress") || FigCFEqual(a2, @"Manufacturer") || FigCFEqual(a2, @"Model") || OUTLINED_FUNCTION_29_8() || FigCFEqual(a2, @"NightMode") || FigCFEqual(a2, @"OEMIcons") || FigCFEqual(a2, @"OEMIconVisible") || FigCFEqual(a2, @"OEMIconLabel") || FigCFEqual(a2, @"PrimaryUsage") || FigCFEqual(a2, @"RightHandDrive") || FigCFEqual(a2, @"ScreenInfo") || FigCFEqual(a2, @"Streams") || FigCFEqual(a2, @"Endpoints") || FigCFEqual(a2, @"SubType") || FigCFEqual(a2, @"SupportedFeatures") || FigCFEqual(a2, @"SystemFlags") || FigCFEqual(a2, @"TransportType") || FigCFEqual(a2, @"Type") || FigCFEqual(a2, @"VehicleInformation") || FigCFEqual(a2, @"VoiceActivationType") || FigCFEqual(a2, @"Volume") || FigCFEqual(a2, @"VolumeDB") || FigCFEqual(a2, @"VolumeControlSupported") || FigCFEqual(a2, @"VolumeControlType"))
  {
    if (cf && !FigCFEqual(a2, @"ID"))
    {
      OUTLINED_FUNCTION_29_8();
    }

    if (v11)
    {
      v43 = 0;
    }

    else
    {
      v43 = cf == 0;
    }

    if (v43)
    {
      v44 = *MEMORY[0x1E695E738];
    }

    else
    {
      v44 = cf;
    }

    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, a2, v44);
  }

LABEL_5:
  if (a4)
  {
    v12 = cf;
    if (cf)
    {
      v12 = CFRetain(cf);
    }

    *a4 = v12;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v11;
}

size_t FigEndpointRemoteXPC_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_4();
  v27 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(v6);
  v15 = OUTLINED_FUNCTION_24_12(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, v25);
  if (v15)
  {
    v23 = v15;
    goto LABEL_15;
  }

  ObjectID = FigEndpointXPCRemoteGetObjectID(v4, &v27);
  if (ObjectID || (ObjectID = FigXPCSendStdSetPropertyMessage(v26, v27, v3, a3, v17, v18, v19, v20), ObjectID))
  {
    v23 = ObjectID;
    goto LABEL_15;
  }

  if (FigCFEqual(v3, @"AutoconnectEnabled"))
  {
    v21 = DerivedStorage;
    v22 = v3;
  }

  else
  {
    if (!OUTLINED_FUNCTION_29_8() && !FigCFEqual(v3, @"VolumeDB") && !FigCFEqual(v3, @"IsMuted") && !FigCFEqual(v3, @"IsMutedByUser") && !FigCFEqual(v3, @"IsMutedProgrammatically") && !FigCFEqual(v3, @"MasterVolume"))
    {
      goto LABEL_14;
    }

    remoteXPCFigEndpoint_setCachedProperty(DerivedStorage, @"Volume", 0);
    v21 = DerivedStorage;
    v22 = @"VolumeDB";
  }

  remoteXPCFigEndpoint_setCachedProperty(v21, v22, 0);
LABEL_14:
  v23 = 0;
LABEL_15:
  FigXPCRemoteClientKillServerOnTimeout();
  return v23;
}

size_t FigEndpointRemoteXPC_ActivateWithCompletionCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_18_16(a1);
  ObjectID = FigEndpointXPCRemoteGetObjectID(v3, &v32);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x61637674u, v32, &xdict), ObjectID))
  {
    v14 = ObjectID;
    if (v1)
    {
      if (v3)
      {
        CFRetain(v3);
      }

      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_16_14(v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, 0x40000000, __FigEndpointRemoteXPC_ActivateWithCompletionCallback_block_invoke, &__block_descriptor_tmp_36_1, v27, v28, v29, v30);
    }
  }

  else
  {
    FigXPCMessageSetCFDictionary(xdict, "ActivateOptions", v5);
    xpc_dictionary_set_uint64(xdict, "ActivationFeatures", v4);
    OUTLINED_FUNCTION_10_18();
    v14 = FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(v7, v8, v9, v10, v11, v12, v13, 0, 0, v2);
  }

  FigXPCRelease(xdict);
  return v14;
}

size_t FigEndpointRemoteXPC_DeactivateWithCompletionCallback(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v29 = 0;
  v30 = 0;
  ObjectID = FigEndpointXPCRemoteGetObjectID(a1, &v30);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x64617674u, v30, &v29), ObjectID))
  {
    v17 = ObjectID;
    if (a3)
    {
      if (a1)
      {
        CFRetain(a1);
      }

      v19 = OUTLINED_FUNCTION_6_30();
      v21 = 0x40000000;
      v22 = __FigEndpointRemoteXPC_DeactivateWithCompletionCallback_block_invoke;
      v23 = &__block_descriptor_tmp_38_2;
      v24 = a3;
      v25 = a1;
      v28 = v17;
      v26 = 0;
      v27 = a4;
      dispatch_async(v19, block);
    }
  }

  else
  {
    FigXPCMessageSetCFDictionary(v29, "DeactivateOptions", a2);
    FigSimpleMutexLock(*(DerivedStorage + 32));
    *(DerivedStorage + 72) = 0;
    FigSimpleMutexUnlock(*(DerivedStorage + 32));
    OUTLINED_FUNCTION_10_18();
    v17 = FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(v10, v11, v12, v13, v14, v15, v16, 0, 0, a4);
  }

  FigXPCRelease(v29);
  return v17;
}

uint64_t FigEndpointRemoteXPC_Dissociate(uint64_t a1)
{
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  ObjectID = OUTLINED_FUNCTION_5_36(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v15, v16);
  if (ObjectID || (ObjectID = FigEndpointXPCRemoteGetObjectID(a1, &v18), ObjectID) || (OUTLINED_FUNCTION_4_35(), ObjectID = FigXPCCreateBasicMessage(0x64736F63u, v11, v12), ObjectID))
  {
    v13 = ObjectID;
  }

  else
  {
    v13 = FigXPCRemoteClientSendSyncMessage(v17, 0);
    if (!v13)
    {
      FigSimpleMutexLock(*(DerivedStorage + 32));
      *(DerivedStorage + 40) = 1;
      FigSimpleMutexUnlock(*(DerivedStorage + 32));
    }
  }

  FigXPCRelease(0);
  return v13;
}

uint64_t FigEndpointRemoteXPC_SetDelegateRouting()
{
  OUTLINED_FUNCTION_18_4();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v2);
  OUTLINED_FUNCTION_14_17();
  FigSimpleMutexLock(*(v4 + 32));
  v5 = *(DerivedStorage + 184);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 184) = 0;
  }

  if (v0)
  {
    v6 = *v0;
    v7 = v0[1];
    *(DerivedStorage + 176) = *(v0 + 4);
    *(DerivedStorage + 144) = v6;
    *(DerivedStorage + 160) = v7;
    *(DerivedStorage + 184) = FigCFWeakReferenceHolderCreateWithReferencedObject(*v0);
  }

  else
  {
    *(DerivedStorage + 176) = 0;
    *(DerivedStorage + 144) = 0u;
    *(DerivedStorage + 160) = 0u;
  }

  FigSimpleMutexUnlock(*(DerivedStorage + 32));
  SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v22);
  if (!SharedXPCClient)
  {
    SharedXPCClient = FigEndpointXPCRemoteGetObjectID(v1, &v24);
    if (!SharedXPCClient)
    {
      OUTLINED_FUNCTION_4_35();
      if (v0)
      {
        v18 = 1935962740;
      }

      else
      {
        v18 = 1667527284;
      }

      SharedXPCClient = FigXPCCreateBasicMessage(v18, v16, v17);
      if (!SharedXPCClient)
      {
        SharedXPCClient = FigXPCRemoteClientSendSyncMessage(v22, v23);
      }
    }
  }

  v19 = OUTLINED_FUNCTION_8_22(SharedXPCClient, v9, v10, v11, v12, v13, v14, v15, v21, v22, v23);
  FigXPCRelease(v19);
  OUTLINED_FUNCTION_17_13();
  return DerivedStorage;
}

uint64_t FigEndpointRemoteXPC_SetDelegateRemoteControl()
{
  OUTLINED_FUNCTION_18_4();
  v21 = 0;
  v22 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(v2);
  v20 = 0;
  FigSimpleMutexLock(*(DerivedStorage + 32));
  v4 = *(DerivedStorage + 136);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 136) = 0;
  }

  if (v0)
  {
    v5 = *v0;
    *(DerivedStorage + 120) = v0[1];
    *(DerivedStorage + 104) = v5;
    *(DerivedStorage + 136) = FigCFWeakReferenceHolderCreateWithReferencedObject(*v0);
  }

  else
  {
    *(DerivedStorage + 120) = 0u;
    *(DerivedStorage + 104) = 0u;
  }

  FigSimpleMutexUnlock(*(DerivedStorage + 32));
  SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v20);
  if (!SharedXPCClient)
  {
    SharedXPCClient = FigEndpointXPCRemoteGetObjectID(v1, &v22);
    if (!SharedXPCClient)
    {
      OUTLINED_FUNCTION_4_35();
      if (v0)
      {
        v16 = 1935962723;
      }

      else
      {
        v16 = 1667527267;
      }

      SharedXPCClient = FigXPCCreateBasicMessage(v16, v14, v15);
      if (!SharedXPCClient)
      {
        SharedXPCClient = FigXPCRemoteClientSendSyncMessage(v20, v21);
      }
    }
  }

  v17 = OUTLINED_FUNCTION_8_22(SharedXPCClient, v7, v8, v9, v10, v11, v12, v13, v19, v20, v21);
  FigXPCRelease(v17);
  OUTLINED_FUNCTION_17_13();
  return DerivedStorage;
}

uint64_t FigEndpointRemoteXPC_CreatePlaybackSession(uint64_t a1, CFTypeRef *a2)
{
  v28 = 0;
  v29 = 0;
  cf = 0;
  xdict = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  ObjectID = OUTLINED_FUNCTION_5_36(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v22, v24);
  if (ObjectID || (ObjectID = FigEndpointXPCRemoteGetObjectID(a1, &v29), ObjectID) || (ObjectID = FigXPCCreateBasicMessage(0x63706273u, v29, &v28), ObjectID) || (ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(v25, v28, &xdict), ObjectID))
  {
    v20 = ObjectID;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "PlaybackSessionID");
    v20 = FigEndpointPlaybackSessionXPCRemoteCreateWithObjectID(uint64, &cf, v14, v15, v16, v17, v18, v19, v23);
    if (!v20)
    {
      *a2 = cf;
      cf = 0;
    }
  }

  FigXPCRelease(v28);
  FigXPCRelease(xdict);
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_28_10();
  return v20;
}

size_t FigEndpointRemoteXPC_UpdateFeaturesWithCompletionCallback(uint64_t a1)
{
  OUTLINED_FUNCTION_18_16(a1);
  ObjectID = FigEndpointXPCRemoteGetObjectID(v3, &v32);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x75706665u, v32, &xdict), ObjectID))
  {
    v14 = ObjectID;
    if (v1)
    {
      if (v3)
      {
        CFRetain(v3);
      }

      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_16_14(v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, 0x40000000, __FigEndpointRemoteXPC_UpdateFeaturesWithCompletionCallback_block_invoke, &__block_descriptor_tmp_39_0, v27, v28, v29, v30);
    }
  }

  else
  {
    FigXPCMessageSetCFDictionary(xdict, "ActivateOptions", v5);
    xpc_dictionary_set_uint64(xdict, "ActivationFeatures", v4);
    OUTLINED_FUNCTION_10_18();
    v14 = FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(v7, v8, v9, v10, v11, v12, v13, 0, 0, v2);
  }

  FigXPCRelease(xdict);
  return v14;
}

size_t FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v19 = DerivedStorage;
  memset(value, 0, 72);
  v34 = 0;
  v20 = a8 | a5 | a3 | a7;
  v21 = v20 == 0;
  if (v20)
  {
    *&value[1] = a7;
    *(&value[1] + 1) = a5;
    *&value[0] = a1;
    *(&value[0] + 1) = a3;
    BYTE8(value[2]) = a4;
    *&value[2] = a8;
    *&value[3] = a6;
    *(&value[3] + 1) = a9;
    *&value[4] = a10;
    FigSimpleMutexLock(*(DerivedStorage + 32));
    v24 = CMBaseObjectGetDerivedStorage(a1);
    v22 = *(v24 + 96);
    v25 = 1;
    if (v22 + 1 > 1)
    {
      v25 = v22 + 1;
    }

    *(v24 + 96) = v25;
    CFDictionarySetValue(*(v19 + 88), v22, value);
    v23 = *(v19 + 64);
    FigSimpleMutexUnlock(*(v19 + 32));
    xpc_dictionary_set_uint64(a2, "CompletionID", v22);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(*(v19 + 8), &v34);
  if (!SharedXPCClient)
  {
    SharedXPCClient = FigXPCRemoteClientSendSyncMessage(v34, a2);
  }

  v27 = SharedXPCClient;
  if (SharedXPCClient)
  {
    v28 = v21;
  }

  else
  {
    v28 = 1;
  }

  if ((v28 & 1) == 0)
  {
    FigSimpleMutexLock(*(v19 + 32));
    if (CFDictionaryGetValueIfPresent(*(v19 + 88), v22, 0))
    {
      remoteXPCEndpointClient_retainCompletionCallbackEntryFields(value);
      v29 = *(v19 + 24);
      OUTLINED_FUNCTION_1();
      v32[1] = 0x40000000;
      v32[2] = __FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke;
      v32[3] = &__block_descriptor_tmp_37_2;
      memcpy((v30 + 32), value, 0x48uLL);
      v32[13] = v23;
      v33 = v27;
      dispatch_async(v29, v32);
    }

    CFDictionaryRemoveValue(*(v19 + 88), v22);
    FigSimpleMutexUnlock(*(v19 + 32));
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v27;
}

uint64_t FigEndpointRemoteXPC_RequestCarUI()
{
  OUTLINED_FUNCTION_0_85();
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v3);
  ObjectID = OUTLINED_FUNCTION_5_36(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v25, v27);
  if (!ObjectID)
  {
    FigEndpointExtendedGetFigEndpoint();
    ObjectID = FigEndpointXPCRemoteGetObjectID(v20, &v30);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_4_35();
      ObjectID = FigXPCCreateBasicMessage(0x63617220u, v21, v22);
      if (!ObjectID)
      {
        if (v1)
        {
          FigXPCMessageSetCFString(v29, "UUID", v1);
        }

        if (v0)
        {
          FigXPCMessageSetCFURL(v29, "URL", v0);
        }

        ObjectID = FigXPCRemoteClientSendSyncMessage(v28, v29);
      }
    }
  }

  v23 = OUTLINED_FUNCTION_8_22(ObjectID, v13, v14, v15, v16, v17, v18, v19, v26, v28, v29);
  FigXPCRelease(v23);
  OUTLINED_FUNCTION_17_13();
  return v2;
}

uint64_t FigEndpointRemoteXPC_BorrowScreen()
{
  OUTLINED_FUNCTION_0_85();
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v3);
  if (OUTLINED_FUNCTION_5_36(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v33, v36) || (FigEndpointExtendedGetFigEndpoint(), FigEndpointXPCRemoteGetObjectID(v12, &v41)))
  {
    v23 = OUTLINED_FUNCTION_15_18();
  }

  else
  {
    OUTLINED_FUNCTION_4_35();
    v15 = FigXPCCreateBasicMessage(0x62732020u, v13, v14);
    v23 = OUTLINED_FUNCTION_8_22(v15, v16, v17, v18, v19, v20, v21, v22, v34, v37, v39);
    if (!v2)
    {
      FigXPCMessageSetCFString(v23, "Client", v1);
      FigXPCMessageSetCFString(v40, "Reason", v0);
      v24 = FigXPCRemoteClientSendSyncMessage(v38, v40);
      v23 = OUTLINED_FUNCTION_8_22(v24, v25, v26, v27, v28, v29, v30, v31, v35, v38, v40);
    }
  }

  FigXPCRelease(v23);
  OUTLINED_FUNCTION_17_13();
  return v2;
}

uint64_t FigEndpointRemoteXPC_UnborrowScreen()
{
  OUTLINED_FUNCTION_0_85();
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v3);
  if (OUTLINED_FUNCTION_5_36(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v33, v36) || (FigEndpointExtendedGetFigEndpoint(), FigEndpointXPCRemoteGetObjectID(v12, &v41)))
  {
    v23 = OUTLINED_FUNCTION_15_18();
  }

  else
  {
    OUTLINED_FUNCTION_4_35();
    v15 = FigXPCCreateBasicMessage(0x756E6273u, v13, v14);
    v23 = OUTLINED_FUNCTION_8_22(v15, v16, v17, v18, v19, v20, v21, v22, v34, v37, v39);
    if (!v2)
    {
      FigXPCMessageSetCFString(v23, "Client", v1);
      FigXPCMessageSetCFString(v40, "Reason", v0);
      v24 = FigXPCRemoteClientSendSyncMessage(v38, v40);
      v23 = OUTLINED_FUNCTION_8_22(v24, v25, v26, v27, v28, v29, v30, v31, v35, v38, v40);
    }
  }

  FigXPCRelease(v23);
  OUTLINED_FUNCTION_17_13();
  return v2;
}

uint64_t FigEndpointRemoteXPC_TakeScreen()
{
  OUTLINED_FUNCTION_0_85();
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v3);
  if (OUTLINED_FUNCTION_5_36(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v33, v36) || (FigEndpointExtendedGetFigEndpoint(), FigEndpointXPCRemoteGetObjectID(v12, &v41)))
  {
    v23 = OUTLINED_FUNCTION_15_18();
  }

  else
  {
    OUTLINED_FUNCTION_4_35();
    v15 = FigXPCCreateBasicMessage(0x74732020u, v13, v14);
    v23 = OUTLINED_FUNCTION_8_22(v15, v16, v17, v18, v19, v20, v21, v22, v34, v37, v39);
    if (!v2)
    {
      FigXPCMessageSetCFString(v23, "Client", v1);
      FigXPCMessageSetCFString(v40, "Reason", v0);
      v24 = FigXPCRemoteClientSendSyncMessage(v38, v40);
      v23 = OUTLINED_FUNCTION_8_22(v24, v25, v26, v27, v28, v29, v30, v31, v35, v38, v40);
    }
  }

  FigXPCRelease(v23);
  OUTLINED_FUNCTION_17_13();
  return v2;
}

uint64_t FigEndpointRemoteXPC_DisableBluetoothConnectivityToDevice()
{
  OUTLINED_FUNCTION_0_85();
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v3);
  if (OUTLINED_FUNCTION_5_36(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v15, v16) || (FigEndpointExtendedGetFigEndpoint(), FigEndpointXPCRemoteGetObjectID(v12, &v18)))
  {
    v13 = OUTLINED_FUNCTION_15_18();
  }

  else
  {
    v2 = FigXPCCreateBasicMessage(0x64627464u, v18, v19);
    v13 = *v19;
    if (!v2)
    {
      FigXPCMessageSetCFString(*v19, "DeviceAddress", v1);
      FigXPCMessageSetCFDictionary(*v19, "DisableBluetoothOptions", v0);
      v2 = FigXPCRemoteClientSendSyncMessage(v17, *v19);
      v13 = *v19;
    }
  }

  FigXPCRelease(v13);
  OUTLINED_FUNCTION_17_13();
  return v2;
}

uint64_t FigEndpointRemoteXPC_DuckAudio(uint64_t a1, void *a2)
{
  v19 = 0;
  *v20 = 0;
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v4);
  if (OUTLINED_FUNCTION_5_36(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v16, v17) || (FigEndpointExtendedGetFigEndpoint(), FigEndpointXPCRemoteGetObjectID(v13, &v19)))
  {
    v14 = OUTLINED_FUNCTION_25_9();
  }

  else
  {
    v2 = FigXPCCreateBasicMessage(0x64756361u, v19, v20);
    v14 = *v20;
    if (!v2)
    {
      FigXPCMessageSetCFDictionary(*v20, "Params", a2);
      v2 = FigXPCRemoteClientSendSyncMessage(v18, *v20);
      v14 = *v20;
    }
  }

  FigXPCRelease(v14);
  OUTLINED_FUNCTION_28_10();
  return v2;
}

uint64_t FigEndpointRemoteXPC_SetHIDInputMode()
{
  OUTLINED_FUNCTION_0_85();
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v3);
  if (OUTLINED_FUNCTION_5_36(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v33, v36) || (FigEndpointExtendedGetFigEndpoint(), FigEndpointXPCRemoteGetObjectID(v12, &v41)))
  {
    v23 = OUTLINED_FUNCTION_15_18();
  }

  else
  {
    OUTLINED_FUNCTION_4_35();
    v15 = FigXPCCreateBasicMessage(0x73686D20u, v13, v14);
    v23 = OUTLINED_FUNCTION_8_22(v15, v16, v17, v18, v19, v20, v21, v22, v34, v37, v39);
    if (!v2)
    {
      FigXPCMessageSetCFString(v23, "HIDUUID", v1);
      FigXPCMessageSetCFNumber(v40, "HIDInputMode", v0);
      v24 = FigXPCRemoteClientSendSyncMessage(v38, v40);
      v23 = OUTLINED_FUNCTION_8_22(v24, v25, v26, v27, v28, v29, v30, v31, v35, v38, v40);
    }
  }

  FigXPCRelease(v23);
  OUTLINED_FUNCTION_17_13();
  return v2;
}

unint64_t FigEndpointRemoteXPC_CopyHIDInputMode(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_14_17();
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v7);
  v22 = 0;
  if (a4)
  {
    if (remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v22) || (FigEndpointExtendedGetFigEndpoint(), FigEndpointXPCRemoteGetObjectID(v9, &v25)) || (OUTLINED_FUNCTION_4_35(), FigXPCCreateBasicMessage(0x63686D20u, v10, v11)) || (v12 = FigXPCMessageSetCFString(*v24, "HIDUUID", a2), v12))
    {
      v20 = OUTLINED_FUNCTION_25_9();
    }

    else
    {
      v4 = OUTLINED_FUNCTION_23_12(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, *v24);
      v20 = v23;
      if (!v4)
      {
        v4 = FigXPCMessageCopyCFNumber(v23, "HIDInputMode", a4);
        v20 = v23;
      }
    }
  }

  else
  {
    v20 = 0;
    v4 = 0;
  }

  FigXPCRelease(v20);
  FigXPCRelease(*v24);
  OUTLINED_FUNCTION_28_10();
  return v4;
}

size_t FigEndpointRemoteXPC_SendCommand(const void *a1, const void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  FigEndpointExtendedGetFigEndpoint();
  v11 = v10;
  CMBaseObjectGetDerivedStorage(v10);
  v31 = 0;
  *v30 = 0;
  ObjectID = FigEndpointXPCRemoteGetObjectID(v11, &v31);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(0x636D6D64u, v31, v30), ObjectID))
  {
    v13 = ObjectID;
    if (a4)
    {
      if (a1)
      {
        CFRetain(a1);
      }

      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_16_14(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, 0x40000000, __FigEndpointRemoteXPC_SendCommand_block_invoke, &__block_descriptor_tmp_40_2, v26, v27, v28, v29);
    }
  }

  else
  {
    FigXPCMessageSetCFString(*v30, "Command", a2);
    FigXPCMessageSetCFDictionary(*v30, "Params", a3);
    v13 = FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(v11, *v30, 0, 0, 0, 0, a4, 0, 0, a5);
  }

  FigXPCRelease(*v30);
  return v13;
}

uint64_t FigEndpointRemoteXPC_CreateRemoteControlSession(uint64_t a1, void *a2, void *a3)
{
  xdict = 0;
  *v23 = 0;
  v20 = 0;
  v21 = 0;
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v5);
  v19 = 0;
  SharedXPCClient = FigEndpointRemoteControlSessionXPCRemotePing();
  if (SharedXPCClient || (SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v19), SharedXPCClient) || (FigEndpointExtendedGetFigEndpoint(), SharedXPCClient = FigEndpointXPCRemoteGetObjectID(v8, &v21), SharedXPCClient) || (SharedXPCClient = FigXPCCreateBasicMessage(0x63726373u, v21, v23), SharedXPCClient) || (FigXPCMessageSetCFDictionary(*v23, "Params", a2), SharedXPCClient = FigXPCRemoteClientSendSyncMessageCreatingReply(v19, *v23, &xdict), SharedXPCClient))
  {
    v16 = SharedXPCClient;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "RemoteControlSessionID");
    v16 = FigEndpointRemoteControlSessionXPCRemoteCreateWithObjectID(uint64, &v20, v10, v11, v12, v13, v14, v15, v18);
    if (!v16)
    {
      *a3 = v20;
    }
  }

  FigXPCRelease(xdict);
  FigXPCRelease(*v23);
  OUTLINED_FUNCTION_17_13();
  return v16;
}

size_t FigEndpointRemoteXPC_CreateCommChannel(uint64_t a1, void *a2, void *a3)
{
  value = 0;
  v26 = 0;
  *v24 = 0;
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v5);
  ObjectID = OUTLINED_FUNCTION_5_36(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v22, v23);
  if (ObjectID || (FigEndpointExtendedGetFigEndpoint(), ObjectID = FigEndpointXPCRemoteGetObjectID(v15, &v26), ObjectID) || (ObjectID = FigXPCCreateBasicMessage(0x63726363u, v26, v24), ObjectID) || (FigXPCMessageSetCFDictionary(*v24, "Params", a2), OUTLINED_FUNCTION_4_35(), ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(v16, v17, v18), ObjectID) || (ObjectID = FigXPCMessageCopyCFString(0, "CommChannelUUID", &value), ObjectID))
  {
    v20 = ObjectID;
  }

  else
  {
    v19 = value;
    if (value)
    {
      FigSimpleMutexLock(*(DerivedStorage + 32));
      CFArrayAppendValue(*(DerivedStorage + 80), value);
      FigSimpleMutexUnlock(*(DerivedStorage + 32));
      v19 = value;
    }

    v20 = 0;
    *a3 = v19;
  }

  FigXPCRelease(*v24);
  FigXPCRelease(0);
  FigXPCRemoteClientKillServerOnTimeout();
  return v20;
}

size_t FigEndpointRemoteXPC_CloseCommChannel(uint64_t a1, const void *a2)
{
  v20 = 0;
  v21 = 0;
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v3);
  v19 = 0;
  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    SharedXPCClient = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFBEB0uLL, "<< FigEndpointXPCRemote >>", 0x895, v15, v16, v17, v18);
LABEL_11:
    v12 = SharedXPCClient;
    goto LABEL_9;
  }

  v5 = DerivedStorage;
  SharedXPCClient = remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v19);
  if (SharedXPCClient)
  {
    goto LABEL_11;
  }

  FigEndpointExtendedGetFigEndpoint();
  SharedXPCClient = FigEndpointXPCRemoteGetObjectID(v7, &v21);
  if (SharedXPCClient)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_4_35();
  SharedXPCClient = FigXPCCreateBasicMessage(0x636C6363u, v8, v9);
  if (SharedXPCClient)
  {
    goto LABEL_11;
  }

  SharedXPCClient = FigXPCRemoteClientSendSyncMessage(v19, v20);
  if (SharedXPCClient)
  {
    goto LABEL_11;
  }

  FigSimpleMutexLock(*(v5 + 32));
  v10 = *(v5 + 80);
  v22.length = CFArrayGetCount(v10);
  v22.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v10, v22, a2);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(*(v5 + 80), FirstIndexOfValue);
  }

  FigSimpleMutexUnlock(*(v5 + 32));
  v12 = 0;
LABEL_9:
  FigXPCRelease(v20);
  OUTLINED_FUNCTION_17_13();
  return v12;
}

uint64_t FigEndpointRemoteXPC_RequestScreenViewArea()
{
  OUTLINED_FUNCTION_0_85();
  v20[0] = 0;
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v3);
  v19 = 0;
  if (FigEndpointRemoteControlSessionXPCRemotePing() || remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v19) || (FigEndpointExtendedGetFigEndpoint(), FigEndpointXPCRemoteGetObjectID(v5, v20)) || FigXPCCreateBasicMessage(0x72737661u, v20[0], &xdict))
  {
    v17 = OUTLINED_FUNCTION_15_18();
  }

  else
  {
    FigXPCMessageSetCFString(xdict, "UUID", v1);
    xpc_dictionary_set_int64(xdict, "Index", v0);
    OUTLINED_FUNCTION_4_35();
    v9 = FigXPCRemoteClientSendSyncMessageCreatingReply(v6, v7, v8);
    v17 = OUTLINED_FUNCTION_8_22(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20[0], v20[1]);
  }

  FigXPCRelease(v17);
  FigXPCRelease(xdict);
  OUTLINED_FUNCTION_17_13();
  return v2;
}

unint64_t FigEndpointRemoteXPC_CopyCurrentScreenViewArea(uint64_t a1, const void *a2, void *a3)
{
  OUTLINED_FUNCTION_14_17();
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v6);
  v14 = 0;
  if (FigEndpointRemoteControlSessionXPCRemotePing() || remoteXPCFigEndpoint_getSharedXPCClient(*(DerivedStorage + 8), &v14) || (FigEndpointExtendedGetFigEndpoint(), FigEndpointXPCRemoteGetObjectID(v8, &v15)) || FigXPCCreateBasicMessage(0x63737661u, v15, v17))
  {
    v12 = OUTLINED_FUNCTION_25_9();
  }

  else
  {
    FigXPCMessageSetCFString(*v17, "UUID", a2);
    OUTLINED_FUNCTION_4_35();
    v3 = FigXPCRemoteClientSendSyncMessageCreatingReply(v9, v10, v11);
    v12 = v16;
    if (!v3)
    {
      v3 = FigXPCMessageCopyCFDictionary(v16, "ViewArea", a3);
      v12 = v16;
    }
  }

  FigXPCRelease(v12);
  FigXPCRelease(*v17);
  OUTLINED_FUNCTION_28_10();
  return v3;
}

uint64_t FigEndpointRemoteXPC_AcquireAndCopyResource(uint64_t a1, const void *a2, void *a3, void *a4)
{
  OUTLINED_FUNCTION_14_17();
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v7);
  ObjectID = OUTLINED_FUNCTION_24_12(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, v31);
  if (!ObjectID)
  {
    FigEndpointExtendedGetFigEndpoint();
    ObjectID = FigEndpointXPCRemoteGetObjectID(v17, &v33);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage(0x61727363u, v33, v35);
      if (!ObjectID)
      {
        ObjectID = FigXPCMessageSetCFString(*v35, "ResourceType", a2);
        if (!ObjectID)
        {
          ObjectID = FigXPCMessageSetCFDictionary(*v35, "ResourceOptions", a3);
          if (!ObjectID)
          {
            OUTLINED_FUNCTION_4_35();
            ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(v18, v19, v20);
            if (!ObjectID)
            {
              uint64 = xpc_dictionary_get_uint64(xdict, "ResourceID");
              if (!uint64)
              {
                v29 = 4294950567;
                goto LABEL_12;
              }

              v22 = uint64;
              if (!FigCFEqual(a2, @"endpointStream"))
              {
                v29 = 4294950570;
                goto LABEL_12;
              }

              ObjectID = FigEndpointStreamXPCRemoteRetainCopiedEndpointStream(v22, a4, v23, v24, v25, v26, v27, v28, v32);
            }
          }
        }
      }
    }
  }

  v29 = ObjectID;
LABEL_12:
  FigXPCRelease(*v35);
  FigXPCRelease(xdict);
  FigXPCRemoteClientKillServerOnTimeout();
  return v29;
}

uint64_t FigEndpointRemoteXPC_RelinquishResource()
{
  OUTLINED_FUNCTION_0_85();
  value = 0;
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage(v2);
  ObjectID = OUTLINED_FUNCTION_24_12(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v15);
  if (!ObjectID)
  {
    FigEndpointExtendedGetFigEndpoint();
    ObjectID = FigEndpointXPCRemoteGetObjectID(v12, &v18);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage(0x72727363u, v18, &xdict);
      if (!ObjectID)
      {
        ObjectID = FigXPCMessageSetCFString(xdict, "ResourceType", v1);
        if (!ObjectID)
        {
          if (!FigCFEqual(v1, @"endpointStream"))
          {
            v13 = 4294950570;
            goto LABEL_10;
          }

          ObjectID = FigEndpointStreamXPCRemoteGetObjectID(v0, &value);
          if (!ObjectID)
          {
            xpc_dictionary_set_uint64(xdict, "ResourceID", value);
            ObjectID = FigXPCRemoteClientSendSyncMessage(v16, xdict);
          }
        }
      }
    }
  }

  v13 = ObjectID;
LABEL_10:
  FigXPCRelease(xdict);
  OUTLINED_FUNCTION_17_13();
  return v13;
}

size_t FigEndpointRemoteXPC_EndpointAggregateOperationWithCompletionCallback(const void *a1, const void *a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v36 = 0;
  v37 = 0;
  v35 = 0;
  ObjectID = FigEndpointXPCRemoteGetObjectID(a1, &v37);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(a3, v37, &v35), ObjectID) || (ObjectID = FigEndpointXPCRemoteGetObjectID(a2, &v36), ObjectID))
  {
    v21 = ObjectID;
    if (a5)
    {
      if (a1)
      {
        CFRetain(a1);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      FigSimpleMutexLock(*(DerivedStorage + 32));
      v23 = *(DerivedStorage + 64);
      FigSimpleMutexUnlock(*(DerivedStorage + 32));
      v24 = OUTLINED_FUNCTION_6_30();
      v26 = 0x40000000;
      v27 = __FigEndpointRemoteXPC_EndpointAggregateOperationWithCompletionCallback_block_invoke;
      v28 = &__block_descriptor_tmp_42_2;
      v29 = a5;
      v30 = a1;
      v31 = a2;
      v32 = v23;
      v34 = v21;
      v33 = a6;
      dispatch_async(v24, block);
    }
  }

  else
  {
    FigXPCMessageSetCFDictionary(v35, "AggregateOptions", a4);
    xpc_dictionary_set_uint64(v35, "SubEndpointObjectID", v36);
    OUTLINED_FUNCTION_10_18();
    v21 = FigEndpointRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(v14, v15, v16, v17, v18, v19, v20, a5, a2, a6);
    if (!v21)
    {
      remoteXPCFigEndpoint_clearAggregateSubEndpointsDependentCache(DerivedStorage);
    }
  }

  FigXPCRelease(v35);
  return v21;
}

size_t FigEndpointXPCRemoteGetSource_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<< FigEndpointXPCRemote >>", 0xD4B, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigEndpointXPCRemoteRetainCopiedEndpointFromArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<< FigEndpointXPCRemote >>", 0xD7E, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigEndpointXPCRemoteRetainCopiedEndpointsFromArrayToCFArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<< FigEndpointXPCRemote >>", 0xD91, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigEndpointRemoteXPC_SendData_cold_1(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBEB0uLL, "<< FigEndpointXPCRemote >>", a1, v5, v6, v7, v9);
  *a2 = result;
  return result;
}

uint64_t HandleEndpointRemoteMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  HIDWORD(v104) = 0;
  v102 = 0;
  v103 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v104 + 1);
  if (OpCode)
  {
    return OpCode;
  }

  if (HIDWORD(v104) != 1635150946)
  {
    if (HIDWORD(v104) == 1633907830)
    {
      v105 = 0;
      cf = 0;
      *v111 = 0;
      v112 = v111;
      v113 = 0x2000000000;
      v114 = 0;
      v8 = FigXPCMessageCopyCFString(a2, "EndpointType", &cf);
      if (!v8)
      {
        if (qword_1ED4CDBC8 != -1)
        {
          dispatch_once(&qword_1ED4CDBC8, &__block_literal_global_71);
        }

        OUTLINED_FUNCTION_10_19();
        OUTLINED_FUNCTION_27_11(v9, v10, v11, v12, v13, v14, v15, v16, v102, v103, v104, v105, cf, v107, 0x40000000, v108, v109, v110, v111[0]);
        if (!*(v112 + 3))
        {
          v25 = 0;
LABEL_65:
          v8 = FigEndpointXPCServerWriteNeighborEndpointToReply(a1, v25, a3, 0, v17, v18, v19, v20, v102);
          goto LABEL_66;
        }

        FigEndpointGetCMBaseObject();
        v22 = v21;
        v23 = *(*(CMBaseObjectGetVTable(v21) + 8) + 48);
        if (!v23)
        {
          v34 = 4294954514;
LABEL_67:
          v54 = *(v112 + 3);
          if (v54)
          {
            CFRelease(v54);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v105)
          {
            CFRelease(v105);
          }

          _Block_object_dispose(v111, 8);
          goto LABEL_74;
        }

        v8 = v23(v22, @"Type", *MEMORY[0x1E695E480], &v105);
        if (!v8)
        {
          v24 = FigCFEqual(cf, v105);
          v25 = *(v112 + 3);
          if (!v24 && v25)
          {
            CFRelease(*(v112 + 3));
            v25 = 0;
            *(v112 + 3) = 0;
          }

          goto LABEL_65;
        }
      }

LABEL_66:
      v34 = v8;
      goto LABEL_67;
    }

    uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
    v36 = LookupEndpointByObjectIDForConnection(a1, uint64, &v103, &v102);
    if (v36)
    {
      goto LABEL_59;
    }

    switch(HIDWORD(v104))
    {
      case 0x2E736574:
        v52 = OUTLINED_FUNCTION_1_59(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
        PlaybackSessionMessage = FigXPCHandleStdSetPropertyMessage(v52, v53);
        goto LABEL_62;
      case 0x61656165:
        v49 = OUTLINED_FUNCTION_5_37(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
        v50 = 1;
        break;
      case 0x61657265:
        v49 = OUTLINED_FUNCTION_5_37(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
        v50 = 0;
        break;
      case 0x61727363:
        v44 = OUTLINED_FUNCTION_0_87(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
        PlaybackSessionMessage = HandleEndpointAcquireAndCopyResourceMessage(v44, v45, v46, a3);
        goto LABEL_62;
      case 0x63706273:
        v48 = OUTLINED_FUNCTION_5_37(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
        PlaybackSessionMessage = HandleEndpointCreatePlaybackSessionMessage(v48, a1, a3);
        goto LABEL_62;
      case 0x646F6F6D:
        v36 = FigXPCServerDisassociateObjectWithConnection(a1, uint64);
LABEL_59:
        v34 = v36;
        goto LABEL_74;
      default:
        switch(HIDWORD(v104))
        {
          case 0x64736F63:
            v51 = OUTLINED_FUNCTION_5_37(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointDissociateMessage(v51);
            break;
          case 0x2E637079:
            v88 = OUTLINED_FUNCTION_0_87(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointCopyPropertyMessage(v88, v89, v90, a3);
            break;
          case 0x61637674:
            v95 = OUTLINED_FUNCTION_0_87(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointActivateMessage(v95, v96, v97);
            break;
          case 0x62732020:
            v101 = OUTLINED_FUNCTION_1_59(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointBorrowScreenMessage(v101);
            break;
          case 0x63617220:
            v78 = OUTLINED_FUNCTION_1_59(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointRequestCarUIMessage(v78);
            break;
          case 0x63647263:
            v3 = v103;
            PlaybackSessionMessage = HandleEndpointClearDelegateRemoteControlMessage(v103, v102);
            break;
          case 0x63647274:
            v3 = v103;
            PlaybackSessionMessage = HandleEndpointClearDelegateRoutingMessage(v103, v102);
            break;
          case 0x63656670:
            v71 = OUTLINED_FUNCTION_1_59(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointCopyEndpointForAnotherProcess(v71, v72, a3);
            break;
          case 0x63686D20:
            v63 = OUTLINED_FUNCTION_1_59(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointCopyHIDInputMessage(v63, v64, a3);
            break;
          case 0x636C6363:
            v79 = OUTLINED_FUNCTION_1_59(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointCloseCommChannelMessage(v79, v80);
            break;
          case 0x636D6D64:
            v98 = OUTLINED_FUNCTION_0_87(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointSendCommandMessage(v98, v99, v100);
            break;
          case 0x636D7367:
            v56 = OUTLINED_FUNCTION_5_37(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointCopyMessengerMessage(v56, a1, a3);
            break;
          case 0x63707365:
            v3 = v103;
            v85 = OUTLINED_FUNCTION_7_26();
            PlaybackSessionMessage = HandleEndpointCopySubEndpointsMessage(v85, v86, a3, v87);
            break;
          case 0x63726363:
            v73 = OUTLINED_FUNCTION_1_59(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointCreateCommChannelMessage(v73, v74, a3);
            break;
          case 0x63726373:
            v60 = OUTLINED_FUNCTION_0_87(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointCreateRemoteControlSessionMessage(v60, v61, v62, a3);
            break;
          case 0x63737661:
            v57 = OUTLINED_FUNCTION_1_59(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointCopyCurrentScreenViewAreaMessage(v57, v58, a3);
            break;
          case 0x64617461:
            v66 = OUTLINED_FUNCTION_0_87(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointSendDataMessage(v66, v67, v68);
            break;
          case 0x64617674:
            OUTLINED_FUNCTION_0_87(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointDeactivateMessage();
            break;
          case 0x64627464:
            v59 = OUTLINED_FUNCTION_1_59(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointDisableBluetoothConnectivityToDevice(v59);
            break;
          case 0x64756361:
            v65 = OUTLINED_FUNCTION_1_59(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointDuckAudio(v65);
            break;
          case 0x72727363:
            OUTLINED_FUNCTION_1_59(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointRelinquishResourceMessage();
            break;
          case 0x72737661:
            v94 = OUTLINED_FUNCTION_1_59(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointRequestScreenViewAreaMessage(v94);
            break;
          case 0x73647263:
            v3 = v103;
            v91 = OUTLINED_FUNCTION_7_26();
            PlaybackSessionMessage = HandleEndpointSetDelegateRemoteControlMessage(v91, v92, uint64, v93);
            break;
          case 0x73647274:
            v3 = v103;
            v75 = OUTLINED_FUNCTION_7_26();
            PlaybackSessionMessage = HandleEndpointSetDelegateRoutingMessage(v75, v76, uint64, v77);
            break;
          case 0x73686D20:
            v70 = OUTLINED_FUNCTION_1_59(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointSetHIDInputMessage(v70);
            break;
          case 0x74732020:
            v69 = OUTLINED_FUNCTION_1_59(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointTakeScreenMessage(v69);
            break;
          case 0x756E6273:
            v84 = OUTLINED_FUNCTION_1_59(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointUnborrowScreenMessage(v84);
            break;
          case 0x75706665:
            v81 = OUTLINED_FUNCTION_0_87(v36, v37, v38, v39, v40, v41, v42, v43, v102, v103);
            PlaybackSessionMessage = HandleEndpointUpdateFeaturesMessage(v81, v82, v83);
            break;
          default:
            v34 = 4294951138;
            goto LABEL_74;
        }

LABEL_62:
        v34 = PlaybackSessionMessage;
        if (!v3)
        {
          return v34;
        }

        goto LABEL_75;
    }

    PlaybackSessionMessage = HandleEndpointAddRemoveEndpointMessage(v49, v50, a1, a2);
    goto LABEL_62;
  }

  *v111 = 0;
  v112 = v111;
  v113 = 0x2000000000;
  LOBYTE(v114) = 0;
  if (qword_1ED4CDBC8 != -1)
  {
    dispatch_once(&qword_1ED4CDBC8, &__block_literal_global_71);
  }

  OUTLINED_FUNCTION_10_19();
  OUTLINED_FUNCTION_27_11(v26, v27, v28, v29, v30, v31, v32, v33, v102, v103, v104, v105, cf, v107, 0x40000000, v108, v109, v110, v111[0]);
  xpc_dictionary_set_BOOL(a3, ".Value", v112[24] != 0);
  _Block_object_dispose(v111, 8);
  v34 = 0;
LABEL_74:
  v3 = v103;
  if (v103)
  {
LABEL_75:
    CFRelease(v3);
  }

  return v34;
}

uint64_t HandleNoReplyEndpointMessage()
{
  OUTLINED_FUNCTION_11_19();
  v8 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode(v1, &v8);
  if (OpCode)
  {
    return OpCode;
  }

  uint64 = xpc_dictionary_get_uint64(v1, ".objectID");
  v4 = LookupEndpointByObjectIDForConnection(v0, uint64, &cf, 0);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4294950586;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t FigXPCEndpointServerRetainEndpointFromMessage(void *a1, CMBlockBufferRef **a2)
{
  v12 = 0;
  v13 = 0;
  uint64 = xpc_dictionary_get_uint64(a1, "EndpointObjectID");
  if (xpc_dictionary_get_uint64(a1, "EndpointXPCSource") != qword_1ED4CDBC0)
  {
    result = FigEndpointXPCRemoteRetainCopiedEndpointFromReply(a1, &v13, &v12, v6, v7, v8, v9, v10, v12);
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = FigXPCEndpointServerRetainEndpointForID(uint64, &v12, v5, v6, v7, v8, v9, v10);
  if (!result)
  {
LABEL_5:
    result = 0;
    *a2 = v12;
  }

  return result;
}

size_t FigEndpointXPCServerWriteNeighborEndpointToReply(_xpc_connection_s *a1, void *cf, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  value = 0;
  if (!cf)
  {
    v16 = 0;
LABEL_6:
    xpc_dictionary_set_uint64(a3, "EndpointObjectID", v16);
    xpc_dictionary_set_uint64(a3, "EndpointXPCSource", value);
    if ((value & 0x1000) != 0)
    {
      xpc_dictionary_set_uint64(a3, "SubEndpointObjectID", v23);
      xpc_dictionary_set_uint64(a3, "SubEndpointXPCSource", v21);
    }

    result = 0;
    if (a4)
    {
      *a4 = v24;
    }

    return result;
  }

  v13 = CFGetTypeID(cf);
  if (v13 == FigEndpointGetTypeID(v13, v14))
  {
    result = figEndpointXPC_getNeighborObjectIDAndSource(a1, cf, &v24, &value, &v23, &v21);
    if (result)
    {
      return result;
    }

    v16 = v24;
    goto LABEL_6;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_3();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0xFFFFBEB0uLL, "<< FigEndpointXPCServer >>", 0x95E, v18, v19, v20, a9);
}

size_t figEndpointXPC_getNeighborObjectIDAndSource(_xpc_connection_s *a1, void *a2, void *a3, uint64_t *a4, void *a5, void *a6)
{
  v33 = 0;
  cf = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  if (!a2 || (v12 = CFGetTypeID(a2), v12 != FigEndpointGetTypeID(v12, v13)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v28 = 662;
LABEL_26:
    ObjectIDForSource = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 0xFFFFBEB0uLL, "<< FigEndpointXPCServer >>", v28, v25, v26, v27, v29);
    goto LABEL_27;
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v28 = 663;
    goto LABEL_26;
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_4_15();
    v28 = 664;
    goto LABEL_26;
  }

  IsXPCRemote = FigEndpointIsXPCRemote(a2);
  if (!IsXPCRemote)
  {
    v17 = qword_1ED4CDBC0;
    v31 = qword_1ED4CDBC0;
    ClassID = FigEndpointAggregateGetClassID(IsXPCRemote, v15);
    if (CMBaseObjectIsMemberOfClass(a2, ClassID))
    {
      v17 |= 0x2000uLL;
      v31 = v17;
    }

    FigEndpointGetCMBaseObject();
    v22 = v21;
    v23 = *(*(CMBaseObjectGetVTable(v21) + 8) + 48);
    if (!v23 || (v23(v22, @"CarPlaySubEndpoint", *MEMORY[0x1E695E480], &cf), !cf) || (v17 |= 0x1000uLL, v31 = v17, ObjectIDForSource = figEndpointXPC_getNeighborObjectIDAndSource(a1, cf, &v32, &v30, 0, 0), !ObjectIDForSource))
    {
      ObjectIDForSource = figEndpointXPC_getObjectIDForSource(a1, a2, v17, &v33);
      if (!ObjectIDForSource)
      {
        goto LABEL_9;
      }
    }

LABEL_27:
    v18 = ObjectIDForSource;
    goto LABEL_13;
  }

  ObjectIDForSource = FigEndpointXPCRemoteGetSource(a2, &v31);
  if (ObjectIDForSource)
  {
    goto LABEL_27;
  }

  ObjectIDForSource = figEndpointXPC_getObjectIDForSource(a1, a2, v31, &v33);
  if (ObjectIDForSource)
  {
    goto LABEL_27;
  }

  v17 = v31;
LABEL_9:
  *a3 = v33;
  *a4 = v17;
  if (a5)
  {
    *a5 = v32;
  }

  v18 = 0;
  if (a6)
  {
    *a6 = v30;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

size_t FigEndpointXPCServerAppendNeighborEndpointToArray(_xpc_connection_s *a1, void *cf, void *a3, uint64_t *a4)
{
  if (cf && (v8 = CFGetTypeID(cf), v8 == FigEndpointGetTypeID(v8, v9)))
  {
    empty = xpc_dictionary_create_empty();
    v15 = FigEndpointXPCServerWriteNeighborEndpointToReply(a1, cf, empty, a4, v11, v12, v13, v14, v21);
    if (!v15)
    {
      xpc_array_set_value(a3, 0xFFFFFFFFFFFFFFFFLL, empty);
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0xFFFFBEB0uLL, "<< FigEndpointXPCServer >>", 0x993, v18, v19, v20, v21);
    empty = 0;
  }

  FigXPCRelease(empty);
  return v15;
}

uint64_t HandleEndpointCopyPropertyMessage(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  theArray = 0;
  cf1 = 0;
  v6 = FigXPCMessageCopyCFString(a3, ".PropertyName", &cf1);
  if (!v6)
  {
    v7 = cf1;
    if (cf1)
    {
      v8 = *(*(CMBaseObjectGetVTable(a1) + 8) + 48);
      if (!v8)
      {
        v21 = 4294954514;
        goto LABEL_20;
      }

      v9 = *MEMORY[0x1E695E480];
      v6 = v8(a1, v7, *MEMORY[0x1E695E480], &theArray);
      if (!v6)
      {
        if (CFEqual(cf1, @"Streams") || CFEqual(cf1, @"ExternalPlaybackCompetingStreams"))
        {
          v10 = theArray;
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
            theArray = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
            if (!theArray)
            {
              v21 = 4294950585;
LABEL_19:
              CFRelease(v10);
              goto LABEL_20;
            }

            if (Count >= 1)
            {
              v12 = 0;
              while (1)
              {
                CFArrayGetValueAtIndex(v10, v12);
                v13 = OUTLINED_FUNCTION_21_15();
                v16 = FigXPCEndpointStreamServerAssociateCopiedNeighborFigEndpointStream(v13, v14, v15);
                if (v16)
                {
                  break;
                }

                v17 = OUTLINED_FUNCTION_15_19();
                v19 = CFNumberCreate(v17, kCFNumberSInt64Type, v18);
                if (!v19)
                {
                  v21 = 4294950585;
                  if (v10)
                  {
                    goto LABEL_19;
                  }

                  goto LABEL_20;
                }

                v20 = v19;
                CFArrayAppendValue(theArray, v19);
                CFRelease(v20);
                if (Count == ++v12)
                {
                  goto LABEL_17;
                }
              }

LABEL_18:
              v21 = v16;
              if (!v10)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }
        }

        else
        {
          v10 = 0;
        }

LABEL_17:
        v16 = FigXPCMessageSetCFObject(a4, ".Value", theArray);
        goto LABEL_18;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_3();
      v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFCE10uLL, "<< FigEndpointXPCServer >>", 0x76F, v24, v25, v26, v27);
    }
  }

  v21 = v6;
LABEL_20:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v21;
}

uint64_t HandleEndpointSetDelegateRemoteControlMessage(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  cf = 0;
  v12 = 0u;
  v13 = 0u;
  if (!a4)
  {
    return 4294954513;
  }

  DelegateCallbackParameters = CreateDelegateCallbackParameters(a3, a2, &cf);
  v7 = cf;
  if (DelegateCallbackParameters)
  {
    goto LABEL_9;
  }

  v8 = *(a4 + 16);
  *(a4 + 16) = cf;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v12 = *(a4 + 16);
  *&v13 = SendDidReceiveDataFromCommChannelCallback;
  *(&v13 + 1) = SendDidCloseCommChannelCallback;
  v9 = *(*(CMBaseObjectGetVTable(a1) + 16) + 56);
  if (v9)
  {
    DelegateCallbackParameters = v9(a1, &v12);
LABEL_9:
    v10 = DelegateCallbackParameters;
    if (!v7)
    {
      return v10;
    }

    goto LABEL_12;
  }

  v10 = 4294954514;
  if (v7)
  {
LABEL_12:
    CFRelease(v7);
  }

  return v10;
}

uint64_t HandleEndpointClearDelegateRemoteControlMessage(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294954513;
  }

  OUTLINED_FUNCTION_24_13();
  v5 = *(v4 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(v3 + 16) = 0;
  }

  v6 = *(*(CMBaseObjectGetVTable(v2) + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v2, 0);
}

uint64_t HandleEndpointSetDelegateRoutingMessage(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  cf = 0;
  if (!a4)
  {
    return 4294954513;
  }

  DelegateCallbackParameters = CreateDelegateCallbackParameters(a3, a2, &cf);
  v7 = cf;
  if (DelegateCallbackParameters)
  {
    goto LABEL_9;
  }

  v8 = *(a4 + 8);
  *(a4 + 8) = cf;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  *&v13 = *(a4 + 8);
  *(&v13 + 1) = SendHandleAuthRequiredCallback;
  *&v14 = SendHandleFailedCallback;
  v9 = *(*(CMBaseObjectGetVTable(a1) + 16) + 48);
  if (v9)
  {
    DelegateCallbackParameters = v9(a1, &v13);
LABEL_9:
    v10 = DelegateCallbackParameters;
    if (!v7)
    {
      return v10;
    }

    goto LABEL_12;
  }

  v10 = 4294954514;
  if (v7)
  {
LABEL_12:
    CFRelease(v7);
  }

  return v10;
}

uint64_t HandleEndpointClearDelegateRoutingMessage(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294954513;
  }

  OUTLINED_FUNCTION_24_13();
  v5 = *(v4 + 8);
  if (v5)
  {
    CFRelease(v5);
    *(v3 + 8) = 0;
  }

  v6 = *(*(CMBaseObjectGetVTable(v2) + 16) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v2, 0);
}

uint64_t HandleEndpointRequestCarUIMessage(uint64_t a1)
{
  v18 = 0;
  cf = 0;
  if (!a1 || (OUTLINED_FUNCTION_24_13(), ClassID = FigEndpointExtendedGetClassID(v3, v4), !OUTLINED_FUNCTION_17_14(ClassID)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x346, v13, v14, v15, v18);
    goto LABEL_8;
  }

  v6 = FigXPCMessageCopyCFString(v2, "UUID", &v18);
  if (v6)
  {
    goto LABEL_8;
  }

  v7 = OUTLINED_FUNCTION_21_15();
  v6 = FigXPCMessageCopyCFURL(v7, v8, v9);
  if (v6)
  {
    goto LABEL_8;
  }

  if (*(*(CMBaseObjectGetVTable(v1) + 24) + 8))
  {
    v10 = OUTLINED_FUNCTION_4_36();
    v6 = v11(v10);
LABEL_8:
    v16 = v6;
    goto LABEL_10;
  }

  v16 = 4294954514;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t HandleEndpointBorrowScreenMessage(uint64_t a1)
{
  v19 = 0;
  if (!a1 || (OUTLINED_FUNCTION_11_19(), ClassID = FigEndpointExtendedGetClassID(v1, v2), !OUTLINED_FUNCTION_17_14(ClassID)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x35F, v14, v15, v16, 0);
    goto LABEL_8;
  }

  v4 = OUTLINED_FUNCTION_14_18();
  v7 = FigXPCMessageCopyCFString(v4, v5, v6);
  if (v7)
  {
    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_19_15();
  v7 = FigXPCMessageCopyCFString(v8, v9, v10);
  if (v7)
  {
    goto LABEL_8;
  }

  if (*(*(OUTLINED_FUNCTION_22_12() + 24) + 16))
  {
    v11 = OUTLINED_FUNCTION_4_36();
    v7 = v12(v11);
LABEL_8:
    v17 = v7;
    goto LABEL_10;
  }

  v17 = 4294954514;
LABEL_10:
  if (v19)
  {
    CFRelease(v19);
  }

  return v17;
}

uint64_t HandleEndpointUnborrowScreenMessage(uint64_t a1)
{
  v19 = 0;
  if (!a1 || (OUTLINED_FUNCTION_11_19(), ClassID = FigEndpointExtendedGetClassID(v1, v2), !OUTLINED_FUNCTION_17_14(ClassID)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x379, v14, v15, v16, 0);
    goto LABEL_8;
  }

  v4 = OUTLINED_FUNCTION_14_18();
  v7 = FigXPCMessageCopyCFString(v4, v5, v6);
  if (v7)
  {
    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_19_15();
  v7 = FigXPCMessageCopyCFString(v8, v9, v10);
  if (v7)
  {
    goto LABEL_8;
  }

  if (*(*(OUTLINED_FUNCTION_22_12() + 24) + 24))
  {
    v11 = OUTLINED_FUNCTION_4_36();
    v7 = v12(v11);
LABEL_8:
    v17 = v7;
    goto LABEL_10;
  }

  v17 = 4294954514;
LABEL_10:
  if (v19)
  {
    CFRelease(v19);
  }

  return v17;
}

uint64_t HandleEndpointTakeScreenMessage(uint64_t a1)
{
  v19 = 0;
  if (!a1 || (OUTLINED_FUNCTION_11_19(), ClassID = FigEndpointExtendedGetClassID(v1, v2), !OUTLINED_FUNCTION_17_14(ClassID)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x393, v14, v15, v16, 0);
    goto LABEL_8;
  }

  v4 = OUTLINED_FUNCTION_14_18();
  v7 = FigXPCMessageCopyCFString(v4, v5, v6);
  if (v7)
  {
    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_19_15();
  v7 = FigXPCMessageCopyCFString(v8, v9, v10);
  if (v7)
  {
    goto LABEL_8;
  }

  if (*(*(OUTLINED_FUNCTION_22_12() + 24) + 32))
  {
    v11 = OUTLINED_FUNCTION_4_36();
    v7 = v12(v11);
LABEL_8:
    v17 = v7;
    goto LABEL_10;
  }

  v17 = 4294954514;
LABEL_10:
  if (v19)
  {
    CFRelease(v19);
  }

  return v17;
}

uint64_t HandleEndpointCopyHIDInputMessage(char *a1, uint64_t a2, void *a3)
{
  v17 = 0;
  cf = 0;
  if (!a1 || (ClassID = FigEndpointExtendedGetClassID(a1, a2), !CMBaseObjectIsMemberOfClass(a1, ClassID)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x3AD, v12, v13, v14, v17);
    goto LABEL_8;
  }

  v6 = OUTLINED_FUNCTION_15_19();
  v9 = FigXPCMessageCopyCFString(v6, v7, v8);
  if (v9)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v10 = *(*(CMBaseObjectGetVTable(a1) + 24) + 64);
  if (v10)
  {
    v9 = v10(a1, cf, *MEMORY[0x1E695E480], &v17);
    if (!v9)
    {
      v9 = FigXPCMessageSetCFNumber(a3, "HIDInputMode", v17);
    }

    goto LABEL_8;
  }

  v15 = 4294954514;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v15;
}

uint64_t HandleEndpointDisableBluetoothConnectivityToDevice(uint64_t a1)
{
  v19 = 0;
  if (!a1 || (OUTLINED_FUNCTION_11_19(), ClassID = FigEndpointExtendedGetClassID(v1, v2), !OUTLINED_FUNCTION_17_14(ClassID)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x3C7, v14, v15, v16, 0);
    goto LABEL_8;
  }

  v4 = OUTLINED_FUNCTION_14_18();
  v7 = FigXPCMessageCopyCFString(v4, v5, v6);
  if (v7)
  {
    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_19_15();
  v7 = FigXPCMessageCopyCFDictionary(v8, v9, v10);
  if (v7)
  {
    goto LABEL_8;
  }

  if (*(*(OUTLINED_FUNCTION_22_12() + 24) + 40))
  {
    v11 = OUTLINED_FUNCTION_4_36();
    v7 = v12(v11);
LABEL_8:
    v17 = v7;
    goto LABEL_10;
  }

  v17 = 4294954514;
LABEL_10:
  if (v19)
  {
    CFRelease(v19);
  }

  return v17;
}

size_t HandleEndpointDuckAudio(uint64_t a1)
{
  if (a1 && (OUTLINED_FUNCTION_11_19(), ClassID = FigEndpointExtendedGetClassID(v2, v3), OUTLINED_FUNCTION_17_14(ClassID)))
  {
    v5 = OUTLINED_FUNCTION_14_18();
    v8 = FigXPCMessageCopyCFDictionary(v5, v6, v7);
    if (!v8)
    {
      if (!*(*(CMBaseObjectGetVTable(v1) + 24) + 48))
      {
        return 4294954514;
      }

      v9 = OUTLINED_FUNCTION_2_9();
      return v10(v9);
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x3E0, v12, v13, v14, v17);
  }

  return v8;
}

uint64_t HandleEndpointSetHIDInputMessage(uint64_t a1)
{
  v19 = 0;
  if (!a1 || (OUTLINED_FUNCTION_11_19(), ClassID = FigEndpointExtendedGetClassID(v1, v2), !OUTLINED_FUNCTION_17_14(ClassID)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x3F6, v14, v15, v16, 0);
    goto LABEL_8;
  }

  v4 = OUTLINED_FUNCTION_14_18();
  v7 = FigXPCMessageCopyCFString(v4, v5, v6);
  if (v7)
  {
    goto LABEL_8;
  }

  v8 = OUTLINED_FUNCTION_19_15();
  v7 = FigXPCMessageCopyCFNumber(v8, v9, v10);
  if (v7)
  {
    goto LABEL_8;
  }

  if (*(*(OUTLINED_FUNCTION_22_12() + 24) + 56))
  {
    v11 = OUTLINED_FUNCTION_4_36();
    v7 = v12(v11);
LABEL_8:
    v17 = v7;
    goto LABEL_10;
  }

  v17 = 4294954514;
LABEL_10:
  if (v19)
  {
    CFRelease(v19);
  }

  return v17;
}

uint64_t HandleEndpointSendCommandMessage(char *a1, xpc_connection_t connection, void *a3)
{
  v34 = 0;
  cf = 0;
  pid = xpc_connection_get_pid(connection);
  cf1 = 0;
  if (!a1 || (v8 = pid, ClassID = FigEndpointExtendedGetClassID(pid, v7), !CMBaseObjectIsMemberOfClass(a1, ClassID)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x716, v28, v29, v30, v32);
LABEL_16:
    v26 = v10;
    MutableCopy = 0;
    goto LABEL_17;
  }

  v10 = FigXPCMessageCopyCFString(a3, "Command", &cf);
  if (v10)
  {
    goto LABEL_16;
  }

  v10 = FigXPCMessageCopyCFDictionary(a3, "Params", &v34);
  if (v10)
  {
    goto LABEL_16;
  }

  CompletionCallbackParametersFromMessageAndConnection_1 = CreateCompletionCallbackParametersFromMessageAndConnection_1(a3, connection);
  v12 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], v34);
  if (MutableCopy)
  {
    FigEndpointGetCMBaseObject();
    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable(v14) + 8) + 48);
    if (!v16)
    {
LABEL_19:
      v26 = 4294954514;
      goto LABEL_20;
    }

    v17 = v16(v15, @"Type", v12, &cf1);
    if (!v17)
    {
      if (FigCFEqual(cf1, @"EndpointType_Car") || (v17 = FigCFDictionarySetInt64(MutableCopy, @"clientPID", v8, v18, v19, v20, v21, v22), !v17))
      {
        v23 = cf;
        if (CompletionCallbackParametersFromMessageAndConnection_1)
        {
          v24 = SendCommandCompletionCallback;
        }

        else
        {
          v24 = 0;
        }

        v25 = *(*(CMBaseObjectGetVTable(a1) + 24) + 72);
        if (v25)
        {
          v26 = v25(a1, v23, MutableCopy, v24, CompletionCallbackParametersFromMessageAndConnection_1);
LABEL_17:
          CompletionCallbackParametersFromMessageAndConnection_1 = 0;
          goto LABEL_20;
        }

        CompletionCallbackParametersFromMessageAndConnection_1 = 0;
        goto LABEL_19;
      }
    }

    v26 = v17;
  }

  else
  {
    v26 = 4294954510;
  }

LABEL_20:
  DestroyCompletionCallbackParameters(CompletionCallbackParametersFromMessageAndConnection_1);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v26;
}

uint64_t HandleEndpointCreateRemoteControlSessionMessage(char *a1, uint64_t a2, void *a3, void *a4)
{
  cf = 0;
  v22 = 0;
  if (!a1 || (ClassID = FigEndpointExtendedGetClassID(a1, a2), !CMBaseObjectIsMemberOfClass(a1, ClassID)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x410, v16, v17, v18, v20);
    goto LABEL_10;
  }

  v8 = FigXPCMessageCopyCFDictionary(a3, "Params", &cf);
  if (v8)
  {
LABEL_10:
    v11 = v8;
    goto LABEL_12;
  }

  if (*(*(CMBaseObjectGetVTable(a1) + 24) + 80))
  {
    v9 = OUTLINED_FUNCTION_22_1();
    v11 = v10(v9);
    if (!v11)
    {
      if (v22)
      {
        v12 = OUTLINED_FUNCTION_21_15();
        v11 = FigXPCEndpointRemoteControlSessionServerAssociateCopiedNeighborRemoteControlSession(v12, v13, v14);
        if (!v11)
        {
          xpc_dictionary_set_uint64(a4, "RemoteControlSessionID", 0);
        }
      }
    }
  }

  else
  {
    v11 = 4294954514;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v11;
}

uint64_t HandleEndpointCreateCommChannelMessage(uint64_t a1, void *a2, void *a3)
{
  cf = 0;
  v11 = 0;
  FigXPCMessageCopyCFDictionary(a2, "Params", &cf);
  v5 = cf;
  if (*(*(CMBaseObjectGetVTable(a1) + 24) + 88))
  {
    v6 = OUTLINED_FUNCTION_21_15();
    v8 = v7(v6, v5);
    if (!v8)
    {
      FigXPCMessageSetCFString(a3, "CommChannelUUID", v11);
    }
  }

  else
  {
    v8 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v8;
}

uint64_t HandleEndpointSendDataMessage(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_11_19();
  v18 = 0;
  cf = 0;
  v5 = OUTLINED_FUNCTION_15_19();
  v8 = FigXPCMessageCopyCFString(v5, v6, v7);
  if (v8)
  {
    goto LABEL_8;
  }

  v8 = FigXPCMessageCopyCFData(a3, "Data", &v18);
  if (v8)
  {
    goto LABEL_8;
  }

  v9 = OUTLINED_FUNCTION_22_1();
  CompletionCallbackParametersFromMessageAndConnection_1 = CreateCompletionCallbackParametersFromMessageAndConnection_1(v9, v10);
  v13 = v18;
  v12 = cf;
  if (CompletionCallbackParametersFromMessageAndConnection_1)
  {
    v14 = SendDataCompletionCallback;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*(CMBaseObjectGetVTable(v3) + 24) + 96);
  if (v15)
  {
    v8 = v15(v3, v12, v13, v14, CompletionCallbackParametersFromMessageAndConnection_1);
LABEL_8:
    v16 = v8;
    goto LABEL_10;
  }

  v16 = 4294954514;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v16;
}

uint64_t HandleEndpointCloseCommChannelMessage(uint64_t a1, void *a2)
{
  cf = 0;
  v3 = FigXPCMessageCopyCFString(a2, "CommChannelUUID", &cf);
  if (v3)
  {
    goto LABEL_4;
  }

  if (*(*(CMBaseObjectGetVTable(a1) + 24) + 104))
  {
    v4 = OUTLINED_FUNCTION_2_9();
    v3 = v5(v4);
LABEL_4:
    v6 = v3;
    goto LABEL_6;
  }

  v6 = 4294954514;
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

size_t HandleEndpointRequestScreenViewAreaMessage(uint64_t a1)
{
  if (a1 && (OUTLINED_FUNCTION_24_13(), ClassID = FigEndpointExtendedGetClassID(v3, v4), OUTLINED_FUNCTION_17_14(ClassID)))
  {
    v6 = OUTLINED_FUNCTION_21_15();
    v9 = FigXPCMessageCopyCFString(v6, v7, v8);
    if (!v9)
    {
      int64 = xpc_dictionary_get_int64(v2, "Index");
      v11 = *(*(CMBaseObjectGetVTable(v1) + 24) + 112);
      if (!v11)
      {
        return 4294954514;
      }

      return v11(v1, 0, int64);
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x454, v13, v14, v15, v18);
  }

  return v9;
}

uint64_t HandleEndpointCopyCurrentScreenViewAreaMessage(char *a1, uint64_t a2, void *a3)
{
  cf = 0;
  v20 = 0;
  if (!a1 || (ClassID = FigEndpointExtendedGetClassID(a1, a2), !CMBaseObjectIsMemberOfClass(a1, ClassID)))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE12uLL, "<< FigEndpointXPCServer >>", 0x46B, v15, v16, v17, cf);
    goto LABEL_9;
  }

  v6 = OUTLINED_FUNCTION_15_19();
  v9 = FigXPCMessageCopyCFString(v6, v7, v8);
  if (v9)
  {
LABEL_9:
    v13 = v9;
    goto LABEL_11;
  }

  v10 = *(*(CMBaseObjectGetVTable(a1) + 24) + 120);
  if (v10)
  {
    v11 = v10(a1, v20, &cf);
    v12 = cf;
    if (!v11)
    {
      v13 = FigXPCMessageSetCFDictionary(a3, "ViewArea", cf);
      v12 = cf;
      if (!cf)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    v13 = v11;
    if (cf)
    {
LABEL_7:
      CFRelease(v12);
    }
  }

  else
  {
    v13 = 4294954514;
  }

LABEL_11:
  if (v20)
  {
    CFRelease(v20);
  }

  return v13;
}

unint64_t HandleEndpointActivateMessage(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_11_19();
  v5 = OUTLINED_FUNCTION_15_19();
  v8 = FigXPCMessageCopyCFDictionary(v5, v6, v7);
  if (!v8)
  {
    if (!xpc_dictionary_get_uint64(a3, "ActivationFeatures"))
    {
      return 4294950576;
    }

    v9 = OUTLINED_FUNCTION_22_1();
    CreateCompletionCallbackParametersFromMessageAndConnection_1(v9, v10);
    OUTLINED_FUNCTION_8_23();
    if (!*(*(CMBaseObjectGetVTable(v3) + 16) + 8))
    {
      return 4294954514;
    }

    v11 = OUTLINED_FUNCTION_2_9();
    return v12(v11);
  }

  return v8;
}

unint64_t HandleEndpointDeactivateMessage()
{
  OUTLINED_FUNCTION_11_19();
  v1 = OUTLINED_FUNCTION_15_19();
  v4 = FigXPCMessageCopyCFDictionary(v1, v2, v3);
  if (!v4)
  {
    v5 = OUTLINED_FUNCTION_22_1();
    CompletionCallbackParametersFromMessageAndConnection_1 = CreateCompletionCallbackParametersFromMessageAndConnection_1(v5, v6);
    v8 = *(*(CMBaseObjectGetVTable(v0) + 16) + 48);
    if (v8)
    {
      v8(v0, 0);
    }

    if (CompletionCallbackParametersFromMessageAndConnection_1)
    {
      v9 = ActivationCompletionCallback;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(*(CMBaseObjectGetVTable(v0) + 16) + 16);
    if (!v10)
    {
      return 4294954514;
    }

    return v10(v0, 0, v9, CompletionCallbackParametersFromMessageAndConnection_1);
  }

  return v4;
}

unint64_t HandleEndpointUpdateFeaturesMessage(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_11_19();
  v5 = OUTLINED_FUNCTION_15_19();
  v8 = FigXPCMessageCopyCFDictionary(v5, v6, v7);
  if (!v8)
  {
    xpc_dictionary_get_uint64(a3, "ActivationFeatures");
    v9 = OUTLINED_FUNCTION_22_1();
    CreateCompletionCallbackParametersFromMessageAndConnection_1(v9, v10);
    OUTLINED_FUNCTION_8_23();
    if (!*(*(CMBaseObjectGetVTable(v3) + 16) + 80))
    {
      return 4294954514;
    }

    v11 = OUTLINED_FUNCTION_2_9();
    return v12(v11);
  }

  return v8;
}

uint64_t HandleEndpointRelinquishResourceMessage()
{
  OUTLINED_FUNCTION_11_19();
  v20 = 0;
  cf = 0;
  v2 = OUTLINED_FUNCTION_14_18();
  v5 = FigXPCMessageCopyCFString(v2, v3, v4);
  if (v5)
  {
    goto LABEL_9;
  }

  uint64 = xpc_dictionary_get_uint64(v1, "ResourceID");
  if (uint64)
  {
    v7 = uint64;
    if (FigCFEqual(cf, @"endpointStream"))
    {
      v5 = FigXPCEndpointStreamServerRetainEndpointStreamForID(v7, &v20, v8, v9, v10, v11, v12, v13);
      if (v5)
      {
LABEL_9:
        v18 = v5;
        goto LABEL_12;
      }

      if (v0)
      {
        ClassID = FigEndpointExtendedGetClassID(v5, v14);
        OUTLINED_FUNCTION_17_14(ClassID);
      }

      if (*(*(OUTLINED_FUNCTION_22_12() + 24) + 136))
      {
        v16 = OUTLINED_FUNCTION_4_36();
        v5 = v17(v16);
        goto LABEL_9;
      }

      v18 = 4294954514;
    }

    else
    {
      v18 = 4294950570;
    }
  }

  else
  {
    v18 = 4294950576;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v18;
}

uint64_t HandleEndpointCopyMessengerMessage(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], "Messenger", 0x8000100u);
  if (!*(*(CMBaseObjectGetVTable(a1) + 8) + 48))
  {
    v9 = 4294954514;
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = OUTLINED_FUNCTION_7_26();
  v8 = v7(v6);
  if (v8)
  {
    v9 = v8;
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    CFRelease(v5);
    goto LABEL_8;
  }

  cf = 0;
  v9 = FigXPCMessageSetCFObject(a3, ".Value", 0);
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t HandleEndpointCopySubEndpointsMessage(uint64_t a1, _xpc_connection_s *a2, void *a3, uint64_t a4)
{
  value = 0;
  cf = 0;
  v13 = 0;
  if (a4)
  {
    FigEndpointGetCMBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable(v7) + 8) + 48);
    if (v9)
    {
      v10 = v9(v8, @"Endpoints", *MEMORY[0x1E695E480], &cf);
      if (v10 || (v10 = FigEndpointRPCCacheComputeCacheDeltas(*(a4 + 24), a2, cf, &value, &v13), v10))
      {
        v11 = v10;
      }

      else
      {
        if (value)
        {
          xpc_dictionary_set_value(a3, "AddedSubEndpoints", value);
        }

        if (v13)
        {
          xpc_dictionary_set_value(a3, "SubtractedSubEndpoints", v13);
        }

        v11 = 0;
      }
    }

    else
    {
      v11 = 4294954514;
    }
  }

  else
  {
    v11 = 4294954513;
  }

  FigXPCRelease(value);
  FigXPCRelease(v13);
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

size_t HandleEndpointCopyEndpointForAnotherProcess(const void *a1, xpc_object_t xdict, void *a3)
{
  int64 = xpc_dictionary_get_int64(xdict, "OtherProcessPID");
  if (!int64)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFBEB0uLL, "<< FigEndpointXPCServer >>", 0x490, v13, v14, v15, v16);
    goto LABEL_4;
  }

  EndpointRefCon = CreateEndpointRefCon(a1);
  OUTLINED_FUNCTION_9_20();
  v10 = FigXPCServerAssociateCopiedObjectWithNeighborProcessByPID(v7, int64, a1, EndpointRefCon, v8, 0, v9);
  if (!v10)
  {
    xpc_dictionary_set_uint64(a3, ".objectID", 0);
LABEL_4:
    EndpointRefCon = 0;
  }

  DisposeEndpointRefCon(EndpointRefCon);
  return v10;
}

void SendDidReceiveDataFromCommChannelCallback(uint64_t a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5)
{
  xdict = 0;
  if (a5)
  {
    v9 = FigXPCCreateBasicMessage(0x72636463u, *(a5 + 16), &xdict);
    v10 = xdict;
    if (!v9)
    {
      FigXPCMessageSetCFString(xdict, "CommChannelUUID", a3);
      xpc_dictionary_set_uint64(xdict, "ActivationSeed", a2);
      FigXPCMessageSetCFString(xdict, "DelegateFunctionType", @"hrcd");
      FigXPCMessageSetCFData(xdict, "Data", a4);
      xpc_connection_send_message(*(a5 + 24), xdict);
      v10 = xdict;
    }
  }

  else
  {
    v10 = 0;
  }

  FigXPCRelease(v10);
}

void SendDidCloseCommChannelCallback(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (a4)
  {
    v7 = OUTLINED_FUNCTION_23_13();
    if (!FigXPCCreateBasicMessage(v7 | 0x72630000u, v8, v9))
    {
      FigXPCMessageSetCFString(0, "CommChannelUUID", a3);
      xpc_dictionary_set_uint64(0, "ActivationSeed", v4);
      FigXPCMessageSetCFString(0, "DelegateFunctionType", @"hrcc");
      xpc_connection_send_message(*(a4 + 24), 0);
    }
  }

  FigXPCRelease(0);
}

void SendHandleFailedCallback(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = OUTLINED_FUNCTION_23_13();
    if (!FigXPCCreateBasicMessage(v7 | 0x72740000u, v8, v9))
    {
      v10 = *(a4 + 24);
      v20[0] = @"SubEndpoint";
      if (CFDictionaryContainsKey(a3, @"SubEndpoint"))
      {
        Value = CFDictionaryGetValue(a3, @"SubEndpoint");
        CopyRemovingKeys = FigCFDictionaryCreateCopyRemovingKeys(a3, v20, 1);
        v18 = FigEndpointXPCServerWriteNeighborEndpointToReply(v10, Value, 0, 0, v14, v15, v16, v17, v19);
        if (!v18)
        {
          v18 = FigXPCMessageSetCFDictionary(0, "FailureInfo", CopyRemovingKeys);
        }

        v11 = v18;
        if (CopyRemovingKeys)
        {
          CFRelease(CopyRemovingKeys);
        }
      }

      else
      {
        v11 = FigXPCMessageSetCFDictionary(0, "FailureInfo", a3);
      }

      if (!v11)
      {
        xpc_dictionary_set_uint64(0, "ActivationSeed", v4);
        FigXPCMessageSetCFString(0, "DelegateFunctionType", @"hrtf");
        xpc_connection_send_message(*(a4 + 24), 0);
      }
    }
  }

  FigXPCRelease(0);
}

void SendCommandCompletionCallback(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  message = 0;
  if (a4)
  {
    v6 = OUTLINED_FUNCTION_4_18(a1, a2);
    if (!v6)
    {
      v14 = OUTLINED_FUNCTION_10_10(v6, v7, v8, v9, v10, v11, v12, v13, v34, 0);
      xpc_dictionary_set_uint64(v14, "CompletionID", v15);
      v16 = FigXPCMessageSetCFDictionary(messagea, "SendCommandResponse", a3);
      v24 = OUTLINED_FUNCTION_26_10(v16, v17, v18, v19, v20, v21, v22, v23, v35, messagea);
      xpc_dictionary_set_int64(v24, "CompletionStatus", v25);
      OUTLINED_FUNCTION_14_9(v26, v27, v28, v29, v30, v31, v32, v33, v36, messageb);
    }
  }

  DestroyCompletionCallbackParameters(a4);
  FigXPCRelease(message);
}

void SendDataCompletionCallback(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  message = 0;
  if (a4)
  {
    v6 = OUTLINED_FUNCTION_4_18(a1, a2);
    if (!v6)
    {
      v14 = OUTLINED_FUNCTION_10_10(v6, v7, v8, v9, v10, v11, v12, v13, v34, 0);
      xpc_dictionary_set_uint64(v14, "CompletionID", v15);
      v16 = FigXPCMessageSetCFString(messagea, "CommChannelUUID", a2);
      v24 = OUTLINED_FUNCTION_26_10(v16, v17, v18, v19, v20, v21, v22, v23, v35, messagea);
      xpc_dictionary_set_int64(v24, "CompletionStatus", v25);
      OUTLINED_FUNCTION_14_9(v26, v27, v28, v29, v30, v31, v32, v33, v36, messageb);
    }
  }

  DestroyCompletionCallbackParameters(a4);
  FigXPCRelease(message);
}

void ActivationCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  xdict = 0;
  if (a5 && !OUTLINED_FUNCTION_4_18(a1, a2))
  {
    xpc_dictionary_set_uint64(0, "ActivationFeatures", a2);
    v16 = OUTLINED_FUNCTION_10_10(v8, v9, v10, v11, v12, v13, v14, v15, v36, 0);
    xpc_dictionary_set_uint64(v16, "CompletionID", v17);
    xpc_dictionary_set_uint64(xdicta, "ActivationSeed", a3);
    v26 = OUTLINED_FUNCTION_26_10(v18, v19, v20, v21, v22, v23, v24, v25, v37, xdicta);
    xpc_dictionary_set_int64(v26, "CompletionStatus", v27);
    OUTLINED_FUNCTION_14_9(v28, v29, v30, v31, v32, v33, v34, v35, v38, xdictb);
  }

  DestroyCompletionCallbackParameters(a5);
  FigXPCRelease(xdict);
}

void AggregateEndpointAddRemoveEndpointCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  xdict = 0;
  if (a6 && !OUTLINED_FUNCTION_4_18(a1, a2))
  {
    xpc_dictionary_set_uint64(0, "ActivationFeatures", a3);
    xpc_dictionary_set_uint64(0, "ActivationSeed", a4);
    v17 = OUTLINED_FUNCTION_10_10(v9, v10, v11, v12, v13, v14, v15, v16, v37, 0);
    xpc_dictionary_set_uint64(v17, "CompletionID", v18);
    v27 = OUTLINED_FUNCTION_26_10(v19, v20, v21, v22, v23, v24, v25, v26, v38, xdicta);
    xpc_dictionary_set_int64(v27, "CompletionStatus", v28);
    OUTLINED_FUNCTION_14_9(v29, v30, v31, v32, v33, v34, v35, v36, v39, xdictb);
  }

  DestroyCompletionCallbackParameters(a6);
  FigXPCRelease(xdict);
}

void *CreateEndpointRefCon(const void *a1)
{
  v10 = 0;
  if (FigEndpointRPCCacheCreate(&v10, 1))
  {
    v2 = 0;
  }

  else
  {
    v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x20040DC1BFBCFuLL);
    if (v2)
    {
      if (a1)
      {
        v3 = CFRetain(a1);
      }

      else
      {
        v3 = 0;
      }

      *v2 = v3;
      v2[3] = v10;
      v10 = 0;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 0xFFFFBEAFuLL, "<< FigEndpointXPCServer >>", 0x23F, v6, v7, v8, v9);
    }
  }

  FigEndpointRPCCacheDispose(v10);
  return v2;
}

uint64_t figEndpointXPC_getObjectIDForSource(xpc_connection_t connection, const void *a2, uint64_t a3, void *a4)
{
  if ((a3 & 0xFFFFFFFFFFFFCFFFLL) == qword_1ED4CDBC0)
  {
    EndpointRefCon = CreateEndpointRefCon(a2);
    OUTLINED_FUNCTION_9_20();
    v17 = FigXPCServerAssociateCopiedObjectWithNeighborProcess(v14, connection, a2, EndpointRefCon, v15, 0, v16);
    if (v17)
    {
      v11 = v17;
      goto LABEL_4;
    }
  }

  else
  {
    xpc_connection_get_pid(connection);
    v7 = OUTLINED_FUNCTION_14_18();
    v10 = FigEndpointXPCRemoteObtainObjectIDForOtherProcess(v7, v8, v9);
    if (v10)
    {
      v11 = v10;
      EndpointRefCon = 0;
      goto LABEL_4;
    }
  }

  v11 = 0;
  EndpointRefCon = 0;
  *a4 = 0;
LABEL_4:
  DisposeEndpointRefCon(EndpointRefCon);
  return v11;
}

size_t FigEndpointStartServerEx_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBEB0uLL, "<< FigEndpointXPCServer >>", 0x8D4, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCEndpointServerAssociateNeighborFigEndpointWithRegistration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBEB0uLL, "<< FigEndpointXPCServer >>", 0x910, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigXPCEndpointServerRetainEndpointForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<< FigEndpointXPCServer >>", 0x92D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t LookupEndpointByObjectIDForConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBEB0uLL, "<< FigEndpointXPCServer >>", 0x1CD, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CreateDelegateCallbackParameters_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBEAFuLL, "<< FigEndpointXPCServer >>", 0x21D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t CreateCompletionCallbackParametersFromMessageAndConnection_cold_1_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFBEAFuLL, "<< FigEndpointXPCServer >>", 0x4B6, v10, v11, v12, a9);
}

void fnho_callbacktimerProc(id *a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject(a1);
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage(v1);
    FigSimpleMutexLock(*DerivedStorage);
    CFSetApplyFunction(*(DerivedStorage + 72), fnho_conditionApplier, v2);
    if (!*(DerivedStorage + 81))
    {
      fnho_ensureTimerIsPaused(v2);
    }

    FigSimpleMutexUnlock(*DerivedStorage);

    CFRelease(v2);
  }
}

void fnho_ensureTimerIsScheduled(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (!*(DerivedStorage + 80))
  {
    v2 = DerivedStorage;
    *(DerivedStorage + 80) = 1;
    v3 = *(DerivedStorage + 8);
    v4 = dispatch_time(0, *(DerivedStorage + 32));
    v5 = *(v2 + 32);

    dispatch_source_set_timer(v3, v4, v5, 0xEE6B280uLL);
  }
}

void fnho_ensureTimerIsPaused(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*(DerivedStorage + 80))
  {
    *(DerivedStorage + 80) = 0;
    v2 = *(DerivedStorage + 8);

    dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  }
}

os_unfair_lock_s **fnho_networkHistoryBecameActiveHandler(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage(a2);
  if (a2)
  {
    v4 = result;
    FigSimpleMutexLock(*result);
    fnho_ensureTimerIsScheduled(a2);
    *(v4 + 81) = 1;
    v5 = *v4;

    return FigSimpleMutexUnlock(v5);
  }

  return result;
}

os_unfair_lock_s **fnho_networkHistoryBecameInactiveHandler(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage(a2);
  if (a2)
  {
    v4 = result;
    FigSimpleMutexLock(*result);
    *(v4 + 81) = 0;
    v5 = *v4;

    return FigSimpleMutexUnlock(v5);
  }

  return result;
}

uint64_t FigNetworkHistoryObserverRemoveCondition(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock(*DerivedStorage);
    CFSetRemoveValue(v4[9], a2);
    FigSimpleMutexUnlock(*v4);
  }

  return 0;
}

CFTypeRef *fnho_networkConditionRetainCallback(uint64_t a1, CFTypeRef *a2)
{
  if (a2 && *a2)
  {
    CFRetain(*a2);
  }

  return a2;
}

void fnho_conditionApplier(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a2);
  cf = 0;
  if (fnho_testCondition(a2, a1, &cf))
  {
    v5 = *(DerivedStorage + 48);
    v6 = cf;
    v7 = CMBaseObjectGetDerivedStorage(a2);
    v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x10E0040018299E6uLL);
    if (v8)
    {
      v9 = v8;
      *v8 = v5;
      if (a2)
      {
        v10 = CFRetain(a2);
      }

      else
      {
        v10 = 0;
      }

      v9[1] = v10;
      v9[2] = a1;
      if (v6)
      {
        v11 = CFRetain(v6);
      }

      else
      {
        v11 = 0;
      }

      v9[3] = v11;
      dispatch_async_f(*(v7 + 24), v9, fnho_dispatchObserverConditionFn);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

size_t FigNetworkHistoryObserverCreate_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1D1, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1CE, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1CA, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1C7, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1C4, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A8uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1C1, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_7(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1BD, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_8(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1BA, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_9(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1B2, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_10(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A8uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1AF, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_11(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A8uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1AE, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_12(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A8uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1AD, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverCreate_cold_13(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A8uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1AC, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverAddCondition_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A7uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1FB, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigNetworkHistoryObserverAddCondition_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CDC0, 0xFFFFC1A8uLL, "<<<< FigNetworkHistoryObserver >>>>", 0x1F8, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigAudioRenderingPreferencesCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x67, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigAudioRenderingPreferencesCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x78, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigAudioRenderingPreferencesCreate_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE59uLL, "(Fig)", 0x7D, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigAudioRenderingPreferencesCreate_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x6F, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigAudioRenderingPreferencesCreate_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x6B, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigAudioRenderingPreferencesCreate_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_6();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x66, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineClientServerXPC_SerializeEvent_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB406uLL, "(Fig)", 0x31, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

size_t FigMetricEventTimelineClientServerXPC_DeserializeAndCopyEvent_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB406uLL, "(Fig)", 0x49, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t FigNotificationCenterSupportWillPostNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigSimpleMutexLock(qword_1ED4CDBF0);
  if (!result)
  {
    Value = CFDictionaryGetValue(_MergedGlobals_71, -a3);
    result = FigSimpleMutexUnlock(qword_1ED4CDBF0);
    if (!result)
    {
      if (Value)
      {

        return FigReadWriteLockLockForRead(Value);
      }
    }
  }

  return result;
}

uint64_t FigNotificationCenterSupportDidPostNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!FigSimpleMutexLock(qword_1ED4CDBF0))
  {
    Value = CFDictionaryGetValue(_MergedGlobals_71, -a3);
    if (!FigSimpleMutexUnlock(qword_1ED4CDBF0))
    {
      if (Value)
      {
        FigReadWriteLockUnlockForRead(Value);
      }
    }
  }

  return 0;
}

size_t CMNotificationCenterRegisterForBarrierSupport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  v11 = FigReadWriteLockCreate(0);
  if (v11)
  {
    v14 = v11;
    v15 = FigSimpleMutexLock(qword_1ED4CDBF0);
    if (v15)
    {
      return v15;
    }

    v16 = -a2;
    if (CFDictionaryContainsKey(_MergedGlobals_71, v16))
    {
      v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4CuLL, "(Fig)", 0x9B, v9, v17, v18, v22);
      FigReadWriteLockDestroy(v14);
      if (v19)
      {
        FigSimpleMutexUnlock(qword_1ED4CDBF0);
        return v19;
      }
    }

    else
    {
      CFDictionarySetValue(_MergedGlobals_71, v16, v14);
    }

    v20 = qword_1ED4CDBF0;

    return FigSimpleMutexUnlock(v20);
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4AuLL, "(Fig)", 0x92, v9, v12, v13, a9);
  }
}

uint64_t CMNotificationCenterUnregisterForBarrierSupport(uint64_t a1, uint64_t a2)
{
  result = FigSimpleMutexLock(qword_1ED4CDBF0);
  if (!result)
  {
    v5 = -a2;
    Value = CFDictionaryGetValue(_MergedGlobals_71, v5);
    if (Value)
    {
      v9 = Value;
      CFDictionaryRemoveValue(_MergedGlobals_71, v5);
      v10 = FigReadWriteLockDestroy(v9);
    }

    else
    {
      v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4CuLL, "(Fig)", 0xBB, v2, v7, v8, v12);
    }

    v11 = v10;
    LODWORD(result) = FigSimpleMutexUnlock(qword_1ED4CDBF0);
    if (v11)
    {
      return v11;
    }

    else
    {
      return result;
    }
  }

  return result;
}

size_t CMNotificationCenterBarrier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  result = FigSimpleMutexLock(qword_1ED4CDBF0);
  if (!result)
  {
    Value = CFDictionaryGetValue(_MergedGlobals_71, -a2);
    result = FigSimpleMutexUnlock(qword_1ED4CDBF0);
    if (!result)
    {
      if (Value)
      {
        result = FigReadWriteLockLockForWrite(Value);
        if (!result)
        {

          return FigReadWriteLockUnlockForWrite(Value);
        }
      }

      else
      {

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE4CuLL, "(Fig)", 0xDD, v9, v13, v14, a9);
      }
    }
  }

  return result;
}

uint64_t FigLogPowerEvent(int a1, CFDictionaryRef theDict)
{
  HIDWORD(v31) = 0;
  if (!theDict)
  {
    return 0;
  }

  v3 = 0;
  v4 = theDict;
  v5 = @"CM-VIDEOPLAYBACK";
  switch(a1)
  {
    case 0:
      goto LABEL_11;
    case 3:
      v5 = @"CM-VIDEOQUEUE";
      goto LABEL_11;
    case 4:
    case 6:
      v5 = @"VT-SESSION";
      goto LABEL_11;
    case 5:
      v5 = @"CM-EXPORT";
      goto LABEL_11;
    case 7:
    case 8:
      v5 = @"VTTILE-SESSION";
      goto LABEL_11;
    case 9:
      v5 = @"CM-ASSETCREATION";
      goto LABEL_11;
    case 10:
      v5 = @"CM-ASSETDOWNLOAD";
LABEL_11:
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
      if (!MutableCopy)
      {
        return 0;
      }

      v12 = MutableCopy;
      v13 = @"BundleID";
      v14 = @"processID";
LABEL_13:
      FigCFDictionaryGetInt32IfPresent(v4, v14, &v31 + 4, v7, v8, v9, v10, v11, v31, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5], v32[6], v32[7], v32[8]);
      v21 = HIDWORD(v31);
      if (!HIDWORD(v31))
      {
        v28 = 0;
        goto LABEL_27;
      }

      v22 = objc_autoreleasePoolPush();
      v32[0] = 0;
      v23 = [MEMORY[0x1E69C75C8] handleForIdentifier:objc_msgSend(MEMORY[0x1E69C75D8] error:{"identifierWithPid:", v21), v32}];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 identity];
        v26 = [v25 embeddedApplicationIdentifier];
        if (v26 || (v26 = [v25 xpcServiceIdentifier]) != 0 || (v26 = objc_msgSend(objc_msgSend(v24, "bundle"), "identifier")) != 0)
        {
          v27 = v26;
LABEL_19:
          CFRetain(v27);
          goto LABEL_22;
        }

        v27 = [v25 description];
        if (v27)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v27 = 0;
      }

LABEL_22:
      objc_autoreleasePoolPop(v22);
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = @"N/A";
      }

      v29 = CFGetTypeID(v28);
      if (v29 == CFStringGetTypeID())
      {
        FigCFDictionarySetValue(v12, v13, v28);
      }

LABEL_27:
      FigCFDictionarySetInt32(v12, @"Category", a1, v16, v17, v18, v19, v20);
      if (_MergedGlobals_72 != -1)
      {
        dispatch_once_f(&_MergedGlobals_72, 0, figPowerLogOpenFramework);
      }

      if (off_1ED4CDC00)
      {
        off_1ED4CDC00(28, v5, v12, 0);
        v3 = 1;
        if (!v28)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v3 = 0;
      if (v28)
      {
LABEL_31:
        CFRelease(v28);
      }

LABEL_32:
      CFRelease(v12);
      break;
    case 11:
      v6 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
      if (!v6)
      {
        return 0;
      }

      v12 = v6;
      v13 = @"clientDisplayID";
      v5 = @"Video";
      v14 = @"clientPID";
      goto LABEL_13;
    default:
      return v3;
  }

  return v3;
}

CFTypeRef FigCFWeakReferenceHolderCreateWithReferencedObject(uint64_t a1)
{
  if (qword_1ED4CDC10 != -1)
  {
    OUTLINED_FUNCTION_0_89();
    dispatch_once_f(v6, v7, v8);
  }

  cf = 0;
  v10 = 0;
  if (!a1)
  {
    return 0;
  }

  if (_MergedGlobals_73 == 1)
  {
    if (FigSimpleMutexTryLock(qword_1ED4CDC20))
    {
      FigCFWeakReferenceHolderCopyCachedInstance(a1, &v10, &cf);
      FigSimpleMutexUnlock(qword_1ED4CDC20);
      CFRelease(a1);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  v2 = v10;
  if (!v10)
  {
    Instance = _CFRuntimeCreateInstance();
    v4 = Instance;
    if (Instance)
    {
      FigCFWeakReferenceInit((Instance + 24), a1);
    }

    if (_MergedGlobals_73 == 1 && FigSimpleMutexTryLock(qword_1ED4CDC20))
    {
      v11 = 0;
      FigCFWeakReferenceHolderCopyCachedInstance(a1, &v11, &cf);
      v2 = v11;
      if (!v11)
      {
        CFDictionarySetValue(qword_1ED4CDC28, -a1, -v4);
        *(v4 + 16) = -a1;
        v2 = CFRetain(v4);
      }

      FigSimpleMutexUnlock(qword_1ED4CDC20);
      CFRelease(a1);
      if (cf)
      {
        CFRelease(cf);
      }

      CFRelease(v4);
    }

    else
    {
      return v4;
    }
  }

  return v2;
}

id *FigCFWeakReferenceHolderCopyReferencedObject(id *result)
{
  if (result)
  {
    return FigCFWeakReferenceLoadAndRetain(result + 3);
  }

  return result;
}

size_t FigEndpointRPCCacheApplyObjectDeltas(uint64_t a1, xpc_object_t xarray, xpc_object_t a3)
{
  v29 = 0;
  cf = 0;
  if (xarray && (v7 = xpc_array_get_count(xarray)) != 0)
  {
    v12 = v7;
    v13 = 0;
    while (1)
    {
      if (*a1 == 1)
      {
        v14 = FigEndpointXPCRemoteRetainCopiedEndpointFromArray(xarray, v13, &v29, &cf, v8, v9, v10, v11, v29);
      }

      else
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBCA8uLL, "<< FigEndpointCache >>", 0xAB, v3, v16, v17, v29);
      }

      v18 = v14;
      if (v14)
      {
        break;
      }

      figEndpointRPCCacheAddObject(a1, cf, v29);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v12 == ++v13)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    if (a3)
    {
      count = xpc_array_get_count(a3);
      if (count)
      {
        v20 = count;
        for (i = 0; i != v20; ++i)
        {
          uint64 = xpc_array_get_uint64(a3, i);
          v29 = uint64;
          v23 = *(a1 + 8);
          if (v23 >= 1)
          {
            v24 = 0;
            v25 = *(a1 + 24);
            v26 = *(a1 + 8);
            while (*(v25 + v24 + 8) != uint64)
            {
              v24 += 16;
              if (!--v26)
              {
                goto LABEL_22;
              }
            }

            v27 = *(v25 + v24);
            if (v27)
            {
              CFRelease(v27);
              v25 = *(a1 + 24);
              *(v25 + v24) = 0;
              v23 = *(a1 + 8);
            }

            *(v25 + v24) = *(v25 + 16 * v23 - 16);
            --*(a1 + 8);
          }

LABEL_22:
          ;
        }
      }
    }

    v18 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

size_t FigEndpointRPCCacheCreate_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBEAFuLL, "<< FigEndpointCache >>", 0x74, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigEndpointRPCCacheCopyAvailableObjects_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBEB9uLL, "<< FigEndpointCache >>", 0x17E, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

size_t FigControlCommandsRemoteClientPurgeObjectsAndGenerateReportForPID(unsigned int a1, int a2, CFTypeRef *a3, CFTypeRef *a4, void *a5)
{
  v21 = 0;
  v22 = 0;
  xdict = 0;
  cf = 0;
  v18 = 0;
  if (a1 <= 0)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E9uLL, "<< FigControlCommandsRemoteClient >>", 0x69, v5, v15, v16, v17);
    goto LABEL_22;
  }

  if (qword_1ED4CDC40 != -1)
  {
    dispatch_once(&qword_1ED4CDC40, &__block_literal_global_62);
  }

  v11 = _MergedGlobals_74;
  if (!_MergedGlobals_74)
  {
    v12 = FigXPCCreateBasicMessage(0x70677270u, 0, &xdict);
    if (!v12)
    {
      xpc_dictionary_set_int64(xdict, "Pid", a1);
      xpc_dictionary_set_BOOL(xdict, "ForcePurge", a2 != 0);
      v12 = FigXPCRemoteClientSendSyncMessageCreatingReply(qword_1ED4CDC38, xdict, &v18);
      if (!v12)
      {
        v12 = FigXPCMessageCopyCFBoolean(v18, "CouldNotPurgeAllObjects", &v22);
        if (!v12)
        {
          v12 = FigXPCMessageCopyCFBoolean(v18, "PurgeProhibited", &v21);
          if (!v12)
          {
            v12 = FigXPCMessageCopyCFString(v18, "Stats", &cf);
            if (!v12)
            {
              if (a3)
              {
                *a3 = cf;
                cf = 0;
              }

              if (a4)
              {
                *a4 = v22;
                v22 = 0;
              }

              v11 = 0;
              if (a5)
              {
                *a5 = v21;
                v21 = 0;
              }

              goto LABEL_16;
            }
          }
        }
      }
    }

LABEL_22:
    v11 = v12;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  FigXPCRelease(xdict);
  FigXPCRelease(v18);
  return v11;
}

uint64_t CMStartAirPlayLoopback()
{
  v4 = 0;
  if (qword_1ED4CDC40 != -1)
  {
    dispatch_once(&qword_1ED4CDC40, &__block_literal_global_62);
  }

  v0 = _MergedGlobals_74;
  if (_MergedGlobals_74)
  {
    v2 = 0;
  }

  else
  {
    v1 = FigXPCCreateBasicMessage(0x6C6F6F70u, 0, &v4);
    v2 = v4;
    if (v1)
    {
      v0 = v1;
    }

    else
    {
      v0 = FigXPCRemoteClientSendAsyncMessage(qword_1ED4CDC38, v4);
      v2 = v4;
    }
  }

  FigXPCRelease(v2);
  return v0;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGSize CVImageBufferGetEncodedSize(CVImageBufferRef imageBuffer)
{
  MEMORY[0x1EEDBF858](imageBuffer);
  result.height = v2;
  result.width = v1;
  return result;
}