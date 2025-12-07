@interface BDSNBController
- (BDSNBController)initWithCloudDataSource:(id)source;
- (void)_archiveCloudSyncVersions:(id)versions completion:(id)completion;
- (void)_fetchCloudSyncVersions:(id)versions completion:(id)completion;
- (void)_fetchLatestCompletion:(id)completion;
- (void)_fq_fetchSince:(id)since completion:(id)completion;
- (void)_updateAssetDetail:(id)detail fromMediaItem:(id)item;
- (void)_updateBookmarkTimeFromAssetDetail:(id)detail;
- (void)dealloc;
- (void)fetchLatestCompletion:(id)completion;
@end

@implementation BDSNBController

- (BDSNBController)initWithCloudDataSource:(id)source
{
  sourceCopy = source;
  v22.receiver = self;
  v22.super_class = BDSNBController;
  v6 = [(BDSNBController *)&v22 init];
  v7 = v6;
  if (v6)
  {
    v8 = sub_10000DC90(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C376C();
    }

    objc_storeStrong(&v7->_dataSource, source);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("dataStoreFetch", v9);
    fetchQueue = v7->_fetchQueue;
    v7->_fetchQueue = v10;

    objc_initWeak(&location, v7);
    v12 = +[NSDistributedNotificationCenter defaultCenter];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100075F78;
    v19 = &unk_100241C78;
    objc_copyWeak(&v20, &location);
    v13 = [v12 addObserverForName:@"BCCloudAssetDetailManagerChanged" object:0 queue:0 usingBlock:&v16];
    observer = v7->_observer;
    v7->_observer = v13;

    [(BDSNBController *)v7 fetchLatestCompletion:&stru_100241C98, v16, v17, v18, v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self->_observer];

  v4.receiver = self;
  v4.super_class = BDSNBController;
  [(BDSNBController *)&v4 dealloc];
}

- (void)_fetchCloudSyncVersions:(id)versions completion:(id)completion
{
  versionsCopy = versions;
  completionCopy = completion;
  dataSource = [(BDSNBController *)self dataSource];
  managedObjectContext = [dataSource managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000761A0;
  v13[3] = &unk_100241CC0;
  v14 = managedObjectContext;
  v15 = versionsCopy;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = versionsCopy;
  v12 = managedObjectContext;
  [v12 performBlock:v13];
}

- (void)_archiveCloudSyncVersions:(id)versions completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007643C;
  v7[3] = &unk_100241CE8;
  versionsCopy = versions;
  v6 = versionsCopy;
  [(BDSNBController *)self _fetchCloudSyncVersions:v7 completion:completion];
}

- (void)fetchLatestCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007652C;
  v6[3] = &unk_10023FE48;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(BDSNBController *)self _fetchLatestCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_fetchLatestCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  fetchQueue = [(BDSNBController *)self fetchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076688;
  block[3] = &unk_10023FE48;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(fetchQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_updateAssetDetail:(id)detail fromMediaItem:(id)item
{
  detailCopy = detail;
  itemCopy = item;
  v7 = +[BCCloudAssetManager sharedManager];
  assetDetailManager = [v7 assetDetailManager];

  [itemCopy bookmarkTime];
  [detailCopy setBookmarkTime:?];
  lastPlayedDate = [itemCopy lastPlayedDate];
  [detailCopy setDatePlaybackTimeUpdated:lastPlayedDate];

  [itemCopy playbackDuration];
  v11 = v10;

  v13 = 0.0;
  if (v11 != 0.0)
  {
    bookmarkTime = [detailCopy bookmarkTime];
    v13 = v14 / v11;
  }

  if (v13 < 0.0 || v13 > 1.0)
  {
    v15 = sub_10000DC90(bookmarkTime);
    v16 = v13;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [detailCopy bookmarkTime];
      *buf = 134218496;
      v26 = v16;
      v27 = 2048;
      v28 = v22;
      v29 = 2048;
      v30 = v11;
      _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Calculated reading progress out of range %f.  bookmarkTime=%f audiobookDuration=%f", buf, 0x20u);
    }

    BUClamp();
    v13 = v17;
  }

  [detailCopy readingProgressHighWaterMark];
  if (*&v18 >= v13)
  {
    v19 = *&v18;
  }

  else
  {
    v19 = v13;
  }

  *&v18 = v13;
  [detailCopy setReadingProgress:v18];
  *&v20 = v19;
  [detailCopy setReadingProgressHighWaterMark:v20];
  [detailCopy assetID];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100076BD8;
  v24 = v23[3] = &unk_100241D58;
  v21 = v24;
  [assetDetailManager setAssetDetail:detailCopy completion:v23];
}

- (void)_updateBookmarkTimeFromAssetDetail:(id)detail
{
  detailCopy = detail;
  v5 = sub_10000DC90(detailCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    assetID = [detailCopy assetID];
    v39 = 138412290;
    v40 = assetID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BDSNBController attempting to update bookmark time from assetDetail %@", &v39, 0xCu);
  }

  assetID2 = [detailCopy assetID];
  v8 = [BDSMediaLibraryUtils representativeDAAPMediaItemsWithAssetId:assetID2];

  if (!v8)
  {
    v32 = sub_10000DC90(v9);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1001C39EC(detailCopy, v32);
    }

    goto LABEL_16;
  }

  hasBeenPlayed = [v8 hasBeenPlayed];
  if (!hasBeenPlayed || ([v8 lastPlayedDate], (hasBeenPlayed = objc_claimAutoreleasedReturnValue()) == 0) || (v11 = hasBeenPlayed, objc_msgSend(v8, "lastPlayedDate"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(detailCopy, "datePlaybackTimeUpdated"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "compare:", v13), v13, v12, v11, v14 == -1))
  {
    v27 = sub_10000DC90(hasBeenPlayed);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      [detailCopy bookmarkTime];
      v29 = v28;
      assetID3 = [detailCopy assetID];
      v39 = 134218242;
      v40 = v29;
      v41 = 2112;
      v42 = assetID3;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "BDSNBController Setting bookmark time %f for media item assetDetail %@", &v39, 0x16u);
    }

    [v8 setHasBeenPlayed:1];
    datePlaybackTimeUpdated = [detailCopy datePlaybackTimeUpdated];
    [v8 setLastPlayedDate:datePlaybackTimeUpdated];

    [detailCopy bookmarkTime];
    v32 = [NSNumber numberWithDouble:?];
    [v8 setValue:v32 forProperty:MPMediaItemPropertyBookmarkTime withCompletionBlock:0];
LABEL_16:

    goto LABEL_17;
  }

  lastPlayedDate = [v8 lastPlayedDate];
  datePlaybackTimeUpdated2 = [detailCopy datePlaybackTimeUpdated];
  v17 = [lastPlayedDate compare:datePlaybackTimeUpdated2];

  v19 = sub_10000DC90(v18);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v17 == -1)
  {
    if (v20)
    {
      assetID4 = [detailCopy assetID];
      lastPlayedDate2 = [v8 lastPlayedDate];
      [v8 bookmarkTime];
      v36 = v35;
      datePlaybackTimeUpdated3 = [detailCopy datePlaybackTimeUpdated];
      [detailCopy bookmarkTime];
      v39 = 138413314;
      v40 = assetID4;
      v41 = 2112;
      v42 = lastPlayedDate2;
      v43 = 2048;
      v44 = v36;
      v45 = 2112;
      v46 = datePlaybackTimeUpdated3;
      v47 = 2048;
      v48 = v38;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "BDSNBController media item has a newer date. Updating asset:%@. from mediaItem.lastPlayDate: %@ mediaItem.bookmarkTime %f, assetDetail.datePlaybackTimeUpdated:%@ assetDetail.bookmarkTime:%f", &v39, 0x34u);
    }

    [(BDSNBController *)self _updateAssetDetail:detailCopy fromMediaItem:v8];
  }

  else
  {
    if (v20)
    {
      assetID5 = [detailCopy assetID];
      lastPlayedDate3 = [v8 lastPlayedDate];
      [v8 bookmarkTime];
      v24 = v23;
      datePlaybackTimeUpdated4 = [detailCopy datePlaybackTimeUpdated];
      [detailCopy bookmarkTime];
      v39 = 138413314;
      v40 = assetID5;
      v41 = 2112;
      v42 = lastPlayedDate3;
      v43 = 2048;
      v44 = v24;
      v45 = 2112;
      v46 = datePlaybackTimeUpdated4;
      v47 = 2048;
      v48 = v26;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "BDSNBController media item has the same date, not updating asset:%@. mediaItem.lastPlayDate: %@ mediaItem.bookmarkTime %f, assetDetail.datePlaybackTimeUpdated:%@ assetDetail.bookmarkTime:%f", &v39, 0x34u);
    }
  }

LABEL_17:
}

- (void)_fq_fetchSince:(id)since completion:(id)completion
{
  sinceCopy = since;
  completionCopy = completion;
  fetchQueue = [(BDSNBController *)self fetchQueue];
  dispatch_assert_queue_V2(fetchQueue);

  v10 = sub_10000DC90(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = sinceCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BDSNBController fetching changes since cloudSyncVersions: %@", buf, 0xCu);
  }

  v11 = +[BCCloudAssetManager sharedManager];
  assetDetailManager = [v11 assetDetailManager];

  objc_initWeak(buf, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000772AC;
  v14[3] = &unk_100241DA8;
  objc_copyWeak(&v16, buf);
  v13 = completionCopy;
  v15 = v13;
  [assetDetailManager getAssetDetailChangesSince:sinceCopy completion:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

@end