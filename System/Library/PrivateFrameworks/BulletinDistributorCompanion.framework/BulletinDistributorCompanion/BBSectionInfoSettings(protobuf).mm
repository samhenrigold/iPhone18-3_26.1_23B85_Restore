@interface BBSectionInfoSettings(protobuf)
- (id)blt_protobuf;
- (void)applySectionInfoSettingsFromProtobuf:()protobuf;
@end

@implementation BBSectionInfoSettings(protobuf)

- (void)applySectionInfoSettingsFromProtobuf:()protobuf
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hasAnnounceSetting])
  {
    [self setAnnounceSetting:{objc_msgSend(v4, "announceSetting")}];
  }

  if ([v4 hasScheduledDeliverySetting])
  {
    [self setScheduledDeliverySetting:{objc_msgSend(v4, "scheduledDeliverySetting")}];
  }

  if (![v4 hasMuteAssertion])
  {
    [self setMuteAssertion:0];
    goto LABEL_19;
  }

  muteAssertion = [v4 muteAssertion];
  hasExpirationDate = [muteAssertion hasExpirationDate];

  if (hasExpirationDate)
  {
    v7 = MEMORY[0x277CBEAA8];
    muteAssertion2 = [v4 muteAssertion];
    [muteAssertion2 expirationDate];
    threadsMuteAssertion = [v7 dateWithTimeIntervalSinceReferenceDate:?];

    v10 = [MEMORY[0x277CF3570] sectionMuteAssertionUntilDate:threadsMuteAssertion];
    [self setMuteAssertion:v10];
  }

  else
  {
    muteAssertion3 = [v4 muteAssertion];
    sectionBulletinLists = [muteAssertion3 sectionBulletinLists];
    v13 = [sectionBulletinLists count];

    if (!v13)
    {
      goto LABEL_19;
    }

    threadsMuteAssertion = [MEMORY[0x277CF3590] threadsMuteAssertion];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    muteAssertion4 = [v4 muteAssertion];
    sectionBulletinLists2 = [muteAssertion4 sectionBulletinLists];

    v16 = [sectionBulletinLists2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(sectionBulletinLists2);
          }

          v20 = *(*(&v24 + 1) + 8 * i);
          v21 = MEMORY[0x277CBEAA8];
          [v20 expirationDate];
          v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
          threadID = [v20 threadID];
          [threadsMuteAssertion setMutedUntilDate:v22 forThreadIdentifier:threadID];
        }

        v17 = [sectionBulletinLists2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    [self setMuteAssertion:threadsMuteAssertion];
  }

LABEL_19:
  if ([v4 hasTimeSensitiveSetting])
  {
    [self setTimeSensitiveSetting:{objc_msgSend(v4, "timeSensitiveSetting")}];
  }

  if ([v4 hasUserConfiguredTimeSensitiveSetting])
  {
    [self setUserConfiguredTimeSensitiveSetting:{objc_msgSend(v4, "userConfiguredTimeSensitiveSetting")}];
  }
}

- (id)blt_protobuf
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setAnnounceSetting:{objc_msgSend(self, "announceSetting")}];
  [v3 setTimeSensitiveSetting:{objc_msgSend(self, "timeSensitiveSetting")}];
  [v3 setScheduledDeliverySetting:{objc_msgSend(self, "scheduledDeliverySetting")}];
  muteAssertion = [self muteAssertion];

  if (muteAssertion)
  {
    v5 = objc_opt_new();
    [v3 setMuteAssertion:v5];

    muteAssertion2 = [self muteAssertion];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    muteAssertion3 = [self muteAssertion];
    v9 = muteAssertion3;
    if (isKindOfClass)
    {
      expirationDate = [muteAssertion3 expirationDate];

      [expirationDate timeIntervalSinceReferenceDate];
      v12 = v11;
      muteAssertion4 = [v3 muteAssertion];
      [muteAssertion4 setExpirationDate:v12];
    }

    else
    {
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();

      if (v14)
      {
        muteAssertion5 = [self muteAssertion];
        expirationDateByThreadID = [muteAssertion5 expirationDateByThreadID];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v17 = expirationDateByThreadID;
        v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v28;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v28 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v27 + 1) + 8 * i);
              v23 = objc_opt_new();
              [v23 setThreadID:{v22, v27}];
              v24 = [v17 objectForKeyedSubscript:v22];
              [v24 timeIntervalSinceReferenceDate];
              [v23 setExpirationDate:?];

              muteAssertion6 = [v3 muteAssertion];
              [muteAssertion6 addSectionBulletinList:v23];
            }

            v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v19);
        }
      }
    }
  }

  if ([self hasUserConfiguredTimeSensitiveSetting])
  {
    [v3 setUserConfiguredTimeSensitiveSetting:{objc_msgSend(self, "hasUserConfiguredTimeSensitiveSetting")}];
  }

  return v3;
}

@end