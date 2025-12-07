@interface FCTimesOfDayConfiguration
+ (id)defaultConfiguration;
- (FCTimesOfDayConfiguration)initWithDictionary:(id)dictionary;
@end

@implementation FCTimesOfDayConfiguration

- (FCTimesOfDayConfiguration)initWithDictionary:(id)dictionary
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = FCTimesOfDayConfiguration;
  v5 = [(FCTimesOfDayConfiguration *)&v24 init];
  if (v5)
  {
    v6 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"morning", 0);
    v7 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"afternoon", 0);
    v8 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"evening", 0);
    v9 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"night", 0);
    v10 = v6;
    v11 = [[FCTimeOfDayConfiguration alloc] initWithDictionary:v6];
    v12 = v7;
    v13 = [[FCTimeOfDayConfiguration alloc] initWithDictionary:v7];
    v14 = v8;
    v15 = [[FCTimeOfDayConfiguration alloc] initWithDictionary:v8];
    v23 = v9;
    v16 = [[FCTimeOfDayConfiguration alloc] initWithDictionary:v9];
    v17 = v16;
    if (v11 && v13 && v15 && v16)
    {
      objc_storeStrong(&v5->_morningTimeOfDayConfiguration, v11);
      objc_storeStrong(&v5->_afternoonTimeOfDayConfiguration, v13);
      objc_storeStrong(&v5->_eveningTimeOfDayConfiguration, v15);
      objc_storeStrong(&v5->_nightTimeOfDayConfiguration, v17);
      v18 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        v26 = v11;
        v27 = 2114;
        v28 = v13;
        v29 = 2114;
        v30 = v15;
        v31 = 2114;
        v32 = v17;
        _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "Parsed a times of day configuration with morning: %{public}@, afternoon: %{public}@, evening: %{public}@ and night: %{public}@", buf, 0x2Au);
      }

      goto LABEL_21;
    }

    if (v11)
    {
      if (v13)
      {
        v19 = FCDefaultLog;
        v20 = os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v20)
          {
            *buf = 138543362;
            v26 = v17;
            v21 = "Invalid night time of day configuration in %{public}@";
LABEL_19:
            _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
          }
        }

        else if (v20)
        {
          *buf = 138543362;
          v26 = 0;
          v21 = "Invalid evening time of day configuration in %{public}@";
          goto LABEL_19;
        }
      }

      else
      {
        v19 = FCDefaultLog;
        if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v26 = 0;
          v21 = "Invalid afternoon time of day configuration in %{public}@";
          goto LABEL_19;
        }
      }
    }

    else
    {
      v19 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = 0;
        v21 = "Invalid morning time of day configuration in %{public}@";
        goto LABEL_19;
      }
    }

    v5 = 0;
LABEL_21:
  }

  return v5;
}

+ (id)defaultConfiguration
{
  v2 = [[FCTimesOfDayConfiguration alloc] initWithDictionary:&unk_1F2E71A78];

  return v2;
}

@end