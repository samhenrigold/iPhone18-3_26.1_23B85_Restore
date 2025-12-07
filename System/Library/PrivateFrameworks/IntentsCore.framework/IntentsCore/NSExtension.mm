@interface NSExtension
@end

@implementation NSExtension

void __109__NSExtension_IntentsCore___intents_startExtensionConnectionWithExtensionInputItems_intent_queue_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 136315650;
    v6 = "[NSExtension(IntentsCore) _intents_startExtensionConnectionWithExtensionInputItems:intent:queue:completion:]_block_invoke";
    v7 = 2050;
    v8 = 0x4024000000000000;
    v9 = 2112;
    v10 = v4;
    _os_log_error_impl(&dword_255503000, v2, OS_LOG_TYPE_ERROR, "%s Extension launching timed out after %{public}f seconds for intent %@", &v5, 0x20u);
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD3848] code:5000 userInfo:0];
  (*(*(a1 + 40) + 16))();
}

@end