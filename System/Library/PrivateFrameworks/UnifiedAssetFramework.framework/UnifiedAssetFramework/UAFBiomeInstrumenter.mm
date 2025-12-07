@interface UAFBiomeInstrumenter
+ (id)_constructBiomeAssetSet:(id)set storeManager:(id)manager;
+ (id)_getBiomeAssetSetStatus:(id)status assetSetId:(id)id entries:(id)entries errorCodes:(id)codes fromPSUS:(BOOL)s;
+ (id)_getBiomeEventDeviceMetadata;
+ (id)_getBiomeStreamForAssetSetStatus:(id)status assetSetId:(id)id entries:(id)entries errorCodes:(id)codes fromPSUS:(BOOL)s assetSetDailyStatusEventType:(unint64_t)type;
+ (id)_getBiomeStreamForScheduledDailyAssetStatus;
+ (id)_getBiomeUAFAssetSet:(id)set assetSetId:(id)id entries:(id)entries errorCodes:(id)codes fromPSUS:(BOOL)s;
+ (id)_getSubscriptionsStatus;
+ (id)defaultDeviceId;
+ (int)_getAssetSource:(id)source;
+ (void)logAssetSetDownloadEvent:(id)event assetSetId:(id)id entries:(id)entries errorCodes:(id)codes fromPSUS:(BOOL)s assetSetDailyStatusEventType:(unint64_t)type;
+ (void)logScheduledDailyAssetStatus;
@end

@implementation UAFBiomeInstrumenter

+ (id)defaultDeviceId
{
  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
  }

  v3 = qword_1ED7D1108;

  return v3;
}

void __39__UAFBiomeInstrumenter_defaultDeviceId__block_invoke()
{
  v0 = +[UAFAssetSetManager defaults];
  v1 = [v0 stringForKey:@"PersistedDeviceId"];
  v2 = qword_1ED7D1108;
  qword_1ED7D1108 = v1;

  if (!qword_1ED7D1108)
  {
    v3 = objc_opt_new();
    v4 = [v3 UUIDString];
    v5 = qword_1ED7D1108;
    qword_1ED7D1108 = v4;

    v6 = +[UAFAssetSetManager defaults];
    [v6 setValue:qword_1ED7D1108 forKey:@"PersistedDeviceId"];

    v7 = +[UAFAssetSetManager defaults];
    [v7 synchronize];
  }
}

+ (id)_getBiomeEventDeviceMetadata
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [UAFCommonUtilities mobileGestaltQuery:@"ProductType"];
  v4 = [UAFCommonUtilities mobileGestaltQuery:@"BuildVersion"];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v6 = objc_alloc(MEMORY[0x1E698EFB8]);
  languageCode = [currentLocale languageCode];
  regionCode = [currentLocale regionCode];
  v9 = [v6 initWithLanguageCode:languageCode countryCode:regionCode];

  v10 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315138;
    v22 = "+[UAFBiomeInstrumenter _getBiomeEventDeviceMetadata]";
    _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Captured device metadata for UAFAssetDailyStatusWithDeviceProperties event", &v21, 0xCu);
  }

  defaultDeviceId = [self defaultDeviceId];
  v12 = MEMORY[0x1E696AD98];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v15 = [v12 numberWithUnsignedLongLong:(v14 * 1000000000.0)];

  v16 = objc_alloc(MEMORY[0x1E698EFB0]);
  v17 = [defaultDeviceId dataUsingEncoding:4];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  v19 = [v16 initWithDeviceId:v17 deviceType:v3 programCode:v18 systemBuild:v4 inputLocale:v9 nanoSecondsSinceLastBoot:v15];

  return v19;
}

+ (void)logScheduledDailyAssetStatus
{
  v14 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() isBiomeAvailable])
  {
    v3 = BiomeLibrary();
    assetDelivery = [v3 AssetDelivery];
    v5 = [assetDelivery UAF];
    dailyStatus = [v5 DailyStatus];

    source = [dailyStatus source];
    _getBiomeEventDeviceMetadata = [self _getBiomeEventDeviceMetadata];
    _getBiomeStreamForScheduledDailyAssetStatus = [self _getBiomeStreamForScheduledDailyAssetStatus];
    v10 = [objc_alloc(MEMORY[0x1E698EB38]) initWithDeviceMetadata:_getBiomeEventDeviceMetadata availableAssetDailyStatus:_getBiomeStreamForScheduledDailyAssetStatus];
    v11 = UAFGetLogCategory(&UAFLogContextInstrumentation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "+[UAFBiomeInstrumenter logScheduledDailyAssetStatus]";
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Using Biome to send scheduled daily status event", &v12, 0xCu);
    }

    [source sendEvent:v10];
  }

  else
  {
    dailyStatus = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(dailyStatus, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "+[UAFBiomeInstrumenter logScheduledDailyAssetStatus]";
      _os_log_error_impl(&dword_1BCF2C000, dailyStatus, OS_LOG_TYPE_ERROR, "%s Can't log daily asset status as this system doesn't support Biome.", &v12, 0xCu);
    }
  }
}

+ (void)logAssetSetDownloadEvent:(id)event assetSetId:(id)id entries:(id)entries errorCodes:(id)codes fromPSUS:(BOOL)s assetSetDailyStatusEventType:(unint64_t)type
{
  sCopy = s;
  v33 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  idCopy = id;
  entriesCopy = entries;
  codesCopy = codes;
  if ([objc_opt_class() isBiomeAvailable])
  {
    v18 = BiomeLibrary();
    assetDelivery = [v18 AssetDelivery];
    [assetDelivery UAF];
    v20 = v28 = idCopy;
    dailyStatus = [v20 DailyStatus];

    idCopy = v28;
    source = [dailyStatus source];
    _getBiomeEventDeviceMetadata = [self _getBiomeEventDeviceMetadata];
    v24 = [self _getBiomeStreamForAssetSetStatus:eventCopy assetSetId:v28 entries:entriesCopy errorCodes:codesCopy fromPSUS:sCopy assetSetDailyStatusEventType:type];
    v25 = [objc_alloc(MEMORY[0x1E698EB38]) initWithDeviceMetadata:_getBiomeEventDeviceMetadata availableAssetDailyStatus:v24];
    v26 = UAFGetLogCategory(&UAFLogContextInstrumentation);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      assetSetIdentifier = [eventCopy assetSetIdentifier];
      *buf = 136315394;
      v30 = "+[UAFBiomeInstrumenter logAssetSetDownloadEvent:assetSetId:entries:errorCodes:fromPSUS:assetSetDailyStatusEventType:]";
      v31 = 2114;
      v32 = assetSetIdentifier;
      _os_log_impl(&dword_1BCF2C000, v26, OS_LOG_TYPE_DEFAULT, "%s Using Biome to send asset set event for :%{public}@", buf, 0x16u);

      idCopy = v28;
    }

    [source sendEvent:v25];
  }

  else
  {
    dailyStatus = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(dailyStatus, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v30 = "+[UAFBiomeInstrumenter logAssetSetDownloadEvent:assetSetId:entries:errorCodes:fromPSUS:assetSetDailyStatusEventType:]";
      _os_log_error_impl(&dword_1BCF2C000, dailyStatus, OS_LOG_TYPE_ERROR, "%s Can't log asset set download event as this system doesn't support Biome.", buf, 0xCu);
    }
  }
}

+ (id)_getBiomeStreamForScheduledDailyAssetStatus
{
  v3 = objc_opt_new();
  _getSubscriptionsStatus = [self _getSubscriptionsStatus];
  if (_getSubscriptionsStatus)
  {
    [v3 addObject:_getSubscriptionsStatus];
  }

  v5 = [objc_alloc(MEMORY[0x1E698EFA8]) initWithAssetSetStatus:v3 statusReason:1];

  return v5;
}

+ (id)_getBiomeStreamForAssetSetStatus:(id)status assetSetId:(id)id entries:(id)entries errorCodes:(id)codes fromPSUS:(BOOL)s assetSetDailyStatusEventType:(unint64_t)type
{
  sCopy = s;
  v14 = type == 4;
  codesCopy = codes;
  entriesCopy = entries;
  idCopy = id;
  statusCopy = status;
  v19 = objc_opt_new();
  v20 = [self _getBiomeAssetSetStatus:statusCopy assetSetId:idCopy entries:entriesCopy errorCodes:codesCopy fromPSUS:sCopy];

  [v19 addObject:v20];
  if (type == 3)
  {
    v21 = 3;
  }

  else
  {
    v21 = (4 * v14);
  }

  v22 = [objc_alloc(MEMORY[0x1E698EFA8]) initWithAssetSetStatus:v19 statusReason:v21];

  return v22;
}

+ (id)_getSubscriptionsStatus
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v3 = +[UAFAssetSetManager getSerialQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__UAFBiomeInstrumenter__getSubscriptionsStatus__block_invoke;
  v6[3] = &unk_1E7FFDDB8;
  v6[4] = &v7;
  v6[5] = self;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __47__UAFBiomeInstrumenter__getSubscriptionsStatus__block_invoke(uint64_t a1)
{
  v165 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = +[UAFSubscriptionStoreManager defaultManager];
  v6 = +[UAFConfigurationManager defaultManager];
  v150 = 0;
  v86 = v5;
  v7 = [v5 getAllSubscriptions:&v150];
  v8 = v150;
  if (v8)
  {
    v9 = UAFGetLogCategory(&UAFLogContextInstrumentation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v153 = "+[UAFBiomeInstrumenter _getSubscriptionsStatus]_block_invoke";
      v154 = 2114;
      v155 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Could not retrieve all subscriptions: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v83 = v3;
    v90 = v7;
    v91 = v2;
    [UAFSubscriptionStoreManager flattenSubscriptions:v7];
    v81 = v111 = v6;
    [v6 applySubscriptions:?];
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v80 = v149 = 0u;
    v10 = [v80 allKeys];
    v11 = [v10 countByEnumeratingWithState:&v146 objects:v164 count:16];
    v85 = a1;
    if (v11)
    {
      v12 = v11;
      v13 = a1;
      v14 = *v147;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v147 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v146 + 1) + 8 * i);
          v17 = [*(v13 + 40) _constructBiomeAssetSet:v16 storeManager:v86];
          if (v17)
          {
            [v83 addObject:v17];
            v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v83, "count") - 1}];
            [v4 setObject:v18 forKeyedSubscript:v16];
          }

          v13 = a1;
        }

        v12 = [v10 countByEnumeratingWithState:&v146 objects:v164 count:16];
      }

      while (v12);
    }

    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v7 = v90;
    obj = [v90 allKeys];
    v87 = [obj countByEnumeratingWithState:&v142 objects:v163 count:16];
    if (v87)
    {
      v84 = *v143;
      do
      {
        v19 = 0;
        do
        {
          if (*v143 != v84)
          {
            objc_enumerationMutation(obj);
          }

          v88 = v19;
          v20 = *(*(&v142 + 1) + 8 * v19);
          v138 = 0u;
          v139 = 0u;
          v140 = 0u;
          v141 = 0u;
          v93 = v20;
          v21 = [v7 objectForKeyedSubscript:?];
          v22 = [v21 allKeys];

          v89 = v22;
          v94 = [v22 countByEnumeratingWithState:&v138 objects:v162 count:16];
          if (v94)
          {
            v92 = *v139;
            do
            {
              v23 = 0;
              do
              {
                if (*v139 != v92)
                {
                  objc_enumerationMutation(v89);
                }

                v96 = v23;
                v24 = *(*(&v138 + 1) + 8 * v23);
                v25 = [v7 objectForKeyedSubscript:v93];
                v95 = v24;
                v26 = [v25 objectForKeyedSubscript:v24];

                v27 = 0x1E695D000uLL;
                v99 = objc_opt_new();
                v134 = 0u;
                v135 = 0u;
                v136 = 0u;
                v137 = 0u;
                v97 = v26;
                v100 = [v97 countByEnumeratingWithState:&v134 objects:v161 count:16];
                if (v100)
                {
                  v98 = *v135;
                  do
                  {
                    v28 = 0;
                    do
                    {
                      if (*v135 != v98)
                      {
                        objc_enumerationMutation(v97);
                      }

                      v101 = v28;
                      v29 = *(*(&v134 + 1) + 8 * v28);
                      v117 = objc_alloc_init(*(v27 + 3952));
                      v30 = objc_opt_new();
                      v130 = 0u;
                      v131 = 0u;
                      v132 = 0u;
                      v133 = 0u;
                      v116 = v29;
                      v105 = [v29 assetSets];
                      v109 = [v105 countByEnumeratingWithState:&v130 objects:v160 count:16];
                      if (v109)
                      {
                        v107 = *v131;
                        do
                        {
                          v31 = 0;
                          do
                          {
                            if (*v131 != v107)
                            {
                              objc_enumerationMutation(v105);
                            }

                            v114 = v31;
                            v32 = *(*(&v130 + 1) + 8 * v31);
                            v33 = [v116 assetSets];
                            v112 = v32;
                            v34 = [v33 objectForKeyedSubscript:v32];

                            v128 = 0u;
                            v129 = 0u;
                            v126 = 0u;
                            v127 = 0u;
                            v35 = v34;
                            v36 = [v35 countByEnumeratingWithState:&v126 objects:v159 count:16];
                            if (v36)
                            {
                              v37 = v36;
                              v38 = *v127;
                              do
                              {
                                for (j = 0; j != v37; ++j)
                                {
                                  if (*v127 != v38)
                                  {
                                    objc_enumerationMutation(v35);
                                  }

                                  v40 = *(*(&v126 + 1) + 8 * j);
                                  v41 = objc_alloc(MEMORY[0x1E698EF90]);
                                  v42 = [v35 objectForKeyedSubscript:v40];
                                  v43 = [v41 initWithUsageName:v40 usageValue:v42];

                                  [v30 addObject:v43];
                                }

                                v37 = [v35 countByEnumeratingWithState:&v126 objects:v159 count:16];
                              }

                              while (v37);
                            }

                            v44 = [v4 objectForKeyedSubscript:v112];

                            if (v44)
                            {
                              v45 = [v4 objectForKeyedSubscript:v112];
                              [v117 addObject:v45];
                            }

                            v31 = v114 + 1;
                          }

                          while (v114 + 1 != v109);
                          v109 = [v105 countByEnumeratingWithState:&v130 objects:v160 count:16];
                        }

                        while (v109);
                      }

                      v46 = objc_opt_new();
                      v122 = 0u;
                      v123 = 0u;
                      v124 = 0u;
                      v125 = 0u;
                      v106 = [v116 usageAliases];
                      v110 = [v106 countByEnumeratingWithState:&v122 objects:v158 count:16];
                      if (v110)
                      {
                        v108 = *v123;
                        v102 = v46;
                        do
                        {
                          for (k = 0; k != v110; ++k)
                          {
                            if (*v123 != v108)
                            {
                              objc_enumerationMutation(v106);
                            }

                            v48 = *(*(&v122 + 1) + 8 * k);
                            v49 = objc_alloc(MEMORY[0x1E698EFA0]);
                            v50 = [v116 usageAliases];
                            v51 = [v50 objectForKeyedSubscript:v48];
                            v52 = [v49 initWithAliasName:v48 aliasValue:v51];

                            v115 = v52;
                            [v46 addObject:v52];
                            v53 = [v116 usageAliases];
                            v54 = [v53 objectForKeyedSubscript:v48];

                            v55 = [v111 getUsageAlias:v48 includeDeprecatedValues:0];
                            if (v55)
                            {
                              v56 = v55;
                              v57 = [v55 values];
                              v58 = [v57 objectForKeyedSubscript:v54];

                              if (!v58)
                              {
                                v59 = UAFGetLogCategory(&UAFLogContextInstrumentation);
                                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 136315650;
                                  v153 = "+[UAFBiomeInstrumenter _getSubscriptionsStatus]_block_invoke";
                                  v154 = 2114;
                                  v155 = v48;
                                  v156 = 2114;
                                  v157 = v54;
                                  _os_log_impl(&dword_1BCF2C000, v59, OS_LOG_TYPE_DEFAULT, "%s Loading deprecated values to process subscription for usage alias %{public}@ with value %{public}@", buf, 0x20u);
                                }

                                v60 = [v111 getUsageAlias:v48 includeDeprecatedValues:1];

                                v56 = v60;
                              }

                              v113 = v56;
                              v61 = [v56 values];
                              v62 = [v61 objectForKeyedSubscript:v54];

                              if ([v62 count])
                              {
                                v120 = 0u;
                                v121 = 0u;
                                v118 = 0u;
                                v119 = 0u;
                                v63 = v62;
                                v64 = [v63 countByEnumeratingWithState:&v118 objects:v151 count:16];
                                if (v64)
                                {
                                  v65 = v64;
                                  v103 = v62;
                                  v104 = v54;
                                  v66 = *v119;
                                  do
                                  {
                                    for (m = 0; m != v65; ++m)
                                    {
                                      if (*v119 != v66)
                                      {
                                        objc_enumerationMutation(v63);
                                      }

                                      v68 = *(*(&v118 + 1) + 8 * m);
                                      v69 = [v4 objectForKeyedSubscript:v68];

                                      if (v69)
                                      {
                                        v70 = [v4 objectForKeyedSubscript:v68];
                                        [v117 addObject:v70];
                                      }
                                    }

                                    v65 = [v63 countByEnumeratingWithState:&v118 objects:v151 count:16];
                                  }

                                  while (v65);
                                  v46 = v102;
                                  v62 = v103;
                                  v54 = v104;
                                }
                              }

                              else
                              {
                                v63 = UAFGetLogCategory(&UAFLogContextInstrumentation);
                                if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136315650;
                                  v153 = "+[UAFBiomeInstrumenter _getSubscriptionsStatus]_block_invoke";
                                  v154 = 2114;
                                  v155 = v48;
                                  v156 = 2114;
                                  v157 = v54;
                                  _os_log_error_impl(&dword_1BCF2C000, v63, OS_LOG_TYPE_ERROR, "%s Could not process subscription for usage alias %{public}@ with value %{public}@", buf, 0x20u);
                                }
                              }

                              v71 = v113;
                            }

                            else
                            {
                              v71 = UAFGetLogCategory(&UAFLogContextInstrumentation);
                              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136315394;
                                v153 = "+[UAFBiomeInstrumenter _getSubscriptionsStatus]_block_invoke";
                                v154 = 2114;
                                v155 = v48;
                                _os_log_error_impl(&dword_1BCF2C000, v71, OS_LOG_TYPE_ERROR, "%s Could not process subscription for usage alias %{public}@", buf, 0x16u);
                              }
                            }
                          }

                          v110 = [v106 countByEnumeratingWithState:&v122 objects:v158 count:16];
                        }

                        while (v110);
                      }

                      v72 = objc_alloc(MEMORY[0x1E698EF88]);
                      v73 = [v116 name];
                      v74 = [v72 initWithSubscriptionName:v73 assetSetIndices:v117 assetSetUsages:v30 usageAliases:v46];

                      [v99 addObject:v74];
                      v28 = v101 + 1;
                      v27 = 0x1E695D000;
                    }

                    while (v101 + 1 != v100);
                    v100 = [v97 countByEnumeratingWithState:&v134 objects:v161 count:16];
                  }

                  while (v100);
                }

                v75 = [objc_alloc(MEMORY[0x1E698EF98]) initWithSubscriberName:v95 subscriptions:v99];
                [v91 addObject:v75];

                v23 = v96 + 1;
                v7 = v90;
              }

              while (v96 + 1 != v94);
              v94 = [v89 countByEnumeratingWithState:&v138 objects:v162 count:16];
            }

            while (v94);
          }

          v19 = v88 + 1;
        }

        while (v88 + 1 != v87);
        v87 = [obj countByEnumeratingWithState:&v142 objects:v163 count:16];
      }

      while (v87);
    }

    v76 = objc_opt_new();
    v3 = v83;
    v2 = v91;
    v77 = [objc_alloc(MEMORY[0x1E698EF80]) initWithUafAssetSets:v83 uafAssetSubscriptions:v91 allAssets:v76];
    v78 = *(*(v85 + 32) + 8);
    v79 = *(v78 + 40);
    *(v78 + 40) = v77;

    v6 = v111;
    v9 = v81;
    v8 = 0;
  }
}

+ (id)_getBiomeAssetSetStatus:(id)status assetSetId:(id)id entries:(id)entries errorCodes:(id)codes fromPSUS:(BOOL)s
{
  sCopy = s;
  v23[1] = *MEMORY[0x1E69E9840];
  codesCopy = codes;
  entriesCopy = entries;
  idCopy = id;
  statusCopy = status;
  v16 = objc_opt_new();
  v17 = objc_opt_new();
  v18 = objc_alloc(MEMORY[0x1E698EF80]);
  v19 = [self _getBiomeUAFAssetSet:statusCopy assetSetId:idCopy entries:entriesCopy errorCodes:codesCopy fromPSUS:sCopy];

  v23[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v21 = [v18 initWithUafAssetSets:v20 uafAssetSubscriptions:v16 allAssets:v17];

  return v21;
}

+ (id)_getBiomeUAFAssetSet:(id)set assetSetId:(id)id entries:(id)entries errorCodes:(id)codes fromPSUS:(BOOL)s
{
  sCopy = s;
  v55 = *MEMORY[0x1E69E9840];
  setCopy = set;
  idCopy = id;
  entriesCopy = entries;
  codesCopy = codes;
  v43 = objc_opt_new();
  v12 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v13 = codesCopy;
  v14 = [v13 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v50;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v50 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [objc_alloc(MEMORY[0x1E698EFC0]) initWithMobileAssetDownloadErrorCode:*(*(&v49 + 1) + 8 * i) timesOccurred:&unk_1F3B731B8];
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v15);
  }

  v36 = v13;
  v37 = v12;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = entriesCopy;
  v44 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v44)
  {
    v42 = *v46;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v46 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v45 + 1) + 8 * j);
        v21 = objc_alloc(MEMORY[0x1E698EF70]);
        fullAssetSelector = [v20 fullAssetSelector];
        assetSpecifier = [fullAssetSelector assetSpecifier];
        fullAssetSelector2 = [v20 fullAssetSelector];
        assetSpecifier2 = [fullAssetSelector2 assetSpecifier];
        fullAssetSelector3 = [v20 fullAssetSelector];
        assetVersion = [fullAssetSelector3 assetVersion];
        localContentURL = [v20 localContentURL];
        absoluteString = [localContentURL absoluteString];
        v30 = [v21 initWithAssetName:assetSpecifier assetSpecifier:assetSpecifier2 assetVersion:assetVersion assetLocale:0 assetSource:4 isAssetPathValid:0 assetPath:absoluteString assetDownloadSizeInBytes:0 assetUnarchivedSizeInBytes:{0, v36}];

        [v43 addObject:v30];
      }

      v44 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v44);
  }

  v31 = objc_alloc(MEMORY[0x1E698EF78]);
  assetSetIdentifier = [setCopy assetSetIdentifier];
  v33 = [MEMORY[0x1E696AD98] numberWithBool:sCopy];
  v34 = [v31 initWithAssetSetName:assetSetIdentifier assets:v43 assetType:0 assetSetId:idCopy audienceId:0 mobileAssetDownloadErrorCodeFrequency:v37 fromPreSoftwareUpdateStaging:v33 expensiveCellularDownloadRequested:0];

  return v34;
}

+ (id)_constructBiomeAssetSet:(id)set storeManager:(id)manager
{
  v89[1] = *MEMORY[0x1E69E9840];
  setCopy = set;
  managerCopy = manager;
  v7 = objc_opt_new();
  v8 = [managerCopy getSystemAssetSetUsages:setCopy];
  v9 = v8;
  if (v8)
  {
    v88 = setCopy;
    v89[0] = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:&v88 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = +[UAFAssetSetManager sharedManager];
  v12 = [v11 retrieveAssetSet:setCopy usages:0];

  if (v12)
  {
    v52 = v9;
    v53 = managerCopy;
    v79 = 0;
    v50 = [v12 assetSetIdForSELF:1 stagedDuringSU:&v79];
    v13 = UAFGetLogCategory(&UAFLogContextInstrumentation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v83 = "+[UAFBiomeInstrumenter _constructBiomeAssetSet:storeManager:]";
      v84 = 2114;
      v85 = setCopy;
      v86 = 1024;
      v87 = v79;
      _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s Emitting daily status scheduled event for asset set %{public}@, pre-staged: %d", buf, 0x1Cu);
    }

    v54 = setCopy;

    v51 = v12;
    autoAssetSet = [v12 autoAssetSet];
    getMAAutoAssetDownloadErrorsSync = [autoAssetSet getMAAutoAssetDownloadErrorsSync];

    v57 = objc_opt_new();
    v55 = getMAAutoAssetDownloadErrorsSync;
    if ([getMAAutoAssetDownloadErrorsSync count])
    {
      v16 = v10;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v17 = getMAAutoAssetDownloadErrorsSync;
      v18 = [v17 countByEnumeratingWithState:&v75 objects:v81 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v76;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v76 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v75 + 1) + 8 * i);
            v23 = objc_alloc(MEMORY[0x1E698EFC0]);
            v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "countForObject:", v22)}];
            v25 = [v23 initWithMobileAssetDownloadErrorCode:v22 timesOccurred:v24];

            [v57 addObject:v25];
          }

          v19 = [v17 countByEnumeratingWithState:&v75 objects:v81 count:16];
        }

        while (v19);
      }

      v10 = v16;
    }

    [UAFAssetSetManager getSystemUsageAssets:v10];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v74 = 0u;
    v61 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
    if (v61)
    {
      v58 = *v72;
      v59 = v7;
      do
      {
        v26 = 0;
        do
        {
          if (*v72 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v71 + 1) + 8 * v26);
          [v27 metadata];
          v28 = v65 = v26;
          v29 = [v28 objectForKeyedSubscript:@"com.apple.UnifiedAssetFramework.Source"];
          v30 = [self _getAssetSource:v29];

          metadata = [v27 metadata];
          v32 = metadata;
          v33 = v30;
          if (v30 == 4)
          {
            v34 = @"AssetVersion";
          }

          else
          {
            v34 = @"version";
          }

          v68 = [metadata objectForKeyedSubscript:v34];

          v66 = objc_alloc(MEMORY[0x1E698EF70]);
          name = [v27 name];
          metadata2 = [v27 metadata];
          v64 = [metadata2 objectForKeyedSubscript:@"com.apple.UnifiedAssetFramework.AssetId"];
          v35 = MEMORY[0x1E696AD98];
          location = [v27 location];
          v36 = [v35 numberWithBool:location != 0];
          location2 = [v27 location];
          absoluteString = [location2 absoluteString];
          v38 = MEMORY[0x1E696AD98];
          metadata3 = [v27 metadata];
          v39 = [metadata3 objectForKeyedSubscript:@"com.apple.UnifiedAssetFramework.ReportedDownloadSize"];
          v40 = [v38 numberWithLongLong:{objc_msgSend(v39, "longLongValue")}];
          v41 = MEMORY[0x1E696AD98];
          metadata4 = [v27 metadata];
          v43 = [metadata4 objectForKeyedSubscript:@"com.apple.UnifiedAssetFramework.UnarchivedSize"];
          v44 = [v41 numberWithLongLong:{objc_msgSend(v43, "longLongValue")}];
          v45 = [v66 initWithAssetName:name assetSpecifier:v64 assetVersion:v68 assetLocale:0 assetSource:v33 isAssetPathValid:v36 assetPath:absoluteString assetDownloadSizeInBytes:v40 assetUnarchivedSizeInBytes:v44];

          v7 = v59;
          [v59 addObject:v45];

          v26 = v65 + 1;
        }

        while (v61 != v65 + 1);
        v61 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
      }

      while (v61);
    }

    v46 = objc_alloc(MEMORY[0x1E698EF78]);
    v47 = [MEMORY[0x1E696AD98] numberWithBool:v79];
    setCopy = v54;
    v48 = [v46 initWithAssetSetName:v54 assets:v7 assetType:0 assetSetId:v50 audienceId:0 mobileAssetDownloadErrorCodeFrequency:v57 fromPreSoftwareUpdateStaging:v47 expensiveCellularDownloadRequested:0];

    v9 = v52;
    managerCopy = v53;
    v12 = v51;
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

+ (int)_getAssetSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"Factory"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"Root"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"MA"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end