@interface ANEDeviceInfoClass
@end

@implementation ANEDeviceInfoClass

Class __get_ANEDeviceInfoClass_block_invoke(uint64_t a1)
{
  v6 = 0;
  v2 = AppleNeuralEngineLibraryCore(&v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = abort_report_np("%s", v6);
  }

  free(v3);
LABEL_3:
  result = objc_getClass("_ANEDeviceInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_ANEDeviceInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_ANEDeviceInfoClass_block_invoke_cold_1();
    return __getMGGetBoolAnswerSymbolLoc_block_invoke(v5);
  }

  return result;
}

@end