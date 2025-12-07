@interface MDMServicerCore
- (BOOL)_remoteProcess:(id)process hasEntitlement:(id)entitlement;
- (MDMServicerCore)initWithXPCConnection:(id)connection server:(id)server;
- (NSXPCConnection)xpcConnection;
- (id)_MDMAccessEntitlementForChannelType:(unint64_t)type;
- (id)_lacksEntitlementError:(id)error;
- (void)blockAppInstallsWithCompletion:(id)completion;
- (void)blockMDMCommandsWithCompletion:(id)completion;
- (void)dealloc;
- (void)deleteBootstrapTokenWithToken:(id)token devicePasscode:(id)passcode completionHandler:(id)handler;
- (void)deleteBootstrapTokenWithToken:(id)token devicePasscodeContext:(id)context completionHandler:(id)handler;
- (void)depPushTokenWithCompletion:(id)completion;
- (void)disablePushWakeWithCompletion:(id)completion;
- (void)enablePushWakeWithCompletion:(id)completion;
- (void)evaluateMigrationStatusWithPollFromServer:(BOOL)server completionHandler:(id)handler;
- (void)generateAndSyncBootstrapTokenWithDevicePasscode:(id)passcode completionHandler:(id)handler;
- (void)generateAndSyncBootstrapTokenWithDevicePasscodeContext:(id)context completionHandler:(id)handler;
- (void)generateBootstrapTokenWithDevicePasscode:(id)passcode completionHandler:(id)handler;
- (void)generateBootstrapTokenWithDevicePasscodeContext:(id)context completionHandler:(id)handler;
- (void)getAssertionDescriptionsWithCompletion:(id)completion;
- (void)getOrgTokenForMAIDWithCompletionHandler:(id)handler;
- (void)getWatchPairingTokenForPhoneID:(id)d watchID:(id)iD securityToken:(id)token completionHandler:(id)handler;
- (void)isAwaitingUserConfiguredWithCompletion:(id)completion;
- (void)migrateMDMWithContext:(int)context completion:(id)completion;
- (void)monitorDEPPushTokenIfNeededWithCompletion:(id)completion;
- (void)monitorDEPPushTokenWithCompletion:(id)completion;
- (void)nagForMigrationWithHardCodedValuesWithCompletion:(id)completion;
- (void)nagWithID:(id)d clientID:(id)iD schedule:(id)schedule title:(id)title message:(id)message notificationTitle:(id)notificationTitle notificationMessage:(id)notificationMessage actionTitle:(id)self0 actionURL:(id)self1 dismissTitle:(id)self2 dismissURL:(id)self3 deadlineURL:(id)self4 completion:(id)self5;
- (void)notifyNewConfigurationWithCompletion:(id)completion;
- (void)preserveAppsWithCompletion:(id)completion;
- (void)processDeviceRequest:(id)request encodeResponse:(BOOL)response completion:(id)completion;
- (void)processUserRequest:(id)request encodeResponse:(BOOL)response completion:(id)completion;
- (void)pushTokenWithCompletion:(id)completion;
- (void)reauthenticationCompleteWithCompletion:(id)completion;
- (void)removeUnusedPreservedAppsWithCompletion:(id)completion;
- (void)requestDeviceObliterationWithPreserveDataPlan:(BOOL)plan disallowProximitySetup:(BOOL)setup completionHandler:(id)handler;
- (void)requestInstallOfAppsInRestoreWithCompletion:(id)completion;
- (void)requestRRTSCheckInAndValidationWithCompletionHandler:(id)handler;
- (void)requestReturnToServiceObliterationWithPreserveDataPlan:(BOOL)plan disallowProximitySetup:(BOOL)setup mdmProfileData:(id)data wifiProfileData:(id)profileData revertToSnapshotName:(id)name bootstrapToken:(id)token completionHandler:(id)handler;
- (void)retryNotNowWithCompletion:(id)completion;
- (void)scheduleTokenUpdateIfNecessaryWithCompletion:(id)completion;
- (void)scheduleTokenUpdateWithCompletion:(id)completion;
- (void)sendMDMAuthenticationRequestWithCompletionHandler:(id)handler;
- (void)sendMDMCheckOutRequestWithCompletionHandler:(id)handler;
- (void)simulateDEPPushWithCompletion:(id)completion;
- (void)simulatePushIfNetworkTetheredWithCompletion:(id)completion;
- (void)simulatePushWithCompletion:(id)completion;
- (void)stopNaggingForMigrationWithCompletion:(id)completion;
- (void)syncBootstrapTokenToMDMWithToken:(id)token completionHandler:(id)handler;
- (void)syncDEPPushTokenWithDelay:(double)delay completion:(id)completion;
- (void)touchWithCompletion:(id)completion;
- (void)unblockAppInstallsWithCompletion:(id)completion;
- (void)unblockMDMCommandsWithCompletion:(id)completion;
- (void)uprootMDMWithCompletion:(id)completion;
@end

@implementation MDMServicerCore

- (MDMServicerCore)initWithXPCConnection:(id)connection server:(id)server
{
  connectionCopy = connection;
  serverCopy = server;
  v17.receiver = self;
  v17.super_class = MDMServicerCore;
  v8 = [(MDMServicerCore *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_xpcConnection, connectionCopy);
    v10 = [[MDMDaemonXPCInvalidationManager alloc] initWithXPCConnection:connectionCopy];
    invalidationHandler = v9->_invalidationHandler;
    v9->_invalidationHandler = v10;

    v9->_channelType = [serverCopy channelType];
    objc_storeStrong(&v9->_server, server);
    v15 = 0u;
    v16 = 0u;
    if (connectionCopy)
    {
      objc_msgSend_auditToken(connectionCopy, v15, v16);
    }

    v12 = [MEMORY[0x277D034C0] bundleIDFromAuditToken:&v15];
    clientBundleID = v9->_clientBundleID;
    v9->_clientBundleID = v12;

    v9->_clientPID = [connectionCopy processIdentifier];
  }

  return v9;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  [WeakRetained invalidate];

  v4.receiver = self;
  v4.super_class = MDMServicerCore;
  [(MDMServicerCore *)&v4 dealloc];
}

- (void)getAssertionDescriptionsWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server getAssertionDescriptionsWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, 0, v7);

    completionCopy = v7;
  }
}

- (void)scheduleTokenUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server scheduleTokenUpdateWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v7);

    completionCopy = v7;
  }
}

- (void)scheduleTokenUpdateIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server scheduleTokenUpdateIfNecessaryWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v7);

    completionCopy = v7;
  }
}

- (void)simulatePushWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server simulatePushWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v7);

    completionCopy = v7;
  }
}

- (void)simulatePushIfNetworkTetheredWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  if ([(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server])
  {

LABEL_4:
    server = [(MDMServicerCore *)self server];
    [server simulatePushIfNetworkTetheredWithCompletion:completionCopy];
    goto LABEL_6;
  }

  xpcConnection2 = [(MDMServicerCore *)self xpcConnection];
  v7 = [(MDMServicerCore *)self _remoteProcess:xpcConnection2 hasEntitlement:@"com.apple.managedconfiguration.mdmd.push"];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [(MDMServicerCore *)self _lacksEntitlementError:server];
  completionCopy[2](completionCopy, v8);

LABEL_6:
}

- (void)notifyNewConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server notifyNewConfigurationWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v7);

    completionCopy = v7;
  }
}

- (void)retryNotNowWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server retryNotNowWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v7);

    completionCopy = v7;
  }
}

- (void)reauthenticationCompleteWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server reauthenticationCompleteWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v7);

    completionCopy = v7;
  }
}

- (void)pushTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server pushTokenWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, 0, v7);

    completionCopy = v7;
  }
}

- (void)touchWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server touchWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v7);

    completionCopy = v7;
  }
}

- (void)nagWithID:(id)d clientID:(id)iD schedule:(id)schedule title:(id)title message:(id)message notificationTitle:(id)notificationTitle notificationMessage:(id)notificationMessage actionTitle:(id)self0 actionURL:(id)self1 dismissTitle:(id)self2 dismissURL:(id)self3 deadlineURL:(id)self4 completion:(id)self5
{
  dCopy = d;
  iDCopy = iD;
  scheduleCopy = schedule;
  titleCopy = title;
  messageCopy = message;
  notificationTitleCopy = notificationTitle;
  notificationMessageCopy = notificationMessage;
  actionTitleCopy = actionTitle;
  lCopy = l;
  dismissTitleCopy = dismissTitle;
  rLCopy = rL;
  uRLCopy = uRL;
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v29 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  v40 = lCopy;
  if (v29)
  {

    server = [(MDMServicerCore *)self server];
    v30 = scheduleCopy;
    v39 = rLCopy;
    v38 = lCopy;
    v37 = notificationMessageCopy;
    v31 = titleCopy;
    v32 = notificationMessageCopy;
    v33 = rLCopy;
    v34 = notificationTitleCopy;
    v35 = messageCopy;
    [server nagWithID:dCopy clientID:iDCopy schedule:scheduleCopy title:titleCopy message:messageCopy notificationTitle:notificationTitleCopy notificationMessage:v37 actionTitle:actionTitleCopy actionURL:v38 dismissTitle:dismissTitleCopy dismissURL:v39 deadlineURL:uRLCopy completion:{completionCopy, v40}];
  }

  else
  {
    v36 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v36);

    completionCopy = v36;
    v31 = titleCopy;
    v30 = scheduleCopy;
    v32 = notificationMessageCopy;
    v33 = rLCopy;
    v34 = notificationTitleCopy;
    v35 = messageCopy;
  }
}

- (void)nagForMigrationWithHardCodedValuesWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server nagForMigrationWithHardCodedValuesWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v7);

    completionCopy = v7;
  }
}

- (void)stopNaggingForMigrationWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server stopNaggingForMigrationWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v7);

    completionCopy = v7;
  }
}

- (void)blockMDMCommandsWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v7 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:v5];

  if (v7)
  {

    objc_initWeak(&location, self);
    invalidationHandler = [(MDMServicerCore *)self invalidationHandler];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __50__MDMServicerCore_blockMDMCommandsWithCompletion___block_invoke;
    v17 = &unk_27982D568;
    objc_copyWeak(&v18, &location);
    [invalidationHandler registerInvalidationHandlerForTask:@"Block MDM Command" handler:&v14];

    v9 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MDMServicerCore *)self clientBundleID:v14];
      clientPID = [(MDMServicerCore *)self clientPID];
      *buf = 138543618;
      v21 = v10;
      v22 = 1024;
      v23 = clientPID;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "Client %{public}@ (%d) is asking to block MDM commands", buf, 0x12u);
    }

    server = [(MDMServicerCore *)self server];
    [server blockMDMCommandsWithCompletion:completionCopy];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [(MDMServicerCore *)self _lacksEntitlementError:v5];
    completionCopy[2](completionCopy, v13);
  }
}

void __50__MDMServicerCore_blockMDMCommandsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained server];
  [v1 unblockMDMCommandsWithCompletion:&__block_literal_global_8];
}

void __50__MDMServicerCore_blockMDMCommandsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_ERROR, "Unblocked MDM commands due to NSXPCConnection invalidation. Unblock error: %{public}@", &v4, 0xCu);
  }
}

- (void)unblockMDMCommandsWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    invalidationHandler = [(MDMServicerCore *)self invalidationHandler];
    [invalidationHandler unregisterInvalidationHandlerForTask:@"Block MDM Command"];

    server = [(MDMServicerCore *)self server];
    [server unblockMDMCommandsWithCompletion:completionCopy];
  }

  else
  {
    v8 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v8);

    completionCopy = v8;
  }
}

- (void)enablePushWakeWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v7 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:v5];

  if (v7)
  {

    objc_initWeak(&location, self);
    invalidationHandler = [(MDMServicerCore *)self invalidationHandler];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __48__MDMServicerCore_enablePushWakeWithCompletion___block_invoke;
    v17 = &unk_27982D568;
    objc_copyWeak(&v18, &location);
    [invalidationHandler registerInvalidationHandlerForTask:@"Enable Push Wake" handler:&v14];

    v9 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MDMServicerCore *)self clientBundleID:v14];
      clientPID = [(MDMServicerCore *)self clientPID];
      *buf = 138543618;
      v21 = v10;
      v22 = 1024;
      v23 = clientPID;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_DEFAULT, "Client %{public}@ (%d) is asking to enable push wake", buf, 0x12u);
    }

    server = [(MDMServicerCore *)self server];
    [server enablePushWakeWithCompletion:completionCopy];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [(MDMServicerCore *)self _lacksEntitlementError:v5];
    completionCopy[2](completionCopy, v13);
  }
}

void __48__MDMServicerCore_enablePushWakeWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained server];
  [v1 disablePushWakeWithCompletion:&__block_literal_global_165];
}

void __48__MDMServicerCore_enablePushWakeWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_ERROR, "Disabled Push Wake due to NSXPCConnection invalidation. Error: %{public}@", &v4, 0xCu);
  }
}

- (void)disablePushWakeWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    invalidationHandler = [(MDMServicerCore *)self invalidationHandler];
    [invalidationHandler unregisterInvalidationHandlerForTask:@"Enable Push Wake"];

    server = [(MDMServicerCore *)self server];
    [server disablePushWakeWithCompletion:completionCopy];
  }

  else
  {
    v8 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v8);

    completionCopy = v8;
  }
}

- (void)sendMDMAuthenticationRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server sendMDMAuthenticationRequestWithCompletionHandler:handlerCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    handlerCopy[2](handlerCopy, v7);

    handlerCopy = v7;
  }
}

- (void)sendMDMCheckOutRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server sendMDMCheckOutRequestWithCompletionHandler:handlerCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    handlerCopy[2](handlerCopy, v7);

    handlerCopy = v7;
  }
}

- (void)migrateMDMWithContext:(int)context completion:(id)completion
{
  v4 = *&context;
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  if ([(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server])
  {

LABEL_4:
    server = [(MDMServicerCore *)self server];
    [server migrateMDMWithContext:v4 completion:completionCopy];
    goto LABEL_6;
  }

  xpcConnection2 = [(MDMServicerCore *)self xpcConnection];
  v9 = [(MDMServicerCore *)self _remoteProcess:xpcConnection2 hasEntitlement:@"com.apple.managedconfiguration.profiled-access"];

  if (v9)
  {
    goto LABEL_4;
  }

  v10 = [(MDMServicerCore *)self _lacksEntitlementError:server];
  completionCopy[2](completionCopy, v10);

LABEL_6:
}

- (void)preserveAppsWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  if ([(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server])
  {

LABEL_4:
    server = [(MDMServicerCore *)self server];
    [server preserveAppsWithCompletion:completionCopy];
    goto LABEL_6;
  }

  xpcConnection2 = [(MDMServicerCore *)self xpcConnection];
  v7 = [(MDMServicerCore *)self _remoteProcess:xpcConnection2 hasEntitlement:@"com.apple.managedconfiguration.profiled-access"];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [(MDMServicerCore *)self _lacksEntitlementError:server];
  completionCopy[2](completionCopy, v8);

LABEL_6:
}

- (void)removeUnusedPreservedAppsWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  if ([(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server])
  {

LABEL_4:
    server = [(MDMServicerCore *)self server];
    [server removeUnusedPreservedAppsWithCompletion:completionCopy];
    goto LABEL_6;
  }

  xpcConnection2 = [(MDMServicerCore *)self xpcConnection];
  v7 = [(MDMServicerCore *)self _remoteProcess:xpcConnection2 hasEntitlement:@"com.apple.managedconfiguration.profiled-access"];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [(MDMServicerCore *)self _lacksEntitlementError:server];
  completionCopy[2](completionCopy, v8);

LABEL_6:
}

- (void)uprootMDMWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server uprootMDMWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v7);

    completionCopy = v7;
  }
}

- (void)processDeviceRequest:(id)request encodeResponse:(BOOL)response completion:(id)completion
{
  responseCopy = response;
  requestCopy = request;
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v11 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v11)
  {

    server = [(MDMServicerCore *)self server];
    [server processDeviceRequest:requestCopy encodeResponse:responseCopy completion:completionCopy];
  }

  else
  {
    v12 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    (*(completionCopy + 2))(completionCopy, v12, 0, 0);

    completionCopy = v12;
  }
}

- (void)requestInstallOfAppsInRestoreWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self server];
  [server requestInstallOfAppsInRestoreWithCompletion:completionCopy];
}

- (void)blockAppInstallsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  invalidationHandler = [(MDMServicerCore *)self invalidationHandler];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __50__MDMServicerCore_blockAppInstallsWithCompletion___block_invoke;
  v10 = &unk_27982D568;
  objc_copyWeak(&v11, &location);
  [invalidationHandler registerInvalidationHandlerForTask:@"Block App Installation" handler:&v7];

  v6 = [(MDMServicerCore *)self server:v7];
  [v6 blockAppInstallsWithCompletion:completionCopy];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__MDMServicerCore_blockAppInstallsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained server];
  [v1 unblockAppInstallsWithCompletion:&__block_literal_global_167];
}

void __50__MDMServicerCore_blockAppInstallsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_DEFAULT, "MDMServicer, XPC connection invalidated, app installs unblocked, error = %{public}@", &v4, 0xCu);
  }
}

- (void)unblockAppInstallsWithCompletion:(id)completion
{
  completionCopy = completion;
  invalidationHandler = [(MDMServicerCore *)self invalidationHandler];
  [invalidationHandler unregisterInvalidationHandlerForTask:@"Block App Installation"];

  server = [(MDMServicerCore *)self server];
  [server unblockAppInstallsWithCompletion:completionCopy];
}

- (void)depPushTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server depPushTokenWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, 0, v7);

    completionCopy = v7;
  }
}

- (void)syncDEPPushTokenWithDelay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v8 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v8)
  {

    server = [(MDMServicerCore *)self server];
    [server syncDEPPushTokenWithDelay:completionCopy completion:delay];
  }

  else
  {
    v9 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, 0, v9);

    completionCopy = v9;
  }
}

- (void)monitorDEPPushTokenIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server monitorDEPPushTokenIfNeededWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v7);

    completionCopy = v7;
  }
}

- (void)monitorDEPPushTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server monitorDEPPushTokenWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v7);

    completionCopy = v7;
  }
}

- (void)simulateDEPPushWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server simulateDEPPushWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, v7);

    completionCopy = v7;
  }
}

- (void)requestDeviceObliterationWithPreserveDataPlan:(BOOL)plan disallowProximitySetup:(BOOL)setup completionHandler:(id)handler
{
  setupCopy = setup;
  planCopy = plan;
  handlerCopy = handler;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v10 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v10)
  {

    server = [(MDMServicerCore *)self server];
    [server requestDeviceObliterationWithPreserveDataPlan:planCopy disallowProximitySetup:setupCopy completionHandler:handlerCopy];
  }

  else
  {
    v11 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    handlerCopy[2](handlerCopy, v11);

    handlerCopy = v11;
  }
}

- (void)requestReturnToServiceObliterationWithPreserveDataPlan:(BOOL)plan disallowProximitySetup:(BOOL)setup mdmProfileData:(id)data wifiProfileData:(id)profileData revertToSnapshotName:(id)name bootstrapToken:(id)token completionHandler:(id)handler
{
  setupCopy = setup;
  planCopy = plan;
  dataCopy = data;
  profileDataCopy = profileData;
  nameCopy = name;
  tokenCopy = token;
  handlerCopy = handler;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v21 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v21)
  {

    server = [(MDMServicerCore *)self server];
    [server requestReturnToServiceObliterationWithPreserveDataPlan:planCopy disallowProximitySetup:setupCopy mdmProfileData:dataCopy wifiProfileData:profileDataCopy revertToSnapshotName:nameCopy bootstrapToken:tokenCopy completionHandler:handlerCopy];
  }

  else
  {
    v22 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    handlerCopy[2](handlerCopy, v22);

    handlerCopy = v22;
  }
}

- (void)requestRRTSCheckInAndValidationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server requestRRTSCheckInAndValidationWithCompletionHandler:handlerCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v7);

    handlerCopy = v7;
  }
}

- (void)generateBootstrapTokenWithDevicePasscode:(id)passcode completionHandler:(id)handler
{
  passcodeCopy = passcode;
  handlerCopy = handler;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v9 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v9)
  {

    server = [(MDMServicerCore *)self server];
    [server generateBootstrapTokenWithDevicePasscode:passcodeCopy completionHandler:handlerCopy];
  }

  else
  {
    v10 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    handlerCopy[2](handlerCopy, 0, v10);

    handlerCopy = v10;
  }
}

- (void)generateBootstrapTokenWithDevicePasscodeContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v9 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v9)
  {

    server = [(MDMServicerCore *)self server];
    [server generateBootstrapTokenWithDevicePasscodeContext:contextCopy completionHandler:handlerCopy];
  }

  else
  {
    v10 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    handlerCopy[2](handlerCopy, 0, v10);

    handlerCopy = v10;
  }
}

- (void)syncBootstrapTokenToMDMWithToken:(id)token completionHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v9 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v9)
  {

    server = [(MDMServicerCore *)self server];
    [server syncBootstrapTokenToMDMWithToken:tokenCopy completionHandler:handlerCopy];
  }

  else
  {
    v10 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    handlerCopy[2](handlerCopy, v10);

    handlerCopy = v10;
  }
}

- (void)deleteBootstrapTokenWithToken:(id)token devicePasscode:(id)passcode completionHandler:(id)handler
{
  tokenCopy = token;
  passcodeCopy = passcode;
  handlerCopy = handler;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v12 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v12)
  {

    server = [(MDMServicerCore *)self server];
    [server deleteBootstrapTokenWithToken:tokenCopy devicePasscode:passcodeCopy completionHandler:handlerCopy];
  }

  else
  {
    v13 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    handlerCopy[2](handlerCopy, v13);

    handlerCopy = v13;
  }
}

- (void)deleteBootstrapTokenWithToken:(id)token devicePasscodeContext:(id)context completionHandler:(id)handler
{
  tokenCopy = token;
  contextCopy = context;
  handlerCopy = handler;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v12 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v12)
  {

    server = [(MDMServicerCore *)self server];
    [server deleteBootstrapTokenWithToken:tokenCopy devicePasscodeContext:contextCopy completionHandler:handlerCopy];
  }

  else
  {
    v13 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    handlerCopy[2](handlerCopy, v13);

    handlerCopy = v13;
  }
}

- (void)generateAndSyncBootstrapTokenWithDevicePasscode:(id)passcode completionHandler:(id)handler
{
  passcodeCopy = passcode;
  handlerCopy = handler;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v9 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v9)
  {

    server = [(MDMServicerCore *)self server];
    [server generateAndSyncBootstrapTokenWithDevicePasscode:passcodeCopy completionHandler:handlerCopy];
  }

  else
  {
    v10 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    handlerCopy[2](handlerCopy, 0, v10);

    handlerCopy = v10;
  }
}

- (void)generateAndSyncBootstrapTokenWithDevicePasscodeContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v9 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v9)
  {

    server = [(MDMServicerCore *)self server];
    [server generateAndSyncBootstrapTokenWithDevicePasscodeContext:contextCopy completionHandler:handlerCopy];
  }

  else
  {
    v10 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    handlerCopy[2](handlerCopy, 0, v10);

    handlerCopy = v10;
  }
}

- (void)evaluateMigrationStatusWithPollFromServer:(BOOL)server completionHandler:(id)handler
{
  serverCopy = server;
  handlerCopy = handler;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v8 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v8)
  {

    server = [(MDMServicerCore *)self server];
    [server evaluateMigrationStatusWithPollFromServer:serverCopy completionHandler:handlerCopy];
  }

  else
  {
    v9 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    handlerCopy[2](handlerCopy, 0, v9);

    handlerCopy = v9;
  }
}

- (void)getWatchPairingTokenForPhoneID:(id)d watchID:(id)iD securityToken:(id)token completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  tokenCopy = token;
  handlerCopy = handler;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v15 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v15)
  {

    server = [(MDMServicerCore *)self server];
    [server getWatchPairingTokenForPhoneID:dCopy watchID:iDCopy securityToken:tokenCopy completionHandler:handlerCopy];
  }

  else
  {
    v16 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    handlerCopy[2](handlerCopy, 0, v16);

    handlerCopy = v16;
  }
}

- (void)getOrgTokenForMAIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server getOrgTokenForMAIDWithCompletionHandler:handlerCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    handlerCopy[2](handlerCopy, 0, v7);

    handlerCopy = v7;
  }
}

- (void)processUserRequest:(id)request encodeResponse:(BOOL)response completion:(id)completion
{
  responseCopy = response;
  requestCopy = request;
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v11 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v11)
  {

    server = [(MDMServicerCore *)self server];
    [server processUserRequest:requestCopy encodeResponse:responseCopy completion:completionCopy];
  }

  else
  {
    v12 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    (*(completionCopy + 2))(completionCopy, v12, 0, 0);

    completionCopy = v12;
  }
}

- (void)isAwaitingUserConfiguredWithCompletion:(id)completion
{
  completionCopy = completion;
  server = [(MDMServicerCore *)self _MDMAccessEntitlementForChannelType:[(MDMServicerCore *)self channelType]];
  xpcConnection = [(MDMServicerCore *)self xpcConnection];
  v6 = [(MDMServicerCore *)self _remoteProcess:xpcConnection hasEntitlement:server];

  if (v6)
  {

    server = [(MDMServicerCore *)self server];
    [server isAwaitingUserConfiguredWithCompletion:completionCopy];
  }

  else
  {
    v7 = [(MDMServicerCore *)self _lacksEntitlementError:server];
    completionCopy[2](completionCopy, 0, v7);

    completionCopy = v7;
  }
}

- (id)_MDMAccessEntitlementForChannelType:(unint64_t)type
{
  if (type)
  {
    return @"com.apple.managedconfiguration.mdmuserd-access";
  }

  else
  {
    return @"com.apple.managedconfiguration.mdmd-access";
  }
}

- (BOOL)_remoteProcess:(id)process hasEntitlement:(id)entitlement
{
  v4 = [process valueForEntitlement:entitlement];
  v5 = 0;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 BOOLValue])
    {
      v5 = 1;
    }
  }

  return v5;
}

- (id)_lacksEntitlementError:(id)error
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03470];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:39000 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], error, 0}];

  return v6;
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

@end