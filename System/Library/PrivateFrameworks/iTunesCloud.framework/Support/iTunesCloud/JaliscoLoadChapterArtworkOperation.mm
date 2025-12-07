@interface JaliscoLoadChapterArtworkOperation
- (JaliscoLoadChapterArtworkOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity dictionary:(id)dictionary;
- (JaliscoLoadChapterArtworkOperation)initWithDictionary:(id)dictionary;
- (void)cancel;
- (void)main;
@end

@implementation JaliscoLoadChapterArtworkOperation

- (void)cancel
{
  [(NSOperationQueue *)self->_artworkDownloadOperationQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = JaliscoLoadChapterArtworkOperation;
  [(JaliscoLoadChapterArtworkOperation *)&v3 cancel];
}

- (void)main
{
  v3 = +[ICCloudAvailabilityController sharedController];
  shouldProhibitVideosActionForCurrentNetworkConditions = [v3 shouldProhibitVideosActionForCurrentNetworkConditions];

  if ((shouldProhibitVideosActionForCurrentNetworkConditions & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      powerAssertionIdentifier = self->_powerAssertionIdentifier;
      *buf = 138543362;
      v61 = powerAssertionIdentifier;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loading Chapter Artwork with power assertion: %{public}@", buf, 0xCu);
    }

    CPSetPowerAssertionWithIdentifier();
    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
    [musicLibrary setClientIdentity:clientIdentity];

    group = dispatch_group_create();
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = [(NSDictionary *)self->_chapterArtworkToLoad allKeys];
    v39 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (v39)
    {
      v38 = *v57;
      v45 = ML3TrackPropertyPurchaseHistoryID;
      v41 = ML3TrackPropertyMediaType;
LABEL_6:
      v9 = 0;
      while (1)
      {
        if (*v57 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v56 + 1) + 8 * v9);
        if (([(JaliscoLoadChapterArtworkOperation *)self isCancelled]& 1) != 0)
        {
          break;
        }

        v40 = v9;
        v11 = [(NSDictionary *)self->_chapterArtworkToLoad objectForKeyedSubscript:v10];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v44 = v11;
        allKeys = [v11 allKeys];
        v47 = [allKeys countByEnumeratingWithState:&v52 objects:v66 count:16];
        if (v47)
        {
          v46 = *v53;
LABEL_12:
          v12 = 0;
          while (1)
          {
            if (*v53 != v46)
            {
              objc_enumerationMutation(allKeys);
            }

            v13 = *(*(&v52 + 1) + 8 * v12);
            if (([(JaliscoLoadChapterArtworkOperation *)self isCancelled]& 1) != 0)
            {
              break;
            }

            musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
            v15 = +[ML3ComparisonPredicate predicateWithProperty:equalToInt64:](ML3ComparisonPredicate, "predicateWithProperty:equalToInt64:", v45, [v10 longLongValue]);
            v16 = [ML3Track anyInLibrary:musicLibrary2 predicate:v15 options:3];

            if (v16)
            {
              v17 = [v44 objectForKeyedSubscript:v13];
              v18 = [v16 valueForProperty:v41];
              unsignedIntValue = [v18 unsignedIntValue];

              persistentID = [v16 persistentID];
              [v13 doubleValue];
              v49 = [ML3MusicLibrary artworkTokenForChapterWithItemPID:persistentID retrievalTime:v20 / 1000.0];
              v21 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                longLongValue = [v10 longLongValue];
                longLongValue2 = [v13 longLongValue];
                *buf = 134218498;
                v61 = longLongValue;
                v62 = 2048;
                v63 = longLongValue2;
                v64 = 2114;
                v65 = v17;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Fetching chapter artwork (purchase history ID = %lld, chapter time = %lld): %{public}@", buf, 0x20u);
              }

              v24 = [CloudArtworkImportOperation alloc];
              artworkDownloadSession = self->_artworkDownloadSession;
              [(CloudLibraryOperation *)self configuration];
              v26 = v17;
              v28 = v27 = self;
              unsignedLongLongValue = [v10 unsignedLongLongValue];
              clientIdentity2 = [(CloudLibraryOperation *)v27 clientIdentity];
              v31 = [(CloudArtworkImportOperation *)v24 initWithURLSession:artworkDownloadSession configuration:v28 cloudID:unsignedLongLongValue artworkToken:v49 artworkType:3 sourceType:400 variantType:0 clientIdentity:clientIdentity2];

              self = v27;
              [(CloudArtworkImportOperation *)v31 setMediaType:unsignedIntValue];
              [(CloudArtworkImportOperation *)v31 setAssetURL:v26];
              v50[0] = _NSConcreteStackBlock;
              v50[1] = 3221225472;
              v50[2] = sub_1000305C8;
              v50[3] = &unk_1001DF578;
              v32 = group;
              v51 = v32;
              [(CloudArtworkImportOperation *)v31 setCompletionBlock:v50];
              [(CloudArtworkImportOperation *)v31 setQualityOfService:25];
              dispatch_group_enter(v32);
              [(NSOperationQueue *)v27->_artworkDownloadOperationQueue addOperation:v31];
            }

            if (v47 == ++v12)
            {
              v47 = [allKeys countByEnumeratingWithState:&v52 objects:v66 count:16];
              if (v47)
              {
                goto LABEL_12;
              }

              break;
            }
          }
        }

        v9 = v40 + 1;
        if ((v40 + 1) == v39)
        {
          v39 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
          if (v39)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
    musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
    v34 = MSVTCCIdentityForCurrentProcess();
    [musicLibrary3 setClientIdentity:v34];

    v35 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = self->_powerAssertionIdentifier;
      *buf = 138543362;
      v61 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Loading Chapter Artwork Complete, releasing power assertion: %{public}@", buf, 0xCu);
    }

    CPSetPowerAssertionWithIdentifier();
    [(CloudLibraryOperation *)self setStatus:1];
  }
}

- (JaliscoLoadChapterArtworkOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = JaliscoLoadChapterArtworkOperation;
  v10 = [(CloudLibraryOperation *)&v21 initWithConfiguration:configuration clientIdentity:identity];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_chapterArtworkToLoad, dictionary);
    v12 = [NSString stringWithFormat:@"com.apple.itunescloudd.%@", objc_opt_class()];
    powerAssertionIdentifier = v11->_powerAssertionIdentifier;
    v11->_powerAssertionIdentifier = v12;

    v14 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v14 setHTTPShouldUsePipelining:1];
    v15 = +[ICCloudAvailabilityController sharedController];
    [v14 setAllowsCellularAccess:{objc_msgSend(v15, "isCellularDataRestrictedForVideos") ^ 1}];

    v16 = [[ICURLSession alloc] initWithConfiguration:v14 maxConcurrentRequests:5 qualityOfService:17];
    artworkDownloadSession = v11->_artworkDownloadSession;
    v11->_artworkDownloadSession = v16;

    v18 = objc_alloc_init(NSOperationQueue);
    artworkDownloadOperationQueue = v11->_artworkDownloadOperationQueue;
    v11->_artworkDownloadOperationQueue = v18;

    [(NSOperationQueue *)v11->_artworkDownloadOperationQueue setMaxConcurrentOperationCount:5];
  }

  return v11;
}

- (JaliscoLoadChapterArtworkOperation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_new();
  v6 = MSVTCCIdentityForCurrentProcess();
  v7 = [(JaliscoLoadChapterArtworkOperation *)self initWithConfiguration:v5 clientIdentity:v6 dictionary:dictionaryCopy];

  return v7;
}

@end