@interface CDClientContextClass
@end

@implementation CDClientContextClass

Class __get_CDClientContextClass_block_invoke(uint64_t a1)
{
  CoreDuetContextLibrary();
  result = objc_getClass("_CDClientContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_CDClientContextClass_block_invoke_cold_1();
  }

  get_CDClientContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __get_CDClientContextClass_block_invoke_0(uint64_t a1)
{
  CoreDuetContextLibrary_0();
  result = objc_getClass("_CDClientContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_CDClientContextClass_block_invoke_cold_1_0();
  }

  get_CDClientContextClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __get_CDClientContextClass_block_invoke_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreDuetContextLibraryCore_frameworkLibrary_2)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreDuetContextLibraryCore_block_invoke_2;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E6E54078;
    v5 = 0;
    CoreDuetContextLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  if (!CoreDuetContextLibraryCore_frameworkLibrary_2)
  {
    __get_CDClientContextClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("_CDClientContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_CDClientContextClass_block_invoke_cold_1_1();
  }

  get_CDClientContextClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end