@interface SKAInvitationManager
+ (id)_unableToFindExistingInvitationForHandlesError:(id)error;
+ (id)logger;
- (BOOL)_rollEncryptionKeyForChannel:(id)channel databaseContext:(id)context error:(id *)error;
- (BOOL)_sendInvitationMessageForChannel:(id)channel toInvitedUsers:(id)users subscriptionKeys:(id)keys error:(id *)error;
- (BOOL)_sendInvitationMessageForPresenceChannel:(id)channel toInvitedUsers:(id)users error:(id *)error;
- (BOOL)_validateInvitedHandle:(id)handle;
- (BOOL)rollEncryptionKeyForPersonalChannelWithStatusTypeIdentifier:(id)identifier error:(id *)error;
- (SKAInvitationManager)initWithMessagingProvider:(id)provider databaseManager:(id)manager accountProvider:(id)accountProvider channelManager:(id)channelManager presenceManager:(id)presenceManager trafficMode:(BOOL)mode;
- (SKAInvitationManagingDelegate)delegate;
- (id)_addInvitedHandles:(id)handles senderHandle:(id)handle toDatabaseForPersonalChannel:(id)channel withInvitationPayload:(id)payload databaseContext:(id)context;
- (id)_addInvitedHandles:(id)handles senderHandle:(id)handle toDatabaseForPresenceChannel:(id)channel databaseContext:(id)context;
- (id)_ratchetEncryptionKeyForwardOrKeyRollForPersonalChannel:(id)channel databaseContext:(id)context invitationWasSentViaKeyRoll:(BOOL *)roll error:(id *)error;
- (id)_updateOrCreateInvitedUserWithHandle:(id)handle senderHandle:(id)senderHandle onChannel:(id)channel withInvitationPayload:(id)payload databaseContext:(id)context;
- (id)_validateInvitedHandles:(id)handles;
- (id)invitationMessageForPresenceChannel:(id)channel;
- (int64_t)handleIncomingInvitationMessage:(id)message fromHandle:(id)handle fromID:(id)d fromMergeID:(id)iD toHandle:(id)toHandle messageGuid:(id)guid;
- (void)_createPersonalChannelForStatusTypeIdentifier:(id)identifier databaseContext:(id)context completion:(id)completion;
- (void)_findOrCreatePersonalChannelForStatusTypeIdentifier:(id)identifier databaseContext:(id)context completion:(id)completion;
- (void)_isHandleInviteable:(id)inviteable completion:(id)completion;
- (void)_isPresenceHandleInviteable:(id)inviteable completion:(id)completion;
- (void)_sendReverseInvitationIfNeededForPresenceIdentifier:(id)identifier incomingChannel:(id)channel senderHandle:(id)handle invitedHandle:(id)invitedHandle dateInvitationCreated:(id)created databaseContext:(id)context;
- (void)acceptInvitationMessage:(id)message fromHandle:(id)handle toHandle:(id)toHandle messageGuid:(id)guid existingChannel:(id)channel databaseContext:(id)context;
- (void)fetchHandleInvitability:(id)invitability fromHandle:(id)handle forPresenceIdentifier:(id)identifier completion:(id)completion;
- (void)fetchHandleInvitability:(id)invitability fromHandle:(id)handle forStatusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)isHandleInviteable:(id)inviteable fromHandle:(id)handle completion:(id)completion;
- (void)isPresenceHandleInviteable:(id)inviteable fromHandle:(id)handle completion:(id)completion;
- (void)outgoingMessageWithIdentifier:(id)identifier fromHandle:(id)handle toHandle:(id)toHandle didSendWithSuccess:(BOOL)success;
- (void)revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)revokeInvitationFromPersonalChannelWithStatusTypeIdentifier:(id)identifier forHandles:(id)handles completion:(id)completion;
- (void)revokeInvitationFromPresenceChannelWithPresenceIdentifier:(id)identifier forHandles:(id)handles completion:(id)completion;
- (void)rollPersonalChannelWithStatusTypeIdentifier:(id)identifier completion:(id)completion;
- (void)rollPresenceChannelWithPresenceIdentifier:(id)identifier isPersonal:(BOOL)personal completion:(id)completion;
- (void)sendInvitationForPersonalChannelWithStatusTypeIdentifier:(id)identifier toHandles:(id)handles fromSenderHandle:(id)handle withInvitationPayload:(id)payload completion:(id)completion;
- (void)sendInvitationForPresenceChannelWithPresenceIdentifier:(id)identifier toHandles:(id)handles fromSenderHandle:(id)handle options:(id)options completion:(id)completion;
- (void)sendSelfInvitationForPresenceChannelWithPresenceIdentifier:(id)identifier isPersonal:(BOOL)personal completion:(id)completion;
- (void)shouldAcceptInvitationMessageForPresenceIdentifier:(id)identifier fromHandle:(id)handle fromMergeID:(id)d inServiceFirewall:(id)firewall databaseContext:(id)context completion:(id)completion;
@end

@implementation SKAInvitationManager

- (SKAInvitationManager)initWithMessagingProvider:(id)provider databaseManager:(id)manager accountProvider:(id)accountProvider channelManager:(id)channelManager presenceManager:(id)presenceManager trafficMode:(BOOL)mode
{
  providerCopy = provider;
  managerCopy = manager;
  accountProviderCopy = accountProvider;
  channelManagerCopy = channelManager;
  presenceManagerCopy = presenceManager;
  v33.receiver = self;
  v33.super_class = SKAInvitationManager;
  v18 = [(SKAInvitationManager *)&v33 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_messagingProvider, provider);
    objc_storeStrong(&v19->_databaseManager, manager);
    objc_storeStrong(&v19->_channelManager, channelManager);
    objc_storeStrong(&v19->_accountProvider, accountProvider);
    objc_storeStrong(&v19->_presenceManager, presenceManager);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_DEFAULT, 0);

    v22 = dispatch_queue_create("com.apple.StatusKit.InvitationManager.cleanup", v21);
    backgroundCleanupQueue = v19->_backgroundCleanupQueue;
    v19->_backgroundCleanupQueue = v22;

    v19->_trafficModeEnabled = mode;
    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    outgoingInvitationMapping = v19->_outgoingInvitationMapping;
    v19->_outgoingInvitationMapping = v24;

    v19->_presenceEnabledByServer = [SKAServerBag presenceEnabledByServer:managerCopy];
    v26 = [[SKARateLimiter alloc] initWithLastRequestTimePrefsKey:@"reverseInviteResetTime" requestsCountPrefsKey:@"reverseInviteCount" maxRequestsBagKey:@"shared-channels-max-reverse-invite-count" defaultMaxRequests:5 resetTimeBagKey:@"shared-channels-reverse-invite-reset-time-seconds" defaultResetTime:30];
    rateLimiter = v19->_rateLimiter;
    v19->_rateLimiter = v26;

    if (v19->_trafficModeEnabled)
    {
      v28 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v28, OS_LOG_TYPE_DEFAULT, "In Traffic Mode--will drop incoming status invitations", buf, 2u);
      }
    }
  }

  return v19;
}

- (void)sendInvitationForPersonalChannelWithStatusTypeIdentifier:(id)identifier toHandles:(id)handles fromSenderHandle:(id)handle withInvitationPayload:(id)payload completion:(id)completion
{
  identifierCopy = identifier;
  handlesCopy = handles;
  handleCopy = handle;
  payloadCopy = payload;
  completionCopy = completion;
  v17 = [(SKAInvitationManager *)self _validateInvitedHandles:handlesCopy];
  if ([v17 count])
  {
    v18 = [(SKAInvitationManager *)self resolveSenderHandleWithPreferredSenderHandle:handleCopy];
    if (v18)
    {
      objc_initWeak(&location, self);
      newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke;
      v24[3] = &unk_27843DC98;
      objc_copyWeak(&v30, &location);
      v29 = completionCopy;
      v25 = v17;
      v18 = v18;
      v26 = v18;
      v27 = payloadCopy;
      v20 = newBackgroundContext;
      v28 = v20;
      [(SKAInvitationManager *)self _findOrCreatePersonalChannelForStatusTypeIdentifier:identifierCopy databaseContext:v20 completion:v24];

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    else
    {
      v22 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager sendInvitationForPersonalChannelWithStatusTypeIdentifier:toHandles:fromSenderHandle:withInvitationPayload:completion:];
      }

      v23 = [SKAError errorWithCode:500];
      (*(completionCopy + 2))(completionCopy, 0, v23);
    }
  }

  else
  {
    v21 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager sendInvitationForPersonalChannelWithStatusTypeIdentifier:toHandles:fromSenderHandle:withInvitationPayload:completion:];
    }

    v18 = [SKAError errorWithCode:501];
    (*(completionCopy + 2))(completionCopy, 0, v18);
  }
}

void __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (v6)
  {
    v8 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 64) + 16))();
    v9 = v5;
    goto LABEL_20;
  }

  v10 = +[SKAInvitationManager logger];
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v28 = v12;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Adding invited handles %@ to database for channel: %@", buf, 0x16u);
    }

    v13 = [WeakRetained _addInvitedHandles:*(a1 + 32) senderHandle:*(a1 + 40) toDatabaseForPersonalChannel:v5 withInvitationPayload:*(a1 + 48) databaseContext:*(a1 + 56)];
    v26 = 0;
    v14 = *(a1 + 56);
    v25 = 0;
    v9 = [WeakRetained _ratchetEncryptionKeyForwardOrKeyRollForPersonalChannel:v5 databaseContext:v14 invitationWasSentViaKeyRoll:&v26 error:&v25];
    v15 = v25;

    if (v15)
    {
      v16 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_2();
      }
    }

    else
    {
      if (v26 != 1)
      {
        v18 = [v9 currentOutgoingRatchet];
        v19 = [v18 currentSubscriptionKeys];

        v24 = 0;
        v20 = [WeakRetained _sendInvitationMessageForChannel:v9 toInvitedUsers:v13 subscriptionKeys:v19 error:&v24];
        v21 = v24;
        if (v20)
        {
          v22 = *(*(a1 + 64) + 16);
        }

        else
        {
          v23 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_3();
          }

          v22 = *(*(a1 + 64) + 16);
        }

        v22();

        goto LABEL_19;
      }

      v16 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        *buf = 138412290;
        v28 = v17;
        _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "Invitations for newly invited handles %@ was already sent during key roll, skipping individual message send.", buf, 0xCu);
      }
    }

    (*(*(a1 + 64) + 16))();
LABEL_19:

    goto LABEL_20;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_4();
  }

  v9 = [SKAError errorWithCode:1101];
  (*(*(a1 + 64) + 16))();
LABEL_20:
}

- (void)sendInvitationForPresenceChannelWithPresenceIdentifier:(id)identifier toHandles:(id)handles fromSenderHandle:(id)handle options:(id)options completion:(id)completion
{
  identifierCopy = identifier;
  handlesCopy = handles;
  handleCopy = handle;
  optionsCopy = options;
  completionCopy = completion;
  if (![(SKAInvitationManager *)self presenceEnabledByServer])
  {
    v26 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
    }

    goto LABEL_11;
  }

  serviceIdentifier = [optionsCopy serviceIdentifier];
  if (serviceIdentifier)
  {
    v18 = serviceIdentifier;
    serviceIdentifier2 = [optionsCopy serviceIdentifier];
    v20 = [SKAServerBag presenceEnabledByServerForServiceIdentifier:serviceIdentifier2];

    if (!v20)
    {
      v26 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:optionsCopy toHandles:? fromSenderHandle:? options:? completion:?];
      }

LABEL_11:

      v21 = [SKAError errorWithCode:100];
      completionCopy[2](completionCopy, 0, v21);
      goto LABEL_19;
    }
  }

  v21 = [(SKAInvitationManager *)self _validateInvitedHandles:handlesCopy];
  if ([v21 count])
  {
    v22 = [(SKAInvitationManager *)self resolveSenderHandleWithPreferredSenderHandle:handleCopy];
    if (v22)
    {
      objc_initWeak(&location, self);
      newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
      presenceManager = [(SKAInvitationManager *)self presenceManager];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __125__SKAInvitationManager_sendInvitationForPresenceChannelWithPresenceIdentifier_toHandles_fromSenderHandle_options_completion___block_invoke;
      v30[3] = &unk_27843DCC0;
      objc_copyWeak(&v35, &location);
      v34 = completionCopy;
      v31 = v21;
      v22 = v22;
      v32 = v22;
      v25 = newBackgroundContext;
      v33 = v25;
      [presenceManager findOrCreatePresenceChannelForPresenceIdentifier:identifierCopy options:optionsCopy databaseContext:v25 completion:v30];

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
    }

    else
    {
      v28 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager sendInvitationForPersonalChannelWithStatusTypeIdentifier:toHandles:fromSenderHandle:withInvitationPayload:completion:];
      }

      v29 = [SKAError errorWithCode:500];
      completionCopy[2](completionCopy, 0, v29);
    }
  }

  else
  {
    v27 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager sendInvitationForPersonalChannelWithStatusTypeIdentifier:toHandles:fromSenderHandle:withInvitationPayload:completion:];
    }

    v22 = [SKAError errorWithCode:501];
    completionCopy[2](completionCopy, 0, v22);
  }

LABEL_19:
}

void __125__SKAInvitationManager_sendInvitationForPresenceChannelWithPresenceIdentifier_toHandles_fromSenderHandle_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = +[SKAInvitationManager logger];
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __125__SKAInvitationManager_sendInvitationForPresenceChannelWithPresenceIdentifier_toHandles_fromSenderHandle_options_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Adding invited handles %@ to database for channel: %@", buf, 0x16u);
    }

    v11 = [WeakRetained _addInvitedHandles:*(a1 + 32) senderHandle:*(a1 + 40) toDatabaseForPresenceChannel:v5 databaseContext:*(a1 + 48)];
    v16 = 0;
    v12 = [WeakRetained _sendInvitationMessageForPresenceChannel:v5 toInvitedUsers:v11 error:&v16];
    v13 = v16;
    if (v12)
    {
      v14 = *(*(a1 + 56) + 16);
    }

    else
    {
      v15 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_3();
      }

      v14 = *(*(a1 + 56) + 16);
    }

    v14();
  }
}

- (void)sendSelfInvitationForPresenceChannelWithPresenceIdentifier:(id)identifier isPersonal:(BOOL)personal completion:(id)completion
{
  personalCopy = personal;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(SKAInvitationManager *)self presenceEnabledByServer])
  {
    newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
    presenceManager = [(SKAInvitationManager *)self presenceManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __105__SKAInvitationManager_sendSelfInvitationForPresenceChannelWithPresenceIdentifier_isPersonal_completion___block_invoke;
    v13[3] = &unk_27843DCE8;
    v14 = identifierCopy;
    selfCopy = self;
    v16 = completionCopy;
    [presenceManager findPresenceChannelForPresenceIdentifier:v14 isPersonal:personalCopy databaseContext:newBackgroundContext completion:v13];
  }

  else
  {
    v12 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
    }

    newBackgroundContext = [SKAError errorWithCode:100];
    (*(completionCopy + 2))(completionCopy, 0, newBackgroundContext);
  }
}

void __105__SKAInvitationManager_sendSelfInvitationForPresenceChannelWithPresenceIdentifier_isPersonal_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 40) invitationMessageForPresenceChannel:a2];
    v7 = [*(a1 + 40) messagingProvider];
    v8 = [v6 copy];
    v15 = 0;
    v16 = 0;
    v9 = [v7 sendMessageToSelfDevices:v8 limitToPresenceCapable:1 identifier:&v16 error:&v15];
    v10 = v16;
    v11 = v15;

    v12 = +[SKAInvitationManager logger];
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Presence invitation sent successfully to self-account devices. ID:%@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v10;
      _os_log_error_impl(&dword_220099000, v13, OS_LOG_TYPE_ERROR, "Self presence invitation send failed with error: %@ message: %@, ID:%@.  Maybe no other device on account?", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v14 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __105__SKAInvitationManager_sendSelfInvitationForPresenceChannelWithPresenceIdentifier_isPersonal_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:(id)identifier completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  databaseManager = self->_databaseManager;
  identifierCopy = identifier;
  newBackgroundContext = [(SKADatabaseManaging *)databaseManager newBackgroundContext];
  v10 = [(SKADatabaseManaging *)self->_databaseManager existingPersonalChannelForStatusTypeIdentifier:identifierCopy databaseContext:newBackgroundContext];

  if (!v10)
  {
    v17 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:completion:];
    }

    v18 = 1100;
    goto LABEL_13;
  }

  v11 = [(SKADatabaseManaging *)self->_databaseManager deleteAllInvitedUsersForPersonalChannel:v10 databaseContext:newBackgroundContext];
  v12 = +[SKAInvitationManager logger];
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:completion:];
    }

    v18 = 504;
LABEL_13:
    v16 = [SKAError errorWithCode:v18];
    completionCopy[2](completionCopy, v16);
    goto LABEL_16;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v10;
    _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Finished deleting all invited user database records for channel %@, initiating key roll", buf, 0xCu);
  }

  v20 = 0;
  v14 = [(SKAInvitationManager *)self _rollEncryptionKeyForChannel:v10 databaseContext:newBackgroundContext error:&v20];
  v15 = v20;
  v16 = v15;
  if (v14)
  {
    completionCopy[2](completionCopy, 0);
  }

  else if (v15)
  {
    completionCopy[2](completionCopy, v15);
  }

  else
  {
    v19 = [SKAError errorWithCode:401];
    completionCopy[2](completionCopy, v19);
  }

LABEL_16:
}

- (void)revokeInvitationFromPersonalChannelWithStatusTypeIdentifier:(id)identifier forHandles:(id)handles completion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlesCopy = handles;
  completionCopy = completion;
  v39 = identifierCopy;
  newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  v12 = [(SKADatabaseManaging *)self->_databaseManager existingPersonalChannelForStatusTypeIdentifier:identifierCopy databaseContext:?];
  if (!v12)
  {
    v32 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager revokeInvitationFromPersonalChannelWithStatusTypeIdentifier:forHandles:completion:];
    }

    v33 = [SKAError errorWithCode:1100];
    goto LABEL_27;
  }

  v37 = completionCopy;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = handlesCopy;
  v14 = [v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
  v15 = 0x27843D000uLL;
  if (!v14)
  {

LABEL_24:
    logger = [*(v15 + 1024) logger];
    completionCopy = v37;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:completion:];
    }

    v33 = [*(v15 + 1024) _unableToFindExistingInvitationForHandlesError:v13];
LABEL_27:
    v30 = v33;
    completionCopy[2](completionCopy, v33);
    goto LABEL_28;
  }

  v16 = v14;
  obj = v13;
  v36 = handlesCopy;
  v38 = 0;
  v17 = *v43;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v43 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v42 + 1) + 8 * i);
      v20 = v12;
      v21 = [(SKADatabaseManaging *)self->_databaseManager deleteInvitedUserForHandle:v19 personalChannel:v12 databaseContext:newBackgroundContext, v36];
      v22 = v15;
      logger2 = [*(v15 + 1024) logger];
      v24 = logger2;
      if (v21)
      {
        if (os_log_type_enabled(logger2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v19;
          _os_log_impl(&dword_220099000, v24, OS_LOG_TYPE_DEFAULT, "Successfully deleted database record for invited user: %@.  Adding to removed users", buf, 0xCu);
        }

        databaseManager = self->_databaseManager;
        v24 = [MEMORY[0x277CBEAA8] now];
        v26 = [(SKADatabaseManaging *)databaseManager createRemovedUserWithHandle:v19 dateRemoved:v24 statusTypeIdentifier:v39 databaseContext:newBackgroundContext];
        v38 = 1;
      }

      else if (os_log_type_enabled(logger2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = v19;
        _os_log_error_impl(&dword_220099000, v24, OS_LOG_TYPE_ERROR, "Unable to find database record for invited user attempted to delete: %@", buf, 0xCu);
      }

      v12 = v20;

      v15 = v22;
    }

    v16 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  }

  while (v16);
  v13 = obj;

  handlesCopy = v36;
  if ((v38 & 1) == 0)
  {
    goto LABEL_24;
  }

  logger3 = [*(v22 + 1024) logger];
  completionCopy = v37;
  if (os_log_type_enabled(logger3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, logger3, OS_LOG_TYPE_DEFAULT, "Finished deleting database records for uninvited users, initiating key roll", buf, 2u);
  }

  v41 = 0;
  v28 = [(SKAInvitationManager *)self _rollEncryptionKeyForChannel:v12 databaseContext:newBackgroundContext error:&v41];
  v29 = v41;
  v30 = v29;
  if (v28)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained invitationManager:self didRevokeInvitationOnChannel:v12];

    v37[2](v37, 0);
  }

  else if (v29)
  {
    v37[2](v37, v29);
  }

  else
  {
    v35 = [SKAError errorWithCode:401];
    v37[2](v37, v35);
  }

LABEL_28:
}

- (void)revokeInvitationFromPresenceChannelWithPresenceIdentifier:(id)identifier forHandles:(id)handles completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlesCopy = handles;
  completionCopy = completion;
  if ([(SKAInvitationManager *)self presenceEnabledByServer])
  {
    newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
    v32 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForPresenceIdentifier:identifierCopy isPersonal:0 databaseContext:newBackgroundContext];
    if (v32)
    {
      v30 = completionCopy;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v12 = handlesCopy;
      v13 = [v12 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v13)
      {
        v14 = v13;
        v29 = handlesCopy;
        v31 = identifierCopy;
        v15 = 0;
        v16 = *v36;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v36 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v35 + 1) + 8 * i);
            v19 = [(SKADatabaseManaging *)self->_databaseManager deleteInvitedUserForHandle:v18 personalChannel:v32 databaseContext:newBackgroundContext, v29];
            v20 = +[SKAInvitationManager logger];
            v21 = v20;
            if (v19)
            {
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v40 = v18;
                _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Successfully deleted database record for invited user: %@.  Adding to removed users", buf, 0xCu);
              }

              databaseManager = self->_databaseManager;
              v21 = [MEMORY[0x277CBEAA8] now];
              v23 = [(SKADatabaseManaging *)databaseManager createRemovedUserWithHandle:v18 dateRemoved:v21 presenceIdentifier:v31 databaseContext:newBackgroundContext];
              v15 = 1;
            }

            else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v40 = v18;
              _os_log_error_impl(&dword_220099000, v21, OS_LOG_TYPE_ERROR, "Unable to find database record for invited user attempted to delete: %@", buf, 0xCu);
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v14);

        identifierCopy = v31;
        handlesCopy = v29;
        if (v15)
        {
          v24 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_220099000, v24, OS_LOG_TYPE_DEFAULT, "Finished deleting database records for uninvited users, initiating key roll", buf, 2u);
          }

          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __104__SKAInvitationManager_revokeInvitationFromPresenceChannelWithPresenceIdentifier_forHandles_completion___block_invoke;
          v33[3] = &unk_27843DD10;
          completionCopy = v30;
          v34 = v30;
          [(SKAInvitationManager *)self rollPresenceChannelWithPresenceIdentifier:v31 isPersonal:0 completion:v33];
          v25 = v34;
          goto LABEL_31;
        }
      }

      else
      {
      }

      v28 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:completion:];
      }

      v25 = [SKAInvitationManager _unableToFindExistingInvitationForHandlesError:v12];
      completionCopy = v30;
    }

    else
    {
      v27 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager revokeInvitationFromPersonalChannelWithStatusTypeIdentifier:forHandles:completion:];
      }

      v25 = [SKAError errorWithCode:901];
    }

    (*(completionCopy + 2))(completionCopy, v25);
LABEL_31:

    goto LABEL_32;
  }

  v26 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
  }

  newBackgroundContext = [SKAError errorWithCode:100];
  (*(completionCopy + 2))(completionCopy, newBackgroundContext);
LABEL_32:
}

void __104__SKAInvitationManager_revokeInvitationFromPresenceChannelWithPresenceIdentifier_forHandles_completion___block_invoke(uint64_t a1, int a2)
{
  v4 = +[SKAInvitationManager logger];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Finished rolling presence channel", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Error rolling presence channel", v7, 2u);
    }

    v6 = [SKAError errorWithCode:401];
    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)rollEncryptionKeyForPersonalChannelWithStatusTypeIdentifier:(id)identifier error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = identifierCopy;
    _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Received request to roll encryption key for personal channel with statusTypeIdentifier: %@", buf, 0xCu);
  }

  newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  v9 = [(SKADatabaseManaging *)self->_databaseManager existingPersonalChannelForStatusTypeIdentifier:identifierCopy databaseContext:newBackgroundContext];
  if (v9)
  {
    v15 = 0;
    v10 = [(SKAInvitationManager *)self _rollEncryptionKeyForChannel:v9 databaseContext:newBackgroundContext error:&v15];
    v11 = v15;
    if (!v10)
    {
      v12 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager rollEncryptionKeyForPersonalChannelWithStatusTypeIdentifier:error:];
      }

      if (error)
      {
        v13 = v11;
        *error = v11;
      }
    }
  }

  else
  {
    v11 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager rollEncryptionKeyForPersonalChannelWithStatusTypeIdentifier:error:];
    }

    v10 = 0;
  }

  return v10;
}

- (void)outgoingMessageWithIdentifier:(id)identifier fromHandle:(id)handle toHandle:(id)toHandle didSendWithSuccess:(BOOL)success
{
  successCopy = success;
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v10 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = identifierCopy;
    v24 = 1024;
    v25 = successCopy;
    _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Received callback for message with identifier: %@ did send with success: %d", &v22, 0x12u);
  }

  if (!successCopy)
  {
    v11 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager outgoingMessageWithIdentifier:fromHandle:toHandle:didSendWithSuccess:];
    }

    outgoingInvitationMapping = [(SKAInvitationManager *)self outgoingInvitationMapping];
    v13 = [outgoingInvitationMapping valueForKey:identifierCopy];

    if (v13)
    {
      channelIdentifier = [v13 channelIdentifier];
      toHandle = [v13 toHandle];
      v16 = [channelIdentifier length];
      if (toHandle && v16)
      {
        newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
        databaseManager = [(SKAInvitationManager *)self databaseManager];
        v19 = [databaseManager existingChannelForSubscriptionIdentifier:channelIdentifier databaseContext:newBackgroundContext];

        if (v19)
        {
          databaseManager2 = [(SKAInvitationManager *)self databaseManager];
          [databaseManager2 deleteInvitedUserForHandle:toHandle presenceChannel:v19 databaseContext:newBackgroundContext];
        }

        else
        {
          databaseManager2 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(databaseManager2, OS_LOG_TYPE_ERROR))
          {
            [SKAInvitationManager outgoingMessageWithIdentifier:fromHandle:toHandle:didSendWithSuccess:];
          }
        }
      }
    }

    else
    {
      channelIdentifier = +[SKAInvitationManager logger];
      if (os_log_type_enabled(channelIdentifier, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager outgoingMessageWithIdentifier:fromHandle:toHandle:didSendWithSuccess:];
      }
    }
  }

  outgoingInvitationMapping2 = [(SKAInvitationManager *)self outgoingInvitationMapping];
  [outgoingInvitationMapping2 removeObjectForKey:identifierCopy];
}

- (void)rollPersonalChannelWithStatusTypeIdentifier:(id)identifier completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = identifierCopy;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Received request to roll personal channel with statusTypeIdentifier: %@", buf, 0xCu);
  }

  newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  v10 = [(SKADatabaseManaging *)self->_databaseManager existingPersonalChannelForStatusTypeIdentifier:identifierCopy databaseContext:newBackgroundContext];
  if (v10)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke;
    v12[3] = &unk_27843DD38;
    v16 = completionCopy;
    v12[4] = self;
    v13 = v10;
    v14 = newBackgroundContext;
    v15 = identifierCopy;
    [(SKAInvitationManager *)self _createPersonalChannelForStatusTypeIdentifier:v15 databaseContext:v14 completion:v12];
  }

  else
  {
    v11 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager rollPersonalChannelWithStatusTypeIdentifier:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v15 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_3();
    }

    goto LABEL_11;
  }

  v8 = [*(a1 + 32) databaseManager];
  v9 = [v8 copyInvitedUsersFromChannel:*(a1 + 40) toChannel:v5 databaseContext:*(a1 + 48)];

  if (!v9)
  {
    v15 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_1();
    }

LABEL_11:

    (*(*(a1 + 64) + 16))();
    goto LABEL_16;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v18 = 0;
  [v10 _rollEncryptionKeyForChannel:v5 databaseContext:v11 error:&v18];
  v12 = v18;
  v13 = +[SKAInvitationManager logger];
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 56);
      *buf = 138412290;
      v20 = v16;
      _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Successfully rolled personal channel with statusTypeIdentifier: %@", buf, 0xCu);
    }

    v14 = [*(a1 + 32) databaseManager];
    v17 = [*(a1 + 40) identifier];
    [v14 decommissionChannelWithIdentifier:v17 databaseContext:*(a1 + 48)];
  }

  (*(*(a1 + 64) + 16))();
LABEL_16:
}

- (void)rollPresenceChannelWithPresenceIdentifier:(id)identifier isPersonal:(BOOL)personal completion:(id)completion
{
  personalCopy = personal;
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = identifierCopy;
    _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Received request to roll presence channel with presence identifier: %@", buf, 0xCu);
  }

  newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  v12 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForPresenceIdentifier:identifierCopy isPersonal:personalCopy databaseContext:newBackgroundContext];
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277D68100]);
    serviceIdentifier = [v12 serviceIdentifier];
    v15 = [v13 initWithServiceIdentifier:serviceIdentifier];

    [v15 setIsPersonal:personalCopy];
    presenceManager = [(SKAInvitationManager *)self presenceManager];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __88__SKAInvitationManager_rollPresenceChannelWithPresenceIdentifier_isPersonal_completion___block_invoke;
    v18[3] = &unk_27843DD60;
    v22 = completionCopy;
    v18[4] = self;
    v19 = v12;
    v20 = newBackgroundContext;
    v21 = identifierCopy;
    v23 = personalCopy;
    [presenceManager createPresenceChannelForPresenceIdentifier:v21 options:v15 databaseContext:v20 completion:v18];
  }

  else
  {
    v17 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager rollPresenceChannelWithPresenceIdentifier:isPersonal:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __88__SKAInvitationManager_rollPresenceChannelWithPresenceIdentifier_isPersonal_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v19 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_3();
    }
  }

  else
  {
    v8 = [*(a1 + 32) databaseManager];
    v9 = [v8 copyInvitedUsersFromChannel:*(a1 + 40) toChannel:v5 databaseContext:*(a1 + 48)];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) invitedUsers];
      v27 = 0;
      v12 = [v10 _sendInvitationMessageForPresenceChannel:v5 toInvitedUsers:v11 error:&v27];
      v13 = v27;

      if (v13 || (v12 & 1) == 0)
      {
        v20 = [*(a1 + 40) invitedUsers];
        v21 = [v20 count];

        v22 = +[SKAInvitationManager logger];
        v23 = v22;
        if (v13 || v21)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_1();
          }

          goto LABEL_27;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 56);
          *buf = 138412290;
          v29 = v24;
          _os_log_impl(&dword_220099000, v23, OS_LOG_TYPE_DEFAULT, "Successfully rolled presence channel with presenceIdentifier: %@", buf, 0xCu);
        }

        v25 = [*(a1 + 32) databaseManager];
        v26 = [v25 decommissionAllOldChannelsWithPresenceIdentifier:*(a1 + 56) isPersonal:*(a1 + 72) databaseContext:*(a1 + 48)];

        if (v26)
        {
LABEL_24:
          v23 = [*(a1 + 32) delegate];
          [v23 invitationManager:*(a1 + 32) didRollChannelFromExistingChannel:*(a1 + 40)];
LABEL_27:

          (*(*(a1 + 64) + 16))();
          goto LABEL_28;
        }

        v18 = +[SKAInvitationManager logger];
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
        v14 = +[SKAInvitationManager logger];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 56);
          *buf = 138412290;
          v29 = v15;
          _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Successfully rolled presence channel with presenceIdentifier: %@", buf, 0xCu);
        }

        v16 = [*(a1 + 32) databaseManager];
        v17 = [v16 decommissionAllOldChannelsWithPresenceIdentifier:*(a1 + 56) isPersonal:*(a1 + 72) databaseContext:*(a1 + 48)];

        if (v17)
        {
          goto LABEL_24;
        }

        v18 = +[SKAInvitationManager logger];
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }
      }

      __88__SKAInvitationManager_rollPresenceChannelWithPresenceIdentifier_isPersonal_completion___block_invoke_cold_3();
      goto LABEL_23;
    }

    v19 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 64) + 16))();
LABEL_28:
}

- (BOOL)_rollEncryptionKeyForChannel:(id)channel databaseContext:(id)context error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  contextCopy = context;
  v10 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Generating new outgoing ratchet", buf, 2u);
  }

  v11 = objc_alloc_init(MEMORY[0x277D28550]);
  serializedData = [v11 serializedData];
  v13 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Storing newly generated outgoing ratchet", buf, 2u);
  }

  v14 = [(SKADatabaseManaging *)self->_databaseManager createGeneratedEncryptionKeyWithOriginalOutgoingRatchetState:serializedData personalChannel:channelCopy databaseContext:contextCopy];
  v15 = [(SKADatabaseManaging *)self->_databaseManager existingInvitedUsersForPersonalChannel:channelCopy databaseContext:contextCopy];

  v16 = [v15 count];
  currentSubscriptionKeys = +[SKAInvitationManager logger];
  v18 = os_log_type_enabled(currentSubscriptionKeys, OS_LOG_TYPE_DEFAULT);
  if (!v16)
  {
    if (v18)
    {
      *buf = 138412290;
      v29 = channelCopy;
      _os_log_impl(&dword_220099000, currentSubscriptionKeys, OS_LOG_TYPE_DEFAULT, "Not sending any invitations following key roll as there are no invited users for channel %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (v18)
  {
    v19 = [v15 count];
    *buf = 134217984;
    v29 = v19;
    _os_log_impl(&dword_220099000, currentSubscriptionKeys, OS_LOG_TYPE_DEFAULT, "Messaging %ld existing invited users with the newly generated subscription keys", buf, 0xCu);
  }

  currentSubscriptionKeys = [v11 currentSubscriptionKeys];
  v27 = 0;
  v20 = [(SKAInvitationManager *)self _sendInvitationMessageForChannel:channelCopy toInvitedUsers:v15 subscriptionKeys:currentSubscriptionKeys error:&v27];
  v21 = v27;
  v22 = v21;
  if (v20)
  {

LABEL_12:
    v23 = 1;
    goto LABEL_18;
  }

  v24 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [SKAInvitationManager _rollEncryptionKeyForChannel:databaseContext:error:];
  }

  if (error)
  {
    v25 = v22;
    *error = v22;
  }

  v23 = 0;
LABEL_18:

  return v23;
}

- (BOOL)_sendInvitationMessageForChannel:(id)channel toInvitedUsers:(id)users subscriptionKeys:(id)keys error:(id *)error
{
  v83 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  usersCopy = users;
  keysCopy = keys;
  if ([usersCopy count])
  {
    errorCopy = error;
    v55 = usersCopy;
    v12 = objc_alloc(MEMORY[0x277D28548]);
    index = [keysCopy index];
    chainKey = [keysCopy chainKey];
    v15 = keysCopy;
    v16 = chainKey;
    v59 = v15;
    signingKey = [v15 signingKey];
    v73 = 0;
    v18 = [v12 initWithIndex:index chainKey:v16 signingKey:signingKey error:&v73];
    v56 = v73;

    if (v18)
    {
      serializedData = [v18 serializedData];
      if ([serializedData length])
      {
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        usersCopy = v55;
        obj = v55;
        v19 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
        if (v19)
        {
          v20 = v19;
          v57 = 0;
          v21 = *v70;
          v60 = *v70;
          selfCopy = self;
          do
          {
            v22 = 0;
            v63 = v20;
            do
            {
              if (*v70 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v69 + 1) + 8 * v22);
              invitedSKHandle = [v23 invitedSKHandle];
              if (invitedSKHandle)
              {
                senderSKHandle = [v23 senderSKHandle];
                invitationPayload = [v23 invitationPayload];
                v27 = [(SKAInvitationManager *)self _validateInvitedHandle:senderSKHandle];
                v28 = +[SKAInvitationManager logger];
                v29 = v28;
                if (v27)
                {
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    index2 = [v59 index];
                    handleString = [senderSKHandle handleString];
                    handleString2 = [invitedSKHandle handleString];
                    *buf = 134218754;
                    v75 = index2;
                    v76 = 2112;
                    v77 = handleString;
                    v78 = 2112;
                    v79 = handleString2;
                    v80 = 2112;
                    v81 = invitationPayload;
                    _os_log_impl(&dword_220099000, v29, OS_LOG_TYPE_DEFAULT, "Sending invitation message with new encryption key ratchet index %ld from handle %@ to %@ with invitation payload %@", buf, 0x2Au);
                  }

                  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  statusType = [channelCopy statusType];
                  [v29 setObject:statusType forKeyedSubscript:@"s"];

                  identifier = [channelCopy identifier];
                  [v29 setObject:identifier forKeyedSubscript:@"c"];

                  v35 = [serializedData base64EncodedStringWithOptions:0];
                  [v29 setObject:v35 forKeyedSubscript:@"r"];

                  v36 = MEMORY[0x277CCABB0];
                  date = [MEMORY[0x277CBEAA8] date];
                  [date timeIntervalSince1970];
                  v38 = [v36 numberWithDouble:?];
                  [v29 setObject:v38 forKeyedSubscript:@"d"];

                  v65 = invitationPayload;
                  payloadData = [invitationPayload payloadData];
                  v40 = payloadData;
                  if (payloadData)
                  {
                    v41 = [payloadData base64EncodedStringWithOptions:0];
                    [v29 setObject:v41 forKeyedSubscript:@"p"];
                  }

                  messagingProvider = self->_messagingProvider;
                  v43 = [v29 copy];
                  v67 = 0;
                  v68 = 0;
                  v44 = [(SKAMessagingProviding *)messagingProvider sendMessage:v43 toHandle:invitedSKHandle fromHandle:senderSKHandle limitToPresenceCapable:0 identifier:&v68 error:&v67];
                  v45 = v68;
                  v46 = v67;

                  v47 = +[SKAPowerLogger shared];
                  [v47 logEvent:2 ofType:0 onDatabaseChannel:channelCopy];

                  v48 = +[SKAInvitationManager logger];
                  v49 = v48;
                  if (v44)
                  {
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v75 = v45;
                      _os_log_impl(&dword_220099000, v49, OS_LOG_TYPE_DEFAULT, "Invitation sent successfully. ID: %@", buf, 0xCu);
                    }

                    v57 = 1;
                    invitationPayload = v65;
                  }

                  else
                  {
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412802;
                      v75 = v46;
                      v76 = 2112;
                      v77 = v29;
                      v78 = 2112;
                      v79 = v45;
                      _os_log_error_impl(&dword_220099000, v49, OS_LOG_TYPE_ERROR, "Invitation send failed with error: %@ message: %@ ID: %@", buf, 0x20u);
                    }

                    invitationPayload = v65;
                    if (errorCopy)
                    {
                      v50 = v46;
                      *errorCopy = v46;
                    }
                  }

                  v21 = v60;
                  self = selfCopy;
                  v20 = v63;
                }

                else if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v75 = senderSKHandle;
                  _os_log_error_impl(&dword_220099000, v29, OS_LOG_TYPE_ERROR, "Database InvitedUser sender handle fails validation, not inviting from %@", buf, 0xCu);
                }
              }

              else
              {
                senderSKHandle = +[SKAInvitationManager logger];
                if (os_log_type_enabled(senderSKHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v75 = v23;
                  _os_log_error_impl(&dword_220099000, senderSKHandle, OS_LOG_TYPE_ERROR, "Database InvitedUser does not have an invited SKHandle: %@", buf, 0xCu);
                }
              }

              ++v22;
            }

            while (v20 != v22);
            v20 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
          }

          while (v20);
          usersCopy = v55;
          keysCopy = v59;
          v51 = v57;
        }

        else
        {
          v51 = 0;
          keysCopy = v59;
        }
      }

      else
      {
        obj = +[SKAInvitationManager logger];
        usersCopy = v55;
        keysCopy = v59;
        if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
        {
          [SKAInvitationManager _sendInvitationMessageForChannel:toInvitedUsers:subscriptionKeys:error:];
        }

        v51 = 0;
      }
    }

    else
    {
      v52 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager _sendInvitationMessageForChannel:toInvitedUsers:subscriptionKeys:error:];
      }

      usersCopy = v55;
      keysCopy = v59;
      if (errorCopy)
      {
        [SKAError errorWithCode:404 underlyingError:v56];
        *errorCopy = v51 = 0;
      }

      else
      {
        v51 = 0;
      }
    }
  }

  else
  {
    v56 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _sendInvitationMessageForChannel:toInvitedUsers:subscriptionKeys:error:];
    }

    v51 = 0;
  }

  return v51 & 1;
}

- (BOOL)_sendInvitationMessageForPresenceChannel:(id)channel toInvitedUsers:(id)users error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  usersCopy = users;
  if (![usersCopy count])
  {
    obj = +[SKAInvitationManager logger];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _sendInvitationMessageForChannel:toInvitedUsers:subscriptionKeys:error:];
    }

    goto LABEL_26;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = usersCopy;
  v38 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (!v38)
  {
LABEL_26:
    v29 = 0;
    goto LABEL_27;
  }

  errorCopy = error;
  v31 = usersCopy;
  v33 = 0;
  v37 = *v42;
  do
  {
    for (i = 0; i != v38; ++i)
    {
      if (*v42 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v41 + 1) + 8 * i);
      invitedSKHandle = [v9 invitedSKHandle];
      if (invitedSKHandle)
      {
        senderSKHandle = [v9 senderSKHandle];
        v12 = +[SKAInvitationManager logger];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          handleString = [invitedSKHandle handleString];
          *buf = 138412290;
          v46 = handleString;
          _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Sending presence invitation message to handle %@", buf, 0xCu);
        }

        v14 = [(SKAInvitationManager *)self invitationMessageForPresenceChannel:channelCopy];
        messagingProvider = self->_messagingProvider;
        v16 = [v14 copy];
        v39 = 0;
        v40 = 0;
        v17 = [(SKAMessagingProviding *)messagingProvider sendMessage:v16 toHandle:invitedSKHandle fromHandle:senderSKHandle limitToPresenceCapable:1 identifier:&v40 error:&v39];
        v18 = v40;
        v19 = v39;

        v20 = +[SKAPowerLogger shared];
        [v20 logEvent:2 ofType:0 onDatabaseChannel:channelCopy];

        v21 = +[SKAInvitationManager logger];
        v22 = v21;
        if (v17)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v18;
            _os_log_impl(&dword_220099000, v22, OS_LOG_TYPE_DEFAULT, "Presence invitation sent successfully. ID:%@", buf, 0xCu);
          }

          v23 = [SKAOutgoingInvitationState alloc];
          v24 = [invitedSKHandle copy];
          v25 = [senderSKHandle copy];
          identifier = [channelCopy identifier];
          v27 = [(SKAOutgoingInvitationState *)v23 initWithToHandle:v24 fromHandle:v25 channelIdentifier:identifier];

          [(NSMutableDictionary *)self->_outgoingInvitationMapping setObject:v27 forKeyedSubscript:v18];
          v33 = 1;
        }

        else
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v46 = v19;
            v47 = 2112;
            v48 = v14;
            v49 = 2112;
            v50 = v18;
            _os_log_error_impl(&dword_220099000, v22, OS_LOG_TYPE_ERROR, "Presence invitation send failed with error: %@ message: %@, ID:%@", buf, 0x20u);
          }

          if (errorCopy)
          {
            v28 = v19;
            *errorCopy = v19;
          }
        }
      }

      else
      {
        senderSKHandle = +[SKAInvitationManager logger];
        if (os_log_type_enabled(senderSKHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v46 = v9;
          _os_log_error_impl(&dword_220099000, senderSKHandle, OS_LOG_TYPE_ERROR, "Database InvitedUser does not have an invited SKHandle: %@", buf, 0xCu);
        }
      }
    }

    v38 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  }

  while (v38);
  usersCopy = v31;
  v29 = v33;
LABEL_27:

  return v29 & 1;
}

- (id)invitationMessageForPresenceChannel:(id)channel
{
  channelCopy = channel;
  presenceServerKey = [channelCopy presenceServerKey];
  presencePeerKey = [channelCopy presencePeerKey];
  presenceMembershipKey = [channelCopy presenceMembershipKey];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  presenceIdentifier = [channelCopy presenceIdentifier];
  [v8 setObject:presenceIdentifier forKeyedSubscript:@"pr"];

  identifier = [channelCopy identifier];
  [v8 setObject:identifier forKeyedSubscript:@"c"];

  channelToken = [channelCopy channelToken];
  v12 = [channelToken base64EncodedStringWithOptions:0];
  [v8 setObject:v12 forKeyedSubscript:@"ct"];

  v13 = [presenceServerKey base64EncodedStringWithOptions:0];
  [v8 setObject:v13 forKeyedSubscript:@"sk"];

  v14 = [presencePeerKey base64EncodedStringWithOptions:0];
  [v8 setObject:v14 forKeyedSubscript:@"pk"];

  v15 = [presenceMembershipKey base64EncodedStringWithOptions:0];
  [v8 setObject:v15 forKeyedSubscript:@"mk"];

  v16 = MEMORY[0x277CCABB0];
  channelManager = [(SKAInvitationManager *)self channelManager];
  serverTime = [channelManager serverTime];
  [serverTime timeIntervalSince1970];
  v19 = [v16 numberWithDouble:?];
  [v8 setObject:v19 forKeyedSubscript:@"d"];

  v20 = MEMORY[0x277CCABB0];
  dateChannelCreated = [channelCopy dateChannelCreated];
  [dateChannelCreated timeIntervalSince1970];
  v22 = [v20 numberWithDouble:?];
  [v8 setObject:v22 forKeyedSubscript:@"cd"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(channelCopy, "isPersonal")}];
  [v8 setObject:v23 forKeyedSubscript:@"ip"];

  serviceIdentifier = [channelCopy serviceIdentifier];

  [v8 setObject:serviceIdentifier forKeyedSubscript:@"si"];

  return v8;
}

- (id)_validateInvitedHandles:(id)handles
{
  v26 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = handlesCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 138412290;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([(SKAInvitationManager *)self _validateInvitedHandle:v12, v18, v19])
        {
          [v5 addObject:v12];
        }

        else
        {
          v13 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v24 = v12;
            _os_log_error_impl(&dword_220099000, v13, OS_LOG_TYPE_ERROR, "Invited handle failed validation, ignoring: %@", buf, 0xCu);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  array = [v5 array];
  v15 = [array count];
  if (v15 != [v6 count])
  {
    v16 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _validateInvitedHandles:];
    }
  }

  return array;
}

- (BOOL)_validateInvitedHandle:(id)handle
{
  handleCopy = handle;
  v4 = objc_alloc(MEMORY[0x277D18A48]);
  handleString = [handleCopy handleString];
  v6 = [v4 initWithUnprefixedURI:handleString];

  if (!v6 || ([handleCopy handleString], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, !v8))
  {
    v12 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _validateInvitedHandle:];
    }

    goto LABEL_7;
  }

  unprefixedURI = [v6 unprefixedURI];
  v10 = [unprefixedURI length];

  if (!v10)
  {
    v12 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _validateInvitedHandle:v6];
    }

LABEL_7:

    v11 = 0;
    goto LABEL_8;
  }

  v11 = 1;
LABEL_8:

  return v11;
}

- (int64_t)handleIncomingInvitationMessage:(id)message fromHandle:(id)handle fromID:(id)d fromMergeID:(id)iD toHandle:(id)toHandle messageGuid:(id)guid
{
  v74 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  dCopy = d;
  iDCopy = iD;
  toHandleCopy = toHandle;
  guidCopy = guid;
  v20 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v73 = handleCopy;
    _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "Incoming invitation from handle: %@", buf, 0xCu);
  }

  v21 = [messageCopy ska_stringForKey:@"c"];
  if ([v21 length])
  {
    v62 = toHandleCopy;
    v22 = [messageCopy ska_dateFromUnixTimestampForKey:@"d"];
    v23 = v22;
    if (!v22)
    {
      v26 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
      }

      v31 = 0;
      goto LABEL_79;
    }

    v57 = v22;
    v24 = handleCopy;
    v25 = guidCopy;
    v59 = dCopy;
    v26 = [messageCopy ska_stringForKey:@"s"];
    v27 = [messageCopy ska_stringForKey:@"pr"];
    v58 = v21;
    newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
    v28 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForSubscriptionIdentifier:v21 databaseContext:?];
    v29 = +[SKAPowerLogger shared];
    v60 = v28;
    [v29 logEvent:2 ofType:1 onDatabaseChannel:v28];

    if (-[NSObject length](v26, "length") && [v27 length])
    {
      v30 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
      }

      v31 = 0;
      v32 = v27;
      guidCopy = v25;
LABEL_10:
      handleCopy = v24;
      v23 = v57;
      v21 = v58;
LABEL_78:

      dCopy = v59;
LABEL_79:

      toHandleCopy = v62;
      goto LABEL_80;
    }

    v56 = v27;
    if ([v26 length])
    {
      v33 = +[SKAInvitationManager logger];
      guidCopy = v25;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v33, OS_LOG_TYPE_DEFAULT, "Treating invite as a status invite", buf, 2u);
      }

      handleCopy = v24;
      if (self->_trafficModeEnabled)
      {
        v30 = +[SKAInvitationManager logger];
        v23 = v57;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
        }

LABEL_46:
        v31 = 0;
        v32 = v56;
        v21 = v58;
        goto LABEL_78;
      }

      v23 = v57;
      if ([v26 isEqualToString:@"com.apple.availability"])
      {
        v30 = +[SKAInvitationManager logger];
        v21 = v58;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
        }
      }

      else
      {
        v21 = v58;
        if ([SKAServerBag statusEnabledByServerForStatusTypeIdentifier:v26])
        {
          v30 = [messageCopy ska_dataFrombase64EncodedStringForKey:@"r"];
          if ([v30 length])
          {
            [(SKAInvitationManager *)self acceptInvitationMessage:messageCopy fromHandle:handleCopy toHandle:v62 messageGuid:guidCopy existingChannel:v60 databaseContext:newBackgroundContext];
            v31 = 1;
LABEL_56:
            v32 = v56;
            goto LABEL_78;
          }

          v38 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
          }
        }

        else
        {
          v30 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
          }
        }
      }

      v31 = 0;
      goto LABEL_56;
    }

    v55 = iDCopy;
    v34 = [v27 length];
    v35 = +[SKAInvitationManager logger];
    v30 = v35;
    guidCopy = v25;
    if (!v34)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
      }

      v31 = 0;
      iDCopy = v55;
      v32 = v56;
      goto LABEL_10;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v30, OS_LOG_TYPE_DEFAULT, "Treating invite as a presence invite", buf, 2u);
    }

    iDCopy = v55;
    handleCopy = v24;
    if (![(SKAInvitationManager *)self presenceEnabledByServer])
    {
      v30 = +[SKAInvitationManager logger];
      v23 = v57;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:];
      }

      goto LABEL_46;
    }

    v30 = [messageCopy ska_dataFrombase64EncodedStringForKey:@"ct"];
    v23 = v57;
    if (![v30 length])
    {
      +[SKAInvitationManager logger];
      v54 = v21 = v58;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
      }

      v31 = 0;
      v32 = v56;
      goto LABEL_77;
    }

    v54 = [messageCopy ska_dataFrombase64EncodedStringForKey:@"pk"];
    v21 = v58;
    if (![v54 length])
    {
      v53 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
      }

      v31 = 0;
      v32 = v56;
      goto LABEL_76;
    }

    v53 = [messageCopy ska_dataFrombase64EncodedStringForKey:@"sk"];
    if (![v53 length])
    {
      v52 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
      }

      v31 = 0;
      v32 = v56;
      goto LABEL_75;
    }

    v52 = [messageCopy ska_dataFrombase64EncodedStringForKey:@"mk"];
    if ([v52 length])
    {
      messagingProvider = [(SKAInvitationManager *)self messagingProvider];
      v47 = [messagingProvider isFromIDFromSelfAccount:v59];

      v37 = [messageCopy ska_numberForKey:@"ip"];
      bOOLValue = [v37 BOOLValue];

      if (!bOOLValue || (v47 & 1) != 0)
      {
        clientIDFromPresenceIdentifier = [v56 clientIDFromPresenceIdentifier];
        iDCopy = v55;
        v50 = clientIDFromPresenceIdentifier;
        if (clientIDFromPresenceIdentifier)
        {
          v40 = clientIDFromPresenceIdentifier;
          v41 = [clientIDFromPresenceIdentifier isEqualToString:@"homed"];
          v42 = @"com.apple.private.alloy.status.keysharing";
          if (v41)
          {
            v42 = @"com.apple.private.alloy.home";
          }

          v46 = v42;
          if (([v40 isEqualToString:@"groupsessionservice"]& 1) != 0)
          {
            v43 = 1;
          }

          else
          {
            v43 = [v40 isEqualToString:@"mediaremoted"];
          }

          v32 = v56;
          if ((v47 & 1) == 0)
          {
            v63[0] = MEMORY[0x277D85DD0];
            v63[1] = 3221225472;
            v63[2] = __107__SKAInvitationManager_handleIncomingInvitationMessage_fromHandle_fromID_fromMergeID_toHandle_messageGuid___block_invoke;
            v63[3] = &unk_27843DD88;
            v63[4] = self;
            v48 = v43;
            v64 = messageCopy;
            v65 = handleCopy;
            v66 = v62;
            v67 = guidCopy;
            v68 = v60;
            v69 = newBackgroundContext;
            v71 = v48;
            v51 = v50;
            v70 = v51;
            iDCopy = v55;
            [(SKAInvitationManager *)self shouldAcceptInvitationMessageForPresenceIdentifier:v56 fromHandle:v65 fromMergeID:v55 inServiceFirewall:v46 databaseContext:v69 completion:v63];

            v31 = 2;
            goto LABEL_75;
          }

          [(SKAInvitationManager *)self acceptInvitationMessage:messageCopy fromHandle:handleCopy toHandle:v62 messageGuid:guidCopy existingChannel:v60 databaseContext:newBackgroundContext];
          v31 = 1;
LABEL_74:

LABEL_75:
LABEL_76:

LABEL_77:
          goto LABEL_78;
        }

        v44 = +[SKAInvitationManager logger];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
        }
      }

      else
      {
        +[SKAInvitationManager logger];
        v50 = iDCopy = v55;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
        }
      }
    }

    else
    {
      v50 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
      }
    }

    v31 = 0;
    v32 = v56;
    goto LABEL_74;
  }

  v23 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [SKAInvitationManager handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:];
  }

  v31 = 0;
LABEL_80:

  return v31;
}

void __107__SKAInvitationManager_handleIncomingInvitationMessage_fromHandle_fromID_fromMergeID_toHandle_messageGuid___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);

    [v3 acceptInvitationMessage:v4 fromHandle:v5 toHandle:v6 messageGuid:v7 existingChannel:v8 databaseContext:v9];
  }

  else
  {
    v10 = *(a1 + 96);
    v11 = +[SKAInvitationManager logger];
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
    if (v10 == 1)
    {
      if (v12)
      {
        __107__SKAInvitationManager_handleIncomingInvitationMessage_fromHandle_fromID_fromMergeID_toHandle_messageGuid___block_invoke_cold_2();
      }

      [*(a1 + 32) acceptInvitationMessage:*(a1 + 40) fromHandle:*(a1 + 48) toHandle:*(a1 + 56) messageGuid:*(a1 + 64) existingChannel:*(a1 + 72) databaseContext:*(a1 + 80)];
    }

    else
    {
      if (v12)
      {
        __107__SKAInvitationManager_handleIncomingInvitationMessage_fromHandle_fromID_fromMergeID_toHandle_messageGuid___block_invoke_cold_1();
      }
    }
  }
}

- (void)shouldAcceptInvitationMessageForPresenceIdentifier:(id)identifier fromHandle:(id)handle fromMergeID:(id)d inServiceFirewall:(id)firewall databaseContext:(id)context completion:(id)completion
{
  v62 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handleCopy = handle;
  dCopy = d;
  firewallCopy = firewall;
  contextCopy = context;
  completionCopy = completion;
  v38 = contextCopy;
  v16 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForPresenceIdentifier:identifierCopy isPersonal:0 databaseContext:contextCopy];
  if (v16)
  {
    v17 = [(SKADatabaseManaging *)self->_databaseManager receivedInvitationsForPresenceIdentifier:identifierCopy isPersonal:0 databaseContext:contextCopy];
    v18 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 count];
      invitedUsers = [v16 invitedUsers];
      *buf = 134218498;
      v57 = v19;
      v58 = 2048;
      v59 = [invitedUsers count];
      v60 = 2112;
      v61 = identifierCopy;
      _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Found %lu old invitations and %lu previously invited users for presence identifier: %@", buf, 0x20u);
    }

    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    invitedUsers2 = [v16 invitedUsers];
    v23 = [invitedUsers2 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v23)
    {
      v24 = *v51;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v51 != v24)
          {
            objc_enumerationMutation(invitedUsers2);
          }

          invitedSKHandle = [*(*(&v50 + 1) + 8 * i) invitedSKHandle];
          if (invitedSKHandle)
          {
            [v21 addObject:invitedSKHandle];
          }
        }

        v23 = [invitedUsers2 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v23);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v27 = v17;
    v28 = [v27 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v28)
    {
      v29 = *v47;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(v27);
          }

          senderSKHandle = [*(*(&v46 + 1) + 8 * j) senderSKHandle];
          if (senderSKHandle)
          {
            [v21 addObject:senderSKHandle];
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v28);
    }

    v32 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v57 = handleCopy;
      v58 = 2112;
      v59 = v21;
      _os_log_impl(&dword_220099000, v32, OS_LOG_TYPE_DEFAULT, "Querying if sender %@ is in list of valid sender handles: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    messagingProvider = self->_messagingProvider;
    v34 = [v21 copy];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke;
    v41[3] = &unk_27843DDD8;
    objc_copyWeak(&v45, buf);
    v42 = handleCopy;
    v44 = completionCopy;
    v43 = firewallCopy;
    [(SKAMessagingProviding *)messagingProvider listOfValidSenderHandles:v34 containsSenderMergeID:dCopy completion:v41];

    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);
  }

  else
  {
    v35 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v35, OS_LOG_TYPE_DEFAULT, "Presence channel has never been seen before, accepting", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (a2)
  {
    v5 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Sender %@ was in list of valid sender handles, accepting", buf, 0xCu);
    }

    v7 = *(*(a1 + 48) + 16);
LABEL_12:
    v7();
    goto LABEL_13;
  }

  v8 = *(a1 + 40);
  v9 = +[SKAInvitationManager logger];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (!v8)
  {
    if (v10)
    {
      __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke_cold_2();
    }

    v7 = *(*(a1 + 48) + 16);
    goto LABEL_12;
  }

  if (v10)
  {
    __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke_cold_1();
  }

  v11 = [WeakRetained messagingProvider];
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke_111;
  v14[3] = &unk_27843DDB0;
  v15 = v12;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  [v11 isHandle:v15 inFirewallForService:v13 completion:v14];

LABEL_13:
}

uint64_t __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke_111(void *a1, char a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = +[SKAInvitationManager logger];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Sender %@ was in the firewall for %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke_111_cold_1();
  }

  return (*(a1[6] + 16))();
}

- (void)acceptInvitationMessage:(id)message fromHandle:(id)handle toHandle:(id)toHandle messageGuid:(id)guid existingChannel:(id)channel databaseContext:(id)context
{
  v76 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  toHandleCopy = toHandle;
  guidCopy = guid;
  channelCopy = channel;
  contextCopy = context;
  v48 = [messageCopy ska_stringForKey:@"c"];
  v58 = [messageCopy ska_dateFromUnixTimestampForKey:@"d"];
  v51 = [messageCopy ska_dataFrombase64EncodedStringForKey:@"r"];
  v50 = [messageCopy ska_dataFrombase64EncodedStringForKey:@"p"];
  v60 = [messageCopy ska_stringForKey:@"s"];
  v16 = [messageCopy ska_stringForKey:@"pr"];
  v54 = [messageCopy ska_dataFrombase64EncodedStringForKey:@"ct"];
  v53 = [messageCopy ska_dataFrombase64EncodedStringForKey:@"pk"];
  v52 = [messageCopy ska_dataFrombase64EncodedStringForKey:@"sk"];
  v47 = [messageCopy ska_dataFrombase64EncodedStringForKey:@"mk"];
  serverTime = [messageCopy ska_dateFromUnixTimestampForKey:@"cd"];
  if (!serverTime)
  {
    v18 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager acceptInvitationMessage:fromHandle:toHandle:messageGuid:existingChannel:databaseContext:];
    }

    channelManager = [(SKAInvitationManager *)self channelManager];
    serverTime = [channelManager serverTime];
  }

  v46 = [messageCopy ska_stringForKey:@"si"];
  v20 = [messageCopy ska_numberForKey:@"ip"];
  bOOLValue = [v20 BOOLValue];

  v22 = [v60 length];
  v45 = v22 == 0;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = bOOLValue;
  }

  v55 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForPresenceIdentifier:v16 isPersonal:0 databaseContext:contextCopy];
  if (channelCopy)
  {
    v24 = channelCopy;
LABEL_25:
    [(SKAInvitationManager *)self _sendReverseInvitationIfNeededForPresenceIdentifier:v16 incomingChannel:v24 senderHandle:handleCopy invitedHandle:toHandleCopy dateInvitationCreated:v58 databaseContext:contextCopy];
    if ((v23 & 1) == 0)
    {
      v32 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v32, OS_LOG_TYPE_DEFAULT, "Storing received invitation", buf, 2u);
      }

      v33 = [(SKADatabaseManaging *)self->_databaseManager createReceivedInvitationForChannel:v24 senderHandle:handleCopy invitedHandle:toHandleCopy invitationIdentifier:guidCopy dateInvitationCreated:v58 incomingRatchetState:v51 presenceIdentifier:v16 channelToken:v54 serverKey:v52 peerKey:v53 invitationPayload:v50 databaseContext:contextCopy];
      objc_initWeak(buf, self);
      v34 = os_transaction_create();
      backgroundCleanupQueue = self->_backgroundCleanupQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __112__SKAInvitationManager_acceptInvitationMessage_fromHandle_toHandle_messageGuid_existingChannel_databaseContext___block_invoke;
      block[3] = &unk_27843DE00;
      objc_copyWeak(&v69, buf);
      v62 = v24;
      v63 = handleCopy;
      v64 = v16;
      v65 = contextCopy;
      v66 = v60;
      v67 = v33;
      v68 = v34;
      v36 = v34;
      v37 = v33;
      dispatch_async(backgroundCleanupQueue, block);

      objc_destroyWeak(&v69);
      objc_destroyWeak(buf);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained invitationManager:self didReceiveInvitationWithType:v45 forChannel:v24 withExistingChannel:v55];

    goto LABEL_30;
  }

  v25 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v25, OS_LOG_TYPE_DEFAULT, "No existing channel matches incoming invitation, creating new channel", buf, 2u);
  }

  if ([v60 length])
  {
    v24 = [(SKADatabaseManaging *)self->_databaseManager createChannelForStatusTypeIdentifier:v60 channelIdentifier:v48 databaseContext:contextCopy];
  }

  else
  {
    if (![v16 length])
    {
      goto LABEL_31;
    }

    v43 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForPresenceIdentifier:v16 isPersonal:0 databaseContext:contextCopy];
    v44 = [objc_alloc(MEMORY[0x277D68100]) initWithServiceIdentifier:v46];
    [v44 setIsPersonal:bOOLValue];
    v24 = [(SKADatabaseManaging *)self->_databaseManager createPresenceChannelForPresenceIdentifier:v16 channelIdentifier:v48 channelToken:v54 peerKey:v53 serverKey:v52 membershipKey:v47 creationDate:serverTime options:v44 databaseContext:contextCopy];
    v42 = [(SKADatabaseManaging *)self->_databaseManager existingChannelForPresenceIdentifier:v16 isPersonal:0 databaseContext:contextCopy];
    if (v43)
    {
      if (v24)
      {
        identifier = [v24 identifier];
        identifier2 = [v42 identifier];
        v40 = [identifier isEqualToString:identifier2];

        if (v40)
        {
          v41 = [(SKADatabaseManaging *)self->_databaseManager copyInvitedUsersFromChannel:v43 toChannel:v24 databaseContext:contextCopy];
          v28 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            identifier3 = [v43 identifier];
            identifier4 = [v24 identifier];
            v30 = identifier4;
            v31 = @"NO";
            *buf = 138412802;
            v71 = identifier3;
            v72 = 2112;
            if (v41)
            {
              v31 = @"YES";
            }

            v73 = identifier4;
            v74 = 2112;
            v75 = v31;
            _os_log_impl(&dword_220099000, v28, OS_LOG_TYPE_DEFAULT, "Did copy invited users from channel %@ to %@: %@", buf, 0x20u);
          }
        }
      }
    }
  }

  if (v24)
  {
    goto LABEL_25;
  }

LABEL_31:
  v24 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [SKAInvitationManager acceptInvitationMessage:fromHandle:toHandle:messageGuid:existingChannel:databaseContext:];
  }

LABEL_30:
}

void __112__SKAInvitationManager_acceptInvitationMessage_fromHandle_toHandle_messageGuid_existingChannel_databaseContext___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_22;
  }

  v4 = [WeakRetained databaseManager];
  v5 = [v4 newBackgroundContext];

  v6 = [*(a1 + 32) channelType];
  if (v6)
  {
    if (v6 != 1)
    {
      v10 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __112__SKAInvitationManager_acceptInvitationMessage_fromHandle_toHandle_messageGuid_existingChannel_databaseContext___block_invoke_cold_1();
      }

      v9 = 0;
      goto LABEL_10;
    }

    v7 = [v3 databaseManager];
    v8 = [v7 allExistingChannelsForHandle:*(a1 + 40) presenceIdentifier:*(a1 + 48) databaseContext:*(a1 + 56)];
  }

  else
  {
    v7 = [v3 databaseManager];
    v8 = [v7 allExistingChannelsForHandle:*(a1 + 40) statusTypeIdentifier:*(a1 + 64) databaseContext:*(a1 + 56)];
  }

  v9 = v8;

LABEL_10:
  v11 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    *buf = 138412290;
    v31 = v12;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Cleaning up ReceivedInvitations from handle: %@", buf, 0xCu);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      v17 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * v17);
        v19 = [v3 databaseManager];
        v20 = [v18 identifier];
        [v19 cleanupOldReceivedInvitationsForChannelIdentifier:v20 excludingInvitation:*(a1 + 72) databaseContext:v5];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  v21 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 40);
    *buf = 138412290;
    v31 = v22;
    _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Removing old channels for handle: %@", buf, 0xCu);
  }

  v23 = [v3 databaseManager];
  [v23 cleanupOldChannelsForHandle:*(a1 + 40) statusTypeIdentifier:*(a1 + 64) databaseContext:v5];

  v24 = objc_opt_self();
LABEL_22:
}

- (void)_sendReverseInvitationIfNeededForPresenceIdentifier:(id)identifier incomingChannel:(id)channel senderHandle:(id)handle invitedHandle:(id)invitedHandle dateInvitationCreated:(id)created databaseContext:(id)context
{
  v46 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  channelCopy = channel;
  handleCopy = handle;
  invitedHandleCopy = invitedHandle;
  createdCopy = created;
  contextCopy = context;
  if ([identifierCopy length] && +[SKAServerBag presenceReverseInviteEnabledByServer](SKAServerBag, "presenceReverseInviteEnabledByServer"))
  {
    selfCopy = self;
    v20 = -[SKADatabaseManaging existingChannelForPresenceIdentifier:isPersonal:databaseContext:](self->_databaseManager, "existingChannelForPresenceIdentifier:isPersonal:databaseContext:", identifierCopy, [channelCopy isPersonal], contextCopy);
    v21 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      [channelCopy dateChannelCreated];
      v23 = v22 = v20;
      dateChannelCreated = [v22 dateChannelCreated];
      *buf = 138412546;
      v43 = v23;
      v44 = 2112;
      v45 = dateChannelCreated;
      _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "incoming channel creation date: %@ current channel creation date: %@", buf, 0x16u);

      v20 = v22;
    }

    if (v20)
    {
      dateChannelCreated2 = [channelCopy dateChannelCreated];
      dateChannelCreated3 = [v20 dateChannelCreated];
      v27 = v20;
      v28 = [dateChannelCreated2 compare:dateChannelCreated3];

      v29 = v28 == -1;
      v20 = v27;
      if (v29)
      {
        if ([(SKARateLimiter *)selfCopy->_rateLimiter isUnderRequestLimit])
        {
          [(SKARateLimiter *)selfCopy->_rateLimiter recordRequest];
          v30 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_220099000, v30, OS_LOG_TYPE_DEFAULT, "Received an invite but creation date is lower than current channel, sending reverse invite", buf, 2u);
          }

          v31 = [SKADatabaseInvitedUser alloc];
          normalizedHandleString = [handleCopy normalizedHandleString];
          normalizedHandleString2 = [invitedHandleCopy normalizedHandleString];
          v33 = [(SKADatabaseInvitedUser *)v31 initWithInvitedHandle:normalizedHandleString senderHande:normalizedHandleString2 invitationPayloadData:0 dateInvitationPayloadCreated:createdCopy];
          v41 = v33;
          v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];

          v40 = 0;
          v20 = v27;
          LOBYTE(v33) = [(SKAInvitationManager *)selfCopy _sendInvitationMessageForPresenceChannel:v27 toInvitedUsers:v34 error:&v40];
          v35 = v40;
          if ((v33 & 1) == 0)
          {
            v36 = v35;
            v37 = +[SKAInvitationManager logger];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [SKAInvitationManager _sendReverseInvitationIfNeededForPresenceIdentifier:incomingChannel:senderHandle:invitedHandle:dateInvitationCreated:databaseContext:];
            }

            v20 = v27;
            v35 = v36;
          }
        }

        else
        {
          v34 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [SKAInvitationManager _sendReverseInvitationIfNeededForPresenceIdentifier:incomingChannel:senderHandle:invitedHandle:dateInvitationCreated:databaseContext:];
          }
        }
      }
    }
  }
}

- (void)isHandleInviteable:(id)inviteable fromHandle:(id)handle completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  inviteableCopy = inviteable;
  handleCopy = handle;
  completionCopy = completion;
  if (handleCopy && (-[SKAInvitationManager messagingProvider](self, "messagingProvider"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isHandleAvailableToMessageFrom:handleCopy], v11, (v12 & 1) == 0))
  {
    v15 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager isHandleInviteable:fromHandle:completion:];
    }

    v14 = [SKAError errorWithCode:500];
    completionCopy[2](completionCopy, 0, v14);
  }

  else
  {
    v13 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = handleCopy;
      _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "fromHandle %@ is a valid sender handle for active iCloud account", buf, 0xCu);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__SKAInvitationManager_isHandleInviteable_fromHandle_completion___block_invoke;
    v16[3] = &unk_27843DE28;
    v17 = inviteableCopy;
    v18 = completionCopy;
    [(SKAInvitationManager *)self _isHandleInviteable:v17 completion:v16];

    v14 = v17;
  }
}

uint64_t __65__SKAInvitationManager_isHandleInviteable_fromHandle_completion___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "toHandle %@ inviteability check completed with result: %d", &v7, 0x12u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_isHandleInviteable:(id)inviteable completion:(id)completion
{
  inviteableCopy = inviteable;
  completionCopy = completion;
  if ([(SKAInvitationManager *)self _validateInvitedHandle:inviteableCopy])
  {
    messagingProvider = [(SKAInvitationManager *)self messagingProvider];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__SKAInvitationManager__isHandleInviteable_completion___block_invoke;
    v10[3] = &unk_27843DD10;
    v11 = completionCopy;
    [messagingProvider isHandleMessageable:inviteableCopy completion:v10];
  }

  else
  {
    v9 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _isHandleInviteable:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)isPresenceHandleInviteable:(id)inviteable fromHandle:(id)handle completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  inviteableCopy = inviteable;
  handleCopy = handle;
  completionCopy = completion;
  if (handleCopy && (-[SKAInvitationManager messagingProvider](self, "messagingProvider"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isHandleAvailableToMessageFrom:handleCopy], v11, (v12 & 1) == 0))
  {
    v15 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager isHandleInviteable:fromHandle:completion:];
    }

    v14 = [SKAError errorWithCode:500];
    completionCopy[2](completionCopy, 0, v14);
  }

  else
  {
    v13 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = handleCopy;
      _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "fromHandle %@ is a valid sender handle for active iCloud account", buf, 0xCu);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __73__SKAInvitationManager_isPresenceHandleInviteable_fromHandle_completion___block_invoke;
    v16[3] = &unk_27843DE28;
    v17 = inviteableCopy;
    v18 = completionCopy;
    [(SKAInvitationManager *)self _isPresenceHandleInviteable:v17 completion:v16];

    v14 = v17;
  }
}

uint64_t __73__SKAInvitationManager_isPresenceHandleInviteable_fromHandle_completion___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "toHandle %@ inviteability check completed with result: %d", &v7, 0x12u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_isPresenceHandleInviteable:(id)inviteable completion:(id)completion
{
  inviteableCopy = inviteable;
  completionCopy = completion;
  if ([(SKAInvitationManager *)self _validateInvitedHandle:inviteableCopy])
  {
    messagingProvider = [(SKAInvitationManager *)self messagingProvider];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__SKAInvitationManager__isPresenceHandleInviteable_completion___block_invoke;
    v10[3] = &unk_27843DD10;
    v11 = completionCopy;
    [messagingProvider isHandleMessageableForPresence:inviteableCopy completion:v10];
  }

  else
  {
    v9 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _isHandleInviteable:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)fetchHandleInvitability:(id)invitability fromHandle:(id)handle forStatusTypeIdentifier:(id)identifier completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  invitabilityCopy = invitability;
  handleCopy = handle;
  completionCopy = completion;
  databaseManager = self->_databaseManager;
  identifierCopy = identifier;
  newBackgroundContext = [(SKADatabaseManaging *)databaseManager newBackgroundContext];
  databaseManager = [(SKAInvitationManager *)self databaseManager];
  v17 = [databaseManager existingRemovedUserWithHandle:invitabilityCopy statusTypeIdentifier:identifierCopy withDatabaseContext:newBackgroundContext];

  if (v17)
  {
    v18 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = invitabilityCopy;
      _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "handle %@ is present as a removed user", buf, 0xCu);
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __94__SKAInvitationManager_fetchHandleInvitability_fromHandle_forStatusTypeIdentifier_completion___block_invoke;
  v20[3] = &unk_27843DE50;
  v22 = v17 != 0;
  v21 = completionCopy;
  v19 = completionCopy;
  [(SKAInvitationManager *)self isHandleInviteable:invitabilityCopy fromHandle:handleCopy completion:v20];
}

void __94__SKAInvitationManager_fetchHandleInvitability_fromHandle_forStatusTypeIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277D680C8];
  v6 = a3;
  v7 = [[v5 alloc] initWithIsInvitable:a2 wasRemoved:*(a1 + 40)];
  (*(*(a1 + 32) + 16))();
}

- (void)fetchHandleInvitability:(id)invitability fromHandle:(id)handle forPresenceIdentifier:(id)identifier completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  invitabilityCopy = invitability;
  handleCopy = handle;
  completionCopy = completion;
  databaseManager = self->_databaseManager;
  identifierCopy = identifier;
  newBackgroundContext = [(SKADatabaseManaging *)databaseManager newBackgroundContext];
  databaseManager = [(SKAInvitationManager *)self databaseManager];
  v17 = [databaseManager existingRemovedUserWithHandle:invitabilityCopy presenceIdentifier:identifierCopy withDatabaseContext:newBackgroundContext];

  if (v17)
  {
    v18 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = invitabilityCopy;
      _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "handle %@ is present as a removed user", buf, 0xCu);
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __92__SKAInvitationManager_fetchHandleInvitability_fromHandle_forPresenceIdentifier_completion___block_invoke;
  v20[3] = &unk_27843DE50;
  v22 = v17 != 0;
  v21 = completionCopy;
  v19 = completionCopy;
  [(SKAInvitationManager *)self isPresenceHandleInviteable:invitabilityCopy fromHandle:handleCopy completion:v20];
}

void __92__SKAInvitationManager_fetchHandleInvitability_fromHandle_forPresenceIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277D680C8];
  v6 = a3;
  v7 = [[v5 alloc] initWithIsInvitable:a2 wasRemoved:*(a1 + 40)];
  (*(*(a1 + 32) + 16))();
}

- (id)_ratchetEncryptionKeyForwardOrKeyRollForPersonalChannel:(id)channel databaseContext:(id)context invitationWasSentViaKeyRoll:(BOOL *)roll error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  contextCopy = context;
  currentOutgoingRatchet = [channelCopy currentOutgoingRatchet];
  v13 = +[SKAInvitationManager logger];
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (currentOutgoingRatchet)
  {
    if (v14)
    {
      currentSubscriptionKeys = [currentOutgoingRatchet currentSubscriptionKeys];
      *buf = 134217984;
      index = [currentSubscriptionKeys index];
      _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Found existing encryption keys, attempting to ratchet forward from current ratchet index: %ld", buf, 0xCu);
    }

    if ([currentOutgoingRatchet ratchetForward])
    {
      v16 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        currentSubscriptionKeys2 = [currentOutgoingRatchet currentSubscriptionKeys];
        index2 = [currentSubscriptionKeys2 index];
        *buf = 134217984;
        index = index2;
        _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "Ratchet forward succeeded. New ratchet index: %ld. Persisting this state.", buf, 0xCu);
      }

      serializedData = [currentOutgoingRatchet serializedData];
      databaseManager = [(SKAInvitationManager *)self databaseManager];
      v21 = [databaseManager updatePersonalChannel:channelCopy withCurrentOutgoingRatchetState:serializedData databaseContext:contextCopy];

      *roll = 0;
      if (!error)
      {
        goto LABEL_22;
      }

LABEL_16:
      *error = 0;
      goto LABEL_22;
    }

    v27 = 0;
    v24 = [(SKAInvitationManager *)self _rollEncryptionKeyForChannel:channelCopy databaseContext:contextCopy error:&v27];
    serializedData = v27;
    if (v24)
    {
LABEL_15:
      *roll = 1;
      v21 = 0;
      if (!error)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    v23 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _ratchetEncryptionKeyForwardOrKeyRollForPersonalChannel:databaseContext:invitationWasSentViaKeyRoll:error:];
    }
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Channel has no existing encryption key data, initiating key roll to generate first key", buf, 2u);
    }

    v28 = 0;
    v22 = [(SKAInvitationManager *)self _rollEncryptionKeyForChannel:channelCopy databaseContext:contextCopy error:&v28];
    serializedData = v28;
    if (v22)
    {
      goto LABEL_15;
    }

    v23 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SKAInvitationManager _ratchetEncryptionKeyForwardOrKeyRollForPersonalChannel:databaseContext:invitationWasSentViaKeyRoll:error:];
    }
  }

  if (error)
  {
    v25 = serializedData;
    *error = serializedData;
  }

  v21 = 0;
  *roll = 0;
LABEL_22:

  return v21;
}

- (id)_addInvitedHandles:(id)handles senderHandle:(id)handle toDatabaseForPersonalChannel:(id)channel withInvitationPayload:(id)payload databaseContext:(id)context
{
  v44 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  handleCopy = handle;
  channelCopy = channel;
  payloadCopy = payload;
  contextCopy = context;
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = handlesCopy;
  v15 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v38;
    *&v16 = 138412290;
    v32 = v16;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v37 + 1) + 8 * i);
        handleString = [v20 handleString];
        v22 = [handleString length];

        if (v22)
        {
          v23 = [(SKAInvitationManager *)self _updateOrCreateInvitedUserWithHandle:v20 senderHandle:handleCopy onChannel:channelCopy withInvitationPayload:payloadCopy databaseContext:contextCopy];
          if ([v23 count])
          {
            [v33 addObjectsFromArray:v23];
            databaseManager = self->_databaseManager;
            statusType = [channelCopy statusType];
            v26 = [(SKADatabaseManaging *)databaseManager existingRemovedUserWithHandle:v20 statusTypeIdentifier:statusType withDatabaseContext:contextCopy];

            if (!v26)
            {
              goto LABEL_17;
            }

            v27 = +[SKAInvitationManager logger];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v32;
              v42 = v20;
              _os_log_impl(&dword_220099000, v27, OS_LOG_TYPE_DEFAULT, "Removing handle %@ from removed users because of invite", buf, 0xCu);
            }

            v28 = self->_databaseManager;
            statusType2 = [channelCopy statusType];
            [(SKADatabaseManaging *)v28 deleteRemovedUserWithHandle:v20 statusTypeIdentifier:statusType2 databaseContext:contextCopy];
          }

          else
          {
            statusType2 = +[SKAInvitationManager logger];
            if (os_log_type_enabled(statusType2, OS_LOG_TYPE_ERROR))
            {
              *buf = v32;
              v42 = v20;
              _os_log_error_impl(&dword_220099000, statusType2, OS_LOG_TYPE_ERROR, "Error fetching or update invited user for handle: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v23 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = v32;
            v42 = v20;
            _os_log_error_impl(&dword_220099000, v23, OS_LOG_TYPE_ERROR, "Invited handle has a nil handle string: %@", buf, 0xCu);
          }
        }

LABEL_17:
      }

      v17 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v17);
  }

  v30 = [v33 copy];

  return v30;
}

- (id)_addInvitedHandles:(id)handles senderHandle:(id)handle toDatabaseForPresenceChannel:(id)channel databaseContext:(id)context
{
  v41 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  handleCopy = handle;
  channelCopy = channel;
  contextCopy = context;
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = handlesCopy;
  v13 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v35;
    *&v14 = 138412290;
    v30 = v14;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        handleString = [v18 handleString];
        v20 = [handleString length];

        if (v20)
        {
          v21 = [(SKAInvitationManager *)self _updateOrCreateInvitedUserWithHandle:v18 senderHandle:handleCopy onChannel:channelCopy withInvitationPayload:0 databaseContext:contextCopy];
          if ([v21 count])
          {
            [v31 addObjectsFromArray:v21];
            databaseManager = self->_databaseManager;
            presenceIdentifier = [channelCopy presenceIdentifier];
            v24 = [(SKADatabaseManaging *)databaseManager existingRemovedUserWithHandle:v18 presenceIdentifier:presenceIdentifier withDatabaseContext:contextCopy];

            if (!v24)
            {
              goto LABEL_17;
            }

            v25 = +[SKAInvitationManager logger];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v30;
              v39 = v18;
              _os_log_impl(&dword_220099000, v25, OS_LOG_TYPE_DEFAULT, "Removing handle %@ from removed users because of invite", buf, 0xCu);
            }

            v26 = self->_databaseManager;
            presenceIdentifier2 = [channelCopy presenceIdentifier];
            [(SKADatabaseManaging *)v26 deleteRemovedUserWithHandle:v18 presenceIdentifier:presenceIdentifier2 databaseContext:contextCopy];
          }

          else
          {
            presenceIdentifier2 = +[SKAInvitationManager logger];
            if (os_log_type_enabled(presenceIdentifier2, OS_LOG_TYPE_ERROR))
            {
              *buf = v30;
              v39 = v18;
              _os_log_error_impl(&dword_220099000, presenceIdentifier2, OS_LOG_TYPE_ERROR, "Error fetching or update invited user for handle: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v21 = +[SKAInvitationManager logger];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = v30;
            v39 = v18;
            _os_log_error_impl(&dword_220099000, v21, OS_LOG_TYPE_ERROR, "Invited handle has a nil handle string: %@", buf, 0xCu);
          }
        }

LABEL_17:
      }

      v15 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v15);
  }

  v28 = [v31 copy];

  return v28;
}

- (id)_updateOrCreateInvitedUserWithHandle:(id)handle senderHandle:(id)senderHandle onChannel:(id)channel withInvitationPayload:(id)payload databaseContext:(id)context
{
  v63 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  senderHandleCopy = senderHandle;
  channelCopy = channel;
  payloadCopy = payload;
  contextCopy = context;
  v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = channelCopy;
  v17 = [(SKADatabaseManaging *)self->_databaseManager existingInvitedUsersForInvitedHandle:handleCopy onChannel:channelCopy databaseContext:contextCopy];
  v18 = 0x27843D000uLL;
  if (![v17 count])
  {
    goto LABEL_30;
  }

  v19 = +[SKAInvitationManager logger];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v60 = [v17 count];
    v61 = 2112;
    v62 = handleCopy;
    _os_log_impl(&dword_220099000, v19, OS_LOG_TYPE_DEFAULT, "Found %ld existing invited user for invitedHandle %@ (ignoring sender handle).", buf, 0x16u);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v20 = v17;
  v51 = [v20 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (!v51)
  {

LABEL_30:
    logger = [*(v18 + 1024) logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v60 = handleCopy;
      v61 = 2112;
      v62 = senderHandleCopy;
      _os_log_impl(&dword_220099000, logger, OS_LOG_TYPE_DEFAULT, "Could not find an existing invited user matching handle: %@ and senderHandle %@, attempting to create a new one.", buf, 0x16u);
    }

    v39 = [(SKADatabaseManaging *)self->_databaseManager createInvitedUserWithHandle:handleCopy senderHandle:senderHandleCopy invitationPayload:payloadCopy channel:v49 databaseContext:contextCopy];
    if (v39)
    {
      [v46 addObject:v39];
    }

    else
    {
      logger2 = [*(v18 + 1024) logger];
      if (os_log_type_enabled(logger2, OS_LOG_TYPE_ERROR))
      {
        [SKAInvitationManager _updateOrCreateInvitedUserWithHandle:senderHandle:onChannel:withInvitationPayload:databaseContext:];
      }
    }

    goto LABEL_38;
  }

  v43 = v17;
  v44 = handleCopy;
  v47 = 0;
  v50 = *v55;
  selfCopy = self;
  obj = v20;
  do
  {
    for (i = 0; i != v51; ++i)
    {
      if (*v55 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v54 + 1) + 8 * i);
      senderSKHandle = [v22 senderSKHandle];
      v24 = [senderSKHandle isNormalizedEqualToHandle:senderHandleCopy];
      v25 = v18;
      logger3 = [*(v18 + 1024) logger];
      v27 = os_log_type_enabled(logger3, OS_LOG_TYPE_DEFAULT);
      if (v24)
      {
        if (v27)
        {
          handleString = [senderHandleCopy handleString];
          *buf = 138412290;
          v60 = handleString;
          _os_log_impl(&dword_220099000, logger3, OS_LOG_TYPE_DEFAULT, "Existing invited user was invited from the same handle: %@. Updating payload, and not creating a new InvitedUser record.", buf, 0xCu);
        }

        v47 = 1;
      }

      else if (v27)
      {
        handleString2 = [senderSKHandle handleString];
        [senderHandleCopy handleString];
        v30 = contextCopy;
        v31 = payloadCopy;
        v33 = v32 = senderHandleCopy;
        *buf = 138412546;
        v60 = handleString2;
        v61 = 2112;
        v62 = v33;
        _os_log_impl(&dword_220099000, logger3, OS_LOG_TYPE_DEFAULT, "Existing invited user was invited from %@, but we are attempting to invite from %@. Will update this users payload, but may still need to create a new InvitedUser record", buf, 0x16u);

        senderHandleCopy = v32;
        payloadCopy = v31;
        contextCopy = v30;
        self = selfCopy;
      }

      invitationPayload = [v22 invitationPayload];
      logger4 = [*(v25 + 1024) logger];
      v36 = os_log_type_enabled(logger4, OS_LOG_TYPE_DEFAULT);
      if (invitationPayload == payloadCopy)
      {
        if (v36)
        {
          *buf = 0;
          _os_log_impl(&dword_220099000, logger4, OS_LOG_TYPE_DEFAULT, "Invitation payload is already up to date", buf, 2u);
        }
      }

      else
      {
        if (v36)
        {
          *buf = 138412290;
          v60 = v22;
          _os_log_impl(&dword_220099000, logger4, OS_LOG_TYPE_DEFAULT, "Updating invitation payload on invitedUser: %@", buf, 0xCu);
        }

        logger4 = [(SKADatabaseManaging *)self->_databaseManager updateInvitationPayload:payloadCopy onExistingInvitedUser:v22 channel:v49 databaseContext:contextCopy];
        if (logger4)
        {
          [v46 addObject:logger4];
        }

        else
        {
          logger5 = [*(v25 + 1024) logger];
          if (os_log_type_enabled(logger5, OS_LOG_TYPE_ERROR))
          {
            [SKAInvitationManager _updateOrCreateInvitedUserWithHandle:v53 senderHandle:logger5 onChannel:? withInvitationPayload:? databaseContext:?];
          }
        }
      }

      v18 = v25;
    }

    v51 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  }

  while (v51);

  v17 = v43;
  handleCopy = v44;
  if ((v47 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_38:
  v41 = [v46 copy];

  return v41;
}

- (void)_findOrCreatePersonalChannelForStatusTypeIdentifier:(id)identifier databaseContext:(id)context completion:(id)completion
{
  identifierCopy = identifier;
  contextCopy = context;
  completionCopy = completion;
  v11 = [(SKADatabaseManaging *)self->_databaseManager existingPersonalChannelForStatusTypeIdentifier:identifierCopy databaseContext:contextCopy];
  if (v11)
  {
    completionCopy[2](completionCopy, v11, 0);
  }

  else
  {
    v12 = +[SKAInvitationManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Could not find an existing personal status channel, attempting to create a new one.", buf, 2u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __103__SKAInvitationManager__findOrCreatePersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke;
    v13[3] = &unk_27843DE78;
    v14 = completionCopy;
    [(SKAInvitationManager *)self _createPersonalChannelForStatusTypeIdentifier:identifierCopy databaseContext:contextCopy completion:v13];
  }
}

- (void)_createPersonalChannelForStatusTypeIdentifier:(id)identifier databaseContext:(id)context completion:(id)completion
{
  identifierCopy = identifier;
  contextCopy = context;
  completionCopy = completion;
  v11 = +[SKAPowerLogger shared];
  [v11 logEvent:1 ofType:0 channelType:0 identifier:identifierCopy];

  objc_initWeak(&location, self);
  channelManager = self->_channelManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke;
  v16[3] = &unk_27843DEF0;
  objc_copyWeak(&v20, &location);
  v16[4] = self;
  v13 = identifierCopy;
  v17 = v13;
  v14 = completionCopy;
  v19 = v14;
  v15 = contextCopy;
  v18 = v15;
  [(SKAChannelManaging *)channelManager createChannelWithCompletion:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v11 = WeakRetained;
  if (v9)
  {
    if ([v9 shouldReauthForRetry])
    {
      v12 = +[SKAInvitationManager logger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_cold_1();
      }

      v13 = [a1[4] accountProvider];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_125;
      v17[3] = &unk_27843DEC8;
      v18 = a1[5];
      v19 = v11;
      objc_copyWeak(&v22, a1 + 8);
      v21 = a1[7];
      v20 = a1[6];
      [v13 refreshCredentialForPrimaryAccountWithCompletion:v17];

      objc_destroyWeak(&v22);
    }

    else
    {
      (*(a1[7] + 2))();
    }
  }

  else
  {
    v14 = [WeakRetained databaseManager];
    v15 = [v14 createPersonalChannelForStatusTypeIdentifier:a1[5] channelIdentifier:v7 channelToken:v8 databaseContext:a1[6]];

    v16 = +[SKAPowerLogger shared];
    [v16 logEvent:1 ofType:1 onDatabaseChannel:v15];

    (*(a1[7] + 2))();
  }
}

void __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_125(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[SKAInvitationManager logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_125_cold_1();
    }

    (*(a1[7] + 2))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Account refresh succeeded, reattempting channel creation", buf, 2u);
    }

    v6 = +[SKAPowerLogger shared];
    [v6 logEvent:1 ofType:0 channelType:0 identifier:a1[4]];

    v7 = [a1[5] channelManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_126;
    v8[3] = &unk_27843DEA0;
    objc_copyWeak(&v12, a1 + 8);
    v11 = a1[7];
    v9 = a1[4];
    v10 = a1[6];
    [v7 createChannelWithCompletion:v8];

    objc_destroyWeak(&v12);
  }
}

void __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_126(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (v8)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = [WeakRetained databaseManager];
    v12 = [v11 createPersonalChannelForStatusTypeIdentifier:*(a1 + 32) channelIdentifier:v14 channelToken:v7 databaseContext:*(a1 + 40)];

    v13 = +[SKAPowerLogger shared];
    [v13 logEvent:1 ofType:1 onDatabaseChannel:v12];

    (*(*(a1 + 48) + 16))();
  }
}

+ (id)_unableToFindExistingInvitationForHandlesError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = errorCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        handleString = [*(*(&v15 + 1) + 8 * i) handleString];
        if (handleString)
        {
          [v4 addObject:handleString];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:{@", "}];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not uninvite handle(s) %@ because we could not find an existing invitation for those handle(s)", v11];
  v13 = [SKAError errorWithCode:503 customDescription:v12];

  return v13;
}

+ (id)logger
{
  if (logger_onceToken_4 != -1)
  {
    +[SKAInvitationManager logger];
  }

  v3 = logger__logger_4;

  return v3;
}

uint64_t __30__SKAInvitationManager_logger__block_invoke()
{
  logger__logger_4 = os_log_create("com.apple.StatusKit", "SKAInvitationManager");

  return MEMORY[0x2821F96F8]();
}

- (SKAInvitationManagingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendInvitationForPersonalChannelWithStatusTypeIdentifier:toHandles:fromSenderHandle:withInvitationPayload:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendInvitationForPersonalChannelWithStatusTypeIdentifier:toHandles:fromSenderHandle:withInvitationPayload:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "Invitation was not sent for handles %@ due to key roll error: %@");
}

void __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __141__SKAInvitationManager_sendInvitationForPersonalChannelWithStatusTypeIdentifier_toHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendInvitationForPresenceChannelWithPresenceIdentifier:toHandles:fromSenderHandle:options:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendInvitationForPresenceChannelWithPresenceIdentifier:(void *)a1 toHandles:fromSenderHandle:options:completion:.cold.2(void *a1)
{
  v1 = [a1 serviceIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_220099000, v2, v3, "Presence has been disabled by the server for identifier %@.", v4, v5, v6, v7);
}

void __125__SKAInvitationManager_sendInvitationForPresenceChannelWithPresenceIdentifier_toHandles_fromSenderHandle_options_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __105__SKAInvitationManager_sendSelfInvitationForPresenceChannelWithPresenceIdentifier_isPersonal_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)revokeAllInvitationsFromPersonalChannelWithStatusTypeIdentifier:completion:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)revokeInvitationFromPersonalChannelWithStatusTypeIdentifier:forHandles:completion:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)rollEncryptionKeyForPersonalChannelWithStatusTypeIdentifier:error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)outgoingMessageWithIdentifier:fromHandle:toHandle:didSendWithSuccess:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)outgoingMessageWithIdentifier:fromHandle:toHandle:didSendWithSuccess:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)outgoingMessageWithIdentifier:fromHandle:toHandle:didSendWithSuccess:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)rollPersonalChannelWithStatusTypeIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __79__SKAInvitationManager_rollPersonalChannelWithStatusTypeIdentifier_completion___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)rollPresenceChannelWithPresenceIdentifier:isPersonal:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __88__SKAInvitationManager_rollPresenceChannelWithPresenceIdentifier_isPersonal_completion___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_rollEncryptionKeyForChannel:databaseContext:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_sendInvitationMessageForChannel:toInvitedUsers:subscriptionKeys:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_sendInvitationMessageForChannel:toInvitedUsers:subscriptionKeys:error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_sendInvitationMessageForChannel:toInvitedUsers:subscriptionKeys:error:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_validateInvitedHandle:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 unprefixedURI];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_220099000, v2, v3, "Unprefixed uri for invited handle is nil: %@", v4, v5, v6, v7);
}

- (void)_validateInvitedHandle:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.7()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.9()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.10()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.11()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.12()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.13()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.14()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleIncomingInvitationMessage:fromHandle:fromID:fromMergeID:toHandle:messageGuid:.cold.15()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __107__SKAInvitationManager_handleIncomingInvitationMessage_fromHandle_fromID_fromMergeID_toHandle_messageGuid___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_220099000, v0, OS_LOG_TYPE_FAULT, "Invitation was rejected for sender insecurity, dropping: %@", v1, 0xCu);
}

void __107__SKAInvitationManager_handleIncomingInvitationMessage_fromHandle_fromID_fromMergeID_toHandle_messageGuid___block_invoke_cold_2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v3 = v0;
  _os_log_fault_impl(&dword_220099000, v1, OS_LOG_TYPE_FAULT, "Allowing invitation for allowlisted client %@: %@", v2, 0x16u);
}

void __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __143__SKAInvitationManager_shouldAcceptInvitationMessageForPresenceIdentifier_fromHandle_fromMergeID_inServiceFirewall_databaseContext_completion___block_invoke_111_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)acceptInvitationMessage:fromHandle:toHandle:messageGuid:existingChannel:databaseContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)acceptInvitationMessage:fromHandle:toHandle:messageGuid:existingChannel:databaseContext:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __112__SKAInvitationManager_acceptInvitationMessage_fromHandle_toHandle_messageGuid_existingChannel_databaseContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_sendReverseInvitationIfNeededForPresenceIdentifier:incomingChannel:senderHandle:invitedHandle:dateInvitationCreated:databaseContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_sendReverseInvitationIfNeededForPresenceIdentifier:incomingChannel:senderHandle:invitedHandle:dateInvitationCreated:databaseContext:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)isHandleInviteable:fromHandle:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_isHandleInviteable:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_ratchetEncryptionKeyForwardOrKeyRollForPersonalChannel:databaseContext:invitationWasSentViaKeyRoll:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_ratchetEncryptionKeyForwardOrKeyRollForPersonalChannel:databaseContext:invitationWasSentViaKeyRoll:error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_updateOrCreateInvitedUserWithHandle:(os_log_t)log senderHandle:onChannel:withInvitationPayload:databaseContext:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_220099000, log, OS_LOG_TYPE_ERROR, "Received a nil updated user from call to updateInvitationPayload", buf, 2u);
}

- (void)_updateOrCreateInvitedUserWithHandle:senderHandle:onChannel:withInvitationPayload:databaseContext:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __97__SKAInvitationManager__createPersonalChannelForStatusTypeIdentifier_databaseContext_completion___block_invoke_125_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end