@interface PGSharedLibraryAssetPropertiesMetricEvent
- (NSArray)payloads;
- (NSString)description;
- (PGSharedLibraryAssetPropertiesMetricEvent)initWithWorkingContext:(id)context questionMetricType:(unsigned __int16)type metricEventFetchHelper:(id)helper;
- (void)gatherMetricsWithProgressBlock:(id)block;
@end

@implementation PGSharedLibraryAssetPropertiesMetricEvent

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  identifier = [(PGSharedLibraryAssetPropertiesMetricEvent *)self identifier];
  payloads = [(PGSharedLibraryAssetPropertiesMetricEvent *)self payloads];
  v9 = [v3 stringWithFormat:@"<%@: %p> %@:\nIdentifier:%@\nPayloads:%@", v4, self, v6, identifier, payloads];

  return v9;
}

- (void)gatherMetricsWithProgressBlock:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = _Block_copy(block);
  v5 = 0.0;
  if (v4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v24 = 0;
      v4[2](v4, &v24, 0.0);
      if (v24 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v29 = 62;
          v30 = 2080;
          v31 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGSharedLibraryAssetPropertiesMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_30;
      }

      v5 = Current;
    }
  }

  allKeys = [(NSDictionary *)self->_resultsByAssetIdentifier allKeys];
  v8 = [allKeys mutableCopy];

  if ([v8 count])
  {
    [v8 pha_shuffle];
    v17 = v8;
    v18 = v4;
    if ([v8 count] <= 0x64)
    {
      v9 = v8;
    }

    else
    {
      v9 = [v8 subarrayWithRange:{0, 100}];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v25 = @"result";
          v15 = [(NSDictionary *)self->_resultsByAssetIdentifier objectForKeyedSubscript:v14];
          v26 = v15;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          [(NSMutableDictionary *)self->_payloadByAssetIdentifier setObject:v16 forKeyedSubscript:v14];
        }

        v11 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
      }

      while (v11);
    }

    v8 = v17;
    v4 = v18;
    if (v18)
    {
      if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
      {
        v24 = 0;
        v18[2](v18, &v24, 1.0);
        if (v24)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v29 = 79;
            v30 = 2080;
            v31 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGSharedLibraryAssetPropertiesMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }
  }

  else if (v4)
  {
    if (CFAbsoluteTimeGetCurrent() - v5 >= 0.01)
    {
      v24 = 0;
      v4[2](v4, &v24, 1.0);
      if (v24)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v29 = 66;
          v30 = 2080;
          v31 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGSharedLibraryAssetPropertiesMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }
    }
  }

LABEL_30:
}

- (NSArray)payloads
{
  v30 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_payloadByAssetIdentifier count])
  {
    allKeys = [(NSMutableDictionary *)self->_payloadByAssetIdentifier allKeys];
    v4 = [allKeys mutableCopy];

    photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v21 = librarySpecificFetchOptions;
    v22 = v4;
    v7 = [MEMORY[0x277CD97A8] fetchAssetsWithUUIDs:v4 options:librarySpecificFetchOptions];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
    selfCopy = self;
    v28.receiver = self;
    v28.super_class = PGSharedLibraryAssetPropertiesMetricEvent;
    payload = [(PGPhotosChallengeMetricEvent *)&v28 payload];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [payload mutableCopy];
          payloadByAssetIdentifier = selfCopy->_payloadByAssetIdentifier;
          uuid = [v15 uuid];
          v19 = [(NSMutableDictionary *)payloadByAssetIdentifier objectForKeyedSubscript:uuid];
          [v16 addEntriesFromDictionary:v19];

          [v16 setObject:v15 forKeyedSubscript:@"assets"];
          [v8 addObject:v16];
        }

        v12 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (PGSharedLibraryAssetPropertiesMetricEvent)initWithWorkingContext:(id)context questionMetricType:(unsigned __int16)type metricEventFetchHelper:(id)helper
{
  typeCopy = type;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = PGSharedLibraryAssetPropertiesMetricEvent;
  v10 = [(PGPhotosChallengeMetricEvent *)&v15 initWithWorkingContext:contextCopy questionMetricType:typeCopy metricEventFetchHelper:helper];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_workingContext, context);
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    payloadByAssetIdentifier = v11->_payloadByAssetIdentifier;
    v11->_payloadByAssetIdentifier = v12;
  }

  return v11;
}

@end