void __sec_protocol_configuration_set_ats_overrides_block_invoke_59(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v2 = *(a1 + 32);
    v3 = 138543362;
    v4 = v2;
    _os_log_fault_impl(&dword_1887D2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "App Transport Security exception %{public}@ is not a valid CIDR notation.", &v3, 0xCu);
  }
}

uint64_t SECSFAActionTapToRadarReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 5)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E70D6CA8[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_18885F3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5565(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_188860154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188863518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_188863870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1888645E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id getAAFAnalyticsEventSecurityClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAAFAnalyticsEventSecurityClass_softClass;
  v7 = getAAFAnalyticsEventSecurityClass_softClass;
  if (!getAAFAnalyticsEventSecurityClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAAFAnalyticsEventSecurityClass_block_invoke;
    v3[3] = &unk_1E70E1270;
    v3[4] = &v4;
    __getAAFAnalyticsEventSecurityClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188865308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getkSecurityRTCEventNameOctagonTrustLost()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkSecurityRTCEventNameOctagonTrustLostSymbolLoc_ptr;
  v9 = getkSecurityRTCEventNameOctagonTrustLostSymbolLoc_ptr;
  if (!getkSecurityRTCEventNameOctagonTrustLostSymbolLoc_ptr)
  {
    v1 = KeychainCircleLibrary();
    v7[3] = dlsym(v1, "kSecurityRTCEventNameOctagonTrustLost");
    getkSecurityRTCEventNameOctagonTrustLostSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCEventNameOctagonTrustLost(void)"];
    [v4 handleFailureInFunction:v5 file:@"OTClique.m" lineNumber:85 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18886546C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getkSecurityRTCEventCategoryAccountDataAccessRecovery()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkSecurityRTCEventCategoryAccountDataAccessRecoverySymbolLoc_ptr;
  v9 = getkSecurityRTCEventCategoryAccountDataAccessRecoverySymbolLoc_ptr;
  if (!getkSecurityRTCEventCategoryAccountDataAccessRecoverySymbolLoc_ptr)
  {
    v1 = KeychainCircleLibrary();
    v7[3] = dlsym(v1, "kSecurityRTCEventCategoryAccountDataAccessRecovery");
    getkSecurityRTCEventCategoryAccountDataAccessRecoverySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSNumber *getkSecurityRTCEventCategoryAccountDataAccessRecovery(void)"];
    [v4 handleFailureInFunction:v5 file:@"OTClique.m" lineNumber:79 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1888655D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getkSecurityRTCErrorDomain()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkSecurityRTCErrorDomainSymbolLoc_ptr;
  v9 = getkSecurityRTCErrorDomainSymbolLoc_ptr;
  if (!getkSecurityRTCErrorDomainSymbolLoc_ptr)
  {
    v1 = KeychainCircleLibrary();
    v7[3] = dlsym(v1, "kSecurityRTCErrorDomain");
    getkSecurityRTCErrorDomainSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCErrorDomain(void)"];
    [v4 handleFailureInFunction:v5 file:@"OTClique.m" lineNumber:86 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_188865734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkSecurityRTCErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeychainCircleLibrary();
  result = dlsym(v2, "kSecurityRTCErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecurityRTCErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *KeychainCircleLibrary()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!KeychainCircleLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __KeychainCircleLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/PrivateFrameworks/KeychainCircle.framework/KeychainCircle";
    KeychainCircleLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = KeychainCircleLibraryCore_frameworkLibrary;
  if (!KeychainCircleLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *KeychainCircleLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"OTClique.m" lineNumber:71 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __KeychainCircleLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  KeychainCircleLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkSecurityRTCEventCategoryAccountDataAccessRecoverySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeychainCircleLibrary();
  result = dlsym(v2, "kSecurityRTCEventCategoryAccountDataAccessRecovery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecurityRTCEventCategoryAccountDataAccessRecoverySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecurityRTCEventNameOctagonTrustLostSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeychainCircleLibrary();
  result = dlsym(v2, "kSecurityRTCEventNameOctagonTrustLost");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecurityRTCEventNameOctagonTrustLostSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAAFAnalyticsEventSecurityClass_block_invoke(uint64_t a1)
{
  KeychainCircleLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AAFAnalyticsEventSecurity");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAAFAnalyticsEventSecurityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAAFAnalyticsEventSecurityClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"OTClique.m" lineNumber:77 description:{@"Unable to find class %s", "AAFAnalyticsEventSecurity"}];

    __break(1u);
  }
}

void sub_18886618C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188866B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getKCPairingChannelClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getKCPairingChannelClass_softClass;
  v7 = getKCPairingChannelClass_softClass;
  if (!getKCPairingChannelClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getKCPairingChannelClass_block_invoke;
    v3[3] = &unk_1E70E1270;
    v3[4] = &v4;
    __getKCPairingChannelClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1888671EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getKCPairingChannelClass_block_invoke(uint64_t a1)
{
  KeychainCircleLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("KCPairingChannel");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getKCPairingChannelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKCPairingChannelClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"OTClique.m" lineNumber:75 description:{@"Unable to find class %s", "KCPairingChannel"}];

    __break(1u);
  }
}

void sub_188867B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose((v22 - 144), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188868814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkSecurityRTCEventNameEstablishSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeychainCircleLibrary();
  result = dlsym(v2, "kSecurityRTCEventNameEstablish");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecurityRTCEventNameEstablishSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_188869348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void *__getkSecurityRTCEventNameCliqueMemberIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeychainCircleLibrary();
  result = dlsym(v2, "kSecurityRTCEventNameCliqueMemberIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecurityRTCEventNameCliqueMemberIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_188869DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getkSecurityRTCFieldAccountIsG()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkSecurityRTCFieldAccountIsGSymbolLoc_ptr;
  v9 = getkSecurityRTCFieldAccountIsGSymbolLoc_ptr;
  if (!getkSecurityRTCFieldAccountIsGSymbolLoc_ptr)
  {
    v1 = KeychainCircleLibrary();
    v7[3] = dlsym(v1, "kSecurityRTCFieldAccountIsG");
    getkSecurityRTCFieldAccountIsGSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCFieldAccountIsG(void)"];
    [v4 handleFailureInFunction:v5 file:@"OTClique.m" lineNumber:90 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_188869F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getkSecurityRTCFieldAccountIsDBR()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkSecurityRTCFieldAccountIsDBRSymbolLoc_ptr;
  v9 = getkSecurityRTCFieldAccountIsDBRSymbolLoc_ptr;
  if (!getkSecurityRTCFieldAccountIsDBRSymbolLoc_ptr)
  {
    v1 = KeychainCircleLibrary();
    v7[3] = dlsym(v1, "kSecurityRTCFieldAccountIsDBR");
    getkSecurityRTCFieldAccountIsDBRSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCFieldAccountIsDBR(void)"];
    [v4 handleFailureInFunction:v5 file:@"OTClique.m" lineNumber:91 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18886A0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkSecurityRTCEventNamePerformCKServerUnreadableDataRemovalSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeychainCircleLibrary();
  result = dlsym(v2, "kSecurityRTCEventNamePerformCKServerUnreadableDataRemoval");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecurityRTCEventNamePerformCKServerUnreadableDataRemovalSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getkSecurityRTCFieldAccountIsW()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkSecurityRTCFieldAccountIsWSymbolLoc_ptr;
  v9 = getkSecurityRTCFieldAccountIsWSymbolLoc_ptr;
  if (!getkSecurityRTCFieldAccountIsWSymbolLoc_ptr)
  {
    v1 = KeychainCircleLibrary();
    v7[3] = dlsym(v1, "kSecurityRTCFieldAccountIsW");
    getkSecurityRTCFieldAccountIsWSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSecurityRTCFieldAccountIsW(void)"];
    [v4 handleFailureInFunction:v5 file:@"OTClique.m" lineNumber:88 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18886A3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkSecurityRTCFieldAccountIsWSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeychainCircleLibrary();
  result = dlsym(v2, "kSecurityRTCFieldAccountIsW");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecurityRTCFieldAccountIsWSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecurityRTCFieldAccountIsDBRSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeychainCircleLibrary();
  result = dlsym(v2, "kSecurityRTCFieldAccountIsDBR");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecurityRTCFieldAccountIsDBRSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecurityRTCFieldAccountIsGSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeychainCircleLibrary();
  result = dlsym(v2, "kSecurityRTCFieldAccountIsG");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecurityRTCFieldAccountIsGSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18886AE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkSecurityRTCEventNameClearCliqueFromAccountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeychainCircleLibrary();
  result = dlsym(v2, "kSecurityRTCEventNameClearCliqueFromAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecurityRTCEventNameClearCliqueFromAccountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecurityRTCEventNameResetProtectedDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeychainCircleLibrary();
  result = dlsym(v2, "kSecurityRTCEventNameResetProtectedData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecurityRTCEventNameResetProtectedDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecurityRTCEventNameRPDDeleteAllRecordsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeychainCircleLibrary();
  result = dlsym(v2, "kSecurityRTCEventNameRPDDeleteAllRecords");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecurityRTCEventNameRPDDeleteAllRecordsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSecurityRTCEventNameResetSOSSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = KeychainCircleLibrary();
  result = dlsym(v2, "kSecurityRTCEventNameResetSOS");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSecurityRTCEventNameResetSOSSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18886C83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_18886CBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18886D158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18886D924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18886E0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18886E884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18886F000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18886F76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18886FEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188870698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188870E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188871608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188871DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18887252C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188872C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188873428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1888748B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_188874DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_18887706C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 160), 8);
  _Unwind_Resume(a1);
}

__CFString *OTCliqueStatusToString(uint64_t a1)
{
  if ((a1 + 1) > 5)
  {
    return @"CliqueStatusIn";
  }

  else
  {
    return off_1E70D6FD0[a1 + 1];
  }
}

uint64_t OTCliqueStatusFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"CliqueStatusIn"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"CliqueStatusNotIn"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"CliqueStatusPending"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"CliqueStatusAbsent"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"CliqueStatusNoCloudKitAccount"])
  {
    v2 = 4;
  }

  else
  {
    [v1 isEqualToString:@"CliqueStatusError"];
    v2 = -1;
  }

  return v2;
}

__CFString *OTCDPStatusToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"disabled";
  }

  if (a1 == 2)
  {
    return @"enabled";
  }

  else
  {
    return v1;
  }
}

id deserializedRecordFromRow(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 indexForColumnName:@"data"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v4 = MEMORY[0x1E696ACB0];
    v5 = [v1 blobAtIndex:v2];
    v9 = 0;
    v3 = [v4 JSONObjectWithData:v5 options:3 error:&v9];
    v6 = v9;

    if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v7 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v11 = v6;
        _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "SFAnalytics: failed to deserialize record: %{public}@", buf, 0xCu);
      }

      v3 = 0;
    }
  }

  return v3;
}

id makeLightweightCodeRequirement(const __CFData *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v1 = [sec_LWCR withData:a1 withError:&v5];
  v2 = v5;
  if (v2)
  {
    v3 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v7 = "makeLightweightCodeRequirement";
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "%s: failed to parse LightweightCodeRequirement", buf, 0xCu);
    }
  }

  return v1;
}

void bindAndAddBoolFact(void *a1, const char *a2, uint64_t a3)
{
  v6 = a1;
  v5 = [sec_LWCRFact BOOLFact:a3];
  bindAndAdd(v6, a2, v5);
}

void bindAndAdd(void *a1, const char *a2, void *a3)
{
  v7 = a1;
  v5 = a3;
  [v5 bindName:a2 withLength:strlen(a2)];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [v7 setObject:v5 forKeyedSubscript:v6];
}

void bindAndAddIntegerFact(void *a1, const char *a2, uint64_t a3)
{
  v7 = a1;
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v6 = [sec_LWCRFact integerFact:v5];

  bindAndAdd(v7, a2, v6);
}

void bindAndAddStringFact(void *a1, const char *a2, uint64_t a3)
{
  v7 = a1;
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
  v6 = [sec_LWCRFact stringFact:v5];

  bindAndAdd(v7, a2, v6);
}

void sub_18887994C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = sec_LWCR;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_188879F68(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = sec_LWCRFact;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_18887A688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, ...)
{
  va_start(va, a29);
  v33 = *(v31 - 104);
  if (v33)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v33, *(v31 - 96));
  }

  TLE::CallbackEncyclopedia::~CallbackEncyclopedia(va);

  _Unwind_Resume(a1);
}

TLE::RefCounted **libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(TLE::RefCounted **a1)
{
  v2 = *a1;
  if (v2)
  {
    TLE::RefCounted::release(v2);
  }

  *a1 = 0;
  return a1;
}

void TLE::CallbackEncyclopedia::~CallbackEncyclopedia(id *this)
{
}

{

  JUMPOUT(0x18CFD9760);
}

{
}

void *TLE::RefCounted::release(void *this)
{
  v2 = this[1];
  if (v2 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Over-release of an object";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v3 = v2 - 1;
  this[1] = v3;
  if (!v3)
  {
    v4 = *(*this + 8);

    return v4();
  }

  return this;
}

void TLE::orArrayOpDeserializer(uint64_t a1@<X0>, const der_vm_context *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = 0;
  v8 = 0u;
  *v9 = 0u;
  TLE::opArrayOpDeserializer(&v8, a1, a2, a3);
  if (v8)
  {
    *a4 = v8;
    *(a4 + 16) = v9[0];
    *(a4 + 24) = 0;
  }

  else
  {
    if (v10 != 1)
    {
      operator new();
    }

    v6 = v9[1];
    if (!v9[1])
    {
      goto LABEL_14;
    }

    v7 = 8 * v10;
    if (v9[1] + v7 < v9[1] || HIDWORD(v7))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v5);
    }

    if (v7 < 8)
    {
LABEL_14:
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v5);
    }

    *a4 = 0u;
    *(a4 + 16) = 0u;
    libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a4 + 24), *v6);
  }

  if (v9[1])
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v9[1], v10);
  }
}

void sub_18887AC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, TLE::RefCounted **a14, unsigned int a15)
{
  if (a14)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(a14, a15);
  }

  _Unwind_Resume(exception_object);
}

void TLE::opArrayOpDeserializer(uint64_t result, uint64_t a2, const der_vm_context *a3, _DWORD *a4)
{
  if (*a4)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0;
    *result = 6;
    v5 = "factless operator disallowed for active fact";
    v6 = 44;
LABEL_11:
    *(result + 8) = v5;
    *(result + 16) = v6;
    return;
  }

  v8 = *&a3->lookup.index_count;
  v15 = *&a3->runtime;
  v16 = v8;
  v17 = *&a3->sorted;
  der_end = a3->var0.ccstate.der_end;
  if (der_vm_CEType_from_context() != 2)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0;
    *result = 3;
    v5 = "Got an unexpected type (not a sequence) when trying to read the array of matches.";
    v6 = 81;
    goto LABEL_11;
  }

  v9 = count_ce_elements(a3);
  if (!v9)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0;
    *result = 4;
    v5 = "The array of dependent operations is empty.";
    v6 = 43;
    goto LABEL_11;
  }

  v10 = v9;
  v21 = 0;
  if (HIDWORD(v9))
  {
    v11 = 0;
    LODWORD(v10) = 0;
  }

  else
  {
    v11 = malloc_type_malloc(8 * v9, 0x2000093837F09uLL);
    bzero(v11, 8 * v10);
  }

  v20 = v11;
  LODWORD(v21) = v10;
  *&v15 = 0;
  *(&v15 + 1) = &v15;
  *&v16 = 0x4002000000;
  *(&v16 + 1) = __Block_byref_object_copy__5983;
  *&v17 = __Block_byref_object_dispose__5984;
  *(&v17 + 1) = 0;
  der_end = 0;
  v19 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v14[3] = 0;
  der_vm_iterate_b();
  v12 = *(&v15 + 1) + 40;
  if (*(*(&v15 + 1) + 40))
  {
    *(result + 32) = 0;
    *(result + 24) = 0;
    v13 = *v12;
    *(result + 16) = *(v12 + 16);
    *result = v13;
  }

  else
  {
    TLE::Tuple<TLE::Error,libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>>::Tuple(result, &v20);
  }

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);
  if (v20)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v20, v21);
  }
}

void sub_18887AEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  v20 = *(v18 - 80);
  if (v20)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v20, *(v18 - 72));
  }

  _Unwind_Resume(a1);
}

void os_detail::panic_trapping_policy::trap(os_detail::panic_trapping_policy *this, const char *a2)
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = this;
  __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
}

void **libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(void **a1, void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (a2)
  {
    v4 = a2[1];
    if (v4 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = "Attempted resurection of an object";
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

    a2[1] = v4 + 1;
  }

  if (v3)
  {
    TLE::RefCounted::release(v3);
  }

  return a1;
}

{
  v4 = *a1;
  if (v4)
  {
    TLE::RefCounted::release(v4);
  }

  *a1 = a2;
  return a1;
}

void **libkern::intrusive_shared_ptr<TLE::OrOperation,TLE::RefCountPolicy>::reset(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    TLE::RefCounted::release(v2);
  }

  *a1 = 0;
  return a1;
}

void libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(TLE::RefCounted **a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = 8 * a2;
    do
    {
      a1 = libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(a1) + 1;
      v3 -= 8;
    }

    while (v3);
  }

  free(v2);
}

uint64_t count_ce_elements(const der_vm_context *a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  der_vm_iterate_b();
  v1 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_18887B0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__5983(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

BOOL ___ZN3TLE21opArrayOpDeserializerERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE_block_invoke(void *a1, uint64_t a2)
{
  v33 = 0u;
  v34 = 0u;
  v3 = a1[7];
  if (*v3)
  {
    LODWORD(v33) = 6;
    v4 = "factless operator disallowed for active fact";
    v5 = 44;
LABEL_9:
    *(&v33 + 1) = v4;
    *&v34 = v5;
LABEL_10:
    v10 = 0;
    v11 = *(a1[4] + 8);
    *(v11 + 40) = v33;
    *(v11 + 56) = v34;
    goto LABEL_11;
  }

  v7 = a1[6];
  v8 = *(a2 + 72);
  *&v39.runtime = *(a2 + 56);
  *&v39.lookup.index_count = v8;
  *&v39.sorted = *(a2 + 88);
  v39.var0.ccstate.der_end = *(a2 + 104);
  if (der_vm_CEType_from_context() != 2)
  {
    v33 = 0u;
    v34 = 0u;
    LODWORD(v33) = 6;
    v4 = "Non array element found in operator Array";
    v5 = 41;
    goto LABEL_9;
  }

  if (count_ce_elements((a2 + 56)) != 2)
  {
    v33 = 0u;
    v34 = 0u;
    LODWORD(v33) = 6;
    v4 = "Incorrect number of elements in operator Array tuple";
    v5 = 52;
    goto LABEL_9;
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  TLE::keyForContext(&v36, (a2 + 56));
  if (v36)
  {
    v33 = v36;
    v34 = v37;
    goto LABEL_27;
  }

  memset(&v39, 0, sizeof(v39));
  der_vm_execute_nocopy();
  v35 = v39;
  if (der_vm_CEType_from_context() == 1)
  {
    if (CEBuffer_cmp())
    {
      if (CEBuffer_cmp())
      {
        if (!CEBuffer_cmp())
        {
          TLE::optionalOpDeserializer(v7, &v39, v3, &v33);
          goto LABEL_27;
        }

        goto LABEL_20;
      }

      TLE::orDeserializer(v7, &v39, v3, &v33);
    }

    else
    {
      TLE::andDeserializer(v7, &v39, v3, &v33);
    }
  }

  else
  {
    v35 = v39;
    if (der_vm_CEType_from_context() != 2)
    {
      v33 = 0u;
      v34 = 0u;
      LODWORD(v33) = 3;
      v13 = "Unexpected type in Array tuple";
      v14 = 30;
      goto LABEL_22;
    }

    if (CEBuffer_cmp())
    {
      if (CEBuffer_cmp())
      {
LABEL_20:
        v33 = 0u;
        v34 = 0u;
        LODWORD(v33) = 9;
        v13 = "Unexpected operator in Array tuple";
        v14 = 34;
LABEL_22:
        *(&v33 + 1) = v13;
        *&v34 = v14;
        goto LABEL_27;
      }

      TLE::orArrayOpDeserializer(v7, &v39, v3, &v33);
    }

    else
    {
      TLE::andArrayOpDeserializer(v7, &v39, v3, &v33);
    }
  }

LABEL_27:
  if (v33)
  {
    goto LABEL_10;
  }

  v15 = a1[8];
  v16 = *(*(a1[5] + 8) + 24);
  v17 = *v15;
  if (*v15)
  {
    v18 = v17 + 8 * *(v15 + 2);
    v19 = v18 >= v17;
    v20 = v18 - v17;
    if (!v19 || HIDWORD(v20))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v9);
    }
  }

  else
  {
    LODWORD(v20) = 0;
  }

  if (v16 >= 0)
  {
    v21 = *(*(a1[5] + 8) + 24);
  }

  else
  {
    v21 = -v16;
  }

  v22 = (v16 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  if (v16 >= 0)
  {
    v23 = 8 * v21;
  }

  else
  {
    v23 = -8 * v21;
  }

  if (v21 >> 61)
  {
    v24 = 1;
  }

  else
  {
    v24 = 8 * v21 > v22;
  }

  if (v24)
  {
    v25 = "bounded_ptr<T>::operator+=(n): Calculating the number of bytes to add to the offset (n * sizeof(T)) would trigger an overflow";
    goto LABEL_58;
  }

  if (v23 != v23)
  {
    v25 = "bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.";
    goto LABEL_58;
  }

  v25 = "bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally";
  if ((v23 & 0x80000000) != 0 || v23 + 8 > v20 || ((v19 = __CFADD__(v17, v23 & 0x7FFFFFF8), v26 = (v17 + (v23 & 0x7FFFFFF8)), !v19) ? (v27 = 0) : (v27 = 1), (v28 = v27 << 63 >> 63, v25 = "This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v28 ^ v27) || v28 < 0))
  {
LABEL_58:
    os_detail::panic_trapping_policy::trap(v25, v9);
  }

  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(v26, *(&v34 + 1));
  *(&v34 + 1) = 0;
  v29 = *(a1[5] + 8);
  v30 = *(v29 + 24);
  v31 = (((v30 == -1) << 63) >> 63) ^ (v30 == -1);
  if (v31)
  {
    v32 = *(a1[4] + 8);
    *(v32 + 40) = 10;
    *(v32 + 48) = "Array contains too many elements";
    *(v32 + 56) = 32;
  }

  else
  {
    *(v29 + 24) = v30 + 1;
  }

  v10 = v31 == 0;
LABEL_11:
  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(&v34 + 1);
  return v10;
}

uint64_t TLE::Tuple<TLE::Error,libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>>::Tuple(uint64_t result, uint64_t a2)
{
  *(result + 32) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  if (result + 24 != a2)
  {
    *(result + 24) = *a2;
    *(result + 32) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t TLE::keyForContext(TLE *this, der_vm_context *a2)
{
  der_vm_execute_nocopy();
  result = der_vm_CEType_from_context();
  if (result == 4)
  {
    result = der_vm_string_from_context();
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    *(this + 3) = result;
    v5 = 32;
  }

  else
  {
    *(this + 4) = 0;
    *this = 0u;
    *(this + 1) = 0u;
    *this = 3;
    *(this + 1) = "Expected operator string in Array tuple";
    v4 = 39;
    v5 = 16;
  }

  *(this + v5) = v4;
  return result;
}

void TLE::andDeserializer(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *a4 = 6;
    *(a4 + 8) = "$and operator disallowed for active fact";
    *(a4 + 16) = 40;
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v5 = *(a2 + 16);
    *&v9.runtime = *a2;
    *&v9.lookup.index_count = v5;
    *&v9.sorted = *(a2 + 32);
    v9.var0.ccstate.der_end = *(a2 + 48);
    TLE::Executor::getDependentOpsFromDictionary(&v10, a1, &v9, a3, 1, 0, 0);
    if (v10)
    {
      *a4 = v10;
      *(a4 + 16) = v11;
      *(a4 + 24) = 0;
    }

    else
    {
      if (v12 != 1)
      {
        operator new();
      }

      v7 = *(&v11 + 1);
      if (!*(&v11 + 1))
      {
        goto LABEL_16;
      }

      v8 = 8 * v12;
      if (*(&v11 + 1) + v8 < *(&v11 + 1) || HIDWORD(v8))
      {
        os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v6);
      }

      if (v8 < 8)
      {
LABEL_16:
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v6);
      }

      *a4 = 0u;
      *(a4 + 16) = 0u;
      libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a4 + 24), *v7);
    }

    if (*(&v11 + 1))
    {
      libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(*(&v11 + 1), v12);
    }
  }
}

void sub_18887B894(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v3, *(v1 - 32));
  }

  _Unwind_Resume(exception_object);
}

void TLE::orDeserializer(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *a4 = 6;
    *(a4 + 8) = "$or operator disallowed for active fact";
    *(a4 + 16) = 39;
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v5 = *(a2 + 16);
    *&v9.runtime = *a2;
    *&v9.lookup.index_count = v5;
    *&v9.sorted = *(a2 + 32);
    v9.var0.ccstate.der_end = *(a2 + 48);
    TLE::Executor::getDependentOpsFromDictionary(&v10, a1, &v9, a3, 1, 0, 0);
    if (v10)
    {
      *a4 = v10;
      *(a4 + 16) = v11;
      *(a4 + 24) = 0;
    }

    else
    {
      if (v12 != 1)
      {
        operator new();
      }

      v7 = *(&v11 + 1);
      if (!*(&v11 + 1))
      {
        goto LABEL_16;
      }

      v8 = 8 * v12;
      if (*(&v11 + 1) + v8 < *(&v11 + 1) || HIDWORD(v8))
      {
        os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v6);
      }

      if (v8 < 8)
      {
LABEL_16:
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v6);
      }

      *a4 = 0u;
      *(a4 + 16) = 0u;
      libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a4 + 24), *v7);
    }

    if (*(&v11 + 1))
    {
      libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(*(&v11 + 1), v12);
    }
  }
}

void sub_18887BA6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v3, *(v1 - 32));
  }

  _Unwind_Resume(exception_object);
}

void TLE::optionalOpDeserializer(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v11 = 0;
  v9 = 0u;
  *v10 = 0u;
  v5 = *(a2 + 16);
  *&v8.runtime = *a2;
  *&v8.lookup.index_count = v5;
  *&v8.sorted = *(a2 + 32);
  v8.var0.ccstate.der_end = *(a2 + 48);
  TLE::Executor::getDependentOpsFromDictionary(&v9, a1, &v8, a3, *a3 == 0, 3, &TLE::restrict_list);
  if (v9)
  {
    *a4 = v9;
    *(a4 + 16) = v10[0];
    *(a4 + 24) = 0;
  }

  else
  {
    if (v11 == 1)
    {
      v8.runtime = 0;
      if (v10[1])
      {
        v7 = 8 * v11;
        if (v10[1] + v7 < v10[1] || HIDWORD(v7))
        {
          os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v6);
        }

        if (v7 >= 8)
        {
          operator new();
        }
      }

      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v6);
    }

    *a4 = 0u;
    *(a4 + 16) = 0u;
    *a4 = 6;
    *(a4 + 8) = "$optional only supports a single dependent operation";
    *(a4 + 16) = 52;
  }

  if (v10[1])
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v10[1], v11);
  }
}

void sub_18887BC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, TLE::RefCounted **a20, int a21)
{
  if (a20)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(a20, a21);
  }

  _Unwind_Resume(exception_object);
}

void TLE::andArrayOpDeserializer(uint64_t a1@<X0>, const der_vm_context *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = 0;
  v8 = 0u;
  *v9 = 0u;
  TLE::opArrayOpDeserializer(&v8, a1, a2, a3);
  if (v8)
  {
    *a4 = v8;
    *(a4 + 16) = v9[0];
    *(a4 + 24) = 0;
  }

  else
  {
    if (v10 != 1)
    {
      operator new();
    }

    v6 = v9[1];
    if (!v9[1])
    {
      goto LABEL_14;
    }

    v7 = 8 * v10;
    if (v9[1] + v7 < v9[1] || HIDWORD(v7))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v5);
    }

    if (v7 < 8)
    {
LABEL_14:
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v5);
    }

    *a4 = 0u;
    *(a4 + 16) = 0u;
    libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a4 + 24), *v6);
  }

  if (v9[1])
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v9[1], v10);
  }
}

void sub_18887BD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, TLE::RefCounted **a14, int a15)
{
  if (a14)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(a14, a15);
  }

  _Unwind_Resume(exception_object);
}

void **libkern::intrusive_shared_ptr<TLE::AndOperation,TLE::RefCountPolicy>::reset(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    TLE::RefCounted::release(v2);
  }

  *a1 = 0;
  return a1;
}

void TLE::Executor::getDependentOpsFromDictionary(uint64_t a1, uint64_t a2, const der_vm_context *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a2 + 8);
  *(a2 + 8) = v9 + 1;
  if ((v9 + 1) >= 6)
  {
    *(a2 + 8) = v9;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
    *a1 = 8;
    v10 = "Constraint is too deeply nested. Failing to avoid recursion overflow";
    v11 = 68;
LABEL_11:
    *(a1 + 8) = v10;
    *(a1 + 16) = v11;
    return;
  }

  v13 = *&a3->lookup.index_count;
  v21 = *&a3->runtime;
  v22 = v13;
  v23 = *&a3->sorted;
  der_end = a3->var0.ccstate.der_end;
  if (der_vm_CEType_from_context() != 1)
  {
    --*(a2 + 8);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
    *a1 = 3;
    v10 = "Got an unexpected type (not a dictionary) when trying to generate dependent operations for evaluation.";
    v11 = 102;
    goto LABEL_11;
  }

  v14 = count_ce_elements(a3);
  if (!v14)
  {
    --*(a2 + 8);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
    *a1 = 4;
    v10 = "The dictionary of dependent operations is empty.";
    v11 = 48;
    goto LABEL_11;
  }

  v15 = v14;
  v27 = 0;
  if (HIDWORD(v14))
  {
    v16 = 0;
    LODWORD(v15) = 0;
  }

  else
  {
    v16 = malloc_type_malloc(8 * v14, 0x2000093837F09uLL);
    bzero(v16, 8 * v15);
  }

  v26 = v16;
  LODWORD(v27) = v15;
  *&v21 = 0;
  *(&v21 + 1) = &v21;
  *&v22 = 0x4002000000;
  *(&v22 + 1) = __Block_byref_object_copy__5983;
  *&v23 = __Block_byref_object_dispose__5984;
  *(&v23 + 1) = 0;
  der_end = 0;
  v25 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2000000000;
  v20[3] = 0;
  der_vm_iterate_b();
  v17 = *(&v21 + 1) + 40;
  v18 = *(*(&v21 + 1) + 40);
  --*(a2 + 8);
  if (v18)
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
    v19 = *v17;
    *(a1 + 16) = *(v17 + 16);
    *a1 = v19;
  }

  else
  {
    TLE::Tuple<TLE::Error,libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>>::Tuple(a1, &v26);
  }

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v21, 8);
  if (v26)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v26, v27);
  }
}

void sub_18887C0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v23 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  v22 = *(v20 - 104);
  if (v22)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v22, *(v20 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN3TLE8Executor29getDependentOpsFromDictionaryE14der_vm_contextRKNS_14FactDefinitionEbmPK8CEBuffer_block_invoke(void *a1, uint64_t a2)
{
  v104 = *MEMORY[0x1E69E9840];
  v92 = a1[6];
  memset(v100, 0, 40);
  TLE::keyForContext(v100, (a2 + 56));
  if (LODWORD(v100[0]))
  {
    result = 0;
    v4 = *(a1[4] + 8);
    *(v4 + 40) = v100[0];
    *(v4 + 56) = *&v100[1];
    return result;
  }

  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v96 = 0u;
  v5 = *(a2 + 72);
  v101[0] = *(a2 + 56);
  v101[1] = v5;
  v102 = *(a2 + 88);
  v103 = *(a2 + 104);
  der_vm_execute_nocopy();
  v7 = a1;
  v8 = a1[7];
  if (v8)
  {
    v9 = *(&v100[1] + 1);
    v10 = v8 - 1;
    v11 = a1[8] + 8;
    do
    {
      result = CEBuffer_cmp();
      if (result)
      {
        v12 = v10 == 0;
      }

      else
      {
        v12 = 1;
      }

      --v10;
      v11 += 16;
    }

    while (!v12);
    v7 = a1;
    if (!result)
    {
      v13 = *(a1[4] + 8);
      *(v13 + 40) = 6;
      v14 = "Unexpected key for parsing context";
      v15 = 34;
LABEL_46:
      *(v13 + 48) = v14;
      *(v13 + 56) = v15;
      return result;
    }
  }

  else
  {
    v9 = *(&v100[1] + 1);
  }

  if (*v9 == 36)
  {
    v16 = &_ZTVN3TLE11BinaryIntOpIxXtlNS_3__0EEEEE - &TLE::details::operations;
    if (&_ZTVN3TLE11BinaryIntOpIxXtlNS_3__0EEEEE < &TLE::details::operations || HIDWORD(v16))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v6);
    }

    v18 = &_ZTVN3TLE11BinaryIntOpIxXtlNS_3__0EEEEE - &TLE::details::operations;
    v17 = (&_ZTVN3TLE11BinaryIntOpIxXtlNS_3__0EEEEE - __PAIR128__(v7, &TLE::details::operations)) >> 64;
    if ((&_ZTVN3TLE11BinaryIntOpIxXtlNS_3__0EEEEE - &TLE::details::operations) >= 0xFFFFFFFF80000000)
    {
      LOBYTE(v17) = v17 + 1;
    }

    *(&v19 + 1) = v17 & 1;
    *&v19 = v18 + 0x80000000;
    if ((v19 >> 32))
    {
      os_detail::panic_trapping_policy::trap("The offset of the pointer inside its valid memory range can't be represented using int32_t", v6);
    }

    if (__CFADD__(&TLE::details::operations, v18))
    {
      v20 = (v18 >> 63) + 1;
    }

    else
    {
      v20 = v18 >> 63;
    }

    v22 = v20 << 63 >> 63 != v20 || v20 << 63 >> 63 == -1;
    while (1)
    {
      v23 = &TLE::details::operations + (v16 >> 32);
      if (__CFADD__(&TLE::details::operations, v16 >> 32))
      {
        v24 = (v16 >> 63) + 1;
      }

      else
      {
        v24 = v16 >> 63;
      }

      v25 = v24 << 63 >> 63;
      if (v25 != v24 || v25 < 0)
      {
        os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v6);
      }

      if (v22)
      {
        os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v6);
      }

      if (v23 == &TLE::details::operations + v18)
      {
        goto LABEL_84;
      }

      if (v16 < 0 || HIDWORD(v16) + 24 > v16)
      {
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v6);
      }

      if (!CEBuffer_cmp())
      {
        break;
      }

      if (HIDWORD(v16) - 2147483624 < 0xFFFFFFFF00000000)
      {
        os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.", v6);
      }

      v16 = (v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x1800000000;
    }

    memset(v101, 0, sizeof(v101));
    (*(v23 + 2))(v101, v92, &v96, a1[9]);
    if (LODWORD(v101[0]))
    {
      v28 = *(a1[4] + 8);
      v29 = v101[0];
      goto LABEL_49;
    }

    v31 = a1[10];
    v32 = *(*(a1[5] + 8) + 24);
    v33 = *v31;
    if (*v31)
    {
      v34 = v33 + 8 * *(v31 + 2);
      v35 = v34 >= v33;
      v36 = v34 - v33;
      if (!v35 || HIDWORD(v36))
      {
        os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v30);
      }
    }

    else
    {
      LODWORD(v36) = 0;
    }

    if (v32 >= 0)
    {
      v45 = *(*(a1[5] + 8) + 24);
    }

    else
    {
      v45 = -v32;
    }

    v46 = (v32 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    if (v32 >= 0)
    {
      v47 = 8 * v45;
    }

    else
    {
      v47 = -8 * v45;
    }

    if (v45 >> 61)
    {
      v48 = 1;
    }

    else
    {
      v48 = 8 * v45 > v46;
    }

    if (v48)
    {
      v49 = "bounded_ptr<T>::operator+=(n): Calculating the number of bytes to add to the offset (n * sizeof(T)) would trigger an overflow";
    }

    else if (v47 == v47)
    {
      v49 = "bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally";
      if ((v47 & 0x80000000) == 0 && v47 + 8 <= v36)
      {
        v35 = __CFADD__(v33, v47 & 0x7FFFFFF8);
        v50 = (v33 + (v47 & 0x7FFFFFF8));
        v51 = v35;
        v52 = v51 << 63 >> 63;
        v49 = "This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.";
        if (v52 == v51 && (v52 & 0x8000000000000000) == 0)
        {
          libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(v50, *(&v101[1] + 1));
          *(&v101[1] + 1) = 0;
          libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(&v101[1] + 1);
LABEL_84:
          v39 = a1;
          v53 = a1[10];
          v54 = *(a1[5] + 8);
          v55 = *(v54 + 24);
          v56 = *v53;
          if (*v53)
          {
            v57 = v56 + 8 * *(v53 + 2);
            v35 = v57 >= v56;
            v58 = v57 - v56;
            if (!v35 || HIDWORD(v58))
            {
              os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v6);
            }
          }

          else
          {
            LODWORD(v58) = 0;
          }

          if (v55 >= 0)
          {
            v59 = *(v54 + 24);
          }

          else
          {
            v59 = -v55;
          }

          if (v55 >= 0)
          {
            v60 = 8 * v59;
          }

          else
          {
            v60 = -8 * v59;
          }

          if (v59 >> 61)
          {
            v61 = 1;
          }

          else
          {
            v61 = 8 * v59 > (v55 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v61)
          {
            os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator+=(n): Calculating the number of bytes to add to the offset (n * sizeof(T)) would trigger an overflow", v6);
          }

          if (v60 != v60)
          {
            os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.", v6);
          }

          if ((v60 & 0x80000000) != 0 || v60 + 8 > v58)
          {
            os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v6);
          }

          v35 = __CFADD__(v56, v60 & 0x7FFFFFF8);
          v62 = (v56 + (v60 & 0x7FFFFFF8));
          v63 = v35;
          v64 = v63 << 63 >> 63;
          if (v64 != v63 || v64 < 0)
          {
            os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v6);
          }

          if (!*v62)
          {
            *(v101 + 4) = *(&v100[1] + 8);
            operator new();
          }

          goto LABEL_109;
        }
      }
    }

    else
    {
      v49 = "bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.";
    }

    os_detail::panic_trapping_policy::trap(v49, v30);
  }

  if (*(v7 + 88) != 1)
  {
    result = 0;
    v13 = *(v7[4] + 8);
    *(v13 + 40) = 6;
    v14 = "Fact not allowed in context";
    v15 = 27;
    goto LABEL_46;
  }

  if (((*(**v92 + 32))(*v92, v9, *&v100[2]) & 1) == 0)
  {
    *(v101 + 4) = *(&v100[1] + 8);
    operator new();
  }

  v94 = 0;
  v95 = 0uLL;
  (*(**v92 + 16))(&v94);
  v101[0] = v96;
  v101[1] = v97;
  v102 = v98;
  v103 = v99;
  v26 = der_vm_CEType_from_context();
  if (v26 != 1)
  {
    if (v26 == v94)
    {
      v37 = TLE::opForContext(v26, &v96);
      v38 = v37;
      if (v37)
      {
        *(v37 + 16) = v95;
        *&v101[0] = v37;
        v39 = a1;
        v40 = a1[10];
        v41 = *(*(a1[5] + 8) + 24);
        v42 = *v40;
        if (*v40)
        {
          v43 = v42 + 8 * *(v40 + 2);
          v35 = v43 >= v42;
          v44 = v43 - v42;
          if (!v35 || HIDWORD(v44))
          {
            os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v37);
          }
        }

        else
        {
          LODWORD(v44) = 0;
        }

        if (v41 >= 0)
        {
          v84 = *(*(a1[5] + 8) + 24);
        }

        else
        {
          v84 = -v41;
        }

        v85 = (v41 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        if (v41 >= 0)
        {
          v86 = 8 * v84;
        }

        else
        {
          v86 = -8 * v84;
        }

        if (v84 >> 61)
        {
          v87 = 1;
        }

        else
        {
          v87 = 8 * v84 > v85;
        }

        if (v87)
        {
          v88 = "bounded_ptr<T>::operator+=(n): Calculating the number of bytes to add to the offset (n * sizeof(T)) would trigger an overflow";
        }

        else if (v86 == v86)
        {
          v88 = "bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally";
          if ((v86 & 0x80000000) == 0 && v86 + 8 <= v44)
          {
            v35 = __CFADD__(v42, v86 & 0x7FFFFFF8);
            v89 = (v42 + (v86 & 0x7FFFFFF8));
            v90 = v35;
            v91 = v90 << 63 >> 63;
            v88 = "This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.";
            if (v91 == v90 && (v91 & 0x8000000000000000) == 0)
            {
              libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(v89, v38);
              *&v101[0] = 0;
              v83 = v101;
              goto LABEL_162;
            }
          }
        }

        else
        {
          v88 = "bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.";
        }

        os_detail::panic_trapping_policy::trap(v88, v38);
      }

      v67 = *(a1[4] + 8);
      *(v67 + 40) = 3;
      v68 = "Unexpected type of an fact declaration.";
      v69 = 39;
    }

    else
    {
      v67 = *(a1[4] + 8);
      *(v67 + 40) = 3;
      v68 = "Unexpected type of an operation declaration.";
      v69 = 44;
    }

    *(v67 + 48) = v68;
    *(v67 + 56) = v69;
    return 0;
  }

  memset(v101, 0, sizeof(v101));
  TLE::factOpDeserializer(v101, v92, &v96, &v94);
  if (LODWORD(v101[0]))
  {
    v28 = *(a1[4] + 8);
    v29 = v101[0];
LABEL_49:
    *(v28 + 40) = v29;
    *(v28 + 56) = *&v101[1];
    libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(&v101[1] + 1);
    return 0;
  }

  v39 = a1;
  v70 = a1[10];
  v71 = *(*(a1[5] + 8) + 24);
  v72 = *v70;
  if (*v70)
  {
    v73 = v72 + 8 * *(v70 + 2);
    v35 = v73 >= v72;
    v74 = v73 - v72;
    if (!v35 || HIDWORD(v74))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v27);
    }
  }

  else
  {
    LODWORD(v74) = 0;
  }

  if (v71 >= 0)
  {
    v75 = *(*(a1[5] + 8) + 24);
  }

  else
  {
    v75 = -v71;
  }

  v76 = (v71 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  if (v71 >= 0)
  {
    v77 = 8 * v75;
  }

  else
  {
    v77 = -8 * v75;
  }

  if (v75 >> 61)
  {
    v78 = 1;
  }

  else
  {
    v78 = 8 * v75 > v76;
  }

  if (v78)
  {
    v79 = "bounded_ptr<T>::operator+=(n): Calculating the number of bytes to add to the offset (n * sizeof(T)) would trigger an overflow";
    goto LABEL_178;
  }

  if (v77 != v77)
  {
    v79 = "bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.";
    goto LABEL_178;
  }

  v79 = "bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally";
  if ((v77 & 0x80000000) != 0 || v77 + 8 > v74 || ((v35 = __CFADD__(v72, v77 & 0x7FFFFFF8), v80 = (v72 + (v77 & 0x7FFFFFF8)), !v35) ? (v81 = 0) : (v81 = 1), (v82 = v81 << 63 >> 63, v79 = "This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v82 ^ v81) || v82 < 0))
  {
LABEL_178:
    os_detail::panic_trapping_policy::trap(v79, v27);
  }

  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(v80, *(&v101[1] + 1));
  *(&v101[1] + 1) = 0;
  v83 = &v101[1] + 1;
LABEL_162:
  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(v83);
  v54 = *(v39[5] + 8);
  v55 = *(v54 + 24);
LABEL_109:
  v65 = (((v55 == -1) << 63) >> 63) ^ (v55 == -1);
  if (v65)
  {
    v66 = *(v39[4] + 8);
    *(v66 + 40) = 10;
    *(v66 + 48) = "Too many elements in dictionary";
    *(v66 + 56) = 31;
  }

  else
  {
    *(v54 + 24) = v55 + 1;
  }

  return v65 == 0;
}

void sub_18887CC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **libkern::intrusive_shared_ptr<TLE::ConstErrorOperation,TLE::RefCountPolicy>::reset(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    TLE::RefCounted::release(v2);
  }

  *a1 = 0;
  return a1;
}

void TLE::factOpDeserializer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v10 = 0u;
  *v11 = 0u;
  v5 = *(a3 + 16);
  *&v9.runtime = *a3;
  *&v9.lookup.index_count = v5;
  *&v9.sorted = *(a3 + 32);
  v9.var0.ccstate.der_end = *(a3 + 48);
  TLE::Executor::getDependentOpsFromDictionary(&v10, a2, &v9, a4, 0, 0, 0);
  if (v10)
  {
    *a1 = v10;
    *(a1 + 16) = v11[0];
    *(a1 + 24) = 0;
  }

  else if (v12 == 1)
  {
    v7 = v11[1];
    if (!v11[1])
    {
      goto LABEL_14;
    }

    v8 = 8 * v12;
    if (v11[1] + v8 < v11[1] || HIDWORD(v8))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", v6);
    }

    if (v8 < 8)
    {
LABEL_14:
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v6);
    }

    *a1 = 0u;
    *(a1 + 16) = 0u;
    libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset((a1 + 24), *v7);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = 6;
    *(a1 + 8) = "There should only be one operation to match a fact";
    *(a1 + 16) = 50;
  }

  if (v11[1])
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v11[1], v12);
  }
}

void sub_18887CE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, TLE::RefCounted **a20, int a21)
{
  if (a20)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(a20, a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TLE::opForContext(int a1, __int128 *a2)
{
  if (a1 > 4)
  {
    if (a1 == 6)
    {
      operator new();
    }

    if (a1 == 5)
    {
      operator new();
    }
  }

  else
  {
    if (a1 == 3)
    {
      operator new();
    }

    if (a1 == 4)
    {
      operator new();
    }
  }

  return 0;
}

void *_ZN3TLE12BinaryDataOpI8CEBufferXtlNS_3__8EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  result = (*(*a2 + 24))(v5, a2, a1[2], a1[3]);
  if (LODWORD(v5[0]) == 6)
  {
    result = CEBuffer_cmp();
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = result == 0;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected data)";
    *a3 = 3;
    *(a3 + 16) = 52;
  }

  return result;
}

void _ZN3TLE12BinaryDataOpI8CEBufferXtlNS_3__8EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x18CFD9760);
}

void TLE::RefCounted::~RefCounted(TLE::RefCounted *this)
{
  *this = &unk_1EFA89120;
  if (*(this + 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "RefCounted object destroyed, but is not fully released";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

{
  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x18CFD9760);
}

void *_ZN3TLE11BinaryStrOpI8CEBufferXtlNS_3__7EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  result = (*(*a2 + 24))(v5, a2, a1[2], a1[3]);
  if (LODWORD(v5[0]) == 4)
  {
    result = CEBuffer_cmp();
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = result == 0;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected a string)";
    *a3 = 3;
    *(a3 + 16) = 56;
  }

  return result;
}

void _ZN3TLE11BinaryStrOpI8CEBufferXtlNS_3__7EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x18CFD9760);
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__6EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = *(&v9 + 1) == a1[4];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__6EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x18CFD9760);
}

void *_ZN3TLE11BinaryIntOpIbXtlNS_3__5EEEE7ExecuteERNS_12EncyclopediaE@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  result = (*(*a2 + 24))(&v9, a2, *(a1 + 16), *(a1 + 24));
  if (v9 == 3 || v9 == 5)
  {
    v7 = *(a1 + 32);
    v8 = *(&v10 + 1) == 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v8 ^ v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIbXtlNS_3__5EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x18CFD9760);
}

__n128 TLE::ConstErrorOperation::Execute@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u8[8] = 0;
  result = a1[2];
  *a2 = result;
  a2[1].n128_u64[0] = a1[3].n128_u64[0];
  return result;
}

void TLE::ConstErrorOperation::~ConstErrorOperation(TLE::ConstErrorOperation *this)
{
  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x18CFD9760);
}

BOOL ___ZL17count_ce_elementsRK14der_vm_context_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 24);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  v5 = v3;
  v6 = (v5 << 63 >> 63) ^ v5;
  if (!v6)
  {
    *(v1 + 24) = v4;
  }

  return v6 == 0;
}

void TLE::queryOpDeserializer(_DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v7 = 1;
    der_vm_iterate_b();
    if (v5[3])
    {
      operator new();
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 6;
    *(a3 + 8) = "$query deserialization failed since it has an invalid query definition";
    *(a3 + 16) = 70;
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 3;
    *(a3 + 8) = "Got an unexpected type (not a dictionary) when trying to generate a query operation.";
    *(a3 + 16) = 84;
  }
}

void sub_18887D718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3TLE19queryOpDeserializerERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 116) == 2 && count_ce_elements((a2 + 56)) == 2)
  {
    return 1;
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

double _ZN3TLE17intOpDeserializerINS_11BinaryIntOpIxXtlNS_3__4EEEEEEENS_5TupleINS_5ErrorEN7libkern20intrusive_shared_ptrINS_9OperationENS_14RefCountPolicyEEEEERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE@<D0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 3)
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v10 = a1[2];
    v11 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 3)
    {
      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      v10 = a1[2];
      v11 = *(a1 + 6);
      der_vm_integer_from_context();
      operator new();
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 3;
  *(a3 + 8) = "Got an unexpected type (not an integer) when trying to generate an integer operation.";
  *(a3 + 16) = 85;
  return result;
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__4EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = (a1[4] & ~*(&v9 + 1)) == 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__4EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x18CFD9760);
}

double _ZN3TLE17intOpDeserializerINS_11BinaryIntOpIxXtlNS_3__3EEEEEEENS_5TupleINS_5ErrorEN7libkern20intrusive_shared_ptrINS_9OperationENS_14RefCountPolicyEEEEERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE@<D0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 3)
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v10 = a1[2];
    v11 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 3)
    {
      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      v10 = a1[2];
      v11 = *(a1 + 6);
      der_vm_integer_from_context();
      operator new();
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 3;
  *(a3 + 8) = "Got an unexpected type (not an integer) when trying to generate an integer operation.";
  *(a3 + 16) = 85;
  return result;
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__3EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = *(&v9 + 1) >= a1[4];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__3EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x18CFD9760);
}

double _ZN3TLE17intOpDeserializerINS_11BinaryIntOpIxXtlNS_3__2EEEEEEENS_5TupleINS_5ErrorEN7libkern20intrusive_shared_ptrINS_9OperationENS_14RefCountPolicyEEEEERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE@<D0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 3)
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v10 = a1[2];
    v11 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 3)
    {
      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      v10 = a1[2];
      v11 = *(a1 + 6);
      der_vm_integer_from_context();
      operator new();
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 3;
  *(a3 + 8) = "Got an unexpected type (not an integer) when trying to generate an integer operation.";
  *(a3 + 16) = 85;
  return result;
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__2EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = *(&v9 + 1) > a1[4];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__2EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x18CFD9760);
}

double _ZN3TLE17intOpDeserializerINS_11BinaryIntOpIxXtlNS_3__1EEEEEEENS_5TupleINS_5ErrorEN7libkern20intrusive_shared_ptrINS_9OperationENS_14RefCountPolicyEEEEERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE@<D0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 3)
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v10 = a1[2];
    v11 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 3)
    {
      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      v10 = a1[2];
      v11 = *(a1 + 6);
      der_vm_integer_from_context();
      operator new();
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 3;
  *(a3 + 8) = "Got an unexpected type (not an integer) when trying to generate an integer operation.";
  *(a3 + 16) = 85;
  return result;
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__1EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = *(&v9 + 1) <= a1[4];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__1EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x18CFD9760);
}

double _ZN3TLE17intOpDeserializerINS_11BinaryIntOpIxXtlNS_3__0EEEEEEENS_5TupleINS_5ErrorEN7libkern20intrusive_shared_ptrINS_9OperationENS_14RefCountPolicyEEEEERNS_8ExecutorER14der_vm_contextRKNS_14FactDefinitionE@<D0>(__int128 *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 == 3)
  {
    v5 = a1[1];
    v8 = *a1;
    v9 = v5;
    v10 = a1[2];
    v11 = *(a1 + 6);
    if (der_vm_CEType_from_context() == 3)
    {
      v6 = a1[1];
      v8 = *a1;
      v9 = v6;
      v10 = a1[2];
      v11 = *(a1 + 6);
      der_vm_integer_from_context();
      operator new();
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 3;
  *(a3 + 8) = "Got an unexpected type (not an integer) when trying to generate an integer operation.";
  *(a3 + 16) = 85;
  return result;
}

void *_ZN3TLE11BinaryIntOpIxXtlNS_3__0EEEE7ExecuteERNS_12EncyclopediaE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a2 + 24))(&v8, a2, a1[2], a1[3]);
  if (v8 == 3 || v8 == 5)
  {
    v7 = *(&v9 + 1) < a1[4];
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = v7;
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Invalid fact type for this operation (expected an integer or BOOL)";
    *a3 = 3;
    *(a3 + 16) = 66;
  }

  return result;
}

void _ZN3TLE11BinaryIntOpIxXtlNS_3__0EEEED0Ev(TLE::RefCounted *a1)
{
  TLE::RefCounted::~RefCounted(a1);

  JUMPOUT(0x18CFD9760);
}

void TLE::inDeserializer(_DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  if (*a2 > 6u || ((1 << *a2) & 0x58) == 0)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 3;
    v5 = "Got an unexpected type (not an integer, string or data) when trying to generate an In operation.";
    v6 = 96;
  }

  else
  {
    if (der_vm_CEType_from_context() == 2)
    {
      operator new();
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = 3;
    v5 = "Got an unexpected type (not a sequence) when trying to read the array of matches.";
    v6 = 81;
  }

  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
}

void *TLE::AndOperation::Execute@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 32);
  v5 = (a1 + 32);
  v6 = v7;
  if (v7)
  {
    v8 = 8 * *(a1 + 40);
    if (v6 + v8 < v6 || HIDWORD(v8))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", a2);
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result = libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::end(v5, a2);
  v12 = v11 >> 63;
  v13 = result + (v11 >> 32);
  if (__CFADD__(result, v11 >> 32))
  {
    ++v12;
  }

  v15 = v12 << 63 >> 63 != v12 || v12 << 63 >> 63 == -1;
  while (1)
  {
    v16 = (v6 + (v9 >> 32));
    if (__CFADD__(v6, v9 >> 32))
    {
      v17 = (v9 >> 63) + 1;
    }

    else
    {
      v17 = v9 >> 63;
    }

    v18 = v17 << 63 >> 63;
    if (v18 != v17 || v18 < 0 || v15)
    {
      os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v11);
    }

    if (v16 == v13)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
      return result;
    }

    if (v9 < 0 || HIDWORD(v9) + 8 > v9)
    {
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v11);
    }

    v19 = 0u;
    v20 = 0u;
    result = (*(**v16 + 16))(&v19);
    if (v19)
    {
      *(a3 + 24) = 0;
      *a3 = v19;
      *(a3 + 16) = v20;
      return result;
    }

    if ((BYTE8(v20) & 1) == 0)
    {
      break;
    }

    if (HIDWORD(v9) - 2147483640 < 0xFFFFFFFF00000000)
    {
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.", v11);
    }

    v9 = (v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x800000000;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  return result;
}

unint64_t libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::end(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (result)
  {
    v4 = result + 8 * *(a1 + 2);
    v5 = "The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range";
    if (v4 < result || (v4 - result) >> 32)
    {
LABEL_9:
      os_detail::panic_trapping_policy::trap(v5, a2);
    }

    if ((((v4 - __PAIR128__(v4, result)) >> 64) & 1) != (v4 - result) >> 63 || v4 - result != v4 - result)
    {
      v5 = "The offset of the pointer inside its valid memory range can't be represented using int32_t";
      goto LABEL_9;
    }
  }

  return result;
}

void TLE::AndOperation::~AndOperation(TLE::AndOperation *this)
{
  *this = &unk_1EFA88F90;
  v2 = *(this + 4);
  if (v2)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v2, *(this + 10));
  }

  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA88F90;
  v2 = *(this + 4);
  if (v2)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v2, *(this + 10));
  }

  TLE::RefCounted::~RefCounted(this);
}

unint64_t TLE::OrOperation::Execute@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 32);
  v4 = (a1 + 32);
  v5 = v6;
  if (v6)
  {
    v7 = v5 + 8 * *(a1 + 40);
    v8 = v7 - v5;
    if (v7 < v5 || HIDWORD(v8))
    {
      os_detail::panic_trapping_policy::trap("The range of valid memory is too large to be represented by this type, or [begin, end) is not a well-formed range", a2);
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result = libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::end(v4, a2);
  v12 = v11 >> 63;
  v13 = result + (v11 >> 32);
  if (__CFADD__(result, v11 >> 32))
  {
    ++v12;
  }

  v15 = v12 << 63 >> 63 != v12 || v12 << 63 >> 63 == -1;
  while (1)
  {
    v16 = v5 + (v9 >> 32);
    if (__CFADD__(v5, v9 >> 32))
    {
      v17 = (v9 >> 63) + 1;
    }

    else
    {
      v17 = v9 >> 63;
    }

    v18 = v17 << 63 >> 63;
    if (v18 != v17 || v18 < 0 || v15)
    {
      os_detail::panic_trapping_policy::trap("This bounded_ptr is pointing to memory outside of what can be represented by a native pointer.", v11);
    }

    if (v16 == v13)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 24) = 0;
      *(a3 + 16) = 0;
      return result;
    }

    if (v9 < 0 || HIDWORD(v9) + 8 > v9)
    {
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator*: Dereferencing this pointer would access memory outside of the bounds set originally", v11);
    }

    v20 = 0u;
    v21 = 0u;
    result = (*(**v16 + 16))(&v20);
    if (v20)
    {
      *(a3 + 24) = 0;
      *a3 = v20;
      *(a3 + 16) = v21;
      return result;
    }

    result = (*(**v16 + 24))();
    if ((result & 1) == 0)
    {
      if (BYTE8(v21))
      {
        break;
      }
    }

    if (HIDWORD(v9) - 2147483640 < 0xFFFFFFFF00000000)
    {
      os_detail::panic_trapping_policy::trap("bounded_ptr<T>::operator+=(n): Adding the specified number of bytes to the offset representing the current position would overflow.", v11);
    }

    v9 = (v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x800000000;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

void TLE::OrOperation::~OrOperation(TLE::OrOperation *this)
{
  *this = &unk_1EFA89000;
  v2 = *(this + 4);
  if (v2)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v2, *(this + 10));
  }

  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA89000;
  v2 = *(this + 4);
  if (v2)
  {
    libkern::safe_allocation<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>,os_detail::IOKit_typed_allocator<libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>>,os_detail::panic_trapping_policy>::destroy_dealloc_(v2, *(this + 10));
  }

  TLE::RefCounted::~RefCounted(this);
}

void TLE::InOperation::Execute(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  (*(*a2 + 24))(v5, a2, *(a1 + 16), *(a1 + 24));
  if (LODWORD(v5[0]) == 3 || LODWORD(v5[0]) == 4 || LODWORD(v5[0]) == 6)
  {
    der_vm_iterate_b();
    v4 = v8;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = *(v4 + 24);
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "In Operation expected the Fact to be an integer, string or data";
    *a3 = 3;
    *(a3 + 16) = 63;
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t ___ZN3TLE11InOperation7ExecuteERNS_12EncyclopediaE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 116) != 3)
  {
    return 1;
  }

  v3 = der_vm_integer_from_context();
  result = 1;
  if (v3 == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return result;
}

uint64_t ___ZN3TLE11InOperation7ExecuteERNS_12EncyclopediaE_block_invoke_2(void *a1, uint64_t a2)
{
  if (*(a2 + 116) != 4)
  {
    return 1;
  }

  der_vm_string_from_context();
  v3 = CEBuffer_cmp();
  result = 1;
  if (!v3)
  {
    *(*(a1[4] + 8) + 24) = 1;
    return 0;
  }

  return result;
}

uint64_t ___ZN3TLE11InOperation7ExecuteERNS_12EncyclopediaE_block_invoke_3(void *a1, uint64_t a2)
{
  if (*(a2 + 116) != 6)
  {
    return 1;
  }

  der_vm_data_from_context();
  v3 = CEBuffer_cmp();
  result = 1;
  if (!v3)
  {
    *(*(a1[4] + 8) + 24) = 1;
    return 0;
  }

  return result;
}

void TLE::InOperation::~InOperation(TLE::InOperation *this)
{
  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x18CFD9760);
}

void TLE::QueryOperation::Execute(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  (*(*a2 + 24))(&v24, a2, *(a1 + 16), *(a1 + 24));
  if (v24 != 1)
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Query Operation expected the Fact to be a CoreEntitlements dictionary";
    *a3 = 3;
    *(a3 + 16) = 69;
    return;
  }

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
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x6002000000;
  v19[3] = __Block_byref_object_copy__6066;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19[4] = __Block_byref_object_dispose__6067;
  v23 = 0;
  v5 = *(*(&v25 + 1) + 16);
  v4 = *(*(&v25 + 1) + 32);
  v6 = *(*(&v25 + 1) + 48);
  v20 = **(&v25 + 1);
  v23 = v6;
  v22 = v4;
  v21 = v5;
  v11 = 0;
  v12 = &v11;
  v13 = 0x4002000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v7 = der_vm_iterate_b();
  v8 = v12 + 5;
  if (*(v12 + 10))
  {
    *(a3 + 24) = 0;
    *a3 = *v8;
    v9 = v8[2];
  }

  else
  {
    if (v7 == *MEMORY[0x1E69E50B8])
    {
      is_valid = der_vm_context_is_valid();
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = is_valid;
      goto LABEL_8;
    }

    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = "Attempted to execute a non-iterable query";
    *a3 = 6;
    v9 = 41;
  }

  *(a3 + 16) = v9;
LABEL_8:
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v19, 8);
}

void sub_18887EFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__6066(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

__n128 __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN3TLE14QueryOperation7ExecuteERNS_12EncyclopediaE_block_invoke(uint64_t a1, uint64_t a2)
{
  der_vm_execute_nocopy();
  der_vm_execute_nocopy();
  v3 = der_vm_integer_from_context() & 0xBFFFFFFFFFFFFFFFLL;
  **(a1 + 48) = v3;
  if (v3 > 0xB)
  {
    goto LABEL_12;
  }

  if (((1 << v3) & 0x35A) == 0)
  {
    if (((1 << v3) & 0xC80) != 0)
    {
      *(*(a1 + 48) + 8) = der_vm_integer_from_context();
      goto LABEL_8;
    }

    if (v3 == 5)
    {
      *(*(a1 + 48) + 8) = der_vm_BOOL_from_context();
      goto LABEL_8;
    }

LABEL_12:
    result = 0;
    v10 = *(*(a1 + 32) + 8);
    *(v10 + 40) = 1;
    *(v10 + 48) = "Attempted to execute unknown CoreEntitlements operation";
    *(v10 + 56) = 55;
    return result;
  }

  v4 = der_vm_string_from_context();
  v5 = *(a1 + 48);
  *(v5 + 8) = v4;
  *(v5 + 16) = v6;
  **(a1 + 48) |= 0x4000000000000000uLL;
LABEL_8:
  v7 = *(*(a1 + 40) + 8);
  v14 = *(v7 + 88);
  v11 = *(v7 + 40);
  v12 = *(v7 + 56);
  v13 = *(v7 + 72);
  if (der_vm_context_is_valid())
  {
    der_vm_execute_nocopy();
    v8 = *(*(a1 + 40) + 8);
    *(v8 + 40) = v11;
    *(v8 + 56) = v12;
    *(v8 + 72) = v13;
    *(v8 + 88) = v14;
  }

  return 1;
}

void TLE::QueryOperation::~QueryOperation(TLE::QueryOperation *this)
{
  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x18CFD9760);
}

void *TLE::OptionalOperation::Execute@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = 0u;
  v8 = 0u;
  result = (*(**(a1 + 32) + 16))(&v7);
  if (v7)
  {
    if (v7 != 5 && v7 != 1)
    {
      *(a2 + 24) = 0;
      *a2 = v7;
      *(a2 + 16) = v8;
      return result;
    }

    v6 = 1;
    *(a1 + 40) = 1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = BYTE8(v8);
  }

  *(a2 + 24) = v6;
  return result;
}

void TLE::OptionalOperation::~OptionalOperation(TLE::RefCounted **this)
{
  *this = &unk_1EFA890D8;
  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(this + 4);
  TLE::RefCounted::~RefCounted(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA890D8;
  libkern::intrusive_shared_ptr<TLE::Operation,TLE::RefCountPolicy>::reset(this + 4);

  TLE::RefCounted::~RefCounted(this);
}

double SecCmsSignedDataCreate(uint64_t a1)
{
  v2 = PORT_ArenaAlloc(*(a1 + 120), 0xB8uLL);
  if (v2)
  {
    result = 0.0;
    *(v2 + 176) = 0;
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
    *(v2 + 24) = a1;
  }

  return result;
}

void SecCmsSignedDataDestroy(uint64_t *result)
{
  if (result)
  {
    v2 = result[22];
    if (v2)
    {
      result[22] = 0;
      CFRelease(v2);
    }

    v3 = result[20];
    if (v3)
    {
      v4 = *v3;
      if (*v3)
      {
        v5 = v3 + 1;
        do
        {
          v6 = v4[17];
          if (v6)
          {
            CFRelease(v6);
          }

          v7 = v4[18];
          if (v7)
          {
            v4[18] = 0;
            CFRelease(v7);
          }

          v8 = v4[23];
          if (v8)
          {
            v4[23] = 0;
            CFRelease(v8);
          }

          v9 = v4[24];
          if (v9)
          {
            v4[24] = 0;
            CFRelease(v9);
          }

          v10 = *v5++;
          v4 = v10;
        }

        while (v10);
      }
    }

    SecCmsContentInfoDestroy(result);
  }
}

uint64_t SecCmsSignedDataEncodeBeforeStart(void *a1)
{
  v2 = a1[17];
  if (v2 && (v3 = a1[21]) != 0)
  {
    if (*v2)
    {
      v4 = v2 + 1;
      while (1)
      {
        v5 = *v3 != 0;
        if (!*v3)
        {
          break;
        }

        v6 = *v4++;
        ++v3;
        if (!v6)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1[3] + 120);
  OID = a1[4];
  if (OID || (OID = SECOID_FindOID(a1), (a1[4] = OID) != 0))
  {
    if (*(OID + 16) == 25)
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }
  }

  else
  {
    v9 = 3;
  }

  for (i = 0; ; ++i)
  {
    v11 = a1[20];
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        v12 = 0;
          ;
        }

        v12 = v12;
      }
    }

    else
    {
      v12 = 0;
    }

    if (i >= v12)
    {
      break;
    }

    v14 = v11[i];
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v15 = SEC_ASN1DecodeInteger(v14, &v22);
    if (v22 != 1 || v15 != 0)
    {
      v9 = 3;
    }

    v17 = SECOID_FindOID((v14 + 4));
    if (v17)
    {
      v18 = *(v17 + 16);
    }

    else
    {
      v18 = 0;
    }

    IndexByAlgTag = SecCmsAlgArrayGetIndexByAlgTag(a1[17], v18);
    v20 = IndexByAlgTag < 0 && v5;
    if (v20 || IndexByAlgTag < 0 && SecCmsSignedDataAddDigest(v7, a1, v18, 0))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!SEC_ASN1EncodeInteger(v7, a1 + 15, v9))
  {
    return 0xFFFFFFFFLL;
  }

  if (SecCmsArraySortByDER(a1[17], &SECOID_AlgorithmIDTemplate, a1[21]))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t SecCmsSignedDataAddDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = PORT_ArenaAlloc(a1, 0x20uLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  if (SECOID_SetAlgorithmID(a1, v8, v5, 0))
  {
    return 0xFFFFFFFFLL;
  }

  if (SecCmsArrayAdd(a1, (a2 + 136), v9))
  {
    return 0xFFFFFFFFLL;
  }

  result = SecCmsArrayAdd(a1, (a2 + 168), a4);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t SecCmsSignedDataSignerInfoCount(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1 || !*v1)
  {
    return 0;
  }

  result = 0;
  v3 = v1 + 1;
    ;
  }

  return result;
}

uint64_t SecCmsSignedDataEncodeAfterData(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 120);
  v3 = *(a1 + 104);
  if (v3)
  {
    *&v69 = 0;
    Size = 0;
    if (SecCmsDigestContextFinishMultiple(v3, &Size, &v69) || Size && v69 && SecCmsSignedDataSetDigests(a1, Size, v69))
    {
      return 0xFFFFFFFFLL;
    }

    SecCmsDigestContextCancel(*(a1 + 104));
    *(a1 + 104) = 0;
  }

  v4 = 0;
  v65 = v2;
  v66 = 0;
  v5 = *(a1 + 160);
  v64 = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_8:
  v6 = v5->i64[0];
  if (v5->i64[0])
  {
    v6 = 0;
      ;
    }

    v6 = v6;
  }

  while (v4 < v6)
  {
    v8 = v5->i64[v4];
    OID = SECOID_FindOID(v8 + 32);
    if (OID)
    {
      v10 = *(OID + 16);
    }

    else
    {
      v10 = 0;
    }

    IndexByAlgTag = SecCmsAlgArrayGetIndexByAlgTag(*(a1 + 136), v10);
    if ((IndexByAlgTag & 0x80000000) != 0 || (v12 = *(a1 + 168)) == 0 || (v13 = IndexByAlgTag, (v14 = *(v12 + 8 * IndexByAlgTag)) == 0))
    {
      ThreadErrInfo = PR_getThreadErrInfo(1, &v69);
      if (ThreadErrInfo)
      {
        *ThreadErrInfo = 0xFFFFE08500000000;
      }

      return 0xFFFFFFFFLL;
    }

    v15 = *(a1 + 32);
    if (!v15)
    {
      v16 = SECOID_FindOID(a1);
      *(a1 + 32) = v16;
      if (!v16)
      {
        return 0xFFFFFFFFLL;
      }

      v15 = v16;
      v14 = *(*(a1 + 168) + 8 * v13);
    }

    Size = 0;
    v72 = 0;
    v17 = *(*(*(v8 + 128) + 24) + 120);
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v69 = v18;
    v70 = v18;
    v19 = *(v8 + 16);
    if (v19 == 1)
    {
      v20 = *(v8 + 168);
      v29 = *(v8 + 176);
      *(v8 + 168) = 0;
      if (v29)
      {
        *(v8 + 176) = 0;
        CFRelease(v29);
      }

      v27 = 0;
      v28 = 8;
    }

    else
    {
      if (v19)
      {
        v46 = PR_getThreadErrInfo(1, &v67);
        if (v46)
        {
          *v46 = 0xFFFFE08600000000;
        }

        goto LABEL_114;
      }

      v20 = *(v8 + 168);
      *(v8 + 168) = 0;
      v21 = *(v8 + 136);
      v23 = v21[27];
      v22 = v21[28];
      v26 = v21 + 29;
      v24 = v21[29];
      v25 = v26[1];
      *&v69 = v22;
      *(&v69 + 1) = v23;
      *&v70 = v25;
      *(&v70 + 1) = v24;
      v27 = &v69;
      v28 = &v69 + 8;
    }

    v30 = SECOID_FindOID(v8 + 32);
    if (v30)
    {
      v31 = *(v30 + 16);
      if (v27 && *v28 && (v32 = SECOID_FindOID(v27)) != 0)
      {
        v33 = *(v32 + 16);
      }

      else
      {
        v33 = 0;
      }

      if (v31 == 3)
      {
        v44 = PR_getThreadErrInfo(1, &v67);
        if (v44)
        {
          v45 = 0xFFFFE00600000000;
          goto LABEL_101;
        }

        goto LABEL_108;
      }
    }

    else if (v27 && *v28 && (v34 = SECOID_FindOID(v27)) != 0)
    {
      v31 = 0;
      v33 = *(v34 + 16);
    }

    else
    {
      v33 = 0;
      v31 = 0;
    }

    if (*(v8 + 64))
    {
      if (SecCmsAttributeArraySetAttr(v17, (v8 + 64), 0x22u, v14) || SecCmsAttributeArraySetAttr(v17, (v8 + 64), 0x21u, v15))
      {
        goto LABEL_108;
      }

      v35 = PORT_NewArena(1024);
      if (!v35)
      {
        v44 = PR_getThreadErrInfo(1, &v73);
        if (v44)
        {
          v45 = 0xFFFFE01300000000;
LABEL_101:
          *v44 = v45;
        }

LABEL_108:
        v36 = 0;
        goto LABEL_115;
      }

      v36 = v35;
      if (SecCmsArraySortByDER(*(v8 + 64), &nss_cms_attribute_template, 0))
      {
        goto LABEL_115;
      }

      v67 = 0;
      v68 = 0;
      if (!SEC_ASN1EncodeItem(v36, &v67, v8 + 64, &nss_cms_set_of_attribute_template))
      {
        goto LABEL_115;
      }

      Size = SecKeyGetSize(v20, 1);
      v37 = PORT_ZAlloc(Size);
      v72 = v37;
      if (!v37)
      {
        Size = 0;
        goto LABEL_115;
      }

      if (SecKeyDigestAndSign(v20, (v8 + 32), v68, v67, v37, &Size))
      {
        if (v72)
        {
          free(v72);
        }

        Size = 0;
        PORT_FreeArena(v36, 0);
        if (!v20)
        {
          goto LABEL_108;
        }

LABEL_113:
        CFRelease(v20);
LABEL_114:
        v36 = 0;
        v20 = 0;
LABEL_115:
        if (Size)
        {
          if (v72)
          {
            free(v72);
          }

          v72 = 0;
LABEL_119:
          Size = 0;
        }

        if (v20)
        {
          CFRelease(v20);
        }

        if (v36)
        {
          PORT_FreeArena(v36, 0);
        }

        return 0xFFFFFFFFLL;
      }

      PORT_FreeArena(v36, 0);
    }

    else
    {
      Size = SecKeyGetSize(v20, 1);
      v38 = PORT_ZAlloc(Size);
      v72 = v38;
      if (!v38)
      {
        v36 = 0;
        goto LABEL_119;
      }

      if (SecKeySignDigest(v20, (v8 + 32), *(v14 + 8), *v14, v38, &Size))
      {
        if (v72)
        {
          free(v72);
        }

        Size = 0;
        if (v20)
        {
          goto LABEL_113;
        }

        return 0xFFFFFFFFLL;
      }
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (SECITEM_CopyItem(v17, (v8 + 104), &Size))
    {
      goto LABEL_114;
    }

    if (v72)
    {
      free(v72);
    }

    Size = 0;
    v72 = 0;
    if (v33 > 123)
    {
      if (v33 == 124)
      {
LABEL_72:
        if (v31 == 4)
        {
          v33 = 125;
        }

        else
        {
          v33 = 0;
        }

        goto LABEL_75;
      }

      if (v33 != 202)
      {
        goto LABEL_75;
      }

      if (v31 > 192)
      {
        if (v31 != 193)
        {
          if (v31 == 194)
          {
            v33 = 213;
            goto LABEL_75;
          }

          goto LABEL_86;
        }

        v33 = 212;
      }

      else
      {
        if (v31 != 4)
        {
          if (v31 == 192)
          {
            v33 = 211;
            goto LABEL_75;
          }

          goto LABEL_86;
        }

        v33 = 203;
      }
    }

    else
    {
      if ((v33 - 56) < 2)
      {
        goto LABEL_72;
      }

      if (v33 != 16)
      {
        goto LABEL_75;
      }

      if (v31 <= 191)
      {
        if (v31 != 1)
        {
          if (v31 == 4)
          {
            v33 = 20;
            goto LABEL_75;
          }

          goto LABEL_86;
        }

        v33 = 17;
      }

      else
      {
        switch(v31)
        {
          case 192:
            v33 = 195;
            break;
          case 193:
            v33 = 196;
            break;
          case 194:
            v33 = 197;
            break;
          default:
LABEL_86:
            v33 = 0;
            break;
        }
      }
    }

LABEL_75:
    if (SECOID_SetAlgorithmID(v17, (v8 + 72), v33, 0))
    {
      goto LABEL_114;
    }

    v39 = *(v8 + 144);
    if (v39)
    {
      v66 += CFArrayGetCount(v39);
    }

    v2 = v65;
    ++v4;
    v5 = *(a1 + 160);
    if (v5)
    {
      goto LABEL_8;
    }

LABEL_12:
    v6 = 0;
  }

  v41 = v64;
  if (SecCmsArraySortByDER(v64, &SecCmsSignerInfoTemplate, 0))
  {
    return 0xFFFFFFFFLL;
  }

  v42 = *(a1 + 176);
  if (v42)
  {
    v43 = CFArrayGetCount(v42) + v66;
  }

  else
  {
    v43 = v66;
  }

  if ((v43 - 0xFFFFFFFFFFFFFFELL) <= 0xF000000000000002)
  {
    result = 0;
    *(a1 + 144) = 0;
    return result;
  }

  v48 = PORT_ArenaAlloc(v2, 8 * v43 + 8);
  *(a1 + 144) = v48;
  if (v48)
  {
    if (v64)
    {
      v49 = v64->i64[0];
      if (v64->i64[0])
      {
        v50 = 0;
        v41 = 0;
        do
        {
          for (i = 0; CFArrayGetCount(*(v49 + 144)) > i; ++i)
          {
            v52 = PORT_ArenaAlloc(v2, 0x10uLL);
            if (v52)
            {
              *v52 = 0;
              v52[1] = 0;
            }

            *(*(a1 + 144) + 8 * v41) = v52;
            ValueAtIndex = CFArrayGetValueAtIndex(*(v49 + 144), i);
            v54 = ValueAtIndex[3];
            if ((v54 & 0x8000000000000000) == 0)
            {
              v55 = ValueAtIndex[2];
              v56 = *(*(a1 + 144) + 8 * v41);
              *v56 = v54;
              v56[1] = v55;
              ++v41;
            }
          }

          v49 = v64->i64[++v50];
        }

        while (v49);
      }

      else
      {
        v41 = 0;
      }
    }

    v57 = *(a1 + 176);
    if (v57)
    {
      for (j = 0; CFArrayGetCount(v57) > j; ++j)
      {
        v59 = PORT_ArenaAlloc(v2, 0x10uLL);
        if (v59)
        {
          *v59 = 0;
          v59[1] = 0;
        }

        *(*(a1 + 144) + 8 * v41) = v59;
        v60 = CFArrayGetValueAtIndex(*(a1 + 176), j);
        v61 = v60[3];
        if ((v61 & 0x8000000000000000) == 0)
        {
          v62 = v60[2];
          v63 = *(*(a1 + 144) + 8 * v41);
          *v63 = v61;
          v63[1] = v62;
          ++v41;
        }

        v57 = *(a1 + 176);
      }
    }

    *(*(a1 + 144) + 8 * v41) = 0;
    SecCmsArraySort(*(a1 + 144), SecCmsUtilDERCompare, 0, 0);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t SecCmsSignedDataSetDigests(void *a1, unint64_t **a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1[17];
    if (v4)
    {
      v5 = a1[3];
      if (v5)
      {
        v6 = *(v5 + 120);
        if (v6)
        {
          v9 = a1[21];
          if (v9)
          {
            if (*v9)
            {
              return 0;
            }

            goto LABEL_20;
          }

          if (*v4)
          {
            v13 = v4 + 1;
            v14 = -1;
            do
            {
              v15 = v14;
              v16 = *v13++;
              ++v14;
            }

            while (v16);
            if (v14 > 0xFFFFFFC)
            {
LABEL_50:
              v10 = -8173;
              goto LABEL_9;
            }

            v17 = v15 + 2;
          }

          else
          {
            v17 = 0;
          }

          v18 = 8 * v17 + 8;
          v19 = PORT_ArenaAlloc(v6, v18);
          if (v19)
          {
            v20 = v19;
            bzero(v19, v18);
            a1[21] = v20;
            v4 = a1[17];
LABEL_20:
            v21 = *v4;
            if (*v4)
            {
              v22 = 0;
              while (a2)
              {
                v23 = *a2;
                if (!*a2)
                {
                  break;
                }

                v36 = v22;
                v24 = 0;
                v26 = *v21;
                v25 = *(v21 + 8);
                while (1)
                {
                  v27 = *v23;
                  v28 = *v23 >= v26 ? v26 : *v23;
                  if (!memcmp(v23[1], v25, v28) && v27 == v26)
                  {
                    v31 = v23[2];
                    v30 = v23[3];
                    v32 = *(v21 + 16);
                    v33 = v31 >= v32 ? *(v21 + 16) : v31;
                    if (!memcmp(v30, *(v21 + 24), v33) && v31 == v32)
                    {
                      break;
                    }
                  }

                  v23 = a2[++v24];
                  if (!v23)
                  {
                    goto LABEL_48;
                  }
                }

                v10 = -8059;
                if ((v24 & 0x80000000) != 0)
                {
                  goto LABEL_9;
                }

                v35 = SECITEM_AllocItem(*(a1[3] + 120), 0, 0);
                *(a1[21] + 8 * v36) = v35;
                if (!v35)
                {
                  goto LABEL_50;
                }

                result = SECITEM_CopyItem(*(a1[3] + 120), *(a1[21] + 8 * v36), *(a3 + 8 * (v24 & 0x7FFFFFFF)));
                if (result)
                {
                  goto LABEL_50;
                }

                v22 = v36 + 1;
                v21 = *(a1[17] + 8 * (v36 + 1));
                if (!v21)
                {
                  return result;
                }
              }

LABEL_48:
              v10 = -8059;
              goto LABEL_9;
            }

            return 0;
          }

          a1[21] = 0;
          goto LABEL_50;
        }
      }
    }
  }

  v10 = -8187;
LABEL_9:
  ThreadErrInfo = PR_getThreadErrInfo(1, v37);
  if (ThreadErrInfo)
  {
    *ThreadErrInfo = 0;
    ThreadErrInfo[1] = v10;
  }

  return 0xFFFFFFFFLL;
}

uint64_t SecCmsSignedDataDecodeAfterData(void *a1)
{
  result = a1[13];
  if (result)
  {
    v3 = a1[2];
    if (v3 && *v3)
    {
      v4 = 0;
      v5 = 0;
      if (SecCmsDigestContextFinishMultiple(result, &v4, &v5) || SecCmsSignedDataSetDigests(a1, v4, v5))
      {
        return 0xFFFFFFFFLL;
      }

      result = a1[13];
    }

    SecCmsDigestContextCancel(result);
    result = 0;
    a1[13] = 0;
  }

  return result;
}

uint64_t SecCmsSignedDataVerifySignerInfo_internal(void *a1, int a2, const void *a3, SecTrustRef *a4)
{
  if (!a1)
  {
    return 4294967246;
  }

  v5 = a1[20];
  if (!v5)
  {
    return 4294967246;
  }

  v8 = *v5;
  if (*v5)
  {
    v8 = 0;
      ;
    }
  }

  if (v8 <= a2)
  {
    return 4294967246;
  }

  v10 = v5[a2];
  OID = SECOID_FindOID(v10 + 32);
  if (!OID)
  {
    return 4294899481;
  }

  v12 = OID;
  if (!a1[21])
  {
    started = SecCmsDigestContextStartMultiple(a1[17]);
    SecCmsSignedDataSetDigestContext(a1, started);
    SecCmsDigestContextCancel(started);
    if (!a1[21])
    {
      return 4294941980;
    }
  }

  IndexByAlgTag = SecCmsAlgArrayGetIndexByAlgTag(a1[17], *(v12 + 16));
  if ((IndexByAlgTag & 0x80000000) != 0)
  {
    return 4294941980;
  }

  v15 = *(a1[21] + 8 * IndexByAlgTag);
  if (!v15)
  {
    return 4294941980;
  }

  v16 = a1[4];
  if (!v16)
  {
    v16 = SECOID_FindOID(a1);
    a1[4] = v16;
  }

  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  SigningCert_internal = SecCmsSignerInfoGetSigningCert_internal(v10);
  if (!SigningCert_internal)
  {
    v25 = 4;
    goto LABEL_48;
  }

  v18 = SecCertificateCopyKey(SigningCert_internal);
  if (!v18)
  {
    v25 = 0;
    goto LABEL_48;
  }

  v19 = v18;
  v20 = *(v10 + 64);
  if (!v20 || !*v20)
  {
    v28 = *(v10 + 104);
    if (v28)
    {
      if (!SecKeyVerifyDigest(v19, (v10 + 32), *(v15 + 8), *v15, *(v10 + 112), v28))
      {
        goto LABEL_30;
      }

      goto LABEL_40;
    }

    v25 = 0;
    goto LABEL_47;
  }

  if (v16)
  {
    AttrByOidTag = SecCmsAttributeArrayFindAttrByOidTag(v20, 0x21u, 1);
    if (!AttrByOidTag || !SecCmsAttributeCompareValue(AttrByOidTag, v16))
    {
      goto LABEL_45;
    }

    v20 = *(v10 + 64);
  }

  v22 = SecCmsAttributeArrayFindAttrByOidTag(v20, 0x22u, 1);
  if (!v22)
  {
LABEL_45:
    v25 = 8;
LABEL_47:
    CFRelease(v19);
LABEL_48:
    *(v10 + 160) = v25;
    ThreadErrInfo = PR_getThreadErrInfo(1, &v33);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0xFFFFE02F00000000;
    }

    return 0xFFFFFFFFLL;
  }

  if (!SecCmsAttributeCompareValue(v22, v15))
  {
    v25 = 3;
    goto LABEL_47;
  }

  v23 = PORT_NewArena(1024);
  if (!v23)
  {
    v25 = 9;
    goto LABEL_47;
  }

  v24 = v23;
  v31 = 0;
  v32 = 0;
  v25 = 9;
  if (!SEC_ASN1EncodeItem(v23, &v31, v10 + 64, &nss_cms_set_of_attribute_template) || !v32 || !v31)
  {
    goto LABEL_47;
  }

  v26 = SecKeyDigestAndVerify(v19, (v10 + 32), v32, v31, *(v10 + 112), *(v10 + 104));
  PORT_FreeArena(v24, 0);
  if (v26)
  {
LABEL_40:
    if (PORT_GetError() == -8182)
    {
      v29 = PR_getThreadErrInfo(1, &v33);
      if (v29)
      {
        *v29 = 0xFFFFE02F00000000;
      }
    }

    CFRelease(v19);
    *(v10 + 160) = 2;
    return 0xFFFFFFFFLL;
  }

LABEL_30:
  CFRelease(v19);
  *(v10 + 160) = 1;

  return SecCmsSignerInfoVerifyCertificate(v10, a3, a4);
}

uint64_t SecCmsSignedDataSetDigestContext(void *a1, void *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (SecCmsDigestContextFinishMultiple(a2, &v5, &v4) || (result = SecCmsSignedDataSetDigests(a1, v5, v4), result))
  {

    return PORT_GetError();
  }

  return result;
}

uint64_t SecCmsSignedDataVerifyCertsOnly(uint64_t a1, uint64_t a2, const void *a3)
{
  if (a1 && a2 && (v3 = *(a1 + 144)) != 0)
  {
    v4 = *v3;
    if (*v3)
    {
      LODWORD(v6) = 0;
      v7 = *MEMORY[0x1E695E480];
      v8 = v3 + 1;
      do
      {
        if ((*v4 & 0x8000000000000000) != 0 || (cf = SecCertificateCreateWithBytes(0, *(v4 + 8), *v4)) == 0)
        {
          v6 = 0xFFFFFFFFLL;
        }

        else
        {
          v9 = CFArrayCreate(v7, &cf, 1, 0);
          Current = CFAbsoluteTimeGetCurrent();
          v11 = CERT_VerifyCert(v9, a3, 0, Current);
          if (v9)
          {
            CFRelease(v9);
          }

          v6 = v11 | v6;
          v12 = cf;
          if (cf)
          {
            cf = 0;
            CFRelease(v12);
          }
        }

        v13 = *v8++;
        v4 = v13;
      }

      while (v13);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    ThreadErrInfo = PR_getThreadErrInfo(1, &v17);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0xFFFFE00500000000;
    }

    return 0xFFFFFFFFLL;
  }

  return v6;
}

uint64_t SecCmsSignedDataVerifyCertsOnlyMessage()
{
  ThreadErrInfo = PR_getThreadErrInfo(1, &v2);
  if (ThreadErrInfo)
  {
    *ThreadErrInfo = 0xFFFFE00500000000;
  }

  return 0xFFFFFFFFLL;
}

uint64_t SecCmsSignedDataAddCertList(uint64_t a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 176))
  {
    v6.length = CFArrayGetCount(theArray);
    v6.location = 0;
    CFArrayAppendArray(*(a1 + 176), theArray, v6);
    return 0;
  }

  else
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, theArray);
    result = 0;
    *(a1 + 176) = MutableCopy;
  }

  return result;
}

uint64_t SecCmsSignedDataAddCertChain(uint64_t a1, void *a2)
{
  v3 = CERT_CertChainFromCert(a2, 0, 0);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  v5 = SecCmsSignedDataAddCertList(a1, v3);
  CFRelease(v4);
  return v5;
}

uint64_t SecCmsSignedDataAddCertificate(uint64_t a1, void *value)
{
  if (!value)
  {
    return 0xFFFFFFFFLL;
  }

  Mutable = *(a1 + 176);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *(a1 + 176) = Mutable;
  }

  CFArrayAppendValue(Mutable, value);
  return 0;
}

BOOL SecCmsSignedDataContainsCertsOrCrls(uint64_t a1)
{
  v1 = *(a1 + 144);
  result = 1;
  if (!v1 || !*v1)
  {
    v2 = *(a1 + 152);
    if (!v2 || !*v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SecCmsSignedDataSetDigestValue(void *a1, uint64_t a2, size_t *a3)
{
  v5 = a1[3];
  v6 = *(v5 + 120);
  if (a3)
  {
    v8 = PORT_ArenaAlloc(*(v5 + 120), 0x10uLL);
    v9 = v8;
    if (v8)
    {
      *v8 = 0;
      v8[1] = 0;
    }

    if (SECITEM_CopyItem(v6, v8, a3))
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v9 = 0;
  }

  if (!a1[21])
  {
    v10 = a1[17];
    if (v10)
    {
      if (*v10)
      {
        v11 = v10 + 1;
        v12 = -1;
        do
        {
          v13 = v12;
          v14 = *v11++;
          ++v12;
        }

        while (v14);
        if (v12 >= 0xFFFFFFD)
        {
          v15 = &v24;
          goto LABEL_24;
        }

        LODWORD(v10) = v13 + 2;
      }

      else
      {
        LODWORD(v10) = 0;
      }
    }

    v16 = (8 * v10 + 8);
    v17 = PORT_ArenaAlloc(*(a1[3] + 120), v16);
    if (!v17)
    {
      a1[21] = 0;
      v15 = &v25;
LABEL_24:
      ThreadErrInfo = PR_getThreadErrInfo(1, v15);
      if (ThreadErrInfo)
      {
        *ThreadErrInfo = 0xFFFFE01300000000;
      }

      return 0xFFFFFFFFLL;
    }

    v18 = v17;
    bzero(v17, v16);
    a1[21] = v18;
  }

  v19 = a1[17];
  if (v19)
  {
    IndexByAlgTag = SecCmsAlgArrayGetIndexByAlgTag(v19, a2);
    if ((IndexByAlgTag & 0x80000000) == 0)
    {
      v21 = IndexByAlgTag;
      result = 0;
      *(a1[21] + 8 * v21) = v9;
      return result;
    }
  }

  result = SecCmsSignedDataAddDigest(v6, a1, a2, v9);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t *SecCmsSignedDataCreateCertsOnly(uint64_t a1, void *a2, int a3)
{
  v6 = PORT_ArenaAlloc(*(a1 + 120), 0xB8uLL);
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  *(v6 + 176) = 0;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  *(v6 + 24) = a1;
  if (!a3)
  {
    if (!SecCmsSignedDataAddCertificate(v6, a2))
    {
      goto LABEL_6;
    }

LABEL_7:
    SecCmsSignedDataDestroy(v7);
    return 0;
  }

  if (SecCmsSignedDataAddCertChain(v6, a2))
  {
    goto LABEL_7;
  }

LABEL_6:
  if (SecCmsContentInfoSetContentData(v7, 0, 1))
  {
    goto LABEL_7;
  }

  return v7;
}

uint64_t InitOIDHashOnce()
{
  v0 = &unk_1EA91C000;
  oidhash = PL_NewHashTable(SECITEM_Hash, SECITEM_HashCompare);
  v1 = PL_NewHashTable(secoid_HashNumber, PL_CompareValues);
  oidmechhash = v1;
  if (oidhash)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    goto LABEL_23;
  }

  for (i = 0; i != 217; ++i)
  {
    v4 = &oids[40 * i];
    v5 = v0[495];
    v6 = (*(v5 + 16))(v4);
    v7 = PL_HashTableRawLookup(v5, v6, v4);
    v8 = *v7;
    if (*v7)
    {
      result = (*(v5 + 32))(*(v8 + 24), &oids[40 * i]);
      if (!result)
      {
        if (*(v8 + 24))
        {
          result = (*(*(v5 + 40) + 24))(*(v5 + 48), v8, 0);
        }

        *(v8 + 24) = v4;
      }

      continue;
    }

    v10 = v7;
    v11 = *(v5 + 12);
    v12 = (1 << -v11);
    if (*(v5 + 8) >= v12 - (v12 >> 3))
    {
      v13 = v0;
      v14 = *v5;
      v15 = 8 * (2 << (32 - v11));
      v16 = (**(v5 + 40))(*(v5 + 48), v15);
      *v5 = v16;
      if (v16)
      {
        bzero(v16, v15);
        v17 = 0;
        --*(v5 + 12);
        do
        {
          v18 = *(v14 + 8 * v17);
          if (v18)
          {
            do
            {
              v19 = *v18;
              v20 = PL_HashTableRawLookup(v5, *(v18 + 8), *(v18 + 16));
              *v18 = 0;
              *v20 = v18;
              v18 = v19;
            }

            while (v19);
          }

          ++v17;
        }

        while (v17 != v12);
        (*(*(v5 + 40) + 8))(*(v5 + 48), v14);
        v10 = PL_HashTableRawLookup(v5, v6, v4);
        v0 = v13;
        goto LABEL_18;
      }

      *v5 = v14;
LABEL_23:
      PORT_SetError(-8191);
      abort();
    }

LABEL_18:
    result = (*(*(v5 + 40) + 16))(*(v5 + 48), v4);
    if (!result)
    {
      goto LABEL_23;
    }

    *(result + 8) = v6;
    *(result + 16) = v4;
    *(result + 24) = v4;
    *result = *v10;
    *v10 = result;
    ++*(v5 + 8);
  }

  return result;
}

unint64_t SecCmsEncryptedDataCreate(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  result = PORT_ArenaAlloc(*(a1 + 120), 0x90uLL);
  if (result)
  {
    if ((v7 = result, *(result + 112) = 0u, *(result + 128) = 0u, *(result + 80) = 0u, *(result + 96) = 0u, *(result + 48) = 0u, *(result + 64) = 0u, *(result + 16) = 0u, *(result + 32) = 0u, *result = 0u, *(result + 24) = a1, v4 <= 0xA) && ((1 << v4) & 0x4A0) != 0 || (result = 0, v4 - 184 <= 4) && ((1 << (v4 + 72)) & 0x15) != 0)
    {
      if (SECOID_SetAlgorithmID(*(a1 + 120), (v7 + 40), v4, 0))
      {
        return 0;
      }

      else
      {
        *(v7 + 88) = a3;
        return v7;
      }
    }
  }

  return result;
}

void SecCmsEncryptedDataDestroy(uint64_t *result)
{
  if (result)
  {
    SecCmsContentInfoDestroy(result);
  }
}

uint64_t SecCmsEncryptedDataEncodeBeforeStart(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    v3 = 2 * (*v2 != 0);
  }

  else
  {
    v3 = 0;
  }

  if (!SEC_ASN1EncodeInteger(*(a1[3] + 120), a1 + 15, v3))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1[3];
  v5 = *(v4 + 144);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5(*(v4 + 152), a1 + 5);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  SecCmsContentInfoSetBulkKey(a1, v6);
  CFRelease(v7);
  return 0;
}

void SecCmsEncryptedDataEncodeAfterData(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    CCCryptorRelease(*v1);
    free(v1);
    *(a1 + 96) = 0;
  }
}

uint64_t SecCmsArrayAdd(uint64_t a1, char **a2, uint64_t a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a2;
  if (v5)
  {
    if (*v5)
    {
      v6 = 0;
        ;
      }

      if (v6 > 0xFFFFFFC)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      LODWORD(v6) = 0;
    }

    v9 = PORT_ArenaGrow(a1, v5, (8 * v6 + 8), (8 * v6 + 16));
    if (v9)
    {
      goto LABEL_13;
    }

    return 0xFFFFFFFFLL;
  }

  v9 = PORT_ArenaAlloc(a1, 0x10uLL);
  LODWORD(v6) = 0;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_13:
  result = 0;
  *(v9 + 8 * v6) = a3;
  *(v9 + 8 * (v6 + 1)) = 0;
  *a2 = v9;
  return result;
}

void *SecCmsArraySort(void *result, uint64_t (*a2)(void, void), int8x16_t *a3, int8x16_t *a4)
{
  v4 = a4;
  v6 = result;
  if (result)
  {
    v7 = *result;
    if (*result)
    {
      v7 = 0;
        ;
      }
    }

    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    LODWORD(v7) = 0;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  if (a3->i64[0])
  {
    v9 = 0;
      ;
    }

    v21 = v9;
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_13:
  v21 = 0;
  if (!a4)
  {
LABEL_18:
    v20 = 0;
    goto LABEL_19;
  }

LABEL_14:
  if (!a4->i64[0])
  {
    goto LABEL_18;
  }

  v11 = 0;
    ;
  }

  v20 = v11;
LABEL_19:
  if (v7 >= 2)
  {
    v13 = v7 - 1;
    do
    {
      if (v13 < 1)
      {
        break;
      }

      v14 = 0;
      v15 = v13;
      v16 = 1;
      v17 = a3;
      v18 = a3;
      v19 = v4;
      v13 = 0;
      do
      {
        result = a2(v6[v14], v6[v16]);
        if (result >= 1)
        {
          *&v6[v14] = vextq_s8(*&v6[v14], *&v6[v14], 8uLL);
          if (v17 && v16 < v21)
          {
            *v18 = vextq_s8(*v18, *v18, 8uLL);
          }

          if (v19)
          {
            if (v16 < v20)
            {
              *v4 = vextq_s8(*v4, *v4, 8uLL);
            }
          }

          v13 = v16;
        }

        v4 = (v4 + 8);
        v18 = (v18 + 8);
        ++v16;
        ++v14;
        --v15;
      }

      while (v15);
      v4 = v19;
      a3 = v17;
    }

    while (v13);
  }

  return result;
}

uint64_t CERT_VerifyCert(const void *a1, const void *a2, SecTrustRef *a3, CFAbsoluteTime a4)
{
  trust = 0;
  v6 = SecTrustCreateWithCertificates(a1, a2, &trust);
  if (v6)
  {
    goto LABEL_5;
  }

  v7 = CFDateCreate(0, a4);
  v6 = SecTrustSetVerifyDate(trust, v7);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    goto LABEL_5;
  }

  if (a3)
  {
    v6 = 0;
    *a3 = trust;
    return v6;
  }

  v12 = -1431655766;
  v6 = SecTrustEvaluateInternal(trust, &v12);
  if (v6)
  {
    goto LABEL_5;
  }

  if (v12 != 4 && v12 != 1)
  {
    ThreadErrInfo = PR_getThreadErrInfo(1, &v14);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0xFFFFE01500000000;
    }

    v6 = 0xFFFFFFFFLL;
LABEL_5:
    v8 = trust;
    if (trust)
    {
      trust = 0;
      CFRelease(v8);
    }

    return v6;
  }

  v10 = trust;
  if (trust)
  {
    trust = 0;
    CFRelease(v10);
  }

  return 0;
}

__CFDictionary *_create_mail_keychain_query(const __CFDictionary *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Count = CFDictionaryGetCount(a1);
  MutableCopy = CFDictionaryCreateMutableCopy(v2, Count, a1);
  CFDictionarySetValue(MutableCopy, @"sync", @"syna");
  return MutableCopy;
}

CFTypeRef CERT_FindItemInAllAvailableKeychains(const __CFDictionary *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  cf = 0;
  result = 0;
  v13 = 0x104B57A5353A5AA7;
  v14 = -1803342146;
  if (SecItemCopyMatching(a1, &result) != -25300)
  {
    return result;
  }

  v2 = _SecSecuritydCopyWhoAmI(&cf);
  v3 = cf;
  if (cf)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    if (CFDictionaryGetValue(v2, @"status"))
    {
      Value = CFDictionaryGetValue(v2, @"musr");
      if (CFDictionaryGetValue(v2, @"system-keychain"))
      {
        if (Value && CFDataGetLength(Value) == 16)
        {
          BytePtr = CFDataGetBytePtr(Value);
          if (v13 == *BytePtr && v14 == *(BytePtr + 2))
          {
            Count = CFDictionaryGetCount(a1);
            MutableCopy = CFDictionaryCreateMutableCopy(0, Count + 1, a1);
            CFDictionaryAddValue(MutableCopy, @"u_SystemKeychain", *MEMORY[0x1E695E4D0]);
            SecItemCopyMatching(MutableCopy, &result);
            if (MutableCopy)
            {
              CFRelease(MutableCopy);
            }
          }
        }
      }
    }

    goto LABEL_17;
  }

  if (v2)
  {
LABEL_17:
    CFRelease(v2);
    v3 = cf;
  }

  if (v3)
  {
    cf = 0;
    CFRelease(v3);
  }

  return result;
}

__CFBundle *___is_apple_mail_bundle_block_invoke()
{
  result = CFBundleGetMainBundle();
  if (result)
  {
    result = CFBundleGetIdentifier(result);
    if (result)
    {
      v1 = result;
      result = CFStringHasPrefix(result, @"com.apple.mail");
      if (result || (result = CFStringHasPrefix(v1, @"com.apple.mobilemail"), result))
      {
        v2 = 1;
      }

      else
      {
        result = CFStringHasPrefix(v1, @"com.apple.email");
        v2 = result != 0;
      }
    }

    else
    {
      v2 = 0;
    }

    _is_apple_mail_bundle_result = v2;
  }

  return result;
}

const __CFArray *CERT_CertChainFromCert(void *a1, int a2, int a3)
{
  trust = 0;
  BasicX509 = SecPolicyCreateBasicX509();
  if (!BasicX509)
  {
    return 0;
  }

  v7 = BasicX509;
  values = a1;
  if (a1)
  {
    v8 = CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
  }

  else
  {
    v8 = 0;
  }

  if (!SecTrustCreateWithCertificates(v8, v7, &trust))
  {
    v22 = -1431655766;
    if (!SecTrustEvaluateInternal(trust, &v22))
    {
      v12 = SecTrustCopyCertificateChain(trust);
      v9 = v12;
      if (!v12)
      {
        goto LABEL_9;
      }

      Count = CFArrayGetCount(v12);
      ValueAtIndex = CFArrayGetValueAtIndex(v9, Count - 1);
      if (!ValueAtIndex)
      {
        goto LABEL_9;
      }

      v15 = ValueAtIndex;
      if (!SecCertificateIsCertificate(ValueAtIndex))
      {
        goto LABEL_9;
      }

      IsSelfSigned = _SecCertificateIsSelfSigned(v15);
      if (IsSelfSigned)
      {
        if (a2)
        {
          v17 = 0;
        }

        else
        {
          v17 = IsSelfSigned;
        }

        if (Count >= 2 && v17)
        {
          MutableCopy = CFArrayCreateMutableCopy(0, Count, v9);
          CFArrayRemoveValueAtIndex(MutableCopy, Count - 1);
          CFRelease(v9);
          v9 = MutableCopy;
        }

        goto LABEL_9;
      }

      values = 0;
      SecCertificateCopyCommonName(a1, &values);
      v19 = *MEMORY[0x1E69E9848];
      if (values)
      {
        CStringPtr = CFStringGetCStringPtr(values, 0x8000100u);
      }

      else
      {
        CStringPtr = &unk_188967DD7;
      }

      fprintf(v19, "Warning: unable to build chain to self-signed root for signer %s\n", CStringPtr);
      v21 = values;
      if (values)
      {
        values = 0;
        CFRelease(v21);
      }

      if (!a3)
      {
        goto LABEL_9;
      }

      CFRelease(v9);
    }
  }

  v9 = 0;
LABEL_9:
  v10 = trust;
  if (trust)
  {
    trust = 0;
    CFRelease(v10);
  }

  CFRelease(v7);
  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

void *CERT_GetCertIssuerAndSN(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = SecDERItemCopySequence((a2 + 19));
  if (v2)
  {
    v2 = v2[71];
    if (v2)
    {
      CFRetain(v2);
    }
  }

  if (v4 && (CFDataGetLength(v4) & 0x8000000000000000) == 0 && v2)
  {
    if ((CFDataGetLength(v2) & 0x8000000000000000) == 0)
    {
      Length = CFDataGetLength(v2);
      BytePtr = CFDataGetBytePtr(v2);
      v7 = CFDataGetLength(v4);
      v8 = CFDataGetBytePtr(v4);
      v9 = PORT_ArenaAlloc(a1, 0x28uLL);
      if (v9)
      {
        v10 = v9;
        *(v9 + 32) = 0;
        *v9 = 0u;
        *(v9 + 16) = 0u;
        v11 = PORT_ArenaAlloc(a1, v7);
        v10[4] = v11;
        if (v11)
        {
          memcpy(v11, v8, v7);
          v10[3] = v7;
          v12 = PORT_ArenaAlloc(a1, Length);
          v10[2] = v12;
          if (v12)
          {
            memcpy(v12, BytePtr, Length);
            v10[1] = Length;
            CFRelease(v2);
            CFRelease(v4);
            return v10;
          }
        }
      }
    }

    goto LABEL_13;
  }

  if (v2)
  {
LABEL_13:
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  ThreadErrInfo = PR_getThreadErrInfo(1, &v15);
  if (ThreadErrInfo)
  {
    *ThreadErrInfo = 0xFFFFE02700000000;
  }

  return 0;
}

CFTypeRef *CERT_FindByIssuerAndSN(const void *a1, const void *a2, uint64_t a3)
{
  keys[4] = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 8);
  if (v4 < 0)
  {
    return 0;
  }

  v7 = *MEMORY[0x1E695E480];
  v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], *(a3 + 16), v4, *MEMORY[0x1E695E498]);
  v9 = *(a3 + 24);
  v26[0] = *(a3 + 32);
  v26[1] = v9;
  memset(v25, 170, sizeof(v25));
  if (DERDecodeItem(v26, v25) || (NormalizedX501Name = createNormalizedX501Name(v7, &v25[1])) == 0)
  {
    ItemInAllAvailableKeychains = 0;
    if (!v8)
    {
      return ItemInAllAvailableKeychains;
    }

    goto LABEL_29;
  }

  v11 = NormalizedX501Name;
  if (a1)
  {
    v12 = CFGetTypeID(a1);
    if (v12 == CFArrayGetTypeID())
    {
      if (a2)
      {
        if (CFEqual(a2, @"cert"))
        {
          Count = CFArrayGetCount(a1);
          if (Count >= 1)
          {
            v14 = Count;
            for (i = 0; v14 != i; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
              if (ValueAtIndex)
              {
                ItemInAllAvailableKeychains = ValueAtIndex;
                v18 = ValueAtIndex[72];
                if (v18)
                {
                  if (CFEqual(v18, v11))
                  {
                    v19 = ItemInAllAvailableKeychains[71];
                    if (v19)
                    {
                      CFRetain(ItemInAllAvailableKeychains[71]);
                      if (v8)
                      {
                        v20 = CFEqual(v19, v8);
                        CFRelease(v19);
                        if (v20)
                        {
                          CFRetain(ItemInAllAvailableKeychains);
                          goto LABEL_28;
                        }
                      }

                      else
                      {
                        CFRelease(v19);
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

  keys[0] = @"class";
  keys[1] = @"issr";
  keys[2] = @"slnr";
  keys[3] = @"r_Ref";
  values[0] = a2;
  values[1] = v11;
  v21 = *MEMORY[0x1E695E4D0];
  values[2] = v8;
  values[3] = v21;
  v22 = CFDictionaryCreate(v7, keys, values, 4, 0, 0);
  if (_is_apple_mail_bundle_onceToken != -1)
  {
    dispatch_once(&_is_apple_mail_bundle_onceToken, &__block_literal_global_6274);
  }

  if (_is_apple_mail_bundle_result == 1)
  {
    mail_keychain_query = _create_mail_keychain_query(v22);
    if (v22)
    {
      CFRelease(v22);
    }
  }

  else
  {
    mail_keychain_query = v22;
  }

  ItemInAllAvailableKeychains = CERT_FindItemInAllAvailableKeychains(mail_keychain_query);
  if (mail_keychain_query)
  {
    CFRelease(mail_keychain_query);
  }

LABEL_28:
  CFRelease(v11);
  if (v8)
  {
LABEL_29:
    CFRelease(v8);
  }

  return ItemInAllAvailableKeychains;
}

CFTypeRef CERT_FindBySubjectKeyID(const void *a1, const void *a2, CFIndex *a3)
{
  keys[3] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v4 = a3[1];
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  if (v5 < 1)
  {
    return 0;
  }

  v7 = *MEMORY[0x1E695E480];
  v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v4, v5, *MEMORY[0x1E695E498]);
  if (a1)
  {
    v9 = CFGetTypeID(a1);
    if (v9 == CFArrayGetTypeID())
    {
      if (a2)
      {
        if (CFEqual(a2, @"cert"))
        {
          Count = CFArrayGetCount(a1);
          if (Count >= 1)
          {
            v11 = Count;
            v12 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
              if (ValueAtIndex)
              {
                ItemInAllAvailableKeychains = ValueAtIndex;
                SubjectKeyID = SecCertificateGetSubjectKeyID(ValueAtIndex);
                if (SubjectKeyID)
                {
                  if (v8 && CFEqual(SubjectKeyID, v8))
                  {
                    break;
                  }
                }
              }

              if (v11 == ++v12)
              {
                goto LABEL_15;
              }
            }

            CFRetain(ItemInAllAvailableKeychains);
            goto LABEL_26;
          }
        }
      }
    }
  }

LABEL_15:
  keys[0] = @"class";
  keys[1] = @"skid";
  keys[2] = @"r_Ref";
  values[0] = a2;
  values[1] = v8;
  values[2] = *MEMORY[0x1E695E4D0];
  v16 = CFDictionaryCreate(v7, keys, values, 3, 0, 0);
  if (_is_apple_mail_bundle_onceToken != -1)
  {
    dispatch_once(&_is_apple_mail_bundle_onceToken, &__block_literal_global_6274);
  }

  if (_is_apple_mail_bundle_result == 1)
  {
    mail_keychain_query = _create_mail_keychain_query(v16);
    if (v16)
    {
      CFRelease(v16);
    }
  }

  else
  {
    mail_keychain_query = v16;
  }

  ItemInAllAvailableKeychains = CERT_FindItemInAllAvailableKeychains(mail_keychain_query);
  if (mail_keychain_query)
  {
    CFRelease(mail_keychain_query);
  }

  if (v8)
  {
LABEL_26:
    CFRelease(v8);
  }

  return ItemInAllAvailableKeychains;
}

BOOL CERT_CheckIssuerAndSerial(uint64_t a1, size_t *a2, size_t *a3)
{
  v6 = SecDERItemCopySequence(a1 + 152);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *a2;
  if (v8 != CFDataGetLength(v6))
  {
    goto LABEL_4;
  }

  v9 = a2[1];
  BytePtr = CFDataGetBytePtr(v7);
  if (memcmp(v9, BytePtr, *a2))
  {
    goto LABEL_4;
  }

  CFRelease(v7);
  if (!a1)
  {
    return 0;
  }

  v7 = *(a1 + 568);
  if (!v7)
  {
    return 0;
  }

  CFRetain(*(a1 + 568));
  v12 = *a3;
  if (v12 == CFDataGetLength(v7))
  {
    v13 = a3[1];
    v14 = CFDataGetBytePtr(v7);
    v11 = memcmp(v13, v14, *a3) == 0;
    goto LABEL_5;
  }

LABEL_4:
  v11 = 0;
LABEL_5:
  CFRelease(v7);
  return v11;
}

uint64_t SecCmsDecoderCreate(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t **a7)
{
  ThreadErrInfo = PR_getThreadErrInfo(1, &v22);
  if (ThreadErrInfo)
  {
    *ThreadErrInfo = 0;
  }

  v14 = SecCmsMessageCreate();
  if (v14)
  {
    v15 = v14;
    v14[17] = a4;
    v14[18] = a5;
    v14[19] = a6;
    v16 = PORT_ZAlloc(0x40uLL);
    if (v16)
    {
      v17 = v16;
      v18 = SEC_ASN1DecoderStart(v15[15], v15, &SecCmsMessageTemplate, 0, 0);
      *v17 = v18;
      if (v18)
      {
        Error = 0;
        *(v18 + 32) = nss_cms_decoder_notify;
        *(v18 + 40) = v17;
        v17[1] = v15;
        *(v17 + 4) = 0;
        v17[6] = a1;
        v17[7] = a2;
        *a7 = v17;
        return Error;
      }

      free(v17);
    }

    SecCmsMessageDestroy(v15);
  }

  Error = PORT_GetError();
  v20 = PR_getThreadErrInfo(1, &v23);
  if (v20)
  {
    *v20 = 0;
  }

  return Error;
}

void nss_cms_decoder_notify(uint64_t *started, int a2, void *a3)
{
  v138 = *MEMORY[0x1E69E9840];
  v4 = *(started + 4);
  if (v4 > 0x1E)
  {
    goto LABEL_15;
  }

  v5 = started[1];
  if (((1 << v4) & 0x6C000000) == 0)
  {
    if (!v4)
    {
      if (!a2 && v5 == a3)
      {
        OID = v5[4];
        if (OID || (OID = SECOID_FindOID(started[1]), (v5[4] = OID) != 0))
        {
          v14 = *(OID + 16);
        }

        else
        {
          v14 = 0;
        }

        *(started + 4) = v14;
        started[3] = v5[2];
      }

      return;
    }

    if (v4 == 25)
    {
      v10 = v5 + 2;
      if (a2 && v10 == a3)
      {
        v11 = *started;
        v12 = started[6] != 0;
        *(v11 + 56) = nss_cms_decoder_update_filter;
        *(v11 + 64) = started;
        *(v11 + 72) = v12;
        return;
      }

      if (a2 || v10 != a3)
      {
        return;
      }

LABEL_94:
      v48 = *started;
      *(v48 + 56) = 0;
      *(v48 + 64) = 0;
      *(v48 + 72) = 0;
      return;
    }

LABEL_15:
    *(started + 11) = -8058;
    return;
  }

  v6 = a2 != 0;
  v7 = v5 + 2;
  if (a2 && v7 == a3)
  {
    return;
  }

  v8 = started[3];
  if ((v8 || (v8 = *v7, started[3] = *v7, v8)) && ((1 << v4) & 0x6C000000) != 0)
  {
    v9 = v8;
    if (!a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_26;
    }
  }

  if (v9 == a3 && ((1 << v4) & 0x6C000000) != 0)
  {
    v8[3] = v5;
  }

LABEL_26:
  if (v9 + 9 != a3)
  {
    v6 = 0;
  }

  if (!v6)
  {
    if (a2 || v9 + 9 != a3)
    {
      return;
    }

    nss_cms_decoder_work_data(started, 0, 0, 1);
    v22 = started[4];
    if (!v22)
    {
      v23 = -1;
      goto LABEL_80;
    }

    if (*v22)
    {
      if (SEC_ASN1DecoderFinish(*v22))
      {
        goto LABEL_92;
      }

      v23 = nss_cms_after_end(v22);
      if (v23)
      {
        goto LABEL_92;
      }

      v24 = 0;
      v22 = started[4];
      if (!v22)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v24 = -1;
    }

    free(v22);
    v23 = v24;
LABEL_79:
    started[4] = 0;
LABEL_80:
    v46 = *(started + 4);
    if (v46 <= 26)
    {
      if (v46 != 25)
      {
        if (v46 != 26)
        {
          goto LABEL_92;
        }

        v23 = SecCmsSignedDataDecodeAfterData(started[3]);
      }
    }

    else
    {
      if (v46 == 27)
      {
        SecCmsEnvelopedDataDecodeAfterData(started[3]);
        goto LABEL_94;
      }

      if (v46 != 29)
      {
        if (v46 == 30)
        {
          SecCmsEncryptedDataEncodeAfterData(started[3]);
          goto LABEL_94;
        }

LABEL_92:
        *(started + 11) = PORT_GetError();
        ThreadErrInfo = PR_getThreadErrInfo(1, &plainTextLen);
        if (ThreadErrInfo)
        {
          *ThreadErrInfo = 0;
        }

        goto LABEL_94;
      }

      v23 = SecCmsDigestedDataEncodeAfterData(started[3]);
    }

    if (!v23)
    {
      goto LABEL_94;
    }

    goto LABEL_92;
  }

  v15 = *started;
  v16 = started[6] != 0;
  *(v15 + 56) = nss_cms_decoder_update_filter;
  *(v15 + 64) = started;
  *(v15 + 72) = v16;
  v17 = *(started[1] + 120);
  if (v4 > 28)
  {
    if (v4 != 29)
    {
      v25 = started[3];
      v26 = *(v25 + 24);
      v27 = *(v26 + 144);
      if (!v27)
      {
        goto LABEL_111;
      }

      v28 = v27(*(v26 + 152), v25 + 40);
      if (!v28)
      {
        goto LABEL_111;
      }

      v29 = v28;
      SecCmsContentInfoSetBulkKey(v25, v28);
      v30 = SecCmsCipherContextStart(0, v29, v25 + 40, 0);
      *(v25 + 96) = v30;
      CFRelease(v29);
      if (!v30)
      {
        goto LABEL_111;
      }

      goto LABEL_59;
    }

    v31 = started[3];
    if (!v31[17])
    {
      goto LABEL_111;
    }

    plainTextLen = (v31 + 17);
    p_plainTextLen = &plainTextLen;
    goto LABEL_58;
  }

  if (v4 == 26)
  {
    v31 = started[3];
    p_plainTextLen = v31[17];
    if (!p_plainTextLen)
    {
      goto LABEL_60;
    }

    if (v31[21])
    {
      goto LABEL_59;
    }

LABEL_58:
    v33 = SecCmsDigestContextStartMultiple(p_plainTextLen);
    v31[13] = v33;
    if (!v33)
    {
      goto LABEL_111;
    }

    goto LABEL_59;
  }

  if (v4 != 27)
  {
    goto LABEL_111;
  }

  v18 = started[3];
  v19 = *(v18 + 144);
  if (!v19 || !*v19 || (v20 = nss_cms_recipients_traverse(*(v18 + 144), 0), (v20 - 268435454) <= 0xF0000002))
  {
    v21 = PR_getThreadErrInfo(1, &plainTextLen);
    if (v21)
    {
      *v21 = 0xFFFFE00200000000;
    }

    goto LABEL_111;
  }

  v49 = PORT_ZAlloc((8 * v20 + 8));
  if (!v49)
  {
    goto LABEL_111;
  }

  v50 = v49;
  if ((nss_cms_recipients_traverse(v19, v49) & 0x80000000) != 0)
  {
    goto LABEL_109;
  }

  v51 = *v50;
  if (!*v50)
  {
LABEL_106:
    v57 = PR_getThreadErrInfo(1, &plainTextLen);
    if (!v57)
    {
      goto LABEL_109;
    }

    v58 = 0xFFFFE02D00000000;
    goto LABEL_108;
  }

  v52 = 0;
  while (1)
  {
    v53 = *(v51 + 8);
    if (v53 == 1)
    {
      break;
    }

    if (!v53)
    {
      v54 = CERT_FindByIssuerAndSN(0, @"idnt", *(v51 + 16));
      goto LABEL_104;
    }

LABEL_105:
    v56 = &v50[8 * v52++];
    v51 = *(v56 + 1);
    if (!v51)
    {
      goto LABEL_106;
    }
  }

  v54 = CERT_FindBySubjectKeyID(0, @"idnt", *(v51 + 16));
LABEL_104:
  v55 = v54;
  if (!v54)
  {
    goto LABEL_105;
  }

  v61 = v54[2];
  CFRetain(v61);
  v62 = v55[3];
  CFRetain(v62);
  CFRelease(v55);
  *(v51 + 24) = v61;
  *(v51 + 32) = v62;
  v63 = *&v50[8 * v52];
  if (!*(v63 + 3) || !*(v63 + 4))
  {
    goto LABEL_109;
  }

  v64 = *(*(v18 + 144) + 8 * *v63);
  if (!SecCmsContentInfoGetContentEncAlgTag(v18))
  {
    v57 = PR_getThreadErrInfo(1, &plainTextLen);
    if (!v57)
    {
      goto LABEL_109;
    }

    v58 = 0xFFFFE00600000000;
LABEL_108:
    *v57 = v58;
    goto LABEL_109;
  }

  v65 = v63[1];
  v66 = *(v63 + 3);
  v67 = *(v63 + 4);
  if (v66)
  {
    CFRetain(*(v63 + 3));
  }

  *(v64 + 18) = v66;
  v68 = *v64;
  if (*v64 == 2)
  {
    goto LABEL_146;
  }

  v69 = v67;
  if (v68 != 1)
  {
    if (!v68)
    {
      if (*(v64 + 6))
      {
        v70 = SECOID_FindOID((v64 + 10));
        if (v70)
        {
          if (*(v70 + 16) == 16)
          {
            v71 = *(v64 + 9);
            *&plainTextLen = v71;
            if (v71 <= 0x400 && (v72 = malloc_type_malloc(v71, 0x100004077774924uLL)) != 0 && (v73 = v72, !SecKeyDecrypt(v67, 1u, *(v64 + 10), *(v64 + 9), v72, &plainTextLen)))
            {
              v74 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v73, plainTextLen, *MEMORY[0x1E695E488]);
            }

            else
            {
              v74 = 0;
            }

            goto LABEL_158;
          }
        }
      }

LABEL_146:
      v82 = -8144;
LABEL_147:
      v83 = PR_getThreadErrInfo(1, &plainTextLen);
      if (v83)
      {
        *v83 = 0;
        v83[1] = v82;
      }
    }

LABEL_109:
    nss_cms_recipient_list_destroy(v50);
    goto LABEL_111;
  }

  if (!*(v64 + 13))
  {
    goto LABEL_146;
  }

  v75 = SECOID_FindOID((v64 + 24));
  if (!v75 || *(v75 + 16) != 204)
  {
    goto LABEL_146;
  }

  if (v64[6] != 2)
  {
    v82 = -8191;
    goto LABEL_147;
  }

  v76 = *(v64 + 8);
  v112 = *(*(v64 + 16) + 8 * v65);
  bytes = *(v64 + 9);
  *&v77 = 0xAAAAAAAAAAAAAAAALL;
  *(&v77 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v127 = v77;
  v128 = v77;
  v125 = 0;
  iv = 0;
  v136 = v77;
  v137 = v77;
  plainTextLen = v77;
  v135 = v77;
  length = 0;
  v124 = 0;
  v122 = 5;
  v121 = -1431655766;
  cryptorRef = 0;
  cf = 0;
  valuePtr = 0;
  v78 = PORT_NewArena(1024);
  if (!v78)
  {
    goto LABEL_138;
  }

  v79 = v78;
  v127 = 0u;
  v128 = 0u;
  if (SEC_ASN1Decode(v78, &v127, &SECOID_AlgorithmIDTemplate, *(v64 + 15), *(v64 + 14)))
  {
    goto LABEL_137;
  }

  v110 = SECOID_FindOID(&v127);
  if (!v110)
  {
    goto LABEL_137;
  }

  v84 = v110[4];
  if (v84 > 183)
  {
    if (v84 <= 185)
    {
      if (v84 == 184)
      {
        v107 = 0;
        v85 = 1;
LABEL_174:
        v108 = v85;
        v88 = 128;
        goto LABEL_181;
      }

      v107 = 0;
      v89 = 2;
    }

    else
    {
      if (v84 != 186)
      {
        if (v84 == 187)
        {
          v107 = 0;
          v87 = 2;
        }

        else
        {
          if (v84 != 188)
          {
            goto LABEL_137;
          }

          v107 = 0;
          v87 = 1;
        }

        v108 = v87;
        v88 = 256;
        goto LABEL_181;
      }

      v107 = 0;
      v89 = 1;
    }

    v108 = v89;
    goto LABEL_178;
  }

  v108 = 1;
  if (v84 <= 9)
  {
    if (v84 != 7)
    {
      if (v84 != 9)
      {
        goto LABEL_137;
      }

      v108 = 2;
      goto LABEL_169;
    }

    v107 = 2;
LABEL_178:
    v88 = 192;
    goto LABEL_181;
  }

  switch(v84)
  {
    case 10:
LABEL_169:
      v107 = 1;
      v88 = 64;
LABEL_181:
      v109 = v88;
LABEL_182:
      if (SEC_ASN1Decode(v79, &v125, kSecAsn1OctetStringTemplate, *(&v128 + 1), v128))
      {
        break;
      }

      v136 = 0u;
      v137 = 0u;
      plainTextLen = 0u;
      v135 = 0u;
      plainTextLen = *v110;
      *&v135 = 2;
      *(&v135 + 1) = &v122;
      v136 = *(v64 + 5);
      v90 = 3;
      v91 = v109;
      do
      {
        *(&v121 + v90) = v91;
        v91 >>= 8;
        --v90;
      }

      while (v90 != -1);
      *&v137 = 4;
      *(&v137 + 1) = &v121;
      if (!SEC_ASN1EncodeItem(v79, &length, &plainTextLen, &ECC_CMS_SharedInfoTemplate))
      {
        break;
      }

      valuePtr = v76;
      v92 = CFDataCreate(0, bytes, (v76 + 7) >> 3);
      v93 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      keys[0] = @"type";
      keys[1] = @"kcls";
      keys[2] = @"bsiz";
      values[0] = @"73";
      values[1] = @"0";
      v105 = v93;
      values[2] = v93;
      v103 = v92;
      v104 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      bytesa = SecKeyCreateWithData(v92, v104, &cf);
      v74 = 0;
      if (cf)
      {
        v106 = 0;
        v111 = 0;
        v94 = 0;
        v95 = 0;
      }

      else
      {
        v106 = 0;
        v111 = 0;
        v94 = 0;
        v95 = 0;
        if ((length & 0x8000000000000000) == 0)
        {
          v96 = CFDataCreate(0, v124, length);
          v117 = v109 >> 3;
          v97 = CFNumberCreate(0, kCFNumberSInt32Type, &v117);
          v131[0] = @"requestedSize";
          v131[1] = @"sharedInfo";
          v111 = v97;
          v130[0] = v97;
          v130[1] = v96;
          v106 = v96;
          v94 = CFDictionaryCreate(0, v131, v130, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v98 = SecKeyCopyKeyExchangeResult(v69, @"algid:keyexchange:ECDH:KDFX963:SHA1", bytesa, v94, &cf);
          v95 = v98;
          if (cf || CFDataGetLength(v98) < 0 || (BytePtr = CFDataGetBytePtr(v95), v100 = CFDataGetLength(v95), CCCryptorCreate(1u, v107, v108, BytePtr, v100, iv, &cryptorRef)) || (OutputLength = CCCryptorGetOutputLength(cryptorRef, *(v112 + 56), 1), dataOutMoved = 0, v102 = PORT_ArenaAlloc(v79, OutputLength), CCCryptorUpdate(cryptorRef, *(v112 + 64), *(v112 + 56), v102, OutputLength, &dataOutMoved)) || (v115 = 0, CCCryptorFinal(cryptorRef, &v102[dataOutMoved], OutputLength - dataOutMoved, &v115)) || (v115 + dataOutMoved) < 0)
          {
            v74 = 0;
          }

          else
          {
            v74 = CFDataCreate(0, v102, v115 + dataOutMoved);
          }
        }
      }

      PORT_FreeArena(v79, 0);
      if (v103)
      {
        CFRelease(v103);
      }

      if (v105)
      {
        CFRelease(v105);
      }

      if (bytesa)
      {
        CFRelease(bytesa);
      }

      if (v104)
      {
        CFRelease(v104);
      }

      if (v106)
      {
        CFRelease(v106);
      }

      if (v111)
      {
        CFRelease(v111);
      }

      if (v94)
      {
        CFRelease(v94);
      }

      if (v95)
      {
        CFRelease(v95);
      }

      goto LABEL_139;
    case 14:
      v109 = 192;
      v107 = 2;
      v108 = 2;
      goto LABEL_182;
    case 183:
      v107 = 0;
      v85 = 2;
      goto LABEL_174;
  }

LABEL_137:
  PORT_FreeArena(v79, 0);
LABEL_138:
  v74 = 0;
LABEL_139:
  v80 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v80);
  }

  if (cryptorRef)
  {
    CCCryptorRelease(cryptorRef);
  }

  if (!v74)
  {
    v81 = PR_getThreadErrInfo(1, v129);
    if (v81)
    {
      *v81 = 0xFFFFE01A00000000;
    }
  }

LABEL_158:
  if (!v74)
  {
    goto LABEL_109;
  }

  SecCmsContentInfoSetBulkKey(v18, v74);
  CFRetain(*(v63 + 4));
  *(v18 + 112) = *(v63 + 4);
  v86 = SecCmsCipherContextStart(0, v74, v18 + 40, 0);
  *(v18 + 96) = v86;
  CFRelease(v74);
  nss_cms_recipient_list_destroy(v50);
  if (!v86)
  {
LABEL_111:
    v59 = *started;
    *(v59 + 56) = 0;
    *(v59 + 64) = 0;
    *(v59 + 72) = 0;
    *(started + 11) = PORT_GetError();
    v60 = PR_getThreadErrInfo(1, &plainTextLen);
    if (v60)
    {
      *v60 = 0;
    }

    return;
  }

LABEL_59:
  v31 = started[3];
  if (v31)
  {
LABEL_60:
    v34 = *(started + 4);
    if (v34 > 0x1E || ((1 << v34) & 0x6C000000) == 0)
    {
      v31 = 0;
    }
  }

  v35 = v31[4];
  if (!v35)
  {
    v35 = SECOID_FindOID(v31);
    v31[4] = v35;
    if (!v35)
    {
      goto LABEL_111;
    }
  }

  v36 = *(v35 + 16);
  if (v36 == 25)
  {
    v37 = SECITEM_AllocItem(v17, 0, 0);
    v31[2] = v37;
    if (!v37)
    {
      goto LABEL_111;
    }

    started[4] = 0;
  }

  else
  {
    v38 = v36 - 26;
    if ((v36 - 26) > 4)
    {
      goto LABEL_111;
    }

    if (v36 == 28)
    {
      goto LABEL_111;
    }

    v39 = *(&off_1E70D9708 + v38);
    v40 = PORT_ZAlloc(0x40uLL);
    if (!v40)
    {
      goto LABEL_111;
    }

    v41 = v40;
    if (qword_18895F818[v38] <= 1uLL)
    {
      v42 = 1;
    }

    else
    {
      v42 = qword_18895F818[v38];
    }

    v43 = PORT_ArenaAlloc(v17, v42);
    if (!v43 || (v44 = v43, bzero(v43, v42), v41[3] = v44, v45 = SEC_ASN1DecoderStart(v17, v44, v39, 0, 0), (*v41 = v45) == 0))
    {
      free(v41);
      started[4] = 0;
      goto LABEL_111;
    }

    *(v45 + 32) = nss_cms_decoder_notify;
    *(v45 + 40) = v41;
    started[4] = v41;
    *(v41 + 4) = v36;
    v41[1] = started[1];
    *(v41 + 3) = *(started + 3);
    started[6] = callback;
    started[7] = v41;
  }
}

void nss_cms_decoder_work_data(uint64_t a1, char *dataIn, size_t dataInLength, uint64_t a4)
{
  if (dataIn)
  {
    v4 = dataInLength == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 && a4 == 0;
  if (!HIDWORD(dataInLength) && (v6 & 1) == 0 && *(a1 + 24))
  {
    v8 = dataInLength;
    v9 = dataIn;
    v10 = *(a1 + 16);
    v11 = v10 > 0x1E;
    v12 = (1 << v10) & 0x6C000000;
    if (v11 || v12 == 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a1 + 24);
    }

    v15 = *(v14 + 96);
    if (v15)
    {
      v16 = a4;
      v33 = 0;
      v17 = *(v15 + 12);
      if (a4)
      {
        v18 = *(v15 + 12);
      }

      else
      {
        v18 = 0;
      }

      v19 = (dataInLength + v17 - 1) / v17;
      v20 = v18 + v19 * v17;
      if (!dataInLength && !v20)
      {
        v9 = 0;
LABEL_46:
        v21 = v9;
        goto LABEL_47;
      }

      if (v20)
      {
        v24 = PORT_Alloc(v18 + v19 * v17);
        if (!v24)
        {
          v9 = 0;
          Error = -8173;
          goto LABEL_45;
        }

        v25 = v24;
        v26 = SecCmsCipherContextCrypt(*(v14 + 96), v24, &v33, v20, v9, v8, v16);
        v9 = v25;
        if (v26)
        {
LABEL_34:
          Error = PORT_GetError();
LABEL_45:
          *(a1 + 44) = Error;
          goto LABEL_46;
        }
      }

      else
      {
        v9 = 0;
        if (SecCmsCipherContextCrypt(v15, 0, &v33, 0, dataIn, dataInLength, a4))
        {
          goto LABEL_34;
        }
      }

      v8 = v33;
      v21 = v9;
      if (!v33)
      {
LABEL_47:
        if (v21)
        {
          free(v21);
        }

        return;
      }
    }

    else
    {
      v21 = 0;
      if (!dataInLength)
      {
        goto LABEL_47;
      }
    }

    v22 = *(v14 + 104);
    if (v22)
    {
      SecCmsDigestContextUpdate(v22, v9, v8);
    }

    v23 = *(a1 + 48);
    if (v23)
    {
      v23(*(a1 + 56), v9, v8, a4);
    }

    else
    {
      OID = *(v14 + 32);
      if (OID || (OID = SECOID_FindOID(v14), (*(v14 + 32) = OID) != 0))
      {
        if (*(OID + 16) == 25)
        {
          v29 = *(v14 + 16);
          v30 = *v29;
          if (v8 < 0x7FFFFFFFLL - *v29 && ((v31 = *(*(a1 + 8) + 120), !v30) ? (v32 = PORT_ArenaAlloc(v31, v8)) : (v32 = PORT_ArenaGrow(v31, *(v29 + 8), *v29, v30 + v8)), v32))
          {
            *v29 += v8;
            *(v29 + 8) = v32;
            if (v9)
            {
              memcpy((v32 + v30), v9, v8);
            }
          }

          else
          {
            *(a1 + 44) = -8173;
          }
        }
      }
    }

    goto LABEL_47;
  }
}

uint64_t nss_cms_after_end(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 16);
  if (v3 <= 26)
  {
    if (v3 != 25)
    {
      if (v3 != 26)
      {
        return 0xFFFFFFFFLL;
      }

      v4 = *(a1 + 24);
      if (!v4)
      {
        return 0xFFFFFFFFLL;
      }

      v5 = *(v4 + 160);
      if (v5)
      {
        v6 = *v5;
        if (*v5)
        {
          v7 = v5 + 1;
          do
          {
            *(v6 + 128) = v4;
            v8 = *v7++;
            v6 = v8;
          }

          while (v8);
        }
      }

      return 0;
    }
  }

  else
  {
    if (v3 == 27)
    {
      return result;
    }

    if (v3 != 29)
    {
      if (v3 == 30)
      {
        return result;
      }

      return 0xFFFFFFFFLL;
    }

    if (*(a1 + 24))
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t SecCmsDecoderUpdate(uint64_t a1, char *a2, unint64_t a3)
{
  result = 4294967246;
  if (a1 && (a3 & 0x8000000000000000) == 0)
  {
    if (*a1 && !*(a1 + 44) && SEC_ASN1DecoderUpdate(*a1, a2, a3))
    {
      Error = PORT_GetError();
      if (Error)
      {
        v6 = Error;
      }

      else
      {
        v6 = -1;
      }

      *(a1 + 44) = v6;
    }

    if (*(a1 + 44))
    {
      if (*a1)
      {
        SEC_ASN1DecoderFinish(*a1);
        *a1 = 0;
      }

      ThreadErrInfo = PR_getThreadErrInfo(1, &v8);
      if (ThreadErrInfo)
      {
        *ThreadErrInfo = 0;
      }

      return *(a1 + 44);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void nss_cms_decoder_update_filter(uint64_t a1, char *a2, size_t a3, uint64_t a4, int a5)
{
  if (a3)
  {
    *(a1 + 40) = 1;
    if (a5 == 2)
    {
      nss_cms_decoder_work_data(a1, a2, a3, 0);
    }
  }
}

void SecCmsDecoderDestroy(uint64_t *a1)
{
  SecCmsMessageDestroy(a1[1]);
  a1[1] = 0;
  if (*a1)
  {
    SEC_ASN1DecoderFinish(*a1);
  }

  free(a1);
}

uint64_t SecCmsDecoderFinish(uint64_t *a1, uint64_t **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = v4;
  if (v3)
  {
    if (!SEC_ASN1DecoderFinish(v3) && !nss_cms_after_end(a1))
    {
      Error = 0;
      *a2 = v4;
      goto LABEL_8;
    }

    v6 = a1[1];
  }

  if (v6)
  {
    SecCmsMessageDestroy(v4);
  }

  Error = PORT_GetError();
LABEL_8:
  free(a1);
  ThreadErrInfo = PR_getThreadErrInfo(1, v11);
  if (ThreadErrInfo)
  {
    *ThreadErrInfo = 0;
  }

  return Error;
}

uint64_t SecCmsMessageDecode(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t **a8)
{
  v14 = 0;
  v10 = SecCmsDecoderCreate(a2, a3, a3, a5, a6, a7, &v14);
  if (v10)
  {
    return v10;
  }

  if ((*a1 & 0x8000000000000000) != 0)
  {
    return 4294967246;
  }

  v12 = v14;
  v13 = SecCmsDecoderUpdate(v14, a1[1], *a1);
  if (v13)
  {
    v10 = v13;
    SecCmsDecoderDestroy(v12);
    return v10;
  }

  return SecCmsDecoderFinish(v12, a8);
}

CFTypeID CMSDecoderGetTypeID(void)
{
  result = cmsDecoderTypeID;
  if (!cmsDecoderTypeID)
  {
    pthread_once(&CMSDecoderGetTypeID_once, cmsDecoderClassInitialize);
    return cmsDecoderTypeID;
  }

  return result;
}

uint64_t cmsDecoderClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  cmsDecoderTypeID = result;
  return result;
}

void cmsDecoderFinalize(void *result)
{
  if (result)
  {
    v2 = result[3];
    if (v2)
    {
      SecCmsDecoderDestroy(v2);
      result[5] = 0;
    }

    v3 = result[4];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = result[5];
    if (v4)
    {
      SecCmsMessageDestroy(v4);
      result[5] = 0;
    }
  }
}

double cmsDecoderInit(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

OSStatus CMSDecoderCreate(CMSDecoderRef *cmsDecoderOut)
{
  if (!cmsDecoderTypeID)
  {
    pthread_once(&CMSDecoderGetTypeID_once, cmsDecoderClassInitialize);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return -108;
  }

  v3 = Instance;
  result = 0;
  *(v3 + 4) = 0;
  *cmsDecoderOut = v3;
  return result;
}

OSStatus CMSDecoderUpdateMessage(CMSDecoderRef cmsDecoder, const void *msgBytes, size_t msgBytesLen)
{
  if (!cmsDecoder || (v4 = *(cmsDecoder + 4), v4 == 2))
  {
    LODWORD(v7) = -50;
    return v7;
  }

  if (v4 == 1)
  {
    goto LABEL_10;
  }

  if (v4)
  {
    LODWORD(v7) = -2070;
    return v7;
  }

  v7 = SecCmsDecoderCreate(0, 0, msgBytesLen, 0, 0, 0, cmsDecoder + 3);
  if (!v7)
  {
    *(cmsDecoder + 4) = 1;
LABEL_10:
    v7 = SecCmsDecoderUpdate(*(cmsDecoder + 3), msgBytes, msgBytesLen);
    if (!v7)
    {
      return v7;
    }

    v8 = -25257;
    goto LABEL_12;
  }

  v8 = 0;
LABEL_12:

  LODWORD(v7) = cmsRtnToOSStatusDefault(v7, v8);
  return v7;
}

OSStatus CMSDecoderFinalizeMessage(CMSDecoderRef cmsDecoder)
{
  if (!cmsDecoder || *(cmsDecoder + 4) != 1)
  {
    return -50;
  }

  v2 = SecCmsDecoderFinish(*(cmsDecoder + 3), cmsDecoder + 5);
  *(cmsDecoder + 4) = 2;
  *(cmsDecoder + 3) = 0;
  if (v2)
  {

    return cmsRtnToOSStatusDefault(v2, 0xFFFF9D57);
  }

  *(cmsDecoder + 48) = SecCmsMessageIsEncrypted(*(cmsDecoder + 5));
  ChildContentInfo = *(cmsDecoder + 5);
  if (ChildContentInfo)
  {
    v5 = -1;
    do
    {
      ChildContentInfo = SecCmsContentInfoGetChildContentInfo(ChildContentInfo);
      ++v5;
    }

    while (ChildContentInfo);
    v6 = 0;
    while (1)
    {
      v7 = *(cmsDecoder + 5);
      if (v7)
      {
        v8 = v6 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v9 = 1;
        do
        {
          v7 = SecCmsContentInfoGetChildContentInfo(v7);
          if (!v7)
          {
            break;
          }
        }

        while (v9++ < v6);
      }

      OID = *(v7 + 32);
      if (!OID)
      {
        OID = SECOID_FindOID(v7);
        *(v7 + 32) = OID;
        if (!OID)
        {
          goto LABEL_27;
        }
      }

      if (*(OID + 16) != 26)
      {
        goto LABEL_27;
      }

      v12 = *(v7 + 16);
      *(cmsDecoder + 7) = v12;
      if (v12)
      {
        break;
      }

LABEL_28:
      v8 = v6++ == v5;
      if (v8)
      {
        return 0;
      }
    }

    v13 = *(v12 + 32);
    if (!v13)
    {
      v13 = SECOID_FindOID(v12);
      *(v12 + 32) = v13;
    }

    *(cmsDecoder + 9) = v13;
LABEL_27:
    v14 = *(cmsDecoder + 7);
    if (v14)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  v14 = *(cmsDecoder + 7);
  if (!v14)
  {
    return 0;
  }

LABEL_32:
  v15 = *(v14 + 160);
  if (v15)
  {
    v16 = *v15;
    if (*v15)
    {
      v16 = 0;
      v17 = v15 + 1;
        ;
      }

      v16 = v16;
    }
  }

  else
  {
    v16 = 0;
  }

  *(cmsDecoder + 8) = v16;
  if (!*(cmsDecoder + 4))
  {
    return 0;
  }

  return cmsDigestDetachedContent(cmsDecoder);
}

uint64_t cmsDigestDetachedContent(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    return 4294967246;
  }

  v2 = *(a1 + 32);
  if (!v2 || CFDataGetLength(v2) < 0)
  {
    return 4294967246;
  }

  v3 = *(*(a1 + 56) + 136);
  if (!v3)
  {
    return 4294942039;
  }

  started = SecCmsDigestContextStartMultiple(v3);
  if (!started)
  {
    return 4294967188;
  }

  v5 = started;
  BytePtr = CFDataGetBytePtr(*(a1 + 32));
  Length = CFDataGetLength(*(a1 + 32));
  SecCmsDigestContextUpdate(v5, BytePtr, Length);
  v8 = SecCmsSignedDataSetDigestContext(*(a1 + 56), v5);
  SecCmsDigestContextCancel(v5);
  if (!v8)
  {
    return 0;
  }

  return cmsRtnToOSStatusDefault(v8, 0);
}

OSStatus CMSDecoderSetDetachedContent(CMSDecoderRef cmsDecoder, CFDataRef detachedContent)
{
  result = -50;
  if (cmsDecoder && detachedContent)
  {
    *(cmsDecoder + 4) = detachedContent;
    CFRetain(detachedContent);
    if (*(cmsDecoder + 7))
    {

      return cmsDigestDetachedContent(cmsDecoder);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

OSStatus CMSDecoderCopyDetachedContent(CMSDecoderRef cmsDecoder, CFDataRef *detachedContentOut)
{
  result = -50;
  if (cmsDecoder && detachedContentOut)
  {
    v5 = *(cmsDecoder + 4);
    if (v5)
    {
      CFRetain(v5);
      v6 = *(cmsDecoder + 4);
    }

    else
    {
      v6 = 0;
    }

    result = 0;
    *detachedContentOut = v6;
  }

  return result;
}

OSStatus CMSDecoderGetNumSigners(CMSDecoderRef cmsDecoder, size_t *numSignersOut)
{
  result = -50;
  if (cmsDecoder && numSignersOut && *(cmsDecoder + 4) == 2)
  {
    result = 0;
    *numSignersOut = *(cmsDecoder + 8);
  }

  return result;
}

OSStatus CMSDecoderCopySignerStatus(CMSDecoderRef cmsDecoder, size_t signerIndex, CFTypeRef policyOrArray, Boolean evaluateSecTrust, CMSSignerStatus *signerStatusOut, SecTrustRef *secTrustOut, OSStatus *certVerifyResultCodeOut)
{
  if (!cmsDecoder)
  {
    return -50;
  }

  v8 = -50;
  if (signerStatusOut && policyOrArray && *(cmsDecoder + 4) == 2)
  {
    v12 = evaluateSecTrust;
    v13 = signerIndex;
    *signerStatusOut = kCMSSignerUnsigned;
    if (secTrustOut)
    {
      *secTrustOut = 0;
    }

    if (certVerifyResultCodeOut)
    {
      *certVerifyResultCodeOut = 0;
    }

    v14 = *(cmsDecoder + 7);
    if (!v14)
    {
      v8 = 0;
      *signerStatusOut = kCMSSignerUnsigned;
      return v8;
    }

    if (*(cmsDecoder + 8) <= signerIndex)
    {
      v8 = 0;
      v17 = kCMSSignerInvalidIndex;
    }

    else
    {
      if (v14[21])
      {
        cf = 0;
        v15 = SecCmsSignedDataVerifySignerInfo_internal(v14, signerIndex, policyOrArray, &cf);
        v22 = -1431655766;
        if (secTrustOut)
        {
          v16 = cf;
          *secTrustOut = cf;
          if (v16)
          {
            CFRetain(v16);
          }
        }

        if (!*(*(*(cmsDecoder + 7) + 160) + 8 * v13))
        {
          goto LABEL_18;
        }

        if (v12)
        {
          if (SecTrustEvaluateInternal(cf, &v22))
          {
LABEL_18:
            v8 = -2070;
LABEL_33:
            if (cf)
            {
              CFRelease(cf);
            }

            return v8;
          }

          v20 = v22 - 1;
          if ((v22 - 1) > 3)
          {
            v18 = -67843;
            v19 = kCMSSignerInvalidCert;
          }

          else
          {
            v19 = dword_18895E1E0[v20];
            v18 = dword_18895E1F0[v20];
          }
        }

        else
        {
          v18 = 0;
          v19 = kCMSSignerValid;
        }

        if (certVerifyResultCodeOut)
        {
          *certVerifyResultCodeOut = v18;
        }

        v8 = 0;
        if (v15)
        {
          v19 = kCMSSignerInvalidSignature;
        }

        *signerStatusOut = v19;
        goto LABEL_33;
      }

      v8 = 0;
      v17 = kCMSSignerNeedsDetachedContent;
    }

    *signerStatusOut = v17;
  }

  return v8;
}

OSStatus CMSDecoderCopySignerEmailAddress(CMSDecoderRef cmsDecoder, size_t signerIndex, CFStringRef *signerEmailAddressOut)
{
  result = -50;
  if (cmsDecoder && signerEmailAddressOut)
  {
    v6 = *(cmsDecoder + 7);
    if (v6 && *(cmsDecoder + 8) > signerIndex && *(cmsDecoder + 4) == 2)
    {
      v7 = *(*(v6 + 160) + 8 * signerIndex);
      if (v7)
      {
        SignerEmailAddress = SecCmsSignerInfoGetSignerEmailAddress(v7);
        result = 0;
        *signerEmailAddressOut = SignerEmailAddress;
      }

      else
      {
        return -2070;
      }
    }

    else
    {
      return -50;
    }
  }

  return result;
}

OSStatus CMSDecoderCopySignerCert(CMSDecoderRef cmsDecoder, size_t signerIndex, SecCertificateRef *signerCertOut)
{
  result = -50;
  if (cmsDecoder && signerCertOut)
  {
    v6 = *(cmsDecoder + 7);
    if (v6 && *(cmsDecoder + 8) > signerIndex && *(cmsDecoder + 4) == 2)
    {
      v7 = *(*(v6 + 160) + 8 * signerIndex);
      if (v7 && (SigningCert_internal = SecCmsSignerInfoGetSigningCert_internal(v7), (*signerCertOut = SigningCert_internal) != 0))
      {
        CFRetain(SigningCert_internal);
        return 0;
      }

      else
      {
        return -2070;
      }
    }

    else
    {
      return -50;
    }
  }

  return result;
}

OSStatus CMSDecoderIsContentEncrypted(CMSDecoderRef cmsDecoder, Boolean *isEncryptedOut)
{
  result = -50;
  if (cmsDecoder && isEncryptedOut && *(cmsDecoder + 4) == 2)
  {
    result = 0;
    *isEncryptedOut = *(cmsDecoder + 48);
  }

  return result;
}

OSStatus CMSDecoderCopyEncapsulatedContentType(CMSDecoderRef cmsDecoder, CFDataRef *eContentTypeOut)
{
  result = -50;
  if (cmsDecoder && eContentTypeOut)
  {
    if (*(cmsDecoder + 4) == 2)
    {
      if (!*(cmsDecoder + 7))
      {
        v6 = 0;
        goto LABEL_9;
      }

      v5 = *(cmsDecoder + 9);
      if ((*v5 & 0x8000000000000000) == 0)
      {
        v6 = CFDataCreate(0, *(v5 + 8), *v5);
LABEL_9:
        result = 0;
        *eContentTypeOut = v6;
        return result;
      }
    }

    return -50;
  }

  return result;
}

OSStatus CMSDecoderCopyAllCerts(CMSDecoderRef cmsDecoder, CFArrayRef *certsOut)
{
  result = -50;
  if (cmsDecoder && certsOut)
  {
    if (*(cmsDecoder + 4) == 2)
    {
      v5 = *(cmsDecoder + 7);
      if (v5 && (v6 = *(v5 + 144)) != 0 && *v6)
      {
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        v8 = *v6;
        if (*v6)
        {
          v9 = v6 + 1;
          while ((*v8 & 0x8000000000000000) == 0)
          {
            v10 = SecCertificateCreateWithBytes(0, *(v8 + 8), *v8);
            if (!v10)
            {
              if (Mutable)
              {
                CFRelease(Mutable);
              }

              return -26275;
            }

            v11 = v10;
            CFArrayAppendValue(Mutable, v10);
            CFRelease(v11);
            v12 = *v9++;
            v8 = v12;
            if (!v12)
            {
              goto LABEL_12;
            }
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          return -108;
        }

        else
        {
LABEL_12:
          result = 0;
          *certsOut = Mutable;
        }
      }

      else
      {
        result = 0;
        *certsOut = 0;
      }
    }

    else
    {
      return -50;
    }
  }

  return result;
}

OSStatus CMSDecoderCopyContent(CMSDecoderRef cmsDecoder, CFDataRef *contentOut)
{
  result = -50;
  if (cmsDecoder && contentOut)
  {
    if (*(cmsDecoder + 4) != 2)
    {
      return -50;
    }

    v5 = *(cmsDecoder + 5);
    if (!v5)
    {
      return -50;
    }

    InnerContent = SecCmsContentInfoGetInnerContent(v5);
    if (InnerContent && (v7 = *InnerContent) != 0)
    {
      if (v7 < 0)
      {
        return -108;
      }

      v8 = CFDataCreate(0, *(InnerContent + 8), v7);
    }

    else
    {
      v8 = 0;
    }

    result = 0;
    *contentOut = v8;
  }

  return result;
}

uint64_t CMSDecoderGetCmsMessage(uint64_t a1, void *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 40);
    }
  }

  return result;
}

uint64_t CMSDecoderSetDecoder(uint64_t a1, uint64_t a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 16);
      if ((v4 - 1) >= 2)
      {
        result = 0;
        if (!v4)
        {
          *(a1 + 24) = a2;
          *(a1 + 16) = 1;
        }
      }
    }
  }

  return result;
}

uint64_t CMSDecoderGetDecoder(uint64_t a1, void *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 24);
    }
  }

  return result;
}

OSStatus CMSDecoderCopySignerSigningTime(CMSDecoderRef cmsDecoder, size_t signerIndex, CFAbsoluteTime *signingTime)
{
  if (!cmsDecoder)
  {
    return -50;
  }

  if (!signingTime)
  {
    return -50;
  }

  v4 = *(cmsDecoder + 5);
  if (!v4)
  {
    return -50;
  }

  v5 = signerIndex;
  v6 = 0;
  ChildContentInfo = *(cmsDecoder + 5);
  do
  {
    ChildContentInfo = SecCmsContentInfoGetChildContentInfo(ChildContentInfo);
    ++v6;
  }

  while (ChildContentInfo);
  v9 = 0;
  v10 = v6 <= 1 ? 1 : v6;
  while (1)
  {
    v11 = v4;
    if (v9)
    {
      v12 = 1;
      v11 = v4;
      do
      {
        v11 = SecCmsContentInfoGetChildContentInfo(v11);
        if (!v11)
        {
          break;
        }
      }

      while (v12++ < v9);
    }

    OID = *(v11 + 32);
    if (OID || (OID = SECOID_FindOID(v11), (*(v11 + 32) = OID) != 0))
    {
      if (*(OID + 16) == 26)
      {
        v15 = *(v11 + 16);
        if (v15)
        {
          break;
        }
      }
    }

    if (++v9 == v10)
    {
      return -50;
    }
  }

  v17 = *(*(v15 + 160) + 8 * v5);
  if (!v17)
  {
    return -50;
  }

  SecCmsSignerInfoGetSigningTime(v17, signingTime, v8);
  return result;
}

uint64_t CMSDecoderCopySignerAppleCodesigningHashAgility(uint64_t a1, int a2, void *a3)
{
  v5 = 0;
  cf = 0;
  AppleCodesigningHashAgility = 4294967246;
  if (a1 && a3)
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      goto LABEL_27;
    }

    v9 = 0;
    ChildContentInfo = *(a1 + 40);
    do
    {
      ChildContentInfo = SecCmsContentInfoGetChildContentInfo(ChildContentInfo);
      ++v9;
    }

    while (ChildContentInfo);
    v11 = 0;
    v12 = v9 <= 1 ? 1 : v9;
    while (1)
    {
      v13 = v7;
      if (v11)
      {
        v14 = 1;
        v13 = v7;
        do
        {
          v13 = SecCmsContentInfoGetChildContentInfo(v13);
          if (!v13)
          {
            break;
          }
        }

        while (v14++ < v11);
      }

      OID = *(v13 + 32);
      if (OID || (OID = SECOID_FindOID(v13), (*(v13 + 32) = OID) != 0))
      {
        if (*(OID + 16) == 26)
        {
          v17 = *(v13 + 16);
          if (v17)
          {
            break;
          }
        }
      }

      if (++v11 == v12)
      {
        v5 = 0;
LABEL_20:
        AppleCodesigningHashAgility = 4294967246;
        goto LABEL_28;
      }
    }

    v5 = *(*(v17 + 160) + 8 * a2);
    if (!v5)
    {
      goto LABEL_20;
    }

    AppleCodesigningHashAgility = SecCmsSignerInfoGetAppleCodesigningHashAgility(v5, &cf);
    if (AppleCodesigningHashAgility || cf == 0)
    {
LABEL_27:
      v5 = 0;
    }

    else
    {
      v5 = CFRetain(cf);
      AppleCodesigningHashAgility = 0;
    }
  }

LABEL_28:
  *a3 = v5;
  return AppleCodesigningHashAgility;
}

uint64_t CMSDecoderCopySignerAppleCodesigningHashAgilityV2(uint64_t a1, int a2, void *a3)
{
  v5 = 0;
  cf = 0;
  AppleCodesigningHashAgilityV2 = 4294967246;
  if (a1 && a3)
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      goto LABEL_27;
    }

    v9 = 0;
    ChildContentInfo = *(a1 + 40);
    do
    {
      ChildContentInfo = SecCmsContentInfoGetChildContentInfo(ChildContentInfo);
      ++v9;
    }

    while (ChildContentInfo);
    v11 = 0;
    v12 = v9 <= 1 ? 1 : v9;
    while (1)
    {
      v13 = v7;
      if (v11)
      {
        v14 = 1;
        v13 = v7;
        do
        {
          v13 = SecCmsContentInfoGetChildContentInfo(v13);
          if (!v13)
          {
            break;
          }
        }

        while (v14++ < v11);
      }

      OID = *(v13 + 32);
      if (OID || (OID = SECOID_FindOID(v13), (*(v13 + 32) = OID) != 0))
      {
        if (*(OID + 16) == 26)
        {
          v17 = *(v13 + 16);
          if (v17)
          {
            break;
          }
        }
      }

      if (++v11 == v12)
      {
        v5 = 0;
LABEL_20:
        AppleCodesigningHashAgilityV2 = 4294967246;
        goto LABEL_28;
      }
    }

    v5 = *(*(v17 + 160) + 8 * a2);
    if (!v5)
    {
      goto LABEL_20;
    }

    AppleCodesigningHashAgilityV2 = SecCmsSignerInfoGetAppleCodesigningHashAgilityV2(v5, &cf);
    if (AppleCodesigningHashAgilityV2 || cf == 0)
    {
LABEL_27:
      v5 = 0;
    }

    else
    {
      v5 = CFRetain(cf);
      AppleCodesigningHashAgilityV2 = 0;
    }
  }

LABEL_28:
  *a3 = v5;
  return AppleCodesigningHashAgilityV2;
}

double CMSDecoderCopySignerAppleExpirationTime(uint64_t a1, int a2, double *a3, double result)
{
  if (a1)
  {
    if (a3)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        v7 = 0;
        ChildContentInfo = *(a1 + 40);
        do
        {
          ChildContentInfo = SecCmsContentInfoGetChildContentInfo(ChildContentInfo);
          ++v7;
        }

        while (ChildContentInfo);
        v9 = 0;
        if (v7 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v7;
        }

        while (1)
        {
          v11 = v5;
          if (v9)
          {
            v12 = 1;
            v11 = v5;
            do
            {
              v11 = SecCmsContentInfoGetChildContentInfo(v11);
              if (!v11)
              {
                break;
              }
            }

            while (v12++ < v9);
          }

          OID = *(v11 + 32);
          if (OID || (OID = SECOID_FindOID(v11), (*(v11 + 32) = OID) != 0))
          {
            if (*(OID + 16) == 26)
            {
              v15 = *(v11 + 16);
              if (v15)
              {
                break;
              }
            }
          }

          if (++v9 == v10)
          {
            return result;
          }
        }

        v16 = *(*(v15 + 160) + 8 * a2);
        if (v16)
        {

          return SecCmsSignerInfoGetAppleExpirationTime(v16, a3, result);
        }
      }
    }
  }

  return result;
}

uint64_t nss_cms_recipients_traverse(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (!*a1)
  {
    v7 = 0;
    v16 = 0;
    if (a2)
    {
LABEL_30:
      v7 = 0;
      *(a2 + 8 * v16) = 0;
      return v7;
    }

    return v7;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  while (1)
  {
    if (*v3 == 1)
    {
      v10 = *(v3 + 128);
      if (!v10)
      {
        goto LABEL_25;
      }

      v11 = *v10;
      if (!*v10)
      {
        goto LABEL_25;
      }

      v12 = 0;
      while (!a2)
      {
        v7 = (v7 + 1);
LABEL_22:
        v15 = &v10[v12++];
        v11 = v15[1];
        if (!v11)
        {
          goto LABEL_25;
        }
      }

      v13 = PORT_ZAlloc(0x28uLL);
      if (!v13)
      {
        return 0xFFFFFFFFLL;
      }

      *v13 = v5;
      v13[1] = v12;
      if (*v11 == 1)
      {
        v13[2] = 1;
        v14 = v11 + 8;
      }

      else
      {
        if (*v11)
        {
LABEL_21:
          *(a2 + 8 * v6) = v13;
          v10 = *(v3 + 128);
          ++v6;
          goto LABEL_22;
        }

        v13[2] = 0;
        v14 = *(v11 + 8);
      }

      *(v13 + 2) = v14;
      goto LABEL_21;
    }

    if (!*v3)
    {
      break;
    }

LABEL_25:
    v3 = a1[++v5];
    if (!v3)
    {
      v16 = v6;
      if (!a2)
      {
        return v7;
      }

      goto LABEL_30;
    }
  }

  if (!a2)
  {
    v7 = (v7 + 1);
    goto LABEL_25;
  }

  v8 = PORT_ZAlloc(0x28uLL);
  if (v8)
  {
    *v8 = v5;
    v8[1] = -1;
    v9 = *(v3 + 24);
    if (v9 <= 1)
    {
      v8[2] = v9;
      *(v8 + 2) = *(v3 + 32);
    }

    *(a2 + 8 * v6++) = v8;
    goto LABEL_25;
  }

  return 0xFFFFFFFFLL;
}

void nss_cms_recipient_list_destroy(char *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1 + 8;
    do
    {
      v4 = v2[3];
      if (v4)
      {
        v2[3] = 0;
        CFRelease(v4);
      }

      v5 = v2[4];
      if (v5)
      {
        v2[4] = 0;
        CFRelease(v5);
      }

      free(v2);
      v6 = *v3;
      v3 += 8;
      v2 = v6;
    }

    while (v6);
  }

  free(a1);
}

uint64_t SecSMIMEFindBulkAlgForRecipients(__SecCertificate **a1, _DWORD *a2, _DWORD *a3)
{
  v6 = PORT_NewArena(1024);
  v7 = 65545;
  if (v6)
  {
    v8 = v6;
    v9 = PORT_ArenaAlloc(v6, 0x24uLL);
    v10 = v9;
    if (v9)
    {
      *(v9 + 32) = 0;
      *v9 = 0u;
      *(v9 + 16) = 0u;
    }

    v11 = PORT_ArenaAlloc(v8, 0x24uLL);
    v7 = 65545;
    if (v11)
    {
      v12 = v11;
      *(v11 + 32) = 0;
      *v11 = 0u;
      *(v11 + 16) = 0u;
      v7 = 65545;
      if (v10)
      {
        v13 = *a1;
        if (*a1)
        {
          v14 = 0;
          v15 = a1 + 1;
          do
          {
            v16 = v14;
            v17 = SecCertificateCopyKey(v13);
            if (v17 && (v18 = v17, Size = SecKeyGetSize(v17, 0), CFRelease(v18), Size >= 0x201))
            {
              ++*(v10 + 16);
              *(v12 + 16) += 9;
              v20 = 8;
            }

            else
            {
              v20 = 9;
            }

            ++*(v10 + 4);
            *(v12 + 4) += v20;
            v14 = v16 + 1;
            v13 = v15[v16];
          }

          while (v13);
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v21 = 0;
        v22 = 0;
        v7 = 65545;
        v23 = &byte_1E70D9571;
        do
        {
          if (*(v10 + 4 * v21) == v14 && *(v23 - 1) && *v23 && *(v23 - 25) != 65561)
          {
            v24 = *(v12 + 4 * v21);
            if (v24 >= v22)
            {
              v7 = *(v23 - 25);
            }

            if (v24 > v22)
            {
              v22 = *(v12 + 4 * v21);
            }
          }

          ++v21;
          v23 += 32;
        }

        while (v21 != 9);
      }
    }

    PORT_FreeArena(v8, 0);
  }

  v25 = smime_keysize_by_cipher(v7);
  v26 = 0;
  if (v25 < 128)
  {
    v27 = 65546;
  }

  else
  {
    v27 = v7;
  }

  v28 = smime_cipher_map;
  while (1)
  {
    v29 = *v28;
    v28 += 4;
    if (v29 == v27)
    {
      break;
    }

    if (++v26 == 9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v31 = &smime_cipher_map[4 * v26];
  *a2 = *(v31 + 2);
  v32 = smime_keysize_by_cipher(*v31);
  result = 0;
  *a3 = v32;
  return result;
}

uint64_t smime_keysize_by_cipher(uint64_t a1)
{
  if (a1 <= 65544)
  {
    if (a1 == 65537)
    {
      return 40;
    }

    if (a1 != 65538)
    {
      if (a1 == 65539)
      {
        return 128;
      }

      return 0xFFFFFFFFLL;
    }

    return 64;
  }

  if (a1 == 65545)
  {
    return 64;
  }

  if (a1 != 65546)
  {
    if (a1 == 65561)
    {
      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return 192;
}

void *SecSMIMEGetCertFromEncryptionKeyPreference(int64_t **a1, unint64_t *a2)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v4 = PORT_NewArena(1024);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (SEC_ASN1Decode(v4, &v15, &smime_encryptionkeypref_template, a2[1], *a2))
  {
    PORT_FreeArena(v5, 0);
    return 0;
  }

  if (a1 && *a1)
  {
    v8 = 0;
      ;
    }

    Mutable = CFArrayCreateMutable(0, v8, MEMORY[0x1E695E9C0]);
    do
    {
      v11 = **a1;
      if ((v11 & 0x8000000000000000) == 0)
      {
        v12 = SecCertificateCreateWithBytes(0, (*a1)[1], v11);
        if (v12)
        {
          v13 = v12;
          CFArrayAppendValue(Mutable, v12);
          CFRelease(v13);
        }
      }

      ++a1;
      --v8;
    }

    while (v8);
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  if (!CFArrayGetCount(Mutable) && Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  if (v15 == 2 || v15 == 1)
  {
    v14 = CERT_FindBySubjectKeyID(Mutable, @"cert", v16);
    goto LABEL_25;
  }

  if (!v15)
  {
    v14 = CERT_FindByIssuerAndSN(Mutable, @"cert", v16);
LABEL_25:
    v6 = v14;
    goto LABEL_27;
  }

  v6 = 0;
LABEL_27:
  PORT_FreeArena(v5, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

uint64_t SecCmsEncoderCreate(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  ThreadErrInfo = PR_getThreadErrInfo(1, &v28);
  if (ThreadErrInfo)
  {
    *ThreadErrInfo = 0;
  }

  a1[17] = a6;
  a1[18] = a7;
  a1[19] = a8;
  v17 = PORT_ZAlloc(0x50uLL);
  if (!v17)
  {
    return 4294967188;
  }

  v18 = v17;
  *(v17 + 5) = a2;
  v19 = (v17 + 40);
  *(v17 + 2) = a1;
  *(v17 + 6) = a3;
  *(v17 + 7) = a4;
  *(v17 + 6) = 0;
  OID = a1[4];
  if (!OID)
  {
    OID = SECOID_FindOID(a1);
    a1[4] = OID;
    if (!OID)
    {
      Error = 4294967246;
      goto LABEL_21;
    }
  }

  v21 = *(OID + 16);
  Error = 4294967246;
  if (v21 > 28)
  {
    if (v21 == 29)
    {
      v23 = SecCmsDigestedDataEncodeBeforeStart(a1[2]);
    }

    else
    {
      if (v21 != 30)
      {
        goto LABEL_21;
      }

      v23 = SecCmsEncryptedDataEncodeBeforeStart(a1[2]);
    }
  }

  else
  {
    if (v21 != 26)
    {
      if (v21 == 27)
      {
        v23 = SecCmsEnvelopedDataEncodeBeforeStart(a1[2]);
        goto LABEL_16;
      }

LABEL_21:
      free(v18);
      return Error;
    }

    v23 = SecCmsSignedDataEncodeBeforeStart(a1[2]);
  }

LABEL_16:
  Error = v23;
  if (v23)
  {
    goto LABEL_21;
  }

  v24 = SEC_ASN1EncoderStart(a1, &SecCmsMessageTemplate, nss_cms_encoder_out, v19);
  *v18 = v24;
  if (v24)
  {
    v18[8] = 0;
    *(v24 + 20) = 1;
    *(v24 + 32) = nss_cms_encoder_notify;
    *(v24 + 40) = v18;
    if (!SEC_ASN1EncoderUpdate(v24, 0, 0))
    {
      Error = 0;
      *a9 = v18;
      return Error;
    }

    Error = PORT_GetError();
    free(v18);
    v25 = &v30;
  }

  else
  {
    Error = PORT_GetError();
    free(v18);
    v25 = &v29;
  }

  v27 = PR_getThreadErrInfo(1, v25);
  if (v27)
  {
    *v27 = 0;
  }

  return Error;
}

void nss_cms_encoder_notify(uint64_t *a1, int a2, uint64_t a3)
{
  v43[2] = *MEMORY[0x1E69E9840];
  v6 = a1[2];
  v7 = *(a1 + 6);
  if (v7 <= 0x1E)
  {
    if (((1 << v7) & 0x6C000000) != 0)
    {
      v8 = v7 > 0x1E;
      v9 = (1 << v7) & 0x6C000000;
      if (v8 || v9 == 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = a1[4];
      }

      if (a1[4])
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      OID = *(v12 + 32);
      if (OID || (OID = SECOID_FindOID(v12), (*(v12 + 32) = OID) != 0))
      {
        v14 = *(OID + 16) == 25;
        if (a2)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v14 = 0;
        if (a2)
        {
          goto LABEL_38;
        }
      }

      if (v12 == a3)
      {
        v15 = *(a1 + 6);
        if (v15 > 28)
        {
          if (v15 != 29)
          {
            if (v15 != 30)
            {
              goto LABEL_97;
            }

LABEL_27:
            v17 = a1[4];
            if (!v17)
            {
              goto LABEL_97;
            }

            v18 = *(v17 + 80);
            if (!v18)
            {
              goto LABEL_97;
            }

            CFRetain(*(v17 + 80));
            *(v17 + 96) = SecCmsCipherContextStart(*(*(v17 + 24) + 120), v18, v17 + 40, 1);
            CFRelease(v18);
            if (!*(v17 + 96))
            {
              goto LABEL_97;
            }

            goto LABEL_58;
          }

          v26 = a1[4];
          if (!v26[17])
          {
            goto LABEL_61;
          }

          if (v26[21])
          {
LABEL_58:
            v26 = a1[4];
            if (!v26)
            {
              goto LABEL_61;
            }

            goto LABEL_59;
          }

          v43[0] = v26 + 17;
          v43[1] = 0;
          v27 = v43;
        }

        else
        {
          if (v15 != 26)
          {
            if (v15 != 27)
            {
LABEL_97:
              *(a1 + 16) = PORT_GetError();
              ThreadErrInfo = PR_getThreadErrInfo(1, v43);
              if (ThreadErrInfo)
              {
                *ThreadErrInfo = 0;
              }

              return;
            }

            goto LABEL_27;
          }

          v26 = a1[4];
          v27 = v26[17];
          if (!v27)
          {
LABEL_59:
            v29 = *(a1 + 6);
            if (v29 > 0x1E || ((1 << v29) & 0x6C000000) == 0)
            {
              v26 = 0;
            }

LABEL_61:
            v30 = v26[4];
            if (v30 || (v30 = SECOID_FindOID(v26), (v26[4] = v30) != 0))
            {
              v31 = *(v30 + 16);
              if (v31 <= 0x1E)
              {
                if (((1 << v31) & 0x6C000000) != 0)
                {
                  v32 = PORT_ZAlloc(0x50uLL);
                  if (!v32)
                  {
                    goto LABEL_97;
                  }

                  v33 = v32;
                  *(v32 + 6) = v31;
                  v34 = v26[2];
                  *(v32 + 5) = nss_cms_encoder_update;
                  v35 = (v32 + 40);
                  *(v32 + 4) = v34;
                  *(v32 + 6) = a1;
                  *(v32 + 7) = 0;
                  *(v32 + 2) = a1[2];
                  if (v31 == 28)
                  {
                    goto LABEL_94;
                  }

                  v36 = *(&off_1E70D9708 + (v31 - 26));
                  if (v31 > 28)
                  {
                    if (v31 == 29)
                    {
                      v37 = SecCmsDigestedDataEncodeBeforeStart(v26[2]);
                    }

                    else
                    {
                      v37 = SecCmsEncryptedDataEncodeBeforeStart(v26[2]);
                    }
                  }

                  else if (v31 == 26)
                  {
                    v37 = SecCmsSignedDataEncodeBeforeStart(v26[2]);
                  }

                  else
                  {
                    if (v31 != 27)
                    {
LABEL_92:
                      v41 = SEC_ASN1EncoderStart(v26[2], v36, nss_cms_encoder_out, v35);
                      *v33 = v41;
                      if (!v41)
                      {
LABEL_96:
                        free(v33);
                        goto LABEL_97;
                      }

                      v33[8] = 0;
                      *(v41 + 20) = 1;
                      *(v41 + 32) = nss_cms_encoder_notify;
                      *(v41 + 40) = v33;
                      if (!SEC_ASN1EncoderUpdate(v41, 0, 0))
                      {
                        a1[9] = v33;
                        return;
                      }

LABEL_94:
                      if (*v33)
                      {
                        PORT_FreeArena(**v33, 0);
                      }

                      goto LABEL_96;
                    }

                    v37 = SecCmsEnvelopedDataEncodeBeforeStart(v26[2]);
                  }

                  if (v37)
                  {
                    goto LABEL_94;
                  }

                  goto LABEL_92;
                }

                if (v31 == 25)
                {
                  a1[9] = 0;
                  return;
                }
              }
            }

            *(a1 + 16) = -8183;
            return;
          }
        }

        started = SecCmsDigestContextStartMultiple(v27);
        v26[13] = started;
        if (!started)
        {
          goto LABEL_97;
        }

        goto LABEL_58;
      }

LABEL_38:
      v21 = v12 + 72;
      if (a2 && v21 == a3)
      {
        if (v14 && (v22 = *(v12 + 16)) != 0)
        {
          v24 = *v22;
          v23 = v22[1];

          nss_cms_encoder_work_data(a1, v23, v24, 1, 1);
        }

        else
        {
          *(*a1 + 24) = 1;
        }

        return;
      }

      if (a2 || v21 != a3)
      {
        return;
      }

      v25 = *(a1 + 6);
      if (v25 > 28)
      {
        if (v25 != 29)
        {
          if (v25 == 30)
          {
            goto LABEL_50;
          }

          goto LABEL_82;
        }

        v39 = SecCmsDigestedDataEncodeAfterData(a1[4]);
      }

      else
      {
        if (v25 != 26)
        {
          if (v25 == 27)
          {
LABEL_50:
            SecCmsEncryptedDataEncodeAfterData(a1[4]);
            goto LABEL_84;
          }

LABEL_82:
          *(a1 + 16) = PORT_GetError();
          v40 = PR_getThreadErrInfo(1, v43);
          if (v40)
          {
            *v40 = 0;
          }

          goto LABEL_84;
        }

        v39 = SecCmsSignedDataEncodeAfterData(a1[4]);
      }

      if (!v39)
      {
        goto LABEL_84;
      }

      goto LABEL_82;
    }

    if (v7 == 25)
    {
      if (!a2 || v6 + 72 != a3)
      {
        return;
      }

      v16 = *(v6 + 16);
      if (!v16)
      {
        v38 = *a1;
        *(*a1 + 24) = 1;
LABEL_85:
        *(v38 + 32) = 0;
        *(v38 + 40) = 0;
        return;
      }

      nss_cms_encoder_work_data(a1, *(v16 + 8), *v16, 1, 1);
LABEL_84:
      v38 = *a1;
      goto LABEL_85;
    }
  }

  if (!a2 && v6 == a3)
  {
    v19 = *(v6 + 32);
    if (v19 || (v19 = SECOID_FindOID(v6), (*(v6 + 32) = v19) != 0))
    {
      v20 = *(v19 + 16);
    }

    else
    {
      v20 = 0;
    }

    *(a1 + 6) = v20;
    a1[4] = *(v6 + 16);
  }
}

uint64_t nss_cms_encoder_work_data(uint64_t a1, char *dataIn, size_t dataInLength, int a4, int a5)
{
  v7 = dataInLength;
  v8 = dataIn;
  if (*(a1 + 32))
  {
    v10 = *(a1 + 24);
    v11 = v10 > 0x1E;
    v12 = (1 << v10) & 0x6C000000;
    if (v11 || v12 == 0)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a1 + 32);
    }

    if (!dataInLength)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
    if (!dataInLength)
    {
      goto LABEL_13;
    }
  }

  v15 = *(v14 + 104);
  if (v15)
  {
    SecCmsDigestContextUpdate(v15, dataIn, dataInLength);
  }

LABEL_13:
  v16 = *(v14 + 96);
  if (!v16)
  {
    v22 = 0;
    goto LABEL_22;
  }

  v25 = 0;
  v17 = *(v16 + 12);
  if (a4)
  {
    v18 = *(v16 + 12);
  }

  else
  {
    v18 = 0;
  }

  v19 = (v7 + v17 - 1) / v17;
  v20 = v18 + v19 * v17;
  if (!v20)
  {
    return SecCmsCipherContextCrypt(v16, 0, 0, 0, v8, v7, a4);
  }

  v21 = PORT_Alloc(v18 + v19 * v17);
  if (!v21)
  {
    return 0xFFFFFFFFLL;
  }

  v22 = v21;
  v23 = SecCmsCipherContextCrypt(*(v14 + 96), v21, &v25, v20, v8, v7, a4);
  if (!v23)
  {
    v7 = v25;
    v8 = v22;
LABEL_22:
    v23 = 0;
    if (*a1 && v7)
    {
      if (a5 && !*(v14 + 72))
      {
        v23 = 0;
        if (!v22)
        {
          return v23;
        }

LABEL_28:
        if (*(v14 + 96))
        {
          free(v22);
        }

        return v23;
      }

      v23 = SEC_ASN1EncoderUpdate(*a1, v8, v7);
    }

    if (!v22)
    {
      return v23;
    }

    goto LABEL_28;
  }

  return v23;
}