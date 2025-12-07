@interface DownloadArtworkCacheOperation
- (DownloadArtworkCacheOperation)initWithDownloadIdentifier:(int64_t)identifier thumbnailURL:(id)l;
- (DownloadArtworkCacheOperation)initWithStoreDownloadIdentifier:(int64_t)identifier thumbnailURL:(id)l;
- (NSData)artworkData;
- (void)_setArtworkData:(id)data;
- (void)dealloc;
- (void)run;
@end

@implementation DownloadArtworkCacheOperation

- (DownloadArtworkCacheOperation)initWithDownloadIdentifier:(int64_t)identifier thumbnailURL:(id)l
{
  v9.receiver = self;
  v9.super_class = DownloadArtworkCacheOperation;
  v6 = [(DownloadArtworkCacheOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_downloadID = identifier;
    v6->_thumbnailURL = [l copy];
  }

  return v7;
}

- (DownloadArtworkCacheOperation)initWithStoreDownloadIdentifier:(int64_t)identifier thumbnailURL:(id)l
{
  v9.receiver = self;
  v9.super_class = DownloadArtworkCacheOperation;
  v6 = [(DownloadArtworkCacheOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_downloadID = identifier;
    v6->_isStoreDownload = 1;
    v6->_thumbnailURL = [l copy];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadArtworkCacheOperation;
  [(DownloadArtworkCacheOperation *)&v3 dealloc];
}

- (NSData)artworkData
{
  [(DownloadArtworkCacheOperation *)self lock];
  v3 = self->_artworkData;
  [(DownloadArtworkCacheOperation *)self unlock];
  return v3;
}

- (void)run
{
  v36 = 0;
  v3 = [+[ScratchManager directoryPathForDownloadID:kind:createIfNeeded:](ScratchManager directoryPathForDownloadID:self->_downloadID kind:0 createIfNeeded:{1), "stringByAppendingPathComponent:", @"thumbnail"}];
  v4 = [[NSData alloc] initWithContentsOfFile:v3];
  if (!v4)
  {
    if (self->_thumbnailURL)
    {
      v15 = +[SSLogConfig sharedDaemonConfig];
      if (!v15)
      {
        v15 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v15 shouldLog];
      if ([v15 shouldLogToDisk])
      {
        LODWORD(v17) = shouldLog | 2;
      }

      else
      {
        LODWORD(v17) = shouldLog;
      }

      oSLogObject = [v15 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v17 = v17;
      }

      else
      {
        v17 &= 2u;
      }

      if (v17)
      {
        v19 = objc_opt_class();
        thumbnailURL = self->_thumbnailURL;
        v37 = 138412546;
        v38 = v19;
        v39 = 2112;
        v40 = thumbnailURL;
        v21 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Loading thumbnail from URL: %@", &v37, 22);
        if (v21)
        {
          v22 = v21;
          v23 = [NSString stringWithCString:v21 encoding:4];
          free(v22);
          v34 = v23;
          SSFileLog();
        }
      }

      if ([(NSString *)[(NSURL *)self->_thumbnailURL scheme] caseInsensitiveCompare:@"file"])
      {
        v24 = [[SSMutableURLRequestProperties alloc] initWithURL:self->_thumbnailURL];
        isStoreDownload = self->_isStoreDownload;
        if (isStoreDownload)
        {
          v26 = objc_alloc_init(ISStoreURLOperation);
          [v26 setUrlKnownToBeTrusted:1];
        }

        else
        {
          v26 = objc_alloc_init(ISURLOperation);
          [v26 _setUsesPrivateCookieStore:0];
        }

        [v24 setITunesStoreRequest:isStoreDownload];
        [v26 setDataProvider:{+[ISDataProvider provider](ISDataProvider, "provider")}];
        [v26 setRequestProperties:v24];
        if ([(DownloadArtworkCacheOperation *)self runSubOperation:v26 returningError:&v36])
        {
          v5 = [objc_msgSend(v26 "dataProvider")];
          [v5 writeToFile:v3 options:1 error:0];
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_46;
      }

      v5 = [[NSData alloc] initWithContentsOfURL:self->_thumbnailURL options:0 error:&v36];
      if (v5)
      {
        goto LABEL_46;
      }

      v27 = +[SSLogConfig sharedDaemonConfig];
      if (!v27)
      {
        v27 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v27 shouldLog];
      if ([v27 shouldLogToDisk])
      {
        LODWORD(v29) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v29) = shouldLog2;
      }

      oSLogObject2 = [v27 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v29;
      }

      else
      {
        v29 &= 2u;
      }

      if (v29)
      {
        v31 = objc_opt_class();
        v32 = self->_thumbnailURL;
        v37 = 138412802;
        v38 = v31;
        v39 = 2112;
        v40 = v32;
        v41 = 2112;
        v42 = v36;
        LODWORD(v35) = 32;
        v5 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Could not load artwork file: %@: %@", &v37, v35);
        if (!v5)
        {
          goto LABEL_46;
        }

        v33 = [NSString stringWithCString:v5 encoding:4];
        free(v5);
        v34 = v33;
        SSFileLog();
      }
    }

    v5 = 0;
    goto LABEL_46;
  }

  v5 = v4;
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog3;
  }

  oSLogObject3 = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    downloadID = self->_downloadID;
    v37 = 138412546;
    v38 = v10;
    v39 = 2048;
    v40 = downloadID;
    v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Using cached thumbnail for download: %lld", &v37, 22);
    if (v12)
    {
      v13 = v12;
      v14 = [NSString stringWithCString:v12 encoding:4];
      free(v13);
      v34 = v14;
      SSFileLog();
    }
  }

LABEL_46:
  [(DownloadArtworkCacheOperation *)self _setArtworkData:v5, v34];

  [(DownloadArtworkCacheOperation *)self setError:v36];
  [(DownloadArtworkCacheOperation *)self setSuccess:v5 != 0];
}

- (void)_setArtworkData:(id)data
{
  [(DownloadArtworkCacheOperation *)self lock];
  artworkData = self->_artworkData;
  if (artworkData != data)
  {

    self->_artworkData = data;
  }

  [(DownloadArtworkCacheOperation *)self unlock];
}

@end