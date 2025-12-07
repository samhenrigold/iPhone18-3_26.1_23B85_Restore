@interface APBrokerGroupFireReceiversChanged
@end

@implementation APBrokerGroupFireReceiversChanged

void ___APBrokerGroupFireReceiversChanged_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 56);
  v3 = *(*(a1 + 32) + 88);
  FigSimpleMutexUnlock();
  if (v2 == v3)
  {
    if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || OUTLINED_FUNCTION_8_0(&gLogCategory_APBrokerGroup)))
    {
      OUTLINED_FUNCTION_7_0(&gLogCategory_APBrokerGroup, "OSStatus _APBrokerGroupFireReceiversChanged(APBrokerGroupRef)_block_invoke", v4, "[%{ptr}] Notify brokered receivers changed\n");
    }

    (*(a1 + 40))(*(a1 + 32), *(a1 + 48));
  }

  CFRelease(*(a1 + 32));
  v5 = *(a1 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

@end