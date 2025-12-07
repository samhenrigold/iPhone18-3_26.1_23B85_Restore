@interface SSVPlaybackKDLeaseRequest
- (id)_actionParameterValue;
- (id)_copyBodyDictionaryWithFairPlaySession:(void *)session;
@end

@implementation SSVPlaybackKDLeaseRequest

- (id)_actionParameterValue
{
  _actionType = [(SSVPlaybackLeaseRequest *)self _actionType];
  v3 = @"init";
  if (_actionType == 1)
  {
    v3 = @"lease";
  }

  if (_actionType == 2)
  {
    return @"init+lease";
  }

  else
  {
    return v3;
  }
}

- (id)_copyBodyDictionaryWithFairPlaySession:(void *)session
{
  v50 = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = SSVPlaybackKDLeaseRequest;
  v5 = [(SSVPlaybackLeaseRequest *)&v42 _copyBodyDictionaryWithFairPlaySession:?];
  _certificateData = [(SSVPlaybackLeaseRequest *)self _certificateData];
  _KDMovieIdentifier = [(SSVPlaybackLeaseRequest *)self _KDMovieIdentifier];
  v41 = _KDMovieIdentifier;
  if (!_KDMovieIdentifier && _certificateData)
  {
    LODWORD(v40[0]) = 1;
    v8 = Qhl17oSYJtCJIxM([_certificateData bytes], objc_msgSend(_certificateData, "length"), v40, 1, &v41);
    if (!v8)
    {
      [(SSVPlaybackLeaseRequest *)self _setKDMovieIdentifier:v41];
      goto LABEL_18;
    }

    v9 = v8;
    v10 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = shouldLog | 2;
    }

    else
    {
      v12 = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 2;
    }

    if (v14)
    {
      LODWORD(v45) = 134217984;
      *(&v45 + 4) = v9;
      v15 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "GenMovieId failed with error: %ld", &v45);

      if (!v15)
      {
LABEL_16:

LABEL_18:
        _KDMovieIdentifier = v41;
        goto LABEL_19;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
    }

    goto LABEL_16;
  }

LABEL_19:
  v46 = 0u;
  v47 = 0u;
  *&v45 = 1;
  *(&v45 + 1) = _KDMovieIdentifier;
  *&v46 = [_certificateData bytes];
  DWORD2(v46) = [_certificateData length];
  *&v47 = 0;
  DWORD2(v47) = 0;
  v48 = 0;
  kDChannelIdentifier = [(SSVPlaybackLeaseRequest *)self KDChannelIdentifier];
  v39 = 0;
  v40[0] = 1;
  v40[1] = &v45;
  v40[2] = 1;
  v37 = 0;
  v38 = 0;
  MpP1bcydEGt61uk5lIIoLR(v40, &v37);
  if (v22)
  {
    v23 = v22;
    v24 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 = shouldLog2 | 2;
    }

    else
    {
      v26 = shouldLog2;
    }

    oSLogObject2 = [v24 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 2;
    }

    if (v28)
    {
      v43 = 134217984;
      v44 = v23;
      v29 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 0, "GenerateSPCWithParamaters failed with error: %ld", &v43);

      if (!v29)
      {
LABEL_36:

        goto LABEL_37;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:4];
      free(v29);
      SSFileLog(v24, @"%@", v30, v31, v32, v33, v34, v35, oSLogObject2);
    }

    v29 = 0;
LABEL_35:

    goto LABEL_36;
  }

  if (!v39)
  {
    v29 = 0;
    if (!session)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v29 = *(v38 + 16);
  if (*v38)
  {
    v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:*v38 length:*(v38 + 8) freeWhenDone:0];
    oSLogObject2 = [v24 base64EncodedStringWithOptions:0];
    [v5 setObject:oSLogObject2 forKey:@"spc"];
    goto LABEL_35;
  }

LABEL_37:
  if (session)
  {
LABEL_38:
    *session = v29;
  }

LABEL_39:

  return v5;
}

@end