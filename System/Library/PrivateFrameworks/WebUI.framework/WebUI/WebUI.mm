uint64_t WBUAutoFillGetEnabledDataClasses()
{
  v0 = objc_alloc_init(WBUFormDataController);
  v1 = [(WBUFormDataController *)v0 shouldAutoFillPasswords];
  if ([(WBUFormDataController *)v0 shouldAutoFillFromCreditCardData])
  {
    v1 |= 2uLL;
  }

  return v1;
}

void WBUAutoFillDisableDataClasses(char a1)
{
  v2 = objc_alloc_init(WBUFormDataController);
  v3 = v2;
  if (a1)
  {
    [(WBUFormDataController *)v2 setShouldAutoFillPasswords:0];
    v2 = v3;
  }

  if ((a1 & 2) != 0)
  {
    [(WBUFormDataController *)v3 setShouldAutoFillFromCreditCardData:0];
    v2 = v3;
  }
}

void WBUAutoFillClearDataClasses(char a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(WBUFormDataController);
    [(WBUFormDataController *)v2 clearAllFormCredentials];
  }

  if ((a1 & 2) != 0)
  {
    v3 = +[WBUCreditCardDataController sharedCreditCardDataController];
    [v3 clearCreditCardData];
  }
}

void sub_273D5BF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXAutoFill(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXAutoFill_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAutoFill_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAutoFill_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCookiePolicy(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXCookiePolicy_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCookiePolicy_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCookiePolicy_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXKeychain(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXKeychain_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXKeychain_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXKeychain_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXScreenTime(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXScreenTime_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXScreenTime_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXScreenTime_log;
}

void sub_273D60E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL frameHasTrustedCertificateChain(void *a1)
{
  v1 = a1;
  v2 = [v1 webui_URL];
  v3 = [v2 host];

  if (![v3 length])
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v4 = [v1 webui_serverTrust];
  v5 = v4;
  if (v4)
  {
    CertificateCount = SecTrustGetCertificateCount(v4);
    if (CertificateCount >= 2)
    {
      v7 = 0;
      v8 = CertificateCount - 1;
      do
      {
        SecTrustGetCertificateAtIndex(v5, v7);
        if (SecCertificateGetSignatureHashAlgorithm() == 4)
        {
          goto LABEL_8;
        }
      }

      while (v8 != ++v7);
    }

    v5 = SecTrustEvaluateWithError(v5, 0);
  }

LABEL_9:

  return v5;
}

void sub_273D61DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_273D63B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_273D641B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id titleTextForSavingNewPassword()
{
  if (![MEMORY[0x277D49A08] isPasswordsAppInstalled])
  {
    +[WBUFormDataController keychainSyncEnabled];
  }

  v0 = _WBSLocalizedString();

  return v0;
}

void sub_273D65A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_273D67C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 248), 8);
  _Block_object_dispose((v27 - 200), 8);
  _Block_object_dispose((v27 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_273D6AC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 152), 8);
  _Unwind_Resume(a1);
}

void __SafariCompletionsDBPath_block_invoke()
{
  v0 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Safari"];
  v1 = SafariCompletionsDBPath_path;
  SafariCompletionsDBPath_path = v0;

  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 _web_createDirectoryAtPathWithIntermediateDirectories:SafariCompletionsDBPath_path attributes:0];

  v5 = [SafariCompletionsDBPath_path stringByAppendingPathComponent:@"FormValues.plist"];
  v3 = [v5 stringByResolvingSymlinksInPath];
  v4 = SafariCompletionsDBPath_path;
  SafariCompletionsDBPath_path = v3;
}