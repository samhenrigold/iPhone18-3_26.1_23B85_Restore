@interface SKGEventsProfiler
+ (id)sharedInstance;
+ (void)initialize;
- (BOOL)profileCodeWithType:(id)type kind:(int)kind block:(id)block;
- (SKGEventsProfiler)initWithEnabled:(BOOL)enabled;
- (void)endProfilingWithType:(id)type outcome:(id)outcome;
- (void)logResultWithType:(id)type outcome:(id)outcome elapsedTime:(unint64_t)time kind:(int)kind;
- (void)startProfilingWithType:(id)type kind:(int)kind;
@end

@implementation SKGEventsProfiler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SKGEventsProfiler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

void __35__SKGEventsProfiler_sharedInstance__block_invoke(uint64_t a1)
{
  v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"SKGEventsProfiler"];
  v2 = [v5 objectForKey:@"enabled"];

  if (v2)
  {
    v2 = [v5 BOOLForKey:@"enabled"];
  }

  v3 = [objc_alloc(*(a1 + 32)) initWithEnabled:v2];
  v4 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v3;

  [sharedInstance_sharedInstance_0 setupTimebaseInfo];
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = _ongoingSessions;
    _ongoingSessions = dictionary;
  }
}

- (SKGEventsProfiler)initWithEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8.receiver = self;
  v8.super_class = SKGEventsProfiler;
  v5 = [(SKGEventsProfiler *)&v8 init];
  v6 = v5;
  if (v5 == self)
  {
    [(SKGEventsProfiler *)v5 setEnabled:enabledCopy];
  }

  return v6;
}

- (BOOL)profileCodeWithType:(id)type kind:(int)kind block:(id)block
{
  typeCopy = type;
  blockCopy = block;
  if ([(SKGEventsProfiler *)self enabled])
  {
    v10 = mach_absolute_time();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__SKGEventsProfiler_profileCodeWithType_kind_block___block_invoke_2;
    v13[3] = &unk_27893E888;
    v15 = v10;
    v13[4] = self;
    v14 = typeCopy;
    kindCopy = kind;
    v11 = blockCopy[2](blockCopy, v13);
  }

  else
  {
    v11 = blockCopy[2](blockCopy, __block_literal_global_31);
  }

  return v11;
}

void __52__SKGEventsProfiler_profileCodeWithType_kind_block___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) convertMachTimeToMilliseconds:mach_absolute_time() - *(a1 + 48)];
  [*(a1 + 32) logResultWithType:*(a1 + 40) outcome:v3 elapsedTime:v4 kind:*(a1 + 56)];
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v5 = SKGLogInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 40);
      v7 = 138412802;
      v8 = v6;
      v9 = 2048;
      v10 = v4;
      v11 = 2112;
      v12 = v3;
      _os_log_debug_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEBUG, "[CSEventsProfiler] %@ completed in %llu ms, outcome: %@", &v7, 0x20u);
    }
  }
}

- (void)startProfilingWithType:(id)type kind:(int)kind
{
  v4 = *&kind;
  v14[2] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if ([(SKGEventsProfiler *)self enabled])
  {
    v7 = mach_absolute_time();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = _ongoingSessions;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
    v13[0] = @"type";
    v13[1] = @"kind";
    v14[0] = typeCopy;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
    v14[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v9 setObject:v10 forKey:v12];

    objc_sync_exit(selfCopy);
  }
}

- (void)endProfilingWithType:(id)type outcome:(id)outcome
{
  v23 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  outcomeCopy = outcome;
  if ([(SKGEventsProfiler *)self enabled])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = [_ongoingSessions objectForKey:typeCopy];
    v10 = [v9 objectForKeyedSubscript:@"type"];
    unsignedLongLongValue = [v10 unsignedLongLongValue];

    v12 = [_ongoingSessions objectForKey:typeCopy];
    v13 = [v12 objectForKeyedSubscript:@"kind"];
    unsignedIntValue = [v13 unsignedIntValue];

    [_ongoingSessions removeObjectForKey:typeCopy];
    objc_sync_exit(selfCopy);

    if (unsignedLongLongValue)
    {
      v15 = [(SKGEventsProfiler *)selfCopy convertMachTimeToMilliseconds:mach_absolute_time() - unsignedLongLongValue];
      [(SKGEventsProfiler *)selfCopy logResultWithType:typeCopy outcome:outcomeCopy elapsedTime:v15 kind:unsignedIntValue];
      if (SKGLogGetCurrentLoggingLevel() >= 7)
      {
        v16 = SKGLogInit();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v18 = typeCopy;
          v19 = 2048;
          v20 = v15;
          v21 = 2112;
          v22 = outcomeCopy;
          _os_log_debug_impl(&dword_231B25000, v16, OS_LOG_TYPE_DEBUG, "[CSEventsProfiler] %@ completed in %llu ms, outcome: %@", buf, 0x20u);
        }
      }
    }

    else
    {
      NSLog(&cfstr_NoSessionFound.isa, typeCopy);
    }
  }
}

- (void)logResultWithType:(id)type outcome:(id)outcome elapsedTime:(unint64_t)time kind:(int)kind
{
  v6 = *&kind;
  v16[4] = *MEMORY[0x277D85DE8];
  outcomeCopy = outcome;
  typeCopy = type;
  v11 = +[SKGActivityJournal sharedJournal];
  v15[0] = &unk_2846E7C50;
  v15[1] = &unk_2846E7C68;
  v16[0] = typeCopy;
  v16[1] = outcomeCopy;
  v15[2] = &unk_2846E7C80;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  v16[2] = v12;
  v15[3] = &unk_2846E7C98;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:time];
  v16[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  [v11 addEventWithType:41 params:v14];
}

@end