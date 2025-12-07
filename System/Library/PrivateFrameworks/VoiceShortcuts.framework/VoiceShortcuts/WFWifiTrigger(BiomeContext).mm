@interface WFWifiTrigger(BiomeContext)
- (id)publisherWithScheduler:()BiomeContext;
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
@end

@implementation WFWifiTrigger(BiomeContext)

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  eventBody = [v8 eventBody];
  if (eventBody && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = getWFTriggersLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315394;
      v30 = "[WFWifiTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
      v31 = 2112;
      v32 = eventBody;
      _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEFAULT, "%s Received WiFi connection event %@ for trigger with setting", &v29, 0x16u);
    }

    starting = [eventBody starting];
    if (starting != [self onConnect] && (v14 = objc_msgSend(eventBody, "starting"), v14 == objc_msgSend(self, "onDisconnect")) || objc_msgSend(self, "selection") == 1 && (objc_msgSend(self, "selectedNetworks"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(eventBody, "SSID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "containsObject:", v16), v16, v15, (v17 & 1) == 0))
    {
      v10[2](v10, 0);
    }

    else
    {
      if ([self onConnect] && (objc_msgSend(self, "runAfterConnectionInterruption") & 1) == 0)
      {
        defaultDatabase = [MEMORY[0x277D7C2F0] defaultDatabase];
        v21 = [defaultDatabase sortedRunEventsForTriggerID:v9];
        descriptors = [v21 descriptors];
        firstObject = [descriptors firstObject];

        if (firstObject)
        {
          v24 = MEMORY[0x277CBEAA8];
          [v8 timestamp];
          v25 = [v24 dateWithTimeIntervalSinceReferenceDate:?];
          date = [firstObject date];
          [v25 timeIntervalSinceDate:date];
          v28 = v27;

          v18 = v28 > 180.0;
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        v18 = 1;
      }

      v10[2](v10, v18);
    }
  }

  else
  {

    v19 = getWFTriggersLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315138;
      v30 = "[WFWifiTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
      _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_DEFAULT, "%s No WiFi event received for trigger; not firing.", &v29, 0xCu);
    }

    v10[2](v10, 0);
  }
}

- (id)publisherWithScheduler:()BiomeContext
{
  v3 = a3;
  v4 = BiomeLibrary();
  device = [v4 Device];
  wireless = [device Wireless];
  wiFi = [wireless WiFi];

  v8 = [wiFi DSLPublisherWithUseCase:@"Automation.Trigger"];
  v9 = [v8 subscribeOn:v3];

  return v9;
}

@end