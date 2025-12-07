@interface FMDSupportedAccessoryTypesRequest
- (FMDSupportedAccessoryTypesRequest)initWithAccount:(id)account registry:(id)registry;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDSupportedAccessoryTypesRequest

- (FMDSupportedAccessoryTypesRequest)initWithAccount:(id)account registry:(id)registry
{
  accountCopy = account;
  registryCopy = registry;
  v15.receiver = self;
  v15.super_class = FMDSupportedAccessoryTypesRequest;
  v8 = [(FMDRequest *)&v15 initWithAccount:accountCopy];
  if (!v8)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    extAccessoryConfigURL = [accountCopy extAccessoryConfigURL];
    baseURL = v8->_baseURL;
    v8->_baseURL = extAccessoryConfigURL;

    objc_storeStrong(&v8->_registry, registry);
LABEL_4:
    v12 = v8;
    goto LABEL_8;
  }

  v13 = sub_10000BE38(isKindOfClass);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1002265FC(accountCopy, v13);
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (id)requestHeaders
{
  v6.receiver = self;
  v6.super_class = FMDSupportedAccessoryTypesRequest;
  requestHeaders = [(FMDRequest *)&v6 requestHeaders];
  v3 = +[FMDServerConfig sharedInstance];
  mmeClientInfo = [v3 mmeClientInfo];
  [requestHeaders fm_safelyMapKey:@"X-MMe-Client-Info" toObject:mmeClientInfo];

  return requestHeaders;
}

- (id)requestUrl
{
  baseURL = [(FMDSupportedAccessoryTypesRequest *)self baseURL];
  v3 = [NSString stringWithFormat:@"%@/supportedAccessoryTypes", baseURL];

  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (id)requestBody
{
  v7.receiver = self;
  v7.super_class = FMDSupportedAccessoryTypesRequest;
  requestBody = [(FMDRequest *)&v7 requestBody];
  registry = [(FMDSupportedAccessoryTypesRequest *)self registry];
  version = [registry version];
  [requestBody fm_safelyMapKey:@"cachedVersion" toObject:version];

  return requestBody;
}

@end