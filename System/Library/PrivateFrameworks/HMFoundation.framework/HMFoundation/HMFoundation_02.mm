void sub_22AE52348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AE5311C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AE53400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AE53810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AE53BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _HMFPreconditionFailure(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = @"(null)";
  }

  v5 = [@"Precondition not satisfied: " stringByAppendingString:v4];
  v6 = [v2 exceptionWithName:v3 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

__CFString *HMFProductPlatformToString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_2786E7BD8[a1 - 1];
  }
}

uint64_t HMFProductClassFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  v2 = [@"iPhone" lowercaseString];
  v3 = [v1 containsString:v2];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [@"iPod" lowercaseString];
    v6 = [v1 containsString:v5];

    if (v6)
    {
      v4 = 2;
    }

    else
    {
      v7 = [@"iPad" lowercaseString];
      v8 = [v1 containsString:v7];

      if (v8)
      {
        v4 = 3;
      }

      else
      {
        v9 = [@"AppleTV" lowercaseString];
        v10 = [v1 containsString:v9];

        if (v10)
        {
          v4 = 4;
        }

        else
        {
          v11 = [@"Watch" lowercaseString];
          v12 = [v1 containsString:v11];

          if (v12)
          {
            v4 = 5;
          }

          else
          {
            v13 = [@"iMac" lowercaseString];
            v14 = [v1 containsString:v13];

            if (v14)
            {
              v4 = 7;
            }

            else
            {
              v15 = [@"MacBook" lowercaseString];
              v16 = [v1 containsString:v15];

              if (v16)
              {
                v4 = 8;
              }

              else
              {
                v17 = [@"Macmini" lowercaseString];
                v18 = [v1 containsString:v17];

                if (v18)
                {
                  v4 = 9;
                }

                else
                {
                  v19 = [@"MacPro" lowercaseString];
                  v20 = [v1 containsString:v19];

                  if (v20)
                  {
                    v4 = 10;
                  }

                  else
                  {
                    v21 = [@"AudioAccessory" lowercaseString];
                    v22 = [v1 containsString:v21];

                    if (v22)
                    {
                      v4 = 6;
                    }

                    else
                    {
                      v23 = [@"RealityDevice" lowercaseString];
                      v24 = [v1 containsString:v23];

                      if (v24)
                      {
                        v4 = 11;
                      }

                      else
                      {
                        v4 = 0;
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

  return v4;
}

__CFString *HMFProductClassToString(uint64_t a1)
{
  if ((a1 - 1) > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_2786E7B50[a1 - 1];
  }
}

__CFString *HMFProductVariantToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Customer";
  }

  else
  {
    return off_2786E7C00[a1 - 1];
  }
}

__CFString *HMFProductColorToString(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown (%@)", v3];
  }

  else
  {
    v1 = off_2786E7BA8[a1];
  }

  return v1;
}

uint64_t __HMFGetDefaultOSLogHandle_block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"default", @"com.apple.HomeKit");
  v1 = qword_280AFC648;
  qword_280AFC648 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

__CFString *HMFGetActivityIdentifier(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CCACA8];
    v2 = [a1 identifier];
    v3 = [v2 shortDescription];
    v4 = [v1 stringWithFormat:@"[%@] ", v3];
  }

  else
  {
    v4 = &stru_283EBDA30;
  }

  return v4;
}

__CFSocket *create_socket(CFSocketNativeHandle sock, CFSocketContext *context)
{
  if (sock < 0)
  {
    return 0;
  }

  v2 = *MEMORY[0x277CBECE8];
  v3 = CFSocketCreateWithNative(*MEMORY[0x277CBECE8], sock, 1uLL, SocketReadCallback, context);
  v4 = v3;
  if (v3 && (CFSocketGetSocketFlags(v3) & 0x80) == 0)
  {
    __assert_rtn("create_socket", "HMFNetworkDiagnosticPing.m", 383, "CFSocketGetSocketFlags(socket) & kCFSocketCloseOnInvalidate");
  }

  RunLoopSource = CFSocketCreateRunLoopSource(v2, v4, 0);
  if (!RunLoopSource)
  {
    return 0;
  }

  v6 = RunLoopSource;
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, v6, *MEMORY[0x277CBF058]);
  CFRelease(v6);
  return v4;
}

void SocketReadCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 _readDataFromSocket:a1];
}

void sub_22AE58914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AE58C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22AE59574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AE597A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AE59A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HMFQualityOfServiceCompare(uint64_t a1, uint64_t a2)
{
  v2 = 1;
  if (a1 <= a2)
  {
    v2 = -1;
  }

  v3 = -1;
  if (a1 >= 25)
  {
    v3 = 1;
  }

  if (a2 == -1)
  {
    v2 = v3;
  }

  v4 = 1;
  if (a2 >= 25)
  {
    v4 = -1;
  }

  if (a1 == -1)
  {
    v2 = v4;
  }

  if (a1 == a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

__CFString *HMFQualityOfServiceToString(uint64_t a1)
{
  if (a1 <= 16)
  {
    if (a1 == -1)
    {
      return @"Default";
    }

    if (a1 == 9)
    {
      return @"Background";
    }
  }

  else
  {
    switch(a1)
    {
      case 17:
        return @"Utility";
      case 25:
        return @"User Initiated";
      case 33:
        return @"User Interactive";
    }
  }

  return @"Unknown";
}

id _HMFValidateMessagePayload(id a1)
{
  if (a1)
  {
    a1 = validatePayloadObject(a1);
    v1 = vars8;
  }

  return a1;
}

id validatePayloadObject(void *a1)
{
  v1 = a1;
  v2 = CFGetTypeID(v1);
  if (v2 == CFArrayGetTypeID())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = @": NSMutableArray";
LABEL_17:
      v4 = [(__CFString *)v3 mutableCopy];
      goto LABEL_20;
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__2;
    v14 = __Block_byref_object_dispose__2;
    v15 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __validatePayloadObject_block_invoke;
    v9[3] = &unk_2786E7D60;
    v9[4] = &v10;
    [v1 enumerateObjectsUsingBlock:v9];
  }

  else
  {
    if (v2 != CFDictionaryGetTypeID())
    {
      if (v2 == CFSetGetTypeID())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = @": NSMutableSet";
          goto LABEL_17;
        }

        v10 = 0;
        v11 = &v10;
        v12 = 0x3032000000;
        v13 = __Block_byref_object_copy__2;
        v14 = __Block_byref_object_dispose__2;
        v15 = 0;
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __validatePayloadObject_block_invoke_3;
        v7[3] = &unk_2786E7DB0;
        v7[4] = &v10;
        [v1 enumerateObjectsUsingBlock:v7];
        _Block_object_dispose(&v10, 8);
      }

      else if (v2 == CFStringGetTypeID())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = [v1 copy];

          if (v5 != v1)
          {
            v3 = @": NSMutableString";
            goto LABEL_17;
          }
        }
      }

      v4 = 0;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = @": NSMutableDictionary";
      goto LABEL_17;
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__2;
    v14 = __Block_byref_object_dispose__2;
    v15 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __validatePayloadObject_block_invoke_2;
    v8[3] = &unk_2786E7D88;
    v8[4] = &v10;
    [v1 enumerateKeysAndObjectsUsingBlock:v8];
  }

  v4 = v11[5];
  _Block_object_dispose(&v10, 8);

LABEL_20:
  return v4;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __validatePayloadObject_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = validatePayloadObject(a2);
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (v7)
  {
    v10 = *(*(*(a1 + 32) + 8) + 40);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%tu]", a3];
    [v10 insertString:v11 atIndex:0];

    *a4 = 1;
  }
}

void __validatePayloadObject_block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19 = a2;
  v7 = a3;
  v8 = validatePayloadObject(v19);
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (v8)
  {
    [*(*(*(a1 + 32) + 8) + 40) insertString:@": invalid dictionary key" atIndex:0];
  }

  else
  {
    v11 = validatePayloadObject(v7);
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (!v11)
    {
      goto LABEL_6;
    }

    v14 = *(*(*(a1 + 32) + 8) + 40);
    v15 = MEMORY[0x277CCACA8];
    v16 = [v19 description];
    v17 = [v16 _stringRepresentation];
    v18 = [v15 stringWithFormat:@"[%@]", v17];
    [v14 insertString:v18 atIndex:0];
  }

  *a4 = 1;
LABEL_6:
}

void __validatePayloadObject_block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = validatePayloadObject(a2);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (v5)
  {
    *a3 = 1;
  }
}

void sortKeysAndValuesOfDictionary(void *a1, void *a2, void **a3, void **a4)
{
  v7 = _MergedGlobals_69;
  v8 = a2;
  v9 = a1;
  if (v7 != -1)
  {
    dispatch_once(&_MergedGlobals_69, &__block_literal_global_35);
  }

  v16 = qword_280AFC678;
  v10 = [v9 allKeys];
  v11 = [v10 sortedArrayUsingComparator:v8];

  v12 = [v9 objectsForKeys:v11 notFoundMarker:v16];

  v13 = *a3;
  *a3 = v11;
  v14 = v11;

  v15 = *a4;
  *a4 = v12;
}

uint64_t __sortKeysAndValuesOfDictionary_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D82BB8]);
  v1 = qword_280AFC678;
  qword_280AFC678 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __updateName(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 store] == a1)
  {
    v4 = SCDynamicStoreCopyLocalHostName(0);
    os_unfair_lock_lock_with_options();
    if (HMFEqualObjects(*(v6 + 3), v4))
    {
      os_unfair_lock_unlock(v6 + 2);
    }

    else
    {
      objc_storeStrong(v6 + 3, v4);
      os_unfair_lock_unlock(v6 + 2);
      v5 = [v6 delegate];
      [v5 dataSource:v6 didUpdateName:v4];
    }
  }
}

void sub_22AE61868(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 end];
  }

  _Unwind_Resume(exception_object);
}

id HMFTimeIntervalDescription(double a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v2 sinceDate:a1];
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [v4 components:248 fromDate:v2 toDate:v3 options:0];

  v6 = [v5 hmf_localTimeDescription];

  return v6;
}

uint64_t __txtRecordDictionary_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
  if (a3 == 4)
  {
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:a4 length:a5];
    v12 = [v10 initWithData:v11 encoding:4];

    if (!v12)
    {
      v13 = 0;
      goto LABEL_7;
    }

    [*(a1 + 32) setObject:v12 forKeyedSubscript:v9];
  }

  else if (a3 == 3)
  {
    [*(a1 + 32) setObject:&stru_283EBDA30 forKeyedSubscript:v9];
  }

  v13 = 1;
LABEL_7:

  return v13;
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYSetupAssistantNeedsToRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantNeedsToRunSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __migrationFinishedCallback(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v4;
    v8 = HMFGetOSLogHandle(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier(v6);
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Received notification migration has finished", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [v6 delegate];
    [v10 dataSource:v6 didUpdateMigrating:0];
  }
}

void *__getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYSetupAssistantFinishedDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *HMFDigestAlgorithmToString(uint64_t a1)
{
  if ((a1 - 2) > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_2786E7EB0[a1 - 2];
  }
}

uint64_t HMFDigestAlgorithmFromString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"SHA1"] && objc_msgSend(v1, "caseInsensitiveCompare:", @"SHA-1"))
  {
    if ([v1 caseInsensitiveCompare:@"SHA224"] && objc_msgSend(v1, "caseInsensitiveCompare:", @"SHA-224"))
    {
      if ([v1 caseInsensitiveCompare:@"SHA256"] && objc_msgSend(v1, "caseInsensitiveCompare:", @"SHA-256"))
      {
        if ([v1 caseInsensitiveCompare:@"SHA384"] && objc_msgSend(v1, "caseInsensitiveCompare:", @"SHA-384"))
        {
          if ([v1 caseInsensitiveCompare:@"SHA512"])
          {
            v2 = 8 * ([v1 caseInsensitiveCompare:@"SHA-512"] == 0);
          }

          else
          {
            v2 = 8;
          }
        }

        else
        {
          v2 = 7;
        }
      }

      else
      {
        v2 = 6;
      }
    }

    else
    {
      v2 = 5;
    }
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

id HMFMainThreadAsyncContext()
{
  if (_MergedGlobals_74 != -1)
  {
    dispatch_once(&_MergedGlobals_74, &__block_literal_global_44);
  }

  v1 = qword_280AFC6D0;

  return v1;
}

uint64_t __HMFMainThreadAsyncContext_block_invoke()
{
  v0 = objc_alloc_init(_HMFMainThreadAsyncContext);
  v1 = qword_280AFC6D0;
  qword_280AFC6D0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id HMFCallerAsyncContext()
{
  if (qword_280AFC6D8 != -1)
  {
    dispatch_once(&qword_280AFC6D8, &__block_literal_global_23);
  }

  v1 = qword_280AFC6E0;

  return v1;
}

uint64_t __HMFCallerAsyncContext_block_invoke()
{
  v0 = objc_alloc_init(_HMFCallerAsyncContext);
  v1 = qword_280AFC6E0;
  qword_280AFC6E0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id HMFCurrentAsyncContext()
{
  v0 = *_HMFThreadLocalAsyncContext();
  if (!v0)
  {
    v0 = HMFImplicitDispatchContext();
    if (!v0)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v0 = HMFMainThreadAsyncContext();
      }

      else
      {
        v0 = 0;
      }
    }
  }

  return v0;
}

void hmdWiFiClientDeviceAttachmentCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v7 = HMFGetOSLogHandle(0, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier(0);
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] Device attachement callback: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [v4 startWithWiFiDevice:a2];
}

void hmdWiFiClientWoWStateChangedCallback(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = [v4 workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __hmdWiFiClientWoWStateChangedCallback_block_invoke;
  v7[3] = &unk_2786E7F18;
  v8 = v4;
  v9 = a2;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t dynamicStoreCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle(0, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier(0);
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] captive state changed", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  return [a3 _invalidateCaptiveState];
}

void __hmdWiFiClientWoWStateChangedCallback_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dataSource:*(a1 + 32) didChangeWoWState:*(a1 + 40) != 0];
}

BOOL HMFAreStringsEqualIgnoringCase(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 caseInsensitiveCompare:v4] == 0;
    }
  }

  return v6;
}

void __HMFObjectDefaultDescriptionOptions_block_invoke()
{
  v0 = +[HMFProductInfo productInfo];
  _MergedGlobals_76 = 4 * ([v0 productVariant] != 3);
}

void sub_22AE6ACE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __HMFLocationManagerOperationStartMonitoring(void *a1)
{
  v1 = a1;
  v2 = [v1 underlyingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ____HMFLocationManagerOperationStartMonitoring_block_invoke;
  block[3] = &unk_2786E6C80;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

uint64_t __CoreLocationLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_22AE6C0E0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AE6C1F8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AE6C290(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22AE6D8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMFBooleanToString(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

__CFString *HMFEnabledStatusToString(int a1)
{
  if (a1)
  {
    return @"Enabled";
  }

  else
  {
    return @"Disabled";
  }
}

void _networkReachabilityChangeCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 object];

  [v7 handleNetworkReachabilityChange:a2];
}

__CFString *__SCNetworkReachabilityFlagsToString(unsigned int a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  if (a1)
  {
    for (i = 1; i - 1 < a1; i *= 2)
    {
      if ((i & a1) != 0)
      {
        if (i == 2)
        {
          v4 = @"Reachable";
          goto LABEL_8;
        }

        if (i == 0x40000)
        {
          v4 = @"WWAN";
LABEL_8:
          [v2 addObject:v4];
        }
      }
    }
  }

  if ([v2 hmf_isEmpty])
  {
    v5 = @"None";
  }

  else
  {
    v5 = [v2 componentsJoinedByString:{@", "}];
  }

  return v5;
}

void sub_22AE70AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

uint64_t HMFQOSClassFromQualityOfService(uint64_t a1)
{
  if (a1 == -1)
  {
    v1 = 21;
  }

  else
  {
    v1 = 0;
  }

  if (a1 <= 8)
  {
    v2 = v1;
  }

  else
  {
    v2 = 9;
  }

  if (a1 <= 16)
  {
    v3 = v2;
  }

  else
  {
    v3 = 17;
  }

  if (a1 <= 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 25;
  }

  if (a1 <= 32)
  {
    return v4;
  }

  else
  {
    return 33;
  }
}

void __notifyUpdatedTXTRecord(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (v5 && v3)
  {
    v4 = [v5 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 netService:v5 didUpdateTXTRecord:v3];
    }
  }
}

void sub_22AE736C8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void __HMFNetServiceUpdatePort(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = NSStringFromSelector(sel_port);
    [(os_unfair_lock_s *)v3 willChangeValueForKey:v4];

    os_unfair_lock_lock_with_options();
    *&v3[12]._os_unfair_lock_opaque = a2;
    os_unfair_lock_unlock(v3 + 2);
    v5 = NSStringFromSelector(sel_port);
    [(os_unfair_lock_s *)v3 didChangeValueForKey:v5];
  }
}