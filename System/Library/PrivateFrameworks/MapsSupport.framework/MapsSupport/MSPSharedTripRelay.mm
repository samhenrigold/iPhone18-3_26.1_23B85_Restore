@interface MSPSharedTripRelay
- (MSPSharedTripAvailabiltyDelegate)availabilityDelegate;
- (MSPSharedTripRelay)init;
- (MSPSharedTripRelayDelegate)delegate;
- (MSPSharedTripSharingIdentity)sharingIdentity;
- (NSArray)accountAliases;
- (NSString)sharingName;
- (id)groupSessionForIdentifier:(id)identifier;
- (id)removeSharingWith:(id)with;
- (id)startSharingGroupSessionWithTripIdentifer:(id)identifer;
- (void)_fetchDisplayName;
- (void)_handleChunk:(id)chunk fromID:(id)d receivingHandle:(id)handle receivingAccountIdentifier:(id)identifier;
- (void)_handleCommand:(id)command fromID:(id)d;
- (void)_handleIncomingMessage:(id)message info:(id)info fromID:(id)d receivingHandle:(id)handle receivingAccountIdentifier:(id)identifier;
- (void)_removeFinishedSession:(id)session;
- (void)_startService;
- (void)dealloc;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account receivedGroupSessionParticipantUpdate:(id)update;
- (void)service:(id)service activeAccountsChanged:(id)changed;
@end

@implementation MSPSharedTripRelay

- (MSPSharedTripSharingIdentity)sharingIdentity
{
  v3 = [MSPSharedTripSharingIdentity alloc];
  hasValidIDSAccount = [(MSPSharedTripRelay *)self hasValidIDSAccount];
  sharingName = [(MSPSharedTripRelay *)self sharingName];
  sharingHandle = [(MSPSharedTripRelay *)self sharingHandle];
  accountAliases = [(MSPSharedTripRelay *)self accountAliases];
  v8 = [(MSPSharedTripSharingIdentity *)v3 initWithValidAccount:hasValidIDSAccount name:sharingName handle:sharingHandle aliases:accountAliases];

  return v8;
}

- (NSString)sharingName
{
  displayName = self->_displayName;
  if (!displayName)
  {
    [(MSPSharedTripRelay *)self _fetchDisplayName];
    displayName = self->_displayName;
  }

  return displayName;
}

- (NSArray)accountAliases
{
  _msp_currentAccount = [(IDSService *)self->_sharingService _msp_currentAccount];
  aliasStrings = [_msp_currentAccount aliasStrings];

  return aliasStrings;
}

- (MSPSharedTripRelay)init
{
  v9.receiver = self;
  v9.super_class = MSPSharedTripRelay;
  v2 = [(MSPSharedTripRelay *)&v9 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    clientID = v2->_clientID;
    v2->_clientID = uUIDString;

    v6 = objc_alloc_init(MSPSharedTripStorageController);
    storageController = v2->_storageController;
    v2->_storageController = v6;

    [(MSPSharedTripRelay *)v2 _startService];
  }

  return v2;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v6 = "[MSPSharedTripRelay dealloc]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[RELAY] %{private}s", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MSPSharedTripRelay;
  [(MSPSharedTripRelay *)&v4 dealloc];
}

- (void)_fetchDisplayName
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
  aa_primaryAppleAccount = [v3 aa_primaryAppleAccount];
  v5 = objc_alloc_init(MEMORY[0x277CCAC00]);
  aa_firstName = [aa_primaryAppleAccount aa_firstName];
  [v5 setGivenName:aa_firstName];

  aa_middleName = [aa_primaryAppleAccount aa_middleName];
  [v5 setMiddleName:aa_middleName];

  aa_lastName = [aa_primaryAppleAccount aa_lastName];
  [v5 setFamilyName:aa_lastName];

  v9 = objc_alloc_init(MEMORY[0x277CCAC08]);
  [v9 setStyle:2];
  v10 = [v9 stringFromPersonNameComponents:v5];
  displayName = self->_displayName;
  p_displayName = &self->_displayName;
  *p_displayName = v10;

  if (*p_displayName)
  {
    v13 = *p_displayName;
  }

  else
  {
    v13 = &stru_286950698;
  }

  objc_storeStrong(p_displayName, v13);
  v15 = MSPGetSharedTripLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = *p_displayName;
    v17 = 138412290;
    v18 = v16;
    _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_INFO, "[RELAY] fetched displayName %@", &v17, 0xCu);
  }
}

- (void)_startService
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.maps.eta"];
  sharingService = self->_sharingService;
  self->_sharingService = v3;

  v5 = MSPGetSharedTripLog([(IDSService *)self->_sharingService addDelegate:self queue:MEMORY[0x277D85CD0]]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    activeAliases = [(IDSService *)self->_sharingService activeAliases];
    _msp_currentAccount = [(IDSService *)self->_sharingService _msp_currentAccount];
    displayName = self->_displayName;
    v9 = 138413058;
    v10 = @"com.apple.private.alloy.maps.eta";
    v11 = 2112;
    v12 = activeAliases;
    v13 = 2112;
    v14 = _msp_currentAccount;
    v15 = 2112;
    v16 = displayName;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[RELAY] startService: %@, active alias: %@, account: %@, displayName: %@", &v9, 0x2Au);
  }
}

- (id)startSharingGroupSessionWithTripIdentifer:(id)identifer
{
  v18 = *MEMORY[0x277D85DE8];
  identiferCopy = identifer;
  v5 = identiferCopy;
  sharingETAGroupSession = self->_sharingETAGroupSession;
  if (!sharingETAGroupSession)
  {
    v7 = MSPGetSharedTripLog(identiferCopy);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "[RELAY] creating _sharingGroupSession for identifier %@", &v16, 0xCu);
    }

    v8 = [MSPSharedTripGroupSession alloc];
    sharingService = self->_sharingService;
    _msp_currentAccountIdentifier = [(IDSService *)sharingService _msp_currentAccountIdentifier];
    v11 = [(MSPSharedTripGroupSession *)v8 initWithService:sharingService groupID:v5 initiator:1 initiatorIdentifier:_msp_currentAccountIdentifier];
    v12 = self->_sharingETAGroupSession;
    self->_sharingETAGroupSession = v11;

    [(MSPSharedTripRelay *)self _fetchDisplayName];
    sharingName = [(MSPSharedTripRelay *)self sharingName];
    [(MSPSharedTripGroupSession *)self->_sharingETAGroupSession setInitiatorDisplayName:sharingName];

    sharingETAGroupSession = self->_sharingETAGroupSession;
  }

  v14 = sharingETAGroupSession;

  return sharingETAGroupSession;
}

- (id)removeSharingWith:(id)with
{
  if (![(MSPSharedTripGroupSession *)self->_sharingETAGroupSession sessionIsAliveAfterRemovingSharingIdentifiers:with])
  {
    sharingETAGroupSession = self->_sharingETAGroupSession;
    self->_sharingETAGroupSession = 0;
  }

  v5 = self->_sharingETAGroupSession;

  return v5;
}

- (id)groupSessionForIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_sharedTripGroupIDSSessions objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v6 = [(MSPSharedTripStorageController *)self->_storageController groupSessionInfoForKey:identifierCopy];
    if (v6)
    {
      v7 = v6;
      v8 = [MSPSharedTripGroupSession alloc];
      sharingService = self->_sharingService;
      fromID = [v7 fromID];
      v5 = [(MSPSharedTripGroupSession *)v8 initWithService:sharingService groupID:identifierCopy initiator:0 initiatorIdentifier:fromID];

      v11 = MSPGetSharedTripLog([(NSMutableDictionary *)self->_sharedTripGroupIDSSessions setObject:v5 forKeyedSubscript:identifierCopy]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = identifierCopy;
        _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[RELAY] group session created %@", &v14, 0xCu);
      }
    }

    else
    {
      v12 = MSPGetSharedTripLog(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = identifierCopy;
        _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_ERROR, "[RELAY] unknown group session %@", &v14, 0xCu);
      }

      [(MSPSharedTripRelay *)self _removeFinishedSession:identifierCopy];
      v5 = 0;
    }
  }

  return v5;
}

- (void)_handleChunk:(id)chunk fromID:(id)d receivingHandle:(id)handle receivingAccountIdentifier:(id)identifier
{
  v66 = *MEMORY[0x277D85DE8];
  chunkCopy = chunk;
  dCopy = d;
  handleCopy = handle;
  identifierCopy = identifier;
  v14 = [chunkCopy objectForKeyedSubscript:@"commandKey"];

  if (v14)
  {
    v15 = [chunkCopy objectForKeyedSubscript:@"commandKey"];
    [(MSPSharedTripRelay *)self _handleCommand:v15 fromID:dCopy];

    goto LABEL_39;
  }

  v16 = [chunkCopy objectForKeyedSubscript:@"chunkMessageIDKey"];
  if (!v16)
  {
    goto LABEL_36;
  }

  v17 = v16;
  v18 = [chunkCopy objectForKeyedSubscript:@"chunkNumberKey"];
  if (!v18)
  {
    goto LABEL_35;
  }

  v19 = v18;
  selfCopy = self;
  v20 = [chunkCopy objectForKeyedSubscript:@"chunkIndexKey"];
  if (!v20)
  {
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  v21 = v20;
  v22 = [chunkCopy objectForKeyedSubscript:@"chunkDataKey"];
  if (!v22)
  {

    goto LABEL_34;
  }

  v23 = v22;
  v24 = [chunkCopy objectForKeyedSubscript:@"chunkGroupIDKey"];

  if (v24)
  {
    if (!self->_packetBuckets)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      packetBuckets = self->_packetBuckets;
      self->_packetBuckets = dictionary;
    }

    v27 = [chunkCopy objectForKeyedSubscript:@"chunkMessageIDKey"];
    v28 = MSPGetSharedTripIDSTransportLog(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v63 = chunkCopy;
      v64 = 2114;
      v65 = v27;
      _os_log_impl(&dword_25813A000, v28, OS_LOG_TYPE_INFO, "[RELAY] incomingMessage %@ from %{public}@", buf, 0x16u);
    }

    v29 = [chunkCopy objectForKeyedSubscript:@"chunkNumberKey"];
    unsignedIntegerValue = [v29 unsignedIntegerValue];

    v31 = [(NSMutableDictionary *)self->_packetBuckets objectForKeyedSubscript:v27];
    if (!v31)
    {
      v31 = objc_opt_new();
      [(NSMutableDictionary *)self->_packetBuckets setObject:v31 forKeyedSubscript:v27];
    }

    v32 = MSPGetSharedTripIDSTransportLog([v31 addObject:chunkCopy]);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = [v31 count];
      *buf = 134218242;
      v63 = v33;
      v64 = 2112;
      v65 = v31;
      _os_log_impl(&dword_25813A000, v32, OS_LOG_TYPE_INFO, "[RELAY] handleChunk %lu %@", buf, 0x16u);
    }

    if ([v31 count] == unsignedIntegerValue)
    {
      v50 = v27;
      v51 = handleCopy;
      v52 = dCopy;
      v53 = chunkCopy;
      data = [MEMORY[0x277CBEB28] data];
      v35 = unsignedIntegerValue;
      v36 = data;
      v56 = v35;
      if (v35)
      {
        v37 = 0;
        v55 = v31;
        do
        {
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v38 = v31;
          v39 = [v38 countByEnumeratingWithState:&v57 objects:v61 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v58;
            do
            {
              for (i = 0; i != v40; ++i)
              {
                if (*v58 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = *(*(&v57 + 1) + 8 * i);
                v44 = [v43 objectForKeyedSubscript:@"chunkIndexKey"];
                unsignedIntegerValue2 = [v44 unsignedIntegerValue];

                if (unsignedIntegerValue2 == v37)
                {
                  v46 = [v43 objectForKeyedSubscript:@"chunkDataKey"];
                  [v36 appendData:v46];
                }
              }

              v40 = [v38 countByEnumeratingWithState:&v57 objects:v61 count:16];
            }

            while (v40);
          }

          ++v37;
          v31 = v55;
        }

        while (v37 != v56);
      }

      v47 = MSPGetSharedTripIDSTransportLog(data);
      v27 = v50;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v36, "length")}];
        *buf = 138412546;
        v63 = v48;
        v64 = 2114;
        v65 = v50;
        _os_log_impl(&dword_25813A000, v47, OS_LOG_TYPE_INFO, "[RELAY] incomingMessage full message ready %@ messageID %{public}@", buf, 0x16u);
      }

      chunkCopy = v53;
      handleCopy = v51;
      dCopy = v52;
      [(MSPSharedTripRelay *)selfCopy _handleIncomingMessage:v36 info:v53 fromID:v52 receivingHandle:v51 receivingAccountIdentifier:identifierCopy];
      [(NSMutableDictionary *)selfCopy->_packetBuckets setObject:0 forKeyedSubscript:v50];
    }

    goto LABEL_39;
  }

LABEL_36:
  v49 = MSPGetSharedTripIDSTransportLog(v16);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v63 = chunkCopy;
    _os_log_impl(&dword_25813A000, v49, OS_LOG_TYPE_ERROR, "[RELAY] cannot handle message %@", buf, 0xCu);
  }

LABEL_39:
}

- (void)_handleCommand:(id)command fromID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  dCopy = d;
  if ([commandCopy isEqualToString:@"j"])
  {
    [(MSPSharedTripGroupSession *)self->_sharingETAGroupSession participantDidJoin:dCopy];
  }

  else
  {
    v8 = [commandCopy isEqualToString:@"l"];
    if (v8)
    {
      [(MSPSharedTripGroupSession *)self->_sharingETAGroupSession participantDidLeave:dCopy];
    }

    else
    {
      v9 = MSPGetSharedTripIDSTransportLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = commandCopy;
        _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_ERROR, "[RELAY] cannot handle command %@", &v10, 0xCu);
      }
    }
  }
}

- (void)_handleIncomingMessage:(id)message info:(id)info fromID:(id)d receivingHandle:(id)handle receivingAccountIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  infoCopy = info;
  dCopy = d;
  handleCopy = handle;
  identifierCopy = identifier;
  v17 = [infoCopy objectForKeyedSubscript:@"chunkGroupIDKey"];
  v18 = v17;
  if (messageCopy && v17)
  {
    v19 = [(MSPSharedTripStorageController *)self->_storageController groupSessionInfoForKey:v17];

    if (!v19)
    {
      v21 = MSPGetSharedTripLog(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v18;
        _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_DEFAULT, "[RELAY] add new session %@", &v23, 0xCu);
      }

      [(MSPSharedTripStorageController *)self->_storageController addNewSession:v18 originator:dCopy receivingHandle:handleCopy receivingAccountIdentifier:identifierCopy];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained relay:self receiveData:messageCopy info:infoCopy fromID:dCopy];
  }

  else
  {
    WeakRetained = MSPGetSharedTripIDSTransportLog(v17);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v23 = 138412290;
      v24 = infoCopy;
      _os_log_impl(&dword_25813A000, WeakRetained, OS_LOG_TYPE_ERROR, "[RELAY] identifier or data missing %@", &v23, 0xCu);
    }
  }
}

- (void)_removeFinishedSession:(id)session
{
  sessionCopy = session;
  v4 = [(NSMutableDictionary *)self->_sharedTripGroupIDSSessions objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    [v4 leaveLiveModeForced:0];
    [(NSMutableDictionary *)self->_sharedTripGroupIDSSessions setObject:0 forKeyedSubscript:sessionCopy];
  }

  [(MSPSharedTripStorageController *)self->_storageController removeSession:sessionCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained relay:self sharingClosed:sessionCopy];
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v15 = MSPGetSharedTripIDSTransportLog(contextCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v18 = 138412802;
    v19 = messageCopy;
    v20 = 2112;
    v21 = dCopy;
    v22 = 2112;
    v23 = accountCopy;
    _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_INFO, "[RELAY] incomingMessage %@ from %@ to %@", &v18, 0x20u);
  }

  toID = [contextCopy toID];

  uniqueID = [accountCopy uniqueID];
  [(MSPSharedTripRelay *)self _handleChunk:messageCopy fromID:dCopy receivingHandle:toID receivingAccountIdentifier:uniqueID];
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  dCopy = d;
  contextCopy = context;
  dataCopy = data;
  v15 = MSPGetSharedTripIDSTransportLog(dataCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v19 = 138412546;
    v20 = dCopy;
    v21 = 2112;
    v22 = accountCopy;
    _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_INFO, "[RELAY] incomingData from %@ to %@", &v19, 0x16u);
  }

  v16 = [MEMORY[0x277CBEAC0] dictionaryWithPlistData:dataCopy];

  toID = [contextCopy toID];

  uniqueID = [accountCopy uniqueID];
  [(MSPSharedTripRelay *)self _handleChunk:v16 fromID:dCopy receivingHandle:toID receivingAccountIdentifier:uniqueID];
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  metadataCopy = metadata;
  dCopy = d;
  contextCopy = context;
  lCopy = l;
  v18 = MSPGetSharedTripIDSTransportLog(lCopy);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v28 = metadataCopy;
    v29 = 2112;
    v30 = dCopy;
    v31 = 2112;
    v32 = accountCopy;
    _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_INFO, "[RELAY] incomingMessage URL %@ from %@ to %@", buf, 0x20u);
  }

  v19 = MEMORY[0x277CBEA90];
  path = [lCopy path];

  v26 = 0;
  v21 = [v19 dataWithContentsOfFile:path options:1 error:&v26];
  v22 = v26;

  if (v22)
  {
    toID = MSPGetSharedTripIDSTransportLog(v23);
    if (os_log_type_enabled(toID, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v22;
      _os_log_impl(&dword_25813A000, toID, OS_LOG_TYPE_ERROR, "[RELAY] incomingMessage error %@", buf, 0xCu);
    }
  }

  else
  {
    toID = [contextCopy toID];
    uniqueID = [accountCopy uniqueID];
    [(MSPSharedTripRelay *)self _handleIncomingMessage:v21 info:metadataCopy fromID:dCopy receivingHandle:toID receivingAccountIdentifier:uniqueID];
  }
}

- (void)service:(id)service account:(id)account receivedGroupSessionParticipantUpdate:(id)update
{
  v9 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v6 = MSPGetSharedTripLog(updateCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = updateCopy;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[RELAY] receivedGroupSessionParticipantUpdate %@", &v7, 0xCu);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  v14 = MSPGetSharedTripIDSTransportLog(contextCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:successCopy];
    v16 = 138544130;
    v17 = identifierCopy;
    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = errorCopy;
    v22 = 2112;
    v23 = contextCopy;
    _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[RELAY] Did send message {identifier: %{public}@, success: %@, error: %@ context %@}", &v16, 0x2Au);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  contextCopy = context;
  v12 = MSPGetSharedTripIDSTransportLog(contextCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = 138543874;
    v14 = identifierCopy;
    v15 = 2112;
    v16 = contextCopy;
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_INFO, "[RELAY] Message hasBeenDelivered {identifier: %{public}@, context: %@ fromID %@}", &v13, 0x20u);
  }
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v5 = [(MSPSharedTripRelay *)self availabilityDelegate:service];
  [v5 relay:self accountStatusChanged:{-[MSPSharedTripRelay hasValidIDSAccount](self, "hasValidIDSAccount")}];
}

- (MSPSharedTripRelayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MSPSharedTripAvailabiltyDelegate)availabilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_availabilityDelegate);

  return WeakRetained;
}

@end