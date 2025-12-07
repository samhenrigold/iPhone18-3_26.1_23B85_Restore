@interface ICQHelperFunctionsClass
@end

@implementation ICQHelperFunctionsClass

Class __get_ICQHelperFunctionsClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudQuotaLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudQuotaLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A6507C8;
    v6 = 0;
    iCloudQuotaLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (iCloudQuotaLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_ICQHelperFunctions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_ICQHelperFunctionsClass_block_invoke_cold_1();
  }

  get_ICQHelperFunctionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end