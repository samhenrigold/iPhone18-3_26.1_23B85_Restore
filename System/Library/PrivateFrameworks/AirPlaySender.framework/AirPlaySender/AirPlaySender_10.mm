uint64_t APEndpointUGLWrapper_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 30 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] CopyProperty(%@)", a1, a2);
  }

  if (CFEqual(a2, *MEMORY[0x277CC1568]))
  {
    v9 = MEMORY[0x277CC1A18];
LABEL_13:
    SInt64 = *v9;
LABEL_14:
    SInt64 = CFRetain(SInt64);
LABEL_15:
    MXDescriptor = 0;
    *a4 = SInt64;
    return MXDescriptor;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13F0]) || CFEqual(a2, *MEMORY[0x277CC14C8]) || CFEqual(a2, *MEMORY[0x277CC13B0]) || CFEqual(a2, *MEMORY[0x277CC1338]) || CFEqual(a2, *MEMORY[0x277CC1438]))
  {
    v9 = MEMORY[0x277CBED28];
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1400]))
  {
LABEL_18:
    v9 = MEMORY[0x277CBED10];
    goto LABEL_13;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1368]))
  {
    SInt64 = *(DerivedStorage + 8);
    goto LABEL_14;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1340]))
  {
    SInt64 = *(DerivedStorage + 16);
    goto LABEL_14;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1428]))
  {
    SInt64 = *(DerivedStorage + 24);
    if (!SInt64)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, *MEMORY[0x277CC11F0]))
  {
    valuePtr = 0;
    FigSimpleMutexLock();
    if (*(DerivedStorage + 160))
    {
      valuePtr = *(DerivedStorage + 168);
    }

    FigSimpleMutexUnlock();
    v13 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
    *a4 = v13;
    if (!v13)
    {
      APEndpointUGLWrapper_CopyProperty_cold_1();
      return 4294950575;
    }

    return 0;
  }

  if (CFEqual(a2, @"ActivationStage"))
  {
    FigSimpleMutexLock();
    *a4 = FigCFNumberCreateSInt64();
    FigSimpleMutexUnlock();
    if (!*a4)
    {
      APEndpointUGLWrapper_CopyProperty_cold_2();
      return 4294950575;
    }

    return 0;
  }

  if (CFEqual(a2, @"IsInUse"))
  {
    FigSimpleMutexLock();
    v14 = MEMORY[0x277CBED28];
    v15 = *(DerivedStorage + 160);
LABEL_37:
    if (!v15)
    {
      v14 = MEMORY[0x277CBED10];
    }

    *a4 = CFRetain(*v14);
    FigSimpleMutexUnlock();
    return 0;
  }

  v16 = epp_copyInner(a1);
  if (v16)
  {
    v17 = v16;
    CMBaseObject = FigEndpointGetCMBaseObject();
    MXDescriptor = CMBaseObjectCopyProperty(CMBaseObject, a2, a3, a4);
    CFRelease(v17);
    if (MXDescriptor)
    {
      if (gLogCategory_APEndpointUGLWrapper <= 90 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554522, "[%{ptr}] copyProperty(%@) failed with error %#m", a1, a2, MXDescriptor);
      }

      return MXDescriptor;
    }

    if (CFEqual(a2, *MEMORY[0x277CC12D8]))
    {

      return endpointUGLWrapper_updateMXDescriptor(a1, a3, a4);
    }

    if (!CFEqual(a2, *MEMORY[0x277CC1200]))
    {
      return 0;
    }
  }

  else
  {
    if (CFEqual(a2, *MEMORY[0x277CC12D8]))
    {
      MXDescriptor = endpointUGLWrapper_createMXDescriptor(a1, a3, a4);
      if (MXDescriptor && gLogCategory_APEndpointUGLWrapper <= 90 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554522, "[%{ptr}] copyProperty(%@) failed to create MX descriptor with error %#m", a1, a2, MXDescriptor);
      }

      return MXDescriptor;
    }

    if (!CFEqual(a2, *MEMORY[0x277CC1200]))
    {
      if (CFEqual(a2, *MEMORY[0x277CC1370]) || CFEqual(a2, *MEMORY[0x277CC13C0]) || CFEqual(a2, @"IsClusterEndpoint") || CFEqual(a2, *MEMORY[0x277CC1278]))
      {
        goto LABEL_18;
      }

      if (CFEqual(a2, *MEMORY[0x277CC14F8]))
      {
        SInt64 = FigCFNumberCreateSInt64();
        goto LABEL_15;
      }

      if (CFEqual(a2, *MEMORY[0x277CC1450]))
      {
        SInt64 = @"UGL iPhone";
        goto LABEL_14;
      }

      if (CFEqual(a2, *MEMORY[0x277CC1440]))
      {
        SInt64 = @"iPhone14,3";
        goto LABEL_14;
      }

      if (CFEqual(a2, *MEMORY[0x277CC14F0]))
      {
        v9 = MEMORY[0x277CC19F8];
        goto LABEL_13;
      }

      if (!CFEqual(a2, *MEMORY[0x277CC13A0]))
      {
        if (gLogCategory_APEndpointUGLWrapper <= 30 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] copyProperty(%@) returning PropertyNotSupported", a1, a2);
        }

        return 4294954509;
      }

      FigSimpleMutexLock();
      v14 = MEMORY[0x277CBED28];
      v15 = *(DerivedStorage + 176);
      goto LABEL_37;
    }

    *a4 = 0;
  }

  return uglWrapper_updateAirPlayEndpointProperties(a3, a4);
}

uint64_t APEndpointUGLWrapper_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 30 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] SetProperty(%@)", a1, a2);
  }

  v6 = epp_copyInner(a1);
  if (!v6)
  {
    return 4294950570;
  }

  v7 = v6;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v9)
  {
    v10 = v9(CMBaseObject, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v7);
  return v10;
}

uint64_t endpointUGLWrapper_updateMXDescriptor(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v8 = MutableCopy;
    v10 = *(DerivedStorage + 8);
    v9 = (DerivedStorage + 8);
    CFDictionarySetValue(MutableCopy, *MEMORY[0x277D26FB0], v10);
    v11 = *MEMORY[0x277D26EA0];
    v12 = FigCFDictionaryGetValue();
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    value = v12;
    updated = uglWrapper_updateAirPlayEndpointProperties(a2, &value);
    v14 = value;
    if (!updated)
    {
      CFDictionarySetValue(v8, v11, value);
      if (gLogCategory_APEndpointUGLWrapper <= 30)
      {
        endpointUGLWrapper_updateMXDescriptor_cold_1(gLogCategory_APEndpointUGLWrapper, v9, a1);
      }

      v15 = *a3;
      *a3 = v8;
      CFRetain(v8);
      if (v15)
      {
        CFRelease(v15);
      }
    }

    CFRelease(v8);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    endpointUGLWrapper_updateMXDescriptor_cold_2();
    return 4294950575;
  }

  return updated;
}

uint64_t uglWrapper_updateAirPlayEndpointProperties(uint64_t a1, __CFDictionary **a2)
{
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v4 = MutableCopy;
    CFDictionarySetValue(MutableCopy, @"IsRepresentingUGLSender", *MEMORY[0x277CBED28]);
    v5 = *a2;
    *a2 = v4;
    CFRetain(v4);
    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(v4);
    return 0;
  }

  else
  {
    uglWrapper_updateAirPlayEndpointProperties_cold_1();
    return 4294950575;
  }
}

uint64_t endpointUGLWrapper_createMXDescriptor(uint64_t a1, const __CFAllocator *a2, const void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x277D26FA8], @"UGL iPhone");
    CFDictionarySetValue(v7, *MEMORY[0x277D26FB0], *(DerivedStorage + 8));
    CFDictionarySetValue(v7, *MEMORY[0x277D26F18], *(DerivedStorage + 16));
    CFDictionarySetValue(v7, *MEMORY[0x277D26F48], *MEMORY[0x277CBED10]);
    v8 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v7, *MEMORY[0x277D26F68], *MEMORY[0x277CBED28]);
    CFDictionarySetValue(v7, *MEMORY[0x277D26F40], v8);
    CFDictionarySetValue(v7, *MEMORY[0x277D26F70], v8);
    CFDictionarySetValue(v7, *MEMORY[0x277D26F10], v8);
    CFDictionarySetValue(v7, *MEMORY[0x277D26F90], @"iPhone14,3");
    updated = uglWrapper_updateAirPlayEndpointProperties(a2, &value);
    v10 = value;
    if (!updated)
    {
      endpointUGLWrapper_createMXDescriptor_cold_1(v7, value, a3);
    }

    CFRelease(v7);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    endpointUGLWrapper_createMXDescriptor_cold_2();
    return 4294950575;
  }

  return updated;
}

uint64_t APEndpointUGLWrapper_ActivateForFeaturesWithCompletionCallback(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  v11 = *(DerivedStorage + 160);
  if (v11)
  {
    if (gLogCategory_APEndpointUGLWrapper <= 50)
    {
      if (gLogCategory_APEndpointUGLWrapper != -1)
      {
LABEL_4:
        if (v11 == 2)
        {
          v12 = "activated";
        }

        else
        {
          v12 = "activating";
        }

        LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_ActivateForFeaturesWithCompletionCallback(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] <APUGLActivation> ActivateForFeaturesWithCompletionCallback(0x%llx) already %s; returning Error_AlreadyActivated", a1, a2, v12);
        goto LABEL_12;
      }

      if (_LogCategory_Initialize())
      {
        v11 = *(DerivedStorage + 160);
        goto LABEL_4;
      }
    }

LABEL_12:
    v14 = -16727;
    goto LABEL_15;
  }

  *(DerivedStorage + 160) = 1;
  v13 = *(DerivedStorage + 168) + 1;
  *(DerivedStorage + 168) = v13;
  if (gLogCategory_APEndpointUGLWrapper <= 50)
  {
    if (gLogCategory_APEndpointUGLWrapper == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v13 = *(DerivedStorage + 168);
    }

    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_ActivateForFeaturesWithCompletionCallback(FigEndpointRef, FigEndpointFeatures, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] <APUGLActivation> ActivateForFeaturesWithCompletionCallback(0x%llx, seed %lld)", a1, a2, v13);
  }

LABEL_14:
  v14 = 0;
LABEL_15:
  v15 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E0040B8CAE2EDuLL);
  *v15 = CFRetain(a1);
  v15[1] = 0;
  *(v15 + 4) = v14;
  v16 = *(DerivedStorage + 168);
  v15[3] = a2;
  v15[4] = v16;
  if (a3)
  {
    v17 = CFRetain(a3);
  }

  else
  {
    v17 = 0;
  }

  v15[5] = v17;
  v15[6] = a4;
  v15[7] = a5;
  endpointUGLWrapper_activateInternal(v15);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APEndpointUGLWrapper_DeactivateWithCompletionCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_DeactivateWithCompletionCallback_cold_1(a1, v8, v9);
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  v11 = endpointUGLWrapper_deactivateInternal(a1, *(DerivedStorage + 40), a2, a3, a4);
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t APEndpointUGLWrapper_EnsureAuthorizedWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_EnsureAuthorizedWithCompletionCallback_cold_1(a1, a2, a3);
  }

  v8 = epp_copyInner(a1);
  if (!v8)
  {
    return 4294949690;
  }

  v9 = v8;
  v10 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
  *v10 = a1;
  v10[1] = a3;
  v10[2] = a4;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v11)
  {
    v12 = v11(v9, a2, uglWrapper_endpointCompletionCallback, v10);
  }

  else
  {
    v12 = 4294954514;
  }

  CFRelease(v9);
  return v12;
}

uint64_t APEndpointUGLWrapper_Dissociate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_Dissociate_cold_1(a1, v2, v3);
  }

  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 40);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v6 = CFRetain(v5);
  if (!v6)
  {
LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  endpointUGLWrapper_setWrappedEndpoint(a1, 0);
  v7 = 0;
LABEL_9:
  v8 = FigCFDictionaryCopyArrayOfKeys();
  v9 = *(DerivedStorage + 168);
  *(DerivedStorage + 176) = 1;
  FigSimpleMutexUnlock();
  if ((v7 & 1) == 0)
  {
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v10)
    {
      v10(v6);
    }
  }

  CFArrayGetCount(v8);
  CFArrayApplyBlock();
  APEndpointCreateEndpointActivationNotificationPayload(*MEMORY[0x277CBECE8], 16, v9, &cf);
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if ((v7 & 1) == 0)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t APEndpointUGLWrapper_SetDelegate(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_SetDelegate(FigEndpointRef, const FigEndpointDelegate *)", 33554482, "[%{ptr}] SetDelegate([%{ptr}])", a1, a2);
  }

  if (a2)
  {
    v4 = *(a2 + 16);
    v10[0] = *a2;
    v10[1] = v4;
    v11 = *(a2 + 32);
    v8[1] = 0;
    v8[0] = *&v10[0];
    v9 = *(a2 + 48);
    APEndpointUGLWrapper_SetDelegateRouting(a1, v10);
    v5 = v8;
    v6 = a1;
  }

  else
  {
    APEndpointUGLWrapper_SetDelegateRouting(a1, 0);
    v6 = a1;
    v5 = 0;
  }

  APEndpointUGLWrapper_SetDelegateRemoteControl(v6, v5);
  return 0;
}

uint64_t APEndpointUGLWrapper_SetDelegateRouting(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_SetDelegateRouting(FigEndpointRef, const FigEndpointDelegateRouting *)", 33554482, "[%{ptr}] SetDelegateRouting([%{ptr}])", a1, a2);
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 96);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 96) = 0;
  }

  if (a2)
  {
    v6 = *a2;
    v7 = a2[1];
    *(DerivedStorage + 84) = *(a2 + 4);
    *(DerivedStorage + 68) = v7;
    *(DerivedStorage + 52) = v6;
    *(DerivedStorage + 96) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  else
  {
    *(DerivedStorage + 84) = 0;
    *(DerivedStorage + 68) = 0u;
    *(DerivedStorage + 52) = 0u;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APEndpointUGLWrapper_SetDelegateRemoteControl(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_SetDelegateRemoteControl(FigEndpointRef, const FigEndpointDelegateRemoteControl *)", 33554482, "[%{ptr}] SetDelegateRemoteControl([%{ptr}])", a1, a2);
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 136);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 136) = 0;
  }

  if (a2)
  {
    v6 = *a2;
    *(DerivedStorage + 120) = a2[1];
    *(DerivedStorage + 104) = v6;
    *(DerivedStorage + 136) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  else
  {
    *(DerivedStorage + 120) = 0u;
    *(DerivedStorage + 104) = 0u;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APEndpointUGLWrapper_SetDelegateVolumeAndMute(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_SetDelegateVolumeAndMute(FigEndpointRef, const FigEndpointDelegateVolumeAndMute *)", 33554482, "[%{ptr}] SetDelegateVolumeAndMute([%{ptr}])", a1, a2);
  }

  v4 = epp_copyInner(a1);
  if (!v4)
  {
    return 4294949690;
  }

  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v6)
  {
    v7 = v6(v5, a2);
  }

  else
  {
    v7 = 4294954514;
  }

  CFRelease(v5);
  return v7;
}

uint64_t APEndpointUGLWrapper_CreatePlaybackSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_CreatePlaybackSession_cold_1(a1, a2, a3);
  }

  v5 = epp_copyInner(a1);
  if (!v5)
  {
    return 4294949690;
  }

  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v7)
  {
    v8 = v7(v6, a2);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

void endpointUGLWrapper_activateInternal(void *a1)
{
  v79 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  v4 = *(a1 + 4);
  if (v4)
  {
    goto LABEL_36;
  }

  v5 = *(DerivedStorage + 40);
  if (!v5)
  {
    CMBaseObjectGetDerivedStorage();
    v8 = &unk_27CFF0000;
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      endpointUGLWrapper_activateInternal_cold_1(v2, v6, v7);
    }

    FigSimpleMutexCheckIsLockedOnThisThread();
    CMBaseObjectGetDerivedStorage();
    FigSimpleMutexCheckIsLockedOnThisThread();
    CMBaseObjectGetDerivedStorage();
    v75 = 0;
    v76 = &v75;
    v77 = 0x2000000000;
    v78 = 0;
    FigSimpleMutexCheckIsLockedOnThisThread();
    *v73 = MEMORY[0x277D85DD0];
    *&v73[8] = 0x40000000;
    *&v73[16] = __endpointUGLWrapper_copyUGLServerInfoFromRCEndpoints_block_invoke;
    *&v73[24] = &unk_27849C3A8;
    *&v73[32] = &v75;
    *&v73[40] = v2;
    FigCFDictionaryApplyBlock();
    v9 = v76[3];
    _Block_object_dispose(&v75, 8);
    if (!v9)
    {
      CMBaseObjectGetDerivedStorage();
      v75 = 0;
      v76 = &v75;
      v77 = 0x2000000000;
      v78 = 0;
      FigSimpleMutexCheckIsLockedOnThisThread();
      *v73 = MEMORY[0x277D85DD0];
      *&v73[8] = 0x40000000;
      *&v73[16] = __endpointUGLWrapper_copyUGLServerInfoFromShadowEndpoints_block_invoke;
      *&v73[24] = &unk_27849C3D0;
      *&v73[32] = &v75;
      *&v73[40] = v2;
      FigCFDictionaryApplyBlock();
      v9 = v76[3];
      _Block_object_dispose(&v75, 8);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    CMBaseObjectGetDerivedStorage();
    value = 0;
    cf = 0;
    v69 = 0;
    v70 = 0;
    v31 = *MEMORY[0x277CBECE8];
    v32 = APAdvertiserInfoCreate();
    if (v32)
    {
      v54 = v32;
      endpointUGLWrapper_activateInternal_cold_2(v32);
      v55 = 0;
      v64 = 0;
      v65 = 0;
      v68 = 0;
      v39 = 0;
      v53 = 0;
      v66 = 0;
      v52 = 0;
      v47 = 0;
LABEL_53:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v68)
      {
        CFRelease(v68);
      }

      if (v39)
      {
        CFRelease(v39);
      }

      if (value)
      {
        CFRelease(value);
      }

      if (v53)
      {
        CFRelease(v53);
      }

      if (v66)
      {
        CFRelease(v66);
      }

      if (v65)
      {
        CFRelease(v65);
      }

      if (v52)
      {
        CFRelease(v52);
      }

      if (v70)
      {
        CFRelease(v70);
      }

      if (v69)
      {
        CFRelease(v69);
      }

      if (v64)
      {
        CFRelease(v64);
      }

      if (v47)
      {
        CFRelease(v47);
      }

      if (v54)
      {
        endpointUGLWrapper_activateInternal_cold_8(v2, v54, v50);
      }

      else
      {
        endpointUGLWrapper_setWrappedEndpoint(v2, v55);
      }

      v8 = &unk_27CFF0000;
      CFRelease(v9);
      if (v55)
      {
        CFRelease(v55);
      }

LABEL_8:
      v5 = *(DerivedStorage + 40);
      if (v5)
      {
        goto LABEL_9;
      }

      if (!a1[1])
      {
        v18 = CMBaseObjectGetDerivedStorage();
        v75 = 0;
        v76 = &v75;
        v77 = 0x2000000000;
        v78 = 0;
        FigSimpleMutexCheckIsLockedOnThisThread();
        v19 = *MEMORY[0x277CBECE8];
        Count = CFDictionaryGetCount(*(v18 + 144));
        Mutable = CFArrayCreateMutable(v19, Count, MEMORY[0x277CBF128]);
        if (Mutable)
        {
          *v73 = MEMORY[0x277D85DD0];
          *&v73[8] = 0x40000000;
          *&v73[16] = __endpointUGLWrapper_copySortedShadowEndpoints_block_invoke;
          *&v73[24] = &unk_27849C438;
          *&v73[40] = v2;
          v74 = Mutable;
          *&v73[32] = &v75;
          FigCFDictionaryApplyBlock();
          v22 = v8[532];
          if (v22 <= 50 && (v22 != -1 || _LogCategory_Initialize()))
          {
            endpointUGLWrapper_activateInternal_cold_9(Mutable);
          }
        }

        else
        {
          endpointUGLWrapper_activateInternal_cold_10();
        }

        _Block_object_dispose(&v75, 8);
        a1[1] = Mutable;
      }

      ValueAtIndex = FigCFArrayGetValueAtIndex();
      if (ValueAtIndex)
      {
        v26 = CFRetain(ValueAtIndex);
        if (v26)
        {
          v27 = v26;
          CFArrayRemoveValueAtIndex(a1[1], 0);
          v28 = v8[532];
          if (v28 <= 50 && (v28 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void endpointUGLWrapper_activateInternal(EndpointActivationCallbackContext *)", 33554482, "[%{ptr}] <APUGLActivation> Activating shadow endpoint [%{ptr}]", v2, v27);
          }

          v56 = a1[3];
          v57 = a1[5];
          v58 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v58)
          {
            v58(v27, v56, v57, uglWrapper_shadowActivationCompletionCallback, a1);
          }

          v17 = v27;
          goto LABEL_19;
        }
      }

      v29 = v8[532];
      if (v29 > 50)
      {
        v30 = 0;
        LODWORD(v4) = -17606;
LABEL_90:
        v59 = a1[4];
        *v73 = v2;
        *&v73[8] = v59;
        *&v73[16] = v30;
        *&v73[24] = v4;
        *&v73[32] = *(a1 + 3);
        CFRetain(v2);
        APSDispatchAsyncFHelper();
        if (v4 != -16727)
        {
          endpointUGLWrapper_deactivateInternal(v2, 0, 0, 0, 0);
        }

        uglWrapper_freeEndpointActivationContext(a1);
        return;
      }

      if (v29 != -1 || _LogCategory_Initialize())
      {
        endpointUGLWrapper_activateInternal_cold_11(v2, v24, v25);
      }

      v4 = 4294949690;
LABEL_36:
      if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void endpointUGLWrapper_activateInternal(EndpointActivationCallbackContext *)", 33554482, "[%{ptr}] <APUGLActivation> Calling activation callback with error %#m", v2, v4);
      }

      if (v4 == -16727)
      {
        v30 = a1[3];
        LODWORD(v4) = -16727;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_90;
    }

    UInt32 = FigCFNumberCreateUInt32();
    v34 = FigCFNumberCreateUInt32();
    v35 = APSFeaturesCreateFromStringRepresentation();
    v67 = CFGetHardwareAddress();
    v36 = HardwareAddressToCString();
    v68 = CFStringCreateWithCString(v31, v36, 0x600u);
    APAdvertiserInfoSetProperty();
    APAdvertiserInfoSetProperty();
    APAdvertiserInfoSetProperty();
    v37 = *MEMORY[0x277CBED28];
    APAdvertiserInfoSetProperty();
    APAdvertiserInfoSetProperty();
    v62 = UInt32;
    APAdvertiserInfoSetProperty();
    v63 = v35;
    APAdvertiserInfoSetProperty();
    APAdvertiserInfoSetProperty();
    APAdvertiserInfoSetProperty();
    v66 = v34;
    APAdvertiserInfoSetProperty();
    ShortVersionLength = APSVersionUtilsGetShortVersionLength();
    v65 = CFStringCreateWithBytesNoCopy(v31, "920.10.1", ShortVersionLength, 0x600u, 0, *MEMORY[0x277CBED00]);
    APAdvertiserInfoSetProperty();
    v39 = CFDictionaryCreateMutable(v31, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetInt64();
    CFDictionarySetValue(v39, *MEMORY[0x277CE4CF8], value);
    v40 = *MEMORY[0x277CBED10];
    CFDictionarySetValue(v39, *MEMORY[0x277CE4D08], *MEMORY[0x277CBED10]);
    CFDictionarySetValue(v39, *MEMORY[0x277CE4D10], v37);
    CFDictionarySetValue(v39, *MEMORY[0x277CE4D00], v40);
    CFArrayGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    Int64 = CFDictionaryGetInt64();
    v60 = CFDictionaryGetValue(v9, @"Password");
    if (TypedValue)
    {
      v43 = CFArrayCreateMutable(v31, 0, MEMORY[0x277CBF128]);
      if (v43)
      {
        *v73 = MEMORY[0x277D85DD0];
        *&v73[8] = 0x40000000;
        *&v73[16] = __uglWrapper_createNetworkAddressesArray_block_invoke;
        *&v73[24] = &__block_descriptor_tmp_65_0;
        v61 = Int64;
        *&v73[40] = Int64;
        *&v73[32] = v43;
        v44 = v43;
        FigCFArrayApplyBlock();
        v64 = v44;
        v45 = APTransportDeviceCreateWithNetworkAddresses();
        if (v45)
        {
          v54 = v45;
          endpointUGLWrapper_activateInternal_cold_3(v45);
        }

        else
        {
          v46 = APEndpointDescriptionAirPlayCreateWithTransportDevice(v31, v70, 0, &v69);
          if (!v46)
          {
            v47 = CFDictionaryCreateMutable(v31, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            CFDictionarySetValue(v47, @"IsRemoteControlOnly", v37);
            CFDictionarySetValue(v47, @"RepresentsLocalDevice", v40);
            v48 = APEndpointCreateWithEndpointDescription(v31, v69, 0, 0, v47, &cf);
            if (!v48)
            {
              CMBaseObject = FigEndpointGetCMBaseObject();
              v51 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              v53 = v62;
              v52 = v63;
              if (v51)
              {
                v51(CMBaseObject, *MEMORY[0x277CC1488], v60);
              }

              if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus endpointUGLWrapper_createWrappedEndpoint(FigEndpointRef, CFDictionaryRef, FigEndpointRef *)", 33554482, "[%{ptr}] <APUGL> Created wrapped endpoint [%{ptr}] for deviceID %@/%lu, port %u", v2, cf, v68, v67, v61);
              }

              v54 = 0;
              v55 = cf;
              cf = 0;
              goto LABEL_53;
            }

            v54 = v48;
            endpointUGLWrapper_activateInternal_cold_5(v48);
            v55 = 0;
            goto LABEL_105;
          }

          v54 = v46;
          endpointUGLWrapper_activateInternal_cold_4(v46);
        }

        v55 = 0;
LABEL_104:
        v47 = 0;
LABEL_105:
        v53 = v62;
        v52 = v63;
        goto LABEL_53;
      }

      endpointUGLWrapper_activateInternal_cold_6();
      v54 = 4294950575;
    }

    else
    {
      endpointUGLWrapper_activateInternal_cold_7();
      v54 = 4294950576;
    }

    APSLogErrorAt();
    v55 = 0;
    v64 = 0;
    goto LABEL_104;
  }

LABEL_9:
  v10 = 0uLL;
  memset(v73, 0, 40);
  if (gLogCategory_APEndpointUGLWrapper <= 50)
  {
    if (gLogCategory_APEndpointUGLWrapper != -1 || (v11 = _LogCategory_Initialize(), v10 = 0uLL, v5 = *(DerivedStorage + 40), v11))
    {
      LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void endpointUGLWrapper_activateInternal(EndpointActivationCallbackContext *)", 33554482, "[%{ptr}] <APUGLActivation> Activating wrapped endpoint [%{ptr}], seed %lld", v2, v5, *(DerivedStorage + 168));
      v10 = 0uLL;
      v5 = *(DerivedStorage + 40);
    }
  }

  *&v73[8] = v10;
  *&v73[24] = v10;
  *v73 = v2;
  *&v73[16] = uglWrapper_handleFailedInternal;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v12)
  {
    v12(v5, v73);
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  FigCFDictionarySetBoolean();
  v14 = *(DerivedStorage + 40);
  v15 = a1[3];
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v16)
  {
    v16(v14, v15, MutableCopy, uglWrapper_wrappedActivationCompletionCallback, a1);
  }

  if (MutableCopy)
  {
    v17 = MutableCopy;
LABEL_19:
    CFRelease(v17);
  }
}

uint64_t uglWrapper_wrappedActivationCompletionCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void **a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void uglWrapper_wrappedActivationCompletionCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] <APUGLActivation> Wrapped endpoint [%{ptr}] activation complete (seed %llu), result %#m; calling callback on behalf of wrapper", *a5, a1, a5[4], a4);
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (!a4)
  {
    *(DerivedStorage + 160) = 2;
  }

  CFRetain(*a5);
  APSDispatchAsyncFHelper();
  if (a4 != -16727 && a4)
  {
    endpointUGLWrapper_deactivateInternal(*a5, a1, 0, 0, 0);
  }

  uglWrapper_freeEndpointActivationContext(a5);
  return FigSimpleMutexUnlock();
}

uint64_t uglWrapper_shadowActivationCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void uglWrapper_shadowActivationCompletionCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] <APUGLActivation> Shadow endpoint [%{ptr}] activation complete (seed %llu), result %#m; activating next shadow or wrapped endpoint", v8, a1, a5[4], a4);
  }

  if (a4 == -17604)
  {
    *(a5 + 4) = -17604;
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  endpointUGLWrapper_activateInternal(a5);

  return FigSimpleMutexUnlock();
}

uint64_t endpointUGLWrapper_deactivateInternal(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus endpointUGLWrapper_deactivateInternal(FigEndpointRef, FigEndpointRef, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] <APUGLActivation> deactivateInternal, wrapped: [%{ptr}]", a1, a2);
  }

  FigSimpleMutexCheckIsLockedOnThisThread();
  *(DerivedStorage + 160) = 0;
  v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A004000BA895BuLL);
  *v11 = FigSimpleMutexCreate();
  v11[1] = CFRetain(a1);
  v11[7] = *(DerivedStorage + 168);
  v11[8] = a4;
  v11[9] = a5;
  v12 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  v13 = *MEMORY[0x277CBECE8];
  Count = CFDictionaryGetCount(*(v12 + 144));
  Mutable = CFArrayCreateMutable(v13, Count, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 0x40000000;
    v24 = __endpointUGLWrapper_copyActivatedShadowEndpoints_block_invoke;
    v25 = &__block_descriptor_tmp_83_0;
    v26 = Mutable;
    FigCFDictionaryApplyBlock();
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      endpointUGLWrapper_deactivateInternal_cold_1(Mutable);
    }
  }

  else
  {
    endpointUGLWrapper_deactivateInternal_cold_2();
  }

  v11[4] = Mutable;
  FigSimpleMutexLock();
  if (!a2)
  {
    *(v11 + 6) = 0;
    goto LABEL_27;
  }

  v11[2] = CFRetain(a2);
  *(v11 + 6) = 1;
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus endpointUGLWrapper_deactivateInternal(FigEndpointRef, FigEndpointRef, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554482, "[%{ptr}] <APUGLActivation> Deactivating wrapped endpoint [%{ptr}]", a1, a2);
  }

  v16 = *(DerivedStorage + 40);
  if (v16 != a2 && gLogCategory_APEndpointUGLWrapper <= 60)
  {
    if (gLogCategory_APEndpointUGLWrapper == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_20;
      }

      v16 = *(DerivedStorage + 40);
    }

    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus endpointUGLWrapper_deactivateInternal(FigEndpointRef, FigEndpointRef, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)", 33554492, "[%{ptr}] Warning! Wrapped endpoint [%{ptr}] doesn't match internal [%{ptr}]", a1, a2, v16, v22, v23, v24, v25, v26);
  }

LABEL_20:
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v17)
  {
    v17(a2, 0);
  }

  v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v18)
  {
    a2 = v18(a2, a3, uglWrapper_deactivationCompletionCallback, v11);
  }

  else
  {
    a2 = 4294954514;
  }

  *(v28 + 24) = 1;
  if (!*(DerivedStorage + 48))
  {
    endpointUGLWrapper_setWrappedEndpoint(a1, 0);
  }

LABEL_27:
  FigCFArrayApplyBlock();
  FigSimpleMutexUnlock();
  if (!*(v28 + 24))
  {
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      endpointUGLWrapper_deactivateInternal_cold_3(a1, v19, v20);
    }

    CFRetain(a1);
    APSDispatchAsyncFHelper();
    uglWrapper_freeEndpointDeactivationContext(v11);
  }

  _Block_object_dispose(&v27, 8);
  return a2;
}

void uglWrapper_freeEndpointActivationContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  if (gLogCategory_APEndpointUGLWrapper <= 30 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    uglWrapper_freeEndpointActivationContext_cold_1(a1);
  }

  free(a1);
}

void __endpointUGLWrapper_copyUGLServerInfoFromRCEndpoints_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      *(*(*(a1 + 32) + 8) + 24) = endpointUGLWrapper_copyUGLServerInfo(*(a1 + 40), v4);

      CFRelease(v5);
    }
  }
}

uint64_t endpointUGLWrapper_copyUGLServerInfo(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v14 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6 && (v7 = *MEMORY[0x277CBECE8], v6(CMBaseObject, @"EndpointDescription", *MEMORY[0x277CBECE8], &v15), v15))
  {
    APEndpointDescriptionGetCMBaseObject();
    v9 = v8;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, @"uglServerInfo", v7, &v14);
      if (v14)
      {
        if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
        {
          Value = FigCFDictionaryGetValue();
          v12 = IsAppleInternalBuild();
          LogPrintF(&gLogCategory_APEndpointUGLWrapper, "CFDictionaryRef endpointUGLWrapper_copyUGLServerInfo(FigEndpointRef, FigEndpointRef)", 33554482, "[%{ptr}] <APUGLPort> Got uglServerInfo from endpoint [%{ptr}]; port = %@%?{end}: %@", a1, a2, Value, v12 == 0, v14);
        }
      }
    }
  }

  else if (endpointUGLWrapper_copyUGLServerInfo_cold_1(a1, a2, v5))
  {
    return v14;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v14;
}

uint64_t __endpointUGLWrapper_copyUGLServerInfoFromShadowEndpoints_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v3 = result;
    result = endpointUGLWrapper_copyUGLServerInfo(*(result + 40), a3);
    *(*(*(v3 + 32) + 8) + 24) = result;
  }

  return result;
}

void __uglWrapper_createNetworkAddressesArray_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = APSNetworkAddressCreateWithString();
  if (v3)
  {
    __uglWrapper_createNetworkAddressesArray_block_invoke_cold_1(v3);
  }

  else
  {
    if (*(a1 + 40))
    {
      APSNetworkAddressSetPort();
    }

    CFArrayAppendValue(*(a1 + 32), 0);
  }
}

void __uglWrapper_handleFailedInternal_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    __uglWrapper_handleFailedInternal_block_invoke_cold_1(a1, a2, a3);
  }

  (*(a1 + 48))(*(a1 + 32), *(a1 + 56), *(a1 + 40), *(a1 + 64));
  CFRelease(*(a1 + 72));
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __endpointUGLWrapper_copySortedShadowEndpoints_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  if (APSGetFBOPropertyInt64())
  {
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointUGLWrapper, "CFMutableArrayRef endpointUGLWrapper_copySortedShadowEndpoints(FigEndpointRef)_block_invoke", 33554482, "[%{ptr}] Inserting local RC shadow [%{ptr}] at front", *(a1 + 40), a3);
    }

    CFArrayInsertValueAtIndex(*(a1 + 48), 0, a3);
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6 && (v6(CMBaseObject, @"EndpointDescription", *MEMORY[0x277CBECE8], &cf), cf) && APSGetFBOPropertyInt64())
    {
      if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
      {
        __endpointUGLWrapper_copySortedShadowEndpoints_block_invoke_cold_1(a1, a3, v7);
      }

      CFArrayInsertValueAtIndex(*(a1 + 48), *(*(*(a1 + 32) + 8) + 24), a3);
    }

    else
    {
      if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointUGLWrapper, "CFMutableArrayRef endpointUGLWrapper_copySortedShadowEndpoints(FigEndpointRef)_block_invoke", 33554482, "[%{ptr}] Appending other shadow [%{ptr}]", *(a1 + 40), a3);
      }

      CFArrayAppendValue(*(a1 + 48), a3);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void uglWrapper_deactivationCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = a5[1];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a5[2] == a1)
  {
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void uglWrapper_deactivationCompletionCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] Deactivation callback (seed %llu) - matched wrappedEndpoint [%{ptr}], result %#m", v9, a5[7], a1, a4);
    }

    a5[5] = a2;
    *(a5 + 12) = a4;
    *(a5 + 6) = 2;
  }

  else if (FigCFArrayRemoveLastElementOfValue())
  {
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void uglWrapper_deactivationCompletionCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554482, "[%{ptr}] Deactivation callback (seed %llu) - matched shadowEndpoint [%{ptr}], result %#m", v9, a5[7], a1, a4);
    }

    if (*(a5 + 6) != 2)
    {
      a5[5] = a2;
      *(a5 + 12) = a4;
    }
  }

  else if (gLogCategory_APEndpointUGLWrapper <= 90 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void uglWrapper_deactivationCompletionCallback(FigEndpointRef, FigEndpointFeatures, uint64_t, OSStatus, void *)", 33554522, "[%{ptr}] Deactivation callback (seed %llu) - could not find shadow endpoint [%{ptr}] to remove", v9, a5[7], a1);
  }

  if (*(a5 + 6) == 1 || (v12 = a5[4]) != 0 && CFArrayGetCount(v12))
  {

    FigSimpleMutexUnlock();
  }

  else
  {
    if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
    {
      uglWrapper_deactivationCompletionCallback_cold_1(a5, v9, v11);
    }

    if (!*(DerivedStorage + 48))
    {
      CMBaseObjectGetDerivedStorage();
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v14 = Mutable;
        v15 = *MEMORY[0x277CBED10];
        CFDictionarySetValue(Mutable, @"IsInUse", *MEMORY[0x277CBED10]);
        CFDictionarySetValue(v14, @"WasAutoconnected", v15);
        if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
        {
          uglWrapper_deactivationCompletionCallback_cold_2(v9, v16, v17);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigDispatchAsyncPostNotification();
        CFRelease(v14);
      }

      else
      {
        uglWrapper_deactivationCompletionCallback_cold_3();
      }
    }

    CFRetain(v9);
    APSDispatchAsyncFHelper();
    FigSimpleMutexUnlock();
    uglWrapper_freeEndpointDeactivationContext(a5);
  }
}

uint64_t __endpointUGLWrapper_deactivateInternal_block_invoke(void *a1, uint64_t a2)
{
  v5 = a1[5];
  v4 = a1[6];
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 16);
  if (v9)
  {
    result = v9(a2, v5, uglWrapper_deactivationCompletionCallback, v4);
    v10 = result;
  }

  else
  {
    v10 = 4294954514;
  }

  *(*(a1[4] + 8) + 24) = 1;
  if (gLogCategory_APEndpointUGLWrapper <= 50)
  {
    if (gLogCategory_APEndpointUGLWrapper != -1)
    {
      return LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus endpointUGLWrapper_deactivateInternal(FigEndpointRef, FigEndpointRef, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)_block_invoke", 33554482, "[%{ptr}] <APUGLActivation> Deactivating shadow endpoint [%{ptr}], status %#m", a1[7], a2, v10);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus endpointUGLWrapper_deactivateInternal(FigEndpointRef, FigEndpointRef, CFDictionaryRef, FigEndpointActivationCompletionCallback, void *)_block_invoke", 33554482, "[%{ptr}] <APUGLActivation> Deactivating shadow endpoint [%{ptr}], status %#m", a1[7], a2, v10);
    }
  }

  return result;
}

void uglWrapper_freeEndpointDeactivationContext(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexDestroy();
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void uglWrapper_freeEndpointDeactivationContext(EndpointDeactivationCallbackContext *)", 33554482, "[%{ptr}] <APUGLActivation> uglWrapper_freeEndpointDeactivationContext [%{ptr}] freed", a1[1], a1);
  }

  free(a1);
}

void __endpointUGLWrapper_copyActivatedShadowEndpoints_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  if (APSGetFBOPropertyInt64())
  {
    v5 = *(a1 + 32);

    CFArrayAppendValue(v5, a3);
  }
}

void uglWrapper_endpointCompletionCallback(uint64_t a1, uint64_t a2, void *a3)
{
  (a3[1])(*a3, a2, a3[2]);

  free(a3);
}

uint64_t APEndpointUGLWrapper_BorrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_BorrowScreen(FigEndpointExtendedRef, CFStringRef, CFStringRef)", 33554482, "[%{ptr}] BorrowScreen(%@, %@)", a1, a2, a3);
  }

  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v7 = epp_copyInner(FigEndpoint);
  if (!v7)
  {
    return 4294949690;
  }

  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t APEndpointUGLWrapper_UnborrowScreen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_UnborrowScreen(FigEndpointExtendedRef, CFStringRef, CFStringRef)", 33554482, "[%{ptr}] UnborrowScreen(%@, %@)", a1, a2, a3);
  }

  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v7 = epp_copyInner(FigEndpoint);
  if (!v7)
  {
    return 4294949690;
  }

  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 24);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t APEndpointUGLWrapper_DuckAudio(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_DuckAudio(FigEndpointExtendedRef, CFDictionaryRef)", 33554482, "[%{ptr}] DuckAudio(%@)", a1, a2);
  }

  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v5 = epp_copyInner(FigEndpoint);
  if (!v5)
  {
    return 4294949690;
  }

  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 24) + 48);
  if (v7)
  {
    v8 = v7(v6, a2);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

uint64_t APEndpointUGLWrapper_SendCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_SendCommand(FigEndpointExtendedRef, CFStringRef, CFDictionaryRef, FigEndpointSendCommandCompletionCallback, void *)", 33554482, "[%{ptr}] SendCommand(%@)", a1, a2);
  }

  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v11 = epp_copyInner(FigEndpoint);
  if (!v11)
  {
    return 4294949690;
  }

  v12 = v11;
  v13 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
  *v13 = a1;
  v13[1] = a4;
  v13[2] = a5;
  v14 = *(*(CMBaseObjectGetVTable() + 24) + 72);
  if (v14)
  {
    v15 = v14(v12, a2, a3, uglWrapper_sendCommandCompletionCallback, v13);
  }

  else
  {
    v15 = 4294954514;
  }

  CFRelease(v12);
  return v15;
}

uint64_t APEndpointUGLWrapper_CreateRemoteControlSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_CreateRemoteControlSession_cold_1(a1, a2, a3);
  }

  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v7 = epp_copyInner(FigEndpoint);
  if (!v7)
  {
    return 4294949690;
  }

  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 80);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t APEndpointUGLWrapper_CreateCommChannel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_CreateCommChannel_cold_1(a1, a2, a3);
  }

  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v7 = epp_copyInner(FigEndpoint);
  if (!v7)
  {
    return 4294949690;
  }

  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 88);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

uint64_t APEndpointUGLWrapper_SendData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_SendData(FigEndpointExtendedRef, CFStringRef, CFDataRef, FigEndpointSendDataCompletion, void *)", 33554482, "[%{ptr}] SendData(%@)", a1, a2);
  }

  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v11 = epp_copyInner(FigEndpoint);
  if (!v11)
  {
    return 4294949690;
  }

  v12 = v11;
  v13 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
  *v13 = a1;
  v13[1] = a4;
  v13[2] = a5;
  v14 = *(*(CMBaseObjectGetVTable() + 24) + 96);
  if (v14)
  {
    v15 = v14(v12, a2, a3, uglWrapper_sendDataCompletionCallback, v13);
  }

  else
  {
    v15 = 4294954514;
  }

  CFRelease(v12);
  return v15;
}

uint64_t APEndpointUGLWrapper_CloseCommChannel(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_CloseCommChannel(FigEndpointExtendedRef, CFStringRef)", 33554482, "[%{ptr}] CloseCommChannel(%@)", a1, a2);
  }

  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v5 = epp_copyInner(FigEndpoint);
  if (!v5)
  {
    return 4294949690;
  }

  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 24) + 104);
  if (v7)
  {
    v8 = v7(v6, a2);
  }

  else
  {
    v8 = 4294954514;
  }

  CFRelease(v6);
  return v8;
}

uint64_t APEndpointUGLWrapper_AcquireAndCopyResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_AcquireAndCopyResource(FigEndpointExtendedRef, CFStringRef, CFDictionaryRef, CFTypeRef *)", 33554482, "[%{ptr}] AcquireAndCopyResource(%@, ...)", a1, a2);
  }

  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v9 = epp_copyInner(FigEndpoint);
  if (!v9)
  {
    return 4294949690;
  }

  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 24) + 128);
  if (v11)
  {
    v12 = v11(v10, a2, a3, a4);
  }

  else
  {
    v12 = 4294954514;
  }

  CFRelease(v10);
  return v12;
}

uint64_t APEndpointUGLWrapper_RelinquishResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "OSStatus APEndpointUGLWrapper_RelinquishResource(FigEndpointExtendedRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] RelinquishResource(%@, [%{ptr}])", a1, a2, a3);
  }

  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v7 = epp_copyInner(FigEndpoint);
  if (!v7)
  {
    return 4294949690;
  }

  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 136);
  if (v9)
  {
    v10 = v9(v8, a2, a3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v8);
  return v10;
}

void APEndpointUGLWrapper_CloseAllCommChannels(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointUGLWrapper <= 50 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    APEndpointUGLWrapper_CloseAllCommChannels_cold_1(a1, a2, a3);
  }

  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  v5 = epp_copyInner(FigEndpoint);
  if (v5)
  {
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 24) + 144);
    if (v7)
    {
      v7(v6);
    }

    CFRelease(v6);
  }
}

void uglWrapper_sendCommandCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  (a4[1])(*a4, a2, a3, a4[2]);

  free(a4);
}

void uglWrapper_sendDataCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  (a4[1])(*a4, a2, a3, a4[2]);

  free(a4);
}

uint64_t endpointUGLWrapper_handleWrappedNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (gLogCategory_APEndpointUGLWrapper <= 30 && (gLogCategory_APEndpointUGLWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointUGLWrapper, "void endpointUGLWrapper_handleWrappedNotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554462, "Forwarding %@ from [%{ptr}] to [%{ptr}], payload %@", a3, a4, a2, a5);
  }

  return CMNotificationCenterPostNotification();
}

uint64_t APEndpointStreamAudioAVCCreate(uint64_t a1, const void *a2, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  if (!a2)
  {
    APEndpointStreamAudioAVCCreate_cold_4();
    return 4294950536;
  }

  if (!a3)
  {
    APEndpointStreamAudioAVCCreate_cold_3();
    return 4294950536;
  }

  if (!a5)
  {
    APEndpointStreamAudioAVCCreate_cold_2();
    return 4294950536;
  }

  FigEndpointStreamAirPlayGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v10 = v8;
    APEndpointStreamAudioAVCCreate_cold_1(v8);
    return v10;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(a3);
  DerivedStorage[1] = CFRetain(a2);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v10 = 0;
  v11 = 0;
  *a5 = 0;
  if (gLogCategory_APEndpointStreamAudioAVC <= 50)
  {
    if (gLogCategory_APEndpointStreamAudioAVC == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return 0;
      }

      v11 = *a5;
    }

    LogPrintF(&gLogCategory_APEndpointStreamAudioAVC, "OSStatus APEndpointStreamAudioAVCCreate(CFAllocatorRef, FigHALAudioConduitDeviceRef, CFStringRef, CFDictionaryRef, FigEndpointStreamRef *)", 33554482, "[%{ptr}] EndpointStreamAudioAVC created", v11);
    return 0;
  }

  return v10;
}

uint64_t apesoavc_suspendedNotificationCallbackPostEndpointStreamDissociated(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointStreamAudioAVC <= 50 && (gLogCategory_APEndpointStreamAudioAVC != -1 || _LogCategory_Initialize()))
  {
    apesoavc_suspendedNotificationCallbackPostEndpointStreamDissociated_cold_1(a2, a2, a3);
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void endpointStreamAudioAVC_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t endpointStreamAudioAVC_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    endpointStreamAudioAVC_CopyProperty_cold_11();
    return 4294950536;
  }

  if (!a4)
  {
    endpointStreamAudioAVC_CopyProperty_cold_10();
    return 4294950536;
  }

  v8 = DerivedStorage;
  if (CFEqual(a2, *MEMORY[0x277CC1900]))
  {
    v9 = *MEMORY[0x277CC1960];
LABEL_7:
    v10 = 0;
    *a4 = CFRetain(v9);
    return v10;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1878]))
  {
    v9 = *v8;
    goto LABEL_7;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18C8]))
  {
    CMBaseObjectGetDerivedStorage();
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v12 = FigHALAudioConduitDeviceCopyProperty();
    if (v12)
    {
      v10 = v12;
      endpointStreamAudioAVC_CopyProperty_cold_1(v12);
    }

    else
    {
      BytePtr = CFDataGetBytePtr(v26);
      v16 = *(BytePtr + 4);
      v17 = *(BytePtr + 1);
      *v25 = *BytePtr;
      *&v25[16] = v17;
      *&v25[32] = v16;
      if (gLogCategory_APEndpointStreamAudioAVC <= 50 && (gLogCategory_APEndpointStreamAudioAVC != -1 || _LogCategory_Initialize()))
      {
        endpointStreamAudioAVC_CopyProperty_cold_2(v25, v14, v15);
      }

      if (APSSettingsGetIntWithDefault())
      {
        *v25 = 0x40E7700000000000;
        *&v25[8] = xmmword_222298470;
        *&v25[24] = xmmword_222298480;
        if (gLogCategory_APEndpointStreamAudioAVC <= 50 && (gLogCategory_APEndpointStreamAudioAVC != -1 || _LogCategory_Initialize()))
        {
          endpointStreamAudioAVC_CopyProperty_cold_3(v25, v18, v19);
        }
      }

      v20 = APSAudioFormatDescriptionCreateWithASBD();
      if (v20)
      {
        v10 = v20;
        endpointStreamAudioAVC_CopyProperty_cold_4(v20);
      }

      else
      {
        v21 = APSAudioFormatDescriptionListCreate();
        if (v21)
        {
          v10 = v21;
          endpointStreamAudioAVC_CopyProperty_cold_5(v21);
        }

        else
        {
          v22 = APSAudioFormatDescriptionListAddFormat();
          if (v22)
          {
            v10 = v22;
            endpointStreamAudioAVC_CopyProperty_cold_6(v22);
          }

          else
          {
            ASRDArrayPCM = APSAudioFormatDescriptionListCreateASRDArrayPCM();
            v10 = ASRDArrayPCM;
            if (ASRDArrayPCM)
            {
              endpointStreamAudioAVC_CopyProperty_cold_7(ASRDArrayPCM);
            }

            else
            {
              *a4 = 0;
            }
          }
        }
      }
    }

    if (v26)
    {
      CFRelease(v26);
    }

    if (v10)
    {
      endpointStreamAudioAVC_CopyProperty_cold_8(v10);
    }
  }

  else if (CFEqual(a2, *MEMORY[0x277CC1840]))
  {
    v24 = APAudioEngineAVCCreate(a3, v8[1], a4);
    v10 = v24;
    if (v24)
    {
      endpointStreamAudioAVC_CopyProperty_cold_9(v24);
    }
  }

  else
  {
    return 4294954512;
  }

  return v10;
}

uint64_t endpointStreamAudioAVC_SetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 4294954512;
  }

  endpointStreamAudioAVC_SetProperty_cold_1();
  return 4294950536;
}

uint64_t endpointStreamAudioAVC_Suspend(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, uint64_t), uint64_t a4)
{
  if (gLogCategory_APEndpointStreamAudioAVC <= 50 && (gLogCategory_APEndpointStreamAudioAVC != -1 || _LogCategory_Initialize()))
  {
    endpointStreamAudioAVC_Suspend_cold_1(a1, a2, a3);
    if (!a3)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (a3)
  {
LABEL_5:
    a3(a1, 0, a4);
  }

  return 0;
}

uint64_t endpointStreamAudioAVC_Resume(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, uint64_t), uint64_t a4)
{
  if (gLogCategory_APEndpointStreamAudioAVC <= 50 && (gLogCategory_APEndpointStreamAudioAVC != -1 || _LogCategory_Initialize()))
  {
    endpointStreamAudioAVC_Resume_cold_1(a1, a2, a3);
    if (!a3)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (a3)
  {
LABEL_5:
    a3(a1, 0, a4);
  }

  return 0;
}

uint64_t APLocalPlaybackServerMake(_OWORD *a1, char a2, const void *a3, void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0xA0uLL, 0x1060040E913FD94uLL);
  v9 = *(a1 + 12);
  *(v8 + 28) = *a1;
  *(v8 + 40) = v9;
  UUIDGet();
  v8[24] = a2;
  v10 = dispatch_semaphore_create(1);
  *(v8 + 8) = v10;
  if (!v10)
  {
    APLocalPlaybackServerMake_cold_4();
    v15 = 4294960596;
LABEL_18:
    APLocalPlaybackServerDestroy(v8);
    return v15;
  }

  *(v8 + 9) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8[152] = 0;
  if (a3)
  {
    v11 = CFRetain(a3);
  }

  else
  {
    v11 = 0;
  }

  *(v8 + 7) = v11;
  v12 = HTTPServerCreate();
  if (v12)
  {
    v15 = v12;
    APLocalPlaybackServerMake_cold_1(v12);
    goto LABEL_18;
  }

  v13 = *v8;
  v13[59] = -7001;
  *(v13 + 3) = &gLogCategory_APLocalPlaybackServer;
  if (v8[24])
  {
    v13[58] = 1;
  }

  v14 = CFObjectSetProperty();
  if (v14)
  {
    v15 = v14;
    APLocalPlaybackServerMake_cold_2(v14);
    goto LABEL_18;
  }

  if (gLogCategory_APLocalPlaybackServer <= 40 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
  {
    APLocalPlaybackServerMake_cold_3(v8);
  }

  v15 = 0;
  *a4 = v8;
  return v15;
}

uint64_t APLocalPlaybackServer_connectionInit(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *buffer = 0;
  v9 = 0;
  v3 = (a2 + 56);
  v2 = *(a2 + 56);
  if (v2)
  {
    if (CFDataGetLength(v2) != 16)
    {
      APLocalPlaybackServer_connectionInit_cold_1();
      return 4294960553;
    }

    if (gLogCategory_APLocalPlaybackServer <= 30 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
    {
      APLocalPlaybackServer_connectionInit_cold_2(v3);
    }

    v4 = *v3;
    v11.length = CFDataGetLength(v4);
    v11.location = 0;
    CFDataGetBytes(v4, v11, buffer);
    v5 = NetTransportTLSPSKConfigure();
    if (v5)
    {
      v6 = v5;
      APLocalPlaybackServer_connectionInit_cold_3(v5);
      return v6;
    }

    HTTPConnectionSetTransportDelegate();
    if (gLogCategory_APLocalPlaybackServer <= 30 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
    {
      APLocalPlaybackServer_connectionInit_cold_4();
    }
  }

  return 0;
}

uint64_t APLocalPlaybackServer_handleMessage(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[1030];
  v7 = a2[1031];
  v8 = a2[1033];
  v9 = a2[1034];
  if (gLogCategory_APLocalPlaybackServer <= 10 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APLocalPlaybackServer, "OSStatus APLocalPlaybackServer_handleMessage(HTTPConnectionRef, HTTPMessageRef, void *)", 33554442, "AirPlay Video request: %.*s %.*s\n", v7, v6, v9, v8);
  }

  if (!strnicmpx())
  {
    if (!HTTPConnectionGetNextURLSegmentEx() || strnicmpx())
    {
      v23 = -6711;
      if (gLogCategory_APLocalPlaybackServer <= 50 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APLocalPlaybackServer, "OSStatus APLocalPlaybackServer_handleMessage(HTTPConnectionRef, HTTPMessageRef, void *)", 33554482, "### Bad session ID in URL: '%.*s'\n");
      }
    }

    else
    {
      if (HTTPConnectionGetNextURLSegmentEx())
      {
        dispatch_semaphore_wait(*(a3 + 64), 0xFFFFFFFFFFFFFFFFLL);
        v10 = strnicmpx();
        v11 = MEMORY[0x277CBECE8];
        if (v10)
        {
          v12 = 0;
          v13 = memrchr();
          if (v13)
          {
            v12 = v13;
          }

          v14 = CFStringCreateWithBytes(*v11, 0, v12, 0x8000100u, 0);
          if (v14)
          {
            v15 = v14;
            if (FigCFDictionaryGetValue())
            {
              FigCFDictionaryGetBooleanIfPresent();
              CFStringGetTypeID();
              TypedValue = CFDictionaryGetTypedValue();
              if (TypedValue)
              {
                v17 = TypedValue;
LABEL_26:
                if (a2[1049] == a2[1050])
                {
                  MutableCopy = 0;
                  goto LABEL_28;
                }

                v23 = -6711;
                if (gLogCategory_APLocalPlaybackServer <= 50 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_APLocalPlaybackServer, "OSStatus APLocalPlaybackServer_handleMessage(HTTPConnectionRef, HTTPMessageRef, void *)", 33554482, "### Bad item ID in URL: '%.*s'\n");
                }

                goto LABEL_81;
              }

              v23 = -6742;
              if (gLogCategory_APLocalPlaybackServer <= 50 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APLocalPlaybackServer, "OSStatus APLocalPlaybackServer_handleMessage(HTTPConnectionRef, HTTPMessageRef, void *)", 33554482, "### Failed to get local Playback URL: '%.*s'\n");
              }
            }

            else
            {
              v23 = -6742;
              if (gLogCategory_APLocalPlaybackServer <= 50 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APLocalPlaybackServer, "OSStatus APLocalPlaybackServer_handleMessage(HTTPConnectionRef, HTTPMessageRef, void *)", 33554482, "### Bad UUID in URL: '%.*s'\n");
              }
            }
          }

          else
          {
            v23 = -6742;
            if (gLogCategory_APLocalPlaybackServer <= 50 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APLocalPlaybackServer, "OSStatus APLocalPlaybackServer_handleMessage(HTTPConnectionRef, HTTPMessageRef, void *)", 33554482, "### Bad UUID in URL: '%.*s'\n", v9, v8);
            }

            v15 = 0;
          }

LABEL_81:
          MutableCopy = 0;
LABEL_38:
          v20 = 1;
LABEL_39:
          v21 = 400;
          goto LABEL_40;
        }

        v15 = 0;
        v17 = *(a3 + 80);
        if (*(a3 + 152))
        {
          MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v17);
          if (a2[1049] == a2[1050])
          {
LABEL_24:
            v17 = MutableCopy;
LABEL_28:
            dispatch_semaphore_signal(*(a3 + 64));
            if (v17)
            {
              APSHTTPOpenLocalFile();
              v23 = -6711;
              if (gLogCategory_APLocalPlaybackServer <= 50 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APLocalPlaybackServer, "OSStatus APLocalPlaybackServer_handleMessage(HTTPConnectionRef, HTTPMessageRef, void *)", 33554482, "### URL not found: '%.*s'\n");
              }
            }

            else
            {
              v23 = -6711;
              if (gLogCategory_APLocalPlaybackServer <= 50 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APLocalPlaybackServer, "OSStatus APLocalPlaybackServer_handleMessage(HTTPConnectionRef, HTTPMessageRef, void *)", 33554482, "### No local path for URL: '%.*s'\n");
              }
            }

            v20 = 0;
            goto LABEL_39;
          }

          while (HTTPConnectionGetNextURLSegmentEx())
          {
            CFStringAppendFormat(MutableCopy, 0, @"/%.*s", 0, 0);
            if (gLogCategory_APLocalPlaybackServer <= 50 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
            {
              APLocalPlaybackServer_handleMessage_cold_1(MutableCopy);
            }

            if (a2[1049] == a2[1050])
            {
              goto LABEL_24;
            }
          }

          v23 = -6711;
          goto LABEL_38;
        }

        goto LABEL_26;
      }

      v23 = -6711;
      if (gLogCategory_APLocalPlaybackServer <= 50 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APLocalPlaybackServer, "OSStatus APLocalPlaybackServer_handleMessage(HTTPConnectionRef, HTTPMessageRef, void *)", 33554482, "### Bad item ID in URL: '%.*s'\n");
      }
    }

    v15 = 0;
    v20 = 0;
    MutableCopy = 0;
    goto LABEL_39;
  }

  v23 = -6711;
  if (gLogCategory_APLocalPlaybackServer <= 50 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APLocalPlaybackServer, "OSStatus APLocalPlaybackServer_handleMessage(HTTPConnectionRef, HTTPMessageRef, void *)", 33554482, "### Bad method '%.*s' for URL: '%.*s'\n", v7, v6, v9, v8);
  }

  v15 = 0;
  v20 = 0;
  MutableCopy = 0;
  v21 = 405;
LABEL_40:
  v22 = MEMORY[0x223DB1F50](a1, v21, v23, 0, 0, 0);
  v24 = v22;
  if (v22)
  {
    APLocalPlaybackServer_handleMessage_cold_3(v22);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v20)
  {
    dispatch_semaphore_signal(*(a3 + 64));
  }

  return v24;
}

void APLocalPlaybackServerDestroy(CFTypeRef *a1)
{
  CFObjectSetProperty();
  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v2 = a1[8];
  if (v2)
  {
    dispatch_release(v2);
    a1[8] = 0;
  }

  v3 = a1[9];
  if (v3)
  {
    CFRelease(v3);
    a1[9] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
    a1[7] = 0;
  }

  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t APLocalPlaybackServerRegisterPathCreatingHostAndURL(uint64_t a1, const __CFString *a2, const __CFString *a3, CFTypeRef *a4, CFStringRef *a5)
{
  theString = 0;
  cf = 0;
  if (a2)
  {
    v10 = a3 != 0;
    *(a1 + 152) = v10;
    v11 = apLocalPlaybackServer_createURLAndHostForPath(a1, a2, v10, 0, &cf, &theString);
    if (v11)
    {
      v16 = v11;
      APSLogErrorAt();
      v14 = theString;
    }

    else
    {
      dispatch_semaphore_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL);
      v12 = *(a1 + 80);
      if (a3)
      {
        v13 = a3;
      }

      else
      {
        v13 = a2;
      }

      *(a1 + 80) = v13;
      CFRetain(v13);
      if (v12)
      {
        CFRelease(v12);
      }

      v14 = theString;
      CFStringGetCString(theString, (a1 + 88), 64, 0x8000100u);
      dispatch_semaphore_signal(*(a1 + 64));
      if (gLogCategory_APLocalPlaybackServer <= 40 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APLocalPlaybackServer, "OSStatus APLocalPlaybackServerRegisterPathCreatingHostAndURL(APLocalPlaybackServer, CFStringRef, CFStringRef, CFStringRef *, CFStringRef *)", 33554472, "Register url %@ for local path %@\n", v14, v13);
      }

      *a4 = cf;
      cf = 0;
      if (*(a1 + 152))
      {
        v19 = 0;
        RelativePath = apLocalPlaybackServer_getRelativePath(a3, a2, &v19);
        v16 = RelativePath;
        if (RelativePath)
        {
          APLocalPlaybackServerRegisterPathCreatingHostAndURL_cold_1(RelativePath);
        }

        else
        {
          v17 = v19;
          *a5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"/1/%@%@", v14, v19);
          if (v17)
          {
            CFRelease(v17);
          }
        }
      }

      else
      {
        v16 = 0;
        *a5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"/1/%@", v14);
      }
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    APLocalPlaybackServerRegisterPathCreatingHostAndURL_cold_2();
    v16 = 4294960591;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t apLocalPlaybackServer_createURLAndHostForPath(uint64_t a1, const __CFString *a2, int a3, const __CFString *a4, CFStringRef *a5, CFStringRef *a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *cStr = 0u;
  v33 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  *v28 = 0u;
  bzero(buffer, 0x401uLL);
  if (!a2)
  {
    apLocalPlaybackServer_createURLAndHostForPath_cold_5();
    return 4294960591;
  }

  v22 = 0;
  v23 = 0;
  *v25 = 0;
  v24 = 0;
  memset(&c, 0, sizeof(c));
  if (!CFStringGetCString(a2, buffer, 1025, 0x8000100u))
  {
    apLocalPlaybackServer_createURLAndHostForPath_cold_4();
    return 4294960591;
  }

  SockAddrCopy();
  SockAddrSetPort();
  v12 = SockAddrToString();
  if (v12)
  {
    v19 = v12;
    apLocalPlaybackServer_createURLAndHostForPath_cold_1(v12);
    return v19;
  }

  if (a4)
  {
    if (!CFStringGetCString(a4, v28, 64, 0x8000100u))
    {
      apLocalPlaybackServer_createURLAndHostForPath_cold_2();
      return 4294960591;
    }
  }

  else
  {
    CC_SHA1_Init(&c);
    CC_SHA1_Update(&c, "\xD9\x1D\xC0\x69_\x1AH\v\x94\x95\xBC\xB5\x84O\xF1\x76pLocalPlaybackServer_getRelativePath", 0x10u);
    CC_SHA1_Update(&c, (a1 + 8), 0x10u);
    v13 = strlen(buffer);
    CC_SHA1_Update(&c, buffer, v13);
    CC_SHA1_Final(&v25[4], &c);
    v26 = *&v25[4];
    BYTE6(v26) = v25[10] & 0xF | 0x50;
    BYTE8(v26) = v25[12] & 0x3F | 0x80;
    if (SNPrintF(v28, 64, "%#U", &v26) - 64 < 0xFFFFFFC1)
    {
      apLocalPlaybackServer_createURLAndHostForPath_cold_3();
      return 4294960553;
    }
  }

  FileExtensionFromString = GetFileExtensionFromString();
  v15 = *FileExtensionFromString;
  v16 = *MEMORY[0x277CBECE8];
  *a5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  if (a3)
  {
    v17 = CFStringCreateWithCString(v16, v28, 0x8000100u);
  }

  else
  {
    v18 = "m4v";
    if (v15)
    {
      v18 = FileExtensionFromString;
    }

    v17 = CFStringCreateWithFormat(v16, 0, @"%s.%s", v28, v18, *&c.h0, *&c.h2, *&c.h4, *&c.Nh, *&c.data[1], *&c.data[3], *&c.data[5], *&c.data[7], *&c.data[9], *&c.data[11], *&c.data[13], *&c.data[15], v22, v23, v24, *v25);
  }

  v19 = 0;
  *a6 = v17;
  return v19;
}

uint64_t apLocalPlaybackServer_getRelativePath(const __CFString *a1, CFStringRef theString, void *a3)
{
  if (!a1)
  {
    apLocalPlaybackServer_getRelativePath_cold_2();
    return 4294960591;
  }

  if (!theString)
  {
    apLocalPlaybackServer_getRelativePath_cold_1();
    return 4294960591;
  }

  v6 = *MEMORY[0x277CBECE8];
  Length = CFStringGetLength(theString);
  result = CFStringCreateMutableCopy(v6, Length, theString);
  *a3 = result;
  if (!result)
  {
    return result;
  }

  CFStringTrim(result, a1);
  if (gLogCategory_APLocalPlaybackServer > 40)
  {
    return 0;
  }

  if (gLogCategory_APLocalPlaybackServer != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF(&gLogCategory_APLocalPlaybackServer, "OSStatus apLocalPlaybackServer_getRelativePath(CFStringRef, CFStringRef, CFMutableStringRef *)", 33554472, "inLocalpath: %@, inMovPkgPath: %@, relativePath: %@\n", theString, a1, *a3);
    return 0;
  }

  return result;
}

uint64_t APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, CFTypeRef *a5, CFStringRef *a6)
{
  cf = 0;
  v22 = 0;
  if (!a2)
  {
    APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL_cold_5();
    Mutable = 0;
    v16 = 4294960591;
    goto LABEL_19;
  }

  if (a3)
  {
    URLAndHostForPath = apLocalPlaybackServer_createURLAndHostForPath(a1, a3, a4 != 0, a2, &v22, &cf);
    if (URLAndHostForPath)
    {
      v16 = URLAndHostForPath;
      APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL_cold_1(URLAndHostForPath);
      Mutable = 0;
    }

    else
    {
      v13 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        dispatch_semaphore_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL);
        if (a4)
        {
          CFDictionarySetValue(Mutable, @"IsLocalMovPkgHLSURL", *MEMORY[0x277CBED28]);
        }

        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        dispatch_semaphore_signal(*(a1 + 64));
        if (gLogCategory_APLocalPlaybackServer <= 40 && (gLogCategory_APLocalPlaybackServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APLocalPlaybackServer, "OSStatus APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL(APLocalPlaybackServer, CFStringRef, CFStringRef, CFStringRef, CFStringRef *, CFStringRef *)", 33554472, "Register url %@ for local path %@ and UUID %@\n", cf, a3, a2);
        }

        *a5 = v22;
        v22 = 0;
        if (!a4)
        {
          v18 = cf;
          v16 = 0;
          *a6 = CFStringCreateWithFormat(v13, 0, @"/1/%@", cf);
          if (!v18)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        v20 = 0;
        RelativePath = apLocalPlaybackServer_getRelativePath(a4, a3, &v20);
        v16 = RelativePath;
        if (RelativePath)
        {
          APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL_cold_2(RelativePath);
        }

        else
        {
          v17 = v20;
          *a6 = CFStringCreateWithFormat(v13, 0, @"/1/%@%@", cf, v20);
          if (v17)
          {
            CFRelease(v17);
          }
        }
      }

      else
      {
        APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL_cold_3();
        v16 = 0;
      }
    }
  }

  else
  {
    APLocalPlaybackServerRegisterPathWithUUIDCreatingHostAndURL_cold_4();
    Mutable = 0;
    v16 = 4294960591;
  }

  v18 = cf;
  if (cf)
  {
LABEL_18:
    CFRelease(v18);
  }

LABEL_19:
  if (v22)
  {
    CFRelease(v22);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v16;
}

uint64_t APLocalPlaybackServerUnRegisterUUID(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    APLocalPlaybackServerUnRegisterUUID_cold_2();
    return 4294960591;
  }

  dispatch_semaphore_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL);
  CFDictionaryRemoveValue(*(a1 + 72), a2);
  dispatch_semaphore_signal(*(a1 + 64));
  if (gLogCategory_APLocalPlaybackServer > 40)
  {
    return 0;
  }

  if (gLogCategory_APLocalPlaybackServer != -1 || (result = _LogCategory_Initialize(), result))
  {
    APLocalPlaybackServerUnRegisterUUID_cold_1(a2);
    return 0;
  }

  return result;
}

uint64_t APPairingClientGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_9 != -1)
  {
    APPairingClientGetClassID_cold_1();
  }

  return qword_280FB1AC8;
}

uint64_t pairingSession_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&pairingSession_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APEndpointManagerCarPlayCreate(uint64_t a1, CFTypeRef cf, CFTypeRef *a3)
{
  cfa = 0;
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 != CFDictionaryGetTypeID())
    {
      APEndpointManagerCarPlayCreate_cold_1();
      goto LABEL_49;
    }
  }

  if (!a3)
  {
    APEndpointManagerCarPlayCreate_cold_19();
LABEL_49:
    v37 = 4294950586;
    goto LABEL_54;
  }

  LogSetAppID();
  FigEndpointManagerGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v37 = v7;
    APEndpointManagerCarPlayCreate_cold_2(v7);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (cf)
    {
      *(DerivedStorage + 360) = CFDictionaryGetInt64() != 0;
    }

    v9 = dispatch_queue_create("com.apple.APEndpointManagerCarPlay.state", 0);
    *(DerivedStorage + 8) = v9;
    if (v9)
    {
      v10 = dispatch_queue_create("com.apple.APEndpointManagerCarPlay.notification", 0);
      *(DerivedStorage + 16) = v10;
      dispatch_retain(v10);
      v11 = dispatch_queue_create("com.apple.APEndpointManagerCarPlay.carkitPreferenceInit", 0);
      *(DerivedStorage + 24) = v11;
      if (v11)
      {
        if (!APSIsRemoteHALPluginLoadingEnabled())
        {
LABEL_34:
          LOBYTE(v41) = 0;
          if (!IsAppleInternalBuild() && !APSSettingsGetBooleanIfPresent())
          {
            APSSettingsSetValue();
          }

          APSSettingsSynchronize();
          CFRetain(cfa);
          v34 = *(DerivedStorage + 8);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __APEndpointManagerCarPlayCreate_block_invoke;
          block[3] = &__block_descriptor_56_e5_v8__0l;
          block[4] = DerivedStorage;
          block[5] = a1;
          block[6] = cfa;
          dispatch_async(v34, block);
          if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
          {
            APEndpointManagerCarPlayCreate_cold_16(DerivedStorage, v35, v36);
          }

          v37 = 0;
          *a3 = cfa;
          return v37;
        }

        v41 = 0;
        if (carManager_getWeakRefTable_once != -1)
        {
          APEndpointManagerCarPlayCreate_cold_3();
        }

        Key = FigCFWeakReferenceTableAddValueAndGetKey();
        if (Key)
        {
          APEndpointManagerCarPlayCreate_cold_4(Key);
        }

        *(DerivedStorage + 344) = v41;
        v13 = dispatch_queue_create("com.apple.airplay.apendpointManagerCarPlay.pluginregister", 0);
        *(DerivedStorage + 328) = v13;
        if (v13)
        {
          Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
          v41 = 0;
          CFStringAppendFormat(Mutable, 0, @"/System/Library/Audio/Plug-Ins/HAL/%@", @"CarPlayHalogen.driver");
          v15 = CFURLCreateWithFileSystemPath(0, Mutable, kCFURLPOSIXPathStyle, 1u);
          if (v15)
          {
            v16 = v15;
            v17 = CFPlugInCreate(0, v15);
            if (v17)
            {
              v18 = v17;
              v19 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
              FactoriesForPlugInTypeInPlugIn = CFPlugInFindFactoriesForPlugInTypeInPlugIn(v19, v18);
              if (FactoriesForPlugInTypeInPlugIn)
              {
                v21 = FactoriesForPlugInTypeInPlugIn;
                if (CFArrayGetCount(FactoriesForPlugInTypeInPlugIn) <= 0)
                {
                  APEndpointManagerCarPlayCreate_cold_9();
                }

                else
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v21, 0);
                  if (ValueAtIndex)
                  {
                    v23 = ValueAtIndex;
                    v24 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
                    v25 = CFPlugInInstanceCreate(0, v23, v24);
                    if (v25)
                    {
                      v26 = v25;
                      v27 = *(*v25 + 8);
                      v28 = CFUUIDGetConstantUUIDWithBytes(0, 0xEEu, 0xA5u, 0x77u, 0x3Du, 0xCCu, 0x43u, 0x49u, 0xF1u, 0x8Eu, 0, 0x8Fu, 0x96u, 0xE7u, 0xD2u, 0x3Bu, 0x17u);
                      v29 = CFUUIDGetUUIDBytes(v28);
                      v30 = v27(v26, *&v29.byte0, *&v29.byte8, &v41);
                      if (v30)
                      {
                        APEndpointManagerCarPlayCreate_cold_5(v30);
                      }

                      else if (!v41)
                      {
                        APEndpointManagerCarPlayCreate_cold_6();
                      }

                      (*(*v26 + 24))(v26);
                    }

                    else
                    {
                      APEndpointManagerCarPlayCreate_cold_7();
                    }
                  }

                  else
                  {
                    APEndpointManagerCarPlayCreate_cold_8();
                  }
                }

                CFRelease(v16);
              }

              else
              {
                APEndpointManagerCarPlayCreate_cold_10();
                v21 = v16;
              }

              CFRelease(v21);
              CFRelease(v18);
            }

            else
            {
              APEndpointManagerCarPlayCreate_cold_11(v16);
            }
          }

          else
          {
            APEndpointManagerCarPlayCreate_cold_12();
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v33 = v41;
          *(DerivedStorage + 336) = v41;
          if (v33)
          {
            if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
            {
              APEndpointManagerCarPlayCreate_cold_13(&cfa, v31, v32);
            }

            carManager_asyncRegisterCarPlayHALDriver(cfa, 0);
            goto LABEL_34;
          }

          APEndpointManagerCarPlayCreate_cold_14();
        }

        else
        {
          APEndpointManagerCarPlayCreate_cold_15();
        }
      }

      else
      {
        APEndpointManagerCarPlayCreate_cold_17();
      }
    }

    else
    {
      APEndpointManagerCarPlayCreate_cold_18();
    }

    v37 = 4294950585;
  }

LABEL_54:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v37;
}

void carManager_asyncRegisterCarPlayHALDriver(const void *a1, uint64_t a2)
{
  if (a1)
  {
    CFRetain(a1);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_asyncRegisterCarPlayHALDriver(FigEndpointManagerRef, uint32_t)", 33554482, "[%{ptr}] Scheduling remote registration of %@ in %u seconds\n", a1, @"CarPlayHalogen.driver", a2);
    }

    v5 = dispatch_time(0, 1000000000 * a2);
    v6 = *(DerivedStorage + 328);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __carManager_asyncRegisterCarPlayHALDriver_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a1;
    dispatch_after(v5, v6, block);
  }

  else
  {
    carManager_asyncRegisterCarPlayHALDriver_cold_1();
  }
}

void __APEndpointManagerCarPlayCreate_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  *(*(a1 + 32) + 48) = APSPowerAssertionCreate();
  if (*(*(a1 + 32) + 48))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v47[0] = xmmword_222298490;
    v47[1] = unk_2222984A0;
    v48[0] = xmmword_2222984B0;
    *(v48 + 12) = *(&xmmword_2222984B0 + 12);
    v3 = *(DerivedStorage + 352);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 352) = 0;
    }

    v4 = APSEventRecorderCreate();
    if (v4)
    {
      __APEndpointManagerCarPlayCreate_block_invoke_cold_1(v4, v47, &v46);
    }

    else
    {
      v46 = 0;
      v5 = MGCopyAnswer();
      if (v5)
      {
        v6 = v5;
        v7 = *MEMORY[0x277CBECE8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v9 = Mutable;
          CFDictionarySetValue(Mutable, *MEMORY[0x277CE4D30], *(*(a1 + 32) + 352));
          v10 = *(a1 + 40);
          ShortVersionLength = APSVersionUtilsGetShortVersionLength();
          v12 = CFStringCreateWithBytesNoCopy(v10, "920.10.1", ShortVersionLength, 0x600u, 0, *MEMORY[0x277CBED00]);
          if (v12)
          {
            v13 = v12;
            v14 = APCarPlayControlServerCreate();
            v46 = v14;
            if (v14)
            {
              __APEndpointManagerCarPlayCreate_block_invoke_cold_2(v14);
              v15 = 0;
              goto LABEL_33;
            }

            v15 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            CFDictionarySetValue(v15, *MEMORY[0x277CE4CD0], *(*(a1 + 32) + 48));
            CFDictionarySetValue(v15, *MEMORY[0x277CE4CB0], *(*(a1 + 32) + 352));
            if (!*(*(a1 + 32) + 360) && (!CFPrefs_GetInt64() ? (v16 = v46 == -6727) : (v16 = 1), v16))
            {
              v17 = MEMORY[0x277CBED28];
            }

            else
            {
              v17 = MEMORY[0x277CBED10];
            }

            CFDictionarySetValue(v15, @"enableNewDiscoveryMode", *v17);
            *(*(a1 + 32) + 256) = *(a1 + 48);
            v18 = *(a1 + 32);
            *(v18 + 224) = 2;
            *(v18 + 232) = "USB";
            v19 = APBrowserCarBonjourCreate();
            v46 = v19;
            if (v19)
            {
              __APEndpointManagerCarPlayCreate_block_invoke_cold_3(v19);
              goto LABEL_33;
            }

            v20 = *(a1 + 32);
            v21 = *(v20 + 240);
            v22 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v22)
            {
              v23 = v22(v21, carManager_browserEventHandler, v20 + 224);
              v46 = v23;
              if (!v23)
              {
                v24 = APSIsVirtualMachine();
                if (v24)
                {
                  if (gLogCategory_APEndpointManagerCarPlay <= 50)
                  {
                    if (gLogCategory_APEndpointManagerCarPlay != -1 || (v24 = _LogCategory_Initialize(), v24))
                    {
                      __APEndpointManagerCarPlayCreate_block_invoke_cold_4(v24, v25, v26);
                    }
                  }
                }

                else
                {
                  *(*(a1 + 32) + 184) = *(a1 + 48);
                  v27 = *(a1 + 32);
                  *(v27 + 152) = 1;
                  *(v27 + 160) = "WiFi";
                  v28 = APBrowserCarBonjourCreate();
                  v46 = v28;
                  if (v28)
                  {
                    __APEndpointManagerCarPlayCreate_block_invoke_cold_5(v28);
                    goto LABEL_33;
                  }

                  v29 = APBrowserSetEventHandler(*(*(a1 + 32) + 168), *(a1 + 32) + 152);
                  v46 = v29;
                  if (v29)
                  {
                    __APEndpointManagerCarPlayCreate_block_invoke_cold_6(v29);
                    goto LABEL_33;
                  }
                }

                *(*(a1 + 32) + 112) = *(a1 + 48);
                v30 = *(a1 + 32);
                *(v30 + 80) = 0;
                *(v30 + 88) = "Session";
                v31 = APBrowserCarSessionCreate();
                v46 = v31;
                if (v31)
                {
                  __APEndpointManagerCarPlayCreate_block_invoke_cold_7(v31);
                  goto LABEL_33;
                }

                v32 = *(a1 + 32);
                v33 = *(v32 + 96);
                v34 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                if (v34)
                {
                  v35 = v34(v33, carManager_browserEventHandler, v32 + 80);
                  v46 = v35;
                  if (!v35)
                  {
                    FigCFWeakReferenceInit();
                    v36 = AirPlayDebugIPCEnableForEndpointManager(*(a1 + 48), *MEMORY[0x277CC0C78]);
                    v46 = v36;
                    if (v36)
                    {
                      __APEndpointManagerCarPlayCreate_block_invoke_cold_8(v36);
                    }

                    else
                    {
                      v37 = *(a1 + 48);
                      if (v37)
                      {
                        CFRetain(v37);
                        v38 = *(a1 + 48);
                      }

                      else
                      {
                        v38 = 0;
                      }

                      v39 = *(a1 + 32);
                      v40 = *(v39 + 24);
                      block[0] = MEMORY[0x277D85DD0];
                      block[1] = 3221225472;
                      block[2] = __APEndpointManagerCarPlayCreate_block_invoke_2;
                      block[3] = &__block_descriptor_48_e5_v8__0l;
                      block[4] = v39;
                      block[5] = v38;
                      dispatch_async(v40, block);
                    }

LABEL_33:
                    CFRelease(v13);
                    CFRelease(v9);
                    if (v15)
                    {
                      CFRelease(v15);
                    }

                    goto LABEL_35;
                  }
                }

                else
                {
                  v35 = 4294954514;
                  v46 = -12782;
                }

                __APEndpointManagerCarPlayCreate_block_invoke_cold_9(v35);
                goto LABEL_33;
              }
            }

            else
            {
              v23 = 4294954514;
              v46 = -12782;
            }

            __APEndpointManagerCarPlayCreate_block_invoke_cold_10(v23);
            goto LABEL_33;
          }

          __APEndpointManagerCarPlayCreate_block_invoke_cold_11(&v46, v9);
        }

        else
        {
          __APEndpointManagerCarPlayCreate_block_invoke_cold_12(&v46);
        }

LABEL_35:
        CFRelease(v6);
        goto LABEL_36;
      }

      __APEndpointManagerCarPlayCreate_block_invoke_cold_13(&v46);
    }
  }

  else
  {
    __APEndpointManagerCarPlayCreate_block_invoke_cold_14(&v46);
  }

LABEL_36:
  CFRelease(*(a1 + 48));
  v44 = v46;
  if (v46)
  {
    if (gLogCategory_APEndpointManagerCarPlay <= 50)
    {
      if (gLogCategory_APEndpointManagerCarPlay != -1)
      {
LABEL_39:
        LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "OSStatus APEndpointManagerCarPlayCreate(CFAllocatorRef, CFDictionaryRef, FigEndpointManagerRef *)_block_invoke", 33554482, "Initialization of APEndpointManagerCarPlay failed, error=%d.\n", v44);
        return;
      }

      if (_LogCategory_Initialize())
      {
        v44 = v46;
        goto LABEL_39;
      }
    }
  }

  else if (gLogCategory_APEndpointManagerCarPlay <= 50)
  {
    if (gLogCategory_APEndpointManagerCarPlay != -1 || (v41 = _LogCategory_Initialize(), v41))
    {
      __APEndpointManagerCarPlayCreate_block_invoke_cold_15(v41, v42, v43);
    }
  }
}

uint64_t carManager_handleControlServerEvent(uint64_t a1, uint64_t a2, const char *a3, size_t a4, const void *a5)
{
  v17 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "OSStatus carManager_handleControlServerEvent(APCarPlayControlServerRef, uint64_t, const char *, size_t, void *)", 33554482, "HandleControlServerEvent command '%.*s' received for deviceID: %#.6a", a4, a3, COERCE_DOUBLE(&v17));
  }

  if (!strncmp(a3, "connect", a4))
  {
    if (*(DerivedStorage + 352))
    {
      APSEventRecorderRecordEvent();
    }

    v9 = LogCategoryCopyOSLogHandle();
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = MEMORY[0x277D86220];
    }

    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_221FFA000, v11, OS_SIGNPOST_EVENT, 0x2B8D07E0uLL, "AP_SIGNPOST_CAR_CONTROLCOMMAND_CONNECT", &unk_2222A918B, buf, 2u);
    }

    if (v10)
    {
    }

    APSPowerAssertionRaiseTemporary();
    if (a5)
    {
      CFRetain(a5);
    }

    v12 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __carManager_handleControlServerEvent_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a5;
    block[6] = v17;
    dispatch_async(v12, block);
    return 0;
  }

  else
  {
    if (gLogCategory_APEndpointManagerCarPlay <= 90 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "OSStatus carManager_handleControlServerEvent(APCarPlayControlServerRef, uint64_t, const char *, size_t, void *)", 33554522, "HandleControlServerEvent unrecognized command '%.*s' received for deviceID: %#.6a", a4, a3, COERCE_DOUBLE(&v17));
    }

    v13 = 4294960582;
    APSLogErrorAt();
  }

  return v13;
}

uint64_t APBrowserSetEventHandler(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, carManager_browserEventHandler, a2);
}

void carManager_browserEventHandler(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __carManager_browserEventHandler_block_invoke;
  v8[3] = &unk_27849C5A0;
  v9 = a2;
  v8[5] = a4;
  v8[6] = a3;
  v8[4] = v10;
  dispatch_sync(v7, v8);
  _Block_object_dispose(v10, 8);
}

void sub_2220DE0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APEndpointManagerCarPlayCreate_block_invoke_2(uint64_t a1)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "OSStatus APEndpointManagerCarPlayCreate(CFAllocatorRef, CFDictionaryRef, FigEndpointManagerRef *)_block_invoke_2", 33554482, "Start of APCarPlayPreferences async.\n");
  }

  v2 = [[APEndpointManagerCarPlayDelegate alloc] initWithEndpointManager:*(a1 + 40)];
  *(*(a1 + 32) + 40) = v2;
  if (v2 && (v3 = objc_alloc_init(APCarPlayPreferences), v4 = *(a1 + 32), (*(v4 + 32) = v3) != 0))
  {
    [(APCarPlayPreferences *)v3 setDelegate:*(v4 + 40)];
    v5 = [*(*(a1 + 32) + 32) isCarPlayEnabled];
    if (v5)
    {
      block[0] = MEMORY[0x277D85DD0];
      v18 = *(a1 + 32);
      v6 = *(v18 + 8);
      block[1] = 3221225472;
      block[2] = __APEndpointManagerCarPlayCreate_block_invoke_3;
      block[3] = &unk_27849BEC0;
      block[4] = &v19;
      dispatch_sync(v6, block);
    }

    v7 = *(a1 + 40);
    CMBaseObjectGetDerivedStorage();
    v8 = APSGetAirPlayNonSystemPeersCount();
    Int64 = APSSettingsGetInt64();
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      v10 = "enabled";
      if (Int64)
      {
        v10 = "disabled";
      }

      LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_cleanupCarPlayPeersInKeychainIfNeeded(FigEndpointManagerRef)", 33554482, "[%{ptr}] Number of %s in the Keychain: %llu (excessive peers cleanup is %s, threshold for cleanup: %d).", v7, "Non-System (mostly CarPlay) peers", v8, v10, 500);
    }

    if (v8 >= 0x1F5 && !Int64)
    {
      mach_absolute_time();
      v11 = APSRemoveAirPlayNonSystemPeers();
      mach_absolute_time();
      if (v11)
      {
        v12 = 90;
      }

      else
      {
        v12 = 50;
      }

      if (v12 >= gLogCategory_APEndpointManagerCarPlay && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
      {
        v13 = UpTicksToMilliseconds();
        v14 = "Failed to remove";
        if (!v11)
        {
          v14 = "Successfully removed";
        }

        LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_cleanupCarPlayPeersInKeychainIfNeeded(FigEndpointManagerRef)", v12 | 0x2000000u, "[%{ptr}] %s %s from the Keychain (took %llu ms)%?{end}, error: %#m\n", v7, v14, "Non-System (mostly CarPlay) peers", v13, v11 == 0, v11);
      }

      if (!v11)
      {
        CFPrefs_SetValue();
      }
    }
  }

  else
  {
    APSLogErrorAt();
    v5 = 0;
    *(v20 + 6) = -16711;
  }

  v15 = *(v20 + 6);
  if (v15)
  {
    if (gLogCategory_APEndpointManagerCarPlay > 50)
    {
      goto LABEL_38;
    }

    if (gLogCategory_APEndpointManagerCarPlay != -1)
    {
      goto LABEL_31;
    }

    if (_LogCategory_Initialize())
    {
      v15 = *(v20 + 6);
LABEL_31:
      LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "OSStatus APEndpointManagerCarPlayCreate(CFAllocatorRef, CFDictionaryRef, FigEndpointManagerRef *)_block_invoke_2", 33554482, "Initialization of APCarPlayPreferences failed, error=%d (isCarPlayEnabled = %d).\n", v15, v5);
    }
  }

  else if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "OSStatus APEndpointManagerCarPlayCreate(CFAllocatorRef, CFDictionaryRef, FigEndpointManagerRef *)_block_invoke_2", 33554482, "Successful initialization of APCarPlayPreferences async (isCarPlayEnabled = %d).\n", v5);
  }

LABEL_38:
  v16 = *(a1 + 40);
  if (v16)
  {
    CFRelease(v16);
  }

  _Block_object_dispose(&v19, 8);
}

uint64_t __APEndpointManagerCarPlayCreate_block_invoke_3(void *a1)
{
  APSPowerAssertionRaise();
  *(*(a1[4] + 8) + 24) = carManager_startDiscovery(a1[6]);

  return APSPowerAssertionRelease();
}

uint64_t carManager_startDiscovery(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (gLogCategory_APEndpointManagerCarPlay <= 50)
  {
    if (gLogCategory_APEndpointManagerCarPlay != -1 || (DerivedStorage = _LogCategory_Initialize(), DerivedStorage))
    {
      carManager_startDiscovery_cold_1(DerivedStorage, v3, v4);
    }
  }

  v6 = (v5 + 104);
  v7 = 3;
  while (1)
  {
    v8 = *(v6 - 1);
    if (v8)
    {
      break;
    }

LABEL_9:
    v6 += 72;
    if (!--v7)
    {
      return 0;
    }
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v9)
  {
    v11 = 4294954514;
    goto LABEL_12;
  }

  v10 = v9(v8, 3);
  if (!v10)
  {
    *v6 = 1;
    goto LABEL_9;
  }

  v11 = v10;
LABEL_12:
  APSLogErrorAt();
  carManager_stopDiscovery(a1);
  return v11;
}

uint64_t carManager_getBrowserContextForEndpoint(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  for (i = DerivedStorage + 80; !*(i + 16); i += 72)
  {
    result = 0;
LABEL_9:
    if (v4++ >= 2)
    {
      return result;
    }
  }

  if (*(i + 40) == a2)
  {
    result = i;
  }

  else
  {
    result = 0;
  }

  if (!result)
  {
    goto LABEL_9;
  }

  return result;
}

void carManager_updateBrowserContext(const void *a1, uint64_t a2, const void *a3, int a4, int a5, int a6, int a7, int a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = (a2 + 40);
  v17 = *(a2 + 40);
  if (gLogCategory_APEndpointManagerCarPlay > 30)
  {
    goto LABEL_28;
  }

  if (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize())
  {
    v18 = "y";
    v19 = "n";
    if (a4)
    {
      v20 = "y";
    }

    else
    {
      v20 = "n";
    }

    if (a5)
    {
      v21 = "y";
    }

    else
    {
      v21 = "n";
    }

    if (a6)
    {
      v22 = "-";
    }

    else
    {
      v22 = "n";
    }

    if (a6 == 1)
    {
      v22 = "y";
    }

    if (a7)
    {
      v23 = "-";
    }

    else
    {
      v23 = "n";
    }

    if (a7 == 1)
    {
      v23 = "y";
    }

    if (a8)
    {
      v19 = "-";
    }

    if (a8 != 1)
    {
      v18 = v19;
    }

    LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_updateBrowserContext(FigEndpointManagerRef, CarManagerBrowserContext *, FigEndpointRef, Boolean, Boolean, CarManagerTriState, CarManagerTriState, CarManagerTriState)", 33554462, "UpdateBrowserContext called: type = %s, new endpoint = %{ptr}, old is terminal = %s, reset pending removal = %s new is activated = %s, new is autoconnect = %s, new is disallowed = %s\n", *(a2 + 8), a3, v20, v21, v22, v23, v18);
  }

  if (gLogCategory_APEndpointManagerCarPlay <= 30 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    carManager_updateBrowserContext_cold_1(a2 + 40, a2, v15);
    if (!a5)
    {
      goto LABEL_44;
    }
  }

  else
  {
LABEL_28:
    if (!a5)
    {
      goto LABEL_44;
    }
  }

  if (v17 == a3)
  {
    *(a2 + 50) = 0;
    goto LABEL_31;
  }

LABEL_44:
  if (!a6 && *(a2 + 50))
  {
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      carManager_updateBrowserContext_cold_2(a2, a2 + 40, v15);
    }

    *(a2 + 50) = 0;
    if (!v17)
    {
      v24 = 0;
      a3 = 0;
      goto LABEL_58;
    }

    goto LABEL_50;
  }

LABEL_31:
  v24 = v17 != 0;
  if (a3 || !v17)
  {
    goto LABEL_58;
  }

  if (!a4)
  {
    if (*(a2 + 48))
    {
      if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_updateBrowserContext(FigEndpointManagerRef, CarManagerBrowserContext *, FigEndpointRef, Boolean, Boolean, CarManagerTriState, CarManagerTriState, CarManagerTriState)", 33554482, "UpdateBrowseContext [%s] Persisting activated endpoint %{ptr}\n", *(a2 + 8), v17);
      }

      *(a2 + 50) = 1;
      goto LABEL_77;
    }

    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_updateBrowserContext(FigEndpointManagerRef, CarManagerBrowserContext *, FigEndpointRef, Boolean, Boolean, CarManagerTriState, CarManagerTriState, CarManagerTriState)", 33554482, "UpdateBrowseContext [%s] Removing endpoint %{ptr}\n", *(a2 + 8), v17);
    }

    goto LABEL_55;
  }

LABEL_50:
  if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_updateBrowserContext(FigEndpointManagerRef, CarManagerBrowserContext *, FigEndpointRef, Boolean, Boolean, CarManagerTriState, CarManagerTriState, CarManagerTriState)", 33554482, "UpdateBrowseContext [%s] Terminating endpoint %{ptr}\n", *(a2 + 8), v17);
  }

LABEL_55:
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v25)
  {
    v25(v17);
  }

  a3 = 0;
  v24 = 1;
LABEL_58:
  if (a3 != v17)
  {
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_updateBrowserContext(FigEndpointManagerRef, CarManagerBrowserContext *, FigEndpointRef, Boolean, Boolean, CarManagerTriState, CarManagerTriState, CarManagerTriState)", 33554482, "UpdateBrowseContext [%s] Updating endpoint from %{ptr} to %{ptr}\n", *(a2 + 8), v17, a3);
    }

    if (v24)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      if (*(a2 + 48))
      {
        *(a2 + 48) = 0;
        carManager_handleEndpointActivationChanged(a1, a2);
      }

      [*(a2 + 56) setDelegate:0];

      *(a2 + 56) = 0;
    }

    v26 = *v16;
    *v16 = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    if (a3)
    {
      if (carManager_isEndpointWireless(a3))
      {
        v27 = [[APCarPlayPolicyMonitor alloc] initWithEndpoint:a3];
        *(a2 + 56) = v27;
        [(APCarPlayPolicyMonitor *)v27 setDelegate:*(DerivedStorage + 40)];
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
    }

    *(a2 + 50) = 0;
  }

  v17 = a3;
  if (a3)
  {
LABEL_77:
    if (a6 != -1)
    {
      *(a2 + 48) = a6 == 1;
    }

    if (APSGetFBOPropertyInt64())
    {
      v28 = a1;
      if (a7 == -1)
      {
LABEL_85:
        if (a8 != -1)
        {
          *(a2 + 64) = a8 == 1;
        }

        if (*(a2 + 49))
        {
          v31 = *(a2 + 64) == 0;
        }

        else
        {
          v31 = 0;
        }

        if (*(a2 + 48))
        {
          v30 = 0;
        }

        else
        {
          v42 = *MEMORY[0x277CC1278];
          v30 = APSGetFBOPropertyInt64() == 0 && v31;
          if (v31)
          {
            v43 = MEMORY[0x277CBED28];
          }

          else
          {
            v43 = MEMORY[0x277CBED10];
          }

          v44 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v44)
          {
            v44(v17, v42, *v43);
          }
        }

        goto LABEL_92;
      }

      v29 = a7 == 1;
    }

    else
    {
      v29 = 1;
      v28 = a1;
    }

    *(a2 + 49) = v29;
    goto LABEL_85;
  }

  v30 = 0;
  *(a2 + 48) = 0;
  *(a2 + 64) = 0;
  v28 = a1;
LABEL_92:
  if (gLogCategory_APEndpointManagerCarPlay <= 30 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    carManager_updateBrowserContext_cold_3(a2 + 40, a2, a2 + 50);
  }

  v32 = CMBaseObjectGetDerivedStorage();
  v33 = 0;
  while (1)
  {
    v34 = v32 + v33;
    if (!*(v32 + v33 + 96))
    {
      goto LABEL_105;
    }

    v35 = *(v34 + 120);
    if (!v35)
    {
      goto LABEL_105;
    }

    v36 = v32 + v33;
    if (!*(v32 + v33 + 144))
    {
      if (*(v36 + 129))
      {
        break;
      }
    }

    v37 = *(v36 + 128);
    v38 = gLogCategory_APEndpointManagerCarPlay;
    if (v37)
    {
      v39 = v32 + v33 + 80;
      if (gLogCategory_APEndpointManagerCarPlay <= 30)
      {
        if (gLogCategory_APEndpointManagerCarPlay == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_108;
          }

          v35 = *(v32 + v33 + 120);
        }

        LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_updateCurrentEndpoint(FigEndpointManagerRef, Boolean)", 33554462, "UpdateCurrentEndpoint selecting %s endpoint %{ptr} because it is activated\n", *(v32 + v33 + 88), v35);
LABEL_108:
        v38 = gLogCategory_APEndpointManagerCarPlay;
        goto LABEL_109;
      }

      goto LABEL_109;
    }

    if (gLogCategory_APEndpointManagerCarPlay <= 30)
    {
      if (gLogCategory_APEndpointManagerCarPlay == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_105;
        }

        v35 = *(v34 + 120);
      }

      LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_updateCurrentEndpoint(FigEndpointManagerRef, Boolean)", 33554462, "UpdateCurrentEndpoint skipping %s endpoint %{ptr}\n", *(v32 + v33 + 88), v35);
    }

LABEL_105:
    v33 += 72;
    if (v33 == 216)
    {
      v39 = 0;
      goto LABEL_108;
    }
  }

  v38 = gLogCategory_APEndpointManagerCarPlay;
  v39 = v32 + v33 + 80;
  if (gLogCategory_APEndpointManagerCarPlay <= 30)
  {
    if (gLogCategory_APEndpointManagerCarPlay != -1)
    {
      goto LABEL_130;
    }

    if (_LogCategory_Initialize())
    {
      v35 = *(v32 + v33 + 120);
LABEL_130:
      LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_updateCurrentEndpoint(FigEndpointManagerRef, Boolean)", 33554462, "UpdateCurrentEndpoint selecting %s endpoint %{ptr} because it is autoconnect and prioritized\n", *(v32 + v33 + 88), v35);
    }

    goto LABEL_108;
  }

LABEL_109:
  v40 = *(v32 + 296);
  if (((v39 == v40) & ~v30) != 0)
  {
    if (v38 <= 30 && (v38 != -1 || _LogCategory_Initialize()))
    {
      carManager_updateBrowserContext_cold_4();
    }
  }

  else
  {
    if (v38 <= 50)
    {
      if (v38 != -1)
      {
        goto LABEL_112;
      }

      if (_LogCategory_Initialize())
      {
        v40 = *(v32 + 296);
LABEL_112:
        if (v39 == v40)
        {
          v41 = "of an explicit request";
        }

        else
        {
          v41 = "the browser context changed";
        }

        LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_updateCurrentEndpoint(FigEndpointManagerRef, Boolean)", 33554482, "UpdateCurrentEndpoint posting 'AvailableEndpointsChanged' because %s\n", v41);
      }
    }

    CFRetain(v28);
    v45 = *(v32 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __carManager_updateCurrentEndpoint_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = v32;
    block[5] = v28;
    dispatch_async(v45, block);
    if (!v39 || !*(v32 + 296))
    {
      if (gLogCategory_APEndpointManagerCarPlay <= 50)
      {
        if (gLogCategory_APEndpointManagerCarPlay != -1 || (v46 = _LogCategory_Initialize(), v46))
        {
          carManager_updateBrowserContext_cold_5(v46, v47, v48);
        }
      }

      CFRetain(v28);
      v49 = *(v32 + 16);
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __carManager_updateCurrentEndpoint_block_invoke_256;
      v52[3] = &__block_descriptor_40_e5_v8__0l;
      v52[4] = v28;
      dispatch_async(v49, v52);
    }

    if (gLogCategory_APEndpointManagerCarPlay <= 30 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      carManager_updateBrowserContext_cold_6(v32 + 296, v39 == 0, v39);
    }

    *(v32 + 296) = v39;
  }
}

void sub_2220DF464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t carManager_stopDiscovery(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (gLogCategory_APEndpointManagerCarPlay <= 50)
  {
    if (gLogCategory_APEndpointManagerCarPlay != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = carManager_stopDiscovery_cold_1(result, v2, v3);
    }
  }

  v5 = (v4 + 104);
  v6 = 3;
  do
  {
    v7 = *(v5 - 1);
    if (v7)
    {
      VTable = CMBaseObjectGetVTable();
      v9 = *(VTable + 16);
      result = VTable + 16;
      v10 = *(v9 + 16);
      if (v10)
      {
        result = v10(v7, 0);
      }

      *v5 = 0;
    }

    v5 += 72;
    --v6;
  }

  while (v6);
  return result;
}

uint64_t carManager_invalidate(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __carManager_invalidate_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v2, block);
  return 0;
}

void carManager_finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (gLogCategory_APEndpointManagerCarPlay <= 50)
  {
    if (gLogCategory_APEndpointManagerCarPlay != -1 || (DerivedStorage = _LogCategory_Initialize(), DerivedStorage))
    {
      carManager_finalize_cold_1(DerivedStorage, v3, v4);
    }
  }

  carManager_invalidateInternal(a1);
  MEMORY[0x223DB15B0](v5 + 304);
  v6 = *(v5 + 320);
  if (v6)
  {
    [v6 invalidate];

    *(v5 + 320) = 0;
  }

  v7 = *(v5 + 328);
  if (v7)
  {
    dispatch_release(v7);
    *(v5 + 328) = 0;
  }

  if (*(v5 + 344))
  {
    if (carManager_getWeakRefTable_once != -1)
    {
      carManager_finalize_cold_2();
    }

    FigCFWeakReferenceTableRemoveValue();
    *(v5 + 344) = 0;
  }

  v8 = *(v5 + 336);
  if (v8)
  {
    (*(*v8 + 24))(v8);
    *(v5 + 336) = 0;
  }

  v9 = *(v5 + 352);
  if (v9)
  {
    CFRelease(v9);
    *(v5 + 352) = 0;
  }

  v10 = *(v5 + 48);
  if (v10)
  {
    CFRelease(v10);
    *(v5 + 48) = 0;
  }

  v11 = *(v5 + 56);
  if (v11)
  {
    CFRelease(v11);
    *(v5 + 56) = 0;
  }

  v12 = *(v5 + 64);
  if (v12)
  {
    CFRelease(v12);
    *(v5 + 64) = 0;
  }

  v13 = (v5 + 136);
  v14 = 3;
  do
  {
    v15 = *(v13 - 5);
    if (v15)
    {
      CFRelease(v15);
      *(v13 - 5) = 0;
      v16 = *(v13 - 2);
      if (v16)
      {
        CFRelease(v16);
        *(v13 - 2) = 0;
      }

      [*v13 setDelegate:0];

      *v13 = 0;
    }

    v13 += 9;
    --v14;
  }

  while (v14);
  v17 = *(v5 + 8);
  if (v17)
  {
    dispatch_release(v17);
    *(v5 + 8) = 0;
  }

  v18 = *(v5 + 16);
  if (v18)
  {
    dispatch_release(v18);
    *(v5 + 16) = 0;
  }

  v19 = *(v5 + 24);
  if (v19)
  {
    dispatch_release(v19);
    *(v5 + 24) = 0;
  }

  [*(v5 + 32) setDelegate:0];

  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  if (gLogCategory_APEndpointManagerCarPlay <= 50)
  {
    if (gLogCategory_APEndpointManagerCarPlay != -1 || (v20 = _LogCategory_Initialize(), v20))
    {
      carManager_finalize_cold_3(v20, v21, v22);
    }
  }
}

__CFString *carManager_copyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v11 = 0;
  cf = 0;
  CFStringAppendFormat(Mutable, 0, @"<APEndpointManagerCarPlay %p>", a1);
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v6 = 4294954514;
    goto LABEL_13;
  }

  v6 = v5(CMBaseObject, @"ShowInfo", v2, &cf);
  if (v6)
  {
LABEL_13:
    carManager_copyDebugDescription_cold_1(v6);
    goto LABEL_7;
  }

  v7 = ASPrintF(&v11, "%@", cf);
  v8 = v11;
  if (v7)
  {
    v9 = v11 + v7;
    if (*(v9 - 1) == 10)
    {
      *(v9 - 1) = 0;
      v8 = v11;
    }
  }

  CFStringAppendFormat(Mutable, 0, @"%s", v8);
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  free(v11);
  if (!Mutable)
  {
    return CFRetain(@"<APEndpointManagerCarPlay>");
  }

  return Mutable;
}

uint64_t carManager_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManagerCarPlay <= 10 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "OSStatus carManager_copyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554442, "CopyProperty for key: '%@'\n", a2);
  }

  v9 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __carManager_copyProperty_block_invoke;
  block[3] = &unk_27849C550;
  block[4] = &v13;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[7] = a1;
  block[8] = a3;
  block[9] = a4;
  dispatch_sync(v9, block);
  v10 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v10;
}

uint64_t carManager_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManagerCarPlay <= 10 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "OSStatus carManager_setProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554442, "SetProperty for key: '%@'\n", a2);
  }

  v7 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __carManager_setProperty_block_invoke;
  block[3] = &unk_27849C578;
  block[4] = &v11;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[7] = a3;
  block[8] = a1;
  dispatch_sync(v7, block);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __carManager_getWeakRefTable_block_invoke()
{
  result = FigCFWeakReferenceTableCreate();
  if (result)
  {
    v3 = result;
    if (gLogCategory_APEndpointManagerCarPlay <= 50)
    {
      if (gLogCategory_APEndpointManagerCarPlay != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __carManager_getWeakRefTable_block_invoke_cold_1(v3, v1, v2);
      }
    }

    __break(1u);
  }

  return result;
}

void __carManager_copyProperty_block_invoke(uint64_t a1)
{
  if (**(a1 + 40))
  {
    __carManager_copyProperty_block_invoke_cold_1();
    return;
  }

  v2 = (a1 + 48);
  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC0C30]))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(CMBaseObjectGetDerivedStorage() + 296);
    if (v5)
    {
      v6 = (v5 + 40);
      v7 = v3;
      v8 = 1;
    }

    else
    {
      v7 = v3;
      v6 = 0;
      v8 = 0;
    }

    v13 = CFArrayCreate(v7, v6, v8, MEMORY[0x277CBF128]);
    if (v13)
    {
      v14 = 0;
      *v4 = v13;
    }

    else
    {
      __carManager_copyProperty_block_invoke_cold_2();
      v14 = -16711;
    }

    *(*(*(a1 + 32) + 8) + 24) = v14;
    v15 = *(*(*(a1 + 32) + 8) + 24);
    if (v15)
    {
      __carManager_copyProperty_block_invoke_cold_3(v15);
    }

    return;
  }

  if (CFEqual(*v2, *MEMORY[0x277CC0C40]))
  {
    v9 = *(a1 + 72);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v11 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 296))
    {
      v11 = MEMORY[0x277CBED10];
    }

    *v9 = CFRetain(*v11);
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v12 = *(*(*(a1 + 32) + 8) + 24);
    if (v12)
    {
      __carManager_copyProperty_block_invoke_cold_4(v12);
    }

    return;
  }

  if (CFEqual(*v2, *MEMORY[0x277CC0C50]))
  {
    **(a1 + 72) = CFRetain(*MEMORY[0x277CC0C78]);
    return;
  }

  if (CFEqual(*v2, @"ShowInfo"))
  {
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    v53 = *(a1 + 56);
    v18 = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(v16, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      theDict = Mutable;
      v52 = v16;
      v20 = CFStringCreateMutable(v16, 0);
      if (v20)
      {
        v21 = v20;
        v51 = *MEMORY[0x277CE4D20];
        key = *MEMORY[0x277CE4D28];
        v22 = (v18 + 120);
        v23 = 3;
        v48 = *MEMORY[0x277CE4FB8];
        do
        {
          v55[0] = 0;
          if (*(v22 - 3))
          {
            CMBaseObject = APBrowserGetCMBaseObject();
            v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v25)
            {
              if (!v25(CMBaseObject, v51, v52, v55))
              {
                Value = CFDictionaryGetValue(v55[0], key);
                CFStringAppendFormat(v21, 0, @"\n%@", Value);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }
              }
            }

            CFStringAppend(v21, @"\n");
            CFStringAppendFormat(v21, 0, @"+-+ Car browser %s state +-+\n", *(v22 - 4));
            CFStringAppend(v21, @"\n");
            if (*(v22 - 16))
            {
              v27 = 89;
            }

            else
            {
              v27 = 78;
            }

            CFStringAppendFormat(v21, 0, @"browsing %c", v27);
            CFStringAppend(v21, @"\n");
            if (*v22)
            {
              v54 = 0;
              CFStringAppend(v21, @"\n");
              CFStringAppend(v21, @"+-+ Endpoint state +-+\n");
              CFStringAppend(v21, @"\n");
              v28 = APSGetFBOPropertyInt64() ? 89 : 78;
              CFStringAppendFormat(v21, 0, @"Connected: %c\n", v28);
              v29 = CFGetAllocator(v53);
              v30 = FigEndpointGetCMBaseObject();
              v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v31)
              {
                if (!v31(v30, @"EndpointShowInfo", v29, &v54))
                {
                  v32 = v54;
                  if (v54)
                  {
                    v33 = CFDictionaryGetValue(v54, @"Name");
                    CFStringAppendF(v21, "%''@", v33);
                    v34 = CFDictionaryGetValue(v32, @"DeviceID");
                    CFStringAppendF(v21, " id=%@", v34);
                    v35 = CFDictionaryGetValue(v32, @"Model");
                    CFStringAppendF(v21, " model=%@", v35);
                    v36 = CFDictionaryGetValue(v32, @"SourceVersion");
                    CFStringAppendF(v21, " version=%@", v36);
                    v37 = CFDictionaryGetValue(v32, @"AirPlayFeatures");
                    CFStringAppendF(v21, " features=%@", v37);
                    Int64 = CFDictionaryGetInt64();
                    CFStringAppendF(v21, " flags=0x%04llX", Int64);
                    CFDictionaryGetTypeID();
                    if (CFDictionaryGetTypedValue())
                    {
                      CFDictionaryGetTypeID();
                      TypedValue = CFDictionaryGetTypedValue();
                      if (TypedValue)
                      {
                        v40 = CFDictionaryGetValue(TypedValue, v48);
                        if (v40)
                        {
                          CFStringAppendF(v21, " port=%@", v40);
                        }
                      }
                    }

                    v41 = CFDictionaryGetInt64();
                    CFStringAppendF(v21, " error=%#m", v41);
                    CFStringAppendF(v21, "\n");
                    v42 = CFDictionaryGetValue(v32, @"StreamInfo_MainAudio");
                    carManager_appendEndpointStreamShowInfo(v42, v21);
                    v43 = CFDictionaryGetValue(v32, @"StreamInfo_AltAudio");
                    carManager_appendEndpointStreamShowInfo(v43, v21);
                    v44 = CFDictionaryGetValue(v32, @"StreamInfo_Screen");
                    carManager_appendEndpointStreamShowInfo(v44, v21);
                    v45 = v54;
                  }

                  else
                  {
                    v45 = 0;
                  }

                  CFRelease(v45);
                }
              }
            }
          }

          v22 += 9;
          --v23;
        }

        while (v23);
        CFDictionarySetValue(theDict, @"DetailedDescription", v21);
        *v17 = theDict;
        CFRelease(v21);
        v46 = 0;
        goto LABEL_46;
      }

      __carManager_copyProperty_block_invoke_cold_5(theDict);
    }

    else
    {
      __carManager_copyProperty_block_invoke_cold_6();
    }

    v46 = -6728;
LABEL_46:
    *(*(*(a1 + 32) + 8) + 24) = v46;
    v47 = *(*(*(a1 + 32) + 8) + 24);
    if (v47)
    {
      __carManager_copyProperty_block_invoke_cold_7(v47);
    }

    return;
  }

  if (gLogCategory_APEndpointManagerCarPlay <= 60 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carManager_copyProperty_block_invoke_cold_8((a1 + 48));
  }

  *(*(*(a1 + 32) + 8) + 24) = -12784;

  APSLogErrorAt();
}

void __carManager_setProperty_block_invoke(uint64_t a1)
{
  if (**(a1 + 40))
  {
    __carManager_setProperty_block_invoke_cold_1();
  }

  else if (CFEqual(*(a1 + 48), @"OverrideEndpointManagerEnabled"))
  {
    v2 = *(a1 + 56);
    if (v2 && (v3 = CFGetTypeID(v2), v3 == CFBooleanGetTypeID()))
    {
      Value = CFBooleanGetValue(*(a1 + 56));
      *(*(a1 + 40) + 312) = Value;
      v5 = *(a1 + 64);
      if (Value)
      {
        *(*(*(a1 + 32) + 8) + 24) = carManager_startDiscovery(v5);
        v6 = *(*(*(a1 + 32) + 8) + 24);
        if (v6)
        {
          __carManager_setProperty_block_invoke_cold_2(v6);
        }
      }

      else
      {

        carManager_stopDiscovery(v5);
      }
    }

    else
    {
      __carManager_setProperty_block_invoke_cold_3(a1);
    }
  }

  else
  {
    if (gLogCategory_APEndpointManagerCarPlay <= 60 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carManager_setProperty_block_invoke_cold_4((a1 + 48));
    }

    *(*(*(a1 + 32) + 8) + 24) = -12784;

    APSLogErrorAt();
  }
}

void __carManager_asyncRegisterCarPlayHALDriver_block_invoke(uint64_t a1)
{
  v2 = AudioServerPlugInRegisterRemote();
  if (v2)
  {
    v3 = 60;
  }

  else
  {
    v3 = 50;
  }

  if (v3 >= gLogCategory_APEndpointManagerCarPlay && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_asyncRegisterCarPlayHALDriver(FigEndpointManagerRef, uint32_t)_block_invoke", v3 | 0x2000000u, "[%{ptr}] %@ remote registered%?{end} err=%#m\n", *(a1 + 40), @"CarPlayHalogen.driver", v2 == 0, v2);
  }

  if (v2)
  {
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_asyncRegisterCarPlayHALDriver(FigEndpointManagerRef, uint32_t)_block_invoke", 33554482, "[%{ptr}] Re-trying %@ remote registration due to err=%#m\n", *(a1 + 40), @"CarPlayHalogen.driver", v2);
    }

    carManager_asyncRegisterCarPlayHALDriver(*(a1 + 40), 1);
  }

  CFRelease(*(a1 + 40));
}

void __carManager_asyncRegisterCarPlayHALDriver_block_invoke_2(uint64_t a1)
{
  if (carManager_getWeakRefTable_once != -1)
  {
    carManager_finalize_cold_2();
  }

  v1 = FigCFWeakReferenceTableCopyValue();
  if (v1)
  {
    v4 = v1;
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carManager_asyncRegisterCarPlayHALDriver_block_invoke_2_cold_2(v4, v2, v3);
    }

    carManager_asyncRegisterCarPlayHALDriver(v4, 1);

    CFRelease(v4);
  }

  else if (gLogCategory_APEndpointManagerCarPlay <= 90 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carManager_asyncRegisterCarPlayHALDriver_block_invoke_2_cold_3();
  }
}

void __carManager_handleControlServerEvent_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 64) = 0;
  }

  CFGetAllocator(*(a1 + 40));
  *(*(a1 + 32) + 64) = FigCFNumberCreateUInt64();
  Current = CFAbsoluteTimeGetCurrent();
  *(*(a1 + 32) + 72) = Current;
  if (gLogCategory_APEndpointManagerCarPlay <= 50)
  {
    if (gLogCategory_APEndpointManagerCarPlay != -1)
    {
LABEL_5:
      LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "OSStatus carManager_handleControlServerEvent(APCarPlayControlServerRef, uint64_t, const char *, size_t, void *)_block_invoke", 33554482, "Setting pending autoconnect deviceID: %#.6a @ %.2lf\n", COERCE_DOUBLE(a1 + 48), Current);
      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      Current = *(*(a1 + 32) + 72);
      goto LABEL_5;
    }
  }

LABEL_7:
  carManager_handlePendingAutoconnect(*(a1 + 40));
  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void carManager_handlePendingAutoconnect(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DiscoveryIDForEndpoint = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = *(DerivedStorage + 64);
  if (v6)
  {
    v7 = Current - *(DerivedStorage + 72);
    UInt64 = FigCFNumberGetUInt64();
    v27 = UInt64;
    if (v7 >= 0.0 && v7 <= 5.0)
    {
      v12 = *(DerivedStorage + 296);
      if (v12)
      {
        v13 = UInt64;
        DiscoveryIDForEndpoint = carManager_getDiscoveryIDForEndpoint(*(v12 + 40));
        if (DiscoveryIDForEndpoint == v13)
        {
          v14 = *(*(DerivedStorage + 296) + 48);
          v15 = APSGetFBOPropertyInt64() != 0;
        }

        else
        {
          v14 = 0;
          v15 = 0;
        }

        if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
        {
          v16 = "true";
          if (v14)
          {
            v17 = "true";
          }

          else
          {
            v17 = "false";
          }

          if (!v15)
          {
            v16 = "false";
          }

          LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_handlePendingAutoconnect(FigEndpointManagerRef)", 33554482, "carManager_handlePendingAutoconnect: browser = %s, alreadyActivated = %s, autoConnectEnabled = %s, for deviceID: %#.6a, pendingAutoconnectID: %#.6a\n", *(*(DerivedStorage + 296) + 8), v17, v16, COERCE_DOUBLE(&DiscoveryIDForEndpoint), COERCE_DOUBLE(&v27));
        }
      }

      else
      {
        v14 = 0;
        LOBYTE(v15) = 0;
      }

      if (!v14 && !v15)
      {
        v23 = DerivedStorage + 80;
        v24 = 3;
        while (1)
        {
          if (*(v23 + 16))
          {
            v25 = *(v23 + 40);
            if (v25)
            {
              DiscoveryIDForEndpoint = carManager_getDiscoveryIDForEndpoint(*(v23 + 40));
              if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_handlePendingAutoconnect(FigEndpointManagerRef)", 33554482, "carManager_handlePendingAutoconnect: index = %s, for deviceID: %#.6a, pendingAutoconnectID: %#.6a\n", *(v23 + 8), COERCE_DOUBLE(&DiscoveryIDForEndpoint), COERCE_DOUBLE(&v27));
              }

              if (DiscoveryIDForEndpoint == v27)
              {
                break;
              }
            }
          }

          v23 += 72;
          if (!--v24)
          {
            if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
            {
              carManager_handlePendingAutoconnect_cold_1(&v27, v9, v10);
            }

            return;
          }
        }

        carManager_updateBrowserContext(a1, v23, v25, 0, 0, -1, 1, -1);
        v26 = *(DerivedStorage + 64);
        if (v26)
        {
          CFRelease(v26);
          *(DerivedStorage + 64) = 0;
        }
      }
    }

    else
    {
      if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_handlePendingAutoconnect(FigEndpointManagerRef)", 33554482, "carManager_handlePendingAutoconnect: pendingAutoconnectID: %#.6a is expired (%.3f seconds old)\n", COERCE_DOUBLE(&v27), v7);
      }

      v18 = DerivedStorage + 80;
      v19 = 3;
      while (1)
      {
        if (*(v18 + 16))
        {
          v20 = *(v18 + 40);
          if (v20)
          {
            v21 = carManager_getDiscoveryIDForEndpoint(*(v18 + 40));
            if (v21 == v27)
            {
              break;
            }
          }
        }

        v18 += 72;
        if (!--v19)
        {
          goto LABEL_34;
        }
      }

      carManager_updateBrowserContext(a1, v18, v20, 0, 0, -1, 0, -1);
LABEL_34:
      v22 = *(DerivedStorage + 64);
      if (v22)
      {
        CFRelease(v22);
        *(DerivedStorage + 64) = 0;
      }

      *(DerivedStorage + 72) = 0;
    }
  }

  else if (gLogCategory_APEndpointManagerCarPlay <= 50)
  {
    if (gLogCategory_APEndpointManagerCarPlay != -1 || (v6 = _LogCategory_Initialize(), v6))
    {
      carManager_handlePendingAutoconnect_cold_2(v6, v3, v4);
    }
  }
}

uint64_t carManager_getDiscoveryIDForEndpoint(const void *a1)
{
  cf = 0;
  v13 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    v4 = 4294954514;
    goto LABEL_8;
  }

  v4 = v3(CMBaseObject, @"EndpointDescription", 0, &v13);
  if (v4)
  {
LABEL_8:
    carManager_getDiscoveryIDForEndpoint_cold_3(v4);
    goto LABEL_11;
  }

  v5 = CFGetAllocator(a1);
  APEndpointDescriptionGetCMBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v9 = 4294954514;
    goto LABEL_10;
  }

  v9 = v8(v7, @"TransportDevice", v5, &cf);
  if (v9)
  {
LABEL_10:
    carManager_getDiscoveryIDForEndpoint_cold_2(v9);
    goto LABEL_11;
  }

  if (APTransportDeviceGetDiscoveryID())
  {
    UInt64 = FigCFNumberGetUInt64();
    goto LABEL_12;
  }

  carManager_getDiscoveryIDForEndpoint_cold_1();
LABEL_11:
  UInt64 = 0;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return UInt64;
}

uint64_t __carManager_browserEventHandler_block_invoke(uint64_t a1)
{
  if (gLogCategory_APEndpointManagerCarPlay <= 30 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carManager_browserEventHandler_block_invoke_cold_1(a1);
  }

  result = *(a1 + 56);
  if (result <= 6)
  {
    if ((result - 3) >= 2)
    {
      if ((result - 5) < 2)
      {
        v3 = *(a1 + 40);
        v4 = *(v3 + 32);
        v5 = *(v3 + 40);
        CMBaseObjectGetDerivedStorage();
        if (v5)
        {
          carManager_updateBrowserContext(v4, v3, 0, 1, 0, -1, -1, -1);
        }

        *(*(*(a1 + 32) + 8) + 24) = 0;
        result = *(*(*(a1 + 32) + 8) + 24);
        if (result)
        {
          return __carManager_browserEventHandler_block_invoke_cold_3(result);
        }

        return result;
      }

      goto LABEL_13;
    }

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(v8 + 32);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v12 = CFGetAllocator(v10);
    v32 = 0;
    v33 = 0;
    if (!v9)
    {
      __carManager_browserEventHandler_block_invoke_cold_8();
      v31 = -6762;
LABEL_62:
      if (v33)
      {
        CFRelease(v33);
      }

      *(*(*(a1 + 32) + 8) + 24) = v31;
      result = *(*(*(a1 + 32) + 8) + 24);
      if (result)
      {
        return __carManager_browserEventHandler_block_invoke_cold_9(result);
      }

      return result;
    }

    v13 = v12;
    v14 = APTransportDeviceCreate();
    if (v14)
    {
      v31 = v14;
      __carManager_browserEventHandler_block_invoke_cold_4(v14);
      goto LABEL_60;
    }

    v15 = *(v8 + 40);
    if (v15)
    {
      v16 = CFRetain(v15);
      v32 = v16;
      cf = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v18)
      {
        goto LABEL_81;
      }

      v18(CMBaseObject, @"EndpointDescription", 0, &cf);
      v19 = cf;
      if (!cf)
      {
        goto LABEL_81;
      }

      v20 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v20)
      {
        v21 = v20(v19, v33) == 0;
      }

      else
      {
        v21 = 1;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (!v21)
      {
        if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "OSStatus carManager_handleBrowserAddedOrUpdatedEvent(CarManagerBrowserContext *, CFDictionaryRef)", 33554482, "Update received for %s endpoint %{ptr} (ignoring)\n", *(v8 + 8), v16);
        }
      }

      else
      {
LABEL_81:
        if (gLogCategory_APEndpointManagerCarPlay <= 90 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carManager_browserEventHandler_block_invoke_cold_5(v8);
        }
      }

      v30 = -1;
      goto LABEL_59;
    }

    if (*(DerivedStorage + 360))
    {
      v23 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"carPlayTestControlMode", *MEMORY[0x277CBED28]);
      v25 = *(DerivedStorage + 352);
      if (!v25)
      {
LABEL_35:
        v27 = *MEMORY[0x277CE4D18];
        if (CFDictionaryContainsKey(v9, *MEMORY[0x277CE4D18]))
        {
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          }

          Value = CFDictionaryGetValue(v9, v27);
          CFDictionarySetValue(Mutable, @"sessionHostInfo", Value);
        }

        v29 = APEndpointCarPlayCreateWithTransportDevice(v13, v33, Mutable, &v32);
        if (!v29)
        {
          if (!*v8)
          {
            carManager_isEndpointWireless(v32);
          }

          if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
          {
            __carManager_browserEventHandler_block_invoke_cold_7(v8, &v32);
            if (!Mutable)
            {
              goto LABEL_47;
            }
          }

          else if (!Mutable)
          {
LABEL_47:
            v30 = 0;
LABEL_59:
            carManager_updateBrowserContext(v10, v8, v32, 1, 1, v30, -1, -1);
            carManager_handlePendingAutoconnect(v10);
            v31 = 0;
            goto LABEL_60;
          }

          CFRelease(Mutable);
          goto LABEL_47;
        }

        v31 = v29;
        __carManager_browserEventHandler_block_invoke_cold_6(v29);
LABEL_60:
        if (v32)
        {
          CFRelease(v32);
        }

        goto LABEL_62;
      }

      if (Mutable)
      {
LABEL_34:
        CFDictionarySetValue(Mutable, @"EventRecorder", v25);
        goto LABEL_35;
      }

      v26 = (DerivedStorage + 352);
    }

    else
    {
      if (!*(DerivedStorage + 352))
      {
        Mutable = 0;
        goto LABEL_35;
      }

      v26 = (DerivedStorage + 352);
      v23 = *MEMORY[0x277CBECE8];
    }

    Mutable = CFDictionaryCreateMutable(v23, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v25 = *v26;
    goto LABEL_34;
  }

  if (result != 7)
  {
    if (result == 8)
    {
      return result;
    }

LABEL_13:
    if (gLogCategory_APEndpointManagerCarPlay <= 90)
    {
      if (gLogCategory_APEndpointManagerCarPlay != -1 || (result = _LogCategory_Initialize(), result))
      {
        v6 = *(*(a1 + 40) + 8);
        EventString = APBrowserGetEventString();
        return LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_browserEventHandler(APBrowserRef, APBrowserEventType, CFDictionaryRef, void *)_block_invoke", 33554522, "BrowserEventHandler unrecognized %s event: '%s'\n", v6, EventString);
      }
    }

    return result;
  }

  v22 = *(a1 + 40);
  CMBaseObjectGetDerivedStorage();
  if (*(v22 + 40))
  {
    carManager_updateBrowserContext(*(v22 + 32), v22, 0, 1, 0, -1, -1, -1);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return __carManager_browserEventHandler_block_invoke_cold_2(result);
  }

  return result;
}

BOOL carManager_isEndpointWireless(uint64_t a1)
{
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v3 = 0;
  if (v2)
  {
    v2(CMBaseObject, *MEMORY[0x277CC1558], 0, &cf);
    if (cf)
    {
      if (FigCFEqual())
      {
        v3 = 1;
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

void carManager_handleEndpointActivated(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a2);
  if (a4)
  {
    CFRetain(a4);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  v10 = *(DerivedStorage + 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __carManager_handleEndpointActivated_block_invoke;
  v11[3] = &__block_descriptor_64_e5_v8__0l;
  v11[4] = a2;
  v11[5] = a4;
  v11[6] = a5;
  v11[7] = a3;
  dispatch_async(v10, v11);
}

void carManager_handleEndpointDeactivatedOrDissociated(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_handleEndpointDeactivatedOrDissociated(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "carManager_handleEndpointDeactivatedOrDissociated called.\n");
  }

  CFEqual(a3, *MEMORY[0x277CC0D40]);
  CFRetain(a2);
  if (a4)
  {
    CFRetain(a4);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  v10 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __carManager_handleEndpointDeactivatedOrDissociated_block_invoke;
  block[3] = &unk_27849C578;
  block[4] = v12;
  block[5] = a2;
  block[6] = a4;
  block[7] = a5;
  block[8] = a3;
  dispatch_async(v10, block);
  _Block_object_dispose(v12, 8);
}

void sub_2220E1838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void carManager_handleEndpointActivationChanged(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Current = CFAbsoluteTimeGetCurrent();
  if (gLogCategory_APEndpointManagerCarPlay <= 50)
  {
    if (gLogCategory_APEndpointManagerCarPlay != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      carManager_handleEndpointActivationChanged_cold_1(v5, v6, v7);
    }
  }

  CFRetain(a1);
  v9 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __carManager_handleEndpointActivationChanged_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a1;
  dispatch_async(v9, block);
  v10 = *(DerivedStorage + 320);
  if (*(a2 + 48))
  {
    if (!v10)
    {
      v35 = 0.0;
      v36 = &v35;
      v37 = 0x3052000000;
      v38 = __Block_byref_object_copy__1;
      v11 = getCRSSessionControllerClass_softClass;
      v39 = __Block_byref_object_dispose__1;
      v40 = getCRSSessionControllerClass_softClass;
      if (!getCRSSessionControllerClass_softClass)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __getCRSSessionControllerClass_block_invoke;
        v34[3] = &unk_27849ACC8;
        v34[4] = &v35;
        __getCRSSessionControllerClass_block_invoke(v34);
        v11 = *(v36 + 5);
      }

      _Block_object_dispose(&v35, 8);
      *(DerivedStorage + 320) = objc_alloc_init(v11);
    }

    v12 = MEMORY[0x223DB15F0](DerivedStorage + 304);
    v13 = *(a2 + 68);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v15 = CFAbsoluteTimeGetCurrent();
    v35 = 0.0;
    mach_absolute_time();
    if (carManager_getEndpointActivationStateFilePath_once != -1)
    {
      carManager_handleEndpointActivationChanged_cold_2();
    }

    v16 = CFPropertyListCreateFromFilePath();
    v17 = mach_absolute_time();
    if (v16)
    {
      FigCFDictionaryGetDoubleIfPresent();
      if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
      {
        carManager_handleEndpointActivationChanged_cold_3();
      }

      CFRelease(v16);
      v20 = v35;
    }

    else
    {
      v20 = 0.0;
    }

    if (v13 == 1)
    {
      if (gLogCategory_APEndpointManagerCarPlay <= 40)
      {
        if (gLogCategory_APEndpointManagerCarPlay != -1 || (v17 = _LogCategory_Initialize(), v17))
        {
          carManager_handleEndpointActivationChanged_cold_5(v17, v18, v19);
        }
      }
    }

    else
    {
      v21 = v15 - v20;
      if (v21 <= 0.0 || v21 >= 15.0)
      {
        v23 = getpid();
        LODWORD(v35) = 0;
        if (carManager_getEndpointActivationStateFilePath_once != -1)
        {
          carManager_handleEndpointActivationChanged_cold_2();
        }

        v24 = CFPropertyListCreateFromFilePath();
        if (v24)
        {
          v25 = v24;
          FigCFDictionaryGetInt32IfPresent();
          if (LODWORD(v35) == v23 || CFDictionaryContainsKey(v25, @"deactivation_time"))
          {
            CFRelease(v25);
          }

          else
          {
            if (gLogCategory_APEndpointManagerCarPlay <= 60 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "Boolean carManager_didProcessRestartDuringActiveCarPlay(FigEndpointManagerRef)", 33554492, "Process crashed/restarted during active CarPlay (PID changed from %d => %d)\n", LODWORD(v35), v23);
            }

            CFRelease(v25);
            CFDictionarySetValue(Mutable, @"APCarPlay_sessionCrash", *MEMORY[0x277CBED28]);
          }
        }
      }

      else
      {
        if (FigCFEqual())
        {
          v22 = @"APCarPlay_sessionSoftReset";
        }

        else
        {
          v22 = @"APCarPlay_sessionHardReset";
        }

        CFDictionarySetValue(Mutable, v22, *MEMORY[0x277CBED28]);
      }
    }

    if (FigCFDictionaryGetCount() >= 1)
    {
      if (gLogCategory_APEndpointManagerCarPlay <= 40 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
      {
        carManager_handleEndpointActivationChanged_cold_6(Mutable, v26, v27);
      }

      APSSetFBOPropertyDictionary();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    *(a2 + 68) = 0;
    FigCFWeakReferenceStore();
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else if (v10)
  {
    [v10 invalidate];

    *(DerivedStorage + 320) = 0;
  }

  v28 = *(a2 + 48);
  v29 = getpid();
  v30 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v30)
  {
    v31 = v30;
    if (gLogCategory_APEndpointManagerCarPlay <= 50 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APEndpointManagerCarPlay, "void carManager_storeEndpointActivationStateForCurrentProcess(FigEndpointManagerRef, Boolean, CFAbsoluteTime)", 33554482, "Storing CarPlay endpoint activation state (active: %d, PID: %d, EndpointActivationStateTime: %f)\n", v28, v29, Current);
    }

    FigCFDictionarySetInt32();
    FigCFDictionarySetDouble();
    if (carManager_getEndpointActivationStateFilePath_once != -1)
    {
      carManager_handleEndpointActivationChanged_cold_2();
    }

    v32 = CFPropertyListWriteToFilePath();
    if (v32)
    {
      carManager_handleEndpointActivationChanged_cold_8(v32);
    }

    CFRelease(v31);
  }

  else
  {
    carManager_handleEndpointActivationChanged_cold_9();
  }
}

void sub_2220E1E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __carManager_handleEndpointActivated_block_invoke(uint64_t *a1)
{
  BrowserContextForEndpoint = carManager_getBrowserContextForEndpoint(a1[4], a1[5]);
  if (BrowserContextForEndpoint)
  {
    v3 = BrowserContextForEndpoint;
    carManager_updateBrowserContext(a1[4], BrowserContextForEndpoint, a1[5], 0, 0, 1, 0, -1);
    carManager_handleEndpointActivationChanged(a1[4], v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[4];

  CFRelease(v7);
}

void __carManager_handleEndpointDeactivatedOrDissociated_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = carManager_getBrowserContextForEndpoint(a1[5], a1[6]);
  if (*(*(a1[4] + 8) + 24))
  {
    FigCFDictionaryGetInt32IfPresent();
    if (gLogCategory_APEndpointManagerCarPlay <= 40 && (gLogCategory_APEndpointManagerCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carManager_handleEndpointDeactivatedOrDissociated_block_invoke_cold_1((a1 + 4), v2, v3);
    }

    carManager_updateBrowserContext(a1[5], *(*(a1[4] + 8) + 24), a1[6], 0, 0, 0, -1, -1);
    carManager_handleEndpointActivationChanged(a1[5], *(*(a1[4] + 8) + 24));
    carManager_handlePendingAutoconnect(a1[5]);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[5];

  CFRelease(v7);
}

void __carManager_handleEndpointActivationChanged_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 352))
  {
    APSEventRecorderRecordEvent();
  }

  v2 = LogCategoryCopyOSLogHandle();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v4, OS_SIGNPOST_EVENT, 0x2B8D08E0uLL, "AP_SIGNPOST_CAR_ACTIVATED_ENDPOINTS_CHANGED_SEND", &unk_2222A918B, v5, 2u);
  }

  if (v3)
  {
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  CFRelease(*(a1 + 40));
}

Class __getCRSSessionControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CarPlayServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CarPlayServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27849C5C0;
    v5 = 0;
    CarPlayServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CarPlayServicesLibraryCore_frameworkLibrary)
  {
    __getCRSSessionControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CRSSessionController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getCRSSessionControllerClass_block_invoke_cold_1();
  }

  getCRSSessionControllerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CarPlayServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CarPlayServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void __carManager_getEndpointActivationStateFilePath_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = NSTemporaryDirectory();
  v2 = SNPrintF(&carManager_getEndpointActivationStateFilePath_path, 1024, "%@/%s", v1, "CarPlayActiveEndpoint.plist");
  if (gLogCategory_APEndpointManagerCarPlay <= 40)
  {
    if (gLogCategory_APEndpointManagerCarPlay != -1 || (v2 = _LogCategory_Initialize(), v2))
    {
      __carManager_getEndpointActivationStateFilePath_block_invoke_cold_1(v2, v3, v4);
    }
  }

  objc_autoreleasePoolPop(v0);
}

void __carManager_updateCurrentEndpoint_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 352))
  {
    APSEventRecorderRecordEvent();
  }

  v2 = LogCategoryCopyOSLogHandle();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_221FFA000, v4, OS_SIGNPOST_EVENT, 0x2B160190uLL, "AP_SIGNPOST_SETAUTOCONNECTENDPOINT", &unk_2222A918B, v5, 2u);
  }

  if (v3)
  {
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  CFRelease(*(a1 + 40));
}

void __carManager_updateCurrentEndpoint_block_invoke_256(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t APEndpointDisplayDescriptionGetTypeID(uint64_t a1, uint64_t a2)
{
  if (APEndpointDisplayDescriptionGetTypeID_sAPEndpointDisplayDescriptionOnce != -1)
  {
    APEndpointDisplayDescriptionGetTypeID_cold_1();
  }

  return sAPEndpointDisplayDescriptionTypeID;
}

uint64_t __APEndpointDisplayDescriptionGetTypeID_block_invoke()
{
  sAPEndpointDisplayDescriptionClass = 0;
  unk_27D0087A0 = "APEndpointDisplayDescription";
  qword_27D0087A8 = 0;
  unk_27D0087B0 = 0;
  qword_27D0087C0 = 0;
  unk_27D0087C8 = 0;
  qword_27D0087B8 = bonjourDisplayDescription_Finalize;
  qword_27D0087D0 = bonjourDisplayDescription_CopyFormattingDesc;
  qword_27D0087D8 = bonjourDisplayDescription_CopyDebugDescription;
  result = _CFRuntimeRegisterClass();
  sAPEndpointDisplayDescriptionTypeID = result;
  return result;
}

uint64_t APEndpointDisplayDescriptionCreateWithDisplayInfo(uint64_t a1, const void *a2, uint64_t *a3)
{
  if (!a3)
  {
    v10 = 4294895515;
    APEndpointDisplayDescriptionCreateWithDisplayInfo_cold_6();
    return v10;
  }

  if (!a2)
  {
    v10 = 4294895515;
    APEndpointDisplayDescriptionCreateWithDisplayInfo_cold_5();
    return v10;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    v10 = 4294895515;
    APEndpointDisplayDescriptionCreateWithDisplayInfo_cold_1();
    return v10;
  }

  if (APEndpointDisplayDescriptionGetTypeID_sAPEndpointDisplayDescriptionOnce != -1)
  {
    APEndpointDisplayDescriptionGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APEndpointDisplayDescriptionCreateWithDisplayInfo_cold_4();
    return 4294895516;
  }

  v7 = Instance;
  *(Instance + 16) = 0;
  *(Instance + 24) = 0;
  v8 = dispatch_queue_create("com.apple.AirPlay.APEndpointDisplayDescription", 0);
  v7[2] = v8;
  if (!v8)
  {
    APEndpointDisplayDescriptionCreateWithDisplayInfo_cold_3(v7);
    return 4294895516;
  }

  v9 = CFRetain(a2);
  v10 = 0;
  v7[3] = v9;
  *a3 = v7;
  return v10;
}

uint64_t APEndpointDisplayDescriptionCreateDefaultWithEndpointFeatures(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  APSFeaturesHasFeature();
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    CFDictionarySetValue(v6, @"uuid", @"86E62046-B752-490D-AF0B-6D7672A89101");
    v7 = APEndpointDisplayDescriptionCreateWithDisplayInfo(a1, v6, a3);
    v8 = v7;
    if (v7)
    {
      APEndpointDisplayDescriptionCreateDefaultWithEndpointFeatures_cold_1(v7);
    }

    CFRelease(v6);
  }

  else
  {
    APEndpointDisplayDescriptionCreateDefaultWithEndpointFeatures_cold_2();
    return 4294895516;
  }

  return v8;
}

uint64_t APEndpointDisplayDescriptionCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  if (gLogCategory_APEndpointDisplayDescription <= 30 && (gLogCategory_APEndpointDisplayDescription != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APEndpointDisplayDescription, "OSStatus APEndpointDisplayDescriptionCopyProperty(APEndpointDisplayDescriptionRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%p] %###s propertyKey: '%@'\n", a1, "OSStatus APEndpointDisplayDescriptionCopyProperty(APEndpointDisplayDescriptionRef, CFStringRef, CFAllocatorRef, void *)", a2);
  }

  if (a2)
  {
    if (a4)
    {
      v8 = *(a1 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __APEndpointDisplayDescriptionCopyProperty_block_invoke;
      block[3] = &unk_27849C708;
      block[4] = &v12;
      block[5] = a1;
      block[6] = a2;
      block[7] = a3;
      block[8] = a4;
      dispatch_sync(v8, block);
      v9 = *(v13 + 6);
    }

    else
    {
      v9 = 4294895515;
      APEndpointDisplayDescriptionCopyProperty_cold_1();
    }
  }

  else
  {
    v9 = 4294895515;
    APEndpointDisplayDescriptionCopyProperty_cold_2();
  }

  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __APEndpointDisplayDescriptionCopyProperty_block_invoke(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = a1[8];
  if (CFEqual(v2, @"EDID"))
  {
    v5 = *(v3 + 24);
    v6 = @"edid";
LABEL_15:
    result = CFDictionaryGetValue(v5, v6);
    if (result)
    {
      result = CFRetain(result);
    }

    v8 = 0;
    *v4 = result;
    goto LABEL_18;
  }

  if (CFEqual(v2, @"UUID"))
  {
    v5 = *(v3 + 24);
    v6 = @"uuid";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"ViewAreas"))
  {
    v5 = *(v3 + 24);
    v6 = @"viewAreas";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"InitialViewArea"))
  {
    v5 = *(v3 + 24);
    v6 = @"initialViewArea";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"AdjacentViewAreas"))
  {
    v5 = *(v3 + 24);
    v6 = @"adjacentViewAreas";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"PrimaryInputDevice"))
  {
    v5 = *(v3 + 24);
    v6 = @"primaryInputDevice";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"MaxFPS"))
  {
LABEL_14:
    v5 = *(v3 + 24);
    v6 = @"maxFPS";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"SupportsRotation"))
  {
    v9 = *(v3 + 24);
    v10 = @"rotation";
    goto LABEL_21;
  }

  if (CFEqual(v2, @"HDRInfo"))
  {
    v5 = *(v3 + 24);
    v6 = @"HDRInfo";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"receiverSupports444"))
  {
    v9 = *(v3 + 24);
    v10 = @"receiverSupports444";
    goto LABEL_21;
  }

  if (CFEqual(v2, @"receiverSupportsHDRMirroring"))
  {
    v9 = *(v3 + 24);
    v10 = @"receiverSupportsHDRMirroring";
    goto LABEL_21;
  }

  if (CFEqual(v2, @"IsOverscanned"))
  {
    v9 = *(v3 + 24);
    v10 = @"overscanned";
LABEL_21:
    result = CFDictionaryGetValue(v9, v10);
    if (!result)
    {
      result = *MEMORY[0x277CBED10];
    }

    goto LABEL_23;
  }

  if (CFEqual(v2, @"RefreshRate"))
  {
    goto LABEL_14;
  }

  if (CFEqual(v2, @"PhysicalSize"))
  {
    Int64 = CFDictionaryGetInt64();
    v23.height = CFDictionaryGetInt64();
    v23.width = Int64;
    result = CGSizeCreateDictionaryRepresentation(v23);
    *v4 = result;
    if (!result)
    {
      v8 = -71780;
      result = __APEndpointDisplayDescriptionCopyProperty_block_invoke_cold_1();
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  if (CFEqual(v2, @"PixelSize"))
  {
    v12 = CFDictionaryGetInt64();
    v24.height = CFDictionaryGetInt64();
    v24.width = v12;
    result = CGSizeCreateDictionaryRepresentation(v24);
    *v4 = result;
    if (!result)
    {
      v8 = -71780;
      result = __APEndpointDisplayDescriptionCopyProperty_block_invoke_cold_2();
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  if (CFEqual(v2, @"PixelSizeMax"))
  {
    v13 = CFDictionaryGetInt64();
    v25.height = CFDictionaryGetInt64();
    v25.width = v13;
    result = CGSizeCreateDictionaryRepresentation(v25);
    *v4 = result;
    if (!result)
    {
      v8 = -71780;
      result = __APEndpointDisplayDescriptionCopyProperty_block_invoke_cold_3();
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  if (CFEqual(v2, @"ZoomFactor"))
  {
    v5 = *(v3 + 24);
    v6 = @"zoomFactor";
    goto LABEL_15;
  }

  if (CFEqual(v2, @"SupportsKnobInput"))
  {
    v14 = CFDictionaryGetInt64();
    v15 = MEMORY[0x277CBED28];
    v16 = MEMORY[0x277CBED10];
    v17 = (v14 & 2) == 0;
    goto LABEL_54;
  }

  if (CFEqual(v2, @"SupportsLowFidelityTouch"))
  {
    v18 = CFDictionaryGetInt64();
    v15 = MEMORY[0x277CBED28];
    v16 = MEMORY[0x277CBED10];
    v17 = (v18 & 4) == 0;
    goto LABEL_54;
  }

  if (CFEqual(v2, @"SupportsHighFidelityTouch"))
  {
    v19 = CFDictionaryGetInt64();
    v15 = MEMORY[0x277CBED28];
    v16 = MEMORY[0x277CBED10];
    v17 = (v19 & 8) == 0;
    goto LABEL_54;
  }

  if (CFEqual(v2, @"SupportsTouchpadInput"))
  {
    v20 = CFDictionaryGetInt64();
    v15 = MEMORY[0x277CBED28];
    v16 = MEMORY[0x277CBED10];
    v17 = (v20 & 0x10) == 0;
LABEL_54:
    if (v17)
    {
      v15 = v16;
    }

    goto LABEL_56;
  }

  if (CFEqual(v2, @"cornerMasks") || CFEqual(v2, @"IsNightMode") || CFEqual(v2, @"IsLimitedUI"))
  {
    FigCFDictionaryGetBooleanIfPresent();
    v15 = MEMORY[0x277CBED10];
LABEL_56:
    result = *v15;
LABEL_23:
    *v4 = result;
    if (result)
    {
      result = CFRetain(result);
    }

LABEL_25:
    v8 = 0;
    goto LABEL_18;
  }

  if (CFEqual(v2, @"LimitedUIElements"))
  {
    Value = CFDictionaryGetValue(*(v3 + 24), @"limitedUIElements");
    if (Value)
    {
      v22 = Value;
      result = CFRetain(Value);
    }

    else
    {
      result = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v22 = result;
      if (!result)
      {
        v8 = -71780;
        result = __APEndpointDisplayDescriptionCopyProperty_block_invoke_cold_4();
        goto LABEL_18;
      }
    }

    v8 = 0;
    *v4 = v22;
  }

  else
  {
    if (CFEqual(v2, @"Url"))
    {
      v5 = *(v3 + 24);
      v6 = @"url";
      goto LABEL_15;
    }

    result = CFEqual(v2, @"InitialUrl");
    if (result)
    {
      v5 = *(v3 + 24);
      v6 = @"initialURL";
      goto LABEL_15;
    }

    v8 = -71782;
    if (gLogCategory_APEndpointDisplayDescription <= 30)
    {
      if (gLogCategory_APEndpointDisplayDescription != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __APEndpointDisplayDescriptionCopyProperty_block_invoke_cold_5(v2);
      }
    }
  }

LABEL_18:
  *(*(a1[4] + 8) + 24) = v8;
  return result;
}

void bonjourDisplayDescription_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 16) = 0;
  }
}

__CFString *bonjourDisplayDescription_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APEndpointDisplayDescription %p>", a1);
  return Mutable;
}

uint64_t APSenderSessionLegacyAudioCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, CFTypeRef *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  cf = 0;
  v27 = 0;
  APSenderSessionGetClassID(a1, a2);
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v24 = v9;
    APSenderSessionLegacyAudioCreate_cold_1(v9);
    goto LABEL_21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = FigSimpleMutexCreate();
  *(DerivedStorage + 72) = v11;
  if (!v11)
  {
    APSenderSessionLegacyAudioCreate_cold_8();
LABEL_33:
    v24 = 4294895476;
    goto LABEL_21;
  }

  SNPrintF(label, 64, "APSenderSessionLegacyAudio.network.%{ptr}", v27);
  v12 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 40) = v12;
  if (!v12)
  {
    APSenderSessionLegacyAudioCreate_cold_7();
    goto LABEL_33;
  }

  SNPrintF(label, 64, "APSenderSessionLegacyAudio.notification.%{ptr}", v27);
  v13 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 8) = v13;
  if (!v13)
  {
    APSenderSessionLegacyAudioCreate_cold_6();
    goto LABEL_33;
  }

  if (!a2)
  {
    v24 = 4294895475;
    APSenderSessionLegacyAudioCreate_cold_5();
    goto LABEL_21;
  }

  *DerivedStorage = CFRetain(a2);
  if (!a3)
  {
    v24 = 4294895475;
    APSenderSessionLegacyAudioCreate_cold_4();
    goto LABEL_21;
  }

  *(DerivedStorage + 24) = CFRetain(a3);
  if (!a4)
  {
    v24 = 4294895475;
    APSenderSessionLegacyAudioCreate_cold_3();
    goto LABEL_21;
  }

  *(DerivedStorage + 32) = CFRetain(a4);
  *(DerivedStorage + 124) = vdup_n_s32(0xC479C000);
  APEndpointDescriptionGetCMBaseObject();
  v15 = v14;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    v24 = 4294954514;
LABEL_20:
    APSLogErrorAt();
    goto LABEL_21;
  }

  v17 = *MEMORY[0x277CBECE8];
  v18 = v16(v15, @"TransportDevice", *MEMORY[0x277CBECE8], &cf);
  if (v18)
  {
    v24 = v18;
    goto LABEL_20;
  }

  SharedTransport = APTransportGetSharedTransport();
  v20 = cf;
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v21)
  {
    v24 = 4294954514;
    goto LABEL_20;
  }

  v22 = v21(SharedTransport, v17, a2, v20, 0, DerivedStorage + 16);
  if (v22)
  {
    v24 = v22;
    goto LABEL_20;
  }

  if (gLogCategory_APSenderSessionSDP <= 50)
  {
    if (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize())
    {
      APSenderSessionLegacyAudioCreate_cold_2(&v27, DerivedStorage + 16, v23);
    }

    if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APSenderSessionSDP, "OSStatus APSenderSessionLegacyAudioCreate(CFAllocatorRef, CFStringRef, APEndpointDescriptionRef, APSNetworkClockRef, APSenderSessionRef *)", 33554462, "APSenderSessionLegacyAudio %{ptr} with name %@ created.\n", v27, a2);
    }
  }

  v24 = 0;
  *a5 = v27;
  v27 = 0;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v24;
}

uint64_t sdpsession_Invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sdpsession_invalidateTransportControlStream(a1, 1);
  dispatch_sync_f(*(DerivedStorage + 40), a1, sdpsession_cleanup);
  return 0;
}

void sdpsession_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionSDP, "void sdpsession_Finalize(CMBaseObjectRef)", 33554462, "APSenderSessionLegacyAudio %{ptr} with name %@ finalizing.\n", a1, *DerivedStorage);
  }

  if (DerivedStorage[11])
  {
    if (gLogCategory_APSenderSessionSDP <= 100 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
    {
      sdpsession_Finalize_cold_1(a1);
    }

    __break(1u);
  }

  else
  {
    v3 = DerivedStorage[3];
    if (v3)
    {
      CFRelease(v3);
      DerivedStorage[3] = 0;
    }

    v4 = DerivedStorage[4];
    if (v4)
    {
      CFRelease(v4);
      DerivedStorage[4] = 0;
    }

    v5 = DerivedStorage[1];
    if (v5)
    {
      dispatch_release(v5);
      DerivedStorage[1] = 0;
    }

    FigSimpleMutexDestroy();
    v6 = DerivedStorage[5];
    if (v6)
    {
      dispatch_release(v6);
      DerivedStorage[5] = 0;
    }

    if (*DerivedStorage)
    {
      CFRelease(*DerivedStorage);
      *DerivedStorage = 0;
    }

    v7 = DerivedStorage[2];
    if (v7)
    {
      CFRelease(v7);
      DerivedStorage[2] = 0;
    }
  }
}

__CFString *sdpsession_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSenderSessionSDP %p %@>", a1, *DerivedStorage);
  return Mutable;
}

uint64_t sdpsession_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 10 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionSDP, "OSStatus sdpsession_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554442, "[%{ptr}] %###s %@ %@.\n", a1, "OSStatus sdpsession_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", *DerivedStorage, a2);
  }

  if (!a4)
  {
    sdpsession_CopyProperty_cold_5();
    return 4294960591;
  }

  FigSimpleMutexLock();
  v9 = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"TransportControlStream"))
  {
    v10 = sdpsession_ensureTransportControlStreamCreated(a1);
    v11 = v10;
    if (v10)
    {
      sdpsession_CopyProperty_cold_1(v10);
      goto LABEL_13;
    }

    v12 = CFRetain(*(v9 + 88));
    goto LABEL_9;
  }

  if (CFEqual(a2, @"InitialVolumeDB"))
  {
    v13 = CFNumberCreate(a3, kCFNumberFloat32Type, (v9 + 124));
    *a4 = v13;
    if (!v13)
    {
      v11 = 4294895476;
      sdpsession_CopyProperty_cold_2();
      goto LABEL_13;
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"IsConnectedOnPeerToPeerInterface"))
  {
    v12 = CFRetain(*MEMORY[0x277CBED10]);
  }

  else
  {
    if (CFEqual(a2, @"ControlConnectionInterfaceLatencyHint"))
    {
      if (!*(v9 + 88))
      {
        sdpsession_CopyProperty_cold_4();
        v11 = 4294895466;
        goto LABEL_13;
      }

      Int64 = CFNumberCreateInt64();
      *a4 = Int64;
      if (!Int64)
      {
        v11 = 4294895476;
        sdpsession_CopyProperty_cold_3();
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (!CFEqual(a2, @"ShowInfo"))
    {
      v11 = 4294954512;
      goto LABEL_13;
    }

    v12 = sdpsession_copyShowInfo(a1);
  }

  v11 = 0;
LABEL_9:
  *a4 = v12;
LABEL_13:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t sdpsession_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionSDP, "OSStatus sdpsession_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "[%{ptr}] %###s propertyKey: '%@', propertyValue: '%@'\n", a1, "OSStatus sdpsession_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", a2, a3);
  }

  if (a2)
  {
    FigSimpleMutexLock();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!CFEqual(a2, @"AuthorizationString"))
    {
      if (CFEqual(a2, @"DACPID"))
      {
        *(DerivedStorage + 112) = CFGetInt64();
      }

      else if (CFEqual(a2, @"DACPRemoteID"))
      {
        *(DerivedStorage + 120) = CFGetInt64();
      }

      else if (CFEqual(a2, @"PendingVolumeDB"))
      {
        CFGetDouble();
        *&v13 = v13;
        *(DerivedStorage + 128) = LODWORD(v13);
      }

      goto LABEL_22;
    }

    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 != CFStringGetTypeID())
      {
        sdpsession_SetProperty_cold_1();
LABEL_22:
        FigSimpleMutexUnlock();
        return 0;
      }

      v9 = (DerivedStorage + 104);
      v8 = *(DerivedStorage + 104);
      *(DerivedStorage + 104) = a3;
      CFRetain(a3);
      if (v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = (DerivedStorage + 104);
      v8 = *(DerivedStorage + 104);
      *(DerivedStorage + 104) = 0;
      if (v8)
      {
LABEL_10:
        CFRelease(v8);
      }
    }

    if (*(DerivedStorage + 88))
    {
      v10 = *v9;
      CMBaseObject = FigTransportStreamGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v12)
      {
        v12(CMBaseObject, *MEMORY[0x277CE5070], v10);
      }
    }

    goto LABEL_22;
  }

  sdpsession_SetProperty_cold_5();
  return 4294895475;
}

uint64_t sdpsession_invalidateTransportControlStream(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 132))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(DerivedStorage + 132) = 0;
  }

  v4 = *(DerivedStorage + 88);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v5)
    {
      v5(v4, 0, 0, 0);
    }

    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v7 = CMBaseObject;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        v8(v7);
      }
    }

    v9 = *(DerivedStorage + 88);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 88) = 0;
    }
  }

  if (a2)
  {
    *(DerivedStorage + 80) = 1;
  }

  return FigSimpleMutexUnlock();
}

uint64_t sdpsession_cleanup(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage[7];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[7] = 0;
  }

  sdpsession_stopNetworkClock(a1);
  v4 = DerivedStorage[2];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v5)
  {
    v5(v4);
  }

  CMBaseObject = FigTransportSessionGetCMBaseObject();
  if (CMBaseObject)
  {
    v7 = CMBaseObject;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v8)
    {
      v8(v7);
    }
  }

  FigSimpleMutexLock();
  v9 = DerivedStorage[13];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[13] = 0;
  }

  v10 = DerivedStorage[12];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[12] = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t sdpsession_handleTransportSessionDisconnected(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 133);
  FigSimpleMutexUnlock();
  if (gLogCategory_APSenderSessionSDP <= 50 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    sdpsession_handleTransportSessionDisconnected_cold_1(v4, a2, v5);
  }

  sdpsession_invalidateTransportControlStream(a2, 1);
  v6 = kAPSenderSessionState_InProgress;
  if (!v4)
  {
    v6 = kAPSenderSessionState_Starting;
  }

  v7 = *v6;

  return sdpsession_postFailedNotificationAsync(a2, 0xFFFFBF1B, v7);
}

uint64_t sdpsession_postFailedNotificationAsync(const void *a1, unsigned int a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  return APSDispatchAsyncFHelper();
}

void sdpsession_postFailedNotificationCallback(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  CMBaseObjectGetDerivedStorage();
  v4 = CFGetAllocator(v2);
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    CFDictionarySetInt64();
    CFDictionarySetValue(v6, @"SessionState", v3);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v6);
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v7 = *a1;

  CFRelease(v7);
}

uint64_t sdpsession_ensureTransportControlStreamCreated(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 80))
  {
    sdpsession_ensureTransportControlStreamCreated_cold_1();
    return 4294895467;
  }

  v3 = DerivedStorage;
  v4 = (DerivedStorage + 88);
  if (*(DerivedStorage + 88))
  {
    return 0;
  }

  v6 = *(DerivedStorage + 16);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v7)
  {
    v5 = 4294954514;
LABEL_28:
    APSLogErrorAt();
    return v5;
  }

  v8 = v7(v6, 1668575852, 0, v4);
  if (v8)
  {
    v5 = v8;
    goto LABEL_28;
  }

  v9 = *v4;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v10)
  {
    v5 = 4294954514;
    goto LABEL_28;
  }

  v11 = v10(v9, sdpsession_controlStreamMessageCallback, 0, a1);
  if (v11)
  {
    v5 = v11;
    goto LABEL_28;
  }

  v12 = *MEMORY[0x277CBECE8];
  ShortVersionLength = APSVersionUtilsGetShortVersionLength();
  v14 = CFStringCreateWithFormat(v12, 0, @"AirPlay/%.*s", ShortVersionLength, "920.10.1");
  if (!v14)
  {
    sdpsession_ensureTransportControlStreamCreated_cold_3();
    return 4294960568;
  }

  v15 = v14;
  v16 = APSGetFBOPropertyInt64();
  CMBaseObject = FigTransportStreamGetCMBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v18)
  {
    v18(CMBaseObject, *MEMORY[0x277CE50B8], v15);
  }

  v19 = FigTransportStreamGetCMBaseObject();
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v20)
  {
    v20(v19, *MEMORY[0x277CE50C0], @"iTunes");
  }

  v21 = *(v3 + 104);
  v22 = FigTransportStreamGetCMBaseObject();
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v23)
  {
    v23(v22, *MEMORY[0x277CE5070], v21);
  }

  v24 = *v4;
  if (v16)
  {
    v25 = MEMORY[0x277CBED28];
  }

  else
  {
    v25 = MEMORY[0x277CBED10];
  }

  VTable = CMBaseObjectGetVTable();
  v29 = *(VTable + 8);
  v28 = VTable + 8;
  v30 = *(v29 + 56);
  if (v30)
  {
    v28 = v30(v24, *MEMORY[0x277CE50B0], *v25);
  }

  APSenderSessionMessageSendTimeout(v28, v27);
  APSSetFBOPropertyInt64();
  if ((!*(v3 + 112) || !*(v3 + 120)) && gLogCategory_APSenderSessionSDP <= 60 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    sdpsession_ensureTransportControlStreamCreated_cold_2(a1);
  }

  APSSetFBOPropertyInt64();
  APSSetFBOPropertyInt64();
  CFRelease(v15);
  return 0;
}

__CFDictionary *sdpsession_copyShowInfo(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = Mutable;
  v5 = *MEMORY[0x277CBED28];
  v6 = *MEMORY[0x277CBED10];
  if (*(DerivedStorage + 132))
  {
    v7 = *MEMORY[0x277CBED28];
  }

  else
  {
    v7 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"isConnected", v7);
  if (*(DerivedStorage + 133))
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  CFDictionarySetValue(v4, @"isSessionStarted", v8);
  if (*(DerivedStorage + 16))
  {
    CMBaseObject = FigTransportSessionGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v11 = v10(CMBaseObject, *MEMORY[0x277CE4FA8], v2, &value);
      if (!v11)
      {
        CFDictionarySetValue(v4, @"TransportSessionInfo", value);
        goto LABEL_11;
      }
    }

    else
    {
      v11 = 4294954514;
    }

    sdpsession_copyShowInfo_cold_1(v11);
  }

LABEL_11:
  if (value)
  {
    CFRelease(value);
  }

  return v4;
}

uint64_t sdpsession_controlStreamMessageCallback(const void *a1, unsigned int a2, uint64_t a3, const void *a4)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a4);
  CFRetain(a1);
  return APSDispatchAsyncFHelper();
}

void sdpsession_controlStreamMessageCallbackInternal(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = *(a1 + 16);
  if (v2 != 1651470958)
  {
    if (v2 != 1684628836)
    {
      if (gLogCategory_APSenderSessionSDP > 50)
      {
        goto LABEL_12;
      }

      if (gLogCategory_APSenderSessionSDP == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v2 = *(a1 + 16);
      }

      LogPrintF(&gLogCategory_APSenderSessionSDP, "void sdpsession_controlStreamMessageCallbackInternal(void *)", 33554482, "Received unhandled message %'C from control stream.\n", v2);
      goto LABEL_12;
    }

    if (*a1)
    {
      CFRetain(*a1);
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      CFRetain(v3);
    }

    APSDispatchAsyncFHelper();
  }

LABEL_12:
  CFRelease(*a1);
  v4 = *(a1 + 8);

  CFRelease(v4);
}

void sdpsession_handleTransportStreamDisconnected(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 90 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    sdpsession_handleTransportStreamDisconnected_cold_1(a1, v2, v3);
  }

  FigSimpleMutexLock();
  if (a1[1] == *(DerivedStorage + 88))
  {
    FigSimpleMutexUnlock();
    sdpsession_invalidateTransportControlStream(*a1, 1);
    sdpsession_postFailedNotificationAsync(*a1, 0xFFFFBF1B, @"InProgress");
  }

  else
  {
    if (gLogCategory_APSenderSessionSDP <= 50 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
    {
      sdpsession_handleTransportStreamDisconnected_cold_2();
    }

    FigSimpleMutexUnlock();
    APSLogErrorAt();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = a1[1];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t sdpsession_IsConnected(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionSDP, "Boolean sdpsession_IsConnected(APSenderSessionRef)", 33554462, "[%{ptr}] %###s %@.\n", a1, "Boolean sdpsession_IsConnected(APSenderSessionRef)", *DerivedStorage);
  }

  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 132);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t sdpsession_IsActive(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionSDP, "Boolean sdpsession_IsActive(APSenderSessionRef)", 33554462, "[%{ptr}] %###s %@.\n", a1, "Boolean sdpsession_IsActive(APSenderSessionRef)", *DerivedStorage);
  }

  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 133);
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t sdpsession_EnsureStarted(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSenderSessionSDP, "OSStatus sdpsession_EnsureStarted(APSenderSessionRef)", 33554462, "[%{ptr}] %###s %@.\n", a1, "OSStatus sdpsession_EnsureStarted(APSenderSessionRef)", *DerivedStorage);
  }

  return APSDispatchSyncTask();
}

uint64_t sdpsession_CreateTransportStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    v7 = 4294954514;
LABEL_5:
    APSLogErrorAt();
    return v7;
  }

  v7 = v6(v5, a2, a3);
  if (v7)
  {
    goto LABEL_5;
  }

  return v7;
}

uint64_t sdpsession_CreateTransportStreamWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 16);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v8)
  {
    v9 = 4294954514;
LABEL_5:
    APSLogErrorAt();
    return v9;
  }

  v9 = v8(v7, a2, a3, a4);
  if (v9)
  {
    goto LABEL_5;
  }

  return v9;
}

uint64_t sdpsession_ensureStartedInternal(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v14 = 0;
  v2 = sdpsession_ensureTransportControlStreamResumedSync(a1);
  if (v2)
  {
    v8 = v2;
    sdpsession_ensureStartedInternal_cold_1(v2);
    return v8;
  }

  sdpsession_copyTransportControlStream(a1, &v14);
  v3 = v14;
  if (!v14)
  {
    sdpsession_ensureStartedInternal_cold_6();
    return 4294895475;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v4)
  {
    v5 = v4(v3, 1635087464, 0, 0);
    if (!v5)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 49))
      {
LABEL_23:
        v8 = 0;
        goto LABEL_24;
      }

      v7 = DerivedStorage;
      if (gLogCategory_APSenderSessionSDP <= 40 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APSenderSessionSDP, "OSStatus sdpsession_startNetworkClock(APSenderSessionRef)", 33554472, "[%{ptr}] <AirPlayClock> %###s: Starting network clock [%{ptr}] for sdpsession startup", a1, "OSStatus sdpsession_startNetworkClock(APSenderSessionRef)", *(v7 + 32));
      }

      v9 = *(v7 + 32);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v10)
      {
        v11 = v10(v9, a1);
        v15 = v11;
        if (!v11)
        {
          *(v7 + 49) = 1;
          v12 = APSGetFBOPropertyInt64();
          if (v15)
          {
            sdpsession_ensureStartedInternal_cold_2(v15);
          }

          else
          {
            *(v7 + 64) = v12;
            if (gLogCategory_APSenderSessionSDP > 50)
            {
              goto LABEL_22;
            }

            if (gLogCategory_APSenderSessionSDP != -1)
            {
              goto LABEL_17;
            }

            if (_LogCategory_Initialize())
            {
              v12 = *(v7 + 64);
LABEL_17:
              LogPrintF(&gLogCategory_APSenderSessionSDP, "OSStatus sdpsession_startNetworkClock(APSenderSessionRef)", 33554482, "Client started senderNetworkClock NTP server on port %d\n", v12);
            }
          }

LABEL_22:
          if (v15)
          {
            if (gLogCategory_APSenderSessionSDP <= 90)
            {
              sdpsession_ensureStartedInternal_cold_4(gLogCategory_APSenderSessionSDP, v15, &v15);
            }

            sdpsession_stopNetworkClock(a1);
            v8 = v15;
            if (v15)
            {
              sdpsession_ensureStartedInternal_cold_5(v15);
            }

            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v11 = 4294954514;
        v15 = -12782;
      }

      sdpsession_ensureStartedInternal_cold_3(v11);
      goto LABEL_22;
    }

    v8 = v5;
  }

  else
  {
    v8 = 4294954514;
  }

  APSLogErrorAt();
LABEL_24:
  CFRelease(v3);
  return v8;
}

uint64_t sdpsession_copyTransportControlStream(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 88);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a2 = v4;

  return FigSimpleMutexUnlock();
}

uint64_t sdpsession_setupStreamCreatingResponseInternal(const void **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    sdpsession_setupStreamCreatingResponseInternal_cold_1(a1, DerivedStorage, v2);
  }

  if (*(a1 + 2) != 96)
  {
    v5 = 4294895471;
    sdpsession_setupStreamCreatingResponseInternal_cold_2();
    goto LABEL_85;
  }

  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 133);
  FigSimpleMutexUnlock();
  if (!v4)
  {
    v7 = sdpsession_ensureTransportControlStreamResumedSync(*a1);
    if (v7)
    {
      v5 = v7;
      sdpsession_setupStreamCreatingResponseInternal_cold_3(v7);
      goto LABEL_85;
    }

    v8 = *a1;
    LODWORD(v48) = 0;
    v9 = CMBaseObjectGetDerivedStorage();
    v50 = 0;
    v51 = 0;
    FigSimpleMutexLock();
    v10 = *(v9 + 96);
    if (v10)
    {
      v11 = CFRetain(v10);
    }

    else
    {
      v11 = 0;
    }

    cf = v11;
    FigSimpleMutexUnlock();
    v12 = MEMORY[0x277CBECE8];
    if (v11)
    {
LABEL_41:
      CFRelease(v11);
LABEL_42:
      if (v51)
      {
        CFRelease(v51);
      }

      if (v50)
      {
        CFRelease(v50);
      }

      v5 = v48;
      if (v48)
      {
        sdpsession_setupStreamCreatingResponseInternal_cold_12(v48);
        goto LABEL_85;
      }

      v30 = CMBaseObjectGetDerivedStorage();
      v50 = 0;
      v51 = 0;
      v48 = 0;
      cf = 0;
      if (*(v30 + 56))
      {
        v5 = 0;
        goto LABEL_63;
      }

      v31 = v30;
      FigSimpleMutexLock();
      v32 = *(v31 + 96);
      if (v32)
      {
        v33 = CFRetain(v32);
      }

      else
      {
        v33 = 0;
      }

      FigSimpleMutexUnlock();
      v34 = *v12;
      v35 = APKeyHolderSharedKeyCreate(*v12, 0, 0, 0, &v50);
      if (v35)
      {
        v5 = v35;
        sdpsession_setupStreamCreatingResponseInternal_cold_13(v35);
      }

      else
      {
        v36 = v50;
        v37 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v37)
        {
          v38 = v37(v36, &cf, &v48);
          if (!v38)
          {
            v39 = APKeyHolderSharedKeyCreate(v34, v33, cf, v48, &v51);
            if (v39)
            {
              v5 = v39;
              sdpsession_setupStreamCreatingResponseInternal_cold_14(v39);
            }

            else
            {
              v5 = *(v31 + 56);
              v40 = v51;
              *(v31 + 56) = v51;
              if (v40)
              {
                CFRetain(v40);
              }

              if (v5)
              {
                CFRelease(v5);
                v5 = 0;
              }
            }

            goto LABEL_61;
          }

          v5 = v38;
        }

        else
        {
          v5 = 4294954514;
        }

        APSLogErrorAt();
      }

LABEL_61:
      if (v33)
      {
        CFRelease(v33);
      }

LABEL_63:
      if (v51)
      {
        CFRelease(v51);
      }

      if (v50)
      {
        CFRelease(v50);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v48)
      {
        CFRelease(v48);
      }

      if (v5)
      {
        APSLogErrorAt();
      }

      else
      {
        v41 = sdpsession_sendAnnounce(*a1, a1[2]);
        if (v41)
        {
          v5 = v41;
          sdpsession_setupStreamCreatingResponseInternal_cold_15(v41);
        }

        else
        {
          v42 = sdpsession_sendSetup(*a1, a1[2], a1[3]);
          if (v42)
          {
            v5 = v42;
            sdpsession_setupStreamCreatingResponseInternal_cold_16(v42);
          }

          else
          {
            v43 = sdpsession_ensureInitialVolumeFetched(*a1);
            if (v43)
            {
              v5 = v43;
              sdpsession_setupStreamCreatingResponseInternal_cold_17(v43);
            }

            else
            {
              started = sdpsession_startSession(*a1);
              if (started)
              {
                v5 = started;
                sdpsession_setupStreamCreatingResponseInternal_cold_18(started);
              }

              else
              {
                v45 = sdpsession_sendPendingSetVolumeCommand(*a1);
                if (v45)
                {
                  v5 = v45;
                  sdpsession_setupStreamCreatingResponseInternal_cold_19(v45);
                }

                else
                {
                  v46 = sdpsession_copyCryptor(*a1, a1[4]);
                  if (v46)
                  {
                    v5 = v46;
                    sdpsession_setupStreamCreatingResponseInternal_cold_20(v46);
                  }

                  else
                  {
                    v47 = sdpsession_ensureKeepAliveResumed(*a1);
                    if (!v47)
                    {
                      if (gLogCategory_APSenderSessionSDP <= 40 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
                      {
                        sdpsession_setupStreamCreatingResponseInternal_cold_22(a1, DerivedStorage, (a1 + 1));
                      }

                      CMNotificationCenterGetDefaultLocalCenter();
                      FigDispatchAsyncPostNotification();
                      return 0;
                    }

                    v5 = v47;
                    sdpsession_setupStreamCreatingResponseInternal_cold_21(v47);
                  }
                }
              }
            }
          }
        }
      }

LABEL_85:
      sdpsession_postFailedNotificationAsync(*a1, v5, @"Starting");
      sdpsession_teardownTransportControlStream(*a1);
      return v5;
    }

    sdpsession_copyTransportControlStream(v8, &v50);
    LODWORD(v48) = 0;
    v13 = v50;
    if (!v50)
    {
      sdpsession_setupStreamCreatingResponseInternal_cold_11();
      goto LABEL_40;
    }

    v16 = APSGetFBOPropertyInt64();
    switch(v16)
    {
      case 8:
        v24 = APAuthenticationClientMFiCreate(*v12, v13, &cf);
        LODWORD(v48) = v24;
        if (v24)
        {
          sdpsession_setupStreamCreatingResponseInternal_cold_6(v24);
          goto LABEL_40;
        }

        break;
      case 4:
        v23 = APAuthenticationClientFairPlayCreate(*v12, v13, &cf);
        LODWORD(v48) = v23;
        if (v23)
        {
          sdpsession_setupStreamCreatingResponseInternal_cold_5(v23);
          goto LABEL_40;
        }

        break;
      case 1:
        APEndpointDescriptionGetCMBaseObject();
        v18 = v17;
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v19)
        {
          v20 = *v12;
          v21 = v19(v18, @"MACAddress", *v12, &v51);
          LODWORD(v48) = v21;
          if (!v21)
          {
            v22 = APAuthenticationClientRSACreate(v20, v13, v51, &cf);
            LODWORD(v48) = v22;
            if (v22)
            {
              sdpsession_setupStreamCreatingResponseInternal_cold_7(v22);
              goto LABEL_40;
            }

            break;
          }
        }

        else
        {
          v21 = 4294954514;
          LODWORD(v48) = -12782;
        }

        sdpsession_setupStreamCreatingResponseInternal_cold_9(v21);
        goto LABEL_40;
      default:
        if (gLogCategory_APSenderSessionSDP <= 90 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
        {
          sdpsession_setupStreamCreatingResponseInternal_cold_10(v16, v14, v15);
        }

        LODWORD(v48) = -71824;
LABEL_40:
        v11 = cf;
        if (!cf)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
    }

    v25 = cf;
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v26)
    {
      v27 = v26(v25);
      LODWORD(v48) = v27;
      if (!v27)
      {
        FigSimpleMutexLock();
        v28 = *(v9 + 96);
        v29 = cf;
        *(v9 + 96) = cf;
        if (v29)
        {
          CFRetain(v29);
        }

        if (v28)
        {
          CFRelease(v28);
        }

        FigSimpleMutexUnlock();
        goto LABEL_40;
      }
    }

    else
    {
      v27 = 4294954514;
      LODWORD(v48) = -12782;
    }

    sdpsession_setupStreamCreatingResponseInternal_cold_8(v27);
    goto LABEL_40;
  }

  return 0;
}

uint64_t sdpsession_sendAnnounce(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  Base64EncodedKeyAndIV = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  uuid = 0;
  v7 = 0uLL;
  memset(v54, 0, sizeof(v54));
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  *cStr = 0u;
  v47 = 0u;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  if (gLogCategory_APSenderSessionSDP <= 30)
  {
    if (gLogCategory_APSenderSessionSDP != -1 || (DerivedStorage = _LogCategory_Initialize(), v7 = 0uLL, DerivedStorage))
    {
      sdpsession_sendAnnounce_cold_1(DerivedStorage, v4, v5);
      v7 = 0uLL;
    }
  }

  theData = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  *buffer = 0;
  v42 = 0;
  v36 = v7;
  v37 = v7;
  sdpsession_copyTransportControlStream(a1, &v32);
  Base64EncodedKeyAndIV = 0;
  v8 = v32;
  if (!v32)
  {
    sdpsession_sendAnnounce_cold_13();
    Mutable = 0;
    goto LABEL_44;
  }

  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (!Mutable)
  {
    sdpsession_sendAnnounce_cold_12();
    goto LABEL_44;
  }

  CMBaseObject = FigTransportSessionGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    v13 = 4294954514;
    Base64EncodedKeyAndIV = -12782;
    goto LABEL_29;
  }

  v13 = v12(CMBaseObject, *MEMORY[0x277CC1B00], v9, &uuid);
  Base64EncodedKeyAndIV = v13;
  if (v13)
  {
LABEL_29:
    sdpsession_sendAnnounce_cold_11(v13);
    goto LABEL_44;
  }

  v14 = *&CFUUIDGetUUIDBytes(uuid);
  v15 = FigTransportStreamGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    v17 = 4294954514;
    Base64EncodedKeyAndIV = -12782;
    goto LABEL_31;
  }

  v17 = v16(v15, *MEMORY[0x277CE5030], v9, &theData);
  Base64EncodedKeyAndIV = v17;
  if (v17)
  {
LABEL_31:
    sdpsession_sendAnnounce_cold_10(v17);
    goto LABEL_44;
  }

  if (CFDataGetLength(theData) != 28)
  {
    sdpsession_sendAnnounce_cold_2();
    goto LABEL_44;
  }

  v18 = theData;
  v56.length = CFDataGetLength(theData);
  v56.location = 0;
  CFDataGetBytes(v18, v56, buffer);
  v19 = SockAddrToString();
  Base64EncodedKeyAndIV = v19;
  if (v19)
  {
    sdpsession_sendAnnounce_cold_3(v19);
    goto LABEL_44;
  }

  if (buffer[1] == 2)
  {
    v20 = "IP4";
  }

  else
  {
    if (buffer[1] != 30)
    {
      goto LABEL_21;
    }

    v20 = "IP6";
  }

  APSGetDeviceNameCString();
  CFStringAppendCString(Mutable, "v=0\r\n", 0x8000100u);
  CFStringAppendFormat(Mutable, 0, @"o=AirTunes %llu 0 IN %s %s\r\n", bswap64(v14), v20, v54);
  CFStringAppendCString(Mutable, "s=AirTunes\r\n", 0x8000100u);
  CFStringAppendCString(Mutable, "i=", 0x8000100u);
  CFStringAppendCString(Mutable, cStr, 0x600u);
  CFStringAppendCString(Mutable, "\r\n", 0x8000100u);
  CFStringAppendFormat(Mutable, 0, @"c=IN %s %s\r\n", v20, v54);
  CFStringAppendCString(Mutable, "t=0 0\r\n", 0x8000100u);
  CFStringAppendFormat(Mutable, 0, @"m=audio 0 RTP/AVP %u\r\n", 96);
  CFDictionaryGetInt64();
  if (Base64EncodedKeyAndIV)
  {
    sdpsession_sendAnnounce_cold_4(Base64EncodedKeyAndIV);
    goto LABEL_44;
  }

  v21 = APAudioFormatToASBD();
  Base64EncodedKeyAndIV = v21;
  if (v21)
  {
    sdpsession_sendAnnounce_cold_5(v21);
    goto LABEL_44;
  }

  if (DWORD2(v36) != 1634492771)
  {
    if (DWORD2(v36) == 1819304813)
    {
      CFStringAppendFormat(Mutable, 0, @"a=rtpmap:%u L%u/%u/%u\r\n", 96, v35, *&v36, HIDWORD(v37));
      goto LABEL_24;
    }

LABEL_21:
    v22 = -71821;
LABEL_22:
    Base64EncodedKeyAndIV = v22;
    goto LABEL_44;
  }

  CFStringAppendFormat(Mutable, 0, @"a=rtpmap:%u AppleLossless\r\n", 96);
  CFStringAppendFormat(Mutable, 0, @"a=fmtp:%u %u 0 %u 40 10 14 %u 255 0 0 %u\r\n", 96, DWORD1(v37), v35, HIDWORD(v37), *&v36);
LABEL_24:
  AuthenticationType = APSKeyHolderGetAuthenticationType(*(v6 + 56));
  if (AuthenticationType == 8)
  {
    v24 = "mfiaeskey";
    goto LABEL_34;
  }

  if (AuthenticationType == 4)
  {
    v24 = "fpaeskey";
    goto LABEL_34;
  }

  if (AuthenticationType != 1)
  {
    v22 = -71824;
    goto LABEL_22;
  }

  v24 = "rsaaeskey";
LABEL_34:
  Base64EncodedKeyAndIV = sdpsession_makeBase64EncodedKeyAndIV(*(v6 + 56), &v34, &v33);
  if (Base64EncodedKeyAndIV)
  {
    APSLogErrorAt();
    v25 = v34;
  }

  else
  {
    v25 = v34;
    CFStringAppendFormat(Mutable, 0, @"a=%s:%s\r\n", v24, v34);
    CFStringAppendFormat(Mutable, 0, @"a=aesiv:%s\r\n", v33);
    Int64 = CFDictionaryGetInt64();
    if (Base64EncodedKeyAndIV)
    {
      sdpsession_sendAnnounce_cold_6(Base64EncodedKeyAndIV);
    }

    else
    {
      v27 = CFDictionaryGetInt64();
      if (Base64EncodedKeyAndIV)
      {
        sdpsession_sendAnnounce_cold_7(Base64EncodedKeyAndIV);
      }

      else
      {
        CFStringAppendFormat(Mutable, 0, @"a=min-latency:%u\r\n", Int64);
        CFStringAppendFormat(Mutable, 0, @"a=max-latency:%u\r\n", v27);
        if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
        {
          sdpsession_sendAnnounce_cold_8(Mutable, v28, v29);
        }

        v30 = sdpsession_sendMessageCreatingReply(v8, 1634627171, Mutable, 0);
        Base64EncodedKeyAndIV = v30;
        if (v30)
        {
          sdpsession_sendAnnounce_cold_9(v30);
        }
      }
    }
  }

  if (v25)
  {
    free(v25);
  }

LABEL_44:
  if (v33)
  {
    free(v33);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (uuid)
  {
    CFRelease(uuid);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return Base64EncodedKeyAndIV;
}

uint64_t sdpsession_sendSetup(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  v24 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage;
  v22 = 0;
  theBuffer = 0;
  if (gLogCategory_APSenderSessionSDP <= 30)
  {
    if (gLogCategory_APSenderSessionSDP != -1 || (DerivedStorage = _LogCategory_Initialize(), DerivedStorage))
    {
      sdpsession_sendSetup_cold_1(DerivedStorage, v6, v7);
    }
  }

  sdpsession_copyTransportControlStream(a1, &v22);
  v24 = 0;
  v9 = v22;
  if (!v22)
  {
    sdpsession_sendSetup_cold_17();
    goto LABEL_40;
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (!Mutable)
  {
    sdpsession_sendSetup_cold_16();
    goto LABEL_40;
  }

  v12 = Mutable;
  CFStringAppendFormat(Mutable, 0, @"%s;unicast;mode=record;timing_port=%d", "RTP/AVP/UDP", *(v8 + 64));
  Int64 = CFDictionaryGetInt64();
  if (v24)
  {
    sdpsession_sendSetup_cold_2(v24);
    goto LABEL_39;
  }

  CFStringAppendFormat(v12, 0, @";control_port=%d", Int64);
  v14 = sdpsession_sendMessageCreatingReply(v9, 1936942192, v12, &theBuffer);
  v24 = v14;
  if (v14)
  {
    sdpsession_sendSetup_cold_3(v14);
    goto LABEL_39;
  }

  totalLengthOut = 0;
  v32 = 0;
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (DataPointer)
  {
    v18 = DataPointer;
    sdpsession_sendSetup_cold_4(DataPointer);
    goto LABEL_15;
  }

  if (totalLengthOut != lengthAtOffsetOut)
  {
    sdpsession_sendSetup_cold_5();
    goto LABEL_47;
  }

  v16 = HTTPParseParameter();
  if (v16)
  {
    v18 = v16;
    sdpsession_sendSetup_cold_6(v16);
    goto LABEL_15;
  }

  if (strnicmpx())
  {
    v18 = -71826;
    if (gLogCategory_APSenderSessionSDP <= 90 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
    {
      sdpsession_sendSetup_cold_7(&totalLengthOut, &dataPointerOut, v17);
    }

    goto LABEL_15;
  }

  if (HTTPParseParameter())
  {
LABEL_46:
    sdpsession_sendSetup_cold_14();
LABEL_47:
    v18 = -71821;
LABEL_15:
    v24 = v18;
    APSLogErrorAt();
    goto LABEL_39;
  }

  do
  {
    if (!strnicmpx())
    {
      if (SNScanF(v26, v25, "%u", &v32 + 4) == 1)
      {
        if (SHIDWORD(v32) > 0)
        {
          continue;
        }

        sdpsession_sendSetup_cold_15();
        goto LABEL_53;
      }

      sdpsession_sendSetup_cold_11();
LABEL_51:
      v18 = -71827;
      goto LABEL_15;
    }

    if (!strnicmpx())
    {
      if (SNScanF(v26, v25, "%u", &v32) == 1)
      {
        if (v32 > 0)
        {
          continue;
        }

        sdpsession_sendSetup_cold_10();
LABEL_53:
        v18 = -71828;
        goto LABEL_15;
      }

      sdpsession_sendSetup_cold_9();
      goto LABEL_51;
    }

    if (strnicmpx() && strnicmpx() && strnicmpx() && strnicmpx() && strnicmpx() && strnicmpx() && gLogCategory_APSenderSessionSDP <= 40 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
    {
      sdpsession_sendSetup_cold_8(&v27, &v28, &v26);
    }
  }

  while (!HTTPParseParameter());
  if (SHIDWORD(v32) <= 0)
  {
    goto LABEL_46;
  }

  if (v32 <= 0)
  {
    sdpsession_sendSetup_cold_13();
    goto LABEL_47;
  }

  v24 = 0;
  v19 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v19)
  {
    v20 = v19;
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    *a3 = v20;
  }

  else
  {
    sdpsession_sendSetup_cold_12();
  }

LABEL_39:
  CFRelease(v12);
LABEL_40:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v24;
}

uint64_t sdpsession_ensureInitialVolumeFetched(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  v11 = 0;
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    sdpsession_ensureInitialVolumeFetched_cold_1(DerivedStorage, a1, v2);
  }

  if (*(DerivedStorage + 48))
  {
    return 0;
  }

  if (!APSGetFBOPropertyInt64())
  {
    if (gLogCategory_APSenderSessionSDP <= 50 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
    {
      sdpsession_ensureInitialVolumeFetched_cold_5(a1, v5, v6);
    }

    *(DerivedStorage + 48) = 1;
    FigSimpleMutexLock();
    *(DerivedStorage + 124) = -998653952;
    FigSimpleMutexUnlock();
    return 0;
  }

  sdpsession_copyTransportControlStream(a1, &v11);
  v7 = v11;
  if (v11)
  {
    InitialVolume = APSenderSessionUtilityFetchInitialVolume(v11, &v12);
    v4 = InitialVolume;
    if (InitialVolume)
    {
      sdpsession_ensureInitialVolumeFetched_cold_2(InitialVolume);
    }

    else
    {
      if (gLogCategory_APSenderSessionSDP <= 50 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
      {
        sdpsession_ensureInitialVolumeFetched_cold_3(&v12, a1, v9);
      }

      FigSimpleMutexLock();
      *(DerivedStorage + 124) = v12;
      FigSimpleMutexUnlock();
      *(DerivedStorage + 48) = 1;
    }

    CFRelease(v7);
  }

  else
  {
    sdpsession_ensureInitialVolumeFetched_cold_4();
    return 4294895475;
  }

  return v4;
}

uint64_t sdpsession_startSession(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    sdpsession_startSession_cold_1(a1, v2, v3);
  }

  sdpsession_copyTransportControlStream(a1, &v9);
  v5 = v9;
  if (!v9)
  {
    sdpsession_startSession_cold_2();
    return 4294895475;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    v7 = 4294954514;
    goto LABEL_9;
  }

  v7 = v6(v5, 1919119972, 0, 0);
  if (v7)
  {
LABEL_9:
    APSLogErrorAt();
    goto LABEL_10;
  }

  FigSimpleMutexLock();
  *(DerivedStorage + 133) = 1;
  FigSimpleMutexUnlock();
LABEL_10:
  CFRelease(v5);
  return v7;
}

uint64_t sdpsession_sendPendingSetVolumeCommand(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  cf = 0;
  sdpsession_copyTransportControlStream(a1, &v11);
  v3 = v11;
  if (v11)
  {
    FigSimpleMutexLock();
    v4 = *(DerivedStorage + 128);
    *(DerivedStorage + 128) = -998653952;
    FigSimpleMutexUnlock();
    if (APSVolumeDBValuesAreNoticeablyDifferent())
    {
      if (gLogCategory_APSenderSessionSDP <= 50)
      {
        sdpsession_sendPendingSetVolumeCommand_cold_4(gLogCategory_APSenderSessionSDP, a1, v5);
      }

      Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
      if (Mutable)
      {
        v7 = Mutable;
        CFStringAppendFormat(Mutable, 0, @"volume: %f\r\n", v4);
        BlockBufferWithCFString = FigCreateBlockBufferWithCFString();
        if (BlockBufferWithCFString)
        {
          v9 = BlockBufferWithCFString;
          sdpsession_sendPendingSetVolumeCommand_cold_1(BlockBufferWithCFString);
        }

        else
        {
          sdpsession_sendPendingSetVolumeCommand_cold_3(&cf, v3, &v13);
          v9 = v13;
        }

        CFRelease(v7);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        sdpsession_sendPendingSetVolumeCommand_cold_2();
        v9 = 4294895476;
      }
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v9 = 4294895475;
    sdpsession_sendPendingSetVolumeCommand_cold_5();
  }

  return v9;
}

uint64_t sdpsession_copyCryptor(uint64_t a1, CFTypeRef *a2)
{
  v11 = 0;
  cf = 0;
  v3 = *(CMBaseObjectGetDerivedStorage() + 56);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    v9 = 4294954514;
LABEL_10:
    APSLogErrorAt();
    goto LABEL_11;
  }

  v5 = v4(v3, &cf, &v11);
  if (v5)
  {
    v9 = v5;
    goto LABEL_10;
  }

  v6 = APSCryptorCBCCreate();
  if (v6)
  {
    v9 = v6;
    sdpsession_copyCryptor_cold_1(v6);
  }

  else
  {
    if (gLogCategory_APSenderSessionSDP <= 40)
    {
      if (gLogCategory_APSenderSessionSDP != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        sdpsession_copyCryptor_cold_2(v6, v7, v8);
      }
    }

    v9 = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v9;
}

uint64_t sdpsession_ensureKeepAliveResumed(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = APSSetFBOPropertyInt64();
  if (v2)
  {
    v5 = v2;
    sdpsession_ensureKeepAliveResumed_cold_1(v2);
    return v5;
  }

  v3 = *(DerivedStorage + 16);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    v5 = 4294954514;
LABEL_6:
    APSLogErrorAt();
    return v5;
  }

  v5 = v4(v3);
  if (v5)
  {
    goto LABEL_6;
  }

  return v5;
}

uint64_t APSKeyHolderGetAuthenticationType(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t sdpsession_makeBase64EncodedKeyAndIV(uint64_t a1, void **a2, void *a3)
{
  v14 = 0;
  theData = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    v12 = 4294954514;
LABEL_8:
    APSLogErrorAt();
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v7 = v6(a1, &theData, &v14);
  if (v7)
  {
    v12 = v7;
    goto LABEL_8;
  }

  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  v8 = Base64EncodeCopyEx();
  if (v8)
  {
    v12 = v8;
    sdpsession_makeBase64EncodedKeyAndIV_cold_1(v8);
    goto LABEL_9;
  }

  Length = CFDataGetLength(v14);
  v10 = malloc_type_malloc((4 * ((Length + 2) / 3)) | 1, 0x100004077774924uLL);
  if (v10)
  {
    CFDataGetBytePtr(v14);
    CFDataGetLength(v14);
    CFDataGetLength(v14);
    v11 = Base64EncodeEx();
    v12 = v11;
    if (!v11)
    {
      *v10 = 0;
      *a2 = 0;
      *a3 = v10;
      goto LABEL_12;
    }

    sdpsession_makeBase64EncodedKeyAndIV_cold_2(v11);
  }

  else
  {
    sdpsession_makeBase64EncodedKeyAndIV_cold_3();
    v12 = 4294895476;
  }

LABEL_10:
  if (v10)
  {
    free(v10);
  }

LABEL_12:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v12;
}

uint64_t sdpsession_sendMessageCreatingReply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    BlockBufferWithCFString = FigCreateBlockBufferWithCFString();
    if (BlockBufferWithCFString)
    {
      v9 = BlockBufferWithCFString;
      sdpsession_sendMessageCreatingReply_cold_1(BlockBufferWithCFString);
      return v9;
    }
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v8)
  {
    v9 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    return v9;
  }

  v9 = v8(a1, a2, 0, a4);
  if (v9)
  {
    goto LABEL_7;
  }

  return v9;
}

uint64_t sdpsession_teardownStreamInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionSDP <= 30 && (gLogCategory_APSenderSessionSDP != -1 || _LogCategory_Initialize()))
  {
    sdpsession_teardownStreamInternal_cold_1(a1, DerivedStorage, v2);
  }

  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 88);
  if (v4)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(DerivedStorage + 133);
  v7 = *(DerivedStorage + 80);
  FigSimpleMutexUnlock();
  if (*(a1 + 8) != 96)
  {
    sdpsession_teardownStreamInternal_cold_2();
    v11 = 4294895471;
    if (!v5)
    {
      return v11;
    }

    goto LABEL_17;
  }

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (!v8 && v5 != 0)
  {
    sdpsession_teardownStreamInternal_cold_3(v5, a1);
    v11 = 0;
LABEL_17:
    CFRelease(v5);
    return v11;
  }

  v11 = 0;
  if (v5)
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t APAuthenticationClientTokenCreate(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  cf = 0;
  if (a2)
  {
    APAuthenticationClientGetClassID(a1, a2);
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v8 = v5;
      APSLogErrorAt();
    }

    else
    {
      *CMBaseObjectGetDerivedStorage() = a2;
      CFRetain(a2);
      if (gLogCategory_APAuthenticationClientToken <= 50 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
      {
        APAuthenticationClientTokenCreate_cold_1(&cf, v6, v7);
      }

      v8 = 0;
      *a3 = cf;
    }
  }

  else
  {
    APAuthenticationClientTokenCreate_cold_2();
    return 4294895495;
  }

  return v8;
}

void tokenAuthentication_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  if (gLogCategory_APAuthenticationClientToken <= 50 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
  {
    tokenAuthentication_Finalize_cold_1(a1, v2, v3);
  }
}

__CFString *tokenAuthentication_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAuthenticationClientToken %p>", a1);
  return Mutable;
}

uint64_t tokenAuthentication_AuthenticateEndpoint(uint64_t a1)
{
  result = tokenAuthentication_authenticateEndpointInternal(a1);
  if (result == 409)
  {
    if (gLogCategory_APAuthenticationClientToken <= 50 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
    {
      tokenAuthentication_AuthenticateEndpoint_cold_1(a1, v3, v4);
    }

    return tokenAuthentication_authenticateEndpointInternal(a1);
  }

  return result;
}

uint64_t tokenAuthentication_authenticateEndpointInternal(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v44 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientToken <= 50 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
  {
    tokenAuthentication_authenticateEndpointInternal_cold_1(a1, v2, v3);
  }

  v5 = *DerivedStorage;
  *values = xmmword_27849C7F0;
  v54 = @"uuid";
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 3, MEMORY[0x277CBF128]);
  if (!v7)
  {
    APSLogErrorAt();
    v18 = 0;
    v17 = 0;
    v19 = 4294895496;
LABEL_72:
    APSLogErrorAt();
    v28 = 0;
    goto LABEL_73;
  }

  cf = 0;
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v11 = 0;
    LODWORD(v45) = -71800;
LABEL_75:
    APSLogErrorAt();
LABEL_79:
    v17 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  FigCFDictionarySetInt();
  CFDictionarySetValue(Mutable, @"tkrd", v7);
  v9 = tokenAuthentication_sendAuthSetupRequestCreatingReply(v5, Mutable, &cf);
  v10 = v9;
  if (v9)
  {
    tokenAuthentication_authenticateEndpointInternal_cold_2(v9);
    v11 = 0;
  }

  else
  {
    v11 = cf;
    cf = 0;
  }

  CFRelease(Mutable);
  if (cf)
  {
    CFRelease(cf);
  }

  LODWORD(v45) = v10;
  if (v10)
  {
    goto LABEL_75;
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  CFDataGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  Value = CFDictionaryGetValue(v11, @"pair");
  v15 = Value;
  if (Value)
  {
    v16 = CFGetTypeID(Value);
    if (v16 != CFDataGetTypeID())
    {
      tokenAuthentication_authenticateEndpointInternal_cold_5(&v45);
      goto LABEL_79;
    }
  }

  v17 = CFRetain(TypedValue);
  v18 = CFRetain(v13);
  v44 = v15;
  if (v15)
  {
    CFRetain(v15);
  }

LABEL_16:
  CFRelease(v7);
  if (v11)
  {
    CFRelease(v11);
  }

  v19 = v45;
  if (v45)
  {
    goto LABEL_72;
  }

  v20 = v44;
  cf = 0;
  p_cf = &cf;
  v51 = 0x2020000000;
  LOBYTE(v52) = 0;
  if (v44)
  {
    v21 = dispatch_semaphore_create(0);
    if (v21)
    {
      v22 = v21;
      v23 = [MEMORY[0x277D24E28] sharedManager];
      values[0] = MEMORY[0x277D85DD0];
      values[1] = 3221225472;
      v54 = __tokenAuthentication_verifyPairing_block_invoke;
      v55 = &unk_27849C810;
      v56 = v22;
      v57 = &cf;
      [v23 verifyPairingWithToken:v44 completionHandler:values];
      tokenAuthentication_authenticateEndpointInternal_cold_6(v22);
    }

    else
    {
      APSLogErrorAt();
      *(p_cf + 24) = 0;
    }
  }

  if (gLogCategory_APAuthenticationClientToken <= 50 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
  {
    if (*(p_cf + 24))
    {
      v24 = "YES";
    }

    else
    {
      v24 = "NO";
    }

    LogPrintF(&gLogCategory_APAuthenticationClientToken, "Boolean tokenAuthentication_verifyPairing(CFDataRef)", 33554482, "tokenVerifyPairing verified=%s\n", v24);
  }

  v25 = *(p_cf + 24);
  _Block_object_dispose(&cf, 8);
  if (!v25)
  {
    if (!v18 || ([MEMORY[0x277D24E30] isTokenValidForFeatures:2 token:v18] & 1) == 0)
    {
      tokenAuthentication_authenticateEndpointInternal_cold_18();
      v28 = 0;
      v29 = 0;
      v19 = 4294895494;
      goto LABEL_60;
    }

    cf = 0;
    p_cf = &cf;
    v51 = 0x2020000000;
    v52 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v30 = dispatch_semaphore_create(0);
    if (v30)
    {
      v31 = v30;
      v32 = [MEMORY[0x277D24E30] sharedManager];
      values[0] = MEMORY[0x277D85DD0];
      values[1] = 3221225472;
      v54 = __tokenAuthentication_rollAuthToken_block_invoke;
      v55 = &unk_27849C838;
      v57 = &v45;
      v58 = &cf;
      v56 = v31;
      [v32 requestActivationForAuthToken:v18 withUUID:v17 completionHandler:values];
      dispatch_semaphore_wait(v31, 0xFFFFFFFFFFFFFFFFLL);
      v28 = p_cf[3];
      dispatch_release(v31);
      v19 = *(v46 + 6);
    }

    else
    {
      APSLogErrorAt();
      v28 = 0;
      v19 = 4294895496;
      *(v46 + 6) = -71800;
    }

    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&cf, 8);
    if (v19)
    {
      tokenAuthentication_authenticateEndpointInternal_cold_7(v19);
    }

    else
    {
      if (!v28)
      {
        tokenAuthentication_authenticateEndpointInternal_cold_17();
        v28 = 0;
        goto LABEL_94;
      }

      if (v20)
      {
        v33 = 0;
        goto LABEL_42;
      }

      v34 = tokenAuthentication_generatePairingToken(&v44);
      v19 = v34;
      if (!v34)
      {
        v33 = v44;
        if (v44)
        {
LABEL_42:
          v35 = *DerivedStorage;
          values[0] = 0;
          v36 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v37 = v36;
          if (!v36)
          {
            APSLogErrorAt();
            v29 = 0;
            v19 = 4294895496;
            goto LABEL_84;
          }

          CFDictionarySetValue(v36, @"auth", v28);
          if (v33)
          {
            CFDictionarySetValue(v37, @"pair", v33);
          }

          v38 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!v38)
          {
            tokenAuthentication_authenticateEndpointInternal_cold_12(&cf);
            v29 = 0;
LABEL_51:
            CFRelease(v37);
LABEL_52:
            v19 = cf;
            if (!cf)
            {
              v41 = tokenAuthentication_confirmAuthTokenActivation(v29, v17);
              v19 = v41;
              if (v41)
              {
                tokenAuthentication_authenticateEndpointInternal_cold_13(v41);
                goto LABEL_60;
              }

              v42 = tokenAuthentication_savePairingToken(v44);
              v19 = v42;
              if (v42)
              {
                tokenAuthentication_authenticateEndpointInternal_cold_14(v42);
                goto LABEL_60;
              }

              goto LABEL_55;
            }

LABEL_84:
            APSLogErrorAt();
            goto LABEL_60;
          }

          FigCFDictionarySetInt();
          CFDictionarySetValue(v38, @"tkwr", v37);
          v39 = tokenAuthentication_sendAuthSetupRequestCreatingReply(v35, v38, values);
          LODWORD(cf) = v39;
          if (v39)
          {
            tokenAuthentication_authenticateEndpointInternal_cold_9(v39);
          }

          else if (values[0])
          {
            CFDataGetTypeID();
            v40 = CFDictionaryGetTypedValue();
            if (!cf)
            {
              v29 = CFRetain(v40);
              goto LABEL_50;
            }

            tokenAuthentication_authenticateEndpointInternal_cold_10(cf);
          }

          else
          {
            tokenAuthentication_authenticateEndpointInternal_cold_11(&cf);
          }

          v29 = 0;
LABEL_50:
          CFRelease(v37);
          CFRelease(v38);
          v37 = values[0];
          if (!values[0])
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

        tokenAuthentication_authenticateEndpointInternal_cold_16();
LABEL_94:
        v29 = 0;
        v19 = 4294895493;
        goto LABEL_60;
      }

      tokenAuthentication_authenticateEndpointInternal_cold_8(v34);
    }

LABEL_73:
    v29 = 0;
    goto LABEL_60;
  }

  v28 = 0;
  v29 = 0;
LABEL_55:
  if (gLogCategory_APAuthenticationClientToken <= 50 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
  {
    tokenAuthentication_authenticateEndpointInternal_cold_15(a1, v26, v27);
  }

  v19 = 0;
LABEL_60:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v19;
}

void sub_2220E7960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t tokenAuthentication_generatePairingToken(void *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v2 = dispatch_semaphore_create(0);
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277D24E28] sharedManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __tokenAuthentication_generatePairingToken_block_invoke;
    v7[3] = &unk_27849C838;
    v7[5] = &v8;
    v7[6] = &v12;
    v7[4] = v3;
    [v4 generatePairingTokenWithCompletionHandler:v7];
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    *a1 = v13[3];
    dispatch_release(v3);
    v5 = *(v9 + 6);
  }

  else
  {
    APSLogErrorAt();
    v5 = 4294895496;
    *(v9 + 6) = -71800;
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void sub_2220E7AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t tokenAuthentication_confirmAuthTokenActivation(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = dispatch_semaphore_create(0);
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x277D24E30] sharedManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __tokenAuthentication_confirmAuthTokenActivation_block_invoke;
    v9[3] = &unk_27849C860;
    v9[4] = v5;
    v9[5] = &v10;
    [v6 confirmActivationForAuthToken:a1 withUUID:a2 completionHandler:v9];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
    v7 = *(v11 + 6);
  }

  else
  {
    APSLogErrorAt();
    v7 = 4294895496;
    *(v11 + 6) = -71800;
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_2220E7C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t tokenAuthentication_savePairingToken(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v2 = dispatch_semaphore_create(0);
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277D24E28] sharedManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __tokenAuthentication_savePairingToken_block_invoke;
    v7[3] = &unk_27849C860;
    v7[4] = v3;
    v7[5] = &v8;
    [v4 addPairingWithToken:a1 completionHandler:v7];
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v3);
    v5 = *(v9 + 6);
  }

  else
  {
    APSLogErrorAt();
    v5 = 4294895496;
    *(v9 + 6) = -71800;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_2220E7D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t tokenAuthentication_sendAuthSetupRequestCreatingReply(uint64_t a1, const void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    Data = CFPropertyListCreateData(v4, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (Data)
    {
      v8 = Data;
      CFDataGetBytePtr(Data);
      CFDataGetLength(v8);
      CFDictionarySetData();
      snprintf(__str, 0x20uLL, "%d", 16);
      CFDictionarySetCString();
      v9 = APTransportStreamSendPlistMessageCreatingPlistReply();
      v10 = v9;
      if (v9)
      {
        tokenAuthentication_sendAuthSetupRequestCreatingReply_cold_1(v9);
      }

      CFRelease(v8);
    }

    else
    {
      v10 = 4294895496;
      tokenAuthentication_sendAuthSetupRequestCreatingReply_cold_2();
    }

    CFRelease(v6);
  }

  else
  {
    v10 = 4294895496;
    tokenAuthentication_sendAuthSetupRequestCreatingReply_cold_3();
  }

  return v10;
}

intptr_t __tokenAuthentication_verifyPairing_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 && gLogCategory_APAuthenticationClientToken <= 90 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
  {
    v6 = "NO";
    if (a2)
    {
      v6 = "YES";
    }

    LogPrintF(&gLogCategory_APAuthenticationClientToken, "Boolean tokenAuthentication_verifyPairing(CFDataRef)_block_invoke", 33554522, "tokenVerifyPairing: paired=%s error=%@\n", v6, a3);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v7 = *(a1 + 32);

  return dispatch_semaphore_signal(v7);
}

intptr_t __tokenAuthentication_rollAuthToken_block_invoke(void *a1, void *a2, void *a3)
{
  if (a3)
  {
    if (gLogCategory_APAuthenticationClientToken <= 90 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
    {
      __tokenAuthentication_rollAuthToken_block_invoke_cold_1(a3, a2, a3);
    }

    *(*(a1[5] + 8) + 24) = [a3 code];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = a2;
  }

  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

intptr_t __tokenAuthentication_generatePairingToken_block_invoke(void *a1, void *a2, void *a3)
{
  if (a3)
  {
    if (gLogCategory_APAuthenticationClientToken <= 90 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
    {
      __tokenAuthentication_generatePairingToken_block_invoke_cold_1(a3, a2, a3);
    }

    *(*(a1[5] + 8) + 24) = [a3 code];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = a2;
  }

  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

intptr_t __tokenAuthentication_confirmAuthTokenActivation_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (gLogCategory_APAuthenticationClientToken <= 90 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
    {
      __tokenAuthentication_confirmAuthTokenActivation_block_invoke_cold_1(a2, a2, a3);
    }

    *(*(*(a1 + 40) + 8) + 24) = [a2 code];
  }

  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

intptr_t __tokenAuthentication_savePairingToken_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (gLogCategory_APAuthenticationClientToken <= 90 && (gLogCategory_APAuthenticationClientToken != -1 || _LogCategory_Initialize()))
    {
      __tokenAuthentication_savePairingToken_block_invoke_cold_1(a2, a2, a3);
    }

    *(*(*(a1 + 40) + 8) + 24) = [a2 code];
  }

  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

uint64_t APAudioEngineCarPlayCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  APAudioEngineGetClassID(a1, a2);
  v4 = CMDerivedObjectCreate();
  v13 = v4;
  if (v4)
  {
    v10 = v4;
    APAudioEngineCarPlayCreate_cold_1(v4);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 16) = v6;
    if (v6)
    {
      v7 = FigDispatchQueueCreateWithPriority();
      *(DerivedStorage + 128) = v7;
      if (v7)
      {
        *DerivedStorage = CFDictionaryGetInt64Ranged();
        if (v13)
        {
          *DerivedStorage = 100;
          v13 = 0;
        }

        *(DerivedStorage + 8) = 0;
        if (gLogCategory_APAudioEngineCarPlay <= 50 && (gLogCategory_APAudioEngineCarPlay != -1 || _LogCategory_Initialize()))
        {
          APAudioEngineCarPlayCreate_cold_2(&cf, v8, v9);
        }

        *a3 = cf;
        return v13;
      }

      v10 = 4294895226;
      APAudioEngineCarPlayCreate_cold_3();
    }

    else
    {
      v10 = 4294895226;
      APAudioEngineCarPlayCreate_cold_4();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void audioEngineCarPlay_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage[9];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[9] = 0;
  }

  v6 = DerivedStorage[10];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[10] = 0;
  }

  v7 = DerivedStorage[11];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[11] = 0;
  }

  v8 = DerivedStorage[12];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[12] = 0;
  }

  v9 = DerivedStorage[2];
  if (v9)
  {
    dispatch_release(v9);
    DerivedStorage[2] = 0;
  }

  v10 = DerivedStorage[23];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[23] = 0;
  }

  v11 = DerivedStorage[24];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[24] = 0;
  }

  v12 = DerivedStorage[25];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[25] = 0;
  }

  v13 = DerivedStorage[26];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[26] = 0;
  }

  v14 = DerivedStorage[16];
  if (v14)
  {
    dispatch_release(v14);
    DerivedStorage[16] = 0;
  }

  if (gLogCategory_APAudioEngineCarPlay <= 50 && (gLogCategory_APAudioEngineCarPlay != -1 || _LogCategory_Initialize()))
  {
    audioEngineCarPlay_Finalize_cold_1(a1, v2, v3);
  }
}

uint64_t audioEngineCarPlay_CopyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, uint64_t a4)
{
  if (cf1)
  {
    if (a4)
    {
      if (CFEqual(cf1, @"audioSource"))
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v6 = *(DerivedStorage + 16);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 0x40000000;
        v9[2] = __audioEngineCarPlay_copyAudioSource_block_invoke;
        v9[3] = &__block_descriptor_tmp_16;
        v9[4] = a4;
        v9[5] = DerivedStorage;
        dispatch_sync(v6, v9);
        return 0;
      }

      else
      {
        return 4294954509;
      }
    }

    else
    {
      v7 = 4294895225;
      audioEngineCarPlay_CopyProperty_cold_1();
    }
  }

  else
  {
    v7 = 4294895225;
    audioEngineCarPlay_CopyProperty_cold_2();
  }

  return v7;
}

CFTypeRef __audioEngineCarPlay_copyAudioSource_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 72);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

void __audioEngineCarPlay_setCryptor_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(v1 + 120))
  {
    __audioEngineCarPlay_setCryptor_block_invoke_cold_1();
  }

  else
  {
    v2 = *(v1 + 80);
    v3 = *(a1 + 48);
    *(v1 + 80) = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    if (v2)
    {

      CFRelease(v2);
    }
  }
}

void __audioEngineCarPlay_setAudioSource_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 120))
  {
    __audioEngineCarPlay_setAudioSource_block_invoke_cold_1();
  }

  else
  {
    v3 = *(v2 + 72);
    v4 = *(a1 + 48);
    *(v2 + 72) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  CFRelease(*(a1 + 56));
  v5 = *(a1 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}