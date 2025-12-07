@interface CNScheduler
+ (CNScheduler)globalAsyncScheduler;
+ (CNScheduler)immediateScheduler;
+ (CNScheduler)inlineScheduler;
+ (CNScheduler)mainThreadScheduler;
+ (CNScheduler)offMainThreadScheduler;
+ (id)offMainThreadSchedulerWithBackgroundScheduler:(id)scheduler;
+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)count;
+ (id)serialDispatchQueueSchedulerWithName:(id)name;
+ (id)serialWorkloopSchedulerWithName:(id)name;
+ (id)synchronousSerialDispatchQueueWithName:(id)name;
@end

@implementation CNScheduler

+ (CNScheduler)globalAsyncScheduler
{
  if (globalAsyncScheduler_cn_once_token_2 != -1)
  {
    +[CNScheduler globalAsyncScheduler];
  }

  v3 = globalAsyncScheduler_cn_once_object_2;

  return v3;
}

+ (CNScheduler)mainThreadScheduler
{
  if (mainThreadScheduler_cn_once_token_3 != -1)
  {
    +[CNScheduler mainThreadScheduler];
  }

  v3 = mainThreadScheduler_cn_once_object_3;

  return v3;
}

uint64_t __34__CNScheduler_mainThreadScheduler__block_invoke()
{
  v0 = objc_alloc_init(_CNMainThreadScheduler);
  v1 = mainThreadScheduler_cn_once_object_3;
  mainThreadScheduler_cn_once_object_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __30__CNScheduler_inlineScheduler__block_invoke()
{
  v0 = objc_alloc_init(_CNInlineScheduler);
  v1 = inlineScheduler_cn_once_object_5;
  inlineScheduler_cn_once_object_5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __33__CNScheduler_immediateScheduler__block_invoke()
{
  v0 = objc_alloc_init(_CNImmediateScheduler);
  v1 = immediateScheduler_cn_once_object_1;
  immediateScheduler_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __35__CNScheduler_globalAsyncScheduler__block_invoke()
{
  v0 = objc_alloc_init(_CNQueueScheduler);
  v1 = globalAsyncScheduler_cn_once_object_2;
  globalAsyncScheduler_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (CNScheduler)inlineScheduler
{
  if (inlineScheduler_cn_once_token_5 != -1)
  {
    +[CNScheduler inlineScheduler];
  }

  v3 = inlineScheduler_cn_once_object_5;

  return v3;
}

+ (CNScheduler)immediateScheduler
{
  if (immediateScheduler_cn_once_token_1 != -1)
  {
    +[CNScheduler immediateScheduler];
  }

  v3 = immediateScheduler_cn_once_object_1;

  return v3;
}

+ (CNScheduler)offMainThreadScheduler
{
  if (offMainThreadScheduler_cn_once_token_4 != -1)
  {
    +[CNScheduler offMainThreadScheduler];
  }

  v3 = offMainThreadScheduler_cn_once_object_4;

  return v3;
}

uint64_t __37__CNScheduler_offMainThreadScheduler__block_invoke()
{
  v0 = objc_alloc_init(_CNOffMainThreadScheduler);
  v1 = offMainThreadScheduler_cn_once_object_4;
  offMainThreadScheduler_cn_once_object_4 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)offMainThreadSchedulerWithBackgroundScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v4 = [[_CNOffMainThreadScheduler alloc] initWithBackgroundScheduler:schedulerCopy];

  return v4;
}

+ (id)serialDispatchQueueSchedulerWithName:(id)name
{
  uTF8String = [name UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_DEFAULT, 0);
  v6 = dispatch_queue_create(uTF8String, v5);

  v7 = [[_CNQueueScheduler alloc] initWithQueue:v6];

  return v7;
}

+ (id)serialWorkloopSchedulerWithName:(id)name
{
  v3 = dispatch_workloop_create([name UTF8String]);
  v4 = [[_CNQueueScheduler alloc] initWithQueue:v3];

  return v4;
}

+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)count
{
  v3 = [[_CNOperationQueueScheduler alloc] initWithMaxConcurrentOperationCount:count];

  return v3;
}

+ (id)synchronousSerialDispatchQueueWithName:(id)name
{
  uTF8String = [name UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_DEFAULT, 0);
  v6 = dispatch_queue_create(uTF8String, v5);

  v7 = [[_CNSynchronousQueueScheduler alloc] initWithQueue:v6];

  return v7;
}

@end