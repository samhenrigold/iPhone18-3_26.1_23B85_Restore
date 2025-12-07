@interface BKLibraryCollectionManager
- (BKCollection)defaultAllBooksCollection;
- (BKCollection)defaultAudioBooksCollection;
- (BKCollection)defaultBooksCollection;
- (BKCollection)defaultDownloadedCollection;
- (BKCollection)defaultFinishedCollection;
- (BKCollection)defaultPDFsCollection;
- (BKCollection)defaultSamplesCollection;
- (BKCollection)defaultWantToReadCollection;
- (BKLibraryCollectionManager)initWithLibraryManager:(id)manager;
- (BKLibraryManager)libraryManager;
- (BOOL)allowsAutoDownloadOfSamplesToWantToRead;
- (BOOL)deleteCollectionOnMainQueue:(id)queue;
- (BOOL)deleteCollectionWithCollectionID:(id)d inManagedObjectContext:(id)context error:(id *)error;
- (BOOL)p_shouldDeleteAsset:(id)asset removingFromCollectionIDs:(id)ds;
- (id)_defaultCollectionsIncludeAllBooks:(BOOL)books;
- (id)_defaultManagerAssetsForDefaultCollectionWithID:(id)d inManagedObjectContext:(id)context;
- (id)_setupDefaultBooksCollection:(id)collection moc:(id)moc;
- (id)collectionOnMainQueueWithCollectionID:(id)d error:(id *)error;
- (id)collectionWithCollectionID:(id)d inManagedObjectContext:(id)context error:(id *)error;
- (id)defaultCollectionsInManagedObjectContext:(id)context withError:(id *)error;
- (id)fetchDefaultBooksCollectionInUIMoc:(id)moc;
- (id)fetchWTRMembersInContext:(id)context;
- (id)gatherChangedAssetsCollectionsWithLibraryMoc:(id)moc;
- (id)insertNewCollectionSyncOnMainQueueWithCollectionID:(id)d newCollectionBlock:(id)block;
- (id)mutableCollectionWithCollectionID:(id)d inManagedObjectContext:(id)context error:(id *)error;
- (id)mutableCollectionsWithCollectionIDs:(id)ds includeDeleted:(BOOL)deleted inManagedObjectContext:(id)context error:(id *)error;
- (id)p_allOrderedCollections;
- (id)p_assetsRequiringDeletion:(id)deletion removingFromCollectionIDs:(id)ds;
- (id)p_fetchOrCreatePlaceholderCollectionForCollectionID:(id)d moc:(id)moc;
- (id)userCollectionsInManagedObjectContext:(id)context withError:(id *)error;
- (id)userCollectionsOnMainQueueWithError:(id *)error;
- (void)_BCCloudCollectionDetailManagerChanged:(id)changed;
- (void)_BCCloudCollectionMemberManagerChanged:(id)changed;
- (void)_addMemberWithAsset:(id)asset toCollection:(id)collection moc:(id)moc;
- (void)_checkForChangesFromCloudCollectionDetailManagerInMOC:(id)c reason:(id)reason;
- (void)_checkForChangesFromCloudCollectionMemberManagerInMOC:(id)c reason:(id)reason;
- (void)_performResetCollectionsInMoc:(id)moc changeSet:(id)set completion:(id)completion;
- (void)addBooks:(id)books toCollection:(id)collection forceToTop:(BOOL)top completion:(id)completion;
- (void)addStoreID:(id)d toCollectionID:(id)iD forceToTop:(BOOL)top completion:(id)completion;
- (void)cleanupDefaultCollections;
- (void)clearSortKeysFromAssetsInMOCForUpgrade:(id)upgrade;
- (void)dealloc;
- (void)fixCollectionMemberAssetLinks;
- (void)fixPDFCollectionIfNeeded;
- (void)markAsFinishedStoreID:(id)d completion:(id)completion;
- (void)markAssetsAsFinished:(id)finished completion:(id)completion;
- (void)mergeCurrentCollectionDetailsToCloudInMoc:(id)moc;
- (void)mergeCurrentCollectionMembersToCloudInMoc:(id)moc;
- (void)mocDidSave:(id)save;
- (void)p_downloadSampleBook:(id)book;
- (void)p_syncCollectionMembers:(id)members deletedCollectionMembers:(id)collectionMembers inContext:(id)context;
- (void)p_syncCollections:(id)collections deletedCollections:(id)deletedCollections inContext:(id)context;
- (void)p_updateAsset:(id)asset inCollectionMember:(id)member withMOC:(id)c;
- (void)p_updateAssetInMembers:(id)members moc:(id)moc;
- (void)performAddRequest:(id)request completion:(id)completion;
- (void)performRemoveRequest:(id)request completion:(id)completion;
- (void)processGatheredChangedAssetsCollections:(id)collections;
- (void)promoteSampleFromWantToReadForAssetID:(id)d;
- (void)removeAssetID:(id)d fromCollectionID:(id)iD completion:(id)completion;
- (void)removeBook:(id)book fromCollections:(id)collections completion:(id)completion;
- (void)removeBooks:(id)books fromCollection:(id)collection completion:(id)completion;
- (void)resetCollections;
- (void)resetCollectionsForAssetIDs:(id)ds completion:(id)completion;
- (void)setEnableCloudMerge:(BOOL)merge;
- (void)setupDefaultCollectionsInManagedObjectContext:(id)context;
- (void)updateCollectionMemberAssetLinksForAssetIDs:(id)ds temporaryAssetIDs:(id)iDs moc:(id)moc;
- (void)updateCollectionMemberAssetLinksInMOCForUpgrade:(id)upgrade;
- (void)updateiTunesUCollectionMembersForAssetIDs:(id)ds temporaryAssetIDs:(id)iDs moc:(id)moc;
@end

@implementation BKLibraryCollectionManager

- (BKLibraryCollectionManager)initWithLibraryManager:(id)manager
{
  managerCopy = manager;
  v36.receiver = self;
  v36.super_class = BKLibraryCollectionManager;
  v5 = [(BKLibraryCollectionManager *)&v36 init];
  v6 = v5;
  if (v5)
  {
    v5->_accessLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_libraryManager, managerCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.iBooks.BKLibraryCollectionManager", v7);
    enableCloudMergeQueue = v6->_enableCloudMergeQueue;
    v6->_enableCloudMergeQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.iBooks.BKLibraryCollectionManager.getChanges", v10);
    getChangesQueue = v6->_getChangesQueue;
    v6->_getChangesQueue = v11;

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v6 selector:"mocDidSave:" name:NSManagedObjectContextDidSaveNotification object:0];

    if (BDSXPCNotificationsEnabled())
    {
      v14 = +[NSNotificationCenter defaultCenter];
      [v14 addObserver:v6 selector:"_BCCloudCollectionDetailManagerChanged:" name:BCCloudCollectionDetailManagerChanged object:0];

      v15 = +[NSNotificationCenter defaultCenter];
      [v15 addObserver:v6 selector:"_BCCloudCollectionMemberManagerChanged:" name:BCCloudCollectionMemberManagerChanged object:0];

      v16 = +[BDSServiceNotificationCenter sharedInstance];
      [v16 startMonitoring];
    }

    else
    {
      v17 = +[NSDistributedNotificationCenter defaultCenter];
      [v17 addObserver:v6 selector:"_BCCloudCollectionDetailManagerChanged:" name:BCCloudCollectionDetailManagerChanged object:0];

      v16 = +[NSDistributedNotificationCenter defaultCenter];
      [v16 addObserver:v6 selector:"_BCCloudCollectionMemberManagerChanged:" name:BCCloudCollectionMemberManagerChanged object:0];
    }

    v18 = +[BCCloudCollectionsManager sharedManager];
    cloudCollectionsManager = v6->_cloudCollectionsManager;
    v6->_cloudCollectionsManager = v18;

    v20 = [BUCoalescingCallBlock alloc];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_609A4;
    v34[3] = &unk_D6970;
    v21 = v6;
    v35 = v21;
    v22 = [v20 initWithNotifyBlock:v34 blockDescription:@"BKLibraryCollectionManager resetAll"];
    v23 = v21[17];
    v21[17] = v22;

    [v21[17] setCoalescingDelay:0.1];
    v24 = [BUCoalescingCallBlock alloc];
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_60A7C;
    v32 = &unk_D6970;
    v25 = v21;
    v33 = v25;
    v26 = [v24 initWithNotifyBlock:&v29 blockDescription:@"BKLibraryCollectionManager resetChanged"];
    v27 = v25[18];
    v25[18] = v26;

    [v25[18] setCoalescingDelay:{0.1, v29, v30, v31, v32}];
  }

  return v6;
}

- (void)dealloc
{
  v3 = NSNotificationCenter_ptr;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:NSManagedObjectContextDidSaveNotification object:0];

  if (!BDSXPCNotificationsEnabled())
  {
    v3 = NSDistributedNotificationCenter_ptr;
  }

  defaultCenter = [*v3 defaultCenter];
  [defaultCenter removeObserver:self name:BCCloudCollectionDetailManagerChanged object:0];

  defaultCenter2 = [*v3 defaultCenter];
  [defaultCenter2 removeObserver:self name:BCCloudCollectionMemberManagerChanged object:0];

  objc_storeWeak(&self->_libraryManager, 0);
  v7.receiver = self;
  v7.super_class = BKLibraryCollectionManager;
  [(BKLibraryCollectionManager *)&v7 dealloc];
}

- (void)setEnableCloudMerge:(BOOL)merge
{
  enableCloudMergeQueue = [(BKLibraryCollectionManager *)self enableCloudMergeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_60ECC;
  v6[3] = &unk_D61E0;
  mergeCopy = merge;
  v6[4] = self;
  dispatch_async(enableCloudMergeQueue, v6);
}

- (id)p_allOrderedCollections
{
  defaultCollections = [(BKLibraryCollectionManager *)self defaultCollections];
  v4 = [NSMutableArray arrayWithArray:defaultCollections];

  v5 = [(BKLibraryCollectionManager *)self userCollectionsOnMainQueueWithError:0];
  v6 = [NSMutableArray arrayWithArray:v5];

  if ([v6 count])
  {
    [v4 addObjectsFromArray:v6];
  }

  return v4;
}

- (id)_defaultCollectionsIncludeAllBooks:(BOOL)books
{
  booksCopy = books;
  v5 = +[NSMutableArray array];
  if (booksCopy)
  {
    defaultAllBooksCollection = [(BKLibraryCollectionManager *)self defaultAllBooksCollection];
    [v5 addObject:defaultAllBooksCollection];
  }

  defaultWantToReadCollection = [(BKLibraryCollectionManager *)self defaultWantToReadCollection];
  [v5 addObject:defaultWantToReadCollection];

  defaultFinishedCollection = [(BKLibraryCollectionManager *)self defaultFinishedCollection];
  [v5 addObject:defaultFinishedCollection];

  defaultBooksCollection = [(BKLibraryCollectionManager *)self defaultBooksCollection];
  [v5 addObject:defaultBooksCollection];

  defaultAudioBooksCollection = [(BKLibraryCollectionManager *)self defaultAudioBooksCollection];
  [v5 addObject:defaultAudioBooksCollection];

  defaultPDFsCollection = [(BKLibraryCollectionManager *)self defaultPDFsCollection];
  [v5 addObject:defaultPDFsCollection];

  defaultSamplesCollection = [(BKLibraryCollectionManager *)self defaultSamplesCollection];
  [v5 addObject:defaultSamplesCollection];

  defaultDownloadedCollection = [(BKLibraryCollectionManager *)self defaultDownloadedCollection];
  [v5 addObject:defaultDownloadedCollection];

  v14 = [NSArray arrayWithArray:v5];

  return v14;
}

- (id)collectionOnMainQueueWithCollectionID:(id)d error:(id *)error
{
  dCopy = d;
  if (!+[NSThread isMainThread])
  {
    sub_91544();
  }

  libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
  uiChildContext = [libraryManager uiChildContext];
  v9 = [(BKLibraryCollectionManager *)self collectionWithCollectionID:dCopy inManagedObjectContext:uiChildContext error:error];

  return v9;
}

- (id)collectionWithCollectionID:(id)d inManagedObjectContext:(id)context error:(id *)error
{
  dCopy = d;
  contextCopy = context;
  if ([BKCollection isSeriesCollectionID:dCopy])
  {
    v10 = [BKCollection seriesIDFromSeriesCollectionID:dCopy];
    libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
    v12 = [libraryManager libraryAssetOnMainQueueWithAssetID:v10];

    title = [v12 title];
    v14 = [BKUnsyncedSeriesCollection seriesCollectionWithSeriesID:v10 name:title];
  }

  else
  {
    if ([(BKLibraryCollectionManager *)self isAllBooksCollection:dCopy])
    {
      [(BKLibraryCollectionManager *)self defaultAllBooksCollection];
    }

    else
    {
      [(BKLibraryCollectionManager *)self mutableCollectionWithCollectionID:dCopy inManagedObjectContext:contextCopy error:error];
    }
    v14 = ;
  }

  return v14;
}

- (id)userCollectionsOnMainQueueWithError:(id *)error
{
  if (!+[NSThread isMainThread])
  {
    sub_91580();
  }

  libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
  uiChildContext = [libraryManager uiChildContext];
  v7 = [(BKLibraryCollectionManager *)self userCollectionsInManagedObjectContext:uiChildContext withError:error];

  return v7;
}

- (id)userCollectionsInManagedObjectContext:(id)context withError:(id *)error
{
  if (context)
  {
    contextCopy = context;
    v6 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollection"];
    v7 = +[BKCollection predicateForNonDeletedUserCollections];
    [v6 setPredicate:v7];

    v8 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:1];
    v12 = v8;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    [v6 setSortDescriptors:v9];

    [v6 setReturnsObjectsAsFaults:0];
    v10 = [contextCopy executeFetchRequest:v6 error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)defaultCollectionsInManagedObjectContext:(id)context withError:(id *)error
{
  if (context)
  {
    contextCopy = context;
    v6 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollection"];
    v7 = +[BKCollection predicateForAllDefaultCollections];
    [v6 setPredicate:v7];

    [v6 setReturnsObjectsAsFaults:0];
    v8 = [contextCopy executeFetchRequest:v6 error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fetchDefaultBooksCollectionInUIMoc:(id)moc
{
  mocCopy = moc;
  objc_initWeak(&location, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_60C78;
  v17 = sub_60C88;
  v18 = 0;
  libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_61E08;
  v9[3] = &unk_D7408;
  objc_copyWeak(&v12, &location);
  v11 = &v13;
  v9[4] = self;
  v6 = mocCopy;
  v10 = v6;
  [libraryManager performBlockInUIContext:v9];

  v7 = v14[5];
  objc_destroyWeak(&v12);
  _Block_object_dispose(&v13, 8);

  objc_destroyWeak(&location);

  return v7;
}

- (id)_setupDefaultBooksCollection:(id)collection moc:(id)moc
{
  collectionCopy = collection;
  mocCopy = moc;
  v18 = 0;
  v8 = [(BKLibraryCollectionManager *)self mutableCollectionWithCollectionID:collectionCopy inManagedObjectContext:mocCopy error:&v18];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [BKCollection insertNewCollectionWithCollectionID:collectionCopy inManagedObjectContext:mocCopy];
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  title = [v9 title];

  if (!title)
  {
    v11 = [BCCollection titleForDefaultCollectionID:collectionCopy];
    [v9 setTitle:v11];
  }

  sortKey = [v9 sortKey];
  integerValue = [sortKey integerValue];

  if (!integerValue && kBKCollectionDefaultAll != collectionCopy)
  {
    v14 = [BCCollection sortKeyForDefaultCollectionID:collectionCopy];
    [v9 setSortKey:v14];
  }

  deletedFlag = [v9 deletedFlag];
  integerValue2 = [deletedFlag integerValue];

  if (integerValue2)
  {
    [v9 setDeletedFlag:&off_DE150];
  }

LABEL_11:

  return v9;
}

- (BKCollection)defaultAllBooksCollection
{
  defaultAllBooksCollection = self->_defaultAllBooksCollection;
  if (!defaultAllBooksCollection || ([(BKCollection *)defaultAllBooksCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultAll];
    [(BKLibraryCollectionManager *)self setDefaultAllBooksCollection:v5];
  }

  v6 = self->_defaultAllBooksCollection;

  return v6;
}

- (BKCollection)defaultBooksCollection
{
  defaultBooksCollection = self->_defaultBooksCollection;
  if (!defaultBooksCollection || ([(BKCollection *)defaultBooksCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultIDBooks];
    [(BKLibraryCollectionManager *)self setDefaultBooksCollection:v5];
  }

  v6 = self->_defaultBooksCollection;

  return v6;
}

- (BKCollection)defaultAudioBooksCollection
{
  defaultAudioBooksCollection = self->_defaultAudioBooksCollection;
  if (!defaultAudioBooksCollection || ([(BKCollection *)defaultAudioBooksCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultIDAudiobooks];
    [(BKLibraryCollectionManager *)self setDefaultAudioBooksCollection:v5];
  }

  v6 = self->_defaultAudioBooksCollection;

  return v6;
}

- (BKCollection)defaultPDFsCollection
{
  defaultPDFsCollection = self->_defaultPDFsCollection;
  if (!defaultPDFsCollection || ([(BKCollection *)defaultPDFsCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultIDPDFs];
    v6 = self->_defaultPDFsCollection;
    self->_defaultPDFsCollection = v5;
  }

  v7 = self->_defaultPDFsCollection;

  return v7;
}

- (BKCollection)defaultDownloadedCollection
{
  defaultDownloadedCollection = self->_defaultDownloadedCollection;
  if (!defaultDownloadedCollection || ([(BKCollection *)defaultDownloadedCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultIDDownloaded];
    [(BKLibraryCollectionManager *)self setDefaultDownloadedCollection:v5];
  }

  v6 = self->_defaultDownloadedCollection;

  return v6;
}

- (BKCollection)defaultFinishedCollection
{
  defaultFinishedCollection = self->_defaultFinishedCollection;
  if (!defaultFinishedCollection || ([(BKCollection *)defaultFinishedCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultIDFinished];
    [(BKLibraryCollectionManager *)self setDefaultFinishedCollection:v5];
  }

  v6 = self->_defaultFinishedCollection;

  return v6;
}

- (BKCollection)defaultWantToReadCollection
{
  defaultWantToReadCollection = self->_defaultWantToReadCollection;
  if (!defaultWantToReadCollection || ([(BKCollection *)defaultWantToReadCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultIDWantToRead];
    [(BKLibraryCollectionManager *)self setDefaultWantToReadCollection:v5];
  }

  v6 = self->_defaultWantToReadCollection;

  return v6;
}

- (BKCollection)defaultSamplesCollection
{
  defaultSamplesCollection = self->_defaultSamplesCollection;
  if (!defaultSamplesCollection || ([(BKCollection *)defaultSamplesCollection collectionID], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [(BKLibraryCollectionManager *)self fetchDefaultBooksCollectionInUIMoc:kBKCollectionDefaultIDSamples];
    [(BKLibraryCollectionManager *)self setDefaultSamplesCollection:v5];
  }

  v6 = self->_defaultSamplesCollection;

  return v6;
}

- (void)setupDefaultCollectionsInManagedObjectContext:(id)context
{
  contextCopy = context;
  context = objc_autoreleasePoolPush();
  v5 = +[BKCollection availableDefaultCollectionIDsForOS];
  v50 = 0;
  v38 = contextCopy;
  v6 = [(BKLibraryCollectionManager *)self mutableCollectionsWithCollectionIDs:v5 includeDeleted:1 inManagedObjectContext:contextCopy error:&v50];
  v7 = v50;
  v8 = v7;
  if (v7)
  {
    v9 = BKLibraryCollectionLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_915BC();
    }
  }

  v36 = v8;
  v10 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v47;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        collectionID = [v16 collectionID];
        [v10 setObject:v16 forKeyedSubscript:collectionID];
      }

      v13 = [v11 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v13);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v5;
  v41 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v41)
  {
    v40 = *v43;
    do
    {
      for (j = 0; j != v41; j = j + 1)
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v42 + 1) + 8 * j);
        v20 = [v10 objectForKeyedSubscript:v19];
        if (!v20)
        {
          v20 = [BKCollection insertNewCollectionWithCollectionID:v19 inManagedObjectContext:v38];
        }

        deletedFlag = [v20 deletedFlag];
        if (!deletedFlag || (v22 = deletedFlag, [v20 deletedFlag], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "BOOLValue"), v23, v22, v24))
        {
          [v20 setDeletedFlag:&__kCFBooleanFalse];
        }

        v25 = [BCCollection sortKeyForDefaultCollectionID:v19];
        sortKey = [v20 sortKey];
        if (!sortKey || (v27 = sortKey, v28 = [v25 intValue], objc_msgSend(v20, "sortKey"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "intValue"), v29, v27, v28 != v30))
        {
          [v20 setSortKey:v25];
        }

        v31 = [BCCollection titleForDefaultCollectionID:v19];
        title = [v20 title];
        if (!title || (v33 = title, [v20 title], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v31, "isEqualToString:", v34), v34, v33, (v35 & 1) == 0))
        {
          [v20 setTitle:v31];
        }
      }

      v41 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v41);
  }

  objc_autoreleasePoolPop(context);
}

- (void)mergeCurrentCollectionDetailsToCloudInMoc:(id)moc
{
  mocCopy = moc;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollection"];
  [v5 setReturnsObjectsAsFaults:0];
  v8 = 0;
  v6 = [mocCopy executeFetchRequest:v5 error:&v8];
  v7 = [NSSet setWithArray:v6];
  [(BKLibraryCollectionManager *)self p_syncCollections:v7 deletedCollections:0 inContext:mocCopy];
}

- (void)mergeCurrentCollectionMembersToCloudInMoc:(id)moc
{
  mocCopy = moc;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollectionMember"];
  [v5 setReturnsObjectsAsFaults:0];
  v8 = 0;
  v6 = [mocCopy executeFetchRequest:v5 error:&v8];
  v7 = [NSSet setWithArray:v6];
  [(BKLibraryCollectionManager *)self p_syncCollectionMembers:v7 deletedCollectionMembers:0 inContext:mocCopy];
}

- (id)insertNewCollectionSyncOnMainQueueWithCollectionID:(id)d newCollectionBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_60C78;
  v21 = sub_60C88;
  v22 = 0;
  libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_62B9C;
  v13[3] = &unk_D7458;
  v9 = dCopy;
  v14 = v9;
  v10 = blockCopy;
  v15 = v10;
  v16 = &v17;
  [libraryManager performBlockInUIContext:v13];

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)mutableCollectionWithCollectionID:(id)d inManagedObjectContext:(id)context error:(id *)error
{
  lastObject = 0;
  if (d && context)
  {
    contextCopy = context;
    dCopy = d;
    v10 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollection"];
    [v10 setFetchLimit:1];
    dCopy = [NSPredicate predicateWithFormat:@"%K == %@", @"collectionID", dCopy];

    [v10 setPredicate:dCopy];
    [v10 setReturnsObjectsAsFaults:0];
    v12 = [contextCopy executeFetchRequest:v10 error:error];

    lastObject = [v12 lastObject];
  }

  return lastObject;
}

- (id)mutableCollectionsWithCollectionIDs:(id)ds includeDeleted:(BOOL)deleted inManagedObjectContext:(id)context error:(id *)error
{
  deletedCopy = deleted;
  dsCopy = ds;
  contextCopy = context;
  v11 = contextCopy;
  v12 = 0;
  if (dsCopy && contextCopy)
  {
    if (deletedCopy)
    {
      [BKCollection predicateForCollectionWithCollectionIDInList:dsCopy];
    }

    else
    {
      [NSPredicate predicateWithFormat:@"%K in %@", @"collectionID", dsCopy];
    }
    v13 = ;
    v14 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollection"];
    [v14 setPredicate:v13];
    [v14 setReturnsObjectsAsFaults:0];
    v12 = [v11 executeFetchRequest:v14 error:error];
  }

  return v12;
}

- (BOOL)deleteCollectionWithCollectionID:(id)d inManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v9 = contextCopy;
  v10 = 0;
  if (d && contextCopy)
  {
    v11 = [(BKLibraryCollectionManager *)self mutableCollectionWithCollectionID:d inManagedObjectContext:contextCopy error:error];
    v10 = v11 != 0;
    if (v11)
    {
      [v9 deleteObject:v11];
    }
  }

  return v10;
}

- (BOOL)deleteCollectionOnMainQueue:(id)queue
{
  queueCopy = queue;
  if (!+[NSThread isMainThread])
  {
    sub_91624();
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_630C4;
  v9[3] = &unk_D6048;
  v11 = &v12;
  v9[4] = self;
  v6 = queueCopy;
  v10 = v6;
  [libraryManager performBlockInUIContext:v9];

  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)promoteSampleFromWantToReadForAssetID:(id)d
{
  dCopy = d;
  v5 = kBKCollectionDefaultIDWantToRead;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_631FC;
  v7[3] = &unk_D7480;
  v8 = dCopy;
  v6 = dCopy;
  [(BKLibraryCollectionManager *)self removeAssetID:v6 fromCollectionID:v5 completion:v7];
}

- (void)markAssetsAsFinished:(id)finished completion:(id)completion
{
  finishedCopy = finished;
  completionCopy = completion;
  [(BKLibraryCollectionManager *)self libraryManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_633CC;
  v11[3] = &unk_D5B30;
  v13 = v12 = finishedCopy;
  v14 = completionCopy;
  v8 = completionCopy;
  v9 = v13;
  v10 = finishedCopy;
  [v9 performBlockOnCollectionsWorkerQueue:v11];
}

- (void)addBooks:(id)books toCollection:(id)collection forceToTop:(BOOL)top completion:(id)completion
{
  completionCopy = completion;
  booksCopy = books;
  collectionID = [collection collectionID];
  v13 = [booksCopy valueForKey:@"assetID"];
  allObjects = [v13 allObjects];

  v15 = [booksCopy valueForKey:@"temporaryAssetID"];

  allObjects2 = [v15 allObjects];

  if (![allObjects2 count])
  {

    allObjects2 = 0;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_63740;
  v21[3] = &unk_D74D0;
  v21[4] = self;
  v22 = collectionID;
  v24 = allObjects2;
  v25 = completionCopy;
  v23 = allObjects;
  topCopy = top;
  v17 = allObjects2;
  v18 = completionCopy;
  v19 = allObjects;
  v20 = collectionID;
  dispatch_async(&_dispatch_main_q, v21);
}

- (void)removeAssetID:(id)d fromCollectionID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  dCopy = d;
  v11 = [[BKCollectionControllerMemberManagingRemoveRequest alloc] initWithStoreID:dCopy collectionID:iDCopy];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_63EB8;
  v13[3] = &unk_D74F8;
  v14 = completionCopy;
  v12 = completionCopy;
  [(BKLibraryCollectionManager *)self performRemoveRequest:v11 completion:v13];
}

- (void)performRemoveRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  storeID = [requestCopy storeID];
  collectionID = [requestCopy collectionID];

  libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
  v11 = libraryManager;
  if (libraryManager)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_64108;
    v15[3] = &unk_D7520;
    v15[4] = collectionID;
    v15[5] = storeID;
    v15[6] = self;
    v16 = libraryManager;
    v17 = completionCopy;
    [v16 performBlockOnCollectionsWorkerQueue:v15];
  }

  else
  {
    v12 = objc_retainBlock(completionCopy);
    if (v12)
    {
      v18 = NSLocalizedDescriptionKey;
      v19 = @"No library found.";
      v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v14 = [NSError errorWithDomain:@"BKLibraryCollectionManager" code:0 userInfo:v13];
      v12[2](v12, 0, v14);
    }
  }
}

- (void)markAsFinishedStoreID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [[BCMutableStoreItem alloc] initWithStoreID:dCopy];
  v9 = +[BCCloudAssetManager sharedManager];
  storeAssetManager = [v9 storeAssetManager];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_6467C;
  v18[3] = &unk_D7548;
  v11 = dCopy;
  v19 = v11;
  v20 = completionCopy;
  v12 = completionCopy;
  [storeAssetManager addStoreItem:v8 completion:v18];
  [(BKLibraryCollectionManager *)self libraryManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_64728;
  v16 = v15[3] = &unk_D5420;
  v17 = v11;
  v13 = v11;
  v14 = v16;
  [v14 waitForAssetID:v13 completion:v15];
}

- (void)addStoreID:(id)d toCollectionID:(id)iD forceToTop:(BOOL)top completion:(id)completion
{
  topCopy = top;
  completionCopy = completion;
  iDCopy = iD;
  dCopy = d;
  v13 = [[BKCollectionControllerMemberManagingAddRequest alloc] initWithStoreID:dCopy collectionID:iDCopy forceToTop:topCopy];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_64918;
  v15[3] = &unk_D74F8;
  v16 = completionCopy;
  v14 = completionCopy;
  [(BKLibraryCollectionManager *)self performAddRequest:v13 completion:v15];
}

- (void)performAddRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  storeID = [requestCopy storeID];
  collectionID = [requestCopy collectionID];
  forceToTop = [requestCopy forceToTop];

  v11 = [collectionID isEqualToString:kBKCollectionDefaultIDWantToRead];
  v12 = v11;
  if (v11)
  {
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 postNotificationName:@"BKLibraryAssetAddToWTRCollectionNotification" object:self userInfo:0];
  }

  if ([collectionID isEqualToString:kBKCollectionDefaultIDFinished])
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_64C64;
    v26[3] = &unk_D7570;
    v27 = completionCopy;
    [(BKLibraryCollectionManager *)self markAsFinishedStoreID:storeID completion:v26];
    v14 = v27;
LABEL_9:

    goto LABEL_10;
  }

  libraryManager = [(BKLibraryCollectionManager *)self libraryManager];

  if (libraryManager)
  {
    v17 = BKLibraryCollectionLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v29 = storeID;
      v30 = 2112;
      v31 = collectionID;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Adding storeIDs: %@ to collection %@", buf, 0x16u);
    }

    libraryManager2 = [(BKLibraryCollectionManager *)self libraryManager];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_64D30;
    v22[3] = &unk_D75E8;
    v22[4] = self;
    v22[5] = collectionID;
    v22[6] = storeID;
    v24 = forceToTop;
    v25 = v12;
    v23 = completionCopy;
    [libraryManager2 performBlockOnCollectionsWorkerQueue:v22];

    v14 = v23;
    goto LABEL_9;
  }

  v19 = [NSError errorWithDomain:@"BKLibraryErrorDomain" code:2 userInfo:0];
  v20 = objc_retainBlock(completionCopy);
  v21 = v20;
  if (v20)
  {
    (*(v20 + 2))(v20, 0, v19);
  }

LABEL_10:
}

- (BOOL)allowsAutoDownloadOfSamplesToWantToRead
{
  objc_opt_class();
  v2 = +[BCRCDataContainer defaultContainer];
  configs = [v2 configs];
  v4 = [configs valueForKeyPath:BRCBooksDefaultsKeyReadingNowWtrSimpleModeEnabled];
  v5 = BUDynamicCast();

  LOBYTE(v2) = [v5 BOOLValue];
  return v2 ^ 1;
}

- (void)p_downloadSampleBook:(id)book
{
  bookCopy = book;
  v5 = +[AEUserPublishing sharedInstance];
  v10 = bookCopy;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_6547C;
  v8[3] = &unk_D7638;
  v8[4] = self;
  v9 = bookCopy;
  v7 = bookCopy;
  [v5 lockupProfilesForStoreIDs:v6 completion:v8];
}

- (void)removeBook:(id)book fromCollections:(id)collections completion:(id)completion
{
  bookCopy = book;
  collectionsCopy = collections;
  completionCopy = completion;
  libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
  v12 = libraryManager;
  if (bookCopy && libraryManager && [collectionsCopy count])
  {
    assetID = [bookCopy assetID];
    objc_opt_class();
    v14 = [collectionsCopy valueForKey:@"collectionID"];
    v15 = BUDynamicCast();

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_65A94;
    v20[3] = &unk_D7688;
    v20[4] = self;
    v21 = bookCopy;
    v22 = v15;
    v23 = assetID;
    v24 = v12;
    v25 = completionCopy;
    v16 = assetID;
    v17 = v15;
    [v24 performBlockOnCollectionsWorkerQueue:v20];
  }

  else
  {
    v18 = objc_retainBlock(completionCopy);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, 0, 0);
    }
  }
}

- (void)removeBooks:(id)books fromCollection:(id)collection completion:(id)completion
{
  booksCopy = books;
  collectionCopy = collection;
  completionCopy = completion;
  libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
  if (libraryManager && [collectionCopy deleteRemovesFromCollection])
  {
    collectionID = [collectionCopy collectionID];
    v13 = [booksCopy valueForKey:@"assetID"];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_65F2C;
    v18[3] = &unk_D7688;
    v18[4] = self;
    v19 = booksCopy;
    v20 = collectionID;
    v21 = v13;
    v22 = libraryManager;
    v23 = completionCopy;
    v14 = v13;
    v15 = collectionID;
    [v22 performBlockOnCollectionsWorkerQueue:v18];
  }

  else
  {
    v16 = objc_retainBlock(completionCopy);
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0, 0);
    }
  }
}

- (void)cleanupDefaultCollections
{
  libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
  [libraryManager performBlockOnCollectionsWorkerQueueAndWait:&stru_D76C8];
}

- (BOOL)p_shouldDeleteAsset:(id)asset removingFromCollectionIDs:(id)ds
{
  assetCopy = asset;
  dsCopy = ds;
  collectionMembers = [assetCopy collectionMembers];
  v8 = [collectionMembers count];
  v9 = [dsCopy count];

  if ([assetCopy isSample] && objc_msgSend(assetCopy, "isLocal") && ((v10 = v8 - v9, ((v8 - v9) & 0xFFFFFFFFFFFFFFFELL) == 2) || objc_msgSend(dsCopy, "containsObject:", kBKCollectionDefaultIDSamples)))
  {
    collectionMembers2 = [assetCopy collectionMembers];
    v12 = [collectionMembers2 valueForKeyPath:@"collectionID"];

    v13 = [dsCopy isSubsetOfSet:v12] && objc_msgSend(v12, "containsObject:", kBKCollectionDefaultAll) && ((objc_msgSend(v12, "containsObject:", kBKCollectionDefaultIDBooks) & 1) != 0 || objc_msgSend(v12, "containsObject:", kBKCollectionDefaultIDAudiobooks)) && (v10 == 2 || objc_msgSend(v12, "containsObject:", kBKCollectionDefaultIDDownloaded));
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)p_assetsRequiringDeletion:(id)deletion removingFromCollectionIDs:(id)ds
{
  deletionCopy = deletion;
  dsCopy = ds;
  v8 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = deletionCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([(BKLibraryCollectionManager *)self p_shouldDeleteAsset:v14 removingFromCollectionIDs:dsCopy, v16])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)fetchWTRMembersInContext:(id)context
{
  contextCopy = context;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollectionMember"];
  v5 = [BKLibraryManager predicateForCollectionMembersInCollectionID:kBKCollectionDefaultIDWantToRead hideUnownedItems:0];
  v14[0] = v5;
  v6 = +[BKLibraryManager predicateForExcludingCollectionMembersWithSideloadedAssets];
  v14[1] = v6;
  v7 = [NSArray arrayWithObjects:v14 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  [v4 setPredicate:v8];

  v9 = [contextCopy executeFetchRequest:v4 error:0];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = +[NSArray array];
  }

  v11 = v10;

  v12 = [NSSet setWithArray:v11];

  return v12;
}

- (void)p_syncCollections:(id)collections deletedCollections:(id)deletedCollections inContext:(id)context
{
  collectionsCopy = collections;
  deletedCollectionsCopy = deletedCollections;
  contextCopy = context;
  v8 = +[NSMutableSet set];
  v62 = +[NSMutableDictionary dictionary];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = collectionsCopy;
  v9 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (v9)
  {
    v10 = *v78;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v78 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v77 + 1) + 8 * i);
        deletedFlag = [v12 deletedFlag];
        bOOLValue = [deletedFlag BOOLValue];

        if (bOOLValue)
        {
          v15 = +[BULogUtilities shared];
          verboseLoggingEnabled = [v15 verboseLoggingEnabled];

          if (verboseLoggingEnabled)
          {
            v18 = BKLibraryCollectionDevelopmentLog(v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v12;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "\\collection marked deleted: %@\", &buf, 0xCu);
            }
          }

          collectionID = [v12 collectionID];
          if (collectionID)
          {
            [v8 addObject:collectionID];
          }

          else
          {
            v26 = +[BULogUtilities shared];
            verboseLoggingEnabled2 = [v26 verboseLoggingEnabled];

            if (verboseLoggingEnabled2)
            {
              v29 = BKLibraryAssetDetailsDevelopmentLog(v28);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v12;
                _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "\\collection marked as deleted but has no collectionID: %@\", &buf, 0xCu);
              }
            }
          }
        }

        else
        {
          placeholder = [v12 placeholder];
          bOOLValue2 = [placeholder BOOLValue];

          if (bOOLValue2)
          {
            v22 = +[BULogUtilities shared];
            verboseLoggingEnabled3 = [v22 verboseLoggingEnabled];

            if (!verboseLoggingEnabled3)
            {
              continue;
            }

            collectionID = BKLibraryCollectionDevelopmentLog(v24);
            if (os_log_type_enabled(collectionID, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v12;
              _os_log_impl(&dword_0, collectionID, OS_LOG_TYPE_DEFAULT, "\\collection marked placeholder: %@\", &buf, 0xCu);
            }
          }

          else
          {
            collectionID = [v12 collectionDetailRepresentation];
            v19CollectionID = [collectionID collectionID];
            if (v19CollectionID)
            {
              [v62 setObject:collectionID forKey:v19CollectionID];
            }

            else
            {
              v30 = +[BULogUtilities shared];
              verboseLoggingEnabled4 = [v30 verboseLoggingEnabled];

              if (verboseLoggingEnabled4)
              {
                v33 = BKLibraryAssetDetailsDevelopmentLog(v32);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v12;
                  _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "\\Collection detail representation has no collectionID: %@\", &buf, 0xCu);
                }
              }
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
    }

    while (v9);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v34 = deletedCollectionsCopy;
  v35 = [v34 countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (v35)
  {
    v36 = *v74;
    do
    {
      for (j = 0; j != v35; j = j + 1)
      {
        if (*v74 != v36)
        {
          objc_enumerationMutation(v34);
        }

        collectionID2 = [*(*(&v73 + 1) + 8 * j) collectionID];
        if (collectionID2)
        {
          [v8 addObject:collectionID2];
        }
      }

      v35 = [v34 countByEnumeratingWithState:&v73 objects:v84 count:16];
    }

    while (v35);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v82 = 0x2020000000;
  v83 = 0;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_66F1C;
  v72[3] = &unk_D76F0;
  v72[4] = self;
  v72[5] = &buf;
  v39 = objc_retainBlock(v72);
  v40 = v39;
  if (contextCopy)
  {
    (v39[2])(v39);
  }

  else
  {
    libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
    [libraryManager performBlockOnCollectionsWorkerQueue:v40];
  }

  v42 = dispatch_group_create();
  if ([v62 count])
  {
    v43 = +[BULogUtilities shared];
    verboseLoggingEnabled5 = [v43 verboseLoggingEnabled];

    if (verboseLoggingEnabled5)
    {
      v46 = BKLibraryCollectionDevelopmentLog(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *v71 = 0;
        _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "\\Collections Inserted or Updated\", v71, 2u);
      }
    }

    allKeys = [v62 allKeys];
    dispatch_group_enter(v42);
    cloudCollectionsManager = [(BKLibraryCollectionManager *)self cloudCollectionsManager];
    collectionDetailManager = [cloudCollectionsManager collectionDetailManager];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_66FC4;
    v68[3] = &unk_D7718;
    v50 = allKeys;
    v69 = v50;
    v70 = v42;
    [collectionDetailManager setCollectionDetails:v62 completion:v68];
  }

  if ([v8 count])
  {
    v51 = +[BULogUtilities shared];
    verboseLoggingEnabled6 = [v51 verboseLoggingEnabled];

    if (verboseLoggingEnabled6)
    {
      v54 = BKLibraryCollectionDevelopmentLog(v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *v71 = 0;
        _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "\\Collections Deleted\", v71, 2u);
      }
    }

    dispatch_group_enter(v42);
    cloudCollectionsManager2 = [(BKLibraryCollectionManager *)self cloudCollectionsManager];
    collectionDetailManager2 = [cloudCollectionsManager2 collectionDetailManager];
    allObjects = [v8 allObjects];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_67134;
    v65[3] = &unk_D6A78;
    v66 = v8;
    v67 = v42;
    [collectionDetailManager2 deleteCollectionDetailForCollectionIDs:allObjects completion:v65];
  }

  v58 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_67248;
  block[3] = &unk_D6410;
  block[4] = self;
  block[5] = &buf;
  dispatch_group_notify(v42, v58, block);

  _Block_object_dispose(&buf, 8);
}

- (void)p_syncCollectionMembers:(id)members deletedCollectionMembers:(id)collectionMembers inContext:(id)context
{
  membersCopy = members;
  collectionMembersCopy = collectionMembers;
  contextCopy = context;
  v10 = collectionMembersCopy;
  v50 = contextCopy;
  v53 = +[NSMutableDictionary dictionary];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = membersCopy;
  v11 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
  if (v11)
  {
    v12 = *v70;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v70 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v69 + 1) + 8 * i);
        collection = [v14 collection];
        collectionID = [collection collectionID];
        if (collectionID)
        {
          assetID = [v14 assetID];
          if (assetID)
          {
            collection2 = [v14 collection];
            shouldSyncCollectionMembers = [collection2 shouldSyncCollectionMembers];

            if (!shouldSyncCollectionMembers)
            {
              continue;
            }

            collection = [v14 collectionMemberRepresentation];
            collectionID = [collection collectionMemberID];
            [v53 setObject:collection forKey:collectionID];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
    }

    while (v11);
  }

  v52 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v20 = v10;
  v21 = [v20 countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (!v21)
  {
    goto LABEL_26;
  }

  v22 = *v66;
  do
  {
    for (j = 0; j != v21; j = j + 1)
    {
      if (*v66 != v22)
      {
        objc_enumerationMutation(v20);
      }

      v24 = *(*(&v65 + 1) + 8 * j);
      collectionID2 = [v24 collectionID];
      if (collectionID2)
      {
        assetID2 = [v24 assetID];
        if (assetID2)
        {
          collectionID3 = [v24 collectionID];
          v28 = [BKCollection shouldSyncCollectionID:collectionID3];

          if (!v28)
          {
            continue;
          }

          collectionID4 = [v24 collectionID];
          assetID3 = [v24 assetID];
          collectionID2 = [BCCollectionMember collectionMemberIDWithCollectionID:collectionID4 assetID:assetID3];

          [v52 addObject:collectionID2];
        }
      }
    }

    v21 = [v20 countByEnumeratingWithState:&v65 objects:v73 count:16];
  }

  while (v21);
LABEL_26:

  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v64[3] = 0;
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_67A5C;
  v63[3] = &unk_D76F0;
  v63[4] = self;
  v63[5] = v64;
  v31 = objc_retainBlock(v63);
  v32 = v31;
  if (v50)
  {
    (v31[2])(v31);
  }

  else
  {
    libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
    [libraryManager performBlockOnCollectionsWorkerQueue:v32];
  }

  v34 = dispatch_group_create();
  if ([v53 count])
  {
    v35 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v35 verboseLoggingEnabled];

    if (verboseLoggingEnabled)
    {
      v38 = BKLibraryCollectionDevelopmentLog(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "\\Collection Members Inserted or Updated\", buf, 2u);
      }
    }

    allKeys = [v53 allKeys];
    dispatch_group_enter(v34);
    cloudCollectionsManager = [(BKLibraryCollectionManager *)self cloudCollectionsManager];
    collectionMemberManager = [cloudCollectionsManager collectionMemberManager];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_67B04;
    v59[3] = &unk_D7718;
    v60 = v34;
    v42 = allKeys;
    v61 = v42;
    [collectionMemberManager setCollectionMembers:v53 completion:v59];
  }

  if ([v52 count])
  {
    v43 = +[BULogUtilities shared];
    verboseLoggingEnabled2 = [v43 verboseLoggingEnabled];

    if (verboseLoggingEnabled2)
    {
      v46 = BKLibraryCollectionDevelopmentLog(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "\\Collection Members Deleted\", buf, 2u);
      }
    }

    dispatch_group_enter(v34);
    cloudCollectionsManager2 = [(BKLibraryCollectionManager *)self cloudCollectionsManager];
    collectionMemberManager2 = [cloudCollectionsManager2 collectionMemberManager];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_67C74;
    v56[3] = &unk_D6A78;
    v57 = v52;
    v58 = v34;
    [collectionMemberManager2 deleteCollectionMemberForCollectionMemberIDs:v57 completion:v56];
  }

  v49 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_67D64;
  block[3] = &unk_D6410;
  block[4] = self;
  block[5] = v64;
  dispatch_group_notify(v34, v49, block);

  _Block_object_dispose(v64, 8);
}

- (void)mocDidSave:(id)save
{
  saveCopy = save;
  v5 = BKLibraryCollectionLog(saveCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_91964(saveCopy);
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  enableCloudMergeQueue = [(BKLibraryCollectionManager *)self enableCloudMergeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_68544;
  block[3] = &unk_D7318;
  block[4] = self;
  block[5] = &v43;
  dispatch_sync(enableCloudMergeQueue, block);

  objc_opt_class();
  object = [saveCopy object];
  v8 = BUDynamicCast();

  v9 = [v8 sessionContextType] == 5 && objc_msgSend(v8, "saveContext") == 1;
  userInfo = [saveCopy userInfo];
  v11 = [userInfo objectForKey:NSUpdatedObjectsKey];

  if (v8)
  {
    kBKCollectionDefaultIDWantToRead = [NSPredicate predicateWithFormat:@"self isKindOfClass:%@ AND self.collectionID == %@", objc_opt_class(), kBKCollectionDefaultIDWantToRead];
    v13 = [v11 filteredSetUsingPredicate:kBKCollectionDefaultIDWantToRead];
    if ([v13 count])
    {
      libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
      [libraryManager collectionManagerDidModifyWantToReadCollection:self];
    }

    if (!v9 && [v8 sessionContextType] != 2 && objc_msgSend(v8, "sessionContextType") != 3 && objc_msgSend(v8, "sessionContextType") != 1)
    {
      persistentStoreCoordinator = [v8 persistentStoreCoordinator];
      libraryManager2 = [(BKLibraryCollectionManager *)self libraryManager];
      persistentStoreCoordinator2 = [libraryManager2 persistentStoreCoordinator];
      v18 = [persistentStoreCoordinator hasStoreInCommonWith:persistentStoreCoordinator2];

      if (v18)
      {
        userInfo2 = [saveCopy userInfo];
        v41 = [userInfo2 objectForKey:NSInsertedObjectsKey];

        userInfo3 = [saveCopy userInfo];
        v40 = [userInfo3 objectForKey:NSDeletedObjectsKey];

        if (*(v44 + 24) == 1 && ([v41 count] || objc_msgSend(v11, "count") || objc_msgSend(v40, "count")))
        {
          v21 = [NSPredicate predicateWithFormat:@"self isKindOfClass: %@", objc_opt_class()];
          v22 = +[NSMutableSet set];
          v38 = [v41 filteredSetUsingPredicate:v21];
          v37 = [v11 filteredSetUsingPredicate:v21];
          if ([v38 count])
          {
            [v22 unionSet:v38];
          }

          if ([v37 count])
          {
            [v22 unionSet:v37];
          }

          v23 = [v40 filteredSetUsingPredicate:v21];
          v24 = [v23 mutableCopy];

          v25 = [v22 count];
          if (v25 || (v25 = [v24 count]) != 0)
          {
            v26 = BKLibraryCollectionLog(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [v22 count];
              v28 = [v24 count];
              *buf = 134218498;
              v48 = v27;
              v49 = 2048;
              v50 = v28;
              v51 = 2114;
              v52 = v8;
              _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Saving collections: %lu inserts/updates, %lu deletes (due to moc save: %{public}@)", buf, 0x20u);
            }

            [(BKLibraryCollectionManager *)self p_syncCollections:v22 deletedCollections:v24 inContext:0];
          }

          v29 = [NSPredicate predicateWithFormat:@"self isKindOfClass: %@", objc_opt_class()];
          v30 = +[NSMutableSet set];
          v39 = [v41 filteredSetUsingPredicate:v29];
          v31 = [v11 filteredSetUsingPredicate:v29];
          if ([v39 count])
          {
            [v30 unionSet:v39];
          }

          if ([v31 count])
          {
            [v30 unionSet:v31];
          }

          v32 = [v40 filteredSetUsingPredicate:v29];
          v33 = [v30 count];
          if (v33 || (v33 = [v32 count]) != 0)
          {
            v34 = BKLibraryCollectionLog(v33);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [v30 count];
              v36 = [v32 count];
              *buf = 134218498;
              v48 = v35;
              v49 = 2048;
              v50 = v36;
              v51 = 2114;
              v52 = v8;
              _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Saving collection members: %lu inserts/updates, %lu deletes (due to moc save: %{public}@)", buf, 0x20u);
            }

            [(BKLibraryCollectionManager *)self p_syncCollectionMembers:v30 deletedCollectionMembers:v32 inContext:0];
          }
        }
      }
    }
  }

  _Block_object_dispose(&v43, 8);
}

- (void)_BCCloudCollectionDetailManagerChanged:(id)changed
{
  getChangesQueue = [(BKLibraryCollectionManager *)self getChangesQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_68600;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_async(getChangesQueue, block);
}

- (void)_checkForChangesFromCloudCollectionDetailManagerInMOC:(id)c reason:(id)reason
{
  reasonCopy = reason;
  cCopy = c;
  libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
  v9 = [libraryManager cloudSyncVersionsForDataType:@"BCCollectionDetail" inContext:cCopy];

  v10 = [v9 mutableCopy];
  v12 = BKLibraryCollectionLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = reasonCopy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "_checkForChangesFromCloudCollectionDetailManagerInMOC cloudSyncVersions:%{public}@, reason:%{public}@", buf, 0x16u);
  }

  cloudCollectionsManager = [(BKLibraryCollectionManager *)self cloudCollectionsManager];
  collectionDetailManager = [cloudCollectionsManager collectionDetailManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_68938;
  v15[3] = &unk_D7740;
  v15[4] = self;
  [collectionDetailManager getCollectionDetailChangesSince:v10 completion:v15];
}

- (void)_BCCloudCollectionMemberManagerChanged:(id)changed
{
  getChangesQueue = [(BKLibraryCollectionManager *)self getChangesQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_69494;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_async(getChangesQueue, block);
}

- (void)_checkForChangesFromCloudCollectionMemberManagerInMOC:(id)c reason:(id)reason
{
  reasonCopy = reason;
  cCopy = c;
  libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
  v9 = [libraryManager cloudSyncVersionsForDataType:@"BCCollectionMember" inContext:cCopy];

  v10 = [v9 mutableCopy];
  v12 = BKLibraryCollectionLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = reasonCopy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "_checkForChangesFromCloudCollectionMemberManagerInMOC cloudSyncVersions:%{public}@, reason:%{public}@", buf, 0x16u);
  }

  cloudCollectionsManager = [(BKLibraryCollectionManager *)self cloudCollectionsManager];
  collectionMemberManager = [cloudCollectionsManager collectionMemberManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_697CC;
  v15[3] = &unk_D7740;
  v15[4] = self;
  [collectionMemberManager getCollectionMemberChangesSince:v10 completion:v15];
}

- (id)p_fetchOrCreatePlaceholderCollectionForCollectionID:(id)d moc:(id)moc
{
  dCopy = d;
  mocCopy = moc;
  v14 = 0;
  v8 = [(BKLibraryCollectionManager *)self mutableCollectionWithCollectionID:dCopy inManagedObjectContext:mocCopy error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = BKLibraryCollectionLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v16 = dCopy;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Creating a new placeholder collection for member insertion collectionID:%{public}@", buf, 0xCu);
    }

    v12 = [BKCollection insertNewCollectionWithCollectionID:dCopy inManagedObjectContext:mocCopy];

    [v12 setTitle:@"Sync Placeholder"];
    [v12 setLocalModDate:0];
    [v12 setPlaceholder:&__kCFBooleanTrue];
    v8 = v12;
  }

  return v8;
}

- (void)p_updateAssetInMembers:(id)members moc:(id)moc
{
  membersCopy = members;
  mocCopy = moc;
  v6 = BKLibraryCollectionLog(mocCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_91ABC(membersCopy);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v7 = +[BKCollection availableDefaultCollectionIDsForOS];
  v8 = [v7 countByEnumeratingWithState:&v94 objects:v106 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v95;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v95 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v94 + 1) + 8 * i);
        v13 = [NSPredicate predicateWithFormat:@"collectionID == %@", v12];
        v14 = [membersCopy filteredArrayUsingPredicate:v13];
        v15 = [v14 count];

        if (v15)
        {
          v17 = BKLibraryCollectionLog(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218242;
            v103 = v15;
            v104 = 2112;
            v105 = v12;
            _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "├─ %lu %@ BKCollectionMembers don't have asset link", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v94 objects:v106 count:16];
    }

    while (v9);
  }

  v18 = +[NSMutableArray array];
  v19 = +[NSMutableArray array];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v20 = membersCopy;
  v21 = [v20 countByEnumeratingWithState:&v90 objects:v101 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v91;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v91 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v90 + 1) + 8 * j);
        assetID = [v25 assetID];
        if (assetID)
        {
          [v18 addObject:assetID];
        }

        temporaryAssetID = [v25 temporaryAssetID];
        if (temporaryAssetID)
        {
          [v19 addObject:temporaryAssetID];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v90 objects:v101 count:16];
    }

    while (v22);
  }

  v28 = +[NSMutableDictionary dictionary];
  v69 = v18;
  v70 = v19;
  v71 = v20;
  if ([v18 count])
  {
    v29 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    v30 = [NSPredicate predicateWithFormat:@"assetID IN %@", v69];
    [v29 setPredicate:v30];
    v89 = 0;
    v31 = [mocCopy executeFetchRequest:v29 error:&v89];
    v32 = v89;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v33 = v31;
    v34 = [v33 countByEnumeratingWithState:&v85 objects:v100 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v86;
      do
      {
        for (k = 0; k != v35; k = k + 1)
        {
          if (*v86 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v85 + 1) + 8 * k);
          assetID2 = [v38 assetID];
          [v28 setObject:v38 forKey:assetID2];
        }

        v35 = [v33 countByEnumeratingWithState:&v85 objects:v100 count:16];
      }

      while (v35);
    }

    v19 = v70;
    v20 = v71;
  }

  v40 = +[NSMutableDictionary dictionary];
  if ([v19 count])
  {
    v41 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    v42 = [NSPredicate predicateWithFormat:@"temporaryAssetID IN %@", v19];
    [v41 setPredicate:v42];
    v84 = 0;
    v43 = [mocCopy executeFetchRequest:v41 error:&v84];
    v72 = v84;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v44 = v43;
    v45 = [v44 countByEnumeratingWithState:&v80 objects:v99 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v81;
      do
      {
        for (m = 0; m != v46; m = m + 1)
        {
          if (*v81 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v80 + 1) + 8 * m);
          temporaryAssetID2 = [v49 temporaryAssetID];
          [v40 setObject:v49 forKey:temporaryAssetID2];
        }

        v46 = [v44 countByEnumeratingWithState:&v80 objects:v99 count:16];
      }

      while (v46);
    }

    v19 = v70;
    v20 = v71;
  }

  v73 = v40;
  if ([v28 count] || objc_msgSend(v40, "count"))
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v51 = v20;
    v52 = [v51 countByEnumeratingWithState:&v76 objects:v98 count:16];
    if (!v52)
    {
      goto LABEL_64;
    }

    v53 = v52;
    v54 = *v77;
    while (1)
    {
      for (n = 0; n != v53; n = n + 1)
      {
        if (*v77 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v76 + 1) + 8 * n);
        assetID3 = [v56 assetID];
        if (assetID3)
        {
          v58 = [v28 objectForKey:assetID3];
          if (v58)
          {
            goto LABEL_52;
          }
        }

        else
        {
          temporaryAssetID3 = [v56 temporaryAssetID];
          if (temporaryAssetID3)
          {
            v58 = [v73 objectForKey:temporaryAssetID3];
          }

          else
          {
            v58 = 0;
          }

          if (v58)
          {
LABEL_52:
            [(BKLibraryCollectionManager *)self p_updateAsset:v58 inCollectionMember:v56 withMOC:mocCopy];
            goto LABEL_61;
          }
        }

        v60 = +[BULogUtilities shared];
        verboseLoggingEnabled = [v60 verboseLoggingEnabled];

        if (verboseLoggingEnabled)
        {
          v63 = BKLibraryCollectionDevelopmentLog(v62);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            collection = [v56 collection];
            title = [collection title];
            *buf = 138412546;
            v103 = assetID3;
            v104 = 2112;
            v105 = title;
            _os_log_impl(&dword_0, v63, OS_LOG_TYPE_DEFAULT, "\\Did not find asset assetID %@ in Collection: %@ \", buf, 0x16u);
          }
        }

LABEL_61:
      }

      v53 = [v51 countByEnumeratingWithState:&v76 objects:v98 count:16];
      if (!v53)
      {
        v19 = v70;
        v20 = v71;
        goto LABEL_64;
      }
    }
  }

  v66 = +[BULogUtilities shared];
  verboseLoggingEnabled2 = [v66 verboseLoggingEnabled];

  if (verboseLoggingEnabled2)
  {
    v51 = BKLibraryCollectionDevelopmentLog(v68);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v103 = v69;
      v104 = 2112;
      v105 = v19;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "\\Did not find any assets for assetIDs: %@, temporaryAssetID: %@\", buf, 0x16u);
    }

LABEL_64:

    v40 = v73;
  }
}

- (void)p_updateAsset:(id)asset inCollectionMember:(id)member withMOC:(id)c
{
  memberCopy = member;
  assetCopy = asset;
  [memberCopy setAsset:assetCopy];
  v9 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v9 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v12 = BKLibraryCollectionDevelopmentLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      collection = [memberCopy collection];
      title = [collection title];
      asset = [memberCopy asset];
      title2 = [asset title];
      v61 = 138412546;
      v62 = title;
      v63 = 2112;
      v64 = title2;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "\\Initializing asset link for Collection: %@ Asset: %@\", &v61, 0x16u);
    }
  }

  upgradeAssetSortKeys = [(BKLibraryCollectionManager *)self upgradeAssetSortKeys];
  permanentOrTemporaryAssetID = [assetCopy permanentOrTemporaryAssetID];

  v19 = [upgradeAssetSortKeys objectForKey:permanentOrTemporaryAssetID];

  sortKey = [memberCopy sortKey];
  if (!sortKey)
  {
LABEL_17:
    [memberCopy setSortKey:v19];
    sortKey2 = [memberCopy sortKey];
    if (!sortKey2 || (v39 = sortKey2, [memberCopy sortKey], v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "integerValue"), v40, v39, !v41))
    {
      collection2 = [memberCopy collection];
      v46 = [BKUserSortOrderManager nextSortKeyForCollection:collection2];
      [memberCopy setSortKey:v46];

      v47 = +[BULogUtilities shared];
      LODWORD(collection2) = [v47 verboseLoggingEnabled];

      if (collection2)
      {
        v49 = BKLibraryCollectionDevelopmentLog(v48);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          collection3 = [memberCopy collection];
          title3 = [collection3 title];
          asset2 = [memberCopy asset];
          title4 = [asset2 title];
          v61 = 138412546;
          v62 = title3;
          v63 = 2112;
          v64 = title4;
          _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "\\#sortKey Did not find sort key in collection member or asset, assigned next sort key - Collection: %@ Asset: %@\", &v61, 0x16u);
        }
      }

      collection4 = [memberCopy collection];
      [collection4 updateMaxSortKeyWithMember:memberCopy];
      goto LABEL_32;
    }

    v42 = +[BULogUtilities shared];
    verboseLoggingEnabled2 = [v42 verboseLoggingEnabled];

    if (verboseLoggingEnabled2)
    {
      collection4 = BKLibraryCollectionDevelopmentLog(v44);
      if (os_log_type_enabled(collection4, OS_LOG_TYPE_DEFAULT))
      {
        collection5 = [memberCopy collection];
        title5 = [collection5 title];
        asset3 = [memberCopy asset];
        title6 = [asset3 title];
        v61 = 138412546;
        v62 = title5;
        v63 = 2112;
        v64 = title6;
        v37 = "\\#sortKey Adopted sort key from asset - Collection: %@ Asset: %@\";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v21 = sortKey;
  sortKey3 = [memberCopy sortKey];
  if (![sortKey3 integerValue])
  {

    goto LABEL_17;
  }

  if (v19 && [v19 integerValue])
  {
    sortKey4 = [memberCopy sortKey];
    v24 = [sortKey4 isEqual:v19];

    if ((v24 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  sortKey5 = [memberCopy sortKey];
  asset4 = [memberCopy asset];
  sortKey6 = [asset4 sortKey];
  v28 = [sortKey5 isEqual:sortKey6];

  if (v28)
  {
    v29 = +[BULogUtilities shared];
    verboseLoggingEnabled3 = [v29 verboseLoggingEnabled];

    if (verboseLoggingEnabled3)
    {
      collection4 = BKLibraryCollectionDevelopmentLog(v31);
      if (os_log_type_enabled(collection4, OS_LOG_TYPE_DEFAULT))
      {
        collection5 = [memberCopy collection];
        title5 = [collection5 title];
        asset3 = [memberCopy asset];
        title6 = [asset3 title];
        v61 = 138412546;
        v62 = title5;
        v63 = 2112;
        v64 = title6;
        v37 = "\\#sortKey Identical asset and member sort key - Collection: %@ Asset: %@\";
LABEL_31:
        _os_log_impl(&dword_0, collection4, OS_LOG_TYPE_DEFAULT, v37, &v61, 0x16u);
      }

LABEL_32:
    }
  }

  else
  {
    sortKey7 = [memberCopy sortKey];
    asset5 = [memberCopy asset];
    sortKey8 = [asset5 sortKey];
    v57 = [sortKey7 isEqual:sortKey8];

    if ((v57 & 1) == 0)
    {
      v58 = +[BULogUtilities shared];
      verboseLoggingEnabled4 = [v58 verboseLoggingEnabled];

      if (verboseLoggingEnabled4)
      {
        collection4 = BKLibraryCollectionDevelopmentLog(v60);
        if (os_log_type_enabled(collection4, OS_LOG_TYPE_DEFAULT))
        {
          collection5 = [memberCopy collection];
          title5 = [collection5 title];
          asset3 = [memberCopy asset];
          title6 = [asset3 title];
          v61 = 138412546;
          v62 = title5;
          v63 = 2112;
          v64 = title6;
          v37 = "\\#sortKey SortKey mismatch! - Collection: %@ Asset: %@\";
          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }
  }

LABEL_33:
}

- (void)updateCollectionMemberAssetLinksInMOCForUpgrade:(id)upgrade
{
  upgradeCopy = upgrade;
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  [v5 setPropertiesToFetch:&off_DE2A0];
  v6 = [NSPredicate predicateWithFormat:@"sortKey != NULL"];
  [v5 setPredicate:v6];

  v7 = [upgradeCopy executeFetchRequest:v5 error:0];
  if ([v7 count])
  {
    v23 = upgradeCopy;
    v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count]);
    [(BKLibraryCollectionManager *)self setUpgradeAssetSortKeys:v8];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          sortKey = [v14 sortKey];
          integerValue = [sortKey integerValue];

          if (integerValue)
          {
            permanentOrTemporaryAssetID = [v14 permanentOrTemporaryAssetID];
            if (permanentOrTemporaryAssetID)
            {
              upgradeAssetSortKeys = [(BKLibraryCollectionManager *)self upgradeAssetSortKeys];
              sortKey2 = [v14 sortKey];
              [upgradeAssetSortKeys setObject:sortKey2 forKey:permanentOrTemporaryAssetID];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    upgradeCopy = v23;
  }

  v20 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  v21 = [NSPredicate predicateWithFormat:@"asset == NULL"];
  [v20 setPredicate:v21];

  [v20 setFetchBatchSize:32];
  v22 = [upgradeCopy executeFetchRequest:v20 error:0];
  if ([v22 count])
  {
    [(BKLibraryCollectionManager *)self p_updateAssetInMembers:v22 moc:upgradeCopy];
  }
}

- (void)clearSortKeysFromAssetsInMOCForUpgrade:(id)upgrade
{
  upgradeCopy = upgrade;
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  [v5 setPropertiesToFetch:&off_DE2B8];
  v6 = [NSPredicate predicateWithFormat:@"sortKey != NULL"];
  [v5 setPredicate:v6];

  v7 = [upgradeCopy executeFetchRequest:v5 error:0];
  if ([v7 count])
  {
    v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count]);
    [(BKLibraryCollectionManager *)self setUpgradeAssetSortKeys:v8];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13) setSortKey:{0, v14}];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }

  [(BKLibraryCollectionManager *)self setUpgradeAssetSortKeys:0, v14];
}

- (void)updateCollectionMemberAssetLinksForAssetIDs:(id)ds temporaryAssetIDs:(id)iDs moc:(id)moc
{
  mocCopy = moc;
  iDsCopy = iDs;
  dsCopy = ds;
  v10 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  iDsCopy = [NSPredicate predicateWithFormat:@"asset == NULL AND (assetID IN %@ OR temporaryAssetID IN %@)", dsCopy, iDsCopy];

  [v10 setPredicate:iDsCopy];
  [v10 setFetchBatchSize:32];
  v12 = [mocCopy executeFetchRequest:v10 error:0];
  if ([v12 count])
  {
    [(BKLibraryCollectionManager *)self p_updateAssetInMembers:v12 moc:mocCopy];
  }
}

- (void)updateiTunesUCollectionMembersForAssetIDs:(id)ds temporaryAssetIDs:(id)iDs moc:(id)moc
{
  dsCopy = ds;
  iDsCopy = iDs;
  mocCopy = moc;
  v10 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  iDsCopy = [NSPredicate predicateWithFormat:@"asset.permlink != NULL AND (assetID IN %@ OR temporaryAssetID IN %@)", dsCopy, iDsCopy];
  [v10 setPredicate:iDsCopy];

  [v10 setFetchBatchSize:32];
  v66 = mocCopy;
  v12 = [mocCopy executeFetchRequest:v10 error:0];
  v13 = [v12 count];
  if (v13)
  {
    v61 = v10;
    v62 = iDsCopy;
    v63 = dsCopy;
    v14 = BKLibraryCollectionLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v84 = [v12 count];
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "updateiTunesUCollectionMembers: processing %ld iTunesU collection members.", buf, 0xCu);
    }

    v15 = +[NSMutableDictionary dictionary];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v60 = v12;
    v16 = v12;
    v17 = [v16 countByEnumeratingWithState:&v78 objects:v96 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v79;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v79 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v78 + 1) + 8 * i);
          collectionID = [v21 collectionID];
          if (collectionID)
          {
            v23 = [v15 objectForKeyedSubscript:collectionID];

            if (!v23)
            {
              v24 = +[NSMutableArray array];
              [v15 setObject:v24 forKeyedSubscript:collectionID];
            }

            v25 = [v15 objectForKeyedSubscript:collectionID];
            [v25 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v78 objects:v96 count:16];
      }

      while (v18);
    }

    v26 = +[NSMutableArray array];
    +[NSMutableArray array];
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_6C104;
    v64 = v75[3] = &unk_D7768;
    v76 = v64;
    v27 = v26;
    v77 = v27;
    v59 = v15;
    [v15 enumerateKeysAndObjectsUsingBlock:v75];
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v71 objects:v95 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v72;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v72 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v71 + 1) + 8 * j);
          asset = [v33 asset];
          assetID = [asset assetID];

          if (assetID)
          {
            assetID2 = [v33 assetID];
            v37 = [assetID isEqualToString:assetID2];

            if ((v37 & 1) == 0)
            {
              v39 = BKLibraryCollectionLog(v38);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                temporaryAssetID = [v33 temporaryAssetID];
                collectionID2 = [v33 collectionID];
                *buf = 141559298;
                v84 = 1752392040;
                v85 = 2112;
                v86 = assetID;
                v87 = 2160;
                v88 = 1752392040;
                v89 = 2112;
                v90 = temporaryAssetID;
                v91 = 2160;
                v92 = 1752392040;
                v93 = 2112;
                v94 = collectionID2;
                _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "updateiTunesUCollectionMembers: Updated collection member. new asestID: %{mask.hash}@ tempopraryAsestID: %{mask.hash}@ collectionID: %{mask.hash}@", buf, 0x3Eu);
              }

              [v33 setAssetID:assetID];
            }
          }

          asset2 = [v33 asset];
          temporaryAssetID2 = [asset2 temporaryAssetID];

          if (temporaryAssetID2)
          {
            temporaryAssetID3 = [v33 temporaryAssetID];
            v45 = [temporaryAssetID2 isEqualToString:temporaryAssetID3];

            if ((v45 & 1) == 0)
            {
              v47 = BKLibraryCollectionLog(v46);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                temporaryAssetID4 = [v33 temporaryAssetID];
                collectionID3 = [v33 collectionID];
                *buf = 141559298;
                v84 = 1752392040;
                v85 = 2112;
                v86 = assetID;
                v87 = 2160;
                v88 = 1752392040;
                v89 = 2112;
                v90 = temporaryAssetID4;
                v91 = 2160;
                v92 = 1752392040;
                v93 = 2112;
                v94 = collectionID3;
                _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "updateiTunesUCollectionMembers: Updated collection member. asestID: %{mask.hash}@ new tempopraryAsestID: %{mask.hash}@ collectionID: %{mask.hash}@", buf, 0x3Eu);
              }

              [v33 setTemporaryAssetID:temporaryAssetID2];
            }
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v71 objects:v95 count:16];
      }

      while (v30);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v64;
    v50 = [obj countByEnumeratingWithState:&v67 objects:v82 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v68;
      do
      {
        v53 = 0;
        do
        {
          if (*v68 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v54 = *(*(&v67 + 1) + 8 * v53);
          v55 = BKLibraryCollectionLog(v50);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            assetID3 = [v54 assetID];
            temporaryAssetID5 = [v54 temporaryAssetID];
            collectionID4 = [v54 collectionID];
            *buf = 141559298;
            v84 = 1752392040;
            v85 = 2112;
            v86 = assetID3;
            v87 = 2160;
            v88 = 1752392040;
            v89 = 2112;
            v90 = temporaryAssetID5;
            v91 = 2160;
            v92 = 1752392040;
            v93 = 2112;
            v94 = collectionID4;
            _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "updateiTunesUCollectionMembers: Deleted collection member. asestID: %{mask.hash}@ tempopraryAsestID: %{mask.hash}@ collectionID: %{mask.hash}@", buf, 0x3Eu);
          }

          v50 = [v66 deleteObject:v54];
          v53 = v53 + 1;
        }

        while (v51 != v53);
        v50 = [obj countByEnumeratingWithState:&v67 objects:v82 count:16];
        v51 = v50;
      }

      while (v50);
    }

    iDsCopy = v62;
    dsCopy = v63;
    v12 = v60;
    v10 = v61;
  }
}

- (void)fixCollectionMemberAssetLinks
{
  libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_6C5E8;
  v4[3] = &unk_D56B8;
  v4[4] = self;
  [libraryManager performBlockOnCollectionsWorkerQueueAndWait:v4];
}

- (void)fixPDFCollectionIfNeeded
{
  libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_6C8B8;
  v4[3] = &unk_D56B8;
  v4[4] = self;
  [libraryManager performBlockOnCollectionsWorkerQueue:v4];
}

- (void)_addMemberWithAsset:(id)asset toCollection:(id)collection moc:(id)moc
{
  assetCopy = asset;
  collectionCopy = collection;
  mocCopy = moc;
  sortKey = [assetCopy sortKey];
  if (![sortKey integerValue])
  {

    sortKey = 0;
  }

  upgradeAssetSortKeys = [(BKLibraryCollectionManager *)self upgradeAssetSortKeys];

  if (upgradeAssetSortKeys)
  {
    isContainer = [assetCopy isContainer];
    if (!sortKey)
    {
      if (isContainer)
      {
        v28 = mocCopy;
        v29 = collectionCopy;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        purchasedAndLocalSeriesItems = [assetCopy purchasedAndLocalSeriesItems];
        v15 = [purchasedAndLocalSeriesItems countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v15)
        {
          v16 = v15;
          sortKey = 0;
          v17 = *v31;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v31 != v17)
              {
                objc_enumerationMutation(purchasedAndLocalSeriesItems);
              }

              v19 = *(*(&v30 + 1) + 8 * i);
              upgradeAssetSortKeys2 = [(BKLibraryCollectionManager *)self upgradeAssetSortKeys];
              assetID = [v19 assetID];
              v22 = [upgradeAssetSortKeys2 objectForKey:assetID];

              integerValue = [v22 integerValue];
              if (integerValue > [sortKey integerValue])
              {
                v24 = v22;

                sortKey = v24;
              }
            }

            v16 = [purchasedAndLocalSeriesItems countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v16);
        }

        else
        {
          sortKey = 0;
        }

        mocCopy = v28;
        collectionCopy = v29;
      }
    }
  }

  assetID2 = [assetCopy assetID];
  temporaryAssetID = [assetCopy temporaryAssetID];
  v27 = [collectionCopy addCollectionMemberAvoidingDupesWithAsset:assetCopy assetID:assetID2 temporaryAssetID:temporaryAssetID sortKey:sortKey forceToTop:0];
}

- (void)resetCollections
{
  coalescedResetAllCollections = [(BKLibraryCollectionManager *)self coalescedResetAllCollections];
  [coalescedResetAllCollections signalWithCompletion:&stru_D7788];
}

- (void)resetCollectionsForAssetIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_6D114;
  v11[3] = &unk_D5B30;
  v11[4] = self;
  v12 = dsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  [libraryManager performBlockOnCollectionsWorkerQueue:v11];
}

- (void)processGatheredChangedAssetsCollections:(id)collections
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_6D1F8;
  v9 = &unk_D5420;
  selfCopy = self;
  collectionsCopy = collections;
  v4 = collectionsCopy;
  os_unfair_lock_lock_with_options();
  sub_6D1F8(&v6);
  os_unfair_lock_unlock(&self->_accessLock);
  v5 = [(BKLibraryCollectionManager *)self coalescedResetChangedCollections:v6];
  [v5 signalWithCompletion:&stru_D77A8];
}

- (id)gatherChangedAssetsCollectionsWithLibraryMoc:(id)moc
{
  mocCopy = moc;
  v4 = [NSPredicate predicateWithFormat:@"self isKindOfClass: %@ AND (assetID != NULL OR temporaryAssetID != NULL)", objc_opt_class()];
  v5 = [NSSet setWithObjects:@"contentType", @"state", @"isSample", @"localOnlySeriesItemsParent", @"purchasedAndLocalParent", @"purchasedAndLocalSeriesItems", @"path", 0];
  updatedObjects = [mocCopy updatedObjects];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_6D574;
  v23[3] = &unk_D77D0;
  v7 = v5;
  v24 = v7;
  v8 = [updatedObjects objectsPassingTest:v23];

  v9 = +[NSMutableSet set];
  insertedObjects = [mocCopy insertedObjects];

  [v9 unionSet:insertedObjects];
  [v9 unionSet:v8];
  v22 = v4;
  v11 = [v9 filteredSetUsingPredicate:v4];
  allObjects = [v11 allObjects];
  v13 = [allObjects valueForKey:@"assetID"];
  bu_arrayByRemovingNSNulls = [v13 bu_arrayByRemovingNSNulls];
  v15 = [NSSet setWithArray:bu_arrayByRemovingNSNulls];

  v16 = [allObjects valueForKey:@"temporaryAssetID"];
  bu_arrayByRemovingNSNulls2 = [v16 bu_arrayByRemovingNSNulls];
  v18 = [NSSet setWithArray:bu_arrayByRemovingNSNulls2];

  v19 = [v15 setByAddingObjectsFromSet:v18];
  v20 = BKLibraryLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_91C20(v19);
  }

  return v19;
}

- (void)_performResetCollectionsInMoc:(id)moc changeSet:(id)set completion:(id)completion
{
  mocCopy = moc;
  setCopy = set;
  completionCopy = completion;
  kdebug_trace();
  v7 = BKLibraryLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [setCopy count]);
    *buf = 138412290;
    v223 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "#resetCollections: start for changeSet of size %@", buf, 0xCu);
  }

  v9 = +[BKCollection predicateForAllDefaultCollections];
  v10 = [[NSFetchRequest alloc] initWithEntityName:@"BKCollection"];
  v145 = v9;
  [v10 setPredicate:v9];
  v144 = v10;
  [mocCopy executeFetchRequest:v10 error:0];
  v218 = 0u;
  v219 = 0u;
  v220 = 0u;
  obj = v221 = 0u;
  v11 = [obj countByEnumeratingWithState:&v218 objects:v242 count:16];
  if (!v11)
  {
    v165 = 0;
    v166 = 0;
    v171 = 0;
    v153 = 0;
    v154 = 0;
    v164 = 0;
    goto LABEL_26;
  }

  v12 = v11;
  v165 = 0;
  v166 = 0;
  v171 = 0;
  v153 = 0;
  v154 = 0;
  v164 = 0;
  v13 = *v219;
  v14 = kBKCollectionDefaultAll;
  v15 = kBKCollectionDefaultIDBooks;
  v16 = kBKCollectionDefaultIDPDFs;
  v181 = kBKCollectionDefaultIDAudiobooks;
  v178 = kBKCollectionDefaultIDDownloaded;
  v175 = kBKCollectionDefaultIDSamples;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v219 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v218 + 1) + 8 * i);
      if (([v18 isDeleted] & 1) == 0)
      {
        collectionID = [v18 collectionID];
        if ([collectionID isEqualToString:v14])
        {
          v21 = v165;
          v20 = v166;
          v165 = v18;
          goto LABEL_20;
        }

        if ([collectionID isEqualToString:v15])
        {
          v21 = v164;
          v20 = v166;
          v164 = v18;
          goto LABEL_20;
        }

        if ([collectionID isEqualToString:v16])
        {
          v21 = v154;
          v20 = v166;
          v154 = v18;
          goto LABEL_20;
        }

        if ([collectionID isEqualToString:v181])
        {
          v21 = v153;
          v20 = v166;
          v153 = v18;
          goto LABEL_20;
        }

        if ([collectionID isEqualToString:v178])
        {
          v21 = v171;
          v20 = v166;
          v171 = v18;
          goto LABEL_20;
        }

        v21 = v166;
        v20 = v18;
        if ([collectionID isEqualToString:v175])
        {
LABEL_20:
          v22 = v18;

          v166 = v20;
        }
      }
    }

    v12 = [obj countByEnumeratingWithState:&v218 objects:v242 count:16];
  }

  while (v12);
LABEL_26:

  v23 = setCopy;
  v24 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
  if ([setCopy count])
  {
    libraryManager = [(BKLibraryCollectionManager *)self libraryManager];
    v26 = [libraryManager libraryAssetsWithAssetIDsContainedInList:setCopy tempAssetIDs:setCopy inManagedObjectContext:mocCopy];

    v179 = [v26 count];
  }

  else
  {
    v27 = [NSPredicate predicateWithFormat:@"assetID != NULL OR temporaryAssetID != NULL"];
    v28 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    [v28 setPredicate:v27];
    v179 = 32;
    [v28 setFetchBatchSize:32];
    v26 = [mocCopy executeFetchRequest:v28 error:0];

    v23 = setCopy;
  }

  v29 = BKLibraryLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v23 count];
    v31 = [v26 count];
    *buf = 134218240;
    v223 = v30;
    v224 = 2048;
    v225 = v31;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "#resetCollections: _performResetCollectionsInMoc changed: %lu toCheck: %lu", buf, 0x16u);
  }

  v146 = v26;
  if ([v26 count])
  {
    v32 = +[NSMutableArray array];
    v33 = +[NSMutableArray array];
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v162 = v26;
    v182 = [v162 countByEnumeratingWithState:&v214 objects:v241 count:16];
    if (v182)
    {
      v34 = 0;
      v172 = *v215;
      v174 = v33;
      v176 = v32;
      do
      {
        v35 = 0;
        v150 = v34;
        do
        {
          if (*v215 != v172)
          {
            objc_enumerationMutation(v162);
          }

          v36 = *(*(&v214 + 1) + 8 * v35);
          if (!(v34 % v179) && ([v32 count] || objc_msgSend(v33, "count")))
          {
            [(BKLibraryCollectionManager *)self updateCollectionMemberAssetLinksForAssetIDs:v32 temporaryAssetIDs:v33 moc:mocCopy];
            [v32 removeAllObjects];
            [v33 removeAllObjects];
          }

          assetID = [v36 assetID];

          if (assetID)
          {
            assetID2 = [v36 assetID];
            [v32 addObject:assetID2];
          }

          temporaryAssetID = [v36 temporaryAssetID];

          if (temporaryAssetID)
          {
            temporaryAssetID2 = [v36 temporaryAssetID];
            [v33 addObject:temporaryAssetID2];
          }

          contentType = [v36 contentType];
          state = [v36 state];
          collectionMembers = [v36 collectionMembers];
          allObjects = [collectionMembers allObjects];
          v45 = [allObjects valueForKey:@"collection"];

          localOnlySeriesItemsParent = [v36 localOnlySeriesItemsParent];
          if (localOnlySeriesItemsParent)
          {
            v47 = 0;
            v48 = 0;
            if (contentType == 5)
            {
              goto LABEL_63;
            }

            goto LABEL_56;
          }

          purchasedAndLocalParent = [v36 purchasedAndLocalParent];
          if (purchasedAndLocalParent || state == 5)
          {
            v47 = 0;
            v48 = 0;
            if (contentType == 5)
            {
              goto LABEL_62;
            }

LABEL_56:
            seriesContainer = [v36 seriesContainer];
            seriesBooks = [seriesContainer seriesBooks];
            v48 = [seriesBooks count] != &dword_0 + 1;

            if ((v47 & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          }

          seriesID = [v36 seriesID];
          if (!seriesID)
          {
            goto LABEL_61;
          }

          seriesContainer2 = [v36 seriesContainer];
          if (!seriesContainer2)
          {
            seriesContainer2 = 0;
LABEL_61:

            v48 = 0;
            purchasedAndLocalParent = 0;
LABEL_62:

            goto LABEL_63;
          }

          seriesContainer3 = [v36 seriesContainer];
          purchasedAndLocalSeriesItems = [seriesContainer3 purchasedAndLocalSeriesItems];
          v48 = 0;
          purchasedAndLocalParent = 0;
          if ([purchasedAndLocalSeriesItems count] && contentType != 5)
          {
            v47 = 1;
            goto LABEL_56;
          }

LABEL_57:

LABEL_58:
          if (!localOnlySeriesItemsParent)
          {
            goto LABEL_62;
          }

LABEL_63:

          if (v165 && ([v45 containsObject:v165] & 1) == 0 && (contentType == 5 || !v48 && (objc_msgSend(v36, "isStoreItem") & 1) == 0))
          {
            [(BKLibraryCollectionManager *)self _addMemberWithAsset:v36 toCollection:v165 moc:mocCopy];
          }

          if (v171 && [v36 shouldBeInDownloadedCollection] && (objc_msgSend(v45, "containsObject:", v171) & 1) == 0)
          {
            [(BKLibraryCollectionManager *)self _addMemberWithAsset:v36 toCollection:v171 moc:mocCopy];
          }

          if (v166 && [v36 shouldBeInMySamplesCollection] && (objc_msgSend(v45, "containsObject:", v166) & 1) == 0)
          {
            [(BKLibraryCollectionManager *)self _addMemberWithAsset:v36 toCollection:v166 moc:mocCopy];
            v51 = +[BULogUtilities shared];
            verboseLoggingEnabled = [v51 verboseLoggingEnabled];

            if (verboseLoggingEnabled)
            {
              v53 = BKLibraryLog();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v223 = v36;
                _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "\\Adding Asset to sample collection:%@\", buf, 0xCu);
              }
            }

            storeID = [v36 storeID];

            if (storeID)
            {
              v55 = [BCMutableStoreItem alloc];
              storeID2 = [v36 storeID];
              v57 = [v55 initWithStoreID:storeID2];

              v58 = +[BCCloudAssetManager sharedManager];
              storeAssetManager = [v58 storeAssetManager];

              v213[0] = _NSConcreteStackBlock;
              v213[1] = 3221225472;
              v213[2] = sub_6EBB4;
              v213[3] = &unk_D77F8;
              v213[4] = v36;
              [storeAssetManager addStoreItem:v57 completion:v213];
            }
          }

          if ([v36 state] == 2)
          {
            v60 = [BKAssetUtilities isAudiobookTrackContentType:contentType]^ 1;
          }

          else
          {
            v60 = 1;
          }

          objc_opt_class();
          seriesBooks2 = [v36 seriesBooks];
          anyObject = [seriesBooks2 anyObject];
          v63 = BUDynamicCast();

          isStoreAudiobook = [v63 isStoreAudiobook];
          bOOLValue = [isStoreAudiobook BOOLValue];

          if (v164 && (contentType <= 4 && ((1 << contentType) & 0x16) != 0 || !((contentType != 5) | bOOLValue & 1)) && (([v45 containsObject:v164] | v48) & 1) == 0 && (v66 = v164, !objc_msgSend(v36, "isStoreItem")) || v154 && contentType == 3 && (v66 = v154, !objc_msgSend(v45, "containsObject:", v154)) || v153 && (contentType != 6 ? (v67 = v60) : (v67 = 0), (v67 != 1 || !((contentType != 5) | (bOOLValue ^ 1) & 1)) && ((objc_msgSend(v45, "containsObject:", v153) | v48) & 1) == 0 && (objc_msgSend(v36, "isStoreItem") & 1) == 0 && (v66 = v153, (objc_msgSend(v36, "isSample") & 1) == 0)))
          {
            [(BKLibraryCollectionManager *)self _addMemberWithAsset:v36 toCollection:v66 moc:mocCopy];
          }

          v35 = v35 + 1;
          ++v34;
          v32 = v176;
          v33 = v174;
        }

        while (v182 != v35);
        v34 = v182 + v150;
        v182 = [v162 countByEnumeratingWithState:&v214 objects:v241 count:16];
      }

      while (v182);
    }

    if ([v32 count] || objc_msgSend(v33, "count"))
    {
      [(BKLibraryCollectionManager *)self updateCollectionMemberAssetLinksForAssetIDs:v32 temporaryAssetIDs:v33 moc:mocCopy];
      [(BKLibraryCollectionManager *)self updateiTunesUCollectionMembersForAssetIDs:v32 temporaryAssetIDs:v33 moc:mocCopy];
    }

    v26 = v146;
    v24 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
  }

  if (v171)
  {
    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    v68 = v26;
    v69 = [v68 countByEnumeratingWithState:&v209 objects:v240 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v210;
      v183 = *v210;
      do
      {
        for (j = 0; j != v70; j = j + 1)
        {
          if (*v210 != v71)
          {
            objc_enumerationMutation(v68);
          }

          v73 = *(*(&v209 + 1) + 8 * j);
          collectionMembers2 = [v73 collectionMembers];
          allObjects2 = [collectionMembers2 allObjects];
          v76 = [allObjects2 valueForKey:@"collection"];

          if ([v73 shouldBeInDownloadedCollection] && (objc_msgSend(v76, "containsObject:", v171) & 1) == 0)
          {
            [(BKLibraryCollectionManager *)self _addMemberWithAsset:v73 toCollection:v171 moc:mocCopy];
          }

          if (([v73 shouldBeInDownloadedCollection] & 1) == 0 && objc_msgSend(v76, "containsObject:", v171))
          {
            v207 = 0u;
            v208 = 0u;
            v205 = 0u;
            v206 = 0u;
            collectionMembers3 = [v73 collectionMembers];
            v78 = [collectionMembers3 countByEnumeratingWithState:&v205 objects:v239 count:16];
            if (v78)
            {
              v79 = v78;
              v80 = *v206;
              while (2)
              {
                for (k = 0; k != v79; k = k + 1)
                {
                  if (*v206 != v80)
                  {
                    objc_enumerationMutation(collectionMembers3);
                  }

                  v82 = *(*(&v205 + 1) + 8 * k);
                  collection = [v82 collection];

                  if (collection == v171)
                  {
                    [mocCopy deleteObject:v82];
                    goto LABEL_132;
                  }
                }

                v79 = [collectionMembers3 countByEnumeratingWithState:&v205 objects:v239 count:16];
                if (v79)
                {
                  continue;
                }

                break;
              }
            }

LABEL_132:

            v71 = v183;
          }
        }

        v70 = [v68 countByEnumeratingWithState:&v209 objects:v240 count:16];
      }

      while (v70);
    }

    v24 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
  }

  v84 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  v85 = [v24[371] predicateWithFormat:@"collection == NULL"];
  [v84 setPredicate:v85];

  [v84 setFetchBatchSize:32];
  v143 = v84;
  v86 = [mocCopy executeFetchRequest:v84 error:0];
  if ([v86 count])
  {
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v87 = v86;
    v88 = [v87 countByEnumeratingWithState:&v201 objects:v238 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = *v202;
      do
      {
        for (m = 0; m != v89; m = m + 1)
        {
          if (*v202 != v90)
          {
            objc_enumerationMutation(v87);
          }

          [mocCopy deleteObject:*(*(&v201 + 1) + 8 * m)];
        }

        v89 = [v87 countByEnumeratingWithState:&v201 objects:v238 count:16];
      }

      while (v89);
    }
  }

  v142 = v86;
  v159 = kBKCollectionDefaultIDAudiobooks;
  v161 = kBKCollectionDefaultIDBooks;
  v92 = [v24[371] predicateWithFormat:@"(collection.collectionID == %@ OR collection.collectionID == %@ OR collection.collectionID == %@) AND asset.seriesID != NULL AND asset.contentType != %@ AND (asset.state == %@ OR asset.purchasedAndLocalParent != nil)", kBKCollectionDefaultAll, kBKCollectionDefaultIDBooks, kBKCollectionDefaultIDAudiobooks, &off_DE180, &off_DE180];
  v93 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  v141 = v92;
  [v93 setPredicate:v92];
  v140 = v93;
  v94 = [mocCopy executeFetchRequest:v93 error:0];
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v95 = v94;
  v96 = [v95 countByEnumeratingWithState:&v197 objects:v237 count:16];
  v149 = v95;
  if (v96)
  {
    v97 = v96;
    v98 = *v198;
    do
    {
      v99 = 0;
      do
      {
        if (*v198 != v98)
        {
          objc_enumerationMutation(v95);
        }

        v100 = *(*(&v197 + 1) + 8 * v99);
        asset = [v100 asset];
        seriesContainer4 = [asset seriesContainer];
        seriesBooks3 = [seriesContainer4 seriesBooks];
        v104 = [seriesBooks3 count];

        if (v104 != &dword_0 + 1)
        {
          localOnlySeriesItemsParent2 = [asset localOnlySeriesItemsParent];
          if (localOnlySeriesItemsParent2 || ([asset purchasedAndLocalParent], (localOnlySeriesItemsParent2 = objc_claimAutoreleasedReturnValue()) != 0))
          {

LABEL_154:
            [mocCopy deleteObject:v100];
            goto LABEL_155;
          }

          seriesID2 = [asset seriesID];
          if (seriesID2)
          {
            v107 = seriesID2;
            seriesContainer5 = [asset seriesContainer];
            if (seriesContainer5)
            {
              seriesContainer6 = [asset seriesContainer];
              purchasedAndLocalSeriesItems2 = [seriesContainer6 purchasedAndLocalSeriesItems];
              v111 = [purchasedAndLocalSeriesItems2 count];

              v95 = v149;
              if (v111)
              {
                goto LABEL_154;
              }
            }

            else
            {
            }
          }
        }

LABEL_155:

        v99 = v99 + 1;
      }

      while (v97 != v99);
      v112 = [v95 countByEnumeratingWithState:&v197 objects:v237 count:16];
      v97 = v112;
    }

    while (v112);
  }

  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v235[0] = v161;
  v235[1] = v159;
  v157 = kBKCollectionDefaultIDPDFs;
  v235[2] = kBKCollectionDefaultIDPDFs;
  v151 = [NSArray arrayWithObjects:v235 count:3];
  v163 = [v151 countByEnumeratingWithState:&v193 objects:v236 count:16];
  if (!v163)
  {
    goto LABEL_190;
  }

  v155 = *v194;
  while (2)
  {
    v113 = 0;
    while (2)
    {
      if (*v194 != v155)
      {
        objc_enumerationMutation(v151);
      }

      v170 = v113;
      v114 = *(*(&v193 + 1) + 8 * v113);
      v115 = [v114 isEqualToString:v161];
      v186 = [v114 isEqualToString:v159];
      v173 = [v114 isEqualToString:v157];
      v116 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
      v184 = v114;
      v114 = [NSPredicate predicateWithFormat:@"collection.collectionID == %@", v114];
      [v116 setPredicate:v114];

      v168 = v116;
      v118 = [mocCopy executeFetchRequest:v116 error:0];
      v189 = 0u;
      v190 = 0u;
      v191 = 0u;
      v192 = 0u;
      v119 = v118;
      v120 = [v119 countByEnumeratingWithState:&v189 objects:v234 count:16];
      if (v120)
      {
        v121 = v120;
        v122 = *v190;
        v180 = v115;
        v177 = *v190;
        do
        {
          for (n = 0; n != v121; n = n + 1)
          {
            if (*v190 != v122)
            {
              objc_enumerationMutation(v119);
            }

            v124 = *(*(&v189 + 1) + 8 * n);
            asset2 = [v124 asset];
            v126 = asset2;
            if (asset2)
            {
              if (v115)
              {
                isAudiobook = [asset2 isAudiobook];
                if ((isAudiobook & 1) == 0)
                {
                  isAudiobook = [v126 contentType];
                  if (isAudiobook != 3)
                  {
                    goto LABEL_186;
                  }
                }
              }

              else if (v186)
              {
                isAudiobook = [asset2 isBook];
                if ((isAudiobook & 1) == 0)
                {
                  goto LABEL_186;
                }
              }

              else
              {
                if (!v173)
                {
                  goto LABEL_186;
                }

                isAudiobook = [asset2 contentType];
                if (isAudiobook == 3)
                {
                  goto LABEL_186;
                }
              }

              v128 = BKLibraryCollectionLog(isAudiobook);
              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
              {
                title = [v126 title];
                assetID3 = [v126 assetID];
                isBook = [v126 isBook];
                isAudiobook2 = [v126 isAudiobook];
                contentType2 = [v126 contentType];
                *buf = 138413570;
                v223 = title;
                v224 = 2112;
                v225 = v184;
                v226 = 2112;
                v227 = assetID3;
                v228 = 1024;
                v229 = isBook;
                v230 = 1024;
                v231 = isAudiobook2;
                v232 = 1024;
                v233 = contentType2;
                _os_log_impl(&dword_0, v128, OS_LOG_TYPE_DEFAULT, "Removing '%@' from %@: id %@, isBook %d, isAudiobook %d, contentType %d ", buf, 0x32u);

                v115 = v180;
                v122 = v177;
              }

              [mocCopy deleteObject:v124];
            }

LABEL_186:
          }

          v121 = [v119 countByEnumeratingWithState:&v189 objects:v234 count:16];
        }

        while (v121);
      }

      v113 = v170 + 1;
      if ((v170 + 1) != v163)
      {
        continue;
      }

      break;
    }

    v163 = [v151 countByEnumeratingWithState:&v193 objects:v236 count:16];
    if (v163)
    {
      continue;
    }

    break;
  }

LABEL_190:

  if ([mocCopy hasChanges])
  {
    v188 = 0;
    [mocCopy save:&v188];
    v134 = v188;
    if (v134)
    {
      v135 = BKLibraryLog();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
      {
        sub_91C98();
      }
    }
  }

  v136 = BKLibraryLog();
  if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
  {
    v137 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [setCopy count]);
    *buf = 138412290;
    v223 = v137;
    _os_log_impl(&dword_0, v136, OS_LOG_TYPE_DEFAULT, "#resetCollections: done for changeSet of size %@", buf, 0xCu);
  }

  v138 = objc_retainBlock(completionCopy);
  v139 = v138;
  if (v138)
  {
    (*(v138 + 2))(v138);
  }

  kdebug_trace();
}

- (id)_defaultManagerAssetsForDefaultCollectionWithID:(id)d inManagedObjectContext:(id)context
{
  contextCopy = context;
  v6 = [BKCollection contentTypesForDefaultCollectionWithID:d];
  if (v6)
  {
    v7 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    [v7 setReturnsObjectsAsFaults:0];
    [v7 setFetchBatchSize:32];
    v8 = [BKLibraryManager predicateForContentTypes:v6];
    [v7 setPredicate:v8];

    v14 = 0;
    v9 = [contextCopy executeFetchRequest:v7 error:&v14];
    v10 = v14;
    v11 = v10;
    if (!v9)
    {
      v12 = BKLibraryCollectionLog(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_91D88();
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

@end