@interface FMDAbsintheV3SigningSession
- (FMDAbsintheV3SigningSession)init;
- (id)signatureForData:(id)data error:(id *)error;
- (void)_destroySession;
- (void)establishSessionWithServerInteractionController:(id)controller;
@end

@implementation FMDAbsintheV3SigningSession

- (FMDAbsintheV3SigningSession)init
{
  v5.receiver = self;
  v5.super_class = FMDAbsintheV3SigningSession;
  v2 = [(FMDAbsintheV3SigningSession *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMDAbsintheV3SigningSession *)v2 setMode:0];
  }

  return v3;
}

- (void)establishSessionWithServerInteractionController:(id)controller
{
  controllerCopy = controller;
  v5 = sub_100002880([(FMDAbsintheV3SigningSession *)self _destroySession]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Initializing session...", buf, 2u);
  }

  v6 = [[FMSynchronizer alloc] initWithDescription:@"createSessionForSignature" andTimeout:-1.0];
  v30 = 0;
  *buf = 0;
  v29 = 0;
  [(FMDAbsintheV3SigningSession *)self setPscError:0];
  v7 = sub_100224ED0(buf, &v30, &v29);
  if (v7)
  {
    v8 = v7;
    v9 = sub_100002880(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100229034(v8, v9);
    }

    v32 = @"kFMDUnderlyingErrorCodeKey";
    v10 = [NSNumber numberWithInt:v8];
    v33 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v12 = [NSError errorWithDomain:@"FMDAbsintheV3SigningSessionErrorDomain" code:1 userInfo:v11];
    [(FMDAbsintheV3SigningSession *)self setPscError:v12];

    v13 = 0;
  }

  else
  {
    v10 = [NSData dataWithBytes:v30 length:v29];
    v13 = [v10 base64EncodedStringWithOptions:0];
    v14 = sub_100002880([(FMDAbsintheV3SigningSession *)self setPscSessionRef:*buf]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1002290B0(self);
    }

    sub_100224D70(v30);
  }

  v15 = +[FMDServiceProvider activeServiceProvider];
  v16 = [(FMDAbsintheV3SigningSession *)self mode]== 0;
  v17 = [FMDRequestIdentityV3Session alloc];
  activationLockRequestUUID = [(FMDAbsintheV3SigningSession *)self activationLockRequestUUID];
  v19 = [(FMDRequestIdentityV3Session *)v17 initWithProvider:v15 activationLockRequestUUID:activationLockRequestUUID pscHelloMsg:v13];

  [(FMDRequestIdentityV3Session *)v19 setRequiresAuthentication:v16];
  cause = [(FMDAbsintheV3SigningSession *)self cause];
  [(FMDRequestIdentityV3Session *)v19 setCause:cause];

  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1001645AC;
  v26 = &unk_1002CF188;
  selfCopy = self;
  v21 = v6;
  v28 = v21;
  [(FMDRequest *)v19 setCompletionHandler:&v23];
  v22 = [controllerCopy enqueueRequest:{v19, v23, v24, v25, v26, selfCopy}];

  if (v22)
  {
    [v21 wait];
  }
}

- (id)signatureForData:(id)data error:(id *)error
{
  dataCopy = data;
  pscSessionRef = [(FMDAbsintheV3SigningSession *)self pscSessionRef];
  if (pscSessionRef)
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v8 = sub_100002880(pscSessionRef);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [dataCopy base64EncodedStringWithOptions:4];
      *buf = 138412290;
      v31 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDAbsintheV3SigningSession digest to sign : %@", buf, 0xCu);
    }

    v10 = sub_100225018(-[FMDAbsintheV3SigningSession pscSessionRef](self, "pscSessionRef"), [dataCopy bytes], objc_msgSend(dataCopy, "length"), &v26, &v25, &v24, &v23);
    if (v10)
    {
      v11 = v10;
      v12 = sub_100002880(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1002294C8(v11, v12);
      }

      v28 = @"kFMDUnderlyingErrorCodeKey";
      v13 = [NSNumber numberWithInt:v11];
      v29 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v15 = [NSError errorWithDomain:@"FMDAbsintheV3SigningSessionErrorDomain" code:3 userInfo:v14];
      v16 = 0;
    }

    else
    {
      v13 = [NSData dataWithBytes:v26 length:v25];
      v14 = [NSData dataWithBytes:v24 length:v23];
      v27[0] = v13;
      v27[1] = v14;
      v16 = [NSArray arrayWithObjects:v27 count:2];
      v15 = 0;
    }

    [(FMDAbsintheV3SigningSession *)self _destroySession];
    if (error)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    if (error)
    {
LABEL_12:
      pscError = [(FMDAbsintheV3SigningSession *)self pscError];
      v18 = pscError;
      if (pscError)
      {
        v19 = pscError;
      }

      else
      {
        v19 = v15;
      }

      v20 = v19;

      v21 = v20;
      *error = v20;
      v15 = v20;
    }
  }

  return v16;
}

- (void)_destroySession
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100229540();
  }

  pscSessionRef = [(FMDAbsintheV3SigningSession *)self pscSessionRef];
  if (pscSessionRef)
  {
    v5 = sub_100002880(pscSessionRef);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AbsinthV3 invalidting psc session", v6, 2u);
    }

    sub_100224C14([(FMDAbsintheV3SigningSession *)self pscSessionRef]);
    [(FMDAbsintheV3SigningSession *)self setPscSessionRef:0];
  }
}

@end