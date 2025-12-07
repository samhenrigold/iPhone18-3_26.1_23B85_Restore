@interface NGMPublicDeviceIdentity
+ (NGMPublicDeviceIdentity)identityWithIdentityData:(id)data prekeyData:(id)prekeyData error:(id *)error;
- (BOOL)isIdenticalIdentityTo:(id)to;
- (BOOL)isTetraCompatibleWithFullKey:(id)key;
- (BOOL)isTetraNoRatchetCompatibleWithFullKey:(id)key;
- (BOOL)isValidSignature:(id)signature forMessage:(id)message forType:(int64_t)type error:(id *)error;
- (BOOL)isValidSigningDestination;
- (BOOL)markForStateResetWithOurURI:(id)i ourPushToken:(id)token ourSigningIdentity:(id)identity theirURI:(id)rI theirPushToken:(id)pushToken;
- (BOOL)validateTetraBindingsAuthenticatedData:(id)data GUID:(id)d sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken;
- (BOOL)verifySignature:(id)signature formatter:(id)formatter;
- (NGMPublicDeviceIdentity)initWithEchnidaRegistration:(id)registration tetraRegistration:(id)tetraRegistration signingKey:(id)key;
- (id)description;
- (id)identityData;
- (id)prekeyData;
- (id)sealMessage:(id)message authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 forceSizeOptimizations:(BOOL)self1 resetState:(BOOL)self2 encryptedAttributes:(id)self3 signedByFullIdentity:(id)self4 errors:(id *)self5;
- (id)sealMessage:(id)message forceSizeOptimizations:(BOOL)optimizations resetState:(BOOL)state encryptedAttributes:(id)attributes signedByFullIdentity:(id)identity errors:(id *)errors;
- (id)sealMessage:(id)message guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken forceSizeOptimizations:(BOOL)optimizations resetState:(BOOL)self0 encryptedAttributes:(id)self1 signedByFullIdentity:(id)self2 errors:(id *)self3;
- (id)sealMessage:(id)message signedByFullIdentity:(id)identity error:(id *)error;
- (id)sealMessage:(id)message withEncryptedAttributes:(id)attributes signedByFullIdentity:(id)identity error:(id *)error;
- (void)prekeyData;
@end

@implementation NGMPublicDeviceIdentity

- (NGMPublicDeviceIdentity)initWithEchnidaRegistration:(id)registration tetraRegistration:(id)tetraRegistration signingKey:(id)key
{
  registrationCopy = registration;
  tetraRegistrationCopy = tetraRegistration;
  keyCopy = key;
  v15.receiver = self;
  v15.super_class = NGMPublicDeviceIdentity;
  v12 = [(NGMPublicDeviceIdentity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_signingKey, key);
    objc_storeStrong(&v13->_echnidaRegistration, registration);
    objc_storeStrong(&v13->_tetraRegistration, tetraRegistration);
  }

  return v13;
}

+ (NGMPublicDeviceIdentity)identityWithIdentityData:(id)data prekeyData:(id)prekeyData error:(id *)error
{
  prekeyDataCopy = prekeyData;
  dataCopy = data;
  v10 = [[NGMPBPublicDeviceIdentity alloc] initWithData:dataCopy];

  if (v10 && ([(NGMPBPublicDeviceIdentity *)v10 signingKey], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [SigningPublicKey alloc];
    signingKey = [(NGMPBPublicDeviceIdentity *)v10 signingKey];
    v14 = [(PublicKey *)v12 initWithData:signingKey error:error];

    if (v14)
    {
      v15 = [[NGMPBPublicDevicePrekey alloc] initWithData:prekeyDataCopy];
      v16 = v15;
      if (v15 && ([(NGMPBPublicDevicePrekey *)v15 prekey], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
      {
        v18 = [[NGMECDHPublicPreKey alloc] initRemotePrekeyWithPublicPrekeyPB:v16 signedBy:v14 error:error];
        v19 = v18;
        if (v18 && ([v18 dhKey], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
        {
          if ([_TtC17MessageProtection13TetraVersions isWireCompatibleWith:[(NGMPBPublicDeviceIdentity *)v10 tetraVersion]])
          {
            v30 = [_TtC17MessageProtection17TetraRegistration alloc];
            tetraPreKey = [(NGMPBPublicDevicePrekey *)v16 tetraPreKey];
            dhKey = [v19 dhKey];
            v31 = [dhKey key];
            dataRepresentation = [v31 dataRepresentation];
            tetraVersion = [(NGMPBPublicDeviceIdentity *)v10 tetraVersion];
            [(NGMPBPublicDevicePrekey *)v16 timestamp];
            v24 = v23;
            tetraWrapped = [(SigningPublicKey *)v14 tetraWrapped];
            v26 = [(TetraRegistration *)v30 initWithTetraRegistrationData:tetraPreKey ecdhPublicKey:dataRepresentation version:tetraVersion timestamp:tetraWrapped signedBy:1 isEncrypting:error error:v24];
          }

          else
          {
            NSLog(&cfstr_TetraVersionMi.isa, [(NGMPBPublicDeviceIdentity *)v10 tetraVersion], +[_TtC17MessageProtection13TetraVersions currentTetraVersion]);
            v26 = 0;
          }

          v27 = [[self alloc] initWithEchnidaRegistration:v19 tetraRegistration:v26 signingKey:v14];
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        MPLogAndAssignError(100, error, @"Failed to deserialize the device public prekey.");
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    MPLogAndAssignError(302, error, @"The deserialization of the public fixed device identity failed.");
    v27 = 0;
  }

  return v27;
}

- (id)identityData
{
  v3 = objc_alloc_init(NGMPBPublicDeviceIdentity);
  signingKey = [(NGMPublicDeviceIdentity *)self signingKey];
  dataRepresentation = [signingKey dataRepresentation];
  [(NGMPBPublicDeviceIdentity *)v3 setSigningKey:dataRepresentation];

  tetraRegistration = [(NGMPublicDeviceIdentity *)self tetraRegistration];

  if (tetraRegistration)
  {
    tetraRegistration2 = [(NGMPublicDeviceIdentity *)self tetraRegistration];
    -[NGMPBPublicDeviceIdentity setTetraVersion:](v3, "setTetraVersion:", [tetraRegistration2 tetraVersion]);
  }

  signingKey2 = [(NGMPBPublicDeviceIdentity *)v3 signingKey];

  if (signingKey2)
  {
    data = [(NGMPBPublicDeviceIdentity *)v3 data];
  }

  else
  {
    v11 = MessageProtectionLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NGMPublicDeviceIdentity identityData];
    }

    data = 0;
  }

  return data;
}

- (BOOL)isIdenticalIdentityTo:(id)to
{
  toCopy = to;
  v5 = [[NGMPBPublicDeviceIdentity alloc] initWithData:toCopy];

  if (!v5 || ([(NGMPBPublicDeviceIdentity *)v5 signingKey], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v19 = MessageProtectionLog(v6);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NGMPublicDeviceIdentity isIdenticalIdentityTo:];
    }

    goto LABEL_13;
  }

  signingKey = [(NGMPublicDeviceIdentity *)self signingKey];
  dataRepresentation = [signingKey dataRepresentation];
  signingKey2 = [(NGMPBPublicDeviceIdentity *)v5 signingKey];
  v11 = [dataRepresentation isEqualToData:signingKey2];

  if ((v11 & 1) == 0)
  {
    v19 = MessageProtectionLog(v12);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NGMPublicDeviceIdentity isIdenticalIdentityTo:];
    }

LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  tetraRegistration = [(NGMPublicDeviceIdentity *)self tetraRegistration];
  if (!tetraRegistration || (v14 = tetraRegistration, -[NGMPublicDeviceIdentity tetraRegistration](self, "tetraRegistration"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 tetraVersion], v17 = -[NGMPBPublicDeviceIdentity tetraVersion](v5, "tetraVersion"), v15, v14, v16 >= v17))
  {
    v20 = 1;
    goto LABEL_15;
  }

  v19 = MessageProtectionLog(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [NGMPublicDeviceIdentity isIdenticalIdentityTo:];
  }

  v20 = 1;
LABEL_14:

LABEL_15:
  return v20;
}

- (id)prekeyData
{
  v3 = objc_alloc_init(NGMPBPublicDevicePrekey);
  echnidaRegistration = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
  [echnidaRegistration timestamp];
  [(NGMPBPublicDevicePrekey *)v3 setTimestamp:?];

  echnidaRegistration2 = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
  [echnidaRegistration2 timestamp];
  LOBYTE(echnidaRegistration) = [NGMTimeBasedEvaluations validateFetchedPrekeyTimestamp:1 forEvaluationType:?];

  if (echnidaRegistration)
  {
    echnidaRegistration3 = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
    dhKey = [echnidaRegistration3 dhKey];
    dataRepresentation = [dhKey dataRepresentation];
    [(NGMPBPublicDevicePrekey *)v3 setPrekey:dataRepresentation];

    prekey = [(NGMPBPublicDevicePrekey *)v3 prekey];

    if (!prekey)
    {
      v21 = 0;
      goto LABEL_17;
    }

    echnidaRegistration4 = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
    signature = [echnidaRegistration4 signature];
    [(NGMPBPublicDevicePrekey *)v3 setPrekeySignature:signature];

    tetraRegistration = [(NGMPublicDeviceIdentity *)self tetraRegistration];

    if (tetraRegistration)
    {
      tetraRegistration2 = [(NGMPublicDeviceIdentity *)self tetraRegistration];
      registrationData = [tetraRegistration2 registrationData];
      [(NGMPBPublicDevicePrekey *)v3 setTetraPreKey:registrationData];
    }

    data = [(NGMPBPublicDevicePrekey *)v3 data];
    identityData = [(NGMPublicDeviceIdentity *)self identityData];
    v24 = 0;
    v18 = [NGMPublicDeviceIdentity identityWithIdentityData:identityData prekeyData:data error:&v24];
    v19 = v24;

    if (v19 || !v18)
    {
      v22 = MessageProtectionLog(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(NGMPublicDeviceIdentity *)v19 prekeyData];
      }

      v21 = 0;
    }

    else
    {
      v21 = data;
    }
  }

  else
  {
    data = MessageProtectionLog(v6);
    if (os_log_type_enabled(data, OS_LOG_TYPE_ERROR))
    {
      [NGMPublicDeviceIdentity prekeyData];
    }

    v21 = 0;
  }

LABEL_17:

  return v21;
}

- (BOOL)verifySignature:(id)signature formatter:(id)formatter
{
  formatterCopy = formatter;
  signatureCopy = signature;
  signingKey = [(NGMPublicDeviceIdentity *)self signingKey];
  v9 = [signingKey verifySignature:signatureCopy formatter:formatterCopy];

  return v9;
}

- (BOOL)isValidSigningDestination
{
  echnidaRegistration = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
  [echnidaRegistration timestamp];
  v3 = [NGMTimeBasedEvaluations validateFetchedPrekeyTimestamp:1 forEvaluationType:?];

  return v3;
}

- (BOOL)isTetraCompatibleWithFullKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  tetraRegistration = self->_tetraRegistration;
  if (tetraRegistration && (tetraRegistration = +[TetraVersions isWireCompatibleWith:](_TtC17MessageProtection13TetraVersions, "isWireCompatibleWith:", [tetraRegistration tetraVersion]), tetraRegistration) && (objc_msgSend(keyCopy, "devicePrekeys"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "lastObject"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "tetraRegistration"), v8 = objc_claimAutoreleasedReturnValue(), v9 = +[TetraVersions isWireCompatibleWith:](_TtC17MessageProtection13TetraVersions, "isWireCompatibleWith:", objc_msgSend(v8, "tetraVersion")), v8, v7, v6, v9))
  {
    v10 = 1;
  }

  else
  {
    v11 = MessageProtectionLog(tetraRegistration);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      tetraVersion = [(TetraRegistration *)self->_tetraRegistration tetraVersion];
      devicePrekeys = [keyCopy devicePrekeys];
      lastObject = [devicePrekeys lastObject];
      tetraRegistration = [lastObject tetraRegistration];
      v17[0] = 67109632;
      v17[1] = tetraVersion;
      v18 = 1024;
      tetraVersion2 = [tetraRegistration tetraVersion];
      v20 = 1024;
      v21 = +[_TtC17MessageProtection13TetraVersions currentTetraVersion];
      _os_log_impl(&dword_22B404000, v11, OS_LOG_TYPE_INFO, "Their remote registered Tetra version (%u), our registered Tetra version (%d) and our software version (%u) are different.", v17, 0x14u);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)isTetraNoRatchetCompatibleWithFullKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  tetraRegistration = self->_tetraRegistration;
  if (tetraRegistration && (tetraRegistration = +[TetraVersions isTetraNoRatchetCompatibleWith:](_TtC17MessageProtection13TetraVersions, "isTetraNoRatchetCompatibleWith:", [tetraRegistration tetraVersion]), tetraRegistration) && (objc_msgSend(keyCopy, "devicePrekeys"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "lastObject"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "tetraRegistration"), v8 = objc_claimAutoreleasedReturnValue(), v9 = +[TetraVersions isTetraNoRatchetCompatibleWith:](_TtC17MessageProtection13TetraVersions, "isTetraNoRatchetCompatibleWith:", objc_msgSend(v8, "tetraVersion")), v8, v7, v6, v9))
  {
    v10 = 1;
  }

  else
  {
    v11 = MessageProtectionLog(tetraRegistration);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      tetraVersion = [(TetraRegistration *)self->_tetraRegistration tetraVersion];
      devicePrekeys = [keyCopy devicePrekeys];
      lastObject = [devicePrekeys lastObject];
      tetraRegistration = [lastObject tetraRegistration];
      v17[0] = 67109632;
      v17[1] = tetraVersion;
      v18 = 1024;
      tetraVersion2 = [tetraRegistration tetraVersion];
      v20 = 1024;
      v21 = +[_TtC17MessageProtection13TetraVersions currentTetraVersion];
      _os_log_impl(&dword_22B404000, v11, OS_LOG_TYPE_INFO, "(TetraNoRatchet) Their remote registered Tetra version (%u), our registered Tetra version (%d) and our software version (%u) are different.", v17, 0x14u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)sealMessage:(id)message signedByFullIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  messageCopy = message;
  v10 = MessageProtectionLog(messageCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [NGMPublicDeviceIdentity sealMessage:signedByFullIdentity:error:];
  }

  v11 = [(NGMPublicDeviceIdentity *)self sealMessage:messageCopy withEncryptedAttributes:0 signedByFullIdentity:identityCopy error:error];

  return v11;
}

- (id)sealMessage:(id)message withEncryptedAttributes:(id)attributes signedByFullIdentity:(id)identity error:(id *)error
{
  messageCopy = message;
  attributesCopy = attributes;
  identityCopy = identity;
  if (![(NGMPublicDeviceIdentity *)self isValidSigningDestination])
  {
    v23 = MEMORY[0x277CCACA8];
    echnidaRegistration = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
    [echnidaRegistration timestamp];
    v25 = [v23 stringWithFormat:@"Failed to encrypt to prekey that is no longer valid: %f.", v24];
    MPLogAndAssignError(150, error, v25);

LABEL_10:
    v21 = 0;
    goto LABEL_19;
  }

  echnidaRegistration = [(FullKey *)DHKey generateNewKeyWithAccess:0 forceNoSEP:1 error:error];
  if (!echnidaRegistration)
  {
    MPLogAndAssignError(4, error, @"Failed to generate an ephemeral P-256 key for message sealing.");
    goto LABEL_10;
  }

  echnidaRegistration2 = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
  dhKey = [echnidaRegistration2 dhKey];
  v16 = [echnidaRegistration keyAgreementWithPublicKey:dhKey error:error];

  if (v16)
  {
    v17 = [@"LastPawn-MessageKeys" dataUsingEncoding:4];
    v18 = [_TtC17MessageProtection4HKDF deriveKeyWith:v16 salt:v17 outputSize:48];

    if (!v18)
    {
      v21 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v46 = [v18 subdataWithRange:{0, 32}];
    v45 = [v18 subdataWithRange:{32, 16}];
    v19 = [NGMMessageFormatter formatOutgoingInnerMessageWithPayload:messageCopy attributes:attributesCopy destinationIdentity:self sendingIdentity:identityCopy error:error];
    if (v19)
    {
      v20 = v19;
      if (*error)
      {
        v21 = 0;
        v22 = v19;
LABEL_16:

        goto LABEL_17;
      }

      v22 = [NGMPadding padMessage:v19 error:error];

      if (!*error)
      {
        v27 = [MP_AES_CTR encrypt:v22 key:v46 IV:v45];
        if (v27)
        {
          v43 = [NGMMessageSignatureFormatter alloc];
          echnidaRegistration3 = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
          dhKey2 = [echnidaRegistration3 dhKey];
          dataRepresentation = [dhKey2 dataRepresentation];
          publicKey = [echnidaRegistration publicKey];
          dataRepresentation2 = [publicKey dataRepresentation];
          signingKey = [(NGMPublicDeviceIdentity *)self signingKey];
          dataRepresentation3 = [signingKey dataRepresentation];
          v29 = v27;
          v30 = dataRepresentation3;
          v38 = v29;
          v44 = [(NGMMessageSignatureFormatter *)v43 initWithDHOutput:v16 prekeyPub:dataRepresentation ephemeralPub:dataRepresentation2 recipientPub:dataRepresentation3 ciphertext:?];

          v31 = [identityCopy signDataWithFormatter:v44 error:error];
          if (v31)
          {
            v42 = v31;
            v40 = [NGMKeyValidator keyValidatorWithReceiversIdentity:self sendersIdentity:identityCopy];
            v32 = [echnidaRegistration key];
            publicKey2 = [v32 publicKey];
            v21 = [NGMMessageFormatter formatOutgoingMessageWithEncryptedPayload:v38 ephemeral:publicKey2 signature:v42 keyValidator:v40];

            v31 = v42;
          }

          else
          {
            v21 = 0;
          }

          v27 = v38;
        }

        else
        {
          MPLogAndAssignError(400, error, @"The encryption of an outgoing message failed.");
          v21 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v22 = 0;
    }

    v21 = 0;
    goto LABEL_16;
  }

  v21 = 0;
LABEL_18:

LABEL_19:

  return v21;
}

- (id)sealMessage:(id)message forceSizeOptimizations:(BOOL)optimizations resetState:(BOOL)state encryptedAttributes:(id)attributes signedByFullIdentity:(id)identity errors:(id *)errors
{
  identityCopy = identity;
  messageCopy = message;
  v13 = MessageProtectionLog(messageCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [NGMPublicDeviceIdentity sealMessage:forceSizeOptimizations:resetState:encryptedAttributes:signedByFullIdentity:errors:];
  }

  v17 = 0;
  v14 = [(NGMPublicDeviceIdentity *)self sealMessage:messageCopy withEncryptedAttributes:0 signedByFullIdentity:identityCopy error:&v17];

  v15 = v17;
  if (!v15)
  {
    v15 = NoError();
  }

  [*errors setObject:v15 forKey:&unk_283F13B38];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  signingKey = [(NGMPublicDeviceIdentity *)self signingKey];
  v5 = [signingKey description];
  echnidaRegistration = [(NGMPublicDeviceIdentity *)self echnidaRegistration];
  v7 = [echnidaRegistration description];
  v8 = [v3 stringWithFormat:@"NGMPublicDeviceIdentity with device signing key: %@ \n prekey: %@", v5, v7];

  return v8;
}

- (BOOL)validateTetraBindingsAuthenticatedData:(id)data GUID:(id)d sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken
{
  v52 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  pushTokenCopy = pushToken;
  v19 = MessageProtectionLog(pushTokenCopy);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [dataCopy base64EncodedStringWithOptions:0];
    v21 = [tokenCopy base64EncodedStringWithOptions:0];
    v22 = [pushTokenCopy base64EncodedStringWithOptions:0];
    *buf = 138413570;
    v41 = v20;
    v42 = 2112;
    v43 = dCopy;
    v44 = 2112;
    v45 = iCopy;
    v46 = 2112;
    v47 = v21;
    v48 = 2112;
    v49 = rICopy;
    v50 = 2112;
    v51 = v22;
    _os_log_impl(&dword_22B404000, v19, OS_LOG_TYPE_INFO, "Tetra binding arguments: {authenticatedData = %@, guid = %@, sendingURI = %@, sendingPushToken = %@, receivingURI = %@, receivingPushToken = %@}", buf, 0x3Eu);
  }

  if (dataCopy)
  {
    v23 = [dataCopy length];
    v39 = v23 != 0;
    if (dCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v39 = 0;
    if (dCopy)
    {
LABEL_5:
      v23 = [(__CFString *)dCopy isEqualToString:&stru_283F0C6E8];
      v24 = v23 ^ 1;
      if (iCopy)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  v24 = 0;
  if (iCopy)
  {
LABEL_6:
    v23 = [(__CFString *)iCopy isEqualToString:&stru_283F0C6E8];
    v25 = v23;
    if (tokenCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  v25 = 1;
  if (tokenCopy)
  {
LABEL_7:
    v23 = [tokenCopy length];
    v26 = v23 == 0;
    if (rICopy)
    {
      goto LABEL_8;
    }

LABEL_14:
    v27 = 0;
    if (pushTokenCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_13:
  v26 = 1;
  if (!rICopy)
  {
    goto LABEL_14;
  }

LABEL_8:
  v23 = [(__CFString *)rICopy isEqualToString:&stru_283F0C6E8];
  v27 = v23 ^ 1;
  if (pushTokenCopy)
  {
LABEL_9:
    v23 = [pushTokenCopy length];
    v28 = v23 != 0;
    goto LABEL_16;
  }

LABEL_15:
  v28 = 0;
LABEL_16:
  v29 = ((v39 & v24 ^ 1 | v25 | v26) ^ 1) & v27 & v28;
  if ((v29 & 1) == 0)
  {
    v30 = MessageProtectionLog(v23);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
LABEL_18:

      goto LABEL_19;
    }

    if (v39)
    {
      v32 = @"Valid";
    }

    else
    {
      v32 = [dataCopy description];
    }

    if (v24)
    {
      v38 = @"Valid";
    }

    else
    {
      v38 = [(__CFString *)dCopy description];
    }

    if (iCopy)
    {
      v37 = @"Valid";
    }

    else
    {
      v37 = [0 description];
    }

    if (tokenCopy)
    {
      v36 = @"Valid";
    }

    else
    {
      v36 = [0 description];
    }

    if (rICopy)
    {
      v35 = @"Valid";
    }

    else
    {
      v35 = [0 description];
    }

    if (pushTokenCopy)
    {
      v33 = @"Valid";
    }

    else
    {
      v33 = [0 description];
    }

    *buf = 138413570;
    v41 = v32;
    v42 = 2112;
    v43 = v38;
    v44 = 2112;
    v45 = v37;
    v46 = 2112;
    v47 = v36;
    v48 = 2112;
    v49 = v35;
    v50 = 2112;
    v34 = v33;
    v51 = v33;
    _os_log_fault_impl(&dword_22B404000, v30, OS_LOG_TYPE_FAULT, "Invalid Tetra binding argument: {authenticatedData = %@, guid = %@, sendingURI = %@, sendingPushToken = %@, receivingURI = %@, receivingPushToken = %@}", buf, 0x3Eu);
    if (pushTokenCopy)
    {
      if (rICopy)
      {
        goto LABEL_40;
      }
    }

    else
    {

      if (rICopy)
      {
LABEL_40:
        if (tokenCopy)
        {
          goto LABEL_41;
        }

        goto LABEL_48;
      }
    }

    if (tokenCopy)
    {
LABEL_41:
      if (iCopy)
      {
        goto LABEL_42;
      }

      goto LABEL_49;
    }

LABEL_48:

    if (iCopy)
    {
LABEL_42:
      if (v24)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

LABEL_49:

    if (v24)
    {
LABEL_44:
      if (!v39)
      {
      }

      goto LABEL_18;
    }

LABEL_43:

    goto LABEL_44;
  }

LABEL_19:

  return v29 & 1;
}

- (BOOL)markForStateResetWithOurURI:(id)i ourPushToken:(id)token ourSigningIdentity:(id)identity theirURI:(id)rI theirPushToken:(id)pushToken
{
  iCopy = i;
  tokenCopy = token;
  identityCopy = identity;
  rICopy = rI;
  pushTokenCopy = pushToken;
  tetraRegistration = [(NGMPublicDeviceIdentity *)self tetraRegistration];
  if (tetraRegistration)
  {
    v18 = tetraRegistration;
    v34 = tokenCopy;
    v35 = rICopy;
    tetraRegistration2 = [(NGMPublicDeviceIdentity *)self tetraRegistration];
    signingPublicKey = [tetraRegistration2 signingPublicKey];
    if (signingPublicKey)
    {
      v21 = signingPublicKey;
      [(NGMPublicDeviceIdentity *)self tetraRegistration];
      v22 = pushTokenCopy;
      v23 = identityCopy;
      v25 = v24 = iCopy;
      signingPublicKey2 = [v25 signingPublicKey];
      compactRepresentation = [signingPublicKey2 compactRepresentation];

      iCopy = v24;
      identityCopy = v23;
      pushTokenCopy = v22;

      tokenCopy = v34;
      rICopy = v35;
      if (compactRepresentation)
      {
        tetraRegistration3 = [(NGMPublicDeviceIdentity *)self tetraRegistration];
        deviceSigningKey = [identityCopy deviceSigningKey];
        tetraWrapped = [deviceSigningKey tetraWrapped];
        v31 = [_TtC17MessageProtection8TetraAPI markForStateResetWithOurURI:iCopy ourPushToken:v34 theirURI:v35 theirPushToken:pushTokenCopy theirRegistration:tetraRegistration3 signedByOur:tetraWrapped];

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v32 = MessageProtectionLog(tetraRegistration);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    [NGMPublicDeviceIdentity markForStateResetWithOurURI:ourPushToken:ourSigningIdentity:theirURI:theirPushToken:];
  }

  v31 = 0;
LABEL_9:

  return v31;
}

- (id)sealMessage:(id)message authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 forceSizeOptimizations:(BOOL)self1 resetState:(BOOL)self2 encryptedAttributes:(id)self3 signedByFullIdentity:(id)self4 errors:(id *)self5
{
  v68 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dataCopy = data;
  guidCopy = guid;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  pushTokenCopy = pushToken;
  attributesCopy = attributes;
  identityCopy = identity;
  v26 = MPSecondaryEncryptionDisabled();
  v27 = MPSecondaryRegistrationDisabled();
  v56 = iCopy;
  v57 = dataCopy;
  v28 = guidCopy;
  v55 = tokenCopy;
  v29 = tokenCopy;
  v30 = guidCopy;
  v31 = pushTokenCopy;
  v32 = [(NGMPublicDeviceIdentity *)self validateTetraBindingsAuthenticatedData:dataCopy GUID:v28 sendingURI:iCopy sendingPushToken:v29 receivingURI:rICopy receivingPushToken:pushTokenCopy];
  v33 = v32;
  v34 = MessageProtectionLog(v32);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v63 = v30;
    v64 = 1024;
    v65 = v26;
    v66 = 1024;
    v67 = v27;
    _os_log_impl(&dword_22B404000, v34, OS_LOG_TYPE_INFO, "Sealing message with GUID: %@. secondaryDisabled=%d, secondaryRegistrationDisabled=%d", buf, 0x18u);
  }

  v35 = _os_feature_enabled_impl();
  selfCopy = self;
  v37 = v31;
  if (v26 & 1 | ![(NGMPublicDeviceIdentity *)self isTetraCompatibleWithFullKey:identityCopy]|| ((v33 ^ 1) & 1) != 0)
  {
    goto LABEL_15;
  }

  if (([(NGMPublicDeviceIdentity *)self messageTypeRequiresNoRatcheting:type]& v35) == 1)
  {
    v38 = [(NGMPublicDeviceIdentity *)self isTetraNoRatchetCompatibleWithFullKey:identityCopy];
    if (!type || v38)
    {
LABEL_10:
      if ([(NGMPublicDeviceIdentity *)self messageTypeRequiresNoRatcheting:type])
      {
        v61 = 0;
        v39 = [_TtC17MessageProtection8TetraAPI sealNoRatchetWithMessage:messageCopy authenticatedData:v57 sendingURI:v56 sendingPushToken:v55 receivingURI:rICopy receivingPushToken:v31 encryptedAttributes:attributesCopy receiverIdentity:self senderIdentity:identityCopy error:&v61];
        v40 = v61;
        v41 = 0;
        if (v40)
        {
LABEL_12:
          v42 = MessageProtectionLog([*errors setObject:v40 forKey:&unk_283F13B50]);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            [NGMPublicDeviceIdentity sealMessage:v40 authenticatedData:v41 messageType:v42 guid:? sendingURI:? sendingPushToken:? receivingURI:? receivingPushToken:? forceSizeOptimizations:? resetState:? encryptedAttributes:? signedByFullIdentity:? errors:?];
          }

          goto LABEL_15;
        }
      }

      else
      {
        tetraRegistration = [(NGMPublicDeviceIdentity *)self tetraRegistration];
        deviceSigningKey = [identityCopy deviceSigningKey];
        tetraWrapped = [deviceSigningKey tetraWrapped];
        v60 = 0;
        LOBYTE(v51) = state;
        v39 = [_TtC17MessageProtection8TetraAPI sealWithMessage:messageCopy authenticatedData:v57 guid:v30 sendingURI:v56 sendingPushToken:v55 receivingURI:rICopy receivingPushToken:v31 receiverRegistration:tetraRegistration encryptedAttributes:attributesCopy resetState:v51 signedBy:tetraWrapped error:&v60];
        v40 = v60;

        v41 = 1;
        if (v40)
        {
          goto LABEL_12;
        }
      }

      v45 = NoError();
      [*errors setObject:v45 forKey:&unk_283F13B50];
      v50 = objc_alloc_init(NGMPBOuterMessage);
      [(NGMPBOuterMessage *)v50 setTetraMessage:v39];
      data = [(NGMPBOuterMessage *)v50 data];

      v43 = messageCopy;
      goto LABEL_18;
    }
  }

  else if (!type)
  {
    goto LABEL_10;
  }

LABEL_15:
  v59 = 0;
  v43 = messageCopy;
  data = [(NGMPublicDeviceIdentity *)selfCopy sealMessage:messageCopy withEncryptedAttributes:attributesCopy signedByFullIdentity:identityCopy error:&v59];
  v45 = v59;
  if (!v45)
  {
    v45 = NoError();
  }

  [*errors setObject:v45 forKey:&unk_283F13B38];
LABEL_18:

  return data;
}

- (id)sealMessage:(id)message guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken forceSizeOptimizations:(BOOL)optimizations resetState:(BOOL)self0 encryptedAttributes:(id)self1 signedByFullIdentity:(id)self2 errors:(id *)self3
{
  v19 = MEMORY[0x277CBEA90];
  identityCopy = identity;
  attributesCopy = attributes;
  pushTokenCopy = pushToken;
  rICopy = rI;
  tokenCopy = token;
  iCopy = i;
  guidCopy = guid;
  messageCopy = message;
  data = [v19 data];
  LOWORD(v31) = __PAIR16__(state, optimizations);
  v29 = [(NGMPublicDeviceIdentity *)self sealMessage:messageCopy authenticatedData:data messageType:0 guid:guidCopy sendingURI:iCopy sendingPushToken:tokenCopy receivingURI:rICopy receivingPushToken:pushTokenCopy forceSizeOptimizations:v31 resetState:attributesCopy encryptedAttributes:identityCopy signedByFullIdentity:errors errors:?];

  return v29;
}

- (BOOL)isValidSignature:(id)signature forMessage:(id)message forType:(int64_t)type error:(id *)error
{
  signatureCopy = signature;
  messageCopy = message;
  if (type > 2)
  {
    v13 = 0;
  }

  else
  {
    v11 = [objc_alloc(*off_2786FDF30[type]) initWithApplicationData:messageCopy];
    signingKey = [(NGMPublicDeviceIdentity *)self signingKey];
    v13 = [signingKey verifySignature:signatureCopy formatter:v11];
  }

  return v13;
}

- (void)prekeyData
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [self description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Attempting to register an invalidly signed public key: %@", &v4, 0xCu);
}

- (void)sealMessage:(NSObject *)a3 authenticatedData:messageType:guid:sendingURI:sendingPushToken:receivingURI:receivingPushToken:forceSizeOptimizations:resetState:encryptedAttributes:signedByFullIdentity:errors:.cold.1(void *a1, int a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 debugDescription];
  v6[0] = 67109378;
  v6[1] = a2;
  v7 = 2112;
  v8 = v5;
  _os_log_error_impl(&dword_22B404000, a3, OS_LOG_TYPE_ERROR, "Tetra encryption (TetraRatchet = %d) failed, allowing fallback on Echnida. {tetraError=%@}", v6, 0x12u);
}

@end