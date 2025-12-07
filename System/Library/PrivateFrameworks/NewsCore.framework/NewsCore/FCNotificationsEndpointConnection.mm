@interface FCNotificationsEndpointConnection
- (FCNotificationsEndpointConnection)initWithBaseURLString:(id)string;
- (FCNotificationsEndpointConnection)initWithConfigurationManager:(id)manager bundleSubscriptionManager:(id)subscriptionManager;
- (FCNotificationsEndpointConnection)initWithEndpointConnection:(id)connection configurationManager:(id)manager bundleSubscriptionManager:(id)subscriptionManager;
- (id)_deviceInfoWithDeviceToken:(id)token deviceDigestMode:(int)mode;
- (id)_marketingSubscriptionRequestWithType:(int)type action:(int)action dsid:(id)dsid;
- (id)_notificationDataInDropbox;
- (id)_notificationEntitiesWithChannelIDs:(id)ds isPaid:(BOOL)paid paidBundleSubscriptionStatus:(unint64_t)status editorialChannelID:(id)d;
- (id)_notificationEntityWithChannelIDs:(id)ds isPaid:(BOOL)paid paidBundleSubscriptionStatus:(unint64_t)status notificationType:(int)type;
- (id)_pushNotifySubscriptionRequestWithChannelIDs:(id)ds paidChannelIDs:(id)iDs userID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode;
- (id)_pushNotifySubscriptionRequestWithTopicIDs:(id)ds fromChannelID:(id)d withTopicGroupingID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode;
- (int)_pbNotificationEntityPaidBundleSubscriptionStatusFromSubscriptionState:(unint64_t)state;
- (void)_sendNotificationsSubscriptionRequest:(id)request pathComponent:(id)component callbackQueue:(id)queue completion:(id)completion;
- (void)_updateNotificationDropboxDataWithBaseURL:(id)l notificationUserID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode;
- (void)configurationManager:(id)manager configurationDidChange:(id)change;
- (void)modifyMarketingSubscriptionWithType:(int)type action:(int)action dsid:(id)dsid callbackQueue:(id)queue completion:(id)completion;
- (void)refreshNotificationsForChannelIDs:(id)ds paidChannelIDs:(id)iDs userID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode callbackQueue:(id)queue completion:(id)self0;
- (void)refreshNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode callbackQueue:(id)self0 completion:(id)self1;
- (void)registerDeviceWithUserID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode callbackQueue:(id)queue completion:(id)completion;
- (void)subscribeNotificationsForChannelIDs:(id)ds paidChannelIDs:(id)iDs userID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode callbackQueue:(id)queue completion:(id)self0;
- (void)subscribeNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode callbackQueue:(id)self0 completion:(id)self1;
- (void)unregisterDeviceWithUserID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode callbackQueue:(id)queue completion:(id)completion;
- (void)unsubscribeNotificationsForChannelIDs:(id)ds userID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode callbackQueue:(id)queue completion:(id)completion;
- (void)unsubscribeNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode callbackQueue:(id)self0 completion:(id)self1;
- (void)updateBaseURL:(id)l;
@end

@implementation FCNotificationsEndpointConnection

- (FCNotificationsEndpointConnection)initWithConfigurationManager:(id)manager bundleSubscriptionManager:(id)subscriptionManager
{
  subscriptionManagerCopy = subscriptionManager;
  managerCopy = manager;
  v8 = objc_alloc_init(FCEndpointConnection);
  v9 = [(FCNotificationsEndpointConnection *)self initWithEndpointConnection:v8 configurationManager:managerCopy bundleSubscriptionManager:subscriptionManagerCopy];

  return v9;
}

- (FCNotificationsEndpointConnection)initWithEndpointConnection:(id)connection configurationManager:(id)manager bundleSubscriptionManager:(id)subscriptionManager
{
  connectionCopy = connection;
  managerCopy = manager;
  subscriptionManagerCopy = subscriptionManager;
  v29.receiver = self;
  v29.super_class = FCNotificationsEndpointConnection;
  v12 = [(FCNotificationsEndpointConnection *)&v29 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_endpointConnection, connection);
    objc_storeStrong(&v13->_configurationManager, manager);
    objc_storeStrong(&v13->_bundleSubscriptionManager, subscriptionManager);
    v14 = objc_alloc_init(FCAsyncSerialQueue);
    serialQueue = v13->_serialQueue;
    v13->_serialQueue = v14;

    v16 = NFGeneralDeviceString();
    deviceType = v13->_deviceType;
    v13->_deviceType = v16;

    v18 = NFDeviceOSVersion();
    deviceOSVersion = v13->_deviceOSVersion;
    v13->_deviceOSVersion = v18;

    v20 = [FCFileCoordinatedNotificationDropbox alloc];
    v21 = FCURLForNotificationDropbox();
    v22 = [(FCFileCoordinatedNotificationDropbox *)v20 initWithFileURL:v21];
    fileCoordinatedNotificationDropbox = v13->_fileCoordinatedNotificationDropbox;
    v13->_fileCoordinatedNotificationDropbox = v22;

    [managerCopy addObserver:v13];
    serialQueue = [(FCNotificationsEndpointConnection *)v13 serialQueue];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __111__FCNotificationsEndpointConnection_initWithEndpointConnection_configurationManager_bundleSubscriptionManager___block_invoke;
    v26[3] = &unk_1E7C3BDC0;
    v27 = managerCopy;
    v28 = v13;
    [serialQueue enqueueBlock:v26];
  }

  return v13;
}

void __111__FCNotificationsEndpointConnection_initWithEndpointConnection_configurationManager_bundleSubscriptionManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __111__FCNotificationsEndpointConnection_initWithEndpointConnection_configurationManager_bundleSubscriptionManager___block_invoke_2;
  v6[3] = &unk_1E7C3B248;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 fetchConfigurationIfNeededWithCompletion:v6];
}

void __111__FCNotificationsEndpointConnection_initWithEndpointConnection_configurationManager_bundleSubscriptionManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v6;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch endpoint configuration with error: %{public}@", &v8, 0xCu);
    }
  }

  [*(a1 + 32) updateBaseURL:v5];
  (*(*(a1 + 40) + 16))();
}

- (FCNotificationsEndpointConnection)initWithBaseURLString:(id)string
{
  stringCopy = string;
  v16.receiver = self;
  v16.super_class = FCNotificationsEndpointConnection;
  v5 = [(FCNotificationsEndpointConnection *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(FCEndpointConnection);
    endpointConnection = v5->_endpointConnection;
    v5->_endpointConnection = v6;

    v8 = NFGeneralDeviceString();
    deviceType = v5->_deviceType;
    v5->_deviceType = v8;

    v10 = NFDeviceOSVersion();
    deviceOSVersion = v5->_deviceOSVersion;
    v5->_deviceOSVersion = v10;

    v12 = objc_alloc_init(FCAsyncSerialQueue);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v12;

    v14 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
    [(FCNotificationsEndpointConnection *)v5 setBaseURL:v14];
  }

  return v5;
}

- (void)registerDeviceWithUserID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode callbackQueue:(id)queue completion:(id)completion
{
  v10 = *&mode;
  v48 = *MEMORY[0x1E69E9840];
  dCopy = d;
  tokenCopy = token;
  iDCopy = iD;
  queueCopy = queue;
  completionCopy = completion;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "userID"];
    *buf = 136315906;
    v41 = "[FCNotificationsEndpointConnection registerDeviceWithUserID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v42 = 2080;
    v43 = "FCNotificationsEndpointConnection.m";
    v44 = 1024;
    v45 = 113;
    v46 = 2114;
    v47 = v34;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (tokenCopy)
    {
      goto LABEL_6;
    }
  }

  else if (tokenCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "deviceToken"];
    *buf = 136315906;
    v41 = "[FCNotificationsEndpointConnection registerDeviceWithUserID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v42 = 2080;
    v43 = "FCNotificationsEndpointConnection.m";
    v44 = 1024;
    v45 = 114;
    v46 = 2114;
    v47 = v35;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (iDCopy)
  {
    if (dCopy && tokenCopy)
    {
      _notificationDataInDropbox = [(FCNotificationsEndpointConnection *)self _notificationDataInDropbox];
      deviceToken = [_notificationDataInDropbox deviceToken];
      v37 = _notificationDataInDropbox;
      if ([tokenCopy isEqualToString:deviceToken])
      {
        notificationUserID = [_notificationDataInDropbox notificationUserID];
        if ([dCopy isEqualToString:notificationUserID])
        {
          deviceDigestMode = [_notificationDataInDropbox deviceDigestMode];
          v23 = v10;
          v24 = queueCopy;
          v25 = deviceDigestMode;

          v26 = v25 == v23;
          queueCopy = v24;
          v10 = v23;
          if (v26)
          {
            v27 = FCPushNotificationsLog;
            if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v41 = tokenCopy;
              v42 = 2112;
              v43 = dCopy;
              v44 = 1024;
              v45 = v23;
              _os_log_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_INFO, "the device token is already registered: %@ for userID: %@ and the digestMode: %d hasn't changed", buf, 0x1Cu);
            }

            v28 = v37;
            if (completionCopy)
            {
              completionCopy[2](completionCopy, 1, 0);
            }

            goto LABEL_25;
          }

LABEL_24:
          v30 = [(FCNotificationsEndpointConnection *)self _pushNotifySubscriptionRequestWithChannelIDs:0 paidChannelIDs:0 userID:dCopy deviceToken:tokenCopy storefrontID:iDCopy deviceDigestMode:v10];
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __129__FCNotificationsEndpointConnection_registerDeviceWithUserID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke;
          v38[3] = &unk_1E7C42598;
          v39 = completionCopy;
          [(FCNotificationsEndpointConnection *)self _sendNotificationsSubscriptionRequest:v30 pathComponent:@"pushnotify/subscribe" callbackQueue:queueCopy completion:v38];
          [(FCNotificationsEndpointConnection *)self baseURL];
          v32 = v31 = queueCopy;
          absoluteString = [v32 absoluteString];
          [(FCNotificationsEndpointConnection *)self _updateNotificationDropboxDataWithBaseURL:absoluteString notificationUserID:dCopy deviceToken:tokenCopy storefrontID:iDCopy deviceDigestMode:v10];

          queueCopy = v31;
          v28 = v37;
LABEL_25:

          goto LABEL_26;
        }
      }

      goto LABEL_24;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "storefrontID"];
    *buf = 136315906;
    v41 = "[FCNotificationsEndpointConnection registerDeviceWithUserID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v42 = 2080;
    v43 = "FCNotificationsEndpointConnection.m";
    v44 = 1024;
    v45 = 115;
    v46 = 2114;
    v47 = v36;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v29 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v29, OS_LOG_TYPE_ERROR, "failed to submit request for register device token, invalid parameters", buf, 2u);
  }

  completionCopy[2](completionCopy, 0, 0);
LABEL_26:
}

void __129__FCNotificationsEndpointConnection_registerDeviceWithUserID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to register device token with error: %{public}@", &v8, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)unregisterDeviceWithUserID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode callbackQueue:(id)queue completion:(id)completion
{
  v10 = *&mode;
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  tokenCopy = token;
  iDCopy = iD;
  queueCopy = queue;
  completionCopy = completion;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "userID"];
    *buf = 136315906;
    v27 = "[FCNotificationsEndpointConnection unregisterDeviceWithUserID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v28 = 2080;
    v29 = "FCNotificationsEndpointConnection.m";
    v30 = 1024;
    v31 = 169;
    v32 = 2114;
    v33 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (tokenCopy)
    {
      goto LABEL_6;
    }
  }

  else if (tokenCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "deviceToken"];
    *buf = 136315906;
    v27 = "[FCNotificationsEndpointConnection unregisterDeviceWithUserID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v28 = 2080;
    v29 = "FCNotificationsEndpointConnection.m";
    v30 = 1024;
    v31 = 170;
    v32 = 2114;
    v33 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (iDCopy)
  {
    if (dCopy && tokenCopy)
    {
      v19 = [(FCNotificationsEndpointConnection *)self _pushNotifySubscriptionRequestWithChannelIDs:0 paidChannelIDs:0 userID:dCopy deviceToken:tokenCopy storefrontID:iDCopy deviceDigestMode:v10];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __131__FCNotificationsEndpointConnection_unregisterDeviceWithUserID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke;
      v24[3] = &unk_1E7C42598;
      v25 = completionCopy;
      [(FCNotificationsEndpointConnection *)self _sendNotificationsSubscriptionRequest:v19 pathComponent:@"pushnotify/unsubscribe" callbackQueue:queueCopy completion:v24];
      [(FCNotificationsEndpointConnection *)self _updateNotificationDropboxDataWithBaseURL:0 notificationUserID:0 deviceToken:0 storefrontID:0 deviceDigestMode:0];

      goto LABEL_15;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "storefrontID"];
    *buf = 136315906;
    v27 = "[FCNotificationsEndpointConnection unregisterDeviceWithUserID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v28 = 2080;
    v29 = "FCNotificationsEndpointConnection.m";
    v30 = 1024;
    v31 = 171;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v20 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_ERROR, "failed to submit request to unregister device token, invalid parameters", buf, 2u);
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
LABEL_15:
}

void __131__FCNotificationsEndpointConnection_unregisterDeviceWithUserID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to unregister device token with error: %{public}@", &v8, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)subscribeNotificationsForChannelIDs:(id)ds paidChannelIDs:(id)iDs userID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode callbackQueue:(id)queue completion:(id)self0
{
  v10 = *&mode;
  v40 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  dCopy = d;
  tokenCopy = token;
  iDCopy = iD;
  queueCopy = queue;
  completionCopy = completion;
  if ([dsCopy count] || objc_msgSend(iDsCopy, "count") || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (dCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"either channelIDs or paidChannelIDs should include some values"];
    *buf = 136315906;
    v33 = "[FCNotificationsEndpointConnection subscribeNotificationsForChannelIDs:paidChannelIDs:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v34 = 2080;
    v35 = "FCNotificationsEndpointConnection.m";
    v36 = 1024;
    v37 = 217;
    v38 = 2114;
    v39 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dCopy)
    {
      goto LABEL_7;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "userID"];
    *buf = 136315906;
    v33 = "[FCNotificationsEndpointConnection subscribeNotificationsForChannelIDs:paidChannelIDs:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v34 = 2080;
    v35 = "FCNotificationsEndpointConnection.m";
    v36 = 1024;
    v37 = 218;
    v38 = 2114;
    v39 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_7:
  if (!tokenCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "deviceToken"];
    *buf = 136315906;
    v33 = "[FCNotificationsEndpointConnection subscribeNotificationsForChannelIDs:paidChannelIDs:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v34 = 2080;
    v35 = "FCNotificationsEndpointConnection.m";
    v36 = 1024;
    v37 = 219;
    v38 = 2114;
    v39 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (iDCopy)
    {
      goto LABEL_12;
    }
  }

  else if (iDCopy)
  {
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "storefrontID"];
    *buf = 136315906;
    v33 = "[FCNotificationsEndpointConnection subscribeNotificationsForChannelIDs:paidChannelIDs:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v34 = 2080;
    v35 = "FCNotificationsEndpointConnection.m";
    v36 = 1024;
    v37 = 220;
    v38 = 2114;
    v39 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_12:
  if (![dsCopy count])
  {
    v23 = [iDsCopy count];
    if (!dCopy || !tokenCopy || !iDCopy || !v23)
    {
      goto LABEL_22;
    }

LABEL_21:
    v24 = [(FCNotificationsEndpointConnection *)self _pushNotifySubscriptionRequestWithChannelIDs:dsCopy paidChannelIDs:iDsCopy userID:dCopy deviceToken:tokenCopy storefrontID:iDCopy deviceDigestMode:v10];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __162__FCNotificationsEndpointConnection_subscribeNotificationsForChannelIDs_paidChannelIDs_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke;
    v30[3] = &unk_1E7C42598;
    v31 = completionCopy;
    [(FCNotificationsEndpointConnection *)self _sendNotificationsSubscriptionRequest:v24 pathComponent:@"pushnotify/subscribe" callbackQueue:queueCopy completion:v30];

    goto LABEL_25;
  }

  if (dCopy && tokenCopy && iDCopy)
  {
    goto LABEL_21;
  }

LABEL_22:
  v25 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_ERROR, "failed to submit request for subscribe notifications, invalid parameters", buf, 2u);
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
LABEL_25:
}

void __162__FCNotificationsEndpointConnection_subscribeNotificationsForChannelIDs_paidChannelIDs_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to subscribe notifications for channels error: %{public}@", &v8, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)unsubscribeNotificationsForChannelIDs:(id)ds userID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode callbackQueue:(id)queue completion:(id)completion
{
  v10 = *&mode;
  v38 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  tokenCopy = token;
  iDCopy = iD;
  queueCopy = queue;
  completionCopy = completion;
  if (![dsCopy count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"channelIDs should not be empty"];
    *buf = 136315906;
    v31 = "[FCNotificationsEndpointConnection unsubscribeNotificationsForChannelIDs:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v32 = 2080;
    v33 = "FCNotificationsEndpointConnection.m";
    v34 = 1024;
    v35 = 256;
    v36 = 2114;
    v37 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "userID"];
    *buf = 136315906;
    v31 = "[FCNotificationsEndpointConnection unsubscribeNotificationsForChannelIDs:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v32 = 2080;
    v33 = "FCNotificationsEndpointConnection.m";
    v34 = 1024;
    v35 = 257;
    v36 = 2114;
    v37 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!tokenCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "deviceToken"];
    *buf = 136315906;
    v31 = "[FCNotificationsEndpointConnection unsubscribeNotificationsForChannelIDs:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v32 = 2080;
    v33 = "FCNotificationsEndpointConnection.m";
    v34 = 1024;
    v35 = 258;
    v36 = 2114;
    v37 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (iDCopy)
    {
      goto LABEL_11;
    }
  }

  else if (iDCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "storefrontID"];
    *buf = 136315906;
    v31 = "[FCNotificationsEndpointConnection unsubscribeNotificationsForChannelIDs:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v32 = 2080;
    v33 = "FCNotificationsEndpointConnection.m";
    v34 = 1024;
    v35 = 259;
    v36 = 2114;
    v37 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_11:
  v21 = [dsCopy count];
  if (iDCopy && tokenCopy && dCopy && v21)
  {
    v22 = [(FCNotificationsEndpointConnection *)self _pushNotifySubscriptionRequestWithChannelIDs:dsCopy paidChannelIDs:0 userID:dCopy deviceToken:tokenCopy storefrontID:iDCopy deviceDigestMode:v10];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __149__FCNotificationsEndpointConnection_unsubscribeNotificationsForChannelIDs_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke;
    v28[3] = &unk_1E7C42598;
    v29 = completionCopy;
    [(FCNotificationsEndpointConnection *)self _sendNotificationsSubscriptionRequest:v22 pathComponent:@"pushnotify/unsubscribe" callbackQueue:queueCopy completion:v28];
  }

  else
  {
    v23 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_ERROR, "failed to submit request for unsubscribe notifications, invalid parameters", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __149__FCNotificationsEndpointConnection_unsubscribeNotificationsForChannelIDs_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to unsubscribe notifications for channels with error: %{public}@", &v8, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)refreshNotificationsForChannelIDs:(id)ds paidChannelIDs:(id)iDs userID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode callbackQueue:(id)queue completion:(id)self0
{
  v10 = *&mode;
  v38 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  dCopy = d;
  tokenCopy = token;
  iDCopy = iD;
  queueCopy = queue;
  completionCopy = completion;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "userID"];
    *buf = 136315906;
    v31 = "[FCNotificationsEndpointConnection refreshNotificationsForChannelIDs:paidChannelIDs:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v32 = 2080;
    v33 = "FCNotificationsEndpointConnection.m";
    v34 = 1024;
    v35 = 296;
    v36 = 2114;
    v37 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (tokenCopy)
    {
      goto LABEL_6;
    }
  }

  else if (tokenCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "deviceToken"];
    *buf = 136315906;
    v31 = "[FCNotificationsEndpointConnection refreshNotificationsForChannelIDs:paidChannelIDs:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v32 = 2080;
    v33 = "FCNotificationsEndpointConnection.m";
    v34 = 1024;
    v35 = 297;
    v36 = 2114;
    v37 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (iDCopy)
  {
    if (dCopy && tokenCopy)
    {
      v23 = [(FCNotificationsEndpointConnection *)self _pushNotifySubscriptionRequestWithChannelIDs:dsCopy paidChannelIDs:iDsCopy userID:dCopy deviceToken:tokenCopy storefrontID:iDCopy deviceDigestMode:v10];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __160__FCNotificationsEndpointConnection_refreshNotificationsForChannelIDs_paidChannelIDs_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke;
      v28[3] = &unk_1E7C42598;
      v29 = completionCopy;
      [(FCNotificationsEndpointConnection *)self _sendNotificationsSubscriptionRequest:v23 pathComponent:@"pushnotify/updatetoken" callbackQueue:queueCopy completion:v28];

      goto LABEL_15;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "storefrontID"];
    *buf = 136315906;
    v31 = "[FCNotificationsEndpointConnection refreshNotificationsForChannelIDs:paidChannelIDs:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v32 = 2080;
    v33 = "FCNotificationsEndpointConnection.m";
    v34 = 1024;
    v35 = 298;
    v36 = 2114;
    v37 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v24 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_ERROR, "failed to submit refresh request for subscribe notifications, invalid parameters", buf, 2u);
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
LABEL_15:
}

void __160__FCNotificationsEndpointConnection_refreshNotificationsForChannelIDs_paidChannelIDs_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to refresh notifications for channels with error: %{public}@", &v8, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)subscribeNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode callbackQueue:(id)self0 completion:(id)self1
{
  v44 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  userIDCopy = userID;
  tokenCopy = token;
  storefrontIDCopy = storefrontID;
  queueCopy = queue;
  completionCopy = completion;
  if (![dsCopy count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"topicIDs should include some values"];
    *buf = 136315906;
    v37 = "[FCNotificationsEndpointConnection subscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v38 = 2080;
    v39 = "FCNotificationsEndpointConnection.m";
    v40 = 1024;
    v41 = 337;
    v42 = 2114;
    v43 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (iDCopy)
    {
      goto LABEL_6;
    }
  }

  else if (iDCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelID"];
    *buf = 136315906;
    v37 = "[FCNotificationsEndpointConnection subscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v38 = 2080;
    v39 = "FCNotificationsEndpointConnection.m";
    v40 = 1024;
    v41 = 338;
    v42 = 2114;
    v43 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!userIDCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "userID"];
    *buf = 136315906;
    v37 = "[FCNotificationsEndpointConnection subscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v38 = 2080;
    v39 = "FCNotificationsEndpointConnection.m";
    v40 = 1024;
    v41 = 339;
    v42 = 2114;
    v43 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (tokenCopy)
    {
      goto LABEL_11;
    }
  }

  else if (tokenCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "deviceToken"];
    *buf = 136315906;
    v37 = "[FCNotificationsEndpointConnection subscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v38 = 2080;
    v39 = "FCNotificationsEndpointConnection.m";
    v40 = 1024;
    v41 = 340;
    v42 = 2114;
    v43 = v31;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_11:
  if (!storefrontIDCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "storefrontID"];
    *buf = 136315906;
    v37 = "[FCNotificationsEndpointConnection subscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v38 = 2080;
    v39 = "FCNotificationsEndpointConnection.m";
    v40 = 1024;
    v41 = 341;
    v42 = 2114;
    v43 = v32;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v25 = [dsCopy count];
  if (storefrontIDCopy && tokenCopy && userIDCopy && iDCopy && v25)
  {
    LODWORD(v33) = mode;
    v26 = [(FCNotificationsEndpointConnection *)self _pushNotifySubscriptionRequestWithTopicIDs:dsCopy fromChannelID:iDCopy withTopicGroupingID:dCopy userID:userIDCopy deviceToken:tokenCopy storefrontID:storefrontIDCopy deviceDigestMode:v33];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __179__FCNotificationsEndpointConnection_subscribeNotificationsForTopicIDs_withTopicGroupingID_fromChannelID_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke;
    v34[3] = &unk_1E7C42598;
    v35 = completionCopy;
    [(FCNotificationsEndpointConnection *)self _sendNotificationsSubscriptionRequest:v26 pathComponent:@"pushnotify/subscribe" callbackQueue:queueCopy completion:v34];
  }

  else
  {
    v27 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_ERROR, "failed to submit request for subscribe notifications, invalid parameters", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __179__FCNotificationsEndpointConnection_subscribeNotificationsForTopicIDs_withTopicGroupingID_fromChannelID_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to subscribe notifications for topic error: %{public}@", &v8, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)unsubscribeNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode callbackQueue:(id)self0 completion:(id)self1
{
  v42 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  userIDCopy = userID;
  tokenCopy = token;
  storefrontIDCopy = storefrontID;
  queueCopy = queue;
  completionCopy = completion;
  if (!iDCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelID"];
    *buf = 136315906;
    v35 = "[FCNotificationsEndpointConnection unsubscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v36 = 2080;
    v37 = "FCNotificationsEndpointConnection.m";
    v38 = 1024;
    v39 = 380;
    v40 = 2114;
    v41 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (userIDCopy)
    {
      goto LABEL_6;
    }
  }

  else if (userIDCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "userID"];
    *buf = 136315906;
    v35 = "[FCNotificationsEndpointConnection unsubscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v36 = 2080;
    v37 = "FCNotificationsEndpointConnection.m";
    v38 = 1024;
    v39 = 381;
    v40 = 2114;
    v41 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!tokenCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "deviceToken"];
    *buf = 136315906;
    v35 = "[FCNotificationsEndpointConnection unsubscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v36 = 2080;
    v37 = "FCNotificationsEndpointConnection.m";
    v38 = 1024;
    v39 = 382;
    v40 = 2114;
    v41 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (storefrontIDCopy)
    {
      goto LABEL_9;
    }

LABEL_16:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "storefrontID"];
      *buf = 136315906;
      v35 = "[FCNotificationsEndpointConnection unsubscribeNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
      v36 = 2080;
      v37 = "FCNotificationsEndpointConnection.m";
      v38 = 1024;
      v39 = 383;
      v40 = 2114;
      v41 = v30;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_18;
  }

  if (!storefrontIDCopy)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (iDCopy && userIDCopy && tokenCopy)
  {
    LODWORD(v31) = mode;
    v25 = [(FCNotificationsEndpointConnection *)self _pushNotifySubscriptionRequestWithTopicIDs:dsCopy fromChannelID:iDCopy withTopicGroupingID:dCopy userID:userIDCopy deviceToken:tokenCopy storefrontID:storefrontIDCopy deviceDigestMode:v31];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __181__FCNotificationsEndpointConnection_unsubscribeNotificationsForTopicIDs_withTopicGroupingID_fromChannelID_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke;
    v32[3] = &unk_1E7C42598;
    v33 = completionCopy;
    [(FCNotificationsEndpointConnection *)self _sendNotificationsSubscriptionRequest:v25 pathComponent:@"pushnotify/unsubscribe" callbackQueue:queueCopy completion:v32];

    goto LABEL_21;
  }

LABEL_18:
  v29 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v29, OS_LOG_TYPE_ERROR, "failed to submit request for unsubscribe notifications, invalid parameters", buf, 2u);
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
LABEL_21:
}

void __181__FCNotificationsEndpointConnection_unsubscribeNotificationsForTopicIDs_withTopicGroupingID_fromChannelID_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to unsubscribe notifications for topic error: %{public}@", &v8, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)refreshNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode callbackQueue:(id)self0 completion:(id)self1
{
  v41 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  userIDCopy = userID;
  tokenCopy = token;
  storefrontIDCopy = storefrontID;
  queueCopy = queue;
  completionCopy = completion;
  if (!userIDCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "userID"];
    *buf = 136315906;
    v34 = "[FCNotificationsEndpointConnection refreshNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v35 = 2080;
    v36 = "FCNotificationsEndpointConnection.m";
    v37 = 1024;
    v38 = 424;
    v39 = 2114;
    v40 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (tokenCopy)
    {
      goto LABEL_6;
    }
  }

  else if (tokenCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "deviceToken"];
    *buf = 136315906;
    v34 = "[FCNotificationsEndpointConnection refreshNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v35 = 2080;
    v36 = "FCNotificationsEndpointConnection.m";
    v37 = 1024;
    v38 = 425;
    v39 = 2114;
    v40 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (storefrontIDCopy)
  {
    if (userIDCopy && tokenCopy)
    {
      LODWORD(v30) = mode;
      v25 = [(FCNotificationsEndpointConnection *)self _pushNotifySubscriptionRequestWithTopicIDs:dsCopy fromChannelID:iDCopy withTopicGroupingID:dCopy userID:userIDCopy deviceToken:tokenCopy storefrontID:storefrontIDCopy deviceDigestMode:v30];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __177__FCNotificationsEndpointConnection_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke;
      v31[3] = &unk_1E7C42598;
      v32 = completionCopy;
      [(FCNotificationsEndpointConnection *)self _sendNotificationsSubscriptionRequest:v25 pathComponent:@"pushnotify/updatetoken" callbackQueue:queueCopy completion:v31];

      goto LABEL_15;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "storefrontID"];
    *buf = 136315906;
    v34 = "[FCNotificationsEndpointConnection refreshNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:userID:deviceToken:storefrontID:deviceDigestMode:callbackQueue:completion:]";
    v35 = 2080;
    v36 = "FCNotificationsEndpointConnection.m";
    v37 = 1024;
    v38 = 426;
    v39 = 2114;
    v40 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v26 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_ERROR, "failed to submit refresh request for subscribe notifications, invalid parameters", buf, 2u);
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
LABEL_15:
}

void __177__FCNotificationsEndpointConnection_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID_userID_deviceToken_storefrontID_deviceDigestMode_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to refresh notifications for topics with error: %{public}@", &v8, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)modifyMarketingSubscriptionWithType:(int)type action:(int)action dsid:(id)dsid callbackQueue:(id)queue completion:(id)completion
{
  v9 = *&action;
  v10 = *&type;
  queueCopy = queue;
  completionCopy = completion;
  v14 = [(FCNotificationsEndpointConnection *)self _marketingSubscriptionRequestWithType:v10 action:v9 dsid:dsid];
  serialQueue = [(FCNotificationsEndpointConnection *)self serialQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __110__FCNotificationsEndpointConnection_modifyMarketingSubscriptionWithType_action_dsid_callbackQueue_completion___block_invoke;
  v19[3] = &unk_1E7C425C0;
  v19[4] = self;
  v20 = v14;
  v21 = queueCopy;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = queueCopy;
  v18 = v14;
  [serialQueue enqueueBlock:v19];
}

void __110__FCNotificationsEndpointConnection_modifyMarketingSubscriptionWithType_action_dsid_callbackQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) baseURL];

  if (v4)
  {
    v5 = [*(a1 + 32) baseURL];
    v6 = [v5 URLByAppendingPathComponent:@"marketingNotification/subscription"];

    v7 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      *buf = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_INFO, "ModifyMarketingSubscription url: %@ request: %@", buf, 0x16u);
    }

    v9 = [*(a1 + 32) endpointConnection];
    v10 = [*(a1 + 40) data];
    v11 = *MEMORY[0x1E695ABC0];
    v12 = *(a1 + 48);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __110__FCNotificationsEndpointConnection_modifyMarketingSubscriptionWithType_action_dsid_callbackQueue_completion___block_invoke_34;
    v17[3] = &unk_1E7C3BD48;
    v18 = v6;
    v19 = v3;
    v20 = *(a1 + 56);
    v13 = v6;
    LODWORD(v14) = v11;
    [v9 performHTTPRequestWithURL:v13 method:@"POST" data:v10 contentType:@"application/x-protobuf" priority:1 requiresMescalSigning:v12 callbackQueue:v14 completion:v17];
  }

  else
  {
    v3[2](v3);
    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = [FCEndpointConnection errorForStatus:-2000 url:0];
      (*(v15 + 16))(v15, 0, v16);
    }
  }
}

void __110__FCNotificationsEndpointConnection_modifyMarketingSubscriptionWithType_action_dsid_callbackQueue_completion___block_invoke_34(void *a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_INFO, "ModifyMarketingSubscription response: %@ error: %@", &v14, 0x16u);
  }

  if (v8)
  {
    v11 = +[FCEndpointConnection errorForStatus:url:](FCEndpointConnection, "errorForStatus:url:", [v8 statusCode], a1[4]);
    (*(a1[5] + 16))();
    v12 = a1[6];
    if (v12)
    {
      (*(v12 + 16))(v12, v11 == 0, v11);
    }
  }

  else
  {
    (*(a1[5] + 16))();
    v13 = a1[6];
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v9);
    }
  }
}

- (id)_marketingSubscriptionRequestWithType:(int)type action:(int)action dsid:(id)dsid
{
  v8 = MEMORY[0x1E69B6EA0];
  dsidCopy = dsid;
  v10 = objc_alloc_init(v8);
  v11 = [(FCNotificationsEndpointConnection *)self _deviceInfoWithDeviceToken:0 deviceDigestMode:0];
  [v10 setDeviceInfo:v11];
  [v10 setDsid:dsidCopy];

  if (action == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = action == 1;
  }

  [v10 setSubscriptionAction:v12];
  [v10 setSubscriptionType:type != 0];

  return v10;
}

- (void)_sendNotificationsSubscriptionRequest:(id)request pathComponent:(id)component callbackQueue:(id)queue completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  componentCopy = component;
  queueCopy = queue;
  completionCopy = completion;
  if (!requestCopy)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscriptionRequest"];
      *buf = 136315906;
      v22 = "[FCNotificationsEndpointConnection _sendNotificationsSubscriptionRequest:pathComponent:callbackQueue:completion:]";
      v23 = 2080;
      v24 = "FCNotificationsEndpointConnection.m";
      v25 = 1024;
      v26 = 522;
      v27 = 2114;
      v28 = v15;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      if (!completionCopy)
      {
        goto LABEL_6;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_6;
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_6;
  }

  serialQueue = [(FCNotificationsEndpointConnection *)self serialQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __114__FCNotificationsEndpointConnection__sendNotificationsSubscriptionRequest_pathComponent_callbackQueue_completion___block_invoke;
  v16[3] = &unk_1E7C425E8;
  v16[4] = self;
  v17 = componentCopy;
  v18 = requestCopy;
  v19 = queueCopy;
  v20 = completionCopy;
  [serialQueue enqueueBlock:v16];

LABEL_6:
}

void __114__FCNotificationsEndpointConnection__sendNotificationsSubscriptionRequest_pathComponent_callbackQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) baseURL];

  if (v4)
  {
    v5 = [*(a1 + 32) baseURL];
    v6 = [v5 URLByAppendingPathComponent:*(a1 + 40)];

    v7 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 48);
      *buf = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_INFO, "PushNotify url: %@ request: %@", buf, 0x16u);
    }

    v9 = [*(a1 + 32) endpointConnection];
    v10 = [*(a1 + 48) data];
    v11 = *MEMORY[0x1E695ABC0];
    v12 = *(a1 + 56);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __114__FCNotificationsEndpointConnection__sendNotificationsSubscriptionRequest_pathComponent_callbackQueue_completion___block_invoke_38;
    v17[3] = &unk_1E7C3BD48;
    v18 = v6;
    v19 = v3;
    v20 = *(a1 + 64);
    v13 = v6;
    LODWORD(v14) = v11;
    [v9 performHTTPRequestWithURL:v13 method:@"POST" data:v10 contentType:@"application/x-protobuf" priority:1 requiresMescalSigning:v12 callbackQueue:v14 completion:v17];
  }

  else
  {
    v3[2](v3);
    v15 = *(a1 + 64);
    if (v15)
    {
      v16 = [FCEndpointConnection errorForStatus:-2000 url:0];
      (*(v15 + 16))(v15, 0, v16);
    }
  }
}

void __114__FCNotificationsEndpointConnection__sendNotificationsSubscriptionRequest_pathComponent_callbackQueue_completion___block_invoke_38(void *a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_INFO, "PushNotify response: %@ error: %@", &v14, 0x16u);
  }

  if (v8)
  {
    v11 = +[FCEndpointConnection errorForStatus:url:](FCEndpointConnection, "errorForStatus:url:", [v8 statusCode], a1[4]);
    (*(a1[5] + 16))();
    v12 = a1[6];
    if (v12)
    {
      (*(v12 + 16))(v12, v11 == 0, v11);
    }
  }

  else
  {
    (*(a1[5] + 16))();
    v13 = a1[6];
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v9);
    }
  }
}

- (id)_pushNotifySubscriptionRequestWithChannelIDs:(id)ds paidChannelIDs:(id)iDs userID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode
{
  v8 = *&mode;
  v38[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  v16 = MEMORY[0x1E69B6F60];
  iDCopy = iD;
  tokenCopy = token;
  dCopy = d;
  v20 = objc_alloc_init(v16);
  [v20 setNotificationUserId:dCopy];

  [v20 setUserStorefrontId:iDCopy];
  v21 = [(FCNotificationsEndpointConnection *)self _deviceInfoWithDeviceToken:tokenCopy deviceDigestMode:v8];

  [v20 setDeviceInfo:v21];
  configurationManager = [(FCNotificationsEndpointConnection *)self configurationManager];
  configuration = [configurationManager configuration];
  editorialChannelID = [configuration editorialChannelID];

  bundleSubscriptionManager = [(FCNotificationsEndpointConnection *)self bundleSubscriptionManager];
  if (bundleSubscriptionManager)
  {
    bundleSubscriptionManager2 = [(FCNotificationsEndpointConnection *)self bundleSubscriptionManager];
    cachedSubscription = [bundleSubscriptionManager2 cachedSubscription];
    subscriptionState = [cachedSubscription subscriptionState];
  }

  else
  {
    subscriptionState = 3;
  }

  if ([dsCopy containsObject:editorialChannelID] && subscriptionState <= 1)
  {
    v29 = [dsCopy fc_arrayByRemovingObject:editorialChannelID];

    v30 = MEMORY[0x1E695DEC8];
    v38[0] = editorialChannelID;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    v32 = [v30 fc_arrayByAddingUniqueObjectsFromArray:v31 toArray:iDsCopy];

    iDsCopy = v32;
    dsCopy = v29;
  }

  array = [MEMORY[0x1E695DF70] array];
  if ([dsCopy count])
  {
    v34 = [(FCNotificationsEndpointConnection *)self _notificationEntitiesWithChannelIDs:dsCopy isPaid:0 paidBundleSubscriptionStatus:subscriptionState editorialChannelID:editorialChannelID];
    [array addObjectsFromArray:v34];
  }

  if ([iDsCopy count])
  {
    v35 = [(FCNotificationsEndpointConnection *)self _notificationEntitiesWithChannelIDs:iDsCopy isPaid:1 paidBundleSubscriptionStatus:subscriptionState editorialChannelID:editorialChannelID];
    [array addObjectsFromArray:v35];
  }

  if (![dsCopy count] && !objc_msgSend(iDsCopy, "count"))
  {
    v36 = [(FCNotificationsEndpointConnection *)self _notificationEntitiesWithChannelIDs:0 isPaid:0 paidBundleSubscriptionStatus:subscriptionState editorialChannelID:editorialChannelID];
    [array addObjectsFromArray:v36];
  }

  [v20 setNotificationEntitys:array];

  return v20;
}

- (id)_pushNotifySubscriptionRequestWithTopicIDs:(id)ds fromChannelID:(id)d withTopicGroupingID:(id)iD userID:(id)userID deviceToken:(id)token storefrontID:(id)storefrontID deviceDigestMode:(int)mode
{
  v39[1] = *MEMORY[0x1E69E9840];
  v15 = MEMORY[0x1E69B6F60];
  storefrontIDCopy = storefrontID;
  tokenCopy = token;
  userIDCopy = userID;
  iDCopy = iD;
  dCopy = d;
  dsCopy = ds;
  v21 = objc_alloc_init(v15);
  [v21 setNotificationUserId:userIDCopy];

  [v21 setUserStorefrontId:storefrontIDCopy];
  v22 = [(FCNotificationsEndpointConnection *)self _deviceInfoWithDeviceToken:tokenCopy deviceDigestMode:mode];

  [v21 setDeviceInfo:v22];
  bundleSubscriptionManager = [(FCNotificationsEndpointConnection *)self bundleSubscriptionManager];
  if (bundleSubscriptionManager)
  {
    bundleSubscriptionManager2 = [(FCNotificationsEndpointConnection *)self bundleSubscriptionManager];
    cachedSubscription = [bundleSubscriptionManager2 cachedSubscription];
    subscriptionState = [cachedSubscription subscriptionState];
  }

  else
  {
    subscriptionState = 3;
  }

  v38 = dCopy;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v28 = [(FCNotificationsEndpointConnection *)self _notificationEntityWithChannelIDs:v27 isPaid:0 paidBundleSubscriptionStatus:subscriptionState notificationType:3];
  v39[0] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];

  v30 = [v29 mutableCopy];
  [v21 setNotificationEntitys:v30];

  v31 = objc_alloc_init(MEMORY[0x1E69B7038]);
  [v31 setTopicGroupingId:iDCopy];

  v32 = [dsCopy mutableCopy];
  [v31 setTopicIds:v32];

  v37 = v31;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];

  v34 = [v33 mutableCopy];
  [v21 setTopicsFolloweds:v34];

  return v21;
}

- (id)_deviceInfoWithDeviceToken:(id)token deviceDigestMode:(int)mode
{
  v4 = *&mode;
  v6 = MEMORY[0x1E69B6E08];
  tokenCopy = token;
  v8 = objc_alloc_init(v6);
  [v8 setDevicePushToken:tokenCopy];

  deviceType = [(FCNotificationsEndpointConnection *)self deviceType];
  [v8 setDeviceType:deviceType];

  [v8 setDeviceTokenEnv:2];
  fc_preferredLanguageCodes = [MEMORY[0x1E695DF58] fc_preferredLanguageCodes];
  v11 = [fc_preferredLanguageCodes mutableCopy];
  [v8 setDevicePreferredLanguages:v11];

  deviceOSVersion = [(FCNotificationsEndpointConnection *)self deviceOSVersion];
  [v8 setDeviceOsVersion:deviceOSVersion];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v14 = [mainBundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  [v8 setDeviceAppVersion:v14];

  mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle2 bundleIdentifier];
  [v8 setDeviceAppBundleId:bundleIdentifier];

  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  abbreviation = [localTimeZone abbreviation];
  [v8 setDeviceTimezone:abbreviation];

  [v8 setDeviceUtcOffset:{objc_msgSend(localTimeZone, "secondsFromGMT")}];
  [localTimeZone daylightSavingTimeOffset];
  [v8 setDeviceDstOffset:v19];
  [v8 setDeviceDigestMode:v4];

  return v8;
}

- (id)_notificationEntitiesWithChannelIDs:(id)ds isPaid:(BOOL)paid paidBundleSubscriptionStatus:(unint64_t)status editorialChannelID:(id)d
{
  paidCopy = paid;
  v17[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  array = [MEMORY[0x1E695DF70] array];
  if ([dsCopy containsObject:dCopy])
  {
    v17[0] = dCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v14 = [(FCNotificationsEndpointConnection *)self _notificationEntityWithChannelIDs:v13 isPaid:status < 2 paidBundleSubscriptionStatus:status notificationType:2];

    [array addObject:v14];
  }

  v15 = [(FCNotificationsEndpointConnection *)self _notificationEntityWithChannelIDs:dsCopy isPaid:paidCopy paidBundleSubscriptionStatus:status notificationType:1];
  [array addObject:v15];

  return array;
}

- (id)_notificationEntityWithChannelIDs:(id)ds isPaid:(BOOL)paid paidBundleSubscriptionStatus:(unint64_t)status notificationType:(int)type
{
  v6 = *&type;
  paidCopy = paid;
  v10 = MEMORY[0x1E69B6EC0];
  dsCopy = ds;
  v12 = objc_alloc_init(v10);
  v13 = [dsCopy mutableCopy];

  [v12 setTagIds:v13];
  if (paidCopy)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [v12 setSubscriberType:v14];
  [v12 setPaidBundleSubscriptionStatus:{-[FCNotificationsEndpointConnection _pbNotificationEntityPaidBundleSubscriptionStatusFromSubscriptionState:](self, "_pbNotificationEntityPaidBundleSubscriptionStatusFromSubscriptionState:", status)}];
  [v12 setNotificationType:v6];

  return v12;
}

- (int)_pbNotificationEntityPaidBundleSubscriptionStatusFromSubscriptionState:(unint64_t)state
{
  if (state - 1 > 2)
  {
    return 1;
  }

  else
  {
    return dword_1B681A98C[state - 1];
  }
}

- (void)_updateNotificationDropboxDataWithBaseURL:(id)l notificationUserID:(id)d deviceToken:(id)token storefrontID:(id)iD deviceDigestMode:(int)mode
{
  lCopy = l;
  dCopy = d;
  tokenCopy = token;
  iDCopy = iD;
  fileCoordinatedNotificationDropbox = [(FCNotificationsEndpointConnection *)self fileCoordinatedNotificationDropbox];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __140__FCNotificationsEndpointConnection__updateNotificationDropboxDataWithBaseURL_notificationUserID_deviceToken_storefrontID_deviceDigestMode___block_invoke;
  v21[3] = &unk_1E7C42610;
  v22 = lCopy;
  v23 = dCopy;
  v24 = tokenCopy;
  v25 = iDCopy;
  modeCopy = mode;
  v17 = iDCopy;
  v18 = tokenCopy;
  v19 = dCopy;
  v20 = lCopy;
  [fileCoordinatedNotificationDropbox depositWithAccessor:v21 completion:0];
}

void __140__FCNotificationsEndpointConnection__updateNotificationDropboxDataWithBaseURL_notificationUserID_deviceToken_storefrontID_deviceDigestMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setBaseURLString:v3];
  [v4 setNotificationUserID:*(a1 + 40)];
  [v4 setDeviceToken:*(a1 + 48)];
  [v4 setStorefrontID:*(a1 + 56)];
  [v4 setDeviceDigestMode:*(a1 + 64)];
}

- (id)_notificationDataInDropbox
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__52;
  v10 = __Block_byref_object_dispose__52;
  v11 = 0;
  fileCoordinatedNotificationDropbox = [(FCNotificationsEndpointConnection *)self fileCoordinatedNotificationDropbox];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__FCNotificationsEndpointConnection__notificationDataInDropbox__block_invoke;
  v5[3] = &unk_1E7C42638;
  v5[4] = &v6;
  [fileCoordinatedNotificationDropbox peekSyncWithAccessor:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)updateBaseURL:(id)l
{
  v4 = [FCBaseURLConfiguration notificationsBaseURLForConfiguration:l];
  [(FCNotificationsEndpointConnection *)self setBaseURL:v4];
}

- (void)configurationManager:(id)manager configurationDidChange:(id)change
{
  changeCopy = change;
  serialQueue = [(FCNotificationsEndpointConnection *)self serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__FCNotificationsEndpointConnection_configurationManager_configurationDidChange___block_invoke;
  v8[3] = &unk_1E7C3BDC0;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  [serialQueue enqueueBlock:v8];
}

void __81__FCNotificationsEndpointConnection_configurationManager_configurationDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 updateBaseURL:v3];
  v4[2]();
}

@end