@interface WFHealthUIEvent
+ (id)detailEventWithIssues:(id)issues ssid:(id)ssid securityType:(int64_t)type;
+ (id)noInternetEventWithTestTimes:(int64_t)times didPassTest:(BOOL)test failedVelocityTests:(id)tests ssid:(id)ssid;
+ (id)subtitleEventWithIssues:(id)issues ssid:(id)ssid securityType:(int64_t)type;
+ (id)tapLinkEventWithIssues:(id)issues ssid:(id)ssid securityType:(int64_t)type;
- (WFHealthUIEvent)initWithEventType:(int64_t)type issues:(id)issues ssid:(id)ssid securityType:(int64_t)securityType testTimes:(int64_t)times didPassTest:(BOOL)test failedTests:(id)tests;
- (id)_eventTypeStringForType:(int64_t)type;
- (id)_issuesToJSONString:(id)string;
@end

@implementation WFHealthUIEvent

+ (id)subtitleEventWithIssues:(id)issues ssid:(id)ssid securityType:(int64_t)type
{
  ssidCopy = ssid;
  issuesCopy = issues;
  v9 = [WFHealthUIEvent alloc];
  v10 = [(WFHealthUIEvent *)v9 initWithEventType:1 issues:issuesCopy ssid:ssidCopy securityType:type testTimes:0 didPassTest:0 failedTests:MEMORY[0x277CBEBF8]];

  return v10;
}

+ (id)detailEventWithIssues:(id)issues ssid:(id)ssid securityType:(int64_t)type
{
  ssidCopy = ssid;
  issuesCopy = issues;
  v9 = [WFHealthUIEvent alloc];
  v10 = [(WFHealthUIEvent *)v9 initWithEventType:2 issues:issuesCopy ssid:ssidCopy securityType:type testTimes:0 didPassTest:0 failedTests:MEMORY[0x277CBEBF8]];

  return v10;
}

+ (id)tapLinkEventWithIssues:(id)issues ssid:(id)ssid securityType:(int64_t)type
{
  ssidCopy = ssid;
  issuesCopy = issues;
  v9 = [WFHealthUIEvent alloc];
  v10 = [(WFHealthUIEvent *)v9 initWithEventType:3 issues:issuesCopy ssid:ssidCopy securityType:type testTimes:0 didPassTest:0 failedTests:MEMORY[0x277CBEBF8]];

  return v10;
}

+ (id)noInternetEventWithTestTimes:(int64_t)times didPassTest:(BOOL)test failedVelocityTests:(id)tests ssid:(id)ssid
{
  testCopy = test;
  ssidCopy = ssid;
  testsCopy = tests;
  v11 = [WFHealthUIEvent alloc];
  v12 = MEMORY[0x277CBEB98];
  v13 = [MEMORY[0x277D7B9C0] issueWithType:1];
  v14 = [v12 setWithObject:v13];
  v15 = [(WFHealthUIEvent *)v11 initWithEventType:4 issues:v14 ssid:ssidCopy securityType:-1 testTimes:times didPassTest:testCopy failedTests:testsCopy];

  return v15;
}

- (id)_issuesToJSONString:(id)string
{
  v29 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allObjects = [stringCopy allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        typeString = [*(*(&v20 + 1) + 8 * i) typeString];
        if (typeString)
        {
          [array addObject:typeString];
        }
      }

      v7 = [allObjects countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
  }

  v19 = 0;
  v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:array options:0 error:&v19];
  v12 = v19;
  if (v11)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
  }

  else
  {
    v14 = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(1uLL);
    v16 = v15;
    if (WFCurrentLogLevel(v15, v17) && v14 && os_log_type_enabled(v14, v16))
    {
      *buf = 136315394;
      v25 = "[WFHealthUIEvent _issuesToJSONString:]";
      v26 = 2112;
      v27 = stringCopy;
      _os_log_impl(&dword_273ECD000, v14, v16, "%s: failed to create json from dictionary %@", buf, 0x16u);
    }

    v13 = &stru_2882E4AD8;
  }

  return v13;
}

- (id)_eventTypeStringForType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBE558[type - 1];
  }
}

- (WFHealthUIEvent)initWithEventType:(int64_t)type issues:(id)issues ssid:(id)ssid securityType:(int64_t)securityType testTimes:(int64_t)times didPassTest:(BOOL)test failedTests:(id)tests
{
  testCopy = test;
  v52 = *MEMORY[0x277D85DE8];
  issuesCopy = issues;
  testsCopy = tests;
  v48.receiver = self;
  v48.super_class = WFHealthUIEvent;
  v17 = [(WFHealthUIEvent *)&v48 init];
  if (!v17)
  {
    v33 = 0;
    goto LABEL_15;
  }

  if (!issuesCopy)
  {
    v25 = WFLogForCategory(0);
    v35 = OSLogForWFLogLevel(1uLL);
    v36 = v35;
    if (!WFCurrentLogLevel(v35, v37) || !v25 || !os_log_type_enabled(v25, v36))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v38 = "Missing WFHealthIssues for WFHealthUIEvent";
    goto LABEL_25;
  }

  if (ssid)
  {
    v41 = testsCopy;
    v42 = issuesCopy;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = issuesCopy;
    v19 = [v18 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v44;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v44 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v21 |= [*(*(&v43 + 1) + 8 * i) type];
        }

        v20 = [v18 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v20);
    }

    else
    {
      v21 = 0;
    }

    v49[0] = @"type";
    v24 = [(WFHealthUIEvent *)v17 _eventTypeStringForType:type];
    v50[0] = v24;
    v49[1] = @"issues";
    v25 = [(WFHealthUIEvent *)v17 _issuesToJSONString:v18];
    v50[1] = v25;
    v49[2] = @"issueBitMask";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
    v50[2] = v26;
    v49[3] = @"securityType";
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:securityType];
    v50[3] = v27;
    v49[4] = @"didRunVelocityTests";
    v28 = [MEMORY[0x277CCABB0] numberWithInt:times > 0];
    v50[4] = v28;
    v49[5] = @"didPassVelocityTests";
    v29 = [MEMORY[0x277CCABB0] numberWithBool:testCopy];
    v50[5] = v29;
    v49[6] = @"failedVelocityTests";
    testsCopy = v41;
    numberArrayToJsonString = [v41 numberArrayToJsonString];
    v50[6] = numberArrayToJsonString;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:7];
    eventDictionary = v17->_eventDictionary;
    v17->_eventDictionary = v31;

    issuesCopy = v42;
    goto LABEL_14;
  }

  v25 = WFLogForCategory(0);
  v39 = OSLogForWFLogLevel(1uLL);
  v36 = v39;
  if (WFCurrentLogLevel(v39, v40) && v25 && os_log_type_enabled(v25, v36))
  {
    *buf = 0;
    v38 = "Missing ssid for WFHealthUIEvent";
LABEL_25:
    _os_log_impl(&dword_273ECD000, v25, v36, v38, buf, 2u);
  }

LABEL_26:
  v24 = v17;
  v17 = 0;
LABEL_14:
  v33 = v17;

  v17 = v24;
LABEL_15:

  return v33;
}

@end