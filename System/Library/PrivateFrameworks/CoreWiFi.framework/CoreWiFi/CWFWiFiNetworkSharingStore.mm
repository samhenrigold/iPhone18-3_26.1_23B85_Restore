@interface CWFWiFiNetworkSharingStore
- (CWFWiFiNetworkSharingStore)init;
- (id)clientIDs;
- (id)networkMetadataForClientID:(id)d;
- (id)networkMetadataForClientID:(id)d networkID:(id)iD;
- (unint64_t)acknowledgedNetworksUpdateCounterForClientID:(id)d;
- (unint64_t)cachedAuthorizationStatusForClientID:(id)d;
- (unint64_t)networkListUpdateCounterForClientID:(id)d;
- (void)activateWithCompletion:(id)completion;
- (void)incrementNetworksUpdateCounterForClientID:(id)d;
- (void)setAcknowledgedNetworksUpdateCounter:(unint64_t)counter clientID:(id)d;
- (void)setCachedAuthorizationStatus:(unint64_t)status clientID:(id)d;
- (void)setNetworkMetadata:(id)metadata clientID:(id)d networkID:(id)iD;
@end

@implementation CWFWiFiNetworkSharingStore

- (CWFWiFiNetworkSharingStore)init
{
  v6.receiver = self;
  v6.super_class = CWFWiFiNetworkSharingStore;
  v2 = [(CWFWiFiNetworkSharingStore *)&v6 init];
  if (!v2 || (v3 = [[CWFKeyValueStore alloc] initWithType:4 identifier:@"com.apple.wifi.network-sharing"], store = v2->_store, v2->_store = v3, store, !v2->_store))
  {

    return 0;
  }

  return v2;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  [(CWFKeyValueStore *)self->_store activate];
  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v4 = completionCopy;
  }
}

- (id)clientIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  dictionaryRepresentation = [(CWFKeyValueStore *)self->_store dictionaryRepresentation];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D25E04;
  v7[3] = &unk_1E86E9798;
  v5 = v3;
  v8 = v5;
  [dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (unint64_t)cachedAuthorizationStatusForClientID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    store = selfCopy->_store;
    bundleID = [dCopy bundleID];
    v8 = [(CWFKeyValueStore *)store objectForKey:bundleID];
    accessoryID = [dCopy accessoryID];
    v10 = [v8 objectForKey:accessoryID];
    v11 = [v10 objectForKey:@"authorizationStatus"];
    unsignedIntegerValue = [v11 unsignedIntegerValue];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v14 = CWFGetOSLog();
    if (v14)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 136446722;
      v18 = "[CWFWiFiNetworkSharingStore cachedAuthorizationStatusForClientID:]";
      v19 = 2082;
      v20 = "CWFWiFiNetworkSharingStore.m";
      v21 = 1024;
      v22 = 100;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] %{public}s (%{public}s:%u) 'clientID' is NULL", &v17, 28);
    }

    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)setCachedAuthorizationStatus:(unint64_t)status clientID:(id)d
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    store = selfCopy->_store;
    bundleID = [dCopy bundleID];
    v10 = [(CWFKeyValueStore *)store objectForKey:bundleID];
    dictionary = [v10 mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    accessoryID = [dCopy accessoryID];
    v13 = [dictionary objectForKey:accessoryID];
    dictionary2 = [v13 mutableCopy];

    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    }

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:status];
    [dictionary2 setObject:v15 forKey:@"authorizationStatus"];

    accessoryID2 = [dCopy accessoryID];
    [dictionary setObject:dictionary2 forKey:accessoryID2];

    v17 = selfCopy->_store;
    bundleID2 = [dCopy bundleID];
    [(CWFKeyValueStore *)v17 setObject:dictionary forKey:bundleID2];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v19 = CWFGetOSLog();
    if (v19)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = 136446722;
      v23 = "[CWFWiFiNetworkSharingStore setCachedAuthorizationStatus:clientID:]";
      v24 = 2082;
      v25 = "CWFWiFiNetworkSharingStore.m";
      v26 = 1024;
      v27 = 114;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 16, "[corewifi] %{public}s (%{public}s:%u) 'clientID' is NULL", &v22, 28);
    }
  }
}

- (unint64_t)networkListUpdateCounterForClientID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    store = selfCopy->_store;
    bundleID = [dCopy bundleID];
    v8 = [(CWFKeyValueStore *)store objectForKey:bundleID];
    accessoryID = [dCopy accessoryID];
    v10 = [v8 objectForKey:accessoryID];
    v11 = [v10 objectForKey:@"networkListUpdateCounter"];
    unsignedIntegerValue = [v11 unsignedIntegerValue];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v14 = CWFGetOSLog();
    if (v14)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 136446722;
      v18 = "[CWFWiFiNetworkSharingStore networkListUpdateCounterForClientID:]";
      v19 = 2082;
      v20 = "CWFWiFiNetworkSharingStore.m";
      v21 = 1024;
      v22 = 146;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] %{public}s (%{public}s:%u) 'clientID' is NULL", &v17, 28);
    }

    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)incrementNetworksUpdateCounterForClientID:(id)d
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    store = selfCopy->_store;
    bundleID = [dCopy bundleID];
    v8 = [(CWFKeyValueStore *)store objectForKey:bundleID];
    dictionary = [v8 mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    accessoryID = [dCopy accessoryID];
    v11 = [dictionary objectForKey:accessoryID];
    dictionary2 = [v11 mutableCopy];

    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    }

    v13 = [dictionary2 objectForKeyedSubscript:@"networkListUpdateCounter"];
    unsignedIntegerValue = [v13 unsignedIntegerValue];

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
    [dictionary2 setObject:v15 forKey:@"networkListUpdateCounter"];

    accessoryID2 = [dCopy accessoryID];
    [dictionary setObject:dictionary2 forKey:accessoryID2];

    v17 = selfCopy->_store;
    bundleID2 = [dCopy bundleID];
    [(CWFKeyValueStore *)v17 setObject:dictionary forKey:bundleID2];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v19 = CWFGetOSLog();
    if (v19)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = 136446722;
      v23 = "[CWFWiFiNetworkSharingStore incrementNetworksUpdateCounterForClientID:]";
      v24 = 2082;
      v25 = "CWFWiFiNetworkSharingStore.m";
      v26 = 1024;
      v27 = 160;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 16, "[corewifi] %{public}s (%{public}s:%u) 'clientID' is NULL", &v22, 28);
    }
  }
}

- (unint64_t)acknowledgedNetworksUpdateCounterForClientID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    store = selfCopy->_store;
    bundleID = [dCopy bundleID];
    v8 = [(CWFKeyValueStore *)store objectForKey:bundleID];
    accessoryID = [dCopy accessoryID];
    v10 = [v8 objectForKey:accessoryID];
    v11 = [v10 objectForKey:@"acknowledgedNetworksUpdateCounter"];
    unsignedIntegerValue = [v11 unsignedIntegerValue];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v14 = CWFGetOSLog();
    if (v14)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 136446722;
      v18 = "[CWFWiFiNetworkSharingStore acknowledgedNetworksUpdateCounterForClientID:]";
      v19 = 2082;
      v20 = "CWFWiFiNetworkSharingStore.m";
      v21 = 1024;
      v22 = 190;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] %{public}s (%{public}s:%u) 'clientID' is NULL", &v17, 28);
    }

    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)setAcknowledgedNetworksUpdateCounter:(unint64_t)counter clientID:(id)d
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    store = selfCopy->_store;
    bundleID = [dCopy bundleID];
    v10 = [(CWFKeyValueStore *)store objectForKey:bundleID];
    dictionary = [v10 mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    accessoryID = [dCopy accessoryID];
    v13 = [dictionary objectForKey:accessoryID];
    dictionary2 = [v13 mutableCopy];

    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    }

    v15 = [dictionary2 objectForKey:@"acknowledgedNetworksUpdateCounter"];
    unsignedIntegerValue = [v15 unsignedIntegerValue];

    if (unsignedIntegerValue < counter)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:counter];
      [dictionary2 setObject:v17 forKey:@"acknowledgedNetworksUpdateCounter"];

      accessoryID2 = [dCopy accessoryID];
      [dictionary setObject:dictionary2 forKey:accessoryID2];

      v19 = selfCopy->_store;
      bundleID2 = [dCopy bundleID];
      [(CWFKeyValueStore *)v19 setObject:dictionary forKey:bundleID2];
    }

    objc_sync_exit(selfCopy);
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
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = 136446722;
      v25 = "[CWFWiFiNetworkSharingStore setAcknowledgedNetworksUpdateCounter:clientID:]";
      v26 = 2082;
      v27 = "CWFWiFiNetworkSharingStore.m";
      v28 = 1024;
      v29 = 204;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 16, "[corewifi] %{public}s (%{public}s:%u) 'clientID' is NULL", &v24, 28);
    }
  }
}

- (id)networkMetadataForClientID:(id)d networkID:(id)iD
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  v8 = iDCopy;
  if (!dCopy)
  {
    v29 = CWFGetOSLog();
    if (v29)
    {
      selfCopy = CWFGetOSLog();
    }

    else
    {
      selfCopy = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      *v35 = 136446722;
      *&v35[4] = "[CWFWiFiNetworkSharingStore networkMetadataForClientID:networkID:]";
      *&v35[12] = 2082;
      *&v35[14] = "CWFWiFiNetworkSharingStore.m";
      *&v35[22] = 1024;
      *v36 = 239;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, selfCopy, 16, "[corewifi] %{public}s (%{public}s:%u) 'clientID' is NULL", v35, 28, *v35, *&v35[8], *v36);
    }

    goto LABEL_34;
  }

  if (!iDCopy)
  {
    v30 = CWFGetOSLog();
    if (v30)
    {
      selfCopy = CWFGetOSLog();
    }

    else
    {
      selfCopy = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      *v35 = 136446722;
      *&v35[4] = "[CWFWiFiNetworkSharingStore networkMetadataForClientID:networkID:]";
      *&v35[12] = 2082;
      *&v35[14] = "CWFWiFiNetworkSharingStore.m";
      *&v35[22] = 1024;
      *v36 = 240;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, selfCopy, 16, "[corewifi] %{public}s (%{public}s:%u) 'networkID' is NULL", v35, 28, *v35, *&v35[8], *v36);
    }

    goto LABEL_34;
  }

  descriptor = [iDCopy descriptor];
  if (!descriptor)
  {
    v31 = CWFGetOSLog();
    if (v31)
    {
      selfCopy = CWFGetOSLog();
    }

    else
    {
      selfCopy = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      *v35 = 136446722;
      *&v35[4] = "[CWFWiFiNetworkSharingStore networkMetadataForClientID:networkID:]";
      *&v35[12] = 2082;
      *&v35[14] = "CWFWiFiNetworkSharingStore.m";
      *&v35[22] = 1024;
      *v36 = 243;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, selfCopy, 16, "[corewifi] %{public}s (%{public}s:%u) 'descriptor' is NULL", v35, 28, *v35, *&v35[8], *v36);
    }

LABEL_34:
    descriptor = 0;
    v18 = 0;
    goto LABEL_16;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  store = selfCopy->_store;
  bundleID = [dCopy bundleID];
  v13 = [(CWFKeyValueStore *)store objectForKey:bundleID];
  accessoryID = [dCopy accessoryID];
  v15 = [v13 objectForKey:accessoryID];
  v16 = [v15 objectForKey:@"networkMetadata"];
  v17 = [v16 objectForKey:descriptor];

  if (v17)
  {
    v18 = objc_alloc_init(CWFWiFiNetworkSharingNetworkMetadata);
    v19 = [v17 objectForKeyedSubscript:@"firstSharedDate"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v18 setFirstSharedDate:v19];

    v20 = [v17 objectForKeyedSubscript:@"mostRecentlySharedDate"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v18 setMostRecentlySharedDate:v20];

    v21 = [v17 objectForKeyedSubscript:@"askToShareStatus"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v18 setAskToShareStatus:sub_1E0BF1EE8(v21)];

    v22 = [v17 objectForKeyedSubscript:@"askToShareStatusUpdatedTimestamp"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v18 setAskToShareStatusUpdatedTimestamp:v22];

    v23 = [v17 objectForKeyedSubscript:@"lastModifiedDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CWFWiFiNetworkSharingNetworkMetadata *)v18 setLastModifiedDate:v23];
    }

    else
    {
      v24 = CWFGetOSLog();
      if (v24)
      {
        v25 = CWFGetOSLog();
      }

      else
      {
        v25 = MEMORY[0x1E69E9C10];
        v26 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v35 = 136447234;
        *&v35[4] = "[CWFWiFiNetworkSharingStore networkMetadataForClientID:networkID:]";
        *&v35[12] = 2082;
        *&v35[14] = "CWFWiFiNetworkSharingStore.m";
        *&v35[22] = 1024;
        *v36 = 259;
        *&v36[4] = 2112;
        *&v36[6] = @"lastModifiedDate";
        v37 = 2112;
        v38 = v23;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v25, 16, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] unexpected value for %@ (%@)", v35, 48);
      }
    }

    v27 = [v17 objectForKeyedSubscript:@"waitingForAssociation"];
    -[CWFWiFiNetworkSharingNetworkMetadata setWaitingForAssociation:](v18, "setWaitingForAssociation:", [v27 BOOLValue]);
  }

  else
  {
    v18 = 0;
  }

  objc_sync_exit(selfCopy);
LABEL_16:

  return v18;
}

- (void)setNetworkMetadata:(id)metadata clientID:(id)d networkID:(id)iD
{
  v45 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  dCopy = d;
  iDCopy = iD;
  v11 = iDCopy;
  if (dCopy)
  {
    if (iDCopy)
    {
      descriptor = [iDCopy descriptor];
      if (descriptor)
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        store = selfCopy->_store;
        bundleID = [dCopy bundleID];
        v16 = [(CWFKeyValueStore *)store objectForKey:bundleID];
        dictionary = [v16 mutableCopy];

        if (!dictionary)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
        }

        accessoryID = [dCopy accessoryID];
        v19 = [dictionary objectForKey:accessoryID];
        dictionary2 = [v19 mutableCopy];

        if (!dictionary2)
        {
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        }

        v21 = [dictionary2 objectForKey:@"networkMetadata"];
        dictionary3 = [v21 mutableCopy];

        if (!dictionary3)
        {
          dictionary3 = [MEMORY[0x1E695DF90] dictionary];
        }

        v38 = v11;
        if (metadataCopy)
        {
          dictionary4 = [MEMORY[0x1E695DF90] dictionary];
          firstSharedDate = [metadataCopy firstSharedDate];
          [dictionary4 setObject:firstSharedDate forKeyedSubscript:@"firstSharedDate"];

          mostRecentlySharedDate = [metadataCopy mostRecentlySharedDate];
          [dictionary4 setObject:mostRecentlySharedDate forKeyedSubscript:@"mostRecentlySharedDate"];

          v26 = sub_1E0BF1E78([metadataCopy askToShareStatus]);
          [dictionary4 setObject:v26 forKeyedSubscript:@"askToShareStatus"];

          askToShareStatusUpdatedTimestamp = [metadataCopy askToShareStatusUpdatedTimestamp];
          [dictionary4 setObject:askToShareStatusUpdatedTimestamp forKeyedSubscript:@"askToShareStatusUpdatedTimestamp"];

          lastModifiedDate = [metadataCopy lastModifiedDate];
          [dictionary4 setObject:lastModifiedDate forKeyedSubscript:@"lastModifiedDate"];

          if ([metadataCopy waitingForAssociation])
          {
            [dictionary4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"waitingForAssociation"];
          }
        }

        else
        {
          dictionary4 = 0;
        }

        [dictionary3 setObject:dictionary4 forKeyedSubscript:descriptor];
        [dictionary2 setObject:dictionary3 forKeyedSubscript:@"networkMetadata"];
        accessoryID2 = [dCopy accessoryID];
        [dictionary setObject:dictionary2 forKeyedSubscript:accessoryID2];

        v30 = selfCopy->_store;
        bundleID2 = [dCopy bundleID];
        [(CWFKeyValueStore *)v30 setObject:dictionary forKey:bundleID2];

        objc_sync_exit(selfCopy);
        v11 = v38;
      }

      else
      {
        v34 = CWFGetOSLog();
        if (v34)
        {
          descriptor = CWFGetOSLog();
        }

        else
        {
          descriptor = MEMORY[0x1E69E9C10];
          v37 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(descriptor, OS_LOG_TYPE_ERROR))
        {
          v39 = 136446722;
          v40 = "[CWFWiFiNetworkSharingStore setNetworkMetadata:clientID:networkID:]";
          v41 = 2082;
          v42 = "CWFWiFiNetworkSharingStore.m";
          v43 = 1024;
          v44 = 282;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, descriptor, 16, "[corewifi] %{public}s (%{public}s:%u) 'descriptor' is NULL", &v39, 28);
        }
      }
    }

    else
    {
      v33 = CWFGetOSLog();
      if (v33)
      {
        descriptor = CWFGetOSLog();
      }

      else
      {
        descriptor = MEMORY[0x1E69E9C10];
        v36 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(descriptor, OS_LOG_TYPE_ERROR))
      {
        v39 = 136446722;
        v40 = "[CWFWiFiNetworkSharingStore setNetworkMetadata:clientID:networkID:]";
        v41 = 2082;
        v42 = "CWFWiFiNetworkSharingStore.m";
        v43 = 1024;
        v44 = 279;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, descriptor, 16, "[corewifi] %{public}s (%{public}s:%u) 'networkID' is NULL", &v39, 28);
      }
    }
  }

  else
  {
    v32 = CWFGetOSLog();
    if (v32)
    {
      descriptor = CWFGetOSLog();
    }

    else
    {
      descriptor = MEMORY[0x1E69E9C10];
      v35 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(descriptor, OS_LOG_TYPE_ERROR))
    {
      v39 = 136446722;
      v40 = "[CWFWiFiNetworkSharingStore setNetworkMetadata:clientID:networkID:]";
      v41 = 2082;
      v42 = "CWFWiFiNetworkSharingStore.m";
      v43 = 1024;
      v44 = 278;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, descriptor, 16, "[corewifi] %{public}s (%{public}s:%u) 'clientID' is NULL", &v39, 28);
    }
  }
}

- (id)networkMetadataForClientID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    store = selfCopy->_store;
    bundleID = [dCopy bundleID];
    v8 = [(CWFKeyValueStore *)store objectForKey:bundleID];
    accessoryID = [dCopy accessoryID];
    v10 = [v8 objectForKey:accessoryID];
    v11 = [v10 objectForKey:@"networkMetadata"];

    if (v11)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1E0D27AAC;
      v17[3] = &unk_1E86E9798;
      v13 = dictionary;
      v18 = v13;
      [v11 enumerateKeysAndObjectsUsingBlock:v17];
    }

    else
    {
      v13 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v15 = CWFGetOSLog();
    if (v15)
    {
      selfCopy = CWFGetOSLog();
    }

    else
    {
      selfCopy = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446722;
      v20 = "[CWFWiFiNetworkSharingStore networkMetadataForClientID:]";
      v21 = 2082;
      v22 = "CWFWiFiNetworkSharingStore.m";
      v23 = 1024;
      v24 = 331;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, selfCopy, 16, "[corewifi] %{public}s (%{public}s:%u) 'clientID' is NULL", &v19, 28);
    }

    v13 = 0;
  }

  return v13;
}

@end