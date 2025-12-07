@interface HMAccessoryCollectionSetting(COMeshAlarmAddOn)
- (id)co_alarms;
- (id)co_rawAlarms;
- (void)co_addAlarm:()COMeshAlarmAddOn completionHandler:;
- (void)co_removeAlarm:()COMeshAlarmAddOn completionHandler:;
- (void)co_updateAlarm:()COMeshAlarmAddOn completionHandler:;
@end

@implementation HMAccessoryCollectionSetting(COMeshAlarmAddOn)

- (id)co_alarms
{
  co_mappedAlarms = [self co_mappedAlarms];
  allValues = [co_mappedAlarms allValues];
  v3 = [allValues sortedArrayUsingComparator:&__block_literal_global_0];

  return v3;
}

- (id)co_rawAlarms
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  value = [self value];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [value countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(value);
        }

        _co_alarm = [*(*(&v16 + 1) + 8 * i) _co_alarm];
        v9 = _co_alarm;
        if (_co_alarm)
        {
          alarmID = [_co_alarm alarmID];
          v11 = [v2 objectForKey:alarmID];
          v12 = [v9 COPreferredAlarm:v11];
          [v2 setObject:v12 forKey:alarmID];
        }
      }

      v5 = [value countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  allValues = [v2 allValues];
  v14 = [allValues sortedArrayUsingComparator:&__block_literal_global_0];

  return v14;
}

- (void)co_addAlarm:()COMeshAlarmAddOn completionHandler:
{
  v6 = a4;
  v7 = a3;
  v8 = [[COAlarmOperation alloc] initForAdding:v7 completion:v6];

  [self co_enqueueOperation:v8];
}

- (void)co_updateAlarm:()COMeshAlarmAddOn completionHandler:
{
  v6 = a4;
  v7 = a3;
  v8 = [[COAlarmOperation alloc] initForUpdating:v7 completion:v6];

  [self co_enqueueOperation:v8];
}

- (void)co_removeAlarm:()COMeshAlarmAddOn completionHandler:
{
  v6 = a4;
  v7 = a3;
  v8 = [[COAlarmOperation alloc] initForRemoving:v7 completion:v6];

  [self co_enqueueOperation:v8];
}

@end