@interface APBrokerManagerHandleBrokeredReceiversChanged
@end

@implementation APBrokerManagerHandleBrokeredReceiversChanged

void ___APBrokerManagerHandleBrokeredReceiversChanged_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9 = 0;
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (*(v2 + 104))
  {
    ___APBrokerManagerHandleBrokeredReceiversChanged_block_invoke_cold_1(v2, v4, v5);
LABEL_10:
    FigSimpleMutexUnlock();
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(*(v2 + 112), v3);
  if (!Value)
  {
    ___APBrokerManagerHandleBrokeredReceiversChanged_block_invoke_cold_3(v2, v3, v7);
    goto LABEL_10;
  }

  v8 = APBrokerGroupCopyReceivers(Value, &v9);
  if (v9)
  {
    ___APBrokerManagerHandleBrokeredReceiversChanged_block_invoke_cold_2(v9);
  }

  else
  {
    _APBrokerManagerUpdateBrokerGroupReceiversWithList(v2, v3, v8);
  }

  FigSimpleMutexUnlock();
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_7:
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
}

uint64_t ___APBrokerManagerHandleBrokeredReceiversChanged_block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APBrokerManager <= 30)
  {
    if (gLogCategory_APBrokerManager != -1)
    {
      return OUTLINED_FUNCTION_7_0(&gLogCategory_APBrokerManager, "void _APBrokerManagerUpdateBrokerGroupReceivers(APBrokerManagerRef, CFStringRef)", a3, "[%{ptr}] BrokerManager invalidated before processing receivers changed\n");
    }

    result = OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerManager);
    if (result)
    {
      return OUTLINED_FUNCTION_7_0(&gLogCategory_APBrokerManager, "void _APBrokerManagerUpdateBrokerGroupReceivers(APBrokerManagerRef, CFStringRef)", a3, "[%{ptr}] BrokerManager invalidated before processing receivers changed\n");
    }
  }

  return result;
}

uint64_t ___APBrokerManagerHandleBrokeredReceiversChanged_block_invoke_cold_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APBrokerManager <= 30)
  {
    if (gLogCategory_APBrokerManager != -1)
    {
      return OUTLINED_FUNCTION_7_0(&gLogCategory_APBrokerManager, "void _APBrokerManagerUpdateBrokerGroupReceivers(APBrokerManagerRef, CFStringRef)", a3, "[%{ptr}] Broker %@ lost before processing receivers changed\n");
    }

    result = OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerManager);
    if (result)
    {
      return OUTLINED_FUNCTION_7_0(&gLogCategory_APBrokerManager, "void _APBrokerManagerUpdateBrokerGroupReceivers(APBrokerManagerRef, CFStringRef)", a3, "[%{ptr}] Broker %@ lost before processing receivers changed\n");
    }
  }

  return result;
}

@end