@interface MPModelLibraryRequestPropertyFilterClass
@end

@implementation MPModelLibraryRequestPropertyFilterClass

Class __get_MPModelLibraryRequestPropertyFilterClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_26)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_26;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27822A1B8;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_26 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_26)
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
  result = objc_getClass("_MPModelLibraryRequestPropertyFilter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_MPModelLibraryRequestPropertyFilterClass_block_invoke_cold_1();
  }

  get_MPModelLibraryRequestPropertyFilterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end