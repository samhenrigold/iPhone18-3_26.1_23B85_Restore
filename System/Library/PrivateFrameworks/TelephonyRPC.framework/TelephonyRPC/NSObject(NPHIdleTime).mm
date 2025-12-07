@interface NSObject(NPHIdleTime)
+ (uint64_t)performBlockAtIdle:()NPHIdleTime;
+ (void)NPHRequestIdleTimeNotification;
+ (void)_NPHIdleTimeNotification:()NPHIdleTime;
@end

@implementation NSObject(NPHIdleTime)

+ (uint64_t)performBlockAtIdle:()NPHIdleTime
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nph_general_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "+[NSObject(NPHIdleTime) performBlockAtIdle:]";
    _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NSObject_NPHIdleTime__performBlockAtIdle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (performBlockAtIdle__onceToken != -1)
  {
    dispatch_once(&performBlockAtIdle__onceToken, block);
  }

  v6 = sIdleBlocks;
  v7 = [v4 copy];

  [v6 addObject:v7];
  return [self NPHRequestIdleTimeNotification];
}

+ (void)NPHRequestIdleTimeNotification
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = nph_general_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[NSObject(NPHIdleTime) NPHRequestIdleTimeNotification]";
    _os_log_impl(&dword_26D269000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v3 = [MEMORY[0x277CCAB88] notificationWithName:@"NPHIdleNotification" object:0];
  defaultQueue = [MEMORY[0x277CCABA0] defaultQueue];
  [defaultQueue enqueueNotification:v3 postingStyle:1];
}

+ (void)_NPHIdleTimeNotification:()NPHIdleTime
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "+[NSObject(NPHIdleTime) _NPHIdleTimeNotification:]";
    v12 = 2048;
    v13 = [sIdleBlocks count];
    _os_log_impl(&dword_26D269000, v3, OS_LOG_TYPE_DEFAULT, "%s sIdleBlocks.count:%lu", &v10, 0x16u);
  }

  firstObject = [sIdleBlocks firstObject];
  if (firstObject)
  {
    date = [MEMORY[0x277CBEAA8] date];
    firstObject[2](firstObject);
    timeIntervalSinceNow = [date timeIntervalSinceNow];
    v8 = v7 * -1000.0;
    if (v7 * -1000.0 > 100.0)
    {
      v9 = nph_general_log(timeIntervalSinceNow);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315394;
        v11 = "+[NSObject(NPHIdleTime) _NPHIdleTimeNotification:]";
        v12 = 2048;
        v13 = *&v8;
        _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "******* %s BLOCKING MAIN THREAD: %f", &v10, 0x16u);
      }
    }

    [sIdleBlocks removeObjectAtIndex:0];
    if ([sIdleBlocks count])
    {
      [self NPHRequestIdleTimeNotification];
    }
  }
}

@end