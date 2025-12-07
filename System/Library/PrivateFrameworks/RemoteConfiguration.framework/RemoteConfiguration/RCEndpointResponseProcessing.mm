@interface RCEndpointResponseProcessing
+ (id)_configurationErrorForErrorDicts:(id)dicts;
+ (void)parseEndpointResponse:(id)response configurationSettings:(id)settings maxAge:(id)age loggingPrefix:(id)prefix completion:(id)completion;
+ (void)parseEndpointResponseDict:(id)dict parsingError:(id)error configurationSettings:(id)settings maxAge:(id)age loggingPrefix:(id)prefix completion:(id)completion;
@end

@implementation RCEndpointResponseProcessing

+ (void)parseEndpointResponse:(id)response configurationSettings:(id)settings maxAge:(id)age loggingPrefix:(id)prefix completion:(id)completion
{
  responseCopy = response;
  settingsCopy = settings;
  ageCopy = age;
  prefixCopy = prefix;
  completionCopy = completion;
  rc_gzipInflate = [responseCopy rc_gzipInflate];
  v18 = rc_gzipInflate;
  if (rc_gzipInflate)
  {
    v19 = rc_gzipInflate;
  }

  else
  {
    v19 = responseCopy;
  }

  v24 = 0;
  v20 = [MEMORY[0x277CBEAC0] rc_dictionaryFromData:v19 error:&v24];
  v21 = v24;
  v22 = v21;
  if (v21)
  {
    v23 = RCSharedLog(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [RCEndpointResponseProcessing parseEndpointResponse:prefixCopy configurationSettings:v22 maxAge:v23 loggingPrefix:? completion:?];
    }
  }

  [self parseEndpointResponseDict:v20 parsingError:v22 configurationSettings:settingsCopy maxAge:ageCopy loggingPrefix:prefixCopy completion:completionCopy];
}

+ (void)parseEndpointResponseDict:(id)dict parsingError:(id)error configurationSettings:(id)settings maxAge:(id)age loggingPrefix:(id)prefix completion:(id)completion
{
  v107 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  errorCopy = error;
  settingsCopy = settings;
  ageCopy = age;
  prefixCopy = prefix;
  completionCopy = completion;
  v19 = completionCopy;
  if (dictCopy)
  {
    v63 = completionCopy;
    v62 = RCJSONDictionaryValue(dictCopy, @"errorWrapper");
    v64 = RCJSONArrayValue(v62, @"errors");
    if ([v64 count])
    {
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __125__RCEndpointResponseProcessing_parseEndpointResponseDict_parsingError_configurationSettings_maxAge_loggingPrefix_completion___block_invoke_2;
      v85[3] = &unk_27822FF10;
      selfCopy = self;
      v86 = v64;
      v20 = v63;
      v87 = v63;
      __125__RCEndpointResponseProcessing_parseEndpointResponseDict_parsingError_configurationSettings_maxAge_loggingPrefix_completion___block_invoke_2(v85);

      v21 = v86;
    }

    else
    {
      v61 = errorCopy;
      v23 = RCJSONDictionaryValue(dictCopy, @"userInfo");
      v74 = RCJSONArrayValue(v23, @"treatmentIds");
      v60 = v23;
      v73 = RCJSONArrayValue(v23, @"segmentSetIds");
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      obj = [settingsCopy requestInfos];
      v75 = [obj countByEnumeratingWithState:&v81 objects:v106 count:16];
      if (v75)
      {
        v71 = *v82;
        v66 = settingsCopy;
        v67 = dictCopy;
        v65 = ageCopy;
        do
        {
          for (i = 0; i != v75; ++i)
          {
            if (*v82 != v71)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v81 + 1) + 8 * i);
            context = objc_autoreleasePoolPush();
            responseKey = [v25 responseKey];
            v27 = RCJSONDictionaryValue(dictCopy, responseKey);

            v28 = RCJSONDictionaryValue(v27, @"configuration");
            if (v28)
            {
              v29 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v28 options:0 error:0];
            }

            else
            {
              v29 = 0;
            }

            v30 = objc_alloc_init(RCConfigurationResource);
            v77 = v25;
            requestCacheKey = [v25 requestCacheKey];
            [(RCConfigurationResource *)v30 setRequestKey:requestCacheKey];

            v80 = v29;
            rc_gzipDeflate = [v29 rc_gzipDeflate];
            [(RCConfigurationResource *)v30 setGzippedConfigurationData:rc_gzipDeflate];

            debugOverrides = [settingsCopy debugOverrides];
            v76 = v28;
            v34 = +[RCUserSegmentationConfiguration userSegmentationConfigurationWithConfigDict:environment:](RCUserSegmentationConfiguration, "userSegmentationConfigurationWithConfigDict:environment:", v28, [debugOverrides debugEnvironment]);
            [(RCConfigurationResource *)v30 setUserSegmentationConfiguration:v34];

            [(RCConfigurationResource *)v30 setTreatmentIDs:v74];
            [(RCConfigurationResource *)v30 setSegmentSetIDs:v73];
            userID = [settingsCopy userID];
            [(RCConfigurationResource *)v30 setUserID:userID];

            storefrontID = [settingsCopy storefrontID];
            [(RCConfigurationResource *)v30 setStorefrontID:storefrontID];

            deviceInfo = [settingsCopy deviceInfo];
            preferredLanguages = [deviceInfo preferredLanguages];
            [(RCConfigurationResource *)v30 setPreferredLanguages:preferredLanguages];

            v39 = RCJSONStringValue(v27, @"id", 0);
            [(RCConfigurationResource *)v30 setConfigurationID:v39];

            v40 = RCJSONStringValue(v27, @"changeTag", 0);
            [(RCConfigurationResource *)v30 setContentHash:v40];

            v78 = v27;
            v41 = RCJSONStringValue(v27, @"lastModified", 0);
            [(RCConfigurationResource *)v30 setLastModifiedString:v41];

            date = [MEMORY[0x277CBEAA8] date];
            [(RCConfigurationResource *)v30 setLastFetchedDate:date];

            [(RCConfigurationResource *)v30 setEndpointMaxAge:ageCopy];
            endpointConfig = [settingsCopy endpointConfig];
            -[RCConfigurationResource setEnvironment:](v30, "setEnvironment:", [endpointConfig environment]);

            v45 = RCSharedLog(v44);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              [(RCConfigurationResource *)v30 configurationID];
              v46 = v70 = i;
              lastModifiedString = [(RCConfigurationResource *)v30 lastModifiedString];
              lastFetchedDate = [(RCConfigurationResource *)v30 lastFetchedDate];
              endpointMaxAge = [(RCConfigurationResource *)v30 endpointMaxAge];
              treatmentIDs = [(RCConfigurationResource *)v30 treatmentIDs];
              rc_description = [treatmentIDs rc_description];
              segmentSetIDs = [(RCConfigurationResource *)v30 segmentSetIDs];
              rc_description2 = [segmentSetIDs rc_description];
              *buf = 138544898;
              v93 = prefixCopy;
              v94 = 2114;
              v95 = v46;
              v96 = 2114;
              v97 = lastModifiedString;
              v98 = 2114;
              v99 = lastFetchedDate;
              v100 = 2112;
              v101 = endpointMaxAge;
              v102 = 2114;
              v103 = rc_description;
              v104 = 2114;
              v105 = rc_description2;
              _os_log_impl(&dword_2179FC000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ endpoint: received configuration with configurationID: %{public}@ lastModified: %{public}@ lastFetched: %{public}@ maxAge: %@ treatmentIDs: %{public}@ segmentSetIDs: %{public}@", buf, 0x48u);

              dictCopy = v67;
              i = v70;

              settingsCopy = v66;
              ageCopy = v65;
            }

            debugOverrides2 = [settingsCopy debugOverrides];
            enableExtraLogs = [debugOverrides2 enableExtraLogs];

            if (enableExtraLogs)
            {
              v57 = RCSharedLog(v56);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                v58 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v80 encoding:4];
                *buf = 138543618;
                v93 = prefixCopy;
                v94 = 2112;
                v95 = v58;
                _os_log_impl(&dword_2179FC000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@ Endpoint JSON response: %@", buf, 0x16u);
              }
            }

            requestCacheKey2 = [v77 requestCacheKey];
            [dictionary setObject:v30 forKeyedSubscript:requestCacheKey2];

            objc_autoreleasePoolPop(context);
          }

          v75 = [obj countByEnumeratingWithState:&v81 objects:v106 count:16];
        }

        while (v75);
      }

      v20 = v63;
      (v63)[2](v63, dictionary, 0);

      v21 = v60;
      errorCopy = v61;
    }

    v22 = v62;
  }

  else
  {
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __125__RCEndpointResponseProcessing_parseEndpointResponseDict_parsingError_configurationSettings_maxAge_loggingPrefix_completion___block_invoke;
    v89[3] = &unk_27822F1A8;
    v90 = errorCopy;
    v91 = v19;
    __125__RCEndpointResponseProcessing_parseEndpointResponseDict_parsingError_configurationSettings_maxAge_loggingPrefix_completion___block_invoke(v89);

    v22 = v90;
    v20 = v19;
  }
}

void __125__RCEndpointResponseProcessing_parseEndpointResponseDict_parsingError_configurationSettings_maxAge_loggingPrefix_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] rc_parsingError];
  }

  v4 = v3;
  (*(*(a1 + 40) + 16))();
}

void __125__RCEndpointResponseProcessing_parseEndpointResponseDict_parsingError_configurationSettings_maxAge_loggingPrefix_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 48) _configurationErrorForErrorDicts:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

+ (id)_configurationErrorForErrorDicts:(id)dicts
{
  v3 = [dicts rc_arrayByTransformingWithBlock:&__block_literal_global_8];
  v4 = [MEMORY[0x277CCA9B8] rc_endpointErrorWithUnderlyingEndpointErrors:v3];

  return v4;
}

+ (void)parseEndpointResponse:(os_log_t)log configurationSettings:maxAge:loggingPrefix:completion:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_2179FC000, log, OS_LOG_TYPE_ERROR, "%{public}@ parseEndpointResponse - JSON parsing failed with error: %{public}@", &v3, 0x16u);
}

@end