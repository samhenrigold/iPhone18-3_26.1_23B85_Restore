@interface DASSchedulerClass
@end

@implementation DASSchedulerClass

Class __get_DASSchedulerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!DuetActivitySchedulerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __DuetActivitySchedulerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278F72A10;
    v5 = 0;
    DuetActivitySchedulerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!DuetActivitySchedulerLibraryCore_frameworkLibrary)
  {
    __get_DASSchedulerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("_DASScheduler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DASSchedulerClass_block_invoke_cold_1();
  }

  get_DASSchedulerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_DASSchedulerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class get_DASSchedulerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DSAppSharing.m" lineNumber:25 description:{@"Unable to find class %s", "_DASScheduler"}];

  __break(1u);
}

void __get_DASSchedulerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *DuetActivitySchedulerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DSAppSharing.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

@end