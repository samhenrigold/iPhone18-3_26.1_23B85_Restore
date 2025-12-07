@interface PPSSQLiteTimeSeriesIngester
+ (NSCache)databaseConnectionCache;
+ (id)_stringForSourceNames:(id)names metrics:(id)metrics predicate:(id)predicate;
+ (id)cachedDatabaseForURL:(id)l;
+ (id)databaseQueue;
+ (id)filterTimeSeries:(id)series withPredicate:(id)predicate;
+ (unint64_t)_hashForStringArray:(id)array;
+ (void)cache:(id)cache willEvictObject:(id)object;
+ (void)evicttriggering;
- (PPSSQLiteTimeSeriesIngester)initWithFilepath:(id)filepath;
- (id)_convertSQLiteDataFromQuery:(id)query withMetricDefinitions:(id)definitions error:(id *)error;
- (id)_validBaseMetricFromDefinitions:(id)definitions;
- (id)parseDataForRequest:(id)request outError:(id *)error;
- (id)responseForKey:(id)key withinTimeWindow:(id)window;
- (void)dealloc;
- (void)removeResponseForKey:(id)key;
- (void)setResponse:(id)response forKey:(id)key timeWindow:(id)window;
@end

@implementation PPSSQLiteTimeSeriesIngester

+ (id)databaseQueue
{
  if (databaseQueue_onceToken != -1)
  {
    +[PPSSQLiteTimeSeriesIngester databaseQueue];
  }

  v3 = databaseQueue_databaseQueue;

  return v3;
}

uint64_t __44__PPSSQLiteTimeSeriesIngester_databaseQueue__block_invoke()
{
  databaseQueue_databaseQueue = dispatch_queue_create("com.apple.perfpowerservices.databaseQueue", 0);

  return MEMORY[0x2821F96F8]();
}

+ (NSCache)databaseConnectionCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PPSSQLiteTimeSeriesIngester_databaseConnectionCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (databaseConnectionCache_onceToken != -1)
  {
    dispatch_once(&databaseConnectionCache_onceToken, block);
  }

  v2 = databaseConnectionCache_connectionCache;

  return v2;
}

void __54__PPSSQLiteTimeSeriesIngester_databaseConnectionCache__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v3 = databaseConnectionCache_connectionCache;
  databaseConnectionCache_connectionCache = v2;

  [databaseConnectionCache_connectionCache setTotalCostLimit:0x100000];
  [databaseConnectionCache_connectionCache setName:@"com.apple.perfpowerservices.databaseConnectionCache"];
  v4 = PPSReaderLog([databaseConnectionCache_connectionCache setDelegate:*(a1 + 32)]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __54__PPSSQLiteTimeSeriesIngester_databaseConnectionCache__block_invoke_cold_1();
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [v5 addObserverForName:@"EvictionNotification" object:0 queue:0 usingBlock:&__block_literal_global_10];
}

+ (void)evicttriggering
{
  v3 = PPSReaderLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[PPSSQLiteTimeSeriesIngester evicttriggering];
  }

  databaseConnectionCache = [self databaseConnectionCache];
  databaseConnectionCache2 = [self databaseConnectionCache];
  v6 = MEMORY[0x277CBEBC0];
  containerPath = [MEMORY[0x277D3A128] containerPath];
  v8 = [containerPath stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v9 = [v8 stringByAppendingString:@"BackgroundProcessing/"];
  v10 = [v9 stringByAppendingString:@"CurrentBackgroundProcessingDB.BGSQL"];
  v11 = [v6 fileURLWithPath:v10];
  v12 = [databaseConnectionCache2 objectForKey:v11];
  [self cache:databaseConnectionCache willEvictObject:v12];
}

+ (id)cachedDatabaseForURL:(id)l
{
  lCopy = l;
  databaseConnectionCache = [self databaseConnectionCache];
  v6 = [databaseConnectionCache objectForKey:lCopy];

  return v6;
}

+ (void)cache:(id)cache willEvictObject:(id)object
{
  cacheCopy = cache;
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    databaseConnectionCache = [self databaseConnectionCache];

    if (databaseConnectionCache == cacheCopy)
    {
      v9 = objectCopy;
      databaseQueue = [self databaseQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__PPSSQLiteTimeSeriesIngester_cache_willEvictObject___block_invoke;
      block[3] = &unk_279A11428;
      v13 = v9;
      v11 = v9;
      dispatch_async(databaseQueue, block);
    }
  }
}

void __53__PPSSQLiteTimeSeriesIngester_cache_willEvictObject___block_invoke(uint64_t a1)
{
  v1 = PPSReaderLog([*(a1 + 32) close]);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __53__PPSSQLiteTimeSeriesIngester_cache_willEvictObject___block_invoke_cold_1();
  }
}

- (PPSSQLiteTimeSeriesIngester)initWithFilepath:(id)filepath
{
  filepathCopy = filepath;
  v11.receiver = self;
  v11.super_class = PPSSQLiteTimeSeriesIngester;
  v6 = [(PPSSQLiteTimeSeriesIngester *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filepath, filepath);
    v8 = objc_opt_new();
    responseCache = v7->_responseCache;
    v7->_responseCache = v8;
  }

  return v7;
}

- (void)dealloc
{
  databaseQueue = [objc_opt_class() databaseQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PPSSQLiteTimeSeriesIngester_dealloc__block_invoke;
  block[3] = &unk_279A11428;
  block[4] = self;
  dispatch_sync(databaseQueue, block);

  v4.receiver = self;
  v4.super_class = PPSSQLiteTimeSeriesIngester;
  [(PPSSQLiteTimeSeriesIngester *)&v4 dealloc];
}

void __38__PPSSQLiteTimeSeriesIngester_dealloc__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() databaseConnectionCache];
  v3 = [*(a1 + 32) filepath];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    [v4 close];
    v5 = [objc_opt_class() databaseConnectionCache];
    v6 = [*(a1 + 32) filepath];
    [v5 removeObjectForKey:v6];

    v8 = PPSReaderLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __38__PPSSQLiteTimeSeriesIngester_dealloc__block_invoke_cold_1();
    }
  }
}

- (void)removeResponseForKey:(id)key
{
  keyCopy = key;
  responseCache = [(PPSSQLiteTimeSeriesIngester *)self responseCache];
  [responseCache removeObjectForKey:keyCopy];
}

- (id)responseForKey:(id)key withinTimeWindow:(id)window
{
  windowCopy = window;
  keyCopy = key;
  responseCache = [(PPSSQLiteTimeSeriesIngester *)self responseCache];
  v9 = [responseCache objectForKey:keyCopy];

  if (!v9)
  {
    firstObject = 0;
    goto LABEL_11;
  }

  firstObject = [v9 firstObject];
  lastObject = [v9 lastObject];
  null = [MEMORY[0x277CBEB68] null];

  if (lastObject == null)
  {
    goto LABEL_11;
  }

  lastObject2 = [v9 lastObject];
  if (lastObject2)
  {
    startDate = [windowCopy startDate];
    if ([lastObject2 containsDate:startDate])
    {
      endDate = [windowCopy endDate];
      v16 = [lastObject2 containsDate:endDate];

      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    firstObject = 0;
  }

LABEL_10:

LABEL_11:

  return firstObject;
}

- (void)setResponse:(id)response forKey:(id)key timeWindow:(id)window
{
  v14[2] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  keyCopy = key;
  windowCopy = window;
  v14[0] = responseCopy;
  null = windowCopy;
  if (!windowCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v14[1] = null;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  if (!windowCopy)
  {
  }

  responseCache = [(PPSSQLiteTimeSeriesIngester *)self responseCache];
  [responseCache setObject:v12 forKey:keyCopy];
}

- (id)parseDataForRequest:(id)request outError:(id *)error
{
  v102[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  subsystem = [requestCopy subsystem];
  category = [requestCopy category];
  v93 = 0;
  v94 = &v93;
  v95 = 0x3032000000;
  v96 = __Block_byref_object_copy__2;
  v97 = __Block_byref_object_dispose__2;
  v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@_Prepare", @"QueryExecution", subsystem, category];
  v4 = +[PPSPerformanceProfiler sharedInstance];
  [v4 startProfilingForPhase:v94[5]];

  valueFilter = [requestCopy valueFilter];
  timeFilter = [requestCopy timeFilter];
  if (timeFilter)
  {
    filepath = [(PPSSQLiteTimeSeriesIngester *)self filepath];
    v6 = [PPSTimestampConverterRegistry converterForFilepath:filepath];

    startDate = [timeFilter startDate];
    [startDate timeIntervalSince1970];
    v9 = v8;

    [v6 monotonicTimeFromEpochTime:v9];
    v11 = v10;
    endDate = [timeFilter endDate];
    [endDate timeIntervalSince1970];
    v14 = v13;

    [v6 monotonicTimeFromEpochTime:v14];
    v58 = [PPSPredicateUtilities predicateForStartTimestamp:@"timestamp" endTimestamp:v11 withKeyPath:v15];
    if (valueFilter)
    {
      v16 = MEMORY[0x277CCA920];
      v102[0] = valueFilter;
      v102[1] = v58;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:2];
      v59 = [v16 andPredicateWithSubpredicates:v17];
    }

    else
    {
      v59 = v58;
    }
  }

  else
  {
    v58 = 0;
    v59 = valueFilter;
  }

  metrics = [requestCopy metrics];
  allObjects = [metrics allObjects];

  if (([allObjects containsObject:@"timestamp"] & 1) == 0)
  {
    v20 = [allObjects arrayByAddingObject:@"timestamp"];

    allObjects = v20;
  }

  filepath2 = [(PPSSQLiteTimeSeriesIngester *)self filepath];
  v22 = [PPSOffDeviceIngesterUtilities metricDefinitionsForFilepath:filepath2 subsystem:subsystem category:category metricNames:allObjects];
  v23 = [v22 mutableCopy];

  v66 = [MEMORY[0x277CBEB58] set];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = allObjects;
  v24 = 0;
  v25 = [obj countByEnumeratingWithState:&v89 objects:v101 count:16];
  if (v25)
  {
    v26 = *v90;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v90 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v89 + 1) + 8 * i);
        v29 = [v23 objectForKeyedSubscript:v28];
        if (v29)
        {
          v24 |= [PPSDataIngesterCommonUtilities directionalityForMetricDefinition:v29]== 3;
          if ([v29 datatype] == 10)
          {
            [v66 addObject:v28];
          }
        }

        else
        {
          v31 = [v28 rangeOfString:@"_[0-9.]+$" options:1024];
          if (v31 == 0x7FFFFFFFFFFFFFFFLL)
          {
            null = [MEMORY[0x277CBEB68] null];
            [v23 setObject:null forKeyedSubscript:v28];
          }

          else
          {
            null = [v28 stringByReplacingCharactersInRange:v31 withString:{v30, &stru_286FFF1D8}];
            filepath3 = [(PPSSQLiteTimeSeriesIngester *)self filepath];
            v34 = [PPSOffDeviceIngesterUtilities metricDefinitionForFilepath:filepath3 subsystem:subsystem category:category metricName:null];
            [v23 setObject:v34 forKeyedSubscript:null];
          }
        }
      }

      v25 = [obj countByEnumeratingWithState:&v89 objects:v101 count:16];
    }

    while (v25);
  }

  v35 = [PPSPredicateUtilities predicateByReplacingUnsignedIntegerWithSignedInteger:v59 legalMetricNames:v66];

  if ((v24 & 1) != 0 && ([obj containsObject:@"timestampEnd"] & 1) == 0)
  {
    v36 = [obj arrayByAddingObject:@"timestampEnd"];

    null2 = [MEMORY[0x277CBEB68] null];
    [v23 setObject:null2 forKeyedSubscript:@"timestampEnd"];

    obj = v36;
  }

  v38 = @"ASC";
  if ([requestCopy readDirection] == 1)
  {
    v39 = @"DESC";

    v38 = v39;
  }

  filepath4 = [(PPSSQLiteTimeSeriesIngester *)self filepath];
  v41 = [PPSOffDeviceIngesterUtilities allDataSourcesForFilepath:filepath4 subsystem:subsystem category:category];

  v42 = [objc_opt_class() _stringForSourceNames:v41 metrics:obj predicate:valueFilter];
  if ([(PPSSQLiteTimeSeriesIngester *)self shouldUseCache]&& ([(PPSSQLiteTimeSeriesIngester *)self responseForKey:v42 withinTimeWindow:timeFilter], (v43 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v44 = [objc_opt_class() filterTimeSeries:v43 withPredicate:v58];
  }

  else
  {
    v45 = [[PPSSQLiteEntity alloc] initWithTableNames:v41];
    v46 = [PPSSQLiteQueryDescriptor alloc];
    pps_sqlPredicateForSelect = [v35 pps_sqlPredicateForSelect];
    v48 = -[PPSSQLiteQueryDescriptor initWithEntity:predicate:limitCount:offsetCount:](v46, "initWithEntity:predicate:limitCount:offsetCount:", v45, pps_sqlPredicateForSelect, [requestCopy limitCount], objc_msgSend(requestCopy, "offsetCount"));

    v100 = @"timestamp";
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
    [(PPSSQLiteQueryDescriptor *)v48 setOrderByProperties:v49];

    v99 = v38;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
    [(PPSSQLiteQueryDescriptor *)v48 setOrderByDirections:v50];

    v83 = 0;
    v84 = &v83;
    v85 = 0x3032000000;
    v86 = __Block_byref_object_copy__2;
    v87 = __Block_byref_object_dispose__2;
    v88 = 0;
    v77 = 0;
    v78 = &v77;
    v79 = 0x3032000000;
    v80 = __Block_byref_object_copy__2;
    v81 = __Block_byref_object_dispose__2;
    v82 = 0;
    databaseQueue = [objc_opt_class() databaseQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__PPSSQLiteTimeSeriesIngester_parseDataForRequest_outError___block_invoke;
    block[3] = &unk_279A11668;
    block[4] = self;
    v74 = &v77;
    v52 = v48;
    v69 = v52;
    v70 = obj;
    v75 = &v93;
    v71 = subsystem;
    v72 = category;
    v76 = &v83;
    v73 = v23;
    dispatch_sync(databaseQueue, block);

    v53 = v78[5];
    if (v53)
    {
      v43 = 0;
      *error = v53;
    }

    else
    {
      v54 = v84[5];
      if (v54 && [(PPSSQLiteTimeSeriesIngester *)self shouldUseCache])
      {
        [(PPSSQLiteTimeSeriesIngester *)self setResponse:v54 forKey:v42 timeWindow:timeFilter];
      }

      v55 = +[PPSPerformanceProfiler sharedInstance];
      [v55 endProfilingForPhase:v94[5]];

      v43 = v54;
    }

    _Block_object_dispose(&v77, 8);
    _Block_object_dispose(&v83, 8);

    v44 = v43;
  }

  _Block_object_dispose(&v93, 8);

  return v44;
}

void __60__PPSSQLiteTimeSeriesIngester_parseDataForRequest_outError___block_invoke(uint64_t a1)
{
  v25[3] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [objc_opt_class() databaseConnectionCache];
  v4 = [*v2 filepath];
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v19 = [PPSSQLiteDatabase alloc];
    v20 = [*(a1 + 32) filepath];
    v5 = [(PPSSQLiteDatabase *)v19 initWithDatabaseURL:v20];

    v21 = *(*(a1 + 80) + 8);
    v25[0] = *(v21 + 40);
    [(PPSSQLiteDatabase *)v5 openForReadingWithError:v25];
    objc_storeStrong((v21 + 40), v25[0]);
    if (*(*(*(a1 + 80) + 8) + 40))
    {
      goto LABEL_6;
    }

    v22 = [objc_opt_class() databaseConnectionCache];
    v23 = [*(a1 + 32) filepath];
    [v22 setObject:v5 forKey:v23];
  }

  v6 = [[PPSSQLiteQuery alloc] initWithDatabase:v5 descriptor:*(a1 + 40)];
  v7 = PPSReaderLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __60__PPSSQLiteTimeSeriesIngester_parseDataForRequest_outError___block_invoke_cold_1(a1, v6, v7);
  }

  v8 = +[PPSPerformanceProfiler sharedInstance];
  [v8 endProfilingForPhase:*(*(*(a1 + 88) + 8) + 40)];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@_SQLEnumerate", @"QueryExecution", *(a1 + 56), *(a1 + 64)];
  v10 = *(*(a1 + 88) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = +[PPSPerformanceProfiler sharedInstance];
  [v12 startProfilingForPhase:*(*(*(a1 + 88) + 8) + 40)];

  v13 = *(a1 + 32);
  v14 = *(a1 + 72);
  v15 = *(*(a1 + 80) + 8);
  obj = *(v15 + 40);
  v16 = [v13 _convertSQLiteDataFromQuery:v6 withMetricDefinitions:v14 error:&obj];
  objc_storeStrong((v15 + 40), obj);
  v17 = *(*(a1 + 96) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

LABEL_6:
}

- (id)_validBaseMetricFromDefinitions:(id)definitions
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  definitionsCopy = definitions;
  v4 = [definitionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(definitionsCopy);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [definitionsCopy objectForKeyedSubscript:{v7, v12}];
        null = [MEMORY[0x277CBEB68] null];
        v10 = [v8 isEqual:null];

        if (!v10)
        {
          v4 = [definitionsCopy objectForKeyedSubscript:v7];
          goto LABEL_11;
        }
      }

      v4 = [definitionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_convertSQLiteDataFromQuery:(id)query withMetricDefinitions:(id)definitions error:(id *)error
{
  v76 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  definitionsCopy = definitions;
  v40 = queryCopy;
  if (queryCopy)
  {
    errorCopy = error;
    v43 = objc_opt_new();
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v37 = definitionsCopy;
    obj = definitionsCopy;
    v9 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
    if (v9)
    {
      v41 = 0;
      v10 = *v72;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v72 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v71 + 1) + 8 * i);
          if (([v12 isEqualToString:@"timestamp"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"timestampEnd"))
          {
            [v43 addObject:v12];
          }

          else
          {
            v13 = [obj objectForKeyedSubscript:v12];
            v14 = [v13 auxiliaryType] == 3;
            v15 = [v13 auxiliaryType] == 2;
            if ([v13 auxiliaryType] == 3 && objc_msgSend(v13, "fixedArraySize"))
            {
              if ([v13 fixedArraySize])
              {
                v16 = 0;
                do
                {
                  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", v12, v16];
                  [v43 addObject:v17];

                  v16 = (v16 + 1);
                }

                while (v16 < [v13 fixedArraySize]);
              }
            }

            else
            {
              [v43 addObject:v12];
            }

            LOBYTE(v41) = v14 | v41;
            BYTE4(v41) |= v15;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
      }

      while (v9);
    }

    else
    {
      v41 = 0;
    }

    v18 = [v40 columnNamesForProperties:v43];
    v19 = PPSReaderLog(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [PPSSQLiteTimeSeriesIngester _convertSQLiteDataFromQuery:withMetricDefinitions:error:];
    }

    v20 = [v18 count];
    if (v20 != [v43 count])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Number of column and metric names should be the same."];
    }

    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__2;
    v69 = __Block_byref_object_dispose__2;
    v70 = [(PPSSQLiteTimeSeriesIngester *)self _validBaseMetricFromDefinitions:obj];
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__2;
    v63 = __Block_byref_object_dispose__2;
    v64 = objc_opt_new();
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x3032000000;
    v57[3] = __Block_byref_object_copy__2;
    v57[4] = __Block_byref_object_dispose__2;
    filepath = [(PPSSQLiteTimeSeriesIngester *)self filepath];
    v58 = [PPSTimestampConverterRegistry converterForFilepath:filepath];

    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x2020000000;
    v56[3] = -1;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __87__PPSSQLiteTimeSeriesIngester__convertSQLiteDataFromQuery_withMetricDefinitions_error___block_invoke;
    v45[3] = &unk_279A116B8;
    v22 = v18;
    v46 = v22;
    v50 = v57;
    v23 = obj;
    v47 = v23;
    v48 = v40;
    selfCopy = self;
    v51 = &v65;
    v52 = v56;
    v53 = &v59;
    v54 = v41 & 1;
    v55 = BYTE4(v41) & 1;
    [v48 enumerateProperties:v43 error:errorCopy enumerationHandler:v45];
    v24 = v66[5];
    if (v24)
    {
      null = [MEMORY[0x277CBEB68] null];
      v26 = [v24 isEqual:null];

      if ((v26 & 1) == 0)
      {
        v27 = +[PPSRecipeEngine sharedInstance];
        v28 = [v27 createTimeSeriesRecipeForMetric:v66[5]];

        if (v28)
        {
          v29 = +[PPSRecipeEngine sharedInstance];
          v30 = v60[5];
          v44 = 0;
          v31 = [v29 executeTimeSeriesRecipe:v28 on:v30 metrics:v23 error:&v44];
          v32 = v44;
          v33 = v60[5];
          v60[5] = v31;

          if (v32)
          {
            v35 = PPSReaderLog(v34);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              [PPSSQLiteTimeSeriesIngester _convertSQLiteDataFromQuery:withMetricDefinitions:error:];
            }
          }
        }
      }
    }

    queryCopy = v60[5];

    _Block_object_dispose(v56, 8);
    _Block_object_dispose(v57, 8);

    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(&v65, 8);

    definitionsCopy = v37;
  }

  return queryCopy;
}

uint64_t __87__PPSSQLiteTimeSeriesIngester__convertSQLiteDataFromQuery_withMetricDefinitions_error___block_invoke(uint64_t a1, void *a2, PPSSQLiteRow *a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v56 = objc_autoreleasePoolPush();
  v60 = objc_opt_new();
  v57 = PPSSQLiteColumnValueWithNameAsInt(a3, @"ID");
  v59 = v6;
  if ([*(a1 + 32) count])
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0;
    while (1)
    {
      v10 = [v6 objectAtIndexedSubscript:v7];
      v11 = [v10 isEqualToString:@"timestamp"];

      if (!v11)
      {
        break;
      }

      v12 = [v6 objectAtIndexedSubscript:v7];
      v8 = PPSSQLiteColumnValueWithNameAsDouble(a3, v12);

      [*(*(*(a1 + 64) + 8) + 40) systemOffsetFromMonotonicTime:v8];
      v9 = v13;
LABEL_28:
      if (++v7 >= [*(a1 + 32) count])
      {
        goto LABEL_31;
      }
    }

    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) objectAtIndexedSubscript:v7];
    v16 = [v14 objectForKeyedSubscript:v15];

    v17 = [v6 objectAtIndexedSubscript:v7];
    v18 = PPSSQLiteColumnValueWithNameAsFoundationType(a3, v17);

    if (v16)
    {
      v19 = [MEMORY[0x277CBEB68] null];
      v20 = [v16 isEqual:v19];

      if ((v20 & 1) == 0)
      {
        if ([v16 datatype] == 10)
        {
          v21 = [v18 longLongValue];
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];

          v24 = PPSReaderLog(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218498;
            v73 = v21;
            v74 = 2048;
            v75 = v21;
            v76 = 2112;
            v77 = v22;
            _os_log_debug_impl(&dword_25E225000, v24, OS_LOG_TYPE_DEBUG, "The readback for Uint64 path is triggered with values for signedVal= %lld, unsignedVal=%llu and correctedVal=%@", buf, 0x20u);
          }
        }

        else
        {
          v22 = v18;
        }

        if ([PPSEnumerationDecoder isDecodableMetric:v16])
        {
          v25 = [PPSEnumerationDecoder decodeValue:v22 withMetric:v16];

          v22 = v25;
        }

        v26 = +[PPSRecipeEngine sharedInstance];
        v27 = [v26 createMetricRecipeForMetric:v16];

        if (v27)
        {
          v28 = +[PPSRecipeEngine sharedInstance];
          v71 = 0;
          v58 = [v28 executeMetricRecipe:v27 on:v22 metric:v16 error:&v71];
          v29 = v71;

          if (v29)
          {
            v31 = PPSReaderLog(v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v73 = v27;
              _os_log_error_impl(&dword_25E225000, v31, OS_LOG_TYPE_ERROR, "Metric Recipe '%@' failed during time series ingestion", buf, 0xCu);
            }
          }

          v22 = v58;
        }

        v18 = v22;
      }
    }

    if ([v16 auxiliaryType] == 3)
    {
      v32 = [MEMORY[0x277CBEB18] arrayWithObjects:{v18, 0}];
      v33 = [*(a1 + 32) objectAtIndexedSubscript:v7];
      [v60 setValue:v32 forKey:v33];
    }

    else
    {
      v34 = v18;
      if (!v18)
      {
        v3 = [MEMORY[0x277CBEB68] null];
        v34 = v3;
      }

      v35 = [*(a1 + 32) objectAtIndexedSubscript:v7];
      [v60 setValue:v34 forKey:v35];

      v32 = v3;
      if (v18)
      {
        goto LABEL_27;
      }
    }

LABEL_27:
    v6 = v59;
    goto LABEL_28;
  }

  v9 = 0;
  v8 = 0.0;
LABEL_31:
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __87__PPSSQLiteTimeSeriesIngester__convertSQLiteDataFromQuery_withMetricDefinitions_error___block_invoke_69;
  v63[3] = &unk_279A11690;
  v36 = *(a1 + 48);
  v37 = *(a1 + 56);
  v64 = v36;
  v65 = v37;
  v69 = v8;
  v70 = v9;
  v38 = v60;
  v39 = *(a1 + 72);
  v66 = v38;
  v68 = v39;
  v67 = *(a1 + 40);
  v40 = MEMORY[0x25F8B0940](v63);
  v41 = v40;
  v42 = v57;
  if (*(*(*(a1 + 80) + 8) + 24) != v57)
  {
    v54 = (*(v40 + 16))(v40);
    if (v54)
    {
      [*(*(*(a1 + 88) + 8) + 40) addEvent:v54];
    }

    v53 = v56;
    goto LABEL_46;
  }

  v61 = v40;
  if (*(a1 + 96) == 1 && [*(a1 + 32) count])
  {
    v43 = 0;
    v44 = @"timestampEnd";
    do
    {
      v45 = [*(a1 + 32) objectAtIndexedSubscript:v43];
      if (([v45 isEqualToString:@"timestamp"] & 1) == 0 && (objc_msgSend(v45, "isEqualToString:", v44) & 1) == 0)
      {
        v46 = [*(a1 + 40) objectForKeyedSubscript:v45];
        if ([v46 auxiliaryType] == 3)
        {
          v47 = [*(*(*(a1 + 88) + 8) + 40) array];
          v62 = [v47 lastObject];

          v48 = [v62 metrics];
          v49 = [v48 objectForKeyedSubscript:v45];
          [v38 objectForKeyedSubscript:v45];
          v50 = v44;
          v52 = v51 = v38;
          [v49 addObjectsFromArray:v52];

          v38 = v51;
          v44 = v50;
        }
      }

      ++v43;
    }

    while (v43 < [*(a1 + 32) count]);
  }

  v53 = v56;
  v42 = v57;
  v6 = v59;
  v41 = v61;
  if (*(a1 + 97) == 1)
  {
    v54 = v61[2](v61);
    [*(*(*(a1 + 88) + 8) + 40) addEvent:v54];
LABEL_46:
  }

  *(*(*(a1 + 80) + 8) + 24) = v42;

  objc_autoreleasePoolPop(v53);
  return 1;
}

id __87__PPSSQLiteTimeSeriesIngester__convertSQLiteDataFromQuery_withMetricDefinitions_error___block_invoke_69(uint64_t a1)
{
  v2 = [*(a1 + 32) descriptor];
  v3 = [v2 entity];
  v4 = [v3 tableNames];

  v5 = +[PPSEvent eventWithMonotonicTimestamp:timeOffset:dictionary:groupId:](PPSEvent, "eventWithMonotonicTimestamp:timeOffset:dictionary:groupId:", *(a1 + 48), [objc_opt_class() _hashForStringArray:v4], *(a1 + 72), *(a1 + 80));
  v6 = *(*(*(a1 + 64) + 8) + 40);
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [*(*(*(a1 + 64) + 8) + 40) subsystem];
      v11 = [*(*(*(a1 + 64) + 8) + 40) category];
      v12 = [v9 stringWithFormat:@"%@:%@", v10, v11];
      [v5 setLabel:v12];

      v13 = +[PPSRecipeEngine sharedInstance];
      v14 = [v13 createEventRecipeForMetric:*(*(*(a1 + 64) + 8) + 40)];

      if (v14)
      {
        v15 = +[PPSRecipeEngine sharedInstance];
        v16 = *(a1 + 56);
        v22 = 0;
        v17 = [v15 executeEventRecipe:v14 on:v5 metrics:v16 error:&v22];
        v18 = v22;

        if (v18)
        {
          v20 = PPSReaderLog(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            __87__PPSSQLiteTimeSeriesIngester__convertSQLiteDataFromQuery_withMetricDefinitions_error___block_invoke_69_cold_1();
          }
        }

        v5 = v17;
      }
    }
  }

  return v5;
}

+ (unint64_t)_hashForStringArray:(id)array
{
  v15 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [arrayCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v6 ^= (v6 << 6) + (v6 >> 2) + 2654435769u + [*(*(&v10 + 1) + 8 * i) hash];
      }

      v5 = [arrayCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_stringForSourceNames:(id)names metrics:(id)metrics predicate:(id)predicate
{
  predicateCopy = predicate;
  metricsCopy = metrics;
  namesCopy = names;
  v10 = [objc_opt_class() _hashForStringArray:metricsCopy];

  v11 = [predicateCopy hash];
  v12 = (v11 + (v10 << 6) + (v10 >> 2) + 2654435769u) ^ v10;
  v13 = MEMORY[0x277CCACA8];
  v14 = [namesCopy componentsJoinedByString:{@", "}];

  v15 = [v13 stringWithFormat:@"%@::%lu", v14, v12];

  return v15;
}

+ (id)filterTimeSeries:(id)series withPredicate:(id)predicate
{
  v26 = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  predicateCopy = predicate;
  if (!predicateCopy)
  {
    v6 = seriesCopy;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [seriesCopy filteredTimeSeriesUsingPredicate:predicateCopy];
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(seriesCopy, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = seriesCopy;
    v9 = seriesCopy;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = objc_opt_class();
          v17 = [v9 objectForKeyedSubscript:v14];
          v18 = [v16 filterTimeSeries:v17 withPredicate:predicateCopy];

          [v7 setObject:v18 forKeyedSubscript:v14];
          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    seriesCopy = v19;
  }

  else
  {
    v7 = 0;
  }

LABEL_6:

  return v7;
}

void __38__PPSSQLiteTimeSeriesIngester_dealloc__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__PPSSQLiteTimeSeriesIngester_parseDataForRequest_outError___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = [a2 selectSQLWithProperties:*(a1 + 48)];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_25E225000, a3, OS_LOG_TYPE_DEBUG, "Query before value-binding: %@", v5, 0xCu);
}

- (void)_convertSQLiteDataFromQuery:withMetricDefinitions:error:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_25E225000, v1, OS_LOG_TYPE_DEBUG, "Column Names %@ Properties %@", v2, 0x16u);
}

- (void)_convertSQLiteDataFromQuery:withMetricDefinitions:error:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_25E225000, v0, OS_LOG_TYPE_ERROR, "Time Series Recipe '%@' failed during time series ingestion", v1, 0xCu);
}

void __87__PPSSQLiteTimeSeriesIngester__convertSQLiteDataFromQuery_withMetricDefinitions_error___block_invoke_69_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_25E225000, v0, OS_LOG_TYPE_ERROR, "Event Recipe '%@' failed during time series ingestion", v1, 0xCu);
}

@end