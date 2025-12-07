@interface TUCall
@end

@implementation TUCall

uint64_t __51__TUCall_PHUIUtilities__sendMessageIntentExtension__block_invoke()
{
  v0 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  v1 = sendMessageIntentExtension_hasQueriedSendMessageIntentExtensionsCache;
  sendMessageIntentExtension_hasQueriedSendMessageIntentExtensionsCache = v0;

  sendMessageIntentExtension_sendMessageIntentExtensionsCache = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];

  return MEMORY[0x2821F96F8]();
}

void __51__TUCall_PHUIUtilities__sendMessageIntentExtension__block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v10 = PHDefaultLog(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __51__TUCall_PHUIUtilities__sendMessageIntentExtension__block_invoke_38_cold_1();
    }
  }

  else
  {
    v7 = [a2 firstObject];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

@end