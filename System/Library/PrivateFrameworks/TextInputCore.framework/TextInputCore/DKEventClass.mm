@interface DKEventClass
@end

@implementation DKEventClass

void __get_DKEventClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_DKEvent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_DKEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np("Unable to find class %s", "_DKEvent");
    __55__TPSDiscoverabilitySignal_donateSignalWithCompletion___block_invoke(v2, v3, v4);
  }
}

@end