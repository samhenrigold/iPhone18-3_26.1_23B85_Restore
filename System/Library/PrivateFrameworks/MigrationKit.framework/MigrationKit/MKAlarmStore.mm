@interface MKAlarmStore
- (MKAlarmStore)init;
- (id)exportAlarms;
- (void)importWithMKAlarm:(id)alarm completionHandler:(id)handler;
@end

@implementation MKAlarmStore

- (MKAlarmStore)init
{
  v6.receiver = self;
  v6.super_class = MKAlarmStore;
  v2 = [(MKAlarmStore *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mtAlarmManager = v2->_mtAlarmManager;
    v2->_mtAlarmManager = v3;
  }

  return v2;
}

- (id)exportAlarms
{
  v44 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  alarmsSync = [(MTAlarmManager *)self->_mtAlarmManager alarmsSync];
  p_info = &OBJC_METACLASS___MKHex.info;
  v5 = +[MKLog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v36 = [alarmsSync count];
    _os_log_impl(&dword_2592D2000, v5, OS_LOG_TYPE_INFO, "Alarm count %lu on source", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = alarmsSync;
  v30 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v30)
  {
    v7 = *v32;
    v8 = 0x2798DB000uLL;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = objc_alloc_init(*(v8 + 760));
        alarmID = [v10 alarmID];
        uUIDString = [alarmID UUIDString];
        [v11 setAlarmID:uUIDString];

        title = [v10 title];
        [v11 setLabel:title];

        [v11 setHour:{objc_msgSend(v10, "hour")}];
        [v11 setMinute:{objc_msgSend(v10, "minute")}];
        [v11 setRepeatSchedule:{objc_msgSend(v10, "repeatSchedule")}];
        sound = [v10 sound];
        vibrationIdentifier = [sound vibrationIdentifier];

        if (vibrationIdentifier)
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        [v11 setVibrationType:v17];
        [v11 setEnabled:{objc_msgSend(v10, "isEnabled")}];
        [v11 setAllowSnooze:{objc_msgSend(v10, "allowsSnooze")}];
        [array addObject:v11];
        v18 = [p_info + 311 log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          label = [v11 label];
          hour = [v11 hour];
          v21 = v7;
          v22 = array;
          v23 = v8;
          v24 = p_info;
          minute = [v11 minute];
          enabled = [v11 enabled];
          *buf = 138413058;
          v36 = label;
          v37 = 2048;
          v38 = hour;
          v39 = 2048;
          v40 = minute;
          p_info = v24;
          v8 = v23;
          array = v22;
          v7 = v21;
          v41 = 1024;
          v42 = enabled;
          _os_log_impl(&dword_2592D2000, v18, OS_LOG_TYPE_INFO, "Will export Alarm: %@, hour: %lu, minute: %lu, enable status: %d ", buf, 0x26u);
        }
      }

      v30 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v30);
  }

  objc_autoreleasePoolPop(context);

  return array;
}

- (void)importWithMKAlarm:(id)alarm completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = MEMORY[0x277D296F0];
  alarmCopy = alarm;
  v9 = objc_alloc_init(v7);
  label = [alarmCopy label];
  [v9 setTitle:label];

  [v9 setHour:{objc_msgSend(alarmCopy, "hour")}];
  [v9 setMinute:{objc_msgSend(alarmCopy, "minute")}];
  [v9 setRepeatSchedule:{objc_msgSend(alarmCopy, "repeatSchedule")}];
  [v9 setEnabled:{objc_msgSend(alarmCopy, "enabled")}];
  allowSnooze = [alarmCopy allowSnooze];

  [v9 setAllowsSnooze:allowSnooze];
  v12 = +[MKLog log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    title = [v9 title];
    *buf = 138413058;
    v28 = title;
    v29 = 2048;
    hour = [v9 hour];
    v31 = 2048;
    minute = [v9 minute];
    v33 = 1024;
    isEnabled = [v9 isEnabled];
    _os_log_impl(&dword_2592D2000, v12, OS_LOG_TYPE_INFO, "Will import Alarm: %@, hour: %lu, minute: %lu, enable status: %d", buf, 0x26u);
  }

  v14 = [(MTAlarmManager *)self->_mtAlarmManager addAlarm:v9];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __52__MKAlarmStore_importWithMKAlarm_completionHandler___block_invoke;
  v24[3] = &unk_2798DCB78;
  v15 = v9;
  v25 = v15;
  v16 = handlerCopy;
  v26 = v16;
  v17 = [v14 addFailureBlock:v24];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__MKAlarmStore_importWithMKAlarm_completionHandler___block_invoke_5;
  v21[3] = &unk_2798DCBA0;
  v22 = v15;
  v23 = v16;
  v18 = v16;
  v19 = v15;
  v20 = [v14 addSuccessBlock:v21];
}

void __52__MKAlarmStore_importWithMKAlarm_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[MKLog log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) title];
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_2592D2000, v4, OS_LOG_TYPE_INFO, "Alarm Import for %@ failed with error: %@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __52__MKAlarmStore_importWithMKAlarm_completionHandler___block_invoke_5(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = +[MKLog log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) title];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_2592D2000, v2, OS_LOG_TYPE_INFO, "Alarm Import for %@ is successful", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

@end