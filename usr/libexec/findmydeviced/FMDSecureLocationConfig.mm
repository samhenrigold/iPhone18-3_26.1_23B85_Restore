@interface FMDSecureLocationConfig
- (FMDSecureLocationConfig)init;
- (FMDSecureLocationConfig)initWithName:(id)name values:(id)values;
- (id)_readInternalPreference:(id)preference;
- (void)_initWithDefaults;
- (void)_readValuesFromDictionary:(id)dictionary;
@end

@implementation FMDSecureLocationConfig

- (FMDSecureLocationConfig)init
{
  v5.receiver = self;
  v5.super_class = FMDSecureLocationConfig;
  v2 = [(FMDSecureLocationConfig *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMDSecureLocationConfig *)v2 _initWithDefaults];
  }

  return v3;
}

- (void)_initWithDefaults
{
  objc_storeStrong(&self->_policyName, kFMDSecureLocationModeProactive);
  *&self->_minTimeBetweenPublish = xmmword_1002587F0;
  *&self->_accuracyThreshold = xmmword_1002587E0;
  self->_heartbeatPublish = 1080.0;
  *&self->_onDemandPublishThreshold = xmmword_100258800;
  self->_priority = 2;
  self->_stalenessThreshold = 120.0;
  self->_shouldWakeDevice = 1;
}

- (FMDSecureLocationConfig)initWithName:(id)name values:(id)values
{
  nameCopy = name;
  valuesCopy = values;
  v12.receiver = self;
  v12.super_class = FMDSecureLocationConfig;
  v9 = [(FMDSecureLocationConfig *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(FMDSecureLocationConfig *)v9 _initWithDefaults];
    objc_storeStrong(&v10->_policyName, name);
    [(FMDSecureLocationConfig *)v10 _readValuesFromDictionary:valuesCopy];
  }

  return v10;
}

- (void)_readValuesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"desiredAccuracy"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"slc";
  }

  objc_storeStrong(&self->_desiredAccuracy, v7);

  v8 = [dictionaryCopy objectForKeyedSubscript:@"minTimeBetweenPublish"];
  if (v8)
  {
    v9 = [NSString stringWithFormat:@"%@.%@", self->_policyName, @"minTimeBetweenPublish"];
    v10 = [(FMDSecureLocationConfig *)self _readInternalPreference:v9];
    v11 = v10;
    if (v10)
    {
      v12 = sub_1000029E0(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        policyName = self->_policyName;
        *buf = 138412546;
        v66 = policyName;
        v67 = 2112;
        v68 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SecureLocationConfig: Overriding minTimeBetweenPublish for %@ to %@", buf, 0x16u);
      }

      v14 = v11;
    }

    else
    {
      v14 = v8;
    }

    [v14 doubleValue];
    if (v15 < 0.5)
    {
      v15 = 0.5;
    }

    self->_minTimeBetweenPublish = v15;
  }

  v64 = v8;
  v16 = [dictionaryCopy objectForKeyedSubscript:@"minTimeBetweenVisitPublish"];
  v17 = v16;
  if (v16)
  {
    [v16 doubleValue];
    self->_minTimeBetweenVisitPublish = v18;
  }

  v19 = [dictionaryCopy objectForKeyedSubscript:@"heartbeatPublish"];
  if (v19)
  {
    v20 = [NSString stringWithFormat:@"%@.%@", self->_policyName, @"heartbeatInterval"];
    v21 = [(FMDSecureLocationConfig *)self _readInternalPreference:v20];
    v22 = v21;
    if (v21)
    {
      doubleValue = [v21 doubleValue];
      self->_heartbeatPublish = v24;
      v25 = sub_1000029E0(doubleValue);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_policyName;
        *buf = 138412546;
        v66 = v26;
        v67 = 2112;
        v68 = v22;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "SecureLocationConfig: Overriding heartbeatPublishInterval for %@ to %@", buf, 0x16u);
      }
    }

    else
    {
      [v19 doubleValue];
      self->_heartbeatPublish = v27;
    }
  }

  v28 = [dictionaryCopy objectForKeyedSubscript:@"minDistanceBetweenPublish"];
  if (v28)
  {
    v29 = [NSString stringWithFormat:@"%@.%@", self->_policyName, @"minDistanceBetweenPublish"];
    v30 = [(FMDSecureLocationConfig *)self _readInternalPreference:v29];
    v31 = v30;
    if (v30)
    {
      doubleValue2 = [v30 doubleValue];
      self->_minDistanceBetweenPublish = v33;
      v34 = sub_1000029E0(doubleValue2);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = self->_policyName;
        *buf = 138412546;
        v66 = v35;
        v67 = 2112;
        v68 = v31;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "SecureLocationConfig: Overriding minDistanceBetweenPublish for %@ to %@", buf, 0x16u);
      }
    }

    else
    {
      [v28 doubleValue];
      self->_minDistanceBetweenPublish = v36;
    }
  }

  v37 = [dictionaryCopy objectForKeyedSubscript:@"accuracyThreshold"];
  v38 = v37;
  if (v37)
  {
    [v37 doubleValue];
    self->_accuracyThreshold = v39;
  }

  v63 = v19;
  v40 = [dictionaryCopy objectForKeyedSubscript:@"onDemandThreshold"];
  v41 = v40;
  if (v40)
  {
    [v40 doubleValue];
    self->_onDemandPublishThreshold = v42;
  }

  v43 = [dictionaryCopy objectForKeyedSubscript:@"expirationInterval"];
  if (v43)
  {
    v44 = [NSString stringWithFormat:@"%@.%@", self->_policyName, @"expirationInterval"];
    v45 = [(FMDSecureLocationConfig *)self _readInternalPreference:v44];
    v46 = v45;
    if (v45)
    {
      doubleValue3 = [v45 doubleValue];
      self->_expirationInterval = v48;
      v49 = sub_1000029E0(doubleValue3);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = self->_policyName;
        *buf = 138412546;
        v66 = v50;
        v67 = 2112;
        v68 = v46;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "SecureLocationConfig: Overriding expirationInterval for %@ to %@", buf, 0x16u);
      }

      expirationInterval = self->_expirationInterval;
    }

    else
    {
      [v43 doubleValue];
      self->_expirationInterval = expirationInterval;
    }

    if (expirationInterval < 0.9)
    {
      self->_expirationInterval = 0.9;
    }
  }

  v52 = [dictionaryCopy objectForKeyedSubscript:@"priority"];
  v53 = v52;
  if (v52)
  {
    integerValue = [v52 integerValue];
    self->_priority = integerValue;
    if (integerValue <= 0)
    {
      if ([(NSString *)self->_policyName caseInsensitiveCompare:kFMDSecureLocationModeProactive])
      {
        if ([(NSString *)self->_policyName caseInsensitiveCompare:kFMDSecureLocationModeProactiveShallow])
        {
          v55 = [(NSString *)self->_policyName caseInsensitiveCompare:kFMDSecureLocationModeLive];
          v56 = 2;
          if (v55 == NSOrderedSame)
          {
            v56 = 4;
          }
        }

        else
        {
          v56 = 3;
        }
      }

      else
      {
        v56 = 2;
      }

      self->_priority = v56;
    }
  }

  v57 = [dictionaryCopy objectForKeyedSubscript:@"stalenessThreshold"];
  v58 = v57;
  if (v57)
  {
    [v57 doubleValue];
    self->_stalenessThreshold = v59;
  }

  v60 = [dictionaryCopy objectForKeyedSubscript:@"shouldWakeDevice"];
  v61 = v60;
  if (v60)
  {
    bOOLValue = [v60 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  self->_shouldWakeDevice = bOOLValue;
}

- (id)_readInternalPreference:(id)preference
{
  v3 = [FMPreferencesUtil objectForKey:preference inDomain:kFMDNotBackedUpPrefDomain];
  v4 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v4 isInternalBuild];

  if (isInternalBuild)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

@end