@interface TUDialRequest
+ (id)dialRequestForCallProvider:(id)provider handle:(id)handle;
+ (id)dialRequestForUserActivity:(id)activity callProviderManager:(id)manager;
- (BOOL)canMakeEmergencyCallForSenderIdentity:(id)identity;
- (id)dialRequestByResolvingDialTypeUsingSenderIdentityClient:(id)client;
@end

@implementation TUDialRequest

+ (id)dialRequestForCallProvider:(id)provider handle:(id)handle
{
  providerCopy = provider;
  handleCopy = handle;
  type = [handleCopy type];
  v8 = [providerCopy supportsHandleType:type];
  if (v8)
  {
    v9 = [[TUDialRequest alloc] initWithProvider:providerCopy];
    [v9 setHandle:handleCopy];
    [v9 setOriginatingUIType:1];
  }

  else
  {
    v10 = sub_100004F84(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100255D34(providerCopy, type, v10);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)dialRequestForUserActivity:(id)activity callProviderManager:(id)manager
{
  activityCopy = activity;
  managerCopy = manager;
  v8 = sub_100004F84(managerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = activityCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to create a dial request for user activity (%@)", &v17, 0xCu);
  }

  userInfo = [activityCopy userInfo];
  if (userInfo)
  {
    callProviderIdentifier = [activityCopy callProviderIdentifier];
    if (callProviderIdentifier)
    {
      v11 = [managerCopy providerWithIdentifier:callProviderIdentifier];
      handle = [activityCopy handle];
      v13 = handle;
      LOBYTE(v17) = 0;
      if ((v11 || ([managerCopy providerWithService:objc_msgSend(activityCopy video:{"callService"), &v17}], handle = objc_claimAutoreleasedReturnValue(), (v11 = handle) != 0)) && v13)
      {
        v14 = [self dialRequestForCallProvider:v11 handle:v13];
        [v14 setVideo:v17];
        [v14 setOriginatingUIType:37];
      }

      else
      {
        v15 = sub_100004F84(handle);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100255E04(callProviderIdentifier, v15);
        }

        v14 = 0;
      }
    }

    else
    {
      v11 = sub_100004F84(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100255E7C(v11);
      }

      v14 = 0;
    }
  }

  else
  {
    callProviderIdentifier = sub_100004F84(0);
    if (os_log_type_enabled(callProviderIdentifier, OS_LOG_TYPE_ERROR))
    {
      sub_100255EC0(callProviderIdentifier);
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)canMakeEmergencyCallForSenderIdentity:(id)identity
{
  identityCopy = identity;
  if (PHIsInAirplaneMode())
  {
    uUID = [identityCopy UUID];
    v5 = [TUCallCapabilities canAttemptEmergencyCallsWithoutCellularConnectionWithUUID:uUID];

    v7 = sub_100004F84(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"cannot";
      if (v5)
      {
        v8 = @"can";
      }

      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = identityCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device is in airplane mode and %@ make an emergency call using sender identity %@", &v10, 0x16u);
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (id)dialRequestByResolvingDialTypeUsingSenderIdentityClient:(id)client
{
  clientCopy = client;
  v5 = [(TUDialRequest *)self copy];
  handle = [(TUDialRequest *)self handle];
  value = [handle value];
  if ([value length])
  {
  }

  else
  {
    dialType = [(TUDialRequest *)self dialType];

    if (dialType != 1)
    {
      goto LABEL_23;
    }
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000A7C04;
  v29[3] = &unk_1003587A8;
  v30 = clientCopy;
  selfCopy = self;
  v9 = objc_retainBlock(v29);
  localSenderIdentityAccountUUID = [(TUDialRequest *)self localSenderIdentityAccountUUID];
  if (!localSenderIdentityAccountUUID)
  {
    goto LABEL_11;
  }

  provider = [(TUDialRequest *)self provider];
  v12 = [provider senderIdentityForAccountUUID:localSenderIdentityAccountUUID];

  if (!v12)
  {
    v15 = sub_100004F84(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = localSenderIdentityAccountUUID;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could not find a sender identity that contains account UUID %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v14 = (v9[2])(v9, v5, v12);

  if (!v14)
  {
LABEL_11:
    provider2 = [(TUDialRequest *)self provider];
    prioritizedSenderIdentities = [provider2 prioritizedSenderIdentities];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = prioritizedSenderIdentities;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = (v9[2])(v9, v5, *(*(&v25 + 1) + 8 * i));
          if (v23)
          {
            v14 = v23;
            goto LABEL_21;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v32 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_21:
  }

LABEL_23:

  return v5;
}

@end