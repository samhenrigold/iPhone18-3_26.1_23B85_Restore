@interface IMPinnedConversationsController
+ (id)_forceSyncDispatchQueue;
+ (id)_ubiquitousDispatchQueue;
+ (id)requiredKeys;
+ (id)sharedInstance;
- (BOOL)_canPostPinnedConversationsDidChangeNotification;
- (BOOL)_updateLocalStoreWithPinConfiguration:(id)configuration;
- (BOOL)pinConfigurationHasCompatibleVersion:(id)version;
- (BOOL)pinConfigurationHasCurrentVersion:(id)version;
- (BOOL)pinConfigurationIsValid:(id)valid;
- (BOOL)pinnedConversationsContainsChat:(id)chat;
- (BOOL)shouldSync;
- (BOOL)shouldUpdateExistingPinConfig:(id)config withProposedPinConfig:(id)pinConfig;
- (BOOL)shouldWriteProposedPinConfiguration:(id)configuration toUbiquitousStoreWithExistingPinConfiguration:(id)pinConfiguration;
- (IMPinnedConversationsController)init;
- (NSUbiquitousKeyValueStore)dataStore;
- (id)_dictionaryWithPinnedConversationIdentifiers:(id)identifiers chatMetadata:(id)metadata updateReason:(id)reason timestamp:(id)timestamp;
- (id)_locallyStoredPinConfiguration;
- (id)_metadataDictionaryForChat:(id)chat;
- (id)_ubiquitousPinConfigurationInStore:(id)store;
- (id)dictionaryWithPinnedConversationIdentifiers:(id)identifiers chatMetadata:(id)metadata updateReason:(id)reason;
- (id)matchingIdentifierForChat:(id)chat;
- (id)matchingIdentifierForChat:(id)chat inIdentifierSet:(id)set withMetadata:(id)metadata;
- (id)mostUpToDatePinConfigurationByComparingPinConfiguration:(id)configuration toOtherPinConfiguration:(id)pinConfiguration;
- (id)pinnedConversationIdentifiersFromPinConfiguration:(id)configuration;
- (id)validatedPinConfigurationWithCurrentVersionForPinConfiguration:(id)configuration;
- (unint64_t)pinIndexForChat:(id)chat inIdentifierSet:(id)set withMetadata:(id)metadata;
- (void)_fetchUbiquitousPinConfiguration:(id)configuration;
- (void)_handleChatGroupIDDidChangeNotification:(id)notification;
- (void)_postDeferredPinnedConversationsDidChangeNotificationIfNecessary;
- (void)_postPinnedConversationsDidChangeNotification;
- (void)_setPinnedConversationIdentifiers:(id)identifiers withChatMetadata:(id)metadata updateReason:(id)reason shouldUpdateStores:(BOOL)stores;
- (void)_updateUbiquitousStoreWithPinConfiguration:(id)configuration completion:(id)completion;
- (void)conversationWasDeletedWithIdentifier:(id)identifier;
- (void)conversationsWereDeletedWithIdentifiers:(id)identifiers;
- (void)fetchMostUpToDatePinConfiguration:(id)configuration;
- (void)fetchPinnedConversationIdentifiersFromLocalStore;
- (void)forceSynchronizeUbiquitousStore;
- (void)handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:(id)notification;
- (void)imCloudKitHooksSetEnabledDidReturn:(id)return;
- (void)performPinConfigValidationAndMigrationIfNecessary;
- (void)setPinnedChats:(id)chats withUpdateReason:(id)reason;
- (void)synchronizeLocalDataStore;
- (void)updateStoresWithPinConfiguration:(id)configuration;
@end

@implementation IMPinnedConversationsController

- (IMPinnedConversationsController)init
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = IMPinnedConversationsController;
  v2 = [(IMPinnedConversationsController *)&v11 init];
  if (v2)
  {
    if (+[IMPinnedConversationsController processSupportsPinnedConversations])
    {
      if (IMOSLoggingEnabled())
      {
        v3 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v4 = +[IMPinnedConversationsController currentPinConfigurationVersion];
          *buf = 134217984;
          v13 = v4;
          _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "currentPinConfigurationVersion == %li", buf, 0xCu);
        }
      }

      v2->_numberOfPendingForceSyncs = 0;
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v2 selector:sel_imCloudKitHooksSetEnabledDidReturn_ name:@"com.apple.IMCore.IMCloudKitHooks.SetEnabledReturned" object:0];
      [defaultCenter addObserver:v2 selector:sel__handleChatGroupIDDidChangeNotification_ name:@"__kIMChatRegistryGroupIDChangedNotification" object:0];
      [defaultCenter addObserver:v2 selector:sel__connectedToDaemon_ name:@"__kIMDaemonDidConnectNotification" object:0];
      [(IMPinnedConversationsController *)v2 fetchPinnedConversationIdentifiersFromLocalStore];
      shouldSync = [(IMPinnedConversationsController *)v2 shouldSync];
      v7 = IMOSLoggingEnabled();
      if (shouldSync)
      {
        if (v7)
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "sync to local data store", buf, 2u);
          }
        }

        [(IMPinnedConversationsController *)v2 synchronizeLocalDataStore];
      }

      else if (v7)
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "cannot sync to local data store", buf, 2u);
        }
      }

      [(IMPinnedConversationsController *)v2 performPinConfigValidationAndMigrationIfNecessary];
      v2->_hasCompletedInitialization = 1;
    }

    else
    {
      defaultCenter = IMLogHandleForCategory();
      if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DEC98(defaultCenter);
      }
    }
  }

  return v2;
}

- (id)_locallyStoredPinConfiguration
{
  mEMORY[0x1E69A8018] = [MEMORY[0x1E69A8018] sharedInstance];
  v3 = [mEMORY[0x1E69A8018] getValueFromDomain:@"com.apple.messages.pinning" forKey:@"pD"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_postPinnedConversationsDidChangeNotification
{
  if ([(IMPinnedConversationsController *)self _canPostPinnedConversationsDidChangeNotification])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v3 = [(NSOrderedSet *)self->_pinnedConversationIdentifierSet copy];
    [defaultCenter postNotificationName:@"__kIMPinnedConversationsDidChangeNotification" object:v3];
  }

  else
  {
    self->_hasDefferedPinnedConversationsDidChangeNotification = 1;
  }
}

- (BOOL)_canPostPinnedConversationsDidChangeNotification
{
  if (!self->_hasCompletedInitialization)
  {
    v4 = IMOSLoggingEnabled();
    if (!v4)
    {
      return v4;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      v6 = "Deffering pinned conversations did change notification until after initialization is completed.";
      v7 = &v10;
LABEL_10:
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
    }

LABEL_11:

    LOBYTE(v4) = 0;
    return v4;
  }

  v2 = +[IMDaemonController sharedController];
  isConnected = [v2 isConnected];

  if ((isConnected & 1) == 0)
  {
    v4 = IMOSLoggingEnabled();
    if (!v4)
    {
      return v4;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 0;
      v6 = "Deffering pinned conversations did change notification until after connected to daemon.";
      v7 = &v9;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  LOBYTE(v4) = 1;
  return v4;
}

- (BOOL)shouldSync
{
  v2 = +[IMCloudKitHooks sharedInstance];
  if ([v2 isEnabled])
  {
    v3 = +[IMCloudKitHooks sharedInstance];
    mocAccountsMatch = [v3 mocAccountsMatch];
  }

  else
  {
    mocAccountsMatch = 0;
  }

  return mocAccountsMatch;
}

- (void)performPinConfigValidationAndMigrationIfNecessary
{
  v15 = *MEMORY[0x1E69E9840];
  pinConfigurationMigrationKey = [objc_opt_class() pinConfigurationMigrationKey];
  mEMORY[0x1E69A8018] = [MEMORY[0x1E69A8018] sharedInstance];
  v5 = [mEMORY[0x1E69A8018] getBoolFromDomain:@"com.apple.messages.pinning" forKey:pinConfigurationMigrationKey];

  if ((v5 & 1) == 0)
  {
    _locallyStoredPinConfiguration = [(IMPinnedConversationsController *)self _locallyStoredPinConfiguration];
    if (_locallyStoredPinConfiguration)
    {
      v7 = [(IMPinnedConversationsController *)self validatedPinConfigurationWithCurrentVersionForPinConfiguration:_locallyStoredPinConfiguration];
      v8 = [(IMPinnedConversationsController *)self pinnedConversationIdentifiersFromPinConfiguration:v7];
      v9 = [(IMPinnedConversationsController *)self chatMetadataFromPinConfiguration:v7];
      if (!v7)
      {
        v10 = IMLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1A84DECDC(_locallyStoredPinConfiguration, v10);
        }
      }

      [(IMPinnedConversationsController *)self _setPinnedConversationIdentifiers:v8 withChatMetadata:v9 updateReason:@"migration" shouldUpdateStores:1];
    }

    else if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[IMPinnedConversationsController performPinConfigValidationAndMigrationIfNecessary]";
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "%s Not performing migration because the local pin config is nil", &v13, 0xCu);
      }
    }

    mEMORY[0x1E69A8018]2 = [MEMORY[0x1E69A8018] sharedInstance];
    [mEMORY[0x1E69A8018]2 setBool:1 forDomain:@"com.apple.messages.pinning" forKey:pinConfigurationMigrationKey];
  }
}

- (void)_postDeferredPinnedConversationsDidChangeNotificationIfNecessary
{
  if (self->_hasDefferedPinnedConversationsDidChangeNotification && [(IMPinnedConversationsController *)self _canPostPinnedConversationsDidChangeNotification])
  {
    self->_hasDefferedPinnedConversationsDidChangeNotification = 0;
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Performing deffered pinned conversations did change notification.", v4, 2u);
      }
    }

    [(IMPinnedConversationsController *)self _postPinnedConversationsDidChangeNotification];
  }
}

+ (id)sharedInstance
{
  if (qword_1ED767728 != -1)
  {
    sub_1A824658C();
  }

  [qword_1ED767840 _postDeferredPinnedConversationsDidChangeNotificationIfNecessary];
  v2 = qword_1ED767840;

  return v2;
}

- (void)fetchPinnedConversationIdentifiersFromLocalStore
{
  _locallyStoredPinConfiguration = [(IMPinnedConversationsController *)self _locallyStoredPinConfiguration];
  v3 = [(IMPinnedConversationsController *)self pinnedConversationIdentifiersFromPinConfiguration:_locallyStoredPinConfiguration];
  v4 = [(IMPinnedConversationsController *)self chatMetadataFromPinConfiguration:_locallyStoredPinConfiguration];
  [(IMPinnedConversationsController *)self _setPinnedConversationIdentifiers:v3 withChatMetadata:v4 updateReason:@"fetchFromLocalStore" shouldUpdateStores:0];
}

+ (id)requiredKeys
{
  v6[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"pV";
  v6[1] = @"pT";
  v6[2] = @"pP";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)_ubiquitousDispatchQueue
{
  if (qword_1EB2E9118 != -1)
  {
    sub_1A84DEC84();
  }

  v3 = qword_1EB2E9110;

  return v3;
}

- (NSUbiquitousKeyValueStore)dataStore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dataStore = selfCopy->_dataStore;
  if (!dataStore)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB8]) _initWithStoreIdentifier:@"com.apple.messages.pinning" usingEndToEndEncryption:1];
    v5 = selfCopy->_dataStore;
    selfCopy->_dataStore = v4;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:selfCopy selector:sel_handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification_ name:*MEMORY[0x1E696A9E8] object:selfCopy->_dataStore];

    dataStore = selfCopy->_dataStore;
  }

  v7 = dataStore;
  objc_sync_exit(selfCopy);

  return v7;
}

- (id)_dictionaryWithPinnedConversationIdentifiers:(id)identifiers chatMetadata:(id)metadata updateReason:(id)reason timestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v10 = MEMORY[0x1E695DF90];
  reasonCopy = reason;
  metadataCopy = metadata;
  identifiersCopy = identifiers;
  v14 = objc_alloc_init(v10);
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{+[IMPinnedConversationsController currentPinConfigurationRevision](IMPinnedConversationsController, "currentPinConfigurationRevision")}];
  [v14 setObject:v15 forKeyedSubscript:@"pR"];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{+[IMPinnedConversationsController currentPinConfigurationVersion](IMPinnedConversationsController, "currentPinConfigurationVersion")}];
  [v14 setObject:v16 forKeyedSubscript:@"pV"];

  if (timestampCopy)
  {
    [v14 setObject:timestampCopy forKeyedSubscript:@"pT"];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    [v14 setObject:date forKeyedSubscript:@"pT"];
  }

  if (identifiersCopy)
  {
    v18 = identifiersCopy;
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  [v14 setObject:v18 forKeyedSubscript:@"pP"];

  if (metadataCopy)
  {
    v19 = metadataCopy;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F8];
  }

  [v14 setObject:v19 forKeyedSubscript:@"pZ"];

  [v14 setObject:reasonCopy forKeyedSubscript:@"pU"];
  v20 = [v14 copy];

  return v20;
}

- (id)dictionaryWithPinnedConversationIdentifiers:(id)identifiers chatMetadata:(id)metadata updateReason:(id)reason
{
  v8 = MEMORY[0x1E695DF00];
  reasonCopy = reason;
  metadataCopy = metadata;
  identifiersCopy = identifiers;
  date = [v8 date];
  v13 = [(IMPinnedConversationsController *)self _dictionaryWithPinnedConversationIdentifiers:identifiersCopy chatMetadata:metadataCopy updateReason:reasonCopy timestamp:date];

  return v13;
}

- (id)_metadataDictionaryForChat:(id)chat
{
  v13 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  originalGroupID = [chatCopy originalGroupID];
  if (originalGroupID && [chatCopy isGroupChat])
  {
    [v4 setObject:originalGroupID forKeyedSubscript:@"o"];
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = chatCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "originalGroupID was nil for chat. Not including in chat metadata dictionary. chat: %@", &v11, 0xCu);
    }
  }

  identityHash = [chatCopy identityHash];
  if (identityHash && [chatCopy isGroupChat])
  {
    [v4 setObject:identityHash forKeyedSubscript:@"h"];
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = chatCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "identityHash was nil for chat. Not including in chat metadata dictionary. chat: %@", &v11, 0xCu);
    }
  }

  if ([v4 count])
  {
    v9 = [v4 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)mostUpToDatePinConfigurationByComparingPinConfiguration:(id)configuration toOtherPinConfiguration:(id)pinConfiguration
{
  configurationCopy = configuration;
  pinConfigurationCopy = pinConfiguration;
  v7 = [configurationCopy objectForKey:@"pT"];
  v8 = [pinConfigurationCopy objectForKey:@"pT"];
  v9 = v8;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 == 0;
  }

  v11 = configurationCopy;
  if (v10 && ([v8 timeIntervalSinceReferenceDate], v13 = v12, objc_msgSend(v7, "timeIntervalSinceReferenceDate"), v11 = configurationCopy, v13 >= v14) && (!v7 ? (v15 = v9 == 0) : (v15 = 1), (v11 = pinConfigurationCopy, v15) && (objc_msgSend(v7, "timeIntervalSinceReferenceDate"), v17 = v16, objc_msgSend(v9, "timeIntervalSinceReferenceDate"), v11 = pinConfigurationCopy, v17 >= v18)))
  {
    v19 = 0;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

- (void)_handleChatGroupIDDidChangeNotification:(id)notification
{
  v28 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKey:@"__kIMChatRegistryPreviousGroupIDKey"];

  userInfo2 = [notificationCopy userInfo];
  v9 = [userInfo2 objectForKey:@"__kIMChatRegistryUpdatedGroupIDKey"];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v22 = 138412802;
      v23 = v7;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = object;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Received group ID change notification for chat. previousGroupID: %@, newGroupID: %@, chat: %@", &v22, 0x20u);
    }
  }

  if (object)
  {
    pinnedConversationIdentifierSet = [(IMPinnedConversationsController *)self pinnedConversationIdentifierSet];
    v12 = [pinnedConversationIdentifierSet containsObject:v7];

    if (v12)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v22 = 138412802;
          v23 = v7;
          v24 = 2112;
          v25 = v9;
          v26 = 2112;
          v27 = object;
          _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Chat with previousGroupID (%@) was pinned, but that group ID changed. Replacing previous group ID with new group ID (%@) in the pinning stores. chat: %@", &v22, 0x20u);
        }
      }

      pinnedConversationIdentifierSet2 = [(IMPinnedConversationsController *)self pinnedConversationIdentifierSet];
      v15 = [pinnedConversationIdentifierSet2 mutableCopy];

      v16 = [v15 indexOfObject:v7];
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            LOWORD(v22) = 0;
            _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "pinnedConversationIdentifierSet contained the previous groupID, but the index was NSNotFound!", &v22, 2u);
          }

LABEL_23:
        }
      }

      else
      {
        if (v9)
        {
          [v15 replaceObjectAtIndex:v16 withObject:v9];
          chatMetadata = [(IMPinnedConversationsController *)self chatMetadata];
          v19 = [chatMetadata mutableCopy];

          [v19 removeObjectForKey:v7];
          v20 = [(IMPinnedConversationsController *)self _metadataDictionaryForChat:object];
          if (v20)
          {
            [v19 setObject:v20 forKey:v9];
          }

          array = [v15 array];
          [(IMPinnedConversationsController *)self _setPinnedConversationIdentifiers:array withChatMetadata:v19 updateReason:@"groupIDChange" shouldUpdateStores:1];

          goto LABEL_24;
        }

        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v22 = 138412546;
            v23 = v7;
            v24 = 2112;
            v25 = object;
            _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "IMPinnedConversationsController received a groupID change notification, but the new groupID was nil! Not making changes to the pin config. previousGroupID: %@, chat: %@", &v22, 0x16u);
          }

          goto LABEL_23;
        }
      }

LABEL_24:
    }
  }
}

- (void)setPinnedChats:(id)chats withUpdateReason:(id)reason
{
  v26 = *MEMORY[0x1E69E9840];
  chatsCopy = chats;
  reasonCopy = reason;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = chatsCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        pinningIdentifier = [v13 pinningIdentifier];
        if (pinningIdentifier)
        {
          [v7 addObject:pinningIdentifier];
        }

        else if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v24 = v13;
            _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "pinningIdentifier was nil for chat. Not including in new pinnedConversationIdentifiers. chat: %@", buf, 0xCu);
          }
        }

        v16 = [(IMPinnedConversationsController *)self _metadataDictionaryForChat:v13];
        if (v16)
        {
          v17 = pinningIdentifier != 0;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          [v8 setObject:v16 forKey:pinningIdentifier];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v10);
  }

  [(IMPinnedConversationsController *)self _setPinnedConversationIdentifiers:v7 withChatMetadata:v8 updateReason:reasonCopy shouldUpdateStores:1];
}

- (void)_setPinnedConversationIdentifiers:(id)identifiers withChatMetadata:(id)metadata updateReason:(id)reason shouldUpdateStores:(BOOL)stores
{
  storesCopy = stores;
  v33 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  metadataCopy = metadata;
  reasonCopy = reason;
  if (!identifiersCopy)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_28;
    }

    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v26 = 136315138;
      *&v26[4] = "[IMPinnedConversationsController _setPinnedConversationIdentifiers:withChatMetadata:updateReason:shouldUpdateStores:]";
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "%s called with nil. Ignoring.", v26, 0xCu);
    }

    goto LABEL_6;
  }

  v13 = [identifiersCopy count];
  maximumNumberOfPinnedConversations = [objc_opt_class() maximumNumberOfPinnedConversations];
  v15 = IMOSLoggingEnabled();
  if (v13 <= maximumNumberOfPinnedConversations)
  {
    if (v15)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *&v26[4] = "[IMPinnedConversationsController _setPinnedConversationIdentifiers:withChatMetadata:updateReason:shouldUpdateStores:]";
        v18 = @"NO";
        *v26 = 136316162;
        if (storesCopy)
        {
          v18 = @"YES";
        }

        *&v26[12] = 2112;
        *&v26[14] = reasonCopy;
        v27 = 2112;
        v28 = v18;
        v29 = 2112;
        v30 = identifiersCopy;
        v31 = 2112;
        v32 = metadataCopy;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "%s called with reason: %@, shouldUpdateStores: %@, pinnedConversationIdentifiers: %@, chatMetadata: %@", v26, 0x34u);
      }
    }

    if (storesCopy)
    {
      v19 = [(IMPinnedConversationsController *)self dictionaryWithPinnedConversationIdentifiers:identifiersCopy chatMetadata:metadataCopy updateReason:reasonCopy];
      [(IMPinnedConversationsController *)self updateStoresWithPinConfiguration:v19];
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *v26 = 136315394;
        *&v26[4] = "[IMPinnedConversationsController _setPinnedConversationIdentifiers:withChatMetadata:updateReason:shouldUpdateStores:]";
        *&v26[12] = 2112;
        *&v26[14] = identifiersCopy;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "%s Setting new cached pinned conversation identifiers %@", v26, 0x16u);
      }
    }

    v21 = [MEMORY[0x1E695DFB8] orderedSetWithArray:{identifiersCopy, *v26, *&v26[8]}];
    pinnedConversationIdentifierSet = self->_pinnedConversationIdentifierSet;
    self->_pinnedConversationIdentifierSet = v21;

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *v26 = 136315394;
        *&v26[4] = "[IMPinnedConversationsController _setPinnedConversationIdentifiers:withChatMetadata:updateReason:shouldUpdateStores:]";
        *&v26[12] = 2112;
        *&v26[14] = metadataCopy;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "%s Setting new cached chat metadata %@", v26, 0x16u);
      }
    }

    v24 = [metadataCopy copy];
    chatMetadata = self->_chatMetadata;
    self->_chatMetadata = v24;

    [(IMPinnedConversationsController *)self _postPinnedConversationsDidChangeNotification];
  }

  else if (v15)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v26 = 136315394;
      *&v26[4] = "[IMPinnedConversationsController _setPinnedConversationIdentifiers:withChatMetadata:updateReason:shouldUpdateStores:]";
      *&v26[12] = 2048;
      *&v26[14] = [identifiersCopy count];
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "%s called with %ld items. Ignoring.", v26, 0x16u);
    }

LABEL_6:
  }

LABEL_28:
}

- (void)conversationWasDeletedWithIdentifier:(id)identifier
{
  v8 = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    identifierCopy = identifier;
    v4 = MEMORY[0x1E695DEC8];
    identifierCopy2 = identifier;
    v6 = [v4 arrayWithObjects:&identifierCopy count:1];

    [(IMPinnedConversationsController *)self conversationsWereDeletedWithIdentifiers:v6, identifierCopy, v8];
  }
}

- (void)conversationsWereDeletedWithIdentifiers:(id)identifiers
{
  v44 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  selfCopy = self;
  pinnedConversationIdentifierSet = [(IMPinnedConversationsController *)self pinnedConversationIdentifierSet];
  v6 = [pinnedConversationIdentifierSet count];

  if (v6)
  {
    pinnedConversationIdentifierSet2 = [(IMPinnedConversationsController *)self pinnedConversationIdentifierSet];
    v8 = [pinnedConversationIdentifierSet2 mutableCopy];

    chatMetadata = [(IMPinnedConversationsController *)self chatMetadata];
    v10 = [chatMetadata mutableCopy];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = identifiersCopy;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v12)
    {
      v13 = *v32;
      pinnedConversationIdentifierSet4 = "Warning";
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          if (v15)
          {
            [v8 removeObject:*(*(&v31 + 1) + 8 * i)];
            [v10 removeObjectForKey:v15];
          }

          else if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v36 = "[IMPinnedConversationsController conversationsWereDeletedWithIdentifiers:]";
              _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "%s Tried to delete a nil identifier.", buf, 0xCu);
            }
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v12);
    }

    pinnedConversationIdentifierSet3 = [(IMPinnedConversationsController *)selfCopy pinnedConversationIdentifierSet];
    if (v8 != pinnedConversationIdentifierSet3)
    {
      pinnedConversationIdentifierSet4 = [(IMPinnedConversationsController *)selfCopy pinnedConversationIdentifierSet];
      if (([v8 isEqualToOrderedSet:pinnedConversationIdentifierSet4] & 1) == 0)
      {

LABEL_29:
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            pinnedConversationIdentifierSet5 = [(IMPinnedConversationsController *)selfCopy pinnedConversationIdentifierSet];
            array = [pinnedConversationIdentifierSet5 array];
            *buf = 136315906;
            v36 = "[IMPinnedConversationsController conversationsWereDeletedWithIdentifiers:]";
            v37 = 2112;
            v38 = v11;
            v39 = 2112;
            v40 = v8;
            v41 = 2112;
            v42 = array;
            _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "%s Removing pinned conversations with identifers %@, resulting in pinnedConversationIdentifiers: %@ existing value: %@", buf, 0x2Au);
          }
        }

        array2 = [v8 array];
        v28 = [v10 copy];
        [(IMPinnedConversationsController *)selfCopy _setPinnedConversationIdentifiers:array2 withChatMetadata:v28 updateReason:@"conversationDelete" shouldUpdateStores:1];

LABEL_34:
        goto LABEL_35;
      }
    }

    chatMetadata2 = [(IMPinnedConversationsController *)selfCopy chatMetadata];
    v19 = chatMetadata2;
    if (v10 == chatMetadata2)
    {

      if (v8 != pinnedConversationIdentifierSet3)
      {
      }
    }

    else
    {
      chatMetadata3 = [(IMPinnedConversationsController *)selfCopy chatMetadata];
      v21 = [v10 isEqualToDictionary:chatMetadata3];

      if (v8 != pinnedConversationIdentifierSet3)
      {
      }

      if ((v21 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        pinnedConversationIdentifierSet6 = [(IMPinnedConversationsController *)selfCopy pinnedConversationIdentifierSet];
        *buf = 136315906;
        v36 = "[IMPinnedConversationsController conversationsWereDeletedWithIdentifiers:]";
        v37 = 2112;
        v38 = v11;
        v39 = 2112;
        v40 = v8;
        v41 = 2112;
        v42 = pinnedConversationIdentifierSet6;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Received call to %s with identifiers %@, but it resulted in no changes to the cached pinningIdentifiers. proposed: %@ existing value: %@", buf, 0x2Au);
      }
    }

    goto LABEL_34;
  }

LABEL_35:
}

- (BOOL)pinnedConversationsContainsChat:(id)chat
{
  chatCopy = chat;
  pinnedConversationIdentifierSet = [(IMPinnedConversationsController *)self pinnedConversationIdentifierSet];
  chatMetadata = [(IMPinnedConversationsController *)self chatMetadata];
  v7 = [(IMPinnedConversationsController *)self pinIndexForChat:chatCopy inIdentifierSet:pinnedConversationIdentifierSet withMetadata:chatMetadata];

  return v7 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)matchingIdentifierForChat:(id)chat
{
  chatCopy = chat;
  pinnedConversationIdentifierSet = [(IMPinnedConversationsController *)self pinnedConversationIdentifierSet];
  chatMetadata = [(IMPinnedConversationsController *)self chatMetadata];
  v7 = [(IMPinnedConversationsController *)self matchingIdentifierForChat:chatCopy inIdentifierSet:pinnedConversationIdentifierSet withMetadata:chatMetadata];

  return v7;
}

- (id)matchingIdentifierForChat:(id)chat inIdentifierSet:(id)set withMetadata:(id)metadata
{
  setCopy = set;
  v9 = [(IMPinnedConversationsController *)self pinIndexForChat:chat inIdentifierSet:setCopy withMetadata:metadata];
  if (v9 >= [setCopy count])
  {
    v10 = 0;
  }

  else
  {
    v10 = [setCopy objectAtIndex:v9];
  }

  return v10;
}

- (unint64_t)pinIndexForChat:(id)chat inIdentifierSet:(id)set withMetadata:(id)metadata
{
  v62 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  setCopy = set;
  metadataCopy = metadata;
  v10 = [setCopy count];
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v43 = chatCopy;
  if (chatCopy && v10)
  {
    v42 = metadataCopy;
    pinningIdentifier = [chatCopy pinningIdentifier];
    v12 = [setCopy indexOfObject:pinningIdentifier];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v12;
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          v53 = v11;
          v54 = 2112;
          v55 = chatCopy;
          _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Match found for chat at index %lu using pinning identifier. chat: %@", buf, 0x16u);
        }
      }

      goto LABEL_44;
    }

    [chatCopy mergedPinningIdentifiers];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v13 = v49 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v14)
    {
      v15 = *v49;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v49 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v11 = [setCopy indexOfObject:*(*(&v48 + 1) + 8 * i)];
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {

            if (IMOSLoggingEnabled())
            {
              v32 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 134218242;
                v53 = v11;
                v54 = 2112;
                v55 = v43;
                _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Match found for chat at index %lu using merged pinning identifiers. chat: %@", buf, 0x16u);
              }
            }

            goto LABEL_44;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v48 objects:v61 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    if ([v43 isGroupChat])
    {
      displayName = [v43 displayName];
      if (!displayName || ([v43 displayName], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", &stru_1F1B76F98), v18, displayName, v19))
      {
        v20 = +[IMChatRegistry sharedRegistry];
        participants = [v43 participants];
        originalGroupID = [v20 _sortedParticipantIDHashForParticipants:participants usesPersonCentricID:0];

        v11 = [setCopy indexOfObject:originalGroupID];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (IMOSLoggingEnabled())
          {
            v35 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *buf = 134218242;
              v53 = v11;
              v54 = 2112;
              v55 = v43;
              _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "Match found for chat at index %lu using participantHash to pinning identifier comparison. chat: %@", buf, 0x16u);
            }
          }

LABEL_51:

LABEL_44:
          metadataCopy = v42;
          goto LABEL_45;
        }
      }
    }

    if (![v43 isGroupChat])
    {
      goto LABEL_20;
    }

    originalGroupID = [v43 originalGroupID];
    v11 = [setCopy indexOfObject:originalGroupID];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {

LABEL_20:
      if ([v43 isGroupChat])
      {
        originalGroupID2 = [v43 originalGroupID];
        identityHash = [v43 identityHash];
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        obj = [v42 allKeys];
        v23 = [obj countByEnumeratingWithState:&v44 objects:v60 count:16];
        if (v23)
        {
          v40 = *v45;
          while (2)
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v45 != v40)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v44 + 1) + 8 * j);
              v26 = [v42 objectForKey:v25];
              v27 = [v26 objectForKey:@"o"];
              v28 = v27;
              if (v27)
              {
                if ([v27 isEqualToString:originalGroupID2])
                {
                  v11 = [setCopy indexOfObject:v25];
                  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v30 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                      {
                        *buf = 134218754;
                        v53 = v11;
                        v54 = 2112;
                        v55 = v25;
                        v56 = 2112;
                        v57 = v28;
                        v58 = 2112;
                        v59 = v43;
                        _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Match found for chat at index %lu using originalGroupID. pinnedPinningIdentifier: %@, originalGroupID: %@, chat: %@", buf, 0x2Au);
                      }

LABEL_65:
                    }

                    goto LABEL_67;
                  }
                }
              }

              v29 = [v26 objectForKey:@"h"];
              v30 = v29;
              if (v29)
              {
                if ([v29 isEqualToString:identityHash])
                {
                  v11 = [setCopy indexOfObject:v25];
                  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v36 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                      {
                        *buf = 134218754;
                        v53 = v11;
                        v54 = 2112;
                        v55 = v25;
                        v56 = 2112;
                        v57 = v30;
                        v58 = 2112;
                        v59 = v43;
                        _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_INFO, "Match found for chat at index %lu using identityHash. pinnedPinningIdentifier: %@, identityHash: %@, chat: %@", buf, 0x2Au);
                      }
                    }

                    goto LABEL_65;
                  }
                }
              }
            }

            v23 = [obj countByEnumeratingWithState:&v44 objects:v60 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_67:
      }

      else
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      goto LABEL_44;
    }

    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v53 = v11;
        v54 = 2112;
        v55 = v43;
        _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "Match found for chat at index %lu using originalGroupID to pinning identifier comparison. chat: %@", buf, 0x16u);
      }
    }

    goto LABEL_51;
  }

LABEL_45:

  return v11;
}

- (id)validatedPinConfigurationWithCurrentVersionForPinConfiguration:(id)configuration
{
  v57 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v4 = +[IMPinnedConversationsController currentPinConfigurationVersion];
  v5 = +[IMPinnedConversationsController currentPinConfigurationRevision];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v52 = v4;
      v53 = 2112;
      v54 = configurationCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Determining if pin config needs migration to version %li. %@", buf, 0x16u);
    }
  }

  v44 = [configurationCopy objectForKey:?];
  if (v44)
  {
    v43 = [configurationCopy objectForKey:?];
    integerValue = [v43 integerValue];
    integerValue2 = [v44 integerValue];
    v9 = integerValue2;
    if (integerValue2 > v4)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 134218498;
          v52 = v9;
          v53 = 2048;
          v54 = v4;
          v55 = 2112;
          v56 = configurationCopy;
          _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Pin config has a version (%li) greater than the current version (%li). This pin config is not usable. %@", buf, 0x20u);
        }
      }

      v11 = 0;
      goto LABEL_83;
    }

    v14 = integerValue2 == v4 && integerValue == v5;
    v15 = IMOSLoggingEnabled();
    if (v14)
    {
      if (v15)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v52 = v4;
          v53 = 2048;
          v54 = v5;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Pin config has current version (%li) and revision (%li) already . No migration necessary.", buf, 0x16u);
        }
      }

      v11 = configurationCopy;
      goto LABEL_83;
    }

    if (v15)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v52 = v9;
        v53 = 2048;
        v54 = v4;
        v55 = 2048;
        v56 = v5;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Pin config has a version (%li) less than the current version (%li) or revision (%li). Attempting migration.", buf, 0x20u);
      }
    }

    v42 = [configurationCopy mutableCopy];
    if (v9 < 2)
    {
      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DED54(v18);
      }

      v19 = [MEMORY[0x1E696AD98] numberWithInteger:2];
      [v42 setObject:v19 forKey:@"pV"];
    }

    if (v9 <= 2 && integerValue <= 1)
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v52 = v42;
          _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "The given pin config did not have chat metadata. Attempting to add some. pin config: %@", buf, 0xCu);
        }
      }

      v41 = [(IMPinnedConversationsController *)self pinnedConversationIdentifiersFromPinConfiguration:v42];
      v21 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v41];
      v22 = [(IMPinnedConversationsController *)self chatMetadataFromPinConfiguration:v42];
      v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v24 = +[IMChatRegistry sharedRegistry];
      cachedChats = [v24 cachedChats];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v26 = cachedChats;
      v27 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v27)
      {
        v28 = *v47;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v47 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v46 + 1) + 8 * i);
            v31 = [(IMPinnedConversationsController *)self matchingIdentifierForChat:v30 inIdentifierSet:v21 withMetadata:v22];
            if (v31)
            {
              v32 = [(IMPinnedConversationsController *)self _metadataDictionaryForChat:v30];
              if (v32)
              {
                [v23 setObject:v32 forKey:v31];
              }
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v27);
      }

      if (v23 && [v23 count])
      {
        [v42 setObject:v23 forKey:@"pZ"];
      }

      v33 = [MEMORY[0x1E696AD98] numberWithInteger:2];
      [v42 setObject:v33 forKey:@"pV"];

      v34 = [MEMORY[0x1E696AD98] numberWithInteger:2];
      [v42 setObject:v34 forKey:@"pR"];
    }

    if ([(IMPinnedConversationsController *)self pinConfigurationIsValid:v42])
    {
      if ([(IMPinnedConversationsController *)self pinConfigurationHasCurrentVersion:v42])
      {
        v11 = [v42 copy];
LABEL_82:

LABEL_83:
        goto LABEL_84;
      }

      v38 = IMLogHandleForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DEE00();
      }

      if (IMOSLoggingEnabled())
      {
        v39 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v52 = configurationCopy;
          _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_INFO, "Migrated pin config wrong version. pinConfigToMigrate: %@", buf, 0xCu);
        }
      }

      if (!IMOSLoggingEnabled())
      {
LABEL_81:
        v11 = 0;
        goto LABEL_82;
      }

      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v52 = v42;
        _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "Migrated pin config wrong version. migratedPinConfig: %@", buf, 0xCu);
      }
    }

    else
    {
      v35 = IMLogHandleForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DED98();
      }

      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v52 = configurationCopy;
          _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_INFO, "Invalid migrated pin config. pinConfigToMigrate: %@", buf, 0xCu);
        }
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_81;
      }

      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v52 = v42;
        _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "Invalid migrated pin config. migratedPinConfig: %@", buf, 0xCu);
      }
    }

    goto LABEL_81;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v52 = configurationCopy;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Pin config has nil version. This pin config is not valid. %@", buf, 0xCu);
    }
  }

  v11 = 0;
LABEL_84:

  return v11;
}

+ (id)_forceSyncDispatchQueue
{
  if (qword_1EB2EA158 != -1)
  {
    sub_1A84DEE68();
  }

  v3 = qword_1EB2EA150;

  return v3;
}

- (void)imCloudKitHooksSetEnabledDidReturn:(id)return
{
  v17 = *MEMORY[0x1E69E9840];
  returnCopy = return;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = returnCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Received IMCloudKitHooksSetEnabledReturned notification {notification %@}", &v13, 0xCu);
    }
  }

  userInfo = [(__CFString *)returnCopy userInfo];
  v7 = [userInfo objectForKey:@"ResultKeyNewState"];
  bOOLValue = [v7 BOOLValue];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      shouldSync = [(IMPinnedConversationsController *)self shouldSync];
      v11 = @"NO";
      if (bOOLValue)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (shouldSync)
      {
        v11 = @"YES";
      }

      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "New MiC enabled state is %@. [self shouldSync] == %@", &v13, 0x16u);
    }
  }

  [(IMPinnedConversationsController *)self synchronizeLocalDataStore];
}

- (void)synchronizeLocalDataStore
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A826C640;
  v3[3] = &unk_1E780FDF0;
  objc_copyWeak(&v4, &location);
  [(IMPinnedConversationsController *)self fetchMostUpToDatePinConfiguration:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)forceSynchronizeUbiquitousStore
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(IMPinnedConversationsController *)self numberOfPendingForceSyncs]< 4)
  {
    [(IMPinnedConversationsController *)self setNumberOfPendingForceSyncs:[(IMPinnedConversationsController *)self numberOfPendingForceSyncs]+ 1];
    objc_initWeak(&v7, self);
    v4 = +[IMPinnedConversationsController _forceSyncDispatchQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1A826CAF0;
    v5[3] = &unk_1E780FDC8;
    objc_copyWeak(&v6, &v7);
    dispatch_async(v4, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&v7);
  }

  else if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[IMPinnedConversationsController forceSynchronizeUbiquitousStore]";
      v9 = 2048;
      v10 = 3;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Blocking additional calls to %s because there are already at least %ld pending calls.", &v7, 0x16u);
    }
  }
}

- (void)handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:(id)notification
{
  v17 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = notificationCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Received NSUbiquitousKeyValueStoreDidChangeExternallyNotification {notification: %@}", buf, 0xCu);
    }
  }

  if ([(IMPinnedConversationsController *)self shouldSync])
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x1E696A9E0]];

    if (([v7 containsObject:@"pD"] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "-[handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:] IMPinConfigurationTopLevelKey was not in NSUbiquitousKeyValueStoreChangedKeysKey. Ignoring notification.", buf, 2u);
        }
      }

      goto LABEL_25;
    }

    userInfo2 = [notificationCopy userInfo];
    v9 = [userInfo2 objectForKey:*MEMORY[0x1E696A9D8]];

    if (v9)
    {
      integerValue = [v9 integerValue];
      if (integerValue <= 1)
      {
        if (!integerValue)
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_16;
          }

          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "-[handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:] change reason is NSUbiquitousKeyValueStoreServerChange.", buf, 2u);
          }

          goto LABEL_15;
        }

        if (integerValue == 1)
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_16;
          }

          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "-[handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:] change reason is NSUbiquitousKeyValueStoreInitialSyncChange.", buf, 2u);
          }

          goto LABEL_15;
        }
      }

      else
      {
        switch(integerValue)
        {
          case 2:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_16;
            }

            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "-[handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:] change reason is NSUbiquitousKeyValueStoreQuotaViolationChange.", buf, 2u);
            }

            goto LABEL_15;
          case 3:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_16;
            }

            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "-[handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:] change reason is NSUbiquitousKeyValueStoreAccountChange.", buf, 2u);
            }

            goto LABEL_15;
          case 0x7FFFFFFFFFFFFFFFLL:
            goto LABEL_12;
        }
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_16;
      }

      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "-[handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:] change reason is %@", buf, 0xCu);
      }

      goto LABEL_15;
    }

LABEL_12:
    if (!IMOSLoggingEnabled())
    {
LABEL_16:
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A826D1A0;
      block[3] = &unk_1E780FCB0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);

LABEL_25:
      goto LABEL_26;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "-[handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:] change reason is nil.", buf, 2u);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "[self shouldSync] == NO. Ignoring NSUbiquitousKeyValueStoreDidChangeExternallyNotification.", buf, 2u);
    }
  }

LABEL_26:
}

- (void)updateStoresWithPinConfiguration:(id)configuration
{
  v12 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v9 = "[IMPinnedConversationsController updateStoresWithPinConfiguration:]";
      v10 = 2112;
      v11 = configurationCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "%s Updating stores %@", buf, 0x16u);
    }
  }

  [(IMPinnedConversationsController *)self _updateLocalStoreWithPinConfiguration:configurationCopy];
  if ([(IMPinnedConversationsController *)self shouldSync])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A826D318;
    v6[3] = &unk_1E780FE18;
    v7 = configurationCopy;
    [(IMPinnedConversationsController *)self _updateUbiquitousStoreWithPinConfiguration:v7 completion:v6];
  }
}

- (void)_updateUbiquitousStoreWithPinConfiguration:(id)configuration completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = configurationCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Attempting to save new pin configuration to ubiquitous store: %@", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A826D5D8;
  v11[3] = &unk_1E780FE40;
  objc_copyWeak(&v14, buf);
  v9 = configurationCopy;
  v12 = v9;
  v10 = completionCopy;
  v13 = v10;
  [(IMPinnedConversationsController *)self _fetchUbiquitousPinConfiguration:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (BOOL)_updateLocalStoreWithPinConfiguration:(id)configuration
{
  v28 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = configurationCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Received request to save new pin configuration to local store: %@", buf, 0xCu);
    }
  }

  v6 = [(IMPinnedConversationsController *)self validatedPinConfigurationWithCurrentVersionForPinConfiguration:configurationCopy];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = configurationCopy;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Successfully migrated pin config to current version. before: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Successfully migrated pin config to current version. after: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Attempting to save the migrated pin config to local store: %@", buf, 0xCu);
      }
    }

    _locallyStoredPinConfiguration = [(IMPinnedConversationsController *)self _locallyStoredPinConfiguration];
    v12 = [(IMPinnedConversationsController *)self shouldUpdateExistingPinConfig:_locallyStoredPinConfiguration withProposedPinConfig:v6];
    v13 = IMOSLoggingEnabled();
    if (v12)
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = _locallyStoredPinConfiguration;
          _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Saving new pin configuration to local store. Old: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = v6;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Saving new pin configuration to local store. New: %@", buf, 0xCu);
        }
      }

      if ((IMIsRunningInUnitTesting() & 1) == 0)
      {
        mEMORY[0x1E69A8018] = [MEMORY[0x1E69A8018] sharedInstance];
        [mEMORY[0x1E69A8018] setValue:v6 forDomain:@"com.apple.messages.pinning" forKey:@"pD"];

        v19 = objc_alloc_init(MEMORY[0x1AC56C550](@"NPSManager", @"NanoPreferencesSync"));
        v20 = MEMORY[0x1E695DFD8];
        v25 = @"pD";
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
        v22 = [v20 setWithArray:v21];
        [v19 synchronizeUserDefaultsDomain:@"com.apple.messages.pinning" keys:v22];

        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "syncManager", buf, 2u);
          }
        }

        goto LABEL_46;
      }

      if (!IMOSLoggingEnabled())
      {
LABEL_46:

        goto LABEL_47;
      }

      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v27 = "[IMPinnedConversationsController _updateLocalStoreWithPinConfiguration:]";
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "%s Didn't actually update the local store because we're running a unit test.", buf, 0xCu);
      }
    }

    else
    {
      if (!v13)
      {
        goto LABEL_46;
      }

      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "shouldUpdate == NO. Not saving new pin configuration to local store: %@", buf, 0xCu);
      }
    }

    goto LABEL_46;
  }

  if (v7)
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = configurationCopy;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Could not migrate the proposedConfig to the current version. Not saving new pin configuration to local store: %@", buf, 0xCu);
    }
  }

  LOBYTE(v12) = 0;
LABEL_47:

  return v12;
}

- (BOOL)shouldWriteProposedPinConfiguration:(id)configuration toUbiquitousStoreWithExistingPinConfiguration:(id)pinConfiguration
{
  v29 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  pinConfigurationCopy = pinConfiguration;
  v7 = [pinConfigurationCopy objectForKey:@"pV"];
  v8 = [configurationCopy objectForKey:@"pV"];
  v9 = v8;
  if (!v8)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v21 = 138413058;
        v22 = 0;
        v23 = 2048;
        integerValue = [0 integerValue];
        v25 = 2112;
        v26 = v7;
        v27 = 2048;
        integerValue2 = [v7 integerValue];
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Could not definitively determine if proposed version (%@, %li) is greater than or equal to the existing ubiquitous data's (%@, %li), not writing to ubiquitous store", &v21, 0x2Au);
      }
    }

    goto LABEL_12;
  }

  if (v7)
  {
    integerValue3 = [v8 integerValue];
    integerValue4 = [v7 integerValue];
    v12 = IMOSLoggingEnabled();
    if (integerValue3 < integerValue4)
    {
      if (v12)
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v21 = 134218240;
          v22 = integerValue3;
          v23 = 2048;
          integerValue = integerValue4;
          _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Proposed version (%li) is less than the existing ubiquitous data's (%li), not writing earlier version to ubiquitous store", &v21, 0x16u);
        }
      }

LABEL_12:
      v15 = 0;
      goto LABEL_22;
    }

    if (v12)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = 134218240;
        v22 = integerValue3;
        v23 = 2048;
        integerValue = integerValue4;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Proposed version (%li) is greater than or equal to the existing ubiquitous data's (%li), ok to write to ubiquitous store", &v21, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "There was no existing version in the ubiquitous store.", &v21, 2u);
    }
  }

  v15 = 1;
LABEL_22:
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      if (v15)
      {
        v19 = @"YES";
      }

      v21 = 138412546;
      v22 = v19;
      v23 = 2080;
      integerValue = "[IMPinnedConversationsController shouldWriteProposedPinConfiguration:toUbiquitousStoreWithExistingPinConfiguration:]";
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Returning %@ for %s", &v21, 0x16u);
    }
  }

  return v15;
}

- (BOOL)pinConfigurationHasCompatibleVersion:(id)version
{
  v22 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v4 = [versionCopy objectForKey:@"pV"];
  v5 = v4;
  if (!v4)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v16 = 136315138;
        v17 = "[IMPinnedConversationsController pinConfigurationHasCompatibleVersion:]";
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "%s The pin config's version was nil.", &v16, 0xCu);
      }
    }

    goto LABEL_11;
  }

  integerValue = [v4 integerValue];
  v7 = +[IMPinnedConversationsController currentPinConfigurationVersion];
  v8 = IMOSLoggingEnabled();
  if (integerValue > v7)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v16 = 136315650;
        v17 = "[IMPinnedConversationsController pinConfigurationHasCompatibleVersion:]";
        v18 = 2048;
        v19 = integerValue;
        v20 = 2048;
        v21 = v7;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "%s The pin config's version (%li) was definitively greater than the current version (%li).", &v16, 0x20u);
      }
    }

LABEL_11:
    v11 = 0;
    goto LABEL_17;
  }

  if (v8)
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = 136315650;
      v17 = "[IMPinnedConversationsController pinConfigurationHasCompatibleVersion:]";
      v18 = 2048;
      v19 = integerValue;
      v20 = 2048;
      v21 = v7;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "%s The pin config's version (%li) was definitively less than or equal to the current version (%li).", &v16, 0x20u);
    }
  }

  v11 = 1;
LABEL_17:
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"NO";
      if (v11)
      {
        v14 = @"YES";
      }

      v16 = 138412546;
      v17 = v14;
      v18 = 2080;
      v19 = "[IMPinnedConversationsController pinConfigurationHasCompatibleVersion:]";
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Returning %@ for %s", &v16, 0x16u);
    }
  }

  return v11;
}

- (BOOL)pinConfigurationIsValid:(id)valid
{
  v18 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  +[IMPinnedConversationsController requiredKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [validCopy objectForKey:{*(*(&v13 + 1) + 8 * i), v13}];

        if (!v10)
        {

          v11 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = [(IMPinnedConversationsController *)self pinConfigurationHasCompatibleVersion:validCopy];
LABEL_11:

  return v11;
}

- (BOOL)pinConfigurationHasCurrentVersion:(id)version
{
  v3 = [version objectForKey:@"pV"];
  v4 = +[IMPinnedConversationsController currentPinConfigurationVersion];
  if (v3)
  {
    v5 = [v3 integerValue] == v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldUpdateExistingPinConfig:(id)config withProposedPinConfig:(id)pinConfig
{
  v25 = *MEMORY[0x1E69E9840];
  configCopy = config;
  pinConfigCopy = pinConfig;
  if (![(IMPinnedConversationsController *)self pinConfigurationIsValid:pinConfigCopy])
  {
    v16 = 0;
    goto LABEL_25;
  }

  v8 = [configCopy objectForKey:@"pT"];
  v9 = [pinConfigCopy objectForKey:@"pT"];
  if (!v9)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = 136315138;
        v22 = "[IMPinnedConversationsController shouldUpdateExistingPinConfig:withProposedPinConfig:]";
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "%s The proposed timestamp was nil.", &v21, 0xCu);
      }

      goto LABEL_22;
    }

LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    v11 = v10;
    [v9 timeIntervalSinceReferenceDate];
    v13 = v12;
    v14 = IMOSLoggingEnabled();
    if (v11 < v13)
    {
      if (v14)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v21 = 136315138;
          v22 = "[IMPinnedConversationsController shouldUpdateExistingPinConfig:withProposedPinConfig:]";
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "%s The proposed timestamp was definitively later than the existing timestamp.", &v21, 0xCu);
        }

LABEL_17:

        goto LABEL_18;
      }

      goto LABEL_18;
    }

    if (v14)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = 136315138;
        v22 = "[IMPinnedConversationsController shouldUpdateExistingPinConfig:withProposedPinConfig:]";
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "%s The proposed timestamp was definitively earlier than or equivalent to the existing timestamp.", &v21, 0xCu);
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v21 = 136315138;
      v22 = "[IMPinnedConversationsController shouldUpdateExistingPinConfig:withProposedPinConfig:]";
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "%s There was no existing timestamp.", &v21, 0xCu);
    }

    goto LABEL_17;
  }

LABEL_18:
  v16 = 1;
LABEL_24:

LABEL_25:
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      if (v16)
      {
        v19 = @"YES";
      }

      v21 = 138412546;
      v22 = v19;
      v23 = 2080;
      v24 = "[IMPinnedConversationsController shouldUpdateExistingPinConfig:withProposedPinConfig:]";
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Returning %@ for %s", &v21, 0x16u);
    }
  }

  return v16;
}

- (void)_fetchUbiquitousPinConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_initWeak(&location, self);
  v5 = +[IMPinnedConversationsController _ubiquitousDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A826EB98;
  block[3] = &unk_1E780FEB8;
  objc_copyWeak(&v9, &location);
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)fetchMostUpToDatePinConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A826EEF8;
  v6[3] = &unk_1E780FF08;
  v6[4] = self;
  v7 = configurationCopy;
  v5 = configurationCopy;
  [(IMPinnedConversationsController *)self _fetchUbiquitousPinConfiguration:v6];
}

- (id)_ubiquitousPinConfigurationInStore:(id)store
{
  v13 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  mEMORY[0x1E69A8018] = [MEMORY[0x1E69A8018] sharedInstance];
  v5 = [mEMORY[0x1E69A8018] getBoolFromDomain:@"com.apple.messages.pinning" forKey:@"IMPinningShouldTryFetchAgainIfNullKey"];
  v6 = [storeCopy dictionaryForKey:@"pD"];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Retrieved from iCloud: %@", &v11, 0xCu);
    }
  }

  if (v6)
  {
    if ((v5 & 1) == 0)
    {
      [mEMORY[0x1E69A8018] setBool:1 forDomain:@"com.apple.messages.pinning" forKey:@"IMPinningShouldTryFetchAgainIfNullKey"];
    }

    goto LABEL_24;
  }

  if (!storeCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Received nil when trying to fetch the pin configuration from the ubiquitous store because the NSUbiquitousKeyValueStore was nil.", &v11, 2u);
      }

      goto LABEL_22;
    }

LABEL_23:
    v6 = 0;
    goto LABEL_24;
  }

  if (!v5)
  {
    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Received nil when trying to fetch the pin configuration from the ubiquitous store even though the NSUbiquitousKeyValueStore is initialized and the user has already pinned something before. This is an issue in NSUbiquitousKeyValueStore. Trying again.", &v11, 2u);
    }
  }

  v6 = [storeCopy dictionaryForKey:@"pD"];
  if (!v6)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Received nil when trying to fetch the pin configuration from the ubiquitous store even after trying the fetch again. This is an issue in NSUbiquitousKeyValueStore.", &v11, 2u);
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_23;
  }

LABEL_24:

  return v6;
}

- (id)pinnedConversationIdentifiersFromPinConfiguration:(id)configuration
{
  v3 = [configuration objectForKey:@"pP"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

@end