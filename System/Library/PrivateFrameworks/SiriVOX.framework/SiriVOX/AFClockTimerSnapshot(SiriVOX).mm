@interface AFClockTimerSnapshot(SiriVOX)
- (id)svx_notifiedFiringTimers;
@end

@implementation AFClockTimerSnapshot(SiriVOX)

- (id)svx_notifiedFiringTimers
{
  v17 = *MEMORY[0x277D85DE8];
  timersByID = [self timersByID];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  notifiedFiringTimerIDs = [self notifiedFiringTimerIDs];
  v5 = [notifiedFiringTimerIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(notifiedFiringTimerIDs);
        }

        v9 = [timersByID objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          [orderedSet addObject:v9];
        }
      }

      v6 = [notifiedFiringTimerIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [orderedSet copy];

  return v10;
}

@end