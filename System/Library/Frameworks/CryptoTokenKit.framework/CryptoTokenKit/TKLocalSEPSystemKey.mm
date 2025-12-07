@interface TKLocalSEPSystemKey
+ (BOOL)hasSystemKey:(unsigned int)key ACMHandle:(id)handle;
+ (void)initSystemKeyIDs;
- (BOOL)lifetimeControlWithType:(int64_t)type error:(id *)error;
- (id)_initWithObjectID:(id)d authContext:(id)context caller:(id)caller isIDUnknown:(BOOL *)unknown error:(id *)error;
- (id)attestKey:(id)key nonce:(id)nonce error:(id *)error;
- (id)description;
- (id)keySize;
- (id)objectID;
- (id)publicKeyWithError:(id *)error;
- (id)signDigest:(id)digest error:(id *)error;
@end

@implementation TKLocalSEPSystemKey

+ (void)initSystemKeyIDs
{
  if (initSystemKeyIDs_onceToken != -1)
  {
    +[TKLocalSEPSystemKey initSystemKeyIDs];
  }
}

- (id)objectID
{
  data = [MEMORY[0x1E695DEF0] data];
  AKSSystemKeyType = self->_AKSSystemKeyType;
  if (AKSSystemKeyType > 6)
  {
    if (AKSSystemKeyType <= 9)
    {
      if (AKSSystemKeyType == 7)
      {
        AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
        v6 = &proposedHavenData;
        v7 = &committedHavenData;
      }

      else
      {
        if (AKSSystemKeyType != 9)
        {
          goto LABEL_25;
        }

        AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
        v6 = &proposedDakData;
        v7 = &committedDakData;
      }

      goto LABEL_20;
    }

    if (AKSSystemKeyType == 10)
    {
      AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
      v6 = &proposedSDakData;
      v7 = &committedSDakData;
LABEL_20:
      if (AKSSystemKeyGeneration == 3)
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      v8 = *v9;
      goto LABEL_24;
    }

    if (AKSSystemKeyType != 14)
    {
      goto LABEL_25;
    }

    v8 = dcikData;
  }

  else if (AKSSystemKeyType > 2)
  {
    if (AKSSystemKeyType != 3)
    {
      if (AKSSystemKeyType != 6)
      {
        goto LABEL_25;
      }

      AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
      v6 = &proposedOikData;
      v7 = &committedOikData;
      goto LABEL_20;
    }

    v8 = gidData;
  }

  else
  {
    if (AKSSystemKeyType != 1)
    {
      if (AKSSystemKeyType != 2)
      {
        goto LABEL_25;
      }

      AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
      v6 = &proposedUikData;
      v7 = &committedUikData;
      goto LABEL_20;
    }

    v8 = sikData;
  }

LABEL_24:
  v10 = v8;

  data = v10;
LABEL_25:

  return data;
}

uint64_t __39__TKLocalSEPSystemKey_initSystemKeyIDs__block_invoke()
{
  v0 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.sik" length:21];
  v1 = sikData;
  sikData = v0;

  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.gid" length:21];
  v3 = gidData;
  gidData = v2;

  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.uikp" length:22];
  v5 = proposedUikData;
  proposedUikData = v4;

  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.uikc" length:22];
  v7 = committedUikData;
  committedUikData = v6;

  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.oikp" length:22];
  v9 = proposedOikData;
  proposedOikData = v8;

  v10 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.oikc" length:22];
  v11 = committedOikData;
  committedOikData = v10;

  v12 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.dakp" length:22];
  v13 = proposedDakData;
  proposedDakData = v12;

  v14 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.dakc" length:22];
  v15 = committedDakData;
  committedDakData = v14;

  v16 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.havenp" length:24];
  v17 = proposedHavenData;
  proposedHavenData = v16;

  v18 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.havenc" length:24];
  v19 = committedHavenData;
  committedHavenData = v18;

  v20 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.sdakp" length:23];
  v21 = proposedSDakData;
  proposedSDakData = v20;

  v22 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.sdakc" length:23];
  v23 = committedSDakData;
  committedSDakData = v22;

  dcikData = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.dcik" length:22];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)hasSystemKey:(unsigned int)key ACMHandle:(id)handle
{
  handleCopy = handle;
  v6 = 0;
  if (key <= 0xE)
  {
    if (((1 << key) & 0x4684) != 0)
    {
      v7 = hasSystemKey_ACMHandle__supported[key];
      if (!v7)
      {
        v8 = aks_system_key_collection();
        v9 = v8;
        if (key != 14 && v8)
        {
          v8 = aks_system_key_collection();
          v9 = v8;
        }

        if (v9)
        {
          v10 = TK_LOG_sepkey_0(v8);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            +[TKLocalSEPSystemKey hasSystemKey:ACMHandle:];
          }

          v7 = -1;
        }

        else
        {
          free(0);
          v7 = 1;
        }

        hasSystemKey_ACMHandle__supported[key] = v7;
      }

LABEL_21:
      v6 = v7 > 0;
      goto LABEL_22;
    }

    if (((1 << key) & 0xA) != 0)
    {
      v6 = 1;
    }

    else if (key == 6)
    {
      v7 = hasSystemKey_ACMHandle__supported_348;
      if (!hasSystemKey_ACMHandle__supported_348)
      {
        v11 = objc_alloc_init(TKAKSParameters);
        [(TKAKSParameters *)v11 setData:handleCopy forKey:3];
        [(TKAKSParameters *)v11 bytes];
        [(TKAKSParameters *)v11 length];
        v12 = aks_system_key_collection();
        if (v12)
        {
          v13 = TK_LOG_sepkey_0(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            +[TKLocalSEPSystemKey hasSystemKey:ACMHandle:];
          }

          v14 = -1;
        }

        else
        {
          free(0);
          v14 = 1;
        }

        hasSystemKey_ACMHandle__supported_348 = v14;

        v7 = hasSystemKey_ACMHandle__supported_348;
      }

      goto LABEL_21;
    }
  }

LABEL_22:

  return v6;
}

- (id)_initWithObjectID:(id)d authContext:(id)context caller:(id)caller isIDUnknown:(BOOL *)unknown error:(id *)error
{
  v35[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13 = [(TKLocalSEPKey *)self _initWithAuthContext:context caller:caller];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_19;
  }

  [objc_opt_class() initSystemKeyIDs];
  v14[10] = 16;
  if ([dCopy isEqualToData:sikData])
  {
    v15 = 1;
LABEL_4:
    v14[10] = v15;
    v14[11] = v15;
    goto LABEL_12;
  }

  if ([dCopy isEqualToData:gidData])
  {
    v16 = 3;
LABEL_7:
    v14[10] = v16;
    v17 = 1;
LABEL_11:
    v14[11] = v17;
    goto LABEL_12;
  }

  if ([dCopy isEqualToData:proposedUikData])
  {
    v18 = 2;
LABEL_10:
    v14[10] = v18;
    v17 = 3;
    goto LABEL_11;
  }

  if ([dCopy isEqualToData:committedUikData])
  {
    v15 = 2;
    goto LABEL_4;
  }

  if ([dCopy isEqualToData:proposedOikData])
  {
    v18 = 6;
    goto LABEL_10;
  }

  if ([dCopy isEqualToData:committedOikData])
  {
    v32 = 6;
    goto LABEL_36;
  }

  if ([dCopy isEqualToData:proposedDakData])
  {
    v18 = 9;
    goto LABEL_10;
  }

  if ([dCopy isEqualToData:committedDakData])
  {
    v32 = 9;
    goto LABEL_36;
  }

  if ([dCopy isEqualToData:proposedHavenData])
  {
    v14[10] = 7;
    v33 = 3;
  }

  else
  {
    if (![dCopy isEqualToData:committedHavenData])
    {
      if ([dCopy isEqualToData:proposedSDakData])
      {
        v18 = 10;
        goto LABEL_10;
      }

      if (![dCopy isEqualToData:committedSDakData])
      {
        if (![dCopy isEqualToData:dcikData])
        {
          v27 = 0;
          *unknown = 1;
          goto LABEL_29;
        }

        v16 = 14;
        goto LABEL_7;
      }

      v32 = 10;
LABEL_36:
      v14[10] = v32;
      v17 = 2;
      goto LABEL_11;
    }

    v14[10] = 7;
    v33 = 2;
  }

  v14[11] = v33;
LABEL_12:
  if (v14[10] == 7)
  {
    v19 = @"com.apple.private.playgrounds-local-signing-allowed";
  }

  else
  {
    v19 = @"com.apple.security.attestation.access";
  }

  if (![v14 callerHasEntitlement:v19 error:error])
  {
    goto LABEL_28;
  }

  v20 = [v14 authContextWithError:error];
  if (!v20)
  {
LABEL_27:

LABEL_28:
    v27 = 0;
    goto LABEL_29;
  }

  v21 = objc_opt_class();
  v22 = v14[10];
  aCMHandle = [v20 ACMHandle];
  LOBYTE(v21) = [v21 hasSystemKey:v22 ACMHandle:aCMHandle];

  if ((v21 & 1) == 0)
  {
    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A278];
      v35[0] = @"Requested system key not supported by the platform";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      *error = [v28 errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:v29];
    }

    v30 = TK_LOG_sepkey_0(v24);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [TKLocalSEPSystemKey _initWithObjectID:authContext:caller:isIDUnknown:error:];
    }

    goto LABEL_27;
  }

  v25 = SecAccessControlCreate();
  [v14 setSac:v25];

  [v14 accessControl];
  SecAccessControlSetProtection();
  [v14 accessControl];
  SecAccessControlAddConstraintForOperation();

LABEL_19:
  v26 = TK_LOG_sepkey_0(v13);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [TKLocalSEPRefKey _initWithObjectID:v14 authContext:? caller:? forceSystemSession:? error:?];
  }

  v27 = v14;
LABEL_29:

  return v27;
}

- (id)keySize
{
  if (self->_AKSSystemKeyType == 7)
  {
    return &unk_1F5A850A8;
  }

  else
  {
    return &unk_1F5A85090;
  }
}

- (id)description
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_debugID && !aks_system_key_get_public())
  {
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
    ccsha1_di();
    ccdigest();
    free(0);
    v3 = 0;
    v4 = 0;
    do
    {
      v4 = *(v14 + v3++) | (v4 << 8);
    }

    while (v3 != 8);
    self->_debugID = v4;
  }

  AKSSystemKeyType = self->_AKSSystemKeyType;
  if (AKSSystemKeyType > 6)
  {
    if (AKSSystemKeyType > 9)
    {
      if (AKSSystemKeyType == 10)
      {
        AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
        v7 = @"sdak-c";
        v8 = @"sdak-p";
        goto LABEL_25;
      }

      if (AKSSystemKeyType == 14)
      {
        v9 = @"dcik";
        goto LABEL_30;
      }
    }

    else
    {
      if (AKSSystemKeyType == 7)
      {
        AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
        v7 = @"haven-c";
        v8 = @"haven-p";
        goto LABEL_25;
      }

      if (AKSSystemKeyType == 9)
      {
        AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
        v7 = @"dak-c";
        v8 = @"dak-p";
        goto LABEL_25;
      }
    }
  }

  else if (AKSSystemKeyType > 2)
  {
    if (AKSSystemKeyType == 3)
    {
      v9 = @"gid";
      goto LABEL_30;
    }

    if (AKSSystemKeyType == 6)
    {
      AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
      v7 = @"oik-c";
      v8 = @"oik-p";
      goto LABEL_25;
    }
  }

  else
  {
    if (AKSSystemKeyType == 1)
    {
      v9 = @"sik";
      goto LABEL_30;
    }

    if (AKSSystemKeyType == 2)
    {
      AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
      v7 = @"uik-c";
      v8 = @"uik-p";
LABEL_25:
      if (AKSSystemKeyGeneration == 3)
      {
        v10 = v8;
      }

      else
      {
        v10 = v7;
      }

      v11 = v10;
      goto LABEL_29;
    }
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN!%d(%d)", self->_AKSSystemKeyType, self->_AKSSystemKeyGeneration];
LABEL_29:
  v9 = v11;
LABEL_30:
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<sepk:%@ kid=%016llx>", v9, self->_debugID];

  return v12;
}

- (id)publicKeyWithError:(id *)error
{
  v5 = aks_system_key_get_public();
  if (v5)
  {
    [(TKLocalSEPKey *)self error:error withAKSReturn:v5 ACMHandle:0 AKSOperation:0 params:0 message:@"unable to get public key"];
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:0 length:0];
    v7 = TK_LOG_sepkey_0(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [TKLocalSEPSystemKey publicKeyWithError:];
    }
  }

  return v6;
}

- (id)signDigest:(id)digest error:(id *)error
{
  digestCopy = digest;
  if (self->_AKSSystemKeyType == 7 && ![(TKLocalSEPKey *)self callerHasEntitlement:@"com.apple.private.playgrounds-local-signing-allowed" error:error])
  {
    v14 = 0;
  }

  else
  {
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
      v11 = aks_system_key_sign();
      if (v11)
      {
        v12 = v11;
        aCMHandle2 = [v8 ACMHandle];
        [(TKLocalSEPKey *)self error:error withAKSReturn:v12 ACMHandle:aCMHandle2 AKSOperation:@"osgn" params:v10 message:@"unable to sign digest"];

        v14 = 0;
      }

      else
      {
        v15 = TK_LOG_sepkey_0(v11);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [TKLocalSEPRefKey signDigest:error:];
        }

        v14 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:0 length:0];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)attestKey:(id)key nonce:(id)nonce error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  nonceCopy = nonce;
  if (![(TKLocalSEPKey *)self callerHasEntitlement:@"com.apple.security.attestation.access" error:error])
  {
    v21 = 0;
    goto LABEL_51;
  }

  v11 = [(TKLocalSEPKey *)self authContextWithError:error];
  v12 = v11;
  if (v11)
  {
    aCMHandle = [v11 ACMHandle];
    v14 = [(TKLocalSEPKey *)self parametersWithACMHandle:aCMHandle];

    if (nonceCopy)
    {
      [v14 setData:nonceCopy forKey:4];
    }

    v15 = keyCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [TKLocalSEPSystemKey attestKey:a2 nonce:self error:?];
    }

    AKSSystemKeyType = self->_AKSSystemKeyType;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (AKSSystemKeyType == 3)
    {
      if (isKindOfClass)
      {
        v45 = v15;
        [v15 AKSRefKey];
        [v14 bytes];
        [v14 length];
        v18 = aks_gid_attest();
        v19 = TK_LOG_sepkey_0(v18);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_35;
        }

        *buf = 138543874;
        *v47 = self;
        *&v47[8] = 2112;
        *v48 = v14;
        *&v48[8] = 1024;
        *v49 = v18;
        v20 = "aks_gid_attest(%{public}@, %@) -> %08x";
        goto LABEL_17;
      }

      if (error)
      {
        isKindOfClass = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:0];
        *error = isKindOfClass;
      }

      v33 = TK_LOG_sepkey_0(isKindOfClass);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [TKLocalSEPSystemKey attestKey:nonce:error:];
      }

LABEL_48:

      v21 = 0;
LABEL_49:

      goto LABEL_50;
    }

    if (AKSSystemKeyType == 1)
    {
      if (isKindOfClass)
      {
        v45 = v15;
        [v15 AKSRefKey];
        [v14 bytes];
        [v14 length];
        v18 = aks_sik_attest();
        v19 = TK_LOG_sepkey_0(v18);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_35;
        }

        *buf = 138543874;
        *v47 = self;
        *&v47[8] = 2112;
        *v48 = v14;
        *&v48[8] = 1024;
        *v49 = v18;
        v20 = "aks_sik_attest(%{public}@, %@) -> %08x";
LABEL_17:
        _os_log_debug_impl(&dword_1DF413000, v19, OS_LOG_TYPE_DEBUG, v20, buf, 0x1Cu);
        goto LABEL_35;
      }

      objc_opt_class();
      v28 = objc_opt_isKindOfClass();
      if (v28)
      {
        v45 = v15;
        v29 = v15;
        isa = v29[5].isa;
        if (isa != 2 && isa != 14)
        {
          [v14 setNumber:1 forKey:18];
        }

        v44 = v29;
        [v14 bytes];
        v31 = v14;
        [v14 length];
        v18 = aks_system_key_collection();
        v32 = TK_LOG_sepkey_0(v18);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v39 = v44[5].isa;
          isa_high = HIDWORD(v44[5].isa);
          *buf = 67109890;
          *v47 = v39;
          *&v47[4] = 1024;
          *&v47[6] = isa_high;
          *v48 = 2112;
          *&v48[2] = v31;
          *v49 = 1024;
          *&v49[2] = v18;
          _os_log_debug_impl(&dword_1DF413000, v32, OS_LOG_TYPE_DEBUG, "aks_system_key_collection(%d, %d, %@) -> %08x", buf, 0x1Eu);
        }

        v14 = v31;
        v19 = v44;
        goto LABEL_35;
      }

      if (error)
      {
        v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:0];
        *error = v28;
      }

      v33 = TK_LOG_sepkey_0(v28);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [TKLocalSEPSystemKey attestKey:nonce:error:];
      }

      goto LABEL_48;
    }

    if (isKindOfClass)
    {
      v45 = v15;
      v19 = v15;
      [v19 AKSRefKey];
      [v14 bytes];
      v43 = v14;
      [v14 length];
      v18 = aks_system_key_attest();
      v22 = TK_LOG_sepkey_0(v18);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = self->_AKSSystemKeyType;
        AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
        *buf = 67110146;
        *v47 = v23;
        *&v47[4] = 1024;
        *&v47[6] = AKSSystemKeyGeneration;
        *v48 = 2114;
        *&v48[2] = v19;
        *v49 = 2112;
        *&v49[2] = v43;
        v50 = 1024;
        v51 = v18;
        v25 = "aks_system_key_attest(%d, generation=%d, attesting=%{public}@, %@) -> %08x";
        v26 = v22;
        v27 = 40;
LABEL_55:
        _os_log_debug_impl(&dword_1DF413000, v26, OS_LOG_TYPE_DEBUG, v25, buf, v27);
      }
    }

    else
    {
      objc_opt_class();
      v34 = objc_opt_isKindOfClass();
      if ((v34 & 1) == 0)
      {
        if (error)
        {
          v34 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:0];
          *error = v34;
        }

        v33 = TK_LOG_sepkey_0(v34);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [TKLocalSEPSystemKey attestKey:nonce:error:];
        }

        goto LABEL_48;
      }

      v45 = v15;
      v19 = v15;
      [v14 bytes];
      v43 = v14;
      [v14 length];
      v18 = aks_system_key_collection();
      v22 = TK_LOG_sepkey_0(v18);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v41 = v19[5].isa;
        v42 = HIDWORD(v19[5].isa);
        *buf = 67109890;
        *v47 = v41;
        *&v47[4] = 1024;
        *&v47[6] = v42;
        *v48 = 2112;
        *&v48[2] = v43;
        *v49 = 1024;
        *&v49[2] = v18;
        v25 = "aks_system_key_collection(%d, %d, %@) -> %08x";
        v26 = v22;
        v27 = 30;
        goto LABEL_55;
      }
    }

    v14 = v43;
LABEL_35:

    if (v18)
    {
      aCMHandle2 = [v12 ACMHandle];
      [(TKLocalSEPKey *)self error:error withAKSReturn:v18 ACMHandle:aCMHandle2 AKSOperation:@"oa" params:v14 message:@"unable to attest key"];

      v21 = 0;
      v15 = v45;
    }

    else
    {
      v37 = TK_LOG_sepkey_0(v35);
      v15 = v45;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        [TKLocalSEPRefKey attestKey:nonce:error:];
      }

      v21 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:0 length:0];
    }

    goto LABEL_49;
  }

  v21 = 0;
LABEL_50:

LABEL_51:

  return v21;
}

- (BOOL)lifetimeControlWithType:(int64_t)type error:(id *)error
{
  v7 = [(TKLocalSEPKey *)self authContextWithError:error];
  v8 = v7;
  if (v7)
  {
    if (type)
    {
      if (type == 1 && self->_AKSSystemKeyGeneration == 3)
      {
        goto LABEL_8;
      }
    }

    else if (self->_AKSSystemKeyGeneration == 2)
    {
LABEL_8:
      aCMHandle = [v7 ACMHandle];
      v11 = [(TKLocalSEPKey *)self parametersWithACMHandle:aCMHandle];

      [v11 bytes];
      [v11 length];
      v12 = aks_system_key_operate();
      if (!v12)
      {
        v16 = TK_LOG_sepkey_0(v12);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [TKLocalSEPSystemKey lifetimeControlWithType:error:];
        }

        v9 = 1;
        goto LABEL_15;
      }

      v13 = v12;
      aCMHandle2 = [v8 ACMHandle];
      [(TKLocalSEPKey *)self error:error withAKSReturn:v13 ACMHandle:aCMHandle2 AKSOperation:@"oko" params:v11 message:@"unable to bump/commit key"];

LABEL_14:
      v9 = 0;
LABEL_15:

      goto LABEL_16;
    }

    if (error)
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:0];
      *error = v7;
    }

    v11 = TK_LOG_sepkey_0(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TKLocalSEPSystemKey lifetimeControlWithType:error:];
    }

    goto LABEL_14;
  }

  v9 = 0;
LABEL_16:

  return v9;
}

+ (void)hasSystemKey:ACMHandle:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

+ (void)hasSystemKey:ACMHandle:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_1DF413000, v1, OS_LOG_TYPE_ERROR, "syskey %d not supported, attempt to collect it failed, error %08x", v2, 0xEu);
}

- (void)_initWithObjectID:authContext:caller:isIDUnknown:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v1 = [v0 callerName];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)attestKey:(uint64_t)a1 nonce:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKLocalSEPKey.m" lineNumber:1523 description:@"Only TKLocalSEPKey instances can be attested"];
}

- (void)lifetimeControlWithType:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)lifetimeControlWithType:error:.cold.2()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v13 = *MEMORY[0x1E69E9840];
  v4 = [v2 callerName];
  v5 = v4;
  v6 = "bump";
  v7 = 138543874;
  v8 = v3;
  if (v1 == 1)
  {
    v6 = "commit";
  }

  v9 = 2114;
  v10 = v4;
  v11 = 2082;
  v12 = v6;
  _os_log_error_impl(&dword_1DF413000, v0, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@: an attempt to %{public}s incompatible key", &v7, 0x20u);
}

@end