@interface RERecentActionNotifier
- (void)performedAction:(id)action;
@end

@implementation RERecentActionNotifier

- (void)performedAction:(id)action
{
  v14[3] = *MEMORY[0x277D85DE8];
  if (action)
  {
    v13[0] = @"RERecentDonatedActionBundleIdentifierKey";
    actionCopy = action;
    donationIdentifier = [actionCopy donationIdentifier];
    dataSource = [donationIdentifier dataSource];
    v14[0] = dataSource;
    v13[1] = @"RERecentDonatedActionIdentifierKey";
    v6 = MEMORY[0x277CCABB0];
    actionTypeIdentifier = [actionCopy actionTypeIdentifier];
    v8 = [v6 numberWithUnsignedLongLong:{objc_msgSend(actionTypeIdentifier, "re_actionIdentifierHashValue")}];
    v14[1] = v8;
    v13[2] = @"RERecentDonatedActionDateKey";
    creationDate = [actionCopy creationDate];

    date = creationDate;
    if (!creationDate)
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v14[2] = date;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    if (!creationDate)
    {
    }

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"RERecentDonatedActionWasPerformedNotification" object:0 userInfo:v11];
  }
}

@end