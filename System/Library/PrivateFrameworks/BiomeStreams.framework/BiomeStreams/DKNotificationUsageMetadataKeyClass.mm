@interface DKNotificationUsageMetadataKeyClass
@end

@implementation DKNotificationUsageMetadataKeyClass

Class __get_DKNotificationUsageMetadataKeyClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreDuetLibraryCore_frameworkLibrary_4)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreDuetLibraryCore_block_invoke_4;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E6E53800;
    v5 = 0;
    CoreDuetLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  if (!CoreDuetLibraryCore_frameworkLibrary_4)
  {
    __get_DKNotificationUsageMetadataKeyClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("_DKNotificationUsageMetadataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKNotificationUsageMetadataKeyClass_block_invoke_cold_1();
  }

  get_DKNotificationUsageMetadataKeyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end