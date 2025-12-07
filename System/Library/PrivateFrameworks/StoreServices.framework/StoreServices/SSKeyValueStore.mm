@interface SSKeyValueStore
+ (BOOL)isLocalReadable;
- (SSKeyValueStore)init;
- (id)accountDictionaries;
- (id)copyAccounts;
- (id)iTunesValueForKey:(id)key usedDomain:(id *)domain;
- (void)_loadDatabaseIfNecessary;
- (void)dealloc;
- (void)getValueForDomain:(id)domain key:(id)key usingBlock:(id)block;
- (void)getValuesForDomain:(id)domain keys:(const void *)keys count:(unint64_t)count usingBlock:(id)block;
- (void)modifyUsingTransactionBlock:(id)block;
- (void)readUsingSessionBlock:(id)block;
- (void)removeAccountFromDomain:(id)domain;
- (void)removeAllValuesForDomain:(id)domain completionBlock:(id)block;
- (void)removeAllValuesWithCompletionBlock:(id)block;
- (void)setValue:(id)value forDomain:(id)domain key:(id)key completionBlock:(id)block;
- (void)setValuesWithDictionary:(id)dictionary forDomain:(id)domain completionBlock:(id)block;
@end

@implementation SSKeyValueStore

- (SSKeyValueStore)init
{
  v4.receiver = self;
  v4.super_class = SSKeyValueStore;
  v2 = [(SSKeyValueStore *)&v4 init];
  if (v2)
  {
    if (SSIsDaemon())
    {
      *&v2->_useLocalRead = 257;
    }

    else
    {
      v2->_connection = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
      v2->_useLocalRead = [objc_opt_class() isLocalReadable];
    }
  }

  return v2;
}

+ (BOOL)isLocalReadable
{
  if ([objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")])
  {
    return 0;
  }

  v3 = +[SSKeyValueStoreSchema databasePath];

  return SSFileIsLocalReadable(v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSKeyValueStore;
  [(SSKeyValueStore *)&v3 dealloc];
}

- (void)getValueForDomain:(id)domain key:(id)key usingBlock:(id)block
{
  [(SSKeyValueStore *)self _loadDatabaseIfNecessary];
  if (self->_useLocalRead)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy__49;
    v20 = __Block_byref_object_dispose__49;
    v21 = 0;
    database = self->_database;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__SSKeyValueStore_getValueForDomain_key_usingBlock___block_invoke;
    v15[3] = &unk_1E84B19A8;
    v15[5] = key;
    v15[6] = &v16;
    v15[4] = domain;
    [(SSKeyValueStoreDatabase *)database readUsingSessionBlock:v15];
    if (block)
    {
      (*(block + 2))(block, v17[5]);
    }

    v10 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v11 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    if (v11)
    {
      v12 = v11;
      *v11 = [key copy];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __52__SSKeyValueStore_getValueForDomain_key_usingBlock___block_invoke_2;
      v14[3] = &unk_1E84B19D0;
      v14[4] = block;
      v14[5] = v12;
      [(SSKeyValueStore *)self getValuesForDomain:domain keys:v12 count:1 usingBlock:v14];
    }

    else
    {
      v13 = *(block + 2);

      v13(block, 0);
    }
  }
}

void *__52__SSKeyValueStore_getValueForDomain_key_usingBlock___block_invoke(void *a1, void *a2)
{
  result = [a2 copyValueForDomain:a1[4] key:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

void __52__SSKeyValueStore_getValueForDomain_key_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, *a2);
  }

  v4 = *(a1 + 40);

  free(v4);
}

- (void)getValuesForDomain:(id)domain keys:(const void *)keys count:(unint64_t)count usingBlock:(id)block
{
  v43 = *MEMORY[0x1E69E9840];
  _loadDatabaseIfNecessary = [(SSKeyValueStore *)self _loadDatabaseIfNecessary];
  if (self->_useLocalRead)
  {
    if (count)
    {
      v13 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
      if (v13)
      {
        database = self->_database;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __60__SSKeyValueStore_getValuesForDomain_keys_count_usingBlock___block_invoke;
        v40[3] = &unk_1E84B19F8;
        v40[4] = domain;
        v40[5] = count;
        v40[6] = v13;
        v40[7] = keys;
        [(SSKeyValueStoreDatabase *)database readUsingSessionBlock:v40];
        v15 = 0;
        do
        {
          v16 = v13[v15++];
        }

        while (count != v15);
        v17 = 0;
        if (!block)
        {
          goto LABEL_28;
        }

LABEL_27:
        (*(block + 2))(block, v13);
LABEL_28:
        if ((v17 & 1) == 0)
        {
          free(v13);
        }

        return;
      }
    }

    else
    {
      v13 = 0;
    }

    v17 = 1;
    if (!block)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (SSIsInternalBuild(_loadDatabaseIfNecessary, v12) && _os_feature_enabled_impl())
  {
    v18 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = shouldLog | 2;
    }

    else
    {
      v20 = shouldLog;
    }

    oSLogObject = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    if (v22)
    {
      v41 = 136446210;
      v42 = "[SSKeyValueStore getValuesForDomain:keys:count:usingBlock:]";
      if (v23)
      {
        v24 = v23;
        v25 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:4];
        free(v24);
        SSFileLog(v18, @"%@", v26, v27, v28, v29, v30, v31, v25);
      }
    }
  }

  v32 = SSXPCCreateMessageDictionary(92);
  SSXPCDictionarySetCFObject(v32, "1", domain);
  v33 = xpc_array_create(0, 0);
  if (count)
  {
    keysCopy = keys;
    countCopy = count;
    do
    {
      v36 = *keysCopy++;
      SSXPCArraySetCFObject(v33, 0xFFFFFFFFFFFFFFFFLL, v36);
      --countCopy;
    }

    while (countCopy);
  }

  xpc_dictionary_set_value(v32, "2", v33);
  xpc_release(v33);
  selfCopy = self;
  connection = self->_connection;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __60__SSKeyValueStore_getValuesForDomain_keys_count_usingBlock___block_invoke_11;
  v39[3] = &unk_1E84B1A20;
  v39[6] = count;
  v39[7] = keys;
  v39[4] = self;
  v39[5] = block;
  [(SSXPCConnection *)connection sendMessage:v32 withReply:v39];
  xpc_release(v32);
}

void *__60__SSKeyValueStore_getValuesForDomain_keys_count_usingBlock___block_invoke(void *result, void *a2)
{
  if (result[5])
  {
    v3 = result;
    v4 = 0;
    do
    {
      result = [a2 copyValueForDomain:v3[4] key:*(v3[7] + 8 * v4)];
      *(v3[6] + 8 * v4++) = result;
    }

    while (v4 < v3[5]);
  }

  return result;
}

void __60__SSKeyValueStore_getValuesForDomain_keys_count_usingBlock___block_invoke_11(void *a1, void *a2)
{
  v3 = a1[5];
  if (!v3)
  {
    goto LABEL_12;
  }

  if (!a1[6])
  {
LABEL_11:
    (*(v3 + 16))(v3, 0);
    goto LABEL_12;
  }

  v5 = malloc_type_calloc(a1[6], 8uLL, 0x80040B8603338uLL);
  if (!v5)
  {
    v3 = a1[5];
    goto LABEL_11;
  }

  v6 = v5;
  v7 = objc_opt_class();
  v8 = SSXPCDictionaryCopyCFObjectWithClass(a2, "0", v7);
  if (a1[6])
  {
    v9 = 0;
    do
    {
      v10 = [(__CFDate *)v8 objectForKey:*(a1[7] + 8 * v9)];
      if (v10)
      {
        v10 = [MEMORY[0x1E696AE40] propertyListWithData:v10 options:0 format:0 error:0];
      }

      v6[v9++] = v10;
    }

    while (v9 < a1[6]);
  }

  (*(a1[5] + 16))();
  free(v6);
LABEL_12:
  v11 = a1[4];
}

- (void)removeAllValuesForDomain:(id)domain completionBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  _loadDatabaseIfNecessary = [(SSKeyValueStore *)self _loadDatabaseIfNecessary];
  if (self->_useLocalWrite)
  {
    *&v28 = 0;
    *(&v28 + 1) = &v28;
    v29 = 0x2020000000;
    v30 = 0;
    database = self->_database;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __60__SSKeyValueStore_removeAllValuesForDomain_completionBlock___block_invoke;
    v27[3] = &unk_1E84B1A48;
    v27[4] = domain;
    v27[5] = &v28;
    [(SSKeyValueStoreDatabase *)database modifyUsingTransactionBlock:v27];
    if (block)
    {
      (*(block + 2))(block, *(*(&v28 + 1) + 24));
    }

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    if (SSIsInternalBuild(_loadDatabaseIfNecessary, v8) && _os_feature_enabled_impl())
    {
      v10 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v10)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v12 = shouldLog | 2;
      }

      else
      {
        v12 = shouldLog;
      }

      oSLogObject = [v10 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
      {
        v14 = v12;
      }

      else
      {
        v14 = v12 & 2;
      }

      if (v14)
      {
        LODWORD(v28) = 136446210;
        *(&v28 + 4) = "[SSKeyValueStore removeAllValuesForDomain:completionBlock:]";
        if (v15)
        {
          v16 = v15;
          v17 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
          free(v16);
          SSFileLog(v10, @"%@", v18, v19, v20, v21, v22, v23, v17);
        }
      }
    }

    v24 = SSXPCCreateMessageDictionary(94);
    SSXPCDictionarySetCFObject(v24, "1", domain);
    connection = self->_connection;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60__SSKeyValueStore_removeAllValuesForDomain_completionBlock___block_invoke_19;
    v26[3] = &unk_1E84AC7E0;
    v26[4] = block;
    [(SSXPCConnection *)connection sendMessage:v24 withReply:v26];
    xpc_release(v24);
  }
}

uint64_t __60__SSKeyValueStore_removeAllValuesForDomain_completionBlock___block_invoke_19(uint64_t result, void *a2)
{
  if (*(result + 32))
  {
    v3 = result;
    if (a2 && MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
    {
      xpc_dictionary_get_BOOL(a2, "0");
    }

    v4 = *(*(v3 + 32) + 16);

    return v4();
  }

  return result;
}

- (void)removeAllValuesWithCompletionBlock:(id)block
{
  v29 = *MEMORY[0x1E69E9840];
  _loadDatabaseIfNecessary = [(SSKeyValueStore *)self _loadDatabaseIfNecessary];
  if (self->_useLocalWrite)
  {
    *&v26 = 0;
    *(&v26 + 1) = &v26;
    v27 = 0x2020000000;
    v28 = 0;
    database = self->_database;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __54__SSKeyValueStore_removeAllValuesWithCompletionBlock___block_invoke;
    v25[3] = &unk_1E84B1A70;
    v25[4] = &v26;
    [(SSKeyValueStoreDatabase *)database modifyUsingTransactionBlock:v25];
    if (block)
    {
      (*(block + 2))(block, *(*(&v26 + 1) + 24));
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    if (SSIsInternalBuild(_loadDatabaseIfNecessary, v6) && _os_feature_enabled_impl())
    {
      v8 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v8)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        v10 = shouldLog | 2;
      }

      else
      {
        v10 = shouldLog;
      }

      oSLogObject = [v8 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v12 = v10;
      }

      else
      {
        v12 = v10 & 2;
      }

      if (v12)
      {
        LODWORD(v26) = 136446210;
        *(&v26 + 4) = "[SSKeyValueStore removeAllValuesWithCompletionBlock:]";
        if (v13)
        {
          v14 = v13;
          v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
          free(v14);
          SSFileLog(v8, @"%@", v16, v17, v18, v19, v20, v21, v15);
        }
      }
    }

    v22 = SSXPCCreateMessageDictionary(95);
    connection = self->_connection;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __54__SSKeyValueStore_removeAllValuesWithCompletionBlock___block_invoke_23;
    v24[3] = &unk_1E84AC7E0;
    v24[4] = block;
    [(SSXPCConnection *)connection sendMessage:v22 withReply:v24];
    xpc_release(v22);
  }
}

uint64_t __54__SSKeyValueStore_removeAllValuesWithCompletionBlock___block_invoke_23(uint64_t result, void *a2)
{
  if (*(result + 32))
  {
    v3 = result;
    if (a2 && MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
    {
      xpc_dictionary_get_BOOL(a2, "0");
    }

    v4 = *(*(v3 + 32) + 16);

    return v4();
  }

  return result;
}

- (void)setValue:(id)value forDomain:(id)domain key:(id)key completionBlock:(id)block
{
  [(SSKeyValueStore *)self _loadDatabaseIfNecessary];
  if (self->_useLocalWrite)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    database = self->_database;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__SSKeyValueStore_setValue_forDomain_key_completionBlock___block_invoke;
    v14[3] = &unk_1E84B1A98;
    v14[4] = value;
    v14[5] = domain;
    v14[6] = key;
    v14[7] = &v15;
    [(SSKeyValueStoreDatabase *)database modifyUsingTransactionBlock:v14];
    if (block)
    {
      (*(block + 2))(block, *(v16 + 24));
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E695DF20]);
    if (!value)
    {
      value = [MEMORY[0x1E695DFB0] null];
    }

    v13 = [v12 initWithObjectsAndKeys:{value, key, 0}];
    [(SSKeyValueStore *)self setValuesWithDictionary:v13 forDomain:domain completionBlock:block];
  }
}

- (void)setValuesWithDictionary:(id)dictionary forDomain:(id)domain completionBlock:(id)block
{
  v35 = *MEMORY[0x1E69E9840];
  _loadDatabaseIfNecessary = [(SSKeyValueStore *)self _loadDatabaseIfNecessary];
  if (self->_useLocalWrite)
  {
    *&v32 = 0;
    *(&v32 + 1) = &v32;
    v33 = 0x2020000000;
    v34 = 1;
    database = self->_database;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __69__SSKeyValueStore_setValuesWithDictionary_forDomain_completionBlock___block_invoke;
    v31[3] = &unk_1E84B1AE8;
    v31[5] = domain;
    v31[6] = &v32;
    v31[4] = dictionary;
    [(SSKeyValueStoreDatabase *)database modifyUsingTransactionBlock:v31];
    if (block)
    {
      (*(block + 2))(block, *(*(&v32 + 1) + 24));
    }

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    if (SSIsInternalBuild(_loadDatabaseIfNecessary, v10) && _os_feature_enabled_impl())
    {
      v12 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v12)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v14 = shouldLog | 2;
      }

      else
      {
        v14 = shouldLog;
      }

      oSLogObject = [v12 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v16 = v14;
      }

      else
      {
        v16 = v14 & 2;
      }

      if (v16)
      {
        LODWORD(v32) = 136446210;
        *(&v32 + 4) = "[SSKeyValueStore setValuesWithDictionary:forDomain:completionBlock:]";
        if (v17)
        {
          v18 = v17;
          v19 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:4];
          free(v18);
          SSFileLog(v12, @"%@", v20, v21, v22, v23, v24, v25, v19);
        }
      }
    }

    v26 = SSXPCCreateMessageDictionary(93);
    SSXPCDictionarySetCFObject(v26, "1", domain);
    v27 = xpc_dictionary_create(0, 0, 0);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __69__SSKeyValueStore_setValuesWithDictionary_forDomain_completionBlock___block_invoke_26;
    v30[3] = &unk_1E84B1B10;
    v30[4] = v27;
    [dictionary enumerateKeysAndObjectsUsingBlock:v30];
    xpc_dictionary_set_value(v26, "2", v27);
    xpc_release(v27);
    connection = self->_connection;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __69__SSKeyValueStore_setValuesWithDictionary_forDomain_completionBlock___block_invoke_2_27;
    v29[3] = &unk_1E84AC7E0;
    v29[4] = block;
    [(SSXPCConnection *)connection sendMessage:v26 withReply:v29];
    xpc_release(v26);
  }
}

uint64_t __69__SSKeyValueStore_setValuesWithDictionary_forDomain_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DFB0] null];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__SSKeyValueStore_setValuesWithDictionary_forDomain_completionBlock___block_invoke_2;
  v7[3] = &unk_1E84B1AC0;
  v7[4] = v4;
  v7[5] = a2;
  v8 = *(a1 + 40);
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
  return *(*(*(a1 + 48) + 8) + 24);
}

void *__69__SSKeyValueStore_setValuesWithDictionary_forDomain_completionBlock___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = a1[4];
  v6 = a1[5];
  if (v7 == a3)
  {
    a3 = 0;
  }

  result = [v6 setValue:a3 forDomain:a1[6] key:a2];
  *(*(a1[7] + 8) + 24) = result;
  *a4 = *(*(a1[7] + 8) + 24) ^ 1;
  return result;
}

void __69__SSKeyValueStore_setValuesWithDictionary_forDomain_completionBlock___block_invoke_26(uint64_t a1, void *a2, __CFString *a3)
{
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:0];
    if (!v6)
    {
      return;
    }

    a3 = v6;
  }

  v7 = *(a1 + 32);
  v8 = [a2 UTF8String];

  SSXPCDictionarySetCFObject(v7, v8, a3);
}

uint64_t __69__SSKeyValueStore_setValuesWithDictionary_forDomain_completionBlock___block_invoke_2_27(uint64_t result, void *a2)
{
  if (*(result + 32))
  {
    v3 = result;
    if (a2 && MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
    {
      xpc_dictionary_get_BOOL(a2, "0");
    }

    v4 = *(*(v3 + 32) + 16);

    return v4();
  }

  return result;
}

- (id)accountDictionaries
{
  [(SSKeyValueStore *)self _loadDatabaseIfNecessary];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  database = self->_database;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__SSKeyValueStore_accountDictionaries__block_invoke;
  v6[3] = &unk_1E84B1B38;
  v6[4] = v3;
  [(SSKeyValueStoreDatabase *)database readUsingSessionBlock:v6];
  return v3;
}

void __38__SSKeyValueStore_accountDictionaries__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 copyAccountDictionaryForDomain:@"com.apple.itunesstored"];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 32) addObject:v4];
  }

  v6 = [a2 copyAccountDictionaryForDomain:@"com.apple.mobile.iTunes.store"];
  if (v6)
  {
    v7 = v6;
    [v6 setObject:SSAccountSourceStringForSource(1) forKey:@"AccountSource"];
    [*(a1 + 32) addObject:v7];
  }

  v8 = [a2 copyValueForDomain:@"com.apple.mobile.iTunes.store" key:@"KnownAccounts"];
  if (v8)
  {
    v9 = v8;
    [*(a1 + 32) addObjectsFromArray:v8];
  }
}

- (id)copyAccounts
{
  [(SSKeyValueStore *)self _loadDatabaseIfNecessary];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  database = self->_database;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__SSKeyValueStore_copyAccounts__block_invoke;
  v6[3] = &unk_1E84B1B60;
  v6[4] = v3;
  v6[5] = self;
  [(SSKeyValueStoreDatabase *)database readUsingSessionBlock:v6];
  return v3;
}

void __31__SSKeyValueStore_copyAccounts__block_invoke(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [a2 copyAccountDictionaryForDomain:@"com.apple.itunesstored"];
  if (v6)
  {
    v7 = v6;
    [v5 addObject:v6];
  }

  v8 = [a2 copyAccountDictionaryForDomain:@"com.apple.mobile.iTunes.store"];
  if (v8)
  {
    v9 = v8;
    [v8 setObject:SSAccountSourceStringForSource(1) forKey:@"AccountSource"];
    [v5 addObject:v9];
  }

  v47 = a2;
  v10 = [a2 copyValueForDomain:@"com.apple.mobile.iTunes.store" key:@"KnownAccounts"];
  if (v10)
  {
    v11 = v10;
    [v5 addObjectsFromArray:v10];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = [v5 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v49;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(v5);
        }

        v16 = *(*(&v48 + 1) + 8 * i);
        v17 = objc_alloc_init(SSAccount);
        [(SSAccount *)v17 setLockdownDictionary:v16];
        v18 = [(SSAccount *)v17 uniqueIdentifier];
        v19 = [(SSAccount *)v17 accountName];
        if (v18)
        {
          v20 = v19 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          v21 = v19;
          if (([*(a1 + 32) containsObject:v17] & 1) == 0)
          {
            [*(a1 + 32) addObject:v17];
            [v4 addObject:v21];
          }
        }
      }

      v13 = [v5 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v13);
  }

  v46 = [v47 iTunesValueForKey:@"DSPersonID" usedDomain:0];
  v45 = [v47 iTunesValueForKey:@"ActiveLockerAccountID" usedDomain:0];
  v22 = [*(a1 + 32) count];
  if (v22 >= 1)
  {
    for (j = v22 + 1; j > 1; --j)
    {
      v24 = [*(a1 + 32) objectAtIndex:?];
      v25 = [v24 uniqueIdentifier];
      v26 = [v25 isEqual:v46];
      v27 = [v25 isEqual:v45];
      v28 = [v24 accountName];
      if (v28 && [v4 countForObject:v28] >= 2)
      {
        v29 = 0;
        if ([v24 accountScope])
        {
          goto LABEL_26;
        }
      }

      else
      {
        v29 = 1;
      }

      [v24 setActive:v26];
      [v24 setActiveLockerAccount:v27];
LABEL_26:
      if (((v26 | v27 | v29) & 1) == 0)
      {
        v30 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v30)
        {
          v30 = +[SSLogConfig sharedConfig];
        }

        v31 = [v30 shouldLog];
        if ([v30 shouldLogToDisk])
        {
          LODWORD(v32) = v31 | 2;
        }

        else
        {
          LODWORD(v32) = v31;
        }

        v33 = [v30 OSLogObject];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v32;
        }

        else
        {
          v32 &= 2u;
        }

        if (v32)
        {
          v34 = objc_opt_class();
          v52 = 138412802;
          v53 = v34;
          v54 = 2112;
          v55 = v25;
          v56 = 2112;
          v57 = v28;
          LODWORD(v44) = 32;
          v35 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_1D48BA000, v33, 0, "%@: Removing account with duplicate AppleID: %@ / %@", &v52, v44);
          if (v35)
          {
            v36 = v35;
            v37 = [MEMORY[0x1E696AEC0] stringWithCString:v35 encoding:4];
            free(v36);
            SSFileLog(v30, @"%@", v38, v39, v40, v41, v42, v43, v37);
          }
        }

        [*(a1 + 32) removeObjectAtIndex:j - 2];
      }
    }
  }
}

- (id)iTunesValueForKey:(id)key usedDomain:(id *)domain
{
  [(SSKeyValueStore *)self _loadDatabaseIfNecessary];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__49;
  v23 = __Block_byref_object_dispose__49;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__49;
  v17 = __Block_byref_object_dispose__49;
  v18 = 0;
  database = self->_database;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__SSKeyValueStore_iTunesValueForKey_usedDomain___block_invoke;
  v12[3] = &unk_1E84B1B88;
  v12[4] = key;
  v12[5] = &v19;
  v12[6] = &v13;
  [(SSKeyValueStoreDatabase *)database readUsingSessionBlock:v12];
  v8 = v14[5];
  if (domain && v20[5])
  {
    *domain = v8;
  }

  v9 = v8;
  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

id __48__SSKeyValueStore_iTunesValueForKey_usedDomain___block_invoke(void *a1, void *a2)
{
  *(*(a1[5] + 8) + 40) = [a2 iTunesValueForKey:a1[4] usedDomain:*(a1[6] + 8) + 40];
  v3 = *(*(a1[6] + 8) + 40);

  return v3;
}

- (void)modifyUsingTransactionBlock:(id)block
{
  [(SSKeyValueStore *)self _loadDatabaseIfNecessary];
  database = self->_database;

  [(SSKeyValueStoreDatabase *)database modifyUsingTransactionBlock:block];
}

- (void)readUsingSessionBlock:(id)block
{
  [(SSKeyValueStore *)self _loadDatabaseIfNecessary];
  database = self->_database;

  [(SSKeyValueStoreDatabase *)database readUsingSessionBlock:block];
}

- (void)removeAccountFromDomain:(id)domain
{
  v26 = *MEMORY[0x1E69E9840];
  _loadDatabaseIfNecessary = [(SSKeyValueStore *)self _loadDatabaseIfNecessary];
  if (self->_useLocalWrite)
  {
    database = self->_database;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __43__SSKeyValueStore_removeAccountFromDomain___block_invoke;
    v23[3] = &unk_1E84B1BB0;
    v23[4] = domain;
    [(SSKeyValueStoreDatabase *)database modifyAsyncUsingTransactionBlock:v23];
  }

  else
  {
    if (SSIsInternalBuild(_loadDatabaseIfNecessary, v6) && _os_feature_enabled_impl())
    {
      v8 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v8)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        v10 = shouldLog | 2;
      }

      else
      {
        v10 = shouldLog;
      }

      oSLogObject = [v8 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v12 = v10;
      }

      else
      {
        v12 = v10 & 2;
      }

      if (v12)
      {
        v24 = 136446210;
        v25 = "[SSKeyValueStore removeAccountFromDomain:]";
        if (v13)
        {
          v14 = v13;
          v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
          free(v14);
          SSFileLog(v8, @"%@", v16, v17, v18, v19, v20, v21, v15);
        }
      }
    }

    v22 = SSXPCCreateMessageDictionary(193);
    SSXPCDictionarySetCFObject(v22, "1", domain);
    [(SSXPCConnection *)self->_connection sendMessage:v22];
    xpc_release(v22);
  }
}

- (void)_loadDatabaseIfNecessary
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_database)
  {
    return;
  }

  if (self->_useLocalWrite)
  {
    self->_database = objc_alloc_init(SSKeyValueStoreDatabase);
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      LODWORD(v5) = shouldLog | 2;
    }

    else
    {
      LODWORD(v5) = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (!v5)
    {
      goto LABEL_26;
    }

    LODWORD(v21) = 138412290;
    *(&v21 + 4) = objc_opt_class();
    v7 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "%@: Initializing database", &v21, 12, v21);
  }

  else
  {
    if (!self->_useLocalRead)
    {
      goto LABEL_26;
    }

    self->_database = [[SSKeyValueStoreDatabase alloc] initReadOnly];
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v3 shouldLog];
    LODWORD(v9) = [v3 shouldLogToDisk] ? shouldLog2 | 2 : shouldLog2;
    oSLogObject2 = [v3 OSLogObject];
    v9 = os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT) ? v9 : v9 & 2u;
    if (!v9)
    {
      goto LABEL_26;
    }

    LODWORD(v21) = 138412290;
    *(&v21 + 4) = objc_opt_class();
    v7 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 0, "%@: Initializing readonly database", &v21, 12, v21);
  }

  if (v7)
  {
    v11 = v7;
    v12 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
    free(v11);
    SSFileLog(v3, @"%@", v13, v14, v15, v16, v17, v18, v12);
  }

LABEL_26:
  v19 = self->_useLocalRead && self->_database != 0;
  self->_useLocalRead = v19;
  v20 = self->_useLocalWrite && self->_database != 0;
  self->_useLocalWrite = v20;
}

@end