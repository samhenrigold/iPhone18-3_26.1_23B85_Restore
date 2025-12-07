uint64_t APBrokerKeychainUtilsCreateKeychainItemID(__CFString *a1, __CFString *a2, uint64_t *a3)
{
  v8 = 0;
  if (_IsValidKeychainItemIDComponent(a1))
  {
    if (_IsValidKeychainItemIDComponent(a2))
    {
      v6 = CFStringCreateF(&v8, "%@%s%@", a1, "\x1C", a2);
      if (v8)
      {
        APBrokerKeychainUtilsCreateKeychainItemID_cold_1(v8, v6);
      }

      else
      {
        *a3 = v6;
      }
    }

    else
    {
      APBrokerKeychainUtilsCreateKeychainItemID_cold_2(&v8);
    }
  }

  else
  {
    APBrokerKeychainUtilsCreateKeychainItemID_cold_3(&v8);
  }

  return v8;
}

uint64_t __APBrokerKeychainUtilsRemoveExpiredAuthTokens_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    if (gLogCategory_APBrokerKeychainUtils <= 90)
    {
      if (gLogCategory_APBrokerKeychainUtils != -1)
      {
        return LogPrintF(&gLogCategory_APBrokerKeychainUtils, "void APBrokerKeychainUtilsRemoveExpiredAuthTokens(void)_block_invoke", 33554522, "Failed to clear pairing group info for %@ due to error: %{error}\n", *(v2 + 32), a2);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF(&gLogCategory_APBrokerKeychainUtils, "void APBrokerKeychainUtilsRemoveExpiredAuthTokens(void)_block_invoke", 33554522, "Failed to clear pairing group info for %@ due to error: %{error}\n", *(v2 + 32), a2);
      }
    }
  }

  else if (gLogCategory_APBrokerKeychainUtils <= 50)
  {
    if (gLogCategory_APBrokerKeychainUtils != -1)
    {
      return __APBrokerKeychainUtilsRemoveExpiredAuthTokens_block_invoke_cold_1(v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __APBrokerKeychainUtilsRemoveExpiredAuthTokens_block_invoke_cold_1(v2);
    }
  }

  return result;
}

uint64_t _IsValidKeychainItemIDComponent(__CFString *a1)
{
  if (a1)
  {
    if (CFStringGetLength(a1) < 1)
    {
      v3 = 259;
    }

    else
    {
      if (![(__CFString *)a1 containsString:@"\x1C"])
      {
        return 1;
      }

      v3 = 260;
    }
  }

  else
  {
    v3 = 258;
  }

  _IsValidKeychainItemIDComponent_cold_1(v3);
  return 0;
}

uint64_t APTransportConnectionHTTPCreate(uint64_t a1, const void *a2, int a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0;
  cf = 0;
  if (!a6)
  {
    APTransportConnectionHTTPCreate_cold_13(&v30);
    goto LABEL_54;
  }

  APTransportConnectionGetClassID(a1, a2);
  v10 = CMDerivedObjectCreate();
  v30 = v10;
  if (v10)
  {
    APTransportConnectionHTTPCreate_cold_1(v10);
    goto LABEL_54;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Int64 = CFDictionaryGetInt64();
  *(DerivedStorage + 224) = Int64 != 0;
  if (v30)
  {
    *(DerivedStorage + 224) = 0;
    v30 = 0;
  }

  else if (Int64)
  {
    *(DerivedStorage + 240) = 0;
    *(DerivedStorage + 248) = -1;
  }

  *(DerivedStorage + 256) = CFDictionaryGetInt64() != 0;
  if (v30)
  {
    *(DerivedStorage + 256) = 0;
    v30 = 0;
  }

  CFDictionaryGetTypeID();
  if (CFDictionaryGetTypedValue())
  {
    *(DerivedStorage + 56) = CFDictionaryGetInt64() != 0;
    v13 = CFDictionaryGetInt64();
    *(DerivedStorage + 57) = v13 != 0;
    if (v13)
    {
      CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (TypedValue)
      {
        v15 = CFRetain(TypedValue);
        *(DerivedStorage + 64) = v15;
        if (v15)
        {
          goto LABEL_13;
        }
      }

      else
      {
        *(DerivedStorage + 64) = 0;
      }

      APTransportConnectionHTTPCreate_cold_2(&v30);
      goto LABEL_54;
    }
  }

LABEL_13:
  if (IsAppleInternalBuild() && APSSettingsGetBooleanIfPresent() && gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
  {
    APTransportConnectionHTTPCreate_cold_3(&cf, (DerivedStorage + 56));
  }

  v16 = MEMORY[0x277CBECE8];
  if (!*(DerivedStorage + 256) || !CFDictionaryGetInt64())
  {
    v17 = 0;
    goto LABEL_23;
  }

  v17 = CFStringCreateWithFormat(*v16, 0, @"%@.%@(%p)", @"com.apple.APTransportConnectionHTTP", a2, cf);
  v18 = APSPowerAssertionCreate();
  *(DerivedStorage + 232) = v18;
  if (v18)
  {
LABEL_23:
    *(DerivedStorage + 200) = CFDictionaryGetInt64();
    if (v30)
    {
      *(DerivedStorage + 200) = 0;
      v30 = 0;
    }

    CFUUIDGetTypeID();
    v19 = CFDictionaryGetTypedValue();
    *(DerivedStorage + 208) = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    CMTimeMakeWithSeconds(&v31, 30.0, 1000);
    *(DerivedStorage + 440) = v31;
    if (FigCFDictionaryGetCMTimeIfPresent() && gLogCategory_APTransportConnectionHTTP <= 40 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      APTransportConnectionHTTPCreate_cold_5(&cf, (DerivedStorage + 440));
    }

    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    *(DerivedStorage + 48) = a3;
    SNPrintF(&v31, 128, "APTransportConnectionHTTP.%{ptr}", cf);
    if (a4)
    {
      v20 = FigDispatchQueueCreateWithPriority();
    }

    else
    {
      v20 = dispatch_queue_create(&v31, 0);
    }

    *(DerivedStorage + 8) = v20;
    if (v20)
    {
      SNPrintF(&v31, 128, "APTransportConnectionHTTP.event.%{ptr}", cf);
      if (a4)
      {
        v21 = FigDispatchQueueCreateWithPriority();
      }

      else
      {
        v21 = dispatch_queue_create(&v31, 0);
      }

      *(DerivedStorage + 16) = v21;
      if (v21)
      {
        SNPrintF(&v31, 128, "APTransportConnectionHTTP.callbackState.%{ptr}", cf);
        v22 = dispatch_queue_create(&v31, 0);
        *(DerivedStorage + 80) = v22;
        if (v22)
        {
          SNPrintF(&v31, 128, "APTransportConnectionHTTP.notification.%{ptr}", cf);
          v23 = dispatch_queue_create(&v31, 0);
          *(DerivedStorage + 40) = v23;
          if (v23)
          {
            if (*(DerivedStorage + 256) && (v24 = FigSimpleMutexCreate(), (*(DerivedStorage + 272) = v24) == 0))
            {
              APTransportConnectionHTTPCreate_cold_6(&v30);
            }

            else
            {
              v25 = FigCFWeakReferenceHolderCreateWithReferencedObject();
              *(DerivedStorage + 216) = v25;
              if (v25)
              {
                Mutable = CFDictionaryCreateMutable(*v16, 0, 0, MEMORY[0x277CBF150]);
                *(DerivedStorage + 96) = Mutable;
                if (Mutable)
                {
                  *(DerivedStorage + 108) = 0;
                  CMTimeMake(&v28, 2000, 1000);
                  *(DerivedStorage + 400) = v28;
                  if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus APTransportConnectionHTTPCreate(CFAllocatorRef, CFStringRef, APTransportConnectionFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554482, "[%{ptr}] APTransportConnectionHTTP with name %'@ created. QoS: %d Priority: %u", cf, a2, *(DerivedStorage + 200), a4);
                  }

                  APTTrafficMetricsCreate(&gLogCategory_APTransportConnectionHTTP, cf, (DerivedStorage + 504), 4);
                  *a6 = cf;
                  cf = 0;
                }

                else
                {
                  APTransportConnectionHTTPCreate_cold_7();
                }
              }

              else
              {
                APTransportConnectionHTTPCreate_cold_8(&v30);
              }
            }
          }

          else
          {
            APTransportConnectionHTTPCreate_cold_9(&v30);
          }
        }

        else
        {
          APTransportConnectionHTTPCreate_cold_10();
        }
      }

      else
      {
        APTransportConnectionHTTPCreate_cold_11();
      }
    }

    else
    {
      APTransportConnectionHTTPCreate_cold_12();
    }

    goto LABEL_52;
  }

  APTransportConnectionHTTPCreate_cold_4();
LABEL_52:
  if (v17)
  {
    CFRelease(v17);
  }

LABEL_54:
  if (cf)
  {
    CFRelease(cf);
  }

  return v30;
}

void httpconnection_Finalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
  {
    httpconnection_Finalize_cold_1(a1);
  }

  httpconnection_invalidateInternal(a1, 0);
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

  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 40) = 0;
  }

  v6 = *(DerivedStorage + 232);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 232) = 0;
  }

  v7 = *(DerivedStorage + 24);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 24) = 0;
  }

  v8 = *(DerivedStorage + 208);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 208) = 0;
  }

  v9 = *(DerivedStorage + 96);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 96) = 0;
  }

  v10 = *(DerivedStorage + 80);
  if (v10)
  {
    dispatch_release(v10);
    *(DerivedStorage + 80) = 0;
  }

  v11 = *(DerivedStorage + 216);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 216) = 0;
  }

  v12 = *(DerivedStorage + 504);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 504) = 0;
  }

  v13 = *(DerivedStorage + 64);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 64) = 0;
  }

  v14 = *(DerivedStorage + 72);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 72) = 0;
  }

  if (*(DerivedStorage + 256))
  {
    if (*(DerivedStorage + 272))
    {
      FigSimpleMutexDestroy();
      *(DerivedStorage + 272) = 0;
    }
  }
}

__CFString *httpconnection_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportConnectionHTTP %p '%@'>", a1, *(DerivedStorage + 24));
  return Mutable;
}

uint64_t httpconnection_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v10 = 0;
  v6 = *(CMBaseObjectGetDerivedStorage() + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __httpconnection_SetProperty_block_invoke;
  v8[3] = &unk_278BC7320;
  v8[4] = v9;
  v8[5] = a1;
  v8[6] = a2;
  v8[7] = a3;
  dispatch_sync(v6, v8);
  _Block_object_dispose(v9, 8);
  return 0;
}

void httpconnection_clearCallbackState(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 96);
  if (v3)
  {
    CFDictionaryApplyFunction(v3, httpconnection_releaseCallbackQueues, a1);
    v4 = *(DerivedStorage + 96);

    CFDictionaryRemoveAllValues(v4);
  }
}

void httpconnection_releaseCallbackQueues(int a1, CFArrayRef theArray)
{
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 2);

  dispatch_release(ValueAtIndex);
}

uint64_t httpconnection_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(CMBaseObjectGetDerivedStorage() + 108) != 5)
  {
    return (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (HTTP) %''@ (Not Connected) Parent:[%{ptr}]\n");
  }

  HTTPClientGetClientID();
  return (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (HTTP) %''@ Ports:%##a -> %##a CID:0x%08X Parent:[%{ptr}]\n");
}

uint64_t httpconnection_Resume(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 8), a1, httpconnection_resumeInternal);
  return 0;
}

uint64_t httpconnection_AddEventCallback(const void *a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        if (a1)
        {
          CFRetain(a1);
        }

        dispatch_retain(a4);
        APSDispatchAsyncFHelper();
      }

      else
      {
        httpconnection_AddEventCallback_cold_1();
      }
    }

    else
    {
      httpconnection_AddEventCallback_cold_2();
    }
  }

  else
  {
    httpconnection_AddEventCallback_cold_3();
  }

  return 0;
}

uint64_t httpconnection_RemoveEventCallback(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6[0] = a1;
  v6[1] = a2;
  dispatch_sync_f(*(DerivedStorage + 80), v6, httpconnection_removeEventCallbackInternal);
  return 0;
}

uint64_t httpconnection_ConfigureEncryption(const void *a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      CFRetain(a1);
      CFRetain(a2);
      CFRetain(a3);
      APSDispatchAsyncFHelper();
      return 0;
    }

    else
    {
      v6 = 4294894974;
      httpconnection_ConfigureEncryption_cold_1();
    }
  }

  else
  {
    v6 = 4294894974;
    httpconnection_ConfigureEncryption_cold_2();
  }

  return v6;
}

void httpconnection_resumeInternal(const void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportConnectionHTTP <= 30 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
  {
    httpconnection_resumeInternal_cold_1(a1, v2, v3);
  }

  if (*(DerivedStorage + 104))
  {
    httpconnection_resumeInternal_cold_2(a1, v2, v3);
    goto LABEL_39;
  }

  *(DerivedStorage + 104) = 1;
  *(DerivedStorage + 108) = 0;
  if (*(DerivedStorage + 224))
  {
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = *(v5 + 248);
    if (v6 != -1)
    {
      v7 = v5;
      v8 = httpconnection_handleConnectionEstablished(a1, v6);
      *(v7 + 248) = -1;
      if (!v8)
      {
        goto LABEL_39;
      }

      v9 = v8;
      httpconnection_resumeInternal_cold_3(v8);
      goto LABEL_66;
    }

    v22 = CMBaseObjectGetDerivedStorage();
    *cStr = 0;
    if (v22[30])
    {
      v9 = 0;
    }

    else
    {
      v23 = v22;
      v24 = v22[27];
      v25 = APTConnectionListenerCreate(0, 0xFFFFFFFFLL, httpconnection_handleListenerConnected, v24, httpconnection_handleListenerInvalidated, v24, v22[1], cStr);
      if (v25)
      {
        v9 = v25;
        httpconnection_resumeInternal_cold_4(v25);
      }

      else
      {
        v26 = APTConnectionListenerResume(*cStr);
        if (!v26)
        {
          if (v24)
          {
            CFRetain(v24);
          }

          v23[30] = *cStr;
          goto LABEL_39;
        }

        v9 = v26;
        httpconnection_resumeInternal_cold_5(v26);
      }
    }

    if (*cStr)
    {
      CFRelease(*cStr);
    }

    if (v9)
    {
      APSLogErrorAt();
      goto LABEL_66;
    }
  }

  else
  {
    v10 = CMBaseObjectGetDerivedStorage();
    v13 = v10;
    v33 = 0;
    cStr[0] = 0;
    if (*(v10 + 165) && (v11 = *(v10 + 192), v11))
    {
      SockAddrSetPort();
      v30 = SockAddrToString();
      if (v30)
      {
        v9 = v30;
        httpconnection_resumeInternal_cold_6(v30);
        goto LABEL_66;
      }

      if (gLogCategory_APTransportConnectionHTTP <= 40 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_startConnecting(APTransportConnectionRef)", 33554472, "[%{ptr}] Connecting to '%s'...", a1, cStr);
      }
    }

    else
    {
      if (*(v10 + 248))
      {
        LOBYTE(v34) = 0;
        v14 = *(v10 + 48);
        v15 = "NAN";
        v16 = "NAN (Secure)";
        if ((v14 & 0x10) == 0)
        {
          v16 = "Infra";
        }

        if ((v14 & 8) != 0)
        {
          v17 = 2;
        }

        else
        {
          v15 = v16;
          v17 = (v14 & 0x10) >> 2;
        }

        if ((v14 & 3) != 0)
        {
          v18 = "P2P";
        }

        else
        {
          v18 = v15;
        }

        if ((v14 & 3) != 0)
        {
          v19 = 1;
        }

        else
        {
          v19 = v17;
        }

        if (CFPrefs_GetInt64())
        {
          v20 = &v33;
        }

        else
        {
          v20 = 0;
        }

        Address = APTransportDeviceGetAddress(*(v13 + 248), v19, 0, cStr, 1024, &v34, v20);
        if (Address)
        {
          v9 = Address;
          httpconnection_resumeInternal_cold_7(Address);
        }

        else
        {
          if (gLogCategory_APTransportConnectionHTTP <= 40 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_startConnecting(APTransportConnectionRef)", 33554472, "[%{ptr}] Connecting to '%s' over %s...", a1, cStr, v18);
          }

          v27 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
          if (v27)
          {
            v28 = v27;
            v29 = *(v13 + 248);
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 0x40000000;
            v31[2] = __httpconnection_startConnecting_block_invoke;
            v31[3] = &__block_descriptor_tmp_74;
            v31[4] = v13;
            v32 = v33;
            APTransportDeviceResolveAddress(v29, v28, v34, a1, v31);
            CFRelease(v28);
            goto LABEL_39;
          }

          httpconnection_resumeInternal_cold_8();
          v9 = -6728;
        }

        goto LABEL_66;
      }

      if (gLogCategory_APTransportConnectionHTTP <= 90 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
      {
        httpconnection_resumeInternal_cold_9(a1, v11, v12);
      }
    }

    if (cStr[0])
    {
      v9 = httpconnection_connect(a1, cStr, 0, *(v13 + 192), 0);
      if (!v9)
      {
        goto LABEL_39;
      }

      goto LABEL_66;
    }

    httpconnection_resumeInternal_cold_10(&v34);
    v9 = v34;
    if (v34)
    {
LABEL_66:
      APSLogErrorAt();
      httpconnection_handleConnectionFailure(a1, v9);
    }
  }

LABEL_39:
  if (a1)
  {
    CFRelease(a1);
  }
}

void __httpconnection_startConnecting_block_invoke(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, CFTypeRef cf, uint64_t a6)
{
  if (a6)
  {
    if (gLogCategory_APTransportConnectionHTTP <= 90 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_startConnecting(APTransportConnectionRef)_block_invoke", 33554522, "[%{ptr}] Address resolution failed with error %#m", cf, a6);
    }
  }

  else if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_startConnecting(APTransportConnectionRef)_block_invoke", 33554482, "[%{ptr}] Address resolved to %@:%d, ifIndex: %u", cf, a2, a4, a3);
  }

  CFRetain(cf);
  if (a2)
  {
    CFRetain(a2);
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __httpconnection_startConnecting_block_invoke_2;
  block[3] = &__block_descriptor_tmp_72;
  block[4] = a2;
  block[5] = v12;
  block[6] = cf;
  v15 = a4;
  v16 = a3;
  v17 = *(a1 + 40);
  dispatch_async(v13, block);
}

void __httpconnection_startConnecting_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 32))
  {
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    if (!v2)
    {
      v2 = *(*(a1 + 40) + 192);
    }
  }

  else
  {
    CStringPtrAndBufferToFree = 0;
  }

  v4 = httpconnection_connect(*(a1 + 48), CStringPtrAndBufferToFree, *(a1 + 60), v2, *(a1 + 64));
  if (v4)
  {
    __httpconnection_startConnecting_block_invoke_2_cold_1(v4, (a1 + 48));
  }

  free(0);
  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(*(a1 + 48));
}

uint64_t httpconnection_handleConnectionEstablished(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *v31 = 0;
  if (*DerivedStorage)
  {
    v11 = 0;
LABEL_26:
    if ((a2 & 0x80000000) == 0 && close(a2) && *__error())
    {
      __error();
    }

    return v11;
  }

  v6 = DerivedStorage;
  if (gLogCategory_APTransportConnectionHTTP <= 30 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
  {
    httpconnection_handleConnectionEstablished_cold_1(v6, a1, v5);
  }

  InterfaceInfo = SocketGetInterfaceInfo();
  if (InterfaceInfo)
  {
    v11 = InterfaceInfo;
    httpconnection_handleConnectionEstablished_cold_2(InterfaceInfo);
    goto LABEL_26;
  }

  v10 = *(v6 + 48);
  if ((v10 & 1) != 0 || (v10 & 2) != 0)
  {
    v11 = 4294894976;
    if (gLogCategory_APTransportConnectionHTTP <= 90 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      httpconnection_handleConnectionEstablished_cold_3(a1, v8, v9);
    }

    goto LABEL_26;
  }

  if ((v10 & 8) != 0 || (v10 & 0x10) != 0)
  {
    v11 = 4294894976;
    if (gLogCategory_APTransportConnectionHTTP <= 90 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
    {
      httpconnection_handleConnectionEstablished_cold_12(a1, v8, v9);
    }

    goto LABEL_26;
  }

  *(v6 + 436) = v31[1];
  SocketSetQoS();
  v12 = *(v6 + 208);
  if (v12)
  {
    v32 = 0;
    v32 = CFUUIDGetUUIDBytes(v12);
    setsockopt(a2, 0xFFFF, 4360, &v32, 0x10u);
  }

  v31[0] = 28;
  v13 = getsockname(a2, (v6 + 136), v31);
  if (v13)
  {
    v11 = v13;
    httpconnection_handleConnectionEstablished_cold_4(v13);
    goto LABEL_26;
  }

  v31[0] = 28;
  v14 = getpeername(a2, (v6 + 164), v31);
  if (v14)
  {
    v11 = v14;
    httpconnection_handleConnectionEstablished_cold_5(v14);
    goto LABEL_26;
  }

  *(v6 + 192) = SockAddrGetPort();
  v15 = *(v6 + 165);
  if (v15 == 30)
  {
    v31[0] = 4;
    v16 = (v6 + 196);
    v17 = a2;
    v18 = 41;
    v19 = 125;
LABEL_31:
    if (!getsockopt(v17, v18, v19, v16, v31))
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v15 == 2)
  {
    v31[0] = 4;
    v16 = (v6 + 196);
    v17 = a2;
    v18 = 0;
    v19 = 25;
    goto LABEL_31;
  }

LABEL_32:
  *(v6 + 196) = 0;
LABEL_33:
  if (*(v6 + 256))
  {
    v20 = CMBaseObjectGetDerivedStorage();
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0;
    if (*v20)
    {
      v11 = 0;
    }

    else
    {
      v21 = v20;
      *&v33 = "RTSP/1.0";
      *(&v35 + 1) = httpconnection_handleEvent;
      *(&v34 + 1) = httpconnection_handleConnectionClosed;
      v22 = HTTPConnectionCreate();
      if (!v22)
      {
        v23 = *(v21 + 27);
        if (v23)
        {
          v23 = CFRetain(v23);
        }

        *(*(v21 + 33) + 384) = v23;
        if (*(*(v21 + 33) + 384))
        {
          HTTPConnectionSetDispatchQueue();
          if (!*(v21 + 14) || !*(v21 + 15))
          {
            goto LABEL_81;
          }

          if (gLogCategory_APTransportConnectionHTTP <= 30 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
          {
            httpconnection_handleConnectionEstablished_cold_7(a1, v24, v25);
          }

          v11 = httpconnection_configureEncryptionInternal(a1, *(v21 + 14), *(v21 + 15));
          v26 = *(v21 + 14);
          if (v26)
          {
            CFRelease(v26);
            *(v21 + 14) = 0;
          }

          v27 = *(v21 + 15);
          if (v27)
          {
            CFRelease(v27);
            *(v21 + 15) = 0;
          }

          if (v11)
          {
            httpconnection_handleConnectionEstablished_cold_8(v11);
          }

          else
          {
LABEL_81:
            if (*(v21 + 86))
            {
              HTTPConnectionSetTimeout();
            }

            v28 = HTTPConnectionStart();
            if (!v28)
            {
              if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpConnection_setupHTTPServer(APTransportConnectionRef, SocketRef)", 33554482, "[%{ptr}] HTTPServer connected to %##a (from %##a)", a1, v21 + 164, v21 + 136, *v31, v32);
              }

              return 0;
            }

            v11 = v28;
            httpconnection_handleConnectionEstablished_cold_9(v28);
          }
        }

        else
        {
          httpconnection_handleConnectionEstablished_cold_10();
          v11 = 4294894973;
        }

LABEL_78:
        APSLogErrorAt();
        return v11;
      }

      v11 = v22;
      httpconnection_handleConnectionEstablished_cold_6(v22);
    }

    if ((a2 & 0x80000000) == 0 && close(a2) && *__error())
    {
      __error();
    }

    if (v11)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v29 = httpConnection_setupHTTPClient(a1, a2);
    v11 = v29;
    if (v29)
    {
      httpconnection_handleConnectionEstablished_cold_11(v29);
    }
  }

  return v11;
}

uint64_t httpConnection_setupHTTPClient(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v18 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cStr = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v5 = SockAddrToString();
  if (v5)
  {
    v11 = v5;
    httpConnection_setupHTTPClient_cold_1(v5);
  }

  else
  {
    v6 = *&CFUUIDGetUUIDBytes(*(DerivedStorage + 128));
    ASPrintF(&cStr, "rtsp://%s/%llu", v17, bswap64(v6));
    if (cStr)
    {
      v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
      *(DerivedStorage + 280) = v7;
      if (v7)
      {
        v8 = HTTPClientCreateWithSocket();
        if (!v8)
        {
          HTTPClientSetDispatchQueue();
          APSLogUtilsGetHTTPClientCoreLogCategory();
          HTTPClientSetLogging();
          APSLogUtilsGetAsyncCnxLogCategory();
          HTTPClientSetConnectionLogging();
          CFObjectSetInt64();
          CFObjectSetValue();
          if (*(DerivedStorage + 352))
          {
            CFObjectSetValue();
          }

          if (*(DerivedStorage + 360))
          {
            CFObjectSetValue();
          }

          v9 = *(DerivedStorage + 216);
          if (v9)
          {
            v9 = CFRetain(v9);
          }

          *&v14 = v9;
          *(&v14 + 1) = httpconnection_httpClientInvalidated;
          HTTPClientSetDelegate();
          if (*(DerivedStorage + 344))
          {
            HTTPClientSetTimeout();
          }

          if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
          {
            ClientID = HTTPClientGetClientID();
            LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpConnection_setupHTTPClient(APTransportConnectionRef, SocketRef)", 33554482, "[%{ptr}] HTTPClient connected to %##a (from %##a) with CID 0x%08X", a1, DerivedStorage + 164, DerivedStorage + 136, ClientID);
          }

          APTTrafficMetricsConnectionFormed(*(DerivedStorage + 504));
          v11 = 0;
          goto LABEL_18;
        }

        v11 = v8;
        httpConnection_setupHTTPClient_cold_2(v8);
      }

      else
      {
        httpConnection_setupHTTPClient_cold_3();
        v11 = 4294894973;
      }
    }

    else
    {
      httpConnection_setupHTTPClient_cold_4();
      v11 = 4294960596;
    }
  }

  if ((v2 & 0x80000000) == 0 && close(v2) && *__error())
  {
    __error();
  }

LABEL_18:
  if (cStr)
  {
    free(cStr);
  }

  return v11;
}

uint64_t httpconnection_configureEncryptionInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0;
  theData = 0;
  if (gLogCategory_APTransportConnectionHTTP <= 30 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
  {
    httpconnection_configureEncryptionInternal_cold_1(a1, v6, v7);
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v9)
  {
    v13 = 4294954514;
LABEL_13:
    APSLogErrorAt();
    goto LABEL_14;
  }

  v10 = v9(a2, a3, 0, &theData, 0, &v16);
  if (v10)
  {
    v13 = v10;
    goto LABEL_13;
  }

  if (CFDataGetLength(theData) <= 31)
  {
    v13 = 4294894974;
    httpconnection_configureEncryptionInternal_cold_7();
    goto LABEL_14;
  }

  if (CFDataGetLength(v16) <= 31)
  {
    v13 = 4294894974;
    httpconnection_configureEncryptionInternal_cold_6();
    goto LABEL_14;
  }

  v11 = *(DerivedStorage + 264);
  if (*(DerivedStorage + 256))
  {
    if (v11)
    {
      CFDataGetBytePtr(v16);
      CFDataGetBytePtr(theData);
      v12 = NetTransportChaCha20Poly1305Configure();
      v13 = v12;
      if (v12)
      {
        httpconnection_configureEncryptionInternal_cold_2(v12);
      }

      else
      {
        HTTPConnectionSetTransportDelegate();
      }

      goto LABEL_14;
    }

    httpconnection_configureEncryptionInternal_cold_3();
LABEL_28:
    v13 = 4294894975;
    goto LABEL_14;
  }

  if (!v11)
  {
    httpconnection_configureEncryptionInternal_cold_5();
    goto LABEL_28;
  }

  CFDataGetBytePtr(theData);
  CFDataGetBytePtr(v16);
  v15 = NetTransportChaCha20Poly1305Configure();
  v13 = v15;
  if (v15)
  {
    httpconnection_configureEncryptionInternal_cold_4(v15);
  }

  else
  {
    HTTPClientSetTransportDelegate();
  }

LABEL_14:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v13;
}

void httpconnection_httpClientInvalidated(uint64_t a1, const void *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!*DerivedStorage)
      {
        v7 = DerivedStorage;
        if (*(DerivedStorage + 108) == 5)
        {
          if (gLogCategory_APTransportConnectionHTTP <= 90 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APTransportConnectionHTTP, "void httpconnection_httpClientInvalidated(OSStatus, void *)", 33554522, "[%{ptr}] Invalidate with reason %#m. Connection to %##a (from %##a) closed", v5, a1, v7 + 164, v7 + 136);
          }

          if (a1 == -6722)
          {
            valuePtr = -71881;
          }

          *(v7 + 108) = 6;
          APTTrafficMetricsConnectionClosed(*(v7 + 504));
          v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
          httpconnection_callEventCallbacks(v5, 6u, v8, 0, 1u, 0);
          if (v8)
          {
            CFRelease(v8);
          }
        }
      }

      CFRelease(v5);
    }

    CFRelease(a2);
  }

  else
  {
    httpconnection_httpClientInvalidated_cold_1();
  }
}

void httpconnection_handleListenerConnected(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v4 || (DerivedStorage = CMBaseObjectGetDerivedStorage(), *DerivedStorage))
    {
LABEL_8:
      if (gLogCategory_APTransportConnectionHTTP <= 50 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
      {
        httpconnection_handleListenerConnected_cold_3(v4);
      }

      goto LABEL_11;
    }

    v6 = DerivedStorage;
    APTConnectionListenerInvalidate(*(DerivedStorage + 240));
    v7 = *(v6 + 240);
    if (v7)
    {
      CFRelease(v7);
      *(v6 + 240) = 0;
    }

    v8 = httpconnection_handleConnectionEstablished(v4, a3);
    if (!v8)
    {
      httpconnection_handleListenerConnected_cold_2(v6, v4);
      LODWORD(a3) = -1;
      goto LABEL_8;
    }

    v9 = v8;
    httpconnection_handleListenerConnected_cold_1(v8);
    LODWORD(a3) = -1;
  }

  else
  {
    httpconnection_handleListenerConnected_cold_4();
    v4 = 0;
    v9 = 4294894974;
  }

  if (gLogCategory_APTransportConnectionHTTP <= 90)
  {
    httpconnection_handleListenerConnected_cold_5(gLogCategory_APTransportConnectionHTTP, v4, v9);
  }

  httpconnection_handleConnectionFailure(v4, v9);
LABEL_11:
  if ((a3 & 0x80000000) == 0 && close(a3) && *__error())
  {
    __error();
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

void httpconnection_handleListenerInvalidated(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void httpconnection_addEventCallbackInternal(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFDictionaryContainsKey(*(DerivedStorage + 96), a1[4]))
  {
    httpconnection_addEventCallbackInternal_cold_1();
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    if (Mutable)
    {
      v4 = Mutable;
      CFArrayAppendValue(Mutable, a1[1]);
      CFArrayAppendValue(v4, a1[2]);
      CFArrayAppendValue(v4, a1[3]);
      dispatch_retain(a1[3]);
      CFDictionarySetValue(*(DerivedStorage + 96), a1[4], v4);
      v5 = APSDispatchSyncTask();
      if (v5)
      {
        httpconnection_addEventCallbackInternal_cold_2(v5);
      }

      CFRelease(v4);
    }

    else
    {
      httpconnection_addEventCallbackInternal_cold_3();
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  dispatch_release(a1[3]);
}

void httpconnection_removeEventCallbackInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (TypedValue)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(TypedValue, 2);
    dispatch_release(ValueAtIndex);
    v5 = *(DerivedStorage + 96);
    v6 = a1[1];

    CFDictionaryRemoveValue(v5, v6);
  }
}

void httpconnection_deferConfigureEncryption(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 108) == 5)
  {
    httpconnection_configureEncryptionInternal(*a1, a1[1], a1[2]);
  }

  else
  {
    v3 = DerivedStorage;
    v4 = a1[1];
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    *(v3 + 112) = v4;
    v5 = a1[2];
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *(v3 + 120) = v5;
  }

  CFRelease(*a1);
  CFRelease(a1[1]);
  v6 = a1[2];

  CFRelease(v6);
}

uint64_t APTPackageLowPowerKeepAliveCreate(uint64_t a1, CFTypeRef *a2)
{
  v2 = APTPackageLowPowerKeepAliveCreateWithBBuf(a1, 0, a2);
  v3 = v2;
  if (v2)
  {
    APTPackageLowPowerKeepAliveCreate_cold_1(v2);
  }

  return v3;
}

uint64_t APTPackageLowPowerKeepAliveCreateWithBBuf(uint64_t a1, OpaqueCMBlockBuffer *a2, CFTypeRef *a3)
{
  cf = 0;
  APTransportPackageGetClassID(a1, a2);
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v9 = v5;
    APTPackageLowPowerKeepAliveCreateWithBBuf_cold_1(v5);
    return v9;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  if (a2)
  {
    if (CMBlockBufferGetDataLength(a2) != 4)
    {
      v9 = 4294894936;
      APTPackageLowPowerKeepAliveCreateWithBBuf_cold_2();
      return v9;
    }

    v8 = CMBlockBufferCopyDataBytes(a2, 0, 4uLL, v7);
    if (v8)
    {
      v9 = v8;
      APTPackageLowPowerKeepAliveCreateWithBBuf_cold_3(v8);
      return v9;
    }

    if (v7[1] != 4)
    {
      v9 = 4294894936;
      APTPackageLowPowerKeepAliveCreateWithBBuf_cold_4();
      return v9;
    }

    if ((*v7 & 0xDF) != 0)
    {
      v9 = 4294894936;
      APTPackageLowPowerKeepAliveCreateWithBBuf_cold_5();
      return v9;
    }
  }

  else
  {
    *DerivedStorage = 1024;
  }

  if (gLogCategory_APTPackageLowPowerKeepAlive <= 30 && (gLogCategory_APTPackageLowPowerKeepAlive != -1 || _LogCategory_Initialize()))
  {
    APTPackageLowPowerKeepAliveCreateWithBBuf_cold_6(&cf);
  }

  v9 = 0;
  *a3 = cf;
  return v9;
}

uint64_t lowPowerKeepAlivePackage_Finalize(uint64_t result)
{
  if (gLogCategory_APTPackageLowPowerKeepAlive <= 30)
  {
    v1 = result;
    if (gLogCategory_APTPackageLowPowerKeepAlive != -1)
    {
      return lowPowerKeepAlivePackage_Finalize_cold_1(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return lowPowerKeepAlivePackage_Finalize_cold_1(v1);
    }
  }

  return result;
}

__CFString *lowPowerKeepAlivePackage_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTPackageLowPowerKeepAlive %p>", a1);
  return Mutable;
}

uint64_t lowPowerKeepAlivePackage_SetMessageData(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return lowPowerKeepAlivePackage_SetMessageData_cold_3();
  }

  v5 = DerivedStorage;
  v6 = CFGetTypeID(a2);
  if (v6 != CMBlockBufferGetTypeID())
  {
    return lowPowerKeepAlivePackage_SetMessageData_cold_3();
  }

  if (CMBlockBufferGetDataLength(a2) != 2)
  {
    return lowPowerKeepAlivePackage_SetMessageData_cold_1();
  }

  result = CMBlockBufferCopyDataBytes(a2, 0, 2uLL, (v5 + 2));
  if (result)
  {
    return lowPowerKeepAlivePackage_SetMessageData_cold_2(result);
  }

  *(v5 + 2) = bswap32(*(v5 + 2)) >> 16;
  return result;
}

uint64_t lowPowerKeepAlivePackage_GetMessageType(uint64_t a1)
{
  if ((*CMBaseObjectGetDerivedStorage() & 0x20) != 0)
  {
    return 1819308912;
  }

  else
  {
    return 1819309931;
  }
}

_BYTE *lowPowerKeepAlivePackage_SetMessageType(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2 == 1819308912 || a2 == 1819309931)
  {
    *result = 32 * (a2 == 1819308912);
  }

  else
  {

    return APSLogErrorAt();
  }

  return result;
}

CMBlockBufferRef lowPowerKeepAlivePackage_CreateBBufRepresentation(uint64_t a1)
{
  destinationBuffer = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBlockBufferCreateWithMemoryBlock(0, 0, 4uLL, 0, 0, 0, 4uLL, 1u, &destinationBuffer);
  if (v2)
  {
    lowPowerKeepAlivePackage_CreateBBufRepresentation_cold_1(v2);
  }

  else
  {
    v3 = CMBlockBufferReplaceDataBytes(DerivedStorage, destinationBuffer, 0, 4uLL);
    if (v3)
    {
      lowPowerKeepAlivePackage_CreateBBufRepresentation_cold_2(v3);
    }
  }

  return destinationBuffer;
}

uint64_t APTransportConnectionTCPCreate(uint64_t a1, const void *a2, int a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v7 = a4;
    APTransportConnectionGetClassID(a1, a2);
    v10 = CMDerivedObjectCreate();
    v18 = v10;
    if (v10)
    {
      APTransportConnectionTCPCreate_cold_1(v10);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 56) = CFDictionaryGetInt64() != 0;
      if (v18)
      {
        *(DerivedStorage + 56) = 0;
        v18 = 0;
      }

      if (a2)
      {
        v12 = CFRetain(a2);
      }

      else
      {
        v12 = 0;
      }

      *(DerivedStorage + 16) = v12;
      *(DerivedStorage + 60) = a3;
      *(DerivedStorage + 128) = CFDictionaryGetInt64();
      if (v18)
      {
        *(DerivedStorage + 128) = 0;
        v18 = 0;
      }

      CFUUIDGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      *(DerivedStorage + 136) = TypedValue;
      if (TypedValue)
      {
        CFRetain(TypedValue);
      }

      SNPrintF(label, 128, "APTransportConnectionTCP.%{ptr}", 0);
      if (v7)
      {
        v14 = FigDispatchQueueCreateWithPriority();
      }

      else
      {
        v14 = dispatch_queue_create(label, 0);
      }

      *(DerivedStorage + 8) = v14;
      if (v14)
      {
        SNPrintF(label, 128, "APTransportConnectionTCP.callbackState.%{ptr}", 0);
        v15 = dispatch_queue_create(label, 0);
        *(DerivedStorage + 24) = v15;
        if (v15)
        {
          v16 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          *(DerivedStorage + 144) = v16;
          if (v16)
          {
            if (gLogCategory_APTransportConnectionTCP <= 50 && (gLogCategory_APTransportConnectionTCP != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APTransportConnectionTCP, "OSStatus APTransportConnectionTCPCreate(CFAllocatorRef, CFStringRef, APTransportConnectionFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554482, "[%{ptr}] APTransportConnectionTCP with name %@ created. Connection QoS: %d\n", 0, a2, *(DerivedStorage + 128));
            }

            APTTrafficMetricsCreate(&gLogCategory_APTransportConnectionTCP, 0, (DerivedStorage + 240), 0);
            *a6 = 0;
          }

          else
          {
            APTransportConnectionTCPCreate_cold_2(&v18);
          }
        }

        else
        {
          APTransportConnectionTCPCreate_cold_3(&v18);
        }
      }

      else
      {
        APTransportConnectionTCPCreate_cold_4(&v18);
      }
    }
  }

  else
  {
    APTransportConnectionTCPCreate_cold_5(&v18);
  }

  return v18;
}

uint64_t tcpconnection_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4[0] = a1;
  v4[1] = 1;
  dispatch_sync_f(*(DerivedStorage + 8), v4, tcpconnection_invalidateInternal);
  return 0;
}

void tcpconnection_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12[0] = a1;
  v12[1] = 0;
  tcpconnection_invalidateInternal(v12);
  v3 = DerivedStorage[30];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[30] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[17];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[17] = 0;
  }

  v6 = DerivedStorage[3];
  if (v6)
  {
    dispatch_release(v6);
    DerivedStorage[3] = 0;
  }

  v7 = DerivedStorage[6];
  if (v7)
  {
    dispatch_release(v7);
    DerivedStorage[6] = 0;
  }

  v8 = DerivedStorage[1];
  if (v8)
  {
    dispatch_release(v8);
    DerivedStorage[1] = 0;
  }

  v9 = DerivedStorage[18];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[18] = 0;
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

  if (gLogCategory_APTransportConnectionTCP <= 50 && (gLogCategory_APTransportConnectionTCP != -1 || _LogCategory_Initialize()))
  {
    tcpconnection_Finalize_cold_1(a1);
  }
}

__CFString *tcpconnection_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportConnectionTCP %p '%@'>", a1, *(DerivedStorage + 16));
  return Mutable;
}

uint64_t tcpconnection_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();

  return FigDispatchSyncCopyPropertyImplementation();
}

uint64_t tcpconnection_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v6 = *(CMBaseObjectGetDerivedStorage() + 8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __tcpconnection_SetProperty_block_invoke;
  v9[3] = &unk_278BC73A8;
  v9[4] = &v10;
  v9[5] = a1;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void tcpconnection_cleanUp(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  if (*(DerivedStorage + 56))
  {
    v3 = *(DerivedStorage + 168);
    if (v3)
    {
      APTConnectionListenerInvalidate(v3);
      v4 = *(v2 + 168);
      if (v4)
      {
        CFRelease(v4);
        *(v2 + 168) = 0;
      }
    }
  }

  v5 = *(v2 + 160);
  if (v5)
  {
    dispatch_source_cancel(*(v2 + 160));
    dispatch_release(v5);
    *(v2 + 160) = 0;
  }

  *(v2 + 176) = 6;
  *(v2 + 152) = 0;
}

void tcpconnection_clearCallbackState(uint64_t a1)
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

uint64_t tcpconnection_copyPropertyInternal(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    tcpconnection_copyPropertyInternal_cold_1();
    return 4294954511;
  }

  v9 = DerivedStorage;
  if (CFEqual(a2, @"LocalInterfaceName"))
  {
    if (*(v9 + 44) == 5)
    {
      SocketGetInterfaceInfo();
      v10 = CFStringCreateWithCString(a3, cStr, 0x8000100u);
      if (!v10)
      {
        v11 = 4294894973;
        tcpconnection_copyPropertyInternal_cold_3();
        return v11;
      }

LABEL_15:
      v11 = 0;
      *a4 = v10;
      return v11;
    }

    tcpconnection_copyPropertyInternal_cold_2();
    return 0;
  }

  if (CFEqual(a2, @"LocalNetworkIPAddress"))
  {
    if (*(v9 + 44) == 5)
    {
      v10 = CFDataCreate(a3, v9 + 64, 28);
      if (!v10)
      {
        v11 = 4294894973;
        tcpconnection_copyPropertyInternal_cold_5();
        return v11;
      }

      goto LABEL_15;
    }

    tcpconnection_copyPropertyInternal_cold_4();
    return 0;
  }

  if (CFEqual(a2, @"LocalNetworkPort"))
  {
    v12 = CMBaseObjectGetDerivedStorage();
    if (*(v12 + 56))
    {
      v13 = *(v12 + 168);
      if (v13)
      {
        *cStr = -1;
        ListeningPort = APTConnectionListenerGetListeningPort(v13, cStr);
        if (ListeningPort)
        {
          v11 = ListeningPort;
          tcpconnection_copyPropertyInternal_cold_6(ListeningPort);
        }

        else
        {
          v10 = CFNumberCreate(a3, kCFNumberIntType, cStr);
          if (v10)
          {
            goto LABEL_15;
          }

          v11 = 4294894973;
          tcpconnection_copyPropertyInternal_cold_7();
        }
      }

      else
      {
        APSLogErrorAt();
        v17 = APSSignalErrorAt();
        v11 = 0;
        if (!v17)
        {
          return v11;
        }

        v11 = v17;
      }
    }

    else
    {
      tcpconnection_copyPropertyInternal_cold_8();
      v11 = 4294894975;
    }

    APSLogErrorAt();
    return v11;
  }

  if (CFEqual(a2, @"RemoteNetworkIPAddress"))
  {
    *cStr = *(v9 + 92);
    *&cStr[12] = *(v9 + 104);
    v16 = APSNetworkAddressCreateWithSocketAddr();
    v11 = v16;
    if (v16)
    {
      tcpconnection_copyPropertyInternal_cold_9(v16);
    }

    else
    {
      APSNetworkAddressSetPort();
      *a4 = 0;
    }
  }

  else
  {
    if (gLogCategory_APTransportConnectionTCP <= 30 && (gLogCategory_APTransportConnectionTCP != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportConnectionTCP, "OSStatus tcpconnection_copyPropertyInternal(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "[%{ptr}] Unsupported copy property key %@", a1, a2);
    }

    return 4294954512;
  }

  return v11;
}

uint64_t tcpconnection_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 176) == 5)
  {
    return (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (TCP) %''@ Ports:%##a -> %##a%?s%?lu Parent:[%{ptr}]\n", a1, a4, DerivedStorage + 64, DerivedStorage + 92, *(DerivedStorage + 124) != 0, " IDX:", *(DerivedStorage + 124) != 0, *(DerivedStorage + 124), a2);
  }

  else
  {
    return (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (TCP) %''@ (Not Connected) Parent:[%{ptr}]\n", a1, a4, a2);
  }
}

uint64_t tcpconnection_Resume(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  dispatch_async_f(*(DerivedStorage + 8), a1, tcpconnection_resumeInternal);
  return 0;
}

uint64_t tcpconnection_AddEventCallback(const void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a4)
    {
      dispatch_retain(a4);
      if (a1)
      {
        CFRetain(a1);
      }

      APSDispatchAsyncFHelper();
      return 0;
    }

    else
    {
      v7 = 4294894974;
      tcpconnection_AddEventCallback_cold_1();
    }
  }

  else
  {
    v7 = 4294894974;
    tcpconnection_AddEventCallback_cold_2();
  }

  return v7;
}

uint64_t tcpconnection_RelinquishPackage(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t tcpconnection_SendPackage(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  CFRetain(a2);
  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t tcpconnection_ConfigureEncryption(const void *a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a2 && (v6 = CFGetTypeID(a2), v6 == APSKeyHolderGetTypeID()))
  {
    if (a3)
    {
      CFRetain(a1);
      CFRetain(a2);
      CFRetain(a3);
      APSDispatchAsyncFHelper();
      return 0;
    }

    else
    {
      v7 = 4294894974;
      tcpconnection_ConfigureEncryption_cold_1();
    }
  }

  else
  {
    v7 = 4294894974;
    tcpconnection_ConfigureEncryption_cold_2();
  }

  return v7;
}

void tcpconnection_resumeInternal(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    tcpconnection_resumeInternal_cold_1();
    goto LABEL_14;
  }

  if (*(DerivedStorage + 56))
  {
    v3 = CMBaseObjectGetDerivedStorage();
    *&v33.byte0 = 0;
    v4 = v3[18];
    if (v3[21])
    {
      v32 = 0;
    }

    else
    {
      v5 = v3;
      v6 = APTConnectionListenerCreate(0, 0xFFFFFFFFLL, tcpconnection_handleListenerConnected, v4, tcpconnection_handleListenerInvalidated, v4, v3[1], &v33);
      if (v6)
      {
        v32 = v6;
        tcpconnection_resumeInternal_cold_2(v6);
      }

      else
      {
        v7 = APTConnectionListenerResume(*&v33.byte0);
        if (!v7)
        {
          if (v4)
          {
            CFRetain(v4);
          }

          v5[21] = *&v33.byte0;
          goto LABEL_14;
        }

        v32 = v7;
        tcpconnection_resumeInternal_cold_3(v7);
      }
    }

    tcpconnection_resumeInternal_cold_4(v4, &v33, v32);
    goto LABEL_14;
  }

  if (!*(DerivedStorage + 93) || !*(DerivedStorage + 120))
  {
    if (gLogCategory_APTransportConnectionTCP <= 90 && (gLogCategory_APTransportConnectionTCP != -1 || _LogCategory_Initialize()))
    {
      tcpconnection_resumeInternal_cold_14(a1);
    }

    goto LABEL_14;
  }

  valuePtr = 0;
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = v8;
  v35 = 0;
  v36 = 0;
  if (*(v8 + 152))
  {
    goto LABEL_60;
  }

  v10 = socket(*(v8 + 93), 1, 6);
  if (v10 < 0)
  {
    if (!*__error())
    {
      v11 = 4294960596;
      valuePtr = -6700;
LABEL_21:
      tcpconnection_resumeInternal_cold_5(v11);
LABEL_62:
      *(v9 + 176) = 4;
      v31 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
      tcpconnection_callEventCallback(a1, 4u, v31);
      if (v31)
      {
        CFRelease(v31);
      }

      if ((v10 & 0x80000000) == 0 && close(v10) && *__error())
      {
        __error();
      }

      goto LABEL_68;
    }

    v11 = *__error();
    valuePtr = v11;
    if (v11)
    {
      goto LABEL_21;
    }
  }

  v12 = SocketSetNonBlocking();
  valuePtr = v12;
  if (v12)
  {
    tcpconnection_resumeInternal_cold_6(v12);
    goto LABEL_62;
  }

  if (*(v9 + 124))
  {
    v15 = *(v9 + 93);
    if (v15 == 2)
    {
      v16 = v10;
      v17 = 0;
      v18 = 25;
    }

    else
    {
      if (v15 != 30)
      {
        goto LABEL_31;
      }

      v16 = v10;
      v17 = 41;
      v18 = 125;
    }

    v19 = setsockopt(v16, v17, v18, (v9 + 124), 4u);
    valuePtr = v19;
    if (v19)
    {
      tcpconnection_resumeInternal_cold_7(v19);
      goto LABEL_62;
    }
  }

LABEL_31:
  v20 = *(v9 + 60);
  if ((v20 & 0x1B) != 0)
  {
    SocketSetP2P();
    v20 = *(v9 + 60);
  }

  if ((v20 & 0x20) != 0)
  {
    if (gLogCategory_APTransportConnectionTCP <= 30 && (gLogCategory_APTransportConnectionTCP != -1 || _LogCategory_Initialize()))
    {
      tcpconnection_resumeInternal_cold_8(a1, v13, v14);
    }

    *&v33.byte0 = 4;
    setsockopt(v10, 0xFFFF, 4225, &v33, 4u);
  }

  SocketSetQoS();
  v34 = 1;
  setsockopt(v10, 0xFFFF, 4130, &v34, 4u);
  v36 = 1;
  setsockopt(v10, 6, 1, &v36, 4u);
  SocketSetBufferSize();
  if (gLogCategory_APTransportConnectionTCP <= 40 && (gLogCategory_APTransportConnectionTCP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportConnectionTCP, "OSStatus tcpconnection_setupConnectorSocket(APTransportConnectionRef)", 33554472, "[%{ptr}] Connecting to %##a\n", a1, v9 + 92);
  }

  v21 = *(v9 + 136);
  if (v21)
  {
    v33 = CFUUIDGetUUIDBytes(v21);
    setsockopt(v10, 0xFFFF, 4360, &v33, 0x10u);
  }

  v22 = SocketConnect();
  valuePtr = v22;
  if (v22)
  {
    tcpconnection_resumeInternal_cold_9(v22);
    goto LABEL_62;
  }

  v23 = NetSocket_CreateWithNative();
  valuePtr = v23;
  if (v23)
  {
    tcpconnection_resumeInternal_cold_10(v23);
    goto LABEL_62;
  }

  v24 = *(v9 + 184);
  if (v24)
  {
    v25 = *(v9 + 192);
    if (v25)
    {
      v26 = tcpconnection_configureEncryptionInternal(a1, v24, v25);
      valuePtr = v26;
      v27 = *(v9 + 184);
      if (v27)
      {
        CFRelease(v27);
        *(v9 + 184) = 0;
      }

      v28 = *(v9 + 192);
      if (v28)
      {
        CFRelease(v28);
        *(v9 + 192) = 0;
      }

      if (v26)
      {
        tcpconnection_resumeInternal_cold_11(v26);
        goto LABEL_62;
      }
    }
  }

  Source = tcpconnection_setupDataSocketReadSource(a1);
  valuePtr = Source;
  if (Source)
  {
    tcpconnection_resumeInternal_cold_12(Source);
    goto LABEL_62;
  }

  v35 = 28;
  v30 = getsockname(v10, (v9 + 64), &v35);
  valuePtr = v30;
  if (gLogCategory_APTransportConnectionTCP <= 50 && (gLogCategory_APTransportConnectionTCP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportConnectionTCP, "OSStatus tcpconnection_setupConnectorSocket(APTransportConnectionRef)", 33554482, "[%{ptr}] connected to %##a (from %##a)%?s%?lu\n", a1, v9 + 92, v9 + 64, *(v9 + 124) != 0, " on bound interface index: ", *(v9 + 124) != 0, *(v9 + 124));
  }

  APTTrafficMetricsConnectionFormed(*(v9 + 240));
  if (v30)
  {
    v10 = -1;
    goto LABEL_62;
  }

LABEL_60:
  *(v9 + 176) = 5;
  tcpconnection_callEventCallback(a1, 5u, 0);
LABEL_68:
  if (valuePtr)
  {
    tcpconnection_resumeInternal_cold_13(valuePtr);
  }

LABEL_14:
  if (a1)
  {
    CFRelease(a1);
  }
}

void tcpconnection_handleListenerConnected(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  valuePtr = 0;
  if (!a2)
  {
    tcpconnection_handleListenerConnected_cold_4();
    v19 = 0;
    v5 = 0;
    DerivedStorage = 0;
    goto LABEL_30;
  }

  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    DerivedStorage = 0;
    goto LABEL_25;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
LABEL_25:
    v19 = 1;
    goto LABEL_30;
  }

  SocketSetQoS();
  v7 = *(DerivedStorage + 136);
  if (v7)
  {
    *v20 = CFUUIDGetUUIDBytes(v7);
    setsockopt(v4, 0xFFFF, 4360, v20, 0x10u);
  }

  v8 = NetSocket_CreateWithNative();
  valuePtr = v8;
  if (v8)
  {
    tcpconnection_handleListenerConnected_cold_1(v8);
  }

  else
  {
    v9 = *(DerivedStorage + 184);
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = *(DerivedStorage + 192);
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = tcpconnection_configureEncryptionInternal(v5, v9, v10);
    valuePtr = v11;
    v12 = *(DerivedStorage + 184);
    if (v12)
    {
      CFRelease(v12);
      *(DerivedStorage + 184) = 0;
    }

    v13 = *(DerivedStorage + 192);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 192) = 0;
    }

    if (v11)
    {
      tcpconnection_handleListenerConnected_cold_2(v11);
    }

    else
    {
LABEL_14:
      Source = tcpconnection_setupDataSocketReadSource(v5);
      valuePtr = Source;
      if (!Source)
      {
        APSNetworkAddressGetSocketAddr();
        *(DerivedStorage + 92) = *v20;
        *(DerivedStorage + 104) = *&v20[12];
        APTConnectionListenerInvalidate(*(DerivedStorage + 168));
        v15 = *(DerivedStorage + 168);
        if (v15)
        {
          CFRelease(v15);
          *(DerivedStorage + 168) = 0;
        }

LABEL_17:
        v16 = 0;
        v17 = 5;
        *(DerivedStorage + 176) = 5;
        v18 = "succeeded";
        if (!v5)
        {
          goto LABEL_18;
        }

        goto LABEL_39;
      }

      tcpconnection_handleListenerConnected_cold_3(Source);
    }
  }

  v19 = 0;
LABEL_30:
  if ((v4 & 0x80000000) == 0 && close(v4) && *__error())
  {
    __error();
  }

  if (DerivedStorage)
  {
    if (v19)
    {
      goto LABEL_17;
    }

    v17 = 4;
    *(DerivedStorage + 176) = 4;
    v16 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v18 = "failed";
  if (!v5)
  {
LABEL_18:
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_39:
  if (gLogCategory_APTransportConnectionTCP <= 50 && (gLogCategory_APTransportConnectionTCP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportConnectionTCP, "void tcpconnection_handleListenerConnected(APTConnectionListenerRef, void *, SocketRef, APSNetworkAddressRef)", 33554482, "[%{ptr}] Connection %s.", v5, v18);
  }

  tcpconnection_callEventCallback(v5, v17, v16);
  if (v16)
  {
LABEL_19:
    CFRelease(v16);
  }

LABEL_20:
  if (v5)
  {
    CFRelease(v5);
  }
}

void tcpconnection_handleListenerInvalidated(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t tcpconnection_configureEncryptionInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  theData = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    v9 = 4294954514;
LABEL_9:
    APSLogErrorAt();
    goto LABEL_10;
  }

  v7 = v6(a2, a3, 0, &theData, 0, &v12);
  if (v7)
  {
    v9 = v7;
    goto LABEL_9;
  }

  if (CFDataGetLength(theData) <= 31)
  {
    v9 = 4294894974;
    tcpconnection_configureEncryptionInternal_cold_4();
  }

  else if (CFDataGetLength(v12) <= 31)
  {
    v9 = 4294894974;
    tcpconnection_configureEncryptionInternal_cold_3();
  }

  else if (*(DerivedStorage + 56))
  {
    CFDataGetBytePtr(v12);
    CFDataGetBytePtr(theData);
    v8 = NetSocketChaCha20Poly1305Configure();
    v9 = v8;
    if (v8)
    {
      tcpconnection_configureEncryptionInternal_cold_1(v8);
    }
  }

  else
  {
    CFDataGetBytePtr(theData);
    CFDataGetBytePtr(v12);
    v11 = NetSocketChaCha20Poly1305Configure();
    v9 = v11;
    if (v11)
    {
      tcpconnection_configureEncryptionInternal_cold_2(v11);
    }
  }

LABEL_10:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v9;
}

uint64_t tcpconnection_setupDataSocketReadSource(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(*(DerivedStorage + 152) + 4);
  if ((v2 & 0x80000000) != 0)
  {
    tcpconnection_setupDataSocketReadSource_cold_3();
    return 4294894972;
  }

  else
  {
    v3 = DerivedStorage;
    v4 = dispatch_source_create(MEMORY[0x277D85D28], v2, 0, *(DerivedStorage + 8));
    *(v3 + 160) = v4;
    if (v4)
    {
      v5 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
      if (v5)
      {
        v6 = v5;
        v7 = *(v3 + 144);
        if (v7)
        {
          v7 = CFRetain(v7);
        }

        v9 = *(v3 + 152);
        v8 = *(v3 + 160);
        *v6 = v7;
        v6[1] = v9;
        dispatch_source_set_event_handler_f(v8, tcpconnection_receivedData);
        dispatch_source_set_cancel_handler_f(*(v3 + 160), tcpconnection_readSourceCancelledCallback);
        dispatch_set_context(*(v3 + 160), v6);
        dispatch_resume(*(v3 + 160));
        return 0;
      }

      else
      {
        v10 = 4294894973;
        tcpconnection_setupDataSocketReadSource_cold_1();
      }
    }

    else
    {
      v10 = 4294894973;
      tcpconnection_setupDataSocketReadSource_cold_2();
    }
  }

  return v10;
}

void tcpconnection_readSourceCancelledCallback(CFTypeRef *a1)
{
  NetSocket_Delete();
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void tcpconnection_deferCallEventCallback(const void **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    dispatch_sync_f(*(DerivedStorage + 48), a1, tcpconnection_callEventCallbackOnEventQueue);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *a1;
  if (*a1)
  {

    CFRelease(v4);
  }
}

uint64_t tcpconnection_callEventCallbackOnEventQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(a1 + 16);
  v4 = *(DerivedStorage + 32);
  v5 = *(DerivedStorage + 40);
  v6 = *(a1 + 8);

  return v5(v6, v3, v4);
}

void tcpconnection_addEventCallbackInternal(uint64_t a1)
{
  tcpconnection_setEventCallback(a1);
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    dispatch_release(v2);
  }
}

uint64_t tcpconnection_setEventCallback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 32) = *(a1 + 8);
  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 48) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(DerivedStorage + 48) = v4;
    dispatch_retain(v4);
  }

  return 0;
}

uint64_t tcpconnection_acquirePackageInternal(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    tcpconnection_acquirePackageInternal_cold_1();
    return 4294954511;
  }

  else
  {
    v3 = *(DerivedStorage + 224);
    v4 = CFGetAllocator(*a1);
    v5 = v3(v4, a1[1]);
    if (v5)
    {
      v7 = v5;
      tcpconnection_acquirePackageInternal_cold_2(v5);
    }

    else
    {
      if (gLogCategory_APTransportConnectionTCP <= 30 && (gLogCategory_APTransportConnectionTCP != -1 || _LogCategory_Initialize()))
      {
        tcpconnection_acquirePackageInternal_cold_3(a1, (a1 + 1), v6);
      }

      return 0;
    }
  }

  return v7;
}

uint64_t tcpconnection_acquirePackageWithMessageSizeInternal(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    tcpconnection_acquirePackageWithMessageSizeInternal_cold_1();
    return 4294954511;
  }

  else
  {
    v3 = *(DerivedStorage + 232);
    v4 = CFGetAllocator(*a1);
    v5 = v3(v4, a1[1], a1[2]);
    if (v5)
    {
      v6 = v5;
      tcpconnection_acquirePackageWithMessageSizeInternal_cold_2(v5);
    }

    else
    {
      if (gLogCategory_APTransportConnectionTCP <= 30 && (gLogCategory_APTransportConnectionTCP != -1 || _LogCategory_Initialize()))
      {
        tcpconnection_acquirePackageWithMessageSizeInternal_cold_3(a1, (a1 + 2), (a1 + 1));
      }

      return 0;
    }
  }

  return v6;
}

void tcpconnection_sendPackageInternal(CFTypeRef *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    tcpconnection_sendPackageInternal_cold_1();
    goto LABEL_18;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 176) != 5)
  {
    tcpconnection_sendPackageInternal_cold_2();
    goto LABEL_18;
  }

  v4 = a1[1];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v5 || (v6 = v5(v4)) == 0)
  {
    tcpconnection_sendPackageInternal_cold_6();
LABEL_18:
    v7 = 0;
    goto LABEL_19;
  }

  v7 = v6;
  IOVecArrayWithBlockBuffer = FigMakeIOVecArrayWithBlockBuffer();
  if (IOVecArrayWithBlockBuffer)
  {
    tcpconnection_sendPackageInternal_cold_3(IOVecArrayWithBlockBuffer);
  }

  else
  {
    DataLength = CMBlockBufferGetDataLength(v7);
    APTTrafficMetricsSendStarted(*(v3 + 240), DataLength);
    v10 = (*(*(v3 + 152) + 40))();
    if (!v10)
    {
      if (gLogCategory_APTransportConnectionTCP <= 10 && (gLogCategory_APTransportConnectionTCP != -1 || _LogCategory_Initialize()))
      {
        tcpconnection_sendPackageInternal_cold_5(a1 + 1);
      }

      APTTrafficMetricsSendFinished(*(v3 + 240), 0, DataLength);
      goto LABEL_11;
    }

    tcpconnection_sendPackageInternal_cold_4(v10);
  }

LABEL_19:
  tcpconnection_callEventCallback(*a1, 8u, a1[1]);
  if (v7)
  {
LABEL_11:
    CFRelease(v7);
  }

  v11 = a1[1];
  if (v11)
  {
    CFRelease(v11);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void tcpconnection_deferConfigureEncryption(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 176) == 5)
  {
    tcpconnection_configureEncryptionInternal(*a1, a1[1], a1[2]);
  }

  else
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 184);
    v5 = a1[1];
    *(v3 + 184) = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v6 = *(v3 + 192);
    v7 = a1[2];
    *(v3 + 192) = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  CFRelease(*a1);
  CFRelease(a1[1]);
  v8 = a1[2];

  CFRelease(v8);
}

uint64_t APBrowserDeviceQueryManagerGetInfoCreate(CFTypeRef *a1, uint64_t a2)
{
  v3 = *MEMORY[0x277CBECE8];
  APBrowserDeviceQueryManagerGetClassID(a1, a2);
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    v9 = v4;
    APBrowserDeviceQueryManagerGetInfoCreate_cold_1(v4);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = dispatch_queue_create("APBrowserDeviceQueryManagerGetInfo.queue", 0);
    DerivedStorage[1] = v6;
    if (v6)
    {
      v7 = dispatch_queue_create("APBrowserDeviceQueryManagerGetInfo.eventQueue", 0);
      *DerivedStorage = v7;
      if (v7)
      {
        Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        DerivedStorage[3] = Mutable;
        if (Mutable)
        {
          v9 = 0;
          *a1 = 0;
        }

        else
        {
          v9 = 4294895066;
          APBrowserDeviceQueryManagerGetInfoCreate_cold_2();
        }
      }

      else
      {
        v9 = 4294895066;
        APBrowserDeviceQueryManagerGetInfoCreate_cold_3();
      }
    }

    else
    {
      v9 = 4294895066;
      APBrowserDeviceQueryManagerGetInfoCreate_cold_4();
    }
  }

  return v9;
}

uint64_t queryManagerGetInfo_Invalidate(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage() + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __queryManagerGetInfo_Invalidate_block_invoke;
  v5[3] = &unk_278BC73D0;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void queryManagerGetInfo_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 24) = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t APAdvertiserInfoGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_1 != -1)
  {
    APAdvertiserInfoGetTypeID_cold_1();
  }

  return qword_281309B40;
}

uint64_t _APAdvertiserInfoClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APAdvertiserInfoCreateWithData(const __CFAllocator *a1, const __CFData *a2, void *a3)
{
  v3 = a2;
  v11 = 0;
  cf = 0;
  if (!a2)
  {
    APAdvertiserInfoCreateWithData_cold_5();
LABEL_13:
    v9 = 4294960591;
    goto LABEL_17;
  }

  if (!a3)
  {
    APAdvertiserInfoCreateWithData_cold_4();
    v3 = 0;
    goto LABEL_13;
  }

  v6 = APAdvertiserInfoCreate(a1, &cf);
  if (v6)
  {
    v9 = v6;
    APAdvertiserInfoCreateWithData_cold_1(v6);
    v3 = 0;
  }

  else
  {
    v3 = CFPropertyListCreateWithData(a1, v3, 2uLL, &v11, 0);
    if (v3)
    {
      if (v11 == 200)
      {
        v7 = cf;
        v8 = *(cf + 10);
        if (v8)
        {
          CFRelease(v8);
        }

        v9 = 0;
        v7[10] = CFRetain(v3);
        *a3 = v7;
        cf = 0;
LABEL_9:
        CFRelease(v3);
        return v9;
      }

      APAdvertiserInfoCreateWithData_cold_2();
      v9 = 4294960579;
    }

    else
    {
      APAdvertiserInfoCreateWithData_cold_3();
      v9 = 4294960534;
    }
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    goto LABEL_9;
  }

  return v9;
}

uint64_t APAdvertiserInfoSetProperty(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    APAdvertiserInfoSetProperty_cold_2();
    return 4294960591;
  }

  pthread_mutex_lock((a1 + 16));
  if (CFEqual(a3, @"featuresEx"))
  {
    v8 = _APAdvertiserInfoSetFeaturesEx(*(a1 + 80), a5);
  }

  else
  {
    if (!CFEqual(a3, @"features"))
    {
      v12 = *(a1 + 80);
      if (a5)
      {
        CFDictionarySetValue(v12, a3, a5);
        a5 = 0;
      }

      else
      {
        CFDictionaryRemoveValue(v12, a3);
      }

      goto LABEL_13;
    }

    v9 = *(a1 + 80);
    valuePtr = 0;
    if (a5)
    {
      v10 = CFGetTypeID(a5);
      if (v10 != CFNumberGetTypeID())
      {
        APAdvertiserInfoSetProperty_cold_1();
        a5 = 4294960591;
        goto LABEL_13;
      }

      CFNumberGetValue(a5, kCFNumberSInt64Type, &valuePtr);
      v11 = valuePtr;
    }

    else
    {
      v11 = 0;
    }

    v8 = _APAdvertiserInfoSetLegacyFeatures(v9, v11);
  }

  a5 = v8;
LABEL_13:
  pthread_mutex_unlock((a1 + 16));
  return a5;
}

uint64_t APAdvertiserInfoCreateData(uint64_t a1, CFDataRef *a2)
{
  pthread_mutex_lock((a1 + 16));
  if (a2)
  {
    v4 = CFGetAllocator(a1);
    Data = CFPropertyListCreateData(v4, *(a1 + 80), kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (Data)
    {
      v6 = 0;
      *a2 = Data;
    }

    else
    {
      APAdvertiserInfoCreateData_cold_1();
      v6 = 4294960534;
    }
  }

  else
  {
    APAdvertiserInfoCreateData_cold_2();
    v6 = 4294960591;
  }

  pthread_mutex_unlock((a1 + 16));
  return v6;
}

uint64_t APAdvertiserInfoCreateWithSidePlayDataAndDeviceName(uint64_t a1, uint64_t a2, const __CFString *a3, CFMutableDictionaryRef **a4)
{
  v18 = 0;
  v19 = 0;
  if (!a3)
  {
    APAdvertiserInfoCreateWithSidePlayDataAndDeviceName_cold_5();
    return 4294960591;
  }

  if (!a2)
  {
    APAdvertiserInfoCreateWithSidePlayDataAndDeviceName_cold_4();
    return 4294960591;
  }

  v6 = a3;
  APAdvertiserInfoCreate(a1, &v19);
  v7 = v19;
  if (!v19)
  {
    APAdvertiserInfoCreateWithSidePlayDataAndDeviceName_cold_3();
    return 4294960568;
  }

  _APAdvertiserInfoCopyAndRemoveMDNSLabelSuffix(v6, &v18);
  v8 = v18;
  if (v18)
  {
    v6 = v18;
  }

  CFDictionarySetValue(v7[10], @"deviceName", v6);
  cf = 0;
  value = 0;
  if (APSTXTRecordUtilsCopyCFStringFromTXTRecord())
  {
    APAdvertiserInfoCreateWithSidePlayDataAndDeviceName_cold_1();
    v10 = v22;
LABEL_37:
    v16 = value;
    if (!value)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  CFDictionarySetValue(v7[10], @"deviceID", value);
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  APSFeaturesFromTXTRecord = APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx(a2, @"f", 0, &cf);
  if (APSFeaturesFromTXTRecord == -6727)
  {
    v11 = APSFeaturesCreateFromLegacyFlags();
  }

  else
  {
    v10 = APSFeaturesFromTXTRecord;
    if (APSFeaturesFromTXTRecord)
    {
      goto LABEL_36;
    }

    v11 = cf;
  }

  _APAdvertiserInfoSetFeaturesEx(v7[10], v11);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v12 != -6727)
  {
    v10 = v12;
    if (v12)
    {
      goto LABEL_36;
    }

    CFDictionarySetValue(v7[10], @"manufacturer", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v13 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v13 != -6727)
  {
    v10 = v13;
    if (v13)
    {
      goto LABEL_36;
    }

    CFDictionarySetValue(v7[10], @"deviceModel", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v14 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v14 == -6727)
  {
    goto LABEL_27;
  }

  v10 = v14;
  if (v14)
  {
LABEL_36:
    APSLogErrorAt();
    goto LABEL_37;
  }

  CFDictionarySetValue(v7[10], @"serialNumber", value);
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

LABEL_27:
  v15 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v15 == -6727)
  {
    v10 = 0;
    goto LABEL_37;
  }

  v10 = v15;
  if (v15)
  {
    goto LABEL_36;
  }

  CFDictionarySetValue(v7[10], @"airPlayVersion", value);
  v16 = value;
  if (!value)
  {
    goto LABEL_40;
  }

  v10 = 0;
LABEL_38:
  CFRelease(v16);
LABEL_39:
  if (v10)
  {
    APAdvertiserInfoCreateWithSidePlayDataAndDeviceName_cold_2(v10, v7);
    if (!v8)
    {
      return v10;
    }

    goto LABEL_45;
  }

LABEL_40:
  if (gLogCategory_APAdvertiserInfo <= 30 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APAdvertiserInfo, "OSStatus APAdvertiserInfoCreateWithSidePlayDataAndDeviceName(CFAllocatorRef, CFDataRef, CFStringRef, APAdvertiserInfoRef *)", 33554462, "%###s did=%@, inSidePlayData=[%{ptr}] -> %@", "OSStatus APAdvertiserInfoCreateWithSidePlayDataAndDeviceName(CFAllocatorRef, CFDataRef, CFStringRef, APAdvertiserInfoRef *)", v6, a2, v7[10]);
  }

  v10 = 0;
  *a4 = v7;
  if (v8)
  {
LABEL_45:
    CFRelease(v8);
  }

  return v10;
}

uint64_t APAdvertiserInfoCopy(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (!a2)
  {
    APAdvertiserInfoCopy_cold_3();
    return 4294960591;
  }

  if (!*(a2 + 80))
  {
    APAdvertiserInfoCopy_cold_2();
    return 4294960591;
  }

  if (!a3)
  {
    APAdvertiserInfoCopy_cold_1();
    return 4294960591;
  }

  v5 = APAdvertiserInfoCreate(a1, &cf);
  if (v5)
  {
    APSLogErrorAt();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = cf;
    CFRelease(*(cf + 10));
    pthread_mutex_lock((a2 + 16));
    v6[10] = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(a2 + 80));
    pthread_mutex_unlock((a2 + 16));
    *a3 = v6;
  }

  return v5;
}

uint64_t APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType(uint64_t a1, int a2, uint64_t a3, CFDataRef *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x277D85DE8];
  if (gLogCategory_APAdvertiserInfo <= 30 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
  {
    APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType_cold_1(a1);
  }

  txtRecord = 0uLL;
  pthread_mutex_lock((a1 + 16));
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  if (!a4)
  {
    APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType_cold_7();
    goto LABEL_25;
  }

  if (a2 != 1)
  {
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(*(a1 + 80), @"correlationID");
  if (gLogCategory_APAdvertiserInfo > 30 || gLogCategory_APAdvertiserInfo == -1 && !_LogCategory_Initialize())
  {
    if (Value)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType_cold_2(Value, a1);
  if (!Value)
  {
LABEL_10:
    Value = CFDictionaryGetValue(*(a1 + 80), @"deviceID");
  }

LABEL_11:
  if (_APAdvertiserInfoAddStringToTXTRecord(Value, &txtRecord, "deviceid"))
  {
    APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType_cold_3();
    v14 = v16;
    goto LABEL_17;
  }

  if (v5)
  {
    TXTString = APSNANServiceTypeGetTXTString();
    if (TXTString)
    {
      v10 = _APAdvertiserInfoAddStringToTXTRecord(TXTString, &txtRecord, "nanST");
      if (v10)
      {
        v14 = v10;
        APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType_cold_4(v10);
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType_cold_5();
LABEL_25:
    v14 = 4294960591;
    goto LABEL_17;
  }

LABEL_15:
  BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
  Length = TXTRecordGetLength(&txtRecord);
  v13 = CFDataCreate(0, BytesPtr, Length);
  if (v13)
  {
    v14 = 0;
    *a4 = v13;
  }

  else
  {
    APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType_cold_6();
    v14 = 4294960568;
  }

LABEL_17:
  TXTRecordDeallocate(&txtRecord);
  pthread_mutex_unlock((a1 + 16));
  return v14;
}

uint64_t APAdvertiserInfoCopyRAOPData(uint64_t a1, CFDataRef *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v40 = 0;
  txtRecord = 0uLL;
  pthread_mutex_lock((a1 + 16));
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  if (a2)
  {
    CFDictionaryGetInt64Ranged();
    BitListString_Make();
    v4 = TXTRecordSetValue(&txtRecord, "cn", 0, value);
    v40 = v4;
    if (v4)
    {
      APAdvertiserInfoCopyRAOPData_cold_1(v4);
    }

    else if (CFDictionaryGetInt64() && (v5 = TXTRecordSetValue(&txtRecord, "da", 4u, "true"), (v40 = v5) != 0))
    {
      APAdvertiserInfoCopyRAOPData_cold_2(v5);
    }

    else
    {
      CFDictionaryGetInt64Ranged();
      BitListString_Make();
      v6 = TXTRecordSetValue(&txtRecord, "et", 0, value);
      v40 = v6;
      if (v6)
      {
        APAdvertiserInfoCopyRAOPData_cold_3(v6);
      }

      else
      {
        if (CFDictionaryGetValue(*(a1 + 80), @"featuresEx"))
        {
          LegacyFlags = APSFeaturesGetLegacyFlags();
          TXTRecordNumberCString = _APAdvertiserInfoGetTXTRecordNumberCString(LegacyFlags, value);
          TXTRecordSetValue(&txtRecord, "ft", TXTRecordNumberCString, value);
        }

        v9 = CFDictionaryGetValue(*(a1 + 80), @"firmwareVersion");
        if (v9 && (v10 = v9, CFStringGetLength(v9)) && (v11 = _APAdvertiserInfoAddStringToTXTRecord(v10, &txtRecord, "fv"), (v40 = v11) != 0))
        {
          APAdvertiserInfoCopyRAOPData_cold_4(v11);
        }

        else
        {
          Int64Ranged = CFDictionaryGetInt64Ranged();
          if (Int64Ranged && (v13 = snprintf(value, 0x100uLL, "0x%x", Int64Ranged), v14 = TXTRecordSetValue(&txtRecord, "sf", v13, value), (v40 = v14) != 0))
          {
            APAdvertiserInfoCopyRAOPData_cold_5(v14);
          }

          else if (CFDictionaryGetInt64Ranged() && (BitListString_Make(), v15 = TXTRecordSetValue(&txtRecord, "md", 0, value), (v40 = v15) != 0))
          {
            APAdvertiserInfoCopyRAOPData_cold_6(v15);
          }

          else
          {
            v16 = CFDictionaryGetValue(*(a1 + 80), @"deviceModel");
            if (v16 && (v17 = v16, CFStringGetLength(v16)) && (v18 = _APAdvertiserInfoAddStringToTXTRecord(v17, &txtRecord, "am"), (v40 = v18) != 0))
            {
              APAdvertiserInfoCopyRAOPData_cold_7(v18);
            }

            else if (CFDictionaryGetInt64() && (v19 = TXTRecordSetValue(&txtRecord, "pw", 4u, "true"), (v40 = v19) != 0))
            {
              APAdvertiserInfoCopyRAOPData_cold_8(v19);
            }

            else
            {
              v20 = CFDictionaryGetValue(*(a1 + 80), @"publicKey");
              if (v20 && (v21 = v20, CFStringGetLength(v20)) && (v22 = _APAdvertiserInfoAddStringToTXTRecord(v21, &txtRecord, "pk"), (v40 = v22) != 0))
              {
                APAdvertiserInfoCopyRAOPData_cold_9(v22);
              }

              else
              {
                v23 = CFDictionaryGetValue(*(a1 + 80), @"transportTypes");
                v24 = _APAdvertiserInfoAddStringToTXTRecord(v23, &txtRecord, "tp");
                v40 = v24;
                if (v24)
                {
                  APAdvertiserInfoCopyRAOPData_cold_10(v24);
                }

                else
                {
                  v25 = CFDictionaryGetValue(*(a1 + 80), @"airTunesProtocolVersion");
                  v26 = _APAdvertiserInfoAddStringToTXTRecord(v25, &txtRecord, "vn");
                  v40 = v26;
                  if (v26)
                  {
                    APAdvertiserInfoCopyRAOPData_cold_11(v26);
                  }

                  else
                  {
                    v27 = CFDictionaryGetValue(*(a1 + 80), @"airPlayVersion");
                    if (v27 && (v28 = v27, CFStringGetLength(v27)) && (v29 = _APAdvertiserInfoAddStringToTXTRecord(v28, &txtRecord, "vs"), (v40 = v29) != 0))
                    {
                      APAdvertiserInfoCopyRAOPData_cold_12(v29);
                    }

                    else
                    {
                      v30 = CFDictionaryGetValue(*(a1 + 80), @"OSVersion");
                      if (v30 && (v31 = v30, CFStringGetLength(v30)) && (v32 = _APAdvertiserInfoAddStringToTXTRecord(v31, &txtRecord, "ov"), (v40 = v32) != 0))
                      {
                        APAdvertiserInfoCopyRAOPData_cold_13(v32);
                      }

                      else
                      {
                        v33 = CFDictionaryGetInt64Ranged();
                        v34 = snprintf(value, 0x100uLL, "%u", v33);
                        v35 = TXTRecordSetValue(&txtRecord, "vv", v34, value);
                        v40 = v35;
                        if (v35)
                        {
                          APAdvertiserInfoCopyRAOPData_cold_14(v35);
                        }

                        else
                        {
                          BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
                          Length = TXTRecordGetLength(&txtRecord);
                          v38 = CFDataCreate(0, BytesPtr, Length);
                          if (v38)
                          {
                            *a2 = v38;
                          }

                          else
                          {
                            APAdvertiserInfoCopyRAOPData_cold_15();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    APAdvertiserInfoCopyRAOPData_cold_16();
  }

  TXTRecordDeallocate(&txtRecord);
  pthread_mutex_unlock((a1 + 16));
  return v40;
}

uint64_t APAdvertiserInfoCreateRAOPServiceName(uint64_t a1, __CFString **a2)
{
  pthread_mutex_lock((a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 80), @"deviceID");
  v5 = CFDictionaryGetValue(*(a1 + 80), @"deviceName");
  if (Value)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    APAdvertiserInfoCreateRAOPServiceName_cold_3();
LABEL_12:
    v11 = 4294960534;
    goto LABEL_8;
  }

  v7 = v5;
  Length = CFStringGetLength(Value);
  MutableCopy = CFStringCreateMutableCopy(0, Length, Value);
  if (!MutableCopy)
  {
    APAdvertiserInfoCreateRAOPServiceName_cold_2();
    v11 = 4294960568;
    goto LABEL_8;
  }

  v10 = MutableCopy;
  v13.length = CFStringGetLength(MutableCopy);
  v13.location = 0;
  if (CFStringFindAndReplace(v10, @":", &stru_284F5EFE0, v13, 0) != 5)
  {
    APAdvertiserInfoCreateRAOPServiceName_cold_1(v10);
    goto LABEL_12;
  }

  CFStringAppend(v10, @"@");
  CFStringAppend(v10, v7);
  v11 = 0;
  *a2 = v10;
LABEL_8:
  pthread_mutex_unlock((a1 + 16));
  return v11;
}

uint64_t APAdvertiserInfoDebugShow(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3)
  {
    APAdvertiserInfoDebugShow_cold_2();
    return 4294960591;
  }

  if (!a1)
  {
    APAdvertiserInfoDebugShow_cold_1();
    return 4294960591;
  }

  pthread_mutex_lock((a1 + 16));
  DataBuffer_AppendF(a3, "Advertiser Info: ");
  v6 = *(a1 + 80);
  if (a2)
  {
    v7 = CFCopyDescription(v6);
    DataBuffer_AppendF(a3, "%@", v7);
    pthread_mutex_unlock((a1 + 16));
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    Value = CFDictionaryGetValue(v6, @"deviceName");
    DataBuffer_AppendF(a3, "deviceName=%@", Value);
    pthread_mutex_unlock((a1 + 16));
  }

  return 0;
}

__CFDictionary *APAdvertiserInfoCreateTestInfoDictionary()
{
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (IsAppleInternalBuild())
  {
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"bluetoothAddress", @"AA:BB:CC:DD:EE:FF");
    CFDictionarySetValue(Mutable, @"deviceName", @"Name me, please");
    CFDictionarySetValue(Mutable, @"deviceID", @"FF:FF:FF:FF:FF:FF");
    _APAdvertiserInfoSetLegacyFeatures(Mutable, 0xCDE5A7FFFF7);
    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"deviceModel", @"AppleTV5,3");
    CFDictionarySetValue(Mutable, @"deviceEnclosureColor", @"1");
    CFDictionarySetValue(Mutable, @"manufacturer", @"Apple");
    CFDictionarySetValue(Mutable, @"serialNumber", @"ABCD7890WXYZ");
    CFDictionarySetValue(Mutable, @"password", *MEMORY[0x277CBED10]);
    APSVersionUtilsGetShortVersionLength();
    CFDictionarySetCString();
    CFDictionarySetValue(Mutable, @"OSVersion", @"7.2");
    v2 = CFStringCreateWithFormat(v0, 0, @"%u", 65537);
    CFDictionarySetValue(Mutable, @"airTunesProtocolVersion", v2);
    CFRelease(v2);
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"rfc2617DigestAuthKey", *MEMORY[0x277CBED28]);
    CFDictionarySetValue(Mutable, @"transportTypes", @"UDP");
    CFDictionarySetInt64();
  }

  else
  {
    APAdvertiserInfoCreateTestInfoDictionary_cold_1();
  }

  return Mutable;
}

CFStringRef APAdvertiserInfoCopyDescription(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = CFCopyDescription(*(a1 + 80));
  pthread_mutex_unlock((a1 + 16));
  return v2;
}

uint64_t APBonjourBrowserGetTypeID(uint64_t a1, uint64_t a2)
{
  if (gAPBonjourBrowserInitOnce != -1)
  {
    APBonjourBrowserGetTypeID_cold_1();
  }

  return gAPBonjourBrowserTypeID;
}

uint64_t _APBonjourBrowserGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPBonjourBrowserTypeID = result;
  return result;
}

uint64_t APBonjourBrowserCreate(uint64_t a1, uint64_t a2, void *a3)
{
  if (gAPBonjourBrowserInitOnce != -1)
  {
    APBonjourBrowserGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v23 = 4294895086;
    APBonjourBrowserCreate_cold_15();
    return v23;
  }

  v6 = Instance;
  Instance[13] = 0u;
  Instance[14] = 0u;
  Instance[11] = 0u;
  Instance[12] = 0u;
  Instance[9] = 0u;
  Instance[10] = 0u;
  Instance[7] = 0u;
  Instance[8] = 0u;
  Instance[5] = 0u;
  Instance[6] = 0u;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[1] = 0u;
  Instance[2] = 0u;
  v7 = dispatch_queue_create("APBonjourBrowserInternalQueue", 0);
  *(v6 + 2) = v7;
  if (!v7)
  {
    v23 = 4294895086;
    APBonjourBrowserCreate_cold_14();
    goto LABEL_64;
  }

  v8 = dispatch_queue_create("APBonjourBrowserEventQueue", 0);
  *(v6 + 3) = v8;
  if (!v8)
  {
    v23 = 4294895086;
    APBonjourBrowserCreate_cold_13();
    goto LABEL_64;
  }

  if (a2)
  {
    Int64 = CFDictionaryGetInt64();
    *(v6 + 114) = CFDictionaryGetInt64() != 0;
    *(v6 + 129) = CFDictionaryGetInt64() != 0;
    *(v6 + 160) = CFDictionaryGetInt64() != 0;
    *(v6 + 208) = CFDictionaryGetInt64() != 0;
    *(v6 + 176) = CFDictionaryGetInt64() != 0;
    *(v6 + 192) = CFDictionaryGetInt64() != 0;
    v10 = CFDictionaryGetInt64() == 0;
    *(v6 + 210) = CFDictionaryGetInt64() != 0;
    LOBYTE(a2) = Int64 == 1;
  }

  else
  {
    v10 = 1;
  }

  if (gLogCategory_APBonjourBrowser <= 50 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
  {
    APBonjourBrowserCreate_cold_2();
  }

  v11 = @"SidePlay";
  v12 = "_sideplay._tcp.";
  if (a2)
  {
    v13 = 0x800000000000000;
  }

  else
  {
    v12 = "_airplay._tcp.";
    v11 = @"AirPlay";
    v13 = 0;
  }

  *(v6 + 10) = v11;
  *(v6 + 8) = v12;
  *(v6 + 9) = "local.";
  *(v6 + 11) = v13;
  v14 = BonjourBrowser_CreateEx();
  if (v14)
  {
    v23 = v14;
    APBonjourBrowserCreate_cold_3(v14);
    goto LABEL_64;
  }

  BonjourBrowser_SetDispatchQueue();
  BonjourBrowser_SetEventHandler();
  if (!v10)
  {
    v15 = BonjourBrowser_CreateEx();
    if (v15)
    {
      v23 = v15;
      APBonjourBrowserCreate_cold_4(v15);
      goto LABEL_64;
    }

    BonjourBrowser_SetDispatchQueue();
    BonjourBrowser_SetEventHandler();
  }

  if (*(v6 + 129))
  {
    v16 = BonjourBrowser_CreateEx();
    if (v16)
    {
      v23 = v16;
      APBonjourBrowserCreate_cold_5(v16);
      goto LABEL_64;
    }

    BonjourBrowser_SetDispatchQueue();
    BonjourBrowser_SetEventHandler();
  }

  if (*(v6 + 114))
  {
    v17 = BonjourBrowser_CreateEx();
    if (v17)
    {
      v23 = v17;
      APBonjourBrowserCreate_cold_6(v17);
      goto LABEL_64;
    }

    BonjourBrowser_SetDispatchQueue();
    BonjourBrowser_SetEventHandler();
    if (*(v6 + 129))
    {
      v18 = BonjourBrowser_CreateEx();
      if (v18)
      {
        v23 = v18;
        APBonjourBrowserCreate_cold_7(v18);
        goto LABEL_64;
      }

      BonjourBrowser_SetDispatchQueue();
      BonjourBrowser_SetEventHandler();
    }
  }

  if (*(v6 + 160))
  {
    v19 = BonjourBrowser_CreateEx();
    if (v19)
    {
      v23 = v19;
      APBonjourBrowserCreate_cold_8(v19);
      goto LABEL_64;
    }

    BonjourBrowser_SetDispatchQueue();
    BonjourBrowser_SetEventHandler();
  }

  if (*(v6 + 176))
  {
    v20 = BonjourBrowser_CreateEx();
    if (v20)
    {
      v23 = v20;
      APBonjourBrowserCreate_cold_9(v20);
      goto LABEL_64;
    }

    BonjourBrowser_SetDispatchQueue();
    BonjourBrowser_SetEventHandler();
    BonjourBrowser_SetNANControlFlags();
    if (!APSSettingsGetInt64())
    {
      BonjourBrowser_SetNANDiscoveryMode();
    }
  }

  if (*(v6 + 192))
  {
    v21 = BonjourBrowser_CreateEx();
    if (!v21)
    {
      BonjourBrowser_SetDispatchQueue();
      BonjourBrowser_SetEventHandler();
      goto LABEL_37;
    }

    v23 = v21;
    APBonjourBrowserCreate_cold_10(v21);
LABEL_64:
    CFRelease(v6);
    return v23;
  }

LABEL_37:
  *(v6 + 209) = 1;
  v25 = *(v6 + 210);
  if (IsAppleInternalBuild())
  {
    APSSettingsGetBooleanIfPresent();
  }

  if (gLogCategory_APBonjourBrowser <= 30 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
  {
    APBonjourBrowserCreate_cold_11();
  }

  if (v25 && !*(v6 + 29))
  {
    if (gLogCategory_APBonjourBrowser <= 50 && (gLogCategory_APBonjourBrowser != -1 || _LogCategory_Initialize()))
    {
      APBonjourBrowserCreate_cold_12(v6 + 10);
    }

    v22 = objc_alloc_init(APBonjourCacheManager);
    *(v6 + 29) = v22;
    [(APBonjourCacheManager *)v22 setDispatchQueue:*(v6 + 2)];
    [(APBonjourCacheManager *)v22 setServiceType:*(v6 + 10)];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = ___APBonjourBrowserCacheEnsureStarted_block_invoke;
    v28[3] = &unk_278BC7690;
    v28[4] = v22;
    v28[5] = v6;
    [(APBonjourCacheManager *)v22 setReportDeviceFoundHandler:v28];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___APBonjourBrowserCacheEnsureStarted_block_invoke_2;
    v27[3] = &unk_278BC7690;
    v27[4] = v22;
    v27[5] = v6;
    [(APBonjourCacheManager *)v22 setReportDeviceLostHandler:v27];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = ___APBonjourBrowserCacheEnsureStarted_block_invoke_3;
    v26[3] = &unk_278BC76B8;
    v26[4] = v22;
    v26[5] = v6;
    [(APBonjourCacheManager *)v22 activateWithCompletion:v26];
  }

  v23 = 0;
  *a3 = v6;
  return v23;
}

uint64_t APBonjourBrowserInvalidate(uint64_t a1)
{
  v2 = a1;
  v3 = 0;
  dispatch_sync_f(*(a1 + 16), &v2, _APBonjourBrowserInvalidate);
  return v3;
}

uint64_t APBonjourBrowserGetMode(uint64_t a1, _WORD *a2)
{
  v4 = a1;
  v5 = 0;
  dispatch_sync_f(*(a1 + 16), &v4, _APBonjourBrowserGetMode);
  *a2 = v5;
  return HIDWORD(v5);
}

uint64_t APBonjourBrowserSetWiFiSystemReady(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __APBonjourBrowserSetWiFiSystemReady_block_invoke;
  v4[3] = &unk_278BC7668;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t APBonjourBrowserSetAWDLSystemReady(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __APBonjourBrowserSetAWDLSystemReady_block_invoke;
  v4[3] = &unk_278BC7668;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t APBonjourBrowserSetEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  v5 = 0;
  dispatch_sync_f(*(a1 + 16), v4, _APBonjourBrowserSetEventHandler);
  return v5;
}

uint64_t APBonjourBrowserReconfirmDevice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  context[3] = a4;
  v6 = 0;
  context[0] = a1;
  context[1] = a2;
  context[2] = a3;
  dispatch_sync_f(*(a1 + 16), context, _APBonjourBrowserReconfirmDevice);
  return v6;
}

uint64_t APBonjourBrowserTriggerWoLCachingIfNeeded(void *a1, const void *a2, const void *a3)
{
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  return APSDispatchAsyncFHelper();
}

void _APBonjourBrowserTriggerWoLCachingIfNeeded(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 232);
  if (!v3)
  {
    return;
  }

  v5 = a1[1];
  v4 = a1[2];
  v6 = *(v2 + 32);
  if (v6)
  {
    do
    {
      v7 = v6;
      v6 = *(v6 + 24);
    }

    while (v6);
    if (!*(v2 + 211) && *v7 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (!*(v2 + 211))
  {
LABEL_13:
    if (v5)
    {
      if (v4)
      {
        if (*(v2 + 40))
        {
          [v3 cacheHKPeerIfNeeded:v5 pairedPeerInfo:v4];
        }

        else
        {
          _APBonjourBrowserTriggerWoLCachingIfNeeded_cold_1();
        }
      }

      else
      {
        _APBonjourBrowserTriggerWoLCachingIfNeeded_cold_2();
      }

      CFRelease(v2);
    }

    else
    {
      _APBonjourBrowserTriggerWoLCachingIfNeeded_cold_3();
      v5 = v2;
    }

LABEL_18:
    CFRelease(v5);
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  CFRelease(v2);
  if (v5)
  {
    goto LABEL_18;
  }

  if (!v4)
  {
    return;
  }

LABEL_7:

  CFRelease(v4);
}

uint64_t APBonjourBrowserTickleDetailedMode(uint64_t a1)
{
  v2 = a1;
  v3 = 0;
  dispatch_sync_f(*(a1 + 16), &v2, _APBonjourBrowserTickleDetailedMode);
  return v3;
}

uint64_t APBonjourBrowserCopyInterfaceName(uint64_t a1, uint64_t a2)
{
  context[1] = a2;
  v4 = 0;
  context[0] = a1;
  dispatch_sync_f(*(a1 + 16), context, _APBonjourBrowserCopyInterfaceName);
  return v4;
}

uint64_t APBonjourBrowserSetInterfaceName(uint64_t a1, uint64_t a2)
{
  context[1] = a2;
  v4 = 0;
  context[0] = a1;
  dispatch_sync_f(*(a1 + 16), context, _APBonjourBrowserSetInterfaceName);
  return v4;
}

uint64_t _APBonjourBrowserStopBrowsing(void *a1, _DWORD *a2)
{
  v5 = 0;
  _APBonjourBrowserStopBonjourBrowser(a1, a1[17], a1[8], "local browsing", a1 + 130, &v5);
  _APBonjourBrowserStopBonjourBrowser(a1, a1[12], a1[8], "general browsing", a1 + 113, &v5);
  _APBonjourBrowserStopBonjourBrowser(a1, a1[13], "_airplay-alt._tcp.", "browsing", a1 + 112, &v5);
  _APBonjourBrowserStopBonjourBrowser(a1, a1[19], "_raop._tcp.", "local browsing", a1 + 144, &v5);
  result = _APBonjourBrowserStopBonjourBrowser(a1, a1[15], "_raop._tcp.", "general browsing", a1 + 128, &v5);
  if (a2)
  {
    *a2 += v5;
  }

  return result;
}

uint64_t _APBonjourBrowserStopBrowsingOpenNAN(uint64_t result, _DWORD *a2)
{
  v3 = *(result + 177);
  if (*(result + 177))
  {
    v4 = result;
    *(result + 177) = 0;
    result = BonjourBrowser_Stop();
    if (gLogCategory_APBonjourBrowser <= 40)
    {
      if (gLogCategory_APBonjourBrowser != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = _APBonjourBrowserStopBrowsingOpenNAN_cold_1(v4, v5, v6);
      }
    }

    v3 = 1;
  }

  if (a2)
  {
    *a2 += v3;
  }

  return result;
}

uint64_t _APBonjourBrowserStopBonjourBrowser(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, _DWORD *a6)
{
  if (*a5)
  {
    v9 = result;
    *a5 = 0;
    result = BonjourBrowser_Stop();
    ++*a6;
    if (gLogCategory_APBonjourBrowser <= 40)
    {
      if (gLogCategory_APBonjourBrowser != -1)
      {
        return LogPrintF(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserStopBonjourBrowser(APBonjourBrowserRef, BonjourBrowserRef, const char *, const char *, Boolean *, uint32_t *)", 33554472, "[%{ptr}] Stopped %s for %s\n", v9, a4, a3);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF(&gLogCategory_APBonjourBrowser, "void _APBonjourBrowserStopBonjourBrowser(APBonjourBrowserRef, BonjourBrowserRef, const char *, const char *, Boolean *, uint32_t *)", 33554472, "[%{ptr}] Stopped %s for %s\n", v9, a4, a3);
      }
    }
  }

  return result;
}

uint64_t _APBonjourBrowserHandleStopEvent(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    _APBonjourBrowserHandleStopEvent_cold_2();
    return 4294895084;
  }

  v2 = *v1;
  if (v2 > 4 || v2 == 1)
  {
    APSLogErrorAt();
    return 4294895084;
  }

  v4 = *(v1 + 5);
  if (!v4)
  {
    _APBonjourBrowserHandleStopEvent_cold_1();
    return 4294895084;
  }

  *(v1 + 5) = v4 - 1;

  return _APBonjourBrowserProcessOperationQueue(a1);
}

uint64_t _APBonjourBrowserHandleRestartedEvent(const void *a1, const void *a2)
{
  v8 = 0;
  v4 = CFGetAllocator(a1);
  v5 = _APBonjourBrowserCreateEventInfoDictionary(v4, 0, a2, &v8);
  if (v5)
  {
    APSLogErrorAt();
    v6 = v8;
    if (!v8)
    {
      return v5;
    }

    goto LABEL_3;
  }

  v6 = v8;
  _APBonjourBrowserDispatchEvent(a1, 4u, v8);
  if (v6)
  {
LABEL_3:
    CFRelease(v6);
  }

  return v5;
}

void _APBonjourBrowserFinalize(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }

  if (*(a1 + 96))
  {
    BonjourBrowser_Stop();
    CFRelease(*(a1 + 96));
    *(a1 + 96) = 0;
  }

  if (*(a1 + 104))
  {
    BonjourBrowser_Stop();
    CFRelease(*(a1 + 104));
    *(a1 + 104) = 0;
  }

  if (*(a1 + 136))
  {
    BonjourBrowser_Stop();
    CFRelease(*(a1 + 136));
    *(a1 + 136) = 0;
  }

  if (*(a1 + 120))
  {
    BonjourBrowser_Stop();
    CFRelease(*(a1 + 120));
    *(a1 + 120) = 0;
  }

  if (*(a1 + 152))
  {
    BonjourBrowser_Stop();
    CFRelease(*(a1 + 152));
    *(a1 + 152) = 0;
  }

  if (*(a1 + 168))
  {
    BonjourBrowser_Stop();
    CFRelease(*(a1 + 168));
    *(a1 + 168) = 0;
  }

  if (*(a1 + 184))
  {
    BonjourBrowser_Stop();
    CFRelease(*(a1 + 184));
    *(a1 + 184) = 0;
  }

  if (*(a1 + 200))
  {
    BonjourBrowser_Stop();
    CFRelease(*(a1 + 200));
    *(a1 + 200) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 24) = 0;
  }
}

const char *OUTLINED_FUNCTION_22(unsigned __int16 *a1)
{
  v2 = *a1;

  return _APBonjourBrowserGetStringForMode(v2);
}

uint64_t APTransportConnectionUDPNWCreate(uint64_t a1, const void *a2, int a3, uint64_t a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  v56 = *MEMORY[0x277D85DE8];
  v53 = 0;
  cf = 0;
  if (!a6)
  {
    APTransportConnectionUDPNWCreate_cold_25(&v53);
    goto LABEL_99;
  }

  v8 = a4;
  APTransportConnectionGetClassID(a1, a2);
  v11 = CMDerivedObjectCreate();
  v53 = v11;
  if (v11)
  {
    APTransportConnectionUDPNWCreate_cold_1(v11);
    goto LABEL_99;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], a5);
    *(DerivedStorage + 24) = Copy;
    if (!Copy)
    {
      APTransportConnectionUDPNWCreate_cold_2();
      goto LABEL_99;
    }
  }

  else
  {
    Empty = CFDictionaryGetEmpty();
    *(DerivedStorage + 24) = CFRetain(Empty);
  }

  *(DerivedStorage + 176) = CFDictionaryGetInt64() != 0;
  if (v53)
  {
    *(DerivedStorage + 176) = 0;
    v53 = 0;
  }

  *(DerivedStorage + 184) = v8;
  *(DerivedStorage + 188) = CFDictionaryGetInt64();
  if (v53)
  {
    *(DerivedStorage + 188) = 0;
    v53 = 0;
  }

  *(DerivedStorage + 192) = CFDictionaryGetInt64Ranged();
  *(DerivedStorage + 196) = CFDictionaryGetInt64Ranged();
  CFUUIDGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  *(DerivedStorage + 200) = TypedValue;
  if (TypedValue)
  {
    CFRetain(TypedValue);
  }

  APSRealTimeReadableRingBufferGetTypeID();
  v16 = CFDictionaryGetTypedValue();
  *(DerivedStorage + 392) = v16;
  if (v16)
  {
    CFRetain(v16);
  }

  *(DerivedStorage + 16) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  *(DerivedStorage + 180) = a3;
  v17 = FigSimpleMutexCreate();
  *(DerivedStorage + 8) = v17;
  if (!v17)
  {
    APTransportConnectionUDPNWCreate_cold_24();
    goto LABEL_99;
  }

  v18 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 208) = v18;
  if (!v18)
  {
    APTransportConnectionUDPNWCreate_cold_23(&v53);
    goto LABEL_99;
  }

  v19 = APTransportConnectionCopyNWContextForType(*(DerivedStorage + 192));
  *(DerivedStorage + 32) = v19;
  if (!v19)
  {
    APTransportConnectionUDPNWCreate_cold_22(&v53);
    goto LABEL_99;
  }

  SNPrintF(v54, 128, "APTransportConnectionUDPNW.network.%{ptr}", cf);
  if (*(DerivedStorage + 192) != 3)
  {
    initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
    v37 = dispatch_queue_create(v54, initially_inactive);
    *(DerivedStorage + 40) = v37;
    if (v37)
    {
      nw_queue_context_target_dispatch_queue();
      dispatch_activate(*(DerivedStorage + 40));
      goto LABEL_51;
    }

    APTransportConnectionUDPNWCreate_cold_3(&v53);
LABEL_99:
    if (cf)
    {
      CFRelease(cf);
    }

    return v53;
  }

  v20 = FigSimpleMutexCreate();
  if (!v20)
  {
    APTransportConnectionUDPNWCreate_cold_21(&v53);
    goto LABEL_99;
  }

  v21 = v20;
  v22 = APSWrapperCreate();
  v53 = v22;
  if (v22)
  {
    APTransportConnectionUDPNWCreate_cold_4(v22, v21);
    goto LABEL_99;
  }

  v23 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  if (!v23)
  {
    APTransportConnectionUDPNWCreate_cold_20();
    goto LABEL_99;
  }

  v24 = v23;
  *v23 = 0;
  v25 = APSWrapperCreate();
  v53 = v25;
  if (v25)
  {
    APTransportConnectionUDPNWCreate_cold_5(v25, v24);
    goto LABEL_99;
  }

  if (CFDictionaryGetInt64())
  {
    if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
    {
      APTransportConnectionUDPNWCreate_cold_6(&cf);
    }

    atomic_fetch_or_explicit(APSWrapperGetValue(), 2u, memory_order_relaxed);
  }

  v26 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 40) = v26;
  if (!v26)
  {
    APTransportConnectionUDPNWCreate_cold_19(&v53);
    goto LABEL_99;
  }

  v27 = cf;
  v28 = CMBaseObjectGetDerivedStorage();
  memset(label, 0, sizeof(label));
  if (!v27)
  {
    v51 = -72322;
    APTransportConnectionUDPNWCreate_cold_18();
LABEL_98:
    v53 = v51;
    APSLogErrorAt();
    v53 = APSSignalErrorAt();
    goto LABEL_99;
  }

  v29 = v28;
  if (!*(v28 + 32))
  {
    v51 = -72322;
    APTransportConnectionUDPNWCreate_cold_17();
    goto LABEL_98;
  }

  if (gAPTransportConnectionUDPNWInlineInactivityMonitorInitOnce != -1)
  {
    APTransportConnectionUDPNWCreate_cold_7();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APTransportConnectionUDPNWCreate_cold_16();
LABEL_97:
    v51 = -6728;
    goto LABEL_98;
  }

  v31 = Instance;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 16) = 0;
  atomic_store(0, (Instance + 17));
  *(Instance + 24) = v27;
  v32 = *(v29 + 208);
  if (v32)
  {
    v32 = CFRetain(v32);
  }

  v31[4] = v32;
  SNPrintF(label, 128, "APTransportConnectionUDPNWInlineInactivityMonitor.%{ptr}", v31);
  v33 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v34 = dispatch_queue_create(label, v33);
  v31[5] = v34;
  if (!v34)
  {
    APTransportConnectionUDPNWCreate_cold_15(v31);
    goto LABEL_97;
  }

  v31[6] = nw_retain(*(v29 + 32));
  v35 = *(v29 + 56);
  if (v35)
  {
    v35 = CFRetain(v35);
  }

  v31[7] = v35;
  if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus APTransportConnectionUDPNWInlineInactivityMonitorCreate(APTransportConnectionRef, APTransportConnectionUDPNWInlineInactivityMonitorRef *)", 33554482, "[%{ptr}] InlineInactivityMonitor [%{ptr}] Created", v31[3], v31);
  }

  *(DerivedStorage + 72) = v31;
  v53 = 0;
  v38 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (!v38)
  {
    APTransportConnectionUDPNWCreate_cold_14();
    goto LABEL_99;
  }

  v39 = v38;
  v40 = *(DerivedStorage + 56);
  if (v40)
  {
    v40 = CFRetain(v40);
  }

  *v39 = v40;
  v39[1] = nw_retain(*(DerivedStorage + 32));
  v41 = APSRealTimeSignalCreate();
  v53 = v41;
  if (v41)
  {
    APTransportConnectionUDPNWCreate_cold_8(v41);
    goto LABEL_99;
  }

LABEL_51:
  v42 = APSRealTimeDispatcherCreate();
  v53 = v42;
  if (v42)
  {
    APTransportConnectionUDPNWCreate_cold_9(v42);
    goto LABEL_99;
  }

  SNPrintF(v54, 128, "APTransportConnectionUDPNW.callbackState.%{ptr}", cf);
  v43 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 112) = v43;
  if (!v43)
  {
    APTransportConnectionUDPNWCreate_cold_13(&v53);
    goto LABEL_99;
  }

  *(DerivedStorage + 144) = 0;
  *(DerivedStorage + 328) = CFDictionaryGetInt64();
  *(DerivedStorage + 336) = CFDictionaryGetInt64();
  *(DerivedStorage + 344) = CFDictionaryGetInt64();
  *(DerivedStorage + 352) = CFDictionaryGetInt64();
  *(DerivedStorage + 360) = 0;
  *(DerivedStorage + 368) = CFDictionaryGetInt64() != 0;
  Int64 = APSSettingsGetInt64();
  *(DerivedStorage + 376) = Int64;
  if (Int64 && gLogCategory_APTransportConnectionUDPNW <= 50)
  {
    if (gLogCategory_APTransportConnectionUDPNW != -1)
    {
LABEL_56:
      LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus APTransportConnectionUDPNWCreate(CFAllocatorRef, CFStringRef, APTransportConnectionFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554482, "[%{ptr}] overrideExpiryMs=%llu", cf, Int64);
      goto LABEL_58;
    }

    if (_LogCategory_Initialize())
    {
      Int64 = *(DerivedStorage + 376);
      goto LABEL_56;
    }
  }

LABEL_58:
  *(DerivedStorage + 400) = CFDictionaryGetInt64() != 0;
  v45 = APSAtomicMessageQueueCreate();
  v53 = v45;
  if (v45)
  {
    APTransportConnectionUDPNWCreate_cold_10(v45);
    goto LABEL_99;
  }

  CFRetain(*(DerivedStorage + 88));
  v46 = APSRealTimeSignalCreate();
  v53 = v46;
  if (v46)
  {
    APTransportConnectionUDPNWCreate_cold_11(v46);
    goto LABEL_99;
  }

  v47 = APSRecycleBinCreate();
  v53 = v47;
  if (v47)
  {
    APTransportConnectionUDPNWCreate_cold_12(v47);
    goto LABEL_99;
  }

  if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus APTransportConnectionUDPNWCreate(CFAllocatorRef, CFStringRef, APTransportConnectionFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554482, "APTransportConnectionUDPNW %{ptr} with name %@ created.\n", cf, a2);
  }

  v48 = APSRealTimePTPClockCreate();
  v53 = v48;
  if (!v48)
  {
    goto LABEL_71;
  }

  if (gLogCategory_APTransportConnectionUDPNW <= 90)
  {
    if (gLogCategory_APTransportConnectionUDPNW == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_70;
      }

      v48 = v53;
    }

    LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus APTransportConnectionUDPNWCreate(CFAllocatorRef, CFStringRef, APTransportConnectionFlags, FigThreadPriority, CFDictionaryRef, APTransportConnectionRef *)", 33554522, "[%{ptr}] APSRealTimePTPClockCreate failed with err=%#m\n", cf, v48);
  }

LABEL_70:
  v53 = 0;
LABEL_71:
  if (*(DerivedStorage + 176))
  {
    v49 = 5;
  }

  else
  {
    v49 = 0;
  }

  APTTrafficMetricsCreate(&gLogCategory_APTransportConnectionUDPNW, cf, (DerivedStorage + 408), v49);
  *a6 = cf;
  return v53;
}

uint64_t udpconnection_runOffline(void *a1)
{
  Value = APSWrapperGetValue();
  v3 = a1[1];

  return udpconnection_runInlineInternal(Value, v3, 0);
}

uint64_t udpconnection_serviceSendMessageQueue(uint64_t a1)
{
  do
  {
    result = APSAtomicMessageQueueReadMessage();
  }

  while (result);
  return result;
}

uint64_t udpconnection_createContentContextItem(uint64_t a1, nw_content_context_t *a2)
{
  v3 = nw_content_context_create("APTConnectionUDPNW");
  if (v3)
  {
    v4 = v3;
    result = 0;
    *a2 = v4;
  }

  else
  {
    udpconnection_createContentContextItem_cold_1();
    return 4294894973;
  }

  return result;
}

uint64_t udpconnection_Invalidate(void *a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  udpconnection_invalidateInternal(a1, 1);
  FigSimpleMutexUnlock();
  return 0;
}

__CFString *udpconnection_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportConnectionUDPNW %p '%@'>", a1, *(DerivedStorage + 16));
  return Mutable;
}

void udpconnection_clearCallbackState(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[15] = 0;
  DerivedStorage[16] = 0;
  v2 = DerivedStorage[17];
  if (v2)
  {
    dispatch_release(v2);
    DerivedStorage[17] = 0;
  }
}

uint64_t udpconnection_runLockedInlineIfNecessary(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (APSWrapperGetValue())
  {
    FigSimpleMutexLock();
    (*(a2 + 16))(a2);

    return FigSimpleMutexUnlock();
  }

  else
  {
    v4 = *(a2 + 16);

    return v4(a2);
  }
}

uint64_t udpconnection_createUDPParameters(uint64_t a1, __CFString *options, NSObject **a3)
{
  v24 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&address.sa_len = 0;
  *&address.sa_data[6] = 0;
  LODWORD(v20) = 0;
  v19 = 0;
  if (!a3)
  {
    udpconnection_createUDPParameters_cold_8(buffer);
    v13 = 0;
    v9 = 0;
LABEL_33:
    v10 = 0;
LABEL_35:
    options = 0;
    v15 = *buffer;
    goto LABEL_29;
  }

  v7 = DerivedStorage;
  secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x277CD9238], *MEMORY[0x277CD9230]);
  v9 = secure_udp;
  if (!secure_udp)
  {
    udpconnection_createUDPParameters_cold_7(buffer);
    v13 = 0;
    goto LABEL_33;
  }

  v10 = nw_parameters_copy_default_protocol_stack(secure_udp);
  if (!v10)
  {
    udpconnection_createUDPParameters_cold_6(buffer);
    v13 = 0;
    goto LABEL_35;
  }

  APTransportConnectionGetTrafficClassForSocketQoS(*(v7 + 188));
  nw_parameters_set_traffic_class();
  if (*(v7 + 288))
  {
    nw_parameters_set_disable_listener_datapath();
  }

  nw_parameters_set_context();
  if (options)
  {
    if (CFStringGetCString(options, buffer, 16, 0x8000100u))
    {
      if (!CFStringHasPrefix(options, @"llw") && !*(v7 + 400))
      {
        goto LABEL_18;
      }

      if (*(v7 + 176))
      {
        v11 = *(v7 + 232);
        if (v11)
        {
          v12 = nw_retain(v11);
          goto LABEL_17;
        }
      }

      v22 = 0;
      v21 = 0;
      address.sa_family = 0;
      v14 = CUGetInterfaceAddresses();
      if (v14)
      {
        v15 = v14;
        udpconnection_createUDPParameters_cold_1(v14);
      }

      else
      {
        if (address.sa_family == 30 || (APSLogErrorAt(), v17 = APSSignalErrorAt(), !v17))
        {
          v12 = nw_endpoint_create_address(&address);
          if (!v12)
          {
            udpconnection_createUDPParameters_cold_3(&v21);
            v13 = 0;
            options = 0;
            goto LABEL_46;
          }

LABEL_17:
          nw_parameters_set_local_endpoint(v9, v12);
          nw_release(v12);
          if (!*(v7 + 176))
          {
            options = nw_replicate_create_options();
            if (!options)
            {
              udpconnection_createUDPParameters_cold_2(&v21);
              v13 = 0;
              goto LABEL_46;
            }

            nw_protocol_stack_append_application_protocol();
            goto LABEL_21;
          }

LABEL_18:
          options = 0;
LABEL_21:
          v13 = nw_interface_create_with_name();
          if (v13)
          {
            nw_parameters_require_interface(v9, v13);
            goto LABEL_23;
          }

          udpconnection_createUDPParameters_cold_4(&v21);
LABEL_46:
          v15 = v21;
          goto LABEL_29;
        }

        v15 = v17;
      }

      APSLogErrorAt();
    }

    else
    {
      v15 = 4294894974;
      APSLogErrorAt();
      if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_createUDPParameters(APTransportConnectionRef, CFStringRef, nw_parameters_t *)", 33554482, "[%{ptr}] Creating UDP parameters: Failed to convert interface name '%@'\n", a1, options, *&address.sa_len, *&address.sa_data[6], v19, v20);
      }
    }

    v13 = 0;
    options = 0;
    goto LABEL_29;
  }

  v13 = 0;
LABEL_23:
  if ((*(v7 + 180) & 0x20) != 0)
  {
    if (gLogCategory_APTransportConnectionUDPNW <= 30 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
    {
      udpconnection_createUDPParameters_cold_5(a1);
    }

    nw_parameters_prohibit_interface_type(v9, nw_interface_type_cellular);
  }

  v15 = 0;
  *a3 = v9;
  v9 = 0;
LABEL_29:
  nw_release(v13);
  nw_release(v9);
  nw_release(v10);
  nw_release(0);
  nw_release(options);
  return v15;
}

uint64_t udpconnectionAggregate_Clone(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a1)
  {
    if (a3)
    {
      v7 = DerivedStorage;
      if (*DerivedStorage)
      {
        udpconnectionAggregate_Clone_cold_1();
        return 4294894970;
      }

      else if (*(DerivedStorage + 176))
      {
        udpconnectionAggregate_Clone_cold_2();
        return 4294894975;
      }

      else
      {
        v8 = APTransportConnectionUDPNWCreate(*MEMORY[0x277CBECE8], a2, *(DerivedStorage + 180), *(DerivedStorage + 184), *(DerivedStorage + 24), &cf);
        if (v8)
        {
          v15 = v8;
          APSLogErrorAt();
          if (cf)
          {
            CFRelease(cf);
          }
        }

        else
        {
          v9 = CMBaseObjectGetDerivedStorage();
          v10 = *(v7 + 240);
          *(v9 + 252) = *(v7 + 252);
          *(v9 + 240) = v10;
          *(v9 + 280) = *(v7 + 280);
          v11 = *(v9 + 216);
          v12 = *(v7 + 216);
          *(v9 + 216) = v12;
          if (v12)
          {
            CFRetain(v12);
          }

          if (v11)
          {
            CFRelease(v11);
          }

          v13 = *(v9 + 272);
          v14 = *(v7 + 272);
          *(v9 + 272) = v14;
          if (v14)
          {
            CFRetain(v14);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          v15 = 0;
          *a3 = cf;
        }
      }
    }

    else
    {
      v15 = 4294894974;
      udpconnectionAggregate_Clone_cold_3();
    }
  }

  else
  {
    v15 = 4294894974;
    udpconnectionAggregate_Clone_cold_4();
  }

  return v15;
}

uint64_t udpconnectionAggregate_AddSubConnection(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  if (!a2)
  {
    v6 = 4294894974;
    udpconnectionAggregate_AddSubConnection_cold_5();
LABEL_15:
    v7 = 0;
    goto LABEL_12;
  }

  v5 = DerivedStorage;
  if (CMBaseObjectGetVTable() != &kAPTransportConnectionUDPVTable)
  {
    v6 = 4294894974;
    udpconnectionAggregate_AddSubConnection_cold_1();
    goto LABEL_15;
  }

  if (*v5)
  {
    udpconnectionAggregate_AddSubConnection_cold_2();
    v7 = 0;
    v6 = 4294894970;
  }

  else if (*(v5 + 176))
  {
    udpconnectionAggregate_AddSubConnection_cold_3();
    v7 = 0;
    v6 = 4294894975;
  }

  else if (*(v5 + 320))
  {
    if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnectionAggregate_AddSubConnection(APTransportConnectionAggregateRef, APTransportConnectionRef)", 33554482, "[%{ptr}] Adding SubConnection %{ptr}\n", a1, a2);
    }

    v6 = udpconnection_createRemoteEndpoint(a2, &v10);
    if (v6)
    {
      APSLogErrorAt();
      v7 = v10;
    }

    else
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 0x40000000;
      v9[2] = __udpconnectionAggregate_AddSubConnection_block_invoke;
      v9[3] = &__block_descriptor_tmp_104;
      v7 = v10;
      v9[4] = v5;
      v9[5] = v10;
      udpconnection_runLockedInlineIfNecessary(a1, v9);
    }
  }

  else
  {
    udpconnectionAggregate_AddSubConnection_cold_4();
    v7 = 0;
    v6 = 4294894968;
  }

LABEL_12:
  nw_release(v7);
  return v6;
}

uint64_t udpconnectionAggregate_RemoveSubConnection(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  if (!a2)
  {
    v6 = 4294894974;
    udpconnectionAggregate_RemoveSubConnection_cold_5();
LABEL_15:
    v7 = 0;
    goto LABEL_12;
  }

  v5 = DerivedStorage;
  if (CMBaseObjectGetVTable() != &kAPTransportConnectionUDPVTable)
  {
    v6 = 4294894974;
    udpconnectionAggregate_RemoveSubConnection_cold_1();
    goto LABEL_15;
  }

  if (*v5)
  {
    udpconnectionAggregate_RemoveSubConnection_cold_2();
    v7 = 0;
    v6 = 4294894970;
  }

  else if (*(v5 + 176))
  {
    udpconnectionAggregate_RemoveSubConnection_cold_3();
    v7 = 0;
    v6 = 4294894975;
  }

  else if (*(v5 + 320))
  {
    if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnectionAggregate_RemoveSubConnection(APTransportConnectionAggregateRef, APTransportConnectionRef)", 33554482, "[%{ptr}] Removing SubConnection %{ptr}\n", a1, a2);
    }

    v6 = udpconnection_createRemoteEndpoint(a2, &v10);
    if (v6)
    {
      APSLogErrorAt();
      v7 = v10;
    }

    else
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 0x40000000;
      v9[2] = __udpconnectionAggregate_RemoveSubConnection_block_invoke;
      v9[3] = &__block_descriptor_tmp_107;
      v7 = v10;
      v9[4] = v5;
      v9[5] = v10;
      udpconnection_runLockedInlineIfNecessary(a1, v9);
    }
  }

  else
  {
    udpconnectionAggregate_RemoveSubConnection_cold_4();
    v7 = 0;
    v6 = 4294894968;
  }

LABEL_12:
  nw_release(v7);
  return v6;
}

uint64_t udpconnection_createRemoteEndpoint(uint64_t a1, nw_endpoint_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  *buffer = 0;
  v4 = *(DerivedStorage + 216);
  if (v4 && CFStringHasPrefix(v4, @"llw") && !*(DerivedStorage + 272))
  {
    udpconnection_createRemoteEndpoint_cold_1();
    v7 = 4294894967;
    goto LABEL_7;
  }

  v5 = *(DerivedStorage + 272);
  if (!v5)
  {
    address = nw_endpoint_create_address((DerivedStorage + 240));
    if (address)
    {
      goto LABEL_6;
    }

LABEL_9:
    udpconnection_createRemoteEndpoint_cold_2(&v11);
    v7 = v11;
    goto LABEL_7;
  }

  v12.location = 0;
  v12.length = 6;
  CFDataGetBytes(v5, v12, buffer);
  address = nw_endpoint_create_address_with_ethernet();
  if (!address)
  {
    goto LABEL_9;
  }

LABEL_6:
  v7 = 0;
  *a2 = address;
LABEL_7:
  nw_release(0);
  return v7;
}

uint64_t udpconnection_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 144) == 5)
  {
    v11 = DerivedStorage;
    v12 = nw_connection_copy_connected_path();
    v13 = nw_path_copy_effective_local_endpoint(v12);
    v14 = (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (UDPNW) %''@ Remote:%##a%?s%?lu Parent:[%{ptr}]\n", a1, a4, v11 + 240, *(v11 + 284) != 0, " IDX:", *(v11 + 284) != 0, *(v11 + 284), a2);
    if (v14)
    {
      v17 = v14;
      udpconnection_DumpHierarchy_cold_2(v14);
    }

    else
    {
      address = nw_endpoint_get_address(v13);
      v16 = (*(a5 + 16))(a5, a3 + 1, "Listener Local:%##a Parent:[%{ptr}]\n", address, a1);
      v17 = v16;
      if (v16)
      {
        udpconnection_DumpHierarchy_cold_3(v16);
      }
    }
  }

  else
  {
    v18 = (*(a5 + 16))(a5, a3, "Connection:[%{ptr}] (UDPNW) %''@ (Not Connected) Parent:[%{ptr}]\n", a1, a4, a2);
    v17 = v18;
    if (v18)
    {
      udpconnection_DumpHierarchy_cold_1(v18);
    }

    v12 = 0;
    v13 = 0;
  }

  nw_release(v12);
  nw_release(v13);
  return v17;
}

uint64_t udpconnection_AcquirePackage(const void *a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v5 = *(DerivedStorage + 160);
    v6 = CFGetAllocator(a1);
    v7 = v5(v6, a2);
    if (!v7)
    {
      if (gLogCategory_APTransportConnectionUDPNW <= 30 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_acquirePackageInternal(APTransportConnectionRef, APTransportPackageRef *)", 33554462, "[%{ptr}] APTransportConnectionUDPNW created UDP package %{ptr}.\n", a1, *a2);
      }

      goto LABEL_7;
    }

    v8 = v7;
    udpconnection_AcquirePackage_cold_2(v7);
LABEL_12:
    APSLogErrorAt();
    goto LABEL_8;
  }

  if (!udpconnection_AcquirePackage_cold_1())
  {
    v8 = v10;
    goto LABEL_12;
  }

LABEL_7:
  v8 = 0;
LABEL_8:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t udpconnection_setupNWConnection(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = 0;
  v25 = 0;
  if (DerivedStorage[37])
  {
    APSLogErrorAt();
    if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
    {
      udpconnection_setupNWConnection_cold_1();
    }

    v10 = 0;
    v9 = 0;
    v14 = 0;
    goto LABEL_25;
  }

  v5 = DerivedStorage;
  v6 = DerivedStorage[26];
  v7 = DerivedStorage[6];
  v8 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  if (v8)
  {
    if (a2)
    {
      v9 = nw_retain(a2);
      v10 = 0;
      goto LABEL_8;
    }

    v11 = udpconnection_createUDPParameters(a1, v5[27], &v25);
    if (v11)
    {
      v18 = v11;
      APSLogErrorAt();
      if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
      {
        udpconnection_setupNWConnection_cold_2(a1, v20, v21);
      }

      v10 = 0;
      v9 = 0;
      v14 = 0;
    }

    else
    {
      v12 = udpconnection_createRemoteEndpoint(a1, &v24);
      if (v12)
      {
        v18 = v12;
        APSLogErrorAt();
        v9 = 0;
        v14 = 0;
        v10 = v24;
      }

      else
      {
        v10 = v24;
        v9 = nw_connection_create(v24, v25);
        if (v9)
        {
LABEL_8:
          v13 = nw_retain(v9);
          v5[37] = v13;
          v14 = nw_connection_copy_description(v13);
          if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
          {
            v15 = "incoming";
            if (!a2)
            {
              v15 = "outgoing";
            }

            v16 = "from";
            if (!a2)
            {
              v16 = "to";
            }

            v17 = "UNKNOWN";
            if (v14)
            {
              v17 = v14;
            }

            LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus udpconnection_setupNWConnection(APTransportConnectionRef, nw_connection_t)", 33554482, "[%{ptr}] %s connection %s %##a: %s", a1, v15, v16, v5 + 30, v17);
          }

          if (*(v5 + 48) != 3)
          {
            nw_connection_set_queue(v9, v5[5]);
          }

          if (v6)
          {
            CFRetain(v6);
          }

          if (v7)
          {
            CFRetain(v7);
          }

          nw_retain(v9);
          nw_retain(v10);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 0x40000000;
          handler[2] = __udpconnection_setupNWConnection_block_invoke;
          handler[3] = &__block_descriptor_tmp_150;
          handler[4] = a1;
          handler[5] = v6;
          handler[6] = v7;
          handler[7] = v8;
          handler[8] = v9;
          handler[9] = v10;
          nw_connection_set_state_changed_handler(v9, handler);
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 0x40000000;
          v22[2] = __udpconnection_setupNWConnection_block_invoke_2;
          v22[3] = &__block_descriptor_tmp_151;
          v22[4] = v9;
          udpconnection_runLockedInlineIfNecessary(a1, v22);
LABEL_25:
          v18 = 0;
          v8 = 0;
          goto LABEL_26;
        }

        udpconnection_setupNWConnection_cold_3(v26);
        v14 = 0;
        v18 = v26[0];
      }
    }
  }

  else
  {
    udpconnection_setupNWConnection_cold_4();
    v10 = 0;
    v9 = 0;
    v14 = 0;
    v18 = 4294894973;
  }

LABEL_26:
  free(v14);
  nw_release(v10);
  nw_release(v25);
  nw_release(v9);
  if (v8)
  {
    free(v8);
  }

  return v18;
}

void __udpconnection_setupListenerNW_block_invoke(uint64_t a1, nw_connection_t connection)
{
  v3 = *(a1 + 32);
  if (*(v3 + 400) && !*(v3 + 296))
  {
    v4 = *(a1 + 40);

    udpconnection_setupNWConnection(v4, connection);
  }

  else
  {
    if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
    {
      __udpconnection_setupListenerNW_block_invoke_cold_1();
    }

    nw_connection_cancel(connection);
  }
}

void __udpconnection_setupListenerNW_block_invoke_2(uint64_t a1, uint64_t a2, nw_error_t error)
{
  if (error)
  {
    error_code = nw_error_get_error_code(error);
  }

  else
  {
    error_code = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = error_code;
  if (gLogCategory_APTransportConnectionUDPNW <= 30 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
  {
    __udpconnection_setupListenerNW_block_invoke_2_cold_1(a2);
  }

  if (a2 == 3 || error)
  {
    if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
    {
      __udpconnection_setupListenerNW_block_invoke_2_cold_5();
    }

LABEL_23:
    v7 = *(a1 + 40);

    dispatch_semaphore_signal(v7);
    return;
  }

  if (a2 != 4)
  {
    if (a2 != 2)
    {
      if (a2 == 1 && gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
      {
        __udpconnection_setupListenerNW_block_invoke_2_cold_4(a1);
      }

      return;
    }

    if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
    {
      __udpconnection_setupListenerNW_block_invoke_2_cold_3(a1);
    }

    goto LABEL_23;
  }

  if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
  {
    __udpconnection_setupListenerNW_block_invoke_2_cold_2();
  }

  dispatch_semaphore_signal(*(a1 + 40));
  nw_release(*(a1 + 48));
  dispatch_release(*(a1 + 56));
  v8 = *(a1 + 40);

  dispatch_release(v8);
}

nw_endpoint_t __udpconnection_setLocalNetworkInfo_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  nw_release(*(*(a1 + 32) + 232));
  *(*(a1 + 32) + 232) = 0;
  port = nw_listener_get_port(*(*(a1 + 32) + 304));
  v3 = *(a1 + 32);
  *(v3 + 224) = port;
  if (*(v3 + 268))
  {
    *&address.sa_data[10] = 0;
    *&address.sa_data[2] = 0;
    *&address.sa_len = 528;
    *address.sa_data = __rev16(port);
    result = nw_endpoint_create_address(&address);
  }

  else
  {
    result = nw_listener_copy_local_endpoint();
  }

  *(*(a1 + 32) + 232) = result;
  return result;
}

uint64_t __udpconnection_setupNWConnection_block_invoke(void *a1, int a2, void *a3)
{
  v6 = APSRealTimeAllocatorAllocate();
  *v6 = a1[4];
  *(v6 + 8) = a1[5];
  *(v6 + 16) = a1[6];
  *(v6 + 24) = a1[7];
  *(v6 + 32) = a1[8];
  *(v6 + 40) = a1[9];
  *(v6 + 48) = a2;
  *(v6 + 56) = nw_retain(a3);
  v7 = a1[6];

  return MEMORY[0x28213C7D0](v7, udpconnection_handleNWConnectionStateChange, v6);
}

void udpconnection_handleNWConnectionStateChange(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    LODWORD(v2) = nw_error_get_error_code(v2);
  }

  valuePtr = v2;
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v49 = 0;
  v50 = &v49;
  v51 = 0x2000000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2000000000;
  v48 = 0;
  port = nw_endpoint_get_port(a1[5]);
  hostname = nw_endpoint_get_hostname(a1[5]);
  v7 = 0;
  if (hostname)
  {
    v8 = hostname;
  }

  else
  {
    v8 = "NULL";
  }

  v9 = *(a1 + 12);
  if (v9 > 3)
  {
    if (v9 == 4)
    {
      if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "void udpconnection_handleNWConnectionStateChange(void *)", 33554482, "[%{ptr}] Connection %{ptr} to %s:%u failed!\n", *a1, a1[4], v8, port);
      }

      if (v3)
      {
        FigSimpleMutexLock();
        v18 = *(DerivedStorage + 144);
        if (v18 == 5 || v18 == 0)
        {
          if (v18)
          {
            v21 = 6;
          }

          else
          {
            v21 = 4;
          }

          *(DerivedStorage + 144) = v21;
          v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
          udpconnection_callEventCallback(v3, *(DerivedStorage + 144), v7);
        }

        else
        {
          v7 = 0;
        }

        FigSimpleMutexUnlock();
        v11 = 0;
        goto LABEL_49;
      }

LABEL_51:
      v17 = 0;
      goto LABEL_52;
    }

    if (v9 == 5)
    {
      if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "void udpconnection_handleNWConnectionStateChange(void *)", 33554482, "[%{ptr}] Connection %{ptr} to %s:%u cancelled.\n", *a1, a1[4], v8, port);
      }

      if (v3)
      {
        udpconnection_handleNWConnectionStateChange_cold_1(DerivedStorage, &valuePtr, v3, &v54);
        v7 = v54;
      }

      else
      {
        v7 = 0;
      }

      v12 = a1[3];
      v13 = *v12;
      if (*v12)
      {
        if (v13[16] || (udpconnectionReceiveLoopContext_invalidateInternal(v13), v14 = a1[3], (v13 = *v14) != 0))
        {
          CFRelease(v13);
          v14 = a1[3];
        }

        *v14 = 0;
        v12 = a1[3];
      }

      free(v12);
      v15 = a1[1];
      if (v15)
      {
        CFRelease(v15);
      }

      v16 = a1[2];
      if (v16)
      {
        CFRelease(v16);
      }

      nw_release(a1[4]);
      nw_release(a1[5]);
    }
  }

  else if (v9 == 1)
  {
    if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "void udpconnection_handleNWConnectionStateChange(void *)", 33554482, "[%{ptr}] Connection %{ptr} to %s:%u is waiting.\n", *a1, a1[4], v8, port);
    }

    v7 = 0;
  }

  else if (v9 == 3)
  {
    if (v3)
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 0x40000000;
      v44[2] = __udpconnection_handleNWConnectionStateChange_block_invoke;
      v44[3] = &unk_278BC78C8;
      v44[4] = &v45;
      v44[5] = a1;
      udpconnection_runLockedInlineIfNecessary(v3, v44);
      v10 = v46[3];
      if (v10)
      {
        v10 = nw_parameters_copy_local_endpoint(v10);
        v11 = v10;
        if (v10)
        {
          v22 = nw_endpoint_get_port(v10);
          v10 = nw_endpoint_get_hostname(v11);
LABEL_63:
          if (v10)
          {
            v23 = v10;
          }

          else
          {
            v23 = "NULL";
          }

          APTTrafficMetricsConnectionFormed(*(DerivedStorage + 408));
          if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "void udpconnection_handleNWConnectionStateChange(void *)", 33554482, "[%{ptr}] Connection %{ptr} to %s:%u succeeded (from %s:%u)%?s%?lu\n", *a1, a1[4], v8, port, v23, v22, *(DerivedStorage + 284) != 0, " on bound interface index: ", *(DerivedStorage + 284) != 0, *(DerivedStorage + 284));
          }

          FigSimpleMutexLock();
          v24 = *(DerivedStorage + 216);
          if (v24 && CFStringHasPrefix(v24, @"llw") && !*(DerivedStorage + 176))
          {
            v25 = nw_protocol_copy_replicate_definition();
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 0x40000000;
            v43[2] = __udpconnection_handleNWConnectionStateChange_block_invoke_2;
            v43[3] = &unk_278BC78F0;
            v43[4] = &v49;
            v43[5] = a1;
            v43[6] = v25;
            udpconnection_runLockedInlineIfNecessary(v3, v43);
            v26 = v50[3];
            if (!v26)
            {
              APSSignalErrorAt();
              v26 = v50[3];
            }

            *(DerivedStorage + 320) = v26;
            nw_release(v25);
          }

          *(DerivedStorage + 144) = 5;
          udpconnection_callEventCallback(v3, 5u, 0);
          if (!*(DerivedStorage + 176))
          {
            goto LABEL_114;
          }

          v27 = a1[3];
          v28 = *v27;
          if (*v27)
          {
            if (v28[16] || (udpconnectionReceiveLoopContext_invalidateInternal(v28), v29 = a1[3], (v28 = *v29) != 0))
            {
              CFRelease(v28);
              v29 = a1[3];
            }

            *v29 = 0;
            v27 = a1[3];
            v30 = CMBaseObjectGetDerivedStorage();
            if (!v27)
            {
              v31 = 4294894974;
              udpconnection_handleNWConnectionStateChange_cold_2();
LABEL_107:
              v42 = *a1[3];
              if (v42)
              {
                udpconnection_receiveDataLoop(v42);
              }

              else if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "void udpconnection_handleNWConnectionStateChange(void *)", 33554522, "[%{ptr}] Failed to create ReceiveLoopContext err=%#m.\n", *a1, v31);
              }

LABEL_114:
              FigSimpleMutexUnlock();
              v7 = 0;
              if (*(DerivedStorage + 64))
              {
                atomic_fetch_or_explicit(APSWrapperGetValue(), 1u, memory_order_relaxed);
              }

LABEL_49:
              CFRelease(v3);
              v17 = v11;
              if (!v7)
              {
                goto LABEL_52;
              }

              goto LABEL_50;
            }
          }

          else
          {
            v30 = CMBaseObjectGetDerivedStorage();
          }

          v32 = v30;
          if (v30[26])
          {
            if (v30[37])
            {
              if (v30[5])
              {
                if (gAPTransportConnectionUDPNWReceiveLoopContextInitOnce != -1)
                {
                  udpconnection_handleNWConnectionStateChange_cold_3();
                }

                Instance = _CFRuntimeCreateInstance();
                if (Instance)
                {
                  v34 = Instance;
                  *(Instance + 96) = 0;
                  *(Instance + 64) = 0u;
                  *(Instance + 80) = 0u;
                  *(Instance + 32) = 0u;
                  *(Instance + 48) = 0u;
                  *(Instance + 16) = 0u;
                  *(Instance + 24) = v3;
                  v35 = v32[26];
                  if (v35)
                  {
                    v35 = CFRetain(v35);
                  }

                  v34[4] = v35;
                  v34[5] = nw_retain(v32[37]);
                  dispatch_retain(v32[5]);
                  v34[6] = v32[5];
                  v36 = v32[7];
                  if (v36)
                  {
                    v36 = CFRetain(v36);
                  }

                  v34[7] = v36;
                  v37 = v32[8];
                  if (v37)
                  {
                    v37 = CFRetain(v37);
                  }

                  v38 = v32[19];
                  v34[8] = v37;
                  v34[9] = v38;
                  v39 = v32[49];
                  if (v39)
                  {
                    v39 = CFRetain(v39);
                  }

                  v34[10] = v39;
                  v40 = v32[51];
                  if (v40)
                  {
                    v40 = CFRetain(v40);
                  }

                  v34[11] = v40;
                  v41 = v32[48];
                  if (v41)
                  {
                    v41 = CFRetain(v41);
                  }

                  v34[12] = v41;
                  if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_APTransportConnectionUDPNW, "OSStatus APTransportConnectionUDPNWReceiveLoopContextCreate(APTransportConnectionRef, APTransportConnectionUDPNWReceiveLoopContextRef *)", 33554482, "[%{ptr}] ReceiveLoopContext [%{ptr}] Created", v3, v34);
                  }

                  v31 = 0;
                  *v27 = v34;
                }

                else
                {
                  udpconnection_handleNWConnectionStateChange_cold_4();
                  v31 = 4294960568;
                }
              }

              else
              {
                v31 = 4294894974;
                udpconnection_handleNWConnectionStateChange_cold_5();
              }
            }

            else
            {
              v31 = 4294894974;
              udpconnection_handleNWConnectionStateChange_cold_6();
            }
          }

          else
          {
            v31 = 4294894974;
            udpconnection_handleNWConnectionStateChange_cold_7();
          }

          goto LABEL_107;
        }
      }

      else
      {
        v11 = 0;
      }

      v22 = 0;
      goto LABEL_63;
    }

    goto LABEL_51;
  }

  v11 = 0;
  v17 = 0;
  if (v3)
  {
    goto LABEL_49;
  }

  if (v7)
  {
LABEL_50:
    CFRelease(v7);
  }

LABEL_52:
  nw_release(v46[3]);
  nw_release(v17);
  v20 = a1[7];
  if (v20)
  {
    nw_release(v20);
  }

  APSRealTimeAllocatorDeallocate();
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
}

nw_parameters_t __udpconnection_handleNWConnectionStateChange_block_invoke(uint64_t a1)
{
  result = nw_connection_copy_parameters(*(*(a1 + 40) + 32));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

nw_protocol_metadata_t __udpconnection_handleNWConnectionStateChange_block_invoke_2(uint64_t a1)
{
  result = nw_connection_copy_protocol_metadata(*(*(a1 + 40) + 32), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void udpconnectionReceiveLoopContext_invalidateInternal(uint64_t a1)
{
  *(a1 + 16) = 1;
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    nw_release(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 64) = 0;
  }

  *(a1 + 72) = 0;
  v7 = *(a1 + 80);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 80) = 0;
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 88) = 0;
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 96) = 0;
  }
}

uint64_t _APTransportConnectionUDPNWReceiveLoopContextGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPTransportConnectionUDPNWReceiveLoopContextTypeID = result;
  return result;
}

void _APTransportConnectionUDPNWReceiveLoopContextFinalize(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    if (gLogCategory_APTransportConnectionUDPNW <= 90 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
    {
      _APTransportConnectionUDPNWReceiveLoopContextFinalize_cold_1();
    }

    udpconnectionReceiveLoopContext_invalidateInternal(a1);
  }

  if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
  {
    _APTransportConnectionUDPNWReceiveLoopContextFinalize_cold_2();
  }
}

uint64_t udpconnection_markSignPostExplicit(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = **&MEMORY[0x277CC08F0];
  v8 = v9;
  v7 = 0;
  v4 = mach_absolute_time();
  CMClockMakeHostTimeFromSystemUnits(&v9, v4);
  if (a1)
  {
    v6 = v9;
    APSRealTimePTPClockGetEstimatedPTPTimeForHostTime();
  }

  v6 = v9;
  CMTimeGetSeconds(&v6);
  v6 = v8;
  CMTimeGetSeconds(&v6);
  return kdebug_trace();
}

uint64_t udpconnection_getSequenceNumberForPackage(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v2)
    {
      v3 = v2(a1);
      if (v3 == 1735550308 || v3 == 1734700576)
      {
        v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v5 && (v6 = v5(a1)) != 0)
        {
          v7 = v6;
          AudioDataHeader = APSTransportMessageGetAudioDataHeader();
          if (AudioDataHeader)
          {
            udpconnection_getSequenceNumberForPackage_cold_1(AudioDataHeader);
          }

          CFRelease(v7);
        }

        else
        {
          udpconnection_getSequenceNumberForPackage_cold_2();
        }
      }
    }
  }

  else
  {
    udpconnection_getSequenceNumberForPackage_cold_3();
  }

  return 0;
}

uint64_t udpconnection_primaryDropLogger(uint64_t result, double a2, uint64_t a3, uint64_t a4)
{
  if (gLogCategory_APTransportConnectionUDPNW <= 90)
  {
    v4 = result;
    if (gLogCategory_APTransportConnectionUDPNW != -1)
    {
      return udpconnection_primaryDropLogger_cold_1(v4, a3, a4);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return udpconnection_primaryDropLogger_cold_1(v4, a3, a4);
    }
  }

  return result;
}

void __udpconnection_sendPackageInternal_block_invoke(uint64_t a1, nw_error_t error)
{
  if (error)
  {
    error_code = nw_error_get_error_code(error);
  }

  else
  {
    error_code = 0;
  }

  v4 = *(a1 + 72);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  udpconnection_markSignPostExplicit(*(DerivedStorage + 384), 722863892, v4);
  if (error_code)
  {
    __udpconnection_sendPackageInternal_block_invoke_cold_1((a1 + 32), a1, error_code);
  }

  APSRecycleBinAddItem();
  APTTrafficMetricsSendFinished(*(*(a1 + 48) + 408), error_code, *(a1 + 64));
  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 56);

  nw_release(v8);
}

void __udpconnection_sendBatchInternal_block_invoke(uint64_t result)
{
  if (*(result + 32) >= 1)
  {
    __udpconnection_sendBatchInternal_block_invoke_cold_1(result, (result + 32));
  }
}

uint64_t _APTransportConnectionUDPNWInlineInactivityMonitorGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPTransportConnectionUDPNWInlineInactivityMonitorTypeID = result;
  return result;
}

void _APTransportConnectionUDPNWInlineInactivityMonitorFinalize(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
    a1[5] = 0;
  }

  v3 = a1[6];
  if (v3)
  {
    nw_release(v3);
    a1[6] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
    a1[7] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  if (gLogCategory_APTransportConnectionUDPNW <= 50 && (gLogCategory_APTransportConnectionUDPNW != -1 || _LogCategory_Initialize()))
  {
    _APTransportConnectionUDPNWInlineInactivityMonitorFinalize_cold_1();
  }
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1)
{

  return kdebug_trace();
}

uint64_t APBrowserGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_2 != -1)
  {
    APBrowserGetClassID_cold_1();
  }

  return qword_281309B50;
}

uint64_t browser_getClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&browser_getClassID_sClassDesc, ClassID, 1, a1);
}

uint64_t APBrowserGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_2 != -1)
  {
    APBrowserGetClassID_cold_1();
  }

  v3 = qword_281309B50;

  return MEMORY[0x282111A98](v3);
}

uint64_t package_getClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&package_getClassID_sClassDesc, ClassID, 1, a1);
}

uint64_t APBrowserDeviceQueryManagerGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_4 != -1)
  {
    APBrowserDeviceQueryManagerGetClassID_cold_1();
  }

  return qword_281309B70;
}

uint64_t deviceQueryManager_getClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&deviceQueryManager_getClassID_sClassDesc, ClassID, 1, a1);
}

uint64_t APBrowserDeviceQueryManagerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_4 != -1)
  {
    APBrowserDeviceQueryManagerGetClassID_cold_1();
  }

  v3 = qword_281309B70;

  return MEMORY[0x282111A98](v3);
}

uint64_t APBrowserCarBonjourCreate(const __CFAllocator *a1, const void *a2, const void *a3, const __CFDictionary *a4, void *a5)
{
  cf = 0;
  if (!a2)
  {
    APBrowserCarBonjourCreate_cold_14();
LABEL_52:
    DerivedStorage = 0;
    v23 = 4294954516;
    goto LABEL_39;
  }

  if (!a5)
  {
    APBrowserCarBonjourCreate_cold_13();
    goto LABEL_52;
  }

  APBrowserGetClassID(a1, a2);
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v23 = v10;
    APBrowserCarBonjourCreate_cold_1(v10);
    DerivedStorage = 0;
  }

  else
  {
    v11 = cf;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v13 = dispatch_queue_create("APBrowserCarBonjourInternalQueue", 0);
    *(DerivedStorage + 24) = v13;
    if (v13)
    {
      v14 = dispatch_queue_create("APBrowserCarBonjourEventQueue", 0);
      *(DerivedStorage + 120) = v14;
      if (v14)
      {
        if (a3)
        {
          v15 = CFRetain(a3);
        }

        else
        {
          v15 = 0;
        }

        *(DerivedStorage + 56) = v15;
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v17 = Mutable;
          CFDictionarySetValue(Mutable, @"enableSessionEvents", *MEMORY[0x277CBED10]);
          if (a4)
          {
            Value = CFDictionaryGetValue(a4, @"PowerAssertion");
            *(DerivedStorage + 48) = Value;
            if (Value)
            {
              CFRetain(Value);
              CFDictionarySetValue(v17, @"powerAssertion", *(DerivedStorage + 48));
            }

            v19 = CFDictionaryGetValue(a4, @"EventRecorder");
            *(DerivedStorage + 40) = v19;
            if (v19)
            {
              CFRetain(v19);
              CFDictionarySetValue(v17, @"eventRecorder", *(DerivedStorage + 40));
            }

            v20 = CFDictionaryGetInt64() == 0;
          }

          else
          {
            v20 = 1;
          }

          if (CFEqual(a2, @"USB"))
          {
            *(DerivedStorage + 16) = CFRetain(@"USB");
            CFDictionarySetInt64();
            if (v20)
            {
              v21 = APCarPlayHelperUSBCreate(a1, carBonjourBrowser_handleCarPlayHelperEvent, cf, v17, (DerivedStorage + 96));
            }

            else
            {
              v21 = APCarPlayHelperSessionCreate(a1, carBonjourBrowser_handleCarPlayHelperEvent, cf, v17, (DerivedStorage + 96));
            }

            v23 = v21;
            if (v21)
            {
              APBrowserCarBonjourCreate_cold_2(v21);
LABEL_38:
              CFRelease(v17);
              goto LABEL_39;
            }
          }

          else
          {
            if (!CFEqual(a2, @"WiFi"))
            {
              v23 = 4294954516;
              APSLogErrorAt();
              if (gLogCategory_APBrowserCarBonjour <= 90)
              {
                if (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize())
                {
                  APBrowserCarBonjourCreate_cold_9(a2);
                }

                v23 = 4294954516;
              }

              goto LABEL_38;
            }

            *(DerivedStorage + 16) = CFRetain(@"WiFi");
            CFDictionarySetInt64();
            if (v20)
            {
              v22 = APCarPlayHelperWiFiCreate(a1, carBonjourBrowser_handleCarPlayHelperEvent, cf, v17, (DerivedStorage + 96));
            }

            else
            {
              v22 = APCarPlayHelperSessionCreate(a1, carBonjourBrowser_handleCarPlayHelperEvent, cf, v17, (DerivedStorage + 96));
            }

            v23 = v22;
            if (v22)
            {
              APBrowserCarBonjourCreate_cold_3(v22);
              goto LABEL_38;
            }
          }

          v24 = dispatch_semaphore_create(0);
          *(DerivedStorage + 8) = v24;
          if (v24)
          {
            v25 = dispatch_group_create();
            *DerivedStorage = v25;
            if (v25)
            {
              dispatch_group_enter(v25);
              v26 = APBonjourBrowserCreate(a1, 0, (DerivedStorage + 64));
              if (v26)
              {
                v23 = v26;
                APBrowserCarBonjourCreate_cold_4(v26);
                goto LABEL_38;
              }

              v27 = APBonjourBrowserSetEventHandler(*(DerivedStorage + 64), carBonjourBrowser_handleBonjourEvent, cf);
              if (v27)
              {
                v23 = v27;
                APBrowserCarBonjourCreate_cold_5(v27);
                goto LABEL_38;
              }

              dispatch_group_enter(*DerivedStorage);
              v28 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              *(DerivedStorage + 80) = v28;
              if (v28)
              {
                v23 = 0;
                *a5 = v11;
                goto LABEL_38;
              }

              APBrowserCarBonjourCreate_cold_6();
            }

            else
            {
              APBrowserCarBonjourCreate_cold_7();
            }
          }

          else
          {
            APBrowserCarBonjourCreate_cold_8();
          }

          v23 = 4294954510;
          goto LABEL_38;
        }

        APBrowserCarBonjourCreate_cold_10();
      }

      else
      {
        APBrowserCarBonjourCreate_cold_11();
      }
    }

    else
    {
      APBrowserCarBonjourCreate_cold_12();
    }

    v23 = 4294954510;
  }

LABEL_39:
  v29 = *DerivedStorage;
  if (*DerivedStorage)
  {
    v30 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APBrowserCarBonjourCreate_block_invoke;
    block[3] = &__block_descriptor_tmp_4;
    block[4] = cf;
    block[5] = DerivedStorage;
    dispatch_group_notify(v29, v30, block);
  }

  if (v23)
  {
    if (gLogCategory_APBrowserCarBonjour <= 90 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APBrowserCarBonjour, "OSStatus APBrowserCarBonjourCreate(CFAllocatorRef, CFStringRef, APCarPlayControlServerRef, CFDictionaryRef, APBrowserRef *)", 33554522, "APBrowserCarBonjourCreate for %@ failed %#m\n", a2, v23);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v23;
}

void carBonjourBrowser_handleCarPlayHelperEvent(uint64_t a1, int a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    CFRetain(a4);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v8 = *(DerivedStorage + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __carBonjourBrowser_handleCarPlayHelperEvent_block_invoke;
  v9[3] = &__block_descriptor_tmp_51;
  v10 = a2;
  v9[4] = DerivedStorage;
  v9[5] = a4;
  v9[6] = a3;
  dispatch_async(v8, v9);
}

void carBonjourBrowser_handleBonjourEvent(const void *a1, int a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v9 = *(DerivedStorage + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carBonjourBrowser_handleBonjourEvent_block_invoke;
  block[3] = &__block_descriptor_tmp_64;
  v11 = a2;
  block[4] = a3;
  block[5] = DerivedStorage;
  block[6] = a4;
  block[7] = a1;
  dispatch_async(v9, block);
}

NSObject *__APBrowserCarBonjourCreate_block_invoke(uint64_t a1)
{
  carBonjourBrowser_dispatchEvent(*(a1 + 32), 8, 0);
  result = *(*(a1 + 40) + 8);
  if (result)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

void carBonjourBrowser_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carBonjourBrowser_finalize_block_invoke;
    block[3] = &__block_descriptor_tmp_18;
    block[4] = DerivedStorage;
    dispatch_sync(v3, block);
    carBonjourBrowser_invalidate(a1);
    dispatch_semaphore_wait(*(DerivedStorage + 8), 0xFFFFFFFFFFFFFFFFLL);
    dispatch_sync(*(DerivedStorage + 24), &__block_literal_global_4);
    v16 = *(DerivedStorage + 24);
    if (v16)
    {
      dispatch_release(v16);
      *(DerivedStorage + 24) = 0;
    }
  }

  v4 = *(DerivedStorage + 120);
  if (v4)
  {
    dispatch_sync(v4, &__block_literal_global_22);
    v5 = *(DerivedStorage + 120);
    if (v5)
    {
      dispatch_release(v5);
      *(DerivedStorage + 120) = 0;
    }
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 40) = 0;
  }

  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 48) = 0;
  }

  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 56) = 0;
  }

  v9 = *(DerivedStorage + 64);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 64) = 0;
  }

  v10 = *(DerivedStorage + 80);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 80) = 0;
  }

  v11 = *(DerivedStorage + 88);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 88) = 0;
  }

  v12 = *(DerivedStorage + 96);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 96) = 0;
  }

  v13 = *(DerivedStorage + 112);
  if (v13)
  {
    os_release(v13);
    *(DerivedStorage + 112) = 0;
  }

  v14 = *(DerivedStorage + 16);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 16) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v15 = *(DerivedStorage + 8);
  if (v15)
  {
    dispatch_release(v15);
    *(DerivedStorage + 8) = 0;
  }
}

void __carBonjourBrowser_invalidate_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 32);
  if (!*(v4 + 32))
  {
    if (*(v4 + 96))
    {
      APTransportKeepAliveControllerGetCMBaseObject();
      if (v6)
      {
        v7 = v6;
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v8)
        {
          v8(v7);
        }
      }
    }

    *(*(result + 32) + 32) = 1;
  }
}

uint64_t __carBonjourBrowser_finalize_block_invoke(uint64_t result)
{
  *(*(result + 32) + 128) = 0;
  *(*(result + 32) + 136) = 0;
  return result;
}

uint64_t carBonjourBrowser_getMode(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carBonjourBrowser_getMode_block_invoke;
    block[3] = &unk_278BC7B18;
    block[4] = &v8;
    block[5] = DerivedStorage;
    block[6] = a2;
    dispatch_sync(v4, block);
    v5 = *(v9 + 6);
  }

  else
  {
    v5 = 4294954516;
    *(v9 + 6) = -12780;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t carBonjourBrowser_setMode(uint64_t a1, int a2)
{
  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1)
  {
    carBonjourBrowser_setMode_cold_1(v10);
    v5 = 4294895234;
  }

  else
  {
    v4 = *(DerivedStorage + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carBonjourBrowser_setMode_block_invoke;
    block[3] = &unk_278BC7B40;
    block[4] = &v9;
    block[5] = DerivedStorage;
    v8 = a2;
    dispatch_sync(v4, block);
    v5 = *(v10[0] + 24);
  }

  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t carBonjourBrowser_setEventHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __carBonjourBrowser_setEventHandler_block_invoke;
  v9[3] = &unk_278BC7B68;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t carBonjourBrowser_getDNSForDeviceID(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x2000000000;
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    carBonjourBrowser_getDNSForDeviceID_cold_1(v19);
LABEL_7:
    v15 = 4294954516;
    goto LABEL_4;
  }

  if (!a6)
  {
    carBonjourBrowser_getDNSForDeviceID_cold_2(v19);
    goto LABEL_7;
  }

  v14 = *(DerivedStorage + 24);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = __carBonjourBrowser_getDNSForDeviceID_block_invoke;
  v17[3] = &unk_278BC7B90;
  v17[4] = &v18;
  v17[5] = DerivedStorage;
  v17[6] = a2;
  v17[7] = a6;
  v17[8] = a7;
  v17[9] = a8;
  dispatch_sync(v14, v17);
  v15 = *(v19[0] + 24);
LABEL_4:
  _Block_object_dispose(&v18, 8);
  return v15;
}

uint64_t carBonjourBrowser_reconfirmDevice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __carBonjourBrowser_reconfirmDevice_block_invoke;
  v9[3] = &unk_278BC7BB8;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __carBonjourBrowser_getMode_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (*(v2 + 32))
  {
    __carBonjourBrowser_getMode_block_invoke_cold_1();
  }

  else
  {
    if (*(v2 + 104))
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }

    **(result + 48) = v3;
  }
}

void __carBonjourBrowser_setEventHandler_block_invoke(void *result)
{
  v1 = result[5];
  if (*(v1 + 32))
  {
    __carBonjourBrowser_setEventHandler_block_invoke_cold_1();
  }

  else if (*(v1 + 104))
  {
    __carBonjourBrowser_setEventHandler_block_invoke_cold_2();
  }

  else if (*(v1 + 108))
  {
    __carBonjourBrowser_setEventHandler_block_invoke_cold_3();
  }

  else
  {
    *(v1 + 128) = result[6];
    *(result[5] + 136) = result[7];
  }
}

void __carBonjourBrowser_getDNSForDeviceID_block_invoke(void *a1)
{
  v2 = a1[5];
  if (*(v2 + 32))
  {
    __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_1();
    return;
  }

  if (*(v2 + 108))
  {
    __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_2();
    return;
  }

  if (!*(v2 + 104))
  {
    __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_9();
    return;
  }

  v3 = a1 + 6;
  Int64 = CFNumberCreateInt64();
  if (!Int64)
  {
    __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_8();
    return;
  }

  v5 = Int64;
  Value = CFDictionaryGetValue(*(a1[5] + 80), Int64);
  if (Value)
  {
    if (CFDictionaryGetValue(Value, @"AirPlayBonjourInfo"))
    {
      v7 = (a1 + 7);
      v8 = a1 + 4;
      *(*(a1[4] + 8) + 24) = BonjourDevice_GetDNSName();
      v10 = *(*(a1[4] + 8) + 24);
      if (v10)
      {
        __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_3(v10);
      }

      else
      {
        v12 = a1[9];
        v11 = (a1 + 9);
        if (v12)
        {
          v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], *v7, 0x8000100u);
          if (v13)
          {
            v14 = v13;
            CFArrayGetTypeID();
            TypedValue = CFDictionaryGetTypedValue();
            Count = CFArrayGetCount(TypedValue);
            v17 = Count - 1;
            if (Count >= 1)
            {
              v18 = 0;
              do
              {
                CFDictionaryGetTypeID();
                CFArrayGetTypedValueAtIndex();
                CFStringGetTypeID();
                v19 = CFDictionaryGetTypedValue();
                if (CFEqual(v19, v14))
                {
                  break;
                }
              }

              while (v17 != v18++);
            }

            **v11 = CFDictionaryGetInt64() != 0;
            if (gLogCategory_APBrowserCarBonjour <= 50 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
            {
              __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_4(v7, v3, v11);
            }

            CFRelease(v5);
            v21 = v14;
            goto LABEL_24;
          }

          __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_5(v8);
        }

        else if (gLogCategory_APBrowserCarBonjour <= 50 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
        {
          __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_6(v7, v3, v9);
        }
      }
    }

    else
    {
      __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_7();
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -72063;
  }

  v21 = v5;
LABEL_24:

  CFRelease(v21);
}

void __carBonjourBrowser_reconfirmDevice_block_invoke(void *a1)
{
  v2 = a1[5];
  if (*(v2 + 32))
  {
    __carBonjourBrowser_reconfirmDevice_block_invoke_cold_1();
  }

  else if (*(v2 + 108))
  {
    __carBonjourBrowser_reconfirmDevice_block_invoke_cold_2();
  }

  else if (*(v2 + 104))
  {
    Int64 = CFNumberCreateInt64();
    if (Int64)
    {
      v4 = Int64;
      Value = CFDictionaryGetValue(*(a1[5] + 80), Int64);
      if (Value)
      {
        v6 = CFDictionaryGetValue(Value, @"AirPlayBonjourInfo");
        if (v6)
        {
          v7 = APBonjourBrowserReconfirmDevice(*(a1[5] + 64), v6, @"AirPlay", a1[7]);
        }

        else
        {
          __carBonjourBrowser_reconfirmDevice_block_invoke_cold_3();
          v7 = -6762;
        }
      }

      else
      {
        v7 = -72063;
      }

      *(*(a1[4] + 8) + 24) = v7;

      CFRelease(v4);
    }

    else
    {
      __carBonjourBrowser_reconfirmDevice_block_invoke_cold_4();
    }
  }

  else
  {
    __carBonjourBrowser_reconfirmDevice_block_invoke_cold_5();
  }
}

void __carBonjourBrowser_handleCarPlayHelperEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    if (v2 == 3)
    {
      if (gLogCategory_APBrowserCarBonjour <= 30 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
      {
        __carBonjourBrowser_handleCarPlayHelperEvent_block_invoke_cold_1();
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v5 = *(DerivedStorage + 64);
      if (v5)
      {
        APBonjourBrowserInvalidate(v5);
      }

      dispatch_group_leave(*DerivedStorage);
    }

    else
    {
      if (v2 != 2)
      {
        if (gLogCategory_APBrowserCarBonjour <= 90)
        {
          if (gLogCategory_APBrowserCarBonjour == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_19;
            }

            v2 = *(a1 + 56);
          }

          LogPrintF(&gLogCategory_APBrowserCarBonjour, "void carBonjourBrowser_handleCarPlayHelperEvent(APCarPlayHelperRef, APCarPlayHelperEventType, CFDictionaryRef, void *)_block_invoke", 33554522, "[%@] Unrecognized CarPlayHelper event: %d\n", *(*(a1 + 32) + 16), v2);
        }

LABEL_19:
        APSLogErrorAt();
        goto LABEL_20;
      }

      if (gLogCategory_APBrowserCarBonjour <= 30 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
      {
        __carBonjourBrowser_handleCarPlayHelperEvent_block_invoke_cold_2();
      }

      v8 = *(a1 + 40);
      v9 = CMBaseObjectGetDerivedStorage();
      carBonjourBrowser_networkInterfaceChanged(v8, 0);
      carBonjourBrowser_dispatchEvent(v8, 7, 0);
      --*(v9 + 108);
    }
  }

  else
  {
    if (gLogCategory_APBrowserCarBonjour <= 30 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
    {
      __carBonjourBrowser_handleCarPlayHelperEvent_block_invoke_cold_3();
    }

    v3 = carBonjourBrowser_networkInterfaceChanged(*(a1 + 40), *(a1 + 48));
    if (v3)
    {
      __carBonjourBrowser_handleCarPlayHelperEvent_block_invoke_cold_4(v3);
    }
  }

LABEL_20:
  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t carBonjourBrowser_networkInterfaceChanged(uint64_t a1, const __CFDictionary *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"interfaceName");
    v6 = CFDictionaryGetInt64() != 0;
  }

  else
  {
    v6 = 0;
    Value = 0;
  }

  if (FigCFEqual())
  {
    return 0;
  }

  if (gLogCategory_APBrowserCarBonjour <= 50 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrowserCarBonjour, "OSStatus carBonjourBrowser_networkInterfaceChanged(APBrowserRef, CFDictionaryRef)", 33554482, "[%@] Network interface name changed to %@\n", DerivedStorage[2], Value);
  }

  if (DerivedStorage[11])
  {
    if (!Value && DerivedStorage[14])
    {
      v31 = os_transaction_copy_description();
      if (gLogCategory_APBrowserCarBonjour <= 50 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
      {
        carBonjourBrowser_networkInterfaceChanged_cold_1(v31, v29, v30);
      }

      free(v31);
      v32 = DerivedStorage[14];
      if (v32)
      {
        os_release(v32);
        DerivedStorage[14] = 0;
      }
    }

    v9 = carBonjourBrowser_stopBonjourBrowsing(a1);
    if (v9)
    {
      v7 = v9;
      carBonjourBrowser_networkInterfaceChanged_cold_2(v9);
      return v7;
    }

    v10 = DerivedStorage[11];
  }

  else
  {
    v10 = 0;
  }

  DerivedStorage[11] = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (!DerivedStorage[11])
  {
    return 0;
  }

  if (DerivedStorage[14] == 0 && v6)
  {
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    SNPrintF(buf, 64, "APBrowserCarBonjour_%s.%{ptr}", CStringPtrAndBufferToFree, a1);
    if (gLogCategory_APBrowserCarBonjour <= 50 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
    {
      carBonjourBrowser_networkInterfaceChanged_cold_3(buf, v12, v13);
    }

    DerivedStorage[14] = os_transaction_create();
  }

  v14 = CMBaseObjectGetDerivedStorage();
  if (!*(v14 + 88))
  {
    carBonjourBrowser_networkInterfaceChanged_cold_8();
    v7 = 4294960534;
LABEL_69:
    carBonjourBrowser_stopBonjourBrowsing(a1);
    APSLogErrorAt();
    return v7;
  }

  v17 = v14;
  if (gLogCategory_APBrowserCarBonjour <= 50 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
  {
    carBonjourBrowser_networkInterfaceChanged_cold_4(v17, v15, v16);
  }

  if (v17[6])
  {
    APSPowerAssertionRaiseTemporary();
  }

  v18 = APBonjourBrowserSetInterfaceName(v17[8], v17[11]);
  if (v18)
  {
    v7 = v18;
    carBonjourBrowser_networkInterfaceChanged_cold_5(v18);
    goto LABEL_69;
  }

  v19 = v17[7];
  if (v19)
  {
    v20 = APCarPlayControlServerAddInterface(v19, v17[11]);
    if (v20)
    {
      v7 = v20;
      carBonjourBrowser_networkInterfaceChanged_cold_6(v20);
      goto LABEL_69;
    }
  }

  v21 = APBonjourBrowserSetMode(v17[8], 2u);
  if (v21)
  {
    v7 = v21;
    carBonjourBrowser_networkInterfaceChanged_cold_7(v21);
    goto LABEL_69;
  }

  v22 = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    if (*(v22 + 40))
    {
      APSEventRecorderRecordEvent();
    }

    v23 = LogCategoryCopyOSLogHandle();
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = MEMORY[0x277D86220];
    }

    if (!os_signpost_enabled(v25))
    {
      goto LABEL_59;
    }

    *buf = 0;
    v26 = "AP_SIGNPOST_CAR_STARTEDBROWSE_USB";
    v27 = 730662892;
    v28 = v25;
LABEL_58:
    _os_signpost_emit_with_name_impl(&dword_23D2A9000, v28, OS_SIGNPOST_EVENT, v27, v26, "", buf, 2u);
LABEL_59:
    if (v24)
    {
      os_release(v24);
    }

    return 0;
  }

  if (FigCFEqual())
  {
    if (*(v22 + 40))
    {
      APSEventRecorderRecordEvent();
    }

    v33 = LogCategoryCopyOSLogHandle();
    v24 = v33;
    if (v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = MEMORY[0x277D86220];
    }

    if (!os_signpost_enabled(v34))
    {
      goto LABEL_59;
    }

    *buf = 0;
    v26 = "AP_SIGNPOST_CAR_STARTEDBROWSE_WIFI";
    v28 = v34;
    v27 = 730662868;
    goto LABEL_58;
  }

  return 0;
}

uint64_t carBonjourBrowser_stopBonjourBrowsing(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (gLogCategory_APBrowserCarBonjour <= 50 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
  {
    carBonjourBrowser_stopBonjourBrowsing_cold_1(DerivedStorage, v1, v2);
  }

  if (!*(DerivedStorage + 56))
  {
    goto LABEL_8;
  }

  v4 = APBonjourBrowserCopyInterfaceName(*(DerivedStorage + 64), &cf);
  if (v4)
  {
    v8 = v4;
    carBonjourBrowser_stopBonjourBrowsing_cold_2(v4);
    goto LABEL_11;
  }

  if (cf && (v5 = APCarPlayControlServerRemoveInterface(*(DerivedStorage + 56), cf), v5))
  {
    v8 = v5;
    carBonjourBrowser_stopBonjourBrowsing_cold_3(v5);
  }

  else
  {
LABEL_8:
    v6 = APBonjourBrowserSetMode(*(DerivedStorage + 64), 0);
    if (v6)
    {
      v8 = v6;
      carBonjourBrowser_stopBonjourBrowsing_cold_4(v6);
    }

    else
    {
      ++*(DerivedStorage + 72);
      v7 = APBonjourBrowserSetInterfaceName(*(DerivedStorage + 64), 0);
      if (v7)
      {
        v8 = v7;
        carBonjourBrowser_stopBonjourBrowsing_cold_5(v7);
      }

      else
      {
        APSEventRecorderResetEvent();
        APSEventRecorderResetEvent();
        v8 = 0;
      }
    }
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

void __carBonjourBrowser_handleBonjourEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = CFDictionaryGetValue(v2, @"deviceInfo");
    if (!v3)
    {
      __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_1();
      goto LABEL_97;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 64);
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_53;
      }

      if (gLogCategory_APBrowserCarBonjour <= 50 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
      {
        __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_7();
      }

      goto LABEL_97;
    }

    if (gLogCategory_APBrowserCarBonjour <= 50 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
    {
      __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_8();
    }

    v10 = *(a1 + 48);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v12 = CFGetAllocator(v10);
    cf = 0;
    value = 0;
    if (!v3)
    {
      __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_14();
      v24 = 0;
      v20 = 0;
      v26 = 0;
      v40 = 4294954516;
      goto LABEL_85;
    }

    v13 = v12;
    v14 = APBrowserCreateAdvertiserInfoForDevice(v12, v3, 0, 0, &cf);
    if (v14)
    {
      v40 = v14;
      __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_9(v14);
    }

    else
    {
      v15 = APAdvertiserInfoCopyProperty(cf, 0, @"featuresEx", 0, 0);
      HasFeature = APSFeaturesHasFeature();
      if (v15)
      {
        CFRelease(v15);
      }

      if (HasFeature)
      {
        v18 = APBrowserCopyDeviceIDFromBonjourInfo(v13, v3, &value);
        if (!v18)
        {
          Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v20 = Mutable;
          if (Mutable)
          {
            CFDictionarySetValue(Mutable, @"deviceID", value);
            CFDictionarySetValue(v20, @"deviceInfo", cf);
            v21 = FigCFEqual();
            v22 = MEMORY[0x277CBED28];
            if (!v21)
            {
              v22 = MEMORY[0x277CBED10];
            }

            CFDictionarySetValue(v20, @"IsConnectedOverUSB", *v22);
            v23 = CFDictionaryGetValue(*(DerivedStorage + 80), value);
            if (v23)
            {
              v24 = v23;
              CFRetain(v23);
              v25 = CFDictionaryGetValue(v24, @"LastEventInfo");
              if (v25)
              {
                v26 = v25;
                CFRetain(v25);
                if (!*(DerivedStorage + 72))
                {
                  if (FigCFEqual())
                  {
                    goto LABEL_65;
                  }

                  v27 = gLogCategory_APBrowserCarBonjour;
                  if (gLogCategory_APBrowserCarBonjour > 30)
                  {
                    goto LABEL_139;
                  }

                  if (gLogCategory_APBrowserCarBonjour == -1)
                  {
                    if (!_LogCategory_Initialize())
                    {
LABEL_139:
                      carBonjourBrowser_dispatchEvent(v10, 4, v20);
                      goto LABEL_65;
                    }

                    v27 = gLogCategory_APBrowserCarBonjour;
                  }

                  v28 = *(DerivedStorage + 16);
                  v29 = value;
                  if (v27 > 20)
                  {
                    v30 = 0;
                    v48 = 0;
                  }

                  else
                  {
                    if (v27 != -1)
                    {
                      v30 = 1;
LABEL_124:
                      v48 = v27 != -1 || _LogCategory_Initialize() != 0;
                      goto LABEL_138;
                    }

                    v49 = value;
                    v30 = _LogCategory_Initialize() != 0;
                    v27 = gLogCategory_APBrowserCarBonjour;
                    if (gLogCategory_APBrowserCarBonjour <= 20)
                    {
                      v29 = v49;
                      goto LABEL_124;
                    }

                    v48 = 0;
                    v29 = v49;
                  }

LABEL_138:
                  LogPrintF(&gLogCategory_APBrowserCarBonjour, "OSStatus carBonjourBrowser_handleBonjourDeviceAddOrUpdateEvent(APBrowserRef, CFDictionaryRef)", 33554462, "[%@] Dispatching update event for device with ID: %@%?s%?@\n", v28, v29, v30, "\n", v48, v3);
                  goto LABEL_139;
                }

LABEL_59:
                if (gLogCategory_APBrowserCarBonjour <= 20 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_APBrowserCarBonjour, "OSStatus carBonjourBrowser_handleBonjourDeviceAddOrUpdateEvent(APBrowserRef, CFDictionaryRef)", 33554452, "[%@] Suppressing add/update event for device with ID: %@\n%@\n", *(DerivedStorage + 16), value, v3);
                }

LABEL_65:
                CFDictionarySetValue(v24, @"AdvertiserInfo", cf);
                CFDictionarySetValue(v24, @"AirPlayBonjourInfo", v3);
                CFDictionarySetValue(v24, @"LastEventInfo", v20);
                CFDictionarySetValue(*(DerivedStorage + 80), value, v24);
                v31 = CMBaseObjectGetDerivedStorage();
                if (FigCFEqual())
                {
                  if (*(v31 + 40))
                  {
                    APSEventRecorderRecordEventWithFlags();
                  }

                  v32 = LogCategoryCopyOSLogHandle();
                  v33 = v32;
                  if (v32)
                  {
                    v34 = v32;
                  }

                  else
                  {
                    v34 = MEMORY[0x277D86220];
                  }

                  if (!os_signpost_enabled(v34))
                  {
                    goto LABEL_82;
                  }

                  *buf = 0;
                  v35 = "AP_SIGNPOST_ENDPOINTADDED_USB";
                  v36 = v34;
                  v37 = 730662900;
                }

                else
                {
                  if (!FigCFEqual())
                  {
LABEL_84:
                    v40 = 0;
LABEL_85:
                    if (value)
                    {
                      CFRelease(value);
                    }

                    if (v24)
                    {
                      CFRelease(v24);
                    }

                    if (cf)
                    {
                      CFRelease(cf);
                    }

                    if (v20)
                    {
                      CFRelease(v20);
                    }

                    if (v26)
                    {
                      CFRelease(v26);
                    }

                    if (v40)
                    {
                      __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_15(v40);
                    }

                    goto LABEL_97;
                  }

                  if (*(v31 + 40))
                  {
                    APSEventRecorderRecordEventWithFlags();
                  }

                  v38 = LogCategoryCopyOSLogHandle();
                  v33 = v38;
                  if (v38)
                  {
                    v39 = v38;
                  }

                  else
                  {
                    v39 = MEMORY[0x277D86220];
                  }

                  if (!os_signpost_enabled(v39))
                  {
LABEL_82:
                    if (v33)
                    {
                      os_release(v33);
                    }

                    goto LABEL_84;
                  }

                  *buf = 0;
                  v35 = "AP_SIGNPOST_ENDPOINTADDED_WIFI";
                  v36 = v39;
                  v37 = 722862484;
                }

                _os_signpost_emit_with_name_impl(&dword_23D2A9000, v36, OS_SIGNPOST_EVENT, v37, v35, "", buf, 2u);
                goto LABEL_82;
              }

LABEL_57:
              if (*(DerivedStorage + 72))
              {
                v26 = 0;
                goto LABEL_59;
              }

              v43 = gLogCategory_APBrowserCarBonjour;
              if (gLogCategory_APBrowserCarBonjour <= 30)
              {
                if (gLogCategory_APBrowserCarBonjour != -1)
                {
                  goto LABEL_106;
                }

                if (_LogCategory_Initialize())
                {
                  v43 = gLogCategory_APBrowserCarBonjour;
LABEL_106:
                  v44 = *(DerivedStorage + 16);
                  v45 = value;
                  if (v43 > 20)
                  {
                    v46 = 0;
                  }

                  else
                  {
                    if (v43 != -1)
                    {
                      v46 = 1;
                      goto LABEL_117;
                    }

                    v46 = _LogCategory_Initialize() != 0;
                    v43 = gLogCategory_APBrowserCarBonjour;
                    if (gLogCategory_APBrowserCarBonjour <= 20)
                    {
LABEL_117:
                      v47 = v43 != -1 || _LogCategory_Initialize() != 0;
                      goto LABEL_120;
                    }
                  }

                  v47 = 0;
LABEL_120:
                  LogPrintF(&gLogCategory_APBrowserCarBonjour, "OSStatus carBonjourBrowser_handleBonjourDeviceAddOrUpdateEvent(APBrowserRef, CFDictionaryRef)", 33554462, "[%@] Dispatching add event for device with ID: %@%?s%?@\n", v44, v45, v46, "\n", v47, v3);
                }
              }

              carBonjourBrowser_dispatchEvent(v10, 3, v20);
              v26 = 0;
              goto LABEL_65;
            }

            v24 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v24)
            {
              goto LABEL_57;
            }

            __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_11();
          }

          else
          {
            __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_12();
            v24 = 0;
          }

          v26 = 0;
          v40 = 4294954510;
          goto LABEL_85;
        }

        v40 = v18;
        __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_10(v18);
      }

      else
      {
        if (gLogCategory_APBrowserCarBonjour <= 50 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
        {
          __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_13(DerivedStorage, &cf, v16);
        }

        v40 = 0;
      }
    }

    v24 = 0;
    v20 = 0;
    v26 = 0;
    goto LABEL_85;
  }

  switch(v4)
  {
    case 2:
      if (gLogCategory_APBrowserCarBonjour <= 30 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
      {
        __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_5();
      }

      v6 = *(a1 + 48);
      v7 = CMBaseObjectGetDerivedStorage();
      v8 = carBonjourBrowser_removeAllDevices(v6, 1);
      if (v8)
      {
        __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_6(v8, v7);
      }

      else
      {
        --*(v7 + 72);
      }

      break;
    case 3:
      if (gLogCategory_APBrowserCarBonjour <= 30 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
      {
        __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_2();
      }

      v9 = CMBaseObjectGetDerivedStorage();
      dispatch_group_leave(*v9);
      break;
    case 4:
      if (gLogCategory_APBrowserCarBonjour <= 90 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
      {
        __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_3();
      }

      v5 = carBonjourBrowser_removeAllDevices(*(a1 + 48), 0);
      if (v5)
      {
        __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_4(v5);
      }

      break;
    default:
LABEL_53:
      if (gLogCategory_APBrowserCarBonjour <= 90)
      {
        if (gLogCategory_APBrowserCarBonjour == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_63;
          }

          v4 = *(a1 + 64);
        }

        LogPrintF(&gLogCategory_APBrowserCarBonjour, "void carBonjourBrowser_handleBonjourEvent(APBonjourBrowserRef, APBonjourBrowserEventType, CFDictionaryRef, void *)_block_invoke", 33554522, "[%@] Unrecognized Bonjour event: %d\n", *(*(a1 + 40) + 16), v4);
      }

LABEL_63:
      APSLogErrorAt();
      break;
  }

LABEL_97:
  v41 = *(a1 + 56);
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = *(a1 + 32);
  if (v42)
  {
    CFRelease(v42);
  }
}

uint64_t carBonjourBrowser_removeAllDevices(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APBrowserCarBonjour <= 30 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
  {
    carBonjourBrowser_removeAllDevices_cold_1(DerivedStorage, v4, v5);
  }

  v7 = CFGetAllocator(a1);
  Copy = CFDictionaryCreateCopy(v7, *(DerivedStorage + 80));
  if (Copy)
  {
    CFDictionaryApplyBlock();
    if (a2)
    {
      carBonjourBrowser_removeAllDevices_cold_2(a1, DerivedStorage, &v11);
      v9 = v11;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    carBonjourBrowser_removeAllDevices_cold_3();
    v9 = 4294954510;
  }

  CFRelease(Copy);
  return v9;
}

void __carBonjourBrowser_removeAllDevices_block_invoke(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  v4 = CFDictionaryGetValue(theDict, @"AirPlayBonjourInfo");
  cf = v4;
  if (v4)
  {
    CFRetain(v4);
    BonjourDevice_RemoveInterfaceInfo();
    v5 = *(a1 + 32);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    value = 0;
    v7 = CFGetAllocator(v5);
    v8 = APBrowserCopyDeviceIDFromBonjourInfo(v7, cf, &value);
    if (v8)
    {
      v12 = v8;
      __carBonjourBrowser_removeAllDevices_block_invoke_cold_1(v8);
      v10 = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v10 = Mutable;
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"deviceID", value);
        if (CFDictionaryGetValue(*(DerivedStorage + 80), value))
        {
          if (gLogCategory_APBrowserCarBonjour <= 30 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
          {
            __carBonjourBrowser_removeAllDevices_block_invoke_cold_2(DerivedStorage, &value, v11);
          }

          carBonjourBrowser_dispatchEvent(v5, 5, v10);
          CFDictionaryRemoveValue(*(DerivedStorage + 80), value);
        }

        v12 = 0;
      }

      else
      {
        __carBonjourBrowser_removeAllDevices_block_invoke_cold_3();
        v12 = 4294954510;
      }
    }

    if (value)
    {
      CFRelease(value);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v12)
    {
      __carBonjourBrowser_removeAllDevices_block_invoke_cold_5(v12);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    __carBonjourBrowser_removeAllDevices_block_invoke_cold_6();
  }
}

void __carBonjourBrowser_dispatchEvent_block_invoke(uint64_t a1)
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

uint64_t APTransportPackageRTPCreate(const void *a1, CFTypeRef *a2)
{
  v2 = APTransportPackageRTPCreateWithBBuf(a1, 0, a2);
  v3 = v2;
  if (v2)
  {
    APTransportPackageRTPCreate_cold_1(v2);
  }

  return v3;
}

uint64_t APTransportPackageRTPCreateWithMessageSizeAndType(uint64_t a1, size_t a2, int a3, CFTypeRef *a4)
{
  v6 = rtppackage_createWithMessageSize(a1, a2, a4);
  v7 = v6;
  if (v6)
  {
    APTransportPackageRTPCreateWithMessageSizeAndType_cold_1(v6);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    APTransportParcelSetMessageType(*DerivedStorage, a3);
    rtppackage_ensureHeaderIsSet(*a4);
  }

  return v7;
}

__CFString *rtppackage_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportPackageRTP %p>", a1);
  return Mutable;
}

uint64_t rtppackage_SetArrivalDeadlineTicks(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = a2;
  return result;
}

uint64_t __APCarPlayHelperWiFiGetClassID_block_invoke(uint64_t a1, uint64_t a2)
{
  ClassID = APCarPlayHelperGetClassID(a1, a2);

  return MEMORY[0x282112448](&APCarPlayHelperWiFiGetClassID_sClassDesc, ClassID, 0, &APCarPlayHelperWiFiGetClassID_sClassID);
}

uint64_t APCarPlayHelperWiFiCreate(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, CFTypeRef *a5)
{
  if (APCarPlayHelperWiFiGetClassID_sRegisterOnce != -1)
  {
    APCarPlayHelperWiFiCreate_cold_1();
  }

  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v20 = v9;
    APCarPlayHelperWiFiCreate_cold_2(v9);
    return v20;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = -1;
  v11 = dispatch_semaphore_create(0);
  *(DerivedStorage + 8) = v11;
  if (!v11)
  {
    APCarPlayHelperWiFiCreate_cold_9();
    return 4294954510;
  }

  v12 = dispatch_queue_create("APCarPlayHelperWiFiInternalQueue", 0);
  *(DerivedStorage + 16) = v12;
  if (!v12)
  {
    APCarPlayHelperWiFiCreate_cold_8();
    return 4294960568;
  }

  v13 = dispatch_queue_create("APCarPlayHelperWiFiEventQueue", 0);
  *(DerivedStorage + 24) = v13;
  if (!v13)
  {
    APCarPlayHelperWiFiCreate_cold_7();
    return 4294960568;
  }

  *(DerivedStorage + 104) = a2;
  *(DerivedStorage + 112) = a3;
  if (!a2)
  {
    APCarPlayHelperWiFiCreate_cold_6();
    return 4294954516;
  }

  v14 = dispatch_semaphore_create(0);
  *(DerivedStorage + 56) = v14;
  if (!v14)
  {
    APCarPlayHelperWiFiCreate_cold_5();
    return 4294954510;
  }

  SharedHelper = APConnectivityHelperGetSharedHelper();
  if (!SharedHelper)
  {
    *(DerivedStorage + 72) = 0;
    goto LABEL_20;
  }

  v16 = CFRetain(SharedHelper);
  *(DerivedStorage + 72) = v16;
  if (!v16)
  {
LABEL_20:
    APCarPlayHelperWiFiCreate_cold_4();
    return 4294960568;
  }

  v17 = APConnectivityHelperRegisterEventHandler(v16, 0, carPlayHelperWiFi_handleConnectivityHelperEvent);
  if (v17)
  {
    v20 = v17;
    APCarPlayHelperWiFiCreate_cold_3(v17);
  }

  else
  {
    if (a4)
    {
      Value = CFDictionaryGetValue(a4, @"powerAssertion");
      *(DerivedStorage + 32) = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      v19 = CFDictionaryGetValue(a4, @"eventRecorder");
      *(DerivedStorage + 128) = v19;
      if (v19)
      {
        CFRetain(v19);
      }
    }

    v20 = 0;
    *a5 = 0;
  }

  return v20;
}

void carPlayHelperWiFi_handleConnectivityHelperEvent(uint64_t a1, int a2, const void *a3, const void *a4)
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
  v9[2] = __carPlayHelperWiFi_handleConnectivityHelperEvent_block_invoke;
  v9[3] = &unk_278BC7D48;
  v10 = a2;
  v9[4] = v11;
  v9[5] = a4;
  v9[6] = a3;
  dispatch_async(v8, v9);
  _Block_object_dispose(v11, 8);
}

void sub_23D2EBF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FigCFRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void carPlayHelperWiFi_dispatchEvent(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 104);
  if (v7)
  {
    v8 = DerivedStorage;
    v9 = *(DerivedStorage + 112);
    if (gLogCategory_APBrowserCarWiFiHelper <= 20 && (gLogCategory_APBrowserCarWiFiHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APBrowserCarWiFiHelper, "void carPlayHelperWiFi_dispatchEvent(APCarPlayHelperRef, APCarPlayHelperEventType, CFDictionaryRef)", 33554452, "Dispatching event %d with info %@\n", a2, a3);
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
    block[2] = __carPlayHelperWiFi_dispatchEvent_block_invoke;
    block[3] = &__block_descriptor_68_e5_v8__0l;
    block[4] = v7;
    block[5] = a1;
    v12 = a2;
    block[6] = a3;
    block[7] = v9;
    dispatch_async(v10, block);
  }
}

void __carPlayHelperWiFi_dispatchEvent_block_invoke(uint64_t a1)
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

uint64_t __carPlayHelperWiFi_finalize_block_invoke(uint64_t result)
{
  *(*(result + 32) + 104) = 0;
  *(*(result + 32) + 112) = 0;
  return result;
}

void __carPlayHelperWiFi_setInterfaceWatchingEnabled_block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v3 = *(a1 + 32);
  v1 = *(v3 + 16);
  v2[2] = __carPlayHelperWiFi_setInterfaceWatchingEnabled_block_invoke_3;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  dispatch_async(v1, v2);
}

void *carPlayHelperWiFi_updateCarKitInCarStatus(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 32))
  {
    APSPowerAssertionRaiseTemporary();
  }

  v4 = *(v3 + 64);
  if (v4)
  {
    CFRelease(v4);
    *(v3 + 64) = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __carPlayHelperWiFi_updateCarKitInCarStatus_block_invoke;
  v8[3] = &__block_descriptor_48_e33_v28__0B8__NSString_12__NSError_20l;
  v8[4] = v3;
  v8[5] = a1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = getCRBluetoothIndicatesInCarSymbolLoc_ptr;
  v13 = getCRBluetoothIndicatesInCarSymbolLoc_ptr;
  if (!getCRBluetoothIndicatesInCarSymbolLoc_ptr)
  {
    v8[6] = MEMORY[0x277D85DD0];
    v8[7] = 3221225472;
    v8[8] = __getCRBluetoothIndicatesInCarSymbolLoc_block_invoke;
    v8[9] = &unk_278BC7CE0;
    v9 = &v10;
    v6 = CarKitLibrary();
    v11[3] = dlsym(v6, "CRBluetoothIndicatesInCar");
    getCRBluetoothIndicatesInCarSymbolLoc_ptr = *(v9[1] + 24);
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v5)
  {
    carPlayHelperWiFi_updateCarKitInCarStatus_cold_1();
  }

  v5(v8);
  dispatch_semaphore_wait(*(v3 + 56), 0xFFFFFFFFFFFFFFFFLL);
  return carPlayHelperWiFi_updateCarKitNetworkStatus(a1);
}

intptr_t __carPlayHelperWiFi_updateCarKitInCarStatus_block_invoke(uint64_t a1, int a2, const __CFString *a3, void *a4)
{
  if (a3)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (gLogCategory_APBrowserCarWiFiHelper <= 50 && (gLogCategory_APBrowserCarWiFiHelper != -1 || _LogCategory_Initialize()))
  {
    v8 = "No";
    if (v7)
    {
      v8 = "Yes";
    }

    LogPrintF(&gLogCategory_APBrowserCarWiFiHelper, "OSStatus carPlayHelperWiFi_updateCarKitInCarStatus(APCarPlayHelperRef)_block_invoke", 33554482, "CRBluetoothIndicatesInCar: %@ in car: %s %?@\n", a3, v8, a4 != 0, a4);
  }

  if (a4)
  {
    if ([a4 code])
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    if ((v9 & 1) == 0)
    {
      return dispatch_semaphore_signal(*(*(a1 + 32) + 56));
    }
  }

  else if (!v7)
  {
    return dispatch_semaphore_signal(*(*(a1 + 32) + 56));
  }

  v10 = CFGetAllocator(*(a1 + 40));
  *(*(a1 + 32) + 64) = CFStringCreateCopy(v10, a3);
  v11 = *(a1 + 32);
  *(v11 + 120) = 1;
  if (*(v11 + 128))
  {
    APSEventRecorderRecordEvent();
  }

  v12 = LogCategoryCopyOSLogHandle();
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = MEMORY[0x277D86220];
  }

  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23D2A9000, v14, OS_SIGNPOST_EVENT, 0x2B8D07D0uLL, "AP_SIGNPOST_CAR_CARENTERED", "", buf, 2u);
  }

  if (v13)
  {
  }

  return dispatch_semaphore_signal(*(*(a1 + 32) + 56));
}

void *carPlayHelperWiFi_updateCarKitNetworkStatus(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theDict[0] = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (*DerivedStorage)
  {
    v18 = 0;
    v4 = 0;
  }

  else
  {
    v3 = DerivedStorage;
    v4 = APConnectivityHelperCopyCurrentWiFiNetworkInfo(*(DerivedStorage + 72), theDict);
    if (!v4)
    {
      Value = CFDictionaryGetValue(theDict[0], @"wifiNetworkCarPlayUUID");
      v6 = Value;
      if (Value)
      {
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __carPlayHelperWiFi_updateCarKitNetworkStatus_block_invoke;
        v25 = &unk_278BC7D20;
        v26 = &v29;
        v27 = Value;
        v28 = v3;
        v35 = 0;
        v36 = &v35;
        v37 = 0x2020000000;
        v7 = getCRAllowsConnectionsForWiFiUUIDSymbolLoc_ptr;
        v38 = getCRAllowsConnectionsForWiFiUUIDSymbolLoc_ptr;
        if (!getCRAllowsConnectionsForWiFiUUIDSymbolLoc_ptr)
        {
          theDict[1] = MEMORY[0x277D85DD0];
          theDict[2] = 3221225472;
          theDict[3] = __getCRAllowsConnectionsForWiFiUUIDSymbolLoc_block_invoke;
          theDict[4] = &unk_278BC7CE0;
          v34 = &v35;
          v8 = CarKitLibrary();
          v9 = dlsym(v8, "CRAllowsConnectionsForWiFiUUID");
          *(v34[1] + 24) = v9;
          getCRAllowsConnectionsForWiFiUUIDSymbolLoc_ptr = *(v34[1] + 24);
          v7 = v36[3];
        }

        _Block_object_dispose(&v35, 8);
        if (!v7)
        {
          v20 = [MEMORY[0x277CCA890] currentHandler];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_CRAllowsConnectionsForWiFiUUID(NSString *, void (^)(BOOL, NSError *))"}];
          result = [v20 handleFailureInFunction:v21 file:@"APCarPlayHelperWiFi.m" lineNumber:50 description:{@"%s", dlerror(), v22, v23, v24, v25, v26, v27, v28, v29}];
          __break(1u);
          return result;
        }

        v7(v6, &v22);
        dispatch_semaphore_wait(*(v3 + 56), 0xFFFFFFFFFFFFFFFFLL);
        if (!*(v30 + 24))
        {
          goto LABEL_12;
        }

        if (FigCFEqual())
        {
LABEL_19:
          if (gLogCategory_APBrowserCarWiFiHelper <= 50 && (gLogCategory_APBrowserCarWiFiHelper != -1 || _LogCategory_Initialize()))
          {
            v11 = FigCFEqual();
            v12 = "the same as";
            if (!v11)
            {
              v12 = "different than";
            }

            LogPrintF(&gLogCategory_APBrowserCarWiFiHelper, "OSStatus carPlayHelperWiFi_updateCarKitNetworkStatus(APCarPlayHelperRef)", 33554482, "Current WiFi network is %s the previously connected network\n", v12);
          }

          v15 = *(v3 + 96);
          *(v3 + 96) = v6;
          if (v6)
          {
            CFRetain(v6);
          }

          if (v15)
          {
            CFRelease(v15);
          }

          v14 = *(v3 + 88);
LABEL_34:
          v16 = CFGetAllocator(a1);
          Mutable = CFDictionaryCreateMutable(v16, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v18 = Mutable;
          if (Mutable)
          {
            if (v14)
            {
              CFDictionarySetValue(Mutable, @"interfaceName", v14);
              if (*(v3 + 120))
              {
                CFDictionarySetValue(v18, @"setUpForOSTransaction", *MEMORY[0x277CBED28]);
                *(v3 + 120) = 0;
              }
            }

            carPlayHelperWiFi_dispatchEvent(a1, 0, v18);
            v4 = 0;
          }

          else
          {
            APSLogErrorAt();
            v18 = 0;
            v4 = 4294954510;
          }

          goto LABEL_39;
        }
      }

      else if (!*(v30 + 24))
      {
        goto LABEL_12;
      }

      if (!*(v3 + 64) && FigCFEqual())
      {
        goto LABEL_19;
      }

LABEL_12:
      if (gLogCategory_APBrowserCarWiFiHelper <= 50 && (gLogCategory_APBrowserCarWiFiHelper != -1 || _LogCategory_Initialize()))
      {
        if (*(v30 + 24))
        {
          v10 = "doesn't match";
        }

        else
        {
          v10 = "not allowed";
        }

        LogPrintF(&gLogCategory_APBrowserCarWiFiHelper, "OSStatus carPlayHelperWiFi_updateCarKitNetworkStatus(APCarPlayHelperRef)", 33554482, "Current WiFi network %s\n", v10);
      }

      v13 = *(v3 + 96);
      if (v13)
      {
        CFRelease(v13);
        v14 = 0;
        *(v3 + 96) = 0;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_34;
    }

    APSLogErrorAt();
    v18 = 0;
  }

LABEL_39:
  if (theDict[0])
  {
    CFRelease(theDict[0]);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  _Block_object_dispose(&v29, 8);
  return v4;
}

void sub_23D2EC93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCRBluetoothIndicatesInCarSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CarKitLibrary();
  result = dlsym(v2, "CRBluetoothIndicatesInCar");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRBluetoothIndicatesInCarSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CarKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CarKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278BC7D00;
    v4 = 0;
    CarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CarKitLibraryCore_frameworkLibrary;
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    CarKitLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __CarKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCRAllowsConnectionsForWiFiUUIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CarKitLibrary();
  result = dlsym(v2, "CRAllowsConnectionsForWiFiUUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCRAllowsConnectionsForWiFiUUIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __carPlayHelperWiFi_handleConnectivityHelperEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 3)
  {
LABEL_4:
    *(*(*(a1 + 32) + 8) + 24) = carPlayHelperWiFi_networkChanged(*(a1 + 40), *(a1 + 48));
    v3 = *(*(*(a1 + 32) + 8) + 24);
    if (v3)
    {
      __carPlayHelperWiFi_handleConnectivityHelperEvent_block_invoke_cold_2(v3);
    }

    goto LABEL_16;
  }

  if (v2 != 103)
  {
    if (v2 != 9)
    {
      if (gLogCategory_APBrowserCarWiFiHelper > 30)
      {
        goto LABEL_16;
      }

      if (gLogCategory_APBrowserCarWiFiHelper == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_16;
        }

        v2 = *(a1 + 56);
      }

      LogPrintF(&gLogCategory_APBrowserCarWiFiHelper, "void carPlayHelperWiFi_handleConnectivityHelperEvent(APConnectivityHelperRef, APConnectivityHelperEventType, CFDictionaryRef, CFTypeRef)_block_invoke", 33554462, "Unrecognized ConnectivityHelper event %d\n", v2);
      goto LABEL_16;
    }

    goto LABEL_4;
  }

  if (gLogCategory_APBrowserCarWiFiHelper <= 30 && (gLogCategory_APBrowserCarWiFiHelper != -1 || _LogCategory_Initialize()))
  {
    __carPlayHelperWiFi_handleConnectivityHelperEvent_block_invoke_cold_1();
  }

  v4 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 88);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 88) = 0;
    carPlayHelperWiFi_networkChanged(v4, 0);
  }

  carPlayHelperWiFi_dispatchEvent(v4, 2, 0);
LABEL_16:
  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {

    CFRelease(v8);
  }
}

uint64_t carPlayHelperWiFi_networkChanged(void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 0;
  }

  v5 = DerivedStorage;
  if (a2)
  {
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    v7 = CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    v9 = CFDictionaryGetInt64() == 0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    TypedValue = 0;
    v9 = 1;
  }

  if (gLogCategory_APBrowserCarWiFiHelper <= 50 && (gLogCategory_APBrowserCarWiFiHelper != -1 || _LogCategory_Initialize()))
  {
    v10 = "Y";
    if (v9)
    {
      v10 = "N";
    }

    LogPrintF(&gLogCategory_APBrowserCarWiFiHelper, "OSStatus carPlayHelperWiFi_networkChanged(APCarPlayHelperRef, CFDictionaryRef)", 33554482, "Network changed to: %@, IsCarPlay: %s, CarPlay UUID: %@\n", v7, v10, v8);
  }

  if (v9)
  {
    v11 = v5[11];
    if (v11)
    {
      CFRelease(v11);
      v5[11] = 0;
    }

    APConnectivityHelperDeregisterActivity(v5[9], a1, 0);
    v12 = CMBaseObjectGetDerivedStorage();
    if (!*v12)
    {
      v13 = v12;
      if (notify_is_valid_token(*(v12 + 40)))
      {
        notify_cancel(*(v13 + 40));
        *(v13 + 40) = -1;
        v14 = *(v13 + 64);
        if (v14)
        {
          CFRelease(v14);
          *(v13 + 64) = 0;
        }

        updated = carPlayHelperWiFi_updateCarKitNetworkStatus(a1);
        v16 = updated;
        if (updated)
        {
          carPlayHelperWiFi_networkChanged_cold_2(updated);
        }

        return v16;
      }
    }

    return 0;
  }

  if (v5[4])
  {
    APSPowerAssertionRaiseTemporary();
  }

  v17 = v5[11];
  v5[11] = TypedValue;
  if (TypedValue)
  {
    CFRetain(TypedValue);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v5[16])
  {
    APSEventRecorderRecordEvent();
  }

  v18 = LogCategoryCopyOSLogHandle();
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = MEMORY[0x277D86220];
  }

  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23D2A9000, v20, OS_SIGNPOST_EVENT, 0x2B8D07E4uLL, "AP_SIGNPOST_CAR_WIFI_LINKUP", "", buf, 2u);
  }

  if (v19)
  {
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v21 = CMBaseObjectGetDerivedStorage();
  v22 = v21;
  if (!*v21 && !notify_is_valid_token(*(v21 + 40)))
  {
    v23 = dispatch_queue_create("APCarPlayHelperWiFiCarKitNotifyQueue", 0);
    if (v23)
    {
      v24 = v23;
      if (a1)
      {
        CFRetain(a1);
      }

      dispatch_set_context(v24, a1);
      dispatch_set_finalizer_f(v24, FigCFRelease);
      *buf = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __carPlayHelperWiFi_registerForCarKitInCarNotification_block_invoke;
      v31 = &unk_278BC7D70;
      v33 = a1;
      v34 = v22;
      v32 = &v35;
      v25 = notify_register_dispatch("com.apple.carplay.in-car", (v22 + 40), v24, buf);
      *(v36 + 6) = v25;
      if (v25 || (v26 = carPlayHelperWiFi_updateCarKitInCarStatus(a1), (*(v36 + 6) = v26) != 0))
      {
        APSLogErrorAt();
      }

      dispatch_release(v24);
    }

    else
    {
      APSLogErrorAt();
      *(v36 + 6) = -6728;
    }
  }

  v16 = *(v36 + 6);
  _Block_object_dispose(&v35, 8);
  if (v16)
  {
    carPlayHelperWiFi_networkChanged_cold_1(v16);
  }

  else
  {
    APConnectivityHelperRegisterActivity(v5[9], a1, 0);
  }

  return v16;
}

void __carPlayHelperWiFi_registerForCarKitInCarNotification_block_invoke(void *a1, int a2)
{
  v4 = a1[5];
  if (v4)
  {
    CFRetain(v4);
    v5 = a1[5];
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[6];
  v7 = *(v6 + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __carPlayHelperWiFi_registerForCarKitInCarNotification_block_invoke_2;
  v8[3] = &unk_278BC7D48;
  v9 = a2;
  v8[4] = a1[4];
  v8[5] = v6;
  v8[6] = v5;
  dispatch_async(v7, v8);
}

uint64_t APTransportStreamUnbufferedCreate(uint64_t a1, const void *a2, uint64_t a3, const void *a4, const void *a5, const __CFDictionary *a6, CFTypeRef *a7)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    APTransportStreamUnbufferedCreate_cold_5();
    return 4294960591;
  }

  FigTransportStreamGetClassID();
  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    v20 = v13;
    APTransportStreamUnbufferedCreate_cold_1(v13);
    return v20;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v15 = CFRetain(a2);
  }

  else
  {
    v15 = 0;
  }

  DerivedStorage[4] = v15;
  *DerivedStorage = a3;
  DerivedStorage[1] = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  DerivedStorage[5] = CFRetain(a5);
  SNPrintF(label, 64, "APTransportStreamUnbuffered.%{ptr}", 0);
  v16 = dispatch_queue_create(label, 0);
  DerivedStorage[2] = v16;
  if (!v16)
  {
    APTransportStreamUnbufferedCreate_cold_4();
    return 4294950685;
  }

  SNPrintF(label, 64, "APTransportStreamUnbuffered.%{ptr}.notification", 0);
  v17 = dispatch_queue_create(label, 0);
  DerivedStorage[13] = v17;
  if (!v17)
  {
    APTransportStreamUnbufferedCreate_cold_3();
    return 4294950685;
  }

  SNPrintF(label, 64, "APTransportStreamUnbuffered.%{ptr}.data", 0);
  v18 = dispatch_queue_create(label, 0);
  DerivedStorage[8] = v18;
  if (!v18)
  {
    APTransportStreamUnbufferedCreate_cold_2();
    return 4294950685;
  }

  if (a6)
  {
    Value = CFDictionaryGetValue(a6, @"EventRecorder");
    DerivedStorage[7] = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  if (gLogCategory_APTransportStreamUnbuffered <= 50 && (gLogCategory_APTransportStreamUnbuffered != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APTransportStreamUnbuffered, "OSStatus APTransportStreamUnbufferedCreate(CFAllocatorRef, FigTransportSessionRef, FigTransportStreamID, CFStringRef, APTransportConnectionRef, CFDictionaryRef, FigTransportStreamRef *)", 33554482, "[%{ptr}] APTransportStreamUnbuffered with name %@ created.\n", 0, a4);
  }

  v20 = 0;
  *a7 = 0;
  return v20;
}

__CFString *stream_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APTransportStreamUnbuffered %p '%@'>", a1, *(DerivedStorage + 8));
  return Mutable;
}

uint64_t stream_DumpHierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 40);
  v11 = (*(a5 + 16))(a5, a3, "Stream:[%{ptr}] (Unbuffered) %''@ Parent:[%{ptr}]\n", a1, *(DerivedStorage + 8), a2);
  if (v11)
  {
    v16 = v11;
    stream_DumpHierarchy_cold_1(v11);
    return v16;
  }

  APSHierarchyReporterProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v13 = *(ProtocolVTable + 16)) != 0)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      v15 = v14(v10, a1, a3 + 1, @"send", a5);
      v16 = v15;
      if (v15 != -12782 && v15 != -12788)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v16 = 4294954514;
    }
  }

  else
  {
    v16 = 4294954508;
  }

  v16 = (*(a5 + 16))(a5, a3 + 1, "[Error] Object:[%{ptr}]%?s%?''@ cannot be dumped (error %#m) Parent:[%{ptr}]\n", v10, @"send", " ", @"send", @"send", v16, a1);
LABEL_12:
  if (v16)
  {
    stream_DumpHierarchy_cold_2(v16);
  }

  return v16;
}

uint64_t stream_WaitUntilConnectedEx(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __stream_WaitUntilConnectedEx_block_invoke;
  v5[3] = &unk_278BC7FA8;
  v5[4] = &v6;
  v5[5] = DerivedStorage;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __stream_handleEventFromSendConnection_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  if (*(DerivedStorage + 24))
  {
    v10 = 4294950679;
LABEL_51:
    __stream_handleEventFromSendConnection_block_invoke_cold_3(v10);
    goto LABEL_45;
  }

  v6 = DerivedStorage;
  if (v2 == 7)
  {
    v7 = 30;
  }

  else
  {
    v7 = 50;
  }

  if (v7 >= gLogCategory_APTransportStreamUnbuffered && (gLogCategory_APTransportStreamUnbuffered != -1 || _LogCategory_Initialize()))
  {
    if ((v2 - 1) >= 6)
    {
      v8 = "PackageReceived";
      v9 = "?";
      if (v2 == 8)
      {
        v9 = "PackageFailedToSend";
      }

      if (v2 != 7)
      {
        v8 = v9;
      }
    }

    else
    {
      v8 = off_278BC8038[v2 - 1];
    }

    LogPrintF(&gLogCategory_APTransportStreamUnbuffered, "OSStatus stream_eventReceived(FigTransportStreamRef, APTransportConnectionEvent, CFTypeRef)", v7 | 0x2000000u, "[%{ptr}] Event received: %s data %{ptr}\n", v3, v8, v4);
  }

  if (!*(v6 + 25))
  {
    if ((v2 - 4) <= 2)
    {
      v10 = 0;
      *(v6 + 28) = v2;
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v10 = 0;
  if (v2 <= 5)
  {
    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_42;
      }

      *(v6 + 28) = 0;
      CFRetain(v3);
      v11 = *(v6 + 104);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __stream_eventReceived_block_invoke;
      block[3] = &__block_descriptor_tmp_32;
      block[4] = v6;
      block[5] = v3;
      dispatch_async(v11, block);
      goto LABEL_41;
    }

    *(v6 + 28) = 0;
    if (gLogCategory_APTransportStreamUnbuffered <= 90 && (gLogCategory_APTransportStreamUnbuffered != -1 || _LogCategory_Initialize()))
    {
      __stream_handleEventFromSendConnection_block_invoke_cold_2(v3);
      if (v4)
      {
LABEL_32:
        v13 = CFGetTypeID(v4);
        if (v13 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
          FigCreateBlockBufferCopyingMemoryBlock();
        }
      }
    }

    else if (v4)
    {
      goto LABEL_32;
    }

    CFRetain(v3);
    if (v21)
    {
      CFRetain(v21);
      v14 = v21;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v6 + 104);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 0x40000000;
    v19[2] = __stream_eventReceived_block_invoke_2;
    v19[3] = &__block_descriptor_tmp_34;
    v19[4] = v6;
    v19[5] = v3;
    v19[6] = v14;
    v16 = v19;
LABEL_40:
    dispatch_async(v15, v16);
    APTransportSessionHandleStreamEvent(*(v6 + 32), v3, 0, v4);
LABEL_41:
    v10 = 0;
    goto LABEL_42;
  }

  if (v2 == 6)
  {
    if (v4)
    {
      v12 = CFGetTypeID(v4);
      if (v12 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
        FigCreateBlockBufferCopyingMemoryBlock();
      }
    }

    CFRetain(v3);
    v15 = *(v6 + 104);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 0x40000000;
    v18[2] = __stream_eventReceived_block_invoke_3;
    v18[3] = &__block_descriptor_tmp_35;
    v18[4] = v6;
    v18[5] = v3;
    v18[6] = 0;
    v16 = v18;
    goto LABEL_40;
  }

  if (v2 == 7)
  {
    __stream_handleEventFromSendConnection_block_invoke_cold_1(v3, v4, &valuePtr);
    v10 = valuePtr;
  }

LABEL_42:
  if (v21)
  {
    CFRelease(v21);
  }

  if (v10)
  {
    goto LABEL_51;
  }

LABEL_45:
  v17 = *(a1 + 40);
  if (v17)
  {
    CFRelease(v17);
  }

  CFRelease(*(a1 + 32));
}

void __stream_eventReceived_block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 120);
  if (v3)
  {
    v3(a1[5], 1668179564, a1[6], *(v2 + 112));
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];

  CFRelease(v5);
}