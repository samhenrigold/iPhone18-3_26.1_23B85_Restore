@interface TKTokenConfiguration
+ (BOOL)_hasSeparateKeysAndCertificatesObjectIDSpace;
+ (NSXPCInterface)interfaceForChangeProtocol;
+ (NSXPCInterface)interfaceForProtocol;
+ (void)set_hasSeparateKeysAndCertificatesObjectIDSpace:(BOOL)space;
- (NSArray)keychainItems;
- (NSData)configurationData;
- (TKTokenConfiguration)initWithTokenID:(id)d configurationConnection:(id)connection;
- (TKTokenKeychainCertificate)certificateForObjectID:(TKTokenObjectID)objectID error:(NSError *)error;
- (TKTokenKeychainKey)keyForObjectID:(TKTokenObjectID)objectID error:(NSError *)error;
- (id)beginTransaction;
- (void)setConfigurationData:(NSData *)configurationData;
- (void)setKeychainItems:(NSArray *)keychainItems;
- (void)tokenConfigurationChanged:(id)changed;
@end

@implementation TKTokenConfiguration

+ (NSXPCInterface)interfaceForProtocol
{
  if (interfaceForProtocol_onceToken != -1)
  {
    +[TKTokenConfiguration interfaceForProtocol];
  }

  v3 = interfaceForProtocol_interface;

  return v3;
}

void __44__TKTokenConfiguration_interfaceForProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A900B0];
  v1 = interfaceForProtocol_interface;
  interfaceForProtocol_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [interfaceForProtocol_interface setClasses:v4 forSelector:sel_getTokenIDsForClassID_reply_ argumentIndex:0 ofReply:1];
}

+ (NSXPCInterface)interfaceForChangeProtocol
{
  if (interfaceForChangeProtocol_onceToken != -1)
  {
    +[TKTokenConfiguration interfaceForChangeProtocol];
  }

  v3 = interfaceForChangeProtocol_interface;

  return v3;
}

void __50__TKTokenConfiguration_interfaceForChangeProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A89850];
  v1 = interfaceForChangeProtocol_interface;
  interfaceForChangeProtocol_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [interfaceForChangeProtocol_interface setClasses:v4 forSelector:sel_tokenConfigurationChanged_ argumentIndex:0 ofReply:0];
}

- (TKTokenConfiguration)initWithTokenID:(id)d configurationConnection:(id)connection
{
  dCopy = d;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = TKTokenConfiguration;
  v9 = [(TKTokenConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configurationConnection, connection);
    [connectionCopy registerForConfigurationChange:v10];
    objc_storeStrong(&v10->_tokenID, d);
  }

  return v10;
}

- (void)tokenConfigurationChanged:(id)changed
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  changedCopy = changed;
  v5 = [changedCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(changedCopy);
        }

        if ([(TKTokenID *)self->_tokenID isEqual:*(*(&v11 + 1) + 8 * i), v11])
        {
          selfCopy = self;
          objc_sync_enter(selfCopy);
          keychainItems = selfCopy->_keychainItems;
          selfCopy->_keychainItems = 0;

          objc_sync_exit(selfCopy);
          goto LABEL_11;
        }
      }

      v6 = [changedCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)beginTransaction
{
  configurationProtocol = [(TKTokenConfigurationConnection *)self->_configurationConnection configurationProtocol];
  [configurationProtocol beginTransactionWithReply:&__block_literal_global_130];

  v4 = [[TKTokenConfigurationTransaction alloc] initWithConfigurationConnection:self->_configurationConnection];

  return v4;
}

- (NSData)configurationData
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  configurationProtocol = [(TKTokenConfigurationConnection *)self->_configurationConnection configurationProtocol];
  tokenID = [(TKTokenConfiguration *)self tokenID];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__TKTokenConfiguration_configurationData__block_invoke;
  v7[3] = &unk_1E86B7570;
  v7[4] = &v8;
  [configurationProtocol readDataForTokenID:tokenID reply:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setConfigurationData:(NSData *)configurationData
{
  configurationConnection = self->_configurationConnection;
  v5 = configurationData;
  configurationProtocol = [(TKTokenConfigurationConnection *)configurationConnection configurationProtocol];
  tokenID = [(TKTokenConfiguration *)self tokenID];
  [configurationProtocol updateTokenID:tokenID data:v5 reply:&__block_literal_global_134];
}

- (NSArray)keychainItems
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  keychainItems = selfCopy->_keychainItems;
  if (!keychainItems)
  {
    v4 = [MEMORY[0x1E695E0F0] mutableCopy];
    configurationProtocol = [(TKTokenConfigurationConnection *)selfCopy->_configurationConnection configurationProtocol];
    tokenID = [(TKTokenConfiguration *)selfCopy tokenID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__TKTokenConfiguration_keychainItems__block_invoke;
    v12[3] = &unk_1E86B7598;
    v7 = v4;
    v13 = v7;
    [configurationProtocol getKeychainItemsForTokenID:tokenID reply:v12];

    v8 = [v7 copy];
    v9 = selfCopy->_keychainItems;
    selfCopy->_keychainItems = v8;

    keychainItems = selfCopy->_keychainItems;
  }

  v10 = keychainItems;
  objc_sync_exit(selfCopy);

  return v10;
}

void __37__TKTokenConfiguration_keychainItems__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [TKTokenKeychainItem keychainItemWithInfo:*(*(&v9 + 1) + 8 * v7)];
        if (v8)
        {
          [*(a1 + 32) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (BOOL)_hasSeparateKeysAndCertificatesObjectIDSpace
{
  if (_hasSeparateKeysAndCertificatesObjectIDSpaceIsSet == 1)
  {
    v2 = _hasSeparateKeysAndCertificatesObjectIDSpace;
  }

  else
  {
    v2 = 1;
    _hasSeparateKeysAndCertificatesObjectIDSpace = 1;
    _hasSeparateKeysAndCertificatesObjectIDSpaceIsSet = 1;
  }

  return v2 & 1;
}

+ (void)set_hasSeparateKeysAndCertificatesObjectIDSpace:(BOOL)space
{
  _hasSeparateKeysAndCertificatesObjectIDSpace = space;
  _hasSeparateKeysAndCertificatesObjectIDSpaceIsSet = 1;
  _hasSeparateKeysAndCertificatesObjectIDSpaceIsSetExternally = 1;
}

- (void)setKeychainItems:(NSArray *)keychainItems
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = keychainItems;
  v4 = TK_LOG_tokencfg(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(TKTokenConfiguration *)v3 setKeychainItems:v4];
  }

  if ([(NSArray *)v3 count])
  {
    v5 = 0;
    v6 = *MEMORY[0x1E695D930];
    while (1)
    {
      v7 = [(NSArray *)v3 objectAtIndexedSubscript:v5];
      v8 = ++v5;
      if (v5 < [(NSArray *)v3 count])
      {
        break;
      }

LABEL_23:

      if (v5 >= [(NSArray *)v3 count])
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      v9 = [(NSArray *)v3 objectAtIndexedSubscript:v8];
      objectID = [v7 objectID];
      objectID2 = [v9 objectID];
      v12 = [objectID isEqual:objectID2];

      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
        {
          v14 = @"Detected duplicate objectID for objects %@ and %@";
          if ((_hasSeparateKeysAndCertificatesObjectIDSpaceIsSetExternally & 1) == 0)
          {
            v15 = TK_LOG_tokencfg(isKindOfClass);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543618;
              v39 = v7;
              v40 = 2114;
              v41 = v9;
              v16 = v15;
              v17 = "Detected duplicate objectID for objects %{public}@ and %{public}@";
              goto LABEL_22;
            }

            goto LABEL_17;
          }

          goto LABEL_18;
        }

        _hasSeparateKeysAndCertificatesObjectIDSpace = [objc_opt_class() _hasSeparateKeysAndCertificatesObjectIDSpace];
        if ((_hasSeparateKeysAndCertificatesObjectIDSpace & 1) == 0)
        {
          v14 = @"Detected duplicate objectID for key %@ and certificate %@. This is allowed only for token extensions built for macOS 10.16 or newer. Either change build options to target newer OS version or avoid sharing same objectID for key and certificate.";
          if ((_hasSeparateKeysAndCertificatesObjectIDSpaceIsSetExternally & 1) == 0)
          {
            v15 = TK_LOG_tokencfg(_hasSeparateKeysAndCertificatesObjectIDSpace);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543618;
              v39 = v7;
              v40 = 2114;
              v41 = v9;
              v16 = v15;
              v17 = "Detected duplicate objectID for key %{public}@ and certificate %{public}@. This is allowed only for token extensions built for macOS 10.16 or newer. Either change build options to target newer OS version or avoid sharing same objectID for key and certificate.";
LABEL_22:
              _os_log_fault_impl(&dword_1DF413000, v16, OS_LOG_TYPE_FAULT, v17, buf, 0x16u);
            }

LABEL_17:
          }

LABEL_18:
          [MEMORY[0x1E695DF30] raise:v6 format:{v14, v7, v9}];
        }
      }

      if (++v8 >= [(NSArray *)v3 count])
      {
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v3, "count")}];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v3;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v22)
  {
    v23 = *v34;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v33 + 1) + 8 * i);
        tokenID = [(TKTokenConfiguration *)selfCopy tokenID];
        [v25 setTokenID:tokenID];

        keychainAttributes = [v25 keychainAttributes];
        [v20 addObject:keychainAttributes];
      }

      v22 = [(NSArray *)v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v22);
  }

  configurationProtocol = [(TKTokenConfigurationConnection *)selfCopy->_configurationConnection configurationProtocol];
  tokenID2 = [(TKTokenConfiguration *)selfCopy tokenID];
  [configurationProtocol updateKeychainItemsForTokenID:tokenID2 items:v20 reply:&__block_literal_global_148];

  v30 = [(NSArray *)v21 copy];
  v31 = selfCopy->_keychainItems;
  selfCopy->_keychainItems = v30;

  objc_sync_exit(selfCopy);
}

- (TKTokenKeychainKey)keyForObjectID:(TKTokenObjectID)objectID error:(NSError *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = objectID;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  keychainItems = [(TKTokenConfiguration *)self keychainItems];
  v7 = [keychainItems countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(keychainItems);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objectID = [v11 objectID];
          v13 = [objectID isEqual:v5];

          if (v13)
          {
            v16 = v11;

            goto LABEL_16;
          }
        }
      }

      v8 = [keychainItems countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = TK_LOG_tokencfg(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [TKTokenConfiguration keyForObjectID:v5 error:self];
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:MEMORY[0x1E695E0F8]];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_16:

  return v16;
}

- (TKTokenKeychainCertificate)certificateForObjectID:(TKTokenObjectID)objectID error:(NSError *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = objectID;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  keychainItems = [(TKTokenConfiguration *)self keychainItems];
  v7 = [keychainItems countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(keychainItems);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objectID = [v11 objectID];
          v13 = [objectID isEqual:v5];

          if (v13)
          {
            v16 = v11;

            goto LABEL_16;
          }
        }
      }

      v8 = [keychainItems countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = TK_LOG_tokencfg(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [TKTokenConfiguration certificateForObjectID:v5 error:self];
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:MEMORY[0x1E695E0F8]];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_16:

  return v16;
}

- (void)setKeychainItems:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1DF413000, a2, OS_LOG_TYPE_DEBUG, "Configuration got items: %{public}@", &v2, 0xCu);
}

- (void)keyForObjectID:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 tokenID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1DF413000, v3, v4, "Cannot find requested key %{public}@ on token %{public}@", v5, v6, v7, v8);
}

- (void)certificateForObjectID:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 tokenID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1DF413000, v3, v4, "Cannot find requested certificate %{public}@ on token %{public}@", v5, v6, v7, v8);
}

@end