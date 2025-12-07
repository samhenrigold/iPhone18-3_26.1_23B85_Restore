@interface LAKeyStoreBackendQueryBuilder
- (id)_commonGenericPasswordParams;
- (id)_commonKeyParams;
- (id)_commonQueryParams;
- (id)createQueryForGenericPasswordWithIdentifier:(id)identifier domain:(id)domain data:(id)data protectedBy:(id)by;
- (id)createQueryForKeyWithIdentifier:(id)identifier domain:(id)domain acl:(id)acl;
- (id)fetchQueryForGenericPasswordWithIdentifier:(id)identifier domain:(id)domain;
- (id)fetchQueryForGenericPasswordsWithDomain:(id)domain;
- (id)fetchQueryForKeyWithIdentifier:(id)identifier domain:(id)domain;
- (id)fetchQueryForKeyWithPublicKeyHash:(id)hash;
- (id)fetchQueryForKeysWithDomain:(id)domain;
- (id)removeQueryForGenericPasswordsWithDomain:(id)domain;
- (id)removeQueryForKeysWithDomain:(id)domain;
@end

@implementation LAKeyStoreBackendQueryBuilder

- (id)createQueryForKeyWithIdentifier:(id)identifier domain:(id)domain acl:(id)acl
{
  v26[4] = *MEMORY[0x1E69E9840];
  aclCopy = acl;
  domainCopy = domain;
  identifierCopy = identifier;
  _commonKeyParams = [(LAKeyStoreBackendQueryBuilder *)self _commonKeyParams];
  v12 = *MEMORY[0x1E697AD78];
  v13 = *MEMORY[0x1E697ADC8];
  v25[0] = *MEMORY[0x1E697AD68];
  v25[1] = v13;
  v26[0] = v12;
  v26[1] = identifierCopy;
  v14 = *MEMORY[0x1E697AD50];
  v26[2] = &unk_1F1A6FBF0;
  v15 = *MEMORY[0x1E697B2D0];
  v25[2] = v14;
  v25[3] = v15;
  v23[0] = *MEMORY[0x1E697ABC8];
  v16 = [MEMORY[0x1E69AD210] deserializeACL:aclCopy];

  v17 = *MEMORY[0x1E697AD18];
  v24[0] = v16;
  v24[1] = MEMORY[0x1E695E118];
  v18 = *MEMORY[0x1E697AC48];
  v23[1] = v17;
  v23[2] = v18;
  v19 = [domainCopy dataUsingEncoding:4];

  v24[2] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v26[3] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];

  [_commonKeyParams addEntriesFromDictionary:v21];

  return _commonKeyParams;
}

- (id)createQueryForGenericPasswordWithIdentifier:(id)identifier domain:(id)domain data:(id)data protectedBy:(id)by
{
  v23[6] = *MEMORY[0x1E69E9840];
  byCopy = by;
  dataCopy = data;
  domainCopy = domain;
  identifierCopy = identifier;
  _commonGenericPasswordParams = [(LAKeyStoreBackendQueryBuilder *)self _commonGenericPasswordParams];
  v22[0] = *MEMORY[0x1E697ABC8];
  allowAllACL = [MEMORY[0x1E69AD210] allowAllACL];
  v16 = *MEMORY[0x1E697ADC8];
  v23[0] = allowAllACL;
  v23[1] = identifierCopy;
  v17 = *MEMORY[0x1E697AC30];
  v22[1] = v16;
  v22[2] = v17;
  v18 = *MEMORY[0x1E697AE88];
  v23[2] = identifierCopy;
  v23[3] = domainCopy;
  v19 = *MEMORY[0x1E697ACF0];
  v22[3] = v18;
  v22[4] = v19;
  v22[5] = *MEMORY[0x1E697B3C0];
  v23[4] = byCopy;
  v23[5] = dataCopy;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:6];

  [_commonGenericPasswordParams addEntriesFromDictionary:v20];

  return _commonGenericPasswordParams;
}

- (id)_commonKeyParams
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (self)
  {
    _commonQueryParams = [(LAKeyStoreBackendQueryBuilder *)self _commonQueryParams];
    v3 = *MEMORY[0x1E697B020];
    v4 = *MEMORY[0x1E697AEC8];
    v7[0] = *MEMORY[0x1E697AFF8];
    v7[1] = v4;
    v5 = *MEMORY[0x1E697AED0];
    v8[0] = v3;
    v8[1] = v5;
    v7[2] = *MEMORY[0x1E697AD30];
    v8[2] = *MEMORY[0x1E697AD38];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0() addEntriesFromDictionary:v1];
  }

  else
  {
    _commonQueryParams = 0;
  }

  return _commonQueryParams;
}

- (id)fetchQueryForKeyWithIdentifier:(id)identifier domain:(id)domain
{
  v17[5] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  identifierCopy = identifier;
  _commonKeyParams = [(LAKeyStoreBackendQueryBuilder *)self _commonKeyParams];
  v9 = *MEMORY[0x1E697ADC8];
  v17[0] = identifierCopy;
  v10 = *MEMORY[0x1E697AC48];
  v16[0] = v9;
  v16[1] = v10;
  v11 = [domainCopy dataUsingEncoding:4];

  v12 = *MEMORY[0x1E697B328];
  v16[2] = *MEMORY[0x1E697B310];
  v16[3] = v12;
  v16[4] = *MEMORY[0x1E697B260];
  v17[1] = v11;
  v17[2] = MEMORY[0x1E695E118];
  v13 = *MEMORY[0x1E697B270];
  v17[3] = MEMORY[0x1E695E118];
  v17[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:5];

  [_commonKeyParams addEntriesFromDictionary:v14];

  return _commonKeyParams;
}

- (id)fetchQueryForKeyWithPublicKeyHash:(id)hash
{
  hashCopy = hash;
  v5 = OUTLINED_FUNCTION_0();
  _commonKeyParams = [(LAKeyStoreBackendQueryBuilder *)v5 _commonKeyParams];
  OUTLINED_FUNCTION_1_0();
  v8 = [v7 dictionaryWithObjects:? forKeys:? count:?];

  [_commonKeyParams addEntriesFromDictionary:v8];

  return _commonKeyParams;
}

- (id)fetchQueryForKeysWithDomain:(id)domain
{
  domainCopy = domain;
  v5 = OUTLINED_FUNCTION_0();
  _commonKeyParams = [(LAKeyStoreBackendQueryBuilder *)v5 _commonKeyParams];
  v7 = [v3 dataUsingEncoding:4];

  OUTLINED_FUNCTION_1_0();
  [v8 dictionaryWithObjects:? forKeys:? count:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() addEntriesFromDictionary:v3];

  return _commonKeyParams;
}

- (id)removeQueryForKeysWithDomain:(id)domain
{
  v10[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v5 = OUTLINED_FUNCTION_0();
  _commonKeyParams = [(LAKeyStoreBackendQueryBuilder *)v5 _commonKeyParams];
  v9 = *MEMORY[0x1E697AC48];
  v7 = [v3 dataUsingEncoding:4];

  v10[0] = v7;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() addEntriesFromDictionary:v3];

  return _commonKeyParams;
}

- (id)_commonGenericPasswordParams
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    _commonQueryParams = [(LAKeyStoreBackendQueryBuilder *)self _commonQueryParams];
    v3 = *MEMORY[0x1E697AFF8];
    v6[0] = *MEMORY[0x1E697AD00];
    v6[1] = v3;
    v4 = *MEMORY[0x1E697B008];
    v7[0] = MEMORY[0x1E695E118];
    v7[1] = v4;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0() addEntriesFromDictionary:v1];
  }

  else
  {
    _commonQueryParams = 0;
  }

  return _commonQueryParams;
}

- (id)fetchQueryForGenericPasswordWithIdentifier:(id)identifier domain:(id)domain
{
  v16[6] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  identifierCopy = identifier;
  _commonGenericPasswordParams = [(LAKeyStoreBackendQueryBuilder *)self _commonGenericPasswordParams];
  v9 = *MEMORY[0x1E697AC30];
  v15[0] = *MEMORY[0x1E697ADC8];
  v15[1] = v9;
  v16[0] = identifierCopy;
  v16[1] = identifierCopy;
  v10 = *MEMORY[0x1E697B310];
  v15[2] = *MEMORY[0x1E697AE88];
  v15[3] = v10;
  v11 = *MEMORY[0x1E697B260];
  v15[4] = *MEMORY[0x1E697B318];
  v15[5] = v11;
  v16[2] = domainCopy;
  v16[3] = MEMORY[0x1E695E118];
  v12 = *MEMORY[0x1E697B270];
  v16[4] = MEMORY[0x1E695E118];
  v16[5] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:6];

  [_commonGenericPasswordParams addEntriesFromDictionary:v13];

  return _commonGenericPasswordParams;
}

- (id)fetchQueryForGenericPasswordsWithDomain:(id)domain
{
  domainCopy = domain;
  v5 = OUTLINED_FUNCTION_0();
  _commonGenericPasswordParams = [(LAKeyStoreBackendQueryBuilder *)v5 _commonGenericPasswordParams];
  OUTLINED_FUNCTION_1_0();
  v8 = [v7 dictionaryWithObjects:? forKeys:? count:?];

  [_commonGenericPasswordParams addEntriesFromDictionary:v8];

  return _commonGenericPasswordParams;
}

- (id)removeQueryForGenericPasswordsWithDomain:(id)domain
{
  v10[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v5 = OUTLINED_FUNCTION_0();
  _commonGenericPasswordParams = [(LAKeyStoreBackendQueryBuilder *)v5 _commonGenericPasswordParams];
  v9 = *MEMORY[0x1E697AE88];
  v10[0] = v3;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [_commonGenericPasswordParams addEntriesFromDictionary:v7];

  return _commonGenericPasswordParams;
}

- (id)_commonQueryParams
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = *MEMORY[0x1E697B390];
    v5[0] = *MEMORY[0x1E697ACD8];
    v5[1] = v1;
    v6[0] = @"APLA";
    v6[1] = MEMORY[0x1E695E118];
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end