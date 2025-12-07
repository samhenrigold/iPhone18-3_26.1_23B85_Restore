@interface RDAssetManager2
+ (id)sharedInstance;
- (BOOL)_isActiveDownloadForLanguage:(id)language downloadId:(int)id;
- (BOOL)_isDownloadingForLanguage:(id)language;
- (BOOL)_isDownloadingStalledForLanguage:(id)language;
- (BOOL)_sendCallback;
- (BOOL)_startedUrgentDownloadingEmbeddedSpeechAssetForLanguage:(id)language error:(id *)error;
- (RDAssetManager2)init;
- (id)_assetPathForLanguage:(id)language error:(id *)error;
- (id)_installedAssetForLanguage:(id)language error:(id *)error;
- (id)_installedLocalAssetForLanguage:(id)language error:(id *)error;
- (id)_languagesWithDownloadAttempts;
- (id)_queryAndCopyInstallationStatusForLanguagesWithError:(id *)error;
- (id)copyInstallationStatusForLangaugesWithError:(id *)error;
- (id)copyInstalledAssetPathForLangaugeWithError:(id)error error:(id *)a4;
- (id)copyInstalledAssetPropertiesForLangaugeWithError:(id)error error:(id *)a4;
- (id)copyInstalledAssetSupportedTasksForLangaugeWithError:(id)error error:(id *)a4;
- (id)copyInstalledQuasarModelPathForLanguage:(id)language error:(id *)error;
- (id)supportedLanguagesForVoiceControl;
- (int)_startDownloadForLanguage:(id)language;
- (void)_cancelDownloadForLanguageWithError:(id)error withError:(id *)withError;
- (void)_endAllDownloadsForLanguage:(id)language;
- (void)_resumeStalledDownloadForLanguage:(id)language;
- (void)_sendDownloadCallbackDictionaryWithLanguage:(id)language downloadPhase:(__CFString *)phase timeRemaining:(float)remaining bytesWritten:(float)written bytesTotal:(float)total error:(id)error;
- (void)_sendMessageToClient:(__CFDictionary *)client;
- (void)_stalledDownloadForLanguage:(id)language;
- (void)addPeerForCallback:(id)callback;
- (void)cancelDownloadForLanguage:(id)language error:(id *)error;
- (void)removePeerFromCallback:(id)callback;
- (void)setPurgeabilityForLanguages:(id)languages withPurgeability:(BOOL)purgeability error:(id *)error;
@end

@implementation RDAssetManager2

+ (id)sharedInstance
{
  if (qword_10010E548 != -1)
  {
    sub_1000C9384();
  }

  v3 = qword_10010E540;

  return v3;
}

- (RDAssetManager2)init
{
  v16.receiver = self;
  v16.super_class = RDAssetManager2;
  v2 = [(RDAssetManager2 *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.embeddedspeech.RDAssetManager2", 0);
    mainWorkQueue = v2->_mainWorkQueue;
    v2->_mainWorkQueue = v3;

    v5 = dispatch_queue_create("com.apple.embeddedspeech.RDAssetManager2.second", 0);
    secondWorkQueue = v2->_secondWorkQueue;
    v2->_secondWorkQueue = v5;

    v7 = +[NSMutableDictionary dictionary];
    downloadsStarted = v2->_downloadsStarted;
    v2->_downloadsStarted = v7;

    v9 = +[NSMutableDictionary dictionary];
    downloadsStalled = v2->_downloadsStalled;
    v2->_downloadsStalled = v9;

    v11 = +[NSMutableDictionary dictionary];
    downloadsEnded = v2->_downloadsEnded;
    v2->_downloadsEnded = v11;

    v13 = +[NSMutableArray array];
    peersRequestingDownloadProgress = v2->_peersRequestingDownloadProgress;
    v2->_peersRequestingDownloadProgress = v13;
  }

  return v2;
}

- (int)_startDownloadForLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy)
  {
    dispatch_assert_queue_V2(self->_mainWorkQueue);
    v5 = [(NSMutableDictionary *)self->_downloadsStarted objectForKeyedSubscript:languageCopy];
    v6 = [v5 intValue] + 1;

    v7 = [NSNumber numberWithInt:v6];
    [(NSMutableDictionary *)self->_downloadsStarted setObject:v7 forKeyedSubscript:languageCopy];

    v8 = [NSNumber numberWithInt:0];
    [(NSMutableDictionary *)self->_downloadsStalled setObject:v8 forKeyedSubscript:languageCopy];

    cachedInstallationStatus = self->_cachedInstallationStatus;
    self->_cachedInstallationStatus = 0;
  }

  else
  {
    v10 = RXOSLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "nil language", v12, 2u);
    }

    LODWORD(v6) = 0;
  }

  return v6;
}

- (void)_stalledDownloadForLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy)
  {
    dispatch_assert_queue_V2(self->_mainWorkQueue);
    v5 = [(NSMutableDictionary *)self->_downloadsStarted objectForKeyedSubscript:languageCopy];
    intValue = [v5 intValue];
    v7 = [(NSMutableDictionary *)self->_downloadsEnded objectForKeyedSubscript:languageCopy];
    v8 = intValue - [v7 intValue];

    v9 = [NSNumber numberWithInt:v8];
    [(NSMutableDictionary *)self->_downloadsStalled setObject:v9 forKeyedSubscript:languageCopy];

    cachedInstallationStatus = self->_cachedInstallationStatus;
    self->_cachedInstallationStatus = 0;
  }

  else
  {
    v11 = RXOSLog(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "nil language", v12, 2u);
    }
  }
}

- (void)_resumeStalledDownloadForLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy)
  {
    dispatch_assert_queue_V2(self->_mainWorkQueue);
    v5 = [NSNumber numberWithInt:0];
    [(NSMutableDictionary *)self->_downloadsStalled setObject:v5 forKeyedSubscript:languageCopy];

    cachedInstallationStatus = self->_cachedInstallationStatus;
    self->_cachedInstallationStatus = 0;
  }

  else
  {
    v7 = RXOSLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "nil language", v8, 2u);
    }
  }
}

- (void)_endAllDownloadsForLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy)
  {
    dispatch_assert_queue_V2(self->_mainWorkQueue);
    v5 = [(NSMutableDictionary *)self->_downloadsStarted objectForKeyedSubscript:languageCopy];
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 intValue]);
    [(NSMutableDictionary *)self->_downloadsEnded setObject:v6 forKeyedSubscript:languageCopy];

    v7 = [NSNumber numberWithInt:0];
    [(NSMutableDictionary *)self->_downloadsStalled setObject:v7 forKeyedSubscript:languageCopy];

    cachedInstallationStatus = self->_cachedInstallationStatus;
    self->_cachedInstallationStatus = 0;
  }

  else
  {
    v9 = RXOSLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "nil language", v10, 2u);
    }
  }
}

- (BOOL)_isDownloadingForLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy)
  {
    dispatch_assert_queue_V2(self->_mainWorkQueue);
    v5 = [(NSMutableDictionary *)self->_downloadsStarted objectForKeyedSubscript:languageCopy];
    intValue = [v5 intValue];
    v7 = [(NSMutableDictionary *)self->_downloadsEnded objectForKeyedSubscript:languageCopy];
    v8 = intValue > [v7 intValue];
  }

  else
  {
    v9 = RXOSLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "nil language", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_isDownloadingStalledForLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy)
  {
    dispatch_assert_queue_V2(self->_mainWorkQueue);
    v5 = [(NSMutableDictionary *)self->_downloadsStalled objectForKeyedSubscript:languageCopy];
    v6 = [v5 intValue] > 0;
  }

  else
  {
    v7 = RXOSLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "nil language", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_isActiveDownloadForLanguage:(id)language downloadId:(int)id
{
  languageCopy = language;
  if (!languageCopy)
  {
    v9 = RXOSLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "nil language", v11, 2u);
    }

    goto LABEL_7;
  }

  dispatch_assert_queue_V2(self->_mainWorkQueue);
  if (![(RDAssetManager2 *)self _isDownloadingForLanguage:languageCopy])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [(NSMutableDictionary *)self->_downloadsStarted objectForKeyedSubscript:languageCopy];
  v8 = [v7 intValue] == id;

LABEL_8:
  return v8;
}

- (id)_languagesWithDownloadAttempts
{
  dispatch_assert_queue_V2(self->_mainWorkQueue);
  downloadsStarted = self->_downloadsStarted;

  return [(NSMutableDictionary *)downloadsStarted allKeys];
}

- (id)copyInstallationStatusForLangaugesWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10003F370;
  v18 = sub_10003F380;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10003F370;
  v12 = sub_10003F380;
  v13 = 0;
  mainWorkQueue = self->_mainWorkQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F388;
  block[3] = &unk_1000FF4A8;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(mainWorkQueue, block);
  if (error)
  {
    *error = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5;
}

- (id)supportedLanguagesForVoiceControl
{
  v2 = dispatch_time(0, 10000000000);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003F370;
  v16 = sub_10003F380;
  v17 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003F60C;
  v9[3] = &unk_1000FF4D0;
  v11 = &v12;
  v3 = dispatch_semaphore_create(0);
  v10 = v3;
  [SFSpeechAssetManager supportedLanguagesForTaskHint:1005 completion:v9];
  v4 = dispatch_semaphore_wait(v3, v2);
  v5 = RXOSLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v13[5];
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "supportedLanguagesForVoiceControl = %@", buf, 0xCu);
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_queryAndCopyInstallationStatusForLanguagesWithError:(id *)error
{
  v4 = +[NSDate date];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5 - self->_lastInstallationStatusFetch;

  if (self->_cachedInstallationStatus)
  {
    v8 = v6 > 1.0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v14 = RXOSLog(v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v86 = 134217984;
      *&v86[4] = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Too early since last installation status fetch (%f sec ago). Returning cached copy.", v86, 0xCu);
    }

    v13 = [(NSMutableDictionary *)self->_cachedInstallationStatus copy];
    goto LABEL_40;
  }

  *v86 = 0;
  *&v86[8] = v86;
  *&v86[16] = 0x3032000000;
  v87 = sub_10003F370;
  v88 = sub_10003F380;
  v89 = 0;
  v9 = dispatch_time(0, 10000000000);
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_10003FE08;
  v76[3] = &unk_1000FF4F8;
  v78 = v86;
  v10 = dispatch_semaphore_create(0);
  v77 = v10;
  [SFSpeechAssetManager installedLanguagesWithCompletion:v76];
  v61 = v10;
  v11 = dispatch_semaphore_wait(v10, v9);
  if (v11)
  {
    v12 = RXOSLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Timed out waiting to get InstalledAssetLanguages. Returning cached copy.", buf, 2u);
    }

    v13 = [(NSMutableDictionary *)self->_cachedInstallationStatus copy];
    goto LABEL_39;
  }

  v13 = +[NSMutableDictionary dictionary];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v16 = *(*&v86[8] + 40);
  v17 = [v16 countByEnumeratingWithState:&v72 objects:v85 count:16];
  if (!v17)
  {
    goto LABEL_25;
  }

  v18 = *v73;
  do
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v73 != v18)
      {
        objc_enumerationMutation(v16);
      }

      v20 = *(*(&v72 + 1) + 8 * i);
      v21 = [(RDAssetManager2 *)self _assetPathForLanguage:v20 error:error];
      if ([v21 length])
      {
        v71 = 0;
        v22 = sub_10004274C(v21, &v71, @"DictationCC");
        v23 = v71;
        if (v22)
        {
          v24 = [NSString stringWithFormat:@"Version: %@", v23];
          [v13 setObject:v24 forKey:v20];

          goto LABEL_23;
        }
      }

      else
      {
        v23 = 0;
      }

      [v13 setObject:@"Not Supported" forKey:v20];
LABEL_23:
    }

    v17 = [v16 countByEnumeratingWithState:&v72 objects:v85 count:16];
  }

  while (v17);
LABEL_25:

  v26 = RXOSLog(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    _downloadStatusDescription = [(RDAssetManager2 *)self _downloadStatusDescription];
    v28 = *(*&v86[8] + 40);
    *buf = 138412546;
    v82 = _downloadStatusDescription;
    v83 = 2112;
    v84 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "querying, %@, installedAssetLanguages=%@", buf, 0x16u);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  _languagesWithDownloadAttempts = [(RDAssetManager2 *)self _languagesWithDownloadAttempts];
  v30 = [_languagesWithDownloadAttempts countByEnumeratingWithState:&v67 objects:v80 count:16];
  if (v30)
  {
    v31 = *v68;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v68 != v31)
        {
          objc_enumerationMutation(_languagesWithDownloadAttempts);
        }

        v33 = *(*(&v67 + 1) + 8 * j);
        v34 = [v13 objectForKey:v33];
        v35 = [v34 hasPrefix:@"Version:"];

        if ((v35 & 1) == 0)
        {
          v36 = [(RDAssetManager2 *)self _isDownloadingStalledForLanguage:v33];
          v37 = @"Stalled";
          if ((v36 & 1) != 0 || (v38 = [(RDAssetManager2 *)self _isDownloadingForLanguage:v33], v37 = @"Installing", v38))
          {
            [v13 setObject:v37 forKey:v33];
          }
        }
      }

      v30 = [_languagesWithDownloadAttempts countByEnumeratingWithState:&v67 objects:v80 count:16];
    }

    while (v30);
  }

  v39 = [v13 copy];
  cachedInstallationStatus = self->_cachedInstallationStatus;
  self->_cachedInstallationStatus = v39;

  v41 = +[NSDate date];
  [v41 timeIntervalSinceReferenceDate];
  self->_lastInstallationStatusFetch = v42;

LABEL_39:
  _Block_object_dispose(v86, 8);

LABEL_40:
  v43 = +[NSUserDefaults standardUserDefaults];
  v44 = [v43 stringArrayForKey:@"InstalledLanguages"];
  v45 = v44;
  v46 = &__NSArray0__struct;
  if (v44)
  {
    v46 = v44;
  }

  v47 = v46;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v48 = v47;
  v49 = [v48 countByEnumeratingWithState:&v63 objects:v79 count:16];
  if (v49)
  {
    v50 = 0;
    v51 = *v64;
    do
    {
      for (k = 0; k != v49; k = k + 1)
      {
        if (*v64 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v63 + 1) + 8 * k);
        v54 = [v13 objectForKey:v53];
        v55 = v54 == 0;

        if (v55)
        {
          if (!v50)
          {
            v50 = [v48 mutableCopy];
          }

          [v50 removeObject:v53];
        }
      }

      v49 = [v48 countByEnumeratingWithState:&v63 objects:v79 count:16];
    }

    while (v49);

    if (v50)
    {
      v57 = RXOSLog(v56);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = [v48 componentsJoinedByString:{@", "}];
        v59 = [v50 componentsJoinedByString:{@", "}];
        *v86 = 138412546;
        *&v86[4] = v58;
        *&v86[12] = 2112;
        *&v86[14] = v59;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Previously installed offline language(s) removed; installed list: [%@] -> [%@]", v86, 0x16u);
      }

      [v43 setObject:v50 forKey:@"InstalledLanguages"];
      [v43 synchronize];
    }
  }

  else
  {

    v50 = 0;
  }

  return v13;
}

- (id)copyInstalledAssetPropertiesForLangaugeWithError:(id)error error:(id *)a4
{
  errorCopy = error;
  if (!errorCopy)
  {
    v9 = RXOSLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "nil language", v13, 2u);
    }

    goto LABEL_10;
  }

  v7 = +[SFSpeechAssetManager installedLanguages];
  v8 = [v7 containsObject:errorCopy];

  if (!v8)
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v9 = [(RDAssetManager2 *)self _assetPathForLanguage:errorCopy error:a4];
  if (![v9 length]|| !sub_10004274C(v9, 0, @"DictationCC"))
  {
LABEL_10:

    goto LABEL_11;
  }

  v10 = objc_opt_new();
  [v10 setObject:v9 forKey:@"Asset Path"];
  v11 = +[NSMutableArray array];
  [v11 addObject:@"DictationCC"];
  if (sub_10004274C(v9, 0, @"SpellCC"))
  {
    [v11 addObject:@"SpellCC"];
  }

  [v10 setObject:v11 forKey:@"Asset Supported Tasks"];

LABEL_12:
  return v10;
}

- (id)copyInstalledAssetPathForLangaugeWithError:(id)error error:(id *)a4
{
  if (error)
  {
    v4 = [(RDAssetManager2 *)self copyInstalledAssetPropertiesForLangaugeWithError:error error:a4];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKey:@"Asset Path"];
      v7 = [v6 copy];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = RXOSLog(self);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "nil language", v10, 2u);
    }

    return 0;
  }

  return v7;
}

- (id)copyInstalledAssetSupportedTasksForLangaugeWithError:(id)error error:(id *)a4
{
  if (error)
  {
    v4 = [(RDAssetManager2 *)self copyInstalledAssetPropertiesForLangaugeWithError:error error:a4];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKey:@"Asset Supported Tasks"];
      v7 = [v6 copy];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = RXOSLog(self);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "nil language", v10, 2u);
    }

    return 0;
  }

  return v7;
}

- (void)cancelDownloadForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  if (languageCopy)
  {
    v7 = languageCopy;
    v8 = [languageCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = sub_10003F370;
    v18 = sub_10003F380;
    v19 = 0;
    mainWorkQueue = self->_mainWorkQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000402D0;
    block[3] = &unk_1000FF520;
    block[4] = self;
    v10 = v8;
    v12 = v10;
    v13 = buf;
    dispatch_sync(mainWorkQueue, block);
    if (error)
    {
      *error = *(v15 + 5);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = RXOSLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "nil language", buf, 2u);
    }
  }
}

- (void)_cancelDownloadForLanguageWithError:(id)error withError:(id *)withError
{
  errorCopy = error;
  v6 = RXOSLog(errorCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (errorCopy)
  {
    if (v7)
    {
      _downloadStatusDescription = [(RDAssetManager2 *)self _downloadStatusDescription];
      *buf = 138412546;
      v21 = errorCopy;
      v22 = 2112;
      v23 = _downloadStatusDescription;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cancelling asset, language=%@, %@", buf, 0x16u);
    }

    if ([(RDAssetManager2 *)self _isDownloadingForLanguage:errorCopy])
    {
      v9 = +[SFSpeechAssetManager installedLanguages];
      v10 = [v9 containsObject:errorCopy];

      if ((v10 & 1) == 0)
      {
        v19 = 0;
        [SFSpeechAssetManager purgeAssetsForLanguage:errorCopy error:&v19];
        v11 = v19;
        v12 = RXOSLog([(RDAssetManager2 *)self _endAllDownloadsForLanguage:errorCopy]);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          _downloadStatusDescription2 = [(RDAssetManager2 *)self _downloadStatusDescription];
          *buf = 138412802;
          v21 = errorCopy;
          v22 = 2112;
          v23 = v11;
          v24 = 2112;
          v25 = _downloadStatusDescription2;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cancelled asset, language=%@ error=%@ %@", buf, 0x20u);
        }
      }

      v14 = @"Cancelled";
      v15 = @"download cancelled successfully";
    }

    else
    {
      v14 = @"CancelFailed";
      v15 = @"was not downloading";
    }

    if ([(RDAssetManager2 *)self _sendCallback])
    {
      LODWORD(v16) = -1.0;
      LODWORD(v17) = -1.0;
      LODWORD(v18) = -1.0;
      [(RDAssetManager2 *)self _sendDownloadCallbackDictionaryWithLanguage:errorCopy downloadPhase:v14 timeRemaining:v15 bytesWritten:v16 bytesTotal:v17 error:v18];
    }

    CFRelease(v14);
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "nil language", buf, 2u);
    }
  }
}

- (void)setPurgeabilityForLanguages:(id)languages withPurgeability:(BOOL)purgeability error:(id *)error
{
  languagesCopy = languages;
  if (languagesCopy)
  {
    purgeabilityCopy = purgeability;
    errorCopy = error;
    v9 = objc_alloc_init(NSMutableSet);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = languagesCopy;
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v31 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v12);
    }

    *buf = 0;
    v26 = buf;
    v27 = 0x3032000000;
    v28 = sub_10003F370;
    v29 = sub_10003F380;
    v30 = 0;
    secondWorkQueue = self->_secondWorkQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000407FC;
    block[3] = &unk_1000FF548;
    v24 = purgeabilityCopy;
    v17 = v9;
    v21 = v17;
    v22 = v10;
    v23 = buf;
    dispatch_async(secondWorkQueue, block);
    if (errorCopy)
    {
      *errorCopy = *(v26 + 5);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = RXOSLog(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "nil language", buf, 2u);
    }
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
    v32 = sub_10003F370;
    v33 = sub_10003F380;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_10003F370;
    v27 = sub_10003F380;
    v28 = 0;
    mainWorkQueue = self->_mainWorkQueue;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100040BD4;
    v18 = &unk_1000FF570;
    v21 = buf;
    selfCopy = self;
    v10 = v8;
    v20 = v10;
    v22 = &v23;
    dispatch_sync(mainWorkQueue, &v15);
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

- (id)_installedAssetForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  dispatch_assert_queue_V2(self->_mainWorkQueue);
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

    v13 = [(RDAssetManager2 *)self _installedLocalAssetForLanguage:languageCopy error:error];
    v14 = [v13 length];
    v15 = [v12 containsObject:languageCopy];
    if (v14)
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
    }

    else
    {
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

      v23 = [(RDAssetManager2 *)self _startedUrgentDownloadingEmbeddedSpeechAssetForLanguage:languageCopy error:error];
      v19 = 0;
      if (error && v23)
      {
        [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:0];
        *error = v19 = 0;
      }
    }
  }

  else
  {
    v8 = RXOSLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Returning no installed asset for nil language", &v25, 2u);
    }

    v19 = 0;
  }

  return v19;
}

- (id)_assetPathForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  v6 = dispatch_time(0, 10000000000);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10003F370;
  v24 = sub_10003F380;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10003F370;
  v18 = sub_10003F380;
  v19 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100041180;
  v10[3] = &unk_1000FF5D8;
  v12 = &v14;
  v13 = &v20;
  v7 = dispatch_semaphore_create(0);
  v11 = v7;
  [SFSpeechAssetManager fetchAssetsForLanguage:languageCopy urgent:0 progress:&stru_1000FF5B0 completion:v10];
  dispatch_semaphore_wait(v7, v6);
  if (error)
  {
    *error = v15[5];
  }

  v8 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

- (id)_installedLocalAssetForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  dispatch_assert_queue_V2(self->_mainWorkQueue);
  if (languageCopy)
  {
    v8 = +[SFSpeechAssetManager installedLanguages];
    v9 = [v8 containsObject:languageCopy];

    if (v9)
    {
      v10 = [(RDAssetManager2 *)self _assetPathForLanguage:languageCopy error:error];
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = RXOSLog(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = languageCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found asset for %@: (%@)", &v17, 0x16u);
    }

    if (![v11 length] || (sub_10004274C(v11, 0, @"DictationCC") & 1) == 0)
    {

      v11 = 0;
    }

    if (![v11 length])
    {
      v14 = RXOSLog(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Starting a download because no compatible asset is installed", &v17, 2u);
      }

      v15 = [(RDAssetManager2 *)self _startedUrgentDownloadingEmbeddedSpeechAssetForLanguage:languageCopy error:error];
      if (error && v15)
      {
        *error = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:0];
      }
    }
  }

  else
  {
    v12 = RXOSLog(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "nil language", &v17, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)_startedUrgentDownloadingEmbeddedSpeechAssetForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  dispatch_assert_queue_V2(self->_mainWorkQueue);
  if (languageCopy)
  {
    v7 = [(RDAssetManager2 *)self _isDownloadingForLanguage:languageCopy];
    if (v7)
    {
      v8 = RXOSLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "Asset download is already in progress";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
      }
    }

    else
    {
      v10 = +[NSDate date];
      v11 = [(RDAssetManager2 *)self _startDownloadForLanguage:languageCopy];
      v12 = v11;
      v13 = RXOSLog(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        _downloadStatusDescription = [(RDAssetManager2 *)self _downloadStatusDescription];
        *buf = 138412802;
        v26 = languageCopy;
        v27 = 1024;
        v28 = v12;
        v29 = 2112;
        v30 = _downloadStatusDescription;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Downloading asset, language=%@ downloadId=%d %@", buf, 0x1Cu);
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10004170C;
      v20[3] = &unk_1000FF628;
      v20[4] = self;
      v21 = languageCopy;
      v22 = v10;
      v23 = v12;
      v24 = 1307470632;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100041AFC;
      v16[3] = &unk_1000FF678;
      v16[4] = self;
      v17 = v21;
      v18 = v12;
      v19 = 1307470632;
      v8 = v10;
      [SFSpeechAssetManager fetchAssetsForLanguage:v17 urgent:1 forceUpgrade:1 detailedProgress:v20 completion:v16];
    }
  }

  else
  {
    v8 = RXOSLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "nil language";
      goto LABEL_7;
    }
  }

  return languageCopy != 0;
}

- (void)addPeerForCallback:(id)callback
{
  callbackCopy = callback;
  v4 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v4);
  peersRequestingDownloadProgress = [(RDAssetManager2 *)self peersRequestingDownloadProgress];
  [peersRequestingDownloadProgress addObject:callbackCopy];

  objc_sync_exit(v4);
}

- (void)removePeerFromCallback:(id)callback
{
  callbackCopy = callback;
  v4 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v4);
  peersRequestingDownloadProgress = [(RDAssetManager2 *)self peersRequestingDownloadProgress];
  [peersRequestingDownloadProgress removeObject:callbackCopy];

  objc_sync_exit(v4);
}

- (BOOL)_sendCallback
{
  v3 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v3);
  peersRequestingDownloadProgress = [(RDAssetManager2 *)self peersRequestingDownloadProgress];
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

        [(RDAssetManager2 *)self _sendMessageToClient:v30];
        CFRelease(v30);
      }
    }

    CFRelease(v15);
    languageCopy = theString2;
  }
}

- (void)_sendMessageToClient:(__CFDictionary *)client
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
  peersRequestingDownloadProgress = [(RDAssetManager2 *)self peersRequestingDownloadProgress];
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

@end