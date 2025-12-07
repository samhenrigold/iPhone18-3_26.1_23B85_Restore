@interface NEIKEv2SecurityContextChaCha20Poly1305
- (_DWORD)initWithEncryptionProtocol:(void *)protocol outgoingEncryptionKey:(void *)key incomingEncryptionKey:;
- (id)constructEncryptedPacketFromConstructor:(id)constructor plaintextLength:(unsigned int)length authenticatedHeaders:(id)headers;
- (id)decryptPayloadData:(id)data authenticatedHeaders:(id)headers;
- (void)dealloc;
@end

@implementation NEIKEv2SecurityContextChaCha20Poly1305

- (id)decryptPayloadData:(id)data authenticatedHeaders:(id)headers
{
  *&v34[5] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  headersCopy = headers;
  v8 = headersCopy;
  if (!dataCopy)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      __s = 136315138;
      *v34 = "[NEIKEv2SecurityContextChaCha20Poly1305 decryptPayloadData:authenticatedHeaders:]";
      v20 = "%s called with null payloadData";
LABEL_17:
      v21 = v19;
      v22 = 12;
      goto LABEL_35;
    }

LABEL_22:

LABEL_23:
    v17 = 0;
    goto LABEL_12;
  }

  if (!headersCopy)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      __s = 136315138;
      *v34 = "[NEIKEv2SecurityContextChaCha20Poly1305 decryptPayloadData:authenticatedHeaders:]";
      v20 = "%s called with null authenticatedHeaders";
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  v9 = [dataCopy length];
  v10 = v9;
  if (self && self->super._minimumEncryptedPayloadSize > v9)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __s = 67109120;
      v34[0] = v10;
      _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "Cannot decrypt, encrypted data length %u too short", &__s, 8u);
    }

    goto LABEL_23;
  }

  ccchacha20poly1305_info();
  v11 = ccchacha20poly1305_reset();
  if (v11)
  {
    v24 = v11;
    v19 = ne_log_obj();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    __s = 67109120;
    v34[0] = v24;
    v20 = "ccchacha20poly1305_reset failed: %d";
    v21 = v19;
    v22 = 8;
LABEL_35:
    _os_log_fault_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_FAULT, v20, &__s, v22);
    goto LABEL_22;
  }

  *v34 = 0;
  __s = *self->incomingEncryptionSalt;
  [dataCopy getBytes:v34 length:8];
  v12 = ccchacha20poly1305_setnonce();
  memset_s(&__s, 0xCuLL, 0, 0xCuLL);
  if (v12)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v31 = 67109120;
      v32 = v12;
      v25 = "ccchacha20poly1305_setnonce failed: %d";
LABEL_28:
      _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, v25, &v31, 8u);
    }

LABEL_33:
    v17 = 0;
    goto LABEL_11;
  }

  [v8 length];
  [v8 bytes];
  v13 = ccchacha20poly1305_aad();
  if (v13)
  {
    v26 = v13;
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v31 = 67109120;
      v32 = v26;
      v25 = "ccchacha20poly1305_aad failed: %d";
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v10 - 24];
  [dataCopy bytes];
  [v14 mutableBytes];
  v15 = ccchacha20poly1305_decrypt();
  if (v15)
  {
    v27 = v15;
    v28 = ne_log_obj();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
LABEL_32:

      goto LABEL_33;
    }

    v31 = 67109120;
    v32 = v27;
    v29 = "ccchacha20poly1305_decrypt failed: %d";
LABEL_37:
    _os_log_fault_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_FAULT, v29, &v31, 8u);
    goto LABEL_32;
  }

  v16 = ccchacha20poly1305_verify();
  if (v16)
  {
    v30 = v16;
    v28 = ne_log_obj();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_32;
    }

    v31 = 67109120;
    v32 = v30;
    v29 = "ccchacha20poly1305_verify failed: %d";
    goto LABEL_37;
  }

  v17 = [NEIKEv2SecurityContext removePaddingFromDecryptedPayload:v14];
LABEL_11:

LABEL_12:
  return v17;
}

- (id)constructEncryptedPacketFromConstructor:(id)constructor plaintextLength:(unsigned int)length authenticatedHeaders:(id)headers
{
  v6 = *&length;
  *&v36[5] = *MEMORY[0x1E69E9840];
  constructorCopy = constructor;
  headersCopy = headers;
  v10 = headersCopy;
  if (!constructorCopy)
  {
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      __s = 136315138;
      *v36 = "[NEIKEv2SecurityContextChaCha20Poly1305 constructEncryptedPacketFromConstructor:plaintextLength:authenticatedHeaders:]";
      v23 = "%s called with null packetConstructor";
LABEL_16:
      v24 = v22;
      v25 = 12;
      goto LABEL_29;
    }

LABEL_18:

    v20 = 0;
    goto LABEL_11;
  }

  if (!headersCopy)
  {
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      __s = 136315138;
      *v36 = "[NEIKEv2SecurityContextChaCha20Poly1305 constructEncryptedPacketFromConstructor:plaintextLength:authenticatedHeaders:]";
      v23 = "%s called with null authenticatedHeaders";
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  ccchacha20poly1305_info();
  v11 = [v10 length];
  v12 = [(NEIKEv2SecurityContext *)self overheadForPlaintextLength:v6];
  v13 = ccchacha20poly1305_reset();
  if (v13)
  {
    v26 = v13;
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    __s = 67109120;
    v36[0] = v26;
    v23 = "ccchacha20poly1305_reset failed: %d";
    v24 = v22;
    v25 = 8;
LABEL_29:
    _os_log_fault_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_FAULT, v23, &__s, v25);
    goto LABEL_18;
  }

  currentOutgoingIV = self->_currentOutgoingIV;
  __s = *self->outgoingEncryptionSalt;
  self->_currentOutgoingIV = currentOutgoingIV + 1;
  *v36 = currentOutgoingIV;
  v15 = ccchacha20poly1305_setnonce();
  if (v15)
  {
    v27 = v15;
    memset_s(&__s, 0xCuLL, 0, 0xCuLL);
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v33 = 67109120;
      v34 = v27;
      _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, "ccchacha20poly1305_setnonce failed: %d", &v33, 8u);
    }

    goto LABEL_27;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v11 + v6 + v12];
  [v16 appendData:v10];
  [v16 appendBytes:v36 length:8];
  memset_s(&__s, 0xCuLL, 0, 0xCuLL);
  if (![(NEIKEv2PacketConstructor *)constructorCopy appendPayloadsToPacket:v16 withLength:v6])
  {
LABEL_27:
    v20 = 0;
    goto LABEL_10;
  }

  [v16 increaseLengthBy:17];
  [v16 bytes];
  v17 = ccchacha20poly1305_aad();
  if (v17)
  {
    v28 = v17;
    v29 = ne_log_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v33 = 67109120;
      v34 = v28;
      v30 = "ccchacha20poly1305_aad failed: %d";
      goto LABEL_31;
    }

LABEL_26:

    goto LABEL_27;
  }

  [v16 mutableBytes];
  v18 = ccchacha20poly1305_encrypt();
  if (v18)
  {
    v31 = v18;
    v29 = ne_log_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v33 = 67109120;
      v34 = v31;
      v30 = "ccchacha20poly1305_encrypt failed: %d";
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v19 = ccchacha20poly1305_finalize();
  if (v19)
  {
    v32 = v19;
    v29 = ne_log_obj();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_26;
    }

    v33 = 67109120;
    v34 = v32;
    v30 = "ccchacha20poly1305_finalize failed: %d";
LABEL_31:
    _os_log_fault_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_FAULT, v30, &v33, 8u);
    goto LABEL_26;
  }

  v16 = v16;
  v20 = v16;
LABEL_10:

LABEL_11:
  return v20;
}

- (void)dealloc
{
  memset_s(&self->outgoingEncryptionContext, 0x100uLL, 0, 0x100uLL);
  memset_s(&self->incomingEncryptionContext, 0x100uLL, 0, 0x100uLL);
  memset_s(self->outgoingEncryptionSalt, 4uLL, 0, 4uLL);
  memset_s(self->incomingEncryptionSalt, 4uLL, 0, 4uLL);
  v3.receiver = self;
  v3.super_class = NEIKEv2SecurityContextChaCha20Poly1305;
  [(NEIKEv2SecurityContextChaCha20Poly1305 *)&v3 dealloc];
}

- (_DWORD)initWithEncryptionProtocol:(void *)protocol outgoingEncryptionKey:(void *)key incomingEncryptionKey:
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  protocolCopy = protocol;
  keyCopy = key;
  v10 = keyCopy;
  if (!self)
  {
    goto LABEL_24;
  }

  if (!v7)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    v17 = 136315138;
    v18 = "[NEIKEv2SecurityContextChaCha20Poly1305 initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:]";
    v13 = "%s called with null encryptionProtocol";
LABEL_16:
    v14 = v12;
    v15 = 12;
LABEL_22:
    _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, v13, &v17, v15);
    goto LABEL_23;
  }

  if (!protocolCopy)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    v17 = 136315138;
    v18 = "[NEIKEv2SecurityContextChaCha20Poly1305 initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:]";
    v13 = "%s called with null outgoingEncryptionKey";
    goto LABEL_16;
  }

  if (!keyCopy)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    v17 = 136315138;
    v18 = "[NEIKEv2SecurityContextChaCha20Poly1305 initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:]";
    v13 = "%s called with null incomingEncryptionKey";
    goto LABEL_16;
  }

  if (v7[2] != 28)
  {
    goto LABEL_24;
  }

  self = [(NEIKEv2SecurityContext *)self initWithMinimumEncryptedPayloadSize:?];
  if (!self)
  {
    goto LABEL_24;
  }

  [protocolCopy getBytes:self + 132 range:{objc_msgSend(protocolCopy, "length") - 4, 4}];
  objc_opt_self();
  arc4random_buf(self + 134, 8uLL);
  ccchacha20poly1305_info();
  [protocolCopy bytes];
  if (ccchacha20poly1305_init())
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v17) = 0;
      v13 = "ccchacha20poly1305_init failed";
LABEL_21:
      v14 = v12;
      v15 = 2;
      goto LABEL_22;
    }

LABEL_23:

LABEL_24:
    selfCopy = 0;
    goto LABEL_25;
  }

  [v10 getBytes:self + 133 range:{objc_msgSend(v10, "length") - 4, 4}];
  ccchacha20poly1305_info();
  [v10 bytes];
  if (ccchacha20poly1305_init())
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v17) = 0;
      v13 = "ccchacha20poly1305_init failed";
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  self = self;
  selfCopy = self;
LABEL_25:

  return selfCopy;
}

@end