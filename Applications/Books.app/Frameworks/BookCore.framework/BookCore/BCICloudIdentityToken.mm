@interface BCICloudIdentityToken
+ (id)tokenForCurrentIdentityIfICloudDriveEnabled;
- (BCICloudIdentityToken)initWithCurrentIdentity;
- (BCICloudIdentityToken)initWithToken:(id)token;
- (BOOL)isEqual:(id)equal;
- (id)_hashFor:(id)for;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initFromArchive:(id)archive;
@end

@implementation BCICloudIdentityToken

+ (id)tokenForCurrentIdentityIfICloudDriveEnabled
{
  v2 = +[BUAccountsProvider sharedProvider];
  isUserSignedInToiCloud = [v2 isUserSignedInToiCloud];

  if ((isUserSignedInToiCloud & 1) == 0)
  {
    v9 = BCUbiquityEnabledLog(v4);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v16 = 0;
    v10 = "BCICloudIdentityToken: isUserSignedInToiCloud=NO. Returning nil";
    v11 = &v16;
LABEL_13:
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    goto LABEL_14;
  }

  v5 = +[BCSyncUserDefaults isICloudDriveSyncOptedIn];
  if ((v5 & 1) == 0)
  {
    v9 = BCUbiquityEnabledLog(v5);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = 0;
    v10 = "BCICloudIdentityToken: isICloudDriveSyncOptedIn=NO. Returning nil";
    v11 = &v15;
    goto LABEL_13;
  }

  v6 = +[BCSyncUserDefaults isGlobalICloudDriveSyncOptedIn];
  if ((v6 & 1) == 0)
  {
    v9 = BCUbiquityEnabledLog(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "BCICloudIdentityToken: isGlobalICloudDriveSyncOptedIn=NO. Returning nil";
      v11 = buf;
      goto LABEL_13;
    }

LABEL_14:
    initWithCurrentIdentity = 0;
    goto LABEL_15;
  }

  initWithCurrentIdentity = [[BCICloudIdentityToken alloc] initWithCurrentIdentity];
  v8 = BCUbiquityEnabledLog(initWithCurrentIdentity);
  v9 = v8;
  if (initWithCurrentIdentity)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "BCICloudIdentityToken: new token generated", v13, 2u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1E9D10(v9);
  }

LABEL_15:

  return initWithCurrentIdentity;
}

- (BCICloudIdentityToken)initWithToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    v10.receiver = self;
    v10.super_class = BCICloudIdentityToken;
    v5 = [(BCICloudIdentityToken *)&v10 init];
    if (v5)
    {
      v6 = [tokenCopy copy];
      token = v5->_token;
      v5->_token = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initFromArchive:(id)archive
{
  archiveCopy = archive;
  objc_opt_class();
  v5 = BUDynamicCast();

  v6 = [(BCICloudIdentityToken *)self initWithToken:v5];
  return v6;
}

- (BCICloudIdentityToken)initWithCurrentIdentity
{
  v3 = +[BUAccountsProvider sharedProvider];
  iCloudIdentity = [v3 iCloudIdentity];

  v6 = BCUbiquityEnabledLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 141558274;
    v11 = 1752392040;
    v12 = 2112;
    v13 = iCloudIdentity;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "BCICloudIdentityToken: initWithCurrentIdentity: %{mask.hash}@", &v10, 0x16u);
  }

  v7 = [(BCICloudIdentityToken *)self _hashFor:iCloudIdentity];
  v8 = [(BCICloudIdentityToken *)self initWithToken:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  token = [(BCICloudIdentityToken *)self token];
  objc_opt_class();
  v6 = BUDynamicCast();

  token2 = [v6 token];
  v8 = [token isEqualToString:token2];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  token = [(BCICloudIdentityToken *)self token];
  v6 = [v4 initWithToken:token];

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  token = [(BCICloudIdentityToken *)self token];
  v6 = [NSString stringWithFormat:@"<%@:%p %@>", v4, self, token];

  return v6;
}

- (id)_hashFor:(id)for
{
  v3 = [for dataUsingEncoding:4];
  bu_md5UpperCase = [v3 bu_md5UpperCase];

  return bu_md5UpperCase;
}

@end