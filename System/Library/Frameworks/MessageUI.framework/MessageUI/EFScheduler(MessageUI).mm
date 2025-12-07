@interface EFScheduler(MessageUI)
+ (id)__mui_nextRunLoopMainThreadScheduler;
@end

@implementation EFScheduler(MessageUI)

+ (id)__mui_nextRunLoopMainThreadScheduler
{
  if (__mui_nextRunLoopMainThreadScheduler_onceToken != -1)
  {
    +[EFScheduler(MessageUI) __mui_nextRunLoopMainThreadScheduler];
  }

  v2 = __mui_nextRunLoopMainThreadScheduler_scheduler;

  return v2;
}

@end