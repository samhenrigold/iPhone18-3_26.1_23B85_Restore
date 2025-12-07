@interface IMFileTransferCenter
+ (Class)transferCenterClass;
+ (id)sharedInstance;
- (BOOL)doesLocalURLRequireArchiving:(id)archiving toHandle:(id)handle;
- (BOOL)isFileTransfer:(id)transfer preauthorizedWithDictionary:(id)dictionary;
- (BOOL)registerGUID:(id)d forNewOutgoingTransferWithLocalURL:(id)l;
- (NSArray)orderedTransfers;
- (NSArray)orderedTransfersGUIDs;
- (id)chatForTransfer:(id)transfer;
- (id)createNewOutgoingGroupPhotoTransferWithLocalFileURL:(id)l;
- (id)createNewOutgoingTransferWithLocalFileURL:(id)l;
- (id)guidsForStoredAttachmentPayloadData:(id)data messageGUID:(id)d;
- (id)transferForGUID:(id)d includeRemoved:(BOOL)removed;
- (id)transfersForAccount:(id)account;
- (void)_addActiveTransfer:(id)transfer;
- (void)_addPendingTransfer:(id)transfer;
- (void)_addTransfer:(id)transfer;
- (void)_addTransfer:(id)transfer toAccount:(id)account;
- (void)_clearTransfers;
- (void)_daemonDisconnected:(id)disconnected;
- (void)_daemonRestarted:(id)restarted;
- (void)_fetchHighQualityVariantForTransferGUID:(id)d completion:(id)completion;
- (void)_handleAllFileTransfers:(id)transfers;
- (void)_handleFileTransfer:(id)transfer createdWithProperties:(id)properties;
- (void)_handleFileTransfer:(id)transfer explicitDownloadSucceededWithPath:(id)path livePhotoBundlePath:(id)bundlePath;
- (void)_handleFileTransfer:(id)transfer highQualityDownloadSucceededWithPath:(id)path;
- (void)_handleFileTransfer:(id)transfer rejectedWithProperties:(id)properties;
- (void)_handleFileTransfer:(id)transfer updatedWithCurrentBytes:(unint64_t)bytes totalBytes:(unint64_t)totalBytes averageTransferRate:(unint64_t)rate;
- (void)_handleFileTransfer:(id)transfer updatedWithProperties:(id)properties;
- (void)_handleFileTransferDownloadFailedWithLocalURL:(id)l error:(id)error;
- (void)_handleFileTransferDownloadSucceededWithLocalURL:(id)l;
- (void)_handleFileTransferExplicitDownloadFailed:(id)failed suggestedRetryGUID:(id)d error:(id)error;
- (void)_handleFileTransferFinishedRemoteIntentDownload:(id)download;
- (void)_handleFileTransferHighQualityDownloadFailed:(id)failed;
- (void)_handleFileTransfers:(id)transfers createdWithLocalPaths:(id)paths;
- (void)_handleSerializedFileTransfers:(id)transfers;
- (void)_initiateHighQualityVariantDownloadWithDaemonForGUID:(id)d;
- (void)_initiateLocalFileURLRetrievalInDaemonForGUID:(id)d options:(int64_t)options;
- (void)_initiateLocalFileURLRetrievalInDaemonForGUIDs:(id)ds options:(int64_t)options;
- (void)_registerDaemonListenerIfNecessary;
- (void)_removeActiveTransfer:(id)transfer;
- (void)_removeAllActiveTransfers;
- (void)_removePendingTransfer:(id)transfer;
- (void)acceptFileTransferIfPreauthorzed:(id)preauthorzed;
- (void)acceptTransfer:(id)transfer withPath:(id)path autoRename:(BOOL)rename overwrite:(BOOL)overwrite;
- (void)acceptTransferAndUpdateReasonForTapped:(id)tapped;
- (void)acknowledgeAllPendingTransfers;
- (void)assignTransfer:(id)transfer toHandle:(id)handle;
- (void)assignTransfer:(id)transfer toMessage:(id)message account:(id)account;
- (void)clearFinishedTransfers;
- (void)createItemForPHAssetWithUUID:(id)d parentChatItemGUID:(id)iD chatGUID:(id)uID;
- (void)createNewOutgoingFileTransferWithTransferGUID:(id)d localFileURL:(id)l;
- (void)dealloc;
- (void)deleteTransfer:(id)transfer;
- (void)downloadFileTransferWithLocalURL:(id)l completion:(id)completion;
- (void)fetchHighQualityVariantForTransfer:(id)transfer completion:(id)completion;
- (void)preWarmConnection;
- (void)preauthorizeFileTransferFromOtherPerson:(id)person account:(id)account filename:(id)filename saveToPath:(id)path;
- (void)registerNewFileTransfer:(id)transfer;
- (void)registerTransferWithDaemon:(id)daemon;
- (void)removeTransfer:(id)transfer;
- (void)retargetTransfer:(id)transfer toPath:(id)path;
- (void)retrieveLocalFileURLForFileTransferWithGUID:(id)d options:(int64_t)options completion:(id)completion;
- (void)retrieveLocalFileURLForFileTransferWithGUIDs:(id)ds options:(int64_t)options completion:(id)completion;
- (void)setAuxImageForTransfer:(id)transfer value:(BOOL)value;
- (void)setAuxVideoForTransfer:(id)transfer value:(BOOL)value;
- (void)setCommSafetySensitiveForTransfer:(id)transfer value:(int64_t)value;
- (void)stopTransfer:(id)transfer;
@end

@implementation IMFileTransferCenter

+ (id)sharedInstance
{
  v3 = qword_1ED767858;
  if (!qword_1ED767858)
  {
    v4 = objc_alloc_init([self transferCenterClass]);
    v5 = qword_1ED767858;
    qword_1ED767858 = v4;

    v3 = qword_1ED767858;
  }

  return v3;
}

+ (Class)transferCenterClass
{
  if (qword_1EB2EA1E0)
  {
    v2 = qword_1EB2EA1E0;
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

- (void)_clearTransfers
{
  [(IMFileTransferCenter *)self _removeAllActiveTransfers];
  [(IMFileTransferCenter *)self acknowledgeAllPendingTransfers];
  [(NSMutableDictionary *)self->_guidToTransferMap removeAllObjects];
  [(NSMutableDictionary *)self->_guidToRemovedTransferMap removeAllObjects];
  [(NSMutableDictionary *)self->_accountIDToTransferGUIDsMap removeAllObjects];
  [(NSMutableArray *)self->_preauthorizedInfos removeAllObjects];
  [(NSMutableArray *)self->_preauthorizedGUIDs removeAllObjects];
  [(NSMutableSet *)self->_activeTransfers removeAllObjects];
  [(NSMutableSet *)self->_pendingTransfers removeAllObjects];
  if (![(NSMutableDictionary *)self->_guidToTransferMap count])
  {
    guidToTransferMap = self->_guidToTransferMap;
    self->_guidToTransferMap = 0;
  }

  if (![(NSMutableDictionary *)self->_guidToRemovedTransferMap count])
  {
    guidToRemovedTransferMap = self->_guidToRemovedTransferMap;
    self->_guidToRemovedTransferMap = 0;
  }

  if (![(NSMutableDictionary *)self->_accountIDToTransferGUIDsMap count])
  {
    accountIDToTransferGUIDsMap = self->_accountIDToTransferGUIDsMap;
    self->_accountIDToTransferGUIDsMap = 0;
  }

  if (![(NSMutableArray *)self->_preauthorizedInfos count])
  {
    preauthorizedInfos = self->_preauthorizedInfos;
    self->_preauthorizedInfos = 0;
  }

  if (![(NSMutableArray *)self->_preauthorizedGUIDs count])
  {
    preauthorizedGUIDs = self->_preauthorizedGUIDs;
    self->_preauthorizedGUIDs = 0;
  }

  if (![(NSMutableSet *)self->_activeTransfers count])
  {
    activeTransfers = self->_activeTransfers;
    self->_activeTransfers = 0;
  }

  if (![(NSMutableSet *)self->_pendingTransfers count])
  {
    pendingTransfers = self->_pendingTransfers;
    self->_pendingTransfers = 0;
  }
}

- (void)_removeAllActiveTransfers
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableSet *)self->_activeTransfers copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(IMFileTransferCenter *)self _removeActiveTransfer:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)acknowledgeAllPendingTransfers
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableSet *)self->_pendingTransfers copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(IMFileTransferCenter *)self _removePendingTransfer:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = IMFileTransferCenter;
  [(IMFileTransferCenter *)&v4 dealloc];
}

- (void)_addPendingTransfer:(id)transfer
{
  transferCopy = transfer;
  pendingTransfers = self->_pendingTransfers;
  v8 = transferCopy;
  if (!pendingTransfers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_pendingTransfers;
    self->_pendingTransfers = v6;

    transferCopy = v8;
    pendingTransfers = self->_pendingTransfers;
  }

  [(NSMutableSet *)pendingTransfers addObject:transferCopy];
}

- (void)_removePendingTransfer:(id)transfer
{
  transferCopy = transfer;
  if ([(NSMutableSet *)self->_pendingTransfers containsObject:?])
  {
    [(NSMutableSet *)self->_pendingTransfers removeObject:transferCopy];
    if (![(NSMutableSet *)self->_pendingTransfers count])
    {
      pendingTransfers = self->_pendingTransfers;
      self->_pendingTransfers = 0;
    }
  }
}

- (void)_addActiveTransfer:(id)transfer
{
  transferCopy = transfer;
  activeTransfers = self->_activeTransfers;
  v8 = transferCopy;
  if (!activeTransfers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_activeTransfers;
    self->_activeTransfers = v6;

    transferCopy = v8;
    activeTransfers = self->_activeTransfers;
  }

  [(NSMutableSet *)activeTransfers addObject:transferCopy];
  [(IMFileTransferCenter *)self _removePendingTransfer:v8];
}

- (void)_removeActiveTransfer:(id)transfer
{
  transferCopy = transfer;
  if ([(NSMutableSet *)self->_activeTransfers containsObject:?])
  {
    [(NSMutableSet *)self->_activeTransfers removeObject:transferCopy];
    if (![(NSMutableSet *)self->_activeTransfers count])
    {
      activeTransfers = self->_activeTransfers;
      self->_activeTransfers = 0;
    }
  }
}

- (void)_addTransfer:(id)transfer toAccount:(id)account
{
  transferCopy = transfer;
  accountCopy = account;
  if (accountCopy)
  {
    array = [(NSMutableDictionary *)self->_accountIDToTransferGUIDsMap objectForKey:accountCopy];
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
      accountIDToTransferGUIDsMap = self->_accountIDToTransferGUIDsMap;
      if (!accountIDToTransferGUIDsMap)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v10 = self->_accountIDToTransferGUIDsMap;
        self->_accountIDToTransferGUIDsMap = Mutable;

        accountIDToTransferGUIDsMap = self->_accountIDToTransferGUIDsMap;
      }

      [(NSMutableDictionary *)accountIDToTransferGUIDsMap setObject:array forKey:accountCopy];
    }

    guid = [transferCopy guid];
    [array addObject:guid];
  }
}

- (void)_addTransfer:(id)transfer
{
  v17 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  v5 = transferCopy;
  if (transferCopy)
  {
    guid = [transferCopy guid];

    if (guid)
    {
      guidToTransferMap = self->_guidToTransferMap;
      if (!guidToTransferMap)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v9 = self->_guidToTransferMap;
        self->_guidToTransferMap = Mutable;

        guidToTransferMap = self->_guidToTransferMap;
      }

      guid2 = [v5 guid];
      [(NSMutableDictionary *)guidToTransferMap setObject:v5 forKey:guid2];

      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          guid3 = [v5 guid];
          v15 = 138412290;
          v16 = guid3;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "_addTransfer: %@", &v15, 0xCu);
        }
      }

      accountID = [v5 accountID];
      if (accountID)
      {
        [(IMFileTransferCenter *)self _addTransfer:v5 toAccount:accountID];
      }

      if (![v5 transferState])
      {
        guid4 = [v5 guid];
        [(IMFileTransferCenter *)self _addPendingTransfer:guid4];
      }
    }
  }
}

- (void)registerNewFileTransfer:(id)transfer
{
  transferCopy = transfer;
  [(IMFileTransferCenter *)self _addTransfer:transferCopy];
  guid = [transferCopy guid];

  [(IMFileTransferCenter *)self registerTransferWithDaemon:guid];
}

- (BOOL)doesLocalURLRequireArchiving:(id)archiving toHandle:(id)handle
{
  handleCopy = handle;
  archivingCopy = archiving;
  path = [archivingCopy path];
  defaultHFSFileManager = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
  v15 = 0;
  v9 = [defaultHFSFileManager attributesOfItemAtPath:path error:&v15];

  LOBYTE(defaultHFSFileManager) = [MEMORY[0x1E69A8078] _doesLocalURLRequireArchiving:archivingCopy];
  v10 = [handleCopy hasCapability:0x80000000000];

  v11 = [v9 objectForKey:*MEMORY[0x1E696A3D8]];
  v12 = [v11 isEqual:*MEMORY[0x1E696A3E0]];

  if (defaultHFSFileManager)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 & (v10 ^ 1);
  }

  return v13;
}

- (id)createNewOutgoingTransferWithLocalFileURL:(id)l
{
  lCopy = l;
  v5 = IMTemporaryFileTransferGUIDForNewOutgoingTransfer();
  [(IMFileTransferCenter *)self createNewOutgoingFileTransferWithTransferGUID:v5 localFileURL:lCopy];

  return v5;
}

- (id)createNewOutgoingGroupPhotoTransferWithLocalFileURL:(id)l
{
  lCopy = l;
  v5 = IMTemporaryFileTransferGUIDForNewOutgoingTransfer();
  v6 = IMFileTransferGUIDForAttachmentMessagePartAtMessageGUIDAndMessagePartIndex();
  [(IMFileTransferCenter *)self createNewOutgoingFileTransferWithTransferGUID:v6 localFileURL:lCopy];

  return v6;
}

- (void)createNewOutgoingFileTransferWithTransferGUID:(id)d localFileURL:(id)l
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  lCopy = l;
  path = [lCopy path];
  defaultHFSFileManager = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
  v24 = 0;
  v9 = [defaultHFSFileManager attributesOfItemAtPath:path error:&v24];
  v22 = v24;

  v10 = [v9 objectForKey:*MEMORY[0x1E696A3D8]];
  v11 = [v10 isEqual:*MEMORY[0x1E696A3E0]];

  v12 = objc_alloc([objc_opt_class() fileTransferClass]);
  lastPathComponent = [path lastPathComponent];
  fileSize = [v9 fileSize];
  LODWORD(defaultHFSFileManager) = [v9 fileHFSTypeCode];
  LODWORD(v10) = [v9 fileHFSCreatorCode];
  BYTE2(v21) = 0;
  LOWORD(v21) = [v9 fileHFSFlags];
  v15 = [v12 _initWithGUID:dCopy filename:lastPathComponent isDirectory:v11 localURL:lCopy account:0 otherPerson:0 totalBytes:fileSize hfsType:__PAIR64__(v10 hfsCreator:defaultHFSFileManager) hfsFlags:v21 isIncoming:?];

  if ([(IMFileTransferCenter *)self shouldIssueSandboxEstensionsForTransfers])
  {
    v16 = path;
    [path UTF8String];
    v17 = sandbox_extension_issue_file();
    if (v17)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:4];
      free(v17);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = *__error();
          *buf = 138412546;
          v26 = path;
          v27 = 1024;
          v28 = v20;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Failed to issue sandbox extension for path %@, errno %d", buf, 0x12u);
        }
      }

      v18 = 0;
    }

    [v15 setSandboxToken:v18];
  }

  [(IMFileTransferCenter *)self _addTransfer:v15];
}

- (BOOL)registerGUID:(id)d forNewOutgoingTransferWithLocalURL:(id)l
{
  dCopy = d;
  lCopy = l;
  v8 = [dCopy length];
  if (v8)
  {
    path = [lCopy path];
    defaultHFSFileManager = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
    v22 = 0;
    v11 = [defaultHFSFileManager attributesOfItemAtPath:path error:&v22];

    v12 = [v11 objectForKey:*MEMORY[0x1E696A3D8]];
    v13 = [v12 isEqual:*MEMORY[0x1E696A3E0]];

    v14 = [(IMFileTransferCenter *)self transferForGUID:dCopy];
    if (!v14)
    {
      v21 = objc_alloc([objc_opt_class() fileTransferClass]);
      lastPathComponent = [path lastPathComponent];
      fileSize = [v11 fileSize];
      fileHFSTypeCode = [v11 fileHFSTypeCode];
      fileHFSCreatorCode = [v11 fileHFSCreatorCode];
      BYTE2(v19) = 0;
      LOWORD(v19) = [v11 fileHFSFlags];
      v14 = [v21 _initWithGUID:dCopy filename:lastPathComponent isDirectory:v13 localURL:lCopy account:0 otherPerson:0 totalBytes:fileSize hfsType:__PAIR64__(fileHFSCreatorCode hfsCreator:fileHFSTypeCode) hfsFlags:v19 isIncoming:?];
    }

    [(IMFileTransferCenter *)self _addTransfer:v14];
  }

  return v8 != 0;
}

- (void)assignTransfer:(id)transfer toMessage:(id)message account:(id)account
{
  v24 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  messageCopy = message;
  accountCopy = account;
  v11 = [(IMFileTransferCenter *)self transferForGUID:transferCopy];
  if (v11)
  {
    uniqueID = [accountCopy uniqueID];
    [v11 _setAccount:uniqueID otherPerson:0];
    guid = [messageCopy guid];
    [v11 setMessageGUID:guid];

    [(IMFileTransferCenter *)self _addTransfer:v11 toAccount:uniqueID];
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = transferCopy;
        v22 = 2112;
        v23 = messageCopy;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Adding transfer guid: %@ to message: %@", &v20, 0x16u);
      }
    }

    v15 = +[IMDaemonController sharedController];
    remoteDaemon = [v15 remoteDaemon];
    _dictionaryRepresentation = [v11 _dictionaryRepresentation];
    [remoteDaemon fileTransfer:transferCopy createdWithProperties:_dictionaryRepresentation];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferCreatedNotification" object:v11];
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = transferCopy;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Not assigning transfer guid: %@   transfer doesn't exist", &v20, 0xCu);
    }
  }
}

- (void)assignTransfer:(id)transfer toHandle:(id)handle
{
  v23 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  handleCopy = handle;
  v8 = [(IMFileTransferCenter *)self transferForGUID:transferCopy];
  if (v8)
  {
    account = [handleCopy account];
    uniqueID = [account uniqueID];

    localURL = [v8 localURL];
    v12 = [(IMFileTransferCenter *)self doesLocalURLRequireArchiving:localURL toHandle:handleCopy];

    if (v12)
    {
      [v8 _setForceArchive:1];
    }

    v13 = [handleCopy ID];
    [v8 _setAccount:uniqueID otherPerson:v13];

    [(IMFileTransferCenter *)self _addTransfer:v8 toAccount:uniqueID];
    v14 = +[IMDaemonController sharedController];
    remoteDaemon = [v14 remoteDaemon];
    _dictionaryRepresentation = [v8 _dictionaryRepresentation];
    [remoteDaemon fileTransfer:transferCopy createdWithProperties:_dictionaryRepresentation];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferCreatedNotification" object:v8];
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = 138412546;
      v20 = transferCopy;
      v21 = 2112;
      v22 = handleCopy;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Not assigning transfer guid: %@ to handle: %@  transfer doesn't exist", &v19, 0x16u);
    }
  }
}

- (void)registerTransferWithDaemon:(id)daemon
{
  v12 = *MEMORY[0x1E69E9840];
  daemonCopy = daemon;
  v5 = [(IMFileTransferCenter *)self transferForGUID:daemonCopy];
  if (v5)
  {
    v6 = +[IMDaemonController sharedController];
    remoteDaemon = [v6 remoteDaemon];
    _dictionaryRepresentation = [v5 _dictionaryRepresentation];
    [remoteDaemon fileTransfer:daemonCopy createdWithProperties:_dictionaryRepresentation];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = daemonCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Could not register transfer with daemon %@", &v10, 0xCu);
    }
  }
}

- (id)chatForTransfer:(id)transfer
{
  v19 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  messageGUID = [transferCopy messageGUID];

  if (messageGUID)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = +[IMChatRegistry sharedRegistry];
    cachedChats = [v5 cachedChats];

    v7 = [cachedChats countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(cachedChats);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          messageGUID2 = [transferCopy messageGUID];
          v12 = [v10 messageForGUID:messageGUID2];

          if (v12)
          {
            v7 = v10;

            goto LABEL_12;
          }
        }

        v7 = [cachedChats countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)transferForGUID:(id)d includeRemoved:(BOOL)removed
{
  removedCopy = removed;
  dCopy = d;
  v7 = [(NSMutableDictionary *)self->_guidToTransferMap objectForKey:dCopy];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !removedCopy;
  }

  if (!v8)
  {
    v7 = [(NSMutableDictionary *)self->_guidToRemovedTransferMap objectForKey:dCopy];
  }

  return v7;
}

- (void)downloadFileTransferWithLocalURL:(id)l completion:(id)completion
{
  v52 = *MEMORY[0x1E69E9840];
  lCopy = l;
  aBlock = completion;
  if (lCopy)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    transfers = [(IMFileTransferCenter *)self transfers];
    allKeys = [transfers allKeys];

    v8 = [allKeys countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v8)
    {
      v9 = *v44;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v44 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = [(IMFileTransferCenter *)self transferForGUID:*(*(&v43 + 1) + 8 * i)];
          v12 = v11;
          if (v11)
          {
            localPath = [v11 localPath];
            v14 = localPath == 0;

            if (!v14)
            {
              localPath2 = [v12 localPath];
              absoluteString = [lCopy absoluteString];
              v17 = [localPath2 containsString:absoluteString];

              if (((aBlock != 0) & v17) == 1)
              {
                aBlock[2](aBlock, 1, 0);
              }
            }
          }
        }

        v8 = [allKeys countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v8);
    }

    if (aBlock)
    {
      if (!self->_disconnectionListenerSetUp)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:self selector:sel__daemonDisconnected_ name:@"__kIMDaemonDidDisconnectNotification" object:0];

        self->_disconnectionListenerSetUp = 1;
      }

      redownloadlocalFilesWithURLCompletionHandlers = self->_redownloadlocalFilesWithURLCompletionHandlers;
      if (!redownloadlocalFilesWithURLCompletionHandlers)
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v21 = self->_redownloadlocalFilesWithURLCompletionHandlers;
        self->_redownloadlocalFilesWithURLCompletionHandlers = v20;

        redownloadlocalFilesWithURLCompletionHandlers = self->_redownloadlocalFilesWithURLCompletionHandlers;
      }

      absoluteString2 = [lCopy absoluteString];
      v23 = [(NSMutableDictionary *)redownloadlocalFilesWithURLCompletionHandlers objectForKeyedSubscript:absoluteString2];
      v24 = v23 == 0;

      if (v24)
      {
        array = [MEMORY[0x1E695DF70] array];
        v26 = self->_redownloadlocalFilesWithURLCompletionHandlers;
        absoluteString3 = [lCopy absoluteString];
        [(NSMutableDictionary *)v26 setObject:array forKeyedSubscript:absoluteString3];
      }

      v28 = self->_redownloadlocalFilesWithURLCompletionHandlers;
      absoluteString4 = [lCopy absoluteString];
      v30 = [(NSMutableDictionary *)v28 objectForKeyedSubscript:absoluteString4];
      v31 = _Block_copy(aBlock);
      [v30 addObject:v31];

      [(IMFileTransferCenter *)self _registerDaemonListenerIfNecessary];
      v32 = +[IMDaemonController sharedController];
      remoteDaemon = [v32 remoteDaemon];
      [remoteDaemon downloadFileTransferWithLocalURL:lCopy];

      goto LABEL_27;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v51 = "[IMFileTransferCenter downloadFileTransferWithLocalURL:completion:]";
        _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "%s invalid URL passed", buf, 0xCu);
      }
    }

    if (aBlock)
    {
      v35 = MEMORY[0x1E696ABC0];
      v48[0] = *MEMORY[0x1E696A578];
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      v37 = [mainBundle localizedStringForKey:@"File transfer local file url retrieval operation was unsuccessful." value:&stru_1F1B76F98 table:0];
      v49[0] = v37;
      v48[1] = *MEMORY[0x1E696A588];
      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      v39 = [mainBundle2 localizedStringForKey:@"The given URL was empty." value:&stru_1F1B76F98 table:0];
      v49[1] = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
      v32 = [v35 errorWithDomain:*MEMORY[0x1E69A7008] code:24 userInfo:v40];

      (aBlock)[2](aBlock, 0, v32);
LABEL_27:
    }
  }
}

- (void)acceptTransfer:(id)transfer withPath:(id)path autoRename:(BOOL)rename overwrite:(BOOL)overwrite
{
  overwriteCopy = overwrite;
  renameCopy = rename;
  v26 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  pathCopy = path;
  if (![(IMFileTransferCenter *)self isActiveTransfer:transferCopy])
  {
    v12 = [(IMFileTransferCenter *)self transferForGUID:transferCopy];
    [v12 _resetTransferStateIfAttachmentIsMissingAndDownloadable];
    if (v12 && [v12 transferState]<= 0)
    {
      [(IMFileTransferCenter *)self _addActiveTransfer:transferCopy];
      [v12 _setTransferState:1];
      if (pathCopy)
      {
        v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
        [v12 _setLocalURL:v16];
      }

      v17 = +[IMDaemonController sharedController];
      remoteDaemon = [v17 remoteDaemon];
      v19 = remoteDaemon;
      if (pathCopy)
      {
        [remoteDaemon fileTransfer:transferCopy acceptedWithPath:pathCopy autoRename:renameCopy overwrite:overwriteCopy options:0];
      }

      else
      {
        localPath = [v12 localPath];
        [v19 fileTransfer:transferCopy acceptedWithPath:localPath autoRename:renameCopy overwrite:overwriteCopy options:0];
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferUpdatedNotification" object:v12];
    }

    else if (IMIsRunningInAutomation())
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSObject transferState](v12, "transferState")}];
          v22 = 138412546;
          v23 = v12;
          v24 = 2112;
          v25 = v14;
          _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "We tried to accept a file transfer whose transfer state was greater than the accepted state or we got back a nil transfer -- transfer: %@ transfer state: %@", &v22, 0x16u);
        }
      }

      mEMORY[0x1E69A7FE0] = [MEMORY[0x1E69A7FE0] sharedInstance];
      [mEMORY[0x1E69A7FE0] postCoreAutomationNotificationFinishedTapToDownload:transferCopy downloadedFromCloudKitSuccessfully:0];
    }

    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = transferCopy;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Asked to accept transfer %@ which is already in progress. Returning early.", &v22, 0xCu);
    }

LABEL_20:
  }
}

- (void)acceptTransferAndUpdateReasonForTapped:(id)tapped
{
  v12 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  if ([(IMFileTransferCenter *)self isActiveTransfer:tappedCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = tappedCopy;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Asked to accept transfer %@ which is already in progress. Returning early.", &v10, 0xCu);
      }
    }
  }

  else
  {
    v6 = [(IMFileTransferCenter *)self transferForGUID:tappedCopy];
    [v6 setUpdateReason:3];
    v7 = +[IMDaemonController sharedController];
    remoteDaemon = [v7 remoteDaemon];
    _dictionaryRepresentation = [v6 _dictionaryRepresentation];
    [remoteDaemon fileTransfer:tappedCopy updatedWithProperties:_dictionaryRepresentation];

    [(IMFileTransferCenter *)self acceptTransfer:tappedCopy withPath:0 autoRename:1 overwrite:1];
  }
}

- (void)stopTransfer:(id)transfer
{
  v13 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  v5 = [(IMFileTransferCenter *)self transferForGUID:transferCopy];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = transferCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "stopping transfer to guid %@", &v11, 0xCu);
    }
  }

  if (v5 && ([v5 isFinished] & 1) == 0)
  {
    [(IMFileTransferCenter *)self _removeActiveTransfer:transferCopy];
    [(IMFileTransferCenter *)self _removePendingTransfer:transferCopy];
    if ([v5 transferState])
    {
      v7 = 10;
    }

    else if ([v5 isIncoming])
    {
      v7 = 12;
    }

    else
    {
      v7 = 10;
    }

    [v5 _setTransferState:{objc_msgSend(v5, "finalTransferStateForSuccess:", 0)}];
    [v5 _setError:v7];
    v8 = +[IMDaemonController sharedController];
    remoteDaemon = [v8 remoteDaemon];
    [remoteDaemon fileTransferStopped:transferCopy];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferUpdatedNotification" object:v5];
  }
}

- (void)removeTransfer:(id)transfer
{
  transferCopy = transfer;
  [(IMFileTransferCenter *)self _removeActiveTransfer:transferCopy];
  [(IMFileTransferCenter *)self _removePendingTransfer:transferCopy];
  v4 = [(IMFileTransferCenter *)self transferForGUID:transferCopy];
  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferRemovedNotification" object:v4];

    guidToRemovedTransferMap = self->_guidToRemovedTransferMap;
    if (!guidToRemovedTransferMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v8 = self->_guidToRemovedTransferMap;
      self->_guidToRemovedTransferMap = Mutable;

      guidToRemovedTransferMap = self->_guidToRemovedTransferMap;
    }

    [(NSMutableDictionary *)guidToRemovedTransferMap setObject:v4 forKey:transferCopy];
    accountIDToTransferGUIDsMap = self->_accountIDToTransferGUIDsMap;
    accountID = [v4 accountID];
    v11 = [(NSMutableDictionary *)accountIDToTransferGUIDsMap objectForKey:accountID];
    [v11 removeObject:transferCopy];

    [(NSMutableDictionary *)self->_guidToTransferMap removeObjectForKey:transferCopy];
    if (![(NSMutableDictionary *)self->_guidToTransferMap count])
    {
      guidToTransferMap = self->_guidToTransferMap;
      self->_guidToTransferMap = 0;
    }

    v13 = +[IMDaemonController sharedController];
    remoteDaemon = [v13 remoteDaemon];
    [remoteDaemon fileTransferRemoved:transferCopy];
  }
}

- (void)deleteTransfer:(id)transfer
{
  transferCopy = transfer;
  v4 = [(IMFileTransferCenter *)self transferForGUID:transferCopy];
  [(IMFileTransferCenter *)self _removeActiveTransfer:transferCopy];
  [(IMFileTransferCenter *)self _removePendingTransfer:transferCopy];
  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferRemovedNotification" object:v4];

    guidToRemovedTransferMap = self->_guidToRemovedTransferMap;
    if (!guidToRemovedTransferMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v8 = self->_guidToRemovedTransferMap;
      self->_guidToRemovedTransferMap = Mutable;

      guidToRemovedTransferMap = self->_guidToRemovedTransferMap;
    }

    [(NSMutableDictionary *)guidToRemovedTransferMap setObject:v4 forKey:transferCopy];
    accountIDToTransferGUIDsMap = self->_accountIDToTransferGUIDsMap;
    accountID = [v4 accountID];
    v11 = [(NSMutableDictionary *)accountIDToTransferGUIDsMap objectForKey:accountID];
    [v11 removeObject:transferCopy];

    [(NSMutableDictionary *)self->_guidToTransferMap removeObjectForKey:transferCopy];
    if (![(NSMutableDictionary *)self->_guidToTransferMap count])
    {
      guidToTransferMap = self->_guidToTransferMap;
      self->_guidToTransferMap = 0;
    }

    v13 = +[IMDaemonController sharedController];
    remoteDaemon = [v13 remoteDaemon];
    [remoteDaemon fileTransferRemoved:transferCopy];

    v15 = +[IMDaemonController sharedController];
    remoteDaemon2 = [v15 remoteDaemon];
    [remoteDaemon2 deleteFileTransferWithGUID:transferCopy];
  }
}

- (void)retargetTransfer:(id)transfer toPath:(id)path
{
  pathCopy = path;
  transferCopy = transfer;
  v13 = [(IMFileTransferCenter *)self transferForGUID:transferCopy];
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];

  [v13 _setLocalURL:v8];
  v9 = +[IMDaemonController sharedController];
  remoteDaemon = [v9 remoteDaemon];
  _dictionaryRepresentation = [v13 _dictionaryRepresentation];
  [remoteDaemon fileTransfer:transferCopy updatedWithProperties:_dictionaryRepresentation];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferUpdatedNotification" object:v13];
}

- (id)transfersForAccount:(id)account
{
  v19 = *MEMORY[0x1E69E9840];
  uniqueID = [account uniqueID];
  v5 = [(NSMutableDictionary *)self->_accountIDToTransferGUIDsMap objectForKey:uniqueID];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(IMFileTransferCenter *)self transferForGUID:*(*(&v14 + 1) + 8 * i), v14];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (NSArray)orderedTransfers
{
  v3 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"createdDate" ascending:1];
  v4 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"filename" ascending:1];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v3, v4, 0}];
  allValues = [(NSMutableDictionary *)self->_guidToTransferMap allValues];
  v7 = [allValues sortedArrayUsingDescriptors:v5];

  return v7;
}

- (NSArray)orderedTransfersGUIDs
{
  v3 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"createdDate" ascending:1];
  v4 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"filename" ascending:1];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v3, v4, 0}];
  allValues = [(NSMutableDictionary *)self->_guidToTransferMap allValues];
  v7 = [allValues sortedArrayUsingDescriptors:v5];

  return v7;
}

- (void)clearFinishedTransfers
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_guidToTransferMap count])
  {
    v3 = objc_alloc(MEMORY[0x1E695DF70]);
    allValues = [(NSMutableDictionary *)self->_guidToTransferMap allValues];
    v5 = [v3 initWithArray:allValues];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          if ([v11 isFinished])
          {
            guid = [v11 guid];
            [(IMFileTransferCenter *)self _removeActiveTransfer:guid];
            [(IMFileTransferCenter *)self _removePendingTransfer:guid];
            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferRemovedNotification" object:v11];

            guidToRemovedTransferMap = self->_guidToRemovedTransferMap;
            if (!guidToRemovedTransferMap)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v16 = self->_guidToRemovedTransferMap;
              self->_guidToRemovedTransferMap = Mutable;

              guidToRemovedTransferMap = self->_guidToRemovedTransferMap;
            }

            [(NSMutableDictionary *)guidToRemovedTransferMap setObject:v11 forKey:guid];
            accountIDToTransferGUIDsMap = self->_accountIDToTransferGUIDsMap;
            accountID = [v11 accountID];
            v19 = [(NSMutableDictionary *)accountIDToTransferGUIDsMap objectForKey:accountID];
            [v19 removeObject:guid];

            [(NSMutableDictionary *)self->_guidToTransferMap removeObjectForKey:guid];
            if (![(NSMutableDictionary *)self->_guidToTransferMap count])
            {
              guidToTransferMap = self->_guidToTransferMap;
              self->_guidToTransferMap = 0;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)isFileTransfer:(id)transfer preauthorizedWithDictionary:(id)dictionary
{
  transferCopy = transfer;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKey:@"sPreauthorizedTransferDictionaryOtherPersonKey"];
  v8 = [dictionaryCopy objectForKey:@"sPreauthorizedTransferDictionaryAccountKey"];
  v9 = [dictionaryCopy objectForKey:@"sPreauthorizedTransferDictionaryFilenameKey"];

  if ([transferCopy transferState])
  {
    v10 = 0;
  }

  else
  {
    otherPerson = [transferCopy otherPerson];
    if ([otherPerson isEqualToString:v7])
    {
      accountID = [transferCopy accountID];
      if ([accountID isEqualToString:v8])
      {
        filename = [transferCopy filename];
        v10 = [filename isEqualToString:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)preauthorizeFileTransferFromOtherPerson:(id)person account:(id)account filename:(id)filename saveToPath:(id)path
{
  v33 = *MEMORY[0x1E69E9840];
  personCopy = person;
  accountCopy = account;
  filenameCopy = filename;
  pathCopy = path;
  if (personCopy && accountCopy && filenameCopy)
  {
    if (!self->_preauthorizedInfos)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      preauthorizedInfos = self->_preauthorizedInfos;
      self->_preauthorizedInfos = v14;
    }

    v27 = pathCopy;
    v16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{personCopy, @"sPreauthorizedTransferDictionaryOtherPersonKey", accountCopy, @"sPreauthorizedTransferDictionaryAccountKey", filenameCopy, @"sPreauthorizedTransferDictionaryFilenameKey", pathCopy, @"sPreauthorizedTransferDictionarySaveToPathKey", 0}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    allValues = [(NSMutableDictionary *)self->_guidToTransferMap allValues];
    v18 = [allValues countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(allValues);
          }

          v22 = *(*(&v28 + 1) + 8 * i);
          if ([(IMFileTransferCenter *)self isFileTransfer:v22 preauthorizedWithDictionary:v16])
          {
            guid = [v22 guid];
            pathCopy = v27;
            [(IMFileTransferCenter *)self acceptTransfer:guid withPath:v27 autoRename:1 overwrite:0];
            preauthorizedGUIDs = self->_preauthorizedGUIDs;
            if (!preauthorizedGUIDs)
            {
              v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v26 = self->_preauthorizedGUIDs;
              self->_preauthorizedGUIDs = v25;

              preauthorizedGUIDs = self->_preauthorizedGUIDs;
            }

            [(NSMutableArray *)preauthorizedGUIDs addObject:guid];

            goto LABEL_18;
          }
        }

        v19 = [allValues countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    [(NSMutableArray *)self->_preauthorizedInfos addObject:v16];
    pathCopy = v27;
LABEL_18:
  }
}

- (void)acceptFileTransferIfPreauthorzed:(id)preauthorzed
{
  v20 = *MEMORY[0x1E69E9840];
  preauthorzedCopy = preauthorzed;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  preauthorizedInfos = self->_preauthorizedInfos;
  v6 = [(NSMutableArray *)preauthorizedInfos countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(preauthorizedInfos);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      if ([(IMFileTransferCenter *)self isFileTransfer:preauthorzedCopy preauthorizedWithDictionary:v9, v15])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableArray *)preauthorizedInfos countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    v10 = [v9 objectForKey:@"sPreauthorizedTransferDictionarySaveToPathKey"];
    guid = [preauthorzedCopy guid];
    [(IMFileTransferCenter *)self acceptTransfer:guid withPath:v10 autoRename:1 overwrite:0];
    v6 = v9;
    preauthorizedGUIDs = self->_preauthorizedGUIDs;
    if (!preauthorizedGUIDs)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = self->_preauthorizedGUIDs;
      self->_preauthorizedGUIDs = v13;

      preauthorizedGUIDs = self->_preauthorizedGUIDs;
    }

    [(NSMutableArray *)preauthorizedGUIDs addObject:guid];

    if (v6)
    {
      [(NSMutableArray *)self->_preauthorizedInfos removeObject:v6];
      if (![(NSMutableArray *)self->_preauthorizedInfos count])
      {
        preauthorizedInfos = self->_preauthorizedInfos;
        self->_preauthorizedInfos = 0;
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
  }
}

- (void)_handleAllFileTransfers:(id)transfers
{
  v18 = *MEMORY[0x1E69E9840];
  transfersCopy = transfers;
  [(IMFileTransferCenter *)self _clearTransfers];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [transfersCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = [transfersCopy objectForKey:*(*(&v13 + 1) + 8 * v9)];
        v11 = objc_alloc_init([objc_opt_class() fileTransferClass]);
        [v11 _updateWithDictionaryRepresentation:v10];
        [(IMFileTransferCenter *)self _addTransfer:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferRefreshAllNotification" object:transfersCopy];
}

- (void)_handleSerializedFileTransfers:(id)transfers
{
  v17 = *MEMORY[0x1E69E9840];
  transfersCopy = transfers;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [transfersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(transfersCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        _dictionaryRepresentationGUIDKey = [MEMORY[0x1E69A8078] _dictionaryRepresentationGUIDKey];
        v11 = [v9 objectForKeyedSubscript:_dictionaryRepresentationGUIDKey];

        [(IMFileTransferCenter *)self _handleFileTransfer:v11 createdWithProperties:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [transfersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_handleFileTransfer:(id)transfer createdWithProperties:(id)properties
{
  v19 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  propertiesCopy = properties;
  v8 = [(IMFileTransferCenter *)self transferForGUID:transferCopy];
  if (v8)
  {
    [(IMFileTransferCenter *)self _handleFileTransfer:transferCopy updatedWithProperties:propertiesCopy];
  }

  else
  {
    v8 = objc_alloc_init([objc_opt_class() fileTransferClass]);
    v9 = [v8 _updateWithDictionaryRepresentation:propertiesCopy];
    [(IMFileTransferCenter *)self _addTransfer:v8];
    v10 = IMOSLoggingEnabled();
    if (v9)
    {
      if (v10)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E69A7010]];
          v15 = 138412546;
          v16 = v8;
          v17 = 2112;
          v18 = v12;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Posting transfer created: %@  transferName: %@", &v15, 0x16u);
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferCreatedNotification" object:v8];
    }

    else if (v10)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Nothing changed for create, not posting for: %@", &v15, 0xCu);
      }
    }

    [(IMFileTransferCenter *)self acceptFileTransferIfPreauthorzed:v8];
  }
}

- (void)_handleFileTransfers:(id)transfers createdWithLocalPaths:(id)paths
{
  v17 = *MEMORY[0x1E69E9840];
  transfersCopy = transfers;
  pathsCopy = paths;
  v8 = [transfersCopy count];
  if (v8 == [pathsCopy count])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A82C7360;
    v10[3] = &unk_1E7811580;
    v11 = pathsCopy;
    selfCopy = self;
    [transfersCopy enumerateObjectsUsingBlock:v10];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v14 = transfersCopy;
      v15 = 2112;
      v16 = pathsCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "IMFileTransferCenter: number of new file transfers %@ does not match number of local urls %@.", buf, 0x16u);
    }
  }
}

- (void)_handleFileTransfer:(id)transfer updatedWithProperties:(id)properties
{
  v28 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  propertiesCopy = properties;
  v8 = [(IMFileTransferCenter *)self transferForGUID:transferCopy];
  v9 = v8;
  if (v8)
  {
    transferState = [v8 transferState];
    isFinished = [v9 isFinished];
    v12 = [v9 _updateWithDictionaryRepresentation:propertiesCopy];
    if ([v9 isFromMomentShare] && ((objc_msgSend(v9, "transferState") == 5) & isFinished) == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v24 = 138412290;
          v25 = v9;
          _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Overriding changed for CMM transfer %@", &v24, 0xCu);
        }
      }

      v12 = 1;
    }

    transferState2 = [v9 transferState];
    if ((isFinished & 1) != 0 || ![v9 isFinished])
    {
      v15 = 0;
      if (transferState <= 1 && transferState2 >= 2)
      {
        [(IMFileTransferCenter *)self _addActiveTransfer:transferCopy];
        v15 = 0;
      }
    }

    else
    {
      [(IMFileTransferCenter *)self _removeActiveTransfer:transferCopy];
      [(IMFileTransferCenter *)self _removePendingTransfer:transferCopy];
      v15 = 1;
    }

    if ([(IMFileTransferCenter *)self isActiveTransfer:transferCopy]&& IMFileTransferStateIsNotActive())
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = IMStringFromTransferState();
          v24 = 138412546;
          v25 = transferCopy;
          v26 = 2112;
          v27 = v17;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Removing %@ from active transfers, as newState is %@", &v24, 0x16u);
        }
      }

      [(IMFileTransferCenter *)self _removeActiveTransfer:transferCopy];
    }

    v18 = IMOSLoggingEnabled();
    if (v12)
    {
      if (v18)
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v24 = 138412290;
          v25 = transferCopy;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Posting transfer, guid: %@", &v24, 0xCu);
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferUpdatedNotification" object:v9];
    }

    else if (v18)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = transferCopy;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Nothing changed for update, not posting, guid: %@", &v24, 0xCu);
      }
    }

    if (v15)
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v24 = 138412290;
          v25 = transferCopy;
          _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Posting transfer, guid: %@  finished", &v24, 0xCu);
        }
      }

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 __mainThreadPostNotificationName:@"__kIMFileTransferFinishedNotification" object:v9];
    }
  }

  else
  {
    [(IMFileTransferCenter *)self _handleFileTransfer:transferCopy createdWithProperties:propertiesCopy];
  }
}

- (void)_handleFileTransfer:(id)transfer rejectedWithProperties:(id)properties
{
  v19 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  propertiesCopy = properties;
  v8 = [(IMFileTransferCenter *)self transferForGUID:transferCopy];
  if (!v8)
  {
    v8 = objc_alloc_init([objc_opt_class() fileTransferClass]);
  }

  [v8 _updateWithDictionaryRepresentation:propertiesCopy];
  if ([v8 error] == -1)
  {
    [v8 _setError:28];
    [v8 _setErrorDescription:@"File transfer was rejected."];
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "error")}];
      errorDescription = [v8 errorDescription];
      v13 = 138412802;
      v14 = transferCopy;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = errorDescription;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Transfer was rejected, guid: %@, error: %@, error description: %@", &v13, 0x20u);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferRejectedNotification" object:v8];
}

- (void)_handleFileTransfer:(id)transfer updatedWithCurrentBytes:(unint64_t)bytes totalBytes:(unint64_t)totalBytes averageTransferRate:(unint64_t)rate
{
  v29 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  v11 = [(IMFileTransferCenter *)self transferForGUID:transferCopy];
  if ([v11 currentBytes] == bytes && objc_msgSend(v11, "totalBytes") == totalBytes && objc_msgSend(v11, "averageTransferRate") == rate)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "transferState")}];
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:bytes];
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:totalBytes];
        v21 = 138413058;
        v22 = transferCopy;
        v23 = 2112;
        v24 = v13;
        v25 = 2112;
        v26 = v14;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Ignoring update for transfer guid: %@ state: %@ currentBytes: %@ totalBytes: %@ (values have not changed)", &v21, 0x2Au);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "transferState")}];
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:bytes];
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:totalBytes];
        v21 = 138413058;
        v22 = transferCopy;
        v23 = 2112;
        v24 = v17;
        v25 = 2112;
        v26 = v18;
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Updating transfer guid: %@ state: %@ currentBytes: %@ totalBytes: %@", &v21, 0x2Au);
      }
    }

    [v11 _setCurrentBytes:bytes totalBytes:totalBytes];
    [v11 _setAveragedTransferRate:rate lastAveragedInterval:0 lastAveragedBytes:0.0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferUpdatedNotification" object:v11];
  }
}

- (void)_handleFileTransferFinishedRemoteIntentDownload:(id)download
{
  v12 = *MEMORY[0x1E69E9840];
  downloadCopy = download;
  v5 = [(IMFileTransferCenter *)self transferForGUID:downloadCopy];
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = downloadCopy;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Finished remote intent download for guid: %@. Posting IMFileTransferUpdatedNotification.", &v10, 0xCu);
      }
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferUpdatedNotification" object:v5];
  }

  else if (v6)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = downloadCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Ignoring finished remote intent download notification for transfer guid: %@", &v10, 0xCu);
    }
  }
}

- (void)_handleFileTransfer:(id)transfer highQualityDownloadSucceededWithPath:(id)path
{
  v17 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  pathCopy = path;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v14 = transferCopy;
      v15 = 2112;
      v16 = pathCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "High quality download for transfer %@ succeeded at path %@", buf, 0x16u);
    }
  }

  v9 = [(NSMutableDictionary *)self->_fetchHighQualityVariantCompletionHandlers objectForKeyedSubscript:transferCopy];
  [(NSMutableDictionary *)self->_fetchHighQualityVariantCompletionHandlers setObject:0 forKeyedSubscript:transferCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A82C809C;
  v11[3] = &unk_1E78115A8;
  v12 = pathCopy;
  v10 = pathCopy;
  [v9 enumerateObjectsUsingBlock:v11];
}

- (void)_handleFileTransferHighQualityDownloadFailed:(id)failed
{
  v9 = *MEMORY[0x1E69E9840];
  failedCopy = failed;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = failedCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "High quality download for transfer %@ failed", &v7, 0xCu);
    }
  }

  v6 = [(NSMutableDictionary *)self->_fetchHighQualityVariantCompletionHandlers objectForKeyedSubscript:failedCopy];
  [(NSMutableDictionary *)self->_fetchHighQualityVariantCompletionHandlers setObject:0 forKeyedSubscript:failedCopy];
  [v6 enumerateObjectsUsingBlock:&unk_1F1B6E340];
}

- (void)_handleFileTransfer:(id)transfer explicitDownloadSucceededWithPath:(id)path livePhotoBundlePath:(id)bundlePath
{
  v30 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  pathCopy = path;
  bundlePathCopy = bundlePath;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v27 = transferCopy;
      v28 = 2112;
      v29 = pathCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Download for transfer %@ succeeded at path %@", buf, 0x16u);
    }
  }

  v12 = [(NSMutableDictionary *)self->_localFileURLRetrievalCompletionHandlers objectForKeyedSubscript:transferCopy];
  [(NSMutableDictionary *)self->_localFileURLRetrievalCompletionHandlers setObject:0 forKeyedSubscript:transferCopy];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1A82C8454;
  v23[3] = &unk_1E78115F0;
  v13 = pathCopy;
  v24 = v13;
  v14 = bundlePathCopy;
  v25 = v14;
  [v12 enumerateObjectsUsingBlock:v23];
  v15 = [(NSMutableDictionary *)self->_localFileURLRetrievalWithGuidCompletionHandlers objectForKeyedSubscript:transferCopy];
  [(NSMutableDictionary *)self->_localFileURLRetrievalWithGuidCompletionHandlers setObject:0 forKeyedSubscript:transferCopy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A82C8474;
  v19[3] = &unk_1E7811618;
  v20 = transferCopy;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = transferCopy;
  [v15 enumerateObjectsUsingBlock:v19];
}

- (void)_handleFileTransferExplicitDownloadFailed:(id)failed suggestedRetryGUID:(id)d error:(id)error
{
  v29 = *MEMORY[0x1E69E9840];
  failedCopy = failed;
  dCopy = d;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = failedCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Download for transfer %@ failed", buf, 0xCu);
    }
  }

  if (!failedCopy)
  {
    mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
    [mEMORY[0x1E69A8168] forceAutoBugCaptureWithSubType:@"FileTransferNilGUID" errorPayload:errorCopy];
  }

  v13 = [(NSMutableDictionary *)self->_localFileURLRetrievalCompletionHandlers objectForKeyedSubscript:failedCopy];
  [(NSMutableDictionary *)self->_localFileURLRetrievalCompletionHandlers setObject:0 forKeyedSubscript:failedCopy];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1A82C872C;
  v24[3] = &unk_1E78115F0;
  v14 = dCopy;
  v25 = v14;
  v15 = errorCopy;
  v26 = v15;
  [v13 enumerateObjectsUsingBlock:v24];
  v16 = [(NSMutableDictionary *)self->_localFileURLRetrievalWithGuidCompletionHandlers objectForKeyedSubscript:failedCopy];
  [(NSMutableDictionary *)self->_localFileURLRetrievalWithGuidCompletionHandlers setObject:0 forKeyedSubscript:failedCopy];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A82C874C;
  v20[3] = &unk_1E7811618;
  v21 = failedCopy;
  v22 = v14;
  v23 = v15;
  v17 = v15;
  v18 = v14;
  v19 = failedCopy;
  [v16 enumerateObjectsUsingBlock:v20];
}

- (void)_handleFileTransferDownloadSucceededWithLocalURL:(id)l
{
  v13 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = lCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Re-Download for transfer at URL %@ succeeded", &v11, 0xCu);
    }
  }

  redownloadlocalFilesWithURLCompletionHandlers = self->_redownloadlocalFilesWithURLCompletionHandlers;
  absoluteString = [lCopy absoluteString];
  v8 = [(NSMutableDictionary *)redownloadlocalFilesWithURLCompletionHandlers objectForKeyedSubscript:absoluteString];

  localFileURLRetrievalCompletionHandlers = self->_localFileURLRetrievalCompletionHandlers;
  absoluteString2 = [lCopy absoluteString];
  [(NSMutableDictionary *)localFileURLRetrievalCompletionHandlers setObject:0 forKeyedSubscript:absoluteString2];

  [v8 enumerateObjectsUsingBlock:&unk_1F1B6E360];
}

- (void)_handleFileTransferDownloadFailedWithLocalURL:(id)l error:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [errorCopy description];
      *buf = 138412546;
      v19 = lCopy;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Re-Download for transfer at URL %@ failed %@", buf, 0x16u);
    }
  }

  redownloadlocalFilesWithURLCompletionHandlers = self->_redownloadlocalFilesWithURLCompletionHandlers;
  absoluteString = [lCopy absoluteString];
  v12 = [(NSMutableDictionary *)redownloadlocalFilesWithURLCompletionHandlers objectForKeyedSubscript:absoluteString];

  localFileURLRetrievalCompletionHandlers = self->_localFileURLRetrievalCompletionHandlers;
  absoluteString2 = [lCopy absoluteString];
  [(NSMutableDictionary *)localFileURLRetrievalCompletionHandlers setObject:0 forKeyedSubscript:absoluteString2];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A82C8AA8;
  v16[3] = &unk_1E7811660;
  v17 = errorCopy;
  v15 = errorCopy;
  [v12 enumerateObjectsUsingBlock:v16];
}

- (void)setAuxImageForTransfer:(id)transfer value:(BOOL)value
{
  valueCopy = value;
  v18 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (valueCopy)
      {
        v8 = @"YES";
      }

      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = transferCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Setting Aux image to %@ for transfer %@", &v14, 0x16u);
    }
  }

  v9 = [(IMFileTransferCenter *)self transferForGUID:transferCopy];
  [v9 setIsAuxImage:valueCopy];
  v10 = +[IMDaemonController sharedController];
  remoteDaemon = [v10 remoteDaemon];
  _dictionaryRepresentation = [v9 _dictionaryRepresentation];
  [remoteDaemon fileTransfer:transferCopy updatedWithProperties:_dictionaryRepresentation];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferUpdatedNotification" object:v9];
}

- (void)setAuxVideoForTransfer:(id)transfer value:(BOOL)value
{
  valueCopy = value;
  v18 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (valueCopy)
      {
        v8 = @"YES";
      }

      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = transferCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Setting Aux video to %@ for transfer %@", &v14, 0x16u);
    }
  }

  v9 = [(IMFileTransferCenter *)self transferForGUID:transferCopy];
  [v9 setIsAuxVideo:valueCopy];
  v10 = +[IMDaemonController sharedController];
  remoteDaemon = [v10 remoteDaemon];
  _dictionaryRepresentation = [v9 _dictionaryRepresentation];
  [remoteDaemon fileTransfer:transferCopy updatedWithProperties:_dictionaryRepresentation];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferUpdatedNotification" object:v9];
}

- (void)setCommSafetySensitiveForTransfer:(id)transfer value:(int64_t)value
{
  v18 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:value];
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = transferCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Setting Communication Safety Sensitivity to %@ for transfer %@", &v14, 0x16u);
    }
  }

  v9 = [(IMFileTransferCenter *)self transferForGUID:transferCopy];
  [v9 setCommSafetySensitive:value];
  v10 = +[IMDaemonController sharedController];
  remoteDaemon = [v10 remoteDaemon];
  _dictionaryRepresentation = [v9 _dictionaryRepresentation];
  [remoteDaemon fileTransfer:transferCopy updatedWithProperties:_dictionaryRepresentation];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMFileTransferUpdatedNotification" object:v9];
}

- (id)guidsForStoredAttachmentPayloadData:(id)data messageGUID:(id)d
{
  v39 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dCopy = d;
  v26 = dataCopy;
  if ([dataCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v26;
    v7 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v7)
    {
      v29 = *v33;
      v28 = *MEMORY[0x1E69A7020];
      do
      {
        v8 = 0;
        do
        {
          if (*v33 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v32 + 1) + 8 * v8);
          stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
          v11 = [stringGUID stringByAppendingPathExtension:v28];

          if (IMIsRunningInMessages() & 1) != 0 || (IMIsRunningInMobileSMS() & 1) != 0 || (IMIsRunningInIMDPersistenceAgent())
          {
            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            v13 = [defaultManager im_randomTemporaryFileURLWithFileName:v11];
            path = [v13 path];
          }

          else
          {
            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            path = [defaultManager _randomTemporaryPathWithSuffix:v11 withAppendedPathComponent:@"com.apple.MobileSMS"];
          }

          stringByResolvingAndStandardizingPath = [path stringByResolvingAndStandardizingPath];

          v31 = 0;
          v16 = [v9 writeToFile:stringByResolvingAndStandardizingPath options:1 error:&v31];
          v17 = v31;
          if ((v16 & 1) == 0 && IMOSLoggingEnabled())
          {
            v18 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v37 = v17;
              _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "MessageService Failed writing attachment to disk on incoming: %@", buf, 0xCu);
            }
          }

          v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:stringByResolvingAndStandardizingPath isDirectory:0];
          v20 = [(IMFileTransferCenter *)self createNewOutgoingTransferWithLocalFileURL:v19];
          v21 = +[IMFileTransferCenter sharedInstance];
          v22 = [v21 transferForGUID:v20];

          if (v22)
          {
            [v22 setHideAttachment:1];
          }

          if (array && v20)
          {
            CFArrayAppendValue(array, v20);
          }

          ++v8;
        }

        while (v7 != v8);
        v23 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
        v7 = v23;
      }

      while (v23);
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (void)fetchHighQualityVariantForTransfer:(id)transfer completion:(id)completion
{
  transferCopy = transfer;
  completionCopy = completion;
  if (transferCopy)
  {
    guid = [transferCopy guid];
    [(IMFileTransferCenter *)self _fetchHighQualityVariantForTransferGUID:guid completion:completionCopy];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "fetchHighQualityVariantForTransfer:completion: was given no transfer", v10, 2u);
      }
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (void)_fetchHighQualityVariantForTransferGUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = completionCopy;
  if (dCopy)
  {
    if (completionCopy)
    {
      if (!self->_disconnectionListenerSetUp)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:self selector:sel__daemonDisconnected_ name:@"__kIMDaemonDidDisconnectNotification" object:0];

        self->_disconnectionListenerSetUp = 1;
      }

      fetchHighQualityVariantCompletionHandlers = self->_fetchHighQualityVariantCompletionHandlers;
      if (!fetchHighQualityVariantCompletionHandlers)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v12 = self->_fetchHighQualityVariantCompletionHandlers;
        self->_fetchHighQualityVariantCompletionHandlers = v11;

        fetchHighQualityVariantCompletionHandlers = self->_fetchHighQualityVariantCompletionHandlers;
      }

      v13 = [(NSMutableDictionary *)fetchHighQualityVariantCompletionHandlers objectForKeyedSubscript:dCopy];

      if (!v13)
      {
        array = [MEMORY[0x1E695DF70] array];
        [(NSMutableDictionary *)self->_fetchHighQualityVariantCompletionHandlers setObject:array forKeyedSubscript:dCopy];
      }

      v15 = [(NSMutableDictionary *)self->_fetchHighQualityVariantCompletionHandlers objectForKeyedSubscript:dCopy];
      v16 = _Block_copy(v8);
      [v15 addObject:v16];
    }

    [(IMFileTransferCenter *)self _initiateHighQualityVariantDownloadWithDaemonForGUID:dCopy];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "fetchHighQualityVariantForTransfer:completion: was given no transfer guid", v18, 2u);
      }
    }

    if (v8)
    {
      v8[2](v8, 0, 0);
    }
  }
}

- (void)_initiateHighQualityVariantDownloadWithDaemonForGUID:(id)d
{
  dCopy = d;
  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon downloadHighQualityVariantOfFileTransferWithGUID:dCopy];
}

- (void)_daemonRestarted:(id)restarted
{
  fetchHighQualityVariantCompletionHandlers = self->_fetchHighQualityVariantCompletionHandlers;
  self->_fetchHighQualityVariantCompletionHandlers = 0;
  v4 = fetchHighQualityVariantCompletionHandlers;

  [(NSMutableDictionary *)v4 enumerateKeysAndObjectsUsingBlock:&unk_1F1B6E380];
}

- (void)_daemonDisconnected:(id)disconnected
{
  v23[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E69A7000];
  v22[0] = *MEMORY[0x1E696A578];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [mainBundle localizedStringForKey:@"File transfer local file URL retrieval operation was unsuccessful." value:&stru_1F1B76F98 table:0];
  v23[0] = v7;
  v22[1] = *MEMORY[0x1E696A588];
  mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [mainBundle2 localizedStringForKey:@"The daemon disconnected." value:&stru_1F1B76F98 table:0];
  v23[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v11 = [v4 errorWithDomain:v5 code:24 userInfo:v10];

  localFileURLRetrievalCompletionHandlers = self->_localFileURLRetrievalCompletionHandlers;
  self->_localFileURLRetrievalCompletionHandlers = 0;
  v13 = localFileURLRetrievalCompletionHandlers;

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A82C994C;
  v20[3] = &unk_1E78116D0;
  v14 = v11;
  v21 = v14;
  [(NSMutableDictionary *)v13 enumerateKeysAndObjectsUsingBlock:v20];
  localFileURLRetrievalWithGuidCompletionHandlers = self->_localFileURLRetrievalWithGuidCompletionHandlers;
  self->_localFileURLRetrievalWithGuidCompletionHandlers = 0;
  v16 = localFileURLRetrievalWithGuidCompletionHandlers;

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1A82C99FC;
  v18[3] = &unk_1E78116D0;
  v19 = v14;
  v17 = v14;
  [(NSMutableDictionary *)v16 enumerateKeysAndObjectsUsingBlock:v18];
}

- (void)preWarmConnection
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "IMTransferCenter is asked for prewarm", v5, 2u);
    }
  }

  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon preWarm];
}

- (void)retrieveLocalFileURLForFileTransferWithGUID:(id)d options:(int64_t)options completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if ([dCopy length])
  {
    v10 = [(IMFileTransferCenter *)self transferForGUID:dCopy];
    if ([v10 existsAtLocalPath])
    {
      if (completionCopy)
      {
        localPath = [v10 localPath];
        localPath2 = [v10 localPath];
        im_livePhotoBundlePath = [localPath2 im_livePhotoBundlePath];
        (*(completionCopy + 2))(completionCopy, 1, 0, localPath, im_livePhotoBundlePath, 0);
      }
    }

    else if ([v10 isInThumbnailState])
    {
      if (completionCopy)
      {
        v21 = MEMORY[0x1E696ABC0];
        mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
        v23 = [mainBundle localizedStringForKey:@"File transfer local file url retrieval operation was unsuccessful." value:&stru_1F1B76F98 table:0];
        v37[0] = v23;
        v36[1] = *MEMORY[0x1E696A588];
        mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
        v25 = [mainBundle2 localizedStringForKey:@"The given GUID references an attachment which is in thumbnail state. You don't want to analyze this value:Skip and retry later table:{user did not tap to downloaded.", &stru_1F1B76F98, 0}];
        v37[1] = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
        v27 = [v21 errorWithDomain:*MEMORY[0x1E69A7008] code:24 userInfo:v26];

        (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, v27);
      }
    }

    else
    {
      if (completionCopy)
      {
        if (!self->_disconnectionListenerSetUp)
        {
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter addObserver:self selector:sel__daemonDisconnected_ name:@"__kIMDaemonDidDisconnectNotification" object:0];

          self->_disconnectionListenerSetUp = 1;
        }

        localFileURLRetrievalCompletionHandlers = self->_localFileURLRetrievalCompletionHandlers;
        if (!localFileURLRetrievalCompletionHandlers)
        {
          v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v31 = self->_localFileURLRetrievalCompletionHandlers;
          self->_localFileURLRetrievalCompletionHandlers = v30;

          localFileURLRetrievalCompletionHandlers = self->_localFileURLRetrievalCompletionHandlers;
        }

        v32 = [(NSMutableDictionary *)localFileURLRetrievalCompletionHandlers objectForKeyedSubscript:dCopy];

        if (!v32)
        {
          array = [MEMORY[0x1E695DF70] array];
          [(NSMutableDictionary *)self->_localFileURLRetrievalCompletionHandlers setObject:array forKeyedSubscript:dCopy];
        }

        v34 = [(NSMutableDictionary *)self->_localFileURLRetrievalCompletionHandlers objectForKeyedSubscript:dCopy];
        v35 = _Block_copy(completionCopy);
        [v34 addObject:v35];
      }

      [(IMFileTransferCenter *)self _initiateLocalFileURLRetrievalInDaemonForGUID:dCopy options:options];
    }

    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v41 = "[IMFileTransferCenter retrieveLocalFileURLForFileTransferWithGUID:options:completion:]";
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "%s was given no transfer guid", buf, 0xCu);
    }
  }

  if (completionCopy)
  {
    v15 = MEMORY[0x1E696ABC0];
    v38[0] = *MEMORY[0x1E696A578];
    mainBundle3 = [MEMORY[0x1E696AAE8] mainBundle];
    v17 = [mainBundle3 localizedStringForKey:@"File transfer local file url retrieval operation was unsuccessful." value:&stru_1F1B76F98 table:0];
    v39[0] = v17;
    v38[1] = *MEMORY[0x1E696A588];
    mainBundle4 = [MEMORY[0x1E696AAE8] mainBundle];
    v19 = [mainBundle4 localizedStringForKey:@"The given GUID was empty." value:&stru_1F1B76F98 table:0];
    v39[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v10 = [v15 errorWithDomain:*MEMORY[0x1E69A7008] code:24 userInfo:v20];

    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, v10);
LABEL_23:
  }
}

- (void)retrieveLocalFileURLForFileTransferWithGUIDs:(id)ds options:(int64_t)options completion:(id)completion
{
  optionsCopy = options;
  v55 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v36 = dsCopy;
  if ([dsCopy count])
  {
    v40 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = dsCopy;
    v43 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (!v43)
    {
      goto LABEL_21;
    }

    v42 = *v45;
    v37 = *MEMORY[0x1E69A7008];
    v39 = *MEMORY[0x1E696A578];
    v38 = *MEMORY[0x1E696A588];
    while (1)
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v45 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v44 + 1) + 8 * i);
        v11 = [(IMFileTransferCenter *)self transferForGUID:v10];
        if (((completionCopy != 0) & [v11 existsAtLocalPath]) == 1)
        {
          localPath = [v11 localPath];
          localPath2 = [v11 localPath];
          im_livePhotoBundlePath = [localPath2 im_livePhotoBundlePath];
          (*(completionCopy + 2))(completionCopy, 1, v10, 0, localPath, im_livePhotoBundlePath, 0);
        }

        else if ([v11 isInThumbnailState])
        {
          if (!completionCopy)
          {
            goto LABEL_19;
          }

          v15 = MEMORY[0x1E696ABC0];
          v48[0] = v39;
          mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
          v17 = [mainBundle localizedStringForKey:@"File transfer local file url retrieval operation was unsuccessful." value:&stru_1F1B76F98 table:0];
          v48[1] = v38;
          v49[0] = v17;
          mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
          v19 = [mainBundle2 localizedStringForKey:@"The given GUID references an attachment which is in thumbnail state. You don't want to analyze this value:Skip and retry later table:{user did not tap to downloaded.", &stru_1F1B76F98, 0}];
          v49[1] = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
          localPath = [v15 errorWithDomain:v37 code:24 userInfo:v20];

          (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, 0, localPath);
        }

        else
        {
          [v40 addObject:v10];
          if (!completionCopy)
          {
            goto LABEL_19;
          }

          localFileURLRetrievalWithGuidCompletionHandlers = self->_localFileURLRetrievalWithGuidCompletionHandlers;
          if (!localFileURLRetrievalWithGuidCompletionHandlers)
          {
            v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v23 = self->_localFileURLRetrievalWithGuidCompletionHandlers;
            self->_localFileURLRetrievalWithGuidCompletionHandlers = v22;

            localFileURLRetrievalWithGuidCompletionHandlers = self->_localFileURLRetrievalWithGuidCompletionHandlers;
          }

          v24 = [(NSMutableDictionary *)localFileURLRetrievalWithGuidCompletionHandlers objectForKeyedSubscript:v10, optionsCopy, v36];
          v25 = v24 == 0;

          if (v25)
          {
            array = [MEMORY[0x1E695DF70] array];
            [(NSMutableDictionary *)self->_localFileURLRetrievalWithGuidCompletionHandlers setObject:array forKeyedSubscript:v10];
          }

          localPath = [(NSMutableDictionary *)self->_localFileURLRetrievalWithGuidCompletionHandlers objectForKeyedSubscript:v10];
          v27 = _Block_copy(completionCopy);
          [localPath addObject:v27];
        }

LABEL_19:
      }

      v43 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (!v43)
      {
LABEL_21:

        [(IMFileTransferCenter *)self _initiateLocalFileURLRetrievalInDaemonForGUIDs:v40 options:optionsCopy];
        goto LABEL_28;
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v54 = "[IMFileTransferCenter retrieveLocalFileURLForFileTransferWithGUIDs:options:completion:]";
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "%s was given no transfer guids", buf, 0xCu);
    }
  }

  if (completionCopy)
  {
    v29 = MEMORY[0x1E696ABC0];
    v51[0] = *MEMORY[0x1E696A578];
    mainBundle3 = [MEMORY[0x1E696AAE8] mainBundle];
    v31 = [mainBundle3 localizedStringForKey:@"File transfer local file urls retrieval operation was unsuccessful." value:&stru_1F1B76F98 table:0];
    v52[0] = v31;
    v51[1] = *MEMORY[0x1E696A588];
    mainBundle4 = [MEMORY[0x1E696AAE8] mainBundle];
    v33 = [mainBundle4 localizedStringForKey:@"The given GUIDs was empty." value:&stru_1F1B76F98 table:0];
    v52[1] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];
    v40 = [v29 errorWithDomain:*MEMORY[0x1E69A7008] code:24 userInfo:v34];

    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, 0, v40);
LABEL_28:
  }
}

- (void)_initiateLocalFileURLRetrievalInDaemonForGUID:(id)d options:(int64_t)options
{
  dCopy = d;
  [(IMFileTransferCenter *)self _registerDaemonListenerIfNecessary];
  v8 = +[IMDaemonController sharedController];
  remoteDaemon = [v8 remoteDaemon];
  [remoteDaemon retrieveLocalFileURLForFileTransferWithGUID:dCopy options:options];
}

- (void)_initiateLocalFileURLRetrievalInDaemonForGUIDs:(id)ds options:(int64_t)options
{
  dsCopy = ds;
  [(IMFileTransferCenter *)self _registerDaemonListenerIfNecessary];
  v8 = +[IMDaemonController sharedController];
  remoteDaemon = [v8 remoteDaemon];
  [remoteDaemon retrieveLocalFileURLForFileTransferWithGUIDs:dsCopy options:options];
}

- (void)createItemForPHAssetWithUUID:(id)d parentChatItemGUID:(id)iD chatGUID:(id)uID
{
  uIDCopy = uID;
  iDCopy = iD;
  dCopy = d;
  v11 = +[IMDaemonController sharedController];
  remoteDaemon = [v11 remoteDaemon];
  [remoteDaemon createItemForPHAssetWithUUID:dCopy parentChatItemGUID:iDCopy chatGUID:uIDCopy];
}

- (void)_registerDaemonListenerIfNecessary
{
  daemonConnection = self->_daemonConnection;
  if (!daemonConnection)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-IMFileTransferCenter", bundleIdentifier];
    v7 = +[IMDaemonController sharedController];
    v8 = [v7 multiplexedConnectionWithLabel:v6 capabilities:0x10000000 context:0];
    v9 = self->_daemonConnection;
    self->_daemonConnection = v8;

    daemonConnection = self->_daemonConnection;
  }

  [(IMDaemonMultiplexedConnectionManaging *)daemonConnection waitForSetup];
}

@end