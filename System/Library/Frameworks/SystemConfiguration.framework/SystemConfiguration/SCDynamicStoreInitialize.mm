@interface SCDynamicStoreInitialize
@end

@implementation SCDynamicStoreInitialize

uint64_t ____SCDynamicStoreInitialize_block_invoke()
{
  __kSCDynamicStoreTypeID = _CFRuntimeRegisterClass();
  pthread_atfork(0, 0, childForkHandler);
  if (storeQueue_once != -1)
  {
    ____SCDynamicStoreInitialize_block_invoke_cold_1();
  }

  return os_state_add_handler();
}

void ____SCDynamicStoreInitialize_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&storeQueue_once, &__block_literal_global_3);
}

@end