@interface TKSEPKey
+ (BOOL)canUseSEPLocally;
- (BOOL)deleteWithError:(id *)error;
- (BOOL)lifetimeControlWithType:(int64_t)type error:(id *)error;
- (NSDictionary)attributes;
- (TKSEPKey)initWithAttributes:(id)attributes authContext:(id)context forceSystemSession:(BOOL)session error:(id *)error;
- (TKSEPKey)initWithKeyType:(id)type keySize:(int64_t)size accessControl:(__SecAccessControl *)control options:(id)options authContext:(id)context forceSystemSession:(BOOL)session error:(id *)error;
- (TKSEPKey)initWithObjectID:(id)d authContext:(id)context forceSystemSession:(BOOL)session error:(id *)error;
- (id)_initWithAuthContext:(id)context;
- (id)attestKey:(id)key nonce:(id)nonce error:(id *)error;
- (id)computeSharedSecret:(id)secret error:(id *)error;
- (id)decapsulateKey:(id)key error:(id *)error;
- (id)initLocalWithKeyType:(id)type keySize:(int64_t)size accessControl:(__SecAccessControl *)control options:(id)options authContext:(id)context caller:(id)caller forceSystemSession:(BOOL)session error:(id *)self0;
- (id)initLocalWithObjectID:(id)d authContext:(id)context caller:(id)caller forceSystemSession:(BOOL)session error:(id *)error;
- (id)keyType;
- (id)publicKeyWithError:(id *)error;
- (id)recryptData:(id)data attributes:(id)attributes error:(id *)error;
- (id)signDigest:(id)digest attributes:(id)attributes error:(id *)error;
- (id)signDigest:(id)digest error:(id *)error;
- (void)attributes;
@end

@implementation TKSEPKey

+ (BOOL)canUseSEPLocally
{
  ctkdConnection = [self ctkdConnection];

  if (ctkdConnection)
  {
    return 0;
  }

  if (canUseSEPLocally_onceToken != -1)
  {
    +[TKSEPKey canUseSEPLocally];
  }

  return canUseSEPLocally_hasEntitlement;
}

- (NSDictionary)attributes
{
  v31[17] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E697AFF8];
  v31[0] = *MEMORY[0x1E697B020];
  v4 = *MEMORY[0x1E697AD68];
  v30[0] = v3;
  v30[1] = v4;
  keyType = [(TKSEPKey *)self keyType];
  v31[1] = keyType;
  v30[2] = *MEMORY[0x1E697AD50];
  keySize = [(TKSEPKey *)self keySize];
  v31[2] = keySize;
  v30[3] = *MEMORY[0x1E697ACE8];
  keySize2 = [(TKSEPKey *)self keySize];
  v8 = *MEMORY[0x1E697AD30];
  v9 = *MEMORY[0x1E697AD38];
  v31[3] = keySize2;
  v31[4] = v9;
  v10 = *MEMORY[0x1E697AD20];
  v30[4] = v8;
  v30[5] = v10;
  v11 = *MEMORY[0x1E697AD08];
  v31[5] = MEMORY[0x1E695E118];
  v31[6] = MEMORY[0x1E695E110];
  v12 = *MEMORY[0x1E697ACF8];
  v30[6] = v11;
  v30[7] = v12;
  v13 = *MEMORY[0x1E697AF40];
  v31[7] = MEMORY[0x1E695E110];
  v31[8] = MEMORY[0x1E695E118];
  v14 = *MEMORY[0x1E697AC90];
  v30[8] = v13;
  v30[9] = v14;
  v15 = *MEMORY[0x1E697AC80];
  v31[9] = MEMORY[0x1E695E110];
  v31[10] = MEMORY[0x1E695E110];
  v16 = *MEMORY[0x1E697AC88];
  v30[10] = v15;
  v30[11] = v16;
  v17 = *MEMORY[0x1E697AC98];
  v31[11] = MEMORY[0x1E695E118];
  v31[12] = MEMORY[0x1E695E118];
  v18 = *MEMORY[0x1E697ACA8];
  v30[12] = v17;
  v30[13] = v18;
  v19 = *MEMORY[0x1E697ACB0];
  v31[13] = MEMORY[0x1E695E110];
  v31[14] = MEMORY[0x1E695E110];
  v20 = *MEMORY[0x1E697ABC8];
  v30[14] = v19;
  v30[15] = v20;
  [(TKSEPKey *)self accessControl];
  v21 = SecAccessControlCopyData();
  v31[15] = v21;
  v30[16] = *MEMORY[0x1E697AEE8];
  objectID = [(TKSEPKey *)self objectID];
  v31[16] = objectID;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:17];
  v24 = [v23 mutableCopy];

  v25 = *MEMORY[0x1E697B3A8];
  systemSessionKey = [(TKSEPKey *)self systemSessionKey];
  if (systemSessionKey && v25)
  {
    v27 = TK_LOG_sepkey(systemSessionKey);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [(TKSEPKey *)self attributes];
    }

    [v24 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v25];
  }

  v28 = [v24 copy];

  return v28;
}

void __28__TKSEPKey_canUseSEPLocally__block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  v1 = SecTaskCopyValueForEntitlement(v0, @"com.apple.keystore.access-keychain-keys", 0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v2 = [v1 integerValue]) != 0)
  {
    v3 = TK_LOG_sepkey(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1DF413000, v3, OS_LOG_TYPE_INFO, "Detected com.apple.keystore.access-keychain-keys entitlement, using in-process SEP SecKey implementation", v7, 2u);
    }

    canUseSEPLocally_hasEntitlement = 1;
    v4 = SecTaskCopyValueForEntitlement(v0, @"com.apple.keystore.sik.access", 0);

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0 || (isKindOfClass = [v4 integerValue]) == 0)
    {
      v6 = TK_LOG_sepkey(isKindOfClass);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __28__TKSEPKey_canUseSEPLocally__block_invoke_cold_1(v6);
      }
    }
  }

  else
  {
    v4 = v1;
  }
}

- (id)_initWithAuthContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TKSEPKey;
  v6 = [(TKSEPKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authContext, context);
  }

  return v7;
}

- (TKSEPKey)initWithObjectID:(id)d authContext:(id)context forceSystemSession:(BOOL)session error:(id *)error
{
  sessionCopy = session;
  v21[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [[TKBERTLVRecord alloc] initWithPropertyList:dCopy];
    data = [(TKTLVRecord *)v12 data];

    dCopy = data;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
LABEL_16:
    if ([objc_opt_class() canUseSEPLocally])
    {
      v15 = [[TKLocalSEPKey alloc] _initWithObjectID:dCopy authContext:contextCopy caller:0 forceSystemSession:sessionCopy error:error];
    }

    else
    {
      v15 = [[TKRemoteSEPKey alloc] _initWithObjectID:dCopy authContext:contextCopy forceSystemSession:sessionCopy error:error];
    }

    error = v15;
  }

  else if (error)
  {
    v17 = TK_LOG_sepkey(isKindOfClass);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [TKSEPKey initWithObjectID:dCopy authContext:v17 forceSystemSession:? error:?];
    }

    v18 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A278];
    v21[0] = @"objectID of unexpected type";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *error = [v18 errorWithDomain:@"CryptoTokenKit" code:-3 userInfo:v19];

    error = 0;
  }

  return error;
}

- (TKSEPKey)initWithKeyType:(id)type keySize:(int64_t)size accessControl:(__SecAccessControl *)control options:(id)options authContext:(id)context forceSystemSession:(BOOL)session error:(id *)error
{
  sessionCopy = session;
  contextCopy = context;
  optionsCopy = options;
  typeCopy = type;
  if ([objc_opt_class() canUseSEPLocally])
  {
    LOBYTE(v21) = sessionCopy;
    v18 = [[TKLocalSEPKey alloc] _initWithKeyType:typeCopy keySize:size accessControl:control options:optionsCopy authContext:contextCopy caller:0 forceSystemSession:v21 error:error];
  }

  else
  {
    v18 = [[TKRemoteSEPKey alloc] _initWithKeyType:typeCopy keySize:size accessControl:control options:optionsCopy authContext:contextCopy forceSystemSession:sessionCopy error:error];
  }

  v19 = v18;

  return v19;
}

- (id)initLocalWithObjectID:(id)d authContext:(id)context caller:(id)caller forceSystemSession:(BOOL)session error:(id *)error
{
  sessionCopy = session;
  callerCopy = caller;
  contextCopy = context;
  dCopy = d;
  v15 = [[TKLocalSEPKey alloc] _initWithObjectID:dCopy authContext:contextCopy caller:callerCopy forceSystemSession:sessionCopy error:error];

  return v15;
}

- (id)initLocalWithKeyType:(id)type keySize:(int64_t)size accessControl:(__SecAccessControl *)control options:(id)options authContext:(id)context caller:(id)caller forceSystemSession:(BOOL)session error:(id *)self0
{
  callerCopy = caller;
  contextCopy = context;
  optionsCopy = options;
  typeCopy = type;
  LOBYTE(v22) = session;
  v20 = [[TKLocalSEPKey alloc] _initWithKeyType:typeCopy keySize:size accessControl:control options:optionsCopy authContext:contextCopy caller:callerCopy forceSystemSession:v22 error:error];

  return v20;
}

- (id)keyType
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%s must be overriden", "-[TKSEPKey keyType]"}];
  v2 = *MEMORY[0x1E697AD68];

  return v2;
}

- (BOOL)deleteWithError:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (id)publicKeyWithError:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (id)signDigest:(id)digest error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (id)signDigest:(id)digest attributes:(id)attributes error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (id)computeSharedSecret:(id)secret error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (id)recryptData:(id)data attributes:(id)attributes error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (id)decapsulateKey:(id)key error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (id)attestKey:(id)key nonce:(id)nonce error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (BOOL)lifetimeControlWithType:(int64_t)type error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (TKSEPKey)initWithAttributes:(id)attributes authContext:(id)context forceSystemSession:(BOOL)session error:(id *)error
{
  sessionCopy = session;
  v136[17] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  contextCopy = context;
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__1;
  v110 = __Block_byref_object_dispose__1;
  null = [MEMORY[0x1E695DFB0] null];
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__1;
  v104 = __Block_byref_object_dispose__1;
  null2 = [MEMORY[0x1E695DFB0] null];
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0;
  v8 = *MEMORY[0x1E697B020];
  v135[0] = *MEMORY[0x1E697AFF8];
  v135[1] = v8;
  obja = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:2];
  v136[0] = obja;
  v9 = *MEMORY[0x1E697AD38];
  v134[0] = *MEMORY[0x1E697AD30];
  v134[1] = v9;
  v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:2];
  v136[1] = v83;
  v65 = *MEMORY[0x1E697AD68];
  v133[0] = *MEMORY[0x1E697AD68];
  null3 = [MEMORY[0x1E695DFB0] null];
  v133[1] = null3;
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke;
  v95[3] = &unk_1E86B7520;
  v95[4] = &v100;
  v79 = MEMORY[0x1E12D5690](v95);
  v133[2] = v79;
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:3];
  v136[2] = v78;
  v132[0] = *MEMORY[0x1E697AD50];
  v132[1] = &unk_1F5A84FB8;
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_24;
  v94[3] = &unk_1E86B7548;
  v94[4] = &v96;
  v94[5] = &v100;
  v77 = MEMORY[0x1E12D5690](v94);
  v132[2] = v77;
  v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:3];
  v136[3] = v76;
  v131[0] = *MEMORY[0x1E697ACE8];
  v131[1] = &unk_1F5A84FB8;
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_2_25;
  v93[3] = &unk_1E86B7520;
  v93[4] = &v96;
  v75 = MEMORY[0x1E12D5690](v93);
  v131[2] = v75;
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:3];
  v136[4] = v74;
  v130 = *MEMORY[0x1E697B3C0];
  v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
  v136[5] = v73;
  v10 = v107[5];
  v63 = *MEMORY[0x1E697ABC8];
  v129[0] = *MEMORY[0x1E697ABC8];
  v129[1] = v10;
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_3;
  v92[3] = &unk_1E86B7520;
  v92[4] = &v106;
  v72 = MEMORY[0x1E12D5690](v92);
  v129[2] = v72;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:3];
  v136[6] = v71;
  v11 = MEMORY[0x1E695E118];
  v128[0] = *MEMORY[0x1E697AD20];
  v128[1] = MEMORY[0x1E695E118];
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:2];
  v136[7] = v70;
  v12 = MEMORY[0x1E695E110];
  v127[0] = *MEMORY[0x1E697AD08];
  v127[1] = MEMORY[0x1E695E110];
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:2];
  v136[8] = v69;
  v126[0] = *MEMORY[0x1E697ACF8];
  v126[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:2];
  v136[9] = v13;
  v125[0] = *MEMORY[0x1E697AF40];
  v125[1] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:2];
  v136[10] = v14;
  v124[0] = *MEMORY[0x1E697AC90];
  v124[1] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:2];
  v136[11] = v15;
  v123[0] = *MEMORY[0x1E697AC80];
  v123[1] = v12;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:2];
  v136[12] = v16;
  v122[0] = *MEMORY[0x1E697AC88];
  v122[1] = v11;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:2];
  v136[13] = v17;
  v121[0] = *MEMORY[0x1E697AC98];
  v121[1] = v11;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:2];
  v136[14] = v18;
  v120[0] = *MEMORY[0x1E697ACA8];
  v120[1] = v12;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:2];
  v136[15] = v19;
  v119[0] = *MEMORY[0x1E697ACB0];
  v119[1] = v12;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:2];
  v136[16] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:17];

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v21;
  v22 = [obj countByEnumeratingWithState:&v88 objects:v118 count:16];
  if (v22)
  {
    v23 = *v89;
    v84 = *MEMORY[0x1E696A278];
LABEL_3:
    v24 = 0;
    while (1)
    {
      if (*v89 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v88 + 1) + 8 * v24);
      v26 = [v25 objectAtIndexedSubscript:0];
      if ([v25 count] < 2)
      {
        v27 = 0;
      }

      else
      {
        v27 = [v25 objectAtIndexedSubscript:1];
      }

      v28 = [attributesCopy objectForKeyedSubscript:v26];
      if ([v25 count] < 3)
      {
        v30 = 0;
        if (v28)
        {
LABEL_11:
          if (v30)
          {
            v31 = (v30)[2](v30, v28);
            if (!v31)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if ([v27 isEqual:v28])
            {
              v35 = v27;
            }

            else
            {
              v35 = 0;
            }

            v31 = v35;
            if (!v31)
            {
LABEL_35:
              if (error)
              {
                v44 = MEMORY[0x1E696ABC0];
                v116 = v84;
                v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sepkey: %@ requires '%@' value when present", v26, v27];
                v117 = v45;
                v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
                *error = [v44 errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:v46];
              }

              v47 = 0;
              v42 = obj;
              goto LABEL_46;
            }
          }

          goto LABEL_25;
        }
      }

      else
      {
        v29 = [v25 objectAtIndex:2];
        v30 = MEMORY[0x1E12D5690]();

        if (v28)
        {
          goto LABEL_11;
        }
      }

      if (v27)
      {
        null4 = [MEMORY[0x1E695DFB0] null];
        v33 = [v27 isEqual:null4];

        if ((v33 & 1) == 0)
        {
          if (v30)
          {
            v34 = (v30)[2](v30, v27);

            v27 = v34;
          }

          [attributesCopy setObject:v27 forKeyedSubscript:v26];
        }
      }

LABEL_25:

      if (v22 == ++v24)
      {
        v22 = [obj countByEnumeratingWithState:&v88 objects:v118 count:16];
        if (v22)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v36 = v101[5];
  null5 = [MEMORY[0x1E695DFB0] null];
  LODWORD(v36) = [v36 isEqual:null5];

  if (v36)
  {
    objc_storeStrong(v101 + 5, *MEMORY[0x1E697AD78]);
  }

  [attributesCopy setObject:v101[5] forKeyedSubscript:v65];
  v38 = v107[5];
  null6 = [MEMORY[0x1E695DFB0] null];
  LODWORD(v38) = [v38 isEqual:null6];

  if (v38)
  {
    v40 = *MEMORY[0x1E697ABF8];
    if (([v101[5] isEqual:*MEMORY[0x1E697AD80]] & 1) != 0 || (objc_msgSend(v101[5], "isEqual:", *MEMORY[0x1E697ADB8]) & 1) != 0 || objc_msgSend(v101[5], "isEqual:", *MEMORY[0x1E697ADB0]))
    {
      v41 = *MEMORY[0x1E697ABE8];

      v40 = v41;
    }

    v42 = SecAccessControlCreateWithFlags(0, v40, 0, 0);
    v43 = SecAccessControlCopyData();
    [attributesCopy setObject:v43 forKeyedSubscript:v63];
  }

  else
  {
    v42 = SecAccessControlCreateFromData();
  }

  v112 = *MEMORY[0x1E697B200];
  v48 = MEMORY[0x1E696AD98];
  v85 = v112;
  v49 = [attributesCopy objectForKeyedSubscript:?];
  v50 = [v48 numberWithBool:{objc_msgSend(v49, "BOOLValue")}];
  v115[0] = v50;
  v113 = *MEMORY[0x1E697B238];
  v51 = MEMORY[0x1E696AD98];
  v82 = v113;
  v52 = [attributesCopy objectForKeyedSubscript:?];
  v53 = [v51 numberWithBool:{objc_msgSend(v52, "BOOLValue")}];
  v115[1] = v53;
  v114 = *MEMORY[0x1E697B248];
  v54 = MEMORY[0x1E696AD98];
  v80 = v114;
  v55 = [attributesCopy objectForKeyedSubscript:?];
  v56 = [v54 numberWithBool:{objc_msgSend(v55, "BOOLValue")}];
  v115[2] = v56;
  v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:&v112 count:3];
  v26 = [v57 mutableCopy];

  v58 = [attributesCopy objectForKey:@"ECCompactable"];

  if (v58)
  {
    v59 = [attributesCopy objectForKeyedSubscript:@"ECCompactable"];
    [v26 setObject:v59 forKeyedSubscript:@"ECCompactable"];
  }

  v60 = [(TKSEPKey *)self initWithKeyType:v101[5] keySize:v97[3] accessControl:v42 options:v26 authContext:contextCopy forceSystemSession:sessionCopy error:error];
  if ([(TKSEPKey *)v60 accessControl])
  {
    [(TKSEPKey *)v60 accessControl];
    [attributesCopy setObject:SecAccessControlGetProtection() forKeyedSubscript:*MEMORY[0x1E697ABD8]];
  }

  objectID = [(TKSEPKey *)v60 objectID];
  [attributesCopy setObject:objectID forKeyedSubscript:*MEMORY[0x1E697AEE8]];

  if ([(TKSEPKey *)v60 systemSessionKey])
  {
    [attributesCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3B0]];
  }

  [attributesCopy removeObjectForKey:v85];
  [attributesCopy removeObjectForKey:@"ECCompactable"];
  [attributesCopy removeObjectForKey:v82];
  [attributesCopy removeObjectForKey:v80];
  v47 = v60;
  self = v47;
LABEL_46:

  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v100, 8);

  _Block_object_dispose(&v106, 8);
  return v47;
}

id __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (_block_invoke_once != -1)
  {
    __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_cold_1();
  }

  if ([_block_invoke_supportedTypes containsObject:v4])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_2()
{
  v6[9] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E697AD80];
  v6[0] = *MEMORY[0x1E697AD78];
  v6[1] = v0;
  v1 = *MEMORY[0x1E697ADB0];
  v6[2] = *MEMORY[0x1E697ADB8];
  v6[3] = v1;
  v2 = *MEMORY[0x1E697ADC0];
  v6[4] = *MEMORY[0x1E697AD88];
  v6[5] = v2;
  v3 = *MEMORY[0x1E697ADA0];
  v6[6] = *MEMORY[0x1E697AD90];
  v6[7] = v3;
  v6[8] = *MEMORY[0x1E697AD98];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:9];
  v5 = _block_invoke_supportedTypes;
  _block_invoke_supportedTypes = v4;
}

void *__68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];
  if (([*(*(*(a1 + 40) + 8) + 40) isEqual:*MEMORY[0x1E697AD90]] & 1) == 0 && !objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "isEqual:", *MEMORY[0x1E697ADA0]))
  {
    v6 = [*(*(*(a1 + 40) + 8) + 40) isEqual:*MEMORY[0x1E697AD98]];
    v7 = *(*(*(a1 + 32) + 8) + 24);
    if (v6)
    {
      v5 = v3;
      if (v7 == 87)
      {
        goto LABEL_12;
      }

      if (v7 != 65)
      {
        goto LABEL_5;
      }
    }

    else if ((v7 | 0x80) != 0x180)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = v3;
  if (v4 != 1024)
  {
    if (v4 != 768)
    {
LABEL_5:
      v5 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v5 = v3;
  }

LABEL_12:
  v8 = v5;

  return v5;
}

id __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_2_25(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  if (v3 == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_3(uint64_t a1, id a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  return a2;
}

- (void)initWithObjectID:(uint64_t)a1 authContext:(NSObject *)a2 forceSystemSession:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DF413000, a2, OS_LOG_TYPE_ERROR, "invalid objectID used for SEPKey: %@", &v2, 0xCu);
}

- (void)attributes
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 138543874;
  selfCopy = self;
  v5 = 2114;
  v6 = a2;
  v7 = 2114;
  v8 = MEMORY[0x1E695E118];
  _os_log_debug_impl(&dword_1DF413000, log, OS_LOG_TYPE_DEBUG, "%{public}@ system-session-key detected, returning %{public}@=%{public}@ in key's attributes", &v3, 0x20u);
}

@end