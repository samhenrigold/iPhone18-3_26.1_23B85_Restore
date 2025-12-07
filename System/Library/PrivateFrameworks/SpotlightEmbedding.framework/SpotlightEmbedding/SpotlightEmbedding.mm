void sub_26B794304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26B795978(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x26B795918);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B797230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26B7979A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 240), 8);
  _Block_object_dispose((v38 - 192), 8);
  _Block_object_dispose((v38 - 160), 8);
  _Unwind_Resume(a1);
}

void sendSpotlightEmbeddingAnalyticsEvent(int a1, int a2, void *a3)
{
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.Spotlight"])
  {
    v5 = 0;
  }

  else if ([v4 hasPrefix:@"com.apple.omniSearch"])
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"com.apple.email"))
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"com.apple.mobileslideshow"])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 isEqual:@"com.apple.spotlightknowledged"];
  }

  if (!arc4random_uniform(0x2710u))
  {
    AnalyticsSendEventLazy();
  }

  v6 = isAppleInternalInstall();
  if (a1 == 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ((v5 & v7) == 1)
  {
    v8 = +[SPEmbeddingTailspinDumper sharedInstance];
    [v8 dump];
  }
}

Class __getVCPMediaAnalyzerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaAnalysisLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaAnalysisLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279D01BD8;
    v6 = 0;
    MediaAnalysisLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MediaAnalysisLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VCPMediaAnalyzer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVCPMediaAnalyzerClass_block_invoke_cold_1();
  }

  getVCPMediaAnalyzerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAnalysisLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaAnalysisLibraryCore_frameworkLibrary = result;
  return result;
}

id __sendSpotlightEmbeddingAnalyticsEvent_block_invoke(unsigned int *a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"errorCode";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1[8]];
  v8[0] = v2;
  v7[1] = @"caller";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1[9]];
  v8[1] = v3;
  v7[2] = @"client";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1[10]];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}