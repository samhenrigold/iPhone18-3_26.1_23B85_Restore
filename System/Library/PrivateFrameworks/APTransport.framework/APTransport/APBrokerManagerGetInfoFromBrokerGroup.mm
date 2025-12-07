@interface APBrokerManagerGetInfoFromBrokerGroup
@end

@implementation APBrokerManagerGetInfoFromBrokerGroup

void ___APBrokerManagerGetInfoFromBrokerGroup_block_invoke(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (gLogCategory_APBrokerManager <= 50 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
  {
    ___APBrokerManagerGetInfoFromBrokerGroup_block_invoke_cold_1();
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else if (v6)
  {
    goto LABEL_8;
  }

  Mutable = *(v8 + 264);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v8 + 264) = Mutable;
  }

  CFDictionarySetValue(Mutable, a3, a4);
LABEL_8:
  if (FigCFEqual())
  {
    ___APBrokerManagerGetInfoFromBrokerGroup_block_invoke_cold_2(v8, v6);
  }

  FigSimpleMutexUnlock();
  v10 = *(a1 + 32);

  CFRelease(v10);
}

uint64_t ___APBrokerManagerGetInfoFromBrokerGroup_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10_1();
  if (v4 && !IsAppleInternalBuild())
  {
    v1 = @"#Redacted#";
  }

  if (gLogCategory_APBrokerManager > 30)
  {
    v5 = 1;
  }

  else
  {
    v5 = gLogCategory_APBrokerManager == -1 && _LogCategory_Initialize() == 0;
  }

  v11 = v5;
  OUTLINED_FUNCTION_3_1();
  return LogPrintF(v6, v7, v8, v9, v0, v1, v2, v11, v3);
}

void ___APBrokerManagerGetInfoFromBrokerGroup_block_invoke_cold_2(uint64_t a1, int a2)
{
  _APBrokerManagerCallGetInfoCallback(a1, a2, *(a1 + 264), *(a1 + 248));

  _APBrokerManagerClearGetInfoCallbackState(a1);
}

@end