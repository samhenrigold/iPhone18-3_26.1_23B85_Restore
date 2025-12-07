@interface CDAppSignInUtilities
+ (id)credentialRequestFromClientAuthenticationContext:(id)context;
+ (void)preparePasskeyRequestsWithRequest:(id)request applicationIdentifier:(id)identifier approvedWebCredentialsDomains:(id)domains completionHandler:(id)handler;
+ (void)sendSessionActivatedMetricsWithRequest:(id)request approvedAssociatedDomains:(id)domains;
+ (void)sendSessionCompletedMetricsWithError:(id)error;
@end

@implementation CDAppSignInUtilities

+ (void)sendSessionActivatedMetricsWithRequest:(id)request approvedAssociatedDomains:(id)domains
{
  requestCopy = request;
  domainsCopy = domains;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2810000000;
  v16 = "";
  v17 = 0;
  appleIDRequest = [requestCopy appleIDRequest];

  if (appleIDRequest)
  {
    *(v14 + 32) |= 1u;
  }

  passwordRequest = [requestCopy passwordRequest];

  if (passwordRequest)
  {
    *(v14 + 32) |= 2u;
  }

  customAuthenticationMethods = [requestCopy customAuthenticationMethods];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002884;
  v12[3] = &unk_100089CB8;
  v12[4] = &v13;
  [customAuthenticationMethods enumerateObjectsUsingBlock:v12];

  v10 = [domainsCopy count];
  v11 = *(v14 + 32);
  if (v10)
  {
    v11 |= 0x20u;
    *(v14 + 32) = v11;
  }

  [CPSMetrics sendAppSignInSessionActivatedEvent:v11];
  _Block_object_dispose(&v13, 8);
}

+ (void)sendSessionCompletedMetricsWithError:(id)error
{
  errorCopy = error;
  v3 = CPSErrorGetCustomAuthenticationMethod();
  if (v3)
  {
    v4 = CPSMetricsSessionResultWithCustomMethod();
    goto LABEL_8;
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:CPSErrorDomain])
  {
    code = [errorCopy code];

    if (code == 104)
    {
      v4 = 2;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v4 = 3;
LABEL_8:
  [CPSMetrics sendAppSignInSessionCompletedEvent:v4];
}

+ (id)credentialRequestFromClientAuthenticationContext:(id)context
{
  contextCopy = context;
  appleIDRequest = [contextCopy appleIDRequest];
  platformKeyCredentialAssertionOptions = [contextCopy platformKeyCredentialAssertionOptions];
  platformKeyCredentialRegistrationOptions = [contextCopy platformKeyCredentialRegistrationOptions];
  v8 = sub_100002C64(self, platformKeyCredentialAssertionOptions, platformKeyCredentialRegistrationOptions);
  passwordRequest = [contextCopy passwordRequest];
  v10 = passwordRequest != 0;

  v11 = v10 | (2 * (appleIDRequest != 0));
  if (platformKeyCredentialAssertionOptions)
  {
    v11 |= 8uLL;
  }

  if (platformKeyCredentialRegistrationOptions)
  {
    v12 = v11 | 4;
  }

  else
  {
    v12 = v11;
  }

  v13 = [[ASCCredentialRequestContext alloc] initWithRequestTypes:v12];
  [v13 setAppleIDAuthorizationRequest:appleIDRequest];
  [v13 setPlatformKeyCredentialAssertionOptions:platformKeyCredentialAssertionOptions];
  [v13 setPlatformKeyCredentialCreationOptions:platformKeyCredentialRegistrationOptions];
  appIdentifier = [contextCopy appIdentifier];
  [v13 setProxiedAppIdentifier:appIdentifier];

  appName = [contextCopy appName];
  [v13 setProxiedAppName:appName];

  appDomains = [contextCopy appDomains];
  [v13 setProxiedAssociatedDomains:appDomains];

  appBundleIdentifier = [contextCopy appBundleIdentifier];
  [v13 setProxiedBundleIdentifier:appBundleIdentifier];

  appIconData = [contextCopy appIconData];
  [v13 setProxiedIconData:appIconData];

  appIconScale = [contextCopy appIconScale];
  [v13 setProxiedIconScale:appIconScale];

  deviceName = [contextCopy deviceName];
  [v13 setProxiedOriginDeviceName:deviceName];

  appTeamIdentifier = [contextCopy appTeamIdentifier];

  [v13 setProxiedTeamIdentifier:appTeamIdentifier];
  [v13 setRelyingPartyIdentifier:v8];

  return v13;
}

+ (void)preparePasskeyRequestsWithRequest:(id)request applicationIdentifier:(id)identifier approvedWebCredentialsDomains:(id)domains completionHandler:(id)handler
{
  requestCopy = request;
  identifierCopy = identifier;
  domainsCopy = domains;
  handlerCopy = handler;
  platformKeyCredentialAssertionOptions = [requestCopy platformKeyCredentialAssertionOptions];
  platformKeyCredentialRegistrationOptions = [requestCopy platformKeyCredentialRegistrationOptions];
  if (!(platformKeyCredentialAssertionOptions | platformKeyCredentialRegistrationOptions))
  {
    sub_10005DFEC(a2, self);
  }

  v17 = platformKeyCredentialRegistrationOptions;
  if ([identifierCopy length])
  {
    v18 = sub_100002C64(CDAppSignInUtilities, platformKeyCredentialAssertionOptions, v17);
    if ([v18 length])
    {
      if ([domainsCopy containsObject:v18])
      {
        handlerCopy[2](handlerCopy, 0);
      }

      else
      {
        v24 = CPSErrorDomain;
        v28 = NSLocalizedDescriptionKey;
        v25 = [NSString stringWithFormat:@"Application (%@) is not associated with relying party identifier (%@)", identifierCopy, v18];
        v29 = v25;
        v26 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v27 = [NSError errorWithDomain:v24 code:205 userInfo:v26];
        (handlerCopy)[2](handlerCopy, v27);
      }
    }

    else
    {
      v21 = CPSErrorDomain;
      v30 = NSLocalizedDescriptionKey;
      v31 = @"Missing relying party identifier";
      v22 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v23 = [NSError errorWithDomain:v21 code:205 userInfo:v22];
      (handlerCopy)[2](handlerCopy, v23);
    }
  }

  else
  {
    v19 = CPSErrorDomain;
    v32 = NSLocalizedDescriptionKey;
    v33 = @"Missing application identifier";
    v18 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v20 = [NSError errorWithDomain:v19 code:205 userInfo:v18];
    (handlerCopy)[2](handlerCopy, v20);
  }
}

@end