@interface NGMFullDeviceIdentity
+ (id)identityWithAccess:(id)access error:(id *)error;
+ (id)identityWithDataRepresentation:(id)representation error:(id *)error;
- (BOOL)deleteKeyWithTag:(id)tag;
- (BOOL)eraseFromKeyChain:(id *)chain;
- (BOOL)requiresMigration;
- (BOOL)shouldRollEncryptionIdentity;
- (BOOL)testing_duplicatePrekeyRegistration;
- (BOOL)updateWithRegisteredTicket:(id)ticket error:(id *)error;
- (NGMFullDeviceIdentity)initWithSigningKey:(id)key devicePrekeys:(id)prekeys;
- (id)batchSign:(id)sign forType:(int64_t)type error:(id *)error;
- (id)dataRepresentationWithError:(id *)error;
- (id)description;
- (id)keyRollingTicketWithError:(id *)error;
- (id)publicDeviceIdentityWithError:(id *)error;
- (id)sign:(id)sign forType:(int64_t)type error:(id *)error;
- (id)signDataWithFormatter:(id)formatter error:(id *)error;
- (id)unsealMessage:(id)message signedByPublicIdentity:(id)identity error:(id *)error;
- (void)postMigrationKeychainCleanup;
- (void)unsealMessage:(id)message signedByPublicIdentity:(id)identity decryptionBlock:(id)block;
- (void)unsealMessageAndAttributes:(id)attributes authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 signedByPublicIdentity:(id)self1 decryptionBlock:(id)self2;
- (void)unsealMessageAndAttributes:(id)attributes guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken signedByPublicIdentity:(id)identity decryptionBlock:(id)self0;
- (void)unsealMessageAndAttributes:(id)attributes guid:(id)guid signedByPublicIdentity:(id)identity decryptionBlock:(id)block;
- (void)unsealMessageAndAttributes:(id)attributes signedByPublicIdentity:(id)identity decryptionBlock:(id)block;
@end

@implementation NGMFullDeviceIdentity

- (BOOL)requiresMigration
{
  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  keyStore = [deviceSigningKey keyStore];

  if (keyStore == 3)
  {
    v5 = 1;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75__NGMFullDeviceIdentity_MigrationToModernizedKeyStorage__requiresMigration__block_invoke;
    v8[3] = &unk_2786FDC08;
    v8[4] = &v9;
    [devicePrekeys enumerateObjectsUsingBlock:v8];

    v5 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  return v5 & 1;
}

void __75__NGMFullDeviceIdentity_MigrationToModernizedKeyStorage__requiresMigration__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 dhKey];
  v7 = [v6 keyStore];

  if (v7 == 3)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (BOOL)deleteKeyWithTag:(id)tag
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CDC238];
  v4 = *MEMORY[0x277CDC120];
  v14[0] = *MEMORY[0x277CDC228];
  v14[1] = v4;
  v15[0] = v3;
  v15[1] = @"com.apple.messageprotection";
  v14[2] = *MEMORY[0x277CDBF20];
  v15[2] = tag;
  v5 = MEMORY[0x277CBEAC0];
  tagCopy = tag;
  v7 = [v5 dictionaryWithObjects:v15 forKeys:v14 count:3];

  v8 = SecItemDelete(v7);
  v9 = v8;
  if (v8 != -25300 && v8 != 0)
  {
    v11 = MessageProtectionLog(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(NGMFullDeviceIdentity(MigrationToModernizedKeyStorage) *)v9 deleteKeyWithTag:v11];
    }
  }

  return !v9 || v9 == -25300;
}

- (void)postMigrationKeychainCleanup
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  keyStore = [deviceSigningKey keyStore];

  if (keyStore == 3)
  {
    deviceSigningKey2 = [(NGMFullDeviceIdentity *)self deviceSigningKey];
    keyIdentifier = [deviceSigningKey2 keyIdentifier];
    v7 = [(NGMFullDeviceIdentity *)self deleteKeyWithTag:keyIdentifier];
    *(v14 + 24) &= v7;
  }

  devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__NGMFullDeviceIdentity_MigrationToModernizedKeyStorage__postMigrationKeychainCleanup__block_invoke;
  v12[3] = &unk_2786FDC30;
  v12[4] = self;
  v12[5] = &v13;
  [devicePrekeys enumerateObjectsUsingBlock:v12];

  if (v14[3])
  {
    v10 = MessageProtectionLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_22B404000, v10, OS_LOG_TYPE_INFO, "Migration to CTKOID key storage done.", v11, 2u);
    }
  }

  else
  {
    v10 = MessageProtectionLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(NGMFullDeviceIdentity(MigrationToModernizedKeyStorage) *)v10 postMigrationKeychainCleanup];
    }
  }

  _Block_object_dispose(&v13, 8);
}

void __86__NGMFullDeviceIdentity_MigrationToModernizedKeyStorage__postMigrationKeychainCleanup__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 dhKey];
  v4 = [v3 keyStore];

  if (v4 == 3)
  {
    v5 = *(a1 + 32);
    v6 = [v8 dhKey];
    v7 = [v6 keyIdentifier];
    *(*(*(a1 + 40) + 8) + 24) &= [v5 deleteKeyWithTag:v7];
  }
}

- (id)sign:(id)sign forType:(int64_t)type error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  signCopy = sign;
  v9 = MessageProtectionLog(signCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_22B404000, v9, OS_LOG_TYPE_INFO, "Signing with Identity Key for message type: %li", buf, 0xCu);
  }

  if (type >= 3)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"Request to sign with unknown signature type: %li", type];
    v14 = 4001;
  }

  else
  {
    v10 = [objc_alloc(*off_2786FDC50[type]) initWithApplicationData:signCopy];
    if (v10)
    {
      type = v10;
      deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
      v13 = [deviceSigningKey signDataWithFormatter:type error:error];

      goto LABEL_9;
    }

    type = [MEMORY[0x277CCACA8] stringWithFormat:@"Request to sign but no signature formatter for type: %li", type];
    v14 = 4002;
  }

  MPLogAndAssignError(v14, error, type);
  v13 = 0;
LABEL_9:

  return v13;
}

- (id)batchSign:(id)sign forType:(int64_t)type error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  signCopy = sign;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(signCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = signCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(NGMFullDeviceIdentity *)self sign:*(*(&v19 + 1) + 8 * i) forType:type error:error, v19];
        v16 = v15;
        if (!v15 || *error)
        {

          v17 = 0;
          goto LABEL_12;
        }

        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = v9;
LABEL_12:

  return v17;
}

- (NGMFullDeviceIdentity)initWithSigningKey:(id)key devicePrekeys:(id)prekeys
{
  keyCopy = key;
  prekeysCopy = prekeys;
  v11.receiver = self;
  v11.super_class = NGMFullDeviceIdentity;
  v8 = [(NGMFullDeviceIdentity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(NGMFullDeviceIdentity *)v8 setDeviceSigningKey:keyCopy];
    [(NGMFullDeviceIdentity *)v9 setDevicePrekeys:prekeysCopy];
  }

  return v9;
}

+ (id)identityWithAccess:(id)access error:(id *)error
{
  accessCopy = access;
  if ([accessCopy isEqualToString:*MEMORY[0x277CDBF18]] & 1) != 0 || (objc_msgSend(accessCopy, "isEqualToString:", *MEMORY[0x277CDBEE8]))
  {
    v7 = [(FullKey *)SigningKey generateNewKeyWithAccess:accessCopy error:error];
    if (v7)
    {
      v8 = [self alloc];
      array = [MEMORY[0x277CBEB18] array];
      v10 = [v8 initWithSigningKey:v7 devicePrekeys:array];

      v11 = [NGMFullPrekey alloc];
      deviceSigningKey = [v10 deviceSigningKey];
      v13 = [(NGMFullPrekey *)v11 initWithPrekeySignedBy:deviceSigningKey error:error];

      if (v13)
      {
        devicePrekeys = [v10 devicePrekeys];
        [devicePrekeys addObject:v13];

        v15 = v10;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v16 = MessageProtectionLog(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [NGMFullDeviceIdentity identityWithAccess:error error:v16];
      }

      v15 = 0;
    }
  }

  else
  {
    accessCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"A NGMFullDeviceIdentity Key generation was requested, but failed because it was requested with access: %@", accessCopy];
    MPLogAndAssignError(501, error, accessCopy);

    v15 = 0;
  }

  return v15;
}

+ (id)identityWithDataRepresentation:(id)representation error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v7 = [[NGMPBFullDeviceIdentity alloc] initWithData:representationCopy];
  if (v7)
  {
    selfCopy = self;
    v31 = representationCopy;
    v8 = [SigningKey alloc];
    signingKey = [(NGMPBFullDeviceIdentity *)v7 signingKey];
    errorCopy = error;
    v10 = [(FullKey *)v8 initWithProtobufferData:signingKey error:error];

    v11 = MEMORY[0x277CBEB18];
    prekeys = [(NGMPBFullDeviceIdentity *)v7 prekeys];
    v32 = [v11 arrayWithCapacity:{objc_msgSend(prekeys, "count")}];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = v7;
    prekeys2 = [(NGMPBFullDeviceIdentity *)v7 prekeys];
    v14 = [prekeys2 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        v17 = 0;
        do
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(prekeys2);
          }

          v18 = *(*(&v34 + 1) + 8 * v17);
          v19 = [NGMFullPrekey alloc];
          publicKey = [(SigningKey *)v10 publicKey];
          v33 = 0;
          v21 = [(NGMFullPrekey *)v19 initWithPBPrekey:v18 verifySignedBy:publicKey error:&v33];
          v22 = v33;

          if (v21)
          {
            [v32 addObject:v21];
          }

          else
          {
            v24 = MessageProtectionLog(v23);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              [(NGMFullDeviceIdentity *)v38 identityWithDataRepresentation:v22 error:&v39, v24];
            }
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [prekeys2 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v15);
    }

    if (v10)
    {
      v25 = v32;
      v26 = [[selfCopy alloc] initWithSigningKey:v10 devicePrekeys:v32];
      representationCopy = v31;
    }

    else
    {
      MPLogAndAssignError(200, errorCopy, @"Failed to initialize signing keys from NGMFullDeviceIdentity data.");
      v26 = 0;
      representationCopy = v31;
      v25 = v32;
    }

    v7 = v30;
  }

  else
  {
    MPLogAndAssignError(303, error, @"The deserialization of the NGMFullDeviceIdentity failed.");
    v26 = 0;
  }

  return v26;
}

- (id)dataRepresentationWithError:(id *)error
{
  requiresMigration = [(NGMFullDeviceIdentity *)self requiresMigration];
  v5 = requiresMigration;
  if (requiresMigration)
  {
    v6 = MessageProtectionLog(requiresMigration);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B404000, v6, OS_LOG_TYPE_INFO, "Starting key migration to CTKOID.", buf, 2u);
    }
  }

  v7 = objc_alloc_init(NGMPBFullDeviceIdentity);
  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  protobuffer = [deviceSigningKey protobuffer];
  [(NGMPBFullDeviceIdentity *)v7 setSigningKey:protobuffer];

  devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__NGMFullDeviceIdentity_dataRepresentationWithError___block_invoke;
  v14[3] = &unk_2786FDC90;
  v11 = v7;
  v15 = v11;
  [devicePrekeys enumerateObjectsUsingBlock:v14];

  data = [(NGMPBFullDeviceIdentity *)v11 data];
  if (v5)
  {
    [(NGMFullDeviceIdentity *)self postMigrationKeychainCleanup];
  }

  return data;
}

void __53__NGMFullDeviceIdentity_dataRepresentationWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 pbDevicePrekey];
  [v2 addPrekeys:v3];
}

- (id)publicDeviceIdentityWithError:(id *)error
{
  devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
  lastObject = [devicePrekeys lastObject];
  publicPrekey = [lastObject publicPrekey];

  devicePrekeys2 = [(NGMFullDeviceIdentity *)self devicePrekeys];
  lastObject2 = [devicePrekeys2 lastObject];
  tetraPrivateKey = [lastObject2 tetraPrivateKey];

  if (tetraPrivateKey)
  {
    devicePrekeys3 = [(NGMFullDeviceIdentity *)self devicePrekeys];
    lastObject3 = [devicePrekeys3 lastObject];
    tetraRegistration = [lastObject3 tetraRegistration];
  }

  else
  {
    tetraRegistration = 0;
  }

  v13 = [NGMPublicDeviceIdentity alloc];
  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  publicKey = [deviceSigningKey publicKey];
  v16 = [(NGMPublicDeviceIdentity *)v13 initWithEchnidaRegistration:publicPrekey tetraRegistration:tetraRegistration signingKey:publicKey];

  return v16;
}

- (id)unsealMessage:(id)message signedByPublicIdentity:(id)identity error:(id *)error
{
  messageCopy = message;
  identityCopy = identity;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__NGMFullDeviceIdentity_unsealMessage_signedByPublicIdentity_error___block_invoke;
  v13[3] = &unk_2786FDCB8;
  v13[4] = &v20;
  v13[5] = &v14;
  [(NGMFullDeviceIdentity *)self unsealMessage:messageCopy signedByPublicIdentity:identityCopy decryptionBlock:v13];
  v10 = v21[5];
  if (v10)
  {
    v11 = 0;
    if (error)
    {
      *error = v10;
    }
  }

  else
  {
    v11 = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __68__NGMFullDeviceIdentity_unsealMessage_signedByPublicIdentity_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v11 = *(*(a1 + 32) + 8);
    v14 = *(v11 + 40);
    (v10)[2](v10, &v14);
    v12 = v14;
    v13 = (v11 + 40);
  }

  else
  {
    v13 = (*(*(a1 + 32) + 8) + 40);
    v12 = a3;
  }

  objc_storeStrong(v13, v12);
}

- (void)unsealMessage:(id)message signedByPublicIdentity:(id)identity decryptionBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__NGMFullDeviceIdentity_unsealMessage_signedByPublicIdentity_decryptionBlock___block_invoke;
  v10[3] = &unk_2786FDCE0;
  v11 = blockCopy;
  v9 = blockCopy;
  [(NGMFullDeviceIdentity *)self unsealMessageAndAttributes:message signedByPublicIdentity:identity decryptionBlock:v10];
}

- (void)unsealMessageAndAttributes:(id)attributes guid:(id)guid signedByPublicIdentity:(id)identity decryptionBlock:(id)block
{
  blockCopy = block;
  identityCopy = identity;
  guidCopy = guid;
  attributesCopy = attributes;
  v15 = [@"noPushToken" dataUsingEncoding:4];
  v14 = [@"noPushToken" dataUsingEncoding:4];
  [(NGMFullDeviceIdentity *)self unsealMessageAndAttributes:attributesCopy guid:guidCopy sendingURI:@"noURI" sendingPushToken:v15 receivingURI:@"noURI" receivingPushToken:v14 signedByPublicIdentity:identityCopy decryptionBlock:blockCopy];
}

- (void)unsealMessageAndAttributes:(id)attributes guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken signedByPublicIdentity:(id)identity decryptionBlock:(id)self0
{
  v17 = MEMORY[0x277CBEA90];
  blockCopy = block;
  identityCopy = identity;
  pushTokenCopy = pushToken;
  rICopy = rI;
  tokenCopy = token;
  iCopy = i;
  guidCopy = guid;
  attributesCopy = attributes;
  data = [v17 data];
  [(NGMFullDeviceIdentity *)self unsealMessageAndAttributes:attributesCopy authenticatedData:data messageType:0 guid:guidCopy sendingURI:iCopy sendingPushToken:tokenCopy receivingURI:rICopy receivingPushToken:pushTokenCopy signedByPublicIdentity:identityCopy decryptionBlock:blockCopy];
}

- (void)unsealMessageAndAttributes:(id)attributes authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 signedByPublicIdentity:(id)self1 decryptionBlock:(id)self2
{
  v116 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  dataCopy = data;
  guidCopy = guid;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  pushTokenCopy = pushToken;
  identityCopy = identity;
  blockCopy = block;
  v17 = MessageProtectionLog(blockCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = guidCopy;
    _os_log_impl(&dword_22B404000, v17, OS_LOG_TYPE_INFO, "Unsealing message with GUID: %@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = [[NGMPBOuterMessage alloc] initWithData:attributesCopy];
  ephemeralPubKey = [(NGMPBOuterMessage *)v19 ephemeralPubKey];
  if (ephemeralPubKey)
  {
    encryptedPayload = [(NGMPBOuterMessage *)v19 encryptedPayload];
    v22 = encryptedPayload != 0;
  }

  else
  {
    v22 = 0;
  }

  hasTetraMessage = [(NGMPBOuterMessage *)v19 hasTetraMessage];
  v24 = hasTetraMessage;
  v25 = MessageProtectionLog(hasTetraMessage);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = guidCopy;
    *&buf[12] = 1024;
    *&buf[14] = v22;
    *&buf[18] = 1024;
    *&buf[20] = v24;
    _os_log_impl(&dword_22B404000, v25, OS_LOG_TYPE_INFO, "Message with GUID: %@ hasEchnidaPayload=%d hasSecondaryPayload=%d", buf, 0x18u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v113 = __Block_byref_object_copy_;
  v114 = __Block_byref_object_dispose_;
  v115 = 0;
  v107 = 0;
  v108[0] = &v107;
  v108[1] = 0x3032000000;
  v108[2] = __Block_byref_object_copy_;
  v108[3] = __Block_byref_object_dispose_;
  v109 = 0;
  v104 = 0;
  v105[0] = &v104;
  v105[1] = 0x3032000000;
  v105[2] = __Block_byref_object_copy__25;
  v105[3] = __Block_byref_object_dispose__26;
  v106 = 0;
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x3032000000;
  v102[3] = __Block_byref_object_copy_;
  v102[4] = __Block_byref_object_dispose_;
  v103 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy_;
  v100 = __Block_byref_object_dispose_;
  v101 = 0;
  v92 = 0;
  v93 = 0;
  v94[0] = &v93;
  v94[1] = 0x3032000000;
  v94[2] = __Block_byref_object_copy_;
  v94[3] = __Block_byref_object_dispose_;
  v95 = 0;
  v90 = 0;
  v91[0] = &v90;
  v91[1] = 0x3032000000;
  v91[2] = __Block_byref_object_copy__25;
  v91[3] = __Block_byref_object_dispose__26;
  v88[0] = 0;
  v88[1] = v88;
  v88[2] = 0x3032000000;
  v88[3] = __Block_byref_object_copy_;
  v88[4] = __Block_byref_object_dispose_;
  v89 = 0;
  if (v22)
  {
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __186__NGMFullDeviceIdentity_unsealMessageAndAttributes_authenticatedData_messageType_guid_sendingURI_sendingPushToken_receivingURI_receivingPushToken_signedByPublicIdentity_decryptionBlock___block_invoke;
    v82[3] = &unk_2786FDD08;
    v84 = v102;
    v83 = dictionary;
    v85 = buf;
    v86 = &v107;
    v87 = &v104;
    [(NGMFullDeviceIdentity *)self unsealMessageAndAttributes:attributesCopy signedByPublicIdentity:identityCopy decryptionBlock:v82];

    if ((v24 & 1) == 0)
    {
      v26 = *&buf[8];
      v28 = v105;
      v27 = v108;
LABEL_29:
      v46 = v26[5];
      goto LABEL_30;
    }
  }

  else if (!v24)
  {
    v26 = v97;
    goto LABEL_21;
  }

  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  publicKey = [deviceSigningKey publicKey];
  dataRepresentation = [publicKey dataRepresentation];

  v31 = [identityCopy isTetraCompatibleWithFullKey:self];
  if (v31)
  {
    if (dataRepresentation)
    {
      v32 = MessageProtectionLog(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *v110 = 138412290;
        v111 = guidCopy;
        _os_log_impl(&dword_22B404000, v32, OS_LOG_TYPE_INFO, "Starting Tetra decryption of GUID: %@", v110, 0xCu);
      }

      tetraMessage = [(NGMPBOuterMessage *)v19 tetraMessage];
      signingKey = [identityCopy signingKey];
      tetraWrapped = [signingKey tetraWrapped];
      tetraRegistration = [identityCopy tetraRegistration];
      tetraVersion = [tetraRegistration tetraVersion];
      devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __186__NGMFullDeviceIdentity_unsealMessageAndAttributes_authenticatedData_messageType_guid_sendingURI_sendingPushToken_receivingURI_receivingPushToken_signedByPublicIdentity_decryptionBlock___block_invoke_37;
      v73[3] = &unk_2786FDD30;
      v74 = guidCopy;
      v76 = v88;
      v75 = dictionary;
      v77 = &v96;
      v78 = &v93;
      v79 = &v90;
      LODWORD(v54) = tetraVersion;
      [_TtC17MessageProtection8TetraAPI openWithMessage:tetraMessage authenticatedData:dataCopy guid:v74 sendingURI:iCopy sendingPushToken:tokenCopy receivingURI:rICopy receivingPushToken:pushTokenCopy theirIdentity:identityCopy signedBy:tetraWrapped tetraVersion:v54 ourPrekeys:devicePrekeys ourSigningPublicKeyCompactRepresentation:dataRepresentation decryptionBlock:v73];

      v38 = v74;
    }

    else
    {
      v80 = 0;
      v40 = MEMORY[0x277CCACA8];
      deviceSigningKey2 = [(NGMFullDeviceIdentity *)self deviceSigningKey];
      v56 = [deviceSigningKey2 description];
      deviceSigningKey3 = [(NGMFullDeviceIdentity *)self deviceSigningKey];
      publicKey2 = [deviceSigningKey3 publicKey];
      v55 = [publicKey2 description];
      deviceSigningKey4 = [(NGMFullDeviceIdentity *)self deviceSigningKey];
      publicKey3 = [deviceSigningKey4 publicKey];
      dataRepresentation2 = [publicKey3 dataRepresentation];
      v44 = [dataRepresentation2 description];
      v45 = [v40 stringWithFormat:@"Unable to serialize the device public signing key (%@ %@ %@).", v56, v55, v44];
      MPLogAndAssignError(3, &v80, v45);
      v38 = v80;

      [dictionary setObject:v38 forKey:&unk_283F13B98];
    }
  }

  else
  {
    v81 = 0;
    guidCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Received a Tetra message (%@), but the sender identity version is not compatible with ours.", guidCopy];
    MPLogAndAssignError(3001, &v81, guidCopy);
    v38 = v81;

    [dictionary setObject:v38 forKey:&unk_283F13B98];
  }

  v26 = v97;
  if (!v22)
  {
    v27 = v94;
    v28 = v91;
    goto LABEL_29;
  }

LABEL_21:
  v46 = *(*&buf[8] + 40);
  v47 = v26[5];
  v28 = v105;
  v27 = v108;
  if (!v46)
  {
    if (v47)
    {
      (*(blockCopy + 2))(blockCopy, v47, *(v94[0] + 40), dictionary, *(v91[0] + 40));
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (!v47)
  {
LABEL_30:
    (*(blockCopy + 2))(blockCopy, v46, *(*v27 + 40), dictionary, *(*v28 + 40));
    goto LABEL_31;
  }

  if (([v47 isEqualToData:*(*&buf[8] + 40)] & 1) == 0)
  {
    v48 = MEMORY[0x277CCACA8];
    v49 = [*(*&buf[8] + 40) length];
    v50 = [v48 stringWithFormat:@"Non-matching double-encryption payloads (Echnida: %lu, Tetra: %lu)", v49, objc_msgSend(v97[5], "length")];
    v72 = 0;
    MPLogAndAssignError(3002, &v72, v50);
    v51 = v72;
    v52 = MessageProtectionLog([dictionary setObject:v51 forKey:&unk_283F13B98]);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
    {
      [NGMFullDeviceIdentity unsealMessageAndAttributes:v50 authenticatedData:v52 messageType:? guid:? sendingURI:? sendingPushToken:? receivingURI:? receivingPushToken:? signedByPublicIdentity:? decryptionBlock:?];
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __186__NGMFullDeviceIdentity_unsealMessageAndAttributes_authenticatedData_messageType_guid_sendingURI_sendingPushToken_receivingURI_receivingPushToken_signedByPublicIdentity_decryptionBlock___block_invoke_41;
  aBlock[3] = &unk_2786FDD58;
  aBlock[4] = &v104;
  aBlock[5] = &v90;
  v53 = _Block_copy(aBlock);
  (*(blockCopy + 2))(blockCopy, *(*&buf[8] + 40), *(v108[0] + 40), dictionary, v53);

LABEL_31:
  _Block_object_dispose(v88, 8);

  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v93, 8);

  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(v102, 8);

  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v107, 8);

  _Block_object_dispose(buf, 8);
}

void __186__NGMFullDeviceIdentity_unsealMessageAndAttributes_authenticatedData_messageType_guid_sendingURI_sendingPushToken_receivingURI_receivingPushToken_signedByPublicIdentity_decryptionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v18 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  v13 = *(a1 + 32);
  if (v11)
  {
    [*(a1 + 32) setObject:v11 forKey:&unk_283F13B80];
  }

  else
  {
    v14 = NoError();
    [v13 setObject:v14 forKey:&unk_283F13B80];

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v15 = _Block_copy(v12);
    v16 = *(*(a1 + 64) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }
}

void __186__NGMFullDeviceIdentity_unsealMessageAndAttributes_authenticatedData_messageType_guid_sendingURI_sendingPushToken_receivingURI_receivingPushToken_signedByPublicIdentity_decryptionBlock___block_invoke_37(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = MessageProtectionLog(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    v21 = 138412290;
    v22 = v15;
    _os_log_impl(&dword_22B404000, v14, OS_LOG_TYPE_INFO, "Finished Tetra decryption of GUID: %@", &v21, 0xCu);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  v16 = *(a1 + 40);
  if (v12)
  {
    [*(a1 + 40) setObject:v12 forKey:&unk_283F13B98];
  }

  else
  {
    v17 = NoError();
    [v16 setObject:v17 forKey:&unk_283F13B98];

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
    v18 = _Block_copy(v13);
    v19 = *(*(a1 + 72) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

- (void)unsealMessageAndAttributes:(id)attributes signedByPublicIdentity:(id)identity decryptionBlock:(id)block
{
  v106 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  identityCopy = identity;
  v9 = attributesCopy;
  v79 = identityCopy;
  blockCopy = block;
  v11 = [[NGMPBOuterMessage alloc] initWithData:attributesCopy];
  v12 = v11;
  if (!v11)
  {
    v104 = 0;
    MPLogAndAssignError(301, &v104, @"The outer structure of the message is malformed.");
    v17 = v104;
LABEL_20:
    (*(blockCopy + 2))(blockCopy, 0, 0, v17, 0);
    goto LABEL_56;
  }

  v70 = blockCopy;
  ephemeralPubKey = [(NGMPBOuterMessage *)v11 ephemeralPubKey];

  if (!ephemeralPubKey)
  {
    v103 = 0;
    MPLogAndAssignError(304, &v103, @"The outer structure of the message is missing the ephemeral DH key.");
    v17 = v103;
    blockCopy = v70;
    goto LABEL_20;
  }

  v69 = attributesCopy;
  v14 = [DHPublicKey alloc];
  ephemeralPubKey2 = [(NGMPBOuterMessage *)v12 ephemeralPubKey];
  v102 = 0;
  v16 = [(PublicKey *)v14 initWithData:ephemeralPubKey2 error:&v102];
  v17 = v102;

  v80 = v16;
  if (!v16)
  {
LABEL_36:
    blockCopy = v70;
    (*(v70 + 2))(v70, 0, 0, v17, 0);
    goto LABEL_37;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
  reverseObjectEnumerator = [devicePrekeys reverseObjectEnumerator];

  obj = reverseObjectEnumerator;
  v77 = [reverseObjectEnumerator countByEnumeratingWithState:&v98 objects:v105 count:16];
  if (!v77)
  {
    goto LABEL_16;
  }

  v75 = *v99;
  while (2)
  {
    for (i = 0; i != v77; ++i)
    {
      if (*v99 != v75)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v98 + 1) + 8 * i);
      dhKey = [v21 dhKey];
      v97 = v17;
      v23 = [dhKey keyAgreementWithPublicKey:v80 error:&v97];
      v24 = v97;

      if (v23)
      {
        v85 = [NGMMessageSignatureFormatter alloc];
        v71 = v21;
        publicPrekey = [v21 publicPrekey];
        dhKey2 = [publicPrekey dhKey];
        dataRepresentation = [dhKey2 dataRepresentation];
        ephemeralPubKey3 = [(NGMPBOuterMessage *)v12 ephemeralPubKey];
        deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
        [deviceSigningKey publicKey];
        v29 = v28 = v12;
        [v29 dataRepresentation];
        v31 = v30 = v24;
        encryptedPayload = [(NGMPBOuterMessage *)v28 encryptedPayload];
        v33 = v85;
        v86 = v23;
        v34 = [(NGMMessageSignatureFormatter *)v33 initWithDHOutput:v23 prekeyPub:dataRepresentation ephemeralPub:ephemeralPubKey3 recipientPub:v31 ciphertext:encryptedPayload];

        v35 = v30;
        v12 = v28;
        v36 = v34;

        signature = [(NGMPBOuterMessage *)v12 signature];
        v38 = [v79 verifySignature:signature formatter:v36];

        if (v35)
        {
          blockCopy = v70;
          (*(v70 + 2))(v70, 0, 0, v35, 0);
          v9 = v69;
          v42 = v86;
LABEL_54:

          v17 = v35;
          goto LABEL_55;
        }

        if (!v38)
        {

          v17 = 0;
          continue;
        }

        v43 = [@"LastPawn-MessageKeys" dataUsingEncoding:4];
        v42 = v86;
        v44 = [_TtC17MessageProtection4HKDF deriveKeyWith:v86 salt:v43 outputSize:48];

        if (!v44)
        {
          blockCopy = v70;
          (*(v70 + 2))(v70, 0, 0, 0, 0);
          v35 = 0;
          v9 = v69;
LABEL_53:

          goto LABEL_54;
        }

        v45 = [v44 subdataWithRange:{0, 32}];
        v46 = [v44 subdataWithRange:{32, 16}];
        encryptedPayload2 = [(NGMPBOuterMessage *)v12 encryptedPayload];
        v48 = [MP_AES_CTR decrypt:encryptedPayload2 key:v45 IV:v46];

        blockCopy = v70;
        if (v48)
        {
          v95 = 0;
          v49 = [NGMPadding unpadMessage:v48 error:&v95];
          v50 = v95;

          if (v49)
          {
            v84 = v45;
            v51 = v50;
            v52 = [[NGMPBInnerMessage alloc] initWithData:v49];
            v9 = v69;
            v82 = v52;
            if (v52)
            {
              v53 = v52;
              if ([(NGMPBInnerMessage *)v52 hasCounter])
              {
                v78 = v49;
                v54 = +[NGMReplayManager sharedManager];
                v76 = v54;
                if (v54)
                {
                  v91 = v51;
                  v55 = [v54 validateIncomingCounter:-[NGMPBInnerMessage counter](v53 prekey:"counter") publicIdentity:v71 error:{v79, &v91}];
                  v56 = v91;

                  if (!v55)
                  {
                    v45 = v84;
                    if (v56)
                    {
                      v90 = v56;
                      v64 = MEMORY[0x277CCACA8];
                      v65 = [v56 description];
                      v66 = [v64 stringWithFormat:@"An error occured while validating the counter: %@", v65];
                      MPLogAndAssignError(6, &v90, v66);
                      v74 = v46;
                      v67 = v90;

                      (*(v70 + 2))(v70, 0, 0, v67, 0);
                      v56 = v67;
                      v46 = v74;
                    }

                    else
                    {
                      v89 = 0;
                      v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"The message was rejected because of a detected replay."];
                      MPLogAndAssignError(5, &v89, v68);
                      v56 = v89;

                      (*(v70 + 2))(v70, 0, 0, v56, 0);
                    }

                    v9 = v69;
                    goto LABEL_50;
                  }

                  message = [(NGMPBInnerMessage *)v53 message];
                  attributes = [(NGMPBInnerMessage *)v53 attributes];
                  (*(v70 + 2))(v70, message, attributes, 0, v55);

                  v9 = v69;
                }

                else
                {
                  v92 = v51;
                  MPLogAndAssignError(604, &v92, @"Failed to initialize replay counter database.");
                  v56 = v92;

                  v63 = (*(v70 + 2))(v70, 0, 0, v56, 0);
                  v55 = MessageProtectionLog(v63);
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
                  {
                    [NGMFullDeviceIdentity unsealMessageAndAttributes:v55 signedByPublicIdentity:? decryptionBlock:?];
                  }
                }

                v45 = v84;
LABEL_50:

                v49 = v78;
                goto LABEL_51;
              }

              v93 = v51;
              MPLogAndAssignError(602, &v93, @"No Replay Counter Found.");
              v62 = v93;
            }

            else
            {
              v94 = v50;
              MPLogAndAssignError(300, &v94, @"Inside of the incoming payload could not be parsed.");
              v62 = v94;
            }

            v56 = v62;

            (*(v70 + 2))(v70, 0, 0, v56, 0);
            v45 = v84;
LABEL_51:

            v35 = v56;
            blockCopy = v70;
            goto LABEL_52;
          }

          (*(v70 + 2))(v70, 0, 0, v50, 0);
          v9 = v69;
          v35 = v50;
        }

        else
        {
          v96 = 0;
          MPLogAndAssignError(400, &v96, @"An error occured while decrypting the message, after a valid signature check.");
          v35 = v96;
          (*(v70 + 2))(v70, 0, 0, v35, 0);
          v9 = v69;
        }

LABEL_52:

        goto LABEL_53;
      }

      v17 = v24;
    }

    v77 = [obj countByEnumeratingWithState:&v98 objects:v105 count:16];
    if (v77)
    {
      continue;
    }

    break;
  }

LABEL_16:

  keyValidator = [(NGMPBOuterMessage *)v12 keyValidator];
  v88 = v17;
  v40 = [NGMKeyValidator isValidKeyValidator:keyValidator receiversIdentity:self sendersIdentity:v79 error:&v88];
  v41 = v88;

  if (!v40)
  {
    v87 = v41;
    v59 = MEMORY[0x277CCACA8];
    if (v41)
    {
      v60 = [v41 description];
    }

    else
    {
      v60 = @"None";
    }

    v61 = [v59 stringWithFormat:@"No key could be found to validate the signature, with optional failure: %@.", v60];
    MPLogAndAssignError(404, &v87, v61);
    v17 = v87;

    if (v41)
    {
    }

    goto LABEL_36;
  }

  (*(v70 + 2))(v70, 0, 0, v41, 0);
  v17 = v41;
  blockCopy = v70;
LABEL_37:
  v9 = v69;
LABEL_55:

LABEL_56:
}

- (id)signDataWithFormatter:(id)formatter error:(id *)error
{
  formatterCopy = formatter;
  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  v8 = [deviceSigningKey signDataWithFormatter:formatterCopy error:error];

  return v8;
}

- (BOOL)shouldRollEncryptionIdentity
{
  if (![(NGMFullDeviceIdentity *)self requiresMigration])
  {
    devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
    lastObject = [devicePrekeys lastObject];

    if (lastObject)
    {
      if (MPSecondaryRegistrationDisabled() && ([lastObject tetraRegistration], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
      {
        v9 = MessageProtectionLog(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v19 = 0;
          v10 = "Re-registering with a fresh prekey because Tetra was disabled and we still have a prekey with secondary registration.";
          v11 = &v19;
LABEL_17:
          _os_log_impl(&dword_22B404000, v9, OS_LOG_TYPE_INFO, v10, v11, 2u);
        }
      }

      else
      {
        tetraRegistration = [lastObject tetraRegistration];

        if (tetraRegistration)
        {
          tetraRegistration2 = [lastObject tetraRegistration];
          tetraVersion = [tetraRegistration2 tetraVersion];
          v15 = tetraVersion == +[_TtC17MessageProtection13TetraVersions currentTetraVersion];
        }

        else
        {
          v15 = 0;
        }

        v16 = MPSecondaryRegistrationDisabled();
        if ((v16 & 1) != 0 || v15)
        {
          v3 = [NGMTimeBasedEvaluations prekeyShouldBeRolled:lastObject];
          goto LABEL_20;
        }

        v9 = MessageProtectionLog(v16);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v18 = 0;
          v10 = "Re-registering because of Tetra update or an enablement.";
          v11 = &v18;
          goto LABEL_17;
        }
      }
    }

    else
    {
      v9 = MessageProtectionLog(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v20 = 0;
        v10 = "No device prekey is available, rolling should occur.";
        v11 = &v20;
        goto LABEL_17;
      }
    }

    v3 = 1;
LABEL_20:

    return v3;
  }

  return 1;
}

- (BOOL)eraseFromKeyChain:(id *)chain
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NGMFullDeviceIdentity *)self devicePrekeys:chain];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v7 &= [*(*(&v10 + 1) + 8 * i) delete];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (id)keyRollingTicketWithError:(id *)error
{
  v5 = [NGMKeyRollingTicket alloc];
  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  v7 = [(NGMKeyRollingTicket *)v5 initTicketWithSigningKey:deviceSigningKey error:error];

  return v7;
}

- (BOOL)updateWithRegisteredTicket:(id)ticket error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  ticketCopy = ticket;
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
  v8 = [devicePrekeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(devicePrekeys);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([NGMTimeBasedEvaluations prekeyCanBeDeleted:v12])
        {
          [v12 delete];
          [array addObject:v12];
        }
      }

      v9 = [devicePrekeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v13 = +[NGMReplayManager sharedManager];
  [v13 deleteExpiredSendingDestinations];

  devicePrekeys2 = [(NGMFullDeviceIdentity *)self devicePrekeys];
  [devicePrekeys2 removeObjectsInArray:array];

  devicePrekeys3 = [(NGMFullDeviceIdentity *)self devicePrekeys];
  prekey = [ticketCopy prekey];
  [devicePrekeys3 addObject:prekey];

  return 1;
}

- (id)description
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  string = [MEMORY[0x277CCAB68] string];
  devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__NGMFullDeviceIdentity_description__block_invoke;
  v9[3] = &unk_2786FDC08;
  v9[4] = &v10;
  [devicePrekeys enumerateObjectsUsingBlock:v9];

  v4 = MEMORY[0x277CCACA8];
  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  v6 = [deviceSigningKey description];
  v7 = [v4 stringWithFormat:@"NGMFullDeviceIdentity with device signing key: %@ \n Prekeys: %@", v6, v11[5]];

  _Block_object_dispose(&v10, 8);

  return v7;
}

void __36__NGMFullDeviceIdentity_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 description];
  [v2 appendString:v3];
}

- (BOOL)testing_duplicatePrekeyRegistration
{
  v3 = +[NGMReplayManager sharedManager];
  devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
  firstObject = [devicePrekeys firstObject];
  v6 = [v3 duplicateTagForPrekey:firstObject];

  return v6;
}

+ (void)identityWithAccess:(id *)a1 error:(NSObject *)a2 .cold.1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Signing key generation failed: %@", &v4, 0xCu);
}

+ (void)identityWithDataRepresentation:(void *)a3 error:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 description];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_22B404000, a4, OS_LOG_TYPE_ERROR, "Failed to deserialize prekey in NGMFullDeviceIdentity initialization: %@.", a1, 0xCu);
}

- (void)unsealMessageAndAttributes:(uint64_t)a1 authenticatedData:(NSObject *)a2 messageType:guid:sendingURI:sendingPushToken:receivingURI:receivingPushToken:signedByPublicIdentity:decryptionBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_22B404000, a2, OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
}

@end