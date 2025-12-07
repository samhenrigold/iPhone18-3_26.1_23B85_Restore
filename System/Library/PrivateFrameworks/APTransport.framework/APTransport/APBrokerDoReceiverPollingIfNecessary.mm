@interface APBrokerDoReceiverPollingIfNecessary
@end

@implementation APBrokerDoReceiverPollingIfNecessary

void ___APBrokerDoReceiverPollingIfNecessary_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 32) + 112))
  {
    if (gLogCategory_APBrokerGroup <= 50 && (gLogCategory_APBrokerGroup != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_9(&gLogCategory_APBrokerGroup, "void _APBrokerDoReceiverPollingIfNecessary(APBrokerGroupRef _Nullable, uint64_t)_block_invoke", a3, "[%{ptr}] Scheduling brokered receiver poll in %llus\n");
    }

    dispatch_time(0, 1000000000 * *(a1 + 40));
    v4 = OUTLINED_FUNCTION_7_5();

    dispatch_source_set_timer(v4, v5, v6, v7);
  }
}

@end