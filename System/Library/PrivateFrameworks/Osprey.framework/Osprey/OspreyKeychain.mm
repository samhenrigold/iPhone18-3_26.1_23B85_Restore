@interface OspreyKeychain
- (BOOL)deleteDataWithIdentifier:(id)identifier;
- (BOOL)saveData:(id)data withIdentifier:(id)identifier;
- (id)createKeychainQuery;
- (id)fetchDataWithIdentifier:(id)identifier;
@end

@implementation OspreyKeychain

- (id)createKeychainQuery
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CDC238];
  v3 = *MEMORY[0x277CDC5C8];
  v9[0] = *MEMORY[0x277CDC228];
  v9[1] = v3;
  v10[0] = v2;
  v10[1] = MEMORY[0x277CBEC38];
  v4 = *MEMORY[0x277CDC120];
  v9[2] = *MEMORY[0x277CDC140];
  v9[3] = v4;
  v5 = *MEMORY[0x277CDBEC8];
  v9[4] = *MEMORY[0x277CDBED8];
  v9[5] = v5;
  v10[2] = MEMORY[0x277CBEC28];
  v10[3] = @"com.apple.siri.osprey";
  v10[4] = *MEMORY[0x277CDBF00];
  v10[5] = @"com.apple.siri.osprey";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v7 = [v6 mutableCopy];

  return v7;
}

- (BOOL)saveData:(id)data withIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (dataCopy && identifierCopy)
  {
    createKeychainQuery = [(OspreyKeychain *)self createKeychainQuery];
    [createKeychainQuery setObject:v9 forKey:*MEMORY[0x277CDBF20]];
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = *MEMORY[0x277CDC5E8];
    [v11 setObject:dataCopy forKey:*MEMORY[0x277CDC5E8]];
    v13 = SecItemUpdate(createKeychainQuery, v11);
    v15 = v13;
    if (v13 == -25300)
    {
      [createKeychainQuery setObject:dataCopy forKey:v12];
      v13 = SecItemAdd(createKeychainQuery, 0);
      v15 = v13;
    }

    if (v15)
    {
      if (v15 != -34018)
      {
        OspreyLoggingInit(v13, v14);
        if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
        {
          [OspreyKeychain saveData:withIdentifier:];
        }

        v16 = 0;
        goto LABEL_19;
      }

      OspreyLoggingInit(v13, v14);
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
      {
        [OspreyKeychain saveData:withIdentifier:];
      }
    }

    v16 = 1;
LABEL_19:

    goto LABEL_20;
  }

  OspreyLoggingInit(identifierCopy, v8);
  v17 = os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR);
  if (dataCopy)
  {
    if (v17)
    {
      [OspreyKeychain saveData:withIdentifier:];
    }
  }

  else if (v17)
  {
    [OspreyKeychain saveData:withIdentifier:];
  }

  v16 = 0;
LABEL_20:

  return v16;
}

- (id)fetchDataWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  createKeychainQuery = [(OspreyKeychain *)self createKeychainQuery];
  [createKeychainQuery setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC558]];
  [createKeychainQuery setObject:identifierCopy forKey:*MEMORY[0x277CDBF20]];

  result = 0;
  v6 = SecItemCopyMatching(createKeychainQuery, &result);
  if (v6)
  {
    if (v6 == -34018)
    {
      OspreyLoggingInit(v6, v7);
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
      {
        [OspreyKeychain fetchDataWithIdentifier:];
      }
    }

    v8 = 0;
  }

  else
  {
    v8 = [result copy];
    if (result)
    {
      CFRelease(result);
      result = 0;
    }
  }

  return v8;
}

- (BOOL)deleteDataWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    createKeychainQuery = [(OspreyKeychain *)self createKeychainQuery];
    [createKeychainQuery setObject:identifierCopy forKey:*MEMORY[0x277CDBF20]];
    v7 = SecItemDelete(createKeychainQuery);
    v9 = v7 == 0;
    if (v7 == -34018)
    {
      OspreyLoggingInit(v7, v8);
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
      {
        [OspreyKeychain deleteDataWithIdentifier:];
      }
    }
  }

  else
  {
    OspreyLoggingInit(0, v4);
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      [OspreyKeychain deleteDataWithIdentifier:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)saveData:withIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)saveData:withIdentifier:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_1();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_25DDE6000, v1, OS_LOG_TYPE_ERROR, "%s Failed to save data to keychain for identifier: %@ due to: %d", v2, 0x1Cu);
}

- (void)saveData:withIdentifier:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end