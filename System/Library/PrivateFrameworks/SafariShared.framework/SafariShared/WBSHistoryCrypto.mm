@interface WBSHistoryCrypto
- (NSData)cryptographicKey;
- (WBSHistoryCrypto)initWithCryptographicKey:(id)key salt:(id)salt;
- (id)_createCryptographicKey;
- (id)_createOrLoadCryptographicKey;
- (id)decryptDictionary:(id)dictionary;
- (id)encryptDictionary:(id)dictionary;
@end

@implementation WBSHistoryCrypto

- (WBSHistoryCrypto)initWithCryptographicKey:(id)key salt:(id)salt
{
  v17 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  saltCopy = salt;
  v15.receiver = self;
  v15.super_class = WBSHistoryCrypto;
  v9 = [(WBSHistoryCrypto *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cachedCryptographicKey, key);
    if (saltCopy)
    {
      objc_storeStrong(&v10->_salt, salt);
    }

    else
    {
      arc4random_buf(__buf, 0x40uLL);
      v11 = [MEMORY[0x1E695DEF0] dataWithBytes:__buf length:64];
      salt = v10->_salt;
      v10->_salt = v11;
    }

    v13 = v10;
  }

  return v10;
}

- (id)_createCryptographicKey
{
  v5 = *MEMORY[0x1E69E9840];
  arc4random_buf(__buf, 0x20uLL);
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:__buf length:32];

  return v2;
}

- (id)_createOrLoadCryptographicKey
{
  v3 = WBSGetKeychainData();
  v4 = 0;
  v5 = v4;
  if (!v3)
  {
    v11 = v4;
    _createCryptographicKey = v11;
    goto LABEL_9;
  }

  v6 = WBSGetKeychainData();
  v7 = 0;
  if (v6)
  {
    _createCryptographicKey = [(WBSHistoryCrypto *)self _createCryptographicKey];

    v9 = _WBSLocalizedString();
    v10 = WBSSetKeychainData();

    v11 = 0;
    v5 = _createCryptographicKey;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = _WBSLocalizedString();
    WBSSetKeychainData();

    _createCryptographicKey = v7;
  }

  v11 = _createCryptographicKey;
  _createCryptographicKey = v5;
LABEL_8:

LABEL_9:

  return v11;
}

- (NSData)cryptographicKey
{
  cachedCryptographicKey = self->_cachedCryptographicKey;
  if (!cachedCryptographicKey)
  {
    _createOrLoadCryptographicKey = [(WBSHistoryCrypto *)self _createOrLoadCryptographicKey];
    v5 = self->_cachedCryptographicKey;
    self->_cachedCryptographicKey = _createOrLoadCryptographicKey;

    cachedCryptographicKey = self->_cachedCryptographicKey;
  }

  v6 = cachedCryptographicKey;

  return v6;
}

- (id)encryptDictionary:(id)dictionary
{
  v21 = 0;
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:200 options:0 error:&v21];
  v5 = v21;
  v7 = v5;
  if (!v4)
  {
    v17 = WBS_LOG_CHANNEL_PREFIXHistory(v5, v6);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(WBSHistoryCrypto *)v17 encryptDictionary:v7];
    }

    goto LABEL_8;
  }

  v20 = 0;
  dataOutAvailable = [v4 length] + 32;
  dataOut = malloc_type_malloc(dataOutAvailable, 0xC313BF5DuLL);
  cryptographicKey = [(WBSHistoryCrypto *)self cryptographicKey];
  bytes = [cryptographicKey bytes];
  cryptographicKey2 = [(WBSHistoryCrypto *)self cryptographicKey];
  v13 = CCCrypt(0, 0, 1u, bytes, [cryptographicKey2 length], 0, objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length"), dataOut, dataOutAvailable, &v20);

  if (v13)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXHistory(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(WBSHistoryCrypto *)v13 encryptDictionary:v16];
    }

    free(dataOut);
LABEL_8:
    v18 = 0;
    goto LABEL_10;
  }

  v18 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:dataOut length:v20];
LABEL_10:

  return v18;
}

- (id)decryptDictionary:(id)dictionary
{
  v26 = 0;
  dictionaryCopy = dictionary;
  dataOutAvailable = [dictionaryCopy length] + 16;
  dataOut = malloc_type_malloc(dataOutAvailable, 0x9D265BDEuLL);
  cryptographicKey = [(WBSHistoryCrypto *)self cryptographicKey];
  bytes = [cryptographicKey bytes];
  cryptographicKey2 = [(WBSHistoryCrypto *)self cryptographicKey];
  v10 = [cryptographicKey2 length];
  bytes2 = [dictionaryCopy bytes];
  v12 = [dictionaryCopy length];

  v13 = CCCrypt(1u, 0, 1u, bytes, v10, 0, bytes2, v12, dataOut, dataOutAvailable, &v26);
  if (!v13)
  {
    v18 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:dataOut length:v26];
    v25 = 0;
    v19 = [MEMORY[0x1E696AE40] propertyListWithData:v18 options:0 format:0 error:&v25];
    v20 = v25;
    v22 = v20;
    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v19;
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v23 = WBS_LOG_CHANNEL_PREFIXHistory(v20, v21);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(WBSHistoryCrypto *)v23 decryptDictionary:v22];
      }
    }

    v17 = 0;
    goto LABEL_11;
  }

  v16 = WBS_LOG_CHANNEL_PREFIXHistory(v14, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [(WBSHistoryCrypto *)v13 decryptDictionary:v16];
  }

  free(dataOut);
  v17 = 0;
LABEL_12:

  return v17;
}

- (void)encryptDictionary:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to encrypt data: %i", v2, 8u);
}

- (void)encryptDictionary:(void *)a1 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to serialize dictionary: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

- (void)decryptDictionary:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to decrypt data: %i", v2, 8u);
}

- (void)decryptDictionary:(void *)a1 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to deserialize property list: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

@end