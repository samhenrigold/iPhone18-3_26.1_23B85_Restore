@interface PLBatteryUIResponseTypeChargingIntervals
- (id)result;
- (void)configure:(id)configure;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeChargingIntervals

- (void)configure:(id)configure
{
  v31[2] = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  v5 = [configureCopy objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [configureCopy objectForKeyedSubscript:@"end"];

  [v8 doubleValue];
  v10 = v9;

  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  [(PLBatteryUIResponseTypeChargingIntervals *)self setStart:v11];

  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  [(PLBatteryUIResponseTypeChargingIntervals *)self setEnd:v12];

  start = [(PLBatteryUIResponseTypeChargingIntervals *)self start];
  v14 = [(PLBatteryUIResponseTypeChargingIntervals *)self end];
  [start timeIntervalSince1970];
  v16 = v15;
  [v14 timeIntervalSince1970];
  v18 = v17 - v16;

  v19 = objc_alloc(MEMORY[0x277D3F260]);
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  v21 = [v19 initWithKey:@"timestamp" withValue:v20 withComparisonOperation:5];

  v22 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Level" withValue:&unk_287145C10 withComparisonOperation:3];
  v23 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BatteryUI"];
  responderService = [(PLBatteryUIResponseTypeChargingIntervals *)self responderService];
  v25 = objc_msgSend_storage(responderService);
  v31[0] = v21;
  v31[1] = v22;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v27 = [v25 lastEntryForKey:v23 withComparisons:v26 isSingleton:0];
  [(PLBatteryUIResponseTypeChargingIntervals *)self setLastBattEntry:v27];

  responderService2 = [(PLBatteryUIResponseTypeChargingIntervals *)self responderService];
  v29 = objc_msgSend_storage(responderService2);
  v30 = [v29 entriesForKey:v23 inTimeRange:0 withFilters:{v16, v18}];
  [(PLBatteryUIResponseTypeChargingIntervals *)self setBattEntries:v30];
}

- (void)run
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [self objectAtIndexedSubscript:0];
  v5 = [self objectAtIndexedSubscript:1];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "Capped open charging interval: [%@ %@]", &v6, 0x16u);
}

- (id)result
{
  [(PLBatteryUIResponseTypeChargingIntervals *)self setBattEntries:0];
  [(PLBatteryUIResponseTypeChargingIntervals *)self setLastBattEntry:0];

  return [(PLBatteryUIResponseTypeChargingIntervals *)self resultArray];
}

@end