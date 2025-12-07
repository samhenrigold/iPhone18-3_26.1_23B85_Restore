@interface RefreshStoreQueueDownloadOperation
- (BOOL)_refreshDownload:(id)download error:(id *)error;
- (RefreshStoreQueueDownloadOperation)initWithDownloadIdentifier:(int64_t)identifier;
- (id)_URLBagKeyForDownload:(id)download;
- (void)run;
@end

@implementation RefreshStoreQueueDownloadOperation

- (RefreshStoreQueueDownloadOperation)initWithDownloadIdentifier:(int64_t)identifier
{
  v5.receiver = self;
  v5.super_class = RefreshStoreQueueDownloadOperation;
  result = [(RefreshStoreQueueDownloadOperation *)&v5 init];
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
  v9 = sub_100210750;
  v10 = sub_100210760;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10021076C;
  v5[3] = &unk_10032C558;
  v5[4] = self;
  v5[5] = &v6;
  [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
  v4 = 0;
  v3 = [(RefreshStoreQueueDownloadOperation *)self _refreshDownload:v7[5] error:&v4];
  [(RefreshStoreQueueDownloadOperation *)self setError:v4];
  [(RefreshStoreQueueDownloadOperation *)self setSuccess:v3];

  _Block_object_dispose(&v6, 8);
}

- (BOOL)_refreshDownload:(id)download error:(id *)error
{
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v57 = 0;
  v7 = [download valueForProperty:@"store_account_id"];
  v8 = [(RefreshStoreQueueDownloadOperation *)self _URLBagKeyForDownload:download];
  v9 = [download valueForProperty:@"store_transaction_id"];
  v10 = v9;
  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && v9 != 0)
  {
    v13 = objc_alloc_init(SSMutableURLRequestProperties);
    [v13 setURLBagKey:v8];
    [v13 setValue:v10 forRequestParameter:@"endId"];
    [v13 setValue:v10 forRequestParameter:@"startId"];
    v14 = [[LoadDownloadQueueOperation alloc] initWithRequestProperties:v13];
    [(LoadDownloadQueueOperation *)v14 setAccountIdentifier:v7];
    [(LoadDownloadQueueOperation *)v14 setNeedsAuthentication:0];
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v16) = [v15 shouldLog];
    shouldLogToDisk = [v15 shouldLogToDisk];
    oSLogObject = [v15 OSLogObject];
    v19 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v16) = v16 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v20 = objc_opt_class();
      downloadID = self->_downloadID;
      v62 = 138412802;
      v63 = v20;
      v64 = 2048;
      v65 = downloadID;
      v66 = 2112;
      v67 = v10;
      v22 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, v19, 1, "%@: Refreshing download: %lld / %@", &v62, 32);
      if (v22)
      {
        v23 = v22;
        v24 = [NSString stringWithCString:v22 encoding:4];
        free(v23);
        v51 = v24;
        SSFileLog();
      }
    }

    v25 = [(RefreshStoreQueueDownloadOperation *)self runSubOperation:v14 returningError:&v57, v51];
    *(v59 + 24) = v25;
    if (v25)
    {
      downloads = [(LoadDownloadQueueOperation *)v14 downloads];
      if ([(NSOrderedSet *)downloads count]== 1)
      {
        v27 = [[Download alloc] initWithStoreDownload:[(NSOrderedSet *)downloads objectAtIndex:0]];
        if (v27)
        {
          v28 = +[SSLogConfig sharedDaemonConfig];
          if (!v28)
          {
            v28 = +[SSLogConfig sharedConfig];
          }

          LODWORD(v29) = [v28 shouldLog];
          shouldLogToDisk2 = [v28 shouldLogToDisk];
          oSLogObject2 = [v28 OSLogObject];
          v32 = oSLogObject2;
          if (shouldLogToDisk2)
          {
            LODWORD(v29) = v29 | 2;
          }

          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
          {
            v29 = v29;
          }

          else
          {
            v29 &= 2u;
          }

          if (v29)
          {
            v55 = objc_opt_class();
            v54 = self->_downloadID;
            v33 = [download valueForProperty:@"store_download_key"];
            v34 = [(Download *)v27 valueForProperty:@"store_download_key"];
            v62 = 138413058;
            v63 = v55;
            v64 = 2048;
            v65 = v54;
            v66 = 2112;
            v67 = v33;
            v68 = 2112;
            v69 = v34;
            LODWORD(v53) = 42;
            v35 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, v32, 1, "%@: Refreshed download: %lld, changed download key from: %@ to: %@", &v62, v53);
            if (v35)
            {
              v36 = v35;
              v37 = [NSString stringWithCString:v35 encoding:4];
              free(v36);
              v52 = v37;
              SSFileLog();
            }
          }

          v56[0] = _NSConcreteStackBlock;
          v56[1] = 3221225472;
          v56[2] = sub_100210ED8;
          v56[3] = &unk_10032C580;
          v56[5] = v27;
          v56[6] = &v58;
          v56[4] = self;
          [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
        }
      }

      else
      {
        v38 = +[SSLogConfig sharedDaemonConfig];
        if (!v38)
        {
          v38 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v39) = [v38 shouldLog];
        shouldLogToDisk3 = [v38 shouldLogToDisk];
        oSLogObject3 = [v38 OSLogObject];
        v42 = oSLogObject3;
        if (shouldLogToDisk3)
        {
          LODWORD(v39) = v39 | 2;
        }

        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          v39 = v39;
        }

        else
        {
          v39 &= 2u;
        }

        if (v39)
        {
          v43 = objc_opt_class();
          v44 = [(NSOrderedSet *)downloads count];
          v45 = self->_downloadID;
          v62 = 138412802;
          v63 = v43;
          v64 = 2048;
          v65 = v44;
          v66 = 2048;
          v67 = v45;
          LODWORD(v53) = 32;
          v46 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, v42, 0, "%@: Unexpected download count: %lu when refreshing download: %lld", &v62, v53);
          if (v46)
          {
            v47 = v46;
            [NSString stringWithCString:v46 encoding:4];
            free(v47);
            SSFileLog();
          }
        }

        *(v59 + 24) = 0;
      }
    }
  }

  v48 = v59;
  v49 = *(v59 + 24);
  if (error && (v59[3] & 1) == 0)
  {
    *error = v57;
    v49 = *(v48 + 24);
  }

  _Block_object_dispose(&v58, 8);
  return v49 & 1;
}

- (id)_URLBagKeyForDownload:(id)download
{
  v4 = objc_alloc_init(StoreDownloadQueueRequest);
  -[StoreDownloadQueueRequest setQueueIdentifier:](v4, "setQueueIdentifier:", sub_10012E754([download valueForProperty:@"kind"]));
  queueContentsURLBagKey = [(StoreDownloadQueueRequest *)v4 queueContentsURLBagKey];

  return queueContentsURLBagKey;
}

@end