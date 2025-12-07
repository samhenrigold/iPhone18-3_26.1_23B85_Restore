@interface NEIKEv2SecurityContextAESGCM
- (id)constructEncryptedPacketFromConstructor:(id)constructor plaintextLength:(unsigned int)length authenticatedHeaders:(id)headers;
- (id)decryptPayloadData:(id)data authenticatedHeaders:(id)headers;
- (id)initWithEncryptionProtocol:(void *)protocol outgoingEncryptionKey:(void *)key incomingEncryptionKey:;
- (void)dealloc;
@end

@implementation NEIKEv2SecurityContextAESGCM

- (id)decryptPayloadData:(id)data authenticatedHeaders:(id)headers
{
  v34[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  headersCopy = headers;
  v8 = headersCopy;
  if (!dataCopy)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v32 = "[NEIKEv2SecurityContextAESGCM decryptPayloadData:authenticatedHeaders:]";
      v21 = "%s called with null payloadData";
LABEL_18:
      _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, v21, buf, 0xCu);
    }

LABEL_24:
    v19 = 0;
    goto LABEL_13;
  }

  if (!headersCopy)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v32 = "[NEIKEv2SecurityContextAESGCM decryptPayloadData:authenticatedHeaders:]";
      v21 = "%s called with null authenticatedHeaders";
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  v9 = [dataCopy length];
  v10 = v9;
  if (self)
  {
    if (self->super._minimumEncryptedPayloadSize > v9)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v32) = v10;
        _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "Cannot decrypt, encrypted data length %u too short", buf, 8u);
      }

      goto LABEL_24;
    }

    outgoingEncryptionContext = self->_outgoingEncryptionContext;
  }

  else
  {
    outgoingEncryptionContext = 0;
  }

  v12 = outgoingEncryptionContext;
  [v12 mutableBytes];
  ccaes_gcm_decrypt_mode();
  v13 = ccgcm_reset();
  if (v13)
  {
    v22 = v13;
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v32) = v22;
      _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "ccgcm_reset failed: %d", buf, 8u);
    }

    goto LABEL_24;
  }

  v34[0] = 0;
  __s = *(&self->super._minimumEncryptedPayloadSize + 1);
  [dataCopy getBytes:v34 length:8];
  v14 = ccgcm_set_iv();
  memset_s(&__s, 0xCuLL, 0, 0xCuLL);
  if (v14)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v32) = v14;
      v24 = "ccgcm_set_iv failed: %d";
LABEL_29:
      _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, v24, buf, 8u);
    }

LABEL_34:
    v19 = 0;
    goto LABEL_12;
  }

  [v8 length];
  [v8 bytes];
  v15 = ccgcm_aad();
  if (v15)
  {
    v25 = v15;
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v32) = v25;
      v24 = "ccgcm_aad failed: %d";
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v10 - 24];
  [dataCopy bytes];
  [v16 mutableBytes];
  v17 = ccgcm_update();
  if (v17)
  {
    v26 = v17;
    v27 = ne_log_obj();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
LABEL_33:

      goto LABEL_34;
    }

    *buf = 67109120;
    LODWORD(v32) = v26;
    v28 = "ccgcm_update failed: %d";
    v29 = buf;
LABEL_36:
    _os_log_fault_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_FAULT, v28, v29, 8u);
    goto LABEL_33;
  }

  [dataCopy getBytes:buf range:{v10 - 16, 16}];
  v18 = ccgcm_finalize();
  memset_s(buf, 0x10uLL, 0, 0x10uLL);
  if (v18)
  {
    v27 = ne_log_obj();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v30[0] = 67109120;
    v30[1] = v18;
    v28 = "ccgcm_finalize failed: %d";
    v29 = v30;
    goto LABEL_36;
  }

  v19 = [NEIKEv2SecurityContext removePaddingFromDecryptedPayload:v16];
LABEL_12:

LABEL_13:
  return v19;
}

- (id)constructEncryptedPacketFromConstructor:(id)constructor plaintextLength:(unsigned int)length authenticatedHeaders:(id)headers
{
  v6 = *&length;
  v35 = *MEMORY[0x1E69E9840];
  constructorCopy = constructor;
  headersCopy = headers;
  v10 = headersCopy;
  if (!constructorCopy)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *__s = 136315138;
      *&__s[4] = "[NEIKEv2SecurityContextAESGCM constructEncryptedPacketFromConstructor:plaintextLength:authenticatedHeaders:]";
      v23 = "%s called with null packetConstructor";
LABEL_18:
      _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, v23, __s, 0xCu);
    }

LABEL_22:
    v21 = 0;
    goto LABEL_13;
  }

  if (!headersCopy)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *__s = 136315138;
      *&__s[4] = "[NEIKEv2SecurityContextAESGCM constructEncryptedPacketFromConstructor:plaintextLength:authenticatedHeaders:]";
      v23 = "%s called with null authenticatedHeaders";
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if (self)
  {
    v11 = *self->incomingEncryptionSalt;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  [v12 mutableBytes];
  ccaes_gcm_encrypt_mode();
  v13 = [v10 length];
  v14 = [(NEIKEv2SecurityContext *)self overheadForPlaintextLength:v6];
  v15 = ccgcm_reset();
  if (v15)
  {
    v24 = v15;
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *__s = 67109120;
      *&__s[4] = v24;
      _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, "ccgcm_reset failed: %d", __s, 8u);
    }

    goto LABEL_22;
  }

  *&__s[8] = 0;
  *__s = 0;
  v16 = ccgcm_inc_iv();
  if (v16)
  {
    v26 = v16;
    memset_s(__s, 0xCuLL, 0, 0xCuLL);
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v32 = 67109120;
      v33 = v26;
      _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, "ccgcm_inc_iv failed: %d", &v32, 8u);
    }

    goto LABEL_31;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v13 + v6 + v14];
  [v17 appendData:v10];
  [v17 appendBytes:&__s[4] length:8];
  memset_s(__s, 0xCuLL, 0, 0xCuLL);
  if (![(NEIKEv2PacketConstructor *)constructorCopy appendPayloadsToPacket:v17 withLength:v6])
  {
LABEL_31:
    v21 = 0;
    goto LABEL_12;
  }

  [v17 increaseLengthBy:17];
  [v17 bytes];
  v18 = ccgcm_aad();
  if (v18)
  {
    v27 = v18;
    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      v32 = 67109120;
      v33 = v27;
      v29 = "ccgcm_aad failed: %d";
      goto LABEL_33;
    }

LABEL_30:

    goto LABEL_31;
  }

  [v17 mutableBytes];
  v19 = ccgcm_update();
  if (v19)
  {
    v30 = v19;
    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      v32 = 67109120;
      v33 = v30;
      v29 = "ccgcm_update failed: %d";
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v20 = ccgcm_finalize();
  if (v20)
  {
    v31 = v20;
    v28 = ne_log_obj();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_30;
    }

    v32 = 67109120;
    v33 = v31;
    v29 = "ccgcm_finalize failed: %d";
LABEL_33:
    _os_log_fault_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_FAULT, v29, &v32, 8u);
    goto LABEL_30;
  }

  v17 = v17;
  v21 = v17;
LABEL_12:

LABEL_13:
  return v21;
}

- (void)dealloc
{
  memset_s(&self->super._minimumEncryptedPayloadSize + 1, 4uLL, 0, 4uLL);
  v3.receiver = self;
  v3.super_class = NEIKEv2SecurityContextAESGCM;
  [(NEIKEv2SecurityContextAESGCM *)&v3 dealloc];
}

- (id)initWithEncryptionProtocol:(void *)protocol outgoingEncryptionKey:(void *)key incomingEncryptionKey:
{
  *&v27[5] = *MEMORY[0x1E69E9840];
  v7 = a2;
  protocolCopy = protocol;
  keyCopy = key;
  v10 = keyCopy;
  if (!self)
  {
    goto LABEL_6;
  }

  if (!v7)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_26;
    }

    __s = 136315138;
    *v27 = "[NEIKEv2SecurityContextAESGCM initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:]";
    v20 = "%s called with null encryptionProtocol";
LABEL_22:
    _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, v20, &__s, 0xCu);
    goto LABEL_26;
  }

  if (!protocolCopy)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_26;
    }

    __s = 136315138;
    *v27 = "[NEIKEv2SecurityContextAESGCM initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:]";
    v20 = "%s called with null outgoingEncryptionKey";
    goto LABEL_22;
  }

  if (!keyCopy)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_26;
    }

    __s = 136315138;
    *v27 = "[NEIKEv2SecurityContextAESGCM initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:]";
    v20 = "%s called with null incomingEncryptionKey";
    goto LABEL_22;
  }

  if (v7[2] == 20)
  {
    self = [(NEIKEv2SecurityContext *)self initWithMinimumEncryptedPayloadSize:?];
    if (self)
    {
      ccaes_gcm_encrypt_mode();
      v12 = ccgcm_context_size();
      v13 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataPrefilledWithMaxCapacity:v12];
      if (v13)
      {
        v14 = v13;
        [protocolCopy getBytes:&__s range:{objc_msgSend(protocolCopy, "length") - 4, 4}];
        objc_opt_self();
        arc4random_buf(v27, 8uLL);
        [v14 mutableBytes];
        [protocolCopy length];
        [protocolCopy bytes];
        v15 = ccgcm_init_with_iv();
        memset_s(&__s, 0xCuLL, 0, 0xCuLL);
        if (v15)
        {
          v18 = ne_log_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v24) = 0;
            _os_log_fault_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_FAULT, "ccgcm_init_with_iv failed", &v24, 2u);
          }
        }

        else
        {
          objc_storeStrong(self + 2, v14);
          ccaes_gcm_decrypt_mode();
          v16 = ccgcm_context_size();
          v17 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataPrefilledWithMaxCapacity:v16];
          if (v17)
          {
            v18 = v17;
            [(__CFData *)v17 mutableBytes];
            [v10 length];
            [v10 bytes];
            if (!ccgcm_init())
            {
              objc_storeStrong(self + 3, v18);
              [v10 getBytes:self + 12 range:{objc_msgSend(v10, "length") - 4, 4}];
              selfCopy = self;
LABEL_13:

LABEL_14:
              goto LABEL_15;
            }

            v23 = ne_log_obj();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              LOWORD(v24) = 0;
              _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "ccgcm_init failed", &v24, 2u);
            }
          }

          else
          {
            v22 = ne_log_obj();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
            {
              v24 = 134217984;
              v25 = v16;
              _os_log_fault_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataPrefilledWithMaxCapacity:%zu] failed", &v24, 0xCu);
            }

            v18 = 0;
          }
        }

        selfCopy = 0;
        goto LABEL_13;
      }

      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        __s = 134217984;
        *v27 = v12;
        _os_log_fault_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataPrefilledWithMaxCapacity:%zu] failed", &__s, 0xCu);
      }

      v14 = 0;
LABEL_26:
      selfCopy = 0;
      goto LABEL_14;
    }
  }

LABEL_6:
  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

@end