@interface IMTransferAgentNicknameController
+ (id)sharedInstance;
- (BOOL)_serverSaysToUseOldContainer;
- (BOOL)shouldUseDevNickNameContainer;
- (id)_errorWrappingError:(id)error;
- (id)_nickNameContainer;
- (id)_nickNameContainerIdentifier;
- (id)_nickNameFetchConfiguration;
- (id)_nickNameSaveConfiguration;
- (id)nickNamePublicDatabase;
- (void)_handleSaveNicknameError:(id)error queue:(id)queue withCompletionBlock:(id)block;
- (void)_updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecord:(id)record wallpaperRecordToSave:(id)save deletingRecordID:(id)d queue:(id)queue withCompletionBlock:(id)block;
- (void)_updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecords:(id)records deletingRecordIDs:(id)ds queue:(id)queue withCompletionBlock:(id)block;
- (void)cloudKitOperationWithRetryCount:(unint64_t)count queue:(id)queue withError:(id)error operation:(id)operation;
- (void)deleteAllPersonalNicknamesOnQueue:(id)queue withCompletion:(id)completion;
- (void)fetchAllNicknamesForCurrentUser:(id)user;
- (void)fetchCurrentUserForNicknameContainer:(id)container;
- (void)getNicknameWithRecordID:(id)d decryptionKey:(id)key wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag knownSender:(BOOL)sender shouldDecodeImageFields:(BOOL)self0 queue:(id)self1 completionBlock:(id)self2;
- (void)setPersonalNickname:(id)nickname oldRecordID:(id)d queue:(id)queue completionBlock:(id)block;
- (void)setPersonalNicknameData:(id)data oldRecordID:(id)d queue:(id)queue completionBlock:(id)block;
@end

@implementation IMTransferAgentNicknameController

+ (id)sharedInstance
{
  if (qword_28112DA00 != -1)
  {
    sub_2548680C8();
  }

  v3 = qword_28112D9D8;

  return v3;
}

- (void)getNicknameWithRecordID:(id)d decryptionKey:(id)key wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag knownSender:(BOOL)sender shouldDecodeImageFields:(BOOL)self0 queue:(id)self1 completionBlock:(id)self2
{
  dCopy = d;
  keyCopy = key;
  tagCopy = tag;
  dataTagCopy = dataTag;
  metadataTagCopy = metadataTag;
  recipeDataTagCopy = recipeDataTag;
  queueCopy = queue;
  blockCopy = block;
  if ([MEMORY[0x277D1A9A0] supportsNameAndPhoto])
  {
    if ([dCopy length])
    {
      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = sub_25485D6FC;
      v47 = sub_25485D70C;
      v48 = 0;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_25485D714;
      v30[3] = &unk_27978CF70;
      v31 = dCopy;
      v32 = metadataTagCopy;
      v33 = tagCopy;
      v34 = dataTagCopy;
      senderCopy = sender;
      v35 = recipeDataTagCopy;
      selfCopy = self;
      v26 = queueCopy;
      v37 = v26;
      v29 = keyCopy;
      v38 = keyCopy;
      fieldsCopy = fields;
      v39 = blockCopy;
      v40 = &v43;
      v27 = MEMORY[0x259C1C440](v30);
      [(IMTransferAgentNicknameController *)self performCloudKitOperation:v27 queue:v26 withError:v44[5]];

      _Block_object_dispose(&v43, 8);
      keyCopy = v29;
    }

    else
    {
      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nickname" code:1 userInfo:0];
      (*(blockCopy + 2))(blockCopy, 0, v28);
    }
  }
}

- (void)fetchCurrentUserForNicknameContainer:(id)container
{
  containerCopy = container;
  _nickNameContainer = [(IMTransferAgentNicknameController *)self _nickNameContainer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_25485E218;
  v7[3] = &unk_27978CF98;
  v8 = containerCopy;
  v6 = containerCopy;
  [_nickNameContainer fetchUserRecordIDWithCompletionHandler:v7];
}

- (void)fetchAllNicknamesForCurrentUser:(id)user
{
  userCopy = user;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_25485E2BC;
  v6[3] = &unk_27978CFE8;
  v6[4] = self;
  v7 = userCopy;
  v5 = userCopy;
  [(IMTransferAgentNicknameController *)self fetchCurrentUserForNicknameContainer:v6];
}

- (void)setPersonalNicknameData:(id)data oldRecordID:(id)d queue:(id)queue completionBlock:(id)block
{
  dCopy = d;
  queueCopy = queue;
  blockCopy = block;
  v13 = MEMORY[0x277CCAAC8];
  v14 = MEMORY[0x277CBEB98];
  dataCopy = data;
  v16 = [v14 setWithObject:objc_opt_class()];
  v21 = 0;
  v17 = [v13 _strictlyUnarchivedObjectOfClasses:v16 fromData:dataCopy error:&v21];

  v18 = v21;
  if (v17)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    [(IMTransferAgentNicknameController *)self setPersonalNickname:v17 oldRecordID:dCopy queue:queueCopy completionBlock:blockCopy];
  }

  else
  {
    v20 = [(IMTransferAgentNicknameController *)self _errorWrappingError:v18];
    (*(blockCopy + 2))(blockCopy, 0, 0, 0, 0, 0, 0, 0, 0, v20);
  }
}

- (void)setPersonalNickname:(id)nickname oldRecordID:(id)d queue:(id)queue completionBlock:(id)block
{
  v58 = *MEMORY[0x277D85DE8];
  nicknameCopy = nickname;
  dCopy = d;
  queueCopy = queue;
  blockCopy = block;
  v14 = nicknameCopy;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    selfCopy = self;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      avatar = [v14 avatar];
      imageFilePath = [avatar imageFilePath];
      *buf = 138412546;
      v55 = v14;
      v56 = 2112;
      v57 = imageFilePath;
      _os_log_impl(&dword_254850000, v15, OS_LOG_TYPE_INFO, "Client request to store new personal nickname %@ path%@", buf, 0x16u);
    }

    self = selfCopy;
  }

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_25485EC18;
  v52[3] = &unk_27978D010;
  v19 = blockCopy;
  v52[4] = self;
  v53 = v19;
  selfCopy2 = self;
  v20 = MEMORY[0x259C1C440](v52);
  v51 = 0;
  v21 = [MEMORY[0x277D1AB00] generatePreKeyWithError:&v51];
  v22 = v51;
  v23 = v22;
  if (v21)
  {
    v50 = 0;
    v48 = 0;
    v49 = 0;
    v46 = v22;
    v47 = 0;
    v35 = [v14 publicRecordsForNicknameWithPreKey:v21 wallpaperDataTag:&v50 lowResWallpaperDataTag:&v49 wallpaperMetadataTag:&v48 avatarRecipeDataTag:&v47 error:&v46];
    v24 = v50;
    v25 = v49;
    v31 = v48;
    v32 = v47;
    v30 = v46;

    v34 = [v35 objectForKeyedSubscript:@"profileRecord"];
    v33 = [v35 objectForKeyedSubscript:@"wallpaperRecord"];
    if (v34)
    {
      if ([dCopy length])
      {
        v28 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:dCopy];
      }

      else
      {
        v28 = 0;
      }

      v26 = objc_alloc_init(MEMORY[0x277D192C0]);
      [v26 startTimingForKey:@"Nickname Upload"];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = sub_25485ED70;
      v36[3] = &unk_27978D038;
      v37 = v26;
      v38 = v14;
      v39 = v34;
      v45 = v20;
      v40 = v21;
      v41 = v24;
      v42 = v25;
      v43 = v31;
      v44 = v32;
      v27 = v26;
      [(IMTransferAgentNicknameController *)selfCopy2 _updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecord:v39 wallpaperRecordToSave:v33 deletingRecordID:v28 queue:queueCopy withCompletionBlock:v36];
    }

    else
    {
      (v20)[2](v20, 0, 0, 0, 0, 0, 0, 0, 0, v30);
    }

    v23 = v30;
  }

  else
  {
    (v20)[2](v20, 0, 0, 0, 0, 0, 0, 0, 0, v22);
  }
}

- (void)deleteAllPersonalNicknamesOnQueue:(id)queue withCompletion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "Client request to delete personal nickname with recordID", buf, 2u);
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_25485F1FC;
  v11[3] = &unk_27978D088;
  v11[4] = self;
  v12 = queueCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = queueCopy;
  [(IMTransferAgentNicknameController *)self fetchAllNicknamesForCurrentUser:v11];
}

- (void)_updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecord:(id)record wallpaperRecordToSave:(id)save deletingRecordID:(id)d queue:(id)queue withCompletionBlock:(id)block
{
  recordCopy = record;
  saveCopy = save;
  dCopy = d;
  queueCopy = queue;
  blockCopy = block;
  if (dCopy)
  {
    v17 = [MEMORY[0x277CBEA60] arrayWithObject:dCopy];
  }

  else
  {
    v17 = 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v19 = array;
  if (recordCopy)
  {
    [array addObject:recordCopy];
    if (saveCopy)
    {
      [v19 addObject:saveCopy];
    }
  }

  if ([v17 count])
  {
    v20 = objc_alloc_init(MEMORY[0x277D192C0]);
    [v20 startTimingForKey:@"Nickname Delete"];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = sub_25485F67C;
    v32 = &unk_27978D0B0;
    v33 = v20;
    v34 = recordCopy;
    selfCopy = self;
    v36 = v19;
    v21 = queueCopy;
    v37 = v21;
    v38 = blockCopy;
    v22 = v20;
    v23 = MEMORY[0x259C1C440](&v29);
    selfCopy2 = self;
    v25 = blockCopy;
    v26 = queueCopy;
    v27 = saveCopy;
    v28 = v23;
    [(IMTransferAgentNicknameController *)selfCopy2 _updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecords:0 deletingRecordIDs:v17 queue:v21 withCompletionBlock:v23, v29, v30, v31, v32];

    saveCopy = v27;
    queueCopy = v26;
    blockCopy = v25;
  }

  else
  {
    [(IMTransferAgentNicknameController *)self _updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecords:v19 deletingRecordIDs:0 queue:queueCopy withCompletionBlock:blockCopy];
  }
}

- (void)_updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecords:(id)records deletingRecordIDs:(id)ds queue:(id)queue withCompletionBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  dsCopy = ds;
  queueCopy = queue;
  blockCopy = block;
  if (recordsCopy && IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = recordsCopy;
      _os_log_impl(&dword_254850000, v14, OS_LOG_TYPE_INFO, "Publishing Nickname to CloudKit Public DB with record %@", &buf, 0xCu);
    }
  }

  if (dsCopy && IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = dsCopy;
      _os_log_impl(&dword_254850000, v15, OS_LOG_TYPE_INFO, "Deleting Nickname from CloudKit Public DB with recordID %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = sub_25485D6FC;
  v34 = sub_25485D70C;
  v35 = 0;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_25485FA94;
  v24 = &unk_27978D178;
  v16 = dsCopy;
  v25 = v16;
  v17 = recordsCopy;
  v26 = v17;
  selfCopy = self;
  v18 = queueCopy;
  v28 = v18;
  v19 = blockCopy;
  v29 = v19;
  p_buf = &buf;
  v20 = MEMORY[0x259C1C440](&v21);
  [(IMTransferAgentNicknameController *)self performCloudKitOperation:v20 queue:v18 withError:*(*(&buf + 1) + 40), v21, v22, v23, v24];

  _Block_object_dispose(&buf, 8);
}

- (void)_handleSaveNicknameError:(id)error queue:(id)queue withCompletionBlock:(id)block
{
  v31[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  queueCopy = queue;
  blockCopy = block;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  if (errorCopy)
  {
    if ([errorCopy code] == 2)
    {
      userInfo = [errorCopy userInfo];
      v12 = [userInfo valueForKey:*MEMORY[0x277CBBFB0]];
      allValues = [v12 allValues];
    }

    else
    {
      v31[0] = errorCopy;
      allValues = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    }
  }

  else
  {
    allValues = 0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = allValues;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = *v23;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        if ([v18 code] == 19 || objc_msgSend(v18, "code") == 12)
        {
          *(v27 + 24) = 1;
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = sub_2548604E0;
          v19[3] = &unk_27978D1A0;
          v21 = &v26;
          v20 = blockCopy;
          [(IMTransferAgentNicknameController *)self deleteAllPersonalNicknamesOnQueue:queueCopy withCompletion:v19];

          goto LABEL_22;
        }

        if ([v18 code] == 14)
        {
          *(v27 + 24) = 0;
        }

        if ([v18 code] == 15)
        {
          *(v27 + 24) = 0;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, *(v27 + 24));
  }

LABEL_22:
  _Block_object_dispose(&v26, 8);
}

- (void)cloudKitOperationWithRetryCount:(unint64_t)count queue:(id)queue withError:(id)error operation:(id)operation
{
  v32 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  errorCopy = error;
  operationCopy = operation;
  userInfo = [errorCopy userInfo];
  v14 = [userInfo objectForKey:*MEMORY[0x277CBBF68]];

  if (v14)
  {
    [(IMTransferAgentNicknameController *)self _retryIntervalForRetryCount:count];
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_254860764;
  v23[3] = &unk_27978D1F0;
  countCopy = count;
  v23[4] = self;
  v17 = queueCopy;
  v24 = v17;
  v18 = errorCopy;
  v25 = v18;
  v19 = operationCopy;
  v26 = v19;
  v20 = MEMORY[0x259C1C440](v23);
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      countCopy2 = count;
      v30 = 2048;
      v31 = v16;
      _os_log_impl(&dword_254850000, v21, OS_LOG_TYPE_INFO, "Dispatching CloudKit operation with retry: %lu and retryInterval: %f", buf, 0x16u);
    }
  }

  if (v16 <= 0.0)
  {
    v20[2](v20);
  }

  else
  {
    v22 = dispatch_time(0, (v16 * 1000000000.0));
    dispatch_after(v22, v17, v20);
  }
}

- (id)nickNamePublicDatabase
{
  if (IMSharedHelperNickNameEnabled())
  {
    _nickNameContainer = [(IMTransferAgentNicknameController *)self _nickNameContainer];
    publicCloudDatabase = [_nickNameContainer publicCloudDatabase];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_254850000, v5, OS_LOG_TYPE_INFO, "Nicknames NOT enabled, returning nil public database", v7, 2u);
      }
    }

    publicCloudDatabase = 0;
  }

  return publicCloudDatabase;
}

- (id)_nickNameSaveConfiguration
{
  v2 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v2 setQualityOfService:25];

  return v2;
}

- (id)_nickNameFetchConfiguration
{
  v2 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v2 setQualityOfService:25];
  [v2 setPreferAnonymousRequests:1];

  return v2;
}

- (BOOL)_serverSaysToUseOldContainer
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"use-old-nickname-container"];
  v4 = [v3 unsignedIntegerValue] != 0;
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v6 = [mEMORY[0x277D1A990] getBoolFromDomain:*MEMORY[0x277D1A3C0] forKey:@"UseOldProfilesContainer"];

  v7 = v6 | v4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
      v10 = v9;
      v11 = @"NO";
      v13 = 138412802;
      if (v7)
      {
        v11 = @"YES";
      }

      v14 = v11;
      v15 = 2112;
      v16 = v3;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "Server says to use new container? %@ {serverbagValue: %@ version: %@}", &v13, 0x20u);
    }
  }

  return v7 & 1;
}

- (id)_nickNameContainerIdentifier
{
  if ([(IMTransferAgentNicknameController *)self _serverSaysToUseOldContainer])
  {
    return @"com.apple.internal.messages.memoji";
  }

  else
  {
    return @"com.apple.messages.profiles";
  }
}

- (id)_nickNameContainer
{
  v18 = *MEMORY[0x277D85DE8];
  nickNameContainer = self->_nickNameContainer;
  if (!nickNameContainer)
  {
    _nickNameContainerIdentifier = [(IMTransferAgentNicknameController *)self _nickNameContainerIdentifier];
    shouldUseDevNickNameContainer = [(IMTransferAgentNicknameController *)self shouldUseDevNickNameContainer];
    v6 = IMOSLoggingEnabled();
    if (shouldUseDevNickNameContainer)
    {
      if (v6)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          v17 = _nickNameContainerIdentifier;
          _os_log_impl(&dword_254850000, v7, OS_LOG_TYPE_INFO, "**** Initializing dev nick name container with ID %@", &v16, 0xCu);
        }
      }

      v8 = 2;
    }

    else
    {
      if (v6)
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          v17 = _nickNameContainerIdentifier;
          _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "Initializing production container %@", &v16, 0xCu);
        }
      }

      v8 = 1;
    }

    v10 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:_nickNameContainerIdentifier environment:v8];
    v11 = objc_alloc_init(MEMORY[0x277CBC230]);
    [v11 setUseZoneWidePCS:1];
    v12 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v10 options:v11];
    v14 = self->_nickNameContainer;
    p_nickNameContainer = &self->_nickNameContainer;
    *p_nickNameContainer = v12;

    nickNameContainer = *p_nickNameContainer;
  }

  return nickNameContainer;
}

- (BOOL)shouldUseDevNickNameContainer
{
  v3 = IMGetCachedDomainBoolForKey();
  if (v3)
  {
    lockdownManager = [(IMTransferAgentNicknameController *)self lockdownManager];
    isInternalInstall = [lockdownManager isInternalInstall];

    LOBYTE(v3) = isInternalInstall;
  }

  return v3;
}

- (id)_errorWrappingError:(id)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    lowercaseString = [domain lowercaseString];
    v7 = [lowercaseString containsString:@"blastdoor"];

    if (v7)
    {
      v8 = v4;
    }

    else
    {
      v11 = [v4 description];
      if (v11)
      {
        v21 = *MEMORY[0x277CCA068];
        v12 = [v4 description];
        v22[0] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      }

      else
      {
        v13 = 0;
      }

      v14 = MEMORY[0x277CCA9B8];
      domain2 = [v4 domain];
      v16 = domain2;
      if (domain2)
      {
        v17 = domain2;
      }

      else
      {
        v17 = @"com.apple.nickname";
      }

      v8 = [v14 errorWithDomain:v17 code:objc_msgSend(v4 userInfo:{"code"), v13}];
    }
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA068];
    v20 = @"Unknown error (inner error is nil).";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v8 = [v9 errorWithDomain:@"com.apple.nickname" code:1 userInfo:v10];
  }

  return v8;
}

@end