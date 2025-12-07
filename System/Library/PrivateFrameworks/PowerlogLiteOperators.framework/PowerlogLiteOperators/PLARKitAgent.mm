@interface PLARKitAgent
+ (id)entryEventForwardDefinitionState;
+ (id)entryEventForwardDefinitions;
+ (void)load;
- (void)initOperatorDependancies;
@end

@implementation PLARKitAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLARKitAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"State";
  v2 = +[PLARKitAgent entryEventForwardDefinitionState];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventForwardDefinitionState
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D3F4E8];
  v10 = *MEMORY[0x277D3F568];
  v11 = &unk_282C1C6A8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v2;
  v12[1] = *MEMORY[0x277D3F540];
  v8 = @"State";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v9 = commonTypeDict_IntegerFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

- (void)initOperatorDependancies
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, logRunStateNotificationReceived, ARSessionDidRunDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    v5 = ARSessionDidPauseDarwinNotification;

    CFNotificationCenterAddObserver(v4, self, logPauseStateNotificationReceived, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

@end