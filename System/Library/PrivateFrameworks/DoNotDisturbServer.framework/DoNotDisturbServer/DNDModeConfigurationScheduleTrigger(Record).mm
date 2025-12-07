@interface DNDModeConfigurationScheduleTrigger(Record)
+ (uint64_t)newWithDictionaryRepresentation:()Record context:;
- (id)dictionaryRepresentationWithContext:()Record;
@end

@implementation DNDModeConfigurationScheduleTrigger(Record)

+ (uint64_t)newWithDictionaryRepresentation:()Record context:
{
  v3 = a3;
  v18 = [v3 bs_safeNumberForKey:@"timePeriodStartTimeHour"];
  v4 = [v3 bs_safeNumberForKey:@"timePeriodStartTimeMinute"];
  v5 = [v3 bs_safeNumberForKey:@"timePeriodEndTimeHour"];
  v6 = [v3 bs_safeNumberForKey:@"timePeriodEndTimeMinute"];
  v7 = [v3 bs_safeNumberForKey:@"timePeriodWeekdays"];
  v8 = [v3 bs_safeNumberForKey:@"creationDate"];
  v9 = [v3 bs_safeNumberForKey:@"enabledSetting"];

  unsignedIntegerValue = [v9 unsignedIntegerValue];
  v11 = objc_alloc_init(MEMORY[0x277D05A60]);
  [v11 setHour:{objc_msgSend(v18, "unsignedIntegerValue")}];
  [v11 setMinute:{objc_msgSend(v4, "unsignedIntegerValue")}];
  v12 = objc_alloc_init(MEMORY[0x277D05A60]);
  [v12 setHour:{objc_msgSend(v5, "unsignedIntegerValue")}];
  [v12 setMinute:{objc_msgSend(v6, "unsignedIntegerValue")}];
  v13 = objc_alloc_init(MEMORY[0x277D05A68]);
  [v13 setStartTime:v11];
  [v13 setEndTime:v12];
  [v13 setWeekdays:{objc_msgSend(v7, "integerValue")}];
  v14 = MEMORY[0x277CBEAA8];
  [v8 doubleValue];
  v15 = [v14 dateWithTimeIntervalSince1970:?];
  v16 = [objc_alloc(MEMORY[0x277D059C0]) initWithTimePeriod:v13 creationDate:v15 enabledSetting:unsignedIntegerValue];

  return v16;
}

- (id)dictionaryRepresentationWithContext:()Record
{
  v28[8] = *MEMORY[0x277D85DE8];
  v28[0] = @"DNDModeConfigurationScheduleTrigger";
  v27[0] = @"class";
  v27[1] = @"enabledSetting";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "enabledSetting")}];
  v28[1] = v26;
  v27[2] = @"timePeriodStartTimeHour";
  v2 = MEMORY[0x277CCABB0];
  timePeriod = [self timePeriod];
  startTime = [timePeriod startTime];
  v23 = [v2 numberWithUnsignedInteger:{objc_msgSend(startTime, "hour")}];
  v28[2] = v23;
  v27[3] = @"timePeriodStartTimeMinute";
  v3 = MEMORY[0x277CCABB0];
  timePeriod2 = [self timePeriod];
  startTime2 = [timePeriod2 startTime];
  v20 = [v3 numberWithUnsignedInteger:{objc_msgSend(startTime2, "minute")}];
  v28[3] = v20;
  v27[4] = @"timePeriodEndTimeHour";
  v4 = MEMORY[0x277CCABB0];
  timePeriod3 = [self timePeriod];
  endTime = [timePeriod3 endTime];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(endTime, "hour")}];
  v28[4] = v6;
  v27[5] = @"timePeriodEndTimeMinute";
  v7 = MEMORY[0x277CCABB0];
  timePeriod4 = [self timePeriod];
  endTime2 = [timePeriod4 endTime];
  v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(endTime2, "minute")}];
  v28[5] = v10;
  v27[6] = @"timePeriodWeekdays";
  v11 = MEMORY[0x277CCABB0];
  timePeriod5 = [self timePeriod];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(timePeriod5, "weekdays")}];
  v28[6] = v13;
  v27[7] = @"creationDate";
  v14 = MEMORY[0x277CCABB0];
  creationDate = [self creationDate];
  [creationDate timeIntervalSince1970];
  v16 = [v14 numberWithDouble:?];
  v28[7] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:8];

  return v17;
}

@end