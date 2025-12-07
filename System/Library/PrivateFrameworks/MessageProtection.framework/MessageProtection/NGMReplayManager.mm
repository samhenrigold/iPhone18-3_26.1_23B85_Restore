@interface NGMReplayManager
+ (id)sharedManager;
- (BOOL)deleteExpiredSendingDestinations;
- (BOOL)deleteReceivingCountersForKey:(id)key;
- (BOOL)duplicateTagForPrekey:(id)prekey;
- (BOOL)isBATS;
- (BOOL)isRunningTests;
- (BOOL)isXCTest;
- (BOOL)processFetchRequestAndValidate:(id)validate counter:(unsigned int)counter commit:(BOOL)commit theirIdentity:(id)identity prekey:(id)prekey error:(id *)error;
- (id)computeDestinationHashForIncomingMessageFrom:(id)from toLocalKey:(id)key;
- (id)computeDestinationHashForOutgoingMessageTo:(id)to withLocalKey:(id)key;
- (id)dbNameFromProcess;
- (id)objectContextWithError:(id *)error;
- (id)persistentContainerWithError:(id *)error;
- (id)persistentStoreDescription;
- (id)pruneDuplicates:(id)duplicates tag:(id)tag moc:(id)moc;
- (id)registeredPrekeyForNGMPrekey:(id)prekey objectContext:(id)context;
- (id)validateIncomingCounter:(unsigned int)counter prekey:(id)prekey publicIdentity:(id)identity error:(id *)error;
- (unsigned)counterForDestinationWithIdentityKey:(id)key sendingIdentity:(id)identity error:(id *)error success:(BOOL *)success;
- (void)deleteExpiredSendingDestinations;
- (void)logDatabaseCreationDate:(id)date;
@end

@implementation NGMReplayManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__NGMReplayManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

void __33__NGMReplayManager_sharedManager__block_invoke(uint64_t a1)
{
  v2 = MessageProtectionLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_22B404000, v2, OS_LOG_TYPE_INFO, "Setting shared instance of the NGMReplayManager.", v5, 2u);
  }

  v3 = objc_alloc_init(*(a1 + 32));
  v4 = sharedManager_sharedManager;
  sharedManager_sharedManager = v3;
}

- (id)dbNameFromProcess
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"/NGMTrustStore-%@.db", processName];

  return v4;
}

- (BOOL)isBATS
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  environment = [processInfo environment];

  v4 = [environment objectForKeyedSubscript:@"BATS"];
  if (v4)
  {
    v5 = [environment objectForKeyedSubscript:@"PWD"];
    v6 = [v5 isEqualToString:@"/AppleInternal/XCTests/com.apple.messageprotection"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isXCTest
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  environment = [processInfo environment];

  v4 = [environment objectForKeyedSubscript:@"XCTestBundlePath"];
  pathExtension = [v4 pathExtension];
  v6 = [pathExtension isEqualToString:@"xctest"];

  return v6;
}

- (BOOL)isRunningTests
{
  if ([(NGMReplayManager *)self isBATS])
  {
    return 1;
  }

  return [(NGMReplayManager *)self isXCTest];
}

- (id)persistentStoreDescription
{
  dbNameFromProcess = [(NGMReplayManager *)self dbNameFromProcess];
  if ([(NGMReplayManager *)self isRunningTests])
  {
    v4 = NSTemporaryDirectory();
LABEL_5:
    v9 = [v4 stringByAppendingString:dbNameFromProcess];

    v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v9];
    v11 = [objc_alloc(MEMORY[0x277CBE4E0]) initWithURL:v10];
    [v11 setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
    [v11 setShouldAddStoreAsynchronously:0];

    goto LABEL_6;
  }

  v5 = NSHomeDirectory();
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:{v5, @"/Library/IdentityServices", 0}];
    v4 = [v7 pathWithComponents:v8];

    goto LABEL_5;
  }

  v9 = MessageProtectionLog(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [(NGMReplayManager *)v9 persistentStoreDescription];
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (id)objectContextWithError:(id *)error
{
  v4 = [(NGMReplayManager *)self persistentContainerWithError:?];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    persistentStoreCoordinator = [v4 persistentStoreCoordinator];
    [v5 setPersistentStoreCoordinator:persistentStoreCoordinator];
  }

  else
  {
    v7 = MessageProtectionLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NGMReplayManager objectContextWithError:error];
    }

    v5 = 0;
  }

  return v5;
}

- (id)persistentContainerWithError:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v5 = objc_sync_enter(selfCopy);
  persistentContainer = selfCopy->_persistentContainer;
  if (persistentContainer)
  {
    goto LABEL_2;
  }

  v8 = MessageProtectionLog(v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22B404000, v8, OS_LOG_TYPE_INFO, "Performing initial load of the replay database.", buf, 2u);
  }

  v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MessageProtection"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 URLForResource:@"NGMTrustStore" withExtension:@"momd"];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v11];
      if (v12)
      {
        v13 = [objc_alloc(MEMORY[0x277CBE4A0]) initWithName:@"NGMTrustStore" managedObjectModel:v12];
        persistentStoreDescription = [(NGMReplayManager *)selfCopy persistentStoreDescription];
        v15 = persistentStoreDescription;
        if (persistentStoreDescription)
        {
          v33[0] = persistentStoreDescription;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
          [v13 setPersistentStoreDescriptions:v16];

          *buf = 0;
          v28 = buf;
          v29 = 0x3032000000;
          v30 = __Block_byref_object_copy__0;
          v31 = __Block_byref_object_dispose__0;
          v32 = 0;
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __49__NGMReplayManager_persistentContainerWithError___block_invoke;
          v26[3] = &unk_2786FDDD0;
          v26[4] = selfCopy;
          v26[5] = buf;
          v17 = [v13 loadPersistentStoresWithCompletionHandler:v26];
          v18 = *(v28 + 5);
          if (v18)
          {
            v19 = MessageProtectionLog(v17);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [NGMReplayManager persistentContainerWithError:v19];
            }

            if (error)
            {
              *error = *(v28 + 5);
            }
          }

          else
          {
            v23 = MessageProtectionLog(v17);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v25[0] = 0;
              _os_log_impl(&dword_22B404000, v23, OS_LOG_TYPE_INFO, "Loading the persistent container worked, setting it to shared instance", v25, 2u);
            }

            objc_storeStrong(&selfCopy->_persistentContainer, v13);
          }

          _Block_object_dispose(buf, 8);

          if (!v18)
          {
            persistentContainer = selfCopy->_persistentContainer;
LABEL_2:
            v7 = persistentContainer;
            goto LABEL_29;
          }
        }

        else
        {
          MPLogAndAssignError(6, error, @"Failed to get the persistentStoreDescription.");
        }
      }

      else
      {
        v22 = MessageProtectionLog(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [v11 description];
          objc_claimAutoreleasedReturnValue();
          [NGMReplayManager persistentContainerWithError:];
        }
      }
    }

    else
    {
      v21 = MessageProtectionLog(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        [NGMReplayManager persistentContainerWithError:v21];
      }

      MPLogAndAssignError(9, error, @"Failed to lookup replay database model in bundle.");
    }
  }

  else
  {
    v20 = MessageProtectionLog(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [NGMReplayManager persistentContainerWithError:v20];
    }

    MPLogAndAssignError(8, error, @"Failed to lookup MessageProtection bundle.");
  }

  v7 = 0;
LABEL_29:
  objc_sync_exit(selfCopy);

  return v7;
}

void __49__NGMReplayManager_persistentContainerWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MessageProtectionLog(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __49__NGMReplayManager_persistentContainerWithError___block_invoke_cold_1(v6);
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = v6;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = [v5 description];
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_22B404000, v8, OS_LOG_TYPE_INFO, "Loaded container with description: %@", &v14, 0xCu);
    }

    v13 = *(a1 + 32);
    v11 = [v5 URL];
    [v13 logDatabaseCreationDate:v11];
  }
}

- (void)logDatabaseCreationDate:(id)date
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  dateCopy = date;
  defaultManager = [v3 defaultManager];
  absoluteString = [dateCopy absoluteString];

  v7 = [defaultManager attributesOfItemAtPath:absoluteString error:0];

  if (v7)
  {
    v8 = [v7 objectForKey:*MEMORY[0x277CCA108]];
    v9 = MessageProtectionLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v8 description];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_22B404000, v9, OS_LOG_TYPE_INFO, "Loaded replay database was created at: %@", &v11, 0xCu);
    }
  }
}

- (id)computeDestinationHashForOutgoingMessageTo:(id)to withLocalKey:(id)key
{
  v5 = MEMORY[0x277CBEB28];
  keyCopy = key;
  toCopy = to;
  data = [v5 data];
  signingKey = [toCopy signingKey];
  dataRepresentation = [signingKey dataRepresentation];
  [data appendData:dataRepresentation];

  echnidaRegistration = [toCopy echnidaRegistration];

  dhKey = [echnidaRegistration dhKey];
  dataRepresentation2 = [dhKey dataRepresentation];
  [data appendData:dataRepresentation2];

  v14 = [keyCopy dataUsingEncoding:4];

  [data appendData:v14];
  v15 = [@"Outgoing" dataUsingEncoding:4];
  [data appendData:v15];

  v16 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  CC_SHA256([data bytes], objc_msgSend(data, "length"), objc_msgSend(v16, "bytes"));
  v17 = [v16 base64EncodedStringWithOptions:0];

  return v17;
}

- (id)computeDestinationHashForIncomingMessageFrom:(id)from toLocalKey:(id)key
{
  v5 = MEMORY[0x277CBEB28];
  keyCopy = key;
  fromCopy = from;
  data = [v5 data];
  signingKey = [fromCopy signingKey];
  dataRepresentation = [signingKey dataRepresentation];
  [data appendData:dataRepresentation];

  echnidaRegistration = [fromCopy echnidaRegistration];

  dhKey = [echnidaRegistration dhKey];
  dataRepresentation2 = [dhKey dataRepresentation];
  [data appendData:dataRepresentation2];

  v14 = [keyCopy dataUsingEncoding:4];

  [data appendData:v14];
  v15 = [@"Incoming" dataUsingEncoding:4];
  [data appendData:v15];

  v16 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  CC_SHA256([data bytes], objc_msgSend(data, "length"), objc_msgSend(v16, "bytes"));
  v17 = [v16 base64EncodedStringWithOptions:0];

  return v17;
}

- (unsigned)counterForDestinationWithIdentityKey:(id)key sendingIdentity:(id)identity error:(id *)error success:(BOOL *)success
{
  v46 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  identityCopy = identity;
  *success = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = -1;
  v12 = [(NGMReplayManager *)self objectContextWithError:error];
  if (v12)
  {
    v13 = +[SendingDestination fetchRequest];
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__0;
    v44 = __Block_byref_object_dispose__0;
    deviceSigningKey = [identityCopy deviceSigningKey];
    keyIdentifier = [deviceSigningKey keyIdentifier];
    v45 = [(NGMReplayManager *)self computeDestinationHashForOutgoingMessageTo:keyCopy withLocalKey:keyIdentifier];

    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"destinationHash == %@", v41[5]];
    [v13 setPredicate:v16];

    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__0;
    v34 = __Block_byref_object_dispose__0;
    v35 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __87__NGMReplayManager_counterForDestinationWithIdentityKey_sendingIdentity_error_success___block_invoke;
    v22[3] = &unk_2786FDDF8;
    v23 = v12;
    v17 = v13;
    v24 = v17;
    v26 = &v30;
    v27 = &v36;
    v28 = &v40;
    successCopy = success;
    v25 = keyCopy;
    [v23 performBlockAndWait:v22];
    if (error)
    {
      v18 = v31[5];
      if (v18)
      {
        *error = v18;
      }
    }

    v19 = *(v37 + 6);

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v20 = MessageProtectionLog(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [*error description];
      objc_claimAutoreleasedReturnValue();
      [NGMReplayManager counterForDestinationWithIdentityKey:sendingIdentity:error:success:];
    }

    v19 = *(v37 + 6);
  }

  _Block_object_dispose(&v36, 8);
  return v19;
}

void __87__NGMReplayManager_counterForDestinationWithIdentityKey_sendingIdentity_error_success___block_invoke(uint64_t a1)
{
  v3 = a1 + 56;
  v2 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(v3 - 16);
  v6 = *(v2 + 8);
  obj = *(v6 + 40);
  v7 = [v4 executeFetchRequest:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (*(*(*v3 + 8) + 40))
  {
    v9 = MessageProtectionLog(v8);
    if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
    {
      __87__NGMReplayManager_counterForDestinationWithIdentityKey_sendingIdentity_error_success___block_invoke_cold_1(v3);
    }

    goto LABEL_15;
  }

  if ([v7 count] == 1)
  {
    v9 = [v7 objectAtIndexedSubscript:0];
    *(*(*(a1 + 64) + 8) + 24) = [(SendingDestination *)v9 validOutgoingCounter];
    v10 = *(*(*(a1 + 64) + 8) + 24);
    if (v10 == -1)
    {
      v18 = *(*v3 + 8);
      v29 = *(v18 + 40);
      MPLogAndAssignError(603, &v29, @"Replay Protection Error: Ran out of counters");
      objc_storeStrong((v18 + 40), v29);
LABEL_15:

      goto LABEL_16;
    }

    [(SendingDestination *)v9 setValidOutgoingCounter:(v10 + 1)];
    **(a1 + 80) = 1;
    v11 = *(a1 + 32);
    v12 = *(*(a1 + 56) + 8);
    v14 = *(v12 + 40);
    v13 = (v12 + 40);
    v28 = v14;
    [v11 save:&v28];
    v15 = v28;
  }

  else
  {
    if ([v7 count])
    {
      v16 = *(*v3 + 8);
      v26 = *(v16 + 40);
      MPLogAndAssignError(600, &v26, @"It appears we have a collision in the hashes.");
      v17 = v26;
      v9 = *(v16 + 40);
      *(v16 + 40) = v17;
      goto LABEL_12;
    }

    v9 = [[SendingDestination alloc] initWithContext:*(a1 + 32)];
    [(SendingDestination *)v9 setDestinationHash:*(*(*(a1 + 72) + 8) + 40)];
    v19 = MEMORY[0x277CBEAA8];
    v20 = [*(a1 + 48) echnidaRegistration];
    [v20 timestamp];
    v21 = [v19 dateWithTimeIntervalSince1970:?];
    [(SendingDestination *)v9 setRegistrationDate:v21];

    *(*(*(a1 + 64) + 8) + 24) = 0;
    [(SendingDestination *)v9 setValidOutgoingCounter:1];
    **(a1 + 80) = 1;
    v22 = *(a1 + 32);
    v23 = *(*(a1 + 56) + 8);
    v24 = *(v23 + 40);
    v13 = (v23 + 40);
    v27 = v24;
    [v22 save:&v27];
    v15 = v27;
  }

  objc_storeStrong(v13, v15);
  +[_TtC17MessageProtection15FilesystemUtils syncIfNeededOnPlatform];
LABEL_12:

  if (*(*(*v3 + 8) + 40))
  {
    **(a1 + 80) = 0;
    v9 = MessageProtectionLog(v25);
    if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
    {
      __87__NGMReplayManager_counterForDestinationWithIdentityKey_sendingIdentity_error_success___block_invoke_cold_2(v3);
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (id)validateIncomingCounter:(unsigned int)counter prekey:(id)prekey publicIdentity:(id)identity error:(id *)error
{
  v8 = *&counter;
  v37 = *MEMORY[0x277D85DE8];
  prekeyCopy = prekey;
  identityCopy = identity;
  dhKey = [prekeyCopy dhKey];
  keyIdentifier = [dhKey keyIdentifier];
  v14 = [(NGMReplayManager *)self computeDestinationHashForIncomingMessageFrom:identityCopy toLocalKey:keyIdentifier];

  v16 = MessageProtectionLog(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v34 = v8;
    v35 = 2112;
    v36 = v14;
    _os_log_impl(&dword_22B404000, v16, OS_LOG_TYPE_INFO, "Validating counter (%i) for destination hash: %@", buf, 0x12u);
  }

  v17 = [(NGMReplayManager *)self processFetchRequestAndValidate:v14 counter:v8 commit:0 theirIdentity:identityCopy prekey:prekeyCopy error:error];
  v18 = v17;
  if (error)
  {
    v17 = *error;
    if (*error)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [v17 description];
      v21 = [v19 stringWithFormat:@"An issue occured while validating the counter: %@", v20];
      MPLogAndAssignError(6, error, v21);

LABEL_13:
      v25 = 0;
      goto LABEL_14;
    }
  }

  v22 = MessageProtectionLog(v17);
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
  if (!v18)
  {
    if (v23)
    {
      *buf = 67109120;
      v34 = v8;
      _os_log_impl(&dword_22B404000, v22, OS_LOG_TYPE_INFO, "Counter (%i) is considered invalid.", buf, 8u);
    }

    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Replay detected with destinationHash: %@.", v14];
    MPLogAndAssignError(5, error, v26);

    goto LABEL_13;
  }

  if (v23)
  {
    *buf = 67109120;
    v34 = v8;
    _os_log_impl(&dword_22B404000, v22, OS_LOG_TYPE_INFO, "Counter (%i) is considered valid.", buf, 8u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__NGMReplayManager_validateIncomingCounter_prekey_publicIdentity_error___block_invoke;
  aBlock[3] = &unk_2786FDE20;
  aBlock[4] = self;
  v29 = v14;
  v32 = v8;
  v30 = identityCopy;
  v31 = prekeyCopy;
  v24 = _Block_copy(aBlock);
  v25 = _Block_copy(v24);

LABEL_14:

  return v25;
}

- (BOOL)processFetchRequestAndValidate:(id)validate counter:(unsigned int)counter commit:(BOOL)commit theirIdentity:(id)identity prekey:(id)prekey error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  validateCopy = validate;
  identityCopy = identity;
  prekeyCopy = prekey;
  v16 = [(NGMReplayManager *)self objectContextWithError:error];
  if (v16)
  {
    v17 = +[SenderPublicIdentity fetchRequest];
    validateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"destinationHash == %@", validateCopy];
    [v17 setPredicate:validateCopy];

    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__0;
    v45 = __Block_byref_object_dispose__0;
    v46 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __93__NGMReplayManager_processFetchRequestAndValidate_counter_commit_theirIdentity_prekey_error___block_invoke;
    v26[3] = &unk_2786FDE48;
    v27 = v16;
    v19 = v17;
    v28 = v19;
    v33 = &v41;
    v29 = identityCopy;
    v30 = validateCopy;
    selfCopy = self;
    v32 = prekeyCopy;
    v34 = &v37;
    counterCopy = counter;
    commitCopy = commit;
    v20 = [v27 performBlockAndWait:v26];
    if (v42[5])
    {
      v21 = MessageProtectionLog(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v22 = [v42[5] description];
        [NGMReplayManager processFetchRequestAndValidate:commit counter:v22 commit:buf theirIdentity:v21 prekey:? error:?];
      }

      v23 = 0;
      if (error)
      {
        *error = v42[5];
      }
    }

    else
    {
      v23 = *(v38 + 24);
    }

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v19 = MessageProtectionLog(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NGMReplayManager processFetchRequestAndValidate:error counter:? commit:? theirIdentity:? prekey:? error:?];
    }

    v23 = 0;
  }

  return v23 & 1;
}

void __93__NGMReplayManager_processFetchRequestAndValidate_counter_commit_theirIdentity_prekey_error___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a1 + 80;
  v2 = *(a1 + 80);
  v4 = *(a1 + 32);
  v5 = *(v3 - 40);
  v6 = *(v2 + 8);
  obj = *(v6 + 40);
  v7 = [v4 executeFetchRequest:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (*(*(*v3 + 8) + 40))
  {
    v9 = MessageProtectionLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __93__NGMReplayManager_processFetchRequestAndValidate_counter_commit_theirIdentity_prekey_error___block_invoke_cold_1(v3);
    }

    goto LABEL_4;
  }

  if ([v7 count] == 1)
  {
    v11 = [v7 objectAtIndexedSubscript:0];
    v12 = [NGMRollingBitmaskBuffer alloc];
    v13 = [(SenderPublicIdentity *)v11 skippedCounters];
    v14 = [(NGMRollingBitmaskBuffer *)v12 initWithData:v13 upperBufferIndex:[(SenderPublicIdentity *)v11 upperBufferIndex]];
  }

  else
  {
    if ([v7 count])
    {
      v22 = *(a1 + 72);
      v23 = *(*(a1 + 80) + 8);
      v32 = *(v23 + 40);
      v24 = MEMORY[0x277CCACA8];
      v9 = [v22 dhKey];
      v25 = [v9 description];
      v26 = [v24 stringWithFormat:@"We have duplicate entries on the incoming validation counter for key: %@ \n, destinationHash: %@.", v25, *(a1 + 56)];
      MPLogAndAssignError(600, &v32, v26);
      objc_storeStrong((v23 + 40), v32);

LABEL_4:
      v10 = 0;
      v11 = 0;
LABEL_5:

      goto LABEL_6;
    }

    v11 = [[SenderPublicIdentity alloc] initWithContext:*(a1 + 32)];
    v27 = MEMORY[0x277CBEAA8];
    v28 = [*(a1 + 48) echnidaRegistration];
    [v28 timestamp];
    v29 = [v27 dateWithTimeIntervalSince1970:?];
    [(SenderPublicIdentity *)v11 setDate:v29];

    [(SenderPublicIdentity *)v11 setDestinationHash:*(a1 + 56)];
    v30 = [*(a1 + 64) registeredPrekeyForNGMPrekey:*(a1 + 72) objectContext:*(a1 + 32)];
    if (!v30)
    {
      v9 = MessageProtectionLog(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __93__NGMReplayManager_processFetchRequestAndValidate_counter_commit_theirIdentity_prekey_error___block_invoke_cold_2((a1 + 72));
      }

      v10 = 0;
      goto LABEL_5;
    }

    v13 = v30;
    [(SenderPublicIdentity *)v11 setMessagedKey:v30];
    v14 = objc_alloc_init(NGMRollingBitmaskBuffer);
  }

  v10 = v14;

  *(*(*(a1 + 88) + 8) + 24) = [(NGMRollingBitmaskBuffer *)v10 processIncomingCounter:*(a1 + 96)];
  v15 = [(NGMRollingBitmaskBuffer *)v10 bufferData];
  [(SenderPublicIdentity *)v11 setSkippedCounters:v15];

  v16 = MessageProtectionLog([(SenderPublicIdentity *)v11 setUpperBufferIndex:[(NGMRollingBitmaskBuffer *)v10 upper_buffer_index]]);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 56);
    if (*(*(*(a1 + 88) + 8) + 24))
    {
      v18 = "";
    }

    else
    {
      v18 = "not";
    }

    *buf = 138412546;
    v35 = v17;
    v36 = 2080;
    v37 = v18;
    _os_log_impl(&dword_22B404000, v16, OS_LOG_TYPE_INFO, "Successfully fetched counters for destination (%@) and counter is %s valid.", buf, 0x16u);
  }

  if (*(a1 + 100) == 1)
  {
    v19 = *(a1 + 32);
    v20 = *(*(a1 + 80) + 8);
    v31 = *(v20 + 40);
    [v19 save:&v31];
    v21 = v31;
    v9 = *(v20 + 40);
    *(v20 + 40) = v21;
    goto LABEL_5;
  }

LABEL_6:
}

- (id)pruneDuplicates:(id)duplicates tag:(id)tag moc:(id)moc
{
  v21 = *MEMORY[0x277D85DE8];
  duplicatesCopy = duplicates;
  tagCopy = tag;
  mocCopy = moc;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [duplicatesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(duplicatesCopy);
        }

        [mocCopy deleteObject:*(*(&v16 + 1) + 8 * i)];
      }

      v11 = [duplicatesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = [[RegisteredPreKey alloc] initWithContext:mocCopy];
  [(RegisteredPreKey *)v14 setTag:tagCopy];

  return v14;
}

- (id)registeredPrekeyForNGMPrekey:(id)prekey objectContext:(id)context
{
  prekeyCopy = prekey;
  contextCopy = context;
  v8 = +[RegisteredPreKey fetchRequest];
  dhKey = [prekeyCopy dhKey];
  keyIdentifier = [dhKey keyIdentifier];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"tag = %@", keyIdentifier];
  [v8 setPredicate:v11];

  v24 = 0;
  v12 = [contextCopy executeFetchRequest:v8 error:&v24];
  v13 = v24;
  if (!v13)
  {
    if ([v12 count] == 1)
    {
      v17 = [v12 objectAtIndexedSubscript:0];
    }

    else
    {
      v18 = [v12 count];
      if (!v18)
      {
        v16 = [[RegisteredPreKey alloc] initWithContext:contextCopy];
        dhKey2 = [prekeyCopy dhKey];
        keyIdentifier2 = [dhKey2 keyIdentifier];
        [(RegisteredPreKey *)v16 setTag:keyIdentifier2];

        v23 = 0;
        [contextCopy save:&v23];
        v14 = v23;
        goto LABEL_12;
      }

      v19 = MessageProtectionLog(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [NGMReplayManager registeredPrekeyForNGMPrekey:objectContext:];
      }

      v17 = [(NGMReplayManager *)self pruneDuplicates:v12 tag:keyIdentifier moc:contextCopy];
    }

    v16 = v17;
    v14 = 0;
    goto LABEL_12;
  }

  v14 = v13;
  v15 = MessageProtectionLog(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [NGMReplayManager registeredPrekeyForNGMPrekey:v14 objectContext:?];
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (BOOL)deleteReceivingCountersForKey:(id)key
{
  v53 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v48 = 0;
  v5 = [(NGMReplayManager *)self objectContextWithError:&v48];
  v6 = v48;
  v7 = v6;
  if (v5)
  {
    v8 = +[RegisteredPreKey fetchRequest];
    v9 = MEMORY[0x277CCAC30];
    dhKey = [keyCopy dhKey];
    keyIdentifier = [dhKey keyIdentifier];
    v12 = [v9 predicateWithFormat:@"tag = %@", keyIdentifier];
    [v8 setPredicate:v12];

    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__0;
    v46 = __Block_byref_object_dispose__0;
    v47 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__0;
    v40 = __Block_byref_object_dispose__0;
    v41 = 0;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __50__NGMReplayManager_deleteReceivingCountersForKey___block_invoke;
    v31[3] = &unk_2786FDE70;
    v34 = &v36;
    v13 = v5;
    v32 = v13;
    v14 = v8;
    v33 = v14;
    v35 = &v42;
    v15 = [v13 performBlockAndWait:v31];
    if (v43[5])
    {
      v16 = MessageProtectionLog(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [v43[5] description];
        objc_claimAutoreleasedReturnValue();
        [NGMReplayManager deleteReceivingCountersForKey:];
      }

      v17 = 0;
    }

    else if ([v37[5] count] == 1)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __50__NGMReplayManager_deleteReceivingCountersForKey___block_invoke_92;
      v27[3] = &unk_2786FDE98;
      v28 = v13;
      v29 = &v36;
      v30 = &v42;
      v18 = [v28 performBlockAndWait:v27];
      v19 = v43[5];
      v17 = v19 == 0;
      if (v19)
      {
        v20 = MessageProtectionLog(v18);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          dhKey2 = [keyCopy dhKey];
          v25 = [dhKey2 description];
          v26 = [v43[5] description];
          *buf = 138412546;
          v50 = v25;
          v51 = 2112;
          v52 = v26;
          _os_log_fault_impl(&dword_22B404000, v20, OS_LOG_TYPE_FAULT, "Failed to delete the counters associated with %@: %@", buf, 0x16u);
        }
      }

      v16 = v28;
    }

    else
    {
      if ([v37[5] count])
      {
        v17 = 0;
        goto LABEL_16;
      }

      v16 = MessageProtectionLog(0);
      v17 = 1;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        dhKey3 = [keyCopy dhKey];
        v23 = [dhKey3 description];
        *buf = 138412290;
        v50 = v23;
        _os_log_impl(&dword_22B404000, v16, OS_LOG_TYPE_INFO, "No counters to delete for %@, probably never received any messages to that prekey.", buf, 0xCu);

        v17 = 1;
      }
    }

LABEL_16:
    _Block_object_dispose(&v36, 8);

    _Block_object_dispose(&v42, 8);
    goto LABEL_17;
  }

  v14 = MessageProtectionLog(v6);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [NGMReplayManager deleteReceivingCountersForKey:v7];
  }

  v17 = 0;
LABEL_17:

  return v17;
}

void __50__NGMReplayManager_deleteReceivingCountersForKey___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __50__NGMReplayManager_deleteReceivingCountersForKey___block_invoke_92(void *a1)
{
  v2 = a1[4];
  v3 = [*(*(a1[5] + 8) + 40) objectAtIndexedSubscript:0];
  [v2 deleteObject:v3];

  v4 = a1[4];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  [v4 save:&obj];
  objc_storeStrong((v5 + 40), obj);
}

- (BOOL)deleteExpiredSendingDestinations
{
  v38 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  obj = 0;
  v2 = [(NGMReplayManager *)self objectContextWithError:&obj];
  objc_storeStrong(&v31, obj);
  if (v2)
  {
    v4 = +[SendingDestination fetchRequest];
    v5 = MEMORY[0x277CCAC30];
    v6 = +[NGMTimeBasedEvaluations oldestDateAllowedToSendTo];
    v7 = [v5 predicateWithFormat:@"registrationDate < %@", v6];
    [v4 setPredicate:v7];

    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__0;
    v36 = __Block_byref_object_dispose__0;
    v37 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __52__NGMReplayManager_deleteExpiredSendingDestinations__block_invoke;
    v20[3] = &unk_2786FDE70;
    v23 = &v32;
    v8 = v2;
    v21 = v8;
    v9 = v4;
    v22 = v9;
    v24 = &v26;
    v10 = [v8 performBlockAndWait:v20];
    if (v27[5])
    {
      v11 = MessageProtectionLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [v27[5] description];
        objc_claimAutoreleasedReturnValue();
        [NGMReplayManager deleteExpiredSendingDestinations];
      }

      v12 = 0;
    }

    else
    {
      if (![v33[5] count])
      {
        v12 = 1;
LABEL_18:

        _Block_object_dispose(&v32, 8);
        goto LABEL_19;
      }

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __52__NGMReplayManager_deleteExpiredSendingDestinations__block_invoke_97;
      v16[3] = &unk_2786FDEE8;
      v18 = &v32;
      v17 = v8;
      v19 = &v26;
      v13 = [v17 performBlockAndWait:v16];
      if (v27[5])
      {
        v14 = MessageProtectionLog(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          [v27[5] description];
          objc_claimAutoreleasedReturnValue();
          [NGMReplayManager deleteExpiredSendingDestinations];
        }

        v12 = 0;
      }

      else
      {
        v12 = 1;
      }

      v11 = v17;
    }

    goto LABEL_18;
  }

  v9 = MessageProtectionLog(v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [v27[5] description];
    objc_claimAutoreleasedReturnValue();
    [NGMReplayManager deleteExpiredSendingDestinations];
  }

  v12 = 0;
LABEL_19:

  _Block_object_dispose(&v26, 8);
  return v12;
}

void __52__NGMReplayManager_deleteExpiredSendingDestinations__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __52__NGMReplayManager_deleteExpiredSendingDestinations__block_invoke_97(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__NGMReplayManager_deleteExpiredSendingDestinations__block_invoke_2;
  v6[3] = &unk_2786FDEC0;
  v7 = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v6];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  [v3 save:&obj];
  objc_storeStrong((v4 + 40), obj);
}

- (BOOL)duplicateTagForPrekey:(id)prekey
{
  v26[4] = *MEMORY[0x277D85DE8];
  prekeyCopy = prekey;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26[0] = 0;
  obj = 0;
  v5 = [(NGMReplayManager *)self objectContextWithError:&obj];
  objc_storeStrong(v26, obj);
  if (v5)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __42__NGMReplayManager_duplicateTagForPrekey___block_invoke;
    v16 = &unk_2786FDF10;
    v17 = v5;
    v18 = prekeyCopy;
    v19 = &v21;
    v7 = [v17 performBlockAndWait:&v13];
    v8 = v22[5];
    v9 = v8 == 0;
    if (v8)
    {
      v10 = MessageProtectionLog(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [v22[5] description];
        objc_claimAutoreleasedReturnValue();
        [NGMReplayManager duplicateTagForPrekey:];
      }
    }

    v11 = v17;
  }

  else
  {
    v11 = MessageProtectionLog(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v22[5] description];
      objc_claimAutoreleasedReturnValue();
      [NGMReplayManager duplicateTagForPrekey:];
    }

    v9 = 0;
  }

  _Block_object_dispose(&v21, 8);
  return v9;
}

void __42__NGMReplayManager_duplicateTagForPrekey___block_invoke(uint64_t a1)
{
  v2 = [[RegisteredPreKey alloc] initWithContext:*(a1 + 32)];
  v3 = [*(a1 + 40) dhKey];
  v4 = [v3 keyIdentifier];
  [(RegisteredPreKey *)v2 setTag:v4];

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  [v5 save:&obj];
  objc_storeStrong((v6 + 40), obj);
}

- (void)objectContextWithError:(id *)a1 .cold.1(id *a1)
{
  v1 = [*a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Failing to initialize a Managed Object Context for NGMTrustStore queries: %@.", v4, v5, v6, v7);
}

- (void)persistentContainerWithError:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_6(&dword_22B404000, v3, v4, "Failed to initialize NSManagedObjectModel with URL: %@", v5);
}

- (void)persistentContainerWithError:(os_log_t)log .cold.3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = @"Failed to lookup replay database model in bundle.";
  _os_log_fault_impl(&dword_22B404000, log, OS_LOG_TYPE_FAULT, "%@", &v1, 0xCu);
}

- (void)persistentContainerWithError:(os_log_t)log .cold.4(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = @"Failed to lookup MessageProtection bundle.";
  _os_log_fault_impl(&dword_22B404000, log, OS_LOG_TYPE_FAULT, "%@", &v1, 0xCu);
}

void __49__NGMReplayManager_persistentContainerWithError___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)counterForDestinationWithIdentityKey:sendingIdentity:error:success:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_5(&dword_22B404000, v3, v4, "Failed to obtain the managed object context required to do the outgoing replay counter query: %@.", v5);
}

void __87__NGMReplayManager_counterForDestinationWithIdentityKey_sendingIdentity_error_success___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2(a1) description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Database query failed while obtaining sending counter: %@", v4, v5, v6, v7);
}

void __87__NGMReplayManager_counterForDestinationWithIdentityKey_sendingIdentity_error_success___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2(a1) description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "An issue occured persisting the managed object context: %@", v4, v5, v6, v7);
}

- (void)processFetchRequestAndValidate:(uint8_t *)buf counter:(os_log_t)log commit:theirIdentity:prekey:error:.cold.1(char a1, void *a2, uint8_t *buf, os_log_t log)
{
  v5 = @"validating";
  if (a1)
  {
    v5 = @"committing";
  }

  *buf = 138412546;
  *(buf + 4) = v5;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_22B404000, log, OS_LOG_TYPE_FAULT, "An error happened while %@ the counter: %@", buf, 0x16u);
}

- (void)processFetchRequestAndValidate:(id *)a1 counter:commit:theirIdentity:prekey:error:.cold.2(id *a1)
{
  v1 = [*a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Failed to obtain the managed object context required to validate the incoming replay counter query: %@.", v4, v5, v6, v7);
}

void __93__NGMReplayManager_processFetchRequestAndValidate_counter_commit_theirIdentity_prekey_error___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2(a1) description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __93__NGMReplayManager_processFetchRequestAndValidate_counter_commit_theirIdentity_prekey_error___block_invoke_cold_2(id *a1)
{
  v1 = [*a1 dhKey];
  v2 = [v1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v3, v4, "There was an issue obtaining the registered prekey: %@", v5, v6, v7, v8);
}

- (void)registeredPrekeyForNGMPrekey:(void *)a1 objectContext:.cold.1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Database query failed while obtaining sending counter: %@", v4, v5, v6, v7);
}

- (void)registeredPrekeyForNGMPrekey:objectContext:.cold.2()
{
  v5 = [0 description];
  OUTLINED_FUNCTION_7();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)deleteReceivingCountersForKey:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_6(&dword_22B404000, v3, v4, "Database query failed while cleaning up old counters: %@", v5);
}

- (void)deleteReceivingCountersForKey:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Failed to obtain the managed object context required to validate delete the receiving counters: %@.", v4, v5, v6, v7);
}

- (void)deleteExpiredSendingDestinations
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_5(&dword_22B404000, v3, v4, "Failed to obtain the managed object context required to validate delete the sending destinations: %@.", v5);
}

- (void)duplicateTagForPrekey:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_5(&dword_22B404000, v3, v4, "Failed to create a duplicate for the prekey. {error = %@}", v5);
}

- (void)duplicateTagForPrekey:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_5(&dword_22B404000, v3, v4, "Failed to obtain the managed object context required to delete the duplicate prekeys: %@.", v5);
}

@end