@interface TKTokenKeychainContents
- (NSArray)items;
- (NSDictionary)certificates;
- (NSDictionary)keys;
- (TKTokenKeychainCertificate)certificateForObjectID:(TKTokenObjectID)objectID error:(NSError *)error;
- (TKTokenKeychainContents)initWithConfiguration:(id)configuration;
- (TKTokenKeychainContents)initWithTokenID:(id)d error:(id *)error;
- (TKTokenKeychainKey)keyForObjectID:(TKTokenObjectID)objectID error:(NSError *)error;
- (id)certificateForKey:(id)key;
- (void)fillWithItems:(NSArray *)items;
@end

@implementation TKTokenKeychainContents

- (TKTokenKeychainContents)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = TKTokenKeychainContents;
  v6 = [(TKTokenKeychainContents *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (TKTokenKeychainContents)initWithTokenID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = [[TKTokenID alloc] initWithTokenID:dCopy];

  v8 = +[TKTokenDriverConfiguration driverConfigurations];
  classID = [(TKTokenID *)v7 classID];
  v10 = [v8 objectForKeyedSubscript:classID];

  if (v10)
  {
    tokenConfigurations = [v10 tokenConfigurations];
    instanceID = [(TKTokenID *)v7 instanceID];
    v14 = [tokenConfigurations objectForKeyedSubscript:instanceID];

    if (!v14)
    {
      instanceID2 = [(TKTokenID *)v7 instanceID];
      v14 = [v10 addTokenConfigurationForTokenInstanceID:instanceID2];
    }

    self = [(TKTokenKeychainContents *)self initWithConfiguration:v14];

    selfCopy = self;
  }

  else
  {
    if (error)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:MEMORY[0x1E695E0F8]];
      *error = v11;
    }

    v17 = TK_LOG_token_2(v11);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [TKTokenKeychainContents initWithTokenID:v7 error:v17];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)fillWithItems:(NSArray *)items
{
  v4 = items;
  configuration = [(TKTokenKeychainContents *)self configuration];
  [configuration setKeychainItems:v4];

  v6 = self->_items;
  self->_items = v4;
}

- (NSArray)items
{
  items = self->_items;
  if (!items)
  {
    configuration = [(TKTokenKeychainContents *)self configuration];
    keychainItems = [configuration keychainItems];
    v6 = self->_items;
    self->_items = keychainItems;

    items = self->_items;
  }

  return items;
}

- (NSDictionary)certificates
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E0F8] mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  items = [(TKTokenKeychainContents *)self items];
  v5 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objectID = [v9 objectID];
          [v3 setObject:v9 forKeyedSubscript:objectID];
        }
      }

      v6 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (NSDictionary)keys
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E0F8] mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  items = [(TKTokenKeychainContents *)self items];
  v5 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objectID = [v9 objectID];
          [v3 setObject:v9 forKeyedSubscript:objectID];
        }
      }

      v6 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (TKTokenKeychainCertificate)certificateForObjectID:(TKTokenObjectID)objectID error:(NSError *)error
{
  v6 = objectID;
  certificates = [(TKTokenKeychainContents *)self certificates];
  v8 = [certificates objectForKeyedSubscript:v6];

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = TK_LOG_token_2(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TKTokenKeychainContents certificateForObjectID:v6 error:self];
    }

    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:MEMORY[0x1E695E0F8]];
    }
  }

  return v8;
}

- (TKTokenKeychainKey)keyForObjectID:(TKTokenObjectID)objectID error:(NSError *)error
{
  v6 = objectID;
  keys = [(TKTokenKeychainContents *)self keys];
  v8 = [keys objectForKeyedSubscript:v6];

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = TK_LOG_token_2(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TKTokenKeychainContents keyForObjectID:v6 error:self];
    }

    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:MEMORY[0x1E695E0F8]];
    }
  }

  return v8;
}

- (id)certificateForKey:(id)key
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  items = [(TKTokenKeychainContents *)self items];
  v6 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          publicKeyHash = [keyCopy publicKeyHash];
          publicKeyHash2 = [v9 publicKeyHash];
          v12 = [publicKeyHash isEqualToData:publicKeyHash2];

          if (v12)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (void)initWithTokenID:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DF413000, a2, OS_LOG_TYPE_ERROR, "Failed to get driver configuration for %@", &v2, 0xCu);
}

- (void)certificateForObjectID:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 tokenID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)keyForObjectID:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 tokenID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end