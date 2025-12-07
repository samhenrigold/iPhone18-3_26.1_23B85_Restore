@interface LoadExternalDownloadManifestOperation
- (BOOL)_handlePublicResponseForOperation:(id)operation error:(id *)error;
- (BOOL)_runForPublicFormatWithURLRequest:(id)request error:(id *)error;
- (BOOL)_runForPurchaseFormatWithURLRequest:(id)request error:(id *)error;
- (BOOL)_showConfirmationPromptForManifest:(id)manifest response:(id)response;
- (BOOL)shouldHideUserPrompts;
- (ExternalDownloadManifest)manifest;
- (LoadExternalDownloadManifestOperation)initWithRequest:(id)request;
- (NSURLRequest)URLRequest;
- (SSDownloadManifestResponse)manifestResponse;
- (int64_t)manifestFormat;
- (void)_processValidDownloads:(id)downloads;
- (void)_showDialogForError:(id)error;
- (void)run;
- (void)setManifestFormat:(int64_t)format;
- (void)setShouldHideUserPrompts:(BOOL)prompts;
- (void)setURLRequest:(id)request;
@end

@implementation LoadExternalDownloadManifestOperation

- (LoadExternalDownloadManifestOperation)initWithRequest:(id)request
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = LoadExternalDownloadManifestOperation;
  v5 = [(LoadExternalDownloadManifestOperation *)&v10 init];
  if (v5)
  {
    v5->_manifestFormat = [requestCopy manifestFormat];
    v5->_shouldHideUserPrompts = [requestCopy shouldHideUserPrompts];
    uRLRequest = [requestCopy URLRequest];
    v7 = [uRLRequest copy];
    urlRequest = v5->_urlRequest;
    v5->_urlRequest = v7;
  }

  return v5;
}

- (ExternalDownloadManifest)manifest
{
  [(LoadExternalDownloadManifestOperation *)self lock];
  v3 = self->_manifest;
  [(LoadExternalDownloadManifestOperation *)self unlock];

  return v3;
}

- (int64_t)manifestFormat
{
  [(LoadExternalDownloadManifestOperation *)self lock];
  manifestFormat = self->_manifestFormat;
  [(LoadExternalDownloadManifestOperation *)self unlock];
  return manifestFormat;
}

- (SSDownloadManifestResponse)manifestResponse
{
  [(LoadExternalDownloadManifestOperation *)self lock];
  v3 = [(NSOrderedSet *)self->_downloadIDs copy];
  [(LoadExternalDownloadManifestOperation *)self unlock];
  if ([v3 count])
  {
    v4 = objc_alloc_init(NSMutableArray);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [SSDownload alloc];
          v12 = [v11 _initWithPersistentIdentifier:{objc_msgSend(v10, "longLongValue", v15)}];
          [v4 addObject:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v13 = objc_alloc_init(SSDownloadManifestResponse);
    [v13 setValidDownloads:v4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setManifestFormat:(int64_t)format
{
  [(LoadExternalDownloadManifestOperation *)self lock];
  self->_manifestFormat = format;

  [(LoadExternalDownloadManifestOperation *)self unlock];
}

- (void)setShouldHideUserPrompts:(BOOL)prompts
{
  [(LoadExternalDownloadManifestOperation *)self lock];
  self->_shouldHideUserPrompts = prompts;

  [(LoadExternalDownloadManifestOperation *)self unlock];
}

- (void)setURLRequest:(id)request
{
  requestCopy = request;
  [(LoadExternalDownloadManifestOperation *)self lock];
  if (self->_urlRequest != requestCopy)
  {
    v4 = [(NSURLRequest *)requestCopy copy];
    urlRequest = self->_urlRequest;
    self->_urlRequest = v4;
  }

  [(LoadExternalDownloadManifestOperation *)self unlock];
}

- (BOOL)shouldHideUserPrompts
{
  [(LoadExternalDownloadManifestOperation *)self lock];
  shouldHideUserPrompts = self->_shouldHideUserPrompts;
  [(LoadExternalDownloadManifestOperation *)self unlock];
  return shouldHideUserPrompts;
}

- (NSURLRequest)URLRequest
{
  [(LoadExternalDownloadManifestOperation *)self lock];
  v3 = self->_urlRequest;
  [(LoadExternalDownloadManifestOperation *)self unlock];

  return v3;
}

- (void)run
{
  uRLRequest = [(LoadExternalDownloadManifestOperation *)self URLRequest];
  v4 = [uRLRequest URL];

  v5 = +[SSLogConfig sharedDaemonConfig];
  v6 = v5;
  if (!v4)
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v39 = 138412290;
      v40 = objc_opt_class();
      v18 = v40;
      v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Invalid url request", &v39, 12);

      if (!v19)
      {
LABEL_29:

        v14 = [NSError errorWithDomain:ISErrorDomain code:3 userInfo:0];
        goto LABEL_46;
      }

      oSLogObject = [NSString stringWithCString:v19 encoding:4];
      free(v19);
      v33 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_29;
  }

  if (!v5)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog2;
  }

  oSLogObject2 = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  v10 = objc_opt_class();
  v11 = v10;
  v39 = 138412546;
  v40 = v10;
  v41 = 2048;
  manifestFormat = [(LoadExternalDownloadManifestOperation *)self manifestFormat];
  v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Running for manifest format: %ld", &v39, 22);

  if (v12)
  {
    oSLogObject2 = [NSString stringWithCString:v12 encoding:4];
    free(v12);
    v33 = oSLogObject2;
    SSFileLog();
LABEL_13:
  }

  if ([(LoadExternalDownloadManifestOperation *)self manifestFormat]== 1)
  {
    v38 = 0;
    v13 = [(LoadExternalDownloadManifestOperation *)self _runForPurchaseFormatWithURLRequest:uRLRequest error:&v38];
    v14 = v38;
    if ((v13 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_31:
    manifest = [(LoadExternalDownloadManifestOperation *)self manifest];
    validDownloads = [manifest validDownloads];
    if ([validDownloads count])
    {
      [(LoadExternalDownloadManifestOperation *)self _processValidDownloads:validDownloads];
    }

    v22 = +[SSLogConfig sharedDaemonConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v24 = shouldLog3 | 2;
    }

    else
    {
      v24 = shouldLog3;
    }

    oSLogObject3 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v26 = v24;
    }

    else
    {
      v26 = v24 & 2;
    }

    if (v26)
    {
      v27 = objc_opt_class();
      v35 = v27;
      v28 = [validDownloads count];
      invalidDownloads = [manifest invalidDownloads];
      v30 = [invalidDownloads count];
      v39 = 138412802;
      v40 = v27;
      v41 = 2048;
      manifestFormat = v28;
      v43 = 2048;
      v44 = v30;
      LODWORD(v34) = 32;
      v31 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Finished with %lu valid downloads, %lu invalid downloads", &v39, v34);

      if (!v31)
      {
LABEL_45:

        v32 = 1;
        goto LABEL_49;
      }

      oSLogObject3 = [NSString stringWithCString:v31 encoding:4];
      free(v31);
      v33 = oSLogObject3;
      SSFileLog();
    }

    goto LABEL_45;
  }

  v37 = 0;
  v20 = [(LoadExternalDownloadManifestOperation *)self _runForPublicFormatWithURLRequest:uRLRequest error:&v37];
  v14 = v37;
  if (v20)
  {
    goto LABEL_31;
  }

LABEL_46:
  if ((ISErrorIsEqual() & 1) == 0)
  {
    [(LoadExternalDownloadManifestOperation *)self _showDialogForError:v14];
  }

  v32 = 0;
LABEL_49:
  [(LoadExternalDownloadManifestOperation *)self setSuccess:v32, v33];
  [(LoadExternalDownloadManifestOperation *)self setError:v14];
}

- (BOOL)_handlePublicResponseForOperation:(id)operation error:(id *)error
{
  operationCopy = operation;
  v7 = [ExternalDownloadManifest alloc];
  dataProvider = [operationCopy dataProvider];
  output = [dataProvider output];
  v10 = [(ExternalDownloadManifest *)v7 initWithPropertyList:output];

  if (!v10)
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      LODWORD(v21) = shouldLog | 2;
    }

    else
    {
      LODWORD(v21) = shouldLog;
    }

    oSLogObject = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v21;
    }

    else
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v32 = 138412290;
      v33 = objc_opt_class();
      v23 = v33;
      v24 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not parse manifest data", &v32, 12);

      if (!v24)
      {
LABEL_20:

        v25 = [NSError errorWithDomain:SSErrorDomain code:200 userInfo:0];
        goto LABEL_34;
      }

      oSLogObject = [NSString stringWithCString:v24 encoding:4];
      free(v24);
      SSFileLog();
    }

    goto LABEL_20;
  }

  if (![(LoadExternalDownloadManifestOperation *)self shouldHideUserPrompts])
  {
    validDownloads = [(ExternalDownloadManifest *)v10 validDownloads];
    v12 = [validDownloads count];

    if (v12)
    {
      response = [operationCopy response];
      v14 = [(LoadExternalDownloadManifestOperation *)self _showConfirmationPromptForManifest:v10 response:response];

      if ((v14 & 1) == 0)
      {
        v26 = +[SSLogConfig sharedDaemonConfig];
        if (!v26)
        {
          v26 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v26 shouldLog];
        if ([v26 shouldLogToDisk])
        {
          LODWORD(v28) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v28) = shouldLog2;
        }

        oSLogObject2 = [v26 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v28;
        }

        else
        {
          v28 &= 2u;
        }

        if (v28)
        {
          v32 = 138412290;
          v33 = objc_opt_class();
          v30 = v33;
          v31 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: User cancelled manifest confirmation", &v32, 12);

          if (!v31)
          {
LABEL_33:

            v25 = SSError();
LABEL_34:
            v15 = v25;
            v16 = 0;
            if (!error)
            {
              goto LABEL_7;
            }

            goto LABEL_6;
          }

          oSLogObject2 = [NSString stringWithCString:v31 encoding:4];
          free(v31);
          SSFileLog();
        }

        goto LABEL_33;
      }
    }
  }

  [(LoadExternalDownloadManifestOperation *)self lock];
  objc_storeStrong(&self->_manifest, v10);
  [(LoadExternalDownloadManifestOperation *)self unlock];
  v15 = 0;
  v16 = 1;
  if (error)
  {
LABEL_6:
    v17 = v15;
    *error = v15;
  }

LABEL_7:

  return v16;
}

- (void)_processValidDownloads:(id)downloads
{
  downloadsCopy = downloads;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v9 = objc_opt_class();
    v10 = v9;
    v26 = 138412546;
    v27 = v9;
    v28 = 2048;
    v29 = [downloadsCopy count];
    v11 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Processing %lu downloads from an external manifest request", &v26, 22);

    if (!v11)
    {
      goto LABEL_13;
    }

    oSLogObject = [NSString stringWithCString:v11 encoding:4];
    free(v11);
    v21 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  v12 = [[NSMutableOrderedSet alloc] initWithCapacity:{objc_msgSend(downloadsCopy, "count")}];
  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(downloadsCopy, "count")}];
  v14 = +[DownloadsDatabase downloadsDatabase];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000FBB10;
  v22[3] = &unk_100328C60;
  v15 = downloadsCopy;
  v23 = v15;
  v16 = v12;
  v24 = v16;
  v17 = v13;
  v25 = v17;
  v18 = [v14 modifyUsingTransactionBlock:v22];

  if ([v16 count])
  {
    [(LoadExternalDownloadManifestOperation *)self lock];
    v19 = [v16 copy];
    downloadIDs = self->_downloadIDs;
    self->_downloadIDs = v19;

    [(LoadExternalDownloadManifestOperation *)self unlock];
  }

  if ([v17 count])
  {
    [AppStoreUtility sendSoftwareDownloads:v17 withReason:@"external manifest" manifestType:1];
  }
}

- (BOOL)_runForPublicFormatWithURLRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v7 = objc_alloc_init(ISURLOperation);
  [v7 _setUsesPrivateCookieStore:0];
  v8 = objc_alloc_init(DaemonProtocolDataProvider);
  [(DaemonProtocolDataProvider *)v8 setShouldProcessProtocol:0];
  [v7 setDataProvider:v8];
  v9 = [[SSMutableURLRequestProperties alloc] initWithURLRequest:requestCopy];
  [v9 setRequiresExtendedValidationCertificates:0];
  [v9 setRequiresHTTPS:1];
  [v9 setRequiresExternal:1];
  [v7 setRequestProperties:v9];
  v34 = 0;
  v10 = [(LoadExternalDownloadManifestOperation *)self runSubOperation:v7 returningError:&v34];
  v11 = v34;
  v12 = v11;
  if (v10)
  {
    v33 = v11;
    v13 = [(LoadExternalDownloadManifestOperation *)self _handlePublicResponseForOperation:v7 error:&v33];
    v14 = v12;
    v12 = v33;
    goto LABEL_28;
  }

  errorCopy = error;
  v15 = +[SSLogConfig sharedDaemonConfig];
  if (!v15)
  {
    v15 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v17 = shouldLog | 2;
  }

  else
  {
    v17 = shouldLog;
  }

  oSLogObject = [v15 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v17;
  }

  else
  {
    v19 = v17 & 2;
  }

  if (v19)
  {
    v20 = objc_opt_class();
    v35 = 138412546;
    v36 = v20;
    v37 = 2112;
    v38 = v12;
    v21 = v20;
    v22 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Request failed with error: %@", &v35, 22);

    if (!v22)
    {
      goto LABEL_15;
    }

    oSLogObject = [NSString stringWithCString:v22 encoding:4];
    free(v22);
    v30 = oSLogObject;
    SSFileLog();
  }

LABEL_15:
  if (!ISErrorIsEqual())
  {
    v13 = 0;
    error = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v14 = +[SSLogConfig sharedDaemonConfig];
  if (!v14)
  {
    v14 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v14 shouldLog];
  if ([v14 shouldLogToDisk])
  {
    shouldLog2 |= 2u;
  }

  oSLogObject2 = [v14 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v25 = shouldLog2;
  }

  else
  {
    v25 = shouldLog2 & 2;
  }

  if (!v25)
  {
    goto LABEL_26;
  }

  v26 = [requestCopy URL];
  v35 = 138412290;
  v36 = v26;
  LODWORD(v31) = 12;
  v27 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "[ERROR]: Cannot load non-https manifest URL: %@", &v35, v31);

  if (v27)
  {
    oSLogObject2 = [NSString stringWithCString:v27 encoding:4];
    free(v27);
    SSFileLog();
LABEL_26:
  }

  v13 = 0;
  error = errorCopy;
LABEL_28:

  if (error)
  {
LABEL_29:
    v28 = v12;
    *error = v12;
  }

LABEL_30:

  return v13;
}

- (BOOL)_runForPurchaseFormatWithURLRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v7 = [[SSMutableURLRequestProperties alloc] initWithURLRequest:requestCopy];
  v8 = [[LoadDownloadQueueOperation alloc] initWithRequestProperties:v7];
  [(LoadDownloadQueueOperation *)v8 setNeedsAuthentication:0];
  [(LoadDownloadQueueOperation *)v8 setReason:1];
  [(LoadDownloadQueueOperation *)v8 setRequestIdentifier:@"external"];
  v62 = 0;
  v9 = [(LoadExternalDownloadManifestOperation *)self runSubOperation:v8 returningError:&v62];
  v10 = v62;
  v11 = v10;
  if (v9)
  {
    v42 = v10;
    v43 = v9;
    v45 = v7;
    errorCopy = error;
    v47 = requestCopy;
    v12 = objc_alloc_init(NSMutableArray);
    v44 = v8;
    downloads = [(LoadDownloadQueueOperation *)v8 downloads];
    v14 = objc_alloc_init(NSMutableArray);
    v15 = objc_alloc_init(NSMutableOrderedSet);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v16 = downloads;
    v51 = v16;
    v53 = [v16 countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v53)
    {
      v52 = *v59;
      v49 = v14;
      v50 = v12;
      v48 = v15;
      do
      {
        for (i = 0; i != v53; i = i + 1)
        {
          if (*v59 != v52)
          {
            objc_enumerationMutation(v16);
          }

          v18 = *(*(&v58 + 1) + 8 * i);
          kind = [v18 kind];
          IsBookToShimKind = SSDownloadKindIsBookToShimKind();

          if (IsBookToShimKind)
          {
            [v14 addObject:v18];
            [v15 addObject:&off_10034BE80];
          }

          else
          {
            v21 = [[Download alloc] initWithStoreDownload:v18];
            v22 = v21;
            if (v21)
            {
              assets = [(Download *)v21 assets];
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              v24 = [assets countByEnumeratingWithState:&v54 objects:v63 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v55;
                do
                {
                  for (j = 0; j != v25; j = j + 1)
                  {
                    if (*v55 != v26)
                    {
                      objc_enumerationMutation(assets);
                    }

                    v28 = *(*(&v54 + 1) + 8 * j);
                    v29 = [NSNumber numberWithBool:1];
                    [v28 setValue:v29 forProperty:@"is_external"];
                  }

                  v25 = [assets countByEnumeratingWithState:&v54 objects:v63 count:16];
                }

                while (v25);
              }

              v12 = v50;
              [v50 addObject:v22];

              v16 = v51;
              v15 = v48;
              v14 = v49;
            }
          }
        }

        v53 = [v16 countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v53);
    }

    if ([v15 count])
    {
      [(LoadExternalDownloadManifestOperation *)self lock];
      v30 = [v15 copy];
      downloadIDs = self->_downloadIDs;
      self->_downloadIDs = v30;

      [(LoadExternalDownloadManifestOperation *)self unlock];
    }

    if ([v14 count])
    {
      [BookAssetDaemonUtility sendBookStoreDownloads:v14 withReason:@"external manifest"];
    }

    v32 = [[ExternalDownloadManifest alloc] initWithValidDownloads:v12 invalidDownloads:0];
    [(LoadExternalDownloadManifestOperation *)self lock];
    manifest = self->_manifest;
    self->_manifest = v32;

    [(LoadExternalDownloadManifestOperation *)self unlock];
    error = errorCopy;
    requestCopy = v47;
    v8 = v44;
    v7 = v45;
    v9 = v43;
    v11 = v42;
    goto LABEL_37;
  }

  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v34) = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    LODWORD(v34) = v34 | 2;
  }

  oSLogObject = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v34;
  }

  else
  {
    v34 &= 2u;
  }

  if (!v34)
  {
    v51 = oSLogObject;
LABEL_37:

    goto LABEL_38;
  }

  v36 = objc_opt_class();
  v65 = 138412546;
  v66 = v36;
  v67 = 2112;
  v68 = v11;
  v37 = v36;
  v38 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Request failed with error: %@", &v65, 22);

  if (v38)
  {
    v39 = [NSString stringWithCString:v38 encoding:4];
    free(v38);
    SSFileLog();
  }

LABEL_38:

  if (error)
  {
    v40 = v11;
    *error = v11;
  }

  return v9;
}

- (BOOL)_showConfirmationPromptForManifest:(id)manifest response:(id)response
{
  manifestCopy = manifest;
  v7 = [response URL];
  if (v7)
  {
    v8 = v7;
    goto LABEL_4;
  }

  uRLRequest = [(LoadExternalDownloadManifestOperation *)self URLRequest];
  v8 = [uRLRequest URL];

  if (v8)
  {
LABEL_4:
    host = [v8 host];
    if ([host length] >= 0x1F5)
    {
      v11 = [host substringToIndex:500];

      host = v11;
    }

    validDownloads = [manifestCopy validDownloads];
    v13 = [validDownloads count];
    v14 = v13;
    if (v13 < 2)
    {
      if (v13 != 1)
      {
        goto LABEL_20;
      }

      v16 = [validDownloads objectAtIndex:0];
      v17 = [v16 valueForProperty:@"title"];
      if ([v17 length])
      {
        if ([v17 length] >= 0x1F5)
        {
          v19 = [v17 substringToIndex:500];

          v17 = v19;
        }

        v20 = [NSString alloc];
        v21 = [NSBundle bundleForClass:objc_opt_class()];
        v22 = [v21 localizedStringForKey:@"CONFIRM_MANIFEST_DOWNLOAD_SPECIFIC_%@_%@" value:&stru_10033CC30 table:0];
        v23 = [v20 initWithFormat:v22, host, v17];
      }

      else
      {
        v25 = [NSString alloc];
        v21 = [NSBundle bundleForClass:objc_opt_class()];
        v22 = [v21 localizedStringForKey:@"CONFIRM_MANIFEST_DOWNLOAD_GENERIC_%@" value:&stru_10033CC30 table:0];
        v23 = [v25 initWithFormat:v22, host, v37];
      }

      v18 = v23;
    }

    else
    {
      v15 = [NSString alloc];
      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"CONFIRM_MANIFEST_DOWNLOADS_%@_%ld" value:&stru_10033CC30 table:0];
      v18 = [v15 initWithFormat:v17, host, v14];
    }

    if (v18)
    {
      v41 = validDownloads;
      v42 = manifestCopy;
      v40 = v18;
      v38 = [[ISDialog alloc] initWithTitle:v18 message:0];
      selfCopy = self;
      v26 = [NSBundle bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"CONFIRM_MANIFEST_CANCEL" value:&stru_10033CC30 table:0];
      v28 = [ISDialogButton buttonWithTitle:v27];
      v29 = [NSBundle bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"CONFIRM_MANIFEST_INSTALL" value:&stru_10033CC30 table:0];
      v31 = [ISDialogButton buttonWithTitle:v30];
      v32 = [NSArray arrayWithObjects:v28, v31, 0];

      [v38 setButtons:v32];
      v33 = objc_alloc_init(ISDialogOperation);
      [v33 setDialog:v38];
      if ([(LoadExternalDownloadManifestOperation *)selfCopy runSubOperation:v33 returningError:0])
      {
        selectedButton = [v33 selectedButton];
        if (selectedButton)
        {
          v24 = [v32 indexOfObjectIdenticalTo:selectedButton] == 1;
        }

        else
        {
          v24 = 0;
        }

        manifestCopy = v42;
        v35 = v40;
      }

      else
      {
        v24 = 0;
        manifestCopy = v42;
        v35 = v40;
      }

      validDownloads = v41;
      goto LABEL_25;
    }

LABEL_20:
    v24 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v24 = 0;
LABEL_26:

  return v24;
}

- (void)_showDialogForError:(id)error
{
  errorCopy = error;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 2;
  }

  if (v9)
  {
    v25 = 138412290;
    v26 = errorCopy;
    v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "Could not load download manifest with underlying error: %@", &v25, 12);

    if (!v10)
    {
      goto LABEL_13;
    }

    oSLogObject = [NSString stringWithCString:v10 encoding:4];
    free(v10);
    v24 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  uRLRequest = [(LoadExternalDownloadManifestOperation *)self URLRequest];
  v12 = [uRLRequest URL];

  if (v12)
  {
    host = [v12 host];
    if ([host length] >= 0x1F5)
    {
      v14 = [host substringToIndex:500];

      host = v14;
    }

    IsEqual = ISErrorIsEqual();
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = v16;
    if (IsEqual)
    {
      v18 = @"DOWNLOAD_MANIFEST_SSL_ERROR_%@";
    }

    else
    {
      v18 = @"DOWNLOAD_MANIFEST_ERROR_FORMAT_%@";
    }

    v19 = [v16 localizedStringForKey:v18 value:&stru_10033CC30 table:{0, v24}];
    v20 = [NSString stringWithFormat:v19, host];

    v21 = [[ISDialog alloc] initWithTitle:v20 message:0];
    v22 = +[ISOperationQueue mainQueue];
    v23 = [ISDialogOperation operationWithDialog:v21];
    [v22 addOperation:v23];
  }
}

@end