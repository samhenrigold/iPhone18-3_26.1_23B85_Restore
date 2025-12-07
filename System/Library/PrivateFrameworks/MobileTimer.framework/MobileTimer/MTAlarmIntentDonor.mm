@interface MTAlarmIntentDonor
- (MTAlarmIntentDonor)initWithStorage:(id)storage;
- (void)prepareAlarms;
- (void)source:(id)source didAddAlarms:(id)alarms;
- (void)source:(id)source didRemoveAlarms:(id)alarms;
- (void)source:(id)source didUpdateAlarms:(id)alarms;
@end

@implementation MTAlarmIntentDonor

- (MTAlarmIntentDonor)initWithStorage:(id)storage
{
  v12 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  if (self)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", &v10, 0xCu);
    }

    objc_storeStrong(&self->_storage, storage);
    [(MTAlarmStorage *)self->_storage registerObserver:self];
    v7 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTAlarmIntentDonor.access-queue", +[MTScheduler defaultPriority]);
    serializer = self->_serializer;
    self->_serializer = v7;
  }

  return self;
}

- (void)prepareAlarms
{
  serializer = self->_serializer;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__MTAlarmIntentDonor_prepareAlarms__block_invoke;
  v3[3] = &unk_1E7B0C9D8;
  v3[4] = self;
  [(NAScheduler *)serializer performBlock:v3];
}

void __35__MTAlarmIntentDonor_prepareAlarms__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [*(*(a1 + 32) + 8) allAlarms];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = *(*(a1 + 32) + 16);
        v12 = [v10 copy];
        v13 = [v10 alarmID];
        [v11 setObject:v12 forKey:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)source:(id)source didAddAlarms:(id)alarms
{
  v34 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  alarmsCopy = alarms;
  serializer = self->_serializer;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __42__MTAlarmIntentDonor_source_didAddAlarms___block_invoke;
  v26[3] = &unk_1E7B0C928;
  v9 = alarmsCopy;
  v27 = v9;
  selfCopy = self;
  [(NAScheduler *)serializer performBlock:v26];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [sourceCopy donatesIntent])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v9;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v22 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [MEMORY[0x1E696E880] mt_intentForAlarmCreate:*(*(&v22 + 1) + 8 * i)];
          v15 = MTLogForCategory(3);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            selfCopy2 = self;
            v31 = 2114;
            v32 = v14;
            _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm added - Donating intent: %{public}@", buf, 0x16u);
          }

          v16 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v14 response:0];
          [v16 mtSetIntentDonorFromSource:sourceCopy];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __42__MTAlarmIntentDonor_source_didAddAlarms___block_invoke_5;
          v20[3] = &unk_1E7B0D658;
          v21 = v14;
          v17 = v14;
          [v16 donateInteractionWithCompletion:v20];
        }

        v11 = [obj countByEnumeratingWithState:&v22 objects:v33 count:16];
      }

      while (v11);
    }

    v9 = v18;
  }
}

void __42__MTAlarmIntentDonor_source_didAddAlarms___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = *(*(a1 + 40) + 16);
        v9 = [v7 copy];
        v10 = [v7 alarmID];
        [v8 setObject:v9 forKey:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void __42__MTAlarmIntentDonor_source_didAddAlarms___block_invoke_5(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__MTAlarmIntentDonor_source_didAddAlarms___block_invoke_5_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%@ donated successfully", &v7, 0xCu);
  }
}

- (void)source:(id)source didUpdateAlarms:(id)alarms
{
  sourceCopy = source;
  alarmsCopy = alarms;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [sourceCopy donatesIntent])
  {
    serializer = self->_serializer;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke;
    v9[3] = &unk_1E7B0C9A0;
    v10 = alarmsCopy;
    selfCopy = self;
    v12 = sourceCopy;
    [(NAScheduler *)serializer performBlock:v9];
  }
}

void __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v37;
    v28 = @"MTAlarmSleepScheduleKey";
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v37 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v36 + 1) + 8 * i);
        v7 = *(*(a1 + 40) + 16);
        v8 = [v6 alarmID];
        v9 = [v7 objectForKey:v8];

        if (v9)
        {
          v10 = [MTChangeSet changeSetWithChangesFromObject:v9 toObject:v6];
          if ([v10 hasChangeForProperty:@"MTAlarmLastModifiedDate"])
          {
            v11 = [v10 changes];
            if ([v11 count] == 2 && (objc_msgSend(v10, "hasChangeForProperty:", @"MTAlarmEnabled") & 1) != 0)
            {
              v12 = 1;
            }

            else
            {
              v13 = [v10 changes];
              if ([v13 count] == 3 && objc_msgSend(v10, "hasChangeForProperty:", @"MTAlarmEnabled"))
              {
                v12 = [v10 hasChangeForProperty:v28];
              }

              else
              {
                v12 = 0;
              }
            }

            if (([v10 hasChangeForProperty:@"MTAlarmHour"] & 1) != 0 || (objc_msgSend(v10, "hasChangeForProperty:", @"MTAlarmMinute") & 1) != 0 || objc_msgSend(v10, "hasChangeForProperty:", @"MTAlarmTitle"))
            {

              v14 = MEMORY[0x1E696E880];
              v34[0] = MEMORY[0x1E69E9820];
              v34[1] = 3221225472;
              v34[2] = __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_2;
              v34[3] = &unk_1E7B0DD70;
              v15 = *(a1 + 48);
              v34[4] = *(a1 + 40);
              v34[5] = v6;
              v35 = v15;
              [v14 mt_deleteDonationsForAlarm:v6 completion:v34];

              if (v12)
              {
                goto LABEL_21;
              }
            }

            else
            {

              if (v12)
              {
LABEL_21:
                if ([v6 isEnabled])
                {
                  [MEMORY[0x1E696E880] mt_intentForAlarmEnable:v6];
                }

                else
                {
                  [MEMORY[0x1E696E880] mt_intentForAlarmDisable:v6];
                }
                v16 = ;
                v17 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v16 response:0];
                [v17 mtSetIntentDonorFromSource:*(a1 + 48)];
                v18 = [v6 alarmIDString];
                [v17 setGroupIdentifier:v18];

                v32[0] = MEMORY[0x1E69E9820];
                v32[1] = 3221225472;
                v32[2] = __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_9;
                v32[3] = &unk_1E7B0D658;
                v33 = v16;
                v19 = v16;
                [v17 donateInteractionWithCompletion:v32];
                v20 = &v33;
                goto LABEL_29;
              }
            }
          }

          else
          {
          }
        }

        v21 = [MEMORY[0x1E696E880] mt_intentForAlarmUpdate:v6];
        v22 = MTLogForCategory(3);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a1 + 40);
          *buf = 138543618;
          v41 = v23;
          v42 = 2114;
          v43 = v21;
          _os_log_impl(&dword_1B1F9F000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Alarm updated - Donating intent: %{public}@", buf, 0x16u);
        }

        v17 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v21 response:0];
        [v17 mtSetIntentDonorFromSource:*(a1 + 48)];
        v24 = [v6 alarmIDString];
        [v17 setGroupIdentifier:v24];

        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_10;
        v30[3] = &unk_1E7B0D658;
        v31 = v21;
        v19 = v21;
        [v17 donateInteractionWithCompletion:v30];
        v20 = &v31;
LABEL_29:

        v25 = *(*(a1 + 40) + 16);
        v26 = [v6 copy];
        v27 = [v6 alarmID];
        [v25 setObject:v26 forKey:v27];
      }

      v3 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v3);
  }
}

void __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) alarmIDString];
      *buf = 138543618;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Interactions for updated alarm %@ deleted successfully", buf, 0x16u);
    }

    v8 = [MEMORY[0x1E696E880] mt_intentForAlarmCreate:*(a1 + 40)];
    v9 = MTLogForCategory(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Updated alarm - Donating intent: %{public}@", buf, 0x16u);
    }

    v5 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v8 response:0];
    [v5 mtSetIntentDonorFromSource:*(a1 + 48)];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_8;
    v12[3] = &unk_1E7B0D148;
    v12[4] = *(a1 + 32);
    v13 = v8;
    v11 = v8;
    [v5 donateInteractionWithCompletion:v12];
  }
}

void __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_8(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__MTAlarmIntentDonor_source_didAddAlarms___block_invoke_5_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Updated Alarm %@ donated successfully", &v8, 0x16u);
  }
}

void __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_9(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_9_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%@ donated successfully", &v7, 0xCu);
  }
}

void __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_10(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__MTAlarmIntentDonor_source_didUpdateAlarms___block_invoke_10_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%@ donated successfully", &v7, 0xCu);
  }
}

- (void)source:(id)source didRemoveAlarms:(id)alarms
{
  alarmsCopy = alarms;
  serializer = self->_serializer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__MTAlarmIntentDonor_source_didRemoveAlarms___block_invoke;
  v8[3] = &unk_1E7B0C928;
  v9 = alarmsCopy;
  selfCopy = self;
  v7 = alarmsCopy;
  [(NAScheduler *)serializer performBlock:v8];
}

void __45__MTAlarmIntentDonor_source_didRemoveAlarms___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = *(*(a1 + 40) + 16);
        v8 = [v6 alarmID];
        [v7 removeObjectForKey:v8];

        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __45__MTAlarmIntentDonor_source_didRemoveAlarms___block_invoke_2;
        v10[3] = &unk_1E7B0D658;
        v10[4] = v6;
        [MEMORY[0x1E696E880] mt_deleteDonationsForAlarm:v6 completion:v10];
      }

      v3 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }
}

void __45__MTAlarmIntentDonor_source_didRemoveAlarms___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__MTAlarmIntentDonor_source_didRemoveAlarms___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) alarmIDString];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "Interactions for %@ deleted successfully", &v7, 0xCu);
  }
}

@end