@interface ATXSetAlarmTimeOfDayDataSource
+ (id)medianFrom:(id)from;
+ (id)timeOfDayFromDonations:(id)donations;
- (ATXSetAlarmTimeOfDayDataSource)initWithDevice:(id)device;
- (id)_recentIntentDonationsForBundleId:(id)id limit:(unint64_t)limit;
- (void)alarmTimeOfDay:(id)day;
@end

@implementation ATXSetAlarmTimeOfDayDataSource

- (ATXSetAlarmTimeOfDayDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXSetAlarmTimeOfDayDataSource;
  v6 = [(ATXSetAlarmTimeOfDayDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (id)_recentIntentDonationsForBundleId:(id)id limit:(unint64_t)limit
{
  idCopy = id;
  v6 = objc_opt_new();
  v7 = BiomeLibrary();
  v8 = [v7 App];
  intent = [v8 Intent];
  v10 = [intent atx_publisherWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__ATXSetAlarmTimeOfDayDataSource__recentIntentDonationsForBundleId_limit___block_invoke;
  v21[3] = &unk_278C3D520;
  v22 = idCopy;
  v11 = idCopy;
  v12 = [v10 filterWithIsIncluded:v21];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__ATXSetAlarmTimeOfDayDataSource__recentIntentDonationsForBundleId_limit___block_invoke_12;
  v18[3] = &unk_278C3D548;
  v13 = v6;
  v19 = v13;
  limitCopy = limit;
  v14 = [v12 sinkWithCompletion:&__block_literal_global_12 shouldContinue:v18];

  v15 = v19;
  v16 = v13;

  return v13;
}

uint64_t __74__ATXSetAlarmTimeOfDayDataSource__recentIntentDonationsForBundleId_limit___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 bundleID];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void __74__ATXSetAlarmTimeOfDayDataSource__recentIntentDonationsForBundleId_limit___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __74__ATXSetAlarmTimeOfDayDataSource__recentIntentDonationsForBundleId_limit___block_invoke_2_cold_1(v2, v4);
    }
  }
}

BOOL __74__ATXSetAlarmTimeOfDayDataSource__recentIntentDonationsForBundleId_limit___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 eventBody];
    [v5 addObject:v6];
  }

  v7 = [*(a1 + 32) count] != *(a1 + 40);

  return v7;
}

+ (id)timeOfDayFromDonations:(id)donations
{
  v25 = *MEMORY[0x277D85DE8];
  donationsCopy = donations;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = donationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        intentClass = [v11 intentClass];
        v13 = [intentClass isEqualToString:@"MTCreateAlarmIntent"];

        if (v13)
        {
          v18 = 0;
          v19 = 0;
          v17 = 0;
          absoluteTimestamp = [v11 absoluteTimestamp];
          [currentCalendar getHour:&v19 minute:&v18 second:&v17 nanosecond:0 fromDate:absoluteTimestamp];

          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3600 * v19 + 60 * v18 + v17];
          [v5 addObject:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)medianFrom:(id)from
{
  v9[1] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if ([fromCopy count])
  {
    v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = [fromCopy sortedArrayUsingDescriptors:v5];

    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v6, "count") >> 1}];
  }

  else
  {
    v7 = &unk_2850BA4E8;
  }

  return v7;
}

- (void)alarmTimeOfDay:(id)day
{
  v19 = *MEMORY[0x277D85DE8];
  dayCopy = day;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA3B0))
  {
    v5 = [(ATXSetAlarmTimeOfDayDataSource *)self _recentIntentDonationsForBundleId:@"com.apple.mobiletimer" limit:20];
    v6 = [ATXSetAlarmTimeOfDayDataSource timeOfDayFromDonations:v5];
    v7 = [ATXSetAlarmTimeOfDayDataSource medianFrom:v6];
    [v7 floatValue];
    v9 = v8;
    [v7 floatValue];
    v11 = v10;
    v12 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = 134218496;
      v14 = vcvtms_u32_f32(v9 / 3600.0);
      v15 = 2048;
      v16 = vcvtms_u32_f32((v11 - (3600 * v14)) / 60.0);
      v17 = 2048;
      v18 = [v6 count];
      _os_log_debug_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEBUG, "Median time to set alarm: %tu:%02tu (based on %tu donations)", &v13, 0x20u);
    }

    dayCopy[2](dayCopy, v7, 0);
  }

  else
  {
    dayCopy[2](dayCopy, &unk_2850BA4E8, 0);
  }
}

void __74__ATXSetAlarmTimeOfDayDataSource__recentIntentDonationsForBundleId_limit___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "Could not traverse intent stream to find recent intent donations: %@", &v4, 0xCu);
}

@end