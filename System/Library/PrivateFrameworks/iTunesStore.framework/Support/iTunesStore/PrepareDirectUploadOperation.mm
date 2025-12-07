@interface PrepareDirectUploadOperation
- (PrepareDirectUploadOperation)initWithRequest:(id)request;
- (id)_newURLRequestWithURL:(id)l;
- (id)_uploadURL;
- (id)outputBlock;
- (void)run;
- (void)setOutputBlock:(id)block;
@end

@implementation PrepareDirectUploadOperation

- (PrepareDirectUploadOperation)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = PrepareDirectUploadOperation;
  v6 = [(PrepareDirectUploadOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
  }

  return v7;
}

- (id)outputBlock
{
  [(PrepareDirectUploadOperation *)self lock];
  v3 = [self->_outputBlock copy];
  [(PrepareDirectUploadOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  [(PrepareDirectUploadOperation *)self lock];
  if (self->_outputBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(PrepareDirectUploadOperation *)self unlock];
}

- (void)run
{
  localAssetURL = [(DirectUploadRequest *)self->_request localAssetURL];
  v4 = objc_alloc_init(NSFileManager);
  if (!localAssetURL)
  {
    goto LABEL_49;
  }

  if ([localAssetURL isFileURL])
  {
    path = [localAssetURL path];
    v6 = [v4 isReadableFileAtPath:path];

    if ((v6 & 1) == 0)
    {
      v19 = +[SSLogConfig sharedDaemonConfig];
      if (!v19)
      {
        v19 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v27) = [v19 shouldLog];
      shouldLogToDisk = [v19 shouldLogToDisk];
      oSLogObject = [v19 OSLogObject];
      v30 = oSLogObject;
      if (shouldLogToDisk)
      {
        LODWORD(v27) = v27 | 2;
      }

      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v27;
      }

      else
      {
        v27 &= 2u;
      }

      if (!v27)
      {

        goto LABEL_48;
      }

      v31 = objc_opt_class();
      databaseIdentifier = [(DirectUploadRequest *)self->_request databaseIdentifier];
      v41 = 138412802;
      v42 = v31;
      v43 = 2048;
      v44 = databaseIdentifier;
      v45 = 2112;
      v46 = localAssetURL;
      v26 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, v30, 0, "%@: File not readable for upload: %lld, URL: %@", &v41, 32);

      if (v26)
      {
        goto LABEL_36;
      }

      goto LABEL_48;
    }
  }

  accountIdentifier = [(DirectUploadRequest *)self->_request accountIdentifier];

  if (!accountIdentifier)
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v20) = [v19 shouldLog];
    shouldLogToDisk2 = [v19 shouldLogToDisk];
    oSLogObject2 = [v19 OSLogObject];
    v23 = oSLogObject2;
    if (shouldLogToDisk2)
    {
      LODWORD(v20) = v20 | 2;
    }

    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (!v20)
    {

      goto LABEL_48;
    }

    v24 = objc_opt_class();
    databaseIdentifier2 = [(DirectUploadRequest *)self->_request databaseIdentifier];
    v41 = 138412546;
    v42 = v24;
    v43 = 2048;
    v44 = databaseIdentifier2;
    v26 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v23, 0, "%@: Missing account for upload: %lld", &v41, 22);

    if (v26)
    {
LABEL_36:
      v33 = [NSString stringWithCString:v26 encoding:4];
      free(v26);
      SSFileLog();
    }

LABEL_48:

LABEL_49:
    v34 = SSError();
    v35 = 0;
    v36 = 0;
    goto LABEL_50;
  }

  _uploadURL = [(PrepareDirectUploadOperation *)self _uploadURL];
  if (_uploadURL)
  {
    v9 = [[NSMutableString alloc] initWithString:@"com.apple.itunesstored"];
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v11) = [v10 shouldLog];
    shouldLogToDisk3 = [v10 shouldLogToDisk];
    oSLogObject3 = [v10 OSLogObject];
    v14 = oSLogObject3;
    if (shouldLogToDisk3)
    {
      LODWORD(v11) = v11 | 2;
    }

    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
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
      databaseIdentifier3 = [(DirectUploadRequest *)self->_request databaseIdentifier];
      v41 = 138412802;
      v42 = v15;
      v43 = 2048;
      v44 = databaseIdentifier3;
      v45 = 2112;
      v46 = _uploadURL;
      v17 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v14, 1, "%@: Preparing upload: %lld with request URL: %@", &v41, 32);

      if (v17)
      {
        v18 = [NSString stringWithCString:v17 encoding:4];
        free(v17);
        v40 = v18;
        SSFileLog();
      }
    }

    else
    {
    }

    v35 = [(PrepareDirectUploadOperation *)self _newURLRequestWithURL:_uploadURL];
    sourceApplication = [(DirectUploadRequest *)self->_request sourceApplication];
    if (sourceApplication)
    {
      [v9 appendString:@"."];
      [v9 appendString:sourceApplication];
    }

    if ([v35 allowsCellularAccess])
    {
      [v9 appendString:@".cell"];
    }

    v36 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:v9];
    [v36 setAllowsCellularAccess:{objc_msgSend(v35, "allowsCellularAccess")}];
    [v36 setHTTPCookieAcceptPolicy:1];
    [v36 setHTTPShouldSetCookies:0];
    [v36 setHTTPShouldUsePipelining:1];
    [v36 setSessionSendsLaunchEvents:1];
    [v36 set_allowsRetryForBackgroundDataTasks:1];
    [v36 set_sourceApplicationBundleIdentifier:sourceApplication];

    v34 = 0;
  }

  else
  {
    v34 = SSError();
    v35 = 0;
    v36 = 0;
  }

LABEL_50:
  [(PrepareDirectUploadOperation *)self setError:v34];
  [(PrepareDirectUploadOperation *)self setSuccess:0];
  outputBlock = [(PrepareDirectUploadOperation *)self outputBlock];
  v39 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, v36, v35, v34);
    [(PrepareDirectUploadOperation *)self setOutputBlock:0];
  }
}

- (id)_newURLRequestWithURL:(id)l
{
  lCopy = l;
  v5 = [[NSMutableURLRequest alloc] initWithURL:lCopy];
  [v5 setHTTPMethod:@"POST"];
  accountIdentifier = [(DirectUploadRequest *)self->_request accountIdentifier];
  [ISStoreURLOperation addITunesStoreHeadersToRequest:v5 withAccountIdentifier:accountIdentifier];
  v7 = +[SSDevice currentDevice];
  userAgent = [v7 userAgent];

  if (userAgent)
  {
    [v5 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  }

  v9 = +[SSVCookieStorage sharedStorage];
  v10 = [v9 cookieHeadersForURL:lCopy userIdentifier:accountIdentifier];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001322AC;
  v24[3] = &unk_100327658;
  v11 = v5;
  v25 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v24];
  parentRelationshipType = [(DirectUploadRequest *)self->_request parentRelationshipType];
  v13 = [parentRelationshipType isEqualToString:SSVMediaSocialPostAttachmentRelationshipCoverImage];

  if (v13)
  {
    [v11 setValue:@"RP.AudioCoverArt" forHTTPHeaderField:@"X-Apple-Upload-Validation-RuleSets"];
  }

  v14 = [(DirectUploadRequest *)self->_request UTI];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    if (([(__CFString *)v16 isEqualToString:@"com.apple.coreaudio-format"]& 1) != 0)
    {
      v17 = @"audio/x-caf";
    }

    else
    {
      v17 = UTTypeCopyPreferredTagWithClass(v16, kUTTagClassMIMEType);
      if (!v17)
      {
LABEL_10:
        v18 = +[NSUUID UUID];
        uUIDString = [v18 UUIDString];

        v20 = UTTypeCopyPreferredTagWithClass(v16, kUTTagClassFilenameExtension);
        if (v20)
        {
          v21 = [uUIDString stringByAppendingPathExtension:v20];

          uUIDString = v21;
        }

        [v11 setValue:uUIDString forHTTPHeaderField:@"X-Original-Filename"];
        CFRelease(v16);

        goto LABEL_13;
      }
    }

    [v11 setValue:v17 forHTTPHeaderField:@"Content-Type"];

    goto LABEL_10;
  }

LABEL_13:
  v22 = v11;

  return v22;
}

- (id)_uploadURL
{
  v3 = [(DirectUploadRequest *)self->_request UTI];
  v4 = SSVMediaSocialAttachmentTypeForTypeIdentifier();

  v5 = [SSURLBagContext contextWithBagType:0];
  v6 = [(PrepareDirectUploadOperation *)self loadedURLBagWithContext:v5 returningError:0];

  if (v6 && (v4 - 1) <= 3)
  {
    v7 = off_100329778[v4 - 1];
    v8 = [v6 urlForKey:v7];
    if (v8)
    {
      goto LABEL_31;
    }

    v9 = [v6 valueForKey:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 objectForKey:v7];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [NSURL URLWithString:v10];
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }
  }

  v11 = CFPreferencesCopyAppValue(@"ISDirectUploadURL", kSSUserDefaultsIdentifier);
  if (!v11)
  {
    v8 = 0;
    goto LABEL_31;
  }

  v12 = v11;
  v13 = CFGetTypeID(v11);
  if (v13 == CFStringGetTypeID())
  {
    v14 = [NSURL URLWithString:v12];
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v22 = 138412546;
      v23 = objc_opt_class();
      v24 = 2112;
      v25 = v14;
      v19 = v23;
      v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Using base URL from user defaults: %@", &v22, 22);

      if (!v20)
      {
LABEL_24:

        if ((v4 - 1) > 3)
        {
          v8 = 0;
        }

        else
        {
          v8 = [v14 URLByAppendingPathComponent:off_100329798[v4 - 1]];
        }

        goto LABEL_30;
      }

      oSLogObject = [NSString stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog();
    }

    goto LABEL_24;
  }

  v8 = 0;
LABEL_30:
  CFRelease(v12);
LABEL_31:

  return v8;
}

@end