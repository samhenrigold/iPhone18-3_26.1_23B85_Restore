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
    v10 = PHDefaultLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(TUDialRequest(PhoneKit) *)providerCopy dialRequestForCallProvider:type handle:v10];
    }

    v9 = 0;
  }

  return v9;
}

+ (id)dialRequestForUserActivity:(id)activity callProviderManager:(id)manager
{
  activityCopy = activity;
  managerCopy = manager;
  v8 = PHDefaultLog(managerCopy);
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
        v15 = PHDefaultLog(handle);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [TUDialRequest(PhoneKit) dialRequestForUserActivity:callProviderIdentifier callProviderManager:v15];
        }

        v14 = 0;
      }
    }

    else
    {
      v11 = PHDefaultLog(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [TUDialRequest(PhoneKit) dialRequestForUserActivity:v11 callProviderManager:?];
      }

      v14 = 0;
    }
  }

  else
  {
    callProviderIdentifier = PHDefaultLog(0);
    if (os_log_type_enabled(callProviderIdentifier, OS_LOG_TYPE_ERROR))
    {
      [TUDialRequest(PhoneKit) dialRequestForUserActivity:callProviderIdentifier callProviderManager:?];
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

    v7 = PHDefaultLog(v6);
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
  v29[2] = __83__TUDialRequest_PhoneKit__dialRequestByResolvingDialTypeUsingSenderIdentityClient___block_invoke;
  v29[3] = &unk_100285BE0;
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
    v15 = PHDefaultLog(v13);
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

id __83__TUDialRequest_PhoneKit__dialRequestByResolvingDialTypeUsingSenderIdentityClient___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 handle];
  v8 = [v7 value];

  if ([v8 length])
  {
    v9 = *(a1 + 32);
    v10 = [v6 UUID];
    LODWORD(v9) = [v9 isEmergencyNumberForDigits:v8 senderIdentityUUID:v10];

    if (v9)
    {
      [v5 setDialType:1];
    }
  }

  if ([v5 dialType] == 1 && objc_msgSend(*(a1 + 40), "canMakeEmergencyCallForSenderIdentity:", v6))
  {
    v11 = v6;
    v12 = PHDefaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating emergency dial request %@ to use sender identity %@", &v16, 0x16u);
    }

    v13 = [v11 UUID];
    [v5 setLocalSenderIdentityUUID:v13];

    v14 = [v11 accountUUID];
    [v5 setLocalSenderIdentityAccountUUID:v14];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end