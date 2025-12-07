@interface DKEventClass
@end

@implementation DKEventClass

Class __get_DKEventClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  result = objc_getClass("_DKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKEventClass_block_invoke_cold_1();
  }

  get_DKEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __get_DKEventClass_block_invoke_0(uint64_t a1)
{
  CoreDuetLibrary_0();
  result = objc_getClass("_DKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKEventClass_block_invoke_cold_1_0();
  }

  get_DKEventClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __get_DKEventClass_block_invoke_1(uint64_t a1)
{
  CoreDuetLibrary_1();
  result = objc_getClass("_DKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKEventClass_block_invoke_cold_1_1();
  }

  get_DKEventClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __get_DKEventClass_block_invoke_2(uint64_t a1)
{
  CoreDuetLibrary_2();
  result = objc_getClass("_DKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKEventClass_block_invoke_cold_1_2();
  }

  get_DKEventClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __get_DKEventClass_block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreDuetLibraryCore_frameworkLibrary_7)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreDuetLibraryCore_block_invoke_7;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E6E53988;
    v5 = 0;
    CoreDuetLibraryCore_frameworkLibrary_7 = _sl_dlopen();
  }

  if (!CoreDuetLibraryCore_frameworkLibrary_7)
  {
    __get_DKEventClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("_DKEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DKEventClass_block_invoke_cold_1_3();
  }

  get_DKEventClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end