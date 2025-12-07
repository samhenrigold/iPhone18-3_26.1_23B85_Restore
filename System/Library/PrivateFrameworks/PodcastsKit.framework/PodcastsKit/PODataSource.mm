@interface PODataSource
+ (id)sharedInstance;
- (BOOL)isPodcastDataStale;
- (BOOL)isPodcastRevisionDataStale;
- (BOOL)isPodcastsInstalled;
- (NSMutableArray)podcastRevisions;
- (NSMutableDictionary)podcastCollectionsByUUID;
- (NSMutableDictionary)podcastStationsByUUID;
- (PODataSource)initWithPlistPath:(id)path;
- (id)arrayFromPlistURL:(id)l;
- (id)constructModelObjectOfClass:(Class)class fromDictionary:(id)dictionary;
- (id)constructModelObjectsFromDictionaries:(id)dictionaries withIndexPath:(id)path modelObjectClass:(Class)class;
- (id)description;
- (id)domainObjectWithUUID:(id)d;
- (id)podcastCollectionWithUUID:(id)d;
- (id)podcastCollections;
- (id)podcastCollectionsMatchingString:(id)string maxResults:(int64_t)results;
- (id)podcastModelObjectsInArray:(id)array matchingString:(id)string maxResults:(int64_t)results;
- (id)podcastRevisionsSinceAnchor:(unint64_t)anchor;
- (id)podcastStationWithUUID:(id)d;
- (id)podcastStations;
- (id)podcastStationsMatchingString:(id)string maxResults:(int64_t)results;
- (id)validity;
- (void)_withExtensionParseDataDictionary:(id)dictionary revisionDictionary:(id)revisionDictionary;
- (void)constructRevisionFromDictionary:(id)dictionary isPodcastCollections:(BOOL)collections isDelete:(BOOL)delete;
- (void)constructRevisionsFromDictionary:(id)dictionary isPodcastCollections:(BOOL)collections;
- (void)getContainerURL:(id)l;
- (void)getDatabaseURL:(id)l;
- (void)getRevisionURL:(id)l;
- (void)getURLs:(id)ls;
- (void)initializeDataFromDictionary;
@end

@implementation PODataSource

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__PODataSource_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_predicate != -1)
  {
    dispatch_once(&sharedInstance_predicate, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __30__PODataSource_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (PODataSource)initWithPlistPath:(id)path
{
  v16 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = PODataSource;
  initializeDataFromDictionary = [(PODataSource *)&v13 init];
  v7 = initializeDataFromDictionary;
  if (initializeDataFromDictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(PODataSource *)v7 setPodcastCollectionsByUUID:dictionary];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [(PODataSource *)v7 setPodcastStationsByUUID:dictionary2];

    array = [MEMORY[0x277CBEB18] array];
    [(PODataSource *)v7 setPodcastRevisions:array];

    [(PODataSource *)v7 setPlistBasePath:pathCopy];
    initializeDataFromDictionary = [(PODataSource *)v7 initializeDataFromDictionary];
  }

  POLogInitIfNeeded(initializeDataFromDictionary, v6);
  if (POLogContextSync)
  {
    v11 = POLogContextSync;
  }

  else
  {
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_25E9F0000, v11, OS_LOG_TYPE_INFO, "Data source is %@", buf, 0xCu);
  }

  return v7;
}

- (id)arrayFromPlistURL:(id)l
{
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v6 = [defaultManager contentsAtPath:path];

  if (v6)
  {
    v15 = 0;
    v9 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v15];
    v7 = v15;
    v10 = v7;
    if (!v7)
    {
      v11 = 0;
      if (v9)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  POLogInitIfNeeded(v7, v8);
  if (POLogContextSync)
  {
    v12 = POLogContextSync;
  }

  else
  {
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [PODataSource arrayFromPlistURL:];
  }

  v13 = _MTLogCategorySiri();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [PODataSource arrayFromPlistURL:];
  }

  v11 = v10;
LABEL_14:

  return v9;
}

- (BOOL)isPodcastsInstalled
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.podcasts" allowPlaceholder:0 error:&v8];
  v3 = v8;
  v5 = v3;
  if (v3)
  {
    POLogInitIfNeeded(v3, v4);
    if (POLogContextSync)
    {
      v6 = POLogContextSync;
    }

    else
    {
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_25E9F0000, v6, OS_LOG_TYPE_INFO, "Could not load application record. If the Podcasts app is actually installed, this represents an error: %@.", buf, 0xCu);
    }
  }

  return v2 != 0;
}

- (void)getURLs:(id)ls
{
  lsCopy = ls;
  plistBasePath = [(PODataSource *)self plistBasePath];

  if (plistBasePath)
  {
    plistBasePath2 = [(PODataSource *)self plistBasePath];
    v7 = [plistBasePath2 URLByAppendingPathComponent:@"PodcastsDB.plist"];

    plistBasePath3 = [(PODataSource *)self plistBasePath];
    v9 = [plistBasePath3 URLByAppendingPathComponent:@"PodcastsDiff.plist"];

    lsCopy[2](lsCopy, v7, v9, 0);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __24__PODataSource_getURLs___block_invoke;
    v10[3] = &unk_279A44C50;
    v11 = lsCopy;
    [(PODataSource *)self getContainerURL:v10];
  }
}

void __24__PODataSource_getURLs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [v6 URLByAppendingPathComponent:@"Documents/PodcastsDB.plist"];
  v7 = [v6 URLByAppendingPathComponent:@"Documents/PodcastsDiff.plist"];

  (*(*(a1 + 32) + 16))();
}

- (void)getDatabaseURL:(id)l
{
  lCopy = l;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__PODataSource_getDatabaseURL___block_invoke;
  v6[3] = &unk_279A44C78;
  v7 = lCopy;
  v5 = lCopy;
  [(PODataSource *)self getURLs:v6];
}

- (void)getRevisionURL:(id)l
{
  lCopy = l;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__PODataSource_getRevisionURL___block_invoke;
  v6[3] = &unk_279A44C78;
  v7 = lCopy;
  v5 = lCopy;
  [(PODataSource *)self getURLs:v6];
}

- (void)getContainerURL:(id)l
{
  v30[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v4 = container_query_create();
    container_query_set_class();
    container_query_operation_set_flags();
    container_query_set_include_other_owners();
    v5 = xpc_string_create("com.apple.podcasts");
    container_query_set_identifiers();
    if (!container_query_get_single_result())
    {
      if (container_query_get_last_error() && (v17 = container_error_copy_unlocalized_description()) != 0)
      {
        v18 = v17;
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
        v20 = v19;
        if (v19)
        {
          v29 = *MEMORY[0x277CCA068];
          v30[0] = v19;
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        }

        else
        {
          v21 = 0;
        }

        free(v18);
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      v25 = _MTLogCategorySiri();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = v20;
        _os_log_impl(&dword_25E9F0000, v25, OS_LOG_TYPE_INFO, "We could not access the podcasts container. This probably means the app isn't installed. Description: '%@'", &v27, 0xCu);
      }

      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PODataSourceErrorDomain" code:1 userInfo:v21];
      lCopy[2](lCopy, 0, v26);

      goto LABEL_39;
    }

    v6 = container_copy_sandbox_token();
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = v6;
    v8 = sandbox_extension_consume();
    v9 = _MTLogCategorySiri();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v27 = 134217984;
      v28 = v8;
      _os_log_impl(&dword_25E9F0000, v9, OS_LOG_TYPE_INFO, "Consumed sandbox token and received handle %lli", &v27, 0xCu);
    }

    free(v7);
    if (v8)
    {
      path = container_get_path();
      if (v8 == -1)
      {
        v23 = _MTLogCategorySiri();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_25E9F0000, v23, OS_LOG_TYPE_ERROR, "Something went wrong with getting the sandbox extension.", &v27, 2u);
        }

        v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PODataSourceErrorDomain" code:2 userInfo:0];
        lCopy[2](lCopy, 0, v24);

        if (!v4)
        {
          goto LABEL_39;
        }

LABEL_29:
        container_query_free();
LABEL_39:

        goto LABEL_40;
      }

      v11 = path;
    }

    else
    {
LABEL_9:
      v12 = _MTLogCategorySiri();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_25E9F0000, v12, OS_LOG_TYPE_INFO, "Handle is 0. Maybe we were not issued a token, the app is not sandboxed, or this extension is not needed to access the container.", &v27, 2u);
      }

      v11 = container_get_path();
      v8 = 0;
    }

    v13 = _MTLogCategorySiri();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v14)
      {
        v27 = 136315138;
        v28 = v11;
        _os_log_impl(&dword_25E9F0000, v13, OS_LOG_TYPE_INFO, "Found container path %s", &v27, 0xCu);
      }

      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
      v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15 isDirectory:1];
      (lCopy)[2](lCopy, v16, 0);
    }

    else
    {
      if (v14)
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_25E9F0000, v13, OS_LOG_TYPE_INFO, "We could not access the podcasts container. This probably means the app isn't installed.", &v27, 2u);
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PODataSourceErrorDomain" code:1 userInfo:0];
      lCopy[2](lCopy, 0, v15);
    }

    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = _MTLogCategorySiri();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v27 = 134217984;
        v28 = v8;
        _os_log_impl(&dword_25E9F0000, v22, OS_LOG_TYPE_INFO, "Releasing sandbox extension %lli", &v27, 0xCu);
      }

      sandbox_extension_release();
    }

    if (!v4)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

LABEL_40:
}

- (BOOL)isPodcastRevisionDataStale
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__PODataSource_isPodcastRevisionDataStale__block_invoke;
  v4[3] = &unk_279A44CA0;
  v4[4] = self;
  v4[5] = &v5;
  [(PODataSource *)self getRevisionURL:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __42__PODataSource_isPodcastRevisionDataStale__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v5)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v5 path];
    v11 = [v9 attributesOfItemAtPath:v10 error:0];
    v12 = [v11 fileModificationDate];
    v13 = [*(a1 + 32) revisionsDataPlistLastModified];
    *(*(*(a1 + 40) + 8) + 24) = [v12 isEqual:v13] ^ 1;
  }

  else
  {
    POLogInitIfNeeded(v6, v7);
    if (POLogContextSync)
    {
      v14 = POLogContextSync;
    }

    else
    {
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __42__PODataSource_isPodcastRevisionDataStale__block_invoke_cold_1();
    }
  }
}

- (BOOL)isPodcastDataStale
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__PODataSource_isPodcastDataStale__block_invoke;
  v4[3] = &unk_279A44CA0;
  v4[4] = self;
  v4[5] = &v5;
  [(PODataSource *)self getDatabaseURL:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __34__PODataSource_isPodcastDataStale__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v5)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v5 path];
    v11 = [v9 attributesOfItemAtPath:v10 error:0];
    v12 = [v11 fileModificationDate];
    v13 = [*(a1 + 32) podcastDataPlistLastModified];
    *(*(*(a1 + 40) + 8) + 24) = [v12 isEqual:v13] ^ 1;
  }

  else
  {
    POLogInitIfNeeded(v6, v7);
    if (POLogContextSync)
    {
      v14 = POLogContextSync;
    }

    else
    {
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __34__PODataSource_isPodcastDataStale__block_invoke_cold_1();
    }
  }
}

- (NSMutableDictionary)podcastCollectionsByUUID
{
  v3 = self->_podcastCollectionsByUUID;
  objc_sync_enter(v3);
  if ([(PODataSource *)self isPodcastDataStale])
  {
    constructingData = [(PODataSource *)self constructingData];
    if ((constructingData & 1) == 0)
    {
      POLogInitIfNeeded(constructingData, v5);
      if (POLogContextSync)
      {
        v6 = POLogContextSync;
      }

      else
      {
        v6 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_25E9F0000, v6, OS_LOG_TYPE_INFO, "Podcast data is stale, going to reinitialize from plist.", v9, 2u);
      }

      [(PODataSource *)self initializeDataFromDictionary];
    }
  }

  objc_sync_exit(v3);

  podcastCollectionsByUUID = self->_podcastCollectionsByUUID;

  return podcastCollectionsByUUID;
}

- (NSMutableDictionary)podcastStationsByUUID
{
  v3 = self->_podcastStationsByUUID;
  objc_sync_enter(v3);
  if ([(PODataSource *)self isPodcastDataStale])
  {
    constructingData = [(PODataSource *)self constructingData];
    if ((constructingData & 1) == 0)
    {
      POLogInitIfNeeded(constructingData, v5);
      if (POLogContextSync)
      {
        v6 = POLogContextSync;
      }

      else
      {
        v6 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_25E9F0000, v6, OS_LOG_TYPE_INFO, "Podcast data is stale, going to reinitialize from plist.", v9, 2u);
      }

      [(PODataSource *)self initializeDataFromDictionary];
    }
  }

  objc_sync_exit(v3);

  podcastStationsByUUID = self->_podcastStationsByUUID;

  return podcastStationsByUUID;
}

- (id)validity
{
  v3 = MEMORY[0x277CCACA8];
  databaseUUID = [(PODataSource *)self databaseUUID];
  firstRevisionUUID = [(PODataSource *)self firstRevisionUUID];
  v6 = [v3 stringWithFormat:@"%@-%@", databaseUUID, firstRevisionUUID];

  return v6;
}

- (NSMutableArray)podcastRevisions
{
  v3 = self->_podcastRevisions;
  objc_sync_enter(v3);
  if ([(PODataSource *)self isPodcastRevisionDataStale])
  {
    constructingData = [(PODataSource *)self constructingData];
    if ((constructingData & 1) == 0)
    {
      POLogInitIfNeeded(constructingData, v5);
      if (POLogContextSync)
      {
        v6 = POLogContextSync;
      }

      else
      {
        v6 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_25E9F0000, v6, OS_LOG_TYPE_INFO, "Podcast revision data is stale, going to reinitialize from plist.", v9, 2u);
      }

      [(PODataSource *)self initializeDataFromDictionary];
    }
  }

  objc_sync_exit(v3);

  podcastRevisions = self->_podcastRevisions;

  return podcastRevisions;
}

- (void)initializeDataFromDictionary
{
  constructingData = [(PODataSource *)self constructingData];
  if (constructingData)
  {
    POLogInitIfNeeded(constructingData, v4);
    if (POLogContextSync)
    {
      v5 = POLogContextSync;
    }

    else
    {
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(PODataSource *)v5 initializeDataFromDictionary];
    }
  }

  else
  {
    [(PODataSource *)self setConstructingData:1];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__PODataSource_initializeDataFromDictionary__block_invoke;
    v6[3] = &unk_279A44CC8;
    v6[4] = self;
    [(PODataSource *)self getURLs:v6];
    [(PODataSource *)self setConstructingData:0];
  }
}

void __44__PODataSource_initializeDataFromDictionary__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v9 = v7;
  if (v7)
  {
    POLogInitIfNeeded(v7, v8);
    if (POLogContextSync)
    {
      v10 = POLogContextSync;
    }

    else
    {
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __44__PODataSource_initializeDataFromDictionary__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) _withExtensionParseDataDictionary:a2 revisionDictionary:a3];
  }
}

- (void)_withExtensionParseDataDictionary:(id)dictionary revisionDictionary:(id)revisionDictionary
{
  v90 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  revisionDictionaryCopy = revisionDictionary;
  v8 = [(PODataSource *)self arrayFromPlistURL:dictionaryCopy];
  v9 = [(PODataSource *)self arrayFromPlistURL:revisionDictionaryCopy];
  POLogInitIfNeeded(v9, v10);
  v11 = MEMORY[0x277D86220];
  if (POLogContextSync)
  {
    v12 = POLogContextSync;
  }

  else
  {
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v89 = dictionaryCopy;
    _os_log_impl(&dword_25E9F0000, v12, OS_LOG_TYPE_INFO, "Constructing data source from %@", buf, 0xCu);
  }

  v77 = revisionDictionaryCopy;
  if (!v8)
  {
    goto LABEL_38;
  }

  v13 = [v8 objectAtIndexedSubscript:0];
  v14 = [v13 objectForKeyedSubscript:@"children"];
  v16 = v14;
  if (!v14)
  {
    POLogInitIfNeeded(0, v15);
    if (POLogContextSync)
    {
      v37 = POLogContextSync;
    }

    else
    {
      v37 = v11;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [PODataSource _withExtensionParseDataDictionary:revisionDictionary:];
    }

    goto LABEL_20;
  }

  v17 = [v14 count];
  if (v17 == 2)
  {
    v73 = v9;
    v75 = v8;
    v19 = [v16 objectAtIndexedSubscript:0];
    v20 = [v19 objectForKeyedSubscript:@"children"];

    v21 = [v16 objectAtIndexedSubscript:1];
    v22 = [v21 objectForKeyedSubscript:@"children"];

    v23 = [MEMORY[0x277CCAA70] indexPathWithIndex:0];
    obj = v20;
    v24 = [(PODataSource *)self constructModelObjectsFromDictionaries:v20 withIndexPath:v23 modelObjectClass:objc_opt_class()];

    [(NSMutableDictionary *)self->_podcastCollectionsByUUID removeAllObjects];
    [(NSMutableDictionary *)self->_podcastCollectionsByUUID addEntriesFromDictionary:v24];
    v25 = [MEMORY[0x277CCAA70] indexPathWithIndex:1];
    v78 = v22;
    v26 = [(PODataSource *)self constructModelObjectsFromDictionaries:v22 withIndexPath:v25 modelObjectClass:objc_opt_class()];

    [(NSMutableDictionary *)self->_podcastStationsByUUID removeAllObjects];
    [(NSMutableDictionary *)self->_podcastStationsByUUID addEntriesFromDictionary:v26];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v28 = dictionaryCopy;
    path = [(NSMutableArray *)dictionaryCopy path];
    v30 = [defaultManager attributesOfItemAtPath:path error:0];
    fileModificationDate = [v30 fileModificationDate];
    [(PODataSource *)self setPodcastDataPlistLastModified:fileModificationDate];

    v11 = MEMORY[0x277D86220];
    POLogInitIfNeeded(v32, v33);
    if (POLogContextSync)
    {
      v34 = POLogContextSync;
    }

    else
    {
      v34 = v11;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = v34;
      podcastDataPlistLastModified = [(PODataSource *)self podcastDataPlistLastModified];
      *buf = 138412290;
      v89 = podcastDataPlistLastModified;
      _os_log_impl(&dword_25E9F0000, v35, OS_LOG_TYPE_INFO, "Podcast data last modified is %@", buf, 0xCu);
    }

    dictionaryCopy = v28;
    v9 = v73;
    v8 = v75;
LABEL_20:
    v39 = [v13 objectForKeyedSubscript:@"uuid"];
    if (v39)
    {
      v40 = [(PODataSource *)self setDatabaseUUID:v39];
      POLogInitIfNeeded(v40, v41);
      if (POLogContextSync)
      {
        v42 = POLogContextSync;
      }

      else
      {
        v42 = v11;
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = v42;
        [(PODataSource *)self databaseUUID];
        v45 = v44 = v9;
        *buf = 138412290;
        v89 = v45;
        _os_log_impl(&dword_25E9F0000, v43, OS_LOG_TYPE_INFO, "Database UUID is %@", buf, 0xCu);

        v9 = v44;
      }
    }

    else
    {
      POLogInitIfNeeded(0, v38);
      if (POLogContextSync)
      {
        v47 = POLogContextSync;
      }

      else
      {
        v47 = v11;
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [PODataSource _withExtensionParseDataDictionary:revisionDictionary:];
      }
    }

    revisionDictionaryCopy = v77;
LABEL_38:
    if (v9)
    {
      v76 = v8;
      v72 = dictionaryCopy;
      [(NSMutableArray *)self->_podcastRevisions removeAllObjects];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v74 = v9;
      obja = v9;
      v48 = [obja countByEnumeratingWithState:&v83 objects:v87 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v84;
        v51 = 1;
        do
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v84 != v50)
            {
              objc_enumerationMutation(obja);
            }

            v53 = *(*(&v83 + 1) + 8 * i);
            if (v51)
            {
              v55 = [*(*(&v83 + 1) + 8 * i) objectForKeyedSubscript:@"uuid"];
              if (v55)
              {
                v56 = [(PODataSource *)self setFirstRevisionUUID:v55];
                POLogInitIfNeeded(v56, v57);
                if (POLogContextSync)
                {
                  v58 = POLogContextSync;
                }

                else
                {
                  v58 = v11;
                }

                if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                {
                  v59 = v58;
                  firstRevisionUUID = [(PODataSource *)self firstRevisionUUID];
                  *buf = 138412290;
                  v89 = firstRevisionUUID;
                  _os_log_impl(&dword_25E9F0000, v59, OS_LOG_TYPE_INFO, "First Revision UUID is %@", buf, 0xCu);

                  v11 = MEMORY[0x277D86220];
                }
              }

              else
              {
                POLogInitIfNeeded(0, v54);
                if (POLogContextSync)
                {
                  v61 = POLogContextSync;
                }

                else
                {
                  v61 = v11;
                }

                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  [(PODataSource *)&v81 _withExtensionParseDataDictionary:v82 revisionDictionary:v61];
                }
              }
            }

            v62 = [v53 objectForKeyedSubscript:@"podcasts"];
            if (v62)
            {
              [(PODataSource *)self constructRevisionsFromDictionary:v62 isPodcastCollections:1];
            }

            v63 = [v53 objectForKeyedSubscript:@"stations"];
            if (v63)
            {
              [(PODataSource *)self constructRevisionsFromDictionary:v63 isPodcastCollections:0];
            }

            v51 = 0;
          }

          v49 = [obja countByEnumeratingWithState:&v83 objects:v87 count:16];
          v51 = 0;
        }

        while (v49);
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      revisionDictionaryCopy = v77;
      path2 = [v77 path];
      v66 = [defaultManager2 attributesOfItemAtPath:path2 error:0];
      fileModificationDate2 = [v66 fileModificationDate];
      [(PODataSource *)self setRevisionsDataPlistLastModified:fileModificationDate2];

      POLogInitIfNeeded(v68, v69);
      if (POLogContextSync)
      {
        v70 = POLogContextSync;
      }

      else
      {
        v70 = v11;
      }

      dictionaryCopy = v72;
      v9 = v74;
      v8 = v76;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        podcastRevisions = self->_podcastRevisions;
        *buf = 138412290;
        v89 = podcastRevisions;
        _os_log_impl(&dword_25E9F0000, v70, OS_LOG_TYPE_INFO, "Podcast revisions are %@", buf, 0xCu);
      }
    }

    goto LABEL_68;
  }

  POLogInitIfNeeded(v17, v18);
  if (POLogContextSync)
  {
    v46 = POLogContextSync;
  }

  else
  {
    v46 = v11;
  }

  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    [PODataSource _withExtensionParseDataDictionary:revisionDictionary:];
  }

  revisionDictionaryCopy = v77;
LABEL_68:
}

- (void)constructRevisionsFromDictionary:(id)dictionary isPodcastCollections:(BOOL)collections
{
  collectionsCopy = collections;
  v31 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"inserted"];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PODataSource *)self constructRevisionFromDictionary:*(*(&v23 + 1) + 8 * v11++) isPodcastCollections:collectionsCopy isDelete:0];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [dictionaryCopy objectForKeyedSubscript:{@"deleted", 0}];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        v27 = @"uuid";
        v28 = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        [(PODataSource *)self constructRevisionFromDictionary:v18 isPodcastCollections:collectionsCopy isDelete:1];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v14);
  }
}

- (void)constructRevisionFromDictionary:(id)dictionary isPodcastCollections:(BOOL)collections isDelete:(BOOL)delete
{
  deleteCopy = delete;
  collectionsCopy = collections;
  dictionaryCopy = dictionary;
  v11 = objc_opt_new();
  [v11 setRevisionID:{-[NSMutableArray count](self->_podcastRevisions, "count")}];
  if (deleteCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [v11 setRevisionType:v9];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];

  [v11 setObjectID:v10];
  [v11 setIsPodcastCollection:collectionsCopy];
  [(NSMutableArray *)self->_podcastRevisions addObject:v11];
}

- (id)constructModelObjectOfClass:(Class)class fromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = objc_alloc_init(class);
  v7 = [dictionaryCopy objectForKey:@"uuid"];
  [v6 setUuid:v7];

  v8 = [dictionaryCopy objectForKey:@"title"];
  [v6 setTitle:v8];

  v9 = [dictionaryCopy objectForKey:@"feedUrl"];
  [v6 setFeedUrl:v9];

  v10 = [dictionaryCopy objectForKey:@"storeId"];

  [v6 setStoreId:v10];

  return v6;
}

- (id)constructModelObjectsFromDictionaries:(id)dictionaries withIndexPath:(id)path modelObjectClass:(Class)class
{
  v27 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  pathCopy = path;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = dictionariesCopy;
  v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v23;
    do
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [(PODataSource *)self constructModelObjectOfClass:class fromDictionary:*(*(&v22 + 1) + 8 * v15)];
        v13 = v16 + 1;
        v18 = [pathCopy indexPathByAddingIndex:v16];
        [v17 setIndexPath:v18];

        uuid = [v17 uuid];
        [dictionary setObject:v17 forKeyedSubscript:uuid];

        ++v15;
        v16 = v13;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  return dictionary;
}

- (id)podcastModelObjectsInArray:(id)array matchingString:(id)string maxResults:(int64_t)results
{
  v24 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  stringCopy = string;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = arrayCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v20 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v19 + 1) + 8 * v14);
      title = [v15 title];
      v17 = [title rangeOfString:stringCopy options:1];

      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [array addObject:v15];
      }

      if (results >= 1 && [array count] == results)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return array;
}

- (id)podcastCollectionsMatchingString:(id)string maxResults:(int64_t)results
{
  stringCopy = string;
  podcastCollections = [(PODataSource *)self podcastCollections];
  v8 = [(PODataSource *)self podcastModelObjectsInArray:podcastCollections matchingString:stringCopy maxResults:results];

  return v8;
}

- (id)podcastStationsMatchingString:(id)string maxResults:(int64_t)results
{
  stringCopy = string;
  podcastStations = [(PODataSource *)self podcastStations];
  v8 = [(PODataSource *)self podcastModelObjectsInArray:podcastStations matchingString:stringCopy maxResults:results];

  return v8;
}

- (id)podcastCollectionWithUUID:(id)d
{
  dCopy = d;
  podcastCollectionsByUUID = [(PODataSource *)self podcastCollectionsByUUID];
  v6 = [podcastCollectionsByUUID objectForKeyedSubscript:dCopy];

  return v6;
}

- (id)podcastCollections
{
  podcastCollectionsByUUID = [(PODataSource *)self podcastCollectionsByUUID];
  allValues = [podcastCollectionsByUUID allValues];

  return allValues;
}

- (id)podcastStationWithUUID:(id)d
{
  dCopy = d;
  podcastStationsByUUID = [(PODataSource *)self podcastStationsByUUID];
  v6 = [podcastStationsByUUID objectForKeyedSubscript:dCopy];

  return v6;
}

- (id)podcastStations
{
  podcastStationsByUUID = [(PODataSource *)self podcastStationsByUUID];
  allValues = [podcastStationsByUUID allValues];

  return allValues;
}

- (id)podcastRevisionsSinceAnchor:(unint64_t)anchor
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  podcastRevisions = [(PODataSource *)self podcastRevisions];
  v7 = [podcastRevisions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(podcastRevisions);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 revisionID] >= anchor)
        {
          [array addObject:v11];
        }
      }

      v8 = [podcastRevisions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)domainObjectWithUUID:(id)d
{
  dCopy = d;
  podcastCollectionsByUUID = [(PODataSource *)self podcastCollectionsByUUID];
  v6 = [podcastCollectionsByUUID objectForKeyedSubscript:dCopy];

  if (!v6)
  {
    podcastStationsByUUID = [(PODataSource *)self podcastStationsByUUID];
    v6 = [podcastStationsByUUID objectForKeyedSubscript:dCopy];
  }

  sAMPCollection = [v6 SAMPCollection];

  return sAMPCollection;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  podcastCollectionsByUUID = [(PODataSource *)self podcastCollectionsByUUID];
  podcastStationsByUUID = [(PODataSource *)self podcastStationsByUUID];
  v8 = [v3 stringWithFormat:@"%@ (%p) podcast collections: %@, podcast stations: %@", v5, self, podcastCollectionsByUUID, podcastStationsByUUID];

  return v8;
}

- (void)arrayFromPlistURL:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_25E9F0000, v1, OS_LOG_TYPE_ERROR, "Error reading plist at %@: %@", v2, 0x16u);
}

- (void)arrayFromPlistURL:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_25E9F0000, v1, OS_LOG_TYPE_FAULT, "Error reading plist from path: %@ - with error: %@", v2, 0x16u);
}

- (void)_withExtensionParseDataDictionary:(os_log_t)log revisionDictionary:.cold.4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_25E9F0000, log, OS_LOG_TYPE_ERROR, "Unable to get UUID for first revision.", buf, 2u);
}

@end