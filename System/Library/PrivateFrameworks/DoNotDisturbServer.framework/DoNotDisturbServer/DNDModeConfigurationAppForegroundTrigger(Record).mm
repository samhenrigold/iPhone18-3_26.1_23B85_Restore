@interface DNDModeConfigurationAppForegroundTrigger(Record)
+ (uint64_t)newWithDictionaryRepresentation:()Record context:;
- (id)dictionaryRepresentationWithContext:()Record;
@end

@implementation DNDModeConfigurationAppForegroundTrigger(Record)

+ (uint64_t)newWithDictionaryRepresentation:()Record context:
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 bs_safeDictionaryForKey:@"applicationIdentifier"];
  if (v7)
  {
    v8 = [MEMORY[0x277D058C8] newWithDictionaryRepresentation:v7 context:v5];
    applicationIdentifierMapper = [v5 applicationIdentifierMapper];
    v10 = [applicationIdentifierMapper applicationIdentifierForFileWithSourceApplicationIdentifier:v8];
  }

  else
  {
    v8 = [v6 bs_safeStringForKey:@"bundleIdentifier"];
    v10 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v8 platform:0];
  }

  v11 = [v6 bs_safeNumberForKey:@"enabledSetting"];

  unsignedIntegerValue = [v11 unsignedIntegerValue];
  v13 = [objc_alloc(MEMORY[0x277D05998]) initWithApplicationIdentifier:v10 enabledSetting:unsignedIntegerValue];

  return v13;
}

- (id)dictionaryRepresentationWithContext:()Record
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  destination = [v4 destination];
  if (!destination)
  {
    applicationIdentifierMapper = [v4 applicationIdentifierMapper];
    applicationIdentifier = [self applicationIdentifier];
    v8 = [applicationIdentifierMapper applicationIdentifierForSyncWithSourceApplicationIdentifier:applicationIdentifier];
    goto LABEL_5;
  }

  if (destination == 1)
  {
    applicationIdentifierMapper = [v4 applicationIdentifierMapper];
    applicationIdentifier = [self applicationIdentifier];
    v8 = [applicationIdentifierMapper applicationIdentifierForFileWithSourceApplicationIdentifier:applicationIdentifier];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v15[0] = @"DNDModeConfigurationAppForegroundTrigger";
  v14[0] = @"class";
  v14[1] = @"applicationIdentifier";
  v10 = [v9 dictionaryRepresentationWithContext:v4];
  v15[1] = v10;
  v14[2] = @"enabledSetting";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "enabledSetting")}];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

@end