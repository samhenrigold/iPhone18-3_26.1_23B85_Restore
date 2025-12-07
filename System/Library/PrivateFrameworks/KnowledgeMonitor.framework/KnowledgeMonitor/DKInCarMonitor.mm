@interface DKInCarMonitor
@end

@implementation DKInCarMonitor

void *__24___DKInCarMonitor_start__block_invoke_3(uint64_t a1)
{
  state64 = 0;
  result = notify_get_state(*(*(a1 + 32) + 156), &state64);
  if (!result)
  {
    *(*(a1 + 32) + 153) = state64 != 0;
    return [objc_opt_class() setIsConnected:*(*(a1 + 32) + 153)];
  }

  return result;
}

@end