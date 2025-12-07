@interface DMDCoreTelephonyConnection
- (DMDCoreTelephonyConnection)init;
- (void)dealloc;
- (void)fetchCachedVinylInfoWithCompletion:(id)completion;
- (void)refreshCellularPlansWithCSN:(id)n serverURL:(id)l completion:(id)completion;
@end

@implementation DMDCoreTelephonyConnection

- (DMDCoreTelephonyConnection)init
{
  v4.receiver = self;
  v4.super_class = DMDCoreTelephonyConnection;
  v2 = [(DMDCoreTelephonyConnection *)&v4 init];
  if (v2)
  {
    v2->ctConnection = _CTServerConnectionCreateOnTargetQueue();
  }

  return v2;
}

- (void)dealloc
{
  ctConnection = self->ctConnection;
  if (ctConnection)
  {
    CFRelease(ctConnection);
    self->ctConnection = 0;
  }

  v4.receiver = self;
  v4.super_class = DMDCoreTelephonyConnection;
  [(DMDCoreTelephonyConnection *)&v4 dealloc];
}

- (void)fetchCachedVinylInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->ctConnection)
  {
    v6 = completionCopy;
    v14 = v6;
    CachedVinylInfo = _CTServerConnectionStandaloneGetCachedVinylInfo();
    if (HIDWORD(CachedVinylInfo))
    {
      v9 = CachedVinylInfo;
      dMFCoreTelephonyErrorCodeKey = [NSNumber numberWithInt:_NSConcreteStackBlock, 3221225472, sub_100033B08, &unk_1000CEDF8, v6, DMFCoreTelephonyErrorCodeKey];
      v16[0] = dMFCoreTelephonyErrorCodeKey;
      v15[1] = DMFCoreTelephonyErrorDomainKey;
      v11 = [NSNumber numberWithInt:v9];
      v16[1] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100081AE4();
      }

      v13 = DMFErrorWithCodeAndUserInfo();
      (*(v6 + 2))(v6, 0, v13);
    }

    else
    {
      _CTServerConnectionSendBarrier();
    }
  }

  else
  {
    v8 = DMFErrorWithCodeAndUserInfo();
    (v5)[2](v5, 0, v8);
  }
}

- (void)refreshCellularPlansWithCSN:(id)n serverURL:(id)l completion:(id)completion
{
  nCopy = n;
  completionCopy = completion;
  absoluteString = [l absoluteString];
  if (self->ctConnection)
  {
    v11 = completionCopy;
    v19 = v11;
    v12 = _CTServerConnectionStandaloneDownloadProfile();
    if (HIDWORD(v12))
    {
      v14 = v12;
      dMFCoreTelephonyErrorCodeKey = [NSNumber numberWithInt:_NSConcreteStackBlock, 3221225472, sub_100033DE0, &unk_1000CEE20, v11, DMFCoreTelephonyErrorCodeKey];
      v21[0] = dMFCoreTelephonyErrorCodeKey;
      v20[1] = DMFCoreTelephonyErrorDomainKey;
      v16 = [NSNumber numberWithInt:v14];
      v21[1] = v16;
      v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100081BE4();
      }

      v18 = DMFErrorWithCodeAndUserInfo();
      (*(v11 + 2))(v11, v18);
    }

    else
    {
      _CTServerConnectionSendBarrier();
    }
  }

  else
  {
    v13 = DMFErrorWithCodeAndUserInfo();
    (*(completionCopy + 2))(completionCopy, v13);
  }
}

@end