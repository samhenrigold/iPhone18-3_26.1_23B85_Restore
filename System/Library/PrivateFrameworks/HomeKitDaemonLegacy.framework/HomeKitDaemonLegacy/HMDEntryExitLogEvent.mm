@interface HMDEntryExitLogEvent
+ (id)entryLogEvent:(double)event isFalse:(BOOL)false isInitial:(BOOL)initial;
+ (id)exitLogEvent:(double)event isFalse:(BOOL)false isInitial:(BOOL)initial;
- (HMDEntryExitLogEvent)initWithReason:(unint64_t)reason isFalse:(BOOL)false lastFired:(double)fired isInitial:(BOOL)initial;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDEntryExitLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v19[6] = *MEMORY[0x277D85DE8];
  if ([(HMDEntryExitLogEvent *)self isInitial])
  {
    v18[0] = @"isEntry_INT";
    if ([(HMDEntryExitLogEvent *)self isEntry])
    {
      v3 = &unk_286628228;
    }

    else
    {
      v3 = &unk_286628240;
    }

    v19[0] = v3;
    v18[1] = @"isEntry_BOOL";
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEntryExitLogEvent isEntry](self, "isEntry")}];
    v19[1] = v4;
    v18[2] = @"isExit_INT";
    if ([(HMDEntryExitLogEvent *)self isExit])
    {
      v5 = &unk_286628228;
    }

    else
    {
      v5 = &unk_286628240;
    }

    v19[2] = v5;
    v18[3] = @"isExit_BOOL";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEntryExitLogEvent isExit](self, "isExit")}];
    v19[3] = v6;
    v18[4] = @"isFalse_INT";
    if ([(HMDEntryExitLogEvent *)self isFalse])
    {
      v7 = &unk_286628228;
    }

    else
    {
      v7 = &unk_286628240;
    }

    v19[4] = v7;
    v18[5] = @"isFalse_BOOL";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEntryExitLogEvent isFalse](self, "isFalse")}];
    v19[5] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:6];
  }

  else
  {
    v16[0] = @"isEntry_INT";
    if ([(HMDEntryExitLogEvent *)self isEntry])
    {
      v10 = &unk_286628228;
    }

    else
    {
      v10 = &unk_286628240;
    }

    v17[0] = v10;
    v16[1] = @"isEntry_BOOL";
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEntryExitLogEvent isEntry](self, "isEntry")}];
    v17[1] = v4;
    v16[2] = @"isExit_INT";
    if ([(HMDEntryExitLogEvent *)self isExit])
    {
      v11 = &unk_286628228;
    }

    else
    {
      v11 = &unk_286628240;
    }

    v17[2] = v11;
    v16[3] = @"isExit_BOOL";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEntryExitLogEvent isExit](self, "isExit")}];
    v17[3] = v6;
    v16[4] = @"isFalse_INT";
    if ([(HMDEntryExitLogEvent *)self isFalse])
    {
      v12 = &unk_286628228;
    }

    else
    {
      v12 = &unk_286628240;
    }

    v17[4] = v12;
    v16[5] = @"isFalse_BOOL";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEntryExitLogEvent isFalse](self, "isFalse")}];
    v17[5] = v8;
    v16[6] = @"secondsLastFired_DOUBLE";
    v13 = MEMORY[0x277CCABB0];
    [(HMDEntryExitLogEvent *)self secondsLastFired];
    v14 = [v13 numberWithDouble:?];
    v17[6] = v14;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:7];
  }

  return v9;
}

- (HMDEntryExitLogEvent)initWithReason:(unint64_t)reason isFalse:(BOOL)false lastFired:(double)fired isInitial:(BOOL)initial
{
  v11.receiver = self;
  v11.super_class = HMDEntryExitLogEvent;
  result = [(HMMLogEvent *)&v11 init];
  if (result)
  {
    result->_isEntry = reason == 0;
    result->_isExit = reason == 1;
    result->_secondsLastFired = fired;
    result->_isFalse = false;
    result->_isInitial = initial;
  }

  return result;
}

+ (id)exitLogEvent:(double)event isFalse:(BOOL)false isInitial:(BOOL)initial
{
  v5 = [[HMDEntryExitLogEvent alloc] initWithReason:1 isFalse:false lastFired:initial isInitial:event];

  return v5;
}

+ (id)entryLogEvent:(double)event isFalse:(BOOL)false isInitial:(BOOL)initial
{
  v5 = [[HMDEntryExitLogEvent alloc] initWithReason:0 isFalse:false lastFired:initial isInitial:event];

  return v5;
}

@end