@interface MCMCommandCompleteBackgroundTasks
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (void)execute;
@end

@implementation MCMCommandCompleteBackgroundTasks

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

- (void)execute
{
  v3 = objc_autoreleasePoolPush();
  v4 = MCMSharedBackgroundQueue();
  dispatch_barrier_async_and_wait(v4, &__block_literal_global_14748);

  v5 = MCMSharedSlowWorkloop();
  dispatch_barrier_async_and_wait(v5, &__block_literal_global_2);

  v6 = MCMDataProtectionQueue();
  dispatch_barrier_async_and_wait(v6, &__block_literal_global_4);

  resultPromise = [(MCMCommand *)self resultPromise];
  v8 = objc_opt_new();
  [resultPromise completeWithResult:v8];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  codeSignInfo = [clientIdentity codeSignInfo];
  entitlements = [codeSignInfo entitlements];

  if ([entitlements allowed])
  {
    testabilityAllowed = 1;
  }

  else
  {
    testabilityAllowed = [entitlements testabilityAllowed];
  }

  return testabilityAllowed;
}

@end