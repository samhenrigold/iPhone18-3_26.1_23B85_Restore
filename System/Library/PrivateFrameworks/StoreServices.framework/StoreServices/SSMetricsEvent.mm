@interface SSMetricsEvent
+ (id)_globalCanaryLock;
+ (id)globalEventCanary;
+ (void)setGlobalEventCanary:(id)canary;
- (BOOL)isBlacklistedByConfiguration:(id)configuration;
- (id)_dictionaryRepresentationOfBody;
- (id)allTableEntityPropertiesPermittedByConfiguration:(id)configuration externalValues:(id)values;
@end

@implementation SSMetricsEvent

+ (id)globalEventCanary
{
  _globalCanaryLock = [self _globalCanaryLock];
  [_globalCanaryLock lock];

  v4 = [_globalEventCanary copy];
  _globalCanaryLock2 = [self _globalCanaryLock];
  [_globalCanaryLock2 unlock];

  return v4;
}

+ (id)_globalCanaryLock
{
  if (_globalCanaryLock_onceToken != -1)
  {
    +[SSMetricsEvent _globalCanaryLock];
  }

  v3 = _globalCanaryLock__canaryLock;

  return v3;
}

uint64_t __35__SSMetricsEvent__globalCanaryLock__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v1 = _globalCanaryLock__canaryLock;
  _globalCanaryLock__canaryLock = v0;

  v2 = _globalCanaryLock__canaryLock;

  return [v2 setName:@"com.StoreServices.globalEventCanaryLock"];
}

+ (void)setGlobalEventCanary:(id)canary
{
  v4 = [canary copy];
  _globalCanaryLock = [self _globalCanaryLock];
  [_globalCanaryLock lock];

  v6 = _globalEventCanary;
  _globalEventCanary = v4;

  _globalCanaryLock2 = [self _globalCanaryLock];
  [_globalCanaryLock2 unlock];
}

- (id)allTableEntityPropertiesPermittedByConfiguration:(id)configuration externalValues:(id)values
{
  v69 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  valuesCopy = values;
  v63 = objc_alloc_init(MEMORY[0x1E695DF90]);
  context = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (([configurationCopy disableEventDecoration] & 1) == 0)
  {
    eventFields = [configurationCopy eventFields];
    if ([eventFields count])
    {
      [v8 addEntriesFromDictionary:eventFields];
    }
  }

  _dictionaryRepresentationOfBody = [(SSMetricsEvent *)self _dictionaryRepresentationOfBody];
  if ([_dictionaryRepresentationOfBody count])
  {
    [v8 addEntriesFromDictionary:_dictionaryRepresentationOfBody];
  }

  if (([configurationCopy disableEventDecoration] & 1) == 0 && objc_msgSend(valuesCopy, "count"))
  {
    [v8 addEntriesFromDictionary:valuesCopy];
  }

  blacklistedEventFields = [configurationCopy blacklistedEventFields];
  if ([(SSMetricsEvent *)self isFieldBlacklistEnabled])
  {
    if ([blacklistedEventFields count])
    {
      v12 = [v8 count];
      [v8 removeObjectsForKeys:blacklistedEventFields];
      v13 = [v8 count];
      if (v12 != v13)
      {
        v14 = v13;
        v58 = blacklistedEventFields;
        v60 = valuesCopy;
        v15 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v15)
        {
          v15 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v15 shouldLog];
        if ([v15 shouldLogToDisk])
        {
          LODWORD(v17) = shouldLog | 2;
        }

        else
        {
          LODWORD(v17) = shouldLog;
        }

        oSLogObject = [v15 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          v17 = v17;
        }

        else
        {
          v17 &= 2u;
        }

        if (v17)
        {
          v19 = objc_opt_class();
          v20 = v12 - v14;
          v57 = v19;
          v21 = [v8 objectForKey:@"eventType"];
          v65 = 138412802;
          v66 = v19;
          v67 = 1024;
          *v68 = v20;
          *&v68[4] = 2112;
          *&v68[6] = v21;
          v22 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "[%@] Configuration field-blacklisting trimmed %d fields from event [%@]", &v65, 28);

          if (!v22)
          {
LABEL_25:

            blacklistedEventFields = v58;
            valuesCopy = v60;
            goto LABEL_26;
          }

          oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:4];
          free(v22);
          SSFileLog(v15, @"%@", v23, v24, v25, v26, v27, v28, oSLogObject);
        }

        goto LABEL_25;
      }
    }
  }

LABEL_26:
  if ([v8 count])
  {
    v64 = 0;
    oSLogObject3 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:200 options:0 error:&v64];
    v30 = v64;
    if (oSLogObject3)
    {
      [v63 setObject:oSLogObject3 forKey:@"eventBody"];
LABEL_52:

      goto LABEL_53;
    }

    v59 = blacklistedEventFields;
    v61 = valuesCopy;
    v42 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v42)
    {
      v42 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v42 shouldLog];
    if ([v42 shouldLogToDisk])
    {
      LODWORD(v44) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v44) = shouldLog2;
    }

    oSLogObject2 = [v42 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v44;
    }

    else
    {
      v44 &= 2u;
    }

    if (v44)
    {
      v46 = objc_opt_class();
      v65 = 138412802;
      v66 = v46;
      v67 = 2112;
      *v68 = v30;
      *&v68[8] = 2112;
      *&v68[10] = v8;
      v47 = v46;
      LODWORD(v56) = 32;
      v48 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 0, "[%@] Error creating PLIST: %@ -- Input: %@", &v65, v56);

      if (!v48)
      {
LABEL_51:

        blacklistedEventFields = v59;
        valuesCopy = v61;
        goto LABEL_52;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v48 encoding:4];
      free(v48);
      SSFileLog(v42, @"%@", v49, v50, v51, v52, v53, v54, oSLogObject2);
    }

    goto LABEL_51;
  }

  v30 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v30)
  {
    v30 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v31) = [v30 shouldLog];
  if ([v30 shouldLogToDisk])
  {
    LODWORD(v31) = v31 | 2;
  }

  oSLogObject3 = [v30 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v31;
  }

  else
  {
    v31 &= 2u;
  }

  if (!v31)
  {
    goto LABEL_52;
  }

  v32 = valuesCopy;
  v33 = objc_opt_class();
  v65 = 138412546;
  v66 = v33;
  v67 = 2112;
  *v68 = self;
  v34 = v33;
  LODWORD(v56) = 22;
  v35 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 0, "[%@] No Dictionary Representation for: %@", &v65, v56);

  if (v35)
  {
    oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v35 encoding:4];
    free(v35);
    SSFileLog(v30, @"%@", v36, v37, v38, v39, v40, v41, oSLogObject3);
    valuesCopy = v32;
    goto LABEL_52;
  }

  valuesCopy = v32;
LABEL_53:

  objc_autoreleasePoolPop(context);

  return v63;
}

- (BOOL)isBlacklistedByConfiguration:(id)configuration
{
  configurationCopy = configuration;
  eventType = [(SSMetricsEvent *)self eventType];
  v6 = [configurationCopy isEventTypeBlacklisted:eventType];

  return v6;
}

- (id)_dictionaryRepresentationOfBody
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(SSMetricsEvent *)self appendPropertiesToBody:v3];

  return v3;
}

@end