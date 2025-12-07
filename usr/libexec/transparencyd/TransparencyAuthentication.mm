@interface TransparencyAuthentication
+ (BOOL)isVirtualMachine;
- (TransparencyAuthentication)initWithWorkloop:(id)workloop;
- (TransparencyAuthentication)initWithWorkloop:(id)workloop analytics:(id)analytics;
- (void)issueCert:(BOOL)cert completionHandler:(id)handler;
- (void)signData:(id)data fetchNow:(BOOL)now completionHandler:(id)handler;
- (void)signData:(id)data key:(id)key completionHandler:(id)handler;
- (void)signDataWithTimestamp:(id)timestamp fetchNow:(BOOL)now timeShift:(double)shift completionHandler:(id)handler;
@end

@implementation TransparencyAuthentication

+ (BOOL)isVirtualMachine
{
  if (qword_10039CE38 != -1)
  {
    sub_10025FE94();
  }

  return byte_10039CE40;
}

- (void)issueCert:(BOOL)cert completionHandler:(id)handler
{
  certCopy = cert;
  handlerCopy = handler;
  if (+[TransparencyAuthentication isVirtualMachine])
  {
    v7 = [[KTBAAKey alloc] initWithKey:0 certificates:0 failure:0];
    [(KTBAAKey *)v7 setUseHostKey:1];
    handlerCopy[2](handlerCopy, v7);
    [(TransparencyAuthentication *)self setCertFetcher:0];
  }

  else
  {
    certFetcher = [(TransparencyAuthentication *)self certFetcher];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100233B30;
    v9[3] = &unk_10032C2B0;
    v9[4] = self;
    v10 = handlerCopy;
    [certFetcher getDeviceCertWithForcedFetch:certCopy completionHandler:v9];
  }
}

- (TransparencyAuthentication)initWithWorkloop:(id)workloop analytics:(id)analytics
{
  workloopCopy = workloop;
  analyticsCopy = analytics;
  v14.receiver = self;
  v14.super_class = TransparencyAuthentication;
  v8 = [(TransparencyAuthentication *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(TransparencyAuthentication *)v8 setIsSupported:1];
    [(TransparencyAuthentication *)v9 setWorkloop:workloopCopy];
    [(TransparencyAuthentication *)v9 setAnalytics:analyticsCopy];
    v10 = [TransparencyBAACertFetcher alloc];
    analytics = [(TransparencyAuthentication *)v9 analytics];
    v12 = [(TransparencyBAACertFetcher *)v10 initWithWorkloop:workloopCopy analytics:analytics];
    [(TransparencyAuthentication *)v9 setCertFetcher:v12];
  }

  return v9;
}

- (TransparencyAuthentication)initWithWorkloop:(id)workloop
{
  workloopCopy = workloop;
  v5 = +[TransparencyAnalytics logger];
  v6 = [(TransparencyAuthentication *)self initWithWorkloop:workloopCopy analytics:v5];

  return v6;
}

- (void)signData:(id)data key:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  dataCopy = data;
  if ([keyCopy useHostKey])
  {
    workloop = [(TransparencyAuthentication *)self workloop];
    error[1] = _NSConcreteStackBlock;
    error[2] = 3221225472;
    error[3] = sub_100234254;
    error[4] = &unk_10032C318;
    error[5] = self;
    v17 = handlerCopy;
    DeviceIdentityCreateHostSignatureWithCompletion();
  }

  else
  {
    error[0] = 0;
    Signature = SecKeyCreateSignature([keyCopy referenceKey], kSecKeyAlgorithmECDSASignatureMessageX962SHA256, dataCopy, error);

    if (Signature)
    {
      v13 = error[0] == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      certificates = [keyCopy certificates];
      (*(handlerCopy + 2))(handlerCopy, Signature, certificates, 0);
    }

    else
    {
      if (qword_10039CE48 != -1)
      {
        sub_10025FEF8();
      }

      v14 = qword_10039CE50;
      if (os_log_type_enabled(qword_10039CE50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = error[0];
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to create signature: %@", buf, 0xCu);
      }

      Signature = error[0];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, error[0]);
    }
  }
}

- (void)signData:(id)data fetchNow:(BOOL)now completionHandler:(id)handler
{
  nowCopy = now;
  dataCopy = data;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (nowCopy)
  {
    goto LABEL_6;
  }

  baaKey = [(TransparencyAuthentication *)selfCopy baaKey];
  if (([baaKey validBAAKey] & 1) == 0)
  {

    goto LABEL_6;
  }

  lastLocalFetchTime = [(TransparencyAuthentication *)selfCopy lastLocalFetchTime];
  [lastLocalFetchTime timeIntervalSinceNow];
  v14 = v13;
  v15 = -kKTAuthenticationLifetime;

  if (v14 <= v15)
  {
LABEL_6:
    objc_sync_exit(selfCopy);

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10023468C;
    v17[3] = &unk_10032C360;
    v17[4] = selfCopy;
    v18 = dataCopy;
    v19 = handlerCopy;
    [(TransparencyAuthentication *)selfCopy issueCert:nowCopy completionHandler:v17];

    goto LABEL_7;
  }

  baaKey2 = [(TransparencyAuthentication *)selfCopy baaKey];
  [(TransparencyAuthentication *)selfCopy signData:dataCopy key:baaKey2 completionHandler:handlerCopy];

  objc_sync_exit(selfCopy);
LABEL_7:
}

- (void)signDataWithTimestamp:(id)timestamp fetchNow:(BOOL)now timeShift:(double)shift completionHandler:(id)handler
{
  nowCopy = now;
  handlerCopy = handler;
  timestampCopy = timestamp;
  +[NSDate kt_currentTimeMs];
  v13 = v12;
  if (fabs(shift) > 1.0)
  {
    v14 = +[NSDate date];
    [v14 timeIntervalSince1970];
    v13 = (v15 + shift) * 1000.0;
  }

  v16 = [NSString stringWithFormat:@"%llu", v13];
  v23 = bswap64(v13);
  v17 = [NSMutableData dataWithData:timestampCopy];

  [v17 appendBytes:&v23 length:8];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1002348B8;
  v20[3] = &unk_10032C388;
  v21 = v16;
  v22 = handlerCopy;
  v18 = v16;
  v19 = handlerCopy;
  [(TransparencyAuthentication *)self signData:v17 fetchNow:nowCopy completionHandler:v20];
}

@end