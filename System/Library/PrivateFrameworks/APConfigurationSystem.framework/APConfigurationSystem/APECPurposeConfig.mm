@interface APECPurposeConfig
+ (Class)_classForPurpose:(int64_t)purpose;
+ (id)purposeConfig:(int64_t)config;
@end

@implementation APECPurposeConfig

+ (id)purposeConfig:(int64_t)config
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend__classForPurpose_(self, a2, config);
  if (v4)
  {
    v6 = objc_msgSend_configurationForClass_(APConfigurationMediator, v5, v4);
  }

  else
  {
    if (config >= 1)
    {
      v7 = APLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v13 = objc_opt_class();
        v14 = 2048;
        configCopy = config;
        v8 = v13;
        _os_log_impl(&dword_1CA1CE000, v7, OS_LOG_TYPE_ERROR, "[%{private}@]: Error, class not implemented for purpose: %lu.", buf, 0x16u);
      }

      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"Error: Class not implemented for purpose: %lu.", config);
      APSimulateCrash();
    }

    v6 = 0;
  }

  return v6;
}

+ (Class)_classForPurpose:(int64_t)purpose
{
  v4 = 0;
  if (purpose > 8500)
  {
    if (purpose == 8501 || purpose == 8502 || purpose == 8503)
    {
      goto LABEL_9;
    }
  }

  else if (purpose == 100 || purpose == 101 || purpose == 103)
  {
LABEL_9:
    v4 = objc_opt_class();
  }

  return v4;
}

@end