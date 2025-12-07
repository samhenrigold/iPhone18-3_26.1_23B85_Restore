@interface SSDownloadAsset
+ (id)assetWithURL:(id)l type:(int64_t)type;
- (BOOL)isExternal;
- (NSString)downloadFileName;
- (NSURLRequest)URLRequest;
- (SSDownloadAsset)initWithURLRequest:(id)request;
- (SSDownloadAsset)initWithURLRequest:(id)request type:(int64_t)type;
- (SSDownloadAsset)initWithURLRequestProperties:(id)properties;
- (SSURLRequestProperties)URLRequestProperties;
- (SSURLRequestProperties)_localProperties;
- (id)_copyURLRequestProperties;
- (id)copyXPCEncoding;
- (int64_t)bytesDownloaded;
- (int64_t)bytesUploadTotal;
- (int64_t)bytesUploaded;
- (int64_t)fileSize;
- (void)_resetLocalIVars;
- (void)dealloc;
@end

@implementation SSDownloadAsset

- (SSDownloadAsset)initWithURLRequest:(id)request
{
  v7.receiver = self;
  v7.super_class = SSDownloadAsset;
  v4 = [(SSEntity *)&v7 init];
  if (v4)
  {
    if (request)
    {
      v5 = [[SSURLRequestProperties alloc] initWithURLRequest:request];
    }

    else
    {
      v5 = 0;
    }

    v4->_localProperties = v5;
  }

  return v4;
}

- (SSDownloadAsset)initWithURLRequestProperties:(id)properties
{
  v6.receiver = self;
  v6.super_class = SSDownloadAsset;
  v4 = [(SSEntity *)&v6 init];
  if (v4)
  {
    v4->_localProperties = [properties copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownloadAsset;
  [(SSEntity *)&v3 dealloc];
}

- (int64_t)bytesDownloaded
{
  result = [(SSEntity *)self valueForExternalProperty:@"0"];
  if (result)
  {

    return [result longLongValue];
  }

  return result;
}

- (int64_t)bytesUploaded
{
  result = [(SSEntity *)self valueForExternalProperty:@"9"];
  if (result)
  {

    return [result longLongValue];
  }

  return result;
}

- (int64_t)bytesUploadTotal
{
  result = [(SSEntity *)self valueForExternalProperty:@"A"];
  if (result)
  {

    return [result longLongValue];
  }

  return result;
}

- (NSURLRequest)URLRequest
{
  _copyURLRequestProperties = [(SSDownloadAsset *)self _copyURLRequestProperties];
  copyURLRequest = [_copyURLRequestProperties copyURLRequest];

  return copyURLRequest;
}

- (void)_resetLocalIVars
{
  self->_localProperties = 0;
  v3.receiver = self;
  v3.super_class = SSDownloadAsset;
  [(SSEntity *)&v3 _resetLocalIVars];
}

- (SSURLRequestProperties)URLRequestProperties
{
  _copyURLRequestProperties = [(SSDownloadAsset *)self _copyURLRequestProperties];

  return _copyURLRequestProperties;
}

- (SSURLRequestProperties)_localProperties
{
  v2 = [(SSURLRequestProperties *)self->_localProperties copy];

  return v2;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "0", self->super._pid);
  dispatchQueue = self->super._dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__SSDownloadAsset_copyXPCEncoding__block_invoke;
  v6[3] = &unk_1E84AC458;
  v6[4] = v3;
  v6[5] = self;
  dispatch_sync(dispatchQueue, v6);
  return v3;
}

void __34__SSDownloadAsset_copyXPCEncoding__block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  SSXPCDictionarySetCFObject(*(a1 + 32), "1", *(*(a1 + 40) + 32));
  SSXPCDictionarySetCFObject(*(a1 + 32), "2", *(*(a1 + 40) + 72));
  v2 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:@"d"];
  if (v2)
  {
    v3 = v2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v3];
      v5 = [v4 URLByDeletingLastPathComponent];

      if (v5)
      {
        goto LABEL_18;
      }
    }
  }

  v6 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 2;
  }

  if (v10)
  {
    v11 = *(*(a1 + 40) + 64);
    v70 = 134217984;
    v71 = v11;
    v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1D48BA000, v9, 0, "DestinationURL was unspecified; falling back to directory for asset type %ld", &v70);
    if (v12)
    {
      v13 = v12;
      v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
      free(v13);
      SSFileLog(v6, @"%@", v15, v16, v17, v18, v19, v20, v14);
    }
  }

  v21 = SSGetFinalizedDirectoryForAssetType(*(*(a1 + 40) + 64));
  if (v21)
  {
    v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v21];
    if (v22)
    {
      v5 = v22;
LABEL_18:
      v69 = 0;
      if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
      {
        v23 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v23)
        {
          v23 = +[SSLogConfig sharedConfig];
        }

        v24 = [v23 shouldLog];
        if ([v23 shouldLogToDisk])
        {
          v25 = v24 | 2;
        }

        else
        {
          v25 = v24;
        }

        v26 = [v23 OSLogObject];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = v25;
        }

        else
        {
          v27 = v25 & 2;
        }

        if (v27)
        {
          v70 = 138543362;
          v71 = v69;
          v28 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &dword_1D48BA000, v26, 16, "%{public}@", &v70, 12);
          if (v28)
          {
            v29 = v28;
            v30 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:4];
            free(v29);
            SSFileLog(v23, @"%@", v31, v32, v33, v34, v35, v36, v30);
          }
        }

        v69 = 0;
      }

      v37 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v37)
      {
        v37 = +[SSLogConfig sharedConfig];
      }

      v38 = [v37 shouldLog];
      if ([v37 shouldLogToDisk])
      {
        v39 = v38 | 2;
      }

      else
      {
        v39 = v38;
      }

      v40 = [v37 OSLogObject];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = v39;
      }

      else
      {
        v41 = v39 & 2;
      }

      if (v41)
      {
        v70 = 138543362;
        v71 = v5;
        LODWORD(v68) = 12;
        v42 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_1D48BA000, v40, 1, "Creating sandbox extension for %{public}@", &v70, v68);
        if (v42)
        {
          v43 = v42;
          v44 = [MEMORY[0x1E696AEC0] stringWithCString:v42 encoding:4];
          free(v43);
          SSFileLog(v37, @"%@", v45, v46, v47, v48, v49, v50, v44);
        }
      }

      v51 = objc_alloc(MEMORY[0x1E696AE98]);
      v52 = [v51 initWithURL:v5 readonly:0 extensionClass:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *MEMORY[0x1E69E9BB0])}];
      v53 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v52 requiringSecureCoding:1 error:&v69];
      if (v53)
      {
        SSXPCDictionarySetObject(*(a1 + 32), "3", v53);
      }

      else
      {
        v54 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v54)
        {
          v54 = +[SSLogConfig sharedConfig];
        }

        v55 = [v54 shouldLog];
        if ([v54 shouldLogToDisk])
        {
          v56 = v55 | 2;
        }

        else
        {
          v56 = v55;
        }

        v57 = [v54 OSLogObject];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = v56;
        }

        else
        {
          v58 = v56 & 2;
        }

        if (v58)
        {
          v70 = 138543362;
          v71 = v69;
          LODWORD(v68) = 12;
          v59 = _os_log_send_and_compose_impl(v58, 0, 0, 0, &dword_1D48BA000, v57, 16, "%{public}@", &v70, v68);
          if (v59)
          {
            v60 = v59;
            v61 = [MEMORY[0x1E696AEC0] stringWithCString:v59 encoding:4];
            free(v60);
            SSFileLog(v54, @"%@", v62, v63, v64, v65, v66, v67, v61);
          }
        }

        v69 = 0;
      }
    }
  }
}

+ (id)assetWithURL:(id)l type:(int64_t)type
{
  v5 = [objc_alloc(objc_opt_class()) initWithURLRequest:{objc_msgSend(MEMORY[0x1E696AF68], "requestWithURL:", l)}];
  v5[8] = type;

  return v5;
}

- (SSDownloadAsset)initWithURLRequest:(id)request type:(int64_t)type
{
  result = [(SSDownloadAsset *)self initWithURLRequest:request];
  if (result)
  {
    result->_assetType = type;
  }

  return result;
}

- (NSString)downloadFileName
{
  v2 = [(SSEntity *)self valueForProperty:@"4"];

  return [v2 lastPathComponent];
}

- (int64_t)fileSize
{
  result = [(SSEntity *)self valueForProperty:@"3"];
  if (result)
  {

    return [result longLongValue];
  }

  return result;
}

- (BOOL)isExternal
{
  v2 = [(SSEntity *)self valueForProperty:@"9"];

  return [v2 BOOLValue];
}

- (id)_copyURLRequestProperties
{
  v24[10] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__SSDownloadAsset__copyURLRequestProperties__block_invoke;
  v12[3] = &unk_1E84AC698;
  v12[4] = self;
  v12[5] = &v13;
  dispatch_sync(dispatchQueue, v12);
  v4 = v14[5];
  if (!v4)
  {
    v24[0] = @"5";
    v24[1] = @"6";
    v24[2] = @"7";
    v24[3] = @"8";
    v24[4] = @"9";
    v24[5] = @"a";
    v24[6] = @"b";
    v24[7] = @"c";
    v24[8] = @"3";
    v24[9] = @"n";
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    [(SSEntity *)self getValues:&v19 forProperties:v24 count:10];
    if (*(&v22 + 1))
    {
      v5 = objc_alloc_init(SSMutableURLRequestProperties);
      -[SSMutableURLRequestProperties setAllowedRetryCount:](v5, "setAllowedRetryCount:", [v19 integerValue]);
      [(SSMutableURLRequestProperties *)v5 setHTTPBody:*(&v19 + 1)];
      -[SSMutableURLRequestProperties setITunesStoreRequest:](v5, "setITunesStoreRequest:", [v21 BOOLValue] ^ 1);
      [v22 doubleValue];
      [(SSMutableURLRequestProperties *)v5 setTimeoutInterval:?];
      v6 = *(&v20 + 1);
      if ([*(&v20 + 1) length])
      {
        [(SSMutableURLRequestProperties *)v5 setHTTPMethod:v6];
      }

      if (v20)
      {
        -[SSMutableURLRequestProperties setHTTPHeaders:](v5, "setHTTPHeaders:", [MEMORY[0x1E696AE40] propertyListWithData:v20 options:0 format:0 error:0]);
      }

      if (*(&v23 + 1))
      {
        v7 = objc_alloc_init(MEMORY[0x1E696AC08]);
        if ([v7 fileExistsAtPath:*(&v23 + 1)])
        {
          v8 = objc_alloc(MEMORY[0x1E695DF48]);
          v9 = [v8 initWithFileAtPath:*(&v23 + 1)];
          [(SSMutableURLRequestProperties *)v5 setHTTPBodyStream:v9];
        }
      }

      if (*(&v21 + 1))
      {
        -[SSMutableURLRequestProperties setRequestParameters:](v5, "setRequestParameters:", [MEMORY[0x1E696AE40] propertyListWithData:*(&v21 + 1) options:0 format:0 error:0]);
      }

      if (*(&v22 + 1))
      {
        -[SSMutableURLRequestProperties setURL:](v5, "setURL:", [MEMORY[0x1E695DFF8] URLWithString:?]);
      }

      if (v23)
      {
        -[SSMutableURLRequestProperties setExpectedContentLength:](v5, "setExpectedContentLength:", [v23 longLongValue]);
      }

      v10 = v14;
      v14[5] = v5;
    }

    else
    {
      v10 = v14;
    }

    v4 = v10[5];
  }

  _Block_object_dispose(&v13, 8);
  return v4;
}

id __44__SSDownloadAsset__copyURLRequestProperties__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 72);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

@end