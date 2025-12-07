@interface PVAppIdentityGenerator
- (BOOL)extractApplicationRecord:(id *)record;
- (BOOL)validatePPQAppId:(id *)id;
- (PVAppIdentityGenerator)initWithApplicationURL:(id)l ppqAppId:(id)id;
- (id)generateDigest;
- (void)dealloc;
@end

@implementation PVAppIdentityGenerator

- (PVAppIdentityGenerator)initWithApplicationURL:(id)l ppqAppId:(id)id
{
  lCopy = l;
  idCopy = id;
  v14.receiver = self;
  v14.super_class = PVAppIdentityGenerator;
  v9 = [(PVAppIdentityGenerator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->applicationURL, l);
    objc_storeStrong(&v10->ppqAppId, id);
    executableName = v10->executableName;
    v10->executableName = 0;

    executableURL = v10->executableURL;
    v10->executableURL = 0;
  }

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PVAppIdentityGenerator;
  [(PVAppIdentityGenerator *)&v2 dealloc];
}

- (BOOL)extractApplicationRecord:(id *)record
{
  v5 = [LSApplicationRecord alloc];
  applicationURL = self->applicationURL;
  v33 = 0;
  v7 = [v5 initWithURL:applicationURL allowPlaceholder:0 error:&v33];
  v8 = v33;
  if (v7)
  {
    infoDictionary = [v7 infoDictionary];
    v10 = [infoDictionary objectForKey:kCFBundleExecutableKey ofClass:objc_opt_class()];

    executableURL = [v7 executableURL];
    v12 = isNSString(v10);

    if (v12)
    {
      v13 = executableURL == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      [NSError pvai_errorWithCode:-10200];
      v8 = v14 = v8;
    }

    else
    {
      objc_storeStrong(&self->executableName, v10);
      objc_storeStrong(&self->executableURL, executableURL);
      v16 = _PVAppIdentityLogSystem(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194F0(v7);
      }

      v19 = _PVAppIdentityLogSystem(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_10001957C();
      }

      v21 = _PVAppIdentityLogSystem(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_1000195F0(v7);
      }

      v23 = _PVAppIdentityLogSystem(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        sub_10001968C(v7);
      }

      v25 = _PVAppIdentityLogSystem(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_100019728(v7);
      }

      v27 = _PVAppIdentityLogSystem(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_1000197C4(v7);
      }

      v29 = _PVAppIdentityLogSystem(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        sub_100019850(v7);
      }

      v14 = _PVAppIdentityLogSystem(v30);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_1000198DC();
      }
    }
  }

  else
  {
    [NSError pvai_wrappedError:-10200 error:v8];
    v8 = v10 = v8;
  }

  if (record && v8)
  {
    v31 = v8;
    *record = v8;
  }

  return v8 == 0;
}

- (BOOL)validatePPQAppId:(id *)id
{
  v4 = isNSData(self->ppqAppId);

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSError pvai_errorWithCode:-10001];
    if (id && v5)
    {
      v5 = v5;
      *id = v5;
    }
  }

  v6 = v5 == 0;

  return v6;
}

- (id)generateDigest
{
  v41 = 0;
  v42[0] = 0;
  v40 = 0;
  v38 = 0;
  cf = 0;
  v36 = 0;
  v37 = 0;
  [(PVAppIdentityGenerator *)self extractApplicationRecord:&v36];
  v3 = v36;
  if (v3 || (v35 = 0, [(PVAppIdentityGenerator *)self validatePPQAppId:&v35], (v3 = v35) != 0))
  {
    v4 = v3;
    v33 = 0;
    v5 = 0;
LABEL_4:
    v6 = [PVAppIdentityDigest alloc];
    asDictionary = [NSNumber numberWithInt:2002];
    v8 = [(PVAppIdentityDigest *)v6 initWithError:v4 version:asDictionary];
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
LABEL_5:

    v15 = v33;
    goto LABEL_6;
  }

  v5 = [(NSString *)self->executableName dataUsingEncoding:4];
  applicationURL = self->applicationURL;
  p_applicationURL = &self->applicationURL;
  v15 = [(NSURL *)applicationURL URLByAppendingPathComponent:@"_CodeSignature/CodeResources" isDirectory:0];
  PVAppIdentityCore_GenerateDigests(p_applicationURL[1], v5, *p_applicationURL, p_applicationURL[3], v15, -1, -1);
  if (!v20)
  {
    v33 = v15;
    v21 = v42[0];
    v22 = v41;
    v29 = v40;
    v23 = v38;
    v14 = cf;
    v13 = v37;
    v24 = [PVAppIdentityDigest alloc];
    v25 = [NSNumber numberWithInt:2002, &v41, &v40, &v38, &cf, &v37];
    v31 = v21;
    v26 = v21;
    v10 = v22;
    v27 = v22;
    v11 = v29;
    v12 = v23;
    v8 = [PVAppIdentityDigest initWithVersion:v24 data0:"initWithVersion:data0:data1:data2:data3:data4:data5:" data1:v25 data2:v26 data3:v27 data4:v13 data5:?];

    asDictionary = [(PVAppIdentityDigest *)v8 asDictionary];
    v34 = 0;
    v32 = [NSJSONSerialization dataWithJSONObject:asDictionary options:3 error:&v34];
    v30 = v34;
    v28 = _PVAppIdentityLogSystem(v30);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_100019950(p_applicationURL, v32);
    }

    v4 = 0;
    v9 = v31;
    goto LABEL_5;
  }

  v4 = [NSError pvai_errorWithCode:v20, &v41, &v40, &v38, &cf, &v37];
  if (v4)
  {
    v33 = v15;
    goto LABEL_4;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v8 = 0;
LABEL_6:
  if (v42[0])
  {
    CFRelease(v42[0]);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  v16 = v8;

  return v8;
}

@end