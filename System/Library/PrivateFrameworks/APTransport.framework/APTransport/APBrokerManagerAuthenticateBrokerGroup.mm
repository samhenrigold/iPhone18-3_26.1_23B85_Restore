@interface APBrokerManagerAuthenticateBrokerGroup
@end

@implementation APBrokerManagerAuthenticateBrokerGroup

void ___APBrokerManagerAuthenticateBrokerGroup_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 32);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (gLogCategory_APBrokerManager <= 50 && (gLogCategory_APBrokerManager != -1 || _LogCategory_Initialize()))
  {
    ___APBrokerManagerAuthenticateBrokerGroup_block_invoke_cold_1();
  }

  *(v7 + 216) = v5;
  if (!v5 || FigCFEqual())
  {
    ___APBrokerManagerAuthenticateBrokerGroup_block_invoke_cold_2(a4, (v7 + 216), v7, (v7 + 96));
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  v8 = *(a1 + 32);

  CFRelease(v8);
}

uint64_t ___APBrokerManagerAuthenticateBrokerGroup_block_invoke_cold_1()
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

void ___APBrokerManagerAuthenticateBrokerGroup_block_invoke_cold_2(uint64_t a1, int *a2, uint64_t a3, void *a4)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FigCFDictionarySetValueFromKeyInDict();
  _APBrokerManagerCallAuthenticationCallback(a3, *a2, Mutable, *(a3 + 208));
  _APBrokerManagerClearAuthCallbackState(a3);
  FigSimpleMutexUnlock();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

@end