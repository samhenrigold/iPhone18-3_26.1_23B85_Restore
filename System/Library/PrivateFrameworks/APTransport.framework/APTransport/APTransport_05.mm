void sub_23D300038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getNINearbyObjectClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getNINearbyObjectClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getNINearbyObjectClass_softClass;
  if (!getNINearbyObjectClass_softClass)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getNINearbyObjectClass_block_invoke;
    v2[3] = &unk_278BC7CE0;
    v2[4] = &v3;
    __getNINearbyObjectClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_23D30012C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *transportDevice_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<APTransportDevice %p browser '%@' deviceInfo %@>", a1, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    transportDevice_CopyDebugDescription_cold_1();
  }

  return v3;
}

Class __getNINearbyObjectClass_block_invoke(uint64_t a1)
{
  NearbyInteractionLibrary();
  result = objc_getClass("NINearbyObject");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getNINearbyObjectClass_block_invoke_cold_1();
  }

  getNINearbyObjectClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void NearbyInteractionLibrary()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!NearbyInteractionLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __NearbyInteractionLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_278BC8CC8;
    v2 = 0;
    NearbyInteractionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NearbyInteractionLibraryCore_frameworkLibrary)
  {
    NearbyInteractionLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __NearbyInteractionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NearbyInteractionLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getNIDiscoveryTokenClass_block_invoke(uint64_t a1)
{
  NearbyInteractionLibrary();
  result = objc_getClass("NIDiscoveryToken");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getNIDiscoveryTokenClass_block_invoke_cold_1();
  }

  getNIDiscoveryTokenClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

const char *APBonjourCacheEventToString(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return "Unknown";
  }

  else
  {
    return off_278BC8EC0[a1 - 1];
  }
}

uint64_t APTNANDataSessionGetClassID(uint64_t a1, uint64_t a2)
{
  if (qword_281309BF0 != -1)
  {
    APTNANDataSessionGetClassID_cold_1(a1);
  }

  return _MergedGlobals_12;
}

uint64_t _APTNANDataSessionRegisterClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&kAPTNANDataSessionClassDescriptor, ClassID, 1, a1);
}

uint64_t APTNANDataSessionGetTypeID(uint64_t a1, uint64_t a2)
{
  if (qword_281309BF0 != -1)
  {
    APTNANDataSessionGetClassID_cold_1(a1);
  }

  v3 = _MergedGlobals_12;

  return MEMORY[0x282111A98](v3);
}

uint64_t APTNANDataSessionCreate(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (!APSNANServiceTypeIsValid())
  {
    APTNANDataSessionCreate_cold_8();
    goto LABEL_18;
  }

  if (!a2 || (v10 = CFGetTypeID(a2), TypeID = APBrowserGetTypeID(v10, v11), v10 != TypeID))
  {
    APTNANDataSessionCreate_cold_7();
LABEL_18:
    v18 = 4294960591;
    goto LABEL_24;
  }

  if (qword_281309BF0 != -1)
  {
    APTNANDataSessionGetClassID_cold_1(TypeID);
  }

  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    v18 = v13;
    APTNANDataSessionCreate_cold_2(v13);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = a1;
    *(DerivedStorage + 8) = CFRetain(a2);
    *(DerivedStorage + 16) = a4;
    *(DerivedStorage + 24) = a3;
    v15 = FigSimpleMutexCreate();
    *(DerivedStorage + 56) = v15;
    if (v15)
    {
      *(DerivedStorage + 48) = dispatch_semaphore_create(1);
      SNPrintF(label, 64, "APTNANDataSession.%{ptr}.invalidation", cf);
      v16 = dispatch_queue_create(label, 0);
      *(DerivedStorage + 32) = v16;
      if (v16)
      {
        SNPrintF(label, 64, "APTNANDataSession.%{ptr}.notification", cf);
        v17 = dispatch_queue_create(label, 0);
        *(DerivedStorage + 40) = v17;
        if (v17)
        {
          if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
          {
            APTNANDataSessionCreate_cold_3(&cf, a1, a4);
          }

          v18 = 0;
          *a5 = cf;
          return v18;
        }

        APTNANDataSessionCreate_cold_4();
      }

      else
      {
        APTNANDataSessionCreate_cold_5();
      }
    }

    else
    {
      APTNANDataSessionCreate_cold_6();
    }

    v18 = 4294960568;
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

CFTypeRef APTNANDataSessionIsActivatable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = *(DerivedStorage + 1);
  v4 = *(DerivedStorage + 3);
  v5 = *DerivedStorage;
  v6 = *(DerivedStorage + 16);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v7)
  {
    v8 = v7(v3, v4, v5, v6, &cf);
    if (!v8)
    {
      goto LABEL_3;
    }

    v10 = v8;
  }

  else
  {
    v10 = 4294954514;
  }

  APTNANDataSessionIsActivatable_cold_1(a1, v10);
LABEL_3:
  result = cf;
  if (cf)
  {
    CFRelease(cf);
    return (cf != 0);
  }

  return result;
}

uint64_t APTNANDataSessionRetainActivation(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  FigSimpleMutexLock();
  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)", 33554482, "NANDS [%{ptr}] retain activation(%lu -> %lu)", a1, *(DerivedStorage + 8), *(DerivedStorage + 8) + 1);
  }

  if (*(DerivedStorage + 10))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  dsema = *(DerivedStorage + 6);
  if (IsAppleInternalBuild())
  {
    v12 = -1;
  }

  else
  {
    v12 = dispatch_time(0, 1000000000);
  }

  if (dispatch_semaphore_wait(dsema, v12))
  {
    if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)", 33554522, "### NANDS [%{ptr}] Timed out waiting for previous termination to complete", a1);
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_134;
  }

  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)", 33554482, "NANDS [%{ptr}] activating...", a1);
  }

  v13 = *(DerivedStorage + 1);
  v14 = *(DerivedStorage + 3);
  v15 = *DerivedStorage;
  v16 = *(DerivedStorage + 16);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v17)
  {
    v11 = 4294954514;
    goto LABEL_23;
  }

  v11 = v17(v13, v14, v15, v16, &v42);
  if (v11)
  {
LABEL_23:
    APSLogErrorAt();
    if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)", 33554522, "### NANDS [%{ptr}] failed to obtain NANEndpoint with error: %#m", a1, v11);
    }

    goto LABEL_43;
  }

  if (*DerivedStorage != 1)
  {
    if (*DerivedStorage == 2)
    {
      v18 = 0;
      v19 = 2048;
      goto LABEL_27;
    }

    v11 = 4294960561;
    APSLogErrorAt();
LABEL_43:
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_44;
  }

  v19 = 256;
  v18 = 1;
LABEL_27:
  v4 = objc_alloc_init(MEMORY[0x277D02890]);
  if (!v4)
  {
    APSLogErrorAt();
    v3 = 0;
    v4 = 0;
LABEL_147:
    v5 = 0;
    v6 = 0;
    goto LABEL_148;
  }

  if (_APTNANDataSessionGetDispatchQueue_sAPTNANDataSessionDispatchQueueOnce != -1)
  {
    APTNANDataSessionRetainActivation_cold_1();
  }

  [v4 setDispatchQueue:_APTNANDataSessionGetDispatchQueue_sAPTNANDataSessionDispatchQueue];
  [v4 setPeerEndpoint:v42];
  [v4 setTrafficFlags:v19];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __APTNANDataSessionRetainActivation_block_invoke;
  v37[3] = &__block_descriptor_40_e5_v8__0l;
  v37[4] = a1;
  [v4 setInterruptionHandler:v37];
  if ((v18 & 1) == 0)
  {
    [v4 setControlFlags:2];
  }

  v6 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v6)
  {
    APSLogErrorAt();
    if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)", 33554522, "### NANDS [%{ptr}] allocation of weak reference to data session failed", a1);
    }

    v3 = 0;
    goto LABEL_147;
  }

  v20 = dispatch_semaphore_create(0);
  if (!v20)
  {
    APSLogErrorAt();
    v3 = 0;
    v5 = 0;
LABEL_148:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 4294960568;
    goto LABEL_44;
  }

  v5 = v20;
  if (!*(DerivedStorage + 13))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_82:
    v23 = v7;
    v24 = v4;
    CFRetain(v6);
    dispatch_retain(v5);
    dispatch_retain(dsema);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __APTNANDataSessionRetainActivation_block_invoke_2;
    v36[3] = &unk_278BC8F40;
    v36[8] = &v38;
    v36[9] = a1;
    v36[4] = v5;
    v36[5] = dsema;
    v36[10] = v6;
    v36[6] = v4;
    v36[7] = v7;
    [v4 setInvalidationHandler:v36];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __APTNANDataSessionRetainActivation_block_invoke_3;
    v35[3] = &unk_278BC8F88;
    v35[5] = v6;
    v35[6] = a1;
    v35[4] = v4;
    [v4 setTerminationHandler:v35];
    CFRetain(v42);
    v25 = v4;
    dispatch_retain(v5);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __APTNANDataSessionRetainActivation_block_invoke_5;
    v34[3] = &unk_278BC8FB0;
    v34[7] = a1;
    v34[8] = v42;
    v34[5] = v5;
    v34[6] = &v38;
    v34[4] = v4;
    [v4 activateWithCompletion:v34];
    if (!dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = *(v39 + 6);
      if (*(DerivedStorage + 13))
      {
        if (v11)
        {
          if (v11 == 313308)
          {
            v11 = 200453;
            if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)", 33554482, "NANDS [%{ptr}] Receiver is denying interruptions. Translating error to hijack failed error.", a1);
            }

LABEL_121:
            *(v39 + 6) = v11;
            goto LABEL_122;
          }

          if (v11 == 313309)
          {
            if ([(APTNANPairingDelegate *)v7 authPromptWasDismissed])
            {
              v11 = 301031;
              if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)", 33554482, "NANDS [%{ptr}] User dismissed auth prompt.", a1);
              }
            }

            else
            {
              if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)", 33554482, "NANDS [%{ptr}] Wrong PIN. Translating error to auth error.", a1);
              }

              v11 = 4294960542;
            }

            goto LABEL_121;
          }

LABEL_122:
          APSLogErrorAt();
          v3 = 0;
          goto LABEL_44;
        }
      }

      else if (v11)
      {
        goto LABEL_122;
      }

      *(DerivedStorage + 10) = v4;
      if (!*(DerivedStorage + 13))
      {
        goto LABEL_97;
      }

      if (!*(DerivedStorage + 16))
      {
        if ([(APTNANPairingDelegate *)v7 handledPairingRequest])
        {
          v50 = 0;
          v51 = &v50;
          v52 = 0x2020000000;
          v53 = 0;
          dsemaa = CMBaseObjectGetDerivedStorage();
          v44 = 0;
          v45 = &v44;
          v46 = 0x3052000000;
          v47 = __Block_byref_object_copy__3;
          v48 = __Block_byref_object_dispose__3;
          v49 = 0;
          v26 = dispatch_semaphore_create(0);
          if (v26)
          {
            v27 = v26;
            v28 = [(objc_class *)dsemaa[10].isa wfaDataSessionClient];
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = ___APTNANDataSessionGenerateDiversifiedPIN_block_invoke;
            v43[3] = &unk_278BC9000;
            v43[6] = &v44;
            v43[7] = a1;
            v43[4] = v27;
            v43[5] = &v50;
            [v28 generateDiversifiedPINWithCompletionHandler:v43];
            if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus _APTNANDataSessionGenerateDiversifiedPIN(APTNANDataSessionRef, CFStringRef *)", 33554482, "[%{ptr}] Waiting for diversified PIN", a1);
            }

            dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
            if (*(v51 + 6))
            {
              v3 = 0;
            }

            else
            {
              v3 = v45[5];
            }

            dispatch_release(v27);
            v11 = *(v51 + 6);
          }

          else
          {
            APSLogErrorAt();
            v3 = 0;
            v11 = 4294960568;
            *(v51 + 6) = -6728;
          }

          _Block_object_dispose(&v44, 8);
          _Block_object_dispose(&v50, 8);
          if (!v11)
          {
            v29 = [objc_msgSend(v4 "wfaDataSessionClient")];
            if ([objc_msgSend(v29 "data")])
            {
              v30 = NSPrintF("%.6a", COERCE_DOUBLE([objc_msgSend(v29 "data")]));
            }

            else
            {
              v30 = 0;
            }

            Value = APSWrapperGetValue();
            (*(Value + 16))(Value, v3, v30);
LABEL_7:
            v11 = 0;
            ++*(DerivedStorage + 8);
            if (!v9)
            {
              goto LABEL_46;
            }

LABEL_45:
            CFRelease(v9);
            goto LABEL_46;
          }

          APSLogErrorAt();
LABEL_44:
          [v4 invalidate];
          if (!v9)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

LABEL_97:
        v3 = 0;
        goto LABEL_7;
      }

      APSLogErrorAt();
      v3 = 0;
LABEL_141:
      v11 = 4294960587;
      goto LABEL_44;
    }

    APSLogErrorAt();
    v3 = 0;
LABEL_134:
    v11 = 4294960574;
    goto LABEL_44;
  }

  if (*(DerivedStorage + 16))
  {
    APSLogErrorAt();
    v3 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_141;
  }

  if (!*(DerivedStorage + 12))
  {
    APSLogErrorAt();
    v3 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 4294960578;
    goto LABEL_44;
  }

  v7 = [[APTNANPairingDelegate alloc] initWithHandleAuthorizationRequestBlock:APSWrapperGetValue() logContext:*(DerivedStorage + 9)];
  if (!v7)
  {
    APSLogErrorAt();
    v10 = 0;
    v8 = 0;
    v7 = 0;
    v11 = 0;
    goto LABEL_48;
  }

  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)", 33554482, "NANDS [%{ptr}] created pairing delegate [%{ptr}]. Setting on CUNANDS [%{ptr}].", a1, v7, v4);
  }

  [v4 setWfaPairingDelegate:v7];
  if (gLogCategory_APTNANDataSession <= 30 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)", 33554462, "NANDS [%{ptr}] set pairing delegate [%{ptr}]", a1, v7);
  }

  [v4 setWfaPairingMethod:*(DerivedStorage + 14)];
  if (gLogCategory_APTNANDataSession <= 30 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)", 33554462, "NANDS [%{ptr}] set pairing method: %@", a1, *(DerivedStorage + 14));
  }

  [v4 setWfaPairingCacheEnabled:1];
  if (gLogCategory_APTNANDataSession <= 30 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)", 33554462, "NANDS [%{ptr}] enabled pairing caching", a1);
  }

  [v4 setWfaConnectionMode:2];
  if (gLogCategory_APTNANDataSession <= 30 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)", 33554462, "NANDS [%{ptr}] set connection mode to any pairing", a1);
  }

  v9 = APSCopyDeviceName();
  v8 = [objc_alloc(MEMORY[0x277D7BAC0]) initWithBundleID:@"com.apple.airplay" selfPairingName:v9 peerDeviceName:0 storageClass:1 lifetime:3 pairingClient:0.0];
  [v4 setWfaPairingMetadata:v8];
  if (gLogCategory_APTNANDataSession <= 30 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)", 33554462, "NANDS [%{ptr}] set pairing metadata", a1);
  }

  v22 = objc_alloc_init(MEMORY[0x277D7BAE8]);
  v10 = v22;
  if (v22)
  {
    [v22 setInstanceName:v9];
    [v4 setWfaPairSetupServiceSpecificInfo:v10];
    if (gLogCategory_APTNANDataSession <= 30 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)", 33554462, "NANDS [%{ptr}] set pair setup service specific info with name: %@", a1, v9);
    }

    goto LABEL_82;
  }

  APSLogErrorAt();
  v10 = 0;
  v11 = 0;
  v3 = 0;
  if (v9)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (v3)
  {
    CFRelease(v3);
  }

LABEL_48:

  FigSimpleMutexUnlock();
  if (v5)
  {
    dispatch_release(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  _Block_object_dispose(&v38, 8);
  return v11;
}

void sub_23D305B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __APTNANDataSessionRetainActivation_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APTNANDataSession <= 90)
  {
    v3 = result;
    if (gLogCategory_APTNANDataSession != -1)
    {
      return __APTNANDataSessionRetainActivation_block_invoke_cold_1(v3, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __APTNANDataSessionRetainActivation_block_invoke_cold_1(v3, a2, a3);
    }
  }

  return result;
}

void __APTNANDataSessionRetainActivation_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    __APTNANDataSessionRetainActivation_block_invoke_2_cold_1(a1, a2, a3);
  }

  *(*(*(a1 + 64) + 8) + 24) = -6723;
  dispatch_semaphore_signal(*(a1 + 32));
  dispatch_semaphore_signal(*(a1 + 40));
  v4 = *(a1 + 48);
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  if (v5)
  {
    v7 = DerivedStorage;
    CFRetain(v5);
    v8 = *(v7 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___APTNANDataSessionInvalidate_block_invoke;
    v9[3] = &unk_278BC80E0;
    v9[4] = v10;
    v9[5] = v7;
    v9[6] = v4;
    v9[7] = v5;
    dispatch_async(v8, v9);
    CFRelease(v5);
  }

  _Block_object_dispose(v10, 8);
  dispatch_release(*(a1 + 40));
  dispatch_release(*(a1 + 32));
  CFRelease(*(a1 + 80));
}

void sub_23D305D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __APTNANDataSessionRetainActivation_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      __APTNANDataSessionRetainActivation_block_invoke_5_cold_1(a1, a2, a3);
    }
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = *(a1 + 32);
    if (v5)
    {
      objc_msgSend_peerAddress(v5);
    }

    SockAddrToString();
    if (gLogCategory_APTNANDataSession <= 50)
    {
      if (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize())
      {
        __APTNANDataSessionRetainActivation_block_invoke_5_cold_2(a1, v6, v7);
      }

      if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus APTNANDataSessionRetainActivation(APTNANDataSessionRef)_block_invoke_5", 33554482, "NANDS [%{ptr}] peer available at %s", *(a1 + 56), v8);
      }
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = NSErrorToOSStatus();
  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_release(*(a1 + 40));

  CFRelease(*(a1 + 64));
}

uint64_t APTNANDataSessionReleaseActivation(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    APTNANDataSessionReleaseActivation_cold_1(DerivedStorage, a1, v4);
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    v6 = v5 - 1;
    *(DerivedStorage + 64) = v6;
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
      {
        APTNANDataSessionReleaseActivation_cold_2(a1, v3, v4);
      }

      [*(DerivedStorage + 80) invalidate];

      v7 = 0;
      *(DerivedStorage + 80) = 0;
    }
  }

  else
  {
    APTNANDataSessionReleaseActivation_cold_3();
    v7 = 4294960548;
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t APTNANDataSessionCopyPeerAddress(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2)
  {
    APTNANDataSessionCopyPeerAddress_cold_4();
    v6 = 4294960591;
    goto LABEL_6;
  }

  v4 = *(DerivedStorage + 80);
  if (!v4)
  {
    APTNANDataSessionCopyPeerAddress_cold_3();
LABEL_10:
    v6 = 4294960578;
    goto LABEL_6;
  }

  objc_msgSend_peerAddress(v4);
  if (!v8)
  {
    APTNANDataSessionCopyPeerAddress_cold_2();
    goto LABEL_10;
  }

  v5 = APSNetworkAddressCreateWithSocketAddr();
  v6 = v5;
  if (v5)
  {
    APTNANDataSessionCopyPeerAddress_cold_1(v5);
  }

LABEL_6:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t APTNANDataSessionPreWarm(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 80))
  {
    if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      APTNANDataSessionPreWarm_cold_1(a1, v3, v4);
    }

    [*(DerivedStorage + 80) updateLinkStatus:1];
    v5 = 0;
  }

  else
  {
    APTNANDataSessionPreWarm_cold_2();
    v5 = 4294960578;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t APTNANDataSessionCreateStatisticsReport(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 80))
  {
    v14 = 4294960578;
LABEL_17:
    APSLogErrorAt();
    FigSimpleMutexUnlock();
    return v14;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v14 = 4294960568;
    goto LABEL_17;
  }

  v5 = Mutable;
  v6 = dispatch_semaphore_create(0);
  if (v6)
  {
    v7 = v6;
    CFRetain(v5);
    dispatch_retain(v7);
    v8 = *(DerivedStorage + 80);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __APTNANDataSessionCreateStatisticsReport_block_invoke;
    v17[3] = &unk_278BC8FD8;
    v17[4] = v7;
    v17[5] = v5;
    [v8 generateStatisticsReportWithCompletionHandler:v17];
    FigSimpleMutexUnlock();
    v9 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v7, v9))
    {
      APTNANDataSessionCreateStatisticsReport_cold_1();
      v14 = 4294960574;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      v11 = ValueAtIndex;
      if (ValueAtIndex && (v12 = CFGetTypeID(ValueAtIndex), v12 == CFNumberGetTypeID()))
      {
        v13 = CFGetInt64Ranged();
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = 4294960587;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = CFRetain(v11);
          v14 = 0;
          *a2 = v15;
        }

        else
        {
          APTNANDataSessionCreateStatisticsReport_cold_2();
          v14 = 4294960587;
        }
      }
    }

    dispatch_release(v7);
  }

  else
  {
    APTNANDataSessionCreateStatisticsReport_cold_3((DerivedStorage + 56));
    v14 = 4294960568;
  }

  CFRelease(v5);
  return v14;
}

void __APTNANDataSessionCreateStatisticsReport_block_invoke(uint64_t a1, const void *a2, uint64_t a3)
{
  if (NSErrorToOSStatus())
  {
    CFArrayAppendInt64();
  }

  else
  {
    CFArrayAppendValue(*(a1 + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  dispatch_release(*(a1 + 32));
  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void _APTNANDataSessionFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  FigSimpleMutexDestroy();
  if (*(DerivedStorage + 80))
  {
    if (gLogCategory_APTNANDataSession <= 60 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      _APTNANDataSessionFinalize_cold_1(a1);
    }

    [*(DerivedStorage + 80) invalidate];

    *(DerivedStorage + 80) = 0;
  }

  v6 = *(DerivedStorage + 72);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 72) = 0;
  }

  v7 = *(DerivedStorage + 96);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 96) = 0;
  }

  v8 = *(DerivedStorage + 104);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 104) = 0;
  }

  v9 = *(DerivedStorage + 48);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 48) = 0;
  }

  v10 = *(DerivedStorage + 32);
  if (v10)
  {
    dispatch_release(v10);
    *(DerivedStorage + 32) = 0;
  }

  v11 = *(DerivedStorage + 40);
  if (v11)
  {
    dispatch_release(v11);
    *(DerivedStorage + 40) = 0;
  }

  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    _APTNANDataSessionFinalize_cold_2(a1, v4, v5);
  }
}

uint64_t _APTNANDataSessionSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"APTNANDataSessionProperty_HandleAuthorizationRequestBlock"))
  {
    if (APSWrapperGetValue())
    {
      FigSimpleMutexLock();
      if (!DerivedStorage[8])
      {
        v7 = DerivedStorage[12];
        DerivedStorage[12] = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        if (gLogCategory_APTNANDataSession <= 30 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus _APTNANDataSessionSetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "NANDS [%{ptr}] has authorization block [%{ptr}]", a1, DerivedStorage[12]);
        }

        goto LABEL_44;
      }

      _APTNANDataSessionSetProperty_cold_1();
LABEL_56:
      FigSimpleMutexUnlock();
      return 4294960587;
    }

    _APTNANDataSessionSetProperty_cold_2();
    return 4294960591;
  }

  if (CFEqual(a2, @"APTNANDataSessionProperty_SetAuthorizationStringBlock"))
  {
    if (APSWrapperGetValue())
    {
      FigSimpleMutexLock();
      if (!DerivedStorage[8])
      {
        v8 = DerivedStorage[13];
        DerivedStorage[13] = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        if (gLogCategory_APTNANDataSession <= 30 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus _APTNANDataSessionSetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "NANDS [%{ptr}] has set authorization block [%{ptr}]", a1, DerivedStorage[13]);
        }

        goto LABEL_44;
      }

      _APTNANDataSessionSetProperty_cold_3();
      goto LABEL_56;
    }

    _APTNANDataSessionSetProperty_cold_4();
    return 4294960591;
  }

  if (!CFEqual(a2, @"APTNANDataSessionProperty_AuthorizationType"))
  {
    if (!CFEqual(a2, @"APTNANDataSessionProperty_AuthorizationLogContext"))
    {
      return 4294954512;
    }

    if (a3)
    {
      FigSimpleMutexLock();
      if (!DerivedStorage[8])
      {
        v11 = DerivedStorage[9];
        DerivedStorage[9] = a3;
        CFRetain(a3);
        if (v11)
        {
          CFRelease(v11);
        }

        goto LABEL_44;
      }

      _APTNANDataSessionSetProperty_cold_7();
      goto LABEL_56;
    }

    _APTNANDataSessionSetProperty_cold_8();
    return 4294960591;
  }

  valuePtr = 0;
  if (!a3)
  {
    _APTNANDataSessionSetProperty_cold_6();
    return 0;
  }

  CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr);
  FigSimpleMutexLock();
  if (DerivedStorage[8])
  {
    _APTNANDataSessionSetProperty_cold_5();
    goto LABEL_56;
  }

  v9 = valuePtr;
  if (valuePtr <= 3)
  {
    DerivedStorage[14] = qword_23D3838C0[valuePtr];
  }

  if (gLogCategory_APTNANDataSession > 30)
  {
    goto LABEL_44;
  }

  if (gLogCategory_APTNANDataSession != -1)
  {
    goto LABEL_28;
  }

  if (_LogCategory_Initialize())
  {
    v9 = valuePtr;
LABEL_28:
    if (v9 == 3)
    {
      v10 = @"Passphrase";
    }

    else
    {
      v10 = @"PIN";
    }

    LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus _APTNANDataSessionSetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "NANDS [%{ptr}] has authorization type %@", a1, v10);
  }

LABEL_44:
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t APTransportSocketGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_13 != -1)
  {
    APTransportSocketGetTypeID_cold_1();
  }

  return qword_281309C00;
}

uint64_t socket_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APTransportSocketCreate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  if (_MergedGlobals_13 != -1)
  {
    APTransportSocketGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    *(Instance + 16) = 0;
    *(Instance + 16) = v4;
    if (gLogCategory_APTransportSocketRef <= 30 && (gLogCategory_APTransportSocketRef != -1 || _LogCategory_Initialize()))
    {
      APTransportSocketCreate_cold_2(v6);
    }

    result = 0;
    *a3 = v6;
  }

  else
  {
    APTransportSocketCreate_cold_3();
    return 4294960568;
  }

  return result;
}

uint64_t socket_Finalize(uint64_t result)
{
  v1 = result;
  if (gLogCategory_APTransportSocketRef <= 30)
  {
    if (gLogCategory_APTransportSocketRef != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = socket_Finalize_cold_1(v1);
    }
  }

  *(v1 + 16) = -1;
  return result;
}

uint64_t APBrokerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAPBrokerInitOnce != -1)
  {
    APBrokerGetTypeID_cold_1();
  }

  return gAPBrokerTypeID;
}

uint64_t _APBrokerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPBrokerTypeID = result;
  return result;
}

uint64_t APBrokerCreate(const void *a1, CFTypeRef *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  *label = 0u;
  v20 = 0u;
  if (!a2)
  {
    APBrokerCreate_cold_7();
    return 4294960591;
  }

  if (!a1)
  {
    APBrokerCreate_cold_6();
    return 4294960591;
  }

  if (gAPBrokerInitOnce != -1)
  {
    APBrokerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APBrokerCreate_cold_5();
    return 4294960568;
  }

  v5 = Instance;
  Instance[1] = 0u;
  v6 = Instance + 1;
  Instance[2] = 0u;
  Instance[3] = 0u;
  *(Instance + 6) = CFRetain(a1);
  v7 = APBrokerCopyBrokerInfoFromBonjourInfo(a1, v6, v6 + 1);
  if (v7)
  {
    v17 = v7;
    APBrokerCreate_cold_2(v7);
  }

  else
  {
    *(v5 + 32) = APSSettingsGetIntWithDefault() != 0;
    if (*(v5 + 6) && (v8 = BonjourDevice_CopyCFString()) != 0)
    {
      v9 = v8;
      v10 = APSFeaturesCreateFromStringRepresentation();
      HasFeature = APSFeaturesHasFeature();
      if (v10)
      {
        CFRelease(v10);
      }

      CFRelease(v9);
    }

    else
    {
      HasFeature = 0;
    }

    *(v5 + 33) = HasFeature;
    v12 = FigSimpleMutexCreate();
    *(v5 + 5) = v12;
    if (v12)
    {
      SNPrintF(label, 64, "APBroker.notification.%{ptr}", v5);
      v13 = dispatch_queue_create(label, 0);
      *(v5 + 7) = v13;
      if (v13)
      {
        if (gLogCategory_APBroker <= 50 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
        {
          v15 = *(v5 + 2);
          v14 = *(v5 + 3);
          v16 = APBrokerHTTPProtocolString(*(v5 + 32));
          LogPrintF(&gLogCategory_APBroker, "OSStatus APBrokerCreate(CFDictionaryRef, APBrokerRef *)", 33554482, "[%{ptr}] APBroker with groupID %@ and deviceID %@ using %s created\n", v5, v14, v15, v16);
        }

        v17 = 0;
        *a2 = CFRetain(v5);
        goto LABEL_19;
      }

      APBrokerCreate_cold_3();
    }

    else
    {
      APBrokerCreate_cold_4();
    }

    v17 = 4294960568;
  }

LABEL_19:
  CFRelease(v5);
  return v17;
}

uint64_t APBrokerCopyBrokerInfoFromBonjourInfo(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v5 = BonjourDevice_CopyCFString();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = 0;
    if (a3)
    {
LABEL_3:
      v6 = BonjourDevice_CopyCFString();
      if (!a2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v6 = 0;
  if (a2)
  {
LABEL_4:
    *a2 = v5;
    v5 = 0;
  }

LABEL_5:
  if (a3)
  {
    *a3 = v6;
  }

  else if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

uint64_t APBrokerUpdate(void *a1, const void *a2)
{
  cf = 0;
  cf1 = 0;
  v4 = APBrokerCopyBrokerInfoFromBonjourInfo(a2, &cf1, &cf);
  if (v4)
  {
    v8 = v4;
    APBrokerUpdate_cold_1(v4);
  }

  else
  {
    v5 = a1[2];
    if ((cf1 == v5 || cf1 && v5 && CFEqual(cf1, v5)) && ((v6 = a1[3], cf == v6) || cf && v6 && CFEqual(cf, v6)))
    {
      FigSimpleMutexCheckIsNotLockedOnThisThread();
      FigSimpleMutexLock();
      v7 = a1[6];
      if (a2)
      {
        CFRetain(a2);
      }

      a1[6] = a2;
      if (v7)
      {
        CFRelease(v7);
      }

      FigSimpleMutexUnlock();
      v8 = 0;
    }

    else
    {
      APBrokerUpdate_cold_2();
      v8 = 4294960591;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v8;
}

void APBrokerGetBrokeredReceivers(uint64_t a1, void *a2)
{
  theArray = 0;
  v4 = (a1 + 40);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (gLogCategory_APBroker <= 50 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    APBrokerGetBrokeredReceivers_cold_1(a1, v5, v6);
  }

  v7 = -72440;
  APBrokerKeychainUtilsCopyAllAuthTokens(*(a1 + 24), &theArray);
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    v8 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v10 = Mutable;
      CFDictionarySetValue(Mutable, @"Content-Type", @"application/json");
      v11 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v11)
      {
        v12 = v11;
        CFDictionarySetValue(v11, @"userAuthTokens", theArray);
        v13 = _Block_copy(a2);
        v14 = v13 != 0;
        if (v13)
        {
          v15 = v13;
          v16 = *(a1 + 56);
          dispatch_retain(v16);
          v17 = CFRetain(*(a1 + 24));
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 0x40000000;
          v18[2] = __APBrokerGetBrokeredReceivers_block_invoke;
          v18[3] = &unk_278BC9058;
          v18[6] = v17;
          v18[7] = v16;
          v18[4] = v15;
          v18[5] = a1;
          APBrokerSendRequest(a1, 2, @"/public/receiver/receiver-list", v10, v12, v18);
          v7 = 0;
        }

        else
        {
          APBrokerGetBrokeredReceivers_cold_2();
          v7 = -6728;
        }

        FigSimpleMutexUnlock();
        CFRelease(v12);
      }

      else
      {
        APBrokerGetBrokeredReceivers_cold_3(v4);
        v14 = 0;
        v7 = -6728;
      }

      CFRelease(v10);
      goto LABEL_15;
    }

    APBrokerGetBrokeredReceivers_cold_4();
    v7 = -6728;
  }

  FigSimpleMutexUnlock();
  v14 = 0;
LABEL_15:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (!v14)
  {
    _CallRequestCallbackBlock(v7, *(a1 + 56), 0, a2);
  }
}

void APBrokerSendRequest(uint64_t a1, int a2, const void *a3, const void *a4, const void *a5, void (**a6)(void, void, void, void, void))
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (gLogCategory_APBroker <= 30 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    APBrokerSendRequest_cold_1(a1, a2);
    if (a6)
    {
      goto LABEL_5;
    }

LABEL_32:
    APBrokerSendRequest_cold_8();
    goto LABEL_29;
  }

  if (!a6)
  {
    goto LABEL_32;
  }

LABEL_5:
  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v12 = Mutable;
    aBlock = a6;
    if (*(a1 + 32))
    {
      CFDictionarySetValue(Mutable, @"useHTTPS", *MEMORY[0x277CBED28]);
      v13 = BonjourDevice_CopyCFString();
      if (!v13)
      {
        APBrokerSendRequest_cold_2();
        goto LABEL_28;
      }

      v14 = v13;
      CFDictionarySetValue(v12, @"sslCertificateHostName", v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a1 + 33);
    if (*(a1 + 33))
    {
      bzero(cStr, 0x400uLL);
      DNSName = BonjourDevice_GetDNSName();
      v30 = DNSName;
      if (DNSName)
      {
        APBrokerSendRequest_cold_3(DNSName);
      }

      else
      {
        v17 = CFStringCreateWithCString(v10, cStr, 0x8000100u);
        if (v17)
        {
          v18 = v17;
          v19 = 0;
          v20 = 1;
          goto LABEL_16;
        }

        APBrokerSendRequest_cold_4(&v30);
      }

      a6 = aBlock;
      if (v14)
      {
LABEL_27:
        CFRelease(v14);
      }

LABEL_28:
      CFRelease(v12);
      if (!v30)
      {
        return;
      }

      goto LABEL_29;
    }

    v19 = BonjourDevice_CopyCFString();
    Int64 = BonjourDevice_GetInt64();
    v18 = CFStringCreateF(&v30, "%@%?{end}:%hu", v19, Int64 == 0, Int64);
    if (v30)
    {
      APBrokerSendRequest_cold_6(v30);
      a6 = aBlock;
      if (v18)
      {
LABEL_23:
        CFRelease(v18);
      }

LABEL_24:
      if (v19)
      {
        CFRelease(v19);
      }

      if (v14)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    v20 = 2;
LABEL_16:
    if (gLogCategory_APBroker <= 30 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
    {
      v22 = APBrokerHTTPProtocolString(*(a1 + 32));
      v23 = APBrokerHTTPMethodString(a2);
      v24 = "Bonjour";
      if (!v15)
      {
        v24 = "DNS";
      }

      LogPrintF(&gLogCategory_APBroker, "void APBrokerSendRequest(APBrokerRef, int, CFStringRef, CFDictionaryRef, CFTypeRef, APBrokerHTTPResponseHandler)", 33554462, "[%{ptr}] Sending %s %s to %@ (%s). URI: %@\n", a1, v22, v23, v18, v24, a3);
    }

    a6 = aBlock;
    v25 = _Block_copy(aBlock);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 0x40000000;
    v29[2] = __APBrokerSendRequest_block_invoke;
    v29[3] = &unk_278BC9168;
    v29[5] = a1;
    v29[6] = a1;
    v29[4] = v25;
    APBrokerHTTPSendRequest(a1, a1, v18, v20, a2, a3, a4, a5, v12, v29);
    if (v18)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  APBrokerSendRequest_cold_7(&v30);
LABEL_29:
  a6[2](a6, 0, 0, 0, 0);
}

void __APBrokerGetBrokeredReceivers_block_invoke(uint64_t a1, CFMutableDictionaryRef a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = 0;
  cf = 0;
  v9 = gLogCategory_APBroker;
  if (gLogCategory_APBroker <= 50)
  {
    if (gLogCategory_APBroker == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v9 = gLogCategory_APBroker;
    }

    v12 = *(a1 + 40);
    if (v9 > 20)
    {
      v13 = 1;
    }

    else
    {
      v13 = v9 == -1 && _LogCategory_Initialize() == 0;
    }

    LogPrintF(&gLogCategory_APBroker, "void APBrokerGetBrokeredReceivers(APBrokerRef, APBrokerGetBrokeredReceiversCallbackBlock)_block_invoke", 33554482, "[%{ptr}] receiver list request finished: status=%ld, err=%#m%?{end}, data=%@\n", v12, a5, a6, v13, a3);
  }

LABEL_11:
  if (a6)
  {
    __APBrokerGetBrokeredReceivers_block_invoke_cold_1(a6);
LABEL_24:
    a2 = 0;
    goto LABEL_16;
  }

  if (!a2)
  {
    __APBrokerGetBrokeredReceivers_block_invoke_cold_4();
    LODWORD(a6) = -6705;
    goto LABEL_16;
  }

  v14 = APBrokerCreateBrokeredReceiversFromBrokerResponse(*(a1 + 48), a2, &cf, &v15);
  if (v14)
  {
    LODWORD(a6) = v14;
    __APBrokerGetBrokeredReceivers_block_invoke_cold_2(v14);
    goto LABEL_24;
  }

  a2 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (a2)
  {
    FigCFDictionarySetValue();
    CFDictionarySetInt64();
    LODWORD(a6) = 0;
  }

  else
  {
    __APBrokerGetBrokeredReceivers_block_invoke_cold_3();
    LODWORD(a6) = -6728;
  }

LABEL_16:
  _CallRequestCallbackBlock(a6, *(a1 + 56), a2, *(a1 + 32));
  if (cf)
  {
    CFRelease(cf);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  CFRelease(*(a1 + 48));
  dispatch_release(*(a1 + 56));
  _Block_release(*(a1 + 32));
}

void APBrokerAuthenticate(uint64_t a1, const void *a2, void *a3)
{
  if (gLogCategory_APBroker <= 50 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    APBrokerAuthenticate_cold_1(a1, a2, a3);
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (!a2)
  {
    v13 = -6705;
LABEL_14:
    APSLogErrorAt();
    FigSimpleMutexUnlock();
LABEL_16:
    _CallRequestCallbackBlock(v13, *(a1 + 56), 0, a3);
    return;
  }

  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v13 = -6728;
    goto LABEL_14;
  }

  v8 = Mutable;
  CFDictionarySetValue(Mutable, @"Content-Type", @"application/json");
  v9 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v9)
  {
    APBrokerAuthenticate_cold_3((a1 + 40), v8);
    v13 = -6728;
    goto LABEL_16;
  }

  v10 = v9;
  CFDictionarySetValue(v9, @"brokerToken", a2);
  v11 = _Block_copy(a3);
  if (v11)
  {
    v12 = *(a1 + 56);
    dispatch_retain(v12);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = __APBrokerAuthenticate_block_invoke;
    v14[3] = &unk_278BC9080;
    v14[6] = a1;
    v14[7] = v12;
    v14[4] = v11;
    v14[5] = a1;
    APBrokerSendRequest(a1, 2, @"/public/broker/user-auth-token", v8, v10, v14);
    v13 = 0;
  }

  else
  {
    APBrokerAuthenticate_cold_2();
    v13 = -6728;
  }

  FigSimpleMutexUnlock();
  CFRelease(v10);
  CFRelease(v8);
  if (!v11)
  {
    goto LABEL_16;
  }
}

void APBrokerGetInfo(uint64_t a1, void *a2, uint64_t a3)
{
  if (gLogCategory_APBroker <= 50 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    APBrokerGetInfo_cold_1(a1, a2, a3);
  }

  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APBrokerGetInfo_cold_3((a1 + 40));
    v9 = -6728;
LABEL_11:
    _CallRequestCallbackBlock(v9, *(a1 + 56), 0, a2);
    return;
  }

  v6 = Mutable;
  CFDictionarySetValue(Mutable, @"Content-Type", @"application/json");
  v7 = _Block_copy(a2);
  if (v7)
  {
    v8 = *(a1 + 56);
    dispatch_retain(v8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = __APBrokerGetInfo_block_invoke;
    v10[3] = &unk_278BC90A8;
    v10[5] = a1;
    v10[6] = v8;
    v10[4] = v7;
    APBrokerSendRequest(a1, 1, @"/public/info", v6, 0, v10);
    v9 = 0;
  }

  else
  {
    APBrokerGetInfo_cold_2();
    v9 = -6728;
  }

  FigSimpleMutexUnlock();
  CFRelease(v6);
  if (!v7)
  {
    goto LABEL_11;
  }
}

void APBrokerGetReceiverConnectivityInfo(void *a1, __CFString *a2, const void *a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  value[0] = 0;
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (!a3)
  {
    APBrokerGetReceiverConnectivityInfo_cold_8();
    v22 = 0;
    Mutable = 0;
    v23 = -6705;
LABEL_57:
    FigSimpleMutexUnlock();
    goto LABEL_42;
  }

  if (gLogCategory_APBroker <= 30 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    APBrokerGetReceiverConnectivityInfo_cold_1(a2);
  }

  v8 = APBrokerKeychainUtilsCopyAuthToken(a1[3], a2, value);
  if (v8)
  {
    v23 = v8;
    APBrokerGetReceiverConnectivityInfo_cold_2(v8);
    v22 = 0;
    Mutable = 0;
    goto LABEL_57;
  }

  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v31 = a4;
  if (!Mutable)
  {
    v24 = 316;
LABEL_34:
    APBrokerGetReceiverConnectivityInfo_cold_4(v24);
    goto LABEL_35;
  }

  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    v24 = 319;
    goto LABEL_34;
  }

  v12 = TypedValue;
  if (CFArrayGetCount(TypedValue) <= 0)
  {
    Count = CFArrayGetCount(v12);
    if (Count < 1)
    {
      goto LABEL_36;
    }
  }

  else
  {
    Count = 1;
  }

  for (i = 0; i != Count; ++i)
  {
    v35 = 0;
    CFDictionaryGetTypeID();
    if (CFArrayGetTypedValueAtIndex())
    {
      cStr[128] = 0;
      CFDictionaryGetCString();
      UsableInterfaceList = CreateUsableInterfaceList();
      if (UsableInterfaceList)
      {
        APBrokerGetReceiverConnectivityInfo_cold_3(UsableInterfaceList);
      }

      else
      {
        for (j = v35; j; j = *j)
        {
          memset(&value[1], 0, 24);
          v34 = 0;
          v17 = j[3];
          if (v17)
          {
            v18 = *(v17 + 1);
            if (v18 == 30 || v18 == 2)
            {
              SockAddrCopy();
              if (!SockAddrToString())
              {
                v20 = CFStringCreateWithCString(0, cStr, 0x8000100u);
                if (v20)
                {
                  v21 = v20;
                  CFArrayAppendValue(Mutable, v20);
                  CFRelease(v21);
                }
              }
            }
          }
        }
      }

      ReleaseUsableInterfaceList();
    }
  }

LABEL_35:
  if (!Mutable)
  {
    v22 = 0;
    v23 = -6728;
LABEL_53:
    a4 = v31;
    goto LABEL_57;
  }

LABEL_36:
  if (CFArrayGetCount(Mutable) < 1)
  {
    v22 = 0;
    v23 = -6709;
    goto LABEL_53;
  }

  v25 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v22 = v25;
  a4 = v31;
  if (!v25)
  {
    APBrokerGetReceiverConnectivityInfo_cold_7();
LABEL_56:
    v23 = -6728;
    goto LABEL_57;
  }

  CFDictionarySetValue(v25, @"Content-Type", @"application/json");
  v26 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v26)
  {
    APBrokerGetReceiverConnectivityInfo_cold_6();
    goto LABEL_56;
  }

  v27 = v26;
  CFDictionarySetValue(v26, @"userAuthToken", value[0]);
  CFDictionarySetValue(v27, @"deviceIPs", Mutable);
  CFDictionarySetValue(v27, @"publicReceiverUUID", a3);
  v28 = _Block_copy(v31);
  if (v28)
  {
    v29 = v28;
    v30 = a1[7];
    dispatch_retain(v30);
    CFRetain(a3);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 0x40000000;
    v32[2] = __APBrokerGetReceiverConnectivityInfo_block_invoke;
    v32[3] = &unk_278BC90D0;
    v32[6] = a3;
    v32[7] = v30;
    v32[4] = v29;
    v32[5] = a1;
    APBrokerSendRequest(a1, 2, @"/public/receiver/connectivity-info", v22, v27, v32);
    v23 = 0;
  }

  else
  {
    APBrokerGetReceiverConnectivityInfo_cold_5();
    v23 = -6728;
  }

  FigSimpleMutexUnlock();
  CFRelease(v27);
LABEL_42:
  if (value[0])
  {
    CFRelease(value[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    _CallRequestCallbackBlock(v23, a1[7], 0, a4);
  }
}

uint64_t APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  v21 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 1;
  if (gLogCategory_APBroker <= 30 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_1(a1, a2, a3);
    if (!a1)
    {
      goto LABEL_26;
    }
  }

  else if (!a1)
  {
LABEL_26:
    v21 = -6705;
    goto LABEL_24;
  }

  if (!a3)
  {
    goto LABEL_26;
  }

  CFNumberGetTypeID();
  if (!CFDictionaryGetTypedValue())
  {
    APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_10();
    goto LABEL_24;
  }

  v5 = CFGetInt64Ranged();
  if (v21)
  {
    APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_2(v21);
    goto LABEL_24;
  }

  if (!v5)
  {
    APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_9();
    goto LABEL_24;
  }

  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_8();
    goto LABEL_24;
  }

  v7 = TypedValue;
  if (CFArrayGetCount(TypedValue) <= 0)
  {
    APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_7();
    goto LABEL_24;
  }

  Count = CFArrayGetCount(v7);
  v9 = MEMORY[0x277CBECE8];
  if (Count < 11)
  {
    v11 = CFRetain(v7);
  }

  else
  {
    v10 = malloc_type_calloc(0xAuLL, 8uLL, 0x80040B8603338uLL);
    v22.location = 0;
    v22.length = 10;
    CFArrayGetValues(v7, v22, v10);
    v11 = CFArrayCreate(*v9, v10, 10, MEMORY[0x277CBF128]);
    free(v10);
  }

  CFArrayGetCount(v11);
  CFArrayApplyBlock();
  if (*(v18 + 24))
  {
    Mutable = CFDictionaryCreateMutable(*v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_5(&v21);
      goto LABEL_20;
    }

    v13 = CFDictionarySetInt64();
    v21 = v13;
    if (v13)
    {
      APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_3(v13);
      goto LABEL_20;
    }

    v14 = CFDictionarySetInt64();
    v21 = v14;
    if (v14)
    {
      APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_4(v14);
      goto LABEL_20;
    }

    CFDictionarySetValue(Mutable, @"addresses", v11);
    *a3 = Mutable;
  }

  else
  {
    APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_6();
  }

  Mutable = 0;
LABEL_20:
  if (v11)
  {
    CFRelease(v11);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_24:
  v15 = v21;
  _Block_object_dispose(&v17, 8);
  return v15;
}

uint64_t APBrokerCreateBrokeredReceiverFromBrokerResponseReceiverEntry(const void *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (gLogCategory_APBroker <= 30 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    APBrokerCreateBrokeredReceiverFromBrokerResponseReceiverEntry_cold_1(a3, a2, a3);
  }

  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!TypedValue)
  {
    APBrokerCreateBrokeredReceiverFromBrokerResponseReceiverEntry_cold_5();
    return 4294960591;
  }

  v9 = TypedValue;
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (!v10)
  {
    APBrokerCreateBrokeredReceiverFromBrokerResponseReceiverEntry_cold_4();
    return 4294960591;
  }

  v11 = v10;
  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  if (!v12)
  {
    APBrokerCreateBrokeredReceiverFromBrokerResponseReceiverEntry_cold_3();
    return 4294960591;
  }

  v13 = v12;
  CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue();
  if (!v14)
  {
    APBrokerCreateBrokeredReceiverFromBrokerResponseReceiverEntry_cold_2();
    return 4294960591;
  }

  v15 = v14;
  CFStringGetTypeID();
  v16 = CFDictionaryGetTypedValue();
  v17 = APBrokeredReceiverCreateWithTXTRecordBase64(a1, a2, v9, v11, v13, v15, v16, &cf);
  if (v17)
  {
    APSLogErrorAt();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a4 = cf;
  }

  return v17;
}

void __APBrokerCreateBrokeredReceiversFromBrokerResponse_block_invoke_2(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      v8 = 0;
      APBrokerCreateBrokeredReceiverFromBrokerResponseReceiverEntry(*(a1 + 32), *(a1 + 40), cf, &v8);
      v5 = v8;
      if (v8)
      {
        v6 = *(a1 + 48);
        PublicReceiverUUID = APBrokeredReceiverGetPublicReceiverUUID(v8);
        CFDictionarySetValue(v6, PublicReceiverUUID, v5);
        CFRelease(v5);
      }
    }
  }
}

CFTypeID __APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_block_invoke(CFTypeID result, CFTypeRef cf)
{
  v2 = result;
  if (!cf || (v3 = CFGetTypeID(cf), result = CFStringGetTypeID(), v3 != result))
  {
    *(*(*(v2 + 32) + 8) + 24) = 0;
  }

  return result;
}

void _APBrokerFinalize(void *a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APBroker <= 50 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    _APBrokerFinalize_cold_1(a1, a2, a3);
  }

  v4 = a1[7];
  if (v4)
  {
    dispatch_release(v4);
    a1[7] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  if (a1[5])
  {
    FigSimpleMutexDestroy();
    a1[5] = 0;
  }

  v6 = a1[3];
  if (v6)
  {
    CFRelease(v6);
    a1[3] = 0;
  }

  v7 = a1[2];
  if (v7)
  {
    CFRelease(v7);
    a1[2] = 0;
  }
}

void __APBrokerSendRequest_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (gLogCategory_APBroker <= 30 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    __APBrokerSendRequest_block_invoke_cold_1(a1);
  }

  (*(*(a1 + 32) + 16))();
  v7 = *(a1 + 32);

  _Block_release(v7);
}

uint64_t APTransportServiceCreate(uint64_t a1, const void *a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6, CFTypeRef *a7)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a5)
    {
      FigTransportServiceGetClassID();
      v13 = CMDerivedObjectCreate();
      if (v13)
      {
        v17 = v13;
        APTransportServiceCreate_cold_1(v13);
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *(DerivedStorage + 40) = a2;
        if (a2)
        {
          CFRetain(a2);
        }

        SNPrintF(label, 64, "APTransportService.%@", a2);
        v15 = dispatch_queue_create(label, 0);
        *(DerivedStorage + 8) = v15;
        if (v15)
        {
          *(DerivedStorage + 16) = a4;
          dispatch_retain(a4);
          *(DerivedStorage + 24) = a6;
          *(DerivedStorage + 32) = a5;
          *(DerivedStorage + 64) = 55667;
          *(DerivedStorage + 72) = 1;
          if (a3)
          {
            *(DerivedStorage + 72) = CFDictionaryGetInt64() != 0;
          }

          v16 = FigCFWeakReferenceTableCreate();
          if (v16)
          {
            v17 = v16;
            APTransportServiceCreate_cold_2(v16);
          }

          else
          {
            if (gLogCategory_APTransportService <= 30 && (gLogCategory_APTransportService != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APTransportService, "OSStatus APTransportServiceCreate(CFAllocatorRef, CFStringRef, CFDictionaryRef, dispatch_queue_t, FigTransportServiceEventCallback, void *, FigTransportServiceRef *)", 33554462, "APTransportService %{ptr} with type %@ created.\n", 0, a2);
            }

            v17 = 0;
            *a7 = 0;
          }
        }

        else
        {
          APTransportServiceCreate_cold_3();
          return 4294950705;
        }
      }
    }

    else
    {
      APTransportServiceCreate_cold_4();
      return 4294950706;
    }
  }

  else
  {
    APTransportServiceCreate_cold_5();
    return 4294950706;
  }

  return v17;
}

uint64_t APTransportServiceUnregisterSession(const void *a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  APSDispatchAsyncFHelper();
  return 0;
}

void service_unregisterSessionInternal(const void **a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportService <= 30 && (gLogCategory_APTransportService != -1 || _LogCategory_Initialize()))
  {
    service_unregisterSessionInternal_cold_1(a1);
  }

  v2 = FigCFWeakReferenceTableRemoveValue();
  if (v2)
  {
    service_unregisterSessionInternal_cold_2(v2);
  }

  v3 = *a1;
  if (*a1)
  {

    CFRelease(v3);
  }
}

uint64_t service_Invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 8), a1, service_deferInvalidateInternal);
  return 0;
}

void service_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  service_invalidateInternal(a1);
  v3 = DerivedStorage[5];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[5] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    dispatch_release(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[1];
  if (v5)
  {
    dispatch_release(v5);
    DerivedStorage[1] = 0;
  }
}

__CFString *service_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportService %p '%@'>", a1, *(DerivedStorage + 40));
  return Mutable;
}

uint64_t service_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();

  return FigDispatchSyncCopyPropertyImplementation();
}

uint64_t service_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(CMBaseObjectGetDerivedStorage() + 8);

  return MEMORY[0x2821127C0](v6, service_setPropertyInternal, a1, a2, a3);
}

void service_deferInvalidateInternal(const void *a1)
{
  service_invalidateInternal(a1);

  CFRelease(a1);
}

void service_cleanUp(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 56);
  if (v2)
  {
    APTConnectionListenerInvalidate(v2);
    v3 = *(DerivedStorage + 56);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 56) = 0;
    }
  }
}

uint64_t service_copyPropertyInternal(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"listeningPort"))
  {
    return 4294954512;
  }

  v8 = CFNumberCreate(a3, kCFNumberIntType, (DerivedStorage + 64));
  *a4 = v8;
  if (v8)
  {
    return 0;
  }

  service_copyPropertyInternal_cold_1();
  return 4294950705;
}

uint64_t service_setPropertyInternal(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"listeningPort"))
  {
    return 4294954512;
  }

  if (*(DerivedStorage + 56))
  {
    service_setPropertyInternal_cold_1();
    return 4294950704;
  }

  else if (a3 && (v6 = CFGetTypeID(a3), v6 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a3, kCFNumberIntType, (DerivedStorage + 64));
    return 0;
  }

  else
  {
    service_setPropertyInternal_cold_2();
    return 4294950706;
  }
}

uint64_t service_Resume(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 8), a1, service_resumeInternal);
  return 0;
}

uint64_t service_Suspend(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 8), a1, service_deferCleanUp);
  return 0;
}

void service_resumeInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportService <= 30 && (gLogCategory_APTransportService != -1 || _LogCategory_Initialize()))
  {
    service_resumeInternal_cold_1(a1);
  }

  if (*(DerivedStorage + 72))
  {
    v3 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    if (*(v3 + 56))
    {
      goto LABEL_13;
    }

    v4 = v3;
    v5 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (v5)
    {
      v6 = APTConnectionListenerCreate(*(v4 + 64), 0xFFFFFFFFLL, service_handleListenerConnected, v5, service_handleListenerInvalidated, v5, *(v4 + 8), &cf);
      if (v6)
      {
        v10 = v6;
        service_resumeInternal_cold_2(v6);
      }

      else
      {
        v7 = APTConnectionListenerResume(cf);
        if (v7)
        {
          v10 = v7;
          service_resumeInternal_cold_3(v7);
        }

        else
        {
          ListeningPort = APTConnectionListenerGetListeningPort(cf, (v4 + 64));
          if (!ListeningPort)
          {
            *(v4 + 56) = cf;
            goto LABEL_13;
          }

          v10 = ListeningPort;
          service_resumeInternal_cold_4(ListeningPort);
          v5 = 0;
        }
      }
    }

    else
    {
      service_resumeInternal_cold_5(&v12);
      v10 = v12;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v10)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    Session = service_createSession(a1, -1);
    if (Session)
    {
      service_resumeInternal_cold_6(Session);
    }
  }

LABEL_13:
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t service_createSession(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    service_createSession_cold_7(v18);
    return LODWORD(v18[0]);
  }

  v7 = Mutable;
  if (*(DerivedStorage + 72))
  {
    if (a2 == -1)
    {
      service_createSession_cold_1(v18);
      v16 = LODWORD(v18[0]);
      goto LABEL_19;
    }

    CFDictionarySetInt64();
  }

  CFDictionaryAddValue(v7, @"OwningService", a1);
  v8 = CFUUIDCreate(v5);
  if (v8)
  {
    v9 = v8;
    v10 = CFUUIDCreateString(v5, v8);
    if (v10)
    {
      v11 = CFGetAllocator(a1);
      v12 = APTransportSessionCreate(v11, 0, v10, 0, v7, &cf);
      if (v12)
      {
        v16 = v12;
        service_createSession_cold_2(v12);
      }

      else
      {
        v13 = cf;
        CMBaseObjectGetDerivedStorage();
        v18[0] = 0;
        Key = FigCFWeakReferenceTableAddValueAndGetKey();
        if (Key)
        {
          v16 = Key;
          service_createSession_cold_3(Key);
        }

        else
        {
          v15 = APSSetFBOPropertyInt64();
          if (!v15)
          {
            if (gLogCategory_APTransportService <= 30 && (gLogCategory_APTransportService != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APTransportService, "OSStatus service_registerSession(FigTransportServiceRef, FigTransportSessionRef)", 33554462, "APTransportService receiver session %{ptr} registered with token %llu.\n", v13, v18[0]);
            }

            v18[0] = CFRetain(a1);
            v18[1] = CFRetain(cf);
            APSDispatchAsyncFHelper();
            v16 = 0;
            goto LABEL_15;
          }

          v16 = v15;
          service_createSession_cold_4(v15);
        }

        APSLogErrorAt();
      }
    }

    else
    {
      service_createSession_cold_5();
      v16 = 4294950705;
    }

LABEL_15:
    CFRelease(v9);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    goto LABEL_19;
  }

  service_createSession_cold_6();
  v16 = 4294950705;
LABEL_19:
  CFRelease(v7);
  return v16;
}

void service_handleListenerConnected(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4 && !*CMBaseObjectGetDerivedStorage())
    {
      Session = service_createSession(v4, a3);
      if (!Session)
      {
LABEL_5:

        CFRelease(v4);
        return;
      }

      service_handleListenerConnected_cold_1(Session);
    }
  }

  else
  {
    service_handleListenerConnected_cold_2();
    v4 = 0;
  }

  if ((a3 & 0x80000000) == 0 && close(a3) && *__error())
  {
    __error();
  }

  if (v4)
  {
    goto LABEL_5;
  }
}

void service_handleListenerInvalidated(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void service_notifyNewReceiverSessionCallback(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  (*(DerivedStorage + 32))(0, a1[1], *(DerivedStorage + 24));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = a1[1];
  if (v3)
  {

    CFRelease(v3);
  }
}

void service_deferCleanUp(const void *a1)
{
  service_cleanUp(a1);

  CFRelease(a1);
}

uint64_t wifiManagerClient_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APTransportWifiManagerClientCreate(uint64_t a1, uint64_t *a2)
{
  if (_MergedGlobals_14 != -1)
  {
    APTransportWifiManagerClientCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
    v5 = dispatch_queue_create("APTransportWifiManagerClient.queue", 0);
    *(v4 + 16) = v5;
    if (v5)
    {
      *(v4 + 24) = 0;
      if (gLogCategory_APTransportWifiManagerClient <= 30 && (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize()))
      {
        APTransportWifiManagerClientCreate_cold_2(v4, v6, v7);
      }

      v8 = 0;
      *a2 = v4;
    }

    else
    {
      v8 = 4294895566;
      APTransportWifiManagerClientCreate_cold_3(v4);
    }
  }

  else
  {
    v8 = 4294895566;
    APTransportWifiManagerClientCreate_cold_4();
  }

  return v8;
}

uint64_t APTransportWifiManagerClientRegister(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __APTransportWifiManagerClientRegister_block_invoke;
  v4[3] = &unk_278BC7668;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __APTransportWifiManagerClientRegister_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v13 = 0;
  if (*(v2 + 48))
  {
    goto LABEL_2;
  }

  v5 = objc_alloc_init(MEMORY[0x277D02B18]);
  v6 = v5;
  if (!v5)
  {
    __APTransportWifiManagerClientRegister_block_invoke_cold_3();
    v10 = -71730;
    goto LABEL_18;
  }

  [v5 activate];
  v7 = [MEMORY[0x277D02AD8] activityWithType:4 reason:0];
  if (!v7)
  {
    v10 = -71733;
    __APTransportWifiManagerClientRegister_block_invoke_cold_2();
    goto LABEL_18;
  }

  v8 = v7;
  if ([v6 beginActivity:v7 error:&v13])
  {
    *(v2 + 48) = v6;
    *(v2 + 56) = v8;
    if (gLogCategory_APTransportWifiManagerClient >= 41)
    {
      v10 = 0;
      v6 = 0;
      ++*(v2 + 24);
      goto LABEL_18;
    }

    if (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize())
    {
      __APTransportWifiManagerClientRegister_block_invoke_cold_1((v2 + 48));
    }

LABEL_2:
    v3 = gLogCategory_APTransportWifiManagerClient;
    v4 = (*(v2 + 24) + 1);
    *(v2 + 24) = v4;
    if (v3 <= 30)
    {
      if (v3 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        v4 = *(v2 + 24);
      }

      LogPrintF(&gLogCategory_APTransportWifiManagerClient, "OSStatus wifiManagerClient_registerInternal(APTransportWifiManagerClientRef)", 33554462, "[%{ptr}] Register: RegistrationCount = %d\n", *(v2 + 48), v4);
    }

LABEL_17:
    v10 = 0;
    v6 = 0;
    goto LABEL_18;
  }

  v9 = NSErrorToOSStatus();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = -71733;
  }

  APSLogErrorAt();
LABEL_18:
  [v6 invalidate];

  CFRetain(v2);
  v11 = *(v2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __wifiManagerClient_registerInternal_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v2;
  dispatch_async(v11, block);
  *(*(*(a1 + 32) + 8) + 24) = v10;
}

uint64_t APTransportWifiManagerClientUnregister(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __APTransportWifiManagerClientUnregister_block_invoke;
  v4[3] = &unk_278BC7668;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t APTransportWifiManagerClientCopyWifiStatistics(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APTransportWifiManagerClientCopyWifiStatistics_block_invoke;
  block[3] = &unk_278BC80B8;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __APTransportWifiManagerClientCopyWifiStatistics_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  cf = 0;
  if (!v3)
  {
    __APTransportWifiManagerClientCopyWifiStatistics_block_invoke_cold_4();
    v8 = -71732;
    goto LABEL_13;
  }

  v4 = wifiManagerClient_ensureSubscribedForStatistics(v2);
  if (v4)
  {
    v8 = v4;
    __APTransportWifiManagerClientCopyWifiStatistics_block_invoke_cold_1(v4);
LABEL_19:
    v6 = 0;
    goto LABEL_6;
  }

  Samples = IOReportCreateSamples();
  if (!Samples)
  {
    v8 = -71730;
    APSLogErrorAt();
    if (gLogCategory_APTransportWifiManagerClient <= 90 && (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize()))
    {
      __APTransportWifiManagerClientCopyWifiStatistics_block_invoke_cold_3(&cf);
    }

    goto LABEL_19;
  }

  v6 = Samples;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (IOReportIterate())
  {
    __APTransportWifiManagerClientCopyWifiStatistics_block_invoke_cold_2(&v10);
    v8 = v10;
    goto LABEL_7;
  }

  v8 = 0;
  *v3 = Mutable;
LABEL_6:
  Mutable = 0;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v6)
  {
    CFRelease(v6);
  }

LABEL_13:
  *(*(a1[4] + 8) + 24) = v8;
}

uint64_t APTransportWifiManagerClientGetPeerRSSI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = *(a1 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __APTransportWifiManagerClientGetPeerRSSI_block_invoke;
  v6[3] = &unk_278BC80E0;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __APTransportWifiManagerClientGetPeerRSSI_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  cf = 0;
  if (v4)
  {
    v5 = wifiManagerClient_ensureSubscribedForStatistics(v2);
    v11 = v5;
    if (v5)
    {
      __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_1(v5);
      v7 = 0;
      v8 = 0;
    }

    else
    {
      Samples = IOReportCreateSamples();
      if (Samples)
      {
        v7 = Samples;
        v8 = CFStringCreateF(&v11, "%@ %.6a", @"Interface awdl0 Peer", v3);
        if (v11)
        {
          __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_2(v11);
        }

        else if (IOReportSelectChannelsInGroup())
        {
          __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_3(&v11);
        }

        else
        {
          v9[0] = MEMORY[0x277D85DD0];
          v9[1] = 3221225472;
          v9[2] = __wifiManagerClient_getPeerRSSI_block_invoke;
          v9[3] = &__block_descriptor_40_e25_i16__0____CFDictionary__8l;
          v9[4] = v4;
          if (IOReportIterate())
          {
            __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_4(&v11);
          }
        }
      }

      else
      {
        __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_5(&v11, &cf, &v12, v9);
        v7 = v12;
        v8 = v9[0];
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_6(&v11);
  }

  *(*(a1[4] + 8) + 24) = v11;
}

void wifiManagerClient_Finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APTransportWifiManagerClient <= 30 && (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize()))
  {
    wifiManagerClient_Finalize_cold_1(a1, a2, a3);
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 40) = 0;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 16) = 0;
  }
}

void __wifiManagerClient_registerInternal_block_invoke(uint64_t a1)
{
  wifiManagerClient_dumpWifiStatistics(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void wifiManagerClient_dumpWifiStatistics(uint64_t a1)
{
  cf[0] = 0;
  v1 = wifiManagerClient_ensureSubscribedForStatistics(a1);
  if (v1)
  {
    wifiManagerClient_dumpWifiStatistics_cold_1(v1);
    return;
  }

  Samples = IOReportCreateSamples();
  if (Samples)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x5810000000;
    v14 = &unk_23D386B49;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x5810000000;
    v6[3] = &unk_23D386B49;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
    v5 = 0;
    DataBuffer_Init();
    DataBuffer_Init();
    cf[1] = MEMORY[0x277D85DD0];
    cf[2] = 3221225472;
    cf[3] = __wifiManagerClient_printSamples_block_invoke;
    cf[4] = &unk_278BC9270;
    cf[5] = &v11;
    cf[6] = v19;
    cf[7] = v6;
    if (IOReportIterate())
    {
      APSLogErrorAt();
      v3 = APSSignalErrorAt();
    }

    else
    {
      v3 = DataBuffer_Append();
      if (!v3)
      {
        v3 = DataBuffer_Commit();
        if (!v3)
        {
          if (gLogCategory_APTransportWifiManagerClient <= 50 && (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APTransportWifiManagerClient, "OSStatus wifiManagerClient_printSamples(CFDictionaryRef)", 33554482, "%s\n", v5);
          }

          if (!v12[8])
          {
            goto LABEL_17;
          }

          v3 = DataBuffer_Append();
          if (!v3)
          {
            v3 = DataBuffer_Commit();
            if (!v3)
            {
              if (gLogCategory_APTransportWifiManagerClient <= 30 && (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APTransportWifiManagerClient, "OSStatus wifiManagerClient_printSamples(CFDictionaryRef)", 33554462, "%s\n", v5);
              }

LABEL_17:
              v3 = 0;
              goto LABEL_18;
            }
          }
        }
      }

      APSLogErrorAt();
    }

LABEL_18:
    DataBuffer_Free();
    DataBuffer_Free();
    _Block_object_dispose(v6, 8);
    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(v19, 8);
    if (v3)
    {
      wifiManagerClient_dumpWifiStatistics_cold_2(v3);
    }

    goto LABEL_20;
  }

  wifiManagerClient_dumpWifiStatistics_cold_3(cf);
LABEL_20:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (Samples)
  {
    CFRelease(Samples);
  }
}

void sub_23D30A6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 152), 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __wifiManagerClient_pruneIOReport_block_invoke(uint64_t a1, uint64_t a2)
{
  SubGroup = IOReportChannelGetSubGroup();
  ChannelName = IOReportChannelGetChannelName();
  v5 = 273;
  if (SubGroup)
  {
    v6 = ChannelName;
    if (ChannelName)
    {
      Length = CFStringGetLength(ChannelName);
      MutableCopy = CFStringCreateMutableCopy(0, Length, v6);
      CFStringTrimWhitespace(MutableCopy);
      if (!CFSetContainsValue(*(a1 + 32), MutableCopy))
      {
        v5 = 16;
        if (!MutableCopy)
        {
          return v5;
        }

        goto LABEL_5;
      }

      v5 = 16 * (CFSetContainsValue(*(a1 + 40), SubGroup) == 0);
      if (MutableCopy)
      {
LABEL_5:
        CFRelease(MutableCopy);
      }
    }
  }

  return v5;
}

uint64_t __wifiManagerClient_printSamples_block_invoke(void *a1, uint64_t a2)
{
  Group = IOReportChannelGetGroup();
  if (CFStringHasPrefix(Group, @"Interface awdl0 Peer"))
  {
    v5 = *(a1[4] + 8);
    IOReportChannelGetGroup();
    IntegerValue = IOReportSimpleGetIntegerValue();
    v19 = 0;
    v20 = 0;
    v18 = 0;
    if (a2)
    {
      v7 = IntegerValue;
      if (!*(v5 + 64) && (v8 = DataBuffer_AppendF(v5 + 32, "Interface awdl0 Peer RSSIs: "), v8))
      {
        __wifiManagerClient_printSamples_block_invoke_cold_1(v8);
      }

      else
      {
        CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
        if (CStringPtrAndBufferToFree)
        {
          if (SNScanF(CStringPtrAndBufferToFree, -1, "Interface awdl0 Peer %&s", &v19, &v18) == 1)
          {
            v10 = DataBuffer_AppendF(v5 + 32, "%s = ", v19);
            if (v10)
            {
              __wifiManagerClient_printSamples_block_invoke_cold_3(v10);
            }

            else
            {
              v11 = DataBuffer_AppendF(v5 + 32, "%lld, ", v7);
              if (v11)
              {
                __wifiManagerClient_printSamples_block_invoke_cold_4(v11);
              }
            }
          }

          else
          {
            __wifiManagerClient_printSamples_block_invoke_cold_2();
          }
        }

        else
        {
          __wifiManagerClient_printSamples_block_invoke_cold_5();
        }
      }
    }

    else
    {
      __wifiManagerClient_printSamples_block_invoke_cold_6();
    }

    free(v20);
  }

  else
  {
    if (!FigCFEqual())
    {
      *(*(a1[5] + 8) + 24) = Group;
      DataBuffer_AppendF(*(a1[6] + 8) + 32, "\n%@: ", *(*(a1[5] + 8) + 24));
    }

    ChannelName = IOReportChannelGetChannelName();
    Length = CFStringGetLength(ChannelName);
    MutableCopy = CFStringCreateMutableCopy(0, Length, ChannelName);
    CFStringTrimWhitespace(MutableCopy);
    UnitLabel = IOReportChannelGetUnitLabel();
    v16 = IOReportSimpleGetIntegerValue();
    DataBuffer_AppendF(*(a1[6] + 8) + 32, "%@ = ", MutableCopy);
    DataBuffer_AppendF(*(a1[6] + 8) + 32, "%lld ", v16);
    DataBuffer_AppendF(*(a1[6] + 8) + 32, "%@, ", UnitLabel);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  return 0;
}

void __wifiManagerClient_unregisterInternal_block_invoke(uint64_t a1)
{
  wifiManagerClient_dumpWifiStatistics(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

__CFString *screenpackage_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportPackageScreen %p>", a1);
  return Mutable;
}

CFTypeRef screenpackage_CopyMessageData(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *DerivedStorage;
  if (*DerivedStorage)
  {
    CFRetain(*DerivedStorage);
  }

  return v2;
}

uint64_t APTransportStreamAggregateCreate(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (!a3)
  {
    APTransportStreamAggregateCreate_cold_8();
    return 4294950686;
  }

  FigTransportStreamGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v12 = v5;
    APTransportStreamAggregateCreate_cold_1(v5);
    goto LABEL_26;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SNPrintF(v16, 64, "APTransportStreamAggregate.%{ptr}", cf);
  v7 = FigDispatchQueueCreateWithPriority();
  DerivedStorage[2] = v7;
  if (!v7)
  {
    APTransportStreamAggregateCreate_cold_7();
LABEL_25:
    v12 = 4294950685;
    goto LABEL_26;
  }

  v8 = FigSimpleMutexCreate();
  DerivedStorage[5] = v8;
  if (!v8)
  {
    APTransportStreamAggregateCreate_cold_6();
    goto LABEL_25;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  DerivedStorage[7] = Mutable;
  if (!Mutable)
  {
    APTransportStreamAggregateCreate_cold_5();
    goto LABEL_25;
  }

  v10 = dispatch_semaphore_create(0);
  DerivedStorage[3] = v10;
  if (!v10)
  {
    APTransportStreamAggregateCreate_cold_4();
    goto LABEL_25;
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"SendBackingProvider");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    DerivedStorage[1] = Value;
    if (Value)
    {
      goto LABEL_11;
    }
  }

  else if (DerivedStorage[1])
  {
LABEL_11:
    if (gLogCategory_APTransportStreamAggregate <= 50 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
    {
      APTransportStreamAggregateCreate_cold_2(&cf);
    }

    v12 = 0;
    *a3 = cf;
    return v12;
  }

  APTransportStreamAggregateCreate_cold_3(&v15);
  v12 = v15;
LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t APTransportStreamAggregateAddSubStream(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v5 = DerivedStorage, (v6 = *(CMBaseObjectGetVTable() + 16)) == 0) || v6 != &kAPTransportStreamAggregate_FigTransportStreamClass)
  {
    APTransportStreamAggregateAddSubStream_cold_7();
    return 4294950686;
  }

  FigSimpleMutexLock();
  if (gLogCategory_APTransportStreamAggregate <= 50 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportStreamAggregate, "OSStatus APTransportStreamAggregateAddSubStream(FigTransportStreamRef, FigTransportStreamRef, CFDictionaryRef)", 33554482, "[%{ptr}] Adding SubStream %{ptr}\n", a1, a2);
  }

  v7 = *(v5 + 48);
  v8 = CMBaseObjectGetDerivedStorage();
  if (!v7)
  {
    cf = 0;
    value = 0;
    FigSimpleMutexCheckIsLockedOnThisThread();
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v20 = v19(CMBaseObject, @"SendConnection", *MEMORY[0x277CBECE8], &value);
      if (!v20)
      {
        APTransportConnectionAggregateProtocolGetProtocolID();
        ProtocolVTable = CMBaseObjectGetProtocolVTable();
        if (!ProtocolVTable || !*(ProtocolVTable + 16))
        {
          APTransportStreamAggregateAddSubStream_cold_5();
          v22 = 0;
          v17 = 4294950686;
          goto LABEL_48;
        }

        v22 = CFStringCreateF(0, "AggregateConnection-For-%{ptr}", a1);
        if (!v22)
        {
          APTransportStreamAggregateAddSubStream_cold_4();
          v17 = 4294950685;
          goto LABEL_48;
        }

        v23 = value;
        APTransportConnectionAggregateProtocolGetProtocolID();
        v24 = CMBaseObjectGetProtocolVTable();
        if (v24 && (v25 = *(v24 + 16)) != 0)
        {
          v26 = *(v25 + 8);
          if (v26)
          {
            v27 = v26(v23, v22, &cf);
            if (v27)
            {
              v17 = v27;
            }

            else
            {
              v28 = cf;
              v29 = *(v8 + 16);
              v30 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (v30)
              {
                v31 = v30(v28, a1, streamAggregate_eventReceived, v29, 0);
                if (v31)
                {
                  v17 = v31;
                }

                else
                {
                  APTransportConnectionGetCMBaseObject();
                  v33 = v32;
                  v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v34)
                  {
                    v35 = v34(v33, @"PackageType", @"RTP");
                    if (v35)
                    {
                      v17 = v35;
                    }

                    else
                    {
                      v36 = cf;
                      v37 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                      if (v37)
                      {
                        v38 = v37(v36);
                        if (!v38)
                        {
                          v39 = *(v8 + 24);
                          v40 = dispatch_time(0, 4000000000);
                          if (dispatch_semaphore_wait(v39, v40))
                          {
                            APTransportStreamAggregateAddSubStream_cold_3(&v46);
                            v17 = v46;
                          }

                          else
                          {
                            if (!*(v8 + 32))
                            {
                              if (gLogCategory_APTransportStreamAggregate <= 50 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
                              {
                                LogPrintF(&gLogCategory_APTransportStreamAggregate, "OSStatus streamAggregate_createConnectionForInitialStream(FigTransportStreamRef, FigTransportStreamRef)", 33554482, "[%{ptr}] Created Aggregate Connection [%{ptr}] from connection [%{ptr}]\n", a1, cf, value);
                              }

                              CFDictionarySetValue(*(v8 + 56), a2, value);
                              v17 = 0;
                              *(v8 + 48) = cf;
                              cf = 0;
LABEL_52:
                              if (value)
                              {
                                CFRelease(value);
                              }

                              if (cf)
                              {
                                CFRelease(cf);
                              }

                              if (v22)
                              {
                                CFRelease(v22);
                              }

                              if (v17)
                              {
                                APTransportStreamAggregateAddSubStream_cold_6(v17);
                              }

                              goto LABEL_60;
                            }

                            APSLogErrorAt();
                            v17 = APSSignalErrorAt();
                          }

LABEL_48:
                          if (v17)
                          {
                            v41 = cf;
                            if (cf)
                            {
                              v42 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                              if (v42)
                              {
                                v42(v41, 0);
                              }
                            }
                          }

                          goto LABEL_52;
                        }

                        v17 = v38;
                      }

                      else
                      {
                        v17 = 4294954514;
                      }
                    }
                  }

                  else
                  {
                    v17 = 4294954514;
                  }
                }
              }

              else
              {
                v17 = 4294954514;
              }
            }
          }

          else
          {
            v17 = 4294954514;
          }
        }

        else
        {
          v17 = 4294954508;
        }

        APSLogErrorAt();
        goto LABEL_48;
      }

      v17 = v20;
    }

    else
    {
      v17 = 4294954514;
    }

    APSLogErrorAt();
    v22 = 0;
    goto LABEL_48;
  }

  value = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (CFDictionaryContainsKey(*(v8 + 56), a2))
  {
    APTransportStreamAggregateAddSubStream_cold_1();
    v17 = 4294950686;
    goto LABEL_42;
  }

  v9 = FigTransportStreamGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    v17 = 4294954514;
    goto LABEL_41;
  }

  v11 = v10(v9, @"SendConnection", *MEMORY[0x277CBECE8], &value);
  if (v11)
  {
    v17 = v11;
    goto LABEL_41;
  }

  v12 = *(v8 + 48);
  v13 = value;
  APTransportConnectionAggregateProtocolGetProtocolID();
  v14 = CMBaseObjectGetProtocolVTable();
  if (!v14 || (v15 = *(v14 + 16)) == 0)
  {
    v17 = 4294954508;
    goto LABEL_41;
  }

  v16 = *(v15 + 16);
  if (!v16)
  {
    v17 = 4294954514;
    goto LABEL_41;
  }

  v17 = v16(v12, v13);
  if (v17)
  {
LABEL_41:
    APSLogErrorAt();
    goto LABEL_42;
  }

  CFDictionarySetValue(*(v8 + 56), a2, value);
LABEL_42:
  if (value)
  {
    CFRelease(value);
  }

  if (v17)
  {
    APTransportStreamAggregateAddSubStream_cold_2(v17);
  }

LABEL_60:
  FigSimpleMutexUnlock();
  return v17;
}

uint64_t APTransportStreamAggregateRemoveSubStream(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v5 = DerivedStorage, (v6 = *(CMBaseObjectGetVTable() + 16)) == 0) || v6 != &kAPTransportStreamAggregate_FigTransportStreamClass)
  {
    APTransportStreamAggregateRemoveSubStream_cold_3();
    return 4294950686;
  }

  if (!*(v5 + 48))
  {
    APTransportStreamAggregateRemoveSubStream_cold_2();
    return 4294950686;
  }

  FigSimpleMutexLock();
  if (gLogCategory_APTransportStreamAggregate <= 50 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportStreamAggregate, "OSStatus APTransportStreamAggregateRemoveSubStream(FigTransportStreamRef, FigTransportStreamRef, CFDictionaryRef)", 33554482, "[%{ptr}] Removing SubStream %{ptr}\n", a1, a2);
  }

  Value = CFDictionaryGetValue(*(v5 + 56), a2);
  if (!Value)
  {
    APTransportStreamAggregateRemoveSubStream_cold_1();
    v13 = 4294950686;
    goto LABEL_17;
  }

  v8 = Value;
  v9 = *(v5 + 48);
  APTransportConnectionAggregateProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v11 = *(ProtocolVTable + 16)) == 0)
  {
    v13 = 4294954508;
    goto LABEL_16;
  }

  v12 = *(v11 + 24);
  if (!v12)
  {
    v13 = 4294954514;
    goto LABEL_16;
  }

  v13 = v12(v9, v8);
  if (v13)
  {
LABEL_16:
    APSLogErrorAt();
    goto LABEL_17;
  }

  CFDictionaryRemoveValue(*(v5 + 56), a2);
LABEL_17:
  FigSimpleMutexUnlock();
  return v13;
}

void streamAggregate_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStreamAggregate <= 30 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
  {
    streamAggregate_Finalize_cold_1(a1);
  }

  streamAggregate_invalidateInternal(a1);
  FigSimpleMutexDestroy();
  v3 = DerivedStorage[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = DerivedStorage[3];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = DerivedStorage[6];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[7];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[1];
  if (v7)
  {

    CFRelease(v7);
  }
}

__CFString *streamAggregate_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportStreamAggregate %p>", a1);
  return Mutable;
}

uint64_t streamAggregate_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    streamAggregate_CopyProperty_cold_1();
    return 4294950679;
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*DerivedStorage)
  {
    streamAggregate_CopyProperty_cold_2();
    v13 = 4294950679;
    goto LABEL_15;
  }

  if (!CFEqual(a2, @"PrimaryPacketDropCount"))
  {
    if (gLogCategory_APTransportStreamAggregate <= 50 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportStreamAggregate, "OSStatus streamAggregate_copyPropertyInternal(FigTransportStreamRef, CFStringRef, CFAllocatorRef, void *)", 33554482, "[%{ptr}] ### Unsupported CopyProperty: %@\n", a1, a2);
    }

    v13 = 4294954509;
    goto LABEL_15;
  }

  if (!*(DerivedStorage + 48))
  {
    streamAggregate_CopyProperty_cold_3(a4);
    goto LABEL_7;
  }

  APTransportConnectionGetCMBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    v13 = 4294954514;
LABEL_9:
    APSLogErrorAt();
LABEL_15:
    FigSimpleMutexUnlock();
    APSLogErrorAt();
    return v13;
  }

  v12 = v11(v10, @"PrimaryPacketDropCount", a3, a4);
  if (v12)
  {
    v13 = v12;
    goto LABEL_9;
  }

LABEL_7:
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t streamAggregate_SetProperty(uint64_t a1, uint64_t a2)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    streamAggregate_SetProperty_cold_1();
    return 4294950679;
  }

  else
  {
    if (gLogCategory_APTransportStreamAggregate <= 50 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportStreamAggregate, "OSStatus streamAggregate_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] ### Unsupported SetProperty: %@\n", a1, a2);
    }

    return 4294954509;
  }
}

uint64_t streamAggregate_Resume(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStreamAggregate <= 50 && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
  {
    streamAggregate_Resume_cold_1(a1);
  }

  if (!*DerivedStorage)
  {
    return 0;
  }

  streamAggregate_Resume_cold_2();
  return 4294950679;
}

uint64_t streamAggregate_copyFormattedAsyncPackageForBBuf(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t *a4, char *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    streamAggregate_copyFormattedAsyncPackageForBBuf_cold_4();
    return 4294950686;
  }

  if (!a4)
  {
    streamAggregate_copyFormattedAsyncPackageForBBuf_cold_3();
    return 4294950686;
  }

  if (!a5)
  {
    streamAggregate_copyFormattedAsyncPackageForBBuf_cold_2();
    return 4294950686;
  }

  v10 = DerivedStorage;
  v11 = CMBaseObjectGetDerivedStorage();
  dataPointerOut = 0;
  v30 = 0;
  v27 = 0;
  lengthAtOffsetOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(a2, 0, &lengthAtOffsetOut, &v27, &dataPointerOut);
  if (DataPointer)
  {
    v25 = DataPointer;
    APSLogErrorAt();
    goto LABEL_31;
  }

  if (lengthAtOffsetOut != v27 || (APTransportStreamSendBackingProviderCopyPackageForAcquiredBBuf(*(v11 + 8), a2, &v30), (v13 = v30) == 0))
  {
    v15 = APTransportStreamSendBackingProviderCopyPackageForGivenBBuf(*(v11 + 8), a2, &v30);
    if (!v15)
    {
      v14 = 1;
      v13 = v30;
      goto LABEL_10;
    }

    v25 = v15;
    streamAggregate_copyFormattedAsyncPackageForBBuf_cold_1(v15);
LABEL_31:
    APSLogErrorAt();
    return v25;
  }

  v14 = 0;
LABEL_10:
  *a4 = v13;
  *a5 = v14;
  v16 = *a4;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v17)
  {
    v18 = v17(v16);
  }

  else
  {
    v18 = 0;
  }

  v19 = *a4;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v20)
  {
    v20(v19, a3);
  }

  if (*(v10 + 8))
  {
    if (!v18)
    {
      v21 = *a4;
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v22)
      {
        v22(v21, a2);
      }
    }
  }

  v23 = *a4;
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v24)
  {
    v24(v23, 1634957678);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return 0;
}

uint64_t streamAggregate_eventReceived(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((v4 - 4) > 4)
  {
    v6 = 33554462;
  }

  else
  {
    v6 = dword_23D3838E8[v4 - 4];
  }

  if ((v6 & 0x3E) >= gLogCategory_APTransportStreamAggregate && (gLogCategory_APTransportStreamAggregate != -1 || _LogCategory_Initialize()))
  {
    streamAggregate_eventReceived_cold_1(v4, v6, a3);
  }

  if (v4 == 5)
  {
    goto LABEL_10;
  }

  if (v4 == 4)
  {
    *(DerivedStorage + 32) = CFGetInt64();
LABEL_10:
    dispatch_semaphore_signal(*(DerivedStorage + 24));
  }

  return 0;
}

const char *APBrokerHTTPMethodString(int a1)
{
  v1 = "UNKNOWNMETHOD";
  if (a1 == 2)
  {
    v1 = "POST";
  }

  if (a1 == 1)
  {
    return "GET";
  }

  else
  {
    return v1;
  }
}

const char *APBrokerHTTPProtocolString(int a1)
{
  if (a1)
  {
    return "https";
  }

  else
  {
    return "http";
  }
}

void APBrokerHTTPSendRequest(uint64_t a1, uint64_t a2, const void *a3, int a4, int a5, const void *a6, const void *a7, const void *a8, uint64_t a9, const void *a10)
{
  v18 = a10;
  v51 = *MEMORY[0x277D85DE8];
  v43 = 0;
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    v19 = "UNKNOWNMETHOD";
    if (a5 == 2)
    {
      v19 = "POST";
    }

    if (a5 == 1)
    {
      v19 = "GET";
    }

    if (a4)
    {
      if (a4 == 1)
      {
        v20 = "Bonjour";
      }

      else
      {
        v20 = "?";
        if (a4 == 2)
        {
          v20 = "DNS";
        }
      }
    }

    else
    {
      v20 = "Invalid";
    }

    LogPrintF(&gLogCategory_APBrokerHTTPUtils, "void APBrokerHTTPSendRequest(void *, CFTypeRef, CFStringRef, APBrokerHTTPRequestDestinationType, int, CFStringRef, CFDictionaryRef, CFTypeRef, CFDictionaryRef, APBrokerHTTPResponseHandler)", 33554462, "[%{ptr}] Starting HTTP %s to destination=%@ (%s) URL=%@ with options: %@\n", a1, v19, a3, v20, a6, a9);
  }

  if (!a10)
  {
    APBrokerHTTPSendRequest_cold_12();
    return;
  }

  if (!a3)
  {
    APBrokerHTTPSendRequest_cold_11(&v43);
    goto LABEL_53;
  }

  if (!a4)
  {
    APBrokerHTTPSendRequest_cold_10(&v43);
    goto LABEL_53;
  }

  cf = a3;
  v21 = malloc_type_calloc(1uLL, 0x68uLL, 0x10E00402108E38DuLL);
  if (!v21)
  {
    APBrokerHTTPSendRequest_cold_9();
    goto LABEL_53;
  }

  v22 = v21;
  *v21 = a1;
  if (a2)
  {
    v23 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(v22 + 8) = v23;
    if (!v23)
    {
      APBrokerHTTPSendRequest_cold_1();
      goto LABEL_49;
    }
  }

  *(v22 + 16) = a5;
  if (a6)
  {
    v24 = CFRetain(a6);
  }

  else
  {
    v24 = 0;
  }

  *(v22 + 32) = v24;
  if (a7)
  {
    v25 = CFRetain(a7);
  }

  else
  {
    v25 = 0;
  }

  *(v22 + 40) = v25;
  if (a8)
  {
    v26 = CFRetain(a8);
  }

  else
  {
    v26 = 0;
  }

  *(v22 + 48) = v26;
  v27 = _Block_copy(a10);
  *(v22 + 56) = v27;
  if (!v27)
  {
    APBrokerHTTPSendRequest_cold_8();
    goto LABEL_49;
  }

  if (a9)
  {
    Int64 = CFDictionaryGetInt64();
    *(v22 + 20) = Int64 != 0;
    if (Int64)
    {
      CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (!TypedValue)
      {
        APBrokerHTTPSendRequest_cold_3(&v43);
        goto LABEL_49;
      }

      v30 = [[APBrokerHTTPUtilsTaskDelegate alloc] initWithLogContext:a1 sslCertificateHostName:TypedValue];
      *(v22 + 24) = v30;
      if (!v30)
      {
        APBrokerHTTPSendRequest_cold_2();
        goto LABEL_49;
      }
    }
  }

  if (a4 != 1)
  {
    *(v22 + 64) = CFRetain(cf);
    if (*(v22 + 20))
    {
      v34 = "https";
    }

    else
    {
      v34 = "http";
    }

    v35 = CFStringCreateF(&v43, "%s://%@%@", v34, cf, a6);
    if (v43)
    {
      APBrokerHTTPSendRequest_cold_4(v43);
      if (!v35)
      {
LABEL_48:
        if (!v22)
        {
LABEL_50:
          if (!v18)
          {
            return;
          }

          if (!v43)
          {
            v43 = -6762;
          }

LABEL_53:
          (*(v18 + 2))(v18, 0, 0, 0, 0);
          return;
        }

LABEL_49:
        _APBrokerHTTPReleaseRequestData(v22);
        goto LABEL_50;
      }
    }

    else
    {
      _APBrokerHTTPSendRequestToURL(v22, v35);
      v22 = 0;
      v18 = 0;
      if (!v35)
      {
        goto LABEL_48;
      }
    }

    CFRelease(v35);
    goto LABEL_48;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  v40 = __APBrokerHTTPSendRequest_block_invoke;
  v41 = &__block_descriptor_40_e131_v52__0____CFString__8____sockaddr_CC_14c___sockaddr_in_CCS_in_addr_I__8c___sockaddr_in6_CCSI_in6_addr_____16C__8S__4I___I__16I44i48l;
  v42 = v22;
  v49 = 0u;
  v50 = 0u;
  *label = 0u;
  v48 = 0u;
  v46 = 0;
  v31 = malloc_type_calloc(1uLL, 0x48uLL, 0x10E004006E54201uLL);
  v32 = v31;
  if (!v31)
  {
    APBrokerHTTPSendRequest_cold_7();
LABEL_72:
    v37 = 4294960568;
LABEL_74:
    memset(v44, 0, sizeof(v44));
    v45 = 0;
    v40(aBlock, 0, v44, 0, v37);
    goto LABEL_57;
  }

  *v31 = v22;
  v31[1] = _Block_copy(aBlock);
  SNPrintF(label, 64, "APBrokerResolve.%{ptr}", v22);
  v33 = dispatch_queue_create(label, 0);
  v32[2] = v33;
  if (!v33)
  {
    APBrokerHTTPSendRequest_cold_6();
    goto LABEL_72;
  }

  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrokerHTTPUtils, "OSStatus _APBrokerHTTPResolve(void *, CFStringRef, APBrokerHTTPResolveHandler)", 33554462, "[%{ptr}] Starting resolve of %@", v22, cf);
  }

  FigCFStringGetCStringPtrAndBufferToFree();
  v36 = AsyncConnection_Connect();
  if (v36)
  {
    v37 = v36;
    APBrokerHTTPSendRequest_cold_5(v36);
    goto LABEL_74;
  }

  v32 = 0;
LABEL_57:
  if (v46)
  {
    free(v46);
  }

  if (v32)
  {
    _APBrokerHTTPReleaseResolutionData(v32);
  }
}

void __APBrokerHTTPSendRequest_block_invoke(uint64_t a1, CFTypeRef cf, _OWORD *a3, int a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  *v23 = *a3;
  *&v23[12] = *(a3 + 12);
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrokerHTTPUtils, "void _APBrokerHTTPHandleResolveResponse(APBrokerHTTPRequestData *, CFStringRef, sockaddr_ip, uint32_t, OSStatus)", 33554462, "[%{ptr}] Resolve done: addr=%##a err=%#m\n", *v8, v23, a5);
  }

  if (a5)
  {
    __APBrokerHTTPSendRequest_block_invoke_cold_1(a5);
    goto LABEL_29;
  }

  v9 = CFRetain(cf);
  v8[8] = v9;
  *(v8 + 9) = *v23;
  *(v8 + 84) = *&v23[12];
  *(v8 + 25) = a4;
  v24 = 0;
  if (!v9)
  {
LABEL_35:
    APSLogErrorAt();
    v22 = 0;
    goto LABEL_32;
  }

  v10 = *(v8 + 73);
  if (v10 != 2 && v10 != 30)
  {
    __APBrokerHTTPSendRequest_block_invoke_cold_3();
    v22 = 0;
    goto LABEL_32;
  }

  v12 = v9;
  v13 = bswap32(*(v8 + 37)) >> 16;
  Length = CFStringGetLength(v9);
  v15 = Length;
  while (v15 >= 1)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(v12, v15 - 1);
    if (CharacterAtIndex == 37)
    {
      if (v15 < Length)
      {
        v25.location = 0;
        v25.length = v15 - 1;
        v17 = CFStringCreateWithSubstring(0, v12, v25);
        if (!v17)
        {
          __APBrokerHTTPSendRequest_block_invoke_cold_2();
          goto LABEL_35;
        }

        goto LABEL_21;
      }

      break;
    }

    --v15;
    if ((CharacterAtIndex - 58) <= 0xFFFFFFF5)
    {
      break;
    }
  }

  v17 = CFRetain(v12);
  if (!v17)
  {
    goto LABEL_35;
  }

LABEL_21:
  v18 = v17;
  v19 = "https";
  if (!*(v8 + 20))
  {
    v19 = "http";
  }

  v20 = CFStringCreateF(&v24, "%s://%@:%d%@", v19, v17, v13, v8[4]);
  if (!v24)
  {
    v21 = v20;
LABEL_25:
    CFRelease(v18);
    v22 = v21;
    goto LABEL_26;
  }

  APSLogErrorAt();
  CFRelease(v18);
  v21 = 0;
  v22 = 0;
  v18 = v20;
  if (v20)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (!v24)
  {
    _APBrokerHTTPSendRequestToURL(v8, v22);
    v8 = 0;
    if (!v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_32:
  APSLogErrorAt();
  if (v22)
  {
LABEL_28:
    CFRelease(v22);
  }

LABEL_29:
  if (v8)
  {
    (*(v8[7] + 16))();
    _APBrokerHTTPReleaseRequestData(v8);
  }
}

uint64_t _APBrokerHTTPSendRequestToURL(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    _APBrokerHTTPSendRequestToURL_cold_1(a1, v4, a2);
  }

  IntWithDefault = APSSettingsGetIntWithDefault();
  v6 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  [v6 setWaitsForConnectivity:1];
  [v6 setAllowsCellularAccess:0];
  [v6 setTimeoutIntervalForResource:IntWithDefault];
  v7 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v6];
  v8 = [MEMORY[0x277CCAB70] requestWithURL:objc_msgSend(MEMORY[0x277CBEBC0] cachePolicy:"URLWithString:" timeoutInterval:{a2), 1, IntWithDefault}];
  if (!v8)
  {
    _APBrokerHTTPSendRequestToURL_cold_3();
    goto LABEL_14;
  }

  v9 = v8;
  v10 = *(a1 + 4);
  if (v10 == 1)
  {
    v11 = @"GET";
  }

  else
  {
    if (v10 != 2)
    {
      APSLogErrorAt();
      goto LABEL_14;
    }

    v11 = @"POST";
  }

  [v8 setHTTPMethod:v11];
  v12 = a1[5];
  if (v12)
  {
    if (gLogCategory_APBrokerHTTPUtils <= 10)
    {
      if (gLogCategory_APBrokerHTTPUtils != -1 || (v13 = _LogCategory_Initialize(), v12 = a1[5], v13))
      {
        LogPrintF(&gLogCategory_APBrokerHTTPUtils, "OSStatus _APBrokerHTTPGetSessionAndRequest(APBrokerHTTPRequestData *, CFStringRef, NSURLSession **, NSMutableURLRequest **)", 33554442, "[%{ptr}] Adding headers: %@\n", *a1, v12);
      }
    }

    v21[1] = MEMORY[0x277D85DD0];
    v21[2] = 3221225472;
    v21[3] = ___APBrokerHTTPGetSessionAndRequest_block_invoke;
    v21[4] = &unk_278BC9340;
    v21[5] = v9;
    CFDictionaryApplyBlock();
  }

  v14 = a1[6];
  if (v14)
  {
    v21[0] = 0;
    if (gLogCategory_APBrokerHTTPUtils <= 10)
    {
      if (gLogCategory_APBrokerHTTPUtils != -1 || (v15 = _LogCategory_Initialize(), v14 = a1[6], v15))
      {
        LogPrintF(&gLogCategory_APBrokerHTTPUtils, "OSStatus _APBrokerHTTPGetSessionAndRequest(APBrokerHTTPRequestData *, CFStringRef, NSURLSession **, NSMutableURLRequest **)", 33554442, "[%{ptr}] Adding body: %@\n", *a1, v14);
        v14 = a1[6];
      }
    }

    v16 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v14 options:1 error:v21];
    if (!NSErrorToOSStatus())
    {
      [v9 setHTTPBody:v16];
      goto LABEL_25;
    }

    APSLogErrorAt();
LABEL_14:
    [v7 finishTasksAndInvalidate];
    APSLogErrorAt();
    v7 = 0;
LABEL_15:
    (*(a1[7] + 16))();
    _APBrokerHTTPReleaseRequestData(a1);
    return [v7 finishTasksAndInvalidate];
  }

LABEL_25:
  [0 finishTasksAndInvalidate];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___APBrokerHTTPSendRequestToURL_block_invoke;
  v20[3] = &__block_descriptor_40_e46_v32__0__NSData_8__NSURLResponse_16__NSError_24l;
  v20[4] = a1;
  v17 = [v7 dataTaskWithRequest:v9 completionHandler:v20];
  if (!v17)
  {
    _APBrokerHTTPSendRequestToURL_cold_2();
    goto LABEL_15;
  }

  v18 = v17;
  [v17 setDelegate:a1[3]];
  [v18 resume];
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrokerHTTPUtils, "void _APBrokerHTTPSendRequestToURL(APBrokerHTTPRequestData *, CFStringRef)", 33554462, "[%{ptr}] HTTP request submitted to NSURLSession [%{ptr}] as task [%{ptr}]\n", v4, v7, v18);
  }

  return [v7 finishTasksAndInvalidate];
}

void _APBrokerHTTPReleaseRequestData(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 8) = 0;
  }

  *(a1 + 24) = 0;
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    _Block_release(v6);
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  free(a1);
}

void APBrokerHTTPResolutionProgressHandler(uint64_t a1, __int128 *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  LODWORD(v15) = 0;
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrokerHTTPUtils, "void APBrokerHTTPResolutionProgressHandler(int, const void *, void *)", 33554462, "[%{ptr}] Address resolution phase %d\n", *a3, a1);
  }

  if (a1 != 4)
  {
    if (a1 != 2)
    {
      return;
    }

    v6 = CFStringCreateF(&v15, "%s", a2);
    if (!v6)
    {
      APBrokerHTTPResolutionProgressHandler_cold_1();
      return;
    }

    v7 = v6;
    v8 = a3[4];
    a3[4] = v6;
    CFRetain(v6);
    if (v8)
    {
      CFRelease(v8);
    }

    *v16 = 0;
    v17 = 0;
    v18 = 0;
    v9 = strchr(a2, 37);
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = strlen(v9 + 1);
    if (v10 <= 0x10)
    {
      v11 = v10;
      __memcpy_chk();
      v16[v11] = 0;
      v12 = if_nametoindex(v16);
      HIDWORD(v15) = v12;
      if (v12)
      {
LABEL_15:
        *(a3 + 17) = v12;
        goto LABEL_16;
      }

      if (sscanf(v16, "%u", &v15 + 4) == 1)
      {
        v12 = HIDWORD(v15);
        goto LABEL_15;
      }
    }

    APSLogErrorAt();
    LODWORD(v15) = -6742;
    if (gLogCategory_APBrokerHTTPUtils <= 60)
    {
      if (gLogCategory_APBrokerHTTPUtils == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_33;
        }

        v14 = v15;
      }

      else
      {
        v14 = 4294960554;
      }

      LogPrintF(&gLogCategory_APBrokerHTTPUtils, "void APBrokerHTTPResolutionProgressHandler(int, const void *, void *)", 33554492, "[%{ptr}] Failed to parse ifIndex from destination: %'s %#m\n", *a3, a2, v14);
    }

LABEL_33:
    *(a3 + 17) = 0;
LABEL_16:
    LODWORD(v15) = 0;
    if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APBrokerHTTPUtils, "void APBrokerHTTPResolutionProgressHandler(int, const void *, void *)", 33554462, "[%{ptr}] Service resolved to %@ ifIndex %u\n", *a3, a3[4], *(a3 + 17), v15);
    }

    CFRelease(v7);
    return;
  }

  v13 = *a2;
  *(a3 + 52) = *(a2 + 12);
  *(a3 + 5) = v13;
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrokerHTTPUtils, "void APBrokerHTTPResolutionProgressHandler(int, const void *, void *)", 33554462, "[%{ptr}] Address resolved to %##a\n", *a3, a3 + 5);
  }
}

void APBrokerHTTPResolutionHandler(uint64_t a1, uint64_t a2, void *a3)
{
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrokerHTTPUtils, "void APBrokerHTTPResolutionHandler(SocketRef, OSStatus, void *)", 33554462, "[%{ptr}] Address resolution done. Result: %#m\n", *a3, a2);
  }

  (*(a3[1] + 16))();
  _APBrokerHTTPReleaseResolutionData(a3);
}

void _APBrokerHTTPReleaseResolutionData(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  if (a1[3])
  {
    AsyncConnection_Release();
    a1[3] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
    a1[2] = 0;
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  free(a1);
}

uint64_t APTransportGetSharedTransport(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_15 != -1)
  {
    APTransportGetSharedTransport_cold_1();
  }

  return qword_281309C20;
}

void transport_getSharedTransport(CFTypeRef *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  cf = 0;
  FigTransportGetClassID();
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    transport_getSharedTransport_cold_1(v3);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = dispatch_queue_create("APTransport", 0);
    *DerivedStorage = v5;
    if (v5)
    {
      v6 = dispatch_queue_create("APTransport.notification", 0);
      DerivedStorage[1] = v6;
      if (v6)
      {
        v7 = FigCFWeakReferenceTableCreate();
        if (v7)
        {
          transport_getSharedTransport_cold_2(v7);
        }

        else
        {
          v8 = APTransportTrafficRegistrarCreate(v2, DerivedStorage + 3);
          if (v8)
          {
            transport_getSharedTransport_cold_3(v8);
          }

          else
          {
            v9 = APTransportWifiManagerClientCreate(v2, DerivedStorage + 4);
            if (!v9)
            {
              if (gLogCategory_APTransport <= 30 && (gLogCategory_APTransport != -1 || _LogCategory_Initialize()))
              {
                transport_getSharedTransport_cold_5(&cf);
              }

              *a1 = cf;
              return;
            }

            transport_getSharedTransport_cold_4(v9);
          }
        }
      }

      else
      {
        transport_getSharedTransport_cold_6();
      }
    }

    else
    {
      transport_getSharedTransport_cold_7();
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t APTransportUnregisterSession(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    APSDispatchAsyncFHelper();
    return 0;
  }

  else
  {
    APTransportUnregisterSession_cold_1();
    return 4294950716;
  }
}

uint64_t transport_unregisterSessionInternal(void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransport <= 30 && (gLogCategory_APTransport != -1 || _LogCategory_Initialize()))
  {
    transport_unregisterSessionInternal_cold_1(a1);
  }

  result = FigCFWeakReferenceTableRemoveValue();
  if (result)
  {
    return transport_unregisterSessionInternal_cold_2(result);
  }

  return result;
}

uint64_t transport_Finalize(uint64_t result)
{
  if (gLogCategory_APTransport <= 90)
  {
    v1 = result;
    if (gLogCategory_APTransport != -1)
    {
      return transport_Finalize_cold_1(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return transport_Finalize_cold_1(v1);
    }
  }

  return result;
}

__CFString *transport_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransport %p>", a1);
  return Mutable;
}

uint64_t transport_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();

  return FigDispatchSyncCopyPropertyImplementation();
}

uint64_t transport_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *CMBaseObjectGetDerivedStorage();

  return MEMORY[0x2821127C0](v6, transport_setPropertyInternal, a1, a2, a3);
}

uint64_t transport_copyPropertyInternal(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"TrafficRegistrar"))
  {
    v7 = *(DerivedStorage + 24);
    if (v7)
    {
LABEL_3:
      v8 = CFRetain(v7);
LABEL_7:
      result = 0;
      *a4 = v8;
      return result;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (CFEqual(a2, @"WifiManagerClient"))
  {
    v7 = *(DerivedStorage + 32);
    if (v7)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  return 4294954512;
}

uint64_t transport_CreateAndRegisterService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = &v18;
  context[1] = a2;
  context[2] = a3;
  context[3] = a4;
  context[4] = a5;
  context[5] = a6;
  context[6] = a7;
  context[7] = a8;
  dispatch_sync_f(*DerivedStorage, context, transport_createAndRegisterServiceInternal);
  return v18;
}

uint64_t transport_UnregisterService(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  APSDispatchAsyncFHelper();
  return 4294954514;
}

uint64_t transport_CreateSessionToService(uint64_t a1, const __CFAllocator *a2, const void *a3, const void *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  context = a1;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4 && (v12 = CFGetTypeID(a4), v12 != APTransportDeviceGetTypeID(v12, v13)))
  {
    transport_CreateSessionToService_cold_1(&v18);
    return v18;
  }

  else
  {
    v14 = APTransportSessionCreate(a2, 1, a3, a4, a5, &cf);
    if (v14)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      dispatch_sync_f(*DerivedStorage, &context, transport_registerSession);
      *a6 = cf;
    }
  }

  return v14;
}

uint64_t transport_createAndRegisterServiceInternal(uint64_t a1)
{
  result = APTransportServiceCreate(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  **a1 = result;
  if (result)
  {
    return transport_createAndRegisterServiceInternal_cold_1(result);
  }

  return result;
}

uint64_t transport_registerSession(void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v2 = a1 + 1;
  Key = FigCFWeakReferenceTableAddValueAndGetKey();
  if (Key)
  {
    v5 = Key;
    result = transport_registerSession_cold_1(Key);
  }

  else
  {
    result = APSSetFBOPropertyInt64();
    if (!result)
    {
      if (gLogCategory_APTransport <= 30)
      {
        if (gLogCategory_APTransport != -1)
        {
          return transport_registerSession_cold_3(v2, &v6);
        }

        result = _LogCategory_Initialize();
        if (result)
        {
          return transport_registerSession_cold_3(v2, &v6);
        }
      }

      return result;
    }

    v5 = result;
    result = transport_registerSession_cold_2(result);
  }

  if (gLogCategory_APTransport <= 60)
  {
    if (gLogCategory_APTransport != -1)
    {
      return LogPrintF(&gLogCategory_APTransport, "void transport_registerSession(void *)", 33554492, "APTransportSession %{ptr} failed to be registered, error %llu.\n", *v2, v5);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APTransport, "void transport_registerSession(void *)", 33554492, "APTransportSession %{ptr} failed to be registered, error %llu.\n", *v2, v5);
    }
  }

  return result;
}

uint64_t APBrowserIsDeviceAvailableOnTransport(const __CFDictionary *a1, int a2, BOOL *a3)
{
  v7 = 0;
  if (a1)
  {
    APBrowserGetTransports(a1, 0, &v7);
    result = 0;
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = -1;
    }

    *a3 = (v7 & v6) != 0;
  }

  else
  {
    APBrowserIsDeviceAvailableOnTransport_cold_1();
    return 4294960591;
  }

  return result;
}

uint64_t APBrowserCreateDeviceIDFromString(const void *a1, CFNumberRef *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    CFDictionarySetValue(Mutable, @"deviceID", a1);
    v7 = APBrowserCopyDeviceIDFromBonjourInfo(v4, v6, a2);
    v8 = v7;
    if (v7)
    {
      APBrowserCreateDeviceIDFromString_cold_1(v7);
    }

    CFRelease(v6);
  }

  else
  {
    APBrowserCreateDeviceIDFromString_cold_2();
    return 4294960568;
  }

  return v8;
}

uint64_t APTKeepAliveControllerLowPowerCreate(uint64_t a1, CFTypeRef cf, NSObject *a3, CFTypeRef *a4)
{
  if (!cf || (v7 = CFGetTypeID(cf), v7 != CFDictionaryGetTypeID()))
  {
    APTKeepAliveControllerLowPowerCreate_cold_15();
    return 4294895535;
  }

  if (!a3 || (v8 = CFGetTypeID(a3), TypeID = FigTransportStreamGetTypeID(), v8 != TypeID))
  {
    APTKeepAliveControllerLowPowerCreate_cold_14();
    return 4294895535;
  }

  if (!a4)
  {
    APTKeepAliveControllerLowPowerCreate_cold_13();
    return 4294895535;
  }

  APTransportKeepAliveControllerGetClassID(TypeID, v10);
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    v14 = v11;
    APTKeepAliveControllerLowPowerCreate_cold_1(v11);
    return v14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTKeepAliveControllerLowPower <= 50 && (gLogCategory_APTKeepAliveControllerLowPower != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTKeepAliveControllerLowPower, "OSStatus APTKeepAliveControllerLowPowerCreate(CFAllocatorRef, CFDictionaryRef, FigTransportStreamRef, APTransportKeepAliveControllerRef *)", 33554482, "[%{ptr}] APTKeepAliveControllerLowPower created for stream [%{ptr}]\n", 0, a3);
  }

  Value = CFDictionaryGetValue(cf, @"SessionUUID");
  if (!Value || (v15 = Value, v16 = CFGetTypeID(Value), v16 != CFUUIDGetTypeID()))
  {
    APTKeepAliveControllerLowPowerCreate_cold_12();
    return 4294895535;
  }

  *&sourceBytes[8] = 0;
  *sourceBytes = bswap32(*&CFUUIDGetUUIDBytes(v15)) >> 16;
  v17 = CMBlockBufferCreateWithMemoryBlock(0, 0, 2uLL, 0, 0, 0, 2uLL, 1u, &sourceBytes[2]);
  if (v17)
  {
    APTKeepAliveControllerLowPowerCreate_cold_2(v17);
  }

  else
  {
    v18 = CMBlockBufferReplaceDataBytes(sourceBytes, *&sourceBytes[2], 0, 2uLL);
    if (v18)
    {
      APTKeepAliveControllerLowPowerCreate_cold_3(v18);
    }
  }

  v19 = *&sourceBytes[2];
  DerivedStorage[7] = *&sourceBytes[2];
  if (v19)
  {
    *&sourceBytes[2] = 0;
    v20 = APTPackageLowPowerKeepAliveCreate(*MEMORY[0x277CBECE8], &sourceBytes[2]);
    if (v20)
    {
      APTKeepAliveControllerLowPowerCreate_cold_4(v20);
    }

    else
    {
      v21 = *&sourceBytes[2];
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v22)
      {
        v22(v21, 1819308912);
      }

      v23 = *&sourceBytes[2];
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v24)
      {
        v24(v23, v19);
      }

      v25 = *&sourceBytes[2];
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v26)
      {
        v27 = v26(v25);
        goto LABEL_34;
      }
    }

    v27 = 0;
LABEL_34:
    if (*&sourceBytes[2])
    {
      CFRelease(*&sourceBytes[2]);
    }

    if (!v27)
    {
      v14 = 4294895536;
      APTKeepAliveControllerLowPowerCreate_cold_10();
      return v14;
    }

    v28 = APSSetFBOPropertyInt64();
    if (v28)
    {
      v14 = v28;
      APTKeepAliveControllerLowPowerCreate_cold_5(v28);
    }

    else
    {
      CMBaseObject = FigTransportStreamGetCMBaseObject();
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v30)
      {
        v31 = v30(CMBaseObject, @"LowPowerOffloadBBuf", v27);
        if (!v31)
        {
          v32 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          DerivedStorage[5] = v32;
          if (v32)
          {
            DerivedStorage[6] = a3;
            v33 = dispatch_queue_create("com.apple.AirPlay.APTKeepAliveControllerLowPower.state", 0);
            DerivedStorage[2] = v33;
            if (v33)
            {
              v34 = dispatch_queue_create("com.apple.AirPlay.APTKeepAliveControllerLowPower.network", 0);
              *DerivedStorage = v34;
              if (v34)
              {
                v35 = dispatch_queue_create("com.apple.AirPlay.APTKeepAliveControllerLowPower.notification", 0);
                DerivedStorage[1] = v35;
                if (v35)
                {
                  v14 = 0;
                  *a4 = 0;
                }

                else
                {
                  v14 = 4294895536;
                  APTKeepAliveControllerLowPowerCreate_cold_6();
                }
              }

              else
              {
                v14 = 4294895536;
                APTKeepAliveControllerLowPowerCreate_cold_7();
              }
            }

            else
            {
              v14 = 4294895536;
              APTKeepAliveControllerLowPowerCreate_cold_8();
            }
          }

          else
          {
            APTKeepAliveControllerLowPowerCreate_cold_9(&sourceBytes[2]);
            v14 = *&sourceBytes[2];
          }

          goto LABEL_47;
        }

        v14 = v31;
      }

      else
      {
        v14 = 4294954514;
      }

      APSLogErrorAt();
    }

LABEL_47:
    CFRelease(v27);
    return v14;
  }

  v14 = 4294895536;
  APTKeepAliveControllerLowPowerCreate_cold_11();
  return v14;
}

void lowPowerKeepAliveController_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTKeepAliveControllerLowPower <= 50 && (gLogCategory_APTKeepAliveControllerLowPower != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTKeepAliveControllerLowPower, "void lowPowerKeepAliveController_Finalize(CMBaseObjectRef)", 33554482, "[%{ptr}] APTKeepAliveControllerLowPower finalizing for stream [%{ptr}]\n", a1, *(DerivedStorage + 48));
  }

  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 40) = 0;
  }

  v4 = *(DerivedStorage + 56);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 56) = 0;
  }

  *(DerivedStorage + 48) = 0;
  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    dispatch_source_cancel(*(DerivedStorage + 24));
    dispatch_release(v5);
    *(DerivedStorage + 24) = 0;
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 16) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v7 = *(DerivedStorage + 8);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *lowPowerKeepAliveController_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTKeepAliveControllerLowPower %p>", a1);
  return Mutable;
}

uint64_t lowPowerKeepAliveController_Resume(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTKeepAliveControllerLowPower <= 30 && (gLogCategory_APTKeepAliveControllerLowPower != -1 || _LogCategory_Initialize()))
  {
    lowPowerKeepAliveController_Resume_cold_1(a1);
  }

  CFRetain(a1);
  v3 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __lowPowerKeepAliveController_Resume_block_invoke;
  block[3] = &__block_descriptor_tmp_11;
  block[4] = a1;
  dispatch_async(v3, block);
  return 0;
}

uint64_t lowPowerKeepAliveController_Suspend(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTKeepAliveControllerLowPower <= 30 && (gLogCategory_APTKeepAliveControllerLowPower != -1 || _LogCategory_Initialize()))
  {
    lowPowerKeepAliveController_Suspend_cold_1(a1);
  }

  v3 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __lowPowerKeepAliveController_Suspend_block_invoke;
  v5[3] = &__block_descriptor_tmp_21_1;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v3, v5);
  return 0;
}

void __lowPowerKeepAliveController_timerFired_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTKeepAliveControllerLowPower <= 30 && (gLogCategory_APTKeepAliveControllerLowPower != -1 || _LogCategory_Initialize()))
  {
    __lowPowerKeepAliveController_timerFired_block_invoke_cold_1(v2);
  }

  v5 = *(DerivedStorage + 56);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v6)
  {
    v7 = v6(v3, 1819309931, v5);
    if (!v7)
    {
      goto LABEL_6;
    }

    v10 = v7;
  }

  else
  {
    v10 = 4294954514;
  }

  __lowPowerKeepAliveController_timerFired_block_invoke_cold_2(DerivedStorage, v11, v2, v10);
LABEL_6:
  v8 = *(a1 + 32);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }
}

void __lowPowerKeepAliveController_sendKeepAlive_block_invoke(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 32))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v3 = Mutable;
      CFDictionarySetInt64();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRelease(v3);
    }

    else
    {
      __lowPowerKeepAliveController_sendKeepAlive_block_invoke_cold_1();
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

void sub_23D30F778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t APTPackageMusicDataCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  v2 = APTPackageMusicDataCreateWithBBuf(a1, 0, a2);
  v3 = v2;
  if (v2)
  {
    APTPackageMusicDataCreate_cold_1(v2);
  }

  return v3;
}

uint64_t APTPackageMusicDataCreateWithBBuf(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, CFTypeRef *a3)
{
  blockBufferOut = 0;
  cf = 0;
  APTransportPackageGetClassID(a1, a2);
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v13 = v6;
    APTPackageMusicDataCreateWithBBuf_cold_1(v6);
    goto LABEL_12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = APTransportParcelMake(8uLL, 0, DerivedStorage);
  if (v8)
  {
    v13 = v8;
    APTPackageMusicDataCreateWithBBuf_cold_2(v8);
    goto LABEL_12;
  }

  if (!a2)
  {
    goto LABEL_25;
  }

  destination = 0;
  v9 = CMBlockBufferCopyDataBytes(a2, 0, 8uLL, &destination);
  if (v9)
  {
    v13 = v9;
    APTPackageMusicDataCreateWithBBuf_cold_3(v9);
    goto LABEL_12;
  }

  APTransportParcelSetMessageType(*DerivedStorage, bswap32(HIDWORD(destination)));
  if (CMBlockBufferGetDataLength(a2) < 9)
  {
    goto LABEL_25;
  }

  DataLength = CMBlockBufferGetDataLength(a2);
  v11 = CMBlockBufferCreateWithBufferReference(a1, a2, 8uLL, DataLength - 8, 0, &blockBufferOut);
  if (v11)
  {
    v13 = v11;
    APTPackageMusicDataCreateWithBBuf_cold_4(v11);
    goto LABEL_12;
  }

  v12 = APTransportParcelSetMessageData(*DerivedStorage, blockBufferOut);
  if (v12)
  {
    v13 = v12;
    APTPackageMusicDataCreateWithBBuf_cold_5(v12);
  }

  else
  {
LABEL_25:
    if (gLogCategory_APTPackageMusicData <= 30 && (gLogCategory_APTPackageMusicData != -1 || _LogCategory_Initialize()))
    {
      APTPackageMusicDataCreateWithBBuf_cold_6(&cf);
    }

    v13 = 0;
    *a3 = cf;
    cf = 0;
  }

LABEL_12:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t APTPackageMusicDataCreateWithMessageSize(uint64_t a1, size_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (a2)
  {
    APTransportPackageGetClassID(a1, a2);
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v8 = v5;
      APTPackageMusicDataCreateWithMessageSize_cold_1(v5);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = APTransportParcelMake(8uLL, a2, DerivedStorage);
      if (v7)
      {
        v8 = v7;
        APTPackageMusicDataCreateWithMessageSize_cold_2(v7);
      }

      else
      {
        if (gLogCategory_APTPackageMusicData <= 30 && (gLogCategory_APTPackageMusicData != -1 || _LogCategory_Initialize()))
        {
          APTPackageMusicDataCreateWithMessageSize_cold_3(&cf);
        }

        v8 = 0;
        *a3 = cf;
      }
    }
  }

  else
  {
    APTPackageMusicDataCreateWithMessageSize_cold_4();
    return 4294894936;
  }

  return v8;
}

uint64_t APTPackageMusicDataGetHeaderSize(_DWORD *a1)
{
  if (a1)
  {
    result = 0;
    *a1 = 8;
  }

  else
  {
    v6 = v1;
    v7 = v2;
    APTPackageMusicDataGetHeaderSize_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t APTPackageMusicDataGetPayloadSize(OpaqueCMBlockBuffer *a1, _DWORD *a2)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  if (!a2)
  {
    APTPackageMusicDataGetPayloadSize_cold_4(&v8);
    return v8;
  }

  if (!a1)
  {
    APTPackageMusicDataGetPayloadSize_cold_3(&v8);
    return v8;
  }

  DataPointer = CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    v4 = DataPointer;
    APTPackageMusicDataGetPayloadSize_cold_1(DataPointer);
  }

  else if (lengthAtOffsetOut == 8)
  {
    v4 = 0;
    *a2 = bswap32(*dataPointerOut) - 8;
  }

  else
  {
    APTPackageMusicDataGetPayloadSize_cold_2();
    return 4294894936;
  }

  return v4;
}

void musicdatapackage_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTPackageMusicData <= 30 && (gLogCategory_APTPackageMusicData != -1 || _LogCategory_Initialize()))
  {
    musicdatapackage_Finalize_cold_1(a1);
  }

  APTransportParcelFree(*DerivedStorage);
  *DerivedStorage = 0;
}

__CFString *musicdatapackage_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTPackageMusicData %p>", a1);
  return Mutable;
}

const void *musicdatapackage_CopyMessageData(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MessageData = APTransportParcelGetMessageData(*DerivedStorage);
  v3 = MessageData;
  if (MessageData)
  {
    CFRetain(MessageData);
  }

  return v3;
}

uint64_t musicdatapackage_SetMessageData(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageData(v3, a2);
}

uint64_t musicdatapackage_GetMessageType(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelGetMessageType(v1);
}

uint64_t musicdatapackage_SetMessageType(uint64_t a1, int a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageType(v3, a2);
}

CMBlockBufferRef musicdatapackage_CreateBBufRepresentation(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = 0;
  MessageType = APTransportParcelGetMessageType(*DerivedStorage);
  MessageData = APTransportParcelGetMessageData(*DerivedStorage);
  v6[0] = bswap32(CMBlockBufferGetDataLength(MessageData) + 8);
  v6[1] = bswap32(MessageType);
  APTransportParcelCreateBBufRepresentation(*DerivedStorage, *MEMORY[0x277CBECE8], v6, &v5);
  return v5;
}

uint64_t __APCarPlayHelperUSBGetClassID_block_invoke(uint64_t a1, uint64_t a2)
{
  ClassID = APCarPlayHelperGetClassID(a1, a2);

  return MEMORY[0x282112448](&APCarPlayHelperUSBGetClassID_sClassDesc, ClassID, 0, &APCarPlayHelperUSBGetClassID_sClassID);
}

uint64_t APCarPlayHelperUSBCreate(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, CFTypeRef *a5)
{
  if (APCarPlayHelperUSBGetClassID_sRegisterOnce != -1)
  {
    APCarPlayHelperUSBCreate_cold_1();
  }

  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v19 = v9;
    APCarPlayHelperUSBCreate_cold_2(v9);
    return v19;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = dispatch_semaphore_create(0);
  DerivedStorage[1] = v11;
  if (!v11)
  {
    APCarPlayHelperUSBCreate_cold_8();
    return 4294954510;
  }

  v12 = dispatch_queue_create("APCarPlayHelperUSBInternalQueue", 0);
  DerivedStorage[2] = v12;
  if (!v12)
  {
    APCarPlayHelperUSBCreate_cold_7();
    return 4294954510;
  }

  v13 = dispatch_queue_create("APCarPlayHelperUSBEventQueue", 0);
  DerivedStorage[3] = v13;
  if (!v13)
  {
    APCarPlayHelperUSBCreate_cold_6();
    return 4294954510;
  }

  DerivedStorage[8] = a2;
  DerivedStorage[9] = a3;
  if (!a2)
  {
    APCarPlayHelperUSBCreate_cold_5();
    return 4294954516;
  }

  SharedHelper = APConnectivityHelperGetSharedHelper();
  if (!SharedHelper)
  {
    DerivedStorage[5] = 0;
    goto LABEL_19;
  }

  v15 = CFRetain(SharedHelper);
  DerivedStorage[5] = v15;
  if (!v15)
  {
LABEL_19:
    APCarPlayHelperUSBCreate_cold_4();
    return 4294960568;
  }

  v16 = APConnectivityHelperRegisterEventHandler(v15, 0, carPlayHelperUSB_handleConnectivityHelperEvent);
  if (v16)
  {
    v19 = v16;
    APCarPlayHelperUSBCreate_cold_3(v16);
  }

  else
  {
    if (a4)
    {
      Value = CFDictionaryGetValue(a4, @"powerAssertion");
      DerivedStorage[4] = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      v18 = CFDictionaryGetValue(a4, @"eventRecorder");
      DerivedStorage[10] = v18;
      if (v18)
      {
        CFRetain(v18);
      }
    }

    v19 = 0;
    *a5 = 0;
  }

  return v19;
}

void carPlayHelperUSB_handleConnectivityHelperEvent(uint64_t a1, int a2, const void *a3, const void *a4)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    CFRetain(a4);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v8 = *(DerivedStorage + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke;
  v9[3] = &unk_278BC7D48;
  v10 = a2;
  v9[4] = v11;
  v9[5] = a4;
  v9[6] = a3;
  dispatch_async(v8, v9);
  _Block_object_dispose(v11, 8);
}

void sub_23D310284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void carPlayHelperUSB_dispatchEvent(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    v8 = DerivedStorage;
    v9 = *(DerivedStorage + 72);
    if (gLogCategory_APBrowserCarUSBHelper <= 20 && (gLogCategory_APBrowserCarUSBHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APBrowserCarUSBHelper, "void carPlayHelperUSB_dispatchEvent(APCarPlayHelperRef, APCarPlayHelperEventType, CFDictionaryRef)", 33554452, "Dispatching event %d with info %@\n", a2, a3);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v10 = *(v8 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __carPlayHelperUSB_dispatchEvent_block_invoke;
    block[3] = &__block_descriptor_68_e5_v8__0l;
    block[4] = v7;
    block[5] = a1;
    v12 = a2;
    block[6] = a3;
    block[7] = v9;
    dispatch_async(v10, block);
  }
}

void __carPlayHelperUSB_dispatchEvent_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t __carPlayHelperUSB_finalize_block_invoke(uint64_t result)
{
  *(*(result + 32) + 64) = 0;
  *(*(result + 32) + 72) = 0;
  return result;
}

void __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 != 104)
  {
    if (v2 != 4)
    {
      if (gLogCategory_APBrowserCarUSBHelper > 30)
      {
        goto LABEL_58;
      }

      if (gLogCategory_APBrowserCarUSBHelper == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_58;
        }

        v2 = *(a1 + 56);
      }

      LogPrintF(&gLogCategory_APBrowserCarUSBHelper, "void carPlayHelperUSB_handleConnectivityHelperEvent(APConnectivityHelperRef, APConnectivityHelperEventType, CFDictionaryRef, CFTypeRef)_block_invoke", 33554462, "Unrecognized ConnectivityHelper event %d\n", v2);
      goto LABEL_58;
    }

    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!v4)
    {
      __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke_cold_4();
      goto LABEL_56;
    }

    v6 = DerivedStorage;
    Value = CFDictionaryGetValue(v4, @"networkInterfaceName");
    v8 = Value;
    v9 = Value == 0;
    if (Value && CFStringHasPrefix(Value, @"anpi"))
    {
      __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke_cold_2(v3, v8);
      goto LABEL_56;
    }

    if (CFDictionaryGetInt64())
    {
      if (v8)
      {
        v10 = v6[4] == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        APSPowerAssertionRaiseTemporary();
        v9 = 0;
        v11 = "Yes";
        goto LABEL_24;
      }
    }

    else
    {
      if (!FigCFEqual())
      {
        goto LABEL_56;
      }

      v8 = 0;
      v9 = 1;
    }

    v11 = "No";
LABEL_24:
    if (FigCFEqual())
    {
      goto LABEL_56;
    }

    if (gLogCategory_APBrowserCarUSBHelper <= 50 && (gLogCategory_APBrowserCarUSBHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APBrowserCarUSBHelper, "OSStatus carPlayHelperUSB_usbInterfaceChanged(APCarPlayHelperRef, CFDictionaryRef)", 33554482, "Network interface changed to %@, powerAssertSet: %s\n", v8, v11);
    }

    v15 = v6[10];
    if (v9)
    {
      if (v15)
      {
        APSEventRecorderRecordEvent();
      }

      v16 = LogCategoryCopyOSLogHandle();
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = MEMORY[0x277D86220];
      }

      if (os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23D2A9000, v18, OS_SIGNPOST_EVENT, 0x2B8D08DCuLL, "AP_SIGNPOST_CAR_USB_LINKDOWN", "", buf, 2u);
      }

      if (v17)
      {
      }

      v19 = v6[7];
      v6[7] = v8;
      if (!v19)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v15)
      {
        APSEventRecorderRecordEvent();
      }

      v20 = LogCategoryCopyOSLogHandle();
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = MEMORY[0x277D86220];
      }

      if (os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23D2A9000, v22, OS_SIGNPOST_EVENT, 0x2B8D07FCuLL, "AP_SIGNPOST_CAR_USB_LINKUP", "", buf, 2u);
      }

      if (v21)
      {
      }

      v19 = v6[7];
      v6[7] = v8;
      CFRetain(v8);
      if (!v19)
      {
        goto LABEL_54;
      }
    }

    CFRelease(v19);
LABEL_54:
    values = *(CMBaseObjectGetDerivedStorage() + 56);
    *buf = 0x284F61B80;
    v23 = CFGetAllocator(v3);
    v24 = CFDictionaryCreate(v23, buf, &values, values != 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v24)
    {
      v25 = v24;
      carPlayHelperUSB_dispatchEvent(v3, 0, v24);
      CFRelease(v25);
    }

    else
    {
      __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke_cold_3();
    }

LABEL_56:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v26 = *(*(*(a1 + 32) + 8) + 24);
    if (v26)
    {
      __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke_cold_5(v26);
    }

    goto LABEL_58;
  }

  if (gLogCategory_APBrowserCarUSBHelper <= 30 && (gLogCategory_APBrowserCarUSBHelper != -1 || _LogCategory_Initialize()))
  {
    __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke_cold_1();
  }

  v12 = *(a1 + 40);
  v13 = CMBaseObjectGetDerivedStorage();
  v14 = *(v13 + 56);
  if (v14)
  {
    CFRelease(v14);
    *(v13 + 56) = 0;
    CMBaseObjectGetDerivedStorage();
    APSLogErrorAt();
  }

  carPlayHelperUSB_dispatchEvent(v12, 2, 0);
LABEL_58:
  v27 = *(a1 + 40);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(a1 + 48);
  if (v28)
  {
    CFRelease(v28);
  }
}

uint64_t APTransportKeepAliveControllerStandardCreate(uint64_t a1, CFTypeRef cf, CFTypeRef a3, CFTypeRef *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 != CFDictionaryGetTypeID())
    {
      v17 = 4294895535;
      APTransportKeepAliveControllerStandardCreate_cold_1();
      return v17;
    }
  }

  if (!a3 || (v8 = CFGetTypeID(a3), TypeID = FigTransportStreamGetTypeID(), v8 != TypeID))
  {
    v17 = 4294895535;
    APTransportKeepAliveControllerStandardCreate_cold_8();
    return v17;
  }

  if (!a4)
  {
    v17 = 4294895535;
    APTransportKeepAliveControllerStandardCreate_cold_7();
    return v17;
  }

  APTransportKeepAliveControllerGetClassID(TypeID, v10);
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    v17 = v11;
    APTransportKeepAliveControllerStandardCreate_cold_2(v11);
    return v17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportKeepAliveControllerStandard <= 50 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportKeepAliveControllerStandard, "OSStatus APTransportKeepAliveControllerStandardCreate(CFAllocatorRef, CFDictionaryRef, FigTransportStreamRef, APTransportKeepAliveControllerRef *)", 33554482, "[%{ptr}] APTransportKeepAliveControllerStandard created for stream [%{ptr}]\n", 0, a3);
  }

  if (cf)
  {
    *(DerivedStorage + 32) = CFDictionaryGetInt64() != 0;
  }

  v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 40) = v13;
  if (!v13)
  {
    APTransportKeepAliveControllerStandardCreate_cold_6(label);
    return *label;
  }

  *(DerivedStorage + 48) = a3;
  SNPrintF(label, 128, "com.apple.AirPlay.APTransportKeepAliveControllerStandard.%{ptr}.state", 0);
  v14 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 16) = v14;
  if (!v14)
  {
    APTransportKeepAliveControllerStandardCreate_cold_5();
    return 4294895536;
  }

  SNPrintF(label, 128, "com.apple.AirPlay.APTransportKeepAliveControllerStandard.%{ptr}.network", 0);
  v15 = dispatch_queue_create(label, 0);
  *DerivedStorage = v15;
  if (!v15)
  {
    APTransportKeepAliveControllerStandardCreate_cold_4();
    return 4294895536;
  }

  SNPrintF(label, 128, "com.apple.AirPlay.APTransportKeepAliveControllerStandard.%{ptr}.notification", 0);
  v16 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 8) = v16;
  if (!v16)
  {
    APTransportKeepAliveControllerStandardCreate_cold_3();
    return 4294895536;
  }

  v17 = 0;
  *(DerivedStorage + 36) = 2017;
  *a4 = 0;
  return v17;
}

void standardKeepAliveController_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportKeepAliveControllerStandard <= 50 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportKeepAliveControllerStandard, "void standardKeepAliveController_Finalize(CMBaseObjectRef)", 33554482, "[%{ptr}] APTransportKeepAliveControllerStandard finalizing for stream [%{ptr}]\n", a1, *(DerivedStorage + 48));
  }

  v3 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __standardKeepAliveController_Finalize_block_invoke;
  block[3] = &__block_descriptor_tmp_12;
  block[4] = a1;
  dispatch_sync(v3, block);
  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 40) = 0;
  }

  *(DerivedStorage + 48) = 0;
  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    dispatch_source_cancel(*(DerivedStorage + 24));
    dispatch_release(v5);
    *(DerivedStorage + 24) = 0;
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 16) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v7 = *(DerivedStorage + 8);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *standardKeepAliveController_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportKeepAliveControllerStandard %p>", a1);
  return Mutable;
}

uint64_t standardKeepAliveController_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"KeepAliveInterval"))
  {
    return 4294954512;
  }

  v8 = CFNumberCreate(a3, kCFNumberSInt32Type, (DerivedStorage + 36));
  *a4 = v8;
  if (v8)
  {
    return 0;
  }

  standardKeepAliveController_CopyProperty_cold_1();
  return 4294895536;
}

uint64_t standardKeepAliveController_SetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"KeepAliveInterval"))
  {
    return 4294954512;
  }

  if (*(DerivedStorage + 33))
  {
    v8 = 4294895534;
    standardKeepAliveController_SetProperty_cold_1();
  }

  else if (a3 && (v7 = CFGetTypeID(a3), v7 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a3, kCFNumberSInt32Type, (DerivedStorage + 36));
    if (gLogCategory_APTransportKeepAliveControllerStandard <= 50 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportKeepAliveControllerStandard, "OSStatus standardKeepAliveController_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554482, "[%{ptr}] Keep alive interval set to %d ms", a1, *(DerivedStorage + 36));
    }

    return 0;
  }

  else
  {
    standardKeepAliveController_SetProperty_cold_2();
    return 4294895535;
  }

  return v8;
}

uint64_t standardKeepAliveController_Resume(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportKeepAliveControllerStandard <= 30 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
  {
    standardKeepAliveController_Resume_cold_1(a1, v2, v3);
  }

  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 16), a1, standardKeepAliveController_controllerResumedCallback);
  return 0;
}

uint64_t standardKeepAliveController_Suspend(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportKeepAliveControllerStandard <= 30 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
  {
    standardKeepAliveController_Suspend_cold_1(a1, v2, v3);
  }

  dispatch_sync_f(*(DerivedStorage + 16), a1, standardKeepAliveController_controllerSuspendedCallback);
  return 0;
}

void standardKeepAliveController_controllerResumedCallback(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 33))
  {
    goto LABEL_8;
  }

  v3 = DerivedStorage;
  v4 = MEMORY[0x277CC0898];
  v5 = *MEMORY[0x277CC0898];
  *(DerivedStorage + 80) = *MEMORY[0x277CC0898];
  v6 = *(v4 + 16);
  *(DerivedStorage + 96) = v6;
  *(DerivedStorage + 128) = v5;
  *(DerivedStorage + 144) = v6;
  *(DerivedStorage + 152) = 0;
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(DerivedStorage + 16));
  *(v3 + 24) = v7;
  if (v7)
  {
    dispatch_set_context(v7, a1);
    dispatch_source_set_event_handler_f(*(v3 + 24), standardKeepAliveController_timerFiredCallback);
    v8 = 1000000 * *(v3 + 36);
    v9 = *(v3 + 24);
    v10 = dispatch_time(0, v8);
    dispatch_source_set_timer(v9, v10, v8, 0x5F5E100uLL);
    dispatch_resume(*(v3 + 24));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&lhs, HostTimeClock);
    CMTimeMake(&rhs, *(v3 + 36), 1000);
    CMTimeAdd(&v14, &lhs, &rhs);
    *(v3 + 56) = v14;
    if (gLogCategory_APTransportKeepAliveControllerStandard <= 50 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportKeepAliveControllerStandard, "void standardKeepAliveController_controllerResumedCallback(void *)", 33554482, "[%{ptr}] Started keep alive with interval %d ms", a1, *(v3 + 36));
    }

    *(v3 + 33) = 1;
LABEL_8:
    if (!a1)
    {
      return;
    }

    goto LABEL_9;
  }

  standardKeepAliveController_controllerResumedCallback_cold_1();
  if (!a1)
  {
    return;
  }

LABEL_9:
  CFRelease(a1);
}

void standardKeepAliveController_sendConnectionStallStateChangedCallback(CFTypeRef *a1)
{
  v2 = *a1;
  *&v9.value = *(a1 + 12);
  v9.epoch = *(a1 + 28);
  if (*(CMBaseObjectGetDerivedStorage() + 33))
  {
    v3 = CFGetAllocator(v2);
    Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = *MEMORY[0x277CBECE8];
      time = v9;
      v7 = CMTimeCopyAsDictionary(&time, v6);
      if (v7)
      {
        v8 = v7;
        CFDictionarySetValue(v5, @"StallDuration", v7);
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v5);
        CFRelease(v8);
      }

      else
      {
        standardKeepAliveController_sendConnectionStallStateChangedCallback_cold_1(v5);
      }
    }

    else
    {
      standardKeepAliveController_sendConnectionStallStateChangedCallback_cold_2();
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void standardKeepAliveController_sendConnectionFailedCallback(const void **a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 33))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v3 = Mutable;
      CFDictionarySetInt64();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRelease(v3);
    }

    else
    {
      standardKeepAliveController_sendConnectionFailedCallback_cold_1();
    }
  }

  v4 = *a1;
  if (*a1)
  {

    CFRelease(v4);
  }
}

void standardKeepAliveController_controllerSuspendedCallback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 33))
  {
    standardKeepAliveController_controllerSuspendedCallback_cold_1(a1, DerivedStorage, (DerivedStorage + 33));
  }
}

uint64_t APTransportPackageRTCPCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  v2 = APTransportPackageRTCPCreateWithBBuf(a1, 0, a2);
  v3 = v2;
  if (v2)
  {
    APTransportPackageRTCPCreate_cold_1(v2);
  }

  return v3;
}

uint64_t APTransportPackageRTCPCreateWithBBuf(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, CFTypeRef *a3)
{
  blockBufferOut = 0;
  cf = 0;
  APTransportPackageGetClassID(a1, a2);
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v15 = v6;
    APTransportPackageRTCPCreateWithBBuf_cold_1(v6);
    goto LABEL_19;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = APTransportParcelMake(4uLL, 0, DerivedStorage);
  if (v8)
  {
    v15 = v8;
    APTransportPackageRTCPCreateWithBBuf_cold_2(v8);
    goto LABEL_19;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(a2, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    v15 = DataPointer;
    APTransportPackageRTCPCreateWithBBuf_cold_3(DataPointer);
    goto LABEL_19;
  }

  if (lengthAtOffsetOut <= 3)
  {
    APTransportPackageRTCPCreateWithBBuf_cold_7();
    goto LABEL_18;
  }

  v10 = dataPointerOut;
  if ((*dataPointerOut & 0xC0) != 0x80)
  {
    APTransportPackageRTCPCreateWithBBuf_cold_4();
    v15 = 4294960581;
    goto LABEL_19;
  }

  v11 = dataPointerOut[1];
  if (v11 != 213)
  {
    if (gLogCategory_APTransportPackageRTCP <= 90)
    {
      if (gLogCategory_APTransportPackageRTCP == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        v11 = v10[1];
      }

      LogPrintF(&gLogCategory_APTransportPackageRTCP, "OSStatus APTransportPackageRTCPCreateWithBBuf(CFAllocatorRef, CMBlockBufferRef, APTransportPackageRef *)", 33554522, "### Unrecognized RTCP message type %d.", v11);
    }

LABEL_18:
    v15 = 4294960591;
    goto LABEL_19;
  }

  APTransportParcelSetMessageType(*DerivedStorage, 1634168383);
  DataLength = CMBlockBufferGetDataLength(a2);
  v13 = CMBlockBufferCreateWithBufferReference(a1, a2, 4uLL, DataLength - 4, 0, &blockBufferOut);
  if (v13)
  {
    v15 = v13;
    APTransportPackageRTCPCreateWithBBuf_cold_5(v13);
    goto LABEL_19;
  }

  v14 = APTransportParcelSetMessageData(*DerivedStorage, blockBufferOut);
  if (v14)
  {
    v15 = v14;
    APTransportPackageRTCPCreateWithBBuf_cold_6(v14);
    goto LABEL_19;
  }

LABEL_10:
  if (gLogCategory_APTransportPackageRTCP <= 30 && (gLogCategory_APTransportPackageRTCP != -1 || _LogCategory_Initialize()))
  {
    APTransportPackageRTCPCreateWithBBuf_cold_8(&cf);
  }

  v15 = 0;
  *a3 = cf;
  cf = 0;
LABEL_19:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t APTransportPackageRTCPCreateWithMessageSize(uint64_t a1, size_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (a2)
  {
    APTransportPackageGetClassID(a1, a2);
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v8 = v5;
      APTransportPackageRTCPCreateWithMessageSize_cold_1(v5);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = APTransportParcelMake(4uLL, a2, DerivedStorage);
      if (v7)
      {
        v8 = v7;
        APTransportPackageRTCPCreateWithMessageSize_cold_2(v7);
      }

      else
      {
        if (gLogCategory_APTransportPackageRTCP <= 30 && (gLogCategory_APTransportPackageRTCP != -1 || _LogCategory_Initialize()))
        {
          APTransportPackageRTCPCreateWithMessageSize_cold_3(&cf);
        }

        v8 = 0;
        *a3 = cf;
      }
    }
  }

  else
  {
    APTransportPackageRTCPCreateWithMessageSize_cold_4();
    return 4294960591;
  }

  return v8;
}

void rtcppackage_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportPackageRTCP <= 30 && (gLogCategory_APTransportPackageRTCP != -1 || _LogCategory_Initialize()))
  {
    rtcppackage_Finalize_cold_1(a1);
  }

  APTransportParcelFree(*DerivedStorage);
  *DerivedStorage = 0;
}

__CFString *rtcppackage_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportPackageRTCP %p>", a1);
  return Mutable;
}

const void *rtcppackage_CopyMessageData(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MessageData = APTransportParcelGetMessageData(*DerivedStorage);
  v3 = MessageData;
  if (MessageData)
  {
    CFRetain(MessageData);
  }

  return v3;
}

uint64_t rtcppackage_SetMessageData(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageData(v3, a2);
}

uint64_t rtcppackage_GetMessageType(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelGetMessageType(v1);
}

uint64_t rtcppackage_SetMessageType(uint64_t a1, int a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return APTransportParcelSetMessageType(v3, a2);
}

CMBlockBufferRef rtcppackage_CreateBBufRepresentation(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v18 = 0;
  MessageType = APTransportParcelGetMessageType(*DerivedStorage);
  MessageData = APTransportParcelGetMessageData(*DerivedStorage);
  DataLength = CMBlockBufferGetDataLength(MessageData);
  if (MessageType > 1951421519)
  {
    switch(MessageType)
    {
      case 0x74505450:
        if (DataLength != 24)
        {
          rtcppackage_CreateBBufRepresentation_cold_6();
          return 0;
        }

        v7 = -112;
        break;
      case 0x74616E6E:
        if (DataLength == 16)
        {
          v6 = 0x80;
          goto LABEL_26;
        }

        rtcppackage_CreateBBufRepresentation_cold_7();
        return 0;
      case 0x74707470:
        if (DataLength != 24)
        {
          rtcppackage_CreateBBufRepresentation_cold_5();
          return 0;
        }

        v7 = 0x80;
        break;
      default:
LABEL_17:
        if (gLogCategory_APTransportPackageRTCP <= 90 && (gLogCategory_APTransportPackageRTCP != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APTransportPackageRTCP, "CMBlockBufferRef rtcppackage_CreateBBufRepresentation(APTransportPackageRef)", 33554522, "[%{ptr}] Unhandled message type %'C.\n", a1, MessageType);
        }

        return 0;
    }

    LOBYTE(v19) = v7;
    v8 = 1536;
    v9 = -41;
LABEL_27:
    BYTE1(v19) = v9;
    HIWORD(v19) = v8;
    APTransportParcelCreateBBufRepresentation(*DerivedStorage, *MEMORY[0x277CBECE8], &v19, &v18);
    return v18;
  }

  if (MessageType == 560031598)
  {
    if (DataLength != 4)
    {
      rtcppackage_CreateBBufRepresentation_cold_4();
      return 0;
    }

    LOBYTE(v19) = 0x80;
    v8 = 256;
    v9 = -42;
    goto LABEL_27;
  }

  if (MessageType != 1634168352)
  {
    if (MessageType == 1950436942)
    {
      if (DataLength == 16)
      {
        v6 = -112;
LABEL_26:
        LOBYTE(v19) = v6;
        v8 = 1024;
        v9 = -44;
        goto LABEL_27;
      }

      rtcppackage_CreateBBufRepresentation_cold_8();
      return 0;
    }

    goto LABEL_17;
  }

  LOWORD(v19) = -10624;
  HIWORD(v19) = bswap32((DataLength + 2) >> 2) >> 16;
  dataPointerOut = 0;
  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
  if (BlockBufferCopyingMemoryBlock)
  {
    rtcppackage_CreateBBufRepresentation_cold_1(BlockBufferCopyingMemoryBlock);
  }

  else
  {
    customBlockSource.version = 0;
    customBlockSource.AllocateBlock = 0;
    customBlockSource.FreeBlock = rtcppackage_bbufFree;
    customBlockSource.refCon = CFRetain(MessageData);
    DataPointer = CMBlockBufferGetDataPointer(MessageData, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
    if (DataPointer)
    {
      rtcppackage_CreateBBufRepresentation_cold_2(DataPointer);
    }

    else
    {
      dataPointerOut -= 2;
      totalLengthOut += 2;
      appended = CMBlockBufferAppendMemoryBlock(v18, dataPointerOut, totalLengthOut, *MEMORY[0x277CBED00], &customBlockSource, 0, totalLengthOut, 0);
      if (!appended)
      {
        return v18;
      }

      rtcppackage_CreateBBufRepresentation_cold_3(appended);
    }
  }

  result = v18;
  if (v18)
  {
    CFRelease(v18);
    return 0;
  }

  return result;
}

uint64_t APTransportTrafficRegistrarGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_16 != -1)
  {
    APTransportTrafficRegistrarGetTypeID_cold_1();
  }

  return qword_281309C30;
}

uint64_t trafficRegistrar_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APTransportTrafficRegistrarCreate(uint64_t a1, void *a2)
{
  if (_MergedGlobals_16 != -1)
  {
    APTransportTrafficRegistrarGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APTransportTrafficRegistrarCreate_cold_6();
    return 4294960568;
  }

  v4 = Instance;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  v5 = dispatch_queue_create("APTransportTrafficRegistrar.queue", 0);
  v4[2] = v5;
  if (!v5)
  {
    APTransportTrafficRegistrarCreate_cold_5();
LABEL_17:
    v10 = 4294960568;
    goto LABEL_18;
  }

  v6 = WiFiManagerCreate();
  if (v6)
  {
    v10 = v6;
    APTransportTrafficRegistrarCreate_cold_2(v6);
LABEL_18:
    CFRelease(v4);
    return v10;
  }

  WiFiManagerSetProperty();
  v7 = objc_opt_new();
  v4[4] = v7;
  if (!v7)
  {
    APTransportTrafficRegistrarCreate_cold_4();
    goto LABEL_17;
  }

  if (gLogCategory_APTransportTrafficRegistrar <= 50 && (gLogCategory_APTransportTrafficRegistrar != -1 || _LogCategory_Initialize()))
  {
    APTransportTrafficRegistrarCreate_cold_3(v4, v8, v9);
  }

  v10 = 0;
  *a2 = v4;
  return v10;
}

uint64_t APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx(void *a1, unsigned int *a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  v12[0] = 0;
  if (bswap64(*a2 | (*(a2 + 2) << 32)))
  {
    v7 = APSWiFiTrafficRegistrationCreate();
    v8 = v7;
    if (v7)
    {
      APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_cold_1(v7);
    }

    else
    {
      CFRetain(a1);
      block[5] = MEMORY[0x277D85DD0];
      block[6] = 3221225472;
      block[7] = __APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_block_invoke;
      block[8] = &__block_descriptor_48_e5_v8__0l;
      block[9] = a1;
      block[10] = v12[0];
      APSWiFiTrafficRegistrationSetRemovalHandler();
      CFRetain(a1);
      v9 = a1[2];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_block_invoke_3;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_async(v9, block);
      *a5 = CFRetain(v12[0]);
    }
  }

  else
  {
    APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_cold_2();
    v8 = 4294960591;
  }

  if (v12[0])
  {
    CFRelease(v12[0]);
  }

  return v8;
}

void __APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APTransportTrafficRegistrar <= 50 && (gLogCategory_APTransportTrafficRegistrar != -1 || _LogCategory_Initialize()))
  {
    __APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_block_invoke_cold_1(a1, a2, a3);
  }

  CFRetain(*(a1 + 32));
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v4;
  dispatch_async(v5, block);
  CFRelease(*(a1 + 32));
}

void __APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  --v1[10];
  CFRelease(v1);
}

void __APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  ++v1[10];
  CFRelease(v1);
}

uint64_t APTransportTrafficRegistrarInfraTransactionCreate(void *a1, CFTypeRef *a2)
{
  v9 = 0;
  v4 = APSWiFiTransactionCreate();
  v5 = v4;
  if (v4)
  {
    APTransportTrafficRegistrarInfraTransactionCreate_cold_1(v4);
  }

  else
  {
    CFRetain(a1);
    v8[5] = MEMORY[0x277D85DD0];
    v8[6] = 3221225472;
    v8[7] = __APTransportTrafficRegistrarInfraTransactionCreate_block_invoke;
    v8[8] = &__block_descriptor_48_e5_v8__0l;
    v8[9] = a1;
    v8[10] = v9;
    APSWiFiTransactionSetReleaseHandler();
    CFRetain(a1);
    v6 = a1[2];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __APTransportTrafficRegistrarInfraTransactionCreate_block_invoke_3;
    v8[3] = &__block_descriptor_40_e5_v8__0l;
    v8[4] = a1;
    dispatch_async(v6, v8);
    *a2 = CFRetain(v9);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v5;
}

void __APTransportTrafficRegistrarInfraTransactionCreate_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APTransportTrafficRegistrar <= 50 && (gLogCategory_APTransportTrafficRegistrar != -1 || _LogCategory_Initialize()))
  {
    __APTransportTrafficRegistrarInfraTransactionCreate_block_invoke_cold_1(a1, a2, a3);
  }

  CFRetain(*(a1 + 32));
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APTransportTrafficRegistrarInfraTransactionCreate_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v4;
  dispatch_async(v5, block);
  CFRelease(*(a1 + 32));
}

void __APTransportTrafficRegistrarInfraTransactionCreate_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  --v1[11];
  CFRelease(v1);
}

void __APTransportTrafficRegistrarInfraTransactionCreate_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  ++v1[11];
  CFRelease(v1);
}

void APTransportTrafficRegistrarGetRegistration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APTransportTrafficRegistrarGetRegistration_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a2;
  block[5] = a1;
  block[6] = a3;
  dispatch_sync(v3, block);
}

void *__APTransportTrafficRegistrarGetRegistration_block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    *v1 = *(result[5] + 40) != 0;
  }

  v2 = result[6];
  if (v2)
  {
    *v2 = *(result[5] + 44) != 0;
  }

  return result;
}

uint64_t APTransportTrafficRegistrarGetAWDLChannelSequence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2 && a3 && a4)
  {
    v4 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APTransportTrafficRegistrarGetAWDLChannelSequence_block_invoke;
    block[3] = &unk_278BC9628;
    block[4] = &v8;
    block[5] = a1;
    block[6] = a2;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(v4, block);
    v5 = *(v9 + 6);
  }

  else
  {
    APSLogErrorAt();
    v5 = APSSignalErrorAt();
    *(v9 + 6) = v5;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

void *__APTransportTrafficRegistrarGetAWDLChannelSequence_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  if (APSIsVirtualMachine())
  {
    result = __APTransportTrafficRegistrarGetAWDLChannelSequence_block_invoke_cold_1(v2, &v16, v6);
    v15 = v16;
    goto LABEL_15;
  }

  v7 = [MEMORY[0x277D7BB18] currentState];
  if (!v7)
  {
    result = __APTransportTrafficRegistrarGetAWDLChannelSequence_block_invoke_cold_3();
LABEL_19:
    v15 = -6762;
    goto LABEL_15;
  }

  v8 = [v7 channelSequence];
  if (!v8)
  {
    result = __APTransportTrafficRegistrarGetAWDLChannelSequence_block_invoke_cold_2();
    goto LABEL_19;
  }

  v9 = v8;
  if ([v8 count] >= 0x11)
  {
    LOBYTE(result) = 16;
    *v4 = 16;
    goto LABEL_7;
  }

  result = [v9 count];
  *v4 = result;
  if (result)
  {
LABEL_7:
    v11 = 0;
    v12 = result;
    do
    {
      v13 = [objc_msgSend(v9 objectAtIndexedSubscript:{v11), "bandwidth"}];
      if (v13 > 4)
      {
        v14 = 0;
      }

      else
      {
        v14 = dword_23D3838FC[v13];
      }

      if ([objc_msgSend(v9 objectAtIndexedSubscript:{v11), "extensionChannelAbove"}])
      {
        v14 |= 0x200u;
      }

      result = [objc_msgSend(v9 objectAtIndexedSubscript:{v11), "channelNumber"}];
      *(v3 + v11) = result;
      *(v5 + 4 * v11++) = v14;
    }

    while (v12 != v11);
  }

  v15 = 0;
LABEL_15:
  *(*(a1[4] + 8) + 24) = v15;
  return result;
}

uint64_t APTransportTrafficRegistrarGetRSSI(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (a2)
  {
    v2 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APTransportTrafficRegistrarGetRSSI_block_invoke;
    block[3] = &unk_278BC80B8;
    block[4] = &v6;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(v2, block);
    v3 = *(v7 + 6);
  }

  else
  {
    APSLogErrorAt();
    v3 = APSSignalErrorAt();
    *(v7 + 6) = v3;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __APTransportTrafficRegistrarGetRSSI_block_invoke(void *a1)
{
  v2 = a1[6];
  result = WiFiManagerGetInt64();
  *v2 = result;
  *(*(a1[4] + 8) + 24) = 0;
  return result;
}

uint64_t APTransportTrafficRegistrarGetWifiChannel(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = WiFiManagerGetInt64();
    return 0;
  }

  else
  {
    APTransportTrafficRegistrarGetWifiChannel_cold_1(&v3);
    return v3;
  }
}

void trafficRegistrar_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }

  *(a1 + 32) = 0;
  if (gLogCategory_APTransportTrafficRegistrar <= 50 && (gLogCategory_APTransportTrafficRegistrar != -1 || _LogCategory_Initialize()))
  {
    trafficRegistrar_Finalize_cold_1(a1, v3, v4);
  }
}

uint64_t APCarPlayHelperGetClassID(uint64_t a1, uint64_t a2)
{
  if (APCarPlayHelperGetClassID_sRegisterOnce != -1)
  {
    APCarPlayHelperGetClassID_cold_1();
  }

  return APCarPlayHelperGetClassID_sClassID;
}

uint64_t __APCarPlayHelperGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&APCarPlayHelperGetClassID_sClassDesc, ClassID, 1, &APCarPlayHelperGetClassID_sClassID);
}

uint64_t APCarPlayControlServerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (APCarPlayControlServerGetTypeID_carPlayControlServerInitOnce != -1)
  {
    APCarPlayControlServerGetTypeID_cold_1();
  }

  return APCarPlayControlServerGetTypeID_carPlayControlServerTypeID;
}

uint64_t __APCarPlayControlServerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  APCarPlayControlServerGetTypeID_carPlayControlServerTypeID = result;
  return result;
}

void _APCarPlayControlServerFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___APCarPlayControlServerFinalize_block_invoke;
  block[3] = &__block_descriptor_tmp_25_0;
  block[4] = a1;
  dispatch_sync(v2, block);
  dispatch_sync(*(a1 + 24), &__block_literal_global_28);
  v3 = *(a1 + 104);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 104) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 24) = 0;
  }

  TXTRecordDeallocate((a1 + 48));
  v6 = *(a1 + 40);
  if (v6)
  {
    free(v6);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 72) = 0;
  }
}

uint64_t APCarPlayControlServerInvalidate(uint64_t a1)
{
  v1 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APCarPlayControlServerInvalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_5;
  block[4] = a1;
  dispatch_sync(v1, block);
  return 0;
}

uint64_t _APCarPlayControlServerInvalidate(uint64_t a1)
{
  *(a1 + 16) = 1;
  *(a1 + 88) = 0;
  v1 = CFDictionaryCopyKeys();
  CFArrayGetCount(v1);
  return CFArrayApplyBlock();
}

uint64_t APCarPlayControlServerCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, const __CFDictionary *a6, TXTRecordRef **a7)
{
  if (!a2)
  {
    APCarPlayControlServerCreate_cold_13();
LABEL_25:
    v12 = 0;
    v26 = 4294960591;
    goto LABEL_19;
  }

  if (!a3)
  {
    APCarPlayControlServerCreate_cold_12();
    goto LABEL_25;
  }

  if (!a4)
  {
    APCarPlayControlServerCreate_cold_11();
    goto LABEL_25;
  }

  if (APCarPlayControlServerGetTypeID_carPlayControlServerInitOnce != -1)
  {
    APCarPlayControlServerGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v12 = Instance;
  if (!Instance)
  {
    APCarPlayControlServerCreate_cold_10();
LABEL_35:
    v26 = 4294960568;
    goto LABEL_19;
  }

  Instance[5] = 0u;
  Instance[6] = 0u;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[1] = 0u;
  Instance[2] = 0u;
  v13 = dispatch_queue_create("com.apple.carplaycontrolserver", 0);
  *(&v12[1].ForceNaturalAlignment + 1) = v13;
  if (!v13)
  {
    APCarPlayControlServerCreate_cold_9();
    goto LABEL_35;
  }

  v14 = HTTPServerCreate();
  if (v14)
  {
    v26 = v14;
    APCarPlayControlServerCreate_cold_2(v14);
    goto LABEL_19;
  }

  HTTPServerSetDispatchQueue();
  HTTPServerSetLogging();
  v15 = CFStringCopyUTF8CString();
  if (v15)
  {
    v26 = v15;
    APCarPlayControlServerCreate_cold_3(v15);
    goto LABEL_19;
  }

  v16 = CFStringCopyUTF8CString();
  if (v16)
  {
    v26 = v16;
    APCarPlayControlServerCreate_cold_4(v16);
    goto LABEL_19;
  }

  v17 = strlen(0);
  v18 = v17 + strlen(0) + 13;
  v19 = malloc_type_malloc(v18, 0xC2782F94uLL);
  *(&v12[2].ForceNaturalAlignment + 1) = v19;
  if (!v19)
  {
    APCarPlayControlServerCreate_cold_8();
    goto LABEL_35;
  }

  TXTRecordCreate(v12 + 3, v18, v19);
  v20 = strlen(0);
  v21 = TXTRecordSetValue(v12 + 3, "id", v20, 0);
  if (v21)
  {
    v26 = v21;
    APCarPlayControlServerCreate_cold_5(v21);
    goto LABEL_19;
  }

  v22 = strlen(0);
  v23 = TXTRecordSetValue(v12 + 3, "srcvers", v22, 0);
  if (v23)
  {
    v26 = v23;
    APCarPlayControlServerCreate_cold_6(v23);
    goto LABEL_19;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(&v12[4].ForceNaturalAlignment + 1) = Mutable;
  if (!Mutable)
  {
    APCarPlayControlServerCreate_cold_7();
    goto LABEL_35;
  }

  *(&v12[5].ForceNaturalAlignment + 1) = a4;
  v12[6].ForceNaturalAlignment = a5;
  if (a6)
  {
    Value = CFDictionaryGetValue(a6, @"EventRecorder");
    *(&v12[6].ForceNaturalAlignment + 1) = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  v26 = 0;
  *a7 = v12;
  v12 = 0;
LABEL_19:
  free(0);
  free(0);
  if (v12)
  {
    CFRelease(v12);
  }

  return v26;
}

uint64_t _APCarPlayControlServerControl(uint64_t a1, int a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (CFEqual(cf1, @"startServer"))
  {
    v9 = *(a1 + 16);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = ___APCarPlayControlServerControl_block_invoke;
    v13[3] = &__block_descriptor_tmp_32_0;
    v13[4] = a6;
    v10 = v13;
  }

  else
  {
    if (!CFEqual(cf1, @"stopServer"))
    {
      return 4294960582;
    }

    v9 = *(a1 + 16);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = ___APCarPlayControlServerControl_block_invoke_2_33;
    v12[3] = &__block_descriptor_tmp_37_0;
    v12[4] = a6;
    v10 = v12;
  }

  dispatch_async(v9, v10);
  return 0;
}

uint64_t APCarPlayControlServerAddInterface(uint64_t a1, CFStringRef theString)
{
  v13 = *MEMORY[0x277D85DE8];
  cf = 0;
  v10 = 0;
  if (!CFStringGetCString(theString, buffer, 17, 0x600u))
  {
    APCarPlayControlServerAddInterface_cold_2();
    v7 = 4294960591;
LABEL_9:
    APSLogErrorAt();
    return v7;
  }

  SocketGetInterfaceInfo();
  v4 = BonjourAdvertiserCreate();
  if (v4)
  {
    v7 = v4;
    APCarPlayControlServerAddInterface_cold_1(v4);
    goto LABEL_9;
  }

  BonjourAdvertiserSetDispatchQueue();
  BonjourAdvertiserSetInterfaceName();
  BonjourAdvertiserSetFlags();
  BonjourAdvertiserSetServiceType();
  BonjourAdvertiserSetDomain();
  TXTRecordGetBytesPtr((a1 + 48));
  TXTRecordGetLength((a1 + 48));
  BonjourAdvertiserSetTXTRecord();
  v5 = cf;
  CFRetain(cf);
  CFRetain(theString);
  v6 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APCarPlayControlServerAddInterface_block_invoke;
  block[3] = &__block_descriptor_tmp_15;
  block[4] = a1;
  block[5] = v5;
  block[6] = theString;
  dispatch_async(v6, block);
  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

void __APCarPlayControlServerAddInterface_block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    v4 = *(v2 + 64);
    *(v2 + 64) = v4 + 1;
    v5 = MEMORY[0x277D86220];
    if (!v4)
    {
      v6 = CFObjectSetProperty();
      if (gLogCategory_CarPlayControlServer <= 50)
      {
        if (gLogCategory_CarPlayControlServer != -1 || (v6 = _LogCategory_Initialize(), v6))
        {
          __APCarPlayControlServerAddInterface_block_invoke_cold_1(v6, v7, v8);
        }
      }

      if (*(*v3 + 104))
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
        v11 = v5;
      }

      if (os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23D2A9000, v11, OS_SIGNPOST_EVENT, 0x2B8D07D8uLL, "AP_SIGNPOST_CAR_CONTROLSERVER_STARTEDSERVER", "", buf, 2u);
      }

      if (v10)
      {
        os_release(v10);
      }
    }

    if (*(*v3 + 80))
    {
      BonjourAdvertiserSetPort();
      v12 = BonjourAdvertiserStart();
      if (*(*(a1 + 32) + 104))
      {
        APSEventRecorderRecordEvent();
      }

      v13 = LogCategoryCopyOSLogHandle();
      v14 = v13;
      if (v13)
      {
        v5 = v13;
      }

      if (os_signpost_enabled(v5))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&dword_23D2A9000, v5, OS_SIGNPOST_EVENT, 0x2B8D07DCuLL, "AP_SIGNPOST_CAR_CONTROLSERVER_STARTEDADVERTISE", "", v15, 2u);
      }

      if (v14)
      {
        os_release(v14);
      }

      if (gLogCategory_CarPlayControlServer <= 40 && (gLogCategory_CarPlayControlServer != -1 || _LogCategory_Initialize()))
      {
        __APCarPlayControlServerAddInterface_block_invoke_cold_2(v3, a1, v12);
      }
    }

    CFDictionarySetValue(*(*(a1 + 32) + 72), *(a1 + 48), *(a1 + 40));
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
}

uint64_t APCarPlayControlServerRemoveInterface(uint64_t a1, CFTypeRef cf)
{
  CFRetain(cf);
  v4 = *(a1 + 24);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __APCarPlayControlServerRemoveInterface_block_invoke;
  v6[3] = &__block_descriptor_tmp_21_2;
  v6[4] = a1;
  v6[5] = cf;
  dispatch_async(v4, v6);
  return 0;
}

void __APCarPlayControlServerRemoveInterface_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 16) && CFDictionaryGetValue(*(v2 + 72), *(a1 + 40)))
  {
    if (*(*(a1 + 32) + 80))
    {
      BonjourAdvertiserStop();
      if (gLogCategory_CarPlayControlServer <= 40 && (gLogCategory_CarPlayControlServer != -1 || _LogCategory_Initialize()))
      {
        __APCarPlayControlServerRemoveInterface_block_invoke_cold_1((a1 + 40));
      }
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 64) - 1;
    *(v3 + 64) = v4;
    if (!v4)
    {
      v5 = CFObjectSetProperty();
      if (gLogCategory_CarPlayControlServer <= 50)
      {
        if (gLogCategory_CarPlayControlServer != -1 || (v5 = _LogCategory_Initialize(), v5))
        {
          __APCarPlayControlServerRemoveInterface_block_invoke_cold_2(v5, v6, v7);
        }
      }
    }

    CFDictionaryRemoveValue(*(*(a1 + 32) + 72), *(a1 + 40));
  }

  v8 = *(a1 + 40);

  CFRelease(v8);
}

uint64_t APCarPlayControlServerInjectCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __APCarPlayControlServerInjectCommand_block_invoke;
  block[3] = &__block_descriptor_tmp_22_0;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_async(v3, block);
  return 0;
}

uint64_t __APCarPlayControlServerInjectCommand_block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = strlen(v3);
  v5 = *(v1 + 96);
  v6 = *(v1 + 88);

  return v6(v1, v2, v3, v4, v5);
}

uint64_t udpconnection_Invalidate_0(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*(DerivedStorage + 8), a1, udpconnection_invalidate);
  return 0;
}

__CFString *udpconnection_CopyDebugDescription_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportConnectionUDP %p '%@'>", a1, *(DerivedStorage + 16));
  return Mutable;
}

void udpconnection_clearCallbackState_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[4] = 0;
  DerivedStorage[5] = 0;
  v2 = DerivedStorage[6];
  if (v2)
  {
    dispatch_release(v2);
    DerivedStorage[6] = 0;
  }
}

uint64_t udpconnection_DumpHierarchy_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 56) == 5)
  {
    v11 = DerivedStorage;
    v12 = (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (UDP) %''@ Remote:%##a%?s%?lu Parent:[%{ptr}]\n", a1, a4, DerivedStorage + 192, *(DerivedStorage + 224) != 0, " IDX:", *(DerivedStorage + 224) != 0, *(DerivedStorage + 224), a2);
    if (v12)
    {
      v15 = v12;
      udpconnection_DumpHierarchy_cold_2_0(v12);
    }

    else
    {
      v13 = (*(a5 + 16))(a5, a3 + 1, "Listener (IPv4) Local:%##a Parent:[%{ptr}]\n", v11 + 136, a1);
      if (v13)
      {
        v15 = v13;
        udpconnection_DumpHierarchy_cold_3_0(v13);
      }

      else
      {
        v14 = (*(a5 + 16))(a5, a3 + 1, "Listener (IPv6) Local:%##a Parent:[%{ptr}]\n", v11 + 164, a1);
        v15 = v14;
        if (v14)
        {
          udpconnection_DumpHierarchy_cold_4(v14);
        }
      }
    }
  }

  else
  {
    v16 = (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (UDP) %''@ (Not Connected) Parent:[%{ptr}]\n", a1, a4, a2);
    v15 = v16;
    if (v16)
    {
      udpconnection_DumpHierarchy_cold_1_0(v16);
    }
  }

  return v15;
}

void udpconnection_sourceCanceledCallback(CFTypeRef *a1)
{
  v2 = *(a1 + 2);
  if ((v2 & 0x80000000) == 0)
  {
    if (close(v2) && *__error())
    {
      __error();
    }

    *(a1 + 2) = -1;
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t udpconnection_acquirePackageInternal(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    udpconnection_acquirePackageInternal_cold_1();
    return 4294954511;
  }

  else
  {
    v3 = *(DerivedStorage + 72);
    v4 = CFGetAllocator(*a1);
    v5 = v3(v4, a1[1]);
    if (v5)
    {
      v7 = v5;
      udpconnection_acquirePackageInternal_cold_2(v5);
    }

    else
    {
      if (gLogCategory_APTransportConnectionUDP <= 30 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
      {
        udpconnection_acquirePackageInternal_cold_3(a1, (a1 + 1), v6);
      }

      return 0;
    }
  }

  return v7;
}

uint64_t apapPackage_create(const __CFAllocator *a1, uint64_t a2, OpaqueCMBlockBuffer *a3, CFTypeRef *a4)
{
  memset(dataLength, 0, sizeof(dataLength));
  if (!a4)
  {
    v15 = 4294894936;
    apapPackage_create_cold_7();
    goto LABEL_19;
  }

  v6 = a2;
  APTransportPackageGetClassID(a1, a2);
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v15 = v8;
    apapPackage_create_cold_1(v8);
    goto LABEL_19;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = v6;
  if (v6)
  {
    v10 = 1634754914;
  }

  else
  {
    v10 = 1634754928;
  }

  *(DerivedStorage + 4) = v10;
  if (a3)
  {
    v11 = DerivedStorage;
    if (v6)
    {
      v12 = APTransportPackageBufferedAPAPGetPayloadSize(a3, dataLength);
      if (v12)
      {
        v15 = v12;
        apapPackage_create_cold_2(v12);
        goto LABEL_19;
      }

      v13 = CMBlockBufferGetDataLength(a3);
      if (v13 != dataLength[0] + 4)
      {
        v15 = 4294894936;
        apapPackage_create_cold_3();
        goto LABEL_19;
      }

      if (dataLength[0])
      {
        v14 = CMBlockBufferCreateWithBufferReference(a1, a3, 4uLL, dataLength[0], 0, (v11 + 8));
        if (v14)
        {
          v15 = v14;
          apapPackage_create_cold_4(v14);
          goto LABEL_19;
        }
      }

      else
      {
        Empty = CMBlockBufferCreateEmpty(a1, 0, 0, (v11 + 8));
        if (Empty)
        {
          v15 = Empty;
          apapPackage_create_cold_5(Empty);
          goto LABEL_19;
        }
      }
    }

    else
    {
      *(DerivedStorage + 8) = CFRetain(a3);
    }
  }

  if (gLogCategory_APTransportPackageAPAP <= 30 && (gLogCategory_APTransportPackageAPAP != -1 || _LogCategory_Initialize()))
  {
    apapPackage_create_cold_6(&dataLength[1]);
  }

  v15 = 0;
  *a4 = CFRetain(*&dataLength[1]);
LABEL_19:
  if (*&dataLength[1])
  {
    CFRelease(*&dataLength[1]);
  }

  return v15;
}

uint64_t APTransportPackageBufferedAPAPGetHeaderSize(_DWORD *a1, uint64_t a2)
{
  if (a1)
  {
    result = 0;
    *a1 = 4;
  }

  else
  {
    APTransportPackageBufferedAPAPGetHeaderSize_cold_1();
    return 4294894936;
  }

  return result;
}

uint64_t APTransportPackageBufferedAPAPGetPayloadSize(OpaqueCMBlockBuffer *a1, _DWORD *a2)
{
  destination = 0;
  if (a1)
  {
    if (a2)
    {
      if (CMBlockBufferGetDataLength(a1) <= 3)
      {
        v6 = 4294894936;
        APTransportPackageBufferedAPAPGetPayloadSize_cold_3();
      }

      else
      {
        v4 = CMBlockBufferCopyDataBytes(a1, 0, 4uLL, &destination);
        if (v4)
        {
          v6 = v4;
          APTransportPackageBufferedAPAPGetPayloadSize_cold_1(v4);
        }

        else
        {
          v5 = bswap32(destination);
          if (v5 <= 3)
          {
            v6 = 4294894936;
            APTransportPackageBufferedAPAPGetPayloadSize_cold_2();
          }

          else
          {
            v6 = 0;
            *a2 = v5 - 4;
          }
        }
      }
    }

    else
    {
      v6 = 4294894936;
      APTransportPackageBufferedAPAPGetPayloadSize_cold_4();
    }
  }

  else
  {
    v6 = 4294894936;
    APTransportPackageBufferedAPAPGetPayloadSize_cold_5();
  }

  return v6;
}

uint64_t APTransportPackageBufferedAPAPGetMaxPayloadSize(void *a1, uint64_t a2)
{
  if (a1)
  {
    result = 0;
    *a1 = 4294967291;
  }

  else
  {
    APTransportPackageBufferedAPAPGetMaxPayloadSize_cold_1();
    return 4294894936;
  }

  return result;
}

void apapPackage_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportPackageAPAP <= 30 && (gLogCategory_APTransportPackageAPAP != -1 || _LogCategory_Initialize()))
  {
    apapPackage_Finalize_cold_1(a1);
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }
}

CFMutableStringRef apapPackage_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v7 = *MEMORY[0x277CC0898];
  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    DataLength = CMBlockBufferGetDataLength(v4);
    if (apapPackage_isMessageTypeSupported(a1))
    {
      APSAPAPBBufDecodeHeader();
    }
  }

  else
  {
    DataLength = 0;
  }

  CFStringAppendF(Mutable, "<APTransportPackageAPAP %p type='%C' len=%zu ts=(%lld/%d) seq=%u>", a1, *(DerivedStorage + 4), DataLength, v7, DWORD2(v7), 0);
  return Mutable;
}

uint64_t apapPackage_isMessageTypeSupported(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[1];
  if (v2 == 1634754914 || v2 == 1634754917)
  {
    return *DerivedStorage;
  }

  if (v2 == 1634754928)
  {
    return *DerivedStorage == 0;
  }

  return 0;
}

CFTypeRef apapPackage_CopyMessageData(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 8);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void apapPackage_SetMessageData(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t apapPackage_SetMessageType(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 4) = a2;
  return result;
}

CMBlockBufferRef apapPackage_CreateBBufRepresentation(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theBuffer = 0;
  if (!apapPackage_isMessageTypeSupported(a1))
  {
    apapPackage_CreateBBufRepresentation_cold_6(DerivedStorage, a1, v4);
    return theBuffer;
  }

  v5 = *(DerivedStorage + 8);
  if (!v5)
  {
    apapPackage_CreateBBufRepresentation_cold_5(a1, v3, v4);
    return theBuffer;
  }

  DataLength = CMBlockBufferGetDataLength(v5);
  if (DataLength)
  {
    v7 = APSAPAPBBufDecodeHeader();
    if (v7)
    {
      apapPackage_CreateBBufRepresentation_cold_1(a1, v7, v8);
      return theBuffer;
    }

    if (*DerivedStorage)
    {
      if (DataLength >= 0xFFFFFFFC)
      {
        apapPackage_CreateBBufRepresentation_cold_2(a1, DataLength, v8);
        return theBuffer;
      }

      goto LABEL_9;
    }
  }

  else if (*DerivedStorage)
  {
LABEL_9:
    CFGetAllocator(a1);
    BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
    if (BlockBufferCopyingMemoryBlock)
    {
      apapPackage_CreateBBufRepresentation_cold_3(BlockBufferCopyingMemoryBlock);
    }

    else if (DataLength)
    {
      appended = CMBlockBufferAppendBufferReference(theBuffer, *(DerivedStorage + 8), 0, DataLength, 0);
      if (appended)
      {
        apapPackage_CreateBBufRepresentation_cold_4(appended, &theBuffer);
      }
    }

    return theBuffer;
  }

  v12 = *(DerivedStorage + 8);
  if (v12)
  {
    return CFRetain(v12);
  }

  return v12;
}

__CFString *httppackage_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportPackageHTTP %p>", a1);
  return Mutable;
}

uint64_t connection_getClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&connection_getClassID_sClassDesc, ClassID, 1, a1);
}

uint64_t APTransportConnectionGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_17 != -1)
  {
    APTransportConnectionGetClassID_cold_1();
  }

  v3 = qword_281309C40;

  return MEMORY[0x282111A98](v3);
}

__CFString *APTransportConnectionGetStallStateString(int a1)
{
  v1 = @"Stalled";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"NotStalled";
  }
}

uint64_t APTransportConnectionGetStatusString(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_278BC9B18 + a1);
  }
}

uint64_t APTransportConnectionGetTrafficClassForSocketQoS(int a1)
{
  if (a1 <= 9)
  {
    if (a1 == 1)
    {
      return 200;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 800;
      }

      return 0;
    }

    return 700;
  }

  if (a1 > 11)
  {
    if (a1 != 12)
    {
      if (a1 == 20)
      {
        return 900;
      }

      return 0;
    }

    return 700;
  }

  if (a1 != 10)
  {
    return 800;
  }

  return 500;
}

void *APTransportConnectionCopyNWContextForType(int a1)
{
  switch(a1)
  {
    case 1:
      if (APTransportConnectionCopyNWContextForType_sAPTNWContextBufferedAudioOnce != -1)
      {
        APTransportConnectionCopyNWContextForType_cold_2();
      }

      v3 = APTransportConnectionCopyNWContextForType_sAPTNWContextBufferedAudio;
      break;
    case 2:
      if (APTransportConnectionCopyNWContextForType_sAPTNWContextLowLatencyOnce != -1)
      {
        APTransportConnectionCopyNWContextForType_cold_1();
      }

      v3 = APTransportConnectionCopyNWContextForType_sAPTNWContextLowLatency;
      break;
    case 3:
      v1 = nw_context_create();
      nw_context_set_isolate_protocol_stack();
      nw_context_set_scheduling_mode();
      nw_context_activate();
      return v1;
    default:
      if (APTransportConnectionCopyNWContextForType_sAPTNWContextDefaultOnce != -1)
      {
        APTransportConnectionCopyNWContextForType_cold_3();
      }

      v3 = APTransportConnectionCopyNWContextForType_sAPTNWContextDefault;
      break;
  }

  return nw_retain(v3);
}

uint64_t __APTransportConnectionCopyNWContextForType_block_invoke()
{
  APTransportConnectionCopyNWContextForType_sAPTNWContextDefault = nw_context_create();
  nw_context_set_isolate_protocol_stack();
  nw_context_set_scheduling_mode();

  return nw_context_activate();
}

uint64_t __APTransportConnectionCopyNWContextForType_block_invoke_2()
{
  APTransportConnectionCopyNWContextForType_sAPTNWContextBufferedAudio = nw_context_create();
  nw_context_set_isolate_protocol_stack();
  nw_context_set_scheduling_mode();

  return nw_context_activate();
}

uint64_t __APTransportConnectionCopyNWContextForType_block_invoke_3()
{
  APTransportConnectionCopyNWContextForType_sAPTNWContextLowLatency = nw_context_create();
  nw_context_set_isolate_protocol_stack();
  nw_context_set_scheduling_mode();

  return nw_context_activate();
}

uint64_t APTransportConnectionGetSharedSelfSignedIdentity(uint64_t a1, uint64_t a2)
{
  if (qword_281309C50 != -1)
  {
    APTransportConnectionGetSharedSelfSignedIdentity_cold_1();
  }

  return qword_281309C48;
}

void transportConnection_createSelfSignedIdentity(void **a1)
{
  if (!a1)
  {
    transportConnection_createSelfSignedIdentity_cold_9();
LABEL_27:
    v15 = 0;
    goto LABEL_19;
  }

  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    transportConnection_createSelfSignedIdentity_cold_8();
    goto LABEL_27;
  }

  v4 = Mutable;
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC028], *MEMORY[0x277CDC040]);
  v5 = CFDictionarySetInt64();
  if (v5)
  {
    transportConnection_createSelfSignedIdentity_cold_1(v5);
LABEL_26:
    CFRelease(v4);
    goto LABEL_27;
  }

  RandomKey = SecKeyCreateRandomKey(v4, 0);
  if (!RandomKey)
  {
    transportConnection_createSelfSignedIdentity_cold_7();
    goto LABEL_26;
  }

  v7 = RandomKey;
  v8 = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
  if (!v8)
  {
    transportConnection_createSelfSignedIdentity_cold_6();
    v9 = 0;
LABEL_30:
    SelfSignedCertificate = 0;
LABEL_32:
    v13 = 0;
    goto LABEL_34;
  }

  v9 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v10 = CFDictionarySetInt64();
  if (v10)
  {
    transportConnection_createSelfSignedIdentity_cold_2(v10);
    goto LABEL_30;
  }

  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (!SelfSignedCertificate)
  {
    transportConnection_createSelfSignedIdentity_cold_5();
    goto LABEL_32;
  }

  v12 = SecIdentityCreate();
  v13 = v12;
  if (v12)
  {
    v14 = sec_identity_create(v12);
    v15 = v14;
    if (v14)
    {
      *a1 = sec_retain(v14);
    }

    else
    {
      transportConnection_createSelfSignedIdentity_cold_3();
    }

    goto LABEL_11;
  }

  transportConnection_createSelfSignedIdentity_cold_4();
LABEL_34:
  v15 = 0;
LABEL_11:
  CFRelease(v4);
  CFRelease(v7);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (SelfSignedCertificate)
  {
    CFRelease(SelfSignedCertificate);
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_19:

  sec_release(v15);
}

uint64_t APTransportConnectionSendBatchSlow(uint64_t a1, CFArrayRef theArray)
{
  if (a1)
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count < 1)
      {
        return 0;
      }

      else
      {
        v5 = Count;
        v6 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
          if (!ValueAtIndex)
          {
            break;
          }

          v8 = ValueAtIndex;
          v9 = CFGetTypeID(ValueAtIndex);
          if (v9 != APTransportPackageGetTypeID(v9, v10))
          {
            break;
          }

          v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (!v11)
          {
            v13 = 4294954514;
LABEL_12:
            APSLogErrorAt();
            return v13;
          }

          v12 = v11(a1, v8);
          if (v12)
          {
            v13 = v12;
            goto LABEL_12;
          }

          if (v5 == ++v6)
          {
            return 0;
          }
        }

        v13 = 4294894974;
        APTransportConnectionSendBatchSlow_cold_1();
      }
    }

    else
    {
      v13 = 4294894974;
      APTransportConnectionSendBatchSlow_cold_2();
    }
  }

  else
  {
    v13 = 4294894974;
    APTransportConnectionSendBatchSlow_cold_3();
  }

  return v13;
}

CFStringRef carPlayHelperSession_copyFormattingDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = "[Session/WiFi/USB]";
  if (!DerivedStorage[112])
  {
    v3 = "[Session/USB]";
  }

  v4 = "[Session/WiFi]";
  if (!DerivedStorage[112])
  {
    v4 = "<Invalid>";
  }

  if (!DerivedStorage[64])
  {
    v3 = v4;
  }

  v5 = "[Bonjour/USB]";
  v6 = "[Bonjour/WiFi]";
  if (DerivedStorage[112])
  {
    v5 = "[Bonjour/WiFi/USB]";
  }

  else
  {
    v6 = "<Invalid>";
  }

  if (DerivedStorage[64])
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (DerivedStorage[177])
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"[APCarPlayHelperSession %p] - %s", a1, v8);
}

uint64_t __APCarPlayHelperSessionGetClassID_block_invoke(uint64_t a1, uint64_t a2)
{
  ClassID = APCarPlayHelperGetClassID(a1, a2);

  return MEMORY[0x282112448](&APCarPlayHelperSessionGetClassID_sClassDesc, ClassID, 0, &APCarPlayHelperSessionGetClassID_sClassID);
}

uint64_t APCarPlayHelperSessionCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, CFTypeRef *a5)
{
  if (APCarPlayHelperSessionGetClassID_sRegisterOnce != -1)
  {
    APCarPlayHelperSessionCreate_cold_1();
  }

  v10 = CMDerivedObjectCreate();
  v27 = v10;
  if (v10)
  {
    APCarPlayHelperSessionCreate_cold_2(v10);
    return v27;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = dispatch_semaphore_create(0);
  *(DerivedStorage + 8) = v12;
  if (!v12)
  {
    APCarPlayHelperSessionCreate_cold_13(&v27);
    return v27;
  }

  v13 = dispatch_queue_create("APCarPlayHelperSessionInternalQueue", 0);
  *(DerivedStorage + 16) = v13;
  if (!v13)
  {
    APCarPlayHelperSessionCreate_cold_12(&v27);
    return v27;
  }

  v14 = dispatch_queue_create("APCarPlayHelperSessionEventQueue", 0);
  *(DerivedStorage + 24) = v14;
  if (!v14)
  {
    APCarPlayHelperSessionCreate_cold_11(&v27);
    return v27;
  }

  *(DerivedStorage + 232) = a2;
  *(DerivedStorage + 240) = a3;
  if (!a2)
  {
    APCarPlayHelperSessionCreate_cold_10(&v27);
    return v27;
  }

  SharedHelper = APConnectivityHelperGetSharedHelper();
  if (SharedHelper)
  {
    v16 = CFRetain(SharedHelper);
    *(DerivedStorage + 40) = v16;
    if (v16)
    {
      v17 = APConnectivityHelperRegisterEventHandler(v16, 0, carPlayHelperSession_handleConnectivityHelperEvent);
      v27 = v17;
      if (v17)
      {
        APCarPlayHelperSessionCreate_cold_3(v17);
        return v27;
      }

      Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(DerivedStorage + 160) = Mutable;
      if (!Mutable)
      {
        APCarPlayHelperSessionCreate_cold_8(&v27);
        return v27;
      }

      v19 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(DerivedStorage + 168) = v19;
      if (!v19)
      {
        APCarPlayHelperSessionCreate_cold_7(&v27);
        return v27;
      }

      if (_MergedGlobals_18 != -1)
      {
        APCarPlayHelperSessionCreate_cold_4();
      }

      [qword_281309C60 addCarPlayHelper:0];
      if (a4)
      {
        Value = CFDictionaryGetValue(a4, @"powerAssertion");
        *(DerivedStorage + 32) = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        v21 = CFDictionaryGetValue(a4, @"eventRecorder");
        *(DerivedStorage + 264) = v21;
        if (v21)
        {
          CFRetain(v21);
        }

        *(DerivedStorage + 64) = CFDictionaryGetInt64Ranged() & 1;
        *(DerivedStorage + 112) = (CFDictionaryGetInt64Ranged() & 2) != 0;
        *(DerivedStorage + 177) = CFDictionaryGetInt64() != 0;
      }

      if (!*(DerivedStorage + 64) && !*(DerivedStorage + 112))
      {
        APCarPlayHelperSessionCreate_cold_6(&v27);
        return v27;
      }

      CFPrefs_GetDouble();
      *(DerivedStorage + 56) = v22;
      if (v27)
      {
        *(DerivedStorage + 56) = 0x4044000000000000;
        v27 = 0;
      }

      if (*(DerivedStorage + 177))
      {
        if (_MergedGlobals_18 != -1)
        {
          APCarPlayHelperSessionCreate_cold_4();
        }

        [qword_281309C60 registerSessionRequestHandlerMachService];
      }

      if (gLogCategory_APBrowserCarSessionHelper > 90 || gLogCategory_APBrowserCarSessionHelper == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_47;
      }

      if (*(DerivedStorage + 177))
      {
        if (*(DerivedStorage + 64))
        {
          v23 = "[Session/WiFi/USB]";
          v24 = "[Session/USB]";
LABEL_43:
          if (*(DerivedStorage + 112))
          {
            v25 = v23;
          }

          else
          {
            v25 = v24;
          }

          LogPrintF(&gLogCategory_APBrowserCarSessionHelper, "OSStatus APCarPlayHelperSessionCreate(CFAllocatorRef, APCarPlayHelperEventHandler, void *, CFDictionaryRef, APCarPlayHelperRef *)", 33554522, "[%{ptr}] Created APCarPlayHelperSession: %s with session timeout: %lf\n", 0, v25, *(DerivedStorage + 56));
LABEL_47:
          *a5 = 0;
          return v27;
        }

        v23 = "[Session/WiFi]";
      }

      else
      {
        if (*(DerivedStorage + 64))
        {
          v23 = "[Bonjour/WiFi/USB]";
          v24 = "[Bonjour/USB]";
          goto LABEL_43;
        }

        v23 = "[Bonjour/WiFi]";
      }

      v24 = "<Invalid>";
      goto LABEL_43;
    }
  }

  else
  {
    *(DerivedStorage + 40) = 0;
  }

  APCarPlayHelperSessionCreate_cold_9(&v27);
  return v27;
}

void sub_23D3151DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void carPlayHelperSession_connectivityHelperCheckIfWiFiUUIDChanged(uint64_t a1)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = APConnectivityHelperCopyCurrentWiFiNetworkInfo(*(DerivedStorage + 40), &cf);
  v4 = cf;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = cf == 0;
  }

  if (!v5)
  {
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v7 = (DerivedStorage + 136);
    if (FigCFEqual())
    {
      if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
      {
        carPlayHelperSession_connectivityHelperCheckIfWiFiUUIDChanged_cold_1(DerivedStorage, DerivedStorage + 136, a1);
      }
    }

    else
    {
      if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
      {
        carPlayHelperSession_connectivityHelperCheckIfWiFiUUIDChanged_cold_2(DerivedStorage, DerivedStorage + 136, a1);
      }

      v8 = *v7;
      *v7 = TypedValue;
      if (TypedValue)
      {
        CFRetain(TypedValue);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      *(DerivedStorage + 120) = CFAbsoluteTimeGetCurrent();
    }

    v4 = cf;
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void carPlayHelperSession_dispatchEvent(const void *a1, uint64_t a2, const void *a3)
{
  v4 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 232);
  if (!v7)
  {
    return;
  }

  v8 = DerivedStorage;
  v9 = *(DerivedStorage + 240);
  if (gLogCategory_APBrowserCarSessionHelper <= 20 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
  {
    carPlayHelperSession_dispatchEvent_cold_1();
    if (!a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a1)
  {
LABEL_6:
    CFRetain(a1);
  }

LABEL_7:
  if (a3)
  {
    CFRetain(a3);
  }

  v10 = *(v8 + 24);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __carPlayHelperSession_dispatchEvent_block_invoke;
  v11[3] = &__block_descriptor_76_e5_v8__0l;
  v11[4] = v7;
  v11[5] = a1;
  v12 = v4;
  v11[6] = a3;
  v11[7] = v9;
  v11[8] = v8;
  dispatch_async(v10, v11);
}

void __carPlayHelperSession_dispatchEvent_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 72), *(a1 + 48), *(a1 + 56));
  if (*(*(a1 + 64) + 248))
  {
    v4 = os_transaction_copy_description();
    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      __carPlayHelperSession_dispatchEvent_block_invoke_cold_1(v4, v2, v3);
    }

    free(v4);
    v5 = *(*(a1 + 64) + 248);
    if (v5)
    {

      *(*(a1 + 64) + 248) = 0;
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t __carPlayHelperSession_finalize_block_invoke(uint64_t result)
{
  *(*(result + 32) + 232) = 0;
  *(*(result + 32) + 240) = 0;
  return result;
}

const void *carPlayHelperSession_usbInterfaceListeningStopped(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 80);
  if (result)
  {
    CFRelease(result);
    *(DerivedStorage + 80) = 0;
    CMBaseObjectGetDerivedStorage();
    result = APSLogErrorAt();
    if (gLogCategory_APBrowserCarSessionHelper <= 30)
    {
      if (gLogCategory_APBrowserCarSessionHelper != -1)
      {
        return carPlayHelperSession_usbInterfaceListeningStopped_cold_1();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return carPlayHelperSession_usbInterfaceListeningStopped_cold_1();
      }
    }
  }

  return result;
}

const void *carPlayHelperSession_wifiNetworkListeningStopped(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 128);
  if (result)
  {
    CFRelease(result);
    *(DerivedStorage + 128) = 0;
    result = carPlayHelperSession_wifiNetworkChanged(a1, 0);
    if (gLogCategory_APBrowserCarSessionHelper <= 30)
    {
      if (gLogCategory_APBrowserCarSessionHelper != -1)
      {
        return carPlayHelperSession_wifiNetworkListeningStopped_cold_1();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return carPlayHelperSession_wifiNetworkListeningStopped_cold_1();
      }
    }
  }

  return result;
}

uint64_t carPlayHelperSession_updateIPAddresses(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    carPlayHelperSession_updateIPAddresses_cold_3();
    return 4294960591;
  }

  if (!a3)
  {
    carPlayHelperSession_updateIPAddresses_cold_2();
    return 4294960591;
  }

  v9 = DerivedStorage;
  if (a4 == 4)
  {
    v10 = 168;
    goto LABEL_7;
  }

  if (a4 != 6)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  v10 = 160;
LABEL_7:
  v11 = *(DerivedStorage + v10);
  CFDictionarySetValue(v11, a2, a3);
  if (*(v9 + 216) == 0.0 || (Current = CFAbsoluteTimeGetCurrent(), Current - *(v9 + 216) >= 2.0) || (Value = CFDictionaryGetValue(v11, *(v9 + 128))) != 0 && CFArrayGetCount(Value))
  {
    if (gLogCategory_APBrowserCarSessionHelper <= 30 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      v14 = "[Session/WiFi/USB]";
      if (!*(v9 + 112))
      {
        v14 = "[Session/USB]";
      }

      v15 = "[Session/WiFi]";
      if (!*(v9 + 112))
      {
        v15 = "<Invalid>";
      }

      if (!*(v9 + 64))
      {
        v14 = v15;
      }

      v16 = "[Bonjour/USB]";
      v17 = "[Bonjour/WiFi]";
      if (*(v9 + 112))
      {
        v16 = "[Bonjour/WiFi/USB]";
      }

      else
      {
        v17 = "<Invalid>";
      }

      if (*(v9 + 64))
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      if (*(v9 + 177))
      {
        v19 = v14;
      }

      else
      {
        v19 = v18;
      }

      LogPrintF(&gLogCategory_APBrowserCarSessionHelper, "OSStatus carPlayHelperSession_updateIPAddresses(APCarPlayHelperRef, CFStringRef, CFArrayRef, const int8_t)", 33554462, "[%{ptr}] %s interface %@ IPv%d addresses changed to %@\n", a1, v19, a2, a4, a3);
    }

    updated = carPlayHelperSession_updateNetworkAndSessionState(a1);
    v20 = updated;
    if (updated)
    {
      carPlayHelperSession_updateIPAddresses_cold_1(updated);
    }
  }

  else
  {
    if (gLogCategory_APBrowserCarSessionHelper <= 50 && (gLogCategory_APBrowserCarSessionHelper != -1 || _LogCategory_Initialize()))
    {
      v21 = *(v9 + 112);
      if (*(v9 + 177))
      {
        v22 = "[Session/WiFi/USB]";
        v23 = "[Session/USB]";
        v24 = v21 == 0;
        v25 = "[Session/WiFi]";
      }

      else
      {
        v22 = "[Bonjour/WiFi/USB]";
        v23 = "[Bonjour/USB]";
        v24 = v21 == 0;
        v25 = "[Bonjour/WiFi]";
      }

      if (v24)
      {
        v22 = v23;
        v25 = "<Invalid>";
      }

      if (*(v9 + 64))
      {
        v28 = v22;
      }

      else
      {
        v28 = v25;
      }

      LogPrintF(&gLogCategory_APBrowserCarSessionHelper, "OSStatus carPlayHelperSession_updateIPAddresses(APCarPlayHelperRef, CFStringRef, CFArrayRef, const int8_t)", 33554482, "[%{ptr}] %s Ignoring update change(%lf seconds): interface %@ IPv%d addresses changed to %@\n", a1, v28, Current - *(v9 + 216), a2, a4, a3);
    }

    return 0;
  }

  return v20;
}