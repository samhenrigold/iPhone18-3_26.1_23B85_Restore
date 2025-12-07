@interface PLLocaleAgent
+ (id)entryEventForwardDefinitions;
+ (void)load;
- (PLLocaleAgent)init;
- (void)initOperatorDependancies;
- (void)logEventForwardTimeZoneWithTrigger:(id)trigger;
- (void)logTimeZoneEntry:(id)entry;
@end

@implementation PLLocaleAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLLocaleAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v26[1] = *MEMORY[0x277D85DE8];
  v25 = @"TimeZone";
  v23[0] = *MEMORY[0x277D3F4E8];
  v21 = *MEMORY[0x277D3F568];
  v22 = &unk_282C1BF48;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"LocaleId";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v20[0] = commonTypeDict_StringFormat;
  v19[1] = @"CountryCode";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v20[1] = commonTypeDict_StringFormat2;
  v19[2] = @"TimeZoneName";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v20[2] = commonTypeDict_StringFormat3;
  v19[3] = @"TimeZoneIsInDST";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]4 commonTypeDict_BoolFormat];
  v20[3] = commonTypeDict_BoolFormat;
  v19[4] = @"SecondsFromGMT";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v20[4] = commonTypeDict_IntegerFormat;
  v19[5] = @"Trigger";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v20[5] = commonTypeDict_StringFormat4;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v26[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  return v11;
}

- (PLLocaleAgent)init
{
  v3.receiver = self;
  v3.super_class = PLLocaleAgent;
  return [(PLAgent *)&v3 init];
}

- (void)initOperatorDependancies
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_logEventForwardTimeZoneWithTrigger_ name:*MEMORY[0x277CBE780] object:0];
}

- (void)logTimeZoneEntry:(id)entry
{
  entryCopy = entry;
  dictionary = [entryCopy dictionary];
  entryDate = [entryCopy entryDate];
  [(PLOperator *)self logForSubsystem:@"LocaleMetrics" category:@"TimeZone" data:dictionary date:entryDate];

  dictionary2 = [entryCopy dictionary];
  entryDate2 = [entryCopy entryDate];
  [(PLOperator *)self logForSubsystem:@"PPTStorageOperator" category:@"Locale" data:dictionary2 date:entryDate2];

  dictionary3 = [entryCopy dictionary];
  entryDate3 = [entryCopy entryDate];

  [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"Locale" data:dictionary3 date:entryDate3];
}

- (void)logEventForwardTimeZoneWithTrigger:(id)trigger
{
  triggerCopy = trigger;
  [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  [MEMORY[0x277D3F268] resetTimestampFormaterTimezone];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [(PLOperator *)PLLocaleAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"TimeZone"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  v8 = CFPreferencesCopyValue(@"AppleLocale", @"Apple Global Domain", @"mobile", *MEMORY[0x277CBF030]);
  [v7 setObject:v8 forKeyedSubscript:@"LocaleId"];

  [v7 setObject:@"Unavailable" forKeyedSubscript:@"CountryCode"];
  if ([MEMORY[0x277D3F180] liteMode])
  {
    localeIdentifier = [currentLocale localeIdentifier];
    [v7 setObject:localeIdentifier forKeyedSubscript:@"LocaleId"];

    v10 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
    [v7 setObject:v10 forKeyedSubscript:@"CountryCode"];
  }

  name = [systemTimeZone name];
  [v7 setObject:name forKeyedSubscript:@"TimeZoneName"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(systemTimeZone, "isDaylightSavingTime")}];
  [v7 setObject:v12 forKeyedSubscript:@"TimeZoneIsInDST"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(systemTimeZone, "secondsFromGMT")}];
  [v7 setObject:v13 forKeyedSubscript:@"SecondsFromGMT"];

  if (triggerCopy)
  {
    name2 = [triggerCopy name];
    [v7 setObject:name2 forKeyedSubscript:@"Trigger"];
  }

  else
  {
    [v7 setObject:@"powerlog" forKeyedSubscript:@"Trigger"];
  }

  [(PLOperator *)self logEntry:v7];
  [(PLLocaleAgent *)self logTimeZoneEntry:v7];
}

@end