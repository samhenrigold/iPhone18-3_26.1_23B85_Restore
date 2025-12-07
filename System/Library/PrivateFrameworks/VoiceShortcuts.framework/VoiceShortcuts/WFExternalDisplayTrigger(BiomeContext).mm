@interface WFExternalDisplayTrigger(BiomeContext)
- (id)publisherWithScheduler:()BiomeContext;
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
@end

@implementation WFExternalDisplayTrigger(BiomeContext)

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a5;
  eventBody = [a3 eventBody];
  if (eventBody && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    starting = [eventBody starting];
    if (starting == [self onConnect])
    {
      v11 = 1;
    }

    else
    {
      starting2 = [eventBody starting];
      v11 = starting2 ^ [self onDisconnect];
    }

    v7[2](v7, v11);
  }

  else
  {

    v12 = getWFTriggersLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[WFExternalDisplayTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
      _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEFAULT, "%s No display event received for trigger; not firing.", &v13, 0xCu);
    }

    v7[2](v7, 0);
  }
}

- (id)publisherWithScheduler:()BiomeContext
{
  v3 = a3;
  v4 = BiomeLibrary();
  springBoard = [v4 SpringBoard];
  externalDisplay = [springBoard ExternalDisplay];
  displayConnected = [externalDisplay DisplayConnected];

  v8 = [displayConnected DSLPublisherWithUseCase:@"Automation.Trigger"];
  v9 = [v8 subscribeOn:v3];

  return v9;
}

@end