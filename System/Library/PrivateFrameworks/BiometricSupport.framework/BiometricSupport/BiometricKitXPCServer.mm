@interface BiometricKitXPCServer
+ (void)initialize;
- ($89967B733E8F0E8859294B5D59E7AF0F)userAccountsInfo;
- (BOOL)hasMultipleUserAccounts;
- (BOOL)init;
- (BOOL)isCatacombAccessible;
- (BOOL)isClassCFileAccessible;
- (BOOL)isDisplayOn;
- (BOOL)isFingerprintModificationRestricted;
- (BOOL)isXARTAvailableWithClient:(id)client;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)setPreferencesValue:(id)value forKey:(id)key withClient:(id)client;
- (BOOL)templatesExistAtBoot;
- (BOOL)validateAllUsers;
- (BiometricKitXPCServer)init;
- (id)allClients;
- (id)catacombComponentForIdentity:(id)identity;
- (id)catacombFileNameForComponent:(id)component;
- (id)connectedAccessories;
- (id)createEnrollOperation;
- (id)createMatchEventDictionary:(id *)dictionary;
- (id)createMatchOperation;
- (id)createPresenceDetectOperation;
- (id)getAccessoryObject:(id *)object;
- (id)getIdentitiesDatabaseHashForUser:(unsigned int)user withClient:(id)client;
- (id)getIdentitiesDatabaseUUIDForUser:(unsigned int)user withClient:(id)client;
- (id)getIdentityFromUUID:(id)d withClient:(id)client;
- (id)getIdentityObject:(id *)object;
- (id)getIdentityObjectByUserID:(unsigned int)d UUID:(id)iD;
- (id)getProtectedConfigurationForUser:(unsigned int)user withClient:(id)client;
- (id)getSystemProtectedConfigurationWithClient:(id)client;
- (id)getUserKeybagUUIDForUID:(unsigned int)d;
- (id)hexDumpData:(char *)data size:(unint64_t)size;
- (id)identities;
- (id)identities:(id)identities withClient:(id)client;
- (id)identitiesOfComponent:(id)component;
- (id)identitiesOfUser:(unsigned int)user;
- (id)pairedAccessories;
- (id)stateDictionaryWithHints:(os_state_hints_s *)hints;
- (int)archiveCatacombDataForComponent:(id)component toArchiver:(id)archiver;
- (int)cacheAccessories;
- (int)cacheCatacombInfo;
- (int)cancelWithClient:(id)client;
- (int)checkCatacombForUser:(unsigned int)user;
- (int)checkTemplatesValidityForUser:(unsigned int)user;
- (int)detectPresenceWithOptions:(id)options withClient:(id)client;
- (int)displayStateChanged:(BOOL)changed;
- (int)dropUnlockTokenWithClient:(id)client;
- (int)enroll:(int)enroll forUser:(unsigned int)user withOptions:(id)options withClient:(id)client;
- (int)filterIdentities:(id)identities withFilter:(id)filter;
- (int)forceBioLockoutForUser:(unsigned int)user withOptions:(id)options withClient:(id)client;
- (int)getBioLockoutState:(int64_t *)state forUser:(unsigned int)user withClient:(id)client;
- (int)getBiometryAvailability:(int64_t *)availability forUser:(unsigned int)user withClient:(id)client;
- (int)getCatacombSaveListForComponents:(id)components list:(id *)list;
- (int)getDeviceHardwareState:(unsigned int *)state withClient:(id)client;
- (int)getExpressModeState:(int64_t *)state forUser:(unsigned int)user withClient:(id)client;
- (int)getFreeIdentityCount:(unint64_t *)count forUser:(unsigned int)user accessoryGroup:(id)group client:(id)client;
- (int)getLastMatchEvent:(id *)event withClient:(id)client;
- (int)getPreferencesValue:(id *)value forKey:(id)key withClient:(id)client;
- (int)getUserUUIDForUID:(unsigned int)d userUUID:(id *)iD;
- (int)getUserUUIDsForUIDs:(id)ds userUUIDs:(id *)iDs;
- (int)handleCatacombUnlock;
- (int)handleFirstUnlock;
- (int)initAutoBugCapture;
- (int)initEnrollOperation:(id)operation biometricType:(int)type userID:(unsigned int)d options:(id)options client:(id)client;
- (int)initMatchOperation:(id)operation filter:(id)filter options:(id)options client:(id)client;
- (int)initPresenceDetectOperation:(id)operation options:(id)options client:(id)client;
- (int)isValidUser:(unsigned int)user;
- (int)listAccessories:(id *)accessories client:(id)client;
- (int)loadCatacomb;
- (int)loadCatacombAfterFirstUnlock;
- (int)loadCatacombForComponent:(id)component;
- (int)loadCatacombForUser:(unsigned int)user;
- (int)logCatacombInfo:(id)info data:(id)data;
- (int)match:(id)match withOptions:(id)options withClient:(id)client;
- (int)parseAuthDict:(id)dict toAuthData:(id *)data;
- (int)pauseBioOperation:(id)operation;
- (int)processBioOperation:(id)operation;
- (int)readCatacombState;
- (int)removeAllIdentitiesForUser:(unsigned int)user withOptions:(id)options withClient:(id)client;
- (int)removeIdentity:(id)identity withOptions:(id)options withClient:(id)client;
- (int)removeUser:(unsigned int)user;
- (int)restoreAndSyncTemplates;
- (int)saveCatacomb;
- (int)saveCatacombForComponents:(id)components;
- (int)saveCatacombForIdentity:(id)identity;
- (int)saveCatacombIfDirtyWithInterval:(double)interval andDelay:(double)delay;
- (int)saveTemplateListAfterTemplateUpdate;
- (int)serviceStatus:(unsigned int)status version:(unsigned int)version ordinal:(unint64_t)ordinal data:(id)data timestamp:(unint64_t)timestamp;
- (int)setProtectedConfiguration:(id)configuration forUser:(unsigned int)user withOptions:(id)options withClient:(id)client;
- (int)setSystemProtectedConfiguration:(id)configuration withOptions:(id)options withClient:(id)client;
- (int)startBioOperation:(id)operation;
- (int)startEnrollOperation:(id)operation;
- (int)startMatchOperation:(id)operation;
- (int)startPresenceDetectOperation:(id)operation;
- (int)syncTemplateListForUser:(unsigned int)user;
- (int)unarchiveCatacombDataForComponent:(id)component fromUnarchiver:(id)unarchiver secureData:(id *)data identities:(id *)identities;
- (int)updateIdentity:(id)identity withOptions:(id)options withClient:(id)client;
- (int)updatePropertiesOfIdentities;
- (int)writeStringToPersistentLog:(id)log;
- (int64_t)getFreeIdentityCount:(int)count forUser:(unsigned int)user withClient:(id)client;
- (int64_t)getMaxIdentityCount:(int)count withClient:(id)client;
- (os_state_data_s)osStateHandler:(os_state_hints_s *)handler;
- (unint64_t)identitiesCount;
- (unsigned)currentAccountUserID;
- (unsigned)singleEnrolledUser;
- (void)addIdentityObject:(id)object;
- (void)addIdentityObjects:(id)objects;
- (void)cacheAccessories;
- (void)cacheUserAccountsInfo;
- (void)clearTemplateList;
- (void)clearTemplateListForUser:(unsigned int)user;
- (void)dealloc;
- (void)deleteUnusedCatacombFiles;
- (void)disconnectingClient:(id)client;
- (void)doSharedMemoryTransfers;
- (void)handleCatacombUnlock;
- (void)handleSharedMemoryTransfer:(unsigned int)transfer withHeader:(id)header data:(id)data;
- (void)init;
- (void)initAutoBugCapture;
- (void)isDisplayOn;
- (void)loadCatacomb;
- (void)logCatacombHashForUser:(unsigned int)user catacombHash:(id)hash;
- (void)logCatacombUUIDForUser:(unsigned int)user catacombUUID:(id)d;
- (void)notifyAppIsInactive:(BOOL)inactive withClient:(id)client;
- (void)postGeneralLockoutStateNotification;
- (void)readCatacombState;
- (void)registerDelegate:(BOOL)delegate withClient:(id)client;
- (void)removeBioOperationOfClient:(id)client;
- (void)removeIdentityObject:(id)object;
- (void)resumeQueuedBioOperation;
- (void)saveTemplateListAfterTemplateUpdate;
- (void)sendStatusMessage:(unsigned int)message toClient:(id)client;
- (void)serviceStatus:(unsigned int)status type:(unsigned int)type inValue:(void *)value;
- (void)setGracePeriod:(unint64_t)period;
- (void)stopBioOperationsAfterReconnect;
- (void)suspendAllConnections:(BOOL)connections;
- (void)switchToNextBioOperation:(BOOL)operation;
- (void)updateActiveOperationNotificationWithOverride:(int)override;
- (void)updateEnrollmentChangedNotification:(BOOL)notification;
- (void)updateExpressModeState;
- (void)updateExpressModeStateNotification;
- (void)updateExpressModeStateWithEnrollmentCount:(unsigned int)count;
- (void)updateExpressModeStateWithLockoutState:(unsigned int)state;
- (void)updateLockoutStateNotification:(unsigned int)notification;
- (void)updatePropertiesOfIdentities;
- (void)userListDidUpdate;
- (void)validateAllUsers;
- (void)validateUsersKeybagUUIDs;
@end

@implementation BiometricKitXPCServer

- (int)loadCatacombAfterFirstUnlock
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "loadCatacombAfterFirstUnlock\n", &v12, 2u);
  }

  if ([(BiometricKitXPCServer *)self catacombFileAccessed]|| ![(BiometricKitXPCServer *)self isCatacombAccessible])
  {
    goto LABEL_14;
  }

  if (__osLog)
  {
    v5 = __osLog;
  }

  else
  {
    v5 = v3;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEFAULT, "loadCatacombAfterFirstUnlock: not received first unlock notification yet\n", &v12, 2u);
  }

  handleCatacombUnlock = [(BiometricKitXPCServer *)self handleCatacombUnlock];
  if (handleCatacombUnlock)
  {
    v8 = handleCatacombUnlock;
    if (__osLog)
    {
      v10 = __osLog;
    }

    else
    {
      v10 = v3;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136316162;
      v13 = "err == 0 ";
      v14 = 2048;
      v15 = v8;
      v16 = 2080;
      v17 = &unk_223E5FC53;
      v18 = 2080;
      v19 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v20 = 1024;
      v21 = 3274;
      _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v12, 0x30u);
    }

    if (__osLogTrace)
    {
      v11 = __osLogTrace;
    }

    else
    {
      v11 = v3;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 67109120;
      LODWORD(v13) = v8;
      _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_ERROR, "loadCatacombAfterFirstUnlock -> err:0x%x\n", &v12, 8u);
    }
  }

  else
  {
LABEL_14:
    if (__osLogTrace)
    {
      v7 = __osLogTrace;
    }

    else
    {
      v7 = v3;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = 67109120;
      LODWORD(v13) = 0;
      _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "loadCatacombAfterFirstUnlock -> err:0x%x\n", &v12, 8u);
    }

    return 0;
  }

  return v8;
}

- (BOOL)validateAllUsers
{
  v38 = *MEMORY[0x277D85DE8];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "validateAllUsers\n", buf, 2u);
  }

  if (!self->_userListChangeDetected)
  {
    v7 = 0;
    obj = 0;
LABEL_32:
    v21 = 1;
    goto LABEL_34;
  }

  v4 = self->_expressModeState;
  objc_sync_enter(v4);
  obj = [self->_expressModeState allKeys];
  objc_sync_exit(v4);

  self->_userListChangeDetected = 0;
  v30 = 0;
  v5 = [(BiometricKitXPCServer *)self getUserUUIDsForUIDs:obj userUUIDs:&v30];
  v6 = v30;
  v7 = v6;
  if (v5)
  {
    [BiometricKitXPCServer validateAllUsers];
    goto LABEL_32;
  }

  if (!v6)
  {
    [BiometricKitXPCServer validateAllUsers];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = obj;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (!v8)
  {

    goto LABEL_32;
  }

  v10 = 0;
  v11 = *v27;
  *&v9 = 67109634;
  v24 = v9;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v26 + 1) + 8 * i);
      v14 = [v7 objectForKeyedSubscript:{v13, v24}];
      v15 = self->_expressModeState;
      objc_sync_enter(v15);
      v16 = [self->_expressModeState objectForKeyedSubscript:v13];
      objc_sync_exit(v15);

      if (v14)
      {
        v17 = v16 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17 || ([v14 isEqual:v16] & 1) == 0)
      {
        if (__osLog)
        {
          v18 = __osLog;
        }

        else
        {
          v18 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
          unsignedIntValue = [v13 unsignedIntValue];
          *buf = v24;
          v32 = unsignedIntValue;
          v33 = 2112;
          v34 = v14;
          v35 = 2112;
          v36 = v16;
          _os_log_impl(&dword_223E00000, v19, OS_LOG_TYPE_DEFAULT, "validateAllUsers: removing user %u because of invalid user UUID (real:%@ vs catacomb:%@)\n", buf, 0x1Cu);
        }

        -[BiometricKitXPCServer removeUser:](self, "removeUser:", [v13 unsignedIntValue]);
        v10 = 1;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
  }

  while (v8);

  if (v10)
  {
    [(BiometricKitXPCServer *)self saveCatacomb];
    [(BiometricKitXPCServer *)self syncTemplateListForUser:0xFFFFFFFFLL];
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

LABEL_34:
  if (__osLogTrace)
  {
    v22 = __osLogTrace;
  }

  else
  {
    v22 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v32 = v21;
    _os_log_impl(&dword_223E00000, v22, OS_LOG_TYPE_DEBUG, "validateAllUsers -> %d\n", buf, 8u);
  }

  return v21;
}

- (void)resumeQueuedBioOperation
{
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "resumeQueuedBioOperation\n", buf, 2u);
  }

  do
  {
    if (![(OS_dispatch_queue *)self->_cmdDispatchQueue count])
    {
      break;
    }

    v5 = [(OS_dispatch_queue *)self->_cmdDispatchQueue objectAtIndex:0];
    [(OS_dispatch_queue *)self->_cmdDispatchQueue removeObject:v5];
    v6 = [(BiometricKitXPCServer *)self startBioOperation:v5];
    if (v6)
    {
      taskResumeFailedMessage = [v5 taskResumeFailedMessage];
    }

    else
    {
      taskResumeFailedMessage = [v5 taskResumedMessage];
    }

    v8 = taskResumeFailedMessage;
    if (taskResumeFailedMessage)
    {
      client = [v5 client];
      [(BiometricKitXPCServer *)self sendStatusMessage:v8 toClient:client];

      client2 = [v5 client];
      [client2 taskResumeStatus:v6];
    }
  }

  while (v6);
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v3;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "resumeQueuedBioOperation -> void\n", v12, 2u);
  }
}

- (id)allClients
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = self->_exportedObjects;
  objc_sync_enter(v4);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_exportedObjects;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        clients = [*(*(&v11 + 1) + 8 * i) clients];
        [array addObjectsFromArray:clients];
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);

  return array;
}

- (void)validateUsersKeybagUUIDs
{
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "validateUsersKeybagUUIDs\n", buf, 2u);
  }

  *buf = 0;
  v11 = buf;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = self->_catacombUserUUIDs;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_catacombUserUUIDs];
  objc_sync_exit(v5);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__BiometricKitXPCServer_validateUsersKeybagUUIDs__block_invoke;
  v9[3] = &unk_2784FA490;
  v9[4] = self;
  v9[5] = buf;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
  if (v11[24] == 1)
  {
    [(BiometricKitXPCServer *)self saveCatacomb];
    [(BiometricKitXPCServer *)self syncTemplateListForUser:0xFFFFFFFFLL];
  }

  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = v3;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "validateUsersKeybagUUIDs -> void\n", v8, 2u);
  }

  _Block_object_dispose(buf, 8);
}

- (BOOL)hasMultipleUserAccounts
{
  if ((self->_userAccountsInfo.currentAccountUserID & 0x10000) == 0)
  {
    [(BiometricKitXPCServer *)self cacheAndSetUserAccountsInfo];
  }

  return BYTE1(self->_userAccountsInfo.currentAccountUserID) != 0;
}

void __29__BiometricKitXPCServer_init__block_invoke_369(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) validateUsersKeybagUUIDs];

  objc_autoreleasePoolPop(v2);
}

- (id)identities
{
  v3 = self->_ongoingBiometricOperation;
  objc_sync_enter(v3);
  v4 = [MEMORY[0x277CBEA60] arrayWithArray:self->_ongoingBiometricOperation];
  objc_sync_exit(v3);

  return v4;
}

+ (void)initialize
{
  v2 = os_log_create("com.apple.BiometricKit", "Daemon-Common");
  v3 = __osLog;
  __osLog = v2;

  v4 = __osLog;
  if (!__osLog)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[BiometricKitXPCServer initialize];
    }

    v4 = __osLog;
  }

  objc_storeStrong(&__osLogTrace, v4);
}

- (BiometricKitXPCServer)init
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "BiometricKitXPCServer::init\n", buf, 2u);
  }

  v5 = dispatch_get_global_queue(0, 0);
  v61 = MEMORY[0x277D85DD0];
  v62 = 3221225472;
  v63 = __29__BiometricKitXPCServer_init__block_invoke;
  v64 = &unk_2784FA3A0;
  selfCopy = self;
  v65 = selfCopy;
  selfCopy->_osStateHandle = os_state_add_handler();

  v60.receiver = selfCopy;
  v60.super_class = BiometricKitXPCServer;
  v7 = [(BiometricKitXPCServer *)&v60 init];
  if (v7)
  {
    v8 = *MEMORY[0x277CD2898];
    v9 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    *(v7 + 18) = v9;
    if (v9)
    {
      IONotificationPortSetDispatchQueue(v9, MEMORY[0x277D85CD0]);
      v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v11 = *(v7 + 2);
      *(v7 + 2) = v10;

      if (*(v7 + 2))
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v13 = *(v7 + 20);
        *(v7 + 20) = v12;

        if (*(v7 + 20))
        {
          v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v15 = *(v7 + 21);
          *(v7 + 21) = v14;

          if (*(v7 + 21))
          {
            v16 = [[ActivityTracker alloc] initWithDescription:@"com.apple.biometrickitd.ongoingBiometricOperation"];
            v17 = *(v7 + 24);
            *(v7 + 24) = v16;

            v18 = [[ActivityTracker alloc] initWithDescription:@"com.apple.biometrickitd.ongoingCatacomSaveTimer"];
            v19 = *(v7 + 23);
            *(v7 + 23) = v18;

            v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v21 = *(v7 + 25);
            *(v7 + 25) = v20;

            if (*(v7 + 25))
            {
              v22 = objc_alloc_init(MEMORY[0x277CCAC60]);
              v23 = *(v7 + 26);
              *(v7 + 26) = v22;

              if (*(v7 + 26))
              {
                v24 = [MEMORY[0x277CBEB58] set];
                v25 = *(v7 + 31);
                *(v7 + 31) = v24;

                if (*(v7 + 31))
                {
                  v26 = dispatch_queue_create("com.apple.biometrickitd.abcQueue", 0);
                  v27 = *(v7 + 30);
                  *(v7 + 30) = v26;

                  if (*(v7 + 30))
                  {
                    if ([v7 initAutoBugCapture])
                    {
                      v28 = (__osLog ? __osLog : v3);
                      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_223E00000, v28, OS_LOG_TYPE_ERROR, "Failed to initialize BiometricAutoBugCapture. On systems without SymptomDiagnosticReporter this is expected behavior.\n", buf, 2u);
                      }
                    }

                    v29 = [EntitlementABCIssueReporter alloc];
                    biometricABC = [v7 biometricABC];
                    v31 = [(EntitlementABCIssueReporter *)v29 initWithBiometricABC:biometricABC];
                    [v7 setReporter:v31];

                    v32 = [BKCatacomb catacombWithDir:@"/var/root/Library/Catacomb/"];
                    v33 = *(v7 + 27);
                    *(v7 + 27) = v32;

                    v34 = *(v7 + 27);
                    if (v34)
                    {
                      [v34 recover];
                      v35 = objc_alloc_init(CatacombStateCache);
                      v36 = *(v7 + 28);
                      *(v7 + 28) = v35;

                      if (*(v7 + 28))
                      {
                        v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
                        v38 = *(v7 + 14);
                        *(v7 + 14) = v37;

                        if (*(v7 + 14))
                        {
                          v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
                          v40 = *(v7 + 15);
                          *(v7 + 15) = v39;

                          if (*(v7 + 15))
                          {
                            *(v7 + 40) = notify_register_check("com.apple.BiometricKit.activeOperation", v7 + 9) == 0;
                            v41 = dispatch_queue_create("com.apple.biometrickitd.activeOpNtf", 0);
                            v42 = *(v7 + 6);
                            *(v7 + 6) = v41;

                            if (*(v7 + 6))
                            {
                              [v7 updateActiveOperationNotification];
                              *(v7 + 76) = notify_register_check("com.apple.BiometricKit.enrollmentChanged", v7 + 18) == 0;
                              [v7 cacheUserAccountsInfo];
                              *(v7 + 88) = notify_register_check("com.apple.BiometricKit.lockoutStateChanged", v7 + 21) == 0;
                              *(v7 + 96) = notify_register_check("com.apple.BiometricKit.expressModeStateChanged", v7 + 23) == 0;
                              *(v7 + 136) = notify_register_check("com.apple.BiometricKit.connectedAccessoriesChanged", v7 + 33) == 0;
                              v43 = dispatch_queue_create("com.apple.biometrickitd.cmd", 0);
                              v44 = *(v7 + 19);
                              *(v7 + 19) = v43;

                              if (*(v7 + 19))
                              {
                                MatchingService = IOServiceGetMatchingService(v8, &unk_28374C4F0);
                                *(v7 + 15) = MatchingService;
                                if (MatchingService || ![(BiometricKitXPCServer *)v7 + 15 init])
                                {
                                  v46 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
                                  v47 = dispatch_queue_attr_make_with_qos_class(v46, QOS_CLASS_BACKGROUND, 0);
                                  v48 = dispatch_queue_create("com.apple.biometrickitd.backlight", v47);

                                  handler[0] = MEMORY[0x277D85DD0];
                                  handler[1] = 3221225472;
                                  handler[2] = __29__BiometricKitXPCServer_init__block_invoke_365;
                                  handler[3] = &unk_2784FA3C8;
                                  v59 = v7;
                                  if (notify_register_dispatch("com.apple.iokit.hid.displayStatus", v7 + 16, v48, handler))
                                  {
                                    [BiometricKitXPCServer init];
                                  }
                                }

                                *(v7 + 17) = -1;
                                v56[0] = MEMORY[0x277D85DD0];
                                v56[1] = 3221225472;
                                v56[2] = __29__BiometricKitXPCServer_init__block_invoke_369;
                                v56[3] = &unk_2784FA3C8;
                                v49 = v7;
                                v57 = v49;
                                v50 = MEMORY[0x277D85CD0];
                                notify_register_dispatch("com.apple.mobile.keybagd.lock_status", v7 + 32, MEMORY[0x277D85CD0], v56);

                                mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
                                [mEMORY[0x277D77BF8] registerUserListUpdateObserver:v49];

                                DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
                                CFNotificationCenterAddObserver(DarwinNotifyCenter, v49, __PasscodeChangedNotificationCallback, @"com.apple.managedconfiguration.passcodechanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
                                if (__osLogTrace)
                                {
                                  v53 = __osLogTrace;
                                }

                                else
                                {
                                  v53 = v3;
                                }

                                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                                {
                                  *buf = 138412290;
                                  v67 = v49;
                                  _os_log_impl(&dword_223E00000, v53, OS_LOG_TYPE_DEBUG, "BiometricKitXPCServer::init -> %@\n", buf, 0xCu);
                                }

                                goto LABEL_36;
                              }

                              [BiometricKitXPCServer init];
                            }

                            else
                            {
                              [BiometricKitXPCServer init];
                            }
                          }

                          else
                          {
                            [BiometricKitXPCServer init];
                          }
                        }

                        else
                        {
                          [BiometricKitXPCServer init];
                        }
                      }

                      else
                      {
                        [BiometricKitXPCServer init];
                      }
                    }

                    else
                    {
                      [BiometricKitXPCServer init];
                    }
                  }

                  else
                  {
                    [BiometricKitXPCServer init];
                  }
                }

                else
                {
                  [BiometricKitXPCServer init];
                }
              }

              else
              {
                [BiometricKitXPCServer init];
              }
            }

            else
            {
              [BiometricKitXPCServer init];
            }
          }

          else
          {
            [BiometricKitXPCServer init];
          }
        }

        else
        {
          [BiometricKitXPCServer init];
        }
      }

      else
      {
        [BiometricKitXPCServer init];
      }
    }

    else
    {
      [BiometricKitXPCServer init];
    }
  }

  else
  {
    [BiometricKitXPCServer init];
  }

  if (__osLogTrace)
  {
    v55 = __osLogTrace;
  }

  else
  {
    v55 = v3;
  }

  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v67 = 0;
    _os_log_impl(&dword_223E00000, v55, OS_LOG_TYPE_ERROR, "BiometricKitXPCServer::init -> %@\n", buf, 0xCu);
  }

  v49 = 0;
LABEL_36:

  return v49;
}

uint64_t __29__BiometricKitXPCServer_init__block_invoke_365(uint64_t a1, int token)
{
  state64 = 0;
  result = notify_get_state(token, &state64);
  if (!result)
  {
    return [*(a1 + 32) displayStateChanged:state64 != 0];
  }

  return result;
}

- (int)initAutoBugCapture
{
  v3 = [[BiometricAutoBugCapture alloc] initWithDomain:@"BiometricSupport" process:@"biometrickitd" dispatchQueue:self->_biometricABC];
  catacombStateCache = self->_catacombStateCache;
  self->_catacombStateCache = v3;

  if (self->_catacombStateCache)
  {
    return 0;
  }

  [BiometricKitXPCServer initAutoBugCapture];
  return v6;
}

- (void)dealloc
{
  v3 = *&self->_connectedAccessoriesChgNtfTokenValid;
  if (v3)
  {
    IONotificationPortDestroy(v3);
  }

  os_state_remove_handler();
  if (self->_activeOperationNtfTokenValid)
  {
    notify_cancel(self->_activeOperationNtfToken);
  }

  if (self->_enrollChgNtfTokenValid)
  {
    notify_cancel(self->_enrollChgNtfToken);
  }

  if (self->_userAccountsInfoValid)
  {
    notify_cancel(*&self->_userAccountsInfo.hasMultipleUserAccounts);
  }

  if (self->_lockoutChgNtfTokenValid)
  {
    notify_cancel(self->_lockoutChgNtfToken);
  }

  if (LOBYTE(self->_mkbLockStatusNtfToken) == 1)
  {
    notify_cancel(HIDWORD(self->_catacombUserKeybagUUIDs));
  }

  backlightService = self->_backlightService;
  if (backlightService)
  {
    IOObjectRelease(backlightService);
  }

  displayStatusNotifyToken = self->_displayStatusNotifyToken;
  if (displayStatusNotifyToken)
  {
    notify_cancel(displayStatusNotifyToken);
    self->_displayStatusNotifyToken = 0;
  }

  catacombUserKeybagUUIDs = self->_catacombUserKeybagUUIDs;
  if (catacombUserKeybagUUIDs)
  {
    notify_cancel(catacombUserKeybagUUIDs);
  }

  v7.receiver = self;
  v7.super_class = BiometricKitXPCServer;
  [(BiometricKitXPCServer *)&v7 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v81 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    *&buf[4] = listenerCopy;
    v73 = 2112;
    v74 = listenerCopy;
    v75 = 2048;
    v76 = connectionCopy;
    v77 = 2112;
    v78 = connectionCopy;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "listener:shouldAcceptNewConnection: %p(%@), %p(%@)\n", buf, 0x2Au);
  }

  v59 = listenerCopy;
  v66 = [connectionCopy valueForEntitlement:@"com.apple.private.bmk.allow"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v66 BOOLValue])
  {
    if (isInternalBuild())
    {
      v8 = (__osLog ? __osLog : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        processIdentifier = [connectionCopy processIdentifier];
        *buf = 67109120;
        *&buf[4] = processIdentifier;
        _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_ERROR, "PID %d does have legacy entitlement com.apple.private.bmk.allow, please set one of fine grained entitlements com.apple.private.biometrickit.allow-*\n", buf, 8u);
      }
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v65 = [connectionCopy valueForEntitlement:@"com.apple.private.biometrickit.allow-default"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v65 BOOLValue])
    {
      v11 = v11 | 2;
    }

    else
    {
      v11 = v11;
    }
  }

  v64 = [connectionCopy valueForEntitlement:@"com.apple.private.biometrickit.allow-enroll"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v64 BOOLValue])
    {
      v11 = v11 | 4;
    }

    else
    {
      v11 = v11;
    }
  }

  v63 = [connectionCopy valueForEntitlement:@"com.apple.private.biometrickit.allow-id-mgmt"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v63 BOOLValue])
    {
      v11 = v11 | 8;
    }

    else
    {
      v11 = v11;
    }
  }

  v62 = [connectionCopy valueForEntitlement:@"com.apple.private.biometrickit.allow-match"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v62 BOOLValue])
    {
      v11 = v11 | 0x10;
    }

    else
    {
      v11 = v11;
    }
  }

  v61 = [connectionCopy valueForEntitlement:@"com.apple.private.biometrickit.allow-config"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v61 BOOLValue])
    {
      v11 = v11 | 0x20;
    }

    else
    {
      v11 = v11;
    }
  }

  v60 = [connectionCopy valueForEntitlement:@"com.apple.private.biometrickit.allow-internal"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v60 BOOLValue])
  {
    v11 = v11 | 0x40;
    goto LABEL_40;
  }

  if (v11)
  {
LABEL_40:
    if (listener_shouldAcceptNewConnection__onceToken != -1)
    {
      [BiometricKitXPCServer listener:shouldAcceptNewConnection:];
    }

    if (listener_shouldAcceptNewConnection__ifc)
    {
      if (listener_shouldAcceptNewConnection__delegateIfc)
      {
        v68 = objc_alloc_init(BiometricKitXPCExportedObject);
        if (v68)
        {
          biometricABC = [(BiometricKitXPCServer *)self biometricABC];
          reporter = [(BiometricKitXPCServer *)self reporter];
          [reporter setBiometricABC:biometricABC];

          [(BiometricKitXPCExportedObject *)v68 setServer:self];
          [(BiometricKitXPCExportedObject *)v68 setConnection:connectionCopy];
          [(BiometricKitXPCExportedObject *)v68 setClientEntitlement:v11];
          [connectionCopy setExportedInterface:listener_shouldAcceptNewConnection__ifc];
          [connectionCopy setExportedObject:v68];
          [connectionCopy setRemoteObjectInterface:listener_shouldAcceptNewConnection__delegateIfc];
          v14 = listener_shouldAcceptNewConnection__ifc;
          v15 = MEMORY[0x277CBEB98];
          v16 = objc_opt_class();
          v17 = objc_opt_class();
          v18 = objc_opt_class();
          v19 = objc_opt_class();
          v20 = objc_opt_class();
          v21 = [v15 setWithObjects:{v16, v17, v18, v19, v20, objc_opt_class(), 0}];
          [v14 setClasses:v21 forSelector:sel_match_options_async_client_replyBlock_ argumentIndex:0 ofReply:0];

          v22 = listener_shouldAcceptNewConnection__ifc;
          v23 = MEMORY[0x277CBEB98];
          v24 = objc_opt_class();
          v25 = objc_opt_class();
          v26 = objc_opt_class();
          v27 = objc_opt_class();
          v28 = objc_opt_class();
          v29 = objc_opt_class();
          v30 = [v23 setWithObjects:{v24, v25, v26, v27, v28, v29, objc_opt_class(), 0}];
          [v22 setClasses:v30 forSelector:sel_match_options_async_client_replyBlock_ argumentIndex:1 ofReply:0];

          v31 = listener_shouldAcceptNewConnection__ifc;
          v32 = MEMORY[0x277CBEB98];
          v33 = objc_opt_class();
          v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
          [v31 setClasses:v34 forSelector:sel_setPreferencesValue_forKey_client_replyBlock_ argumentIndex:0 ofReply:0];

          v35 = listener_shouldAcceptNewConnection__ifc;
          v36 = MEMORY[0x277CBEB98];
          v37 = objc_opt_class();
          v38 = objc_opt_class();
          v39 = objc_opt_class();
          v40 = objc_opt_class();
          v41 = objc_opt_class();
          v42 = objc_opt_class();
          v43 = [v36 setWithObjects:{v37, v38, v39, v40, v41, v42, objc_opt_class(), 0}];
          [v35 setClasses:v43 forSelector:sel_enroll_user_options_async_client_replyBlock_ argumentIndex:2 ofReply:0];

          v44 = listener_shouldAcceptNewConnection__ifc;
          v45 = MEMORY[0x277CBEB98];
          v46 = objc_opt_class();
          v47 = objc_opt_class();
          v48 = objc_opt_class();
          v49 = [v45 setWithObjects:{v46, v47, v48, objc_opt_class(), 0}];
          [v44 setClasses:v49 forSelector:sel_removePeriocularTemplatesWithOptions_async_client_replyBlock_ argumentIndex:0 ofReply:0];

          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __60__BiometricKitXPCServer_listener_shouldAcceptNewConnection___block_invoke_606;
          v69[3] = &unk_2784FA3F0;
          v69[4] = self;
          v50 = v68;
          v70 = v50;
          [connectionCopy setInvalidationHandler:v69];

          v51 = self->_exportedObjects;
          objc_sync_enter(v51);
          [(NSMutableSet *)self->_exportedObjects addObject:v50];
          if (!self->_connectionsSuspended)
          {
            [connectionCopy resume];
          }

          objc_sync_exit(v51);

          v52 = 1;
          goto LABEL_59;
        }

        [BiometricKitXPCServer listener:shouldAcceptNewConnection:];
      }

      else
      {
        [BiometricKitXPCServer listener:shouldAcceptNewConnection:];
      }
    }

    else
    {
      [BiometricKitXPCServer listener:shouldAcceptNewConnection:];
    }

    v50 = *buf;
    v52 = v71;
    goto LABEL_59;
  }

  if (__osLog)
  {
    v53 = __osLog;
  }

  else
  {
    v53 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    v54 = v53;
    processIdentifier2 = [connectionCopy processIdentifier];
    *buf = 67109120;
    *&buf[4] = processIdentifier2;
    _os_log_impl(&dword_223E00000, v54, OS_LOG_TYPE_ERROR, "PID %d is missing entitlement (com.apple.private.biometrickit.*), dropping connection.\n", buf, 8u);
  }

  if (__osLog)
  {
    v56 = __osLog;
  }

  else
  {
    v56 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *&buf[4] = "acceptConnection";
    v73 = 2048;
    v74 = 0;
    v75 = 2080;
    v76 = &unk_223E5FC53;
    v77 = 2080;
    v78 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v79 = 1024;
    v80 = 1092;
    _os_log_impl(&dword_223E00000, v56, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

  v50 = 0;
  v52 = 0;
LABEL_59:
  if (__osLogTrace)
  {
    v57 = __osLogTrace;
  }

  else
  {
    v57 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v52;
    _os_log_impl(&dword_223E00000, v57, OS_LOG_TYPE_DEBUG, "listener:shouldAcceptNewConnection: -> %d\n", buf, 8u);
  }

  return v52;
}

uint64_t __60__BiometricKitXPCServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28374EFF0];
  v1 = listener_shouldAcceptNewConnection__ifc;
  listener_shouldAcceptNewConnection__ifc = v0;

  listener_shouldAcceptNewConnection__delegateIfc = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283755528];

  return MEMORY[0x2821F96F8]();
}

void __60__BiometricKitXPCServer_listener_shouldAcceptNewConnection___block_invoke_606(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  objc_sync_enter(v2);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [*(a1 + 40) clients];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) disconnectingClient:*(*(&v9 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) terminate];
  v7 = *(a1 + 32);
  if (*(v7 + 24) == 1)
  {
    v8 = [*(a1 + 40) connection];
    [v8 resume];

    v7 = *(a1 + 32);
  }

  [*(v7 + 16) removeObject:*(a1 + 40)];
  objc_sync_exit(v2);
}

- (void)suspendAllConnections:(BOOL)connections
{
  connectionsCopy = connections;
  v26 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    connectionsSuspended = self->_connectionsSuspended;
    *buf = 67109376;
    v23 = connectionsCopy;
    v24 = 1024;
    v25 = connectionsSuspended;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "suspendAllConnections: %d (_suspended:%d)\n", buf, 0xEu);
  }

  v8 = self->_exportedObjects;
  objc_sync_enter(v8);
  if (self->_connectionsSuspended != connectionsCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = self->_exportedObjects;
    v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if (connectionsCopy)
          {
            connection = [v13 connection];
            [connection suspend];
          }

          else
          {
            connection = [v13 connection];
            [connection resume];
          }
        }

        v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    self->_connectionsSuspended = connectionsCopy;
  }

  objc_sync_exit(v8);

  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v5;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = self->_connectionsSuspended;
    *buf = 67109120;
    v23 = v16;
    _os_log_impl(&dword_223E00000, v15, OS_LOG_TYPE_DEBUG, "suspendAllConnections: -> void (_suspended:%d)\n", buf, 8u);
  }
}

- (os_state_data_s)osStateHandler:(os_state_hints_s *)handler
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    var0 = handler->var0;
    var1 = handler->var1;
    var2 = handler->var2;
    var3 = handler->var3;
    *buf = 67109890;
    *&buf[4] = var0;
    *&buf[8] = 2080;
    *&buf[10] = var1;
    *&buf[18] = 1024;
    *&buf[20] = var2;
    LOWORD(v27) = 1024;
    *(&v27 + 2) = var3;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "osStateHandler: hints(osh_version:%d, osh_requestor:'%s', osh_api:%d, osh_reason:%d)\n", buf, 0x1Eu);
  }

  v11 = [(BiometricKitXPCServer *)self stateDictionaryWithHints:handler];
  if (v11)
  {
    *(&v25 + 1) = 0;
    v12 = [MEMORY[0x277CCAC58] dataWithPropertyList:v11 format:200 options:0 error:&v25 + 8];
    v13 = *(&v25 + 1);
    v20 = v13;
    if (v12)
    {
      if ([v12 length] >= 0xFFFFFFFF)
      {
        [BiometricKitXPCServer osStateHandler:];
      }

      else
      {
        v21 = malloc_type_calloc(1uLL, [v12 length] + 200, 0x1000040BEF03554uLL);
        if (v21)
        {
          v22 = v21;
          v21->var0 = 1;
          v21->var1.var1 = [v12 length];
          __strlcpy_chk();
          memcpy(v22->var4, [v12 bytes], objc_msgSend(v12, "length"));
LABEL_11:

          goto LABEL_13;
        }

        [BiometricKitXPCServer osStateHandler:];
      }
    }

    else
    {
      [(BiometricKitXPCServer *)v13 osStateHandler:buf, v14, v15, v16, v17, v18, v19, v25, *buf, *&buf[8], *&buf[16], v27, SHIDWORD(v27), v28, v29, v30, v31, v32, v33, v34, v35, v36, v37];
    }

    v22 = *buf;
    goto LABEL_11;
  }

  v22 = 0;
LABEL_13:
  if (__osLogTrace)
  {
    v23 = __osLogTrace;
  }

  else
  {
    v23 = v5;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = v22;
    _os_log_impl(&dword_223E00000, v23, OS_LOG_TYPE_DEBUG, "osStateHandler: -> %p\n", buf, 0xCu);
  }

  return v22;
}

- (id)stateDictionaryWithHints:(os_state_hints_s *)hints
{
  if (hints->var2 == 3)
  {
    mEMORY[0x277CF1BF0] = [MEMORY[0x277CF1BF0] sharedInstance];
    stateDictionary = [mEMORY[0x277CF1BF0] stateDictionary];
  }

  else
  {
    stateDictionary = 0;
  }

  return stateDictionary;
}

- (int)enroll:(int)enroll forUser:(unsigned int)user withOptions:(id)options withClient:(id)client
{
  v7 = *&user;
  v8 = *&enroll;
  v29 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  clientCopy = client;
  v12 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    *&buf[4] = v8;
    v23 = 1024;
    v24 = v7;
    v25 = 2112;
    v26 = optionsCopy;
    v27 = 2112;
    v28 = clientCopy;
    _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_DEFAULT, "enroll:forUser:withOptions:withClient: %d, %u, %@, %@\n", buf, 0x22u);
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (isEphemeralMultiUser())
  {
    [BiometricKitXPCServer enroll:forUser:withOptions:withClient:];
  }

  else if ([(BiometricKitXPCServer *)self isFingerprintModificationRestricted])
  {
    [BiometricKitXPCServer enroll:forUser:withOptions:withClient:];
  }

  else
  {
    createEnrollOperation = [(BiometricKitXPCServer *)self createEnrollOperation];
    if (createEnrollOperation)
    {
      v15 = createEnrollOperation;
      if ([(BiometricKitXPCServer *)self initEnrollOperation:createEnrollOperation biometricType:v8 userID:v7 options:optionsCopy client:clientCopy])
      {
        [BiometricKitXPCServer enroll:forUser:withOptions:withClient:];
      }

      else
      {
        if (![(BiometricKitXPCServer *)self processBioOperation:v15])
        {
          v16 = 0;
          goto LABEL_14;
        }

        [BiometricKitXPCServer enroll:forUser:withOptions:withClient:];
      }
    }

    else
    {
      [BiometricKitXPCServer enroll:forUser:withOptions:withClient:];
    }
  }

  v15 = *buf;
  v16 = v21;
LABEL_14:
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v12;
  }

  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v16;
      v18 = v17;
      v19 = OS_LOG_TYPE_ERROR;
LABEL_24:
      _os_log_impl(&dword_223E00000, v18, v19, "enroll:forUser:withOptions:withClient: -> err:0x%x\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = 0;
    v18 = v17;
    v19 = OS_LOG_TYPE_DEBUG;
    goto LABEL_24;
  }

  return v16;
}

- (id)createEnrollOperation
{
  v2 = objc_alloc_init(BiometricEnrollOperation);

  return v2;
}

- (int)initEnrollOperation:(id)operation biometricType:(int)type userID:(unsigned int)d options:(id)options client:(id)client
{
  v9 = *&d;
  operationCopy = operation;
  optionsCopy = options;
  clientCopy = client;
  v14 = clientCopy;
  if (operationCopy)
  {
    if (clientCopy)
    {
      [operationCopy setPriority:0x7FFFFFFFFFFFFF9BLL];
      [operationCopy setUserID:v9];
      [operationCopy setClient:v14];
      if (-[BiometricKitXPCServer parseAuthDict:toAuthData:](self, "parseAuthDict:toAuthData:", optionsCopy, [operationCopy authData]))
      {
        [BiometricKitXPCServer initEnrollOperation:biometricType:userID:options:client:];
        LODWORD(v15) = v19;
      }

      else
      {
        v15 = [optionsCopy objectForKeyedSubscript:@"BKOptionEnrollAccessoryGroup"];
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            type = [v15 type];
            *[operationCopy deviceGroup] = type;
            uuid = [v15 uuid];
            [uuid getUUIDBytes:{objc_msgSend(operationCopy, "deviceGroup") + 4}];

            LODWORD(v15) = 0;
          }

          else
          {
            [BiometricKitXPCServer initEnrollOperation:v15 biometricType:? userID:? options:? client:?];
            LODWORD(v15) = 258;
          }
        }
      }
    }

    else
    {
      [BiometricKitXPCServer initEnrollOperation:biometricType:userID:options:client:];
      LODWORD(v15) = v20;
    }
  }

  else
  {
    [BiometricKitXPCServer initEnrollOperation:biometricType:userID:options:client:];
    LODWORD(v15) = v21;
  }

  return v15;
}

- (int)startEnrollOperation:(id)operation
{
  v13 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = operationCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "startEnrollOperation: %@\n", &v11, 0xCu);
  }

  if (operationCopy)
  {
    if ([(BiometricKitXPCServer *)self isValidUser:objc_msgSend_userID(operationCopy)])
    {
      [BiometricKitXPCServer startEnrollOperation:];
    }

    else if ([(BiometricKitXPCServer *)self checkCatacombForUser:objc_msgSend_userID(operationCopy)])
    {
      [BiometricKitXPCServer startEnrollOperation:];
    }

    else
    {
      if (![(BiometricKitXPCServer *)self performEnrollCommand:operationCopy])
      {
        if (__osLogTrace)
        {
          v7 = __osLogTrace;
        }

        else
        {
          v7 = v5;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v11 = 67109120;
          LODWORD(v12) = 0;
          _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "startEnrollOperation: -> err:0x%x\n", &v11, 8u);
        }

        v8 = 0;
        goto LABEL_16;
      }

      [BiometricKitXPCServer startEnrollOperation:];
    }
  }

  else
  {
    [BiometricKitXPCServer startEnrollOperation:];
  }

  v8 = v11;
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 67109120;
    LODWORD(v12) = v8;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_ERROR, "startEnrollOperation: -> err:0x%x\n", &v11, 8u);
  }

LABEL_16:

  return v8;
}

- (int)match:(id)match withOptions:(id)options withClient:(id)client
{
  v26 = *MEMORY[0x277D85DE8];
  matchCopy = match;
  optionsCopy = options;
  clientCopy = client;
  v11 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = matchCopy;
    v22 = 2112;
    v23 = optionsCopy;
    v24 = 2112;
    v25 = clientCopy;
    _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEFAULT, "match:withOptions:withClient: %@, %@, %@\n", buf, 0x20u);
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  notify_post("com.apple.BiometricKit.matchOperationStartAttempted");
  if (isEphemeralMultiUser())
  {
    [BiometricKitXPCServer match:withOptions:withClient:];
  }

  else
  {
    createMatchOperation = [(BiometricKitXPCServer *)self createMatchOperation];
    if (createMatchOperation)
    {
      v14 = createMatchOperation;
      if ([(BiometricKitXPCServer *)self initMatchOperation:createMatchOperation filter:matchCopy options:optionsCopy client:clientCopy])
      {
        [BiometricKitXPCServer match:withOptions:withClient:];
      }

      else
      {
        if (![(BiometricKitXPCServer *)self processBioOperation:v14])
        {
          v15 = 0;
          goto LABEL_13;
        }

        [BiometricKitXPCServer match:withOptions:withClient:];
      }
    }

    else
    {
      [BiometricKitXPCServer match:withOptions:withClient:];
    }
  }

  v14 = *buf;
  v15 = v20;
LABEL_13:
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v11;
  }

  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      v17 = v16;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_23:
      _os_log_impl(&dword_223E00000, v17, v18, "match:withOptions:withClient: -> err:0x%x\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = 0;
    v17 = v16;
    v18 = OS_LOG_TYPE_DEBUG;
    goto LABEL_23;
  }

  return v15;
}

- (id)createMatchOperation
{
  v2 = objc_alloc_init(BiometricMatchOperation);

  return v2;
}

- (int)initMatchOperation:(id)operation filter:(id)filter options:(id)options client:(id)client
{
  v68 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  filterCopy = filter;
  optionsCopy = options;
  clientCopy = client;
  v14 = clientCopy;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  if (!operationCopy)
  {
    [BiometricKitXPCServer initMatchOperation:filter:options:client:];
LABEL_67:
    v29 = v56;
    v30 = *buf;
    Data = v57;
    goto LABEL_62;
  }

  if (!clientCopy)
  {
    [BiometricKitXPCServer initMatchOperation:filter:options:client:];
    goto LABEL_67;
  }

  if (filterCopy)
  {
    *buf = 0xFFFFFFFFLL;
    Integer = dictionaryGetInteger();
    if (Integer)
    {
      Data = Integer;
      [BiometricKitXPCServer initMatchOperation:filter:options:client:];
      v29 = 0;
      v30 = 0;
      goto LABEL_62;
    }
  }

  if ([(BiometricKitXPCServer *)self hasMultipleUserAccounts])
  {
    currentAccountUserID = 0xFFFFFFFFLL;
    if (optionsCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    currentAccountUserID = [(BiometricKitXPCServer *)self currentAccountUserID];
    if (optionsCopy)
    {
LABEL_7:
      v17 = [optionsCopy objectForKeyedSubscript:@"BKOptionMatchSelectedIdentities"];
      v48 = v17;
      selfCopy = self;
      v47 = currentAccountUserID;
      if (v17)
      {
        v18 = v17;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [MEMORY[0x277CBEB28] dataWithLength:{20 * objc_msgSend(v18, "count") + 4}];
          if (v19)
          {
            v45 = v14;
            v46 = optionsCopy;
            v44 = v19;
            mutableBytes = [v44 mutableBytes];
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v21 = v18;
            v22 = [v21 countByEnumeratingWithState:&v49 objects:v67 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v50;
              v25 = mutableBytes + 1;
              while (2)
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v50 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v27 = *(*(&v49 + 1) + 8 * i);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    [BiometricKitXPCServer initMatchOperation:v21 filter:? options:? client:?];
                    v30 = 0;
                    Data = 258;
                    optionsCopy = v46;
                    v29 = v44;
                    v14 = v45;
                    v18 = v48;
                    goto LABEL_64;
                  }

                  v25[5 * *mutableBytes] = objc_msgSend_userID(v27);
                  uuid = [v27 uuid];
                  [uuid getUUIDBytes:&v25[5 * *mutableBytes + 1]];

                  ++*mutableBytes;
                }

                v23 = [v21 countByEnumeratingWithState:&v49 objects:v67 count:16];
                if (v23)
                {
                  continue;
                }

                break;
              }
            }

            optionsCopy = v46;
            v29 = v44;
            v14 = v45;
LABEL_22:
            Bool = dictionaryGetBool();
            if (Bool)
            {
              Data = Bool;
              if (__osLog)
              {
                v41 = __osLog;
              }

              else
              {
                v41 = MEMORY[0x277D86220];
              }

              v18 = v48;
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                *&buf[4] = "err == 0 ";
                v59 = 2048;
                v60 = Data;
                v61 = 2080;
                v62 = &unk_223E5FC53;
                v63 = 2080;
                v64 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
                v65 = 1024;
                v66 = 1464;
                _os_log_impl(&dword_223E00000, v41, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
              }

              v30 = 0;
              goto LABEL_64;
            }

            Data = dictionaryGetData();
            v35 = 0;
            v30 = v35;
            if (Data)
            {
              if (__osLog)
              {
                v42 = __osLog;
              }

              else
              {
                v42 = MEMORY[0x277D86220];
              }

              v18 = v48;
              if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_64;
              }

              *buf = 136316162;
              *&buf[4] = "err == 0 ";
              v59 = 2048;
              v60 = Data;
              v61 = 2080;
              v62 = &unk_223E5FC53;
              v63 = 2080;
              v64 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
              v65 = 1024;
              v66 = 1467;
            }

            else
            {
              v32 = v35 != 0;
              v36 = dictionaryGetBool();
              v18 = v48;
              if (v36)
              {
                Data = v36;
                if (__osLog)
                {
                  v42 = __osLog;
                }

                else
                {
                  v42 = MEMORY[0x277D86220];
                }

                if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_64;
                }

                *buf = 136316162;
                *&buf[4] = "err == 0 ";
                v59 = 2048;
                v60 = Data;
                v61 = 2080;
                v62 = &unk_223E5FC53;
                v63 = 2080;
                v64 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
                v65 = 1024;
                v66 = 1473;
              }

              else
              {
                v37 = dictionaryGetBool();
                if (!v37)
                {
                  *buf = 0;
                  if (dictionaryGetInteger())
                  {
                    [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                  }

                  else
                  {
                    v31 = *buf;
                    if (*&buf[4])
                    {
                      [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                    }

                    else if (dictionaryGetBool())
                    {
                      [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                    }

                    else
                    {
                      v38 = [optionsCopy objectForKeyedSubscript:@"BKOptionMatchAuthTokenToBypassPasscodeBiolockout"];

                      if (v38)
                      {
                        LOBYTE(v54) = 1;
                      }

                      if (v55 == 1)
                      {
                        currentAccountUserID = v47;
                        if (HIBYTE(v55) == 1)
                        {
                          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                        }

                        else if (v30)
                        {
                          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                        }

                        else if (HIBYTE(v54) == 1)
                        {
                          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                        }

                        else if (v54 == 1)
                        {
                          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                        }

                        else
                        {
                          if (!v29)
                          {
                            v53 = -101;
LABEL_48:

                            goto LABEL_49;
                          }

                          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                        }
                      }

                      else
                      {
                        currentAccountUserID = v47;
                        if (dictionaryGetInteger())
                        {
                          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                        }

                        else
                        {
                          v39 = v53;
                          if (v53 >= 100)
                          {
                            v39 = 100;
                          }

                          if (v39 <= -100)
                          {
                            v39 = -100;
                          }

                          v53 = v39;
                          if ((v54 & 1) == 0)
                          {
                            goto LABEL_48;
                          }

                          if (HIBYTE(v55) == 1)
                          {
                            [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                          }

                          else if (v30)
                          {
                            [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                          }

                          else if (v55 == 1)
                          {
                            [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                          }

                          else
                          {
                            [operationCopy setNoBioLockoutUserID:v47];
                            if (!-[BiometricKitXPCServer parseAuthDict:toAuthData:](selfCopy, "parseAuthDict:toAuthData:", optionsCopy, [operationCopy noBioLockoutAuthData]))
                            {
                              goto LABEL_48;
                            }

                            [BiometricKitXPCServer initMatchOperation:filter:options:client:];
                          }
                        }
                      }
                    }
                  }

                  Data = v56;
LABEL_64:

                  goto LABEL_62;
                }

                Data = v37;
                if (__osLog)
                {
                  v42 = __osLog;
                }

                else
                {
                  v42 = MEMORY[0x277D86220];
                }

                if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_64;
                }

                *buf = 136316162;
                *&buf[4] = "err == 0 ";
                v59 = 2048;
                v60 = Data;
                v61 = 2080;
                v62 = &unk_223E5FC53;
                v63 = 2080;
                v64 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
                v65 = 1024;
                v66 = 1476;
              }
            }

            _os_log_impl(&dword_223E00000, v42, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
            goto LABEL_64;
          }

          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
        }

        else
        {
          [BiometricKitXPCServer initMatchOperation:filter:options:client:];
        }

        v29 = v56;
        v30 = *buf;
        Data = v57;
        goto LABEL_64;
      }

      v29 = 0;
      goto LABEL_22;
    }
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
LABEL_49:
  [operationCopy setUserID:{currentAccountUserID, selfCopy}];
  [operationCopy setSelectedIdentitiesBlob:v29];
  [operationCopy setPriority:v53];
  [operationCopy setForUnlock:HIBYTE(v55)];
  [operationCopy setForCredentialSet:v32];
  [operationCopy setAcmContext:v30];
  [operationCopy setForPreArm:v55];
  [operationCopy setStopOnSuccess:HIBYTE(v54)];
  [operationCopy setUseCase:v31];
  [operationCopy setNoBioLockout:v54];
  [operationCopy setClient:v14];
  if (v29)
  {
    [operationCopy setProcessedFlags:{objc_msgSend(operationCopy, "processedFlags") | 0x4000}];
  }

  if (HIBYTE(v55) == 1)
  {
    [operationCopy setProcessedFlags:{objc_msgSend(operationCopy, "processedFlags") | 1}];
  }

  if (v32)
  {
    [operationCopy setProcessedFlags:{objc_msgSend(operationCopy, "processedFlags") | 8}];
  }

  if (v55 == 1)
  {
    [operationCopy setProcessedFlags:{objc_msgSend(operationCopy, "processedFlags") | 0x100}];
  }

  if (HIBYTE(v54) == 1)
  {
    [operationCopy setProcessedFlags:{objc_msgSend(operationCopy, "processedFlags") | 0x80}];
  }

  if (v54 == 1)
  {
    [operationCopy setProcessedFlags:{objc_msgSend(operationCopy, "processedFlags") | 0x10}];
  }

  Data = 0;
LABEL_62:

  return Data;
}

- (int)startMatchOperation:(id)operation
{
  v15 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = operationCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "startMatchOperation: %@\n", &v13, 0xCu);
  }

  if (!operationCopy)
  {
    [BiometricKitXPCServer startMatchOperation:];
    goto LABEL_28;
  }

  if (![(BiometricKitXPCServer *)self identitiesCount]&& (self->_mkbLockStatusNtfToken & 0x10000) == 0)
  {
    [BiometricKitXPCServer startMatchOperation:];
    goto LABEL_28;
  }

  if (![(BiometricKitXPCServer *)self validateAllUsers])
  {
    if (objc_msgSend_userID(operationCopy) == -1)
    {
      if (![(BiometricKitXPCServer *)self identitiesCount])
      {
        [BiometricKitXPCServer startMatchOperation:];
        goto LABEL_28;
      }
    }

    else
    {
      v7 = [(BiometricKitXPCServer *)self identitiesOfUser:objc_msgSend_userID(operationCopy)];
      v8 = [v7 count];

      if (!v8)
      {
        [BiometricKitXPCServer startMatchOperation:];
LABEL_28:
        v10 = v13;
        if (__osLogTrace)
        {
          v12 = __osLogTrace;
        }

        else
        {
          v12 = v5;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = 67109120;
          LODWORD(v14) = v10;
          _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_ERROR, "startMatchOperation: -> err:0x%x\n", &v13, 8u);
        }

        goto LABEL_22;
      }
    }
  }

  if ([(BiometricKitXPCServer *)self checkCatacombForUser:objc_msgSend_userID(operationCopy)])
  {
    [BiometricKitXPCServer startMatchOperation:];
    goto LABEL_28;
  }

  if ([(BiometricKitXPCServer *)self performMatchCommand:operationCopy])
  {
    [BiometricKitXPCServer startMatchOperation:];
    goto LABEL_28;
  }

  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = v5;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = 67109120;
    LODWORD(v14) = 0;
    _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEBUG, "startMatchOperation: -> err:0x%x\n", &v13, 8u);
  }

  v10 = 0;
LABEL_22:

  return v10;
}

- (int)detectPresenceWithOptions:(id)options withClient:(id)client
{
  v20 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  clientCopy = client;
  v8 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = optionsCopy;
    v18 = 2112;
    v19 = clientCopy;
    _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEFAULT, "detectPresenceWithOptions:withClient: %@, %@\n", &v16, 0x16u);
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  createPresenceDetectOperation = [(BiometricKitXPCServer *)self createPresenceDetectOperation];
  if (createPresenceDetectOperation)
  {
    if ([(BiometricKitXPCServer *)self initPresenceDetectOperation:createPresenceDetectOperation options:optionsCopy client:clientCopy])
    {
      [BiometricKitXPCServer detectPresenceWithOptions:withClient:];
    }

    else
    {
      if (![(BiometricKitXPCServer *)self processBioOperation:createPresenceDetectOperation])
      {
        v11 = 0;
        goto LABEL_12;
      }

      [BiometricKitXPCServer detectPresenceWithOptions:withClient:];
    }
  }

  else
  {
    [BiometricKitXPCServer detectPresenceWithOptions:withClient:];
  }

  v11 = v16;
LABEL_12:
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v8;
  }

  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 67109120;
      LODWORD(v17) = v11;
      v13 = v12;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_22:
      _os_log_impl(&dword_223E00000, v13, v14, "detectPresenceWithOptions:withClient: -> err:0x%x\n", &v16, 8u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = 67109120;
    LODWORD(v17) = 0;
    v13 = v12;
    v14 = OS_LOG_TYPE_DEBUG;
    goto LABEL_22;
  }

  return v11;
}

- (id)createPresenceDetectOperation
{
  v2 = objc_alloc_init(BiometricPresenceDetectOperation);

  return v2;
}

- (int)initPresenceDetectOperation:(id)operation options:(id)options client:(id)client
{
  operationCopy = operation;
  optionsCopy = options;
  clientCopy = client;
  v10 = clientCopy;
  if (!operationCopy)
  {
    [BiometricKitXPCServer initPresenceDetectOperation:options:client:];
    goto LABEL_12;
  }

  if (!clientCopy)
  {
    [BiometricKitXPCServer initPresenceDetectOperation:options:client:];
    goto LABEL_12;
  }

  if (optionsCopy)
  {
    if (dictionaryGetInteger())
    {
      [BiometricKitXPCServer initPresenceDetectOperation:options:client:];
    }

    else
    {
      if (!dictionaryGetBool())
      {
        goto LABEL_6;
      }

      [BiometricKitXPCServer initPresenceDetectOperation:options:client:];
    }

LABEL_12:
    v11 = v13;
    goto LABEL_7;
  }

LABEL_6:
  [operationCopy setPriority:0x8000000000000064];
  [operationCopy setClient:v10];
  v11 = 0;
LABEL_7:

  return v11;
}

- (int)startPresenceDetectOperation:(id)operation
{
  v12 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = operationCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "startPresenceDetectOperation: %@\n", &v10, 0xCu);
  }

  v7 = [(BiometricKitXPCServer *)self performPresenceDetectCommand:operationCopy];
  if (v7)
  {
    [BiometricKitXPCServer startPresenceDetectOperation:];
  }

  else
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 67109120;
      LODWORD(v11) = 0;
      _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "startPresenceDetectOperation: -> err:0x%x\n", &v10, 8u);
    }
  }

  return v7;
}

- (int)cancelWithClient:(id)client
{
  v30 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = clientCopy;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEFAULT, "cancelWithClient: %@\n", buf, 0xCu);
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  v6 = self->_cmdDispatchQueue;
  objc_sync_enter(v6);
  activeBioOpsQueue = self->_activeBioOpsQueue;
  if (activeBioOpsQueue)
  {
    if ([(NSMutableArray *)activeBioOpsQueue status]!= 2 || ([(NSMutableArray *)self->_activeBioOpsQueue client], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == clientCopy, v8, !v9))
    {
      v10 = self->_bioOpsQueue;
      objc_sync_enter(v10);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = self->_bioOpsQueue;
      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        v13 = *v25;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            client = [v15 client];
            v17 = client == clientCopy;

            if (v17)
            {
              [v15 setStatus:4];

              objc_sync_exit(v10);
              goto LABEL_26;
            }
          }

          v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      objc_sync_exit(v10);
      [(BiometricKitXPCServer *)self removeBioOperationOfClient:clientCopy];
      goto LABEL_26;
    }

    v18 = self->_activeBioOpsQueue;
    if (v18)
    {
      [(NSMutableArray *)v18 setStatus:4];
    }
  }

  if ([(OS_dispatch_queue *)self->_cmdDispatchQueue count])
  {
    [(BiometricKitXPCServer *)self resumeQueuedBioOperation];
LABEL_26:
    v19 = 0;
    goto LABEL_27;
  }

  if (![(BiometricKitXPCServer *)self performCancelCommand])
  {
    goto LABEL_26;
  }

  [BiometricKitXPCServer cancelWithClient:];
  v19 = *buf;
LABEL_27:
  objc_sync_exit(v6);

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = MEMORY[0x277D86220];
  }

  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v19;
      v21 = v20;
      v22 = OS_LOG_TYPE_ERROR;
LABEL_37:
      _os_log_impl(&dword_223E00000, v21, v22, "cancelWithClient -> err:0x%x\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v21 = v20;
    v22 = OS_LOG_TYPE_DEBUG;
    goto LABEL_37;
  }

  return v19;
}

- (void)registerDelegate:(BOOL)delegate withClient:(id)client
{
  delegateCopy = delegate;
  v10 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = delegateCopy;
    v8 = 2112;
    v9 = clientCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEFAULT, "registerDelegate:withClient: %d, %@ -> void\n", v7, 0x12u);
  }
}

- (void)notifyAppIsInactive:(BOOL)inactive withClient:(id)client
{
  inactiveCopy = inactive;
  v10 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = inactiveCopy;
    v8 = 2112;
    v9 = clientCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEFAULT, "notifyAppIsInactive:withClient: %d, %@ -> void\n", v7, 0x12u);
  }
}

- (int)startBioOperation:(id)operation
{
  v30 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v6 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138412290;
    v21 = operationCopy;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "startBioOperation: %@\n", &v20, 0xCu);
  }

  if (!operationCopy)
  {
    [BiometricKitXPCServer startBioOperation:];
    v11 = v20;
    goto LABEL_45;
  }

  v8 = self->_bioOpsQueue;
  objc_sync_enter(v8);
  [(NSMutableArray *)self->_bioOpsQueue addObject:operationCopy];
  objc_sync_exit(v8);

  type = [operationCopy type];
  switch(type)
  {
    case 1:
      v10 = [(BiometricKitXPCServer *)self startEnrollOperation:operationCopy];
      break;
    case 2:
      v10 = [(BiometricKitXPCServer *)self startMatchOperation:operationCopy];
      break;
    case 3:
      v10 = [(BiometricKitXPCServer *)self startPresenceDetectOperation:operationCopy];
      break;
    default:
      if (__osLog)
      {
        v13 = __osLog;
      }

      else
      {
        v13 = v6;
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v11 = 258;
        goto LABEL_45;
      }

      v20 = 136316162;
      v21 = "err == 0 ";
      v22 = 2048;
      v11 = 258;
      v23 = 258;
      v24 = 2080;
      v25 = &unk_223E5FC53;
      v26 = 2080;
      v27 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v28 = 1024;
      v29 = 1819;
LABEL_37:
      _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v20, 0x30u);
LABEL_45:
      v17 = self->_bioOpsQueue;
      objc_sync_enter(v17);
      [(NSMutableArray *)self->_bioOpsQueue removeObject:operationCopy];
      objc_sync_exit(v17);

      if (__osLogTrace)
      {
        v18 = __osLogTrace;
      }

      else
      {
        v18 = v6;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = 67109120;
        LODWORD(v21) = v11;
        _os_log_impl(&dword_223E00000, v18, OS_LOG_TYPE_ERROR, "startBioOperation: -> err:0x%x\n", &v20, 8u);
      }

      goto LABEL_50;
  }

  v11 = v10;
  if (v10)
  {
    activeBioOpsQueue = self->_activeBioOpsQueue;
    if (activeBioOpsQueue && ([(NSMutableArray *)activeBioOpsQueue status]== 3 || [(NSMutableArray *)self->_activeBioOpsQueue status]== 4))
    {
      if ([(NSMutableArray *)self->_activeBioOpsQueue status]== 3)
      {
        [(OS_dispatch_queue *)self->_cmdDispatchQueue insertObject:self->_activeBioOpsQueue atIndex:0];
      }

      [(BiometricKitXPCServer *)self performCancelCommand];
    }

    if (__osLog)
    {
      v13 = __osLog;
    }

    else
    {
      v13 = v6;
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    v20 = 136316162;
    v21 = "err == 0 ";
    v22 = 2048;
    v23 = v11;
    v24 = 2080;
    v25 = &unk_223E5FC53;
    v26 = 2080;
    v27 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v28 = 1024;
    v29 = 1860;
    goto LABEL_37;
  }

  v14 = self->_bioOpsQueue;
  objc_sync_enter(v14);
  if (![(NSMutableArray *)self->_bioOpsQueue count])
  {
    [(BiometricKitXPCServer *)self performCancelCommand];
    if (__osLog)
    {
      v16 = __osLog;
    }

    else
    {
      v16 = v6;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = 136316162;
      v21 = "err == 0 ";
      v22 = 2048;
      v23 = 257;
      v24 = 2080;
      v25 = &unk_223E5FC53;
      v26 = 2080;
      v27 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v28 = 1024;
      v29 = 1834;
      _os_log_impl(&dword_223E00000, v16, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v20, 0x30u);
    }

    objc_sync_exit(v14);

    v11 = 257;
    goto LABEL_45;
  }

  objc_sync_exit(v14);

  [operationCopy setStatus:2];
  objc_storeStrong(&self->_activeBioOpsQueue, operation);
  [(ActivityTracker *)self->_ongoingCatacombSaveTimer setActive:1];
  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v6;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v20 = 67109120;
    LODWORD(v21) = 0;
    _os_log_impl(&dword_223E00000, v15, OS_LOG_TYPE_DEBUG, "startBioOperation: -> err:0x%x\n", &v20, 8u);
  }

  v11 = 0;
LABEL_50:

  return v11;
}

- (void)removeBioOperationOfClient:(id)client
{
  v20 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v19 = clientCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "removeBioOperationOfClient: %@\n", buf, 0xCu);
  }

  v7 = self->_cmdDispatchQueue;
  objc_sync_enter(v7);
  cmdDispatchQueue = self->_cmdDispatchQueue;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __52__BiometricKitXPCServer_removeBioOperationOfClient___block_invoke;
  v15 = &unk_2784FA418;
  v9 = clientCopy;
  v16 = v9;
  selfCopy = self;
  v10 = [(OS_dispatch_queue *)cmdDispatchQueue indexOfObjectPassingTest:&v12];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(OS_dispatch_queue *)self->_cmdDispatchQueue removeObjectAtIndex:v10, v12, v13, v14, v15];
  }

  objc_sync_exit(v7);
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "removeBioOperationOfClient: -> void\n", buf, 2u);
  }
}

BOOL __52__BiometricKitXPCServer_removeBioOperationOfClient___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [v6 client];

  if (v7 == v8)
  {
    if ([v6 status] == 3)
    {
      [*(a1 + 40) sendStatusMessage:objc_msgSend(v6 toClient:{"taskResumedMessage"), *(a1 + 32)}];
    }

    [*(a1 + 40) sendStatusMessage:objc_msgSend(v6 toClient:{"cancelledMessage"), *(a1 + 32)}];
    *a4 = 1;
  }

  return v7 == v8;
}

- (int)pauseBioOperation:(id)operation
{
  v20 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v19 = operationCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "pauseBioOperation: %@\n", buf, 0xCu);
  }

  if (operationCopy)
  {
    [operationCopy setStatus:3];
    taskPausedMessage = [operationCopy taskPausedMessage];
    client = [operationCopy client];
    [(BiometricKitXPCServer *)self sendStatusMessage:taskPausedMessage toClient:client];

    cmdDispatchQueue = self->_cmdDispatchQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __43__BiometricKitXPCServer_pauseBioOperation___block_invoke;
    v16[3] = &unk_2784FA440;
    v10 = operationCopy;
    v17 = v10;
    v11 = [(OS_dispatch_queue *)cmdDispatchQueue indexOfObjectPassingTest:v16];

    v12 = self->_cmdDispatchQueue;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(OS_dispatch_queue *)v12 addObject:v10];
    }

    else
    {
      [(OS_dispatch_queue *)v12 insertObject:v10 atIndex:v11];
    }

    if (__osLogTrace)
    {
      v13 = __osLogTrace;
    }

    else
    {
      v13 = v5;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v19) = 0;
      _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_DEBUG, "pauseBioOperation: -> err:0x%x\n", buf, 8u);
    }

    v14 = 0;
  }

  else
  {
    [BiometricKitXPCServer pauseBioOperation:];
    v14 = *buf;
  }

  return v14;
}

BOOL __43__BiometricKitXPCServer_pauseBioOperation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 priority];
  v8 = [v6 priority];

  if (v7 >= v8)
  {
    *a4 = 1;
  }

  return v7 >= v8;
}

- (int)processBioOperation:(id)operation
{
  v27 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v25 = 138412290;
    v26 = operationCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "processBioOperation: %@\n", &v25, 0xCu);
  }

  if (!operationCopy)
  {
    [BiometricKitXPCServer processBioOperation:];
LABEL_40:
    v20 = v25;
    goto LABEL_26;
  }

  client = [operationCopy client];
  v8 = client == 0;

  if (v8)
  {
    [BiometricKitXPCServer processBioOperation:];
    goto LABEL_40;
  }

  [operationCopy setStatus:1];
  v9 = self->_cmdDispatchQueue;
  objc_sync_enter(v9);
  client2 = [operationCopy client];
  [(BiometricKitXPCServer *)self removeBioOperationOfClient:client2];

  activeBioOpsQueue = self->_activeBioOpsQueue;
  if (!activeBioOpsQueue)
  {
    goto LABEL_23;
  }

  client3 = [(NSMutableArray *)activeBioOpsQueue client];
  client4 = [operationCopy client];
  v14 = client3 == client4;

  v15 = self->_activeBioOpsQueue;
  if (!v14)
  {
    priority = [(NSMutableArray *)v15 priority];
    if (priority > [operationCopy priority])
    {
      v17 = [(BiometricKitXPCServer *)self pauseBioOperation:operationCopy];
LABEL_24:
      v20 = v17;
      goto LABEL_25;
    }

    if ([(NSMutableArray *)self->_activeBioOpsQueue type]== 1 || [(NSMutableArray *)self->_activeBioOpsQueue type]== 2 && ([(NSMutableArray *)self->_activeBioOpsQueue forPreArm]& 1) != 0)
    {
      v21 = 4;
LABEL_22:
      [(NSMutableArray *)self->_activeBioOpsQueue setStatus:v21];
      goto LABEL_23;
    }

    if ([(NSMutableArray *)self->_activeBioOpsQueue status]!= 4)
    {
      v21 = 3;
      goto LABEL_22;
    }

LABEL_23:
    v17 = [(BiometricKitXPCServer *)self startBioOperation:operationCopy];
    goto LABEL_24;
  }

  [(NSMutableArray *)v15 setStatus:4];
  if (![(OS_dispatch_queue *)self->_cmdDispatchQueue count])
  {
    goto LABEL_23;
  }

  firstObject = [(OS_dispatch_queue *)self->_cmdDispatchQueue firstObject];
  priority2 = [firstObject priority];
  LODWORD(priority2) = priority2 > [operationCopy priority];

  if (!priority2)
  {
    goto LABEL_23;
  }

  v20 = [(BiometricKitXPCServer *)self pauseBioOperation:operationCopy];
  if (!v20)
  {
    [(BiometricKitXPCServer *)self resumeQueuedBioOperation];
    v20 = 0;
  }

LABEL_25:
  objc_sync_exit(v9);

  [(BiometricKitXPCServer *)self updateActiveOperationNotification];
  if (v20)
  {
LABEL_26:
    if (__osLogTrace)
    {
      v22 = __osLogTrace;
    }

    else
    {
      v22 = v5;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = 67109120;
      LODWORD(v26) = v20;
      _os_log_impl(&dword_223E00000, v22, OS_LOG_TYPE_ERROR, "processBioOperation: -> err:0x%x\n", &v25, 8u);
    }

    goto LABEL_37;
  }

  if (__osLogTrace)
  {
    v23 = __osLogTrace;
  }

  else
  {
    v23 = v5;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v25 = 67109120;
    LODWORD(v26) = 0;
    _os_log_impl(&dword_223E00000, v23, OS_LOG_TYPE_DEBUG, "processBioOperation: -> err:0x%x\n", &v25, 8u);
  }

  v20 = 0;
LABEL_37:

  return v20;
}

- (void)switchToNextBioOperation:(BOOL)operation
{
  operationCopy = operation;
  v20 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v19[0] = 67109120;
    v19[1] = operationCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "switchToNextBioOperation: %d\n", v19, 8u);
  }

  v7 = self->_cmdDispatchQueue;
  objc_sync_enter(v7);
  v8 = self->_bioOpsQueue;
  objc_sync_enter(v8);
  if (![(NSMutableArray *)self->_bioOpsQueue count])
  {
    goto LABEL_11;
  }

  v9 = [(NSMutableArray *)self->_bioOpsQueue objectAtIndex:0];
  if ([v9 status] == 3)
  {
    taskPausedMessage = [v9 taskPausedMessage];
    client = [v9 client];
    [(BiometricKitXPCServer *)self sendStatusMessage:taskPausedMessage toClient:client];

    [(OS_dispatch_queue *)self->_cmdDispatchQueue insertObject:v9 atIndex:0];
  }

  [(NSMutableArray *)self->_bioOpsQueue removeObject:v9];
  if ([(NSMutableArray *)self->_bioOpsQueue count])
  {

LABEL_11:
    objc_sync_exit(v8);

    goto LABEL_12;
  }

  [(ActivityTracker *)self->_ongoingCatacombSaveTimer setActive:0];

  objc_sync_exit(v8);
  activeBioOpsQueue = self->_activeBioOpsQueue;
  if (activeBioOpsQueue)
  {
    status = [(NSMutableArray *)activeBioOpsQueue status];
    v15 = self->_activeBioOpsQueue;
    self->_activeBioOpsQueue = 0;

    v16 = (status - 3) < 2;
    if (operationCopy)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v16 = 0;
    if (operationCopy)
    {
LABEL_25:
      [(BiometricKitXPCServer *)self resumeQueuedBioOperation];
      goto LABEL_12;
    }
  }

  if (v16)
  {
    goto LABEL_25;
  }

  while ([(OS_dispatch_queue *)self->_cmdDispatchQueue count])
  {
    v17 = [(OS_dispatch_queue *)self->_cmdDispatchQueue objectAtIndex:0];
    client2 = [v17 client];
    [(BiometricKitXPCServer *)self removeBioOperationOfClient:client2];
  }

  [(ActivityTracker *)self->_ongoingCatacombSaveTimer setActive:0];
LABEL_12:
  objc_sync_exit(v7);

  [(BiometricKitXPCServer *)self updateActiveOperationNotification];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v5;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v19[0]) = 0;
    _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEBUG, "switchToNextBioOperation: -> void\n", v19, 2u);
  }
}

- (void)stopBioOperationsAfterReconnect
{
  v25 = *MEMORY[0x277D85DE8];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "stopBioOperationsAfterReconnect\n", buf, 2u);
  }

  v4 = self->_cmdDispatchQueue;
  objc_sync_enter(v4);
  v5 = self->_bioOpsQueue;
  objc_sync_enter(v5);
  array = [MEMORY[0x277CBEB18] array];
  while ([(NSMutableArray *)self->_bioOpsQueue count])
  {
    [array addObjectsFromArray:self->_bioOpsQueue];
    [(NSMutableArray *)self->_bioOpsQueue removeAllObjects];
  }

  if ([(OS_dispatch_queue *)self->_cmdDispatchQueue count])
  {
    [array addObjectsFromArray:self->_cmdDispatchQueue];
    [(OS_dispatch_queue *)self->_cmdDispatchQueue removeAllObjects];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = array;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        status = [v11 status];
        if (status != 1)
        {
          if (status == 3)
          {
            taskResumedMessage = [v11 taskResumedMessage];
            client = [v11 client];
            [(BiometricKitXPCServer *)self sendStatusMessage:taskResumedMessage toClient:client];
          }

          cancelledMessage = [v11 cancelledMessage];
          client2 = [v11 client];
          [(BiometricKitXPCServer *)self sendStatusMessage:cancelledMessage toClient:client2];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  activeBioOpsQueue = self->_activeBioOpsQueue;
  if (activeBioOpsQueue)
  {
    self->_activeBioOpsQueue = 0;
  }

  [(ActivityTracker *)self->_ongoingCatacombSaveTimer setActive:0, v19];

  objc_sync_exit(v5);
  objc_sync_exit(v4);

  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v18, OS_LOG_TYPE_DEBUG, "stopBioOperationsAfterReconnect -> void\n", buf, 2u);
  }
}

- (void)updateActiveOperationNotificationWithOverride:(int)override
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_activeOperationNtfTokenValid)
  {
    LODWORD(v3) = override;
    v5 = self->_bioOpsQueue;
    objc_sync_enter(v5);
    firstObject = [(NSMutableArray *)self->_bioOpsQueue firstObject];
    v7 = firstObject;
    if (firstObject)
    {
      type = [firstObject type];
      v9 = type != 3;
      if (type == 3)
      {
        v10 = 3;
      }

      else
      {
        v10 = 0;
      }

      if (type == 2)
      {
        v9 = 0;
        v11 = 2;
      }

      else
      {
        v11 = v10;
      }

      v12 = type != 1 && v9;
      if (type == 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v11;
      }
    }

    else
    {
      v13 = 0;
      v12 = 1;
    }

    if (((v3 != 0) & v12) != 0)
    {
      v3 = v3;
    }

    else
    {
      v3 = v13;
    }

    state64 = -1;
    notify_get_state(self->_activeOperationNtfToken, &state64);
    if (state64 != v3)
    {
      notify_set_state(self->_activeOperationNtfToken, v3);
      notify_post("com.apple.BiometricKit.activeOperation");
      if (__osLog)
      {
        v14 = __osLog;
      }

      else
      {
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v17 = v3;
        _os_log_impl(&dword_223E00000, v14, OS_LOG_TYPE_DEFAULT, "updateActiveOperationNotificationWithOverride: BKActiveOperationNotification: %d\n", buf, 8u);
      }
    }

    objc_sync_exit(v5);
  }
}

- (void)sendStatusMessage:(unsigned int)message toClient:(id)client
{
  v4 = *&message;
  v11 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v6 = clientCopy;
  if (v4)
  {
    [clientCopy statusMessage:v4];
    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109378;
      v8[1] = v4;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEFAULT, "sending status message %u to %@\n", v8, 0x12u);
    }
  }
}

- (BOOL)isClassCFileAccessible
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "isClassCFileAccessible\n", buf, 2u);
  }

  v5 = MKBDeviceUnlockedSinceBoot();
  if (v5 >= 1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__BiometricKitXPCServer_isClassCFileAccessible__block_invoke;
    block[3] = &unk_2784FA338;
    block[4] = self;
    if (isClassCFileAccessible_onceToken != -1)
    {
      dispatch_once(&isClassCFileAccessible_onceToken, block);
    }
  }

  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = v3;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v10 = v5 > 0;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "isClassCFileAccessible -> %d\n", buf, 8u);
  }

  return v5 > 0;
}

void __47__BiometricKitXPCServer_isClassCFileAccessible__block_invoke(uint64_t a1)
{
  v1 = &__osLog;
  v35 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D86220];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEFAULT, "Starting catacomb file check\n", buf, 2u);
  }

  [*(*(a1 + 32) + 208) lock];
  v4 = [*(*(a1 + 32) + 216) catacombDir];
  v5 = *(a1 + 32);
  v6 = +[CatacombComponent masterComponent];
  v7 = [v5 catacombFileNameForComponent:v6];
  v8 = [v4 stringByAppendingString:v7];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(v6) = [v9 fileExistsAtPath:v8];

  if (v6)
  {
    v10 = 0;
    v11 = 1;
    v12 = 0x277CCA000uLL;
    v13 = 0x277CBE000uLL;
    v30 = v8;
    while (1)
    {
      v14 = v10;
      v15 = *(v12 + 2552);
      v16 = [*(v13 + 3008) fileURLWithPath:v8];
      v32 = v14;
      v17 = [v15 fileHandleForReadingFromURL:v16 error:&v32];
      v10 = v32;

      if (v17)
      {
        break;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Catacomb file check (attempt %d) failed, fileHandleForReadingFromURL(file:'%@') -> %@", v11, v8, v10];
      if (isInternalBuild())
      {
        v19 = *(a1 + 32);
        v20 = v13;
        v21 = v12;
        v22 = v1;
        v23 = v2;
        v24 = MEMORY[0x277CCACA8];
        v25 = [MEMORY[0x277CBEAA8] date];
        v26 = [v24 stringWithFormat:@"%@ - %@", v25, v18];
        [v19 writeStringToPersistentLog:v26];

        v2 = v23;
        v1 = v22;
        v12 = v21;
        v13 = v20;
        v8 = v30;
      }

      if (*v1)
      {
        v27 = *v1;
      }

      else
      {
        v27 = v2;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v34 = v18;
        _os_log_impl(&dword_223E00000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@\n", buf, 0xCu);
      }

      sleep(1u);

      v11 = (v11 + 1);
      if (v11 == 11)
      {
        goto LABEL_30;
      }
    }

    if (*v1)
    {
      v29 = *v1;
    }

    else
    {
      v29 = v2;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223E00000, v29, OS_LOG_TYPE_DEFAULT, "Catacomb file check succeeded\n", buf, 2u);
    }
  }

  else
  {
    if (__osLog)
    {
      v28 = __osLog;
    }

    else
    {
      v28 = v2;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223E00000, v28, OS_LOG_TYPE_DEFAULT, "Catacomb file check skipped (file not found)\n", buf, 2u);
    }

    v10 = 0;
  }

LABEL_30:
  [*(*(a1 + 32) + 208) unlock];
}

- (BOOL)isCatacombAccessible
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "isCatacombAccessible\n", v8, 2u);
  }

  isClassCFileAccessible = [(BiometricKitXPCServer *)self isClassCFileAccessible];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = v3;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109120;
    v8[1] = isClassCFileAccessible;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "isCatacombAccessible -> %d\n", v8, 8u);
  }

  return isClassCFileAccessible;
}

- (int)writeStringToPersistentLog:(id)log
{
  logCopy = log;
  v4 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:@"/var/mobile/Library/Logs/biometrickitd.log"];
  if (v4 || ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "createFileAtPath:contents:attributes:", @"/var/mobile/Library/Logs/biometrickitd.log", 0, 0), v5, objc_msgSend(MEMORY[0x277CCA9F8], "fileHandleForWritingAtPath:", @"/var/mobile/Library/Logs/biometrickitd.log"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [v4 seekToEndOfFile];
    v6 = [logCopy dataUsingEncoding:4];
    [v4 writeData:v6];

    v7 = [@"\n" dataUsingEncoding:4];
    [v4 writeData:v7];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [defaultManager attributesOfItemAtPath:@"/var/mobile/Library/Logs/biometrickitd.log" error:0];

    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        integerValue = [v10 integerValue];
      }

      else
      {
        integerValue = 0;
      }
    }

    else
    {
      integerValue = 0;
    }

    [v4 closeFile];

    if (integerValue > 0x200000)
    {
      v12 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/var/mobile/Library/Logs/biometrickitd.log"];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 subdataWithRange:{integerValue - 0x100000, 0x100000}];

        [v14 writeToFile:@"/var/mobile/Library/Logs/biometrickitd.log" atomically:0];
      }

      else
      {
        v14 = 0;
      }
    }

    v15 = 0;
  }

  else
  {
    [BiometricKitXPCServer writeStringToPersistentLog:];
    v15 = v17;
  }

  return v15;
}

- (id)hexDumpData:(char *)data size:(unint64_t)size
{
  string = [MEMORY[0x277CCAB68] string];
  if (data)
  {
    for (; size; --size)
    {
      v7 = *data++;
      [string appendFormat:@"%02x", v7];
    }
  }

  else
  {
    [BiometricKitXPCServer hexDumpData:size:];
  }

  return string;
}

- (int)logCatacombInfo:(id)info data:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dataCopy = data;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  if (dataCopy)
  {
    ccsha1_di();
    [dataCopy length];
    [dataCopy bytes];
    ccdigest();
    v8 = MEMORY[0x277CCAB68];
    date = [MEMORY[0x277CBEAA8] date];
    infoCopy = [v8 stringWithFormat:@"%@ - %@: ", date, infoCopy];

    v11 = [(BiometricKitXPCServer *)self hexDumpData:v15 size:20];
    [infoCopy appendFormat:@"SHA1: %@, ", v11];

    [infoCopy appendFormat:@"Size: %zu", objc_msgSend(dataCopy, "length")];
    v12 = [(BiometricKitXPCServer *)self writeStringToPersistentLog:infoCopy];
  }

  else
  {
    [BiometricKitXPCServer logCatacombInfo:data:];
    v12 = v14;
  }

  return v12;
}

- (void)logCatacombUUIDForUser:(unsigned int)user catacombUUID:(id)d
{
  v4 = *&user;
  v17[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = dCopy;
  if (v4 == -1)
  {
    [BiometricKitXPCServer logCatacombUUIDForUser:catacombUUID:];
LABEL_18:
    v7 = *buf;
    goto LABEL_15;
  }

  if (!dCopy)
  {
    v13 = 0;
    v8 = [(BiometricKitXPCServer *)self performGetCatacombUUIDCommand:v4 outUUID:&v13];
    v7 = v13;
    if (v8)
    {
      [BiometricKitXPCServer logCatacombUUIDForUser:catacombUUID:];
      goto LABEL_18;
    }
  }

  if (isInternalBuild())
  {
    if (__osLog)
    {
      v9 = __osLog;
    }

    else
    {
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      uUIDString = [v7 UUIDString];
      *buf = 67109378;
      *&buf[4] = v4;
      v15 = 2112;
      *v16 = uUIDString;
      _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEFAULT, "logCatacombUUIDForUser: %u -> %@\n", buf, 0x12u);
    }
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0;
    [v7 getUUIDBytes:v17];
    if (__osLog)
    {
      v12 = __osLog;
    }

    else
    {
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = v4;
      v15 = 1024;
      *v16 = LOBYTE(v17[0]);
      *&v16[4] = 1024;
      *&v16[6] = BYTE1(v17[0]);
      _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEFAULT, "logCatacombUUIDForUser: %u -> %02X%02X***\n", buf, 0x14u);
    }
  }

LABEL_15:
}

- (void)logCatacombHashForUser:(unsigned int)user catacombHash:(id)hash
{
  v4 = *&user;
  v23 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  v7 = hashCopy;
  if (v4 == -1)
  {
    [BiometricKitXPCServer logCatacombHashForUser:catacombHash:];
LABEL_19:
    v7 = *buf;
    goto LABEL_16;
  }

  if (!hashCopy)
  {
    v17 = 0;
    v8 = [(BiometricKitXPCServer *)self performGetCatacombHashCommand:v4 outHash:&v17];
    v7 = v17;
    if (v8)
    {
      [BiometricKitXPCServer logCatacombHashForUser:catacombHash:];
      goto LABEL_19;
    }
  }

  if (isInternalBuild())
  {
    if (__osLog)
    {
      v9 = __osLog;
    }

    else
    {
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v7 debugDescription];
      *buf = 67109378;
      *&buf[4] = v4;
      v19 = 2112;
      *v20 = v11;
      _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEFAULT, "logCatacombHashForUser: %u -> %@\n", buf, 0x12u);

LABEL_15:
    }
  }

  else
  {
    v16 = 0;
    [v7 getBytes:&v16 length:2];
    if (__osLog)
    {
      v12 = __osLog;
    }

    else
    {
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v16;
      v14 = HIBYTE(v16);
      v10 = v12;
      v15 = [v7 length];
      *buf = 67109888;
      *&buf[4] = v4;
      v19 = 1024;
      *v20 = v13;
      *&v20[4] = 1024;
      *&v20[6] = v14;
      v21 = 2048;
      v22 = v15;
      _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEFAULT, "logCatacombHashForUser: %u -> %02x%02x*** (length:%lu)\n", buf, 0x1Eu);
      goto LABEL_15;
    }
  }

LABEL_16:
}

- (int)filterIdentities:(id)identities withFilter:(id)filter
{
  v214 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  filterCopy = filter;
  v7 = __osLogTrace;
  if (!__osLogTrace)
  {
    v7 = MEMORY[0x277D86220];
  }

  v8 = v7;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = identitiesCopy;
    *&buf[12] = 2112;
    *&buf[14] = filterCopy;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "filterIdentities:withFilter: %@, %@\n", buf, 0x16u);
  }

  v121 = identitiesCopy;
  v122 = filterCopy;
  if (!identitiesCopy || !filterCopy)
  {
    if (__osLog)
    {
      v116 = __osLog;
    }

    else
    {
      v116 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "filter != ((void*)0) && identities != ((void*)0)";
      *&buf[12] = 2048;
      *&buf[14] = 0;
      v208 = 2080;
      v209 = &unk_223E5FC53;
      v210 = 2080;
      v211 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v212 = 1024;
      v213 = 2525;
      _os_log_impl(&dword_223E00000, v116, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v9 = 0;
    obj = 0;
    v133 = 0;
    v113 = 263;
    goto LABEL_196;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (__osLog)
    {
      v117 = __osLog;
    }

    else
    {
      v117 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "[filter isKindOfClass:[NSDictionary class]]";
      *&buf[12] = 2048;
      *&buf[14] = 0;
      v208 = 2080;
      v209 = &unk_223E5FC53;
      v210 = 2080;
      v211 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v212 = 1024;
      v213 = 2526;
      _os_log_impl(&dword_223E00000, v117, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v9 = 0;
    obj = 0;
    v133 = 0;
    goto LABEL_195;
  }

  v9 = [MEMORY[0x277CBEB18] arrayWithArray:identitiesCopy];
  v10 = [filterCopy objectForKeyedSubscript:@"BKFilterIdentity"];
  v11 = 0x277CBE000uLL;
  if (v10)
  {
    v12 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x277CBEA60] arrayWithObject:v12];

      v12 = v13;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v12;
      if (__osLog)
      {
        v118 = __osLog;
      }

      else
      {
        v118 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = "[value isKindOfClass:[NSArray class]]";
        *&buf[12] = 2048;
        *&buf[14] = 0;
        v208 = 2080;
        v209 = &unk_223E5FC53;
        v210 = 2080;
        v211 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v212 = 1024;
        v213 = 2535;
        _os_log_impl(&dword_223E00000, v118, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v133 = 0;
      goto LABEL_195;
    }

    v133 = [MEMORY[0x277CBEB18] arrayWithArray:v9];
    [v9 removeAllObjects];
    v191 = 0u;
    v192 = 0u;
    v189 = 0u;
    v190 = 0u;
    obj = v12;
    v124 = [obj countByEnumeratingWithState:&v189 objects:v206 count:16];
    if (v124)
    {
      v123 = *v190;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v190 != v123)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v189 + 1) + 8 * v14);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [BiometricKitXPCServer filterIdentities:? withFilter:?];
            goto LABEL_195;
          }

          v127 = v14;
          v187 = 0u;
          v188 = 0u;
          v185 = 0u;
          v186 = 0u;
          v16 = v133;
          v17 = [v16 countByEnumeratingWithState:&v185 objects:v205 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v186;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v186 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v185 + 1) + 8 * i);
                uuid = [v21 uuid];
                uuid2 = [v15 uuid];
                if ([uuid isEqual:uuid2] && (v24 = objc_msgSend_userID(v21), v24 == objc_msgSend_userID(v15)) && (v25 = objc_msgSend(v21, "type"), v25 == objc_msgSend(v15, "type")))
                {
                  v26 = [v9 containsObject:v21];

                  if ((v26 & 1) == 0)
                  {
                    [v9 addObject:v21];
                  }
                }

                else
                {
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v185 objects:v205 count:16];
            }

            while (v18);
          }

          v14 = v127 + 1;
        }

        while (v127 + 1 != v124);
        v124 = [obj countByEnumeratingWithState:&v189 objects:v206 count:16];
        if (v124)
        {
          continue;
        }

        break;
      }
    }

    filterCopy = v122;
    v11 = 0x277CBE000;
  }

  else
  {
    v133 = 0;
  }

  v27 = [filterCopy objectForKeyedSubscript:@"BKFilterUUID"];
  if (v27)
  {
    v28 = v27;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [*(v11 + 2656) arrayWithObject:v28];

      v28 = v29;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v28;
      if (__osLog)
      {
        v119 = __osLog;
      }

      else
      {
        v119 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_195;
      }

      *buf = 136316162;
      *&buf[4] = "[value isKindOfClass:[NSArray class]]";
      *&buf[12] = 2048;
      *&buf[14] = 0;
      v208 = 2080;
      v209 = &unk_223E5FC53;
      v210 = 2080;
      v211 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v212 = 1024;
      v213 = 2560;
      goto LABEL_246;
    }

    v128 = [MEMORY[0x277CBEB18] arrayWithArray:v9];

    [v9 removeAllObjects];
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    obj = v28;
    v134 = [obj countByEnumeratingWithState:&v181 objects:v204 count:16];
    if (v134)
    {
      v125 = *v182;
      while (2)
      {
        for (j = 0; j != v134; ++j)
        {
          if (*v182 != v125)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v181 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [BiometricKitXPCServer filterIdentities:? withFilter:?];
            goto LABEL_193;
          }

          v179 = 0u;
          v180 = 0u;
          v177 = 0u;
          v178 = 0u;
          v32 = v128;
          v33 = [v32 countByEnumeratingWithState:&v177 objects:v203 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v178;
            do
            {
              for (k = 0; k != v34; ++k)
              {
                if (*v178 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v177 + 1) + 8 * k);
                uuid3 = [v37 uuid];
                if ([uuid3 isEqual:v31])
                {
                  v39 = [v9 containsObject:v37];

                  if ((v39 & 1) == 0)
                  {
                    [v9 addObject:v37];
                  }
                }

                else
                {
                }
              }

              v34 = [v32 countByEnumeratingWithState:&v177 objects:v203 count:16];
            }

            while (v34);
          }
        }

        v134 = [obj countByEnumeratingWithState:&v181 objects:v204 count:16];
        if (v134)
        {
          continue;
        }

        break;
      }
    }

    filterCopy = v122;
    v11 = 0x277CBE000;
  }

  else
  {
    v128 = v133;
  }

  v40 = [filterCopy objectForKeyedSubscript:@"BKFilterUserID"];
  if (v40)
  {
    v41 = v40;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [*(v11 + 2656) arrayWithObject:v41];

      v41 = v42;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v41;
      if (__osLog)
      {
        v120 = __osLog;
      }

      else
      {
        v120 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_193;
      }

      *buf = 136316162;
      *&buf[4] = "[value isKindOfClass:[NSArray class]]";
      *&buf[12] = 2048;
      *&buf[14] = 0;
      v208 = 2080;
      v209 = &unk_223E5FC53;
      v210 = 2080;
      v211 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v212 = 1024;
      v213 = 2582;
      goto LABEL_240;
    }

    v133 = [MEMORY[0x277CBEB18] arrayWithArray:v9];

    [v9 removeAllObjects];
    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    obj = v41;
    v43 = [obj countByEnumeratingWithState:&v173 objects:v202 count:16];
    if (v43)
    {
      v44 = v43;
      v129 = *v174;
      while (2)
      {
        for (m = 0; m != v44; ++m)
        {
          if (*v174 != v129)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v173 + 1) + 8 * m);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [BiometricKitXPCServer filterIdentities:? withFilter:?];
            goto LABEL_195;
          }

          v171 = 0u;
          v172 = 0u;
          v169 = 0u;
          v170 = 0u;
          v47 = v133;
          v48 = [v47 countByEnumeratingWithState:&v169 objects:v201 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v170;
            do
            {
              for (n = 0; n != v49; ++n)
              {
                if (*v170 != v50)
                {
                  objc_enumerationMutation(v47);
                }

                v52 = *(*(&v169 + 1) + 8 * n);
                v53 = objc_msgSend_userID(v52);
                if (v53 == [v46 intValue] && (objc_msgSend(v9, "containsObject:", v52) & 1) == 0)
                {
                  [v9 addObject:v52];
                }
              }

              v49 = [v47 countByEnumeratingWithState:&v169 objects:v201 count:16];
            }

            while (v49);
          }
        }

        v44 = [obj countByEnumeratingWithState:&v173 objects:v202 count:16];
        if (v44)
        {
          continue;
        }

        break;
      }
    }

    filterCopy = v122;
    v11 = 0x277CBE000;
  }

  else
  {
    v133 = v128;
  }

  v54 = [filterCopy objectForKeyedSubscript:@"BKFilterType"];
  if (v54)
  {
    v55 = v54;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = [*(v11 + 2656) arrayWithObject:v55];

      v55 = v56;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v55;
      if (__osLog)
      {
        v119 = __osLog;
      }

      else
      {
        v119 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_195;
      }

      *buf = 136316162;
      *&buf[4] = "[value isKindOfClass:[NSArray class]]";
      *&buf[12] = 2048;
      *&buf[14] = 0;
      v208 = 2080;
      v209 = &unk_223E5FC53;
      v210 = 2080;
      v211 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v212 = 1024;
      v213 = 2604;
      goto LABEL_246;
    }

    v128 = [MEMORY[0x277CBEB18] arrayWithArray:v9];

    [v9 removeAllObjects];
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    obj = v55;
    v57 = [obj countByEnumeratingWithState:&v165 objects:v200 count:16];
    if (v57)
    {
      v58 = v57;
      v135 = *v166;
      while (2)
      {
        for (ii = 0; ii != v58; ++ii)
        {
          if (*v166 != v135)
          {
            objc_enumerationMutation(obj);
          }

          v60 = *(*(&v165 + 1) + 8 * ii);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [BiometricKitXPCServer filterIdentities:? withFilter:?];
            goto LABEL_193;
          }

          v163 = 0u;
          v164 = 0u;
          v161 = 0u;
          v162 = 0u;
          v61 = v128;
          v62 = [v61 countByEnumeratingWithState:&v161 objects:v199 count:16];
          if (v62)
          {
            v63 = v62;
            v64 = *v162;
            do
            {
              for (jj = 0; jj != v63; ++jj)
              {
                if (*v162 != v64)
                {
                  objc_enumerationMutation(v61);
                }

                v66 = *(*(&v161 + 1) + 8 * jj);
                type = [v66 type];
                if (type == [v60 intValue] && (objc_msgSend(v9, "containsObject:", v66) & 1) == 0)
                {
                  [v9 addObject:v66];
                }
              }

              v63 = [v61 countByEnumeratingWithState:&v161 objects:v199 count:16];
            }

            while (v63);
          }
        }

        v58 = [obj countByEnumeratingWithState:&v165 objects:v200 count:16];
        if (v58)
        {
          continue;
        }

        break;
      }
    }

    filterCopy = v122;
    v11 = 0x277CBE000;
  }

  else
  {
    v128 = v133;
  }

  v68 = [filterCopy objectForKeyedSubscript:@"BKFilterAttribute"];
  if (!v68)
  {
    v133 = v128;
LABEL_132:
    v82 = [filterCopy objectForKeyedSubscript:@"BKFilterEntity"];
    if (!v82)
    {
      v128 = v133;
LABEL_156:
      v96 = [filterCopy objectForKeyedSubscript:@"BKFilterName"];
      if (!v96)
      {
        obj = 0;
        v133 = v128;
LABEL_182:
        v110 = v121;
        [v121 setArray:v9];
        v111 = __osLogTrace;
        if (!__osLogTrace)
        {
          v111 = MEMORY[0x277D86220];
        }

        v112 = v111;
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109378;
          *&buf[8] = 2112;
          *&buf[10] = v121;
          _os_log_impl(&dword_223E00000, v112, OS_LOG_TYPE_DEBUG, "filterIdentities:withFilter: -> err:0x%x, filteredIdentities:%@\n", buf, 0x12u);
        }

        v113 = 0;
        goto LABEL_201;
      }

      v97 = v96;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v98 = [*(v11 + 2656) arrayWithObject:v97];

        v97 = v98;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v133 = [MEMORY[0x277CBEB18] arrayWithArray:v9];

        [v9 removeAllObjects];
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        obj = v97;
        v131 = [obj countByEnumeratingWithState:&v141 objects:v194 count:16];
        if (v131)
        {
          v126 = *v142;
          while (2)
          {
            for (kk = 0; kk != v131; ++kk)
            {
              if (*v142 != v126)
              {
                objc_enumerationMutation(obj);
              }

              v100 = *(*(&v141 + 1) + 8 * kk);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [BiometricKitXPCServer filterIdentities:? withFilter:?];
                goto LABEL_195;
              }

              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v101 = v133;
              v102 = [v101 countByEnumeratingWithState:&v137 objects:v193 count:16];
              if (v102)
              {
                v103 = v102;
                v104 = *v138;
                do
                {
                  for (mm = 0; mm != v103; ++mm)
                  {
                    if (*v138 != v104)
                    {
                      objc_enumerationMutation(v101);
                    }

                    v106 = *(*(&v137 + 1) + 8 * mm);
                    name = [v106 name];
                    if (([name isEqual:v100] & 1) == 0 && (objc_msgSend(v106, "name"), v108 = objc_claimAutoreleasedReturnValue(), v108 | v100))
                    {
                    }

                    else
                    {
                      v109 = [v9 containsObject:v106];

                      if ((v109 & 1) == 0)
                      {
                        [v9 addObject:v106];
                      }
                    }
                  }

                  v103 = [v101 countByEnumeratingWithState:&v137 objects:v193 count:16];
                }

                while (v103);
              }
            }

            v131 = [obj countByEnumeratingWithState:&v141 objects:v194 count:16];
            if (v131)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_182;
      }

      obj = v97;
      [BiometricKitXPCServer filterIdentities:withFilter:];
      goto LABEL_193;
    }

    v83 = v82;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v84 = [*(v11 + 2656) arrayWithObject:v83];

      v83 = v84;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v128 = [MEMORY[0x277CBEB18] arrayWithArray:v9];

      [v9 removeAllObjects];
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      obj = v83;
      v85 = [obj countByEnumeratingWithState:&v149 objects:v196 count:16];
      if (v85)
      {
        v86 = v85;
        v136 = *v150;
        while (2)
        {
          for (nn = 0; nn != v86; ++nn)
          {
            if (*v150 != v136)
            {
              objc_enumerationMutation(obj);
            }

            v88 = *(*(&v149 + 1) + 8 * nn);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [BiometricKitXPCServer filterIdentities:? withFilter:?];
              goto LABEL_193;
            }

            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            v89 = v128;
            v90 = [v89 countByEnumeratingWithState:&v145 objects:v195 count:16];
            if (v90)
            {
              v91 = v90;
              v92 = *v146;
              do
              {
                for (i1 = 0; i1 != v91; ++i1)
                {
                  if (*v146 != v92)
                  {
                    objc_enumerationMutation(v89);
                  }

                  v94 = *(*(&v145 + 1) + 8 * i1);
                  entity = [v94 entity];
                  if (entity == [v88 intValue] && (objc_msgSend(v9, "containsObject:", v94) & 1) == 0)
                  {
                    [v9 addObject:v94];
                  }
                }

                v91 = [v89 countByEnumeratingWithState:&v145 objects:v195 count:16];
              }

              while (v91);
            }
          }

          v86 = [obj countByEnumeratingWithState:&v149 objects:v196 count:16];
          if (v86)
          {
            continue;
          }

          break;
        }
      }

      filterCopy = v122;
      v11 = 0x277CBE000;
      goto LABEL_156;
    }

    obj = v83;
    if (__osLog)
    {
      v119 = __osLog;
    }

    else
    {
      v119 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
LABEL_195:
      v113 = 258;
      goto LABEL_196;
    }

    *buf = 136316162;
    *&buf[4] = "[value isKindOfClass:[NSArray class]]";
    *&buf[12] = 2048;
    *&buf[14] = 0;
    v208 = 2080;
    v209 = &unk_223E5FC53;
    v210 = 2080;
    v211 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v212 = 1024;
    v213 = 2648;
LABEL_246:
    _os_log_impl(&dword_223E00000, v119, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    goto LABEL_195;
  }

  v69 = v68;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v70 = [*(v11 + 2656) arrayWithObject:v69];

    v69 = v70;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v133 = [MEMORY[0x277CBEB18] arrayWithArray:v9];

    [v9 removeAllObjects];
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    obj = v69;
    v71 = [obj countByEnumeratingWithState:&v157 objects:v198 count:16];
    if (v71)
    {
      v72 = v71;
      v130 = *v158;
      while (2)
      {
        for (i2 = 0; i2 != v72; ++i2)
        {
          if (*v158 != v130)
          {
            objc_enumerationMutation(obj);
          }

          v74 = *(*(&v157 + 1) + 8 * i2);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [BiometricKitXPCServer filterIdentities:? withFilter:?];
            goto LABEL_195;
          }

          v155 = 0u;
          v156 = 0u;
          v153 = 0u;
          v154 = 0u;
          v75 = v133;
          v76 = [v75 countByEnumeratingWithState:&v153 objects:v197 count:16];
          if (v76)
          {
            v77 = v76;
            v78 = *v154;
            do
            {
              for (i3 = 0; i3 != v77; ++i3)
              {
                if (*v154 != v78)
                {
                  objc_enumerationMutation(v75);
                }

                v80 = *(*(&v153 + 1) + 8 * i3);
                attribute = [v80 attribute];
                if (attribute == [v74 intValue] && (objc_msgSend(v9, "containsObject:", v80) & 1) == 0)
                {
                  [v9 addObject:v80];
                }
              }

              v77 = [v75 countByEnumeratingWithState:&v153 objects:v197 count:16];
            }

            while (v77);
          }
        }

        v72 = [obj countByEnumeratingWithState:&v157 objects:v198 count:16];
        if (v72)
        {
          continue;
        }

        break;
      }
    }

    filterCopy = v122;
    v11 = 0x277CBE000;
    goto LABEL_132;
  }

  obj = v69;
  if (__osLog)
  {
    v120 = __osLog;
  }

  else
  {
    v120 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *&buf[4] = "[value isKindOfClass:[NSArray class]]";
    *&buf[12] = 2048;
    *&buf[14] = 0;
    v208 = 2080;
    v209 = &unk_223E5FC53;
    v210 = 2080;
    v211 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v212 = 1024;
    v213 = 2626;
LABEL_240:
    _os_log_impl(&dword_223E00000, v120, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

LABEL_193:
  v113 = 258;
  v133 = v128;
LABEL_196:
  v114 = __osLogTrace;
  if (!__osLogTrace)
  {
    v114 = MEMORY[0x277D86220];
  }

  v112 = v114;
  if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    *&buf[4] = v113;
    *&buf[8] = 2112;
    v110 = v121;
    *&buf[10] = v121;
    _os_log_impl(&dword_223E00000, v112, OS_LOG_TYPE_ERROR, "filterIdentities:withFilter: -> err:0x%x, filteredIdentities:%@\n", buf, 0x12u);
  }

  else
  {
    v110 = v121;
  }

LABEL_201:

  return v113;
}

- (int)parseAuthDict:(id)dict toAuthData:(id *)data
{
  v31 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v6 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = dictCopy;
    v29 = 2048;
    dataCopy = data;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "parseAuthDict:toAuthData: %@, %p\n", buf, 0x16u);
  }

  if (!data)
  {
    [BiometricKitXPCServer parseAuthDict:toAuthData:];
    goto LABEL_36;
  }

  *&data->var2[24] = 0;
  *&data->var0 = 0u;
  *&data->var2[8] = 0u;
  if (!dictCopy)
  {
    goto LABEL_24;
  }

  v8 = @"BKOptionAuthWithCredentialSet";
  v9 = [dictCopy objectForKeyedSubscript:@"BKOptionAuthWithCredentialSet"];

  if (v9 || (v8 = @"BKOptionEnrollWithCredentialSet", [dictCopy objectForKeyedSubscript:@"BKOptionEnrollWithCredentialSet"], v10 = objc_claimAutoreleasedReturnValue(), v10, v10) || (v8 = @"BKOptionMatchCredentialSetForExtendEnrollment", objc_msgSend(dictCopy, "objectForKeyedSubscript:", @"BKOptionMatchCredentialSetForExtendEnrollment"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = 0;
  }

  else
  {
    v8 = @"BKOptionAuthWithAuthToken";
    v18 = [dictCopy objectForKeyedSubscript:@"BKOptionAuthWithAuthToken"];

    if (!v18)
    {
      v8 = @"BKOptionEnrollWithAuthToken";
      v19 = [dictCopy objectForKeyedSubscript:@"BKOptionEnrollWithAuthToken"];

      if (!v19)
      {
        v8 = @"BKOptionMatchAuthTokenForExtendEnrollment";
        v20 = [dictCopy objectForKeyedSubscript:@"BKOptionMatchAuthTokenForExtendEnrollment"];

        if (!v20)
        {
          v8 = @"BKOptionMatchAuthTokenToBypassPasscodeBiolockout";
          v21 = [dictCopy objectForKeyedSubscript:@"BKOptionMatchAuthTokenToBypassPasscodeBiolockout"];

          if (!v21)
          {
            goto LABEL_24;
          }
        }
      }
    }

    v12 = 1;
  }

  v13 = [dictCopy objectForKeyedSubscript:v8];
  if (!v13)
  {
LABEL_24:
    v15 = 0;
    data->var0 = 1;
    goto LABEL_25;
  }

  v14 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
    v16 = [v15 length];
    if (v16 >= 0x21)
    {
      [BiometricKitXPCServer parseAuthDict:toAuthData:];
    }

    else
    {
      v17 = (v16 & 0x2F) != 0;
      if (!v12)
      {
        v17 = v16 == 0;
      }

      if (!v17)
      {
        data->var0 = v12;
        data->var1 = v16;
        [v15 getBytes:data->var2 length:?];
LABEL_25:
        if (__osLogTrace)
        {
          v22 = __osLogTrace;
        }

        else
        {
          v22 = v6;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *&buf[4] = 0;
          _os_log_impl(&dword_223E00000, v22, OS_LOG_TYPE_DEBUG, "parseAuthDict:toAuthData: -> err:0x%x\n", buf, 8u);
        }

        v23 = 0;
        v24 = v15;
        goto LABEL_31;
      }

      [BiometricKitXPCServer parseAuthDict:toAuthData:];
    }
  }

  else
  {
    [BiometricKitXPCServer parseAuthDict:toAuthData:];
  }

LABEL_36:
  v24 = v27;
  v15 = *buf;
  if (__osLogTrace)
  {
    v26 = __osLogTrace;
  }

  else
  {
    v26 = v6;
  }

  v23 = 258;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = 258;
    _os_log_impl(&dword_223E00000, v26, OS_LOG_TYPE_ERROR, "parseAuthDict:toAuthData: -> err:0x%x\n", buf, 8u);
  }

LABEL_31:

  return v23;
}

- (BOOL)isDisplayOn
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLog)
  {
    v4 = __osLog;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "isDisplayOn\n", buf, 2u);
  }

  valuePtr = 0;
  backlightService = self->_backlightService;
  if (!backlightService)
  {
    [(BiometricKitXPCServer *)buf isDisplayOn];
LABEL_20:
    v10 = buf[0];
    goto LABEL_12;
  }

  CFProperty = IORegistryEntryCreateCFProperty(backlightService, @"IODisplayParameters", *MEMORY[0x277CBECE8], 0);
  if (!CFProperty)
  {
    [(BiometricKitXPCServer *)buf isDisplayOn];
    goto LABEL_20;
  }

  v7 = CFProperty;
  Value = CFDictionaryGetValue(CFProperty, @"brightness");
  if (Value)
  {
    v9 = CFDictionaryGetValue(Value, @"value");
    if (v9)
    {
      CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
    }

    else
    {
      [BiometricKitXPCServer isDisplayOn];
    }
  }

  else
  {
    [BiometricKitXPCServer isDisplayOn];
  }

  CFRelease(v7);
  v10 = valuePtr != 0;
LABEL_12:
  if (__osLog)
  {
    v11 = __osLog;
  }

  else
  {
    v11 = v3;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v15 = v10;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "isDisplayOn -> %d\n", buf, 8u);
  }

  return v10;
}

- (int)displayStateChanged:(BOOL)changed
{
  changedCopy = changed;
  v24 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = 67109120;
    LODWORD(v15) = changedCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "displayStateChanged: %d\n", &v14, 8u);
  }

  if (self->_lastDisplayState == changedCopy)
  {
    goto LABEL_13;
  }

  v7 = [(BiometricKitXPCServer *)self performDisplayStatusChangedCommand:changedCopy];
  if (!v7)
  {
    self->_lastDisplayState = changedCopy;
    if (__osLog)
    {
      v8 = __osLog;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      LODWORD(v15) = changedCopy;
      _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEFAULT, "displayStateChanged: (_lastDisplayState !=) %d\n", &v14, 8u);
    }

LABEL_13:
    if (__osLogTrace)
    {
      v9 = __osLogTrace;
    }

    else
    {
      v9 = v5;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = 67109120;
      LODWORD(v15) = 0;
      _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEBUG, "displayStateChanged: -> err:0x%x\n", &v14, 8u);
    }

    return 0;
  }

  v10 = v7;
  if (__osLog)
  {
    v12 = __osLog;
  }

  else
  {
    v12 = v5;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = 136316162;
    v15 = "err == 0 ";
    v16 = 2048;
    v17 = v10;
    v18 = 2080;
    v19 = &unk_223E5FC53;
    v20 = 2080;
    v21 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v22 = 1024;
    v23 = 2829;
    _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v14, 0x30u);
  }

  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v5;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = 67109120;
    LODWORD(v15) = v10;
    _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_ERROR, "displayStateChanged: -> err:0x%x\n", &v14, 8u);
  }

  return v10;
}

- (void)postGeneralLockoutStateNotification
{
  if (__osLog)
  {
    v2 = __osLog;
  }

  else
  {
    v2 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_223E00000, v2, OS_LOG_TYPE_DEBUG, "postGeneralLockoutStateNotification\n", v3, 2u);
  }

  notify_post("com.apple.BiometricKit.generalLockoutStateChanged");
}

- (void)updateEnrollmentChangedNotification:(BOOL)notification
{
  notificationCopy = notification;
  v13 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12[0] = 67109120;
    v12[1] = notificationCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "updateEnrollmentChangedNotification: %d\n", v12, 8u);
  }

  if (self->_enrollChgNtfTokenValid)
  {
    enrollChgNtfToken = self->_enrollChgNtfToken;
    v8 = (self->_mkbLockStatusNtfToken & 0x10000) != 0 ? 1 : [(BiometricKitXPCServer *)self identitiesCount];
    notify_set_state(enrollChgNtfToken, v8);
    if (notificationCopy)
    {
      notify_post("com.apple.BiometricKit.enrollmentChanged");
    }
  }

  if (BYTE2(self->_mkbLockStatusNtfToken) == 1)
  {
    [(BiometricKitXPCServer *)self updateExpressModeStateWithEnrollmentCount:1];
  }

  else
  {
    v9 = [(BiometricKitXPCServer *)self identitiesOfUser:[(BiometricKitXPCServer *)self currentAccountUserID]];
    v10 = [v9 count];

    [(BiometricKitXPCServer *)self updateExpressModeStateWithEnrollmentCount:v10];
    if (!v10)
    {
      [(BiometricKitXPCServer *)self updateLockoutStateNotification:0];
    }
  }

  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "updateEnrollmentChangedNotification: -> void\n", v12, 2u);
  }
}

- (void)cacheUserAccountsInfo
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  *self = 0;
}

- ($89967B733E8F0E8859294B5D59E7AF0F)userAccountsInfo
{
  if ((self->_userAccountsInfo.currentAccountUserID & 0x10000) == 0)
  {
    [(BiometricKitXPCServer *)self cacheAndSetUserAccountsInfo];
  }

  return (&self->_enrollChgNtfTokenValid + 1);
}

- (unsigned)currentAccountUserID
{
  if ((self->_userAccountsInfo.currentAccountUserID & 0x10000) == 0)
  {
    [(BiometricKitXPCServer *)self cacheAndSetUserAccountsInfo];
  }

  return *(&self->_enrollChgNtfTokenValid + 1);
}

- (void)updateLockoutStateNotification:(unsigned int)notification
{
  v3 = *&notification;
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v10[0]) = 67109120;
    HIDWORD(v10[0]) = v3;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "updateLockoutStateNotification: %u\n", v10, 8u);
  }

  if (self->_userAccountsInfoValid)
  {
    v7 = [(BiometricKitXPCServer *)self identitiesOfUser:[(BiometricKitXPCServer *)self currentAccountUserID]];
    v8 = (([v7 count] != 0) & (v3 >> 2)) != 0 ? 3 : 0;

    v10[0] = 0;
    if (!notify_get_state(*&self->_userAccountsInfo.hasMultipleUserAccounts, v10) && v8 != v10[0])
    {
      notify_set_state(*&self->_userAccountsInfo.hasMultipleUserAccounts, v8);
      notify_post("com.apple.BiometricKit.lockoutStateChanged");
    }
  }

  [(BiometricKitXPCServer *)self updateExpressModeStateWithLockoutState:v3];
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = v5;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEBUG, "updateLockoutStateNotification: -> void\n", v10, 2u);
  }
}

- (void)updateExpressModeStateWithLockoutState:(unsigned int)state
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11[0] = 67109120;
    v11[1] = state;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "updateExpressModeStateWithLockoutState: %u\n", v11, 8u);
  }

  v7 = *&self->_expressModeChgNtfTokenValid;
  v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
  if ((state & 0x16) != 0)
  {
    ++v8;
  }

  if ((v7 & 4) != 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFDLL | (2 * ((state & 0x208) == 0));
  }

  else
  {
    v9 = v8;
  }

  *&self->_expressModeChgNtfTokenValid = v9;
  [(BiometricKitXPCServer *)self updateExpressModeStateNotification];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEBUG, "updateExpressModeStateWithLockoutState: -> void\n", v11, 2u);
  }
}

- (void)updateExpressModeStateWithEnrollmentCount:(unsigned int)count
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109120;
    v8[1] = count;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "updateExpressModeStateWithEnrollmentCount: %u\n", v8, 8u);
  }

  if (count != 1)
  {
    if (!count)
    {
      *&self->_expressModeChgNtfTokenValid = 0;
    }

    goto LABEL_11;
  }

  if ((self->_expressModeChgNtfTokenValid & 4) != 0 || ![(BiometricKitXPCServer *)self getExpressModeState:&self->_expressModeChgNtfTokenValid forUser:[(BiometricKitXPCServer *)self currentAccountUserID] withClient:0])
  {
LABEL_11:
    [(BiometricKitXPCServer *)self updateExpressModeStateNotification];
    goto LABEL_12;
  }

  [BiometricKitXPCServer updateExpressModeStateWithEnrollmentCount:];
LABEL_12:
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = v5;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "updateExpressModeStateWithEnrollmentCount: -> void\n", v8, 2u);
  }
}

- (void)updateExpressModeState
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)updateExpressModeStateNotification
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *&self->_expressModeChgNtfTokenValid;
    *v8 = 134217984;
    *&v8[4] = v5;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "updateExpressModeStateNotification (_expressModeState: %ld)\n", v8, 0xCu);
  }

  if (self->_lockoutChgNtfTokenValid)
  {
    *v8 = 0;
    if (!notify_get_state(self->_lockoutChgNtfToken, v8))
    {
      v6 = *&self->_expressModeChgNtfTokenValid;
      if (v6 != *v8)
      {
        notify_set_state(self->_lockoutChgNtfToken, v6);
        notify_post("com.apple.BiometricKit.expressModeStateChanged");
      }
    }
  }

  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = v3;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "updateExpressModeStateNotification -> void\n", v8, 2u);
  }
}

- (void)disconnectingClient:(id)client
{
  v7 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (__osLog)
  {
    v4 = __osLog;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = clientCopy;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEFAULT, "disconnectingClient: %@\n", &v5, 0xCu);
  }
}

- (id)createMatchEventDictionary:(id *)dictionary
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (dictionary)
  {
    v14[0] = @"BKMatchEventResult";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:dictionary->var1];
    v14[1] = @"BKMatchEventTimeStamp";
    v15[0] = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dictionary->var0];
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

    if (dictionary->var1)
    {
      v8 = [(BiometricKitXPCServer *)self getIdentityObject:&dictionary->var1 + 1];
      if (v8)
      {
        v9 = [v7 mutableCopy];
        [v9 setObject:v8 forKey:@"BKMatchEventMatchedIdentity"];
        v10 = [v9 copy];

        v7 = v10;
      }

      else
      {
        [BiometricKitXPCServer createMatchEventDictionary:];
        v9 = v12;
        v7 = v13;
      }
    }
  }

  else
  {
    [BiometricKitXPCServer createMatchEventDictionary:];
    v7 = v13;
  }

  return v7;
}

- (BOOL)isFingerprintModificationRestricted
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.applicationaccess"];
  v3 = v2;
  if (v2 && [v2 objectIsForcedForKey:@"allowFingerprintModification"])
  {
    v4 = [v3 BOOLForKey:@"allowFingerprintModification"];
    v5 = v4 ^ 1;
    if (__osLog)
    {
      v6 = __osLog;
    }

    else
    {
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"YES";
      if (v4)
      {
        v7 = @"NO";
      }

      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEFAULT, "'FingerprintModification' restricted: %@\n", &v9, 0xCu);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)restoreAndSyncTemplates
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "restoreAndSyncTemplates\n", &v16, 2u);
  }

  loadCatacomb = [(BiometricKitXPCServer *)self loadCatacomb];
  v6 = loadCatacomb;
  if (__osLog)
  {
    v7 = __osLog;
  }

  else
  {
    v7 = v3;
  }

  if (loadCatacomb)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = 136316162;
      v17 = "err == 0 ";
      v18 = 2048;
      v19 = v6;
      v20 = 2080;
      v21 = &unk_223E5FC53;
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v24 = 1024;
      v25 = 3161;
      _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v16, 0x30u);
    }

    if (__osLogTrace)
    {
      v15 = __osLogTrace;
    }

    else
    {
      v15 = v3;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = 67109120;
      LODWORD(v17) = v6;
      v12 = v15;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_17;
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      identitiesCount = [(BiometricKitXPCServer *)self identitiesCount];
      identities = [(BiometricKitXPCServer *)self identities];
      v16 = 134218242;
      v17 = identitiesCount;
      v18 = 2114;
      v19 = identities;
      _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEFAULT, "restoreAndSyncTemplates identities %lu: %{public}@\n", &v16, 0x16u);
    }

    if (__osLogTrace)
    {
      v11 = __osLogTrace;
    }

    else
    {
      v11 = v3;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = 67109120;
      LODWORD(v17) = 0;
      v12 = v11;
      v13 = OS_LOG_TYPE_DEBUG;
LABEL_17:
      _os_log_impl(&dword_223E00000, v12, v13, "restoreAndSyncTemplates -> err:0x%x\n", &v16, 8u);
    }
  }

  return v6;
}

- (void)clearTemplateList
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "clearTemplateList\n", buf, 2u);
  }

  obj = self->_ongoingBiometricOperation;
  objc_sync_enter(obj);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_ongoingBiometricOperation;
  v5 = [(ActivityTracker *)v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = __osLog;
        if (!__osLog)
        {
          v9 = v2;
        }

        v10 = v9;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [v8 uuid];
          *buf = 138412290;
          v20 = uuid;
          _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEFAULT, "clearTemplateList removing identity %@\n", buf, 0xCu);
        }
      }

      v5 = [(ActivityTracker *)v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  [(ActivityTracker *)self->_ongoingBiometricOperation removeAllObjects];
  objc_sync_exit(obj);

  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v2;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEBUG, "clearTemplateList -> void\n", buf, 2u);
  }
}

- (void)clearTemplateListForUser:(unsigned int)user
{
  v3 = *&user;
  v24 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v22) = v3;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "clearTemplateListForUser: %u\n", buf, 8u);
  }

  obj = self->_ongoingBiometricOperation;
  objc_sync_enter(obj);
  [(BiometricKitXPCServer *)self identitiesOfUser:v3];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v7 = v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = __osLog;
        if (!__osLog)
        {
          v12 = v5;
        }

        v13 = v12;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [v11 uuid];
          *buf = 138412290;
          v22 = uuid;
          _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_DEFAULT, "clearTemplateListForUser: removing identity %@\n", buf, 0xCu);
        }

        [(ActivityTracker *)self->_ongoingBiometricOperation removeObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  objc_sync_exit(obj);
  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v5;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v15, OS_LOG_TYPE_DEBUG, "clearTemplateListForUser: -> void\n", buf, 2u);
  }
}

- (int)handleFirstUnlock
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "handleFirstUnlock\n", &v11, 2u);
  }

  handleCatacombUnlock = [(BiometricKitXPCServer *)self handleCatacombUnlock];
  v6 = handleCatacombUnlock;
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = v3;
  }

  if (handleCatacombUnlock)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 67109120;
      v12 = v6;
      v8 = v7;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_223E00000, v8, v9, "handleFirstUnlock -> err:0x%x\n", &v11, 8u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 67109120;
    v12 = 0;
    v8 = v7;
    v9 = OS_LOG_TYPE_DEBUG;
    goto LABEL_14;
  }

  return v6;
}

- (int)handleCatacombUnlock
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "handleCatacombUnlock\n", v7, 2u);
  }

  if ([(BiometricKitXPCServer *)self isCatacombAccessible])
  {
    [(NSMutableArray *)self->_cachedIdentities lock];
    if (![(BiometricKitXPCServer *)self catacombFileAccessed])
    {
      [(BiometricKitXPCServer *)self restoreAndSyncTemplates];
      [(BiometricKitXPCServer *)self setCatacombFileAccessed:1];
      [(BiometricKitXPCServer *)self setTemplatesAtBoot:0];
      [(BiometricKitXPCServer *)self updateEnrollmentChangedNotification:1];
    }

    [(NSMutableArray *)self->_cachedIdentities unlock];
    if (__osLogTrace)
    {
      v5 = __osLogTrace;
    }

    else
    {
      v5 = v3;
    }

    result = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v7[0] = 67109120;
      v7[1] = 0;
      _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEBUG, "handleCatacombUnlock -> err:0x%x\n", v7, 8u);
      return 0;
    }
  }

  else
  {
    [BiometricKitXPCServer handleCatacombUnlock];
    return v7[0];
  }

  return result;
}

- (int)checkCatacombForUser:(unsigned int)user
{
  v3 = *&user;
  v23 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v13 = 67109120;
    LODWORD(v14) = v3;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "checkCatacombForUser: %u\n", &v13, 8u);
  }

  if (v3 == -1 || ([(BKCatacomb *)self->_catacomb stateOfUserComponent:v3]& 3) != 1)
  {
    goto LABEL_10;
  }

  v7 = [(BiometricKitXPCServer *)self loadCatacombForUser:v3];
  if (!v7)
  {
    [(BiometricKitXPCServer *)self validateAllUsers];
    [(BiometricKitXPCServer *)self syncTemplateListForUser:v3];
LABEL_10:
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = 67109120;
      LODWORD(v14) = 0;
      _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "checkCatacombForUser: -> err:0x%x\n", &v13, 8u);
    }

    return 0;
  }

  v9 = v7;
  if (__osLog)
  {
    v11 = __osLog;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 136316162;
    v14 = "err == 0 ";
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = &unk_223E5FC53;
    v19 = 2080;
    v20 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v21 = 1024;
    v22 = 3303;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v13, 0x30u);
  }

  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v5;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = 67109120;
    LODWORD(v14) = v9;
    _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_ERROR, "checkCatacombForUser: -> err:0x%x\n", &v13, 8u);
  }

  return v9;
}

- (int)checkTemplatesValidityForUser:(unsigned int)user
{
  v3 = *&user;
  v15 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v14 = v3;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "checkTemplatesValidityForUser: %u\n", buf, 8u);
  }

  v12 = 0;
  if (![(BiometricKitXPCServer *)self identitiesCount])
  {
    goto LABEL_17;
  }

  if ([(BiometricKitXPCServer *)self checkCatacombForUser:v3])
  {
    [BiometricKitXPCServer checkTemplatesValidityForUser:];
  }

  else if ([(BiometricKitXPCServer *)self performGetTemplatesValidityCommand:v3 isValid:&v12])
  {
    [BiometricKitXPCServer checkTemplatesValidityForUser:];
  }

  else
  {
    if (v12)
    {
LABEL_17:
      if (__osLogTrace)
      {
        v8 = __osLogTrace;
      }

      else
      {
        v8 = v5;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v14 = 0;
        _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "checkTemplatesValidityForUser: -> err:0x%x\n", buf, 8u);
      }

      return 0;
    }

    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = v5;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v3;
      _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEFAULT, "checkTemplatesValidityForUser: removing user %u because keybag UUID has changed\n", buf, 8u);
    }

    if (![(BiometricKitXPCServer *)self removeUser:v3])
    {
      [(BiometricKitXPCServer *)self saveCatacomb];
      [(BiometricKitXPCServer *)self syncTemplateListForUser:0xFFFFFFFFLL];
      goto LABEL_17;
    }

    [BiometricKitXPCServer checkTemplatesValidityForUser:];
  }

  v9 = *buf;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v14 = v9;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_ERROR, "checkTemplatesValidityForUser: -> err:0x%x\n", buf, 8u);
  }

  return v9;
}

- (int)removeUser:(unsigned int)user
{
  v3 = *&user;
  v23 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v21 = 67109120;
    v22 = v3;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "removeUser: %u\n", &v21, 8u);
  }

  if (v3 == -1)
  {
    [BiometricKitXPCServer removeUser:];
  }

  else
  {
    if (![(BiometricKitXPCServer *)self performRemoveUserDataCommand:v3])
    {
      [(BKCatacomb *)self->_catacomb removeUser:v3];
      v7 = self->_expressModeState;
      objc_sync_enter(v7);
      expressModeState = self->_expressModeState;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
      [expressModeState removeObjectForKey:v9];

      objc_sync_exit(v7);
      v10 = self->_catacombUserUUIDs;
      objc_sync_enter(v10);
      catacombUserUUIDs = self->_catacombUserUUIDs;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
      [(NSMutableDictionary *)catacombUserUUIDs removeObjectForKey:v12];

      objc_sync_exit(v10);
      catacombLock = self->_catacombLock;
      v14 = [CatacombComponent componentForUserID:v3];
      v15 = [(BiometricKitXPCServer *)self catacombFileNameForComponent:v14];
      [(NSRecursiveLock *)catacombLock deleteFile:v15];

      if (__osLog)
      {
        v16 = __osLog;
      }

      else
      {
        v16 = v5;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 67109120;
        v22 = v3;
        _os_log_impl(&dword_223E00000, v16, OS_LOG_TYPE_DEFAULT, "User %u removed\n", &v21, 8u);
      }

      if (__osLogTrace)
      {
        v17 = __osLogTrace;
      }

      else
      {
        v17 = v5;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v21 = 67109120;
        v22 = 0;
        _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_DEBUG, "removeUser: -> err:0x%x\n", &v21, 8u);
      }

      return 0;
    }

    [BiometricKitXPCServer removeUser:];
  }

  v18 = v21;
  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v5;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = 67109120;
    v22 = v18;
    _os_log_impl(&dword_223E00000, v20, OS_LOG_TYPE_ERROR, "removeUser: -> err:0x%x\n", &v21, 8u);
  }

  return v18;
}

- (int)isValidUser:(unsigned int)user
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 67109120;
    userCopy = user;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEBUG, "isValidUser: %u\n", &v9, 8u);
  }

  if (user == 501)
  {
    v6 = 0;
  }

  else
  {
    [BiometricKitXPCServer isValidUser:];
    v6 = v9;
  }

  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = v4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 67109120;
    userCopy = v6;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "isValidUser: -> err:0x%x\n", &v9, 8u);
  }

  return v6;
}

- (int)syncTemplateListForUser:(unsigned int)user
{
  v3 = *&user;
  v59 = *MEMORY[0x277D85DE8];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEBUG, "syncTemplateListForUser: %u\n", buf, 8u);
  }

  [(BiometricKitXPCServer *)self cacheCatacombInfo];
  maxTemplatesPerUser = self->_maxTemplatesPerUser;
  supportsRemovableAccessories = [(BiometricKitXPCServer *)self supportsRemovableAccessories];
  v8 = 20;
  if (supportsRemovableAccessories)
  {
    v8 = 120;
  }

  maxTemplatesPerUser = [MEMORY[0x277CBEB28] dataWithLength:v8 * maxTemplatesPerUser];
  if (!maxTemplatesPerUser)
  {
    [BiometricKitXPCServer syncTemplateListForUser:];
LABEL_73:
    v36 = v50;
    obj = *buf;
    goto LABEL_58;
  }

  if ([(BiometricKitXPCServer *)self performGetIdentitiesListCommand:v3 outBuffer:maxTemplatesPerUser])
  {
    [BiometricKitXPCServer syncTemplateListForUser:];
    goto LABEL_73;
  }

  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * [maxTemplatesPerUser length], 2) >= 0xCCCCCCCCCCCCCCDuLL)
  {
    [BiometricKitXPCServer syncTemplateListForUser:];
    goto LABEL_73;
  }

  v10 = [maxTemplatesPerUser length];
  v11 = v10 / 0x14;
  v41 = maxTemplatesPerUser;
  bytes = [maxTemplatesPerUser bytes];
  selfCopy = self;
  v43 = bytes;
  if (v10 >= 0x14)
  {
    v42 = 0;
    v14 = 0;
    *&v13 = 136316162;
    v40 = v13;
    v15 = bytes;
    do
    {
      v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v15 + 1];
      v17 = [(BiometricKitXPCServer *)self getIdentityObjectByUserID:*v15 UUID:v16];

      if (!v17)
      {
        if (__osLog)
        {
          v18 = __osLog;
        }

        else
        {
          v18 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *v15;
          *buf = 67109378;
          *&buf[4] = v19;
          *&buf[8] = 2112;
          *&buf[10] = v16;
          _os_log_impl(&dword_223E00000, v18, OS_LOG_TYPE_DEFAULT, "syncTemplateListForUser: removing SEP identity [%u:%@] because it is not present in biometrickitd\n", buf, 0x12u);
        }

        v20 = [(BiometricKitXPCServer *)selfCopy performRemoveIdentityCommand:v15, v40];
        if (v20)
        {
          v21 = v20;
          if (__osLog)
          {
            v22 = __osLog;
          }

          else
          {
            v22 = MEMORY[0x277D86220];
          }

          v42 = v20;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = v40;
            *&buf[4] = "err == 0 ";
            *&buf[12] = 2048;
            *&buf[14] = v21;
            v53 = 2080;
            v54 = &unk_223E5FC53;
            v55 = 2080;
            v56 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
            v57 = 1024;
            v58 = 3533;
            _os_log_impl(&dword_223E00000, v22, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          }
        }

        else
        {
          v42 = 0;
        }

        v14 = 1;
      }

      v15 += 5;
      --v11;
      self = selfCopy;
    }

    while (v11);
  }

  else
  {
    v14 = 0;
    v42 = 0;
  }

  if (v3 == -1)
  {
    [(BiometricKitXPCServer *)self identities];
  }

  else
  {
    [(BiometricKitXPCServer *)self identitiesOfUser:v3];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  obj = v47 = 0u;
  v23 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v47;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v46 + 1) + 8 * i);
        if (v10 < 0x14)
        {
LABEL_46:
          if (__osLog)
          {
            v32 = __osLog;
          }

          else
          {
            v32 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v32;
            v34 = objc_msgSend_userID(v27);
            uuid = [v27 uuid];
            *buf = 67109378;
            *&buf[4] = v34;
            *&buf[8] = 2112;
            *&buf[10] = uuid;
            _os_log_impl(&dword_223E00000, v33, OS_LOG_TYPE_DEFAULT, "syncTemplateListForUser: removing biometrickitd identity [%u:%@] because it is not present in SEP\n", buf, 0x12u);
          }

          [(BiometricKitXPCServer *)selfCopy removeIdentityObject:v27, v40];
          v14 = 1;
        }

        else
        {
          v28 = (v43 + 4);
          v29 = v10 / 0x14;
          while (1)
          {
            *buf = 0;
            *&buf[8] = 0;
            uuid2 = [v27 uuid];
            [uuid2 getUUIDBytes:buf];

            if (objc_msgSend_userID(v27) == *(v28 - 1) && *v28 == *buf && v28[1] == *&buf[8])
            {
              break;
            }

            v28 = (v28 + 20);
            if (!--v29)
            {
              goto LABEL_46;
            }
          }
        }
      }

      v24 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v24);
  }

  if (v14)
  {
    [(BiometricKitXPCServer *)selfCopy saveCatacomb];
    [(BiometricKitXPCServer *)selfCopy updateEnrollmentChangedNotification:1];
  }

  v36 = v42;
  if (v42)
  {
    maxTemplatesPerUser = v41;
LABEL_58:
    if (__osLogTrace)
    {
      v37 = __osLogTrace;
    }

    else
    {
      v37 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v36;
      _os_log_impl(&dword_223E00000, v37, OS_LOG_TYPE_ERROR, "syncTemplateListForUser: -> err:0x%x\n", buf, 8u);
    }

    goto LABEL_69;
  }

  if (__osLogTrace)
  {
    v38 = __osLogTrace;
  }

  else
  {
    v38 = MEMORY[0x277D86220];
  }

  maxTemplatesPerUser = v41;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    _os_log_impl(&dword_223E00000, v38, OS_LOG_TYPE_DEBUG, "syncTemplateListForUser: -> err:0x%x\n", buf, 8u);
  }

  v36 = 0;
LABEL_69:

  return v36;
}

- (int)updatePropertiesOfIdentities
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "updatePropertiesOfIdentities\n", buf, 2u);
  }

  identitiesCount = [(BiometricKitXPCServer *)self identitiesCount];
  if (!identitiesCount)
  {
    goto LABEL_26;
  }

  v6 = identitiesCount;
  if ([(BiometricKitXPCServer *)self supportsRemovableAccessories])
  {
    v7 = [MEMORY[0x277CBEB28] dataWithLength:40 * v6];
    if ([(BiometricKitXPCServer *)self performGetIdentityRecordsCommand:v7])
    {
      [BiometricKitXPCServer updatePropertiesOfIdentities];
    }

    else
    {
      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * [v7 length], 3) < 0x666666666666667uLL)
      {
        v8 = [v7 length];
        mutableBytes = [v7 mutableBytes];
        if (v8 >= 0x28)
        {
          v10 = mutableBytes;
          v11 = v8 / 0x28;
          while (1)
          {
            v12 = [(BiometricKitXPCServer *)self getIdentityObject:v10];
            if (!v12)
            {
              [BiometricKitXPCServer updatePropertiesOfIdentities];
              goto LABEL_34;
            }

            v13 = v12;
            v14 = [(BiometricKitXPCServer *)self getAccessoryObject:v10 + 20];
            if (!v14)
            {
              break;
            }

            v15 = v14;
            [v13 setAccessory:v14];

            v10 += 40;
            if (!--v11)
            {
              goto LABEL_25;
            }
          }

          [(BiometricKitXPCServer *)v13 updatePropertiesOfIdentities];
          v23 = 261;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      [BiometricKitXPCServer updatePropertiesOfIdentities];
    }

LABEL_34:
    v23 = *buf;
LABEL_36:

    goto LABEL_37;
  }

  v34 = 0;
  *buf = xmmword_223E5EA80;
  v16 = [(BiometricKitXPCServer *)self getAccessoryObject:buf];
  if (v16)
  {
    v7 = v16;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    identities = [(BiometricKitXPCServer *)self identities];
    v18 = [identities countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(identities);
          }

          [*(*(&v26 + 1) + 8 * i) setAccessory:v7];
        }

        v19 = [identities countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v19);
    }

LABEL_25:
LABEL_26:
    if (__osLogTrace)
    {
      v22 = __osLogTrace;
    }

    else
    {
      v22 = v3;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      _os_log_impl(&dword_223E00000, v22, OS_LOG_TYPE_DEBUG, "updatePropertiesOfIdentities -> err:0x%x\n", buf, 8u);
    }

    return 0;
  }

  [BiometricKitXPCServer updatePropertiesOfIdentities];
  v23 = 261;
LABEL_37:
  if (__osLogTrace)
  {
    v25 = __osLogTrace;
  }

  else
  {
    v25 = v3;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *v30 = 67109120;
    v31 = v23;
    _os_log_impl(&dword_223E00000, v25, OS_LOG_TYPE_ERROR, "updatePropertiesOfIdentities -> err:0x%x\n", v30, 8u);
  }

  return v23;
}

- (BOOL)templatesExistAtBoot
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.st_dev) = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "templatesExistAtBoot\n", &buf, 2u);
  }

  memset(&buf, 0, sizeof(buf));
  [(NSRecursiveLock *)self->_catacombLock content];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v27 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v39 count:16];
  if (!v5)
  {
    v19 = 0;
    goto LABEL_29;
  }

  v7 = v5;
  v8 = *v25;
  *&v6 = 136316162;
  v22 = v6;
LABEL_8:
  v9 = 0;
  while (1)
  {
    if (*v25 != v8)
    {
      objc_enumerationMutation(v4);
    }

    v10 = *(*(&v24 + 1) + 8 * v9);
    if (![v10 hasPrefix:{@"user_", v22}] || !objc_msgSend(v10, "hasSuffix:", @".cat"))
    {
      goto LABEL_17;
    }

    catacombDir = [(NSRecursiveLock *)self->_catacombLock catacombDir];
    v12 = [catacombDir stringByAppendingString:v10];

    v13 = open_dprotected_np([v12 UTF8String], 0, 0, 1);
    if (v13 == -1)
    {
      if (__osLog)
      {
        v17 = __osLog;
      }

      else
      {
        v17 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v29 = v22;
        v30 = "fd != -1";
        v31 = 2048;
        v32 = 0;
        v33 = 2080;
        v34 = &unk_223E5FC53;
        v35 = 2080;
        v36 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v37 = 1024;
        v38 = 3646;
        _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v29, 0x30u);
      }

      goto LABEL_16;
    }

    v14 = v13;
    v15 = fstat(v13, &buf);
    st_size = buf.st_size;
    close(v14);
    if (v15 != -1 && st_size > 1024)
    {
      break;
    }

LABEL_16:

LABEL_17:
    if (v7 == ++v9)
    {
      v18 = [v4 countByEnumeratingWithState:&v24 objects:v39 count:16];
      v7 = v18;
      if (!v18)
      {
        v19 = 0;
        goto LABEL_27;
      }

      goto LABEL_8;
    }
  }

  v19 = 1;
LABEL_27:
  v2 = MEMORY[0x277D86220];
LABEL_29:

  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v2;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *v29 = 67109120;
    LODWORD(v30) = v19;
    _os_log_impl(&dword_223E00000, v20, OS_LOG_TYPE_DEBUG, "templatesExistAtBoot -> %d\n", v29, 8u);
  }

  return v19;
}

- (int)cacheCatacombInfo
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "cacheCatacombInfo\n", buf, 2u);
  }

  if (self->_maxTemplatesPerUser && self->_maxSupportedUsers)
  {
    goto LABEL_10;
  }

  v11 = 0;
  v12[0] = 0;
  *(v12 + 7) = 0;
  v5 = [(BiometricKitXPCServer *)self performGetBiometrickitdInfoCommand:&v11];
  if (!v5)
  {
    *&self->_maxTemplatesPerUser = v11;
LABEL_10:
    if (__osLogTrace)
    {
      v6 = __osLogTrace;
    }

    else
    {
      v6 = v3;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v14) = 0;
      _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "cacheCatacombInfo -> err:0x%x\n", buf, 8u);
    }

    return 0;
  }

  v7 = v5;
  if (__osLog)
  {
    v9 = __osLog;
  }

  else
  {
    v9 = v3;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v14 = "err == 0 ";
    v15 = 2048;
    v16 = v7;
    v17 = 2080;
    v18 = &unk_223E5FC53;
    v19 = 2080;
    v20 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v21 = 1024;
    v22 = 3685;
    _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v3;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v14) = v7;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_ERROR, "cacheCatacombInfo -> err:0x%x\n", buf, 8u);
  }

  return v7;
}

- (int)readCatacombState
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "readCatacombState\n", buf, 2u);
  }

  array = [MEMORY[0x277CBEB18] array];
  [(BiometricKitXPCServer *)self cacheCatacombInfo];
  v6 = [MEMORY[0x277CBEB28] dataWithLength:8 * (self->_maxSupportedUsers + 1)];
  if (v6)
  {
    v7 = v6;
    if ([(BiometricKitXPCServer *)self performGetCatacombStateCommand:v6])
    {
      [BiometricKitXPCServer readCatacombState];
    }

    else
    {
      [(BKCatacomb *)self->_catacomb reset];
      if ([(BKCatacomb *)self->_catacomb addUserStatesFromBuffer:v7])
      {
        [BiometricKitXPCServer readCatacombState];
      }

      else
      {
        if (![(BiometricKitXPCServer *)self supportsRemovableAccessories])
        {
          v31 = v7;
          goto LABEL_15;
        }

        v8 = [MEMORY[0x277CBEB28] dataWithLength:140 * self->_maxSupportedUsers];

        if (v8)
        {
          if ([(BiometricKitXPCServer *)self performGetCatacombGroupStateCommand:v8])
          {
            [BiometricKitXPCServer readCatacombState];
          }

          else
          {
            if (![(BKCatacomb *)self->_catacomb addGroupStatesFromBuffer:v8])
            {
              v31 = v8;
LABEL_15:
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              identities = [(BiometricKitXPCServer *)self identities];
              v10 = [identities countByEnumeratingWithState:&v37 objects:v46 count:16];
              if (v10)
              {
                v11 = v10;
                v12 = *v38;
                do
                {
                  for (i = 0; i != v11; ++i)
                  {
                    if (*v38 != v12)
                    {
                      objc_enumerationMutation(identities);
                    }

                    v14 = *(*(&v37 + 1) + 8 * i);
                    if (objc_msgSend_userID(v14) != -1 && ([(BKCatacomb *)self->_catacomb stateOfUserComponent:objc_msgSend_userID(v14)]& 1) == 0)
                    {
                      [array addObject:v14];
                    }
                  }

                  v11 = [identities countByEnumeratingWithState:&v37 objects:v46 count:16];
                }

                while (v11);
              }

              if ([array count])
              {
                v35 = 0u;
                v36 = 0u;
                v33 = 0u;
                v34 = 0u;
                v30 = array;
                obj = array;
                v15 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v34;
                  do
                  {
                    for (j = 0; j != v16; ++j)
                    {
                      if (*v34 != v17)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v19 = *(*(&v33 + 1) + 8 * j);
                      if (__osLog)
                      {
                        v20 = __osLog;
                      }

                      else
                      {
                        v20 = v3;
                      }

                      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                      {
                        v21 = v20;
                        v22 = v3;
                        v23 = objc_msgSend_userID(v19);
                        uuid = [v19 uuid];
                        *buf = 67109378;
                        *&buf[4] = v23;
                        v3 = v22;
                        v43 = 2112;
                        v44 = uuid;
                        _os_log_impl(&dword_223E00000, v21, OS_LOG_TYPE_DEFAULT, "readCatacombState: removing biometrickitd identity [%u:%@]\n", buf, 0x12u);
                      }

                      [(BiometricKitXPCServer *)self removeIdentityObject:v19, v30];
                    }

                    v16 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
                  }

                  while (v16);
                }

                [(BiometricKitXPCServer *)self updateEnrollmentChangedNotification:1];
                array = v30;
              }

              if (__osLogTrace)
              {
                v25 = __osLogTrace;
              }

              else
              {
                v25 = v3;
              }

              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109120;
                *&buf[4] = 0;
                _os_log_impl(&dword_223E00000, v25, OS_LOG_TYPE_DEBUG, "readCatacombState -> 0x%x\n", buf, 8u);
              }

              v26 = 0;
              v27 = v31;
              goto LABEL_45;
            }

            [BiometricKitXPCServer readCatacombState];
          }
        }

        else
        {
          [BiometricKitXPCServer readCatacombState];
        }
      }
    }
  }

  else
  {
    [BiometricKitXPCServer readCatacombState];
  }

  v27 = *buf;
  v26 = v41;
  if (__osLogTrace)
  {
    v29 = __osLogTrace;
  }

  else
  {
    v29 = v3;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v41;
    _os_log_impl(&dword_223E00000, v29, OS_LOG_TYPE_ERROR, "readCatacombState -> 0x%x\n", buf, 8u);
  }

LABEL_45:

  return v26;
}

- (id)catacombFileNameForComponent:(id)component
{
  v15 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  v4 = MEMORY[0x277D86220];
  if (__osLog)
  {
    v5 = __osLog;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v14 = componentCopy;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEBUG, "catacombFileNameForComponent: %p\n", buf, 0xCu);
  }

  if (([(__CFString *)componentCopy isMasterComponent]& 1) != 0)
  {
    v6 = @"master.cat";
  }

  else if ([(__CFString *)componentCopy isUserComponent])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"user_%08x.cat", objc_msgSend_userID(componentCopy)];
  }

  else if ([(__CFString *)componentCopy isGroupComponent])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_msgSend_userID(componentCopy);
    v9 = *[(__CFString *)componentCopy group];
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{-[__CFString group](componentCopy, "group") + 4}];
    v6 = [v7 stringWithFormat:@"group_%08x_%x_%@.cat", v8, v9, v10];
  }

  else
  {
    v6 = 0;
  }

  if (__osLog)
  {
    v11 = __osLog;
  }

  else
  {
    v11 = v4;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "catacombFileNameForComponent: -> %@\n", buf, 0xCu);
  }

  return v6;
}

- (id)getIdentityObjectByUserID:(unsigned int)d UUID:(id)iD
{
  v26 = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    *v24 = d;
    *&v24[4] = 2112;
    *&v24[6] = iDCopy;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "getIdentityObjectByUserID:UUID: %u, %@\n", buf, 0x12u);
  }

  v8 = self->_ongoingBiometricOperation;
  objc_sync_enter(v8);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_ongoingBiometricOperation;
  v10 = [(ActivityTracker *)v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v10)
  {
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (objc_msgSend_userID(v13, v19) == d)
        {
          uuid = [v13 uuid];
          v15 = [uuid isEqual:iDCopy];

          if (v15)
          {
            v16 = v13;
            goto LABEL_17;
          }
        }
      }

      v10 = [(ActivityTracker *)v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_17:

  objc_sync_exit(v8);
  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    *v24 = v16;
    *&v24[8] = 2112;
    *&v24[10] = v16;
    _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_DEBUG, "getIdentityObjectByUserID:UUID: -> %p(%@)\n", buf, 0x16u);
  }

  return v16;
}

- (id)getIdentityObject:(id *)object
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134217984;
    objectCopy = object;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "getIdentityObject: %p\n", &v12, 0xCu);
  }

  if (object)
  {
    var0 = object->var0;
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:object->var1];
    v9 = [(BiometricKitXPCServer *)self getIdentityObjectByUserID:var0 UUID:v8];
  }

  else
  {
    v9 = 0;
  }

  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    objectCopy = v9;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEBUG, "getIdentityObject: -> %@\n", &v12, 0xCu);
  }

  return v9;
}

- (unint64_t)identitiesCount
{
  v3 = self->_ongoingBiometricOperation;
  objc_sync_enter(v3);
  v4 = [(ActivityTracker *)self->_ongoingBiometricOperation count];
  objc_sync_exit(v3);

  return v4;
}

- (id)identitiesOfUser:(unsigned int)user
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v21) = user;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "identitiesOfUser: %u\n", buf, 8u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v8 = self->_ongoingBiometricOperation;
  objc_sync_enter(v8);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_ongoingBiometricOperation;
  v10 = [(ActivityTracker *)v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
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
        if (objc_msgSend_userID(v13, v16) == user)
        {
          [array addObject:v13];
        }
      }

      v10 = [(ActivityTracker *)v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v5;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = array;
    _os_log_impl(&dword_223E00000, v14, OS_LOG_TYPE_DEBUG, "identitiesOfUser: -> %@\n", buf, 0xCu);
  }

  return array;
}

- (id)identitiesOfComponent:(id)component
{
  v32 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = componentCopy;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "identitiesOfComponent: %@\n", buf, 0xCu);
  }

  if (![(BiometricKitXPCServer *)self supportsRemovableAccessories])
  {
    if ([componentCopy isUserComponent])
    {
      array = [(BiometricKitXPCServer *)self identitiesOfUser:objc_msgSend_userID(componentCopy)];
      goto LABEL_27;
    }

    goto LABEL_12;
  }

  if ([componentCopy isMasterComponent])
  {
LABEL_12:
    array = 0;
    goto LABEL_27;
  }

  if ([componentCopy isGroupComponent])
  {
    v5 = *[componentCopy group];
  }

  else
  {
    v5 = 1;
  }

  v22 = v5;
  v21 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(componentCopy, "group") + 4}];
  array = [MEMORY[0x277CBEB18] array];
  v19 = self->_ongoingBiometricOperation;
  objc_sync_enter(v19);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_ongoingBiometricOperation;
  v6 = [(ActivityTracker *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = objc_msgSend_userID(v9, v19);
        if (v10 == objc_msgSend_userID(componentCopy))
        {
          accessory = [v9 accessory];
          group = [accessory group];
          if ([group type] == v22)
          {
            accessory2 = [v9 accessory];
            group2 = [accessory2 group];
            uuid = [group2 uuid];
            v16 = [uuid isEqual:v21];

            if (v16)
            {
              [array addObject:v9];
            }
          }

          else
          {
          }
        }
      }

      v6 = [(ActivityTracker *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v19);
LABEL_27:
  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = array;
    _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_DEBUG, "identitiesOfComponent: -> %@\n", buf, 0xCu);
  }

  return array;
}

- (id)catacombComponentForIdentity:(id)identity
{
  v20 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v19 = 138412290;
    *&v19[4] = identityCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "catacombComponentForIdentity: %@\n", v19, 0xCu);
  }

  if (identityCopy)
  {
    if (-[BiometricKitXPCServer supportsRemovableAccessories](self, "supportsRemovableAccessories") && ([identityCopy accessory], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "group"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "type"), v8, v7, v9 != 1))
    {
      *&v19[8] = 0uLL;
      *v19 = objc_msgSend_userID(identityCopy);
      accessory = [identityCopy accessory];
      group = [accessory group];
      *&v19[4] = [group type];

      accessory2 = [identityCopy accessory];
      group2 = [accessory2 group];
      uuid = [group2 uuid];
      [uuid getUUIDBytes:&v19[8]];

      v10 = [CatacombComponent component:v19];
    }

    else
    {
      v10 = [CatacombComponent componentForUserID:objc_msgSend_userID(identityCopy)];
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v5;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *v19 = 138412290;
    *&v19[4] = v11;
    _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_DEBUG, "identitiesOfComponent: -> %@\n", v19, 0xCu);
  }

  return v11;
}

- (unsigned)singleEnrolledUser
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "singleEnrolledUser\n", buf, 2u);
  }

  v5 = self->_ongoingBiometricOperation;
  objc_sync_enter(v5);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_ongoingBiometricOperation;
  v7 = [(ActivityTracker *)v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = *v15;
    v9 = -1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v9 == -1)
        {
          v9 = objc_msgSend_userID(v11, v14);
        }

        else if (v9 != objc_msgSend_userID(v11))
        {
          goto LABEL_18;
        }
      }

      v7 = [(ActivityTracker *)v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
LABEL_18:
    v9 = -1;
  }

  objc_sync_exit(v5);
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v3;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v19 = v9;
    _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEBUG, "singleEnrolledUser -> %u\n", buf, 8u);
  }

  return v9;
}

- (void)removeIdentityObject:(id)object
{
  v31 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_msgSend_userID(objectCopy);
    uuid = [objectCopy uuid];
    *buf = 67109378;
    v28 = v7;
    v29 = 2112;
    v30 = uuid;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEFAULT, "removeIdentityObject: %u:%@\n", buf, 0x12u);
  }

  v9 = self->_ongoingBiometricOperation;
  objc_sync_enter(v9);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
  v10 = self->_ongoingBiometricOperation;
  v11 = [(ActivityTracker *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = objc_msgSend_userID(v14);
        if (v15 == objc_msgSend_userID(objectCopy))
        {
          uuid2 = [v14 uuid];
          uuid3 = [objectCopy uuid];
          v18 = [uuid2 isEqual:uuid3];

          if (v18)
          {
            v19 = v14;

            if (v19)
            {
              [(ActivityTracker *)selfCopy->_ongoingBiometricOperation removeObject:v19];
            }

            goto LABEL_18;
          }
        }
      }

      v11 = [(ActivityTracker *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_18:

  objc_sync_exit(v9);
  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v20, OS_LOG_TYPE_DEBUG, "removeIdentityObject: -> void\n", buf, 2u);
  }
}

- (void)addIdentityObject:(id)object
{
  v13 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v11) = 138412290;
    *(&v11 + 4) = objectCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "addIdentityObject: %@\n", &v11, 0xCu);
  }

  if (objectCopy)
  {
    accessory = [objectCopy accessory];
    if (accessory)
    {
    }

    else if (![(BiometricKitXPCServer *)self supportsRemovableAccessories])
    {
      v12 = 0;
      v11 = xmmword_223E5EA80;
      v8 = [(BiometricKitXPCServer *)self getAccessoryObject:&v11];
      [objectCopy setAccessory:v8];
    }

    v9 = self->_ongoingBiometricOperation;
    objc_sync_enter(v9);
    [(ActivityTracker *)self->_ongoingBiometricOperation addObject:objectCopy];
    objc_sync_exit(v9);
  }

  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEBUG, "addIdentityObject: -> void\n", &v11, 2u);
  }
}

- (void)addIdentityObjects:(id)objects
{
  v24 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = objectsCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "addIdentityObjects: %@\n", buf, 0xCu);
  }

  if (objectsCopy)
  {
    if (![(BiometricKitXPCServer *)self supportsRemovableAccessories])
    {
      v23 = 0;
      *buf = xmmword_223E5EA80;
      v7 = [(BiometricKitXPCServer *)self getAccessoryObject:buf];
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = objectsCopy;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            accessory = [v12 accessory];
            v14 = accessory == 0;

            if (v14)
            {
              [v12 setAccessory:v7];
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);
      }
    }

    v15 = self->_ongoingBiometricOperation;
    objc_sync_enter(v15);
    [(ActivityTracker *)self->_ongoingBiometricOperation addObjectsFromArray:objectsCopy];
    objc_sync_exit(v15);
  }

  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v5;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v16, OS_LOG_TYPE_DEBUG, "addIdentityObjects: -> void\n", buf, 2u);
  }
}

- (int)saveCatacombIfDirtyWithInterval:(double)interval andDelay:(double)delay
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = interval;
    *&buf[12] = 2048;
    *&buf[14] = delay;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "saveCatacombIfDirtyWithInterval:andDelay: %f, %f\n", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  *&buf[15] = 0;
  v9 = [(BiometricKitXPCServer *)self performGetBiometrickitdInfoCommand:buf];
  if (v9)
  {
    [BiometricKitXPCServer saveCatacombIfDirtyWithInterval:andDelay:];
  }

  else
  {
    if (buf[20])
    {
      if (interval <= 0.0)
      {
        v12 = 1.79769313e308;
      }

      else
      {
        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSince1970];
        v12 = v11 - *&buf[12];
      }

      if (interval == 0.0 || v12 > interval)
      {
        [(BiometricOperation *)self->_runningBioOp setActive:1];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __66__BiometricKitXPCServer_saveCatacombIfDirtyWithInterval_andDelay___block_invoke;
        v15[3] = &unk_2784FA468;
        v15[4] = self;
        *&v15[5] = delay;
        dispatch_async(MEMORY[0x277D85CD0], v15);
      }
    }

    if (__osLogTrace)
    {
      v13 = __osLogTrace;
    }

    else
    {
      v13 = v7;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 67109120;
      v17 = 0;
      _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_DEBUG, "saveCatacombIfDirtyWithInterval:andDelay: -> err:0x%x\n", v16, 8u);
    }
  }

  return v9;
}

uint64_t __66__BiometricKitXPCServer_saveCatacombIfDirtyWithInterval_andDelay___block_invoke(uint64_t a1, uint64_t a2)
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_saveTemplateListAfterTemplateUpdate object:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 performSelector:sel_saveTemplateListAfterTemplateUpdate withObject:0 afterDelay:v4];
}

- (int)saveTemplateListAfterTemplateUpdate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "saveTemplateListAfterTemplateUpdate\n", v8, 2u);
  }

  saveCatacomb = [(BiometricKitXPCServer *)self saveCatacomb];
  if (saveCatacomb)
  {
    [BiometricKitXPCServer saveTemplateListAfterTemplateUpdate];
  }

  else
  {
    if (__osLogTrace)
    {
      v6 = __osLogTrace;
    }

    else
    {
      v6 = v3;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8[0] = 67109120;
      v8[1] = 0;
      _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "saveTemplateListAfterTemplateUpdate -> err:0x%x\n", v8, 8u);
    }
  }

  return saveCatacomb;
}

- (void)deleteUnusedCatacombFiles
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_DEBUG, "deleteUnusedCatacombFiles\n", buf, 2u);
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if (([(BKCatacomb *)self->_catacomb stateOfMasterComponent]& 2) != 0)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    cachedComponents = [(BKCatacomb *)self->_catacomb cachedComponents];
    v8 = [cachedComponents countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(cachedComponents);
          }

          v12 = [(BiometricKitXPCServer *)self catacombFileNameForComponent:*(*(&v33 + 1) + 8 * i)];
          [array addObject:v12];
        }

        v9 = [cachedComponents countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v9);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    content = [(NSRecursiveLock *)self->_catacombLock content];
    v14 = [content countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(content);
          }

          v18 = *(*(&v29 + 1) + 8 * j);
          if (([array containsObject:v18] & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"biolockout.cat") & 1) == 0)
          {
            [array2 addObject:v18];
          }
        }

        v15 = [content countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v15);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = array2;
    v20 = [v19 countByEnumeratingWithState:&v25 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v26;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [(NSRecursiveLock *)self->_catacombLock deleteFile:*(*(&v25 + 1) + 8 * k), v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v25 objects:v38 count:16];
      }

      while (v21);
    }
  }

  if (__osLogTrace)
  {
    v24 = __osLogTrace;
  }

  else
  {
    v24 = v3;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v24, OS_LOG_TYPE_DEBUG, "deleteUnusedCatacombFiles -> void\n", buf, 2u);
  }
}

- (int)getCatacombSaveListForComponents:(id)components list:(id *)list
{
  v48 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *v40 = componentsCopy;
    *&v40[8] = 2048;
    *&v40[10] = list;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "getCatacombSaveListForComponents:list: %@, %p\n", buf, 0x16u);
  }

  array = [MEMORY[0x277CBEB18] array];
  if (componentsCopy)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    cachedComponents = componentsCopy;
    v11 = [cachedComponents countByEnumeratingWithState:&v34 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = v7;
      v14 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(cachedComponents);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          if (([v16 isMasterComponent] & 1) == 0)
          {
            [array addObject:v16];
          }
        }

        v12 = [cachedComponents countByEnumeratingWithState:&v34 objects:v47 count:16];
      }

      while (v12);

      v7 = v13;
LABEL_30:
      cachedComponents = +[CatacombComponent masterComponent];
      [array addObject:cachedComponents];
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  readCatacombState = [(BiometricKitXPCServer *)self readCatacombState];
  if (!readCatacombState)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    cachedComponents = [(BKCatacomb *)self->_catacomb cachedComponents];
    v18 = [cachedComponents countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v31;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(cachedComponents);
          }

          v23 = *(*(&v30 + 1) + 8 * j);
          if (([(BKCatacomb *)self->_catacomb stateOfComponent:v23]& 4) != 0)
          {
            if (([v23 isMasterComponent] & 1) == 0)
            {
              [array addObject:v23];
            }

            v20 = 1;
          }
        }

        v19 = [cachedComponents countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v19);

      v7 = MEMORY[0x277D86220];
      if ((v20 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

LABEL_31:

LABEL_32:
    if (list)
    {
      v24 = array;
      *list = array;
    }

    if (__osLogTrace)
    {
      v25 = __osLogTrace;
    }

    else
    {
      v25 = v7;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109378;
      *v40 = 0;
      *&v40[4] = 2112;
      *&v40[6] = array;
      _os_log_impl(&dword_223E00000, v25, OS_LOG_TYPE_DEBUG, "getCatacombSaveListForComponents:list: -> err:0x%x (list:%@)\n", buf, 0x12u);
    }

    v26 = 0;
    goto LABEL_40;
  }

  v26 = readCatacombState;
  if (__osLog)
  {
    v28 = __osLog;
  }

  else
  {
    v28 = v7;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *v40 = "err == 0 ";
    *&v40[8] = 2048;
    *&v40[10] = v26;
    v41 = 2080;
    v42 = &unk_223E5FC53;
    v43 = 2080;
    v44 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v45 = 1024;
    v46 = 4201;
    _os_log_impl(&dword_223E00000, v28, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

  if (__osLogTrace)
  {
    v29 = __osLogTrace;
  }

  else
  {
    v29 = v7;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    *v40 = v26;
    *&v40[4] = 2112;
    *&v40[6] = array;
    _os_log_impl(&dword_223E00000, v29, OS_LOG_TYPE_ERROR, "getCatacombSaveListForComponents:list: -> err:0x%x (list:%@)\n", buf, 0x12u);
  }

LABEL_40:

  return v26;
}

- (int)archiveCatacombDataForComponent:(id)component toArchiver:(id)archiver
{
  v33 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  archiverCopy = archiver;
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = componentCopy;
    v31 = 2048;
    v32 = archiverCopy;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "archiveCatacombDataForComponent:toArchiver: %p, %p\n", buf, 0x16u);
  }

  v29[0] = 0;
  if (componentCopy)
  {
    if (archiverCopy)
    {
      if ([(BiometricKitXPCServer *)self performPrepareSaveCatacombCommand:componentCopy outDataSize:v29])
      {
        [BiometricKitXPCServer archiveCatacombDataForComponent:toArchiver:];
      }

      else
      {
        v9 = [MEMORY[0x277CBEB28] dataWithLength:v29[0]];
        if (v9)
        {
          if (![(BiometricKitXPCServer *)self performCompleteSaveCatacombCommand:componentCopy outBuffer:v9])
          {
            if (isInternalBuild())
            {
              componentCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Saving secure data, component = %@", componentCopy];
              [(BiometricKitXPCServer *)self logCatacombInfo:componentCopy data:v9];
            }

            [archiverCopy encodeInt32:-[BiometricKitXPCServer catacombVersion](self forKey:{"catacombVersion"), @"CatacombVersion"}];
            [archiverCopy encodeInt32:objc_msgSend_userID(componentCopy) forKey:@"CatacombUserID"];
            [archiverCopy encodeObject:v9 forKey:@"CatacombSecureData"];
            if ([componentCopy isMasterComponent])
            {
              goto LABEL_30;
            }

            v11 = [(BiometricKitXPCServer *)self identitiesOfComponent:componentCopy];
            if (v11)
            {
              [archiverCopy encodeObject:v11 forKey:@"CatacombIdentityList"];
            }

            if ([componentCopy isUserComponent])
            {
              v12 = self->_expressModeState;
              objc_sync_enter(v12);
              expressModeState = self->_expressModeState;
              v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:objc_msgSend_userID(componentCopy)];
              v15 = [expressModeState objectForKeyedSubscript:v14];

              objc_sync_exit(v12);
              if (!v15)
              {
                v28 = 0;
                [(BiometricKitXPCServer *)self getUserUUIDForUID:objc_msgSend_userID(componentCopy) userUUID:&v28];
                v16 = v28;
                if (v16)
                {
                  v15 = v16;
                  v17 = self->_expressModeState;
                  objc_sync_enter(v17);
                  v18 = self->_expressModeState;
                  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:objc_msgSend_userID(componentCopy)];
                  [v18 setObject:v15 forKey:v19];

                  objc_sync_exit(v17);
                }

                else
                {
                  [BiometricKitXPCServer archiveCatacombDataForComponent:toArchiver:];
                  v15 = *buf;
                }
              }

              [archiverCopy encodeObject:v15 forKey:@"CatacombUserUUID"];
              v20 = [(BiometricKitXPCServer *)self getUserKeybagUUIDForUID:objc_msgSend_userID(componentCopy)];
              v21 = self->_catacombUserUUIDs;
              objc_sync_enter(v21);
              catacombUserUUIDs = self->_catacombUserUUIDs;
              v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:objc_msgSend_userID(componentCopy)];
              if (v20)
              {
                [(NSMutableDictionary *)catacombUserUUIDs setObject:v20 forKey:v23];
              }

              else
              {
                v20 = [(NSMutableDictionary *)catacombUserUUIDs objectForKeyedSubscript:v23];
              }

              objc_sync_exit(v21);
              if (v20)
              {
                [archiverCopy encodeObject:v20 forKey:@"CatacombUserKeybagUUID"];
              }
            }

            else
            {
              if (![componentCopy isGroupComponent])
              {
LABEL_29:

LABEL_30:
                if (__osLogTrace)
                {
                  v24 = __osLogTrace;
                }

                else
                {
                  v24 = MEMORY[0x277D86220];
                }

                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109120;
                  *&buf[4] = 0;
                  _os_log_impl(&dword_223E00000, v24, OS_LOG_TYPE_DEBUG, "archiveCatacombDataForComponent:toArchiver: -> err:0x%x\n", buf, 8u);
                }

                v25 = 0;
                goto LABEL_36;
              }

              v15 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(componentCopy length:{"group"), 8}];
              [archiverCopy encodeObject:v15 forKey:@"CatacombGroup"];
            }

            goto LABEL_29;
          }

          [BiometricKitXPCServer archiveCatacombDataForComponent:toArchiver:];
        }

        else
        {
          [BiometricKitXPCServer archiveCatacombDataForComponent:toArchiver:];
        }
      }
    }

    else
    {
      [BiometricKitXPCServer archiveCatacombDataForComponent:toArchiver:];
    }
  }

  else
  {
    [BiometricKitXPCServer archiveCatacombDataForComponent:toArchiver:];
  }

  v9 = *buf;
  v25 = v29[1];
  if (__osLogTrace)
  {
    v27 = __osLogTrace;
  }

  else
  {
    v27 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v25;
    _os_log_impl(&dword_223E00000, v27, OS_LOG_TYPE_ERROR, "archiveCatacombDataForComponent:toArchiver: -> err:0x%x\n", buf, 8u);
  }

LABEL_36:

  return v25;
}

- (int)unarchiveCatacombDataForComponent:(id)component fromUnarchiver:(id)unarchiver secureData:(id *)data identities:(id *)identities
{
  v68 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  unarchiverCopy = unarchiver;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    *&buf[4] = componentCopy;
    v62 = 2048;
    v63 = unarchiverCopy;
    v64 = 2048;
    dataCopy = data;
    v66 = 2048;
    identitiesCopy = identities;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities: %@, %p, %p, %p\n", buf, 0x2Au);
  }

  if (!componentCopy)
  {
    [BiometricKitXPCServer unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:];
LABEL_55:
    v14 = v58;
    v52 = *buf;
    v34 = HIDWORD(v59);
    goto LABEL_28;
  }

  if (!unarchiverCopy)
  {
    [BiometricKitXPCServer unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:];
    goto LABEL_55;
  }

  catacombVersion = [(BiometricKitXPCServer *)self catacombVersion];
  if (catacombVersion != [unarchiverCopy decodeInt32ForKey:@"CatacombVersion"])
  {
    [BiometricKitXPCServer unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:];
    goto LABEL_55;
  }

  v13 = objc_msgSend_userID(componentCopy);
  if (v13 != [unarchiverCopy decodeInt32ForKey:@"CatacombUserID"])
  {
    [BiometricKitXPCServer unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:];
    goto LABEL_55;
  }

  v52 = [unarchiverCopy decodeObjectOfClass:objc_opt_class() forKey:@"CatacombSecureData"];
  if ([componentCopy isMasterComponent])
  {
    v14 = 0;
LABEL_40:
    if (data)
    {
      v44 = v52;
      *data = v52;
    }

    if (identities)
    {
      v45 = v14;
      *identities = v14;
    }

    if (__osLogTrace)
    {
      v46 = __osLogTrace;
    }

    else
    {
      v46 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      _os_log_impl(&dword_223E00000, v46, OS_LOG_TYPE_DEBUG, "unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities: -> err:0x%x\n", buf, 8u);
    }

    v34 = 0;
    goto LABEL_50;
  }

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v48 = objc_opt_class();
  v17 = [v15 setWithObjects:v16];
  v18 = [unarchiverCopy decodeObjectOfClasses:v17 forKey:@"CatacombIdentityList"];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v14 = v18;
  v19 = [v14 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v19)
  {
    v20 = *v55;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v55 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v22 = objc_msgSend_userID(*(*(&v54 + 1) + 8 * i));
        if (v22 != objc_msgSend_userID(componentCopy))
        {
          [BiometricKitXPCServer unarchiveCatacombDataForComponent:v14 fromUnarchiver:? secureData:? identities:?];
          goto LABEL_27;
        }
      }

      v19 = [v14 countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  if (![componentCopy isUserComponent])
  {
    if (![componentCopy isGroupComponent])
    {
      goto LABEL_40;
    }

    v28 = [unarchiverCopy decodeObjectOfClass:objc_opt_class() forKey:@"CatacombGroup"];
    v29 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(componentCopy length:{"group"), 8}];
    v30 = [v28 isEqualToData:v29];

    if (v30)
    {
      goto LABEL_40;
    }

    [(BiometricKitXPCServer *)v14 unarchiveCatacombDataForComponent:v52 fromUnarchiver:&v58 secureData:buf identities:&v59 + 4, v31, v32, v33, v48, 0, v49, identities, v52, v53, SHIDWORD(v53), v54, *(&v54 + 1), v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, v59];
    goto LABEL_55;
  }

  v23 = [unarchiverCopy decodeObjectOfClass:objc_opt_class() forKey:@"CatacombUserUUID"];
  v24 = self->_expressModeState;
  objc_sync_enter(v24);
  if (v23)
  {
    expressModeState = self->_expressModeState;
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:objc_msgSend_userID(componentCopy)];
    [expressModeState setObject:v23 forKey:v26];

    v27 = 0x277CCA000;
  }

  else
  {
    v53 = 0;
    [(BiometricKitXPCServer *)self getUserUUIDForUID:objc_msgSend_userID(componentCopy) userUUID:&v53];
    v36 = v53;
    if (v36)
    {
      v23 = v36;
      v37 = self->_expressModeState;
      objc_sync_enter(v37);
      v50 = self->_expressModeState;
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:objc_msgSend_userID(componentCopy)];
      [v50 setObject:v23 forKey:v38];

      v27 = 0x277CCA000uLL;
      objc_sync_exit(v37);
    }

    else
    {
      [BiometricKitXPCServer unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:];
      v27 = 0x277CCA000;
      v23 = *buf;
    }
  }

  objc_sync_exit(v24);

  v39 = [unarchiverCopy decodeObjectOfClass:objc_opt_class() forKey:@"CatacombUserKeybagUUID"];
  if (!v39)
  {
    goto LABEL_39;
  }

  v40 = self->_catacombUserUUIDs;
  objc_sync_enter(v40);
  catacombUserUUIDs = self->_catacombUserUUIDs;
  v42 = [*(v27 + 2992) numberWithUnsignedInt:objc_msgSend_userID(componentCopy)];
  [(NSMutableDictionary *)catacombUserUUIDs setObject:v39 forKey:v42];

  objc_sync_exit(v40);
  v43 = [(BiometricKitXPCServer *)self getUserKeybagUUIDForUID:objc_msgSend_userID(componentCopy)];
  if (!v43 || ([v39 isEqual:v43] & 1) != 0)
  {

LABEL_39:
    goto LABEL_40;
  }

  [BiometricKitXPCServer unarchiveCatacombDataForComponent:v43 fromUnarchiver:v39 secureData:v23 identities:?];
LABEL_27:
  v34 = 269;
LABEL_28:
  if (__osLogTrace)
  {
    v35 = __osLogTrace;
  }

  else
  {
    v35 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v34;
    _os_log_impl(&dword_223E00000, v35, OS_LOG_TYPE_ERROR, "unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities: -> err:0x%x\n", buf, 8u);
  }

LABEL_50:

  return v34;
}

- (int)saveCatacomb
{
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "saveCatacomb --> saveCatacombForComponents:\n", v5, 2u);
  }

  return [(BiometricKitXPCServer *)self saveCatacombForComponents:0];
}

- (int)saveCatacombForComponents:(id)components
{
  v29 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = componentsCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEFAULT, "saveCatacombForComponents: %{public}@\n", buf, 0xCu);
  }

  v7 = os_transaction_create();
  [(NSMutableArray *)self->_cachedIdentities lock];
  v8 = objc_autoreleasePoolPush();
  if (isEphemeralMultiUser())
  {
    [BiometricKitXPCServer saveCatacombForComponents:];
    v21 = v27;
    v11 = *buf;
  }

  else
  {
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_saveTemplateListAfterTemplateUpdate object:0];
    [(BiometricOperation *)self->_runningBioOp setActive:0];
    [(BiometricKitXPCServer *)self cacheCatacombInfo];
    v26 = 0;
    v9 = [(BiometricKitXPCServer *)self getCatacombSaveListForComponents:componentsCopy list:&v26];
    v10 = v26;
    v11 = v10;
    if (v9)
    {
      [BiometricKitXPCServer saveCatacombForComponents:];
      v21 = *buf;
    }

    else
    {
      if (![v10 count])
      {
        v21 = 0;
        goto LABEL_23;
      }

      v24 = v7;
      v25 = componentsCopy;
      v12 = 0;
      while (1)
      {
        v13 = [v11 objectAtIndexedSubscript:v12];
        v14 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
        if (!v14)
        {
          [BiometricKitXPCServer saveCatacombForComponents:];
          goto LABEL_34;
        }

        if ([(BiometricKitXPCServer *)self archiveCatacombDataForComponent:v13 toArchiver:v14])
        {
          [BiometricKitXPCServer saveCatacombForComponents:];
          goto LABEL_34;
        }

        [v14 finishEncoding];
        if (isInternalBuild())
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Saving Catacomb file, component = %@", v13];
          encodedData = [v14 encodedData];
          [(BiometricKitXPCServer *)self logCatacombInfo:v15 data:encodedData];
        }

        catacombLock = self->_catacombLock;
        encodedData2 = [v14 encodedData];
        v19 = [(BiometricKitXPCServer *)self catacombFileNameForComponent:v13];
        v20 = [(NSRecursiveLock *)catacombLock writeData:encodedData2 toFile:v19];

        if (v20)
        {
          [BiometricKitXPCServer saveCatacombForComponents:];
          goto LABEL_34;
        }

        if (v12 == [v11 count] - 1 && -[NSRecursiveLock commitWrite](self->_catacombLock, "commitWrite"))
        {
          break;
        }

        if ([(BiometricKitXPCServer *)self performConfirmSaveCatacombCommand:v13])
        {
          [BiometricKitXPCServer saveCatacombForComponents:];
          goto LABEL_34;
        }

        if ([v13 isUserComponent])
        {
          [(BiometricKitXPCServer *)self logCatacombUUIDForUser:objc_msgSend_userID(v13) catacombUUID:0];
          [(BiometricKitXPCServer *)self logCatacombHashForUser:objc_msgSend_userID(v13) catacombHash:0];
        }

        if ([v11 count] <= ++v12)
        {
          v21 = 0;
          v7 = v24;
          componentsCopy = v25;
          v5 = MEMORY[0x277D86220];
          goto LABEL_23;
        }
      }

      [BiometricKitXPCServer saveCatacombForComponents:];
LABEL_34:
      v21 = *buf;

      v7 = v24;
      componentsCopy = v25;
      v5 = MEMORY[0x277D86220];
    }

    if (v21 == 269)
    {
      [(BiometricKitXPCServer *)self clearTemplateList];
      [(NSRecursiveLock *)self->_catacombLock deleteAll];
    }
  }

LABEL_23:

  objc_autoreleasePoolPop(v8);
  [(NSMutableArray *)self->_cachedIdentities unlock];
  if (__osLogTrace)
  {
    v22 = __osLogTrace;
  }

  else
  {
    v22 = v5;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&dword_223E00000, v22, OS_LOG_TYPE_DEFAULT, "saveCatacombForComponents: -> err:0x%x\n", buf, 8u);
  }

  return v21;
}

- (int)saveCatacombForIdentity:(id)identity
{
  v17 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = identityCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "saveCatacombForIdentity: %@\n", buf, 0xCu);
  }

  if (identityCopy)
  {
    v7 = [(BiometricKitXPCServer *)self catacombComponentForIdentity:identityCopy];
    v14 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    v9 = [(BiometricKitXPCServer *)self saveCatacombForComponents:v8];

    if (!v9)
    {
      if (__osLogTrace)
      {
        v10 = __osLogTrace;
      }

      else
      {
        v10 = v5;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v16) = 0;
        _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEBUG, "saveCatacombForIdentity: -> err:0x%x\n", buf, 8u);
      }

      v11 = 0;
      goto LABEL_14;
    }

    [BiometricKitXPCServer saveCatacombForIdentity:];
  }

  else
  {
    [BiometricKitXPCServer saveCatacombForIdentity:];
  }

  v11 = *buf;
  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v5;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v16) = v11;
    _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_ERROR, "saveCatacombForIdentity: -> err:0x%x\n", buf, 8u);
  }

LABEL_14:

  return v11;
}

- (int)loadCatacomb
{
  v53 = *MEMORY[0x277D85DE8];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEFAULT, "loadCatacomb\n", buf, 2u);
  }

  [(NSMutableArray *)self->_cachedIdentities lock];
  if (![(BiometricKitXPCServer *)self supportsRemovableAccessories])
  {
    [(BiometricKitXPCServer *)self cacheAccessories];
  }

  [(BiometricKitXPCServer *)self clearTemplateList];
  if ([(BiometricKitXPCServer *)self readCatacombState])
  {
    [BiometricKitXPCServer loadCatacomb];
LABEL_59:
    v8 = *buf;
    [(BiometricKitXPCServer *)self clearTemplateList];
    if (v8 == 269)
    {
      [(NSRecursiveLock *)self->_catacombLock deleteAll];
    }

    v9 = 0;
    goto LABEL_14;
  }

  if (isEphemeralMultiUser())
  {
    goto LABEL_13;
  }

  if (isInternalBuild())
  {
    content = [(NSRecursiveLock *)self->_catacombLock content];
    v5 = MEMORY[0x277CCACA8];
    date = [MEMORY[0x277CBEAA8] date];
    v7 = [v5 stringWithFormat:@"%@ - BKCatacomb::content(), count = %lu", date, objc_msgSend(content, "count")];
    [(BiometricKitXPCServer *)self writeStringToPersistentLog:v7];
  }

  if (([(BKCatacomb *)self->_catacomb stateOfMasterComponent]& 1) == 0)
  {
LABEL_13:
    v8 = 0;
    v9 = 1;
LABEL_14:
    [(BiometricKitXPCServer *)self performNoCatacombCommand:0xFFFFFFFFLL];
    [(BiometricKitXPCServer *)self readCatacombState];
    if ((v9 & 1) == 0 && ([(CatacombStateCache *)self->_catacombStateCache sendAutoBugCaptureEvent:4098]& 1) == 0)
    {
      [BiometricKitXPCServer loadCatacomb];
      v8 = *buf;
    }

    goto LABEL_52;
  }

  v10 = +[CatacombComponent masterComponent];
  v11 = [(BiometricKitXPCServer *)self loadCatacombForComponent:v10];

  if (v11)
  {
    [BiometricKitXPCServer loadCatacomb];
    goto LABEL_59;
  }

  if ([(BiometricKitXPCServer *)self readCatacombState])
  {
    [BiometricKitXPCServer loadCatacomb];
    goto LABEL_59;
  }

  array = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  cachedUserComponents = [(BKCatacomb *)self->_catacomb cachedUserComponents];
  v14 = [cachedUserComponents countByEnumeratingWithState:&v37 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(cachedUserComponents);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        if (([(BKCatacomb *)self->_catacomb stateOfComponent:v18]& 1) != 0)
        {
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:objc_msgSend_userID(v18)];
          [array addObject:v19];
        }
      }

      v15 = [cachedUserComponents countByEnumeratingWithState:&v37 objects:v52 count:16];
    }

    while (v15);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = array;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    do
    {
      v24 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        unsignedIntValue = [*(*(&v33 + 1) + 8 * v24) unsignedIntValue];
        v26 = [(BiometricKitXPCServer *)self loadCatacombForUser:unsignedIntValue];
        if (__osLog)
        {
          v27 = __osLog;
        }

        else
        {
          v27 = MEMORY[0x277D86220];
        }

        if (v26)
        {
          v28 = v26;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v42 = "tempErr == 0 ";
            v43 = 2048;
            v44 = v28;
            v45 = 2080;
            v46 = &unk_223E5FC53;
            v47 = 2080;
            v48 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
            v49 = 1024;
            v50 = 4625;
            _os_log_impl(&dword_223E00000, v27, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          }

          [(BiometricKitXPCServer *)self performNoCatacombCommand:unsignedIntValue];
          [(BiometricKitXPCServer *)self readCatacombState];
          if (([(CatacombStateCache *)self->_catacombStateCache sendAutoBugCaptureEvent:4098]& 1) == 0)
          {
            v29 = (__osLog ? __osLog : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v42 = "abcResult";
              v43 = 2048;
              v44 = 0;
              v45 = 2080;
              v46 = &unk_223E5FC53;
              v47 = 2080;
              v48 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
              v49 = 1024;
              v50 = 4642;
              _os_log_impl(&dword_223E00000, v29, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
            }
          }
        }

        else
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v42) = unsignedIntValue;
            _os_log_impl(&dword_223E00000, v27, OS_LOG_TYPE_DEFAULT, "loadCatacomb loaded user: %u\n", buf, 8u);
          }

          [(BiometricKitXPCServer *)self syncTemplateListForUser:unsignedIntValue];
        }

        ++v24;
      }

      while (v22 != v24);
      v30 = [v20 countByEnumeratingWithState:&v33 objects:v51 count:16];
      v22 = v30;
    }

    while (v30);
  }

  [(BiometricKitXPCServer *)self updatePropertiesOfIdentities];
  self->_userListChangeDetected = 1;
  [(BiometricKitXPCServer *)self validateAllUsers];
  [(BiometricKitXPCServer *)self deleteUnusedCatacombFiles];

  v8 = 0;
LABEL_52:
  [(BiometricKitXPCServer *)self setCatacombRestored:1];
  [(NSMutableArray *)self->_cachedIdentities unlock];
  if (__osLogTrace)
  {
    v31 = __osLogTrace;
  }

  else
  {
    v31 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v42) = v8;
    _os_log_impl(&dword_223E00000, v31, OS_LOG_TYPE_DEFAULT, "loadCatacomb -> err:0x%x\n", buf, 8u);
  }

  return v8;
}

- (int)loadCatacombForUser:(unsigned int)user
{
  v3 = *&user;
  v39 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v29) = v3;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEFAULT, "loadCatacombForUser: %u\n", buf, 8u);
  }

  [(NSMutableArray *)self->_cachedIdentities lock];
  v7 = [CatacombComponent componentForUserID:v3];
  v8 = [(BiometricKitXPCServer *)self loadCatacombForComponent:v7];

  if (v8)
  {
    [BiometricKitXPCServer loadCatacombForUser:];
    v20 = *buf;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [(BKCatacomb *)self->_catacomb cachedGroupComponentsForUser:v3];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v38 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v25;
      *&v11 = 136316162;
      v23 = v11;
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v24 + 1) + 8 * v14);
          if (([(BKCatacomb *)self->_catacomb stateOfComponent:v15, v23]& 1) != 0)
          {
            v16 = [(BiometricKitXPCServer *)self loadCatacombForComponent:v15];
            if (v16)
            {
              v17 = v16;
              v18 = (__osLog ? __osLog : v5);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = v23;
                v29 = "err == 0 ";
                v30 = 2048;
                v31 = v17;
                v32 = 2080;
                v33 = &unk_223E5FC53;
                v34 = 2080;
                v35 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
                v36 = 1024;
                v37 = 4720;
                _os_log_impl(&dword_223E00000, v18, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
              }
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v19 = [v9 countByEnumeratingWithState:&v24 objects:v38 count:16];
        v12 = v19;
      }

      while (v19);
    }

    [(BiometricKitXPCServer *)self logCatacombUUIDForUser:v3 catacombUUID:0];
    [(BiometricKitXPCServer *)self logCatacombHashForUser:v3 catacombHash:0];
    v20 = 0;
  }

  [(NSMutableArray *)self->_cachedIdentities unlock];
  if (__osLogTrace)
  {
    v21 = __osLogTrace;
  }

  else
  {
    v21 = v5;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v29) = v20;
    _os_log_impl(&dword_223E00000, v21, OS_LOG_TYPE_DEFAULT, "loadCatacombForUser: -> err:0x%x\n", buf, 8u);
  }

  return v20;
}

- (int)loadCatacombForComponent:(id)component
{
  v58 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = componentCopy;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEFAULT, "loadCatacombForComponent: %@\n", buf, 0xCu);
  }

  if (!componentCopy)
  {
    if (__osLog)
    {
      v36 = __osLog;
    }

    else
    {
      v36 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v49 = "component";
      v50 = 2048;
      v51 = 0;
      v52 = 2080;
      v53 = &unk_223E5FC53;
      v54 = 2080;
      v55 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v56 = 1024;
      v57 = 4754;
      _os_log_impl(&dword_223E00000, v36, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v10 = 0;
    v25 = 0;
    v24 = 0;
    v21 = 0;
    v42 = 0;
    v9 = 258;
    goto LABEL_41;
  }

  v6 = [(BKCatacomb *)self->_catacomb stateOfComponent:componentCopy];
  if ([componentCopy isUserComponent])
  {
    [(BiometricKitXPCServer *)self clearTemplateListForUser:objc_msgSend_userID(componentCopy)];
  }

  if ((v6 & 1) == 0)
  {
    if (__osLog)
    {
      v37 = __osLog;
    }

    else
    {
      v37 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v49 = "catacombState & (1 << 0)";
      v50 = 2048;
      v51 = 0;
      v52 = 2080;
      v53 = &unk_223E5FC53;
      v54 = 2080;
      v55 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v56 = 1024;
      v57 = 4766;
      _os_log_impl(&dword_223E00000, v37, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v10 = 0;
    v25 = 0;
    v24 = 0;
    v21 = 0;
    v42 = 0;
    v9 = 257;
    goto LABEL_41;
  }

  catacombLock = self->_catacombLock;
  v46 = 0;
  v8 = [(BiometricKitXPCServer *)self catacombFileNameForComponent:componentCopy];
  v45 = 0;
  v9 = [(NSRecursiveLock *)catacombLock readData:&v46 fromFile:v8 logString:&v45];
  v10 = v46;
  v42 = v45;

  if (isInternalBuild())
  {
    v11 = MEMORY[0x277CCACA8];
    date = [MEMORY[0x277CBEAA8] date];
    v13 = [(BiometricKitXPCServer *)self catacombFileNameForComponent:componentCopy];
    v14 = [v11 stringWithFormat:@"%@ - BKCatacomb::readData(file = '%@'), err = %d (%@)", date, v13, v9, v42];
    [(BiometricKitXPCServer *)self writeStringToPersistentLog:v14];
  }

  if (v9)
  {
    if (__osLog)
    {
      v38 = __osLog;
    }

    else
    {
      v38 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v49 = "err == 0 ";
      v50 = 2048;
      v51 = v9;
      v52 = 2080;
      v53 = &unk_223E5FC53;
      v54 = 2080;
      v55 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v56 = 1024;
      v57 = 4773;
      _os_log_impl(&dword_223E00000, v38, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v25 = 0;
    v24 = 0;
    v21 = 0;
    goto LABEL_41;
  }

  if (!v10)
  {
    if (__osLog)
    {
      v39 = __osLog;
    }

    else
    {
      v39 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v49 = "catacombData";
      v50 = 2048;
      v51 = 0;
      v52 = 2080;
      v53 = &unk_223E5FC53;
      v54 = 2080;
      v55 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v56 = 1024;
      v57 = 4774;
      _os_log_impl(&dword_223E00000, v39, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v10 = 0;
    v25 = 0;
    v24 = 0;
    v21 = 0;
    v9 = 261;
    goto LABEL_41;
  }

  if (isInternalBuild())
  {
    componentCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading Catacomb file, component = %@", componentCopy];
    [(BiometricKitXPCServer *)self logCatacombInfo:componentCopy data:v10];
  }

  if ([v10 length])
  {
    v16 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v10 error:0];
    v17 = v16;
    if (v16)
    {
      [v16 setDecodingFailurePolicy:0];
      v43 = 0;
      v44 = 0;
      v9 = [(BiometricKitXPCServer *)self unarchiveCatacombDataForComponent:componentCopy fromUnarchiver:v17 secureData:&v44 identities:&v43];
      v18 = v10;
      v19 = v6;
      v20 = v44;
      v21 = v43;
      if (v9)
      {
        if (__osLog)
        {
          v41 = __osLog;
        }

        else
        {
          v41 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v49 = "err == 0 ";
          v50 = 2048;
          v51 = v9;
          v52 = 2080;
          v53 = &unk_223E5FC53;
          v54 = 2080;
          v55 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
          v56 = 1024;
          v57 = 4791;
          _os_log_impl(&dword_223E00000, v41, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v22 = 4;
      }

      else
      {
        v22 = 0;
      }

      v23 = v17;
      v24 = v20;
      v6 = v19;
      v10 = v18;
      v25 = v23;
    }

    else
    {
      if (__osLog)
      {
        v40 = __osLog;
      }

      else
      {
        v40 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v49 = "unarchiver";
        v50 = 2048;
        v51 = 0;
        v52 = 2080;
        v53 = &unk_223E5FC53;
        v54 = 2080;
        v55 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v56 = 1024;
        v57 = 4786;
        _os_log_impl(&dword_223E00000, v40, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v21 = 0;
      v24 = 0;
      v25 = 0;
      v9 = 261;
      v22 = 4;
    }

    [v25 finishDecoding];
    if (v22)
    {
LABEL_40:
      if (!v9)
      {
        goto LABEL_51;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v21 = 0;
    v24 = 0;
    v25 = 0;
    v9 = 0;
  }

  if ((v6 & 2) != 0)
  {
LABEL_38:
    if (v21)
    {
      [(BiometricKitXPCServer *)self addIdentityObjects:v21];
    }

    goto LABEL_40;
  }

  if (![v24 length])
  {
    if (([componentCopy isMasterComponent] & 1) != 0 || objc_msgSend(componentCopy, "isUserComponent"))
    {
      v9 = [(BiometricKitXPCServer *)self performNoCatacombCommand:objc_msgSend_userID(componentCopy)];
      if (v9)
      {
        if (__osLog)
        {
          v27 = __osLog;
        }

        else
        {
          v27 = MEMORY[0x277D86220];
        }

        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        *buf = 136316162;
        v49 = "err == 0 ";
        v50 = 2048;
        v51 = v9;
        v52 = 2080;
        v53 = &unk_223E5FC53;
        v54 = 2080;
        v55 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v56 = 1024;
        v57 = 4831;
        goto LABEL_98;
      }
    }

    goto LABEL_37;
  }

  if (isInternalBuild())
  {
    componentCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading secure data, component = %@", componentCopy];
    [(BiometricKitXPCServer *)self logCatacombInfo:componentCopy2 data:v24];
  }

  v9 = [(BiometricKitXPCServer *)self performLoadCatacombCommand:componentCopy inData:v24];
  if (!v9)
  {
LABEL_37:
    [(BiometricKitXPCServer *)self readCatacombState];
    goto LABEL_38;
  }

  if (__osLog)
  {
    v27 = __osLog;
  }

  else
  {
    v27 = MEMORY[0x277D86220];
  }

  if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_41;
  }

  *buf = 136316162;
  v49 = "err == 0 ";
  v50 = 2048;
  v51 = v9;
  v52 = 2080;
  v53 = &unk_223E5FC53;
  v54 = 2080;
  v55 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
  v56 = 1024;
  v57 = 4824;
LABEL_98:
  _os_log_impl(&dword_223E00000, v27, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_41:
  if (isInternalBuild())
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading catacomb failed, err = %d (0x%x)", v9, v9];
    [(BiometricKitXPCServer *)self writeStringToPersistentLog:v28];
  }

  if ([componentCopy isUserComponent])
  {
    [(BiometricKitXPCServer *)self clearTemplateListForUser:objc_msgSend_userID(componentCopy)];
  }

  if (v9 == 269)
  {
    isMasterComponent = [componentCopy isMasterComponent];
    v30 = self->_catacombLock;
    if (isMasterComponent)
    {
      [(NSRecursiveLock *)self->_catacombLock deleteAll];
    }

    else
    {
      v31 = [(BiometricKitXPCServer *)self catacombFileNameForComponent:componentCopy];
      [(NSRecursiveLock *)v30 deleteFile:v31];

      if ([componentCopy isUserComponent])
      {
        [(BiometricKitXPCServer *)self removeUser:objc_msgSend_userID(componentCopy)];
        v32 = +[CatacombComponent masterComponent];
        v47 = v32;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
        [(BiometricKitXPCServer *)self saveCatacombForComponents:v33];
      }
    }

    LODWORD(v9) = 269;
  }

LABEL_51:
  if (__osLogTrace)
  {
    v34 = __osLogTrace;
  }

  else
  {
    v34 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v49) = v9;
    _os_log_impl(&dword_223E00000, v34, OS_LOG_TYPE_DEFAULT, "loadCatacombForComponent: -> err:0x%x\n", buf, 8u);
  }

  return v9;
}

- (int)cacheAccessories
{
  v78 = *MEMORY[0x277D85DE8];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "cacheAccessories\n", buf, 2u);
  }

  v57 = [MEMORY[0x277CBEB58] set];
  v56 = [MEMORY[0x277CBEB58] set];
  if ([(BiometricKitXPCServer *)self supportsRemovableAccessories])
  {
    v4 = [MEMORY[0x277CBEB28] dataWithLength:264];
    v5 = v4;
    if (!v4)
    {
      [BiometricKitXPCServer cacheAccessories];
      goto LABEL_88;
    }

    if ([(BiometricKitXPCServer *)self performGetBioDeviceListCommand:v4])
    {
      [BiometricKitXPCServer cacheAccessories];
      goto LABEL_88;
    }

    v6 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB28] dataWithLength:44];
    v8 = v7;
    if (!v7)
    {
      [BiometricKitXPCServer cacheAccessories];
      goto LABEL_88;
    }

    v9 = v7;
    mutableBytes = [v8 mutableBytes];
    *mutableBytes = 1;
    uuid_clear((mutableBytes + 4));
    *(mutableBytes + 20) = 1;
    uuid_clear((mutableBytes + 24));
    *(mutableBytes + 40) = 6;
    v6 = v8;
  }

  v58 = v6;
  if (__ROR8__(0x2E8BA2E8BA2E8BA3 * [v6 length], 2) < 0x5D1745D1745D175uLL)
  {
    v11 = [v58 length];
    if (v11 >= 0x2C)
    {
      v12 = 0;
      v13 = v11 / 0x2C;
      do
      {
        v14 = v58;
        mutableBytes2 = [v58 mutableBytes];
        v16 = objc_alloc_init(MEMORY[0x277CF1C00]);
        v17 = objc_alloc_init(MEMORY[0x277CF1C08]);
        [v17 setType:*(mutableBytes2 + v12 + 20)];
        v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:mutableBytes2 + v12 + 24];
        [v17 setUuid:v18];

        if ([v17 type] == 1)
        {
          [v17 setName:@"Builtin"];
        }

        else
        {
          type = [v17 type];
          v20 = MEMORY[0x277CCACA8];
          if (type == 2)
          {
            uuid = [v17 uuid];
            uUIDString = [uuid UUIDString];
            v23 = [v20 stringWithFormat:@"Trusted Accessory %@", uUIDString];
            [v17 setName:v23];
          }

          else
          {
            uuid = [MEMORY[0x277CCACA8] stringWithFormat:@"Type %u", objc_msgSend(v17, "type")];
            [v17 setName:uuid];
          }
        }

        [v16 setType:*(mutableBytes2 + v12)];
        v24 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:mutableBytes2 + v12 + 4];
        [v16 setUuid:v24];

        if ([v16 type] == 1)
        {
          [v16 setName:@"Builtin"];
        }

        else
        {
          type2 = [v16 type];
          v26 = MEMORY[0x277CCACA8];
          if (type2 == 2)
          {
            uuid2 = [v16 uuid];
            uUIDString2 = [uuid2 UUIDString];
            v29 = [v26 stringWithFormat:@"Trusted Accessory %@", uUIDString2];
            [v16 setName:v29];
          }

          else
          {
            uuid2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Type %u", objc_msgSend(v16, "type")];
            [v17 setName:uuid2];
          }
        }

        [v16 setGroup:v17];
        [v16 setFlags:*(mutableBytes2 + v12 + 40)];
        [v57 addObject:v16];
        if (([v16 flags] & 1) != 0 && (objc_msgSend(v16, "flags") & 2) != 0)
        {
          [v56 addObject:v16];
        }

        v12 += 44;
        --v13;
      }

      while (v13);
    }

    v30 = self->_biometricABCDispatchQueue;
    objc_sync_enter(v30);
    v31 = [MEMORY[0x277CBEB58] set];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v32 = self->_biometricABCDispatchQueue;
    v33 = [(OS_dispatch_queue *)v32 countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v33)
    {
      v34 = *v68;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v68 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v67 + 1) + 8 * i);
          if (([v36 flags] & 1) != 0 && (objc_msgSend(v36, "flags") & 2) != 0)
          {
            [v31 addObject:v36];
          }
        }

        v33 = [(OS_dispatch_queue *)v32 countByEnumeratingWithState:&v67 objects:v77 count:16];
      }

      while (v33);
    }

    v37 = [v31 isEqualToSet:v56];
    v55 = [(OS_dispatch_queue *)self->_biometricABCDispatchQueue isEqualToSet:v57];
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v38 = v57;
    v39 = [v38 countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v39)
    {
      v40 = *v64;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v64 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = *(*(&v63 + 1) + 8 * j);
          if ([v42 flags])
          {
            if (([(OS_dispatch_queue *)self->_biometricABCDispatchQueue containsObject:v42]& 1) == 0)
            {
              [(BiometricKitXPCServer *)self accessoryAdded:v42];
            }

            if (([v42 flags] & 2) != 0 && (objc_msgSend(v31, "containsObject:", v42) & 1) == 0)
            {
              [(BiometricKitXPCServer *)self accessoryConnected:v42];
            }

            else if (([v42 flags] & 2) == 0 && objc_msgSend(v31, "containsObject:", v42))
            {
              [(BiometricKitXPCServer *)self accessoryDisconnected:v42];
            }
          }
        }

        v39 = [v38 countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v39);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v43 = self->_biometricABCDispatchQueue;
    v44 = [(OS_dispatch_queue *)v43 countByEnumeratingWithState:&v59 objects:v75 count:16];
    if (v44)
    {
      v45 = *v60;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v60 != v45)
          {
            objc_enumerationMutation(v43);
          }

          v47 = *(*(&v59 + 1) + 8 * k);
          if (([v47 flags] & 1) != 0 && (objc_msgSend(v38, "containsObject:", v47) & 1) == 0)
          {
            [(BiometricKitXPCServer *)self accessoryRemoved:v47];
          }
        }

        v44 = [(OS_dispatch_queue *)v43 countByEnumeratingWithState:&v59 objects:v75 count:16];
      }

      while (v44);
    }

    [(OS_dispatch_queue *)self->_biometricABCDispatchQueue setSet:v38];
    if ((v55 & v37) == 1)
    {
      [(BiometricKitXPCServer *)self accessoryMayHaveChanged];
    }

    if ((v37 & 1) == 0 && LOBYTE(self->_mkbLockStatusNtfToken) == 1)
    {
      notify_set_state(HIDWORD(self->_catacombUserKeybagUUIDs), [v56 count]);
      notify_post("com.apple.BiometricKit.connectedAccessoriesChanged");
    }

    objc_sync_exit(v30);
    if (__osLog)
    {
      v48 = __osLog;
    }

    else
    {
      v48 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = v48;
      v50 = [v38 count];
      *buf = 134218242;
      *&buf[4] = v50;
      v73 = 2114;
      v74 = v38;
      _os_log_impl(&dword_223E00000, v49, OS_LOG_TYPE_DEFAULT, "cacheAccessories accessories %lu: %{public}@\n", buf, 0x16u);
    }

    if (__osLogTrace)
    {
      v51 = __osLogTrace;
    }

    else
    {
      v51 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = 0;
      _os_log_impl(&dword_223E00000, v51, OS_LOG_TYPE_DEBUG, "cacheAccessories -> err:0x%x\n", buf, 8u);
    }

    v52 = 0;
    goto LABEL_83;
  }

  [BiometricKitXPCServer cacheAccessories];
LABEL_88:
  v58 = *buf;
  v52 = v71;
  if (__osLogTrace)
  {
    v54 = __osLogTrace;
  }

  else
  {
    v54 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v71;
    _os_log_impl(&dword_223E00000, v54, OS_LOG_TYPE_ERROR, "cacheAccessories -> err:0x%x\n", buf, 8u);
  }

LABEL_83:

  return v52;
}

- (id)getAccessoryObject:(id *)object
{
  v26 = *MEMORY[0x277D85DE8];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = object;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEBUG, "getAccessoryObject: %p\n", buf, 0xCu);
  }

  if (object)
  {
    obj = self->_biometricABCDispatchQueue;
    objc_sync_enter(obj);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_biometricABCDispatchQueue;
    v7 = [(OS_dispatch_queue *)v6 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v7)
    {
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          if ([v10 type] == object->var0)
          {
            uuid = [v10 uuid];
            v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:object->var1];
            v13 = [uuid isEqual:v12];

            if (v13)
            {
              v14 = v10;
              goto LABEL_18;
            }
          }
        }

        v7 = [(OS_dispatch_queue *)v6 countByEnumeratingWithState:&v18 objects:v25 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_18:

    objc_sync_exit(obj);
  }

  else
  {
    [BiometricKitXPCServer getAccessoryObject:];
    v14 = *buf;
  }

  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    *&buf[4] = v14;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_223E00000, v15, OS_LOG_TYPE_DEBUG, "getAccessoryObject: -> %p(%@)\n", buf, 0x16u);
  }

  return v14;
}

- (id)pairedAccessories
{
  v3 = self->_biometricABCDispatchQueue;
  objc_sync_enter(v3);
  v4 = [(OS_dispatch_queue *)self->_biometricABCDispatchQueue copy];
  objc_sync_exit(v3);

  return v4;
}

- (id)connectedAccessories
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
  v4 = self->_biometricABCDispatchQueue;
  objc_sync_enter(v4);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_biometricABCDispatchQueue;
  v6 = [(OS_dispatch_queue *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 flags] & 2) != 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(OS_dispatch_queue *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
  v10 = [v3 copy];

  return v10;
}

- (int)listAccessories:(id *)accessories client:(id)client
{
  v19 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v17 = 134218242;
    *v18 = accessories;
    *&v18[8] = 2112;
    *&v18[10] = clientCopy;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "listAccessories:client: %p, %@\n", &v17, 0x16u);
  }

  if (accessories)
  {
    if (![(BiometricKitXPCServer *)self cacheAccessories])
    {
      v9 = self->_biometricABCDispatchQueue;
      objc_sync_enter(v9);
      allObjects = [(OS_dispatch_queue *)self->_biometricABCDispatchQueue allObjects];
      *accessories = [allObjects copy];

      objc_sync_exit(v9);
      if (__osLogTrace)
      {
        v11 = __osLogTrace;
      }

      else
      {
        v11 = v7;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *accessories;
        v17 = 67109378;
        *v18 = 0;
        *&v18[4] = 2112;
        *&v18[6] = v12;
        _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "listAccessories:client: -> err:0x%x, accessories:%@\n", &v17, 0x12u);
      }

      v13 = 0;
      goto LABEL_14;
    }

    [BiometricKitXPCServer listAccessories:client:];
  }

  else
  {
    [BiometricKitXPCServer listAccessories:client:];
  }

  v13 = v17;
  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v7;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if (accessories)
    {
      v16 = *accessories;
    }

    else
    {
      v16 = 0;
    }

    v17 = 67109378;
    *v18 = v13;
    *&v18[4] = 2112;
    *&v18[6] = v16;
    _os_log_impl(&dword_223E00000, v15, OS_LOG_TYPE_ERROR, "listAccessories:client: -> err:0x%x, accessories:%@\n", &v17, 0x12u);
  }

LABEL_14:

  return v13;
}

- (int)getFreeIdentityCount:(unint64_t *)count forUser:(unsigned int)user accessoryGroup:(id)group client:(id)client
{
  v7 = *&user;
  v33 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  clientCopy = client;
  v12 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    *&buf[4] = count;
    *&buf[12] = 1024;
    *&buf[14] = v7;
    *&buf[18] = 2112;
    v30 = groupCopy;
    v31 = 2112;
    v32 = clientCopy;
    _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_DEBUG, "getFreeIdentityCount:forUser:accessoryGroup:client: %p, %u, %@, %@\n", buf, 0x26u);
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  memset(buf, 0, sizeof(buf));
  v24 = 0;
  if (!count)
  {
    [BiometricKitXPCServer getFreeIdentityCount:forUser:accessoryGroup:client:];
    goto LABEL_34;
  }

  [(BiometricKitXPCServer *)self validateAllUsers];
  supportsRemovableAccessories = [(BiometricKitXPCServer *)self supportsRemovableAccessories];
  type = [groupCopy type];
  if (!supportsRemovableAccessories)
  {
    if (type == 1 && [(BiometricKitXPCServer *)self performGetFreeIdentityCountCommand:v7 outCount:&v24])
    {
      [BiometricKitXPCServer getFreeIdentityCount:forUser:accessoryGroup:client:];
      goto LABEL_34;
    }

LABEL_14:
    v17 = 0;
    *count = v24;
    goto LABEL_15;
  }

  *buf = type;
  uuid = [groupCopy uuid];
  [uuid getUUIDBytes:&buf[4]];

  if (![(BiometricKitXPCServer *)self performGetFreeIdentityCountCommand:v7 group:buf outCount:&v24])
  {
    goto LABEL_14;
  }

  [BiometricKitXPCServer getFreeIdentityCount:forUser:accessoryGroup:client:];
LABEL_34:
  v17 = *v25;
LABEL_15:
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v12;
  }

  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      if (count)
      {
        v19 = *count;
      }

      else
      {
        v19 = -1;
      }

      *v25 = 67109376;
      v26 = v17;
      v27 = 2048;
      v28 = v19;
      v21 = v18;
      v22 = OS_LOG_TYPE_ERROR;
LABEL_31:
      _os_log_impl(&dword_223E00000, v21, v22, "getFreeIdentityCount:forUser:accessoryGroup:client: -> err:0x%x, count:%ld\n", v25, 0x12u);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    if (count)
    {
      v20 = *count;
    }

    else
    {
      v20 = -1;
    }

    *v25 = 67109376;
    v26 = 0;
    v27 = 2048;
    v28 = v20;
    v21 = v18;
    v22 = OS_LOG_TYPE_DEBUG;
    goto LABEL_31;
  }

  return v17;
}

- (int)getPreferencesValue:(id *)value forKey:(id)key withClient:(id)client
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  clientCopy = client;
  v9 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134218242;
    *v17 = value;
    *&v17[8] = 2112;
    *&v17[10] = keyCopy;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEBUG, "getPreferencesValue:forKey: %p, %@\n", &v16, 0x16u);
  }

  if (value)
  {
    *value = [MEMORY[0x277CF1BF0] preferenceObjectForKey:keyCopy];
    if (__osLogTrace)
    {
      v11 = __osLogTrace;
    }

    else
    {
      v11 = v9;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *value;
      v16 = 67109634;
      *v17 = 0;
      *&v17[4] = 2112;
      *&v17[6] = keyCopy;
      *&v17[14] = 2112;
      *&v17[16] = v12;
      _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "getPreferencesValue:forKey: -> err:0x%x, {%@: %@}\n", &v16, 0x1Cu);
    }

    v13 = 0;
  }

  else
  {
    if (__osLogTrace)
    {
      v14 = __osLogTrace;
    }

    else
    {
      v14 = v9;
    }

    v13 = 258;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 67109634;
      *v17 = 258;
      *&v17[4] = 2112;
      *&v17[6] = keyCopy;
      *&v17[14] = 2112;
      *&v17[16] = 0;
      _os_log_impl(&dword_223E00000, v14, OS_LOG_TYPE_ERROR, "getPreferencesValue:forKey: -> err:0x%x, {%@: %@}\n", &v16, 0x1Cu);
    }
  }

  return v13;
}

- (BOOL)setPreferencesValue:(id)value forKey:(id)key withClient:(id)client
{
  v20 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  clientCopy = client;
  v10 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412546;
    *v19 = keyCopy;
    *&v19[8] = 2112;
    *&v19[10] = valueCopy;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "setPreferencesValue:forKey: {%@: %@}\n", &v18, 0x16u);
  }

  mEMORY[0x277CF1BF0] = [MEMORY[0x277CF1BF0] sharedInstance];
  v13 = [mEMORY[0x277CF1BF0] setObject:valueCopy forKey:keyCopy];

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v10;
  }

  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v18 = 67109634;
      *v19 = 1;
      *&v19[4] = 2112;
      *&v19[6] = keyCopy;
      *&v19[14] = 2112;
      *&v19[16] = valueCopy;
      v15 = v14;
      v16 = OS_LOG_TYPE_DEBUG;
LABEL_14:
      _os_log_impl(&dword_223E00000, v15, v16, "setPreferencesValue:forKey: -> %d, {%@: %@}\n", &v18, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v18 = 67109634;
    *v19 = 0;
    *&v19[4] = 2112;
    *&v19[6] = keyCopy;
    *&v19[14] = 2112;
    *&v19[16] = valueCopy;
    v15 = v14;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_14;
  }

  return v13;
}

- (int)getUserUUIDsForUIDs:(id)ds userUUIDs:(id *)iDs
{
  v48 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    v10 = [dsCopy componentsJoinedByString:{@", "}];
    *buf = 134218498;
    *&buf[4] = dsCopy;
    v46 = 2112;
    *v47 = v10;
    *&v47[8] = 2048;
    *&v47[10] = iDs;
    _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEBUG, "getUserUUIDsForUIDs:userUUIDs: %p(%@), %p\n", buf, 0x20u);
  }

  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  allUsers = [mEMORY[0x277D77BF8] allUsers];

  if (!allUsers)
  {
    [BiometricKitXPCServer getUserUUIDsForUIDs:userUUIDs:];
LABEL_38:
    v32 = v43;
    v26 = *buf;
    goto LABEL_31;
  }

  if (![allUsers count])
  {
    [BiometricKitXPCServer getUserUUIDsForUIDs:userUUIDs:];
    goto LABEL_38;
  }

  selfCopy = self;
  iDsCopy = iDs;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v38 = allUsers;
  v14 = allUsers;
  v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v39 + 1) + 8 * i);
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v19, "uid")}];
        v21 = [dsCopy containsObject:v20];

        if (v21)
        {
          v22 = objc_alloc(MEMORY[0x277CCAD78]);
          alternateDSID = [v19 alternateDSID];
          v24 = [v22 initWithUUIDString:alternateDSID];

          if (!v24)
          {
            [BiometricKitXPCServer getUserUUIDsForUIDs:v14 userUUIDs:?];
            v32 = 261;
            allUsers = v38;
            v26 = dictionary;
            v7 = MEMORY[0x277D86220];
            goto LABEL_31;
          }

          v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v19, "uid")}];
          [dictionary setObject:v24 forKey:v25];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if ((selfCopy->_userAccountsInfo.currentAccountUserID & 0x10000) == 0)
  {
    [(BiometricKitXPCServer *)selfCopy cacheAndSetUserAccountsInfo];
  }

  v26 = dictionary;
  v7 = MEMORY[0x277D86220];
  if (iDsCopy)
  {
    v27 = dictionary;
    *iDsCopy = dictionary;
  }

  v28 = [dictionary count];
  if (v28 == [dsCopy count])
  {
    if (__osLogTrace)
    {
      v29 = __osLogTrace;
    }

    else
    {
      v29 = v7;
    }

    allUsers = v38;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = v29;
      v31 = [dsCopy componentsJoinedByString:{@", "}];
      *buf = 138412802;
      *&buf[4] = v31;
      v46 = 1024;
      *v47 = 0;
      *&v47[4] = 2112;
      *&v47[6] = dictionary;
      _os_log_impl(&dword_223E00000, v30, OS_LOG_TYPE_DEBUG, "getUserUUIDsForUIDs:userUUIDs: %@, - -> err:0x%x, userUUIDs:%@\n", buf, 0x1Cu);
    }

    v32 = 0;
    goto LABEL_35;
  }

  v32 = 0;
  allUsers = v38;
LABEL_31:
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v33 = v7;
    v34 = [dsCopy componentsJoinedByString:{@", "}];
    *buf = 138412802;
    *&buf[4] = v34;
    v46 = 1024;
    *v47 = v32;
    *&v47[4] = 2112;
    *&v47[6] = v26;
    _os_log_impl(&dword_223E00000, v33, OS_LOG_TYPE_ERROR, "getUserUUIDsForUIDs:userUUIDs: %@, - -> err:0x%x, userUUIDs:%@\n", buf, 0x1Cu);
  }

LABEL_35:

  return v32;
}

- (int)getUserUUIDForUID:(unsigned int)d userUUID:(id *)iD
{
  v5 = *&d;
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *&buf[4] = v5;
    v24 = 2048;
    v25[0] = iD;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "getUserUUIDForUID:userUUID: %u, %p\n", buf, 0x12u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
  v10 = v9;
  if (v5 == -1)
  {
    [BiometricKitXPCServer getUserUUIDForUID:userUUID:];
LABEL_27:
    v18 = v22;
    v13 = *buf;
    goto LABEL_18;
  }

  v26[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v21 = 0;
  v12 = [(BiometricKitXPCServer *)self getUserUUIDsForUIDs:v11 userUUIDs:&v21];
  v13 = v21;

  if (v12)
  {
    [BiometricKitXPCServer getUserUUIDForUID:userUUID:];
    goto LABEL_27;
  }

  v14 = [v13 objectForKeyedSubscript:v10];
  v15 = v14;
  if (iD)
  {
    v16 = v14;
    *iD = v15;
  }

  if (v15)
  {
    if (__osLogTrace)
    {
      v17 = __osLogTrace;
    }

    else
    {
      v17 = v7;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109634;
      *&buf[4] = v5;
      v24 = 1024;
      LODWORD(v25[0]) = 0;
      WORD2(v25[0]) = 2112;
      *(v25 + 6) = v15;
      _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_DEBUG, "getUserUUIDForUID:userUUID: -, %u -> err:0x%x, userUUID:%@\n", buf, 0x18u);
    }

    v18 = 0;
    goto LABEL_24;
  }

  v18 = 0;
LABEL_18:
  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v7;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109634;
    *&buf[4] = v5;
    v24 = 1024;
    LODWORD(v25[0]) = v18;
    WORD2(v25[0]) = 2112;
    *(v25 + 6) = 0;
    _os_log_impl(&dword_223E00000, v19, OS_LOG_TYPE_ERROR, "getUserUUIDForUID:userUUID: -, %u -> err:0x%x, userUUID:%@\n", buf, 0x18u);
  }

  v15 = 0;
LABEL_24:

  return v18;
}

- (void)userListDidUpdate
{
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEFAULT, "userListDidUpdate\n", v5, 2u);
  }

  v4 = objc_autoreleasePoolPush();
  [(BiometricKitXPCServer *)self cacheAndSetUserAccountsInfo];
  self->_userListChangeDetected = 1;
  [(BiometricKitXPCServer *)self validateAllUsers];
  objc_autoreleasePoolPop(v4);
}

void __49__BiometricKitXPCServer_validateUsersKeybagUUIDs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  v9 = [*(a1 + 32) getUserKeybagUUIDForUID:{objc_msgSend(v7, "unsignedIntValue")}];
  if (v9 && ([v8 isEqual:v9] & 1) == 0)
  {
    if (__osLog)
    {
      v10 = __osLog;
    }

    else
    {
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12[0] = 67109634;
      v12[1] = [v7 unsignedIntValue];
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEFAULT, "validateUsersKeybagUUIDs: removing user %u because of invalid user keybag UUID (real:%@ vs catacomb:%@)\n", v12, 0x1Cu);
    }

    [*(a1 + 32) removeUser:{objc_msgSend(v7, "unsignedIntValue")}];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (int)updateIdentity:(id)identity withOptions:(id)options withClient:(id)client
{
  v28 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  optionsCopy = options;
  clientCopy = client;
  v11 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543874;
    v23 = identityCopy;
    v24 = 2048;
    v25 = optionsCopy;
    v26 = 2112;
    v27 = clientCopy;
    _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEFAULT, "updateIdentity:withOptions:withClient: %{public}@, %p, %@\n", &v22, 0x20u);
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (isEphemeralMultiUser())
  {
    [BiometricKitXPCServer updateIdentity:withOptions:withClient:];
LABEL_28:
    v17 = v22;
    goto LABEL_13;
  }

  if ([(BiometricKitXPCServer *)self isFingerprintModificationRestricted])
  {
    [BiometricKitXPCServer updateIdentity:withOptions:withClient:];
    goto LABEL_28;
  }

  [(BiometricKitXPCServer *)self validateAllUsers];
  v13 = objc_msgSend_userID(identityCopy);
  uuid = [identityCopy uuid];
  v15 = [(BiometricKitXPCServer *)self getIdentityObjectByUserID:v13 UUID:uuid];

  if (!v15)
  {
    [BiometricKitXPCServer updateIdentity:withOptions:withClient:];
    goto LABEL_28;
  }

  [v15 setAttribute:{objc_msgSend(identityCopy, "attribute")}];
  [v15 setEntity:{objc_msgSend(identityCopy, "entity")}];
  name = [identityCopy name];
  [v15 setName:name];

  v17 = [(BiometricKitXPCServer *)self checkCatacombForUser:objc_msgSend_userID(identityCopy)];
  if (v17)
  {
    [BiometricKitXPCServer updateIdentity:withOptions:withClient:];
  }

  else
  {
    [(BiometricKitXPCServer *)self saveCatacombForIdentity:v15];
  }

LABEL_13:
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v11;
  }

  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = 67109120;
      LODWORD(v23) = v17;
      v19 = v18;
      v20 = OS_LOG_TYPE_ERROR;
LABEL_23:
      _os_log_impl(&dword_223E00000, v19, v20, "updateIdentity:withOptions:withClient: -> err:0x%x\n", &v22, 8u);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v22 = 67109120;
    LODWORD(v23) = 0;
    v19 = v18;
    v20 = OS_LOG_TYPE_DEBUG;
    goto LABEL_23;
  }

  return v17;
}

- (int)removeIdentity:(id)identity withOptions:(id)options withClient:(id)client
{
  v24 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  optionsCopy = options;
  clientCopy = client;
  v11 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = identityCopy;
    *&buf[12] = 2048;
    *&buf[14] = optionsCopy;
    v22 = 2112;
    v23 = clientCopy;
    _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEFAULT, "removeIdentity:withOptions:withClient: %{public}@, %p, %@\n", buf, 0x20u);
  }

  memset(buf, 0, 20);
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (isEphemeralMultiUser())
  {
    [BiometricKitXPCServer removeIdentity:withOptions:withClient:];
  }

  else if ([(BiometricKitXPCServer *)self isFingerprintModificationRestricted])
  {
    [BiometricKitXPCServer removeIdentity:withOptions:withClient:];
  }

  else if (identityCopy)
  {
    [(BiometricKitXPCServer *)self validateAllUsers];
    if ([(BiometricKitXPCServer *)self checkCatacombForUser:objc_msgSend_userID(identityCopy)])
    {
      [BiometricKitXPCServer removeIdentity:withOptions:withClient:];
    }

    else
    {
      *buf = objc_msgSend_userID(identityCopy);
      uuid = [identityCopy uuid];
      [uuid getUUIDBytes:&buf[4]];

      if ([(BiometricKitXPCServer *)self performRemoveIdentityCommand:buf])
      {
        [BiometricKitXPCServer removeIdentity:withOptions:withClient:];
      }

      else
      {
        [(BiometricKitXPCServer *)self removeIdentityObject:identityCopy];
        if (![(BiometricKitXPCServer *)self saveCatacomb])
        {
          [(BiometricKitXPCServer *)self updateEnrollmentChangedNotification:1];
          v14 = 0;
          goto LABEL_15;
        }

        [BiometricKitXPCServer removeIdentity:withOptions:withClient:];
      }
    }
  }

  else
  {
    [BiometricKitXPCServer removeIdentity:withOptions:withClient:];
  }

  v14 = v19;
LABEL_15:
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v11;
  }

  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = 67109120;
      v20 = v14;
      v16 = v15;
      v17 = OS_LOG_TYPE_ERROR;
LABEL_25:
      _os_log_impl(&dword_223E00000, v16, v17, "removeIdentity:withOptions:withClient: -> err:0x%x\n", &v19, 8u);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v19 = 67109120;
    v20 = 0;
    v16 = v15;
    v17 = OS_LOG_TYPE_DEBUG;
    goto LABEL_25;
  }

  return v14;
}

- (int)removeAllIdentitiesForUser:(unsigned int)user withOptions:(id)options withClient:(id)client
{
  v6 = *&user;
  v36[4] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  clientCopy = client;
  v10 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *&buf[4] = v6;
    LOWORD(v36[0]) = 2048;
    *(v36 + 2) = optionsCopy;
    WORD1(v36[1]) = 2112;
    *(&v36[1] + 4) = clientCopy;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEFAULT, "removeAllIdentitiesForUser:withOptions:withClient: %u, %p, %@\n", buf, 0x1Cu);
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (isEphemeralMultiUser())
  {
    [BiometricKitXPCServer removeAllIdentitiesForUser:withOptions:withClient:];
LABEL_43:
    v22 = *buf;
    goto LABEL_28;
  }

  if ([(BiometricKitXPCServer *)self isFingerprintModificationRestricted])
  {
    [BiometricKitXPCServer removeAllIdentitiesForUser:withOptions:withClient:];
    goto LABEL_43;
  }

  [(BiometricKitXPCServer *)self validateAllUsers];
  if ([(BiometricKitXPCServer *)self checkCatacombForUser:v6])
  {
    [BiometricKitXPCServer removeAllIdentitiesForUser:withOptions:withClient:];
    goto LABEL_43;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  identities = [(BiometricKitXPCServer *)self identities];
  v13 = [identities countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v27 = clientCopy;
    v15 = optionsCopy;
    v16 = 0;
    v17 = *v29;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(identities);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        if (objc_msgSend_userID(v19) == v6)
        {
          *buf = 0;
          memset(v36, 0, 12);
          *buf = objc_msgSend_userID(v19);
          uuid = [v19 uuid];
          [uuid getUUIDBytes:&buf[4]];

          v21 = [(BiometricKitXPCServer *)self performRemoveIdentityCommand:buf];
          if (v21)
          {
            v22 = v21;
            [BiometricKitXPCServer removeAllIdentitiesForUser:v21 withOptions:buf withClient:identities];
            optionsCopy = v15;
            clientCopy = v27;
            v10 = MEMORY[0x277D86220];
            goto LABEL_28;
          }

          [(BiometricKitXPCServer *)self removeIdentityObject:v19];
          v16 = 1;
        }
      }

      v14 = [identities countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v10 = MEMORY[0x277D86220];
    if (v16)
    {
      optionsCopy = v15;
      if ([(BiometricKitXPCServer *)self saveCatacomb])
      {
        [BiometricKitXPCServer removeAllIdentitiesForUser:withOptions:withClient:];
        v22 = *buf;
      }

      else
      {
        [(BiometricKitXPCServer *)self updateEnrollmentChangedNotification:1];
        v22 = 0;
      }

      clientCopy = v27;
    }

    else
    {
      v22 = 0;
      optionsCopy = v15;
      clientCopy = v27;
    }
  }

  else
  {

    v22 = 0;
  }

LABEL_28:
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v23 = __osLogTrace;
  }

  else
  {
    v23 = v10;
  }

  if (v22)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v32 = 67109120;
      v33 = v22;
      v24 = v23;
      v25 = OS_LOG_TYPE_ERROR;
LABEL_38:
      _os_log_impl(&dword_223E00000, v24, v25, "removeAllIdentitiesForUser:withOptions:withClient: -> err:0x%x\n", v32, 8u);
    }
  }

  else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 67109120;
    v33 = 0;
    v24 = v23;
    v25 = OS_LOG_TYPE_DEBUG;
    goto LABEL_38;
  }

  return v22;
}

- (id)getIdentityFromUUID:(id)d withClient:(id)client
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  clientCopy = client;
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v25 = dCopy;
    v26 = 2112;
    v27 = dCopy;
    v28 = 2112;
    v29 = clientCopy;
    _os_log_impl(&dword_223E00000, v7, OS_LOG_TYPE_DEBUG, "getIdentityFromUUID:withClient: %p(%@), %@\n", buf, 0x20u);
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  [(BiometricKitXPCServer *)self validateAllUsers];
  v8 = self->_ongoingBiometricOperation;
  objc_sync_enter(v8);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_ongoingBiometricOperation;
  v10 = [(ActivityTracker *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        uuid = [v13 uuid];
        v15 = [uuid isEqual:dCopy];

        if (v15)
        {
          v10 = v13;
          goto LABEL_18;
        }
      }

      v10 = [(ActivityTracker *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  objc_sync_exit(v8);
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = clientCopy;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&dword_223E00000, v16, OS_LOG_TYPE_DEFAULT, "getIdentityFromUUID:withClient: -, %@ -> %{public}@\n", buf, 0x16u);
  }

  return v10;
}

- (id)identities:(id)identities withClient:(id)client
{
  v21 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  clientCopy = client;
  v8 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134218498;
    v16 = identitiesCopy;
    v17 = 2112;
    v18 = identitiesCopy;
    v19 = 2112;
    v20 = clientCopy;
    _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEBUG, "identities:withClient: %p(%@), %@\n", &v15, 0x20u);
  }

  [(BiometricKitXPCServer *)self validateAllUsers];
  if (BYTE2(self->_mkbLockStatusNtfToken) == 1)
  {
    biometricKitIdentity = [MEMORY[0x277CF1C10] biometricKitIdentity];
    [biometricKitIdentity setUserID:501];
    [biometricKitIdentity setFlags:1];
    [MEMORY[0x277CBEB18] arrayWithObject:biometricKitIdentity];
  }

  else
  {
    v11 = MEMORY[0x277CBEB18];
    biometricKitIdentity = [(BiometricKitXPCServer *)self identities];
    [v11 arrayWithArray:biometricKitIdentity];
  }
  v12 = ;

  if (identitiesCopy && [(BiometricKitXPCServer *)self filterIdentities:v12 withFilter:identitiesCopy])
  {
    [v12 removeAllObjects];
  }

  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v8;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = clientCopy;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_DEFAULT, "identities:withClient: -, %@ -> %@\n", &v15, 0x16u);
  }

  return v12;
}

- (int64_t)getMaxIdentityCount:(int)count withClient:(id)client
{
  v19 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    countCopy2 = count;
    v15 = 2112;
    v16 = clientCopy;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "getMaxIdentityCount:withClient: %d, %@\n", buf, 0x12u);
  }

  v12 = 0;
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if ([(BiometricKitXPCServer *)self performRequestMaxIdentityCountCommand:&v12])
  {
    [BiometricKitXPCServer getMaxIdentityCount:withClient:];
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = v7;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    countCopy2 = count;
    v15 = 2112;
    v16 = clientCopy;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEFAULT, "getMaxIdentityCount:withClient: %d, %@ -> %u\n", buf, 0x18u);
  }

  v10 = v12;

  return v10;
}

- (int64_t)getFreeIdentityCount:(int)count forUser:(unsigned int)user withClient:(id)client
{
  v5 = *&user;
  v23 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v9 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109634;
    countCopy2 = count;
    v17 = 1024;
    v18 = v5;
    v19 = 2112;
    v20 = clientCopy;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEBUG, "getFreeIdentityCount:forUser:withClient: %d, %u, %@\n", buf, 0x18u);
  }

  v14 = 0;
  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  [(BiometricKitXPCServer *)self validateAllUsers];
  if ([(BiometricKitXPCServer *)self performGetFreeIdentityCountCommand:v5 outCount:&v14])
  {
    [BiometricKitXPCServer getFreeIdentityCount:forUser:withClient:];
  }

  if (BYTE1(self->_mkbLockStatusNtfToken) == 1)
  {
    kdebug_trace();
  }

  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v9;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    countCopy2 = count;
    v17 = 1024;
    v18 = v5;
    v19 = 2112;
    v20 = clientCopy;
    v21 = 1024;
    v22 = v14;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEFAULT, "getFreeIdentityCount:forUser:withClient: %d, %u, %@ -> %u\n", buf, 0x1Eu);
  }

  v12 = v14;

  return v12;
}

- (int)dropUnlockTokenWithClient:(id)client
{
  v14 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = clientCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "dropUnlockTokenWithClient: %@\n", &v10, 0xCu);
  }

  performDropUnlockTokenCommand = [(BiometricKitXPCServer *)self performDropUnlockTokenCommand];
  if (performDropUnlockTokenCommand)
  {
    [BiometricKitXPCServer dropUnlockTokenWithClient:];
  }

  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = v5;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = clientCopy;
    v12 = 1024;
    v13 = performDropUnlockTokenCommand;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEFAULT, "dropUnlockTokenWithClient: %@ -> err:0x%x\n", &v10, 0x12u);
  }

  return performDropUnlockTokenCommand;
}

- (int)forceBioLockoutForUser:(unsigned int)user withOptions:(id)options withClient:(id)client
{
  v6 = *&user;
  v23 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  clientCopy = client;
  v10 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109634;
    v16 = v6;
    v17 = 2048;
    v18 = optionsCopy;
    v19 = 2112;
    v20 = clientCopy;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "forceBioLockoutForUser:withOptions:withClient: %u, %p, %@\n", buf, 0x1Cu);
  }

  if (optionsCopy && dictionaryGetBool())
  {
    [BiometricKitXPCServer forceBioLockoutForUser:withOptions:withClient:];
  }

  else
  {
    if (![(BiometricKitXPCServer *)self performForceBioLockoutCommand:v6])
    {
      v12 = 0;
      goto LABEL_10;
    }

    [BiometricKitXPCServer forceBioLockoutForUser:withOptions:withClient:];
  }

  v12 = *buf;
LABEL_10:
  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v10;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v16 = v6;
    v17 = 2112;
    v18 = optionsCopy;
    v19 = 2112;
    v20 = clientCopy;
    v21 = 1024;
    v22 = v12;
    _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_DEFAULT, "forceBioLockoutForUser:withOptions:withClient: %u, %@, %@ -> err:0x%x\n", buf, 0x22u);
  }

  return v12;
}

- (int)getBioLockoutState:(int64_t *)state forUser:(unsigned int)user withClient:(id)client
{
  v5 = *&user;
  *&v24[5] = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v9 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *v22 = state;
    *&v22[8] = 1024;
    *&v22[10] = v5;
    v23 = 2112;
    *v24 = clientCopy;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEBUG, "getBioLockoutState:forUser:withClient: %p, %u, %@\n", buf, 0x1Cu);
  }

  v20 = 0;
  if (!state)
  {
    v11 = 258;
    if ([BiometricKitXPCServer getBioLockoutState:clientCopy forUser:? withClient:?])
    {
      goto LABEL_27;
    }

LABEL_11:
    if (__osLogTrace)
    {
      v14 = __osLogTrace;
    }

    else
    {
      v14 = v9;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109890;
      *v22 = v5;
      *&v22[4] = 2112;
      *&v22[6] = clientCopy;
      v23 = 1024;
      v24[0] = v11;
      LOWORD(v24[1]) = 1024;
      *(&v24[1] + 2) = v20;
      v15 = v14;
      v16 = OS_LOG_TYPE_DEFAULT;
LABEL_16:
      _os_log_impl(&dword_223E00000, v15, v16, "getBioLockoutState:forUser:withClient: -, %u, %@ -> err:0x%x, state:%u\n", buf, 0x1Eu);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v11 = [(BiometricKitXPCServer *)self performGetSKSLockStateCommand:v5 outState:&v20];
  if (!v11)
  {
    hasMultipleUserAccounts = [(BiometricKitXPCServer *)self hasMultipleUserAccounts];
    v13 = v20;
    if (!hasMultipleUserAccounts)
    {
      v13 = v20 & 0xFFFFFFBF;
      v20 &= ~0x40u;
    }

    *state = v13;
    if (!clientCopy)
    {
      if (__osLogTrace)
      {
        v17 = __osLogTrace;
      }

      else
      {
        v17 = v9;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109890;
        *v22 = v5;
        *&v22[4] = 2112;
        *&v22[6] = 0;
        v23 = 1024;
        v24[0] = 0;
        LOWORD(v24[1]) = 1024;
        *(&v24[1] + 2) = v20;
        _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_DEBUG, "getBioLockoutState:forUser:withClient: -, %u, %@ -> err:0x%x, state:%u\n", buf, 0x1Eu);
      }

      v11 = 0;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (![BiometricKitXPCServer getBioLockoutState:forUser:withClient:])
  {
    goto LABEL_11;
  }

LABEL_27:
  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v9;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    *v22 = v5;
    *&v22[4] = 2112;
    *&v22[6] = 0;
    v23 = 1024;
    v24[0] = v11;
    LOWORD(v24[1]) = 1024;
    *(&v24[1] + 2) = v20;
    v15 = v19;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_16;
  }

LABEL_23:

  return v11;
}

- (int)getExpressModeState:(int64_t *)state forUser:(unsigned int)user withClient:(id)client
{
  v5 = *&user;
  v29 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v9 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = state;
    *&buf[12] = 1024;
    *&buf[14] = v5;
    v27 = 2112;
    v28 = clientCopy;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEBUG, "getExpressModeState:forUser:withClient: %p, %u, %@\n", buf, 0x1Cu);
  }

  if (!state)
  {
    [BiometricKitXPCServer getExpressModeState:forUser:withClient:];
LABEL_28:
    v12 = *buf;
    v21 = v25;
    goto LABEL_32;
  }

  v11 = [(BiometricKitXPCServer *)self identitiesOfUser:v5];
  if (!v11)
  {
    [BiometricKitXPCServer getExpressModeState:forUser:withClient:];
    goto LABEL_28;
  }

  v12 = v11;
  if (![v11 count])
  {
    v14 = 0;
LABEL_19:
    *state = v14;
    if (__osLogTrace)
    {
      v19 = __osLogTrace;
    }

    else
    {
      v19 = v9;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = *state;
      *buf = 67109376;
      *&buf[4] = 0;
      *&buf[8] = 2048;
      *&buf[10] = v20;
      _os_log_impl(&dword_223E00000, v19, OS_LOG_TYPE_DEBUG, "getExpressModeState:forUser:withClient: -> err:0x%x, state:%ld\n", buf, 0x12u);
    }

    v21 = 0;
    goto LABEL_25;
  }

  *buf = 0;
  v13 = [(BiometricKitXPCServer *)self getProtectedConfigurationForUser:v5 withClient:clientCopy];
  if (v13)
  {
    if (![(BiometricKitXPCServer *)self getBioLockoutState:buf forUser:v5 withClient:clientCopy])
    {
      v14 = (buf[0] & 0x16) != 0;
      v15 = [v13 objectForKeyedSubscript:@"BKUserCfgEffectiveTouchIDApplePayEnabled"];
      if ([v15 BOOLValue])
      {
      }

      else
      {
        v16 = [v13 objectForKeyedSubscript:@"BKUserCfgEffectiveTouchIDUnlockEnabled"];
        bOOLValue = [v16 BOOLValue];

        if (!bOOLValue)
        {
LABEL_18:

          goto LABEL_19;
        }
      }

      v18 = 4;
      if ((*buf & 0x208) == 0)
      {
        v18 = 6;
      }

      v14 |= v18;
      goto LABEL_18;
    }

    [BiometricKitXPCServer getExpressModeState:forUser:withClient:];
  }

  else
  {
    [BiometricKitXPCServer getExpressModeState:forUser:withClient:];
  }

  v21 = v25;

LABEL_32:
  if (__osLogTrace)
  {
    v23 = __osLogTrace;
  }

  else
  {
    v23 = v9;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    if (state)
    {
      v24 = *state;
    }

    else
    {
      v24 = -1;
    }

    *buf = 67109376;
    *&buf[4] = v21;
    *&buf[8] = 2048;
    *&buf[10] = v24;
    _os_log_impl(&dword_223E00000, v23, OS_LOG_TYPE_ERROR, "getExpressModeState:forUser:withClient: -> err:0x%x, state:%ld\n", buf, 0x12u);
  }

LABEL_25:

  return v21;
}

- (int)getBiometryAvailability:(int64_t *)availability forUser:(unsigned int)user withClient:(id)client
{
  v25 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v8 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134218498;
    *v21 = availability;
    *&v21[8] = 1024;
    *&v21[10] = user;
    *&v21[14] = 2112;
    *&v21[16] = clientCopy;
    _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEBUG, "getBiometryAvailability:forUser:withClient: %p, %u, %@\n", &v20, 0x1Cu);
  }

  if (availability)
  {
    v10 = 3;
    if (user == 501)
    {
      v10 = 1;
    }

    *availability = v10;
    if (!clientCopy)
    {
      if (__osLogTrace)
      {
        v13 = __osLogTrace;
      }

      else
      {
        v13 = v8;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = *availability;
        v20 = 67109890;
        *v21 = user;
        *&v21[4] = 2112;
        *&v21[6] = 0;
        *&v21[14] = 1024;
        *&v21[16] = 0;
        *&v21[20] = 2048;
        *&v21[22] = v14;
        _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_DEBUG, "getBiometryAvailability:forUser:withClient: -, %u, %@ -> err:0x%x, availability:%ld\n", &v20, 0x22u);
      }

      v11 = 0;
      goto LABEL_25;
    }

    v11 = 0;
    goto LABEL_11;
  }

  if (__osLog)
  {
    v18 = __osLog;
  }

  else
  {
    v18 = v8;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v20 = 136316162;
    *v21 = "info";
    *&v21[8] = 2048;
    *&v21[10] = 0;
    *&v21[18] = 2080;
    *&v21[20] = &unk_223E5FC53;
    *&v21[28] = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v23 = 1024;
    v24 = 6474;
    _os_log_impl(&dword_223E00000, v18, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v20, 0x30u);
  }

  if (clientCopy)
  {
    v11 = 258;
LABEL_11:
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (availability)
      {
        v12 = *availability;
      }

      else
      {
        v12 = -1;
      }

      v20 = 67109890;
      *v21 = user;
      *&v21[4] = 2112;
      *&v21[6] = clientCopy;
      *&v21[14] = 1024;
      *&v21[16] = v11;
      *&v21[20] = 2048;
      *&v21[22] = v12;
      v15 = v8;
      v16 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v8;
  }

  v11 = 258;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = 67109890;
    *v21 = user;
    *&v21[4] = 2112;
    *&v21[6] = 0;
    *&v21[14] = 1024;
    *&v21[16] = 258;
    *&v21[20] = 2048;
    *&v21[22] = -1;
    v15 = v19;
    v16 = OS_LOG_TYPE_ERROR;
LABEL_24:
    _os_log_impl(&dword_223E00000, v15, v16, "getBiometryAvailability:forUser:withClient: -, %u, %@ -> err:0x%x, availability:%ld\n", &v20, 0x22u);
  }

LABEL_25:

  return v11;
}

- (BOOL)isXARTAvailableWithClient:(id)client
{
  v16 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v4 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = clientCopy;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_DEBUG, "isXARTAvailableWithClient: %@\n", &v10, 0xCu);
  }

  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = v4;
  }

  if (clientCopy)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412802;
      v11 = clientCopy;
      v12 = 1024;
      v13 = 1;
      v14 = 1024;
      v15 = 0;
      v7 = v6;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
      _os_log_impl(&dword_223E00000, v7, v8, "isXARTAvailableWithClient: %@ -> %d (err:0x%x)\n", &v10, 0x18u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412802;
    v11 = 0;
    v12 = 1024;
    v13 = 1;
    v14 = 1024;
    v15 = 0;
    v7 = v6;
    v8 = OS_LOG_TYPE_DEBUG;
    goto LABEL_14;
  }

  return 1;
}

- (int)getLastMatchEvent:(id *)event withClient:(id)client
{
  v17[4] = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218242;
    eventCopy = event;
    v15 = 2112;
    v16[0] = clientCopy;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "getLastMatchEvent:withClient: %p, %@\n", &v13, 0x16u);
  }

  if (event)
  {
    memset(v17, 0, 29);
    if (![(BiometricKitXPCServer *)self performGetLastMatchEventCommand:v17])
    {
      [(BiometricKitXPCServer *)self createMatchEventDictionary:v17];
      *event = v9 = 0;
      goto LABEL_9;
    }

    [BiometricKitXPCServer getLastMatchEvent:withClient:];
  }

  else
  {
    [BiometricKitXPCServer getLastMatchEvent:withClient:];
  }

  v9 = v13;
LABEL_9:
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v7;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (event)
    {
      v11 = *event;
    }

    else
    {
      v11 = 0;
    }

    v13 = 138412802;
    eventCopy = clientCopy;
    v15 = 1024;
    LODWORD(v16[0]) = v9;
    WORD2(v16[0]) = 2112;
    *(v16 + 6) = v11;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEFAULT, "getLastMatchEvent:withClient: %@ -> err:0x%x, event:%@\n", &v13, 0x1Cu);
  }

  return v9;
}

- (int)getDeviceHardwareState:(unsigned int *)state withClient:(id)client
{
  v18 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134218242;
    *v16 = state;
    *&v16[8] = 2112;
    v17 = clientCopy;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "getDeviceHardwareState:withClient: %p, %@\n", &v15, 0x16u);
  }

  if (state)
  {
    if (![(BiometricKitXPCServer *)self performGetDeviceHardwareStateCommand:state])
    {
      if (__osLogTrace)
      {
        v9 = __osLogTrace;
      }

      else
      {
        v9 = v7;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *state;
        v15 = 67109376;
        *v16 = 0;
        *&v16[4] = 1024;
        *&v16[6] = v10;
        _os_log_impl(&dword_223E00000, v9, OS_LOG_TYPE_DEBUG, "getDeviceHardwareState:withClient: -> err:0x%x, state:%d\n", &v15, 0xEu);
      }

      v11 = 0;
      goto LABEL_14;
    }

    [BiometricKitXPCServer getDeviceHardwareState:withClient:];
  }

  else
  {
    [BiometricKitXPCServer getDeviceHardwareState:withClient:];
  }

  v11 = v15;
  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v7;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    if (state)
    {
      v14 = *state;
    }

    else
    {
      v14 = -1;
    }

    v15 = 67109376;
    *v16 = v11;
    *&v16[4] = 1024;
    *&v16[6] = v14;
    _os_log_impl(&dword_223E00000, v13, OS_LOG_TYPE_ERROR, "getDeviceHardwareState:withClient: -> err:0x%x, state:%d\n", &v15, 0xEu);
  }

LABEL_14:

  return v11;
}

- (id)getProtectedConfigurationForUser:(unsigned int)user withClient:(id)client
{
  v4 = *&user;
  v39 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v7 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    *v35 = v4;
    *&v35[4] = 2112;
    *&v35[6] = clientCopy;
    _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_DEBUG, "getProtectedConfigurationForUser:withClient: %u, %@\n", buf, 0x12u);
  }

  [(BiometricKitXPCServer *)self validateAllUsers];
  v32 = 0;
  v33 = 0;
  v9 = [(BiometricKitXPCServer *)self performGetProtectedConfigCommand:v4 outSetCfg:&v33 outEffectiveCfg:&v32];
  v10 = v33;
  v11 = v32;
  if (!v9)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if (dictionary)
    {
      if ([v10 unlockEnabled] != -1)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "unlockEnabled") != 0}];
        [dictionary setObject:v13 forKeyedSubscript:@"BKUserCfgTouchIDUnlockEnabled"];
      }

      if ([v10 identificationEnabled] != -1)
      {
        v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "identificationEnabled") != 0}];
        [dictionary setObject:v14 forKeyedSubscript:@"BKUserCfgTouchIDIdentificationEnabled"];
      }

      if ([v10 loginEnabled] != -1)
      {
        v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "loginEnabled") != 0}];
        [dictionary setObject:v15 forKeyedSubscript:@"BKUserCfgTouchIDLoginEnabled"];
      }

      if ([v10 applePayEnabled] != -1)
      {
        v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "applePayEnabled") != 0}];
        [dictionary setObject:v16 forKeyedSubscript:@"BKUserCfgTouchIDApplePayEnabled"];
      }

      if ([v10 attentionDetectionEnabled] != -1)
      {
        v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "attentionDetectionEnabled") != 0}];
        [dictionary setObject:v17 forKeyedSubscript:@"BKUserCfgAttentionDetectionEnabled"];
      }

      if ([v10 periocularMatchEnabled] != -1)
      {
        v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "periocularMatchEnabled") != 0}];
        [dictionary setObject:v18 forKeyedSubscript:@"BKUserCfgPeriocularMatchEnabled"];
      }

      if ([v11 unlockEnabled] != -1)
      {
        v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "unlockEnabled") != 0}];
        [dictionary setObject:v19 forKeyedSubscript:@"BKUserCfgEffectiveTouchIDUnlockEnabled"];
      }

      if ([v11 identificationEnabled] != -1)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "identificationEnabled") != 0}];
        [dictionary setObject:v20 forKeyedSubscript:@"BKUserCfgEffectiveTouchIDIdentificationEnabled"];
      }

      if ([v11 loginEnabled] != -1)
      {
        v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "loginEnabled") != 0}];
        [dictionary setObject:v21 forKeyedSubscript:@"BKUserCfgEffectiveTouchIDLoginEnabled"];
      }

      if ([v11 applePayEnabled] != -1)
      {
        v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "applePayEnabled") != 0}];
        [dictionary setObject:v22 forKeyedSubscript:@"BKUserCfgEffectiveTouchIDApplePayEnabled"];
      }

      if ([v11 attentionDetectionEnabled] != -1)
      {
        v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "attentionDetectionEnabled") != 0}];
        [dictionary setObject:v23 forKeyedSubscript:@"BKUserCfgEffectiveAttentionDetectionEnabled"];
      }

      if ([v11 periocularMatchEnabled] != -1)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "periocularMatchEnabled") != 0}];
        [dictionary setObject:v24 forKeyedSubscript:@"BKUserCfgEffectivePeriocularMatchEnabled"];
      }

      if (clientCopy)
      {
        goto LABEL_33;
      }

LABEL_46:
      if (__osLogTrace)
      {
        v29 = __osLogTrace;
      }

      else
      {
        v29 = v7;
      }

      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_52;
      }

      *buf = 67109890;
      *v35 = v4;
      *&v35[4] = 2112;
      *&v35[6] = 0;
      *&v35[14] = 2112;
      *&v35[16] = dictionary;
      *&v35[24] = 1024;
      *&v35[26] = 0;
      v26 = v29;
      v27 = OS_LOG_TYPE_DEBUG;
LABEL_51:
      _os_log_impl(&dword_223E00000, v26, v27, "getProtectedConfigurationForUser:withClient: %u, %@ -> %@ (err:0x%x)\n", buf, 0x22u);
      goto LABEL_52;
    }

    [BiometricKitXPCServer getProtectedConfigurationForUser:withClient:];
    if (!clientCopy)
    {
      goto LABEL_46;
    }

LABEL_33:
    if (__osLogTrace)
    {
      v25 = __osLogTrace;
    }

    else
    {
      v25 = v7;
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_52;
    }

    *buf = 67109890;
    *v35 = v4;
    *&v35[4] = 2112;
    *&v35[6] = clientCopy;
    *&v35[14] = 2112;
    *&v35[16] = dictionary;
    *&v35[24] = 1024;
    *&v35[26] = v9;
    v26 = v25;
    v27 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_51;
  }

  if (__osLog)
  {
    v28 = __osLog;
  }

  else
  {
    v28 = v7;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *v35 = "err == 0 ";
    *&v35[8] = 2048;
    *&v35[10] = v9;
    *&v35[18] = 2080;
    *&v35[20] = &unk_223E5FC53;
    *&v35[28] = 2080;
    v36 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v37 = 1024;
    v38 = 6629;
    _os_log_impl(&dword_223E00000, v28, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

  if (clientCopy)
  {
    dictionary = 0;
    goto LABEL_33;
  }

  if (__osLogTrace)
  {
    v31 = __osLogTrace;
  }

  else
  {
    v31 = v7;
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    *v35 = v4;
    *&v35[4] = 2112;
    *&v35[6] = 0;
    *&v35[14] = 2112;
    *&v35[16] = 0;
    *&v35[24] = 1024;
    *&v35[26] = v9;
    _os_log_impl(&dword_223E00000, v31, OS_LOG_TYPE_ERROR, "getProtectedConfigurationForUser:withClient: %u, %@ -> %@ (err:0x%x)\n", buf, 0x22u);
  }

  dictionary = 0;
LABEL_52:

  return dictionary;
}

- (id)getSystemProtectedConfigurationWithClient:(id)client
{
  v27 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v5 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = clientCopy;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_DEBUG, "getSystemProtectedConfigurationWithClient: %@\n", buf, 0xCu);
  }

  v21 = 0;
  v7 = [(BiometricKitXPCServer *)self performGetSystemProtectedConfigCommand:&v21];
  v8 = v21;
  if (v7)
  {
    [BiometricKitXPCServer getSystemProtectedConfigurationWithClient:];
LABEL_34:
    v10 = *buf;
    goto LABEL_24;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (!dictionary)
  {
    [BiometricKitXPCServer getSystemProtectedConfigurationWithClient:];
    goto LABEL_34;
  }

  v10 = dictionary;
  if ([v8 biometryEnabled] != -1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "biometryEnabled") != 0}];
    [v10 setObject:v11 forKeyedSubscript:@"BKSysCfgTouchIDEnabled"];
  }

  if ([v8 unlockEnabled] != -1)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "unlockEnabled") != 0}];
    [v10 setObject:v12 forKeyedSubscript:@"BKSysCfgTouchIDUnlockEnabled"];
  }

  if ([v8 identificationEnabled] != -1)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "identificationEnabled") != 0}];
    [v10 setObject:v13 forKeyedSubscript:@"BKSysCfgTouchIDIdentificationEnabled"];
  }

  if ([v8 loginEnabled] != -1)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "loginEnabled") != 0}];
    [v10 setObject:v14 forKeyedSubscript:@"BKSysCfgTouchIDLoginEnabled"];
  }

  if (([v8 unlockTokenMaxLifetime] & 0x80000000) == 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "unlockTokenMaxLifetime")}];
    [v10 setObject:v15 forKeyedSubscript:@"BKSysCfgTouchIDUnlockTokenMaxLifetime"];
  }

  if (([v8 bioMatchLifespan] & 0x80000000) == 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "bioMatchLifespan")}];
    [v10 setObject:v16 forKeyedSubscript:@"BKSysCfgTouchIDBioMatchLifespan"];
  }

  if (([v8 passcodeInputLifespan] & 0x80000000) == 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "passcodeInputLifespan")}];
    [v10 setObject:v17 forKeyedSubscript:@"BKSysCfgTouchIDPasscodeInputLifespan"];
  }

  if (([v8 periocularMatchEnabled] & 0x80000000) == 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "periocularMatchEnabled")}];
    [v10 setObject:v18 forKeyedSubscript:@"BKSysCfgPeriocularMatchEnabled"];
  }

LABEL_24:
  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v5;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = clientCopy;
    v23 = 2112;
    v24 = v10;
    v25 = 1024;
    v26 = v7;
    _os_log_impl(&dword_223E00000, v19, OS_LOG_TYPE_DEFAULT, "getSystemProtectedConfigurationWithClient: %@ -> %@ (err:0x%x)\n", buf, 0x1Cu);
  }

  return v10;
}

- (int)setProtectedConfiguration:(id)configuration forUser:(unsigned int)user withOptions:(id)options withClient:(id)client
{
  v8 = *&user;
  v62 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  optionsCopy = options;
  clientCopy = client;
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v56 = configurationCopy;
    v57 = 1024;
    *v58 = v8;
    *&v58[4] = 2048;
    *&v58[6] = optionsCopy;
    *&v58[14] = 2112;
    *&v58[16] = clientCopy;
    _os_log_impl(&dword_223E00000, v12, OS_LOG_TYPE_DEBUG, "setProtectedConfiguration:forUser:withOptions:withClient: %@, %u, %p, %@\n", buf, 0x26u);
  }

  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v52 = clientCopy;
  if (isEphemeralMultiUser())
  {
    v37 = MEMORY[0x277D86220];
    if (__osLog)
    {
      v39 = __osLog;
    }

    else
    {
      v39 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v56 = "!isEphemeralMultiUser()";
      v57 = 2048;
      *v58 = 0;
      *&v58[8] = 2080;
      *&v58[10] = &unk_223E5FC53;
      *&v58[18] = 2080;
      *&v58[20] = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      *&v58[28] = 1024;
      v59 = 6759;
      _os_log_impl(&dword_223E00000, v39, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v27 = 0;
    v15 = 0;
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v50 = 0;
    v51 = 0;
    v26 = 257;
  }

  else
  {
    v13 = [(BiometricKitXPCServer *)self isValidUser:v8];
    if (v13)
    {
      v26 = v13;
      v37 = MEMORY[0x277D86220];
      if (__osLog)
      {
        v40 = __osLog;
      }

      else
      {
        v40 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v56 = "err == 0 ";
        v57 = 2048;
        *v58 = v26;
        *&v58[8] = 2080;
        *&v58[10] = &unk_223E5FC53;
        *&v58[18] = 2080;
        *&v58[20] = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        *&v58[28] = 1024;
        v59 = 6763;
        _os_log_impl(&dword_223E00000, v40, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v27 = 0;
      v15 = 0;
      v23 = 0;
      v22 = 0;
      v21 = 0;
      v20 = 0;
      v50 = 0;
      v51 = 0;
    }

    else
    {
      v14 = objc_alloc_init(UserProtectedConfig);
      if (v14)
      {
        v15 = v14;
        v16 = [configurationCopy objectForKeyedSubscript:@"BKUserCfgTouchIDUnlockEnabled"];
        v51 = v16;
        if (v16)
        {
          v17 = v16;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v37 = MEMORY[0x277D86220];
            if (__osLog)
            {
              v44 = __osLog;
            }

            else
            {
              v44 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v56 = "[enabledForUnlock isKindOfClass:[NSNumber class]]";
              v57 = 2048;
              *v58 = 0;
              *&v58[8] = 2080;
              *&v58[10] = &unk_223E5FC53;
              *&v58[18] = 2080;
              *&v58[20] = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
              *&v58[28] = 1024;
              v59 = 6771;
              _os_log_impl(&dword_223E00000, v44, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
            }

            v27 = 0;
            v23 = 0;
            v22 = 0;
            v21 = 0;
            v20 = 0;
            v50 = 0;
            goto LABEL_133;
          }

          -[UserProtectedConfig setUnlockEnabled:](v15, "setUnlockEnabled:", [v17 BOOLValue]);
        }

        v18 = [configurationCopy objectForKeyedSubscript:@"BKUserCfgTouchIDIdentificationEnabled"];
        v50 = v18;
        if (v18)
        {
          v19 = v18;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v37 = MEMORY[0x277D86220];
            if (__osLog)
            {
              v45 = __osLog;
            }

            else
            {
              v45 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v56 = "[enabledForIdentification isKindOfClass:[NSNumber class]]";
              v57 = 2048;
              *v58 = 0;
              *&v58[8] = 2080;
              *&v58[10] = &unk_223E5FC53;
              *&v58[18] = 2080;
              *&v58[20] = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
              *&v58[28] = 1024;
              v59 = 6778;
              _os_log_impl(&dword_223E00000, v45, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
            }

            v27 = 0;
            v23 = 0;
            v22 = 0;
            v21 = 0;
            v20 = 0;
            goto LABEL_133;
          }

          -[UserProtectedConfig setIdentificationEnabled:](v15, "setIdentificationEnabled:", [v19 BOOLValue]);
        }

        v20 = [configurationCopy objectForKeyedSubscript:@"BKUserCfgTouchIDLoginEnabled"];
        if (v20)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v37 = MEMORY[0x277D86220];
            if (__osLog)
            {
              v46 = __osLog;
            }

            else
            {
              v46 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v56 = "[enabledForLogin isKindOfClass:[NSNumber class]]";
              v57 = 2048;
              *v58 = 0;
              *&v58[8] = 2080;
              *&v58[10] = &unk_223E5FC53;
              *&v58[18] = 2080;
              *&v58[20] = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
              *&v58[28] = 1024;
              v59 = 6785;
              _os_log_impl(&dword_223E00000, v46, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
            }

            v27 = 0;
            v23 = 0;
            v22 = 0;
            v21 = 0;
            goto LABEL_133;
          }

          -[UserProtectedConfig setLoginEnabled:](v15, "setLoginEnabled:", [v20 BOOLValue]);
        }

        v21 = [configurationCopy objectForKeyedSubscript:@"BKUserCfgTouchIDApplePayEnabled"];
        if (v21)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v37 = MEMORY[0x277D86220];
            if (__osLog)
            {
              v47 = __osLog;
            }

            else
            {
              v47 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v56 = "[enabledForApplePay isKindOfClass:[NSNumber class]]";
              v57 = 2048;
              *v58 = 0;
              *&v58[8] = 2080;
              *&v58[10] = &unk_223E5FC53;
              *&v58[18] = 2080;
              *&v58[20] = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
              *&v58[28] = 1024;
              v59 = 6792;
              _os_log_impl(&dword_223E00000, v47, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
            }

            v27 = 0;
            v23 = 0;
            v22 = 0;
            goto LABEL_133;
          }

          -[UserProtectedConfig setApplePayEnabled:](v15, "setApplePayEnabled:", [v21 BOOLValue]);
        }

        v22 = [configurationCopy objectForKeyedSubscript:@"BKUserCfgAttentionDetectionEnabled"];
        if (!v22)
        {
LABEL_24:
          v23 = [configurationCopy objectForKeyedSubscript:@"BKUserCfgPeriocularMatchEnabled"];
          if (!v23)
          {
            goto LABEL_27;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[UserProtectedConfig setPeriocularMatchEnabled:](v15, "setPeriocularMatchEnabled:", [v23 BOOLValue]);
LABEL_27:
            v24 = [(BiometricKitXPCServer *)self parseAuthDict:optionsCopy toAuthData:v60];
            if (v24)
            {
              v26 = v24;
              v37 = MEMORY[0x277D86220];
              if (__osLog)
              {
                v42 = __osLog;
              }

              else
              {
                v42 = MEMORY[0x277D86220];
              }

              if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_80;
              }

              *buf = 136316162;
              v56 = "err == 0 ";
              v57 = 2048;
              *v58 = v26;
              *&v58[8] = 2080;
              *&v58[10] = &unk_223E5FC53;
              *&v58[18] = 2080;
              *&v58[20] = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
              *&v58[28] = 1024;
              v59 = 6813;
            }

            else
            {
              v25 = [(BiometricKitXPCServer *)self checkCatacombForUser:v8];
              if (!v25)
              {
                v54 = 0;
                v26 = [(BiometricKitXPCServer *)self performGetProtectedConfigCommand:v8 outSetCfg:&v54 outEffectiveCfg:0];
                v27 = v54;
                if (v26)
                {
                  if (__osLog)
                  {
                    v43 = __osLog;
                  }

                  else
                  {
                    v43 = MEMORY[0x277D86220];
                  }

                  if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_45;
                  }

                  *buf = 136316162;
                  v56 = "err == 0 ";
                  v57 = 2048;
                  *v58 = v26;
                  *&v58[8] = 2080;
                  *&v58[10] = &unk_223E5FC53;
                  *&v58[18] = 2080;
                  *&v58[20] = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
                  *&v58[28] = 1024;
                  v59 = 6821;
                }

                else
                {
                  v28 = [(BiometricKitXPCServer *)self performSetProtectedConfigCommand:v8 cfg:v15 authData:v60];
                  if (v28)
                  {
                    v26 = v28;
                    if (__osLog)
                    {
                      v43 = __osLog;
                    }

                    else
                    {
                      v43 = MEMORY[0x277D86220];
                    }

                    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_45;
                    }

                    *buf = 136316162;
                    v56 = "err == 0 ";
                    v57 = 2048;
                    *v58 = v26;
                    *&v58[8] = 2080;
                    *&v58[10] = &unk_223E5FC53;
                    *&v58[18] = 2080;
                    *&v58[20] = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
                    *&v58[28] = 1024;
                    v59 = 6825;
                  }

                  else
                  {
                    if ((-[UserProtectedConfig unlockEnabled](v15, "unlockEnabled") == -1 || (v29 = -[UserProtectedConfig unlockEnabled](v15, "unlockEnabled"), v29 == [v27 unlockEnabled])) && (-[UserProtectedConfig identificationEnabled](v15, "identificationEnabled") == -1 || (v30 = -[UserProtectedConfig identificationEnabled](v15, "identificationEnabled"), v30 == objc_msgSend(v27, "identificationEnabled"))) && (-[UserProtectedConfig loginEnabled](v15, "loginEnabled") == -1 || (v31 = -[UserProtectedConfig loginEnabled](v15, "loginEnabled"), v31 == objc_msgSend(v27, "loginEnabled"))) && (-[UserProtectedConfig applePayEnabled](v15, "applePayEnabled") == -1 || (v32 = -[UserProtectedConfig applePayEnabled](v15, "applePayEnabled"), v32 == objc_msgSend(v27, "applePayEnabled"))) && (-[UserProtectedConfig attentionDetectionEnabled](v15, "attentionDetectionEnabled") == -1 || (v33 = -[UserProtectedConfig attentionDetectionEnabled](v15, "attentionDetectionEnabled"), v33 == objc_msgSend(v27, "attentionDetectionEnabled"))) && (-[UserProtectedConfig periocularMatchEnabled](v15, "periocularMatchEnabled") == -1 || (v34 = -[UserProtectedConfig periocularMatchEnabled](v15, "periocularMatchEnabled"), v34 == objc_msgSend(v27, "periocularMatchEnabled"))) || (v35 = -[BiometricKitXPCServer saveCatacomb](self, "saveCatacomb")) == 0)
                    {
                      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
                      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.BiometricKit.userProtectedConfigUpdated", 0, 0, 1u);
                      [(BiometricKitXPCServer *)self updateExpressModeState];
                      v26 = 0;
LABEL_45:
                      v37 = MEMORY[0x277D86220];
                      goto LABEL_46;
                    }

                    v26 = v35;
                    if (__osLog)
                    {
                      v43 = __osLog;
                    }

                    else
                    {
                      v43 = MEMORY[0x277D86220];
                    }

                    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_45;
                    }

                    *buf = 136316162;
                    v56 = "err == 0 ";
                    v57 = 2048;
                    *v58 = v26;
                    *&v58[8] = 2080;
                    *&v58[10] = &unk_223E5FC53;
                    *&v58[18] = 2080;
                    *&v58[20] = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
                    *&v58[28] = 1024;
                    v59 = 6840;
                  }
                }

                _os_log_impl(&dword_223E00000, v43, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                goto LABEL_45;
              }

              v26 = v25;
              v37 = MEMORY[0x277D86220];
              if (__osLog)
              {
                v42 = __osLog;
              }

              else
              {
                v42 = MEMORY[0x277D86220];
              }

              if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_80;
              }

              *buf = 136316162;
              v56 = "err == 0 ";
              v57 = 2048;
              *v58 = v26;
              *&v58[8] = 2080;
              *&v58[10] = &unk_223E5FC53;
              *&v58[18] = 2080;
              *&v58[20] = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
              *&v58[28] = 1024;
              v59 = 6817;
            }

            _os_log_impl(&dword_223E00000, v42, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_80:
            v27 = 0;
            goto LABEL_46;
          }

          v37 = MEMORY[0x277D86220];
          if (__osLog)
          {
            v49 = __osLog;
          }

          else
          {
            v49 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v56 = "[enabledForPeriocularMatch isKindOfClass:[NSNumber class]]";
            v57 = 2048;
            *v58 = 0;
            *&v58[8] = 2080;
            *&v58[10] = &unk_223E5FC53;
            *&v58[18] = 2080;
            *&v58[20] = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
            *&v58[28] = 1024;
            v59 = 6807;
            _os_log_impl(&dword_223E00000, v49, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          }

          v27 = 0;
          goto LABEL_133;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          -[UserProtectedConfig setAttentionDetectionEnabled:](v15, "setAttentionDetectionEnabled:", [v22 BOOLValue]);
          goto LABEL_24;
        }

        v37 = MEMORY[0x277D86220];
        if (__osLog)
        {
          v48 = __osLog;
        }

        else
        {
          v48 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v56 = "[enabledForAttentionDetection isKindOfClass:[NSNumber class]]";
          v57 = 2048;
          *v58 = 0;
          *&v58[8] = 2080;
          *&v58[10] = &unk_223E5FC53;
          *&v58[18] = 2080;
          *&v58[20] = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
          *&v58[28] = 1024;
          v59 = 6799;
          _os_log_impl(&dword_223E00000, v48, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v27 = 0;
        v23 = 0;
LABEL_133:
        v26 = 258;
        goto LABEL_46;
      }

      v37 = MEMORY[0x277D86220];
      if (__osLog)
      {
        v41 = __osLog;
      }

      else
      {
        v41 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v56 = "cfg";
        v57 = 2048;
        *v58 = 0;
        *&v58[8] = 2080;
        *&v58[10] = &unk_223E5FC53;
        *&v58[18] = 2080;
        *&v58[20] = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        *&v58[28] = 1024;
        v59 = 6766;
        _os_log_impl(&dword_223E00000, v41, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v27 = 0;
      v15 = 0;
      v23 = 0;
      v22 = 0;
      v21 = 0;
      v20 = 0;
      v50 = 0;
      v51 = 0;
      v26 = 261;
    }
  }

LABEL_46:
  if (__osLogTrace)
  {
    v37 = __osLogTrace;
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v56 = configurationCopy;
    v57 = 1024;
    *v58 = v8;
    *&v58[4] = 2048;
    *&v58[6] = optionsCopy;
    *&v58[14] = 2112;
    *&v58[16] = v52;
    *&v58[24] = 1024;
    *&v58[26] = v26;
    _os_log_impl(&dword_223E00000, v37, OS_LOG_TYPE_DEFAULT, "setProtectedConfiguration:forUser:withOptions:withClient: %@, %u, %p, %@ -> err:0x%x\n", buf, 0x2Cu);
  }

  return v26;
}

- (int)setSystemProtectedConfiguration:(id)configuration withOptions:(id)options withClient:(id)client
{
  v76 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  optionsCopy = options;
  clientCopy = client;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v65 = configurationCopy;
    v66 = 2048;
    v67 = optionsCopy;
    v68 = 2112;
    v69 = clientCopy;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEBUG, "setSystemProtectedConfiguration:withOptions:withClient: %@, %p, %@\n", buf, 0x20u);
  }

  v75 = 0;
  memset(v74, 0, sizeof(v74));
  v61 = clientCopy;
  v62 = optionsCopy;
  if (isEphemeralMultiUser())
  {
    if (__osLog)
    {
      v46 = __osLog;
    }

    else
    {
      v46 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *buf = 136316162;
    v65 = "!isEphemeralMultiUser()";
    v66 = 2048;
    v67 = 0;
    v68 = 2080;
    v69 = &unk_223E5FC53;
    v70 = 2080;
    v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v72 = 1024;
    v73 = 6883;
    goto LABEL_86;
  }

  if (!configurationCopy)
  {
    if (__osLog)
    {
      v47 = __osLog;
    }

    else
    {
      v47 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v65 = "configuration";
      v66 = 2048;
      v67 = 0;
      v68 = 2080;
      v69 = &unk_223E5FC53;
      v70 = 2080;
      v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v72 = 1024;
      v73 = 6884;
      _os_log_impl(&dword_223E00000, v47, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v30 = 0;
    v16 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    goto LABEL_158;
  }

  exportedObject = [clientCopy exportedObject];
  connection = [exportedObject connection];
  effectiveUserIdentifier = [connection effectiveUserIdentifier];

  if (effectiveUserIdentifier)
  {
    if (__osLog)
    {
      v46 = __osLog;
    }

    else
    {
      v46 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *buf = 136316162;
    v65 = "userid == 0";
    v66 = 2048;
    v67 = 0;
    v68 = 2080;
    v69 = &unk_223E5FC53;
    v70 = 2080;
    v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v72 = 1024;
    v73 = 6887;
LABEL_86:
    _os_log_impl(&dword_223E00000, v46, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_87:
    v30 = 0;
    v16 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v29 = 257;
    goto LABEL_64;
  }

  v15 = objc_alloc_init(SystemProtectedConfig);
  if (!v15)
  {
    if (__osLog)
    {
      v48 = __osLog;
    }

    else
    {
      v48 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v65 = "cfg";
      v66 = 2048;
      v67 = 0;
      v68 = 2080;
      v69 = &unk_223E5FC53;
      v70 = 2080;
      v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v72 = 1024;
      v73 = 6890;
      _os_log_impl(&dword_223E00000, v48, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v30 = 0;
    v16 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v29 = 261;
    goto LABEL_64;
  }

  v16 = v15;
  v17 = [configurationCopy objectForKeyedSubscript:@"BKSysCfgTouchIDEnabled"];
  v60 = v17;
  if (v17)
  {
    v18 = v17;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v50 = __osLog;
      }

      else
      {
        v50 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v65 = "[enabledBiometry isKindOfClass:[NSNumber class]]";
        v66 = 2048;
        v67 = 0;
        v68 = 2080;
        v69 = &unk_223E5FC53;
        v70 = 2080;
        v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v72 = 1024;
        v73 = 6895;
        _os_log_impl(&dword_223E00000, v50, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v30 = 0;
      v27 = 0;
      v26 = 0;
      v25 = 0;
      v24 = 0;
      v23 = 0;
      v58 = 0;
      v59 = 0;
      goto LABEL_158;
    }

    -[SystemProtectedConfig setBiometryEnabled:](v16, "setBiometryEnabled:", [v18 BOOLValue]);
  }

  v19 = [configurationCopy objectForKeyedSubscript:@"BKSysCfgTouchIDUnlockEnabled"];
  v59 = v19;
  if (v19)
  {
    v20 = v19;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v51 = __osLog;
      }

      else
      {
        v51 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v65 = "[enabledForUnlock isKindOfClass:[NSNumber class]]";
        v66 = 2048;
        v67 = 0;
        v68 = 2080;
        v69 = &unk_223E5FC53;
        v70 = 2080;
        v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v72 = 1024;
        v73 = 6902;
        _os_log_impl(&dword_223E00000, v51, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v30 = 0;
      v27 = 0;
      v26 = 0;
      v25 = 0;
      v24 = 0;
      v23 = 0;
      v58 = 0;
      goto LABEL_158;
    }

    -[SystemProtectedConfig setUnlockEnabled:](v16, "setUnlockEnabled:", [v20 BOOLValue]);
  }

  v21 = [configurationCopy objectForKeyedSubscript:@"BKSysCfgTouchIDIdentificationEnabled"];
  v58 = v21;
  if (v21)
  {
    v22 = v21;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v52 = __osLog;
      }

      else
      {
        v52 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v65 = "[enabledForIdentification isKindOfClass:[NSNumber class]]";
        v66 = 2048;
        v67 = 0;
        v68 = 2080;
        v69 = &unk_223E5FC53;
        v70 = 2080;
        v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v72 = 1024;
        v73 = 6909;
        _os_log_impl(&dword_223E00000, v52, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v30 = 0;
      v27 = 0;
      v26 = 0;
      v25 = 0;
      v24 = 0;
      v23 = 0;
      goto LABEL_158;
    }

    -[SystemProtectedConfig setIdentificationEnabled:](v16, "setIdentificationEnabled:", [v22 BOOLValue]);
  }

  v23 = [configurationCopy objectForKeyedSubscript:{@"BKSysCfgTouchIDLoginEnabled", v58}];
  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v53 = __osLog;
      }

      else
      {
        v53 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v65 = "[enabledForLogin isKindOfClass:[NSNumber class]]";
        v66 = 2048;
        v67 = 0;
        v68 = 2080;
        v69 = &unk_223E5FC53;
        v70 = 2080;
        v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v72 = 1024;
        v73 = 6916;
        _os_log_impl(&dword_223E00000, v53, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v30 = 0;
      v27 = 0;
      v26 = 0;
      v25 = 0;
      v24 = 0;
      goto LABEL_158;
    }

    -[SystemProtectedConfig setLoginEnabled:](v16, "setLoginEnabled:", [v23 BOOLValue]);
  }

  v24 = [configurationCopy objectForKeyedSubscript:@"BKSysCfgTouchIDUnlockTokenMaxLifetime"];
  if (v24)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v54 = __osLog;
      }

      else
      {
        v54 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v65 = "[bioTokenLifespan isKindOfClass:[NSNumber class]]";
        v66 = 2048;
        v67 = 0;
        v68 = 2080;
        v69 = &unk_223E5FC53;
        v70 = 2080;
        v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v72 = 1024;
        v73 = 6922;
        _os_log_impl(&dword_223E00000, v54, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v30 = 0;
      v27 = 0;
      v26 = 0;
      v25 = 0;
      goto LABEL_158;
    }

    -[SystemProtectedConfig setUnlockTokenMaxLifetime:](v16, "setUnlockTokenMaxLifetime:", [v24 intValue]);
  }

  v25 = [configurationCopy objectForKeyedSubscript:@"BKSysCfgTouchIDBioMatchLifespan"];
  if (v25)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v55 = __osLog;
      }

      else
      {
        v55 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v65 = "[bioMatchLifespan isKindOfClass:[NSNumber class]]";
        v66 = 2048;
        v67 = 0;
        v68 = 2080;
        v69 = &unk_223E5FC53;
        v70 = 2080;
        v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v72 = 1024;
        v73 = 6928;
        _os_log_impl(&dword_223E00000, v55, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v30 = 0;
      v27 = 0;
      v26 = 0;
      goto LABEL_158;
    }

    -[SystemProtectedConfig setBioMatchLifespan:](v16, "setBioMatchLifespan:", [v25 intValue]);
  }

  v26 = [configurationCopy objectForKeyedSubscript:@"BKSysCfgTouchIDPasscodeInputLifespan"];
  if (v26)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (__osLog)
      {
        v56 = __osLog;
      }

      else
      {
        v56 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v65 = "[passcodeInputLifespan isKindOfClass:[NSNumber class]]";
        v66 = 2048;
        v67 = 0;
        v68 = 2080;
        v69 = &unk_223E5FC53;
        v70 = 2080;
        v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v72 = 1024;
        v73 = 6934;
        _os_log_impl(&dword_223E00000, v56, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v30 = 0;
      v27 = 0;
      goto LABEL_158;
    }

    -[SystemProtectedConfig setPasscodeInputLifespan:](v16, "setPasscodeInputLifespan:", [v26 intValue]);
  }

  v27 = [configurationCopy objectForKeyedSubscript:@"BKSysCfgPeriocularMatchEnabled"];
  if (!v27)
  {
    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (__osLog)
    {
      v57 = __osLog;
    }

    else
    {
      v57 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v65 = "[enabledForPeriocularMatch isKindOfClass:[NSNumber class]]";
      v66 = 2048;
      v67 = 0;
      v68 = 2080;
      v69 = &unk_223E5FC53;
      v70 = 2080;
      v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v72 = 1024;
      v73 = 6942;
      _os_log_impl(&dword_223E00000, v57, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v30 = 0;
LABEL_158:
    v29 = 258;
    goto LABEL_64;
  }

  -[SystemProtectedConfig setPeriocularMatchEnabled:](v16, "setPeriocularMatchEnabled:", [v27 BOOLValue]);
LABEL_34:
  v28 = [(BiometricKitXPCServer *)self parseAuthDict:optionsCopy toAuthData:v74];
  if (v28)
  {
    v29 = v28;
    if (__osLog)
    {
      v49 = __osLog;
    }

    else
    {
      v49 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v65 = "err == 0 ";
      v66 = 2048;
      v67 = v29;
      v68 = 2080;
      v69 = &unk_223E5FC53;
      v70 = 2080;
      v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
      v72 = 1024;
      v73 = 6948;
      _os_log_impl(&dword_223E00000, v49, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v30 = 0;
    goto LABEL_64;
  }

  v63 = 0;
  v29 = [(BiometricKitXPCServer *)self performGetSystemProtectedConfigCommand:&v63];
  v30 = v63;
  if (!v29)
  {
    v31 = [(BiometricKitXPCServer *)self performSetSystemProtectedConfigCommand:v16 authData:v74];
    if (v31)
    {
      v29 = v31;
      if (__osLog)
      {
        v41 = __osLog;
      }

      else
      {
        v41 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v65 = "err == 0 ";
        v66 = 2048;
        v67 = v29;
        v68 = 2080;
        v69 = &unk_223E5FC53;
        v70 = 2080;
        v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
        v72 = 1024;
        v73 = 6956;
        goto LABEL_59;
      }

      goto LABEL_64;
    }

    if (-[SystemProtectedConfig biometryEnabled](v16, "biometryEnabled") != -1 && (v32 = -[SystemProtectedConfig biometryEnabled](v16, "biometryEnabled"), v32 != [v30 biometryEnabled]) || -[SystemProtectedConfig unlockEnabled](v16, "unlockEnabled") != -1 && (v33 = -[SystemProtectedConfig unlockEnabled](v16, "unlockEnabled"), v33 != objc_msgSend(v30, "unlockEnabled")) || -[SystemProtectedConfig identificationEnabled](v16, "identificationEnabled") != -1 && (v34 = -[SystemProtectedConfig identificationEnabled](v16, "identificationEnabled"), v34 != objc_msgSend(v30, "identificationEnabled")) || -[SystemProtectedConfig loginEnabled](v16, "loginEnabled") != -1 && (v35 = -[SystemProtectedConfig loginEnabled](v16, "loginEnabled"), v35 != objc_msgSend(v30, "loginEnabled")) || -[SystemProtectedConfig unlockTokenMaxLifetime](v16, "unlockTokenMaxLifetime") != -1 && (v36 = -[SystemProtectedConfig unlockTokenMaxLifetime](v16, "unlockTokenMaxLifetime"), v36 != objc_msgSend(v30, "unlockTokenMaxLifetime")) || -[SystemProtectedConfig bioMatchLifespan](v16, "bioMatchLifespan") != -1 && (v37 = -[SystemProtectedConfig bioMatchLifespan](v16, "bioMatchLifespan"), v37 != objc_msgSend(v30, "bioMatchLifespan")) || -[SystemProtectedConfig passcodeInputLifespan](v16, "passcodeInputLifespan") != -1 && (v38 = -[SystemProtectedConfig passcodeInputLifespan](v16, "passcodeInputLifespan"), v38 != objc_msgSend(v30, "passcodeInputLifespan")) || -[SystemProtectedConfig periocularMatchEnabled](v16, "periocularMatchEnabled") != -1 && (v39 = -[SystemProtectedConfig periocularMatchEnabled](v16, "periocularMatchEnabled"), v39 != objc_msgSend(v30, "periocularMatchEnabled")))
    {
      saveCatacomb = [(BiometricKitXPCServer *)self saveCatacomb];
      if (saveCatacomb)
      {
        v29 = saveCatacomb;
        if (__osLog)
        {
          v41 = __osLog;
        }

        else
        {
          v41 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v65 = "err == 0 ";
          v66 = 2048;
          v67 = v29;
          v68 = 2080;
          v69 = &unk_223E5FC53;
          v70 = 2080;
          v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
          v72 = 1024;
          v73 = 6990;
LABEL_59:
          _os_log_impl(&dword_223E00000, v41, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          goto LABEL_64;
        }

        goto LABEL_64;
      }

      if (![(SystemProtectedConfig *)v16 biometryEnabled])
      {
        biometryEnabled = [(SystemProtectedConfig *)v16 biometryEnabled];
        if (biometryEnabled != [v30 biometryEnabled])
        {
          [(BiometricKitXPCServer *)self syncTemplateListForUser:0xFFFFFFFFLL];
          [(BiometricKitXPCServer *)self deleteUnusedCatacombFiles];
        }
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.BiometricKit.systemProtectedConfigUpdated", 0, 0, 1u);
    [(BiometricKitXPCServer *)self updateExpressModeState];
    v29 = 0;
    goto LABEL_64;
  }

  if (__osLog)
  {
    v41 = __osLog;
  }

  else
  {
    v41 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v65 = "err == 0 ";
    v66 = 2048;
    v67 = v29;
    v68 = 2080;
    v69 = &unk_223E5FC53;
    v70 = 2080;
    v71 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/BiometricSupport/biometrickitd/BiometricKitXPCServer.m";
    v72 = 1024;
    v73 = 6952;
    goto LABEL_59;
  }

LABEL_64:
  if (__osLogTrace)
  {
    v44 = __osLogTrace;
  }

  else
  {
    v44 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v65 = configurationCopy;
    v66 = 2048;
    v67 = v62;
    v68 = 2112;
    v69 = v61;
    v70 = 1024;
    LODWORD(v71) = v29;
    _os_log_impl(&dword_223E00000, v44, OS_LOG_TYPE_DEFAULT, "setSystemProtectedConfiguration:withOptions:withClient: %@, %p, %@ -> err:0x%x\n", buf, 0x26u);
  }

  return v29;
}

- (void)doSharedMemoryTransfers
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_35(268);
}

- (void)handleSharedMemoryTransfer:(unsigned int)transfer withHeader:(id)header data:(id)data
{
  if (__osLog)
  {
    v5 = __osLog;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_223E00000, v5, OS_LOG_TYPE_ERROR, "handleSharedMemoryTransfer must be overriden in subclass to do shared memory transfers!\n", v6, 2u);
  }
}

- (void)setGracePeriod:(unint64_t)period
{
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__BiometricKitXPCServer_setGracePeriod___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = period;
  dispatch_async(v4, block);
}

void __40__BiometricKitXPCServer_setGracePeriod___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (__osLog)
  {
    v2 = __osLog;
  }

  else
  {
    v2 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_223E00000, v2, OS_LOG_TYPE_DEBUG, "setGracePeriod\n", v6, 2u);
  }

  v7 = @"GracePeriod";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  if (MKBDeviceSetGracePeriod())
  {
    __40__BiometricKitXPCServer_setGracePeriod___block_invoke_cold_1();
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.BiometricKit.passcodeGracePeriodChanged", 0, 0, 1u);
  }
}

- (void)serviceStatus:(unsigned int)status type:(unsigned int)type inValue:(void *)value
{
  v38 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v9 = MEMORY[0x277D86220];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    *&buf[4] = status;
    v23 = 1024;
    *v24 = type;
    *&v24[4] = 1024;
    *&v24[6] = value;
    _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_DEBUG, "serviceStatus:type:inValue: %u, 0x%x, 0x%x\n", buf, 0x14u);
  }

  v20 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v11 = MCDMExtractMessageData(&typeCopy, &v20, value, &v19, &v17, &v18, &v16);
  v12 = v11;
  if (v17)
  {
    if (value && v11)
    {
      v13 = [BiometricKitXPCServer performRequestMessageDataCommand:"performRequestMessageDataCommand:size:outData:" size:v11 outData:?];
      v14 = 0;
      if (v13)
      {
        [BiometricKitXPCServer serviceStatus:type:inValue:];
LABEL_21:
        v14 = *buf;
        goto LABEL_19;
      }
    }

    else
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:?];
    }
  }

  else
  {
    v14 = 0;
  }

  if (__osLog)
  {
    v15 = __osLog;
  }

  else
  {
    v15 = v9;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67111170;
    *&buf[4] = typeCopy;
    v23 = 2048;
    *v24 = v12;
    *&v24[8] = 1024;
    v25 = v20;
    v26 = 2048;
    v27 = v19;
    v28 = 2048;
    v29 = v17;
    v30 = 2112;
    v31 = v14;
    v32 = 2048;
    v33 = v18;
    v34 = 2048;
    v35 = v18;
    v36 = 2048;
    v37 = v16;
    _os_log_impl(&dword_223E00000, v15, OS_LOG_TYPE_DEBUG, "serviceStatus:type:inValue: MCDMExtractMessageData: %u, %llu, %u, %p, %zu, %@, %llu(0x%llx), %llu\n", buf, 0x54u);
  }

  if ([(BiometricKitXPCServer *)self serviceStatus:typeCopy version:v20 ordinal:v18 data:v14 timestamp:v16])
  {
    [BiometricKitXPCServer serviceStatus:type:inValue:];
    goto LABEL_21;
  }

LABEL_19:
}

- (int)serviceStatus:(unsigned int)status version:(unsigned int)version ordinal:(unint64_t)ordinal data:(id)data timestamp:(unint64_t)timestamp
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v13 = MEMORY[0x277D86220];
  if (__osLog)
  {
    v14 = __osLog;
  }

  else
  {
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v18 = 67110146;
    statusCopy2 = status;
    v20 = 1024;
    versionCopy = version;
    v22 = 2048;
    ordinalCopy = ordinal;
    v24 = 2112;
    v25 = dataCopy;
    v26 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&dword_223E00000, v14, OS_LOG_TYPE_DEBUG, "serviceStatus:version:ordinal:data:timestamp: 0x%x, 0x%x, 0x%llx, %@, %llu\n", &v18, 0x2Cu);
  }

  v15 = 0;
  if (status > -469794561)
  {
    if (status == -469794560 || status == -469794304)
    {
      goto LABEL_24;
    }

    if (status == -469793536)
    {
      if (version == 1)
      {
        if (([(CatacombStateCache *)self->_catacombStateCache sendAutoBugCaptureEvent:ordinal]& 1) != 0)
        {
          goto LABEL_17;
        }

        [BiometricKitXPCServer serviceStatus:version:ordinal:data:timestamp:];
      }

      else
      {
        [BiometricKitXPCServer serviceStatus:version:ordinal:data:timestamp:];
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (status == -536870384 || status == -536870352)
    {
      goto LABEL_24;
    }

    if (status == -469794815)
    {
      if (version == 1)
      {
        [(BiometricKitXPCServer *)self statusMessage:ordinal withData:dataCopy timestamp:timestamp];
LABEL_17:
        v15 = 0;
        goto LABEL_24;
      }

      [BiometricKitXPCServer serviceStatus:version:ordinal:data:timestamp:];
LABEL_28:
      v15 = v18;
      goto LABEL_24;
    }
  }

  if (__osLog)
  {
    v16 = __osLog;
  }

  else
  {
    v16 = v13;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v18 = 67109120;
    statusCopy2 = status;
    _os_log_impl(&dword_223E00000, v16, OS_LOG_TYPE_ERROR, "serviceStatus: Unknown message type: 0x%x\n", &v18, 8u);
  }

  v15 = 263;
LABEL_24:

  return v15;
}

- (id)getUserKeybagUUIDForUID:(unsigned int)d
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D86220];
  v5 = OUTLINED_FUNCTION_34(__osLogTrace);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_52();
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "getUserKeybagUUIDForUID: %u\n", v17, 8u);
  }

  v21[0] = 0;
  v21[1] = 0;
  bag_uuid = aks_get_bag_uuid();
  if (bag_uuid != -536870160)
  {
    if (!bag_uuid)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v21];
      goto LABEL_6;
    }

    if (__osLog)
    {
      v9 = __osLog;
    }

    else
    {
      v9 = v4;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17[0] = 136316162;
      OUTLINED_FUNCTION_6_0();
      v18 = v10;
      OUTLINED_FUNCTION_26();
      v19 = &unk_223E5FC53;
      OUTLINED_FUNCTION_1();
      v20 = 5833;
      OUTLINED_FUNCTION_7_1(&dword_223E00000, v11, v12, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v13, v14, v15, v16);
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)getIdentitiesDatabaseUUIDForUser:(unsigned int)user withClient:(id)client
{
  v5 = *&user;
  v34 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (OUTLINED_FUNCTION_56(__osLogTrace))
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_54(&dword_223E00000, v8, v9, "getIdentitiesDatabaseUUIDForUser:withClient: %u, %@\n", v10, v11, v12, v13, v29, v30);
  }

  [(BiometricKitXPCServer *)self validateAllUsers];
  if (v5 == -1 || ([(BKCatacomb *)self->_catacomb stateOfUserComponent:v5]& 1) == 0)
  {
    v15 = 0;
  }

  else if ([OUTLINED_FUNCTION_43() checkCatacombForUser:?])
  {
    if (OUTLINED_FUNCTION_55(__osLog))
    {
      v31[0] = 136316162;
      OUTLINED_FUNCTION_42();
      v32 = &unk_223E5FC53;
      OUTLINED_FUNCTION_31();
      v33 = 6249;
      OUTLINED_FUNCTION_39(&dword_223E00000, v4, v22, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v31);
    }

    v15 = 0;
  }

  else
  {
    v14 = [OUTLINED_FUNCTION_43() performGetCatacombUUIDCommand:? outUUID:?];
    v15 = 0;
    if (v14)
    {
      v23 = OUTLINED_FUNCTION_38(__osLog);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v31[0] = 136316162;
        OUTLINED_FUNCTION_41();
        v32 = &unk_223E5FC53;
        OUTLINED_FUNCTION_31();
        v33 = 6252;
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_39(v24, v25, v26, v27, v28);
      }
    }

    else
    {
      [OUTLINED_FUNCTION_43() logCatacombUUIDForUser:? catacombUUID:?];
    }
  }

  v16 = OUTLINED_FUNCTION_38(__osLogTrace);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_51();
    _os_log_impl(v17, v18, OS_LOG_TYPE_DEFAULT, v19, v20, 0x22u);
  }

  return v15;
}

- (id)getIdentitiesDatabaseHashForUser:(unsigned int)user withClient:(id)client
{
  v5 = *&user;
  v34 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (OUTLINED_FUNCTION_56(__osLogTrace))
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_54(&dword_223E00000, v8, v9, "getIdentitiesDatabaseHashForUser:withClient: %u, %@\n", v10, v11, v12, v13, v29, v30);
  }

  [(BiometricKitXPCServer *)self validateAllUsers];
  if (v5 == -1 || ([(BKCatacomb *)self->_catacomb stateOfUserComponent:v5]& 1) == 0)
  {
    v15 = 0;
  }

  else if ([OUTLINED_FUNCTION_43() checkCatacombForUser:?])
  {
    if (OUTLINED_FUNCTION_55(__osLog))
    {
      v31[0] = 136316162;
      OUTLINED_FUNCTION_42();
      v32 = &unk_223E5FC53;
      OUTLINED_FUNCTION_31();
      v33 = 6281;
      OUTLINED_FUNCTION_39(&dword_223E00000, v4, v22, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v31);
    }

    v15 = 0;
  }

  else
  {
    v14 = [OUTLINED_FUNCTION_43() performGetCatacombHashCommand:? outHash:?];
    v15 = 0;
    if (v14)
    {
      v23 = OUTLINED_FUNCTION_38(__osLog);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v31[0] = 136316162;
        OUTLINED_FUNCTION_41();
        v32 = &unk_223E5FC53;
        OUTLINED_FUNCTION_31();
        v33 = 6284;
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_39(v24, v25, v26, v27, v28);
      }
    }

    else
    {
      [OUTLINED_FUNCTION_43() logCatacombHashForUser:? catacombHash:?];
    }
  }

  v16 = OUTLINED_FUNCTION_38(__osLogTrace);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_51();
    _os_log_impl(v17, v18, OS_LOG_TYPE_DEFAULT, v19, v20, 0x22u);
  }

  return v15;
}

- (BOOL)init
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  return *self == 0;
}

- (void)init
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)initAutoBugCapture
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(263);
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_30();
}

- (void)listener:shouldAcceptNewConnection:.cold.3()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_30();
}

- (void)listener:shouldAcceptNewConnection:.cold.4()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_30();
}

- (void)osStateHandler:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13();
}

- (void)osStateHandler:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13();
}

- (void)osStateHandler:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, void *a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_47();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  a16 = *MEMORY[0x277D85DE8];
  v30 = MEMORY[0x277D86220];
  if (__osLog)
  {
    v31 = __osLog;
  }

  else
  {
    v31 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    a11 = &unk_223E5FC53;
    OUTLINED_FUNCTION_1();
    a14 = 1229;
    OUTLINED_FUNCTION_6(&dword_223E00000, v32, v33, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v34, v35, v36, v37);
  }

  if (__osLog)
  {
    v38 = __osLog;
  }

  else
  {
    v38 = v30;
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(a9) = 138543362;
    *(&a9 + 4) = v29;
    _os_log_impl(&dword_223E00000, v38, OS_LOG_TYPE_DEFAULT, "osStateHandler: %{public}@\n", &a9, 0xCu);
  }

  *v27 = 0;
  OUTLINED_FUNCTION_46();
}

- (void)enroll:forUser:withOptions:withClient:.cold.1()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_0();
  if (OUTLINED_FUNCTION_23(__osLog))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_22(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_46();
}

- (void)enroll:forUser:withOptions:withClient:.cold.2()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_0();
  if (OUTLINED_FUNCTION_23(__osLog))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_22(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_46();
}

- (void)enroll:forUser:withOptions:withClient:.cold.3()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(260);
}

- (void)enroll:forUser:withOptions:withClient:.cold.4()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(257);
}

- (void)enroll:forUser:withOptions:withClient:.cold.5()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(257);
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)initEnrollOperation:(void *)a1 biometricType:userID:options:client:.cold.2(void *a1)
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.4()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)startEnrollOperation:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)startEnrollOperation:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)startEnrollOperation:.cold.3()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)startEnrollOperation:.cold.4()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)match:withOptions:withClient:.cold.1()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_0();
  if (OUTLINED_FUNCTION_23(__osLog))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_22(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_46();
}

- (void)match:withOptions:withClient:.cold.2()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_0();
  if (OUTLINED_FUNCTION_23(__osLog))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_22(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_46();
}

- (void)match:withOptions:withClient:.cold.3()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(260);
}

- (void)match:withOptions:withClient:.cold.4()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(257);
}

- (void)initMatchOperation:filter:options:client:.cold.1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)initMatchOperation:filter:options:client:.cold.2()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_10_0(258);
}

- (void)initMatchOperation:(void *)a1 filter:options:client:.cold.3(void *a1)
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }
}

- (void)initMatchOperation:filter:options:client:.cold.4()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_10_0(260);
}

- (void)initMatchOperation:filter:options:client:.cold.5()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)initMatchOperation:filter:options:client:.cold.6()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)initMatchOperation:filter:options:client:.cold.7()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)initMatchOperation:filter:options:client:.cold.8()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)initMatchOperation:filter:options:client:.cold.9()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)initMatchOperation:filter:options:client:.cold.10()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)initMatchOperation:filter:options:client:.cold.11()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)initMatchOperation:filter:options:client:.cold.12()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)initMatchOperation:filter:options:client:.cold.13()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)initMatchOperation:filter:options:client:.cold.14()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)initMatchOperation:filter:options:client:.cold.15()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)initMatchOperation:filter:options:client:.cold.16()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)initMatchOperation:filter:options:client:.cold.17()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)initMatchOperation:filter:options:client:.cold.18()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_10_0(258);
}

- (void)initMatchOperation:filter:options:client:.cold.19()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_10_0(258);
}

- (void)startMatchOperation:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)startMatchOperation:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)startMatchOperation:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)startMatchOperation:.cold.4()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)startMatchOperation:.cold.5()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)startMatchOperation:.cold.6()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)detectPresenceWithOptions:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)detectPresenceWithOptions:withClient:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)detectPresenceWithOptions:withClient:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(260);
}

- (void)initPresenceDetectOperation:options:client:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)initPresenceDetectOperation:options:client:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)initPresenceDetectOperation:options:client:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)initPresenceDetectOperation:options:client:.cold.4()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)startPresenceDetectOperation:.cold.1()
{
  if (OUTLINED_FUNCTION_32(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_32(__osLogTrace))
  {
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }
}

- (void)cancelWithClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)startBioOperation:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)pauseBioOperation:.cold.1()
{
  v0 = OUTLINED_FUNCTION_34(__osLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  v6 = OUTLINED_FUNCTION_34(__osLogTrace);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
  }

  OUTLINED_FUNCTION_35(258);
}

- (void)processBioOperation:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)processBioOperation:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)writeStringToPersistentLog:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(268);
}

- (void)hexDumpData:size:.cold.1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)logCatacombInfo:data:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)logCatacombUUIDForUser:catacombUUID:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_12();
}

- (void)logCatacombUUIDForUser:catacombUUID:.cold.2()
{
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_12();
}

- (void)logCatacombHashForUser:catacombHash:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_12();
}

- (void)logCatacombHashForUser:catacombHash:.cold.2()
{
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_12();
}

- (void)filterIdentities:(void *)a1 withFilter:.cold.1(void *a1)
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }
}

- (void)filterIdentities:(void *)a1 withFilter:.cold.2(void *a1)
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }
}

- (void)filterIdentities:(void *)a1 withFilter:.cold.3(void *a1)
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }
}

- (void)filterIdentities:(void *)a1 withFilter:.cold.4(void *a1)
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }
}

- (void)filterIdentities:(void *)a1 withFilter:.cold.5(void *a1)
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }
}

- (void)filterIdentities:(void *)a1 withFilter:.cold.6(void *a1)
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }
}

- (void)filterIdentities:withFilter:.cold.7()
{
  v0 = __osLog;
  if (!__osLog)
  {
    v0 = MEMORY[0x277D86220];
  }

  v1 = v0;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }
}

- (void)filterIdentities:(void *)a1 withFilter:.cold.8(void *a1)
{
  v2 = __osLog;
  if (!__osLog)
  {
    v2 = MEMORY[0x277D86220];
  }

  v3 = v2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v4, v5, v6, v7, v8, 0x30u);
  }
}

- (void)parseAuthDict:toAuthData:.cold.1()
{
  OUTLINED_FUNCTION_33();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *v0 = v1;
  OUTLINED_FUNCTION_30();
}

- (void)parseAuthDict:toAuthData:.cold.2()
{
  OUTLINED_FUNCTION_33();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *v0 = v1;
  OUTLINED_FUNCTION_53();
}

- (void)parseAuthDict:toAuthData:.cold.3()
{
  OUTLINED_FUNCTION_33();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *v0 = v1;
  OUTLINED_FUNCTION_53();
}

- (void)parseAuthDict:toAuthData:.cold.4()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_30();
}

- (void)isDisplayOn
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  *self = 0;
}

- (void)updateExpressModeStateWithEnrollmentCount:.cold.1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)createMatchEventDictionary:.cold.1()
{
  OUTLINED_FUNCTION_33();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_53();
}

- (void)createMatchEventDictionary:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13();
}

- (void)handleCatacombUnlock
{
  v0 = OUTLINED_FUNCTION_34(__osLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  v6 = OUTLINED_FUNCTION_34(__osLogTrace);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
  }

  OUTLINED_FUNCTION_35(261);
}

- (void)checkTemplatesValidityForUser:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)checkTemplatesValidityForUser:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)checkTemplatesValidityForUser:.cold.3()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)removeUser:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)removeUser:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)isValidUser:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)validateAllUsers
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)syncTemplateListForUser:.cold.1()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_50();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v3, v4, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v5, v6, v7, v8);
  }

  *v1 = 0;
  *v0 = v2;
  OUTLINED_FUNCTION_46();
}

- (void)syncTemplateListForUser:.cold.2()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_35(261);
}

- (void)syncTemplateListForUser:.cold.3()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_35(260);
}

- (void)updatePropertiesOfIdentities
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(261);
}

- (void)readCatacombState
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(260);
}

- (void)saveCatacombIfDirtyWithInterval:andDelay:.cold.1()
{
  if (OUTLINED_FUNCTION_32(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_32(__osLogTrace))
  {
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }
}

- (void)saveTemplateListAfterTemplateUpdate
{
  if (OUTLINED_FUNCTION_32(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_32(__osLogTrace))
  {
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }
}

- (void)archiveCatacombDataForComponent:toArchiver:.cold.1()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_50();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v3, v4, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v5, v6, v7, v8);
  }

  *v1 = v2;
  *v0 = 0;
  OUTLINED_FUNCTION_46();
}

- (void)archiveCatacombDataForComponent:toArchiver:.cold.2()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_0();
  if (OUTLINED_FUNCTION_23(__osLog))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_22(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_46();
}

- (void)archiveCatacombDataForComponent:toArchiver:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13();
}

- (void)archiveCatacombDataForComponent:toArchiver:.cold.4()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(260);
}

- (void)archiveCatacombDataForComponent:toArchiver:.cold.5()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(258);
}

- (void)archiveCatacombDataForComponent:toArchiver:.cold.6()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(258);
}

- (void)unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:.cold.1()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_10_0(269);
}

- (void)unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:.cold.2()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_10_0(269);
}

- (void)unarchiveCatacombDataForComponent:(void *)a1 fromUnarchiver:secureData:identities:.cold.3(void *a1)
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }
}

- (void)unarchiveCatacombDataForComponent:(uint64_t)a3 fromUnarchiver:(uint64_t)a4 secureData:(uint64_t)a5 identities:(uint64_t)a6 .cold.4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_47();
  a24 = v25;
  a25 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  a17 = *MEMORY[0x277D85DE8];
  if (__osLog)
  {
    v37 = __osLog;
  }

  else
  {
    v37 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    a12 = &unk_223E5FC53;
    OUTLINED_FUNCTION_1();
    a15 = 4422;
    OUTLINED_FUNCTION_39(&dword_223E00000, v37, v38, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &a9);
  }

  *v28 = 269;
  *v30 = v34;
  *v32 = v36;
  OUTLINED_FUNCTION_46();
}

- (void)unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:.cold.5()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13();
}

- (void)unarchiveCatacombDataForComponent:(void *)a3 fromUnarchiver:secureData:identities:.cold.6(void *a1, void *a2, void *a3)
{
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v6, v7, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v8, v9, v10, v11);
  }
}

- (void)unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:.cold.7()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_10_0(258);
}

- (void)unarchiveCatacombDataForComponent:fromUnarchiver:secureData:identities:.cold.8()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_7_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_10_0(258);
}

- (void)saveCatacombForComponents:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)saveCatacombForComponents:.cold.2()
{
  OUTLINED_FUNCTION_10();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    v6 = 136316162;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_28();
}

- (void)saveCatacombForComponents:.cold.3()
{
  OUTLINED_FUNCTION_10();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    v6 = 136316162;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_28();
}

- (void)saveCatacombForComponents:.cold.4()
{
  OUTLINED_FUNCTION_10();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    v6 = 136316162;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_28();
}

- (void)saveCatacombForComponents:.cold.5()
{
  OUTLINED_FUNCTION_10();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    v6 = 136316162;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_28();
}

- (void)saveCatacombForComponents:.cold.6()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(261);
}

- (void)saveCatacombForComponents:.cold.7()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_35(257);
}

- (void)saveCatacombForIdentity:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)saveCatacombForIdentity:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)loadCatacomb
{
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)loadCatacombForUser:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)cacheAccessories
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(260);
}

- (void)getAccessoryObject:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13();
}

- (void)listAccessories:client:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)listAccessories:client:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)getFreeIdentityCount:forUser:accessoryGroup:client:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)getFreeIdentityCount:forUser:accessoryGroup:client:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)getFreeIdentityCount:forUser:accessoryGroup:client:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)getUserUUIDsForUIDs:(void *)a1 userUUIDs:.cold.1(void *a1)
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }
}

- (void)getUserUUIDsForUIDs:userUUIDs:.cold.2()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_35(261);
}

- (void)getUserUUIDsForUIDs:userUUIDs:.cold.3()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_35(261);
}

- (void)getUserUUIDForUID:userUUID:.cold.1()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (OUTLINED_FUNCTION_23(__osLog))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_22(&dword_223E00000, v8, v9, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v10, v11, v12, v13);
  }

  *v1 = v5;
  *v3 = v7;
  OUTLINED_FUNCTION_46();
}

- (void)getUserUUIDForUID:userUUID:.cold.2()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_35(258);
}

- (void)updateIdentity:withOptions:withClient:.cold.1()
{
  OUTLINED_FUNCTION_36();
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }
}

- (void)updateIdentity:withOptions:withClient:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)updateIdentity:withOptions:withClient:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)updateIdentity:withOptions:withClient:.cold.4()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)removeIdentity:withOptions:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)removeIdentity:withOptions:withClient:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)removeIdentity:withOptions:withClient:.cold.3()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)removeIdentity:withOptions:withClient:.cold.4()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)removeIdentity:withOptions:withClient:.cold.5()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)removeIdentity:withOptions:withClient:.cold.6()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)removeAllIdentitiesForUser:withOptions:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)removeAllIdentitiesForUser:(uint64_t)a1 withOptions:(uint64_t)a2 withClient:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v4, v5, v6, v7, v8, 0x30u);
  }
}

- (void)removeAllIdentitiesForUser:withOptions:withClient:.cold.3()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)removeAllIdentitiesForUser:withOptions:withClient:.cold.4()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)removeAllIdentitiesForUser:withOptions:withClient:.cold.5()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_3_0();
}

- (void)getMaxIdentityCount:withClient:.cold.1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getFreeIdentityCount:forUser:withClient:.cold.1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)dropUnlockTokenWithClient:.cold.1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)forceBioLockoutForUser:withOptions:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)forceBioLockoutForUser:withOptions:withClient:.cold.2()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)forceBioLockoutForUser:withOptions:withClient:.cold.3()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (BOOL)getBioLockoutState:forUser:withClient:.cold.1()
{
  OUTLINED_FUNCTION_36();
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  return v0 == 0;
}

- (BOOL)getBioLockoutState:(uint64_t)a1 forUser:withClient:.cold.2(uint64_t a1)
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  return a1 == 0;
}

- (void)getExpressModeState:forUser:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)getExpressModeState:forUser:withClient:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(261);
}

- (void)getExpressModeState:forUser:withClient:.cold.3()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(261);
}

- (void)getExpressModeState:forUser:withClient:.cold.4()
{
  OUTLINED_FUNCTION_16();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0(258);
}

- (void)getLastMatchEvent:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)getLastMatchEvent:withClient:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)getDeviceHardwareState:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_28();
}

- (void)getDeviceHardwareState:withClient:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9_1();
}

- (void)getProtectedConfigurationForUser:withClient:.cold.1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getSystemProtectedConfigurationWithClient:.cold.1()
{
  OUTLINED_FUNCTION_36();
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_30();
}

- (void)getSystemProtectedConfigurationWithClient:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_13();
}

void __40__BiometricKitXPCServer_setGracePeriod___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)serviceStatus:type:inValue:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_12();
}

- (void)serviceStatus:type:inValue:.cold.2()
{
  OUTLINED_FUNCTION_8_1();
  if (OUTLINED_FUNCTION_5(__osLog))
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_12();
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(263);
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(263);
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.3()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9(263);
}

@end