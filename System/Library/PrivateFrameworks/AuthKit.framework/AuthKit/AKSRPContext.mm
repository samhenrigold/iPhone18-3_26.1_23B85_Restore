@interface AKSRPContext
- (AKMasterToken)masterToken;
- (NSDictionary)serverProvidedData;
- (NSDictionary)status;
- (id)configureWithParameters:(id)parameters;
- (void)dealloc;
@end

@implementation AKSRPContext

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->_underlyingContext)
  {
    CFRelease(selfCopy->_underlyingContext);
    selfCopy->_underlyingContext = 0;
  }

  v2.receiver = selfCopy;
  v2.super_class = AKSRPContext;
  [(AKSRPContext *)&v2 dealloc];
}

- (id)configureWithParameters:(id)parameters
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, parameters);
  v9 = 0;
  v3 = [location[0] copy];
  configurationParameters = selfCopy->_configurationParameters;
  selfCopy->_configurationParameters = v3;
  _objc_release(configurationParameters);
  selfCopy->_underlyingContext = AppleIDAuthSupportCreate();
  v8 = v9;
  if (selfCopy->_underlyingContext)
  {
    v12 = 0;
  }

  else
  {
    v7 = _objc_retain(v8);
    v12 = _objc_retain(v7);
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  v5 = v12;

  return v5;
}

- (NSDictionary)serverProvidedData
{
  if (self->_underlyingContext)
  {
    v3 = AppleIDAuthSupportCopyProvidedData();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (AKMasterToken)masterToken
{
  selfCopy = self;
  v10 = a2;
  if (self->_underlyingContext)
  {
    v9 = AppleIDAuthSupportCopyToken();
    if (v9)
    {
      v8 = AppleIDAuthSupportTokenCopyExternalizedVersion();
      v4 = v8;
      serverProvidedData = [(AKSRPContext *)selfCopy serverProvidedData];
      v5 = [(NSDictionary *)serverProvidedData objectForKeyedSubscript:@"duration"];
      v7 = [AKMasterToken tokenWithExternalizedVersion:v4 lifetime:?];
      _objc_release(v5);
      _objc_release(serverProvidedData);
      CFRelease(v9);
      v12 = _objc_retain(v7);
      objc_storeStrong(&v7, 0);
      objc_storeStrong(&v8, 0);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v2 = v12;

  return v2;
}

- (NSDictionary)status
{
  if (self->_underlyingContext)
  {
    v3 = AppleIDAuthSupportGetStatus();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end