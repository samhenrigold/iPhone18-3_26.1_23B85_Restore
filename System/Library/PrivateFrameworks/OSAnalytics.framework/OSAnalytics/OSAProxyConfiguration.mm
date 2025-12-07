@interface OSAProxyConfiguration
- (BOOL)isConfigEnabled:(id)enabled;
- (BOOL)isFile:(id)file validForSubmission:(id)submission reasonableSize:(int64_t)size to:(id)to internalTypes:(id)types result:(const char *)result;
- (id)assembleMetadataAt:(double)at withOptions:(unsigned int)options;
- (id)description;
- (id)init:(id)init fromMetadata:(id)metadata;
- (id)initFromPath:(id)path;
- (id)metadata;
@end

@implementation OSAProxyConfiguration

- (id)init:(id)init fromMetadata:(id)metadata
{
  initCopy = init;
  metadataCopy = metadata;
  v50.receiver = self;
  v50.super_class = OSAProxyConfiguration;
  v9 = [(OSAProxyConfiguration *)&v50 init];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = [metadataCopy objectForKeyedSubscript:@"path"];
  logPath = v9->_logPath;
  v9->_logPath = v10;

  objc_storeStrong(&v9->_identifier, init);
  v12 = [metadataCopy objectForKeyedSubscript:@"machine_config"];
  modelCode = v9->_modelCode;
  v9->_modelCode = v12;

  v14 = [metadataCopy objectForKeyedSubscript:@"product_version"];
  productVersion = v9->_productVersion;
  v9->_productVersion = v14;

  v16 = [metadataCopy objectForKeyedSubscript:@"os_train"];
  osTrain = v9->_osTrain;
  v9->_osTrain = v16;

  v18 = [metadataCopy objectForKeyedSubscript:@"target_audience"];
  targetAudience = v9->_targetAudience;
  v9->_targetAudience = v18;

  v20 = [metadataCopy objectForKeyedSubscript:@"os_version"];
  buildVersion = v9->_buildVersion;
  v9->_buildVersion = v20;

  v22 = [metadataCopy objectForKeyedSubscript:@"UI_country_code"];
  uiCountryCode = v9->_uiCountryCode;
  v9->_uiCountryCode = v22;

  v24 = [metadataCopy objectForKeyedSubscript:@"system_ID"];
  systemId = v9->_systemId;
  v9->_systemId = v24;

  v26 = [metadataCopy objectForKeyedSubscript:@"crashreporter_key"];
  crashReporterKey = v9->_crashReporterKey;
  v9->_crashReporterKey = v26;

  v28 = [metadataCopy objectForKeyedSubscript:@"awd_device_ID"];
  awdReporterKey = v9->_awdReporterKey;
  v9->_awdReporterKey = v28;

  v30 = [metadataCopy objectForKeyedSubscript:@"internal_key"];
  internalKey = v9->_internalKey;
  v9->_internalKey = v30;

  v32 = [metadataCopy objectForKeyedSubscript:@"release_type"];
  releaseType = v9->_releaseType;
  v9->_releaseType = v32;

  v34 = [metadataCopy objectForKeyedSubscript:@"SeedGroup"];
  seedGroup = v9->_seedGroup;
  v9->_seedGroup = v34;

  v36 = [metadataCopy objectForKeyedSubscript:@"ExperimentGroup"];
  experimentGroup = v9->_experimentGroup;
  v9->_experimentGroup = v36;

  v38 = [metadataCopy objectForKeyedSubscript:@"AutomatedDeviceGroup"];
  automatedDeviceGroup = v9->_automatedDeviceGroup;
  v9->_automatedDeviceGroup = v38;

  v40 = [metadataCopy objectForKeyedSubscript:@"AutomatedContextURL"];
  automatedContextURL = v9->_automatedContextURL;
  v9->_automatedContextURL = v40;

  v42 = [metadataCopy objectForKeyedSubscript:@"currentTaskingIDByRouting"];
  currentTaskingIDByRouting = v9->_currentTaskingIDByRouting;
  v9->_currentTaskingIDByRouting = v42;

  v44 = [metadataCopy objectForKeyedSubscript:@"isComputeController"];
  v9->_isComputeController = [v44 BOOLValue];

  if (!v9->_osTrain)
  {
    v9->_osTrain = @"<unknown>";
  }

  if (!v9->_targetAudience)
  {
    v9->_targetAudience = @"<unknown>";
  }

  v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v9->_osTrain, v9->_buildVersion];
  productNameVersionBuildString = v9->_productNameVersionBuildString;
  v9->_productNameVersionBuildString = v45;

  if ([(NSString *)v9->_modelCode length]&& [(NSString *)v9->_productVersion length]&& [(NSString *)v9->_buildVersion length]&& [(NSString *)v9->_uiCountryCode length]&& [(NSString *)v9->_crashReporterKey length])
  {
    if ([(NSString *)v9->_releaseType length])
    {
      v47 = v9;
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
LABEL_14:
    v47 = 0;
  }

  v48 = v47;

  return v48;
}

- (id)initFromPath:(id)path
{
  pathCopy = path;
  v5 = MEMORY[0x1E695DF20];
  v6 = [pathCopy stringByAppendingPathComponent:@"deviceMetadata.proxy"];
  v7 = [v5 dictionaryWithContentsOfFile:v6];

  lastPathComponent = [pathCopy lastPathComponent];
  v9 = [(OSAProxyConfiguration *)self init:lastPathComponent fromMetadata:v7];

  if (v9)
  {
    v10 = [pathCopy copy];
    v11 = v9[1];
    v9[1] = v10;
  }

  return v9;
}

- (id)assembleMetadataAt:(double)at withOptions:(unsigned int)options
{
  optionsCopy = options;
  atCopy = at;
  v33[2] = *MEMORY[0x1E69E9840];
  if ((options & 4) != 0)
  {
    at = OSATimeIntervalApproximate(at);
  }

  v7 = OSADateFormat(5u, at);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = MEMORY[0x1E696AD98];
  if ((optionsCopy & 4) != 0)
  {
    atCopy = OSATimeIntervalApproximate(atCopy);
  }

  v10 = [v9 numberWithDouble:atCopy];
  [dictionary setObject:v10 forKey:@"submissionTime"];

  [dictionary setObject:v7 forKey:@"submissionTimeISO"];
  releaseType = [(OSAProxyConfiguration *)self releaseType];
  [dictionary setValue:releaseType forKey:@"release_type"];

  modelCode = [(OSAProxyConfiguration *)self modelCode];
  [dictionary setValue:modelCode forKey:@"machine_config"];

  automatedDeviceGroup = [(OSAProxyConfiguration *)self automatedDeviceGroup];
  [dictionary setValue:automatedDeviceGroup forKey:@"AutomatedDeviceGroup"];

  automatedContextURL = [(OSAProxyConfiguration *)self automatedContextURL];
  [dictionary setValue:automatedContextURL forKey:@"AutomatedContextURL"];

  seedGroup = [(OSAProxyConfiguration *)self seedGroup];
  [dictionary setValue:seedGroup forKey:@"SeedGroup"];

  experimentGroup = [(OSAProxyConfiguration *)self experimentGroup];
  [dictionary setValue:experimentGroup forKey:@"ExperimentGroup"];

  internalKey = [(OSAProxyConfiguration *)self internalKey];
  [dictionary setValue:internalKey forKey:@"internal_key"];

  if ([(OSAProxyConfiguration *)self isComputeController])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isComputeController"];
  }

  if ([(OSAProxyConfiguration *)self isInDeviceRecoveryEnvironment])
  {
    recoveryModeReason = [(OSAProxyConfiguration *)self recoveryModeReason];
    [dictionary setObject:recoveryModeReason forKeyedSubscript:@"submission_from_recovery_mode_with_reason"];
  }

  if (optionsCopy)
  {
    [dictionary setValue:0 forKey:@"crashreporter_key"];
    if ((optionsCopy & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    crashReporterKey = [(OSAProxyConfiguration *)self crashReporterKey];
    [dictionary setValue:crashReporterKey forKey:@"crashreporter_key"];

    if ((optionsCopy & 2) != 0)
    {
LABEL_11:
      [dictionary setValue:0 forKey:@"system_ID"];
      goto LABEL_14;
    }
  }

  systemId = [(OSAProxyConfiguration *)self systemId];
  [dictionary setValue:systemId forKey:@"system_ID"];

LABEL_14:
  if (![(OSAProxyConfiguration *)self isProxy])
  {
    goto LABEL_23;
  }

  v21 = +[OSASystemConfiguration sharedInstance];
  v32[0] = @"os_version";
  productNameVersionBuildString = [v21 productNameVersionBuildString];
  v32[1] = @"machine_config";
  v33[0] = productNameVersionBuildString;
  modelCode2 = [v21 modelCode];
  v33[1] = modelCode2;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v25 = [v24 mutableCopy];

  if ([v21 appleInternal])
  {
    crashReporterKey2 = [v21 crashReporterKey];
    [v25 setObject:crashReporterKey2 forKey:@"crashreporter_key"];

    automatedDeviceGroup2 = [v21 automatedDeviceGroup];
    [v25 setValue:automatedDeviceGroup2 forKey:@"AutomatedDeviceGroup"];

    internalKey2 = [v21 internalKey];
    v29 = @"internal_key";
LABEL_19:
    [v25 setValue:internalKey2 forKey:v29];

    goto LABEL_20;
  }

  if ([v21 factoryDevice])
  {
    internalKey2 = [v21 automatedDeviceGroup];
    v29 = @"AutomatedDeviceGroup";
    goto LABEL_19;
  }

LABEL_20:
  if ([v21 isInDeviceRecoveryEnvironment])
  {
    recoveryModeReason2 = [v21 recoveryModeReason];
    [v25 setObject:recoveryModeReason2 forKeyedSubscript:@"submission_from_recovery_mode_with_reason"];
  }

  [dictionary setValue:v25 forKey:@"proxyingDevice"];

LABEL_23:

  return dictionary;
}

- (id)metadata
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  modelCode = [(OSAProxyConfiguration *)self modelCode];
  [dictionary setObject:modelCode forKeyedSubscript:@"machine_config"];

  productVersion = [(OSAProxyConfiguration *)self productVersion];
  [dictionary setObject:productVersion forKeyedSubscript:@"product_version"];

  osTrain = [(OSAProxyConfiguration *)self osTrain];
  [dictionary setObject:osTrain forKeyedSubscript:@"os_train"];

  targetAudience = [(OSAProxyConfiguration *)self targetAudience];
  [dictionary setObject:targetAudience forKeyedSubscript:@"target_audience"];

  buildVersion = [(OSAProxyConfiguration *)self buildVersion];
  [dictionary setObject:buildVersion forKeyedSubscript:@"os_version"];

  uiCountryCode = [(OSAProxyConfiguration *)self uiCountryCode];
  [dictionary setObject:uiCountryCode forKeyedSubscript:@"UI_country_code"];

  systemId = [(OSAProxyConfiguration *)self systemId];
  [dictionary setObject:systemId forKeyedSubscript:@"system_ID"];

  crashReporterKey = [(OSAProxyConfiguration *)self crashReporterKey];
  [dictionary setObject:crashReporterKey forKeyedSubscript:@"crashreporter_key"];

  awdReporterKey = [(OSAProxyConfiguration *)self awdReporterKey];
  [dictionary setObject:awdReporterKey forKeyedSubscript:@"awd_device_ID"];

  internalKey = [(OSAProxyConfiguration *)self internalKey];
  [dictionary setObject:internalKey forKeyedSubscript:@"internal_key"];

  releaseType = [(OSAProxyConfiguration *)self releaseType];
  [dictionary setObject:releaseType forKeyedSubscript:@"release_type"];

  if ([(OSAProxyConfiguration *)self isComputeController])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isComputeController"];
  }

  seedGroup = [(OSAProxyConfiguration *)self seedGroup];
  [dictionary setValue:seedGroup forKey:@"SeedGroup"];

  experimentGroup = [(OSAProxyConfiguration *)self experimentGroup];
  [dictionary setValue:experimentGroup forKey:@"ExperimentGroup"];

  automatedDeviceGroup = [(OSAProxyConfiguration *)self automatedDeviceGroup];
  [dictionary setValue:automatedDeviceGroup forKey:@"AutomatedDeviceGroup"];

  automatedContextURL = [(OSAProxyConfiguration *)self automatedContextURL];
  [dictionary setValue:automatedContextURL forKey:@"AutomatedContextURL"];

  currentTaskingIDByRouting = [(OSAProxyConfiguration *)self currentTaskingIDByRouting];
  [dictionary setValue:currentTaskingIDByRouting forKey:@"currentTaskingIDByRouting"];

  return dictionary;
}

- (id)description
{
  v2 = MEMORY[0x1E696ACB0];
  metadata = [(OSAProxyConfiguration *)self metadata];
  v4 = [v2 dataWithJSONObject:metadata options:0 error:0];

  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];

  return v5;
}

- (BOOL)isConfigEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = [enabledCopy objectForKeyedSubscript:@"eOS"];
  if (v4)
  {
    v5 = [enabledCopy objectForKeyedSubscript:@"eOS"];
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)isFile:(id)file validForSubmission:(id)submission reasonableSize:(int64_t)size to:(id)to internalTypes:(id)types result:(const char *)result
{
  v63 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  submissionCopy = submission;
  toCopy = to;
  typesCopy = types;
  if (!result)
  {
    [OSAProxyConfiguration isFile:validForSubmission:reasonableSize:to:internalTypes:result:];
  }

  v18 = typesCopy;
  *result = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [submissionCopy stringValue];

    submissionCopy = stringValue;
  }

  v20 = +[OSASystemConfiguration sharedInstance];
  if ([v20 optInApple])
  {
    LOBYTE(v21) = 1;
  }

  else if ([toCopy isEqualToString:@"ca1"])
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = [toCopy isEqualToString:@"ca1-ohttp"] ^ 1;
  }

  v22 = getxattr([fileCopy UTF8String], "DnUOverride", 0, 0, 0, 0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![submissionCopy length])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v56 = fileCopy;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Logfile '%{public}@' invalid for submission: no type", buf, 0xCu);
    }

    LOBYTE(v26) = 0;
    v27 = "rejected-invalid";
    goto LABEL_19;
  }

  sizeCopy = size;
  selfCopy = self;
  v54 = toCopy;
  v23 = getxattr([fileCopy UTF8String], "DoNotSubmit", 0, 0, 0, 0);
  v24 = +[OSASystemConfiguration sharedInstance];
  if ([v24 appleInternal])
  {
    v25 = [v18 containsObject:submissionCopy];

    if (v25)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = fileCopy;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%@' allowed for submission for testing", buf, 0xCu);
      }

      LOBYTE(v26) = 1;
      toCopy = v54;
      goto LABEL_20;
    }
  }

  else
  {
  }

  v53 = v18;
  v29 = +[OSASystemConfiguration sharedInstance];
  getLogBlacklist = [v29 getLogBlacklist];
  v31 = [getLogBlacklist containsObject:submissionCopy];

  if (!v31)
  {
    toCopy = v54;
    if (v23 >= 1)
    {
      v18 = v53;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v56 = fileCopy;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Logfile '%{public}@' tagged DoNotSubmit", buf, 0xCu);
      }

      LOBYTE(v26) = 0;
      v27 = "rejected-doNotSubmit";
LABEL_19:
      *result = v27;
      goto LABEL_20;
    }

    if (v22 > 0)
    {
      v32 = 1;
    }

    else
    {
      v32 = v21;
    }

    if ((v32 & 1) == 0)
    {
      v18 = v53;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v56 = fileCopy;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Logfile '%{public}@' not submittable on opted out device", buf, 0xCu);
      }

      LOBYTE(v26) = 0;
      v27 = "rejected-optout";
      goto LABEL_19;
    }

    v33 = +[OSASystemConfiguration sharedInstance];
    v34 = [v33 getPropsForLogType:submissionCopy];

    if (!v34)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v56 = fileCopy;
        v57 = 2114;
        v58 = submissionCopy;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%{public}@' invalid for submission: unknown type %{public}@", buf, 0x16u);
      }

      v37 = "rejected-unregistered";
      v18 = v53;
      goto LABEL_79;
    }

    if (![(OSAProxyConfiguration *)selfCopy isConfigEnabled:v34])
    {
      v18 = v53;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v56 = fileCopy;
        v57 = 2114;
        v58 = submissionCopy;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%{public}@' type %{public}@ invalid for platform", buf, 0x16u);
      }

      v37 = "rejected-platform";
      goto LABEL_79;
    }

    if ([v54 isEqualToString:@"<transfer>"])
    {
      v35 = [v34 objectForKeyedSubscript:@"disabled"];
      if (!v35)
      {
        v36 = [v34 objectForKeyedSubscript:@"watchSync"];

        if (!v36)
        {
          goto LABEL_70;
        }

LABEL_60:
        v26 = 1;
LABEL_71:
        v47 = [v34 objectForKeyedSubscript:@"limit"];
        intValue = [v47 intValue];

        if (intValue)
        {
          v49 = intValue;
        }

        else
        {
          v49 = 0x100000;
        }

        if (!v26)
        {
          v18 = v53;
          goto LABEL_80;
        }

        v18 = v53;
        if (v49 >= v51)
        {
LABEL_80:

          goto LABEL_20;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v56 = fileCopy;
          v57 = 2048;
          v58 = v51;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%{public}@' is too large (%lld) for submission", buf, 0x16u);
        }

        v37 = "rejected-size";
LABEL_79:
        LOBYTE(v26) = 0;
        *result = v37;
        goto LABEL_80;
      }
    }

    else
    {
      v38 = [v54 isEqualToString:@"<sync>"];
      v39 = [v34 objectForKeyedSubscript:@"disabled"];
      v35 = v39;
      if (!v38)
      {
        if (v39)
        {
          v40 = 0;
        }

        else
        {
          v42 = +[OSASystemConfiguration sharedInstance];
          if ([v42 appleInternal])
          {
            v40 = 1;
          }

          else
          {
            v44 = [v34 objectForKeyedSubscript:@"gm"];
            v40 = v44 != 0;
          }
        }

        v45 = [v34 objectForKeyedSubscript:@"routing"];
        if (v45)
        {
          v46 = v45;
        }

        else
        {
          v46 = @"da3";
        }

        if (([(__CFString *)v46 isEqualToString:v54]& 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 138544130;
          v56 = fileCopy;
          v57 = 2114;
          v58 = submissionCopy;
          v59 = 2114;
          v60 = v54;
          v61 = 2114;
          v62 = v46;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Warning: Logfile '%{public}@' type %{public}@ routing %{public}@ does not match config %{public}@", buf, 0x2Au);
        }

        if (!v40)
        {
          goto LABEL_70;
        }

        goto LABEL_60;
      }

      if (!v39)
      {
        v41 = +[OSASystemConfiguration sharedInstance];
        if ([v41 appleInternal])
        {

          goto LABEL_60;
        }

        v43 = [v34 objectForKeyedSubscript:@"gm"];

        if (v43)
        {
          goto LABEL_60;
        }

LABEL_70:
        v26 = 0;
        *result = "rejected-config";
        goto LABEL_71;
      }
    }

    goto LABEL_70;
  }

  toCopy = v54;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v56 = fileCopy;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Logfile '%{public}@' blacklisted from submission", buf, 0xCu);
  }

  LOBYTE(v26) = 0;
  *result = "rejected-blacklist";
  v18 = v53;
LABEL_20:

  return v26;
}

@end