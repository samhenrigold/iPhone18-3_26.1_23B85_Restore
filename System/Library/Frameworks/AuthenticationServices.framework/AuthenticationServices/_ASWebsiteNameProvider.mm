@interface _ASWebsiteNameProvider
+ (BOOL)_candidateWebsiteNameHasObviousFlaw:(id)flaw;
+ (id)_bestTitleFromCandidateTitles:(id)titles;
+ (id)_candidateWebsiteNameForLinkMetadata:(id)metadata;
+ (id)_siteNameFromOpenGraphSiteName:(id)name withURL:(id)l;
+ (id)_siteNameFromTitle:(id)title withURL:(id)l;
+ (id)_siteNameFromTitleLikeString:(id)string withURL:(id)l useHostAndTitlePrefixMatch:(BOOL)match;
+ (id)_trimErrantLeadingAndTrailingCharacters:(id)characters;
+ (id)_undesirableCharactersCharacterSet;
+ (id)siteNameForDomain:(id)domain fromBusinessName:(id)name title:(id)title openGraphSiteName:(id)siteName applicationName:(id)applicationName;
+ (id)websiteNameForLinkMetadata:(id)metadata;
+ (uint64_t)_undesirableCharactersCharacterSet;
+ (void)fetchWebsiteNameForDomain:(id)domain completionHandler:(id)handler;
- (BOOL)_canRefreshDataForDateLastRefreshed:(id)refreshed;
- (BOOL)_openDatabaseIfNeeded;
- (id)_initWithShouldLoadQuirksList:(BOOL)list;
- (id)knownWebsiteNameForDomain:(id)domain;
- (id)test_initWithWebsiteNameDictionary:(id)dictionary;
- (void)_cacheDatabaseBackedWebsiteName:(id)name forDomain:(id)domain;
- (void)_cacheFetchedAndKeychainBackedWebsiteName:(id)name forDomain:(id)domain dateLastRefreshed:(id)refreshed;
- (void)_fetchDataForDomainIfNeeded:(id)needed metadataEntry:(id)entry;
- (void)_processMetadataEntryFetchedFromKeychain:(id)keychain forDomain:(id)domain allowRefreshingDataFromNetwork:(BOOL)network;
- (void)_suspendOrResumeWebsiteFetchingOperationQueue;
- (void)beginLoadingBuiltInAndRemotelyUpdatableWebsiteNames;
- (void)dealloc;
- (void)debug_fetchWebsiteNamesForDomains:(id)domains completionHandler:(id)handler;
- (void)fetchOperation:(id)operation finishedWithResult:(id)result completion:(id)completion;
- (void)prewarm;
- (void)setIsForTesting:(BOOL)testing;
- (void)setWebsiteNameConsumer:(id)consumer completion:(id)completion;
- (void)test_waitUntilBuiltInAndRemotelyUpdatableWebsiteNamesAreLoaded;
@end

@implementation _ASWebsiteNameProvider

- (void)_suspendOrResumeWebsiteFetchingOperationQueue
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_isForTesting)
  {
    shouldFetchPasswordManagerWebsiteDataUsingPrivacyProxy = [(WBSPrivacyProxyAvailabilityManager *)self->_availabilityManager shouldFetchPasswordManagerWebsiteDataUsingPrivacyProxy];
    v4 = shouldFetchPasswordManagerWebsiteDataUsingPrivacyProxy;
    v6 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider(shouldFetchPasswordManagerWebsiteDataUsingPrivacyProxy, v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v7)
    {
      v15 = 67109120;
      v16 = v4;
      _os_log_impl(&dword_1B1C8D000, v6, OS_LOG_TYPE_INFO, "_ASWebsiteNameProvider shouldFetchPasswordManagerWebsiteDataUsingPrivacyProxy: %d", &v15, 8u);
    }

    websiteNameConsumer = self->_websiteNameConsumer;
    v10 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider(v7, v8);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v11)
    {
      v15 = 67109120;
      v16 = websiteNameConsumer != 0;
      _os_log_impl(&dword_1B1C8D000, v10, OS_LOG_TYPE_INFO, "_ASWebsiteNameProvider consumerExists: %d", &v15, 8u);
    }

    v13 = (websiteNameConsumer != 0) & v4;
    v14 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = 67109120;
      v16 = v13;
      _os_log_impl(&dword_1B1C8D000, v14, OS_LOG_TYPE_INFO, "_ASWebsiteNameProvider allowing fetching: %d", &v15, 8u);
    }

    [(NSOperationQueue *)self->_websiteFetchingQueue setSuspended:v13 ^ 1u];
  }
}

- (void)beginLoadingBuiltInAndRemotelyUpdatableWebsiteNames
{
  remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77___ASWebsiteNameProvider_beginLoadingBuiltInAndRemotelyUpdatableWebsiteNames__block_invoke;
  v3[3] = &unk_1E7AF8188;
  v3[4] = self;
  [(WBSRemotelyUpdatableDataController *)remotelyUpdatableDataController accessSnapshotLoadingItIfNeeded:v3];
}

- (void)prewarm
{
  websiteMetadataStore = self->_websiteMetadataStore;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33___ASWebsiteNameProvider_prewarm__block_invoke;
  v3[3] = &unk_1E7AF8138;
  v3[4] = self;
  [(WBSPasswordManagerWebsiteMetadataStore *)websiteMetadataStore allMetadataWithCompletionHandler:v3];
}

- (id)test_initWithWebsiteNameDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(_ASWebsiteNameProvider *)self _initWithShouldLoadQuirksList:0];
  v6 = v5[2];
  v5[2] = dictionaryCopy;

  return v5;
}

- (id)_initWithShouldLoadQuirksList:(BOOL)list
{
  listCopy = list;
  v46.receiver = self;
  v46.super_class = _ASWebsiteNameProvider;
  v4 = [(_ASWebsiteNameProvider *)&v46 init];
  if (!v4)
  {
    goto LABEL_16;
  }

  if (listCopy)
  {
    v5 = objc_alloc(MEMORY[0x1E69C89E0]);
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    safari_autoFillQuirksDownloadDirectoryURL = [defaultManager safari_autoFillQuirksDownloadDirectoryURL];
    v8 = objc_opt_class();
    v9 = [v5 initWithDataFormat:1 builtInListURL:0 downloadsDirectoryURL:safari_autoFillQuirksDownloadDirectoryURL resourceName:@"WebsiteNamesForPasswordManager" resourceVersion:@"1" updateDateDefaultsKey:@"WebsiteNameProviderLastUpdateTime" updateInterval:86400.0 snapshotClass:v8 snapshotTransformerClass:objc_opt_class()];
    remotelyUpdatableDataController = v4->_remotelyUpdatableDataController;
    v4->_remotelyUpdatableDataController = v9;

    [(WBSRemotelyUpdatableDataController *)v4->_remotelyUpdatableDataController setDelegate:v4];
    [(WBSRemotelyUpdatableDataController *)v4->_remotelyUpdatableDataController setShouldAttemptToUpdateConfiguration:1];
    v11 = dispatch_get_global_queue(17, 0);
    v12 = dispatch_queue_create_with_target_V2("com.apple.AuthenticationServices._ASWebsiteNameProvider._databaseQueue", 0, v11);
    databaseQueue = v4->_databaseQueue;
    v4->_databaseQueue = v12;

    v14 = v4->_databaseQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56___ASWebsiteNameProvider__initWithShouldLoadQuirksList___block_invoke;
    block[3] = &unk_1E7AF80E8;
    v45 = v4;
    dispatch_async(v14, block);
  }

  v15 = objc_opt_new();
  websiteFetchingQueue = v4->_websiteFetchingQueue;
  v4->_websiteFetchingQueue = v15;

  [(NSOperationQueue *)v4->_websiteFetchingQueue setQualityOfService:17];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.%@.%p.websiteFetchingQueue", objc_opt_class(), v4];
  [(NSOperationQueue *)v4->_websiteFetchingQueue setName:v17];

  [(NSOperationQueue *)v4->_websiteFetchingQueue setMaxConcurrentOperationCount:3];
  v18 = [objc_alloc(MEMORY[0x1E69C8988]) initWithMetadataEntryClass:objc_opt_class()];
  websiteMetadataStore = v4->_websiteMetadataStore;
  v4->_websiteMetadataStore = v18;

  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cachedWebsiteNamesFromDatabase = v4->_cachedWebsiteNamesFromDatabase;
  v4->_cachedWebsiteNamesFromDatabase = v20;

  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cachedWebsiteNamesFromKeychain = v4->_cachedWebsiteNamesFromKeychain;
  v4->_cachedWebsiteNamesFromKeychain = v22;

  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cachedDomainToDateLastRefreshed = v4->_cachedDomainToDateLastRefreshed;
  v4->_cachedDomainToDateLastRefreshed = v24;

  if (isProcessAllowedToFetchWebsiteNames(void)::onceToken != -1)
  {
    [_ASWebsiteNameProvider _initWithShouldLoadQuirksList:];
  }

  if (isProcessAllowedToFetchWebsiteNames(void)::isProcessAllowedToFetchWebsiteNames != 1)
  {
LABEL_15:
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __56___ASWebsiteNameProvider__initWithShouldLoadQuirksList___block_invoke_2;
    v42[3] = &unk_1E7AF80E8;
    v35 = v4;
    v43 = v35;
    dispatch_async(MEMORY[0x1E69E96A0], v42);
    v36 = dispatch_queue_create("com.apple.AuthenticationServices._ASWebsiteNameProvider", 0);
    internalQueueForCachedWebsiteNames = v35->_internalQueueForCachedWebsiteNames;
    v35->_internalQueueForCachedWebsiteNames = v36;

    v38 = v35;
LABEL_16:

    return v4;
  }

  v52 = 0;
  v53 = &v52;
  v54 = 0x2050000000;
  v26 = getWBSPrivacyProxyAvailabilityManagerClass(void)::softClass;
  v55 = getWBSPrivacyProxyAvailabilityManagerClass(void)::softClass;
  if (!getWBSPrivacyProxyAvailabilityManagerClass(void)::softClass)
  {
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = ___ZL42getWBSPrivacyProxyAvailabilityManagerClassv_block_invoke;
    v50 = &unk_1E7AF8438;
    v51 = &v52;
    ___ZL42getWBSPrivacyProxyAvailabilityManagerClassv_block_invoke(&v47);
    v26 = v53[3];
  }

  v27 = v26;
  _Block_object_dispose(&v52, 8);
  sharedManager = [v26 sharedManager];
  availabilityManager = v4->_availabilityManager;
  v4->_availabilityManager = sharedManager;

  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v30 = getWBSPrivacyProxyChangeNotificationSymbolLoc(void)::ptr;
  v55 = getWBSPrivacyProxyChangeNotificationSymbolLoc(void)::ptr;
  if (!getWBSPrivacyProxyChangeNotificationSymbolLoc(void)::ptr)
  {
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = ___ZL45getWBSPrivacyProxyChangeNotificationSymbolLocv_block_invoke;
    v50 = &unk_1E7AF8438;
    v51 = &v52;
    v31 = SafariSharedUILibrary();
    v32 = dlsym(v31, "WBSPrivacyProxyChangeNotification");
    *(v51[1] + 24) = v32;
    getWBSPrivacyProxyChangeNotificationSymbolLoc(void)::ptr = *(v51[1] + 24);
    v30 = v53[3];
  }

  _Block_object_dispose(&v52, 8);
  if (v30)
  {
    v33 = *v30;
    if (v33)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v4 selector:sel__privacyProxyDidChange_ name:v33 object:v4->_availabilityManager];
    }

    goto LABEL_15;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSNotificationName getWBSPrivacyProxyChangeNotification()"];
  [currentHandler handleFailureInFunction:v41 file:@"_ASSafariSharedUISoftLinking.h" lineNumber:24 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (void)dealloc
{
  [(WBSRemotelyUpdatableDataController *)self->_remotelyUpdatableDataController prepareForTermination];
  v3 = self->_database;
  v4 = v3;
  if (v3)
  {
    databaseQueue = self->_databaseQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33___ASWebsiteNameProvider_dealloc__block_invoke;
    block[3] = &unk_1E7AF80E8;
    v8 = v3;
    dispatch_async(databaseQueue, block);
  }

  v6.receiver = self;
  v6.super_class = _ASWebsiteNameProvider;
  [(_ASWebsiteNameProvider *)&v6 dealloc];
}

- (void)test_waitUntilBuiltInAndRemotelyUpdatableWebsiteNamesAreLoaded
{
  [(WBSRemotelyUpdatableDataController *)self->_remotelyUpdatableDataController accessCurrentSnapshot:&__block_literal_global_11];
  databaseQueue = self->_databaseQueue;

  dispatch_sync(databaseQueue, &__block_literal_global_102);
}

- (void)debug_fetchWebsiteNamesForDomains:(id)domains completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  handlerCopy = handler;
  [(NSOperationQueue *)self->_websiteFetchingQueue setSuspended:0];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = domainsCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [[_ASWebsiteNameFetchOperation alloc] initWithDomain:*(*(&v19 + 1) + 8 * v11) metadataEntry:0 provider:self];
        [(NSOperationQueue *)self->_websiteFetchingQueue addOperation:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  objc_initWeak(&location, self);
  websiteFetchingQueue = self->_websiteFetchingQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78___ASWebsiteNameProvider_debug_fetchWebsiteNamesForDomains_completionHandler___block_invoke;
  v15[3] = &unk_1E7AF81D0;
  objc_copyWeak(&v17, &location);
  v14 = handlerCopy;
  v16 = v14;
  [(NSOperationQueue *)websiteFetchingQueue addBarrierBlock:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)setIsForTesting:(BOOL)testing
{
  if (self->_isForTesting != testing)
  {
    self->_isForTesting = testing;
    if (testing)
    {
      [(NSOperationQueue *)self->_websiteFetchingQueue setSuspended:0];
    }
  }
}

+ (id)_undesirableCharactersCharacterSet
{
  if (_MergedGlobals == 1)
  {
    v4 = qword_1EB7761F0;
  }

  else
  {
    v6[1] = v2;
    v7 = v3;
    +[(_ASWebsiteNameProvider *)v6];
    v4 = v6[0];
  }

  return v4;
}

+ (id)_bestTitleFromCandidateTitles:(id)titles
{
  titlesCopy = titles;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56___ASWebsiteNameProvider__bestTitleFromCandidateTitles___block_invoke;
  aBlock[3] = &__block_descriptor_40_e18_q16__0__NSString_8l;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56___ASWebsiteNameProvider__bestTitleFromCandidateTitles___block_invoke_2;
  v9[3] = &unk_1E7AF8238;
  v10 = v5;
  v6 = v5;
  v7 = [titlesCopy safari_maximumUsingComparator:v9];

  return v7;
}

+ (id)siteNameForDomain:(id)domain fromBusinessName:(id)name title:(id)title openGraphSiteName:(id)siteName applicationName:(id)applicationName
{
  nameCopy = name;
  titleCopy = title;
  siteNameCopy = siteName;
  applicationNameCopy = applicationName;
  v15 = MEMORY[0x1E695DFF8];
  v28 = nameCopy;
  v16 = [@"https://" stringByAppendingString:domain];
  v17 = [v15 URLWithString:v16];

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = [self _siteNameFromTitle:nameCopy withURL:v17];
  if (([self _candidateWebsiteNameHasObviousFlaw:v19] & 1) == 0)
  {
    v20 = [self _trimErrantLeadingAndTrailingCharacters:v19];
    [v18 addObject:v20];
  }

  v21 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  [v21 setOriginalURL:v17];
  [v21 setTitle:titleCopy];
  [v21 setSiteName:siteNameCopy];
  v22 = [self _candidateWebsiteNameForLinkMetadata:v21];
  if (([self _candidateWebsiteNameHasObviousFlaw:v22] & 1) == 0)
  {
    v23 = [self _trimErrantLeadingAndTrailingCharacters:v22];
    [v18 addObject:v23];
  }

  v24 = [self _siteNameFromTitle:applicationNameCopy withURL:v17];
  if (([self _candidateWebsiteNameHasObviousFlaw:v24] & 1) == 0)
  {
    v25 = [self _trimErrantLeadingAndTrailingCharacters:v24];
    [v18 addObject:v25];
  }

  v26 = [self _bestTitleFromCandidateTitles:v18];

  return v26;
}

+ (void)fetchWebsiteNameForDomain:(id)domain completionHandler:(id)handler
{
  domainCopy = domain;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x1E696ECE0]);
  [v8 setTimeout:5.0];
  [v8 setShouldFetchSubresources:0];
  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    [v8 setSourceApplicationSecondaryIdentifierForRequiringPrivacyProxyFailingClosed:@"com.apple.Passwords.PRIconFetching"];
    v11 = MEMORY[0x1E695DFF8];
    v12 = [@"https://" stringByAppendingString:domainCopy];
    v13 = [v11 URLWithString:v12];

    v16 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [_ASWebsiteNameProvider fetchWebsiteNameForDomain:domainCopy completionHandler:v16];
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70___ASWebsiteNameProvider_fetchWebsiteNameForDomain_completionHandler___block_invoke;
    v18[3] = &unk_1E7AF8260;
    v19 = domainCopy;
    v20 = handlerCopy;
    selfCopy = self;
    [v8 startFetchingMetadataForURL:v13 completionHandler:v18];
  }

  else
  {
    v17 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider(v9, v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_ASWebsiteNameProvider fetchWebsiteNameForDomain:domainCopy completionHandler:v17];
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

+ (id)_candidateWebsiteNameForLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  siteName = [metadataCopy siteName];
  if (siteName)
  {
    originalURL = [metadataCopy originalURL];
    originalTitle = [self _siteNameFromOpenGraphSiteName:siteName withURL:originalURL];

    if (originalTitle)
    {
      v8 = originalTitle;
    }

    else
    {
      v8 = siteName;
    }

    v9 = v8;
  }

  else
  {
    originalTitle = [metadataCopy originalTitle];
    if (!originalTitle && ([metadataCopy title], (originalTitle = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(metadataCopy, "originalURL"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "_siteNameFromTitle:withURL:", originalTitle, v10), v9 = objc_claimAutoreleasedReturnValue(), v10, !v9))
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (BOOL)_candidateWebsiteNameHasObviousFlaw:(id)flaw
{
  v20 = *MEMORY[0x1E69E9840];
  flawCopy = flaw;
  v4 = [flawCopy length];
  if (v4 - 33 >= 0xFFFFFFFFFFFFFFE0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [&unk_1F28F04B8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v7)
    {
      v5 = 0;
      goto LABEL_3;
    }

    v8 = *v16;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(&unk_1F28F04B8);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      v11 = [v10 length];
      if (v4 >= v11)
      {
        v12 = [flawCopy substringToIndex:v11];
        lowercaseString = [v12 lowercaseString];
        v14 = [v10 isEqualToString:lowercaseString];

        if (v14)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [&unk_1F28F04B8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v5 = 0;
        if (v7)
        {
          goto LABEL_6;
        }

        goto LABEL_3;
      }
    }
  }

  v5 = 1;
LABEL_3:

  return v5;
}

+ (id)_trimErrantLeadingAndTrailingCharacters:(id)characters
{
  v45 = *MEMORY[0x1E69E9840];
  safari_stringByTrimmingWhitespace = [characters safari_stringByTrimmingWhitespace];
  _commonTitleDelimiters = [self _commonTitleDelimiters];
  v6 = _commonTitleDelimiters;
  v7 = +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::prefixesToRemove;
  if (!+[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::prefixesToRemove)
  {
    v8 = [_commonTitleDelimiters safari_mapObjectsUsingBlock:&__block_literal_global_144];
    v9 = [v8 arrayByAddingObjectsFromArray:v6];
    v10 = +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::prefixesToRemove;
    +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::prefixesToRemove = v9;

    v7 = +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::prefixesToRemove;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v12)
  {
    v13 = *v40;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [safari_stringByTrimmingWhitespace safari_substringFromPrefix:*(*(&v39 + 1) + 8 * i)];
        if (v15)
        {

          safari_stringByTrimmingWhitespace = v15;
          goto LABEL_13;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if (!+[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::suffixesToRemove)
  {
    _commonTitleDelimiters2 = [self _commonTitleDelimiters];
    v17 = [_commonTitleDelimiters2 safari_mapObjectsUsingBlock:&__block_literal_global_146];
    v18 = [v17 arrayByAddingObjectsFromArray:v6];
    v19 = +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::suffixesToRemove;
    +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::suffixesToRemove = v18;

    v20 = [+[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::suffixesToRemove arrayByAddingObjectsFromArray:&unk_1F28F04D0];
    v21 = +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::suffixesToRemove;
    +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::suffixesToRemove = v20;
  }

  v22 = [safari_stringByTrimmingWhitespace length];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = +[_ASWebsiteNameProvider _trimErrantLeadingAndTrailingCharacters:]::suffixesToRemove;
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v24)
  {
    v25 = *v36;
    while (2)
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v35 + 1) + 8 * j);
        v28 = [v27 length];
        v29 = v22 - v28;
        if (v22 > v28)
        {
          v30 = [safari_stringByTrimmingWhitespace substringFromIndex:v29];
          v31 = [v27 isEqualToString:v30];

          if (v31)
          {
            v32 = [safari_stringByTrimmingWhitespace substringWithRange:{0, v29}];
            safari_stringByTrimmingWhitespace2 = [v32 safari_stringByTrimmingWhitespace];

            safari_stringByTrimmingWhitespace = safari_stringByTrimmingWhitespace2;
            goto LABEL_26;
          }
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  return safari_stringByTrimmingWhitespace;
}

+ (id)websiteNameForLinkMetadata:(id)metadata
{
  v4 = [self _candidateWebsiteNameForLinkMetadata:metadata];
  if ([self _candidateWebsiteNameHasObviousFlaw:v4])
  {
    v5 = 0;
  }

  else
  {
    v5 = [self _trimErrantLeadingAndTrailingCharacters:v4];
  }

  return v5;
}

+ (id)_siteNameFromOpenGraphSiteName:(id)name withURL:(id)l
{
  v4 = [self _siteNameFromTitleLikeString:name withURL:l useHostAndTitlePrefixMatch:0];

  return v4;
}

+ (id)_siteNameFromTitle:(id)title withURL:(id)l
{
  v4 = [self _siteNameFromTitleLikeString:title withURL:l useHostAndTitlePrefixMatch:1];

  return v4;
}

+ (id)_siteNameFromTitleLikeString:(id)string withURL:(id)l useHostAndTitlePrefixMatch:(BOOL)match
{
  matchCopy = match;
  v71 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  lCopy = l;
  _lp_highLevelDomain = [lCopy _lp_highLevelDomain];
  v8 = _lp_highLevelDomain;
  if (!_lp_highLevelDomain)
  {
    v8 = [lCopy _lp_simplifiedStringForDisplayOnly:0];
  }

  lowercaseString = [v8 lowercaseString];
  if (!_lp_highLevelDomain)
  {
  }

  _lp_hostByStrippingTopLevelDomain = [lowercaseString _lp_hostByStrippingTopLevelDomain];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  _commonTitleDelimiters = [self _commonTitleDelimiters];
  obj = _commonTitleDelimiters;
  v11 = [_commonTitleDelimiters countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (v11)
  {
    v61 = 0;
    v63 = *v67;
    v12 = 0.0;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v67 != v63)
        {
          objc_enumerationMutation(obj);
        }

        lowercaseString6 = [stringCopy componentsSeparatedByString:*(*(&v66 + 1) + 8 * i)];
        v15 = [lowercaseString6 count];
        if (v15 >= 3)
        {
          v16 = [lowercaseString6 objectAtIndexedSubscript:0];
          whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v18 = [v16 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

          lowercaseString2 = [v18 lowercaseString];
          LOBYTE(whitespaceCharacterSet) = [lowercaseString2 isEqualToString:_lp_hostByStrippingTopLevelDomain];

          if (whitespaceCharacterSet)
          {
            goto LABEL_57;
          }

          v20 = [lowercaseString6 objectAtIndexedSubscript:v15 - 1];
          whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v22 = [v20 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

          lowercaseString3 = [v22 lowercaseString];
          v24 = [lowercaseString3 isEqualToString:_lp_hostByStrippingTopLevelDomain];

          v25 = v24 ? 0 : v22;
          if (v24)
          {
            v48 = stringCopy;
            v18 = v22;
            goto LABEL_58;
          }
        }

        if ([lowercaseString6 count] == 2)
        {
          whitespaceCharacterSet3 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v27 = [lowercaseString6 objectAtIndexedSubscript:0];
          v28 = [v27 stringByTrimmingCharactersInSet:whitespaceCharacterSet3];

          v29 = [lowercaseString6 objectAtIndexedSubscript:1];
          v30 = [v29 stringByTrimmingCharactersInSet:whitespaceCharacterSet3];

          lowercaseString4 = [v28 lowercaseString];
          lowercaseString5 = [v30 lowercaseString];
          [lowercaseString4 _lp_similarityToString:lowercaseString];
          v34 = v33;
          [lowercaseString4 _lp_similarityToString:_lp_hostByStrippingTopLevelDomain];
          if (v34 <= v35)
          {
            v36 = _lp_hostByStrippingTopLevelDomain;
          }

          else
          {
            v36 = lowercaseString;
          }

          [lowercaseString4 _lp_similarityToString:v36];
          v38 = v37;
          [lowercaseString5 _lp_similarityToString:lowercaseString];
          v40 = v39;
          [lowercaseString5 _lp_similarityToString:_lp_hostByStrippingTopLevelDomain];
          if (v40 <= v41)
          {
            v42 = _lp_hostByStrippingTopLevelDomain;
          }

          else
          {
            v42 = lowercaseString;
          }

          [lowercaseString5 _lp_similarityToString:v42];
          if (v38 <= v43)
          {
            v44 = v43;
          }

          else
          {
            v44 = v38;
          }

          if (v44 <= v12)
          {
            v44 = v12;
          }

          else
          {
            if (v38 <= v43)
            {
              v45 = v30;
            }

            else
            {
              v45 = v28;
            }

            v46 = v45;

            v61 = v46;
          }

          v12 = v44;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    if (v61 && v12 >= 0.6)
    {
      v18 = v61;
      goto LABEL_60;
    }
  }

  else
  {

    v61 = 0;
  }

  uppercaseString = [lowercaseString uppercaseString];
  if ([uppercaseString isEqualToString:stringCopy] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", stringCopy))
  {
    v18 = 0;
  }

  else
  {
    v49 = [stringCopy length];
    obj = uppercaseString;
    if (v49 < [lowercaseString length] || ((objc_msgSend(stringCopy, "substringToIndex:", objc_msgSend(lowercaseString, "length")), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "lowercaseString"), v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "isEqualToString:", lowercaseString), v50, !v51) ? (v52 = v18) : (v52 = 0), v52, (v51 & 1) == 0))
    {
      v53 = [stringCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_1F28DE020];
      lowercaseString6 = [v53 lowercaseString];

      if ([lowercaseString6 isEqualToString:_lp_hostByStrippingTopLevelDomain])
      {
        v48 = 0;
        v18 = stringCopy;
      }

      else
      {
        if (!matchCopy || (v54 = [stringCopy length], v54 < objc_msgSend(_lp_hostByStrippingTopLevelDomain, "length")) || ((objc_msgSend(stringCopy, "substringToIndex:", objc_msgSend(_lp_hostByStrippingTopLevelDomain, "length")), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "lowercaseString"), v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v55, "isEqualToString:", _lp_hostByStrippingTopLevelDomain), v55, !v56) ? (v57 = v18) : (v57 = 0), v57, (v56 & 1) == 0))
        {
          v18 = 0;
        }

LABEL_57:
        v48 = stringCopy;
      }

LABEL_58:

      stringCopy = v48;
      uppercaseString = obj;
    }
  }

LABEL_60:

  return v18;
}

- (BOOL)_openDatabaseIfNeeded
{
  if (self->_database)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    databaseQueue = self->_databaseQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47___ASWebsiteNameProvider__openDatabaseIfNeeded__block_invoke;
    v5[3] = &unk_1E7AF82A8;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(databaseQueue, v5);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)setWebsiteNameConsumer:(id)consumer completion:(id)completion
{
  consumerCopy = consumer;
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___ASWebsiteNameProvider_setWebsiteNameConsumer_completion___block_invoke;
  block[3] = &unk_1E7AF82D0;
  block[4] = self;
  v11 = consumerCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = consumerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)knownWebsiteNameForDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy length])
  {
    v6 = [(_ASWebsiteNameDictionary *)self->_websiteNameDictionary websiteNameForDomain:domainCopy];
    if (v6)
    {
      goto LABEL_21;
    }

    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__0;
    v51 = __Block_byref_object_dispose__0;
    v52 = 0;
    internalQueueForCachedWebsiteNames = self->_internalQueueForCachedWebsiteNames;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52___ASWebsiteNameProvider_knownWebsiteNameForDomain___block_invoke;
    block[3] = &unk_1E7AF82F8;
    v46 = &v47;
    block[4] = self;
    v8 = domainCopy;
    v45 = v8;
    dispatch_sync(internalQueueForCachedWebsiteNames, block);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v48[5];
LABEL_20:

      _Block_object_dispose(&v47, 8);
      goto LABEL_21;
    }

    if ([(_ASWebsiteNameProvider *)self _openDatabaseIfNeeded])
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = __Block_byref_object_copy__0;
      v42 = __Block_byref_object_dispose__0;
      v43 = 0;
      databaseQueue = self->_databaseQueue;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __52___ASWebsiteNameProvider_knownWebsiteNameForDomain___block_invoke_2;
      v35[3] = &unk_1E7AF8320;
      v35[4] = self;
      v11 = v8;
      v36 = v11;
      v37 = &v38;
      dispatch_sync(databaseQueue, v35);
      [(_ASWebsiteNameProvider *)self _cacheDatabaseBackedWebsiteName:v39[5] forDomain:v11];
      v12 = v39[5];
      if (v12)
      {
        v6 = v12;
        v13 = v36;
LABEL_19:

        _Block_object_dispose(&v38, 8);
        goto LABEL_20;
      }

      _Block_object_dispose(&v38, 8);
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__0;
    v42 = __Block_byref_object_dispose__0;
    v43 = 0;
    v14 = self->_internalQueueForCachedWebsiteNames;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __52___ASWebsiteNameProvider_knownWebsiteNameForDomain___block_invoke_3;
    v32[3] = &unk_1E7AF82F8;
    v34 = &v38;
    v32[4] = self;
    v15 = v8;
    v33 = v15;
    dispatch_sync(v14, v32);
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = 0;
    v16 = self->_internalQueueForCachedWebsiteNames;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __52___ASWebsiteNameProvider_knownWebsiteNameForDomain___block_invoke_4;
    v23[3] = &unk_1E7AF82F8;
    v25 = &v26;
    v23[4] = self;
    v17 = v15;
    v24 = v17;
    dispatch_sync(v16, v23);
    if (!v27[5] || [(_ASWebsiteNameProvider *)self _canRefreshDataForDateLastRefreshed:?])
    {
      websiteMetadataStore = self->_websiteMetadataStore;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __52___ASWebsiteNameProvider_knownWebsiteNameForDomain___block_invoke_5;
      v21[3] = &unk_1E7AF8348;
      v21[4] = self;
      v22 = v17;
      [(WBSPasswordManagerWebsiteMetadataStore *)websiteMetadataStore metadataForDomain:v22 completionHandler:v21];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v39[5];
    }

    else
    {
      v19 = 0;
    }

    v6 = v19;

    _Block_object_dispose(&v26, 8);
    v13 = v33;
    goto LABEL_19;
  }

  v9 = WBS_LOG_CHANNEL_PREFIXWebsiteNameProvider(0, v5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [_ASWebsiteNameProvider knownWebsiteNameForDomain:v9];
  }

  v6 = 0;
LABEL_21:

  return v6;
}

- (void)fetchOperation:(id)operation finishedWithResult:(id)result completion:(id)completion
{
  operationCopy = operation;
  resultCopy = result;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71___ASWebsiteNameProvider_fetchOperation_finishedWithResult_completion___block_invoke;
  v14[3] = &unk_1E7AF8398;
  v15 = operationCopy;
  v16 = resultCopy;
  selfCopy = self;
  v18 = completionCopy;
  v11 = completionCopy;
  v12 = resultCopy;
  v13 = operationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

- (void)_processMetadataEntryFetchedFromKeychain:(id)keychain forDomain:(id)domain allowRefreshingDataFromNetwork:(BOOL)network
{
  keychainCopy = keychain;
  domainCopy = domain;
  websiteName = [keychainCopy websiteName];
  websiteNameDateLastRefreshed = [keychainCopy websiteNameDateLastRefreshed];
  [(_ASWebsiteNameProvider *)self _cacheFetchedAndKeychainBackedWebsiteName:websiteName forDomain:domainCopy dateLastRefreshed:websiteNameDateLastRefreshed];

  if (isProcessAllowedToFetchWebsiteNames(void)::onceToken != -1)
  {
    [_ASWebsiteNameProvider _processMetadataEntryFetchedFromKeychain:forDomain:allowRefreshingDataFromNetwork:];
  }

  if (isProcessAllowedToFetchWebsiteNames(void)::isProcessAllowedToFetchWebsiteNames == 1 && network && [MEMORY[0x1E69C8880] isNetworkFetchingForPasswordsEnabled])
  {
    [(_ASWebsiteNameProvider *)self _fetchDataForDomainIfNeeded:domainCopy metadataEntry:keychainCopy];
  }
}

- (BOOL)_canRefreshDataForDateLastRefreshed:(id)refreshed
{
  refreshedCopy = refreshed;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:v5 options:0];

  if (refreshedCopy)
  {
    v7 = [refreshedCopy safari_isEarlierThanDate:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_fetchDataForDomainIfNeeded:(id)needed metadataEntry:(id)entry
{
  neededCopy = needed;
  entryCopy = entry;
  websiteNameDateLastRefreshed = [entryCopy websiteNameDateLastRefreshed];
  v9 = [(_ASWebsiteNameProvider *)self _canRefreshDataForDateLastRefreshed:websiteNameDateLastRefreshed];

  if (v9)
  {
    operations = [(NSOperationQueue *)self->_websiteFetchingQueue operations];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68___ASWebsiteNameProvider__fetchDataForDomainIfNeeded_metadataEntry___block_invoke;
    v14[3] = &unk_1E7AF83C0;
    v11 = neededCopy;
    v15 = v11;
    v12 = [operations safari_containsObjectPassingTest:v14];

    if ((v12 & 1) == 0 && ([v11 safari_looksLikeIPAddress] & 1) == 0)
    {
      v13 = [[_ASWebsiteNameFetchOperation alloc] initWithDomain:v11 metadataEntry:entryCopy provider:self];
      [(NSOperationQueue *)self->_websiteFetchingQueue addOperation:v13];
    }
  }
}

- (void)_cacheDatabaseBackedWebsiteName:(id)name forDomain:(id)domain
{
  nameCopy = name;
  domainCopy = domain;
  internalQueueForCachedWebsiteNames = self->_internalQueueForCachedWebsiteNames;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___ASWebsiteNameProvider__cacheDatabaseBackedWebsiteName_forDomain___block_invoke;
  block[3] = &unk_1E7AF83E8;
  v12 = nameCopy;
  selfCopy = self;
  v14 = domainCopy;
  v9 = domainCopy;
  v10 = nameCopy;
  dispatch_async(internalQueueForCachedWebsiteNames, block);
}

- (void)_cacheFetchedAndKeychainBackedWebsiteName:(id)name forDomain:(id)domain dateLastRefreshed:(id)refreshed
{
  nameCopy = name;
  domainCopy = domain;
  refreshedCopy = refreshed;
  internalQueueForCachedWebsiteNames = self->_internalQueueForCachedWebsiteNames;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96___ASWebsiteNameProvider__cacheFetchedAndKeychainBackedWebsiteName_forDomain_dateLastRefreshed___block_invoke;
  v15[3] = &unk_1E7AF8410;
  v16 = nameCopy;
  selfCopy = self;
  v18 = domainCopy;
  v19 = refreshedCopy;
  v12 = refreshedCopy;
  v13 = domainCopy;
  v14 = nameCopy;
  dispatch_async(internalQueueForCachedWebsiteNames, v15);
}

+ (uint64_t)_undesirableCharactersCharacterSet
{
  result = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"©®™℠"];
  *self = result;
  qword_1EB7761F0 = result;
  _MergedGlobals = 1;
  return result;
}

+ (void)fetchWebsiteNameForDomain:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&dword_1B1C8D000, a2, OS_LOG_TYPE_ERROR, "Fetch for %{sensitive}@ intentionally failed due to absence of underlying platform support.", &v2, 0xCu);
}

+ (void)fetchWebsiteNameForDomain:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138739971;
  v3 = a1;
  _os_log_debug_impl(&dword_1B1C8D000, a2, OS_LOG_TYPE_DEBUG, "Starting fetch for %{sensitive}@\n", &v2, 0xCu);
}

@end