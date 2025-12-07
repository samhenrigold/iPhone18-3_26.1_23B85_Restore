@interface PPConnectionsPasteboardSource
+ (PPConnectionsPasteboardSource)sharedInstance;
- (PPConnectionsPasteboardSource)init;
- (id)_mostRecentPasteboardItem;
- (id)addressPasteboardTextItemFromNotification:(BOOL)notification;
- (id)fetchedPasteboardItem;
- (id)locationItemsWithCriteria:(id)criteria earliest:(id)earliest latest:(id)latest limit:(unint64_t)limit consumer:(unint64_t)consumer explanationSet:(id)set;
- (id)supportedSemanticTags;
- (id)validUTTypes;
- (void)_setMostRecentPasteboardItem:(id)item;
- (void)dealloc;
- (void)refreshMostRecentPasteboardItemFromNotification:(BOOL)notification explanationSet:(id)set;
@end

@implementation PPConnectionsPasteboardSource

- (id)_mostRecentPasteboardItem
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__18635;
  v10 = __Block_byref_object_dispose__18636;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__PPConnectionsPasteboardSource__mostRecentPasteboardItem__block_invoke;
  v5[3] = &unk_278976B78;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__PPConnectionsPasteboardSource__mostRecentPasteboardItem__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    a2 = a2[1];
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
}

- (id)locationItemsWithCriteria:(id)criteria earliest:(id)earliest latest:(id)latest limit:(unint64_t)limit consumer:(unint64_t)consumer explanationSet:(id)set
{
  v58 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  earliestCopy = earliest;
  setCopy = set;
  _mostRecentPasteboardItem = [(PPConnectionsPasteboardSource *)self _mostRecentPasteboardItem];
  if (!_mostRecentPasteboardItem)
  {
    v20 = 0.04;
    if (consumer != 1)
    {
      v20 = 1.0;
    }

    if ([MEMORY[0x277D425A0] waitForSemaphore:self->_init_sem timeoutSeconds:v20] == 1)
    {
      v16 = pp_connections_log_handle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v21 = "PPConnectionsPasteboardSource: timed out waiting for pasteboard source initialization.";
    }

    else
    {
      dispatch_semaphore_signal(self->_init_sem);
      _mostRecentPasteboardItem = [(PPConnectionsPasteboardSource *)self _mostRecentPasteboardItem];
      if (_mostRecentPasteboardItem)
      {
        goto LABEL_2;
      }

      [setCopy push:26];
      v16 = pp_connections_log_handle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v21 = "PPConnectionsPasteboardSource: pasteboard is empty";
    }

    _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
    goto LABEL_28;
  }

LABEL_2:
  v16 = _mostRecentPasteboardItem;
  createdAt = [_mostRecentPasteboardItem createdAt];
  v18 = [earliestCopy compare:createdAt];

  if (v18 == 1)
  {
    [setCopy push:6];
    v19 = pp_connections_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v19, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: pasteboard is too old", buf, 2u);
    }

    goto LABEL_28;
  }

  supportedSemanticTags = [(PPConnectionsPasteboardSource *)self supportedSemanticTags];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(criteriaCopy, "locationField")}];
  v24 = [supportedSemanticTags containsObject:v23];

  if (!v24)
  {
LABEL_28:
    bundleIdentifier2 = 0;
    goto LABEL_29;
  }

  _mostRecentPasteboardItem2 = [(PPConnectionsPasteboardSource *)self _mostRecentPasteboardItem];
  v26 = pp_connections_log_handle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    text = [_mostRecentPasteboardItem2 text];
    v28 = [text length];
    bundleIdentifier = [_mostRecentPasteboardItem2 bundleIdentifier];
    *buf = 134218242;
    v55 = v28;
    v56 = 2112;
    v57 = bundleIdentifier;
    _os_log_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: most recent pasteboard item has text length %tu from bundle %@", buf, 0x16u);
  }

  text2 = [_mostRecentPasteboardItem2 text];
  if (![text2 length])
  {
    goto LABEL_35;
  }

  bundleIdentifier2 = [_mostRecentPasteboardItem2 bundleIdentifier];

  if (bundleIdentifier2)
  {
    locationField = [criteriaCopy locationField];
    text3 = [_mostRecentPasteboardItem2 text];
    addressComponents = [_mostRecentPasteboardItem2 addressComponents];
    v35 = [PPConnectionsDataDetectors addressComponentValueWithLocationField:locationField forDataDetectorsMatch:text3 addressComponents:addressComponents];
    text2 = PPCollapseWhitespaceAndStrip();

    if (text2 && [text2 length])
    {
      addressComponents2 = [_mostRecentPasteboardItem2 addressComponents];
      v37 = [addressComponents2 objectForKeyedSubscript:*MEMORY[0x277CCA6E8]];
      v38 = PPCollapseWhitespaceAndStrip();

      if (!v38)
      {
        v38 = text2;
      }

      v39 = objc_alloc(MEMORY[0x277D3A348]);
      bundleIdentifier3 = [_mostRecentPasteboardItem2 bundleIdentifier];
      v41 = [v39 initWithOriginatingBundleID:bundleIdentifier3];

      [v41 setName:v38];
      [v41 setLabel:v38];
      [v41 setValue:text2];
      [v41 setShortValue:text2];
      [v41 setShouldAggregate:0];
      createdAt2 = [_mostRecentPasteboardItem2 createdAt];
      v43 = [createdAt2 copy];
      [v41 setCreatedAt:v43];

      [v41 setSource:@"pasteboard"];
      [v41 setCopiedToPasteboard:1];
      v44 = MEMORY[0x277CCABB0];
      v45 = +[PPConnectionsParameters sharedInstance];
      [v45 pasteboardItemExpirySeconds];
      v46 = [v44 numberWithDouble:?];
      [v41 setLifetime:v46];

      v47 = pp_connections_log_handle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        [v41 originatingBundleID];
        v48 = v52 = v38;
        createdAt3 = [v41 createdAt];
        *buf = 138412546;
        v55 = v48;
        v56 = 2112;
        v57 = createdAt3;
        _os_log_impl(&dword_23224A000, v47, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: returning location item from %@ created at %@", buf, 0x16u);

        v38 = v52;
      }

      if (!v41)
      {
        bundleIdentifier2 = 0;
        goto LABEL_37;
      }

      v53 = v41;
      bundleIdentifier2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
      text2 = v41;
      goto LABEL_36;
    }

    v51 = pp_connections_log_handle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v51, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: no address value", buf, 2u);
    }

LABEL_35:
    bundleIdentifier2 = 0;
LABEL_36:
  }

LABEL_37:

LABEL_29:

  return bundleIdentifier2;
}

- (id)supportedSemanticTags
{
  if (supportedSemanticTags_onceToken != -1)
  {
    dispatch_once(&supportedSemanticTags_onceToken, &__block_literal_global_42_18623);
  }

  v3 = supportedSemanticTags_supportedSemanticTags;

  return v3;
}

void __54__PPConnectionsPasteboardSource_supportedSemanticTags__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284784368, &unk_284784380, &unk_284784398, &unk_2847843B0, &unk_2847843C8, &unk_2847843E0, &unk_2847843F8, &unk_284784410, 0}];
  objc_autoreleasePoolPop(v0);
  v2 = supportedSemanticTags_supportedSemanticTags;
  supportedSemanticTags_supportedSemanticTags = v1;
}

- (id)validUTTypes
{
  if (validUTTypes_onceToken != -1)
  {
    dispatch_once(&validUTTypes_onceToken, &__block_literal_global_39_18631);
  }

  v3 = validUTTypes__stringPasteboardUTTypes;

  return v3;
}

void __45__PPConnectionsPasteboardSource_validUTTypes__block_invoke()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = [*MEMORY[0x277CE1EB0] identifier];
  v1 = [*MEMORY[0x277CE1EA8] identifier];
  v5[1] = v1;
  v2 = [*MEMORY[0x277CE1E88] identifier];
  v5[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v4 = validUTTypes__stringPasteboardUTTypes;
  validUTTypes__stringPasteboardUTTypes = v3;
}

- (id)addressPasteboardTextItemFromNotification:(BOOL)notification
{
  notificationCopy = notification;
  fetchedPasteboardItem = [(PPConnectionsPasteboardSource *)self fetchedPasteboardItem];
  text = [fetchedPasteboardItem text];
  if (![text length])
  {

    bundleIdentifier = 0;
    goto LABEL_9;
  }

  bundleIdentifier = [fetchedPasteboardItem bundleIdentifier];

  if (!bundleIdentifier)
  {
LABEL_9:
    v8 = 0;
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  text2 = [fetchedPasteboardItem text];
  v14 = 0;
  v8 = [PPDataDetectors addressComponentsFromString:text2 extractedAddress:&v14];
  bundleIdentifier = v14;

  if (!bundleIdentifier || !v8)
  {

    fetchedPasteboardItem = 0;
    goto LABEL_11;
  }

  [fetchedPasteboardItem setText:bundleIdentifier];
  [fetchedPasteboardItem setAddressComponents:v8];
  if (notificationCopy)
  {
    v9 = +[PPConnectionsMetricsTracker sharedInstance];
    bundleIdentifier2 = [fetchedPasteboardItem bundleIdentifier];
    [v9 trackPasteboardItemFromBundleId:bundleIdentifier2 hasAddress:1 isEligible:1];
  }

  v11 = fetchedPasteboardItem;
LABEL_12:
  v12 = v11;

  return v11;
}

- (id)fetchedPasteboardItem
{
  v64 = *MEMORY[0x277D85DE8];
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__18635;
  v61 = __Block_byref_object_dispose__18636;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__18635;
  v55 = __Block_byref_object_dispose__18636;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__18635;
  v49 = __Block_byref_object_dispose__18636;
  v50 = 0;
  v3 = dispatch_semaphore_create(0);
  defaultConnection = [MEMORY[0x277D38BC0] defaultConnection];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __54__PPConnectionsPasteboardSource_fetchedPasteboardItem__block_invoke;
  v41[3] = &unk_278976BD0;
  v43 = &v51;
  v44 = &v45;
  v5 = v3;
  v42 = v5;
  [defaultConnection localGeneralPasteboardCompletionBlock:v41];

  if ([MEMORY[0x277D425A0] waitForSemaphore:v5 timeoutSeconds:5.0] == 1)
  {
    firstObject = pp_connections_log_handle();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "PPConnectionsPasteboardSource: local general pasteboard fetch timed out";
      v8 = firstObject;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
      _os_log_impl(&dword_23224A000, v8, v9, v7, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([v46[5] isEqualToString:*MEMORY[0x277D3A6B0]])
  {
    firstObject = pp_connections_log_handle();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "PPConnectionsPasteboardSource: Rejecting item copied in SpringBoard!";
      v8 = firstObject;
      v9 = OS_LOG_TYPE_INFO;
      goto LABEL_7;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_20;
  }

  items = [v52[5] items];
  firstObject = [items firstObject];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  validUTTypes = [(PPConnectionsPasteboardSource *)self validUTTypes];
  v13 = [validUTTypes countByEnumeratingWithState:&v36 objects:v63 count:16];
  if (v13)
  {
    v14 = *v37;
    obj = validUTTypes;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v36 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        if ([firstObject hasRepresentationConformingToType:v16]&& !v58[5])
        {
          v18 = [firstObject representationConformingToType:v16];
          v19 = MEMORY[0x277CE1CB8];
          typeIdentifier = [v18 typeIdentifier];
          v21 = [v19 typeWithIdentifier:typeIdentifier];

          v22 = dispatch_semaphore_create(0);
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __54__PPConnectionsPasteboardSource_fetchedPasteboardItem__block_invoke_32;
          v28[3] = &unk_278976BF8;
          v23 = v21;
          v33 = &v57;
          v34 = &v51;
          v35 = &v45;
          v29 = v23;
          v30 = v16;
          v24 = v18;
          v31 = v24;
          v5 = v22;
          v32 = v5;
          v25 = [v24 loadDataWithCompletion:v28];
          [MEMORY[0x277D425A0] waitForSemaphore:v5 timeoutSeconds:5.0];
        }

        objc_autoreleasePoolPop(v17);
      }

      validUTTypes = obj;
      v13 = [obj countByEnumeratingWithState:&v36 objects:v63 count:16];
    }

    while (v13);
  }

  v10 = v58[5];
LABEL_20:

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);

  return v10;
}

void __54__PPConnectionsPasteboardSource_fetchedPasteboardItem__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v7 = [*(*(*(a1 + 40) + 8) + 40) originatorBundleID];
  v8 = [v7 copy];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (v6)
  {
    +[PPQuickTypeMetrics frameworkError:errorCode:](PPQuickTypeMetrics, "frameworkError:errorCode:", @"PB", [v6 code]);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __54__PPConnectionsPasteboardSource_fetchedPasteboardItem__block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    goto LABEL_23;
  }

  if (!v5)
  {
    goto LABEL_20;
  }

  if ([*(a1 + 32) conformsToType:*MEMORY[0x277CE1EB0]])
  {
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v24) = 0;
      _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPConnectionsPasteboardSource: pasteboard text type resolves to UTF-8", &v24, 2u);
    }

    v8 = MEMORY[0x277CCACA8];
    v9 = v5;
    v10 = 4;
LABEL_11:
    v12 = [v8 _pas_stringWithDataNoCopy:v9 encoding:v10 nullTerminated:0];
    goto LABEL_12;
  }

  if ([*(a1 + 32) conformsToType:*MEMORY[0x277CE1EA8]])
  {
    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v24) = 0;
      _os_log_debug_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEBUG, "PPConnectionsPasteboardSource: pasteboard text type resolves to UTF-16", &v24, 2u);
    }

    v8 = MEMORY[0x277CCACA8];
    v9 = v5;
    v10 = 10;
    goto LABEL_11;
  }

  if (![*(a1 + 32) conformsToType:*MEMORY[0x277CE1E88]])
  {
    goto LABEL_20;
  }

  v19 = pp_default_log_handle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v24) = 0;
    _os_log_debug_impl(&dword_23224A000, v19, OS_LOG_TYPE_DEBUG, "PPConnectionsPasteboardSource: pasteboard text type does not resolve to UTF-8 or UTF-16", &v24, 2u);
  }

  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 usedEncoding:0];
LABEL_12:
  v13 = v12;
  if (v12)
  {
    v14 = objc_opt_new();
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = [*(*(*(a1 + 72) + 8) + 40) creationDate];
    [*(*(*(a1 + 64) + 8) + 40) setCreatedAt:v17];

    [*(*(*(a1 + 64) + 8) + 40) setBundleIdentifier:*(*(*(a1 + 80) + 8) + 40)];
    [*(*(*(a1 + 64) + 8) + 40) setText:v13];
    v18 = pp_connections_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v23 = [*(*(*(a1 + 64) + 8) + 40) text];
      v24 = 138739971;
      v25 = v23;
      _os_log_debug_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEBUG, "PPConnectionsPasteboardSource: pasteboard text: %{sensitive}@", &v24, 0xCu);
    }

    goto LABEL_23;
  }

LABEL_20:
  v20 = pp_connections_log_handle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 40);
    v22 = [*(a1 + 48) typeIdentifier];
    v24 = 138412802;
    v25 = v21;
    v26 = 2112;
    v27 = v22;
    v28 = 2112;
    v29 = 0;
    _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: Could not load text representation from pasteboard. Type = %@, resolved type = %@, Error: %@", &v24, 0x20u);
  }

  +[PPQuickTypeMetrics frameworkError:errorCode:](PPQuickTypeMetrics, "frameworkError:errorCode:", @"PB", [0 code]);
LABEL_23:
  dispatch_semaphore_signal(*(a1 + 56));
}

- (void)refreshMostRecentPasteboardItemFromNotification:(BOOL)notification explanationSet:(id)set
{
  notificationCopy = notification;
  setCopy = set;
  v7 = [(PPConnectionsPasteboardSource *)self addressPasteboardTextItemFromNotification:notificationCopy];
  [(PPConnectionsPasteboardSource *)self _setMostRecentPasteboardItem:v7];

  dispatch_semaphore_signal(self->_init_sem);
  v8 = pp_connections_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: initial pasteboard fetch completed", v16, 2u);
  }

  v9 = os_transaction_create();
  v10 = objc_autoreleasePoolPush();
  _mostRecentPasteboardItem = [(PPConnectionsPasteboardSource *)self _mostRecentPasteboardItem];

  if (_mostRecentPasteboardItem)
  {
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-10.0];
    v13 = [(PPConnectionsPasteboardSource *)self locationItemsWithCriteria:0 earliest:v12 latest:0 limit:1 consumer:0 explanationSet:setCopy];
    firstObject = [v13 firstObject];

    delegate = [(PPConnectionsSource *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate source:self updatedLocation:firstObject];
    }
  }

  objc_autoreleasePoolPop(v10);
}

- (void)_setMostRecentPasteboardItem:(id)item
{
  v14 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  memoryFootprintEstimate = [itemCopy memoryFootprintEstimate];
  if (memoryFootprintEstimate >= 0x4000)
  {
    v6 = memoryFootprintEstimate;
    v7 = pp_connections_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = v6;
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: dropping pasteboard item because it uses too much memory (estimated footprint %tu)", buf, 0xCu);
    }

    itemCopy = 0;
  }

  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__PPConnectionsPasteboardSource__setMostRecentPasteboardItem___block_invoke;
  v10[3] = &unk_278976BA0;
  v11 = itemCopy;
  v9 = itemCopy;
  [(_PASLock *)lock runWithLockAcquired:v10];
}

void __62__PPConnectionsPasteboardSource__setMostRecentPasteboardItem___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    objc_storeStrong((a2 + 8), *(a1 + 32));
  }
}

- (void)dealloc
{
  if (self->_pasteboardObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_pasteboardObserver];
  }

  v4.receiver = self;
  v4.super_class = PPConnectionsPasteboardSource;
  [(PPConnectionsPasteboardSource *)&v4 dealloc];
}

- (PPConnectionsPasteboardSource)init
{
  v23.receiver = self;
  v23.super_class = PPConnectionsPasteboardSource;
  v2 = [(PPConnectionsPasteboardSource *)&v23 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    lock = v2->_lock;
    v2->_lock = v5;

    v7 = dispatch_semaphore_create(0);
    init_sem = v2->_init_sem;
    v2->_init_sem = v7;

    v9 = objc_opt_new();
    pbQueue = v2->_pbQueue;
    v2->_pbQueue = v9;

    [(NSOperationQueue *)v2->_pbQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_pbQueue setSuspended:1];
    v11 = v2->_pbQueue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __37__PPConnectionsPasteboardSource_init__block_invoke;
    v20[3] = &unk_2789797B8;
    objc_copyWeak(&v21, &location);
    [(NSOperationQueue *)v11 addOperationWithBlock:v20];
    v2->_pasteboardNotificationState = [MEMORY[0x277D38BC0] beginListeningToPasteboardChangeNotifications];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = *MEMORY[0x277D38BC8];
    v14 = v2->_pbQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __37__PPConnectionsPasteboardSource_init__block_invoke_18;
    v18[3] = &unk_278977828;
    objc_copyWeak(&v19, &location);
    v15 = [defaultCenter addObserverForName:v13 object:0 queue:v14 usingBlock:v18];
    pasteboardObserver = v2->_pasteboardObserver;
    v2->_pasteboardObserver = v15;

    [(NSOperationQueue *)v2->_pbQueue setSuspended:0];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __37__PPConnectionsPasteboardSource_init__block_invoke(uint64_t a1)
{
  v2 = pp_connections_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: fetching from pasteboard asynchronously after initialization.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshMostRecentPasteboardItemFromNotification:0 explanationSet:0];
}

void __37__PPConnectionsPasteboardSource_init__block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = pp_connections_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPConnectionsPasteboardSource: handling PBPasteboardChangedNotification", buf, 2u);
    }

    v6 = [v3 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D38BD0]];
    v8 = [v7 intValue];

    if (WeakRetained[2] != v8)
    {
      WeakRetained[2] = v8;
      v9 = WeakRetained[6];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __37__PPConnectionsPasteboardSource_init__block_invoke_19;
      v10[3] = &unk_2789797B8;
      objc_copyWeak(&v11, (a1 + 32));
      [v9 addOperationWithBlock:v10];
      objc_destroyWeak(&v11);
    }
  }
}

void __37__PPConnectionsPasteboardSource_init__block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshMostRecentPasteboardItemFromNotification:1 explanationSet:0];
}

+ (PPConnectionsPasteboardSource)sharedInstance
{
  if (sharedInstance_once_18670 != -1)
  {
    dispatch_once(&sharedInstance_once_18670, &__block_literal_global_18671);
  }

  v3 = sharedInstance_shared_18672;

  return v3;
}

uint64_t __47__PPConnectionsPasteboardSource_sharedInstance__block_invoke()
{
  sharedInstance_shared_18672 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end