@interface FCNotificationController
- (BOOL)refreshNotificationsForChannelIDs:(id)ds paidChannelIDs:(id)iDs;
- (BOOL)refreshNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD;
- (BOOL)registerNotificationsForChannelID:(id)d isPaid:(BOOL)paid;
- (BOOL)registerNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD;
- (BOOL)setMarketingNotificationsEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setPuzzleNotificationsEnabled:(BOOL)enabled userTriggered:(BOOL)triggered error:(id *)error;
- (BOOL)unregisterNotificationsForChannelID:(id)d;
- (BOOL)unregisterNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD;
- (FCNotificationController)init;
- (FCNotificationController)initWithUserInfo:(id)info commandQueue:(id)queue configurationManager:(id)manager publisherNotificationsAllowed:(BOOL)allowed appleNewsNotificationsAllowed:(BOOL)notificationsAllowed;
- (id)appendBreakingNewsIfNeededToChannelIDs:(id)ds;
- (void)_registerDeviceToken:(id)token deviceDigestMode:(int)mode;
- (void)dealloc;
- (void)deviceDigestModeDidUpdateToDigestMode:(int)mode;
- (void)refreshNotificationsFromAppleNews;
- (void)registerDeviceToken:(id)token deviceDigestMode:(int)mode;
- (void)setEndOfAudioTrackNotificationsEnabled:(BOOL)enabled;
- (void)setNewIssueNotificationsEnabled:(BOOL)enabled;
- (void)setSportsTopicNotificationsEnabled:(BOOL)enabled;
- (void)userInfoDidChangeNotificationsUserID:(id)d;
@end

@implementation FCNotificationController

- (FCNotificationController)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCNotificationController init]";
    v10 = 2080;
    v11 = "FCNotificationController.m";
    v12 = 1024;
    v13 = 48;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCNotificationController init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCNotificationController)initWithUserInfo:(id)info commandQueue:(id)queue configurationManager:(id)manager publisherNotificationsAllowed:(BOOL)allowed appleNewsNotificationsAllowed:(BOOL)notificationsAllowed
{
  v31 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  queueCopy = queue;
  managerCopy = manager;
  if (!queueCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "commandQueue"];
    *buf = 136315906;
    v24 = "[FCNotificationController initWithUserInfo:commandQueue:configurationManager:publisherNotificationsAllowed:appleNewsNotificationsAllowed:]";
    v25 = 2080;
    v26 = "FCNotificationController.m";
    v27 = 1024;
    v28 = 57;
    v29 = 2114;
    v30 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v22.receiver = self;
  v22.super_class = FCNotificationController;
  v16 = [(FCNotificationController *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_userInfo, info);
    notificationsUserID = [infoCopy notificationsUserID];
    notificationsUserID = v17->_notificationsUserID;
    v17->_notificationsUserID = notificationsUserID;

    objc_storeStrong(&v17->_commandQueue, queue);
    objc_storeStrong(&v17->_configurationManager, manager);
    v17->_publisherNotificationsAllowed = allowed;
    v17->_appleNewsNotificationsAllowed = notificationsAllowed;
    [infoCopy addObserver:v17];
  }

  return v17;
}

- (void)dealloc
{
  userInfo = [(FCNotificationController *)self userInfo];
  [userInfo removeObserver:self];

  v4.receiver = self;
  v4.super_class = FCNotificationController;
  [(FCNotificationController *)&v4 dealloc];
}

- (void)registerDeviceToken:(id)token deviceDigestMode:(int)mode
{
  v4 = *&mode;
  tokenCopy = token;
  deviceToken = [(FCNotificationController *)self deviceToken];
  v7 = [deviceToken isEqualToString:tokenCopy];

  if ((v7 & 1) == 0)
  {
    [(FCNotificationController *)self setDeviceToken:tokenCopy];
    [(FCNotificationController *)self setDeviceDigestMode:v4];
    if (tokenCopy)
    {
      [(FCNotificationController *)self _registerDeviceToken:tokenCopy deviceDigestMode:v4];
    }
  }
}

- (void)deviceDigestModeDidUpdateToDigestMode:(int)mode
{
  v3 = *&mode;
  [(FCNotificationController *)self setDeviceDigestMode:?];
  deviceToken = [(FCNotificationController *)self deviceToken];

  if (deviceToken)
  {
    deviceToken2 = [(FCNotificationController *)self deviceToken];
    [(FCNotificationController *)self _registerDeviceToken:deviceToken2 deviceDigestMode:v3];
  }

  else
  {
    v6 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to update digest mode; cannot call CAPI endpoint without device token", buf, 2u);
    }
  }
}

- (void)_registerDeviceToken:(id)token deviceDigestMode:(int)mode
{
  v4 = *&mode;
  v28 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if ([(FCNotificationController *)self publisherNotificationsAllowed]|| [(FCNotificationController *)self appleNewsNotificationsAllowed])
  {
    if (!tokenCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "deviceToken"];
      *buf = 136315906;
      v21 = "[FCNotificationController _registerDeviceToken:deviceDigestMode:]";
      v22 = 2080;
      v23 = "FCNotificationController.m";
      v24 = 1024;
      v25 = 115;
      v26 = 2114;
      v27 = v17;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v7 = +[FCAppleAccount sharedAccount];
    contentStoreFrontID = [v7 contentStoreFrontID];

    if (tokenCopy)
    {
      notificationsUserID = [(FCNotificationController *)self notificationsUserID];

      if (notificationsUserID)
      {
        v10 = +[FCNetworkReachability sharedNetworkReachability];
        if ([v10 isCloudKitReachable])
        {
          v11 = [FCRegisterDeviceTokenCommand alloc];
          notificationsUserID2 = [(FCNotificationController *)self notificationsUserID];
          v13 = [(FCRegisterDeviceTokenCommand *)v11 initWithUserID:notificationsUserID2 deviceToken:tokenCopy storefrontID:contentStoreFrontID deviceDigestMode:v4];

          commandQueue = [(FCNotificationController *)self commandQueue];
          [commandQueue addCommand:v13];
        }

        else
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __66__FCNotificationController__registerDeviceToken_deviceDigestMode___block_invoke_22;
          v18[3] = &unk_1E7C36C58;
          v18[4] = self;
          v19 = contentStoreFrontID;
          __66__FCNotificationController__registerDeviceToken_deviceDigestMode___block_invoke_22(v18);
        }

        goto LABEL_17;
      }

      v15 = FCPushNotificationsLog;
      if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v16 = "failed to create command to register device token: invalid notificationsUserID";
        goto LABEL_14;
      }
    }

    else
    {
      v15 = FCPushNotificationsLog;
      if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v16 = "failed to create command to register device token: invalid deviceToken";
LABEL_14:
        _os_log_error_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
      }
    }

LABEL_17:
  }
}

void __66__FCNotificationController__registerDeviceToken_deviceDigestMode___block_invoke_22(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 deviceToken];
    v6 = [*(a1 + 32) notificationsUserID];
    v7 = *(a1 + 40);
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_error_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_ERROR, "failed to create command to register device token: CloudKit unreachable, deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v8, 0x20u);
  }
}

- (BOOL)registerNotificationsForChannelID:(id)d isPaid:(BOOL)paid
{
  v43 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([(FCNotificationController *)self publisherNotificationsAllowed])
  {
    if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelID"];
      *buf = 136315906;
      v36 = "[FCNotificationController registerNotificationsForChannelID:isPaid:]";
      v37 = 2080;
      v38 = "FCNotificationController.m";
      v39 = 1024;
      v40 = 147;
      v41 = 2114;
      v42 = v23;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v7 = +[FCAppleAccount sharedAccount];
    contentStoreFrontID = [v7 contentStoreFrontID];

    if (dCopy && ([(FCNotificationController *)self deviceToken], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, [(FCNotificationController *)self notificationsUserID], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
    {
      v12 = +[FCNetworkReachability sharedNetworkReachability];
      if ([v12 isCloudKitReachable])
      {
        if (paid)
        {
          v33 = dCopy;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
          v14 = 0;
        }

        else
        {
          v34 = dCopy;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
          v13 = 0;
        }

        v16 = [(FCNotificationController *)self appendBreakingNewsIfNeededToChannelIDs:v14];

        v17 = [FCModifyNotificationsForChannelsCommand alloc];
        notificationsUserID = [(FCNotificationController *)self notificationsUserID];
        deviceToken = [(FCNotificationController *)self deviceToken];
        LODWORD(v24) = [(FCNotificationController *)self deviceDigestMode];
        v20 = [(FCModifyNotificationsForChannelsCommand *)v17 initWithChannelIDsToAdd:v16 paidChannelIDsToAdd:v13 channelIDsToRemove:0 userID:notificationsUserID deviceToken:deviceToken storefrontID:contentStoreFrontID deviceDigestMode:v24];

        commandQueue = [(FCNotificationController *)self commandQueue];
        [commandQueue addCommand:v20];

        v15 = 1;
      }

      else
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __69__FCNotificationController_registerNotificationsForChannelID_isPaid___block_invoke_29;
        v25[3] = &unk_1E7C382E8;
        v26 = dCopy;
        selfCopy = self;
        v28 = contentStoreFrontID;
        v15 = __69__FCNotificationController_registerNotificationsForChannelID_isPaid___block_invoke_29(v25);

        v16 = v26;
      }
    }

    else
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __69__FCNotificationController_registerNotificationsForChannelID_isPaid___block_invoke_28;
      v29[3] = &unk_1E7C382E8;
      v30 = dCopy;
      selfCopy2 = self;
      v32 = contentStoreFrontID;
      v15 = __69__FCNotificationController_registerNotificationsForChannelID_isPaid___block_invoke_28(v29);

      v12 = v30;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __69__FCNotificationController_registerNotificationsForChannelID_isPaid___block_invoke_28(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = v2;
    v7 = [v4 deviceToken];
    v8 = [*(a1 + 40) notificationsUserID];
    v9 = *(a1 + 48);
    v10 = 138544130;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to create command to register notifications for channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v10, 0x2Au);
  }

  return 0;
}

uint64_t __69__FCNotificationController_registerNotificationsForChannelID_isPaid___block_invoke_29(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = v2;
    v7 = [v4 deviceToken];
    v8 = [*(a1 + 40) notificationsUserID];
    v9 = *(a1 + 48);
    v10 = 138544130;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to create command to register notifications: CloudKit unreachable, channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v10, 0x2Au);
  }

  return 0;
}

- (BOOL)unregisterNotificationsForChannelID:(id)d
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([(FCNotificationController *)self publisherNotificationsAllowed])
  {
    if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelID"];
      *buf = 136315906;
      v32 = "[FCNotificationController unregisterNotificationsForChannelID:]";
      v33 = 2080;
      v34 = "FCNotificationController.m";
      v35 = 1024;
      v36 = 184;
      v37 = 2114;
      v38 = v20;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v5 = +[FCAppleAccount sharedAccount];
    contentStoreFrontID = [v5 contentStoreFrontID];

    if (dCopy && ([(FCNotificationController *)self deviceToken], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, [(FCNotificationController *)self notificationsUserID], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      v10 = +[FCNetworkReachability sharedNetworkReachability];
      if ([v10 isCloudKitReachable])
      {
        v30 = dCopy;
        v11 = 1;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        v13 = [(FCNotificationController *)self appendBreakingNewsIfNeededToChannelIDs:v12];

        v14 = [FCModifyNotificationsForChannelsCommand alloc];
        notificationsUserID = [(FCNotificationController *)self notificationsUserID];
        deviceToken = [(FCNotificationController *)self deviceToken];
        LODWORD(v21) = [(FCNotificationController *)self deviceDigestMode];
        v17 = [(FCModifyNotificationsForChannelsCommand *)v14 initWithChannelIDsToAdd:0 paidChannelIDsToAdd:0 channelIDsToRemove:v13 userID:notificationsUserID deviceToken:deviceToken storefrontID:contentStoreFrontID deviceDigestMode:v21];

        commandQueue = [(FCNotificationController *)self commandQueue];
        [commandQueue addCommand:v17];
      }

      else
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __64__FCNotificationController_unregisterNotificationsForChannelID___block_invoke_35;
        v22[3] = &unk_1E7C382E8;
        v23 = dCopy;
        selfCopy = self;
        v25 = contentStoreFrontID;
        v11 = __64__FCNotificationController_unregisterNotificationsForChannelID___block_invoke_35(v22);

        v13 = v23;
      }
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __64__FCNotificationController_unregisterNotificationsForChannelID___block_invoke_34;
      v26[3] = &unk_1E7C382E8;
      v27 = dCopy;
      selfCopy2 = self;
      v29 = contentStoreFrontID;
      v11 = __64__FCNotificationController_unregisterNotificationsForChannelID___block_invoke_34(v26);

      v10 = v27;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __64__FCNotificationController_unregisterNotificationsForChannelID___block_invoke_34(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = v2;
    v7 = [v4 deviceToken];
    v8 = [*(a1 + 40) notificationsUserID];
    v9 = *(a1 + 48);
    v10 = 138544130;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to create command to unregister notifications for channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v10, 0x2Au);
  }

  return 0;
}

uint64_t __64__FCNotificationController_unregisterNotificationsForChannelID___block_invoke_35(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = v2;
    v7 = [v4 deviceToken];
    v8 = [*(a1 + 40) notificationsUserID];
    v9 = *(a1 + 48);
    v10 = 138544130;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "failed to create command to unregister notifications: CloudKit unreachable, channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v10, 0x2Au);
  }

  return 0;
}

- (BOOL)refreshNotificationsForChannelIDs:(id)ds paidChannelIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  if ([(FCNotificationController *)self publisherNotificationsAllowed])
  {
    v8 = +[FCAppleAccount sharedAccount];
    contentStoreFrontID = [v8 contentStoreFrontID];

    deviceToken = [(FCNotificationController *)self deviceToken];
    if (deviceToken && (v11 = deviceToken, [(FCNotificationController *)self notificationsUserID], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
    {
      v13 = +[FCNetworkReachability sharedNetworkReachability];
      if ([v13 isCloudKitReachable])
      {
        v14 = [(FCNotificationController *)self appendBreakingNewsIfNeededToChannelIDs:dsCopy];
        v15 = [FCRefreshNotificationsForChannelsCommand alloc];
        notificationsUserID = [(FCNotificationController *)self notificationsUserID];
        deviceToken2 = [(FCNotificationController *)self deviceToken];
        v18 = [(FCRefreshNotificationsForChannelsCommand *)v15 initWithChannelIDs:v14 paidChannelIDs:iDsCopy userID:notificationsUserID deviceToken:deviceToken2 storefrontID:contentStoreFrontID deviceDigestMode:[(FCNotificationController *)self deviceDigestMode]];

        commandQueue = [(FCNotificationController *)self commandQueue];
        [commandQueue addCommand:v18];

        v20 = 1;
      }

      else
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __77__FCNotificationController_refreshNotificationsForChannelIDs_paidChannelIDs___block_invoke_38;
        v22[3] = &unk_1E7C44E98;
        v23 = dsCopy;
        v24 = iDsCopy;
        selfCopy = self;
        v26 = contentStoreFrontID;
        v20 = __77__FCNotificationController_refreshNotificationsForChannelIDs_paidChannelIDs___block_invoke_38(v22);
      }
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __77__FCNotificationController_refreshNotificationsForChannelIDs_paidChannelIDs___block_invoke_2;
      v27[3] = &unk_1E7C44E98;
      v28 = dsCopy;
      v29 = iDsCopy;
      selfCopy2 = self;
      v31 = contentStoreFrontID;
      v20 = __77__FCNotificationController_refreshNotificationsForChannelIDs_paidChannelIDs___block_invoke_2(v27);

      v13 = v28;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t __77__FCNotificationController_refreshNotificationsForChannelIDs_paidChannelIDs___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = v2;
    v8 = [v6 deviceToken];
    v9 = [*(a1 + 48) notificationsUserID];
    v10 = *(a1 + 56);
    v11 = 138544386;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "failed to create command to refresh notifications for channelIDs: %{public}@ paidChannelIDs: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v11, 0x34u);
  }

  return 0;
}

uint64_t __77__FCNotificationController_refreshNotificationsForChannelIDs_paidChannelIDs___block_invoke_38(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = v2;
    v8 = [v6 deviceToken];
    v9 = [*(a1 + 48) notificationsUserID];
    v10 = *(a1 + 56);
    v11 = 138544386;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "failed to create command to refresh notifications: CloudKit unreachable, channelIDs: %{public}@ paidChannelIDs: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v11, 0x34u);
  }

  return 0;
}

- (BOOL)registerNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD
{
  v44 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  if (!iDCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelID"];
    *buf = 136315906;
    v37 = "[FCNotificationController registerNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:]";
    v38 = 2080;
    v39 = "FCNotificationController.m";
    v40 = 1024;
    v41 = 248;
    v42 = 2114;
    v43 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11 = +[FCAppleAccount sharedAccount];
  contentStoreFrontID = [v11 contentStoreFrontID];

  if (iDCopy && ([(FCNotificationController *)self deviceToken], (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, [(FCNotificationController *)self notificationsUserID], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = +[FCNetworkReachability sharedNetworkReachability];
    if ([v16 isCloudKitReachable])
    {
      v17 = [FCModifyNotificationsForTopicsCommand alloc];
      notificationsUserID = [(FCNotificationController *)self notificationsUserID];
      deviceToken = [(FCNotificationController *)self deviceToken];
      LODWORD(v25) = [(FCNotificationController *)self deviceDigestMode];
      v20 = [(FCModifyNotificationsForTopicsCommand *)v17 initWithTopicIDsToAdd:dsCopy topicIDsToRemove:0 withTopicGroupingID:dCopy fromChannelID:iDCopy userID:notificationsUserID deviceToken:deviceToken storefrontID:contentStoreFrontID deviceDigestMode:v25];

      commandQueue = [(FCNotificationController *)self commandQueue];
      [commandQueue addCommand:v20];

      v22 = 1;
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __95__FCNotificationController_registerNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_40;
      v26[3] = &unk_1E7C44E98;
      v27 = dsCopy;
      v28 = iDCopy;
      selfCopy = self;
      v30 = contentStoreFrontID;
      v22 = __95__FCNotificationController_registerNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_40(v26);

      v20 = v27;
    }
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __95__FCNotificationController_registerNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke;
    v31[3] = &unk_1E7C44E98;
    v32 = dsCopy;
    v33 = iDCopy;
    selfCopy2 = self;
    v35 = contentStoreFrontID;
    v22 = __95__FCNotificationController_registerNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke(v31);

    v16 = v32;
  }

  return v22;
}

uint64_t __95__FCNotificationController_registerNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = v2;
    v8 = [v6 deviceToken];
    v9 = [*(a1 + 48) notificationsUserID];
    v10 = *(a1 + 56);
    v11 = 138544386;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "failed to create command to register topic notifications with topicIDs: %{public}@ channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v11, 0x34u);
  }

  return 0;
}

uint64_t __95__FCNotificationController_registerNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_40(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = v2;
    v8 = [v6 deviceToken];
    v9 = [*(a1 + 48) notificationsUserID];
    v10 = *(a1 + 56);
    v11 = 138544386;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "failed to create command to register notifications: CloudKit unreachable, topicIDs: %{public}@ channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v11, 0x34u);
  }

  return 0;
}

- (BOOL)unregisterNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD
{
  v44 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  if (!iDCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelID"];
    *buf = 136315906;
    v37 = "[FCNotificationController unregisterNotificationsForTopicIDs:withTopicGroupingID:fromChannelID:]";
    v38 = 2080;
    v39 = "FCNotificationController.m";
    v40 = 1024;
    v41 = 280;
    v42 = 2114;
    v43 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11 = +[FCAppleAccount sharedAccount];
  contentStoreFrontID = [v11 contentStoreFrontID];

  if (iDCopy && ([(FCNotificationController *)self deviceToken], (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, [(FCNotificationController *)self notificationsUserID], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = +[FCNetworkReachability sharedNetworkReachability];
    if ([v16 isCloudKitReachable])
    {
      v17 = [FCModifyNotificationsForTopicsCommand alloc];
      notificationsUserID = [(FCNotificationController *)self notificationsUserID];
      deviceToken = [(FCNotificationController *)self deviceToken];
      LODWORD(v25) = [(FCNotificationController *)self deviceDigestMode];
      v20 = [(FCModifyNotificationsForTopicsCommand *)v17 initWithTopicIDsToAdd:0 topicIDsToRemove:dsCopy withTopicGroupingID:dCopy fromChannelID:iDCopy userID:notificationsUserID deviceToken:deviceToken storefrontID:contentStoreFrontID deviceDigestMode:v25];

      commandQueue = [(FCNotificationController *)self commandQueue];
      [commandQueue addCommand:v20];

      v22 = 1;
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __97__FCNotificationController_unregisterNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_42;
      v26[3] = &unk_1E7C44E98;
      v27 = dsCopy;
      v28 = iDCopy;
      selfCopy = self;
      v30 = contentStoreFrontID;
      v22 = __97__FCNotificationController_unregisterNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_42(v26);

      v20 = v27;
    }
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __97__FCNotificationController_unregisterNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke;
    v31[3] = &unk_1E7C44E98;
    v32 = dsCopy;
    v33 = iDCopy;
    selfCopy2 = self;
    v35 = contentStoreFrontID;
    v22 = __97__FCNotificationController_unregisterNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke(v31);

    v16 = v32;
  }

  return v22;
}

uint64_t __97__FCNotificationController_unregisterNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = v2;
    v8 = [v6 deviceToken];
    v9 = [*(a1 + 48) notificationsUserID];
    v10 = *(a1 + 56);
    v11 = 138544386;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "failed to create command to register topic notifications with topicIDs: %{public}@ channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v11, 0x34u);
  }

  return 0;
}

uint64_t __97__FCNotificationController_unregisterNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_42(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = v2;
    v8 = [v6 deviceToken];
    v9 = [*(a1 + 48) notificationsUserID];
    v10 = *(a1 + 56);
    v11 = 138544386;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "failed to create command to register notifications: CloudKit unreachable, topicIDs: %{public}@ channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v11, 0x34u);
  }

  return 0;
}

- (BOOL)refreshNotificationsForTopicIDs:(id)ds withTopicGroupingID:(id)d fromChannelID:(id)iD
{
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  v11 = +[FCAppleAccount sharedAccount];
  contentStoreFrontID = [v11 contentStoreFrontID];

  deviceToken = [(FCNotificationController *)self deviceToken];
  if (deviceToken && (v14 = deviceToken, [(FCNotificationController *)self notificationsUserID], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = +[FCNetworkReachability sharedNetworkReachability];
    if ([v16 isCloudKitReachable])
    {
      v17 = [FCRefreshNotificationsForTopicsCommand alloc];
      notificationsUserID = [(FCNotificationController *)self notificationsUserID];
      deviceToken2 = [(FCNotificationController *)self deviceToken];
      LODWORD(v24) = [(FCNotificationController *)self deviceDigestMode];
      v20 = [(FCRefreshNotificationsForTopicsCommand *)v17 initWithTopicsIDs:dsCopy withTopicGroupingID:dCopy fromChannelID:iDCopy userID:notificationsUserID deviceToken:deviceToken2 storefrontID:contentStoreFrontID deviceDigestMode:v24];

      commandQueue = [(FCNotificationController *)self commandQueue];
      [commandQueue addCommand:v20];

      v22 = 1;
    }

    else
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __94__FCNotificationController_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_43;
      v25[3] = &unk_1E7C47DD8;
      v26 = dsCopy;
      v27 = dCopy;
      v28 = iDCopy;
      selfCopy = self;
      v30 = contentStoreFrontID;
      v22 = __94__FCNotificationController_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_43(v25);
    }
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __94__FCNotificationController_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke;
    v31[3] = &unk_1E7C47DD8;
    v32 = dsCopy;
    v33 = dCopy;
    v34 = iDCopy;
    selfCopy2 = self;
    v36 = contentStoreFrontID;
    v22 = __94__FCNotificationController_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke(v31);

    v16 = v32;
  }

  return v22;
}

uint64_t __94__FCNotificationController_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = v2;
    v9 = [v6 deviceToken];
    v10 = [*(a1 + 56) notificationsUserID];
    v11 = *(a1 + 64);
    v12 = 138544642;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "failed to create command to refresh notifications for topicIDs: %{public}@ topicGroupingID: %{public}@ channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v12, 0x3Eu);
  }

  return 0;
}

uint64_t __94__FCNotificationController_refreshNotificationsForTopicIDs_withTopicGroupingID_fromChannelID___block_invoke_43(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = v2;
    v9 = [v6 deviceToken];
    v10 = [*(a1 + 56) notificationsUserID];
    v11 = *(a1 + 64);
    v12 = 138544642;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "failed to create command to refresh notifications: CloudKit unreachable, topicIDs: %{public}@ topicGroupingID: %{public}@ channelID: %{public}@ deviceToken: %{public}@ notificationsUserID: %{public}@ storefrontID: %{public}@", &v12, 0x3Eu);
  }

  return 0;
}

- (BOOL)setMarketingNotificationsEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  if ([(FCNotificationController *)self appleNewsNotificationsAllowed])
  {
    v7 = +[FCAppleAccount sharedAccount];
    iTunesAccountDSID = [v7 iTunesAccountDSID];

    if (iTunesAccountDSID)
    {
      v9 = +[FCNetworkReachability sharedNetworkReachability];
      isCloudKitReachable = [v9 isCloudKitReachable];
      if (isCloudKitReachable)
      {
        if (enabledCopy)
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }

        v12 = [[FCModifyNotificationsForMarketingCommand alloc] initWithType:1 action:v11 iTunesDSID:iTunesAccountDSID];
        commandQueue = [(FCNotificationController *)self commandQueue];
        [commandQueue addCommand:v12];

        userInfo = [(FCNotificationController *)self userInfo];
        [userInfo setMarketingNotificationsEnabled:enabledCopy];

        goto LABEL_15;
      }

      v16 = FCPushNotificationsLog;
      if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_ERROR, "failed to create command to register For Marketing Notifications: CloudKit unreachable", v18, 2u);
        if (!error)
        {
          goto LABEL_15;
        }
      }

      else if (!error)
      {
LABEL_15:

        goto LABEL_16;
      }

      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCErrorDomain" code:10 userInfo:0];
      goto LABEL_15;
    }

    v15 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_ERROR, "Cannot alter marketing notifications status without an iTunes DSID. Please ensure device is logged into iTunes.", buf, 2u);
      if (error)
      {
        goto LABEL_11;
      }
    }

    else if (error)
    {
LABEL_11:
      [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Cannot alter marketing notifications status without an iTunes DSID. Please ensure device is logged into iTunes."];
      *error = isCloudKitReachable = 0;
LABEL_16:

      return isCloudKitReachable;
    }

    isCloudKitReachable = 0;
    goto LABEL_16;
  }

  return 0;
}

- (BOOL)setPuzzleNotificationsEnabled:(BOOL)enabled userTriggered:(BOOL)triggered error:(id *)error
{
  triggeredCopy = triggered;
  enabledCopy = enabled;
  v24 = *MEMORY[0x1E69E9840];
  if ([(FCNotificationController *)self appleNewsNotificationsAllowed])
  {
    configurationManager = [(FCNotificationController *)self configurationManager];
    configuration = [configurationManager configuration];
    puzzlesConfig = [configuration puzzlesConfig];
    puzzleHubTagID = [puzzlesConfig puzzleHubTagID];

    if (!puzzleHubTagID)
    {
      v18 = FCPushNotificationsLog;
      if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22) = 0;
        _os_log_error_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_ERROR, "Failed to get puzzleHubTagID. Cannot alter puzzles notifications status.", &v22, 2u);
      }

      v14 = MEMORY[0x1E696ABC0];
      v15 = @"Failed to get puzzleHubTagID. Cannot alter marketing notifications status without a valid puzzleHubTagID.";
      goto LABEL_19;
    }

    if (enabledCopy)
    {
      if (![(FCNotificationController *)self registerNotificationsForChannelID:puzzleHubTagID isPaid:0])
      {
        v13 = FCPushNotificationsLog;
        if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
        {
          v22 = 138412290;
          v23 = puzzleHubTagID;
          _os_log_error_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_ERROR, "Failed to register notifications for %@.", &v22, 0xCu);
        }

        v14 = MEMORY[0x1E696ABC0];
        v15 = @"Failed to register notifications for puzzleHubTagID.";
LABEL_19:
        [v14 fc_errorWithCode:16 description:v15];
        *error = v17 = 0;
        goto LABEL_20;
      }
    }

    else if (![(FCNotificationController *)self unregisterNotificationsForChannelID:puzzleHubTagID])
    {
      v20 = FCPushNotificationsLog;
      if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
      {
        v22 = 138412290;
        v23 = puzzleHubTagID;
        _os_log_error_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_ERROR, "Failed to unregister notifications for %@.", &v22, 0xCu);
      }

      v14 = MEMORY[0x1E696ABC0];
      v15 = @"Failed to unregister notifications for puzzleHubTagID.";
      goto LABEL_19;
    }

    userInfo = [(FCNotificationController *)self userInfo];
    [userInfo setPuzzleNotificationsEnabled:enabledCopy userTriggered:triggeredCopy];

    v17 = 1;
LABEL_20:

    return v17;
  }

  v16 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v22) = 0;
    _os_log_error_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_ERROR, "Apple News push notifications not allowed. Cannot alter puzzles notifications status.", &v22, 2u);
  }

  [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Apple News push notifications not allowed. Cannot alter puzzles notifications status."];
  *error = v17 = 0;
  return v17;
}

- (void)setNewIssueNotificationsEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__FCNotificationController_setNewIssueNotificationsEnabled___block_invoke;
  v3[3] = &unk_1E7C47E00;
  v3[4] = self;
  enabledCopy = enabled;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __60__FCNotificationController_setNewIssueNotificationsEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  [v2 setNewIssueNotificationsEnabled:*(a1 + 40)];
}

- (void)setEndOfAudioTrackNotificationsEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__FCNotificationController_setEndOfAudioTrackNotificationsEnabled___block_invoke;
  v3[3] = &unk_1E7C47E00;
  v3[4] = self;
  enabledCopy = enabled;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __67__FCNotificationController_setEndOfAudioTrackNotificationsEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  [v2 setEndOfAudioTrackNotificationsEnabled:*(a1 + 40)];
}

- (void)setSportsTopicNotificationsEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__FCNotificationController_setSportsTopicNotificationsEnabled___block_invoke;
  v3[3] = &unk_1E7C47E00;
  v3[4] = self;
  enabledCopy = enabled;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __63__FCNotificationController_setSportsTopicNotificationsEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v4 = v2;
  if (*(a1 + 40))
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  [v2 setSportsTopicNotificationsEnabledState:v3];
}

- (void)refreshNotificationsFromAppleNews
{
  if ([(FCNotificationController *)self appleNewsNotificationsAllowed])
  {
    objc_initWeak(&location, self);
    userInfo = [(FCNotificationController *)self userInfo];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __61__FCNotificationController_refreshNotificationsFromAppleNews__block_invoke_2;
    v4[3] = &unk_1E7C3C090;
    objc_copyWeak(&v5, &location);
    [userInfo syncWithCompletion:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __61__FCNotificationController_refreshNotificationsFromAppleNews__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__FCNotificationController_refreshNotificationsFromAppleNews__block_invoke_3;
  v7[3] = &unk_1E7C47E28;
  v8 = v4;
  v6 = v4;
  FCPerformIfNonNil(WeakRetained, v7);
}

void __61__FCNotificationController_refreshNotificationsFromAppleNews__block_invoke_3(uint64_t a1, void *a2)
{
  if (!*(a1 + 32))
  {
    v3 = a2;
    v4 = [v3 userInfo];
    [v3 setMarketingNotificationsEnabled:objc_msgSend(v4 error:{"marketingNotificationsEnabled"), 0}];
  }
}

- (id)appendBreakingNewsIfNeededToChannelIDs:(id)ds
{
  dsCopy = ds;
  configurationManager = [(FCNotificationController *)self configurationManager];
  configuration = [configurationManager configuration];

  topStoriesConfig = [configuration topStoriesConfig];
  channelID = [topStoriesConfig channelID];

  breakingNewsChannelID = [configuration breakingNewsChannelID];
  v10 = dsCopy;
  if ([breakingNewsChannelID length])
  {
    v10 = dsCopy;
    if ([channelID length])
    {
      v10 = dsCopy;
      if ([dsCopy containsObject:channelID])
      {
        v10 = [dsCopy arrayByAddingObject:breakingNewsChannelID];
      }
    }
  }

  return v10;
}

- (void)userInfoDidChangeNotificationsUserID:(id)d
{
  notificationsUserID = [d notificationsUserID];
  notificationsUserID2 = [(FCNotificationController *)self notificationsUserID];
  v5 = [notificationsUserID2 isEqualToString:notificationsUserID];

  if ((v5 & 1) == 0)
  {
    [(FCNotificationController *)self setNotificationsUserID:notificationsUserID];
    deviceToken = [(FCNotificationController *)self deviceToken];

    if (deviceToken)
    {
      deviceToken2 = [(FCNotificationController *)self deviceToken];
      [(FCNotificationController *)self _registerDeviceToken:deviceToken2 deviceDigestMode:[(FCNotificationController *)self deviceDigestMode]];
    }
  }
}

@end