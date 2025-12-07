@interface AFClockAlarmSnapshot(SiriVOX)
- (id)svx_notifiedFiringAlarms;
@end

@implementation AFClockAlarmSnapshot(SiriVOX)

- (id)svx_notifiedFiringAlarms
{
  v17 = *MEMORY[0x277D85DE8];
  alarmsByID = [self alarmsByID];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  notifiedFiringAlarmIDs = [self notifiedFiringAlarmIDs];
  v5 = [notifiedFiringAlarmIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(notifiedFiringAlarmIDs);
        }

        v9 = [alarmsByID objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          [orderedSet addObject:v9];
        }
      }

      v6 = [notifiedFiringAlarmIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [orderedSet copy];

  return v10;
}

@end