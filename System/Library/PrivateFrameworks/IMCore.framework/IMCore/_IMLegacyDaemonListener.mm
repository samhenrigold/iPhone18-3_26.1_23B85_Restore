@interface _IMLegacyDaemonListener
- (_IMLegacyDaemonListener)init;
- (unint64_t)myStatus;
- (unsigned)myIdleTime;
- (void)_cacheValue:(id)value forPersistentProperty:(id)property;
- (void)_cacheValue:(id)value forProperty:(id)property;
- (void)_deferNotification:(id)notification;
- (void)_deferredSetup:(id)setup;
- (void)_processDeferredInvitationDictionary:(id)dictionary;
- (void)_processMyStatusChanged;
- (void)_reallyProcessMyStatusChanged;
- (void)_resetPostedSetupCompleted;
- (void)_setStamp:(id)stamp forContext:(id)context;
- (void)account:(id)account buddyPictureChanged:(id)changed imageData:(id)data imageHash:(id)hash;
- (void)account:(id)account buddyProperties:(id)properties buddyPictures:(id)pictures;
- (void)account:(id)account buddyPropertiesChanged:(id)changed;
- (void)account:(id)account capabilitiesChanged:(unint64_t)changed;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties invitationReceived:(id)received;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties messageReceived:(id)received;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties messagesReceived:(id)received;
- (void)account:(id)account conference:(id)conference remoteUser:(id)user properties:(id)properties;
- (void)account:(id)account defaults:(id)defaults blockList:(id)list allowList:(id)allowList blockingMode:(unsigned int)mode blockIdleStatus:(BOOL)status status:(id)a9 capabilities:(unint64_t)self0 serviceLoginStatus:(unint64_t)self1 loginStatusMessage:(id)self2;
- (void)account:(id)account defaultsChanged:(id)changed;
- (void)account:(id)account groupsChanged:(id)changed error:(id)error;
- (void)account:(id)account handleSubscriptionRequestFrom:(id)from withMessage:(id)message;
- (void)account:(id)account loginStatusChanged:(unint64_t)changed message:(id)message reason:(int)reason properties:(id)properties;
- (void)account:(id)account postedError:(id)error;
- (void)account:(id)account status:(id)status capabilities:(unint64_t)capabilities serviceLoginStatus:(unint64_t)loginStatus loginStatusMessage:(id)message;
- (void)account:(id)account statusChanged:(id)changed;
- (void)accountAdded:(id)added defaults:(id)defaults service:(id)service;
- (void)accountRemoved:(id)removed;
- (void)activeAccountsChanged:(id)changed forService:(id)service;
- (void)addHandler:(id)handler;
- (void)databaseChatSpamUpdated:(id)updated;
- (void)databaseUpdated:(id)updated;
- (void)defaultsChanged:(id)changed forService:(id)service;
- (void)didAttemptToDisableAllDevicesResult:(BOOL)result;
- (void)didAttemptToDisableiCloudBackups:(int64_t)backups error:(id)error;
- (void)didAttemptToSetEnabledTo:(BOOL)to result:(BOOL)result;
- (void)didFetchCloudKitSyncDebuggingInfo:(id)info;
- (void)didFetchRampState:(id)state;
- (void)didFetchSyncStateStats:(id)stats;
- (void)didPerformAdditionalStorageRequiredCheckWithSuccess:(BOOL)success additionalStorageRequired:(unint64_t)required forAccountId:(id)id error:(id)error;
- (void)displayPinCodeForAccount:(id)account pinCode:(id)code deviceName:(id)name deviceType:(id)type phoneNumber:(id)number;
- (void)fileTransfer:(id)transfer createdWithProperties:(id)properties;
- (void)fileTransfer:(id)transfer explicitDownloadSucceededWithPath:(id)path livePhotoBundlePath:(id)bundlePath;
- (void)fileTransfer:(id)transfer highQualityDownloadSucceededWithPath:(id)path;
- (void)fileTransfer:(id)transfer rejectedWithProperties:(id)properties;
- (void)fileTransfer:(id)transfer updatedWithCurrentBytes:(unint64_t)bytes totalBytes:(unint64_t)totalBytes averageTransferRate:(unint64_t)rate;
- (void)fileTransfer:(id)transfer updatedWithProperties:(id)properties;
- (void)fileTransferDownloadFailedWithLocalURL:(id)l error:(id)error;
- (void)fileTransferDownloadedSucceededWithLocalURL:(id)l;
- (void)fileTransferExplicitDownloadFailed:(id)failed suggestedRetryGUID:(id)d error:(id)error;
- (void)fileTransferFinishedRemoteIntentDownload:(id)download;
- (void)fileTransferHighQualityDownloadFailed:(id)failed;
- (void)fileTransfers:(id)transfers createdWithLocalPaths:(id)paths;
- (void)forwardInvocation:(id)invocation;
- (void)networkDataAvailabilityChanged:(BOOL)changed;
- (void)newSetupInfoAvailable;
- (void)oneTimeCodesDidChange:(id)change;
- (void)persistentProperty:(id)property changedTo:(id)to from:(id)from;
- (void)pinCodeAlertCompleted:(id)completed deviceName:(id)name deviceType:(id)type phoneNumber:(id)number responseFromDevice:(BOOL)device wasCancelled:(BOOL)cancelled;
- (void)property:(id)property changedTo:(id)to from:(id)from;
- (void)qosClassWhileServicingRequestsResponse:(unsigned int)response identifier:(id)identifier;
- (void)receivedUrgentRequestForMessages:(id)messages;
- (void)releaseHeldChatMessages;
- (void)removeHandler:(id)handler;
- (void)service:(id)service properties:(id)properties defaults:(id)defaults defaultAccountSettings:(id)settings allAccounts:(id)accounts activeAccounts:(id)activeAccounts;
- (void)services:(id)services properties:(id)properties persistentProperties:(id)persistentProperties;
- (void)setupComplete:(BOOL)complete info:(id)info;
- (void)simSubscriptionsDidChange;
- (void)updateActiveNicknameRecords:(id)records;
- (void)updateCloudKitProgressWithDictionary:(id)dictionary;
- (void)updateCloudKitState;
- (void)updateCloudKitStateWithDictionary:(id)dictionary;
- (void)updateIgnoredNicknameRecords:(id)records;
- (void)updateNicknameHandlesForSharing:(id)sharing blocked:(id)blocked;
- (void)updatePendingNicknameUpdates:(id)updates handledNicknames:(id)nicknames archivedNicknames:(id)archivedNicknames;
- (void)updatePersonalNickname:(id)nickname;
- (void)updateTransitionedNicknameHandles:(id)handles;
- (void)updateUnknownSenderRecords:(id)records;
- (void)vcCapabilitiesChanged:(unint64_t)changed;
@end

@implementation _IMLegacyDaemonListener

- (_IMLegacyDaemonListener)init
{
  v12.receiver = self;
  v12.super_class = _IMLegacyDaemonListener;
  v2 = [(_IMLegacyDaemonListener *)&v12 init];
  v3 = v2;
  if (v2)
  {
    myIdleSince = v2->_myIdleSince;
    v2->_myIdleSince = 0;

    v3->_setupComplete = 0;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    properties = v3->_properties;
    v3->_properties = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    persistentProperties = v3->_persistentProperties;
    v3->_persistentProperties = v7;

    v9 = [objc_alloc(MEMORY[0x1E696AE48]) initWithProtocol:&unk_1F1BF71E8];
    protocol = v3->_protocol;
    v3->_protocol = v9;
  }

  return v3;
}

- (void)_processMyStatusChanged
{
  if (!self->_hasPendingProcessChange && self->_setupComplete)
  {
    [(_IMLegacyDaemonListener *)self performSelector:sel__reallyProcessMyStatusChanged withObject:0 afterDelay:0.0];
  }
}

- (void)_reallyProcessMyStatusChanged
{
  v43 = *MEMORY[0x1E69E9840];
  if (self->_hasPendingProcessChange)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__reallyProcessMyStatusChanged object:0];
  }

  self->_hasPendingProcessChange = 0;
  v3 = +[IMAccountController sharedInstance];
  bestAccountForStatus = [v3 bestAccountForStatus];

  myStatus = [bestAccountForStatus myStatus];
  myStatusMessage = [bestAccountForStatus myStatusMessage];
  obj = [bestAccountForStatus myIdleSince];
  myPictureData = [bestAccountForStatus myPictureData];
  myNowPlayingString = [bestAccountForStatus myNowPlayingString];
  v8 = &stru_1F1B76F98;
  if (myStatusMessage)
  {
    v9 = myStatusMessage;
  }

  else
  {
    v9 = &stru_1F1B76F98;
  }

  if (myNowPlayingString)
  {
    v8 = myNowPlayingString;
  }

  v29 = v8;
  v30 = v9;
  if (([(NSData *)myPictureData isNull]& 1) != 0 || ![(NSData *)myPictureData length])
  {

    myPictureData = 0;
  }

  v28 = myPictureData;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109634;
      v37 = myStatus;
      v38 = 2112;
      v39 = v30;
      v40 = 2112;
      v41 = obj;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "Notified that my status is now %i, message '%@', idleSince %@", buf, 0x1Cu);
    }
  }

  myIdleSince = self->_myIdleSince;
  v26 = obj != myIdleSince;
  if (obj != myIdleSince)
  {
    objc_storeStrong(&self->_myIdleSince, obj);
  }

  if (bestAccountForStatus && myPictureData != self->_myPicture && ![(NSData *)myPictureData isEqualToData:?])
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [(NSData *)myPictureData length];
        *buf = 67109120;
        v37 = v13;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Service: Received my new picture from daemon -- %d bytes", buf, 8u);
      }
    }

    objc_storeStrong(&self->_myPicture, myPictureData);
    v14 = +[IMMe me];
    [v14 myPictureChanged];

    _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = _copyForEnumerating;
    v17 = [v16 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v17)
    {
      v18 = *v33;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v20 myPictureDataChanged:self->_myPicture];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v17);
    }
  }

  if (self->_myStatus != myStatus)
  {
    self->_myStatus = myStatus;
    v26 = 1;
  }

  if ([(NSString *)self->_myStatusMessage isEqualToString:v30])
  {
    myNowPlayingString = self->_myNowPlayingString;
    p_myNowPlayingString = &self->_myNowPlayingString;
    if (([(__CFString *)v29 isEqualToString:myNowPlayingString]& 1) != 0)
    {
      if (!v26)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    goto LABEL_41;
  }

  objc_storeStrong(&self->_myStatusMessage, v30);
  v23 = self->_myNowPlayingString;
  p_myNowPlayingString = &self->_myNowPlayingString;
  if (([(__CFString *)v29 isEqualToString:v23]& 1) == 0)
  {
LABEL_41:
    objc_storeStrong(p_myNowPlayingString, v29);
  }

LABEL_42:
  v24 = +[IMService notificationCenter];
  [v24 __mainThreadPostNotificationName:@"__kIMMyStatusChangedNotification" object:0 userInfo:0];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMMeStatusChangedNotification" object:0];

LABEL_43:
}

- (void)addHandler:(id)handler
{
  handlerCopy = handler;
  if (([(NSMutableArray *)self->_handlers containsObjectIdenticalTo:?]& 1) == 0)
  {
    handlers = self->_handlers;
    if (!handlers)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = self->_handlers;
      self->_handlers = v5;

      handlers = self->_handlers;
    }

    [(NSMutableArray *)handlers addObject:handlerCopy];
  }
}

- (void)removeHandler:(id)handler
{
  [(NSMutableArray *)self->_handlers removeObjectIdenticalTo:handler];
  if (![(NSMutableArray *)self->_handlers count])
  {
    handlers = self->_handlers;
    self->_handlers = 0;
  }
}

- (unint64_t)myStatus
{
  v3 = +[IMAccountController sharedInstance];
  connectedAccounts = [v3 connectedAccounts];
  v5 = [connectedAccounts count];

  if (v5)
  {
    return self->_myStatus;
  }

  else
  {
    return 1;
  }
}

- (unsigned)myIdleTime
{
  myIdleSince = self->_myIdleSince;
  if (myIdleSince)
  {
    [(NSDate *)myIdleSince timeIntervalSinceNow];
    LODWORD(myIdleSince) = -v3;
  }

  return myIdleSince;
}

- (void)_processDeferredInvitationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"AccountUniqueID"];
  v6 = [dictionaryCopy objectForKey:@"ChatIdentifier"];
  v7 = [dictionaryCopy objectForKey:@"Properties"];
  v8 = [dictionaryCopy objectForKey:@"ChatStyle"];
  charValue = [v8 charValue];

  v10 = [dictionaryCopy objectForKey:@"Message"];
  v11 = [dictionaryCopy objectForKey:@"DeferType"];
  intValue = [v11 intValue];

  if (intValue == 2)
  {
    v13 = [dictionaryCopy objectForKey:@"Messages"];
    [(_IMLegacyDaemonListener *)self account:v5 chat:v6 style:charValue chatProperties:v7 messagesReceived:v13];
  }

  else if (intValue == 1)
  {
    [(_IMLegacyDaemonListener *)self account:v5 chat:v6 style:charValue chatProperties:v7 messageReceived:v10];
  }

  else if (intValue)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Unknown defer type", v15, 2u);
      }
    }
  }

  else
  {
    [(_IMLegacyDaemonListener *)self account:v5 chat:v6 style:charValue chatProperties:v7 invitationReceived:v10];
  }
}

- (void)_deferNotification:(id)notification
{
  notificationCopy = notification;
  deferredChatMessages = self->_deferredChatMessages;
  v8 = notificationCopy;
  if (!deferredChatMessages)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_deferredChatMessages;
    self->_deferredChatMessages = v6;

    notificationCopy = v8;
    deferredChatMessages = self->_deferredChatMessages;
  }

  [(NSMutableArray *)deferredChatMessages addObject:notificationCopy];
}

- (void)releaseHeldChatMessages
{
  v13 = *MEMORY[0x1E69E9840];
  self->_holdingChatMessages = 0;
  if ([(_IMLegacyDaemonListener *)self isHoldingChatMessages])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_deferredChatMessages;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(_IMLegacyDaemonListener *)self _processDeferredInvitationDictionary:*(*(&v8 + 1) + 8 * v7++), v8];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)defaultsChanged:(id)changed forService:(id)service
{
  v21 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  serviceCopy = service;
  v8 = [IMServiceImpl serviceWithInternalName:serviceCopy];
  v9 = v8;
  if (v8)
  {
    [v8 defaultsChanged:changedCopy];
    _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = _copyForEnumerating;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v15 defaultsChanged:changedCopy forService:serviceCopy];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (void)activeAccountsChanged:(id)changed forService:(id)service
{
  v49 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  serviceCopy = service;
  v33 = [IMServiceImpl serviceWithInternalName:serviceCopy];
  if (v33)
  {
    v6 = +[IMAccountController sharedInstance];
    v7 = [v6 accountsForService:v33];
    v8 = [v7 mutableCopy];

    v9 = +[IMAccountController sharedInstance];
    [v9 setReadOnly:1];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = changedCopy;
    v11 = [v10 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v11)
    {
      v12 = *v43;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v42 + 1) + 8 * i);
          v15 = +[IMAccountController sharedInstance];
          v16 = [v15 accountForUniqueID:v14];

          v17 = +[IMAccountController sharedInstance];
          [v17 activateAccount:v16 locally:1];

          [v8 removeObject:v16];
        }

        v11 = [v10 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v11);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v19)
    {
      v20 = *v39;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v38 + 1) + 8 * j);
          v23 = +[IMAccountController sharedInstance];
          [v23 _deactivateAccount:v22];
        }

        v19 = [v18 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v19);
    }

    v24 = +[IMAccountController sharedInstance];
    [v24 setReadOnly:0];

    [v33 activeAccountsChanged:v10];
    _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = _copyForEnumerating;
    v27 = [v26 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v27)
    {
      v28 = *v35;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v34 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            [v30 activeAccountsChanged:v10 forService:serviceCopy];
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v27);
    }

    [(_IMLegacyDaemonListener *)self _processMyStatusChanged];
  }
}

- (void)account:(id)account defaultsChanged:(id)changed
{
  v21 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  changedCopy = changed;
  v8 = +[IMAccountController sharedInstance];
  v9 = [v8 accountForUniqueID:accountCopy];

  [v9 loadFromDictionary:changedCopy];
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = _copyForEnumerating;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v15 account:accountCopy defaultsChanged:changedCopy];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)accountAdded:(id)added defaults:(id)defaults service:(id)service
{
  addedCopy = added;
  defaultsCopy = defaults;
  v9 = [(_IMLegacyDaemonListener *)self serviceWithName:service];
  if (v9)
  {
    v10 = +[IMAccountController sharedInstance];
    v11 = [v10 accountForUniqueID:addedCopy];

    if (!v11)
    {
      v12 = [[IMAccount alloc] initWithUniqueID:addedCopy service:v9];
      if (v12)
      {
        if (defaultsCopy)
        {
          [(_IMLegacyDaemonListener *)self account:addedCopy defaultsChanged:defaultsCopy];
        }

        v13 = +[IMAccountController sharedInstance];
        [v13 addAccount:v12 locally:1];
      }

      [(_IMLegacyDaemonListener *)self _processMyStatusChanged];
    }
  }
}

- (void)accountRemoved:(id)removed
{
  removedCopy = removed;
  v5 = +[IMAccountController sharedInstance];
  v7 = [v5 accountForUniqueID:removedCopy];

  if (v7)
  {
    v6 = +[IMAccountController sharedInstance];
    [v6 deleteAccount:v7 locally:1];
  }

  [(_IMLegacyDaemonListener *)self _processMyStatusChanged];
}

- (void)account:(id)account loginStatusChanged:(unint64_t)changed message:(id)message reason:(int)reason properties:(id)properties
{
  v8 = *&reason;
  v34 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  messageCopy = message;
  propertiesCopy = properties;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [IMAccount nameOfLoginStatus:changed];
      *buf = 138412546;
      v30 = accountCopy;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Account: %@   Login Status Changed: %@", buf, 0x16u);
    }
  }

  v15 = +[IMAccountController sharedInstance];
  v22 = [v15 accountForUniqueID:accountCopy];

  [v22 loginStatusChanged:changed message:messageCopy reason:v8 properties:propertiesCopy];
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = _copyForEnumerating;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = *v26;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v25 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v21 account:accountCopy loginStatusChanged:changed message:messageCopy reason:v8 properties:propertiesCopy];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  [(_IMLegacyDaemonListener *)self _processMyStatusChanged];
}

- (void)account:(id)account statusChanged:(id)changed
{
  v21 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  changedCopy = changed;
  v8 = +[IMAccountController sharedInstance];
  v9 = [v8 accountForUniqueID:accountCopy];
  [v9 setCurrentAccountStatus:changedCopy];

  [(_IMLegacyDaemonListener *)self _processMyStatusChanged];
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = _copyForEnumerating;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v15 account:accountCopy statusChanged:changedCopy];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)account:(id)account capabilitiesChanged:(unint64_t)changed
{
  v21 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v6 = +[IMAccountController sharedInstance];
  v7 = [v6 accountForUniqueID:accountCopy];

  capabilities = [v7 capabilities];
  if (capabilities != changed)
  {
    [v7 updateCapabilities:changed];
  }

  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = _copyForEnumerating;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 account:accountCopy capabilitiesChanged:changed];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if (capabilities != changed)
  {
    [(_IMLegacyDaemonListener *)self _processMyStatusChanged];
  }
}

- (void)vcCapabilitiesChanged:(unint64_t)changed
{
  v15 = *MEMORY[0x1E69E9840];
  self->_vcCapabilities = changed;
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = _copyForEnumerating;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 vcCapabilitiesChanged:changed];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)networkDataAvailabilityChanged:(BOOL)changed
{
  changedCopy = changed;
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (changedCopy)
      {
        v5 = @"YES";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "MobileSMS thinks networkDataAvailable: %@", &v7, 0xCu);
    }
  }

  v6 = +[IMAccountController sharedInstance];
  [v6 setNetworkDataAvailable:changedCopy];
}

- (void)account:(id)account buddyPropertiesChanged:(id)changed
{
  v22 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  changedCopy = changed;
  v8 = +[IMAccountController sharedInstance];
  v9 = [v8 accountForUniqueID:accountCopy];

  v10 = objc_autoreleasePoolPush();
  [v9 buddyPropertiesChanged:changedCopy];
  objc_autoreleasePoolPop(v10);
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = _copyForEnumerating;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v17 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v16 account:accountCopy buddyPropertiesChanged:changedCopy];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)account:(id)account buddyPictureChanged:(id)changed imageData:(id)data imageHash:(id)hash
{
  v28 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  changedCopy = changed;
  dataCopy = data;
  hashCopy = hash;
  v14 = +[IMAccountController sharedInstance];
  v22 = [v14 accountForUniqueID:accountCopy];

  v15 = objc_autoreleasePoolPush();
  [v22 buddyPictureChanged:changedCopy imageData:dataCopy imageHash:hashCopy];
  objc_autoreleasePoolPop(v15);
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = _copyForEnumerating;
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v18)
  {
    v19 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v21 account:accountCopy buddyPictureChanged:changedCopy imageData:dataCopy imageHash:hashCopy];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }
}

- (void)displayPinCodeForAccount:(id)account pinCode:(id)code deviceName:(id)name deviceType:(id)type phoneNumber:(id)number
{
  v23 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  codeCopy = code;
  nameCopy = name;
  typeCopy = type;
  numberCopy = number;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{codeCopy, @"pinCode", nameCopy, @"deviceName", typeCopy, @"deviceType", numberCopy, @"phoneNumber", 0}];
  v17 = +[IMAccountController sharedInstance];
  v18 = [v17 accountForUniqueID:accountCopy];

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v18;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "SMSPINRelay accountToBroadcast %@", buf, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountSMSRelayPinAlertNotification" object:v18 userInfo:v16];
}

- (void)pinCodeAlertCompleted:(id)completed deviceName:(id)name deviceType:(id)type phoneNumber:(id)number responseFromDevice:(BOOL)device wasCancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  deviceCopy = device;
  completedCopy = completed;
  nameCopy = name;
  typeCopy = type;
  numberCopy = number;
  v17 = MEMORY[0x1E695DF20];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:deviceCopy];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:cancelledCopy];
  v20 = [v17 dictionaryWithObjectsAndKeys:{v18, @"responseFromDevice", v19, @"wasCancelled", nameCopy, @"deviceName", typeCopy, @"deviceType", numberCopy, @"phoneNumber", 0}];

  v21 = +[IMAccountController sharedInstance];
  v22 = [v21 accountForUniqueID:completedCopy];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMAccountSMSRelayPinDismissNotification" object:v22 userInfo:v20];
}

- (void)account:(id)account buddyProperties:(id)properties buddyPictures:(id)pictures
{
  v25 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  propertiesCopy = properties;
  picturesCopy = pictures;
  v11 = +[IMAccountController sharedInstance];
  v19 = [v11 accountForUniqueID:accountCopy];

  v12 = objc_autoreleasePoolPush();
  [v19 setBuddyProperties:propertiesCopy buddyPictures:picturesCopy];
  objc_autoreleasePoolPop(v12);
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = _copyForEnumerating;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v18 account:accountCopy buddyProperties:propertiesCopy buddyPictures:picturesCopy];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties invitationReceived:(id)received
{
  styleCopy = style;
  v33 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  chatCopy = chat;
  value = properties;
  receivedCopy = received;
  v15 = chatCopy;
  if ([(_IMLegacyDaemonListener *)self shouldHoldChatMessages])
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = v16;
    if (accountCopy)
    {
      CFDictionarySetValue(v16, @"AccountUniqueID", accountCopy);
    }

    v18 = accountCopy;
    if (value)
    {
      CFDictionarySetValue(v17, @"Properties", value);
    }

    if (v15)
    {
      CFDictionarySetValue(v17, @"ChatIdentifier", v15);
    }

    v19 = [MEMORY[0x1E696AD98] numberWithChar:styleCopy];
    if (v19)
    {
      CFDictionarySetValue(v17, @"ChatStyle", v19);
    }

    if (receivedCopy)
    {
      CFDictionarySetValue(v17, @"Message", receivedCopy);
    }

    v20 = [MEMORY[0x1E696AD98] numberWithInt:0];
    if (v20)
    {
      CFDictionarySetValue(v17, @"DeferType", v20);
    }

    [(_IMLegacyDaemonListener *)self _deferNotification:v17];
  }

  else
  {
    v18 = accountCopy;
    _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = _copyForEnumerating;
    v23 = [v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v23)
    {
      v24 = *v29;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v28 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v26 account:v18 chat:v15 style:styleCopy chatProperties:value invitationReceived:receivedCopy];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v23);
    }
  }
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties messageReceived:(id)received
{
  styleCopy = style;
  v33 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  chatCopy = chat;
  value = properties;
  receivedCopy = received;
  v15 = chatCopy;
  if ([(_IMLegacyDaemonListener *)self shouldHoldChatMessages])
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = v16;
    if (accountCopy)
    {
      CFDictionarySetValue(v16, @"AccountUniqueID", accountCopy);
    }

    v18 = accountCopy;
    if (value)
    {
      CFDictionarySetValue(v17, @"Properties", value);
    }

    if (v15)
    {
      CFDictionarySetValue(v17, @"ChatIdentifier", v15);
    }

    v19 = [MEMORY[0x1E696AD98] numberWithChar:styleCopy];
    if (v19)
    {
      CFDictionarySetValue(v17, @"ChatStyle", v19);
    }

    if (receivedCopy)
    {
      CFDictionarySetValue(v17, @"Message", receivedCopy);
    }

    v20 = [MEMORY[0x1E696AD98] numberWithInt:1];
    if (v20)
    {
      CFDictionarySetValue(v17, @"DeferType", v20);
    }

    [(_IMLegacyDaemonListener *)self _deferNotification:v17];
  }

  else
  {
    v18 = accountCopy;
    _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = _copyForEnumerating;
    v23 = [v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v23)
    {
      v24 = *v29;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v28 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v26 account:v18 chat:v15 style:styleCopy chatProperties:value messageReceived:receivedCopy];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v23);
    }
  }
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties messagesReceived:(id)received
{
  styleCopy = style;
  v33 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  chatCopy = chat;
  value = properties;
  receivedCopy = received;
  v15 = chatCopy;
  if ([(_IMLegacyDaemonListener *)self shouldHoldChatMessages])
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = v16;
    if (accountCopy)
    {
      CFDictionarySetValue(v16, @"AccountUniqueID", accountCopy);
    }

    v18 = accountCopy;
    if (value)
    {
      CFDictionarySetValue(v17, @"Properties", value);
    }

    if (v15)
    {
      CFDictionarySetValue(v17, @"ChatIdentifier", v15);
    }

    v19 = [MEMORY[0x1E696AD98] numberWithChar:styleCopy];
    if (v19)
    {
      CFDictionarySetValue(v17, @"ChatStyle", v19);
    }

    if (receivedCopy)
    {
      CFDictionarySetValue(v17, @"Messages", receivedCopy);
    }

    v20 = [MEMORY[0x1E696AD98] numberWithInt:2];
    if (v20)
    {
      CFDictionarySetValue(v17, @"DeferType", v20);
    }

    [(_IMLegacyDaemonListener *)self _deferNotification:v17];
  }

  else
  {
    v18 = accountCopy;
    _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = _copyForEnumerating;
    v23 = [v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v23)
    {
      v24 = *v29;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v28 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v26 account:v18 chat:v15 style:styleCopy chatProperties:value messagesReceived:receivedCopy];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v23);
    }
  }
}

- (void)fileTransfer:(id)transfer createdWithProperties:(id)properties
{
  transferCopy = transfer;
  propertiesCopy = properties;
  v6 = +[IMDaemonController sharedController];
  v7 = [v6 capabilitiesForListenerID:0];
  v8 = *MEMORY[0x1E69A6268] & v7;

  if (v8)
  {
    v9 = +[IMFileTransferCenter sharedInstance];
    [v9 _handleFileTransfer:transferCopy createdWithProperties:propertiesCopy];
  }
}

- (void)fileTransfers:(id)transfers createdWithLocalPaths:(id)paths
{
  transfersCopy = transfers;
  pathsCopy = paths;
  v6 = +[IMDaemonController sharedController];
  v7 = [v6 capabilitiesForListenerID:0];
  v8 = *MEMORY[0x1E69A6268] & v7;

  if (v8)
  {
    v9 = +[IMFileTransferCenter sharedInstance];
    [v9 _handleFileTransfers:transfersCopy createdWithLocalPaths:pathsCopy];
  }
}

- (void)fileTransfer:(id)transfer updatedWithProperties:(id)properties
{
  transferCopy = transfer;
  propertiesCopy = properties;
  v6 = +[IMDaemonController sharedController];
  v7 = [v6 capabilitiesForListenerID:0];
  v8 = *MEMORY[0x1E69A6268] & v7;

  if (v8)
  {
    v9 = +[IMFileTransferCenter sharedInstance];
    [v9 _handleFileTransfer:transferCopy updatedWithProperties:propertiesCopy];
  }
}

- (void)fileTransfer:(id)transfer rejectedWithProperties:(id)properties
{
  transferCopy = transfer;
  propertiesCopy = properties;
  v6 = +[IMDaemonController sharedController];
  v7 = [v6 capabilitiesForListenerID:0];
  v8 = *MEMORY[0x1E69A6268] & v7;

  if (v8)
  {
    v9 = +[IMFileTransferCenter sharedInstance];
    [v9 _handleFileTransfer:transferCopy rejectedWithProperties:propertiesCopy];
  }
}

- (void)fileTransfer:(id)transfer updatedWithCurrentBytes:(unint64_t)bytes totalBytes:(unint64_t)totalBytes averageTransferRate:(unint64_t)rate
{
  transferCopy = transfer;
  v9 = +[IMDaemonController sharedController];
  v10 = [v9 capabilitiesForListenerID:0];
  v11 = *MEMORY[0x1E69A6268] & v10;

  if (v11)
  {
    v12 = +[IMFileTransferCenter sharedInstance];
    [v12 _handleFileTransfer:transferCopy updatedWithCurrentBytes:bytes totalBytes:totalBytes averageTransferRate:rate];
  }
}

- (void)fileTransferFinishedRemoteIntentDownload:(id)download
{
  downloadCopy = download;
  v3 = +[IMDaemonController sharedController];
  v4 = [v3 capabilitiesForListenerID:0];
  v5 = *MEMORY[0x1E69A6268] & v4;

  if (v5)
  {
    v6 = +[IMFileTransferCenter sharedInstance];
    [v6 _handleFileTransferFinishedRemoteIntentDownload:downloadCopy];
  }
}

- (void)fileTransfer:(id)transfer highQualityDownloadSucceededWithPath:(id)path
{
  transferCopy = transfer;
  pathCopy = path;
  v6 = +[IMDaemonController sharedController];
  v7 = [v6 capabilitiesForListenerID:0];
  v8 = *MEMORY[0x1E69A6268] & v7;

  if (v8)
  {
    v9 = +[IMFileTransferCenter sharedInstance];
    [v9 _handleFileTransfer:transferCopy highQualityDownloadSucceededWithPath:pathCopy];
  }
}

- (void)fileTransferHighQualityDownloadFailed:(id)failed
{
  failedCopy = failed;
  v3 = +[IMDaemonController sharedController];
  v4 = [v3 capabilitiesForListenerID:0];
  v5 = *MEMORY[0x1E69A6268] & v4;

  if (v5)
  {
    v6 = +[IMFileTransferCenter sharedInstance];
    [v6 _handleFileTransferHighQualityDownloadFailed:failedCopy];
  }
}

- (void)fileTransfer:(id)transfer explicitDownloadSucceededWithPath:(id)path livePhotoBundlePath:(id)bundlePath
{
  transferCopy = transfer;
  pathCopy = path;
  bundlePathCopy = bundlePath;
  v9 = +[IMDaemonController sharedController];
  v10 = [v9 capabilitiesForListenerID:0];

  if ((v10 & 0x10000000) != 0)
  {
    v11 = +[IMFileTransferCenter sharedInstance];
    [v11 _handleFileTransfer:transferCopy explicitDownloadSucceededWithPath:pathCopy livePhotoBundlePath:bundlePathCopy];
  }
}

- (void)fileTransferExplicitDownloadFailed:(id)failed suggestedRetryGUID:(id)d error:(id)error
{
  failedCopy = failed;
  dCopy = d;
  errorCopy = error;
  v9 = +[IMDaemonController sharedController];
  v10 = [v9 capabilitiesForListenerID:0];

  if ((v10 & 0x10000000) != 0)
  {
    v11 = +[IMFileTransferCenter sharedInstance];
    [v11 _handleFileTransferExplicitDownloadFailed:failedCopy suggestedRetryGUID:dCopy error:errorCopy];
  }
}

- (void)fileTransferDownloadedSucceededWithLocalURL:(id)l
{
  lCopy = l;
  v3 = +[IMDaemonController sharedController];
  v4 = [v3 capabilitiesForListenerID:0];

  if ((v4 & 0x10000000) != 0)
  {
    v5 = +[IMFileTransferCenter sharedInstance];
    [v5 _handleFileTransferDownloadSucceededWithLocalURL:lCopy];
  }
}

- (void)fileTransferDownloadFailedWithLocalURL:(id)l error:(id)error
{
  lCopy = l;
  errorCopy = error;
  v6 = +[IMDaemonController sharedController];
  v7 = [v6 capabilitiesForListenerID:0];

  if ((v7 & 0x10000000) != 0)
  {
    v8 = +[IMFileTransferCenter sharedInstance];
    [v8 _handleFileTransferDownloadFailedWithLocalURL:lCopy error:errorCopy];
  }
}

- (void)account:(id)account groupsChanged:(id)changed error:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  changedCopy = changed;
  errorCopy = error;
  v11 = +[IMAccountController sharedInstance];
  v19 = [v11 accountForUniqueID:accountCopy];

  v12 = objc_autoreleasePoolPush();
  [v19 groupsChanged:changedCopy error:errorCopy];
  objc_autoreleasePoolPop(v12);
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = _copyForEnumerating;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v18 account:accountCopy groupsChanged:changedCopy error:errorCopy];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }
}

- (void)account:(id)account handleSubscriptionRequestFrom:(id)from withMessage:(id)message
{
  v24 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  fromCopy = from;
  messageCopy = message;
  v11 = +[IMAccountController sharedInstance];
  v18 = [v11 accountForUniqueID:accountCopy];

  [v18 handleSubscriptionRequestFrom:fromCopy withMessage:messageCopy];
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = _copyForEnumerating;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v17 account:accountCopy handleSubscriptionRequestFrom:fromCopy withMessage:messageCopy];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }
}

- (void)account:(id)account postedError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  errorCopy = error;
  if (errorCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:*MEMORY[0x1E69A5F58] object:errorCopy userInfo:0];
  }

  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = _copyForEnumerating;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v14 account:accountCopy postedError:errorCopy];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)_setStamp:(id)stamp forContext:(id)context
{
  stampCopy = stamp;
  contextCopy = context;
  if (contextCopy)
  {
    contexts = self->_contexts;
    v8 = stampCopy;
    if (stampCopy)
    {
      if (!contexts)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v10 = self->_contexts;
        self->_contexts = Mutable;

        v8 = stampCopy;
        contexts = self->_contexts;
      }

      [(NSMutableDictionary *)contexts setObject:v8 forKey:contextCopy];
    }

    else
    {
      [(NSMutableDictionary *)contexts removeObjectForKey:contextCopy];
      if (![(NSMutableDictionary *)self->_contexts count])
      {
        v11 = self->_contexts;
        self->_contexts = 0;
      }
    }
  }
}

- (void)_cacheValue:(id)value forProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  if (propertyCopy)
  {
    properties = self->_properties;
    if (valueCopy)
    {
      [(NSMutableDictionary *)properties setObject:valueCopy forKey:propertyCopy];
    }

    else
    {
      [(NSMutableDictionary *)properties removeObjectForKey:propertyCopy];
    }
  }
}

- (void)property:(id)property changedTo:(id)to from:(id)from
{
  v22 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  toCopy = to;
  fromCopy = from;
  [(_IMLegacyDaemonListener *)self _cacheValue:toCopy forProperty:propertyCopy];
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = _copyForEnumerating;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v17 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v16 property:propertyCopy changedTo:toCopy from:fromCopy];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)_cacheValue:(id)value forPersistentProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  if (propertyCopy)
  {
    persistentProperties = self->_persistentProperties;
    if (valueCopy)
    {
      [(NSMutableDictionary *)persistentProperties setObject:valueCopy forKey:propertyCopy];
    }

    else
    {
      [(NSMutableDictionary *)persistentProperties removeObjectForKey:propertyCopy];
    }
  }
}

- (void)persistentProperty:(id)property changedTo:(id)to from:(id)from
{
  v22 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  toCopy = to;
  fromCopy = from;
  [(_IMLegacyDaemonListener *)self _cacheValue:toCopy forPersistentProperty:propertyCopy];
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = _copyForEnumerating;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v17 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v16 persistentProperty:propertyCopy changedTo:toCopy from:fromCopy];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)account:(id)account status:(id)status capabilities:(unint64_t)capabilities serviceLoginStatus:(unint64_t)loginStatus loginStatusMessage:(id)message
{
  v28 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  statusCopy = status;
  messageCopy = message;
  v14 = +[IMAccountController sharedInstance];
  v21 = [v14 accountForUniqueID:accountCopy];

  [v21 updateCapabilities:capabilities];
  [v21 setIMAccountLoginStatus:loginStatus];
  [v21 setCurrentAccountStatus:statusCopy];
  [(_IMLegacyDaemonListener *)self _processMyStatusChanged];
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = _copyForEnumerating;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v17)
  {
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v20 account:accountCopy status:statusCopy capabilities:capabilities serviceLoginStatus:loginStatus loginStatusMessage:messageCopy];
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }
}

- (void)services:(id)services properties:(id)properties persistentProperties:(id)persistentProperties
{
  v55 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  propertiesCopy = properties;
  persistentPropertiesCopy = persistentProperties;
  [(NSMutableDictionary *)self->_properties removeAllObjects];
  v41 = propertiesCopy;
  [(NSMutableDictionary *)self->_properties addEntriesFromDictionary:propertiesCopy];
  [(NSMutableDictionary *)self->_persistentProperties removeAllObjects];
  selfCopy = self;
  v40 = persistentPropertiesCopy;
  [(NSMutableDictionary *)self->_persistentProperties addEntriesFromDictionary:persistentPropertiesCopy];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = servicesCopy;
  v12 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (!v12)
  {
    v32 = v11;
LABEL_48:

    goto LABEL_50;
  }

  log = 0;
  v13 = *v48;
  do
  {
    for (i = 0; i != v12; i = (i + 1))
    {
      if (*v48 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v47 + 1) + 8 * i);
      v16 = +[IMDaemonController sharedController];
      _servicesToAllow = [v16 _servicesToAllow];

      if (![_servicesToAllow count])
      {
        goto LABEL_16;
      }

      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v52 = _servicesToAllow;
          _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Allowing only services: %@", buf, 0xCu);
        }
      }

      v19 = [_servicesToAllow containsObject:v15];
      v20 = IMOSLoggingEnabled();
      if (v19)
      {
        if (v20)
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v52 = v15;
            _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "  Allowing: %@", buf, 0xCu);
          }
        }

LABEL_16:
        v22 = +[IMDaemonController sharedController];
        _servicesToDeny = [v22 _servicesToDeny];

        if ([_servicesToDeny count])
        {
          if (IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v52 = _servicesToDeny;
              _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Denying services: %@", buf, 0xCu);
            }
          }

          v25 = [_servicesToDeny containsObject:v15];
          v26 = IMOSLoggingEnabled();
          if (v25)
          {
            if (v26)
            {
              v27 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v52 = v15;
                _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "  Skipping: %@", buf, 0xCu);
              }

              goto LABEL_41;
            }

            goto LABEL_42;
          }

          if (v26)
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v52 = v15;
              _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "  Allowing: %@", buf, 0xCu);
            }
          }
        }

        v27 = [(NSMutableDictionary *)selfCopy->_services objectForKey:v15];
        if (!v27)
        {
          v27 = [IMServiceImpl serviceWithInternalName:v15];
          if (v27)
          {
            v30 = log;
            if (!log)
            {
              services = selfCopy->_services;
              if (services)
              {
                v30 = [(NSMutableDictionary *)services mutableCopy];
              }

              else
              {
                v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
              }
            }

            [v30 setObject:v27 forKey:v15, v30];
          }
        }

LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      if (v20)
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v52 = v15;
          _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "  Skipping: %@", buf, 0xCu);
        }
      }

LABEL_43:
    }

    v12 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v47 objects:v54 count:16];
  }

  while (v12);

  if (log)
  {
    v12 = log;
    v32 = selfCopy->_services;
    selfCopy->_services = v12;
    goto LABEL_48;
  }

  v12 = 0;
LABEL_50:
  _copyForEnumerating = [(NSMutableArray *)selfCopy->_handlers _copyForEnumerating];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v34 = _copyForEnumerating;
  v35 = [v34 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v35)
  {
    v36 = *v44;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v44 != v36)
        {
          objc_enumerationMutation(v34);
        }

        v38 = *(*(&v43 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v38 services:v11 properties:v41 persistentProperties:v40];
        }
      }

      v35 = [v34 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v35);
  }
}

- (void)service:(id)service properties:(id)properties defaults:(id)defaults defaultAccountSettings:(id)settings allAccounts:(id)accounts activeAccounts:(id)activeAccounts
{
  v115 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  propertiesCopy = properties;
  defaultsCopy = defaults;
  settingsCopy = settings;
  accountsCopy = accounts;
  activeAccountsCopy = activeAccounts;
  v13 = +[IMDaemonController sharedController];
  _servicesToAllow = [v13 _servicesToAllow];

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v110 = serviceCopy;
      v111 = 2112;
      v112 = accountsCopy;
      v113 = 2112;
      v114 = activeAccountsCopy;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Service: %@   all accounts: %@   activeAccounts: %@", buf, 0x20u);
    }
  }

  if ([_servicesToAllow count] && (objc_msgSend(_servicesToAllow, "containsObject:", serviceCopy) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v110 = serviceCopy;
        _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_INFO, "  Skipping: %@ (not allowed)", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = +[IMDaemonController sharedController];
    _servicesToDeny = [v15 _servicesToDeny];

    if ([_servicesToDeny count] && objc_msgSend(_servicesToDeny, "containsObject:", serviceCopy))
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v110 = serviceCopy;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "  Skipping: %@ (denied)", buf, 0xCu);
        }
      }
    }

    else
    {
      v77 = [IMServiceImpl serviceWithInternalName:serviceCopy];
      [v77 setServiceProperties:propertiesCopy];
      [v77 setServiceDefaults:defaultsCopy];
      [v77 setDefaultAccountSettings:settingsCopy];
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      obj = accountsCopy;
      v17 = [obj countByEnumeratingWithState:&v99 objects:v108 count:16];
      if (v17)
      {
        v18 = *v100;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v100 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v99 + 1) + 8 * i);
            v21 = +[IMAccountController sharedInstance];
            v22 = [v21 accountForUniqueID:v20];

            if (!v22)
            {
              v23 = [(_IMLegacyDaemonListener *)self serviceWithName:serviceCopy];
              v24 = [[IMAccount alloc] initWithUniqueID:v20 service:v23];
              if (v24)
              {
                v25 = +[IMAccountController sharedInstance];
                [v25 addAccount:v24 locally:1];
              }
            }
          }

          v17 = [obj countByEnumeratingWithState:&v99 objects:v108 count:16];
        }

        while (v17);
      }

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v26 = +[IMAccountController sharedInstance];
      accounts = [v26 accounts];

      v28 = 0;
      v29 = [accounts countByEnumeratingWithState:&v95 objects:v107 count:16];
      if (v29)
      {
        v70 = 0;
        v30 = 0;
        v31 = *v96;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v96 != v31)
            {
              objc_enumerationMutation(accounts);
            }

            v33 = *(*(&v95 + 1) + 8 * j);
            service = [v33 service];
            v35 = service == v77;

            if (v35)
            {
              uniqueID = [v33 uniqueID];
              v37 = [activeAccountsCopy containsObject:uniqueID];

              if (v37)
              {
                if (v30)
                {
                  v38 = v30;
                }

                else
                {
                  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v30 = v38;
                }
              }

              else
              {
                v38 = v70;
                if (!v70)
                {
                  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v70 = v38;
                }
              }

              [v38 addObject:v33];
              uniqueID2 = [v33 uniqueID];
              v40 = [obj containsObject:uniqueID2];

              if ((v40 & 1) == 0)
              {
                v41 = v28;
                if (!v28)
                {
                  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                v28 = v41;
                [v41 addObject:v33];
              }
            }
          }

          v29 = [accounts countByEnumeratingWithState:&v95 objects:v107 count:16];
        }

        while (v29);
      }

      else
      {
        v70 = 0;
        v30 = 0;
      }

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v43 = v30;
      v44 = [v43 countByEnumeratingWithState:&v91 objects:v106 count:16];
      if (v44)
      {
        v45 = *v92;
        do
        {
          for (k = 0; k != v44; ++k)
          {
            if (*v92 != v45)
            {
              objc_enumerationMutation(v43);
            }

            v47 = *(*(&v91 + 1) + 8 * k);
            v48 = +[IMAccountController sharedInstance];
            [v48 activateAccount:v47 locally:1];
          }

          v44 = [v43 countByEnumeratingWithState:&v91 objects:v106 count:16];
        }

        while (v44);
      }

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v49 = v70;
      v50 = [v49 countByEnumeratingWithState:&v87 objects:v105 count:16];
      if (v50)
      {
        v51 = *v88;
        do
        {
          for (m = 0; m != v50; ++m)
          {
            if (*v88 != v51)
            {
              objc_enumerationMutation(v49);
            }

            v53 = *(*(&v87 + 1) + 8 * m);
            v54 = +[IMAccountController sharedInstance];
            [v54 deactivateAccount:v53 withDisable:0];
          }

          v50 = [v49 countByEnumeratingWithState:&v87 objects:v105 count:16];
        }

        while (v50);
      }

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v55 = v28;
      v56 = [v55 countByEnumeratingWithState:&v83 objects:v104 count:16];
      if (v56)
      {
        v57 = *v84;
        do
        {
          for (n = 0; n != v56; ++n)
          {
            if (*v84 != v57)
            {
              objc_enumerationMutation(v55);
            }

            v59 = *(*(&v83 + 1) + 8 * n);
            v60 = +[IMAccountController sharedInstance];
            [v60 deleteAccount:v59 locally:1];
          }

          v56 = [v55 countByEnumeratingWithState:&v83 objects:v104 count:16];
        }

        while (v56);
      }

      _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v62 = _copyForEnumerating;
      v63 = [v62 countByEnumeratingWithState:&v79 objects:v103 count:16];
      if (v63)
      {
        v64 = *v80;
        do
        {
          for (ii = 0; ii != v63; ++ii)
          {
            if (*v80 != v64)
            {
              objc_enumerationMutation(v62);
            }

            v66 = *(*(&v79 + 1) + 8 * ii);
            if (objc_opt_respondsToSelector())
            {
              [v66 service:serviceCopy properties:propertiesCopy defaults:defaultsCopy defaultAccountSettings:settingsCopy allAccounts:obj activeAccounts:activeAccountsCopy];
            }
          }

          v63 = [v62 countByEnumeratingWithState:&v79 objects:v103 count:16];
        }

        while (v63);
      }
    }
  }
}

- (void)account:(id)account defaults:(id)defaults blockList:(id)list allowList:(id)allowList blockingMode:(unsigned int)mode blockIdleStatus:(BOOL)status status:(id)a9 capabilities:(unint64_t)self0 serviceLoginStatus:(unint64_t)self1 loginStatusMessage:(id)self2
{
  messageCopy = message;
  v16 = a9;
  accountCopy = account;
  [(_IMLegacyDaemonListener *)self account:accountCopy defaultsChanged:defaults];
  [(_IMLegacyDaemonListener *)self account:accountCopy status:v16 capabilities:capabilities serviceLoginStatus:loginStatus loginStatusMessage:messageCopy];
}

- (void)setupComplete:(BOOL)complete info:(id)info
{
  completeCopy = complete;
  v94 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (completeCopy)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v90 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Setup complete with success %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "Setup starting", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = MarcoLoggingStringForMessageData();
      *buf = 138412290;
      v90 = v9;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEBUG, "Setup info: %@", buf, 0xCu);
    }
  }

  mEMORY[0x1E69A7F68] = [MEMORY[0x1E69A7F68] sharedInstance];
  v11 = [infoCopy objectForKey:*MEMORY[0x1E69A7B70]];
  [mEMORY[0x1E69A7F68] setAllowedChatBotExtensions:v11];

  v12 = [infoCopy objectForKey:*MEMORY[0x1E69A7B80]];
  LODWORD(mEMORY[0x1E69A7F68]) = [v12 intValue];

  v13 = +[IMDaemonController sharedController];
  [v13 setProcessCapabilities:mEMORY[0x1E69A7F68]];

  v14 = [infoCopy objectForKey:*MEMORY[0x1E69A7BF8]];
  v15 = [infoCopy objectForKey:*MEMORY[0x1E69A7BF0]];
  v16 = [infoCopy objectForKey:*MEMORY[0x1E69A7BE0]];
  [(_IMLegacyDaemonListener *)self services:v14 properties:v15 persistentProperties:v16];

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = [infoCopy objectForKey:*MEMORY[0x1E69A7C00]];
  v70 = [obj countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (v70)
  {
    v69 = *v86;
    do
    {
      v17 = 0;
      do
      {
        if (*v86 != v69)
        {
          v18 = v17;
          objc_enumerationMutation(obj);
          v17 = v18;
        }

        v71 = v17;
        v19 = *(*(&v85 + 1) + 8 * v17);
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v90 = v19;
            _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_DEBUG, "Service info: %@", buf, 0xCu);
          }
        }

        v21 = [v19 objectForKey:*MEMORY[0x1E69A7AB8]];
        v22 = [v19 objectForKey:*MEMORY[0x1E69A7AC0]];
        v23 = [v19 objectForKey:*MEMORY[0x1E69A7AB0]];
        v24 = [v19 objectForKey:*MEMORY[0x1E69A7AA8]];
        v25 = [v19 objectForKey:*MEMORY[0x1E69A7A98]];
        v26 = [v19 objectForKey:*MEMORY[0x1E69A7AA0]];
        [(_IMLegacyDaemonListener *)self service:v21 properties:v22 defaults:v23 defaultAccountSettings:v24 allAccounts:v25 activeAccounts:v26];

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v73 = [v19 objectForKey:*MEMORY[0x1E69A7A90]];
        v75 = [v73 countByEnumeratingWithState:&v81 objects:v92 count:16];
        if (v75)
        {
          v74 = *v82;
          do
          {
            for (i = 0; i != v75; ++i)
            {
              if (*v82 != v74)
              {
                objc_enumerationMutation(v73);
              }

              v28 = *(*(&v81 + 1) + 8 * i);
              v29 = objc_autoreleasePoolPush();
              if (IMOSLoggingEnabled())
              {
                v30 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v90 = v28;
                  _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_DEBUG, "Account info: %@", buf, 0xCu);
                }
              }

              v31 = [v28 objectForKey:*MEMORY[0x1E69A6808]];
              v32 = [v28 objectForKey:*MEMORY[0x1E69A67F8]];
              [(_IMLegacyDaemonListener *)self account:v31 defaultsChanged:v32];

              v33 = [v28 objectForKey:*MEMORY[0x1E69A6820]];
              v34 = [v28 objectForKey:*MEMORY[0x1E69A67F0]];
              unsignedLongLongValue = [v34 unsignedLongLongValue];
              v36 = [v28 objectForKey:*MEMORY[0x1E69A6810]];
              intValue = [v36 intValue];
              v38 = [v28 objectForKey:*MEMORY[0x1E69A6818]];
              [(_IMLegacyDaemonListener *)self account:v31 status:v33 capabilities:unsignedLongLongValue serviceLoginStatus:intValue loginStatusMessage:v38];

              v39 = [v28 objectForKey:*MEMORY[0x1E69A6800]];
              if (v39)
              {
                [(_IMLegacyDaemonListener *)self account:v31 groupsChanged:v39 error:0];
              }

              objc_autoreleasePoolPop(v29);
            }

            v75 = [v73 countByEnumeratingWithState:&v81 objects:v92 count:16];
          }

          while (v75);
        }

        v17 = v71 + 1;
      }

      while (v71 + 1 != v70);
      v70 = [obj countByEnumeratingWithState:&v85 objects:v93 count:16];
    }

    while (v70);
  }

  v40 = [infoCopy objectForKey:*MEMORY[0x1E69A7B98]];
  [(_IMLegacyDaemonListener *)self _setStamp:v40 forContext:@"DBModificationStamp"];
  v41 = [infoCopy objectForKey:*MEMORY[0x1E69A7BA8]];
  [(_IMLegacyDaemonListener *)self _setStamp:v41 forContext:@"fileTransfers"];
  v42 = +[IMDaemonController sharedController];
  v43 = [v42 capabilitiesForListenerID:0];
  v44 = (*MEMORY[0x1E69A6268] & v43) == 0;

  if (v44)
  {
    if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_DEBUG, "Clearing file transfer center", buf, 2u);
      }
    }

    v45 = +[IMFileTransferCenter sharedInstance];
    [v45 _handleAllFileTransfers:0];
  }

  else
  {
    v45 = [infoCopy objectForKey:*MEMORY[0x1E69A7BA0]];
    v46 = IMOSLoggingEnabled();
    if (v45)
    {
      if (v46)
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v47, OS_LOG_TYPE_DEBUG, "Updating file transfers", buf, 2u);
        }
      }

      v48 = +[IMFileTransferCenter sharedInstance];
      [v48 _handleAllFileTransfers:v45];
    }

    else if (v46)
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_DEBUG, "Not updating file transfers", buf, 2u);
      }
    }

    v51 = [infoCopy objectForKey:*MEMORY[0x1E69A7BC0]];
    v52 = IMOSLoggingEnabled();
    if (v51)
    {
      if (v52)
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_DEBUG, "Updating file transfers for group photo", buf, 2u);
        }
      }

      v54 = +[IMFileTransferCenter sharedInstance];
      [v54 _handleAllFileTransfers:v51];
    }

    else if (v52)
    {
      v55 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v55, OS_LOG_TYPE_DEBUG, "Not updating file transfers for group photo", buf, 2u);
      }
    }
  }

  self->_setupComplete = 1;
  v56 = +[IMDaemonController sharedController];
  v57 = [v56 capabilitiesForListenerID:0];
  v58 = (*MEMORY[0x1E69A62A0] & v57) == 0;

  if (v58)
  {
    [(_IMLegacyDaemonListener *)self _reallyProcessMyStatusChanged];
    v59 = +[IMMe me];
    [v59 rebuildIMHandles];
  }

  if (IMOSLoggingEnabled())
  {
    v60 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      services = self->_services;
      *buf = 138412290;
      v90 = services;
      _os_log_impl(&dword_1A823F000, v60, OS_LOG_TYPE_DEBUG, "Setup is complete (Services: %@)", buf, 0xCu);
    }
  }

  [(_IMLegacyDaemonListener *)self _deferredSetup:infoCopy];
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v63 = _copyForEnumerating;
  v64 = [v63 countByEnumeratingWithState:&v77 objects:v91 count:16];
  if (v64)
  {
    v65 = *v78;
    do
    {
      for (j = 0; j != v64; ++j)
      {
        if (*v78 != v65)
        {
          objc_enumerationMutation(v63);
        }

        v67 = *(*(&v77 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v67 setupComplete:1 info:infoCopy];
        }
      }

      v64 = [v63 countByEnumeratingWithState:&v77 objects:v91 count:16];
    }

    while (v64);
  }
}

- (void)_deferredSetup:(id)setup
{
  v63 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Performing deferred setup", buf, 2u);
    }
  }

  v5 = +[IMChatRegistry sharedRegistry];
  [v5 _daemonBeganDeferredSetup];

  v6 = +[IMDaemonController sharedController];
  v7 = [v6 capabilitiesForListenerID:0];
  v49 = *MEMORY[0x1E69A6260];
  v8 = ((*MEMORY[0x1E69A62B0] | *MEMORY[0x1E69A6258] | *MEMORY[0x1E69A6260]) & v7) == 0;

  if (v8)
  {
    v17 = +[IMChatRegistry sharedRegistry];
    [v17 _handleChatReconstructions:0];
    goto LABEL_27;
  }

  v9 = +[IMKeyTransparencyController sharedController];
  [v9 setupComplete:1 info:setupCopy];

  v10 = [setupCopy objectForKey:*MEMORY[0x1E69A7BB8]];
  intValue = [v10 intValue];

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      if (intValue)
      {
        v13 = @"YES";
      }

      *buf = 138412290;
      v60 = v13;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Setup info uses legacy chat version: %@", buf, 0xCu);
    }
  }

  v14 = intValue != 0;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  [mEMORY[0x1E69A8070] _setOneChatForceDisabled:v14 persist:0];

  v16 = MEMORY[0x1E69A7B90];
  v17 = [setupCopy objectForKey:*MEMORY[0x1E69A7B90]];
  v18 = [setupCopy objectForKey:*MEMORY[0x1E69A7BE8]];
  v19 = [setupCopy objectForKey:*MEMORY[0x1E69A7B78]];
  v20 = [setupCopy objectForKey:*MEMORY[0x1E69A7B88]];
  v21 = [setupCopy objectForKey:*MEMORY[0x1E69A7BB0]];
  if (v19)
  {
    v22 = +[IMChatRegistry sharedRegistry];
    [v22 _handleCachingAliasToCNIDMap:v19];
  }

  if (v18)
  {
    v23 = +[IMChatRegistry sharedRegistry];
    [v23 _handleMergedChatReconstructions:v18];
LABEL_19:

    goto LABEL_20;
  }

  if (v17)
  {
    v23 = +[IMChatRegistry sharedRegistry];
    v24 = [setupCopy objectForKey:*v16];
    [v23 _handleChatReconstructions:v24];

    goto LABEL_19;
  }

LABEL_20:
  if (v20)
  {
    v25 = +[IMChatRegistry sharedRegistry];
    [v25 _updateBlackholedChatsExist:{objc_msgSend(v20, "BOOLValue")}];
  }

  if (v21)
  {
    v26 = +[IMChatRegistry sharedRegistry];
    [v26 _updateFilterediMessageChatsExist:{objc_msgSend(v21, "BOOLValue")}];
  }

  v27 = +[IMChatRegistry sharedRegistry];
  [v27 updateRecoverableMessagesMetadataSynchronously:0 loadChats:0 completionHandler:0];

  v28 = [setupCopy objectForKey:*MEMORY[0x1E69A7BD8]];
  if (v28)
  {
    mEMORY[0x1E69A80A8] = [MEMORY[0x1E69A80A8] sharedInstance];
    [mEMORY[0x1E69A80A8] _setCachedOverrideDatesByHandleID:v28];
  }

LABEL_27:
  v30 = [setupCopy objectForKey:*MEMORY[0x1E69A7C28]];
  -[_IMLegacyDaemonListener vcCapabilitiesChanged:](self, "vcCapabilitiesChanged:", [v30 unsignedLongLongValue]);

  v31 = +[IMChatRegistry sharedRegistry];
  [v31 _daemonCompletedDeferredSetup];

  self->_postedSetupComplete = 1;
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v33 = _copyForEnumerating;
  v34 = [v33 countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v34)
  {
    v35 = *v56;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v56 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = *(*(&v55 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v37 setupComplete];
        }
      }

      v34 = [v33 countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v34);
  }

  if (![(_IMLegacyDaemonListener *)self _hidingDisconnect])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMDaemonDidConnectNotification" object:0];
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v39 = +[IMServiceImpl allServicesNonBlocking];
  v40 = [v39 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v40)
  {
    v41 = *v52;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v52 != v41)
        {
          objc_enumerationMutation(v39);
        }

        v43 = *(*(&v51 + 1) + 8 * j);
        if (![(_IMLegacyDaemonListener *)self _hidingDisconnect])
        {
          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter2 __mainThreadPostNotificationName:@"ServiceDidConnect" object:v43];
        }

        defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter3 __mainThreadPostNotificationName:@"__k_IMServiceDidConnectNotification" object:v43];
      }

      v40 = [v39 countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v40);
  }

  v46 = +[IMDaemonController sharedController];
  capabilities = [v46 capabilities];

  if ((capabilities & v49) != 0)
  {
    IMSMSReportSpamActivateExtensions();
  }

  v48 = +[IMDaemonController sharedController];
  [v48 _noteSetupComplete];
}

- (void)newSetupInfoAvailable
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Received notice from daemon that setup info has been invalidated, re-requesting", v7, 2u);
    }
  }

  v3 = +[IMDaemonController sharedController];
  [v3 requestSetup];

  v4 = +[IMDaemonController sharedController];
  blockMainThreadForNewSetup = [v4 blockMainThreadForNewSetup];

  if (blockMainThreadForNewSetup)
  {
    v6 = +[IMDaemonController sharedController];
    [v6 blockUntilConnected];
  }
}

- (void)databaseUpdated:(id)updated
{
  v27 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  if (updatedCopy)
  {
    [(_IMLegacyDaemonListener *)self _setStamp:updatedCopy forContext:@"DBModificationStamp"];
  }

  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = _copyForEnumerating;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v10 databaseUpdated:updatedCopy];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  _copyForEnumerating2 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = _copyForEnumerating2;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v17 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v16 databaseUpdated];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)databaseChatSpamUpdated:(id)updated
{
  v16 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = _copyForEnumerating;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v10 databaseChatSpamUpdated:updatedCopy];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)didFetchSyncStateStats:(id)stats
{
  v13 = *MEMORY[0x1E69E9840];
  statsCopy = stats;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = statsCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, "didFetchSyncStateStats %@", buf, 0xCu);
    }
  }

  if (statsCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = @"IMCloudKitSyncStatisticsKey";
    v10 = statsCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [defaultCenter postNotificationName:@"IMCloudKitFetchedSyncStatsNotification" object:self userInfo:v7];
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Received nil sync state stats", buf, 2u);
    }
  }
}

- (void)didFetchRampState:(id)state
{
  v13 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = stateCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, "didFetchRampState %@", buf, 0xCu);
    }
  }

  if (stateCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = @"IMCloudKitRampStateKey";
    v10 = stateCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [defaultCenter postNotificationName:@"IMCloudKitFetchedRampStateNotification" object:self userInfo:v7];
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Received nil rampState", buf, 2u);
    }
  }
}

- (void)didAttemptToDisableiCloudBackups:(int64_t)backups error:(id)error
{
  v21[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (errorCopy)
  {
    v20[0] = @"IMCloudKitBackupDisableBackupAttemptResultKey";
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:backups];
    v20[1] = @"IMCloudKitBackupDisableBackupAttemptErrorKey";
    v21[0] = v7;
    v21[1] = errorCopy;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        localizedDescription = [errorCopy localizedDescription];
        *buf = 134218242;
        backupsCopy2 = backups;
        v18 = 2112;
        v19 = localizedDescription;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Attempt to disable iCloud backups resulted in error. Result: %ld, error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{backups, @"IMCloudKitBackupDisableBackupAttemptResultKey"}];
    v15 = v11;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        backupsCopy2 = backups;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "did attempt to disable iCloud backups: %ld", buf, 0xCu);
      }
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"IMCloudKitAttemptedToDisableiCloudBackupsNotification" object:self userInfo:v8];
}

- (void)didFetchCloudKitSyncDebuggingInfo:(id)info
{
  v9 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = infoCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "did fetch cloudkit sync state debugging info: %@", &v7, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"IMCloudKitFetchedSyncDebuggingInfoNotification" object:self userInfo:infoCopy];
}

- (void)forwardInvocation:(id)invocation
{
  v18 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMutableArray *)self->_handlers copy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [invocationCopy selector];
        if (objc_opt_respondsToSelector())
        {
          v12 = objc_autoreleasePoolPush();
          [invocationCopy invokeWithTarget:v11];
          objc_autoreleasePoolPop(v12);
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)qosClassWhileServicingRequestsResponse:(unsigned int)response identifier:(id)identifier
{
  v4 = *&response;
  v12[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AD88];
  identifierCopy = identifier;
  defaultCenter = [v6 defaultCenter];
  v11[0] = @"Identifier";
  v11[1] = @"QOSClass";
  v12[0] = identifierCopy;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  [defaultCenter postNotificationName:@"IMDaemonListenerReceivedQOSClassWhileServicingRequestsResponseNotification" object:self userInfo:v10];
}

- (void)didAttemptToSetEnabledTo:(BOOL)to result:(BOOL)result
{
  resultCopy = result;
  toCopy = to;
  v6 = +[IMCloudKitHooks sharedInstance];
  [v6 _didAttemptToSetEnabledTo:toCopy result:resultCopy];
}

- (void)didPerformAdditionalStorageRequiredCheckWithSuccess:(BOOL)success additionalStorageRequired:(unint64_t)required forAccountId:(id)id error:(id)error
{
  successCopy = success;
  errorCopy = error;
  idCopy = id;
  v11 = +[IMCloudKitHooks sharedInstance];
  [v11 _didPerformAdditionalStorageRequiredCheckWithSuccess:successCopy additionalStorageRequired:required forAccountId:idCopy error:errorCopy];
}

- (void)didAttemptToDisableAllDevicesResult:(BOOL)result
{
  resultCopy = result;
  v4 = +[IMCloudKitHooks sharedInstance];
  [v4 _didAttemptToDisableAllDevicesResult:resultCopy];
}

- (void)updateCloudKitState
{
  v2 = +[IMCloudKitHooks sharedInstance];
  [v2 _updateCloudKitState];
}

- (void)updateCloudKitStateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = +[IMCloudKitHooks sharedInstance];
  [v4 _updateCloudKitStateWithDictionary:dictionaryCopy];
}

- (void)updateCloudKitProgressWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = +[IMCloudKitHooks sharedInstance];
  [v4 _updateCloudKitProgressWithDictionary:dictionaryCopy];
}

- (void)receivedUrgentRequestForMessages:(id)messages
{
  v16 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = _copyForEnumerating;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v10 receivedUrgentRequestForMessages:messagesCopy];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)updatePendingNicknameUpdates:(id)updates handledNicknames:(id)nicknames archivedNicknames:(id)archivedNicknames
{
  v28 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  nicknamesCopy = nicknames;
  archivedNicknamesCopy = archivedNicknames;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = updatesCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Got back pending nickname updates %@", buf, 0xCu);
    }
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(updatesCopy, "count")}];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1A82A3974;
  v24[3] = &unk_1E78109A0;
  v12 = v11;
  v25 = v12;
  [updatesCopy enumerateKeysAndObjectsUsingBlock:v24];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = nicknamesCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Got back handled nicknames %@", buf, 0xCu);
    }
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(nicknamesCopy, "count")}];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1A82A3A00;
  v22[3] = &unk_1E78109A0;
  v15 = v14;
  v23 = v15;
  [nicknamesCopy enumerateKeysAndObjectsUsingBlock:v22];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = archivedNicknamesCopy;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Got back archived nicknames %@", buf, 0xCu);
    }
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(archivedNicknamesCopy, "count")}];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A82A3A8C;
  v20[3] = &unk_1E78109A0;
  v21 = v17;
  v18 = v17;
  [archivedNicknamesCopy enumerateKeysAndObjectsUsingBlock:v20];
  v19 = +[IMNicknameController sharedInstance];
  [v19 updatePendingNicknames:v12 handledNicknames:v15 archivedNicknames:v18];
}

- (void)updateNicknameHandlesForSharing:(id)sharing blocked:(id)blocked
{
  blockedCopy = blocked;
  sharingCopy = sharing;
  v7 = +[IMNicknameController sharedInstance];
  [v7 updateSharingAllowList:sharingCopy denyList:blockedCopy];
}

- (void)updateTransitionedNicknameHandles:(id)handles
{
  handlesCopy = handles;
  v4 = +[IMNicknameController sharedInstance];
  [v4 updateTransitionedNicknameHandles:handlesCopy];
}

- (void)updateActiveNicknameRecords:(id)records
{
  recordsCopy = records;
  v4 = +[IMNicknameController sharedInstance];
  [v4 updateIsActiveList:recordsCopy];
}

- (void)updateIgnoredNicknameRecords:(id)records
{
  recordsCopy = records;
  v4 = +[IMNicknameController sharedInstance];
  [v4 updateIsIgnoredList:recordsCopy];
}

- (void)updateUnknownSenderRecords:(id)records
{
  recordsCopy = records;
  v4 = +[IMNicknameController sharedInstance];
  [v4 updateUnknownSenderRecords:recordsCopy];
}

- (void)updatePersonalNickname:(id)nickname
{
  nicknameCopy = nickname;
  v4 = +[IMNicknameController sharedInstance];
  [v4 updatePersonalNickname:nicknameCopy];
}

- (void)oneTimeCodesDidChange:(id)change
{
  v12 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(changeCopy, "count")}];
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Got the call back for validation codes count %@", buf, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"validCodes";
  v9 = changeCopy;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [defaultCenter postNotificationName:@"com.apple.imcore.otcUpdated" object:0 userInfo:v7];
}

- (void)_resetPostedSetupCompleted
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Resetting posted setup complete after changing listener caps", v4, 2u);
    }
  }

  self->_postedSetupComplete = 0;
}

- (void)simSubscriptionsDidChange
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Raising notification that SIM subscriptions have changed.", v4, 2u);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:*MEMORY[0x1E69A78C0] object:0];
}

- (void)account:(id)account conference:(id)conference remoteUser:(id)user properties:(id)properties
{
  v27 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  conferenceCopy = conference;
  userCopy = user;
  propertiesCopy = properties;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Received protected initiate request on CSD side, piping to IMAVHandler", buf, 2u);
    }
  }

  v15 = [(NSMutableArray *)self->_handlers copy];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v17)
  {
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v21 + 1) + 8 * v19);
        if (objc_opt_respondsToSelector())
        {
          [v20 account:accountCopy conference:conferenceCopy remoteUser:userCopy properties:{propertiesCopy, v21}];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v17);
  }
}

@end