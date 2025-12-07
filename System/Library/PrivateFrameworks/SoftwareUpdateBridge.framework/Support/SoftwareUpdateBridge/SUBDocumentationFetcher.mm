@interface SUBDocumentationFetcher
+ (id)_downloadOptionsWithServerParams:(id)params;
+ (int64_t)_requestDocCatalogDownload:(id)download;
- (SUBDocumentationFetcher)init;
- (id)_documentationQuery;
- (id)queryForDocAsset:(id)asset localOnly:(BOOL)only error:(id *)error;
- (void)_fetchDocumentationForDocumentationID:(id)d localOnly:(BOOL)only shouldOverrideURL:(BOOL)l overrideURL:(id)rL completion:(id)completion;
- (void)_invokeFetchCompletionsForDocumentationID:(id)d localOnly:(BOOL)only documentation:(id)documentation error:(id)error;
- (void)_purgeAssetsNotMatchingDescriptor:(id)descriptor completion:(id)completion;
- (void)fetchDocumentationForDescriptor:(id)descriptor localOnly:(BOOL)only shouldOverrideURL:(BOOL)l overrideURL:(id)rL completion:(id)completion;
- (void)purgeAssetsNotMatchingDescriptor:(id)descriptor completion:(id)completion;
@end

@implementation SUBDocumentationFetcher

- (SUBDocumentationFetcher)init
{
  v14.receiver = self;
  v14.super_class = SUBDocumentationFetcher;
  v2 = [(SUBDocumentationFetcher *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.subridged.SUBDocumentationFetcher.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.subridged.SUBDocumentationFetcher.callbackQueue", v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    v9 = objc_opt_new();
    localDocumentationFetchCompletions = v2->_localDocumentationFetchCompletions;
    v2->_localDocumentationFetchCompletions = v9;

    v11 = objc_opt_new();
    remoteDocumentationFetchCompletions = v2->_remoteDocumentationFetchCompletions;
    v2->_remoteDocumentationFetchCompletions = v11;
  }

  return v2;
}

- (id)_documentationQuery
{
  v2 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.WatchSoftwareUpdateDocumentation"];

  return v2;
}

- (void)_invokeFetchCompletionsForDocumentationID:(id)d localOnly:(BOOL)only documentation:(id)documentation error:(id)error
{
  onlyCopy = only;
  dCopy = d;
  documentationCopy = documentation;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if (!dCopy)
  {
    sub_100019AF8();
  }

  if (documentationCopy)
  {
    [(SUBDocumentationFetcher *)self setCachedDocumentationID:dCopy];
    [(SUBDocumentationFetcher *)self setCachedDocumentation:documentationCopy];
  }

  v13 = 40;
  if (onlyCopy)
  {
    v13 = 32;
  }

  v14 = *(&self->super.isa + v13);
  v15 = [v14 objectForKeyedSubscript:dCopy];
  [v14 setObject:0 forKeyedSubscript:dCopy];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        (*(*(*(&v21 + 1) + 8 * i) + 16))(*(*(&v21 + 1) + 8 * i));
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v18);
  }

  if (!onlyCopy)
  {
    [(SUBDocumentationFetcher *)self _invokeFetchCompletionsForDocumentationID:dCopy localOnly:1 documentation:documentationCopy error:errorCopy, v21];
  }
}

- (void)fetchDocumentationForDescriptor:(id)descriptor localOnly:(BOOL)only shouldOverrideURL:(BOOL)l overrideURL:(id)rL completion:(id)completion
{
  descriptorCopy = descriptor;
  rLCopy = rL;
  completionCopy = completion;
  dispatch_assert_queue_not_V2(self->_queue);
  documentationID = [descriptorCopy documentationID];
  if (!documentationID)
  {
    sub_100019B24();
  }

  v16 = documentationID;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C10C;
  block[3] = &unk_10002D358;
  block[4] = self;
  v22 = documentationID;
  onlyCopy = only;
  lCopy = l;
  v23 = rLCopy;
  v24 = completionCopy;
  v18 = rLCopy;
  v19 = completionCopy;
  v20 = v16;
  dispatch_async(queue, block);
}

+ (id)_downloadOptionsWithServerParams:(id)params
{
  paramsCopy = params;
  v4 = objc_opt_new();
  [v4 setTimeoutIntervalForResource:60];
  [v4 setAllowsCellularAccess:1];
  [v4 setDiscretionary:0];
  additionalServerParams = [v4 additionalServerParams];

  if (!additionalServerParams)
  {
    v6 = +[NSMutableDictionary dictionary];
    [v4 setAdditionalServerParams:v6];
  }

  if (paramsCopy)
  {
    additionalServerParams2 = [v4 additionalServerParams];
    [additionalServerParams2 addEntriesFromDictionary:paramsCopy];
  }

  return v4;
}

+ (int64_t)_requestDocCatalogDownload:(id)download
{
  downloadCopy = download;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 3;
  v4 = dispatch_semaphore_create(0);
  v5 = [SUBDocumentationFetcher _downloadOptionsWithServerParams:downloadCopy];
  v6 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = @"com.apple.MobileAsset.WatchSoftwareUpdateDocumentation";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : requesting %{public}@ catalog download", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C868;
  v11[3] = &unk_10002D380;
  v13 = &v14;
  v7 = v4;
  v12 = v7;
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.WatchSoftwareUpdateDocumentation" options:v5 then:v11];
  v8 = dispatch_time(0, 90000000000);
  dispatch_semaphore_wait(v7, v8);
  v9 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (id)queryForDocAsset:(id)asset localOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  assetCopy = asset;
  _documentationQuery = [(SUBDocumentationFetcher *)self _documentationQuery];
  v10 = SUBActiveNRDevice();
  v11 = v10;
  if (!v10)
  {
    v21 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Failed to query device property Device Class", buf, 2u);
    }

    v26 = SUBError(@"SUBError", 5, 0, @"Failed to query device property Device Class", v22, v23, v24, v25, v38);
    results = 0;
    v12 = 0;
    if (!error)
    {
      goto LABEL_20;
    }

LABEL_19:
    v34 = v26;
    *error = v26;
    goto LABEL_20;
  }

  v39 = onlyCopy;
  v12 = [v10 valueForProperty:NRDevicePropertyDeviceNameString];
  v13 = [NSMutableArray arrayWithObject:v12];
  v14 = [_documentationQuery addKeyValueArray:@"Device" with:v13];

  if (v14)
  {
    v15 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = @"Device";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : error setting filter for: %{public}@", buf, 0xCu);
    }

    v20 = @"Failed to set deviceClass query filter";
    goto LABEL_18;
  }

  v28 = [NSMutableArray arrayWithObject:assetCopy];
  v29 = [_documentationQuery addKeyValueArray:@"SUDocumentationID" with:v28];

  if (v29)
  {
    v30 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = @"SUDocumentationID";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : error setting filter for: %{public}@", buf, 0xCu);
    }

    v20 = @"Failed to set documentationID query filter";
    goto LABEL_18;
  }

  queryMetaDataSync = [_documentationQuery queryMetaDataSync];
  if (queryMetaDataSync)
  {
    v32 = queryMetaDataSync;
    v33 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v41 = v32;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : asset query failed: %{public}ld", buf, 0xCu);
    }

    v20 = @"asset query failed";
LABEL_18:
    v26 = SUBError(@"SUBError", 5, 0, v20, v16, v17, v18, v19, v38);
    [(SUBDocumentationFetcher *)self _invokeFetchCompletionsForDocumentationID:assetCopy localOnly:v39 documentation:0 error:v26];
    results = 0;
    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  results = [_documentationQuery results];
  v36 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v36;
    *buf = 134349056;
    v41 = [results count];
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : MobileAsset returned %{public}lu matching assets", buf, 0xCu);
  }

  v26 = 0;
  if (error)
  {
    goto LABEL_19;
  }

LABEL_20:

  return results;
}

- (void)_fetchDocumentationForDocumentationID:(id)d localOnly:(BOOL)only shouldOverrideURL:(BOOL)l overrideURL:(id)rL completion:(id)completion
{
  lCopy = l;
  onlyCopy = only;
  dCopy = d;
  rLCopy = rL;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  if (!dCopy)
  {
    sub_100019B7C();
  }

  if (!completionCopy)
  {
    sub_100019B50();
  }

  if (!onlyCopy)
  {
    if (!MGGetBoolAnswer() || lCopy || (keyExistsAndHasValidFormat[0] = 0, AppBooleanValue = CFPreferencesGetAppBooleanValue(@"DisableCustomerDocAssetURLOverride", @"com.apple.subridge", keyExistsAndHasValidFormat), keyExistsAndHasValidFormat[0]) && AppBooleanValue)
    {
      if (!lCopy)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = [NSURL URLWithString:@"https://mesu.apple.com/assets/"];

      rLCopy = v16;
    }

    v17 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *keyExistsAndHasValidFormat = 138543618;
      v71 = @"com.apple.MobileAsset.WatchSoftwareUpdateDocumentation";
      v72 = 2114;
      v73 = rLCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] :Overriding MobileAsset URL for (%{public}@) to: %{public}@", keyExistsAndHasValidFormat, 0x16u);
    }

    ASSetDefaultAssetServerURLForAssetType();
  }

LABEL_14:
  cachedDocumentationID = self->_cachedDocumentationID;
  if (!cachedDocumentationID || !self->_cachedDocumentation || ![(NSString *)cachedDocumentationID isEqual:dCopy])
  {
    v20 = 40;
    if (onlyCopy)
    {
      v20 = 32;
    }

    v21 = *(&self->super.isa + v20);
    v22 = [v21 objectForKeyedSubscript:dCopy];
    if ([v22 count])
    {
      v23 = [completionCopy copy];
      v24 = objc_retainBlock(v23);
      [v22 addObject:v24];
LABEL_58:

      goto LABEL_59;
    }

    if (!v22)
    {
      v22 = objc_opt_new();
      [v21 setObject:v22 forKeyedSubscript:dCopy];
    }

    v25 = [completionCopy copy];
    v26 = objc_retainBlock(v25);
    [v22 addObject:v26];

    v27 = SUBActiveNRDevice();
    v23 = v27;
    if (!v27)
    {
      v44 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *keyExistsAndHasValidFormat = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Failed to query device property Device Class", keyExistsAndHasValidFormat, 2u);
      }

      v24 = SUBError(@"SUBError", 5, 0, @"Failed to query device property Device Name", v45, v46, v47, v48, v57);
      (*(completionCopy + 2))(completionCopy, 0, v24);
      goto LABEL_58;
    }

    v24 = [v27 valueForProperty:NRDevicePropertyDeviceNameString];
    v28 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *keyExistsAndHasValidFormat = 138544130;
      v71 = @"SUDocumentationID";
      v72 = 2114;
      v73 = dCopy;
      v74 = 2114;
      v75 = @"Device";
      v76 = 2114;
      v77 = v24;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : looking for documentation matching \n%{public}@: %{public}@ \n%{public}@: %{public}@ \n", keyExistsAndHasValidFormat, 0x2Au);
    }

    if (!onlyCopy)
    {
LABEL_36:
      v69 = 0;
      v36 = [(SUBDocumentationFetcher *)self queryForDocAsset:dCopy localOnly:onlyCopy error:&v69];
      v63 = v69;
      v60 = v36;
      v61 = rLCopy;
      if ([v36 count])
      {
        v59 = [v36 objectAtIndexedSubscript:0];
        if (([v59 refreshState] & 1) == 0)
        {
          v37 = softwareupdatebridge_log;
          if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Failed to refresh documentation asset state..assuming previous state", keyExistsAndHasValidFormat, 2u);
          }
        }

        v38 = v59;
        if ([v59 state] == 2)
        {
          v39 = softwareupdatebridge_log;
          if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 0;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : found installed documentation asset", keyExistsAndHasValidFormat, 2u);
          }

          v38 = v59;
          v40 = [[SUBDocumentation alloc] initWithMAAsset:v59];
          selfCopy = self;
          v42 = v40;
          [(SUBDocumentationFetcher *)selfCopy _invokeFetchCompletionsForDocumentationID:dCopy localOnly:onlyCopy documentation:v40 error:0];
          v43 = v63;
        }

        else
        {
          [v59 attachProgressCallBack:&stru_10002D3C0];
          v54 = objc_alloc_init(MADownloadOptions);
          [(SUBDocumentation *)v54 setAllowsCellularAccess:1];
          [(SUBDocumentation *)v54 setDiscretionary:0];
          v58 = v54;
          [(SUBDocumentation *)v54 setTimeoutIntervalForResource:120];
          v55 = softwareupdatebridge_log;
          if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 138543362;
            v71 = @"com.apple.MobileAsset.WatchSoftwareUpdateDocumentation";
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Downloading %{public}@ asset", keyExistsAndHasValidFormat, 0xCu);
          }

          v64[0] = _NSConcreteStackBlock;
          v64[1] = 3221225472;
          v64[2] = sub_10000D874;
          v64[3] = &unk_10002D410;
          v64[4] = self;
          v65 = v59;
          v66 = dCopy;
          v68 = onlyCopy;
          v43 = v63;
          v67 = v63;
          v42 = v58;
          [v65 startDownload:v58 then:v64];
        }
      }

      else
      {
        v49 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          *keyExistsAndHasValidFormat = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Failed to find documentation asset", keyExistsAndHasValidFormat, 2u);
        }

        v43 = v63;
        v38 = SUBError(@"SUBError", 6, v63, @"Failed to find documentation asset", v50, v51, v52, v53, v57);
        [(SUBDocumentationFetcher *)self _invokeFetchCompletionsForDocumentationID:dCopy localOnly:onlyCopy documentation:0 error:v38];
      }

      rLCopy = v61;
      goto LABEL_58;
    }

    v57 = @"DeviceName";
    v29 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v24];
    v30 = [SUBDocumentationFetcher _requestDocCatalogDownload:v29];
    if (v30)
    {
      if (v30 == 18)
      {
        SUBError(@"SUBError", 6, 0, @"No documentation asset found for documentationID %@", v31, v32, v33, v34, dCopy);
      }

      else
      {
        if (v30 == 10)
        {
          goto LABEL_33;
        }

        SUBError(@"SUBError", 5, 0, @"Documentation asset query failed", v31, v32, v33, v34, @"DeviceName");
      }
      v56 = ;
      [(SUBDocumentationFetcher *)self _invokeFetchCompletionsForDocumentationID:dCopy localOnly:1 documentation:0 error:v56];

      goto LABEL_58;
    }

LABEL_33:
    v62 = v29;
    v35 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *keyExistsAndHasValidFormat = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Doc download successful or already installed", keyExistsAndHasValidFormat, 2u);
    }

    goto LABEL_36;
  }

  v19 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *keyExistsAndHasValidFormat = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Cached documentation is same as passed documentation id", keyExistsAndHasValidFormat, 2u);
  }

  (*(completionCopy + 2))(completionCopy, self->_cachedDocumentation, 0);
LABEL_59:
}

- (void)purgeAssetsNotMatchingDescriptor:(id)descriptor completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DBA8;
  block[3] = &unk_10002D460;
  block[4] = self;
  v12 = descriptorCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = descriptorCopy;
  dispatch_async(queue, block);
}

- (void)_purgeAssetsNotMatchingDescriptor:(id)descriptor completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  cachedDocumentationID = self->_cachedDocumentationID;
  if (cachedDocumentationID)
  {
    documentationID = [descriptorCopy documentationID];
    v10 = [(NSString *)cachedDocumentationID isEqualToString:documentationID];

    if ((v10 & 1) == 0)
    {
      [(SUBDocumentationFetcher *)self setCachedDocumentationID:0];
      [(SUBDocumentationFetcher *)self setCachedDocumentation:0];
    }
  }

  _documentationQuery = [(SUBDocumentationFetcher *)self _documentationQuery];
  [_documentationQuery returnTypes:2];
  queryMetaDataSync = [_documentationQuery queryMetaDataSync];
  if (queryMetaDataSync)
  {
    v13 = queryMetaDataSync;
    v14 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Failed to query for documenation assets when purging: %{public}ld", buf, 0xCu);
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    v28 = _documentationQuery;
    results = [_documentationQuery results];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = [results countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(results);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          attributes = [v20 attributes];
          v22 = [attributes objectForKey:@"SUDocumentationID"];

          if (!descriptorCopy || ([descriptorCopy documentationID], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", v22), v23, (v24 & 1) == 0))
          {
            state = [v20 state];
            if ((state - 2) >= 2)
            {
              if (state == 4)
              {
                v27 = softwareupdatebridge_log;
                if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v35 = v20;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : canceling documentation asset download: %{public}@", buf, 0xCu);
                }

                [v20 cancelDownload:&stru_10002D4A0];
              }
            }

            else
            {
              v26 = softwareupdatebridge_log;
              if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v35 = v20;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Purging documentation asset: %{public}@", buf, 0xCu);
              }

              [v20 purge:&stru_10002D4C0];
            }
          }
        }

        v17 = [results countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }

    completionCopy[2](completionCopy);

    _documentationQuery = v28;
  }
}

@end