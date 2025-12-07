@interface HDAlarmEventChanges(HDMCNotificationSyncManager)
- (void)hdmc_enumerateNotificationInstructionsFromAnalysisSampleInfo:()HDMCNotificationSyncManager block:;
@end

@implementation HDAlarmEventChanges(HDMCNotificationSyncManager)

- (void)hdmc_enumerateNotificationInstructionsFromAnalysisSampleInfo:()HDMCNotificationSyncManager block:
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    isDeleted = [v6 isDeleted];
    v9 = 0x277D107A0;
    if (!isDeleted)
    {
      v9 = 0x277D107A8;
    }

    v10 = objc_alloc(*v9);
    uUID = [v6 UUID];
    v12 = [v10 initWithUUID:uUID];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    removedEvents = [self removedEvents];
    v14 = [removedEvents countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(removedEvents);
          }

          hdmc_notificationHoldInstruction = [*(*(&v19 + 1) + 8 * v17) hdmc_notificationHoldInstruction];
          v7[2](v7, hdmc_notificationHoldInstruction, v12);

          ++v17;
        }

        while (v15 != v17);
        v15 = [removedEvents countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }
}

@end