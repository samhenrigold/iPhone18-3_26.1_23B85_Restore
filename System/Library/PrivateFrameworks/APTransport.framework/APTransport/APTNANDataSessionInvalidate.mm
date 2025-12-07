@interface APTNANDataSessionInvalidate
@end

@implementation APTNANDataSessionInvalidate

void ___APTNANDataSessionInvalidate_block_invoke(void *a1)
{
  FigSimpleMutexLock();
  v4 = *(a1[5] + 80);
  if (v4 == a1[6])
  {

    v5 = a1[5];
    *(v5 + 80) = 0;
    if (*(v5 + 88))
    {
      *(*(a1[4] + 8) + 24) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (*(*(a1[4] + 8) + 24))
      {
        CFDictionarySetInt64();
      }

      else if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
      {
        ___APTNANDataSessionInvalidate_block_invoke_cold_2(a1, v6, v7);
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  else if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    ___APTNANDataSessionInvalidate_block_invoke_cold_1(a1, v2, v3);
  }

  FigSimpleMutexUnlock();
  v8 = *(*(a1[4] + 8) + 24);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[7];

  CFRelease(v9);
}

@end