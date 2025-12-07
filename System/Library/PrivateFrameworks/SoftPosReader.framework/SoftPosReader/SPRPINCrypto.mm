@interface SPRPINCrypto
- (SPRPINCrypto)initWithAttestationData:(id)data casdCertificate:(id)certificate entropy:(id)entropy digitCodeMap:(char *)map error:(id *)error;
- (SPRPINCrypto)initWithPeerPublicKey:(__SecKey *)key entropy:(id)entropy digitCodeMap:(char *)map;
- (id)encryptCode:(unsigned __int8)code seed:(id)seed error:(id *)error;
- (void)dealloc;
@end

@implementation SPRPINCrypto

- (SPRPINCrypto)initWithPeerPublicKey:(__SecKey *)key entropy:(id)entropy digitCodeMap:(char *)map
{
  entropyCopy = entropy;
  if (qword_2803D4030 != -1)
  {
    sub_26AA7E3E8();
  }

  sub_26A957BC0(entropyCopy, map);
  if (v9)
  {
    v14 = v9;
    v15 = objc_msgSend_pinCryptoObjC(MEMORY[0x277D498B8], v10, v11, v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_26AA7E3FC(v14, v15);
    }

    selfCopy = 0;
  }

  else
  {
    CFRetain(key);
    self->_peerPublicKey = key;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_pinCryptoObjC(MEMORY[0x277D498B8], a2, v2, v3, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_26A93A000, v6, OS_LOG_TYPE_INFO, "%@.dealloc()", buf, 0xCu);
  }

  peerPublicKey = self->_peerPublicKey;
  if (peerPublicKey)
  {
    CFRelease(peerPublicKey);
    self->_peerPublicKey = 0;
  }

  pinVault = self->_pinVault;
  if (pinVault)
  {
    sub_26A960EC4(pinVault);
  }

  v9.receiver = self;
  v9.super_class = SPRPINCrypto;
  [(SPRPINCrypto *)&v9 dealloc];
}

- (id)encryptCode:(unsigned __int8)code seed:(id)seed error:(id *)error
{
  codeCopy = code;
  v35 = *MEMORY[0x277D85DE8];
  seedCopy = seed;
  v13 = objc_msgSend_pinCryptoObjC(MEMORY[0x277D498B8], v9, v10, v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *v34 = 138412290;
    *&v34[4] = self;
    _os_log_impl(&dword_26A93A000, v13, OS_LOG_TYPE_INFO, "%@.encryptCode(_:seed:)", v34, 0xCu);
  }

  v14 = SecKeyCopyExternalRepresentation(self->_peerPublicKey, 0);
  if (v14)
  {
    v19 = v14;
    *v34 = 0;
    sub_26A9607D4(self->_pinVault, codeCopy, 2, v14);
    if (v20)
    {
      v25 = v20;
      v26 = objc_msgSend_pinCryptoObjC(MEMORY[0x277D498B8], v21, v22, v23, v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_26AA7E474(v25, v26);
      }

      v28 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v27, @"SoftPosReader", 10999, 0);
      v29 = 0;
    }

    else
    {
      v28 = 0;
      v29 = *v34;
    }

    CFRelease(v19);
    if (error)
    {
LABEL_14:
      if (v28)
      {
        v32 = v28;
        *error = v28;
      }
    }
  }

  else
  {
    v30 = objc_msgSend_pinCryptoObjC(MEMORY[0x277D498B8], v15, v16, v17, v18);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_26AA7E4EC(v30);
    }

    v28 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v31, @"SoftPosReader", 10999, 0);
    v29 = 0;
    if (error)
    {
      goto LABEL_14;
    }
  }

  return v29;
}

- (SPRPINCrypto)initWithAttestationData:(id)data casdCertificate:(id)certificate entropy:(id)entropy digitCodeMap:(char *)map error:(id *)error
{
  dataCopy = data;
  certificateCopy = certificate;
  entropyCopy = entropy;
  v13 = sub_26AA7E7E4();
  v15 = v14;

  v16 = sub_26AA7E7E4();
  v18 = v17;

  v19 = sub_26AA7E7E4();
  v21 = v20;

  return sub_26A950908(v13, v15, v16, v18, v19, v21, map);
}

@end