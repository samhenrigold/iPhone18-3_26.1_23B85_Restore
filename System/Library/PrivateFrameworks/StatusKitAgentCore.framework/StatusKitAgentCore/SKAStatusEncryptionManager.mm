@interface SKAStatusEncryptionManager
+ (id)_decryptPayloadData:(id)data withIncomingRatchet:(id)ratchet withRatchetIndex:(unsigned __int16)index signatureData:(id)signatureData;
+ (id)logger;
- (SKAStatusEncryptionManager)initWithDatabaseManager:(id)manager invitationManager:(id)invitationManager;
- (id)_decryptPayload:(id)payload withRatchetIndex:(unsigned __int16)index signatureData:(id)data channel:(id)channel;
- (id)_deserializeBinaryPlistDictionaryData:(id)data;
- (id)_encryptPayload:(id)payload channel:(id)channel;
- (id)_mostRecentIncomingRatchetForChannel:(id)channel;
- (id)_serializeDictionaryAsBinaryPlist:(id)plist;
- (id)decryptStatusPayloadFromStatusEnvelopeData:(id)data channel:(id)channel;
- (id)encodeStatusPayload:(id)payload statusUniqueIdentifier:(id)identifier dateCreated:(id)created currentServerTime:(id)time channel:(id)channel;
- (id)encryptionValidationTokenForChannel:(id)channel;
- (id)extractEnvelopeFromStatusEnvelopeData:(id)data;
- (void)encodeStatusPayloadForProvisioning:(id)provisioning statusUniqueIdentifier:(id)identifier dateCreated:(id)created currentServerTime:(id)time channel:(id)channel;
@end

@implementation SKAStatusEncryptionManager

- (SKAStatusEncryptionManager)initWithDatabaseManager:(id)manager invitationManager:(id)invitationManager
{
  managerCopy = manager;
  invitationManagerCopy = invitationManager;
  v12.receiver = self;
  v12.super_class = SKAStatusEncryptionManager;
  v9 = [(SKAStatusEncryptionManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_databaseManager, manager);
    objc_storeStrong(&v10->_invitationManager, invitationManager);
  }

  return v10;
}

- (id)encodeStatusPayload:(id)payload statusUniqueIdentifier:(id)identifier dateCreated:(id)created currentServerTime:(id)time channel:(id)channel
{
  v12 = MEMORY[0x277CBEB38];
  channelCopy = channel;
  timeCopy = time;
  createdCopy = created;
  identifierCopy = identifier;
  payloadCopy = payload;
  v18 = objc_alloc_init(v12);
  [v18 setObject:identifierCopy forKeyedSubscript:@"i"];

  [timeCopy timeIntervalSince1970];
  v20 = v19;

  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
  [v18 setObject:v21 forKeyedSubscript:@"p"];

  [createdCopy timeIntervalSince1970];
  v23 = v22;

  v24 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
  [v18 setObject:v24 forKeyedSubscript:@"c"];

  payloadData = [payloadCopy payloadData];

  v26 = [(SKAStatusEncryptionManager *)self _encryptPayload:payloadData channel:channelCopy];

  encryptedMessage = [v26 encryptedMessage];
  v28 = [encryptedMessage base64EncodedStringWithOptions:0];
  [v18 setObject:v28 forKeyedSubscript:@"e"];
  index = [v26 index];
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:index];
  [v18 setObject:v30 forKeyedSubscript:@"r"];

  signature = [v26 signature];
  v32 = [signature base64EncodedStringWithOptions:0];
  [v18 setObject:v32 forKeyedSubscript:@"s"];
  v33 = [(SKAStatusEncryptionManager *)self _serializeDictionaryAsBinaryPlist:v18];

  return v33;
}

- (void)encodeStatusPayloadForProvisioning:(id)provisioning statusUniqueIdentifier:(id)identifier dateCreated:(id)created currentServerTime:(id)time channel:(id)channel
{
  v44 = *MEMORY[0x277D85DE8];
  provisioningCopy = provisioning;
  channelCopy = channel;
  timeCopy = time;
  createdCopy = created;
  identifierCopy = identifier;
  statusPayload = [provisioningCopy statusPayload];
  v18 = [(SKAStatusEncryptionManager *)self encodeStatusPayload:statusPayload statusUniqueIdentifier:identifierCopy dateCreated:createdCopy currentServerTime:timeCopy channel:channelCopy];

  v19 = [MEMORY[0x277CBEA90] __imDataWithRandomBytes:32];
  v20 = objc_alloc_init(SharedChannelProvisionOffGridPacket);
  v41 = v18;
  [(SharedChannelProvisionOffGridPacket *)v20 setPublishPayload:v18];
  v21 = objc_alloc(MEMORY[0x277CBEA90]);
  identifier = [channelCopy identifier];

  v23 = [v21 initWithBase64EncodedString:identifier options:0];
  [(SharedChannelProvisionOffGridPacket *)v20 setChannelId:v23];

  [(SharedChannelProvisionOffGridPacket *)v20 setChannelTopic:@"com.apple.icloud.presence.mode.status"];
  [(SharedChannelProvisionOffGridPacket *)v20 setCommitmentSalt:v19];
  v24 = [MEMORY[0x277CBEA90] __imDataWithRandomBytes:12];
  v25 = [v24 mutableCopy];

  v26 = [MEMORY[0x277CBEB28] dataWithLength:16];
  v40 = v20;
  data = [(SharedChannelProvisionOffGridPacket *)v20 data];
  [v26 appendData:data];

  v28 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{objc_msgSend(v26, "length")}];
  v29 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:16];
  v30 = [MEMORY[0x277CBEA90] __imDataWithRandomBytes:16];
  [v30 bytes];
  [v30 length];
  v39 = v25;
  [v25 bytes];
  [v26 bytes];
  v31 = [v26 length];
  mutableBytes = [v28 mutableBytes];
  mutableBytes2 = [v29 mutableBytes];
  v37 = mutableBytes;
  v33 = CCCryptorGCMOneshotEncrypt();
  if (v33)
  {
    v34 = v33;
    v35 = v39;
    v36 = [SKAStatusEncryptionManager logger:v31];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v43 = v34;
      _os_log_impl(&dword_220099000, v36, OS_LOG_TYPE_DEFAULT, "CCCryptorGCMOneshotEncrypt failed with result %d.", buf, 8u);
    }
  }

  else
  {
    [provisioningCopy setCommitmentSalt:{v19, v31, mutableBytes, mutableBytes2, 16}];
    [provisioningCopy setDecryptionKey:v30];
    v35 = v39;
    [provisioningCopy setInitializationVector:v39];
    [v28 appendData:v29];
    [provisioningCopy setEncryptedStatusPayload:v28];
  }
}

- (id)_encryptPayload:(id)payload channel:(id)channel
{
  payloadCopy = payload;
  channelCopy = channel;
  currentOutgoingRatchet = [channelCopy currentOutgoingRatchet];
  if (currentOutgoingRatchet)
  {
    currentOutgoingRatchet2 = currentOutgoingRatchet;
LABEL_3:
    v26 = 0;
    v10 = [currentOutgoingRatchet2 sealStatus:payloadCopy authenticating:0 error:&v26];
    v11 = v26;
    v12 = +[SKAStatusEncryptionManager logger];
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SKAStatusEncryptionManager _encryptPayload:channel:];
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Message encrypted successfully", buf, 2u);
    }

    goto LABEL_22;
  }

  v14 = +[SKAStatusEncryptionManager logger];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Channel does not have a current outgoing ratchet, rolling encryption key to generate a new one.", buf, 2u);
  }

  invitationManager = self->_invitationManager;
  statusType = [channelCopy statusType];
  v27 = 0;
  v17 = [(SKAInvitationManaging *)invitationManager rollEncryptionKeyForPersonalChannelWithStatusTypeIdentifier:statusType error:&v27];
  v18 = v27;

  v19 = +[SKAStatusEncryptionManager logger];
  v20 = v19;
  if (v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "Encryption key rolled successfully, fetching new key", buf, 2u);
    }

    newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
    databaseManager = self->_databaseManager;
    statusType2 = [channelCopy statusType];
    v24 = [(SKADatabaseManaging *)databaseManager existingPersonalChannelForStatusTypeIdentifier:statusType2 databaseContext:newBackgroundContext];

    currentOutgoingRatchet2 = [v24 currentOutgoingRatchet];

    if (currentOutgoingRatchet2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager _encryptPayload:channel:];
    }
  }

  v11 = +[SKAStatusEncryptionManager logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SKAStatusEncryptionManager _encryptPayload:channel:];
  }

  currentOutgoingRatchet2 = 0;
  v10 = 0;
LABEL_22:

  return v10;
}

- (id)_decryptPayload:(id)payload withRatchetIndex:(unsigned __int16)index signatureData:(id)data channel:(id)channel
{
  indexCopy = index;
  v63 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  dataCopy = data;
  channelCopy = channel;
  LODWORD(channel) = [channelCopy isPersonal];
  newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  databaseManager = self->_databaseManager;
  v45 = newBackgroundContext;
  v48 = channelCopy;
  if (channel)
  {
    v14 = [(SKADatabaseManaging *)databaseManager generatedEncryptionKeysForPersonalChannel:channelCopy databaseContext:?];
    v15 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v62 = [v14 count];
      _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Attempting to decrypt incoming status on personal channel using keys from %ld outgoing ratchets.", buf, 0xCu);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v14;
    v16 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v56;
LABEL_6:
      v19 = 0;
      while (1)
      {
        if (*v56 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v55 + 1) + 8 * v19);
        incomingRatchet = [v20 incomingRatchet];
        v22 = [SKAStatusEncryptionManager _decryptPayloadData:payloadCopy withIncomingRatchet:incomingRatchet withRatchetIndex:indexCopy signatureData:dataCopy];
        v23 = +[SKAStatusEncryptionManager logger];
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          break;
        }

        if (v24)
        {
          *buf = 138412290;
          v62 = v20;
          _os_log_impl(&dword_220099000, v23, OS_LOG_TYPE_DEFAULT, "Status payload not decrypted from generatedKey: %@", buf, 0xCu);
        }

        if (v17 == ++v19)
        {
          v17 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
          if (v17)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }
      }

      if (v24)
      {
        *buf = 138412290;
        v62 = v20;
        _os_log_impl(&dword_220099000, v23, OS_LOG_TYPE_DEFAULT, "Status payload successfully decrypted from generatedKey: %@", buf, 0xCu);
      }

      v36 = [objc_alloc(MEMORY[0x277D68128]) initWithData:v22];
      v37 = [[SKADecryptedStatusPayload alloc] initWithStatusPayload:v36 invitation:0];

      if (v37)
      {
        goto LABEL_36;
      }
    }

    else
    {
LABEL_14:
    }

    v38 = +[SKAStatusEncryptionManager logger];
    v39 = v46;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager _decryptPayload:withRatchetIndex:signatureData:channel:];
    }
  }

  else
  {
    v25 = [(SKADatabaseManaging *)databaseManager receivedInvitationsForChannel:channelCopy databaseContext:?];
    v26 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v62 = [v25 count];
      _os_log_impl(&dword_220099000, v26, OS_LOG_TYPE_DEFAULT, "Attempting to decrypt incoming status on non personal channel using incoming ratchet state from %ld received invitations.", buf, 0xCu);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v25;
    v27 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v52;
LABEL_19:
      v30 = 0;
      while (1)
      {
        if (*v52 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v51 + 1) + 8 * v30);
        incomingRatchet2 = [v31 incomingRatchet];
        v33 = [SKAStatusEncryptionManager _decryptPayloadData:payloadCopy withIncomingRatchet:incomingRatchet2 withRatchetIndex:indexCopy signatureData:dataCopy];
        v34 = +[SKAStatusEncryptionManager logger];
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        if (v33)
        {
          break;
        }

        if (v35)
        {
          *buf = 138412290;
          v62 = v31;
          _os_log_impl(&dword_220099000, v34, OS_LOG_TYPE_DEFAULT, "Status payload not decrypted from invitation: %@", buf, 0xCu);
        }

        if (v28 == ++v30)
        {
          v28 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
          if (v28)
          {
            goto LABEL_19;
          }

          goto LABEL_27;
        }
      }

      if (v35)
      {
        *buf = 138412290;
        v62 = v31;
        _os_log_impl(&dword_220099000, v34, OS_LOG_TYPE_DEFAULT, "Status payload successfully decrypted from invitation: %@", buf, 0xCu);
      }

      v40 = [objc_alloc(MEMORY[0x277D68128]) initWithData:v33];
      firstObject = [obj firstObject];
      v37 = [[SKADecryptedStatusPayload alloc] initWithStatusPayload:v40 invitation:firstObject];

      if (v37)
      {
LABEL_36:
        v39 = v45;
        v42 = v48;
        goto LABEL_40;
      }
    }

    else
    {
LABEL_27:
    }

    v38 = +[SKAStatusEncryptionManager logger];
    v39 = v47;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager _decryptPayload:withRatchetIndex:signatureData:channel:];
    }
  }

  v42 = v48;

  v37 = 0;
LABEL_40:

  v43 = +[SKAStatusEncryptionManager logger];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = v37;
    _os_log_impl(&dword_220099000, v43, OS_LOG_TYPE_DEFAULT, "Decrypted payload: %@", buf, 0xCu);
  }

  return v37;
}

+ (id)_decryptPayloadData:(id)data withIncomingRatchet:(id)ratchet withRatchetIndex:(unsigned __int16)index signatureData:(id)signatureData
{
  v12 = 0;
  v6 = [ratchet unsealStatusWithIndex:index encryptedMessage:data authenticating:0 signature:signatureData error:&v12];
  v7 = v12;
  if (v7)
  {
    v8 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[SKAStatusEncryptionManager _decryptPayloadData:withIncomingRatchet:withRatchetIndex:signatureData:];
    }
  }

  else
  {
    v10 = +[SKAStatusEncryptionManager logger];
    v8 = v10;
    if (v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Status payload successfully decrypted", v11, 2u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[SKAStatusEncryptionManager _decryptPayloadData:withIncomingRatchet:withRatchetIndex:signatureData:];
    }
  }

  return v6;
}

- (id)extractEnvelopeFromStatusEnvelopeData:(id)data
{
  v3 = [(SKAStatusEncryptionManager *)self _deserializeBinaryPlistDictionaryData:data];
  if (v3)
  {
    v4 = [[SKAStatusUnencryptedEnvelope alloc] initWithEnvelopeDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)decryptStatusPayloadFromStatusEnvelopeData:(id)data channel:(id)channel
{
  channelCopy = channel;
  if (!data)
  {
    v15 = 0;
    goto LABEL_26;
  }

  v7 = [(SKAStatusEncryptionManager *)self _deserializeBinaryPlistDictionaryData:data];
  v8 = v7;
  if (!v7)
  {
    v9 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager decryptStatusPayloadFromStatusEnvelopeData:channel:];
    }

    v15 = 0;
    goto LABEL_25;
  }

  v9 = [v7 ska_dataFrombase64EncodedStringForKey:@"e"];
  if (!v9)
  {
    v10 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager decryptStatusPayloadFromStatusEnvelopeData:channel:];
    }

    v15 = 0;
    goto LABEL_24;
  }

  v10 = [v8 ska_dataFrombase64EncodedStringForKey:@"s"];
  if (!v10)
  {
    v12 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager decryptStatusPayloadFromStatusEnvelopeData:channel:];
    }

    v15 = 0;
    goto LABEL_23;
  }

  v11 = [v8 ska_numberForKey:@"r"];
  v12 = v11;
  if (v11)
  {
    integerValue = [v11 integerValue];
    if (integerValue < 0x10000)
    {
      v15 = [(SKAStatusEncryptionManager *)self _decryptPayload:v9 withRatchetIndex:integerValue signatureData:v10 channel:channelCopy];
      v17 = +[SKAStatusEncryptionManager logger];
      v14 = v17;
      if (v15)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Successfully decrypted status payload", v18, 2u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SKAStatusEncryptionManager decryptStatusPayloadFromStatusEnvelopeData:channel:];
      }

      goto LABEL_22;
    }

    v14 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager decryptStatusPayloadFromStatusEnvelopeData:channel:];
    }
  }

  else
  {
    v14 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager decryptStatusPayloadFromStatusEnvelopeData:channel:];
    }
  }

  v15 = 0;
LABEL_22:

LABEL_23:
LABEL_24:

LABEL_25:
LABEL_26:

  return v15;
}

- (id)encryptionValidationTokenForChannel:(id)channel
{
  v3 = [(SKAStatusEncryptionManager *)self _mostRecentIncomingRatchetForChannel:channel];
  if (objc_opt_respondsToSelector())
  {
    signingKeyIdentifier = [v3 signingKeyIdentifier];
  }

  else
  {
    signingKeyIdentifier = 0;
  }

  ska_hexString = [signingKeyIdentifier ska_hexString];
  v6 = [ska_hexString length];
  if (v6 >= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  v8 = [ska_hexString substringToIndex:v7];

  return v8;
}

- (id)_mostRecentIncomingRatchetForChannel:(id)channel
{
  v37 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  isPersonal = [channelCopy isPersonal];
  newBackgroundContext = [(SKADatabaseManaging *)self->_databaseManager newBackgroundContext];
  databaseManager = self->_databaseManager;
  if (!isPersonal)
  {
    v16 = [(SKADatabaseManaging *)databaseManager receivedInvitationsForChannel:channelCopy databaseContext:newBackgroundContext];
    v17 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v36 = [v16 count];
      _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Finding most recent incoming ratchet for non personal channel using incoming ratchet state from %ld received invitations.", buf, 0xCu);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v16;
    v18 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
LABEL_17:
      v21 = 0;
      while (1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v10);
        }

        incomingRatchet = [*(*(&v25 + 1) + 8 * v21) incomingRatchet];
        if (incomingRatchet)
        {
          goto LABEL_24;
        }

        if (v19 == ++v21)
        {
          v19 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v19)
          {
            goto LABEL_17;
          }

          break;
        }
      }
    }

LABEL_23:
    v22 = 0;
    goto LABEL_25;
  }

  v8 = [(SKADatabaseManaging *)databaseManager generatedEncryptionKeysForPersonalChannel:channelCopy databaseContext:newBackgroundContext];
  v9 = +[SKAStatusEncryptionManager logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36 = [v8 count];
    _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Finding most recent incoming ratchet for personal channel from %ld outgoing ratchets.", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (!v11)
  {
    goto LABEL_23;
  }

  v12 = v11;
  v13 = *v30;
LABEL_6:
  v14 = 0;
  while (1)
  {
    if (*v30 != v13)
    {
      objc_enumerationMutation(v10);
    }

    incomingRatchet = [*(*(&v29 + 1) + 8 * v14) incomingRatchet];
    if (incomingRatchet)
    {
      break;
    }

    if (v12 == ++v14)
    {
      v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v12)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  v22 = incomingRatchet;
LABEL_25:

  if (!v22)
  {
    v23 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager _mostRecentIncomingRatchetForChannel:];
    }
  }

  return v22;
}

- (id)_serializeDictionaryAsBinaryPlist:(id)plist
{
  if (plist)
  {
    v7 = 0;
    v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:plist format:200 options:0 error:&v7];
    v4 = v7;
    if (v4)
    {
      v5 = +[SKAStatusEncryptionManager logger];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SKAStatusEncryptionManager _serializeDictionaryAsBinaryPlist:];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_deserializeBinaryPlistDictionaryData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    v4 = 0;
    goto LABEL_16;
  }

  v17 = 0;
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:0 format:0 error:&v17];
  v5 = v17;
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  v7 = +[SKAStatusEncryptionManager logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SKAStatusEncryptionManager _deserializeBinaryPlistDictionaryData:];
  }

  v8 = [[SharedChannelPublishPayload alloc] initWithData:dataCopy];
  v9 = v8;
  if (!v8 || ([(SharedChannelPublishPayload *)v8 publishPayloadContent], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v14 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAStatusEncryptionManager _deserializeBinaryPlistDictionaryData:];
    }

    v13 = v4;
    goto LABEL_14;
  }

  v11 = MEMORY[0x277CCAC58];
  publishPayloadContent = [(SharedChannelPublishPayload *)v9 publishPayloadContent];
  v16 = 0;
  v13 = [v11 propertyListWithData:publishPayloadContent options:0 format:0 error:&v16];
  v6 = v16;

  if (v6)
  {
    v14 = +[SKAStatusEncryptionManager logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(SKAStatusEncryptionManager *)v9 _deserializeBinaryPlistDictionaryData:v6, v14];
    }

LABEL_14:
  }

  v4 = v13;
LABEL_16:

  return v4;
}

+ (id)logger
{
  if (logger_onceToken_1 != -1)
  {
    +[SKAStatusEncryptionManager logger];
  }

  v3 = logger__logger_1;

  return v3;
}

uint64_t __36__SKAStatusEncryptionManager_logger__block_invoke()
{
  logger__logger_1 = os_log_create("com.apple.StatusKit", "SKAStatusEncryptionManager");

  return MEMORY[0x2821F96F8]();
}

- (void)_encryptPayload:channel:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_encryptPayload:channel:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_encryptPayload:channel:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_decryptPayload:withRatchetIndex:signatureData:channel:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_decryptPayload:withRatchetIndex:signatureData:channel:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_decryptPayloadData:withIncomingRatchet:withRatchetIndex:signatureData:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_decryptPayloadData:withIncomingRatchet:withRatchetIndex:signatureData:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)decryptStatusPayloadFromStatusEnvelopeData:channel:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)decryptStatusPayloadFromStatusEnvelopeData:channel:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)decryptStatusPayloadFromStatusEnvelopeData:channel:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)decryptStatusPayloadFromStatusEnvelopeData:channel:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)decryptStatusPayloadFromStatusEnvelopeData:channel:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)decryptStatusPayloadFromStatusEnvelopeData:channel:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_mostRecentIncomingRatchetForChannel:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_serializeDictionaryAsBinaryPlist:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_deserializeBinaryPlistDictionaryData:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_deserializeBinaryPlistDictionaryData:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 publishPayloadContent];
  OUTLINED_FUNCTION_1_0();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_220099000, a3, OS_LOG_TYPE_ERROR, "Error deserializing status envelope data as dictionary from proto data: %@ with error %@", v6, 0x16u);
}

- (void)_deserializeBinaryPlistDictionaryData:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end