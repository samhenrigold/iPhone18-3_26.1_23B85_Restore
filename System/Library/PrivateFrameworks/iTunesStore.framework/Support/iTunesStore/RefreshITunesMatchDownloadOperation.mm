@interface RefreshITunesMatchDownloadOperation
- (BOOL)_applyResultsOfOperation:(id)operation toDownload:(id)download error:(id *)error;
- (BOOL)_refreshDownload:(id)download error:(id *)error;
- (RefreshITunesMatchDownloadOperation)initWithDownloadIdentifier:(int64_t)identifier;
- (id)_newPurchaseForDownload:(id)download;
- (void)run;
@end

@implementation RefreshITunesMatchDownloadOperation

- (RefreshITunesMatchDownloadOperation)initWithDownloadIdentifier:(int64_t)identifier
{
  v5.receiver = self;
  v5.super_class = RefreshITunesMatchDownloadOperation;
  result = [(RefreshITunesMatchDownloadOperation *)&v5 init];
  if (result)
  {
    result->_downloadID = identifier;
  }

  return result;
}

- (void)run
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1002122DC;
  v10 = sub_1002122EC;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002122F8;
  v5[3] = &unk_10032C558;
  v5[4] = self;
  v5[5] = &v6;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
  v4 = 0;
  v3 = [(RefreshITunesMatchDownloadOperation *)self _refreshDownload:v7[5] error:&v4];
  [(RefreshITunesMatchDownloadOperation *)self setError:v4];
  [(RefreshITunesMatchDownloadOperation *)self setSuccess:v3];

  _Block_object_dispose(&v6, 8);
}

- (BOOL)_applyResultsOfOperation:(id)operation toDownload:(id)download error:(id *)error
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v7 = -[StoreDownloadQueueResponse initWithDictionary:userIdentifier:preferredAssetFlavor:]([StoreDownloadQueueResponse alloc], "initWithDictionary:userIdentifier:preferredAssetFlavor:", [operation rawOutput], objc_msgSend(download, "valueForProperty:", @"store_account_id"), objc_msgSend(download, "valueForProperty:", @"preferred_asset_flavor"));
  downloads = [(StoreDownloadQueueResponse *)v7 downloads];
  if ([(NSOrderedSet *)downloads count]== 1)
  {
    v9 = [[Download alloc] initWithStoreDownload:[(NSOrderedSet *)downloads objectAtIndex:0]];
    if (v9)
    {
      v10 = +[SSLogConfig sharedDaemonConfig];
      if (!v10)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v11) = [v10 shouldLog];
      shouldLogToDisk = [v10 shouldLogToDisk];
      oSLogObject = [v10 OSLogObject];
      v14 = oSLogObject;
      if (shouldLogToDisk)
      {
        LODWORD(v11) = v11 | 2;
      }

      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v11;
      }

      else
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v15 = objc_opt_class();
        downloadID = self->_downloadID;
        v17 = [(Download *)v9 valueForProperty:@"store_download_key"];
        v40 = 138412802;
        v41 = v15;
        v42 = 2048;
        v43 = downloadID;
        v44 = 2112;
        v45 = v17;
        v18 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v14, 0, "%@: Reloaded download: %lld, with download key: %@", &v40, 32);
        if (v18)
        {
          v19 = v18;
          v20 = [NSString stringWithCString:v18 encoding:4];
          free(v19);
          v34 = v20;
          SSFileLog();
        }
      }

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10021286C;
      v35[3] = &unk_10032C580;
      v35[5] = v9;
      v35[6] = &v36;
      v35[4] = self;
      [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
    }
  }

  else
  {
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v22) = [v21 shouldLog];
    shouldLogToDisk2 = [v21 shouldLogToDisk];
    oSLogObject2 = [v21 OSLogObject];
    v25 = oSLogObject2;
    if (shouldLogToDisk2)
    {
      LODWORD(v22) = v22 | 2;
    }

    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v22;
    }

    else
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v26 = objc_opt_class();
      v27 = self->_downloadID;
      v28 = [(NSOrderedSet *)downloads count];
      v40 = 138412802;
      v41 = v26;
      v42 = 2048;
      v43 = v27;
      v44 = 2048;
      v45 = v28;
      v29 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, v25, 0, "%@: Could not refresh download: %lld, incorrect count: %lu", &v40, 32);
      if (v29)
      {
        v30 = v29;
        [NSString stringWithCString:v29 encoding:4];
        free(v30);
        SSFileLog();
      }
    }
  }

  v31 = v37;
  v32 = *(v37 + 24);
  if (error && (v37[3] & 1) == 0)
  {
    *error = 0;
    v32 = *(v31 + 24);
  }

  _Block_object_dispose(&v36, 8);
  return v32 & 1;
}

- (id)_newPurchaseForDownload:(id)download
{
  v4 = [download valueForProperty:@"store_account_id"];
  v5 = [download valueForProperty:@"store_redownload_parameters"];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = objc_alloc_init(SSPurchase);
  [v8 setAccountIdentifier:v4];
  [v8 setBuyParameters:v7];
  [v8 setIgnoresForcedPasswordRestriction:1];
  v9 = objc_alloc_init(SSMutableURLRequestProperties);
  [v9 setURLBagKey:@"paidRedownloadProduct"];
  [v8 setRequestProperties:v9];

  return v8;
}

- (BOOL)_refreshDownload:(id)download error:(id *)error
{
  v22 = 0;
  v7 = [(RefreshITunesMatchDownloadOperation *)self _newPurchaseForDownload:?];
  if (!v7)
  {
    v19 = 0;
    if (!error)
    {
      return v19;
    }

    goto LABEL_19;
  }

  v8 = v7;
  v9 = [[PurchaseOperation alloc] initWithPurchase:v7];
  [(PurchaseOperation *)v9 setShouldSendKeyBagSyncData:1];
  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    LODWORD(v12) = shouldLog | 2;
  }

  else
  {
    LODWORD(v12) = shouldLog;
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v12 = v12;
  }

  else
  {
    v12 &= 2u;
  }

  if (v12)
  {
    v14 = objc_opt_class();
    downloadID = self->_downloadID;
    v23 = 138412802;
    v24 = v14;
    v25 = 2048;
    v26 = downloadID;
    v27 = 2112;
    buyParameters = [v8 buyParameters];
    v16 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Reloading iTunes Match download: %lld / %@", &v23, 32);
    if (v16)
    {
      v17 = v16;
      v18 = [NSString stringWithCString:v16 encoding:4];
      free(v17);
      v21 = v18;
      SSFileLog();
    }
  }

  if ([(RefreshITunesMatchDownloadOperation *)self runSubOperation:v9 returningError:&v22, v21])
  {
    v19 = [(RefreshITunesMatchDownloadOperation *)self _applyResultsOfOperation:v9 toDownload:download error:&v22];
  }

  else
  {
    v19 = 0;
  }

  if (error)
  {
LABEL_19:
    if (!v19)
    {
      *error = v22;
    }
  }

  return v19;
}

@end