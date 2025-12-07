@interface CWFWiFiUserAgent
- (BOOL)__updateKeychainPassword:(id)password network:(id)network;
- (CWFWiFiUserAgent)initWithXPCClient:(id)client requestParameters:(id)parameters;
- (NSArray)nearbyRecommendedNetworks;
- (id)__loadNearbyRecommendedNetworksFromKVS;
- (void)__cancelRecommendedNetworkNotificationTimeout;
- (void)__launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:(id)d accessoryName:(id)name appBundleID:(id)iD completion:(id)completion;
- (void)__launchWiFiNetworkSharingAuthorizationProxCardForAccessoryID:(id)d accessoryName:(id)name appBundleID:(id)iD completion:(id)completion;
- (void)__purgeExpiredCaptiveNetworkCredentials;
- (void)__purgeExpiredNearbyRecommendedNetworks;
- (void)__receivedNearbyRecommendedNetwork:(id)network;
- (void)__receivedNearbySyncableNetwork:(id)network;
- (void)__scheduleRecommendedNetworkNotificationTimeout;
- (void)__setupCloudSyncManager;
- (void)__setupEventHandler;
- (void)__setupNearbySyncManager;
- (void)__showWiFiNetworkSharingAskToShareNotificationForClientID:(id)d network:(id)network accessoryDisplayName:(id)name completion:(id)completion;
- (void)__updateNearbyRecommendedNetworks;
- (void)__updateNearbyRecommendedNetworksExpirationTimer;
- (void)activate;
- (void)invalidate;
- (void)pickerDidDismiss:(id)dismiss;
- (void)pickerDidPresent;
- (void)setNearbyRecommendedNetworks:(id)networks;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation CWFWiFiUserAgent

- (NSArray)nearbyRecommendedNetworks
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSArray *)selfCopy->_nearbyRecommendedNetworks copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setNearbyRecommendedNetworks:(id)networks
{
  v22 = *MEMORY[0x1E69E9840];
  networksCopy = networks;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nearbyRecommendedNetworks = selfCopy->_nearbyRecommendedNetworks;
  if (nearbyRecommendedNetworks != networksCopy && (!networksCopy || !nearbyRecommendedNetworks || ([(NSArray *)nearbyRecommendedNetworks isEqual:networksCopy]& 1) == 0))
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = selfCopy->_nearbyRecommendedNetworks;
      v18 = 138543618;
      v19 = v10;
      v20 = 2114;
      v21 = networksCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 1, "[corewifi] [nearbysync] Nearby recommended networks changed (%{public}@ --> %{public}@), posting event", &v18, 22);
    }

    v11 = [(NSArray *)networksCopy copy];
    v12 = selfCopy->_nearbyRecommendedNetworks;
    selfCopy->_nearbyRecommendedNetworks = v11;

    v13 = objc_alloc_init(CWFXPCEvent);
    [(CWFXPCEvent *)v13 setType:39];
    date = [MEMORY[0x1E695DF00] date];
    [(CWFXPCEvent *)v13 setTimestamp:date];

    if (networksCopy)
    {
      v16 = @"NearbyRecommendedNetworks";
      v17 = networksCopy;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      v15 = 0;
    }

    [(CWFXPCEvent *)v13 setInfo:v15];
    if (networksCopy)
    {
    }

    [(CWFInterface *)selfCopy sendXPCEvent:v13];
  }

  objc_sync_exit(selfCopy);
}

- (void)__setupEventHandler
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E0D343B0;
  v3[3] = &unk_1E86E6F30;
  objc_copyWeak(&v4, &location);
  [(CWFInterface *)self setEventHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (BOOL)__updateKeychainPassword:(id)password network:(id)network
{
  v47 = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  networkCopy = network;
  if (passwordCopy)
  {
    v8 = [(CWFInterface *)self passwordForKnownNetworkProfile:networkCopy error:0];
    v9 = v8;
    if (v8)
    {
      if (v8 == passwordCopy || ([v8 isEqual:passwordCopy] & 1) != 0)
      {
        v10 = CWFGetOSLog();
        if (v10)
        {
          v11 = CWFGetOSLog();
        }

        else
        {
          v11 = MEMORY[0x1E69E9C10];
          v17 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [networkCopy identifier];
          isSystemMode = [networkCopy isSystemMode];
          v20 = "user";
          if (isSystemMode)
          {
            v20 = "system";
          }

          v41 = 138543618;
          v42 = identifier;
          v43 = 2082;
          v44 = v20;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] [nearbysync] Existing password did not change for network %{public}@, will not update %{public}s keychain", &v41, 22);
        }

        v12 = 0;
        goto LABEL_18;
      }

      v15 = CWFGetOSLog();
      if (v15)
      {
        v16 = CWFGetOSLog();
      }

      else
      {
        v16 = MEMORY[0x1E69E9C10];
        v26 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [networkCopy identifier];
        isSystemMode2 = [networkCopy isSystemMode];
        v29 = "user";
        if (isSystemMode2)
        {
          v29 = "system";
        }

        v41 = 138543618;
        v42 = identifier2;
        v43 = 2082;
        v44 = v29;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 0, "[corewifi] [nearbysync] Password changed for network %{public}@, updating the %{public}s keychain", &v41, 22);
      }

      v40 = 0;
      v30 = [(CWFInterface *)self setPassword:passwordCopy knownNetworkProfile:networkCopy error:&v40];
      v12 = v40;
      if (v30)
      {
LABEL_34:
        v21 = 1;
        goto LABEL_35;
      }

      v33 = CWFGetOSLog();
      if (v33)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v36 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        if ([networkCopy isSystemMode])
        {
          v37 = "system";
        }

        else
        {
          v37 = "user";
        }

        identifier3 = [networkCopy identifier];
        v41 = 136315650;
        v42 = v37;
        v43 = 2114;
        v44 = identifier3;
        v45 = 2114;
        v46 = v12;
        LODWORD(v38) = 32;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[corewifi] [nearbysync] FAILED to add password to the %s keychain for %{public}@, returned error %{public}@", &v41, v38);
        goto LABEL_49;
      }
    }

    else
    {
      v13 = CWFGetOSLog();
      if (v13)
      {
        v14 = CWFGetOSLog();
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v22 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if ([networkCopy isSystemMode])
        {
          v23 = "system";
        }

        else
        {
          v23 = "user";
        }

        identifier4 = [networkCopy identifier];
        v41 = 136446466;
        v42 = v23;
        v43 = 2114;
        v44 = identifier4;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 0, "[corewifi] [nearbysync] Adding password to the %{public}s keychain for network %{public}@", &v41, 22);
      }

      v39 = 0;
      v25 = [(CWFInterface *)self setPassword:passwordCopy knownNetworkProfile:networkCopy error:&v39];
      v12 = v39;
      if (v25)
      {
        v9 = 0;
        goto LABEL_34;
      }

      v32 = CWFGetOSLog();
      if (v32)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v34 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        identifier3 = [networkCopy identifier];
        v41 = 138543618;
        v42 = identifier3;
        v43 = 2114;
        v44 = v12;
        LODWORD(v38) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[corewifi] [nearbysync] FAILED to add password to the user keychain for %{public}@, returned error %{public}@", &v41, v38);
LABEL_49:
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  v9 = 0;
  v12 = 0;
LABEL_19:
  v21 = 0;
LABEL_35:

  return v21;
}

- (void)__receivedNearbySyncableNetwork:(id)network
{
  v57 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  v5 = [CWFNetworkProfile alloc];
  recentlyRemovedNetworkKVS = self->_recentlyRemovedNetworkKVS;
  knownNetworkProfile = [networkCopy knownNetworkProfile];
  identifier = [knownNetworkProfile identifier];
  v9 = [(CWFKeyValueStore *)recentlyRemovedNetworkKVS objectForKey:identifier];
  v10 = [(CWFNetworkProfile *)v5 initWithExternalForm:v9];

  knownNetworkProfile2 = [networkCopy knownNetworkProfile];
  addedAt = [knownNetworkProfile2 addedAt];

  removedAt = [(CWFNetworkProfile *)v10 removedAt];
  [addedAt timeIntervalSinceReferenceDate];
  v15 = v14;
  [removedAt timeIntervalSinceReferenceDate];
  if (v15 <= v16)
  {
    v41 = CWFGetOSLog();
    if (v41)
    {
      v31 = CWFGetOSLog();
    }

    else
    {
      v31 = MEMORY[0x1E69E9C10];
      v44 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&v31->super, OS_LOG_TYPE_INFO))
    {
      v45 = sub_1E0BCC248(removedAt);
      v53 = 138412546;
      v54 = v45;
      v55 = 2112;
      v56 = networkCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v31, 1, "[corewifi] [nearbysync] Received known network was more recently removed by the local device (%@), not adding ({public}%@)", &v53, 22);
    }

    v30 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  knownNetworkProfile3 = [networkCopy knownNetworkProfile];
  v18 = [knownNetworkProfile3 copy];

  password = [networkCopy password];

  if (password)
  {
    password2 = [networkCopy password];
    v21 = [(CWFWiFiUserAgent *)self __updateKeychainPassword:password2 network:v18];

    v22 = !v21;
  }

  else
  {
    v22 = 1;
  }

  knownNetworkProfile4 = [networkCopy knownNetworkProfile];
  v24 = [(CWFInterface *)self knownNetworkProfileMatchingNetworkProfile:knownNetworkProfile4];

  v25 = CWFGetOSLog();
  v26 = v25;
  if (!v24)
  {
    if (v25)
    {
      v27 = CWFGetOSLog();
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v53 = 138543362;
      v54 = networkCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v27, 0, "[corewifi] [nearbysync] Adding network to local known networks list (%{public}@)", &v53, 12);
    }

    [v18 setAddReason:19];
    v51 = 0;
    v29 = [(CWFInterface *)self addKnownNetworkProfile:v18 error:&v51];
    v30 = v51;
    if (!v29)
    {
      v43 = CWFGetOSLog();
      if (v43)
      {
        v31 = CWFGetOSLog();
      }

      else
      {
        v31 = MEMORY[0x1E69E9C10];
        v47 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(&v31->super, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [v18 identifier];
        v53 = 138543618;
        v54 = identifier2;
        v55 = 2114;
        v56 = v30;
        LODWORD(v49) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v31, 16, "[corewifi] [nearbysync] FAILED to remember local network %{public}@, returned error %{public}@", &v53, v49);
      }

      goto LABEL_16;
    }

LABEL_12:
    v31 = objc_alloc_init(CWFAutoJoinParameters);
    [(CWFAutoJoinParameters *)v31 setMode:1];
    [(CWFAutoJoinParameters *)v31 setTrigger:64];
    [(CWFAutoJoinParameters *)v31 setTargetNetworkProfile:v18];
    channel = [networkCopy channel];
    if (channel)
    {
      [networkCopy channel];
      v50 = networkCopy;
      selfCopy = self;
      v34 = v18;
      v35 = v30;
      v36 = removedAt;
      v37 = addedAt;
      v39 = v38 = v10;
      v52 = v39;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      [(CWFAutoJoinParameters *)v31 setPreferredChannels:v40];

      v10 = v38;
      addedAt = v37;
      removedAt = v36;
      v30 = v35;
      v18 = v34;
      self = selfCopy;
      networkCopy = v50;
    }

    else
    {
      [(CWFAutoJoinParameters *)v31 setPreferredChannels:0];
    }

    [(CWFInterface *)self performAutoJoinWithParameters:v31 reply:0];
LABEL_16:

    goto LABEL_17;
  }

  if (v25)
  {
    v42 = CWFGetOSLog();
  }

  else
  {
    v42 = MEMORY[0x1E69E9C10];
    v46 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v53 = 138543362;
    v54 = networkCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v42, 1, "[corewifi] [nearbysync] Received known network already exists in local known networks list, not adding (%{public}@)", &v53, 12);
  }

  v30 = 0;
  if ((v22 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_17:
}

- (void)__receivedNearbyRecommendedNetwork:(id)network
{
  v46 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  v5 = [CWFNetworkProfile alloc];
  recentlyRemovedNetworkKVS = self->_recentlyRemovedNetworkKVS;
  knownNetworkProfile = [networkCopy knownNetworkProfile];
  identifier = [knownNetworkProfile identifier];
  v9 = [(CWFKeyValueStore *)recentlyRemovedNetworkKVS objectForKey:identifier];
  v10 = [(CWFNetworkProfile *)v5 initWithExternalForm:v9];

  knownNetworkProfile2 = [networkCopy knownNetworkProfile];
  addedAt = [knownNetworkProfile2 addedAt];

  removedAt = [(CWFNetworkProfile *)v10 removedAt];
  [addedAt timeIntervalSinceReferenceDate];
  v15 = v14;
  [removedAt timeIntervalSinceReferenceDate];
  if (v15 <= v16)
  {
    v34 = CWFGetOSLog();
    if (v34)
    {
      v23 = CWFGetOSLog();
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v37 = sub_1E0BCC248(removedAt);
      v42 = 138543618;
      v43 = v37;
      v44 = 2114;
      v45 = networkCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v23, 1, "[corewifi] [nearbysync] Received known network was more recently removed by the local device (%{public}@), not adding (%{public}@)", &v42, 22);
    }
  }

  else
  {
    knownNetworkProfile3 = [networkCopy knownNetworkProfile];
    v18 = [(CWFInterface *)self knownNetworkProfileMatchingNetworkProfile:knownNetworkProfile3];

    if (v18)
    {
      v35 = CWFGetOSLog();
      if (v35)
      {
        v23 = CWFGetOSLog();
      }

      else
      {
        v23 = MEMORY[0x1E69E9C10];
        v38 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v42 = 138543362;
        v43 = networkCopy;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v23, 1, "[corewifi] [nearbysync] Recommended network already exists in local known networks list, not adding (%{public}@)", &v42, 12);
      }
    }

    else
    {
      captivePortalCredentials = [networkCopy captivePortalCredentials];

      v40 = removedAt;
      if (captivePortalCredentials)
      {
        captivePortalCredentials2 = [networkCopy captivePortalCredentials];
        knownNetworkProfile4 = [networkCopy knownNetworkProfile];
        v41 = 0;
        v22 = [(CWFInterface *)self setCaptivePortalCredentials:captivePortalCredentials2 knownNetworkProfile:knownNetworkProfile4 error:&v41];
        v23 = v41;

        if (!v22)
        {
          v24 = CWFGetOSLog();
          if (v24)
          {
            v25 = CWFGetOSLog();
          }

          else
          {
            v25 = MEMORY[0x1E69E9C10];
            v39 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v42 = 138543618;
            v43 = v23;
            v44 = 2114;
            v45 = networkCopy;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v25, 1, "[corewifi] [nearbysync] Failed to set captive portal credentials in the keychain (error=%{public}@) for %{public}@", &v42, 22);
          }
        }
      }

      else
      {
        v23 = 0;
      }

      password = [networkCopy password];

      if (password)
      {
        password2 = [networkCopy password];
        knownNetworkProfile5 = [networkCopy knownNetworkProfile];
        [(CWFWiFiUserAgent *)self __updateKeychainPassword:password2 network:knownNetworkProfile5];
      }

      nearbyRecommendedNetworksKVS = self->_nearbyRecommendedNetworksKVS;
      knownNetworkProfile6 = [networkCopy knownNetworkProfile];
      externalForm = [knownNetworkProfile6 externalForm];
      knownNetworkProfile7 = [networkCopy knownNetworkProfile];
      identifier2 = [knownNetworkProfile7 identifier];
      [(CWFKeyValueStore *)nearbyRecommendedNetworksKVS setObject:externalForm forKey:identifier2];

      [(CWFKeyValueStore *)self->_nearbyRecommendedNetworksKVS synchronize];
      removedAt = v40;
    }
  }
}

- (void)__purgeExpiredCaptiveNetworkCredentials
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = sub_1E0BF0B7C();
  if (v4)
  {
    if (!self->_captiveCredentialsExpirationTimer)
    {
      v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_internalQueue);
      captiveCredentialsExpirationTimer = self->_captiveCredentialsExpirationTimer;
      self->_captiveCredentialsExpirationTimer = v5;

      v7 = self->_captiveCredentialsExpirationTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_1E0D3614C;
      handler[3] = &unk_1E86E6010;
      handler[4] = self;
      dispatch_source_set_event_handler(v7, handler);
      dispatch_source_set_timer(self->_captiveCredentialsExpirationTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(self->_captiveCredentialsExpirationTimer);
    }

    [v4 timeIntervalSinceNow];
    if (v8 * 1000000000.0 < 9.22337204e18)
    {
      [v4 timeIntervalSinceNow];
      v2 = (v9 * 1000000000.0);
    }

    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = v2 / 0x3B9ACA00;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] [nearbysync] Scheduling next expired captive network credentials purge in %llds", &v16);
    }

    v13 = self->_captiveCredentialsExpirationTimer;
    v14 = dispatch_walltime(0, v2);
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)__updateNearbyRecommendedNetworksExpirationTimer
{
  v26[1] = *MEMORY[0x1E69E9840];
  __loadNearbyRecommendedNetworksFromKVS = [(CWFWiFiUserAgent *)self __loadNearbyRecommendedNetworksFromKVS];
  v4 = [__loadNearbyRecommendedNetworksFromKVS mutableCopy];

  if ([v4 count])
  {
    v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B89D30];
    v26[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [v4 sortUsingDescriptors:v6];

    if (!self->_nearbyRecommendedNetworksExpirationTimer)
    {
      v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_internalQueue);
      nearbyRecommendedNetworksExpirationTimer = self->_nearbyRecommendedNetworksExpirationTimer;
      self->_nearbyRecommendedNetworksExpirationTimer = v7;

      v9 = self->_nearbyRecommendedNetworksExpirationTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_1E0D364FC;
      handler[3] = &unk_1E86E6010;
      handler[4] = self;
      dispatch_source_set_event_handler(v9, handler);
      dispatch_source_set_timer(self->_nearbyRecommendedNetworksExpirationTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(self->_nearbyRecommendedNetworksExpirationTimer);
    }

    v10 = &unk_1E0D81000;
    if (os_variant_has_internal_content())
    {
      if (_os_feature_enabled_impl())
      {
        v11 = 300.0;
      }

      else
      {
        v11 = 604800.0;
      }
    }

    else
    {
      v11 = 604800.0;
    }

    lastObject = [v4 lastObject];
    receivedFromDeviceAt = [lastObject receivedFromDeviceAt];
    [receivedFromDeviceAt timeIntervalSinceNow];
    if ((v11 + v14) * 1000000000.0 < 9.22337204e18)
    {
      lastObject2 = [v4 lastObject];
      receivedFromDeviceAt2 = [lastObject2 receivedFromDeviceAt];
      [receivedFromDeviceAt2 timeIntervalSinceNow];
      v10 = ((v11 + v17) * 1000000000.0);
    }

    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 134217984;
      v25 = v10 / 0x3B9ACA00;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 0, "[corewifi] [nearbysync] Scheduling next expired nearby recommended networks purge in %llds", &v24);
    }

    v21 = self->_nearbyRecommendedNetworksExpirationTimer;
    v22 = dispatch_walltime(0, v10);
    dispatch_source_set_timer(v21, v22, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)__purgeExpiredNearbyRecommendedNetworks
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = 604800;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = 300;
    }

    v25 = v3;
  }

  else
  {
    v25 = 604800;
  }

  __loadNearbyRecommendedNetworksFromKVS = [(CWFWiFiUserAgent *)self __loadNearbyRecommendedNetworksFromKVS];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [__loadNearbyRecommendedNetworksFromKVS countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    v8 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(__loadNearbyRecommendedNetworksFromKVS);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        receivedFromDeviceAt = [v10 receivedFromDeviceAt];
        [receivedFromDeviceAt timeIntervalSinceNow];
        v13 = v12;
        receivedFromDeviceAt2 = [v10 receivedFromDeviceAt];
        [receivedFromDeviceAt2 timeIntervalSinceNow];
        v16 = v15;
        if (v13 < 0.0)
        {
          v16 = -v15;
        }

        if (v16 <= v25)
        {
          if ([v10 isNearbyRecommendable])
          {
            continue;
          }

          v19 = CWFGetOSLog();
          if (v19)
          {
            v18 = CWFGetOSLog();
          }

          else
          {
            v21 = v8;
            v18 = v8;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v30 = 138543362;
            v31 = v10;
            LODWORD(v24) = 12;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 0, "[corewifi] [nearbysync] Previously recommended network is no longer recommendable, removing (%{public}@)", &v30, v24);
          }
        }

        else
        {
          v17 = CWFGetOSLog();
          if (v17)
          {
            v18 = CWFGetOSLog();
          }

          else
          {
            v20 = v8;
            v18 = v8;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v30 = 134218242;
            v31 = v25;
            v32 = 2114;
            v33 = v10;
            LODWORD(v24) = 22;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 0, "[corewifi] [nearbysync] Recommended network age has expired (maxAge=%ld), removing (%{public}@)", &v30, v24);
          }
        }

        nearbyRecommendedNetworksKVS = self->_nearbyRecommendedNetworksKVS;
        identifier = [v10 identifier];
        [(CWFKeyValueStore *)nearbyRecommendedNetworksKVS setObject:0 forKey:identifier];
      }

      v6 = [__loadNearbyRecommendedNetworksFromKVS countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v6);
  }

  [(CWFKeyValueStore *)self->_nearbyRecommendedNetworksKVS synchronize];
}

- (void)__updateNearbyRecommendedNetworks
{
  v27[1] = *MEMORY[0x1E69E9840];
  __loadNearbyRecommendedNetworksFromKVS = [(CWFWiFiUserAgent *)self __loadNearbyRecommendedNetworksFromKVS];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v4 = orderedSet;
  if (__loadNearbyRecommendedNetworksFromKVS)
  {
    [orderedSet addObjectsFromArray:__loadNearbyRecommendedNetworksFromKVS];
  }

  v20 = __loadNearbyRecommendedNetworksFromKVS;
  v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B899B0];
  v27[0] = v19;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  [v4 sortUsingDescriptors:v5];

  array = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B8C180];
  [array addObject:?];
  v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 selector:sel_compareSupportedSecurityTypes_];
  [array addObject:?];
  [v4 sortUsingDescriptors:array];
  v7 = [MEMORY[0x1E695DFA8] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    orderedSet2 = 0;
    v12 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if ([v14 isNearbyRecommendable])
        {
          sSID = [v14 SSID];
          if (sSID && ([v7 containsObject:sSID] & 1) == 0)
          {
            [v7 addObject:sSID];
            if (!orderedSet2)
            {
              orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
            }

            [orderedSet2 addObject:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  else
  {
    orderedSet2 = 0;
  }

  array2 = [orderedSet2 array];
  [(CWFWiFiUserAgent *)self setNearbyRecommendedNetworks:array2];

  [(CWFWiFiUserAgent *)self __updateNearbyRecommendedNetworksExpirationTimer];
}

- (void)__setupNearbySyncManager
{
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0D36DA4;
  v9[3] = &unk_1E86E7160;
  objc_copyWeak(&v10, &location);
  [(CWFNearbySyncManager *)self->_nearbySyncManager setAllowNearbySyncableNetworkHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D36E64;
  v7[3] = &unk_1E86E98B8;
  objc_copyWeak(&v8, &location);
  [(CWFNearbySyncManager *)self->_nearbySyncManager setAutoJoinAssistEventHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0D37194;
  v5[3] = &unk_1E86E98B8;
  objc_copyWeak(&v6, &location);
  [(CWFNearbySyncManager *)self->_nearbySyncManager setRestoredBackhaulEventHandler:v5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E0D3781C;
  v3[3] = &unk_1E86E98E0;
  objc_copyWeak(&v4, &location);
  [(CWFNearbySyncManager *)self->_nearbySyncManager setConfirmBrokenBackhaulHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)__setupCloudSyncManager
{
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E0D37F08;
  v11[3] = &unk_1E86E7160;
  objc_copyWeak(&v12, &location);
  [(CWFCloudSyncManager *)self->_cloudSyncManager setAllowCloudSyncableNetworkHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0D37FC8;
  v9[3] = &unk_1E86E9908;
  objc_copyWeak(&v10, &location);
  [(CWFCloudSyncManager *)self->_cloudSyncManager setRememberLocalNetworkHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D38178;
  v7[3] = &unk_1E86E9908;
  objc_copyWeak(&v8, &location);
  [(CWFCloudSyncManager *)self->_cloudSyncManager setForgetLocalNetworkHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0D382E8;
  v5[3] = &unk_1E86E9930;
  objc_copyWeak(&v6, &location);
  [(CWFCloudSyncManager *)self->_cloudSyncManager setHasKeychainPasswordHandler:v5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E0D38480;
  v3[3] = &unk_1E86E9958;
  objc_copyWeak(&v4, &location);
  [(CWFCloudSyncManager *)self->_cloudSyncManager setFetchAllLocalNetworksHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)__loadNearbyRecommendedNetworksFromKVS
{
  v19 = *MEMORY[0x1E69E9840];
  dictionaryRepresentation = [(CWFKeyValueStore *)self->_nearbyRecommendedNetworksKVS dictionaryRepresentation];
  allValues = [dictionaryRepresentation allValues];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = allValues;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    array = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [CWFNetworkProfile alloc];
        v12 = [(CWFNetworkProfile *)v11 initWithExternalForm:v10, v14];
        if (v12)
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          [array addObject:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (CWFWiFiUserAgent)initWithXPCClient:(id)client requestParameters:(id)parameters
{
  location[3] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  parametersCopy = parameters;
  v57.receiver = self;
  v57.super_class = CWFWiFiUserAgent;
  v8 = [(CWFInterface *)&v57 initWithXPCClient:clientCopy requestParameters:parametersCopy];
  if (!v8)
  {
    goto LABEL_71;
  }

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.corewifi.user-agent", v9);
  internalQueue = v8->_internalQueue;
  v8->_internalQueue = v10;

  if (!v8->_internalQueue)
  {
    goto LABEL_71;
  }

  v12 = [[CWFKeyValueStore alloc] initWithType:2 identifier:@"com.apple.wifi.removed-networks"];
  recentlyRemovedNetworkKVS = v8->_recentlyRemovedNetworkKVS;
  v8->_recentlyRemovedNetworkKVS = v12;

  if (!v8->_recentlyRemovedNetworkKVS)
  {
    goto LABEL_71;
  }

  v14 = [[CWFKeyValueStore alloc] initWithType:2 identifier:@"com.apple.wifi.nearby-recommended-networks"];
  nearbyRecommendedNetworksKVS = v8->_nearbyRecommendedNetworksKVS;
  v8->_nearbyRecommendedNetworksKVS = v14;

  if (!v8->_nearbyRecommendedNetworksKVS)
  {
    goto LABEL_71;
  }

  objc_initWeak(location, v8);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = sub_1E0D38F80;
  v55[3] = &unk_1E86E8C38;
  objc_copyWeak(&v56, location);
  [(CWFKeyValueStore *)v8->_nearbyRecommendedNetworksKVS setEventHandler:v55];
  objc_destroyWeak(&v56);
  objc_destroyWeak(location);
  v16 = CWFGetOSLog();
  if (v16)
  {
    v17 = CWFGetOSLog();
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = _os_feature_enabled_impl();
    v20 = "DISABLED";
    if (v19)
    {
      v20 = "ENABLED";
    }

    LODWORD(location[0]) = 136446210;
    *(location + 4) = v20;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v17, 0, "[corewifi] [cloudsync] Unified Cloud Sync %{public}s", location, 12);
  }

  v21 = CWFGetOSLog();
  if (v21)
  {
    v22 = CWFGetOSLog();
  }

  else
  {
    v22 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = _os_feature_enabled_impl();
    v25 = "DISABLED";
    if (v24)
    {
      v25 = "ENABLED";
    }

    LODWORD(location[0]) = 136446210;
    *(location + 4) = v25;
    LODWORD(v54) = 12;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 0, "[corewifi] [nearbysync] Nearby AutoJoin Assist %{public}s", location, v54);
  }

  v26 = CWFGetOSLog();
  if (v26)
  {
    v27 = CWFGetOSLog();
  }

  else
  {
    v27 = MEMORY[0x1E69E9C10];
    v28 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      v29 = _os_feature_enabled_impl();
      v30 = "ENABLED";
      if (v29)
      {
        v30 = "ENABLED (testable)";
      }
    }

    else
    {
      v30 = "DISABLED";
    }

    LODWORD(location[0]) = 136446210;
    *(location + 4) = v30;
    LODWORD(v54) = 12;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v27, 0, "[corewifi] [nearbysync] Nearby Captive Assist %{public}s", location, v54);
  }

  v31 = CWFGetOSLog();
  if (v31)
  {
    v32 = CWFGetOSLog();
  }

  else
  {
    v32 = MEMORY[0x1E69E9C10];
    v33 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    if (_os_feature_enabled_impl())
    {
      v34 = "DISABLED";
      if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
      {
        v34 = "ENABLED";
      }
    }

    else
    {
      v34 = "DISABLED";
    }

    LODWORD(location[0]) = 136446210;
    *(location + 4) = v34;
    LODWORD(v54) = 12;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v32, 0, "[corewifi] [nearbysync] Nearby Captive Assist Recommendation UI %{public}s", location, v54);
  }

  v35 = CWFGetOSLog();
  if (v35)
  {
    v36 = CWFGetOSLog();
  }

  else
  {
    v36 = MEMORY[0x1E69E9C10];
    v37 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    if (_os_feature_enabled_impl())
    {
      v38 = "ENABLED";
      if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
      {
        v38 = "ENABLED (testable)";
      }
    }

    else
    {
      v38 = "DISABLED";
    }

    LODWORD(location[0]) = 136446210;
    *(location + 4) = v38;
    LODWORD(v54) = 12;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v36, 0, "[corewifi] [bbh] BBH PH Fallback %{public}s", location, v54);
  }

  v39 = CWFGetOSLog();
  if (v39)
  {
    v40 = CWFGetOSLog();
  }

  else
  {
    v40 = MEMORY[0x1E69E9C10];
    v41 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v42 = "DISABLED";
    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      v42 = "ENABLED";
    }

    LODWORD(location[0]) = 136446210;
    *(location + 4) = v42;
    LODWORD(v54) = 12;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v40, 0, "[corewifi] [bbh] BBH PH Fallback Trigger %{public}s", location, v54);
  }

  if (_os_feature_enabled_impl())
  {
    v43 = objc_alloc_init(CWFCloudSyncManager);
    cloudSyncManager = v8->_cloudSyncManager;
    v8->_cloudSyncManager = v43;

    if (v8->_cloudSyncManager)
    {
      [(CWFWiFiUserAgent *)v8 __setupCloudSyncManager];
      goto LABEL_63;
    }

LABEL_71:
    [(CWFWiFiUserAgent *)v8 invalidate];
    userNotificationCenter5 = v8;
    v8 = 0;
    goto LABEL_69;
  }

LABEL_63:
  if (_os_feature_enabled_impl())
  {
    v45 = objc_alloc_init(CWFNearbySyncManager);
    nearbySyncManager = v8->_nearbySyncManager;
    v8->_nearbySyncManager = v45;

    [(CWFWiFiUserAgent *)v8 __setupNearbySyncManager];
    [(CWFWiFiUserAgent *)v8 __setupEventHandler];
  }

  if (_os_feature_enabled_impl())
  {
    sub_1E0D39094();
    if (objc_opt_class())
    {
      v47 = [objc_alloc(sub_1E0D39094()) initWithBundleIdentifier:@"com.apple.corewifi.usernotifications"];
      [(CWFWiFiUserAgent *)v8 setUserNotificationCenter:v47];

      userNotificationCenter = [(CWFWiFiUserAgent *)v8 userNotificationCenter];

      if (userNotificationCenter)
      {
        userNotificationCenter2 = [(CWFWiFiUserAgent *)v8 userNotificationCenter];
        [userNotificationCenter2 setDelegate:v8];

        userNotificationCenter3 = [(CWFWiFiUserAgent *)v8 userNotificationCenter];
        [userNotificationCenter3 setWantsNotificationResponsesDelivered];

        userNotificationCenter4 = [(CWFWiFiUserAgent *)v8 userNotificationCenter];
        [userNotificationCenter4 requestAuthorizationWithOptions:7 completionHandler:&unk_1F5B8C1A0];

        userNotificationCenter5 = [(CWFWiFiUserAgent *)v8 userNotificationCenter];
        [userNotificationCenter5 removeAllDeliveredNotifications];
LABEL_69:
      }
    }
  }

  return v8;
}

- (void)__cancelRecommendedNetworkNotificationTimeout
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D39344;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)__scheduleRecommendedNetworkNotificationTimeout
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D39420;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)__showWiFiNetworkSharingAskToShareNotificationForClientID:(id)d network:(id)network accessoryDisplayName:(id)name completion:(id)completion
{
  v73[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  networkCopy = network;
  nameCopy = name;
  completionCopy = completion;
  askToShareUserNotificationRequest = [(CWFWiFiUserAgent *)self askToShareUserNotificationRequest];

  if (askToShareUserNotificationRequest)
  {
    userNotificationCenter = [(CWFWiFiUserAgent *)self userNotificationCenter];
    askToShareUserNotificationRequest2 = [(CWFWiFiUserAgent *)self askToShareUserNotificationRequest];
    identifier = [askToShareUserNotificationRequest2 identifier];
    v73[0] = identifier;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
    [userNotificationCenter removePendingNotificationRequestsWithIdentifiers:v16];

    userNotificationCenter2 = [(CWFWiFiUserAgent *)self userNotificationCenter];
    askToShareUserNotificationRequest3 = [(CWFWiFiUserAgent *)self askToShareUserNotificationRequest];
    identifier2 = [askToShareUserNotificationRequest3 identifier];
    v72 = identifier2;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
    [userNotificationCenter2 removeDeliveredNotificationsWithIdentifiers:v20];

    [(CWFWiFiUserAgent *)self setAskToShareUserNotificationRequest:0];
  }

  presentAskToShareUserNotificationCompletionHandler = [(CWFWiFiUserAgent *)self presentAskToShareUserNotificationCompletionHandler];

  if (presentAskToShareUserNotificationCompletionHandler)
  {
    presentAskToShareUserNotificationCompletionHandler2 = [(CWFWiFiUserAgent *)self presentAskToShareUserNotificationCompletionHandler];
    v23 = *MEMORY[0x1E696A798];
    v24 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x59uLL);
    v25 = CWFErrorWithDescription(v23, 89, v24);
    (presentAskToShareUserNotificationCompletionHandler2)[2](presentAskToShareUserNotificationCompletionHandler2, v25, 0);
  }

  [(CWFWiFiUserAgent *)self setPresentAskToShareUserNotificationCompletionHandler:completionCopy];
  v65 = 0;
  v66 = &v65;
  v67 = 0x2050000000;
  v26 = qword_1ECE86A08;
  v68 = qword_1ECE86A08;
  if (!qword_1ECE86A08)
  {
    location = MEMORY[0x1E69E9820];
    v61 = 3221225472;
    v62 = sub_1E0D3EE4C;
    v63 = &unk_1E86E5600;
    v64 = &v65;
    sub_1E0D3ED08(0);
    v66[3] = objc_getClass("UNMutableNotificationContent");
    qword_1ECE86A08 = *(v64[1] + 24);
    v26 = v66[3];
  }

  v27 = v26;
  _Block_object_dispose(&v65, 8);
  v28 = objc_alloc_init(v26);
  if (sub_1E0BF1F78())
  {
    v29 = @"kWiFiLocWiFiNetworkSharingUserNoticationTitleCH";
  }

  else
  {
    v29 = @"kWiFiLocWiFiNetworkSharingUserNoticationTitle";
  }

  v30 = [MEMORY[0x1E696AEC0] localizedUserNotificationStringForKey:v29 arguments:0];
  [v28 setTitle:v30];

  v31 = MEMORY[0x1E696AEC0];
  v71[0] = nameCopy;
  network = [networkCopy network];
  networkName = [network networkName];
  v71[1] = networkName;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
  v35 = [v31 localizedUserNotificationStringForKey:@"kWiFiLocWiFiNetworkSharingUserNoticationBody" arguments:v34];
  [v28 setBody:v35];

  v65 = 0;
  v66 = &v65;
  v67 = 0x2050000000;
  v36 = qword_1ECE86A10;
  v68 = qword_1ECE86A10;
  if (!qword_1ECE86A10)
  {
    location = MEMORY[0x1E69E9820];
    v61 = 3221225472;
    v62 = sub_1E0D3EEA0;
    v63 = &unk_1E86E5600;
    v64 = &v65;
    sub_1E0D3ED08(0);
    v66[3] = objc_getClass("UNNotificationSound");
    qword_1ECE86A10 = *(v64[1] + 24);
    v36 = v66[3];
  }

  v37 = v36;
  _Block_object_dispose(&v65, 8);
  defaultSound = [v36 defaultSound];
  [v28 setSound:defaultSound];

  [v28 setCategoryIdentifier:@"wifinetworksharing.asktoshare"];
  v65 = 0;
  v66 = &v65;
  v67 = 0x2050000000;
  v39 = qword_1ECE86A18;
  v68 = qword_1ECE86A18;
  if (!qword_1ECE86A18)
  {
    location = MEMORY[0x1E69E9820];
    v61 = 3221225472;
    v62 = sub_1E0D3EEF4;
    v63 = &unk_1E86E5600;
    v64 = &v65;
    sub_1E0D3ED08(0);
    v66[3] = objc_getClass("UNNotificationIcon");
    qword_1ECE86A18 = *(v64[1] + 24);
    v39 = v66[3];
  }

  v40 = v39;
  _Block_object_dispose(&v65, 8);
  bundleID = [dCopy bundleID];
  v42 = [v39 iconForApplicationIdentifier:bundleID];
  [v28 setIcon:v42];

  v69[0] = @"ClientID";
  v43 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dCopy requiringSecureCoding:1 error:0];
  v70[0] = v43;
  v69[1] = @"AskToShareNetwork";
  v44 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:networkCopy requiringSecureCoding:1 error:0];
  v70[1] = v44;
  v69[2] = @"AccessoryDisplayName";
  v70[2] = nameCopy;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:3];
  [v28 setUserInfo:v45];

  [v28 setShouldBackgroundDefaultAction:1];
  v46 = MEMORY[0x1E696AEC0];
  accessoryID = [dCopy accessoryID];
  bundleID2 = [dCopy bundleID];
  network2 = [networkCopy network];
  wifiNetworkSharingNetworkID = [network2 wifiNetworkSharingNetworkID];
  v51 = [v46 stringWithFormat:@"%@/%@/%@", accessoryID, bundleID2, wifiNetworkSharingNetworkID];

  v65 = 0;
  v66 = &v65;
  v67 = 0x2050000000;
  v52 = qword_1ECE86A20;
  v68 = qword_1ECE86A20;
  if (!qword_1ECE86A20)
  {
    location = MEMORY[0x1E69E9820];
    v61 = 3221225472;
    v62 = sub_1E0D3EF48;
    v63 = &unk_1E86E5600;
    v64 = &v65;
    sub_1E0D3ED08(0);
    v66[3] = objc_getClass("UNNotificationRequest");
    qword_1ECE86A20 = *(v64[1] + 24);
    v52 = v66[3];
  }

  v53 = v52;
  _Block_object_dispose(&v65, 8);
  v54 = [v52 requestWithIdentifier:v51 content:v28 trigger:0 destinations:5];
  [(CWFWiFiUserAgent *)self setAskToShareUserNotificationRequest:v54];
  objc_initWeak(&location, self);
  userNotificationCenter3 = [(CWFWiFiUserAgent *)self userNotificationCenter];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = sub_1E0D3A030;
  v58[3] = &unk_1E86E99A0;
  objc_copyWeak(&v59, &location);
  [userNotificationCenter3 addNotificationRequest:v54 withCompletionHandler:v58];

  objc_destroyWeak(&v59);
  objc_destroyWeak(&location);
}

- (void)__launchWiFiNetworkSharingAuthorizationProxCardForAccessoryID:(id)d accessoryName:(id)name appBundleID:(id)iD completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v8 = [MEMORY[0x1E698F478] interfaceWithIdentifier:@"com.apple.AccessorySetupUI.services.presenter"];
  v9 = [MEMORY[0x1E698E718] protocolForProtocol:&unk_1F5BE84C8];
  [v8 setServer:v9];

  v10 = [MEMORY[0x1E698E718] protocolForProtocol:&unk_1F5BE8528];
  [v8 setClient:v10];

  [v8 setClientMessagingExpectation:0];
  v11 = [MEMORY[0x1E698F4A0] endpointForMachName:@"com.apple.AccessorySetupUI" service:@"com.apple.AccessorySetupUI.services.presenter" instance:0];
  if (v11)
  {
    v12 = [MEMORY[0x1E698F488] connectionWithEndpoint:v11];
    v13 = v12;
    if (v12 && ([v12 conformsToProtocol:&unk_1F5BE85D0] & 1) != 0)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_1E0D3A69C;
      v30[3] = &unk_1E86E9A10;
      v31 = v8;
      selfCopy = self;
      [v13 configureConnection:v30];
      launchAngelConnection = [(CWFWiFiUserAgent *)self launchAngelConnection];
      [launchAngelConnection invalidate];

      presentAuthorizationProxCardCompletionHandler = [(CWFWiFiUserAgent *)self presentAuthorizationProxCardCompletionHandler];

      if (presentAuthorizationProxCardCompletionHandler)
      {
        presentAuthorizationProxCardCompletionHandler2 = [(CWFWiFiUserAgent *)self presentAuthorizationProxCardCompletionHandler];
        presentAuthorizationProxCardCompletionHandler2[2](presentAuthorizationProxCardCompletionHandler2, 0, 0);
      }

      [(CWFWiFiUserAgent *)self setLaunchAngelConnection:v13];
      [(CWFWiFiUserAgent *)self setPresentAuthorizationProxCardCompletionHandler:completionCopy];
      [v13 activate];
      v17 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
      v33 = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      v19 = [v13 remoteTargetWithLaunchingAssertionAttributes:v18];

      v20 = v31;
    }

    else
    {
      v21 = CWFGetOSLog();
      if (v21)
      {
        v22 = CWFGetOSLog();
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v34 = 136446722;
        v35 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAuthorizationProxCardForAccessoryID:accessoryName:appBundleID:completion:]";
        v36 = 2082;
        v37 = "CWFWiFiUserAgent.m";
        v38 = 1024;
        v39 = 1021;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 16, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] No valid endpoint's connection available", &v34, 28);
      }

      if (!completionCopy)
      {
        goto LABEL_22;
      }

      v26 = *MEMORY[0x1E696A798];
      v20 = CWFErrorDescription(*MEMORY[0x1E696A798], 2uLL);
      v27 = CWFErrorWithDescription(v26, 2, v20);
      completionCopy[2](completionCopy, v27, 0);
    }

LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v23 = CWFGetOSLog();
  if (v23)
  {
    v24 = CWFGetOSLog();
  }

  else
  {
    v24 = MEMORY[0x1E69E9C10];
    v28 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v34 = 136446722;
    v35 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAuthorizationProxCardForAccessoryID:accessoryName:appBundleID:completion:]";
    v36 = 2082;
    v37 = "CWFWiFiUserAgent.m";
    v38 = 1024;
    v39 = 1014;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 16, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] No server endpoint available", &v34, 28);
  }

  if (completionCopy)
  {
    v29 = *MEMORY[0x1E696A798];
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 2uLL);
    v20 = CWFErrorWithDescription(v29, 2, v13);
    completionCopy[2](completionCopy, v20, 0);
    goto LABEL_21;
  }

LABEL_23:
}

- (void)__launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:(id)d accessoryName:(id)name appBundleID:(id)iD completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v8 = [MEMORY[0x1E698F478] interfaceWithIdentifier:@"com.apple.AccessorySetupUI.services.presenter"];
  v9 = [MEMORY[0x1E698E718] protocolForProtocol:&unk_1F5BE84C8];
  [v8 setServer:v9];

  v10 = [MEMORY[0x1E698E718] protocolForProtocol:&unk_1F5BE8528];
  [v8 setClient:v10];

  [v8 setClientMessagingExpectation:0];
  v11 = [MEMORY[0x1E698F4A0] endpointForMachName:@"com.apple.AccessorySetupUI" service:@"com.apple.AccessorySetupUI.services.presenter" instance:0];
  if (v11)
  {
    v12 = [MEMORY[0x1E698F488] connectionWithEndpoint:v11];
    v13 = v12;
    if (v12 && ([v12 conformsToProtocol:&unk_1F5BE85D0] & 1) != 0)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_1E0D3B1B0;
      v30[3] = &unk_1E86E9A10;
      v31 = v8;
      selfCopy = self;
      [v13 configureConnection:v30];
      launchAngelConnection = [(CWFWiFiUserAgent *)self launchAngelConnection];
      [launchAngelConnection invalidate];

      presentAskToShareProxCardCompletionHandler = [(CWFWiFiUserAgent *)self presentAskToShareProxCardCompletionHandler];

      if (presentAskToShareProxCardCompletionHandler)
      {
        presentAskToShareProxCardCompletionHandler2 = [(CWFWiFiUserAgent *)self presentAskToShareProxCardCompletionHandler];
        presentAskToShareProxCardCompletionHandler2[2](presentAskToShareProxCardCompletionHandler2, 0, 0, 0);
      }

      [(CWFWiFiUserAgent *)self setLaunchAngelConnection:v13];
      [(CWFWiFiUserAgent *)self setPresentAskToShareProxCardCompletionHandler:completionCopy];
      [v13 activate];
      v17 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
      v33 = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      v19 = [v13 remoteTargetWithLaunchingAssertionAttributes:v18];

      v20 = v31;
    }

    else
    {
      v21 = CWFGetOSLog();
      if (v21)
      {
        v22 = CWFGetOSLog();
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v34 = 136446722;
        v35 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:accessoryName:appBundleID:completion:]";
        v36 = 2082;
        v37 = "CWFWiFiUserAgent.m";
        v38 = 1024;
        v39 = 1097;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 16, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] No valid endpoint's connection available", &v34, 28);
      }

      if (!completionCopy)
      {
        goto LABEL_22;
      }

      v26 = *MEMORY[0x1E696A798];
      v20 = CWFErrorDescription(*MEMORY[0x1E696A798], 2uLL);
      v27 = CWFErrorWithDescription(v26, 2, v20);
      (*(completionCopy + 2))(completionCopy, v27, 0, 0);
    }

LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v23 = CWFGetOSLog();
  if (v23)
  {
    v24 = CWFGetOSLog();
  }

  else
  {
    v24 = MEMORY[0x1E69E9C10];
    v28 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v34 = 136446722;
    v35 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:accessoryName:appBundleID:completion:]";
    v36 = 2082;
    v37 = "CWFWiFiUserAgent.m";
    v38 = 1024;
    v39 = 1090;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 16, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] No server endpoint available", &v34, 28);
  }

  if (completionCopy)
  {
    v29 = *MEMORY[0x1E696A798];
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 2uLL);
    v20 = CWFErrorWithDescription(v29, 2, v13);
    (*(completionCopy + 2))(completionCopy, v20, 0, 0);
    goto LABEL_21;
  }

LABEL_23:
}

- (void)activate
{
  objc_initWeak(location, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1E0D3BD88;
  v24[3] = &unk_1E86E9A38;
  objc_copyWeak(&v25, location);
  [(CWFInterface *)self setRememberCloudNetworkHandler:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1E0D3C0A8;
  v22[3] = &unk_1E86E9A38;
  objc_copyWeak(&v23, location);
  [(CWFInterface *)self setForgetCloudNetworkHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1E0D3C3C8;
  v20[3] = &unk_1E86E9A60;
  objc_copyWeak(&v21, location);
  [(CWFInterface *)self setQueryCloudNetworksHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1E0D3C62C;
  v18[3] = &unk_1E86E9A88;
  objc_copyWeak(&v19, location);
  [(CWFInterface *)self setDumpLogsHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1E0D3CA70;
  v16[3] = &unk_1E86E9A60;
  objc_copyWeak(&v17, location);
  [(CWFInterface *)self setQueryNearbyRecommendedNetworksHandler:v16];
  [(CWFInterface *)self setQueryCaptivePortalCredentialsHandler:&unk_1F5B8C1E0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E0D3CDA8;
  v14[3] = &unk_1E86E9AD0;
  objc_copyWeak(&v15, location);
  [(CWFInterface *)self setSetCaptivePortalCredentialsHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E0D3D224;
  v12[3] = &unk_1E86E9AF8;
  objc_copyWeak(&v13, location);
  [(CWFInterface *)self setNearbyConfirmBrokenBackhaulHandler:v12];
  [(CWFInterface *)self setAllowBrokenBackhaulPersonalHotspotFallbackHandler:&unk_1F5B8C200];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E0D3D5E8;
  v10[3] = &unk_1E86E8358;
  objc_copyWeak(&v11, location);
  [(CWFInterface *)self setPresentWiFiNetworkSharingAskToShareUserNotificationHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0D3D754;
  v8[3] = &unk_1E86E8308;
  objc_copyWeak(&v9, location);
  [(CWFInterface *)self setPresentWiFiNetworkSharingAskToShareProxCardHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1E0D3D934;
  v6[3] = &unk_1E86E82B8;
  objc_copyWeak(&v7, location);
  [(CWFInterface *)self setPresentWiFiNetworkSharingAuthorizationProxCardHandler:v6];
  v5.receiver = self;
  v5.super_class = CWFWiFiUserAgent;
  [(CWFInterface *)&v5 activate];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D3DB14;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(internalQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(location);
}

- (void)invalidate
{
  [(CWFWiFiUserAgent *)self setAllowCloudSyncableNetworkHandler:0];
  [(CWFWiFiUserAgent *)self setAllowNearbySyncableNetworkHandler:0];
  [(CWFWiFiUserAgent *)self setPresentAskToShareProxCardCompletionHandler:0];
  [(CWFWiFiUserAgent *)self setPresentAskToShareUserNotificationCompletionHandler:0];
  [(CWFCloudSyncManager *)self->_cloudSyncManager invalidate];
  [(CWFNearbySyncManager *)self->_nearbySyncManager invalidate];
  [(CWFKeyValueStore *)self->_recentlyRemovedNetworkKVS invalidate];
  [(CWFKeyValueStore *)self->_nearbyRecommendedNetworksKVS invalidate];
  nearbyRecommendedNetworksExpirationTimer = self->_nearbyRecommendedNetworksExpirationTimer;
  if (nearbyRecommendedNetworksExpirationTimer)
  {
    dispatch_source_cancel(nearbyRecommendedNetworksExpirationTimer);
  }

  captiveCredentialsExpirationTimer = self->_captiveCredentialsExpirationTimer;
  if (captiveCredentialsExpirationTimer)
  {
    dispatch_source_cancel(captiveCredentialsExpirationTimer);
  }

  wifiNetworkSharingAskToShareNotificationStatusTimer = self->_wifiNetworkSharingAskToShareNotificationStatusTimer;
  if (wifiNetworkSharingAskToShareNotificationStatusTimer)
  {
    dispatch_source_cancel(wifiNetworkSharingAskToShareNotificationStatusTimer);
  }

  launchAngelConnection = [(CWFWiFiUserAgent *)self launchAngelConnection];
  [launchAngelConnection invalidate];

  v7.receiver = self;
  v7.super_class = CWFWiFiUserAgent;
  [(CWFInterface *)&v7 invalidate];
}

- (void)pickerDidPresent
{
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 0, "[corewifi] [wifi-network-sharing] ASUI was presented", v5, 2);
  }
}

- (void)pickerDidDismiss:(id)dismiss
{
  v9 = *MEMORY[0x1E69E9840];
  dismissCopy = dismiss;
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = dismissCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 0, "[corewifi] [wifi-network-sharing] ASUI was dismissed (error=%{public}@)", &v7, 12);
  }
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v88 = *MEMORY[0x1E69E9840];
  centerCopy = center;
  responseCopy = response;
  handlerCopy = handler;
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];

  v12 = CWFGetOSLog();
  if (v12)
  {
    v13 = CWFGetOSLog();
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    actionIdentifier = [responseCopy actionIdentifier];
    *v85 = 138543618;
    *&v85[4] = categoryIdentifier;
    *&v85[12] = 2114;
    *&v85[14] = actionIdentifier;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 0, "[corewifi] Received user notification response (category=%{public}@ action=%{public}@)", v85, 22);
  }

  if ([categoryIdentifier isEqualToString:@"wifinetworksharing.asktoshare"])
  {
    [(CWFWiFiUserAgent *)self __cancelRecommendedNetworkNotificationTimeout];
    v16 = MEMORY[0x1E696ACD0];
    v17 = objc_opt_class();
    notification2 = [responseCopy notification];
    request2 = [notification2 request];
    content2 = [request2 content];
    userInfo = [content2 userInfo];
    v22 = [userInfo objectForKeyedSubscript:@"AskToShareNetwork"];
    v76 = [v16 unarchivedObjectOfClass:v17 fromData:v22 error:0];

    v23 = MEMORY[0x1E696ACD0];
    v24 = objc_opt_class();
    notification3 = [responseCopy notification];
    request3 = [notification3 request];
    content3 = [request3 content];
    userInfo2 = [content3 userInfo];
    v29 = [userInfo2 objectForKeyedSubscript:@"ClientID"];
    v30 = [v23 unarchivedObjectOfClass:v24 fromData:v29 error:0];

    notification4 = [responseCopy notification];
    request4 = [notification4 request];
    content4 = [request4 content];
    userInfo3 = [content4 userInfo];
    v35 = [userInfo3 objectForKeyedSubscript:@"AccessoryDisplayName"];

    actionIdentifier2 = [responseCopy actionIdentifier];
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v37 = qword_1ECE86A28;
    v84 = qword_1ECE86A28;
    if (!qword_1ECE86A28)
    {
      *v85 = MEMORY[0x1E69E9820];
      *&v85[8] = 3221225472;
      *&v85[16] = sub_1E0D3EF9C;
      v86 = &unk_1E86E5600;
      v87 = &v81;
      v38 = sub_1E0D3EFEC();
      v39 = dlsym(v38, "UNNotificationSilenceActionIdentifier");
      *(v87[1] + 24) = v39;
      qword_1ECE86A28 = *(v87[1] + 24);
      v37 = v82[3];
    }

    _Block_object_dispose(&v81, 8);
    if (v37)
    {
      v40 = [actionIdentifier2 isEqualToString:*v37];

      if (v40)
      {
        v41 = CWFGetOSLog();
        if (v41)
        {
          v42 = CWFGetOSLog();
        }

        else
        {
          v42 = MEMORY[0x1E69E9C10];
          v57 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          network = [v76 network];
          *v85 = 138543618;
          *&v85[4] = v30;
          *&v85[12] = 2114;
          *&v85[14] = network;
          LODWORD(v75) = 22;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v42, 0, "[corewifi] [wifi-network-sharing] Silenced ask-to-share notification (clientID=%{public}@, network=%{public}@)", v85, v75);
        }

        presentAskToShareUserNotificationCompletionHandler = [(CWFWiFiUserAgent *)self presentAskToShareUserNotificationCompletionHandler];

        if (presentAskToShareUserNotificationCompletionHandler)
        {
          presentAskToShareUserNotificationCompletionHandler2 = [(CWFWiFiUserAgent *)self presentAskToShareUserNotificationCompletionHandler];
          presentAskToShareUserNotificationCompletionHandler2[2](presentAskToShareUserNotificationCompletionHandler2, 0, 2);
        }

LABEL_30:
        [(CWFWiFiUserAgent *)self setPresentAskToShareUserNotificationCompletionHandler:0];
        [(CWFWiFiUserAgent *)self setAskToShareUserNotificationRequest:0];
LABEL_41:

        goto LABEL_42;
      }

      actionIdentifier3 = [responseCopy actionIdentifier];
      v81 = 0;
      v82 = &v81;
      v83 = 0x2020000000;
      v44 = qword_1ECE86A30;
      v84 = qword_1ECE86A30;
      if (!qword_1ECE86A30)
      {
        *v85 = MEMORY[0x1E69E9820];
        *&v85[8] = 3221225472;
        *&v85[16] = sub_1E0D3F09C;
        v86 = &unk_1E86E5600;
        v87 = &v81;
        v45 = sub_1E0D3EFEC();
        v46 = dlsym(v45, "UNNotificationDismissActionIdentifier");
        *(v87[1] + 24) = v46;
        qword_1ECE86A30 = *(v87[1] + 24);
        v44 = v82[3];
      }

      _Block_object_dispose(&v81, 8);
      if (v44)
      {
        v47 = [actionIdentifier3 isEqualToString:*v44];

        if (v47)
        {
          v48 = CWFGetOSLog();
          if (v48)
          {
            v49 = CWFGetOSLog();
          }

          else
          {
            v49 = MEMORY[0x1E69E9C10];
            v61 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            network2 = [v76 network];
            *v85 = 138543618;
            *&v85[4] = v30;
            *&v85[12] = 2114;
            *&v85[14] = network2;
            LODWORD(v75) = 22;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v49, 0, "[corewifi] [wifi-network-sharing] Dismissed ask-to-share notification (clientID=%{public}@, network=%{public}@)", v85, v75);
          }

          presentAskToShareUserNotificationCompletionHandler3 = [(CWFWiFiUserAgent *)self presentAskToShareUserNotificationCompletionHandler];

          if (presentAskToShareUserNotificationCompletionHandler3)
          {
            presentAskToShareUserNotificationCompletionHandler4 = [(CWFWiFiUserAgent *)self presentAskToShareUserNotificationCompletionHandler];
            presentAskToShareUserNotificationCompletionHandler4[2](presentAskToShareUserNotificationCompletionHandler4, 0, 2);
          }

          goto LABEL_30;
        }

        actionIdentifier4 = [responseCopy actionIdentifier];
        v81 = 0;
        v82 = &v81;
        v83 = 0x2020000000;
        v51 = qword_1ECE86A38;
        v84 = qword_1ECE86A38;
        if (!qword_1ECE86A38)
        {
          *v85 = MEMORY[0x1E69E9820];
          *&v85[8] = 3221225472;
          *&v85[16] = sub_1E0D3F0EC;
          v86 = &unk_1E86E5600;
          v87 = &v81;
          v52 = sub_1E0D3EFEC();
          v53 = dlsym(v52, "UNNotificationDefaultActionIdentifier");
          *(v87[1] + 24) = v53;
          qword_1ECE86A38 = *(v87[1] + 24);
          v51 = v82[3];
        }

        _Block_object_dispose(&v81, 8);
        if (v51)
        {
          v54 = [actionIdentifier4 isEqualToString:*v51];

          if (v54)
          {
            v55 = CWFGetOSLog();
            if (v55)
            {
              v56 = CWFGetOSLog();
            }

            else
            {
              v56 = MEMORY[0x1E69E9C10];
              v65 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              network3 = [v76 network];
              *v85 = 138543618;
              *&v85[4] = v30;
              *&v85[12] = 2114;
              *&v85[14] = network3;
              LODWORD(v75) = 22;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v56, 0, "[corewifi] [wifi-network-sharing] Activated ask-to-share notification (clientID=%{public}@, network=%{public}@)", v85, v75);
            }

            accessoryID = [v30 accessoryID];
            bundleID = [v30 bundleID];
            v80[0] = MEMORY[0x1E69E9820];
            v80[1] = 3221225472;
            v80[2] = sub_1E0D3E9E8;
            v80[3] = &unk_1E86E9618;
            v80[4] = self;
            [(CWFWiFiUserAgent *)self __launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:accessoryID accessoryName:v35 appBundleID:bundleID completion:v80];
          }

          goto LABEL_41;
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v74 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getUNNotificationDefaultActionIdentifier(void)"];
        [currentHandler handleFailureInFunction:v74 file:@"CWFWiFiUserAgent.m" lineNumber:70 description:{@"%s", dlerror()}];
      }

      else
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getUNNotificationDismissActionIdentifier(void)"];
        [currentHandler2 handleFailureInFunction:v72 file:@"CWFWiFiUserAgent.m" lineNumber:68 description:{@"%s", dlerror()}];
      }
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v70 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getUNNotificationSilenceActionIdentifier(void)"];
      [currentHandler3 handleFailureInFunction:v70 file:@"CWFWiFiUserAgent.m" lineNumber:69 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

LABEL_42:
  handlerCopy[2](handlerCopy);
}

@end