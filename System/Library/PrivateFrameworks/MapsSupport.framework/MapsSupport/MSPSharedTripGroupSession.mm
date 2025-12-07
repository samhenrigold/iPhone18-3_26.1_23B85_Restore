@interface MSPSharedTripGroupSession
- (BOOL)_isValidParticipant:(id)participant;
- (BOOL)_joinLiveModeFromHandle:(id)handle fromAccountID:(id)d error:(id *)error;
- (BOOL)_leaveLiveMode:(id *)mode;
- (BOOL)_sendChunkMessage:(id)message to:(id)to packet:(id)packet options:(id)options error:(id *)error;
- (BOOL)joinLiveModeFromHandle:(id)handle fromAccountID:(id)d error:(id *)error;
- (BOOL)leaveLiveModeForced:(id *)forced;
- (BOOL)leaveLiveModeIfNeeded:(id *)needed;
- (BOOL)sendChunkedMessage:(id)message to:(id)to options:(id)options error:(id *)error;
- (BOOL)sendCommand:(id)command fromHandle:(id)handle fromAccountID:(id)d error:(id *)error;
- (BOOL)sessionIsAliveAfterRemovingSharingIdentifiers:(id)identifiers;
- (MSPSharedTripGroupSession)initWithService:(id)service groupID:(id)d initiator:(BOOL)initiator initiatorIdentifier:(id)identifier;
- (MSPSharedTripGroupSessionDelegate)delegate;
- (NSArray)accountIdentifiers;
- (id)_currentRoutePath;
- (void)_sharingEndedWithError:(id)error;
- (void)addSharingWith:(id)with;
- (void)dealloc;
- (void)participantDidJoin:(id)join;
- (void)participantDidLeave:(id)leave;
@end

@implementation MSPSharedTripGroupSession

- (MSPSharedTripGroupSession)initWithService:(id)service groupID:(id)d initiator:(BOOL)initiator initiatorIdentifier:(id)identifier
{
  serviceCopy = service;
  dCopy = d;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = MSPSharedTripGroupSession;
  v14 = [(MSPSharedTripGroupSession *)&v24 init];
  v15 = v14;
  if (v14)
  {
    v14->_initiator = initiator;
    objc_storeStrong(&v14->_groupID, d);
    objc_storeStrong(&v15->_sharingIDSService, service);
    v16 = [MEMORY[0x277CBEB58] set];
    identifiers = v15->_identifiers;
    v15->_identifiers = v16;

    objc_storeStrong(&v15->_initiatorIdentifier, identifier);
    v18 = [MEMORY[0x277CBEB58] set];
    liveModeParticipantIdentifiers = v15->_liveModeParticipantIdentifiers;
    v15->_liveModeParticipantIdentifiers = v18;

    if (!v15->_initiator)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.mapspushd.ETAReceiving.%@", v15->_groupID];
      [v20 UTF8String];
      v21 = os_transaction_create();
      transaction = v15->_transaction;
      v15->_transaction = v21;
    }
  }

  return v15;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "[GS] group dealloc %@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MSPSharedTripGroupSession;
  [(MSPSharedTripGroupSession *)&v4 dealloc];
}

- (NSArray)accountIdentifiers
{
  aliases = [self->_sharingIDSService aliases];
  allObjects = [aliases allObjects];

  return allObjects;
}

- (BOOL)joinLiveModeFromHandle:(id)handle fromAccountID:(id)d error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  ++self->_nbClients;
  dCopy = d;
  handleCopy = handle;
  v10 = MSPGetSharedTripLog(handleCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_nbClients];
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEFAULT, "[GS] joinLiveMode nbClients %@", &v14, 0xCu);
  }

  v12 = [(MSPSharedTripGroupSession *)self _joinLiveModeFromHandle:handleCopy fromAccountID:dCopy error:error];
  return v12;
}

- (BOOL)leaveLiveModeIfNeeded:(id *)needed
{
  v10 = *MEMORY[0x277D85DE8];
  --self->_nbClients;
  v5 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_nbClients];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[GS] leaveLiveModeIfNeeded nbClients %@", &v8, 0xCu);
  }

  return self->_nbClients || [(MSPSharedTripGroupSession *)self leaveLiveModeForced:needed];
}

- (BOOL)leaveLiveModeForced:(id *)forced
{
  v5 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[GS] leaveLiveModeForced", v8, 2u);
  }

  v6 = [(MSPSharedTripGroupSession *)self _leaveLiveMode:forced];
  if (v6)
  {
    [(MSPSharedTripGroupSession *)self _sharingEnded];
  }

  return v6;
}

- (BOOL)_joinLiveModeFromHandle:(id)handle fromAccountID:(id)d error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dCopy = d;
  if (!self->_joined)
  {
    if (![(MSPSharedTripGroupSession *)self sendCommand:@"j" fromHandle:handleCopy fromAccountID:dCopy error:error])
    {
      v13 = 0;
      goto LABEL_8;
    }

    self->_joined = 1;
    objc_storeStrong(&self->_joinedFromHandle, handle);
    objc_storeStrong(&self->_joinedFromAccountIdentifier, d);
    v12 = MSPGetSharedTripLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = dCopy;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_DEFAULT, "[GS] _joinLiveMode from accountID %@", &v15, 0xCu);
    }
  }

  v13 = 1;
LABEL_8:

  return v13;
}

- (BOOL)_leaveLiveMode:(id *)mode
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_joined)
  {
LABEL_6:
    LOBYTE(v4) = 1;
    return v4;
  }

  v4 = [(MSPSharedTripGroupSession *)self sendCommand:@"l" fromHandle:self->_joinedFromHandle fromAccountID:self->_joinedFromAccountIdentifier error:mode];
  if (v4)
  {
    v5 = MSPGetSharedTripLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      joinedFromHandle = self->_joinedFromHandle;
      v9 = 138412290;
      v10 = joinedFromHandle;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[GS] _leaveLivemode from handle %@", &v9, 0xCu);
    }

    self->_joined = 0;
    v7 = self->_joinedFromHandle;
    self->_joinedFromHandle = 0;

    goto LABEL_6;
  }

  return v4;
}

- (void)addSharingWith:(id)with
{
  v8 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v5 = MSPGetSharedTripLog(withCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = withCopy;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[GS] addSharingWith %@", &v6, 0xCu);
  }

  if ([withCopy count])
  {
    [(NSMutableSet *)self->_identifiers addObjectsFromArray:withCopy];
  }
}

- (BOOL)sessionIsAliveAfterRemovingSharingIdentifiers:(id)identifiers
{
  v12 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = MSPGetSharedTripLog(identifiersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = identifiersCopy;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[GS] removeSharingWith %@", &v10, 0xCu);
  }

  if (![(NSMutableSet *)self->_identifiers count])
  {
    goto LABEL_8;
  }

  if ([identifiersCopy count])
  {
    identifiers = self->_identifiers;
    v7 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
    [(NSMutableSet *)identifiers minusSet:v7];

    if (![(NSMutableSet *)self->_identifiers count])
    {
      [(MSPSharedTripGroupSession *)self _sharingEnded];
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }
  }

  v8 = 1;
LABEL_9:

  return v8;
}

- (void)_sharingEndedWithError:(id)error
{
  errorCopy = error;
  v5 = MSPGetSharedTripLog(errorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[GS] _sharingEnded", v8, 2u);
  }

  liveModeParticipantIdentifiers = self->_liveModeParticipantIdentifiers;
  self->_liveModeParticipantIdentifiers = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained groupSessionEnded:self withError:errorCopy];
}

- (BOOL)sendCommand:(id)command fromHandle:(id)handle fromAccountID:(id)d error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  handleCopy = handle;
  dCopy = d;
  v12 = [MEMORY[0x277CBEB98] setWithObject:self->_initiatorIdentifier];
  v13 = MSPGetSharedTripLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v34 = commandCopy;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = dCopy;
    v39 = 2112;
    v40 = handleCopy;
    _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEFAULT, "[GS] sendCommand: %@ to destination: %@ (from account: %@, handle: %@)", buf, 0x2Au);
  }

  v14 = self->_sharingIDSService;
  v31 = @"commandKey";
  v32 = commandCopy;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v16 = *MEMORY[0x277D185E0];
  v29[0] = *MEMORY[0x277D18570];
  v29[1] = v16;
  v30[0] = MEMORY[0x277CBEC38];
  v30[1] = handleCopy;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v18 = [(IDSService *)v14 _msp_accountFromIdentifier:dCopy];
  v27 = 0;
  v28 = 0;
  [(IDSService *)v14 sendMessage:v15 fromAccount:v18 toDestinations:v12 priority:300 options:v17 identifier:&v28 error:&v27];
  v19 = v28;
  v20 = v27;

  v22 = MSPGetSharedTripLog(v21);
  v23 = v22;
  if (v20)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = v20;
      _os_log_impl(&dword_25813A000, v23, OS_LOG_TYPE_ERROR, "[GS] sendCommand error: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      v24 = v20;
      *error = v20;
    }
  }

  else
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v34 = v19;
      _os_log_impl(&dword_25813A000, v23, OS_LOG_TYPE_INFO, "[GS] sent command messageUUID: %{public}@", buf, 0xCu);
    }
  }

  return v20 == 0;
}

- (BOOL)sendChunkedMessage:(id)message to:(id)to options:(id)options error:(id *)error
{
  v76[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  toCopy = to;
  optionsCopy = options;
  v12 = self->_groupID;
  v13 = MEMORY[0x277CBEB98];
  selfCopy = self;
  sharingIDSService = self->_sharingIDSService;
  allObjects = [toCopy allObjects];
  v16 = [sharingIDSService _msp_removeSelfFrom:allObjects];
  v17 = [v13 setWithArray:v16];

  v60 = v17;
  v18 = [v17 count];
  if (!v18)
  {
    v44 = [toCopy count];
    v45 = MSPGetSharedTripLog(v44);
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (v44)
    {
      if (v46)
      {
        *buf = 0;
        v47 = "[GS] trying to send message without destinations after removing self";
LABEL_38:
        _os_log_impl(&dword_25813A000, v45, OS_LOG_TYPE_ERROR, v47, buf, 2u);
      }
    }

    else if (v46)
    {
      *buf = 0;
      v47 = "[GS] trying to send message without destinations";
      goto LABEL_38;
    }

    v76[0] = *MEMORY[0x277CCA068];
    *buf = @"No contact handles provided";
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v76 count:1];
    v50 = MEMORY[0x277CCA9B8];
    v51 = 11;
    goto LABEL_40;
  }

  if (!v12)
  {
    v48 = MSPGetSharedTripLog(v18);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v48, OS_LOG_TYPE_ERROR, "[GS] trying to send message without a groupID", buf, 2u);
    }

    v76[0] = *MEMORY[0x277CCA068];
    *buf = @"No IDS group ID";
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v76 count:1];
    v50 = MEMORY[0x277CCA9B8];
    v51 = 15;
LABEL_40:
    v24 = [v50 errorWithDomain:@"com.apple.Maps.SharedTrip" code:v51 userInfo:v49];

    if (!error)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (![messageCopy length])
  {
    v52 = MSPGetSharedTripLog(0);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v52, OS_LOG_TYPE_ERROR, "[GS] trying to send message without any message data", buf, 2u);
    }

    v76[0] = *MEMORY[0x277CCA068];
    *buf = @"No data for IDS message";
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v76 count:1];
    v50 = MEMORY[0x277CCA9B8];
    v51 = 16;
    goto LABEL_40;
  }

  errorCopy = error;
  v56 = toCopy;
  v19 = [messageCopy length];
  v63 = (v19 - 1) / 0x2710 + 1;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  if ((v19 - 1) >> 4 >= 0x271)
  {
    v22 = MSPGetSharedTripLog(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 134219011;
      *&buf[4] = vcvts_n_f32_u64(v19, 0xAuLL);
      v68 = 2048;
      v69 = (v19 - 1) / 0x2710 + 1;
      v70 = 2048;
      v71 = 0x4023880000000000;
      v72 = 2113;
      v73 = *&v60;
      v74 = 2114;
      v75 = optionsCopy;
      _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_INFO, "[GS] will send %#.3lfkB message in %lu chunks (up to %#.1lfkB each)\n\tdestinations: %{private}@\n\toptions: %{public}@", buf, 0x34u);
    }
  }

  v58 = v12;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v57 = *MEMORY[0x277CCA068];
  do
  {
    if (v19 >= 0x2710)
    {
      v26 = 10000;
    }

    else
    {
      v26 = v19;
    }

    v27 = [messageCopy subdataWithRange:{v23, v26}];
    if (v27)
    {
      v28 = messageCopy;
      v65[0] = @"chunkNumberKey";
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v63];
      v66[0] = v29;
      v65[1] = @"chunkIndexKey";
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
      v66[1] = v30;
      v66[2] = v27;
      v65[2] = @"chunkDataKey";
      v65[3] = @"chunkGroupIDKey";
      v65[4] = @"chunkMessageIDKey";
      v66[3] = v58;
      v66[4] = uUIDString;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:5];
      v32 = [v31 mutableCopy];

      BOOL = GEOConfigGetBOOL();
      mEMORY[0x277D0EC70] = [MEMORY[0x277D0EC70] sharedPlatform];
      LODWORD(v30) = [mEMORY[0x277D0EC70] isInternalInstall];

      if (v30 && BOOL)
      {
        v36 = MSPGetSharedTripLog(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25813A000, v36, OS_LOG_TYPE_INFO, "[GS] - mangling chunk message by dropping message ID", buf, 2u);
        }

        [v32 removeObjectForKey:@"chunkMessageIDKey"];
      }

      plistData = [v32 plistData];
      v38 = MSPGetSharedTripLog(plistData);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = [plistData length];
        *buf = 134218754;
        *&buf[4] = v25 + 1;
        v68 = 2048;
        v69 = v63;
        v70 = 2114;
        v71 = uUIDString;
        v72 = 2048;
        v73 = vcvts_n_f32_u64(v39, 0xAuLL);
        _os_log_impl(&dword_25813A000, v38, OS_LOG_TYPE_INFO, "[GS] - chunked-message %lu/%lu: UUID: %{public}@ data length %.3fkB", buf, 0x2Au);
      }

      v64 = v24;
      [(MSPSharedTripGroupSession *)selfCopy _sendChunkMessage:plistData to:v60 packet:v32 options:optionsCopy error:&v64];
      v40 = v64;

      v24 = v40;
      messageCopy = v28;
    }

    else
    {
      v41 = MSPGetSharedTripLog(0);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = v25;
        _os_log_impl(&dword_25813A000, v41, OS_LOG_TYPE_ERROR, "[GS] - trying to send message chunk %lu without any packet data", buf, 0xCu);
      }

      v76[0] = v57;
      *buf = @"No data for IDS message";
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v76 count:1];
      v43 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:16 userInfo:v42];

      v32 = v24;
      v24 = v43;
    }

    ++v25;
    v23 += 10000;
    v19 -= 10000;
  }

  while (v63 != v25);

  error = errorCopy;
  toCopy = v56;
  v12 = v58;
  if (errorCopy)
  {
LABEL_41:
    if (v24)
    {
      v53 = v24;
      *error = v24;
    }
  }

LABEL_43:

  return v24 == 0;
}

- (BOOL)_sendChunkMessage:(id)message to:(id)to packet:(id)packet options:(id)options error:(id *)error
{
  v43[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  toCopy = to;
  packetCopy = packet;
  optionsCopy = options;
  v15 = MSPGetSharedTripLog(optionsCopy);
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25813A000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_sendChunkMessage", &unk_2581CCE6D, buf, 2u);
  }

  v16 = [MEMORY[0x277D18778] _msp_IDSIdentifierFor:self->_initiatorIdentifier];
  if (v16)
  {
    if (optionsCopy)
    {
      v17 = [optionsCopy mutableCopy];
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    }

    v23 = v17;
    [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18570]];
    v24 = MSPGetSharedTripLog([v23 setObject:v16 forKeyedSubscript:*MEMORY[0x277D185E0]]);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v23 objectForKeyedSubscript:*MEMORY[0x277D18638]];
      v26 = [v23 objectForKeyedSubscript:*MEMORY[0x277D18640]];
      *buf = 138413058;
      *&buf[4] = v25;
      v37 = 2112;
      v38 = v26;
      v39 = 2112;
      v40 = packetCopy;
      v41 = 2112;
      v42 = toCopy;
      _os_log_impl(&dword_25813A000, v24, OS_LOG_TYPE_INFO, "[GS] sendChunkMessage (requiring %@, lacking %@, packet %@, destinations %@)", buf, 0x2Au);
    }

    v27 = self->_sharingIDSService;
    _msp_currentAccount = [(IDSService *)v27 _msp_currentAccount];
    v34 = 0;
    v35 = 0;
    [(IDSService *)v27 sendData:messageCopy fromAccount:_msp_currentAccount toDestinations:toCopy priority:300 options:v23 identifier:&v35 error:&v34];
    v22 = v35;
    v20 = v34;
  }

  else
  {
    v18 = MSPGetSharedTripLog(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = packetCopy;
      v37 = 2112;
      v38 = toCopy;
      _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_ERROR, "[GS] sendChunkMessage failing on invalid account (packet: %@, destinations %@)", buf, 0x16u);
    }

    v43[0] = *MEMORY[0x277CCA068];
    *buf = @"Invalid account for sharing";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v43 count:1];
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:5 userInfo:v19];

    v22 = 0;
  }

  v29 = MSPGetSharedTripLog(v21);
  v30 = v29;
  if (v20)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_impl(&dword_25813A000, v30, OS_LOG_TYPE_ERROR, "[GS] sendChunkMessage error: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      v31 = v20;
      *error = v20;
    }
  }

  else
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_impl(&dword_25813A000, v30, OS_LOG_TYPE_INFO, "[GS] sent chunk messageUUID: %{public}@", buf, 0xCu);
    }
  }

  return v20 == 0;
}

- (id)_currentRoutePath
{
  v2 = +[MSPMapsPaths mapsApplicationContainerPaths];
  cacheDirectory = [v2 cacheDirectory];

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"route.data"];
  v5 = [cacheDirectory stringByAppendingPathComponent:v4];

  return v5;
}

- (BOOL)_isValidParticipant:(id)participant
{
  v31 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  v5 = [participantCopy componentsSeparatedByString:@":"];
  lastObject = [v5 lastObject];
  v7 = MSPGetSharedTripLog(lastObject);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    identifiers = self->_identifiers;
    *buf = 138412802;
    v26 = participantCopy;
    v27 = 2112;
    v28 = lastObject;
    v29 = 2112;
    v30 = identifiers;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[GS] _validParticipant %@ -> %@ in %@", buf, 0x20u);
  }

  if ([lastObject length])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [(NSMutableSet *)self->_identifiers copy];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v19 = v5;
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v20 + 1) + 8 * i) componentsSeparatedByString:@":"];
          lastObject2 = [v14 lastObject];
          v16 = [lastObject2 isEqualToString:lastObject];

          if (v16)
          {
            v17 = 1;
            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v17 = 0;
LABEL_14:
      v5 = v19;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)participantDidJoin:(id)join
{
  v15 = *MEMORY[0x277D85DE8];
  joinCopy = join;
  v5 = [joinCopy componentsSeparatedByString:@"/"];
  lastObject = [v5 lastObject];
  v7 = [(MSPSharedTripGroupSession *)self _isValidParticipant:lastObject];
  if (v7)
  {
    v8 = [(NSMutableSet *)self->_liveModeParticipantIdentifiers containsObject:joinCopy];
    v9 = v8;
    v10 = MSPGetSharedTripLog(v8);
    WeakRetained = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = joinCopy;
        v12 = "[GS] participant already present %@";
LABEL_7:
        _os_log_impl(&dword_25813A000, WeakRetained, OS_LOG_TYPE_ERROR, v12, &v13, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = joinCopy;
        _os_log_impl(&dword_25813A000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[GS] participantDidJoin %@", &v13, 0xCu);
      }

      [(NSMutableSet *)self->_liveModeParticipantIdentifiers addObject:joinCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained groupSession:self participantDidJoin:joinCopy];
    }
  }

  else
  {
    WeakRetained = MSPGetSharedTripLog(v7);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = lastObject;
      v12 = "[GS] participantDidJoin discard invalid %@";
      goto LABEL_7;
    }
  }
}

- (void)participantDidLeave:(id)leave
{
  v15 = *MEMORY[0x277D85DE8];
  leaveCopy = leave;
  v5 = [leaveCopy componentsSeparatedByString:@"/"];
  lastObject = [v5 lastObject];
  v7 = [(MSPSharedTripGroupSession *)self _isValidParticipant:lastObject];
  if ((v7 & 1) == 0)
  {
    WeakRetained = MSPGetSharedTripLog(v7);
    if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v13 = 138412290;
    v14 = lastObject;
    v12 = "[GS] participantDidLeave discard invalid %@";
LABEL_10:
    _os_log_impl(&dword_25813A000, WeakRetained, OS_LOG_TYPE_ERROR, v12, &v13, 0xCu);
    goto LABEL_11;
  }

  v8 = [(NSMutableSet *)self->_liveModeParticipantIdentifiers containsObject:leaveCopy];
  v9 = v8;
  v10 = MSPGetSharedTripLog(v8);
  WeakRetained = v10;
  if ((v9 & 1) == 0)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v13 = 138412290;
    v14 = leaveCopy;
    v12 = "[GS] participant not present %@";
    goto LABEL_10;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = leaveCopy;
    _os_log_impl(&dword_25813A000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[GS] participantDidLeave %@", &v13, 0xCu);
  }

  [(NSMutableSet *)self->_liveModeParticipantIdentifiers removeObject:leaveCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained groupSession:self participantDidLeave:leaveCopy];
LABEL_11:
}

- (MSPSharedTripGroupSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end