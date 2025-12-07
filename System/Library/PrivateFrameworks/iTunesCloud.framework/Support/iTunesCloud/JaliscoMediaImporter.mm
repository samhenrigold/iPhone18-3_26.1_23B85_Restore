@interface JaliscoMediaImporter
+ (id)logCategory;
+ (id)oversizeLogCategory;
- (BOOL)needsUpdateForTokens;
- (JaliscoMediaImporter)initWithConnection:(id)connection supportedMediaKindsHandler:(id)handler;
- (id)_chapterArtworkURLsForData:(id)data baseURL:(id)l;
- (id)_chapterDataFromURL:(id)l;
- (id)_importTracksFromRevision:(unsigned int)revision toRevision:(unsigned int)toRevision withItemsResponse:(id)response clientIdentity:(id)identity itemsFiles:(id)files;
- (id)_supportedMediaKindsDatabasePropertyValue;
- (id)mediaFilter;
- (id)purchaseTokens;
- (id)queryFilter;
- (id)supportedMediaKinds;
- (id)updateLibraryFromRevision:(unsigned int)revision toRevision:(unsigned int)toRevision withResponse:(id)response clientIdentity:(id)identity itemsFiles:(id)files;
- (unsigned)onDiskRevision;
- (void)cancel;
- (void)clearNeedsUpdateForTokens;
@end

@implementation JaliscoMediaImporter

- (id)_supportedMediaKindsDatabasePropertyValue
{
  mediaFilter = [(JaliscoMediaImporter *)self mediaFilter];
  supportedMediaKinds = [mediaFilter supportedMediaKinds];
  v4 = [supportedMediaKinds componentsJoinedByString:{@", "}];

  return v4;
}

- (id)_importTracksFromRevision:(unsigned int)revision toRevision:(unsigned int)toRevision withItemsResponse:(id)response clientIdentity:(id)identity itemsFiles:(id)files
{
  v9 = *&toRevision;
  v10 = *&revision;
  responseCopy = response;
  identityCopy = identity;
  filesCopy = files;
  v53 = responseCopy;
  if (!responseCopy)
  {
    v14 = 0;
    goto LABEL_31;
  }

  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_100103380;
  v79 = sub_100103390;
  v80 = 0;
  context = objc_autoreleasePoolPush();
  connection = [(JaliscoImporter *)self connection];
  userIdentity = [connection userIdentity];

  v58 = objc_alloc_init(NSMutableDictionary);
  [(JaliscoImporter *)self setProgress:0.0];
  if ([filesCopy count])
  {
    v13 = filesCopy;
  }

  else
  {
    responseDataFileURL = [responseCopy responseDataFileURL];
    v86 = responseDataFileURL;
    v13 = [NSArray arrayWithObjects:&v86 count:1];
  }

  sub_1000E5FD8(4, v10, v9, v13, 0, 0, 0, 0);
  musicLibrary = [(JaliscoImporter *)self musicLibrary];
  databasePath = [musicLibrary databasePath];

  musicLibrary2 = [(JaliscoImporter *)self musicLibrary];
  icd_preferredVideoQuality = [musicLibrary2 icd_preferredVideoQuality];

  v19 = +[ICUserIdentityStore defaultIdentityStore];
  v74 = 0;
  v49 = [v19 getPropertiesForUserIdentity:userIdentity error:&v74];
  v51 = v74;

  if (v51)
  {
    v20 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      msv_description = [v51 msv_description];
      *buf = 138543618;
      *&buf[4] = userIdentity;
      *&buf[12] = 2114;
      *&buf[14] = msv_description;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to load properties for identity %{public}@ error=%{public}@", buf, 0x16u);
    }
  }

  v22 = [v13 msv_map:&stru_1001DE420];
  v48 = ML3DatabaseImportDataForDAAPFilePaths();
  v56 = [[ML3MutableDatabaseImport alloc] initWithLibraryPath:databasePath trackData:v48 playlistData:0 clientIdentity:identityCopy];
  [v56 setPreferredVideoQuality:icd_preferredVideoQuality];
  dSID = [v49 DSID];
  [v56 setStoreAccountID:{objc_msgSend(dSID, "longLongValue")}];

  objc_initWeak(&location, self);
  if (!v10)
  {
    v85 = objc_opt_class();
    v24 = [NSArray arrayWithObjects:&v85 count:1];
    configuration = [(JaliscoImporter *)self configuration];
    [CloudKeepLocalUtilities downPinCollectionsForClasses:v24 configuration:configuration];
  }

  v26 = dispatch_semaphore_create(0);
  v27 = +[MLMediaLibraryService sharedMediaLibraryService];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100103398;
  v71[3] = &unk_1001DE448;
  objc_copyWeak(&v72, &location);
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1001033F4;
  v67[3] = &unk_1001DE470;
  objc_copyWeak(&v70, &location);
  v67[4] = self;
  v69 = &v75;
  dsema = v26;
  v68 = dsema;
  [v27 performImport:v56 fromSource:1 withProgressBlock:v71 completionHandler:v67];

  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  if (!v10)
  {
    v84 = objc_opt_class();
    v28 = [NSArray arrayWithObjects:&v84 count:1];
    configuration2 = [(JaliscoImporter *)self configuration];
    [CloudKeepLocalUtilities rePinCollectionsForClasses:v28 configuration:configuration2];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v83 = 0;
  [(JaliscoImporter *)self setProgress:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0) | 0x2000000000)];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v13;
  v30 = [obj countByEnumeratingWithState:&v63 objects:v81 count:16];
  if (v30)
  {
    v31 = *v64;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v64 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v63 + 1) + 8 * i);
        v34 = objc_autoreleasePoolPush();
        v35 = [NSData dataWithContentsOfURL:v33 options:1 error:0];
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_100103554;
        v60[3] = &unk_1001DE498;
        v60[4] = self;
        v62 = buf;
        v61 = v58;
        [ICDResponseDataParser enumerateItemsInResponseData:v35 usingHandler:v60];

        objc_autoreleasePoolPop(v34);
      }

      v30 = [obj countByEnumeratingWithState:&v63 objects:v81 count:16];
    }

    while (v30);
  }

  if (!v76[5] && [v58 count])
  {
    v36 = +[ICDeviceInfo currentDeviceInfo];
    if (([(JaliscoLoadChapterArtworkOperation *)v36 isAppleTV]& 1) == 0)
    {
      isCancelled = [(JaliscoImporter *)self isCancelled];

      if (isCancelled)
      {
        goto LABEL_27;
      }

      v38 = [JaliscoLoadChapterArtworkOperation alloc];
      configuration3 = [(JaliscoImporter *)self configuration];
      v36 = [(JaliscoLoadChapterArtworkOperation *)v38 initWithConfiguration:configuration3 clientIdentity:identityCopy dictionary:v58];

      configuration4 = [(JaliscoImporter *)self configuration];
      v41 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:configuration4];
      [v41 addOperation:v36 forLibraryType:0 priority:2];
    }
  }

LABEL_27:
  if (!v76[5] && *(*&buf[8] + 24) == 1)
  {
    v42 = +[NSNotificationCenter defaultCenter];
    musicLibrary3 = [(JaliscoImporter *)self musicLibrary];
    libraryUID = [musicLibrary3 libraryUID];
    [v42 postNotificationName:@"ICDPlaybackPositionImportRequiresSyncNotification" object:libraryUID];
  }

  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&v70);
  objc_destroyWeak(&v72);

  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(context);
  v14 = v76[5];
  _Block_object_dispose(&v75, 8);

LABEL_31:

  return v14;
}

- (id)_chapterArtworkURLsForData:(id)data baseURL:(id)l
{
  dataCopy = data;
  lCopy = l;
  v28 = +[NSMutableDictionary dictionary];
  v6 = [dataCopy objectForKeyedSubscript:@"chapters"];
  v7 = [v6 objectForKeyedSubscript:@"chapter-list"];

  v25 = dataCopy;
  v8 = [dataCopy objectForKeyedSubscript:@"chapters"];
  v9 = [v8 objectForKeyedSubscript:@"nominal-image-resolutions"];
  lastObject = [v9 lastObject];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:@"images"];
        v17 = [v16 objectForKeyedSubscript:lastObject];
        v18 = [v17 objectForKeyedSubscript:@"url"];

        if ([v18 length])
        {
          v19 = [v15 objectForKey:@"start"];
          [v19 floatValue];
          v21 = (v20 * 1000.0);

          v22 = [lCopy URLByAppendingPathComponent:v18 isDirectory:0];
          v23 = [NSNumber numberWithUnsignedInt:v21];
          [v28 setObject:v22 forKey:v23];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  return v28;
}

- (id)_chapterDataFromURL:(id)l
{
  lCopy = l;
  v4 = [NSDictionary alloc];
  v5 = [NSURL URLWithString:lCopy];

  v6 = [v4 initWithContentsOfURL:v5];

  return v6;
}

- (id)updateLibraryFromRevision:(unsigned int)revision toRevision:(unsigned int)toRevision withResponse:(id)response clientIdentity:(id)identity itemsFiles:(id)files
{
  v9 = *&toRevision;
  v10 = *&revision;
  responseCopy = response;
  identityCopy = identity;
  filesCopy = files;
  if ([responseCopy responseCode] == 200)
  {
    [(JaliscoMediaImporter *)self _importTracksFromRevision:v10 toRevision:v9 withItemsResponse:responseCopy clientIdentity:identityCopy itemsFiles:filesCopy];
  }

  else
  {
    [NSError errorWithDomain:@"JaliscoImporterErrorDomain" code:-1 userInfo:0];
  }
  v15 = ;

  return v15;
}

- (void)clearNeedsUpdateForTokens
{
  musicLibrary = [(JaliscoImporter *)self musicLibrary];
  [musicLibrary setJaliscoNeedsUpdateForTokens:0];
}

- (BOOL)needsUpdateForTokens
{
  musicLibrary = [(JaliscoImporter *)self musicLibrary];
  jaliscoNeedsUpdateForTokens = [musicLibrary jaliscoNeedsUpdateForTokens];

  if (jaliscoNeedsUpdateForTokens)
  {
    jaliscoLastSupportedMediaKinds = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(jaliscoLastSupportedMediaKinds, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, jaliscoLastSupportedMediaKinds, OS_LOG_TYPE_DEFAULT, "%{public}@ - JaliscoNeedsUpdateForTokens is YES, forcing a full token refresh.", &v11, 0xCu);
    }

    v6 = 1;
  }

  else
  {
    musicLibrary2 = [(JaliscoImporter *)self musicLibrary];
    jaliscoLastSupportedMediaKinds = [musicLibrary2 jaliscoLastSupportedMediaKinds];

    _supportedMediaKindsDatabasePropertyValue = [(JaliscoMediaImporter *)self _supportedMediaKindsDatabasePropertyValue];
    if (jaliscoLastSupportedMediaKinds && ([jaliscoLastSupportedMediaKinds isEqualToString:_supportedMediaKindsDatabasePropertyValue]& 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      v9 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 138543874;
        selfCopy2 = self;
        v13 = 2114;
        v14 = jaliscoLastSupportedMediaKinds;
        v15 = 2114;
        v16 = _supportedMediaKindsDatabasePropertyValue;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@ - Supported media kinds are different, forcing a full token refresh. lastSupportedMediaKinds=%{public}@, currentSupportedMediaKinds=%{public}@", &v11, 0x20u);
      }

      v6 = 1;
    }
  }

  return v6;
}

- (id)supportedMediaKinds
{
  supportedMediaKinds = self->_supportedMediaKinds;
  if (!supportedMediaKinds)
  {
    mediaFilter = [(JaliscoMediaImporter *)self mediaFilter];
    supportedMediaKinds = [mediaFilter supportedMediaKinds];
    v6 = self->_supportedMediaKinds;
    self->_supportedMediaKinds = supportedMediaKinds;

    supportedMediaKinds = self->_supportedMediaKinds;
  }

  return supportedMediaKinds;
}

- (id)purchaseTokens
{
  if ([(JaliscoMediaImporter *)self onDiskRevision])
  {
    connection = [(JaliscoImporter *)self connection];
    userIdentity = [connection userIdentity];
    v5 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity];

    v6 = v5;
    v22 = +[NSMutableDictionary dictionary];
    context = objc_autoreleasePoolPush();
    v7 = ML3TrackPropertyPurchaseHistoryID;
    v8 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyPurchaseHistoryID value:&off_1001ED8D0 comparison:2];
    v9 = ML3TrackPropertyStoreAccountID;
    jaliscoAccountID = [v6 jaliscoAccountID];
    v11 = [ML3ComparisonPredicate predicateWithProperty:v9 value:jaliscoAccountID comparison:1];
    v28[0] = v11;
    v12 = [ML3ComparisonPredicate predicateWithProperty:v9 value:&off_1001ED8D0 comparison:1];
    v28[1] = v12;
    v13 = [NSArray arrayWithObjects:v28 count:2];
    v14 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v13];

    v27[0] = v8;
    v27[1] = v14;
    v15 = [NSArray arrayWithObjects:v27 count:2];
    v16 = [ML3AllCompoundPredicate predicateMatchingPredicates:v15];

    v17 = [ML3Track queryWithLibrary:v6 predicate:v16];
    [v17 setIgnoreSystemFilterPredicates:1];
    v26[0] = v7;
    v26[1] = ML3TrackPropertyPurchaseHistoryToken;
    v18 = [NSArray arrayWithObjects:v26 count:2];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001049E4;
    v24[3] = &unk_1001DF8D0;
    v19 = v22;
    v25 = v19;
    [v17 enumeratePersistentIDsAndProperties:v18 usingBlock:v24];

    for (i = 1; i != -1; --i)
    {
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v19 = &__NSDictionary0__struct;
  }

  return v19;
}

- (id)queryFilter
{
  mediaFilter = [(JaliscoMediaImporter *)self mediaFilter];
  daapQueryFilterString = [mediaFilter daapQueryFilterString];

  return daapQueryFilterString;
}

- (id)mediaFilter
{
  mediaFilter = self->_mediaFilter;
  if (!mediaFilter)
  {
    v4 = [ICDJaliscoMediaFilter alloc];
    musicLibrary = [(JaliscoImporter *)self musicLibrary];
    jaliscoLastExcludedMediaKinds = [musicLibrary jaliscoLastExcludedMediaKinds];
    v7 = [(ICDJaliscoMediaFilter *)v4 initWithKindsToExclude:jaliscoLastExcludedMediaKinds supportedMediaKindsHandler:self->_supportedMediaKindsHandler];
    v8 = self->_mediaFilter;
    self->_mediaFilter = v7;

    mediaFilter = self->_mediaFilter;
  }

  return mediaFilter;
}

- (unsigned)onDiskRevision
{
  musicLibrary = [(JaliscoImporter *)self musicLibrary];
  jaliscoOnDiskDatabaseRevision = [musicLibrary jaliscoOnDiskDatabaseRevision];

  return jaliscoOnDiskDatabaseRevision;
}

- (void)cancel
{
  v7.receiver = self;
  v7.super_class = JaliscoMediaImporter;
  [(JaliscoImporter *)&v7 cancel];
  v2 = dispatch_semaphore_create(0);
  v3 = +[MLMediaLibraryService sharedMediaLibraryService];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100104CA0;
  v5[3] = &unk_1001DE788;
  v6 = v2;
  v4 = v2;
  [v3 cancelImportOperation:1 completionHandler:v5];

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (JaliscoMediaImporter)initWithConnection:(id)connection supportedMediaKindsHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = JaliscoMediaImporter;
  v8 = [(JaliscoImporter *)&v11 initWithConnection:connection];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_supportedMediaKindsHandler, handler);
  }

  return v9;
}

+ (id)oversizeLogCategory
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync_Oversize");

  return v2;
}

+ (id)logCategory
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");

  return v2;
}

@end