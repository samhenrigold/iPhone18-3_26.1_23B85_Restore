@interface RDAssetManager
+ (id)_assetQueryForLanguage:(id)language;
+ (id)sharedInstance;
- (BOOL)_startedDownloadingEmbeddedSpeechAsset:(id)asset withUrgency:(BOOL)urgency error:(id *)error;
- (BOOL)sendCallback;
- (RDAssetManager)init;
- (id)_errorStringForCancelDownloadResult:(int64_t)result;
- (id)_errorStringForDownloadResult:(int64_t)result;
- (id)_errorStringForMAOperationResult:(int64_t)result;
- (id)_errorStringForPurgeResult:(int64_t)result;
- (id)_errorStringForQueryResult:(int64_t)result;
- (id)_installedAssetForLanguage:(id)language error:(id *)error;
- (id)_installedAssetFromFoundAssets:(id)assets language:(id)language error:(id *)error;
- (id)_installedLocalAssetForLanguage:(id)language error:(id *)error;
- (id)_stateStringForAsset:(id)asset;
- (id)copyInstallationStatusForLangaugesWithError:(id *)error;
- (id)copyInstalledAssetPathForLangaugeWithError:(id)error error:(id *)a4;
- (id)copyInstalledQuasarModelPathForLanguage:(id)language error:(id *)error;
- (id)purgeInstalledAssetsWithError:(id *)error;
- (id)queryAndCopyInstallationStatusForLangaugesWithError:(id *)error;
- (void)_cancelDownloadForLangaugeWithError:(id)error withError:(id *)withError;
- (void)_fetchRemoteAssetForLanguage:(id)language;
- (void)_sendDownloadCallbackDictionaryWithLanguage:(id)language downloadPhase:(__CFString *)phase timeRemaining:(float)remaining bytesWritten:(float)written bytesTotal:(float)total error:(id)error;
- (void)addPeerForCallback:(id)callback;
- (void)cancelDownloadForLanguage:(id)language error:(id *)error;
- (void)kickCatalogDownloadWithUrgency:(BOOL)urgency;
- (void)removePeerFromCallback:(id)callback;
- (void)sendMessageToClient:(__CFDictionary *)client;
@end

@implementation RDAssetManager

+ (id)sharedInstance
{
  if (qword_10010E558 != -1)
  {
    sub_1000C9398();
  }

  v3 = qword_10010E550;

  return v3;
}

- (RDAssetManager)init
{
  v10.receiver = self;
  v10.super_class = RDAssetManager;
  v2 = [(RDAssetManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.embeddedspeech.RDAssetManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    [(RDAssetManager *)v2 setCatalogDownloadInProgress:0];
    v5 = +[NSMutableArray array];
    [(RDAssetManager *)v2 setRequestedLanguagesForDownload:v5];

    v6 = +[NSMutableArray array];
    [(RDAssetManager *)v2 setPeersRequestingDownloadProgress:v6];

    v7 = +[NSDate distantPast];
    [v7 timeIntervalSinceReferenceDate];
    v2->_lastCatalogDownload = v8;
  }

  return v2;
}

- (void)kickCatalogDownloadWithUrgency:(BOOL)urgency
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004349C;
  v4[3] = &unk_1000FF710;
  urgencyCopy = urgency;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (id)copyInstallationStatusForLangaugesWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100043B14;
  v18 = sub_100043B24;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100043B14;
  v12 = sub_100043B24;
  v13 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100043B2C;
  block[3] = &unk_1000FF4A8;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(queue, block);
  if (error)
  {
    *error = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5;
}

- (id)queryAndCopyInstallationStatusForLangaugesWithError:(id *)error
{
  v5 = [RDAssetManager _assetQueryForLanguage:0];
  v6 = v5;
  if (!v5)
  {
    v10 = RXOSLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not create asset query!", buf, 2u);
    }

    goto LABEL_63;
  }

  [v5 returnTypes:1];
  [v6 setDoNotBlockBeforeFirstUnlock:1];
  [v6 setDoNotBlockOnNetworkStatus:1];
  queryMetaDataSync = [v6 queryMetaDataSync];
  v8 = RXOSLog(queryMetaDataSync);
  v9 = v8;
  if (queryMetaDataSync)
  {
    if (queryMetaDataSync == 2)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Could not find catalog! Attempting to kick off download...", buf, 2u);
      }

      [(RDAssetManager *)self kickCatalogDownloadWithUrgency:1];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v44 = [(RDAssetManager *)self _errorStringForQueryResult:queryMetaDataSync];
        *buf = 138412290;
        v59 = v44;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "MobileAsset query failed : error = %@", buf, 0xCu);
      }

      if (error)
      {
        v64 = @"MAQueryResult";
        v45 = [(RDAssetManager *)self _errorStringForQueryResult:queryMetaDataSync];
        v65 = v45;
        v46 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        *error = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v46];
      }
    }

LABEL_63:
    v12 = 0;
    goto LABEL_66;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found Catalog!", buf, 2u);
  }

  [(RDAssetManager *)self kickCatalogDownloadWithUrgency:0];
  results = [v6 results];
  v12 = +[NSMutableDictionary dictionary];
  v49 = results;
  if (results)
  {
    v48 = v6;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v13 = results;
    v14 = [v13 countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (!v14)
    {
      goto LABEL_41;
    }

    v15 = v14;
    v16 = *v55;
    while (1)
    {
      v17 = 0;
      do
      {
        if (*v55 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v54 + 1) + 8 * v17);
        _es_language = [v18 _es_language];
        _es_quasarDir = [v12 objectForKey:_es_language];
        if ([_es_quasarDir hasPrefix:@"Version:"])
        {
          goto LABEL_21;
        }

        _es_quasarModelPath = [v12 objectForKey:_es_language];
        if ([_es_quasarModelPath isEqualToString:@"Installing"])
        {
          goto LABEL_20;
        }

        v22 = [_es_quasarModelPath isEqualToString:@"Waiting to Install"];

        if ((v22 & 1) == 0)
        {
          _es_status = [v18 _es_status];
          if (_es_status <= 1)
          {
            if (_es_status)
            {
              if (_es_status != 1)
              {
                goto LABEL_37;
              }

              v24 = @"Not Installing";
            }

            else
            {
              v24 = @"Not Supported";
            }
          }

          else if (_es_status == 2)
          {
            v24 = @"Waiting to Install";
          }

          else
          {
            v24 = @"Installing";
            if (_es_status != 3)
            {
              if (_es_status == 4)
              {
                _es_quasarDir = [v18 _es_quasarDir];
                _es_quasarModelPath = [v18 _es_quasarModelPath];
                if ([v18 _es_isCompatibleWithThisDevice] && sub_100044290(_es_quasarModelPath))
                {
                  v25 = [NSString stringWithFormat:@"Version: %@", _es_quasarDir];
                  [v12 setObject:v25 forKey:_es_language];
                }

                else
                {
                  [v12 setObject:@"Not Supported" forKey:_es_language];
                }

LABEL_20:

LABEL_21:
                goto LABEL_22;
              }

LABEL_37:
              v24 = @"Unknown";
            }
          }

          [v12 setObject:v24 forKey:_es_language];
        }

LABEL_22:

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v26 = [v13 countByEnumeratingWithState:&v54 objects:v63 count:16];
      v15 = v26;
      if (!v26)
      {
LABEL_41:

        v6 = v48;
        break;
      }
    }
  }

  v27 = +[NSUserDefaults standardUserDefaults];
  v28 = [v27 stringArrayForKey:@"InstalledLanguages"];
  v29 = v28;
  v30 = &__NSArray0__struct;
  if (v28)
  {
    v30 = v28;
  }

  v31 = v30;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v32 = v31;
  v33 = [v32 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = 0;
    v36 = *v51;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v51 != v36)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v50 + 1) + 8 * i);
        v39 = [v12 objectForKey:v38];

        if (!v39)
        {
          if (!v35)
          {
            v35 = [v32 mutableCopy];
          }

          [v35 removeObject:v38];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v34);

    if (v35)
    {
      v41 = RXOSLog(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [v32 componentsJoinedByString:{@", "}];
        v43 = [v35 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v59 = v42;
        v60 = 2112;
        v61 = v43;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Previously installed offline language(s) removed; installed list: [%@] -> [%@]", buf, 0x16u);
      }

      [v27 setObject:v35 forKey:@"InstalledLanguages"];
      [v27 synchronize];
    }
  }

  else
  {

    v35 = 0;
  }

LABEL_66:

  return v12;
}

- (id)copyInstalledAssetPathForLangaugeWithError:(id)error error:(id *)a4
{
  errorCopy = error;
  v7 = [RDAssetManager _assetQueryForLanguage:0];
  [v7 returnTypes:1];
  queryMetaDataSync = [v7 queryMetaDataSync];
  if (!queryMetaDataSync)
  {
    results = [v7 results];
    v12 = results;
    if (!results)
    {
      _es_quasarModelPath = 0;
LABEL_29:

      goto LABEL_30;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = results;
    v16 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          _es_language = [v20 _es_language];
          _es_status = [v20 _es_status];
          if ([_es_language isEqualToString:errorCopy])
          {
            v23 = _es_status == 4;
          }

          else
          {
            v23 = 0;
          }

          if (v23)
          {
            _es_quasarModelPath = [v20 _es_quasarModelPath];
            if ([v20 _es_isCompatibleWithThisDevice] && (sub_100044290(_es_quasarModelPath) & 1) != 0)
            {

              goto LABEL_27;
            }
          }
        }

        v17 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    _es_quasarModelPath = 0;
LABEL_27:
    v12 = v13;
LABEL_28:

    goto LABEL_29;
  }

  v9 = queryMetaDataSync;
  if (queryMetaDataSync != 2)
  {
    v10 = RXOSLog(queryMetaDataSync);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(RDAssetManager *)self _errorStringForQueryResult:v9];
      *buf = 138412290;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MobileAsset query failed for copyInstalledAssetPathForLangaugeWithError : error = %@", buf, 0xCu);
    }

    if (a4)
    {
      v30 = @"MAQueryResult";
      v12 = [(RDAssetManager *)self _errorStringForQueryResult:v9];
      v31 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v13];
      *a4 = _es_quasarModelPath = 0;
      goto LABEL_28;
    }
  }

  _es_quasarModelPath = 0;
LABEL_30:

  return _es_quasarModelPath;
}

- (void)cancelDownloadForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  if (languageCopy)
  {
    v7 = languageCopy;
    v8 = [languageCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    *v17 = 0;
    v18 = v17;
    v19 = 0x3032000000;
    v20 = sub_100043B14;
    v21 = sub_100043B24;
    v22 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100044A38;
    block[3] = &unk_1000FF520;
    block[4] = self;
    v10 = v8;
    v15 = v10;
    v16 = v17;
    dispatch_sync(queue, block);
    if (error)
    {
      v11 = *(v18 + 5);
      *error = v11;
      v12 = RXOSLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *error;
        *buf = 138412290;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error in cancelling download: %@", buf, 0xCu);
      }
    }

    _Block_object_dispose(v17, 8);
  }

  else
  {
    v10 = RXOSLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Returning nil for nil language", v17, 2u);
    }
  }
}

- (void)_cancelDownloadForLangaugeWithError:(id)error withError:(id *)withError
{
  errorCopy = error;
  v7 = [RDAssetManager _assetQueryForLanguage:errorCopy];
  [v7 returnTypes:4];
  queryMetaDataSync = [v7 queryMetaDataSync];
  if (!queryMetaDataSync)
  {
    results = [v7 results];
    v16 = results;
    if (results)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v19 = [results countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v19)
      {
        v20 = v19;
        v31 = v7;
        v32 = errorCopy;
        v21 = *v34;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v16);
            }

            v23 = *(*(&v33 + 1) + 8 * i);
            if ([v23 _es_isCompatibleWithThisDevice])
            {
              [v23 refreshState];
              cancelDownloadSync = [v23 cancelDownloadSync];
              if (cancelDownloadSync)
              {
                v25 = @"CancelFailed";
              }

              else
              {
                v25 = @"Cancelled";
              }

              if ([(RDAssetManager *)self sendCallback])
              {
                _es_language = [v23 _es_language];
                v27 = [(RDAssetManager *)self _errorStringForCancelDownloadResult:cancelDownloadSync];
                LODWORD(v28) = -1.0;
                LODWORD(v29) = -1.0;
                LODWORD(v30) = -1.0;
                [(RDAssetManager *)self _sendDownloadCallbackDictionaryWithLanguage:_es_language downloadPhase:v25 timeRemaining:v27 bytesWritten:v28 bytesTotal:v29 error:v30];
              }

              CFRelease(v25);
            }
          }

          v20 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v20);
        v7 = v31;
        errorCopy = v32;
      }
    }

    goto LABEL_24;
  }

  v9 = queryMetaDataSync;
  v10 = RXOSLog(queryMetaDataSync);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [(RDAssetManager *)self _errorStringForQueryResult:v9];
    *buf = 138412290;
    v41 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MobileAsset query failed : error = %@", buf, 0xCu);
  }

  if (withError)
  {
    if ([(RDAssetManager *)self sendCallback])
    {
      v12 = [(RDAssetManager *)self _errorStringForQueryResult:v9];
      LODWORD(v13) = -1.0;
      LODWORD(v14) = -1.0;
      LODWORD(v15) = -1.0;
      [(RDAssetManager *)self _sendDownloadCallbackDictionaryWithLanguage:errorCopy downloadPhase:@"CancelFailed" timeRemaining:v12 bytesWritten:v13 bytesTotal:v14 error:v15];
    }

    v38 = @"MAQueryResult";
    v16 = [(RDAssetManager *)self _errorStringForQueryResult:v9];
    v39 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *withError = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:103 userInfo:v17];

LABEL_24:
  }
}

- (id)copyInstalledQuasarModelPathForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  if (languageCopy)
  {
    v7 = languageCopy;
    v8 = [languageCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    *buf = 0;
    v30 = buf;
    v31 = 0x3032000000;
    v32 = sub_100043B14;
    v33 = sub_100043B24;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_100043B14;
    v27 = sub_100043B24;
    v28 = 0;
    queue = self->_queue;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100045074;
    v18 = &unk_1000FF738;
    selfCopy = self;
    v10 = v8;
    v20 = v10;
    v21 = buf;
    v22 = &v23;
    dispatch_sync(queue, &v15);
    v11 = v30;
    v12 = *(v30 + 5);
    if (error && !v12)
    {
      *error = v24[5];
      v11 = v30;
      v12 = *(v30 + 5);
    }

    if (v12)
    {
      if (error)
      {
        *error = 0;
        v12 = *(v11 + 5);
      }

      error = v12;
    }

    else if (error)
    {
      v35 = NSLocalizedFailureReasonErrorKey;
      v36 = @"No models installed yet";
      selfCopy = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1, v15, v16, v17, v18, selfCopy];
      *error = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:selfCopy];

      error = 0;
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = RXOSLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Returning no model path for nil language", buf, 2u);
    }

    error = 0;
  }

  return error;
}

- (void)_fetchRemoteAssetForLanguage:(id)language
{
  languageCopy = language;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [RDAssetManager _assetQueryForLanguage:languageCopy];
  [v5 returnTypes:2];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100045358;
  v8[3] = &unk_1000FF788;
  v8[4] = self;
  v9 = v5;
  v10 = languageCopy;
  v6 = languageCopy;
  v7 = v5;
  [v7 queryMetaData:v8];
}

- (id)_installedAssetForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  dispatch_assert_queue_V2(self->_queue);
  if (languageCopy)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 stringArrayForKey:@"InstalledLanguages"];
    v10 = v9;
    v11 = &__NSArray0__struct;
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = [(RDAssetManager *)self _installedLocalAssetForLanguage:languageCopy error:error];
    _es_isInstalled = [v13 _es_isInstalled];
    v15 = [v12 containsObject:languageCopy];
    if (_es_isInstalled)
    {
      if ((v15 & 1) == 0)
      {
        v16 = [v12 arrayByAddingObject:languageCopy];
        v17 = RXOSLog(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v16 componentsJoinedByString:{@", "}];
          v25 = 138412546;
          v26 = languageCopy;
          v27 = 2112;
          v28 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Recording newly installed offline language (%@) installed list is now: [%@]", &v25, 0x16u);
        }

        [v8 setObject:v16 forKey:@"InstalledLanguages"];
        [v8 synchronize];
      }

      v19 = v13;
      goto LABEL_23;
    }

    if (v15)
    {
      v20 = [v12 mutableCopy];
      v21 = RXOSLog([v20 removeObject:languageCopy]);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v20 componentsJoinedByString:{@", "}];
        v25 = 138412546;
        v26 = languageCopy;
        v27 = 2112;
        v28 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Previously installed offline language (%@) removed; installed list is now: [%@]", &v25, 0x16u);
      }

      [v8 setObject:v20 forKey:@"InstalledLanguages"];
      [v8 synchronize];
    }

    if ([v13 _es_isDownloading])
    {
      if (!error)
      {
        v19 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v23 = [(RDAssetManager *)self _startedDownloadingEmbeddedSpeechAsset:v13 withUrgency:1 error:error];
      v19 = 0;
      if (!error || (v23 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:0];
    *error = v19 = 0;
    goto LABEL_23;
  }

  v8 = RXOSLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Returning no installed asset for nil language", &v25, 2u);
  }

  v19 = 0;
LABEL_24:

  return v19;
}

- (id)_installedAssetFromFoundAssets:(id)assets language:(id)language error:(id *)error
{
  errorCopy = error;
  assetsCopy = assets;
  languageCopy = language;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_queue);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = assetsCopy;
  v9 = [v8 countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v53;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v52 + 1) + 8 * i);
        if ([v15 _es_isCompatibleWithThisDevice])
        {
          if (v12)
          {
            if ([v12 _es_compareByVersion:v15] == -1)
            {
              v16 = v15;

              v12 = v16;
            }
          }

          else
          {
            v12 = v15;
          }

          if ([v15 _es_isInstalled])
          {
            if (v11)
            {
              if ([v11 _es_compareByVersion:v15] == -1)
              {
                v17 = v15;

                v11 = v17;
              }
            }

            else
            {
              v11 = v15;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v52 objects:v65 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v18 = v8;
  v19 = [v18 countByEnumeratingWithState:&v48 objects:v64 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v49;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v49 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v48 + 1) + 8 * j);
        v24 = v23 == v12 || v23 == v11;
        if (!v24 && [*(*(&v48 + 1) + 8 * j) _es_isCompatibleWithThisDevice])
        {
          if ([v23 _es_isDownloading])
          {
            cancelDownloadSync = [v23 cancelDownloadSync];
            if (!cancelDownloadSync)
            {
              continue;
            }

            v26 = cancelDownloadSync;
            v27 = RXOSLog(cancelDownloadSync);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              _es_description = [v23 _es_description];
              v29 = [(RDAssetManager *)selfCopy _errorStringForCancelDownloadResult:v26];
              *buf = 138412546;
              v59 = _es_description;
              v60 = 2112;
              v61 = v29;
              v30 = v27;
              v31 = "Error canceling download of (%@) before fetching newer version: %@";
              goto LABEL_38;
            }

            goto LABEL_39;
          }

          if ([v23 _es_isInstalled])
          {
            purgeSync = [v23 purgeSync];
            if (purgeSync)
            {
              v33 = purgeSync;
              v27 = RXOSLog(purgeSync);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                _es_description = [v23 _es_description];
                v29 = [(RDAssetManager *)selfCopy _errorStringForPurgeResult:v33];
                *buf = 138412546;
                v59 = _es_description;
                v60 = 2112;
                v61 = v29;
                v30 = v27;
                v31 = "Error purging (%@) before fetching newer version: %@";
LABEL_38:
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x16u);
              }

LABEL_39:

              continue;
            }
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v48 objects:v64 count:16];
    }

    while (v20);
  }

  v35 = RXOSLog(v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [v18 count];
    _es_description2 = [v12 _es_description];
    *buf = 134218498;
    v59 = v36;
    v60 = 2112;
    v61 = languageCopy;
    v62 = 2112;
    v63 = _es_description2;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Found %lu asset(s) for %@, with latest being (%@)", buf, 0x20u);
  }

  v39 = errorCopy;
  if (v12 && v12 != v11)
  {
    v40 = RXOSLog(v38);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v59 = v12;
      v60 = 2048;
      v61 = v11;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Starting a download because %p != %p", buf, 0x16u);
    }

    if ([(RDAssetManager *)selfCopy _startedDownloadingEmbeddedSpeechAsset:v12 withUrgency:v11 == 0 error:errorCopy])
    {
      if (errorCopy)
      {
        *errorCopy = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:0];
      }
    }

    else if (errorCopy)
    {
      v41 = *errorCopy;
      if (*errorCopy)
      {
        v56 = NSUnderlyingErrorKey;
        v57 = v41;
        v42 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      }

      else
      {
        v42 = 0;
      }

      *v39 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v42, errorCopy];
      if (v41)
      {
      }
    }
  }

  if (v11)
  {
    v43 = v11;
  }

  return v11;
}

- (id)_installedLocalAssetForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  dispatch_assert_queue_V2(self->_queue);
  v8 = RXOSLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = languageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v9 = [RDAssetManager _assetQueryForLanguage:languageCopy];
  [v9 returnTypes:2];
  [v9 setDoNotBlockOnNetworkStatus:1];
  [v9 setDoNotBlockBeforeFirstUnlock:1];
  queryMetaDataSync = [v9 queryMetaDataSync];
  if (!queryMetaDataSync)
  {
    results = [v9 results];
    v15 = results;
    if (results)
    {
      if ([results count])
      {
        v26 = 0;
        v18 = [(RDAssetManager *)self _installedAssetFromFoundAssets:v15 language:languageCopy error:&v26];
        v19 = v26;
        v20 = v19;
        if (error && !v18)
        {
          v21 = v19;
          *error = v20;
        }

        goto LABEL_20;
      }

      v20 = RXOSLog(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v9;
        v22 = "No assets were found for query: %@";
        v23 = v20;
        v24 = 12;
        goto LABEL_18;
      }
    }

    else
    {
      v20 = RXOSLog(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v28 = languageCopy;
        v29 = 2114;
        v30 = v9;
        v22 = "MobileAsset said it succeeded but it didn't for %{public}@: query=%{public}@";
        v23 = v20;
        v24 = 22;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
      }
    }

    v18 = 0;
LABEL_20:

    v14 = v18;
    v16 = v14;
    goto LABEL_21;
  }

  v11 = queryMetaDataSync;
  v12 = RXOSLog(queryMetaDataSync);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = [(RDAssetManager *)self _errorStringForQueryResult:v11];
    *buf = 138412290;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "MobileAsset is having trouble with queryMetaDataSync: %@", buf, 0xCu);
  }

  if (!error)
  {
    v16 = 0;
    goto LABEL_22;
  }

  v31 = @"MAQueryResult";
  v14 = [(RDAssetManager *)self _errorStringForQueryResult:v11];
  v32 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v15];
  *error = v16 = 0;
LABEL_21:

LABEL_22:

  return v16;
}

+ (id)_assetQueryForLanguage:(id)language
{
  languageCopy = language;
  v4 = RXOSLog(languageCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = languageCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  v5 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.EmbeddedSpeech"];
  v6 = v5;
  if (languageCopy)
  {
    [v5 addKeyValuePair:@"Language" with:languageCopy];
  }

  return v6;
}

- (BOOL)_startedDownloadingEmbeddedSpeechAsset:(id)asset withUrgency:(BOOL)urgency error:(id *)error
{
  urgencyCopy = urgency;
  assetCopy = asset;
  dispatch_assert_queue_V2(self->_queue);
  v10 = RXOSLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    _es_description = [assetCopy _es_description];
    *buf = 138412290;
    v42 = _es_description;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Downloading %@", buf, 0xCu);
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000467E4;
  v39[3] = &unk_1000FF7B0;
  v39[4] = self;
  v12 = assetCopy;
  v40 = v12;
  v13 = objc_retainBlock(v39);
  _es_isInstalled = [v12 _es_isInstalled];
  if (_es_isInstalled)
  {
    v15 = RXOSLog(_es_isInstalled);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Asset is already installed, no need to start download", buf, 2u);
    }

    LOBYTE(v16) = 1;
    goto LABEL_35;
  }

  state = [v12 state];
  v18 = state;
  if (state > 2)
  {
    if (state == 3)
    {
      v24 = RXOSLog(3);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Asset is no longer in the catalog, purging", buf, 2u);
      }

      [v12 description];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100046BAC;
      v34 = v33[3] = &unk_1000FF7D8;
      selfCopy = self;
      v20 = v34;
      [v12 purge:v33];

      goto LABEL_25;
    }

    if (state == 4)
    {
      v19 = RXOSLog(4);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Asset download is already queued and in progress", buf, 2u);
      }

      v15 = 0;
      LODWORD(v16) = 1;
      goto LABEL_27;
    }

LABEL_16:
    v20 = RXOSLog(state);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v42 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unexpected asset state %ld", buf, 0xCu);
    }

LABEL_25:

    goto LABEL_26;
  }

  if (state == 1)
  {
    v38 = 0;
    v16 = [v12 spaceCheck:&v38];
    v21 = RXOSLog(v16);
    v22 = v21;
    if (v16)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v42 = v38;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Asset requires %lld bytes, starting download", buf, 0xCu);
      }

      [v12 attachProgressCallBack:v13];
      v23 = sub_1000436DC(urgencyCopy);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000469F4;
      v36[3] = &unk_1000FF7D8;
      v36[4] = self;
      v37 = v12;
      [v37 startDownload:v23 then:v36];

      v15 = 0;
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v42 = v38;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Not enough space to download asset, size=%{public}lld", buf, 0xCu);
      }

      v15 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:&off_100106A28];
      state = [(RDAssetManager *)self sendCallback];
      if (state)
      {
        _es_language = [v12 _es_language];
        LODWORD(v30) = -1.0;
        LODWORD(v31) = -1.0;
        LODWORD(v32) = -1.0;
        [(RDAssetManager *)self _sendDownloadCallbackDictionaryWithLanguage:_es_language downloadPhase:@"DownloadFailed" timeRemaining:@"Not enough space" bytesWritten:v30 bytesTotal:v31 error:v32];
      }
    }

    goto LABEL_27;
  }

  if (state != 2)
  {
    goto LABEL_16;
  }

LABEL_26:
  v15 = 0;
  LODWORD(v16) = 0;
LABEL_27:
  if (error)
  {
    state = v15;
    *error = v15;
  }

  v25 = RXOSLog(state);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    state2 = [v12 state];
    *buf = 134218498;
    if (v16)
    {
      v27 = 0;
    }

    else
    {
      v27 = v15;
    }

    v42 = state2;
    v43 = 1024;
    v44 = v16;
    v45 = 2112;
    v46 = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Asset download state=%ld, success=%d, error=%@", buf, 0x1Cu);
  }

LABEL_35:
  return v16;
}

- (id)purgeInstalledAssetsWithError:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100043B14;
  v12 = sub_100043B24;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000470BC;
  v7[3] = &unk_1000FF840;
  v7[4] = &v8;
  v4 = sub_100046CDC(error, v7);
  if (error)
  {
    v5 = v9[5];
    if (v5)
    {
      *error = v5;
    }
  }

  _Block_object_dispose(&v8, 8);

  return v4;
}

- (void)addPeerForCallback:(id)callback
{
  callbackCopy = callback;
  v4 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v4);
  peersRequestingDownloadProgress = [(RDAssetManager *)self peersRequestingDownloadProgress];
  [peersRequestingDownloadProgress addObject:callbackCopy];

  objc_sync_exit(v4);
}

- (void)removePeerFromCallback:(id)callback
{
  callbackCopy = callback;
  v4 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v4);
  peersRequestingDownloadProgress = [(RDAssetManager *)self peersRequestingDownloadProgress];
  [peersRequestingDownloadProgress removeObject:callbackCopy];

  objc_sync_exit(v4);
}

- (BOOL)sendCallback
{
  v3 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v3);
  peersRequestingDownloadProgress = [(RDAssetManager *)self peersRequestingDownloadProgress];
  v5 = [peersRequestingDownloadProgress count] != 0;

  objc_sync_exit(v3);
  return v5;
}

- (void)_sendDownloadCallbackDictionaryWithLanguage:(id)language downloadPhase:(__CFString *)phase timeRemaining:(float)remaining bytesWritten:(float)written bytesTotal:(float)total error:(id)error
{
  languageCopy = language;
  writtenCopy = written;
  valuePtr = remaining;
  totalCopy = total;
  errorCopy = error;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v15 = Mutable;
    theString2 = languageCopy;
    if (languageCopy)
    {
      CFArrayAppendValue(Mutable, languageCopy);
      v16 = RXGetAssetFallbackLocales();
      Count = CFDictionaryGetCount(v16);
      if (Count >= 1)
      {
        v18 = Count;
        v19 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
        CFDictionaryGetKeysAndValues(v16, v19, 0);
        for (i = 0; i != v18; ++i)
        {
          v21 = CFDictionaryGetValue(v16, v19[i]);
          if (v21)
          {
            MutableCopy = CFStringCreateMutableCopy(0, 0, v21);
            if (MutableCopy)
            {
              v23 = MutableCopy;
              v42.length = CFStringGetLength(MutableCopy);
              v42.location = 0;
              CFStringFindAndReplace(v23, @"_", @"-", v42, 0);
              if (CFStringCompare(v23, theString2, 0) == kCFCompareEqualTo)
              {
                v24 = CFStringCreateMutableCopy(0, 0, v19[i]);
                if (v24)
                {
                  v25 = v24;
                  v43.length = CFStringGetLength(v24);
                  v43.location = 0;
                  CFStringFindAndReplace(v25, @"_", @"-", v43, 0);
                  CFArrayAppendValue(v15, v25);
                  CFRelease(v25);
                }
              }

              CFRelease(v23);
            }
          }
        }

        free(v19);
      }
    }

    else
    {
      CFArrayAppendValue(Mutable, &stru_100105420);
    }

    v26 = CFArrayGetCount(v15);
    if (v26 >= 1)
    {
      v27 = v26;
      for (j = 0; j != v27; ++j)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v15, j);
        v30 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (CFStringCompare(ValueAtIndex, &stru_100105420, 0))
        {
          Copy = CFStringCreateCopy(0, ValueAtIndex);
          CFDictionaryAddValue(v30, @"Language", Copy);
          CFRelease(Copy);
        }

        else
        {
          CFDictionaryAddValue(v30, @"Language", kCFNull);
        }

        CFDictionaryAddValue(v30, @"Phase", phase);
        v32 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
        CFDictionaryAddValue(v30, @"TimeRemaining", v32);
        CFRelease(v32);
        v33 = CFNumberCreate(0, kCFNumberFloatType, &writtenCopy);
        CFDictionaryAddValue(v30, @"BytesWritten", v33);
        CFRelease(v33);
        v34 = CFNumberCreate(0, kCFNumberFloatType, &totalCopy);
        CFDictionaryAddValue(v30, @"BytesTotal", v34);
        CFRelease(v34);
        if (errorCopy)
        {
          v35 = CFStringCreateCopy(0, errorCopy);
          CFDictionaryAddValue(v30, @"Error", v35);
          CFRelease(v35);
        }

        else
        {
          CFDictionaryAddValue(v30, @"Error", kCFNull);
        }

        [(RDAssetManager *)self sendMessageToClient:v30];
        CFRelease(v30);
      }
    }

    CFRelease(v15);
    languageCopy = theString2;
  }
}

- (void)sendMessageToClient:(__CFDictionary *)client
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_int64(v4, "msg", 601);
  xpc_dictionary_set_value(v4, "downloadStatus", v5);
  v6 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v6);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  peersRequestingDownloadProgress = [(RDAssetManager *)self peersRequestingDownloadProgress];
  v8 = [peersRequestingDownloadProgress countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(peersRequestingDownloadProgress);
        }

        xpc_connection_send_message(*(*(&v11 + 1) + 8 * v10), v4);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [peersRequestingDownloadProgress countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
}

- (id)_errorStringForCancelDownloadResult:(int64_t)result
{
  if (result >= 8)
  {
    result = [NSString stringWithFormat:@"Unknown result: %d", result];
  }

  else
  {
    result = off_1000FF860[result];
  }

  return result;
}

- (id)_errorStringForDownloadResult:(int64_t)result
{
  if (result >= 0x24)
  {
    result = [NSString stringWithFormat:@"Unknown result: %d", result];
  }

  else
  {
    result = off_1000FF8A0[result];
  }

  return result;
}

- (id)_errorStringForQueryResult:(int64_t)result
{
  if (result < 0xD && ((0x17FFu >> result) & 1) != 0)
  {
    result = off_1000FF9C0[result];
  }

  else
  {
    result = [NSString stringWithFormat:@"Unknown result: %d", result];
  }

  return result;
}

- (id)_errorStringForPurgeResult:(int64_t)result
{
  if (result >= 0xC)
  {
    result = [NSString stringWithFormat:@"Unknown result: %d", result];
  }

  else
  {
    result = off_1000FFA28[result];
  }

  return result;
}

- (id)_stateStringForAsset:(id)asset
{
  assetCopy = asset;
  state = [assetCopy state];
  if (state >= 7)
  {
    assetCopy = [NSString stringWithFormat:@"Unknown state: %@", assetCopy];
  }

  else
  {
    assetCopy = off_1000FFA88[state];
  }

  return assetCopy;
}

- (id)_errorStringForMAOperationResult:(int64_t)result
{
  if ((result - 1) > 4)
  {
    return @"successful";
  }

  else
  {
    return off_1000FFAC0[result - 1];
  }
}

@end