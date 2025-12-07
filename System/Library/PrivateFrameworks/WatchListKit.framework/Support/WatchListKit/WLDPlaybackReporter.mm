@interface WLDPlaybackReporter
+ (id)_cachedMetadataByIdentifier;
+ (id)_cachedNotFoundIdentifiers;
+ (int64_t)_intentsMediaItemTypeFromWLKContentType:(unint64_t)type;
+ (void)_decorateVODSummary:(id)summary completion:(id)completion;
+ (void)_donateIntentWithPlaybackSummary:(id)summary andMetadata:(id)metadata;
- (WLDPlaybackReporter)initWithSessionID:(id)d;
- (void)_cleanupWithSuccess:(BOOL)success error:(id)error completion:(id)completion;
- (void)_clearBDTimer;
- (void)_reportPlayEvent:(id)event summary:(id)summary completion:(id)completion;
- (void)_scheduleTimedReportForSummary:(id)summary afterMillis:(id)millis;
- (void)dealloc;
- (void)getCachedCanonicalIDForSummary:(id)summary completionHandler:(id)handler;
- (void)reportPlayback:(id)playback completion:(id)completion;
@end

@implementation WLDPlaybackReporter

- (WLDPlaybackReporter)initWithSessionID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = WLDPlaybackReporter;
  v6 = [(WLDPlaybackReporter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionID, d);
  }

  v8 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ init:", buf, 0xCu);
  }

  return v7;
}

- (void)dealloc
{
  v3 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = self->_sessionID;
    *buf = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = sessionID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ dealloc: sessionID: %@", buf, 0x16u);
  }

  [(WLDPlaybackReporter *)self _clearBDTimer];
  v5.receiver = self;
  v5.super_class = WLDPlaybackReporter;
  [(WLDPlaybackReporter *)&v5 dealloc];
}

- (void)reportPlayback:(id)playback completion:(id)completion
{
  playbackCopy = playback;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDPlaybackReporter.reportPlayback"];
  transaction = selfCopy->_transaction;
  selfCopy->_transaction = v10;

  objc_storeStrong(&selfCopy->_lastSummary, playback);
  v12 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [WLKPlaybackSummary debugStringForPlaybackState:[(WLKPlaybackSummary *)selfCopy->_lastSummary playbackState]];
    *buf = 138412546;
    v20 = selfCopy;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Begin Transaction: setLastSummary playbackState %@", buf, 0x16u);
  }

  objc_sync_exit(selfCopy);
  [(WLDPlaybackReporter *)selfCopy _clearBDTimer];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __49__WLDPlaybackReporter_reportPlayback_completion___block_invoke;
  v16[3] = &unk_100045280;
  v17 = playbackCopy;
  v18 = completionCopy;
  v16[4] = selfCopy;
  v14 = playbackCopy;
  v15 = completionCopy;
  [v14 resolveChannelID:v16];
}

void __49__WLDPlaybackReporter_reportPlayback_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [a1[5] contentID];
    v8 = [a1[5] duration];
    v9 = [WLKPlayActivityDecorateVODOperation identifierForPlayActivityID:v7 channelID:v5 duration:v8];

    if ([v9 length])
    {
      v10 = objc_opt_class();
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = __49__WLDPlaybackReporter_reportPlayback_completion___block_invoke_9;
      v16[3] = &unk_100045258;
      v11 = a1[5];
      v16[4] = a1[4];
      v18 = a1[6];
      v17 = a1[5];
      [v10 _decorateVODSummary:v11 completion:v16];
    }

    else
    {
      v13 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: could not resolve lookupID for %@", buf, 0xCu);
      }

      v14 = [NSString stringWithFormat:@"could not resolve lookupID for %@", v5];
      v15 = WLKError();

      [a1[4] _cleanupWithSuccess:0 error:v15 completion:a1[6]];
    }
  }

  else
  {
    v12 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: Failed to resolve channelID %@", buf, 0xCu);
    }

    [a1[4] _cleanupWithSuccess:0 error:v6 completion:a1[6]];
  }
}

void __49__WLDPlaybackReporter_reportPlayback_completion___block_invoke_9(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = objc_alloc_init(UWLPlayEvent);
    v7 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v36 = 138412802;
      v37 = v8;
      v38 = 2048;
      v39 = v6;
      v40 = 2048;
      v41 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Report playback activity:%p summary:%p", &v36, 0x20u);
    }

    v10 = [*(a1 + 40) bundleID];
    [(UWLPlayEvent *)v6 setBundleId:v10];

    v11 = [*(a1 + 40) externalProfileID];
    [(UWLPlayEvent *)v6 setProfileId:v11];

    [(UWLPlayEvent *)v6 setExternalPlayableId:&stru_100047A18];
    v12 = [*(a1 + 40) elapsedTime];
    [v12 doubleValue];
    [(UWLPlayEvent *)v6 setPlayHeadInMilliseconds:llround(v13 * 1000.0)];

    v14 = [*(a1 + 40) duration];
    [v14 doubleValue];
    [(UWLPlayEvent *)v6 setMediaLengthInMilliseconds:llround(v15 * 1000.0)];

    v16 = +[NSDate date];
    v17 = [*(a1 + 40) timestamp];
    [v16 timeIntervalSinceDate:v17];
    [(UWLPlayEvent *)v6 setMillisecondsSinceEvent:llround(v18 * 1000.0)];

    if ([*(a1 + 40) isTimerDerived])
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    [(UWLPlayEvent *)v6 setContractOrTimed:v19];
    v20 = objc_alloc_init(UWLSectionInfo);
    v21 = [*(a1 + 40) featureDuration];

    v22 = *(a1 + 40);
    if (v21)
    {
      v23 = [v22 featureDuration];
    }

    else
    {
      v24 = [v22 duration];

      if (!v24)
      {
        goto LABEL_13;
      }

      v23 = [*(a1 + 40) duration];
    }

    v25 = v23;
    [v23 doubleValue];
    [(UWLSectionInfo *)v20 setLengthInMilliseconds:llround(v26 * 1000.0)];

LABEL_13:
    v27 = [*(a1 + 40) featureElapsedTime];

    v28 = *(a1 + 40);
    if (v27)
    {
      v29 = [v28 featureElapsedTime];
    }

    else
    {
      v30 = [v28 elapsedTime];

      if (!v30)
      {
        goto LABEL_18;
      }

      v29 = [*(a1 + 40) elapsedTime];
    }

    v31 = v29;
    [v29 doubleValue];
    [(UWLSectionInfo *)v20 setPlayheadInMilliseconds:llround(v32 * 1000.0)];

LABEL_18:
    v33 = [*(a1 + 40) completionState];
    if (v33 == 1)
    {
      v34 = 0;
    }

    else
    {
      if (v33 != 2)
      {
LABEL_23:
        v35 = [v5 nowPlayingPassThrough];
        [(UWLSectionInfo *)v20 setPassThrough:v35];

        [(UWLPlayEvent *)v6 setMainContentInfo:v20];
        [*(a1 + 32) _reportPlayEvent:v6 summary:*(a1 + 40) completion:*(a1 + 48)];
        [objc_opt_class() _donateIntentWithPlaybackSummary:*(a1 + 40) andMetadata:v5];

        goto LABEL_24;
      }

      v34 = 1;
    }

    [(UWLSectionInfo *)v20 setIsDone:v34];
    goto LABEL_23;
  }

  [*(a1 + 32) _cleanupWithSuccess:0 error:a3 completion:*(a1 + 48)];
LABEL_24:
}

- (void)getCachedCanonicalIDForSummary:(id)summary completionHandler:(id)handler
{
  summaryCopy = summary;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __72__WLDPlaybackReporter_getCachedCanonicalIDForSummary_completionHandler___block_invoke;
  v9[3] = &unk_100044F00;
  selfCopy = self;
  handlerCopy = handler;
  v10 = summaryCopy;
  v7 = summaryCopy;
  v8 = handlerCopy;
  [v7 resolveChannelID:v9];
}

void __72__WLDPlaybackReporter_getCachedCanonicalIDForSummary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 length])
  {
    v7 = [*(a1 + 32) duration];
    if (v7)
    {
      v8 = [*(a1 + 32) contentID];
      v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 integerValue]);
      v10 = [WLKPlayActivityDecorateVODOperation identifierForPlayActivityID:v8 channelID:v5 duration:v9];

      if ([v10 length])
      {
        v11 = [objc_opt_class() _cachedMetadataByIdentifier];
        v12 = [v11 objectForKey:v10];

        v13 = WLKPlaybackTrackingLogObject();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (v14)
          {
            v15 = *(a1 + 40);
            v27 = 138412546;
            v28 = v15;
            v29 = 2112;
            v30 = v10;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Returning cached metadata for %@.", &v27, 0x16u);
          }

          v16 = *(a1 + 48);
          v17 = [v12 canonicalID];
          (*(v16 + 16))(v16, v17, 0);
        }

        else
        {
          if (v14)
          {
            v25 = *(a1 + 40);
            v27 = 138412546;
            v28 = v25;
            v29 = 2112;
            v30 = v10;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Cached metadata not found for %@.", &v27, 0x16u);
          }

          v26 = *(a1 + 48);
          v17 = WLKError();
          (*(v26 + 16))(v26, 0, v17);
        }
      }

      else
      {
        v22 = WLKPlaybackTrackingLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [*(a1 + 32) bundleID];
          v27 = 138412290;
          v28 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: could not resolve lookupID for %@", &v27, 0xCu);
        }

        v24 = *(a1 + 48);
        v12 = WLKError();
        (*(v24 + 16))(v24, 0, v12);
      }
    }

    else
    {
      v19 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [*(a1 + 32) bundleID];
        v27 = 138412290;
        v28 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: Nil duration found in playback summary for %@", &v27, 0xCu);
      }

      v21 = *(a1 + 48);
      v10 = WLKError();
      (*(v21 + 16))(v21, 0, v10);
    }
  }

  else
  {
    v18 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: Failed to resolve channelID %@", &v27, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

+ (id)_cachedMetadataByIdentifier
{
  if (_cachedMetadataByIdentifier___once != -1)
  {
    +[WLDPlaybackReporter _cachedMetadataByIdentifier];
  }

  v3 = _cachedMetadataByIdentifier___cachedMetadataByIdentifier;

  return v3;
}

void __50__WLDPlaybackReporter__cachedMetadataByIdentifier__block_invoke(id a1)
{
  v1 = objc_alloc_init(WLKCache);
  v2 = _cachedMetadataByIdentifier___cachedMetadataByIdentifier;
  _cachedMetadataByIdentifier___cachedMetadataByIdentifier = v1;

  v3 = _cachedMetadataByIdentifier___cachedMetadataByIdentifier;

  [v3 setCountLimit:5];
}

+ (id)_cachedNotFoundIdentifiers
{
  if (_cachedNotFoundIdentifiers___once != -1)
  {
    +[WLDPlaybackReporter _cachedNotFoundIdentifiers];
  }

  v3 = _cachedNotFoundIdentifiers___cachedNotFoundIdentifiers;

  return v3;
}

void __49__WLDPlaybackReporter__cachedNotFoundIdentifiers__block_invoke(id a1)
{
  _cachedNotFoundIdentifiers___cachedNotFoundIdentifiers = objc_alloc_init(NSMutableSet);

  _objc_release_x1();
}

+ (void)_decorateVODSummary:(id)summary completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __54__WLDPlaybackReporter__decorateVODSummary_completion___block_invoke;
  v8[3] = &unk_1000452E8;
  summaryCopy = summary;
  completionCopy = completion;
  selfCopy = self;
  v6 = summaryCopy;
  v7 = completionCopy;
  [v6 resolveChannelID:v8];
}

void __54__WLDPlaybackReporter__decorateVODSummary_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 length])
  {
    v7 = [*(a1 + 32) duration];
    if (v7)
    {
      v8 = [*(a1 + 32) contentID];
      v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 integerValue]);
      v10 = [WLKPlayActivityDecorateVODOperation identifierForPlayActivityID:v8 channelID:v5 duration:v9];

      if ([v10 length])
      {
        v11 = [objc_opt_class() _cachedMetadataByIdentifier];
        v12 = [v11 objectForKey:v10];

        if (v12)
        {
          v13 = WLKPlaybackTrackingLogObject();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a1 + 48);
            *buf = 138412546;
            v41 = v14;
            v42 = 2112;
            v43 = v10;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Returning cached metadata for %@.", buf, 0x16u);
          }

          (*(*(a1 + 40) + 16))();
        }

        else
        {
          v22 = [objc_opt_class() _cachedNotFoundIdentifiers];
          v23 = [v22 containsObject:v10];

          if (v23)
          {
            v24 = WLKPlaybackTrackingLogObject();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v41 = v10;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Item with identifier %@ is known to be unavailable.", buf, 0xCu);
            }

            v25 = *(a1 + 40);
            v26 = WLKError();
            (*(v25 + 16))(v25, 0, v26);
          }

          else
          {
            v27 = [WLKPlayActivityDecorateVODOperation alloc];
            v28 = [*(a1 + 32) contentID];
            v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 integerValue]);
            v30 = [*(a1 + 32) playablePassthrough];
            v31 = [v27 initWithExternalId:v28 brandId:v5 hlsAssetDuration:v29 playablePassthrough:v30];

            objc_initWeak(buf, v31);
            v33 = _NSConcreteStackBlock;
            v34 = 3221225472;
            v35 = __54__WLDPlaybackReporter__decorateVODSummary_completion___block_invoke_36;
            v36 = &unk_100044F50;
            objc_copyWeak(v39, buf);
            v39[1] = *(a1 + 48);
            v37 = v10;
            v38 = *(a1 + 40);
            v32 = WLDOperationQueue([v31 setCompletionBlock:&v33]);
            [v32 addOperation:{v31, v33, v34, v35, v36}];

            objc_destroyWeak(v39);
            objc_destroyWeak(buf);
          }
        }
      }

      else
      {
        v19 = WLKPlaybackTrackingLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [*(a1 + 32) bundleID];
          *buf = 138412290;
          v41 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: could not resolve lookupID for %@", buf, 0xCu);
        }

        v21 = *(a1 + 40);
        v12 = WLKError();
        (*(v21 + 16))(v21, 0, v12);
      }
    }

    else
    {
      v16 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [*(a1 + 32) bundleID];
        *buf = 138412290;
        v41 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: Nil duration found in playback summary for %@", buf, 0xCu);
      }

      v18 = *(a1 + 40);
      v10 = WLKError();
      (*(v18 + 16))(v18, 0, v10);
    }
  }

  else
  {
    v15 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: Failed to resolve channelID %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __54__WLDPlaybackReporter__decorateVODSummary_completion___block_invoke_36(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];

  if (v3)
  {
    v4 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [WeakRetained error];
      v23 = 138412290;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Activity lookup failed: %@", &v23, 0xCu);
    }

    v6 = [WeakRetained httpResponse];
    v7 = [v6 statusCode];

    if ((v7 - 400) <= 0x63)
    {
      v8 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 134217984;
        v24 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Activity lookup got a %ld. We will not retry.", &v23, 0xCu);
      }

      v9 = [objc_opt_class() _cachedNotFoundIdentifiers];
      [v9 addObject:*(a1 + 32)];
    }

    v10 = *(a1 + 40);
    v11 = [WeakRetained error];
    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    v12 = [WeakRetained metadataByIdentifier];
    v11 = [v12 objectForKeyedSubscript:*(a1 + 32)];

    v13 = WLKPlaybackTrackingLogObject();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v14)
      {
        v15 = *(a1 + 56);
        v16 = *(a1 + 32);
        v23 = 138412546;
        v24 = v15;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Got metadata for %@.", &v23, 0x16u);
      }

      v17 = [objc_opt_class() _cachedMetadataByIdentifier];
      [v17 setObject:v11 forKey:*(a1 + 32)];

      v18 = *(a1 + 40);
      v19 = *(v18 + 16);
      v20 = v11;
    }

    else
    {
      if (v14)
      {
        v21 = *(a1 + 56);
        v22 = *(a1 + 32);
        v23 = 138412546;
        v24 = v21;
        v25 = 2112;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Metadata not found even after successfully receiving response from backend for %@.", &v23, 0x16u);
      }

      v18 = *(a1 + 40);
      v19 = *(v18 + 16);
      v20 = 0;
    }

    v19(v18, v20, 0);
  }
}

- (void)_reportPlayEvent:(id)event summary:(id)summary completion:(id)completion
{
  eventCopy = event;
  summaryCopy = summary;
  completionCopy = completion;
  v11 = [WLDPlayActivityReportOperation alloc];
  v40 = eventCopy;
  v12 = [NSArray arrayWithObjects:&v40 count:1];
  v13 = [(WLDPlayActivityReportOperation *)v11 initWithPlayEvents:v12];

  v14 = +[TVAppAccountStoreObjC activeAccount];
  ams_DSID = [v14 ams_DSID];
  stringValue = [ams_DSID stringValue];

  accountID = [summaryCopy accountID];
  v18 = stringValue;
  v19 = accountID;
  v20 = v19;
  if (v18 == v19)
  {

    v22 = v18;
LABEL_11:

    goto LABEL_12;
  }

  if (!v18 || !v19)
  {

    goto LABEL_8;
  }

  v21 = [v18 isEqual:v19];

  if ((v21 & 1) == 0)
  {
LABEL_8:
    v23 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v36 = 2112;
      v37 = v18;
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@: Note: DSID mismatch. Active:%@ Summary:%@", buf, 0x20u);
    }

    v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v20 longLongValue]);
    [(WLDPlayActivityReportOperation *)v13 setDSID:v22];
    goto LABEL_11;
  }

LABEL_12:
  objc_initWeak(&location, v13);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __59__WLDPlaybackReporter__reportPlayEvent_summary_completion___block_invoke;
  v29[3] = &unk_100045310;
  objc_copyWeak(&v32, &location);
  v29[4] = self;
  v24 = summaryCopy;
  v30 = v24;
  v25 = completionCopy;
  v31 = v25;
  [(WLDPlayActivityReportOperation *)v13 setCompletionBlock:v29];
  v26 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v36 = 2048;
    v37 = eventCopy;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Queueing activity report: %p", buf, 0x16u);
  }

  v28 = WLDOperationQueue(v27);
  [v28 addOperation:v13];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

void __59__WLDPlaybackReporter__reportPlayEvent_summary_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained error];

  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [WeakRetained nextExpectedReportMillis];
    [v3 _scheduleTimedReportForSummary:v4 afterMillis:v5];
  }

  v6 = *(a1 + 32);
  v7 = [WeakRetained error];
  [v6 _cleanupWithSuccess:v2 == 0 error:v7 completion:*(a1 + 48)];
}

- (void)_cleanupWithSuccess:(BOOL)success error:(id)error completion:(id)completion
{
  successCopy = success;
  errorCopy = error;
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, successCopy, errorCopy);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  transaction = selfCopy->_transaction;
  selfCopy->_transaction = 0;

  v13 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = selfCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Ended Transaction", &v14, 0xCu);
  }

  objc_sync_exit(selfCopy);
}

+ (int64_t)_intentsMediaItemTypeFromWLKContentType:(unint64_t)type
{
  if (type - 1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_100040F20[type - 1];
  }
}

+ (void)_donateIntentWithPlaybackSummary:(id)summary andMetadata:(id)metadata
{
  summaryCopy = summary;
  metadataCopy = metadata;
  if ([summaryCopy playbackState] == 1)
  {
    v42 = 0;
    v8 = [LSBundleRecord bundleRecordWithApplicationIdentifier:@"com.apple.tv" error:&v42];
    v9 = v42;
    if (kCFBundleExecutableKey)
    {
      contentTitle = [summaryCopy contentTitle];
      if (contentTitle)
      {
        [summaryCopy contentTitle];
      }

      else
      {
        [v8 localizedName];
      }
      v12 = ;

      v35 = v8;
      v36 = v9;
      v34 = v12;
      if ([self _intentsMediaItemTypeFromWLKContentType:{objc_msgSend(metadataCopy, "contentType")}] == 13)
      {
        v13 = [INMediaItem alloc];
        canonicalShowID = [metadataCopy canonicalShowID];
        v15 = [v13 initWithIdentifier:canonicalShowID title:v12 type:12 artwork:0];

        v16 = 0;
      }

      else
      {
        v16 = v12;
        v15 = 0;
      }

      v17 = [INMediaItem alloc];
      canonicalID = [metadataCopy canonicalID];
      v33 = v16;
      v19 = [v17 initWithIdentifier:canonicalID title:v16 type:objc_msgSend(self artwork:{"_intentsMediaItemTypeFromWLKContentType:", objc_msgSend(metadataCopy, "contentType")), 0}];

      v20 = [INPlayMediaIntent alloc];
      v45 = v19;
      v21 = [NSArray arrayWithObjects:&v45 count:1];
      v32 = v15;
      v22 = [v20 initWithMediaItems:v21 mediaContainer:v15 playShuffled:&__kCFBooleanFalse playbackRepeatMode:1 resumePlayback:&__kCFBooleanTrue playbackQueueLocation:1 playbackSpeed:&off_100049CB0 mediaSearch:0];

      v37 = metadataCopy;
      siriActionsCategories = [metadataCopy siriActionsCategories];
      v24 = objc_opt_new();
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v25 = siriActionsCategories;
      v26 = [v25 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v39;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v39 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = [[INSpeakableString alloc] initWithVocabularyIdentifier:*(*(&v38 + 1) + 8 * i) spokenPhrase:@"TV" pronunciationHint:@"TV"];
            [v24 addObject:v30];
          }

          v27 = [v25 countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v27);
      }

      [v22 setBuckets:v24];
      [v22 _setLaunchId:@"com.apple.tv"];
      [v22 _setExtensionBundleId:0];
      v31 = [[INInteraction alloc] initWithIntent:v22 response:0];
      [v31 donateInteractionWithCompletion:&__block_literal_global_55];

      v9 = v36;
      metadataCopy = v37;
      v11 = v34;
      v8 = v35;
    }

    else
    {
      v11 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [WLDPlaybackReporter _donateIntentWithPlaybackSummary:v9 andMetadata:v11];
      }
    }
  }

  else
  {
    v9 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Skipping donation because user didn't initiate playback.", buf, 2u);
    }
  }
}

void __68__WLDPlaybackReporter__donateIntentWithPlaybackSummary_andMetadata___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error donating interaction: %@", &v4, 0xCu);
    }
  }
}

- (void)_clearBDTimer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  BDTimer = selfCopy->_BDTimer;
  if (BDTimer)
  {
    v4 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = selfCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ TR: Cancelling existing timer", &v5, 0xCu);
    }

    dispatch_source_cancel(selfCopy->_BDTimer);
    BDTimer = selfCopy->_BDTimer;
  }

  selfCopy->_BDTimer = 0;

  objc_sync_exit(selfCopy);
}

- (void)_scheduleTimedReportForSummary:(id)summary afterMillis:(id)millis
{
  summaryCopy = summary;
  millisCopy = millis;
  if (millisCopy)
  {
    v8 = [summaryCopy playbackState] == 1;
    selfCopy2 = WLKPlaybackTrackingLogObject();
    v10 = os_log_type_enabled(&selfCopy2->super, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 138412546;
        selfCopy3 = self;
        v23 = 2112;
        v24 = millisCopy;
        _os_log_impl(&_mh_execute_header, &selfCopy2->super, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ TR: Will schedule timed report in %@ millis", buf, 0x16u);
      }

      selfCopy2 = self;
      v11 = objc_sync_enter(selfCopy2);
      v12 = WLDDispatchQueue(v11);
      v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v12);
      BDTimer = selfCopy2->_BDTimer;
      selfCopy2->_BDTimer = v13;

      [millisCopy doubleValue];
      v16 = dispatch_time(0, (v15 * 1000000.0));
      dispatch_source_set_timer(selfCopy2->_BDTimer, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
      objc_initWeak(buf, selfCopy2);
      v17 = selfCopy2->_BDTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = __66__WLDPlaybackReporter__scheduleTimedReportForSummary_afterMillis___block_invoke;
      handler[3] = &unk_100045380;
      objc_copyWeak(&v20, buf);
      handler[4] = selfCopy2;
      v19 = summaryCopy;
      dispatch_source_set_event_handler(v17, handler);
      dispatch_activate(selfCopy2->_BDTimer);

      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
      objc_sync_exit(selfCopy2);
    }

    else if (v10)
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, &selfCopy2->super, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ TR: Will not generate timed report because playback state is not playing", buf, 0xCu);
    }
  }
}

void __66__WLDPlaybackReporter__scheduleTimedReportForSummary_afterMillis___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = a1[4];
    objc_sync_enter(v3);
    v4 = WeakRetained[4];
    objc_sync_exit(v3);

    if ([v4 playbackState] == 1 && objc_msgSend(v4, "isSameContent:", a1[5]))
    {
      v5 = [a1[5] elapsedTimeSummaryWithPlaybackState:1 timerDerived:1];
      v6 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a1[4];
        *buf = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ TR: Will enqueue: %@", buf, 0x16u);
      }

      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __66__WLDPlaybackReporter__scheduleTimedReportForSummary_afterMillis___block_invoke_56;
      v9[3] = &unk_100045358;
      v9[4] = WeakRetained;
      [WeakRetained reportPlayback:v5 completion:v9];
    }

    else
    {
      v5 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[4];
        *buf = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ TR: Will not generate report because current playback state does not satisfy conditions", buf, 0xCu);
      }
    }
  }
}

void __66__WLDPlaybackReporter__scheduleTimedReportForSummary_afterMillis___block_invoke_56(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = WLKPlaybackTrackingLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v13 = 138412290;
      v14 = v8;
      v9 = "WLDPlaybackReporter - %@ TR: Successful playback report";
      v10 = v6;
      v11 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
    }
  }

  else if (v7)
  {
    v12 = *(a1 + 32);
    v13 = 138412546;
    v14 = v12;
    v15 = 2112;
    v16 = v5;
    v9 = "WLDPlaybackReporter - %@: TR: Failed playback report %@";
    v10 = v6;
    v11 = 22;
    goto LABEL_6;
  }
}

+ (void)_donateIntentWithPlaybackSummary:(void *)a1 andMetadata:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "WLDPlaybackReporter - Could not find bundle for ID com.apple.tv - %@", &v4, 0xCu);
}

@end