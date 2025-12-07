@interface TKLocalSEPRefKey
- (BOOL)deleteWithError:(id *)error;
- (id)_initWithKeyType:(id)type keySize:(int64_t)size accessControl:(__SecAccessControl *)control options:(id)options authContext:(id)context caller:(id)caller forceSystemSession:(BOOL)session error:(id *)self0;
- (id)_initWithObjectID:(id)d authContext:(id)context caller:(id)caller forceSystemSession:(BOOL)session error:(id *)error;
- (id)attestKey:(id)key nonce:(id)nonce error:(id *)error;
- (id)computeSharedSecret:(id)secret error:(id *)error;
- (id)decapsulateKey:(id)key error:(id *)error;
- (id)description;
- (id)keySize;
- (id)keyType;
- (id)objectID;
- (id)publicKeyWithError:(id *)error;
- (id)recryptData:(id)data attributes:(id)attributes error:(id *)error;
- (id)signDigest:(id)digest error:(id *)error;
- (void)dealloc;
@end

@implementation TKLocalSEPRefKey

- (id)objectID
{
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:aks_ref_key_get_blob() length:0];

  return v2;
}

- (void)dealloc
{
  if (self->_AKSRefKey)
  {
    aks_ref_key_free();
  }

  v3.receiver = self;
  v3.super_class = TKLocalSEPRefKey;
  [(TKLocalSEPRefKey *)&v3 dealloc];
}

- (id)keyType
{
  type = aks_ref_key_get_type();
  v5 = type;
  if (type > 6)
  {
    if (type <= 0x10)
    {
      if (((1 << type) & 0x600) != 0)
      {
        v7 = MEMORY[0x1E697AD90];
        goto LABEL_23;
      }

      if (((1 << type) & 0x6000) != 0)
      {
        v7 = MEMORY[0x1E697ADA0];
        goto LABEL_23;
      }

      if (((1 << type) & 0x18000) != 0)
      {
        v7 = MEMORY[0x1E697AD98];
LABEL_23:
        v8 = *v7;
        goto LABEL_24;
      }
    }

    if (type == 7)
    {
      goto LABEL_19;
    }

    if (type == 8)
    {
LABEL_18:
      v7 = MEMORY[0x1E697AD80];
      goto LABEL_23;
    }
  }

  else
  {
    if (type > 3)
    {
      if (type != 4)
      {
        if (type != 5)
        {
          options = aks_ref_key_get_options();
          v7 = MEMORY[0x1E697ADB8];
          if ((options & 0x40) != 0)
          {
            v7 = MEMORY[0x1E697ADB0];
          }

          goto LABEL_23;
        }

        goto LABEL_18;
      }

LABEL_19:
      v7 = MEMORY[0x1E697AD78];
      goto LABEL_23;
    }

    if (type == 1)
    {
      v7 = MEMORY[0x1E697ADC0];
      goto LABEL_23;
    }

    if (type == 3)
    {
      v7 = MEMORY[0x1E697AD88];
      goto LABEL_23;
    }
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TKLocalSEPKey.m" lineNumber:887 description:{@"Unexpected aks_key_type %d", v5}];

  v8 = &stru_1F5A7A8A8;
LABEL_24:

  return v8;
}

- (id)keySize
{
  v2 = aks_ref_key_get_type() - 1;
  if (v2 > 0xF)
  {
    return &unk_1F5A85120;
  }

  else
  {
    return qword_1E86B7A40[v2];
  }
}

- (id)description
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_AKSRefKey)
  {
    handle = aks_ref_key_get_handle();
    if (handle != 0 && handle < 0xFFFFFFFA)
    {
      v4 = "";
    }

    else
    {
      v4 = (&off_1E86B7998)[handle + 6];
    }

    v7 = aks_ref_key_get_type() - 1;
    if (v7 > 0xD)
    {
      v6 = "*";
    }

    else
    {
      v6 = off_1E86B79D0[v7];
    }

    debugID = self->_debugID;
    if (!debugID)
    {
      v11 = 0;
      aks_ref_key_get_public_key();
      v12 = 0;
      v13 = 0;
      LODWORD(v14) = 0;
      ccsha1_di();
      ccdigest();
      v8 = 0;
      debugID = 0;
      do
      {
        debugID = *(&v12 + v8++) | (debugID << 8);
      }

      while (v8 != 8);
      self->_debugID = debugID;
    }
  }

  else
  {
    debugID = self->_debugID;
    v6 = "*";
    v4 = "";
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<sepk:%s%s kid=%016llx>", v6, v4, debugID, v11, v12, v13, v14, v15];

  return v9;
}

- (id)_initWithObjectID:(id)d authContext:(id)context caller:(id)caller forceSystemSession:(BOOL)session error:(id *)error
{
  sessionCopy = session;
  v43 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13 = [(TKLocalSEPKey *)self _initWithAuthContext:context caller:caller];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_12;
  }

  v15 = dCopy;
  [objc_opt_class() keybagHandleForceSystemSession:sessionCopy];
  [v15 bytes];
  [v15 length];
  v16 = aks_ref_key_create_with_blob();
  if (v16)
  {
    v17 = v16;
    v18 = TK_LOG_sepkey_0(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      callerName = [v14 callerName];
      *buf = 138543874;
      *&buf[4] = callerName;
      v39 = 1024;
      v40 = v17;
      v41 = 2114;
      v42 = v15;
      _os_log_error_impl(&dword_1DF413000, v18, OS_LOG_TYPE_ERROR, "objectID from %{public}@ contains invalid refkey (err: %d) data:%{public}@", buf, 0x1Cu);
    }

    [v14 error:error withAKSReturn:v17 ACMHandle:0 AKSOperation:0 params:0 message:@"objectID contains invalid refkey data"];
    goto LABEL_19;
  }

  *buf = 0;
  v19 = [MEMORY[0x1E695DEF0] dataWithBytes:aks_ref_key_get_external_data() length:0];
  v20 = [(TKTLVRecord *)TKBERTLVRecord recordFromData:v19];
  propertyList = [v20 propertyList];

  v22 = [propertyList objectForKeyedSubscript:@"acl"];
  v23 = SecAccessControlCreate();
  [v14 setSac:v23];

  v24 = objc_opt_class();
  v25 = [v24 protectionForKeyClass:aks_ref_key_get_key_class()];
  [v14 accessControl];
  v26 = SecAccessControlSetProtection();
  if ((v26 & 1) == 0)
  {
    v31 = TK_LOG_sepkey_0(v26);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [TKLocalSEPRefKey _initWithObjectID:authContext:caller:forceSystemSession:error:];
    }

    goto LABEL_17;
  }

  if (v22)
  {
    [v14 accessControl];
    SecAccessControlSetConstraints();
  }

  type = aks_ref_key_get_type();
  v28 = type;
  if (type > 0x10 || ((1 << type) & 0x1E7FA) == 0)
  {
    v34 = TK_LOG_sepkey_0(type);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [TKLocalSEPRefKey _initWithObjectID:v14 authContext:v28 caller:v34 forceSystemSession:? error:?];
    }

    if (!error)
    {
      goto LABEL_18;
    }

    v35 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A278];
    v37 = @"objectID contains invalid key type";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    *error = [v35 errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:v31];
LABEL_17:

LABEL_18:
LABEL_19:

    v30 = 0;
    goto LABEL_20;
  }

LABEL_12:
  v29 = TK_LOG_sepkey_0(v13);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    [TKLocalSEPRefKey _initWithObjectID:v14 authContext:? caller:? forceSystemSession:? error:?];
  }

  v30 = v14;
LABEL_20:

  return v30;
}

- (id)_initWithKeyType:(id)type keySize:(int64_t)size accessControl:(__SecAccessControl *)control options:(id)options authContext:(id)context caller:(id)caller forceSystemSession:(BOOL)session error:(id *)self0
{
  v47[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  optionsCopy = options;
  v17 = [(TKLocalSEPKey *)self _initWithAuthContext:context caller:caller];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 authContextWithError:error];
    if (!v19)
    {
LABEL_24:
      v42 = 0;
      goto LABEL_29;
    }

    v20 = v19;
    if (([typeCopy isEqual:*MEMORY[0x1E697ADB8]] & 1) == 0 && (objc_msgSend(typeCopy, "isEqual:", *MEMORY[0x1E697ADB0]) & 1) == 0 && !objc_msgSend(typeCopy, "isEqual:", *MEMORY[0x1E697AD80]) && (objc_msgSend(typeCopy, "isEqual:", *MEMORY[0x1E697AD88]) & 1) == 0 && (objc_msgSend(typeCopy, "isEqual:", *MEMORY[0x1E697ADC0]) & 1) == 0 && !objc_msgSend(typeCopy, "isEqual:", *MEMORY[0x1E697AD90]) && !objc_msgSend(typeCopy, "isEqual:", *MEMORY[0x1E697ADA0]))
    {
      [typeCopy isEqual:*MEMORY[0x1E697AD98]];
    }

    [v18 setSac:control];
    v21 = objc_opt_class();
    [v18 accessControl];
    [v21 keyClassForProtection:SecAccessControlGetProtection()];
    aCMHandle = [v20 ACMHandle];
    v23 = [v18 parametersWithACMHandle:aCMHandle];

    if ([v18 accessControl])
    {
      [v18 accessControl];
      v24 = SecAccessControlGetConstraints();
      if (v24)
      {
        v25 = [TKBERTLVRecord alloc];
        v46 = @"acl";
        v47[0] = v24;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
        v27 = [(TKBERTLVRecord *)v25 initWithPropertyList:v26];
        [(TKTLVRecord *)v27 data];
        v28 = v45 = optionsCopy;

        [v23 setData:v28 forKey:2];
      }
    }

    v29 = [optionsCopy objectForKeyedSubscript:{*MEMORY[0x1E697B200], v45}];
    bOOLValue = [v29 BOOLValue];

    if (bOOLValue)
    {
      v31 = 4;
    }

    else
    {
      v31 = 0;
    }

    v32 = [optionsCopy objectForKeyedSubscript:@"ECCompactable"];
    bOOLValue2 = [v32 BOOLValue];

    if (bOOLValue2)
    {
      v31 |= 0x10uLL;
    }

    v34 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E697B238]];
    bOOLValue3 = [v34 BOOLValue];

    v36 = v31 | bOOLValue3;
    v37 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E697B248]];
    bOOLValue4 = [v37 BOOLValue];

    if (bOOLValue4)
    {
      v39 = v36 | 0x100;
    }

    else
    {
      v39 = v36;
    }

    if ([typeCopy isEqual:*MEMORY[0x1E697ADB0]])
    {
      v40 = v39 | 0x40;
    }

    else
    {
      v40 = v39;
    }

    if (v40)
    {
      [v23 setNumber:v40 forKey:9];
    }

    [objc_opt_class() keybagHandleForceSystemSession:session];
    [v23 bytes];
    [v23 length];
    v41 = aks_ref_key_create();
    if (v41)
    {
      v18[6] = 0;
      [v18 error:error withAKSReturn:v41 ACMHandle:0 AKSOperation:0 params:v23 message:@"unable to generate key"];

      goto LABEL_24;
    }
  }

  v43 = TK_LOG_sepkey_0(v17);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    [TKLocalSEPRefKey _initWithKeyType:keySize:accessControl:options:authContext:caller:forceSystemSession:error:];
  }

  v42 = v18;
LABEL_29:

  return v42;
}

- (BOOL)deleteWithError:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(TKLocalSEPKey *)self authContextWithError:?];
  v6 = v5;
  if (v5)
  {
    aCMHandle = [v5 ACMHandle];
    v8 = [(TKLocalSEPKey *)self parametersWithACMHandle:aCMHandle];

    [v8 bytes];
    [v8 length];
    v9 = aks_ref_key_delete();
    v10 = v9;
    if (v9 != -536363001)
    {
      if (!v9)
      {
LABEL_8:
        v12 = TK_LOG_sepkey_0(v9);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [TKLocalSEPRefKey deleteWithError:];
        }

        v13 = 1;
        goto LABEL_13;
      }

      if (v9 != -536362989)
      {
        aCMHandle2 = [v6 ACMHandle];
        [(TKLocalSEPKey *)self error:error withAKSReturn:v10 ACMHandle:aCMHandle2 AKSOperation:@"odel" params:v8 message:@"unable to delete key"];

        v13 = 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    v11 = TK_LOG_sepkey_0(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16[0] = 67109120;
      v16[1] = v10;
      _os_log_impl(&dword_1DF413000, v11, OS_LOG_TYPE_DEFAULT, "detected error %08x while deleting refkey, ignoring this error", v16, 8u);
    }

    goto LABEL_8;
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (id)publicKeyWithError:(id *)error
{
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:aks_ref_key_get_public_key() length:0];

  return v3;
}

- (id)signDigest:(id)digest error:(id *)error
{
  digestCopy = digest;
  v7 = [(TKLocalSEPKey *)self authContextWithError:error];
  v8 = v7;
  if (v7)
  {
    aCMHandle = [v7 ACMHandle];
    v10 = [(TKLocalSEPKey *)self parametersWithACMHandle:aCMHandle];

    [v10 bytes];
    [v10 length];
    [digestCopy bytes];
    [digestCopy length];
    v11 = aks_ref_key_sign();
    if (v11)
    {
      v12 = v11;
      aCMHandle2 = [v8 ACMHandle];
      [(TKLocalSEPKey *)self error:error withAKSReturn:v12 ACMHandle:aCMHandle2 AKSOperation:@"osgn" params:v10 message:@"unable to sign digest"];
      value = 0;
    }

    else
    {
      v15 = TK_LOG_sepkey_0(v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [TKLocalSEPRefKey signDigest:error:];
      }

      v16 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:0 length:0];
      aCMHandle2 = [(TKTLVRecord *)TKBERTLVRecord recordFromData:v16];

      value = [aCMHandle2 value];
    }
  }

  else
  {
    value = 0;
  }

  return value;
}

- (id)computeSharedSecret:(id)secret error:(id *)error
{
  secretCopy = secret;
  v7 = [(TKLocalSEPKey *)self authContextWithError:error];
  v8 = v7;
  if (v7)
  {
    aCMHandle = [v7 ACMHandle];
    v10 = [(TKLocalSEPKey *)self parametersWithACMHandle:aCMHandle];

    [v10 bytes];
    [v10 length];
    [secretCopy bytes];
    [secretCopy length];
    v11 = aks_ref_key_compute_key();
    if (v11)
    {
      v12 = v11;
      aCMHandle2 = [v8 ACMHandle];
      [(TKLocalSEPKey *)self error:error withAKSReturn:v12 ACMHandle:aCMHandle2 AKSOperation:@"ock" params:v10 message:@"unable to compute shared secret"];
      value = 0;
    }

    else
    {
      v15 = TK_LOG_sepkey_0(v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [TKLocalSEPRefKey computeSharedSecret:error:];
      }

      v16 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:0 length:0];
      aCMHandle2 = [(TKTLVRecord *)TKBERTLVRecord recordFromData:v16];

      value = [aCMHandle2 value];
    }
  }

  else
  {
    value = 0;
  }

  return value;
}

- (id)recryptData:(id)data attributes:(id)attributes error:(id *)error
{
  v51[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  attributesCopy = attributes;
  v10 = [(TKLocalSEPKey *)self authContextWithError:error];
  if (!v10)
  {
    v34 = 0;
    goto LABEL_35;
  }

  v11 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697B208]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = dataCopy;
    aCMHandle = [v10 ACMHandle];
    v13 = [(TKLocalSEPKey *)self parametersWithACMHandle:aCMHandle];

    v14 = *MEMORY[0x1E697B230];
    v15 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697B230]];
    if (v15)
    {
      [v13 setData:v15 forKey:10];
    }

    v45 = v11;
    v16 = *MEMORY[0x1E697B218];
    v17 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697B218]];
    if (v17)
    {
      [v13 setData:v17 forKey:11];
    }

    v18 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697B210]];
    v19 = [v18 objectForKeyedSubscript:v14];

    if (v19)
    {
      [v13 setData:v19 forKey:12];
    }

    v43 = v19;
    v20 = [v18 objectForKeyedSubscript:v16];

    if (v20)
    {
      [v13 setData:v20 forKey:13];
    }

    v41 = v20;
    v21 = *MEMORY[0x1E697B220];
    v22 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697B220]];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = &unk_1F5A85138;
    }

    v25 = v24;

    v26 = [v18 objectForKeyedSubscript:v21];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = &unk_1F5A85138;
    }

    v29 = v28;

    v42 = v25;
    if ([v25 integerValue] == 128 && objc_msgSend(v29, "integerValue") == 128)
    {
      v30 = v29;
      v46 = 0;
      v47 = 0;
      [v13 bytes];
      [v13 length];
      [v45 bytes];
      [v45 length];
      dataCopy = v44;
      [v44 bytes];
      [v44 length];
      v31 = aks_ref_key_ecies_transcode();
      if (v31)
      {
        v32 = v31;
        aCMHandle2 = [v10 ACMHandle];
        [(TKLocalSEPKey *)self error:error withAKSReturn:v32 ACMHandle:aCMHandle2 AKSOperation:@"oect" params:v13 message:@"unable to recrypt"];

        v34 = 0;
      }

      else
      {
        v39 = TK_LOG_sepkey_0(v31);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          [TKLocalSEPRefKey recryptData:attributes:error:];
        }

        v34 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v47 length:{v46, &v46}];
      }

      v38 = v43;
      v29 = v30;
    }

    else
    {
      dataCopy = v44;
      if (error)
      {
        v36 = MEMORY[0x1E696ABC0];
        v48 = *MEMORY[0x1E696A278];
        v49 = @"Bad kSecKeyEncryptionParameterSymmetricKeySizeInBits - if present, must be set to 128 for both input and output crypto operation";
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        *error = [v36 errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:v37];
      }

      v34 = 0;
      v38 = v43;
    }

    v11 = v45;
    goto LABEL_33;
  }

  if (error)
  {
    v35 = MEMORY[0x1E696ABC0];
    v50 = *MEMORY[0x1E696A278];
    v51[0] = @"Bad or missing kSecKeyEncryptionParameterRecryptCertificate";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    [v35 errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:v13];
    *error = v34 = 0;
LABEL_33:

    goto LABEL_34;
  }

  v34 = 0;
LABEL_34:

LABEL_35:

  return v34;
}

- (id)decapsulateKey:(id)key error:(id *)error
{
  keyCopy = key;
  v7 = [(TKLocalSEPKey *)self authContextWithError:error];
  v8 = v7;
  if (v7)
  {
    aCMHandle = [v7 ACMHandle];
    v10 = [(TKLocalSEPKey *)self parametersWithACMHandle:aCMHandle];

    [v10 bytes];
    [v10 length];
    [keyCopy bytes];
    [keyCopy length];
    v11 = aks_ref_key_decapsulate();
    if (v11)
    {
      v12 = v11;
      aCMHandle2 = [v8 ACMHandle];
      [(TKLocalSEPKey *)self error:error withAKSReturn:v12 ACMHandle:aCMHandle2 AKSOperation:@"okd" params:v10 message:@"unable to decapsulate shared key"];

      v14 = 0;
    }

    else
    {
      v14 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:0 length:0];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)attestKey:(id)key nonce:(id)nonce error:(id *)error
{
  v35[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  nonceCopy = nonce;
  if (![(TKLocalSEPKey *)self callerHasEntitlement:@"com.apple.security.attestation.access" error:error])
  {
    v20 = 0;
    goto LABEL_20;
  }

  v10 = [(TKLocalSEPKey *)self authContextWithError:error];
  v11 = v10;
  if (v10)
  {
    aCMHandle = [v10 ACMHandle];
    v13 = [(TKLocalSEPKey *)self parametersWithACMHandle:aCMHandle];

    if (nonceCopy)
    {
      [v13 setData:nonceCopy forKey:4];
    }

    v14 = keyCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [v13 bytes];
      [v13 length];
      v16 = aks_ref_key_attest();
      v17 = TK_LOG_sepkey_0(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138544130;
        selfCopy = self;
        v28 = 2112;
        v29 = v13;
        v30 = 2114;
        v31 = v14;
        v32 = 1024;
        v33 = v16;
        _os_log_debug_impl(&dword_1DF413000, v17, OS_LOG_TYPE_DEBUG, "aks_ref_key_attest(%{public}@, %@, attested: %{public}@) -> %08x", buf, 0x26u);
      }

      if (!v16)
      {
        v25 = TK_LOG_sepkey_0(v18);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [TKLocalSEPRefKey attestKey:nonce:error:];
        }

        v20 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:0 length:0];
        goto LABEL_18;
      }

      aCMHandle2 = [v11 ACMHandle];
      [(TKLocalSEPKey *)self error:error withAKSReturn:v16 ACMHandle:aCMHandle2 AKSOperation:@"oa" params:v13 message:@"unable to attest refkey->refkey"];
    }

    else
    {
      if (error)
      {
        v21 = MEMORY[0x1E696ABC0];
        v34 = *MEMORY[0x1E696A278];
        v35[0] = @"unsuitable key for attesting";
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        *error = [v21 errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:v22];
      }

      v23 = TK_LOG_sepkey_0(isKindOfClass);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [TKLocalSEPRefKey attestKey:nonce:error:];
      }
    }

    v20 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v20 = 0;
LABEL_19:

LABEL_20:

  return v20;
}

- (void)_initWithObjectID:authContext:caller:forceSystemSession:error:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_1DF413000, v1, OS_LOG_TYPE_ERROR, "Failed to set protection %{public}@ for ACL (error: %{public}@)", v2, 0x16u);
}

- (void)_initWithObjectID:(NSObject *)a3 authContext:caller:forceSystemSession:error:.cold.2(void *a1, int a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 callerName];
  OUTLINED_FUNCTION_0_0();
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_1DF413000, a3, OS_LOG_TYPE_ERROR, "Request from %{public}@ for key with objectID containing invalid key type (%d)", v6, 0x12u);
}

- (void)_initWithObjectID:(void *)a1 authContext:caller:forceSystemSession:error:.cold.3(void *a1)
{
  v2 = [a1 callerName];
  [a1 accessControl];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)_initWithKeyType:keySize:accessControl:options:authContext:caller:forceSystemSession:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v1 = [v0 callerName];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)deleteWithError:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)signDigest:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)computeSharedSecret:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)recryptData:attributes:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)attestKey:nonce:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_7_0(&dword_1DF413000, v0, v1, "%{public}@: attested key %{public}@");
}

@end