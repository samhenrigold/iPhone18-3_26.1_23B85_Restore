@interface HMDRegionStateCorrectnessLogEvent
+ (id)updateWithFirstAccessory:(int64_t)accessory nearbyHome:(int64_t)home;
+ (id)updateWithRegion:(int64_t)region nearbyHome:(int64_t)home accessoryReachable:(BOOL)reachable;
- (HMDRegionStateCorrectnessLogEvent)initWithReason:(unint64_t)reason firstAccessoryReachable:(BOOL)reachable regionStateAtHome:(int64_t)home regionStateNearByHome:(int64_t)byHome isStateCorrect:(BOOL)correct;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDRegionStateCorrectnessLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v17[11] = *MEMORY[0x277D85DE8];
  v16[0] = @"firstAccessoryReachable_INT";
  if ([(HMDRegionStateCorrectnessLogEvent *)self firstAccessoryReachable])
  {
    v3 = &unk_283E72BC0;
  }

  else
  {
    v3 = &unk_283E72BD8;
  }

  v17[0] = v3;
  v16[1] = @"firstAccessoryReachable_BOOL";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRegionStateCorrectnessLogEvent firstAccessoryReachable](self, "firstAccessoryReachable")}];
  v17[1] = v4;
  v16[2] = @"regionStateAtHome_INT";
  if ([(HMDRegionStateCorrectnessLogEvent *)self regionStateAtHome])
  {
    v5 = &unk_283E72BC0;
  }

  else
  {
    v5 = &unk_283E72BD8;
  }

  v17[2] = v5;
  v16[3] = @"regionStateAtHome_BOOL";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRegionStateCorrectnessLogEvent regionStateAtHome](self, "regionStateAtHome")}];
  v17[3] = v6;
  v16[4] = @"regionStateNearByHome_INT";
  if ([(HMDRegionStateCorrectnessLogEvent *)self regionStateNearByHome])
  {
    v7 = &unk_283E72BC0;
  }

  else
  {
    v7 = &unk_283E72BD8;
  }

  v17[4] = v7;
  v16[5] = @"regionStateNearByHome_BOOL";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRegionStateCorrectnessLogEvent regionStateNearByHome](self, "regionStateNearByHome")}];
  v17[5] = v8;
  v16[6] = @"regionStateUnknown_INT";
  if ([(HMDRegionStateCorrectnessLogEvent *)self regionStateUnknown])
  {
    v9 = &unk_283E72BC0;
  }

  else
  {
    v9 = &unk_283E72BD8;
  }

  v17[6] = v9;
  v16[7] = @"regionStateUnknown_Bool";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRegionStateCorrectnessLogEvent regionStateUnknown](self, "regionStateUnknown")}];
  v17[7] = v10;
  v16[8] = @"isStateCorrect_INT";
  if ([(HMDRegionStateCorrectnessLogEvent *)self isStateCorrect])
  {
    v11 = &unk_283E72BC0;
  }

  else
  {
    v11 = &unk_283E72BD8;
  }

  v17[8] = v11;
  v16[9] = @"isStateCorrect_Bool";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRegionStateCorrectnessLogEvent isStateCorrect](self, "isStateCorrect")}];
  v17[9] = v12;
  v16[10] = @"isStateIncorrect_INT";
  if ([(HMDRegionStateCorrectnessLogEvent *)self isStateCorrect])
  {
    v13 = &unk_283E72BD8;
  }

  else
  {
    v13 = &unk_283E72BC0;
  }

  v17[10] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:11];

  return v14;
}

- (HMDRegionStateCorrectnessLogEvent)initWithReason:(unint64_t)reason firstAccessoryReachable:(BOOL)reachable regionStateAtHome:(int64_t)home regionStateNearByHome:(int64_t)byHome isStateCorrect:(BOOL)correct
{
  v14.receiver = self;
  v14.super_class = HMDRegionStateCorrectnessLogEvent;
  result = [(HMMLogEvent *)&v14 init];
  if (result)
  {
    if (home)
    {
      v12 = byHome == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = v12;
    result->_firstAccessoryReachable = reachable;
    result->_regionStateAtHome = home == 1;
    result->_regionStateNearByHome = byHome == 1;
    result->_regionStateUnknown = v13;
    result->_isStateCorrect = correct;
  }

  return result;
}

+ (id)updateWithRegion:(int64_t)region nearbyHome:(int64_t)home accessoryReachable:(BOOL)reachable
{
  if (region == 1 && home == 1)
  {
    goto LABEL_3;
  }

  if ((region != 1 || home != 2) && (region != 1 || home))
  {
    if (region == 2 && (home - 1) < 2)
    {
LABEL_3:
      v5 = 1;
      goto LABEL_9;
    }

    if ((region != 2 || home) && (region || home != 1))
    {
      if (region)
      {
        v8 = 0;
      }

      else
      {
        v8 = home == 2;
      }

      v5 = !v8 && (home | region) == 0;
      goto LABEL_9;
    }
  }

  v5 = 0;
LABEL_9:
  v6 = [[HMDRegionStateCorrectnessLogEvent alloc] initWithReason:1 firstAccessoryReachable:reachable regionStateAtHome:region regionStateNearByHome:home isStateCorrect:v5];

  return v6;
}

+ (id)updateWithFirstAccessory:(int64_t)accessory nearbyHome:(int64_t)home
{
  if (accessory == 1 && home == 1)
  {
    goto LABEL_3;
  }

  if ((accessory != 1 || home != 2) && (accessory != 1 || home))
  {
    if (accessory == 2 && home == 1)
    {
LABEL_3:
      v4 = 1;
      goto LABEL_9;
    }

    v8 = home == 2 || home == 0;
    if ((accessory != 2 || !v8) && (accessory || home != 1))
    {
      if (accessory)
      {
        v9 = 0;
      }

      else
      {
        v9 = home == 2;
      }

      v4 = !v9 && (home | accessory) == 0;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  v5 = [[HMDRegionStateCorrectnessLogEvent alloc] initWithReason:0 firstAccessoryReachable:1 regionStateAtHome:accessory regionStateNearByHome:home isStateCorrect:v4];

  return v5;
}

@end