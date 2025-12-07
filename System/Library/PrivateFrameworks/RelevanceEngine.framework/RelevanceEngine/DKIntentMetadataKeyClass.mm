@interface DKIntentMetadataKeyClass
@end

@implementation DKIntentMetadataKeyClass

Class __get_DKIntentMetadataKeyClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKIntentMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKIntentMetadataKeyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_DKIntentMetadataKeyClass_block_invoke_cold_1();
    return __get_DKRelevantShortcutMetadataKeyClass_block_invoke(v3);
  }

  return result;
}

Class __get_DKIntentMetadataKeyClass_block_invoke_0(uint64_t a1)
{
  CoreDuetLibrary_1();
  result = objc_getClass("_DKIntentMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKIntentMetadataKeyClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __get_DKIntentMetadataKeyClass_block_invoke_cold_1();
    return __get_DKApplicationActivityMetadataKeyClass_block_invoke(v3);
  }

  return result;
}

void __get_DKIntentMetadataKeyClass_block_invoke_1(uint64_t a1)
{
  CoreDuetLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_DKIntentMetadataKey");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKIntentMetadataKeyClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __get_DKIntentMetadataKeyClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_1_6(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

@end