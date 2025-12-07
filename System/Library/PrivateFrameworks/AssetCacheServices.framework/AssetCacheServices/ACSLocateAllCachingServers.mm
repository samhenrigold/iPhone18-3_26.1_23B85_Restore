@interface ACSLocateAllCachingServers
@end

@implementation ACSLocateAllCachingServers

void ___ACSLocateAllCachingServers_block_invoke(uint64_t a1, uint64_t a2, CFArrayRef theArray, __CFError *Copy)
{
  MutableCopy = theArray;
  v32 = *MEMORY[0x277D85DE8];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    MutableCopy = CFArrayCreateMutableCopy(0, Count, MutableCopy);
  }

  if (Copy)
  {
    Copy = aclErrorCreateCopy(Copy);
  }

  v9 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 72);
    v11 = *(a1 + 40);
    v12 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    v13 = *(a1 + 56);
    *buf = 67110658;
    v19 = v10;
    v20 = 2080;
    v21 = v11;
    v22 = 2112;
    v23 = a2;
    v24 = 2112;
    v25 = MutableCopy;
    v26 = 2112;
    v27 = Copy;
    v28 = 2048;
    v29 = v12;
    v30 = 2048;
    v31 = v13;
    _os_log_impl(&dword_2411B8000, v9, OS_LOG_TYPE_DEFAULT, "#%08x %s -> [%@] results %@, error %@, elapsed %.3f/%.3f", buf, 0x44u);
  }

  v14 = *(a1 + 64);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 0x40000000;
  v16[2] = ___ACSLocateAllCachingServers_block_invoke_96;
  v16[3] = &unk_278CC5778;
  v15 = *(a1 + 40);
  v16[4] = *(a1 + 32);
  v16[5] = MutableCopy;
  v17 = *(a1 + 72);
  v16[6] = Copy;
  v16[7] = v15;
  v16[8] = v14;
  dispatch_async(v14, v16);
}

void ___ACSLocateAllCachingServers_block_invoke_96(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (CFGetRetainCount(v2) != 1)
    {
      ___ACSLocateAllCachingServers_block_invoke_96_cold_1();
    }

    CFRetain(*(a1 + 40));
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    if (CFGetRetainCount(v3) != 1)
    {
      ___ACSLocateAllCachingServers_block_invoke_96_cold_2();
    }

    CFRetain(*(a1 + 48));
  }

  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 40);
  if (v4)
  {
    if (CFGetRetainCount(v4) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 72), *(a1 + 56), "results", *(a1 + 40));
    }

    CFRelease(*(a1 + 40));
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    if (CFGetRetainCount(v5) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 72), *(a1 + 56), "error", *(a1 + 48));
    }

    CFRelease(*(a1 + 48));
    v6 = *(a1 + 48);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 64);

  dispatch_release(v8);
}

@end